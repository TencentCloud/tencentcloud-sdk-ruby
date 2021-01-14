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
  module Tms
    module V20201229
      # 文本返回的详细结果
      class DetailResults < TencentCloud::Common::AbstractModel
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        # 以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Keywords: 该标签下命中的关键词
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keywords: Array
        # @param Score: 该标签模型命中的分值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param LibType: 仅当Label为Custom自定义关键词时有效，表示自定义关键词库类型，1:黑白库，2：自定义库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibType: Integer
        # @param LibId: 仅当Label为Custom自定义关键词时有效，表示自定义库id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibId: String
        # @param LibName: 仅当Labe为Custom自定义关键词时有效，表示自定义库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibName: String

        attr_accessor :Label, :Suggestion, :Keywords, :Score, :LibType, :LibId, :LibName
        
        def initialize(label=nil, suggestion=nil, keywords=nil, score=nil, libtype=nil, libid=nil, libname=nil)
          @Label = label
          @Suggestion = suggestion
          @Keywords = keywords
          @Score = score
          @LibType = libtype
          @LibId = libid
          @LibName = libname
        end

        def deserialize(params)
          @Label = params['Label']
          @Suggestion = params['Suggestion']
          @Keywords = params['Keywords']
          @Score = params['Score']
          @LibType = params['LibType']
          @LibId = params['LibId']
          @LibName = params['LibName']
        end
      end

      # 设备信息
      class Device < TencentCloud::Common::AbstractModel
        # @param IP: 用户IP
        # @type IP: String
        # @param Mac: Mac地址
        # @type Mac: String
        # @param TokenId: 设备指纹Token
        # @type TokenId: String
        # @param DeviceId: 设备指纹ID
        # @type DeviceId: String
        # @param IMEI: 设备序列号
        # @type IMEI: String
        # @param IDFA: IOS设备，Identifier For Advertising（广告标识符）
        # @type IDFA: String
        # @param IDFV: IOS设备，IDFV - Identifier For Vendor（应用开发商标识符）
        # @type IDFV: String

        attr_accessor :IP, :Mac, :TokenId, :DeviceId, :IMEI, :IDFA, :IDFV
        
        def initialize(ip=nil, mac=nil, tokenid=nil, deviceid=nil, imei=nil, idfa=nil, idfv=nil)
          @IP = ip
          @Mac = mac
          @TokenId = tokenid
          @DeviceId = deviceid
          @IMEI = imei
          @IDFA = idfa
          @IDFV = idfv
        end

        def deserialize(params)
          @IP = params['IP']
          @Mac = params['Mac']
          @TokenId = params['TokenId']
          @DeviceId = params['DeviceId']
          @IMEI = params['IMEI']
          @IDFA = params['IDFA']
          @IDFV = params['IDFV']
        end
      end

      # 账号风险检测结果
      class RiskDetails < TencentCloud::Common::AbstractModel
        # @param Label: 风险类别，RiskAccount，RiskIP, RiskIMEI
        # @type Label: String
        # @param Level: 风险等级，1:疑似，2：恶意
        # @type Level: Integer

        attr_accessor :Label, :Level
        
        def initialize(label=nil, level=nil)
          @Label = label
          @Level = level
        end

        def deserialize(params)
          @Label = params['Label']
          @Level = params['Level']
        end
      end

      # TextModeration请求参数结构体
      class TextModerationRequest < TencentCloud::Common::AbstractModel
        # @param Content: 文本内容Base64编码。原文长度需小于15000字节，即5000个汉字以内。
        # @type Content: String
        # @param BizType: 该字段用于标识业务场景。您可以在内容安全控制台创建对应的ID，配置不同的内容审核策略，通过接口调用，默认不填为0，后端使用默认策略。 -- 该字段暂未开放。
        # @type BizType: String
        # @param DataId: 数据ID，英文字母、下划线、-组成，不超过64个字符
        # @type DataId: String
        # @param User: 账号相关信息字段，填入后可识别违规风险账号。
        # @type User: :class:`Tencentcloud::Tms.v20201229.models.User`
        # @param Device: 设备相关信息字段，填入后可识别违规风险设备。
        # @type Device: :class:`Tencentcloud::Tms.v20201229.models.Device`

        attr_accessor :Content, :BizType, :DataId, :User, :Device
        
        def initialize(content=nil, biztype=nil, dataid=nil, user=nil, device=nil)
          @Content = content
          @BizType = biztype
          @DataId = dataid
          @User = user
          @Device = device
        end

        def deserialize(params)
          @Content = params['Content']
          @BizType = params['BizType']
          @DataId = params['DataId']
          unless params['User'].nil?
            @User = User.new.deserialize(params[User])
          end
          unless params['Device'].nil?
            @Device = Device.new.deserialize(params[Device])
          end
        end
      end

      # TextModeration返回参数结构体
      class TextModerationResponse < TencentCloud::Common::AbstractModel
        # @param BizType: 您在入参时所填入的Biztype参数。 -- 该字段暂未开放。
        # @type BizType: String
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        # 以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        # @type Suggestion: String
        # @param Keywords: 文本命中的关键词信息，用于提示您文本违规的具体原因，可能会返回多个命中的关键词。（如：加我微信）
        # 如返回值为空，Score不为空，即识别结果（Label）是来自于语义模型判断的返回值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keywords: Array
        # @param Score: 机器判断当前分类的置信度，取值范围：0.00~100.00。分数越高，表示越有可能属于当前分类。
        # （如：色情 99.99，则该样本属于色情的置信度非常高。）
        # @type Score: Integer
        # @param DetailResults: 接口识别样本后返回的详细结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetailResults: Array
        # @param RiskDetails: 接口识别样本中存在违规账号风险的检测结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskDetails: Array
        # @param Extra: 扩展字段，用于特定信息返回，不同客户/Biztype下返回信息不同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param DataId: 请求参数中的DataId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BizType, :Label, :Suggestion, :Keywords, :Score, :DetailResults, :RiskDetails, :Extra, :DataId, :RequestId
        
        def initialize(biztype=nil, label=nil, suggestion=nil, keywords=nil, score=nil, detailresults=nil, riskdetails=nil, extra=nil, dataid=nil, requestid=nil)
          @BizType = biztype
          @Label = label
          @Suggestion = suggestion
          @Keywords = keywords
          @Score = score
          @DetailResults = detailresults
          @RiskDetails = riskdetails
          @Extra = extra
          @DataId = dataid
          @RequestId = requestid
        end

        def deserialize(params)
          @BizType = params['BizType']
          @Label = params['Label']
          @Suggestion = params['Suggestion']
          @Keywords = params['Keywords']
          @Score = params['Score']
          @DetailResults = params['DetailResults']
          @RiskDetails = params['RiskDetails']
          @Extra = params['Extra']
          @DataId = params['DataId']
          @RequestId = params['RequestId']
        end
      end

      # 用户相关信息
      class User < TencentCloud::Common::AbstractModel
        # @param UserId: 用户账号ID，如填写，会根据账号历史恶意情况，判定消息有害结果，特别是有利于可疑恶意情况下的辅助判断。账号可以填写微信uin、QQ号、微信openid、QQopenid、字符串等。该字段和账号类别确定唯一账号。
        # @type UserId: String
        # @param Nickname: 用户昵称
        # @type Nickname: String
        # @param AccountType: 账号类别，"1-微信uin 2-QQ号 3-微信群uin 4-qq群号 5-微信openid 6-QQopenid 7-其它string"
        # @type AccountType: Integer
        # @param Gender: 性别 默认0 未知 1 男性 2 女性
        # @type Gender: Integer
        # @param Age: 年龄 默认0 未知
        # @type Age: Integer
        # @param Level: 用户等级，默认0 未知 1 低 2 中 3 高
        # @type Level: Integer
        # @param Phone: 手机号
        # @type Phone: String

        attr_accessor :UserId, :Nickname, :AccountType, :Gender, :Age, :Level, :Phone
        
        def initialize(userid=nil, nickname=nil, accounttype=nil, gender=nil, age=nil, level=nil, phone=nil)
          @UserId = userid
          @Nickname = nickname
          @AccountType = accounttype
          @Gender = gender
          @Age = age
          @Level = level
          @Phone = phone
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Nickname = params['Nickname']
          @AccountType = params['AccountType']
          @Gender = params['Gender']
          @Age = params['Age']
          @Level = params['Level']
          @Phone = params['Phone']
        end
      end

    end
  end
end

