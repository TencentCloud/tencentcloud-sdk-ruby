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
  module Ie
    module V20200304
      # 任务结果回调地址信息
      class CallbackInfo < TencentCloud::Common::AbstractModel
        # @param Url: 回调URL。
        # @type Url: String

        attr_accessor :Url
        
        def initialize(url=nil)
          @Url = url
        end

        def deserialize(params)
          @Url = params['Url']
        end
      end

      # 视频分类识别任务参数信息
      class ClassificationEditingInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启视频分类识别。0为关闭，1为开启。其他非0非1值默认为0。
        # @type Switch: Integer
        # @param CustomInfo: 额外定制化服务参数。参数为序列化的Json字符串，例如：{"k1":"v1"}。
        # @type CustomInfo: String

        attr_accessor :Switch, :CustomInfo
        
        def initialize(switch=nil, custominfo=nil)
          @Switch = switch
          @CustomInfo = custominfo
        end

        def deserialize(params)
          @Switch = params['Switch']
          @CustomInfo = params['CustomInfo']
        end
      end

      # 视频分类识别结果信息
      class ClassificationTaskResult < TencentCloud::Common::AbstractModel
        # @param Status: 编辑任务状态。
        # 1：执行中；2：成功；3：失败。
        # @type Status: Integer
        # @param ErrCode: 编辑任务失败错误码。
        # 0：成功；其他值：失败。
        # @type ErrCode: Integer
        # @param ErrMsg: 编辑任务失败错误描述。
        # @type ErrMsg: String
        # @param ItemSet: 视频分类识别结果集。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemSet: Array

        attr_accessor :Status, :ErrCode, :ErrMsg, :ItemSet
        
        def initialize(status=nil, errcode=nil, errmsg=nil, itemset=nil)
          @Status = status
          @ErrCode = errcode
          @ErrMsg = errmsg
          @ItemSet = itemset
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          @ItemSet = params['ItemSet']
        end
      end

      # 视频分类识别结果项
      class ClassificationTaskResultItem < TencentCloud::Common::AbstractModel
        # @param Classification: 分类名称。
        # @type Classification: String
        # @param Confidence: 置信度，取值范围是 0 到 100。
        # @type Confidence: Float

        attr_accessor :Classification, :Confidence
        
        def initialize(classification=nil, confidence=nil)
          @Classification = classification
          @Confidence = confidence
        end

        def deserialize(params)
          @Classification = params['Classification']
          @Confidence = params['Confidence']
        end
      end

      # 任务视频cos授权信息
      class CosAuthMode < TencentCloud::Common::AbstractModel
        # @param Type: 授权类型，可选值：
        # 0：bucket授权，需要将对应bucket授权给本服务帐号（3020447271），否则会读写cos失败；
        # 1：key托管，把cos的账号id和key托管于本服务，本服务会提供一个托管id；
        # 3：临时key授权。
        # 注意：目前智能编辑还不支持临时key授权。
        # @type Type: Integer
        # @param HostedId: cos账号托管id，Type等于1时必选。
        # @type HostedId: String
        # @param SecretId: cos身份识别id，Type等于3时必选。
        # @type SecretId: String
        # @param SecretKey: cos身份秘钥，Type等于3时必选。
        # @type SecretKey: String
        # @param Token: 临时授权 token，Type等于3时必选。
        # @type Token: String

        attr_accessor :Type, :HostedId, :SecretId, :SecretKey, :Token
        
        def initialize(type=nil, hostedid=nil, secretid=nil, secretkey=nil, token=nil)
          @Type = type
          @HostedId = hostedid
          @SecretId = secretid
          @SecretKey = secretkey
          @Token = token
        end

        def deserialize(params)
          @Type = params['Type']
          @HostedId = params['HostedId']
          @SecretId = params['SecretId']
          @SecretKey = params['SecretKey']
          @Token = params['Token']
        end
      end

      # 任务视频cos信息
      class CosInfo < TencentCloud::Common::AbstractModel
        # @param Region: cos 区域值。例如：ap-beijing。
        # @type Region: String
        # @param Bucket: cos 存储桶，格式为BuketName-AppId。例如：test-123456。
        # @type Bucket: String
        # @param Path: cos 路径。
        # 对于写表示目录，例如：/test；
        # 对于读表示文件路径，例如：/test/test.mp4。
        # @type Path: String
        # @param CosAuthMode: cos 授权信息，不填默认为公有权限。
        # @type CosAuthMode: :class:`Tencentcloud::Ie.v20200304.models.CosAuthMode`

        attr_accessor :Region, :Bucket, :Path, :CosAuthMode
        
        def initialize(region=nil, bucket=nil, path=nil, cosauthmode=nil)
          @Region = region
          @Bucket = bucket
          @Path = path
          @CosAuthMode = cosauthmode
        end

        def deserialize(params)
          @Region = params['Region']
          @Bucket = params['Bucket']
          @Path = params['Path']
          unless params['CosAuthMode'].nil?
            @CosAuthMode = CosAuthMode.new.deserialize(params[CosAuthMode])
          end
        end
      end

      # 智能封面任务参数信息
      class CoverEditingInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启智能封面。0为关闭，1为开启。其他非0非1值默认为0。
        # @type Switch: Integer
        # @param CustomInfo: 额外定制化服务参数。参数为序列化的Json字符串，例如：{"k1":"v1"}。
        # @type CustomInfo: String

        attr_accessor :Switch, :CustomInfo
        
        def initialize(switch=nil, custominfo=nil)
          @Switch = switch
          @CustomInfo = custominfo
        end

        def deserialize(params)
          @Switch = params['Switch']
          @CustomInfo = params['CustomInfo']
        end
      end

      # 智能封面结果信息
      class CoverTaskResult < TencentCloud::Common::AbstractModel
        # @param Status: 编辑任务状态。
        # 1：执行中；2：成功；3：失败。
        # @type Status: Integer
        # @param ErrCode: 编辑任务失败错误码。
        # 0：成功；其他值：失败。
        # @type ErrCode: Integer
        # @param ErrMsg: 编辑任务失败错误描述。
        # @type ErrMsg: String
        # @param ItemSet: 智能封面结果集。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemSet: Array

        attr_accessor :Status, :ErrCode, :ErrMsg, :ItemSet
        
        def initialize(status=nil, errcode=nil, errmsg=nil, itemset=nil)
          @Status = status
          @ErrCode = errcode
          @ErrMsg = errmsg
          @ItemSet = itemset
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          @ItemSet = params['ItemSet']
        end
      end

      # 智能封面结果项
      class CoverTaskResultItem < TencentCloud::Common::AbstractModel
        # @param CoverUrl: 智能封面地址。
        # @type CoverUrl: String
        # @param Confidence: 置信度，取值范围是 0 到 100。
        # @type Confidence: Float

        attr_accessor :CoverUrl, :Confidence
        
        def initialize(coverurl=nil, confidence=nil)
          @CoverUrl = coverurl
          @Confidence = confidence
        end

        def deserialize(params)
          @CoverUrl = params['CoverUrl']
          @Confidence = params['Confidence']
        end
      end

      # CreateEditingTask请求参数结构体
      class CreateEditingTaskRequest < TencentCloud::Common::AbstractModel
        # @param EditingInfo: 智能编辑任务参数。
        # @type EditingInfo: :class:`Tencentcloud::Ie.v20200304.models.EditingInfo`
        # @param DownInfo: 视频源信息。
        # @type DownInfo: :class:`Tencentcloud::Ie.v20200304.models.DownInfo`
        # @param SaveInfo: 结果存储信息。对于包含智能拆条、智能集锦或者智能封面的任务必选。
        # @type SaveInfo: :class:`Tencentcloud::Ie.v20200304.models.SaveInfo`
        # @param CallbackInfo: 任务结果回调地址信息。
        # @type CallbackInfo: :class:`Tencentcloud::Ie.v20200304.models.CallbackInfo`

        attr_accessor :EditingInfo, :DownInfo, :SaveInfo, :CallbackInfo
        
        def initialize(editinginfo=nil, downinfo=nil, saveinfo=nil, callbackinfo=nil)
          @EditingInfo = editinginfo
          @DownInfo = downinfo
          @SaveInfo = saveinfo
          @CallbackInfo = callbackinfo
        end

        def deserialize(params)
          unless params['EditingInfo'].nil?
            @EditingInfo = EditingInfo.new.deserialize(params[EditingInfo])
          end
          unless params['DownInfo'].nil?
            @DownInfo = DownInfo.new.deserialize(params[DownInfo])
          end
          unless params['SaveInfo'].nil?
            @SaveInfo = SaveInfo.new.deserialize(params[SaveInfo])
          end
          unless params['CallbackInfo'].nil?
            @CallbackInfo = CallbackInfo.new.deserialize(params[CallbackInfo])
          end
        end
      end

      # CreateEditingTask返回参数结构体
      class CreateEditingTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 编辑任务 ID，可以通过该 ID 查询任务状态。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEditingTaskResult请求参数结构体
      class DescribeEditingTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 编辑任务 ID。
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeEditingTaskResult返回参数结构体
      class DescribeEditingTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param TaskResult: 编辑任务结果信息。
        # @type TaskResult: :class:`Tencentcloud::Ie.v20200304.models.EditingTaskResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskResult, :RequestId
        
        def initialize(taskresult=nil, requestid=nil)
          @TaskResult = taskresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskResult'].nil?
            @TaskResult = EditingTaskResult.new.deserialize(params[TaskResult])
          end
          @RequestId = params['RequestId']
        end
      end

      # 视频源信息
      class DownInfo < TencentCloud::Common::AbstractModel
        # @param Type: 下载类型，可选值：
        # 0：UrlInfo；
        # 1：CosInfo。
        # @type Type: Integer
        # @param UrlInfo: Url形式下载信息，当Type等于0时必选。
        # @type UrlInfo: :class:`Tencentcloud::Ie.v20200304.models.UrlInfo`
        # @param CosInfo: Cos形式下载信息，当Type等于1时必选。
        # @type CosInfo: :class:`Tencentcloud::Ie.v20200304.models.CosInfo`

        attr_accessor :Type, :UrlInfo, :CosInfo
        
        def initialize(type=nil, urlinfo=nil, cosinfo=nil)
          @Type = type
          @UrlInfo = urlinfo
          @CosInfo = cosinfo
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['UrlInfo'].nil?
            @UrlInfo = UrlInfo.new.deserialize(params[UrlInfo])
          end
          unless params['CosInfo'].nil?
            @CosInfo = CosInfo.new.deserialize(params[CosInfo])
          end
        end
      end

      # 智能编辑任务参数信息
      class EditingInfo < TencentCloud::Common::AbstractModel
        # @param TagEditingInfo: 视频标签识别任务参数，不填则不开启。
        # @type TagEditingInfo: :class:`Tencentcloud::Ie.v20200304.models.TagEditingInfo`
        # @param ClassificationEditingInfo: 视频分类识别任务参数，不填则不开启。
        # @type ClassificationEditingInfo: :class:`Tencentcloud::Ie.v20200304.models.ClassificationEditingInfo`
        # @param StripEditingInfo: 智能拆条任务参数，不填则不开启。
        # @type StripEditingInfo: :class:`Tencentcloud::Ie.v20200304.models.StripEditingInfo`
        # @param HighlightsEditingInfo: 智能集锦任务参数，不填则不开启。
        # @type HighlightsEditingInfo: :class:`Tencentcloud::Ie.v20200304.models.HighlightsEditingInfo`
        # @param CoverEditingInfo: 智能封面任务参数，不填则不开启。
        # @type CoverEditingInfo: :class:`Tencentcloud::Ie.v20200304.models.CoverEditingInfo`
        # @param OpeningEndingEditingInfo: 片头片尾识别任务参数，不填则不开启。
        # @type OpeningEndingEditingInfo: :class:`Tencentcloud::Ie.v20200304.models.OpeningEndingEditingInfo`

        attr_accessor :TagEditingInfo, :ClassificationEditingInfo, :StripEditingInfo, :HighlightsEditingInfo, :CoverEditingInfo, :OpeningEndingEditingInfo
        
        def initialize(tageditinginfo=nil, classificationeditinginfo=nil, stripeditinginfo=nil, highlightseditinginfo=nil, covereditinginfo=nil, openingendingeditinginfo=nil)
          @TagEditingInfo = tageditinginfo
          @ClassificationEditingInfo = classificationeditinginfo
          @StripEditingInfo = stripeditinginfo
          @HighlightsEditingInfo = highlightseditinginfo
          @CoverEditingInfo = covereditinginfo
          @OpeningEndingEditingInfo = openingendingeditinginfo
        end

        def deserialize(params)
          unless params['TagEditingInfo'].nil?
            @TagEditingInfo = TagEditingInfo.new.deserialize(params[TagEditingInfo])
          end
          unless params['ClassificationEditingInfo'].nil?
            @ClassificationEditingInfo = ClassificationEditingInfo.new.deserialize(params[ClassificationEditingInfo])
          end
          unless params['StripEditingInfo'].nil?
            @StripEditingInfo = StripEditingInfo.new.deserialize(params[StripEditingInfo])
          end
          unless params['HighlightsEditingInfo'].nil?
            @HighlightsEditingInfo = HighlightsEditingInfo.new.deserialize(params[HighlightsEditingInfo])
          end
          unless params['CoverEditingInfo'].nil?
            @CoverEditingInfo = CoverEditingInfo.new.deserialize(params[CoverEditingInfo])
          end
          unless params['OpeningEndingEditingInfo'].nil?
            @OpeningEndingEditingInfo = OpeningEndingEditingInfo.new.deserialize(params[OpeningEndingEditingInfo])
          end
        end
      end

      # 智能识别任务结果信息
      class EditingTaskResult < TencentCloud::Common::AbstractModel
        # @param TaskId: 编辑任务 ID。
        # @type TaskId: String
        # @param Status: 编辑任务状态。
        # 1：执行中；2：已完成。
        # @type Status: Integer
        # @param TagTaskResult: 视频标签识别结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagTaskResult: :class:`Tencentcloud::Ie.v20200304.models.TagTaskResult`
        # @param ClassificationTaskResult: 视频分类识别结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassificationTaskResult: :class:`Tencentcloud::Ie.v20200304.models.ClassificationTaskResult`
        # @param StripTaskResult: 智能拆条结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StripTaskResult: :class:`Tencentcloud::Ie.v20200304.models.StripTaskResult`
        # @param HighlightsTaskResult: 智能集锦结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HighlightsTaskResult: :class:`Tencentcloud::Ie.v20200304.models.HighlightsTaskResult`
        # @param CoverTaskResult: 智能封面结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoverTaskResult: :class:`Tencentcloud::Ie.v20200304.models.CoverTaskResult`
        # @param OpeningEndingTaskResult: 片头片尾识别结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpeningEndingTaskResult: :class:`Tencentcloud::Ie.v20200304.models.OpeningEndingTaskResult`

        attr_accessor :TaskId, :Status, :TagTaskResult, :ClassificationTaskResult, :StripTaskResult, :HighlightsTaskResult, :CoverTaskResult, :OpeningEndingTaskResult
        
        def initialize(taskid=nil, status=nil, tagtaskresult=nil, classificationtaskresult=nil, striptaskresult=nil, highlightstaskresult=nil, covertaskresult=nil, openingendingtaskresult=nil)
          @TaskId = taskid
          @Status = status
          @TagTaskResult = tagtaskresult
          @ClassificationTaskResult = classificationtaskresult
          @StripTaskResult = striptaskresult
          @HighlightsTaskResult = highlightstaskresult
          @CoverTaskResult = covertaskresult
          @OpeningEndingTaskResult = openingendingtaskresult
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          unless params['TagTaskResult'].nil?
            @TagTaskResult = TagTaskResult.new.deserialize(params[TagTaskResult])
          end
          unless params['ClassificationTaskResult'].nil?
            @ClassificationTaskResult = ClassificationTaskResult.new.deserialize(params[ClassificationTaskResult])
          end
          unless params['StripTaskResult'].nil?
            @StripTaskResult = StripTaskResult.new.deserialize(params[StripTaskResult])
          end
          unless params['HighlightsTaskResult'].nil?
            @HighlightsTaskResult = HighlightsTaskResult.new.deserialize(params[HighlightsTaskResult])
          end
          unless params['CoverTaskResult'].nil?
            @CoverTaskResult = CoverTaskResult.new.deserialize(params[CoverTaskResult])
          end
          unless params['OpeningEndingTaskResult'].nil?
            @OpeningEndingTaskResult = OpeningEndingTaskResult.new.deserialize(params[OpeningEndingTaskResult])
          end
        end
      end

      # 智能集锦任务参数信息
      class HighlightsEditingInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启智能集锦。0为关闭，1为开启。其他非0非1值默认为0。
        # @type Switch: Integer
        # @param CustomInfo: 额外定制化服务参数。参数为序列化的Json字符串，例如：{"k1":"v1"}。
        # @type CustomInfo: String

        attr_accessor :Switch, :CustomInfo
        
        def initialize(switch=nil, custominfo=nil)
          @Switch = switch
          @CustomInfo = custominfo
        end

        def deserialize(params)
          @Switch = params['Switch']
          @CustomInfo = params['CustomInfo']
        end
      end

      # 智能集锦结果信息
      class HighlightsTaskResult < TencentCloud::Common::AbstractModel
        # @param Status: 编辑任务状态。
        # 1：执行中；2：成功；3：失败。
        # @type Status: Integer
        # @param ErrCode: 编辑任务失败错误码。
        # 0：成功；其他值：失败。
        # @type ErrCode: Integer
        # @param ErrMsg: 编辑任务失败错误描述。
        # @type ErrMsg: String
        # @param ItemSet: 智能集锦结果集。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemSet: Array

        attr_accessor :Status, :ErrCode, :ErrMsg, :ItemSet
        
        def initialize(status=nil, errcode=nil, errmsg=nil, itemset=nil)
          @Status = status
          @ErrCode = errcode
          @ErrMsg = errmsg
          @ItemSet = itemset
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          @ItemSet = params['ItemSet']
        end
      end

      # 智能集锦结果项
      class HighlightsTaskResultItem < TencentCloud::Common::AbstractModel
        # @param HighlightUrl: 智能集锦地址。
        # @type HighlightUrl: String
        # @param CovImgUrl: 智能集锦封面地址。
        # @type CovImgUrl: String
        # @param Confidence: 置信度，取值范围是 0 到 100。
        # @type Confidence: Float
        # @param Duration: 智能集锦持续时间，单位：秒。
        # @type Duration: Float
        # @param SegmentSet: 智能集锦子片段结果集，集锦片段由这些子片段拼接生成。
        # @type SegmentSet: Array

        attr_accessor :HighlightUrl, :CovImgUrl, :Confidence, :Duration, :SegmentSet
        
        def initialize(highlighturl=nil, covimgurl=nil, confidence=nil, duration=nil, segmentset=nil)
          @HighlightUrl = highlighturl
          @CovImgUrl = covimgurl
          @Confidence = confidence
          @Duration = duration
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @HighlightUrl = params['HighlightUrl']
          @CovImgUrl = params['CovImgUrl']
          @Confidence = params['Confidence']
          @Duration = params['Duration']
          @SegmentSet = params['SegmentSet']
        end
      end

      # 智能集锦结果片段
      class HighlightsTaskResultItemSegment < TencentCloud::Common::AbstractModel
        # @param Confidence: 置信度，取值范围是 0 到 100。
        # @type Confidence: Float
        # @param StartTimeOffset: 集锦片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 集锦片段终止的偏移时间，单位：秒。
        # @type EndTimeOffset: Float

        attr_accessor :Confidence, :StartTimeOffset, :EndTimeOffset
        
        def initialize(confidence=nil, starttimeoffset=nil, endtimeoffset=nil)
          @Confidence = confidence
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
        end
      end

      # 片头片尾识别任务参数信息
      class OpeningEndingEditingInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启片头片尾识别。0为关闭，1为开启。其他非0非1值默认为0。
        # @type Switch: Integer
        # @param CustomInfo: 额外定制化服务参数。参数为序列化的Json字符串，例如：{"k1":"v1"}。
        # @type CustomInfo: String

        attr_accessor :Switch, :CustomInfo
        
        def initialize(switch=nil, custominfo=nil)
          @Switch = switch
          @CustomInfo = custominfo
        end

        def deserialize(params)
          @Switch = params['Switch']
          @CustomInfo = params['CustomInfo']
        end
      end

      # 片头片尾识别结果信息
      class OpeningEndingTaskResult < TencentCloud::Common::AbstractModel
        # @param Status: 编辑任务状态。
        # 1：执行中；2：成功；3：失败。
        # @type Status: Integer
        # @param ErrCode: 编辑任务失败错误码。
        # 0：成功；其他值：失败。
        # @type ErrCode: Integer
        # @param ErrMsg: 编辑任务失败错误描述。
        # @type ErrMsg: String
        # @param Item: 片头片尾识别结果项。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Item: :class:`Tencentcloud::Ie.v20200304.models.OpeningEndingTaskResultItem`

        attr_accessor :Status, :ErrCode, :ErrMsg, :Item
        
        def initialize(status=nil, errcode=nil, errmsg=nil, item=nil)
          @Status = status
          @ErrCode = errcode
          @ErrMsg = errmsg
          @Item = item
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          unless params['Item'].nil?
            @Item = OpeningEndingTaskResultItem.new.deserialize(params[Item])
          end
        end
      end

      # 片头片尾识别结果项
      class OpeningEndingTaskResultItem < TencentCloud::Common::AbstractModel
        # @param OpeningTimeOffset: 视频片头的结束时间点，单位：秒。
        # @type OpeningTimeOffset: Float
        # @param OpeningConfidence: 片头识别置信度，取值范围是 0 到 100。
        # @type OpeningConfidence: Float
        # @param EndingTimeOffset: 视频片尾的开始时间点，单位：秒。
        # @type EndingTimeOffset: Float
        # @param EndingConfidence: 片尾识别置信度，取值范围是 0 到 100。
        # @type EndingConfidence: Float

        attr_accessor :OpeningTimeOffset, :OpeningConfidence, :EndingTimeOffset, :EndingConfidence
        
        def initialize(openingtimeoffset=nil, openingconfidence=nil, endingtimeoffset=nil, endingconfidence=nil)
          @OpeningTimeOffset = openingtimeoffset
          @OpeningConfidence = openingconfidence
          @EndingTimeOffset = endingtimeoffset
          @EndingConfidence = endingconfidence
        end

        def deserialize(params)
          @OpeningTimeOffset = params['OpeningTimeOffset']
          @OpeningConfidence = params['OpeningConfidence']
          @EndingTimeOffset = params['EndingTimeOffset']
          @EndingConfidence = params['EndingConfidence']
        end
      end

      # 任务存储信息
      class SaveInfo < TencentCloud::Common::AbstractModel
        # @param Type: 存储类型，可选值：
        # 1：CosInfo。
        # @type Type: Integer
        # @param CosInfo: Cos形式存储信息，当Type等于1时必选。
        # @type CosInfo: :class:`Tencentcloud::Ie.v20200304.models.CosInfo`

        attr_accessor :Type, :CosInfo
        
        def initialize(type=nil, cosinfo=nil)
          @Type = type
          @CosInfo = cosinfo
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['CosInfo'].nil?
            @CosInfo = CosInfo.new.deserialize(params[CosInfo])
          end
        end
      end

      # 智能拆条任务参数信息
      class StripEditingInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启智能拆条。0为关闭，1为开启。其他非0非1值默认为0。
        # @type Switch: Integer
        # @param CustomInfo: 额外定制化服务参数。参数为序列化的Json字符串，例如：{"k1":"v1"}。
        # @type CustomInfo: String

        attr_accessor :Switch, :CustomInfo
        
        def initialize(switch=nil, custominfo=nil)
          @Switch = switch
          @CustomInfo = custominfo
        end

        def deserialize(params)
          @Switch = params['Switch']
          @CustomInfo = params['CustomInfo']
        end
      end

      # 智能拆条结果信息
      class StripTaskResult < TencentCloud::Common::AbstractModel
        # @param Status: 编辑任务状态。
        # 1：执行中；2：成功；3：失败。
        # @type Status: Integer
        # @param ErrCode: 编辑任务失败错误码。
        # 0：成功；其他值：失败。
        # @type ErrCode: Integer
        # @param ErrMsg: 编辑任务失败错误描述。
        # @type ErrMsg: String
        # @param ItemSet: 智能拆条结果集。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemSet: Array

        attr_accessor :Status, :ErrCode, :ErrMsg, :ItemSet
        
        def initialize(status=nil, errcode=nil, errmsg=nil, itemset=nil)
          @Status = status
          @ErrCode = errcode
          @ErrMsg = errmsg
          @ItemSet = itemset
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          @ItemSet = params['ItemSet']
        end
      end

      # 智能拆条结果项
      class StripTaskResultItem < TencentCloud::Common::AbstractModel
        # @param SegmentUrl: 视频拆条片段地址。
        # @type SegmentUrl: String
        # @param CovImgUrl: 拆条封面图片地址。
        # @type CovImgUrl: String
        # @param Confidence: 置信度，取值范围是 0 到 100。
        # @type Confidence: Float
        # @param StartTimeOffset: 拆条片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 拆条片段终止的偏移时间，单位：秒。
        # @type EndTimeOffset: Float

        attr_accessor :SegmentUrl, :CovImgUrl, :Confidence, :StartTimeOffset, :EndTimeOffset
        
        def initialize(segmenturl=nil, covimgurl=nil, confidence=nil, starttimeoffset=nil, endtimeoffset=nil)
          @SegmentUrl = segmenturl
          @CovImgUrl = covimgurl
          @Confidence = confidence
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          @SegmentUrl = params['SegmentUrl']
          @CovImgUrl = params['CovImgUrl']
          @Confidence = params['Confidence']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
        end
      end

      # 视频标签识别任务参数信息
      class TagEditingInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启视频标签识别。0为关闭，1为开启。其他非0非1值默认为0。
        # @type Switch: Integer
        # @param CustomInfo: 额外定制化服务参数。参数为序列化的Json字符串，例如：{"k1":"v1"}。
        # @type CustomInfo: String

        attr_accessor :Switch, :CustomInfo
        
        def initialize(switch=nil, custominfo=nil)
          @Switch = switch
          @CustomInfo = custominfo
        end

        def deserialize(params)
          @Switch = params['Switch']
          @CustomInfo = params['CustomInfo']
        end
      end

      # 视频标签识别结果信息
      class TagTaskResult < TencentCloud::Common::AbstractModel
        # @param Status: 编辑任务状态。
        # 1：执行中；2：成功；3：失败。
        # @type Status: Integer
        # @param ErrCode: 编辑任务失败错误码。
        # 0：成功；其他值：失败。
        # @type ErrCode: Integer
        # @param ErrMsg: 编辑任务失败错误描述。
        # @type ErrMsg: String
        # @param ItemSet: 视频标签识别结果集。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemSet: Array

        attr_accessor :Status, :ErrCode, :ErrMsg, :ItemSet
        
        def initialize(status=nil, errcode=nil, errmsg=nil, itemset=nil)
          @Status = status
          @ErrCode = errcode
          @ErrMsg = errmsg
          @ItemSet = itemset
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          @ItemSet = params['ItemSet']
        end
      end

      # 视频标签识别结果项
      class TagTaskResultItem < TencentCloud::Common::AbstractModel
        # @param Tag: 标签名称。
        # @type Tag: String
        # @param Confidence: 置信度，取值范围是 0 到 100。
        # @type Confidence: Float

        attr_accessor :Tag, :Confidence
        
        def initialize(tag=nil, confidence=nil)
          @Tag = tag
          @Confidence = confidence
        end

        def deserialize(params)
          @Tag = params['Tag']
          @Confidence = params['Confidence']
        end
      end

      # 任务视频Url形式下载信息。
      class UrlInfo < TencentCloud::Common::AbstractModel
        # @param Url: 视频 URL。音视频支持mp4、ts等格式；直播流支持flv、rtmp格式。
        # 注意：目前智能编辑还不支持直播流场景。
        # @type Url: String
        # @param Format: 视频地址格式，可选值：
        # 0：音视频 ;
        # 1：直播流。
        # 默认为0。其他非0非1值默认为0。
        # @type Format: Integer
        # @param Host: 指定请求资源时，HTTP头部host的值。
        # @type Host: String

        attr_accessor :Url, :Format, :Host
        
        def initialize(url=nil, format=nil, host=nil)
          @Url = url
          @Format = format
          @Host = host
        end

        def deserialize(params)
          @Url = params['Url']
          @Format = params['Format']
          @Host = params['Host']
        end
      end

    end
  end
end

