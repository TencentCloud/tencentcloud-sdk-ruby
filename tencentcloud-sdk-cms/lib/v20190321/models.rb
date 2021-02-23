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
        # @param CodePosition: 二维码在图片中的位置，由边界点的坐标表示
        # @type CodePosition: Array
        # @param CodeCharset: 二维码文本的编码格式
        # @type CodeCharset: String
        # @param CodeText: 二维码的文本内容
        # @type CodeText: String
        # @param CodeType: 二维码的类型：1:ONED_BARCODE，2:QRCOD，3:WXCODE，4:PDF417，5:DATAMATRIX
        # @type CodeType: Integer

        attr_accessor :CodePosition, :CodeCharset, :CodeText, :CodeType
        
        def initialize(codeposition=nil, codecharset=nil, codetext=nil, codetype=nil)
          @CodePosition = codeposition
          @CodeCharset = codecharset
          @CodeText = codetext
          @CodeType = codetype
        end

        def deserialize(params)
          unless params['CodePosition'].nil?
            @CodePosition = []
            params['CodePosition'].each do |i|
              @CodePosition << CodePosition.new.deserialize(i)
            end
          end
          @CodeCharset = params['CodeCharset']
          @CodeText = params['CodeText']
          @CodeType = params['CodeType']
        end
      end

      # 图片二维码详情
      class CodeDetect < TencentCloud::Common::AbstractModel
        # @param ModerationDetail: 从图片中检测到的二维码，可能为多个
        # @type ModerationDetail: Array
        # @param ModerationCode: 检测是否成功，0：成功，-1：出错
        # @type ModerationCode: Integer

        attr_accessor :ModerationDetail, :ModerationCode
        
        def initialize(moderationdetail=nil, moderationcode=nil)
          @ModerationDetail = moderationdetail
          @ModerationCode = moderationcode
        end

        def deserialize(params)
          unless params['ModerationDetail'].nil?
            @ModerationDetail = []
            params['ModerationDetail'].each do |i|
              @ModerationDetail << CodeDetail.new.deserialize(i)
            end
          end
          @ModerationCode = params['ModerationCode']
        end
      end

      # 二维码在图片中的位置，由边界点的坐标表示
      class CodePosition < TencentCloud::Common::AbstractModel
        # @param FloatX: 二维码边界点X轴坐标
        # @type FloatX: Float
        # @param FloatY: 二维码边界点Y轴坐标
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
        # @param Cx: 左上角横坐标
        # @type Cx: Integer
        # @param Cy: 左上角纵坐标
        # @type Cy: Integer
        # @param Height: 高度
        # @type Height: Integer
        # @param Width: 宽度
        # @type Width: Integer

        attr_accessor :Cx, :Cy, :Height, :Width
        
        def initialize(cx=nil, cy=nil, height=nil, width=nil)
          @Cx = cx
          @Cy = cy
          @Height = height
          @Width = width
        end

        def deserialize(params)
          @Cx = params['Cx']
          @Cy = params['Cy']
          @Height = params['Height']
          @Width = params['Width']
        end
      end

      # CreateFileSample请求参数结构体
      class CreateFileSampleRequest < TencentCloud::Common::AbstractModel
        # @param Contents: 文件类型结构数组
        # @type Contents: Array
        # @param EvilType: 恶意类型
        # 100：正常
        # 20001：政治
        # 20002：色情
        # 20006：涉毒违法
        # 20007：谩骂
        # 24001：暴恐
        # 20105：广告引流
        # @type EvilType: Integer
        # @param FileType: image：图片
        # @type FileType: String
        # @param Label: 样本类型
        # 1：黑库
        # 2：白库
        # @type Label: Integer

        attr_accessor :Contents, :EvilType, :FileType, :Label
        
        def initialize(contents=nil, eviltype=nil, filetype=nil, label=nil)
          @Contents = contents
          @EvilType = eviltype
          @FileType = filetype
          @Label = label
        end

        def deserialize(params)
          unless params['Contents'].nil?
            @Contents = []
            params['Contents'].each do |i|
              @Contents << FileSample.new.deserialize(i)
            end
          end
          @EvilType = params['EvilType']
          @FileType = params['FileType']
          @Label = params['Label']
        end
      end

      # CreateFileSample返回参数结构体
      class CreateFileSampleResponse < TencentCloud::Common::AbstractModel
        # @param Progress: 任务状态
        # 1：已完成
        # 2：处理中
        # @type Progress: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Progress, :RequestId
        
        def initialize(progress=nil, requestid=nil)
          @Progress = progress
          @RequestId = requestid
        end

        def deserialize(params)
          @Progress = params['Progress']
          @RequestId = params['RequestId']
        end
      end

      # CreateTextSample请求参数结构体
      class CreateTextSampleRequest < TencentCloud::Common::AbstractModel
        # @param Contents: 关键词数组
        # @type Contents: Array
        # @param EvilType: 恶意类型
        # 100：正常
        # 20001：政治
        # 20002：色情
        # 20006：涉毒违法
        # 20007：谩骂
        # 24001：暴恐
        # 20105：广告引流
        # @type EvilType: Integer
        # @param Label: 样本类型
        # 1：黑库
        # 2：白库
        # @type Label: Integer
        # @param Test: 测试修改参数
        # @type Test: String

        attr_accessor :Contents, :EvilType, :Label, :Test
        
        def initialize(contents=nil, eviltype=nil, label=nil, test=nil)
          @Contents = contents
          @EvilType = eviltype
          @Label = label
          @Test = test
        end

        def deserialize(params)
          @Contents = params['Contents']
          @EvilType = params['EvilType']
          @Label = params['Label']
          @Test = params['Test']
        end
      end

      # CreateTextSample返回参数结构体
      class CreateTextSampleResponse < TencentCloud::Common::AbstractModel
        # @param ErrMsg: 操作样本失败时返回的错误信息示例：  "样本1":错误码，"样本2":错误码
        # @type ErrMsg: String
        # @param Progress: 任务状态
        # 1：已完成
        # 2：处理中
        # @type Progress: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMsg, :Progress, :RequestId
        
        def initialize(errmsg=nil, progress=nil, requestid=nil)
          @ErrMsg = errmsg
          @Progress = progress
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMsg = params['ErrMsg']
          @Progress = params['Progress']
          @RequestId = params['RequestId']
        end
      end

      # 文本返回的自定义词库结果
      class CustomResult < TencentCloud::Common::AbstractModel
        # @param Keywords: 命中的自定义关键词
        # @type Keywords: Array
        # @param LibId: 自定义库id
        # @type LibId: String
        # @param LibName: 自定义词库名称
        # @type LibName: String
        # @param Type: 命中的自定义关键词的类型
        # @type Type: String

        attr_accessor :Keywords, :LibId, :LibName, :Type
        
        def initialize(keywords=nil, libid=nil, libname=nil, type=nil)
          @Keywords = keywords
          @LibId = libid
          @LibName = libname
          @Type = type
        end

        def deserialize(params)
          @Keywords = params['Keywords']
          @LibId = params['LibId']
          @LibName = params['LibName']
          @Type = params['Type']
        end
      end

      # DeleteFileSample请求参数结构体
      class DeleteFileSampleRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 唯一标识数组
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteFileSample返回参数结构体
      class DeleteFileSampleResponse < TencentCloud::Common::AbstractModel
        # @param Progress: 任务状态
        # 1：已完成
        # 2：处理中
        # @type Progress: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Progress, :RequestId
        
        def initialize(progress=nil, requestid=nil)
          @Progress = progress
          @RequestId = requestid
        end

        def deserialize(params)
          @Progress = params['Progress']
          @RequestId = params['RequestId']
        end
      end

      # DeleteTextSample请求参数结构体
      class DeleteTextSampleRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 唯一标识数组，目前暂时只支持单个删除
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteTextSample返回参数结构体
      class DeleteTextSampleResponse < TencentCloud::Common::AbstractModel
        # @param Progress: 任务状态
        # 1：已完成
        # 2：处理中
        # @type Progress: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Progress, :RequestId
        
        def initialize(progress=nil, requestid=nil)
          @Progress = progress
          @RequestId = requestid
        end

        def deserialize(params)
          @Progress = params['Progress']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileSample请求参数结构体
      class DescribeFileSampleRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 支持通过标签值进行筛选
        # @type Filters: Array
        # @param Limit: 数量限制，默认为20，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param OrderDirection: 升序（asc）还是降序（desc），默认：desc
        # @type OrderDirection: String
        # @param OrderField: 按某个字段排序，目前仅支持CreatedAt排序
        # @type OrderField: String

        attr_accessor :Filters, :Limit, :Offset, :OrderDirection, :OrderField
        
        def initialize(filters=nil, limit=nil, offset=nil, orderdirection=nil, orderfield=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @OrderDirection = orderdirection
          @OrderField = orderfield
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderDirection = params['OrderDirection']
          @OrderField = params['OrderField']
        end
      end

      # DescribeFileSample返回参数结构体
      class DescribeFileSampleResponse < TencentCloud::Common::AbstractModel
        # @param FileSampleSet: 符合要求的样本的信息
        # @type FileSampleSet: Array
        # @param TotalCount: 符合要求的样本的数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileSampleSet, :TotalCount, :RequestId
        
        def initialize(filesampleset=nil, totalcount=nil, requestid=nil)
          @FileSampleSet = filesampleset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FileSampleSet'].nil?
            @FileSampleSet = []
            params['FileSampleSet'].each do |i|
              @FileSampleSet << FileSampleInfo.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTextSample请求参数结构体
      class DescribeTextSampleRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 支持通过标签值进行筛选
        # @type Filters: Array
        # @param Limit: 数量限制，默认为20，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param OrderDirection: 升序（asc）还是降序（desc），默认：desc
        # @type OrderDirection: String
        # @param OrderField: 按某个字段排序，目前仅支持CreatedAt排序
        # @type OrderField: String

        attr_accessor :Filters, :Limit, :Offset, :OrderDirection, :OrderField
        
        def initialize(filters=nil, limit=nil, offset=nil, orderdirection=nil, orderfield=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @OrderDirection = orderdirection
          @OrderField = orderfield
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderDirection = params['OrderDirection']
          @OrderField = params['OrderField']
        end
      end

      # DescribeTextSample返回参数结构体
      class DescribeTextSampleResponse < TencentCloud::Common::AbstractModel
        # @param TextSampleSet: 符合要求的样本的信息
        # @type TextSampleSet: Array
        # @param TotalCount: 符合要求的样本的数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TextSampleSet, :TotalCount, :RequestId
        
        def initialize(textsampleset=nil, totalcount=nil, requestid=nil)
          @TextSampleSet = textsampleset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TextSampleSet'].nil?
            @TextSampleSet = []
            params['TextSampleSet'].each do |i|
              @TextSampleSet << TextSample.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 文本返回的详细结果
      class DetailResult < TencentCloud::Common::AbstractModel
        # @param EvilLabel: 恶意标签，Normal：正常，Polity：涉政，Porn：色情，Illegal：违法，Abuse：谩骂，Terror：暴恐，Ad：广告，Custom：自定义关键词
        # @type EvilLabel: String
        # @param EvilType: 恶意类型
        # 100：正常
        # 20001：政治
        # 20002：色情
        # 20006：涉毒违法
        # 20007：谩骂
        # 20105：广告引流
        # 24001：暴恐
        # @type EvilType: Integer
        # @param Keywords: 该标签下命中的关键词
        # @type Keywords: Array
        # @param Score: 该标签模型命中的分值
        # @type Score: Integer

        attr_accessor :EvilLabel, :EvilType, :Keywords, :Score
        
        def initialize(evillabel=nil, eviltype=nil, keywords=nil, score=nil)
          @EvilLabel = evillabel
          @EvilType = eviltype
          @Keywords = keywords
          @Score = score
        end

        def deserialize(params)
          @EvilLabel = params['EvilLabel']
          @EvilType = params['EvilType']
          @Keywords = params['Keywords']
          @Score = params['Score']
        end
      end

      # 设备信息
      class Device < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备指纹ID
        # @type DeviceId: String
        # @param IDFA: IOS设备，Identifier For Advertising（广告标识符）
        # @type IDFA: String
        # @param IDFV: IOS设备，IDFV - Identifier For Vendor（应用开发商标识符）
        # @type IDFV: String
        # @param IMEI: 设备序列号
        # @type IMEI: String
        # @param IP: 用户IP
        # @type IP: String
        # @param Mac: Mac地址
        # @type Mac: String
        # @param TokenId: 设备指纹Token
        # @type TokenId: String

        attr_accessor :DeviceId, :IDFA, :IDFV, :IMEI, :IP, :Mac, :TokenId
        
        def initialize(deviceid=nil, idfa=nil, idfv=nil, imei=nil, ip=nil, mac=nil, tokenid=nil)
          @DeviceId = deviceid
          @IDFA = idfa
          @IDFV = idfv
          @IMEI = imei
          @IP = ip
          @Mac = mac
          @TokenId = tokenid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @IDFA = params['IDFA']
          @IDFV = params['IDFV']
          @IMEI = params['IMEI']
          @IP = params['IP']
          @Mac = params['Mac']
          @TokenId = params['TokenId']
        end
      end

      # 文件类型样本
      class FileSample < TencentCloud::Common::AbstractModel
        # @param FileMd5: 文件md5
        # @type FileMd5: String
        # @param FileName: 文件名称
        # @type FileName: String
        # @param FileUrl: 文件url
        # @type FileUrl: String
        # @param CompressFileUrl: 文件压缩后云url
        # @type CompressFileUrl: String

        attr_accessor :FileMd5, :FileName, :FileUrl, :CompressFileUrl
        
        def initialize(filemd5=nil, filename=nil, fileurl=nil, compressfileurl=nil)
          @FileMd5 = filemd5
          @FileName = filename
          @FileUrl = fileurl
          @CompressFileUrl = compressfileurl
        end

        def deserialize(params)
          @FileMd5 = params['FileMd5']
          @FileName = params['FileName']
          @FileUrl = params['FileUrl']
          @CompressFileUrl = params['CompressFileUrl']
        end
      end

      # 文件样本返回信息
      class FileSampleInfo < TencentCloud::Common::AbstractModel
        # @param Code: 处理错误码
        # @type Code: Integer
        # @param CreatedAt: 创建时间戳
        # @type CreatedAt: Integer
        # @param EvilType: 恶意类型
        # 100：正常
        # 20001：政治
        # 20002：色情
        # 20006：涉毒违法
        # 20007：谩骂
        # 24001：暴恐
        # @type EvilType: Integer
        # @param FileMd5: 文件的md5
        # @type FileMd5: String
        # @param FileName: 文件名称
        # @type FileName: String
        # @param FileType: 文件类型
        # @type FileType: String
        # @param Id: 唯一标识
        # @type Id: String
        # @param Label: 样本类型
        # 1：黑库
        # 2：白库
        # @type Label: Integer
        # @param Status: 任务状态
        # 1：添加完成
        # 2：添加处理中
        # 3：下载中
        # 4：下载完成
        # 5：上传完成
        # 6：步骤完成
        # @type Status: Integer
        # @param CompressFileUrl: 文件压缩后云url
        # @type CompressFileUrl: String
        # @param FileUrl: 文件的url
        # @type FileUrl: String

        attr_accessor :Code, :CreatedAt, :EvilType, :FileMd5, :FileName, :FileType, :Id, :Label, :Status, :CompressFileUrl, :FileUrl
        
        def initialize(code=nil, createdat=nil, eviltype=nil, filemd5=nil, filename=nil, filetype=nil, id=nil, label=nil, status=nil, compressfileurl=nil, fileurl=nil)
          @Code = code
          @CreatedAt = createdat
          @EvilType = eviltype
          @FileMd5 = filemd5
          @FileName = filename
          @FileType = filetype
          @Id = id
          @Label = label
          @Status = status
          @CompressFileUrl = compressfileurl
          @FileUrl = fileurl
        end

        def deserialize(params)
          @Code = params['Code']
          @CreatedAt = params['CreatedAt']
          @EvilType = params['EvilType']
          @FileMd5 = params['FileMd5']
          @FileName = params['FileName']
          @FileType = params['FileType']
          @Id = params['Id']
          @Label = params['Label']
          @Status = params['Status']
          @CompressFileUrl = params['CompressFileUrl']
          @FileUrl = params['FileUrl']
        end
      end

      # 筛选数据结构
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段
        # @type Name: String
        # @param Value: 需要过滤字段的值
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

      # 图片识别结果详情
      class ImageData < TencentCloud::Common::AbstractModel
        # @param EvilFlag: 是否恶意 0：正常 1：可疑
        # @type EvilFlag: Integer
        # @param EvilType: 恶意类型
        # 100：正常
        # 20001：政治
        # 20002：色情
        # 20006：涉毒违法
        # 20007：谩骂
        # 20103：性感
        # 24001：暴恐
        # @type EvilType: Integer
        # @param CodeDetect: 图片二维码详情
        # @type CodeDetect: :class:`Tencentcloud::Cms.v20190321.models.CodeDetect`
        # @param HotDetect: 图片性感详情
        # @type HotDetect: :class:`Tencentcloud::Cms.v20190321.models.ImageHotDetect`
        # @param IllegalDetect: 图片违法详情
        # @type IllegalDetect: :class:`Tencentcloud::Cms.v20190321.models.ImageIllegalDetect`
        # @param LogoDetect: logo详情
        # @type LogoDetect: :class:`Tencentcloud::Cms.v20190321.models.LogoDetail`
        # @param OCRDetect: 图片OCR详情
        # @type OCRDetect: :class:`Tencentcloud::Cms.v20190321.models.OCRDetect`
        # @param PhoneDetect: 手机检测详情
        # @type PhoneDetect: :class:`Tencentcloud::Cms.v20190321.models.PhoneDetect`
        # @param PolityDetect: 图片涉政详情
        # @type PolityDetect: :class:`Tencentcloud::Cms.v20190321.models.ImagePolityDetect`
        # @param PornDetect: 图片涉黄详情
        # @type PornDetect: :class:`Tencentcloud::Cms.v20190321.models.ImagePornDetect`
        # @param Similar: 图片相似度详情
        # @type Similar: :class:`Tencentcloud::Cms.v20190321.models.Similar`
        # @param TerrorDetect: 图片暴恐详情
        # @type TerrorDetect: :class:`Tencentcloud::Cms.v20190321.models.ImageTerrorDetect`

        attr_accessor :EvilFlag, :EvilType, :CodeDetect, :HotDetect, :IllegalDetect, :LogoDetect, :OCRDetect, :PhoneDetect, :PolityDetect, :PornDetect, :Similar, :TerrorDetect
        
        def initialize(evilflag=nil, eviltype=nil, codedetect=nil, hotdetect=nil, illegaldetect=nil, logodetect=nil, ocrdetect=nil, phonedetect=nil, politydetect=nil, porndetect=nil, similar=nil, terrordetect=nil)
          @EvilFlag = evilflag
          @EvilType = eviltype
          @CodeDetect = codedetect
          @HotDetect = hotdetect
          @IllegalDetect = illegaldetect
          @LogoDetect = logodetect
          @OCRDetect = ocrdetect
          @PhoneDetect = phonedetect
          @PolityDetect = politydetect
          @PornDetect = porndetect
          @Similar = similar
          @TerrorDetect = terrordetect
        end

        def deserialize(params)
          @EvilFlag = params['EvilFlag']
          @EvilType = params['EvilType']
          unless params['CodeDetect'].nil?
            @CodeDetect = CodeDetect.new.deserialize(params['CodeDetect'])
          end
          unless params['HotDetect'].nil?
            @HotDetect = ImageHotDetect.new.deserialize(params['HotDetect'])
          end
          unless params['IllegalDetect'].nil?
            @IllegalDetect = ImageIllegalDetect.new.deserialize(params['IllegalDetect'])
          end
          unless params['LogoDetect'].nil?
            @LogoDetect = LogoDetail.new.deserialize(params['LogoDetect'])
          end
          unless params['OCRDetect'].nil?
            @OCRDetect = OCRDetect.new.deserialize(params['OCRDetect'])
          end
          unless params['PhoneDetect'].nil?
            @PhoneDetect = PhoneDetect.new.deserialize(params['PhoneDetect'])
          end
          unless params['PolityDetect'].nil?
            @PolityDetect = ImagePolityDetect.new.deserialize(params['PolityDetect'])
          end
          unless params['PornDetect'].nil?
            @PornDetect = ImagePornDetect.new.deserialize(params['PornDetect'])
          end
          unless params['Similar'].nil?
            @Similar = Similar.new.deserialize(params['Similar'])
          end
          unless params['TerrorDetect'].nil?
            @TerrorDetect = ImageTerrorDetect.new.deserialize(params['TerrorDetect'])
          end
        end
      end

      # 图片性感详情
      class ImageHotDetect < TencentCloud::Common::AbstractModel
        # @param EvilType: 恶意类型
        # 100：正常
        # 20103：性感
        # @type EvilType: Integer
        # @param HitFlag: 处置判定 0：正常 1：可疑
        # @type HitFlag: Integer
        # @param Keywords: 关键词明细
        # @type Keywords: Array
        # @param Labels: 性感标签：性感特征中文描述
        # @type Labels: Array
        # @param Score: 性感分：分值范围 0-100，分数越高性感倾向越明显
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
        # @param FileContent: 文件内容 Base64,与FileUrl必须二填一
        # @type FileContent: String
        # @param FileMD5: 文件MD5值
        # @type FileMD5: String
        # @param FileUrl: 文件地址
        # @type FileUrl: String

        attr_accessor :FileContent, :FileMD5, :FileUrl
        
        def initialize(filecontent=nil, filemd5=nil, fileurl=nil)
          @FileContent = filecontent
          @FileMD5 = filemd5
          @FileUrl = fileurl
        end

        def deserialize(params)
          @FileContent = params['FileContent']
          @FileMD5 = params['FileMD5']
          @FileUrl = params['FileUrl']
        end
      end

      # ImageModeration返回参数结构体
      class ImageModerationResponse < TencentCloud::Common::AbstractModel
        # @param Data: 识别结果
        # @type Data: :class:`Tencentcloud::Cms.v20190321.models.ImageData`
        # @param BusinessCode: 业务返回码
        # @type BusinessCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :BusinessCode, :RequestId
        
        def initialize(data=nil, businesscode=nil, requestid=nil)
          @Data = data
          @BusinessCode = businesscode
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ImageData.new.deserialize(params['Data'])
          end
          @BusinessCode = params['BusinessCode']
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
        # @param PolityLogoDetail: 命中的logo标签信息
        # @type PolityLogoDetail: Array
        # @param FaceNames: 命中的人脸名称
        # @type FaceNames: Array
        # @param Keywords: 关键词明细
        # @type Keywords: Array
        # @param PolityItems: 命中的政治物品名称
        # @type PolityItems: Array
        # @param Score: 政治（人脸）分：分值范围 0-100，分数越高可疑程度越高
        # @type Score: Integer

        attr_accessor :EvilType, :HitFlag, :PolityLogoDetail, :FaceNames, :Keywords, :PolityItems, :Score
        
        def initialize(eviltype=nil, hitflag=nil, politylogodetail=nil, facenames=nil, keywords=nil, polityitems=nil, score=nil)
          @EvilType = eviltype
          @HitFlag = hitflag
          @PolityLogoDetail = politylogodetail
          @FaceNames = facenames
          @Keywords = keywords
          @PolityItems = polityitems
          @Score = score
        end

        def deserialize(params)
          @EvilType = params['EvilType']
          @HitFlag = params['HitFlag']
          unless params['PolityLogoDetail'].nil?
            @PolityLogoDetail = []
            params['PolityLogoDetail'].each do |i|
              @PolityLogoDetail << Logo.new.deserialize(i)
            end
          end
          @FaceNames = params['FaceNames']
          @Keywords = params['Keywords']
          @PolityItems = params['PolityItems']
          @Score = params['Score']
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
        # @param EvilType: 恶意类型
        # 100：正常
        # 24001：暴恐
        # @type EvilType: Integer
        # @param HitFlag: 处置判定 0：正常 1：可疑
        # @type HitFlag: Integer
        # @param Keywords: 关键词明细
        # @type Keywords: Array
        # @param Labels: 暴恐标签：返回暴恐特征中文描述
        # @type Labels: Array
        # @param Score: 暴恐分：分值范围0--100，分数越高暴恐倾向越明显
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

      # Logo
      class Logo < TencentCloud::Common::AbstractModel
        # @param RrectF: logo图标坐标信息
        # @type RrectF: :class:`Tencentcloud::Cms.v20190321.models.RrectF`
        # @param Confidence: logo图标置信度
        # @type Confidence: Float
        # @param Name: logo图标名称
        # @type Name: String

        attr_accessor :RrectF, :Confidence, :Name
        
        def initialize(rrectf=nil, confidence=nil, name=nil)
          @RrectF = rrectf
          @Confidence = confidence
          @Name = name
        end

        def deserialize(params)
          unless params['RrectF'].nil?
            @RrectF = RrectF.new.deserialize(params['RrectF'])
          end
          @Confidence = params['Confidence']
          @Name = params['Name']
        end
      end

      # LogoDetail
      class LogoDetail < TencentCloud::Common::AbstractModel
        # @param AppLogoDetail: 命中的Applogo详情
        # @type AppLogoDetail: Array

        attr_accessor :AppLogoDetail
        
        def initialize(applogodetail=nil)
          @AppLogoDetail = applogodetail
        end

        def deserialize(params)
          unless params['AppLogoDetail'].nil?
            @AppLogoDetail = []
            params['AppLogoDetail'].each do |i|
              @AppLogoDetail << Logo.new.deserialize(i)
            end
          end
        end
      end

      # 人审审核数据相关信息
      class ManualReviewContent < TencentCloud::Common::AbstractModel
        # @param BatchId: 审核批次号
        # @type BatchId: String
        # @param Content: 审核内容
        # @type Content: String
        # @param ContentId: 消息Id
        # @type ContentId: String
        # @param ContentType: 审核内容类型 1 图片 2 视频 3 文本 4 音频
        # @type ContentType: Integer
        # @param UserInfo: 用户信息
        # @type UserInfo: :class:`Tencentcloud::Cms.v20190321.models.User`
        # @param AutoDetailCode: 机器审核类型，与腾讯机器审核定义一致
        # 100 正常
        # 20001 政治
        # 20002 色情
        # 20006 违法
        # 20007 谩骂
        # 24001 暴恐
        # 20105 广告
        # 20103 性感
        # @type AutoDetailCode: Integer
        # @param AutoResult: 机器审核结果 0 放过 1 拦截
        # @type AutoResult: Integer
        # @param CallBackInfo: 回调信息标识，回传数据时原样返回
        # @type CallBackInfo: String
        # @param CreateTime: 创建时间 格式“2020-01-01 00:00:12”
        # @type CreateTime: String
        # @param Priority: 审核优先级，可选值 [1,2,3,4]，其中 1 最高，4 最低
        # @type Priority: Integer
        # @param Title: 标题
        # @type Title: String

        attr_accessor :BatchId, :Content, :ContentId, :ContentType, :UserInfo, :AutoDetailCode, :AutoResult, :CallBackInfo, :CreateTime, :Priority, :Title
        
        def initialize(batchid=nil, content=nil, contentid=nil, contenttype=nil, userinfo=nil, autodetailcode=nil, autoresult=nil, callbackinfo=nil, createtime=nil, priority=nil, title=nil)
          @BatchId = batchid
          @Content = content
          @ContentId = contentid
          @ContentType = contenttype
          @UserInfo = userinfo
          @AutoDetailCode = autodetailcode
          @AutoResult = autoresult
          @CallBackInfo = callbackinfo
          @CreateTime = createtime
          @Priority = priority
          @Title = title
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @Content = params['Content']
          @ContentId = params['ContentId']
          @ContentType = params['ContentType']
          unless params['UserInfo'].nil?
            @UserInfo = User.new.deserialize(params['UserInfo'])
          end
          @AutoDetailCode = params['AutoDetailCode']
          @AutoResult = params['AutoResult']
          @CallBackInfo = params['CallBackInfo']
          @CreateTime = params['CreateTime']
          @Priority = params['Priority']
          @Title = params['Title']
        end
      end

      # 人工审核接口返回结果，由ContentId和BatchId组成
      class ManualReviewData < TencentCloud::Common::AbstractModel
        # @param BatchId: 人审内容批次号
        # @type BatchId: String
        # @param ContentId: 人审内容ID
        # @type ContentId: String

        attr_accessor :BatchId, :ContentId
        
        def initialize(batchid=nil, contentid=nil)
          @BatchId = batchid
          @ContentId = contentid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @ContentId = params['ContentId']
        end
      end

      # ManualReview请求参数结构体
      class ManualReviewRequest < TencentCloud::Common::AbstractModel
        # @param ReviewContent: 人工审核信息
        # @type ReviewContent: :class:`Tencentcloud::Cms.v20190321.models.ManualReviewContent`

        attr_accessor :ReviewContent
        
        def initialize(reviewcontent=nil)
          @ReviewContent = reviewcontent
        end

        def deserialize(params)
          unless params['ReviewContent'].nil?
            @ReviewContent = ManualReviewContent.new.deserialize(params['ReviewContent'])
          end
        end
      end

      # ManualReview返回参数结构体
      class ManualReviewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 人审接口同步响应结果
        # @type Data: :class:`Tencentcloud::Cms.v20190321.models.ManualReviewData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ManualReviewData.new.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # OCR识别结果详情
      class OCRDetect < TencentCloud::Common::AbstractModel
        # @param Item: 识别到的详细信息
        # @type Item: Array
        # @param TextInfo: 识别到的文本信息
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
              @Item << OCRItem.new.deserialize(i)
            end
          end
          @TextInfo = params['TextInfo']
        end
      end

      # OCR详情
      class OCRItem < TencentCloud::Common::AbstractModel
        # @param TextPosition: 检测到的文本坐标信息
        # @type TextPosition: :class:`Tencentcloud::Cms.v20190321.models.Coordinate`
        # @param EvilLabel: 文本命中具体标签
        # @type EvilLabel: String
        # @param EvilType: 文本命中恶意违规类型
        # @type EvilType: Integer
        # @param Keywords: 文本命中违规的关键词
        # @type Keywords: Array
        # @param Rate: 文本涉嫌违规分值
        # @type Rate: Integer
        # @param TextContent: 检测到的文本信息
        # @type TextContent: String

        attr_accessor :TextPosition, :EvilLabel, :EvilType, :Keywords, :Rate, :TextContent
        
        def initialize(textposition=nil, evillabel=nil, eviltype=nil, keywords=nil, rate=nil, textcontent=nil)
          @TextPosition = textposition
          @EvilLabel = evillabel
          @EvilType = eviltype
          @Keywords = keywords
          @Rate = rate
          @TextContent = textcontent
        end

        def deserialize(params)
          unless params['TextPosition'].nil?
            @TextPosition = Coordinate.new.deserialize(params['TextPosition'])
          end
          @EvilLabel = params['EvilLabel']
          @EvilType = params['EvilType']
          @Keywords = params['Keywords']
          @Rate = params['Rate']
          @TextContent = params['TextContent']
        end
      end

      # 手机模型识别检测
      class PhoneDetect < TencentCloud::Common::AbstractModel
        # @param EvilType: 恶意类型
        # 100：正常
        # 21000：综合
        # @type EvilType: Integer
        # @param HitFlag: 处置判定 0：正常 1：可疑
        # @type HitFlag: Integer
        # @param Labels: 特征中文描述
        # @type Labels: Array
        # @param Score: 分值范围 0-100，分数越高倾向越明显
        # @type Score: Integer

        attr_accessor :EvilType, :HitFlag, :Labels, :Score
        
        def initialize(eviltype=nil, hitflag=nil, labels=nil, score=nil)
          @EvilType = eviltype
          @HitFlag = hitflag
          @Labels = labels
          @Score = score
        end

        def deserialize(params)
          @EvilType = params['EvilType']
          @HitFlag = params['HitFlag']
          @Labels = params['Labels']
          @Score = params['Score']
        end
      end

      # 账号风险检测结果
      class RiskDetails < TencentCloud::Common::AbstractModel
        # @param Keywords: 预留字段，暂时不使用
        # @type Keywords: Array
        # @param Label: 风险类别，RiskAccount，RiskIP, RiskIMEI
        # @type Label: String
        # @param Lable: 预留字段，暂时不用
        # @type Lable: String
        # @param Level: 风险等级，1:疑似，2：恶意
        # @type Level: Integer

        attr_accessor :Keywords, :Label, :Lable, :Level
        
        def initialize(keywords=nil, label=nil, lable=nil, level=nil)
          @Keywords = keywords
          @Label = label
          @Lable = lable
          @Level = level
        end

        def deserialize(params)
          @Keywords = params['Keywords']
          @Label = params['Label']
          @Lable = params['Lable']
          @Level = params['Level']
        end
      end

      # logo位置信息
      class RrectF < TencentCloud::Common::AbstractModel
        # @param Cx: logo横坐标
        # @type Cx: Float
        # @param Cy: logo纵坐标
        # @type Cy: Float
        # @param Height: logo图标高度
        # @type Height: Float
        # @param Rotate: logo图标中心旋转度
        # @type Rotate: Float
        # @param Width: logo图标宽度
        # @type Width: Float

        attr_accessor :Cx, :Cy, :Height, :Rotate, :Width
        
        def initialize(cx=nil, cy=nil, height=nil, rotate=nil, width=nil)
          @Cx = cx
          @Cy = cy
          @Height = height
          @Rotate = rotate
          @Width = width
        end

        def deserialize(params)
          @Cx = params['Cx']
          @Cy = params['Cy']
          @Height = params['Height']
          @Rotate = params['Rotate']
          @Width = params['Width']
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
        # @param EvilFlag: 是否恶意 0：正常 1：可疑
        # @type EvilFlag: Integer
        # @param EvilType: 恶意类型
        # 100：正常
        # 20001：政治
        # 20002：色情
        # 20006：涉毒违法
        # 20007：谩骂
        # 20105：广告引流
        # 24001：暴恐
        # @type EvilType: Integer
        # @param Common: 消息类公共相关参数
        # @type Common: :class:`Tencentcloud::Cms.v20190321.models.TextOutputComm`
        # @param CustomResult: 返回的自定义词库结果
        # @type CustomResult: Array
        # @param DetailResult: 返回的详细结果
        # @type DetailResult: Array
        # @param ID: 消息类ID信息
        # @type ID: :class:`Tencentcloud::Cms.v20190321.models.TextOutputID`
        # @param Res: 消息类输出结果
        # @type Res: :class:`Tencentcloud::Cms.v20190321.models.TextOutputRes`
        # @param RiskDetails: 账号风险检测结果
        # @type RiskDetails: Array
        # @param BizType: 最终使用的BizType
        # @type BizType: Integer
        # @param DataId: 和请求中的DataId一致，原样返回
        # @type DataId: String
        # @param EvilLabel: 恶意标签，Normal：正常，Polity：涉政，Porn：色情，Illegal：违法，Abuse：谩骂，Terror：暴恐，Ad：广告，Custom：自定义关键词
        # @type EvilLabel: String
        # @param Extra: 输出的其他信息，不同客户内容不同
        # @type Extra: String
        # @param Keywords: 命中的关键词
        # @type Keywords: Array
        # @param Score: 命中的模型分值
        # @type Score: Integer
        # @param Suggestion: 建议值,Block：打击,Review：待复审,Normal：正常
        # @type Suggestion: String

        attr_accessor :EvilFlag, :EvilType, :Common, :CustomResult, :DetailResult, :ID, :Res, :RiskDetails, :BizType, :DataId, :EvilLabel, :Extra, :Keywords, :Score, :Suggestion
        
        def initialize(evilflag=nil, eviltype=nil, common=nil, customresult=nil, detailresult=nil, id=nil, res=nil, riskdetails=nil, biztype=nil, dataid=nil, evillabel=nil, extra=nil, keywords=nil, score=nil, suggestion=nil)
          @EvilFlag = evilflag
          @EvilType = eviltype
          @Common = common
          @CustomResult = customresult
          @DetailResult = detailresult
          @ID = id
          @Res = res
          @RiskDetails = riskdetails
          @BizType = biztype
          @DataId = dataid
          @EvilLabel = evillabel
          @Extra = extra
          @Keywords = keywords
          @Score = score
          @Suggestion = suggestion
        end

        def deserialize(params)
          @EvilFlag = params['EvilFlag']
          @EvilType = params['EvilType']
          unless params['Common'].nil?
            @Common = TextOutputComm.new.deserialize(params['Common'])
          end
          unless params['CustomResult'].nil?
            @CustomResult = []
            params['CustomResult'].each do |i|
              @CustomResult << CustomResult.new.deserialize(i)
            end
          end
          unless params['DetailResult'].nil?
            @DetailResult = []
            params['DetailResult'].each do |i|
              @DetailResult << DetailResult.new.deserialize(i)
            end
          end
          unless params['ID'].nil?
            @ID = TextOutputID.new.deserialize(params['ID'])
          end
          unless params['Res'].nil?
            @Res = TextOutputRes.new.deserialize(params['Res'])
          end
          unless params['RiskDetails'].nil?
            @RiskDetails = []
            params['RiskDetails'].each do |i|
              @RiskDetails << RiskDetails.new.deserialize(i)
            end
          end
          @BizType = params['BizType']
          @DataId = params['DataId']
          @EvilLabel = params['EvilLabel']
          @Extra = params['Extra']
          @Keywords = params['Keywords']
          @Score = params['Score']
          @Suggestion = params['Suggestion']
        end
      end

      # TextModeration请求参数结构体
      class TextModerationRequest < TencentCloud::Common::AbstractModel
        # @param Content: 文本内容Base64编码。原文长度需小于15000字节，即5000个汉字以内。
        # @type Content: String
        # @param Device: 设备相关信息
        # @type Device: :class:`Tencentcloud::Cms.v20190321.models.Device`
        # @param User: 用户相关信息
        # @type User: :class:`Tencentcloud::Cms.v20190321.models.User`
        # @param BizType: 该字段用于标识业务场景。您可以在内容安全控制台创建对应的ID，配置不同的内容审核策略，通过接口调用，默认不填为0，后端使用默认策略
        # @type BizType: Integer
        # @param DataId: 数据ID，英文字母、下划线、-组成，不超过64个字符
        # @type DataId: String
        # @param SdkAppId: 业务应用ID
        # @type SdkAppId: Integer

        attr_accessor :Content, :Device, :User, :BizType, :DataId, :SdkAppId
        
        def initialize(content=nil, device=nil, user=nil, biztype=nil, dataid=nil, sdkappid=nil)
          @Content = content
          @Device = device
          @User = user
          @BizType = biztype
          @DataId = dataid
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @Content = params['Content']
          unless params['Device'].nil?
            @Device = Device.new.deserialize(params['Device'])
          end
          unless params['User'].nil?
            @User = User.new.deserialize(params['User'])
          end
          @BizType = params['BizType']
          @DataId = params['DataId']
          @SdkAppId = params['SdkAppId']
        end
      end

      # TextModeration返回参数结构体
      class TextModerationResponse < TencentCloud::Common::AbstractModel
        # @param Data: 识别结果
        # @type Data: :class:`Tencentcloud::Cms.v20190321.models.TextData`
        # @param BusinessCode: 业务返回码
        # @type BusinessCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :BusinessCode, :RequestId
        
        def initialize(data=nil, businesscode=nil, requestid=nil)
          @Data = data
          @BusinessCode = businesscode
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TextData.new.deserialize(params['Data'])
          end
          @BusinessCode = params['BusinessCode']
          @RequestId = params['RequestId']
        end
      end

      # 消息类输出公共参数
      class TextOutputComm < TencentCloud::Common::AbstractModel
        # @param AppID: 接入业务的唯一ID
        # @type AppID: Integer
        # @param BUCtrlID: 接口唯一ID，旁路调用接口返回有该字段，标识唯一接口
        # @type BUCtrlID: Integer
        # @param SendTime: 消息发送时间
        # @type SendTime: Integer
        # @param Uin: 请求字段里的Common.Uin
        # @type Uin: Integer

        attr_accessor :AppID, :BUCtrlID, :SendTime, :Uin
        
        def initialize(appid=nil, buctrlid=nil, sendtime=nil, uin=nil)
          @AppID = appid
          @BUCtrlID = buctrlid
          @SendTime = sendtime
          @Uin = uin
        end

        def deserialize(params)
          @AppID = params['AppID']
          @BUCtrlID = params['BUCtrlID']
          @SendTime = params['SendTime']
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
        # @param ResultCode: 恶意操作码，
        # 删除（1）， 通过（2）， 先审后发（100012）
        # @type ResultCode: Integer
        # @param ResultMsg: 操作结果备注说明
        # @type ResultMsg: String
        # @param ResultType: 恶意类型，广告（10001）， 政治（20001）， 色情（20002）， 社会事件（20004）， 暴力（20011）， 低俗（20012）， 违法犯罪（20006）， 欺诈（20008）， 版权（20013）， 谣言（20104）， 其他（21000）
        # @type ResultType: Integer

        attr_accessor :Operator, :ResultCode, :ResultMsg, :ResultType
        
        def initialize(operator=nil, resultcode=nil, resultmsg=nil, resulttype=nil)
          @Operator = operator
          @ResultCode = resultcode
          @ResultMsg = resultmsg
          @ResultType = resulttype
        end

        def deserialize(params)
          @Operator = params['Operator']
          @ResultCode = params['ResultCode']
          @ResultMsg = params['ResultMsg']
          @ResultType = params['ResultType']
        end
      end

      # 文字样本信息
      class TextSample < TencentCloud::Common::AbstractModel
        # @param Code: 处理错误码
        # @type Code: Integer
        # @param Content: 关键词
        # @type Content: String
        # @param CreatedAt: 创建时间戳
        # @type CreatedAt: Integer
        # @param EvilType: 恶意类型
        # 100：正常
        # 20001：政治
        # 20002：色情
        # 20006：涉毒违法
        # 20007：谩骂
        # 20105：广告引流
        # 24001：暴恐
        # @type EvilType: Integer
        # @param Id: 唯一标识
        # @type Id: String
        # @param Label: 样本类型
        # 1：黑库
        # 2：白库
        # @type Label: Integer
        # @param Status: 任务状态
        # 1：已完成
        # 2：处理中
        # @type Status: Integer

        attr_accessor :Code, :Content, :CreatedAt, :EvilType, :Id, :Label, :Status
        
        def initialize(code=nil, content=nil, createdat=nil, eviltype=nil, id=nil, label=nil, status=nil)
          @Code = code
          @Content = content
          @CreatedAt = createdat
          @EvilType = eviltype
          @Id = id
          @Label = label
          @Status = status
        end

        def deserialize(params)
          @Code = params['Code']
          @Content = params['Content']
          @CreatedAt = params['CreatedAt']
          @EvilType = params['EvilType']
          @Id = params['Id']
          @Label = params['Label']
          @Status = params['Status']
        end
      end

      # 用户相关信息
      class User < TencentCloud::Common::AbstractModel
        # @param AccountType: 账号类别，"1-微信uin 2-QQ号 3-微信群uin 4-qq群号 5-微信openid 6-QQopenid 7-其它string"
        # @type AccountType: Integer
        # @param Age: 年龄 默认0 未知
        # @type Age: Integer
        # @param Gender: 性别 默认0 未知 1 男性 2 女性
        # @type Gender: Integer
        # @param Level: 用户等级，默认0 未知 1 低 2 中 3 高
        # @type Level: Integer
        # @param Nickname: 用户昵称
        # @type Nickname: String
        # @param Phone: 手机号
        # @type Phone: String
        # @param UserId: 用户账号ID，如填写，会根据账号历史恶意情况，判定消息有害结果，特别是有利于可疑恶意情况下的辅助判断。账号可以填写微信uin、QQ号、微信openid、QQopenid、字符串等。该字段和账号类别确定唯一账号。
        # @type UserId: String

        attr_accessor :AccountType, :Age, :Gender, :Level, :Nickname, :Phone, :UserId
        
        def initialize(accounttype=nil, age=nil, gender=nil, level=nil, nickname=nil, phone=nil, userid=nil)
          @AccountType = accounttype
          @Age = age
          @Gender = gender
          @Level = level
          @Nickname = nickname
          @Phone = phone
          @UserId = userid
        end

        def deserialize(params)
          @AccountType = params['AccountType']
          @Age = params['Age']
          @Gender = params['Gender']
          @Level = params['Level']
          @Nickname = params['Nickname']
          @Phone = params['Phone']
          @UserId = params['UserId']
        end
      end

    end
  end
end

