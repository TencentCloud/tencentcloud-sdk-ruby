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
            @RealtimeSpeechStatisticsItem = RealTimeSpeechStatisticsItem.new.deserialize(params[RealtimeSpeechStatisticsItem])
          end
          unless params['VoiceMessageStatisticsItem'].nil?
            @VoiceMessageStatisticsItem = VoiceMessageStatisticsItem.new.deserialize(params[VoiceMessageStatisticsItem])
          end
          unless params['VoiceFilterStatisticsItem'].nil?
            @VoiceFilterStatisticsItem = VoiceFilterStatisticsItem.new.deserialize(params[VoiceFilterStatisticsItem])
          end
          @Date = params['Date']
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
            @RealtimeSpeechConf = RealtimeSpeechConf.new.deserialize(params[RealtimeSpeechConf])
          end
          unless params['VoiceMessageConf'].nil?
            @VoiceMessageConf = VoiceMessageConf.new.deserialize(params[VoiceMessageConf])
          end
          unless params['VoiceFilterConf'].nil?
            @VoiceFilterConf = VoiceFilterConf.new.deserialize(params[VoiceFilterConf])
          end
          @Tags = params['Tags']
        end
      end

      # CreateApp的输出参数
      class CreateAppResponse < TencentCloud::Common::AbstractModel
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
            @RealtimeSpeechConf = RealtimeSpeechConf.new.deserialize(params[RealtimeSpeechConf])
          end
          unless params['VoiceMessageConf'].nil?
            @VoiceMessageConf = VoiceMessageConf.new.deserialize(params[VoiceMessageConf])
          end
          unless params['VoiceFilterConf'].nil?
            @VoiceFilterConf = VoiceFilterConf.new.deserialize(params[VoiceFilterConf])
          end
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
      class DescribeAppStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param AppStatistics: 应用用量统计数据
        # @type AppStatistics: Array

        attr_accessor :AppStatistics
        
        def initialize(appstatistics=nil)
          @AppStatistics = appstatistics
        end

        def deserialize(params)
          @AppStatistics = params['AppStatistics']
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
          @Data = params['Data']
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
            @Data = VoiceFilterInfo.new.deserialize(params[Data])
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

        attr_accessor :Code, :DataId, :ScanFinishTime, :HitFlag, :Live, :Msg, :ScanPiece, :ScanStartTime, :Scenes, :TaskId, :Url, :Status
        
        def initialize(code=nil, dataid=nil, scanfinishtime=nil, hitflag=nil, live=nil, msg=nil, scanpiece=nil, scanstarttime=nil, scenes=nil, taskid=nil, url=nil, status=nil)
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
        end

        def deserialize(params)
          @Code = params['Code']
          @DataId = params['DataId']
          @ScanFinishTime = params['ScanFinishTime']
          @HitFlag = params['HitFlag']
          @Live = params['Live']
          @Msg = params['Msg']
          @ScanPiece = params['ScanPiece']
          @ScanStartTime = params['ScanStartTime']
          @Scenes = params['Scenes']
          @TaskId = params['TaskId']
          @Url = params['Url']
          @Status = params['Status']
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
          @Data = params['Data']
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
          @InOutList = params['InOutList']
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
      class ModifyAppStatusResponse < TencentCloud::Common::AbstractModel
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
        # @param Quality: 实时语音音质类型，取值：high-高音质，ordinary-普通音质。默认高音质。普通音质仅白名单开放，如需要普通音质，请联系腾讯云商务。
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
          @ScanDetail = params['ScanDetail']
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
        # @param Scenes: 语音检测场景，参数值目前要求为 default。 预留场景设置： 谩骂、色情、涉政、广告、暴恐、违禁等场景，<a href="#Label_Value">具体取值见上述 Label 说明。</a>
        # @type Scenes: Array
        # @param Live: 是否为直播流。值为 false 时表示普通语音文件检测；为 true 时表示语音流检测。
        # @type Live: Boolean
        # @param Tasks: 语音检测任务列表，列表最多支持100个检测任务。结构体中包含：
        # <li>DataId：数据的唯一ID</li>
        # <li>Url：数据文件的url，为 urlencode 编码，流式则为拉流地址</li>
        # @type Tasks: Array
        # @param Callback: 异步检测结果回调地址，具体见上述<a href="#Callback_Declare">回调相关说明</a>。（说明：该字段为空时，必须通过接口(查询语音检测结果)获取检测结果）。
        # @type Callback: String

        attr_accessor :BizId, :Scenes, :Live, :Tasks, :Callback
        
        def initialize(bizid=nil, scenes=nil, live=nil, tasks=nil, callback=nil)
          @BizId = bizid
          @Scenes = scenes
          @Live = live
          @Tasks = tasks
          @Callback = callback
        end

        def deserialize(params)
          @BizId = params['BizId']
          @Scenes = params['Scenes']
          @Live = params['Live']
          @Tasks = params['Tasks']
          @Callback = params['Callback']
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
          @Data = params['Data']
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
        # @param Type: 过滤类型，1：政治，2：色情，3：涉毒，4：谩骂
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
          @Data = params['Data']
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

