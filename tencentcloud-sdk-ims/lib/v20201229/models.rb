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
    module V20201229
      # CreateImageModerationAsyncTask请求参数结构体
      class CreateImageModerationAsyncTaskRequest < TencentCloud::Common::AbstractModel
        # @param CallbackUrl: 接收审核信息回调地址，审核过程中产生的所有结果发送至此地址。
        # @type CallbackUrl: String
        # @param BizType: 该字段表示策略的具体编号，用于接口调度，在内容安全控制台中可配置。若不传入Biztype参数（留空），则代表采用默认的识别策略；传入则会在审核时根据业务场景采取不同的审核策略。<br>备注：Biztype仅为数字、字母与下划线的组合，长度为3-32个字符；不同Biztype关联不同的业务场景与识别能力策略，调用前请确认正确的Biztype。
        # @type BizType: String
        # @param DataId: 该字段表示您为待检测对象分配的数据ID，传入后可方便您对文件进行标识和管理。<br>取值：由英文字母（大小写均可）、数字及四个特殊符号（_，-，@，#）组成，**长度不超过64个字符**。
        # @type DataId: String
        # @param FileContent: 该字段表示待检测图片文件内容的Base64编码，图片**大小不超过5MB**，建议**分辨率不低于256x256**，否则可能会影响识别效果。<br>备注： **该字段与FileUrl必须选择输入其中一个**。
        # @type FileContent: String
        # @param FileUrl: 该字段表示待检测图片文件的访问链接，图片支持PNG、JPG、JPEG、BMP、GIF、WEBP格式，**大小不超过5MB**，建议**分辨率不低于256x256**；图片下载时间限制为3秒，超过则会返回下载超时；由于网络安全策略，**送审带重定向的链接，可能引起下载失败**，请尽量避免，比如Http返回302状态码的链接，可能导致接口返回ResourceUnavailable.ImageDownloadError。<br>备注：**该字段与FileContent必须选择输入其中一个**。
        # @type FileUrl: String
        # @param Interval: **GIF/长图检测专用**，用于表示GIF截帧频率（每隔多少张图片抽取一帧进行检测），长图则按照长边：短边取整计算要切割的总图数；默认值为0，此时只会检测GIF的第一帧或对长图不进行切分处理。<br>备注：Interval与MaxFrames参数需要组合使用。例如，Interval=3, MaxFrames=400，则代表在检测GIF/长图时，将每间隔2帧检测一次且最多检测400帧。
        # @type Interval: Integer
        # @param MaxFrames: **GIF/长图检测专用**，用于标识最大截帧数量；默认值为1，此时只会检测输入GIF的第一帧或对长图不进行切分处理（可能会造成处理超时）。<br>备注：Interval与MaxFrames参数需要组合使用。例如，Interval=3, MaxFrames=400，则代表在检测GIF/长图时，将每间隔2帧检测一次且最多检测400帧。
        # @type MaxFrames: Integer
        # @param User: 该字段表示待检测对象对应的用户相关信息，若填入则可甄别相应违规风险用户。
        # @type User: :class:`Tencentcloud::Ims.v20201229.models.User`
        # @param Device: 该字段表示待检测对象对应的设备相关信息，若填入则可甄别相应违规风险设备。
        # @type Device: :class:`Tencentcloud::Ims.v20201229.models.Device`

        attr_accessor :CallbackUrl, :BizType, :DataId, :FileContent, :FileUrl, :Interval, :MaxFrames, :User, :Device
        
        def initialize(callbackurl=nil, biztype=nil, dataid=nil, filecontent=nil, fileurl=nil, interval=nil, maxframes=nil, user=nil, device=nil)
          @CallbackUrl = callbackurl
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
          @CallbackUrl = params['CallbackUrl']
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

      # CreateImageModerationAsyncTask返回参数结构体
      class CreateImageModerationAsyncTaskResponse < TencentCloud::Common::AbstractModel
        # @param DataId: 该字段用于返回检测对象对应请求参数中的DataId。
        # @type DataId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataId, :RequestId
        
        def initialize(dataid=nil, requestid=nil)
          @DataId = dataid
          @RequestId = requestid
        end

        def deserialize(params)
          @DataId = params['DataId']
          @RequestId = params['RequestId']
        end
      end

      # 用于表示业务用户对应的设备信息
      class Device < TencentCloud::Common::AbstractModel
        # @param Ip: 该字段表示业务用户对应设备的IP地址，同时**支持IPv4和IPv6**地址的记录；需要与IpType参数配合使用。
        # @type Ip: String
        # @param Mac: 该字段表示业务用户对应的MAC地址，以方便设备识别与管理；其格式与取值与标准MAC地址一致。
        # @type Mac: String
        # @param TokenId: *内测中，敬请期待。*
        # @type TokenId: String
        # @param DeviceId: *内测中，敬请期待。*
        # @type DeviceId: String
        # @param IMEI: 该字段表示业务用户对应设备的**IMEI码**（国际移动设备识别码），该识别码可用于识别每一部独立的手机等移动通信设备，方便设备识别与管理。<br>备注：格式为**15-17位纯数字**。
        # @type IMEI: String
        # @param IDFA: **iOS设备专用**，该字段表示业务用户对应的**IDFA**(广告标识符),这是由苹果公司提供的用于标识用户的广告标识符，由一串16进制的32位数字和字母组成。<br>
        # 备注：苹果公司自2021年iOS14更新后允许用户手动关闭或者开启IDFA，故此字符串标记有效性可能有所降低。
        # @type IDFA: String
        # @param IDFV: **iOS设备专用**，该字段表示业务用户对应的**IDFV**(应用开发商标识符),这是由苹果公司提供的用于标注应用开发商的标识符，由一串16进制的32位数字和字母组成，可被用于唯一标识设备。
        # @type IDFV: String
        # @param IpType: 该字段表示记录的IP地址的类型，取值：**0**（代表IPv4地址）、**1**（代表IPv6地址）；需要与IpType参数配合使用。
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

      # ImageModeration请求参数结构体
      class ImageModerationRequest < TencentCloud::Common::AbstractModel
        # @param BizType: 该字段表示策略的具体编号，用于接口调度，在内容安全控制台中可配置。若不传入Biztype参数（留空），则代表采用默认的识别策略；传入则会在审核时根据业务场景采取不同的审核策略。<br>备注：Biztype仅为数字、字母与下划线的组合，长度为3-32个字符；不同Biztype关联不同的业务场景与识别能力策略，调用前请确认正确的Biztype。
        # @type BizType: String
        # @param DataId: 该字段表示您为待检测对象分配的数据ID，传入后可方便您对文件进行标识和管理。<br>取值：由英文字母（大小写均可）、数字及四个特殊符号（_，-，@，#）组成，**长度不超过64个字符**。
        # @type DataId: String
        # @param FileContent: 该字段表示待检测图片文件内容的Base64编码，图片**大小不超过5MB**，建议**分辨率不低于256x256**，否则可能会影响识别效果。<br>备注： **该字段与FileUrl必须选择输入其中一个**。
        # @type FileContent: String
        # @param FileUrl: 该字段表示待检测图片文件的访问链接，图片支持PNG、JPG、JPEG、BMP、GIF、WEBP格式，**大小不超过5MB**，建议**分辨率不低于256x256**；图片下载时间限制为3秒，超过则会返回下载超时；由于网络安全策略，**送审带重定向的链接，可能引起下载失败**，请尽量避免，比如Http返回302状态码的链接，可能导致接口返回ResourceUnavailable.ImageDownloadError。<br>备注：**该字段与FileContent必须选择输入其中一个**。
        # @type FileUrl: String
        # @param Interval: **GIF/长图检测专用**，用于表示GIF截帧频率（每隔多少张图片抽取一帧进行检测），长图则按照长边：短边取整计算要切割的总图数；默认值为0，此时只会检测GIF的第一帧或对长图不进行切分处理。<br>备注：Interval与MaxFrames参数需要组合使用。例如，Interval=3, MaxFrames=400，则代表在检测GIF/长图时，将每间隔2帧检测一次且最多检测400帧。
        # @type Interval: Integer
        # @param MaxFrames: **GIF/长图检测专用**，用于标识最大截帧数量；默认值为1，此时只会检测输入GIF的第一帧或对长图不进行切分处理（可能会造成处理超时）。<br>备注：Interval与MaxFrames参数需要组合使用。例如，Interval=3, MaxFrames=400，则代表在检测GIF/长图时，将每间隔2帧检测一次且最多检测400帧。
        # @type MaxFrames: Integer
        # @param User: 该字段表示待检测对象对应的用户相关信息，若填入则可甄别相应违规风险用户。
        # @type User: :class:`Tencentcloud::Ims.v20201229.models.User`
        # @param Device: 该字段表示待检测对象对应的设备相关信息，若填入则可甄别相应违规风险设备。
        # @type Device: :class:`Tencentcloud::Ims.v20201229.models.Device`

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
        # @param Suggestion: 该字段用于返回Label标签下的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        # @type Suggestion: String
        # @param Label: 该字段用于返回检测结果（LabelResults）中所对应的**优先级最高的恶意标签**，表示模型推荐的审核结果，建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param SubLabel: 该字段用于返回检测结果所命中优先级最高的恶意标签下的子标签名称，如：*色情--性行为*；若未命中任何子标签则返回空字符串。
        # @type SubLabel: String
        # @param Score: 该字段用于返回当前标签（Label）下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高** ），越高代表图片越有可能属于当前返回的标签；如：*色情 99*，则表明该图片非常有可能属于色情内容；*色情 0*，则表明该图片不属于色情内容。
        # @type Score: Integer
        # @param LabelResults: 该字段用于返回分类模型命中的恶意标签的详细识别结果，包括涉黄、广告等令人反感、不安全或不适宜的内容类型识别结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelResults: Array
        # @param ObjectResults: 该字段用于返回物体检测模型的详细检测结果；包括：实体、广告台标、二维码等内容命中的标签名称、标签分数、坐标信息、场景识别结果、建议操作等内容审核信息；详细返回值信息可参阅对应的数据结构（ObjectResults）描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectResults: Array
        # @param OcrResults: 该字段用于返回OCR文本识别的详细检测结果；包括：文本坐标信息、文本识别结果、建议操作等内容审核信息；详细返回值信息可参阅对应的数据结构（OcrResults）描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrResults: Array
        # @param LibResults: 该字段用于返回基于图片风险库（风险黑库与正常白库）识别的结果,详细返回值信息可参阅对应的数据结构（LibResults）描述。<br>备注：图片风险库目前**暂不支持自定义库**。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibResults: Array
        # @param DataId: 该字段用于返回检测对象对应请求参数中的DataId。
        # @type DataId: String
        # @param BizType: 该字段用于返回检测对象对应请求参数中的BizType。
        # @type BizType: String
        # @param Extra: 该字段用于返回根据您的需求配置的额外附加信息（Extra），如未配置则默认返回值为空。<br>备注：不同客户或Biztype下返回信息不同，如需配置该字段请提交工单咨询或联系售后专员处理。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param FileMD5: 该字段用于返回检测对象对应的MD5校验值，以方便校验文件完整性。
        # @type FileMD5: String
        # @param RecognitionResults: 该字段用于返回仅识别图片元素的模型结果；包括：场景模型命中的标签、置信度和位置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecognitionResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Suggestion, :Label, :SubLabel, :Score, :LabelResults, :ObjectResults, :OcrResults, :LibResults, :DataId, :BizType, :Extra, :FileMD5, :RecognitionResults, :RequestId
        
        def initialize(suggestion=nil, label=nil, sublabel=nil, score=nil, labelresults=nil, objectresults=nil, ocrresults=nil, libresults=nil, dataid=nil, biztype=nil, extra=nil, filemd5=nil, recognitionresults=nil, requestid=nil)
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
          @FileMD5 = filemd5
          @RecognitionResults = recognitionresults
          @RequestId = requestid
        end

        def deserialize(params)
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
          @FileMD5 = params['FileMD5']
          unless params['RecognitionResults'].nil?
            @RecognitionResults = []
            params['RecognitionResults'].each do |i|
              recognitionresult_tmp = RecognitionResult.new
              recognitionresult_tmp.deserialize(i)
              @RecognitionResults << recognitionresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 用于返回分类模型命中子标签的详细结果
      class LabelDetailItem < TencentCloud::Common::AbstractModel
        # @param Id: 该字段用于返回识别对象的ID以方便识别和区分。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 该字段用于返回识命中的子标签名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Score: 该字段用于返回对应子标签命中的分值，取值为**0-100**，如：*Porn-SexBehavior 99* 则代表相应识别内容命中色情-性行为标签的分值为99。
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
        # @param Scene: 该字段用于返回模型识别出的场景结果，如广告、色情、有害内容等场景。
        # @type Scene: String
        # @param Suggestion: 该字段用于返回针对当前恶意标签的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        # @type Suggestion: String
        # @param Label: 该字段用于返回检测结果所对应的恶意标签。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param SubLabel: 该字段用于返回对应恶意标签下的子标签的检测结果，如：*Porn-SexBehavior*等子标签。
        # @type SubLabel: String
        # @param Score: 该字段用于返回当前标签（Label）下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高** ），越高代表图片越有可能属于当前返回的标签；如：*色情 99*，则表明该图片非常有可能属于色情内容；*色情 0*，则表明该图片不属于色情内容。
        # @type Score: Integer
        # @param Details: 该字段用于返回分类模型命中子标签的详细信息，如：序号、命中标签名称、分数等信息。
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

      # 用于返回自定义库/黑白库的明细信息
      class LibDetail < TencentCloud::Common::AbstractModel
        # @param Id: 该字段用于返回识别对象的ID以方便识别和区分。
        # @type Id: Integer
        # @param LibId: 该字段**仅当Label为Custom：自定义关键词时该参数有效**,用于返回自定义库的ID，以方便自定义库管理和配置。
        # @type LibId: String
        # @param LibName: 该字段**仅当Label为Custom：自定义关键词时该参数有效**,用于返回自定义库的名称,以方便自定义库管理和配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibName: String
        # @param ImageId: 该字段用于返回识别图像对象的ID以方便文件管理。
        # @type ImageId: String
        # @param Label: 该字段用于返回检测结果所对应的恶意标签。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param Tag: 该字段用于返回其他自定义标签以满足您的定制化场景需求，若无需求则可略过。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: String
        # @param Score: 该字段用于返回对应模型命中的分值，取值为**0-100**，如：*Porn 99* 则代表相应识别内容命中色情标签的分值为99。
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

      # 用于返回黑白库比对结果的详细信息
      class LibResult < TencentCloud::Common::AbstractModel
        # @param Scene: 该字段表示模型的场景识别结果，默认取值为Similar。
        # @type Scene: String
        # @param Suggestion: 该字段用于返回后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        # @type Suggestion: String
        # @param Label: 该字段用于返回检测结果所对应的恶意标签。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param SubLabel: 该字段用于返回恶意标签下对应的子标签的检测结果，如：*Porn-SexBehavior*等子标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubLabel: String
        # @param Score: 该字段用于返回图片检索模型识别的分值，取值为**0-100**，表示该审核图片**与库中样本的相似分值**，得分越高，代表当前内容越有可能命中相似图库内的样本。
        # @type Score: Integer
        # @param Details: 该字段用于返回黑白库比对结果的详细信息，如：序号、库名称、恶意标签等信息；详细返回信息敬请参考对应数据结构（[LibDetail](https://cloud.tencent.com/document/product/1125/53274#LibDetail)）的描述文档
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
        # @param X: 该参数用于返回检测框**左上角位置的横坐标**（x）所在的像素位置，结合剩余参数可唯一确定检测框的大小和位置。
        # @type X: Float
        # @param Y: 该参数用于返回检测框**左上角位置的纵坐标**（y）所在的像素位置，结合剩余参数可唯一确定检测框的大小和位置。
        # @type Y: Float
        # @param Width: 该参数用于返回**检测框的宽度**（由左上角出发在x轴向右延伸的长度），结合剩余参数可唯一确定检测框的大小和位置。
        # @type Width: Float
        # @param Height: 该参数用于返回**检测框的高度**（由左上角出发在y轴向下延伸的长度），结合剩余参数可唯一确定检测框的大小和位置。
        # @type Height: Float
        # @param Rotate: 该参数用于返回**检测框的旋转角度**，该参数结合X和Y两个坐标参数可唯一确定检测框的具体位置；取值：**0-360**（**角度制**），方向为**逆时针旋转**。
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
        # @param Id: 该参数用于返回识别对象的ID以方便识别和区分。
        # @type Id: Integer
        # @param Name: 该参数用于返回命中的实体标签。
        # @type Name: String
        # @param Value: 该参数用于返回对应实体标签所对应的值或内容。如：当标签为*二维码(QrCode)*时，该字段为识别出的二维码对应的URL地址。
        # @type Value: String
        # @param Score: 该参数用于返回对应实体标签命中的分值，取值为**0-100**，如：*QrCode 99* 则代表相应识别内容命中二维码场景标签的概率非常高。
        # @type Score: Integer
        # @param Location: 该字段用于返回实体检测框的坐标位置（左上角xy坐标、长宽、旋转角度）以方便快速定位实体的相关信息。
        # @type Location: :class:`Tencentcloud::Ims.v20201229.models.Location`
        # @param SubLabel: 该参数用于返回命中的实体二级标签。
        # @type SubLabel: String

        attr_accessor :Id, :Name, :Value, :Score, :Location, :SubLabel
        
        def initialize(id=nil, name=nil, value=nil, score=nil, location=nil, sublabel=nil)
          @Id = id
          @Name = name
          @Value = value
          @Score = score
          @Location = location
          @SubLabel = sublabel
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
          @SubLabel = params['SubLabel']
        end
      end

      # 用于返回实体检测结果详情
      class ObjectResult < TencentCloud::Common::AbstractModel
        # @param Scene: 该字段用于返回实体识别出的实体场景结果，如二维码、logo、图片OCR等场景。
        # @type Scene: String
        # @param Suggestion: 该字段用于返回针对当前恶意标签的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        # @type Suggestion: String
        # @param Label: 该字段用于返回检测结果所对应的恶意标签，表示模型推荐的审核结果，建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param SubLabel: 该字段用于返回当前恶意标签下对应的子标签的检测结果，如：*Porn-SexBehavior* 等子标签。
        # @type SubLabel: String
        # @param Score: 该字段用于返回命中当前恶意标签下子标签的分值，取值为**0-100**，如：*Porn-SexBehavior 99* 则代表相应识别内容命中色情-性行为标签的分值为99。
        # @type Score: Integer
        # @param Names: 该标签用于返回所识别出的实体名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Names: Array
        # @param Details: 该标签用于返回所识别出实体的详细信息，如：序号、命中标签名称、位置坐标等信息，详细返回内容敬请参考相应数据结构（[ObjectDetail
        # ](https://cloud.tencent.com/document/api/1125/53274#ObjectDetail)）。
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

      # 用于返回OCR结果检测详情
      class OcrResult < TencentCloud::Common::AbstractModel
        # @param Scene: 该字段表示识别场景，取值默认为OCR（图片OCR识别）。
        # @type Scene: String
        # @param Suggestion: 该字段用于返回优先级最高的恶意标签对应的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        # @type Suggestion: String
        # @param Label: 该字段用于返回OCR检测结果所对应的优先级最高的恶意标签，表示模型推荐的审核结果，建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param SubLabel: 该字段用于返回当前标签（Label）下对应的子标签的检测结果，如：*Porn-SexBehavior*等子标签。
        # @type SubLabel: String
        # @param Score: 该字段用于返回当前标签（Label）下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高** ），越高代表文本越有可能属于当前返回的标签；如：*色情 99*，则表明该文本非常有可能属于色情内容；*色情 0*，则表明该文本不属于色情内容。
        # @type Score: Integer
        # @param Details: 该字段用于返回OCR识别出的结果的详细内容，如：文本内容、对应标签、识别框位置等信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Details: Array
        # @param Text: 该字段用于返回OCR识别出的文字信息。
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

      # 用于返回OCR文本结果详情，图片中的文本越多，可能导致接口返回时间增加。
      class OcrTextDetail < TencentCloud::Common::AbstractModel
        # @param Text: 该字段用于返回OCR识别出的文本内容。<br>备注：OCR文本识别上限在**5000字节内**。
        # @type Text: String
        # @param Label: 该字段用于返回检测结果所对应的恶意标签。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param LibId: 该字段**仅当Label为Custom自定义关键词时有效**，用于返回自定义库的ID，以方便自定义库管理和配置。
        # @type LibId: String
        # @param LibName: 该字段**仅当Label为Custom自定义关键词时有效**，用于返回自定义库的名称，以方便自定义库管理和配置。
        # @type LibName: String
        # @param Keywords: 该参数用于返回在当前label下命中的关键词。
        # @type Keywords: Array
        # @param Score: 该参数用于返回在当前恶意标签下模型命中的分值，取值为**0-100**；分数越高，代表当前场景越符合该恶意标签所对应的场景。
        # @type Score: Integer
        # @param Location: 该参数用于返回OCR检测框在图片中的位置（左上角xy坐标、长宽、旋转角度），以方便快速定位识别文字的相关信息。
        # @type Location: :class:`Tencentcloud::Ims.v20201229.models.Location`
        # @param Rate: 该参数用于返回OCR文本识别结果的置信度，取值在**0**（**置信度最低**）-**100**（**置信度最高**），越高代表对应图像越有可能是识别出的文字；如：*你好 99*，则表明OCR识别框内的文字大概率是”你好“。
        # @type Rate: Integer
        # @param SubLabel: 该字段用于返回检测结果所对应的恶意二级标签。
        # @type SubLabel: String

        attr_accessor :Text, :Label, :LibId, :LibName, :Keywords, :Score, :Location, :Rate, :SubLabel
        
        def initialize(text=nil, label=nil, libid=nil, libname=nil, keywords=nil, score=nil, location=nil, rate=nil, sublabel=nil)
          @Text = text
          @Label = label
          @LibId = libid
          @LibName = libname
          @Keywords = keywords
          @Score = score
          @Location = location
          @Rate = rate
          @SubLabel = sublabel
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
          @SubLabel = params['SubLabel']
        end
      end

      # 识别类型标签结果信息
      class RecognitionResult < TencentCloud::Common::AbstractModel
        # @param Label: 当前可能的取值：Scene（图片场景模型）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Tags: Label对应模型下的识别标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :Label, :Tags
        
        def initialize(label=nil, tags=nil)
          @Label = label
          @Tags = tags
        end

        def deserialize(params)
          @Label = params['Label']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              recognitiontag_tmp = RecognitionTag.new
              recognitiontag_tmp.deserialize(i)
              @Tags << recognitiontag_tmp
            end
          end
        end
      end

      # 识别类型标签信息
      class RecognitionTag < TencentCloud::Common::AbstractModel
        # @param Name: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Score: 置信分：0～100，数值越大表示置信度越高
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param Location: 标签位置信息，若模型无位置信息，则可能为零值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: :class:`Tencentcloud::Ims.v20201229.models.Location`

        attr_accessor :Name, :Score, :Location
        
        def initialize(name=nil, score=nil, location=nil)
          @Name = name
          @Score = score
          @Location = location
        end

        def deserialize(params)
          @Name = params['Name']
          @Score = params['Score']
          unless params['Location'].nil?
            @Location = Location.new
            @Location.deserialize(params['Location'])
          end
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
        # @type AccountType: String
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
        # @param Desc: 该字段表示业务用户的简介信息，支持汉字、英文及特殊符号，**长度不超过5000个汉字字符**。
        # @type Desc: String
        # @param HeadUrl: 该字段表示业务用户头像图片的访问链接(URL)，支持PNG、JPG、JPEG、BMP、GIF、WEBP格式。<br>备注：头像图片**大小不超过5MB**，建议**分辨率不低于256x256**；图片下载时间限制为3秒，超过则会返回下载超时。
        # @type HeadUrl: String

        attr_accessor :UserId, :Nickname, :AccountType, :Gender, :Age, :Level, :Phone, :Desc, :HeadUrl
        
        def initialize(userid=nil, nickname=nil, accounttype=nil, gender=nil, age=nil, level=nil, phone=nil, desc=nil, headurl=nil)
          @UserId = userid
          @Nickname = nickname
          @AccountType = accounttype
          @Gender = gender
          @Age = age
          @Level = level
          @Phone = phone
          @Desc = desc
          @HeadUrl = headurl
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Nickname = params['Nickname']
          @AccountType = params['AccountType']
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

