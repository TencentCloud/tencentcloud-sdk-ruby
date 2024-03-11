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
  module Cms
    module V20190321
      # 从图片中检测到的二维码，可能为多个
      class CodeDetail < TencentCloud::Common::AbstractModel
        # @param StrCharset: 二维码文本的编码格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrCharset: String
        # @param QrCodePosition: 二维码在图片中的位置，由边界点的坐标表示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QrCodePosition: Array
        # @param StrQrCodeText: 二维码的文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrQrCodeText: String
        # @param Uint32QrCodeType: 二维码的类型：1:ONED_BARCODE，2:QRCOD，3:WXCODE，4:PDF417，5:DATAMATRIX
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uint32QrCodeType: Integer
        # @param CodeCharset: 二维码文本的编码格式（已废弃）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeCharset: String
        # @param CodePosition: 二维码在图片中的位置，由边界点的坐标表示（已废弃）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodePosition: Array
        # @param CodeText: 二维码的文本内容（已废弃）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeText: String
        # @param CodeType: 二维码的类型：1:ONED_BARCODE，2:QRCOD，3:WXCODE，4:PDF417，5:DATAMATRIX（已废弃）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeType: Integer

        attr_accessor :StrCharset, :QrCodePosition, :StrQrCodeText, :Uint32QrCodeType, :CodeCharset, :CodePosition, :CodeText, :CodeType

        def initialize(strcharset=nil, qrcodeposition=nil, strqrcodetext=nil, uint32qrcodetype=nil, codecharset=nil, codeposition=nil, codetext=nil, codetype=nil)
          @StrCharset = strcharset
          @QrCodePosition = qrcodeposition
          @StrQrCodeText = strqrcodetext
          @Uint32QrCodeType = uint32qrcodetype
          @CodeCharset = codecharset
          @CodePosition = codeposition
          @CodeText = codetext
          @CodeType = codetype
        end

        def deserialize(params)
          @StrCharset = params['StrCharset']
          unless params['QrCodePosition'].nil?
            @QrCodePosition = []
            params['QrCodePosition'].each do |i|
              codeposition_tmp = CodePosition.new
              codeposition_tmp.deserialize(i)
              @QrCodePosition << codeposition_tmp
            end
          end
          @StrQrCodeText = params['StrQrCodeText']
          @Uint32QrCodeType = params['Uint32QrCodeType']
          @CodeCharset = params['CodeCharset']
          unless params['CodePosition'].nil?
            @CodePosition = []
            params['CodePosition'].each do |i|
              codeposition_tmp = CodePosition.new
              codeposition_tmp.deserialize(i)
              @CodePosition << codeposition_tmp
            end
          end
          @CodeText = params['CodeText']
          @CodeType = params['CodeType']
        end
      end

      # 图片二维码详情
      class CodeDetect < TencentCloud::Common::AbstractModel
        # @param ModerationCode: 检测是否成功，0：成功，-1：出错
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModerationCode: Integer
        # @param ModerationDetail: 从图片中检测到的二维码，可能为多个
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModerationDetail: Array

        attr_accessor :ModerationCode, :ModerationDetail

        def initialize(moderationcode=nil, moderationdetail=nil)
          @ModerationCode = moderationcode
          @ModerationDetail = moderationdetail
        end

        def deserialize(params)
          @ModerationCode = params['ModerationCode']
          unless params['ModerationDetail'].nil?
            @ModerationDetail = []
            params['ModerationDetail'].each do |i|
              codedetail_tmp = CodeDetail.new
              codedetail_tmp.deserialize(i)
              @ModerationDetail << codedetail_tmp
            end
          end
        end
      end

      # 二维码在图片中的位置，由边界点的坐标表示
      class CodePosition < TencentCloud::Common::AbstractModel
        # @param FloatX: 二维码边界点X轴坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FloatX: Float
        # @param FloatY: 二维码边界点Y轴坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FloatY: Float

        attr_accessor :FloatX, :FloatY

        def initialize(floatx=nil, floaty=nil)
          @FloatX = floatx
          @FloatY = floaty
        end

        def deserialize(params)
          @FloatX = params['FloatX']
          @FloatY = params['FloatY']
        end
      end

      # 坐标
      class Coordinate < TencentCloud::Common::AbstractModel
        # @param Width: 宽度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Width: Integer
        # @param Cy: 左上角纵坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cy: Integer
        # @param Cx: 左上角横坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cx: Integer
        # @param Height: 高度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Height: Integer

        attr_accessor :Width, :Cy, :Cx, :Height

        def initialize(width=nil, cy=nil, cx=nil, height=nil)
          @Width = width
          @Cy = cy
          @Cx = cx
          @Height = height
        end

        def deserialize(params)
          @Width = params['Width']
          @Cy = params['Cy']
          @Cx = params['Cx']
          @Height = params['Height']
        end
      end

      # CreateKeywordsSamples请求参数结构体
      class CreateKeywordsSamplesRequest < TencentCloud::Common::AbstractModel
        # @param UserKeywords: 关键词库信息：单次限制写入2000个，词库总容量不可超过10000个。
        # @type UserKeywords: Array
        # @param LibID: 词库ID
        # @type LibID: String

        attr_accessor :UserKeywords, :LibID

        def initialize(userkeywords=nil, libid=nil)
          @UserKeywords = userkeywords
          @LibID = libid
        end

        def deserialize(params)
          unless params['UserKeywords'].nil?
            @UserKeywords = []
            params['UserKeywords'].each do |i|
              userkeyword_tmp = UserKeyword.new
              userkeyword_tmp.deserialize(i)
              @UserKeywords << userkeyword_tmp
            end
          end
          @LibID = params['LibID']
        end
      end

      # CreateKeywordsSamples返回参数结构体
      class CreateKeywordsSamplesResponse < TencentCloud::Common::AbstractModel
        # @param SampleIDs: 添加成功的关键词ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SampleIDs: Array
        # @param SuccessInfos: 成功入库关键词列表
        # @type SuccessInfos: Array
        # @param DupInfos: 重复关键词列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DupInfos: Array
        # @param InvalidSamples: 无效关键词列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvalidSamples: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SampleIDs, :SuccessInfos, :DupInfos, :InvalidSamples, :RequestId

        def initialize(sampleids=nil, successinfos=nil, dupinfos=nil, invalidsamples=nil, requestid=nil)
          @SampleIDs = sampleids
          @SuccessInfos = successinfos
          @DupInfos = dupinfos
          @InvalidSamples = invalidsamples
          @RequestId = requestid
        end

        def deserialize(params)
          @SampleIDs = params['SampleIDs']
          unless params['SuccessInfos'].nil?
            @SuccessInfos = []
            params['SuccessInfos'].each do |i|
              userkeywordinfo_tmp = UserKeywordInfo.new
              userkeywordinfo_tmp.deserialize(i)
              @SuccessInfos << userkeywordinfo_tmp
            end
          end
          unless params['DupInfos'].nil?
            @DupInfos = []
            params['DupInfos'].each do |i|
              userkeywordinfo_tmp = UserKeywordInfo.new
              userkeywordinfo_tmp.deserialize(i)
              @DupInfos << userkeywordinfo_tmp
            end
          end
          unless params['InvalidSamples'].nil?
            @InvalidSamples = []
            params['InvalidSamples'].each do |i|
              invalidsample_tmp = InvalidSample.new
              invalidsample_tmp.deserialize(i)
              @InvalidSamples << invalidsample_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 文本返回的自定义词库结果
      class CustomResult < TencentCloud::Common::AbstractModel
        # @param Keywords: 命中的自定义关键词
        # @type Keywords: Array
        # @param LibName: 自定义词库名称
        # @type LibName: String
        # @param LibId: 自定义库id
        # @type LibId: String
        # @param Type: 命中的自定义关键词的类型
        # @type Type: String

        attr_accessor :Keywords, :LibName, :LibId, :Type

        def initialize(keywords=nil, libname=nil, libid=nil, type=nil)
          @Keywords = keywords
          @LibName = libname
          @LibId = libid
          @Type = type
        end

        def deserialize(params)
          @Keywords = params['Keywords']
          @LibName = params['LibName']
          @LibId = params['LibId']
          @Type = params['Type']
        end
      end

      # DeleteLibSamples请求参数结构体
      class DeleteLibSamplesRequest < TencentCloud::Common::AbstractModel
        # @param SampleIDs: 关键词ID列表
        # @type SampleIDs: Array
        # @param LibID: 词库ID
        # @type LibID: String
        # @param SampleContents: 关键词内容列表
        # @type SampleContents: Array

        attr_accessor :SampleIDs, :LibID, :SampleContents

        def initialize(sampleids=nil, libid=nil, samplecontents=nil)
          @SampleIDs = sampleids
          @LibID = libid
          @SampleContents = samplecontents
        end

        def deserialize(params)
          @SampleIDs = params['SampleIDs']
          @LibID = params['LibID']
          @SampleContents = params['SampleContents']
        end
      end

      # DeleteLibSamples返回参数结构体
      class DeleteLibSamplesResponse < TencentCloud::Common::AbstractModel
        # @param Count: 删除成功的数量
        # @type Count: Integer
        # @param Details: 每个关键词删除的结果
        # @type Details: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :Details, :RequestId

        def initialize(count=nil, details=nil, requestid=nil)
          @Count = count
          @Details = details
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              deletesampledetails_tmp = DeleteSampleDetails.new
              deletesampledetails_tmp.deserialize(i)
              @Details << deletesampledetails_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 词库关键词删除结果详情
      class DeleteSampleDetails < TencentCloud::Common::AbstractModel
        # @param SampleID: 关键词ID
        # @type SampleID: String
        # @param Content: 关键词内容
        # @type Content: String
        # @param Deleted: 是否删除成功
        # @type Deleted: Boolean
        # @param ErrorInfo: 错误信息
        # @type ErrorInfo: String

        attr_accessor :SampleID, :Content, :Deleted, :ErrorInfo

        def initialize(sampleid=nil, content=nil, deleted=nil, errorinfo=nil)
          @SampleID = sampleid
          @Content = content
          @Deleted = deleted
          @ErrorInfo = errorinfo
        end

        def deserialize(params)
          @SampleID = params['SampleID']
          @Content = params['Content']
          @Deleted = params['Deleted']
          @ErrorInfo = params['ErrorInfo']
        end
      end

      # DescribeKeywordsLibs请求参数结构体
      class DescribeKeywordsLibsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 单页条数，最大为100条
        # @type Limit: Integer
        # @param Offset: 条数偏移量
        # @type Offset: Integer
        # @param Filters: 过滤器(支持LibName模糊查询,CustomLibIDs词库id列表过滤)
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeKeywordsLibs返回参数结构体
      class DescribeKeywordsLibsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 词库记录数
        # @type TotalCount: Integer
        # @param Infos: 词库详情
        # @type Infos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Infos, :RequestId

        def initialize(totalcount=nil, infos=nil, requestid=nil)
          @TotalCount = totalcount
          @Infos = infos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Infos'].nil?
            @Infos = []
            params['Infos'].each do |i|
              keywordslibinfo_tmp = KeywordsLibInfo.new
              keywordslibinfo_tmp.deserialize(i)
              @Infos << keywordslibinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLibSamples请求参数结构体
      class DescribeLibSamplesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 单页条数，最大为100条
        # @type Limit: Integer
        # @param Offset: 条数偏移量
        # @type Offset: Integer
        # @param LibID: 词库ID
        # @type LibID: String
        # @param Content: 词内容过滤
        # @type Content: String
        # @param EvilTypeList: 违规类型列表过滤
        # @type EvilTypeList: Array
        # @param SampleIDs: 样本词ID列表过滤
        # @type SampleIDs: Array

        attr_accessor :Limit, :Offset, :LibID, :Content, :EvilTypeList, :SampleIDs

        def initialize(limit=nil, offset=nil, libid=nil, content=nil, eviltypelist=nil, sampleids=nil)
          @Limit = limit
          @Offset = offset
          @LibID = libid
          @Content = content
          @EvilTypeList = eviltypelist
          @SampleIDs = sampleids
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @LibID = params['LibID']
          @Content = params['Content']
          @EvilTypeList = params['EvilTypeList']
          @SampleIDs = params['SampleIDs']
        end
      end

      # DescribeLibSamples返回参数结构体
      class DescribeLibSamplesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 词记录数
        # @type TotalCount: Integer
        # @param Infos: 词详情
        # @type Infos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Infos, :RequestId

        def initialize(totalcount=nil, infos=nil, requestid=nil)
          @TotalCount = totalcount
          @Infos = infos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Infos'].nil?
            @Infos = []
            params['Infos'].each do |i|
              userkeywordinfo_tmp = UserKeywordInfo.new
              userkeywordinfo_tmp.deserialize(i)
              @Infos << userkeywordinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 文本返回的详细结果
      class DetailResult < TencentCloud::Common::AbstractModel
        # @param Keywords: 该标签下命中的关键词
        # @type Keywords: Array
        # @param EvilType: 恶意类型
        # 100：正常
        # 20001：政治
        # 20002：色情
        # 20006：涉毒违法
        # 20007：谩骂
        # 20105：广告引流
        # 24001：暴恐
        # @type EvilType: Integer
        # @param Score: 该标签模型命中的分值
        # @type Score: Integer
        # @param EvilLabel: 恶意标签，Normal：正常，Polity：涉政，Porn：色情，Illegal：违法，Abuse：谩骂，Terror：暴恐，Ad：广告，Custom：自定义关键词
        # @type EvilLabel: String

        attr_accessor :Keywords, :EvilType, :Score, :EvilLabel

        def initialize(keywords=nil, eviltype=nil, score=nil, evillabel=nil)
          @Keywords = keywords
          @EvilType = eviltype
          @Score = score
          @EvilLabel = evillabel
        end

        def deserialize(params)
          @Keywords = params['Keywords']
          @EvilType = params['EvilType']
          @Score = params['Score']
          @EvilLabel = params['EvilLabel']
        end
      end

      # 设备信息
      class Device < TencentCloud::Common::AbstractModel
        # @param IDFV: IOS设备，IDFV - Identifier For Vendor（应用开发商标识符）
        # @type IDFV: String
        # @param TokenId: 设备指纹Token
        # @type TokenId: String
        # @param IP: 用户IP
        # @type IP: String
        # @param Mac: Mac地址
        # @type Mac: String
        # @param IDFA: IOS设备，Identifier For Advertising（广告标识符）
        # @type IDFA: String
        # @param DeviceId: 设备指纹ID
        # @type DeviceId: String
        # @param IMEI: 设备序列号
        # @type IMEI: String

        attr_accessor :IDFV, :TokenId, :IP, :Mac, :IDFA, :DeviceId, :IMEI

        def initialize(idfv=nil, tokenid=nil, ip=nil, mac=nil, idfa=nil, deviceid=nil, imei=nil)
          @IDFV = idfv
          @TokenId = tokenid
          @IP = ip
          @Mac = mac
          @IDFA = idfa
          @DeviceId = deviceid
          @IMEI = imei
        end

        def deserialize(params)
          @IDFV = params['IDFV']
          @TokenId = params['TokenId']
          @IP = params['IP']
          @Mac = params['Mac']
          @IDFA = params['IDFA']
          @DeviceId = params['DeviceId']
          @IMEI = params['IMEI']
        end
      end

      # 入参过滤条件
      class Filters < TencentCloud::Common::AbstractModel
        # @param Name: 查询字段
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

      # 图片识别结果详情
      class ImageData < TencentCloud::Common::AbstractModel
        # @param EvilType: 恶意类型
        # 100：正常
        # 20001：政治
        # 20002：色情
        # 20006：涉毒违法
        # 20007：谩骂
        # 20103：性感
        # 24001：暴恐
        # @type EvilType: Integer
        # @param HotDetect: 图片性感详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HotDetect: :class:`Tencentcloud::Cms.v20190321.models.ImageHotDetect`
        # @param EvilFlag: 是否恶意 0：正常 1：可疑
        # @type EvilFlag: Integer
        # @param CodeDetect: 图片二维码详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeDetect: :class:`Tencentcloud::Cms.v20190321.models.CodeDetect`
        # @param PolityDetect: 图片涉政详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolityDetect: :class:`Tencentcloud::Cms.v20190321.models.ImagePolityDetect`
        # @param IllegalDetect: 图片违法详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IllegalDetect: :class:`Tencentcloud::Cms.v20190321.models.ImageIllegalDetect`
        # @param PornDetect: 图片涉黄详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PornDetect: :class:`Tencentcloud::Cms.v20190321.models.ImagePornDetect`
        # @param TerrorDetect: 图片暴恐详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerrorDetect: :class:`Tencentcloud::Cms.v20190321.models.ImageTerrorDetect`
        # @param OCRDetect: 图片OCR详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OCRDetect: :class:`Tencentcloud::Cms.v20190321.models.OCRDetect`
        # @param LogoDetect: logo详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogoDetect: :class:`Tencentcloud::Cms.v20190321.models.LogoDetail`
        # @param Similar: 图片相似度详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Similar: :class:`Tencentcloud::Cms.v20190321.models.Similar`
        # @param PhoneDetect: 手机检测详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneDetect: :class:`Tencentcloud::Cms.v20190321.models.PhoneDetect`

        attr_accessor :EvilType, :HotDetect, :EvilFlag, :CodeDetect, :PolityDetect, :IllegalDetect, :PornDetect, :TerrorDetect, :OCRDetect, :LogoDetect, :Similar, :PhoneDetect

        def initialize(eviltype=nil, hotdetect=nil, evilflag=nil, codedetect=nil, politydetect=nil, illegaldetect=nil, porndetect=nil, terrordetect=nil, ocrdetect=nil, logodetect=nil, similar=nil, phonedetect=nil)
          @EvilType = eviltype
          @HotDetect = hotdetect
          @EvilFlag = evilflag
          @CodeDetect = codedetect
          @PolityDetect = politydetect
          @IllegalDetect = illegaldetect
          @PornDetect = porndetect
          @TerrorDetect = terrordetect
          @OCRDetect = ocrdetect
          @LogoDetect = logodetect
          @Similar = similar
          @PhoneDetect = phonedetect
        end

        def deserialize(params)
          @EvilType = params['EvilType']
          unless params['HotDetect'].nil?
            @HotDetect = ImageHotDetect.new
            @HotDetect.deserialize(params['HotDetect'])
          end
          @EvilFlag = params['EvilFlag']
          unless params['CodeDetect'].nil?
            @CodeDetect = CodeDetect.new
            @CodeDetect.deserialize(params['CodeDetect'])
          end
          unless params['PolityDetect'].nil?
            @PolityDetect = ImagePolityDetect.new
            @PolityDetect.deserialize(params['PolityDetect'])
          end
          unless params['IllegalDetect'].nil?
            @IllegalDetect = ImageIllegalDetect.new
            @IllegalDetect.deserialize(params['IllegalDetect'])
          end
          unless params['PornDetect'].nil?
            @PornDetect = ImagePornDetect.new
            @PornDetect.deserialize(params['PornDetect'])
          end
          unless params['TerrorDetect'].nil?
            @TerrorDetect = ImageTerrorDetect.new
            @TerrorDetect.deserialize(params['TerrorDetect'])
          end
          unless params['OCRDetect'].nil?
            @OCRDetect = OCRDetect.new
            @OCRDetect.deserialize(params['OCRDetect'])
          end
          unless params['LogoDetect'].nil?
            @LogoDetect = LogoDetail.new
            @LogoDetect.deserialize(params['LogoDetect'])
          end
          unless params['Similar'].nil?
            @Similar = Similar.new
            @Similar.deserialize(params['Similar'])
          end
          unless params['PhoneDetect'].nil?
            @PhoneDetect = PhoneDetect.new
            @PhoneDetect.deserialize(params['PhoneDetect'])
          end
        end
      end

      # 图片性感详情
      class ImageHotDetect < TencentCloud::Common::AbstractModel
        # @param Keywords: 关键词明细
        # @type Keywords: Array
        # @param EvilType: 恶意类型
        # 100：正常
        # 20103：性感
        # @type EvilType: Integer
        # @param Labels: 性感标签：性感特征中文描述
        # @type Labels: Array
        # @param Score: 性感分：分值范围 0-100，分数越高性感倾向越明显
        # @type Score: Integer
        # @param HitFlag: 处置判定 0：正常 1：可疑
        # @type HitFlag: Integer

        attr_accessor :Keywords, :EvilType, :Labels, :Score, :HitFlag

        def initialize(keywords=nil, eviltype=nil, labels=nil, score=nil, hitflag=nil)
          @Keywords = keywords
          @EvilType = eviltype
          @Labels = labels
          @Score = score
          @HitFlag = hitflag
        end

        def deserialize(params)
          @Keywords = params['Keywords']
          @EvilType = params['EvilType']
          @Labels = params['Labels']
          @Score = params['Score']
          @HitFlag = params['HitFlag']
        end
      end

      # 图片违法详情
      class ImageIllegalDetect < TencentCloud::Common::AbstractModel
        # @param EvilType: 恶意类型
        # 100：正常
        # 20006：涉毒违法
        # @type EvilType: Integer
        # @param HitFlag: 处置判定 0：正常 1：可疑
        # @type HitFlag: Integer
        # @param Keywords: 关键词明细
        # @type Keywords: Array
        # @param Labels: 违法标签：返回违法特征中文描述，如赌桌，枪支
        # @type Labels: Array
        # @param Score: 违法分：分值范围 0-100，分数越高违法倾向越明显
        # @type Score: Integer

        attr_accessor :EvilType, :HitFlag, :Keywords, :Labels, :Score

        def initialize(eviltype=nil, hitflag=nil, keywords=nil, labels=nil, score=nil)
          @EvilType = eviltype
          @HitFlag = hitflag
          @Keywords = keywords
          @Labels = labels
          @Score = score
        end

        def deserialize(params)
          @EvilType = params['EvilType']
          @HitFlag = params['HitFlag']
          @Keywords = params['Keywords']
          @Labels = params['Labels']
          @Score = params['Score']
        end
      end

      # ImageModeration请求参数结构体
      class ImageModerationRequest < TencentCloud::Common::AbstractModel
        # @param FileUrl: 文件地址
        # @type FileUrl: String
        # @param FileMD5: 文件MD5值
        # @type FileMD5: String
        # @param FileContent: 文件内容 Base64,与FileUrl必须二填一
        # @type FileContent: String

        attr_accessor :FileUrl, :FileMD5, :FileContent

        def initialize(fileurl=nil, filemd5=nil, filecontent=nil)
          @FileUrl = fileurl
          @FileMD5 = filemd5
          @FileContent = filecontent
        end

        def deserialize(params)
          @FileUrl = params['FileUrl']
          @FileMD5 = params['FileMD5']
          @FileContent = params['FileContent']
        end
      end

      # ImageModeration返回参数结构体
      class ImageModerationResponse < TencentCloud::Common::AbstractModel
        # @param BusinessCode: 业务返回码
        # @type BusinessCode: Integer
        # @param Data: 识别结果
        # @type Data: :class:`Tencentcloud::Cms.v20190321.models.ImageData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BusinessCode, :Data, :RequestId

        def initialize(businesscode=nil, data=nil, requestid=nil)
          @BusinessCode = businesscode
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @BusinessCode = params['BusinessCode']
          unless params['Data'].nil?
            @Data = ImageData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 图片涉政详情
      class ImagePolityDetect < TencentCloud::Common::AbstractModel
        # @param EvilType: 恶意类型
        # 100：正常
        # 20001：政治
        # @type EvilType: Integer
        # @param HitFlag: 处置判定  0：正常 1：可疑
        # @type HitFlag: Integer
        # @param FaceNames: 命中的人脸名称
        # @type FaceNames: Array
        # @param PolityLogoDetail: 命中的logo标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolityLogoDetail: Array
        # @param PolityItems: 命中的政治物品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolityItems: Array
        # @param Score: 政治（人脸）分：分值范围 0-100，分数越高可疑程度越高
        # @type Score: Integer
        # @param Keywords: 关键词明细
        # @type Keywords: Array

        attr_accessor :EvilType, :HitFlag, :FaceNames, :PolityLogoDetail, :PolityItems, :Score, :Keywords

        def initialize(eviltype=nil, hitflag=nil, facenames=nil, politylogodetail=nil, polityitems=nil, score=nil, keywords=nil)
          @EvilType = eviltype
          @HitFlag = hitflag
          @FaceNames = facenames
          @PolityLogoDetail = politylogodetail
          @PolityItems = polityitems
          @Score = score
          @Keywords = keywords
        end

        def deserialize(params)
          @EvilType = params['EvilType']
          @HitFlag = params['HitFlag']
          @FaceNames = params['FaceNames']
          unless params['PolityLogoDetail'].nil?
            @PolityLogoDetail = []
            params['PolityLogoDetail'].each do |i|
              logo_tmp = Logo.new
              logo_tmp.deserialize(i)
              @PolityLogoDetail << logo_tmp
            end
          end
          @PolityItems = params['PolityItems']
          @Score = params['Score']
          @Keywords = params['Keywords']
        end
      end

      # 图片涉黄详情
      class ImagePornDetect < TencentCloud::Common::AbstractModel
        # @param EvilType: 恶意类型
        # 100：正常
        # 20002：色情
        # @type EvilType: Integer
        # @param HitFlag: 处置判定 0：正常 1：可疑
        # @type HitFlag: Integer
        # @param Keywords: 关键词明细
        # @type Keywords: Array
        # @param Labels: 色情标签：色情特征中文描述
        # @type Labels: Array
        # @param Score: 色情分：分值范围 0-100，分数越高色情倾向越明显
        # @type Score: Integer

        attr_accessor :EvilType, :HitFlag, :Keywords, :Labels, :Score

        def initialize(eviltype=nil, hitflag=nil, keywords=nil, labels=nil, score=nil)
          @EvilType = eviltype
          @HitFlag = hitflag
          @Keywords = keywords
          @Labels = labels
          @Score = score
        end

        def deserialize(params)
          @EvilType = params['EvilType']
          @HitFlag = params['HitFlag']
          @Keywords = params['Keywords']
          @Labels = params['Labels']
          @Score = params['Score']
        end
      end

      # 图片暴恐详情
      class ImageTerrorDetect < TencentCloud::Common::AbstractModel
        # @param Keywords: 关键词明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keywords: Array
        # @param EvilType: 恶意类型
        # 100：正常
        # 24001：暴恐
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EvilType: Integer
        # @param Labels: 暴恐标签：返回暴恐特征中文描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param Score: 暴恐分：分值范围0--100，分数越高暴恐倾向越明显
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param HitFlag: 处置判定 0：正常 1：可疑
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HitFlag: Integer

        attr_accessor :Keywords, :EvilType, :Labels, :Score, :HitFlag

        def initialize(keywords=nil, eviltype=nil, labels=nil, score=nil, hitflag=nil)
          @Keywords = keywords
          @EvilType = eviltype
          @Labels = labels
          @Score = score
          @HitFlag = hitflag
        end

        def deserialize(params)
          @Keywords = params['Keywords']
          @EvilType = params['EvilType']
          @Labels = params['Labels']
          @Score = params['Score']
          @HitFlag = params['HitFlag']
        end
      end

      # 无效关键词
      class InvalidSample < TencentCloud::Common::AbstractModel
        # @param Content: 关键词
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param InvalidCode: 无效代码:1-标签不存在;2-词过长;3-词类型不匹配;4-备注超长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvalidCode: Integer
        # @param InvalidMessage: 无效描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvalidMessage: String

        attr_accessor :Content, :InvalidCode, :InvalidMessage

        def initialize(content=nil, invalidcode=nil, invalidmessage=nil)
          @Content = content
          @InvalidCode = invalidcode
          @InvalidMessage = invalidmessage
        end

        def deserialize(params)
          @Content = params['Content']
          @InvalidCode = params['InvalidCode']
          @InvalidMessage = params['InvalidMessage']
        end
      end

      # 关键词库信息
      class KeywordsLibInfo < TencentCloud::Common::AbstractModel
        # @param ID: 关键词库ID
        # @type ID: String
        # @param LibName: 关键词库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibName: String
        # @param Describe: 关键词库描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Describe: String
        # @param CreateTime: 关键词库创建时间
        # @type CreateTime: String
        # @param Suggestion: 审核建议(Review/Block)
        # @type Suggestion: String
        # @param MatchType: 匹配模式(ExactMatch/FuzzyMatch)
        # @type MatchType: String
        # @param BizTypes: 关联策略BizType列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizTypes: Array

        attr_accessor :ID, :LibName, :Describe, :CreateTime, :Suggestion, :MatchType, :BizTypes

        def initialize(id=nil, libname=nil, describe=nil, createtime=nil, suggestion=nil, matchtype=nil, biztypes=nil)
          @ID = id
          @LibName = libname
          @Describe = describe
          @CreateTime = createtime
          @Suggestion = suggestion
          @MatchType = matchtype
          @BizTypes = biztypes
        end

        def deserialize(params)
          @ID = params['ID']
          @LibName = params['LibName']
          @Describe = params['Describe']
          @CreateTime = params['CreateTime']
          @Suggestion = params['Suggestion']
          @MatchType = params['MatchType']
          @BizTypes = params['BizTypes']
        end
      end

      # Logo审核结果
      class Logo < TencentCloud::Common::AbstractModel
        # @param Confidence: logo图标置信度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Confidence: Float
        # @param RrectF: logo图标坐标信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RrectF: :class:`Tencentcloud::Cms.v20190321.models.RrectF`
        # @param Name: logo图标名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Confidence, :RrectF, :Name

        def initialize(confidence=nil, rrectf=nil, name=nil)
          @Confidence = confidence
          @RrectF = rrectf
          @Name = name
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          unless params['RrectF'].nil?
            @RrectF = RrectF.new
            @RrectF.deserialize(params['RrectF'])
          end
          @Name = params['Name']
        end
      end

      # Logo命中详情
      class LogoDetail < TencentCloud::Common::AbstractModel
        # @param AppLogoDetail: 命中的Applogo详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppLogoDetail: Array

        attr_accessor :AppLogoDetail

        def initialize(applogodetail=nil)
          @AppLogoDetail = applogodetail
        end

        def deserialize(params)
          unless params['AppLogoDetail'].nil?
            @AppLogoDetail = []
            params['AppLogoDetail'].each do |i|
              logo_tmp = Logo.new
              logo_tmp.deserialize(i)
              @AppLogoDetail << logo_tmp
            end
          end
        end
      end

      # OCR识别结果详情
      class OCRDetect < TencentCloud::Common::AbstractModel
        # @param Item: 识别到的详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Item: Array
        # @param TextInfo: 识别到的文本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextInfo: String

        attr_accessor :Item, :TextInfo

        def initialize(item=nil, textinfo=nil)
          @Item = item
          @TextInfo = textinfo
        end

        def deserialize(params)
          unless params['Item'].nil?
            @Item = []
            params['Item'].each do |i|
              ocritem_tmp = OCRItem.new
              ocritem_tmp.deserialize(i)
              @Item << ocritem_tmp
            end
          end
          @TextInfo = params['TextInfo']
        end
      end

      # OCR详情
      class OCRItem < TencentCloud::Common::AbstractModel
        # @param TextPosition: 检测到的文本坐标信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextPosition: :class:`Tencentcloud::Cms.v20190321.models.Coordinate`
        # @param EvilType: 文本命中恶意违规类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EvilType: Integer
        # @param TextContent: 检测到的文本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextContent: String
        # @param Rate: 文本涉嫌违规分值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rate: Integer
        # @param EvilLabel: 文本命中具体标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EvilLabel: String
        # @param Keywords: 文本命中违规的关键词
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keywords: Array

        attr_accessor :TextPosition, :EvilType, :TextContent, :Rate, :EvilLabel, :Keywords

        def initialize(textposition=nil, eviltype=nil, textcontent=nil, rate=nil, evillabel=nil, keywords=nil)
          @TextPosition = textposition
          @EvilType = eviltype
          @TextContent = textcontent
          @Rate = rate
          @EvilLabel = evillabel
          @Keywords = keywords
        end

        def deserialize(params)
          unless params['TextPosition'].nil?
            @TextPosition = Coordinate.new
            @TextPosition.deserialize(params['TextPosition'])
          end
          @EvilType = params['EvilType']
          @TextContent = params['TextContent']
          @Rate = params['Rate']
          @EvilLabel = params['EvilLabel']
          @Keywords = params['Keywords']
        end
      end

      # 手机模型识别检测
      class PhoneDetect < TencentCloud::Common::AbstractModel
        # @param EvilType: 恶意类型
        # 100：正常
        # 21000：综合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EvilType: Integer
        # @param Labels: 特征中文描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param Score: 分值范围 0-100，分数越高倾向越明显
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param HitFlag: 处置判定 0：正常 1：可疑
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HitFlag: Integer

        attr_accessor :EvilType, :Labels, :Score, :HitFlag

        def initialize(eviltype=nil, labels=nil, score=nil, hitflag=nil)
          @EvilType = eviltype
          @Labels = labels
          @Score = score
          @HitFlag = hitflag
        end

        def deserialize(params)
          @EvilType = params['EvilType']
          @Labels = params['Labels']
          @Score = params['Score']
          @HitFlag = params['HitFlag']
        end
      end

      # 账号风险检测结果
      class RiskDetails < TencentCloud::Common::AbstractModel
        # @param Keywords: 预留字段，暂时不使用
        # @type Keywords: Array
        # @param Lable: 预留字段，暂时不用
        # @type Lable: String
        # @param Label: 风险类别，RiskAccount，RiskIP, RiskIMEI
        # @type Label: String
        # @param Level: 风险等级，1:疑似，2：恶意
        # @type Level: Integer

        attr_accessor :Keywords, :Lable, :Label, :Level

        def initialize(keywords=nil, lable=nil, label=nil, level=nil)
          @Keywords = keywords
          @Lable = lable
          @Label = label
          @Level = level
        end

        def deserialize(params)
          @Keywords = params['Keywords']
          @Lable = params['Lable']
          @Label = params['Label']
          @Level = params['Level']
        end
      end

      # logo位置信息
      class RrectF < TencentCloud::Common::AbstractModel
        # @param Width: logo图标宽度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Width: Float
        # @param Cy: logo纵坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cy: Float
        # @param Cx: logo横坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cx: Float
        # @param Rotate: logo图标中心旋转度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rotate: Float
        # @param Height: logo图标高度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Height: Float

        attr_accessor :Width, :Cy, :Cx, :Rotate, :Height

        def initialize(width=nil, cy=nil, cx=nil, rotate=nil, height=nil)
          @Width = width
          @Cy = cy
          @Cx = cx
          @Rotate = rotate
          @Height = height
        end

        def deserialize(params)
          @Width = params['Width']
          @Cy = params['Cy']
          @Cx = params['Cx']
          @Rotate = params['Rotate']
          @Height = params['Height']
        end
      end

      # 相似度详情
      class Similar < TencentCloud::Common::AbstractModel
        # @param EvilType: 恶意类型
        # 100：正常
        # 20001：政治
        # 20002：色情
        # 20006：涉毒违法
        # 20007：谩骂
        # 24001：暴恐
        # @type EvilType: Integer
        # @param HitFlag: 处置判定 0：未匹配到 1：恶意 2：白样本
        # @type HitFlag: Integer
        # @param SeedUrl: 返回的种子url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SeedUrl: String

        attr_accessor :EvilType, :HitFlag, :SeedUrl

        def initialize(eviltype=nil, hitflag=nil, seedurl=nil)
          @EvilType = eviltype
          @HitFlag = hitflag
          @SeedUrl = seedurl
        end

        def deserialize(params)
          @EvilType = params['EvilType']
          @HitFlag = params['HitFlag']
          @SeedUrl = params['SeedUrl']
        end
      end

      # 文本识别结果详情
      class TextData < TencentCloud::Common::AbstractModel
        # @param EvilType: 恶意类型
        # 100：正常
        # 20001：政治
        # 20002：色情
        # 20006：涉毒违法
        # 20007：谩骂
        # 20105：广告引流
        # 24001：暴恐
        # @type EvilType: Integer
        # @param EvilFlag: 是否恶意 0：正常 1：可疑
        # @type EvilFlag: Integer
        # @param DataId: 和请求中的DataId一致，原样返回
        # @type DataId: String
        # @param Extra: 输出的其他信息，不同客户内容不同
        # @type Extra: String
        # @param BizType: 最终使用的BizType
        # @type BizType: Integer
        # @param Res: 消息类输出结果
        # @type Res: :class:`Tencentcloud::Cms.v20190321.models.TextOutputRes`
        # @param RiskDetails: 账号风险检测结果
        # @type RiskDetails: Array
        # @param ID: 消息类ID信息
        # @type ID: :class:`Tencentcloud::Cms.v20190321.models.TextOutputID`
        # @param Score: 命中的模型分值
        # @type Score: Integer
        # @param Common: 消息类公共相关参数
        # @type Common: :class:`Tencentcloud::Cms.v20190321.models.TextOutputComm`
        # @param Suggestion: 建议值,Block：打击,Review：待复审,Normal：正常
        # @type Suggestion: String
        # @param Keywords: 命中的关键词
        # @type Keywords: Array
        # @param DetailResult: 返回的详细结果
        # @type DetailResult: Array
        # @param CustomResult: 返回的自定义词库结果
        # @type CustomResult: Array
        # @param EvilLabel: 恶意标签，Normal：正常，Polity：涉政，Porn：色情，Illegal：违法，Abuse：谩骂，Terror：暴恐，Ad：广告，Custom：自定义关键词
        # @type EvilLabel: String

        attr_accessor :EvilType, :EvilFlag, :DataId, :Extra, :BizType, :Res, :RiskDetails, :ID, :Score, :Common, :Suggestion, :Keywords, :DetailResult, :CustomResult, :EvilLabel

        def initialize(eviltype=nil, evilflag=nil, dataid=nil, extra=nil, biztype=nil, res=nil, riskdetails=nil, id=nil, score=nil, common=nil, suggestion=nil, keywords=nil, detailresult=nil, customresult=nil, evillabel=nil)
          @EvilType = eviltype
          @EvilFlag = evilflag
          @DataId = dataid
          @Extra = extra
          @BizType = biztype
          @Res = res
          @RiskDetails = riskdetails
          @ID = id
          @Score = score
          @Common = common
          @Suggestion = suggestion
          @Keywords = keywords
          @DetailResult = detailresult
          @CustomResult = customresult
          @EvilLabel = evillabel
        end

        def deserialize(params)
          @EvilType = params['EvilType']
          @EvilFlag = params['EvilFlag']
          @DataId = params['DataId']
          @Extra = params['Extra']
          @BizType = params['BizType']
          unless params['Res'].nil?
            @Res = TextOutputRes.new
            @Res.deserialize(params['Res'])
          end
          unless params['RiskDetails'].nil?
            @RiskDetails = []
            params['RiskDetails'].each do |i|
              riskdetails_tmp = RiskDetails.new
              riskdetails_tmp.deserialize(i)
              @RiskDetails << riskdetails_tmp
            end
          end
          unless params['ID'].nil?
            @ID = TextOutputID.new
            @ID.deserialize(params['ID'])
          end
          @Score = params['Score']
          unless params['Common'].nil?
            @Common = TextOutputComm.new
            @Common.deserialize(params['Common'])
          end
          @Suggestion = params['Suggestion']
          @Keywords = params['Keywords']
          unless params['DetailResult'].nil?
            @DetailResult = []
            params['DetailResult'].each do |i|
              detailresult_tmp = DetailResult.new
              detailresult_tmp.deserialize(i)
              @DetailResult << detailresult_tmp
            end
          end
          unless params['CustomResult'].nil?
            @CustomResult = []
            params['CustomResult'].each do |i|
              customresult_tmp = CustomResult.new
              customresult_tmp.deserialize(i)
              @CustomResult << customresult_tmp
            end
          end
          @EvilLabel = params['EvilLabel']
        end
      end

      # TextModeration请求参数结构体
      class TextModerationRequest < TencentCloud::Common::AbstractModel
        # @param Content: 文本内容Base64编码。原文长度需小于15000字节，即5000个汉字以内。
        # @type Content: String
        # @param DataId: 数据ID，英文字母、下划线、-组成，不超过64个字符
        # @type DataId: String
        # @param BizType: 该字段用于标识业务场景。您可以在内容安全控制台创建对应的ID，配置不同的内容审核策略，通过接口调用，默认不填为0，后端使用默认策略
        # @type BizType: Integer
        # @param User: 用户相关信息
        # @type User: :class:`Tencentcloud::Cms.v20190321.models.User`
        # @param SdkAppId: 业务应用ID
        # @type SdkAppId: Integer
        # @param Device: 设备相关信息
        # @type Device: :class:`Tencentcloud::Cms.v20190321.models.Device`

        attr_accessor :Content, :DataId, :BizType, :User, :SdkAppId, :Device

        def initialize(content=nil, dataid=nil, biztype=nil, user=nil, sdkappid=nil, device=nil)
          @Content = content
          @DataId = dataid
          @BizType = biztype
          @User = user
          @SdkAppId = sdkappid
          @Device = device
        end

        def deserialize(params)
          @Content = params['Content']
          @DataId = params['DataId']
          @BizType = params['BizType']
          unless params['User'].nil?
            @User = User.new
            @User.deserialize(params['User'])
          end
          @SdkAppId = params['SdkAppId']
          unless params['Device'].nil?
            @Device = Device.new
            @Device.deserialize(params['Device'])
          end
        end
      end

      # TextModeration返回参数结构体
      class TextModerationResponse < TencentCloud::Common::AbstractModel
        # @param BusinessCode: 业务返回码
        # @type BusinessCode: Integer
        # @param Data: 识别结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Cms.v20190321.models.TextData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BusinessCode, :Data, :RequestId

        def initialize(businesscode=nil, data=nil, requestid=nil)
          @BusinessCode = businesscode
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @BusinessCode = params['BusinessCode']
          unless params['Data'].nil?
            @Data = TextData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 消息类输出公共参数
      class TextOutputComm < TencentCloud::Common::AbstractModel
        # @param BUCtrlID: 接口唯一ID，旁路调用接口返回有该字段，标识唯一接口
        # @type BUCtrlID: Integer
        # @param SendTime: 消息发送时间
        # @type SendTime: Integer
        # @param AppID: 接入业务的唯一ID
        # @type AppID: Integer
        # @param Uin: 请求字段里的Common.Uin
        # @type Uin: Integer

        attr_accessor :BUCtrlID, :SendTime, :AppID, :Uin

        def initialize(buctrlid=nil, sendtime=nil, appid=nil, uin=nil)
          @BUCtrlID = buctrlid
          @SendTime = sendtime
          @AppID = appid
          @Uin = uin
        end

        def deserialize(params)
          @BUCtrlID = params['BUCtrlID']
          @SendTime = params['SendTime']
          @AppID = params['AppID']
          @Uin = params['Uin']
        end
      end

      # 消息类输出ID参数
      class TextOutputID < TencentCloud::Common::AbstractModel
        # @param MsgID: 接入业务的唯一ID
        # @type MsgID: String
        # @param Uin: 用户账号uin，对应请求协议里的Content.User.Uin。旁路结果有回带，串联结果无该字段
        # @type Uin: String

        attr_accessor :MsgID, :Uin

        def initialize(msgid=nil, uin=nil)
          @MsgID = msgid
          @Uin = uin
        end

        def deserialize(params)
          @MsgID = params['MsgID']
          @Uin = params['Uin']
        end
      end

      # 消息类输出结果参数
      class TextOutputRes < TencentCloud::Common::AbstractModel
        # @param Operator: 操作人,信安处理人企业微信ID
        # @type Operator: String
        # @param ResultType: 恶意类型，广告（10001）， 政治（20001）， 色情（20002）， 社会事件（20004）， 暴力（20011）， 低俗（20012）， 违法犯罪（20006）， 欺诈（20008）， 版权（20013）， 谣言（20104）， 其他（21000）
        # @type ResultType: Integer
        # @param ResultCode: 恶意操作码，
        # 删除（1）， 通过（2）， 先审后发（100012）
        # @type ResultCode: Integer
        # @param ResultMsg: 操作结果备注说明
        # @type ResultMsg: String

        attr_accessor :Operator, :ResultType, :ResultCode, :ResultMsg

        def initialize(operator=nil, resulttype=nil, resultcode=nil, resultmsg=nil)
          @Operator = operator
          @ResultType = resulttype
          @ResultCode = resultcode
          @ResultMsg = resultmsg
        end

        def deserialize(params)
          @Operator = params['Operator']
          @ResultType = params['ResultType']
          @ResultCode = params['ResultCode']
          @ResultMsg = params['ResultMsg']
        end
      end

      # 用户相关信息
      class User < TencentCloud::Common::AbstractModel
        # @param Level: 用户等级，默认0 未知 1 低 2 中 3 高
        # @type Level: Integer
        # @param Gender: 性别 默认0 未知 1 男性 2 女性
        # @type Gender: Integer
        # @param Age: 年龄 默认0 未知
        # @type Age: Integer
        # @param UserId: 用户账号ID，如填写，会根据账号历史恶意情况，判定消息有害结果，特别是有利于可疑恶意情况下的辅助判断。账号可以填写微信uin、QQ号、微信openid、QQopenid、字符串等。该字段和账号类别确定唯一账号。
        # @type UserId: String
        # @param Phone: 手机号
        # @type Phone: String
        # @param AccountType: 账号类别，"1-微信uin 2-QQ号 3-微信群uin 4-qq群号 5-微信openid 6-QQopenid 7-其它string"
        # @type AccountType: Integer
        # @param Nickname: 用户昵称
        # @type Nickname: String

        attr_accessor :Level, :Gender, :Age, :UserId, :Phone, :AccountType, :Nickname

        def initialize(level=nil, gender=nil, age=nil, userid=nil, phone=nil, accounttype=nil, nickname=nil)
          @Level = level
          @Gender = gender
          @Age = age
          @UserId = userid
          @Phone = phone
          @AccountType = accounttype
          @Nickname = nickname
        end

        def deserialize(params)
          @Level = params['Level']
          @Gender = params['Gender']
          @Age = params['Age']
          @UserId = params['UserId']
          @Phone = params['Phone']
          @AccountType = params['AccountType']
          @Nickname = params['Nickname']
        end
      end

      # 添加关键词。
      class UserKeyword < TencentCloud::Common::AbstractModel
        # @param Content: 关键词内容：最多40个字符，并且符合词类型的规则
        # @type Content: String
        # @param Label: 关键词类型，取值范围为："Normal","Polity","Porn","Ad","Illegal","Abuse","Terror","Spam"
        # @type Label: String
        # @param Remark: 关键词备注：最多100个字符。
        # @type Remark: String
        # @param WordType: 词类型：Default,Pinyin,English,CompoundWord,ExclusionWord,AffixWord
        # @type WordType: String

        attr_accessor :Content, :Label, :Remark, :WordType

        def initialize(content=nil, label=nil, remark=nil, wordtype=nil)
          @Content = content
          @Label = label
          @Remark = remark
          @WordType = wordtype
        end

        def deserialize(params)
          @Content = params['Content']
          @Label = params['Label']
          @Remark = params['Remark']
          @WordType = params['WordType']
        end
      end

      # 关键词信息
      class UserKeywordInfo < TencentCloud::Common::AbstractModel
        # @param ID: 关键词条ID
        # @type ID: String
        # @param Content: 关键词内容
        # @type Content: String
        # @param Label: 关键词标签；取值范围为："Normal","Polity","Porn","Sexy","Ad","Illegal","Abuse","Terror","Spam","Moan"
        # @type Label: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param WordType: 词类型：Default,Pinyin,English,CompoundWord,ExclusionWord,AffixWord
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WordType: String

        attr_accessor :ID, :Content, :Label, :CreateTime, :Remark, :WordType

        def initialize(id=nil, content=nil, label=nil, createtime=nil, remark=nil, wordtype=nil)
          @ID = id
          @Content = content
          @Label = label
          @CreateTime = createtime
          @Remark = remark
          @WordType = wordtype
        end

        def deserialize(params)
          @ID = params['ID']
          @Content = params['Content']
          @Label = params['Label']
          @CreateTime = params['CreateTime']
          @Remark = params['Remark']
          @WordType = params['WordType']
        end
      end

    end
  end
end

