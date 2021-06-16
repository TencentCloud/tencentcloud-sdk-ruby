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
  module Dts
    module V20180330
      # ActivateSubscribe请求参数结构体
      class ActivateSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 订阅实例ID。
        # @type SubscribeId: String
        # @param InstanceId: 数据库实例ID
        # @type InstanceId: String
        # @param SubscribeObjectType: 数据订阅类型0-全实例订阅，1数据订阅，2结构订阅，3数据订阅与结构订阅
        # @type SubscribeObjectType: Integer
        # @param Objects: 订阅对象
        # @type Objects: :class:`Tencentcloud::Dts.v20180330.models.SubscribeObject`
        # @param UniqSubnetId: 数据订阅服务所在子网。默认为数据库实例所在的子网内。
        # @type UniqSubnetId: String
        # @param Vport: 订阅服务端口；默认为7507
        # @type Vport: Integer

        attr_accessor :SubscribeId, :InstanceId, :SubscribeObjectType, :Objects, :UniqSubnetId, :Vport
        
        def initialize(subscribeid=nil, instanceid=nil, subscribeobjecttype=nil, objects=nil, uniqsubnetid=nil, vport=nil)
          @SubscribeId = subscribeid
          @InstanceId = instanceid
          @SubscribeObjectType = subscribeobjecttype
          @Objects = objects
          @UniqSubnetId = uniqsubnetid
          @Vport = vport
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @InstanceId = params['InstanceId']
          @SubscribeObjectType = params['SubscribeObjectType']
          unless params['Objects'].nil?
            @Objects = SubscribeObject.new.deserialize(params['Objects'])
          end
          @UniqSubnetId = params['UniqSubnetId']
          @Vport = params['Vport']
        end
      end

      # ActivateSubscribe返回参数结构体
      class ActivateSubscribeResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 配置数据订阅任务ID。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId
        
        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # CompleteMigrateJob请求参数结构体
      class CompleteMigrateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID
        # @type JobId: String
        # @param CompleteMode: 完成任务的方式,仅支持旧版MySQL迁移任务。waitForSync-等待主从差距为0才停止,immediately-立即完成，不会等待主从差距一致。默认为waitForSync
        # @type CompleteMode: String

        attr_accessor :JobId, :CompleteMode
        
        def initialize(jobid=nil, completemode=nil)
          @JobId = jobid
          @CompleteMode = completemode
        end

        def deserialize(params)
          @JobId = params['JobId']
          @CompleteMode = params['CompleteMode']
        end
      end

      # CompleteMigrateJob返回参数结构体
      class CompleteMigrateJobResponse < TencentCloud::Common::AbstractModel
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

      # 抽样检验时的抽样参数
      class ConsistencyParams < TencentCloud::Common::AbstractModel
        # @param SelectRowsPerTable: 数据内容检测参数。表中选出用来数据对比的行，占表的总行数的百分比。取值范围是整数[1-100]
        # @type SelectRowsPerTable: Integer
        # @param TablesSelectAll: 数据内容检测参数。迁移库表中，要进行数据内容检测的表，占所有表的百分比。取值范围是整数[1-100]
        # @type TablesSelectAll: Integer
        # @param TablesSelectCount: 数据数量检测，检测表行数是否一致。迁移库表中，要进行数据数量检测的表，占所有表的百分比。取值范围是整数[1-100]
        # @type TablesSelectCount: Integer

        attr_accessor :SelectRowsPerTable, :TablesSelectAll, :TablesSelectCount
        
        def initialize(selectrowspertable=nil, tablesselectall=nil, tablesselectcount=nil)
          @SelectRowsPerTable = selectrowspertable
          @TablesSelectAll = tablesselectall
          @TablesSelectCount = tablesselectcount
        end

        def deserialize(params)
          @SelectRowsPerTable = params['SelectRowsPerTable']
          @TablesSelectAll = params['TablesSelectAll']
          @TablesSelectCount = params['TablesSelectCount']
        end
      end

      # CreateMigrateCheckJob请求参数结构体
      class CreateMigrateCheckJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # CreateMigrateCheckJob返回参数结构体
      class CreateMigrateCheckJobResponse < TencentCloud::Common::AbstractModel
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

      # CreateMigrateJob请求参数结构体
      class CreateMigrateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobName: 数据迁移任务名称
        # @type JobName: String
        # @param MigrateOption: 迁移任务配置选项
        # @type MigrateOption: :class:`Tencentcloud::Dts.v20180330.models.MigrateOption`
        # @param SrcDatabaseType: 源实例数据库类型，目前支持：mysql，redis，mongodb，postgresql，mariadb，percona。不同地域数据库类型的具体支持情况，请参考控制台创建迁移页面。
        # @type SrcDatabaseType: String
        # @param SrcAccessType: 源实例接入类型，值包括：extranet(外网),cvm(CVM自建实例),dcg(专线接入的实例),vpncloud(云VPN接入的实例),cdb(腾讯云数据库实例),ccn(云联网实例)
        # @type SrcAccessType: String
        # @param SrcInfo: 源实例信息，具体内容跟迁移任务类型相关
        # @type SrcInfo: :class:`Tencentcloud::Dts.v20180330.models.SrcInfo`
        # @param DstDatabaseType: 目标实例数据库类型，目前支持：mysql，redis，mongodb，postgresql，mariadb，percona。不同地域数据库类型的具体支持情况，请参考控制台创建迁移页面。
        # @type DstDatabaseType: String
        # @param DstAccessType: 目标实例接入类型，目前支持：cdb（腾讯云数据库实例）
        # @type DstAccessType: String
        # @param DstInfo: 目标实例信息
        # @type DstInfo: :class:`Tencentcloud::Dts.v20180330.models.DstInfo`
        # @param DatabaseInfo: 需要迁移的源数据库表信息，用json格式的字符串描述。当MigrateOption.MigrateObject配置为2（指定库表迁移）时必填。
        # 对于database-table两级结构的数据库：
        # [{Database:db1,Table:[table1,table2]},{Database:db2}]
        # 对于database-schema-table三级结构：
        # [{Database:db1,Schema:s1
        # Table:[table1,table2]},{Database:db1,Schema:s2
        # Table:[table1,table2]},{Database:db2,Schema:s1
        # Table:[table1,table2]},{Database:db3},{Database:db4
        # Schema:s1}]
        # @type DatabaseInfo: String

        attr_accessor :JobName, :MigrateOption, :SrcDatabaseType, :SrcAccessType, :SrcInfo, :DstDatabaseType, :DstAccessType, :DstInfo, :DatabaseInfo
        
        def initialize(jobname=nil, migrateoption=nil, srcdatabasetype=nil, srcaccesstype=nil, srcinfo=nil, dstdatabasetype=nil, dstaccesstype=nil, dstinfo=nil, databaseinfo=nil)
          @JobName = jobname
          @MigrateOption = migrateoption
          @SrcDatabaseType = srcdatabasetype
          @SrcAccessType = srcaccesstype
          @SrcInfo = srcinfo
          @DstDatabaseType = dstdatabasetype
          @DstAccessType = dstaccesstype
          @DstInfo = dstinfo
          @DatabaseInfo = databaseinfo
        end

        def deserialize(params)
          @JobName = params['JobName']
          unless params['MigrateOption'].nil?
            @MigrateOption = MigrateOption.new.deserialize(params['MigrateOption'])
          end
          @SrcDatabaseType = params['SrcDatabaseType']
          @SrcAccessType = params['SrcAccessType']
          unless params['SrcInfo'].nil?
            @SrcInfo = SrcInfo.new.deserialize(params['SrcInfo'])
          end
          @DstDatabaseType = params['DstDatabaseType']
          @DstAccessType = params['DstAccessType']
          unless params['DstInfo'].nil?
            @DstInfo = DstInfo.new.deserialize(params['DstInfo'])
          end
          @DatabaseInfo = params['DatabaseInfo']
        end
      end

      # CreateMigrateJob返回参数结构体
      class CreateMigrateJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID
        # @type JobId: String
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

      # CreateSubscribe请求参数结构体
      class CreateSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param Product: 订阅的数据库类型，目前支持的有 mysql
        # @type Product: String
        # @param PayType: 实例付费类型，1小时计费，0包年包月
        # @type PayType: Integer
        # @param Duration: 购买时长。PayType为0时必填。单位为月，最大支持120
        # @type Duration: Integer
        # @param Count: 购买数量,默认为1，最大为10
        # @type Count: Integer
        # @param AutoRenew: 是否自动续费，默认为0，1表示自动续费。小时计费实例设置该标识无效。
        # @type AutoRenew: Integer
        # @param Tags: 实例资源标签
        # @type Tags: Array

        attr_accessor :Product, :PayType, :Duration, :Count, :AutoRenew, :Tags
        
        def initialize(product=nil, paytype=nil, duration=nil, count=nil, autorenew=nil, tags=nil)
          @Product = product
          @PayType = paytype
          @Duration = duration
          @Count = count
          @AutoRenew = autorenew
          @Tags = tags
        end

        def deserialize(params)
          @Product = params['Product']
          @PayType = params['PayType']
          @Duration = params['Duration']
          @Count = params['Count']
          @AutoRenew = params['AutoRenew']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << TagItem.new.deserialize(i)
            end
          end
        end
      end

      # CreateSubscribe返回参数结构体
      class CreateSubscribeResponse < TencentCloud::Common::AbstractModel
        # @param SubscribeIds: 数据订阅实例的ID数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscribeIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubscribeIds, :RequestId
        
        def initialize(subscribeids=nil, requestid=nil)
          @SubscribeIds = subscribeids
          @RequestId = requestid
        end

        def deserialize(params)
          @SubscribeIds = params['SubscribeIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateSyncCheckJob请求参数结构体
      class CreateSyncCheckJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 灾备同步任务ID
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # CreateSyncCheckJob返回参数结构体
      class CreateSyncCheckJobResponse < TencentCloud::Common::AbstractModel
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

      # CreateSyncJob请求参数结构体
      class CreateSyncJobRequest < TencentCloud::Common::AbstractModel
        # @param JobName: 灾备同步任务名
        # @type JobName: String
        # @param SyncOption: 灾备同步任务配置选项
        # @type SyncOption: :class:`Tencentcloud::Dts.v20180330.models.SyncOption`
        # @param SrcDatabaseType: 源实例数据库类型，目前仅包括：mysql
        # @type SrcDatabaseType: String
        # @param SrcAccessType: 源实例接入类型，目前仅包括：cdb(云上cdb实例)
        # @type SrcAccessType: String
        # @param SrcInfo: 源实例信息
        # @type SrcInfo: :class:`Tencentcloud::Dts.v20180330.models.SyncInstanceInfo`
        # @param DstDatabaseType: 目标实例数据库类型，目前仅包括：mysql
        # @type DstDatabaseType: String
        # @param DstAccessType: 目标实例接入类型，目前仅包括：cdb(云上cdb实例)
        # @type DstAccessType: String
        # @param DstInfo: 目标实例信息
        # @type DstInfo: :class:`Tencentcloud::Dts.v20180330.models.SyncInstanceInfo`
        # @param DatabaseInfo: 需要同步的源数据库表信息，用json格式的字符串描述。
        # 对于database-table两级结构的数据库：
        # [{Database:db1,Table:[table1,table2]},{Database:db2}]
        # @type DatabaseInfo: String

        attr_accessor :JobName, :SyncOption, :SrcDatabaseType, :SrcAccessType, :SrcInfo, :DstDatabaseType, :DstAccessType, :DstInfo, :DatabaseInfo
        
        def initialize(jobname=nil, syncoption=nil, srcdatabasetype=nil, srcaccesstype=nil, srcinfo=nil, dstdatabasetype=nil, dstaccesstype=nil, dstinfo=nil, databaseinfo=nil)
          @JobName = jobname
          @SyncOption = syncoption
          @SrcDatabaseType = srcdatabasetype
          @SrcAccessType = srcaccesstype
          @SrcInfo = srcinfo
          @DstDatabaseType = dstdatabasetype
          @DstAccessType = dstaccesstype
          @DstInfo = dstinfo
          @DatabaseInfo = databaseinfo
        end

        def deserialize(params)
          @JobName = params['JobName']
          unless params['SyncOption'].nil?
            @SyncOption = SyncOption.new.deserialize(params['SyncOption'])
          end
          @SrcDatabaseType = params['SrcDatabaseType']
          @SrcAccessType = params['SrcAccessType']
          unless params['SrcInfo'].nil?
            @SrcInfo = SyncInstanceInfo.new.deserialize(params['SrcInfo'])
          end
          @DstDatabaseType = params['DstDatabaseType']
          @DstAccessType = params['DstAccessType']
          unless params['DstInfo'].nil?
            @DstInfo = SyncInstanceInfo.new.deserialize(params['DstInfo'])
          end
          @DatabaseInfo = params['DatabaseInfo']
        end
      end

      # CreateSyncJob返回参数结构体
      class CreateSyncJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 灾备同步任务ID
        # @type JobId: String
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

      # DeleteMigrateJob请求参数结构体
      class DeleteMigrateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DeleteMigrateJob返回参数结构体
      class DeleteMigrateJobResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSyncJob请求参数结构体
      class DeleteSyncJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 待删除的灾备同步任务ID
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DeleteSyncJob返回参数结构体
      class DeleteSyncJobResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAsyncRequestInfo请求参数结构体
      class DescribeAsyncRequestInfoRequest < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 任务 ID
        # @type AsyncRequestId: String

        attr_accessor :AsyncRequestId
        
        def initialize(asyncrequestid=nil)
          @AsyncRequestId = asyncrequestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
        end
      end

      # DescribeAsyncRequestInfo返回参数结构体
      class DescribeAsyncRequestInfoResponse < TencentCloud::Common::AbstractModel
        # @param Info: 任务执行结果信息
        # @type Info: String
        # @param Status: 任务执行状态，可能的值有：success，failed，running
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Info, :Status, :RequestId
        
        def initialize(info=nil, status=nil, requestid=nil)
          @Info = info
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Info = params['Info']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMigrateCheckJob请求参数结构体
      class DescribeMigrateCheckJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DescribeMigrateCheckJob返回参数结构体
      class DescribeMigrateCheckJobResponse < TencentCloud::Common::AbstractModel
        # @param Status: 校验任务状态：unavailable(当前不可用), starting(开始中)，running(校验中)，finished(校验完成)
        # @type Status: String
        # @param ErrorCode: 任务的错误码
        # @type ErrorCode: Integer
        # @param ErrorMessage: 任务的错误信息
        # @type ErrorMessage: String
        # @param Progress: Check任务总进度,如："30"表示30%
        # @type Progress: String
        # @param CheckFlag: 校验是否通过,0-未通过，1-校验通过, 3-未校验
        # @type CheckFlag: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ErrorCode, :ErrorMessage, :Progress, :CheckFlag, :RequestId
        
        def initialize(status=nil, errorcode=nil, errormessage=nil, progress=nil, checkflag=nil, requestid=nil)
          @Status = status
          @ErrorCode = errorcode
          @ErrorMessage = errormessage
          @Progress = progress
          @CheckFlag = checkflag
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrorCode = params['ErrorCode']
          @ErrorMessage = params['ErrorMessage']
          @Progress = params['Progress']
          @CheckFlag = params['CheckFlag']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMigrateJobs请求参数结构体
      class DescribeMigrateJobsRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID
        # @type JobId: String
        # @param JobName: 数据迁移任务名称
        # @type JobName: String
        # @param Order: 排序字段，可以取值为JobId、Status、JobName、MigrateType、RunMode、CreateTime
        # @type Order: String
        # @param OrderSeq: 排序方式，升序为ASC，降序为DESC
        # @type OrderSeq: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回实例数量，默认20，有效区间[1,100]
        # @type Limit: Integer

        attr_accessor :JobId, :JobName, :Order, :OrderSeq, :Offset, :Limit
        
        def initialize(jobid=nil, jobname=nil, order=nil, orderseq=nil, offset=nil, limit=nil)
          @JobId = jobid
          @JobName = jobname
          @Order = order
          @OrderSeq = orderseq
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          @Order = params['Order']
          @OrderSeq = params['OrderSeq']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeMigrateJobs返回参数结构体
      class DescribeMigrateJobsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 任务数目
        # @type TotalCount: Integer
        # @param JobList: 任务详情数组
        # @type JobList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :JobList, :RequestId
        
        def initialize(totalcount=nil, joblist=nil, requestid=nil)
          @TotalCount = totalcount
          @JobList = joblist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['JobList'].nil?
            @JobList = []
            params['JobList'].each do |i|
              @JobList << MigrateJobInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegionConf请求参数结构体
      class DescribeRegionConfRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRegionConf返回参数结构体
      class DescribeRegionConfResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 可售卖地域的数量
        # @type TotalCount: Integer
        # @param Items: 可售卖地域详情
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId
        
        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              @Items << SubscribeRegionConf.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubscribeConf请求参数结构体
      class DescribeSubscribeConfRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 订阅实例ID
        # @type SubscribeId: String

        attr_accessor :SubscribeId
        
        def initialize(subscribeid=nil)
          @SubscribeId = subscribeid
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
        end
      end

      # DescribeSubscribeConf返回参数结构体
      class DescribeSubscribeConfResponse < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 订阅实例ID
        # @type SubscribeId: String
        # @param SubscribeName: 订阅实例名称
        # @type SubscribeName: String
        # @param ChannelId: 订阅通道
        # @type ChannelId: String
        # @param Product: 订阅数据库类型
        # @type Product: String
        # @param InstanceId: 被订阅的实例
        # @type InstanceId: String
        # @param InstanceStatus: 被订阅的实例的状态，可能的值有running,offline,isolate
        # @type InstanceStatus: String
        # @param SubsStatus: 订阅实例状态，可能的值有unconfigure-未配置，configuring-配置中，configured-已配置
        # @type SubsStatus: String
        # @param Status: 订阅实例生命周期状态，可能的值有：normal-正常，isolating-隔离中，isolated-已隔离，offlining-下线中
        # @type Status: String
        # @param CreateTime: 订阅实例创建时间
        # @type CreateTime: String
        # @param IsolateTime: 订阅实例被隔离时间
        # @type IsolateTime: String
        # @param ExpireTime: 订阅实例到期时间
        # @type ExpireTime: String
        # @param OfflineTime: 订阅实例下线时间
        # @type OfflineTime: String
        # @param ConsumeStartTime: 订阅实例消费时间起点。
        # @type ConsumeStartTime: String
        # @param PayType: 订阅实例计费类型，1-小时计费，0-包年包月
        # @type PayType: Integer
        # @param Vip: 订阅通道Vip
        # @type Vip: String
        # @param Vport: 订阅通道Port
        # @type Vport: Integer
        # @param UniqVpcId: 订阅通道所在VpcId
        # @type UniqVpcId: String
        # @param UniqSubnetId: 订阅通道所在SubnetId
        # @type UniqSubnetId: String
        # @param SdkConsumedTime: 当前SDK消费时间位点
        # @type SdkConsumedTime: String
        # @param SdkHost: 订阅SDK IP地址
        # @type SdkHost: String
        # @param SubscribeObjectType: 订阅对象类型0-全实例订阅，1-DDL数据订阅，2-DML结构订阅，3-DDL数据订阅+DML结构订阅
        # @type SubscribeObjectType: Integer
        # @param SubscribeObjects: 订阅对象，当SubscribeObjectType 为0时，此字段为空数组
        # @type SubscribeObjects: Array
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param Region: 地域
        # @type Region: String
        # @param Tags: 订阅实例的标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param AutoRenewFlag: 自动续费标识,0-不自动续费，1-自动续费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewFlag: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubscribeId, :SubscribeName, :ChannelId, :Product, :InstanceId, :InstanceStatus, :SubsStatus, :Status, :CreateTime, :IsolateTime, :ExpireTime, :OfflineTime, :ConsumeStartTime, :PayType, :Vip, :Vport, :UniqVpcId, :UniqSubnetId, :SdkConsumedTime, :SdkHost, :SubscribeObjectType, :SubscribeObjects, :ModifyTime, :Region, :Tags, :AutoRenewFlag, :RequestId
        
        def initialize(subscribeid=nil, subscribename=nil, channelid=nil, product=nil, instanceid=nil, instancestatus=nil, subsstatus=nil, status=nil, createtime=nil, isolatetime=nil, expiretime=nil, offlinetime=nil, consumestarttime=nil, paytype=nil, vip=nil, vport=nil, uniqvpcid=nil, uniqsubnetid=nil, sdkconsumedtime=nil, sdkhost=nil, subscribeobjecttype=nil, subscribeobjects=nil, modifytime=nil, region=nil, tags=nil, autorenewflag=nil, requestid=nil)
          @SubscribeId = subscribeid
          @SubscribeName = subscribename
          @ChannelId = channelid
          @Product = product
          @InstanceId = instanceid
          @InstanceStatus = instancestatus
          @SubsStatus = subsstatus
          @Status = status
          @CreateTime = createtime
          @IsolateTime = isolatetime
          @ExpireTime = expiretime
          @OfflineTime = offlinetime
          @ConsumeStartTime = consumestarttime
          @PayType = paytype
          @Vip = vip
          @Vport = vport
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @SdkConsumedTime = sdkconsumedtime
          @SdkHost = sdkhost
          @SubscribeObjectType = subscribeobjecttype
          @SubscribeObjects = subscribeobjects
          @ModifyTime = modifytime
          @Region = region
          @Tags = tags
          @AutoRenewFlag = autorenewflag
          @RequestId = requestid
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @SubscribeName = params['SubscribeName']
          @ChannelId = params['ChannelId']
          @Product = params['Product']
          @InstanceId = params['InstanceId']
          @InstanceStatus = params['InstanceStatus']
          @SubsStatus = params['SubsStatus']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @IsolateTime = params['IsolateTime']
          @ExpireTime = params['ExpireTime']
          @OfflineTime = params['OfflineTime']
          @ConsumeStartTime = params['ConsumeStartTime']
          @PayType = params['PayType']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @SdkConsumedTime = params['SdkConsumedTime']
          @SdkHost = params['SdkHost']
          @SubscribeObjectType = params['SubscribeObjectType']
          unless params['SubscribeObjects'].nil?
            @SubscribeObjects = []
            params['SubscribeObjects'].each do |i|
              @SubscribeObjects << SubscribeObject.new.deserialize(i)
            end
          end
          @ModifyTime = params['ModifyTime']
          @Region = params['Region']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << TagItem.new.deserialize(i)
            end
          end
          @AutoRenewFlag = params['AutoRenewFlag']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubscribes请求参数结构体
      class DescribeSubscribesRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅的实例ID
        # @type SubscribeId: String
        # @param SubscribeName: 数据订阅的实例名称
        # @type SubscribeName: String
        # @param InstanceId: 绑定数据库实例的ID
        # @type InstanceId: String
        # @param ChannelId: 数据订阅实例的通道ID
        # @type ChannelId: String
        # @param PayType: 计费模式筛选，可能的值：0-包年包月，1-按量计费
        # @type PayType: String
        # @param Product: 订阅的数据库产品，如mysql
        # @type Product: String
        # @param Status: 数据订阅实例的状态，creating - 创建中，normal - 正常运行，isolating - 隔离中，isolated - 已隔离，offlining - 下线中
        # @type Status: Array
        # @param SubsStatus: 数据订阅实例的配置状态，unconfigure - 未配置， configuring - 配置中，configured - 已配置
        # @type SubsStatus: Array
        # @param Offset: 返回记录的起始偏移量
        # @type Offset: Integer
        # @param Limit: 单次返回的记录数量
        # @type Limit: Integer
        # @param OrderDirection: 排序方向，可选的值为"DESC"和"ASC"，默认为"DESC"，按创建时间逆序排序
        # @type OrderDirection: String
        # @param TagFilters: 标签过滤条件
        # @type TagFilters: Array
        # @param SubscribeVersion: 订阅实例版本;txdts-旧版数据订阅，kafka-kafka版本数据订阅
        # @type SubscribeVersion: String

        attr_accessor :SubscribeId, :SubscribeName, :InstanceId, :ChannelId, :PayType, :Product, :Status, :SubsStatus, :Offset, :Limit, :OrderDirection, :TagFilters, :SubscribeVersion
        
        def initialize(subscribeid=nil, subscribename=nil, instanceid=nil, channelid=nil, paytype=nil, product=nil, status=nil, subsstatus=nil, offset=nil, limit=nil, orderdirection=nil, tagfilters=nil, subscribeversion=nil)
          @SubscribeId = subscribeid
          @SubscribeName = subscribename
          @InstanceId = instanceid
          @ChannelId = channelid
          @PayType = paytype
          @Product = product
          @Status = status
          @SubsStatus = subsstatus
          @Offset = offset
          @Limit = limit
          @OrderDirection = orderdirection
          @TagFilters = tagfilters
          @SubscribeVersion = subscribeversion
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @SubscribeName = params['SubscribeName']
          @InstanceId = params['InstanceId']
          @ChannelId = params['ChannelId']
          @PayType = params['PayType']
          @Product = params['Product']
          @Status = params['Status']
          @SubsStatus = params['SubsStatus']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderDirection = params['OrderDirection']
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              @TagFilters << TagFilter.new.deserialize(i)
            end
          end
          @SubscribeVersion = params['SubscribeVersion']
        end
      end

      # DescribeSubscribes返回参数结构体
      class DescribeSubscribesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的实例总数
        # @type TotalCount: Integer
        # @param Items: 数据订阅实例的信息列表
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId
        
        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              @Items << SubscribeInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSyncCheckJob请求参数结构体
      class DescribeSyncCheckJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 要查询的灾备同步任务ID
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DescribeSyncCheckJob返回参数结构体
      class DescribeSyncCheckJobResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务校验状态： starting(开始中)，running(校验中)，finished(校验完成)
        # @type Status: String
        # @param ErrorCode: 任务校验结果代码
        # @type ErrorCode: Integer
        # @param ErrorMessage: 提示信息
        # @type ErrorMessage: String
        # @param StepInfo: 任务执行步骤描述
        # @type StepInfo: Array
        # @param CheckFlag: 校验标志：0（尚未校验成功） ， 1（校验成功）
        # @type CheckFlag: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ErrorCode, :ErrorMessage, :StepInfo, :CheckFlag, :RequestId
        
        def initialize(status=nil, errorcode=nil, errormessage=nil, stepinfo=nil, checkflag=nil, requestid=nil)
          @Status = status
          @ErrorCode = errorcode
          @ErrorMessage = errormessage
          @StepInfo = stepinfo
          @CheckFlag = checkflag
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrorCode = params['ErrorCode']
          @ErrorMessage = params['ErrorMessage']
          unless params['StepInfo'].nil?
            @StepInfo = []
            params['StepInfo'].each do |i|
              @StepInfo << SyncCheckStepInfo.new.deserialize(i)
            end
          end
          @CheckFlag = params['CheckFlag']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSyncJobs请求参数结构体
      class DescribeSyncJobsRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 灾备同步任务ID
        # @type JobId: String
        # @param JobName: 灾备同步任务名
        # @type JobName: String
        # @param Order: 排序字段，可以取值为JobId、Status、JobName、CreateTime
        # @type Order: String
        # @param OrderSeq: 排序方式，升序为ASC，降序为DESC
        # @type OrderSeq: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回实例数量，默认20，有效区间[1,100]
        # @type Limit: Integer

        attr_accessor :JobId, :JobName, :Order, :OrderSeq, :Offset, :Limit
        
        def initialize(jobid=nil, jobname=nil, order=nil, orderseq=nil, offset=nil, limit=nil)
          @JobId = jobid
          @JobName = jobname
          @Order = order
          @OrderSeq = orderseq
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          @Order = params['Order']
          @OrderSeq = params['OrderSeq']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeSyncJobs返回参数结构体
      class DescribeSyncJobsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 任务数目
        # @type TotalCount: Integer
        # @param JobList: 任务详情数组
        # @type JobList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :JobList, :RequestId
        
        def initialize(totalcount=nil, joblist=nil, requestid=nil)
          @TotalCount = totalcount
          @JobList = joblist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['JobList'].nil?
            @JobList = []
            params['JobList'].each do |i|
              @JobList << SyncJobInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 目的实例信息，具体内容跟迁移任务类型相关
      class DstInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 目标实例ID，如cdb-jd92ijd8
        # @type InstanceId: String
        # @param Region: 目标实例地域，如ap-guangzhou
        # @type Region: String
        # @param Ip: 目标实例vip。已废弃，无需填写
        # @type Ip: String
        # @param Port: 目标实例vport。已废弃，无需填写
        # @type Port: Integer
        # @param ReadOnly: 目前只对MySQL有效。当为整实例迁移时，1-只读，0-可读写。
        # @type ReadOnly: Integer
        # @param User: 目标数据库账号
        # @type User: String
        # @param Password: 目标数据库密码
        # @type Password: String

        attr_accessor :InstanceId, :Region, :Ip, :Port, :ReadOnly, :User, :Password
        
        def initialize(instanceid=nil, region=nil, ip=nil, port=nil, readonly=nil, user=nil, password=nil)
          @InstanceId = instanceid
          @Region = region
          @Ip = ip
          @Port = port
          @ReadOnly = readonly
          @User = user
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Region = params['Region']
          @Ip = params['Ip']
          @Port = params['Port']
          @ReadOnly = params['ReadOnly']
          @User = params['User']
          @Password = params['Password']
        end
      end

      # 迁移任务错误信息及提示
      class ErrorInfo < TencentCloud::Common::AbstractModel
        # @param ErrorLog: 具体的报错日志, 包含错误码和错误信息
        # @type ErrorLog: String
        # @param HelpDoc: 报错对应的帮助文档Ur
        # @type HelpDoc: String

        attr_accessor :ErrorLog, :HelpDoc
        
        def initialize(errorlog=nil, helpdoc=nil)
          @ErrorLog = errorlog
          @HelpDoc = helpdoc
        end

        def deserialize(params)
          @ErrorLog = params['ErrorLog']
          @HelpDoc = params['HelpDoc']
        end
      end

      # IsolateSubscribe请求参数结构体
      class IsolateSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 订阅实例ID
        # @type SubscribeId: String

        attr_accessor :SubscribeId
        
        def initialize(subscribeid=nil)
          @SubscribeId = subscribeid
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
        end
      end

      # IsolateSubscribe返回参数结构体
      class IsolateSubscribeResponse < TencentCloud::Common::AbstractModel
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

      # 描述详细迁移过程
      class MigrateDetailInfo < TencentCloud::Common::AbstractModel
        # @param StepAll: 总步骤数
        # @type StepAll: Integer
        # @param StepNow: 当前步骤
        # @type StepNow: Integer
        # @param Progress: 总进度,如："10"
        # @type Progress: String
        # @param CurrentStepProgress: 当前步骤进度,如:"1"
        # @type CurrentStepProgress: String
        # @param MasterSlaveDistance: 主从差距，MB；在增量同步阶段有效，目前支持产品为：redis和mysql
        # @type MasterSlaveDistance: Integer
        # @param SecondsBehindMaster: 主从差距，秒；在增量同步阶段有效，目前支持产品为：mysql
        # @type SecondsBehindMaster: Integer
        # @param StepInfo: 步骤信息
        # @type StepInfo: Array

        attr_accessor :StepAll, :StepNow, :Progress, :CurrentStepProgress, :MasterSlaveDistance, :SecondsBehindMaster, :StepInfo
        
        def initialize(stepall=nil, stepnow=nil, progress=nil, currentstepprogress=nil, masterslavedistance=nil, secondsbehindmaster=nil, stepinfo=nil)
          @StepAll = stepall
          @StepNow = stepnow
          @Progress = progress
          @CurrentStepProgress = currentstepprogress
          @MasterSlaveDistance = masterslavedistance
          @SecondsBehindMaster = secondsbehindmaster
          @StepInfo = stepinfo
        end

        def deserialize(params)
          @StepAll = params['StepAll']
          @StepNow = params['StepNow']
          @Progress = params['Progress']
          @CurrentStepProgress = params['CurrentStepProgress']
          @MasterSlaveDistance = params['MasterSlaveDistance']
          @SecondsBehindMaster = params['SecondsBehindMaster']
          unless params['StepInfo'].nil?
            @StepInfo = []
            params['StepInfo'].each do |i|
              @StepInfo << MigrateStepDetailInfo.new.deserialize(i)
            end
          end
        end
      end

      # 迁移任务详情
      class MigrateJobInfo < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID
        # @type JobId: String
        # @param JobName: 数据迁移任务名称
        # @type JobName: String
        # @param MigrateOption: 迁移任务配置选项
        # @type MigrateOption: :class:`Tencentcloud::Dts.v20180330.models.MigrateOption`
        # @param SrcDatabaseType: 源实例数据库类型:mysql，redis，mongodb，postgresql，mariadb，percona
        # @type SrcDatabaseType: String
        # @param SrcAccessType: 源实例接入类型，值包括：extranet(外网),cvm(cvm自建实例),dcg(专线接入的实例),vpncloud(云vpn接入的实例),cdb(腾讯云数据库实例),ccn(云联网实例)
        # @type SrcAccessType: String
        # @param SrcInfo: 源实例信息，具体内容跟迁移任务类型相关
        # @type SrcInfo: :class:`Tencentcloud::Dts.v20180330.models.SrcInfo`
        # @param DstDatabaseType: 目标实例数据库类型:mysql，redis，mongodb，postgresql，mariadb，percona
        # @type DstDatabaseType: String
        # @param DstAccessType: 目标实例接入类型，目前支持：cdb(腾讯云数据库实例)
        # @type DstAccessType: String
        # @param DstInfo: 目标实例信息
        # @type DstInfo: :class:`Tencentcloud::Dts.v20180330.models.DstInfo`
        # @param DatabaseInfo: 需要迁移的源数据库表信息，如果需要迁移的是整个实例，该字段为[]
        # @type DatabaseInfo: String
        # @param CreateTime: 任务创建(提交)时间
        # @type CreateTime: String
        # @param StartTime: 任务开始执行时间
        # @type StartTime: String
        # @param EndTime: 任务执行结束时间
        # @type EndTime: String
        # @param Status: 任务状态,取值为：1-创建中(Creating),3-校验中(Checking)4-校验通过(CheckPass),5-校验不通过（CheckNotPass）,7-任务运行(Running),8-准备完成（ReadyComplete）,9-任务成功（Success）,10-任务失败（Failed）,11-撤销中（Stopping）,12-完成中（Completing）
        # @type Status: Integer
        # @param Detail: 任务详情
        # @type Detail: :class:`Tencentcloud::Dts.v20180330.models.MigrateDetailInfo`
        # @param ErrorInfo: 任务错误信息提示，当任务发生错误时，不为null或者空值
        # @type ErrorInfo: Array

        attr_accessor :JobId, :JobName, :MigrateOption, :SrcDatabaseType, :SrcAccessType, :SrcInfo, :DstDatabaseType, :DstAccessType, :DstInfo, :DatabaseInfo, :CreateTime, :StartTime, :EndTime, :Status, :Detail, :ErrorInfo
        
        def initialize(jobid=nil, jobname=nil, migrateoption=nil, srcdatabasetype=nil, srcaccesstype=nil, srcinfo=nil, dstdatabasetype=nil, dstaccesstype=nil, dstinfo=nil, databaseinfo=nil, createtime=nil, starttime=nil, endtime=nil, status=nil, detail=nil, errorinfo=nil)
          @JobId = jobid
          @JobName = jobname
          @MigrateOption = migrateoption
          @SrcDatabaseType = srcdatabasetype
          @SrcAccessType = srcaccesstype
          @SrcInfo = srcinfo
          @DstDatabaseType = dstdatabasetype
          @DstAccessType = dstaccesstype
          @DstInfo = dstinfo
          @DatabaseInfo = databaseinfo
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @Detail = detail
          @ErrorInfo = errorinfo
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          unless params['MigrateOption'].nil?
            @MigrateOption = MigrateOption.new.deserialize(params['MigrateOption'])
          end
          @SrcDatabaseType = params['SrcDatabaseType']
          @SrcAccessType = params['SrcAccessType']
          unless params['SrcInfo'].nil?
            @SrcInfo = SrcInfo.new.deserialize(params['SrcInfo'])
          end
          @DstDatabaseType = params['DstDatabaseType']
          @DstAccessType = params['DstAccessType']
          unless params['DstInfo'].nil?
            @DstInfo = DstInfo.new.deserialize(params['DstInfo'])
          end
          @DatabaseInfo = params['DatabaseInfo']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          unless params['Detail'].nil?
            @Detail = MigrateDetailInfo.new.deserialize(params['Detail'])
          end
          unless params['ErrorInfo'].nil?
            @ErrorInfo = []
            params['ErrorInfo'].each do |i|
              @ErrorInfo << ErrorInfo.new.deserialize(i)
            end
          end
        end
      end

      # 迁移任务配置选项
      class MigrateOption < TencentCloud::Common::AbstractModel
        # @param RunMode: 任务运行模式，值包括：1-立即执行，2-定时执行
        # @type RunMode: Integer
        # @param ExpectTime: 期望执行时间，当runMode=2时，该字段必填，时间格式：yyyy-mm-dd hh:mm:ss
        # @type ExpectTime: String
        # @param MigrateType: 数据迁移类型，值包括：1-结构迁移,2-全量迁移,3-全量+增量迁移
        # @type MigrateType: Integer
        # @param MigrateObject: 迁移对象，1-整个实例，2-指定库表
        # @type MigrateObject: Integer
        # @param ConsistencyType: 抽样数据一致性检测参数，1-未配置,2-全量检测,3-抽样检测, 4-仅校验不一致表,5-不检测
        # @type ConsistencyType: Integer
        # @param IsOverrideRoot: 是否用源库Root账户覆盖目标库，值包括：0-不覆盖，1-覆盖，选择库表或者结构迁移时应该为0
        # @type IsOverrideRoot: Integer
        # @param ExternParams: 不同数据库用到的额外参数.以JSON格式描述.
        # Redis可定义如下的参数:
        # {
        # 	"ClientOutputBufferHardLimit":512, 	从机缓冲区的硬性容量限制(MB)
        # 	"ClientOutputBufferSoftLimit":512, 	从机缓冲区的软性容量限制(MB)
        # 	"ClientOutputBufferPersistTime":60, 从机缓冲区的软性限制持续时间(秒)
        # 	"ReplBacklogSize":512, 	环形缓冲区容量限制(MB)
        # 	"ReplTimeout":120，		复制超时时间(秒)
        # }
        # MongoDB可定义如下的参数:
        # {
        # 	'SrcAuthDatabase':'admin',
        # 	'SrcAuthFlag': "1",
        # 	'SrcAuthMechanism':"SCRAM-SHA-1"
        # }
        # MySQL暂不支持额外参数设置。
        # @type ExternParams: String
        # @param ConsistencyParams: 仅用于“抽样数据一致性检测”，ConsistencyType配置为抽样检测时，必选
        # @type ConsistencyParams: :class:`Tencentcloud::Dts.v20180330.models.ConsistencyParams`

        attr_accessor :RunMode, :ExpectTime, :MigrateType, :MigrateObject, :ConsistencyType, :IsOverrideRoot, :ExternParams, :ConsistencyParams
        
        def initialize(runmode=nil, expecttime=nil, migratetype=nil, migrateobject=nil, consistencytype=nil, isoverrideroot=nil, externparams=nil, consistencyparams=nil)
          @RunMode = runmode
          @ExpectTime = expecttime
          @MigrateType = migratetype
          @MigrateObject = migrateobject
          @ConsistencyType = consistencytype
          @IsOverrideRoot = isoverrideroot
          @ExternParams = externparams
          @ConsistencyParams = consistencyparams
        end

        def deserialize(params)
          @RunMode = params['RunMode']
          @ExpectTime = params['ExpectTime']
          @MigrateType = params['MigrateType']
          @MigrateObject = params['MigrateObject']
          @ConsistencyType = params['ConsistencyType']
          @IsOverrideRoot = params['IsOverrideRoot']
          @ExternParams = params['ExternParams']
          unless params['ConsistencyParams'].nil?
            @ConsistencyParams = ConsistencyParams.new.deserialize(params['ConsistencyParams'])
          end
        end
      end

      # 迁移中的步骤信息
      class MigrateStepDetailInfo < TencentCloud::Common::AbstractModel
        # @param StepNo: 步骤序列
        # @type StepNo: Integer
        # @param StepName: 步骤展现名称
        # @type StepName: String
        # @param StepId: 步骤英文标识
        # @type StepId: String
        # @param Status: 步骤状态:0-默认值,1-成功,2-失败,3-执行中,4-未执行
        # @type Status: Integer
        # @param StartTime: 当前步骤开始的时间，格式为"yyyy-mm-dd hh:mm:ss"，该字段不存在或者为空是无意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String

        attr_accessor :StepNo, :StepName, :StepId, :Status, :StartTime
        
        def initialize(stepno=nil, stepname=nil, stepid=nil, status=nil, starttime=nil)
          @StepNo = stepno
          @StepName = stepname
          @StepId = stepid
          @Status = status
          @StartTime = starttime
        end

        def deserialize(params)
          @StepNo = params['StepNo']
          @StepName = params['StepName']
          @StepId = params['StepId']
          @Status = params['Status']
          @StartTime = params['StartTime']
        end
      end

      # ModifyMigrateJob请求参数结构体
      class ModifyMigrateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 待修改的数据迁移任务ID
        # @type JobId: String
        # @param JobName: 数据迁移任务名称
        # @type JobName: String
        # @param MigrateOption: 迁移任务配置选项
        # @type MigrateOption: :class:`Tencentcloud::Dts.v20180330.models.MigrateOption`
        # @param SrcAccessType: 源实例接入类型，值包括：extranet(外网),cvm(CVM自建实例),dcg(专线接入的实例),vpncloud(云VPN接入的实例),cdb(云上CDB实例)
        # @type SrcAccessType: String
        # @param SrcInfo: 源实例信息，具体内容跟迁移任务类型相关
        # @type SrcInfo: :class:`Tencentcloud::Dts.v20180330.models.SrcInfo`
        # @param DstAccessType: 目标实例接入类型，值包括：extranet(外网),cvm(CVM自建实例),dcg(专线接入的实例),vpncloud(云VPN接入的实例)，cdb(云上CDB实例). 目前只支持cdb.
        # @type DstAccessType: String
        # @param DstInfo: 目标实例信息, 其中目标实例地域不允许修改.
        # @type DstInfo: :class:`Tencentcloud::Dts.v20180330.models.DstInfo`
        # @param DatabaseInfo: 当选择'指定库表'迁移的时候, 需要设置待迁移的源数据库表信息,用符合json数组格式的字符串描述, 如下所例。

        # 对于database-table两级结构的数据库：
        # [{"Database":"db1","Table":["table1","table2"]},{"Database":"db2"}]
        # 对于database-schema-table三级结构：
        # [{"Database":"db1","Schema":"s1","Table":["table1","table2"]},{"Database":"db1","Schema":"s2","Table":["table1","table2"]},{"Database":"db2","Schema":"s1","Table":["table1","table2"]},{"Database":"db3"},{"Database":"db4","Schema":"s1"}]

        # 如果是'整个实例'的迁移模式,不需设置该字段
        # @type DatabaseInfo: String

        attr_accessor :JobId, :JobName, :MigrateOption, :SrcAccessType, :SrcInfo, :DstAccessType, :DstInfo, :DatabaseInfo
        
        def initialize(jobid=nil, jobname=nil, migrateoption=nil, srcaccesstype=nil, srcinfo=nil, dstaccesstype=nil, dstinfo=nil, databaseinfo=nil)
          @JobId = jobid
          @JobName = jobname
          @MigrateOption = migrateoption
          @SrcAccessType = srcaccesstype
          @SrcInfo = srcinfo
          @DstAccessType = dstaccesstype
          @DstInfo = dstinfo
          @DatabaseInfo = databaseinfo
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          unless params['MigrateOption'].nil?
            @MigrateOption = MigrateOption.new.deserialize(params['MigrateOption'])
          end
          @SrcAccessType = params['SrcAccessType']
          unless params['SrcInfo'].nil?
            @SrcInfo = SrcInfo.new.deserialize(params['SrcInfo'])
          end
          @DstAccessType = params['DstAccessType']
          unless params['DstInfo'].nil?
            @DstInfo = DstInfo.new.deserialize(params['DstInfo'])
          end
          @DatabaseInfo = params['DatabaseInfo']
        end
      end

      # ModifyMigrateJob返回参数结构体
      class ModifyMigrateJobResponse < TencentCloud::Common::AbstractModel
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

      # ModifySubscribeAutoRenewFlag请求参数结构体
      class ModifySubscribeAutoRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 订阅实例ID，例如：subs-8uey736k
        # @type SubscribeId: String
        # @param AutoRenewFlag: 自动续费标识。1-自动续费，0-不自动续费
        # @type AutoRenewFlag: Integer

        attr_accessor :SubscribeId, :AutoRenewFlag
        
        def initialize(subscribeid=nil, autorenewflag=nil)
          @SubscribeId = subscribeid
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # ModifySubscribeAutoRenewFlag返回参数结构体
      class ModifySubscribeAutoRenewFlagResponse < TencentCloud::Common::AbstractModel
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

      # ModifySubscribeConsumeTime请求参数结构体
      class ModifySubscribeConsumeTimeRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的ID
        # @type SubscribeId: String
        # @param ConsumeStartTime: 消费时间起点，也即是指定订阅数据的时间起点，时间格式如：Y-m-d h:m:s，取值范围为过去24小时之内
        # @type ConsumeStartTime: String

        attr_accessor :SubscribeId, :ConsumeStartTime
        
        def initialize(subscribeid=nil, consumestarttime=nil)
          @SubscribeId = subscribeid
          @ConsumeStartTime = consumestarttime
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @ConsumeStartTime = params['ConsumeStartTime']
        end
      end

      # ModifySubscribeConsumeTime返回参数结构体
      class ModifySubscribeConsumeTimeResponse < TencentCloud::Common::AbstractModel
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

      # ModifySubscribeName请求参数结构体
      class ModifySubscribeNameRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的ID
        # @type SubscribeId: String
        # @param SubscribeName: 数据订阅实例的名称，长度限制为[1,60]
        # @type SubscribeName: String

        attr_accessor :SubscribeId, :SubscribeName
        
        def initialize(subscribeid=nil, subscribename=nil)
          @SubscribeId = subscribeid
          @SubscribeName = subscribename
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @SubscribeName = params['SubscribeName']
        end
      end

      # ModifySubscribeName返回参数结构体
      class ModifySubscribeNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifySubscribeObjects请求参数结构体
      class ModifySubscribeObjectsRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的ID
        # @type SubscribeId: String
        # @param SubscribeObjectType: 数据订阅的类型，可选的值有：0 - 全实例订阅；1 - 数据订阅；2 - 结构订阅；3 - 数据订阅+结构订阅
        # @type SubscribeObjectType: Integer
        # @param Objects: 订阅的数据库表信息
        # @type Objects: Array

        attr_accessor :SubscribeId, :SubscribeObjectType, :Objects
        
        def initialize(subscribeid=nil, subscribeobjecttype=nil, objects=nil)
          @SubscribeId = subscribeid
          @SubscribeObjectType = subscribeobjecttype
          @Objects = objects
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @SubscribeObjectType = params['SubscribeObjectType']
          unless params['Objects'].nil?
            @Objects = []
            params['Objects'].each do |i|
              @Objects << SubscribeObject.new.deserialize(i)
            end
          end
        end
      end

      # ModifySubscribeObjects返回参数结构体
      class ModifySubscribeObjectsResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的ID
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId
        
        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # ModifySubscribeVipVport请求参数结构体
      class ModifySubscribeVipVportRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的ID
        # @type SubscribeId: String
        # @param DstUniqSubnetId: 指定目的子网，如果传此参数，DstIp必须在目的子网内
        # @type DstUniqSubnetId: String
        # @param DstIp: 目标IP，与DstPort至少传一个
        # @type DstIp: String
        # @param DstPort: 目标PORT，支持范围为：[1025-65535]
        # @type DstPort: Integer

        attr_accessor :SubscribeId, :DstUniqSubnetId, :DstIp, :DstPort
        
        def initialize(subscribeid=nil, dstuniqsubnetid=nil, dstip=nil, dstport=nil)
          @SubscribeId = subscribeid
          @DstUniqSubnetId = dstuniqsubnetid
          @DstIp = dstip
          @DstPort = dstport
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @DstUniqSubnetId = params['DstUniqSubnetId']
          @DstIp = params['DstIp']
          @DstPort = params['DstPort']
        end
      end

      # ModifySubscribeVipVport返回参数结构体
      class ModifySubscribeVipVportResponse < TencentCloud::Common::AbstractModel
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

      # ModifySyncJob请求参数结构体
      class ModifySyncJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 待修改的灾备同步任务ID
        # @type JobId: String
        # @param JobName: 灾备同步任务名称
        # @type JobName: String
        # @param SyncOption: 灾备同步任务配置选项
        # @type SyncOption: :class:`Tencentcloud::Dts.v20180330.models.SyncOption`
        # @param DatabaseInfo: 当选择'指定库表'灾备同步的时候, 需要设置待同步的源数据库表信息,用符合json数组格式的字符串描述, 如下所例。
        # 对于database-table两级结构的数据库：
        # [{"Database":"db1","Table":["table1","table2"]},{"Database":"db2"}]
        # @type DatabaseInfo: String

        attr_accessor :JobId, :JobName, :SyncOption, :DatabaseInfo
        
        def initialize(jobid=nil, jobname=nil, syncoption=nil, databaseinfo=nil)
          @JobId = jobid
          @JobName = jobname
          @SyncOption = syncoption
          @DatabaseInfo = databaseinfo
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          unless params['SyncOption'].nil?
            @SyncOption = SyncOption.new.deserialize(params['SyncOption'])
          end
          @DatabaseInfo = params['DatabaseInfo']
        end
      end

      # ModifySyncJob返回参数结构体
      class ModifySyncJobResponse < TencentCloud::Common::AbstractModel
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

      # OfflineIsolatedSubscribe请求参数结构体
      class OfflineIsolatedSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的ID
        # @type SubscribeId: String

        attr_accessor :SubscribeId
        
        def initialize(subscribeid=nil)
          @SubscribeId = subscribeid
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
        end
      end

      # OfflineIsolatedSubscribe返回参数结构体
      class OfflineIsolatedSubscribeResponse < TencentCloud::Common::AbstractModel
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

      # ResetSubscribe请求参数结构体
      class ResetSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅实例的ID
        # @type SubscribeId: String

        attr_accessor :SubscribeId
        
        def initialize(subscribeid=nil)
          @SubscribeId = subscribeid
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
        end
      end

      # ResetSubscribe返回参数结构体
      class ResetSubscribeResponse < TencentCloud::Common::AbstractModel
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

      # 源实例信息
      class SrcInfo < TencentCloud::Common::AbstractModel
        # @param AccessKey: 阿里云AccessKey。源库是阿里云RDS5.6适用
        # @type AccessKey: String
        # @param Ip: 实例的IP地址
        # @type Ip: String
        # @param Port: 实例的端口
        # @type Port: Integer
        # @param User: 实例的用户名
        # @type User: String
        # @param Password: 实例的密码
        # @type Password: String
        # @param RdsInstanceId: 阿里云RDS实例ID。源库是阿里云RDS5.6/5.6适用
        # @type RdsInstanceId: String
        # @param CvmInstanceId: CVM实例短ID，格式如：ins-olgl39y8，与云服务器控制台页面显示的实例ID相同。如果是CVM自建实例，需要传递此字段
        # @type CvmInstanceId: String
        # @param UniqDcgId: 专线网关ID，格式如：dcg-0rxtqqxb
        # @type UniqDcgId: String
        # @param VpcId: 私有网络ID，格式如：vpc-92jblxto
        # @type VpcId: String
        # @param SubnetId: 私有网络下的子网ID，格式如：subnet-3paxmkdz
        # @type SubnetId: String
        # @param UniqVpnGwId: VPN网关ID，格式如：vpngw-9ghexg7q
        # @type UniqVpnGwId: String
        # @param InstanceId: 数据库实例ID，格式如：cdb-powiqx8q
        # @type InstanceId: String
        # @param Region: 地域英文名，如：ap-guangzhou
        # @type Region: String
        # @param Supplier: 当实例为RDS实例时，填写为aliyun, 其他情况均填写others
        # @type Supplier: String
        # @param CcnId: 云联网ID，如：ccn-afp6kltc
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CcnId: String
        # @param EngineVersion: 数据库版本，当实例为RDS实例时才有效，格式如：5.6或者5.7，默认为5.6
        # @type EngineVersion: String

        attr_accessor :AccessKey, :Ip, :Port, :User, :Password, :RdsInstanceId, :CvmInstanceId, :UniqDcgId, :VpcId, :SubnetId, :UniqVpnGwId, :InstanceId, :Region, :Supplier, :CcnId, :EngineVersion
        
        def initialize(accesskey=nil, ip=nil, port=nil, user=nil, password=nil, rdsinstanceid=nil, cvminstanceid=nil, uniqdcgid=nil, vpcid=nil, subnetid=nil, uniqvpngwid=nil, instanceid=nil, region=nil, supplier=nil, ccnid=nil, engineversion=nil)
          @AccessKey = accesskey
          @Ip = ip
          @Port = port
          @User = user
          @Password = password
          @RdsInstanceId = rdsinstanceid
          @CvmInstanceId = cvminstanceid
          @UniqDcgId = uniqdcgid
          @VpcId = vpcid
          @SubnetId = subnetid
          @UniqVpnGwId = uniqvpngwid
          @InstanceId = instanceid
          @Region = region
          @Supplier = supplier
          @CcnId = ccnid
          @EngineVersion = engineversion
        end

        def deserialize(params)
          @AccessKey = params['AccessKey']
          @Ip = params['Ip']
          @Port = params['Port']
          @User = params['User']
          @Password = params['Password']
          @RdsInstanceId = params['RdsInstanceId']
          @CvmInstanceId = params['CvmInstanceId']
          @UniqDcgId = params['UniqDcgId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @UniqVpnGwId = params['UniqVpnGwId']
          @InstanceId = params['InstanceId']
          @Region = params['Region']
          @Supplier = params['Supplier']
          @CcnId = params['CcnId']
          @EngineVersion = params['EngineVersion']
        end
      end

      # StartMigrateJob请求参数结构体
      class StartMigrateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # StartMigrateJob返回参数结构体
      class StartMigrateJobResponse < TencentCloud::Common::AbstractModel
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

      # StartSyncJob请求参数结构体
      class StartSyncJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 灾备同步任务ID
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # StartSyncJob返回参数结构体
      class StartSyncJobResponse < TencentCloud::Common::AbstractModel
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

      # StopMigrateJob请求参数结构体
      class StopMigrateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 数据迁移任务ID
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # StopMigrateJob返回参数结构体
      class StopMigrateJobResponse < TencentCloud::Common::AbstractModel
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

      # 订阅实例信息
      class SubscribeInfo < TencentCloud::Common::AbstractModel
        # @param SubscribeId: 数据订阅的实例ID
        # @type SubscribeId: String
        # @param SubscribeName: 数据订阅实例的名称
        # @type SubscribeName: String
        # @param ChannelId: 数据订阅实例绑定的通道ID
        # @type ChannelId: String
        # @param Product: 数据订阅绑定实例对应的产品名称
        # @type Product: String
        # @param InstanceId: 数据订阅实例绑定的数据库实例ID
        # @type InstanceId: String
        # @param InstanceStatus: 数据订阅实例绑定的数据库实例状态
        # @type InstanceStatus: String
        # @param SubsStatus: 数据订阅实例的配置状态，unconfigure - 未配置， configuring - 配置中，configured - 已配置
        # @type SubsStatus: String
        # @param ModifyTime: 上次修改时间
        # @type ModifyTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param IsolateTime: 隔离时间
        # @type IsolateTime: String
        # @param ExpireTime: 到期时间
        # @type ExpireTime: String
        # @param OfflineTime: 下线时间
        # @type OfflineTime: String
        # @param ConsumeStartTime: 最近一次修改的消费时间起点，如果从未修改则为零值
        # @type ConsumeStartTime: String
        # @param Region: 数据订阅实例所属地域
        # @type Region: String
        # @param PayType: 计费方式，0 - 包年包月，1 - 按量计费
        # @type PayType: Integer
        # @param Vip: 数据订阅实例的Vip
        # @type Vip: String
        # @param Vport: 数据订阅实例的Vport
        # @type Vport: Integer
        # @param UniqVpcId: 数据订阅实例Vip所在VPC的唯一ID
        # @type UniqVpcId: String
        # @param UniqSubnetId: 数据订阅实例Vip所在子网的唯一ID
        # @type UniqSubnetId: String
        # @param Status: 数据订阅实例的状态，creating - 创建中，normal - 正常运行，isolating - 隔离中，isolated - 已隔离，offlining - 下线中，offline - 已下线
        # @type Status: String
        # @param SdkConsumedTime: SDK最后一条确认消息的时间戳，如果SDK一直消费，也可以作为SDK当前消费时间点
        # @type SdkConsumedTime: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param AutoRenewFlag: 自动续费标识。0-不自动续费，1-自动续费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewFlag: Integer
        # @param SubscribeVersion: 订阅实例版本；txdts-旧版数据订阅,kafka-kafka版本数据订阅
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscribeVersion: String

        attr_accessor :SubscribeId, :SubscribeName, :ChannelId, :Product, :InstanceId, :InstanceStatus, :SubsStatus, :ModifyTime, :CreateTime, :IsolateTime, :ExpireTime, :OfflineTime, :ConsumeStartTime, :Region, :PayType, :Vip, :Vport, :UniqVpcId, :UniqSubnetId, :Status, :SdkConsumedTime, :Tags, :AutoRenewFlag, :SubscribeVersion
        
        def initialize(subscribeid=nil, subscribename=nil, channelid=nil, product=nil, instanceid=nil, instancestatus=nil, subsstatus=nil, modifytime=nil, createtime=nil, isolatetime=nil, expiretime=nil, offlinetime=nil, consumestarttime=nil, region=nil, paytype=nil, vip=nil, vport=nil, uniqvpcid=nil, uniqsubnetid=nil, status=nil, sdkconsumedtime=nil, tags=nil, autorenewflag=nil, subscribeversion=nil)
          @SubscribeId = subscribeid
          @SubscribeName = subscribename
          @ChannelId = channelid
          @Product = product
          @InstanceId = instanceid
          @InstanceStatus = instancestatus
          @SubsStatus = subsstatus
          @ModifyTime = modifytime
          @CreateTime = createtime
          @IsolateTime = isolatetime
          @ExpireTime = expiretime
          @OfflineTime = offlinetime
          @ConsumeStartTime = consumestarttime
          @Region = region
          @PayType = paytype
          @Vip = vip
          @Vport = vport
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @Status = status
          @SdkConsumedTime = sdkconsumedtime
          @Tags = tags
          @AutoRenewFlag = autorenewflag
          @SubscribeVersion = subscribeversion
        end

        def deserialize(params)
          @SubscribeId = params['SubscribeId']
          @SubscribeName = params['SubscribeName']
          @ChannelId = params['ChannelId']
          @Product = params['Product']
          @InstanceId = params['InstanceId']
          @InstanceStatus = params['InstanceStatus']
          @SubsStatus = params['SubsStatus']
          @ModifyTime = params['ModifyTime']
          @CreateTime = params['CreateTime']
          @IsolateTime = params['IsolateTime']
          @ExpireTime = params['ExpireTime']
          @OfflineTime = params['OfflineTime']
          @ConsumeStartTime = params['ConsumeStartTime']
          @Region = params['Region']
          @PayType = params['PayType']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @Status = params['Status']
          @SdkConsumedTime = params['SdkConsumedTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << TagItem.new.deserialize(i)
            end
          end
          @AutoRenewFlag = params['AutoRenewFlag']
          @SubscribeVersion = params['SubscribeVersion']
        end
      end

      # 数据数据订阅的对象
      class SubscribeObject < TencentCloud::Common::AbstractModel
        # @param ObjectsType: 数据订阅对象的类型，0-数据库，1-数据库内的表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectsType: Integer
        # @param DatabaseName: 订阅数据库的名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param TableNames: 订阅数据库中表名称数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableNames: Array

        attr_accessor :ObjectsType, :DatabaseName, :TableNames
        
        def initialize(objectstype=nil, databasename=nil, tablenames=nil)
          @ObjectsType = objectstype
          @DatabaseName = databasename
          @TableNames = tablenames
        end

        def deserialize(params)
          @ObjectsType = params['ObjectsType']
          @DatabaseName = params['DatabaseName']
          @TableNames = params['TableNames']
        end
      end

      # 数据订阅地域售卖信息
      class SubscribeRegionConf < TencentCloud::Common::AbstractModel
        # @param RegionName: 地域名称，如广州
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionName: String
        # @param Region: 地区标识，如ap-guangzhou
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Area: 地域名称，如华南地区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Area: String
        # @param IsDefaultRegion: 是否为默认地域，0 - 不是，1 - 是的
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDefaultRegion: Integer
        # @param Status: 当前地域的售卖情况，1 - 正常， 2-灰度，3 - 停售
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :RegionName, :Region, :Area, :IsDefaultRegion, :Status
        
        def initialize(regionname=nil, region=nil, area=nil, isdefaultregion=nil, status=nil)
          @RegionName = regionname
          @Region = region
          @Area = area
          @IsDefaultRegion = isdefaultregion
          @Status = status
        end

        def deserialize(params)
          @RegionName = params['RegionName']
          @Region = params['Region']
          @Area = params['Area']
          @IsDefaultRegion = params['IsDefaultRegion']
          @Status = params['Status']
        end
      end

      # SwitchDrToMaster请求参数结构体
      class SwitchDrToMasterRequest < TencentCloud::Common::AbstractModel
        # @param DstInfo: 灾备实例的信息
        # @type DstInfo: :class:`Tencentcloud::Dts.v20180330.models.SyncInstanceInfo`
        # @param DatabaseType: 数据库的类型  （如 mysql）
        # @type DatabaseType: String

        attr_accessor :DstInfo, :DatabaseType
        
        def initialize(dstinfo=nil, databasetype=nil)
          @DstInfo = dstinfo
          @DatabaseType = databasetype
        end

        def deserialize(params)
          unless params['DstInfo'].nil?
            @DstInfo = SyncInstanceInfo.new.deserialize(params['DstInfo'])
          end
          @DatabaseType = params['DatabaseType']
        end
      end

      # SwitchDrToMaster返回参数结构体
      class SwitchDrToMasterResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 后台异步任务请求id
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId
        
        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # 灾备任务校验步骤
      class SyncCheckStepInfo < TencentCloud::Common::AbstractModel
        # @param StepNo: 步骤序列
        # @type StepNo: Integer
        # @param StepName: 步骤展现名称
        # @type StepName: String
        # @param StepCode: 步骤执行结果代码
        # @type StepCode: Integer
        # @param StepMessage: 步骤执行结果提示
        # @type StepMessage: String

        attr_accessor :StepNo, :StepName, :StepCode, :StepMessage
        
        def initialize(stepno=nil, stepname=nil, stepcode=nil, stepmessage=nil)
          @StepNo = stepno
          @StepName = stepname
          @StepCode = stepcode
          @StepMessage = stepmessage
        end

        def deserialize(params)
          @StepNo = params['StepNo']
          @StepName = params['StepName']
          @StepCode = params['StepCode']
          @StepMessage = params['StepMessage']
        end
      end

      # 描述详细同步任务过程
      class SyncDetailInfo < TencentCloud::Common::AbstractModel
        # @param StepAll: 总步骤数
        # @type StepAll: Integer
        # @param StepNow: 当前步骤
        # @type StepNow: Integer
        # @param Progress: 总进度
        # @type Progress: String
        # @param CurrentStepProgress: 当前步骤进度
        # @type CurrentStepProgress: String
        # @param MasterSlaveDistance: 主从差距，MB
        # @type MasterSlaveDistance: Integer
        # @param SecondsBehindMaster: 主从差距，秒
        # @type SecondsBehindMaster: Integer
        # @param StepInfo: 步骤信息
        # @type StepInfo: Array

        attr_accessor :StepAll, :StepNow, :Progress, :CurrentStepProgress, :MasterSlaveDistance, :SecondsBehindMaster, :StepInfo
        
        def initialize(stepall=nil, stepnow=nil, progress=nil, currentstepprogress=nil, masterslavedistance=nil, secondsbehindmaster=nil, stepinfo=nil)
          @StepAll = stepall
          @StepNow = stepnow
          @Progress = progress
          @CurrentStepProgress = currentstepprogress
          @MasterSlaveDistance = masterslavedistance
          @SecondsBehindMaster = secondsbehindmaster
          @StepInfo = stepinfo
        end

        def deserialize(params)
          @StepAll = params['StepAll']
          @StepNow = params['StepNow']
          @Progress = params['Progress']
          @CurrentStepProgress = params['CurrentStepProgress']
          @MasterSlaveDistance = params['MasterSlaveDistance']
          @SecondsBehindMaster = params['SecondsBehindMaster']
          unless params['StepInfo'].nil?
            @StepInfo = []
            params['StepInfo'].each do |i|
              @StepInfo << SyncStepDetailInfo.new.deserialize(i)
            end
          end
        end
      end

      # 灾备同步的实例信息，记录主实例或灾备实例的信息
      class SyncInstanceInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域英文名，如：ap-guangzhou
        # @type Region: String
        # @param InstanceId: 实例短ID
        # @type InstanceId: String

        attr_accessor :Region, :InstanceId
        
        def initialize(region=nil, instanceid=nil)
          @Region = region
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Region = params['Region']
          @InstanceId = params['InstanceId']
        end
      end

      # 灾备同步任务信息
      class SyncJobInfo < TencentCloud::Common::AbstractModel
        # @param JobId: 灾备任务id
        # @type JobId: String
        # @param JobName: 灾备任务名
        # @type JobName: String
        # @param SyncOption: 任务同步
        # @type SyncOption: :class:`Tencentcloud::Dts.v20180330.models.SyncOption`
        # @param SrcAccessType: 源接入类型
        # @type SrcAccessType: String
        # @param SrcDatabaseType: 源数据类型
        # @type SrcDatabaseType: String
        # @param SrcInfo: 源实例信息
        # @type SrcInfo: :class:`Tencentcloud::Dts.v20180330.models.SyncInstanceInfo`
        # @param DstAccessType: 灾备接入类型
        # @type DstAccessType: String
        # @param DstDatabaseType: 灾备数据类型
        # @type DstDatabaseType: String
        # @param DstInfo: 灾备实例信息
        # @type DstInfo: :class:`Tencentcloud::Dts.v20180330.models.SyncInstanceInfo`
        # @param Detail: 任务信息
        # @type Detail: :class:`Tencentcloud::Dts.v20180330.models.SyncDetailInfo`
        # @param Status: 任务状态
        # @type Status: Integer
        # @param DatabaseInfo: 迁移库表
        # @type DatabaseInfo: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :JobId, :JobName, :SyncOption, :SrcAccessType, :SrcDatabaseType, :SrcInfo, :DstAccessType, :DstDatabaseType, :DstInfo, :Detail, :Status, :DatabaseInfo, :CreateTime, :StartTime, :EndTime
        
        def initialize(jobid=nil, jobname=nil, syncoption=nil, srcaccesstype=nil, srcdatabasetype=nil, srcinfo=nil, dstaccesstype=nil, dstdatabasetype=nil, dstinfo=nil, detail=nil, status=nil, databaseinfo=nil, createtime=nil, starttime=nil, endtime=nil)
          @JobId = jobid
          @JobName = jobname
          @SyncOption = syncoption
          @SrcAccessType = srcaccesstype
          @SrcDatabaseType = srcdatabasetype
          @SrcInfo = srcinfo
          @DstAccessType = dstaccesstype
          @DstDatabaseType = dstdatabasetype
          @DstInfo = dstinfo
          @Detail = detail
          @Status = status
          @DatabaseInfo = databaseinfo
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          unless params['SyncOption'].nil?
            @SyncOption = SyncOption.new.deserialize(params['SyncOption'])
          end
          @SrcAccessType = params['SrcAccessType']
          @SrcDatabaseType = params['SrcDatabaseType']
          unless params['SrcInfo'].nil?
            @SrcInfo = SyncInstanceInfo.new.deserialize(params['SrcInfo'])
          end
          @DstAccessType = params['DstAccessType']
          @DstDatabaseType = params['DstDatabaseType']
          unless params['DstInfo'].nil?
            @DstInfo = SyncInstanceInfo.new.deserialize(params['DstInfo'])
          end
          unless params['Detail'].nil?
            @Detail = SyncDetailInfo.new.deserialize(params['Detail'])
          end
          @Status = params['Status']
          @DatabaseInfo = params['DatabaseInfo']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 灾备同步任务配置选项
      class SyncOption < TencentCloud::Common::AbstractModel
        # @param SyncObject: 同步对象，1-整个实例，2-指定库表
        # @type SyncObject: Integer
        # @param RunMode: 同步开始设置，1-立即开始
        # @type RunMode: Integer
        # @param SyncType: 同步模式， 3-全量且增量同步
        # @type SyncType: Integer
        # @param ConsistencyType: 数据一致性检测， 1-无需配置
        # @type ConsistencyType: Integer

        attr_accessor :SyncObject, :RunMode, :SyncType, :ConsistencyType
        
        def initialize(syncobject=nil, runmode=nil, synctype=nil, consistencytype=nil)
          @SyncObject = syncobject
          @RunMode = runmode
          @SyncType = synctype
          @ConsistencyType = consistencytype
        end

        def deserialize(params)
          @SyncObject = params['SyncObject']
          @RunMode = params['RunMode']
          @SyncType = params['SyncType']
          @ConsistencyType = params['ConsistencyType']
        end
      end

      # 同步任务进度
      class SyncStepDetailInfo < TencentCloud::Common::AbstractModel
        # @param StepNo: 步骤编号
        # @type StepNo: Integer
        # @param StepName: 步骤名
        # @type StepName: String
        # @param CanStop: 能否中止
        # @type CanStop: Integer
        # @param StepId: 步骤号
        # @type StepId: Integer

        attr_accessor :StepNo, :StepName, :CanStop, :StepId
        
        def initialize(stepno=nil, stepname=nil, canstop=nil, stepid=nil)
          @StepNo = stepno
          @StepName = stepname
          @CanStop = canstop
          @StepId = stepid
        end

        def deserialize(params)
          @StepNo = params['StepNo']
          @StepName = params['StepName']
          @CanStop = params['CanStop']
          @StepId = params['StepId']
        end
      end

      # 标签过滤
      class TagFilter < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键值
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: Array

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

      # 标签
      class TagItem < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键值
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

    end
  end
end

