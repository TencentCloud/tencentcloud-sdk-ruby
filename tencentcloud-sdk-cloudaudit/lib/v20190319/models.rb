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
  module Cloudaudit
    module V20190319
      # AttributeKey值详情
      class AttributeKeyDetail < TencentCloud::Common::AbstractModel
        # @param LabelType: 输入框类型
        # @type LabelType: String
        # @param Starter: 初始化展示
        # @type Starter: String
        # @param Order: 展示排序
        # @type Order: Integer
        # @param Value: AttributeKey值
        # @type Value: String
        # @param Label: 中文标签
        # @type Label: String

        attr_accessor :LabelType, :Starter, :Order, :Value, :Label

        def initialize(labeltype=nil, starter=nil, order=nil, value=nil, label=nil)
          @LabelType = labeltype
          @Starter = starter
          @Order = order
          @Value = value
          @Label = label
        end

        def deserialize(params)
          @LabelType = params['LabelType']
          @Starter = params['Starter']
          @Order = params['Order']
          @Value = params['Value']
          @Label = params['Label']
        end
      end

      # 跟踪集概览
      class AuditSummary < TencentCloud::Common::AbstractModel
        # @param AuditStatus: 跟踪集状态，1：开启，0：关闭
        # @type AuditStatus: Integer
        # @param CosBucketName: COS存储桶名称
        # @type CosBucketName: String
        # @param AuditName: 跟踪集名称
        # @type AuditName: String
        # @param LogFilePrefix: 日志前缀
        # @type LogFilePrefix: String

        attr_accessor :AuditStatus, :CosBucketName, :AuditName, :LogFilePrefix

        def initialize(auditstatus=nil, cosbucketname=nil, auditname=nil, logfileprefix=nil)
          @AuditStatus = auditstatus
          @CosBucketName = cosbucketname
          @AuditName = auditname
          @LogFilePrefix = logfileprefix
        end

        def deserialize(params)
          @AuditStatus = params['AuditStatus']
          @CosBucketName = params['CosBucketName']
          @AuditName = params['AuditName']
          @LogFilePrefix = params['LogFilePrefix']
        end
      end

      # cmq地域信息
      class CmqRegionInfo < TencentCloud::Common::AbstractModel
        # @param CmqRegionName: 地域描述
        # @type CmqRegionName: String
        # @param CmqRegion: cmq地域
        # @type CmqRegion: String

        attr_accessor :CmqRegionName, :CmqRegion

        def initialize(cmqregionname=nil, cmqregion=nil)
          @CmqRegionName = cmqregionname
          @CmqRegion = cmqregion
        end

        def deserialize(params)
          @CmqRegionName = params['CmqRegionName']
          @CmqRegion = params['CmqRegion']
        end
      end

      # cos地域信息
      class CosRegionInfo < TencentCloud::Common::AbstractModel
        # @param CosRegion: cos地域
        # @type CosRegion: String
        # @param CosRegionName: 地域描述
        # @type CosRegionName: String

        attr_accessor :CosRegion, :CosRegionName

        def initialize(cosregion=nil, cosregionname=nil)
          @CosRegion = cosregion
          @CosRegionName = cosregionname
        end

        def deserialize(params)
          @CosRegion = params['CosRegion']
          @CosRegionName = params['CosRegionName']
        end
      end

      # CreateAuditTrack请求参数结构体
      class CreateAuditTrackRequest < TencentCloud::Common::AbstractModel
        # @param Name: 跟踪集名称，仅支持大小写字母、数字、-以及_的组合，3-48个字符
        # @type Name: String
        # @param Status: 跟踪集状态（未开启：0；开启：1）
        # @type Status: Integer
        # @param Storage: 数据投递存储（目前支持 cos、cls）
        # @type Storage: :class:`Tencentcloud::Cloudaudit.v20190319.models.Storage`
        # @param ActionType: 跟踪事件类型（读：Read；写：Write；全部：*）
        # @type ActionType: String
        # @param ResourceType: 跟踪事件所属产品（支持全部产品或单个产品，如：cos，全部：*）
        # @type ResourceType: String
        # @param EventNames: 跟踪事件接口名列表（ResourceType为 * 时，EventNames必须为全部：["*"]；指定ResourceType时，支持全部接口：["*"]；支持部分接口：["cos", "cls"]，接口列表上限10个）
        # @type EventNames: Array
        # @param TrackForAllMembers: 是否开启将集团成员操作日志投递到集团管理账号或者可信服务管理账号(0：未开启，1：开启，只能集团管理账号或者可信服务管理账号开启此项功能)
        # @type TrackForAllMembers: Integer

        attr_accessor :Name, :Status, :Storage, :ActionType, :ResourceType, :EventNames, :TrackForAllMembers

        def initialize(name=nil, status=nil, storage=nil, actiontype=nil, resourcetype=nil, eventnames=nil, trackforallmembers=nil)
          @Name = name
          @Status = status
          @Storage = storage
          @ActionType = actiontype
          @ResourceType = resourcetype
          @EventNames = eventnames
          @TrackForAllMembers = trackforallmembers
        end

        def deserialize(params)
          @Name = params['Name']
          @Status = params['Status']
          unless params['Storage'].nil?
            @Storage = Storage.new
            @Storage.deserialize(params['Storage'])
          end
          @ActionType = params['ActionType']
          @ResourceType = params['ResourceType']
          @EventNames = params['EventNames']
          @TrackForAllMembers = params['TrackForAllMembers']
        end
      end

      # CreateAuditTrack返回参数结构体
      class CreateAuditTrackResponse < TencentCloud::Common::AbstractModel
        # @param TrackId: 跟踪集 ID
        # @type TrackId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrackId, :RequestId

        def initialize(trackid=nil, requestid=nil)
          @TrackId = trackid
          @RequestId = requestid
        end

        def deserialize(params)
          @TrackId = params['TrackId']
          @RequestId = params['RequestId']
        end
      end

      # CreateEventsAuditTrack请求参数结构体
      class CreateEventsAuditTrackRequest < TencentCloud::Common::AbstractModel
        # @param Name: 跟踪集名称，仅支持大小写字母、数字、-以及_的组合，3-48个字符
        # @type Name: String
        # @param Status: 跟踪集状态（未开启：0；开启：1）
        # @type Status: Integer
        # @param Storage: 数据投递存储（目前支持 cos、cls）
        # @type Storage: :class:`Tencentcloud::Cloudaudit.v20190319.models.Storage`
        # @param Filters: 数据过滤条件
        # @type Filters: :class:`Tencentcloud::Cloudaudit.v20190319.models.Filter`
        # @param TrackForAllMembers: 是否开启将集团成员操作日志投递到集团管理账号或者可信服务管理账号(0：未开启，1：开启，只能集团管理账号或者可信服务管理账号开启此项功能)
        # @type TrackForAllMembers: Integer

        attr_accessor :Name, :Status, :Storage, :Filters, :TrackForAllMembers

        def initialize(name=nil, status=nil, storage=nil, filters=nil, trackforallmembers=nil)
          @Name = name
          @Status = status
          @Storage = storage
          @Filters = filters
          @TrackForAllMembers = trackforallmembers
        end

        def deserialize(params)
          @Name = params['Name']
          @Status = params['Status']
          unless params['Storage'].nil?
            @Storage = Storage.new
            @Storage.deserialize(params['Storage'])
          end
          unless params['Filters'].nil?
            @Filters = Filter.new
            @Filters.deserialize(params['Filters'])
          end
          @TrackForAllMembers = params['TrackForAllMembers']
        end
      end

      # CreateEventsAuditTrack返回参数结构体
      class CreateEventsAuditTrackResponse < TencentCloud::Common::AbstractModel
        # @param TrackId: 跟踪集 ID
        # @type TrackId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrackId, :RequestId

        def initialize(trackid=nil, requestid=nil)
          @TrackId = trackid
          @RequestId = requestid
        end

        def deserialize(params)
          @TrackId = params['TrackId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAuditTrack请求参数结构体
      class DeleteAuditTrackRequest < TencentCloud::Common::AbstractModel
        # @param TrackId: 跟踪集 ID
        # @type TrackId: Integer

        attr_accessor :TrackId

        def initialize(trackid=nil)
          @TrackId = trackid
        end

        def deserialize(params)
          @TrackId = params['TrackId']
        end
      end

      # DeleteAuditTrack返回参数结构体
      class DeleteAuditTrackResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeAudit请求参数结构体
      class DescribeAuditRequest < TencentCloud::Common::AbstractModel
        # @param AuditName: 跟踪集名称
        # @type AuditName: String

        attr_accessor :AuditName

        def initialize(auditname=nil)
          @AuditName = auditname
        end

        def deserialize(params)
          @AuditName = params['AuditName']
        end
      end

      # DescribeAudit返回参数结构体
      class DescribeAuditResponse < TencentCloud::Common::AbstractModel
        # @param IsEnableCmqNotify: 是否开启cmq消息通知。1：是，0：否。
        # @type IsEnableCmqNotify: Integer
        # @param ReadWriteAttribute: 管理事件读写属性，1：只读，2：只写，3：全部
        # @type ReadWriteAttribute: Integer
        # @param KeyId: CMK的全局唯一标识符。
        # @type KeyId: String
        # @param AuditStatus: 跟踪集状态，1：开启，0：停止。
        # @type AuditStatus: Integer
        # @param AuditName: 跟踪集名称。
        # @type AuditName: String
        # @param CosRegion: cos存储桶所在地域。
        # @type CosRegion: String
        # @param CmqQueueName: 队列名称。
        # @type CmqQueueName: String
        # @param KmsAlias: CMK别名。
        # @type KmsAlias: String
        # @param KmsRegion: kms地域。
        # @type KmsRegion: String
        # @param IsEnableKmsEncry: 是否开启kms加密。1：是，0：否。如果开启KMS加密，数据在投递到cos时，会将数据加密。
        # @type IsEnableKmsEncry: Integer
        # @param CosBucketName: cos存储桶名称。
        # @type CosBucketName: String
        # @param CmqRegion: 队列所在地域。
        # @type CmqRegion: String
        # @param LogFilePrefix: 日志前缀。
        # @type LogFilePrefix: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsEnableCmqNotify, :ReadWriteAttribute, :KeyId, :AuditStatus, :AuditName, :CosRegion, :CmqQueueName, :KmsAlias, :KmsRegion, :IsEnableKmsEncry, :CosBucketName, :CmqRegion, :LogFilePrefix, :RequestId

        def initialize(isenablecmqnotify=nil, readwriteattribute=nil, keyid=nil, auditstatus=nil, auditname=nil, cosregion=nil, cmqqueuename=nil, kmsalias=nil, kmsregion=nil, isenablekmsencry=nil, cosbucketname=nil, cmqregion=nil, logfileprefix=nil, requestid=nil)
          @IsEnableCmqNotify = isenablecmqnotify
          @ReadWriteAttribute = readwriteattribute
          @KeyId = keyid
          @AuditStatus = auditstatus
          @AuditName = auditname
          @CosRegion = cosregion
          @CmqQueueName = cmqqueuename
          @KmsAlias = kmsalias
          @KmsRegion = kmsregion
          @IsEnableKmsEncry = isenablekmsencry
          @CosBucketName = cosbucketname
          @CmqRegion = cmqregion
          @LogFilePrefix = logfileprefix
          @RequestId = requestid
        end

        def deserialize(params)
          @IsEnableCmqNotify = params['IsEnableCmqNotify']
          @ReadWriteAttribute = params['ReadWriteAttribute']
          @KeyId = params['KeyId']
          @AuditStatus = params['AuditStatus']
          @AuditName = params['AuditName']
          @CosRegion = params['CosRegion']
          @CmqQueueName = params['CmqQueueName']
          @KmsAlias = params['KmsAlias']
          @KmsRegion = params['KmsRegion']
          @IsEnableKmsEncry = params['IsEnableKmsEncry']
          @CosBucketName = params['CosBucketName']
          @CmqRegion = params['CmqRegion']
          @LogFilePrefix = params['LogFilePrefix']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuditTrack请求参数结构体
      class DescribeAuditTrackRequest < TencentCloud::Common::AbstractModel
        # @param TrackId: 跟踪集 ID
        # @type TrackId: Integer

        attr_accessor :TrackId

        def initialize(trackid=nil)
          @TrackId = trackid
        end

        def deserialize(params)
          @TrackId = params['TrackId']
        end
      end

      # DescribeAuditTrack返回参数结构体
      class DescribeAuditTrackResponse < TencentCloud::Common::AbstractModel
        # @param Name: 跟踪集名称
        # @type Name: String
        # @param ActionType: 跟踪事件类型（读：Read；写：Write；全部：*）
        # @type ActionType: String
        # @param ResourceType: 跟踪事件所属产品（如：cos，全部：*）
        # @type ResourceType: String
        # @param Status: 跟踪集状态（未开启：0；开启：1）
        # @type Status: Integer
        # @param EventNames: 跟踪事件接口名列表（全部：[*]）
        # @type EventNames: Array
        # @param Storage: 数据投递存储（目前支持 cos、cls）
        # @type Storage: :class:`Tencentcloud::Cloudaudit.v20190319.models.Storage`
        # @param CreateTime: 跟踪集创建时间
        # @type CreateTime: String
        # @param TrackForAllMembers: 是否开启将集团成员操作日志投递到集团管理账号或者可信服务管理账号
        # @type TrackForAllMembers: Integer
        # @param Filters: 数据投递过滤条件
        # @type Filters: :class:`Tencentcloud::Cloudaudit.v20190319.models.Filter`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :ActionType, :ResourceType, :Status, :EventNames, :Storage, :CreateTime, :TrackForAllMembers, :Filters, :RequestId

        def initialize(name=nil, actiontype=nil, resourcetype=nil, status=nil, eventnames=nil, storage=nil, createtime=nil, trackforallmembers=nil, filters=nil, requestid=nil)
          @Name = name
          @ActionType = actiontype
          @ResourceType = resourcetype
          @Status = status
          @EventNames = eventnames
          @Storage = storage
          @CreateTime = createtime
          @TrackForAllMembers = trackforallmembers
          @Filters = filters
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @ActionType = params['ActionType']
          @ResourceType = params['ResourceType']
          @Status = params['Status']
          @EventNames = params['EventNames']
          unless params['Storage'].nil?
            @Storage = Storage.new
            @Storage.deserialize(params['Storage'])
          end
          @CreateTime = params['CreateTime']
          @TrackForAllMembers = params['TrackForAllMembers']
          unless params['Filters'].nil?
            @Filters = Filter.new
            @Filters.deserialize(params['Filters'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuditTracks请求参数结构体
      class DescribeAuditTracksRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页数目
        # @type PageSize: Integer

        attr_accessor :PageNumber, :PageSize

        def initialize(pagenumber=nil, pagesize=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeAuditTracks返回参数结构体
      class DescribeAuditTracksResponse < TencentCloud::Common::AbstractModel
        # @param Tracks: 跟踪集列表
        # @type Tracks: Array
        # @param TotalCount: 总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tracks, :TotalCount, :RequestId

        def initialize(tracks=nil, totalcount=nil, requestid=nil)
          @Tracks = tracks
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tracks'].nil?
            @Tracks = []
            params['Tracks'].each do |i|
              tracks_tmp = Tracks.new
              tracks_tmp.deserialize(i)
              @Tracks << tracks_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEvents请求参数结构体
      class DescribeEventsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间戳（单位秒，不超过当前时间 90 天）
        # @type StartTime: Integer
        # @param EndTime: 结束时间戳（单位秒，查询时间跨度小于 30 天）
        # @type EndTime: Integer
        # @param NextToken: 查看更多日志的凭证
        # @type NextToken: Integer
        # @param MaxResults: 返回日志的最大条数（最大 50 条）
        # @type MaxResults: Integer
        # @param LookupAttributes: 检索条件（目前支持 RequestId：请求 ID、EventName：事件名称、ActionType：操作类型（Write：写；Read：读）、PrincipalId：子账号、ResourceType：资源类型、ResourceId：资源Id、ResourceName：资源名称、AccessKeyId：密钥 ID、SensitiveAction：是否敏感操作、ApiErrorCode：API 错误码、CamErrorCode：CAM 错误码、Tags：标签（AttributeValue格式：[{"key":"*","value":"*"}]）备注:检索的各个条件间是与的关系,EventName传多个值内部是或的关系）
        # @type LookupAttributes: Array
        # @param IsReturnLocation: 是否返回 IP 归属地（1 返回，0 不返回）
        # @type IsReturnLocation: Integer

        attr_accessor :StartTime, :EndTime, :NextToken, :MaxResults, :LookupAttributes, :IsReturnLocation

        def initialize(starttime=nil, endtime=nil, nexttoken=nil, maxresults=nil, lookupattributes=nil, isreturnlocation=nil)
          @StartTime = starttime
          @EndTime = endtime
          @NextToken = nexttoken
          @MaxResults = maxresults
          @LookupAttributes = lookupattributes
          @IsReturnLocation = isreturnlocation
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @NextToken = params['NextToken']
          @MaxResults = params['MaxResults']
          unless params['LookupAttributes'].nil?
            @LookupAttributes = []
            params['LookupAttributes'].each do |i|
              lookupattribute_tmp = LookupAttribute.new
              lookupattribute_tmp.deserialize(i)
              @LookupAttributes << lookupattribute_tmp
            end
          end
          @IsReturnLocation = params['IsReturnLocation']
        end
      end

      # DescribeEvents返回参数结构体
      class DescribeEventsResponse < TencentCloud::Common::AbstractModel
        # @param ListOver: 日志集合是否结束。true表示结束，无需进行翻页。
        # @type ListOver: Boolean
        # @param NextToken: 查看更多日志的凭证
        # @type NextToken: Integer
        # @param Events: 日志集合
        # @type Events: Array
        # @param TotalCount: 此字段已经废弃。翻页请使用ListOver配合NextToken，在ListOver为false进行下一页数据读取。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListOver, :NextToken, :Events, :TotalCount, :RequestId

        def initialize(listover=nil, nexttoken=nil, events=nil, totalcount=nil, requestid=nil)
          @ListOver = listover
          @NextToken = nexttoken
          @Events = events
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @ListOver = params['ListOver']
          @NextToken = params['NextToken']
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              event_tmp = Event.new
              event_tmp.deserialize(i)
              @Events << event_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 日志详情
      class Event < TencentCloud::Common::AbstractModel
        # @param EventId: 日志ID
        # @type EventId: String
        # @param Username: 用户名
        # @type Username: String
        # @param EventTime: 事件时间
        # @type EventTime: String
        # @param CloudAuditEvent: 日志详情
        # @type CloudAuditEvent: String
        # @param ResourceTypeCn: 资源类型中文描述（此字段请按需使用，如果您是其他语言使用者，可以忽略该字段描述）
        # @type ResourceTypeCn: String
        # @param ErrorCode: 鉴权错误码
        # @type ErrorCode: Integer
        # @param EventName: 事件名称
        # @type EventName: String
        # @param SecretId: 证书ID
        # @type SecretId: String
        # @param EventSource: 请求来源
        # @type EventSource: String
        # @param RequestID: 请求ID
        # @type RequestID: String
        # @param ResourceRegion: 资源地域
        # @type ResourceRegion: String
        # @param AccountID: 主账号ID
        # @type AccountID: Integer
        # @param SourceIPAddress: 源IP
        # @type SourceIPAddress: String
        # @param EventNameCn: 事件名称中文描述（此字段请按需使用，如果您是其他语言使用者，可以忽略该字段描述）
        # @type EventNameCn: String
        # @param Resources: 资源对
        # @type Resources: :class:`Tencentcloud::Cloudaudit.v20190319.models.Resource`
        # @param EventRegion: 事件地域
        # @type EventRegion: String
        # @param Location: IP 归属地
        # @type Location: String

        attr_accessor :EventId, :Username, :EventTime, :CloudAuditEvent, :ResourceTypeCn, :ErrorCode, :EventName, :SecretId, :EventSource, :RequestID, :ResourceRegion, :AccountID, :SourceIPAddress, :EventNameCn, :Resources, :EventRegion, :Location

        def initialize(eventid=nil, username=nil, eventtime=nil, cloudauditevent=nil, resourcetypecn=nil, errorcode=nil, eventname=nil, secretid=nil, eventsource=nil, requestid=nil, resourceregion=nil, accountid=nil, sourceipaddress=nil, eventnamecn=nil, resources=nil, eventregion=nil, location=nil)
          @EventId = eventid
          @Username = username
          @EventTime = eventtime
          @CloudAuditEvent = cloudauditevent
          @ResourceTypeCn = resourcetypecn
          @ErrorCode = errorcode
          @EventName = eventname
          @SecretId = secretid
          @EventSource = eventsource
          @RequestID = requestid
          @ResourceRegion = resourceregion
          @AccountID = accountid
          @SourceIPAddress = sourceipaddress
          @EventNameCn = eventnamecn
          @Resources = resources
          @EventRegion = eventregion
          @Location = location
        end

        def deserialize(params)
          @EventId = params['EventId']
          @Username = params['Username']
          @EventTime = params['EventTime']
          @CloudAuditEvent = params['CloudAuditEvent']
          @ResourceTypeCn = params['ResourceTypeCn']
          @ErrorCode = params['ErrorCode']
          @EventName = params['EventName']
          @SecretId = params['SecretId']
          @EventSource = params['EventSource']
          @RequestID = params['RequestID']
          @ResourceRegion = params['ResourceRegion']
          @AccountID = params['AccountID']
          @SourceIPAddress = params['SourceIPAddress']
          @EventNameCn = params['EventNameCn']
          unless params['Resources'].nil?
            @Resources = Resource.new
            @Resources.deserialize(params['Resources'])
          end
          @EventRegion = params['EventRegion']
          @Location = params['Location']
        end
      end

      # 跟踪集数据投递筛选条件
      class Filter < TencentCloud::Common::AbstractModel
        # @param ResourceFields: 资源筛选条件
        # @type ResourceFields: Array

        attr_accessor :ResourceFields

        def initialize(resourcefields=nil)
          @ResourceFields = resourcefields
        end

        def deserialize(params)
          unless params['ResourceFields'].nil?
            @ResourceFields = []
            params['ResourceFields'].each do |i|
              resourcefield_tmp = ResourceField.new
              resourcefield_tmp.deserialize(i)
              @ResourceFields << resourcefield_tmp
            end
          end
        end
      end

      # GetAttributeKey请求参数结构体
      class GetAttributeKeyRequest < TencentCloud::Common::AbstractModel
        # @param WebsiteType: 网站类型，取值范围是zh和en。如果不传值默认zh
        # @type WebsiteType: String

        attr_accessor :WebsiteType

        def initialize(websitetype=nil)
          @WebsiteType = websitetype
        end

        def deserialize(params)
          @WebsiteType = params['WebsiteType']
        end
      end

      # GetAttributeKey返回参数结构体
      class GetAttributeKeyResponse < TencentCloud::Common::AbstractModel
        # @param AttributeKeyDetails: AttributeKey的有效取值范围
        # @type AttributeKeyDetails: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AttributeKeyDetails, :RequestId

        def initialize(attributekeydetails=nil, requestid=nil)
          @AttributeKeyDetails = attributekeydetails
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AttributeKeyDetails'].nil?
            @AttributeKeyDetails = []
            params['AttributeKeyDetails'].each do |i|
              attributekeydetail_tmp = AttributeKeyDetail.new
              attributekeydetail_tmp.deserialize(i)
              @AttributeKeyDetails << attributekeydetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # InquireAuditCredit请求参数结构体
      class InquireAuditCreditRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # InquireAuditCredit返回参数结构体
      class InquireAuditCreditResponse < TencentCloud::Common::AbstractModel
        # @param AuditAmount: 可创建跟踪集的数量
        # @type AuditAmount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AuditAmount, :RequestId

        def initialize(auditamount=nil, requestid=nil)
          @AuditAmount = auditamount
          @RequestId = requestid
        end

        def deserialize(params)
          @AuditAmount = params['AuditAmount']
          @RequestId = params['RequestId']
        end
      end

      # CMK属性
      class KeyMetadata < TencentCloud::Common::AbstractModel
        # @param Alias: 作为密钥更容易辨识，更容易被人看懂的别名
        # @type Alias: String
        # @param KeyId: CMK的全局唯一标识
        # @type KeyId: String

        attr_accessor :Alias, :KeyId

        def initialize(_alias=nil, keyid=nil)
          @Alias = _alias
          @KeyId = keyid
        end

        def deserialize(params)
          @Alias = params['Alias']
          @KeyId = params['KeyId']
        end
      end

      # ListAudits请求参数结构体
      class ListAuditsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListAudits返回参数结构体
      class ListAuditsResponse < TencentCloud::Common::AbstractModel
        # @param AuditSummarys: 查询跟踪集概要集合
        # @type AuditSummarys: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AuditSummarys, :RequestId

        def initialize(auditsummarys=nil, requestid=nil)
          @AuditSummarys = auditsummarys
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AuditSummarys'].nil?
            @AuditSummarys = []
            params['AuditSummarys'].each do |i|
              auditsummary_tmp = AuditSummary.new
              auditsummary_tmp.deserialize(i)
              @AuditSummarys << auditsummary_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListCmqEnableRegion请求参数结构体
      class ListCmqEnableRegionRequest < TencentCloud::Common::AbstractModel
        # @param WebsiteType: 站点类型。zh表示中国区，en表示国际区。默认中国区。
        # @type WebsiteType: String

        attr_accessor :WebsiteType

        def initialize(websitetype=nil)
          @WebsiteType = websitetype
        end

        def deserialize(params)
          @WebsiteType = params['WebsiteType']
        end
      end

      # ListCmqEnableRegion返回参数结构体
      class ListCmqEnableRegionResponse < TencentCloud::Common::AbstractModel
        # @param EnableRegions: 操作审计支持的cmq的可用区
        # @type EnableRegions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnableRegions, :RequestId

        def initialize(enableregions=nil, requestid=nil)
          @EnableRegions = enableregions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EnableRegions'].nil?
            @EnableRegions = []
            params['EnableRegions'].each do |i|
              cmqregioninfo_tmp = CmqRegionInfo.new
              cmqregioninfo_tmp.deserialize(i)
              @EnableRegions << cmqregioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListCosEnableRegion请求参数结构体
      class ListCosEnableRegionRequest < TencentCloud::Common::AbstractModel
        # @param WebsiteType: 站点类型。zh表示中国区，en表示国际区。默认中国区。
        # @type WebsiteType: String

        attr_accessor :WebsiteType

        def initialize(websitetype=nil)
          @WebsiteType = websitetype
        end

        def deserialize(params)
          @WebsiteType = params['WebsiteType']
        end
      end

      # ListCosEnableRegion返回参数结构体
      class ListCosEnableRegionResponse < TencentCloud::Common::AbstractModel
        # @param EnableRegions: 操作审计支持的cos可用区
        # @type EnableRegions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnableRegions, :RequestId

        def initialize(enableregions=nil, requestid=nil)
          @EnableRegions = enableregions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EnableRegions'].nil?
            @EnableRegions = []
            params['EnableRegions'].each do |i|
              cosregioninfo_tmp = CosRegionInfo.new
              cosregioninfo_tmp.deserialize(i)
              @EnableRegions << cosregioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListKeyAliasByRegion请求参数结构体
      class ListKeyAliasByRegionRequest < TencentCloud::Common::AbstractModel
        # @param KmsRegion: Kms地域
        # @type KmsRegion: String
        # @param Limit: 含义跟 SQL 查询的 Limit 一致，表示本次获最多获取 Limit 个元素。缺省值为10，最大值为200
        # @type Limit: Integer
        # @param Offset: 含义跟 SQL 查询的 Offset 一致，表示本次获取从按一定顺序排列数组的第 Offset 个元素开始，缺省为0
        # @type Offset: Integer

        attr_accessor :KmsRegion, :Limit, :Offset

        def initialize(kmsregion=nil, limit=nil, offset=nil)
          @KmsRegion = kmsregion
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @KmsRegion = params['KmsRegion']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # ListKeyAliasByRegion返回参数结构体
      class ListKeyAliasByRegionResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: CMK的总数量
        # @type TotalCount: Integer
        # @param KeyMetadatas: 密钥别名
        # @type KeyMetadatas: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :KeyMetadatas, :RequestId

        def initialize(totalcount=nil, keymetadatas=nil, requestid=nil)
          @TotalCount = totalcount
          @KeyMetadatas = keymetadatas
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['KeyMetadatas'].nil?
            @KeyMetadatas = []
            params['KeyMetadatas'].each do |i|
              keymetadata_tmp = KeyMetadata.new
              keymetadata_tmp.deserialize(i)
              @KeyMetadatas << keymetadata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # LookUpEvents请求参数结构体
      class LookUpEventsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param LookupAttributes: 检索条件
        # @type LookupAttributes: Array
        # @param NextToken: 查看更多日志的凭证
        # @type NextToken: String
        # @param MaxResults: 返回日志的最大条数
        # @type MaxResults: Integer
        # @param Mode: 操作审计模式，有效值：standard | quick，其中standard是标准模式，quick是极速模式。默认为标准模式
        # @type Mode: String

        attr_accessor :StartTime, :EndTime, :LookupAttributes, :NextToken, :MaxResults, :Mode

        def initialize(starttime=nil, endtime=nil, lookupattributes=nil, nexttoken=nil, maxresults=nil, mode=nil)
          @StartTime = starttime
          @EndTime = endtime
          @LookupAttributes = lookupattributes
          @NextToken = nexttoken
          @MaxResults = maxresults
          @Mode = mode
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['LookupAttributes'].nil?
            @LookupAttributes = []
            params['LookupAttributes'].each do |i|
              lookupattribute_tmp = LookupAttribute.new
              lookupattribute_tmp.deserialize(i)
              @LookupAttributes << lookupattribute_tmp
            end
          end
          @NextToken = params['NextToken']
          @MaxResults = params['MaxResults']
          @Mode = params['Mode']
        end
      end

      # LookUpEvents返回参数结构体
      class LookUpEventsResponse < TencentCloud::Common::AbstractModel
        # @param NextToken: 查看更多日志的凭证
        # @type NextToken: String
        # @param Events: 日志集合
        # @type Events: Array
        # @param ListOver: 日志集合是否结束
        # @type ListOver: Boolean
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextToken, :Events, :ListOver, :TotalCount, :RequestId

        def initialize(nexttoken=nil, events=nil, listover=nil, totalcount=nil, requestid=nil)
          @NextToken = nexttoken
          @Events = events
          @ListOver = listover
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @NextToken = params['NextToken']
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              event_tmp = Event.new
              event_tmp.deserialize(i)
              @Events << event_tmp
            end
          end
          @ListOver = params['ListOver']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 检索条件
      class LookupAttribute < TencentCloud::Common::AbstractModel
        # @param AttributeKey: AttributeKey的有效取值范围是:RequestId、EventName、ReadOnly、Username、ResourceType、ResourceName和AccessKeyId，EventId
        # @type AttributeKey: String
        # @param AttributeValue: AttributeValue的值
        # @type AttributeValue: String

        attr_accessor :AttributeKey, :AttributeValue

        def initialize(attributekey=nil, attributevalue=nil)
          @AttributeKey = attributekey
          @AttributeValue = attributevalue
        end

        def deserialize(params)
          @AttributeKey = params['AttributeKey']
          @AttributeValue = params['AttributeValue']
        end
      end

      # ModifyAuditTrack请求参数结构体
      class ModifyAuditTrackRequest < TencentCloud::Common::AbstractModel
        # @param TrackId: 跟踪集 ID
        # @type TrackId: Integer
        # @param Name: 跟踪集名称，仅支持大小写字母、数字、-以及_的组合，3-48个字符
        # @type Name: String
        # @param ActionType: 跟踪事件类型（读：Read；写：Write；全部：*）
        # @type ActionType: String
        # @param ResourceType: 跟踪事件所属产品（支持全部产品或单个产品，如：cos，全部：*）
        # @type ResourceType: String
        # @param Status: 跟踪集状态（未开启：0；开启：1）
        # @type Status: Integer
        # @param EventNames: 跟踪事件接口名列表（ResourceType为 * 时，EventNames必须为全部：["*"]；指定ResourceType时，支持全部接口：["*"]；支持部分接口：["cos", "cls"]，接口列表上限10个）
        # @type EventNames: Array
        # @param Storage: 数据投递存储（目前支持 cos、cls）
        # @type Storage: :class:`Tencentcloud::Cloudaudit.v20190319.models.Storage`
        # @param TrackForAllMembers: 是否开启将集团成员操作日志投递到集团管理账号或者可信服务管理账号(0：未开启，1：开启，只能集团管理账号或者可信服务管理账号开启此项功能)
        # @type TrackForAllMembers: Integer

        attr_accessor :TrackId, :Name, :ActionType, :ResourceType, :Status, :EventNames, :Storage, :TrackForAllMembers

        def initialize(trackid=nil, name=nil, actiontype=nil, resourcetype=nil, status=nil, eventnames=nil, storage=nil, trackforallmembers=nil)
          @TrackId = trackid
          @Name = name
          @ActionType = actiontype
          @ResourceType = resourcetype
          @Status = status
          @EventNames = eventnames
          @Storage = storage
          @TrackForAllMembers = trackforallmembers
        end

        def deserialize(params)
          @TrackId = params['TrackId']
          @Name = params['Name']
          @ActionType = params['ActionType']
          @ResourceType = params['ResourceType']
          @Status = params['Status']
          @EventNames = params['EventNames']
          unless params['Storage'].nil?
            @Storage = Storage.new
            @Storage.deserialize(params['Storage'])
          end
          @TrackForAllMembers = params['TrackForAllMembers']
        end
      end

      # ModifyAuditTrack返回参数结构体
      class ModifyAuditTrackResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyEventsAuditTrack请求参数结构体
      class ModifyEventsAuditTrackRequest < TencentCloud::Common::AbstractModel
        # @param TrackId: 跟踪集 ID
        # @type TrackId: Integer
        # @param Name: 跟踪集名称，仅支持大小写字母、数字、-以及_的组合，3-48个字符
        # @type Name: String
        # @param Status: 跟踪集状态（未开启：0；开启：1）
        # @type Status: Integer
        # @param Storage: 数据投递存储（目前支持 cos、cls）
        # @type Storage: :class:`Tencentcloud::Cloudaudit.v20190319.models.Storage`
        # @param TrackForAllMembers: 是否开启将集团成员操作日志投递到集团管理账号或者可信服务管理账号(0：未开启，1：开启，只能集团管理账号或者可信服务管理账号开启此项功能)
        # @type TrackForAllMembers: Integer
        # @param Filters: 多产品筛选过滤条件
        # @type Filters: :class:`Tencentcloud::Cloudaudit.v20190319.models.Filter`

        attr_accessor :TrackId, :Name, :Status, :Storage, :TrackForAllMembers, :Filters

        def initialize(trackid=nil, name=nil, status=nil, storage=nil, trackforallmembers=nil, filters=nil)
          @TrackId = trackid
          @Name = name
          @Status = status
          @Storage = storage
          @TrackForAllMembers = trackforallmembers
          @Filters = filters
        end

        def deserialize(params)
          @TrackId = params['TrackId']
          @Name = params['Name']
          @Status = params['Status']
          unless params['Storage'].nil?
            @Storage = Storage.new
            @Storage.deserialize(params['Storage'])
          end
          @TrackForAllMembers = params['TrackForAllMembers']
          unless params['Filters'].nil?
            @Filters = Filter.new
            @Filters.deserialize(params['Filters'])
          end
        end
      end

      # ModifyEventsAuditTrack返回参数结构体
      class ModifyEventsAuditTrackResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 资源类型
      class Resource < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型
        # @type ResourceType: String
        # @param ResourceName: 资源名称
        # @type ResourceName: String

        attr_accessor :ResourceType, :ResourceName

        def initialize(resourcetype=nil, resourcename=nil)
          @ResourceType = resourcetype
          @ResourceName = resourcename
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @ResourceName = params['ResourceName']
        end
      end

      # 资源筛选条件
      class ResourceField < TencentCloud::Common::AbstractModel
        # @param ResourceType: 跟踪事件所属产品（支持全部产品或单个产品，如：cam，全部：*）
        # @type ResourceType: String
        # @param ActionType: 跟踪事件类型（读：Read；写：Write；全部：*）
        # @type ActionType: String
        # @param EventNames: 跟踪事件接口名列表（ResourceType为 * 时，EventNames必须为全部：[""]；指定ResourceType时，支持全部接口：[""]；支持部分接口：["cos", "cls"]，接口列表上限10个）
        # @type EventNames: Array

        attr_accessor :ResourceType, :ActionType, :EventNames

        def initialize(resourcetype=nil, actiontype=nil, eventnames=nil)
          @ResourceType = resourcetype
          @ActionType = actiontype
          @EventNames = eventnames
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @ActionType = params['ActionType']
          @EventNames = params['EventNames']
        end
      end

      # StartLogging请求参数结构体
      class StartLoggingRequest < TencentCloud::Common::AbstractModel
        # @param AuditName: 跟踪集名称
        # @type AuditName: String

        attr_accessor :AuditName

        def initialize(auditname=nil)
          @AuditName = auditname
        end

        def deserialize(params)
          @AuditName = params['AuditName']
        end
      end

      # StartLogging返回参数结构体
      class StartLoggingResponse < TencentCloud::Common::AbstractModel
        # @param IsSuccess: 是否开启成功
        # @type IsSuccess: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsSuccess, :RequestId

        def initialize(issuccess=nil, requestid=nil)
          @IsSuccess = issuccess
          @RequestId = requestid
        end

        def deserialize(params)
          @IsSuccess = params['IsSuccess']
          @RequestId = params['RequestId']
        end
      end

      # StopLogging请求参数结构体
      class StopLoggingRequest < TencentCloud::Common::AbstractModel
        # @param AuditName: 跟踪集名称
        # @type AuditName: String

        attr_accessor :AuditName

        def initialize(auditname=nil)
          @AuditName = auditname
        end

        def deserialize(params)
          @AuditName = params['AuditName']
        end
      end

      # StopLogging返回参数结构体
      class StopLoggingResponse < TencentCloud::Common::AbstractModel
        # @param IsSuccess: 是否关闭成功
        # @type IsSuccess: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsSuccess, :RequestId

        def initialize(issuccess=nil, requestid=nil)
          @IsSuccess = issuccess
          @RequestId = requestid
        end

        def deserialize(params)
          @IsSuccess = params['IsSuccess']
          @RequestId = params['RequestId']
        end
      end

      # 跟踪集存储信息
      class Storage < TencentCloud::Common::AbstractModel
        # @param StorageType: 存储类型（目前支持 cos、cls）
        # @type StorageType: String
        # @param StorageRegion: 存储所在地域
        # @type StorageRegion: String
        # @param StorageName: 存储名称(cos：存储名称为用户自定义的存储桶名称，不包含"-APPID"，仅支持小写字母、数字以及中划线"-"的组合，不能超过50字符，且不支持中划线"-"开头或结尾； cls：存储名称为日志主题id，字符长度为1-50个字符)
        # @type StorageName: String
        # @param StoragePrefix: 存储目录前缀，cos日志文件前缀仅支持字母和数字的组合，3-40个字符
        # @type StoragePrefix: String
        # @param StorageAccountId: 被指定存储用户ID
        # @type StorageAccountId: String
        # @param StorageAppId: 被指定存储用户appid
        # @type StorageAppId: String

        attr_accessor :StorageType, :StorageRegion, :StorageName, :StoragePrefix, :StorageAccountId, :StorageAppId

        def initialize(storagetype=nil, storageregion=nil, storagename=nil, storageprefix=nil, storageaccountid=nil, storageappid=nil)
          @StorageType = storagetype
          @StorageRegion = storageregion
          @StorageName = storagename
          @StoragePrefix = storageprefix
          @StorageAccountId = storageaccountid
          @StorageAppId = storageappid
        end

        def deserialize(params)
          @StorageType = params['StorageType']
          @StorageRegion = params['StorageRegion']
          @StorageName = params['StorageName']
          @StoragePrefix = params['StoragePrefix']
          @StorageAccountId = params['StorageAccountId']
          @StorageAppId = params['StorageAppId']
        end
      end

      # 跟踪集列表
      class Tracks < TencentCloud::Common::AbstractModel
        # @param Name: 跟踪集名称
        # @type Name: String
        # @param ActionType: 跟踪事件类型（读：Read；写：Write；全部：*）
        # @type ActionType: String
        # @param ResourceType: 跟踪事件所属产品（如：cos，全部：*）
        # @type ResourceType: String
        # @param Status: 跟踪集状态（未开启：0；开启：1）
        # @type Status: Integer
        # @param EventNames: 跟踪事件接口名列表（全部：[*]）
        # @type EventNames: Array
        # @param Storage: 数据投递存储（目前支持 cos、cls）
        # @type Storage: :class:`Tencentcloud::Cloudaudit.v20190319.models.Storage`
        # @param CreateTime: 跟踪集创建时间
        # @type CreateTime: String
        # @param TrackId: 跟踪集 ID
        # @type TrackId: Integer

        attr_accessor :Name, :ActionType, :ResourceType, :Status, :EventNames, :Storage, :CreateTime, :TrackId

        def initialize(name=nil, actiontype=nil, resourcetype=nil, status=nil, eventnames=nil, storage=nil, createtime=nil, trackid=nil)
          @Name = name
          @ActionType = actiontype
          @ResourceType = resourcetype
          @Status = status
          @EventNames = eventnames
          @Storage = storage
          @CreateTime = createtime
          @TrackId = trackid
        end

        def deserialize(params)
          @Name = params['Name']
          @ActionType = params['ActionType']
          @ResourceType = params['ResourceType']
          @Status = params['Status']
          @EventNames = params['EventNames']
          unless params['Storage'].nil?
            @Storage = Storage.new
            @Storage.deserialize(params['Storage'])
          end
          @CreateTime = params['CreateTime']
          @TrackId = params['TrackId']
        end
      end

      # UpdateAudit请求参数结构体
      class UpdateAuditRequest < TencentCloud::Common::AbstractModel
        # @param AuditName: 跟踪集名称
        # @type AuditName: String
        # @param IsEnableCmqNotify: 是否开启cmq消息通知。1：是，0：否。目前仅支持cmq的队列服务。如果开启cmq消息通知服务，操作审计会将您的日志内容实时投递到您指定地域的指定队列中。
        # @type IsEnableCmqNotify: Integer
        # @param ReadWriteAttribute: 管理事件的读写属性。1：只读，2：只写，3：全部。
        # @type ReadWriteAttribute: Integer
        # @param KeyId: CMK的全局唯一标识符，如果不是新创建的kms，该值是必填值。可以通过ListKeyAliasByRegion来获取。操作审计不会校验KeyId的合法性，请您谨慎填写，避免给您的数据造成损失。
        # @type KeyId: String
        # @param CosRegion: cos地域。目前支持的地域可以使用ListCosEnableRegion来获取。
        # @type CosRegion: String
        # @param CmqQueueName: 队列名称。队列名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。如果IsEnableCmqNotify值是1的话，此值属于必填字段。如果不是新创建的队列，操作审计不会去校验该队列是否真的存在，请谨慎填写，避免日志通知不成功，导致您的数据丢失。
        # @type CmqQueueName: String
        # @param IsCreateNewBucket: 是否创建新的cos存储桶。1：是，0：否。
        # @type IsCreateNewBucket: Integer
        # @param KmsRegion: kms地域。目前支持的地域可以使用ListKmsEnableRegion来获取。必须要和cos的地域保持一致。
        # @type KmsRegion: String
        # @param IsEnableKmsEncry: 是否开启kms加密。1：是，0：否。如果开启KMS加密，数据在投递到cos时，会将数据加密。
        # @type IsEnableKmsEncry: Integer
        # @param CosBucketName: cos的存储桶名称。仅支持小写英文字母和数字即[a-z，0-9]、中划线“-”及其组合。用户自定义的字符串支持1 - 40个字符。存储桶命名不能以“-”开头或结尾。如果不是新创建的存储桶，操作审计不会去校验该存储桶是否真的存在，请谨慎填写，避免日志投递不成功，导致您的数据丢失。
        # @type CosBucketName: String
        # @param CmqRegion: 队列所在的地域。可以通过ListCmqEnableRegion获取支持的cmq地域。如果IsEnableCmqNotify值是1的话，此值属于必填字段。
        # @type CmqRegion: String
        # @param LogFilePrefix: 日志文件前缀。3-40个字符，只能包含 ASCII 编码字母 a-z，A-Z，数字 0-9。
        # @type LogFilePrefix: String
        # @param IsCreateNewQueue: 是否创建新的队列。1：是，0：否。如果IsEnableCmqNotify值是1的话，此值属于必填字段。
        # @type IsCreateNewQueue: Integer

        attr_accessor :AuditName, :IsEnableCmqNotify, :ReadWriteAttribute, :KeyId, :CosRegion, :CmqQueueName, :IsCreateNewBucket, :KmsRegion, :IsEnableKmsEncry, :CosBucketName, :CmqRegion, :LogFilePrefix, :IsCreateNewQueue

        def initialize(auditname=nil, isenablecmqnotify=nil, readwriteattribute=nil, keyid=nil, cosregion=nil, cmqqueuename=nil, iscreatenewbucket=nil, kmsregion=nil, isenablekmsencry=nil, cosbucketname=nil, cmqregion=nil, logfileprefix=nil, iscreatenewqueue=nil)
          @AuditName = auditname
          @IsEnableCmqNotify = isenablecmqnotify
          @ReadWriteAttribute = readwriteattribute
          @KeyId = keyid
          @CosRegion = cosregion
          @CmqQueueName = cmqqueuename
          @IsCreateNewBucket = iscreatenewbucket
          @KmsRegion = kmsregion
          @IsEnableKmsEncry = isenablekmsencry
          @CosBucketName = cosbucketname
          @CmqRegion = cmqregion
          @LogFilePrefix = logfileprefix
          @IsCreateNewQueue = iscreatenewqueue
        end

        def deserialize(params)
          @AuditName = params['AuditName']
          @IsEnableCmqNotify = params['IsEnableCmqNotify']
          @ReadWriteAttribute = params['ReadWriteAttribute']
          @KeyId = params['KeyId']
          @CosRegion = params['CosRegion']
          @CmqQueueName = params['CmqQueueName']
          @IsCreateNewBucket = params['IsCreateNewBucket']
          @KmsRegion = params['KmsRegion']
          @IsEnableKmsEncry = params['IsEnableKmsEncry']
          @CosBucketName = params['CosBucketName']
          @CmqRegion = params['CmqRegion']
          @LogFilePrefix = params['LogFilePrefix']
          @IsCreateNewQueue = params['IsCreateNewQueue']
        end
      end

      # UpdateAudit返回参数结构体
      class UpdateAuditResponse < TencentCloud::Common::AbstractModel
        # @param IsSuccess: 是否更新成功
        # @type IsSuccess: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsSuccess, :RequestId

        def initialize(issuccess=nil, requestid=nil)
          @IsSuccess = issuccess
          @RequestId = requestid
        end

        def deserialize(params)
          @IsSuccess = params['IsSuccess']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

