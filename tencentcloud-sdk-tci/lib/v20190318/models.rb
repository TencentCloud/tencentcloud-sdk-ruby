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
  module Tci
    module V20190318
      # AIAssistant请求参数结构体
      class AIAssistantRequest < TencentCloud::Common::AbstractModel
        # @param FileContent: 输入分析对象内容，输入数据格式参考FileType参数释义
        # @type FileContent: String
        # @param FileType: 输入分析对象类型，picture_url:图片地址，vod_url:视频地址，live_url：直播地址，audio_url: 音频文件，picture：图片二进制数据的BASE64编码
        # @type FileType: String
        # @param Lang: 音频源的语言，默认0为英文，1为中文
        # @type Lang: Integer
        # @param LibrarySet: 查询人员库列表
        # @type LibrarySet: Array
        # @param MaxVideoDuration: 视频评估时间，单位秒，点播场景默认值为2小时（无法探测长度时）或完整视频，直播场景默认值为10分钟或直播提前结束
        # @type MaxVideoDuration: Integer
        # @param Template: 标准化模板选择：0：AI助教基础版本，1：AI评教基础版本，2：AI评教标准版本。AI 助教基础版本功能包括：人脸检索、人脸检测、人脸表情识别、学生动作选项，音频信息分析，微笑识别。AI 评教基础版本功能包括：人脸检索、人脸检测、人脸表情识别、音频信息分析。AI 评教标准版功能包括人脸检索、人脸检测、人脸表情识别、手势识别、音频信息分析、音频关键词分析、视频精彩集锦分析。
        # @type Template: Integer
        # @param VocabLibNameList: 识别词库名列表，评估过程使用这些词汇库中的词汇进行词汇使用行为分析
        # @type VocabLibNameList: Array
        # @param VoiceEncodeType: 语音编码类型 1:pcm
        # @type VoiceEncodeType: Integer
        # @param VoiceFileType: 语音文件类型 1:raw, 2:wav, 3:mp3，10:视频（三种音频格式目前仅支持16k采样率16bit）
        # @type VoiceFileType: Integer

        attr_accessor :FileContent, :FileType, :Lang, :LibrarySet, :MaxVideoDuration, :Template, :VocabLibNameList, :VoiceEncodeType, :VoiceFileType
        
        def initialize(filecontent=nil, filetype=nil, lang=nil, libraryset=nil, maxvideoduration=nil, template=nil, vocablibnamelist=nil, voiceencodetype=nil, voicefiletype=nil)
          @FileContent = filecontent
          @FileType = filetype
          @Lang = lang
          @LibrarySet = libraryset
          @MaxVideoDuration = maxvideoduration
          @Template = template
          @VocabLibNameList = vocablibnamelist
          @VoiceEncodeType = voiceencodetype
          @VoiceFileType = voicefiletype
        end

        def deserialize(params)
          @FileContent = params['FileContent']
          @FileType = params['FileType']
          @Lang = params['Lang']
          @LibrarySet = params['LibrarySet']
          @MaxVideoDuration = params['MaxVideoDuration']
          @Template = params['Template']
          @VocabLibNameList = params['VocabLibNameList']
          @VoiceEncodeType = params['VoiceEncodeType']
          @VoiceFileType = params['VoiceFileType']
        end
      end

      # AIAssistant返回参数结构体
      class AIAssistantResponse < TencentCloud::Common::AbstractModel
        # @param ImageResults: 图像任务直接返回结果
        # @type ImageResults: Array
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageResults, :TaskId, :RequestId
        
        def initialize(imageresults=nil, taskid=nil, requestid=nil)
          @ImageResults = imageresults
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageResults = params['ImageResults']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 当前音频的统计结果
      class ASRStat < TencentCloud::Common::AbstractModel
        # @param AvgSpeed: 当前音频的平均语速
        # @type AvgSpeed: Float
        # @param AvgVolume: Vad的平均音量
        # @type AvgVolume: Float
        # @param MaxVolume: Vad的最大音量
        # @type MaxVolume: Float
        # @param MinVolume: Vad的最小音量
        # @type MinVolume: Float
        # @param MuteDuration: 当前音频的非发音时长
        # @type MuteDuration: Integer
        # @param SoundDuration: 当前音频的发音时长
        # @type SoundDuration: Integer
        # @param TotalDuration: 当前音频的总时长
        # @type TotalDuration: Integer
        # @param VadNum: 当前音频的句子总数
        # @type VadNum: Integer
        # @param WordNum: 当前音频的单词总数
        # @type WordNum: Integer

        attr_accessor :AvgSpeed, :AvgVolume, :MaxVolume, :MinVolume, :MuteDuration, :SoundDuration, :TotalDuration, :VadNum, :WordNum
        
        def initialize(avgspeed=nil, avgvolume=nil, maxvolume=nil, minvolume=nil, muteduration=nil, soundduration=nil, totalduration=nil, vadnum=nil, wordnum=nil)
          @AvgSpeed = avgspeed
          @AvgVolume = avgvolume
          @MaxVolume = maxvolume
          @MinVolume = minvolume
          @MuteDuration = muteduration
          @SoundDuration = soundduration
          @TotalDuration = totalduration
          @VadNum = vadnum
          @WordNum = wordnum
        end

        def deserialize(params)
          @AvgSpeed = params['AvgSpeed']
          @AvgVolume = params['AvgVolume']
          @MaxVolume = params['MaxVolume']
          @MinVolume = params['MinVolume']
          @MuteDuration = params['MuteDuration']
          @SoundDuration = params['SoundDuration']
          @TotalDuration = params['TotalDuration']
          @VadNum = params['VadNum']
          @WordNum = params['WordNum']
        end
      end

      # 缺勤人员信息
      class AbsenceInfo < TencentCloud::Common::AbstractModel
        # @param LibraryIds: 识别到的人员所在的库id
        # @type LibraryIds: String
        # @param PersonId: 识别到的人员id
        # @type PersonId: String

        attr_accessor :LibraryIds, :PersonId
        
        def initialize(libraryids=nil, personid=nil)
          @LibraryIds = libraryids
          @PersonId = personid
        end

        def deserialize(params)
          @LibraryIds = params['LibraryIds']
          @PersonId = params['PersonId']
        end
      end

      # 数量统计结果
      class ActionCountStatistic < TencentCloud::Common::AbstractModel
        # @param Count: 数量
        # @type Count: Integer
        # @param Name: 名称
        # @type Name: String

        attr_accessor :Count, :Name
        
        def initialize(count=nil, name=nil)
          @Count = count
          @Name = name
        end

        def deserialize(params)
          @Count = params['Count']
          @Name = params['Name']
        end
      end

      # 时长占比统计结果
      class ActionDurationRatioStatistic < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Ratio: 比例
        # @type Ratio: Float

        attr_accessor :Name, :Ratio
        
        def initialize(name=nil, ratio=nil)
          @Name = name
          @Ratio = ratio
        end

        def deserialize(params)
          @Name = params['Name']
          @Ratio = params['Ratio']
        end
      end

      # 时长统计结果
      class ActionDurationStatistic < TencentCloud::Common::AbstractModel
        # @param Duration: 时长
        # @type Duration: Integer
        # @param Name: 名称
        # @type Name: String

        attr_accessor :Duration, :Name
        
        def initialize(duration=nil, name=nil)
          @Duration = duration
          @Name = name
        end

        def deserialize(params)
          @Duration = params['Duration']
          @Name = params['Name']
        end
      end

      # 大教室场景肢体动作识别信息
      class ActionInfo < TencentCloud::Common::AbstractModel
        # @param BodyPosture: 躯体动作识别结果，包含坐着（sit）、站立（stand）和趴睡（sleep）
        # @type BodyPosture: :class:`Tencentcloud::Tci.v20190318.models.ActionType`
        # @param Handup: 举手识别结果，包含举手（hand）和未检测到举手（nothand）
        # @type Handup: :class:`Tencentcloud::Tci.v20190318.models.ActionType`
        # @param LookHead: 是否低头识别结果，包含抬头（lookingahead）和未检测到抬头（notlookingahead）
        # @type LookHead: :class:`Tencentcloud::Tci.v20190318.models.ActionType`
        # @param Writing: 是否写字识别结果，包含写字（write）和未检测到写字（notlookingahead）
        # @type Writing: :class:`Tencentcloud::Tci.v20190318.models.ActionType`
        # @param Height: 动作图像高度
        # @type Height: Integer
        # @param Left: 动作出现图像的左侧起始坐标位置
        # @type Left: Integer
        # @param Top: 动作出现图像的上侧起始侧坐标位置
        # @type Top: Integer
        # @param Width: 动作图像宽度
        # @type Width: Integer

        attr_accessor :BodyPosture, :Handup, :LookHead, :Writing, :Height, :Left, :Top, :Width
        
        def initialize(bodyposture=nil, handup=nil, lookhead=nil, writing=nil, height=nil, left=nil, top=nil, width=nil)
          @BodyPosture = bodyposture
          @Handup = handup
          @LookHead = lookhead
          @Writing = writing
          @Height = height
          @Left = left
          @Top = top
          @Width = width
        end

        def deserialize(params)
          unless params['BodyPosture'].nil?
            @BodyPosture = ActionType.new.deserialize(params[BodyPosture])
          end
          unless params['Handup'].nil?
            @Handup = ActionType.new.deserialize(params[Handup])
          end
          unless params['LookHead'].nil?
            @LookHead = ActionType.new.deserialize(params[LookHead])
          end
          unless params['Writing'].nil?
            @Writing = ActionType.new.deserialize(params[Writing])
          end
          @Height = params['Height']
          @Left = params['Left']
          @Top = params['Top']
          @Width = params['Width']
        end
      end

      # 统计结果
      class ActionStatistic < TencentCloud::Common::AbstractModel
        # @param ActionCount: 数量统计
        # @type ActionCount: Array
        # @param ActionDuration: 时长统计
        # @type ActionDuration: Array
        # @param ActionDurationRatio: 时长比例统计
        # @type ActionDurationRatio: Array

        attr_accessor :ActionCount, :ActionDuration, :ActionDurationRatio
        
        def initialize(actioncount=nil, actionduration=nil, actiondurationratio=nil)
          @ActionCount = actioncount
          @ActionDuration = actionduration
          @ActionDurationRatio = actiondurationratio
        end

        def deserialize(params)
          @ActionCount = params['ActionCount']
          @ActionDuration = params['ActionDuration']
          @ActionDurationRatio = params['ActionDurationRatio']
        end
      end

      # 动作行为子类型
      class ActionType < TencentCloud::Common::AbstractModel
        # @param Confidence: 置信度
        # @type Confidence: Float
        # @param Type: 动作类别
        # @type Type: String

        attr_accessor :Confidence, :Type
        
        def initialize(confidence=nil, type=nil)
          @Confidence = confidence
          @Type = type
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Type = params['Type']
        end
      end

      # 如果请求中开启了静音检测开关，则会返回所有的静音片段（静音时长超过阈值的片段）。
      class AllMuteSlice < TencentCloud::Common::AbstractModel
        # @param MuteSlice: 所有静音片段。
        # @type MuteSlice: Array
        # @param MuteRatio: 静音时长占比。
        # @type MuteRatio: Float
        # @param TotalMuteDuration: 静音总时长。
        # @type TotalMuteDuration: Integer

        attr_accessor :MuteSlice, :MuteRatio, :TotalMuteDuration
        
        def initialize(muteslice=nil, muteratio=nil, totalmuteduration=nil)
          @MuteSlice = muteslice
          @MuteRatio = muteratio
          @TotalMuteDuration = totalmuteduration
        end

        def deserialize(params)
          @MuteSlice = params['MuteSlice']
          @MuteRatio = params['MuteRatio']
          @TotalMuteDuration = params['TotalMuteDuration']
        end
      end

      # 识别到的人员信息
      class AttendanceInfo < TencentCloud::Common::AbstractModel
        # @param Face: 识别到的人员信息
        # @type Face: :class:`Tencentcloud::Tci.v20190318.models.FrameInfo`
        # @param PersonId: 识别到的人员id
        # @type PersonId: String

        attr_accessor :Face, :PersonId
        
        def initialize(face=nil, personid=nil)
          @Face = face
          @PersonId = personid
        end

        def deserialize(params)
          unless params['Face'].nil?
            @Face = FrameInfo.new.deserialize(params[Face])
          end
          @PersonId = params['PersonId']
        end
      end

      # 老师肢体动作识别结果
      class BodyMovementResult < TencentCloud::Common::AbstractModel
        # @param Confidence: 置信度
        # @type Confidence: Float
        # @param Height: 识别结果高度
        # @type Height: Integer
        # @param Left: 识别结果左坐标
        # @type Left: Integer
        # @param Movements: 老师动作识别结果，包含
        # 1、teach_on_positive_attitude 正面讲解
        # 2、point_to_the_blackboard 指黑板
        # 3、writing_blackboard 写板书
        # 4、other 其他
        # @type Movements: String
        # @param Top: 识别结果顶坐标
        # @type Top: Integer
        # @param Width: 识别结果宽度
        # @type Width: Integer

        attr_accessor :Confidence, :Height, :Left, :Movements, :Top, :Width
        
        def initialize(confidence=nil, height=nil, left=nil, movements=nil, top=nil, width=nil)
          @Confidence = confidence
          @Height = height
          @Left = left
          @Movements = movements
          @Top = top
          @Width = width
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Height = params['Height']
          @Left = params['Left']
          @Movements = params['Movements']
          @Top = params['Top']
          @Width = params['Width']
        end
      end

      # CancelTask请求参数结构体
      class CancelTaskRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 待取消任务标志符。
        # @type JobId: Integer

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # CancelTask返回参数结构体
      class CancelTaskResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 取消任务标志符。
        # @type JobId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId
        
        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # CheckFacePhoto请求参数结构体
      class CheckFacePhotoRequest < TencentCloud::Common::AbstractModel
        # @param FileContent: 输入分析对象内容
        # @type FileContent: String
        # @param FileType: 输入分析对象类型，picture_url:图片地址
        # @type FileType: String

        attr_accessor :FileContent, :FileType
        
        def initialize(filecontent=nil, filetype=nil)
          @FileContent = filecontent
          @FileType = filetype
        end

        def deserialize(params)
          @FileContent = params['FileContent']
          @FileType = params['FileType']
        end
      end

      # CheckFacePhoto返回参数结构体
      class CheckFacePhotoResponse < TencentCloud::Common::AbstractModel
        # @param CheckResult: 人脸检查结果，0：通过检查，1：图片模糊
        # @type CheckResult: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CheckResult, :RequestId
        
        def initialize(checkresult=nil, requestid=nil)
          @CheckResult = checkresult
          @RequestId = requestid
        end

        def deserialize(params)
          @CheckResult = params['CheckResult']
          @RequestId = params['RequestId']
        end
      end

      # CreateFace请求参数结构体
      class CreateFaceRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 人员唯一标识符
        # @type PersonId: String
        # @param Images: 图片数据 base64 字符串，与 Urls 参数选择一个输入
        # @type Images: Array
        # @param LibraryId: 人员库唯一标识符
        # @type LibraryId: String
        # @param Urls: 图片下载地址，与 Images 参数选择一个输入
        # @type Urls: Array

        attr_accessor :PersonId, :Images, :LibraryId, :Urls
        
        def initialize(personid=nil, images=nil, libraryid=nil, urls=nil)
          @PersonId = personid
          @Images = images
          @LibraryId = libraryid
          @Urls = urls
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @Images = params['Images']
          @LibraryId = params['LibraryId']
          @Urls = params['Urls']
        end
      end

      # CreateFace返回参数结构体
      class CreateFaceResponse < TencentCloud::Common::AbstractModel
        # @param FaceInfoSet: 人脸操作结果信息
        # @type FaceInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FaceInfoSet, :RequestId
        
        def initialize(faceinfoset=nil, requestid=nil)
          @FaceInfoSet = faceinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @FaceInfoSet = params['FaceInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateLibrary请求参数结构体
      class CreateLibraryRequest < TencentCloud::Common::AbstractModel
        # @param LibraryName: 人员库名称
        # @type LibraryName: String
        # @param LibraryId: 人员库唯一标志符，为空则系统自动生成。
        # @type LibraryId: String

        attr_accessor :LibraryName, :LibraryId
        
        def initialize(libraryname=nil, libraryid=nil)
          @LibraryName = libraryname
          @LibraryId = libraryid
        end

        def deserialize(params)
          @LibraryName = params['LibraryName']
          @LibraryId = params['LibraryId']
        end
      end

      # CreateLibrary返回参数结构体
      class CreateLibraryResponse < TencentCloud::Common::AbstractModel
        # @param LibraryId: 人员库唯一标识符
        # @type LibraryId: String
        # @param LibraryName: 人员库名称
        # @type LibraryName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LibraryId, :LibraryName, :RequestId
        
        def initialize(libraryid=nil, libraryname=nil, requestid=nil)
          @LibraryId = libraryid
          @LibraryName = libraryname
          @RequestId = requestid
        end

        def deserialize(params)
          @LibraryId = params['LibraryId']
          @LibraryName = params['LibraryName']
          @RequestId = params['RequestId']
        end
      end

      # CreatePerson请求参数结构体
      class CreatePersonRequest < TencentCloud::Common::AbstractModel
        # @param LibraryId: 人员库唯一标识符
        # @type LibraryId: String
        # @param PersonName: 人员名称
        # @type PersonName: String
        # @param Images: 图片数据 base64 字符串，与 Urls 参数选择一个输入
        # @type Images: Array
        # @param JobNumber: 人员工作号码
        # @type JobNumber: String
        # @param Mail: 人员邮箱
        # @type Mail: String
        # @param Male: 人员性别，0：未知 1：男性，2：女性
        # @type Male: Integer
        # @param PersonId: 自定义人员 ID，注意不能使用 tci_person_ 前缀
        # @type PersonId: String
        # @param PhoneNumber: 人员电话号码
        # @type PhoneNumber: String
        # @param StudentNumber: 人员学生号码
        # @type StudentNumber: String
        # @param Urls: 图片下载地址，与 Images 参数选择一个输入
        # @type Urls: Array

        attr_accessor :LibraryId, :PersonName, :Images, :JobNumber, :Mail, :Male, :PersonId, :PhoneNumber, :StudentNumber, :Urls
        
        def initialize(libraryid=nil, personname=nil, images=nil, jobnumber=nil, mail=nil, male=nil, personid=nil, phonenumber=nil, studentnumber=nil, urls=nil)
          @LibraryId = libraryid
          @PersonName = personname
          @Images = images
          @JobNumber = jobnumber
          @Mail = mail
          @Male = male
          @PersonId = personid
          @PhoneNumber = phonenumber
          @StudentNumber = studentnumber
          @Urls = urls
        end

        def deserialize(params)
          @LibraryId = params['LibraryId']
          @PersonName = params['PersonName']
          @Images = params['Images']
          @JobNumber = params['JobNumber']
          @Mail = params['Mail']
          @Male = params['Male']
          @PersonId = params['PersonId']
          @PhoneNumber = params['PhoneNumber']
          @StudentNumber = params['StudentNumber']
          @Urls = params['Urls']
        end
      end

      # CreatePerson返回参数结构体
      class CreatePersonResponse < TencentCloud::Common::AbstractModel
        # @param FaceInfoSet: 人脸操作结果信息
        # @type FaceInfoSet: Array
        # @param LibraryId: 人员库唯一标识符
        # @type LibraryId: String
        # @param PersonId: 人员唯一标识符
        # @type PersonId: String
        # @param PersonName: 人员名称
        # @type PersonName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FaceInfoSet, :LibraryId, :PersonId, :PersonName, :RequestId
        
        def initialize(faceinfoset=nil, libraryid=nil, personid=nil, personname=nil, requestid=nil)
          @FaceInfoSet = faceinfoset
          @LibraryId = libraryid
          @PersonId = personid
          @PersonName = personname
          @RequestId = requestid
        end

        def deserialize(params)
          @FaceInfoSet = params['FaceInfoSet']
          @LibraryId = params['LibraryId']
          @PersonId = params['PersonId']
          @PersonName = params['PersonName']
          @RequestId = params['RequestId']
        end
      end

      # CreateVocabLib请求参数结构体
      class CreateVocabLibRequest < TencentCloud::Common::AbstractModel
        # @param VocabLibName: 词汇库名称
        # @type VocabLibName: String

        attr_accessor :VocabLibName
        
        def initialize(vocablibname=nil)
          @VocabLibName = vocablibname
        end

        def deserialize(params)
          @VocabLibName = params['VocabLibName']
        end
      end

      # CreateVocabLib返回参数结构体
      class CreateVocabLibResponse < TencentCloud::Common::AbstractModel
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

      # CreateVocab请求参数结构体
      class CreateVocabRequest < TencentCloud::Common::AbstractModel
        # @param VocabLibName: 要添加词汇的词汇库名
        # @type VocabLibName: String
        # @param VocabList: 要添加的词汇列表
        # @type VocabList: Array

        attr_accessor :VocabLibName, :VocabList
        
        def initialize(vocablibname=nil, vocablist=nil)
          @VocabLibName = vocablibname
          @VocabList = vocablist
        end

        def deserialize(params)
          @VocabLibName = params['VocabLibName']
          @VocabList = params['VocabList']
        end
      end

      # CreateVocab返回参数结构体
      class CreateVocabResponse < TencentCloud::Common::AbstractModel
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

      # DeleteFace请求参数结构体
      class DeleteFaceRequest < TencentCloud::Common::AbstractModel
        # @param FaceIdSet: 人脸标识符数组
        # @type FaceIdSet: Array
        # @param PersonId: 人员唯一标识符
        # @type PersonId: String
        # @param LibraryId: 人员库唯一标识符
        # @type LibraryId: String

        attr_accessor :FaceIdSet, :PersonId, :LibraryId
        
        def initialize(faceidset=nil, personid=nil, libraryid=nil)
          @FaceIdSet = faceidset
          @PersonId = personid
          @LibraryId = libraryid
        end

        def deserialize(params)
          @FaceIdSet = params['FaceIdSet']
          @PersonId = params['PersonId']
          @LibraryId = params['LibraryId']
        end
      end

      # DeleteFace返回参数结构体
      class DeleteFaceResponse < TencentCloud::Common::AbstractModel
        # @param FaceInfoSet: 人脸操作结果
        # @type FaceInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FaceInfoSet, :RequestId
        
        def initialize(faceinfoset=nil, requestid=nil)
          @FaceInfoSet = faceinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @FaceInfoSet = params['FaceInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # DeleteLibrary请求参数结构体
      class DeleteLibraryRequest < TencentCloud::Common::AbstractModel
        # @param LibraryId: 人员库唯一标识符
        # @type LibraryId: String

        attr_accessor :LibraryId
        
        def initialize(libraryid=nil)
          @LibraryId = libraryid
        end

        def deserialize(params)
          @LibraryId = params['LibraryId']
        end
      end

      # DeleteLibrary返回参数结构体
      class DeleteLibraryResponse < TencentCloud::Common::AbstractModel
        # @param LibraryId: 人员库唯一标识符
        # @type LibraryId: String
        # @param LibraryName: 人员库名称
        # @type LibraryName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LibraryId, :LibraryName, :RequestId
        
        def initialize(libraryid=nil, libraryname=nil, requestid=nil)
          @LibraryId = libraryid
          @LibraryName = libraryname
          @RequestId = requestid
        end

        def deserialize(params)
          @LibraryId = params['LibraryId']
          @LibraryName = params['LibraryName']
          @RequestId = params['RequestId']
        end
      end

      # DeletePerson请求参数结构体
      class DeletePersonRequest < TencentCloud::Common::AbstractModel
        # @param LibraryId: 人员库唯一标识符
        # @type LibraryId: String
        # @param PersonId: 人员唯一标识符
        # @type PersonId: String

        attr_accessor :LibraryId, :PersonId
        
        def initialize(libraryid=nil, personid=nil)
          @LibraryId = libraryid
          @PersonId = personid
        end

        def deserialize(params)
          @LibraryId = params['LibraryId']
          @PersonId = params['PersonId']
        end
      end

      # DeletePerson返回参数结构体
      class DeletePersonResponse < TencentCloud::Common::AbstractModel
        # @param FaceInfoSet: 人脸信息
        # @type FaceInfoSet: Array
        # @param LibraryId: 人员库唯一标识符
        # @type LibraryId: String
        # @param PersonId: 人员唯一标识符
        # @type PersonId: String
        # @param PersonName: 人员名称
        # @type PersonName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FaceInfoSet, :LibraryId, :PersonId, :PersonName, :RequestId
        
        def initialize(faceinfoset=nil, libraryid=nil, personid=nil, personname=nil, requestid=nil)
          @FaceInfoSet = faceinfoset
          @LibraryId = libraryid
          @PersonId = personid
          @PersonName = personname
          @RequestId = requestid
        end

        def deserialize(params)
          @FaceInfoSet = params['FaceInfoSet']
          @LibraryId = params['LibraryId']
          @PersonId = params['PersonId']
          @PersonName = params['PersonName']
          @RequestId = params['RequestId']
        end
      end

      # DeleteVocabLib请求参数结构体
      class DeleteVocabLibRequest < TencentCloud::Common::AbstractModel
        # @param VocabLibName: 词汇库名称
        # @type VocabLibName: String

        attr_accessor :VocabLibName
        
        def initialize(vocablibname=nil)
          @VocabLibName = vocablibname
        end

        def deserialize(params)
          @VocabLibName = params['VocabLibName']
        end
      end

      # DeleteVocabLib返回参数结构体
      class DeleteVocabLibResponse < TencentCloud::Common::AbstractModel
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

      # DeleteVocab请求参数结构体
      class DeleteVocabRequest < TencentCloud::Common::AbstractModel
        # @param VocabLibName: 要删除词汇的词汇库名
        # @type VocabLibName: String
        # @param VocabList: 要删除的词汇列表
        # @type VocabList: Array

        attr_accessor :VocabLibName, :VocabList
        
        def initialize(vocablibname=nil, vocablist=nil)
          @VocabLibName = vocablibname
          @VocabList = vocablist
        end

        def deserialize(params)
          @VocabLibName = params['VocabLibName']
          @VocabList = params['VocabList']
        end
      end

      # DeleteVocab返回参数结构体
      class DeleteVocabResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAITaskResult请求参数结构体
      class DescribeAITaskResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务唯一标识符。在URL方式时提交请求后会返回一个任务标识符，后续查询该url的结果时使用这个标识符进行查询。
        # @type TaskId: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer

        attr_accessor :TaskId, :Limit, :Offset
        
        def initialize(taskid=nil, limit=nil, offset=nil)
          @TaskId = taskid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeAITaskResult返回参数结构体
      class DescribeAITaskResultResponse < TencentCloud::Common::AbstractModel
        # @param AudioResult: 音频分析结果
        # @type AudioResult: :class:`Tencentcloud::Tci.v20190318.models.StandardAudioResult`
        # @param ImageResult: 图像分析结果
        # @type ImageResult: :class:`Tencentcloud::Tci.v20190318.models.StandardImageResult`
        # @param VideoResult: 视频分析结果
        # @type VideoResult: :class:`Tencentcloud::Tci.v20190318.models.StandardVideoResult`
        # @param Status: 任务状态
        # @type Status: String
        # @param TaskId: 任务唯一id。在URL方式时提交请求后会返回一个jobid，后续查询该url的结果时使用这个jobid进行查询。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AudioResult, :ImageResult, :VideoResult, :Status, :TaskId, :RequestId
        
        def initialize(audioresult=nil, imageresult=nil, videoresult=nil, status=nil, taskid=nil, requestid=nil)
          @AudioResult = audioresult
          @ImageResult = imageresult
          @VideoResult = videoresult
          @Status = status
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AudioResult'].nil?
            @AudioResult = StandardAudioResult.new.deserialize(params[AudioResult])
          end
          unless params['ImageResult'].nil?
            @ImageResult = StandardImageResult.new.deserialize(params[ImageResult])
          end
          unless params['VideoResult'].nil?
            @VideoResult = StandardVideoResult.new.deserialize(params[VideoResult])
          end
          @Status = params['Status']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAttendanceResult请求参数结构体
      class DescribeAttendanceResultRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务唯一标识符
        # @type JobId: Integer

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DescribeAttendanceResult返回参数结构体
      class DescribeAttendanceResultResponse < TencentCloud::Common::AbstractModel
        # @param AbsenceSetInLibs: 缺失人员的ID列表(只针对请求中的libids字段)
        # @type AbsenceSetInLibs: Array
        # @param AttendanceSet: 确定出勤人员列表
        # @type AttendanceSet: Array
        # @param SuspectedSet: 疑似出勤人员列表
        # @type SuspectedSet: Array
        # @param AbsenceSet: 缺失人员的ID列表(只针对请求中的personids字段)
        # @type AbsenceSet: Array
        # @param Progress: 请求处理进度
        # @type Progress: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AbsenceSetInLibs, :AttendanceSet, :SuspectedSet, :AbsenceSet, :Progress, :RequestId
        
        def initialize(absencesetinlibs=nil, attendanceset=nil, suspectedset=nil, absenceset=nil, progress=nil, requestid=nil)
          @AbsenceSetInLibs = absencesetinlibs
          @AttendanceSet = attendanceset
          @SuspectedSet = suspectedset
          @AbsenceSet = absenceset
          @Progress = progress
          @RequestId = requestid
        end

        def deserialize(params)
          @AbsenceSetInLibs = params['AbsenceSetInLibs']
          @AttendanceSet = params['AttendanceSet']
          @SuspectedSet = params['SuspectedSet']
          @AbsenceSet = params['AbsenceSet']
          @Progress = params['Progress']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAudioTask请求参数结构体
      class DescribeAudioTaskRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 音频任务唯一id。在URL方式时提交请求后会返回一个jobid，后续查询该url的结果时使用这个jobid进行查询。
        # @type JobId: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer

        attr_accessor :JobId, :Limit, :Offset
        
        def initialize(jobid=nil, limit=nil, offset=nil)
          @JobId = jobid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeAudioTask返回参数结构体
      class DescribeAudioTaskResponse < TencentCloud::Common::AbstractModel
        # @param AllMuteSlice: 如果请求中开启了静音检测开关，则会返回所有的静音片段（静音时长超过阈值的片段）。
        # @type AllMuteSlice: :class:`Tencentcloud::Tci.v20190318.models.AllMuteSlice`
        # @param AsrStat: 返回的当前音频的统计信息。当进度为100时返回。
        # @type AsrStat: :class:`Tencentcloud::Tci.v20190318.models.ASRStat`
        # @param Texts: 返回当前音频流的详细信息，如果是流模式，返回的是对应流的详细信息，如果是 URL模式，返回的是查询的那一段seq对应的音频的详细信息。
        # @type Texts: Array
        # @param VocabAnalysisDetailInfo: 返回词汇库中的单词出现的详细时间信息。
        # @type VocabAnalysisDetailInfo: Array
        # @param VocabAnalysisStatInfo: 返回词汇库中的单词出现的次数信息。
        # @type VocabAnalysisStatInfo: Array
        # @param AllTexts: 返回音频全部文本。
        # @type AllTexts: String
        # @param JobId: 音频任务唯一id。在URL方式时提交请求后会返回一个jobid，后续查询该url的结果时使用这个jobid进行查询。
        # @type JobId: Integer
        # @param Progress: 返回的当前处理进度。
        # @type Progress: Float
        # @param TotalCount: 结果总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AllMuteSlice, :AsrStat, :Texts, :VocabAnalysisDetailInfo, :VocabAnalysisStatInfo, :AllTexts, :JobId, :Progress, :TotalCount, :RequestId
        
        def initialize(allmuteslice=nil, asrstat=nil, texts=nil, vocabanalysisdetailinfo=nil, vocabanalysisstatinfo=nil, alltexts=nil, jobid=nil, progress=nil, totalcount=nil, requestid=nil)
          @AllMuteSlice = allmuteslice
          @AsrStat = asrstat
          @Texts = texts
          @VocabAnalysisDetailInfo = vocabanalysisdetailinfo
          @VocabAnalysisStatInfo = vocabanalysisstatinfo
          @AllTexts = alltexts
          @JobId = jobid
          @Progress = progress
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AllMuteSlice'].nil?
            @AllMuteSlice = AllMuteSlice.new.deserialize(params[AllMuteSlice])
          end
          unless params['AsrStat'].nil?
            @AsrStat = ASRStat.new.deserialize(params[AsrStat])
          end
          @Texts = params['Texts']
          @VocabAnalysisDetailInfo = params['VocabAnalysisDetailInfo']
          @VocabAnalysisStatInfo = params['VocabAnalysisStatInfo']
          @AllTexts = params['AllTexts']
          @JobId = params['JobId']
          @Progress = params['Progress']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConversationTask请求参数结构体
      class DescribeConversationTaskRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 音频任务唯一id。在URL方式时提交请求后会返回一个jobid，后续查询该url的结果时使用这个jobid进行查询。
        # @type JobId: Integer
        # @param Identity: 要查询明细的流的身份，1 老师 2 学生
        # @type Identity: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer

        attr_accessor :JobId, :Identity, :Limit, :Offset
        
        def initialize(jobid=nil, identity=nil, limit=nil, offset=nil)
          @JobId = jobid
          @Identity = identity
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Identity = params['Identity']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeConversationTask返回参数结构体
      class DescribeConversationTaskResponse < TencentCloud::Common::AbstractModel
        # @param AsrStat: 返回的当前音频的统计信息。当进度为100时返回。
        # @type AsrStat: :class:`Tencentcloud::Tci.v20190318.models.ASRStat`
        # @param Texts: 返回当前音频流的详细信息，如果是流模式，返回的是对应流的详细信息，如果是 URL模式，返回的是查询的那一段seq对应的音频的详细信息。
        # @type Texts: Array
        # @param VocabAnalysisDetailInfo: 返回词汇库中的单词出现的详细时间信息。
        # @type VocabAnalysisDetailInfo: Array
        # @param VocabAnalysisStatInfo: 返回词汇库中的单词出现的次数信息。
        # @type VocabAnalysisStatInfo: Array
        # @param AllTexts: 整个音频流的全部文本
        # @type AllTexts: String
        # @param JobId: 音频任务唯一id。在URL方式时提交请求后会返回一个jobid，后续查询该url的结果时使用这个jobid进行查询。
        # @type JobId: Integer
        # @param Progress: 返回的当前处理进度。
        # @type Progress: Float
        # @param TotalCount: 结果总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsrStat, :Texts, :VocabAnalysisDetailInfo, :VocabAnalysisStatInfo, :AllTexts, :JobId, :Progress, :TotalCount, :RequestId
        
        def initialize(asrstat=nil, texts=nil, vocabanalysisdetailinfo=nil, vocabanalysisstatinfo=nil, alltexts=nil, jobid=nil, progress=nil, totalcount=nil, requestid=nil)
          @AsrStat = asrstat
          @Texts = texts
          @VocabAnalysisDetailInfo = vocabanalysisdetailinfo
          @VocabAnalysisStatInfo = vocabanalysisstatinfo
          @AllTexts = alltexts
          @JobId = jobid
          @Progress = progress
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AsrStat'].nil?
            @AsrStat = ASRStat.new.deserialize(params[AsrStat])
          end
          @Texts = params['Texts']
          @VocabAnalysisDetailInfo = params['VocabAnalysisDetailInfo']
          @VocabAnalysisStatInfo = params['VocabAnalysisStatInfo']
          @AllTexts = params['AllTexts']
          @JobId = params['JobId']
          @Progress = params['Progress']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHighlightResult请求参数结构体
      class DescribeHighlightResultRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 精彩集锦任务唯一id。在URL方式时提交请求后会返回一个JobId，后续查询该url的结果时使用这个JobId进行查询。
        # @type JobId: Integer

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DescribeHighlightResult返回参数结构体
      class DescribeHighlightResultResponse < TencentCloud::Common::AbstractModel
        # @param HighlightsInfo: 精彩集锦详细信息。
        # @type HighlightsInfo: Array
        # @param JobId: 精彩集锦任务唯一id。在URL方式时提交请求后会返回一个JobId，后续查询该url的结果时使用这个JobId进行查询。
        # @type JobId: Integer
        # @param Progress: 任务的进度百分比，100表示任务已完成。
        # @type Progress: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HighlightsInfo, :JobId, :Progress, :RequestId
        
        def initialize(highlightsinfo=nil, jobid=nil, progress=nil, requestid=nil)
          @HighlightsInfo = highlightsinfo
          @JobId = jobid
          @Progress = progress
          @RequestId = requestid
        end

        def deserialize(params)
          @HighlightsInfo = params['HighlightsInfo']
          @JobId = params['JobId']
          @Progress = params['Progress']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageTask请求参数结构体
      class DescribeImageTaskRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务标识符
        # @type JobId: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer

        attr_accessor :JobId, :Limit, :Offset
        
        def initialize(jobid=nil, limit=nil, offset=nil)
          @JobId = jobid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeImageTask返回参数结构体
      class DescribeImageTaskResponse < TencentCloud::Common::AbstractModel
        # @param ResultSet: 任务处理结果
        # @type ResultSet: Array
        # @param JobId: 任务唯一标识
        # @type JobId: Integer
        # @param Progress: 任务执行进度
        # @type Progress: Integer
        # @param TotalCount: 任务结果数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultSet, :JobId, :Progress, :TotalCount, :RequestId
        
        def initialize(resultset=nil, jobid=nil, progress=nil, totalcount=nil, requestid=nil)
          @ResultSet = resultset
          @JobId = jobid
          @Progress = progress
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultSet = params['ResultSet']
          @JobId = params['JobId']
          @Progress = params['Progress']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageTaskStatistic请求参数结构体
      class DescribeImageTaskStatisticRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 图像任务标识符
        # @type JobId: Integer

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DescribeImageTaskStatistic返回参数结构体
      class DescribeImageTaskStatisticResponse < TencentCloud::Common::AbstractModel
        # @param Statistic: 任务统计信息
        # @type Statistic: :class:`Tencentcloud::Tci.v20190318.models.ImageTaskStatistic`
        # @param JobId: 图像任务唯一标识符
        # @type JobId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Statistic, :JobId, :RequestId
        
        def initialize(statistic=nil, jobid=nil, requestid=nil)
          @Statistic = statistic
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Statistic'].nil?
            @Statistic = ImageTaskStatistic.new.deserialize(params[Statistic])
          end
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLibraries请求参数结构体
      class DescribeLibrariesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLibraries返回参数结构体
      class DescribeLibrariesResponse < TencentCloud::Common::AbstractModel
        # @param LibrarySet: 人员库列表
        # @type LibrarySet: Array
        # @param TotalCount: 人员库总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LibrarySet, :TotalCount, :RequestId
        
        def initialize(libraryset=nil, totalcount=nil, requestid=nil)
          @LibrarySet = libraryset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @LibrarySet = params['LibrarySet']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribePerson请求参数结构体
      class DescribePersonRequest < TencentCloud::Common::AbstractModel
        # @param LibraryId: 人员库唯一标识符
        # @type LibraryId: String
        # @param PersonId: 人员唯一标识符
        # @type PersonId: String

        attr_accessor :LibraryId, :PersonId
        
        def initialize(libraryid=nil, personid=nil)
          @LibraryId = libraryid
          @PersonId = personid
        end

        def deserialize(params)
          @LibraryId = params['LibraryId']
          @PersonId = params['PersonId']
        end
      end

      # DescribePerson返回参数结构体
      class DescribePersonResponse < TencentCloud::Common::AbstractModel
        # @param FaceSet: 人员人脸列表
        # @type FaceSet: Array
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param JobNumber: 工作号码
        # @type JobNumber: String
        # @param LibraryId: 人员库唯一标识符
        # @type LibraryId: String
        # @param Mail: 邮箱
        # @type Mail: String
        # @param Male: 性别
        # @type Male: Integer
        # @param PersonId: 人员唯一标识符
        # @type PersonId: String
        # @param PersonName: 人员名称
        # @type PersonName: String
        # @param PhoneNumber: 电话号码
        # @type PhoneNumber: String
        # @param StudentNumber: 学生号码
        # @type StudentNumber: String
        # @param UpdateTime: 修改时间
        # @type UpdateTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FaceSet, :CreateTime, :JobNumber, :LibraryId, :Mail, :Male, :PersonId, :PersonName, :PhoneNumber, :StudentNumber, :UpdateTime, :RequestId
        
        def initialize(faceset=nil, createtime=nil, jobnumber=nil, libraryid=nil, mail=nil, male=nil, personid=nil, personname=nil, phonenumber=nil, studentnumber=nil, updatetime=nil, requestid=nil)
          @FaceSet = faceset
          @CreateTime = createtime
          @JobNumber = jobnumber
          @LibraryId = libraryid
          @Mail = mail
          @Male = male
          @PersonId = personid
          @PersonName = personname
          @PhoneNumber = phonenumber
          @StudentNumber = studentnumber
          @UpdateTime = updatetime
          @RequestId = requestid
        end

        def deserialize(params)
          @FaceSet = params['FaceSet']
          @CreateTime = params['CreateTime']
          @JobNumber = params['JobNumber']
          @LibraryId = params['LibraryId']
          @Mail = params['Mail']
          @Male = params['Male']
          @PersonId = params['PersonId']
          @PersonName = params['PersonName']
          @PhoneNumber = params['PhoneNumber']
          @StudentNumber = params['StudentNumber']
          @UpdateTime = params['UpdateTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribePersons请求参数结构体
      class DescribePersonsRequest < TencentCloud::Common::AbstractModel
        # @param LibraryId: 人员库唯一标识符
        # @type LibraryId: String
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer

        attr_accessor :LibraryId, :Limit, :Offset
        
        def initialize(libraryid=nil, limit=nil, offset=nil)
          @LibraryId = libraryid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @LibraryId = params['LibraryId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribePersons返回参数结构体
      class DescribePersonsResponse < TencentCloud::Common::AbstractModel
        # @param PersonSet: 人员列表
        # @type PersonSet: Array
        # @param TotalCount: 人员总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PersonSet, :TotalCount, :RequestId
        
        def initialize(personset=nil, totalcount=nil, requestid=nil)
          @PersonSet = personset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @PersonSet = params['PersonSet']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVocabLib请求参数结构体
      class DescribeVocabLibRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeVocabLib返回参数结构体
      class DescribeVocabLibResponse < TencentCloud::Common::AbstractModel
        # @param VocabLibNameSet: 返回该appid下的所有词汇库名
        # @type VocabLibNameSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VocabLibNameSet, :RequestId
        
        def initialize(vocablibnameset=nil, requestid=nil)
          @VocabLibNameSet = vocablibnameset
          @RequestId = requestid
        end

        def deserialize(params)
          @VocabLibNameSet = params['VocabLibNameSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVocab请求参数结构体
      class DescribeVocabRequest < TencentCloud::Common::AbstractModel
        # @param VocabLibName: 要查询词汇的词汇库名
        # @type VocabLibName: String

        attr_accessor :VocabLibName
        
        def initialize(vocablibname=nil)
          @VocabLibName = vocablibname
        end

        def deserialize(params)
          @VocabLibName = params['VocabLibName']
        end
      end

      # DescribeVocab返回参数结构体
      class DescribeVocabResponse < TencentCloud::Common::AbstractModel
        # @param VocabNameSet: 词汇列表
        # @type VocabNameSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VocabNameSet, :RequestId
        
        def initialize(vocabnameset=nil, requestid=nil)
          @VocabNameSet = vocabnameset
          @RequestId = requestid
        end

        def deserialize(params)
          @VocabNameSet = params['VocabNameSet']
          @RequestId = params['RequestId']
        end
      end

      # 单词出现的那个句子的起始时间和结束时间信息
      class DetailInfo < TencentCloud::Common::AbstractModel
        # @param Value: 单词出现在该音频中的那个句子的时间戳，出现了几次， 就返回对应次数的起始和结束时间戳
        # @type Value: Array
        # @param Keyword: 词汇库中的单词
        # @type Keyword: String

        attr_accessor :Value, :Keyword
        
        def initialize(value=nil, keyword=nil)
          @Value = value
          @Keyword = keyword
        end

        def deserialize(params)
          @Value = params['Value']
          @Keyword = params['Keyword']
        end
      end

      # 双路混流视频集锦开关项
      class DoubleVideoFunction < TencentCloud::Common::AbstractModel
        # @param EnableCoverPictures: 片头片尾增加图片开关
        # @type EnableCoverPictures: Boolean

        attr_accessor :EnableCoverPictures
        
        def initialize(enablecoverpictures=nil)
          @EnableCoverPictures = enablecoverpictures
        end

        def deserialize(params)
          @EnableCoverPictures = params['EnableCoverPictures']
        end
      end

      # 表情比例统计
      class ExpressRatioStatistic < TencentCloud::Common::AbstractModel
        # @param Count: 出现次数
        # @type Count: Integer
        # @param Express: 表情
        # @type Express: String
        # @param Ratio: 该表情时长占所有表情时长的比例
        # @type Ratio: Float
        # @param RatioUseDuration: 该表情时长占视频总时长的比例
        # @type RatioUseDuration: Float

        attr_accessor :Count, :Express, :Ratio, :RatioUseDuration
        
        def initialize(count=nil, express=nil, ratio=nil, ratiouseduration=nil)
          @Count = count
          @Express = express
          @Ratio = ratio
          @RatioUseDuration = ratiouseduration
        end

        def deserialize(params)
          @Count = params['Count']
          @Express = params['Express']
          @Ratio = params['Ratio']
          @RatioUseDuration = params['RatioUseDuration']
        end
      end

      # 人脸描述
      class Face < TencentCloud::Common::AbstractModel
        # @param FaceId: 人脸唯一标识符
        # @type FaceId: String
        # @param FaceUrl: 人脸图片 URL
        # @type FaceUrl: String
        # @param PersonId: 人员唯一标识符
        # @type PersonId: String

        attr_accessor :FaceId, :FaceUrl, :PersonId
        
        def initialize(faceid=nil, faceurl=nil, personid=nil)
          @FaceId = faceid
          @FaceUrl = faceurl
          @PersonId = personid
        end

        def deserialize(params)
          @FaceId = params['FaceId']
          @FaceUrl = params['FaceUrl']
          @PersonId = params['PersonId']
        end
      end

      # FaceAttrResult
      class FaceAttrResult < TencentCloud::Common::AbstractModel
        # @param Age: 年龄
        # @type Age: Integer
        # @param Sex: 性别
        # @type Sex: String

        attr_accessor :Age, :Sex
        
        def initialize(age=nil, sex=nil)
          @Age = age
          @Sex = sex
        end

        def deserialize(params)
          @Age = params['Age']
          @Sex = params['Sex']
        end
      end

      # 人脸监测统计信息
      class FaceDetectStatistic < TencentCloud::Common::AbstractModel
        # @param FaceSizeRatio: 人脸大小占画面平均占比
        # @type FaceSizeRatio: Float
        # @param FrontalFaceCount: 检测到正脸次数
        # @type FrontalFaceCount: Integer
        # @param FrontalFaceRatio: 正脸时长占比
        # @type FrontalFaceRatio: Float
        # @param FrontalFaceRealRatio: 正脸时长在总出现时常占比
        # @type FrontalFaceRealRatio: Float
        # @param PersonId: 人员唯一标识符
        # @type PersonId: String
        # @param SideFaceCount: 检测到侧脸次数
        # @type SideFaceCount: Integer
        # @param SideFaceRatio: 侧脸时长占比
        # @type SideFaceRatio: Float
        # @param SideFaceRealRatio: 侧脸时长在总出现时常占比
        # @type SideFaceRealRatio: Float

        attr_accessor :FaceSizeRatio, :FrontalFaceCount, :FrontalFaceRatio, :FrontalFaceRealRatio, :PersonId, :SideFaceCount, :SideFaceRatio, :SideFaceRealRatio
        
        def initialize(facesizeratio=nil, frontalfacecount=nil, frontalfaceratio=nil, frontalfacerealratio=nil, personid=nil, sidefacecount=nil, sidefaceratio=nil, sidefacerealratio=nil)
          @FaceSizeRatio = facesizeratio
          @FrontalFaceCount = frontalfacecount
          @FrontalFaceRatio = frontalfaceratio
          @FrontalFaceRealRatio = frontalfacerealratio
          @PersonId = personid
          @SideFaceCount = sidefacecount
          @SideFaceRatio = sidefaceratio
          @SideFaceRealRatio = sidefacerealratio
        end

        def deserialize(params)
          @FaceSizeRatio = params['FaceSizeRatio']
          @FrontalFaceCount = params['FrontalFaceCount']
          @FrontalFaceRatio = params['FrontalFaceRatio']
          @FrontalFaceRealRatio = params['FrontalFaceRealRatio']
          @PersonId = params['PersonId']
          @SideFaceCount = params['SideFaceCount']
          @SideFaceRatio = params['SideFaceRatio']
          @SideFaceRealRatio = params['SideFaceRealRatio']
        end
      end

      # 人脸表情统计结果
      class FaceExpressStatistic < TencentCloud::Common::AbstractModel
        # @param PersonId: 人员唯一标识符
        # @type PersonId: String
        # @param ExpressRatio: 表情统计结果
        # @type ExpressRatio: Array

        attr_accessor :PersonId, :ExpressRatio
        
        def initialize(personid=nil, expressratio=nil)
          @PersonId = personid
          @ExpressRatio = expressratio
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @ExpressRatio = params['ExpressRatio']
        end
      end

      # FaceExpressionResult
      class FaceExpressionResult < TencentCloud::Common::AbstractModel
        # @param Confidence: 表情置信度
        # @type Confidence: Float
        # @param Expression: 表情识别结果，包括"neutral":中性,"happiness":开心，"angry":"生气"，"disgust":厌恶，"fear":"恐惧"，"sadness":"悲伤"，"surprise":"惊讶"，"contempt":"蔑视"
        # @type Expression: String

        attr_accessor :Confidence, :Expression
        
        def initialize(confidence=nil, expression=nil)
          @Confidence = confidence
          @Expression = expression
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Expression = params['Expression']
        end
      end

      # FaceIdentifyResult
      class FaceIdentifyResult < TencentCloud::Common::AbstractModel
        # @param FaceId: 人脸标识符
        # @type FaceId: String
        # @param LibraryId: 人员库标识符
        # @type LibraryId: String
        # @param PersonId: 人员标识符
        # @type PersonId: String
        # @param Similarity: 相似度
        # @type Similarity: Float

        attr_accessor :FaceId, :LibraryId, :PersonId, :Similarity
        
        def initialize(faceid=nil, libraryid=nil, personid=nil, similarity=nil)
          @FaceId = faceid
          @LibraryId = libraryid
          @PersonId = personid
          @Similarity = similarity
        end

        def deserialize(params)
          @FaceId = params['FaceId']
          @LibraryId = params['LibraryId']
          @PersonId = params['PersonId']
          @Similarity = params['Similarity']
        end
      end

      # 人员检索统计结果
      class FaceIdentifyStatistic < TencentCloud::Common::AbstractModel
        # @param Duration: 持续时间
        # @type Duration: Integer
        # @param EndTs: 结束时间
        # @type EndTs: Integer
        # @param PersonId: 人员唯一标识符
        # @type PersonId: String
        # @param Similarity: 相似度
        # @type Similarity: Float
        # @param StartTs: 开始时间
        # @type StartTs: Integer

        attr_accessor :Duration, :EndTs, :PersonId, :Similarity, :StartTs
        
        def initialize(duration=nil, endts=nil, personid=nil, similarity=nil, startts=nil)
          @Duration = duration
          @EndTs = endts
          @PersonId = personid
          @Similarity = similarity
          @StartTs = startts
        end

        def deserialize(params)
          @Duration = params['Duration']
          @EndTs = params['EndTs']
          @PersonId = params['PersonId']
          @Similarity = params['Similarity']
          @StartTs = params['StartTs']
        end
      end

      # 人脸操作信息
      class FaceInfo < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 人脸操作错误码
        # @type ErrorCode: String
        # @param ErrorMsg: 人脸操作结果信息
        # @type ErrorMsg: String
        # @param FaceId: 人脸唯一标识符
        # @type FaceId: String
        # @param FaceUrl: 人脸保存地址
        # @type FaceUrl: String
        # @param PersonId: 人员唯一标识
        # @type PersonId: String

        attr_accessor :ErrorCode, :ErrorMsg, :FaceId, :FaceUrl, :PersonId
        
        def initialize(errorcode=nil, errormsg=nil, faceid=nil, faceurl=nil, personid=nil)
          @ErrorCode = errorcode
          @ErrorMsg = errormsg
          @FaceId = faceid
          @FaceUrl = faceurl
          @PersonId = personid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @ErrorMsg = params['ErrorMsg']
          @FaceId = params['FaceId']
          @FaceUrl = params['FaceUrl']
          @PersonId = params['PersonId']
        end
      end

      # FaceInfoResult
      class FaceInfoResult < TencentCloud::Common::AbstractModel
        # @param FaceRatio: 人脸尺寸的占比
        # @type FaceRatio: Float
        # @param FrameHeight: 帧高度
        # @type FrameHeight: Integer
        # @param FrameWidth: 帧宽度
        # @type FrameWidth: Integer
        # @param Height: 人脸高度
        # @type Height: Integer
        # @param Left: 人脸左坐标
        # @type Left: Integer
        # @param Top: 人脸顶坐标
        # @type Top: Integer
        # @param Width: 人脸宽度
        # @type Width: Integer

        attr_accessor :FaceRatio, :FrameHeight, :FrameWidth, :Height, :Left, :Top, :Width
        
        def initialize(faceratio=nil, frameheight=nil, framewidth=nil, height=nil, left=nil, top=nil, width=nil)
          @FaceRatio = faceratio
          @FrameHeight = frameheight
          @FrameWidth = framewidth
          @Height = height
          @Left = left
          @Top = top
          @Width = width
        end

        def deserialize(params)
          @FaceRatio = params['FaceRatio']
          @FrameHeight = params['FrameHeight']
          @FrameWidth = params['FrameWidth']
          @Height = params['Height']
          @Left = params['Left']
          @Top = params['Top']
          @Width = params['Width']
        end
      end

      # FacePoseResult
      class FacePoseResult < TencentCloud::Common::AbstractModel
        # @param Direction: 正脸或侧脸的消息
        # @type Direction: String
        # @param Pitch: 围绕Z轴旋转角度，俯仰角
        # @type Pitch: Float
        # @param Roll: 围绕X轴旋转角度，翻滚角
        # @type Roll: Float
        # @param Yaw: 围绕Y轴旋转角度，偏航角
        # @type Yaw: Float

        attr_accessor :Direction, :Pitch, :Roll, :Yaw
        
        def initialize(direction=nil, pitch=nil, roll=nil, yaw=nil)
          @Direction = direction
          @Pitch = pitch
          @Roll = roll
          @Yaw = yaw
        end

        def deserialize(params)
          @Direction = params['Direction']
          @Pitch = params['Pitch']
          @Roll = params['Roll']
          @Yaw = params['Yaw']
        end
      end

      # 人员信息
      class FrameInfo < TencentCloud::Common::AbstractModel
        # @param Similarity: 相似度
        # @type Similarity: Float
        # @param SnapshotUrl: 截图的存储地址
        # @type SnapshotUrl: String
        # @param Ts: 相对于视频起始时间的时间戳，单位秒
        # @type Ts: Integer

        attr_accessor :Similarity, :SnapshotUrl, :Ts
        
        def initialize(similarity=nil, snapshoturl=nil, ts=nil)
          @Similarity = similarity
          @SnapshotUrl = snapshoturl
          @Ts = ts
        end

        def deserialize(params)
          @Similarity = params['Similarity']
          @SnapshotUrl = params['SnapshotUrl']
          @Ts = params['Ts']
        end
      end

      # 功能开关列表，表示是否需要打开相应的功能，返回相应的信息
      class Function < TencentCloud::Common::AbstractModel
        # @param EnableAllText: 输出全部文本标识，当该值设置为true时，会输出当前音频的全部文本
        # @type EnableAllText: Boolean
        # @param EnableKeyword: 输出关键词信息标识，当该值设置为true时，会输出当前音频的关键词信息。
        # @type EnableKeyword: Boolean
        # @param EnableMuteDetect: 静音检测标识，当设置为 true 时，需要设置静音时间阈值字段mute_threshold，统计结果中会返回静音片段。
        # @type EnableMuteDetect: Boolean
        # @param EnableVadInfo: 输出音频统计信息标识，当设置为 true 时，任务查询结果会输出音频的统计信息（AsrStat）
        # @type EnableVadInfo: Boolean
        # @param EnableVolume: 输出音频音量信息标识，当设置为 true 时，会输出当前音频音量信息。
        # @type EnableVolume: Boolean

        attr_accessor :EnableAllText, :EnableKeyword, :EnableMuteDetect, :EnableVadInfo, :EnableVolume
        
        def initialize(enablealltext=nil, enablekeyword=nil, enablemutedetect=nil, enablevadinfo=nil, enablevolume=nil)
          @EnableAllText = enablealltext
          @EnableKeyword = enablekeyword
          @EnableMuteDetect = enablemutedetect
          @EnableVadInfo = enablevadinfo
          @EnableVolume = enablevolume
        end

        def deserialize(params)
          @EnableAllText = params['EnableAllText']
          @EnableKeyword = params['EnableKeyword']
          @EnableMuteDetect = params['EnableMuteDetect']
          @EnableVadInfo = params['EnableVadInfo']
          @EnableVolume = params['EnableVolume']
        end
      end

      # GestureResult
      class GestureResult < TencentCloud::Common::AbstractModel
        # @param Class: 识别结果，包含"USPEAK":听你说，"LISTEN":听我说，"GOOD":GOOD，"TOOLS":拿教具，"OTHERS":其他
        # @type Class: String
        # @param Confidence: 置信度
        # @type Confidence: Float
        # @param Height: 识别结果高度
        # @type Height: Integer
        # @param Left: 识别结果左坐标
        # @type Left: Integer
        # @param Top: 识别结果顶坐标
        # @type Top: Integer
        # @param Width: 识别结果宽度
        # @type Width: Integer

        attr_accessor :Class, :Confidence, :Height, :Left, :Top, :Width
        
        def initialize(class=nil, confidence=nil, height=nil, left=nil, top=nil, width=nil)
          @Class = class
          @Confidence = confidence
          @Height = height
          @Left = left
          @Top = top
          @Width = width
        end

        def deserialize(params)
          @Class = params['Class']
          @Confidence = params['Confidence']
          @Height = params['Height']
          @Left = params['Left']
          @Top = params['Top']
          @Width = params['Width']
        end
      end

      # 检索配置开关项
      class HLFunction < TencentCloud::Common::AbstractModel
        # @param EnableFaceDetect: 是否开启人脸检测
        # @type EnableFaceDetect: Boolean
        # @param EnableFaceExpression: 是否开启表情识别
        # @type EnableFaceExpression: Boolean
        # @param EnableFaceIdent: 是否开启人脸检索
        # @type EnableFaceIdent: Boolean
        # @param EnableKeywordWonderfulTime: 是否开启视频集锦-老师关键字识别
        # @type EnableKeywordWonderfulTime: Boolean
        # @param EnableSmileWonderfulTime: 是否开启视频集锦-微笑识别
        # @type EnableSmileWonderfulTime: Boolean

        attr_accessor :EnableFaceDetect, :EnableFaceExpression, :EnableFaceIdent, :EnableKeywordWonderfulTime, :EnableSmileWonderfulTime
        
        def initialize(enablefacedetect=nil, enablefaceexpression=nil, enablefaceident=nil, enablekeywordwonderfultime=nil, enablesmilewonderfultime=nil)
          @EnableFaceDetect = enablefacedetect
          @EnableFaceExpression = enablefaceexpression
          @EnableFaceIdent = enablefaceident
          @EnableKeywordWonderfulTime = enablekeywordwonderfultime
          @EnableSmileWonderfulTime = enablesmilewonderfultime
        end

        def deserialize(params)
          @EnableFaceDetect = params['EnableFaceDetect']
          @EnableFaceExpression = params['EnableFaceExpression']
          @EnableFaceIdent = params['EnableFaceIdent']
          @EnableKeywordWonderfulTime = params['EnableKeywordWonderfulTime']
          @EnableSmileWonderfulTime = params['EnableSmileWonderfulTime']
        end
      end

      # HandTrackingResult
      class HandTrackingResult < TencentCloud::Common::AbstractModel
        # @param Class: 识别结果
        # @type Class: String
        # @param Confidence: 置信度
        # @type Confidence: Float
        # @param Height: 识别结果高度
        # @type Height: Integer
        # @param Left: 识别结果左坐标
        # @type Left: Integer
        # @param Top: 识别结果顶坐标
        # @type Top: Integer
        # @param Width: 识别结果宽度
        # @type Width: Integer

        attr_accessor :Class, :Confidence, :Height, :Left, :Top, :Width
        
        def initialize(class=nil, confidence=nil, height=nil, left=nil, top=nil, width=nil)
          @Class = class
          @Confidence = confidence
          @Height = height
          @Left = left
          @Top = top
          @Width = width
        end

        def deserialize(params)
          @Class = params['Class']
          @Confidence = params['Confidence']
          @Height = params['Height']
          @Left = params['Left']
          @Top = params['Top']
          @Width = params['Width']
        end
      end

      # 精彩集锦信息
      class HighlightsInfomation < TencentCloud::Common::AbstractModel
        # @param Concentration: 专注的起始与终止时间信息。
        # @type Concentration: Array
        # @param Smile: 微笑的起始与终止时间信息。
        # @type Smile: Array
        # @param HighlightsUrl: 高光集锦视频地址，保存剪辑好的视频地址。
        # @type HighlightsUrl: String
        # @param PersonId: 片段中识别出来的人脸ID。
        # @type PersonId: String

        attr_accessor :Concentration, :Smile, :HighlightsUrl, :PersonId
        
        def initialize(concentration=nil, smile=nil, highlightsurl=nil, personid=nil)
          @Concentration = concentration
          @Smile = smile
          @HighlightsUrl = highlightsurl
          @PersonId = personid
        end

        def deserialize(params)
          @Concentration = params['Concentration']
          @Smile = params['Smile']
          @HighlightsUrl = params['HighlightsUrl']
          @PersonId = params['PersonId']
        end
      end

      # 图像任务控制选项
      class ImageTaskFunction < TencentCloud::Common::AbstractModel
        # @param EnableActionClass: 大教室场景学生肢体动作识别选项
        # @type EnableActionClass: Boolean
        # @param EnableFaceDetect: 人脸检测选项（默认为true，目前不可编辑）
        # @type EnableFaceDetect: Boolean
        # @param EnableFaceExpression: 人脸表情识别选项
        # @type EnableFaceExpression: Boolean
        # @param EnableFaceIdentify: 人脸检索选项（默认为true，目前不可编辑）
        # @type EnableFaceIdentify: Boolean
        # @param EnableGesture: 手势选项
        # @type EnableGesture: Boolean
        # @param EnableHandTracking: 优图手势选项（该功能尚未支持）
        # @type EnableHandTracking: Boolean
        # @param EnableLightJudge: 光照选项
        # @type EnableLightJudge: Boolean
        # @param EnableStudentBodyMovements: 小班课场景学生肢体动作识别选项
        # @type EnableStudentBodyMovements: Boolean
        # @param EnableTeacherBodyMovements: 教师动作选项（该功能尚未支持）
        # @type EnableTeacherBodyMovements: Boolean
        # @param EnableTeacherOutScreen: 判断老师是否在屏幕中（该功能尚未支持）
        # @type EnableTeacherOutScreen: Boolean

        attr_accessor :EnableActionClass, :EnableFaceDetect, :EnableFaceExpression, :EnableFaceIdentify, :EnableGesture, :EnableHandTracking, :EnableLightJudge, :EnableStudentBodyMovements, :EnableTeacherBodyMovements, :EnableTeacherOutScreen
        
        def initialize(enableactionclass=nil, enablefacedetect=nil, enablefaceexpression=nil, enablefaceidentify=nil, enablegesture=nil, enablehandtracking=nil, enablelightjudge=nil, enablestudentbodymovements=nil, enableteacherbodymovements=nil, enableteacheroutscreen=nil)
          @EnableActionClass = enableactionclass
          @EnableFaceDetect = enablefacedetect
          @EnableFaceExpression = enablefaceexpression
          @EnableFaceIdentify = enablefaceidentify
          @EnableGesture = enablegesture
          @EnableHandTracking = enablehandtracking
          @EnableLightJudge = enablelightjudge
          @EnableStudentBodyMovements = enablestudentbodymovements
          @EnableTeacherBodyMovements = enableteacherbodymovements
          @EnableTeacherOutScreen = enableteacheroutscreen
        end

        def deserialize(params)
          @EnableActionClass = params['EnableActionClass']
          @EnableFaceDetect = params['EnableFaceDetect']
          @EnableFaceExpression = params['EnableFaceExpression']
          @EnableFaceIdentify = params['EnableFaceIdentify']
          @EnableGesture = params['EnableGesture']
          @EnableHandTracking = params['EnableHandTracking']
          @EnableLightJudge = params['EnableLightJudge']
          @EnableStudentBodyMovements = params['EnableStudentBodyMovements']
          @EnableTeacherBodyMovements = params['EnableTeacherBodyMovements']
          @EnableTeacherOutScreen = params['EnableTeacherOutScreen']
        end
      end

      # 图像任务结果
      class ImageTaskResult < TencentCloud::Common::AbstractModel
        # @param ActionInfo: 大教室场景学生肢体动作识别信息
        # @type ActionInfo: :class:`Tencentcloud::Tci.v20190318.models.ActionInfo`
        # @param FaceAttr: 属性识别结果
        # @type FaceAttr: :class:`Tencentcloud::Tci.v20190318.models.FaceAttrResult`
        # @param FaceExpression: 表情识别结果
        # @type FaceExpression: :class:`Tencentcloud::Tci.v20190318.models.FaceExpressionResult`
        # @param FaceIdentify: 人脸检索结果
        # @type FaceIdentify: :class:`Tencentcloud::Tci.v20190318.models.FaceIdentifyResult`
        # @param FaceInfo: 人脸检测结果
        # @type FaceInfo: :class:`Tencentcloud::Tci.v20190318.models.FaceInfoResult`
        # @param FacePose: 姿势识别结果
        # @type FacePose: :class:`Tencentcloud::Tci.v20190318.models.FacePoseResult`
        # @param Gesture: 动作分类结果
        # @type Gesture: :class:`Tencentcloud::Tci.v20190318.models.GestureResult`
        # @param HandTracking: 手势分类结果
        # @type HandTracking: :class:`Tencentcloud::Tci.v20190318.models.HandTrackingResult`
        # @param Light: 光照识别结果
        # @type Light: :class:`Tencentcloud::Tci.v20190318.models.LightResult`
        # @param StudentBodyMovement: 学生肢体动作识别结果
        # @type StudentBodyMovement: :class:`Tencentcloud::Tci.v20190318.models.StudentBodyMovementResult`
        # @param TeacherBodyMovement: 老师肢体动作识别结果
        # @type TeacherBodyMovement: :class:`Tencentcloud::Tci.v20190318.models.BodyMovementResult`
        # @param TeacherOutScreen: 教师是否在屏幕内判断结果
        # @type TeacherOutScreen: :class:`Tencentcloud::Tci.v20190318.models.TeacherOutScreenResult`
        # @param TimeInfo: 时间统计结果
        # @type TimeInfo: :class:`Tencentcloud::Tci.v20190318.models.TimeInfoResult`

        attr_accessor :ActionInfo, :FaceAttr, :FaceExpression, :FaceIdentify, :FaceInfo, :FacePose, :Gesture, :HandTracking, :Light, :StudentBodyMovement, :TeacherBodyMovement, :TeacherOutScreen, :TimeInfo
        
        def initialize(actioninfo=nil, faceattr=nil, faceexpression=nil, faceidentify=nil, faceinfo=nil, facepose=nil, gesture=nil, handtracking=nil, light=nil, studentbodymovement=nil, teacherbodymovement=nil, teacheroutscreen=nil, timeinfo=nil)
          @ActionInfo = actioninfo
          @FaceAttr = faceattr
          @FaceExpression = faceexpression
          @FaceIdentify = faceidentify
          @FaceInfo = faceinfo
          @FacePose = facepose
          @Gesture = gesture
          @HandTracking = handtracking
          @Light = light
          @StudentBodyMovement = studentbodymovement
          @TeacherBodyMovement = teacherbodymovement
          @TeacherOutScreen = teacheroutscreen
          @TimeInfo = timeinfo
        end

        def deserialize(params)
          unless params['ActionInfo'].nil?
            @ActionInfo = ActionInfo.new.deserialize(params[ActionInfo])
          end
          unless params['FaceAttr'].nil?
            @FaceAttr = FaceAttrResult.new.deserialize(params[FaceAttr])
          end
          unless params['FaceExpression'].nil?
            @FaceExpression = FaceExpressionResult.new.deserialize(params[FaceExpression])
          end
          unless params['FaceIdentify'].nil?
            @FaceIdentify = FaceIdentifyResult.new.deserialize(params[FaceIdentify])
          end
          unless params['FaceInfo'].nil?
            @FaceInfo = FaceInfoResult.new.deserialize(params[FaceInfo])
          end
          unless params['FacePose'].nil?
            @FacePose = FacePoseResult.new.deserialize(params[FacePose])
          end
          unless params['Gesture'].nil?
            @Gesture = GestureResult.new.deserialize(params[Gesture])
          end
          unless params['HandTracking'].nil?
            @HandTracking = HandTrackingResult.new.deserialize(params[HandTracking])
          end
          unless params['Light'].nil?
            @Light = LightResult.new.deserialize(params[Light])
          end
          unless params['StudentBodyMovement'].nil?
            @StudentBodyMovement = StudentBodyMovementResult.new.deserialize(params[StudentBodyMovement])
          end
          unless params['TeacherBodyMovement'].nil?
            @TeacherBodyMovement = BodyMovementResult.new.deserialize(params[TeacherBodyMovement])
          end
          unless params['TeacherOutScreen'].nil?
            @TeacherOutScreen = TeacherOutScreenResult.new.deserialize(params[TeacherOutScreen])
          end
          unless params['TimeInfo'].nil?
            @TimeInfo = TimeInfoResult.new.deserialize(params[TimeInfo])
          end
        end
      end

      # 图像任务统计结果
      class ImageTaskStatistic < TencentCloud::Common::AbstractModel
        # @param FaceDetect: 人员检测统计信息
        # @type FaceDetect: Array
        # @param FaceExpression: 人脸表情统计信息
        # @type FaceExpression: Array
        # @param FaceIdentify: 人脸检索统计信息
        # @type FaceIdentify: Array
        # @param Gesture: 姿势识别统计信息
        # @type Gesture: :class:`Tencentcloud::Tci.v20190318.models.ActionStatistic`
        # @param Handtracking: 手势识别统计信息
        # @type Handtracking: :class:`Tencentcloud::Tci.v20190318.models.ActionStatistic`
        # @param Light: 光照统计信息
        # @type Light: :class:`Tencentcloud::Tci.v20190318.models.LightStatistic`
        # @param StudentMovement: 学生动作统计信息
        # @type StudentMovement: :class:`Tencentcloud::Tci.v20190318.models.ActionStatistic`
        # @param TeacherMovement: 教师动作统计信息
        # @type TeacherMovement: :class:`Tencentcloud::Tci.v20190318.models.ActionStatistic`

        attr_accessor :FaceDetect, :FaceExpression, :FaceIdentify, :Gesture, :Handtracking, :Light, :StudentMovement, :TeacherMovement
        
        def initialize(facedetect=nil, faceexpression=nil, faceidentify=nil, gesture=nil, handtracking=nil, light=nil, studentmovement=nil, teachermovement=nil)
          @FaceDetect = facedetect
          @FaceExpression = faceexpression
          @FaceIdentify = faceidentify
          @Gesture = gesture
          @Handtracking = handtracking
          @Light = light
          @StudentMovement = studentmovement
          @TeacherMovement = teachermovement
        end

        def deserialize(params)
          @FaceDetect = params['FaceDetect']
          @FaceExpression = params['FaceExpression']
          @FaceIdentify = params['FaceIdentify']
          unless params['Gesture'].nil?
            @Gesture = ActionStatistic.new.deserialize(params[Gesture])
          end
          unless params['Handtracking'].nil?
            @Handtracking = ActionStatistic.new.deserialize(params[Handtracking])
          end
          unless params['Light'].nil?
            @Light = LightStatistic.new.deserialize(params[Light])
          end
          unless params['StudentMovement'].nil?
            @StudentMovement = ActionStatistic.new.deserialize(params[StudentMovement])
          end
          unless params['TeacherMovement'].nil?
            @TeacherMovement = ActionStatistic.new.deserialize(params[TeacherMovement])
          end
        end
      end

      # 人员库描述
      class Library < TencentCloud::Common::AbstractModel
        # @param CreateTime: 人员库创建时间
        # @type CreateTime: String
        # @param LibraryId: 人员库唯一标识符
        # @type LibraryId: String
        # @param LibraryName: 人员库名称
        # @type LibraryName: String
        # @param PersonCount: 人员库人员数量
        # @type PersonCount: Integer
        # @param UpdateTime: 人员库修改时间
        # @type UpdateTime: String

        attr_accessor :CreateTime, :LibraryId, :LibraryName, :PersonCount, :UpdateTime
        
        def initialize(createtime=nil, libraryid=nil, libraryname=nil, personcount=nil, updatetime=nil)
          @CreateTime = createtime
          @LibraryId = libraryid
          @LibraryName = libraryname
          @PersonCount = personcount
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @LibraryId = params['LibraryId']
          @LibraryName = params['LibraryName']
          @PersonCount = params['PersonCount']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 光照强度统计结果
      class LightDistributionStatistic < TencentCloud::Common::AbstractModel
        # @param Time: 时间点
        # @type Time: Integer
        # @param Value: 光线值
        # @type Value: Integer

        attr_accessor :Time, :Value
        
        def initialize(time=nil, value=nil)
          @Time = time
          @Value = value
        end

        def deserialize(params)
          @Time = params['Time']
          @Value = params['Value']
        end
      end

      # 光照强度比例统计结果
      class LightLevelRatioStatistic < TencentCloud::Common::AbstractModel
        # @param Level: 名称
        # @type Level: String
        # @param Ratio: 比例
        # @type Ratio: Float

        attr_accessor :Level, :Ratio
        
        def initialize(level=nil, ratio=nil)
          @Level = level
          @Ratio = ratio
        end

        def deserialize(params)
          @Level = params['Level']
          @Ratio = params['Ratio']
        end
      end

      # LightResult
      class LightResult < TencentCloud::Common::AbstractModel
        # @param LightLevel: 光照程度，参考提交任务时的LightStandard指定的Name参数
        # @type LightLevel: String
        # @param LightValue: 光照亮度
        # @type LightValue: Float

        attr_accessor :LightLevel, :LightValue
        
        def initialize(lightlevel=nil, lightvalue=nil)
          @LightLevel = lightlevel
          @LightValue = lightvalue
        end

        def deserialize(params)
          @LightLevel = params['LightLevel']
          @LightValue = params['LightValue']
        end
      end

      # 光照标准，结构的相关示例为：
      # {
      #     "Name":"dark"，
      #     "Range":[0,30]
      # }
      # 当光照的区间落入在0到30的范围时，就会命中dark的光照标准
      class LightStandard < TencentCloud::Common::AbstractModel
        # @param Name: 光照名称
        # @type Name: String
        # @param Range: 范围
        # @type Range: Array

        attr_accessor :Name, :Range
        
        def initialize(name=nil, range=nil)
          @Name = name
          @Range = range
        end

        def deserialize(params)
          @Name = params['Name']
          @Range = params['Range']
        end
      end

      # 光照统计结果
      class LightStatistic < TencentCloud::Common::AbstractModel
        # @param LightDistribution: 各个时间点的光线值
        # @type LightDistribution: Array
        # @param LightLevelRatio: 光照程度比例统计结果
        # @type LightLevelRatio: Array

        attr_accessor :LightDistribution, :LightLevelRatio
        
        def initialize(lightdistribution=nil, lightlevelratio=nil)
          @LightDistribution = lightdistribution
          @LightLevelRatio = lightlevelratio
        end

        def deserialize(params)
          @LightDistribution = params['LightDistribution']
          @LightLevelRatio = params['LightLevelRatio']
        end
      end

      # ModifyLibrary请求参数结构体
      class ModifyLibraryRequest < TencentCloud::Common::AbstractModel
        # @param LibraryId: 人员库唯一标识符
        # @type LibraryId: String
        # @param LibraryName: 人员库名称
        # @type LibraryName: String

        attr_accessor :LibraryId, :LibraryName
        
        def initialize(libraryid=nil, libraryname=nil)
          @LibraryId = libraryid
          @LibraryName = libraryname
        end

        def deserialize(params)
          @LibraryId = params['LibraryId']
          @LibraryName = params['LibraryName']
        end
      end

      # ModifyLibrary返回参数结构体
      class ModifyLibraryResponse < TencentCloud::Common::AbstractModel
        # @param LibraryId: 人员库唯一标识符
        # @type LibraryId: String
        # @param LibraryName: 人员库名称
        # @type LibraryName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LibraryId, :LibraryName, :RequestId
        
        def initialize(libraryid=nil, libraryname=nil, requestid=nil)
          @LibraryId = libraryid
          @LibraryName = libraryname
          @RequestId = requestid
        end

        def deserialize(params)
          @LibraryId = params['LibraryId']
          @LibraryName = params['LibraryName']
          @RequestId = params['RequestId']
        end
      end

      # ModifyPerson请求参数结构体
      class ModifyPersonRequest < TencentCloud::Common::AbstractModel
        # @param LibraryId: 人员库唯一标识符
        # @type LibraryId: String
        # @param PersonId: 人员唯一标识符
        # @type PersonId: String
        # @param JobNumber: 人员工作号码
        # @type JobNumber: String
        # @param Mail: 人员邮箱
        # @type Mail: String
        # @param Male: 人员性别
        # @type Male: Integer
        # @param PersonName: 人员名称
        # @type PersonName: String
        # @param PhoneNumber: 人员电话号码
        # @type PhoneNumber: String
        # @param StudentNumber: 人员学生号码
        # @type StudentNumber: String

        attr_accessor :LibraryId, :PersonId, :JobNumber, :Mail, :Male, :PersonName, :PhoneNumber, :StudentNumber
        
        def initialize(libraryid=nil, personid=nil, jobnumber=nil, mail=nil, male=nil, personname=nil, phonenumber=nil, studentnumber=nil)
          @LibraryId = libraryid
          @PersonId = personid
          @JobNumber = jobnumber
          @Mail = mail
          @Male = male
          @PersonName = personname
          @PhoneNumber = phonenumber
          @StudentNumber = studentnumber
        end

        def deserialize(params)
          @LibraryId = params['LibraryId']
          @PersonId = params['PersonId']
          @JobNumber = params['JobNumber']
          @Mail = params['Mail']
          @Male = params['Male']
          @PersonName = params['PersonName']
          @PhoneNumber = params['PhoneNumber']
          @StudentNumber = params['StudentNumber']
        end
      end

      # ModifyPerson返回参数结构体
      class ModifyPersonResponse < TencentCloud::Common::AbstractModel
        # @param FaceInfoSet: 人脸信息
        # @type FaceInfoSet: Array
        # @param LibraryId: 人员所属人员库标识符
        # @type LibraryId: String
        # @param PersonId: 人员唯一标识符
        # @type PersonId: String
        # @param PersonName: 人员名称
        # @type PersonName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FaceInfoSet, :LibraryId, :PersonId, :PersonName, :RequestId
        
        def initialize(faceinfoset=nil, libraryid=nil, personid=nil, personname=nil, requestid=nil)
          @FaceInfoSet = faceinfoset
          @LibraryId = libraryid
          @PersonId = personid
          @PersonName = personname
          @RequestId = requestid
        end

        def deserialize(params)
          @FaceInfoSet = params['FaceInfoSet']
          @LibraryId = params['LibraryId']
          @PersonId = params['PersonId']
          @PersonName = params['PersonName']
          @RequestId = params['RequestId']
        end
      end

      # 所有静音片段。
      class MuteSlice < TencentCloud::Common::AbstractModel
        # @param MuteBtm: 起始时间。
        # @type MuteBtm: Integer
        # @param MuteEtm: 终止时间。
        # @type MuteEtm: Integer

        attr_accessor :MuteBtm, :MuteEtm
        
        def initialize(mutebtm=nil, muteetm=nil)
          @MuteBtm = mutebtm
          @MuteEtm = muteetm
        end

        def deserialize(params)
          @MuteBtm = params['MuteBtm']
          @MuteEtm = params['MuteEtm']
        end
      end

      # 人员描述
      class Person < TencentCloud::Common::AbstractModel
        # @param LibraryId: 人员库唯一标识符
        # @type LibraryId: String
        # @param PersonId: 人员唯一标识符
        # @type PersonId: String
        # @param PersonName: 人员名称
        # @type PersonName: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param JobNumber: 工作号码
        # @type JobNumber: String
        # @param Mail: 邮箱
        # @type Mail: String
        # @param Male: 性别
        # @type Male: Integer
        # @param PhoneNumber: 电话号码
        # @type PhoneNumber: String
        # @param StudentNumber: 学生号码
        # @type StudentNumber: String
        # @param UpdateTime: 修改时间
        # @type UpdateTime: String

        attr_accessor :LibraryId, :PersonId, :PersonName, :CreateTime, :JobNumber, :Mail, :Male, :PhoneNumber, :StudentNumber, :UpdateTime
        
        def initialize(libraryid=nil, personid=nil, personname=nil, createtime=nil, jobnumber=nil, mail=nil, male=nil, phonenumber=nil, studentnumber=nil, updatetime=nil)
          @LibraryId = libraryid
          @PersonId = personid
          @PersonName = personname
          @CreateTime = createtime
          @JobNumber = jobnumber
          @Mail = mail
          @Male = male
          @PhoneNumber = phonenumber
          @StudentNumber = studentnumber
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @LibraryId = params['LibraryId']
          @PersonId = params['PersonId']
          @PersonName = params['PersonName']
          @CreateTime = params['CreateTime']
          @JobNumber = params['JobNumber']
          @Mail = params['Mail']
          @Male = params['Male']
          @PhoneNumber = params['PhoneNumber']
          @StudentNumber = params['StudentNumber']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 人员信息
      class PersonInfo < TencentCloud::Common::AbstractModel
        # @param PersonId: 需要匹配的人员的ID列表。
        # @type PersonId: String
        # @param CoverBeginUrl: 视频集锦开始封面照片。
        # @type CoverBeginUrl: String
        # @param CoverEndUrl: 视频集锦结束封面照片。
        # @type CoverEndUrl: String

        attr_accessor :PersonId, :CoverBeginUrl, :CoverEndUrl
        
        def initialize(personid=nil, coverbeginurl=nil, coverendurl=nil)
          @PersonId = personid
          @CoverBeginUrl = coverbeginurl
          @CoverEndUrl = coverendurl
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @CoverBeginUrl = params['CoverBeginUrl']
          @CoverEndUrl = params['CoverEndUrl']
        end
      end

      # 标准化接口图像分析结果
      class StandardAudioResult < TencentCloud::Common::AbstractModel
        # @param AsrStat: 返回的当前音频的统计信息。当进度为100时返回。
        # @type AsrStat: :class:`Tencentcloud::Tci.v20190318.models.ASRStat`
        # @param Texts: 返回当前音频流的详细信息，如果是流模式，返回的是对应流的详细信息，如果是 URL模式，返回的是查询的那一段seq对应的音频的详细信息。
        # @type Texts: Array
        # @param VocabAnalysisDetailInfo: 返回词汇库中的单词出现的详细时间信息。
        # @type VocabAnalysisDetailInfo: Array
        # @param VocabAnalysisStatInfo: 返回词汇库中的单词出现的次数信息。
        # @type VocabAnalysisStatInfo: Array
        # @param Message: 状态描述
        # @type Message: String
        # @param Status: 任务状态
        # @type Status: String
        # @param TotalCount: 结果数量
        # @type TotalCount: Integer

        attr_accessor :AsrStat, :Texts, :VocabAnalysisDetailInfo, :VocabAnalysisStatInfo, :Message, :Status, :TotalCount
        
        def initialize(asrstat=nil, texts=nil, vocabanalysisdetailinfo=nil, vocabanalysisstatinfo=nil, message=nil, status=nil, totalcount=nil)
          @AsrStat = asrstat
          @Texts = texts
          @VocabAnalysisDetailInfo = vocabanalysisdetailinfo
          @VocabAnalysisStatInfo = vocabanalysisstatinfo
          @Message = message
          @Status = status
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['AsrStat'].nil?
            @AsrStat = ASRStat.new.deserialize(params[AsrStat])
          end
          @Texts = params['Texts']
          @VocabAnalysisDetailInfo = params['VocabAnalysisDetailInfo']
          @VocabAnalysisStatInfo = params['VocabAnalysisStatInfo']
          @Message = params['Message']
          @Status = params['Status']
          @TotalCount = params['TotalCount']
        end
      end

      # 标准化接口图像分析结果
      class StandardImageResult < TencentCloud::Common::AbstractModel
        # @param ResultSet: 详细结果
        # @type ResultSet: Array
        # @param Statistic: 分析完成后的统计结果
        # @type Statistic: :class:`Tencentcloud::Tci.v20190318.models.ImageTaskStatistic`
        # @param Message: 状态描述
        # @type Message: String
        # @param Status: 任务状态
        # @type Status: String
        # @param TotalCount: 结果总数
        # @type TotalCount: Integer

        attr_accessor :ResultSet, :Statistic, :Message, :Status, :TotalCount
        
        def initialize(resultset=nil, statistic=nil, message=nil, status=nil, totalcount=nil)
          @ResultSet = resultset
          @Statistic = statistic
          @Message = message
          @Status = status
          @TotalCount = totalcount
        end

        def deserialize(params)
          @ResultSet = params['ResultSet']
          unless params['Statistic'].nil?
            @Statistic = ImageTaskStatistic.new.deserialize(params[Statistic])
          end
          @Message = params['Message']
          @Status = params['Status']
          @TotalCount = params['TotalCount']
        end
      end

      # 标准化接口图像分析结果
      class StandardVideoResult < TencentCloud::Common::AbstractModel
        # @param HighlightsInfo: 分析完成后的统计结果
        # @type HighlightsInfo: Array
        # @param Message: 状态描述
        # @type Message: String
        # @param Status: 任务状态
        # @type Status: String

        attr_accessor :HighlightsInfo, :Message, :Status
        
        def initialize(highlightsinfo=nil, message=nil, status=nil)
          @HighlightsInfo = highlightsinfo
          @Message = message
          @Status = status
        end

        def deserialize(params)
          @HighlightsInfo = params['HighlightsInfo']
          @Message = params['Message']
          @Status = params['Status']
        end
      end

      # 单词出现的次数信息
      class StatInfo < TencentCloud::Common::AbstractModel
        # @param Keyword: 词汇库中的单词
        # @type Keyword: String
        # @param Value: 单词出现在该音频中总次数
        # @type Value: Integer

        attr_accessor :Keyword, :Value
        
        def initialize(keyword=nil, value=nil)
          @Keyword = keyword
          @Value = value
        end

        def deserialize(params)
          @Keyword = params['Keyword']
          @Value = params['Value']
        end
      end

      # 学生肢体动作结果
      class StudentBodyMovementResult < TencentCloud::Common::AbstractModel
        # @param Confidence: 置信度（已废弃）
        # @type Confidence: Float
        # @param HandupConfidence: 举手识别结果置信度
        # @type HandupConfidence: Float
        # @param HandupStatus: 举手识别结果，包含举手（handup）和未举手（nothandup）
        # @type HandupStatus: String
        # @param Height: 识别结果高度
        # @type Height: Integer
        # @param Left: 识别结果左坐标
        # @type Left: Integer
        # @param Movements: 动作识别结果（已废弃）
        # @type Movements: String
        # @param StandConfidence: 站立识别结果置信度
        # @type StandConfidence: Float
        # @param StandStatus: 站立识别结果，包含站立（stand）和坐着（sit）
        # @type StandStatus: String
        # @param Top: 识别结果顶坐标
        # @type Top: Integer
        # @param Width: 识别结果宽度
        # @type Width: Integer

        attr_accessor :Confidence, :HandupConfidence, :HandupStatus, :Height, :Left, :Movements, :StandConfidence, :StandStatus, :Top, :Width
        
        def initialize(confidence=nil, handupconfidence=nil, handupstatus=nil, height=nil, left=nil, movements=nil, standconfidence=nil, standstatus=nil, top=nil, width=nil)
          @Confidence = confidence
          @HandupConfidence = handupconfidence
          @HandupStatus = handupstatus
          @Height = height
          @Left = left
          @Movements = movements
          @StandConfidence = standconfidence
          @StandStatus = standstatus
          @Top = top
          @Width = width
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @HandupConfidence = params['HandupConfidence']
          @HandupStatus = params['HandupStatus']
          @Height = params['Height']
          @Left = params['Left']
          @Movements = params['Movements']
          @StandConfidence = params['StandConfidence']
          @StandStatus = params['StandStatus']
          @Top = params['Top']
          @Width = params['Width']
        end
      end

      # SubmitAudioTask请求参数结构体
      class SubmitAudioTaskRequest < TencentCloud::Common::AbstractModel
        # @param Lang: 音频源的语言，默认0为英文，1为中文
        # @type Lang: Integer
        # @param Url: 音频URL。客户请求为URL方式时必须带此字段指名音频的url。
        # @type Url: String
        # @param VoiceEncodeType: 语音编码类型 1:pcm
        # @type VoiceEncodeType: Integer
        # @param VoiceFileType: 语音文件类型 1:raw, 2:wav, 3:mp3，10:视频（三种音频格式目前仅支持16k采样率16bit）
        # @type VoiceFileType: Integer
        # @param Functions: 功能开关列表，表示是否需要打开相应的功能，返回相应的信息
        # @type Functions: :class:`Tencentcloud::Tci.v20190318.models.Function`
        # @param FileType: 视频文件类型，默认点播，直播填 live_url
        # @type FileType: String
        # @param MuteThreshold: 静音阈值设置，如果静音检测开关开启，则静音时间超过这个阈值认为是静音片段，在结果中会返回, 没给的话默认值为3s
        # @type MuteThreshold: Integer
        # @param VocabLibNameList: 识别词库名列表，评估过程使用这些词汇库中的词汇进行词汇使用行为分析
        # @type VocabLibNameList: Array

        attr_accessor :Lang, :Url, :VoiceEncodeType, :VoiceFileType, :Functions, :FileType, :MuteThreshold, :VocabLibNameList
        
        def initialize(lang=nil, url=nil, voiceencodetype=nil, voicefiletype=nil, functions=nil, filetype=nil, mutethreshold=nil, vocablibnamelist=nil)
          @Lang = lang
          @Url = url
          @VoiceEncodeType = voiceencodetype
          @VoiceFileType = voicefiletype
          @Functions = functions
          @FileType = filetype
          @MuteThreshold = mutethreshold
          @VocabLibNameList = vocablibnamelist
        end

        def deserialize(params)
          @Lang = params['Lang']
          @Url = params['Url']
          @VoiceEncodeType = params['VoiceEncodeType']
          @VoiceFileType = params['VoiceFileType']
          unless params['Functions'].nil?
            @Functions = Function.new.deserialize(params[Functions])
          end
          @FileType = params['FileType']
          @MuteThreshold = params['MuteThreshold']
          @VocabLibNameList = params['VocabLibNameList']
        end
      end

      # SubmitAudioTask返回参数结构体
      class SubmitAudioTaskResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 	查询结果时指名的jobid。在URL方式时提交请求后会返回一个jobid，后续查询该url的结果时使用这个jobid进行查询。
        # @type JobId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId
        
        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # SubmitCheckAttendanceTaskPlus请求参数结构体
      class SubmitCheckAttendanceTaskPlusRequest < TencentCloud::Common::AbstractModel
        # @param FileContent: 输入数据
        # @type FileContent: Array
        # @param FileType: 视频流类型，vod_url表示点播URL，live_url表示直播URL，默认vod_url
        # @type FileType: String
        # @param LibraryIds: 人员库 ID列表
        # @type LibraryIds: Array
        # @param AttendanceThreshold: 确定出勤阈值；默认为0.92
        # @type AttendanceThreshold: Float
        # @param EnableStranger: 是否开启陌生人模式，陌生人模式是指在任务中发现的非注册人脸库中的人脸也返回相关统计信息，默认不开启
        # @type EnableStranger: Boolean
        # @param EndTime: 考勤结束时间（到视频的第几秒结束考勤），单位秒；默认为900
        # 对于直播场景，使用绝对时间戳，单位秒，默认当前时间往后12小时
        # @type EndTime: Integer
        # @param NoticeUrl: 通知回调地址，要求方法为post，application/json格式
        # @type NoticeUrl: String
        # @param StartTime: 考勤开始时间（从视频的第几秒开始考勤），单位秒；默认为0
        # 对于直播场景，使用绝对时间戳，单位秒，默认当前时间
        # @type StartTime: Integer
        # @param Threshold: 识别阈值；默认为0.8
        # @type Threshold: Float

        attr_accessor :FileContent, :FileType, :LibraryIds, :AttendanceThreshold, :EnableStranger, :EndTime, :NoticeUrl, :StartTime, :Threshold
        
        def initialize(filecontent=nil, filetype=nil, libraryids=nil, attendancethreshold=nil, enablestranger=nil, endtime=nil, noticeurl=nil, starttime=nil, threshold=nil)
          @FileContent = filecontent
          @FileType = filetype
          @LibraryIds = libraryids
          @AttendanceThreshold = attendancethreshold
          @EnableStranger = enablestranger
          @EndTime = endtime
          @NoticeUrl = noticeurl
          @StartTime = starttime
          @Threshold = threshold
        end

        def deserialize(params)
          @FileContent = params['FileContent']
          @FileType = params['FileType']
          @LibraryIds = params['LibraryIds']
          @AttendanceThreshold = params['AttendanceThreshold']
          @EnableStranger = params['EnableStranger']
          @EndTime = params['EndTime']
          @NoticeUrl = params['NoticeUrl']
          @StartTime = params['StartTime']
          @Threshold = params['Threshold']
        end
      end

      # SubmitCheckAttendanceTaskPlus返回参数结构体
      class SubmitCheckAttendanceTaskPlusResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务标识符
        # @type JobId: Integer
        # @param NotRegisteredSet: 没有注册的人的ID列表
        # @type NotRegisteredSet: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :NotRegisteredSet, :RequestId
        
        def initialize(jobid=nil, notregisteredset=nil, requestid=nil)
          @JobId = jobid
          @NotRegisteredSet = notregisteredset
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @NotRegisteredSet = params['NotRegisteredSet']
          @RequestId = params['RequestId']
        end
      end

      # SubmitCheckAttendanceTask请求参数结构体
      class SubmitCheckAttendanceTaskRequest < TencentCloud::Common::AbstractModel
        # @param FileContent: 输入数据
        # @type FileContent: String
        # @param FileType: 视频流类型，vod_url表示点播URL，live_url表示直播URL，默认vod_url
        # @type FileType: String
        # @param LibraryIds: 人员库 ID列表
        # @type LibraryIds: Array
        # @param AttendanceThreshold: 确定出勤阈值；默认为0.92
        # @type AttendanceThreshold: Float
        # @param EnableStranger: 是否开启陌生人模式，陌生人模式是指在任务中发现的非注册人脸库中的人脸也返回相关统计信息，默认不开启
        # @type EnableStranger: Boolean
        # @param EndTime: 考勤结束时间（到视频的第几秒结束考勤），单位秒；默认为900
        # 对于直播场景，使用绝对时间戳，单位秒，默认当前时间往后12小时
        # @type EndTime: Integer
        # @param NoticeUrl: 通知回调地址，要求方法为post，application/json格式
        # @type NoticeUrl: String
        # @param StartTime: 考勤开始时间（从视频的第几秒开始考勤），单位秒；默认为0
        # 对于直播场景，使用绝对时间戳，单位秒，默认当前时间
        # @type StartTime: Integer
        # @param Threshold: 识别阈值；默认为0.8
        # @type Threshold: Float

        attr_accessor :FileContent, :FileType, :LibraryIds, :AttendanceThreshold, :EnableStranger, :EndTime, :NoticeUrl, :StartTime, :Threshold
        
        def initialize(filecontent=nil, filetype=nil, libraryids=nil, attendancethreshold=nil, enablestranger=nil, endtime=nil, noticeurl=nil, starttime=nil, threshold=nil)
          @FileContent = filecontent
          @FileType = filetype
          @LibraryIds = libraryids
          @AttendanceThreshold = attendancethreshold
          @EnableStranger = enablestranger
          @EndTime = endtime
          @NoticeUrl = noticeurl
          @StartTime = starttime
          @Threshold = threshold
        end

        def deserialize(params)
          @FileContent = params['FileContent']
          @FileType = params['FileType']
          @LibraryIds = params['LibraryIds']
          @AttendanceThreshold = params['AttendanceThreshold']
          @EnableStranger = params['EnableStranger']
          @EndTime = params['EndTime']
          @NoticeUrl = params['NoticeUrl']
          @StartTime = params['StartTime']
          @Threshold = params['Threshold']
        end
      end

      # SubmitCheckAttendanceTask返回参数结构体
      class SubmitCheckAttendanceTaskResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务标识符
        # @type JobId: Integer
        # @param NotRegisteredSet: 没有注册的人的ID列表
        # @type NotRegisteredSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :NotRegisteredSet, :RequestId
        
        def initialize(jobid=nil, notregisteredset=nil, requestid=nil)
          @JobId = jobid
          @NotRegisteredSet = notregisteredset
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @NotRegisteredSet = params['NotRegisteredSet']
          @RequestId = params['RequestId']
        end
      end

      # SubmitConversationTask请求参数结构体
      class SubmitConversationTaskRequest < TencentCloud::Common::AbstractModel
        # @param Lang: 音频源的语言，默认0为英文，1为中文
        # @type Lang: Integer
        # @param StudentUrl: 学生音频流
        # @type StudentUrl: String
        # @param TeacherUrl: 教师音频流
        # @type TeacherUrl: String
        # @param VoiceEncodeType: 语音编码类型 1:pcm
        # @type VoiceEncodeType: Integer
        # @param VoiceFileType: 语音文件类型 1:raw, 2:wav, 3:mp3（三种格式目前仅支持16k采样率16bit）
        # @type VoiceFileType: Integer
        # @param Functions: 功能开关列表，表示是否需要打开相应的功能，返回相应的信息
        # @type Functions: :class:`Tencentcloud::Tci.v20190318.models.Function`
        # @param VocabLibNameList: 识别词库名列表，评估过程使用这些词汇库中的词汇进行词汇使用行为分析
        # @type VocabLibNameList: Array

        attr_accessor :Lang, :StudentUrl, :TeacherUrl, :VoiceEncodeType, :VoiceFileType, :Functions, :VocabLibNameList
        
        def initialize(lang=nil, studenturl=nil, teacherurl=nil, voiceencodetype=nil, voicefiletype=nil, functions=nil, vocablibnamelist=nil)
          @Lang = lang
          @StudentUrl = studenturl
          @TeacherUrl = teacherurl
          @VoiceEncodeType = voiceencodetype
          @VoiceFileType = voicefiletype
          @Functions = functions
          @VocabLibNameList = vocablibnamelist
        end

        def deserialize(params)
          @Lang = params['Lang']
          @StudentUrl = params['StudentUrl']
          @TeacherUrl = params['TeacherUrl']
          @VoiceEncodeType = params['VoiceEncodeType']
          @VoiceFileType = params['VoiceFileType']
          unless params['Functions'].nil?
            @Functions = Function.new.deserialize(params[Functions])
          end
          @VocabLibNameList = params['VocabLibNameList']
        end
      end

      # SubmitConversationTask返回参数结构体
      class SubmitConversationTaskResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 	查询结果时指名的jobid。在URL方式时提交请求后会返回一个jobid，后续查询该url的结果时使用这个jobid进行查询。
        # @type JobId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId
        
        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # SubmitDoubleVideoHighlights请求参数结构体
      class SubmitDoubleVideoHighlightsRequest < TencentCloud::Common::AbstractModel
        # @param FileContent: 学生视频url
        # @type FileContent: String
        # @param LibIds: 需要检索的人脸合集库，不在库中的人脸将不参与精彩集锦；目前仅支持输入一个人脸库。
        # @type LibIds: Array
        # @param Functions: 详细功能开关配置项
        # @type Functions: :class:`Tencentcloud::Tci.v20190318.models.DoubleVideoFunction`
        # @param PersonInfoList: 需要匹配的人员信息列表。
        # @type PersonInfoList: Array
        # @param FrameInterval: 视频处理的抽帧间隔，单位毫秒。建议留空。
        # @type FrameInterval: Integer
        # @param PersonIds: 旧版本需要匹配的人员信息列表。
        # @type PersonIds: Array
        # @param SimThreshold: 人脸检索的相似度阈值，默认值0.89。建议留空。
        # @type SimThreshold: Float
        # @param TeacherFileContent: 老师视频url
        # @type TeacherFileContent: String

        attr_accessor :FileContent, :LibIds, :Functions, :PersonInfoList, :FrameInterval, :PersonIds, :SimThreshold, :TeacherFileContent
        
        def initialize(filecontent=nil, libids=nil, functions=nil, personinfolist=nil, frameinterval=nil, personids=nil, simthreshold=nil, teacherfilecontent=nil)
          @FileContent = filecontent
          @LibIds = libids
          @Functions = functions
          @PersonInfoList = personinfolist
          @FrameInterval = frameinterval
          @PersonIds = personids
          @SimThreshold = simthreshold
          @TeacherFileContent = teacherfilecontent
        end

        def deserialize(params)
          @FileContent = params['FileContent']
          @LibIds = params['LibIds']
          unless params['Functions'].nil?
            @Functions = DoubleVideoFunction.new.deserialize(params[Functions])
          end
          @PersonInfoList = params['PersonInfoList']
          @FrameInterval = params['FrameInterval']
          @PersonIds = params['PersonIds']
          @SimThreshold = params['SimThreshold']
          @TeacherFileContent = params['TeacherFileContent']
        end
      end

      # SubmitDoubleVideoHighlights返回参数结构体
      class SubmitDoubleVideoHighlightsResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 视频拆条任务ID，用来唯一标识视频拆条任务。
        # @type JobId: Integer
        # @param NotRegistered: 未注册的人员ID列表。若出现此项，代表评估出现了问题，输入的PersonId中有不在库中的人员ID。
        # @type NotRegistered: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :NotRegistered, :RequestId
        
        def initialize(jobid=nil, notregistered=nil, requestid=nil)
          @JobId = jobid
          @NotRegistered = notregistered
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @NotRegistered = params['NotRegistered']
          @RequestId = params['RequestId']
        end
      end

      # SubmitFullBodyClassTask请求参数结构体
      class SubmitFullBodyClassTaskRequest < TencentCloud::Common::AbstractModel
        # @param FileContent: 输入分析对象内容，输入数据格式参考FileType参数释义
        # @type FileContent: String
        # @param FileType: 输入分析对象类型，picture_url:图片地址，vod_url:视频地址，live_url：直播地址，picture: 图片二进制数据的BASE64编码
        # @type FileType: String
        # @param Lang: 音频源的语言，默认0为英文，1为中文
        # @type Lang: Integer
        # @param LibrarySet: 查询人员库列表，可填写老师的注册照所在人员库
        # @type LibrarySet: Array
        # @param MaxVideoDuration: 视频评估时间，单位秒，点播场景默认值为2小时（无法探测长度时）或完整视频，直播场景默认值为10分钟或直播提前结束
        # @type MaxVideoDuration: Integer
        # @param VocabLibNameList: 识别词库名列表，这些词汇库用来维护关键词，评估老师授课过程中，对这些关键词的使用情况
        # @type VocabLibNameList: Array
        # @param VoiceEncodeType: 语音编码类型 1:pcm，当FileType为vod_url或live_url时为必填
        # @type VoiceEncodeType: Integer
        # @param VoiceFileType: 语音文件类型 10:视频（三种音频格式目前仅支持16k采样率16bit），当FileType为vod_url或live_url时为必填
        # @type VoiceFileType: Integer

        attr_accessor :FileContent, :FileType, :Lang, :LibrarySet, :MaxVideoDuration, :VocabLibNameList, :VoiceEncodeType, :VoiceFileType
        
        def initialize(filecontent=nil, filetype=nil, lang=nil, libraryset=nil, maxvideoduration=nil, vocablibnamelist=nil, voiceencodetype=nil, voicefiletype=nil)
          @FileContent = filecontent
          @FileType = filetype
          @Lang = lang
          @LibrarySet = libraryset
          @MaxVideoDuration = maxvideoduration
          @VocabLibNameList = vocablibnamelist
          @VoiceEncodeType = voiceencodetype
          @VoiceFileType = voicefiletype
        end

        def deserialize(params)
          @FileContent = params['FileContent']
          @FileType = params['FileType']
          @Lang = params['Lang']
          @LibrarySet = params['LibrarySet']
          @MaxVideoDuration = params['MaxVideoDuration']
          @VocabLibNameList = params['VocabLibNameList']
          @VoiceEncodeType = params['VoiceEncodeType']
          @VoiceFileType = params['VoiceFileType']
        end
      end

      # SubmitFullBodyClassTask返回参数结构体
      class SubmitFullBodyClassTaskResponse < TencentCloud::Common::AbstractModel
        # @param ImageResults: 图像任务直接返回结果，包括： FaceAttr、 FaceExpression、 FaceIdentify、 FaceInfo、 FacePose、 TeacherBodyMovement、TimeInfo
        # @type ImageResults: Array
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageResults, :TaskId, :RequestId
        
        def initialize(imageresults=nil, taskid=nil, requestid=nil)
          @ImageResults = imageresults
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageResults = params['ImageResults']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # SubmitHighlights请求参数结构体
      class SubmitHighlightsRequest < TencentCloud::Common::AbstractModel
        # @param Functions: 表情配置开关项。
        # @type Functions: :class:`Tencentcloud::Tci.v20190318.models.HLFunction`
        # @param FileContent: 视频url。
        # @type FileContent: String
        # @param FileType: 视频类型及来源，目前只支持点播类型："vod_url"。
        # @type FileType: String
        # @param LibIds: 需要检索的人脸合集库，不在库中的人脸将不参与精彩集锦。
        # @type LibIds: Array
        # @param FrameInterval: 视频处理的抽帧间隔，单位毫秒。建议留空。
        # @type FrameInterval: Integer
        # @param KeywordsLanguage: 关键词语言类型，0为英文，1为中文。
        # @type KeywordsLanguage: Integer
        # @param KeywordsStrings: 关键词数组，当且仅当Funtions中的EnableKeywordWonderfulTime为true时有意义，匹配相应的关键字。
        # @type KeywordsStrings: Array
        # @param MaxVideoDuration: 处理视频的总时长，单位毫秒。该值为0或未设置时，默认值两小时生效；当该值大于视频实际时长时，视频实际时长生效；当该值小于视频实际时长时，该值生效；当获取视频实际时长失败时，若该值设置则生效，否则默认值生效。建议留空。
        # @type MaxVideoDuration: Integer
        # @param SimThreshold: 人脸检索的相似度阈值，默认值0.89。建议留空。
        # @type SimThreshold: Float

        attr_accessor :Functions, :FileContent, :FileType, :LibIds, :FrameInterval, :KeywordsLanguage, :KeywordsStrings, :MaxVideoDuration, :SimThreshold
        
        def initialize(functions=nil, filecontent=nil, filetype=nil, libids=nil, frameinterval=nil, keywordslanguage=nil, keywordsstrings=nil, maxvideoduration=nil, simthreshold=nil)
          @Functions = functions
          @FileContent = filecontent
          @FileType = filetype
          @LibIds = libids
          @FrameInterval = frameinterval
          @KeywordsLanguage = keywordslanguage
          @KeywordsStrings = keywordsstrings
          @MaxVideoDuration = maxvideoduration
          @SimThreshold = simthreshold
        end

        def deserialize(params)
          unless params['Functions'].nil?
            @Functions = HLFunction.new.deserialize(params[Functions])
          end
          @FileContent = params['FileContent']
          @FileType = params['FileType']
          @LibIds = params['LibIds']
          @FrameInterval = params['FrameInterval']
          @KeywordsLanguage = params['KeywordsLanguage']
          @KeywordsStrings = params['KeywordsStrings']
          @MaxVideoDuration = params['MaxVideoDuration']
          @SimThreshold = params['SimThreshold']
        end
      end

      # SubmitHighlights返回参数结构体
      class SubmitHighlightsResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 视频拆条任务ID，用来唯一标识视频拆条任务。
        # @type JobId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId
        
        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # SubmitImageTaskPlus请求参数结构体
      class SubmitImageTaskPlusRequest < TencentCloud::Common::AbstractModel
        # @param FileContent: 输入分析对象内容，输入数据格式参考FileType参数释义
        # @type FileContent: Array
        # @param FileType: 输入分析对象类型，picture：二进制图片的 base64 编码字符串，picture_url:图片地址，vod_url：视频地址，live_url：直播地址
        # @type FileType: String
        # @param Functions: 任务控制选项
        # @type Functions: :class:`Tencentcloud::Tci.v20190318.models.ImageTaskFunction`
        # @param LightStandardSet: 光照标准列表
        # @type LightStandardSet: Array
        # @param FrameInterval: 抽帧的时间间隔，单位毫秒，默认值1000，保留字段，当前不支持填写。
        # @type FrameInterval: Integer
        # @param LibrarySet: 查询人员库列表
        # @type LibrarySet: Array
        # @param MaxVideoDuration: 视频评估时间，单位秒，点播场景默认值为2小时（无法探测长度时）或完整视频，直播场景默认值为10分钟或直播提前结束
        # @type MaxVideoDuration: Integer
        # @param SimThreshold: 人脸识别中的相似度阈值，默认值为0.89，保留字段，当前不支持填写。
        # @type SimThreshold: Float

        attr_accessor :FileContent, :FileType, :Functions, :LightStandardSet, :FrameInterval, :LibrarySet, :MaxVideoDuration, :SimThreshold
        
        def initialize(filecontent=nil, filetype=nil, functions=nil, lightstandardset=nil, frameinterval=nil, libraryset=nil, maxvideoduration=nil, simthreshold=nil)
          @FileContent = filecontent
          @FileType = filetype
          @Functions = functions
          @LightStandardSet = lightstandardset
          @FrameInterval = frameinterval
          @LibrarySet = libraryset
          @MaxVideoDuration = maxvideoduration
          @SimThreshold = simthreshold
        end

        def deserialize(params)
          @FileContent = params['FileContent']
          @FileType = params['FileType']
          unless params['Functions'].nil?
            @Functions = ImageTaskFunction.new.deserialize(params[Functions])
          end
          @LightStandardSet = params['LightStandardSet']
          @FrameInterval = params['FrameInterval']
          @LibrarySet = params['LibrarySet']
          @MaxVideoDuration = params['MaxVideoDuration']
          @SimThreshold = params['SimThreshold']
        end
      end

      # SubmitImageTaskPlus返回参数结构体
      class SubmitImageTaskPlusResponse < TencentCloud::Common::AbstractModel
        # @param ResultSet: 识别结果
        # @type ResultSet: Array
        # @param JobId: 任务标识符
        # @type JobId: Integer
        # @param Progress: 任务进度
        # @type Progress: Integer
        # @param TotalCount: 结果总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultSet, :JobId, :Progress, :TotalCount, :RequestId
        
        def initialize(resultset=nil, jobid=nil, progress=nil, totalcount=nil, requestid=nil)
          @ResultSet = resultset
          @JobId = jobid
          @Progress = progress
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultSet = params['ResultSet']
          @JobId = params['JobId']
          @Progress = params['Progress']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # SubmitImageTask请求参数结构体
      class SubmitImageTaskRequest < TencentCloud::Common::AbstractModel
        # @param FileContent: 输入分析对象内容，输入数据格式参考FileType参数释义
        # @type FileContent: String
        # @param FileType: 输入分析对象类型，picture：二进制图片的 base64 编码字符串，picture_url:图片地址，vod_url：视频地址，live_url：直播地址
        # @type FileType: String
        # @param Functions: 任务控制选项
        # @type Functions: :class:`Tencentcloud::Tci.v20190318.models.ImageTaskFunction`
        # @param LightStandardSet: 光照标准列表
        # @type LightStandardSet: Array
        # @param EventsCallBack: 结果更新回调地址。
        # @type EventsCallBack: String
        # @param FrameInterval: 抽帧的时间间隔，单位毫秒，默认值1000，保留字段，当前不支持填写。
        # @type FrameInterval: Integer
        # @param LibrarySet: 查询人员库列表
        # @type LibrarySet: Array
        # @param MaxVideoDuration: 视频评估时间，单位秒，点播场景默认值为2小时（无法探测长度时）或完整视频，直播场景默认值为10分钟或直播提前结束
        # @type MaxVideoDuration: Integer
        # @param SimThreshold: 人脸识别中的相似度阈值，默认值为0.89，保留字段，当前不支持填写。
        # @type SimThreshold: Float

        attr_accessor :FileContent, :FileType, :Functions, :LightStandardSet, :EventsCallBack, :FrameInterval, :LibrarySet, :MaxVideoDuration, :SimThreshold
        
        def initialize(filecontent=nil, filetype=nil, functions=nil, lightstandardset=nil, eventscallback=nil, frameinterval=nil, libraryset=nil, maxvideoduration=nil, simthreshold=nil)
          @FileContent = filecontent
          @FileType = filetype
          @Functions = functions
          @LightStandardSet = lightstandardset
          @EventsCallBack = eventscallback
          @FrameInterval = frameinterval
          @LibrarySet = libraryset
          @MaxVideoDuration = maxvideoduration
          @SimThreshold = simthreshold
        end

        def deserialize(params)
          @FileContent = params['FileContent']
          @FileType = params['FileType']
          unless params['Functions'].nil?
            @Functions = ImageTaskFunction.new.deserialize(params[Functions])
          end
          @LightStandardSet = params['LightStandardSet']
          @EventsCallBack = params['EventsCallBack']
          @FrameInterval = params['FrameInterval']
          @LibrarySet = params['LibrarySet']
          @MaxVideoDuration = params['MaxVideoDuration']
          @SimThreshold = params['SimThreshold']
        end
      end

      # SubmitImageTask返回参数结构体
      class SubmitImageTaskResponse < TencentCloud::Common::AbstractModel
        # @param ResultSet: 识别结果
        # @type ResultSet: Array
        # @param JobId: 任务标识符
        # @type JobId: Integer
        # @param Progress: 任务进度
        # @type Progress: Integer
        # @param TotalCount: 结果总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultSet, :JobId, :Progress, :TotalCount, :RequestId
        
        def initialize(resultset=nil, jobid=nil, progress=nil, totalcount=nil, requestid=nil)
          @ResultSet = resultset
          @JobId = jobid
          @Progress = progress
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultSet = params['ResultSet']
          @JobId = params['JobId']
          @Progress = params['Progress']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # SubmitOneByOneClassTask请求参数结构体
      class SubmitOneByOneClassTaskRequest < TencentCloud::Common::AbstractModel
        # @param FileContent: 输入分析对象内容，输入数据格式参考FileType参数释义
        # @type FileContent: String
        # @param FileType: 输入分析对象类型，picture_url:图片地址，vod_url:视频地址，live_url：直播地址，picture: 图片二进制数据的BASE64编码
        # @type FileType: String
        # @param Lang: 音频源的语言，默认0为英文，1为中文
        # @type Lang: Integer
        # @param LibrarySet: 查询人员库列表，可填写学生的注册照所在人员库
        # @type LibrarySet: Array
        # @param MaxVideoDuration: 视频评估时间，单位秒，点播场景默认值为2小时（无法探测长度时）或完整视频，直播场景默认值为10分钟或直播提前结束
        # @type MaxVideoDuration: Integer
        # @param VocabLibNameList: 识别词库名列表，这些词汇库用来维护关键词，评估学生对这些关键词的使用情况
        # @type VocabLibNameList: Array
        # @param VoiceEncodeType: 语音编码类型 1:pcm，当FileType为vod_url或live_url时为必填
        # @type VoiceEncodeType: Integer
        # @param VoiceFileType: 语音文件类型10:视频（三种音频格式目前仅支持16k采样率16bit），当FileType为vod_url或live_url时为必填
        # @type VoiceFileType: Integer

        attr_accessor :FileContent, :FileType, :Lang, :LibrarySet, :MaxVideoDuration, :VocabLibNameList, :VoiceEncodeType, :VoiceFileType
        
        def initialize(filecontent=nil, filetype=nil, lang=nil, libraryset=nil, maxvideoduration=nil, vocablibnamelist=nil, voiceencodetype=nil, voicefiletype=nil)
          @FileContent = filecontent
          @FileType = filetype
          @Lang = lang
          @LibrarySet = libraryset
          @MaxVideoDuration = maxvideoduration
          @VocabLibNameList = vocablibnamelist
          @VoiceEncodeType = voiceencodetype
          @VoiceFileType = voicefiletype
        end

        def deserialize(params)
          @FileContent = params['FileContent']
          @FileType = params['FileType']
          @Lang = params['Lang']
          @LibrarySet = params['LibrarySet']
          @MaxVideoDuration = params['MaxVideoDuration']
          @VocabLibNameList = params['VocabLibNameList']
          @VoiceEncodeType = params['VoiceEncodeType']
          @VoiceFileType = params['VoiceFileType']
        end
      end

      # SubmitOneByOneClassTask返回参数结构体
      class SubmitOneByOneClassTaskResponse < TencentCloud::Common::AbstractModel
        # @param ImageResults: 图像任务直接返回结果，包括：FaceAttr、 FaceExpression、 FaceIdentify、 FaceInfo、 FacePose、TimeInfo
        # @type ImageResults: Array
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageResults, :TaskId, :RequestId
        
        def initialize(imageresults=nil, taskid=nil, requestid=nil)
          @ImageResults = imageresults
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageResults = params['ImageResults']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # SubmitOpenClassTask请求参数结构体
      class SubmitOpenClassTaskRequest < TencentCloud::Common::AbstractModel
        # @param FileContent: 输入分析对象内容，输入数据格式参考FileType参数释义
        # @type FileContent: String
        # @param FileType: 输入分析对象类型，picture_url:图片地址，vod_url:视频地址，live_url：直播地址,picture: 图片二进制数据的BASE64编码
        # @type FileType: String
        # @param LibrarySet: 查询人员库列表，可填写学生们的注册照所在人员库
        # @type LibrarySet: Array
        # @param MaxVideoDuration: 视频评估时间，单位秒，点播场景默认值为2小时（无法探测长度时）或完整视频，直播场景默认值为10分钟或直播提前结束
        # @type MaxVideoDuration: Integer

        attr_accessor :FileContent, :FileType, :LibrarySet, :MaxVideoDuration
        
        def initialize(filecontent=nil, filetype=nil, libraryset=nil, maxvideoduration=nil)
          @FileContent = filecontent
          @FileType = filetype
          @LibrarySet = libraryset
          @MaxVideoDuration = maxvideoduration
        end

        def deserialize(params)
          @FileContent = params['FileContent']
          @FileType = params['FileType']
          @LibrarySet = params['LibrarySet']
          @MaxVideoDuration = params['MaxVideoDuration']
        end
      end

      # SubmitOpenClassTask返回参数结构体
      class SubmitOpenClassTaskResponse < TencentCloud::Common::AbstractModel
        # @param ImageResults: 图像任务直接返回结果，包括：FaceAttr、 FaceExpression、 FaceIdentify、 FaceInfo、 FacePose、 StudentBodyMovement、TimeInfo
        # @type ImageResults: Array
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageResults, :TaskId, :RequestId
        
        def initialize(imageresults=nil, taskid=nil, requestid=nil)
          @ImageResults = imageresults
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageResults = params['ImageResults']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # SubmitPartialBodyClassTask请求参数结构体
      class SubmitPartialBodyClassTaskRequest < TencentCloud::Common::AbstractModel
        # @param FileContent: 输入分析对象内容，输入数据格式参考FileType参数释义
        # @type FileContent: String
        # @param FileType: 输入分析对象类型，picture_url:图片地址，vod_url:视频地址，live_url：直播地址，picture: 图片二进制数据的BASE64编码
        # @type FileType: String
        # @param Lang: 音频源的语言，默认0为英文，1为中文
        # @type Lang: Integer
        # @param LibrarySet: 查询人员库列表，可填写老师的注册照所在人员库
        # @type LibrarySet: Array
        # @param MaxVideoDuration: 视频评估时间，单位秒，点播场景默认值为2小时（无法探测长度时）或完整视频，直播场景默认值为10分钟或直播提前结束
        # @type MaxVideoDuration: Integer
        # @param VocabLibNameList: 识别词库名列表，这些词汇库用来维护关键词，评估老师授课过程中，对这些关键词的使用情况
        # @type VocabLibNameList: Array
        # @param VoiceEncodeType: 语音编码类型 1:pcm，当FileType为vod_url或live_url时为必填
        # @type VoiceEncodeType: Integer
        # @param VoiceFileType: 语音文件类型 10:视频（三种音频格式目前仅支持16k采样率16bit），当FileType为vod_url或live_url时为必填
        # @type VoiceFileType: Integer

        attr_accessor :FileContent, :FileType, :Lang, :LibrarySet, :MaxVideoDuration, :VocabLibNameList, :VoiceEncodeType, :VoiceFileType
        
        def initialize(filecontent=nil, filetype=nil, lang=nil, libraryset=nil, maxvideoduration=nil, vocablibnamelist=nil, voiceencodetype=nil, voicefiletype=nil)
          @FileContent = filecontent
          @FileType = filetype
          @Lang = lang
          @LibrarySet = libraryset
          @MaxVideoDuration = maxvideoduration
          @VocabLibNameList = vocablibnamelist
          @VoiceEncodeType = voiceencodetype
          @VoiceFileType = voicefiletype
        end

        def deserialize(params)
          @FileContent = params['FileContent']
          @FileType = params['FileType']
          @Lang = params['Lang']
          @LibrarySet = params['LibrarySet']
          @MaxVideoDuration = params['MaxVideoDuration']
          @VocabLibNameList = params['VocabLibNameList']
          @VoiceEncodeType = params['VoiceEncodeType']
          @VoiceFileType = params['VoiceFileType']
        end
      end

      # SubmitPartialBodyClassTask返回参数结构体
      class SubmitPartialBodyClassTaskResponse < TencentCloud::Common::AbstractModel
        # @param ImageResults: 图像任务直接返回结果，包括： FaceAttr、 FaceExpression、 FaceIdentify、 FaceInfo、 FacePose、 Gesture 、 Light、 TimeInfo
        # @type ImageResults: Array
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageResults, :TaskId, :RequestId
        
        def initialize(imageresults=nil, taskid=nil, requestid=nil)
          @ImageResults = imageresults
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageResults = params['ImageResults']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # SubmitTraditionalClassTask请求参数结构体
      class SubmitTraditionalClassTaskRequest < TencentCloud::Common::AbstractModel
        # @param FileContent: 输入分析对象内容，输入数据格式参考FileType参数释义
        # @type FileContent: String
        # @param FileType: 输入分析对象类型，picture_url:图片地址，vod_url:视频地址，live_url：直播地址，picture：图片二进制数据的BASE64编码
        # @type FileType: String
        # @param LibrarySet: 查询人员库列表，可填写学生们的注册照所在人员库
        # @type LibrarySet: Array
        # @param MaxVideoDuration: 视频评估时间，单位秒，点播场景默认值为2小时（无法探测长度时）或完整视频，直播场景默认值为10分钟或直播提前结束
        # @type MaxVideoDuration: Integer

        attr_accessor :FileContent, :FileType, :LibrarySet, :MaxVideoDuration
        
        def initialize(filecontent=nil, filetype=nil, libraryset=nil, maxvideoduration=nil)
          @FileContent = filecontent
          @FileType = filetype
          @LibrarySet = libraryset
          @MaxVideoDuration = maxvideoduration
        end

        def deserialize(params)
          @FileContent = params['FileContent']
          @FileType = params['FileType']
          @LibrarySet = params['LibrarySet']
          @MaxVideoDuration = params['MaxVideoDuration']
        end
      end

      # SubmitTraditionalClassTask返回参数结构体
      class SubmitTraditionalClassTaskResponse < TencentCloud::Common::AbstractModel
        # @param ImageResults: 图像任务直接返回结果，包括： ActionInfo、FaceAttr、 FaceExpression、 FaceIdentify、 FaceInfo、 FacePose、 TimeInfo
        # @type ImageResults: Array
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageResults, :TaskId, :RequestId
        
        def initialize(imageresults=nil, taskid=nil, requestid=nil)
          @ImageResults = imageresults
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageResults = params['ImageResults']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 疑似出席人员
      class SuspectedInfo < TencentCloud::Common::AbstractModel
        # @param FaceSet: TopN匹配信息列表
        # @type FaceSet: Array
        # @param PersonId: 识别到的人员id
        # @type PersonId: String

        attr_accessor :FaceSet, :PersonId
        
        def initialize(faceset=nil, personid=nil)
          @FaceSet = faceset
          @PersonId = personid
        end

        def deserialize(params)
          @FaceSet = params['FaceSet']
          @PersonId = params['PersonId']
        end
      end

      # 教师是否在屏幕内判断结果
      class TeacherOutScreenResult < TencentCloud::Common::AbstractModel
        # @param Class: 动作识别结果，InScreen：在屏幕内
        # OutScreen：不在屏幕内
        # @type Class: String
        # @param Height: 识别结果高度
        # @type Height: Integer
        # @param Left: 识别结果左坐标
        # @type Left: Integer
        # @param Top: 识别结果顶坐标
        # @type Top: Integer
        # @param Width: 识别结果宽度
        # @type Width: Integer

        attr_accessor :Class, :Height, :Left, :Top, :Width
        
        def initialize(class=nil, height=nil, left=nil, top=nil, width=nil)
          @Class = class
          @Height = height
          @Left = left
          @Top = top
          @Width = width
        end

        def deserialize(params)
          @Class = params['Class']
          @Height = params['Height']
          @Left = params['Left']
          @Top = params['Top']
          @Width = params['Width']
        end
      end

      # 当前句子的信息
      class TextItem < TencentCloud::Common::AbstractModel
        # @param Words: 当前句子包含的所有单词信息
        # @type Words: Array
        # @param Confidence: 当前句子的置信度
        # @type Confidence: Float
        # @param Mbtm: 当前句子语音的起始时间点，单位为ms
        # @type Mbtm: Integer
        # @param Metm: 当前句子语音的终止时间点，单位为ms
        # @type Metm: Integer
        # @param Tag: 保留参数，暂无意义
        # @type Tag: Integer
        # @param Text: 当前句子
        # @type Text: String
        # @param TextSize: 当前句子的字节数
        # @type TextSize: Integer

        attr_accessor :Words, :Confidence, :Mbtm, :Metm, :Tag, :Text, :TextSize
        
        def initialize(words=nil, confidence=nil, mbtm=nil, metm=nil, tag=nil, text=nil, textsize=nil)
          @Words = words
          @Confidence = confidence
          @Mbtm = mbtm
          @Metm = metm
          @Tag = tag
          @Text = text
          @TextSize = textsize
        end

        def deserialize(params)
          @Words = params['Words']
          @Confidence = params['Confidence']
          @Mbtm = params['Mbtm']
          @Metm = params['Metm']
          @Tag = params['Tag']
          @Text = params['Text']
          @TextSize = params['TextSize']
        end
      end

      # TimeInfoResult
      class TimeInfoResult < TencentCloud::Common::AbstractModel
        # @param Duration: 持续时间，单位毫秒
        # @type Duration: Integer
        # @param EndTs: 结束时间戳，单位毫秒
        # @type EndTs: Integer
        # @param StartTs: 开始时间戳，单位毫秒
        # @type StartTs: Integer

        attr_accessor :Duration, :EndTs, :StartTs
        
        def initialize(duration=nil, endts=nil, startts=nil)
          @Duration = duration
          @EndTs = endts
          @StartTs = startts
        end

        def deserialize(params)
          @Duration = params['Duration']
          @EndTs = params['EndTs']
          @StartTs = params['StartTs']
        end
      end

      # 起止时间
      class TimeType < TencentCloud::Common::AbstractModel
        # @param EndTime: 结束时间戳
        # @type EndTime: Integer
        # @param StartTime: 起始时间戳
        # @type StartTime: Integer

        attr_accessor :EndTime, :StartTime
        
        def initialize(endtime=nil, starttime=nil)
          @EndTime = endtime
          @StartTime = starttime
        end

        def deserialize(params)
          @EndTime = params['EndTime']
          @StartTime = params['StartTime']
        end
      end

      # TransmitAudioStream请求参数结构体
      class TransmitAudioStreamRequest < TencentCloud::Common::AbstractModel
        # @param Functions: 功能开关列表，表示是否需要打开相应的功能，返回相应的信息
        # @type Functions: :class:`Tencentcloud::Tci.v20190318.models.Function`
        # @param SeqId: 流式数据包的序号，从1开始，当IsEnd字段为1后后续序号无意义。
        # @type SeqId: Integer
        # @param SessionId: 语音段唯一标识，一个完整语音一个SessionId。
        # @type SessionId: String
        # @param UserVoiceData: 当前数据包数据, 流式模式下数据包大小可以按需设置，在网络良好的情况下，建议设置为0.5k，且必须保证分片帧完整（16bit的数据必须保证音频长度为偶数），编码格式要求为BASE64。
        # @type UserVoiceData: String
        # @param VoiceEncodeType: 语音编码类型 1:pcm。
        # @type VoiceEncodeType: Integer
        # @param VoiceFileType: 语音文件类型 	1: raw, 2: wav, 3: mp3 (语言文件格式目前仅支持 16k 采样率 16bit 编码单声道，如有不一致可能导致评估不准确或失败)。
        # @type VoiceFileType: Integer
        # @param IsEnd: 是否传输完毕标志，若为0表示未完毕，若为1则传输完毕开始评估，非流式模式下无意义。
        # @type IsEnd: Integer
        # @param Lang: 音频源的语言，默认0为英文，1为中文
        # @type Lang: Integer
        # @param StorageMode: 是否临时保存 音频链接
        # @type StorageMode: Integer
        # @param VocabLibNameList: 识别词库名列表，评估过程使用这些词汇库中的词汇进行词汇使用行为分析
        # @type VocabLibNameList: Array

        attr_accessor :Functions, :SeqId, :SessionId, :UserVoiceData, :VoiceEncodeType, :VoiceFileType, :IsEnd, :Lang, :StorageMode, :VocabLibNameList
        
        def initialize(functions=nil, seqid=nil, sessionid=nil, uservoicedata=nil, voiceencodetype=nil, voicefiletype=nil, isend=nil, lang=nil, storagemode=nil, vocablibnamelist=nil)
          @Functions = functions
          @SeqId = seqid
          @SessionId = sessionid
          @UserVoiceData = uservoicedata
          @VoiceEncodeType = voiceencodetype
          @VoiceFileType = voicefiletype
          @IsEnd = isend
          @Lang = lang
          @StorageMode = storagemode
          @VocabLibNameList = vocablibnamelist
        end

        def deserialize(params)
          unless params['Functions'].nil?
            @Functions = Function.new.deserialize(params[Functions])
          end
          @SeqId = params['SeqId']
          @SessionId = params['SessionId']
          @UserVoiceData = params['UserVoiceData']
          @VoiceEncodeType = params['VoiceEncodeType']
          @VoiceFileType = params['VoiceFileType']
          @IsEnd = params['IsEnd']
          @Lang = params['Lang']
          @StorageMode = params['StorageMode']
          @VocabLibNameList = params['VocabLibNameList']
        end
      end

      # TransmitAudioStream返回参数结构体
      class TransmitAudioStreamResponse < TencentCloud::Common::AbstractModel
        # @param AsrStat: 返回的当前音频的统计信息。当进度为100时返回。
        # @type AsrStat: :class:`Tencentcloud::Tci.v20190318.models.ASRStat`
        # @param Texts: 返回当前音频流的详细信息，如果是流模式，返回的是对应流的详细信息，如果是 URL模式，返回的是查询的那一段seq对应的音频的详细信息。
        # @type Texts: Array
        # @param VocabAnalysisDetailInfo: 返回词汇库中的单词出现的详细时间信息。
        # @type VocabAnalysisDetailInfo: Array
        # @param VocabAnalysisStatInfo: 返回词汇库中的单词出现的次数信息。
        # @type VocabAnalysisStatInfo: Array
        # @param AllTexts: 音频全部文本。
        # @type AllTexts: String
        # @param AudioUrl: 临时保存的音频链接
        # @type AudioUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsrStat, :Texts, :VocabAnalysisDetailInfo, :VocabAnalysisStatInfo, :AllTexts, :AudioUrl, :RequestId
        
        def initialize(asrstat=nil, texts=nil, vocabanalysisdetailinfo=nil, vocabanalysisstatinfo=nil, alltexts=nil, audiourl=nil, requestid=nil)
          @AsrStat = asrstat
          @Texts = texts
          @VocabAnalysisDetailInfo = vocabanalysisdetailinfo
          @VocabAnalysisStatInfo = vocabanalysisstatinfo
          @AllTexts = alltexts
          @AudioUrl = audiourl
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AsrStat'].nil?
            @AsrStat = ASRStat.new.deserialize(params[AsrStat])
          end
          @Texts = params['Texts']
          @VocabAnalysisDetailInfo = params['VocabAnalysisDetailInfo']
          @VocabAnalysisStatInfo = params['VocabAnalysisStatInfo']
          @AllTexts = params['AllTexts']
          @AudioUrl = params['AudioUrl']
          @RequestId = params['RequestId']
        end
      end

      # 词汇库中的单词出现在音频中的那个句子的起始时间和结束时间信息
      class VocabDetailInfomation < TencentCloud::Common::AbstractModel
        # @param VocabDetailInfo: 词汇库中的单词出现在该音频中的那个句子的时间戳，出现了几次，就返回对应次数的起始和结束时间戳
        # @type VocabDetailInfo: Array
        # @param VocabLibName: 词汇库名
        # @type VocabLibName: String

        attr_accessor :VocabDetailInfo, :VocabLibName
        
        def initialize(vocabdetailinfo=nil, vocablibname=nil)
          @VocabDetailInfo = vocabdetailinfo
          @VocabLibName = vocablibname
        end

        def deserialize(params)
          @VocabDetailInfo = params['VocabDetailInfo']
          @VocabLibName = params['VocabLibName']
        end
      end

      # 词汇库中的单词出现在音频中的总次数信息
      class VocabStatInfomation < TencentCloud::Common::AbstractModel
        # @param VocabDetailInfo: 单词出现在该音频中总次数
        # @type VocabDetailInfo: Array
        # @param VocabLibName: 词汇库名称
        # @type VocabLibName: String

        attr_accessor :VocabDetailInfo, :VocabLibName
        
        def initialize(vocabdetailinfo=nil, vocablibname=nil)
          @VocabDetailInfo = vocabdetailinfo
          @VocabLibName = vocablibname
        end

        def deserialize(params)
          @VocabDetailInfo = params['VocabDetailInfo']
          @VocabLibName = params['VocabLibName']
        end
      end

      # 含有语速的句子信息
      class WholeTextItem < TencentCloud::Common::AbstractModel
        # @param TextItem: 当前句子的信息
        # @type TextItem: :class:`Tencentcloud::Tci.v20190318.models.TextItem`
        # @param AvgVolume: Vad的平均音量
        # @type AvgVolume: Float
        # @param MaxVolume: Vad的最大音量
        # @type MaxVolume: Float
        # @param MinVolume: Vad的最小音量
        # @type MinVolume: Float
        # @param Speed: 当前句子的语速
        # @type Speed: Float

        attr_accessor :TextItem, :AvgVolume, :MaxVolume, :MinVolume, :Speed
        
        def initialize(textitem=nil, avgvolume=nil, maxvolume=nil, minvolume=nil, speed=nil)
          @TextItem = textitem
          @AvgVolume = avgvolume
          @MaxVolume = maxvolume
          @MinVolume = minvolume
          @Speed = speed
        end

        def deserialize(params)
          unless params['TextItem'].nil?
            @TextItem = TextItem.new.deserialize(params[TextItem])
          end
          @AvgVolume = params['AvgVolume']
          @MaxVolume = params['MaxVolume']
          @MinVolume = params['MinVolume']
          @Speed = params['Speed']
        end
      end

      # 当前句子包含的所有单词信息
      class Word < TencentCloud::Common::AbstractModel
        # @param Confidence: 当前词的置信度
        # @type Confidence: Float
        # @param Mbtm: 当前单词语音的起始时间点，单位为ms
        # @type Mbtm: Integer
        # @param Metm: 当前单词语音的终止时间点，单位为ms
        # @type Metm: Integer
        # @param Text: 当前词
        # @type Text: String
        # @param Wsize: 当前词的字节数
        # @type Wsize: Integer

        attr_accessor :Confidence, :Mbtm, :Metm, :Text, :Wsize
        
        def initialize(confidence=nil, mbtm=nil, metm=nil, text=nil, wsize=nil)
          @Confidence = confidence
          @Mbtm = mbtm
          @Metm = metm
          @Text = text
          @Wsize = wsize
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Mbtm = params['Mbtm']
          @Metm = params['Metm']
          @Text = params['Text']
          @Wsize = params['Wsize']
        end
      end

      # 单词出现的那个句子的起始时间和结束时间信息
      class WordTimePair < TencentCloud::Common::AbstractModel
        # @param Mbtm: 单词出现的那个句子的起始时间
        # @type Mbtm: Integer
        # @param Metm: 	单词出现的那个句子的结束时间
        # @type Metm: Integer

        attr_accessor :Mbtm, :Metm
        
        def initialize(mbtm=nil, metm=nil)
          @Mbtm = mbtm
          @Metm = metm
        end

        def deserialize(params)
          @Mbtm = params['Mbtm']
          @Metm = params['Metm']
        end
      end

    end
  end
end

