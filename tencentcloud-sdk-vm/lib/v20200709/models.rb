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
    module V20200709
      # 音频输出参数
      class AudioResult < TencentCloud::Common::AbstractModel
        # @param HitFlag: 是否命中
        # 0 未命中
        # 1 命中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HitFlag: Integer
        # @param Label: 命中的标签
        # Porn 色情
        # Polity 政治
        # Illegal 违法
        # Abuse 谩骂
        # Terror 暴恐
        # Ad 广告
        # Moan 呻吟
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
        # @param LanguageResults: 音频语种检测结果
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
        # @param Label: 语种
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
        # @type Result: :class:`Tencentcloud::Vm.v20200709.models.AudioResult`

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

      # CreateBizConfig请求参数结构体
      class CreateBizConfigRequest < TencentCloud::Common::AbstractModel
        # @param BizType: 业务ID，仅限英文字母、数字和下划线（_）组成，长度不超过8位
        # @type BizType: String
        # @param MediaModeration: 审核分类信息
        # @type MediaModeration: :class:`Tencentcloud::Vm.v20200709.models.MediaModerationConfig`
        # @param BizName: 业务名称，用于标识业务场景，长度不超过32位
        # @type BizName: String
        # @param ModerationCategories: 审核内容，可选：Polity (政治); Porn (色情); Illegal(违法);Abuse (谩骂); Terror (暴恐); Ad (广告); Custom (自定义);
        # @type ModerationCategories: Array

        attr_accessor :BizType, :MediaModeration, :BizName, :ModerationCategories
        
        def initialize(biztype=nil, mediamoderation=nil, bizname=nil, moderationcategories=nil)
          @BizType = biztype
          @MediaModeration = mediamoderation
          @BizName = bizname
          @ModerationCategories = moderationcategories
        end

        def deserialize(params)
          @BizType = params['BizType']
          unless params['MediaModeration'].nil?
            @MediaModeration = MediaModerationConfig.new.deserialize(params[MediaModeration])
          end
          @BizName = params['BizName']
          @ModerationCategories = params['ModerationCategories']
        end
      end

      # CreateBizConfig返回参数结构体
      class CreateBizConfigResponse < TencentCloud::Common::AbstractModel
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
        # @param BizType: 业务类型, 定义 模版策略，输出存储配置。如果没有BizType，可以先参考 【创建业务配置】接口进行创建
        # @type BizType: String
        # @param Type: 任务类型：可选VIDEO（点播视频），LIVE_VIDEO（直播视频）
        # @type Type: String
        # @param Tasks: 输入的任务信息，最多可以同时创建10个任务
        # @type Tasks: Array
        # @param Seed: 回调签名key，具体可以查看签名文档。
        # @type Seed: String
        # @param CallbackUrl: 接收审核信息回调地址，如果设置，则审核过程中产生的违规音频片段和画面截帧发送此接口
        # @type CallbackUrl: String
        # @param Priority: 审核排队优先级。当您有多个视频审核任务排队时，可以根据这个参数控制排队优先级。用于处理插队等逻辑。默认该参数为0
        # @type Priority: Integer

        attr_accessor :BizType, :Type, :Tasks, :Seed, :CallbackUrl, :Priority
        
        def initialize(biztype=nil, type=nil, tasks=nil, seed=nil, callbackurl=nil, priority=nil)
          @BizType = biztype
          @Type = type
          @Tasks = tasks
          @Seed = seed
          @CallbackUrl = callbackurl
          @Priority = priority
        end

        def deserialize(params)
          @BizType = params['BizType']
          @Type = params['Type']
          @Tasks = params['Tasks']
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
        # @type MediaInfo: :class:`Tencentcloud::Vm.v20200709.models.MediaInfo`
        # @param InputInfo: 任务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputInfo: :class:`Tencentcloud::Vm.v20200709.models.InputInfo`
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param TryInSeconds: 在秒后重试
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TryInSeconds: Integer
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

        attr_accessor :TaskId, :DataId, :BizType, :Name, :Status, :Type, :Suggestion, :Labels, :MediaInfo, :InputInfo, :CreatedAt, :UpdatedAt, :TryInSeconds, :ImageSegments, :AudioSegments, :ErrorType, :ErrorDescription, :RequestId
        
        def initialize(taskid=nil, dataid=nil, biztype=nil, name=nil, status=nil, type=nil, suggestion=nil, labels=nil, mediainfo=nil, inputinfo=nil, createdat=nil, updatedat=nil, tryinseconds=nil, imagesegments=nil, audiosegments=nil, errortype=nil, errordescription=nil, requestid=nil)
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
          @TryInSeconds = tryinseconds
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
          @TryInSeconds = params['TryInSeconds']
          @ImageSegments = params['ImageSegments']
          @AudioSegments = params['AudioSegments']
          @ErrorType = params['ErrorType']
          @ErrorDescription = params['ErrorDescription']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVideoStat请求参数结构体
      class DescribeVideoStatRequest < TencentCloud::Common::AbstractModel
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
          @Filters = params['Filters']
        end
      end

      # DescribeVideoStat返回参数结构体
      class DescribeVideoStatResponse < TencentCloud::Common::AbstractModel
        # @param Overview: 识别结果统计
        # @type Overview: :class:`Tencentcloud::Vm.v20200709.models.Overview`
        # @param TrendCount: 识别量统计
        # @type TrendCount: Array
        # @param EvilCount: 违规数据分布
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
            @Overview = Overview.new.deserialize(params[Overview])
          end
          @TrendCount = params['TrendCount']
          @EvilCount = params['EvilCount']
          @RequestId = params['RequestId']
        end
      end

      # 违规数据分布
      class EvilCount < TencentCloud::Common::AbstractModel
        # @param EvilType: 违规类型：
        # Terror	24001
        # Porn	20002
        # Polity	20001
        # Ad	20105
        # Abuse	20007
        # Illegal	20006
        # Spam	25001
        # Moan	26001
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

      # Cos FileOutput
      class FileOutput < TencentCloud::Common::AbstractModel
        # @param Bucket: 存储的Bucket
        # @type Bucket: String
        # @param Region: Cos Region
        # @type Region: String
        # @param ObjectPrefix: 对象前缀
        # @type ObjectPrefix: String

        attr_accessor :Bucket, :Region, :ObjectPrefix
        
        def initialize(bucket=nil, region=nil, objectprefix=nil)
          @Bucket = bucket
          @Region = region
          @ObjectPrefix = objectprefix
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @Region = params['Region']
          @ObjectPrefix = params['ObjectPrefix']
        end
      end

      # 视频过滤条件
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
        # Polity 政治
        # Illegal 违法
        # Abuse 谩骂
        # Terror 暴恐
        # Ad 广告
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
        # Polity 政治
        # Illegal 违法
        # Abuse 谩骂
        # Terror 暴恐
        # Ad 广告
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
        # @param Label: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param SubLabel: 子标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubLabel: String
        # @param Score: 分数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param Names: 如果命中场景为涉政，则该数据为人物姓名列表，否则null
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
        # @type Location: :class:`Tencentcloud::Vm.v20200709.models.ImageResultsResultDetailLocation`
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
        # @param OffsetTime: 截帧时间。
        # 点播文件：该值为相对于视频偏移时间，单位为秒，例如：0，5，10
        # 直播流：该值为时间戳，例如：1594650717
        # @type OffsetTime: String
        # @param Result: 画面截帧结果详情
        # @type Result: :class:`Tencentcloud::Vm.v20200709.models.ImageResult`

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
        # @param Codecs: 编码格式
        # @type Codecs: String
        # @param Duration: 流检测时分片时长
        # 注意：此字段可能返回 0，表示取不到有效值。
        # @type Duration: Integer
        # @param Width: 宽，单位为像素
        # @type Width: Integer
        # @param Height: 高，单位为像素
        # @type Height: Integer

        attr_accessor :Codecs, :Duration, :Width, :Height
        
        def initialize(codecs=nil, duration=nil, width=nil, height=nil)
          @Codecs = codecs
          @Duration = duration
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @Codecs = params['Codecs']
          @Duration = params['Duration']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # 媒体审核配置
      class MediaModerationConfig < TencentCloud::Common::AbstractModel
        # @param UseOCR: 是否使用OCR，默认为true
        # @type UseOCR: Boolean
        # @param UseAudio: 是否使用音频，默认为true。视频场景下，默认为 false
        # @type UseAudio: Boolean
        # @param ImageFrequency: 图片取帧频率, 单位（秒/帧），默认 5， 可选 1 ～ 300
        # @type ImageFrequency: Integer
        # @param AudioFrequency: 音频片段长度。单位为：秒
        # @type AudioFrequency: Integer
        # @param SegmentOutput: 临时文件存储位置
        # @type SegmentOutput: :class:`Tencentcloud::Vm.v20200709.models.FileOutput`
        # @param CallbackUrl: 回调地址
        # @type CallbackUrl: String

        attr_accessor :UseOCR, :UseAudio, :ImageFrequency, :AudioFrequency, :SegmentOutput, :CallbackUrl
        
        def initialize(useocr=nil, useaudio=nil, imagefrequency=nil, audiofrequency=nil, segmentoutput=nil, callbackurl=nil)
          @UseOCR = useocr
          @UseAudio = useaudio
          @ImageFrequency = imagefrequency
          @AudioFrequency = audiofrequency
          @SegmentOutput = segmentoutput
          @CallbackUrl = callbackurl
        end

        def deserialize(params)
          @UseOCR = params['UseOCR']
          @UseAudio = params['UseAudio']
          @ImageFrequency = params['ImageFrequency']
          @AudioFrequency = params['AudioFrequency']
          unless params['SegmentOutput'].nil?
            @SegmentOutput = FileOutput.new.deserialize(params[SegmentOutput])
          end
          @CallbackUrl = params['CallbackUrl']
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

      #  数据存储信息
      class StorageInfo < TencentCloud::Common::AbstractModel
        # @param Type: 类型 可选：
        # URL 资源链接类型
        # COS 腾讯云对象存储类型
        # @type Type: String
        # @param Url: 资源链接
        # @type Url: String
        # @param BucketInfo: 腾讯云存储桶信息
        # @type BucketInfo: :class:`Tencentcloud::Vm.v20200709.models.BucketInfo`

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

      # 音视频任务结构
      class TaskInput < TencentCloud::Common::AbstractModel
        # @param DataId: 数据ID
        # @type DataId: String
        # @param Name: 任务名
        # @type Name: String
        # @param Input: 任务输入
        # @type Input: :class:`Tencentcloud::Vm.v20200709.models.StorageInfo`

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
        # Polity 政治
        # Illegal 违法
        # Abuse 谩骂
        # Terror 暴恐
        # Ad 广告
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

      # 识别量统计
      class TrendCount < TencentCloud::Common::AbstractModel
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
        # @param Date: 日期
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

    end
  end
end

