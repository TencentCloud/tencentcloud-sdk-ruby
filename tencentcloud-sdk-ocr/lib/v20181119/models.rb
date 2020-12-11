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
  module Ocr
    module V20181119
      # ArithmeticOCR请求参数结构体
      class ArithmeticOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # ArithmeticOCR返回参数结构体
      class ArithmeticOCRResponse < TencentCloud::Common::AbstractModel
        # @param TextDetections: 检测到的文本信息，具体内容请点击左侧链接。
        # @type TextDetections: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TextDetections, :RequestId
        
        def initialize(textdetections=nil, requestid=nil)
          @TextDetections = textdetections
          @RequestId = requestid
        end

        def deserialize(params)
          @TextDetections = params['TextDetections']
          @RequestId = params['RequestId']
        end
      end

      # BankCardOCR请求参数结构体
      class BankCardOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 7M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # BankCardOCR返回参数结构体
      class BankCardOCRResponse < TencentCloud::Common::AbstractModel
        # @param CardNo: 卡号
        # @type CardNo: String
        # @param BankInfo: 银行信息
        # @type BankInfo: String
        # @param ValidDate: 有效期
        # @type ValidDate: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CardNo, :BankInfo, :ValidDate, :RequestId
        
        def initialize(cardno=nil, bankinfo=nil, validdate=nil, requestid=nil)
          @CardNo = cardno
          @BankInfo = bankinfo
          @ValidDate = validdate
          @RequestId = requestid
        end

        def deserialize(params)
          @CardNo = params['CardNo']
          @BankInfo = params['BankInfo']
          @ValidDate = params['ValidDate']
          @RequestId = params['RequestId']
        end
      end

      # BizLicenseOCR请求参数结构体
      class BizLicenseOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 7M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # BizLicenseOCR返回参数结构体
      class BizLicenseOCRResponse < TencentCloud::Common::AbstractModel
        # @param RegNum: 统一社会信用代码（三合一之前为注册号）
        # @type RegNum: String
        # @param Name: 公司名称
        # @type Name: String
        # @param Capital: 注册资本
        # @type Capital: String
        # @param Person: 法定代表人
        # @type Person: String
        # @param Address: 地址
        # @type Address: String
        # @param Business: 经营范围
        # @type Business: String
        # @param Type: 主体类型
        # @type Type: String
        # @param Period: 营业期限
        # @type Period: String
        # @param ComposingForm: 组成形式
        # @type ComposingForm: String
        # @param SetDate: 成立日期
        # @type SetDate: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegNum, :Name, :Capital, :Person, :Address, :Business, :Type, :Period, :ComposingForm, :SetDate, :RequestId
        
        def initialize(regnum=nil, name=nil, capital=nil, person=nil, address=nil, business=nil, type=nil, period=nil, composingform=nil, setdate=nil, requestid=nil)
          @RegNum = regnum
          @Name = name
          @Capital = capital
          @Person = person
          @Address = address
          @Business = business
          @Type = type
          @Period = period
          @ComposingForm = composingform
          @SetDate = setdate
          @RequestId = requestid
        end

        def deserialize(params)
          @RegNum = params['RegNum']
          @Name = params['Name']
          @Capital = params['Capital']
          @Person = params['Person']
          @Address = params['Address']
          @Business = params['Business']
          @Type = params['Type']
          @Period = params['Period']
          @ComposingForm = params['ComposingForm']
          @SetDate = params['SetDate']
          @RequestId = params['RequestId']
        end
      end

      # 汽车票字段信息
      class BusInvoiceInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称（关键字）。
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段Name对应的字符串结果。
        # @type Value: String
        # @param Rect: 文本行在旋转纠正之后的图像中的像素坐标。
        # @type Rect: :class:`Tencentcloud::Ocr.v20181119.models.Rect`

        attr_accessor :Name, :Value, :Rect
        
        def initialize(name=nil, value=nil, rect=nil)
          @Name = name
          @Value = value
          @Rect = rect
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          unless params['Rect'].nil?
            @Rect = Rect.new.deserialize(params[Rect])
          end
        end
      end

      # BusInvoiceOCR请求参数结构体
      class BusInvoiceOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # BusInvoiceOCR返回参数结构体
      class BusInvoiceOCRResponse < TencentCloud::Common::AbstractModel
        # @param BusInvoiceInfos: 汽车票识别结果，具体内容请点击左侧链接。
        # @type BusInvoiceInfos: Array
        # @param Angle: 图片旋转角度（角度制），文本的水平方向为0°，顺时针为正，逆时针为负。
        # @type Angle: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BusInvoiceInfos, :Angle, :RequestId
        
        def initialize(businvoiceinfos=nil, angle=nil, requestid=nil)
          @BusInvoiceInfos = businvoiceinfos
          @Angle = angle
          @RequestId = requestid
        end

        def deserialize(params)
          @BusInvoiceInfos = params['BusInvoiceInfos']
          @Angle = params['Angle']
          @RequestId = params['RequestId']
        end
      end

      # 名片识别结果
      class BusinessCardInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称（关键字，可能重复，比如多个手机），能识别的字段名为：
        # 姓名、英文姓名、英文地址、公司、英文公司、职位、英文职位、部门、英文部门、手机、电话、传真、社交帐号、QQ、MSN、微信、微博、邮箱、邮编、网址、公司账号、其他。
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段name对应的字符串结果。
        # @type Value: String

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # BusinessCardOCR请求参数结构体
      class BusinessCardOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 7M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param Config: 可选字段，根据需要选择是否请求对应字段。
        # 目前支持的字段为：
        # RetImageType-“PROPROCESS” 图像预处理，string 类型。
        # 图像预处理功能为，检测图片倾斜的角度，将原本倾斜的图片围绕中心点转正，最终输出一张正的名片抠图。

        # SDK 设置方式参考：
        # Config = Json.stringify({"RetImageType":"PROPROCESS"})
        # API 3.0 Explorer 设置方式参考：
        # Config = {"RetImageType":"PROPROCESS"}
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

      # BusinessCardOCR返回参数结构体
      class BusinessCardOCRResponse < TencentCloud::Common::AbstractModel
        # @param BusinessCardInfos: 名片识别结果，具体内容请点击左侧链接。
        # @type BusinessCardInfos: Array
        # @param RetImageBase64: 返回图像预处理后的图片，图像预处理未开启时返回内容为空。
        # @type RetImageBase64: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BusinessCardInfos, :RetImageBase64, :RequestId
        
        def initialize(businesscardinfos=nil, retimagebase64=nil, requestid=nil)
          @BusinessCardInfos = businesscardinfos
          @RetImageBase64 = retimagebase64
          @RequestId = requestid
        end

        def deserialize(params)
          @BusinessCardInfos = params['BusinessCardInfos']
          @RetImageBase64 = params['RetImageBase64']
          @RequestId = params['RequestId']
        end
      end

      # 候选字符集(包含候选字Character以及置信度Confidence)
      class CandWord < TencentCloud::Common::AbstractModel
        # @param CandWords: 候选字符集的单词信息（包括单词Character和单词置信度confidence）
        # @type CandWords: Array

        attr_accessor :CandWords
        
        def initialize(candwords=nil)
          @CandWords = candwords
        end

        def deserialize(params)
          @CandWords = params['CandWords']
        end
      end

      # 购车发票识别结果
      class CarInvoiceInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称（关键字）。
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段name对应的字符串结果。
        # @type Value: String

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # CarInvoiceOCR请求参数结构体
      class CarInvoiceOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # CarInvoiceOCR返回参数结构体
      class CarInvoiceOCRResponse < TencentCloud::Common::AbstractModel
        # @param CarInvoiceInfos: 购车发票识别结果，具体内容请点击左侧链接。
        # @type CarInvoiceInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CarInvoiceInfos, :RequestId
        
        def initialize(carinvoiceinfos=nil, requestid=nil)
          @CarInvoiceInfos = carinvoiceinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @CarInvoiceInfos = params['CarInvoiceInfos']
          @RequestId = params['RequestId']
        end
      end

      # 坐标
      class Coord < TencentCloud::Common::AbstractModel
        # @param X: 横坐标
        # @type X: Integer
        # @param Y: 纵坐标
        # @type Y: Integer

        attr_accessor :X, :Y
        
        def initialize(x=nil, y=nil)
          @X = x
          @Y = y
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
        end
      end

      # DriverLicenseOCR请求参数结构体
      class DriverLicenseOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。图片下载时间不超过 3 秒。
        # 建议图片存储于腾讯云，可保障更高的下载速度和稳定性。
        # @type ImageUrl: String
        # @param CardSide: FRONT 为驾驶证主页正面（有红色印章的一面），
        # BACK 为驾驶证副页正面（有档案编号的一面）。
        # @type CardSide: String

        attr_accessor :ImageBase64, :ImageUrl, :CardSide
        
        def initialize(imagebase64=nil, imageurl=nil, cardside=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @CardSide = cardside
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @CardSide = params['CardSide']
        end
      end

      # DriverLicenseOCR返回参数结构体
      class DriverLicenseOCRResponse < TencentCloud::Common::AbstractModel
        # @param Name: 姓名
        # @type Name: String
        # @param Sex: 性别
        # @type Sex: String
        # @param Nationality: 国籍
        # @type Nationality: String
        # @param Address: 住址
        # @type Address: String
        # @param DateOfBirth: 出生日期
        # @type DateOfBirth: String
        # @param DateOfFirstIssue: 初次领证日期
        # @type DateOfFirstIssue: String
        # @param Class: 准驾车型
        # @type Class: String
        # @param StartDate: 有效期开始时间
        # @type StartDate: String
        # @param EndDate: 有效期截止时间
        # @type EndDate: String
        # @param CardCode: 证号
        # @type CardCode: String
        # @param ArchivesCode: 档案编号
        # @type ArchivesCode: String
        # @param Record: 记录
        # @type Record: String
        # @param RecognizeWarnCode: Code 告警码列表和释义：
        # -9102  复印件告警
        # -9103  翻拍件告警
        # -9106  ps告警
        # 注：告警码可以同时存在多个
        # @type RecognizeWarnCode: Array
        # @param RecognizeWarnMsg: 告警码说明：
        # WARN_DRIVER_LICENSE_COPY_CARD 复印件告警
        # WARN_DRIVER_LICENSE_SCREENED_CARD 翻拍件告警
        # WARN_DRIVER_LICENSE_PS_CARD ps告警
        # 注：告警信息可以同时存在多个
        # @type RecognizeWarnMsg: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Sex, :Nationality, :Address, :DateOfBirth, :DateOfFirstIssue, :Class, :StartDate, :EndDate, :CardCode, :ArchivesCode, :Record, :RecognizeWarnCode, :RecognizeWarnMsg, :RequestId
        
        def initialize(name=nil, sex=nil, nationality=nil, address=nil, dateofbirth=nil, dateoffirstissue=nil, class=nil, startdate=nil, enddate=nil, cardcode=nil, archivescode=nil, record=nil, recognizewarncode=nil, recognizewarnmsg=nil, requestid=nil)
          @Name = name
          @Sex = sex
          @Nationality = nationality
          @Address = address
          @DateOfBirth = dateofbirth
          @DateOfFirstIssue = dateoffirstissue
          @Class = class
          @StartDate = startdate
          @EndDate = enddate
          @CardCode = cardcode
          @ArchivesCode = archivescode
          @Record = record
          @RecognizeWarnCode = recognizewarncode
          @RecognizeWarnMsg = recognizewarnmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Sex = params['Sex']
          @Nationality = params['Nationality']
          @Address = params['Address']
          @DateOfBirth = params['DateOfBirth']
          @DateOfFirstIssue = params['DateOfFirstIssue']
          @Class = params['Class']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @CardCode = params['CardCode']
          @ArchivesCode = params['ArchivesCode']
          @Record = params['Record']
          @RecognizeWarnCode = params['RecognizeWarnCode']
          @RecognizeWarnMsg = params['RecognizeWarnMsg']
          @RequestId = params['RequestId']
        end
      end

      # 识别出的字段
      class DutyPaidProofInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称（关键字）。
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段Name对应的字符串结果。
        # @type Value: String
        # @param Rect: 文本行在旋转纠正之后的图像中的像素坐标。
        # @type Rect: :class:`Tencentcloud::Ocr.v20181119.models.Rect`

        attr_accessor :Name, :Value, :Rect
        
        def initialize(name=nil, value=nil, rect=nil)
          @Name = name
          @Value = value
          @Rect = rect
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          unless params['Rect'].nil?
            @Rect = Rect.new.deserialize(params[Rect])
          end
        end
      end

      # DutyPaidProofOCR请求参数结构体
      class DutyPaidProofOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # DutyPaidProofOCR返回参数结构体
      class DutyPaidProofOCRResponse < TencentCloud::Common::AbstractModel
        # @param DutyPaidProofInfos: 完税证明识别结果，具体内容请点击左侧链接。
        # @type DutyPaidProofInfos: Array
        # @param Angle: 图片旋转角度（角度制），文本的水平方向为0°，顺时针为正，逆时针为负。
        # @type Angle: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DutyPaidProofInfos, :Angle, :RequestId
        
        def initialize(dutypaidproofinfos=nil, angle=nil, requestid=nil)
          @DutyPaidProofInfos = dutypaidproofinfos
          @Angle = angle
          @RequestId = requestid
        end

        def deserialize(params)
          @DutyPaidProofInfos = params['DutyPaidProofInfos']
          @Angle = params['Angle']
          @RequestId = params['RequestId']
        end
      end

      # EduPaperOCR请求参数结构体
      class EduPaperOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param Config: 扩展配置信息。
        # 配置格式：{"option1":value1,"option2":value2}
        # 可配置信息：
        #       参数名称  是否必选   类型   可选值  默认值  描述
        #       task_type  否  Int32  [0,1]  1  用于选择任务类型: 0: 关闭版式分析与处理 1: 开启版式分析处理
        #       is_structuralization 否 Bool false\true true  用于选择是否结构化输出：false：返回包体返回通用输出 true：返回包体同时返回通用和结构化输出
        #       if_readable_format 否 Bool false\true false 是否按照版式整合通用文本/公式输出结果
        # 例子：
        # {"task_type": 1,"is_structuralization": true,"if_readable_format": true}
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

      # EduPaperOCR返回参数结构体
      class EduPaperOCRResponse < TencentCloud::Common::AbstractModel
        # @param EduPaperInfos: 检测到的文本信息，具体内容请点击左侧链接。
        # @type EduPaperInfos: Array
        # @param Angle: 图片旋转角度（角度制），文本的水平方向为0°；顺时针为正，逆时针为负。
        # @type Angle: Integer
        # @param QuestionBlockInfos: 结构化方式输出，具体内容请点击左侧链接。
        # @type QuestionBlockInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EduPaperInfos, :Angle, :QuestionBlockInfos, :RequestId
        
        def initialize(edupaperinfos=nil, angle=nil, questionblockinfos=nil, requestid=nil)
          @EduPaperInfos = edupaperinfos
          @Angle = angle
          @QuestionBlockInfos = questionblockinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @EduPaperInfos = params['EduPaperInfos']
          @Angle = params['Angle']
          @QuestionBlockInfos = params['QuestionBlockInfos']
          @RequestId = params['RequestId']
        end
      end

      # EnglishOCR请求参数结构体
      class EnglishOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param EnableCoordPoint: 单词四点坐标开关，开启可返回图片中单词的四点坐标。
        # 该参数默认值为false。
        # @type EnableCoordPoint: Boolean
        # @param EnableCandWord: 候选字开关，开启可返回识别时多个可能的候选字（每个候选字对应其置信度）。
        # 该参数默认值为false。
        # @type EnableCandWord: Boolean

        attr_accessor :ImageBase64, :ImageUrl, :EnableCoordPoint, :EnableCandWord
        
        def initialize(imagebase64=nil, imageurl=nil, enablecoordpoint=nil, enablecandword=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @EnableCoordPoint = enablecoordpoint
          @EnableCandWord = enablecandword
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @EnableCoordPoint = params['EnableCoordPoint']
          @EnableCandWord = params['EnableCandWord']
        end
      end

      # EnglishOCR返回参数结构体
      class EnglishOCRResponse < TencentCloud::Common::AbstractModel
        # @param TextDetections: 检测到的文本信息，具体内容请点击左侧链接。
        # @type TextDetections: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TextDetections, :RequestId
        
        def initialize(textdetections=nil, requestid=nil)
          @TextDetections = textdetections
          @RequestId = requestid
        end

        def deserialize(params)
          @TextDetections = params['TextDetections']
          @RequestId = params['RequestId']
        end
      end

      # 企业证照单个字段的内容
      class EnterpriseLicenseInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称。
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段Name对应的字符串结果。
        # @type Value: String

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # EnterpriseLicenseOCR请求参数结构体
      class EnterpriseLicenseOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # EnterpriseLicenseOCR返回参数结构体
      class EnterpriseLicenseOCRResponse < TencentCloud::Common::AbstractModel
        # @param EnterpriseLicenseInfos: 企业证照识别结果，具体内容请点击左侧链接。
        # @type EnterpriseLicenseInfos: Array
        # @param Angle: 图片旋转角度（角度制），文本的水平方向为0°，顺时针为正，逆时针为负。
        # @type Angle: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnterpriseLicenseInfos, :Angle, :RequestId
        
        def initialize(enterpriselicenseinfos=nil, angle=nil, requestid=nil)
          @EnterpriseLicenseInfos = enterpriselicenseinfos
          @Angle = angle
          @RequestId = requestid
        end

        def deserialize(params)
          @EnterpriseLicenseInfos = params['EnterpriseLicenseInfos']
          @Angle = params['Angle']
          @RequestId = params['RequestId']
        end
      end

      # EstateCertOCR请求参数结构体
      class EstateCertOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # EstateCertOCR返回参数结构体
      class EstateCertOCRResponse < TencentCloud::Common::AbstractModel
        # @param Obligee: 权利人
        # @type Obligee: String
        # @param Ownership: 共有情况
        # @type Ownership: String
        # @param Location: 坐落
        # @type Location: String
        # @param Unit: 不动产单元号
        # @type Unit: String
        # @param Type: 权利类型
        # @type Type: String
        # @param Property: 权利性质
        # @type Property: String
        # @param Usage: 用途
        # @type Usage: String
        # @param Area: 面积
        # @type Area: String
        # @param Term: 使用期限
        # @type Term: String
        # @param Other: 权利其他状况，多行会用换行符\n连接。
        # @type Other: String
        # @param Angle: 图片旋转角度
        # @type Angle: Float
        # @param Number: 不动产权号
        # @type Number: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Obligee, :Ownership, :Location, :Unit, :Type, :Property, :Usage, :Area, :Term, :Other, :Angle, :Number, :RequestId
        
        def initialize(obligee=nil, ownership=nil, location=nil, unit=nil, type=nil, property=nil, usage=nil, area=nil, term=nil, other=nil, angle=nil, number=nil, requestid=nil)
          @Obligee = obligee
          @Ownership = ownership
          @Location = location
          @Unit = unit
          @Type = type
          @Property = property
          @Usage = usage
          @Area = area
          @Term = term
          @Other = other
          @Angle = angle
          @Number = number
          @RequestId = requestid
        end

        def deserialize(params)
          @Obligee = params['Obligee']
          @Ownership = params['Ownership']
          @Location = params['Location']
          @Unit = params['Unit']
          @Type = params['Type']
          @Property = params['Property']
          @Usage = params['Usage']
          @Area = params['Area']
          @Term = params['Term']
          @Other = params['Other']
          @Angle = params['Angle']
          @Number = params['Number']
          @RequestId = params['RequestId']
        end
      end

      # 金融票据整单识别单个字段的内容
      class FinanBillInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称。
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段Name对应的字符串结果。
        # @type Value: String

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # FinanBillOCR请求参数结构体
      class FinanBillOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # FinanBillOCR返回参数结构体
      class FinanBillOCRResponse < TencentCloud::Common::AbstractModel
        # @param FinanBillInfos: 金融票据整单识别结果，具体内容请点击左侧链接。
        # @type FinanBillInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FinanBillInfos, :RequestId
        
        def initialize(finanbillinfos=nil, requestid=nil)
          @FinanBillInfos = finanbillinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @FinanBillInfos = params['FinanBillInfos']
          @RequestId = params['RequestId']
        end
      end

      # 金融票据切片识别单个字段的内容
      class FinanBillSliceInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称。
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段Name对应的字符串结果。
        # @type Value: String

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # FinanBillSliceOCR请求参数结构体
      class FinanBillSliceOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # FinanBillSliceOCR返回参数结构体
      class FinanBillSliceOCRResponse < TencentCloud::Common::AbstractModel
        # @param FinanBillSliceInfos: 金融票据切片识别结果，具体内容请点击左侧链接。
        # @type FinanBillSliceInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FinanBillSliceInfos, :RequestId
        
        def initialize(finanbillsliceinfos=nil, requestid=nil)
          @FinanBillSliceInfos = finanbillsliceinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @FinanBillSliceInfos = params['FinanBillSliceInfos']
          @RequestId = params['RequestId']
        end
      end

      # 机票行程单识别结果
      class FlightInvoiceInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称（关键字）。
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段 Name 对应的字符串结果。
        # @type Value: String

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # FlightInvoiceOCR请求参数结构体
      class FlightInvoiceOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # FlightInvoiceOCR返回参数结构体
      class FlightInvoiceOCRResponse < TencentCloud::Common::AbstractModel
        # @param FlightInvoiceInfos: 机票行程单识别结果，具体内容请点击左侧链接。
        # @type FlightInvoiceInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlightInvoiceInfos, :RequestId
        
        def initialize(flightinvoiceinfos=nil, requestid=nil)
          @FlightInvoiceInfos = flightinvoiceinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @FlightInvoiceInfos = params['FlightInvoiceInfos']
          @RequestId = params['RequestId']
        end
      end

      # FormulaOCR请求参数结构体
      class FormulaOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # FormulaOCR返回参数结构体
      class FormulaOCRResponse < TencentCloud::Common::AbstractModel
        # @param Angle: 图片旋转角度（角度制），文本的水平方向为0°；顺时针为正，逆时针为负
        # @type Angle: Integer
        # @param FormulaInfos: 检测到的文本信息，具体内容请点击左侧链接。
        # @type FormulaInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Angle, :FormulaInfos, :RequestId
        
        def initialize(angle=nil, formulainfos=nil, requestid=nil)
          @Angle = angle
          @FormulaInfos = formulainfos
          @RequestId = requestid
        end

        def deserialize(params)
          @Angle = params['Angle']
          @FormulaInfos = params['FormulaInfos']
          @RequestId = params['RequestId']
        end
      end

      # GeneralAccurateOCR请求参数结构体
      class GeneralAccurateOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 要求图片经Base64编码后不超过 7M，分辨率建议600*800以上，支持PNG、JPG、JPEG、BMP格式。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 要求图片经Base64编码后不超过 7M，分辨率建议600*800以上，支持PNG、JPG、JPEG、BMP格式。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # GeneralAccurateOCR返回参数结构体
      class GeneralAccurateOCRResponse < TencentCloud::Common::AbstractModel
        # @param TextDetections: 检测到的文本信息，包括文本行内容、置信度、文本行坐标以及文本行旋转纠正后的坐标，具体内容请点击左侧链接。
        # @type TextDetections: Array
        # @param Angel: 图片旋转角度（角度制），文本的水平方向为0°；顺时针为正，逆时针为负。
        # @type Angel: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TextDetections, :Angel, :RequestId
        
        def initialize(textdetections=nil, angel=nil, requestid=nil)
          @TextDetections = textdetections
          @Angel = angel
          @RequestId = requestid
        end

        def deserialize(params)
          @TextDetections = params['TextDetections']
          @Angel = params['Angel']
          @RequestId = params['RequestId']
        end
      end

      # GeneralBasicOCR请求参数结构体
      class GeneralBasicOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 要求图片经Base64编码后不超过 7M，分辨率建议600*800以上，支持PNG、JPG、JPEG、BMP格式。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 要求图片经Base64编码后不超过 7M，分辨率建议600*800以上，支持PNG、JPG、JPEG、BMP格式。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param Scene: 保留字段。
        # @type Scene: String
        # @param LanguageType: 识别语言类型。
        # 支持自动识别语言类型，同时支持自选语言种类，默认中英文混合(zh)，各种语言均支持与英文混合的文字识别。
        # 可选值：
        # zh\auto\jap\kor\
        # spa\fre\ger\por\
        # vie\may\rus\ita\
        # hol\swe\fin\dan\
        # nor\hun\tha\lat
        # 可选值分别表示：
        # 中英文混合、自动识别、日语、韩语、
        # 西班牙语、法语、德语、葡萄牙语、
        # 越南语、马来语、俄语、意大利语、
        # 荷兰语、瑞典语、芬兰语、丹麦语、
        # 挪威语、匈牙利语、泰语、拉丁语系。
        # @type LanguageType: String

        attr_accessor :ImageBase64, :ImageUrl, :Scene, :LanguageType
        
        def initialize(imagebase64=nil, imageurl=nil, scene=nil, languagetype=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @Scene = scene
          @LanguageType = languagetype
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @Scene = params['Scene']
          @LanguageType = params['LanguageType']
        end
      end

      # GeneralBasicOCR返回参数结构体
      class GeneralBasicOCRResponse < TencentCloud::Common::AbstractModel
        # @param TextDetections: 检测到的文本信息，包括文本行内容、置信度、文本行坐标以及文本行旋转纠正后的坐标，具体内容请点击左侧链接。
        # @type TextDetections: Array
        # @param Language: 检测到的语言类型，目前支持的语言类型参考入参LanguageType说明。
        # @type Language: String
        # @param Angel: 图片旋转角度（角度制），文本的水平方向为0°；顺时针为正，逆时针为负。点击查看<a href="https://cloud.tencent.com/document/product/866/45139">如何纠正倾斜文本</a>
        # @type Angel: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TextDetections, :Language, :Angel, :RequestId
        
        def initialize(textdetections=nil, language=nil, angel=nil, requestid=nil)
          @TextDetections = textdetections
          @Language = language
          @Angel = angel
          @RequestId = requestid
        end

        def deserialize(params)
          @TextDetections = params['TextDetections']
          @Language = params['Language']
          @Angel = params['Angel']
          @RequestId = params['RequestId']
        end
      end

      # GeneralEfficientOCR请求参数结构体
      class GeneralEfficientOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 要求图片经Base64编码后不超过 7M，分辨率建议600*800以上，支持PNG、JPG、JPEG、BMP格式。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 要求图片经Base64编码后不超过 7M，分辨率建议600*800以上，支持PNG、JPG、JPEG、BMP格式。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # GeneralEfficientOCR返回参数结构体
      class GeneralEfficientOCRResponse < TencentCloud::Common::AbstractModel
        # @param TextDetections: 检测到的文本信息，包括文本行内容、置信度、文本行坐标以及文本行旋转纠正后的坐标，具体内容请点击左侧链接。
        # @type TextDetections: Array
        # @param Angel: 图片旋转角度（角度制），文本的水平方向为0°；顺时针为正，逆时针为负。点击查看<a href="https://cloud.tencent.com/document/product/866/45139">如何纠正倾斜文本</a>
        # @type Angel: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TextDetections, :Angel, :RequestId
        
        def initialize(textdetections=nil, angel=nil, requestid=nil)
          @TextDetections = textdetections
          @Angel = angel
          @RequestId = requestid
        end

        def deserialize(params)
          @TextDetections = params['TextDetections']
          @Angel = params['Angel']
          @RequestId = params['RequestId']
        end
      end

      # GeneralFastOCR请求参数结构体
      class GeneralFastOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # GeneralFastOCR返回参数结构体
      class GeneralFastOCRResponse < TencentCloud::Common::AbstractModel
        # @param TextDetections: 检测到的文本信息，具体内容请点击左侧链接。
        # @type TextDetections: Array
        # @param Language: 检测到的语言，目前支持的语种范围为：简体中文、繁体中文、英文、日文、韩文。未来将陆续新增对更多语种的支持。
        # 返回结果含义为：zh - 中英混合，jap - 日文，kor - 韩文。
        # @type Language: String
        # @param Angel: 图片旋转角度（角度制），文本的水平方向为0°；顺时针为正，逆时针为负
        # @type Angel: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TextDetections, :Language, :Angel, :RequestId
        
        def initialize(textdetections=nil, language=nil, angel=nil, requestid=nil)
          @TextDetections = textdetections
          @Language = language
          @Angel = angel
          @RequestId = requestid
        end

        def deserialize(params)
          @TextDetections = params['TextDetections']
          @Language = params['Language']
          @Angel = params['Angel']
          @RequestId = params['RequestId']
        end
      end

      # GeneralHandwritingOCR请求参数结构体
      class GeneralHandwritingOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param Scene: 场景字段，默认不用填写。
        # 可选值:only_hw  表示只输出手写体识别结果，过滤印刷体。
        # @type Scene: String

        attr_accessor :ImageBase64, :ImageUrl, :Scene
        
        def initialize(imagebase64=nil, imageurl=nil, scene=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @Scene = scene
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @Scene = params['Scene']
        end
      end

      # GeneralHandwritingOCR返回参数结构体
      class GeneralHandwritingOCRResponse < TencentCloud::Common::AbstractModel
        # @param TextDetections: 检测到的文本信息，具体内容请点击左侧链接。
        # @type TextDetections: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TextDetections, :RequestId
        
        def initialize(textdetections=nil, requestid=nil)
          @TextDetections = textdetections
          @RequestId = requestid
        end

        def deserialize(params)
          @TextDetections = params['TextDetections']
          @RequestId = params['RequestId']
        end
      end

      # HmtResidentPermitOCR请求参数结构体
      class HmtResidentPermitOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param CardSide: FRONT：有照片的一面（人像面），
        # BACK：无照片的一面（国徽面），
        # 该参数如果不填或填错，将为您自动判断正反面。
        # @type CardSide: String

        attr_accessor :ImageBase64, :ImageUrl, :CardSide
        
        def initialize(imagebase64=nil, imageurl=nil, cardside=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @CardSide = cardside
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @CardSide = params['CardSide']
        end
      end

      # HmtResidentPermitOCR返回参数结构体
      class HmtResidentPermitOCRResponse < TencentCloud::Common::AbstractModel
        # @param Name: 证件姓名
        # @type Name: String
        # @param Sex: 性别
        # @type Sex: String
        # @param Birth: 出生日期
        # @type Birth: String
        # @param Address: 地址
        # @type Address: String
        # @param IdCardNo: 身份证号
        # @type IdCardNo: String
        # @param CardType: 0-正面
        # 1-反面
        # @type CardType: Integer
        # @param ValidDate: 证件有效期限
        # @type ValidDate: String
        # @param Authority: 签发机关
        # @type Authority: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Sex, :Birth, :Address, :IdCardNo, :CardType, :ValidDate, :Authority, :RequestId
        
        def initialize(name=nil, sex=nil, birth=nil, address=nil, idcardno=nil, cardtype=nil, validdate=nil, authority=nil, requestid=nil)
          @Name = name
          @Sex = sex
          @Birth = birth
          @Address = address
          @IdCardNo = idcardno
          @CardType = cardtype
          @ValidDate = validdate
          @Authority = authority
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Sex = params['Sex']
          @Birth = params['Birth']
          @Address = params['Address']
          @IdCardNo = params['IdCardNo']
          @CardType = params['CardType']
          @ValidDate = params['ValidDate']
          @Authority = params['Authority']
          @RequestId = params['RequestId']
        end
      end

      # IDCardOCR请求参数结构体
      class IDCardOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        # 建议图片存储于腾讯云，可保障更高的下载速度和稳定性。
        # @type ImageUrl: String
        # @param CardSide: FRONT：身份证有照片的一面（人像面），
        # BACK：身份证有国徽的一面（国徽面），
        # 该参数如果不填，将为您自动判断身份证正反面。
        # @type CardSide: String
        # @param Config: 以下可选字段均为bool 类型，默认false：
        # CropIdCard，身份证照片裁剪（去掉证件外多余的边缘、自动矫正拍摄角度）
        # CropPortrait，人像照片裁剪（自动抠取身份证头像区域）
        # CopyWarn，复印件告警
        # BorderCheckWarn，边框和框内遮挡告警
        # ReshootWarn，翻拍告警
        # DetectPsWarn，PS检测告警
        # TempIdWarn，临时身份证告警
        # InvalidDateWarn，身份证有效日期不合法告警
        # Quality，图片质量分数（评价图片的模糊程度）
        # MultiCardDetect，是否开启多卡证检测

        # SDK 设置方式参考：
        # Config = Json.stringify({"CropIdCard":true,"CropPortrait":true})
        # API 3.0 Explorer 设置方式参考：
        # Config = {"CropIdCard":true,"CropPortrait":true}
        # @type Config: String

        attr_accessor :ImageBase64, :ImageUrl, :CardSide, :Config
        
        def initialize(imagebase64=nil, imageurl=nil, cardside=nil, config=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @CardSide = cardside
          @Config = config
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @CardSide = params['CardSide']
          @Config = params['Config']
        end
      end

      # IDCardOCR返回参数结构体
      class IDCardOCRResponse < TencentCloud::Common::AbstractModel
        # @param Name: 姓名（人像面）
        # @type Name: String
        # @param Sex: 性别（人像面）
        # @type Sex: String
        # @param Nation: 民族（人像面）
        # @type Nation: String
        # @param Birth: 出生日期（人像面）
        # @type Birth: String
        # @param Address: 地址（人像面）
        # @type Address: String
        # @param IdNum: 身份证号（人像面）
        # @type IdNum: String
        # @param Authority: 发证机关（国徽面）
        # @type Authority: String
        # @param ValidDate: 证件有效期（国徽面）
        # @type ValidDate: String
        # @param AdvancedInfo: 扩展信息，不请求则不返回，具体输入参考示例3和示例4。
        # IdCard，裁剪后身份证照片的base64编码，请求 Config.CropIdCard 时返回；
        # Portrait，身份证头像照片的base64编码，请求 Config.CropPortrait 时返回；

        # Quality，图片质量分数，请求 Config.Quality 时返回（取值范围：0~100，分数越低越模糊，建议阈值≥50）;
        # BorderCodeValue，身份证边框不完整告警阈值分数，请求 Config.BorderCheckWarn时返回（取值范围：0~100，分数越低边框遮挡可能性越低，建议阈值≥50）;

        # WarnInfos，告警信息，Code 告警码列表和释义：
        # -9100	身份证有效日期不合法告警，
        # -9101	身份证边框不完整告警，
        # -9102	身份证复印件告警，
        # -9103	身份证翻拍告警，
        # -9105	身份证框内遮挡告警，
        # -9104	临时身份证告警，
        # -9106	身份证 PS 告警。
        # @type AdvancedInfo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Sex, :Nation, :Birth, :Address, :IdNum, :Authority, :ValidDate, :AdvancedInfo, :RequestId
        
        def initialize(name=nil, sex=nil, nation=nil, birth=nil, address=nil, idnum=nil, authority=nil, validdate=nil, advancedinfo=nil, requestid=nil)
          @Name = name
          @Sex = sex
          @Nation = nation
          @Birth = birth
          @Address = address
          @IdNum = idnum
          @Authority = authority
          @ValidDate = validdate
          @AdvancedInfo = advancedinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Sex = params['Sex']
          @Nation = params['Nation']
          @Birth = params['Birth']
          @Address = params['Address']
          @IdNum = params['IdNum']
          @Authority = params['Authority']
          @ValidDate = params['ValidDate']
          @AdvancedInfo = params['AdvancedInfo']
          @RequestId = params['RequestId']
        end
      end

      # InstitutionOCR请求参数结构体
      class InstitutionOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # InstitutionOCR返回参数结构体
      class InstitutionOCRResponse < TencentCloud::Common::AbstractModel
        # @param RegId: 注册号
        # @type RegId: String
        # @param ValidDate: 有效期
        # @type ValidDate: String
        # @param Location: 住所
        # @type Location: String
        # @param Name: 名称
        # @type Name: String
        # @param LegalPerson: 法定代表人
        # @type LegalPerson: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegId, :ValidDate, :Location, :Name, :LegalPerson, :RequestId
        
        def initialize(regid=nil, validdate=nil, location=nil, name=nil, legalperson=nil, requestid=nil)
          @RegId = regid
          @ValidDate = validdate
          @Location = location
          @Name = name
          @LegalPerson = legalperson
          @RequestId = requestid
        end

        def deserialize(params)
          @RegId = params['RegId']
          @ValidDate = params['ValidDate']
          @Location = params['Location']
          @Name = params['Name']
          @LegalPerson = params['LegalPerson']
          @RequestId = params['RequestId']
        end
      end

      # 保险单据信息
      class InsuranceBillInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称（关键字）。
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段Name对应的字符串结果。
        # @type Value: String

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # InsuranceBillOCR请求参数结构体
      class InsuranceBillOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # InsuranceBillOCR返回参数结构体
      class InsuranceBillOCRResponse < TencentCloud::Common::AbstractModel
        # @param InsuranceBillInfos: 保险单据识别结果，具体内容请点击左侧链接。
        # @type InsuranceBillInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InsuranceBillInfos, :RequestId
        
        def initialize(insurancebillinfos=nil, requestid=nil)
          @InsuranceBillInfos = insurancebillinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @InsuranceBillInfos = params['InsuranceBillInfos']
          @RequestId = params['RequestId']
        end
      end

      # 票据检测结果
      class InvoiceDetectInfo < TencentCloud::Common::AbstractModel
        # @param Angle: 识别出的图片在混贴票据图片中的旋转角度。
        # @type Angle: Float
        # @param Type: 识别出的图片所属的票据类型。
        # -1：未知类型
        # 0：出租车发票
        # 1：定额发票
        # 2：火车票
        # 3：增值税发票
        # 4：客运限额发票
        # 5：机票行程单
        # 6：酒店账单
        # 7：完税证明
        # 8：通用机打发票
        # 9：汽车票
        # 10：轮船票
        # 11：增值税发票（卷票 ）
        # 12：购车发票
        # 13：过路过桥费发票
        # 14：购物小票
        # @type Type: Integer
        # @param Rect: 识别出的图片在混贴票据图片中的位置信息。与Angel结合可以得出原图位置，组成RotatedRect((X,Y), (Width, Height), Angle)，详情可参考OpenCV文档。
        # @type Rect: :class:`Tencentcloud::Ocr.v20181119.models.Rect`
        # @param Image: 入参 ReturnImage 为 True 时返回 Base64 编码后的图片。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Image: String

        attr_accessor :Angle, :Type, :Rect, :Image
        
        def initialize(angle=nil, type=nil, rect=nil, image=nil)
          @Angle = angle
          @Type = type
          @Rect = rect
          @Image = image
        end

        def deserialize(params)
          @Angle = params['Angle']
          @Type = params['Type']
          unless params['Rect'].nil?
            @Rect = Rect.new.deserialize(params[Rect])
          end
          @Image = params['Image']
        end
      end

      # 通用机打发票信息
      class InvoiceGeneralInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称（关键字）。
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段Name对应的字符串结果。
        # @type Value: String
        # @param Rect: 文本行在旋转纠正之后的图像中的像素坐标。
        # @type Rect: :class:`Tencentcloud::Ocr.v20181119.models.Rect`

        attr_accessor :Name, :Value, :Rect
        
        def initialize(name=nil, value=nil, rect=nil)
          @Name = name
          @Value = value
          @Rect = rect
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          unless params['Rect'].nil?
            @Rect = Rect.new.deserialize(params[Rect])
          end
        end
      end

      # InvoiceGeneralOCR请求参数结构体
      class InvoiceGeneralOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # InvoiceGeneralOCR返回参数结构体
      class InvoiceGeneralOCRResponse < TencentCloud::Common::AbstractModel
        # @param InvoiceGeneralInfos: 通用机打发票识别结果，具体内容请点击左侧链接。
        # @type InvoiceGeneralInfos: Array
        # @param Angle: 图片旋转角度（角度制），文本的水平方向为0°，顺时针为正，逆时针为负。
        # @type Angle: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InvoiceGeneralInfos, :Angle, :RequestId
        
        def initialize(invoicegeneralinfos=nil, angle=nil, requestid=nil)
          @InvoiceGeneralInfos = invoicegeneralinfos
          @Angle = angle
          @RequestId = requestid
        end

        def deserialize(params)
          @InvoiceGeneralInfos = params['InvoiceGeneralInfos']
          @Angle = params['Angle']
          @RequestId = params['RequestId']
        end
      end

      # 文本行在旋转纠正之后的图像中的像素坐标，表示为（左上角x, 左上角y，宽width，高height）
      class ItemCoord < TencentCloud::Common::AbstractModel
        # @param X: 左上角x
        # @type X: Integer
        # @param Y: 左上角y
        # @type Y: Integer
        # @param Width: 宽width
        # @type Width: Integer
        # @param Height: 高height
        # @type Height: Integer

        attr_accessor :X, :Y, :Width, :Height
        
        def initialize(x=nil, y=nil, width=nil, height=nil)
          @X = x
          @Y = y
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # LicensePlateOCR请求参数结构体
      class LicensePlateOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # LicensePlateOCR返回参数结构体
      class LicensePlateOCRResponse < TencentCloud::Common::AbstractModel
        # @param Number: 识别出的车牌号码。
        # @type Number: String
        # @param Confidence: 置信度，0 - 100 之间。
        # @type Confidence: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Number, :Confidence, :RequestId
        
        def initialize(number=nil, confidence=nil, requestid=nil)
          @Number = number
          @Confidence = confidence
          @RequestId = requestid
        end

        def deserialize(params)
          @Number = params['Number']
          @Confidence = params['Confidence']
          @RequestId = params['RequestId']
        end
      end

      # MLIDCardOCR请求参数结构体
      class MLIDCardOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。( 中国地区之外不支持这个字段 )
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param RetImage: 是否返回图片，默认false
        # @type RetImage: Boolean

        attr_accessor :ImageBase64, :ImageUrl, :RetImage
        
        def initialize(imagebase64=nil, imageurl=nil, retimage=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @RetImage = retimage
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @RetImage = params['RetImage']
        end
      end

      # MLIDCardOCR返回参数结构体
      class MLIDCardOCRResponse < TencentCloud::Common::AbstractModel
        # @param ID: 身份证号
        # @type ID: String
        # @param Name: 姓名
        # @type Name: String
        # @param Address: 地址
        # @type Address: String
        # @param Sex: 性别
        # @type Sex: String
        # @param Warn: 告警码
        # -9103	证照翻拍告警
        # -9102	证照复印件告警
        # -9106       证件遮挡告警
        # @type Warn: Array
        # @param Image: 证件图片
        # @type Image: String
        # @param AdvancedInfo: 扩展字段:
        # {
        #     ID:{
        #         Confidence:0.9999
        #     },
        #     Name:{
        #         Confidence:0.9996
        #     }
        # }
        # @type AdvancedInfo: String
        # @param Type: 证件类型
        # MyKad  身份证
        # MyPR    永居证
        # MyTentera   军官证
        # MyKAS    临时身份证
        # POLIS  警察
        # IKAD   劳工证
        # @type Type: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ID, :Name, :Address, :Sex, :Warn, :Image, :AdvancedInfo, :Type, :RequestId
        
        def initialize(id=nil, name=nil, address=nil, sex=nil, warn=nil, image=nil, advancedinfo=nil, type=nil, requestid=nil)
          @ID = id
          @Name = name
          @Address = address
          @Sex = sex
          @Warn = warn
          @Image = image
          @AdvancedInfo = advancedinfo
          @Type = type
          @RequestId = requestid
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @Address = params['Address']
          @Sex = params['Sex']
          @Warn = params['Warn']
          @Image = params['Image']
          @AdvancedInfo = params['AdvancedInfo']
          @Type = params['Type']
          @RequestId = params['RequestId']
        end
      end

      # MLIDPassportOCR请求参数结构体
      class MLIDPassportOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param RetImage: 是否返回图片
        # @type RetImage: Boolean

        attr_accessor :ImageBase64, :RetImage
        
        def initialize(imagebase64=nil, retimage=nil)
          @ImageBase64 = imagebase64
          @RetImage = retimage
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @RetImage = params['RetImage']
        end
      end

      # MLIDPassportOCR返回参数结构体
      class MLIDPassportOCRResponse < TencentCloud::Common::AbstractModel
        # @param ID: 护照ID
        # @type ID: String
        # @param Name: 姓名
        # @type Name: String
        # @param DateOfBirth: 出生日期
        # @type DateOfBirth: String
        # @param Sex: 性别（F女，M男）
        # @type Sex: String
        # @param DateOfExpiration: 有效期
        # @type DateOfExpiration: String
        # @param IssuingCountry: 发行国
        # @type IssuingCountry: String
        # @param Nationality: 国籍
        # @type Nationality: String
        # @param Warn: 告警码
        # -9103	证照翻拍告警
        # -9102	证照复印件告警
        # -9106       证件遮挡告警
        # @type Warn: Array
        # @param Image: 证件图片
        # @type Image: String
        # @param AdvancedInfo: 扩展字段:
        # {
        #     ID:{
        #         Confidence:0.9999
        #     },
        #     Name:{
        #         Confidence:0.9996
        #     }
        # }
        # @type AdvancedInfo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ID, :Name, :DateOfBirth, :Sex, :DateOfExpiration, :IssuingCountry, :Nationality, :Warn, :Image, :AdvancedInfo, :RequestId
        
        def initialize(id=nil, name=nil, dateofbirth=nil, sex=nil, dateofexpiration=nil, issuingcountry=nil, nationality=nil, warn=nil, image=nil, advancedinfo=nil, requestid=nil)
          @ID = id
          @Name = name
          @DateOfBirth = dateofbirth
          @Sex = sex
          @DateOfExpiration = dateofexpiration
          @IssuingCountry = issuingcountry
          @Nationality = nationality
          @Warn = warn
          @Image = image
          @AdvancedInfo = advancedinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @DateOfBirth = params['DateOfBirth']
          @Sex = params['Sex']
          @DateOfExpiration = params['DateOfExpiration']
          @IssuingCountry = params['IssuingCountry']
          @Nationality = params['Nationality']
          @Warn = params['Warn']
          @Image = params['Image']
          @AdvancedInfo = params['AdvancedInfo']
          @RequestId = params['RequestId']
        end
      end

      # MainlandPermitOCR请求参数结构体
      class MainlandPermitOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param RetProfile: 是否返回头像。默认不返回。
        # @type RetProfile: Boolean

        attr_accessor :ImageBase64, :ImageUrl, :RetProfile
        
        def initialize(imagebase64=nil, imageurl=nil, retprofile=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @RetProfile = retprofile
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @RetProfile = params['RetProfile']
        end
      end

      # MainlandPermitOCR返回参数结构体
      class MainlandPermitOCRResponse < TencentCloud::Common::AbstractModel
        # @param Name: 中文姓名
        # @type Name: String
        # @param EnglishName: 英文姓名
        # @type EnglishName: String
        # @param Sex: 性别
        # @type Sex: String
        # @param Birthday: 出生日期
        # @type Birthday: String
        # @param IssueAuthority: 签发机关
        # @type IssueAuthority: String
        # @param ValidDate: 有效期限
        # @type ValidDate: String
        # @param Number: 证件号
        # @type Number: String
        # @param IssueAddress: 签发地点
        # @type IssueAddress: String
        # @param IssueNumber: 签发次数
        # @type IssueNumber: String
        # @param Type: 证件类别， 如：台湾居民来往大陆通行证、港澳居民来往内地通行证。
        # @type Type: String
        # @param Profile: RetProfile为True时返回头像字段， Base64编码
        # @type Profile: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :EnglishName, :Sex, :Birthday, :IssueAuthority, :ValidDate, :Number, :IssueAddress, :IssueNumber, :Type, :Profile, :RequestId
        
        def initialize(name=nil, englishname=nil, sex=nil, birthday=nil, issueauthority=nil, validdate=nil, number=nil, issueaddress=nil, issuenumber=nil, type=nil, profile=nil, requestid=nil)
          @Name = name
          @EnglishName = englishname
          @Sex = sex
          @Birthday = birthday
          @IssueAuthority = issueauthority
          @ValidDate = validdate
          @Number = number
          @IssueAddress = issueaddress
          @IssueNumber = issuenumber
          @Type = type
          @Profile = profile
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @EnglishName = params['EnglishName']
          @Sex = params['Sex']
          @Birthday = params['Birthday']
          @IssueAuthority = params['IssueAuthority']
          @ValidDate = params['ValidDate']
          @Number = params['Number']
          @IssueAddress = params['IssueAddress']
          @IssueNumber = params['IssueNumber']
          @Type = params['Type']
          @Profile = params['Profile']
          @RequestId = params['RequestId']
        end
      end

      # MixedInvoiceDetect请求参数结构体
      class MixedInvoiceDetectRequest < TencentCloud::Common::AbstractModel
        # @param ReturnImage: 是否需要返回裁剪后的图片。
        # @type ReturnImage: Boolean
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ReturnImage, :ImageBase64, :ImageUrl
        
        def initialize(returnimage=nil, imagebase64=nil, imageurl=nil)
          @ReturnImage = returnimage
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ReturnImage = params['ReturnImage']
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # MixedInvoiceDetect返回参数结构体
      class MixedInvoiceDetectResponse < TencentCloud::Common::AbstractModel
        # @param InvoiceDetectInfos: 检测出的票据类型列表，具体内容请点击左侧链接。
        # @type InvoiceDetectInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InvoiceDetectInfos, :RequestId
        
        def initialize(invoicedetectinfos=nil, requestid=nil)
          @InvoiceDetectInfos = invoicedetectinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @InvoiceDetectInfos = params['InvoiceDetectInfos']
          @RequestId = params['RequestId']
        end
      end

      # 混贴票据单张发票识别信息
      class MixedInvoiceItem < TencentCloud::Common::AbstractModel
        # @param Code: 识别结果。
        # OK：表示识别成功；FailedOperation.UnsupportedInvioce：表示不支持识别；
        # FailedOperation.UnKnowError：表示识别失败；
        # 其它错误码见各个票据接口的定义。
        # @type Code: String
        # @param Type: 识别出的图片所属的票据类型。
        # -1：未知类型
        # 0：出租车发票
        # 1：定额发票
        # 2：火车票
        # 3：增值税发票
        # 5：机票行程单
        # 8：通用机打发票
        # 9：汽车票
        # 10：轮船票
        # 11：增值税发票（卷票 ）
        # 12：购车发票
        # 13：过路过桥费发票
        # @type Type: Integer
        # @param Rect: 识别出的图片在混贴票据图片中的位置信息。与Angel结合可以得出原图位置，组成RotatedRect((X,Y), (Width, Height), Angle)，详情可参考OpenCV文档。
        # @type Rect: :class:`Tencentcloud::Ocr.v20181119.models.Rect`
        # @param Angle: 识别出的图片在混贴票据图片中的旋转角度。
        # @type Angle: Float
        # @param SingleInvoiceInfos: 识别到的内容。
        # @type SingleInvoiceInfos: Array

        attr_accessor :Code, :Type, :Rect, :Angle, :SingleInvoiceInfos
        
        def initialize(code=nil, type=nil, rect=nil, angle=nil, singleinvoiceinfos=nil)
          @Code = code
          @Type = type
          @Rect = rect
          @Angle = angle
          @SingleInvoiceInfos = singleinvoiceinfos
        end

        def deserialize(params)
          @Code = params['Code']
          @Type = params['Type']
          unless params['Rect'].nil?
            @Rect = Rect.new.deserialize(params[Rect])
          end
          @Angle = params['Angle']
          @SingleInvoiceInfos = params['SingleInvoiceInfos']
        end
      end

      # MixedInvoiceOCR请求参数结构体
      class MixedInvoiceOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param Types: 需要识别的票据类型列表，为空或不填表示识别全部类型。
        # 0：出租车发票
        # 1：定额发票
        # 2：火车票
        # 3：增值税发票
        # 5：机票行程单
        # 8：通用机打发票
        # 9：汽车票
        # 10：轮船票
        # 11：增值税发票（卷票 ）
        # 12：购车发票
        # 13：过路过桥费发票
        # @type Types: Array

        attr_accessor :ImageBase64, :ImageUrl, :Types
        
        def initialize(imagebase64=nil, imageurl=nil, types=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @Types = types
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @Types = params['Types']
        end
      end

      # MixedInvoiceOCR返回参数结构体
      class MixedInvoiceOCRResponse < TencentCloud::Common::AbstractModel
        # @param MixedInvoiceItems: 混贴票据识别结果，具体内容请点击左侧链接。
        # @type MixedInvoiceItems: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MixedInvoiceItems, :RequestId
        
        def initialize(mixedinvoiceitems=nil, requestid=nil)
          @MixedInvoiceItems = mixedinvoiceitems
          @RequestId = requestid
        end

        def deserialize(params)
          @MixedInvoiceItems = params['MixedInvoiceItems']
          @RequestId = params['RequestId']
        end
      end

      # OrgCodeCertOCR请求参数结构体
      class OrgCodeCertOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # OrgCodeCertOCR返回参数结构体
      class OrgCodeCertOCRResponse < TencentCloud::Common::AbstractModel
        # @param OrgCode: 代码
        # @type OrgCode: String
        # @param Name: 机构名称
        # @type Name: String
        # @param Address: 地址
        # @type Address: String
        # @param ValidDate: 有效期
        # @type ValidDate: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrgCode, :Name, :Address, :ValidDate, :RequestId
        
        def initialize(orgcode=nil, name=nil, address=nil, validdate=nil, requestid=nil)
          @OrgCode = orgcode
          @Name = name
          @Address = address
          @ValidDate = validdate
          @RequestId = requestid
        end

        def deserialize(params)
          @OrgCode = params['OrgCode']
          @Name = params['Name']
          @Address = params['Address']
          @ValidDate = params['ValidDate']
          @RequestId = params['RequestId']
        end
      end

      # PassportOCR请求参数结构体
      class PassportOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        # 建议图片存储于腾讯云，可保障更高的下载速度和稳定性。
        # @type ImageUrl: String
        # @param Type: 默认填写CN
        # 支持中国大陆地区护照。
        # @type Type: String

        attr_accessor :ImageBase64, :ImageUrl, :Type
        
        def initialize(imagebase64=nil, imageurl=nil, type=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @Type = type
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @Type = params['Type']
        end
      end

      # PassportOCR返回参数结构体
      class PassportOCRResponse < TencentCloud::Common::AbstractModel
        # @param Country: 国家码
        # @type Country: String
        # @param PassportNo: 护照号
        # @type PassportNo: String
        # @param Sex: 性别
        # @type Sex: String
        # @param Nationality: 国籍
        # @type Nationality: String
        # @param BirthDate: 出生日期
        # @type BirthDate: String
        # @param BirthPlace: 出生地点
        # @type BirthPlace: String
        # @param IssueDate: 签发日期
        # @type IssueDate: String
        # @param IssuePlace: 签发地点
        # @type IssuePlace: String
        # @param ExpiryDate: 有效期
        # @type ExpiryDate: String
        # @param Signature: 持证人签名
        # @type Signature: String
        # @param CodeSet: 最下方第一行 MRZ Code 序列
        # @type CodeSet: String
        # @param CodeCrc: 最下方第二行 MRZ Code 序列
        # @type CodeCrc: String
        # @param Name: 姓名
        # @type Name: String
        # @param FamilyName: 姓
        # @type FamilyName: String
        # @param FirstName: 名
        # @type FirstName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Country, :PassportNo, :Sex, :Nationality, :BirthDate, :BirthPlace, :IssueDate, :IssuePlace, :ExpiryDate, :Signature, :CodeSet, :CodeCrc, :Name, :FamilyName, :FirstName, :RequestId
        
        def initialize(country=nil, passportno=nil, sex=nil, nationality=nil, birthdate=nil, birthplace=nil, issuedate=nil, issueplace=nil, expirydate=nil, signature=nil, codeset=nil, codecrc=nil, name=nil, familyname=nil, firstname=nil, requestid=nil)
          @Country = country
          @PassportNo = passportno
          @Sex = sex
          @Nationality = nationality
          @BirthDate = birthdate
          @BirthPlace = birthplace
          @IssueDate = issuedate
          @IssuePlace = issueplace
          @ExpiryDate = expirydate
          @Signature = signature
          @CodeSet = codeset
          @CodeCrc = codecrc
          @Name = name
          @FamilyName = familyname
          @FirstName = firstname
          @RequestId = requestid
        end

        def deserialize(params)
          @Country = params['Country']
          @PassportNo = params['PassportNo']
          @Sex = params['Sex']
          @Nationality = params['Nationality']
          @BirthDate = params['BirthDate']
          @BirthPlace = params['BirthPlace']
          @IssueDate = params['IssueDate']
          @IssuePlace = params['IssuePlace']
          @ExpiryDate = params['ExpiryDate']
          @Signature = params['Signature']
          @CodeSet = params['CodeSet']
          @CodeCrc = params['CodeCrc']
          @Name = params['Name']
          @FamilyName = params['FamilyName']
          @FirstName = params['FirstName']
          @RequestId = params['RequestId']
        end
      end

      # PermitOCR请求参数结构体
      class PermitOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # PermitOCR返回参数结构体
      class PermitOCRResponse < TencentCloud::Common::AbstractModel
        # @param Name: 姓名
        # @type Name: String
        # @param EnglishName: 英文姓名
        # @type EnglishName: String
        # @param Number: 证件号
        # @type Number: String
        # @param Sex: 性别
        # @type Sex: String
        # @param ValidDate: 有效期限
        # @type ValidDate: String
        # @param IssueAuthority: 签发机关
        # @type IssueAuthority: String
        # @param IssueAddress: 签发地点
        # @type IssueAddress: String
        # @param Birthday: 出生日期
        # @type Birthday: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :EnglishName, :Number, :Sex, :ValidDate, :IssueAuthority, :IssueAddress, :Birthday, :RequestId
        
        def initialize(name=nil, englishname=nil, number=nil, sex=nil, validdate=nil, issueauthority=nil, issueaddress=nil, birthday=nil, requestid=nil)
          @Name = name
          @EnglishName = englishname
          @Number = number
          @Sex = sex
          @ValidDate = validdate
          @IssueAuthority = issueauthority
          @IssueAddress = issueaddress
          @Birthday = birthday
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @EnglishName = params['EnglishName']
          @Number = params['Number']
          @Sex = params['Sex']
          @ValidDate = params['ValidDate']
          @IssueAuthority = params['IssueAuthority']
          @IssueAddress = params['IssueAddress']
          @Birthday = params['Birthday']
          @RequestId = params['RequestId']
        end
      end

      # 商品码信息
      class ProductDataRecord < TencentCloud::Common::AbstractModel
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param EnName: 产品名称(英文)
        # @type EnName: String
        # @param BrandName: 品牌名称
        # @type BrandName: String
        # @param Type: 规格型号
        # @type Type: String
        # @param Width: 宽度，单位毫米
        # @type Width: String
        # @param Height: 高度，单位毫米
        # @type Height: String
        # @param Depth: 深度，单位毫米
        # @type Depth: String
        # @param KeyWord: 关键字
        # @type KeyWord: String
        # @param Description: 简短描述
        # @type Description: String
        # @param ImageLink: 图片链接
        # @type ImageLink: Array
        # @param ManufacturerName: 厂家名称
        # @type ManufacturerName: String
        # @param ManufacturerAddress: 厂家地址
        # @type ManufacturerAddress: String
        # @param FirmCode: 企业社会信用代码
        # @type FirmCode: String
        # @param CheckResult: 表示数据查询状态
        # checkResult	状态说明
        # 1	 经查，该商品条码已在中国物品编码中心注册
        # 2	经查，该厂商识别代码已在中国物品编码中心注册，但编码信息未按规定通报。
        # 3	经查，该厂商识别代码已于xxxxx注销，请关注产品生产日期。
        # 4	经查，该企业以及条码未经条码中心注册，属于违法使用
        # -1	经查，该商品条码被冒用
        # -2	经查，该厂商识别代码已在中国物品编码中心注册，但该产品已经下市
        # S001                未找到该厂商识别代码的注册信息。
        # S002		该厂商识别代码已经在GS1注册，但编码信息未通报
        # S003		该商品条码已在GS1通报
        # S004		该商品条码已注销
        # S005		数字不正确。GS1前缀（3位国家/地区代码）用于特殊用途。
        # E001		完整性失败：此GTIN的长度无效。
        # E002		完整性失败：校验位不正确。
        # E003		完整性失败：字符串包含字母数字字符。
        # E004		数字不正确。GS1前缀（3位国家/地区代码）不存在。
        # E005		数字不正确。GS1前缀（3位国家/地区代码）用于特殊用途。
        # E006		数字不正确。尚未分配该GS1公司前缀。
        # E008	        经查，该企业厂商识别代码以及条码尚未通报
        # @type CheckResult: String
        # @param CategoryCode: UNSPSC分类码
        # @type CategoryCode: String

        attr_accessor :ProductName, :EnName, :BrandName, :Type, :Width, :Height, :Depth, :KeyWord, :Description, :ImageLink, :ManufacturerName, :ManufacturerAddress, :FirmCode, :CheckResult, :CategoryCode
        
        def initialize(productname=nil, enname=nil, brandname=nil, type=nil, width=nil, height=nil, depth=nil, keyword=nil, description=nil, imagelink=nil, manufacturername=nil, manufactureraddress=nil, firmcode=nil, checkresult=nil, categorycode=nil)
          @ProductName = productname
          @EnName = enname
          @BrandName = brandname
          @Type = type
          @Width = width
          @Height = height
          @Depth = depth
          @KeyWord = keyword
          @Description = description
          @ImageLink = imagelink
          @ManufacturerName = manufacturername
          @ManufacturerAddress = manufactureraddress
          @FirmCode = firmcode
          @CheckResult = checkresult
          @CategoryCode = categorycode
        end

        def deserialize(params)
          @ProductName = params['ProductName']
          @EnName = params['EnName']
          @BrandName = params['BrandName']
          @Type = params['Type']
          @Width = params['Width']
          @Height = params['Height']
          @Depth = params['Depth']
          @KeyWord = params['KeyWord']
          @Description = params['Description']
          @ImageLink = params['ImageLink']
          @ManufacturerName = params['ManufacturerName']
          @ManufacturerAddress = params['ManufacturerAddress']
          @FirmCode = params['FirmCode']
          @CheckResult = params['CheckResult']
          @CategoryCode = params['CategoryCode']
        end
      end

      # PropOwnerCertOCR请求参数结构体
      class PropOwnerCertOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # PropOwnerCertOCR返回参数结构体
      class PropOwnerCertOCRResponse < TencentCloud::Common::AbstractModel
        # @param Owner: 房地产权利人
        # @type Owner: String
        # @param Possession: 共有情况
        # @type Possession: String
        # @param RegisterTime: 登记时间
        # @type RegisterTime: String
        # @param Purpose: 规划用途
        # @type Purpose: String
        # @param Nature: 房屋性质
        # @type Nature: String
        # @param Location: 房地坐落
        # @type Location: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Owner, :Possession, :RegisterTime, :Purpose, :Nature, :Location, :RequestId
        
        def initialize(owner=nil, possession=nil, registertime=nil, purpose=nil, nature=nil, location=nil, requestid=nil)
          @Owner = owner
          @Possession = possession
          @RegisterTime = registertime
          @Purpose = purpose
          @Nature = nature
          @Location = location
          @RequestId = requestid
        end

        def deserialize(params)
          @Owner = params['Owner']
          @Possession = params['Possession']
          @RegisterTime = params['RegisterTime']
          @Purpose = params['Purpose']
          @Nature = params['Nature']
          @Location = params['Location']
          @RequestId = params['RequestId']
        end
      end

      # 图片大小
      class QrcodeImgSize < TencentCloud::Common::AbstractModel
        # @param Wide: 宽
        # @type Wide: Integer
        # @param High: 高
        # @type High: Integer

        attr_accessor :Wide, :High
        
        def initialize(wide=nil, high=nil)
          @Wide = wide
          @High = high
        end

        def deserialize(params)
          @Wide = params['Wide']
          @High = params['High']
        end
      end

      # QrcodeOCR请求参数结构体
      class QrcodeOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。要求图片经Base64编码后不超过 3M，支持PNG、JPG、JPEG格式。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。要求图片经Base64编码后不超过 3M，支持PNG、JPG、JPEG格式。
        # 建议图片存储于腾讯云，可保障更高的下载速度和稳定性。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # QrcodeOCR返回参数结构体
      class QrcodeOCRResponse < TencentCloud::Common::AbstractModel
        # @param CodeResults: 二维码/条形码识别结果信息，具体内容请点击左侧链接。
        # @type CodeResults: Array
        # @param ImgSize: 图片大小，具体内容请点击左侧链接。
        # @type ImgSize: :class:`Tencentcloud::Ocr.v20181119.models.QrcodeImgSize`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CodeResults, :ImgSize, :RequestId
        
        def initialize(coderesults=nil, imgsize=nil, requestid=nil)
          @CodeResults = coderesults
          @ImgSize = imgsize
          @RequestId = requestid
        end

        def deserialize(params)
          @CodeResults = params['CodeResults']
          unless params['ImgSize'].nil?
            @ImgSize = QrcodeImgSize.new.deserialize(params[ImgSize])
          end
          @RequestId = params['RequestId']
        end
      end

      # 二维码/条形码坐标信息
      class QrcodePositionObj < TencentCloud::Common::AbstractModel
        # @param LeftTop: 左上顶点坐标（如果是条形码，X和Y都为-1）
        # @type LeftTop: :class:`Tencentcloud::Ocr.v20181119.models.Coord`
        # @param RightTop: 右上顶点坐标（如果是条形码，X和Y都为-1）
        # @type RightTop: :class:`Tencentcloud::Ocr.v20181119.models.Coord`
        # @param RightBottom: 右下顶点坐标（如果是条形码，X和Y都为-1）
        # @type RightBottom: :class:`Tencentcloud::Ocr.v20181119.models.Coord`
        # @param LeftBottom: 左下顶点坐标（如果是条形码，X和Y都为-1）
        # @type LeftBottom: :class:`Tencentcloud::Ocr.v20181119.models.Coord`

        attr_accessor :LeftTop, :RightTop, :RightBottom, :LeftBottom
        
        def initialize(lefttop=nil, righttop=nil, rightbottom=nil, leftbottom=nil)
          @LeftTop = lefttop
          @RightTop = righttop
          @RightBottom = rightbottom
          @LeftBottom = leftbottom
        end

        def deserialize(params)
          unless params['LeftTop'].nil?
            @LeftTop = Coord.new.deserialize(params[LeftTop])
          end
          unless params['RightTop'].nil?
            @RightTop = Coord.new.deserialize(params[RightTop])
          end
          unless params['RightBottom'].nil?
            @RightBottom = Coord.new.deserialize(params[RightBottom])
          end
          unless params['LeftBottom'].nil?
            @LeftBottom = Coord.new.deserialize(params[LeftBottom])
          end
        end
      end

      # 二维码/条形码识别结果信息
      class QrcodeResultsInfo < TencentCloud::Common::AbstractModel
        # @param TypeName: 类型（二维码、条形码）
        # @type TypeName: String
        # @param Url: 二维码/条形码包含的地址
        # @type Url: String
        # @param Position: 二维码/条形码坐标（二维码会返回位置坐标，条形码暂不返回位置坐标，因此默认X和Y返回值均为-1）
        # @type Position: :class:`Tencentcloud::Ocr.v20181119.models.QrcodePositionObj`

        attr_accessor :TypeName, :Url, :Position
        
        def initialize(typename=nil, url=nil, position=nil)
          @TypeName = typename
          @Url = url
          @Position = position
        end

        def deserialize(params)
          @TypeName = params['TypeName']
          @Url = params['Url']
          unless params['Position'].nil?
            @Position = QrcodePositionObj.new.deserialize(params[Position])
          end
        end
      end

      # QueryBarCode请求参数结构体
      class QueryBarCodeRequest < TencentCloud::Common::AbstractModel
        # @param BarCode: 条形码
        # @type BarCode: String

        attr_accessor :BarCode
        
        def initialize(barcode=nil)
          @BarCode = barcode
        end

        def deserialize(params)
          @BarCode = params['BarCode']
        end
      end

      # QueryBarCode返回参数结构体
      class QueryBarCodeResponse < TencentCloud::Common::AbstractModel
        # @param BarCode: 条码
        # @type BarCode: String
        # @param ProductDataRecords: 条码信息数组
        # @type ProductDataRecords: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BarCode, :ProductDataRecords, :RequestId
        
        def initialize(barcode=nil, productdatarecords=nil, requestid=nil)
          @BarCode = barcode
          @ProductDataRecords = productdatarecords
          @RequestId = requestid
        end

        def deserialize(params)
          @BarCode = params['BarCode']
          @ProductDataRecords = params['ProductDataRecords']
          @RequestId = params['RequestId']
        end
      end

      # 数学试题识别结构化对象
      class QuestionBlockObj < TencentCloud::Common::AbstractModel
        # @param QuestionArr: 数学试题识别结构化信息数组
        # @type QuestionArr: Array

        attr_accessor :QuestionArr
        
        def initialize(questionarr=nil)
          @QuestionArr = questionarr
        end

        def deserialize(params)
          @QuestionArr = params['QuestionArr']
        end
      end

      # 试题识别结构化信息
      class QuestionObj < TencentCloud::Common::AbstractModel
        # @param QuestionTextNo: 题号
        # @type QuestionTextNo: String
        # @param QuestionTextType: 题型：
        # 1: "选择题"
        # 2: "填空题"
        # 3: "解答题"
        # @type QuestionTextType: Integer
        # @param QuestionText: 题干
        # @type QuestionText: String
        # @param QuestionOptions: 选择题选项，包含1个或多个option
        # @type QuestionOptions: String
        # @param QuestionSubquestion: 所有子题的question属性
        # @type QuestionSubquestion: String

        attr_accessor :QuestionTextNo, :QuestionTextType, :QuestionText, :QuestionOptions, :QuestionSubquestion
        
        def initialize(questiontextno=nil, questiontexttype=nil, questiontext=nil, questionoptions=nil, questionsubquestion=nil)
          @QuestionTextNo = questiontextno
          @QuestionTextType = questiontexttype
          @QuestionText = questiontext
          @QuestionOptions = questionoptions
          @QuestionSubquestion = questionsubquestion
        end

        def deserialize(params)
          @QuestionTextNo = params['QuestionTextNo']
          @QuestionTextType = params['QuestionTextType']
          @QuestionText = params['QuestionText']
          @QuestionOptions = params['QuestionOptions']
          @QuestionSubquestion = params['QuestionSubquestion']
        end
      end

      # QuotaInvoiceOCR请求参数结构体
      class QuotaInvoiceOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # QuotaInvoiceOCR返回参数结构体
      class QuotaInvoiceOCRResponse < TencentCloud::Common::AbstractModel
        # @param InvoiceNum: 发票号码
        # @type InvoiceNum: String
        # @param InvoiceCode: 发票代码
        # @type InvoiceCode: String
        # @param Rate: 大写金额
        # @type Rate: String
        # @param RateNum: 小写金额
        # @type RateNum: String
        # @param InvoiceType: 发票消费类型
        # @type InvoiceType: String
        # @param Province: 省
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Province: String
        # @param City: 市
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type City: String
        # @param HasStamp: 是否有公司印章（1有 0无 空为识别不出）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasStamp: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InvoiceNum, :InvoiceCode, :Rate, :RateNum, :InvoiceType, :Province, :City, :HasStamp, :RequestId
        
        def initialize(invoicenum=nil, invoicecode=nil, rate=nil, ratenum=nil, invoicetype=nil, province=nil, city=nil, hasstamp=nil, requestid=nil)
          @InvoiceNum = invoicenum
          @InvoiceCode = invoicecode
          @Rate = rate
          @RateNum = ratenum
          @InvoiceType = invoicetype
          @Province = province
          @City = city
          @HasStamp = hasstamp
          @RequestId = requestid
        end

        def deserialize(params)
          @InvoiceNum = params['InvoiceNum']
          @InvoiceCode = params['InvoiceCode']
          @Rate = params['Rate']
          @RateNum = params['RateNum']
          @InvoiceType = params['InvoiceType']
          @Province = params['Province']
          @City = params['City']
          @HasStamp = params['HasStamp']
          @RequestId = params['RequestId']
        end
      end

      # 矩形坐标
      class Rect < TencentCloud::Common::AbstractModel
        # @param X: 左上角x
        # @type X: Integer
        # @param Y: 左上角y
        # @type Y: Integer
        # @param Width: 宽度
        # @type Width: Integer
        # @param Height: 高度
        # @type Height: Integer

        attr_accessor :X, :Y, :Width, :Height
        
        def initialize(x=nil, y=nil, width=nil, height=nil)
          @X = x
          @Y = y
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # ResidenceBookletOCR请求参数结构体
      class ResidenceBookletOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # ResidenceBookletOCR返回参数结构体
      class ResidenceBookletOCRResponse < TencentCloud::Common::AbstractModel
        # @param HouseholdNumber: 户号
        # @type HouseholdNumber: String
        # @param Name: 姓名
        # @type Name: String
        # @param Sex: 性别
        # @type Sex: String
        # @param BirthPlace: 出生地
        # @type BirthPlace: String
        # @param Nation: 民族
        # @type Nation: String
        # @param NativePlace: 籍贯
        # @type NativePlace: String
        # @param BirthDate: 出生日期
        # @type BirthDate: String
        # @param IdCardNumber: 公民身份证件编号
        # @type IdCardNumber: String
        # @param EducationDegree: 文化程度
        # @type EducationDegree: String
        # @param ServicePlace: 服务处所
        # @type ServicePlace: String
        # @param Household: 户别
        # @type Household: String
        # @param Address: 住址
        # @type Address: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HouseholdNumber, :Name, :Sex, :BirthPlace, :Nation, :NativePlace, :BirthDate, :IdCardNumber, :EducationDegree, :ServicePlace, :Household, :Address, :RequestId
        
        def initialize(householdnumber=nil, name=nil, sex=nil, birthplace=nil, nation=nil, nativeplace=nil, birthdate=nil, idcardnumber=nil, educationdegree=nil, serviceplace=nil, household=nil, address=nil, requestid=nil)
          @HouseholdNumber = householdnumber
          @Name = name
          @Sex = sex
          @BirthPlace = birthplace
          @Nation = nation
          @NativePlace = nativeplace
          @BirthDate = birthdate
          @IdCardNumber = idcardnumber
          @EducationDegree = educationdegree
          @ServicePlace = serviceplace
          @Household = household
          @Address = address
          @RequestId = requestid
        end

        def deserialize(params)
          @HouseholdNumber = params['HouseholdNumber']
          @Name = params['Name']
          @Sex = params['Sex']
          @BirthPlace = params['BirthPlace']
          @Nation = params['Nation']
          @NativePlace = params['NativePlace']
          @BirthDate = params['BirthDate']
          @IdCardNumber = params['IdCardNumber']
          @EducationDegree = params['EducationDegree']
          @ServicePlace = params['ServicePlace']
          @Household = params['Household']
          @Address = params['Address']
          @RequestId = params['RequestId']
        end
      end

      # SealOCR请求参数结构体
      class SealOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。图片下载时间不超过 3 秒。
        # 建议图片存储于腾讯云，可保障更高的下载速度和稳定性。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # SealOCR返回参数结构体
      class SealOCRResponse < TencentCloud::Common::AbstractModel
        # @param SealBody: 印章内容
        # @type SealBody: String
        # @param Location: 印章坐标
        # @type Location: :class:`Tencentcloud::Ocr.v20181119.models.Rect`
        # @param OtherTexts: 其它文本内容
        # @type OtherTexts: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SealBody, :Location, :OtherTexts, :RequestId
        
        def initialize(sealbody=nil, location=nil, othertexts=nil, requestid=nil)
          @SealBody = sealbody
          @Location = location
          @OtherTexts = othertexts
          @RequestId = requestid
        end

        def deserialize(params)
          @SealBody = params['SealBody']
          unless params['Location'].nil?
            @Location = Rect.new.deserialize(params[Location])
          end
          @OtherTexts = params['OtherTexts']
          @RequestId = params['RequestId']
        end
      end

      # 轮船票字段信息
      class ShipInvoiceInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称（关键字）。
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段Name对应的字符串结果。
        # @type Value: String
        # @param Rect: 文本行在旋转纠正之后的图像中的像素坐标。
        # @type Rect: :class:`Tencentcloud::Ocr.v20181119.models.Rect`

        attr_accessor :Name, :Value, :Rect
        
        def initialize(name=nil, value=nil, rect=nil)
          @Name = name
          @Value = value
          @Rect = rect
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          unless params['Rect'].nil?
            @Rect = Rect.new.deserialize(params[Rect])
          end
        end
      end

      # ShipInvoiceOCR请求参数结构体
      class ShipInvoiceOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # ShipInvoiceOCR返回参数结构体
      class ShipInvoiceOCRResponse < TencentCloud::Common::AbstractModel
        # @param ShipInvoiceInfos: 轮船票识别结果，具体内容请点击左侧链接。
        # @type ShipInvoiceInfos: Array
        # @param Angle: 图片旋转角度（角度制），文本的水平方向为0°，顺时针为正，逆时针为负。
        # @type Angle: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ShipInvoiceInfos, :Angle, :RequestId
        
        def initialize(shipinvoiceinfos=nil, angle=nil, requestid=nil)
          @ShipInvoiceInfos = shipinvoiceinfos
          @Angle = angle
          @RequestId = requestid
        end

        def deserialize(params)
          @ShipInvoiceInfos = params['ShipInvoiceInfos']
          @Angle = params['Angle']
          @RequestId = params['RequestId']
        end
      end

      # 混贴票据中单张发票的内容
      class SingleInvoiceInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段name对应的字符串结果。
        # @type Value: String

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # TableOCR请求参数结构体
      class TableOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # TableOCR返回参数结构体
      class TableOCRResponse < TencentCloud::Common::AbstractModel
        # @param TextDetections: 检测到的文本信息，具体内容请点击左侧链接。
        # @type TextDetections: Array
        # @param Data: Base64 编码后的 Excel 数据。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TextDetections, :Data, :RequestId
        
        def initialize(textdetections=nil, data=nil, requestid=nil)
          @TextDetections = textdetections
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TextDetections = params['TextDetections']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # TaxiInvoiceOCR请求参数结构体
      class TaxiInvoiceOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # TaxiInvoiceOCR返回参数结构体
      class TaxiInvoiceOCRResponse < TencentCloud::Common::AbstractModel
        # @param InvoiceNum: 发票代码
        # @type InvoiceNum: String
        # @param InvoiceCode: 发票号码
        # @type InvoiceCode: String
        # @param Date: 日期
        # @type Date: String
        # @param Fare: 金额
        # @type Fare: String
        # @param GetOnTime: 上车时间
        # @type GetOnTime: String
        # @param GetOffTime: 下车时间
        # @type GetOffTime: String
        # @param Distance: 里程
        # @type Distance: String
        # @param Location: 发票所在地
        # @type Location: String
        # @param PlateNumber: 车牌号
        # @type PlateNumber: String
        # @param InvoiceType: 发票消费类型
        # @type InvoiceType: String
        # @param Province: 省
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Province: String
        # @param City: 市
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type City: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InvoiceNum, :InvoiceCode, :Date, :Fare, :GetOnTime, :GetOffTime, :Distance, :Location, :PlateNumber, :InvoiceType, :Province, :City, :RequestId
        
        def initialize(invoicenum=nil, invoicecode=nil, date=nil, fare=nil, getontime=nil, getofftime=nil, distance=nil, location=nil, platenumber=nil, invoicetype=nil, province=nil, city=nil, requestid=nil)
          @InvoiceNum = invoicenum
          @InvoiceCode = invoicecode
          @Date = date
          @Fare = fare
          @GetOnTime = getontime
          @GetOffTime = getofftime
          @Distance = distance
          @Location = location
          @PlateNumber = platenumber
          @InvoiceType = invoicetype
          @Province = province
          @City = city
          @RequestId = requestid
        end

        def deserialize(params)
          @InvoiceNum = params['InvoiceNum']
          @InvoiceCode = params['InvoiceCode']
          @Date = params['Date']
          @Fare = params['Fare']
          @GetOnTime = params['GetOnTime']
          @GetOffTime = params['GetOffTime']
          @Distance = params['Distance']
          @Location = params['Location']
          @PlateNumber = params['PlateNumber']
          @InvoiceType = params['InvoiceType']
          @Province = params['Province']
          @City = params['City']
          @RequestId = params['RequestId']
        end
      end

      # 算式识别结果
      class TextArithmetic < TencentCloud::Common::AbstractModel
        # @param DetectedText: 识别出的文本行内容
        # @type DetectedText: String
        # @param Result: 算式运算结果
        # @type Result: Boolean
        # @param Confidence: 保留字段，暂不支持
        # @type Confidence: Integer
        # @param Polygon: 原图文本行坐标，以四个顶点坐标表示（保留字段，暂不支持）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Polygon: Array
        # @param AdvancedInfo: 保留字段，暂不支持
        # @type AdvancedInfo: String
        # @param ItemCoord: 文本行旋转纠正之后在图像中的像素坐标，表示为（左上角x, 左上角y，宽width，高height）
        # @type ItemCoord: :class:`Tencentcloud::Ocr.v20181119.models.ItemCoord`
        # @param ExpressionType: 算式题型编号：
        # ‘1’: 加减乘除四则
        # ‘2’: 加减乘除已知结果求运算因子
        # ‘3’: 判断大小
        # ‘4’: 约等于估算
        # ‘5’: 带余数除法
        # ‘6’: 分数四则运算
        # ‘7’: 单位换算
        # ‘8’: 竖式加减法
        # ‘9’: 竖式乘除法
        # ‘10’: 脱式计算
        # ‘11’: 解方程
        # @type ExpressionType: String

        attr_accessor :DetectedText, :Result, :Confidence, :Polygon, :AdvancedInfo, :ItemCoord, :ExpressionType
        
        def initialize(detectedtext=nil, result=nil, confidence=nil, polygon=nil, advancedinfo=nil, itemcoord=nil, expressiontype=nil)
          @DetectedText = detectedtext
          @Result = result
          @Confidence = confidence
          @Polygon = polygon
          @AdvancedInfo = advancedinfo
          @ItemCoord = itemcoord
          @ExpressionType = expressiontype
        end

        def deserialize(params)
          @DetectedText = params['DetectedText']
          @Result = params['Result']
          @Confidence = params['Confidence']
          @Polygon = params['Polygon']
          @AdvancedInfo = params['AdvancedInfo']
          unless params['ItemCoord'].nil?
            @ItemCoord = ItemCoord.new.deserialize(params[ItemCoord])
          end
          @ExpressionType = params['ExpressionType']
        end
      end

      # TextDetect请求参数结构体
      class TextDetectRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # TextDetect返回参数结构体
      class TextDetectResponse < TencentCloud::Common::AbstractModel
        # @param HasText: 图片中是否包含文字。
        # @type HasText: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HasText, :RequestId
        
        def initialize(hastext=nil, requestid=nil)
          @HasText = hastext
          @RequestId = requestid
        end

        def deserialize(params)
          @HasText = params['HasText']
          @RequestId = params['RequestId']
        end
      end

      # 文字识别结果
      class TextDetection < TencentCloud::Common::AbstractModel
        # @param DetectedText: 识别出的文本行内容
        # @type DetectedText: String
        # @param Confidence: 置信度 0 ~100
        # @type Confidence: Integer
        # @param Polygon: 文本行坐标，以四个顶点坐标表示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Polygon: Array
        # @param AdvancedInfo: 此字段为扩展字段。
        # GeneralBasicOcr接口返回段落信息Parag，包含ParagNo。
        # @type AdvancedInfo: String
        # @param ItemPolygon: 文本行在旋转纠正之后的图像中的像素坐标，表示为（左上角x, 左上角y，宽width，高height）
        # @type ItemPolygon: :class:`Tencentcloud::Ocr.v20181119.models.ItemCoord`

        attr_accessor :DetectedText, :Confidence, :Polygon, :AdvancedInfo, :ItemPolygon
        
        def initialize(detectedtext=nil, confidence=nil, polygon=nil, advancedinfo=nil, itempolygon=nil)
          @DetectedText = detectedtext
          @Confidence = confidence
          @Polygon = polygon
          @AdvancedInfo = advancedinfo
          @ItemPolygon = itempolygon
        end

        def deserialize(params)
          @DetectedText = params['DetectedText']
          @Confidence = params['Confidence']
          @Polygon = params['Polygon']
          @AdvancedInfo = params['AdvancedInfo']
          unless params['ItemPolygon'].nil?
            @ItemPolygon = ItemCoord.new.deserialize(params[ItemPolygon])
          end
        end
      end

      # 英文识别结果
      class TextDetectionEn < TencentCloud::Common::AbstractModel
        # @param DetectedText: 识别出的文本行内容。
        # @type DetectedText: String
        # @param Confidence: 置信度 0 ~100。
        # @type Confidence: Integer
        # @param Polygon: 文本行坐标，以四个顶点坐标表示。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Polygon: Array
        # @param AdvancedInfo: 此字段为扩展字段。目前EnglishOCR接口返回内容为空。
        # @type AdvancedInfo: String
        # @param WordCoordPoint: 单词在原图中的四点坐标。
        # @type WordCoordPoint: Array
        # @param CandWord: 候选字符集(包含候选字Character以及置信度Confidence)。
        # @type CandWord: Array
        # @param Words: 识别出来的单词信息（包括单词Character和单词置信度confidence）
        # @type Words: Array

        attr_accessor :DetectedText, :Confidence, :Polygon, :AdvancedInfo, :WordCoordPoint, :CandWord, :Words
        
        def initialize(detectedtext=nil, confidence=nil, polygon=nil, advancedinfo=nil, wordcoordpoint=nil, candword=nil, words=nil)
          @DetectedText = detectedtext
          @Confidence = confidence
          @Polygon = polygon
          @AdvancedInfo = advancedinfo
          @WordCoordPoint = wordcoordpoint
          @CandWord = candword
          @Words = words
        end

        def deserialize(params)
          @DetectedText = params['DetectedText']
          @Confidence = params['Confidence']
          @Polygon = params['Polygon']
          @AdvancedInfo = params['AdvancedInfo']
          @WordCoordPoint = params['WordCoordPoint']
          @CandWord = params['CandWord']
          @Words = params['Words']
        end
      end

      # 数学试题识别结果
      class TextEduPaper < TencentCloud::Common::AbstractModel
        # @param Item: 识别出的字段名称（关键字）
        # @type Item: String
        # @param DetectedText: 识别出的字段名称对应的值，也就是字段Item对应的字符串结果
        # @type DetectedText: String
        # @param Itemcoord: 文本行在旋转纠正之后的图像中的像素坐标，表示为（左上角x, 左上角y，宽width，高height）
        # @type Itemcoord: :class:`Tencentcloud::Ocr.v20181119.models.ItemCoord`

        attr_accessor :Item, :DetectedText, :Itemcoord
        
        def initialize(item=nil, detectedtext=nil, itemcoord=nil)
          @Item = item
          @DetectedText = detectedtext
          @Itemcoord = itemcoord
        end

        def deserialize(params)
          @Item = params['Item']
          @DetectedText = params['DetectedText']
          unless params['Itemcoord'].nil?
            @Itemcoord = ItemCoord.new.deserialize(params[Itemcoord])
          end
        end
      end

      # 数学公式识别结果
      class TextFormula < TencentCloud::Common::AbstractModel
        # @param DetectedText: 识别出的文本行内容
        # @type DetectedText: String

        attr_accessor :DetectedText
        
        def initialize(detectedtext=nil)
          @DetectedText = detectedtext
        end

        def deserialize(params)
          @DetectedText = params['DetectedText']
        end
      end

      # 文字识别结果
      class TextGeneralHandwriting < TencentCloud::Common::AbstractModel
        # @param DetectedText: 识别出的文本行内容
        # @type DetectedText: String
        # @param Confidence: 置信度 0 - 100
        # @type Confidence: Integer
        # @param Polygon: 文本行坐标，以四个顶点坐标表示
        # @type Polygon: Array
        # @param AdvancedInfo: 此字段为扩展字段。
        # 能返回文本行的段落信息，例如：{\"Parag\":{\"ParagNo\":2}}，
        # 其中ParagNo为段落行，从1开始。
        # @type AdvancedInfo: String

        attr_accessor :DetectedText, :Confidence, :Polygon, :AdvancedInfo
        
        def initialize(detectedtext=nil, confidence=nil, polygon=nil, advancedinfo=nil)
          @DetectedText = detectedtext
          @Confidence = confidence
          @Polygon = polygon
          @AdvancedInfo = advancedinfo
        end

        def deserialize(params)
          @DetectedText = params['DetectedText']
          @Confidence = params['Confidence']
          @Polygon = params['Polygon']
          @AdvancedInfo = params['AdvancedInfo']
        end
      end

      # 表格识别结果
      class TextTable < TencentCloud::Common::AbstractModel
        # @param ColTl: 单元格左上角的列索引
        # @type ColTl: Integer
        # @param RowTl: 单元格左上角的行索引
        # @type RowTl: Integer
        # @param ColBr: 单元格右下角的列索引
        # @type ColBr: Integer
        # @param RowBr: 单元格右下角的行索引
        # @type RowBr: Integer
        # @param Text: 单元格文字
        # @type Text: String
        # @param Type: 单元格类型，包含body（表格主体）、header（表头）、footer（表尾）三种
        # @type Type: String
        # @param Confidence: 置信度 0 ~100
        # @type Confidence: Integer
        # @param Polygon: 文本行坐标，以四个顶点坐标表示
        # @type Polygon: Array
        # @param AdvancedInfo: 此字段为扩展字段
        # @type AdvancedInfo: String

        attr_accessor :ColTl, :RowTl, :ColBr, :RowBr, :Text, :Type, :Confidence, :Polygon, :AdvancedInfo
        
        def initialize(coltl=nil, rowtl=nil, colbr=nil, rowbr=nil, text=nil, type=nil, confidence=nil, polygon=nil, advancedinfo=nil)
          @ColTl = coltl
          @RowTl = rowtl
          @ColBr = colbr
          @RowBr = rowbr
          @Text = text
          @Type = type
          @Confidence = confidence
          @Polygon = polygon
          @AdvancedInfo = advancedinfo
        end

        def deserialize(params)
          @ColTl = params['ColTl']
          @RowTl = params['RowTl']
          @ColBr = params['ColBr']
          @RowBr = params['RowBr']
          @Text = params['Text']
          @Type = params['Type']
          @Confidence = params['Confidence']
          @Polygon = params['Polygon']
          @AdvancedInfo = params['AdvancedInfo']
        end
      end

      # 增值税发票识别结果
      class TextVatInvoice < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称（关键字）。
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段Name对应的字符串结果。
        # @type Value: String

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # 行驶证副页正面的识别结果
      class TextVehicleBack < TencentCloud::Common::AbstractModel
        # @param PlateNo: 号牌号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlateNo: String
        # @param FileNo: 档案编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileNo: String
        # @param AllowNum: 核定人数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowNum: String
        # @param TotalMass: 总质量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalMass: String
        # @param CurbWeight: 整备质量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurbWeight: String
        # @param LoadQuality: 核定载质量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadQuality: String
        # @param ExternalSize: 外廓尺寸
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalSize: String
        # @param Marks: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Marks: String
        # @param Record: 检验记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Record: String
        # @param TotalQuasiMass: 准牵引总质量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalQuasiMass: String

        attr_accessor :PlateNo, :FileNo, :AllowNum, :TotalMass, :CurbWeight, :LoadQuality, :ExternalSize, :Marks, :Record, :TotalQuasiMass
        
        def initialize(plateno=nil, fileno=nil, allownum=nil, totalmass=nil, curbweight=nil, loadquality=nil, externalsize=nil, marks=nil, record=nil, totalquasimass=nil)
          @PlateNo = plateno
          @FileNo = fileno
          @AllowNum = allownum
          @TotalMass = totalmass
          @CurbWeight = curbweight
          @LoadQuality = loadquality
          @ExternalSize = externalsize
          @Marks = marks
          @Record = record
          @TotalQuasiMass = totalquasimass
        end

        def deserialize(params)
          @PlateNo = params['PlateNo']
          @FileNo = params['FileNo']
          @AllowNum = params['AllowNum']
          @TotalMass = params['TotalMass']
          @CurbWeight = params['CurbWeight']
          @LoadQuality = params['LoadQuality']
          @ExternalSize = params['ExternalSize']
          @Marks = params['Marks']
          @Record = params['Record']
          @TotalQuasiMass = params['TotalQuasiMass']
        end
      end

      # 行驶证主页正面的识别结果
      class TextVehicleFront < TencentCloud::Common::AbstractModel
        # @param PlateNo: 号牌号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlateNo: String
        # @param VehicleType: 车辆类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VehicleType: String
        # @param Owner: 所有人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Owner: String
        # @param Address: 住址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param UseCharacter: 使用性质
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseCharacter: String
        # @param Model: 品牌型号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: String
        # @param Vin: 车辆识别代号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vin: String
        # @param EngineNo: 发动机号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineNo: String
        # @param RegisterDate: 注册日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegisterDate: String
        # @param IssueDate: 发证日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IssueDate: String
        # @param Seal: 印章
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Seal: String

        attr_accessor :PlateNo, :VehicleType, :Owner, :Address, :UseCharacter, :Model, :Vin, :EngineNo, :RegisterDate, :IssueDate, :Seal
        
        def initialize(plateno=nil, vehicletype=nil, owner=nil, address=nil, usecharacter=nil, model=nil, vin=nil, engineno=nil, registerdate=nil, issuedate=nil, seal=nil)
          @PlateNo = plateno
          @VehicleType = vehicletype
          @Owner = owner
          @Address = address
          @UseCharacter = usecharacter
          @Model = model
          @Vin = vin
          @EngineNo = engineno
          @RegisterDate = registerdate
          @IssueDate = issuedate
          @Seal = seal
        end

        def deserialize(params)
          @PlateNo = params['PlateNo']
          @VehicleType = params['VehicleType']
          @Owner = params['Owner']
          @Address = params['Address']
          @UseCharacter = params['UseCharacter']
          @Model = params['Model']
          @Vin = params['Vin']
          @EngineNo = params['EngineNo']
          @RegisterDate = params['RegisterDate']
          @IssueDate = params['IssueDate']
          @Seal = params['Seal']
        end
      end

      # 运单识别结果
      class TextWaybill < TencentCloud::Common::AbstractModel
        # @param RecName: 收件人姓名
        # @type RecName: :class:`Tencentcloud::Ocr.v20181119.models.WaybillObj`
        # @param RecNum: 收件人手机号
        # @type RecNum: :class:`Tencentcloud::Ocr.v20181119.models.WaybillObj`
        # @param RecAddr: 收件人地址
        # @type RecAddr: :class:`Tencentcloud::Ocr.v20181119.models.WaybillObj`
        # @param SenderName: 寄件人姓名
        # @type SenderName: :class:`Tencentcloud::Ocr.v20181119.models.WaybillObj`
        # @param SenderNum: 寄件人手机号
        # @type SenderNum: :class:`Tencentcloud::Ocr.v20181119.models.WaybillObj`
        # @param SenderAddr: 寄件人地址
        # @type SenderAddr: :class:`Tencentcloud::Ocr.v20181119.models.WaybillObj`
        # @param WaybillNum: 运单号
        # @type WaybillNum: :class:`Tencentcloud::Ocr.v20181119.models.WaybillObj`

        attr_accessor :RecName, :RecNum, :RecAddr, :SenderName, :SenderNum, :SenderAddr, :WaybillNum
        
        def initialize(recname=nil, recnum=nil, recaddr=nil, sendername=nil, sendernum=nil, senderaddr=nil, waybillnum=nil)
          @RecName = recname
          @RecNum = recnum
          @RecAddr = recaddr
          @SenderName = sendername
          @SenderNum = sendernum
          @SenderAddr = senderaddr
          @WaybillNum = waybillnum
        end

        def deserialize(params)
          unless params['RecName'].nil?
            @RecName = WaybillObj.new.deserialize(params[RecName])
          end
          unless params['RecNum'].nil?
            @RecNum = WaybillObj.new.deserialize(params[RecNum])
          end
          unless params['RecAddr'].nil?
            @RecAddr = WaybillObj.new.deserialize(params[RecAddr])
          end
          unless params['SenderName'].nil?
            @SenderName = WaybillObj.new.deserialize(params[SenderName])
          end
          unless params['SenderNum'].nil?
            @SenderNum = WaybillObj.new.deserialize(params[SenderNum])
          end
          unless params['SenderAddr'].nil?
            @SenderAddr = WaybillObj.new.deserialize(params[SenderAddr])
          end
          unless params['WaybillNum'].nil?
            @WaybillNum = WaybillObj.new.deserialize(params[WaybillNum])
          end
        end
      end

      # 过路过桥费字段信息
      class TollInvoiceInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称（关键字）。
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段Name对应的字符串结果。
        # @type Value: String
        # @param Rect: 文本行在旋转纠正之后的图像中的像素坐标。
        # @type Rect: :class:`Tencentcloud::Ocr.v20181119.models.Rect`

        attr_accessor :Name, :Value, :Rect
        
        def initialize(name=nil, value=nil, rect=nil)
          @Name = name
          @Value = value
          @Rect = rect
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          unless params['Rect'].nil?
            @Rect = Rect.new.deserialize(params[Rect])
          end
        end
      end

      # TollInvoiceOCR请求参数结构体
      class TollInvoiceOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # TollInvoiceOCR返回参数结构体
      class TollInvoiceOCRResponse < TencentCloud::Common::AbstractModel
        # @param TollInvoiceInfos: 过路过桥费发票识别结果，具体内容请点击左侧链接。
        # @type TollInvoiceInfos: Array
        # @param Angle: 图片旋转角度（角度制），文本的水平方向为0°，顺时针为正，逆时针为负。
        # @type Angle: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TollInvoiceInfos, :Angle, :RequestId
        
        def initialize(tollinvoiceinfos=nil, angle=nil, requestid=nil)
          @TollInvoiceInfos = tollinvoiceinfos
          @Angle = angle
          @RequestId = requestid
        end

        def deserialize(params)
          @TollInvoiceInfos = params['TollInvoiceInfos']
          @Angle = params['Angle']
          @RequestId = params['RequestId']
        end
      end

      # TrainTicketOCR请求参数结构体
      class TrainTicketOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # TrainTicketOCR返回参数结构体
      class TrainTicketOCRResponse < TencentCloud::Common::AbstractModel
        # @param TicketNum: 编号
        # @type TicketNum: String
        # @param StartStation: 出发站
        # @type StartStation: String
        # @param DestinationStation: 到达站
        # @type DestinationStation: String
        # @param Date: 出发时间
        # @type Date: String
        # @param TrainNum: 车次
        # @type TrainNum: String
        # @param Seat: 座位号
        # @type Seat: String
        # @param Name: 姓名
        # @type Name: String
        # @param Price: 票价
        # @type Price: String
        # @param SeatCategory: 席别
        # @type SeatCategory: String
        # @param ID: 身份证号
        # @type ID: String
        # @param InvoiceType: 发票消费类型
        # @type InvoiceType: String
        # @param SerialNumber: 序列号
        # @type SerialNumber: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TicketNum, :StartStation, :DestinationStation, :Date, :TrainNum, :Seat, :Name, :Price, :SeatCategory, :ID, :InvoiceType, :SerialNumber, :RequestId
        
        def initialize(ticketnum=nil, startstation=nil, destinationstation=nil, date=nil, trainnum=nil, seat=nil, name=nil, price=nil, seatcategory=nil, id=nil, invoicetype=nil, serialnumber=nil, requestid=nil)
          @TicketNum = ticketnum
          @StartStation = startstation
          @DestinationStation = destinationstation
          @Date = date
          @TrainNum = trainnum
          @Seat = seat
          @Name = name
          @Price = price
          @SeatCategory = seatcategory
          @ID = id
          @InvoiceType = invoicetype
          @SerialNumber = serialnumber
          @RequestId = requestid
        end

        def deserialize(params)
          @TicketNum = params['TicketNum']
          @StartStation = params['StartStation']
          @DestinationStation = params['DestinationStation']
          @Date = params['Date']
          @TrainNum = params['TrainNum']
          @Seat = params['Seat']
          @Name = params['Name']
          @Price = params['Price']
          @SeatCategory = params['SeatCategory']
          @ID = params['ID']
          @InvoiceType = params['InvoiceType']
          @SerialNumber = params['SerialNumber']
          @RequestId = params['RequestId']
        end
      end

      # 增值税发票项目明细
      class VatInvoiceItem < TencentCloud::Common::AbstractModel
        # @param LineNo: 行号
        # @type LineNo: String
        # @param Name: 名称
        # @type Name: String
        # @param Spec: 规格
        # @type Spec: String
        # @param Unit: 单位
        # @type Unit: String
        # @param Quantity: 数量
        # @type Quantity: String
        # @param UnitPrice: 单价
        # @type UnitPrice: String
        # @param AmountWithoutTax: 不含税金额
        # @type AmountWithoutTax: String
        # @param TaxRate: 税率
        # @type TaxRate: String
        # @param TaxAmount: 税额
        # @type TaxAmount: String

        attr_accessor :LineNo, :Name, :Spec, :Unit, :Quantity, :UnitPrice, :AmountWithoutTax, :TaxRate, :TaxAmount
        
        def initialize(lineno=nil, name=nil, spec=nil, unit=nil, quantity=nil, unitprice=nil, amountwithouttax=nil, taxrate=nil, taxamount=nil)
          @LineNo = lineno
          @Name = name
          @Spec = spec
          @Unit = unit
          @Quantity = quantity
          @UnitPrice = unitprice
          @AmountWithoutTax = amountwithouttax
          @TaxRate = taxrate
          @TaxAmount = taxamount
        end

        def deserialize(params)
          @LineNo = params['LineNo']
          @Name = params['Name']
          @Spec = params['Spec']
          @Unit = params['Unit']
          @Quantity = params['Quantity']
          @UnitPrice = params['UnitPrice']
          @AmountWithoutTax = params['AmountWithoutTax']
          @TaxRate = params['TaxRate']
          @TaxAmount = params['TaxAmount']
        end
      end

      # VatInvoiceOCR请求参数结构体
      class VatInvoiceOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # VatInvoiceOCR返回参数结构体
      class VatInvoiceOCRResponse < TencentCloud::Common::AbstractModel
        # @param VatInvoiceInfos: 检测到的文本信息，具体内容请点击左侧链接。
        # @type VatInvoiceInfos: Array
        # @param Items: 明细条目。VatInvoiceInfos中关于明细项的具体条目。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VatInvoiceInfos, :Items, :RequestId
        
        def initialize(vatinvoiceinfos=nil, items=nil, requestid=nil)
          @VatInvoiceInfos = vatinvoiceinfos
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @VatInvoiceInfos = params['VatInvoiceInfos']
          @Items = params['Items']
          @RequestId = params['RequestId']
        end
      end

      # 增值税发票卷票信息
      class VatRollInvoiceInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称（关键字）。
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段Name对应的字符串结果。
        # @type Value: String
        # @param Rect: 文本行在旋转纠正之后的图像中的像素坐标。
        # @type Rect: :class:`Tencentcloud::Ocr.v20181119.models.Rect`

        attr_accessor :Name, :Value, :Rect
        
        def initialize(name=nil, value=nil, rect=nil)
          @Name = name
          @Value = value
          @Rect = rect
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          unless params['Rect'].nil?
            @Rect = Rect.new.deserialize(params[Rect])
          end
        end
      end

      # VatRollInvoiceOCR请求参数结构体
      class VatRollInvoiceOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # VatRollInvoiceOCR返回参数结构体
      class VatRollInvoiceOCRResponse < TencentCloud::Common::AbstractModel
        # @param VatRollInvoiceInfos: 增值税发票（卷票）识别结果，具体内容请点击左侧链接。
        # @type VatRollInvoiceInfos: Array
        # @param Angle: 图片旋转角度（角度制），文本的水平方向为0°，顺时针为正，逆时针为负。
        # @type Angle: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VatRollInvoiceInfos, :Angle, :RequestId
        
        def initialize(vatrollinvoiceinfos=nil, angle=nil, requestid=nil)
          @VatRollInvoiceInfos = vatrollinvoiceinfos
          @Angle = angle
          @RequestId = requestid
        end

        def deserialize(params)
          @VatRollInvoiceInfos = params['VatRollInvoiceInfos']
          @Angle = params['Angle']
          @RequestId = params['RequestId']
        end
      end

      # VehicleLicenseOCR请求参数结构体
      class VehicleLicenseOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。图片下载时间不超过 3 秒。
        # 建议图片存储于腾讯云，可保障更高的下载速度和稳定性。
        # @type ImageUrl: String
        # @param CardSide: FRONT 为行驶证主页正面（有红色印章的一面），
        # BACK 为行驶证副页正面（有号码号牌的一面）。
        # @type CardSide: String

        attr_accessor :ImageBase64, :ImageUrl, :CardSide
        
        def initialize(imagebase64=nil, imageurl=nil, cardside=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @CardSide = cardside
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @CardSide = params['CardSide']
        end
      end

      # VehicleLicenseOCR返回参数结构体
      class VehicleLicenseOCRResponse < TencentCloud::Common::AbstractModel
        # @param FrontInfo: 行驶证主页正面的识别结果，CardSide 为 FRONT。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrontInfo: :class:`Tencentcloud::Ocr.v20181119.models.TextVehicleFront`
        # @param BackInfo: 行驶证副页正面的识别结果，CardSide 为 BACK。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackInfo: :class:`Tencentcloud::Ocr.v20181119.models.TextVehicleBack`
        # @param RecognizeWarnCode: Code 告警码列表和释义：
        # -9102 复印件告警
        # -9103 翻拍件告警
        # -9106 ps告警
        # 注：告警码可以同时存在多个
        # @type RecognizeWarnCode: Array
        # @param RecognizeWarnMsg: 告警码说明：
        # WARN_DRIVER_LICENSE_COPY_CARD 复印件告警
        # WARN_DRIVER_LICENSE_SCREENED_CARD 翻拍件告警
        # WARN_DRIVER_LICENSE_PS_CARD ps告警
        # 注：告警信息可以同时存在多个
        # @type RecognizeWarnMsg: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FrontInfo, :BackInfo, :RecognizeWarnCode, :RecognizeWarnMsg, :RequestId
        
        def initialize(frontinfo=nil, backinfo=nil, recognizewarncode=nil, recognizewarnmsg=nil, requestid=nil)
          @FrontInfo = frontinfo
          @BackInfo = backinfo
          @RecognizeWarnCode = recognizewarncode
          @RecognizeWarnMsg = recognizewarnmsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FrontInfo'].nil?
            @FrontInfo = TextVehicleFront.new.deserialize(params[FrontInfo])
          end
          unless params['BackInfo'].nil?
            @BackInfo = TextVehicleBack.new.deserialize(params[BackInfo])
          end
          @RecognizeWarnCode = params['RecognizeWarnCode']
          @RecognizeWarnMsg = params['RecognizeWarnMsg']
          @RequestId = params['RequestId']
        end
      end

      # 机动车登记证书识别结果
      class VehicleRegCertInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段name对应的字符串结果。
        # @type Value: String

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # VehicleRegCertOCR请求参数结构体
      class VehicleRegCertOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # VehicleRegCertOCR返回参数结构体
      class VehicleRegCertOCRResponse < TencentCloud::Common::AbstractModel
        # @param VehicleRegCertInfos: 机动车登记证书识别结果，具体内容请点击左侧链接。
        # @type VehicleRegCertInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VehicleRegCertInfos, :RequestId
        
        def initialize(vehicleregcertinfos=nil, requestid=nil)
          @VehicleRegCertInfos = vehicleregcertinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @VehicleRegCertInfos = params['VehicleRegCertInfos']
          @RequestId = params['RequestId']
        end
      end

      # VinOCR请求参数结构体
      class VinOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # VinOCR返回参数结构体
      class VinOCRResponse < TencentCloud::Common::AbstractModel
        # @param Vin: 检测到的车辆 VIN 码。
        # @type Vin: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Vin, :RequestId
        
        def initialize(vin=nil, requestid=nil)
          @Vin = vin
          @RequestId = requestid
        end

        def deserialize(params)
          @Vin = params['Vin']
          @RequestId = params['RequestId']
        end
      end

      # WaybillOCR请求参数结构体
      class WaybillOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :ImageBase64, :ImageUrl
        
        def initialize(imagebase64=nil, imageurl=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # WaybillOCR返回参数结构体
      class WaybillOCRResponse < TencentCloud::Common::AbstractModel
        # @param TextDetections: 检测到的文本信息，具体内容请点击左侧链接。
        # @type TextDetections: :class:`Tencentcloud::Ocr.v20181119.models.TextWaybill`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TextDetections, :RequestId
        
        def initialize(textdetections=nil, requestid=nil)
          @TextDetections = textdetections
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TextDetections'].nil?
            @TextDetections = TextWaybill.new.deserialize(params[TextDetections])
          end
          @RequestId = params['RequestId']
        end
      end

      # 运单识别对象
      class WaybillObj < TencentCloud::Common::AbstractModel
        # @param Text: 识别出的文本行内容
        # @type Text: String

        attr_accessor :Text
        
        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 英文OCR识别出的单词在原图中的四点坐标数组
      class WordCoordPoint < TencentCloud::Common::AbstractModel
        # @param WordCoordinate: 英文OCR识别出的每个单词在原图中的四点坐标。
        # @type WordCoordinate: Array

        attr_accessor :WordCoordinate
        
        def initialize(wordcoordinate=nil)
          @WordCoordinate = wordcoordinate
        end

        def deserialize(params)
          @WordCoordinate = params['WordCoordinate']
        end
      end

      # 识别出来的单词信息包括单词（包括单词Character和单词置信度confidence）
      class Words < TencentCloud::Common::AbstractModel
        # @param Confidence: 置信度 0 ~100
        # @type Confidence: Integer
        # @param Character: 候选字Character
        # @type Character: String

        attr_accessor :Confidence, :Character
        
        def initialize(confidence=nil, character=nil)
          @Confidence = confidence
          @Character = character
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Character = params['Character']
        end
      end

    end
  end
end

