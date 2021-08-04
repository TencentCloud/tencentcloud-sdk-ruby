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
    module V20200713
      # AccountTipoffAccess请求参数结构体
      class AccountTipoffAccessRequest < TencentCloud::Common::AbstractModel
        # @param ReportedAccount: 被举报账号，长度低于 128 个字符
        # @type ReportedAccount: String
        # @param ReportedAccountType: 被举报账号类型(1-手机号 2-QQ号 3-微信号 4-QQ群号 5-微信openid 6-QQopenid 0-其它)
        # @type ReportedAccountType: Integer
        # @param EvilType: 被举报账号所属恶意类型(1-诈骗，2-骚扰，3-广告，4-违法违规，5-赌博传销，0-其他)
        # @type EvilType: Integer
        # @param SenderAccount: 举报者账号，长度低于 128 个字符
        # @type SenderAccount: String
        # @param SenderAccountType: 举报者账号类型(1-手机号 2-QQ号 3-微信号 4-QQ群号 5-微信openid 6-QQopenid 0-其它)
        # @type SenderAccountType: Integer
        # @param SenderIP: 举报者IP地址
        # @type SenderIP: String
        # @param EvilContent: 包含被举报账号的恶意内容（比如文本、图片链接，长度低于1024个字符）
        # @type EvilContent: String

        attr_accessor :ReportedAccount, :ReportedAccountType, :EvilType, :SenderAccount, :SenderAccountType, :SenderIP, :EvilContent
        
        def initialize(reportedaccount=nil, reportedaccounttype=nil, eviltype=nil, senderaccount=nil, senderaccounttype=nil, senderip=nil, evilcontent=nil)
          @ReportedAccount = reportedaccount
          @ReportedAccountType = reportedaccounttype
          @EvilType = eviltype
          @SenderAccount = senderaccount
          @SenderAccountType = senderaccounttype
          @SenderIP = senderip
          @EvilContent = evilcontent
        end

        def deserialize(params)
          @ReportedAccount = params['ReportedAccount']
          @ReportedAccountType = params['ReportedAccountType']
          @EvilType = params['EvilType']
          @SenderAccount = params['SenderAccount']
          @SenderAccountType = params['SenderAccountType']
          @SenderIP = params['SenderIP']
          @EvilContent = params['EvilContent']
        end
      end

      # AccountTipoffAccess返回参数结构体
      class AccountTipoffAccessResponse < TencentCloud::Common::AbstractModel
        # @param Data: 举报接口响应数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Tms.v20200713.models.TipoffResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TipoffResponse.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTextLib请求参数结构体
      class DescribeTextLibRequest < TencentCloud::Common::AbstractModel
        # @param StrategyType: 内容类型 text: 1; image: 2; audio: 3; video: 4
        # @type StrategyType: Integer

        attr_accessor :StrategyType
        
        def initialize(strategytype=nil)
          @StrategyType = strategytype
        end

        def deserialize(params)
          @StrategyType = params['StrategyType']
        end
      end

      # DescribeTextLib返回参数结构体
      class DescribeTextLibResponse < TencentCloud::Common::AbstractModel
        # @param TextLib: 文本库id和name列表
        # @type TextLib: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TextLib, :RequestId
        
        def initialize(textlib=nil, requestid=nil)
          @TextLib = textlib
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TextLib'].nil?
            @TextLib = []
            params['TextLib'].each do |i|
              textlib_tmp = TextLib.new
              textlib_tmp.deserialize(i)
              @TextLib << textlib_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTextStat请求参数结构体
      class DescribeTextStatRequest < TencentCloud::Common::AbstractModel
        # @param AuditType: 审核类型 1: 机器审核; 2: 人工审核
        # @type AuditType: Integer
        # @param Filters: 查询条件
        # @type Filters: Array

        attr_accessor :AuditType, :Filters
        
        def initialize(audittype=nil, filters=nil)
          @AuditType = audittype
          @Filters = filters
        end

        def deserialize(params)
          @AuditType = params['AuditType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # DescribeTextStat返回参数结构体
      class DescribeTextStatResponse < TencentCloud::Common::AbstractModel
        # @param Overview: 识别结果统计
        # @type Overview: :class:`Tencentcloud::Tms.v20200713.models.Overview`
        # @param TrendCount: 识别量统计
        # @type TrendCount: Array
        # @param EvilCount: 违规数据分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EvilCount: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Overview, :TrendCount, :EvilCount, :RequestId
        
        def initialize(overview=nil, trendcount=nil, evilcount=nil, requestid=nil)
          @Overview = overview
          @TrendCount = trendcount
          @EvilCount = evilcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Overview'].nil?
            @Overview = Overview.new
            @Overview.deserialize(params['Overview'])
          end
          unless params['TrendCount'].nil?
            @TrendCount = []
            params['TrendCount'].each do |i|
              trendcount_tmp = TrendCount.new
              trendcount_tmp.deserialize(i)
              @TrendCount << trendcount_tmp
            end
          end
          unless params['EvilCount'].nil?
            @EvilCount = []
            params['EvilCount'].each do |i|
              evilcount_tmp = EvilCount.new
              evilcount_tmp.deserialize(i)
              @EvilCount << evilcount_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 文本返回的详细结果
      class DetailResults < TencentCloud::Common::AbstractModel
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        # 以及令人反感、不安全或不适宜的内容类型。
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

      # 违规数据分布
      class EvilCount < TencentCloud::Common::AbstractModel
        # @param EvilType: ----非必选，该参数功能暂未对外开放
        # @type EvilType: String
        # @param Count: 分布类型总量
        # @type Count: Integer

        attr_accessor :EvilType, :Count
        
        def initialize(eviltype=nil, count=nil)
          @EvilType = eviltype
          @Count = count
        end

        def deserialize(params)
          @EvilType = params['EvilType']
          @Count = params['Count']
        end
      end

      # 文本过滤条件
      class Filters < TencentCloud::Common::AbstractModel
        # @param Name: 查询字段：
        # 策略BizType
        # 子账号SubUin
        # 日期区间DateRange
        # @type Name: String
        # @param Values: 查询值
        # @type Values: Array

        attr_accessor :Name, :Values
        
        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 识别结果统计
      class Overview < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总调用量
        # @type TotalCount: Integer
        # @param TotalHour: 总调用时长
        # @type TotalHour: Integer
        # @param PassCount: 通过量
        # @type PassCount: Integer
        # @param PassHour: 通过时长
        # @type PassHour: Integer
        # @param EvilCount: 违规量
        # @type EvilCount: Integer
        # @param EvilHour: 违规时长
        # @type EvilHour: Integer
        # @param SuspectCount: 疑似违规量
        # @type SuspectCount: Integer
        # @param SuspectHour: 疑似违规时长
        # @type SuspectHour: Integer

        attr_accessor :TotalCount, :TotalHour, :PassCount, :PassHour, :EvilCount, :EvilHour, :SuspectCount, :SuspectHour
        
        def initialize(totalcount=nil, totalhour=nil, passcount=nil, passhour=nil, evilcount=nil, evilhour=nil, suspectcount=nil, suspecthour=nil)
          @TotalCount = totalcount
          @TotalHour = totalhour
          @PassCount = passcount
          @PassHour = passhour
          @EvilCount = evilcount
          @EvilHour = evilhour
          @SuspectCount = suspectcount
          @SuspectHour = suspecthour
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalHour = params['TotalHour']
          @PassCount = params['PassCount']
          @PassHour = params['PassHour']
          @EvilCount = params['EvilCount']
          @EvilHour = params['EvilHour']
          @SuspectCount = params['SuspectCount']
          @SuspectHour = params['SuspectHour']
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

      # 自定义库列表
      class TextLib < TencentCloud::Common::AbstractModel
        # @param LibId: 库id
        # @type LibId: Integer
        # @param LibName: 库名
        # @type LibName: String

        attr_accessor :LibId, :LibName
        
        def initialize(libid=nil, libname=nil)
          @LibId = libid
          @LibName = libname
        end

        def deserialize(params)
          @LibId = params['LibId']
          @LibName = params['LibName']
        end
      end

      # TextModeration请求参数结构体
      class TextModerationRequest < TencentCloud::Common::AbstractModel
        # @param Content: 文本内容Base64编码。限制原文长度不能超过10000个unicode字符
        # @type Content: String
        # @param BizType: 该字段用于标识业务场景。您可以在内容安全控制台创建对应的ID，配置不同的内容审核策略，通过接口调用，默认不填为0，后端使用默认策略
        # @type BizType: String
        # @param DataId: 数据ID，英文字母、下划线、-组成，不超过64个字符
        # @type DataId: String
        # @param User: 账号相关信息字段，填入后可识别违规风险账号
        # @type User: :class:`Tencentcloud::Tms.v20200713.models.User`
        # @param Device: 设备相关信息字段，填入后可识别违规风险设备
        # @type Device: :class:`Tencentcloud::Tms.v20200713.models.Device`

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
        # @param BizType: 您在入参时所填入的Biztype参数
        # @type BizType: String
        # @param EvilFlag: 数据是否属于恶意类型，0：正常 1：可疑
        # @type EvilFlag: Integer
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库，以及令人反感、不安全或不适宜的内容类型
        # @type Label: String
        # @param Suggestion: 建议您拿到判断结果后的执行操作
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        # @type Suggestion: String
        # @param Keywords: 文本命中的关键词信息，用于提示您文本违规的具体原因，可能会返回多个命中的关键词。（如：加我微信）
        # 如返回值为空，Score不为空，即识别结果（Label）是来自于语义模型判断的返回值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keywords: Array
        # @param Score: 机器判断当前分类的置信度，取值范围：0.00~100.00。分数越高，表示越有可能属于当前分类。
        # （如：色情 99.99，则该样本属于色情的置信度非常高。）
        # @type Score: Integer
        # @param DetailResults: 接口识别样本后返回的详细结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetailResults: Array
        # @param RiskDetails: 接口识别样本中存在违规账号风险的检测结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskDetails: Array
        # @param Extra: 扩展字段，用于特定信息返回，不同客户/Biztype下返回信息不同
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param DataId: 请求参数中的DataId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BizType, :EvilFlag, :Label, :Suggestion, :Keywords, :Score, :DetailResults, :RiskDetails, :Extra, :DataId, :RequestId
        
        def initialize(biztype=nil, evilflag=nil, label=nil, suggestion=nil, keywords=nil, score=nil, detailresults=nil, riskdetails=nil, extra=nil, dataid=nil, requestid=nil)
          @BizType = biztype
          @EvilFlag = evilflag
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
          @EvilFlag = params['EvilFlag']
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
          @RequestId = params['RequestId']
        end
      end

      # 举报接口响应数据
      class TipoffResponse < TencentCloud::Common::AbstractModel
        # @param ResultCode: 举报结果， "0-举报数据提交成功  99-举报数据提交失败"
        # @type ResultCode: Integer
        # @param ResultMsg: 结果描述
        # @type ResultMsg: String

        attr_accessor :ResultCode, :ResultMsg
        
        def initialize(resultcode=nil, resultmsg=nil)
          @ResultCode = resultcode
          @ResultMsg = resultmsg
        end

        def deserialize(params)
          @ResultCode = params['ResultCode']
          @ResultMsg = params['ResultMsg']
        end
      end

      # 识别量统计
      class TrendCount < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总调用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalHour: 总调用时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalHour: Integer
        # @param PassCount: 通过量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PassCount: Integer
        # @param PassHour: 通过时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PassHour: Integer
        # @param EvilCount: 违规量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EvilCount: Integer
        # @param EvilHour: 违规时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EvilHour: Integer
        # @param SuspectCount: 疑似违规量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuspectCount: Integer
        # @param SuspectHour: 疑似违规时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuspectHour: Integer
        # @param Date: 日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Date: String

        attr_accessor :TotalCount, :TotalHour, :PassCount, :PassHour, :EvilCount, :EvilHour, :SuspectCount, :SuspectHour, :Date
        
        def initialize(totalcount=nil, totalhour=nil, passcount=nil, passhour=nil, evilcount=nil, evilhour=nil, suspectcount=nil, suspecthour=nil, date=nil)
          @TotalCount = totalcount
          @TotalHour = totalhour
          @PassCount = passcount
          @PassHour = passhour
          @EvilCount = evilcount
          @EvilHour = evilhour
          @SuspectCount = suspectcount
          @SuspectHour = suspecthour
          @Date = date
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalHour = params['TotalHour']
          @PassCount = params['PassCount']
          @PassHour = params['PassHour']
          @EvilCount = params['EvilCount']
          @EvilHour = params['EvilHour']
          @SuspectCount = params['SuspectCount']
          @SuspectHour = params['SuspectHour']
          @Date = params['Date']
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

