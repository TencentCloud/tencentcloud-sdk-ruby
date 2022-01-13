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
      # 文本审核返回的详细结果
      class DetailResults < TencentCloud::Common::AbstractModel
        # @param Label: 该字段用于返回检测结果所对应的全部恶意标签。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param Suggestion: 该字段用于返回对应当前标签的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Keywords: 该字段用于返回检测文本命中的关键词信息，用于标注文本违规的具体原因（如：*加我微信*）。该参数可能会有多个返回值，代表命中的多个关键词；如返回值为空且Score不为空，则代表识别结果所对应的恶意标签（Label）是来自于语义模型判断的返回值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keywords: Array
        # @param Score: 该字段用于返回当前标签（Label）下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高** ），越高代表文本越有可能属于当前返回的标签；如：*色情 99*，则表明该文本非常有可能属于色情内容；*色情 0*，则表明该文本不属于色情内容。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param LibType: 该字段**仅当Label为Custom自定义关键词时有效**，用于返回自定义关键词对应的词库类型，取值为**1**（黑白库）和**2**（自定义关键词库），若未配置自定义关键词库,则默认值为1（黑白库匹配）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibType: Integer
        # @param LibId: 该字段**仅当Label为Custom：自定义关键词时该参数有效**,用于返回自定义库的ID，以方便自定义库管理和配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibId: String
        # @param LibName: 该字段**仅当Label为Custom：自定义关键词时该参数有效**,用于返回自定义库的名称,以方便自定义库管理和配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibName: String
        # @param SubLabel: 该字段用于返回当前标签（Label）下的二级标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubLabel: String

        attr_accessor :Label, :Suggestion, :Keywords, :Score, :LibType, :LibId, :LibName, :SubLabel
        
        def initialize(label=nil, suggestion=nil, keywords=nil, score=nil, libtype=nil, libid=nil, libname=nil, sublabel=nil)
          @Label = label
          @Suggestion = suggestion
          @Keywords = keywords
          @Score = score
          @LibType = libtype
          @LibId = libid
          @LibName = libname
          @SubLabel = sublabel
        end

        def deserialize(params)
          @Label = params['Label']
          @Suggestion = params['Suggestion']
          @Keywords = params['Keywords']
          @Score = params['Score']
          @LibType = params['LibType']
          @LibId = params['LibId']
          @LibName = params['LibName']
          @SubLabel = params['SubLabel']
        end
      end

      # 用于表示业务用户对应的设备信息
      class Device < TencentCloud::Common::AbstractModel
        # @param IP: 该字段表示业务用户对应设备的IP地址。<br>
        # 备注:目前仅支持IPv4地址记录，不支持IPv6地址记录。
        # @type IP: String
        # @param Mac: 该字段表示业务用户对应的MAC地址，以方便设备识别与管理；其格式与取值与标准MAC地址一致。
        # @type Mac: String
        # @param TokenId: *内测中，敬请期待。*
        # @type TokenId: String
        # @param DeviceId: *内测中，敬请期待。*
        # @type DeviceId: String
        # @param IMEI: 该字段表示业务用户对应设备的**IMEI码**（国际移动设备识别码），该识别码可用于识别每一部独立的手机等移动通信设备，方便设备识别与管理。<br>备注：格式为**15-17位纯数字**。
        # @type IMEI: String
        # @param IDFA: **iOS设备专用**，该字段表示业务用户对应的**IDFA**(广告标识符),这是由苹果公司提供的用于追踪用户的广告标识符，由一串16进制的32位数字和字母组成。<br>
        # 备注：苹果公司自2021年iOS14更新后允许用户手动关闭或者开启IDFA，故此字符串标记有效性可能有所降低。
        # @type IDFA: String
        # @param IDFV: **iOS设备专用**，该字段表示业务用户对应的**IDFV**(应用开发商标识符),这是由苹果公司提供的用于标注应用开发商的标识符，由一串16进制的32位数字和字母组成，可被用于唯一标识设备。
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
        # @param Label: 该字段用于返回账号信息检测对应的风险类别，取值为：**RiskAccount**（账号存在风险）、**RiskIP**（IP地址存在风险）、**RiskIMEI**（移动设备识别码存在风险）。
        # @type Label: String
        # @param Level: 该字段用于返回账号信息检测对应的风险等级，取值为：**1**（疑似存在风险）和**2**（存在恶意风险）。
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
        # @param Content: 该字段表示待检测对象的文本内容，文本需要按utf-8格式编码，长度不能超过10000个字符（按unicode编码计算），并进行 Base64加密
        # @type Content: String
        # @param BizType: 该字段表示策略的具体编号，用于接口调度，在内容安全控制台中可配置。若不传入Biztype参数（留空），则代表采用默认的识别策略；传入则会在审核时根据业务场景采取不同的审核策略。<br>备注：Biztype仅为数字、字母与下划线的组合，长度为3-32个字符；不同Biztype关联不同的业务场景与识别能力策略，调用前请确认正确的Biztype
        # @type BizType: String
        # @param DataId: 该字段表示您为待检测对象分配的数据ID，传入后可方便您对文件进行标识和管理。<br>取值：由英文字母（大小写均可）、数字及四个特殊符号（_，-，@，#）组成，**长度不超过64个字符**
        # @type DataId: String
        # @param User: 该字段表示待检测对象对应的用户相关信息，传入后可便于甄别相应违规风险用户
        # @type User: :class:`Tencentcloud::Tms.v20201229.models.User`
        # @param Device: 该字段表示待检测对象对应的设备相关信息，传入后可便于甄别相应违规风险设备
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
            @User = User.new
            @User.deserialize(params['User'])
          end
          unless params['Device'].nil?
            @Device = Device.new
            @Device.deserialize(params['Device'])
          end
        end
      end

      # TextModeration返回参数结构体
      class TextModerationResponse < TencentCloud::Common::AbstractModel
        # @param BizType: 该字段用于返回请求参数中的BizType参数
        # @type BizType: String
        # @param Label: 该字段用于返回检测结果（DetailResults）中所对应的**优先级最高的恶意标签**，表示模型推荐的审核结果，建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型
        # @type Label: String
        # @param Suggestion: 该字段用于返回后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        # @type Suggestion: String
        # @param Keywords: 该字段用于返回当前标签（Label）下被检测文本命中的关键词信息，用于标注文本违规的具体原因（如：*加我微信*）。该参数可能会有多个返回值，代表命中的多个关键词；如返回值为空且Score不为空，则代表识别结果所对应的恶意标签（Label）是来自于语义模型判断的返回值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keywords: Array
        # @param Score: 该字段用于返回当前标签（Label）下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高** ），越高代表文本越有可能属于当前返回的标签；如：*色情 99*，则表明该文本非常有可能属于色情内容；*色情 0*，则表明该文本不属于色情内容
        # @type Score: Integer
        # @param DetailResults: 该字段用于返回基于文本风险库审核的详细结果，返回值信息可参阅对应数据结构（DetailResults）的详细描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetailResults: Array
        # @param RiskDetails: 该字段用于返回文本检测中存在违规风险的账号检测结果，主要包括违规风险类别和风险等级信息，具体内容可参阅对应数据结构（RiskDetails）的详细描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskDetails: Array
        # @param Extra: 该字段用于返回根据您的需求配置的额外附加信息（Extra），如未配置则默认返回值为空。<br>备注：不同客户或Biztype下返回信息不同，如需配置该字段请提交工单咨询或联系售后专员处理
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param DataId: 该字段用于返回检测对象对应请求参数中的DataId，与输入的DataId字段中的内容对应
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataId: String
        # @param SubLabel: 该字段用于返回当前标签（Label）下的二级标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubLabel: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BizType, :Label, :Suggestion, :Keywords, :Score, :DetailResults, :RiskDetails, :Extra, :DataId, :SubLabel, :RequestId
        
        def initialize(biztype=nil, label=nil, suggestion=nil, keywords=nil, score=nil, detailresults=nil, riskdetails=nil, extra=nil, dataid=nil, sublabel=nil, requestid=nil)
          @BizType = biztype
          @Label = label
          @Suggestion = suggestion
          @Keywords = keywords
          @Score = score
          @DetailResults = detailresults
          @RiskDetails = riskdetails
          @Extra = extra
          @DataId = dataid
          @SubLabel = sublabel
          @RequestId = requestid
        end

        def deserialize(params)
          @BizType = params['BizType']
          @Label = params['Label']
          @Suggestion = params['Suggestion']
          @Keywords = params['Keywords']
          @Score = params['Score']
          unless params['DetailResults'].nil?
            @DetailResults = []
            params['DetailResults'].each do |i|
              detailresults_tmp = DetailResults.new
              detailresults_tmp.deserialize(i)
              @DetailResults << detailresults_tmp
            end
          end
          unless params['RiskDetails'].nil?
            @RiskDetails = []
            params['RiskDetails'].each do |i|
              riskdetails_tmp = RiskDetails.new
              riskdetails_tmp.deserialize(i)
              @RiskDetails << riskdetails_tmp
            end
          end
          @Extra = params['Extra']
          @DataId = params['DataId']
          @SubLabel = params['SubLabel']
          @RequestId = params['RequestId']
        end
      end

      # 用于表示业务用户的账号相关信息
      class User < TencentCloud::Common::AbstractModel
        # @param UserId: 该字段表示业务用户ID,填写后，系统可根据账号过往违规历史优化审核结果判定，有利于存在可疑违规风险时的辅助判断。<br>
        # 备注：该字段可传入微信openid、QQopenid、字符串等账号信息，与账号类别参数（AccountType）配合使用可确定唯一账号。
        # @type UserId: String
        # @param Nickname: 该字段表示业务用户对应的账号昵称信息。
        # @type Nickname: String
        # @param AccountType: 该字段表示业务用户ID对应的账号类型，取值：**1**-微信uin，**2**-QQ号，**3**-微信群uin，**4**-qq群号，**5**-微信openid，**6**-QQopenid，**7**-其它string。<br>
        # 该字段与账号ID参数（UserId）配合使用可确定唯一账号。
        # @type AccountType: Integer
        # @param Gender: 该字段表示业务用户对应账号的性别信息。<br>
        # 取值：**0**（默认值，代表性别未知）、**1**（男性）、**2**（女性）。
        # @type Gender: Integer
        # @param Age: 该字段表示业务用户对应账号的年龄信息。<br>
        # 取值：**0**（默认值，代表年龄未知）-（**自定义年龄上限**）之间的整数。
        # @type Age: Integer
        # @param Level: 该字段表示业务用户对应账号的等级信息。<br>
        # 取值：**0**（默认值，代表等级未知）、**1**（等级较低）、**2**（等级中等）、**3**（等级较高），目前**暂不支持自定义等级**。
        # @type Level: Integer
        # @param Phone: 该字段表示业务用户对应账号的手机号信息，支持全球各地区手机号的记录。<br>
        # 备注：请保持手机号格式的统一，如区号格式（086/+86）等。
        # @type Phone: String
        # @param HeadUrl: 该字段表示业务用户头像图片的访问链接(URL)，支持PNG、JPG、JPEG、BMP、GIF、WEBP格式。
        # 备注：头像图片大小不超过5MB，建议分辨率不低于256x256；图片下载时间限制为3秒，超过则会返回下载超时。
        # @type HeadUrl: String
        # @param Desc: 该字段表示业务用户的简介信息，支持汉字、英文及特殊符号，长度不超过5000个汉字字符。
        # @type Desc: String

        attr_accessor :UserId, :Nickname, :AccountType, :Gender, :Age, :Level, :Phone, :HeadUrl, :Desc
        
        def initialize(userid=nil, nickname=nil, accounttype=nil, gender=nil, age=nil, level=nil, phone=nil, headurl=nil, desc=nil)
          @UserId = userid
          @Nickname = nickname
          @AccountType = accounttype
          @Gender = gender
          @Age = age
          @Level = level
          @Phone = phone
          @HeadUrl = headurl
          @Desc = desc
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Nickname = params['Nickname']
          @AccountType = params['AccountType']
          @Gender = params['Gender']
          @Age = params['Age']
          @Level = params['Level']
          @Phone = params['Phone']
          @HeadUrl = params['HeadUrl']
          @Desc = params['Desc']
        end
      end

    end
  end
end

