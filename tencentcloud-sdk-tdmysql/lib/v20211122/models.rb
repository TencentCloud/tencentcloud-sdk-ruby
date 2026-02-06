# frozen_string_literal: true

# Copyright (c) 2017-2025 Tencent. All Rights Reserved.
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
  module Tdmysql
    module V20211122
      # 可恢复时间区间
      class ArchiveLogInterval < TencentCloud::Common::AbstractModel
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param MajorVersion: 大版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MajorVersion: String
        # @param MinorVersion: 小版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinorVersion: String
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String

        attr_accessor :EndTime, :MajorVersion, :MinorVersion, :StartTime

        def initialize(endtime=nil, majorversion=nil, minorversion=nil, starttime=nil)
          @EndTime = endtime
          @MajorVersion = majorversion
          @MinorVersion = minorversion
          @StartTime = starttime
        end

        def deserialize(params)
          @EndTime = params['EndTime']
          @MajorVersion = params['MajorVersion']
          @MinorVersion = params['MinorVersion']
          @StartTime = params['StartTime']
        end
      end

      # 修改备份策略对象
      class BackupPolicyModelInput < TencentCloud::Common::AbstractModel
        # @param BackupEndTime: <p>备份结束时间</p>
        # @type BackupEndTime: String
        # @param BackupMethod: <p>备份方式  physical 物理备份 snapshot 快照备份</p>
        # @type BackupMethod: String
        # @param BackupStartTime: <p>备份开始时间</p>
        # @type BackupStartTime: String
        # @param EnableFull: <p>是否开启全量备份</p>
        # @type EnableFull: Integer
        # @param EnableLog: <p>是否开启日志备份</p>
        # @type EnableLog: Integer
        # @param FullRetentionPeriod: <p>全备保留时间,目前只能设置7天</p>
        # @type FullRetentionPeriod: Integer
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param LogRetentionPeriod: <p>日志保留天数，目前只能设置保留7天</p>
        # @type LogRetentionPeriod: Integer
        # @param PeriodTime: <p>一周的哪几天进行备份</p>
        # @type PeriodTime: String
        # @param StorageType: <p>存储类型:COS,SNAPSHOT</p>枚举值：<ul><li> COS： COS存储</li><li> SNAPSHOT： 云盘快照</li></ul>
        # @type StorageType: String

        attr_accessor :BackupEndTime, :BackupMethod, :BackupStartTime, :EnableFull, :EnableLog, :FullRetentionPeriod, :InstanceId, :LogRetentionPeriod, :PeriodTime, :StorageType

        def initialize(backupendtime=nil, backupmethod=nil, backupstarttime=nil, enablefull=nil, enablelog=nil, fullretentionperiod=nil, instanceid=nil, logretentionperiod=nil, periodtime=nil, storagetype=nil)
          @BackupEndTime = backupendtime
          @BackupMethod = backupmethod
          @BackupStartTime = backupstarttime
          @EnableFull = enablefull
          @EnableLog = enablelog
          @FullRetentionPeriod = fullretentionperiod
          @InstanceId = instanceid
          @LogRetentionPeriod = logretentionperiod
          @PeriodTime = periodtime
          @StorageType = storagetype
        end

        def deserialize(params)
          @BackupEndTime = params['BackupEndTime']
          @BackupMethod = params['BackupMethod']
          @BackupStartTime = params['BackupStartTime']
          @EnableFull = params['EnableFull']
          @EnableLog = params['EnableLog']
          @FullRetentionPeriod = params['FullRetentionPeriod']
          @InstanceId = params['InstanceId']
          @LogRetentionPeriod = params['LogRetentionPeriod']
          @PeriodTime = params['PeriodTime']
          @StorageType = params['StorageType']
        end
      end

      # CancelIsolateDBInstances请求参数结构体
      class CancelIsolateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 需要隔离的实例ID列表
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # CancelIsolateDBInstances返回参数结构体
      class CancelIsolateDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param SuccessInstanceIds: 解除隔离成功实例Id列表
        # @type SuccessInstanceIds: Array
        # @param FailedInstanceIds: 解除隔离失败实例Id列表
        # @type FailedInstanceIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessInstanceIds, :FailedInstanceIds, :RequestId

        def initialize(successinstanceids=nil, failedinstanceids=nil, requestid=nil)
          @SuccessInstanceIds = successinstanceids
          @FailedInstanceIds = failedinstanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessInstanceIds = params['SuccessInstanceIds']
          @FailedInstanceIds = params['FailedInstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # 克隆实例对象
      class CloneInstanceModel < TencentCloud::Common::AbstractModel
        # @param CloneEndTime: 克隆任务结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloneEndTime: String
        # @param CloneId: 克隆记录ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloneId: Integer
        # @param CloneInsType: 克隆实例类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloneInsType: String
        # @param CloneInstanceId: 克隆实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloneInstanceId: String
        # @param CloneInstanceIsDeleted: 克隆实例是否已经删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloneInstanceIsDeleted: Boolean
        # @param CloneProgress: 克隆任务进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloneProgress: Float
        # @param CloneStartTime: 克隆任务开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloneStartTime: String
        # @param CloneStatus: 克隆任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloneStatus: String
        # @param CloneTime: 克隆时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloneTime: String
        # @param CloneType: 克隆类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloneType: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param DBType: 引擎类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBType: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param SourceInstanceId: 源实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceInstanceId: String

        attr_accessor :CloneEndTime, :CloneId, :CloneInsType, :CloneInstanceId, :CloneInstanceIsDeleted, :CloneProgress, :CloneStartTime, :CloneStatus, :CloneTime, :CloneType, :CreateTime, :DBType, :Region, :SourceInstanceId

        def initialize(cloneendtime=nil, cloneid=nil, cloneinstype=nil, cloneinstanceid=nil, cloneinstanceisdeleted=nil, cloneprogress=nil, clonestarttime=nil, clonestatus=nil, clonetime=nil, clonetype=nil, createtime=nil, dbtype=nil, region=nil, sourceinstanceid=nil)
          @CloneEndTime = cloneendtime
          @CloneId = cloneid
          @CloneInsType = cloneinstype
          @CloneInstanceId = cloneinstanceid
          @CloneInstanceIsDeleted = cloneinstanceisdeleted
          @CloneProgress = cloneprogress
          @CloneStartTime = clonestarttime
          @CloneStatus = clonestatus
          @CloneTime = clonetime
          @CloneType = clonetype
          @CreateTime = createtime
          @DBType = dbtype
          @Region = region
          @SourceInstanceId = sourceinstanceid
        end

        def deserialize(params)
          @CloneEndTime = params['CloneEndTime']
          @CloneId = params['CloneId']
          @CloneInsType = params['CloneInsType']
          @CloneInstanceId = params['CloneInstanceId']
          @CloneInstanceIsDeleted = params['CloneInstanceIsDeleted']
          @CloneProgress = params['CloneProgress']
          @CloneStartTime = params['CloneStartTime']
          @CloneStatus = params['CloneStatus']
          @CloneTime = params['CloneTime']
          @CloneType = params['CloneType']
          @CreateTime = params['CreateTime']
          @DBType = params['DBType']
          @Region = params['Region']
          @SourceInstanceId = params['SourceInstanceId']
        end
      end

      # 约束类型值的范围
      class ConstraintRange < TencentCloud::Common::AbstractModel
        # @param Min: 约束类型为section时的最小值
        # @type Min: String
        # @param Max: 约束类型为section时的最大值
        # @type Max: String

        attr_accessor :Min, :Max

        def initialize(min=nil, max=nil)
          @Min = min
          @Max = max
        end

        def deserialize(params)
          @Min = params['Min']
          @Max = params['Max']
        end
      end

      # CreateDBSBackup请求参数结构体
      class CreateDBSBackupRequest < TencentCloud::Common::AbstractModel
        # @param BackupMethod: <p>备份方式：physical、snapshot 这个值和DescribeDBSBackupPolicy接口返回的backupMethod保持一致</p>枚举值：<ul><li> physical： 物理备份</li><li> snapshot： 快照备份</li></ul>
        # @type BackupMethod: String
        # @param BackupType: <p>备份类型：暂时只支持full</p>
        # @type BackupType: String
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param BackupName: <p>备份备注</p>
        # @type BackupName: String

        attr_accessor :BackupMethod, :BackupType, :InstanceId, :BackupName

        def initialize(backupmethod=nil, backuptype=nil, instanceid=nil, backupname=nil)
          @BackupMethod = backupmethod
          @BackupType = backuptype
          @InstanceId = instanceid
          @BackupName = backupname
        end

        def deserialize(params)
          @BackupMethod = params['BackupMethod']
          @BackupType = params['BackupType']
          @InstanceId = params['InstanceId']
          @BackupName = params['BackupName']
        end
      end

      # CreateDBSBackup返回参数结构体
      class CreateDBSBackupResponse < TencentCloud::Common::AbstractModel
        # @param BackupSetId: <p>备份集ID</p>
        # @type BackupSetId: Integer
        # @param IsSuccess: <p>是否成功</p>
        # @type IsSuccess: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupSetId, :IsSuccess, :RequestId

        def initialize(backupsetid=nil, issuccess=nil, requestid=nil)
          @BackupSetId = backupsetid
          @IsSuccess = issuccess
          @RequestId = requestid
        end

        def deserialize(params)
          @BackupSetId = params['BackupSetId']
          @IsSuccess = params['IsSuccess']
          @RequestId = params['RequestId']
        end
      end

      # 云数据库参数信息。
      class DBParamValue < TencentCloud::Common::AbstractModel
        # @param Param: 参数名称
        # @type Param: String
        # @param Value: 参数值
        # @type Value: String

        attr_accessor :Param, :Value

        def initialize(param=nil, value=nil)
          @Param = param
          @Value = value
        end

        def deserialize(params)
          @Param = params['Param']
          @Value = params['Value']
        end
      end

      # 数据库函数信息
      class DatabaseFunction < TencentCloud::Common::AbstractModel
        # @param Func: 函数名称
        # @type Func: String

        attr_accessor :Func

        def initialize(func=nil)
          @Func = func
        end

        def deserialize(params)
          @Func = params['Func']
        end
      end

      # 数据库存储过程信息
      class DatabaseProcedure < TencentCloud::Common::AbstractModel
        # @param Proc: 存储过程名称
        # @type Proc: String

        attr_accessor :Proc

        def initialize(proc=nil)
          @Proc = proc
        end

        def deserialize(params)
          @Proc = params['Proc']
        end
      end

      # 数据库表信息
      class DatabaseTable < TencentCloud::Common::AbstractModel
        # @param Table: 表名
        # @type Table: String

        attr_accessor :Table

        def initialize(table=nil)
          @Table = table
        end

        def deserialize(params)
          @Table = params['Table']
        end
      end

      # 数据库视图信息
      class DatabaseView < TencentCloud::Common::AbstractModel
        # @param View: 视图名称
        # @type View: String

        attr_accessor :View

        def initialize(view=nil)
          @View = view
        end

        def deserialize(params)
          @View = params['View']
        end
      end

      # DeleteDBSBackupSets请求参数结构体
      class DeleteDBSBackupSetsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param BackupSetIdList: <p>备份集列表 ,值来自 DescribeDBSBackupSets 接口返回</p>
        # @type BackupSetIdList: Array

        attr_accessor :InstanceId, :BackupSetIdList

        def initialize(instanceid=nil, backupsetidlist=nil)
          @InstanceId = instanceid
          @BackupSetIdList = backupsetidlist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupSetIdList = params['BackupSetIdList']
        end
      end

      # DeleteDBSBackupSets返回参数结构体
      class DeleteDBSBackupSetsResponse < TencentCloud::Common::AbstractModel
        # @param Deleted: <p>本次实际删除的备份数量</p>
        # @type Deleted: Integer
        # @param IsSuccess: <p>是否全部删除成功</p>
        # @type IsSuccess: Boolean
        # @param Total: <p>需要删除的备份总数</p>
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Deleted, :IsSuccess, :Total, :RequestId

        def initialize(deleted=nil, issuccess=nil, total=nil, requestid=nil)
          @Deleted = deleted
          @IsSuccess = issuccess
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @Deleted = params['Deleted']
          @IsSuccess = params['IsSuccess']
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillingEnable请求参数结构体
      class DescribeBillingEnableRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBillingEnable返回参数结构体
      class DescribeBillingEnableResponse < TencentCloud::Common::AbstractModel
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

      # DescribeDBParameters请求参数结构体
      class DescribeDBParametersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql3-ow728lmc。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBParameters返回参数结构体
      class DescribeDBParametersResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql3-ow728lmc。
        # @type InstanceId: String
        # @param Params: 请求实例的当前参数值
        # @type Params: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Params, :RequestId

        def initialize(instanceid=nil, params=nil, requestid=nil)
          @InstanceId = instanceid
          @Params = params
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              paramdesc_tmp = ParamDesc.new
              paramdesc_tmp.deserialize(i)
              @Params << paramdesc_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSAvailableRecoveryTime请求参数结构体
      class DescribeDBSAvailableRecoveryTimeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>db实例ID</p>
        # @type InstanceId: String
        # @param BackupSetId: <p>备份集ID,值来自 DescribeDBSBackupSets 接口返回</p>
        # @type BackupSetId: Integer

        attr_accessor :InstanceId, :BackupSetId

        def initialize(instanceid=nil, backupsetid=nil)
          @InstanceId = instanceid
          @BackupSetId = backupsetid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupSetId = params['BackupSetId']
        end
      end

      # DescribeDBSAvailableRecoveryTime返回参数结构体
      class DescribeDBSAvailableRecoveryTimeResponse < TencentCloud::Common::AbstractModel
        # @param EndTime: <p>结束时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Intervals: <p>可恢复时间区间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Intervals: Array
        # @param StartTime: <p>开始时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EndTime, :Intervals, :StartTime, :RequestId

        def initialize(endtime=nil, intervals=nil, starttime=nil, requestid=nil)
          @EndTime = endtime
          @Intervals = intervals
          @StartTime = starttime
          @RequestId = requestid
        end

        def deserialize(params)
          @EndTime = params['EndTime']
          unless params['Intervals'].nil?
            @Intervals = []
            params['Intervals'].each do |i|
              archiveloginterval_tmp = ArchiveLogInterval.new
              archiveloginterval_tmp.deserialize(i)
              @Intervals << archiveloginterval_tmp
            end
          end
          @StartTime = params['StartTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSCloneInstances请求参数结构体
      class DescribeDBSCloneInstancesRequest < TencentCloud::Common::AbstractModel
        # @param SourceInstanceId: <p>源实例ID</p>
        # @type SourceInstanceId: String
        # @param DBType: <p>引擎类型</p>
        # @type DBType: String
        # @param EndCreateTime: <p>结束创建时间</p>
        # @type EndCreateTime: String
        # @param FilterCloneType: <p>克隆类型: PITR 时间点 BackupSet 备份集</p>
        # @type FilterCloneType: String
        # @param Limit: <p>查询数量[0,200]</p>
        # @type Limit: Integer
        # @param Offset: <p>查询偏移量[0,INF]</p>
        # @type Offset: Integer
        # @param OrderBy: <p>排序字段: CloneTime,CreateTime</p>
        # @type OrderBy: String
        # @param OrderType: <p>排序类型:ASC,DESC</p>
        # @type OrderType: String
        # @param StartCreateTime: <p>开始创建时间</p>
        # @type StartCreateTime: String

        attr_accessor :SourceInstanceId, :DBType, :EndCreateTime, :FilterCloneType, :Limit, :Offset, :OrderBy, :OrderType, :StartCreateTime

        def initialize(sourceinstanceid=nil, dbtype=nil, endcreatetime=nil, filterclonetype=nil, limit=nil, offset=nil, orderby=nil, ordertype=nil, startcreatetime=nil)
          @SourceInstanceId = sourceinstanceid
          @DBType = dbtype
          @EndCreateTime = endcreatetime
          @FilterCloneType = filterclonetype
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderType = ordertype
          @StartCreateTime = startcreatetime
        end

        def deserialize(params)
          @SourceInstanceId = params['SourceInstanceId']
          @DBType = params['DBType']
          @EndCreateTime = params['EndCreateTime']
          @FilterCloneType = params['FilterCloneType']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @StartCreateTime = params['StartCreateTime']
        end
      end

      # DescribeDBSCloneInstances返回参数结构体
      class DescribeDBSCloneInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Items: <p>克隆列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param TotalCount: <p>总数</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :TotalCount, :RequestId

        def initialize(items=nil, totalcount=nil, requestid=nil)
          @Items = items
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              cloneinstancemodel_tmp = CloneInstanceModel.new
              cloneinstancemodel_tmp.deserialize(i)
              @Items << cloneinstancemodel_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSecurityGroups请求参数结构体
      class DescribeDBSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBSecurityGroups返回参数结构体
      class DescribeDBSecurityGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Groups: 安全组详情。
        # @type Groups: Array
        # @param VIP: 实例VIP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VIP: String
        # @param VPort: 实例端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VPort: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Groups, :VIP, :VPort, :RequestId

        def initialize(groups=nil, vip=nil, vport=nil, requestid=nil)
          @Groups = groups
          @VIP = vip
          @VPort = vport
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              securitygroup_tmp = SecurityGroup.new
              securitygroup_tmp.deserialize(i)
              @Groups << securitygroup_tmp
            end
          end
          @VIP = params['VIP']
          @VPort = params['VPort']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabaseObjects请求参数结构体
      class DescribeDatabaseObjectsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql3-42f40429.
        # @type InstanceId: String
        # @param DbName: 数据库名称，通过 DescribeDatabases 接口获取。
        # @type DbName: String

        attr_accessor :InstanceId, :DbName

        def initialize(instanceid=nil, dbname=nil)
          @InstanceId = instanceid
          @DbName = dbname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DbName = params['DbName']
        end
      end

      # DescribeDatabaseObjects返回参数结构体
      class DescribeDatabaseObjectsResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 透传入参。
        # @type InstanceId: String
        # @param DbName: 数据库名称。
        # @type DbName: String
        # @param Tables: 表列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tables: Array
        # @param Views: 视图列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Views: Array
        # @param Procs: 存储过程列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Procs: Array
        # @param Funcs: 函数列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Funcs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :DbName, :Tables, :Views, :Procs, :Funcs, :RequestId

        def initialize(instanceid=nil, dbname=nil, tables=nil, views=nil, procs=nil, funcs=nil, requestid=nil)
          @InstanceId = instanceid
          @DbName = dbname
          @Tables = tables
          @Views = views
          @Procs = procs
          @Funcs = funcs
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DbName = params['DbName']
          unless params['Tables'].nil?
            @Tables = []
            params['Tables'].each do |i|
              databasetable_tmp = DatabaseTable.new
              databasetable_tmp.deserialize(i)
              @Tables << databasetable_tmp
            end
          end
          unless params['Views'].nil?
            @Views = []
            params['Views'].each do |i|
              databaseview_tmp = DatabaseView.new
              databaseview_tmp.deserialize(i)
              @Views << databaseview_tmp
            end
          end
          unless params['Procs'].nil?
            @Procs = []
            params['Procs'].each do |i|
              databaseprocedure_tmp = DatabaseProcedure.new
              databaseprocedure_tmp.deserialize(i)
              @Procs << databaseprocedure_tmp
            end
          end
          unless params['Funcs'].nil?
            @Funcs = []
            params['Funcs'].each do |i|
              databasefunction_tmp = DatabaseFunction.new
              databasefunction_tmp.deserialize(i)
              @Funcs << databasefunction_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabaseTable请求参数结构体
      class DescribeDatabaseTableRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql3-ow7t8lmc。
        # @type InstanceId: String
        # @param DbName: 数据库名称，通过 DescribeDatabases 接口获取。
        # @type DbName: String
        # @param Table: 表名称，通过 DescribeDatabaseObjects 接口获取。
        # @type Table: String

        attr_accessor :InstanceId, :DbName, :Table

        def initialize(instanceid=nil, dbname=nil, table=nil)
          @InstanceId = instanceid
          @DbName = dbname
          @Table = table
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DbName = params['DbName']
          @Table = params['Table']
        end
      end

      # DescribeDatabaseTable返回参数结构体
      class DescribeDatabaseTableResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例名称。
        # @type InstanceId: String
        # @param DbName: 数据库名称。
        # @type DbName: String
        # @param Table: 表名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Table: String
        # @param Cols: 列信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cols: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :DbName, :Table, :Cols, :RequestId

        def initialize(instanceid=nil, dbname=nil, table=nil, cols=nil, requestid=nil)
          @InstanceId = instanceid
          @DbName = dbname
          @Table = table
          @Cols = cols
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DbName = params['DbName']
          @Table = params['Table']
          unless params['Cols'].nil?
            @Cols = []
            params['Cols'].each do |i|
              tablecolumn_tmp = TableColumn.new
              tablecolumn_tmp.deserialize(i)
              @Cols << tablecolumn_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlow请求参数结构体
      class DescribeFlowRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeFlow返回参数结构体
      class DescribeFlowResponse < TencentCloud::Common::AbstractModel
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

      # DestroyInstances请求参数结构体
      class DestroyInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 需要隔离的实例ID列表
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # DestroyInstances返回参数结构体
      class DestroyInstancesResponse < TencentCloud::Common::AbstractModel
        # @param SuccessInstanceIds: 解除隔离成功实例Id列表
        # @type SuccessInstanceIds: Array
        # @param FailedInstanceIds: 解除隔离失败实例Id列表
        # @type FailedInstanceIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessInstanceIds, :FailedInstanceIds, :RequestId

        def initialize(successinstanceids=nil, failedinstanceids=nil, requestid=nil)
          @SuccessInstanceIds = successinstanceids
          @FailedInstanceIds = failedinstanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessInstanceIds = params['SuccessInstanceIds']
          @FailedInstanceIds = params['FailedInstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # IsolateDBInstance请求参数结构体
      class IsolateDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 需要隔离的实例ID列表
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # IsolateDBInstance返回参数结构体
      class IsolateDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param SuccessInstanceIds: 隔离成功实例Id列表
        # @type SuccessInstanceIds: Array
        # @param FailedInstanceIds: 隔离失败实例Id列表
        # @type FailedInstanceIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessInstanceIds, :FailedInstanceIds, :RequestId

        def initialize(successinstanceids=nil, failedinstanceids=nil, requestid=nil)
          @SuccessInstanceIds = successinstanceids
          @FailedInstanceIds = failedinstanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessInstanceIds = params['SuccessInstanceIds']
          @FailedInstanceIds = params['FailedInstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAutoRenewFlag请求参数结构体
      class ModifyAutoRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 需要修改的实例列表
        # @type InstanceIds: Array
        # @param AutoRenewFlag: 1表示开启自动续费，0为关闭自动续费
        # @type AutoRenewFlag: Integer

        attr_accessor :InstanceIds, :AutoRenewFlag

        def initialize(instanceids=nil, autorenewflag=nil)
          @InstanceIds = instanceids
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # ModifyAutoRenewFlag返回参数结构体
      class ModifyAutoRenewFlagResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBinlogStatus请求参数结构体
      class ModifyBinlogStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Status: 1打开0关闭
        # @type Status: Integer

        attr_accessor :InstanceId, :Status

        def initialize(instanceid=nil, status=nil)
          @InstanceId = instanceid
          @Status = status
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Status = params['Status']
        end
      end

      # ModifyBinlogStatus返回参数结构体
      class ModifyBinlogStatusResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: flow的流程id
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDBInstanceSecurityGroups请求参数结构体
      class ModifyDBInstanceSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param SecurityGroupIds: 要修改的安全组 ID 列表，一个或者多个安全组 ID 组成的数组。
        # @type SecurityGroupIds: Array

        attr_accessor :InstanceId, :SecurityGroupIds

        def initialize(instanceid=nil, securitygroupids=nil)
          @InstanceId = instanceid
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # ModifyDBInstanceSecurityGroups返回参数结构体
      class ModifyDBInstanceSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBParameters请求参数结构体
      class ModifyDBParametersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql3-ow728lmc。
        # @type InstanceId: String
        # @param Params: 参数列表，每一个元素是Param和Value的组合
        # @type Params: Array

        attr_accessor :InstanceId, :Params

        def initialize(instanceid=nil, params=nil)
          @InstanceId = instanceid
          @Params = params
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              dbparamvalue_tmp = DBParamValue.new
              dbparamvalue_tmp.deserialize(i)
              @Params << dbparamvalue_tmp
            end
          end
        end
      end

      # ModifyDBParameters返回参数结构体
      class ModifyDBParametersResponse < TencentCloud::Common::AbstractModel
        # @param TaskID: 123
        # @type TaskID: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskID, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskID = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDBSBackupPolicy请求参数结构体
      class ModifyDBSBackupPolicyRequest < TencentCloud::Common::AbstractModel
        # @param BackupPolicy: 备份策略
        # @type BackupPolicy: :class:`Tencentcloud::Tdmysql.v20211122.models.BackupPolicyModelInput`
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :BackupPolicy, :InstanceId

        def initialize(backuppolicy=nil, instanceid=nil)
          @BackupPolicy = backuppolicy
          @InstanceId = instanceid
        end

        def deserialize(params)
          unless params['BackupPolicy'].nil?
            @BackupPolicy = BackupPolicyModelInput.new
            @BackupPolicy.deserialize(params['BackupPolicy'])
          end
          @InstanceId = params['InstanceId']
        end
      end

      # ModifyDBSBackupPolicy返回参数结构体
      class ModifyDBSBackupPolicyResponse < TencentCloud::Common::AbstractModel
        # @param IsSuccess: 是否成功
        # @type IsSuccess: Boolean
        # @param Msg: 消息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsSuccess, :Msg, :RequestId

        def initialize(issuccess=nil, msg=nil, requestid=nil)
          @IsSuccess = issuccess
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @IsSuccess = params['IsSuccess']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDBSBackupSetComment请求参数结构体
      class ModifyDBSBackupSetCommentRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param BackupSetId: <p>备份集ID,值来自 DescribeDBSBackupSets 接口返回</p>
        # @type BackupSetId: Integer
        # @param NewBackupName: <p>备份备注</p>
        # @type NewBackupName: String

        attr_accessor :InstanceId, :BackupSetId, :NewBackupName

        def initialize(instanceid=nil, backupsetid=nil, newbackupname=nil)
          @InstanceId = instanceid
          @BackupSetId = backupsetid
          @NewBackupName = newbackupname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupSetId = params['BackupSetId']
          @NewBackupName = params['NewBackupName']
        end
      end

      # ModifyDBSBackupSetComment返回参数结构体
      class ModifyDBSBackupSetCommentResponse < TencentCloud::Common::AbstractModel
        # @param IsSuccess: <p>是否成功</p>
        # @type IsSuccess: Boolean
        # @param Msg: <p>修改信息</p>
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsSuccess, :Msg, :RequestId

        def initialize(issuccess=nil, msg=nil, requestid=nil)
          @IsSuccess = issuccess
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @IsSuccess = params['IsSuccess']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyInstanceName请求参数结构体
      class ModifyInstanceNameRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 需要修改的实例id
        # @type InstanceId: String
        # @param InstanceName: 修改的实例名称，要求长度1-60，允许包含中文、英文大小写、数字、-、_
        # @type InstanceName: String

        attr_accessor :InstanceId, :InstanceName

        def initialize(instanceid=nil, instancename=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
        end
      end

      # ModifyInstanceName返回参数结构体
      class ModifyInstanceNameResponse < TencentCloud::Common::AbstractModel
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

      # 参数约束
      class ParamConstraint < TencentCloud::Common::AbstractModel
        # @param Type: 约束类型,如枚举enum，区间section
        # @type Type: String
        # @param Enum: 约束类型为enum时的可选值列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enum: String
        # @param Range: 约束类型为section时的范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Range: :class:`Tencentcloud::Tdmysql.v20211122.models.ConstraintRange`
        # @param String: 约束类型为string时的可选值列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type String: String

        attr_accessor :Type, :Enum, :Range, :String

        def initialize(type=nil, enum=nil, range=nil, string=nil)
          @Type = type
          @Enum = enum
          @Range = range
          @String = string
        end

        def deserialize(params)
          @Type = params['Type']
          @Enum = params['Enum']
          unless params['Range'].nil?
            @Range = ConstraintRange.new
            @Range.deserialize(params['Range'])
          end
          @String = params['String']
        end
      end

      # DB参数描述
      class ParamDesc < TencentCloud::Common::AbstractModel
        # @param Param: 参数名字
        # @type Param: String
        # @param Value: 当前参数值
        # @type Value: String
        # @param SetValue: 设置过的值，参数生效后，该值和value一样。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SetValue: String
        # @param Default: 系统默认值
        # @type Default: String
        # @param Constraint: 参数限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Constraint: :class:`Tencentcloud::Tdmysql.v20211122.models.ParamConstraint`
        # @param HaveSetValue: 是否有设置过值，false:没有设置过值，true:有设置过值。
        # @type HaveSetValue: Boolean
        # @param NeedRestart: true:需要重启
        # @type NeedRestart: Boolean
        # @param Description: 参数描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :Param, :Value, :SetValue, :Default, :Constraint, :HaveSetValue, :NeedRestart, :Description

        def initialize(param=nil, value=nil, setvalue=nil, default=nil, constraint=nil, havesetvalue=nil, needrestart=nil, description=nil)
          @Param = param
          @Value = value
          @SetValue = setvalue
          @Default = default
          @Constraint = constraint
          @HaveSetValue = havesetvalue
          @NeedRestart = needrestart
          @Description = description
        end

        def deserialize(params)
          @Param = params['Param']
          @Value = params['Value']
          @SetValue = params['SetValue']
          @Default = params['Default']
          unless params['Constraint'].nil?
            @Constraint = ParamConstraint.new
            @Constraint.deserialize(params['Constraint'])
          end
          @HaveSetValue = params['HaveSetValue']
          @NeedRestart = params['NeedRestart']
          @Description = params['Description']
        end
      end

      # 安全组详情
      class SecurityGroup < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param CreateTime: 创建时间，时间格式：yyyy-mm-dd hh:mm:ss
        # @type CreateTime: String
        # @param SecurityGroupId: 安全组ID
        # @type SecurityGroupId: String
        # @param SecurityGroupName: 安全组名称
        # @type SecurityGroupName: String
        # @param SecurityGroupRemark: 安全组备注
        # @type SecurityGroupRemark: String
        # @param Inbound: 入站规则
        # @type Inbound: Array
        # @param Outbound: 出站规则
        # @type Outbound: Array

        attr_accessor :ProjectId, :CreateTime, :SecurityGroupId, :SecurityGroupName, :SecurityGroupRemark, :Inbound, :Outbound

        def initialize(projectid=nil, createtime=nil, securitygroupid=nil, securitygroupname=nil, securitygroupremark=nil, inbound=nil, outbound=nil)
          @ProjectId = projectid
          @CreateTime = createtime
          @SecurityGroupId = securitygroupid
          @SecurityGroupName = securitygroupname
          @SecurityGroupRemark = securitygroupremark
          @Inbound = inbound
          @Outbound = outbound
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CreateTime = params['CreateTime']
          @SecurityGroupId = params['SecurityGroupId']
          @SecurityGroupName = params['SecurityGroupName']
          @SecurityGroupRemark = params['SecurityGroupRemark']
          unless params['Inbound'].nil?
            @Inbound = []
            params['Inbound'].each do |i|
              securitygroupbound_tmp = SecurityGroupBound.new
              securitygroupbound_tmp.deserialize(i)
              @Inbound << securitygroupbound_tmp
            end
          end
          unless params['Outbound'].nil?
            @Outbound = []
            params['Outbound'].each do |i|
              securitygroupbound_tmp = SecurityGroupBound.new
              securitygroupbound_tmp.deserialize(i)
              @Outbound << securitygroupbound_tmp
            end
          end
        end
      end

      # 安全出入口规则
      class SecurityGroupBound < TencentCloud::Common::AbstractModel
        # @param CidrIp: 来源 IP 或 IP 段，例如192.168.0.0/16
        # @type CidrIp: String
        # @param Action: 策略，ACCEPT 或者 DROP
        # @type Action: String
        # @param PortRange: 端口
        # @type PortRange: String
        # @param IpProtocol: 网络协议，支持 UDP、TCP 等
        # @type IpProtocol: String

        attr_accessor :CidrIp, :Action, :PortRange, :IpProtocol

        def initialize(cidrip=nil, action=nil, portrange=nil, ipprotocol=nil)
          @CidrIp = cidrip
          @Action = action
          @PortRange = portrange
          @IpProtocol = ipprotocol
        end

        def deserialize(params)
          @CidrIp = params['CidrIp']
          @Action = params['Action']
          @PortRange = params['PortRange']
          @IpProtocol = params['IpProtocol']
        end
      end

      # 数据库列信息
      class TableColumn < TencentCloud::Common::AbstractModel
        # @param Col: 列名称
        # @type Col: String
        # @param Type: 列类型
        # @type Type: String

        attr_accessor :Col, :Type

        def initialize(col=nil, type=nil)
          @Col = col
          @Type = type
        end

        def deserialize(params)
          @Col = params['Col']
          @Type = params['Type']
        end
      end

    end
  end
end

