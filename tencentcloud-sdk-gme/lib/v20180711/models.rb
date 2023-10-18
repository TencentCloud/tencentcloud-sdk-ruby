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
  module Gme
    module V20180711
      # 年龄语音识别子任务
      class AgeDetectTask < TencentCloud::Common::AbstractModel
        # @param DataId: 数据唯一ID
        # @type DataId: String
        # @param Url: 数据文件的url，为 urlencode 编码,音频文件格式支持的类型：.wav、.m4a、.amr、.mp3、.aac、.wma、.ogg
        # @type Url: String

        attr_accessor :DataId, :Url

        def initialize(dataid=nil, url=nil)
          @DataId = dataid
          @Url = url
        end

        def deserialize(params)
          @DataId = params['DataId']
          @Url = params['Url']
        end
      end

      # 年龄语音任务结果
      class AgeDetectTaskResult < TencentCloud::Common::AbstractModel
        # @param DataId: 数据唯一ID
        # @type DataId: String
        # @param Url: 数据文件的url
        # @type Url: String
        # @param Status: 任务状态，0: 已创建，1:运行中，2:正常结束，3:异常结束，4:运行超时
        # @type Status: Integer
        # @param Age: 任务结果：0: 成年，1:未成年，100:未知
        # @type Age: Integer

        attr_accessor :DataId, :Url, :Status, :Age

        def initialize(dataid=nil, url=nil, status=nil, age=nil)
          @DataId = dataid
          @Url = url
          @Status = status
          @Age = age
        end

        def deserialize(params)
          @DataId = params['DataId']
          @Url = params['Url']
          @Status = params['Status']
          @Age = params['Age']
        end
      end

      # 应用用量统计数据
      class AppStatisticsItem < TencentCloud::Common::AbstractModel
        # @param RealtimeSpeechStatisticsItem: 实时语音统计数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealtimeSpeechStatisticsItem: :class:`Tencentcloud::Gme.v20180711.models.RealTimeSpeechStatisticsItem`
        # @param VoiceMessageStatisticsItem: 语音消息统计数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoiceMessageStatisticsItem: :class:`Tencentcloud::Gme.v20180711.models.VoiceMessageStatisticsItem`
        # @param VoiceFilterStatisticsItem: 语音过滤统计数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoiceFilterStatisticsItem: :class:`Tencentcloud::Gme.v20180711.models.VoiceFilterStatisticsItem`
        # @param Date: 统计时间
        # @type Date: String
        # @param AudioTextStatisticsItem: 录音转文本用量统计数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioTextStatisticsItem: :class:`Tencentcloud::Gme.v20180711.models.AudioTextStatisticsItem`
        # @param StreamTextStatisticsItem: 流式转文本用量数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StreamTextStatisticsItem: :class:`Tencentcloud::Gme.v20180711.models.StreamTextStatisticsItem`
        # @param OverseaTextStatisticsItem: 海外转文本用量数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OverseaTextStatisticsItem: :class:`Tencentcloud::Gme.v20180711.models.OverseaTextStatisticsItem`
        # @param RealtimeTextStatisticsItem: 实时语音转文本用量数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealtimeTextStatisticsItem: :class:`Tencentcloud::Gme.v20180711.models.RealtimeTextStatisticsItem`

        attr_accessor :RealtimeSpeechStatisticsItem, :VoiceMessageStatisticsItem, :VoiceFilterStatisticsItem, :Date, :AudioTextStatisticsItem, :StreamTextStatisticsItem, :OverseaTextStatisticsItem, :RealtimeTextStatisticsItem

        def initialize(realtimespeechstatisticsitem=nil, voicemessagestatisticsitem=nil, voicefilterstatisticsitem=nil, date=nil, audiotextstatisticsitem=nil, streamtextstatisticsitem=nil, overseatextstatisticsitem=nil, realtimetextstatisticsitem=nil)
          @RealtimeSpeechStatisticsItem = realtimespeechstatisticsitem
          @VoiceMessageStatisticsItem = voicemessagestatisticsitem
          @VoiceFilterStatisticsItem = voicefilterstatisticsitem
          @Date = date
          @AudioTextStatisticsItem = audiotextstatisticsitem
          @StreamTextStatisticsItem = streamtextstatisticsitem
          @OverseaTextStatisticsItem = overseatextstatisticsitem
          @RealtimeTextStatisticsItem = realtimetextstatisticsitem
        end

        def deserialize(params)
          unless params['RealtimeSpeechStatisticsItem'].nil?
            @RealtimeSpeechStatisticsItem = RealTimeSpeechStatisticsItem.new
            @RealtimeSpeechStatisticsItem.deserialize(params['RealtimeSpeechStatisticsItem'])
          end
          unless params['VoiceMessageStatisticsItem'].nil?
            @VoiceMessageStatisticsItem = VoiceMessageStatisticsItem.new
            @VoiceMessageStatisticsItem.deserialize(params['VoiceMessageStatisticsItem'])
          end
          unless params['VoiceFilterStatisticsItem'].nil?
            @VoiceFilterStatisticsItem = VoiceFilterStatisticsItem.new
            @VoiceFilterStatisticsItem.deserialize(params['VoiceFilterStatisticsItem'])
          end
          @Date = params['Date']
          unless params['AudioTextStatisticsItem'].nil?
            @AudioTextStatisticsItem = AudioTextStatisticsItem.new
            @AudioTextStatisticsItem.deserialize(params['AudioTextStatisticsItem'])
          end
          unless params['StreamTextStatisticsItem'].nil?
            @StreamTextStatisticsItem = StreamTextStatisticsItem.new
            @StreamTextStatisticsItem.deserialize(params['StreamTextStatisticsItem'])
          end
          unless params['OverseaTextStatisticsItem'].nil?
            @OverseaTextStatisticsItem = OverseaTextStatisticsItem.new
            @OverseaTextStatisticsItem.deserialize(params['OverseaTextStatisticsItem'])
          end
          unless params['RealtimeTextStatisticsItem'].nil?
            @RealtimeTextStatisticsItem = RealtimeTextStatisticsItem.new
            @RealtimeTextStatisticsItem.deserialize(params['RealtimeTextStatisticsItem'])
          end
        end
      end

      # 应用统计数据
      class ApplicationDataStatistics < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID
        # @type BizId: Integer
        # @param DauDataNum: Dau统计项数目
        # @type DauDataNum: Integer
        # @param DauDataMainland: 大陆地区Dau统计数据，单位人
        # @type DauDataMainland: Array
        # @param DauDataOversea: 海外地区Dau统计数据，单位人
        # @type DauDataOversea: Array
        # @param DauDataSum: 大陆和海外地区Dau统计数据汇总，单位人
        # @type DauDataSum: Array
        # @param DurationDataNum: 实时语音时长统计项数目
        # @type DurationDataNum: Integer
        # @param DurationDataMainland: 大陆地区实时语音时长统计数据，单位分钟
        # @type DurationDataMainland: Array
        # @param DurationDataOversea: 海外地区实时语音时长统计数据，单位分钟
        # @type DurationDataOversea: Array
        # @param DurationDataSum: 大陆和海外地区实时语音时长统计数据汇总，单位分钟
        # @type DurationDataSum: Array
        # @param PcuDataNum: Pcu统计项数目
        # @type PcuDataNum: Integer
        # @param PcuDataMainland: 大陆地区Pcu统计数据，单位人
        # @type PcuDataMainland: Array
        # @param PcuDataOversea: 海外地区Pcu统计数据，单位人
        # @type PcuDataOversea: Array
        # @param PcuDataSum: 大陆和海外地区Pcu统计数据汇总，单位人
        # @type PcuDataSum: Array

        attr_accessor :BizId, :DauDataNum, :DauDataMainland, :DauDataOversea, :DauDataSum, :DurationDataNum, :DurationDataMainland, :DurationDataOversea, :DurationDataSum, :PcuDataNum, :PcuDataMainland, :PcuDataOversea, :PcuDataSum

        def initialize(bizid=nil, daudatanum=nil, daudatamainland=nil, daudataoversea=nil, daudatasum=nil, durationdatanum=nil, durationdatamainland=nil, durationdataoversea=nil, durationdatasum=nil, pcudatanum=nil, pcudatamainland=nil, pcudataoversea=nil, pcudatasum=nil)
          @BizId = bizid
          @DauDataNum = daudatanum
          @DauDataMainland = daudatamainland
          @DauDataOversea = daudataoversea
          @DauDataSum = daudatasum
          @DurationDataNum = durationdatanum
          @DurationDataMainland = durationdatamainland
          @DurationDataOversea = durationdataoversea
          @DurationDataSum = durationdatasum
          @PcuDataNum = pcudatanum
          @PcuDataMainland = pcudatamainland
          @PcuDataOversea = pcudataoversea
          @PcuDataSum = pcudatasum
        end

        def deserialize(params)
          @BizId = params['BizId']
          @DauDataNum = params['DauDataNum']
          unless params['DauDataMainland'].nil?
            @DauDataMainland = []
            params['DauDataMainland'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @DauDataMainland << statisticsitem_tmp
            end
          end
          unless params['DauDataOversea'].nil?
            @DauDataOversea = []
            params['DauDataOversea'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @DauDataOversea << statisticsitem_tmp
            end
          end
          unless params['DauDataSum'].nil?
            @DauDataSum = []
            params['DauDataSum'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @DauDataSum << statisticsitem_tmp
            end
          end
          @DurationDataNum = params['DurationDataNum']
          unless params['DurationDataMainland'].nil?
            @DurationDataMainland = []
            params['DurationDataMainland'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @DurationDataMainland << statisticsitem_tmp
            end
          end
          unless params['DurationDataOversea'].nil?
            @DurationDataOversea = []
            params['DurationDataOversea'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @DurationDataOversea << statisticsitem_tmp
            end
          end
          unless params['DurationDataSum'].nil?
            @DurationDataSum = []
            params['DurationDataSum'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @DurationDataSum << statisticsitem_tmp
            end
          end
          @PcuDataNum = params['PcuDataNum']
          unless params['PcuDataMainland'].nil?
            @PcuDataMainland = []
            params['PcuDataMainland'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @PcuDataMainland << statisticsitem_tmp
            end
          end
          unless params['PcuDataOversea'].nil?
            @PcuDataOversea = []
            params['PcuDataOversea'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @PcuDataOversea << statisticsitem_tmp
            end
          end
          unless params['PcuDataSum'].nil?
            @PcuDataSum = []
            params['PcuDataSum'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @PcuDataSum << statisticsitem_tmp
            end
          end
        end
      end

      # 获取应用列表返回
      class ApplicationList < TencentCloud::Common::AbstractModel
        # @param ServiceConf: 服务开关状态
        # @type ServiceConf: :class:`Tencentcloud::Gme.v20180711.models.ServiceStatus`
        # @param BizId: 应用ID(AppID)
        # @type BizId: Integer
        # @param AppName: 应用名称
        # @type AppName: String
        # @param ProjectId: 项目ID，默认为0
        # @type ProjectId: Integer
        # @param AppStatus: 应用状态，返回0表示正常，1表示关闭，2表示欠费停服，3表示欠费回收
        # @type AppStatus: Integer
        # @param CreateTime: 创建时间，Unix时间戳格式
        # @type CreateTime: Integer
        # @param AppType: 应用类型，无需关注此数值
        # @type AppType: Integer

        attr_accessor :ServiceConf, :BizId, :AppName, :ProjectId, :AppStatus, :CreateTime, :AppType

        def initialize(serviceconf=nil, bizid=nil, appname=nil, projectid=nil, appstatus=nil, createtime=nil, apptype=nil)
          @ServiceConf = serviceconf
          @BizId = bizid
          @AppName = appname
          @ProjectId = projectid
          @AppStatus = appstatus
          @CreateTime = createtime
          @AppType = apptype
        end

        def deserialize(params)
          unless params['ServiceConf'].nil?
            @ServiceConf = ServiceStatus.new
            @ServiceConf.deserialize(params['ServiceConf'])
          end
          @BizId = params['BizId']
          @AppName = params['AppName']
          @ProjectId = params['ProjectId']
          @AppStatus = params['AppStatus']
          @CreateTime = params['CreateTime']
          @AppType = params['AppType']
        end
      end

      # 语音转文本配置数据
      class AsrConf < TencentCloud::Common::AbstractModel
        # @param Status: 语音转文本服务开关，取值：open/close
        # @type Status: String

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # 录音转文本用量统计数据
      class AudioTextStatisticsItem < TencentCloud::Common::AbstractModel
        # @param Data: 统计值，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Float

        attr_accessor :Data

        def initialize(data=nil)
          @Data = data
        end

        def deserialize(params)
          @Data = params['Data']
        end
      end

      # CreateAgeDetectTask请求参数结构体
      class CreateAgeDetectTaskRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用id
        # @type BizId: Integer
        # @param Tasks: 语音检测子任务列表，列表最多支持100个检测子任务。结构体中包含：
        # <li>DataId：数据的唯一ID</li>
        # <li>Url：数据文件的url，为 urlencode 编码，流式则为拉流地址</li>
        # @type Tasks: Array
        # @param Callback: 任务结束时gme后台会自动触发回调
        # @type Callback: String

        attr_accessor :BizId, :Tasks, :Callback

        def initialize(bizid=nil, tasks=nil, callback=nil)
          @BizId = bizid
          @Tasks = tasks
          @Callback = callback
        end

        def deserialize(params)
          @BizId = params['BizId']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              agedetecttask_tmp = AgeDetectTask.new
              agedetecttask_tmp.deserialize(i)
              @Tasks << agedetecttask_tmp
            end
          end
          @Callback = params['Callback']
        end
      end

      # CreateAgeDetectTask返回参数结构体
      class CreateAgeDetectTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 本次任务提交后唯一id，用于获取任务运行结果
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

      # CreateApp请求参数结构体
      class CreateAppRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称
        # @type AppName: String
        # @param ProjectId: 腾讯云项目ID，默认为0，表示默认项目
        # @type ProjectId: Integer
        # @param EngineList: 需要支持的引擎列表，默认全选。
        # 取值：android/ios/unity/cocos/unreal/windows
        # @type EngineList: Array
        # @param RegionList: 服务区域列表，默认全选。
        # 取值：mainland-大陆地区，hmt-港澳台，sea-东南亚，na-北美，eu-欧洲，jpkr-日韩亚太，sa-南美，oc-澳洲，me-中东
        # @type RegionList: Array
        # @param RealtimeSpeechConf: 实时语音服务配置数据
        # @type RealtimeSpeechConf: :class:`Tencentcloud::Gme.v20180711.models.RealtimeSpeechConf`
        # @param VoiceMessageConf: 语音消息服务配置数据
        # @type VoiceMessageConf: :class:`Tencentcloud::Gme.v20180711.models.VoiceMessageConf`
        # @param VoiceFilterConf: 语音分析服务配置数据
        # @type VoiceFilterConf: :class:`Tencentcloud::Gme.v20180711.models.VoiceFilterConf`
        # @param AsrConf: 语音转文本配置数据
        # @type AsrConf: :class:`Tencentcloud::Gme.v20180711.models.AsrConf`
        # @param Tags: 需要添加的标签列表
        # @type Tags: Array

        attr_accessor :AppName, :ProjectId, :EngineList, :RegionList, :RealtimeSpeechConf, :VoiceMessageConf, :VoiceFilterConf, :AsrConf, :Tags

        def initialize(appname=nil, projectid=nil, enginelist=nil, regionlist=nil, realtimespeechconf=nil, voicemessageconf=nil, voicefilterconf=nil, asrconf=nil, tags=nil)
          @AppName = appname
          @ProjectId = projectid
          @EngineList = enginelist
          @RegionList = regionlist
          @RealtimeSpeechConf = realtimespeechconf
          @VoiceMessageConf = voicemessageconf
          @VoiceFilterConf = voicefilterconf
          @AsrConf = asrconf
          @Tags = tags
        end

        def deserialize(params)
          @AppName = params['AppName']
          @ProjectId = params['ProjectId']
          @EngineList = params['EngineList']
          @RegionList = params['RegionList']
          unless params['RealtimeSpeechConf'].nil?
            @RealtimeSpeechConf = RealtimeSpeechConf.new
            @RealtimeSpeechConf.deserialize(params['RealtimeSpeechConf'])
          end
          unless params['VoiceMessageConf'].nil?
            @VoiceMessageConf = VoiceMessageConf.new
            @VoiceMessageConf.deserialize(params['VoiceMessageConf'])
          end
          unless params['VoiceFilterConf'].nil?
            @VoiceFilterConf = VoiceFilterConf.new
            @VoiceFilterConf.deserialize(params['VoiceFilterConf'])
          end
          unless params['AsrConf'].nil?
            @AsrConf = AsrConf.new
            @AsrConf.deserialize(params['AsrConf'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # CreateApp的输出参数
      class CreateAppResp < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID，由后台自动生成。
        # @type BizId: Integer
        # @param AppName: 应用名称，透传输入参数的AppName
        # @type AppName: String
        # @param ProjectId: 项目ID，透传输入的ProjectId
        # @type ProjectId: Integer
        # @param SecretKey: 应用密钥，GME SDK初始化时使用
        # @type SecretKey: String
        # @param CreateTime: 服务创建时间戳
        # @type CreateTime: Integer
        # @param RealtimeSpeechConf: 实时语音服务配置数据
        # @type RealtimeSpeechConf: :class:`Tencentcloud::Gme.v20180711.models.RealtimeSpeechConf`
        # @param VoiceMessageConf: 语音消息服务配置数据
        # @type VoiceMessageConf: :class:`Tencentcloud::Gme.v20180711.models.VoiceMessageConf`
        # @param VoiceFilterConf: 语音分析服务配置数据
        # @type VoiceFilterConf: :class:`Tencentcloud::Gme.v20180711.models.VoiceFilterConf`
        # @param AsrConf: 语音转文本服务配置数据
        # @type AsrConf: :class:`Tencentcloud::Gme.v20180711.models.AsrConf`

        attr_accessor :BizId, :AppName, :ProjectId, :SecretKey, :CreateTime, :RealtimeSpeechConf, :VoiceMessageConf, :VoiceFilterConf, :AsrConf

        def initialize(bizid=nil, appname=nil, projectid=nil, secretkey=nil, createtime=nil, realtimespeechconf=nil, voicemessageconf=nil, voicefilterconf=nil, asrconf=nil)
          @BizId = bizid
          @AppName = appname
          @ProjectId = projectid
          @SecretKey = secretkey
          @CreateTime = createtime
          @RealtimeSpeechConf = realtimespeechconf
          @VoiceMessageConf = voicemessageconf
          @VoiceFilterConf = voicefilterconf
          @AsrConf = asrconf
        end

        def deserialize(params)
          @BizId = params['BizId']
          @AppName = params['AppName']
          @ProjectId = params['ProjectId']
          @SecretKey = params['SecretKey']
          @CreateTime = params['CreateTime']
          unless params['RealtimeSpeechConf'].nil?
            @RealtimeSpeechConf = RealtimeSpeechConf.new
            @RealtimeSpeechConf.deserialize(params['RealtimeSpeechConf'])
          end
          unless params['VoiceMessageConf'].nil?
            @VoiceMessageConf = VoiceMessageConf.new
            @VoiceMessageConf.deserialize(params['VoiceMessageConf'])
          end
          unless params['VoiceFilterConf'].nil?
            @VoiceFilterConf = VoiceFilterConf.new
            @VoiceFilterConf.deserialize(params['VoiceFilterConf'])
          end
          unless params['AsrConf'].nil?
            @AsrConf = AsrConf.new
            @AsrConf.deserialize(params['AsrConf'])
          end
        end
      end

      # CreateApp返回参数结构体
      class CreateAppResponse < TencentCloud::Common::AbstractModel
        # @param Data: 创建应用返回数据
        # @type Data: :class:`Tencentcloud::Gme.v20180711.models.CreateAppResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateAppResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCustomization请求参数结构体
      class CreateCustomizationRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用 ID，登录控制台创建应用得到的AppID
        # @type BizId: Integer
        # @param TextUrl: 文本文件的下载地址，服务会从该地址下载文件，目前仅支持腾讯云cos
        # @type TextUrl: String
        # @param ModelName: 模型名称，名称长度不超过36，默认为BizId。
        # @type ModelName: String

        attr_accessor :BizId, :TextUrl, :ModelName

        def initialize(bizid=nil, texturl=nil, modelname=nil)
          @BizId = bizid
          @TextUrl = texturl
          @ModelName = modelname
        end

        def deserialize(params)
          @BizId = params['BizId']
          @TextUrl = params['TextUrl']
          @ModelName = params['ModelName']
        end
      end

      # CreateCustomization返回参数结构体
      class CreateCustomizationResponse < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelId, :RequestId

        def initialize(modelid=nil, requestid=nil)
          @ModelId = modelid
          @RequestId = requestid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @RequestId = params['RequestId']
        end
      end

      # CreateScanUser请求参数结构体
      class CreateScanUserRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID，登录控制台 - 服务管理创建应用得到的AppID
        # @type BizId: Integer
        # @param UserId: 需要新增送检的用户号。示例：1234
        # (若UserId不填，则UserIdString必填；两者选其一；两者都填以UserIdString为准)
        # @type UserId: Integer
        # @param UserIdString: 需要新增送检的用户号。示例："1234"
        # (若UserIdString不填，则UserId必填；两者选其一；两者都填以UserIdString为准)
        # @type UserIdString: String
        # @param ExpirationTime: 当前用户送检过期时间，单位：秒。
        # 若参数不为0，则在过期时间之后，用户不会被送检。
        # 若参数为0，则送检配置不会自动失效。
        # @type ExpirationTime: Integer

        attr_accessor :BizId, :UserId, :UserIdString, :ExpirationTime

        def initialize(bizid=nil, userid=nil, useridstring=nil, expirationtime=nil)
          @BizId = bizid
          @UserId = userid
          @UserIdString = useridstring
          @ExpirationTime = expirationtime
        end

        def deserialize(params)
          @BizId = params['BizId']
          @UserId = params['UserId']
          @UserIdString = params['UserIdString']
          @ExpirationTime = params['ExpirationTime']
        end
      end

      # CreateScanUser返回参数结构体
      class CreateScanUserResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 返回结果码
        # @type ErrorCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :RequestId

        def initialize(errorcode=nil, requestid=nil)
          @ErrorCode = errorcode
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @RequestId = params['RequestId']
        end
      end

      # 语音消息转文本热句模型配置
      class CustomizationConfigs < TencentCloud::Common::AbstractModel
        # @param BizId: 应用 ID，登录控制台创建应用得到的AppID
        # @type BizId: Integer
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param ModelState: 模型状态，-1下线状态，1上线状态, 0训练中, -2训练失败, 3上线中, 4下线中
        # @type ModelState: Integer
        # @param ModelName: 模型名称
        # @type ModelName: String
        # @param TextUrl: 文本文件的下载地址，服务会从该地址下载文件，目前仅支持腾讯云cos
        # @type TextUrl: String
        # @param UpdateTime: 更新时间，11位时间戳
        # @type UpdateTime: Integer

        attr_accessor :BizId, :ModelId, :ModelState, :ModelName, :TextUrl, :UpdateTime

        def initialize(bizid=nil, modelid=nil, modelstate=nil, modelname=nil, texturl=nil, updatetime=nil)
          @BizId = bizid
          @ModelId = modelid
          @ModelState = modelstate
          @ModelName = modelname
          @TextUrl = texturl
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @BizId = params['BizId']
          @ModelId = params['ModelId']
          @ModelState = params['ModelState']
          @ModelName = params['ModelName']
          @TextUrl = params['TextUrl']
          @UpdateTime = params['UpdateTime']
        end
      end

      # DeleteCustomization请求参数结构体
      class DeleteCustomizationRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 删除的模型ID
        # @type ModelId: String
        # @param BizId: 应用 ID，登录控制台创建应用得到的AppID
        # @type BizId: Integer

        attr_accessor :ModelId, :BizId

        def initialize(modelid=nil, bizid=nil)
          @ModelId = modelid
          @BizId = bizid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @BizId = params['BizId']
        end
      end

      # DeleteCustomization返回参数结构体
      class DeleteCustomizationResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 返回值。0为成功，非0为失败。
        # @type ErrorCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :RequestId

        def initialize(errorcode=nil, requestid=nil)
          @ErrorCode = errorcode
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @RequestId = params['RequestId']
        end
      end

      # 剔除房间操作结果
      class DeleteResult < TencentCloud::Common::AbstractModel
        # @param Code: 错误码，0-剔除成功 其他-剔除失败
        # @type Code: Integer
        # @param ErrorMsg: 错误描述
        # @type ErrorMsg: String

        attr_accessor :Code, :ErrorMsg

        def initialize(code=nil, errormsg=nil)
          @Code = code
          @ErrorMsg = errormsg
        end

        def deserialize(params)
          @Code = params['Code']
          @ErrorMsg = params['ErrorMsg']
        end
      end

      # DeleteRoomMember请求参数结构体
      class DeleteRoomMemberRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 要操作的房间id
        # @type RoomId: String
        # @param DeleteType: 剔除类型 1-删除房间 2-剔除用户
        # @type DeleteType: Integer
        # @param BizId: 应用id
        # @type BizId: Integer
        # @param Uids: 要剔除的用户列表
        # @type Uids: Array

        attr_accessor :RoomId, :DeleteType, :BizId, :Uids

        def initialize(roomid=nil, deletetype=nil, bizid=nil, uids=nil)
          @RoomId = roomid
          @DeleteType = deletetype
          @BizId = bizid
          @Uids = uids
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @DeleteType = params['DeleteType']
          @BizId = params['BizId']
          @Uids = params['Uids']
        end
      end

      # DeleteRoomMember返回参数结构体
      class DeleteRoomMemberResponse < TencentCloud::Common::AbstractModel
        # @param DeleteResult: 剔除房间或成员的操作结果
        # @type DeleteResult: :class:`Tencentcloud::Gme.v20180711.models.DeleteResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeleteResult, :RequestId

        def initialize(deleteresult=nil, requestid=nil)
          @DeleteResult = deleteresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeleteResult'].nil?
            @DeleteResult = DeleteResult.new
            @DeleteResult.deserialize(params['DeleteResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteScanUser请求参数结构体
      class DeleteScanUserRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID，登录控制台 - 服务管理创建应用得到的AppID
        # @type BizId: Integer
        # @param UserId: 需要删除送检的用户号。示例：1234
        # (若UserId不填，则UserIdString必填；两者选其一；两者都填以UserIdString为准)
        # @type UserId: Integer
        # @param UserIdString: 需要删除送检的用户号。示例："1234"
        # (若UserIdString不填，则UserId必填；两者选其一；两者都填以UserIdString为准)
        # @type UserIdString: String

        attr_accessor :BizId, :UserId, :UserIdString

        def initialize(bizid=nil, userid=nil, useridstring=nil)
          @BizId = bizid
          @UserId = userid
          @UserIdString = useridstring
        end

        def deserialize(params)
          @BizId = params['BizId']
          @UserId = params['UserId']
          @UserIdString = params['UserIdString']
        end
      end

      # DeleteScanUser返回参数结构体
      class DeleteScanUserResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 返回结果码
        # @type ErrorCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :RequestId

        def initialize(errorcode=nil, requestid=nil)
          @ErrorCode = errorcode
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgeDetectTask请求参数结构体
      class DescribeAgeDetectTaskRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用id
        # @type BizId: Integer
        # @param TaskId: [创建年龄语音识别任务](https://cloud.tencent.com/document/product/607/60620)时返回的taskid
        # @type TaskId: String

        attr_accessor :BizId, :TaskId

        def initialize(bizid=nil, taskid=nil)
          @BizId = bizid
          @TaskId = taskid
        end

        def deserialize(params)
          @BizId = params['BizId']
          @TaskId = params['TaskId']
        end
      end

      # DescribeAgeDetectTask返回参数结构体
      class DescribeAgeDetectTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param Results: 语音检测返回。Results 字段是 JSON 数组，每一个元素包含：
        # DataId： 请求中对应的 DataId。
        # Url ：该请求中对应的 Url。
        # Status ：子任务状态，0:已创建，1:运行中，2:已完成，3:任务异常，4:任务超时。
        # Age ：子任务完成后的结果，0:成年人，1:未成年人，100:未知结果。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Results, :RequestId

        def initialize(taskid=nil, results=nil, requestid=nil)
          @TaskId = taskid
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              agedetecttaskresult_tmp = AgeDetectTaskResult.new
              agedetecttaskresult_tmp.deserialize(i)
              @Results << agedetecttaskresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAppStatistics请求参数结构体
      class DescribeAppStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param BizId: GME应用ID
        # @type BizId: Integer
        # @param StartDate: 数据开始时间，东八区时间，格式: 年-月-日，如: 2018-07-13
        # @type StartDate: String
        # @param EndDate: 数据结束时间，东八区时间，格式: 年-月-日，如: 2018-07-13
        # @type EndDate: String
        # @param Services: 要查询的服务列表，取值：RealTimeSpeech/VoiceMessage/VoiceFilter/SpeechToText
        # @type Services: Array

        attr_accessor :BizId, :StartDate, :EndDate, :Services

        def initialize(bizid=nil, startdate=nil, enddate=nil, services=nil)
          @BizId = bizid
          @StartDate = startdate
          @EndDate = enddate
          @Services = services
        end

        def deserialize(params)
          @BizId = params['BizId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Services = params['Services']
        end
      end

      # 获取应用用量统计数据输出参数
      class DescribeAppStatisticsResp < TencentCloud::Common::AbstractModel
        # @param AppStatistics: 应用用量统计数据
        # @type AppStatistics: Array

        attr_accessor :AppStatistics

        def initialize(appstatistics=nil)
          @AppStatistics = appstatistics
        end

        def deserialize(params)
          unless params['AppStatistics'].nil?
            @AppStatistics = []
            params['AppStatistics'].each do |i|
              appstatisticsitem_tmp = AppStatisticsItem.new
              appstatisticsitem_tmp.deserialize(i)
              @AppStatistics << appstatisticsitem_tmp
            end
          end
        end
      end

      # DescribeAppStatistics返回参数结构体
      class DescribeAppStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 应用用量统计数据
        # @type Data: :class:`Tencentcloud::Gme.v20180711.models.DescribeAppStatisticsResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeAppStatisticsResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationData请求参数结构体
      class DescribeApplicationDataRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID
        # @type BizId: Integer
        # @param StartDate: 数据开始时间，格式为 年-月-日，如: 2018-07-13
        # @type StartDate: String
        # @param EndDate: 数据结束时间，格式为 年-月-日，如: 2018-07-13
        # @type EndDate: String

        attr_accessor :BizId, :StartDate, :EndDate

        def initialize(bizid=nil, startdate=nil, enddate=nil)
          @BizId = bizid
          @StartDate = startdate
          @EndDate = enddate
        end

        def deserialize(params)
          @BizId = params['BizId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeApplicationData返回参数结构体
      class DescribeApplicationDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 应用统计数据
        # @type Data: :class:`Tencentcloud::Gme.v20180711.models.ApplicationDataStatistics`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ApplicationDataStatistics.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationList请求参数结构体
      class DescribeApplicationListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID，0表示默认项目，-1表示所有项目，如果需要查找具体项目下的应用列表，请填入具体项目ID，项目ID在项目管理中查看 https://console.cloud.tencent.com/project
        # @type ProjectId: Integer
        # @param PageNo: 页码ID，0表示第一页，以此后推。默认填0
        # @type PageNo: Integer
        # @param PageSize: 每页展示应用数量。默认填200
        # @type PageSize: Integer
        # @param SearchText: 所查找应用名称的关键字，支持模糊匹配查找。空串表示查询所有应用
        # @type SearchText: String
        # @param TagSet: 标签列表
        # @type TagSet: Array
        # @param Filters: 查找过滤关键字列表
        # @type Filters: Array

        attr_accessor :ProjectId, :PageNo, :PageSize, :SearchText, :TagSet, :Filters

        def initialize(projectid=nil, pageno=nil, pagesize=nil, searchtext=nil, tagset=nil, filters=nil)
          @ProjectId = projectid
          @PageNo = pageno
          @PageSize = pagesize
          @SearchText = searchtext
          @TagSet = tagset
          @Filters = filters
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @SearchText = params['SearchText']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
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

      # DescribeApplicationList返回参数结构体
      class DescribeApplicationListResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationList: 获取应用列表返回
        # @type ApplicationList: Array
        # @param Total: 应用总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicationList, :Total, :RequestId

        def initialize(applicationlist=nil, total=nil, requestid=nil)
          @ApplicationList = applicationlist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApplicationList'].nil?
            @ApplicationList = []
            params['ApplicationList'].each do |i|
              applicationlist_tmp = ApplicationList.new
              applicationlist_tmp.deserialize(i)
              @ApplicationList << applicationlist_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRealtimeScanConfig请求参数结构体
      class DescribeRealtimeScanConfigRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID。
        # @type BizId: Integer

        attr_accessor :BizId

        def initialize(bizid=nil)
          @BizId = bizid
        end

        def deserialize(params)
          @BizId = params['BizId']
        end
      end

      # DescribeRealtimeScanConfig返回参数结构体
      class DescribeRealtimeScanConfigResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 返回结果码，0正常，非0失败
        # @type ErrorCode: Integer
        # @param BizId: 应用ID
        # @type BizId: Integer
        # @param AuditType: 送检类型，0: 全量送审，1: 自定义送审
        # @type AuditType: Integer
        # @param UserIdRegex: 用户号正则表达式。
        # 符合此正则表达式规则的用户号将被送检。示例：^6.*（表示所有以6开头的用户号将被送检）
        # @type UserIdRegex: Array
        # @param RoomIdRegex: 房间号正则表达式。
        # 符合此正则表达式规则的房间号将被送检。示例：^6.*（表示所有以6开头的房间号将被送检）
        # @type RoomIdRegex: Array
        # @param UserIdString: 用户号字符串，逗号分隔，示例："0001,0002,0003"
        # @type UserIdString: String
        # @param RoomIdString: 房间号字符串，逗号分隔，示例："0001,0002,0003"
        # @type RoomIdString: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :BizId, :AuditType, :UserIdRegex, :RoomIdRegex, :UserIdString, :RoomIdString, :RequestId

        def initialize(errorcode=nil, bizid=nil, audittype=nil, useridregex=nil, roomidregex=nil, useridstring=nil, roomidstring=nil, requestid=nil)
          @ErrorCode = errorcode
          @BizId = bizid
          @AuditType = audittype
          @UserIdRegex = useridregex
          @RoomIdRegex = roomidregex
          @UserIdString = useridstring
          @RoomIdString = roomidstring
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @BizId = params['BizId']
          @AuditType = params['AuditType']
          @UserIdRegex = params['UserIdRegex']
          @RoomIdRegex = params['RoomIdRegex']
          @UserIdString = params['UserIdString']
          @RoomIdString = params['RoomIdString']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordInfo请求参数结构体
      class DescribeRecordInfoRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 进行中的任务taskid（StartRecord接口返回）。
        # @type TaskId: Integer
        # @param BizId: 应用ID。
        # @type BizId: Integer

        attr_accessor :TaskId, :BizId

        def initialize(taskid=nil, bizid=nil)
          @TaskId = taskid
          @BizId = bizid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @BizId = params['BizId']
        end
      end

      # DescribeRecordInfo返回参数结构体
      class DescribeRecordInfoResponse < TencentCloud::Common::AbstractModel
        # @param RecordInfo: 录制信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordInfo: Array
        # @param RecordMode: 录制类型：1代表单流 2代表混流 3代表单流和混流。
        # @type RecordMode: Integer
        # @param RoomId: 房间ID。
        # @type RoomId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordInfo, :RecordMode, :RoomId, :RequestId

        def initialize(recordinfo=nil, recordmode=nil, roomid=nil, requestid=nil)
          @RecordInfo = recordinfo
          @RecordMode = recordmode
          @RoomId = roomid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RecordInfo'].nil?
            @RecordInfo = []
            params['RecordInfo'].each do |i|
              recordinfo_tmp = RecordInfo.new
              recordinfo_tmp.deserialize(i)
              @RecordInfo << recordinfo_tmp
            end
          end
          @RecordMode = params['RecordMode']
          @RoomId = params['RoomId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoomInfo请求参数结构体
      class DescribeRoomInfoRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用ID，登录[控制台 - 服务管理](https://console.cloud.tencent.com/gamegme)创建应用得到的AppID
        # @type SdkAppId: Integer
        # @param RoomIds: 房间号列表，最大不能超过10个（RoomIds、StrRoomIds必须填一个）
        # @type RoomIds: Array
        # @param StrRoomIds: 字符串类型房间号列表，最大不能超过10个（RoomIds、StrRoomIds必须填一个）
        # @type StrRoomIds: Array

        attr_accessor :SdkAppId, :RoomIds, :StrRoomIds

        def initialize(sdkappid=nil, roomids=nil, strroomids=nil)
          @SdkAppId = sdkappid
          @RoomIds = roomids
          @StrRoomIds = strroomids
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomIds = params['RoomIds']
          @StrRoomIds = params['StrRoomIds']
        end
      end

      # DescribeRoomInfo返回参数结构体
      class DescribeRoomInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作结果, 0成功, 非0失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Integer
        # @param RoomUsers: 房间用户信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoomUsers: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RoomUsers, :RequestId

        def initialize(result=nil, roomusers=nil, requestid=nil)
          @Result = result
          @RoomUsers = roomusers
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          unless params['RoomUsers'].nil?
            @RoomUsers = []
            params['RoomUsers'].each do |i|
              roomuser_tmp = RoomUser.new
              roomuser_tmp.deserialize(i)
              @RoomUsers << roomuser_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 语音检测结果返回
      class DescribeScanResult < TencentCloud::Common::AbstractModel
        # @param Code: 业务返回码
        # @type Code: Integer
        # @param DataId: 数据唯一 ID
        # @type DataId: String
        # @param ScanFinishTime: 检测完成的时间戳
        # @type ScanFinishTime: Integer
        # @param HitFlag: 是否违规
        # @type HitFlag: Boolean
        # @param Live: 是否为流
        # @type Live: Boolean
        # @param Msg: 业务返回描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param ScanPiece: 检测结果，Code 为 0 时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanPiece: Array
        # @param ScanStartTime: 提交检测的时间戳
        # @type ScanStartTime: Integer
        # @param Scenes: 语音检测场景，对应请求时的 Scene
        # @type Scenes: Array
        # @param TaskId: 语音检测任务 ID，由后台分配
        # @type TaskId: String
        # @param Url: 文件或接流地址
        # @type Url: String
        # @param Status: 检测任务执行结果状态，分别为：
        # <li>Start: 任务开始</li>
        # <li>Success: 成功结束</li>
        # <li>Error: 异常</li>
        # @type Status: String
        # @param BizId: 提交检测的应用 ID
        # @type BizId: Integer

        attr_accessor :Code, :DataId, :ScanFinishTime, :HitFlag, :Live, :Msg, :ScanPiece, :ScanStartTime, :Scenes, :TaskId, :Url, :Status, :BizId

        def initialize(code=nil, dataid=nil, scanfinishtime=nil, hitflag=nil, live=nil, msg=nil, scanpiece=nil, scanstarttime=nil, scenes=nil, taskid=nil, url=nil, status=nil, bizid=nil)
          @Code = code
          @DataId = dataid
          @ScanFinishTime = scanfinishtime
          @HitFlag = hitflag
          @Live = live
          @Msg = msg
          @ScanPiece = scanpiece
          @ScanStartTime = scanstarttime
          @Scenes = scenes
          @TaskId = taskid
          @Url = url
          @Status = status
          @BizId = bizid
        end

        def deserialize(params)
          @Code = params['Code']
          @DataId = params['DataId']
          @ScanFinishTime = params['ScanFinishTime']
          @HitFlag = params['HitFlag']
          @Live = params['Live']
          @Msg = params['Msg']
          unless params['ScanPiece'].nil?
            @ScanPiece = []
            params['ScanPiece'].each do |i|
              scanpiece_tmp = ScanPiece.new
              scanpiece_tmp.deserialize(i)
              @ScanPiece << scanpiece_tmp
            end
          end
          @ScanStartTime = params['ScanStartTime']
          @Scenes = params['Scenes']
          @TaskId = params['TaskId']
          @Url = params['Url']
          @Status = params['Status']
          @BizId = params['BizId']
        end
      end

      # DescribeScanResultList请求参数结构体
      class DescribeScanResultListRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用 ID，登录[控制台](https://console.cloud.tencent.com/gamegme)创建应用得到的AppID
        # @type BizId: Integer
        # @param TaskIdList: 查询的任务 ID 列表，任务 ID 列表最多支持 100 个。
        # @type TaskIdList: Array
        # @param Limit: 任务返回结果数量，默认10，上限500。大文件任务忽略此参数，返回全量结果
        # @type Limit: Integer

        attr_accessor :BizId, :TaskIdList, :Limit

        def initialize(bizid=nil, taskidlist=nil, limit=nil)
          @BizId = bizid
          @TaskIdList = taskidlist
          @Limit = limit
        end

        def deserialize(params)
          @BizId = params['BizId']
          @TaskIdList = params['TaskIdList']
          @Limit = params['Limit']
        end
      end

      # DescribeScanResultList返回参数结构体
      class DescribeScanResultListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 要查询的语音检测任务的结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              describescanresult_tmp = DescribeScanResult.new
              describescanresult_tmp.deserialize(i)
              @Data << describescanresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskInfo请求参数结构体
      class DescribeTaskInfoRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID。
        # @type BizId: Integer
        # @param RoomId: 房间ID。
        # @type RoomId: String

        attr_accessor :BizId, :RoomId

        def initialize(bizid=nil, roomid=nil)
          @BizId = bizid
          @RoomId = roomid
        end

        def deserialize(params)
          @BizId = params['BizId']
          @RoomId = params['RoomId']
        end
      end

      # DescribeTaskInfo返回参数结构体
      class DescribeTaskInfoResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 进行中的任务taskid（StartRecord接口返回）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param RecordMode: 录制类型：1代表单流 2代表混流 3代表单流和混流。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordMode: Integer
        # @param SubscribeRecordUserIds: 指定订阅流白名单或者黑名单。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscribeRecordUserIds: :class:`Tencentcloud::Gme.v20180711.models.SubscribeRecordUserIds`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RecordMode, :SubscribeRecordUserIds, :RequestId

        def initialize(taskid=nil, recordmode=nil, subscriberecorduserids=nil, requestid=nil)
          @TaskId = taskid
          @RecordMode = recordmode
          @SubscribeRecordUserIds = subscriberecorduserids
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RecordMode = params['RecordMode']
          unless params['SubscribeRecordUserIds'].nil?
            @SubscribeRecordUserIds = SubscribeRecordUserIds.new
            @SubscribeRecordUserIds.deserialize(params['SubscribeRecordUserIds'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserInAndOutTime请求参数结构体
      class DescribeUserInAndOutTimeRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID
        # @type BizId: Integer
        # @param RoomId: 房间ID
        # @type RoomId: Integer
        # @param UserId: 用户ID
        # @type UserId: Integer
        # @param UserIdStr: 字符串类型用户ID
        # @type UserIdStr: String
        # @param RoomIdStr: 字符串类型房间ID
        # @type RoomIdStr: String

        attr_accessor :BizId, :RoomId, :UserId, :UserIdStr, :RoomIdStr

        def initialize(bizid=nil, roomid=nil, userid=nil, useridstr=nil, roomidstr=nil)
          @BizId = bizid
          @RoomId = roomid
          @UserId = userid
          @UserIdStr = useridstr
          @RoomIdStr = roomidstr
        end

        def deserialize(params)
          @BizId = params['BizId']
          @RoomId = params['RoomId']
          @UserId = params['UserId']
          @UserIdStr = params['UserIdStr']
          @RoomIdStr = params['RoomIdStr']
        end
      end

      # DescribeUserInAndOutTime返回参数结构体
      class DescribeUserInAndOutTimeResponse < TencentCloud::Common::AbstractModel
        # @param InOutList: 用户在房间得进出时间列表
        # @type InOutList: Array
        # @param Duration: 用户在房间中总时长
        # @type Duration: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InOutList, :Duration, :RequestId

        def initialize(inoutlist=nil, duration=nil, requestid=nil)
          @InOutList = inoutlist
          @Duration = duration
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InOutList'].nil?
            @InOutList = []
            params['InOutList'].each do |i|
              inouttimeinfo_tmp = InOutTimeInfo.new
              inouttimeinfo_tmp.deserialize(i)
              @InOutList << inouttimeinfo_tmp
            end
          end
          @Duration = params['Duration']
          @RequestId = params['RequestId']
        end
      end

      # 查找过滤
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 要过滤的字段名, 比如"AppName"
        # @type Name: String
        # @param Values: 多个关键字
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

      # GetCustomizationList请求参数结构体
      class GetCustomizationListRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用 ID，登录控制台创建应用得到的AppID
        # @type BizId: Integer

        attr_accessor :BizId

        def initialize(bizid=nil)
          @BizId = bizid
        end

        def deserialize(params)
          @BizId = params['BizId']
        end
      end

      # GetCustomizationList返回参数结构体
      class GetCustomizationListResponse < TencentCloud::Common::AbstractModel
        # @param CustomizationConfigs: 语音消息转文本热句模型配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomizationConfigs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomizationConfigs, :RequestId

        def initialize(customizationconfigs=nil, requestid=nil)
          @CustomizationConfigs = customizationconfigs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CustomizationConfigs'].nil?
            @CustomizationConfigs = []
            params['CustomizationConfigs'].each do |i|
              customizationconfigs_tmp = CustomizationConfigs.new
              customizationconfigs_tmp.deserialize(i)
              @CustomizationConfigs << customizationconfigs_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 房间内的事件
      class InOutTimeInfo < TencentCloud::Common::AbstractModel
        # @param StartTime: 进入房间时间
        # @type StartTime: Integer
        # @param EndTime: 退出房间时间
        # @type EndTime: Integer

        attr_accessor :StartTime, :EndTime

        def initialize(starttime=nil, endtime=nil)
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # ModifyAppStatus请求参数结构体
      class ModifyAppStatusRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID，创建应用后由后台生成并返回。
        # @type BizId: Integer
        # @param Status: 应用状态，取值：open/close
        # @type Status: String

        attr_accessor :BizId, :Status

        def initialize(bizid=nil, status=nil)
          @BizId = bizid
          @Status = status
        end

        def deserialize(params)
          @BizId = params['BizId']
          @Status = params['Status']
        end
      end

      # ModifyAppStatus接口输出参数
      class ModifyAppStatusResp < TencentCloud::Common::AbstractModel
        # @param BizId: GME应用ID
        # @type BizId: Integer
        # @param Status: 应用状态，取值：open/close
        # @type Status: String

        attr_accessor :BizId, :Status

        def initialize(bizid=nil, status=nil)
          @BizId = bizid
          @Status = status
        end

        def deserialize(params)
          @BizId = params['BizId']
          @Status = params['Status']
        end
      end

      # ModifyAppStatus返回参数结构体
      class ModifyAppStatusResponse < TencentCloud::Common::AbstractModel
        # @param Data: 修改应用开关状态返回数据
        # @type Data: :class:`Tencentcloud::Gme.v20180711.models.ModifyAppStatusResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ModifyAppStatusResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyCustomization请求参数结构体
      class ModifyCustomizationRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用 ID，登录控制台创建应用得到的AppID
        # @type BizId: Integer
        # @param TextUrl: 文本文件的下载地址，服务会从该地址下载文件，目前仅支持腾讯云cos
        # @type TextUrl: String
        # @param ModelId: 修改的模型ID
        # @type ModelId: String

        attr_accessor :BizId, :TextUrl, :ModelId

        def initialize(bizid=nil, texturl=nil, modelid=nil)
          @BizId = bizid
          @TextUrl = texturl
          @ModelId = modelid
        end

        def deserialize(params)
          @BizId = params['BizId']
          @TextUrl = params['TextUrl']
          @ModelId = params['ModelId']
        end
      end

      # ModifyCustomization返回参数结构体
      class ModifyCustomizationResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 返回值。0为成功，非0为失败。
        # @type ErrorCode: Integer
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :ModelId, :RequestId

        def initialize(errorcode=nil, modelid=nil, requestid=nil)
          @ErrorCode = errorcode
          @ModelId = modelid
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @ModelId = params['ModelId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyCustomizationState请求参数结构体
      class ModifyCustomizationStateRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param ToState: 想要变换的模型状态，-1代表下线，1代表上线
        # @type ToState: Integer
        # @param BizId: 应用 ID，登录控制台创建应用得到的AppID
        # @type BizId: Integer

        attr_accessor :ModelId, :ToState, :BizId

        def initialize(modelid=nil, tostate=nil, bizid=nil)
          @ModelId = modelid
          @ToState = tostate
          @BizId = bizid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @ToState = params['ToState']
          @BizId = params['BizId']
        end
      end

      # ModifyCustomizationState返回参数结构体
      class ModifyCustomizationStateResponse < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param ErrorCode: 返回值。0为成功，非0为失败。
        # @type ErrorCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelId, :ErrorCode, :RequestId

        def initialize(modelid=nil, errorcode=nil, requestid=nil)
          @ModelId = modelid
          @ErrorCode = errorcode
          @RequestId = requestid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @ErrorCode = params['ErrorCode']
          @RequestId = params['RequestId']
        end
      end

      # ModifyRecordInfo请求参数结构体
      class ModifyRecordInfoRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 进行中的任务taskid（StartRecord接口返回）。
        # @type TaskId: Integer
        # @param RecordMode: 录制类型：1代表单流 2代表混流 3代表单流和混流。
        # @type RecordMode: Integer
        # @param BizId: 应用ID。
        # @type BizId: Integer
        # @param SubscribeRecordUserIds: 指定订阅流白名单或者黑名单。
        # @type SubscribeRecordUserIds: :class:`Tencentcloud::Gme.v20180711.models.SubscribeRecordUserIds`

        attr_accessor :TaskId, :RecordMode, :BizId, :SubscribeRecordUserIds

        def initialize(taskid=nil, recordmode=nil, bizid=nil, subscriberecorduserids=nil)
          @TaskId = taskid
          @RecordMode = recordmode
          @BizId = bizid
          @SubscribeRecordUserIds = subscriberecorduserids
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RecordMode = params['RecordMode']
          @BizId = params['BizId']
          unless params['SubscribeRecordUserIds'].nil?
            @SubscribeRecordUserIds = SubscribeRecordUserIds.new
            @SubscribeRecordUserIds.deserialize(params['SubscribeRecordUserIds'])
          end
        end
      end

      # ModifyRecordInfo返回参数结构体
      class ModifyRecordInfoResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUserMicStatus请求参数结构体
      class ModifyUserMicStatusRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 来自 [腾讯云控制台](https://console.cloud.tencent.com/gamegme) 的 GME 服务提供的 AppID，获取请参考 [语音服务开通指引](https://cloud.tencent.com/document/product/607/10782#.E9.87.8D.E7.82.B9.E5.8F.82.E6.95.B0)。
        # @type BizId: Integer
        # @param RoomId: 实时语音房间号。
        # @type RoomId: String
        # @param Users: 需要操作的房间内用户以及该用户的目标麦克风状态。
        # @type Users: Array

        attr_accessor :BizId, :RoomId, :Users

        def initialize(bizid=nil, roomid=nil, users=nil)
          @BizId = bizid
          @RoomId = roomid
          @Users = users
        end

        def deserialize(params)
          @BizId = params['BizId']
          @RoomId = params['RoomId']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              usermicstatus_tmp = UserMicStatus.new
              usermicstatus_tmp.deserialize(i)
              @Users << usermicstatus_tmp
            end
          end
        end
      end

      # ModifyUserMicStatus返回参数结构体
      class ModifyUserMicStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果：0为成功，非0为失败。
        # @type Result: Integer
        # @param ErrMsg: 错误信息。
        # @type ErrMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrMsg, :RequestId

        def initialize(result=nil, errmsg=nil, requestid=nil)
          @Result = result
          @ErrMsg = errmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrMsg = params['ErrMsg']
          @RequestId = params['RequestId']
        end
      end

      # 海外转文本用量数据
      class OverseaTextStatisticsItem < TencentCloud::Common::AbstractModel
        # @param Data: 统计值，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Float

        attr_accessor :Data

        def initialize(data=nil)
          @Data = data
        end

        def deserialize(params)
          @Data = params['Data']
        end
      end

      # 实时语音用量统计数据
      class RealTimeSpeechStatisticsItem < TencentCloud::Common::AbstractModel
        # @param MainLandDau: 大陆地区DAU
        # @type MainLandDau: Integer
        # @param MainLandPcu: 大陆地区PCU
        # @type MainLandPcu: Integer
        # @param MainLandDuration: 大陆地区总使用时长，单位为min
        # @type MainLandDuration: Integer
        # @param OverseaDau: 海外地区DAU
        # @type OverseaDau: Integer
        # @param OverseaPcu: 海外地区PCU
        # @type OverseaPcu: Integer
        # @param OverseaDuration: 海外地区总使用时长，单位为min
        # @type OverseaDuration: Integer

        attr_accessor :MainLandDau, :MainLandPcu, :MainLandDuration, :OverseaDau, :OverseaPcu, :OverseaDuration

        def initialize(mainlanddau=nil, mainlandpcu=nil, mainlandduration=nil, overseadau=nil, overseapcu=nil, overseaduration=nil)
          @MainLandDau = mainlanddau
          @MainLandPcu = mainlandpcu
          @MainLandDuration = mainlandduration
          @OverseaDau = overseadau
          @OverseaPcu = overseapcu
          @OverseaDuration = overseaduration
        end

        def deserialize(params)
          @MainLandDau = params['MainLandDau']
          @MainLandPcu = params['MainLandPcu']
          @MainLandDuration = params['MainLandDuration']
          @OverseaDau = params['OverseaDau']
          @OverseaPcu = params['OverseaPcu']
          @OverseaDuration = params['OverseaDuration']
        end
      end

      # 实时语音配置数据
      class RealtimeSpeechConf < TencentCloud::Common::AbstractModel
        # @param Status: 实时语音服务开关，取值：open/close
        # @type Status: String
        # @param Quality: 实时语音音质类型，取值：high-高音质 ordinary-普通音质
        # @type Quality: String

        attr_accessor :Status, :Quality

        def initialize(status=nil, quality=nil)
          @Status = status
          @Quality = quality
        end

        def deserialize(params)
          @Status = params['Status']
          @Quality = params['Quality']
        end
      end

      # 实时语音转文本用量数据
      class RealtimeTextStatisticsItem < TencentCloud::Common::AbstractModel
        # @param Data: 统计值，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Float

        attr_accessor :Data

        def initialize(data=nil)
          @Data = data
        end

        def deserialize(params)
          @Data = params['Data']
        end
      end

      # 房间内录制信息。
      # 注意：此字段可能返回 null，表示取不到有效值。
      class RecordInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID（当混流模式时，取值为0）。
        # @type UserId: String
        # @param FileName: 录制文件名。
        # @type FileName: String
        # @param RecordBeginTime: 录制开始时间（unix时间戳如：1234567868）。
        # @type RecordBeginTime: Integer
        # @param RecordStatus: 录制状态：2代表正在录制  10代表等待转码  11代表正在转码  12正在上传  13代表上传完成  14代表通知用户完成。
        # @type RecordStatus: Integer

        attr_accessor :UserId, :FileName, :RecordBeginTime, :RecordStatus

        def initialize(userid=nil, filename=nil, recordbegintime=nil, recordstatus=nil)
          @UserId = userid
          @FileName = filename
          @RecordBeginTime = recordbegintime
          @RecordStatus = recordstatus
        end

        def deserialize(params)
          @UserId = params['UserId']
          @FileName = params['FileName']
          @RecordBeginTime = params['RecordBeginTime']
          @RecordStatus = params['RecordStatus']
        end
      end

      # 房间内用户信息
      class RoomUser < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间id
        # @type RoomId: Integer
        # @param Uins: 房间里用户uin列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uins: Array
        # @param StrRoomId: 字符串房间id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrRoomId: String
        # @param StrUins: 房间里用户字符串uin列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrUins: Array

        attr_accessor :RoomId, :Uins, :StrRoomId, :StrUins

        def initialize(roomid=nil, uins=nil, strroomid=nil, struins=nil)
          @RoomId = roomid
          @Uins = uins
          @StrRoomId = strroomid
          @StrUins = struins
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @Uins = params['Uins']
          @StrRoomId = params['StrRoomId']
          @StrUins = params['StrUins']
        end
      end

      # 语音检测详情
      class ScanDetail < TencentCloud::Common::AbstractModel
        # @param Label: 违规场景，参照<a href="https://cloud.tencent.com/document/product/607/37622#Label_Value">Label</a>定义
        # @type Label: String
        # @param Rate: 该场景下概率[0.00,100.00],分值越大违规概率越高
        # @type Rate: String
        # @param KeyWord: 违规关键字
        # @type KeyWord: String
        # @param StartTime: 关键字在音频的开始时间，从0开始的偏移量，单位为毫秒
        # @type StartTime: Integer
        # @param EndTime: 关键字在音频的结束时间，从0开始的偏移量,，单位为毫秒
        # @type EndTime: Integer

        attr_accessor :Label, :Rate, :KeyWord, :StartTime, :EndTime

        def initialize(label=nil, rate=nil, keyword=nil, starttime=nil, endtime=nil)
          @Label = label
          @Rate = rate
          @KeyWord = keyword
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Label = params['Label']
          @Rate = params['Rate']
          @KeyWord = params['KeyWord']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 语音检测结果，Code 为 0 时返回
      class ScanPiece < TencentCloud::Common::AbstractModel
        # @param DumpUrl: 流检测时返回，音频转存地址，保留30min
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DumpUrl: String
        # @param HitFlag: 是否违规
        # @type HitFlag: Boolean
        # @param MainType: 违规主要类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MainType: String
        # @param ScanDetail: 语音检测详情
        # @type ScanDetail: Array
        # @param RoomId: gme实时语音房间ID，透传任务传入时的RoomId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoomId: String
        # @param OpenId: gme实时语音用户ID，透传任务传入时的OpenId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenId: String
        # @param Info: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: String
        # @param Offset: 流检测时分片在流中的偏移时间，单位毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Offset: Integer
        # @param Duration: 流检测时分片时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Integer
        # @param PieceStartTime: 分片开始检测时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PieceStartTime: Integer

        attr_accessor :DumpUrl, :HitFlag, :MainType, :ScanDetail, :RoomId, :OpenId, :Info, :Offset, :Duration, :PieceStartTime

        def initialize(dumpurl=nil, hitflag=nil, maintype=nil, scandetail=nil, roomid=nil, openid=nil, info=nil, offset=nil, duration=nil, piecestarttime=nil)
          @DumpUrl = dumpurl
          @HitFlag = hitflag
          @MainType = maintype
          @ScanDetail = scandetail
          @RoomId = roomid
          @OpenId = openid
          @Info = info
          @Offset = offset
          @Duration = duration
          @PieceStartTime = piecestarttime
        end

        def deserialize(params)
          @DumpUrl = params['DumpUrl']
          @HitFlag = params['HitFlag']
          @MainType = params['MainType']
          unless params['ScanDetail'].nil?
            @ScanDetail = []
            params['ScanDetail'].each do |i|
              scandetail_tmp = ScanDetail.new
              scandetail_tmp.deserialize(i)
              @ScanDetail << scandetail_tmp
            end
          end
          @RoomId = params['RoomId']
          @OpenId = params['OpenId']
          @Info = params['Info']
          @Offset = params['Offset']
          @Duration = params['Duration']
          @PieceStartTime = params['PieceStartTime']
        end
      end

      # ScanVoice请求参数结构体
      class ScanVoiceRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID，登录[控制台 - 服务管理](https://console.cloud.tencent.com/gamegme)创建应用得到的AppID
        # @type BizId: Integer
        # @param Scenes: 语音检测场景，参数值目前要求为 default。 预留场景设置： 谩骂、色情、广告、违禁等场景，<a href="#Label_Value">具体取值见上述 Label 说明。</a>
        # @type Scenes: Array
        # @param Live: 是否为直播流。值为 false 时表示普通语音文件检测；为 true 时表示语音流检测。
        # @type Live: Boolean
        # @param Tasks: 语音检测任务列表，列表最多支持100个检测任务。结构体中包含：
        # <li>DataId：数据的唯一ID</li>
        # <li>Url：数据文件的url，为 urlencode 编码，流式则为拉流地址</li>
        # @type Tasks: Array
        # @param Callback: 异步检测结果回调地址，具体见上述<a href="#Callback_Declare">回调相关说明</a>。（说明：该字段为空时，必须通过接口(查询语音检测结果)获取检测结果）。
        # @type Callback: String
        # @param Lang: 语种，不传默认中文
        # @type Lang: String

        attr_accessor :BizId, :Scenes, :Live, :Tasks, :Callback, :Lang

        def initialize(bizid=nil, scenes=nil, live=nil, tasks=nil, callback=nil, lang=nil)
          @BizId = bizid
          @Scenes = scenes
          @Live = live
          @Tasks = tasks
          @Callback = callback
          @Lang = lang
        end

        def deserialize(params)
          @BizId = params['BizId']
          @Scenes = params['Scenes']
          @Live = params['Live']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              task_tmp = Task.new
              task_tmp.deserialize(i)
              @Tasks << task_tmp
            end
          end
          @Callback = params['Callback']
          @Lang = params['Lang']
        end
      end

      # ScanVoice返回参数结构体
      class ScanVoiceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 语音检测返回。Data 字段是 JSON 数组，每一个元素包含：<li>DataId： 请求中对应的 DataId。</li>
        # <li>TaskID ：该检测任务的 ID，用于轮询语音检测结果。</li>
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              scanvoiceresult_tmp = ScanVoiceResult.new
              scanvoiceresult_tmp.deserialize(i)
              @Data << scanvoiceresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 语音检测返回结果
      class ScanVoiceResult < TencentCloud::Common::AbstractModel
        # @param DataId: 数据ID
        # @type DataId: String
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :DataId, :TaskId

        def initialize(dataid=nil, taskid=nil)
          @DataId = dataid
          @TaskId = taskid
        end

        def deserialize(params)
          @DataId = params['DataId']
          @TaskId = params['TaskId']
        end
      end

      # SceneInfo场景信息
      # 'RealTime','实时语音分析',
      # 'VoiceMessage','语音消息',
      # 'GMECloudApi':'GME云API接口'
      class SceneInfo < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # 服务开关状态
      class ServiceStatus < TencentCloud::Common::AbstractModel
        # @param RealTimeSpeech: 实时语音服务开关状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTimeSpeech: :class:`Tencentcloud::Gme.v20180711.models.StatusInfo`
        # @param VoiceMessage: 语音消息服务开关状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoiceMessage: :class:`Tencentcloud::Gme.v20180711.models.StatusInfo`
        # @param Porn: 语音内容安全服务开关状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Porn: :class:`Tencentcloud::Gme.v20180711.models.StatusInfo`
        # @param Live: 语音录制服务开关状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Live: :class:`Tencentcloud::Gme.v20180711.models.StatusInfo`
        # @param RealTimeAsr: 语音转文本服务开关状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealTimeAsr: :class:`Tencentcloud::Gme.v20180711.models.StatusInfo`
        # @param TextTranslate: 文本翻译服务开关状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextTranslate: :class:`Tencentcloud::Gme.v20180711.models.StatusInfo`

        attr_accessor :RealTimeSpeech, :VoiceMessage, :Porn, :Live, :RealTimeAsr, :TextTranslate

        def initialize(realtimespeech=nil, voicemessage=nil, porn=nil, live=nil, realtimeasr=nil, texttranslate=nil)
          @RealTimeSpeech = realtimespeech
          @VoiceMessage = voicemessage
          @Porn = porn
          @Live = live
          @RealTimeAsr = realtimeasr
          @TextTranslate = texttranslate
        end

        def deserialize(params)
          unless params['RealTimeSpeech'].nil?
            @RealTimeSpeech = StatusInfo.new
            @RealTimeSpeech.deserialize(params['RealTimeSpeech'])
          end
          unless params['VoiceMessage'].nil?
            @VoiceMessage = StatusInfo.new
            @VoiceMessage.deserialize(params['VoiceMessage'])
          end
          unless params['Porn'].nil?
            @Porn = StatusInfo.new
            @Porn.deserialize(params['Porn'])
          end
          unless params['Live'].nil?
            @Live = StatusInfo.new
            @Live.deserialize(params['Live'])
          end
          unless params['RealTimeAsr'].nil?
            @RealTimeAsr = StatusInfo.new
            @RealTimeAsr.deserialize(params['RealTimeAsr'])
          end
          unless params['TextTranslate'].nil?
            @TextTranslate = StatusInfo.new
            @TextTranslate.deserialize(params['TextTranslate'])
          end
        end
      end

      # StartRecord请求参数结构体
      class StartRecordRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID。
        # @type BizId: Integer
        # @param RoomId: 房间ID。
        # @type RoomId: String
        # @param RecordMode: 录制类型：1代表单流 2代表混流 3代表单流和混流。
        # @type RecordMode: Integer
        # @param SubscribeRecordUserIds: 指定订阅流白名单或者黑名单（不传默认订阅房间内所有音频流）。
        # @type SubscribeRecordUserIds: :class:`Tencentcloud::Gme.v20180711.models.SubscribeRecordUserIds`

        attr_accessor :BizId, :RoomId, :RecordMode, :SubscribeRecordUserIds

        def initialize(bizid=nil, roomid=nil, recordmode=nil, subscriberecorduserids=nil)
          @BizId = bizid
          @RoomId = roomid
          @RecordMode = recordmode
          @SubscribeRecordUserIds = subscriberecorduserids
        end

        def deserialize(params)
          @BizId = params['BizId']
          @RoomId = params['RoomId']
          @RecordMode = params['RecordMode']
          unless params['SubscribeRecordUserIds'].nil?
            @SubscribeRecordUserIds = SubscribeRecordUserIds.new
            @SubscribeRecordUserIds.deserialize(params['SubscribeRecordUserIds'])
          end
        end
      end

      # StartRecord返回参数结构体
      class StartRecordResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务taskid。
        # @type TaskId: Integer
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

      # 用量数据单元
      class StatisticsItem < TencentCloud::Common::AbstractModel
        # @param StatDate: 日期，格式为年-月-日，如2018-07-13
        # @type StatDate: String
        # @param Data: 统计值
        # @type Data: Integer

        attr_accessor :StatDate, :Data

        def initialize(statdate=nil, data=nil)
          @StatDate = statdate
          @Data = data
        end

        def deserialize(params)
          @StatDate = params['StatDate']
          @Data = params['Data']
        end
      end

      # 服务开关状态
      class StatusInfo < TencentCloud::Common::AbstractModel
        # @param Status: 服务开关状态， 0-正常，1-关闭
        # @type Status: Integer

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # StopRecord请求参数结构体
      class StopRecordRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。
        # @type TaskId: Integer
        # @param BizId: 应用ID。
        # @type BizId: Integer

        attr_accessor :TaskId, :BizId

        def initialize(taskid=nil, bizid=nil)
          @TaskId = taskid
          @BizId = bizid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @BizId = params['BizId']
        end
      end

      # StopRecord返回参数结构体
      class StopRecordResponse < TencentCloud::Common::AbstractModel
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

      # 流式转文本用量数据
      class StreamTextStatisticsItem < TencentCloud::Common::AbstractModel
        # @param Data: 统计值，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Float

        attr_accessor :Data

        def initialize(data=nil)
          @Data = data
        end

        def deserialize(params)
          @Data = params['Data']
        end
      end

      # 指定订阅流白名单或者黑名单。
      class SubscribeRecordUserIds < TencentCloud::Common::AbstractModel
        # @param UnSubscribeUserIds: 订阅音频流黑名单，指定不订阅哪几个UserId的音频流，例如["1", "2", "3"], 代表不订阅UserId 1，2，3的音频流。默认不填订阅房间内所有音频流，订阅列表用户数不超过20。
        # 注意：只能同时设置UnSubscribeAudioUserIds、SubscribeAudioUserIds 其中1个参数
        # @type UnSubscribeUserIds: Array
        # @param SubscribeUserIds: 订阅音频流白名单，指定订阅哪几个UserId的音频流，例如["1", "2", "3"], 代表订阅UserId 1，2，3的音频流。默认不填订阅房间内所有音频流，订阅列表用户数不超过20。
        # 注意：只能同时设置UnSubscribeAudioUserIds、SubscribeAudioUserIds 其中1个参数。
        # @type SubscribeUserIds: Array

        attr_accessor :UnSubscribeUserIds, :SubscribeUserIds

        def initialize(unsubscribeuserids=nil, subscribeuserids=nil)
          @UnSubscribeUserIds = unsubscribeuserids
          @SubscribeUserIds = subscribeuserids
        end

        def deserialize(params)
          @UnSubscribeUserIds = params['UnSubscribeUserIds']
          @SubscribeUserIds = params['SubscribeUserIds']
        end
      end

      # 标签列表
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKey: String
        # @param TagValue: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue

        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 语音检测任务列表
      class Task < TencentCloud::Common::AbstractModel
        # @param DataId: 数据的唯一ID
        # @type DataId: String
        # @param Url: 数据文件的url，为 urlencode 编码，流式则为拉流地址
        # @type Url: String
        # @param RoomId: gme实时语音房间ID，通过gme实时语音进行语音分析时输入
        # @type RoomId: String
        # @param OpenId: gme实时语音用户ID，通过gme实时语音进行语音分析时输入
        # @type OpenId: String

        attr_accessor :DataId, :Url, :RoomId, :OpenId

        def initialize(dataid=nil, url=nil, roomid=nil, openid=nil)
          @DataId = dataid
          @Url = url
          @RoomId = roomid
          @OpenId = openid
        end

        def deserialize(params)
          @DataId = params['DataId']
          @Url = params['Url']
          @RoomId = params['RoomId']
          @OpenId = params['OpenId']
        end
      end

      # UpdateScanRooms请求参数结构体
      class UpdateScanRoomsRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID
        # @type BizId: Integer
        # @param RoomIdString: 需要送检的所有房间号。多个房间号之间用","分隔。示例："0001,0002,0003"
        # @type RoomIdString: String
        # @param RoomIdRegex: 符合此正则表达式规则的房间号将被送检。示例：^6.*（表示所有以6开头的房间号将被送检）
        # @type RoomIdRegex: Array

        attr_accessor :BizId, :RoomIdString, :RoomIdRegex

        def initialize(bizid=nil, roomidstring=nil, roomidregex=nil)
          @BizId = bizid
          @RoomIdString = roomidstring
          @RoomIdRegex = roomidregex
        end

        def deserialize(params)
          @BizId = params['BizId']
          @RoomIdString = params['RoomIdString']
          @RoomIdRegex = params['RoomIdRegex']
        end
      end

      # UpdateScanRooms返回参数结构体
      class UpdateScanRoomsResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 返回结果码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :RequestId

        def initialize(errorcode=nil, requestid=nil)
          @ErrorCode = errorcode
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @RequestId = params['RequestId']
        end
      end

      # UpdateScanUsers请求参数结构体
      class UpdateScanUsersRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID
        # @type BizId: Integer
        # @param UserIdString: 需要送检的所有用户号。多个用户号之间用","分隔。示例："0001,0002,0003"
        # @type UserIdString: String
        # @param UserIdRegex: 符合此正则表达式规则的用户号将被送检。示例：["^6.*"] 表示所有以6开头的用户号将被送检
        # @type UserIdRegex: Array

        attr_accessor :BizId, :UserIdString, :UserIdRegex

        def initialize(bizid=nil, useridstring=nil, useridregex=nil)
          @BizId = bizid
          @UserIdString = useridstring
          @UserIdRegex = useridregex
        end

        def deserialize(params)
          @BizId = params['BizId']
          @UserIdString = params['UserIdString']
          @UserIdRegex = params['UserIdRegex']
        end
      end

      # UpdateScanUsers返回参数结构体
      class UpdateScanUsersResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 返回结果码
        # @type ErrorCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :RequestId

        def initialize(errorcode=nil, requestid=nil)
          @ErrorCode = errorcode
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @RequestId = params['RequestId']
        end
      end

      # 用户麦克风状态
      class UserMicStatus < TencentCloud::Common::AbstractModel
        # @param EnableMic: 开麦状态。1表示关闭麦克风，2表示打开麦克风。
        # @type EnableMic: Integer
        # @param Uid: 客户端用于标识用户的Openid。（Uid、StrUid必须填一个，优先处理StrUid。）
        # @type Uid: Integer
        # @param StrUid: 客户端用于标识字符串型用户的Openid。（Uid、StrUid必须填一个，优先处理StrUid。）
        # @type StrUid: String

        attr_accessor :EnableMic, :Uid, :StrUid

        def initialize(enablemic=nil, uid=nil, struid=nil)
          @EnableMic = enablemic
          @Uid = uid
          @StrUid = struid
        end

        def deserialize(params)
          @EnableMic = params['EnableMic']
          @Uid = params['Uid']
          @StrUid = params['StrUid']
        end
      end

      # 语音过滤服务配置数据
      class VoiceFilterConf < TencentCloud::Common::AbstractModel
        # @param Status: 语音过滤服务开关，取值：open/close
        # @type Status: String
        # @param SceneInfos: 场景配置信息，如开关状态，回调地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SceneInfos: Array

        attr_accessor :Status, :SceneInfos

        def initialize(status=nil, sceneinfos=nil)
          @Status = status
          @SceneInfos = sceneinfos
        end

        def deserialize(params)
          @Status = params['Status']
          unless params['SceneInfos'].nil?
            @SceneInfos = []
            params['SceneInfos'].each do |i|
              sceneinfo_tmp = SceneInfo.new
              sceneinfo_tmp.deserialize(i)
              @SceneInfos << sceneinfo_tmp
            end
          end
        end
      end

      # 语音过滤用量统计数据
      class VoiceFilterStatisticsItem < TencentCloud::Common::AbstractModel
        # @param Duration: 语音过滤总时长，单位为min
        # @type Duration: Integer

        attr_accessor :Duration

        def initialize(duration=nil)
          @Duration = duration
        end

        def deserialize(params)
          @Duration = params['Duration']
        end
      end

      # 离线语音服务配置数据
      class VoiceMessageConf < TencentCloud::Common::AbstractModel
        # @param Status: 离线语音服务开关，取值：open/close
        # @type Status: String
        # @param Language: 离线语音支持语种，取值： all-全部，cnen-中英文。默认为中英文
        # @type Language: String

        attr_accessor :Status, :Language

        def initialize(status=nil, language=nil)
          @Status = status
          @Language = language
        end

        def deserialize(params)
          @Status = params['Status']
          @Language = params['Language']
        end
      end

      # 语音消息用量统计信息
      class VoiceMessageStatisticsItem < TencentCloud::Common::AbstractModel
        # @param Dau: 离线语音DAU
        # @type Dau: Integer

        attr_accessor :Dau

        def initialize(dau=nil)
          @Dau = dau
        end

        def deserialize(params)
          @Dau = params['Dau']
        end
      end

    end
  end
end

