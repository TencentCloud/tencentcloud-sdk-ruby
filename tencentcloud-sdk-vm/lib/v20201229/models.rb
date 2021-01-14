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
  module Vm
    module V20201229
      # 音频输出参数
      class AudioResult < TencentCloud::Common::AbstractModel
        # @param HitFlag: 是否命中
        # 0 未命中
        # 1 命中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HitFlag: Integer
        # @param Label: 命中的标签
        # Porn 色情
        # Illegal 违法
        # Abuse 谩骂
        # Ad 广告
        # Moan 呻吟
        # 以及其他令人反感、不安全或不适宜的内容类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Suggestion: 审核建议，可选值：
        # Pass 通过，
        # Review 建议人审，
        # Block 确认违规
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Score: 得分，0-100
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param Text: 音频ASR文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Url: 音频片段存储URL，有效期为1天
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param Duration: 音频时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: String
        # @param Extra: 拓展字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param TextResults: 文本审核结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextResults: Array
        # @param MoanResults: 音频呻吟审核结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MoanResults: Array
        # @param LanguageResults: 音频语言类别检测结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LanguageResults: Array

        attr_accessor :HitFlag, :Label, :Suggestion, :Score, :Text, :Url, :Duration, :Extra, :TextResults, :MoanResults, :LanguageResults
        
        def initialize(hitflag=nil, label=nil, suggestion=nil, score=nil, text=nil, url=nil, duration=nil, extra=nil, textresults=nil, moanresults=nil, languageresults=nil)
          @HitFlag = hitflag
          @Label = label
          @Suggestion = suggestion
          @Score = score
          @Text = text
          @Url = url
          @Duration = duration
          @Extra = extra
          @TextResults = textresults
          @MoanResults = moanresults
          @LanguageResults = languageresults
        end

        def deserialize(params)
          @HitFlag = params['HitFlag']
          @Label = params['Label']
          @Suggestion = params['Suggestion']
          @Score = params['Score']
          @Text = params['Text']
          @Url = params['Url']
          @Duration = params['Duration']
          @Extra = params['Extra']
          @TextResults = params['TextResults']
          @MoanResults = params['MoanResults']
          @LanguageResults = params['LanguageResults']
        end
      end

      # 音频小语种检测结果
      class AudioResultDetailLanguageResult < TencentCloud::Common::AbstractModel
        # @param Label: 语言分类，如中文、英文等；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Score: 得分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: Float
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: Float
        # @param SubLabelCode: 子标签码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubLabelCode: String

        attr_accessor :Label, :Score, :StartTime, :EndTime, :SubLabelCode
        
        def initialize(label=nil, score=nil, starttime=nil, endtime=nil, sublabelcode=nil)
          @Label = label
          @Score = score
          @StartTime = starttime
          @EndTime = endtime
          @SubLabelCode = sublabelcode
        end

        def deserialize(params)
          @Label = params['Label']
          @Score = params['Score']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SubLabelCode = params['SubLabelCode']
        end
      end

      # 音频呻吟审核结果
      class AudioResultDetailMoanResult < TencentCloud::Common::AbstractModel
        # @param Label: 固定为Moan
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Score: 分数
        # @type Score: Integer
        # @param StartTime: 开始时间
        # @type StartTime: Float
        # @param EndTime: 结束时间
        # @type EndTime: Float
        # @param SubLabelCode: 子标签码
        # @type SubLabelCode: String

        attr_accessor :Label, :Score, :StartTime, :EndTime, :SubLabelCode
        
        def initialize(label=nil, score=nil, starttime=nil, endtime=nil, sublabelcode=nil)
          @Label = label
          @Score = score
          @StartTime = starttime
          @EndTime = endtime
          @SubLabelCode = sublabelcode
        end

        def deserialize(params)
          @Label = params['Label']
          @Score = params['Score']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SubLabelCode = params['SubLabelCode']
        end
      end

      # 音频ASR文本审核结果
      class AudioResultDetailTextResult < TencentCloud::Common::AbstractModel
        # @param Label: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Keywords: 命中的关键词
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keywords: Array
        # @param LibId: 命中的LibId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibId: String
        # @param LibName: 命中的LibName
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibName: String
        # @param Score: 得分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param LibType: 词库类型 1 黑白库 2 自定义库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibType: Integer
        # @param Suggestion: 审核建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String

        attr_accessor :Label, :Keywords, :LibId, :LibName, :Score, :LibType, :Suggestion
        
        def initialize(label=nil, keywords=nil, libid=nil, libname=nil, score=nil, libtype=nil, suggestion=nil)
          @Label = label
          @Keywords = keywords
          @LibId = libid
          @LibName = libname
          @Score = score
          @LibType = libtype
          @Suggestion = suggestion
        end

        def deserialize(params)
          @Label = params['Label']
          @Keywords = params['Keywords']
          @LibId = params['LibId']
          @LibName = params['LibName']
          @Score = params['Score']
          @LibType = params['LibType']
          @Suggestion = params['Suggestion']
        end
      end

      # 声音段信息
      class AudioSegments < TencentCloud::Common::AbstractModel
        # @param OffsetTime: 截帧时间。
        # 点播文件：该值为相对于视频偏移时间，单位为秒，例如：0，5，10
        # 直播流：该值为时间戳，例如：1594650717
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OffsetTime: String
        # @param Result: 结果集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Vm.v20201229.models.AudioResult`

        attr_accessor :OffsetTime, :Result
        
        def initialize(offsettime=nil, result=nil)
          @OffsetTime = offsettime
          @Result = result
        end

        def deserialize(params)
          @OffsetTime = params['OffsetTime']
          unless params['Result'].nil?
            @Result = AudioResult.new.deserialize(params[Result])
          end
        end
      end

      # 文件桶信息
      # 参考腾讯云存储相关说明 https://cloud.tencent.com/document/product/436/44352
      class BucketInfo < TencentCloud::Common::AbstractModel
        # @param Bucket: 腾讯云对象存储，存储桶名称
        # @type Bucket: String
        # @param Region: 地域
        # @type Region: String
        # @param Object: 对象Key
        # @type Object: String

        attr_accessor :Bucket, :Region, :Object
        
        def initialize(bucket=nil, region=nil, object=nil)
          @Bucket = bucket
          @Region = region
          @Object = object
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @Region = params['Region']
          @Object = params['Object']
        end
      end

      # CancelTask请求参数结构体
      class CancelTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # CancelTask返回参数结构体
      class CancelTaskResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateVideoModerationTask请求参数结构体
      class CreateVideoModerationTaskRequest < TencentCloud::Common::AbstractModel
        # @param Type: 任务类型：可选VIDEO（点播视频），LIVE_VIDEO（直播视频）
        # @type Type: String
        # @param Tasks: 输入的任务信息，最多可以同时创建10个任务
        # @type Tasks: Array
        # @param BizType: 业务类型, 定义 模版策略，输出存储配置。默认为default，客户可以在视频审核控制台创建自己的 BizType
        # @type BizType: String
        # @param Seed: （可选）回调签名key，具体可以查看回调签名示例
        # @type Seed: String
        # @param CallbackUrl: 接收审核信息回调地址，如果设置，则审核过程中产生的违规音频片段和画面截帧发送此接口
        # @type CallbackUrl: String
        # @param Priority: 审核排队优先级。当您有多个视频审核任务排队时，可以根据这个参数控制排队优先级。用于处理插队等逻辑。默认该参数为0
        # @type Priority: Integer

        attr_accessor :Type, :Tasks, :BizType, :Seed, :CallbackUrl, :Priority
        
        def initialize(type=nil, tasks=nil, biztype=nil, seed=nil, callbackurl=nil, priority=nil)
          @Type = type
          @Tasks = tasks
          @BizType = biztype
          @Seed = seed
          @CallbackUrl = callbackurl
          @Priority = priority
        end

        def deserialize(params)
          @Type = params['Type']
          @Tasks = params['Tasks']
          @BizType = params['BizType']
          @Seed = params['Seed']
          @CallbackUrl = params['CallbackUrl']
          @Priority = params['Priority']
        end
      end

      # CreateVideoModerationTask返回参数结构体
      class CreateVideoModerationTaskResponse < TencentCloud::Common::AbstractModel
        # @param Results: 任务创建结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Results, :RequestId
        
        def initialize(results=nil, requestid=nil)
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @Results = params['Results']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskDetail请求参数结构体
      class DescribeTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，创建任务后返回的TaskId字段
        # @type TaskId: String
        # @param ShowAllSegments: 是否展示所有分片，默认只展示命中规则的分片
        # @type ShowAllSegments: Boolean

        attr_accessor :TaskId, :ShowAllSegments
        
        def initialize(taskid=nil, showallsegments=nil)
          @TaskId = taskid
          @ShowAllSegments = showallsegments
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ShowAllSegments = params['ShowAllSegments']
        end
      end

      # DescribeTaskDetail返回参数结构体
      class DescribeTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param DataId: 审核时传入的数据Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataId: String
        # @param BizType: 业务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizType: String
        # @param Name: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Status: 状态，可选值：
        # FINISH 已完成
        # PENDING 等待中
        # RUNNING 进行中
        # ERROR 出错
        # CANCELLED 已取消
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Suggestion: 审核建议
        # 可选：
        # Pass 通过
        # Reveiw 建议复审
        # Block 确认违规
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Labels: 审核结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param MediaInfo: 媒体解码信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaInfo: :class:`Tencentcloud::Vm.v20201229.models.MediaInfo`
        # @param InputInfo: 任务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputInfo: :class:`Tencentcloud::Vm.v20201229.models.InputInfo`
        # @param CreatedAt: 创建时间，格式为 ISO 8601
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间，格式为 ISO 8601
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param ImageSegments: 图片结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageSegments: Array
        # @param AudioSegments: 音频结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioSegments: Array
        # @param ErrorType: 如果返回的状态为ERROR，该字段会标记错误类型。
        # 可选值：：
        # DECODE_ERROR: 解码失败。（输入资源中可能包含无法解码的视频）
        # URL_ERROR：下载地址验证失败。
        # TIMEOUT_ERROR：处理超时。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorType: String
        # @param ErrorDescription: 审核任务错误日志。当Error不为空时，会展示该字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorDescription: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :DataId, :BizType, :Name, :Status, :Type, :Suggestion, :Labels, :MediaInfo, :InputInfo, :CreatedAt, :UpdatedAt, :ImageSegments, :AudioSegments, :ErrorType, :ErrorDescription, :RequestId
        
        def initialize(taskid=nil, dataid=nil, biztype=nil, name=nil, status=nil, type=nil, suggestion=nil, labels=nil, mediainfo=nil, inputinfo=nil, createdat=nil, updatedat=nil, imagesegments=nil, audiosegments=nil, errortype=nil, errordescription=nil, requestid=nil)
          @TaskId = taskid
          @DataId = dataid
          @BizType = biztype
          @Name = name
          @Status = status
          @Type = type
          @Suggestion = suggestion
          @Labels = labels
          @MediaInfo = mediainfo
          @InputInfo = inputinfo
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @ImageSegments = imagesegments
          @AudioSegments = audiosegments
          @ErrorType = errortype
          @ErrorDescription = errordescription
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @DataId = params['DataId']
          @BizType = params['BizType']
          @Name = params['Name']
          @Status = params['Status']
          @Type = params['Type']
          @Suggestion = params['Suggestion']
          @Labels = params['Labels']
          unless params['MediaInfo'].nil?
            @MediaInfo = MediaInfo.new.deserialize(params[MediaInfo])
          end
          unless params['InputInfo'].nil?
            @InputInfo = InputInfo.new.deserialize(params[InputInfo])
          end
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @ImageSegments = params['ImageSegments']
          @AudioSegments = params['AudioSegments']
          @ErrorType = params['ErrorType']
          @ErrorDescription = params['ErrorDescription']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasks请求参数结构体
      class DescribeTasksRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页展示多少条。（默认展示10条）
        # @type Limit: Integer
        # @param Filter: 过滤参数
        # @type Filter: :class:`Tencentcloud::Vm.v20201229.models.TaskFilter`
        # @param PageToken: 翻页token，在向前或向后翻页时需要
        # @type PageToken: String
        # @param StartTime: 开始时间。默认是最近3天。
        # @type StartTime: String
        # @param EndTime: 结束时间。默认为空
        # @type EndTime: String

        attr_accessor :Limit, :Filter, :PageToken, :StartTime, :EndTime
        
        def initialize(limit=nil, filter=nil, pagetoken=nil, starttime=nil, endtime=nil)
          @Limit = limit
          @Filter = filter
          @PageToken = pagetoken
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Limit = params['Limit']
          unless params['Filter'].nil?
            @Filter = TaskFilter.new.deserialize(params[Filter])
          end
          @PageToken = params['PageToken']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeTasks返回参数结构体
      class DescribeTasksResponse < TencentCloud::Common::AbstractModel
        # @param Total: 任务总量，为 int 字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: String
        # @param Data: 当前页数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param PageToken: 翻页Token，当已经到最后一页时，该字段为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :PageToken, :RequestId
        
        def initialize(total=nil, data=nil, pagetoken=nil, requestid=nil)
          @Total = total
          @Data = data
          @PageToken = pagetoken
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @Data = params['Data']
          @PageToken = params['PageToken']
          @RequestId = params['RequestId']
        end
      end

      # Result结果详情
      class ImageResult < TencentCloud::Common::AbstractModel
        # @param HitFlag: 违规标志
        # 0 未命中
        # 1 命中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HitFlag: Integer
        # @param Label: 命中的标签
        # Porn 色情
        # Sexy 性感
        # Illegal 违法
        # Abuse 谩骂
        # Ad 广告
        # 以及其他令人反感、不安全或不适宜的内容类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Suggestion: 审核建议，可选值：
        # Pass 通过，
        # Review 建议人审，
        # Block 确认违规
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Score: 得分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param Results: 画面截帧图片结果集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param Url: 图片URL地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param Extra: 附加字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String

        attr_accessor :HitFlag, :Label, :Suggestion, :Score, :Results, :Url, :Extra
        
        def initialize(hitflag=nil, label=nil, suggestion=nil, score=nil, results=nil, url=nil, extra=nil)
          @HitFlag = hitflag
          @Label = label
          @Suggestion = suggestion
          @Score = score
          @Results = results
          @Url = url
          @Extra = extra
        end

        def deserialize(params)
          @HitFlag = params['HitFlag']
          @Label = params['Label']
          @Suggestion = params['Suggestion']
          @Score = params['Score']
          @Results = params['Results']
          @Url = params['Url']
          @Extra = params['Extra']
        end
      end

      # 图片输出结果的子结果
      class ImageResultResult < TencentCloud::Common::AbstractModel
        # @param Scene: 场景
        # Porn 色情
        # Sexy 性感
        # Illegal 违法
        # Abuse 谩骂
        # Ad 广告
        # 以及其他令人反感、不安全或不适宜的内容类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scene: String
        # @param HitFlag: 是否命中
        # 0 未命中
        # 1 命中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HitFlag: Integer
        # @param Suggestion: 审核建议，可选值：
        # Pass 通过，
        # Review 建议人审，
        # Block 确认违规
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Label: 识别结果一级标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param SubLabel: 识别结果二级标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubLabel: String
        # @param Score: 分数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param Names: 适应特定场景，则该数据为名称列表，否则为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Names: Array
        # @param Text: 图片OCR文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Details: 其他详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Details: Array

        attr_accessor :Scene, :HitFlag, :Suggestion, :Label, :SubLabel, :Score, :Names, :Text, :Details
        
        def initialize(scene=nil, hitflag=nil, suggestion=nil, label=nil, sublabel=nil, score=nil, names=nil, text=nil, details=nil)
          @Scene = scene
          @HitFlag = hitflag
          @Suggestion = suggestion
          @Label = label
          @SubLabel = sublabel
          @Score = score
          @Names = names
          @Text = text
          @Details = details
        end

        def deserialize(params)
          @Scene = params['Scene']
          @HitFlag = params['HitFlag']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @SubLabel = params['SubLabel']
          @Score = params['Score']
          @Names = params['Names']
          @Text = params['Text']
          @Details = params['Details']
        end
      end

      # 具体场景下的图片识别结果
      class ImageResultsResultDetail < TencentCloud::Common::AbstractModel
        # @param Name: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Text: OCR识别文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Location: 位置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: :class:`Tencentcloud::Vm.v20201229.models.ImageResultsResultDetailLocation`
        # @param Label: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param LibId: 库ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibId: String
        # @param LibName: 库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibName: String
        # @param Keywords: 命中的关键词
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keywords: Array
        # @param Suggestion: 建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Score: 得分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param SubLabelCode: 子标签码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubLabelCode: String

        attr_accessor :Name, :Text, :Location, :Label, :LibId, :LibName, :Keywords, :Suggestion, :Score, :SubLabelCode
        
        def initialize(name=nil, text=nil, location=nil, label=nil, libid=nil, libname=nil, keywords=nil, suggestion=nil, score=nil, sublabelcode=nil)
          @Name = name
          @Text = text
          @Location = location
          @Label = label
          @LibId = libid
          @LibName = libname
          @Keywords = keywords
          @Suggestion = suggestion
          @Score = score
          @SubLabelCode = sublabelcode
        end

        def deserialize(params)
          @Name = params['Name']
          @Text = params['Text']
          unless params['Location'].nil?
            @Location = ImageResultsResultDetailLocation.new.deserialize(params[Location])
          end
          @Label = params['Label']
          @LibId = params['LibId']
          @LibName = params['LibName']
          @Keywords = params['Keywords']
          @Suggestion = params['Suggestion']
          @Score = params['Score']
          @SubLabelCode = params['SubLabelCode']
        end
      end

      # 图片详情位置信息
      class ImageResultsResultDetailLocation < TencentCloud::Common::AbstractModel
        # @param X: x坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type X: Float
        # @param Y: y坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Y: Float
        # @param Width: 宽度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Width: Integer
        # @param Height: 高度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Height: Integer
        # @param Rotate: 旋转角度
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 图片段信息
      class ImageSegments < TencentCloud::Common::AbstractModel
        # @param OffsetTime: 截帧时间。单位为秒。
        # 点播文件：该值为相对于视频偏移时间，单位为秒，例如：0，5，10
        # 直播流：该值为时间戳，例如：1594650717
        # @type OffsetTime: String
        # @param Result: 画面截帧结果详情
        # @type Result: :class:`Tencentcloud::Vm.v20201229.models.ImageResult`

        attr_accessor :OffsetTime, :Result
        
        def initialize(offsettime=nil, result=nil)
          @OffsetTime = offsettime
          @Result = result
        end

        def deserialize(params)
          @OffsetTime = params['OffsetTime']
          unless params['Result'].nil?
            @Result = ImageResult.new.deserialize(params[Result])
          end
        end
      end

      # 输入信息详情
      class InputInfo < TencentCloud::Common::AbstractModel
        # @param Type: 传入的类型可选：URL，COS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Url: Url地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param BucketInfo: 桶信息。当输入当时COS时，该字段不为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BucketInfo: String

        attr_accessor :Type, :Url, :BucketInfo
        
        def initialize(type=nil, url=nil, bucketinfo=nil)
          @Type = type
          @Url = url
          @BucketInfo = bucketinfo
        end

        def deserialize(params)
          @Type = params['Type']
          @Url = params['Url']
          @BucketInfo = params['BucketInfo']
        end
      end

      # 媒体类型
      class MediaInfo < TencentCloud::Common::AbstractModel
        # @param Duration: 流检测时分片时长
        # 注意：此字段可能返回 0，表示取不到有效值。
        # @type Duration: Integer

        attr_accessor :Duration
        
        def initialize(duration=nil)
          @Duration = duration
        end

        def deserialize(params)
          @Duration = params['Duration']
        end
      end

      #  数据存储信息
      class StorageInfo < TencentCloud::Common::AbstractModel
        # @param Type: 类型 可选：
        # URL 资源链接类型
        # COS 腾讯云对象存储类型
        # @type Type: String
        # @param Url: 资源链接
        # @type Url: String
        # @param BucketInfo: 腾讯云存储桶信息
        # @type BucketInfo: :class:`Tencentcloud::Vm.v20201229.models.BucketInfo`

        attr_accessor :Type, :Url, :BucketInfo
        
        def initialize(type=nil, url=nil, bucketinfo=nil)
          @Type = type
          @Url = url
          @BucketInfo = bucketinfo
        end

        def deserialize(params)
          @Type = params['Type']
          @Url = params['Url']
          unless params['BucketInfo'].nil?
            @BucketInfo = BucketInfo.new.deserialize(params[BucketInfo])
          end
        end
      end

      # 任务数据
      class TaskData < TencentCloud::Common::AbstractModel
        # @param DataId: 输入的数据ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param Status: 状态，可选：PENDING，RUNNING，ERROR，FINISH，CANCELLED
        # @type Status: String
        # @param Name: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param BizType: 业务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizType: String
        # @param Type: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Suggestion: 建议，可选：Pass， Block 和 Review
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Labels: 任务违规标签
        # @type Labels: Array
        # @param MediaInfo: 媒体信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaInfo: :class:`Tencentcloud::Vm.v20201229.models.MediaInfo`
        # @param CreatedAt: 创建时间（ iso 8601 格式）
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间（ iso 8601 格式）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String

        attr_accessor :DataId, :TaskId, :Status, :Name, :BizType, :Type, :Suggestion, :Labels, :MediaInfo, :CreatedAt, :UpdatedAt
        
        def initialize(dataid=nil, taskid=nil, status=nil, name=nil, biztype=nil, type=nil, suggestion=nil, labels=nil, mediainfo=nil, createdat=nil, updatedat=nil)
          @DataId = dataid
          @TaskId = taskid
          @Status = status
          @Name = name
          @BizType = biztype
          @Type = type
          @Suggestion = suggestion
          @Labels = labels
          @MediaInfo = mediainfo
          @CreatedAt = createdat
          @UpdatedAt = updatedat
        end

        def deserialize(params)
          @DataId = params['DataId']
          @TaskId = params['TaskId']
          @Status = params['Status']
          @Name = params['Name']
          @BizType = params['BizType']
          @Type = params['Type']
          @Suggestion = params['Suggestion']
          @Labels = params['Labels']
          unless params['MediaInfo'].nil?
            @MediaInfo = MediaInfo.new.deserialize(params[MediaInfo])
          end
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
        end
      end

      # 任务筛选器
      class TaskFilter < TencentCloud::Common::AbstractModel
        # @param BizType: 任务业务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizType: Array
        # @param Type: 任务类型，可选：VIDEO，AUDIO， LIVE_VIDEO, LIVE_AUDIO
        # @type Type: String
        # @param Suggestion: 建议，可选：Pass, Review,Block
        # @type Suggestion: String
        # @param TaskStatus: 状态，可选：PENDING，RUNNING，ERROR，FINISH，CANCELLED
        # @type TaskStatus: String

        attr_accessor :BizType, :Type, :Suggestion, :TaskStatus
        
        def initialize(biztype=nil, type=nil, suggestion=nil, taskstatus=nil)
          @BizType = biztype
          @Type = type
          @Suggestion = suggestion
          @TaskStatus = taskstatus
        end

        def deserialize(params)
          @BizType = params['BizType']
          @Type = params['Type']
          @Suggestion = params['Suggestion']
          @TaskStatus = params['TaskStatus']
        end
      end

      # 音视频任务结构
      class TaskInput < TencentCloud::Common::AbstractModel
        # @param DataId: 数据ID
        # @type DataId: String
        # @param Name: 任务名
        # @type Name: String
        # @param Input: 任务输入
        # @type Input: :class:`Tencentcloud::Vm.v20201229.models.StorageInfo`

        attr_accessor :DataId, :Name, :Input
        
        def initialize(dataid=nil, name=nil, input=nil)
          @DataId = dataid
          @Name = name
          @Input = input
        end

        def deserialize(params)
          @DataId = params['DataId']
          @Name = params['Name']
          unless params['Input'].nil?
            @Input = StorageInfo.new.deserialize(params[Input])
          end
        end
      end

      # 任务输出标签
      class TaskLabel < TencentCloud::Common::AbstractModel
        # @param Label: 命中的标签
        # Porn 色情
        # Sexy 性感
        # Illegal 违法
        # Abuse 谩骂
        # Ad 广告
        # 以及其他令人反感、不安全或不适宜的内容类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Suggestion: 审核建议，可选值：
        # Pass 通过，
        # Review 建议人审，
        # Block 确认违规
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Score: 得分，分数是 0 ～ 100
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer

        attr_accessor :Label, :Suggestion, :Score
        
        def initialize(label=nil, suggestion=nil, score=nil)
          @Label = label
          @Suggestion = suggestion
          @Score = score
        end

        def deserialize(params)
          @Label = params['Label']
          @Suggestion = params['Suggestion']
          @Score = params['Score']
        end
      end

      # 创建任务时的返回结果
      class TaskResult < TencentCloud::Common::AbstractModel
        # @param DataId: 请求时传入的DataId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataId: String
        # @param TaskId: TaskId，任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param Code: 错误码。如果code为OK，则表示创建成功，其他则参考公共错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String
        # @param Message: 如果错误，该字段表示错误详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String

        attr_accessor :DataId, :TaskId, :Code, :Message
        
        def initialize(dataid=nil, taskid=nil, code=nil, message=nil)
          @DataId = dataid
          @TaskId = taskid
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @DataId = params['DataId']
          @TaskId = params['TaskId']
          @Code = params['Code']
          @Message = params['Message']
        end
      end

    end
  end
end

