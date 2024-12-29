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
  module Faceid
    module V20180301
      # 疑似攻击风险详情
      class AttackRiskDetail < TencentCloud::Common::AbstractModel
        # @param Type: 疑似的攻击痕迹类型
        # SuspectedSpoofingAttack：翻拍攻击
        # SuspectedSynthesisImage：疑似合成图片
        # SuspectedSynthesisVideo：疑似合成视频
        # SuspectedeAnomalyAttack：人脸特征疑似非真人
        # SuspectedAdversarialAttack：疑似对抗样本攻击
        # SuspectedBlackIndustry：疑似黑产批量模版攻击
        # SuspectedWatermark：疑似存在水印
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :Type

        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # BankCard2EVerification请求参数结构体
      class BankCard2EVerificationRequest < TencentCloud::Common::AbstractModel
        # @param Name: 姓名。
        # @type Name: String
        # @param BankCard: 银行卡。
        # @type BankCard: String
        # @param Encryption: 敏感数据加密信息。
        # - 对传入信息（姓名、银行卡号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :Name, :BankCard, :Encryption

        def initialize(name=nil, bankcard=nil, encryption=nil)
          @Name = name
          @BankCard = bankcard
          @Encryption = encryption
        end

        def deserialize(params)
          @Name = params['Name']
          @BankCard = params['BankCard']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
        end
      end

      # BankCard2EVerification返回参数结构体
      class BankCard2EVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码。
        # - 计费结果码：
        #   '0': '认证通过'。
        #   '-1': '认证未通过'。
        #  '-4': '持卡人信息有误'。
        #   '-5': '未开通无卡支付'。
        #   '-6': '此卡被没收'。
        #   '-7': '无效卡号'。
        #   '-8': '此卡无对应发卡行'。
        #   '-9': '该卡未初始化或睡眠卡'。
        #   '-10': '作弊卡、吞卡'。
        #   '-11': '此卡已挂失'。
        #   '-12': '该卡已过期'。
        #   '-13': '受限制的卡'。
        #   '-14': '密码错误次数超限'。
        #   '-15': '发卡行不支持此交易'。

        # - 不计费结果码：
        #   '-2': '姓名校验不通过'。
        #   '-3': '银行卡号码有误'。
        #   '-16': '验证中心服务繁忙'。
        #   '-17': '验证次数超限，请次日重试'。
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # BankCard4EVerification请求参数结构体
      class BankCard4EVerificationRequest < TencentCloud::Common::AbstractModel
        # @param Name: 姓名。
        # @type Name: String
        # @param BankCard: 银行卡。
        # @type BankCard: String
        # @param Phone: 手机号码。
        # @type Phone: String
        # @param IdCard: 开户证件号。
        # - 与CertType参数的证件类型一致，如：身份证，则传入身份证号。
        # @type IdCard: String
        # @param CertType: 证件类型。
        # - 请确认该证件为开户时使用的证件类型，未用于开户的证件信息不支持验证。
        # - 目前默认为0：身份证，其他证件类型暂不支持。
        # @type CertType: Integer
        # @param Encryption: 敏感数据加密信息。
        # - 对传入信息（姓名、身份证号、手机号、银行卡号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :Name, :BankCard, :Phone, :IdCard, :CertType, :Encryption

        def initialize(name=nil, bankcard=nil, phone=nil, idcard=nil, certtype=nil, encryption=nil)
          @Name = name
          @BankCard = bankcard
          @Phone = phone
          @IdCard = idcard
          @CertType = certtype
          @Encryption = encryption
        end

        def deserialize(params)
          @Name = params['Name']
          @BankCard = params['BankCard']
          @Phone = params['Phone']
          @IdCard = params['IdCard']
          @CertType = params['CertType']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
        end
      end

      # BankCard4EVerification返回参数结构体
      class BankCard4EVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码。
        # - 收费结果码：
        # '0': '认证通过'。
        # '-1': '认证未通过'。
        # '-6': '持卡人信息有误'。
        # '-7': '未开通无卡支付'。
        # '-8': '此卡被没收'。
        # '-9': '无效卡号'。
        # '-10': '此卡无对应发卡行'。
        # '-11': '该卡未初始化或睡眠卡'。
        # '-12': '作弊卡、吞卡'。
        # '-13': '此卡已挂失'。
        # '-14': '该卡已过期'。
        # '-15': '受限制的卡'。
        # '-16': '密码错误次数超限'。
        # '-17': '发卡行不支持此交易'。

        # - 不收费结果码：
        # '-2': '姓名校验不通过'。
        # '-3': '身份证号码有误'。
        # '-4': '银行卡号码有误'。
        # '-5': '手机号码不合法'。
        # '-18': '验证中心服务繁忙'。
        # '-19': '验证次数超限，请次日重试'。
        # '-20': '该证件号暂不支持核验，当前仅支持二代身份证'。
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # BankCardVerification请求参数结构体
      class BankCardVerificationRequest < TencentCloud::Common::AbstractModel
        # @param IdCard: 开户证件号。
        # - 与CertType参数的证件类型一致，如：身份证，则传入身份证号。
        # @type IdCard: String
        # @param Name: 姓名。
        # @type Name: String
        # @param BankCard: 银行卡。
        # @type BankCard: String
        # @param CertType: 证件类型。
        # - 请确认该证件为开户时使用的证件类型，未用于开户的证件信息不支持验证。
        # - 目前默认：0 身份证，其他证件类型暂不支持。
        # @type CertType: Integer
        # @param Encryption: 敏感数据加密信息。
        # - 对传入信息（姓名、身份证号、银行卡号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :IdCard, :Name, :BankCard, :CertType, :Encryption

        def initialize(idcard=nil, name=nil, bankcard=nil, certtype=nil, encryption=nil)
          @IdCard = idcard
          @Name = name
          @BankCard = bankcard
          @CertType = certtype
          @Encryption = encryption
        end

        def deserialize(params)
          @IdCard = params['IdCard']
          @Name = params['Name']
          @BankCard = params['BankCard']
          @CertType = params['CertType']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
        end
      end

      # BankCardVerification返回参数结构体
      class BankCardVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码。
        # - 收费结果码：
        # '0': '认证通过'。
        # '-1': '认证未通过'。
        # '-5': '持卡人信息有误'。
        # '-6': '未开通无卡支付'。
        # '-7': '此卡被没收'。
        # '-8': '无效卡号'。
        # '-9': '此卡无对应发卡行'。
        # '-10': '该卡未初始化或睡眠卡'。
        # '-11': '作弊卡、吞卡'。
        # '-12': '此卡已挂失'。
        # '-13': '该卡已过期'。
        # '-14': '受限制的卡'。
        # '-15': '密码错误次数超限'。
        # '-16': '发卡行不支持此交易'。

        # - 不收费结果码：
        # '-2': '姓名校验不通过'。
        # '-3': '身份证号码有误'。
        # '-4': '银行卡号码有误'。
        # '-17': '验证中心服务繁忙'。
        # '-18': '验证次数超限，请次日重试'。
        # '-19': '该证件号暂不支持核验，当前仅支持二代身份证'。
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 计费详情
      class ChargeDetail < TencentCloud::Common::AbstractModel
        # @param ReqTime: 一比一时间时间戳，13位。
        # @type ReqTime: String
        # @param Seq: 一比一请求的唯一标记。
        # @type Seq: String
        # @param IdCard: 一比一时使用的、脱敏后的身份证号。
        # @type IdCard: String
        # @param Idcard: 已废弃。请使用“IdCard”字段
        # @type Idcard: String
        # @param Name: 一比一时使用的、脱敏后的姓名。
        # @type Name: String
        # @param Sim: 一比一的相似度。0-100，保留2位小数。
        # @type Sim: String
        # @param IsNeedCharge: 本次详情是否收费。
        # @type IsNeedCharge: Boolean
        # @param ChargeType: 收费类型，比对、核身、混合部署。
        # @type ChargeType: String
        # @param ErrorCode: 本次活体一比一最终结果。
        # @type ErrorCode: String
        # @param ErrorMessage: 本次活体一比一最终结果描述。
        # @type ErrorMessage: String

        attr_accessor :ReqTime, :Seq, :IdCard, :Idcard, :Name, :Sim, :IsNeedCharge, :ChargeType, :ErrorCode, :ErrorMessage
        extend Gem::Deprecate
        deprecate :Idcard, :none, 2024, 12
        deprecate :Idcard=, :none, 2024, 12

        def initialize(reqtime=nil, seq=nil, idcard=nil, name=nil, sim=nil, isneedcharge=nil, chargetype=nil, errorcode=nil, errormessage=nil)
          @ReqTime = reqtime
          @Seq = seq
          @IdCard = idcard
          @Name = name
          @Sim = sim
          @IsNeedCharge = isneedcharge
          @ChargeType = chargetype
          @ErrorCode = errorcode
          @ErrorMessage = errormessage
        end

        def deserialize(params)
          @ReqTime = params['ReqTime']
          @Seq = params['Seq']
          @IdCard = params['IdCard']
          @Name = params['Name']
          @Sim = params['Sim']
          @IsNeedCharge = params['IsNeedCharge']
          @ChargeType = params['ChargeType']
          @ErrorCode = params['ErrorCode']
          @ErrorMessage = params['ErrorMessage']
        end
      end

      # CheckBankCardInformation请求参数结构体
      class CheckBankCardInformationRequest < TencentCloud::Common::AbstractModel
        # @param BankCard: 银行卡号。
        # @type BankCard: String
        # @param Encryption: 敏感数据加密信息。
        # - 对传入信息（银行卡号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :BankCard, :Encryption

        def initialize(bankcard=nil, encryption=nil)
          @BankCard = bankcard
          @Encryption = encryption
        end

        def deserialize(params)
          @BankCard = params['BankCard']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
        end
      end

      # CheckBankCardInformation返回参数结构体
      class CheckBankCardInformationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码，收费情况如下。
        # - 收费结果码：
        # 0: 查询成功
        # -1: 未查到信息

        # - 不收费结果码：
        # -2：验证中心服务繁忙
        # -3：银行卡不存在
        # -4：认证次数超过当日限制，请次日重试
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param AccountBank: 开户行。
        # @type AccountBank: String
        # @param AccountType: 卡性质。
        # - 取值范围：
        # 1：借记卡。
        # 2：贷记卡。
        # 3：预付费卡。
        # 4：准贷记卡
        # @type AccountType: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Description, :AccountBank, :AccountType, :RequestId

        def initialize(result=nil, description=nil, accountbank=nil, accounttype=nil, requestid=nil)
          @Result = result
          @Description = description
          @AccountBank = accountbank
          @AccountType = accounttype
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Description = params['Description']
          @AccountBank = params['AccountBank']
          @AccountType = params['AccountType']
          @RequestId = params['RequestId']
        end
      end

      # CheckEidTokenStatus请求参数结构体
      class CheckEidTokenStatusRequest < TencentCloud::Common::AbstractModel
        # @param EidToken: E证通流程的唯一标识，调用GetEidToken接口时生成。
        # @type EidToken: String

        attr_accessor :EidToken

        def initialize(eidtoken=nil)
          @EidToken = eidtoken
        end

        def deserialize(params)
          @EidToken = params['EidToken']
        end
      end

      # CheckEidTokenStatus返回参数结构体
      class CheckEidTokenStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态。
        # - init：EidToken未验证。
        # - doing: EidToken验证中。
        # - finished: EidToken验证完成。
        # - timeout: EidToken已超时。
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CheckIdCardInformation请求参数结构体
      class CheckIdCardInformationRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 身份证人像面的 Base64 值。
        # - 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # - 支持的图片大小：所下载图片经Base64编码后不超过 7M。
        # - 请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        # - ImageBase64、ImageUrl二者必须提供其中之一。若都提供了，则按照ImageUrl>ImageBase64的优先级使用参数。
        # @type ImageBase64: String
        # @param ImageUrl: 身份证人像面的 Url 地址
        # - 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # - 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # - 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # - 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param Config: 配置。
        # - 以下可选字段均为bool 类型，默认false。
        # CopyWarn，复印件告警。
        # BorderCheckWarn，边框和框内遮挡告警。
        # ReshootWarn，翻拍告警。
        # DetectPsWarn，PS检测告警（疑似存在PS痕迹）。
        # TempIdWarn，临时身份证告警。
        # Quality，图片质量告警（评价图片模糊程度）。

        # - SDK 设置方式参考：
        # Config = Json.stringify({"CopyWarn":true,"ReshootWarn":true})。

        # - API 3.0 Explorer 设置方式参考：
        # Config = {"CopyWarn":true,"ReshootWarn":true}。
        # @type Config: String
        # @param IsEncrypt: 是否需要对返回中的敏感信息进行加密。
        # - 默认false。
        # - 敏感信息包括：Response.IdNum、Response.Name。
        # @type IsEncrypt: Boolean
        # @param IsEncryptResponse: 是否需要对响应体加密。
        # @type IsEncryptResponse: Boolean
        # @param Encryption: 是否需要对返回中的敏感信息进行加密,需指定加密算法Algorithm、CBC加密的初始向量、加密后的对称密钥。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :ImageBase64, :ImageUrl, :Config, :IsEncrypt, :IsEncryptResponse, :Encryption

        def initialize(imagebase64=nil, imageurl=nil, config=nil, isencrypt=nil, isencryptresponse=nil, encryption=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @Config = config
          @IsEncrypt = isencrypt
          @IsEncryptResponse = isencryptresponse
          @Encryption = encryption
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @Config = params['Config']
          @IsEncrypt = params['IsEncrypt']
          @IsEncryptResponse = params['IsEncryptResponse']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
        end
      end

      # CheckIdCardInformation返回参数结构体
      class CheckIdCardInformationResponse < TencentCloud::Common::AbstractModel
        # @param Sim: 相似度。
        # - 取值范围 [0.00, 100.00]。
        # - 推荐相似度大于等于70时可判断为同一人，可根据具体场景自行调整阈值（阈值70的误通过率为千分之一，阈值80的误通过率是万分之一）。
        # @type Sim: Float
        # @param Result: 业务错误码。
        # - 成功情况返回Success,。
        # - 错误情况请参考下方错误码 列表中FailedOperation部分
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param Name: 姓名。
        # @type Name: String
        # @param Sex: 性别。
        # @type Sex: String
        # @param Nation: 民族。
        # @type Nation: String
        # @param Birth: 出生日期。
        # @type Birth: String
        # @param Address: 地址。
        # @type Address: String
        # @param IdNum: 身份证号。
        # @type IdNum: String
        # @param Portrait: 身份证头像照片的base64编码，如果抠图失败会拿整张身份证做比对并返回空。
        # @type Portrait: String
        # @param Warnings: 告警信息。
        # - 当在Config中配置了告警信息会停止人像比对，Result返回错误（FailedOperation.OcrWarningOccurred）并有此告警信息。
        # - Code 告警码列表和释义：
        # '-9101'：身份证边框不完整告警。
        # '-9102'：身份证复印件告警。
        # '-9103'：身份证翻拍告警。
        # '-9105'：身份证框内遮挡告警。
        # '-9104'：临时身份证告警。
        # '-9106'：身份证 PS 告警（疑似存在PS痕迹）。
        # '-8001'：图片模糊告警。

        # - 多个会用“|” 隔开，如 "-9101|-9106|-9104"。
        # @type Warnings: String
        # @param Quality: 图片质量分数。
        # - 当请求Config中配置图片模糊告警该参数才有意义。
        # - 取值范围（0～100），目前默认阈值是50分，低于50分会触发模糊告警。
        # @type Quality: Float
        # @param Encryption: 敏感数据加密信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`
        # @param EncryptedBody: 加密后的数据。
        # @type EncryptedBody: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Sim, :Result, :Description, :Name, :Sex, :Nation, :Birth, :Address, :IdNum, :Portrait, :Warnings, :Quality, :Encryption, :EncryptedBody, :RequestId

        def initialize(sim=nil, result=nil, description=nil, name=nil, sex=nil, nation=nil, birth=nil, address=nil, idnum=nil, portrait=nil, warnings=nil, quality=nil, encryption=nil, encryptedbody=nil, requestid=nil)
          @Sim = sim
          @Result = result
          @Description = description
          @Name = name
          @Sex = sex
          @Nation = nation
          @Birth = birth
          @Address = address
          @IdNum = idnum
          @Portrait = portrait
          @Warnings = warnings
          @Quality = quality
          @Encryption = encryption
          @EncryptedBody = encryptedbody
          @RequestId = requestid
        end

        def deserialize(params)
          @Sim = params['Sim']
          @Result = params['Result']
          @Description = params['Description']
          @Name = params['Name']
          @Sex = params['Sex']
          @Nation = params['Nation']
          @Birth = params['Birth']
          @Address = params['Address']
          @IdNum = params['IdNum']
          @Portrait = params['Portrait']
          @Warnings = params['Warnings']
          @Quality = params['Quality']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
          @EncryptedBody = params['EncryptedBody']
          @RequestId = params['RequestId']
        end
      end

      # CheckIdNameDate请求参数结构体
      class CheckIdNameDateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 姓名。
        # @type Name: String
        # @param IdCard: 身份证号。
        # @type IdCard: String
        # @param ValidityBegin: 身份证有效期开始时间。
        # - 格式：YYYYMMDD，如：20210701。
        # @type ValidityBegin: String
        # @param ValidityEnd: 身份证有效期到期时间。
        # 格式：YYYYMMDD，长期用“00000000”代替，如：20210701。
        # @type ValidityEnd: String
        # @param Encryption: 敏感数据加密信息。
        # - 对传入信息（姓名、身份证号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :Name, :IdCard, :ValidityBegin, :ValidityEnd, :Encryption

        def initialize(name=nil, idcard=nil, validitybegin=nil, validityend=nil, encryption=nil)
          @Name = name
          @IdCard = idcard
          @ValidityBegin = validitybegin
          @ValidityEnd = validityend
          @Encryption = encryption
        end

        def deserialize(params)
          @Name = params['Name']
          @IdCard = params['IdCard']
          @ValidityBegin = params['ValidityBegin']
          @ValidityEnd = params['ValidityEnd']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
        end
      end

      # CheckIdNameDate返回参数结构体
      class CheckIdNameDateResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码，收费情况如下。

        # - 收费结果码：
        # 0: 一致。
        # -1: 不一致。

        # - 不收费结果码：
        # -2: 非法身份证号（长度、校验位等不正确）。
        # -3: 非法姓名（长度、格式等不正确）。
        # -4: 非法有效期（长度、格式等不正确）。
        # -5: 身份信息无效。
        # -6: 证件库服务异常。
        # -7: 证件库中无此身份证记录。
        # -8: 认证次数超过当日限制，请次日重试。
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CheckPhoneAndName请求参数结构体
      class CheckPhoneAndNameRequest < TencentCloud::Common::AbstractModel
        # @param Mobile: ⼿机号。
        # @type Mobile: String
        # @param Name: 姓名。
        # @type Name: String
        # @param Encryption: 敏感数据加密信息。
        # - 对传入信息（姓名、手机号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :Mobile, :Name, :Encryption

        def initialize(mobile=nil, name=nil, encryption=nil)
          @Mobile = mobile
          @Name = name
          @Encryption = encryption
        end

        def deserialize(params)
          @Mobile = params['Mobile']
          @Name = params['Name']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
        end
      end

      # CheckPhoneAndName返回参数结构体
      class CheckPhoneAndNameResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码，收费情况如下。
        # - 收费结果码：
        # 0: 验证结果一致。
        # 1: 验证结果不一致。

        # - 不收费结果码：
        # -1:查无记录。
        # -2:引擎未知错误。
        # -3:引擎服务异常。
        # -4:姓名校验不通过。
        # -5:手机号码不合法。
        # -6: 认证次数超过当日限制，请次日重试。
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DetectAIFakeFaces请求参数结构体
      class DetectAIFakeFacesRequest < TencentCloud::Common::AbstractModel
        # @param FaceInput: 传入需要进行检测的带有人脸的图片或视频，使用base64编码的形式。
        # - 图片的Base64值：
        # 建议整体图像480x640的分辨率，脸部 大小 100X100 以上。
        # Base64编码后的图片数据大小不超过3M，仅支持jpg、png格式。
        # 请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。

        # - 视频的Base64值：
        # Base64编码后的大小不超过8M，支持mp4、avi、flv格式。
        # 请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        # 视频时长最大支持20s，建议时长2～5s。
        # 建议视频分辨率为480x640，帧率在25fps~30fps之间。
        # @type FaceInput: String
        # @param FaceInputType: 传入的类型。
        # - 取值范围：
        # 1：传入的是图片类型。
        # 2：传入的是视频类型。
        # 其他：返回错误码InvalidParameter。
        # @type FaceInputType: Integer
        # @param Encryption: 是否需要对请求信息进行全包体加密。
        # - 支持的加密算法:AES-256-CBC、SM4-GCM。
        # - 有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`
        # @param EncryptedBody: 加密后的密文。
        # - 加密前的数据格式如下:{"FaceInput":"AAAAA","FaceInputType":1}。
        # @type EncryptedBody: String

        attr_accessor :FaceInput, :FaceInputType, :Encryption, :EncryptedBody

        def initialize(faceinput=nil, faceinputtype=nil, encryption=nil, encryptedbody=nil)
          @FaceInput = faceinput
          @FaceInputType = faceinputtype
          @Encryption = encryption
          @EncryptedBody = encryptedbody
        end

        def deserialize(params)
          @FaceInput = params['FaceInput']
          @FaceInputType = params['FaceInputType']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
          @EncryptedBody = params['EncryptedBody']
        end
      end

      # DetectAIFakeFaces返回参数结构体
      class DetectAIFakeFacesResponse < TencentCloud::Common::AbstractModel
        # @param AttackRiskLevel: 检测到的图片是否存在攻击。
        # - Low：无攻击风险。
        # - Mid：中度疑似攻击。
        # - High：高度疑似攻击。
        # @type AttackRiskLevel: String
        # @param AttackRiskDetailList: 检测到疑似的攻击痕迹列表。
        # - 说明：未检测到攻击痕迹时，返回空数组。
        # - 此出参仅作为结果判断的参考，实际应用仍建议使用AttackRiskLevel的结果。
        # @type AttackRiskDetailList: Array
        # @param ExtraInfo: 额外信息。
        # @type ExtraInfo: :class:`Tencentcloud::Faceid.v20180301.models.ExtraInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AttackRiskLevel, :AttackRiskDetailList, :ExtraInfo, :RequestId

        def initialize(attackrisklevel=nil, attackriskdetaillist=nil, extrainfo=nil, requestid=nil)
          @AttackRiskLevel = attackrisklevel
          @AttackRiskDetailList = attackriskdetaillist
          @ExtraInfo = extrainfo
          @RequestId = requestid
        end

        def deserialize(params)
          @AttackRiskLevel = params['AttackRiskLevel']
          unless params['AttackRiskDetailList'].nil?
            @AttackRiskDetailList = []
            params['AttackRiskDetailList'].each do |i|
              attackriskdetail_tmp = AttackRiskDetail.new
              attackriskdetail_tmp.deserialize(i)
              @AttackRiskDetailList << attackriskdetail_tmp
            end
          end
          unless params['ExtraInfo'].nil?
            @ExtraInfo = ExtraInfo.new
            @ExtraInfo.deserialize(params['ExtraInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DetectAuth请求参数结构体
      class DetectAuthRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 业务流程ID。
        # - 用于细分客户使用场景, 可为业务配置不同的业务流程。
        # - 申请开通服务后，登录腾讯云[慧眼人脸核身控制](https://console.cloud.tencent.com/faceid)进行创建，审核通过后即可调用。
        # - 如有疑问，请添加[腾讯云人脸核身小助手](https://cloud.tencent.com/document/product/1007/56130)进行咨询。
        # @type RuleId: String
        # @param TerminalType: 本接口不需要传递此参数。
        # @type TerminalType: String
        # @param IdCard: 验证人的身份证号码。
        # - 是否必传基于[控制台](https://console.cloud.tencent.com/faceid/access)申请业务流程时配置的提示。
        # @type IdCard: String
        # @param Name: 验证人的姓名。
        # - 是否必传基于[控制台](https://console.cloud.tencent.com/faceid/access)申请业务流程时配置的提示。
        # - 最长长度32位。中文请使用UTF-8编码。
        # @type Name: String
        # @param RedirectUrl: 认证结束后重定向的回调链接地址。
        # - 最长长度1024位。
        # @type RedirectUrl: String
        # @param Extra: 透传字段，在获取验证结果时返回。
        # @type Extra: String
        # @param ImageBase64: 用于人脸比对的图像数据，使用base64编码。
        # - Base64编码后的图片数据大小不超过3M。
        # - 仅支持jpg、png格式。
        # - 请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        # @type ImageBase64: String
        # @param Encryption: 敏感数据加密信息。对传入信息（姓名、身份证号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`
        # @param IntentionVerifyText: 意愿核身（朗读模式）使用的文案。
        # - 若未使用意愿核身（朗读模式），则该字段无需传入。
        # - 最长可接受120的字符串长度。
        # @type IntentionVerifyText: String
        # @param IntentionQuestions: 意愿核身（语音播报+语音回答模式）使用的文案。
        # - 包括：系统语音播报的文本、需要核验的标准文本。
        # - 当前仅支持1轮问答。
        # @type IntentionQuestions: Array
        # @param IntentionActions: 意愿核身（点头确认模式）使用的文案。
        # - 若未使用意愿核身（点头确认模式），则该字段无需传入。
        # - 当前仅支持一个提示文本。
        # @type IntentionActions: Array
        # @param Config: 意愿核身流程配置。
        # @type Config: :class:`Tencentcloud::Faceid.v20180301.models.RuleIdConfig`

        attr_accessor :RuleId, :TerminalType, :IdCard, :Name, :RedirectUrl, :Extra, :ImageBase64, :Encryption, :IntentionVerifyText, :IntentionQuestions, :IntentionActions, :Config

        def initialize(ruleid=nil, terminaltype=nil, idcard=nil, name=nil, redirecturl=nil, extra=nil, imagebase64=nil, encryption=nil, intentionverifytext=nil, intentionquestions=nil, intentionactions=nil, config=nil)
          @RuleId = ruleid
          @TerminalType = terminaltype
          @IdCard = idcard
          @Name = name
          @RedirectUrl = redirecturl
          @Extra = extra
          @ImageBase64 = imagebase64
          @Encryption = encryption
          @IntentionVerifyText = intentionverifytext
          @IntentionQuestions = intentionquestions
          @IntentionActions = intentionactions
          @Config = config
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @TerminalType = params['TerminalType']
          @IdCard = params['IdCard']
          @Name = params['Name']
          @RedirectUrl = params['RedirectUrl']
          @Extra = params['Extra']
          @ImageBase64 = params['ImageBase64']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
          @IntentionVerifyText = params['IntentionVerifyText']
          unless params['IntentionQuestions'].nil?
            @IntentionQuestions = []
            params['IntentionQuestions'].each do |i|
              intentionquestion_tmp = IntentionQuestion.new
              intentionquestion_tmp.deserialize(i)
              @IntentionQuestions << intentionquestion_tmp
            end
          end
          unless params['IntentionActions'].nil?
            @IntentionActions = []
            params['IntentionActions'].each do |i|
              intentionactionconfig_tmp = IntentionActionConfig.new
              intentionactionconfig_tmp.deserialize(i)
              @IntentionActions << intentionactionconfig_tmp
            end
          end
          unless params['Config'].nil?
            @Config = RuleIdConfig.new
            @Config.deserialize(params['Config'])
          end
        end
      end

      # DetectAuth返回参数结构体
      class DetectAuthResponse < TencentCloud::Common::AbstractModel
        # @param Url: 用于发起核身流程的URL，仅微信H5场景使用。
        # @type Url: String
        # @param BizToken: 一次核验流程的唯一标识。
        # - 有效时间为7,200秒，超过有效期再进行人脸核验会报错，请在有效期内进行核验。
        # - 完成人脸核验后，需根据此标识调用[获取实名核身结果信息增强版](https://cloud.tencent.com/document/api/1007/41957)获取用户最终验证结果信息。
        # @type BizToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :BizToken, :RequestId

        def initialize(url=nil, biztoken=nil, requestid=nil)
          @Url = url
          @BizToken = biztoken
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @BizToken = params['BizToken']
          @RequestId = params['RequestId']
        end
      end

      # 活体一比一详情
      class DetectDetail < TencentCloud::Common::AbstractModel
        # @param ReqTime: 请求时间戳。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReqTime: String
        # @param Seq: 本次活体一比一请求的唯一标记。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Seq: String
        # @param Idcard: 参与本次活体一比一的身份证号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Idcard: String
        # @param Name: 参与本次活体一比一的姓名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Sim: 本次活体一比一的相似度。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sim: String
        # @param IsNeedCharge: 本次活体一比一是否收费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNeedCharge: Boolean
        # @param Errcode: 本次活体一比一最终结果。0为成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Errcode: Integer
        # @param Errmsg: 本次活体一比一最终结果描述。（仅描述用，文案更新时不会通知。）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Errmsg: String
        # @param Livestatus: 本次活体结果。0为成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Livestatus: Integer
        # @param Livemsg: 本次活体结果描述。（仅描述用，文案更新时不会通知。）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Livemsg: String
        # @param Comparestatus: 本次一比一结果。0为成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comparestatus: Integer
        # @param Comparemsg: 本次一比一结果描述。（仅描述用，文案更新时不会通知。）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comparemsg: String
        # @param CompareLibType: 比对库源类型。包括：
        # 公安商业库；
        # 业务方自有库（用户上传照片、客户的混合库、混合部署库）；
        # 二次验证库；
        # 人工审核库；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareLibType: String
        # @param LivenessMode: 枚举活体检测类型：
        # 0：未知
        # 1：数字活体
        # 2：动作活体
        # 3：静默活体
        # 4：一闪活体（动作+光线）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LivenessMode: Integer

        attr_accessor :ReqTime, :Seq, :Idcard, :Name, :Sim, :IsNeedCharge, :Errcode, :Errmsg, :Livestatus, :Livemsg, :Comparestatus, :Comparemsg, :CompareLibType, :LivenessMode

        def initialize(reqtime=nil, seq=nil, idcard=nil, name=nil, sim=nil, isneedcharge=nil, errcode=nil, errmsg=nil, livestatus=nil, livemsg=nil, comparestatus=nil, comparemsg=nil, comparelibtype=nil, livenessmode=nil)
          @ReqTime = reqtime
          @Seq = seq
          @Idcard = idcard
          @Name = name
          @Sim = sim
          @IsNeedCharge = isneedcharge
          @Errcode = errcode
          @Errmsg = errmsg
          @Livestatus = livestatus
          @Livemsg = livemsg
          @Comparestatus = comparestatus
          @Comparemsg = comparemsg
          @CompareLibType = comparelibtype
          @LivenessMode = livenessmode
        end

        def deserialize(params)
          @ReqTime = params['ReqTime']
          @Seq = params['Seq']
          @Idcard = params['Idcard']
          @Name = params['Name']
          @Sim = params['Sim']
          @IsNeedCharge = params['IsNeedCharge']
          @Errcode = params['Errcode']
          @Errmsg = params['Errmsg']
          @Livestatus = params['Livestatus']
          @Livemsg = params['Livemsg']
          @Comparestatus = params['Comparestatus']
          @Comparemsg = params['Comparemsg']
          @CompareLibType = params['CompareLibType']
          @LivenessMode = params['LivenessMode']
        end
      end

      # 核身最佳帧信息。
      class DetectInfoBestFrame < TencentCloud::Common::AbstractModel
        # @param BestFrame: 活体比对最佳帧Base64编码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BestFrame: String
        # @param BestFrames: 自截帧Base64编码数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BestFrames: Array

        attr_accessor :BestFrame, :BestFrames

        def initialize(bestframe=nil, bestframes=nil)
          @BestFrame = bestframe
          @BestFrames = bestframes
        end

        def deserialize(params)
          @BestFrame = params['BestFrame']
          @BestFrames = params['BestFrames']
        end
      end

      # 核身身份证图片信息。
      class DetectInfoIdCardData < TencentCloud::Common::AbstractModel
        # @param OcrFront: OCR正面照片的base64编码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrFront: String
        # @param OcrBack: OCR反面照片的base64编码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrBack: String
        # @param ProcessedFrontImage: 旋转裁边后的正面照片base64编码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessedFrontImage: String
        # @param ProcessedBackImage: 旋转裁边后的背面照片base64编码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessedBackImage: String
        # @param Avatar: 身份证正面人像图base64编码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Avatar: String
        # @param WarnInfos: 身份证人像面告警码。
        # - 开启身份证告警功能后才会返回。
        # - 返回数组中可能出现的告警码如下：
        #     - -9100 身份证有效日期不合法告警。
        #     - -9101 身份证边框不完整告警。
        #     - -9102 身份证复印件告警。
        #     - -9103 身份证翻拍告警。
        #     - -9105 身份证框内遮挡告警。
        #     - -9104 临时身份证告警。
        #     - -9106 身份证 PS 告警（疑似存在PS痕迹）。
        #     - -9107 身份证反光告警。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarnInfos: Array
        # @param BackWarnInfos: 身份证国徽面告警码。
        # - 开启身份证告警功能后才会返回。
        # - 返回数组中可能出现的告警码如下：
        #     -   -9100 身份证有效日期不合法告警，
        #     -     -9101 身份证边框不完整告警，
        #     -     -9102 身份证复印件告警，
        #     -     -9103 身份证翻拍告警，
        #     -     -9105 身份证框内遮挡告警，
        #     -     -9104 临时身份证告警，
        #     -     -9106 身份证 PS 告警（疑似存在PS痕迹），
        #     -     -9107 身份证反光告警。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackWarnInfos: Array

        attr_accessor :OcrFront, :OcrBack, :ProcessedFrontImage, :ProcessedBackImage, :Avatar, :WarnInfos, :BackWarnInfos

        def initialize(ocrfront=nil, ocrback=nil, processedfrontimage=nil, processedbackimage=nil, avatar=nil, warninfos=nil, backwarninfos=nil)
          @OcrFront = ocrfront
          @OcrBack = ocrback
          @ProcessedFrontImage = processedfrontimage
          @ProcessedBackImage = processedbackimage
          @Avatar = avatar
          @WarnInfos = warninfos
          @BackWarnInfos = backwarninfos
        end

        def deserialize(params)
          @OcrFront = params['OcrFront']
          @OcrBack = params['OcrBack']
          @ProcessedFrontImage = params['ProcessedFrontImage']
          @ProcessedBackImage = params['ProcessedBackImage']
          @Avatar = params['Avatar']
          @WarnInfos = params['WarnInfos']
          @BackWarnInfos = params['BackWarnInfos']
        end
      end

      # 核身文本信息。
      class DetectInfoText < TencentCloud::Common::AbstractModel
        # @param ErrCode: 本次流程最终验证结果。
        # - 取值范围：0为成功。
        # - 仅包含活体人脸核身结果，不包含意愿核身结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrCode: Integer
        # @param ErrMsg: 本次流程最终验证结果描述。
        # - 仅描述用，文案更新时不会通知。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMsg: String
        # @param IdCard: 本次验证使用的身份证号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdCard: String
        # @param UseIDType: 用户认证时使用的证件号码类型。
        # - 取值范围：
        #     0：二代身份证的证件号码。
        #     1：港澳台居住证的证件号码。
        #     2：其他（核验使用的证件号码非合法身份号码）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseIDType: Integer
        # @param Name: 本次验证使用的姓名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param OcrNation: 身份校验环节识别结果：民族。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrNation: String
        # @param OcrAddress: 身份校验环节识别结果：家庭住址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrAddress: String
        # @param OcrBirth: 身份校验环节识别结果：生日。
        # - 格式为：YYYY/M/D
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrBirth: String
        # @param OcrAuthority: 身份校验环节识别结果：签发机关。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrAuthority: String
        # @param OcrValidDate: 身份校验环节识别结果：有效日期。
        # - 格式为：YYYY.MM.DD-YYYY.MM.DD。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrValidDate: String
        # @param OcrName: 身份校验环节识别结果：姓名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrName: String
        # @param OcrIdCard: 身份校验环节识别结果：身份证号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrIdCard: String
        # @param OcrGender: 身份校验环节识别结果：性别。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrGender: String
        # @param IdInfoFrom: 身份校验环节采用的信息上传方式。
        # - 取值有"NFC"、"OCR"、"手动输入"、"其他"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdInfoFrom: String
        # @param LiveStatus: 本次流程最终活体结果。
        # - 0为成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LiveStatus: Integer
        # @param LiveMsg: 本次流程最终活体结果描述。
        # - 仅描述用，文案更新时不会通知。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LiveMsg: String
        # @param Comparestatus: 本次流程最终一比一结果。
        # - 0为成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comparestatus: Integer
        # @param Comparemsg: 本次流程最终一比一结果描述。
        # - 仅描述用，文案更新时不会通知。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comparemsg: String
        # @param Sim: 本次流程活体一比一的分数。
        # - 取值范围 [0.00, 100.00]。
        # - 相似度大于等于70时才判断为同一人，也可根据具体场景自行调整阈值。
        # - 阈值70的误通过率为千分之一，阈值80的误通过率是万分之一。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sim: String
        # @param Location: 地理位置经纬度。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: String
        # @param Extra: Auth接口带入额外信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param LivenessDetail: 本次流程进行的活体一比一流水。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LivenessDetail: Array
        # @param LivenessInfoTag: 描述当前请求活体阶段被拒绝的详细原因，该参数仅限PLUS版本核身服务返回。
        # - 详情如下：
        #     01-用户全程闭眼
        #     02-用户未完成指定动作
        #     03-疑似翻拍攻击
        #     04-疑似合成攻击
        #     05-疑似黑产模版
        #     06-疑似存在水印
        #     07-反光校验未通过
        #     08-疑似中途换人
        #     09-人脸质量过差
        #     10-距离校验不通过
        #     11-疑似对抗样本攻击
        #     12-嘴巴区域疑似存在攻击痕迹
        #     13-眼睛区域疑似存在攻击痕迹
        #     14-眼睛或嘴巴被遮挡
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LivenessInfoTag: Array
        # @param Mobile: 手机号码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mobile: String
        # @param CompareLibType: 本次流程最终比对库源类型。
        # - 取值范围：
        #     权威库。
        #     业务方自有库（用户上传照片、客户的混合库、混合部署库）。
        #     二次验证库。
        #     人工审核库。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareLibType: String
        # @param LivenessMode: 本次流程最终活体类型。
        # - 取值范围：
        #     0：未知
        #     1：数字活体
        #     2：动作活体
        #     3：静默活体
        #     4：一闪活体（动作+光线）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LivenessMode: Integer
        # @param NFCRequestIds: nfc重复计费requestId列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NFCRequestIds: Array
        # @param NFCBillingCounts: nfc重复计费计数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NFCBillingCounts: Integer
        # @param PassNo: 港澳台居住证通行证号码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PassNo: String
        # @param VisaNum: 港澳台居住证签发次数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VisaNum: String

        attr_accessor :ErrCode, :ErrMsg, :IdCard, :UseIDType, :Name, :OcrNation, :OcrAddress, :OcrBirth, :OcrAuthority, :OcrValidDate, :OcrName, :OcrIdCard, :OcrGender, :IdInfoFrom, :LiveStatus, :LiveMsg, :Comparestatus, :Comparemsg, :Sim, :Location, :Extra, :LivenessDetail, :LivenessInfoTag, :Mobile, :CompareLibType, :LivenessMode, :NFCRequestIds, :NFCBillingCounts, :PassNo, :VisaNum

        def initialize(errcode=nil, errmsg=nil, idcard=nil, useidtype=nil, name=nil, ocrnation=nil, ocraddress=nil, ocrbirth=nil, ocrauthority=nil, ocrvaliddate=nil, ocrname=nil, ocridcard=nil, ocrgender=nil, idinfofrom=nil, livestatus=nil, livemsg=nil, comparestatus=nil, comparemsg=nil, sim=nil, location=nil, extra=nil, livenessdetail=nil, livenessinfotag=nil, mobile=nil, comparelibtype=nil, livenessmode=nil, nfcrequestids=nil, nfcbillingcounts=nil, passno=nil, visanum=nil)
          @ErrCode = errcode
          @ErrMsg = errmsg
          @IdCard = idcard
          @UseIDType = useidtype
          @Name = name
          @OcrNation = ocrnation
          @OcrAddress = ocraddress
          @OcrBirth = ocrbirth
          @OcrAuthority = ocrauthority
          @OcrValidDate = ocrvaliddate
          @OcrName = ocrname
          @OcrIdCard = ocridcard
          @OcrGender = ocrgender
          @IdInfoFrom = idinfofrom
          @LiveStatus = livestatus
          @LiveMsg = livemsg
          @Comparestatus = comparestatus
          @Comparemsg = comparemsg
          @Sim = sim
          @Location = location
          @Extra = extra
          @LivenessDetail = livenessdetail
          @LivenessInfoTag = livenessinfotag
          @Mobile = mobile
          @CompareLibType = comparelibtype
          @LivenessMode = livenessmode
          @NFCRequestIds = nfcrequestids
          @NFCBillingCounts = nfcbillingcounts
          @PassNo = passno
          @VisaNum = visanum
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          @IdCard = params['IdCard']
          @UseIDType = params['UseIDType']
          @Name = params['Name']
          @OcrNation = params['OcrNation']
          @OcrAddress = params['OcrAddress']
          @OcrBirth = params['OcrBirth']
          @OcrAuthority = params['OcrAuthority']
          @OcrValidDate = params['OcrValidDate']
          @OcrName = params['OcrName']
          @OcrIdCard = params['OcrIdCard']
          @OcrGender = params['OcrGender']
          @IdInfoFrom = params['IdInfoFrom']
          @LiveStatus = params['LiveStatus']
          @LiveMsg = params['LiveMsg']
          @Comparestatus = params['Comparestatus']
          @Comparemsg = params['Comparemsg']
          @Sim = params['Sim']
          @Location = params['Location']
          @Extra = params['Extra']
          unless params['LivenessDetail'].nil?
            @LivenessDetail = []
            params['LivenessDetail'].each do |i|
              detectdetail_tmp = DetectDetail.new
              detectdetail_tmp.deserialize(i)
              @LivenessDetail << detectdetail_tmp
            end
          end
          @LivenessInfoTag = params['LivenessInfoTag']
          @Mobile = params['Mobile']
          @CompareLibType = params['CompareLibType']
          @LivenessMode = params['LivenessMode']
          @NFCRequestIds = params['NFCRequestIds']
          @NFCBillingCounts = params['NFCBillingCounts']
          @PassNo = params['PassNo']
          @VisaNum = params['VisaNum']
        end
      end

      # 核身视频信息。
      class DetectInfoVideoData < TencentCloud::Common::AbstractModel
        # @param LivenessVideo: 活体视频的base64编码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LivenessVideo: String

        attr_accessor :LivenessVideo

        def initialize(livenessvideo=nil)
          @LivenessVideo = livenessvideo
        end

        def deserialize(params)
          @LivenessVideo = params['LivenessVideo']
        end
      end

      # Eid出参，包括商户方用户的标识和加密的用户姓名身份证信息。
      class EidInfo < TencentCloud::Common::AbstractModel
        # @param EidCode: 商户方 appeIDcode 的数字证书。
        # @type EidCode: String
        # @param EidSign: Eid中心针对商户方EidCode的电子签名。
        # @type EidSign: String
        # @param DesKey: 商户方公钥加密的会话密钥的base64字符串，[指引详见](https://cloud.tencent.com/document/product/1007/63370)。
        # @type DesKey: String
        # @param UserInfo: 会话密钥sm2加密后的base64字符串，[指引详见](https://cloud.tencent.com/document/product/1007/63370)。
        # @type UserInfo: String

        attr_accessor :EidCode, :EidSign, :DesKey, :UserInfo

        def initialize(eidcode=nil, eidsign=nil, deskey=nil, userinfo=nil)
          @EidCode = eidcode
          @EidSign = eidsign
          @DesKey = deskey
          @UserInfo = userinfo
        end

        def deserialize(params)
          @EidCode = params['EidCode']
          @EidSign = params['EidSign']
          @DesKey = params['DesKey']
          @UserInfo = params['UserInfo']
        end
      end

      # EncryptedPhoneVerification请求参数结构体
      class EncryptedPhoneVerificationRequest < TencentCloud::Common::AbstractModel
        # @param IdCard: 身份证号，加密方式以EncryptionMode为准
        # @type IdCard: String
        # @param Name: 姓名，加密方式以EncryptionMode为准
        # @type Name: String
        # @param Phone: 手机号，加密方式以EncryptionMode为准
        # @type Phone: String
        # @param EncryptionMode: 敏感信息的加密方式，目前支持明文、MD5和SHA256加密传输，参数取值：

        # 0：明文，不加密
        # 1：使用MD5加密
        # 2：使用SHA256
        # 3：使用SM3加密
        # @type EncryptionMode: String

        attr_accessor :IdCard, :Name, :Phone, :EncryptionMode

        def initialize(idcard=nil, name=nil, phone=nil, encryptionmode=nil)
          @IdCard = idcard
          @Name = name
          @Phone = phone
          @EncryptionMode = encryptionmode
        end

        def deserialize(params)
          @IdCard = params['IdCard']
          @Name = params['Name']
          @Phone = params['Phone']
          @EncryptionMode = params['EncryptionMode']
        end
      end

      # EncryptedPhoneVerification返回参数结构体
      class EncryptedPhoneVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码:
        # 【收费结果码】
        # 0:   三要素信息一致
        # -4:  三要素信息不一致

        # 【不收费结果码】
        # -7: 身份证号码有误
        # -8: 参数错误
        # -9: 没有记录
        # -11: 验证中心服务繁忙
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param ISP: 运营商名称。
        # 取值范围为["移动","联通","电信",""]
        # @type ISP: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Description, :ISP, :RequestId

        def initialize(result=nil, description=nil, isp=nil, requestid=nil)
          @Result = result
          @Description = description
          @ISP = isp
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Description = params['Description']
          @ISP = params['ISP']
          @RequestId = params['RequestId']
        end
      end

      # 敏感数据加密
      class Encryption < TencentCloud::Common::AbstractModel
        # @param EncryptList: 在使用加密服务时，填入要被加密的字段。本接口中可填入加密后的一个或多个字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptList: Array
        # @param CiphertextBlob: 加密后的对称密钥，关于密钥的生成和使用请查阅<a href="https://cloud.tencent.com/document/product/1007/47180">数据加密</a> 文档。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CiphertextBlob: String
        # @param Iv: 有加密需求的用户，传入CBC加密的初始向量（客户自定义字符串，长度16字符）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Iv: String
        # @param Algorithm: 加密使用的算法（支持'AES-256-CBC'、'SM4-GCM'），不传默认为'AES-256-CBC'
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Algorithm: String
        # @param TagList: SM4-GCM算法生成的消息摘要（校验消息完整性时使用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagList: Array

        attr_accessor :EncryptList, :CiphertextBlob, :Iv, :Algorithm, :TagList

        def initialize(encryptlist=nil, ciphertextblob=nil, iv=nil, algorithm=nil, taglist=nil)
          @EncryptList = encryptlist
          @CiphertextBlob = ciphertextblob
          @Iv = iv
          @Algorithm = algorithm
          @TagList = taglist
        end

        def deserialize(params)
          @EncryptList = params['EncryptList']
          @CiphertextBlob = params['CiphertextBlob']
          @Iv = params['Iv']
          @Algorithm = params['Algorithm']
          @TagList = params['TagList']
        end
      end

      # 额外的详细信息
      class ExtraInfo < TencentCloud::Common::AbstractModel
        # @param RetrievalLivenessExtraInfo: 命中模板的详细信息，仅返回命中的相似度最高的模板信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetrievalLivenessExtraInfo: Array

        attr_accessor :RetrievalLivenessExtraInfo

        def initialize(retrievallivenessextrainfo=nil)
          @RetrievalLivenessExtraInfo = retrievallivenessextrainfo
        end

        def deserialize(params)
          unless params['RetrievalLivenessExtraInfo'].nil?
            @RetrievalLivenessExtraInfo = []
            params['RetrievalLivenessExtraInfo'].each do |i|
              retrievallivenessextrainfo_tmp = RetrievalLivenessExtraInfo.new
              retrievallivenessextrainfo_tmp.deserialize(i)
              @RetrievalLivenessExtraInfo << retrievallivenessextrainfo_tmp
            end
          end
        end
      end

      # GetActionSequence请求参数结构体
      class GetActionSequenceRequest < TencentCloud::Common::AbstractModel
        # @param ActionType: 默认不需要使用。
        # @type ActionType: String

        attr_accessor :ActionType

        def initialize(actiontype=nil)
          @ActionType = actiontype
        end

        def deserialize(params)
          @ActionType = params['ActionType']
        end
      end

      # GetActionSequence返回参数结构体
      class GetActionSequenceResponse < TencentCloud::Common::AbstractModel
        # @param ActionSequence: 动作顺序，例如：2,1 or 1,2。
        # - 1代表张嘴，2代表闭眼。
        # @type ActionSequence: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActionSequence, :RequestId

        def initialize(actionsequence=nil, requestid=nil)
          @ActionSequence = actionsequence
          @RequestId = requestid
        end

        def deserialize(params)
          @ActionSequence = params['ActionSequence']
          @RequestId = params['RequestId']
        end
      end

      # GetDetectInfoEnhanced请求参数结构体
      class GetDetectInfoEnhancedRequest < TencentCloud::Common::AbstractModel
        # @param BizToken: 人脸核身流程的标识，调用DetectAuth接口时生成。
        # @type BizToken: String
        # @param RuleId: 用于细分客户使用场景，由腾讯侧在线下对接时分配。
        # @type RuleId: String
        # @param InfoType: 指定拉取的结果信息。
        # - 取值（0：全部；1：文本类；2：身份证信息；3：视频最佳截图信息）。
        # - 例如 13 表示拉取文本类、视频最佳截图信息。
        # - 默认值：0
        # @type InfoType: String
        # @param BestFramesCount: 从活体视频中截取一定张数的最佳帧。
        # - 仅部分服务支持，若需使用请与慧眼小助手沟通。
        # - 默认值为0，最大值为10，超出10的最多只给10张。
        # - InfoType需要包含3。
        # @type BestFramesCount: Integer
        # @param IsCutIdCardImage: 是否对身份证照片进行裁边。
        # - 默认为false。
        # - InfoType需要包含2。
        # @type IsCutIdCardImage: Boolean
        # @param IsNeedIdCardAvatar: 是否需要从身份证中抠出头像。
        # - 默认为false。
        # - InfoType需要包含2。
        # @type IsNeedIdCardAvatar: Boolean
        # @param IsEncrypt: 已弃用。
        # @type IsEncrypt: Boolean
        # @param Encryption: 是否需要对返回中的敏感信息进行加密。
        # - 只需指定加密算法Algorithm即可，其余字段传入默认值。
        # - 敏感信息包括：Response.Text.IdCard、Response.Text.Name、Response.Text.OcrIdCard、Response.Text.OcrName。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`
        # @param IsEncryptResponse: 是否对回包整体进行加密。
        # @type IsEncryptResponse: Boolean

        attr_accessor :BizToken, :RuleId, :InfoType, :BestFramesCount, :IsCutIdCardImage, :IsNeedIdCardAvatar, :IsEncrypt, :Encryption, :IsEncryptResponse

        def initialize(biztoken=nil, ruleid=nil, infotype=nil, bestframescount=nil, iscutidcardimage=nil, isneedidcardavatar=nil, isencrypt=nil, encryption=nil, isencryptresponse=nil)
          @BizToken = biztoken
          @RuleId = ruleid
          @InfoType = infotype
          @BestFramesCount = bestframescount
          @IsCutIdCardImage = iscutidcardimage
          @IsNeedIdCardAvatar = isneedidcardavatar
          @IsEncrypt = isencrypt
          @Encryption = encryption
          @IsEncryptResponse = isencryptresponse
        end

        def deserialize(params)
          @BizToken = params['BizToken']
          @RuleId = params['RuleId']
          @InfoType = params['InfoType']
          @BestFramesCount = params['BestFramesCount']
          @IsCutIdCardImage = params['IsCutIdCardImage']
          @IsNeedIdCardAvatar = params['IsNeedIdCardAvatar']
          @IsEncrypt = params['IsEncrypt']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
          @IsEncryptResponse = params['IsEncryptResponse']
        end
      end

      # GetDetectInfoEnhanced返回参数结构体
      class GetDetectInfoEnhancedResponse < TencentCloud::Common::AbstractModel
        # @param Text: 文本类信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Faceid.v20180301.models.DetectInfoText`
        # @param IdCardData: 身份证照片信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdCardData: :class:`Tencentcloud::Faceid.v20180301.models.DetectInfoIdCardData`
        # @param BestFrame: 最佳帧信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BestFrame: :class:`Tencentcloud::Faceid.v20180301.models.DetectInfoBestFrame`
        # @param VideoData: 视频信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoData: :class:`Tencentcloud::Faceid.v20180301.models.DetectInfoVideoData`
        # @param Encryption: 敏感数据加密信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`
        # @param IntentionVerifyData: 意愿核身朗读模式结果信息。
        # - 若未使用意愿核身功能，该字段返回值可以不处理。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntentionVerifyData: :class:`Tencentcloud::Faceid.v20180301.models.IntentionVerifyData`
        # @param IntentionQuestionResult: 意愿核身问答模式结果。

        # - 若未使用该意愿核身功能，该字段返回值可以不处理。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntentionQuestionResult: :class:`Tencentcloud::Faceid.v20180301.models.IntentionQuestionResult`
        # @param IntentionActionResult: 意愿核身点头确认模式的结果信息。
        # - 若未使用该意愿核身功能，该字段返回值可以不处理。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntentionActionResult: :class:`Tencentcloud::Faceid.v20180301.models.IntentionActionResult`
        # @param EncryptedBody: 加密后的数据。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptedBody: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Text, :IdCardData, :BestFrame, :VideoData, :Encryption, :IntentionVerifyData, :IntentionQuestionResult, :IntentionActionResult, :EncryptedBody, :RequestId

        def initialize(text=nil, idcarddata=nil, bestframe=nil, videodata=nil, encryption=nil, intentionverifydata=nil, intentionquestionresult=nil, intentionactionresult=nil, encryptedbody=nil, requestid=nil)
          @Text = text
          @IdCardData = idcarddata
          @BestFrame = bestframe
          @VideoData = videodata
          @Encryption = encryption
          @IntentionVerifyData = intentionverifydata
          @IntentionQuestionResult = intentionquestionresult
          @IntentionActionResult = intentionactionresult
          @EncryptedBody = encryptedbody
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = DetectInfoText.new
            @Text.deserialize(params['Text'])
          end
          unless params['IdCardData'].nil?
            @IdCardData = DetectInfoIdCardData.new
            @IdCardData.deserialize(params['IdCardData'])
          end
          unless params['BestFrame'].nil?
            @BestFrame = DetectInfoBestFrame.new
            @BestFrame.deserialize(params['BestFrame'])
          end
          unless params['VideoData'].nil?
            @VideoData = DetectInfoVideoData.new
            @VideoData.deserialize(params['VideoData'])
          end
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
          unless params['IntentionVerifyData'].nil?
            @IntentionVerifyData = IntentionVerifyData.new
            @IntentionVerifyData.deserialize(params['IntentionVerifyData'])
          end
          unless params['IntentionQuestionResult'].nil?
            @IntentionQuestionResult = IntentionQuestionResult.new
            @IntentionQuestionResult.deserialize(params['IntentionQuestionResult'])
          end
          unless params['IntentionActionResult'].nil?
            @IntentionActionResult = IntentionActionResult.new
            @IntentionActionResult.deserialize(params['IntentionActionResult'])
          end
          @EncryptedBody = params['EncryptedBody']
          @RequestId = params['RequestId']
        end
      end

      # GetDetectInfo请求参数结构体
      class GetDetectInfoRequest < TencentCloud::Common::AbstractModel
        # @param BizToken: 人脸核身流程的标识，调用DetectAuth接口时生成。
        # @type BizToken: String
        # @param RuleId: 用于细分客户使用场景，申请开通服务后，可以在腾讯云慧眼人脸核身控制台（https://console.cloud.tencent.com/faceid） 自助接入里面创建，审核通过后即可调用。如有疑问，请加慧眼小助手微信（faceid001）进行咨询。
        # @type RuleId: String
        # @param InfoType: 指定拉取的结果信息，取值（0：全部；1：文本类；2：身份证正反面；3：视频最佳截图照片；4：视频）。
        # 如 134表示拉取文本类、视频最佳截图照片、视频。
        # 默认值：0
        # @type InfoType: String

        attr_accessor :BizToken, :RuleId, :InfoType

        def initialize(biztoken=nil, ruleid=nil, infotype=nil)
          @BizToken = biztoken
          @RuleId = ruleid
          @InfoType = infotype
        end

        def deserialize(params)
          @BizToken = params['BizToken']
          @RuleId = params['RuleId']
          @InfoType = params['InfoType']
        end
      end

      # GetDetectInfo返回参数结构体
      class GetDetectInfoResponse < TencentCloud::Common::AbstractModel
        # @param DetectInfo: JSON字符串。
        # {
        #   // 文本类信息
        #   "Text": {
        #     "ErrCode": null,      // 本次核身最终结果。0为成功
        #     "ErrMsg": null,       // 本次核身最终结果信息描述。
        #     "IdCard": "",         // 本次核身最终获得的身份证号。
        #     "Name": "",           // 本次核身最终获得的姓名。
        #     "OcrNation": null,    // ocr阶段获取的民族
        #     "OcrAddress": null,   // ocr阶段获取的地址
        #     "OcrBirth": null,     // ocr阶段获取的出生信息
        #     "OcrAuthority": null, // ocr阶段获取的证件签发机关
        #     "OcrValidDate": null, // ocr阶段获取的证件有效期
        #     "OcrName": null,      // ocr阶段获取的姓名
        #     "OcrIdCard": null,    // ocr阶段获取的身份证号
        #     "OcrGender": null,    // ocr阶段获取的性别
        #     "LiveStatus": null,   // 活体检测阶段的错误码。0为成功
        #     "LiveMsg": null,      // 活体检测阶段的错误信息
        #     "Comparestatus": null,// 一比一阶段的错误码。0为成功
        #     "Comparemsg": null,   // 一比一阶段的错误信息
        #     "Sim": null, // 比对相似度
        #     "Location": null, // 地理位置信息
        #     "Extra": "",          // DetectAuth结果传进来的Extra信息
        #     "Detail": {           // 活体一比一信息详情
        #       "LivenessData": [
        #             {
        #               ErrCode: null, // 活体比对验证错误码
        #               ErrMsg: null, // 活体比对验证错误描述
        #               ReqTime: null, // 活体验证时间戳
        #               IdCard: null, // 验证身份证号
        #               Name: null // 验证姓名
        #             }
        #       ]
        #     }
        #   },
        #   // 身份证正反面照片Base64
        #   "IdCardData": {
        #     "OcrFront": null,
        #     "OcrBack": null
        #   },
        #   // 视频最佳帧截图Base64
        #   "BestFrame": {
        #     "BestFrame": null
        #   },
        #   // 活体视频Base64
        #   "VideoData": {
        #     "LivenessVideo": null
        #   }
        # }
        # @type DetectInfo: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DetectInfo, :RequestId

        def initialize(detectinfo=nil, requestid=nil)
          @DetectInfo = detectinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @DetectInfo = params['DetectInfo']
          @RequestId = params['RequestId']
        end
      end

      # GetEidResult请求参数结构体
      class GetEidResultRequest < TencentCloud::Common::AbstractModel
        # @param EidToken: E证通流程的唯一标识，调用GetEidToken接口时生成。
        # @type EidToken: String
        # @param InfoType: 指定拉取的结果信息。
        # - 取值范围：
        #      0：全部。
        #     1：文本类。
        #     2：身份证信息。
        #     3：最佳截图信息。
        #     5：意愿核身朗读模式相关结果。
        #     6：意愿核身问答模式相关结果。
        # - 例如 13表示拉取文本类、最佳截图信息。
        # - 默认值：0
        # @type InfoType: String
        # @param BestFramesCount: 从活体视频中截取一定张数的最佳帧。
        # - 默认为0，最大为3，超出3的最多只给3张。
        # - InfoType需要包含3。
        # @type BestFramesCount: Integer
        # @param IsCutIdCardImage: 是否对身份证照片进行裁边。
        # - 默认为false。
        # - InfoType需要包含2。
        # @type IsCutIdCardImage: Boolean
        # @param IsNeedIdCardAvatar: 是否需要从身份证中抠出头像。
        # - 默认为false。
        # - InfoType需要包含2。
        # @type IsNeedIdCardAvatar: Boolean

        attr_accessor :EidToken, :InfoType, :BestFramesCount, :IsCutIdCardImage, :IsNeedIdCardAvatar

        def initialize(eidtoken=nil, infotype=nil, bestframescount=nil, iscutidcardimage=nil, isneedidcardavatar=nil)
          @EidToken = eidtoken
          @InfoType = infotype
          @BestFramesCount = bestframescount
          @IsCutIdCardImage = iscutidcardimage
          @IsNeedIdCardAvatar = isneedidcardavatar
        end

        def deserialize(params)
          @EidToken = params['EidToken']
          @InfoType = params['InfoType']
          @BestFramesCount = params['BestFramesCount']
          @IsCutIdCardImage = params['IsCutIdCardImage']
          @IsNeedIdCardAvatar = params['IsNeedIdCardAvatar']
        end
      end

      # GetEidResult返回参数结构体
      class GetEidResultResponse < TencentCloud::Common::AbstractModel
        # @param Text: 文本类信息。
        # - 基于对敏感信息的保护，验证使用的姓名和身份证号统一通过加密后从EidInfo参数中返回。
        # - 如需获取请在控制台申请返回身份信息，详见[E证通获取实名信息指引](https://cloud.tencent.com/document/product/1007/63370)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Faceid.v20180301.models.DetectInfoText`
        # @param IdCardData: 身份证照片信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdCardData: :class:`Tencentcloud::Faceid.v20180301.models.DetectInfoIdCardData`
        # @param BestFrame: 最佳帧信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BestFrame: :class:`Tencentcloud::Faceid.v20180301.models.DetectInfoBestFrame`
        # @param EidInfo: Eid信息。
        # - 包括商户下用户唯一标识以及加密后的姓名、身份证号信息。
        # - 解密方式详见[E证通获取实名信息指引](https://cloud.tencent.com/document/product/1007/63370)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EidInfo: :class:`Tencentcloud::Faceid.v20180301.models.EidInfo`
        # @param IntentionVerifyData: 意愿核身朗读模式相关信息。
        # - 若未使用意愿核身朗读功能，该字段返回值可以不处理。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntentionVerifyData: :class:`Tencentcloud::Faceid.v20180301.models.IntentionVerifyData`
        # @param IntentionQuestionResult: 意愿核身问答模式相关信息。
        # - 若未使用意愿核身问答模式功能，该字段返回值可以不处理。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntentionQuestionResult: :class:`Tencentcloud::Faceid.v20180301.models.IntentionQuestionResult`
        # @param IntentionActionResult: 意愿核身点头确认模式的结果信息。
        # - 若未使用该意愿核身功能，该字段返回值可以不处理。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntentionActionResult: :class:`Tencentcloud::Faceid.v20180301.models.IntentionActionResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Text, :IdCardData, :BestFrame, :EidInfo, :IntentionVerifyData, :IntentionQuestionResult, :IntentionActionResult, :RequestId

        def initialize(text=nil, idcarddata=nil, bestframe=nil, eidinfo=nil, intentionverifydata=nil, intentionquestionresult=nil, intentionactionresult=nil, requestid=nil)
          @Text = text
          @IdCardData = idcarddata
          @BestFrame = bestframe
          @EidInfo = eidinfo
          @IntentionVerifyData = intentionverifydata
          @IntentionQuestionResult = intentionquestionresult
          @IntentionActionResult = intentionactionresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = DetectInfoText.new
            @Text.deserialize(params['Text'])
          end
          unless params['IdCardData'].nil?
            @IdCardData = DetectInfoIdCardData.new
            @IdCardData.deserialize(params['IdCardData'])
          end
          unless params['BestFrame'].nil?
            @BestFrame = DetectInfoBestFrame.new
            @BestFrame.deserialize(params['BestFrame'])
          end
          unless params['EidInfo'].nil?
            @EidInfo = EidInfo.new
            @EidInfo.deserialize(params['EidInfo'])
          end
          unless params['IntentionVerifyData'].nil?
            @IntentionVerifyData = IntentionVerifyData.new
            @IntentionVerifyData.deserialize(params['IntentionVerifyData'])
          end
          unless params['IntentionQuestionResult'].nil?
            @IntentionQuestionResult = IntentionQuestionResult.new
            @IntentionQuestionResult.deserialize(params['IntentionQuestionResult'])
          end
          unless params['IntentionActionResult'].nil?
            @IntentionActionResult = IntentionActionResult.new
            @IntentionActionResult.deserialize(params['IntentionActionResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取token时的配置
      class GetEidTokenConfig < TencentCloud::Common::AbstractModel
        # @param InputType: 姓名身份证输入方式。
        # - 取值范围：
        # 1：传身份证正反面OCR。
        # 2：传身份证正面OCR。
        # 3：用户手动输入。
        # 4：客户后台传入。
        # - 默认值：1。
        # - 注意：使用OCR时仅支持用户修改结果中的姓名。
        # @type InputType: String
        # @param UseIntentionVerify: 是否使用意愿核身。

        # - 默认不使用。
        # - 注意：如开启使用，则计费标签按【意愿核身】计费标签计价；如不开启，则计费标签按【E证通】计费标签计价，价格详见：[价格说明](https://cloud.tencent.com/document/product/1007/56804)。
        # @type UseIntentionVerify: Boolean
        # @param IntentionMode: 意愿核身模式。
        # - 取值范围：
        # 1：语音朗读模式。
        # 2：语音问答模式。
        # 3：点头确认模式。
        # - 默认值为1。
        # @type IntentionMode: String
        # @param IntentionVerifyText: 意愿核身朗读模式使用的文案。
        # - 若未使用意愿核身朗读功能，该字段无需传入。
        # - 默认为空，最长可接受120的字符串长度。
        # @type IntentionVerifyText: String
        # @param IntentionQuestions: 意愿核身问答模式的配置列表。
        # - 当前仅支持一个问答。
        # @type IntentionQuestions: Array
        # @param IntentionActions: 意愿核身（点头确认模式）使用的文案。
        # - 若未使用意愿核身（点头确认模式），则该字段无需传入。
        # - 默认为空，最长可接受150的字符串长度。
        # @type IntentionActions: Array
        # @param IntentionRecognition: 意愿核身过程中识别用户的回答意图。
        # - 开启后除了IntentionQuestions的Answers列表中的标准回答会通过，近似意图的回答也会通过。
        # - 默认开启。
        # @type IntentionRecognition: Boolean
        # @param IsSupportHMTResidentPermitOCR: 是否支持港澳台居住证识别。
        # @type IsSupportHMTResidentPermitOCR: Boolean
        # @param MouthOpenRecognition: 用户语音回答过程中是否开启张嘴识别检测。
        # - 默认不开启。
        # - 仅在意愿核身问答模式中使用。
        # @type MouthOpenRecognition: Boolean
        # @param Speed: 意愿核身语音播报速度。
        # - 配置后问答模式和点头模式的语音播报环节都会生效。
        # - 默认值为0。
        # - 取值范围：
        # 0：智能语速（根据播报文案的长度自动调整语音播报速度）。
        # 1：固定1倍速。
        # 2：固定1.2倍速。
        # 3：固定1.5倍速。
        # @type Speed: Integer

        attr_accessor :InputType, :UseIntentionVerify, :IntentionMode, :IntentionVerifyText, :IntentionQuestions, :IntentionActions, :IntentionRecognition, :IsSupportHMTResidentPermitOCR, :MouthOpenRecognition, :Speed

        def initialize(inputtype=nil, useintentionverify=nil, intentionmode=nil, intentionverifytext=nil, intentionquestions=nil, intentionactions=nil, intentionrecognition=nil, issupporthmtresidentpermitocr=nil, mouthopenrecognition=nil, speed=nil)
          @InputType = inputtype
          @UseIntentionVerify = useintentionverify
          @IntentionMode = intentionmode
          @IntentionVerifyText = intentionverifytext
          @IntentionQuestions = intentionquestions
          @IntentionActions = intentionactions
          @IntentionRecognition = intentionrecognition
          @IsSupportHMTResidentPermitOCR = issupporthmtresidentpermitocr
          @MouthOpenRecognition = mouthopenrecognition
          @Speed = speed
        end

        def deserialize(params)
          @InputType = params['InputType']
          @UseIntentionVerify = params['UseIntentionVerify']
          @IntentionMode = params['IntentionMode']
          @IntentionVerifyText = params['IntentionVerifyText']
          unless params['IntentionQuestions'].nil?
            @IntentionQuestions = []
            params['IntentionQuestions'].each do |i|
              intentionquestion_tmp = IntentionQuestion.new
              intentionquestion_tmp.deserialize(i)
              @IntentionQuestions << intentionquestion_tmp
            end
          end
          unless params['IntentionActions'].nil?
            @IntentionActions = []
            params['IntentionActions'].each do |i|
              intentionactionconfig_tmp = IntentionActionConfig.new
              intentionactionconfig_tmp.deserialize(i)
              @IntentionActions << intentionactionconfig_tmp
            end
          end
          @IntentionRecognition = params['IntentionRecognition']
          @IsSupportHMTResidentPermitOCR = params['IsSupportHMTResidentPermitOCR']
          @MouthOpenRecognition = params['MouthOpenRecognition']
          @Speed = params['Speed']
        end
      end

      # GetEidToken请求参数结构体
      class GetEidTokenRequest < TencentCloud::Common::AbstractModel
        # @param MerchantId: EID商户id。
        # - 字段长度最长50位。
        # @type MerchantId: String
        # @param IdCard: 身份标识。
        # - 未使用OCR服务时，必须传入。
        # - 规则：a-z，A-Z，0-9组合。
        # - 最长长度32位。
        # @type IdCard: String
        # @param Name: 姓名。
        # - 未使用OCR服务时，必须传入。
        # - 最长长度32位。
        # - 中文请使用UTF-8编码。
        # @type Name: String
        # @param Extra: 透传字段，在获取验证结果时返回。
        # - 最长长度1024位。
        # @type Extra: String
        # @param Config: 小程序模式配置，包括如何传入姓名身份证的配置，以及是否使用意愿核身。
        # @type Config: :class:`Tencentcloud::Faceid.v20180301.models.GetEidTokenConfig`
        # @param RedirectUrl: 用户从Url中进入核身认证结束后重定向的回调链接地址。
        # - 最长长度1024位。
        # - EidToken会在该链接的query参数中。
        # @type RedirectUrl: String
        # @param Encryption: 敏感数据加密信息。
        # - 对传入信息（姓名、身份证号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :MerchantId, :IdCard, :Name, :Extra, :Config, :RedirectUrl, :Encryption

        def initialize(merchantid=nil, idcard=nil, name=nil, extra=nil, config=nil, redirecturl=nil, encryption=nil)
          @MerchantId = merchantid
          @IdCard = idcard
          @Name = name
          @Extra = extra
          @Config = config
          @RedirectUrl = redirecturl
          @Encryption = encryption
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @IdCard = params['IdCard']
          @Name = params['Name']
          @Extra = params['Extra']
          unless params['Config'].nil?
            @Config = GetEidTokenConfig.new
            @Config.deserialize(params['Config'])
          end
          @RedirectUrl = params['RedirectUrl']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
        end
      end

      # GetEidToken返回参数结构体
      class GetEidTokenResponse < TencentCloud::Common::AbstractModel
        # @param EidToken: 一次核身流程的标识。
        # - 有效时间为600秒。
        # - 完成核身后，可用该标识获取验证结果信息。
        # @type EidToken: String
        # @param Url: 发起核身流程的URL。
        # - 用于H5场景核身。
        # @type Url: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EidToken, :Url, :RequestId

        def initialize(eidtoken=nil, url=nil, requestid=nil)
          @EidToken = eidtoken
          @Url = url
          @RequestId = requestid
        end

        def deserialize(params)
          @EidToken = params['EidToken']
          @Url = params['Url']
          @RequestId = params['RequestId']
        end
      end

      # GetFaceIdResult请求参数结构体
      class GetFaceIdResultRequest < TencentCloud::Common::AbstractModel
        # @param FaceIdToken: SDK人脸核身流程的标识。
        # - 调用GetFaceIdToken接口时生成。
        # @type FaceIdToken: String
        # @param IsNeedVideo: 是否需要拉取视频。
        # - 默认false：不需要。
        # @type IsNeedVideo: Boolean
        # @param IsNeedBestFrame: 是否需要拉取截帧。
        # - 默认false：不需要。
        # @type IsNeedBestFrame: Boolean

        attr_accessor :FaceIdToken, :IsNeedVideo, :IsNeedBestFrame

        def initialize(faceidtoken=nil, isneedvideo=nil, isneedbestframe=nil)
          @FaceIdToken = faceidtoken
          @IsNeedVideo = isneedvideo
          @IsNeedBestFrame = isneedbestframe
        end

        def deserialize(params)
          @FaceIdToken = params['FaceIdToken']
          @IsNeedVideo = params['IsNeedVideo']
          @IsNeedBestFrame = params['IsNeedBestFrame']
        end
      end

      # GetFaceIdResult返回参数结构体
      class GetFaceIdResultResponse < TencentCloud::Common::AbstractModel
        # @param IdCard: 身份证。
        # @type IdCard: String
        # @param Name: 姓名。
        # @type Name: String
        # @param Result: 业务核验结果。
        # - 参考：https://cloud.tencent.com/document/product/1007/47912。
        # @type Result: String
        # @param Description: 业务核验描述。
        # @type Description: String
        # @param Similarity: 相似度。
        # - 取值：0-100。
        # - 数值越大相似度越高。
        # @type Similarity: Float
        # @param VideoBase64: 用户核验的视频base64。
        # - 如果选择了使用cos，返回完整cos地址，如https://bucket.cos.ap-guangzhou.myqcloud.com/objectKey。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoBase64: String
        # @param BestFrameBase64: 用户核验视频的截帧base64。
        # - 如果选择了使用cos，返回完整cos地址如https://bucket.cos.ap-guangzhou.myqcloud.com/objectKey。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BestFrameBase64: String
        # @param Extra: 获取token时透传的信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param DeviceInfoTag: plus版：描述当前请求所在设备的风险标签。
        # - 详情如下：
        # 01-设备疑似被Root/设备疑似越狱。
        # 02-设备疑似被注入。
        # 03-设备疑似为模拟器。
        # 04-设备疑似存在风险操作。
        # 05-摄像头疑似被劫持。
        # 06-疑似黑产设备。
        # null-无设备风险。
        # - 增强版：此字段不生效，默认为null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceInfoTag: String
        # @param RiskInfoTag: 行为风险标签。
        # - 仅错误码返回1007（设备疑似被劫持）时返回风险标签。
        # - 标签说明：
        # 02：攻击风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskInfoTag: String
        # @param LivenessInfoTag: plus版：描述当前请求活体阶段被拒绝的详细原因。
        # - 详情如下：
        # 01-用户全程闭眼。
        # 02-用户未完成指定动作。
        # 03-疑似翻拍攻击。
        # 04-疑似合成图片。
        # 05-疑似合成视频。
        # 06-疑似合成动作。
        # 07-疑似黑产模板。
        # 08-疑似存在水印。
        # 09-反光校验未通过。
        # 10-最佳帧校验未通过。
        # 11-人脸质量过差。
        # 12-人脸距离不匹配。
        # 13-疑似对抗样本攻击。
        # null-无。
        # - 增强版：此字段不生效，默认为null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LivenessInfoTag: String
        # @param DeviceInfoLevel: plus版：描述当前请求所在设备的风险等级，共4级。
        # - 详情如下：
        # 1 - 安全。
        # 2 - 低风险。
        # 3 - 中风险。
        # 4 - 高危。
        # null - 未获取到风险等级。
        # - 增强版：此字段不生效，默认为null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceInfoLevel: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IdCard, :Name, :Result, :Description, :Similarity, :VideoBase64, :BestFrameBase64, :Extra, :DeviceInfoTag, :RiskInfoTag, :LivenessInfoTag, :DeviceInfoLevel, :RequestId

        def initialize(idcard=nil, name=nil, result=nil, description=nil, similarity=nil, videobase64=nil, bestframebase64=nil, extra=nil, deviceinfotag=nil, riskinfotag=nil, livenessinfotag=nil, deviceinfolevel=nil, requestid=nil)
          @IdCard = idcard
          @Name = name
          @Result = result
          @Description = description
          @Similarity = similarity
          @VideoBase64 = videobase64
          @BestFrameBase64 = bestframebase64
          @Extra = extra
          @DeviceInfoTag = deviceinfotag
          @RiskInfoTag = riskinfotag
          @LivenessInfoTag = livenessinfotag
          @DeviceInfoLevel = deviceinfolevel
          @RequestId = requestid
        end

        def deserialize(params)
          @IdCard = params['IdCard']
          @Name = params['Name']
          @Result = params['Result']
          @Description = params['Description']
          @Similarity = params['Similarity']
          @VideoBase64 = params['VideoBase64']
          @BestFrameBase64 = params['BestFrameBase64']
          @Extra = params['Extra']
          @DeviceInfoTag = params['DeviceInfoTag']
          @RiskInfoTag = params['RiskInfoTag']
          @LivenessInfoTag = params['LivenessInfoTag']
          @DeviceInfoLevel = params['DeviceInfoLevel']
          @RequestId = params['RequestId']
        end
      end

      # GetFaceIdRiskInfo请求参数结构体
      class GetFaceIdRiskInfoRequest < TencentCloud::Common::AbstractModel
        # @param FaceIdToken: SDK人脸核身流程的标识，调用GetFaceidRiskInfoToken接口时生成。
        # @type FaceIdToken: String

        attr_accessor :FaceIdToken

        def initialize(faceidtoken=nil)
          @FaceIdToken = faceidtoken
        end

        def deserialize(params)
          @FaceIdToken = params['FaceIdToken']
        end
      end

      # GetFaceIdRiskInfo返回参数结构体
      class GetFaceIdRiskInfoResponse < TencentCloud::Common::AbstractModel
        # @param DeviceInfoTag: 描述当前请求所在设备的风险标签
        # - 详情如下：
        # 01-设备疑似被Root/设备疑似越狱。
        # 02-设备疑似被注入。
        # 03-设备疑似为模拟器。
        # 04-设备疑似存在风险操作。
        # 05-摄像头疑似被劫持。
        # 06-疑似黑产设备。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceInfoTag: String
        # @param DeviceInfoLevel: 描述当前请求所在设备的风险等级，共4级。
        # - 详情如下：
        #  1 - 低风险。
        #  2 - 中风险。
        #  3 - 高风险。
        #  4 - 攻击。
        # -1表示未获取到风险等级。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceInfoLevel: Integer
        # @param OpenId: 设备id标识。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenId: String
        # @param CameraInfoLevel: 描述当前请求所在设备的相机指纹风险等级，共4级。
        # - 详情如下：
        #  1 - 低风险。
        #  2 - 中风险。
        #  3 - 高风险。
        #  4 - 攻击。
        #  -1表示未获取到风险等级。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CameraInfoLevel: Integer
        # @param CameraInfoTag: 描述当前请求所在设备的相机指纹风险标签。

        # - 详情如下：
        #  01-设备疑似被Root/设备疑似越狱。
        #  02-设备疑似被注入。
        #  03-设备疑似为模拟器。
        #  04-设备疑似存在风险操作。
        #  05-摄像头疑似被劫持。
        #  06-疑似黑产设备。
        #  空表示没有相机指纹风险。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CameraInfoTag: String
        # @param Extra: 获取token时透传的信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceInfoTag, :DeviceInfoLevel, :OpenId, :CameraInfoLevel, :CameraInfoTag, :Extra, :RequestId

        def initialize(deviceinfotag=nil, deviceinfolevel=nil, openid=nil, camerainfolevel=nil, camerainfotag=nil, extra=nil, requestid=nil)
          @DeviceInfoTag = deviceinfotag
          @DeviceInfoLevel = deviceinfolevel
          @OpenId = openid
          @CameraInfoLevel = camerainfolevel
          @CameraInfoTag = camerainfotag
          @Extra = extra
          @RequestId = requestid
        end

        def deserialize(params)
          @DeviceInfoTag = params['DeviceInfoTag']
          @DeviceInfoLevel = params['DeviceInfoLevel']
          @OpenId = params['OpenId']
          @CameraInfoLevel = params['CameraInfoLevel']
          @CameraInfoTag = params['CameraInfoTag']
          @Extra = params['Extra']
          @RequestId = params['RequestId']
        end
      end

      # GetFaceIdToken请求参数结构体
      class GetFaceIdTokenRequest < TencentCloud::Common::AbstractModel
        # @param CompareLib: 比对库。
        # - 取值范围：
        # LOCAL：本地上传照片。
        # BUSINESS：商业库。
        # @type CompareLib: String
        # @param IdCard: 身份证。
        # - CompareLib为商业库时必传。
        # @type IdCard: String
        # @param Name: 姓名。
        # - CompareLib为商业库时必传。
        # @type Name: String
        # @param ImageBase64: 图片的Base64。
        # - CompareLib为上传照片比对时必传。
        # - Base64后图片最大8MB。
        # - 请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        # @type ImageBase64: String
        # @param Meta: SDK中生成的Meta字符串。
        # @type Meta: String
        # @param Extra: 透传参数。
        # - 1000长度字符串
        # @type Extra: String
        # @param UseCos: 是否使用cos桶。
        # - 默认为false。
        # - 设置该参数为true后，核身过程中的视频图片将会存储在人脸核身控制台授权cos的bucket中，拉取结果时会返回对应资源完整cos地址。
        # - 开通地址见https://console.cloud.tencent.com/faceid/cos
        # - 【注意】选择该参数为true后将不返回base64数据，请根据接入情况谨慎修改。
        # @type UseCos: Boolean
        # @param Encryption: 敏感数据加密信息。对传入信息（姓名、身份证号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`
        # @param RuleId: 用于细分客户使用场景。
        # - 申请开通服务后，可以在腾讯云慧眼人脸核身控制台（https://console.cloud.tencent.com/faceid） 自助接入里面创建，审核通过后即可调用。
        # - 如有疑问，请添加腾讯云人脸核身小助手进行咨询。
        # @type RuleId: String

        attr_accessor :CompareLib, :IdCard, :Name, :ImageBase64, :Meta, :Extra, :UseCos, :Encryption, :RuleId

        def initialize(comparelib=nil, idcard=nil, name=nil, imagebase64=nil, meta=nil, extra=nil, usecos=nil, encryption=nil, ruleid=nil)
          @CompareLib = comparelib
          @IdCard = idcard
          @Name = name
          @ImageBase64 = imagebase64
          @Meta = meta
          @Extra = extra
          @UseCos = usecos
          @Encryption = encryption
          @RuleId = ruleid
        end

        def deserialize(params)
          @CompareLib = params['CompareLib']
          @IdCard = params['IdCard']
          @Name = params['Name']
          @ImageBase64 = params['ImageBase64']
          @Meta = params['Meta']
          @Extra = params['Extra']
          @UseCos = params['UseCos']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
          @RuleId = params['RuleId']
        end
      end

      # GetFaceIdToken返回参数结构体
      class GetFaceIdTokenResponse < TencentCloud::Common::AbstractModel
        # @param FaceIdToken: token值。- 有效期 10分钟。- 只能完成1次核身。
        # @type FaceIdToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FaceIdToken, :RequestId

        def initialize(faceidtoken=nil, requestid=nil)
          @FaceIdToken = faceidtoken
          @RequestId = requestid
        end

        def deserialize(params)
          @FaceIdToken = params['FaceIdToken']
          @RequestId = params['RequestId']
        end
      end

      # GetFaceidRiskInfoToken请求参数结构体
      class GetFaceidRiskInfoTokenRequest < TencentCloud::Common::AbstractModel
        # @param Meta: SDK中生成的Meta字符串。
        # @type Meta: String
        # @param Extra: 透传参数 1000长度字符串。
        # @type Extra: String

        attr_accessor :Meta, :Extra

        def initialize(meta=nil, extra=nil)
          @Meta = meta
          @Extra = extra
        end

        def deserialize(params)
          @Meta = params['Meta']
          @Extra = params['Extra']
        end
      end

      # GetFaceidRiskInfoToken返回参数结构体
      class GetFaceidRiskInfoTokenResponse < TencentCloud::Common::AbstractModel
        # @param FaceIdToken: 有效期 10分钟。只能完成1次核身。
        # @type FaceIdToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FaceIdToken, :RequestId

        def initialize(faceidtoken=nil, requestid=nil)
          @FaceIdToken = faceidtoken
          @RequestId = requestid
        end

        def deserialize(params)
          @FaceIdToken = params['FaceIdToken']
          @RequestId = params['RequestId']
        end
      end

      # GetLiveCode请求参数结构体
      class GetLiveCodeRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetLiveCode返回参数结构体
      class GetLiveCodeResponse < TencentCloud::Common::AbstractModel
        # @param LiveCode: 数字验证码。
        # @type LiveCode: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LiveCode, :RequestId

        def initialize(livecode=nil, requestid=nil)
          @LiveCode = livecode
          @RequestId = requestid
        end

        def deserialize(params)
          @LiveCode = params['LiveCode']
          @RequestId = params['RequestId']
        end
      end

      # GetWeChatBillDetails请求参数结构体
      class GetWeChatBillDetailsRequest < TencentCloud::Common::AbstractModel
        # @param Date: 拉取的日期（YYYY-MM-DD）。最大可追溯到365天前。当天6点后才能拉取前一天的数据。
        # @type Date: String
        # @param Cursor: 游标。用于分页，取第一页时传0，取后续页面时，传入本接口响应中返回的NextCursor字段的值。
        # @type Cursor: Integer
        # @param RuleId: 需要拉取账单详情业务对应的RuleId。不传会返回所有RuleId数据。默认为空字符串。
        # @type RuleId: String

        attr_accessor :Date, :Cursor, :RuleId

        def initialize(date=nil, cursor=nil, ruleid=nil)
          @Date = date
          @Cursor = cursor
          @RuleId = ruleid
        end

        def deserialize(params)
          @Date = params['Date']
          @Cursor = params['Cursor']
          @RuleId = params['RuleId']
        end
      end

      # GetWeChatBillDetails返回参数结构体
      class GetWeChatBillDetailsResponse < TencentCloud::Common::AbstractModel
        # @param HasNextPage: 是否还有下一页。该字段为true时，需要将NextCursor的值作为入参Cursor继续调用本接口。
        # @type HasNextPage: Boolean
        # @param NextCursor: 下一页的游标。用于分页。
        # @type NextCursor: Integer
        # @param WeChatBillDetails: 数据
        # @type WeChatBillDetails: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HasNextPage, :NextCursor, :WeChatBillDetails, :RequestId

        def initialize(hasnextpage=nil, nextcursor=nil, wechatbilldetails=nil, requestid=nil)
          @HasNextPage = hasnextpage
          @NextCursor = nextcursor
          @WeChatBillDetails = wechatbilldetails
          @RequestId = requestid
        end

        def deserialize(params)
          @HasNextPage = params['HasNextPage']
          @NextCursor = params['NextCursor']
          unless params['WeChatBillDetails'].nil?
            @WeChatBillDetails = []
            params['WeChatBillDetails'].each do |i|
              wechatbilldetail_tmp = WeChatBillDetail.new
              wechatbilldetail_tmp.deserialize(i)
              @WeChatBillDetails << wechatbilldetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # IdCardOCRVerification请求参数结构体
      class IdCardOCRVerificationRequest < TencentCloud::Common::AbstractModel
        # @param IdCard: 身份证号。
        # - 姓名和身份证号、ImageBase64、ImageUrl三者必须提供其中之一。
        # - 若都提供了，则按照姓名和身份证号>ImageBase64>ImageUrl的优先级使用参数。
        # @type IdCard: String
        # @param Name: 姓名。
        # @type Name: String
        # @param ImageBase64: 身份证人像面的 Base64 值。
        # - 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # - 支持的图片大小：所下载图片经Base64编码后不超过 3M。请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        # @type ImageBase64: String
        # @param ImageUrl: 身份证人像面的 Url 地址。
        # - 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # - 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # - 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # - 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param Encryption: 敏感数据加密信息。
        # - 对传入信息（姓名、身份证号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :IdCard, :Name, :ImageBase64, :ImageUrl, :Encryption

        def initialize(idcard=nil, name=nil, imagebase64=nil, imageurl=nil, encryption=nil)
          @IdCard = idcard
          @Name = name
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @Encryption = encryption
        end

        def deserialize(params)
          @IdCard = params['IdCard']
          @Name = params['Name']
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
        end
      end

      # IdCardOCRVerification返回参数结构体
      class IdCardOCRVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码，收费情况如下。
        # - 收费结果码：
        # 0: 姓名和身份证号一致。
        # -1: 姓名和身份证号不一致。
        # - 不收费结果码：
        # -2: 非法身份证号（长度、校验位等不正确）。
        # -3: 非法姓名（长度、格式等不正确）。
        # -4: 证件库服务异常。
        # -5: 证件库中无此身份证记录。
        # -6: 权威比对系统升级中，请稍后再试。
        # -7: 认证次数超过当日限制。
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param Name: 用于验证的姓名。
        # @type Name: String
        # @param IdCard: 用于验证的身份证号。
        # @type IdCard: String
        # @param Sex: OCR得到的性别。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sex: String
        # @param Nation: OCR得到的民族。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nation: String
        # @param Birth: OCR得到的生日。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Birth: String
        # @param Address: OCR得到的地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Description, :Name, :IdCard, :Sex, :Nation, :Birth, :Address, :RequestId

        def initialize(result=nil, description=nil, name=nil, idcard=nil, sex=nil, nation=nil, birth=nil, address=nil, requestid=nil)
          @Result = result
          @Description = description
          @Name = name
          @IdCard = idcard
          @Sex = sex
          @Nation = nation
          @Birth = birth
          @Address = address
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Description = params['Description']
          @Name = params['Name']
          @IdCard = params['IdCard']
          @Sex = params['Sex']
          @Nation = params['Nation']
          @Birth = params['Birth']
          @Address = params['Address']
          @RequestId = params['RequestId']
        end
      end

      # IdCardVerification请求参数结构体
      class IdCardVerificationRequest < TencentCloud::Common::AbstractModel
        # @param IdCard: 身份证号。
        # @type IdCard: String
        # @param Name: 姓名。
        # @type Name: String
        # @param Encryption: 敏感数据加密信息。
        # - 对传入信息（姓名、身份证号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :IdCard, :Name, :Encryption

        def initialize(idcard=nil, name=nil, encryption=nil)
          @IdCard = idcard
          @Name = name
          @Encryption = encryption
        end

        def deserialize(params)
          @IdCard = params['IdCard']
          @Name = params['Name']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
        end
      end

      # IdCardVerification返回参数结构体
      class IdCardVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码，收费情况如下。
        # - 收费结果码：
        # 0: 姓名和身份证号一致
        # -1: 姓名和身份证号不一致
        # 不收费结果码：
        # -2: 非法身份证号（长度、校验位等不正确）
        # -3: 非法姓名（长度、格式等不正确）
        # -4: 证件库服务异常
        # -5: 证件库中无此身份证记录
        # -6: 权威比对系统升级中，请稍后再试
        # -7: 认证次数超过当日限制
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ImageRecognition请求参数结构体
      class ImageRecognitionRequest < TencentCloud::Common::AbstractModel
        # @param IdCard: 身份证号
        # @type IdCard: String
        # @param Name: 姓名。中文请使用UTF-8编码。
        # @type Name: String
        # @param ImageBase64: 用于人脸比对的照片，图片的Base64值；
        # Base64编码后的图片数据大小不超过3M，仅支持jpg、png格式。
        # 请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        # @type ImageBase64: String
        # @param Optional: 本接口不需要传递此参数。
        # @type Optional: String
        # @param Encryption: 敏感数据加密信息。对传入信息（姓名、身份证号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :IdCard, :Name, :ImageBase64, :Optional, :Encryption

        def initialize(idcard=nil, name=nil, imagebase64=nil, optional=nil, encryption=nil)
          @IdCard = idcard
          @Name = name
          @ImageBase64 = imagebase64
          @Optional = optional
          @Encryption = encryption
        end

        def deserialize(params)
          @IdCard = params['IdCard']
          @Name = params['Name']
          @ImageBase64 = params['ImageBase64']
          @Optional = params['Optional']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
        end
      end

      # ImageRecognition返回参数结构体
      class ImageRecognitionResponse < TencentCloud::Common::AbstractModel
        # @param Sim: 相似度，取值范围 [0.00, 100.00]。推荐相似度大于等于70时可判断为同一人，可根据具体场景自行调整阈值（阈值70的误通过率为千分之一，阈值80的误通过率是万分之一）
        # @type Sim: Float
        # @param Result: 业务错误码，成功情况返回Success, 错误情况请参考下方错误码 列表中FailedOperation部分
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Sim, :Result, :Description, :RequestId

        def initialize(sim=nil, result=nil, description=nil, requestid=nil)
          @Sim = sim
          @Result = result
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @Sim = params['Sim']
          @Result = params['Result']
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # ImageRecognitionV2请求参数结构体
      class ImageRecognitionV2Request < TencentCloud::Common::AbstractModel
        # @param IdCard: 身份证号。
        # @type IdCard: String
        # @param Name: 姓名。
        # - 中文请使用UTF-8编码。
        # @type Name: String
        # @param ImageBase64: 用于人脸比对的照片，图片的Base64值；
        # Base64编码后的图片数据大小不超过3M，仅支持jpg、png格式。
        # 请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        # @type ImageBase64: String
        # @param Optional: 本接口不需要传递此参数。
        # @type Optional: String
        # @param Encryption: 敏感数据加密信息。
        # - 对传入信息（姓名、身份证号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`
        # @param Extra: 自定义描述字段。
        # - 用于描述调用业务信息，出参中将返回此描述字段。
        # - 每个自定义描述字段支持[1,10]个字符。
        # @type Extra: String

        attr_accessor :IdCard, :Name, :ImageBase64, :Optional, :Encryption, :Extra

        def initialize(idcard=nil, name=nil, imagebase64=nil, optional=nil, encryption=nil, extra=nil)
          @IdCard = idcard
          @Name = name
          @ImageBase64 = imagebase64
          @Optional = optional
          @Encryption = encryption
          @Extra = extra
        end

        def deserialize(params)
          @IdCard = params['IdCard']
          @Name = params['Name']
          @ImageBase64 = params['ImageBase64']
          @Optional = params['Optional']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
          @Extra = params['Extra']
        end
      end

      # ImageRecognitionV2返回参数结构体
      class ImageRecognitionV2Response < TencentCloud::Common::AbstractModel
        # @param Sim: 相似度。
        # - 取值范围 [0.00, 100.00]。
        # - 推荐相似度大于等于70时可判断为同一人，可根据具体场景自行调整阈值（阈值70的误通过率为千分之一，阈值80的误通过率是万分之一）
        # @type Sim: Float
        # @param Result: 业务错误码。
        # - 成功情况返回Success。
        # - 错误情况请参考下方错误码 列表中FailedOperation部分
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param Extra: 调用接口中自定义的描述字段。
        # @type Extra: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Sim, :Result, :Description, :Extra, :RequestId

        def initialize(sim=nil, result=nil, description=nil, extra=nil, requestid=nil)
          @Sim = sim
          @Result = result
          @Description = description
          @Extra = extra
          @RequestId = requestid
        end

        def deserialize(params)
          @Sim = params['Sim']
          @Result = params['Result']
          @Description = params['Description']
          @Extra = params['Extra']
          @RequestId = params['RequestId']
        end
      end

      # 意愿核身（点头确认模式）配置
      class IntentionActionConfig < TencentCloud::Common::AbstractModel
        # @param Text: 点头确认模式下，系统语音播报使用的问题文本，问题最大长度为150个字符。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 意愿核身点头确认模式结果
      class IntentionActionResult < TencentCloud::Common::AbstractModel
        # @param FinalResultDetailCode: 意愿核身错误码：
        # 0: "成功"
        # -1: "参数错误"
        # -2: "系统异常"
        # -101: "请保持人脸在框内"
        # -102: "检测到多张人脸"
        # -103: "人脸检测失败"
        # -104: "人脸检测不完整"
        # -105: "请勿遮挡眼睛"
        # -106: "请勿遮挡嘴巴"
        # -107: "请勿遮挡鼻子"
        # -201: "人脸比对相似度低"
        # -202: "人脸比对失败"
        # -301: "意愿核验不通过"
        # -800: "前端不兼容错误"
        # -801: "用户未授权摄像头和麦克风权限"
        # -802: "核验流程异常中断，请勿切屏或进行其他操作"
        # -803: "用户主动关闭链接/异常断开链接"
        # -804: "用户当前网络不稳定，请重试"
        # -998: "系统数据异常"
        # -999: "系统未知错误，请联系人工核实"
        # 若在人脸核身过程失败、未进入意愿确认过程，则该参数返回为空，请参考人脸核身错误码结果（DetectInfoText.ErrCode)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinalResultDetailCode: Integer
        # @param FinalResultMessage: 意愿核身错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinalResultMessage: String
        # @param Details: 意愿核身结果详细数据，与每段点头确认过程一一对应
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Details: Array

        attr_accessor :FinalResultDetailCode, :FinalResultMessage, :Details

        def initialize(finalresultdetailcode=nil, finalresultmessage=nil, details=nil)
          @FinalResultDetailCode = finalresultdetailcode
          @FinalResultMessage = finalresultmessage
          @Details = details
        end

        def deserialize(params)
          @FinalResultDetailCode = params['FinalResultDetailCode']
          @FinalResultMessage = params['FinalResultMessage']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              intentionactionresultdetail_tmp = IntentionActionResultDetail.new
              intentionactionresultdetail_tmp.deserialize(i)
              @Details << intentionactionresultdetail_tmp
            end
          end
        end
      end

      # 意愿核身点头确认模式结果详细数据
      class IntentionActionResultDetail < TencentCloud::Common::AbstractModel
        # @param Video: 视频base64编码（其中包含全程提示文本和点头音频，mp4格式）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Video: String
        # @param ScreenShot: 屏幕截图base64编码列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScreenShot: Array

        attr_accessor :Video, :ScreenShot

        def initialize(video=nil, screenshot=nil)
          @Video = video
          @ScreenShot = screenshot
        end

        def deserialize(params)
          @Video = params['Video']
          @ScreenShot = params['ScreenShot']
        end
      end

      # 意愿核身过程中播报的问题文本、用户回答的标准文本。
      class IntentionQuestion < TencentCloud::Common::AbstractModel
        # @param Question: 当选择语音问答模式时，系统自动播报的问题文本。
        # - 最大长度为150个字符。
        # @type Question: String
        # @param Answers: 当选择语音问答模式时，用于判断用户回答是否通过的标准答案列表。
        # - 传入后可自动判断用户回答文本是否在标准文本列表中。
        # - 列表长度最大为50，单个答案长度限制10个字符。
        # @type Answers: Array

        attr_accessor :Question, :Answers

        def initialize(question=nil, answers=nil)
          @Question = question
          @Answers = answers
        end

        def deserialize(params)
          @Question = params['Question']
          @Answers = params['Answers']
        end
      end

      # 意愿核身问答模式结果。
      class IntentionQuestionResult < TencentCloud::Common::AbstractModel
        # @param FinalResultDetailCode: 意愿核身错误码。
        # - 取值范围：
        #     0: "成功"
        #     -1: "参数错误"
        #     -2: "系统异常"
        #     -101: "请保持人脸在框内"
        #     -102: "检测到多张人脸"
        #     -103: "人脸检测失败"
        #     -104: "人脸检测不完整"
        #     -105: "请勿遮挡眼睛"
        #     -106: "请勿遮挡嘴巴"
        #     -107: "请勿遮挡鼻子"
        #     -201: "人脸比对相似度低"
        #     -202: "人脸比对失败"
        #     -301: "意愿核验不通过"
        #     -302: "用户回答阶段未检测到张嘴动作"
        #     -800: "前端不兼容错误"
        #     -801: "用户未授权摄像头和麦克风权限"
        #     -802: "核验流程异常中断，请勿切屏或进行其他操作"
        #     -803: "用户主动关闭链接/异常断开链接"
        #     -804: "用户当前网络不稳定，请重试"
        #     -998: "系统数据异常"
        #     -999: "系统未知错误，请联系人工核实"
        # - 若在人脸核身过程失败、未进入意愿确认过程，则该参数返回为空，请参考人脸核身错误码结果（DetectInfoText.ErrCode)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinalResultDetailCode: Integer
        # @param FinalResultMessage: 意愿核身错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinalResultMessage: String
        # @param Video: 视频base64。
        # - 其中包含全程问题和回答音频，mp4格式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Video: String
        # @param ScreenShot: 屏幕截图base64列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScreenShot: Array
        # @param ResultCode: 和答案匹配结果列表。
        # - 取值范围（0：成功；-1：不匹配）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultCode: Array
        # @param AsrResult: 回答问题语音识别结果列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrResult: Array
        # @param Audios: 答案录音音频。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Audios: Array
        # @param FinalResultCode: 意愿核身最终结果。
        # - 取值范围：
        # 0：认证通过。
        # -1：认证未通过。
        # -2：浏览器内核不兼容，无法进行意愿校验。
        # - 建议使用“FinalResultDetailCode”参数获取详细的错误码信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinalResultCode: String

        attr_accessor :FinalResultDetailCode, :FinalResultMessage, :Video, :ScreenShot, :ResultCode, :AsrResult, :Audios, :FinalResultCode

        def initialize(finalresultdetailcode=nil, finalresultmessage=nil, video=nil, screenshot=nil, resultcode=nil, asrresult=nil, audios=nil, finalresultcode=nil)
          @FinalResultDetailCode = finalresultdetailcode
          @FinalResultMessage = finalresultmessage
          @Video = video
          @ScreenShot = screenshot
          @ResultCode = resultcode
          @AsrResult = asrresult
          @Audios = audios
          @FinalResultCode = finalresultcode
        end

        def deserialize(params)
          @FinalResultDetailCode = params['FinalResultDetailCode']
          @FinalResultMessage = params['FinalResultMessage']
          @Video = params['Video']
          @ScreenShot = params['ScreenShot']
          @ResultCode = params['ResultCode']
          @AsrResult = params['AsrResult']
          @Audios = params['Audios']
          @FinalResultCode = params['FinalResultCode']
        end
      end

      # 意愿核身相关结果。
      class IntentionVerifyData < TencentCloud::Common::AbstractModel
        # @param IntentionVerifyVideo: 意愿确认环节中录制的视频（base64）。
        # - 若不存在则为空字符串。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntentionVerifyVideo: String
        # @param AsrResult: 意愿确认环节中用户语音转文字的识别结果。
        # - 若不存在则为空字符串。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrResult: String
        # @param ErrorCode: 意愿确认环节的结果码。
        # - 当该结果码为0时，语音朗读的视频与语音识别结果才会返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCode: Integer
        # @param ErrorMessage: 意愿确认环节的结果信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param IntentionVerifyBestFrame: 意愿确认环节中录制视频的最佳帧（base64）。
        # - 若不存在则为空字符串。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntentionVerifyBestFrame: String
        # @param AsrResultSimilarity: 本次流程用户语音与传入文本比对的相似度分值，取值范围 [0.00, 100.00]。只有配置了相似度阈值后才进行语音校验并返回相似度分值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrResultSimilarity: String

        attr_accessor :IntentionVerifyVideo, :AsrResult, :ErrorCode, :ErrorMessage, :IntentionVerifyBestFrame, :AsrResultSimilarity
        extend Gem::Deprecate
        deprecate :AsrResultSimilarity, :none, 2024, 12
        deprecate :AsrResultSimilarity=, :none, 2024, 12

        def initialize(intentionverifyvideo=nil, asrresult=nil, errorcode=nil, errormessage=nil, intentionverifybestframe=nil, asrresultsimilarity=nil)
          @IntentionVerifyVideo = intentionverifyvideo
          @AsrResult = asrresult
          @ErrorCode = errorcode
          @ErrorMessage = errormessage
          @IntentionVerifyBestFrame = intentionverifybestframe
          @AsrResultSimilarity = asrresultsimilarity
        end

        def deserialize(params)
          @IntentionVerifyVideo = params['IntentionVerifyVideo']
          @AsrResult = params['AsrResult']
          @ErrorCode = params['ErrorCode']
          @ErrorMessage = params['ErrorMessage']
          @IntentionVerifyBestFrame = params['IntentionVerifyBestFrame']
          @AsrResultSimilarity = params['AsrResultSimilarity']
        end
      end

      # LivenessCompare请求参数结构体
      class LivenessCompareRequest < TencentCloud::Common::AbstractModel
        # @param LivenessType: 活体检测类型。
        # - 取值：LIP/ACTION/SILENT。
        # - LIP为数字模式，ACTION为动作模式，SILENT为静默模式，三种模式选择一种传入。
        # @type LivenessType: String
        # @param ImageBase64: 用于人脸比对的照片的Base64值。
        # - Base64编码后的图片数据大小不超过3M，仅支持jpg、png格式。
        # - 请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        # - 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageBase64。
        # @type ImageBase64: String
        # @param ImageUrl: 用于人脸比对照片的URL地址。
        # - 图片下载后经Base64编码后的数据大小不超过3M，仅支持jpg、png格式。
        # - 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageBase64。
        # - 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # - 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param ValidateData: 验证数据。
        # - 数字模式传参：传数字验证码，验证码需先调用<a href="https://cloud.tencent.com/document/product/1007/31821">获取数字验证码接口</a>得到；
        # - 动作模式传参：传动作顺序，动作顺序需先调用<a href="https://cloud.tencent.com/document/product/1007/31822">获取动作顺序接口</a>得到；
        # - 静默模式传参：空。
        # @type ValidateData: String
        # @param Optional: 额外配置，传入JSON字符串。

        # - 格式如下：
        # {
        # "BestFrameNum": 2  //需要返回多张最佳截图，取值范围2-10
        # }
        # @type Optional: String
        # @param VideoBase64: 用于活体检测的视频，视频的Base64值。
        # - Base64编码后的大小不超过8M，支持mp4、avi、flv格式。
        # - 请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        # - 视频的 VideoUrl、VideoBase64 必须提供一个，如果都提供，只使用 VideoBase64。
        # @type VideoBase64: String
        # @param VideoUrl: 用于活体检测的视频Url 地址。
        # - 视频下载后经Base64编码后不超过 8M，视频下载耗时不超过4S，支持mp4、avi、flv格式。
        # - 视频的 VideoUrl、VideoBase64 必须提供一个，如果都提供，只使用 VideoBase64。
        # - 建议视频存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议视频存储于腾讯云。
        # - 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type VideoUrl: String

        attr_accessor :LivenessType, :ImageBase64, :ImageUrl, :ValidateData, :Optional, :VideoBase64, :VideoUrl

        def initialize(livenesstype=nil, imagebase64=nil, imageurl=nil, validatedata=nil, optional=nil, videobase64=nil, videourl=nil)
          @LivenessType = livenesstype
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @ValidateData = validatedata
          @Optional = optional
          @VideoBase64 = videobase64
          @VideoUrl = videourl
        end

        def deserialize(params)
          @LivenessType = params['LivenessType']
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @ValidateData = params['ValidateData']
          @Optional = params['Optional']
          @VideoBase64 = params['VideoBase64']
          @VideoUrl = params['VideoUrl']
        end
      end

      # LivenessCompare返回参数结构体
      class LivenessCompareResponse < TencentCloud::Common::AbstractModel
        # @param BestFrameBase64: 验证通过后的视频最佳截图照片。
        # - 照片为BASE64编码后的值，jpg格式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BestFrameBase64: String
        # @param Sim: 相似度。
        # - 取值范围 [0.00, 100.00]。
        # - 推荐相似度大于等于70时可判断为同一人，可根据具体场景自行调整阈值（阈值70的误通过率为千分之一，阈值80的误通过率是万分之一）。
        # @type Sim: Float
        # @param Result: 业务错误码。
        # - 成功情况返回Success。
        # - 错误情况请参考下方错误码，列表中FailedOperation部分。
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param BestFrameList: 最佳截图列表。
        # - 仅在配置了返回多张最佳截图时返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BestFrameList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BestFrameBase64, :Sim, :Result, :Description, :BestFrameList, :RequestId

        def initialize(bestframebase64=nil, sim=nil, result=nil, description=nil, bestframelist=nil, requestid=nil)
          @BestFrameBase64 = bestframebase64
          @Sim = sim
          @Result = result
          @Description = description
          @BestFrameList = bestframelist
          @RequestId = requestid
        end

        def deserialize(params)
          @BestFrameBase64 = params['BestFrameBase64']
          @Sim = params['Sim']
          @Result = params['Result']
          @Description = params['Description']
          @BestFrameList = params['BestFrameList']
          @RequestId = params['RequestId']
        end
      end

      # LivenessRecognition请求参数结构体
      class LivenessRecognitionRequest < TencentCloud::Common::AbstractModel
        # @param IdCard: 身份证号。
        # @type IdCard: String
        # @param Name: 姓名。
        # - 中文请使用UTF-8编码。
        # @type Name: String
        # @param LivenessType: 活体检测类型。
        # - 取值：LIP/ACTION/SILENT。
        # - LIP为数字模式，ACTION为动作模式，SILENT为静默模式，三种模式选择一种传入。
        # @type LivenessType: String
        # @param VideoBase64: 用于活体检测的视频，视频的BASE64值；
        # BASE64编码后的大小不超过8M，支持mp4、avi、flv格式。
        # @type VideoBase64: String
        # @param VideoUrl: 用于活体检测的视频Url 地址。
        # - 视频下载后经Base64编码不超过 8M，视频下载耗时不超过4S，支持mp4、avi、flv格式。
        # - 视频的 VideoUrl、VideoBase64 必须提供一个，如果都提供，只使用 VideoBase64。
        # - 建议视频存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议视频存储于腾讯云。
        # - 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type VideoUrl: String
        # @param ValidateData: 验证数据。
        # - 数字模式传参：传数字验证码，验证码需先调用<a href="https://cloud.tencent.com/document/product/1007/31821">获取数字验证码接口</a>得到；
        # - 动作模式传参：传动作顺序，动作顺序需先调用<a href="https://cloud.tencent.com/document/product/1007/31822">获取动作顺序接口</a>得到；
        # - 静默模式传参：空。
        # @type ValidateData: String
        # @param Optional: 额外配置，传入JSON字符串。
        # - 格式如下：
        # {
        # "BestFrameNum": 2  //需要返回多张最佳截图，取值范围2-10
        # }
        # @type Optional: String
        # @param Encryption: 敏感数据加密信息。
        # - 对传入信息（姓名、身份证号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :IdCard, :Name, :LivenessType, :VideoBase64, :VideoUrl, :ValidateData, :Optional, :Encryption

        def initialize(idcard=nil, name=nil, livenesstype=nil, videobase64=nil, videourl=nil, validatedata=nil, optional=nil, encryption=nil)
          @IdCard = idcard
          @Name = name
          @LivenessType = livenesstype
          @VideoBase64 = videobase64
          @VideoUrl = videourl
          @ValidateData = validatedata
          @Optional = optional
          @Encryption = encryption
        end

        def deserialize(params)
          @IdCard = params['IdCard']
          @Name = params['Name']
          @LivenessType = params['LivenessType']
          @VideoBase64 = params['VideoBase64']
          @VideoUrl = params['VideoUrl']
          @ValidateData = params['ValidateData']
          @Optional = params['Optional']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
        end
      end

      # LivenessRecognition返回参数结构体
      class LivenessRecognitionResponse < TencentCloud::Common::AbstractModel
        # @param BestFrameBase64: 验证通过后的视频最佳截图照片。
        # - 照片为BASE64编码后的值，jpg格式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BestFrameBase64: String
        # @param Sim: 相似度。
        # - 取值范围 [0.00, 100.00]。
        # - 推荐相似度大于等于70时可判断为同一人，可根据具体场景自行调整阈值（阈值70的误通过率为千分之一，阈值80的误通过率是万分之一）
        # @type Sim: Float
        # @param Result: 业务错误码。
        # - 成功情况返回Success。
        # - 错误情况请参考下方错误码 列表中FailedOperation部分
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param BestFrameList: 最佳截图列表，仅在配置了返回多张最佳截图时返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BestFrameList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BestFrameBase64, :Sim, :Result, :Description, :BestFrameList, :RequestId

        def initialize(bestframebase64=nil, sim=nil, result=nil, description=nil, bestframelist=nil, requestid=nil)
          @BestFrameBase64 = bestframebase64
          @Sim = sim
          @Result = result
          @Description = description
          @BestFrameList = bestframelist
          @RequestId = requestid
        end

        def deserialize(params)
          @BestFrameBase64 = params['BestFrameBase64']
          @Sim = params['Sim']
          @Result = params['Result']
          @Description = params['Description']
          @BestFrameList = params['BestFrameList']
          @RequestId = params['RequestId']
        end
      end

      # Liveness请求参数结构体
      class LivenessRequest < TencentCloud::Common::AbstractModel
        # @param VideoBase64: 用于活体检测的视频，视频的BASE64值；
        # BASE64编码后的大小不超过8M，支持mp4、avi、flv格式。
        # @type VideoBase64: String
        # @param LivenessType: 活体检测类型，取值：LIP/ACTION/SILENT。
        # LIP为数字模式，ACTION为动作模式，SILENT为静默模式，三种模式选择一种传入。
        # @type LivenessType: String
        # @param ValidateData: 数字模式传参：数字验证码(1234)，需先调用接口获取数字验证码；
        # 动作模式传参：传动作顺序(2,1 or 1,2)，需先调用接口获取动作顺序；
        # 静默模式传参：不需要传递此参数。
        # @type ValidateData: String
        # @param Optional: 额外配置，传入JSON字符串。
        # {
        # "BestFrameNum": 2  //需要返回多张最佳截图，取值范围1-10
        # }
        # @type Optional: String

        attr_accessor :VideoBase64, :LivenessType, :ValidateData, :Optional

        def initialize(videobase64=nil, livenesstype=nil, validatedata=nil, optional=nil)
          @VideoBase64 = videobase64
          @LivenessType = livenesstype
          @ValidateData = validatedata
          @Optional = optional
        end

        def deserialize(params)
          @VideoBase64 = params['VideoBase64']
          @LivenessType = params['LivenessType']
          @ValidateData = params['ValidateData']
          @Optional = params['Optional']
        end
      end

      # Liveness返回参数结构体
      class LivenessResponse < TencentCloud::Common::AbstractModel
        # @param BestFrameBase64: 验证通过后的视频最佳截图照片，照片为BASE64编码后的值，jpg格式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BestFrameBase64: String
        # @param Result: 业务错误码，成功情况返回Success, 错误情况请参考下方错误码 列表中FailedOperation部分
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param BestFrameList: 最佳最佳截图列表，仅在配置了返回多张最佳截图时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BestFrameList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BestFrameBase64, :Result, :Description, :BestFrameList, :RequestId

        def initialize(bestframebase64=nil, result=nil, description=nil, bestframelist=nil, requestid=nil)
          @BestFrameBase64 = bestframebase64
          @Result = result
          @Description = description
          @BestFrameList = bestframelist
          @RequestId = requestid
        end

        def deserialize(params)
          @BestFrameBase64 = params['BestFrameBase64']
          @Result = params['Result']
          @Description = params['Description']
          @BestFrameList = params['BestFrameList']
          @RequestId = params['RequestId']
        end
      end

      # MinorsVerification请求参数结构体
      class MinorsVerificationRequest < TencentCloud::Common::AbstractModel
        # @param Type: 参与校验的参数类型。
        # 0：使用手机号进行校验；
        # 1：使用姓名与身份证号进行校验。
        # @type Type: String
        # @param Mobile: 手机号，11位数字，
        # 特别提示：
        # 手机号验证只限制在腾讯健康守护可信模型覆盖的数据范围内，与手机号本身在运营商是否实名无关联，不在范围会提示“手机号未实名”，建议客户与传入姓名和身份证号信息组合使用。
        # @type Mobile: String
        # @param IdCard: 身份证号码。
        # @type IdCard: String
        # @param Name: 姓名。
        # @type Name: String
        # @param Encryption: 敏感数据加密信息。对传入信息（姓名、身份证号、手机号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :Type, :Mobile, :IdCard, :Name, :Encryption

        def initialize(type=nil, mobile=nil, idcard=nil, name=nil, encryption=nil)
          @Type = type
          @Mobile = mobile
          @IdCard = idcard
          @Name = name
          @Encryption = encryption
        end

        def deserialize(params)
          @Type = params['Type']
          @Mobile = params['Mobile']
          @IdCard = params['IdCard']
          @Name = params['Name']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
        end
      end

      # MinorsVerification返回参数结构体
      class MinorsVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 结果码，收费情况如下。
        # 收费结果码：
        # 0: 成年
        # -1: 未成年
        # -3: 姓名和身份证号不一致

        # 不收费结果码：
        # -2: 未查询到手机号信息
        # -4: 非法身份证号（长度、校验位等不正确）
        # -5: 非法姓名（长度、格式等不正确）
        # -6: 权威数据源服务异常
        # -7: 未查询到身份信息
        # -8: 权威数据源升级中，请稍后再试
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param AgeRange: 该字段的值为年龄区间。格式为[a,b)，
        # [0,8)表示年龄小于8周岁区间，不包括8岁；
        # [8,16)表示年龄8-16周岁区间，不包括16岁；
        # [16,18)表示年龄16-18周岁区间，不包括18岁；
        # [18,+)表示年龄大于18周岁。
        # @type AgeRange: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Description, :AgeRange, :RequestId

        def initialize(result=nil, description=nil, agerange=nil, requestid=nil)
          @Result = result
          @Description = description
          @AgeRange = agerange
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Description = params['Description']
          @AgeRange = params['AgeRange']
          @RequestId = params['RequestId']
        end
      end

      # MobileNetworkTimeVerification请求参数结构体
      class MobileNetworkTimeVerificationRequest < TencentCloud::Common::AbstractModel
        # @param Mobile: 手机号码。
        # @type Mobile: String
        # @param Encryption: 敏感数据加密信息。
        # - 对传入信息（手机号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :Mobile, :Encryption

        def initialize(mobile=nil, encryption=nil)
          @Mobile = mobile
          @Encryption = encryption
        end

        def deserialize(params)
          @Mobile = params['Mobile']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
        end
      end

      # MobileNetworkTimeVerification返回参数结构体
      class MobileNetworkTimeVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码，收费情况如下。
        # - 收费结果码：
        # 0: 成功。
        # -2: 手机号不存在。
        # -3: 手机号存在，但无法查询到在网时长。

        # - 不收费结果码：
        # -1: 手机号格式不正确。
        # -4: 验证中心服务繁忙。
        # -5：认证次数超过当日限制，请次日重试。
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param Range: 在网时长区间。
        # - 格式为(a,b]，表示在网时长在a个月以上，b个月以下。
        # - 若b为+时表示没有上限。
        # @type Range: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Description, :Range, :RequestId

        def initialize(result=nil, description=nil, range=nil, requestid=nil)
          @Result = result
          @Description = description
          @Range = range
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Description = params['Description']
          @Range = params['Range']
          @RequestId = params['RequestId']
        end
      end

      # MobileStatus请求参数结构体
      class MobileStatusRequest < TencentCloud::Common::AbstractModel
        # @param Mobile: 手机号码。
        # @type Mobile: String
        # @param Encryption: 敏感数据加密信息。
        # - 对传入信息（手机号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :Mobile, :Encryption

        def initialize(mobile=nil, encryption=nil)
          @Mobile = mobile
          @Encryption = encryption
        end

        def deserialize(params)
          @Mobile = params['Mobile']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
        end
      end

      # MobileStatus返回参数结构体
      class MobileStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码，收费情况如下。
        # - 收费结果码：
        # 0：成功。

        # - 不收费结果码：
        # -1：未查询到结果。
        # -2：手机号格式不正确。
        # -3：验证中心服务繁忙。
        # -4：认证次数超过当日限制，请次日重试。
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param StatusCode: 状态码。
        # - 取值范围：
        # 0：正常。
        # 1：停机。
        # 2：销号。
        # 4：不在网。
        # 99：未知状态。
        # @type StatusCode: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Description, :StatusCode, :RequestId

        def initialize(result=nil, description=nil, statuscode=nil, requestid=nil)
          @Result = result
          @Description = description
          @StatusCode = statuscode
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Description = params['Description']
          @StatusCode = params['StatusCode']
          @RequestId = params['RequestId']
        end
      end

      # ParseNfcData请求参数结构体
      class ParseNfcDataRequest < TencentCloud::Common::AbstractModel
        # @param ReqId: 前端SDK返回。
        # @type ReqId: String

        attr_accessor :ReqId

        def initialize(reqid=nil)
          @ReqId = reqid
        end

        def deserialize(params)
          @ReqId = params['ReqId']
        end
      end

      # ParseNfcData返回参数结构体
      class ParseNfcDataResponse < TencentCloud::Common::AbstractModel
        # @param ResultCode: 结果码。
        # - 取值范围：0为首次查询成功，-1为查询失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultCode: String
        # @param IdNum: 身份证号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdNum: String
        # @param Name: 姓名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Picture: 照片。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Picture: String
        # @param BirthDate: 出生日期。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BirthDate: String
        # @param BeginTime: 有效期起始时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginTime: String
        # @param EndTime: 有效期结束时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Address: 住址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param Nation: 民族。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nation: String
        # @param Sex: 性别。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sex: String
        # @param IdType: 类型。
        # - 取值范围：
        # 01：身份证。
        # 03 ：中国护照。
        # 04 ：军官证。
        # 05 ：武警证。
        # 06：港澳通行证 。
        # 07 ：台胞证 。
        # 08：外国护照 。
        # 09 ：士兵证。
        # 10 ：临时身份证。
        # 11：户口本  。
        # 12 ：警官证 。
        # 13：外国人永久居留证。
        # 14：港澳台居民居住证。
        # 15：回乡证。
        # 16：大陆居民来往台湾通行证。
        # 99：其他证件。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdType: String
        # @param EnName: 英文姓名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnName: String
        # @param SigningOrganization: 签发机关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SigningOrganization: String
        # @param OtherIdNum: 港澳台居民居住证，通行证号码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtherIdNum: String
        # @param Nationality: 旅行证件国籍。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nationality: String
        # @param PersonalNumber: 旅行证件机读区第二行 29~42 位。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PersonalNumber: String
        # @param CheckMRTD: 旅行证件类的核验结果。
        # - JSON格式如下：
        # {"result_issuer ":"签发者证书合法性验证结果 ","result_pape r":"证件安全对象合法性验证结果 ","result_data" :"防数据篡改验证结果 ","result_chip" :"防证书件芯片被复制验证结果"} 。
        # - 取值范围： 0:验证通过，1: 验证不通过，2: 未验证，3:部分通过，当4项核验结果都为0时，表示证件为真。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckMRTD: String
        # @param ImageA: 身份证照片面合成图片。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageA: String
        # @param ImageB: 身份证国徽面合成图片。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageB: String
        # @param ResultDescription: 对result code的结果描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultDescription: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultCode, :IdNum, :Name, :Picture, :BirthDate, :BeginTime, :EndTime, :Address, :Nation, :Sex, :IdType, :EnName, :SigningOrganization, :OtherIdNum, :Nationality, :PersonalNumber, :CheckMRTD, :ImageA, :ImageB, :ResultDescription, :RequestId

        def initialize(resultcode=nil, idnum=nil, name=nil, picture=nil, birthdate=nil, begintime=nil, endtime=nil, address=nil, nation=nil, sex=nil, idtype=nil, enname=nil, signingorganization=nil, otheridnum=nil, nationality=nil, personalnumber=nil, checkmrtd=nil, imagea=nil, imageb=nil, resultdescription=nil, requestid=nil)
          @ResultCode = resultcode
          @IdNum = idnum
          @Name = name
          @Picture = picture
          @BirthDate = birthdate
          @BeginTime = begintime
          @EndTime = endtime
          @Address = address
          @Nation = nation
          @Sex = sex
          @IdType = idtype
          @EnName = enname
          @SigningOrganization = signingorganization
          @OtherIdNum = otheridnum
          @Nationality = nationality
          @PersonalNumber = personalnumber
          @CheckMRTD = checkmrtd
          @ImageA = imagea
          @ImageB = imageb
          @ResultDescription = resultdescription
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultCode = params['ResultCode']
          @IdNum = params['IdNum']
          @Name = params['Name']
          @Picture = params['Picture']
          @BirthDate = params['BirthDate']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Address = params['Address']
          @Nation = params['Nation']
          @Sex = params['Sex']
          @IdType = params['IdType']
          @EnName = params['EnName']
          @SigningOrganization = params['SigningOrganization']
          @OtherIdNum = params['OtherIdNum']
          @Nationality = params['Nationality']
          @PersonalNumber = params['PersonalNumber']
          @CheckMRTD = params['CheckMRTD']
          @ImageA = params['ImageA']
          @ImageB = params['ImageB']
          @ResultDescription = params['ResultDescription']
          @RequestId = params['RequestId']
        end
      end

      # PhoneVerificationCMCC请求参数结构体
      class PhoneVerificationCMCCRequest < TencentCloud::Common::AbstractModel
        # @param IdCard: 身份证号。
        # @type IdCard: String
        # @param Name: 姓名。
        # @type Name: String
        # @param Phone: 手机号。
        # @type Phone: String
        # @param Encryption: 敏感数据加密信息。
        # - 对传入信息（姓名、身份证号、手机号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :IdCard, :Name, :Phone, :Encryption

        def initialize(idcard=nil, name=nil, phone=nil, encryption=nil)
          @IdCard = idcard
          @Name = name
          @Phone = phone
          @Encryption = encryption
        end

        def deserialize(params)
          @IdCard = params['IdCard']
          @Name = params['Name']
          @Phone = params['Phone']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
        end
      end

      # PhoneVerificationCMCC返回参数结构体
      class PhoneVerificationCMCCResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码，收费情况如下。
        # - 收费结果码：
        # 0: 认证通过。
        # -4: 信息不一致（手机号已实名，但姓名和身份证号与实名信息不一致）。

        # - 不收费结果码：
        # -6: 手机号码不合法。
        # -7: 身份证号码有误。
        # -8: 姓名校验不通过。
        # -9: 没有记录。
        # -11: 验证中心服务繁忙。
        # @type Result: String
        # @param Isp: 运营商名称。
        # - 取值范围为["移动","联通","电信",""]。
        # @type Isp: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Isp, :Description, :RequestId

        def initialize(result=nil, isp=nil, description=nil, requestid=nil)
          @Result = result
          @Isp = isp
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Isp = params['Isp']
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # PhoneVerificationCTCC请求参数结构体
      class PhoneVerificationCTCCRequest < TencentCloud::Common::AbstractModel
        # @param IdCard: 身份证号。
        # @type IdCard: String
        # @param Name: 姓名。
        # @type Name: String
        # @param Phone: 手机号。
        # @type Phone: String
        # @param Encryption: 敏感数据加密信息。
        # - 对传入信息（姓名、身份证号、手机号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :IdCard, :Name, :Phone, :Encryption

        def initialize(idcard=nil, name=nil, phone=nil, encryption=nil)
          @IdCard = idcard
          @Name = name
          @Phone = phone
          @Encryption = encryption
        end

        def deserialize(params)
          @IdCard = params['IdCard']
          @Name = params['Name']
          @Phone = params['Phone']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
        end
      end

      # PhoneVerificationCTCC返回参数结构体
      class PhoneVerificationCTCCResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码，收费情况如下。
        # - 收费结果码：
        # 0: 认证通过。
        # -4: 信息不一致（手机号已实名，但姓名和身份证号与实名信息不一致）。

        # - 不收费结果码：
        # -6: 手机号码不合法。
        # -7: 身份证号码有误。
        # -8: 姓名校验不通过。
        # -9: 没有记录。
        # -11: 验证中心服务繁忙。
        # @type Result: String
        # @param Isp: 运营商名称。
        # - 取值范围为["移动","联通","电信",""]。
        # @type Isp: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Isp, :Description, :RequestId

        def initialize(result=nil, isp=nil, description=nil, requestid=nil)
          @Result = result
          @Isp = isp
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Isp = params['Isp']
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # PhoneVerificationCUCC请求参数结构体
      class PhoneVerificationCUCCRequest < TencentCloud::Common::AbstractModel
        # @param IdCard: 身份证号。
        # @type IdCard: String
        # @param Name: 姓名。
        # @type Name: String
        # @param Phone: 手机号。
        # @type Phone: String
        # @param Encryption: 敏感数据加密信息。
        # - 对传入信息（姓名、身份证号、手机号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :IdCard, :Name, :Phone, :Encryption

        def initialize(idcard=nil, name=nil, phone=nil, encryption=nil)
          @IdCard = idcard
          @Name = name
          @Phone = phone
          @Encryption = encryption
        end

        def deserialize(params)
          @IdCard = params['IdCard']
          @Name = params['Name']
          @Phone = params['Phone']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new
            @Encryption.deserialize(params['Encryption'])
          end
        end
      end

      # PhoneVerificationCUCC返回参数结构体
      class PhoneVerificationCUCCResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码，收费情况如下。
        # - 收费结果码：
        # 0: 认证通过。
        # -4: 信息不一致（手机号已实名，但姓名和身份证号与实名信息不一致）。

        # - 不收费结果码：
        # -6: 手机号码不合法。
        # -7: 身份证号码有误。
        # -8: 姓名校验不通过。
        # -9: 没有记录。
        # -11: 验证中心服务繁忙。
        # @type Result: String
        # @param Isp: 运营商名称。
        # - 取值范围为["移动","联通","电信",""]。
        # @type Isp: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Isp, :Description, :RequestId

        def initialize(result=nil, isp=nil, description=nil, requestid=nil)
          @Result = result
          @Isp = isp
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Isp = params['Isp']
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # PhoneVerification请求参数结构体
      class PhoneVerificationRequest < TencentCloud::Common::AbstractModel
        # @param IdCard: 身份证号。
        # @type IdCard: String
        # @param Name: 姓名。
        # @type Name: String
        # @param Phone: 手机号。
        # @type Phone: String
        # @param VerifyMode: 验证模式（详版/简版）。
        # - 简版与详版价格不一致，详见[价格说明](https://cloud.tencent.com/document/product/1007/84321)。
        # - 枚举值：0（简版）；1（详版）。
        # - 默认值为0。
        # @type VerifyMode: String
        # @param CiphertextBlob: 有加密需求的用户，传入kms的CiphertextBlob。关于数据加密可查阅 <a href="https://cloud.tencent.com/document/product/1007/47180">数据加密</a> 文档。
        # @type CiphertextBlob: String
        # @param EncryptList: 在使用加密服务时，填入要被加密的字段。
        # - 本接口中可填入加密后的IdCard，Name，Phone中的一个或多个。
        # @type EncryptList: Array
        # @param Iv: 有加密需求的用户，传入CBC加密的初始向量。
        # @type Iv: String

        attr_accessor :IdCard, :Name, :Phone, :VerifyMode, :CiphertextBlob, :EncryptList, :Iv

        def initialize(idcard=nil, name=nil, phone=nil, verifymode=nil, ciphertextblob=nil, encryptlist=nil, iv=nil)
          @IdCard = idcard
          @Name = name
          @Phone = phone
          @VerifyMode = verifymode
          @CiphertextBlob = ciphertextblob
          @EncryptList = encryptlist
          @Iv = iv
        end

        def deserialize(params)
          @IdCard = params['IdCard']
          @Name = params['Name']
          @Phone = params['Phone']
          @VerifyMode = params['VerifyMode']
          @CiphertextBlob = params['CiphertextBlob']
          @EncryptList = params['EncryptList']
          @Iv = params['Iv']
        end
      end

      # PhoneVerification返回参数结构体
      class PhoneVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码。
        # - 收费结果码
        # 0: 三要素信息一致。
        # -4: 三要素信息不一致。

        # - 不收费结果码
        # -6: 手机号码不合法。
        # -7: 身份证号码有误。
        # -8: 姓名校验不通过。
        # -9: 没有记录。
        # -11: 验证中心服务繁忙。
        # -12: 认证次数超过当日限制，请次日重试。
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param Isp: 运营商名称。
        # - 取值范围为["","移动","电信","联通"]
        # @type Isp: String
        # @param ResultDetail: 业务结果详细信息。
        # - 当VerifyMode配置"详版"，且Result为"-4: 三要素信息不一致"时返回。
        # - 枚举值：
        # PhoneIdCardMismatch：手机号码与姓名一致，与身份证号不一致。
        # PhoneNameMismatch：手机号码身份证号一致，与姓名不一致。
        # PhoneNameIdCardMismatch：手机号码与姓名和身份证号均不一致。
        # NameIdCardMismatch：姓名和身份证号不一致。
        # OtherMismatch：其他不一致。
        # @type ResultDetail: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Description, :Isp, :ResultDetail, :RequestId

        def initialize(result=nil, description=nil, isp=nil, resultdetail=nil, requestid=nil)
          @Result = result
          @Description = description
          @Isp = isp
          @ResultDetail = resultdetail
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Description = params['Description']
          @Isp = params['Isp']
          @ResultDetail = params['ResultDetail']
          @RequestId = params['RequestId']
        end
      end

      # 模版检索详细信息
      class RetrievalLivenessExtraInfo < TencentCloud::Common::AbstractModel
        # @param HitGroup: 命中的模版类型，其中Common-公共库；Auto-自动聚类库；Owner-自建模版库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HitGroup: String
        # @param SimilarityScore: 命中的相似度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SimilarityScore: Float
        # @param HitTemplate: 命中的模板id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HitTemplate: String

        attr_accessor :HitGroup, :SimilarityScore, :HitTemplate

        def initialize(hitgroup=nil, similarityscore=nil, hittemplate=nil)
          @HitGroup = hitgroup
          @SimilarityScore = similarityscore
          @HitTemplate = hittemplate
        end

        def deserialize(params)
          @HitGroup = params['HitGroup']
          @SimilarityScore = params['SimilarityScore']
          @HitTemplate = params['HitTemplate']
        end
      end

      # RuleId相关配置
      class RuleIdConfig < TencentCloud::Common::AbstractModel
        # @param IntentionRecognition: 意愿核身过程中识别用户的回答意图，开启后除了IntentionQuestions的Answers列表中的标准回答会通过，近似意图的回答也会通过，默认开启。
        # @type IntentionRecognition: Boolean
        # @param IntentionType: 意愿核身类型，默认为0：
        # 0：问答模式，DetectAuth接口需要传入IntentionQuestions字段；
        # 1：点头模式，DetectAuth接口需要传入IntentionActions字段；
        # @type IntentionType: Integer
        # @param MouthOpenRecognition: 用户语音回答过程中是否开启张嘴识别检测，默认不开启，仅在意愿核身问答模式中使用。
        # @type MouthOpenRecognition: Boolean
        # @param Speed: 意愿核身语音播报速度，配置后问答模式和点头模式的语音播报环节都会生效，默认值为0：
        # 0：智能语速（根据播报文案的长度自动调整语音播报速度）
        # 1：固定1倍速
        # 2：固定1.2倍速
        # 3：固定1.5倍速
        # @type Speed: Integer

        attr_accessor :IntentionRecognition, :IntentionType, :MouthOpenRecognition, :Speed

        def initialize(intentionrecognition=nil, intentiontype=nil, mouthopenrecognition=nil, speed=nil)
          @IntentionRecognition = intentionrecognition
          @IntentionType = intentiontype
          @MouthOpenRecognition = mouthopenrecognition
          @Speed = speed
        end

        def deserialize(params)
          @IntentionRecognition = params['IntentionRecognition']
          @IntentionType = params['IntentionType']
          @MouthOpenRecognition = params['MouthOpenRecognition']
          @Speed = params['Speed']
        end
      end

      # 账单详情
      class WeChatBillDetail < TencentCloud::Common::AbstractModel
        # @param BizToken: token
        # @type BizToken: String
        # @param ChargeCount: 本token收费次数
        # @type ChargeCount: Integer
        # @param ChargeDetails: 本token计费详情
        # @type ChargeDetails: Array
        # @param RuleId: 业务RuleId
        # @type RuleId: String

        attr_accessor :BizToken, :ChargeCount, :ChargeDetails, :RuleId

        def initialize(biztoken=nil, chargecount=nil, chargedetails=nil, ruleid=nil)
          @BizToken = biztoken
          @ChargeCount = chargecount
          @ChargeDetails = chargedetails
          @RuleId = ruleid
        end

        def deserialize(params)
          @BizToken = params['BizToken']
          @ChargeCount = params['ChargeCount']
          unless params['ChargeDetails'].nil?
            @ChargeDetails = []
            params['ChargeDetails'].each do |i|
              chargedetail_tmp = ChargeDetail.new
              chargedetail_tmp.deserialize(i)
              @ChargeDetails << chargedetail_tmp
            end
          end
          @RuleId = params['RuleId']
        end
      end

    end
  end
end

