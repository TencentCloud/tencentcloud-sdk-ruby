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
  module Ams
    module V20201229
      # 音频输出参数
      class AudioResult < TencentCloud::Common::AbstractModel
        # @param HitFlag: 是否命中
        # 0 未命中
        # 1 命中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HitFlag: Integer
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        # 以及其他令人反感、不安全或不适宜的内容类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
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
        # @type Duration: String
        # @param Extra: 拓展字段
        # @type Extra: String
        # @param TextResults: 文本识别结果
        # @type TextResults: Array
        # @param MoanResults: 音频呻吟检测结果
        # @type MoanResults: Array
        # @param LanguageResults: 音频语言检测结果
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
          unless params['TextResults'].nil?
            @TextResults = []
            params['TextResults'].each do |i|
              audioresultdetailtextresult_tmp = AudioResultDetailTextResult.new
              audioresultdetailtextresult_tmp.deserialize(i)
              @TextResults << audioresultdetailtextresult_tmp
            end
          end
          unless params['MoanResults'].nil?
            @MoanResults = []
            params['MoanResults'].each do |i|
              audioresultdetailmoanresult_tmp = AudioResultDetailMoanResult.new
              audioresultdetailmoanresult_tmp.deserialize(i)
              @MoanResults << audioresultdetailmoanresult_tmp
            end
          end
          unless params['LanguageResults'].nil?
            @LanguageResults = []
            params['LanguageResults'].each do |i|
              audioresultdetaillanguageresult_tmp = AudioResultDetailLanguageResult.new
              audioresultdetaillanguageresult_tmp.deserialize(i)
              @LanguageResults << audioresultdetaillanguageresult_tmp
            end
          end
        end
      end

      # 音频小语种检测结果
      class AudioResultDetailLanguageResult < TencentCloud::Common::AbstractModel
        # @param Label: 语言信息
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
        # @param Label: 固定为Moan（呻吟）
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
        # @param Suggestion: 审核建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param LibType: 词库类型 1 黑白库 2 自定义库
        # @type LibType: Integer

        attr_accessor :Label, :Keywords, :LibId, :LibName, :Score, :Suggestion, :LibType
        
        def initialize(label=nil, keywords=nil, libid=nil, libname=nil, score=nil, suggestion=nil, libtype=nil)
          @Label = label
          @Keywords = keywords
          @LibId = libid
          @LibName = libname
          @Score = score
          @Suggestion = suggestion
          @LibType = libtype
        end

        def deserialize(params)
          @Label = params['Label']
          @Keywords = params['Keywords']
          @LibId = params['LibId']
          @LibName = params['LibName']
          @Score = params['Score']
          @Suggestion = params['Suggestion']
          @LibType = params['LibType']
        end
      end

      # 声音段信息
      class AudioSegments < TencentCloud::Common::AbstractModel
        # @param OffsetTime: 截帧时间, 单位：秒
        # 点播文件：该值为相对于视频偏移时间，单位为秒，例如：0，5，10
        # 直播流：该值为时间戳，例如：1594650717
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OffsetTime: String
        # @param Result: 结果集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Ams.v20201229.models.AudioResult`

        attr_accessor :OffsetTime, :Result
        
        def initialize(offsettime=nil, result=nil)
          @OffsetTime = offsettime
          @Result = result
        end

        def deserialize(params)
          @OffsetTime = params['OffsetTime']
          unless params['Result'].nil?
            @Result = AudioResult.new
            @Result.deserialize(params['Result'])
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

      # CreateAudioModerationSyncTask请求参数结构体
      class CreateAudioModerationSyncTaskRequest < TencentCloud::Common::AbstractModel
        # @param BizType: Biztype为策略的具体的编号，用于接口调度，在内容安全控制台中可配置。不同Biztype关联不同的业务场景与识别能力策略，调用前请确认正确的Biztype。Biztype仅为数字、字母与下划线的组合，长度为3-32个字符；调用时不传入Biztype代表采用默认的识别策略。
        # @type BizType: String
        # @param DataId: 数据标识，可以由英文字母、数字、下划线、-、@#组成，不超过64个字符
        # @type DataId: String
        # @param FileFormat: 音频文件资源格式，当前为mp3，wav，请按照实际文件格式填入
        # @type FileFormat: String
        # @param Name: 文件名称，可以由英文字母、数字、下划线、-、@#组成，不超过64个字符
        # @type Name: String
        # @param FileContent: 数据Base64编码，短音频同步接口仅传入可音频内容；
        # 支持范围：文件大小不能超过5M，时长不可超过60s，码率范围为8-16Kbps；
        # 支持格式：wav、mp3
        # @type FileContent: String
        # @param FileUrl: 音频资源访问链接，与FileContent参数必须二选一输入；
        # 支持范围：同FileContent；
        # @type FileUrl: String

        attr_accessor :BizType, :DataId, :FileFormat, :Name, :FileContent, :FileUrl
        
        def initialize(biztype=nil, dataid=nil, fileformat=nil, name=nil, filecontent=nil, fileurl=nil)
          @BizType = biztype
          @DataId = dataid
          @FileFormat = fileformat
          @Name = name
          @FileContent = filecontent
          @FileUrl = fileurl
        end

        def deserialize(params)
          @BizType = params['BizType']
          @DataId = params['DataId']
          @FileFormat = params['FileFormat']
          @Name = params['Name']
          @FileContent = params['FileContent']
          @FileUrl = params['FileUrl']
        end
      end

      # CreateAudioModerationSyncTask返回参数结构体
      class CreateAudioModerationSyncTaskResponse < TencentCloud::Common::AbstractModel
        # @param DataId: 请求接口时传入的数据标识
        # @type DataId: String
        # @param Name: 文件名称，可以由英文字母、数字、下划线、-、@#组成，不超过64个字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param BizType: Biztype为策略的具体的编号，用于接口调度，在内容安全控制台中可配置。不同Biztype关联不同的业务场景与识别能力策略，调用前请确认正确的Biztype。Biztype仅为数字、字母与下划线的组合，长度为3-32个字符；调用时不传入Biztype代表采用默认的识别策略。
        # @type BizType: String
        # @param Suggestion: 智能审核服务对于内容违规类型的等级，可选值：
        # Pass 建议通过；
        # Reveiw 建议复审；
        # Block 建议屏蔽；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Label: 智能审核服务对于内容违规类型的判断，详见返回值列表
        # 如：Label：Porn（色情）；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param AsrText: 音频文本，备注：这里的文本最大只返回前1000个字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrText: String
        # @param TextResults: 音频中对话内容审核结果；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextResults: Array
        # @param MoanResults: 音频中低俗内容审核结果；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MoanResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataId, :Name, :BizType, :Suggestion, :Label, :AsrText, :TextResults, :MoanResults, :RequestId
        
        def initialize(dataid=nil, name=nil, biztype=nil, suggestion=nil, label=nil, asrtext=nil, textresults=nil, moanresults=nil, requestid=nil)
          @DataId = dataid
          @Name = name
          @BizType = biztype
          @Suggestion = suggestion
          @Label = label
          @AsrText = asrtext
          @TextResults = textresults
          @MoanResults = moanresults
          @RequestId = requestid
        end

        def deserialize(params)
          @DataId = params['DataId']
          @Name = params['Name']
          @BizType = params['BizType']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @AsrText = params['AsrText']
          unless params['TextResults'].nil?
            @TextResults = []
            params['TextResults'].each do |i|
              textresult_tmp = TextResult.new
              textresult_tmp.deserialize(i)
              @TextResults << textresult_tmp
            end
          end
          unless params['MoanResults'].nil?
            @MoanResults = []
            params['MoanResults'].each do |i|
              moanresult_tmp = MoanResult.new
              moanresult_tmp.deserialize(i)
              @MoanResults << moanresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateAudioModerationTask请求参数结构体
      class CreateAudioModerationTaskRequest < TencentCloud::Common::AbstractModel
        # @param Tasks: 输入的任务信息，最多可以同时创建10个任务
        # @type Tasks: Array
        # @param BizType: 默认为：default，客户可以在音频审核控制台配置自己的BizType
        # @type BizType: String
        # @param Type: 审核类型，这里可选：AUDIO (点播音频)和 LIVE_AUDIO（直播音频），默认为 AUDIIO
        # @type Type: String
        # @param Seed: （可选）回调签名key，具体可以查看 回调签名示例
        # @type Seed: String
        # @param CallbackUrl: 接收审核信息回调地址，如果设置，则审核过程中产生的违规音频片段和画面截帧发送此接口
        # @type CallbackUrl: String

        attr_accessor :Tasks, :BizType, :Type, :Seed, :CallbackUrl
        
        def initialize(tasks=nil, biztype=nil, type=nil, seed=nil, callbackurl=nil)
          @Tasks = tasks
          @BizType = biztype
          @Type = type
          @Seed = seed
          @CallbackUrl = callbackurl
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              taskinput_tmp = TaskInput.new
              taskinput_tmp.deserialize(i)
              @Tasks << taskinput_tmp
            end
          end
          @BizType = params['BizType']
          @Type = params['Type']
          @Seed = params['Seed']
          @CallbackUrl = params['CallbackUrl']
        end
      end

      # CreateAudioModerationTask返回参数结构体
      class CreateAudioModerationTaskResponse < TencentCloud::Common::AbstractModel
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
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              taskresult_tmp = TaskResult.new
              taskresult_tmp.deserialize(i)
              @Results << taskresult_tmp
            end
          end
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
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param DataId: 审核时传入的数据Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataId: String
        # @param BizType: 业务类型，用户可以在控制台查看自己配置的BizType
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizType: String
        # @param Name: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Status: 查询内容审核任务的状态，可选值：
        # FINISH 已完成
        # PENDING 等待中
        # RUNNING 进行中
        # ERROR 出错
        # CANCELLED 已取消
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Type: 任务类型：可选AUDIO（点播音频），LIVE_AUDIO（直播音频）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Suggestion: 智能审核服务对于内容违规类型的等级，可选值：
        # Pass 建议通过；
        # Reveiw 建议复审；
        # Block 建议屏蔽；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Labels: 智能审核服务对于内容违规类型的判断，详见返回值列表
        # 如：Label：Porn（色情）；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param InputInfo: 输入的媒体信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputInfo: :class:`Tencentcloud::Ams.v20201229.models.InputInfo`
        # @param AudioText: 音频文本，备注：这里的文本最大只返回前1000个字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioText: String
        # @param AudioSegments: 音频片段审核信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioSegments: Array
        # @param ErrorType: 错误类型，如果任务状态为Error，则该字段不为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorType: String
        # @param ErrorDescription: 错误描述，如果任务状态为Error，则该字段不为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorDescription: String
        # @param CreatedAt: 任务创建时间，格式为 ISO 8601
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedAt: 任务最后更新时间，格式为 ISO 8601
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :DataId, :BizType, :Name, :Status, :Type, :Suggestion, :Labels, :InputInfo, :AudioText, :AudioSegments, :ErrorType, :ErrorDescription, :CreatedAt, :UpdatedAt, :RequestId
        
        def initialize(taskid=nil, dataid=nil, biztype=nil, name=nil, status=nil, type=nil, suggestion=nil, labels=nil, inputinfo=nil, audiotext=nil, audiosegments=nil, errortype=nil, errordescription=nil, createdat=nil, updatedat=nil, requestid=nil)
          @TaskId = taskid
          @DataId = dataid
          @BizType = biztype
          @Name = name
          @Status = status
          @Type = type
          @Suggestion = suggestion
          @Labels = labels
          @InputInfo = inputinfo
          @AudioText = audiotext
          @AudioSegments = audiosegments
          @ErrorType = errortype
          @ErrorDescription = errordescription
          @CreatedAt = createdat
          @UpdatedAt = updatedat
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
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              tasklabel_tmp = TaskLabel.new
              tasklabel_tmp.deserialize(i)
              @Labels << tasklabel_tmp
            end
          end
          unless params['InputInfo'].nil?
            @InputInfo = InputInfo.new
            @InputInfo.deserialize(params['InputInfo'])
          end
          @AudioText = params['AudioText']
          unless params['AudioSegments'].nil?
            @AudioSegments = []
            params['AudioSegments'].each do |i|
              audiosegments_tmp = AudioSegments.new
              audiosegments_tmp.deserialize(i)
              @AudioSegments << audiosegments_tmp
            end
          end
          @ErrorType = params['ErrorType']
          @ErrorDescription = params['ErrorDescription']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasks请求参数结构体
      class DescribeTasksRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页展示多少条。（默认展示10条）
        # @type Limit: Integer
        # @param Filter: 过滤参数
        # @type Filter: :class:`Tencentcloud::Ams.v20201229.models.TaskFilter`
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
            @Filter = TaskFilter.new
            @Filter.deserialize(params['Filter'])
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
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              taskdata_tmp = TaskData.new
              taskdata_tmp.deserialize(i)
              @Data << taskdata_tmp
            end
          end
          @PageToken = params['PageToken']
          @RequestId = params['RequestId']
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
        # @type BucketInfo: :class:`Tencentcloud::Ams.v20201229.models.BucketInfo`

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
            @BucketInfo = BucketInfo.new
            @BucketInfo.deserialize(params['BucketInfo'])
          end
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
        # @param Thumbnail: 缩略图
        # @type Thumbnail: String

        attr_accessor :Codecs, :Duration, :Width, :Height, :Thumbnail
        
        def initialize(codecs=nil, duration=nil, width=nil, height=nil, thumbnail=nil)
          @Codecs = codecs
          @Duration = duration
          @Width = width
          @Height = height
          @Thumbnail = thumbnail
        end

        def deserialize(params)
          @Codecs = params['Codecs']
          @Duration = params['Duration']
          @Width = params['Width']
          @Height = params['Height']
          @Thumbnail = params['Thumbnail']
        end
      end

      # 呻吟低俗检测结果
      class MoanResult < TencentCloud::Common::AbstractModel
        # @param Label: 固定取值为Moan（呻吟/娇喘），如音频中无复杂类型「MoanResult」的返回则代表改音频中无呻吟/娇喘相关违规内容；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Score: 机器判断当前分类的置信度，取值范围：0~100。分数越高，表示越有可能属于当前分类。
        # （如：Moan 99，则该样本属于呻吟/娇喘的置信度非常高。）
        # @type Score: Integer
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        # @type Suggestion: String
        # @param StartTime: 违规事件开始时间，单位为毫秒（ms）；
        # @type StartTime: Float
        # @param EndTime: 违规事件结束时间，单位为毫秒（ms）；
        # @type EndTime: Float

        attr_accessor :Label, :Score, :Suggestion, :StartTime, :EndTime
        
        def initialize(label=nil, score=nil, suggestion=nil, starttime=nil, endtime=nil)
          @Label = label
          @Score = score
          @Suggestion = suggestion
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Label = params['Label']
          @Score = params['Score']
          @Suggestion = params['Suggestion']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
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
        # @type BucketInfo: :class:`Tencentcloud::Ams.v20201229.models.BucketInfo`

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
            @BucketInfo = BucketInfo.new
            @BucketInfo.deserialize(params['BucketInfo'])
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
        # @param Suggestion: 建议。可选：Pass，Block，Review
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param MediaInfo: 输入信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaInfo: :class:`Tencentcloud::Ams.v20201229.models.MediaInfo`
        # @param Labels: 任务违规标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param CreatedAt: 创建时间（ iso 8601 格式）
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间（ iso 8601 格式）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String

        attr_accessor :DataId, :TaskId, :Status, :Name, :BizType, :Type, :Suggestion, :MediaInfo, :Labels, :CreatedAt, :UpdatedAt
        
        def initialize(dataid=nil, taskid=nil, status=nil, name=nil, biztype=nil, type=nil, suggestion=nil, mediainfo=nil, labels=nil, createdat=nil, updatedat=nil)
          @DataId = dataid
          @TaskId = taskid
          @Status = status
          @Name = name
          @BizType = biztype
          @Type = type
          @Suggestion = suggestion
          @MediaInfo = mediainfo
          @Labels = labels
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
          unless params['MediaInfo'].nil?
            @MediaInfo = MediaInfo.new
            @MediaInfo.deserialize(params['MediaInfo'])
          end
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              tasklabel_tmp = TaskLabel.new
              tasklabel_tmp.deserialize(i)
              @Labels << tasklabel_tmp
            end
          end
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
        end
      end

      # 任务筛选器
      class TaskFilter < TencentCloud::Common::AbstractModel
        # @param BizType: 任务业务类型
        # @type BizType: String
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
        # @type Input: :class:`Tencentcloud::Ams.v20201229.models.StorageInfo`

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
            @Input = StorageInfo.new
            @Input.deserialize(params['Input'])
          end
        end
      end

      # 任务输出标签
      class TaskLabel < TencentCloud::Common::AbstractModel
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        # 以及其他令人反感、不安全或不适宜的内容类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
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

      # 音频文本内容审核结果
      class TextResult < TencentCloud::Common::AbstractModel
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        # 以及其他令人反感、不安全或不适宜的内容类型。

        # 如音频中无复杂类型「TextResults」的返回则代表改音频中无相关违规内容；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Keywords: 命中的关键词，为空则代表该违规内容出自于模型的判断；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keywords: Array
        # @param LibId: 命中关键词库的库标识；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibId: String
        # @param LibName: 命中关键词库的名字；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibName: String
        # @param Score: 机器判断当前分类的置信度，取值范围：0~100。分数越高，表示越有可能属于当前分类。
        # （如：Porn 99，则该样本属于色情的置信度非常高。）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param LibType: 自定义词库的类型，自定义词库相关的信息可登录控制台中查看；

        # 1：自定义黑白库；

        # 2：自定义库；
        # @type LibType: Integer

        attr_accessor :Label, :Keywords, :LibId, :LibName, :Score, :Suggestion, :LibType
        
        def initialize(label=nil, keywords=nil, libid=nil, libname=nil, score=nil, suggestion=nil, libtype=nil)
          @Label = label
          @Keywords = keywords
          @LibId = libid
          @LibName = libname
          @Score = score
          @Suggestion = suggestion
          @LibType = libtype
        end

        def deserialize(params)
          @Label = params['Label']
          @Keywords = params['Keywords']
          @LibId = params['LibId']
          @LibName = params['LibName']
          @Score = params['Score']
          @Suggestion = params['Suggestion']
          @LibType = params['LibType']
        end
      end

    end
  end
end

