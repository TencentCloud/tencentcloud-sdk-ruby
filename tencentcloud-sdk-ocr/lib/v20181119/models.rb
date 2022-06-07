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
      # AdvertiseOCR请求参数结构体
      class AdvertiseOCRRequest < TencentCloud::Common::AbstractModel
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

      # AdvertiseOCR返回参数结构体
      class AdvertiseOCRResponse < TencentCloud::Common::AbstractModel
        # @param TextDetections: 检测到的文本信息，包括文本行内容、置信度、文本行坐标以及文本行旋转纠正后的坐标，具体内容请点击左侧链接。
        # @type TextDetections: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TextDetections, :RequestId
        
        def initialize(textdetections=nil, requestid=nil)
          @TextDetections = textdetections
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TextDetections'].nil?
            @TextDetections = []
            params['TextDetections'].each do |i|
              advertisetextdetection_tmp = AdvertiseTextDetection.new
              advertisetextdetection_tmp.deserialize(i)
              @TextDetections << advertisetextdetection_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 广告文字识别结果
      class AdvertiseTextDetection < TencentCloud::Common::AbstractModel
        # @param DetectedText: 识别出的文本行内容
        # @type DetectedText: String
        # @param Confidence: 置信度 0 ~100
        # @type Confidence: Integer
        # @param Polygon: 文本行坐标，以四个顶点坐标表示
        # @type Polygon: Array
        # @param AdvancedInfo: 此字段为扩展字段。
        # GeneralBasicOcr接口返回段落信息Parag，包含ParagNo。
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
          unless params['Polygon'].nil?
            @Polygon = []
            params['Polygon'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Polygon << coord_tmp
            end
          end
          @AdvancedInfo = params['AdvancedInfo']
        end
      end

      # ArithmeticOCR请求参数结构体
      class ArithmeticOCRRequest < TencentCloud::Common::AbstractModel
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
        # @param SupportHorizontalImage: 用于选择是否支持横屏拍摄。打开则支持横屏拍摄图片角度判断，角度信息在返回参数的angle中，默认值为true
        # @type SupportHorizontalImage: Boolean
        # @param RejectNonArithmeticPic: 是否拒绝非速算图，打开则拒绝非速算图(注：非速算图是指风景人物等明显不是速算图片的图片)，默认值为false
        # @type RejectNonArithmeticPic: Boolean
        # @param EnableDispRelatedVertical: 是否展开耦合算式中的竖式计算，默认值为false
        # @type EnableDispRelatedVertical: Boolean
        # @param EnableDispMidResult: 是否展示竖式算式的中间结果和格式控制字符，默认值为false
        # @type EnableDispMidResult: Boolean
        # @param EnablePdfRecognize: 是否开启pdf识别，默认值为true
        # @type EnablePdfRecognize: Boolean
        # @param PdfPageIndex: pdf页码，从0开始，默认为0
        # @type PdfPageIndex: Integer

        attr_accessor :ImageBase64, :ImageUrl, :SupportHorizontalImage, :RejectNonArithmeticPic, :EnableDispRelatedVertical, :EnableDispMidResult, :EnablePdfRecognize, :PdfPageIndex
        
        def initialize(imagebase64=nil, imageurl=nil, supporthorizontalimage=nil, rejectnonarithmeticpic=nil, enabledisprelatedvertical=nil, enabledispmidresult=nil, enablepdfrecognize=nil, pdfpageindex=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @SupportHorizontalImage = supporthorizontalimage
          @RejectNonArithmeticPic = rejectnonarithmeticpic
          @EnableDispRelatedVertical = enabledisprelatedvertical
          @EnableDispMidResult = enabledispmidresult
          @EnablePdfRecognize = enablepdfrecognize
          @PdfPageIndex = pdfpageindex
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @SupportHorizontalImage = params['SupportHorizontalImage']
          @RejectNonArithmeticPic = params['RejectNonArithmeticPic']
          @EnableDispRelatedVertical = params['EnableDispRelatedVertical']
          @EnableDispMidResult = params['EnableDispMidResult']
          @EnablePdfRecognize = params['EnablePdfRecognize']
          @PdfPageIndex = params['PdfPageIndex']
        end
      end

      # ArithmeticOCR返回参数结构体
      class ArithmeticOCRResponse < TencentCloud::Common::AbstractModel
        # @param TextDetections: 检测到的文本信息，具体内容请点击左侧链接。
        # @type TextDetections: Array
        # @param Angle: 图片横屏的角度(90度或270度)
        # @type Angle: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TextDetections, :Angle, :RequestId
        
        def initialize(textdetections=nil, angle=nil, requestid=nil)
          @TextDetections = textdetections
          @Angle = angle
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TextDetections'].nil?
            @TextDetections = []
            params['TextDetections'].each do |i|
              textarithmetic_tmp = TextArithmetic.new
              textarithmetic_tmp.deserialize(i)
              @TextDetections << textarithmetic_tmp
            end
          end
          @Angle = params['Angle']
          @RequestId = params['RequestId']
        end
      end

      # BankCardOCR请求参数结构体
      class BankCardOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        # 建议图片存储于腾讯云，可保障更高的下载速度和稳定性。
        # @type ImageUrl: String
        # @param RetBorderCutImage: 是否返回预处理（精确剪裁对齐）后的银行卡图片数据，默认false。
        # @type RetBorderCutImage: Boolean
        # @param RetCardNoImage: 是否返回卡号的切图图片数据，默认false。
        # @type RetCardNoImage: Boolean
        # @param EnableCopyCheck: 复印件检测开关，如果输入的图片是银行卡复印件图片则返回告警，默认false。
        # @type EnableCopyCheck: Boolean
        # @param EnableReshootCheck: 翻拍检测开关，如果输入的图片是银行卡翻拍图片则返回告警，默认false。
        # @type EnableReshootCheck: Boolean
        # @param EnableBorderCheck: 边框遮挡检测开关，如果输入的图片是银行卡边框被遮挡则返回告警，默认false。
        # @type EnableBorderCheck: Boolean
        # @param EnableQualityValue: 是否返回图片质量分数（图片质量分数是评价一个图片的模糊程度的标准），默认false。
        # @type EnableQualityValue: Boolean

        attr_accessor :ImageBase64, :ImageUrl, :RetBorderCutImage, :RetCardNoImage, :EnableCopyCheck, :EnableReshootCheck, :EnableBorderCheck, :EnableQualityValue
        
        def initialize(imagebase64=nil, imageurl=nil, retbordercutimage=nil, retcardnoimage=nil, enablecopycheck=nil, enablereshootcheck=nil, enablebordercheck=nil, enablequalityvalue=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @RetBorderCutImage = retbordercutimage
          @RetCardNoImage = retcardnoimage
          @EnableCopyCheck = enablecopycheck
          @EnableReshootCheck = enablereshootcheck
          @EnableBorderCheck = enablebordercheck
          @EnableQualityValue = enablequalityvalue
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @RetBorderCutImage = params['RetBorderCutImage']
          @RetCardNoImage = params['RetCardNoImage']
          @EnableCopyCheck = params['EnableCopyCheck']
          @EnableReshootCheck = params['EnableReshootCheck']
          @EnableBorderCheck = params['EnableBorderCheck']
          @EnableQualityValue = params['EnableQualityValue']
        end
      end

      # BankCardOCR返回参数结构体
      class BankCardOCRResponse < TencentCloud::Common::AbstractModel
        # @param CardNo: 卡号
        # @type CardNo: String
        # @param BankInfo: 银行信息
        # @type BankInfo: String
        # @param ValidDate: 有效期，格式如：07/2023
        # @type ValidDate: String
        # @param CardType: 卡类型
        # @type CardType: String
        # @param CardName: 卡名字
        # @type CardName: String
        # @param BorderCutImage: 切片图片数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BorderCutImage: String
        # @param CardNoImage: 卡号图片数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CardNoImage: String
        # @param WarningCode: WarningCode 告警码列表和释义：
        # -9110:银行卡日期无效;
        # -9111:银行卡边框不完整;
        # -9112:银行卡图片反光;
        # -9113:银行卡复印件;
        # -9114:银行卡翻拍件
        # （告警码可以同时存在多个）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarningCode: Array
        # @param QualityValue: 图片质量分数，请求EnableQualityValue时返回（取值范围：0-100，分数越低越模糊，建议阈值≥50）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QualityValue: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CardNo, :BankInfo, :ValidDate, :CardType, :CardName, :BorderCutImage, :CardNoImage, :WarningCode, :QualityValue, :RequestId
        
        def initialize(cardno=nil, bankinfo=nil, validdate=nil, cardtype=nil, cardname=nil, bordercutimage=nil, cardnoimage=nil, warningcode=nil, qualityvalue=nil, requestid=nil)
          @CardNo = cardno
          @BankInfo = bankinfo
          @ValidDate = validdate
          @CardType = cardtype
          @CardName = cardname
          @BorderCutImage = bordercutimage
          @CardNoImage = cardnoimage
          @WarningCode = warningcode
          @QualityValue = qualityvalue
          @RequestId = requestid
        end

        def deserialize(params)
          @CardNo = params['CardNo']
          @BankInfo = params['BankInfo']
          @ValidDate = params['ValidDate']
          @CardType = params['CardType']
          @CardName = params['CardName']
          @BorderCutImage = params['BorderCutImage']
          @CardNoImage = params['CardNoImage']
          @WarningCode = params['WarningCode']
          @QualityValue = params['QualityValue']
          @RequestId = params['RequestId']
        end
      end

      # 银行回单识别出的字段
      class BankSlipInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称(关键字)，支持以下字段：
        # 付款开户行、收款开户行、付款账号、收款账号、回单类型、回单编号、币种、流水号、凭证号码、交易机构、交易金额、手续费、日期等字段信息。
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
            @Rect = Rect.new
            @Rect.deserialize(params['Rect'])
          end
        end
      end

      # BankSlipOCR请求参数结构体
      class BankSlipOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。
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

      # BankSlipOCR返回参数结构体
      class BankSlipOCRResponse < TencentCloud::Common::AbstractModel
        # @param BankSlipInfos: 银行回单识别结果，具体内容请点击左侧链接。
        # @type BankSlipInfos: Array
        # @param Angle: 图片旋转角度（角度制），文本的水平方向为0°，顺时针为正，逆时针为负。
        # @type Angle: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BankSlipInfos, :Angle, :RequestId
        
        def initialize(bankslipinfos=nil, angle=nil, requestid=nil)
          @BankSlipInfos = bankslipinfos
          @Angle = angle
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BankSlipInfos'].nil?
            @BankSlipInfos = []
            params['BankSlipInfos'].each do |i|
              bankslipinfo_tmp = BankSlipInfo.new
              bankslipinfo_tmp.deserialize(i)
              @BankSlipInfos << bankslipinfo_tmp
            end
          end
          @Angle = params['Angle']
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
        # @param RecognizeWarnCode: Code 告警码列表和释义：
        # -20001 非营业执照
        # 注：告警码可以同时存在多个
        # @type RecognizeWarnCode: Array
        # @param RecognizeWarnMsg: 告警码说明：
        # OCR_WARNING_TPYE_NOT_MATCH 非营业执照
        # 注：告警信息可以同时存在多个
        # @type RecognizeWarnMsg: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegNum, :Name, :Capital, :Person, :Address, :Business, :Type, :Period, :ComposingForm, :SetDate, :RecognizeWarnCode, :RecognizeWarnMsg, :RequestId
        
        def initialize(regnum=nil, name=nil, capital=nil, person=nil, address=nil, business=nil, type=nil, period=nil, composingform=nil, setdate=nil, recognizewarncode=nil, recognizewarnmsg=nil, requestid=nil)
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
          @RecognizeWarnCode = recognizewarncode
          @RecognizeWarnMsg = recognizewarnmsg
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
          @RecognizeWarnCode = params['RecognizeWarnCode']
          @RecognizeWarnMsg = params['RecognizeWarnMsg']
          @RequestId = params['RequestId']
        end
      end

      # 验真接口
      class BizLicenseVerifyResult < TencentCloud::Common::AbstractModel
        # @param RegNum: “0“：一致
        # “-1”：不一致
        # @type RegNum: String
        # @param Name: “0“：一致
        # “-1”：不一致
        # “”：不验真
        # @type Name: String
        # @param Address: “0“：一致
        # “-1”：不一致
        # “”：不验真
        # @type Address: String

        attr_accessor :RegNum, :Name, :Address
        
        def initialize(regnum=nil, name=nil, address=nil)
          @RegNum = regnum
          @Name = name
          @Address = address
        end

        def deserialize(params)
          @RegNum = params['RegNum']
          @Name = params['Name']
          @Address = params['Address']
        end
      end

      # 汽车票字段信息
      class BusInvoiceInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称(关键字)，支持以下字段：
        # 发票代码、发票号码、日期、票价、始发地、目的地、姓名、时间、发票消费类型、身份证号、省、市、开票日期、乘车地点、检票口、客票类型、车型、座位号、车次。
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
            @Rect = Rect.new
            @Rect.deserialize(params['Rect'])
          end
        end
      end

      # BusInvoiceOCR请求参数结构体
      class BusInvoiceOCRRequest < TencentCloud::Common::AbstractModel
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
          unless params['BusInvoiceInfos'].nil?
            @BusInvoiceInfos = []
            params['BusInvoiceInfos'].each do |i|
              businvoiceinfo_tmp = BusInvoiceInfo.new
              businvoiceinfo_tmp.deserialize(i)
              @BusInvoiceInfos << businvoiceinfo_tmp
            end
          end
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
        # @param ItemCoord: 文本行在旋转纠正之后的图像中的像素坐标，表示为（左上角x, 左上角y，宽width，高height）
        # @type ItemCoord: :class:`Tencentcloud::Ocr.v20181119.models.ItemCoord`

        attr_accessor :Name, :Value, :ItemCoord
        
        def initialize(name=nil, value=nil, itemcoord=nil)
          @Name = name
          @Value = value
          @ItemCoord = itemcoord
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          unless params['ItemCoord'].nil?
            @ItemCoord = ItemCoord.new
            @ItemCoord.deserialize(params['ItemCoord'])
          end
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
        # @param Angle: 图片旋转角度（角度制），文本的水平方向为0°；顺时针为正，逆时针为负。点击查看<a href="https://cloud.tencent.com/document/product/866/45139">如何纠正倾斜文本</a>
        # @type Angle: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BusinessCardInfos, :RetImageBase64, :Angle, :RequestId
        
        def initialize(businesscardinfos=nil, retimagebase64=nil, angle=nil, requestid=nil)
          @BusinessCardInfos = businesscardinfos
          @RetImageBase64 = retimagebase64
          @Angle = angle
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BusinessCardInfos'].nil?
            @BusinessCardInfos = []
            params['BusinessCardInfos'].each do |i|
              businesscardinfo_tmp = BusinessCardInfo.new
              businesscardinfo_tmp.deserialize(i)
              @BusinessCardInfos << businesscardinfo_tmp
            end
          end
          @RetImageBase64 = params['RetImageBase64']
          @Angle = params['Angle']
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
          unless params['CandWords'].nil?
            @CandWords = []
            params['CandWords'].each do |i|
              words_tmp = Words.new
              words_tmp.deserialize(i)
              @CandWords << words_tmp
            end
          end
        end
      end

      # 购车发票识别结果
      class CarInvoiceInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称(关键字)，支持以下字段：
        # 发票代码、 机打代码、 发票号码、 发动机号码、 合格证号、 机打号码、 价税合计(小写)、 销货单位名称、 身份证号码/组织机构代码、 购买方名称、 销售方纳税人识别号、 购买方纳税人识别号、主管税务机关、 主管税务机关代码、 开票日期、 不含税价(小写)、 吨位、增值税税率或征收率、 车辆识别代号/车架号码、 增值税税额、 厂牌型号、 省、 市、 发票消费类型、 销售方电话、 销售方账号、 产地、 进口证明书号、 车辆类型、 机器编号、备注、开票人、限乘人数、商检单号、销售方地址、销售方开户银行、价税合计、发票类型。
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段name对应的字符串结果。
        # @type Value: String
        # @param Rect: 字段在旋转纠正之后的图像中的像素坐标。
        # @type Rect: :class:`Tencentcloud::Ocr.v20181119.models.Rect`
        # @param Polygon: 字段在原图中的中的四点坐标。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Polygon: :class:`Tencentcloud::Ocr.v20181119.models.Polygon`

        attr_accessor :Name, :Value, :Rect, :Polygon
        
        def initialize(name=nil, value=nil, rect=nil, polygon=nil)
          @Name = name
          @Value = value
          @Rect = rect
          @Polygon = polygon
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          unless params['Rect'].nil?
            @Rect = Rect.new
            @Rect.deserialize(params['Rect'])
          end
          unless params['Polygon'].nil?
            @Polygon = Polygon.new
            @Polygon.deserialize(params['Polygon'])
          end
        end
      end

      # CarInvoiceOCR请求参数结构体
      class CarInvoiceOCRRequest < TencentCloud::Common::AbstractModel
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
          unless params['CarInvoiceInfos'].nil?
            @CarInvoiceInfos = []
            params['CarInvoiceInfos'].each do |i|
              carinvoiceinfo_tmp = CarInvoiceInfo.new
              carinvoiceinfo_tmp.deserialize(i)
              @CarInvoiceInfos << carinvoiceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 单元格识别结果
      class CellContent < TencentCloud::Common::AbstractModel
        # @param ParagNo: 段落编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParagNo: Integer
        # @param WordSize: 字体大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WordSize: Integer

        attr_accessor :ParagNo, :WordSize
        
        def initialize(paragno=nil, wordsize=nil)
          @ParagNo = paragno
          @WordSize = wordsize
        end

        def deserialize(params)
          @ParagNo = params['ParagNo']
          @WordSize = params['WordSize']
        end
      end

      # 卡证智能分类结果
      class ClassifyDetectInfo < TencentCloud::Common::AbstractModel
        # @param Name: 分类名称，包括：身份证、护照、名片、银行卡、行驶证、驾驶证、港澳台通行证、户口本、港澳台来往内地通行证、港澳台居住证、不动产证、营业执照
        # @type Name: String
        # @param Type: 分类类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Rect: 位置坐标
        # @type Rect: :class:`Tencentcloud::Ocr.v20181119.models.Rect`

        attr_accessor :Name, :Type, :Rect
        
        def initialize(name=nil, type=nil, rect=nil)
          @Name = name
          @Type = type
          @Rect = rect
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          unless params['Rect'].nil?
            @Rect = Rect.new
            @Rect.deserialize(params['Rect'])
          end
        end
      end

      # ClassifyDetectOCR请求参数结构体
      class ClassifyDetectOCRRequest < TencentCloud::Common::AbstractModel
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
        # @param DiscernType: 可以指定要识别的票证类型,指定后不出现在此列表的票证将不返回类型。不指定时默认返回所有支持类别票证的识别信息。

        # 以下是当前支持的类型：
        # IDCardFront: 身份证正面识别
        # IDCardBack: 身份证背面识别
        # Passport: 护照
        # BusinessCard: 名片识别
        # BankCard: 银行卡识别
        # VehicleLicenseFront: 行驶证主页识别
        # VehicleLicenseBack: 行驶证副页识别
        # DriverLicenseFront: 驾驶证主页识别
        # DriverLicenseBack: 驾驶证副页识别
        # PermitFront: 港澳台通行证正面
        # ResidenceBooklet: 户口本资料页
        # MainlandPermitFront: 港澳台来往内地通行证正面
        # HmtResidentPermitFront: 港澳台居住证正面
        # HmtResidentPermitBack: 港澳台居住证背面
        # EstateCert: 不动产证
        # BizLicense: 营业执照
        # @type DiscernType: Array

        attr_accessor :ImageBase64, :ImageUrl, :DiscernType
        
        def initialize(imagebase64=nil, imageurl=nil, discerntype=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @DiscernType = discerntype
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @DiscernType = params['DiscernType']
        end
      end

      # ClassifyDetectOCR返回参数结构体
      class ClassifyDetectOCRResponse < TencentCloud::Common::AbstractModel
        # @param ClassifyDetectInfos: 智能卡证分类结果。当图片类型不支持分类识别或者识别出的类型不在请求参数DiscernType指定的范围内时，返回结果中的Type字段将为空字符串，Name字段将返回"其它"
        # @type ClassifyDetectInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClassifyDetectInfos, :RequestId
        
        def initialize(classifydetectinfos=nil, requestid=nil)
          @ClassifyDetectInfos = classifydetectinfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClassifyDetectInfos'].nil?
            @ClassifyDetectInfos = []
            params['ClassifyDetectInfos'].each do |i|
              classifydetectinfo_tmp = ClassifyDetectInfo.new
              classifydetectinfo_tmp.deserialize(i)
              @ClassifyDetectInfos << classifydetectinfo_tmp
            end
          end
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

      # 企业四要素核验结果
      class Detail < TencentCloud::Common::AbstractModel
        # @param Result: 企业四要素核验结果状态码
        # @type Result: Integer
        # @param Desc: 企业四要素核验结果描述
        # @type Desc: String

        attr_accessor :Result, :Desc
        
        def initialize(result=nil, desc=nil)
          @Result = result
          @Desc = desc
        end

        def deserialize(params)
          @Result = params['Result']
          @Desc = params['Desc']
        end
      end

      # 单字在原图中的坐标，以四个顶点坐标表示，以左上角为起点，顺时针返回。
      class DetectedWordCoordPoint < TencentCloud::Common::AbstractModel
        # @param WordCoordinate: 单字在原图中的坐标，以四个顶点坐标表示，以左上角为起点，顺时针返回。
        # @type WordCoordinate: Array

        attr_accessor :WordCoordinate
        
        def initialize(wordcoordinate=nil)
          @WordCoordinate = wordcoordinate
        end

        def deserialize(params)
          unless params['WordCoordinate'].nil?
            @WordCoordinate = []
            params['WordCoordinate'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @WordCoordinate << coord_tmp
            end
          end
        end
      end

      # 识别出来的单字信息包括单字（包括单字Character和单字置信度confidence）
      class DetectedWords < TencentCloud::Common::AbstractModel
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
        # 默认值为：FRONT。
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
        # @param DateOfBirth: 出生日期（YYYY-MM-DD）
        # @type DateOfBirth: String
        # @param DateOfFirstIssue: 初次领证日期（YYYY-MM-DD）
        # @type DateOfFirstIssue: String
        # @param Class: 准驾车型
        # @type Class: String
        # @param StartDate: 有效期开始时间（YYYY-MM-DD）
        # @type StartDate: String
        # @param EndDate: 有效期截止时间（YYYY-MM-DD）
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
        # @param IssuingAuthority: 发证单位
        # @type IssuingAuthority: String
        # @param State: 状态（仅电子驾驶证支持返回该字段）
        # @type State: String
        # @param CumulativeScore: 累积记分（仅电子驾驶证支持返回该字段）
        # @type CumulativeScore: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Sex, :Nationality, :Address, :DateOfBirth, :DateOfFirstIssue, :Class, :StartDate, :EndDate, :CardCode, :ArchivesCode, :Record, :RecognizeWarnCode, :RecognizeWarnMsg, :IssuingAuthority, :State, :CumulativeScore, :RequestId
        
        def initialize(name=nil, sex=nil, nationality=nil, address=nil, dateofbirth=nil, dateoffirstissue=nil, _class=nil, startdate=nil, enddate=nil, cardcode=nil, archivescode=nil, record=nil, recognizewarncode=nil, recognizewarnmsg=nil, issuingauthority=nil, state=nil, cumulativescore=nil, requestid=nil)
          @Name = name
          @Sex = sex
          @Nationality = nationality
          @Address = address
          @DateOfBirth = dateofbirth
          @DateOfFirstIssue = dateoffirstissue
          @Class = _class
          @StartDate = startdate
          @EndDate = enddate
          @CardCode = cardcode
          @ArchivesCode = archivescode
          @Record = record
          @RecognizeWarnCode = recognizewarncode
          @RecognizeWarnMsg = recognizewarnmsg
          @IssuingAuthority = issuingauthority
          @State = state
          @CumulativeScore = cumulativescore
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
          @IssuingAuthority = params['IssuingAuthority']
          @State = params['State']
          @CumulativeScore = params['CumulativeScore']
          @RequestId = params['RequestId']
        end
      end

      # 识别出的字段
      class DutyPaidProofInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称(关键字)，支持以下字段：
        # 税号 、纳税人识别号 、纳税人名称 、金额合计大写 、金额合计小写 、填发日期 、税务机关 、填票人。
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
            @Rect = Rect.new
            @Rect.deserialize(params['Rect'])
          end
        end
      end

      # DutyPaidProofOCR请求参数结构体
      class DutyPaidProofOCRRequest < TencentCloud::Common::AbstractModel
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
          unless params['DutyPaidProofInfos'].nil?
            @DutyPaidProofInfos = []
            params['DutyPaidProofInfos'].each do |i|
              dutypaidproofinfo_tmp = DutyPaidProofInfo.new
              dutypaidproofinfo_tmp.deserialize(i)
              @DutyPaidProofInfos << dutypaidproofinfo_tmp
            end
          end
          @Angle = params['Angle']
          @RequestId = params['RequestId']
        end
      end

      # EduPaperOCR请求参数结构体
      class EduPaperOCRRequest < TencentCloud::Common::AbstractModel
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
        # @param Config: 扩展配置信息。
        # 配置格式：{"option1":value1,"option2":value2}
        # 1. task_type：任务类型【0: 关闭版式分析与处理 1: 开启版式分析处理】可选参数，Int32类型，默认值为1
        # 2. is_structuralization：是否结构化输出【true：返回包体同时返回通用和结构化输出  false：返回包体返回通用输出】 可选参数，Bool类型，默认值为true
        # 3. if_readable_format：是否按照版式整合通用文本/公式输出结果 可选参数，Bool类型，默认值为false
        # 示例：
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
          unless params['EduPaperInfos'].nil?
            @EduPaperInfos = []
            params['EduPaperInfos'].each do |i|
              textedupaper_tmp = TextEduPaper.new
              textedupaper_tmp.deserialize(i)
              @EduPaperInfos << textedupaper_tmp
            end
          end
          @Angle = params['Angle']
          unless params['QuestionBlockInfos'].nil?
            @QuestionBlockInfos = []
            params['QuestionBlockInfos'].each do |i|
              questionblockobj_tmp = QuestionBlockObj.new
              questionblockobj_tmp.deserialize(i)
              @QuestionBlockInfos << questionblockobj_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # EnglishOCR请求参数结构体
      class EnglishOCRRequest < TencentCloud::Common::AbstractModel
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
        # @param EnableCoordPoint: 单词四点坐标开关，开启可返回图片中单词的四点坐标。
        # 该参数默认值为false。
        # @type EnableCoordPoint: Boolean
        # @param EnableCandWord: 候选字开关，开启可返回识别时多个可能的候选字（每个候选字对应其置信度）。
        # 该参数默认值为false。
        # @type EnableCandWord: Boolean
        # @param Preprocess: 预处理开关，功能是检测图片倾斜的角度，将原本倾斜的图片矫正。该参数默认值为true。
        # @type Preprocess: Boolean

        attr_accessor :ImageBase64, :ImageUrl, :EnableCoordPoint, :EnableCandWord, :Preprocess
        
        def initialize(imagebase64=nil, imageurl=nil, enablecoordpoint=nil, enablecandword=nil, preprocess=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @EnableCoordPoint = enablecoordpoint
          @EnableCandWord = enablecandword
          @Preprocess = preprocess
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @EnableCoordPoint = params['EnableCoordPoint']
          @EnableCandWord = params['EnableCandWord']
          @Preprocess = params['Preprocess']
        end
      end

      # EnglishOCR返回参数结构体
      class EnglishOCRResponse < TencentCloud::Common::AbstractModel
        # @param TextDetections: 检测到的文本信息，具体内容请点击左侧链接。
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
          unless params['TextDetections'].nil?
            @TextDetections = []
            params['TextDetections'].each do |i|
              textdetectionen_tmp = TextDetectionEn.new
              textdetectionen_tmp.deserialize(i)
              @TextDetections << textdetectionen_tmp
            end
          end
          @Angel = params['Angel']
          @RequestId = params['RequestId']
        end
      end

      # 企业证照单个字段的内容
      class EnterpriseLicenseInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称（关键字），不同证件类型可能不同，证件类型包含企业登记证书、许可证书、企业执照、三证合一类证书；
        # 支持以下字段：统一社会信用代码、法定代表人、公司名称、公司地址、注册资金、企业关型、经营范围、成立日期、有效期、开办资金、经费来源、举办单位等；
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
          unless params['EnterpriseLicenseInfos'].nil?
            @EnterpriseLicenseInfos = []
            params['EnterpriseLicenseInfos'].each do |i|
              enterpriselicenseinfo_tmp = EnterpriseLicenseInfo.new
              enterpriselicenseinfo_tmp.deserialize(i)
              @EnterpriseLicenseInfos << enterpriselicenseinfo_tmp
            end
          end
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
        # @param Name: 识别出的字段名称(关键字)，支持以下字段：
        # 【进账单】
        # 日期、出票全称、出票账号、出票开户行、收款人全称、收款人账号、收款开户行、大写金额、小写金额、票据种类、票据张数、票据号码；
        # 【支票】
        # 开户银行、支票种类、凭证号码2、日期、大写金额、小写金额、付款行编号、密码、凭证号码1；
        # 【银行承兑汇票】或【商业承兑汇票】
        # 出票日期、行号1、行号2、出票人全称、出票人账号、付款行全称、收款人全称、收款人账号、收款人开户行、出票金额大写、出票金额小写、汇票到期日、付款行行号、付款行地址。
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
          unless params['FinanBillInfos'].nil?
            @FinanBillInfos = []
            params['FinanBillInfos'].each do |i|
              finanbillinfo_tmp = FinanBillInfo.new
              finanbillinfo_tmp.deserialize(i)
              @FinanBillInfos << finanbillinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 金融票据切片识别单个字段的内容
      class FinanBillSliceInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称(关键字)，支持以下字段：
        # 大写金额、小写金额、账号、票号1、票号2、收款人、大写日期、同城交换号、地址-省份、地址-城市、付款行全称、支票密码、支票用途。
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
          unless params['FinanBillSliceInfos'].nil?
            @FinanBillSliceInfos = []
            params['FinanBillSliceInfos'].each do |i|
              finanbillsliceinfo_tmp = FinanBillSliceInfo.new
              finanbillsliceinfo_tmp.deserialize(i)
              @FinanBillSliceInfos << finanbillsliceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 机票行程单识别结果
      class FlightInvoiceInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称(关键字)，支持以下字段：
        # 票价、合计金额、填开日期、有效身份证件号码、电子客票号码、验证码、旅客姓名、填开单位、其他税费、燃油附加费、民航发展基金、保险费、销售单位代号、始发地、目的地、航班号、时间、日期、座位等级、承运人、发票消费类型、国内国际标签、印刷序号、客票级别/类别、客票生效日期、有效期截止日期、免费行李。
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段 Name 对应的字符串结果。
        # @type Value: String
        # @param Row: 多个行程的字段所在行号，下标从0开始，非行字段或未能识别行号的该值返回-1。
        # @type Row: Integer

        attr_accessor :Name, :Value, :Row
        
        def initialize(name=nil, value=nil, row=nil)
          @Name = name
          @Value = value
          @Row = row
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          @Row = params['Row']
        end
      end

      # FlightInvoiceOCR请求参数结构体
      class FlightInvoiceOCRRequest < TencentCloud::Common::AbstractModel
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
          unless params['FlightInvoiceInfos'].nil?
            @FlightInvoiceInfos = []
            params['FlightInvoiceInfos'].each do |i|
              flightinvoiceinfo_tmp = FlightInvoiceInfo.new
              flightinvoiceinfo_tmp.deserialize(i)
              @FlightInvoiceInfos << flightinvoiceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # FormulaOCR请求参数结构体
      class FormulaOCRRequest < TencentCloud::Common::AbstractModel
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
          unless params['FormulaInfos'].nil?
            @FormulaInfos = []
            params['FormulaInfos'].each do |i|
              textformula_tmp = TextFormula.new
              textformula_tmp.deserialize(i)
              @FormulaInfos << textformula_tmp
            end
          end
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
        # @param IsWords: 是否返回单字信息，默认关
        # @type IsWords: Boolean
        # @param EnableDetectSplit: 是否开启原图切图检测功能，开启后可提升“整图面积大，但单字符占比面积小”（例如：试卷）场景下的识别效果，默认关
        # @type EnableDetectSplit: Boolean
        # @param IsPdf: 是否开启PDF识别，默认值为false，开启后可同时支持图片和PDF的识别。
        # @type IsPdf: Boolean
        # @param PdfPageNumber: 需要识别的PDF页面的对应页码，仅支持PDF单页识别，当上传文件为PDF且IsPdf参数值为true时有效，默认值为1。
        # @type PdfPageNumber: Integer

        attr_accessor :ImageBase64, :ImageUrl, :IsWords, :EnableDetectSplit, :IsPdf, :PdfPageNumber
        
        def initialize(imagebase64=nil, imageurl=nil, iswords=nil, enabledetectsplit=nil, ispdf=nil, pdfpagenumber=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @IsWords = iswords
          @EnableDetectSplit = enabledetectsplit
          @IsPdf = ispdf
          @PdfPageNumber = pdfpagenumber
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @IsWords = params['IsWords']
          @EnableDetectSplit = params['EnableDetectSplit']
          @IsPdf = params['IsPdf']
          @PdfPageNumber = params['PdfPageNumber']
        end
      end

      # GeneralAccurateOCR返回参数结构体
      class GeneralAccurateOCRResponse < TencentCloud::Common::AbstractModel
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
          unless params['TextDetections'].nil?
            @TextDetections = []
            params['TextDetections'].each do |i|
              textdetection_tmp = TextDetection.new
              textdetection_tmp.deserialize(i)
              @TextDetections << textdetection_tmp
            end
          end
          @Angel = params['Angel']
          @RequestId = params['RequestId']
        end
      end

      # GeneralBasicOCR请求参数结构体
      class GeneralBasicOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片/PDF的 Base64 值。
        # 要求图片/PDF经Base64编码后不超过 7M，分辨率建议600*800以上，支持PNG、JPG、JPEG、BMP、PDF格式。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片/PDF的 Url 地址。
        # 要求图片/PDF经Base64编码后不超过 7M，分辨率建议600*800以上，支持PNG、JPG、JPEG、BMP、PDF格式。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param Scene: 保留字段。
        # @type Scene: String
        # @param LanguageType: 识别语言类型。
        # 支持自动识别语言类型，同时支持自选语言种类，默认中英文混合(zh)，各种语言均支持与英文混合的文字识别。
        # 可选值：
        # zh：中英混合
        # zh_rare：支持英文、数字、中文生僻字、繁体字，特殊符号等
        # auto：自动
        # mix：混合语种
        # jap：日语
        # kor：韩语
        # spa：西班牙语
        # fre：法语
        # ger：德语
        # por：葡萄牙语
        # vie：越语
        # may：马来语
        # rus：俄语
        # ita：意大利语
        # hol：荷兰语
        # swe：瑞典语
        # fin：芬兰语
        # dan：丹麦语
        # nor：挪威语
        # hun：匈牙利语
        # tha：泰语
        # hi：印地语
        # ara：阿拉伯语
        # @type LanguageType: String
        # @param IsPdf: 是否开启PDF识别，默认值为false，开启后可同时支持图片和PDF的识别。
        # @type IsPdf: Boolean
        # @param PdfPageNumber: 需要识别的PDF页面的对应页码，仅支持PDF单页识别，当上传文件为PDF且IsPdf参数值为true时有效，默认值为1。
        # @type PdfPageNumber: Integer
        # @param IsWords: 是否返回单字信息，默认关
        # @type IsWords: Boolean

        attr_accessor :ImageBase64, :ImageUrl, :Scene, :LanguageType, :IsPdf, :PdfPageNumber, :IsWords
        
        def initialize(imagebase64=nil, imageurl=nil, scene=nil, languagetype=nil, ispdf=nil, pdfpagenumber=nil, iswords=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @Scene = scene
          @LanguageType = languagetype
          @IsPdf = ispdf
          @PdfPageNumber = pdfpagenumber
          @IsWords = iswords
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @Scene = params['Scene']
          @LanguageType = params['LanguageType']
          @IsPdf = params['IsPdf']
          @PdfPageNumber = params['PdfPageNumber']
          @IsWords = params['IsWords']
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
        # @param PdfPageSize: 图片为PDF时，返回PDF的总页数，默认为0
        # @type PdfPageSize: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TextDetections, :Language, :Angel, :PdfPageSize, :RequestId
        
        def initialize(textdetections=nil, language=nil, angel=nil, pdfpagesize=nil, requestid=nil)
          @TextDetections = textdetections
          @Language = language
          @Angel = angel
          @PdfPageSize = pdfpagesize
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TextDetections'].nil?
            @TextDetections = []
            params['TextDetections'].each do |i|
              textdetection_tmp = TextDetection.new
              textdetection_tmp.deserialize(i)
              @TextDetections << textdetection_tmp
            end
          end
          @Language = params['Language']
          @Angel = params['Angel']
          @PdfPageSize = params['PdfPageSize']
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
          unless params['TextDetections'].nil?
            @TextDetections = []
            params['TextDetections'].each do |i|
              textdetection_tmp = TextDetection.new
              textdetection_tmp.deserialize(i)
              @TextDetections << textdetection_tmp
            end
          end
          @Angel = params['Angel']
          @RequestId = params['RequestId']
        end
      end

      # GeneralFastOCR请求参数结构体
      class GeneralFastOCRRequest < TencentCloud::Common::AbstractModel
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
        # @param IsPdf: 是否开启PDF识别，默认值为false，开启后可同时支持图片和PDF的识别。
        # @type IsPdf: Boolean
        # @param PdfPageNumber: 需要识别的PDF页面的对应页码，仅支持PDF单页识别，当上传文件为PDF且IsPdf参数值为true时有效，默认值为1。
        # @type PdfPageNumber: Integer

        attr_accessor :ImageBase64, :ImageUrl, :IsPdf, :PdfPageNumber
        
        def initialize(imagebase64=nil, imageurl=nil, ispdf=nil, pdfpagenumber=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @IsPdf = ispdf
          @PdfPageNumber = pdfpagenumber
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @IsPdf = params['IsPdf']
          @PdfPageNumber = params['PdfPageNumber']
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
        # @param PdfPageSize: 图片为PDF时，返回PDF的总页数，默认为0
        # @type PdfPageSize: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TextDetections, :Language, :Angel, :PdfPageSize, :RequestId
        
        def initialize(textdetections=nil, language=nil, angel=nil, pdfpagesize=nil, requestid=nil)
          @TextDetections = textdetections
          @Language = language
          @Angel = angel
          @PdfPageSize = pdfpagesize
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TextDetections'].nil?
            @TextDetections = []
            params['TextDetections'].each do |i|
              textdetection_tmp = TextDetection.new
              textdetection_tmp.deserialize(i)
              @TextDetections << textdetection_tmp
            end
          end
          @Language = params['Language']
          @Angel = params['Angel']
          @PdfPageSize = params['PdfPageSize']
          @RequestId = params['RequestId']
        end
      end

      # GeneralHandwritingOCR请求参数结构体
      class GeneralHandwritingOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过7M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param Scene: 场景字段，默认不用填写。
        # 可选值:only_hw  表示只输出手写体识别结果，过滤印刷体。
        # @type Scene: String
        # @param EnableWordPolygon: 是否开启单字的四点定位坐标输出，默认值为false。
        # @type EnableWordPolygon: Boolean
        # @param EnableDetectText: 文本检测开关，默认值为true。
        # 设置为false表示直接进行单行识别，可适用于识别单行手写体签名场景。
        # @type EnableDetectText: Boolean

        attr_accessor :ImageBase64, :ImageUrl, :Scene, :EnableWordPolygon, :EnableDetectText
        
        def initialize(imagebase64=nil, imageurl=nil, scene=nil, enablewordpolygon=nil, enabledetecttext=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @Scene = scene
          @EnableWordPolygon = enablewordpolygon
          @EnableDetectText = enabledetecttext
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @Scene = params['Scene']
          @EnableWordPolygon = params['EnableWordPolygon']
          @EnableDetectText = params['EnableDetectText']
        end
      end

      # GeneralHandwritingOCR返回参数结构体
      class GeneralHandwritingOCRResponse < TencentCloud::Common::AbstractModel
        # @param TextDetections: 检测到的文本信息，具体内容请点击左侧链接。
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
          unless params['TextDetections'].nil?
            @TextDetections = []
            params['TextDetections'].each do |i|
              textgeneralhandwriting_tmp = TextGeneralHandwriting.new
              textgeneralhandwriting_tmp.deserialize(i)
              @TextDetections << textgeneralhandwriting_tmp
            end
          end
          @Angel = params['Angel']
          @RequestId = params['RequestId']
        end
      end

      # HKIDCardOCR请求参数结构体
      class HKIDCardOCRRequest < TencentCloud::Common::AbstractModel
        # @param DetectFake: 是否鉴伪。
        # @type DetectFake: Boolean
        # @param ReturnHeadImage: 是否返回人像照片。
        # @type ReturnHeadImage: Boolean
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 3M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String

        attr_accessor :DetectFake, :ReturnHeadImage, :ImageBase64, :ImageUrl
        
        def initialize(detectfake=nil, returnheadimage=nil, imagebase64=nil, imageurl=nil)
          @DetectFake = detectfake
          @ReturnHeadImage = returnheadimage
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @DetectFake = params['DetectFake']
          @ReturnHeadImage = params['ReturnHeadImage']
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
        end
      end

      # HKIDCardOCR返回参数结构体
      class HKIDCardOCRResponse < TencentCloud::Common::AbstractModel
        # @param CnName: 中文姓名
        # @type CnName: String
        # @param EnName: 英文姓名
        # @type EnName: String
        # @param TelexCode: 中文姓名对应电码
        # @type TelexCode: String
        # @param Sex: 性别 ：“男M”或“女F”
        # @type Sex: String
        # @param Birthday: 出生日期
        # @type Birthday: String
        # @param Permanent: 永久性居民身份证。
        # 0：非永久；
        # 1：永久；
        # -1：未知。
        # @type Permanent: Integer
        # @param IdNum: 身份证号码
        # @type IdNum: String
        # @param Symbol: 证件符号，出生日期下的符号，例如"***AZ"
        # @type Symbol: String
        # @param FirstIssueDate: 首次签发日期
        # @type FirstIssueDate: String
        # @param CurrentIssueDate: 最近领用日期
        # @type CurrentIssueDate: String
        # @param FakeDetectResult: 真假判断。
        # 0：无法判断（图像模糊、不完整、反光、过暗等导致无法判断）；
        # 1：假；
        # 2：真。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FakeDetectResult: Integer
        # @param HeadImage: 人像照片Base64后的结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeadImage: String
        # @param WarningCode: 多重告警码，当身份证是翻拍、复印、PS件时返回对应告警码。
        # -9102：证照复印件告警
        # -9103：证照翻拍告警
        # -9104：证照PS告警
        # -9105：证照防伪告警
        # @type WarningCode: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CnName, :EnName, :TelexCode, :Sex, :Birthday, :Permanent, :IdNum, :Symbol, :FirstIssueDate, :CurrentIssueDate, :FakeDetectResult, :HeadImage, :WarningCode, :RequestId
        
        def initialize(cnname=nil, enname=nil, telexcode=nil, sex=nil, birthday=nil, permanent=nil, idnum=nil, symbol=nil, firstissuedate=nil, currentissuedate=nil, fakedetectresult=nil, headimage=nil, warningcode=nil, requestid=nil)
          @CnName = cnname
          @EnName = enname
          @TelexCode = telexcode
          @Sex = sex
          @Birthday = birthday
          @Permanent = permanent
          @IdNum = idnum
          @Symbol = symbol
          @FirstIssueDate = firstissuedate
          @CurrentIssueDate = currentissuedate
          @FakeDetectResult = fakedetectresult
          @HeadImage = headimage
          @WarningCode = warningcode
          @RequestId = requestid
        end

        def deserialize(params)
          @CnName = params['CnName']
          @EnName = params['EnName']
          @TelexCode = params['TelexCode']
          @Sex = params['Sex']
          @Birthday = params['Birthday']
          @Permanent = params['Permanent']
          @IdNum = params['IdNum']
          @Symbol = params['Symbol']
          @FirstIssueDate = params['FirstIssueDate']
          @CurrentIssueDate = params['CurrentIssueDate']
          @FakeDetectResult = params['FakeDetectResult']
          @HeadImage = params['HeadImage']
          @WarningCode = params['WarningCode']
          @RequestId = params['RequestId']
        end
      end

      # HmtResidentPermitOCR请求参数结构体
      class HmtResidentPermitOCRRequest < TencentCloud::Common::AbstractModel
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
        # @param VisaNum: 签发次数
        # @type VisaNum: String
        # @param PassNo: 通行证号码
        # @type PassNo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Sex, :Birth, :Address, :IdCardNo, :CardType, :ValidDate, :Authority, :VisaNum, :PassNo, :RequestId
        
        def initialize(name=nil, sex=nil, birth=nil, address=nil, idcardno=nil, cardtype=nil, validdate=nil, authority=nil, visanum=nil, passno=nil, requestid=nil)
          @Name = name
          @Sex = sex
          @Birth = birth
          @Address = address
          @IdCardNo = idcardno
          @CardType = cardtype
          @ValidDate = validdate
          @Authority = authority
          @VisaNum = visanum
          @PassNo = passno
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
          @VisaNum = params['VisaNum']
          @PassNo = params['PassNo']
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
        # ReflectWarn，是否开启反光检测

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

        # Quality，图片质量分数，请求 Config.Quality 时返回（取值范围：0 ~ 100，分数越低越模糊，建议阈值≥50）;
        # BorderCodeValue，身份证边框不完整告警阈值分数，请求 Config.BorderCheckWarn时返回（取值范围：0 ~ 100，分数越低边框遮挡可能性越低，建议阈值≤50）;

        # WarnInfos，告警信息，Code 告警码列表和释义：
        # -9100	身份证有效日期不合法告警，
        # -9101	身份证边框不完整告警，
        # -9102	身份证复印件告警，
        # -9103	身份证翻拍告警，
        # -9105	身份证框内遮挡告警，
        # -9104	临时身份证告警，
        # -9106	身份证 PS 告警，
        # -9107       身份证反光告警。
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
        # @param Name: 识别出的字段名称(关键字)，支持以下字段：
        # 【病案首页】
        # 姓名、性别、出生日期、出院诊断、疾病编码、入院病情等。
        # 【费用清单】
        # 医疗参保人员类别、身份证号、入院方式、结账日期、项目、金额等。
        # 【结算单】
        # 名称、单价、数量、金额、医保内、医保外等。
        # 【医疗发票】
        # 姓名、性别、住院时间、收费项目、金额、合计等。
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
          unless params['InsuranceBillInfos'].nil?
            @InsuranceBillInfos = []
            params['InsuranceBillInfos'].each do |i|
              insurancebillinfo_tmp = InsuranceBillInfo.new
              insurancebillinfo_tmp.deserialize(i)
              @InsuranceBillInfos << insurancebillinfo_tmp
            end
          end
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
        # @param Rect: 识别出的图片在混贴票据图片中的位置信息。与Angel结合可以得出原图位置，组成RotatedRect((X+0.5\*Width,Y+0.5\*Height), (Width, Height), Angle)，详情可参考OpenCV文档。
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
            @Rect = Rect.new
            @Rect.deserialize(params['Rect'])
          end
          @Image = params['Image']
        end
      end

      # 通用机打发票信息
      class InvoiceGeneralInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称(关键字)，支持以下字段识别（注：下划线表示一个字段）：
        # 发票代码、发票号码、日期、合计金额(小写)、合计金额(大写)、购买方识别号、销售方识别号、校验码、购买方名称、销售方名称、时间、种类、发票消费类型、省、市、是否有公司印章、发票名称、<span style="text-decoration:underline">购买方地址、电话</span>、<span style="text-decoration:underline">销售方地址、电话</span>、购买方开户行及账号、销售方开户行及账号、经办人取票用户、经办人支付信息、经办人商户号、经办人订单号、<span style="text-decoration:underline">货物或应税劳务、服务名称</span>、数量、单价、税率、税额、金额、单位、规格型号、合计税额、合计金额、备注、收款人、复核、开票人、密码区、行业分类
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
            @Rect = Rect.new
            @Rect.deserialize(params['Rect'])
          end
        end
      end

      # InvoiceGeneralOCR请求参数结构体
      class InvoiceGeneralOCRRequest < TencentCloud::Common::AbstractModel
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
          unless params['InvoiceGeneralInfos'].nil?
            @InvoiceGeneralInfos = []
            params['InvoiceGeneralInfos'].each do |i|
              invoicegeneralinfo_tmp = InvoiceGeneralInfo.new
              invoicegeneralinfo_tmp.deserialize(i)
              @InvoiceGeneralInfos << invoicegeneralinfo_tmp
            end
          end
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

      # LicensePlateOCR返回参数结构体
      class LicensePlateOCRResponse < TencentCloud::Common::AbstractModel
        # @param Number: 识别出的车牌号码。
        # @type Number: String
        # @param Confidence: 置信度，0 - 100 之间。
        # @type Confidence: Integer
        # @param Rect: 文本行在原图片中的像素坐标框。
        # @type Rect: :class:`Tencentcloud::Ocr.v20181119.models.Rect`
        # @param Color: 识别出的车牌颜色，目前支持颜色包括 “白”、“黑”、“蓝”、“绿“、“黄”、“黄绿”、“临牌”。
        # @type Color: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Number, :Confidence, :Rect, :Color, :RequestId
        
        def initialize(number=nil, confidence=nil, rect=nil, color=nil, requestid=nil)
          @Number = number
          @Confidence = confidence
          @Rect = rect
          @Color = color
          @RequestId = requestid
        end

        def deserialize(params)
          @Number = params['Number']
          @Confidence = params['Confidence']
          unless params['Rect'].nil?
            @Rect = Rect.new
            @Rect.deserialize(params['Rect'])
          end
          @Color = params['Color']
          @RequestId = params['RequestId']
        end
      end

      # MLIDCardOCR请求参数结构体
      class MLIDCardOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。( 中国地区之外不支持这个字段 )
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 7M。图片下载时间不超过 3 秒。
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
        # -9107       模糊图片告警
        # @type Warn: Array
        # @param Image: 证件图片
        # @type Image: String
        # @param AdvancedInfo: 此字段为扩展字段。
        # 返回字段识别结果的置信度，格式如下
        # {
        #   字段名:{
        #     Confidence:0.9999
        #   }
        # }
        # @type AdvancedInfo: String
        # @param Type: 证件类型
        # MyKad  身份证
        # MyPR    永居证
        # MyTentera   军官证
        # MyKAS    临时身份证
        # POLIS  警察证
        # IKAD   劳工证
        # MyKid 儿童卡
        # @type Type: String
        # @param Birthday: 出生日期（目前该字段仅支持IKAD劳工证、MyKad 身份证）
        # @type Birthday: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ID, :Name, :Address, :Sex, :Warn, :Image, :AdvancedInfo, :Type, :Birthday, :RequestId
        
        def initialize(id=nil, name=nil, address=nil, sex=nil, warn=nil, image=nil, advancedinfo=nil, type=nil, birthday=nil, requestid=nil)
          @ID = id
          @Name = name
          @Address = address
          @Sex = sex
          @Warn = warn
          @Image = image
          @AdvancedInfo = advancedinfo
          @Type = type
          @Birthday = birthday
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
          @Birthday = params['Birthday']
          @RequestId = params['RequestId']
        end
      end

      # MLIDPassportOCR请求参数结构体
      class MLIDPassportOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        # @type ImageBase64: String
        # @param RetImage: 是否返回图片，默认false
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
        # @param CodeSet: 最下方第一行 MRZ Code 序列
        # @type CodeSet: String
        # @param CodeCrc: 最下方第二行 MRZ Code 序列
        # @type CodeCrc: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ID, :Name, :DateOfBirth, :Sex, :DateOfExpiration, :IssuingCountry, :Nationality, :Warn, :Image, :AdvancedInfo, :CodeSet, :CodeCrc, :RequestId
        
        def initialize(id=nil, name=nil, dateofbirth=nil, sex=nil, dateofexpiration=nil, issuingcountry=nil, nationality=nil, warn=nil, image=nil, advancedinfo=nil, codeset=nil, codecrc=nil, requestid=nil)
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
          @CodeSet = codeset
          @CodeCrc = codecrc
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
          @CodeSet = params['CodeSet']
          @CodeCrc = params['CodeCrc']
          @RequestId = params['RequestId']
        end
      end

      # MainlandPermitOCR请求参数结构体
      class MainlandPermitOCRRequest < TencentCloud::Common::AbstractModel
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
        # 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 7M。图片下载时间不超过 3 秒。
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
          unless params['InvoiceDetectInfos'].nil?
            @InvoiceDetectInfos = []
            params['InvoiceDetectInfos'].each do |i|
              invoicedetectinfo_tmp = InvoiceDetectInfo.new
              invoicedetectinfo_tmp.deserialize(i)
              @InvoiceDetectInfos << invoicedetectinfo_tmp
            end
          end
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
        # @param Rect: 识别出的图片在混贴票据图片中的位置信息。与Angel结合可以得出原图位置，组成RotatedRect((X+0.5\*Width,Y+0.5\*Height), (Width, Height), Angle)，详情可参考OpenCV文档。
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
            @Rect = Rect.new
            @Rect.deserialize(params['Rect'])
          end
          @Angle = params['Angle']
          unless params['SingleInvoiceInfos'].nil?
            @SingleInvoiceInfos = []
            params['SingleInvoiceInfos'].each do |i|
              singleinvoiceinfo_tmp = SingleInvoiceInfo.new
              singleinvoiceinfo_tmp.deserialize(i)
              @SingleInvoiceInfos << singleinvoiceinfo_tmp
            end
          end
        end
      end

      # MixedInvoiceOCR请求参数结构体
      class MixedInvoiceOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG、PDF，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG、PDF，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 7M。图片下载时间不超过 3 秒。
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
        # 15：非税发票
        # 16：全电发票
        # @type Types: Array
        # @param ReturnOther: 是否识别其他类型发票，默认为Yes
        # Yes：识别其他类型发票
        # No：不识别其他类型发票
        # @type ReturnOther: String

        attr_accessor :ImageBase64, :ImageUrl, :Types, :ReturnOther
        
        def initialize(imagebase64=nil, imageurl=nil, types=nil, returnother=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @Types = types
          @ReturnOther = returnother
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @Types = params['Types']
          @ReturnOther = params['ReturnOther']
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
          unless params['MixedInvoiceItems'].nil?
            @MixedInvoiceItems = []
            params['MixedInvoiceItems'].each do |i|
              mixedinvoiceitem_tmp = MixedInvoiceItem.new
              mixedinvoiceitem_tmp.deserialize(i)
              @MixedInvoiceItems << mixedinvoiceitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 网约车行程单识别结果
      class OnlineTaxiItineraryInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称(关键字)，支持以下字段：
        # 发票代码、 机打代码、 发票号码、 发动机号码、 合格证号、 机打号码、 价税合计(小写)、 销货单位名称、 身份证号码/组织机构代码、 购买方名称、 销售方纳税人识别号、 购买方纳税人识别号、主管税务机关、 主管税务机关代码、 开票日期、 不含税价(小写)、 吨位、增值税税率或征收率、 车辆识别代号/车架号码、 增值税税额、 厂牌型号、 省、 市、 发票消费类型、 销售方电话、 销售方账号、 产地、 进口证明书号、 车辆类型、 机器编号、备注、开票人、限乘人数、商检单号、销售方地址、销售方开户银行、价税合计、发票类型。
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

      # OrgCodeCertOCR请求参数结构体
      class OrgCodeCertOCRRequest < TencentCloud::Common::AbstractModel
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

      # 通行费发票信息
      class PassInvoiceInfo < TencentCloud::Common::AbstractModel
        # @param NumberPlate: 通行费车牌号
        # @type NumberPlate: String
        # @param Type: 通行费类型
        # @type Type: String
        # @param PassDateBegin: 通行日期起
        # @type PassDateBegin: String
        # @param PassDateEnd: 通行日期止
        # @type PassDateEnd: String
        # @param TaxClassifyCode: 税收分类编码
        # @type TaxClassifyCode: String

        attr_accessor :NumberPlate, :Type, :PassDateBegin, :PassDateEnd, :TaxClassifyCode
        
        def initialize(numberplate=nil, type=nil, passdatebegin=nil, passdateend=nil, taxclassifycode=nil)
          @NumberPlate = numberplate
          @Type = type
          @PassDateBegin = passdatebegin
          @PassDateEnd = passdateend
          @TaxClassifyCode = taxclassifycode
        end

        def deserialize(params)
          @NumberPlate = params['NumberPlate']
          @Type = params['Type']
          @PassDateBegin = params['PassDateBegin']
          @PassDateEnd = params['PassDateEnd']
          @TaxClassifyCode = params['TaxClassifyCode']
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

      # 文本的坐标，以四个顶点坐标表示
      # 注意：此字段可能返回 null，表示取不到有效值
      class Polygon < TencentCloud::Common::AbstractModel
        # @param LeftTop: 左上顶点坐标
        # @type LeftTop: :class:`Tencentcloud::Ocr.v20181119.models.Coord`
        # @param RightTop: 右上顶点坐标
        # @type RightTop: :class:`Tencentcloud::Ocr.v20181119.models.Coord`
        # @param RightBottom: 右下顶点坐标
        # @type RightBottom: :class:`Tencentcloud::Ocr.v20181119.models.Coord`
        # @param LeftBottom: 左下顶点坐标
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
            @LeftTop = Coord.new
            @LeftTop.deserialize(params['LeftTop'])
          end
          unless params['RightTop'].nil?
            @RightTop = Coord.new
            @RightTop.deserialize(params['RightTop'])
          end
          unless params['RightBottom'].nil?
            @RightBottom = Coord.new
            @RightBottom.deserialize(params['RightBottom'])
          end
          unless params['LeftBottom'].nil?
            @LeftBottom = Coord.new
            @LeftBottom.deserialize(params['LeftBottom'])
          end
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
        # @param ImageBase64: 图片的 Base64 值。要求图片经Base64编码后不超过 7M，支持PNG、JPG、JPEG格式。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。要求图片经Base64编码后不超过 7M，支持PNG、JPG、JPEG格式。
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
          unless params['CodeResults'].nil?
            @CodeResults = []
            params['CodeResults'].each do |i|
              qrcoderesultsinfo_tmp = QrcodeResultsInfo.new
              qrcoderesultsinfo_tmp.deserialize(i)
              @CodeResults << qrcoderesultsinfo_tmp
            end
          end
          unless params['ImgSize'].nil?
            @ImgSize = QrcodeImgSize.new
            @ImgSize.deserialize(params['ImgSize'])
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
            @LeftTop = Coord.new
            @LeftTop.deserialize(params['LeftTop'])
          end
          unless params['RightTop'].nil?
            @RightTop = Coord.new
            @RightTop.deserialize(params['RightTop'])
          end
          unless params['RightBottom'].nil?
            @RightBottom = Coord.new
            @RightBottom.deserialize(params['RightBottom'])
          end
          unless params['LeftBottom'].nil?
            @LeftBottom = Coord.new
            @LeftBottom.deserialize(params['LeftBottom'])
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
            @Position = QrcodePositionObj.new
            @Position.deserialize(params['Position'])
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
          unless params['ProductDataRecords'].nil?
            @ProductDataRecords = []
            params['ProductDataRecords'].each do |i|
              productdatarecord_tmp = ProductDataRecord.new
              productdatarecord_tmp.deserialize(i)
              @ProductDataRecords << productdatarecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 数学试题识别结构化对象
      class QuestionBlockObj < TencentCloud::Common::AbstractModel
        # @param QuestionArr: 数学试题识别结构化信息数组
        # @type QuestionArr: Array
        # @param QuestionBboxCoord: 题目主体区域检测框在图片中的像素坐标
        # @type QuestionBboxCoord: :class:`Tencentcloud::Ocr.v20181119.models.Rect`

        attr_accessor :QuestionArr, :QuestionBboxCoord
        
        def initialize(questionarr=nil, questionbboxcoord=nil)
          @QuestionArr = questionarr
          @QuestionBboxCoord = questionbboxcoord
        end

        def deserialize(params)
          unless params['QuestionArr'].nil?
            @QuestionArr = []
            params['QuestionArr'].each do |i|
              questionobj_tmp = QuestionObj.new
              questionobj_tmp.deserialize(i)
              @QuestionArr << questionobj_tmp
            end
          end
          unless params['QuestionBboxCoord'].nil?
            @QuestionBboxCoord = Rect.new
            @QuestionBboxCoord.deserialize(params['QuestionBboxCoord'])
          end
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
        # @param QuestionImageCoords: 示意图检测框在的图片中的像素坐标
        # @type QuestionImageCoords: Array

        attr_accessor :QuestionTextNo, :QuestionTextType, :QuestionText, :QuestionOptions, :QuestionSubquestion, :QuestionImageCoords
        
        def initialize(questiontextno=nil, questiontexttype=nil, questiontext=nil, questionoptions=nil, questionsubquestion=nil, questionimagecoords=nil)
          @QuestionTextNo = questiontextno
          @QuestionTextType = questiontexttype
          @QuestionText = questiontext
          @QuestionOptions = questionoptions
          @QuestionSubquestion = questionsubquestion
          @QuestionImageCoords = questionimagecoords
        end

        def deserialize(params)
          @QuestionTextNo = params['QuestionTextNo']
          @QuestionTextType = params['QuestionTextType']
          @QuestionText = params['QuestionText']
          @QuestionOptions = params['QuestionOptions']
          @QuestionSubquestion = params['QuestionSubquestion']
          unless params['QuestionImageCoords'].nil?
            @QuestionImageCoords = []
            params['QuestionImageCoords'].each do |i|
              rect_tmp = Rect.new
              rect_tmp.deserialize(i)
              @QuestionImageCoords << rect_tmp
            end
          end
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

      # RecognizeContainerOCR请求参数结构体
      class RecognizeContainerOCRRequest < TencentCloud::Common::AbstractModel
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

      # RecognizeContainerOCR返回参数结构体
      class RecognizeContainerOCRResponse < TencentCloud::Common::AbstractModel
        # @param ContainerId: 集装箱箱号
        # @type ContainerId: String
        # @param ContainerType: 集装箱类型
        # @type ContainerType: String
        # @param GrossKG: 集装箱总重量，单位：千克（KG）
        # @type GrossKG: String
        # @param GrossLB: 集装箱总重量，单位：磅（LB）
        # @type GrossLB: String
        # @param PayloadKG: 集装箱有效承重，单位：千克（KG）
        # @type PayloadKG: String
        # @param PayloadLB: 集装箱有效承重，单位：磅（LB）
        # @type PayloadLB: String
        # @param CapacityM3: 集装箱容量，单位：立方米
        # @type CapacityM3: String
        # @param CapacityFT3: 集装箱容量，单位：立英尺
        # @type CapacityFT3: String
        # @param Warn: 告警码
        # -9926	集装箱箱号不完整或者不清晰
        # -9927	集装箱类型不完整或者不清晰
        # @type Warn: Array
        # @param TareKG: 集装箱自身重量，单位：千克（KG）
        # @type TareKG: String
        # @param TareLB: 集装箱自身重量，单位：磅（LB）
        # @type TareLB: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ContainerId, :ContainerType, :GrossKG, :GrossLB, :PayloadKG, :PayloadLB, :CapacityM3, :CapacityFT3, :Warn, :TareKG, :TareLB, :RequestId
        
        def initialize(containerid=nil, containertype=nil, grosskg=nil, grosslb=nil, payloadkg=nil, payloadlb=nil, capacitym3=nil, capacityft3=nil, warn=nil, tarekg=nil, tarelb=nil, requestid=nil)
          @ContainerId = containerid
          @ContainerType = containertype
          @GrossKG = grosskg
          @GrossLB = grosslb
          @PayloadKG = payloadkg
          @PayloadLB = payloadlb
          @CapacityM3 = capacitym3
          @CapacityFT3 = capacityft3
          @Warn = warn
          @TareKG = tarekg
          @TareLB = tarelb
          @RequestId = requestid
        end

        def deserialize(params)
          @ContainerId = params['ContainerId']
          @ContainerType = params['ContainerType']
          @GrossKG = params['GrossKG']
          @GrossLB = params['GrossLB']
          @PayloadKG = params['PayloadKG']
          @PayloadLB = params['PayloadLB']
          @CapacityM3 = params['CapacityM3']
          @CapacityFT3 = params['CapacityFT3']
          @Warn = params['Warn']
          @TareKG = params['TareKG']
          @TareLB = params['TareLB']
          @RequestId = params['RequestId']
        end
      end

      # RecognizeHealthCodeOCR请求参数结构体
      class RecognizeHealthCodeOCRRequest < TencentCloud::Common::AbstractModel
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
        # @param Type: 需要识别的健康码类型列表，为空或不填表示默认为自动识别。
        # 0:自动识别
        # @type Type: Integer

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

      # RecognizeHealthCodeOCR返回参数结构体
      class RecognizeHealthCodeOCRResponse < TencentCloud::Common::AbstractModel
        # @param Name: 持码人姓名，如：王*（允许返回空值）
        # @type Name: String
        # @param IDNumber: 持码人身份证号，如：11**************01（允许返回空值）
        # @type IDNumber: String
        # @param Time: 健康码更新时间（允许返回空值）
        # @type Time: String
        # @param Color: 健康码颜色：绿色、黄色、红色（允许返回空值）
        # @type Color: String
        # @param TestingInterval: 核酸检测间隔时长（允许返回空值）
        # @type TestingInterval: String
        # @param TestingResult: 核酸检测结果：阴性、阳性、暂无核酸检测记录（允许返回空值）
        # @type TestingResult: String
        # @param TestingTime: 核酸检测时间（允许返回空值）
        # @type TestingTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :IDNumber, :Time, :Color, :TestingInterval, :TestingResult, :TestingTime, :RequestId
        
        def initialize(name=nil, idnumber=nil, time=nil, color=nil, testinginterval=nil, testingresult=nil, testingtime=nil, requestid=nil)
          @Name = name
          @IDNumber = idnumber
          @Time = time
          @Color = color
          @TestingInterval = testinginterval
          @TestingResult = testingresult
          @TestingTime = testingtime
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @IDNumber = params['IDNumber']
          @Time = params['Time']
          @Color = params['Color']
          @TestingInterval = params['TestingInterval']
          @TestingResult = params['TestingResult']
          @TestingTime = params['TestingTime']
          @RequestId = params['RequestId']
        end
      end

      # RecognizeOnlineTaxiItineraryOCR请求参数结构体
      class RecognizeOnlineTaxiItineraryOCRRequest < TencentCloud::Common::AbstractModel
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
        # @param IsPdf: 是否开启PDF识别，默认值为false，开启后可同时支持图片和PDF的识别。
        # @type IsPdf: Boolean
        # @param PdfPageNumber: 需要识别的PDF页面的对应页码，仅支持PDF单页识别，当上传文件为PDF且IsPdf参数值为true时有效，默认值为1。
        # @type PdfPageNumber: Integer

        attr_accessor :ImageBase64, :ImageUrl, :IsPdf, :PdfPageNumber
        
        def initialize(imagebase64=nil, imageurl=nil, ispdf=nil, pdfpagenumber=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @IsPdf = ispdf
          @PdfPageNumber = pdfpagenumber
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @IsPdf = params['IsPdf']
          @PdfPageNumber = params['PdfPageNumber']
        end
      end

      # RecognizeOnlineTaxiItineraryOCR返回参数结构体
      class RecognizeOnlineTaxiItineraryOCRResponse < TencentCloud::Common::AbstractModel
        # @param OnlineTaxiItineraryInfos: 网约车行程单识别结果，具体内容请点击左侧链接。
        # @type OnlineTaxiItineraryInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OnlineTaxiItineraryInfos, :RequestId
        
        def initialize(onlinetaxiitineraryinfos=nil, requestid=nil)
          @OnlineTaxiItineraryInfos = onlinetaxiitineraryinfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['OnlineTaxiItineraryInfos'].nil?
            @OnlineTaxiItineraryInfos = []
            params['OnlineTaxiItineraryInfos'].each do |i|
              onlinetaxiitineraryinfo_tmp = OnlineTaxiItineraryInfo.new
              onlinetaxiitineraryinfo_tmp.deserialize(i)
              @OnlineTaxiItineraryInfos << onlinetaxiitineraryinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # RecognizeTableOCR请求参数结构体
      class RecognizeTableOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片/PDF的 Base64 值。
        # 要求图片/PDF经Base64编码后不超过 7M，分辨率建议600*800以上，支持PNG、JPG、JPEG、BMP、PDF格式。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片/PDF的 Url 地址。
        # 要求图片/PDF经Base64编码后不超过 7M，分辨率建议600*800以上，支持PNG、JPG、JPEG、BMP、PDF格式。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param IsPdf: 是否开启PDF识别，默认值为false，开启后可同时支持图片和PDF的识别。
        # @type IsPdf: Boolean
        # @param PdfPageNumber: 需要识别的PDF页面的对应页码，仅支持PDF单页识别，当上传文件为PDF且IsPdf参数值为true时有效，默认值为1。
        # @type PdfPageNumber: Integer
        # @param TableLanguage: 语言，zh：中英文（默认）jap：日文
        # @type TableLanguage: String

        attr_accessor :ImageBase64, :ImageUrl, :IsPdf, :PdfPageNumber, :TableLanguage
        
        def initialize(imagebase64=nil, imageurl=nil, ispdf=nil, pdfpagenumber=nil, tablelanguage=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @IsPdf = ispdf
          @PdfPageNumber = pdfpagenumber
          @TableLanguage = tablelanguage
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @IsPdf = params['IsPdf']
          @PdfPageNumber = params['PdfPageNumber']
          @TableLanguage = params['TableLanguage']
        end
      end

      # RecognizeTableOCR返回参数结构体
      class RecognizeTableOCRResponse < TencentCloud::Common::AbstractModel
        # @param TableDetections: 检测到的文本信息，具体内容请点击左侧链接。
        # @type TableDetections: Array
        # @param Data: Base64 编码后的 Excel 数据。
        # @type Data: String
        # @param PdfPageSize: 图片为PDF时，返回PDF的总页数，默认为0
        # @type PdfPageSize: Integer
        # @param Angle: 图片旋转角度（角度制），文本的水平方向为0°，统一以逆时针方向旋转，逆时针为负，角度范围为-360°至0°。
        # @type Angle: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TableDetections, :Data, :PdfPageSize, :Angle, :RequestId
        
        def initialize(tabledetections=nil, data=nil, pdfpagesize=nil, angle=nil, requestid=nil)
          @TableDetections = tabledetections
          @Data = data
          @PdfPageSize = pdfpagesize
          @Angle = angle
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TableDetections'].nil?
            @TableDetections = []
            params['TableDetections'].each do |i|
              tabledetectinfo_tmp = TableDetectInfo.new
              tabledetectinfo_tmp.deserialize(i)
              @TableDetections << tabledetectinfo_tmp
            end
          end
          @Data = params['Data']
          @PdfPageSize = params['PdfPageSize']
          @Angle = params['Angle']
          @RequestId = params['RequestId']
        end
      end

      # RecognizeThaiIDCardOCR请求参数结构体
      class RecognizeThaiIDCardOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片的 Base64 值。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。要求图片经Base64编码后不超过 7M，分辨率建议500*800以上，支持PNG、JPG、JPEG、BMP格式。建议卡片部分占据图片2/3以上。
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

      # RecognizeThaiIDCardOCR返回参数结构体
      class RecognizeThaiIDCardOCRResponse < TencentCloud::Common::AbstractModel
        # @param ID: 身份证号码
        # @type ID: String
        # @param ThaiName: 泰文姓名
        # @type ThaiName: String
        # @param EnFirstName: 英文姓名
        # @type EnFirstName: String
        # @param Address: 地址
        # @type Address: String
        # @param Birthday: 出生日期
        # @type Birthday: String
        # @param IssueDate: 首次领用日期
        # @type IssueDate: String
        # @param ExpirationDate: 签发日期
        # @type ExpirationDate: String
        # @param EnLastName: 英文姓名
        # @type EnLastName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ID, :ThaiName, :EnFirstName, :Address, :Birthday, :IssueDate, :ExpirationDate, :EnLastName, :RequestId
        
        def initialize(id=nil, thainame=nil, enfirstname=nil, address=nil, birthday=nil, issuedate=nil, expirationdate=nil, enlastname=nil, requestid=nil)
          @ID = id
          @ThaiName = thainame
          @EnFirstName = enfirstname
          @Address = address
          @Birthday = birthday
          @IssueDate = issuedate
          @ExpirationDate = expirationdate
          @EnLastName = enlastname
          @RequestId = requestid
        end

        def deserialize(params)
          @ID = params['ID']
          @ThaiName = params['ThaiName']
          @EnFirstName = params['EnFirstName']
          @Address = params['Address']
          @Birthday = params['Birthday']
          @IssueDate = params['IssueDate']
          @ExpirationDate = params['ExpirationDate']
          @EnLastName = params['EnLastName']
          @RequestId = params['RequestId']
        end
      end

      # RecognizeTravelCardOCR请求参数结构体
      class RecognizeTravelCardOCRRequest < TencentCloud::Common::AbstractModel
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

      # RecognizeTravelCardOCR返回参数结构体
      class RecognizeTravelCardOCRResponse < TencentCloud::Common::AbstractModel
        # @param Time: 行程卡更新时间，格式为：XXXX.XX.XX XX:XX:XX
        # @type Time: String
        # @param Color: 行程卡颜色：绿色、黄色、红色
        # @type Color: String
        # @param ReachedCity: 14天内到达或途经的城市
        # @type ReachedCity: Array
        # @param RiskArea: 14天内到达或途径存在中高风险地区的城市
        # @type RiskArea: Array
        # @param Telephone: 电话号码
        # @type Telephone: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Time, :Color, :ReachedCity, :RiskArea, :Telephone, :RequestId
        
        def initialize(time=nil, color=nil, reachedcity=nil, riskarea=nil, telephone=nil, requestid=nil)
          @Time = time
          @Color = color
          @ReachedCity = reachedcity
          @RiskArea = riskarea
          @Telephone = telephone
          @RequestId = requestid
        end

        def deserialize(params)
          @Time = params['Time']
          @Color = params['Color']
          @ReachedCity = params['ReachedCity']
          @RiskArea = params['RiskArea']
          @Telephone = params['Telephone']
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
        # @param Signature: 承办人签章文字
        # @type Signature: String
        # @param IssueDate: 签发日期
        # @type IssueDate: String
        # @param HomePageNumber: 户主页编号
        # @type HomePageNumber: String
        # @param HouseholderName: 户主姓名
        # @type HouseholderName: String
        # @param Relationship: 户主或与户主关系
        # @type Relationship: String
        # @param OtherAddresses: 本市（县）其他住址
        # @type OtherAddresses: String
        # @param ReligiousBelief: 宗教信仰
        # @type ReligiousBelief: String
        # @param Height: 身高
        # @type Height: String
        # @param BloodType: 血型
        # @type BloodType: String
        # @param MaritalStatus: 婚姻状况
        # @type MaritalStatus: String
        # @param VeteranStatus: 兵役状况
        # @type VeteranStatus: String
        # @param Profession: 职业
        # @type Profession: String
        # @param MoveToCityInformation: 何时由何地迁来本市(县)
        # @type MoveToCityInformation: String
        # @param MoveToSiteInformation: 何时由何地迁来本址
        # @type MoveToSiteInformation: String
        # @param RegistrationDate: 登记日期
        # @type RegistrationDate: String
        # @param FormerName: 曾用名
        # @type FormerName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HouseholdNumber, :Name, :Sex, :BirthPlace, :Nation, :NativePlace, :BirthDate, :IdCardNumber, :EducationDegree, :ServicePlace, :Household, :Address, :Signature, :IssueDate, :HomePageNumber, :HouseholderName, :Relationship, :OtherAddresses, :ReligiousBelief, :Height, :BloodType, :MaritalStatus, :VeteranStatus, :Profession, :MoveToCityInformation, :MoveToSiteInformation, :RegistrationDate, :FormerName, :RequestId
        
        def initialize(householdnumber=nil, name=nil, sex=nil, birthplace=nil, nation=nil, nativeplace=nil, birthdate=nil, idcardnumber=nil, educationdegree=nil, serviceplace=nil, household=nil, address=nil, signature=nil, issuedate=nil, homepagenumber=nil, householdername=nil, relationship=nil, otheraddresses=nil, religiousbelief=nil, height=nil, bloodtype=nil, maritalstatus=nil, veteranstatus=nil, profession=nil, movetocityinformation=nil, movetositeinformation=nil, registrationdate=nil, formername=nil, requestid=nil)
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
          @Signature = signature
          @IssueDate = issuedate
          @HomePageNumber = homepagenumber
          @HouseholderName = householdername
          @Relationship = relationship
          @OtherAddresses = otheraddresses
          @ReligiousBelief = religiousbelief
          @Height = height
          @BloodType = bloodtype
          @MaritalStatus = maritalstatus
          @VeteranStatus = veteranstatus
          @Profession = profession
          @MoveToCityInformation = movetocityinformation
          @MoveToSiteInformation = movetositeinformation
          @RegistrationDate = registrationdate
          @FormerName = formername
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
          @Signature = params['Signature']
          @IssueDate = params['IssueDate']
          @HomePageNumber = params['HomePageNumber']
          @HouseholderName = params['HouseholderName']
          @Relationship = params['Relationship']
          @OtherAddresses = params['OtherAddresses']
          @ReligiousBelief = params['ReligiousBelief']
          @Height = params['Height']
          @BloodType = params['BloodType']
          @MaritalStatus = params['MaritalStatus']
          @VeteranStatus = params['VeteranStatus']
          @Profession = params['Profession']
          @MoveToCityInformation = params['MoveToCityInformation']
          @MoveToSiteInformation = params['MoveToSiteInformation']
          @RegistrationDate = params['RegistrationDate']
          @FormerName = params['FormerName']
          @RequestId = params['RequestId']
        end
      end

      # RideHailingDriverLicenseOCR请求参数结构体
      class RideHailingDriverLicenseOCRRequest < TencentCloud::Common::AbstractModel
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

      # RideHailingDriverLicenseOCR返回参数结构体
      class RideHailingDriverLicenseOCRResponse < TencentCloud::Common::AbstractModel
        # @param Name: 姓名
        # @type Name: String
        # @param LicenseNumber: 证号，对应网约车驾驶证字段：证号/从业资格证号/驾驶员证号/身份证号
        # @type LicenseNumber: String
        # @param StartDate: 有效起始日期
        # @type StartDate: String
        # @param EndDate: 有效期截止时间，对应网约车驾驶证字段：有效期至/营运期限止
        # @type EndDate: String
        # @param ReleaseDate: 初始发证日期，对应网约车驾驶证字段：初始领证日期/发证日期
        # @type ReleaseDate: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :LicenseNumber, :StartDate, :EndDate, :ReleaseDate, :RequestId
        
        def initialize(name=nil, licensenumber=nil, startdate=nil, enddate=nil, releasedate=nil, requestid=nil)
          @Name = name
          @LicenseNumber = licensenumber
          @StartDate = startdate
          @EndDate = enddate
          @ReleaseDate = releasedate
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @LicenseNumber = params['LicenseNumber']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @ReleaseDate = params['ReleaseDate']
          @RequestId = params['RequestId']
        end
      end

      # RideHailingTransportLicenseOCR请求参数结构体
      class RideHailingTransportLicenseOCRRequest < TencentCloud::Common::AbstractModel
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

      # RideHailingTransportLicenseOCR返回参数结构体
      class RideHailingTransportLicenseOCRResponse < TencentCloud::Common::AbstractModel
        # @param OperationLicenseNumber: 交运管许可字号。
        # @type OperationLicenseNumber: String
        # @param VehicleOwner: 车辆所有人，对应网约车运输证字段：车辆所有人/车主名称/业户名称。
        # @type VehicleOwner: String
        # @param VehicleNumber: 车牌号码，对应网约车运输证字段：车牌号码/车辆号牌。
        # @type VehicleNumber: String
        # @param StartDate: 有效起始日期。
        # @type StartDate: String
        # @param EndDate: 有效期截止时间，对应网约车运输证字段：有效期至/营运期限止。
        # @type EndDate: String
        # @param ReleaseDate: 初始发证日期，对应网约车运输证字段：初始领证日期/发证日期。
        # @type ReleaseDate: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OperationLicenseNumber, :VehicleOwner, :VehicleNumber, :StartDate, :EndDate, :ReleaseDate, :RequestId
        
        def initialize(operationlicensenumber=nil, vehicleowner=nil, vehiclenumber=nil, startdate=nil, enddate=nil, releasedate=nil, requestid=nil)
          @OperationLicenseNumber = operationlicensenumber
          @VehicleOwner = vehicleowner
          @VehicleNumber = vehiclenumber
          @StartDate = startdate
          @EndDate = enddate
          @ReleaseDate = releasedate
          @RequestId = requestid
        end

        def deserialize(params)
          @OperationLicenseNumber = params['OperationLicenseNumber']
          @VehicleOwner = params['VehicleOwner']
          @VehicleNumber = params['VehicleNumber']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @ReleaseDate = params['ReleaseDate']
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
            @Location = Rect.new
            @Location.deserialize(params['Location'])
          end
          @OtherTexts = params['OtherTexts']
          @RequestId = params['RequestId']
        end
      end

      # 轮船票字段信息
      class ShipInvoiceInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称(关键字)，支持以下字段：
        # 发票代码、发票号码、日期、票价、始发地、目的地、姓名、时间、发票消费类型、省、市、币种。
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
            @Rect = Rect.new
            @Rect.deserialize(params['Rect'])
          end
        end
      end

      # ShipInvoiceOCR请求参数结构体
      class ShipInvoiceOCRRequest < TencentCloud::Common::AbstractModel
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
          unless params['ShipInvoiceInfos'].nil?
            @ShipInvoiceInfos = []
            params['ShipInvoiceInfos'].each do |i|
              shipinvoiceinfo_tmp = ShipInvoiceInfo.new
              shipinvoiceinfo_tmp.deserialize(i)
              @ShipInvoiceInfos << shipinvoiceinfo_tmp
            end
          end
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

      # SmartStructuralOCR请求参数结构体
      class SmartStructuralOCRRequest < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 7M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param ImageBase64: 图片的 Base64 值。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ItemNames: 自定义结构化功能需返回的字段名称，例：
        # 若客户只想返回姓名、性别两个字段的识别结果，则输入
        # ItemNames=["姓名","性别"]
        # @type ItemNames: Array

        attr_accessor :ImageUrl, :ImageBase64, :ItemNames
        
        def initialize(imageurl=nil, imagebase64=nil, itemnames=nil)
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
          @ItemNames = itemnames
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
          @ItemNames = params['ItemNames']
        end
      end

      # SmartStructuralOCR返回参数结构体
      class SmartStructuralOCRResponse < TencentCloud::Common::AbstractModel
        # @param Angle: 图片旋转角度(角度制)，文本的水平方向
        # 为 0；顺时针为正，逆时针为负
        # @type Angle: Float
        # @param StructuralItems: 识别信息
        # @type StructuralItems: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Angle, :StructuralItems, :RequestId
        
        def initialize(angle=nil, structuralitems=nil, requestid=nil)
          @Angle = angle
          @StructuralItems = structuralitems
          @RequestId = requestid
        end

        def deserialize(params)
          @Angle = params['Angle']
          unless params['StructuralItems'].nil?
            @StructuralItems = []
            params['StructuralItems'].each do |i|
              structuralitem_tmp = StructuralItem.new
              structuralitem_tmp.deserialize(i)
              @StructuralItems << structuralitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 智能结构化识别
      class StructuralItem < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称(关键字)。
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值。
        # @type Value: String
        # @param Confidence: 置信度 0 ~100。
        # @type Confidence: Integer
        # @param ItemCoord: 文本行在旋转纠正之后的图像中的像素
        # 坐标。
        # @type ItemCoord: :class:`Tencentcloud::Ocr.v20181119.models.ItemCoord`

        attr_accessor :Name, :Value, :Confidence, :ItemCoord
        
        def initialize(name=nil, value=nil, confidence=nil, itemcoord=nil)
          @Name = name
          @Value = value
          @Confidence = confidence
          @ItemCoord = itemcoord
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          @Confidence = params['Confidence']
          unless params['ItemCoord'].nil?
            @ItemCoord = ItemCoord.new
            @ItemCoord.deserialize(params['ItemCoord'])
          end
        end
      end

      # 单元格数据
      class TableCell < TencentCloud::Common::AbstractModel
        # @param ColTl: 单元格左上角的列索引
        # @type ColTl: Integer
        # @param RowTl: 单元格左上角的行索引
        # @type RowTl: Integer
        # @param ColBr: 单元格右下角的列索引
        # @type ColBr: Integer
        # @param RowBr: 单元格右下角的行索引
        # @type RowBr: Integer
        # @param Text: 单元格内识别出的字符串文本，若文本存在多行，以换行符"\n"隔开
        # @type Text: String
        # @param Type: 单元格类型
        # @type Type: String
        # @param Confidence: 单元格置信度
        # @type Confidence: Float
        # @param Polygon: 单元格在图像中的四点坐标
        # @type Polygon: Array
        # @param AdvancedInfo: 此字段为扩展字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedInfo: String
        # @param Contents: 单元格文本属性
        # @type Contents: Array

        attr_accessor :ColTl, :RowTl, :ColBr, :RowBr, :Text, :Type, :Confidence, :Polygon, :AdvancedInfo, :Contents
        
        def initialize(coltl=nil, rowtl=nil, colbr=nil, rowbr=nil, text=nil, type=nil, confidence=nil, polygon=nil, advancedinfo=nil, contents=nil)
          @ColTl = coltl
          @RowTl = rowtl
          @ColBr = colbr
          @RowBr = rowbr
          @Text = text
          @Type = type
          @Confidence = confidence
          @Polygon = polygon
          @AdvancedInfo = advancedinfo
          @Contents = contents
        end

        def deserialize(params)
          @ColTl = params['ColTl']
          @RowTl = params['RowTl']
          @ColBr = params['ColBr']
          @RowBr = params['RowBr']
          @Text = params['Text']
          @Type = params['Type']
          @Confidence = params['Confidence']
          unless params['Polygon'].nil?
            @Polygon = []
            params['Polygon'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Polygon << coord_tmp
            end
          end
          @AdvancedInfo = params['AdvancedInfo']
          unless params['Contents'].nil?
            @Contents = []
            params['Contents'].each do |i|
              cellcontent_tmp = CellContent.new
              cellcontent_tmp.deserialize(i)
              @Contents << cellcontent_tmp
            end
          end
        end
      end

      # 表格内容检测
      class TableDetectInfo < TencentCloud::Common::AbstractModel
        # @param Cells: 单元格内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cells: Array
        # @param Titles: 表格标题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Titles: Array
        # @param Type: 图像中的文本块类型，0 为非表格文本，
        # 1 为有线表格，2 为无线表格
        # （接口暂不支持日文无线表格识别，若传入日文无线表格，返回0）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param TableCoordPoint: 表格主体四个顶点坐标（依次为左上角，
        # 右上角，右下角，左下角）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableCoordPoint: Array

        attr_accessor :Cells, :Titles, :Type, :TableCoordPoint
        
        def initialize(cells=nil, titles=nil, type=nil, tablecoordpoint=nil)
          @Cells = cells
          @Titles = titles
          @Type = type
          @TableCoordPoint = tablecoordpoint
        end

        def deserialize(params)
          unless params['Cells'].nil?
            @Cells = []
            params['Cells'].each do |i|
              tablecell_tmp = TableCell.new
              tablecell_tmp.deserialize(i)
              @Cells << tablecell_tmp
            end
          end
          unless params['Titles'].nil?
            @Titles = []
            params['Titles'].each do |i|
              tabletitle_tmp = TableTitle.new
              tabletitle_tmp.deserialize(i)
              @Titles << tabletitle_tmp
            end
          end
          @Type = params['Type']
          unless params['TableCoordPoint'].nil?
            @TableCoordPoint = []
            params['TableCoordPoint'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @TableCoordPoint << coord_tmp
            end
          end
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
        # @param TextDetections: 检测到的文本信息，具体内容请点击左侧链接
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
          unless params['TextDetections'].nil?
            @TextDetections = []
            params['TextDetections'].each do |i|
              texttable_tmp = TextTable.new
              texttable_tmp.deserialize(i)
              @TextDetections << texttable_tmp
            end
          end
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # 表格标题
      class TableTitle < TencentCloud::Common::AbstractModel
        # @param Text: 表格名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :Text
        
        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # TaxiInvoiceOCR请求参数结构体
      class TaxiInvoiceOCRRequest < TencentCloud::Common::AbstractModel
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
        # @param Result: 算式运算结果，true-正确   false-错误或非法参数
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
        # @param Answer: 错题推荐答案，算式运算结果正确返回为""，算式运算结果错误返回推荐答案 (注：暂不支持多个关系运算符（如1<10<7）、无关系运算符（如frac(1,2)+frac(2,3)）、单位换算（如1元=100角）错题的推荐答案返回)
        # @type Answer: String

        attr_accessor :DetectedText, :Result, :Confidence, :Polygon, :AdvancedInfo, :ItemCoord, :ExpressionType, :Answer
        
        def initialize(detectedtext=nil, result=nil, confidence=nil, polygon=nil, advancedinfo=nil, itemcoord=nil, expressiontype=nil, answer=nil)
          @DetectedText = detectedtext
          @Result = result
          @Confidence = confidence
          @Polygon = polygon
          @AdvancedInfo = advancedinfo
          @ItemCoord = itemcoord
          @ExpressionType = expressiontype
          @Answer = answer
        end

        def deserialize(params)
          @DetectedText = params['DetectedText']
          @Result = params['Result']
          @Confidence = params['Confidence']
          unless params['Polygon'].nil?
            @Polygon = []
            params['Polygon'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Polygon << coord_tmp
            end
          end
          @AdvancedInfo = params['AdvancedInfo']
          unless params['ItemCoord'].nil?
            @ItemCoord = ItemCoord.new
            @ItemCoord.deserialize(params['ItemCoord'])
          end
          @ExpressionType = params['ExpressionType']
          @Answer = params['Answer']
        end
      end

      # TextDetect请求参数结构体
      class TextDetectRequest < TencentCloud::Common::AbstractModel
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
        # @param Words: 识别出来的单字信息包括单字（包括单字Character和单字置信度confidence）， 支持识别的接口：GeneralBasicOCR、GeneralAccurateOCR
        # @type Words: Array
        # @param WordCoordPoint: 单字在原图中的四点坐标， 支持识别的接口：GeneralBasicOCR、GeneralAccurateOCR
        # @type WordCoordPoint: Array

        attr_accessor :DetectedText, :Confidence, :Polygon, :AdvancedInfo, :ItemPolygon, :Words, :WordCoordPoint
        
        def initialize(detectedtext=nil, confidence=nil, polygon=nil, advancedinfo=nil, itempolygon=nil, words=nil, wordcoordpoint=nil)
          @DetectedText = detectedtext
          @Confidence = confidence
          @Polygon = polygon
          @AdvancedInfo = advancedinfo
          @ItemPolygon = itempolygon
          @Words = words
          @WordCoordPoint = wordcoordpoint
        end

        def deserialize(params)
          @DetectedText = params['DetectedText']
          @Confidence = params['Confidence']
          unless params['Polygon'].nil?
            @Polygon = []
            params['Polygon'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Polygon << coord_tmp
            end
          end
          @AdvancedInfo = params['AdvancedInfo']
          unless params['ItemPolygon'].nil?
            @ItemPolygon = ItemCoord.new
            @ItemPolygon.deserialize(params['ItemPolygon'])
          end
          unless params['Words'].nil?
            @Words = []
            params['Words'].each do |i|
              detectedwords_tmp = DetectedWords.new
              detectedwords_tmp.deserialize(i)
              @Words << detectedwords_tmp
            end
          end
          unless params['WordCoordPoint'].nil?
            @WordCoordPoint = []
            params['WordCoordPoint'].each do |i|
              detectedwordcoordpoint_tmp = DetectedWordCoordPoint.new
              detectedwordcoordpoint_tmp.deserialize(i)
              @WordCoordPoint << detectedwordcoordpoint_tmp
            end
          end
        end
      end

      # 英文识别结果
      class TextDetectionEn < TencentCloud::Common::AbstractModel
        # @param DetectedText: 识别出的文本行内容。
        # @type DetectedText: String
        # @param Confidence: 置信度 0 ~100。
        # @type Confidence: Integer
        # @param Polygon: 文本行在原图中的四点坐标。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Polygon: Array
        # @param AdvancedInfo: 此字段为扩展字段。目前EnglishOCR接口返回内容为空。
        # @type AdvancedInfo: String
        # @param WordCoordPoint: 英文单词在原图中的四点坐标。
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
          unless params['Polygon'].nil?
            @Polygon = []
            params['Polygon'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Polygon << coord_tmp
            end
          end
          @AdvancedInfo = params['AdvancedInfo']
          unless params['WordCoordPoint'].nil?
            @WordCoordPoint = []
            params['WordCoordPoint'].each do |i|
              wordcoordpoint_tmp = WordCoordPoint.new
              wordcoordpoint_tmp.deserialize(i)
              @WordCoordPoint << wordcoordpoint_tmp
            end
          end
          unless params['CandWord'].nil?
            @CandWord = []
            params['CandWord'].each do |i|
              candword_tmp = CandWord.new
              candword_tmp.deserialize(i)
              @CandWord << candword_tmp
            end
          end
          unless params['Words'].nil?
            @Words = []
            params['Words'].each do |i|
              words_tmp = Words.new
              words_tmp.deserialize(i)
              @Words << words_tmp
            end
          end
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
            @Itemcoord = ItemCoord.new
            @Itemcoord.deserialize(params['Itemcoord'])
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
        # @param WordPolygon: 字的坐标数组，以四个顶点坐标表示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WordPolygon: Array

        attr_accessor :DetectedText, :Confidence, :Polygon, :AdvancedInfo, :WordPolygon
        
        def initialize(detectedtext=nil, confidence=nil, polygon=nil, advancedinfo=nil, wordpolygon=nil)
          @DetectedText = detectedtext
          @Confidence = confidence
          @Polygon = polygon
          @AdvancedInfo = advancedinfo
          @WordPolygon = wordpolygon
        end

        def deserialize(params)
          @DetectedText = params['DetectedText']
          @Confidence = params['Confidence']
          unless params['Polygon'].nil?
            @Polygon = []
            params['Polygon'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Polygon << coord_tmp
            end
          end
          @AdvancedInfo = params['AdvancedInfo']
          unless params['WordPolygon'].nil?
            @WordPolygon = []
            params['WordPolygon'].each do |i|
              polygon_tmp = Polygon.new
              polygon_tmp.deserialize(i)
              @WordPolygon << polygon_tmp
            end
          end
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
          unless params['Polygon'].nil?
            @Polygon = []
            params['Polygon'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Polygon << coord_tmp
            end
          end
          @AdvancedInfo = params['AdvancedInfo']
        end
      end

      # 增值税发票识别结果
      class TextVatInvoice < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称（关键字）。支持以下字段的识别：
        # 发票代码、 发票号码、 打印发票代码、 打印发票号码、 开票日期、 购买方识别号、 小写金额、 价税合计(大写)、 销售方识别号、 校验码、 购买方名称、 销售方名称、 税额、 复核、 联次名称、 备注、 联次、 密码区、 开票人、 收款人、 （货物或应税劳务、服务名称）、省、 市、 服务类型、 通行费标志、 是否代开、 是否收购、 合计金额、 是否有公司印章、 发票消费类型、 车船税、 机器编号、 成品油标志、 税率、 合计税额、 （购买方地址、电话）、 （销售方地址、电话）、 单价、 金额、 销售方开户行及账号、 购买方开户行及账号、 规格型号、 发票名称、 单位、 数量、 校验码备选、 校验码后六位备选、发票号码备选、车牌号、类型、通行日期起、通行日期止、发票类型。
        # @type Name: String
        # @param Value: 识别出的字段名称对应的值，也就是字段Name对应的字符串结果。
        # @type Value: String
        # @param Polygon: 字段在原图中的中的四点坐标。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Polygon: :class:`Tencentcloud::Ocr.v20181119.models.Polygon`

        attr_accessor :Name, :Value, :Polygon
        
        def initialize(name=nil, value=nil, polygon=nil)
          @Name = name
          @Value = value
          @Polygon = polygon
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          unless params['Polygon'].nil?
            @Polygon = Polygon.new
            @Polygon.deserialize(params['Polygon'])
          end
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
            @RecName = WaybillObj.new
            @RecName.deserialize(params['RecName'])
          end
          unless params['RecNum'].nil?
            @RecNum = WaybillObj.new
            @RecNum.deserialize(params['RecNum'])
          end
          unless params['RecAddr'].nil?
            @RecAddr = WaybillObj.new
            @RecAddr.deserialize(params['RecAddr'])
          end
          unless params['SenderName'].nil?
            @SenderName = WaybillObj.new
            @SenderName.deserialize(params['SenderName'])
          end
          unless params['SenderNum'].nil?
            @SenderNum = WaybillObj.new
            @SenderNum.deserialize(params['SenderNum'])
          end
          unless params['SenderAddr'].nil?
            @SenderAddr = WaybillObj.new
            @SenderAddr.deserialize(params['SenderAddr'])
          end
          unless params['WaybillNum'].nil?
            @WaybillNum = WaybillObj.new
            @WaybillNum.deserialize(params['WaybillNum'])
          end
        end
      end

      # 过路过桥费字段信息
      class TollInvoiceInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称（关键字）。支持以下字段的识别：
        # 发票代码、发票号码、日期、金额、入口、出口、时间、发票消费类型、高速标志。
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
            @Rect = Rect.new
            @Rect.deserialize(params['Rect'])
          end
        end
      end

      # TollInvoiceOCR请求参数结构体
      class TollInvoiceOCRRequest < TencentCloud::Common::AbstractModel
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
          unless params['TollInvoiceInfos'].nil?
            @TollInvoiceInfos = []
            params['TollInvoiceInfos'].each do |i|
              tollinvoiceinfo_tmp = TollInvoiceInfo.new
              tollinvoiceinfo_tmp.deserialize(i)
              @TollInvoiceInfos << tollinvoiceinfo_tmp
            end
          end
          @Angle = params['Angle']
          @RequestId = params['RequestId']
        end
      end

      # TrainTicketOCR请求参数结构体
      class TrainTicketOCRRequest < TencentCloud::Common::AbstractModel
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
        # @param InvoiceType: 发票消费类型：交通
        # @type InvoiceType: String
        # @param SerialNumber: 序列号
        # @type SerialNumber: String
        # @param AdditionalCost: 加收票价
        # @type AdditionalCost: String
        # @param HandlingFee: 手续费
        # @type HandlingFee: String
        # @param LegalAmount: 大写金额（票面有大写金额该字段才有值）
        # @type LegalAmount: String
        # @param TicketStation: 售票站
        # @type TicketStation: String
        # @param OriginalPrice: 原票价（一般有手续费的才有原始票价字段）
        # @type OriginalPrice: String
        # @param InvoiceStyle: 发票类型：火车票、火车票补票、火车票退票凭证
        # @type InvoiceStyle: String
        # @param ReceiptNumber: 收据号码
        # @type ReceiptNumber: String
        # @param IsReceipt: 仅供报销使用：1为是，0为否
        # @type IsReceipt: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TicketNum, :StartStation, :DestinationStation, :Date, :TrainNum, :Seat, :Name, :Price, :SeatCategory, :ID, :InvoiceType, :SerialNumber, :AdditionalCost, :HandlingFee, :LegalAmount, :TicketStation, :OriginalPrice, :InvoiceStyle, :ReceiptNumber, :IsReceipt, :RequestId
        
        def initialize(ticketnum=nil, startstation=nil, destinationstation=nil, date=nil, trainnum=nil, seat=nil, name=nil, price=nil, seatcategory=nil, id=nil, invoicetype=nil, serialnumber=nil, additionalcost=nil, handlingfee=nil, legalamount=nil, ticketstation=nil, originalprice=nil, invoicestyle=nil, receiptnumber=nil, isreceipt=nil, requestid=nil)
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
          @AdditionalCost = additionalcost
          @HandlingFee = handlingfee
          @LegalAmount = legalamount
          @TicketStation = ticketstation
          @OriginalPrice = originalprice
          @InvoiceStyle = invoicestyle
          @ReceiptNumber = receiptnumber
          @IsReceipt = isreceipt
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
          @AdditionalCost = params['AdditionalCost']
          @HandlingFee = params['HandlingFee']
          @LegalAmount = params['LegalAmount']
          @TicketStation = params['TicketStation']
          @OriginalPrice = params['OriginalPrice']
          @InvoiceStyle = params['InvoiceStyle']
          @ReceiptNumber = params['ReceiptNumber']
          @IsReceipt = params['IsReceipt']
          @RequestId = params['RequestId']
        end
      end

      # 二手车销售统一发票信息
      class UsedVehicleInvoiceInfo < TencentCloud::Common::AbstractModel
        # @param TaxBureau: 所属税局
        # @type TaxBureau: String
        # @param Buyer: 买方单位/个人
        # @type Buyer: String
        # @param BuyerNo: 买方单位代码/身份证号码
        # @type BuyerNo: String
        # @param BuyerAddress: 买方单位/个人地址
        # @type BuyerAddress: String
        # @param BuyerTel: 买方单位电话
        # @type BuyerTel: String
        # @param Seller: 卖方单位/个人
        # @type Seller: String
        # @param SellerNo: 卖方单位代码/身份证号码
        # @type SellerNo: String
        # @param SellerAddress: 卖方单位/个人地址
        # @type SellerAddress: String
        # @param SellerTel: 卖方单位电话
        # @type SellerTel: String
        # @param VehicleLicenseNo: 车牌照号
        # @type VehicleLicenseNo: String
        # @param RegisterNo: 登记证号
        # @type RegisterNo: String
        # @param VehicleIdentifyNo: 车架号/车辆识别代码
        # @type VehicleIdentifyNo: String
        # @param ManagementOffice: 转入地车辆管理所名称
        # @type ManagementOffice: String
        # @param VehicleTotalPrice: 车价合计
        # @type VehicleTotalPrice: String
        # @param Auctioneer: 经营、拍卖单位
        # @type Auctioneer: String
        # @param AuctioneerAddress: 经营、拍卖单位地址
        # @type AuctioneerAddress: String
        # @param AuctioneerTaxpayerNum: 经营、拍卖单位纳税人识别号
        # @type AuctioneerTaxpayerNum: String
        # @param AuctioneerBankAccount: 经营、拍卖单位开户银行、账号
        # @type AuctioneerBankAccount: String
        # @param AuctioneerTel: 经营、拍卖单位电话
        # @type AuctioneerTel: String
        # @param Market: 二手车市场
        # @type Market: String
        # @param MarketTaxpayerNum: 二手车市场纳税人识别号
        # @type MarketTaxpayerNum: String
        # @param MarketAddress: 二手车市场地址
        # @type MarketAddress: String
        # @param MarketBankAccount: 二手车市场开户银行账号
        # @type MarketBankAccount: String
        # @param MarketTel: 二手车市场电话
        # @type MarketTel: String

        attr_accessor :TaxBureau, :Buyer, :BuyerNo, :BuyerAddress, :BuyerTel, :Seller, :SellerNo, :SellerAddress, :SellerTel, :VehicleLicenseNo, :RegisterNo, :VehicleIdentifyNo, :ManagementOffice, :VehicleTotalPrice, :Auctioneer, :AuctioneerAddress, :AuctioneerTaxpayerNum, :AuctioneerBankAccount, :AuctioneerTel, :Market, :MarketTaxpayerNum, :MarketAddress, :MarketBankAccount, :MarketTel
        
        def initialize(taxbureau=nil, buyer=nil, buyerno=nil, buyeraddress=nil, buyertel=nil, seller=nil, sellerno=nil, selleraddress=nil, sellertel=nil, vehiclelicenseno=nil, registerno=nil, vehicleidentifyno=nil, managementoffice=nil, vehicletotalprice=nil, auctioneer=nil, auctioneeraddress=nil, auctioneertaxpayernum=nil, auctioneerbankaccount=nil, auctioneertel=nil, market=nil, markettaxpayernum=nil, marketaddress=nil, marketbankaccount=nil, markettel=nil)
          @TaxBureau = taxbureau
          @Buyer = buyer
          @BuyerNo = buyerno
          @BuyerAddress = buyeraddress
          @BuyerTel = buyertel
          @Seller = seller
          @SellerNo = sellerno
          @SellerAddress = selleraddress
          @SellerTel = sellertel
          @VehicleLicenseNo = vehiclelicenseno
          @RegisterNo = registerno
          @VehicleIdentifyNo = vehicleidentifyno
          @ManagementOffice = managementoffice
          @VehicleTotalPrice = vehicletotalprice
          @Auctioneer = auctioneer
          @AuctioneerAddress = auctioneeraddress
          @AuctioneerTaxpayerNum = auctioneertaxpayernum
          @AuctioneerBankAccount = auctioneerbankaccount
          @AuctioneerTel = auctioneertel
          @Market = market
          @MarketTaxpayerNum = markettaxpayernum
          @MarketAddress = marketaddress
          @MarketBankAccount = marketbankaccount
          @MarketTel = markettel
        end

        def deserialize(params)
          @TaxBureau = params['TaxBureau']
          @Buyer = params['Buyer']
          @BuyerNo = params['BuyerNo']
          @BuyerAddress = params['BuyerAddress']
          @BuyerTel = params['BuyerTel']
          @Seller = params['Seller']
          @SellerNo = params['SellerNo']
          @SellerAddress = params['SellerAddress']
          @SellerTel = params['SellerTel']
          @VehicleLicenseNo = params['VehicleLicenseNo']
          @RegisterNo = params['RegisterNo']
          @VehicleIdentifyNo = params['VehicleIdentifyNo']
          @ManagementOffice = params['ManagementOffice']
          @VehicleTotalPrice = params['VehicleTotalPrice']
          @Auctioneer = params['Auctioneer']
          @AuctioneerAddress = params['AuctioneerAddress']
          @AuctioneerTaxpayerNum = params['AuctioneerTaxpayerNum']
          @AuctioneerBankAccount = params['AuctioneerBankAccount']
          @AuctioneerTel = params['AuctioneerTel']
          @Market = params['Market']
          @MarketTaxpayerNum = params['MarketTaxpayerNum']
          @MarketAddress = params['MarketAddress']
          @MarketBankAccount = params['MarketBankAccount']
          @MarketTel = params['MarketTel']
        end
      end

      # 增值税发票信息
      class VatInvoice < TencentCloud::Common::AbstractModel
        # @param Code: 发票代码
        # @type Code: String
        # @param Number: 发票号码
        # @type Number: String
        # @param Date: 开票日期
        # @type Date: String
        # @param BuyerName: 购方抬头
        # @type BuyerName: String
        # @param BuyerTaxCode: 购方税号
        # @type BuyerTaxCode: String
        # @param BuyerAddressPhone: 购方地址电话
        # @type BuyerAddressPhone: String
        # @param BuyerBankAccount: 购方银行账号
        # @type BuyerBankAccount: String
        # @param SellerName: 销方名称
        # @type SellerName: String
        # @param SellerTaxCode: 销方税号
        # @type SellerTaxCode: String
        # @param SellerAddressPhone: 销方地址电话
        # @type SellerAddressPhone: String
        # @param SellerBankAccount: 销方银行账号
        # @type SellerBankAccount: String
        # @param Remark: 备注
        # @type Remark: String
        # @param MachineNo: 机器编码
        # @type MachineNo: String
        # @param Type: 发票类型
        # 01：专用发票
        # 02：货运发票
        # 03：机动车发票
        # 04：普通发票
        # 10：电子发票
        # 11：卷式发票
        # 14：通行费发票
        # 15：二手车发票
        # 32：深圳区块链发票（仅支持新版接口）
        # @type Type: String
        # @param CheckCode: 检验码
        # @type CheckCode: String
        # @param IsAbandoned: 是否作废（红冲）是否作废（红冲）
        # Y: 已作废 N：未作废 H：红冲
        # @type IsAbandoned: String
        # @param HasSellerList: 是否有销货清单
        # Y: 有清单 N：无清单
        # 卷票无
        # @type HasSellerList: String
        # @param SellerListTitle: 销货清单标题
        # @type SellerListTitle: String
        # @param SellerListTax: 销货清单税额
        # @type SellerListTax: String
        # @param AmountWithoutTax: 不含税金额
        # @type AmountWithoutTax: String
        # @param TaxAmount: 税额
        # @type TaxAmount: String
        # @param AmountWithTax: 含税金额
        # @type AmountWithTax: String
        # @param Items: 项目明细
        # @type Items: Array

        attr_accessor :Code, :Number, :Date, :BuyerName, :BuyerTaxCode, :BuyerAddressPhone, :BuyerBankAccount, :SellerName, :SellerTaxCode, :SellerAddressPhone, :SellerBankAccount, :Remark, :MachineNo, :Type, :CheckCode, :IsAbandoned, :HasSellerList, :SellerListTitle, :SellerListTax, :AmountWithoutTax, :TaxAmount, :AmountWithTax, :Items
        
        def initialize(code=nil, number=nil, date=nil, buyername=nil, buyertaxcode=nil, buyeraddressphone=nil, buyerbankaccount=nil, sellername=nil, sellertaxcode=nil, selleraddressphone=nil, sellerbankaccount=nil, remark=nil, machineno=nil, type=nil, checkcode=nil, isabandoned=nil, hassellerlist=nil, sellerlisttitle=nil, sellerlisttax=nil, amountwithouttax=nil, taxamount=nil, amountwithtax=nil, items=nil)
          @Code = code
          @Number = number
          @Date = date
          @BuyerName = buyername
          @BuyerTaxCode = buyertaxcode
          @BuyerAddressPhone = buyeraddressphone
          @BuyerBankAccount = buyerbankaccount
          @SellerName = sellername
          @SellerTaxCode = sellertaxcode
          @SellerAddressPhone = selleraddressphone
          @SellerBankAccount = sellerbankaccount
          @Remark = remark
          @MachineNo = machineno
          @Type = type
          @CheckCode = checkcode
          @IsAbandoned = isabandoned
          @HasSellerList = hassellerlist
          @SellerListTitle = sellerlisttitle
          @SellerListTax = sellerlisttax
          @AmountWithoutTax = amountwithouttax
          @TaxAmount = taxamount
          @AmountWithTax = amountwithtax
          @Items = items
        end

        def deserialize(params)
          @Code = params['Code']
          @Number = params['Number']
          @Date = params['Date']
          @BuyerName = params['BuyerName']
          @BuyerTaxCode = params['BuyerTaxCode']
          @BuyerAddressPhone = params['BuyerAddressPhone']
          @BuyerBankAccount = params['BuyerBankAccount']
          @SellerName = params['SellerName']
          @SellerTaxCode = params['SellerTaxCode']
          @SellerAddressPhone = params['SellerAddressPhone']
          @SellerBankAccount = params['SellerBankAccount']
          @Remark = params['Remark']
          @MachineNo = params['MachineNo']
          @Type = params['Type']
          @CheckCode = params['CheckCode']
          @IsAbandoned = params['IsAbandoned']
          @HasSellerList = params['HasSellerList']
          @SellerListTitle = params['SellerListTitle']
          @SellerListTax = params['SellerListTax']
          @AmountWithoutTax = params['AmountWithoutTax']
          @TaxAmount = params['TaxAmount']
          @AmountWithTax = params['AmountWithTax']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              vatinvoiceitem_tmp = VatInvoiceItem.new
              vatinvoiceitem_tmp.deserialize(i)
              @Items << vatinvoiceitem_tmp
            end
          end
        end
      end

      # 发票商品
      class VatInvoiceGoodsInfo < TencentCloud::Common::AbstractModel
        # @param Item: 项目名称
        # @type Item: String
        # @param Specification: 规格型号
        # @type Specification: String
        # @param MeasurementDimension: 单位
        # @type MeasurementDimension: String
        # @param Price: 价格
        # @type Price: String
        # @param Quantity: 数量
        # @type Quantity: String
        # @param Amount: 金额
        # @type Amount: String
        # @param TaxScheme: 税率(如6%、免税)
        # @type TaxScheme: String
        # @param TaxAmount: 税额
        # @type TaxAmount: String

        attr_accessor :Item, :Specification, :MeasurementDimension, :Price, :Quantity, :Amount, :TaxScheme, :TaxAmount
        
        def initialize(item=nil, specification=nil, measurementdimension=nil, price=nil, quantity=nil, amount=nil, taxscheme=nil, taxamount=nil)
          @Item = item
          @Specification = specification
          @MeasurementDimension = measurementdimension
          @Price = price
          @Quantity = quantity
          @Amount = amount
          @TaxScheme = taxscheme
          @TaxAmount = taxamount
        end

        def deserialize(params)
          @Item = params['Item']
          @Specification = params['Specification']
          @MeasurementDimension = params['MeasurementDimension']
          @Price = params['Price']
          @Quantity = params['Quantity']
          @Amount = params['Amount']
          @TaxScheme = params['TaxScheme']
          @TaxAmount = params['TaxAmount']
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
        # @param ImageBase64: 图片/PDF的 Base64 值。
        # 支持的文件格式：PNG、JPG、JPEG、PDF，暂不支持 GIF 格式。
        # 支持的图片/PDF大小：所下载文件经Base64编码后不超过 7M。文件下载时间不超过 3 秒。
        # 输入参数 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片/PDF的 Url 地址。
        # 支持的文件格式：PNG、JPG、JPEG、PDF，暂不支持 GIF 格式。
        # 支持的图片/PDF大小：所下载文件经 Base64 编码后不超过 7M。文件下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param IsPdf: 是否开启PDF识别，默认值为false，开启后可同时支持图片和PDF的识别。
        # @type IsPdf: Boolean
        # @param PdfPageNumber: 需要识别的PDF页面的对应页码，仅支持PDF单页识别，当上传文件为PDF且IsPdf参数值为true时有效，默认值为1。
        # @type PdfPageNumber: Integer

        attr_accessor :ImageBase64, :ImageUrl, :IsPdf, :PdfPageNumber
        
        def initialize(imagebase64=nil, imageurl=nil, ispdf=nil, pdfpagenumber=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @IsPdf = ispdf
          @PdfPageNumber = pdfpagenumber
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @IsPdf = params['IsPdf']
          @PdfPageNumber = params['PdfPageNumber']
        end
      end

      # VatInvoiceOCR返回参数结构体
      class VatInvoiceOCRResponse < TencentCloud::Common::AbstractModel
        # @param VatInvoiceInfos: 检测到的文本信息，具体内容请点击左侧链接。
        # @type VatInvoiceInfos: Array
        # @param Items: 明细条目。VatInvoiceInfos中关于明细项的具体条目。
        # @type Items: Array
        # @param PdfPageSize: 默认值为0。如果图片为PDF时，返回PDF的总页数。
        # @type PdfPageSize: Integer
        # @param Angle: 图片旋转角度（角度制），文本的水平方向为0°；顺时针为正，逆时针为负。点击查看<a href="https://cloud.tencent.com/document/product/866/45139">如何纠正倾斜文本</a>
        # @type Angle: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VatInvoiceInfos, :Items, :PdfPageSize, :Angle, :RequestId
        
        def initialize(vatinvoiceinfos=nil, items=nil, pdfpagesize=nil, angle=nil, requestid=nil)
          @VatInvoiceInfos = vatinvoiceinfos
          @Items = items
          @PdfPageSize = pdfpagesize
          @Angle = angle
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VatInvoiceInfos'].nil?
            @VatInvoiceInfos = []
            params['VatInvoiceInfos'].each do |i|
              textvatinvoice_tmp = TextVatInvoice.new
              textvatinvoice_tmp.deserialize(i)
              @VatInvoiceInfos << textvatinvoice_tmp
            end
          end
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              vatinvoiceitem_tmp = VatInvoiceItem.new
              vatinvoiceitem_tmp.deserialize(i)
              @Items << vatinvoiceitem_tmp
            end
          end
          @PdfPageSize = params['PdfPageSize']
          @Angle = params['Angle']
          @RequestId = params['RequestId']
        end
      end

      # 发票人员信息
      class VatInvoiceUserInfo < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param TaxId: 纳税人识别号
        # @type TaxId: String
        # @param AddrTel: 地 址、电 话
        # @type AddrTel: String
        # @param FinancialAccount: 开户行及账号
        # @type FinancialAccount: String

        attr_accessor :Name, :TaxId, :AddrTel, :FinancialAccount
        
        def initialize(name=nil, taxid=nil, addrtel=nil, financialaccount=nil)
          @Name = name
          @TaxId = taxid
          @AddrTel = addrtel
          @FinancialAccount = financialaccount
        end

        def deserialize(params)
          @Name = params['Name']
          @TaxId = params['TaxId']
          @AddrTel = params['AddrTel']
          @FinancialAccount = params['FinancialAccount']
        end
      end

      # VatInvoiceVerifyNew请求参数结构体
      class VatInvoiceVerifyNewRequest < TencentCloud::Common::AbstractModel
        # @param InvoiceNo: 发票号码，8位、20位（全电票）
        # @type InvoiceNo: String
        # @param InvoiceDate: 开票日期（不支持当天发票查询，支持五年以内开具的发票），格式：“YYYY-MM-DD”，如：2019-12-20。
        # @type InvoiceDate: String
        # @param InvoiceCode: 发票代码（10或12 位），全电发票为空。查验未成功超过5次后当日无法再查。
        # @type InvoiceCode: String
        # @param InvoiceKind: 票种类型 01:增值税专用发票， 02:货运运输业增值税专用发 票， 03:机动车销售统一发票， 04:增值税普通发票， 08:增值税电子专用发票(含全电)， 10:增值税电子普通发票(含全电)， 11:增值税普通发票(卷式)， 14:增值税电子(通行费)发 票， 15:二手车销售统一发票， 32:深圳区块链发票(云南区块链因业务调整现已下线)。
        # @type InvoiceKind: String
        # @param CheckCode: 校验码后 6 位，增值税普通发票、增值税电子普通发票、增值税普通发票(卷式)、增值税电子普通发票(通行费)时必填;
        # 区块链为 5 位
        # @type CheckCode: String
        # @param Amount: 不含税金额，增值税专用发票、增值税电子专用发票、机动车销售统一发票、二手车销售统一发票、区块链发票时必填; 全电发票为价税合计(含税金额)
        # @type Amount: String

        attr_accessor :InvoiceNo, :InvoiceDate, :InvoiceCode, :InvoiceKind, :CheckCode, :Amount
        
        def initialize(invoiceno=nil, invoicedate=nil, invoicecode=nil, invoicekind=nil, checkcode=nil, amount=nil)
          @InvoiceNo = invoiceno
          @InvoiceDate = invoicedate
          @InvoiceCode = invoicecode
          @InvoiceKind = invoicekind
          @CheckCode = checkcode
          @Amount = amount
        end

        def deserialize(params)
          @InvoiceNo = params['InvoiceNo']
          @InvoiceDate = params['InvoiceDate']
          @InvoiceCode = params['InvoiceCode']
          @InvoiceKind = params['InvoiceKind']
          @CheckCode = params['CheckCode']
          @Amount = params['Amount']
        end
      end

      # VatInvoiceVerifyNew返回参数结构体
      class VatInvoiceVerifyNewResponse < TencentCloud::Common::AbstractModel
        # @param Invoice: 增值税发票信息，详情请点击左侧链接。
        # @type Invoice: :class:`Tencentcloud::Ocr.v20181119.models.VatInvoice`
        # @param VehicleInvoiceInfo: 机动车销售统一发票信息
        # @type VehicleInvoiceInfo: :class:`Tencentcloud::Ocr.v20181119.models.VehicleInvoiceInfo`
        # @param UsedVehicleInvoiceInfo: 二手车销售统一发票信息
        # @type UsedVehicleInvoiceInfo: :class:`Tencentcloud::Ocr.v20181119.models.UsedVehicleInvoiceInfo`
        # @param PassInvoiceInfoList: 通行费发票信息
        # @type PassInvoiceInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Invoice, :VehicleInvoiceInfo, :UsedVehicleInvoiceInfo, :PassInvoiceInfoList, :RequestId
        
        def initialize(invoice=nil, vehicleinvoiceinfo=nil, usedvehicleinvoiceinfo=nil, passinvoiceinfolist=nil, requestid=nil)
          @Invoice = invoice
          @VehicleInvoiceInfo = vehicleinvoiceinfo
          @UsedVehicleInvoiceInfo = usedvehicleinvoiceinfo
          @PassInvoiceInfoList = passinvoiceinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Invoice'].nil?
            @Invoice = VatInvoice.new
            @Invoice.deserialize(params['Invoice'])
          end
          unless params['VehicleInvoiceInfo'].nil?
            @VehicleInvoiceInfo = VehicleInvoiceInfo.new
            @VehicleInvoiceInfo.deserialize(params['VehicleInvoiceInfo'])
          end
          unless params['UsedVehicleInvoiceInfo'].nil?
            @UsedVehicleInvoiceInfo = UsedVehicleInvoiceInfo.new
            @UsedVehicleInvoiceInfo.deserialize(params['UsedVehicleInvoiceInfo'])
          end
          unless params['PassInvoiceInfoList'].nil?
            @PassInvoiceInfoList = []
            params['PassInvoiceInfoList'].each do |i|
              passinvoiceinfo_tmp = PassInvoiceInfo.new
              passinvoiceinfo_tmp.deserialize(i)
              @PassInvoiceInfoList << passinvoiceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # VatInvoiceVerify请求参数结构体
      class VatInvoiceVerifyRequest < TencentCloud::Common::AbstractModel
        # @param InvoiceCode: 发票代码， 一张发票一天只能查询5次。
        # @type InvoiceCode: String
        # @param InvoiceNo: 发票号码（8位）。
        # @type InvoiceNo: String
        # @param InvoiceDate: 开票日期（不支持当天发票查询，支持五年以内开具的发票），如：2019-12-20。
        # @type InvoiceDate: String
        # @param Additional: 根据票种传递对应值，如果报参数错误，请仔细检查每个票种对应的值

        # 增值税专用发票：开具金额（不含税）

        # 增值税普通发票、增值税电子普通发票（含通行费发票）、增值税普通发票（卷票）：校验码后6位

        # 区块链发票：不含税金额/校验码，例如：“285.01/856ab”

        # 机动车销售统一发票：不含税价

        # 货物运输业增值税专用发票：合计金额

        # 二手车销售统一发票：车价合计
        # @type Additional: String

        attr_accessor :InvoiceCode, :InvoiceNo, :InvoiceDate, :Additional
        
        def initialize(invoicecode=nil, invoiceno=nil, invoicedate=nil, additional=nil)
          @InvoiceCode = invoicecode
          @InvoiceNo = invoiceno
          @InvoiceDate = invoicedate
          @Additional = additional
        end

        def deserialize(params)
          @InvoiceCode = params['InvoiceCode']
          @InvoiceNo = params['InvoiceNo']
          @InvoiceDate = params['InvoiceDate']
          @Additional = params['Additional']
        end
      end

      # VatInvoiceVerify返回参数结构体
      class VatInvoiceVerifyResponse < TencentCloud::Common::AbstractModel
        # @param Invoice: 增值税发票信息，详情请点击左侧链接。
        # @type Invoice: :class:`Tencentcloud::Ocr.v20181119.models.VatInvoice`
        # @param VehicleInvoiceInfo: 机动车销售统一发票信息
        # @type VehicleInvoiceInfo: :class:`Tencentcloud::Ocr.v20181119.models.VehicleInvoiceInfo`
        # @param UsedVehicleInvoiceInfo: 二手车销售统一发票信息
        # @type UsedVehicleInvoiceInfo: :class:`Tencentcloud::Ocr.v20181119.models.UsedVehicleInvoiceInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Invoice, :VehicleInvoiceInfo, :UsedVehicleInvoiceInfo, :RequestId
        
        def initialize(invoice=nil, vehicleinvoiceinfo=nil, usedvehicleinvoiceinfo=nil, requestid=nil)
          @Invoice = invoice
          @VehicleInvoiceInfo = vehicleinvoiceinfo
          @UsedVehicleInvoiceInfo = usedvehicleinvoiceinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Invoice'].nil?
            @Invoice = VatInvoice.new
            @Invoice.deserialize(params['Invoice'])
          end
          unless params['VehicleInvoiceInfo'].nil?
            @VehicleInvoiceInfo = VehicleInvoiceInfo.new
            @VehicleInvoiceInfo.deserialize(params['VehicleInvoiceInfo'])
          end
          unless params['UsedVehicleInvoiceInfo'].nil?
            @UsedVehicleInvoiceInfo = UsedVehicleInvoiceInfo.new
            @UsedVehicleInvoiceInfo.deserialize(params['UsedVehicleInvoiceInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 增值税发票卷票信息
      class VatRollInvoiceInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称(关键字)，支持以下字段：
        # 发票代码、合计金额(小写)、合计金额(大写)、开票日期、发票号码、购买方识别号、销售方识别号、校验码、销售方名称、购买方名称、发票消费类型、省、市、是否有公司印章、服务类型、品名、种类。
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
            @Rect = Rect.new
            @Rect.deserialize(params['Rect'])
          end
        end
      end

      # VatRollInvoiceOCR请求参数结构体
      class VatRollInvoiceOCRRequest < TencentCloud::Common::AbstractModel
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
          unless params['VatRollInvoiceInfos'].nil?
            @VatRollInvoiceInfos = []
            params['VatRollInvoiceInfos'].each do |i|
              vatrollinvoiceinfo_tmp = VatRollInvoiceInfo.new
              vatrollinvoiceinfo_tmp.deserialize(i)
              @VatRollInvoiceInfos << vatrollinvoiceinfo_tmp
            end
          end
          @Angle = params['Angle']
          @RequestId = params['RequestId']
        end
      end

      # 机动车销售统一发票信息
      class VehicleInvoiceInfo < TencentCloud::Common::AbstractModel
        # @param CarType: 车辆类型
        # @type CarType: String
        # @param PlateModel: 厂牌型号
        # @type PlateModel: String
        # @param ProduceAddress: 产地
        # @type ProduceAddress: String
        # @param CertificateNo: 合格证号
        # @type CertificateNo: String
        # @param ImportNo: 进口证明书号
        # @type ImportNo: String
        # @param VinNo: LSVCA2NP9HN0xxxxx
        # @type VinNo: String
        # @param PayTaxesNo: 完税证书号
        # @type PayTaxesNo: String
        # @param Tonnage: 吨位
        # @type Tonnage: String
        # @param LimitCount: 限乘人数
        # @type LimitCount: String
        # @param EngineNo: 发动机号码
        # @type EngineNo: String
        # @param BizCheckFormNo: 商检单号
        # @type BizCheckFormNo: String
        # @param TaxtationOrgCode: 主管税务机关代码
        # @type TaxtationOrgCode: String
        # @param TaxtationOrgName: 主管税务机关名称
        # @type TaxtationOrgName: String
        # @param MotorTaxRate: 税率
        # @type MotorTaxRate: String
        # @param MotorBankName: 开户行
        # @type MotorBankName: String
        # @param MotorBankAccount: 账号
        # @type MotorBankAccount: String

        attr_accessor :CarType, :PlateModel, :ProduceAddress, :CertificateNo, :ImportNo, :VinNo, :PayTaxesNo, :Tonnage, :LimitCount, :EngineNo, :BizCheckFormNo, :TaxtationOrgCode, :TaxtationOrgName, :MotorTaxRate, :MotorBankName, :MotorBankAccount
        
        def initialize(cartype=nil, platemodel=nil, produceaddress=nil, certificateno=nil, importno=nil, vinno=nil, paytaxesno=nil, tonnage=nil, limitcount=nil, engineno=nil, bizcheckformno=nil, taxtationorgcode=nil, taxtationorgname=nil, motortaxrate=nil, motorbankname=nil, motorbankaccount=nil)
          @CarType = cartype
          @PlateModel = platemodel
          @ProduceAddress = produceaddress
          @CertificateNo = certificateno
          @ImportNo = importno
          @VinNo = vinno
          @PayTaxesNo = paytaxesno
          @Tonnage = tonnage
          @LimitCount = limitcount
          @EngineNo = engineno
          @BizCheckFormNo = bizcheckformno
          @TaxtationOrgCode = taxtationorgcode
          @TaxtationOrgName = taxtationorgname
          @MotorTaxRate = motortaxrate
          @MotorBankName = motorbankname
          @MotorBankAccount = motorbankaccount
        end

        def deserialize(params)
          @CarType = params['CarType']
          @PlateModel = params['PlateModel']
          @ProduceAddress = params['ProduceAddress']
          @CertificateNo = params['CertificateNo']
          @ImportNo = params['ImportNo']
          @VinNo = params['VinNo']
          @PayTaxesNo = params['PayTaxesNo']
          @Tonnage = params['Tonnage']
          @LimitCount = params['LimitCount']
          @EngineNo = params['EngineNo']
          @BizCheckFormNo = params['BizCheckFormNo']
          @TaxtationOrgCode = params['TaxtationOrgCode']
          @TaxtationOrgName = params['TaxtationOrgName']
          @MotorTaxRate = params['MotorTaxRate']
          @MotorBankName = params['MotorBankName']
          @MotorBankAccount = params['MotorBankAccount']
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
        # 默认值为：FRONT。
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
            @FrontInfo = TextVehicleFront.new
            @FrontInfo.deserialize(params['FrontInfo'])
          end
          unless params['BackInfo'].nil?
            @BackInfo = TextVehicleBack.new
            @BackInfo.deserialize(params['BackInfo'])
          end
          @RecognizeWarnCode = params['RecognizeWarnCode']
          @RecognizeWarnMsg = params['RecognizeWarnMsg']
          @RequestId = params['RequestId']
        end
      end

      # 机动车登记证书识别结果
      class VehicleRegCertInfo < TencentCloud::Common::AbstractModel
        # @param Name: 识别出的字段名称(关键字)，支持以下字段：
        # 【注册登记页】
        # 车辆型号、车辆识别代号/车架号、发动机号、制造厂名称、轴距、轮胎数、总质量、外廓尺寸、轴数、车辆出厂日期、发证日期、使用性质、车辆获得方式、车辆类型、国产/进口、燃料种类、车身颜色、发动机型号、车辆品牌、编号、转向形式、
        # 机动车所有人1、身份证明名称1、号码1、登记机关1、登记日期1
        # 机动车所有人2、身份证明名称2、号码2、登记机关2、登记日期2
        # 机动车所有人3、身份证明名称3、号码3、登记机关3、登记日期3
        # 机动车所有人4、身份证明名称4、号码4、登记机关4、登记日期4
        # 机动车所有人5、身份证明名称5、号码5、登记机关5、登记日期5
        # 机动车所有人6、身份证明名称6、号码6、登记机关6、登记日期6
        # 机动车所有人7、身份证明名称7、号码7、登记机关7、登记日期7
        # 【抵押登记页】
        # 机动车登记证书编号、身份证明名称/号码、抵押权人姓名/名称、抵押登记日期。
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
          unless params['VehicleRegCertInfos'].nil?
            @VehicleRegCertInfos = []
            params['VehicleRegCertInfos'].each do |i|
              vehicleregcertinfo_tmp = VehicleRegCertInfo.new
              vehicleregcertinfo_tmp.deserialize(i)
              @VehicleRegCertInfos << vehicleregcertinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # VerifyBasicBizLicense请求参数结构体
      class VerifyBasicBizLicenseRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 用于入参是营业执照图片的场景，ImageBase64和ImageUrl必须提供一个，如果都提供，只使用 ImageUrl。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        # @type ImageBase64: String
        # @param ImageUrl: 用于入参是营业执照图片的场景，ImageBase64和ImageUrl必须提供一个，如果都提供，只使用 ImageUrl。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        # @type ImageUrl: String
        # @param ImageConfig: 用于入参是营业执照图片的场景，表示需要校验的参数：RegNum（注册号或者统一社会信用代码），Name（企业名称），Address（经营地址）。选择后会返回相关参数校验结果。RegNum为必选，Name和Address可选。
        # 格式为{RegNum: true, Name:true/false, Address:true/false}

        # 设置方式参考：
        # Config = Json.stringify({"Name":true,"Address":true})
        # API 3.0 Explorer 设置方式参考：
        # Config = {"Name":true,"Address":true}
        # @type ImageConfig: String
        # @param RegNum: 用于入参是文本的场景，RegNum表示注册号或者统一社会信用代码。若没有传入营业执照图片，则RegNum为必选项，若图片和RegNum都传入，则只使用RegNum。
        # @type RegNum: String
        # @param Name: 用于入参是文本的场景，Name表示企业名称。Name为可选项，填写后会返回Name的校验结果。
        # @type Name: String
        # @param Address: 用于入参是文本的场景，Address表示经营地址。Address为可选项，填写后会返回Address的校验结果。
        # @type Address: String
        # @param RegCapital: 1表示输出注册资本字段（单位：万元），其他值表示不输出。默认不输出。
        # @type RegCapital: Integer
        # @param EstablishTime: true表示展示成立/注册日期
        # @type EstablishTime: Boolean

        attr_accessor :ImageBase64, :ImageUrl, :ImageConfig, :RegNum, :Name, :Address, :RegCapital, :EstablishTime
        
        def initialize(imagebase64=nil, imageurl=nil, imageconfig=nil, regnum=nil, name=nil, address=nil, regcapital=nil, establishtime=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @ImageConfig = imageconfig
          @RegNum = regnum
          @Name = name
          @Address = address
          @RegCapital = regcapital
          @EstablishTime = establishtime
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @ImageConfig = params['ImageConfig']
          @RegNum = params['RegNum']
          @Name = params['Name']
          @Address = params['Address']
          @RegCapital = params['RegCapital']
          @EstablishTime = params['EstablishTime']
        end
      end

      # VerifyBasicBizLicense返回参数结构体
      class VerifyBasicBizLicenseResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 状态码，成功时返回0
        # @type ErrorCode: Integer
        # @param CreditCode: 统一社会信用代码
        # @type CreditCode: String
        # @param Opfrom: 经营期限自（YYYY-MM-DD）
        # @type Opfrom: String
        # @param Opto: 经营期限至（YYYY-MM-DD）
        # @type Opto: String
        # @param Frname: 法人姓名
        # @type Frname: String
        # @param Entstatus: 经营状态，包括：成立、筹建、存续、在营、开业、在册、正常经营、开业登记中、登记成立、撤销、撤销登记、非正常户、告解、个体暂时吊销、个体转企业、吊销（未注销）、拟注销、已注销、（待）迁入、（待）迁出、停业、歇业、清算等。
        # @type Entstatus: String
        # @param Zsopscope: 经营业务范围
        # @type Zsopscope: String
        # @param Reason: 查询的状态信息
        # @type Reason: String
        # @param Oriregno: 原注册号
        # @type Oriregno: String
        # @param VerifyRegno: 要核验的工商注册号
        # @type VerifyRegno: String
        # @param Regno: 工商注册号
        # @type Regno: String
        # @param VerifyEntname: 要核验的企业名称
        # @type VerifyEntname: String
        # @param Entname: 企业名称
        # @type Entname: String
        # @param VerifyDom: 要核验的住址
        # @type VerifyDom: String
        # @param Dom: 住址
        # @type Dom: String
        # @param RegNumResult: 验证结果
        # @type RegNumResult: :class:`Tencentcloud::Ocr.v20181119.models.BizLicenseVerifyResult`
        # @param RegCapital: 注册资本（单位：万元）,只有输入参数regCapital为1的时候才输出
        # @type RegCapital: String
        # @param EstablishTime: 成立/注册日期，只有输入参数EstablishTime为true时展示，默认为空
        # @type EstablishTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :CreditCode, :Opfrom, :Opto, :Frname, :Entstatus, :Zsopscope, :Reason, :Oriregno, :VerifyRegno, :Regno, :VerifyEntname, :Entname, :VerifyDom, :Dom, :RegNumResult, :RegCapital, :EstablishTime, :RequestId
        
        def initialize(errorcode=nil, creditcode=nil, opfrom=nil, opto=nil, frname=nil, entstatus=nil, zsopscope=nil, reason=nil, oriregno=nil, verifyregno=nil, regno=nil, verifyentname=nil, entname=nil, verifydom=nil, dom=nil, regnumresult=nil, regcapital=nil, establishtime=nil, requestid=nil)
          @ErrorCode = errorcode
          @CreditCode = creditcode
          @Opfrom = opfrom
          @Opto = opto
          @Frname = frname
          @Entstatus = entstatus
          @Zsopscope = zsopscope
          @Reason = reason
          @Oriregno = oriregno
          @VerifyRegno = verifyregno
          @Regno = regno
          @VerifyEntname = verifyentname
          @Entname = entname
          @VerifyDom = verifydom
          @Dom = dom
          @RegNumResult = regnumresult
          @RegCapital = regcapital
          @EstablishTime = establishtime
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @CreditCode = params['CreditCode']
          @Opfrom = params['Opfrom']
          @Opto = params['Opto']
          @Frname = params['Frname']
          @Entstatus = params['Entstatus']
          @Zsopscope = params['Zsopscope']
          @Reason = params['Reason']
          @Oriregno = params['Oriregno']
          @VerifyRegno = params['VerifyRegno']
          @Regno = params['Regno']
          @VerifyEntname = params['VerifyEntname']
          @Entname = params['Entname']
          @VerifyDom = params['VerifyDom']
          @Dom = params['Dom']
          unless params['RegNumResult'].nil?
            @RegNumResult = BizLicenseVerifyResult.new
            @RegNumResult.deserialize(params['RegNumResult'])
          end
          @RegCapital = params['RegCapital']
          @EstablishTime = params['EstablishTime']
          @RequestId = params['RequestId']
        end
      end

      # VerifyBizLicense请求参数结构体
      class VerifyBizLicenseRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 用于入参是营业执照图片的场景，ImageBase64和ImageUrl必须提供一个，如果都提供，只使用 ImageUrl。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        # @type ImageBase64: String
        # @param ImageUrl: 用于入参是营业执照图片的场景，ImageBase64和ImageUrl必须提供一个，如果都提供，只使用 ImageUrl。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        # @type ImageUrl: String
        # @param ImageConfig: 用于入参是营业执照图片的场景，表示需要校验的参数：RegNum（注册号或者统一社会信用代码），Name（企业名称），Address（经营地址）。选择后会返回相关参数校验结果。RegNum为必选，Name和Address可选。
        # 格式为{RegNum: true, Name:true/false, Address:true/false}

        # 设置方式参考：
        # Config = Json.stringify({"Name":true,"Address":true})
        # API 3.0 Explorer 设置方式参考：
        # Config = {"Name":true,"Address":true}
        # @type ImageConfig: String
        # @param RegNum: 用于入参是文本的场景，RegNum表示注册号或者统一社会信用代码。若没有传入营业执照图片，则RegNum为必选项，若图片和RegNum都传入，则只使用RegNum。
        # @type RegNum: String
        # @param Name: 用于入参是文本的场景，Name表示企业名称。Name为可选项，填写后会返回Name的校验结果。
        # @type Name: String
        # @param Address: 用于入参是文本的场景，Address表示经营地址，填写后会返回Address的校验结果。
        # @type Address: String

        attr_accessor :ImageBase64, :ImageUrl, :ImageConfig, :RegNum, :Name, :Address
        
        def initialize(imagebase64=nil, imageurl=nil, imageconfig=nil, regnum=nil, name=nil, address=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @ImageConfig = imageconfig
          @RegNum = regnum
          @Name = name
          @Address = address
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @ImageConfig = params['ImageConfig']
          @RegNum = params['RegNum']
          @Name = params['Name']
          @Address = params['Address']
        end
      end

      # VerifyBizLicense返回参数结构体
      class VerifyBizLicenseResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 状态码
        # @type ErrorCode: Integer
        # @param CreditCode: 统一社会信用代码
        # @type CreditCode: String
        # @param OrgCode: 组织机构代码
        # @type OrgCode: String
        # @param OpenFrom: 经营期限自（YYYY-MM-DD）
        # @type OpenFrom: String
        # @param OpenTo: 经营期限至（YYYY-MM-DD）
        # @type OpenTo: String
        # @param FrName: 法人姓名
        # @type FrName: String
        # @param EnterpriseStatus: 经营状态，包括：成立、筹建、存续、在营、开业、在册、正常经营、开业登记中、登记成立、撤销、撤销登记、非正常户、告解、个体暂时吊销、个体转企业、吊销（未注销）、拟注销、已注销、（待）迁入、（待）迁出、停业、歇业、清算等。
        # @type EnterpriseStatus: String
        # @param OperateScopeAndForm: 经营（业务）范围及方式
        # @type OperateScopeAndForm: String
        # @param RegCap: 注册资金（单位:万元）
        # @type RegCap: String
        # @param RegCapCur: 注册币种
        # @type RegCapCur: String
        # @param RegOrg: 登记机关
        # @type RegOrg: String
        # @param EsDate: 开业日期（YYYY-MM-DD）
        # @type EsDate: String
        # @param EnterpriseType: 企业（机构）类型
        # @type EnterpriseType: String
        # @param CancelDate: 注销日期
        # @type CancelDate: String
        # @param RevokeDate: 吊销日期
        # @type RevokeDate: String
        # @param AbuItem: 许可经营项目
        # @type AbuItem: String
        # @param CbuItem: 一般经营项目
        # @type CbuItem: String
        # @param ApprDate: 核准时间
        # @type ApprDate: String
        # @param Province: 省（返回空值）
        # @type Province: String
        # @param City: 地级市（返回空值）
        # @type City: String
        # @param County: 区\县（返回空值）
        # @type County: String
        # @param AreaCode: 住所所在行政区划代码（返回空值）
        # @type AreaCode: String
        # @param IndustryPhyCode: 行业门类代码（返回空值）
        # @type IndustryPhyCode: String
        # @param IndustryPhyName: 行业门类名称（返回空值）
        # @type IndustryPhyName: String
        # @param IndustryCode: 国民经济行业代码（返回空值）
        # @type IndustryCode: String
        # @param IndustryName: 国民经济行业名称（返回空值）
        # @type IndustryName: String
        # @param OperateScope: 经营（业务）范围
        # @type OperateScope: String
        # @param VerifyRegNo: 要核验的工商注册号
        # @type VerifyRegNo: String
        # @param RegNo: 工商注册号
        # @type RegNo: String
        # @param VerifyEnterpriseName: 要核验的企业名称
        # @type VerifyEnterpriseName: String
        # @param EnterpriseName: 企业名称
        # @type EnterpriseName: String
        # @param VerifyAddress: 要核验的注册地址
        # @type VerifyAddress: String
        # @param Address: 注册地址
        # @type Address: String
        # @param RegNumResult: 验证结果
        # @type RegNumResult: :class:`Tencentcloud::Ocr.v20181119.models.BizLicenseVerifyResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :CreditCode, :OrgCode, :OpenFrom, :OpenTo, :FrName, :EnterpriseStatus, :OperateScopeAndForm, :RegCap, :RegCapCur, :RegOrg, :EsDate, :EnterpriseType, :CancelDate, :RevokeDate, :AbuItem, :CbuItem, :ApprDate, :Province, :City, :County, :AreaCode, :IndustryPhyCode, :IndustryPhyName, :IndustryCode, :IndustryName, :OperateScope, :VerifyRegNo, :RegNo, :VerifyEnterpriseName, :EnterpriseName, :VerifyAddress, :Address, :RegNumResult, :RequestId
        
        def initialize(errorcode=nil, creditcode=nil, orgcode=nil, openfrom=nil, opento=nil, frname=nil, enterprisestatus=nil, operatescopeandform=nil, regcap=nil, regcapcur=nil, regorg=nil, esdate=nil, enterprisetype=nil, canceldate=nil, revokedate=nil, abuitem=nil, cbuitem=nil, apprdate=nil, province=nil, city=nil, county=nil, areacode=nil, industryphycode=nil, industryphyname=nil, industrycode=nil, industryname=nil, operatescope=nil, verifyregno=nil, regno=nil, verifyenterprisename=nil, enterprisename=nil, verifyaddress=nil, address=nil, regnumresult=nil, requestid=nil)
          @ErrorCode = errorcode
          @CreditCode = creditcode
          @OrgCode = orgcode
          @OpenFrom = openfrom
          @OpenTo = opento
          @FrName = frname
          @EnterpriseStatus = enterprisestatus
          @OperateScopeAndForm = operatescopeandform
          @RegCap = regcap
          @RegCapCur = regcapcur
          @RegOrg = regorg
          @EsDate = esdate
          @EnterpriseType = enterprisetype
          @CancelDate = canceldate
          @RevokeDate = revokedate
          @AbuItem = abuitem
          @CbuItem = cbuitem
          @ApprDate = apprdate
          @Province = province
          @City = city
          @County = county
          @AreaCode = areacode
          @IndustryPhyCode = industryphycode
          @IndustryPhyName = industryphyname
          @IndustryCode = industrycode
          @IndustryName = industryname
          @OperateScope = operatescope
          @VerifyRegNo = verifyregno
          @RegNo = regno
          @VerifyEnterpriseName = verifyenterprisename
          @EnterpriseName = enterprisename
          @VerifyAddress = verifyaddress
          @Address = address
          @RegNumResult = regnumresult
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @CreditCode = params['CreditCode']
          @OrgCode = params['OrgCode']
          @OpenFrom = params['OpenFrom']
          @OpenTo = params['OpenTo']
          @FrName = params['FrName']
          @EnterpriseStatus = params['EnterpriseStatus']
          @OperateScopeAndForm = params['OperateScopeAndForm']
          @RegCap = params['RegCap']
          @RegCapCur = params['RegCapCur']
          @RegOrg = params['RegOrg']
          @EsDate = params['EsDate']
          @EnterpriseType = params['EnterpriseType']
          @CancelDate = params['CancelDate']
          @RevokeDate = params['RevokeDate']
          @AbuItem = params['AbuItem']
          @CbuItem = params['CbuItem']
          @ApprDate = params['ApprDate']
          @Province = params['Province']
          @City = params['City']
          @County = params['County']
          @AreaCode = params['AreaCode']
          @IndustryPhyCode = params['IndustryPhyCode']
          @IndustryPhyName = params['IndustryPhyName']
          @IndustryCode = params['IndustryCode']
          @IndustryName = params['IndustryName']
          @OperateScope = params['OperateScope']
          @VerifyRegNo = params['VerifyRegNo']
          @RegNo = params['RegNo']
          @VerifyEnterpriseName = params['VerifyEnterpriseName']
          @EnterpriseName = params['EnterpriseName']
          @VerifyAddress = params['VerifyAddress']
          @Address = params['Address']
          unless params['RegNumResult'].nil?
            @RegNumResult = BizLicenseVerifyResult.new
            @RegNumResult.deserialize(params['RegNumResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # VerifyEnterpriseFourFactors请求参数结构体
      class VerifyEnterpriseFourFactorsRequest < TencentCloud::Common::AbstractModel
        # @param RealName: 姓名
        # @type RealName: String
        # @param IdCard: 证件号码（公司注册证件号）
        # @type IdCard: String
        # @param EnterpriseName: 企业全称
        # @type EnterpriseName: String
        # @param EnterpriseMark: 企业标识（注册号，统一社会信用代码）
        # @type EnterpriseMark: String

        attr_accessor :RealName, :IdCard, :EnterpriseName, :EnterpriseMark
        
        def initialize(realname=nil, idcard=nil, enterprisename=nil, enterprisemark=nil)
          @RealName = realname
          @IdCard = idcard
          @EnterpriseName = enterprisename
          @EnterpriseMark = enterprisemark
        end

        def deserialize(params)
          @RealName = params['RealName']
          @IdCard = params['IdCard']
          @EnterpriseName = params['EnterpriseName']
          @EnterpriseMark = params['EnterpriseMark']
        end
      end

      # VerifyEnterpriseFourFactors返回参数结构体
      class VerifyEnterpriseFourFactorsResponse < TencentCloud::Common::AbstractModel
        # @param State: 核验一致性（1:一致，2:不一致，3:查询无记录）
        # @type State: Integer
        # @param Detail: 核验结果明细，7：企业法人/负责人，6：企业股东，5：企
        # 业管理人员，-21：企业名称与企业标识不符，-22：姓名不一致，-23：证件号码不一致，-24：企业名称不一致，-25：企业标识不一致
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: :class:`Tencentcloud::Ocr.v20181119.models.Detail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :State, :Detail, :RequestId
        
        def initialize(state=nil, detail=nil, requestid=nil)
          @State = state
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          @State = params['State']
          unless params['Detail'].nil?
            @Detail = Detail.new
            @Detail.deserialize(params['Detail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # VerifyOfdVatInvoiceOCR请求参数结构体
      class VerifyOfdVatInvoiceOCRRequest < TencentCloud::Common::AbstractModel
        # @param OfdFileUrl: OFD文件的 Url 地址。
        # @type OfdFileUrl: String
        # @param OfdFileBase64: OFD文件的 Base64 值。
        # OfdFileUrl 和 OfdFileBase64 必传其一，若两者都传，只解析OfdFileBase64。
        # @type OfdFileBase64: String

        attr_accessor :OfdFileUrl, :OfdFileBase64
        
        def initialize(ofdfileurl=nil, ofdfilebase64=nil)
          @OfdFileUrl = ofdfileurl
          @OfdFileBase64 = ofdfilebase64
        end

        def deserialize(params)
          @OfdFileUrl = params['OfdFileUrl']
          @OfdFileBase64 = params['OfdFileBase64']
        end
      end

      # VerifyOfdVatInvoiceOCR返回参数结构体
      class VerifyOfdVatInvoiceOCRResponse < TencentCloud::Common::AbstractModel
        # @param Type: 发票类型
        # 026:增值税电子普通发票
        # 028:增值税电子专用发票
        # @type Type: String
        # @param InvoiceCode: 发票代码
        # @type InvoiceCode: String
        # @param InvoiceNumber: 发票号码
        # @type InvoiceNumber: String
        # @param IssueDate: 开票日期
        # @type IssueDate: String
        # @param InvoiceCheckCode: 验证码
        # @type InvoiceCheckCode: String
        # @param MachineNumber: 机器编号
        # @type MachineNumber: String
        # @param TaxControlCode: 密码区
        # @type TaxControlCode: String
        # @param Buyer: 购买方
        # @type Buyer: :class:`Tencentcloud::Ocr.v20181119.models.VatInvoiceUserInfo`
        # @param Seller: 销售方
        # @type Seller: :class:`Tencentcloud::Ocr.v20181119.models.VatInvoiceUserInfo`
        # @param TaxInclusiveTotalAmount: 价税合计
        # @type TaxInclusiveTotalAmount: String
        # @param InvoiceClerk: 开票人
        # @type InvoiceClerk: String
        # @param Payee: 收款人
        # @type Payee: String
        # @param Checker: 复核人
        # @type Checker: String
        # @param TaxTotalAmount: 税额
        # @type TaxTotalAmount: String
        # @param TaxExclusiveTotalAmount: 不含税金额
        # @type TaxExclusiveTotalAmount: String
        # @param Note: 备注
        # @type Note: String
        # @param GoodsInfos: 货物或服务清单
        # @type GoodsInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Type, :InvoiceCode, :InvoiceNumber, :IssueDate, :InvoiceCheckCode, :MachineNumber, :TaxControlCode, :Buyer, :Seller, :TaxInclusiveTotalAmount, :InvoiceClerk, :Payee, :Checker, :TaxTotalAmount, :TaxExclusiveTotalAmount, :Note, :GoodsInfos, :RequestId
        
        def initialize(type=nil, invoicecode=nil, invoicenumber=nil, issuedate=nil, invoicecheckcode=nil, machinenumber=nil, taxcontrolcode=nil, buyer=nil, seller=nil, taxinclusivetotalamount=nil, invoiceclerk=nil, payee=nil, checker=nil, taxtotalamount=nil, taxexclusivetotalamount=nil, note=nil, goodsinfos=nil, requestid=nil)
          @Type = type
          @InvoiceCode = invoicecode
          @InvoiceNumber = invoicenumber
          @IssueDate = issuedate
          @InvoiceCheckCode = invoicecheckcode
          @MachineNumber = machinenumber
          @TaxControlCode = taxcontrolcode
          @Buyer = buyer
          @Seller = seller
          @TaxInclusiveTotalAmount = taxinclusivetotalamount
          @InvoiceClerk = invoiceclerk
          @Payee = payee
          @Checker = checker
          @TaxTotalAmount = taxtotalamount
          @TaxExclusiveTotalAmount = taxexclusivetotalamount
          @Note = note
          @GoodsInfos = goodsinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @Type = params['Type']
          @InvoiceCode = params['InvoiceCode']
          @InvoiceNumber = params['InvoiceNumber']
          @IssueDate = params['IssueDate']
          @InvoiceCheckCode = params['InvoiceCheckCode']
          @MachineNumber = params['MachineNumber']
          @TaxControlCode = params['TaxControlCode']
          unless params['Buyer'].nil?
            @Buyer = VatInvoiceUserInfo.new
            @Buyer.deserialize(params['Buyer'])
          end
          unless params['Seller'].nil?
            @Seller = VatInvoiceUserInfo.new
            @Seller.deserialize(params['Seller'])
          end
          @TaxInclusiveTotalAmount = params['TaxInclusiveTotalAmount']
          @InvoiceClerk = params['InvoiceClerk']
          @Payee = params['Payee']
          @Checker = params['Checker']
          @TaxTotalAmount = params['TaxTotalAmount']
          @TaxExclusiveTotalAmount = params['TaxExclusiveTotalAmount']
          @Note = params['Note']
          unless params['GoodsInfos'].nil?
            @GoodsInfos = []
            params['GoodsInfos'].each do |i|
              vatinvoicegoodsinfo_tmp = VatInvoiceGoodsInfo.new
              vatinvoicegoodsinfo_tmp.deserialize(i)
              @GoodsInfos << vatinvoicegoodsinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # VinOCR请求参数结构体
      class VinOCRRequest < TencentCloud::Common::AbstractModel
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
        # 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        # 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        # @type ImageBase64: String
        # @param ImageUrl: 图片的 Url 地址。
        # 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        # 支持的图片大小：所下载图片经 Base64 编码后不超过 7M。图片下载时间不超过 3 秒。
        # 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param EnablePreDetect: 预检测开关，当待识别运单占整个输入图像的比例较小时，建议打开预检测开关。默认值为false。
        # @type EnablePreDetect: Boolean

        attr_accessor :ImageBase64, :ImageUrl, :EnablePreDetect
        
        def initialize(imagebase64=nil, imageurl=nil, enablepredetect=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @EnablePreDetect = enablepredetect
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @EnablePreDetect = params['EnablePreDetect']
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
            @TextDetections = TextWaybill.new
            @TextDetections.deserialize(params['TextDetections'])
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
          unless params['WordCoordinate'].nil?
            @WordCoordinate = []
            params['WordCoordinate'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @WordCoordinate << coord_tmp
            end
          end
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

