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
      # BankCard2EVerification请求参数结构体
      class BankCard2EVerificationRequest < TencentCloud::Common::AbstractModel
        # @param Name: 姓名
        # @type Name: String
        # @param BankCard: 银行卡
        # @type BankCard: String

        attr_accessor :Name, :BankCard
        
        def initialize(name=nil, bankcard=nil)
          @Name = name
          @BankCard = bankcard
        end

        def deserialize(params)
          @Name = params['Name']
          @BankCard = params['BankCard']
        end
      end

      # BankCard2EVerification返回参数结构体
      class BankCard2EVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码
        # 计费结果码：
        #   '0': '认证通过'
        #   '-1': '认证未通过'
        #  '-4': '持卡人信息有误'
        #   '-5': '未开通无卡支付'
        #   '-6': '此卡被没收'
        #   '-7': '无效卡号'
        #   '-8': '此卡无对应发卡行'
        #   '-9': '该卡未初始化或睡眠卡'
        #   '-10': '作弊卡、吞卡'
        #   '-11': '此卡已挂失'
        #   '-12': '该卡已过期'
        #   '-13': '受限制的卡'
        #   '-14': '密码错误次数超限'
        #   '-15': '发卡行不支持此交易'
        # 不计费结果码：
        #   '-2': '姓名校验不通过'
        #   '-3': '银行卡号码有误'
        #   '-16': '验证中心服务繁忙'
        # @type Result: String
        # @param Description: 业务结果描述。
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

      # BankCard4EVerification请求参数结构体
      class BankCard4EVerificationRequest < TencentCloud::Common::AbstractModel
        # @param Name: 姓名
        # @type Name: String
        # @param BankCard: 银行卡
        # @type BankCard: String
        # @param Phone: 手机号码
        # @type Phone: String
        # @param IdCard: 开户证件号，与CertType参数的证件类型一致，如：身份证，则传入身份证号。
        # @type IdCard: String
        # @param CertType: 证件类型，请确认该证件为开户时使用的证件类型，未用于开户的证件信息不支持验证。
        # 目前默认为0：身份证，其他证件类型暂不支持。
        # @type CertType: Integer
        # @param Encryption: 敏感数据加密信息。对传入信息（姓名、身份证号、手机号、银行卡号）有加密需求的用户可使用此参数，详情请点击左侧链接。
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
            @Encryption = Encryption.new.deserialize(params['Encryption'])
          end
        end
      end

      # BankCard4EVerification返回参数结构体
      class BankCard4EVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码
        # 收费结果码：
        # '0': '认证通过'
        # '-1': '认证未通过'
        # '-6': '持卡人信息有误'
        # '-7': '未开通无卡支付'
        # '-8': '此卡被没收'
        # '-9': '无效卡号'
        # '-10': '此卡无对应发卡行'
        # '-11': '该卡未初始化或睡眠卡'
        # '-12': '作弊卡、吞卡'
        # '-13': '此卡已挂失'
        # '-14': '该卡已过期'
        # '-15': '受限制的卡'
        # '-16': '密码错误次数超限'
        # '-17': '发卡行不支持此交易'
        # 不收费结果码：
        # '-2': '姓名校验不通过'
        # '-3': '身份证号码有误'
        # '-4': '银行卡号码有误'
        # '-5': '手机号码不合法'
        # '-18': '验证中心服务繁忙'
        # @type Result: String
        # @param Description: 业务结果描述。
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

      # BankCardVerification请求参数结构体
      class BankCardVerificationRequest < TencentCloud::Common::AbstractModel
        # @param IdCard: 开户证件号，与CertType参数的证件类型一致，如：身份证，则传入身份证号。
        # @type IdCard: String
        # @param Name: 姓名
        # @type Name: String
        # @param BankCard: 银行卡
        # @type BankCard: String
        # @param CertType: 证件类型，请确认该证件为开户时使用的证件类型，未用于开户的证件信息不支持验证。
        # 目前默认：0 身份证，其他证件类型需求可以联系小助手faceid001确认。
        # @type CertType: Integer
        # @param Encryption: 敏感数据加密信息。对传入信息（姓名、身份证号、银行卡号）有加密需求的用户可使用此参数，详情请点击左侧链接。
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
            @Encryption = Encryption.new.deserialize(params['Encryption'])
          end
        end
      end

      # BankCardVerification返回参数结构体
      class BankCardVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码
        # 收费结果码：
        # '0': '认证通过'
        # '-1': '认证未通过'
        # '-5': '持卡人信息有误'
        # '-6': '未开通无卡支付'
        # '-7': '此卡被没收'
        # '-8': '无效卡号'
        # '-9': '此卡无对应发卡行'
        # '-10': '该卡未初始化或睡眠卡'
        # '-11': '作弊卡、吞卡'
        # '-12': '此卡已挂失'
        # '-13': '该卡已过期'
        # '-14': '受限制的卡'
        # '-15': '密码错误次数超限'
        # '-16': '发卡行不支持此交易'
        # 不收费结果码：
        # '-2': '姓名校验不通过'
        # '-3': '身份证号码有误'
        # '-4': '银行卡号码有误'
        # '-17': '验证中心服务繁忙'
        # @type Result: String
        # @param Description: 业务结果描述。
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

      # CheckBankCardInformation请求参数结构体
      class CheckBankCardInformationRequest < TencentCloud::Common::AbstractModel
        # @param BankCard: 银行卡号。
        # @type BankCard: String

        attr_accessor :BankCard
        
        def initialize(bankcard=nil)
          @BankCard = bankcard
        end

        def deserialize(params)
          @BankCard = params['BankCard']
        end
      end

      # CheckBankCardInformation返回参数结构体
      class CheckBankCardInformationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码，收费情况如下。
        # 收费结果码：
        # 0: 查询成功
        # -1: 未查到信息
        # 不收费结果码
        # -2：验证中心服务繁忙
        # -3：银行卡不存在
        # @type Result: String
        # @param Description: 业务结果描述
        # @type Description: String
        # @param AccountBank: 开户行
        # @type AccountBank: String
        # @param AccountType: 卡性质：1. 借记卡；2. 贷记卡
        # @type AccountType: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CheckIdCardInformation请求参数结构体
      class CheckIdCardInformationRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 身份证人像面的 Base64 值
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 7M。
        # 请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        # ImageBase64、ImageUrl二者必须提供其中之一。若都提供了，则按照ImageUrl>ImageBase64的优先级使用参数。
        # @type ImageBase64: String
        # @param ImageUrl: 身份证人像面的 Url 地址
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param Config: 以下可选字段均为bool 类型，默认false：
        # CopyWarn，复印件告警
        # BorderCheckWarn，边框和框内遮挡告警
        # ReshootWarn，翻拍告警
        # DetectPsWarn，PS检测告警
        # TempIdWarn，临时身份证告警
        # Quality，图片质量告警（评价图片模糊程度）

        # SDK 设置方式参考：
        # Config = Json.stringify({"CopyWarn":true,"ReshootWarn":true})
        # API 3.0 Explorer 设置方式参考：
        # Config = {"CopyWarn":true,"ReshootWarn":true}
        # @type Config: String

        attr_accessor :ImageBase64, :ImageUrl, :Config
        
        def initialize(imagebase64=nil, imageurl=nil, config=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @Config = config
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @Config = params['Config']
        end
      end

      # CheckIdCardInformation返回参数结构体
      class CheckIdCardInformationResponse < TencentCloud::Common::AbstractModel
        # @param Sim: 相似度，取值范围 [0.00, 100.00]。推荐相似度大于等于70时可判断为同一人，可根据具体场景自行调整阈值（阈值70的误通过率为千分之一，阈值80的误通过率是万分之一）
        # @type Sim: Float
        # @param Result: 业务错误码，成功情况返回Success, 错误情况请参考下方错误码 列表中FailedOperation部分
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param Name: 姓名
        # @type Name: String
        # @param Sex: 性别
        # @type Sex: String
        # @param Nation: 民族
        # @type Nation: String
        # @param Birth: 出生日期
        # @type Birth: String
        # @param Address: 地址
        # @type Address: String
        # @param IdNum: 身份证号
        # @type IdNum: String
        # @param Portrait: 身份证头像照片的base64编码，如果抠图失败会拿整张身份证做比对并返回空。
        # @type Portrait: String
        # @param Warnings: 告警信息，当在Config中配置了告警信息会停止人像比对，Result返回错误（FailedOperation.OcrWarningOccurred）并有此告警信息，Code 告警码列表和释义：

        # -9101 身份证边框不完整告警，
        # -9102 身份证复印件告警，
        # -9103 身份证翻拍告警，
        # -9105 身份证框内遮挡告警，
        # -9104 临时身份证告警，
        # -9106 身份证 PS 告警。
        # -8001 图片模糊告警
        # 多个会 |  隔开如 "-9101|-9106|-9104"
        # @type Warnings: String
        # @param Quality: 图片质量分数，当请求Config中配置图片模糊告警该参数才有意义，取值范围（0～100），目前默认阈值是50分，低于50分会触发模糊告警。
        # @type Quality: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Sim, :Result, :Description, :Name, :Sex, :Nation, :Birth, :Address, :IdNum, :Portrait, :Warnings, :Quality, :RequestId
        
        def initialize(sim=nil, result=nil, description=nil, name=nil, sex=nil, nation=nil, birth=nil, address=nil, idnum=nil, portrait=nil, warnings=nil, quality=nil, requestid=nil)
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
          @RequestId = params['RequestId']
        end
      end

      # CheckPhoneAndName请求参数结构体
      class CheckPhoneAndNameRequest < TencentCloud::Common::AbstractModel
        # @param Mobile: ⼿机号
        # @type Mobile: String
        # @param Name: 姓名
        # @type Name: String

        attr_accessor :Mobile, :Name
        
        def initialize(mobile=nil, name=nil)
          @Mobile = mobile
          @Name = name
        end

        def deserialize(params)
          @Mobile = params['Mobile']
          @Name = params['Name']
        end
      end

      # CheckPhoneAndName返回参数结构体
      class CheckPhoneAndNameResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码，收费情况如下。
        # 收费结果码：
        # 0: 验证结果一致
        # 1: 验证结果不一致
        # 不收费结果码：
        # -1:查无记录
        # -2:引擎未知错误
        # -3:引擎服务异常
        # @type Result: String
        # @param Description: 业务结果描述
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

      # DetectAuth请求参数结构体
      class DetectAuthRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 用于细分客户使用场景，申请开通服务后，可以在腾讯云慧眼人脸核身控制台（https://console.cloud.tencent.com/faceid） 自助接入里面创建，审核通过后即可调用。如有疑问，请加慧眼小助手微信（faceid001）进行咨询。
        # @type RuleId: String
        # @param TerminalType: 本接口不需要传递此参数。
        # @type TerminalType: String
        # @param IdCard: 身份标识（未使用OCR服务时，必须传入）。
        # 规则：a-zA-Z0-9组合。最长长度32位。
        # @type IdCard: String
        # @param Name: 姓名。（未使用OCR服务时，必须传入）最长长度32位。中文请使用UTF-8编码。
        # @type Name: String
        # @param RedirectUrl: 认证结束后重定向的回调链接地址。最长长度1024位。
        # @type RedirectUrl: String
        # @param Extra: 透传字段，在获取验证结果时返回。
        # @type Extra: String
        # @param ImageBase64: 用于人脸比对的照片，图片的Base64值；
        # Base64编码后的图片数据大小不超过3M，仅支持jpg、png格式。请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        # @type ImageBase64: String
        # @param Encryption: 敏感数据加密信息。对传入信息（姓名、身份证号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :RuleId, :TerminalType, :IdCard, :Name, :RedirectUrl, :Extra, :ImageBase64, :Encryption
        
        def initialize(ruleid=nil, terminaltype=nil, idcard=nil, name=nil, redirecturl=nil, extra=nil, imagebase64=nil, encryption=nil)
          @RuleId = ruleid
          @TerminalType = terminaltype
          @IdCard = idcard
          @Name = name
          @RedirectUrl = redirecturl
          @Extra = extra
          @ImageBase64 = imagebase64
          @Encryption = encryption
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
            @Encryption = Encryption.new.deserialize(params['Encryption'])
          end
        end
      end

      # DetectAuth返回参数结构体
      class DetectAuthResponse < TencentCloud::Common::AbstractModel
        # @param Url: 用于发起核身流程的URL，仅微信H5场景使用。
        # @type Url: String
        # @param BizToken: 一次核身流程的标识，有效时间为7,200秒；
        # 完成核身后，可用该标识获取验证结果信息。
        # @type BizToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

        attr_accessor :ReqTime, :Seq, :Idcard, :Name, :Sim, :IsNeedCharge, :Errcode, :Errmsg, :Livestatus, :Livemsg, :Comparestatus, :Comparemsg, :CompareLibType
        
        def initialize(reqtime=nil, seq=nil, idcard=nil, name=nil, sim=nil, isneedcharge=nil, errcode=nil, errmsg=nil, livestatus=nil, livemsg=nil, comparestatus=nil, comparemsg=nil, comparelibtype=nil)
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
        end
      end

      # 核身最佳帧信息
      class DetectInfoBestFrame < TencentCloud::Common::AbstractModel
        # @param BestFrame: 活体比对最佳帧。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BestFrame: String
        # @param BestFrames: 自截帧。
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

      # 核身身份证图片信息
      class DetectInfoIdCardData < TencentCloud::Common::AbstractModel
        # @param OcrFront: OCR正面照片的base64编码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrFront: String
        # @param OcrBack: OCR反面照片的base64编码
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

        attr_accessor :OcrFront, :OcrBack, :ProcessedFrontImage, :ProcessedBackImage, :Avatar
        
        def initialize(ocrfront=nil, ocrback=nil, processedfrontimage=nil, processedbackimage=nil, avatar=nil)
          @OcrFront = ocrfront
          @OcrBack = ocrback
          @ProcessedFrontImage = processedfrontimage
          @ProcessedBackImage = processedbackimage
          @Avatar = avatar
        end

        def deserialize(params)
          @OcrFront = params['OcrFront']
          @OcrBack = params['OcrBack']
          @ProcessedFrontImage = params['ProcessedFrontImage']
          @ProcessedBackImage = params['ProcessedBackImage']
          @Avatar = params['Avatar']
        end
      end

      # 核身文本信息
      class DetectInfoText < TencentCloud::Common::AbstractModel
        # @param ErrCode: 本次流程最终验证结果。0为成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrCode: Integer
        # @param ErrMsg: 本次流程最终验证结果描述。（仅描述用，文案更新时不会通知。）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMsg: String
        # @param IdCard: 本次验证使用的身份证号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdCard: String
        # @param Name: 本次验证使用的姓名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param OcrNation: Ocr识别结果。民族。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrNation: String
        # @param OcrAddress: Ocr识别结果。家庭住址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrAddress: String
        # @param OcrBirth: Ocr识别结果。生日。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrBirth: String
        # @param OcrAuthority: Ocr识别结果。签发机关。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrAuthority: String
        # @param OcrValidDate: Ocr识别结果。有效日期。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrValidDate: String
        # @param OcrName: Ocr识别结果。姓名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrName: String
        # @param OcrIdCard: Ocr识别结果。身份证号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrIdCard: String
        # @param OcrGender: Ocr识别结果。性别。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrGender: String
        # @param LiveStatus: 本次流程最终活体结果。0为成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LiveStatus: Integer
        # @param LiveMsg: 本次流程最终活体结果描述。（仅描述用，文案更新时不会通知。）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LiveMsg: String
        # @param Comparestatus: 本次流程最终一比一结果。0为成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comparestatus: Integer
        # @param Comparemsg: 本次流程最终一比一结果描述。（仅描述用，文案更新时不会通知。）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comparemsg: String
        # @param Sim: 本次流程活体一比一的分数，取值范围 [0.00, 100.00]。相似度大于等于70时才判断为同一人，也可根据具体场景自行调整阈值（阈值70的误通过率为千分之一，阈值80的误通过率是万分之一）
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
        # @param Mobile: 手机号码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mobile: String
        # @param CompareLibType: 本次流程最终比对库源类型。包括：
        # 权威库；
        # 业务方自有库（用户上传照片、客户的混合库、混合部署库）；
        # 二次验证库；
        # 人工审核库；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareLibType: String

        attr_accessor :ErrCode, :ErrMsg, :IdCard, :Name, :OcrNation, :OcrAddress, :OcrBirth, :OcrAuthority, :OcrValidDate, :OcrName, :OcrIdCard, :OcrGender, :LiveStatus, :LiveMsg, :Comparestatus, :Comparemsg, :Sim, :Location, :Extra, :LivenessDetail, :Mobile, :CompareLibType
        
        def initialize(errcode=nil, errmsg=nil, idcard=nil, name=nil, ocrnation=nil, ocraddress=nil, ocrbirth=nil, ocrauthority=nil, ocrvaliddate=nil, ocrname=nil, ocridcard=nil, ocrgender=nil, livestatus=nil, livemsg=nil, comparestatus=nil, comparemsg=nil, sim=nil, location=nil, extra=nil, livenessdetail=nil, mobile=nil, comparelibtype=nil)
          @ErrCode = errcode
          @ErrMsg = errmsg
          @IdCard = idcard
          @Name = name
          @OcrNation = ocrnation
          @OcrAddress = ocraddress
          @OcrBirth = ocrbirth
          @OcrAuthority = ocrauthority
          @OcrValidDate = ocrvaliddate
          @OcrName = ocrname
          @OcrIdCard = ocridcard
          @OcrGender = ocrgender
          @LiveStatus = livestatus
          @LiveMsg = livemsg
          @Comparestatus = comparestatus
          @Comparemsg = comparemsg
          @Sim = sim
          @Location = location
          @Extra = extra
          @LivenessDetail = livenessdetail
          @Mobile = mobile
          @CompareLibType = comparelibtype
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          @IdCard = params['IdCard']
          @Name = params['Name']
          @OcrNation = params['OcrNation']
          @OcrAddress = params['OcrAddress']
          @OcrBirth = params['OcrBirth']
          @OcrAuthority = params['OcrAuthority']
          @OcrValidDate = params['OcrValidDate']
          @OcrName = params['OcrName']
          @OcrIdCard = params['OcrIdCard']
          @OcrGender = params['OcrGender']
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
              @LivenessDetail << DetectDetail.new.deserialize(i)
            end
          end
          @Mobile = params['Mobile']
          @CompareLibType = params['CompareLibType']
        end
      end

      # 核身视频信息
      class DetectInfoVideoData < TencentCloud::Common::AbstractModel
        # @param LivenessVideo: 活体视频的base64编码
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

      # Eid出参
      class EidInfo < TencentCloud::Common::AbstractModel
        # @param EidCode: 商户方 appeIDcode 的数字证书
        # @type EidCode: String
        # @param EidSign: eID 中心针对商户方EidCode的电子签名
        # @type EidSign: String

        attr_accessor :EidCode, :EidSign
        
        def initialize(eidcode=nil, eidsign=nil)
          @EidCode = eidcode
          @EidSign = eidsign
        end

        def deserialize(params)
          @EidCode = params['EidCode']
          @EidSign = params['EidSign']
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
        # @param EncryptionMode: 敏感信息的加密方式，目前只支持MD5加密传输，参数取值：

        # 0：明文，不加密
        # 1：使用MD5加密
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
        # 0: 认证通过
        # -4: 信息不一致

        # 【不收费结果码】
        # -7: 身份证号码有误
        # -9: 没有记录
        # -11: 验证中心服务繁忙
        # @type Result: String
        # @param Description: 业务结果描述。
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

      # 敏感数据加密
      class Encryption < TencentCloud::Common::AbstractModel
        # @param CiphertextBlob: 有加密需求的用户，接入传入kms的CiphertextBlob，关于数据加密可查阅<a href="https://cloud.tencent.com/document/product/1007/47180">数据加密</a> 文档。
        # @type CiphertextBlob: String
        # @param EncryptList: 在使用加密服务时，填入要被加密的字段。本接口中可填入加密后的一个或多个字段
        # @type EncryptList: Array
        # @param Iv: 有加密需求的用户，传入CBC加密的初始向量
        # @type Iv: String

        attr_accessor :CiphertextBlob, :EncryptList, :Iv
        
        def initialize(ciphertextblob=nil, encryptlist=nil, iv=nil)
          @CiphertextBlob = ciphertextblob
          @EncryptList = encryptlist
          @Iv = iv
        end

        def deserialize(params)
          @CiphertextBlob = params['CiphertextBlob']
          @EncryptList = params['EncryptList']
          @Iv = params['Iv']
        end
      end

      # GetActionSequence请求参数结构体
      class GetActionSequenceRequest < TencentCloud::Common::AbstractModel
        # @param ActionType: 默认不需要使用
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
        # @param ActionSequence: 动作顺序(2,1 or 1,2) 。1代表张嘴，2代表闭眼。
        # @type ActionSequence: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param InfoType: 指定拉取的结果信息，取值（0：全部；1：文本类；2：身份证信息；3：视频最佳截图信息）。
        # 如 13表示拉取文本类、视频最佳截图信息。
        # 默认值：0
        # @type InfoType: String
        # @param BestFramesCount: 从活体视频中截取一定张数的最佳帧（仅部分服务支持，若需使用请与慧眼小助手沟通）。默认为0，最大为10，超出10的最多只给10张。（InfoType需要包含3）
        # @type BestFramesCount: Integer
        # @param IsCutIdCardImage: 是否对身份证照片进行裁边。默认为false。（InfoType需要包含2）
        # @type IsCutIdCardImage: Boolean
        # @param IsNeedIdCardAvatar: 是否需要从身份证中抠出头像。默认为false。（InfoType需要包含2）
        # @type IsNeedIdCardAvatar: Boolean
        # @param IsEncrypt: 是否需要对返回中的敏感信息进行加密。其中敏感信息包括：Response.Text.IdCard、Response.Text.Name、Response.Text.OcrIdCard、Response.Text.OcrName
        # @type IsEncrypt: Boolean

        attr_accessor :BizToken, :RuleId, :InfoType, :BestFramesCount, :IsCutIdCardImage, :IsNeedIdCardAvatar, :IsEncrypt
        
        def initialize(biztoken=nil, ruleid=nil, infotype=nil, bestframescount=nil, iscutidcardimage=nil, isneedidcardavatar=nil, isencrypt=nil)
          @BizToken = biztoken
          @RuleId = ruleid
          @InfoType = infotype
          @BestFramesCount = bestframescount
          @IsCutIdCardImage = iscutidcardimage
          @IsNeedIdCardAvatar = isneedidcardavatar
          @IsEncrypt = isencrypt
        end

        def deserialize(params)
          @BizToken = params['BizToken']
          @RuleId = params['RuleId']
          @InfoType = params['InfoType']
          @BestFramesCount = params['BestFramesCount']
          @IsCutIdCardImage = params['IsCutIdCardImage']
          @IsNeedIdCardAvatar = params['IsNeedIdCardAvatar']
          @IsEncrypt = params['IsEncrypt']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Text, :IdCardData, :BestFrame, :VideoData, :Encryption, :RequestId
        
        def initialize(text=nil, idcarddata=nil, bestframe=nil, videodata=nil, encryption=nil, requestid=nil)
          @Text = text
          @IdCardData = idcarddata
          @BestFrame = bestframe
          @VideoData = videodata
          @Encryption = encryption
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = DetectInfoText.new.deserialize(params['Text'])
          end
          unless params['IdCardData'].nil?
            @IdCardData = DetectInfoIdCardData.new.deserialize(params['IdCardData'])
          end
          unless params['BestFrame'].nil?
            @BestFrame = DetectInfoBestFrame.new.deserialize(params['BestFrame'])
          end
          unless params['VideoData'].nil?
            @VideoData = DetectInfoVideoData.new.deserialize(params['VideoData'])
          end
          unless params['Encryption'].nil?
            @Encryption = Encryption.new.deserialize(params['Encryption'])
          end
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param EidToken: 人脸核身流程的标识，调用GetEidToken接口时生成的。
        # @type EidToken: String
        # @param InfoType: 指定拉取的结果信息，取值（0：全部；1：文本类；2：身份证信息；3：最佳截图信息）。
        # 如 13表示拉取文本类、最佳截图信息。
        # 默认值：0
        # @type InfoType: String
        # @param BestFramesCount: 从活体视频中截取一定张数的最佳帧。默认为0，最大为3，超出3的最多只给3张。（InfoType需要包含3）
        # @type BestFramesCount: Integer

        attr_accessor :EidToken, :InfoType, :BestFramesCount
        
        def initialize(eidtoken=nil, infotype=nil, bestframescount=nil)
          @EidToken = eidtoken
          @InfoType = infotype
          @BestFramesCount = bestframescount
        end

        def deserialize(params)
          @EidToken = params['EidToken']
          @InfoType = params['InfoType']
          @BestFramesCount = params['BestFramesCount']
        end
      end

      # GetEidResult返回参数结构体
      class GetEidResultResponse < TencentCloud::Common::AbstractModel
        # @param Text: 文本类信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Faceid.v20180301.models.DetectInfoText`
        # @param IdCardData: 身份证照片信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdCardData: :class:`Tencentcloud::Faceid.v20180301.models.DetectInfoIdCardData`
        # @param BestFrame: 最佳帧信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BestFrame: :class:`Tencentcloud::Faceid.v20180301.models.DetectInfoBestFrame`
        # @param EidInfo: Eid信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EidInfo: :class:`Tencentcloud::Faceid.v20180301.models.EidInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Text, :IdCardData, :BestFrame, :EidInfo, :RequestId
        
        def initialize(text=nil, idcarddata=nil, bestframe=nil, eidinfo=nil, requestid=nil)
          @Text = text
          @IdCardData = idcarddata
          @BestFrame = bestframe
          @EidInfo = eidinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Text'].nil?
            @Text = DetectInfoText.new.deserialize(params['Text'])
          end
          unless params['IdCardData'].nil?
            @IdCardData = DetectInfoIdCardData.new.deserialize(params['IdCardData'])
          end
          unless params['BestFrame'].nil?
            @BestFrame = DetectInfoBestFrame.new.deserialize(params['BestFrame'])
          end
          unless params['EidInfo'].nil?
            @EidInfo = EidInfo.new.deserialize(params['EidInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取token时的的配置
      class GetEidTokenConfig < TencentCloud::Common::AbstractModel
        # @param InputType: 姓名身份证输入方式。
        # 1：传身份证正反面OCR
        # 2：传身份证正面OCR
        # 3：用户手动输入
        # 4：客户后台传入
        # 默认1
        # 注：使用OCR时仅支持用户修改结果中的姓名
        # @type InputType: String

        attr_accessor :InputType
        
        def initialize(inputtype=nil)
          @InputType = inputtype
        end

        def deserialize(params)
          @InputType = params['InputType']
        end
      end

      # GetEidToken请求参数结构体
      class GetEidTokenRequest < TencentCloud::Common::AbstractModel
        # @param MerchantId: EID商户id，字段长度最长50位。
        # @type MerchantId: String
        # @param IdCard: 身份标识（未使用OCR服务时，必须传入）。
        # 规则：a-zA-Z0-9组合。最长长度32位。
        # @type IdCard: String
        # @param Name: 姓名。（未使用OCR服务时，必须传入）最长长度32位。中文请使用UTF-8编码。
        # @type Name: String
        # @param Extra: 透传字段，在获取验证结果时返回。最长长度1024位。
        # @type Extra: String
        # @param Config: 小程序模式配置，包括如何传入姓名身份证的配置。
        # @type Config: :class:`Tencentcloud::Faceid.v20180301.models.GetEidTokenConfig`

        attr_accessor :MerchantId, :IdCard, :Name, :Extra, :Config
        
        def initialize(merchantid=nil, idcard=nil, name=nil, extra=nil, config=nil)
          @MerchantId = merchantid
          @IdCard = idcard
          @Name = name
          @Extra = extra
          @Config = config
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @IdCard = params['IdCard']
          @Name = params['Name']
          @Extra = params['Extra']
          unless params['Config'].nil?
            @Config = GetEidTokenConfig.new.deserialize(params['Config'])
          end
        end
      end

      # GetEidToken返回参数结构体
      class GetEidTokenResponse < TencentCloud::Common::AbstractModel
        # @param EidToken: 一次核身流程的标识，有效时间为7,200秒；
        # 完成核身后，可用该标识获取验证结果信息。
        # @type EidToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EidToken, :RequestId
        
        def initialize(eidtoken=nil, requestid=nil)
          @EidToken = eidtoken
          @RequestId = requestid
        end

        def deserialize(params)
          @EidToken = params['EidToken']
          @RequestId = params['RequestId']
        end
      end

      # GetFaceIdResult请求参数结构体
      class GetFaceIdResultRequest < TencentCloud::Common::AbstractModel
        # @param FaceIdToken: SDK人脸核身流程的标识，调用GetFaceIdToken接口时生成。
        # @type FaceIdToken: String
        # @param IsNeedVideo: 是否需要拉取视频，默认false不需要
        # @type IsNeedVideo: Boolean
        # @param IsNeedBestFrame: 是否需要拉取截帧，默认false不需要
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
        # @param IdCard: 身份证
        # @type IdCard: String
        # @param Name: 姓名
        # @type Name: String
        # @param Result: 业务核验结果，参考https://cloud.tencent.com/document/product/1007/47912
        # @type Result: String
        # @param Description: 业务核验描述
        # @type Description: String
        # @param Similarity: 相似度，0-100，数值越大相似度越高
        # @type Similarity: Float
        # @param VideoBase64: 用户核验的视频
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoBase64: String
        # @param BestFrameBase64: 用户核验视频的截帧
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BestFrameBase64: String
        # @param Extra: 获取token时透传的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IdCard, :Name, :Result, :Description, :Similarity, :VideoBase64, :BestFrameBase64, :Extra, :RequestId
        
        def initialize(idcard=nil, name=nil, result=nil, description=nil, similarity=nil, videobase64=nil, bestframebase64=nil, extra=nil, requestid=nil)
          @IdCard = idcard
          @Name = name
          @Result = result
          @Description = description
          @Similarity = similarity
          @VideoBase64 = videobase64
          @BestFrameBase64 = bestframebase64
          @Extra = extra
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
          @RequestId = params['RequestId']
        end
      end

      # GetFaceIdToken请求参数结构体
      class GetFaceIdTokenRequest < TencentCloud::Common::AbstractModel
        # @param CompareLib: 本地上传照片(LOCAL)、商业库(BUSINESS)
        # @type CompareLib: String
        # @param IdCard: CompareLib为商业库时必传。
        # @type IdCard: String
        # @param Name: CompareLib为商业库库时必传。
        # @type Name: String
        # @param ImageBase64: CompareLib为上传照片比对时必传，Base64后图片最大8MB。
        # 请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        # @type ImageBase64: String
        # @param Meta: SDK中生成的Meta字符串
        # @type Meta: String
        # @param Extra: 透传参数 1000长度字符串
        # @type Extra: String

        attr_accessor :CompareLib, :IdCard, :Name, :ImageBase64, :Meta, :Extra
        
        def initialize(comparelib=nil, idcard=nil, name=nil, imagebase64=nil, meta=nil, extra=nil)
          @CompareLib = comparelib
          @IdCard = idcard
          @Name = name
          @ImageBase64 = imagebase64
          @Meta = meta
          @Extra = extra
        end

        def deserialize(params)
          @CompareLib = params['CompareLib']
          @IdCard = params['IdCard']
          @Name = params['Name']
          @ImageBase64 = params['ImageBase64']
          @Meta = params['Meta']
          @Extra = params['Extra']
        end
      end

      # GetFaceIdToken返回参数结构体
      class GetFaceIdTokenResponse < TencentCloud::Common::AbstractModel
        # @param FaceIdToken: 有效期 10分钟。只能完成1次核身。
        # @type FaceIdToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param LiveCode: 数字验证码，如：1234
        # @type LiveCode: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # GetRealNameAuthResult请求参数结构体
      class GetRealNameAuthResultRequest < TencentCloud::Common::AbstractModel
        # @param AuthToken: 实名认证凭证
        # @type AuthToken: String

        attr_accessor :AuthToken
        
        def initialize(authtoken=nil)
          @AuthToken = authtoken
        end

        def deserialize(params)
          @AuthToken = params['AuthToken']
        end
      end

      # GetRealNameAuthResult返回参数结构体
      class GetRealNameAuthResultResponse < TencentCloud::Common::AbstractModel
        # @param ResultType: 认证结果码，收费情况如下：

        # 收费码：
        # 0:  姓名和身份证号一致
        # -1: 姓名和身份证号不一致
        # -2: 姓名和微信实名姓名不一致

        # 不收费码：
        # -3: 微信号未实名
        # @type ResultType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultType, :RequestId
        
        def initialize(resulttype=nil, requestid=nil)
          @ResultType = resulttype
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultType = params['ResultType']
          @RequestId = params['RequestId']
        end
      end

      # GetRealNameAuthToken请求参数结构体
      class GetRealNameAuthTokenRequest < TencentCloud::Common::AbstractModel
        # @param Name: 姓名
        # @type Name: String
        # @param IDCard: 身份证号
        # @type IDCard: String
        # @param CallbackURL: 回调地址。实名认证完成后，将会重定向到这个地址通知认证发起方。仅支持http或https协议。
        # @type CallbackURL: String

        attr_accessor :Name, :IDCard, :CallbackURL
        
        def initialize(name=nil, idcard=nil, callbackurl=nil)
          @Name = name
          @IDCard = idcard
          @CallbackURL = callbackurl
        end

        def deserialize(params)
          @Name = params['Name']
          @IDCard = params['IDCard']
          @CallbackURL = params['CallbackURL']
        end
      end

      # GetRealNameAuthToken返回参数结构体
      class GetRealNameAuthTokenResponse < TencentCloud::Common::AbstractModel
        # @param AuthToken: 查询实名认证结果的唯一凭证
        # @type AuthToken: String
        # @param RedirectURL: 实名认证授权地址，认证发起方需要重定向到这个地址获取认证用户的授权，仅能在微信环境下打开。
        # @type RedirectURL: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AuthToken, :RedirectURL, :RequestId
        
        def initialize(authtoken=nil, redirecturl=nil, requestid=nil)
          @AuthToken = authtoken
          @RedirectURL = redirecturl
          @RequestId = requestid
        end

        def deserialize(params)
          @AuthToken = params['AuthToken']
          @RedirectURL = params['RedirectURL']
          @RequestId = params['RequestId']
        end
      end

      # IdCardOCRVerification请求参数结构体
      class IdCardOCRVerificationRequest < TencentCloud::Common::AbstractModel
        # @param IdCard: 身份证号
        # 姓名和身份证号、ImageBase64、ImageUrl三者必须提供其中之一。若都提供了，则按照姓名和身份证号>ImageBase64>ImageUrl的优先级使用参数。
        # @type IdCard: String
        # @param Name: 姓名
        # @type Name: String
        # @param ImageBase64: 身份证人像面的 Base64 值
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        # @type ImageBase64: String
        # @param ImageUrl: 身份证人像面的 Url 地址
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param Encryption: 敏感数据加密信息。对传入信息（姓名、身份证号）有加密需求的用户可使用此参数，详情请点击左侧链接。
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
            @Encryption = Encryption.new.deserialize(params['Encryption'])
          end
        end
      end

      # IdCardOCRVerification返回参数结构体
      class IdCardOCRVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码，收费情况如下。
        # 收费结果码：
        # 0: 姓名和身份证号一致
        # -1: 姓名和身份证号不一致
        # 不收费结果码：
        # -2: 非法身份证号（长度、校验位等不正确）
        # -3: 非法姓名（长度、格式等不正确）
        # -4: 证件库服务异常
        # -5: 证件库中无此身份证记录
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param Name: 用于验证的姓名
        # @type Name: String
        # @param IdCard: 用于验证的身份证号
        # @type IdCard: String
        # @param Sex: OCR得到的性别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sex: String
        # @param Nation: OCR得到的民族
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nation: String
        # @param Birth: OCR得到的生日
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Birth: String
        # @param Address: OCR得到的地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param IdCard: 身份证号
        # @type IdCard: String
        # @param Name: 姓名
        # @type Name: String

        attr_accessor :IdCard, :Name
        
        def initialize(idcard=nil, name=nil)
          @IdCard = idcard
          @Name = name
        end

        def deserialize(params)
          @IdCard = params['IdCard']
          @Name = params['Name']
        end
      end

      # IdCardVerification返回参数结构体
      class IdCardVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码，收费情况如下。
        # 收费结果码：
        # 0: 姓名和身份证号一致
        # -1: 姓名和身份证号不一致
        # 不收费结果码：
        # -2: 非法身份证号（长度、校验位等不正确）
        # -3: 非法姓名（长度、格式等不正确）
        # -4: 证件库服务异常
        # -5: 证件库中无此身份证记录
        # @type Result: String
        # @param Description: 业务结果描述。
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

        attr_accessor :IdCard, :Name, :ImageBase64, :Optional
        
        def initialize(idcard=nil, name=nil, imagebase64=nil, optional=nil)
          @IdCard = idcard
          @Name = name
          @ImageBase64 = imagebase64
          @Optional = optional
        end

        def deserialize(params)
          @IdCard = params['IdCard']
          @Name = params['Name']
          @ImageBase64 = params['ImageBase64']
          @Optional = params['Optional']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # LivenessCompare请求参数结构体
      class LivenessCompareRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 用于人脸比对的照片，图片的Base64值；
        # Base64编码后的图片数据大小不超过3M，仅支持jpg、png格式。
        # 请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        # @type ImageBase64: String
        # @param VideoBase64: 用于活体检测的视频，视频的Base64值；
        # Base64编码后的大小不超过8M，支持mp4、avi、flv格式。
        # 请使用标准的Base64编码方式(带=补位)，编码规范参考RFC4648。
        # @type VideoBase64: String
        # @param LivenessType: 活体检测类型，取值：LIP/ACTION/SILENT。
        # LIP为数字模式，ACTION为动作模式，SILENT为静默模式，三种模式选择一种传入。
        # @type LivenessType: String
        # @param ValidateData: 数字模式传参：数字验证码(1234)，需先调用接口获取数字验证码；
        # 动作模式传参：传动作顺序(2,1 or 1,2)，需先调用接口获取动作顺序；
        # 静默模式传参：空。
        # @type ValidateData: String
        # @param Optional: 额外配置，传入JSON字符串。
        # {
        # "BestFrameNum": 2  //需要返回多张最佳截图，取值范围1-10
        # }
        # @type Optional: String

        attr_accessor :ImageBase64, :VideoBase64, :LivenessType, :ValidateData, :Optional
        
        def initialize(imagebase64=nil, videobase64=nil, livenesstype=nil, validatedata=nil, optional=nil)
          @ImageBase64 = imagebase64
          @VideoBase64 = videobase64
          @LivenessType = livenesstype
          @ValidateData = validatedata
          @Optional = optional
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @VideoBase64 = params['VideoBase64']
          @LivenessType = params['LivenessType']
          @ValidateData = params['ValidateData']
          @Optional = params['Optional']
        end
      end

      # LivenessCompare返回参数结构体
      class LivenessCompareResponse < TencentCloud::Common::AbstractModel
        # @param BestFrameBase64: 验证通过后的视频最佳截图照片，照片为BASE64编码后的值，jpg格式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BestFrameBase64: String
        # @param Sim: 相似度，取值范围 [0.00, 100.00]。推荐相似度大于等于70时可判断为同一人，可根据具体场景自行调整阈值（阈值70的误通过率为千分之一，阈值80的误通过率是万分之一）。
        # @type Sim: Float
        # @param Result: 业务错误码，成功情况返回Success, 错误情况请参考下方错误码 列表中FailedOperation部分
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param BestFrameList: 最佳截图列表，仅在配置了返回多张最佳截图时返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BestFrameList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param IdCard: 身份证号
        # @type IdCard: String
        # @param Name: 姓名。中文请使用UTF-8编码。
        # @type Name: String
        # @param VideoBase64: 用于活体检测的视频，视频的BASE64值；
        # BASE64编码后的大小不超过8M，支持mp4、avi、flv格式。
        # @type VideoBase64: String
        # @param LivenessType: 活体检测类型，取值：LIP/ACTION/SILENT。
        # LIP为数字模式，ACTION为动作模式，SILENT为静默模式，三种模式选择一种传入。
        # @type LivenessType: String
        # @param ValidateData: 数字模式传参：数字验证码(1234)，需先调用接口获取数字验证码；
        # 动作模式传参：传动作顺序(2,1 or 1,2)，需先调用接口获取动作顺序；
        # 静默模式传参：空。
        # @type ValidateData: String
        # @param Optional: 额外配置，传入JSON字符串。
        # {
        # "BestFrameNum": 2  //需要返回多张最佳截图，取值范围1-10
        # }
        # @type Optional: String

        attr_accessor :IdCard, :Name, :VideoBase64, :LivenessType, :ValidateData, :Optional
        
        def initialize(idcard=nil, name=nil, videobase64=nil, livenesstype=nil, validatedata=nil, optional=nil)
          @IdCard = idcard
          @Name = name
          @VideoBase64 = videobase64
          @LivenessType = livenesstype
          @ValidateData = validatedata
          @Optional = optional
        end

        def deserialize(params)
          @IdCard = params['IdCard']
          @Name = params['Name']
          @VideoBase64 = params['VideoBase64']
          @LivenessType = params['LivenessType']
          @ValidateData = params['ValidateData']
          @Optional = params['Optional']
        end
      end

      # LivenessRecognition返回参数结构体
      class LivenessRecognitionResponse < TencentCloud::Common::AbstractModel
        # @param BestFrameBase64: 验证通过后的视频最佳截图照片，照片为BASE64编码后的值，jpg格式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BestFrameBase64: String
        # @param Sim: 相似度，取值范围 [0.00, 100.00]。推荐相似度大于等于70时可判断为同一人，可根据具体场景自行调整阈值（阈值70的误通过率为千分之一，阈值80的误通过率是万分之一）
        # @type Sim: Float
        # @param Result: 业务错误码，成功情况返回Success, 错误情况请参考下方错误码 列表中FailedOperation部分
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param BestFrameList: 最佳截图列表，仅在配置了返回多张最佳截图时返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BestFrameList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
            @Encryption = Encryption.new.deserialize(params['Encryption'])
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Mobile: 手机号码
        # @type Mobile: String
        # @param Encryption: 敏感数据加密信息。对传入信息（手机号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :Mobile, :Encryption
        
        def initialize(mobile=nil, encryption=nil)
          @Mobile = mobile
          @Encryption = encryption
        end

        def deserialize(params)
          @Mobile = params['Mobile']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new.deserialize(params['Encryption'])
          end
        end
      end

      # MobileNetworkTimeVerification返回参数结构体
      class MobileNetworkTimeVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码，收费情况如下。
        # 收费结果码：
        # 0: 成功
        # -2: 手机号不存在
        # -3: 手机号存在，但无法查询到在网时长
        # 不收费结果码：
        # -1: 手机号格式不正确
        # -4: 验证中心服务繁忙
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param Range: 在网时长区间。
        # 格式为(a,b]，表示在网时长在a个月以上，b个月以下。若b为+时表示没有上限。
        # @type Range: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Mobile: 手机号码
        # @type Mobile: String
        # @param Encryption: 敏感数据加密信息。对传入信息（手机号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        # @type Encryption: :class:`Tencentcloud::Faceid.v20180301.models.Encryption`

        attr_accessor :Mobile, :Encryption
        
        def initialize(mobile=nil, encryption=nil)
          @Mobile = mobile
          @Encryption = encryption
        end

        def deserialize(params)
          @Mobile = params['Mobile']
          unless params['Encryption'].nil?
            @Encryption = Encryption.new.deserialize(params['Encryption'])
          end
        end
      end

      # MobileStatus返回参数结构体
      class MobileStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码，收费情况如下。
        # 收费结果码：
        # 0：成功
        # 不收费结果码：
        # -1：未查询到结果
        # -2：手机号格式不正确
        # -3：验证中心服务繁忙
        # @type Result: String
        # @param Description: 业务结果描述。
        # @type Description: String
        # @param StatusCode: 状态码：
        # 0：正常
        # 1：停机
        # 2：销号
        # 3：空号
        # 4：不在网
        # 99：未知状态
        # @type StatusCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # PhoneVerification请求参数结构体
      class PhoneVerificationRequest < TencentCloud::Common::AbstractModel
        # @param IdCard: 身份证号
        # @type IdCard: String
        # @param Name: 姓名
        # @type Name: String
        # @param Phone: 手机号
        # @type Phone: String
        # @param CiphertextBlob: 有加密需求的用户，接入传入kms的CiphertextBlob，关于数据加密可查阅 <a href="https://cloud.tencent.com/document/product/1007/47180">数据加密</a> 文档。
        # @type CiphertextBlob: String
        # @param EncryptList: 在使用加密服务时，填入要被加密的字段。本接口中可填入加密后的IdCard，Name，Phone中的一个或多个
        # @type EncryptList: Array
        # @param Iv: 有加密需求的用户，传入CBC加密的初试向量
        # @type Iv: String

        attr_accessor :IdCard, :Name, :Phone, :CiphertextBlob, :EncryptList, :Iv
        
        def initialize(idcard=nil, name=nil, phone=nil, ciphertextblob=nil, encryptlist=nil, iv=nil)
          @IdCard = idcard
          @Name = name
          @Phone = phone
          @CiphertextBlob = ciphertextblob
          @EncryptList = encryptlist
          @Iv = iv
        end

        def deserialize(params)
          @IdCard = params['IdCard']
          @Name = params['Name']
          @Phone = params['Phone']
          @CiphertextBlob = params['CiphertextBlob']
          @EncryptList = params['EncryptList']
          @Iv = params['Iv']
        end
      end

      # PhoneVerification返回参数结构体
      class PhoneVerificationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 认证结果码:
        # 收费结果码
        # 0: 认证通过
        # -4: 信息不一致（手机号已实名，但姓名和身份证号与实名信息不一致）
        # -5: 手机号未实名
        # 不收费结果码
        # -6: 手机号码不合法
        # -7: 身份证号码有误
        # -8: 姓名校验不通过
        # -9: 没有记录
        # -10: 认证未通过
        # -11: 验证中心服务繁忙
        # @type Result: String
        # @param Description: 业务结果描述。
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

    end
  end
end

