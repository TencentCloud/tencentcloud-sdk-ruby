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

        attr_accessor :RealtimeSpeechStatisticsItem, :VoiceMessageStatisticsItem, :VoiceFilterStatisticsItem, :Date
        
        def initialize(realtimespeechstatisticsitem=nil, voicemessagestatisticsitem=nil, voicefilterstatisticsitem=nil, date=nil)
          @RealtimeSpeechStatisticsItem = realtimespeechstatisticsitem
          @VoiceMessageStatisticsItem = voicemessagestatisticsitem
          @VoiceFilterStatisticsItem = voicefilterstatisticsitem
          @Date = date
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
        # @type EngineList: Array
        # @param RegionList: 服务区域列表，默认全选。
        # @type RegionList: Array
        # @param RealtimeSpeechConf: 实时语音服务配置数据
        # @type RealtimeSpeechConf: :class:`Tencentcloud::Gme.v20180711.models.RealtimeSpeechConf`
        # @param VoiceMessageConf: 语音消息及转文本服务配置数据
        # @type VoiceMessageConf: :class:`Tencentcloud::Gme.v20180711.models.VoiceMessageConf`
        # @param VoiceFilterConf: 语音分析服务配置数据
        # @type VoiceFilterConf: :class:`Tencentcloud::Gme.v20180711.models.VoiceFilterConf`
        # @param Tags: 需要添加的标签列表
        # @type Tags: Array

        attr_accessor :AppName, :ProjectId, :EngineList, :RegionList, :RealtimeSpeechConf, :VoiceMessageConf, :VoiceFilterConf, :Tags
        
        def initialize(appname=nil, projectid=nil, enginelist=nil, regionlist=nil, realtimespeechconf=nil, voicemessageconf=nil, voicefilterconf=nil, tags=nil)
          @AppName = appname
          @ProjectId = projectid
          @EngineList = enginelist
          @RegionList = regionlist
          @RealtimeSpeechConf = realtimespeechconf
          @VoiceMessageConf = voicemessageconf
          @VoiceFilterConf = voicefilterconf
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
        # @param VoiceMessageConf: 语音消息及转文本服务配置数据
        # @type VoiceMessageConf: :class:`Tencentcloud::Gme.v20180711.models.VoiceMessageConf`
        # @param VoiceFilterConf: 语音分析服务配置数据
        # @type VoiceFilterConf: :class:`Tencentcloud::Gme.v20180711.models.VoiceFilterConf`

        attr_accessor :BizId, :AppName, :ProjectId, :SecretKey, :CreateTime, :RealtimeSpeechConf, :VoiceMessageConf, :VoiceFilterConf
        
        def initialize(bizid=nil, appname=nil, projectid=nil, secretkey=nil, createtime=nil, realtimespeechconf=nil, voicemessageconf=nil, voicefilterconf=nil)
          @BizId = bizid
          @AppName = appname
          @ProjectId = projectid
          @SecretKey = secretkey
          @CreateTime = createtime
          @RealtimeSpeechConf = realtimespeechconf
          @VoiceMessageConf = voicemessageconf
          @VoiceFilterConf = voicefilterconf
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

      # DescribeAgeDetectTask请求参数结构体
      class DescribeAgeDetectTaskRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用id
        # @type BizId: Integer
        # @param TaskId: 创建年龄语音识别任务时返回的taskid
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
        # @param Services: 要查询的服务列表，取值：RealTimeSpeech/VoiceMessage/VoiceFilter
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

      # DescribeFilterResultList请求参数结构体
      class DescribeFilterResultListRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID
        # @type BizId: Integer
        # @param StartDate: 开始时间，格式为 年-月-日，如: 2018-07-11
        # @type StartDate: String
        # @param EndDate: 结束时间，格式为 年-月-日，如: 2018-07-11
        # @type EndDate: String
        # @param Offset: 偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认值为10，最大值为100。
        # @type Limit: Integer

        attr_accessor :BizId, :StartDate, :EndDate, :Offset, :Limit
        
        def initialize(bizid=nil, startdate=nil, enddate=nil, offset=nil, limit=nil)
          @BizId = bizid
          @StartDate = startdate
          @EndDate = enddate
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @BizId = params['BizId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeFilterResultList返回参数结构体
      class DescribeFilterResultListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 过滤结果总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 当前分页过滤结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId
        
        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              voicefilterinfo_tmp = VoiceFilterInfo.new
              voicefilterinfo_tmp.deserialize(i)
              @Data << voicefilterinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFilterResult请求参数结构体
      class DescribeFilterResultRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID
        # @type BizId: Integer
        # @param FileId: 文件ID
        # @type FileId: String

        attr_accessor :BizId, :FileId
        
        def initialize(bizid=nil, fileid=nil)
          @BizId = bizid
          @FileId = fileid
        end

        def deserialize(params)
          @BizId = params['BizId']
          @FileId = params['FileId']
        end
      end

      # DescribeFilterResult返回参数结构体
      class DescribeFilterResultResponse < TencentCloud::Common::AbstractModel
        # @param Data: 过滤结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Gme.v20180711.models.VoiceFilterInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = VoiceFilterInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoomInfo请求参数结构体
      class DescribeRoomInfoRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用ID，登录[控制台 - 服务管理](https://console.cloud.tencent.com/gamegme)创建应用得到的AppID
        # @type SdkAppId: Integer
        # @param RoomIds: 房间号列表，最大不能超过10个
        # @type RoomIds: Array

        attr_accessor :SdkAppId, :RoomIds
        
        def initialize(sdkappid=nil, roomids=nil)
          @SdkAppId = sdkappid
          @RoomIds = roomids
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomIds = params['RoomIds']
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

      # DescribeUserInAndOutTime请求参数结构体
      class DescribeUserInAndOutTimeRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID
        # @type BizId: Integer
        # @param RoomId: 房间ID
        # @type RoomId: Integer
        # @param UserId: 用户ID
        # @type UserId: Integer

        attr_accessor :BizId, :RoomId, :UserId
        
        def initialize(bizid=nil, roomid=nil, userid=nil)
          @BizId = bizid
          @RoomId = roomid
          @UserId = userid
        end

        def deserialize(params)
          @BizId = params['BizId']
          @RoomId = params['RoomId']
          @UserId = params['UserId']
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

      # 用户进出房间信息
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

      # ModifyRoomInfo请求参数结构体
      class ModifyRoomInfoRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用ID，登录[控制台 - 服务管理](https://console.cloud.tencent.com/gamegme)创建应用得到的AppID
        # @type SdkAppId: Integer
        # @param RoomId: 房间id
        # @type RoomId: Integer
        # @param OperationType: 301 启动推流
        # 302 停止推流
        # 303 重置RTMP连接
        # @type OperationType: Integer

        attr_accessor :SdkAppId, :RoomId, :OperationType
        
        def initialize(sdkappid=nil, roomid=nil, operationtype=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @OperationType = operationtype
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @OperationType = params['OperationType']
        end
      end

      # ModifyRoomInfo返回参数结构体
      class ModifyRoomInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作结果, 0成功, 非0失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Integer
        # @param ErrMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param Quality: 实时语音音质类型，取值：high-高音质
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

      # 房间内用户信息
      class RoomUser < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间id
        # @type RoomId: Integer
        # @param Uins: 房间里用户uin列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uins: Array

        attr_accessor :RoomId, :Uins
        
        def initialize(roomid=nil, uins=nil)
          @RoomId = roomid
          @Uins = uins
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @Uins = params['Uins']
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
        # @param Lang: 语言，目前jp代表日语
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

      # 过滤结果
      class VoiceFilter < TencentCloud::Common::AbstractModel
        # @param Type: 过滤类型，1：色情，2：涉毒，3：谩骂
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param Word: 过滤命中关键词
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Word: String

        attr_accessor :Type, :Word
        
        def initialize(type=nil, word=nil)
          @Type = type
          @Word = word
        end

        def deserialize(params)
          @Type = params['Type']
          @Word = params['Word']
        end
      end

      # 语音过滤服务配置数据
      class VoiceFilterConf < TencentCloud::Common::AbstractModel
        # @param Status: 语音过滤服务开关，取值：open/close
        # @type Status: String

        attr_accessor :Status
        
        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # 语音文件过滤详情
      class VoiceFilterInfo < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizId: Integer
        # @param FileId: 文件ID，表示文件唯一ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileId: String
        # @param FileName: 文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param OpenId: 用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenId: String
        # @param Timestamp: 数据创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: String
        # @param Data: 过滤结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array

        attr_accessor :BizId, :FileId, :FileName, :OpenId, :Timestamp, :Data
        
        def initialize(bizid=nil, fileid=nil, filename=nil, openid=nil, timestamp=nil, data=nil)
          @BizId = bizid
          @FileId = fileid
          @FileName = filename
          @OpenId = openid
          @Timestamp = timestamp
          @Data = data
        end

        def deserialize(params)
          @BizId = params['BizId']
          @FileId = params['FileId']
          @FileName = params['FileName']
          @OpenId = params['OpenId']
          @Timestamp = params['Timestamp']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              voicefilter_tmp = VoiceFilter.new
              voicefilter_tmp.deserialize(i)
              @Data << voicefilter_tmp
            end
          end
        end
      end

      # VoiceFilter请求参数结构体
      class VoiceFilterRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID，登录[控制台](https://console.cloud.tencent.com/gamegme)创建应用得到的AppID
        # @type BizId: Integer
        # @param FileId: 文件ID，表示文件唯一ID
        # @type FileId: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileUrl: 文件url，urlencode编码，FileUrl和FileContent二选一
        # @type FileUrl: String
        # @param FileContent: 文件内容，base64编码，FileUrl和FileContent二选一
        # @type FileContent: String
        # @param OpenId: 用户ID
        # @type OpenId: String

        attr_accessor :BizId, :FileId, :FileName, :FileUrl, :FileContent, :OpenId
        
        def initialize(bizid=nil, fileid=nil, filename=nil, fileurl=nil, filecontent=nil, openid=nil)
          @BizId = bizid
          @FileId = fileid
          @FileName = filename
          @FileUrl = fileurl
          @FileContent = filecontent
          @OpenId = openid
        end

        def deserialize(params)
          @BizId = params['BizId']
          @FileId = params['FileId']
          @FileName = params['FileName']
          @FileUrl = params['FileUrl']
          @FileContent = params['FileContent']
          @OpenId = params['OpenId']
        end
      end

      # VoiceFilter返回参数结构体
      class VoiceFilterResponse < TencentCloud::Common::AbstractModel
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

      # 语音过滤用量统计数据
      class VoiceFilterStatisticsItem < TencentCloud::Common::AbstractModel
        # @param Duration: 语音过滤总时长
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

