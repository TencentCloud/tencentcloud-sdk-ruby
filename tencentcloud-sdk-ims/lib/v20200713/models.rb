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
  module Ims
    module V20200713
      # DescribeImageStat请求参数结构体
      class DescribeImageStatRequest < TencentCloud::Common::AbstractModel
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

      # DescribeImageStat返回参数结构体
      class DescribeImageStatResponse < TencentCloud::Common::AbstractModel
        # @param Overview: 识别结果统计
        # @type Overview: :class:`Tencentcloud::Ims.v20200713.models.Overview`
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

      # DescribeImsList请求参数结构体
      class DescribeImsListRequest < TencentCloud::Common::AbstractModel
        # @param PageIndex: 分页 页索引
        # @type PageIndex: Integer
        # @param PageSize: 分页条数
        # @type PageSize: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array

        attr_accessor :PageIndex, :PageSize, :Filters
        
        def initialize(pageindex=nil, pagesize=nil, filters=nil)
          @PageIndex = pageindex
          @PageSize = pagesize
          @Filters = filters
        end

        def deserialize(params)
          @PageIndex = params['PageIndex']
          @PageSize = params['PageSize']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeImsList返回参数结构体
      class DescribeImsListResponse < TencentCloud::Common::AbstractModel
        # @param ImsDetailSet: 返回列表数据----非必选，该参数暂未对外开放
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImsDetailSet: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImsDetailSet, :TotalCount, :RequestId
        
        def initialize(imsdetailset=nil, totalcount=nil, requestid=nil)
          @ImsDetailSet = imsdetailset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ImsDetailSet'].nil?
            @ImsDetailSet = []
            params['ImsDetailSet'].each do |i|
              imsdetail_tmp = ImsDetail.new
              imsdetail_tmp.deserialize(i)
              @ImsDetailSet << imsdetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # Device结果
      class Device < TencentCloud::Common::AbstractModel
        # @param Ip: 发表消息设备IP
        # @type Ip: String
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
        # @param IpType: IP地址类型 0 代表ipv4 1 代表ipv6
        # @type IpType: Integer

        attr_accessor :Ip, :Mac, :TokenId, :DeviceId, :IMEI, :IDFA, :IDFV, :IpType
        
        def initialize(ip=nil, mac=nil, tokenid=nil, deviceid=nil, imei=nil, idfa=nil, idfv=nil, iptype=nil)
          @Ip = ip
          @Mac = mac
          @TokenId = tokenid
          @DeviceId = deviceid
          @IMEI = imei
          @IDFA = idfa
          @IDFV = idfv
          @IpType = iptype
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Mac = params['Mac']
          @TokenId = params['TokenId']
          @DeviceId = params['DeviceId']
          @IMEI = params['IMEI']
          @IDFA = params['IDFA']
          @IDFV = params['IDFV']
          @IpType = params['IpType']
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

      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤键的名称。
        # @type Name: String
        # @param Values: 一个或者多个过滤值。
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

      # 图片过滤条件
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

      # ImageModeration请求参数结构体
      class ImageModerationRequest < TencentCloud::Common::AbstractModel
        # @param BizType: 该字段用于标识业务场景。您可以在内容安全控制台创建对应的ID，配置不同的内容审核策略，通过接口调用，默认不填为0，后端使用默认策略。 -- 该字段暂未开放。
        # @type BizType: String
        # @param DataId: 数据ID，可以由英文字母、数字、下划线、-、@#组成，不超过64个字符
        # @type DataId: String
        # @param FileContent: 数据Base64编码，图片检测接口为图片文件内容，大小不能超过5M
        # @type FileContent: String
        # @param FileUrl: 图片资源访问链接，__与FileContent参数必须二选一输入__
        # @type FileUrl: String
        # @param Interval: 截帧频率，GIF图/长图检测专用，默认值为0，表示只会检测GIF图/长图的第一帧
        # @type Interval: Integer
        # @param MaxFrames: GIF图/长图检测专用，代表均匀最大截帧数量，默认值为1（即只取GIF第一张，或长图不做切分处理（可能会造成处理超时））。
        # @type MaxFrames: Integer
        # @param User: 账号相关信息字段，填入后可识别违规风险账号。
        # @type User: :class:`Tencentcloud::Ims.v20200713.models.User`
        # @param Device: 设备相关信息字段，填入后可识别违规风险设备。
        # @type Device: :class:`Tencentcloud::Ims.v20200713.models.Device`

        attr_accessor :BizType, :DataId, :FileContent, :FileUrl, :Interval, :MaxFrames, :User, :Device
        
        def initialize(biztype=nil, dataid=nil, filecontent=nil, fileurl=nil, interval=nil, maxframes=nil, user=nil, device=nil)
          @BizType = biztype
          @DataId = dataid
          @FileContent = filecontent
          @FileUrl = fileurl
          @Interval = interval
          @MaxFrames = maxframes
          @User = user
          @Device = device
        end

        def deserialize(params)
          @BizType = params['BizType']
          @DataId = params['DataId']
          @FileContent = params['FileContent']
          @FileUrl = params['FileUrl']
          @Interval = params['Interval']
          @MaxFrames = params['MaxFrames']
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

      # ImageModeration返回参数结构体
      class ImageModerationResponse < TencentCloud::Common::AbstractModel
        # @param HitFlag: 数据是否属于恶意类型。
        # 0：正常，1：可疑；
        # @type HitFlag: Integer
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        # @type Suggestion: String
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义图片。
        # 以及令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param SubLabel: 子标签名称，如色情--性行为；当未命中子标签时，返回空字符串；
        # @type SubLabel: String
        # @param Score: 机器判断当前分类的置信度，取值范围：0.00~100.00。分数越高，表示越有可能属于当前分类。
        # （如：色情 99.99，则该样本属于色情的置信度非常高。）
        # @type Score: Integer
        # @param LabelResults: 智能模型的识别结果，包括涉黄、广告等令人反感、不安全或不适宜的内容类型识别结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelResults: Array
        # @param ObjectResults: 物体检测模型的审核结果，包括实体、广告台标/二维码等物体坐标信息与内容审核信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectResults: Array
        # @param OcrResults: OCR识别后的文本识别结果，包括文本所处图片的OCR坐标信息以及图片文本的识别结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrResults: Array
        # @param LibResults: 基于图片风险库识别的结果。
        # 风险库包括不安全黑库与正常白库的结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibResults: Array
        # @param DataId: 请求参数中的DataId。
        # @type DataId: String
        # @param BizType: 您在入参时所填入的Biztype参数。 -- 该字段暂未开放。
        # @type BizType: String
        # @param Extra: 扩展字段，用于特定信息返回，不同客户/Biztype下返回信息不同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HitFlag, :Suggestion, :Label, :SubLabel, :Score, :LabelResults, :ObjectResults, :OcrResults, :LibResults, :DataId, :BizType, :Extra, :RequestId
        
        def initialize(hitflag=nil, suggestion=nil, label=nil, sublabel=nil, score=nil, labelresults=nil, objectresults=nil, ocrresults=nil, libresults=nil, dataid=nil, biztype=nil, extra=nil, requestid=nil)
          @HitFlag = hitflag
          @Suggestion = suggestion
          @Label = label
          @SubLabel = sublabel
          @Score = score
          @LabelResults = labelresults
          @ObjectResults = objectresults
          @OcrResults = ocrresults
          @LibResults = libresults
          @DataId = dataid
          @BizType = biztype
          @Extra = extra
          @RequestId = requestid
        end

        def deserialize(params)
          @HitFlag = params['HitFlag']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @SubLabel = params['SubLabel']
          @Score = params['Score']
          unless params['LabelResults'].nil?
            @LabelResults = []
            params['LabelResults'].each do |i|
              labelresult_tmp = LabelResult.new
              labelresult_tmp.deserialize(i)
              @LabelResults << labelresult_tmp
            end
          end
          unless params['ObjectResults'].nil?
            @ObjectResults = []
            params['ObjectResults'].each do |i|
              objectresult_tmp = ObjectResult.new
              objectresult_tmp.deserialize(i)
              @ObjectResults << objectresult_tmp
            end
          end
          unless params['OcrResults'].nil?
            @OcrResults = []
            params['OcrResults'].each do |i|
              ocrresult_tmp = OcrResult.new
              ocrresult_tmp.deserialize(i)
              @OcrResults << ocrresult_tmp
            end
          end
          unless params['LibResults'].nil?
            @LibResults = []
            params['LibResults'].each do |i|
              libresult_tmp = LibResult.new
              libresult_tmp.deserialize(i)
              @LibResults << libresult_tmp
            end
          end
          @DataId = params['DataId']
          @BizType = params['BizType']
          @Extra = params['Extra']
          @RequestId = params['RequestId']
        end
      end

      # 机器审核详情列表数据项
      class ImsDetail < TencentCloud::Common::AbstractModel
        # @param Content: 文本内容
        # @type Content: String
        # @param DataSource: 数据方式， 0：我审，1：人审
        # @type DataSource: Integer
        # @param UpdateTime: 最后更新时间
        # @type UpdateTime: String
        # @param EvilType: ----非必选，该参数暂未对外开放
        # @type EvilType: Integer
        # @param ModerationTime: 机器审核时间
        # @type ModerationTime: String
        # @param UpdateUser: 最后更新人
        # @type UpdateUser: String
        # @param ContentId: 内容RequestId
        # @type ContentId: String
        # @param OperEvilType: 自主审核结果
        # @type OperEvilType: Integer

        attr_accessor :Content, :DataSource, :UpdateTime, :EvilType, :ModerationTime, :UpdateUser, :ContentId, :OperEvilType
        
        def initialize(content=nil, datasource=nil, updatetime=nil, eviltype=nil, moderationtime=nil, updateuser=nil, contentid=nil, opereviltype=nil)
          @Content = content
          @DataSource = datasource
          @UpdateTime = updatetime
          @EvilType = eviltype
          @ModerationTime = moderationtime
          @UpdateUser = updateuser
          @ContentId = contentid
          @OperEvilType = opereviltype
        end

        def deserialize(params)
          @Content = params['Content']
          @DataSource = params['DataSource']
          @UpdateTime = params['UpdateTime']
          @EvilType = params['EvilType']
          @ModerationTime = params['ModerationTime']
          @UpdateUser = params['UpdateUser']
          @ContentId = params['ContentId']
          @OperEvilType = params['OperEvilType']
        end
      end

      # 分类模型命中子标签结果
      class LabelDetailItem < TencentCloud::Common::AbstractModel
        # @param Id: 序号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 子标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Score: 子标签分数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer

        attr_accessor :Id, :Name, :Score
        
        def initialize(id=nil, name=nil, score=nil)
          @Id = id
          @Name = name
          @Score = score
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Score = params['Score']
        end
      end

      # 分类模型命中结果
      class LabelResult < TencentCloud::Common::AbstractModel
        # @param Scene: 场景识别结果
        # @type Scene: String
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        # @type Suggestion: String
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义图片。
        # 以及令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param SubLabel: 子标签检测结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubLabel: String
        # @param Score: 该标签模型命中的分值
        # @type Score: Integer
        # @param Details: 分类模型命中子标签结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Details: Array

        attr_accessor :Scene, :Suggestion, :Label, :SubLabel, :Score, :Details
        
        def initialize(scene=nil, suggestion=nil, label=nil, sublabel=nil, score=nil, details=nil)
          @Scene = scene
          @Suggestion = suggestion
          @Label = label
          @SubLabel = sublabel
          @Score = score
          @Details = details
        end

        def deserialize(params)
          @Scene = params['Scene']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @SubLabel = params['SubLabel']
          @Score = params['Score']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              labeldetailitem_tmp = LabelDetailItem.new
              labeldetailitem_tmp.deserialize(i)
              @Details << labeldetailitem_tmp
            end
          end
        end
      end

      # 自定义库/黑白库明细
      class LibDetail < TencentCloud::Common::AbstractModel
        # @param Id: 序号
        # @type Id: Integer
        # @param LibId: 仅当Label为Custom自定义关键词时有效，表示自定义库id
        # @type LibId: String
        # @param LibName: 仅当Label为Custom自定义关键词时有效，表示自定义库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibName: String
        # @param ImageId: 图片ID
        # @type ImageId: String
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        # 以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param Tag: 自定义标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: String
        # @param Score: 命中的模型分值
        # @type Score: Integer

        attr_accessor :Id, :LibId, :LibName, :ImageId, :Label, :Tag, :Score
        
        def initialize(id=nil, libid=nil, libname=nil, imageid=nil, label=nil, tag=nil, score=nil)
          @Id = id
          @LibId = libid
          @LibName = libname
          @ImageId = imageid
          @Label = label
          @Tag = tag
          @Score = score
        end

        def deserialize(params)
          @Id = params['Id']
          @LibId = params['LibId']
          @LibName = params['LibName']
          @ImageId = params['ImageId']
          @Label = params['Label']
          @Tag = params['Tag']
          @Score = params['Score']
        end
      end

      # 黑白库结果明细
      class LibResult < TencentCloud::Common::AbstractModel
        # @param Scene: 场景识别结果
        # @type Scene: String
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        # @type Suggestion: String
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        # 以及令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param SubLabel: 子标签检测结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubLabel: String
        # @param Score: 该标签模型命中的分值
        # @type Score: Integer
        # @param Details: 黑白库结果明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Details: Array

        attr_accessor :Scene, :Suggestion, :Label, :SubLabel, :Score, :Details
        
        def initialize(scene=nil, suggestion=nil, label=nil, sublabel=nil, score=nil, details=nil)
          @Scene = scene
          @Suggestion = suggestion
          @Label = label
          @SubLabel = sublabel
          @Score = score
          @Details = details
        end

        def deserialize(params)
          @Scene = params['Scene']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @SubLabel = params['SubLabel']
          @Score = params['Score']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              libdetail_tmp = LibDetail.new
              libdetail_tmp.deserialize(i)
              @Details << libdetail_tmp
            end
          end
        end
      end

      # 坐标
      class Location < TencentCloud::Common::AbstractModel
        # @param X: 左上角横坐标
        # @type X: Float
        # @param Y: 左上角纵坐标
        # @type Y: Float
        # @param Width: 宽度
        # @type Width: Float
        # @param Height: 高度
        # @type Height: Float
        # @param Rotate: 检测框的旋转角度
        # @type Rotate: Float

        attr_accessor :X, :Y, :Width, :Height, :Rotate
        
        def initialize(x=nil, y=nil, width=nil, height=nil, rotate=nil)
          @X = x
          @Y = y
          @Width = width
          @Height = height
          @Rotate = rotate
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @Width = params['Width']
          @Height = params['Height']
          @Rotate = params['Rotate']
        end
      end

      # 实体检测结果明细，当检测场景为实体、广告台标、二维码时表示模型检测目标框的标签名称、标签值、标签分数以及检测框的位置信息。
      class ObjectDetail < TencentCloud::Common::AbstractModel
        # @param Id: 序号
        # @type Id: Integer
        # @param Name: 标签名称
        # @type Name: String
        # @param Value: 标签值，
        # 当标签为二维码时，表示URL地址，如Name为QrCode时，Value为"http//abc.com/aaa"
        # @type Value: String
        # @param Score: 分数
        # @type Score: Integer
        # @param Location: 检测框坐标
        # @type Location: :class:`Tencentcloud::Ims.v20200713.models.Location`

        attr_accessor :Id, :Name, :Value, :Score, :Location
        
        def initialize(id=nil, name=nil, value=nil, score=nil, location=nil)
          @Id = id
          @Name = name
          @Value = value
          @Score = score
          @Location = location
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Value = params['Value']
          @Score = params['Score']
          unless params['Location'].nil?
            @Location = Location.new
            @Location.deserialize(params['Location'])
          end
        end
      end

      # 实体检测结果详情：实体、广告台标、二维码
      class ObjectResult < TencentCloud::Common::AbstractModel
        # @param Scene: 场景识别结果
        # @type Scene: String
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        # @type Suggestion: String
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义图片。
        # 以及令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param SubLabel: 子标签检测结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubLabel: String
        # @param Score: 该标签模型命中的分值
        # @type Score: Integer
        # @param Names: 实体名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Names: Array
        # @param Details: 实体检测结果明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Details: Array

        attr_accessor :Scene, :Suggestion, :Label, :SubLabel, :Score, :Names, :Details
        
        def initialize(scene=nil, suggestion=nil, label=nil, sublabel=nil, score=nil, names=nil, details=nil)
          @Scene = scene
          @Suggestion = suggestion
          @Label = label
          @SubLabel = sublabel
          @Score = score
          @Names = names
          @Details = details
        end

        def deserialize(params)
          @Scene = params['Scene']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @SubLabel = params['SubLabel']
          @Score = params['Score']
          @Names = params['Names']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              objectdetail_tmp = ObjectDetail.new
              objectdetail_tmp.deserialize(i)
              @Details << objectdetail_tmp
            end
          end
        end
      end

      # OCR结果检测详情
      class OcrResult < TencentCloud::Common::AbstractModel
        # @param Scene: 场景识别结果
        # @type Scene: String
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        # @type Suggestion: String
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        # 以及令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param SubLabel: 子标签检测结果
        # @type SubLabel: String
        # @param Score: 该标签模型命中的分值
        # @type Score: Integer
        # @param Details: ocr结果详情
        # @type Details: Array
        # @param Text: ocr识别出的文本结果
        # @type Text: String

        attr_accessor :Scene, :Suggestion, :Label, :SubLabel, :Score, :Details, :Text
        
        def initialize(scene=nil, suggestion=nil, label=nil, sublabel=nil, score=nil, details=nil, text=nil)
          @Scene = scene
          @Suggestion = suggestion
          @Label = label
          @SubLabel = sublabel
          @Score = score
          @Details = details
          @Text = text
        end

        def deserialize(params)
          @Scene = params['Scene']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @SubLabel = params['SubLabel']
          @Score = params['Score']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              ocrtextdetail_tmp = OcrTextDetail.new
              ocrtextdetail_tmp.deserialize(i)
              @Details << ocrtextdetail_tmp
            end
          end
          @Text = params['Text']
        end
      end

      # OCR文本结果详情
      class OcrTextDetail < TencentCloud::Common::AbstractModel
        # @param Text: OCR文本内容
        # @type Text: String
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        # 以及令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param LibId: 仅当Label为Custom自定义关键词时有效，表示自定义库id
        # @type LibId: String
        # @param LibName: 仅当Label为Custom自定义关键词时有效，表示自定义库名称
        # @type LibName: String
        # @param Keywords: 该标签下命中的关键词
        # @type Keywords: Array
        # @param Score: 该标签模型命中的分值
        # @type Score: Integer
        # @param Location: OCR位置
        # @type Location: :class:`Tencentcloud::Ims.v20200713.models.Location`
        # @param Rate: OCR文本识别置信度
        # @type Rate: Integer

        attr_accessor :Text, :Label, :LibId, :LibName, :Keywords, :Score, :Location, :Rate
        
        def initialize(text=nil, label=nil, libid=nil, libname=nil, keywords=nil, score=nil, location=nil, rate=nil)
          @Text = text
          @Label = label
          @LibId = libid
          @LibName = libname
          @Keywords = keywords
          @Score = score
          @Location = location
          @Rate = rate
        end

        def deserialize(params)
          @Text = params['Text']
          @Label = params['Label']
          @LibId = params['LibId']
          @LibName = params['LibName']
          @Keywords = params['Keywords']
          @Score = params['Score']
          unless params['Location'].nil?
            @Location = Location.new
            @Location.deserialize(params['Location'])
          end
          @Rate = params['Rate']
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

      # User结果
      class User < TencentCloud::Common::AbstractModel
        # @param UserId: 业务用户ID 如填写，会根据账号历史恶意情况，判定消息有害结果，特别是有利于可疑恶意情况下的辅助判断。账号可以填写微信uin、QQ号、微信openid、QQopenid、字符串等。该字段和账号类别确定唯一账号。
        # @type UserId: String
        # @param AccountType: 业务用户ID类型 "1-微信uin 2-QQ号 3-微信群uin 4-qq群号 5-微信openid 6-QQopenid 7-其它string"
        # @type AccountType: String
        # @param Nickname: 用户昵称
        # @type Nickname: String
        # @param Gender: 性别 默认0 未知 1 男性 2 女性
        # @type Gender: Integer
        # @param Age: 年龄 默认0 未知
        # @type Age: Integer
        # @param Level: 用户等级，默认0 未知 1 低 2 中 3 高
        # @type Level: Integer
        # @param Phone: 手机号
        # @type Phone: String
        # @param Desc: 用户简介，长度不超过5000字
        # @type Desc: String
        # @param HeadUrl: 用户头像图片链接
        # @type HeadUrl: String

        attr_accessor :UserId, :AccountType, :Nickname, :Gender, :Age, :Level, :Phone, :Desc, :HeadUrl
        
        def initialize(userid=nil, accounttype=nil, nickname=nil, gender=nil, age=nil, level=nil, phone=nil, desc=nil, headurl=nil)
          @UserId = userid
          @AccountType = accounttype
          @Nickname = nickname
          @Gender = gender
          @Age = age
          @Level = level
          @Phone = phone
          @Desc = desc
          @HeadUrl = headurl
        end

        def deserialize(params)
          @UserId = params['UserId']
          @AccountType = params['AccountType']
          @Nickname = params['Nickname']
          @Gender = params['Gender']
          @Age = params['Age']
          @Level = params['Level']
          @Phone = params['Phone']
          @Desc = params['Desc']
          @HeadUrl = params['HeadUrl']
        end
      end

    end
  end
end

