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
      # 分析引擎实例信息
      class AnalysisInstanceInfo < TencentCloud::Common::AbstractModel
        # @param ReplicasNum: <p>副本数</p>
        # @type ReplicasNum: Integer

        attr_accessor :ReplicasNum

        def initialize(replicasnum=nil)
          @ReplicasNum = replicasnum
        end

        def deserialize(params)
          @ReplicasNum = params['ReplicasNum']
        end
      end

      # 分析引擎关联关系
      class AnalysisRelationInfo < TencentCloud::Common::AbstractModel
        # @param PrimaryInstanceId: <p>源实例Id</p>
        # @type PrimaryInstanceId: String
        # @param AnalysisInstanceId: <p>分析引擎实例Id</p>
        # @type AnalysisInstanceId: String
        # @param Status: <p>分析引擎关系状态</p><p>枚举值：</p><ul><li>creating： 创建中</li><li>running： 运行中</li><li>destroyed： 已销毁</li></ul>
        # @type Status: String
        # @param CreateAt: <p>创建时间</p>
        # @type CreateAt: String
        # @param UpdateAt: <p>更新时间</p>
        # @type UpdateAt: String

        attr_accessor :PrimaryInstanceId, :AnalysisInstanceId, :Status, :CreateAt, :UpdateAt

        def initialize(primaryinstanceid=nil, analysisinstanceid=nil, status=nil, createat=nil, updateat=nil)
          @PrimaryInstanceId = primaryinstanceid
          @AnalysisInstanceId = analysisinstanceid
          @Status = status
          @CreateAt = createat
          @UpdateAt = updateat
        end

        def deserialize(params)
          @PrimaryInstanceId = params['PrimaryInstanceId']
          @AnalysisInstanceId = params['AnalysisInstanceId']
          @Status = params['Status']
          @CreateAt = params['CreateAt']
          @UpdateAt = params['UpdateAt']
        end
      end

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

      # 归档日志对象
      class ArchiveLogModel < TencentCloud::Common::AbstractModel
        # @param ArchiveLogId: 归档日志ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ArchiveLogId: Integer
        # @param BackupDuration: 备份耗时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupDuration: Integer
        # @param BackupStatus: 备份集状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupStatus: String
        # @param EndTime: 备份结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param ErrorMessage: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param ExpiredTime: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiredTime: String
        # @param FileName: 备份文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param FileSize: 备份集文件大小，单位Byte
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSize: Integer
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param StartTime: 备份开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String

        attr_accessor :ArchiveLogId, :BackupDuration, :BackupStatus, :EndTime, :ErrorMessage, :ExpiredTime, :FileName, :FileSize, :InstanceId, :StartTime

        def initialize(archivelogid=nil, backupduration=nil, backupstatus=nil, endtime=nil, errormessage=nil, expiredtime=nil, filename=nil, filesize=nil, instanceid=nil, starttime=nil)
          @ArchiveLogId = archivelogid
          @BackupDuration = backupduration
          @BackupStatus = backupstatus
          @EndTime = endtime
          @ErrorMessage = errormessage
          @ExpiredTime = expiredtime
          @FileName = filename
          @FileSize = filesize
          @InstanceId = instanceid
          @StartTime = starttime
        end

        def deserialize(params)
          @ArchiveLogId = params['ArchiveLogId']
          @BackupDuration = params['BackupDuration']
          @BackupStatus = params['BackupStatus']
          @EndTime = params['EndTime']
          @ErrorMessage = params['ErrorMessage']
          @ExpiredTime = params['ExpiredTime']
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
        end
      end

      # serverless实例的ccu范围
      class AutoScalingConfig < TencentCloud::Common::AbstractModel
        # @param RangeMin: <p>ccu最小值</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RangeMin: Float
        # @param RangeMax: <p>ccu最大值</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RangeMax: Float

        attr_accessor :RangeMin, :RangeMax

        def initialize(rangemin=nil, rangemax=nil)
          @RangeMin = rangemin
          @RangeMax = rangemax
        end

        def deserialize(params)
          @RangeMin = params['RangeMin']
          @RangeMax = params['RangeMax']
        end
      end

      # 备份方式统计对象-提供给备份空间统计接口
      class BackupMethodStatisticsModel < TencentCloud::Common::AbstractModel
        # @param AutoBackupSize: <p>自动备份大小，单位Byte</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoBackupSize: Integer
        # @param AverageSizePerDay: <p>总备份每天平均大小，单位Byte</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AverageSizePerDay: Integer
        # @param ManualBackupSize: <p>手动备份大小，单位Byte</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManualBackupSize: Integer
        # @param TotalSize: <p>总备份大小，单位Byte</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSize: Integer

        attr_accessor :AutoBackupSize, :AverageSizePerDay, :ManualBackupSize, :TotalSize

        def initialize(autobackupsize=nil, averagesizeperday=nil, manualbackupsize=nil, totalsize=nil)
          @AutoBackupSize = autobackupsize
          @AverageSizePerDay = averagesizeperday
          @ManualBackupSize = manualbackupsize
          @TotalSize = totalsize
        end

        def deserialize(params)
          @AutoBackupSize = params['AutoBackupSize']
          @AverageSizePerDay = params['AverageSizePerDay']
          @ManualBackupSize = params['ManualBackupSize']
          @TotalSize = params['TotalSize']
        end
      end

      # 备份方式统计对象，提供给 备份集统计详情 接口
      class BackupMethodStatisticsOutPut < TencentCloud::Common::AbstractModel
        # @param AutoBackupSize: <p>自动备份大小，单位Byte</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoBackupSize: Array
        # @param ManualBackupSize: <p>手动备份大小，单位Byte</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManualBackupSize: Array

        attr_accessor :AutoBackupSize, :ManualBackupSize

        def initialize(autobackupsize=nil, manualbackupsize=nil)
          @AutoBackupSize = autobackupsize
          @ManualBackupSize = manualbackupsize
        end

        def deserialize(params)
          @AutoBackupSize = params['AutoBackupSize']
          @ManualBackupSize = params['ManualBackupSize']
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

      # 备份策略对象
      class BackupPolicyModelOutPut < TencentCloud::Common::AbstractModel
        # @param BackupEndTime: <p>备份结束时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupEndTime: String
        # @param BackupMethod: <p>备份方式</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupMethod: String
        # @param BackupStartTime: <p>备份开始时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupStartTime: String
        # @param DBType: <p>引擎类型</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBType: String
        # @param DBVersion: <p>引擎版本</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBVersion: String
        # @param EnableFull: <p>是否开启全量备份</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableFull: Integer
        # @param EnableLog: <p>是否开启日志备份</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableLog: Integer
        # @param ExpectedNextBackupPeriod: <p>预计下次备份时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpectedNextBackupPeriod: String
        # @param FullRetentionPeriod: <p>全备保留时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullRetentionPeriod: Integer
        # @param ID: <p>策略ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer
        # @param InstanceId: <p>实例ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param LogRetentionPeriod: <p>日志保留天数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogRetentionPeriod: Integer
        # @param PeriodTime: <p>一周的哪几天进行备份</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeriodTime: String
        # @param Region: <p>地域</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param PeriodType: <p>备份周期类型  0:Weekly</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeriodType: Integer

        attr_accessor :BackupEndTime, :BackupMethod, :BackupStartTime, :DBType, :DBVersion, :EnableFull, :EnableLog, :ExpectedNextBackupPeriod, :FullRetentionPeriod, :ID, :InstanceId, :LogRetentionPeriod, :PeriodTime, :Region, :PeriodType

        def initialize(backupendtime=nil, backupmethod=nil, backupstarttime=nil, dbtype=nil, dbversion=nil, enablefull=nil, enablelog=nil, expectednextbackupperiod=nil, fullretentionperiod=nil, id=nil, instanceid=nil, logretentionperiod=nil, periodtime=nil, region=nil, periodtype=nil)
          @BackupEndTime = backupendtime
          @BackupMethod = backupmethod
          @BackupStartTime = backupstarttime
          @DBType = dbtype
          @DBVersion = dbversion
          @EnableFull = enablefull
          @EnableLog = enablelog
          @ExpectedNextBackupPeriod = expectednextbackupperiod
          @FullRetentionPeriod = fullretentionperiod
          @ID = id
          @InstanceId = instanceid
          @LogRetentionPeriod = logretentionperiod
          @PeriodTime = periodtime
          @Region = region
          @PeriodType = periodtype
        end

        def deserialize(params)
          @BackupEndTime = params['BackupEndTime']
          @BackupMethod = params['BackupMethod']
          @BackupStartTime = params['BackupStartTime']
          @DBType = params['DBType']
          @DBVersion = params['DBVersion']
          @EnableFull = params['EnableFull']
          @EnableLog = params['EnableLog']
          @ExpectedNextBackupPeriod = params['ExpectedNextBackupPeriod']
          @FullRetentionPeriod = params['FullRetentionPeriod']
          @ID = params['ID']
          @InstanceId = params['InstanceId']
          @LogRetentionPeriod = params['LogRetentionPeriod']
          @PeriodTime = params['PeriodTime']
          @Region = params['Region']
          @PeriodType = params['PeriodType']
        end
      end

      # 备份集对象
      class BackupSetModel < TencentCloud::Common::AbstractModel
        # @param BackupDuration: 备份集耗时，单位 sec
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupDuration: Integer
        # @param BackupMethod: 备份方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupMethod: String
        # @param BackupName: 备份备注名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupName: String
        # @param BackupProgress: 备份集进度百分比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupProgress: Float
        # @param BackupSetId: 备份集ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupSetId: Integer
        # @param BackupStatus: 备份集状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupStatus: String
        # @param BackupType: 备份集类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupType: String
        # @param DBVersion: 实例版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBVersion: String
        # @param EndTime: 备份结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param EndTrxTime: 事务commit结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTrxTime: String
        # @param ErrorMessage: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param ExpiredTime: 备份过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiredTime: String
        # @param FileName: 备份文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param FileSize: 备份集文件大小，单位Byte
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSize: Integer
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param ManualBackup: 备份触发，0 - autobackup, 1 - manual
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManualBackup: Integer
        # @param StartTime: 备份开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String

        attr_accessor :BackupDuration, :BackupMethod, :BackupName, :BackupProgress, :BackupSetId, :BackupStatus, :BackupType, :DBVersion, :EndTime, :EndTrxTime, :ErrorMessage, :ExpiredTime, :FileName, :FileSize, :InstanceId, :ManualBackup, :StartTime

        def initialize(backupduration=nil, backupmethod=nil, backupname=nil, backupprogress=nil, backupsetid=nil, backupstatus=nil, backuptype=nil, dbversion=nil, endtime=nil, endtrxtime=nil, errormessage=nil, expiredtime=nil, filename=nil, filesize=nil, instanceid=nil, manualbackup=nil, starttime=nil)
          @BackupDuration = backupduration
          @BackupMethod = backupmethod
          @BackupName = backupname
          @BackupProgress = backupprogress
          @BackupSetId = backupsetid
          @BackupStatus = backupstatus
          @BackupType = backuptype
          @DBVersion = dbversion
          @EndTime = endtime
          @EndTrxTime = endtrxtime
          @ErrorMessage = errormessage
          @ExpiredTime = expiredtime
          @FileName = filename
          @FileSize = filesize
          @InstanceId = instanceid
          @ManualBackup = manualbackup
          @StartTime = starttime
        end

        def deserialize(params)
          @BackupDuration = params['BackupDuration']
          @BackupMethod = params['BackupMethod']
          @BackupName = params['BackupName']
          @BackupProgress = params['BackupProgress']
          @BackupSetId = params['BackupSetId']
          @BackupStatus = params['BackupStatus']
          @BackupType = params['BackupType']
          @DBVersion = params['DBVersion']
          @EndTime = params['EndTime']
          @EndTrxTime = params['EndTrxTime']
          @ErrorMessage = params['ErrorMessage']
          @ExpiredTime = params['ExpiredTime']
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @InstanceId = params['InstanceId']
          @ManualBackup = params['ManualBackup']
          @StartTime = params['StartTime']
        end
      end

      # 备份集查询的filter
      class BackupSetsReqFilter < TencentCloud::Common::AbstractModel
        # @param BackupMethod: <p>备份方式,多个值用逗号隔开</p><p>枚举值：</p><ul><li>physical： 物理备份</li><li>snapshot： 快照备份</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupMethod: String
        # @param BackupStatus: <p>备份状态，多个值用逗号隔开，含义说明：等待调度pending， 运行中 running, 成功success,失败 failed</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupStatus: String
        # @param BackupType: <p>备份类型，多个值用逗号隔开，含义说明：全量备份 full</p><p>枚举值：</p><ul><li>full： 全量备份</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupType: String
        # @param ManualBackup: <p>备份触发方式</p><p>枚举值：</p><ul><li>0： 自动备份</li><li>1： 手工备份</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManualBackup: String

        attr_accessor :BackupMethod, :BackupStatus, :BackupType, :ManualBackup

        def initialize(backupmethod=nil, backupstatus=nil, backuptype=nil, manualbackup=nil)
          @BackupMethod = backupmethod
          @BackupStatus = backupstatus
          @BackupType = backuptype
          @ManualBackup = manualbackup
        end

        def deserialize(params)
          @BackupMethod = params['BackupMethod']
          @BackupStatus = params['BackupStatus']
          @BackupType = params['BackupType']
          @ManualBackup = params['ManualBackup']
        end
      end

      # 备份统计对象
      class BackupStatisticsModel < TencentCloud::Common::AbstractModel
        # @param AverageSizePerDay: <p>总备份每天平均大小,单位Byte</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AverageSizePerDay: Integer
        # @param DataBackupSize: <p>数据备份大小，单位Byte</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataBackupSize: Integer
        # @param LogBackupSize: <p>日志备份大小，单位Byte</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogBackupSize: Integer
        # @param TotalCount: <p>总备份集个数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalSize: <p>总备份大小，单位Byte</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSize: Integer

        attr_accessor :AverageSizePerDay, :DataBackupSize, :LogBackupSize, :TotalCount, :TotalSize

        def initialize(averagesizeperday=nil, databackupsize=nil, logbackupsize=nil, totalcount=nil, totalsize=nil)
          @AverageSizePerDay = averagesizeperday
          @DataBackupSize = databackupsize
          @LogBackupSize = logbackupsize
          @TotalCount = totalcount
          @TotalSize = totalsize
        end

        def deserialize(params)
          @AverageSizePerDay = params['AverageSizePerDay']
          @DataBackupSize = params['DataBackupSize']
          @LogBackupSize = params['LogBackupSize']
          @TotalCount = params['TotalCount']
          @TotalSize = params['TotalSize']
        end
      end

      # 备份方式统计对象，提供给 备份集统计详情 接口
      class BackupTypeStatisticsModel < TencentCloud::Common::AbstractModel
        # @param DataBackupSize: <p>数据备份大小，单位Byte</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataBackupSize: Array
        # @param LogBackupSize: <p>日志备份大小，单位Byte</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogBackupSize: Array

        attr_accessor :DataBackupSize, :LogBackupSize

        def initialize(databackupsize=nil, logbackupsize=nil)
          @DataBackupSize = databackupsize
          @LogBackupSize = logbackupsize
        end

        def deserialize(params)
          @DataBackupSize = params['DataBackupSize']
          @LogBackupSize = params['LogBackupSize']
        end
      end

      # 用于展示该节点的 Binlog 信息。
      class BinlogInfo < TencentCloud::Common::AbstractModel
        # @param Sid: 日志服务的唯一 ID
        # @type Sid: String
        # @param Type: 日志服务的类型
        # @type Type: String
        # @param InstanceId: 实例的唯一 ID
        # @type InstanceId: String

        attr_accessor :Sid, :Type, :InstanceId

        def initialize(sid=nil, type=nil, instanceid=nil)
          @Sid = sid
          @Type = type
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Sid = params['Sid']
          @Type = params['Type']
          @InstanceId = params['InstanceId']
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

      # CreateCloneInstance请求参数结构体
      class CreateCloneInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Zone: <p>创建实例区域</p>
        # @type Zone: String
        # @param VpcId: <p>字符型vpcid</p>
        # @type VpcId: String
        # @param SubnetId: <p>字符型subnetid</p>
        # @type SubnetId: String
        # @param SpecCode: <p>购买规格</p>
        # @type SpecCode: String
        # @param Disk: <p>存储节点磁盘容量，单位GB</p>
        # @type Disk: Integer
        # @param StorageNodeNum: <p>存储节点数量</p>
        # @type StorageNodeNum: Integer
        # @param InstanceId: <p>源实例id</p>
        # @type InstanceId: String
        # @param InstanceName: <p>实例名称，要求长度1-60，允许包含中文、英文大小写、数字、-、_</p>
        # @type InstanceName: String
        # @param ResourceTags: <p>标签键值对数组</p>
        # @type ResourceTags: Array
        # @param BackupName: <p>备份回档名称</p>
        # @type BackupName: String
        # @param StorageNodeCpu: <p>存储节点CPU核数</p>
        # @type StorageNodeCpu: Integer
        # @param StorageNodeMem: <p>存储节点内存大小</p>
        # @type StorageNodeMem: Integer
        # @param CreateVersion: <p>创建版本</p>
        # @type CreateVersion: String
        # @param Vport: <p>创建端口号</p>
        # @type Vport: Integer
        # @param RecoverTime: <p>恢复时间点</p>
        # @type RecoverTime: String
        # @param InstanceType: <p>实例架构类型，separate:分离架构；hybrid:对等架构</p>
        # @type InstanceType: String
        # @param StorageType: <p>磁盘类型，CLOUD_HSSD增强型SSD,CLOUD_TCS本地SSD盘</p>
        # @type StorageType: String
        # @param Zones: <p>多可用区列表，Zones[0]表示主可用区</p>
        # @type Zones: Array
        # @param FullReplications: <p>全能型副本数</p>
        # @type FullReplications: Integer
        # @param InstanceMode: <p>实例模式，normal：标准型；enhanced:加强型</p>
        # @type InstanceMode: String
        # @param SecurityGroupIds: <p>安全组id列表</p>
        # @type SecurityGroupIds: Array

        attr_accessor :Zone, :VpcId, :SubnetId, :SpecCode, :Disk, :StorageNodeNum, :InstanceId, :InstanceName, :ResourceTags, :BackupName, :StorageNodeCpu, :StorageNodeMem, :CreateVersion, :Vport, :RecoverTime, :InstanceType, :StorageType, :Zones, :FullReplications, :InstanceMode, :SecurityGroupIds

        def initialize(zone=nil, vpcid=nil, subnetid=nil, speccode=nil, disk=nil, storagenodenum=nil, instanceid=nil, instancename=nil, resourcetags=nil, backupname=nil, storagenodecpu=nil, storagenodemem=nil, createversion=nil, vport=nil, recovertime=nil, instancetype=nil, storagetype=nil, zones=nil, fullreplications=nil, instancemode=nil, securitygroupids=nil)
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @SpecCode = speccode
          @Disk = disk
          @StorageNodeNum = storagenodenum
          @InstanceId = instanceid
          @InstanceName = instancename
          @ResourceTags = resourcetags
          @BackupName = backupname
          @StorageNodeCpu = storagenodecpu
          @StorageNodeMem = storagenodemem
          @CreateVersion = createversion
          @Vport = vport
          @RecoverTime = recovertime
          @InstanceType = instancetype
          @StorageType = storagetype
          @Zones = zones
          @FullReplications = fullreplications
          @InstanceMode = instancemode
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @SpecCode = params['SpecCode']
          @Disk = params['Disk']
          @StorageNodeNum = params['StorageNodeNum']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @BackupName = params['BackupName']
          @StorageNodeCpu = params['StorageNodeCpu']
          @StorageNodeMem = params['StorageNodeMem']
          @CreateVersion = params['CreateVersion']
          @Vport = params['Vport']
          @RecoverTime = params['RecoverTime']
          @InstanceType = params['InstanceType']
          @StorageType = params['StorageType']
          @Zones = params['Zones']
          @FullReplications = params['FullReplications']
          @InstanceMode = params['InstanceMode']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # CreateCloneInstance返回参数结构体
      class CreateCloneInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>克隆实例ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param FlowId: <p>任务ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :FlowId, :RequestId

        def initialize(instanceid=nil, flowid=nil, requestid=nil)
          @InstanceId = instanceid
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDBInstances请求参数结构体
      class CreateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: <p>创建实例区域</p>
        # @type Zone: String
        # @param VpcId: <p>字符型vpcid</p>
        # @type VpcId: String
        # @param SubnetId: <p>字符型subnetid</p>
        # @type SubnetId: String
        # @param SpecCode: <p>购买规格</p>
        # @type SpecCode: String
        # @param Disk: <p>存储节点磁盘容量，单位GB</p>
        # @type Disk: Integer
        # @param StorageNodeNum: <p>存储节点数量</p>
        # @type StorageNodeNum: Integer
        # @param Replications: <p>存储节点副本数量，最大为5，要求为奇数</p>
        # @type Replications: Integer
        # @param InstanceCount: <p>创建实例个数，上限为10</p>
        # @type InstanceCount: Integer
        # @param FullReplications: <p>全能型副本数量</p>
        # @type FullReplications: Integer
        # @param CreateVersion: <p>创建实例版本，默认使用当前最新版本</p>
        # @type CreateVersion: String
        # @param InstanceName: <p>实例名称，要求长度1-60，允许包含中文、英文大小写、数字、-、_</p>
        # @type InstanceName: String
        # @param ResourceTags: <p>标签键值对数组</p>
        # @type ResourceTags: Array
        # @param InitParams: <p>初始化实例参数。比如：<br>character_set_server（字符集，默认为utf8），<br>lower_case_table_names（表名大小写敏感，0 - 敏感；1-不敏感，默认为0）</p>
        # @type InitParams: Array
        # @param TimeUnit: <p>时间单位，m：月</p>
        # @type TimeUnit: String
        # @param TimeSpan: <p>商品的时间大小</p>
        # @type TimeSpan: Integer
        # @param StorageNodeCpu: <p>存储节点CPU核数</p>
        # @type StorageNodeCpu: Integer
        # @param StorageNodeMem: <p>存储节点内存大小</p>
        # @type StorageNodeMem: Integer
        # @param PayMode: <p>付费模式，0表示按需计费/后付费，1表示预付费</p>
        # @type PayMode: String
        # @param MCNum: <p>管控节点数量</p>
        # @type MCNum: Integer
        # @param Vport: <p>自定义端口</p>
        # @type Vport: Integer
        # @param Zones: <p>多AZ可用区列表</p>
        # @type Zones: Array
        # @param AutoVoucher: <p>是否使用优惠卷</p>
        # @type AutoVoucher: Boolean
        # @param VoucherIds: <p>优惠卷列表</p>
        # @type VoucherIds: Array
        # @param InstanceType: <p>实例架构类型，separate:分离架构；hybrid:对等架构</p>
        # @type InstanceType: String
        # @param StorageType: <p>磁盘类型,CLOUD_HSSD增强型SSD,CLOUD_TCS本地SSD盘</p>
        # @type StorageType: String
        # @param AZMode: <p>AZ模式，1:单AZ，2:多AZ非主AZ，3:多AZ主AZ</p>
        # @type AZMode: Integer
        # @param InstanceMode: <p>实例模式</p>
        # @type InstanceMode: String
        # @param TemplateId: <p>参数模板id</p>
        # @type TemplateId: String
        # @param SQLMode: <p>兼容模式，enum:MySQL,HBase</p>
        # @type SQLMode: String
        # @param AutoScaleConfig: <p>svls实例的ccu变配配置</p>
        # @type AutoScaleConfig: :class:`Tencentcloud::Tdmysql.v20211122.models.AutoScalingConfig`
        # @param SecurityGroupIds: <p>绑定安全组列表</p>
        # @type SecurityGroupIds: Array
        # @param UserName: <p>root用户名,当前版本默认为dbaadmin，传值也会重置为dbaadmin</p>
        # @type UserName: String
        # @param Password: <p>dbaadmin密码</p>
        # @type Password: String
        # @param EncryptionEnable: <p>是否开启透明加密，0：不开启，1：开启</p>
        # @type EncryptionEnable: Integer

        attr_accessor :Zone, :VpcId, :SubnetId, :SpecCode, :Disk, :StorageNodeNum, :Replications, :InstanceCount, :FullReplications, :CreateVersion, :InstanceName, :ResourceTags, :InitParams, :TimeUnit, :TimeSpan, :StorageNodeCpu, :StorageNodeMem, :PayMode, :MCNum, :Vport, :Zones, :AutoVoucher, :VoucherIds, :InstanceType, :StorageType, :AZMode, :InstanceMode, :TemplateId, :SQLMode, :AutoScaleConfig, :SecurityGroupIds, :UserName, :Password, :EncryptionEnable

        def initialize(zone=nil, vpcid=nil, subnetid=nil, speccode=nil, disk=nil, storagenodenum=nil, replications=nil, instancecount=nil, fullreplications=nil, createversion=nil, instancename=nil, resourcetags=nil, initparams=nil, timeunit=nil, timespan=nil, storagenodecpu=nil, storagenodemem=nil, paymode=nil, mcnum=nil, vport=nil, zones=nil, autovoucher=nil, voucherids=nil, instancetype=nil, storagetype=nil, azmode=nil, instancemode=nil, templateid=nil, sqlmode=nil, autoscaleconfig=nil, securitygroupids=nil, username=nil, password=nil, encryptionenable=nil)
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @SpecCode = speccode
          @Disk = disk
          @StorageNodeNum = storagenodenum
          @Replications = replications
          @InstanceCount = instancecount
          @FullReplications = fullreplications
          @CreateVersion = createversion
          @InstanceName = instancename
          @ResourceTags = resourcetags
          @InitParams = initparams
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @StorageNodeCpu = storagenodecpu
          @StorageNodeMem = storagenodemem
          @PayMode = paymode
          @MCNum = mcnum
          @Vport = vport
          @Zones = zones
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @InstanceType = instancetype
          @StorageType = storagetype
          @AZMode = azmode
          @InstanceMode = instancemode
          @TemplateId = templateid
          @SQLMode = sqlmode
          @AutoScaleConfig = autoscaleconfig
          @SecurityGroupIds = securitygroupids
          @UserName = username
          @Password = password
          @EncryptionEnable = encryptionenable
        end

        def deserialize(params)
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @SpecCode = params['SpecCode']
          @Disk = params['Disk']
          @StorageNodeNum = params['StorageNodeNum']
          @Replications = params['Replications']
          @InstanceCount = params['InstanceCount']
          @FullReplications = params['FullReplications']
          @CreateVersion = params['CreateVersion']
          @InstanceName = params['InstanceName']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          unless params['InitParams'].nil?
            @InitParams = []
            params['InitParams'].each do |i|
              instanceparam_tmp = InstanceParam.new
              instanceparam_tmp.deserialize(i)
              @InitParams << instanceparam_tmp
            end
          end
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          @StorageNodeCpu = params['StorageNodeCpu']
          @StorageNodeMem = params['StorageNodeMem']
          @PayMode = params['PayMode']
          @MCNum = params['MCNum']
          @Vport = params['Vport']
          @Zones = params['Zones']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @InstanceType = params['InstanceType']
          @StorageType = params['StorageType']
          @AZMode = params['AZMode']
          @InstanceMode = params['InstanceMode']
          @TemplateId = params['TemplateId']
          @SQLMode = params['SQLMode']
          unless params['AutoScaleConfig'].nil?
            @AutoScaleConfig = AutoScalingConfig.new
            @AutoScaleConfig.deserialize(params['AutoScaleConfig'])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
          @UserName = params['UserName']
          @Password = params['Password']
          @EncryptionEnable = params['EncryptionEnable']
        end
      end

      # CreateDBInstances返回参数结构体
      class CreateDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceIds: <p>实例ID</p>
        # @type InstanceIds: Array
        # @param FlowId: <p>任务ID</p>
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceIds, :FlowId, :RequestId

        def initialize(instanceids=nil, flowid=nil, requestid=nil)
          @InstanceIds = instanceids
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDBSBackup请求参数结构体
      class CreateDBSBackupRequest < TencentCloud::Common::AbstractModel
        # @param BackupMethod: <p>备份方式：physical、snapshot 这个值和DescribeDBSBackupPolicy接口返回的backupMethod保持一致</p><p>枚举值：</p><ul><li>physical： 物理备份</li><li>snapshot： 快照备份</li></ul>
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

      # CreateUsers请求参数结构体
      class CreateUsersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例id</p>
        # @type InstanceId: String
        # @param Users: <p>新增用户列表</p>
        # @type Users: Array
        # @param Password: <p>未加密密码</p>
        # @type Password: String
        # @param EncryptedPassword: <p>加密密码</p>
        # @type EncryptedPassword: String
        # @param Description: <p>用户描述</p>
        # @type Description: String

        attr_accessor :InstanceId, :Users, :Password, :EncryptedPassword, :Description

        def initialize(instanceid=nil, users=nil, password=nil, encryptedpassword=nil, description=nil)
          @InstanceId = instanceid
          @Users = users
          @Password = password
          @EncryptedPassword = encryptedpassword
          @Description = description
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              user_tmp = User.new
              user_tmp.deserialize(i)
              @Users << user_tmp
            end
          end
          @Password = params['Password']
          @EncryptedPassword = params['EncryptedPassword']
          @Description = params['Description']
        end
      end

      # CreateUsers返回参数结构体
      class CreateUsersResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: <p>任务id</p>
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

      # 数据备份统计对象
      class DataBackupStatisticsModel < TencentCloud::Common::AbstractModel
        # @param AutoBackupCount: 自动备份个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoBackupCount: Integer
        # @param AutoBackupSize: 自动备份大小，单位Byte
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoBackupSize: Integer
        # @param AverageSizePerBackup: 平均每个备份大小,单位Byte
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AverageSizePerBackup: Integer
        # @param AverageSizePerDay: 平均每天备份大小,单位Byte
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AverageSizePerDay: Integer
        # @param ManualBackupCount: 手工备份个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManualBackupCount: Integer
        # @param ManualBackupSize: 手工备份大小，单位Byte
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManualBackupSize: Integer
        # @param TotalCount: 数据备份个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalSize: 数据备份大小，单位Byte
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSize: Integer

        attr_accessor :AutoBackupCount, :AutoBackupSize, :AverageSizePerBackup, :AverageSizePerDay, :ManualBackupCount, :ManualBackupSize, :TotalCount, :TotalSize

        def initialize(autobackupcount=nil, autobackupsize=nil, averagesizeperbackup=nil, averagesizeperday=nil, manualbackupcount=nil, manualbackupsize=nil, totalcount=nil, totalsize=nil)
          @AutoBackupCount = autobackupcount
          @AutoBackupSize = autobackupsize
          @AverageSizePerBackup = averagesizeperbackup
          @AverageSizePerDay = averagesizeperday
          @ManualBackupCount = manualbackupcount
          @ManualBackupSize = manualbackupsize
          @TotalCount = totalcount
          @TotalSize = totalsize
        end

        def deserialize(params)
          @AutoBackupCount = params['AutoBackupCount']
          @AutoBackupSize = params['AutoBackupSize']
          @AverageSizePerBackup = params['AverageSizePerBackup']
          @AverageSizePerDay = params['AverageSizePerDay']
          @ManualBackupCount = params['ManualBackupCount']
          @ManualBackupSize = params['ManualBackupSize']
          @TotalCount = params['TotalCount']
          @TotalSize = params['TotalSize']
        end
      end

      # 数据库信息
      class Database < TencentCloud::Common::AbstractModel
        # @param DbName: 数据库名称
        # @type DbName: String

        attr_accessor :DbName

        def initialize(dbname=nil)
          @DbName = dbname
        end

        def deserialize(params)
          @DbName = params['DbName']
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

      # Database级别权限列表
      class DatabasePrivileges < TencentCloud::Common::AbstractModel
        # @param Database: database名
        # @type Database: String
        # @param Privileges: 权限列表
        # @type Privileges: Array

        attr_accessor :Database, :Privileges

        def initialize(database=nil, privileges=nil)
          @Database = database
          @Privileges = privileges
        end

        def deserialize(params)
          @Database = params['Database']
          @Privileges = params['Privileges']
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

      # DeleteUsers请求参数结构体
      class DeleteUsersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例id</p>
        # @type InstanceId: String
        # @param Users: <p>批量删除用户列表</p>
        # @type Users: Array

        attr_accessor :InstanceId, :Users

        def initialize(instanceid=nil, users=nil)
          @InstanceId = instanceid
          @Users = users
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              user_tmp = User.new
              user_tmp.deserialize(i)
              @Users << user_tmp
            end
          end
        end
      end

      # DeleteUsers返回参数结构体
      class DeleteUsersResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: <p>任务id</p>
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

      # DescribeDBInstanceDetail请求参数结构体
      class DescribeDBInstanceDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBInstanceDetail返回参数结构体
      class DescribeDBInstanceDetailResponse < TencentCloud::Common::AbstractModel
        # @param InstanceName: <p>实例名称</p>
        # @type InstanceName: String
        # @param Zone: <p>区域</p>
        # @type Zone: String
        # @param VpcId: <p>字符型vpcid</p>
        # @type VpcId: String
        # @param SubnetId: <p>字符型subnetid</p>
        # @type SubnetId: String
        # @param CreateVersion: <p>创建实例版本</p>
        # @type CreateVersion: String
        # @param Vip: <p>子网IP</p>
        # @type Vip: String
        # @param Vport: <p>子网端口</p>
        # @type Vport: Integer
        # @param Status: <p>实例状态</p>
        # @type Status: String
        # @param Disk: <p>存储节点磁盘容量，单位GB</p>
        # @type Disk: Integer
        # @param StorageNodeNum: <p>存储节点数量</p>
        # @type StorageNodeNum: Integer
        # @param InitParams: <p>初始化实例参数</p>
        # @type InitParams: Array
        # @param ResourceTags: <p>实例标签信息</p>
        # @type ResourceTags: Array
        # @param CreateTime: <p>创建时间</p>
        # @type CreateTime: String
        # @param UpdateTime: <p>更新时间</p>
        # @type UpdateTime: String
        # @param Replications: <p>存储节点副本数量</p>
        # @type Replications: Integer
        # @param FullReplications: <p>全能型副本数</p>
        # @type FullReplications: Integer
        # @param CharSet: <p>字符集</p>
        # @type CharSet: String
        # @param Node: <p>节点信息</p>
        # @type Node: Array
        # @param Region: <p>实例所属地域</p>
        # @type Region: String
        # @param SpecCode: <p>实例规格</p>
        # @type SpecCode: String
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param StatusDesc: <p>实例状态中文描述</p>
        # @type StatusDesc: String
        # @param StorageNodeCpu: <p>存储节点CPU核数</p>
        # @type StorageNodeCpu: Integer
        # @param StorageNodeMem: <p>存储节点内存大小</p>
        # @type StorageNodeMem: Integer
        # @param RenewFlag: <p>续费标志</p>
        # @type RenewFlag: Integer
        # @param PayMode: <p>付费模式，0后付费，1预付费</p>
        # @type PayMode: String
        # @param ExpireAt: <p>过期时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireAt: String
        # @param IsolatedAt: <p>隔离时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolatedAt: String
        # @param InstanceType: <p>实例架构类型，separate:分离架构；hybrid:对等架构</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param StorageType: <p>磁盘类型，CLOUD_HSSD增强型SSD,CLOUD_TCS本地SSD盘</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageType: String
        # @param Zones: <p>实例节点可用区列表。Zones[0]表示主可用区</p>
        # @type Zones: Array
        # @param DiskUsage: <p>最大节点磁盘使用量</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskUsage: Integer
        # @param BinlogStatus: <p>binlog是否开启</p>
        # @type BinlogStatus: Integer
        # @param AZMode: <p>az模式，1: 单AZ 2: 多AZ非主AZ模式 3: 多AZ主AZ模式</p>
        # @type AZMode: Integer
        # @param StandbyFlag: <p>灾备标志位，1: 无灾备关系；2: 灾备主实例；3: 灾备备实例</p>
        # @type StandbyFlag: Integer
        # @param BinlogType: <p>cdc节点类型</p>
        # @type BinlogType: String
        # @param TimingModifyInstanceFlag: <p>1表示支持，0表示不支持</p>
        # @type TimingModifyInstanceFlag: Integer
        # @param ColumnarNodeCpu: <p>列存节点cpu核数</p>
        # @type ColumnarNodeCpu: Integer
        # @param ColumnarNodeMem: <p>列存节点mem内存大小</p>
        # @type ColumnarNodeMem: Integer
        # @param ColumnarNodeNum: <p>列存节点个数</p>
        # @type ColumnarNodeNum: Integer
        # @param ColumnarNodeDisk: <p>列存节点磁盘大小</p>
        # @type ColumnarNodeDisk: Integer
        # @param ColumnarNodeStorageType: <p>列存节点磁盘类型</p>
        # @type ColumnarNodeStorageType: String
        # @param ColumnarNodeSpecCode: <p>列存节点规格</p>
        # @type ColumnarNodeSpecCode: String
        # @param ColumnarVip: <p>列存 vip</p>
        # @type ColumnarVip: String
        # @param ColumnarVport: <p>列存 vport</p>
        # @type ColumnarVport: Integer
        # @param IsSupportColumnar: <p>实例是否支持列存</p>
        # @type IsSupportColumnar: Boolean
        # @param InstanceCategory: <p>实例类型</p>
        # @type InstanceCategory: Integer
        # @param SQLMode: <p>兼容模式</p>
        # @type SQLMode: String
        # @param IsSwitchFullReplicationsEnable: <p>是否支持修改全能型副本数量</p>
        # @type IsSwitchFullReplicationsEnable: Boolean
        # @param InstanceMode: <p>实例类型</p>
        # @type InstanceMode: String
        # @param DumperVip: <p>dumper vip</p>
        # @type DumperVip: String
        # @param DumperVport: <p>dumper vport</p>
        # @type DumperVport: Integer
        # @param AutoScaleConfig: <p>svls实例的ccu变配范围</p>
        # @type AutoScaleConfig: :class:`Tencentcloud::Tdmysql.v20211122.models.AutoScalingConfig`
        # @param TemplateId: <p>参数模板id</p>
        # @type TemplateId: String
        # @param TemplateName: <p>参数模板名称</p>
        # @type TemplateName: String
        # @param AnalysisMode: <p>实例分析引擎模式</p><p>枚举值：</p><ul><li>libra： LibraDB分析引擎实例</li></ul>
        # @type AnalysisMode: String
        # @param AnalysisRelationInfos: <p>分析引擎实例关系</p>
        # @type AnalysisRelationInfos: Array
        # @param AnalysisInstanceInfo: <p>分析引擎实例信息</p><p>Cpu、Memory、Disk复用顶层字段</p>
        # @type AnalysisInstanceInfo: :class:`Tencentcloud::Tdmysql.v20211122.models.AnalysisInstanceInfo`
        # @param MaintenanceWindow: <p>维护窗口配置</p>
        # @type MaintenanceWindow: :class:`Tencentcloud::Tdmysql.v20211122.models.MaintenanceWindowInfo`
        # @param EncryptionEnable: <p>是否开启透明加密，0：未开启；1：已开启</p>
        # @type EncryptionEnable: Integer
        # @param EncryptionKmsRegion: <p>真实使用的kms地域，用于后续调用kms服务</p>
        # @type EncryptionKmsRegion: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceName, :Zone, :VpcId, :SubnetId, :CreateVersion, :Vip, :Vport, :Status, :Disk, :StorageNodeNum, :InitParams, :ResourceTags, :CreateTime, :UpdateTime, :Replications, :FullReplications, :CharSet, :Node, :Region, :SpecCode, :InstanceId, :StatusDesc, :StorageNodeCpu, :StorageNodeMem, :RenewFlag, :PayMode, :ExpireAt, :IsolatedAt, :InstanceType, :StorageType, :Zones, :DiskUsage, :BinlogStatus, :AZMode, :StandbyFlag, :BinlogType, :TimingModifyInstanceFlag, :ColumnarNodeCpu, :ColumnarNodeMem, :ColumnarNodeNum, :ColumnarNodeDisk, :ColumnarNodeStorageType, :ColumnarNodeSpecCode, :ColumnarVip, :ColumnarVport, :IsSupportColumnar, :InstanceCategory, :SQLMode, :IsSwitchFullReplicationsEnable, :InstanceMode, :DumperVip, :DumperVport, :AutoScaleConfig, :TemplateId, :TemplateName, :AnalysisMode, :AnalysisRelationInfos, :AnalysisInstanceInfo, :MaintenanceWindow, :EncryptionEnable, :EncryptionKmsRegion, :RequestId

        def initialize(instancename=nil, zone=nil, vpcid=nil, subnetid=nil, createversion=nil, vip=nil, vport=nil, status=nil, disk=nil, storagenodenum=nil, initparams=nil, resourcetags=nil, createtime=nil, updatetime=nil, replications=nil, fullreplications=nil, charset=nil, node=nil, region=nil, speccode=nil, instanceid=nil, statusdesc=nil, storagenodecpu=nil, storagenodemem=nil, renewflag=nil, paymode=nil, expireat=nil, isolatedat=nil, instancetype=nil, storagetype=nil, zones=nil, diskusage=nil, binlogstatus=nil, azmode=nil, standbyflag=nil, binlogtype=nil, timingmodifyinstanceflag=nil, columnarnodecpu=nil, columnarnodemem=nil, columnarnodenum=nil, columnarnodedisk=nil, columnarnodestoragetype=nil, columnarnodespeccode=nil, columnarvip=nil, columnarvport=nil, issupportcolumnar=nil, instancecategory=nil, sqlmode=nil, isswitchfullreplicationsenable=nil, instancemode=nil, dumpervip=nil, dumpervport=nil, autoscaleconfig=nil, templateid=nil, templatename=nil, analysismode=nil, analysisrelationinfos=nil, analysisinstanceinfo=nil, maintenancewindow=nil, encryptionenable=nil, encryptionkmsregion=nil, requestid=nil)
          @InstanceName = instancename
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @CreateVersion = createversion
          @Vip = vip
          @Vport = vport
          @Status = status
          @Disk = disk
          @StorageNodeNum = storagenodenum
          @InitParams = initparams
          @ResourceTags = resourcetags
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Replications = replications
          @FullReplications = fullreplications
          @CharSet = charset
          @Node = node
          @Region = region
          @SpecCode = speccode
          @InstanceId = instanceid
          @StatusDesc = statusdesc
          @StorageNodeCpu = storagenodecpu
          @StorageNodeMem = storagenodemem
          @RenewFlag = renewflag
          @PayMode = paymode
          @ExpireAt = expireat
          @IsolatedAt = isolatedat
          @InstanceType = instancetype
          @StorageType = storagetype
          @Zones = zones
          @DiskUsage = diskusage
          @BinlogStatus = binlogstatus
          @AZMode = azmode
          @StandbyFlag = standbyflag
          @BinlogType = binlogtype
          @TimingModifyInstanceFlag = timingmodifyinstanceflag
          @ColumnarNodeCpu = columnarnodecpu
          @ColumnarNodeMem = columnarnodemem
          @ColumnarNodeNum = columnarnodenum
          @ColumnarNodeDisk = columnarnodedisk
          @ColumnarNodeStorageType = columnarnodestoragetype
          @ColumnarNodeSpecCode = columnarnodespeccode
          @ColumnarVip = columnarvip
          @ColumnarVport = columnarvport
          @IsSupportColumnar = issupportcolumnar
          @InstanceCategory = instancecategory
          @SQLMode = sqlmode
          @IsSwitchFullReplicationsEnable = isswitchfullreplicationsenable
          @InstanceMode = instancemode
          @DumperVip = dumpervip
          @DumperVport = dumpervport
          @AutoScaleConfig = autoscaleconfig
          @TemplateId = templateid
          @TemplateName = templatename
          @AnalysisMode = analysismode
          @AnalysisRelationInfos = analysisrelationinfos
          @AnalysisInstanceInfo = analysisinstanceinfo
          @MaintenanceWindow = maintenancewindow
          @EncryptionEnable = encryptionenable
          @EncryptionKmsRegion = encryptionkmsregion
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @CreateVersion = params['CreateVersion']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @Status = params['Status']
          @Disk = params['Disk']
          @StorageNodeNum = params['StorageNodeNum']
          unless params['InitParams'].nil?
            @InitParams = []
            params['InitParams'].each do |i|
              instanceparam_tmp = InstanceParam.new
              instanceparam_tmp.deserialize(i)
              @InitParams << instanceparam_tmp
            end
          end
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Replications = params['Replications']
          @FullReplications = params['FullReplications']
          @CharSet = params['CharSet']
          unless params['Node'].nil?
            @Node = []
            params['Node'].each do |i|
              nodeinfo_tmp = NodeInfo.new
              nodeinfo_tmp.deserialize(i)
              @Node << nodeinfo_tmp
            end
          end
          @Region = params['Region']
          @SpecCode = params['SpecCode']
          @InstanceId = params['InstanceId']
          @StatusDesc = params['StatusDesc']
          @StorageNodeCpu = params['StorageNodeCpu']
          @StorageNodeMem = params['StorageNodeMem']
          @RenewFlag = params['RenewFlag']
          @PayMode = params['PayMode']
          @ExpireAt = params['ExpireAt']
          @IsolatedAt = params['IsolatedAt']
          @InstanceType = params['InstanceType']
          @StorageType = params['StorageType']
          @Zones = params['Zones']
          @DiskUsage = params['DiskUsage']
          @BinlogStatus = params['BinlogStatus']
          @AZMode = params['AZMode']
          @StandbyFlag = params['StandbyFlag']
          @BinlogType = params['BinlogType']
          @TimingModifyInstanceFlag = params['TimingModifyInstanceFlag']
          @ColumnarNodeCpu = params['ColumnarNodeCpu']
          @ColumnarNodeMem = params['ColumnarNodeMem']
          @ColumnarNodeNum = params['ColumnarNodeNum']
          @ColumnarNodeDisk = params['ColumnarNodeDisk']
          @ColumnarNodeStorageType = params['ColumnarNodeStorageType']
          @ColumnarNodeSpecCode = params['ColumnarNodeSpecCode']
          @ColumnarVip = params['ColumnarVip']
          @ColumnarVport = params['ColumnarVport']
          @IsSupportColumnar = params['IsSupportColumnar']
          @InstanceCategory = params['InstanceCategory']
          @SQLMode = params['SQLMode']
          @IsSwitchFullReplicationsEnable = params['IsSwitchFullReplicationsEnable']
          @InstanceMode = params['InstanceMode']
          @DumperVip = params['DumperVip']
          @DumperVport = params['DumperVport']
          unless params['AutoScaleConfig'].nil?
            @AutoScaleConfig = AutoScalingConfig.new
            @AutoScaleConfig.deserialize(params['AutoScaleConfig'])
          end
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @AnalysisMode = params['AnalysisMode']
          unless params['AnalysisRelationInfos'].nil?
            @AnalysisRelationInfos = []
            params['AnalysisRelationInfos'].each do |i|
              analysisrelationinfo_tmp = AnalysisRelationInfo.new
              analysisrelationinfo_tmp.deserialize(i)
              @AnalysisRelationInfos << analysisrelationinfo_tmp
            end
          end
          unless params['AnalysisInstanceInfo'].nil?
            @AnalysisInstanceInfo = AnalysisInstanceInfo.new
            @AnalysisInstanceInfo.deserialize(params['AnalysisInstanceInfo'])
          end
          unless params['MaintenanceWindow'].nil?
            @MaintenanceWindow = MaintenanceWindowInfo.new
            @MaintenanceWindow.deserialize(params['MaintenanceWindow'])
          end
          @EncryptionEnable = params['EncryptionEnable']
          @EncryptionKmsRegion = params['EncryptionKmsRegion']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstances请求参数结构体
      class DescribeDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <p>过滤参数</p>
        # @type Filters: Array
        # @param Limit: <p>最大返回个数，默认为20，上限为100</p>
        # @type Limit: Integer
        # @param Offset: <p>偏移量，取Limit整数倍</p>
        # @type Offset: Integer
        # @param EngineType: <p>指定查询引擎类型</p><p>枚举值：</p><ul><li>libra： 列存引擎</li></ul>
        # @type EngineType: String

        attr_accessor :Filters, :Limit, :Offset, :EngineType

        def initialize(filters=nil, limit=nil, offset=nil, enginetype=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @EngineType = enginetype
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              instancefilter_tmp = InstanceFilter.new
              instancefilter_tmp.deserialize(i)
              @Filters << instancefilter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EngineType = params['EngineType']
        end
      end

      # DescribeDBInstances返回参数结构体
      class DescribeDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Instances: <p>返回实例列表信息</p>
        # @type Instances: Array
        # @param TotalCount: <p>满足条件总数量</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Instances, :TotalCount, :RequestId

        def initialize(instances=nil, totalcount=nil, requestid=nil)
          @Instances = instances
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @Instances << instanceinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
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

      # DescribeDBSArchiveLogs请求参数结构体
      class DescribeDBSArchiveLogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param ArchiveLogId: <p>日志记录ID</p>
        # @type ArchiveLogId: Integer
        # @param EndTime: <p>结束时间</p>
        # @type EndTime: String
        # @param FilterStatus: <p>备份状态：pending,running,success,failed</p>
        # @type FilterStatus: String
        # @param Limit: <p>条数限制</p>
        # @type Limit: Integer
        # @param Offset: <p>偏移量</p>
        # @type Offset: Integer
        # @param OrderBy: <p>排序字段，枚举：StartTime,EndTime,ExpiredTime,FileSize,BackupDuration</p>
        # @type OrderBy: String
        # @param OrderType: <p>排序方式：ASC：顺序, DESC：倒序</p>
        # @type OrderType: String
        # @param StartTime: <p>开始时间</p>
        # @type StartTime: String

        attr_accessor :InstanceId, :ArchiveLogId, :EndTime, :FilterStatus, :Limit, :Offset, :OrderBy, :OrderType, :StartTime

        def initialize(instanceid=nil, archivelogid=nil, endtime=nil, filterstatus=nil, limit=nil, offset=nil, orderby=nil, ordertype=nil, starttime=nil)
          @InstanceId = instanceid
          @ArchiveLogId = archivelogid
          @EndTime = endtime
          @FilterStatus = filterstatus
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderType = ordertype
          @StartTime = starttime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ArchiveLogId = params['ArchiveLogId']
          @EndTime = params['EndTime']
          @FilterStatus = params['FilterStatus']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @StartTime = params['StartTime']
        end
      end

      # DescribeDBSArchiveLogs返回参数结构体
      class DescribeDBSArchiveLogsResponse < TencentCloud::Common::AbstractModel
        # @param Items: <p>归档日志列表</p>
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
              archivelogmodel_tmp = ArchiveLogModel.new
              archivelogmodel_tmp.deserialize(i)
              @Items << archivelogmodel_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSAvailableRecoveryTime请求参数结构体
      class DescribeDBSAvailableRecoveryTimeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
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

      # DescribeDBSBackupPolicy请求参数结构体
      class DescribeDBSBackupPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBSBackupPolicy返回参数结构体
      class DescribeDBSBackupPolicyResponse < TencentCloud::Common::AbstractModel
        # @param Items: <p>备份策略列表</p>
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
              backuppolicymodeloutput_tmp = BackupPolicyModelOutPut.new
              backuppolicymodeloutput_tmp.deserialize(i)
              @Items << backuppolicymodeloutput_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSBackupSets请求参数结构体
      class DescribeDBSBackupSetsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param BackupSetId: <p>实例备份集ID</p>
        # @type BackupSetId: Integer
        # @param EndTime: <p>结束时间</p>
        # @type EndTime: String
        # @param FilterBy: <p>过滤条件</p>
        # @type FilterBy: :class:`Tencentcloud::Tdmysql.v20211122.models.BackupSetsReqFilter`
        # @param Limit: <p>单次查询数量[0,200]</p>
        # @type Limit: Integer
        # @param Offset: <p>本次查询偏移[0,INF]</p>
        # @type Offset: Integer
        # @param OrderBy: <p>StartTime,EndTime,ExpiredTime,BackupSetId,BackupDuration</p>
        # @type OrderBy: String
        # @param OrderType: <p>ASC,DESC</p>
        # @type OrderType: String
        # @param StartTime: <p>开始时间</p>
        # @type StartTime: String

        attr_accessor :InstanceId, :BackupSetId, :EndTime, :FilterBy, :Limit, :Offset, :OrderBy, :OrderType, :StartTime

        def initialize(instanceid=nil, backupsetid=nil, endtime=nil, filterby=nil, limit=nil, offset=nil, orderby=nil, ordertype=nil, starttime=nil)
          @InstanceId = instanceid
          @BackupSetId = backupsetid
          @EndTime = endtime
          @FilterBy = filterby
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderType = ordertype
          @StartTime = starttime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupSetId = params['BackupSetId']
          @EndTime = params['EndTime']
          unless params['FilterBy'].nil?
            @FilterBy = BackupSetsReqFilter.new
            @FilterBy.deserialize(params['FilterBy'])
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @StartTime = params['StartTime']
        end
      end

      # DescribeDBSBackupSets返回参数结构体
      class DescribeDBSBackupSetsResponse < TencentCloud::Common::AbstractModel
        # @param Items: <p>备份集列表</p>
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
              backupsetmodel_tmp = BackupSetModel.new
              backupsetmodel_tmp.deserialize(i)
              @Items << backupsetmodel_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSBackupStatisticsDetail请求参数结构体
      class DescribeDBSBackupStatisticsDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param EndTime: <p>结束时间</p>
        # @type EndTime: String
        # @param StartTime: <p>开始时间</p>
        # @type StartTime: String

        attr_accessor :InstanceId, :EndTime, :StartTime

        def initialize(instanceid=nil, endtime=nil, starttime=nil)
          @InstanceId = instanceid
          @EndTime = endtime
          @StartTime = starttime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @EndTime = params['EndTime']
          @StartTime = params['StartTime']
        end
      end

      # DescribeDBSBackupStatisticsDetail返回参数结构体
      class DescribeDBSBackupStatisticsDetailResponse < TencentCloud::Common::AbstractModel
        # @param BackupMethodStatistics: <p>按备份方式统计</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupMethodStatistics: :class:`Tencentcloud::Tdmysql.v20211122.models.BackupMethodStatisticsOutPut`
        # @param BackupTime: <p>备份时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupTime: Array
        # @param BackupTypeStatistics: <p>按备份数据类型统计</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupTypeStatistics: :class:`Tencentcloud::Tdmysql.v20211122.models.BackupTypeStatisticsModel`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupMethodStatistics, :BackupTime, :BackupTypeStatistics, :RequestId

        def initialize(backupmethodstatistics=nil, backuptime=nil, backuptypestatistics=nil, requestid=nil)
          @BackupMethodStatistics = backupmethodstatistics
          @BackupTime = backuptime
          @BackupTypeStatistics = backuptypestatistics
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BackupMethodStatistics'].nil?
            @BackupMethodStatistics = BackupMethodStatisticsOutPut.new
            @BackupMethodStatistics.deserialize(params['BackupMethodStatistics'])
          end
          @BackupTime = params['BackupTime']
          unless params['BackupTypeStatistics'].nil?
            @BackupTypeStatistics = BackupTypeStatisticsModel.new
            @BackupTypeStatistics.deserialize(params['BackupTypeStatistics'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSBackupStatistics请求参数结构体
      class DescribeDBSBackupStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param EndTime: <p>结束时间</p>
        # @type EndTime: String
        # @param StartTime: <p>开始时间</p>
        # @type StartTime: String

        attr_accessor :InstanceId, :EndTime, :StartTime

        def initialize(instanceid=nil, endtime=nil, starttime=nil)
          @InstanceId = instanceid
          @EndTime = endtime
          @StartTime = starttime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @EndTime = params['EndTime']
          @StartTime = params['StartTime']
        end
      end

      # DescribeDBSBackupStatistics返回参数结构体
      class DescribeDBSBackupStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param BackupMethodStatistics: <p>备份方式统计</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupMethodStatistics: :class:`Tencentcloud::Tdmysql.v20211122.models.BackupMethodStatisticsModel`
        # @param BackupStatistics: <p>总备份集统计</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupStatistics: :class:`Tencentcloud::Tdmysql.v20211122.models.BackupStatisticsModel`
        # @param DataBackupStatistics: <p>数据备份统计</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataBackupStatistics: :class:`Tencentcloud::Tdmysql.v20211122.models.DataBackupStatisticsModel`
        # @param LogBackupStatistics: <p>日志备份统计</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogBackupStatistics: :class:`Tencentcloud::Tdmysql.v20211122.models.LogBackupStatisticsModel`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupMethodStatistics, :BackupStatistics, :DataBackupStatistics, :LogBackupStatistics, :RequestId

        def initialize(backupmethodstatistics=nil, backupstatistics=nil, databackupstatistics=nil, logbackupstatistics=nil, requestid=nil)
          @BackupMethodStatistics = backupmethodstatistics
          @BackupStatistics = backupstatistics
          @DataBackupStatistics = databackupstatistics
          @LogBackupStatistics = logbackupstatistics
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BackupMethodStatistics'].nil?
            @BackupMethodStatistics = BackupMethodStatisticsModel.new
            @BackupMethodStatistics.deserialize(params['BackupMethodStatistics'])
          end
          unless params['BackupStatistics'].nil?
            @BackupStatistics = BackupStatisticsModel.new
            @BackupStatistics.deserialize(params['BackupStatistics'])
          end
          unless params['DataBackupStatistics'].nil?
            @DataBackupStatistics = DataBackupStatisticsModel.new
            @DataBackupStatistics.deserialize(params['DataBackupStatistics'])
          end
          unless params['LogBackupStatistics'].nil?
            @LogBackupStatistics = LogBackupStatisticsModel.new
            @LogBackupStatistics.deserialize(params['LogBackupStatistics'])
          end
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
        # @param InstanceId: <p>实例 ID，形如：tdsql3-42f40429.</p>
        # @type InstanceId: String
        # @param DbName: <p>数据库名称，通过 DescribeDatabases 接口获取。</p>
        # @type DbName: String
        # @param Offset: <p>分页索引</p>
        # @type Offset: Integer
        # @param Limit: <p>每页数量</p>
        # @type Limit: Integer
        # @param TableRegexp: <p>数据表名称匹配表达式</p>
        # @type TableRegexp: String

        attr_accessor :InstanceId, :DbName, :Offset, :Limit, :TableRegexp

        def initialize(instanceid=nil, dbname=nil, offset=nil, limit=nil, tableregexp=nil)
          @InstanceId = instanceid
          @DbName = dbname
          @Offset = offset
          @Limit = limit
          @TableRegexp = tableregexp
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DbName = params['DbName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TableRegexp = params['TableRegexp']
        end
      end

      # DescribeDatabaseObjects返回参数结构体
      class DescribeDatabaseObjectsResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>透传入参。</p>
        # @type InstanceId: String
        # @param DbName: <p>数据库名称。</p>
        # @type DbName: String
        # @param Tables: <p>表列表。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tables: Array
        # @param Views: <p>视图列表。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Views: Array
        # @param Procs: <p>存储过程列表。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Procs: Array
        # @param Funcs: <p>函数列表。</p>
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

      # DescribeDatabases请求参数结构体
      class DescribeDatabasesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例 ID，形如：tdsql3-ow7t8lmc。</p>
        # @type InstanceId: String
        # @param Offset: <p>分页索引</p>
        # @type Offset: Integer
        # @param Limit: <p>每页数量</p>
        # @type Limit: Integer
        # @param DatabaseRegexp: <p>数据库名称匹配表达式</p>
        # @type DatabaseRegexp: String

        attr_accessor :InstanceId, :Offset, :Limit, :DatabaseRegexp

        def initialize(instanceid=nil, offset=nil, limit=nil, databaseregexp=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @DatabaseRegexp = databaseregexp
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DatabaseRegexp = params['DatabaseRegexp']
        end
      end

      # DescribeDatabases返回参数结构体
      class DescribeDatabasesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>透传实例ID</p>
        # @type InstanceId: String
        # @param Databases: <p>该实例上的数据库列表。</p>
        # @type Databases: Array
        # @param TotalCount: <p>总数量</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Databases, :TotalCount, :RequestId

        def initialize(instanceid=nil, databases=nil, totalcount=nil, requestid=nil)
          @InstanceId = instanceid
          @Databases = databases
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Databases'].nil?
            @Databases = []
            params['Databases'].each do |i|
              database_tmp = Database.new
              database_tmp.deserialize(i)
              @Databases << database_tmp
            end
          end
          @TotalCount = params['TotalCount']
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

      # DescribeInstanceSSLStatus请求参数结构体
      class DescribeInstanceSSLStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceSSLStatus返回参数结构体
      class DescribeInstanceSSLStatusResponse < TencentCloud::Common::AbstractModel
        # @param SSLStatus: <p>SSL启用状态</p><p>枚举值：</p><ul><li>Enabled： SSL已开启</li><li>Disabled： SSL已关闭</li><li>Enabling： SSL开启中</li><li>Disabling： SSL关闭中</li></ul>
        # @type SSLStatus: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SSLStatus, :RequestId

        def initialize(sslstatus=nil, requestid=nil)
          @SSLStatus = sslstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @SSLStatus = params['SSLStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMaintenanceWindow请求参数结构体
      class DescribeMaintenanceWindowRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeMaintenanceWindow返回参数结构体
      class DescribeMaintenanceWindowResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param MaintenanceWindow: <p>运维窗口时间范围</p>
        # @type MaintenanceWindow: String
        # @param WeekDays: <p>运维窗口天数范围</p>
        # @type WeekDays: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :MaintenanceWindow, :WeekDays, :RequestId

        def initialize(instanceid=nil, maintenancewindow=nil, weekdays=nil, requestid=nil)
          @InstanceId = instanceid
          @MaintenanceWindow = maintenancewindow
          @WeekDays = weekdays
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @MaintenanceWindow = params['MaintenanceWindow']
          @WeekDays = params['WeekDays']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSaleInfo请求参数结构体
      class DescribeSaleInfoRequest < TencentCloud::Common::AbstractModel
        # @param SrcRegion: <p>灾备主实例地域</p>
        # @type SrcRegion: String
        # @param InstanceId: <p>实例id</p><p>传入此参数表示返回这个实例所在的地域可用区的售卖信息</p>
        # @type InstanceId: String
        # @param InstanceType: <p>指定支持某种类型实例的 sale 信息</p><p>枚举值：</p><ul><li>serverless： 返回支持 serverless 型实例的所有 region</li></ul><p>默认值：无</p><p>当前仅支持指定 serverless，传入其他信息或者不传则默认返回所有售卖地域信息</p>
        # @type InstanceType: String

        attr_accessor :SrcRegion, :InstanceId, :InstanceType

        def initialize(srcregion=nil, instanceid=nil, instancetype=nil)
          @SrcRegion = srcregion
          @InstanceId = instanceid
          @InstanceType = instancetype
        end

        def deserialize(params)
          @SrcRegion = params['SrcRegion']
          @InstanceId = params['InstanceId']
          @InstanceType = params['InstanceType']
        end
      end

      # DescribeSaleInfo返回参数结构体
      class DescribeSaleInfoResponse < TencentCloud::Common::AbstractModel
        # @param RegionList: <p>返回可售卖region信息</p>
        # @type RegionList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegionList, :RequestId

        def initialize(regionlist=nil, requestid=nil)
          @RegionList = regionlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              describesaleregioninfo_tmp = DescribeSaleRegionInfo.new
              describesaleregioninfo_tmp.deserialize(i)
              @RegionList << describesaleregioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询售卖接口，region信息返回类型
      class DescribeSaleRegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: <p>Region英文字符串</p>
        # @type Region: String
        # @param ZoneList: <p>售卖Zone列表</p>
        # @type ZoneList: Array
        # @param RegionName: <p>Region中文字符串</p>
        # @type RegionName: String
        # @param Enable: <p>是否售卖。1:售卖，0不售卖</p>
        # @type Enable: Integer
        # @param AvailableZoneNum: <p>多可用可选数量</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableZoneNum: Integer
        # @param IsSupportedLogReplica: <p>是否允许使用日志副本</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSupportedLogReplica: Boolean
        # @param ZoneGroup: <p>可用区组合</p>
        # @type ZoneGroup: Array
        # @param IsSupportServerless: <p>是否支持serverless</p>
        # @type IsSupportServerless: Boolean

        attr_accessor :Region, :ZoneList, :RegionName, :Enable, :AvailableZoneNum, :IsSupportedLogReplica, :ZoneGroup, :IsSupportServerless

        def initialize(region=nil, zonelist=nil, regionname=nil, enable=nil, availablezonenum=nil, issupportedlogreplica=nil, zonegroup=nil, issupportserverless=nil)
          @Region = region
          @ZoneList = zonelist
          @RegionName = regionname
          @Enable = enable
          @AvailableZoneNum = availablezonenum
          @IsSupportedLogReplica = issupportedlogreplica
          @ZoneGroup = zonegroup
          @IsSupportServerless = issupportserverless
        end

        def deserialize(params)
          @Region = params['Region']
          unless params['ZoneList'].nil?
            @ZoneList = []
            params['ZoneList'].each do |i|
              describesalezonesinfo_tmp = DescribeSaleZonesInfo.new
              describesalezonesinfo_tmp.deserialize(i)
              @ZoneList << describesalezonesinfo_tmp
            end
          end
          @RegionName = params['RegionName']
          @Enable = params['Enable']
          @AvailableZoneNum = params['AvailableZoneNum']
          @IsSupportedLogReplica = params['IsSupportedLogReplica']
          unless params['ZoneGroup'].nil?
            @ZoneGroup = []
            params['ZoneGroup'].each do |i|
              describesalezonesgroup_tmp = DescribeSaleZonesGroup.new
              describesalezonesgroup_tmp.deserialize(i)
              @ZoneGroup << describesalezonesgroup_tmp
            end
          end
          @IsSupportServerless = params['IsSupportServerless']
        end
      end

      # 查询售卖地域，提供推荐的可用区组合
      class DescribeSaleZonesGroup < TencentCloud::Common::AbstractModel
        # @param ZoneNum: <p>可用区数</p>
        # @type ZoneNum: Integer
        # @param Zones: <p>可用区组合</p>
        # @type Zones: Array
        # @param SupportTypes: <p>支持的类型</p>
        # @type SupportTypes: Array
        # @param AvailableDiskTypes: <p>支持的磁盘类型</p><p>枚举值：</p><ul><li>CLOUD_TCS： 本地盘</li><li>CLOUD_HSSD： 增强型云盘</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableDiskTypes: Array
        # @param IsSupportServerless: <p>是否支持serverless</p>
        # @type IsSupportServerless: Boolean

        attr_accessor :ZoneNum, :Zones, :SupportTypes, :AvailableDiskTypes, :IsSupportServerless

        def initialize(zonenum=nil, zones=nil, supporttypes=nil, availabledisktypes=nil, issupportserverless=nil)
          @ZoneNum = zonenum
          @Zones = zones
          @SupportTypes = supporttypes
          @AvailableDiskTypes = availabledisktypes
          @IsSupportServerless = issupportserverless
        end

        def deserialize(params)
          @ZoneNum = params['ZoneNum']
          @Zones = params['Zones']
          @SupportTypes = params['SupportTypes']
          @AvailableDiskTypes = params['AvailableDiskTypes']
          @IsSupportServerless = params['IsSupportServerless']
        end
      end

      # 查询售卖接口，zone信息返回类型
      class DescribeSaleZonesInfo < TencentCloud::Common::AbstractModel
        # @param Zone: <p>Zone英文字符串</p>
        # @type Zone: String
        # @param ZoneName: <p>Zone中文字符串</p>
        # @type ZoneName: String
        # @param Enable: <p>是否售卖，1：售卖；0：不售卖</p>
        # @type Enable: Integer
        # @param IsDefaultMaster: <p>是否是默认主可用区,0不是，1是</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDefaultMaster: Integer
        # @param AvailableDiskTypes: <p>可用区可选磁盘类型</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableDiskTypes: Array
        # @param SupportTypes: <p>是否是独享可用区</p>
        # @type SupportTypes: Array
        # @param IsSupportServerless: <p>是否支持serverless</p>
        # @type IsSupportServerless: Boolean

        attr_accessor :Zone, :ZoneName, :Enable, :IsDefaultMaster, :AvailableDiskTypes, :SupportTypes, :IsSupportServerless

        def initialize(zone=nil, zonename=nil, enable=nil, isdefaultmaster=nil, availabledisktypes=nil, supporttypes=nil, issupportserverless=nil)
          @Zone = zone
          @ZoneName = zonename
          @Enable = enable
          @IsDefaultMaster = isdefaultmaster
          @AvailableDiskTypes = availabledisktypes
          @SupportTypes = supporttypes
          @IsSupportServerless = issupportserverless
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ZoneName = params['ZoneName']
          @Enable = params['Enable']
          @IsDefaultMaster = params['IsDefaultMaster']
          @AvailableDiskTypes = params['AvailableDiskTypes']
          @SupportTypes = params['SupportTypes']
          @IsSupportServerless = params['IsSupportServerless']
        end
      end

      # DescribeSlowLogs请求参数结构体
      class DescribeSlowLogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param StartTime: 要检索日志的起始时间
        # @type StartTime: String
        # @param EndTime: 要检索日志的结束时间
        # @type EndTime: String
        # @param LogFilter: 过滤条件
        # @type LogFilter: Array
        # @param Limit: 单页条数限制
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Order: 排序，可选：ASC，DESC
        # @type Order: String
        # @param OrderBy: 排序条件，根据业务字段不同，可选排序字段不一样
        # @type OrderBy: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :LogFilter, :Limit, :Offset, :Order, :OrderBy

        def initialize(instanceid=nil, starttime=nil, endtime=nil, logfilter=nil, limit=nil, offset=nil, order=nil, orderby=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @LogFilter = logfilter
          @Limit = limit
          @Offset = offset
          @Order = order
          @OrderBy = orderby
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['LogFilter'].nil?
            @LogFilter = []
            params['LogFilter'].each do |i|
              logfilter_tmp = LogFilter.new
              logfilter_tmp.deserialize(i)
              @LogFilter << logfilter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @OrderBy = params['OrderBy']
        end
      end

      # DescribeSlowLogs返回参数结构体
      class DescribeSlowLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 日志总数
        # @type TotalCount: Integer
        # @param Items: 日志详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              slowlogdata_tmp = SlowLogData.new
              slowlogdata_tmp.deserialize(i)
              @Items << slowlogdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpecs请求参数结构体
      class DescribeSpecsRequest < TencentCloud::Common::AbstractModel
        # @param FullReplications: <p>全能型副本数，当前支持范围：1-3，默认为3</p>
        # @type FullReplications: Integer
        # @param IsExclusiveInstance: <p>独享实例</p>
        # @type IsExclusiveInstance: Integer

        attr_accessor :FullReplications, :IsExclusiveInstance

        def initialize(fullreplications=nil, isexclusiveinstance=nil)
          @FullReplications = fullreplications
          @IsExclusiveInstance = isexclusiveinstance
        end

        def deserialize(params)
          @FullReplications = params['FullReplications']
          @IsExclusiveInstance = params['IsExclusiveInstance']
        end
      end

      # DescribeSpecs返回参数结构体
      class DescribeSpecsResponse < TencentCloud::Common::AbstractModel
        # @param HybridNodeSpecs: <p>对等节点售卖规格列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HybridNodeSpecs: Array
        # @param ServerlessCcuSpec: <p>svls节点售卖规格列表</p>
        # @type ServerlessCcuSpec: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HybridNodeSpecs, :ServerlessCcuSpec, :RequestId

        def initialize(hybridnodespecs=nil, serverlessccuspec=nil, requestid=nil)
          @HybridNodeSpecs = hybridnodespecs
          @ServerlessCcuSpec = serverlessccuspec
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HybridNodeSpecs'].nil?
            @HybridNodeSpecs = []
            params['HybridNodeSpecs'].each do |i|
              storagenodespec_tmp = StorageNodeSpec.new
              storagenodespec_tmp.deserialize(i)
              @HybridNodeSpecs << storagenodespec_tmp
            end
          end
          unless params['ServerlessCcuSpec'].nil?
            @ServerlessCcuSpec = []
            params['ServerlessCcuSpec'].each do |i|
              serverlessccu_tmp = ServerlessCcu.new
              serverlessccu_tmp.deserialize(i)
              @ServerlessCcuSpec << serverlessccu_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserPrivileges请求参数结构体
      class DescribeUserPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql3-5baee8df。
        # @type InstanceId: String
        # @param Host: 用户允许的访问 host，用户名+host唯一确定一个账号。
        # @type Host: String
        # @param UserName: 登录用户名。
        # @type UserName: String
        # @param DbName: 数据库名。如果为 \*，表示查询全局权限（即 \*.\*），此时忽略 Type 和 Object 参数
        # @type DbName: String
        # @param Object: 具体的 Type 的名称，例如 Type 为 table 时就是具体的表名。DbName 和 Type 都为具体名称，则 Object 表示具体对象名，不能为 \* 或者为空
        # @type Object: String
        # @param ObjectType: 类型,可以填入 table 、 view 、 proc 、 func 和 \*。当 DbName 为具体数据库名，Type为 \* 时，表示查询该数据库权限（即db.\*），此时忽略 Object 参数
        # @type ObjectType: String
        # @param ColName: 当 Type=table 时，ColName 为 \* 表示查询表的权限，如果为具体字段名，表示查询对应字段的权限
        # @type ColName: String

        attr_accessor :InstanceId, :Host, :UserName, :DbName, :Object, :ObjectType, :ColName

        def initialize(instanceid=nil, host=nil, username=nil, dbname=nil, object=nil, objecttype=nil, colname=nil)
          @InstanceId = instanceid
          @Host = host
          @UserName = username
          @DbName = dbname
          @Object = object
          @ObjectType = objecttype
          @ColName = colname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Host = params['Host']
          @UserName = params['UserName']
          @DbName = params['DbName']
          @Object = params['Object']
          @ObjectType = params['ObjectType']
          @ColName = params['ColName']
        end
      end

      # DescribeUserPrivileges返回参数结构体
      class DescribeUserPrivilegesResponse < TencentCloud::Common::AbstractModel
        # @param Privileges: 权限列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Privileges: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Privileges, :RequestId

        def initialize(privileges=nil, requestid=nil)
          @Privileges = privileges
          @RequestId = requestid
        end

        def deserialize(params)
          @Privileges = params['Privileges']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsers请求参数结构体
      class DescribeUsersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeUsers返回参数结构体
      class DescribeUsersResponse < TencentCloud::Common::AbstractModel
        # @param Users: 用户列表
        # @type Users: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Users, :RequestId

        def initialize(users=nil, requestid=nil)
          @Users = users
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              userinfo_tmp = UserInfo.new
              userinfo_tmp.deserialize(i)
              @Users << userinfo_tmp
            end
          end
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

      # ExpandInstance请求参数结构体
      class ExpandInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param StorageNodeNum: <p>存储节点扩容至多少个节点，如果没有变化，传当前节点数</p>
        # @type StorageNodeNum: Integer
        # @param Zones: <p>可用区列表</p>
        # @type Zones: Array
        # @param AZMode: <p>az模式，1: 单AZ 2: 多AZ非主AZ模式 3: 多AZ主AZ模式</p>
        # @type AZMode: Integer
        # @param PrimaryAZ: <p>AZMode传3时，表示主AZ</p>
        # @type PrimaryAZ: String
        # @param FullReplications: <p>全能型副本数，取值范围包括1-3</p>
        # @type FullReplications: Integer

        attr_accessor :InstanceId, :StorageNodeNum, :Zones, :AZMode, :PrimaryAZ, :FullReplications

        def initialize(instanceid=nil, storagenodenum=nil, zones=nil, azmode=nil, primaryaz=nil, fullreplications=nil)
          @InstanceId = instanceid
          @StorageNodeNum = storagenodenum
          @Zones = zones
          @AZMode = azmode
          @PrimaryAZ = primaryaz
          @FullReplications = fullreplications
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StorageNodeNum = params['StorageNodeNum']
          @Zones = params['Zones']
          @AZMode = params['AZMode']
          @PrimaryAZ = params['PrimaryAZ']
          @FullReplications = params['FullReplications']
        end
      end

      # ExpandInstance返回参数结构体
      class ExpandInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: <p>异步任务ID，根据此ID可以调用查询任务接口获取任务状态</p>
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

      # 执行计划
      class Explain < TencentCloud::Common::AbstractModel
        # @param ID: <p>标识符</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: String
        # @param SelectType: <p>查询类型</p><p>枚举值：</p><ul><li>SIMPLE： 没有子查询和 UNION 的普通查询，单表或普通 JOIN 都是 SIMPLE。</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelectType: String
        # @param Table: <p>表名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Table: String
        # @param Partitions: <p>分区</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partitions: String
        # @param Type: <p>访问类型</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param PossibleKeys: <p>可能使用的索引</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PossibleKeys: String
        # @param Key: <p>实际使用的索引</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param KeyLen: <p>使用的索引长度</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyLen: String
        # @param Ref: <p>与索引比较的列或常量</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ref: String
        # @param Rows: <p>估算扫描行数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rows: String
        # @param Filtered: <p>条件过滤后剩余行的估算百分比</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Filtered: String
        # @param Extra: <p>附加信息，如 Using index、Using filesort 等</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String

        attr_accessor :ID, :SelectType, :Table, :Partitions, :Type, :PossibleKeys, :Key, :KeyLen, :Ref, :Rows, :Filtered, :Extra

        def initialize(id=nil, selecttype=nil, table=nil, partitions=nil, type=nil, possiblekeys=nil, key=nil, keylen=nil, ref=nil, rows=nil, filtered=nil, extra=nil)
          @ID = id
          @SelectType = selecttype
          @Table = table
          @Partitions = partitions
          @Type = type
          @PossibleKeys = possiblekeys
          @Key = key
          @KeyLen = keylen
          @Ref = ref
          @Rows = rows
          @Filtered = filtered
          @Extra = extra
        end

        def deserialize(params)
          @ID = params['ID']
          @SelectType = params['SelectType']
          @Table = params['Table']
          @Partitions = params['Partitions']
          @Type = params['Type']
          @PossibleKeys = params['PossibleKeys']
          @Key = params['Key']
          @KeyLen = params['KeyLen']
          @Ref = params['Ref']
          @Rows = params['Rows']
          @Filtered = params['Filtered']
          @Extra = params['Extra']
        end
      end

      # 实例列表过滤条件
      class InstanceFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤key，支持InstanceId、VpcId、SubnetId、Vip、Vport、Status、InstanceName、TagKey
        # @type Name: String
        # @param Values: 过滤value
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

      # 实例信息类型
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param ComputeNodeNum: <p>计算节点数量</p>
        # @type ComputeNodeNum: Integer
        # @param Zone: <p>区域</p>
        # @type Zone: String
        # @param CreateVersion: <p>创建实例版本</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateVersion: String
        # @param InitParams: <p>初始化实例参数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitParams: Array
        # @param Status: <p>实例状态：creating、created、initializing、running、modifying、isolating、isolated、destroying、destroyed</p>
        # @type Status: String
        # @param InstanceId: <p>实例id</p>
        # @type InstanceId: String
        # @param StorageNodeNum: <p>存储节点数量</p>
        # @type StorageNodeNum: Integer
        # @param ResourceTags: <p>实例标签信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceTags: Array
        # @param InstanceName: <p>实例名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Cpu: <p>计算节点cpu核数</p>
        # @type Cpu: Integer
        # @param VpcId: <p>字符型vpcid</p>
        # @type VpcId: String
        # @param Mem: <p>计算节点mem，单位GB</p>
        # @type Mem: Integer
        # @param Vip: <p>子网IP</p>
        # @type Vip: String
        # @param SubnetId: <p>字符型subnetid</p>
        # @type SubnetId: String
        # @param Vport: <p>子网端口</p>
        # @type Vport: Integer
        # @param Disk: <p>存储节点磁盘容量，单位GB</p>
        # @type Disk: Integer
        # @param CreateTime: <p>实例创建时间</p>
        # @type CreateTime: String
        # @param Region: <p>实例所属地域</p>
        # @type Region: String
        # @param StatusDesc: <p>实例状态中文描述</p>
        # @type StatusDesc: String
        # @param MCCpu: <p>管控节点CPU核数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MCCpu: Integer
        # @param MCMem: <p>管控节点CPU大小</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MCMem: Integer
        # @param ComputerNodeCpu: <p>计算节点CPU核数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComputerNodeCpu: Integer
        # @param ComputerNodeMem: <p>计算节点内存大小</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComputerNodeMem: Integer
        # @param StorageNodeCpu: <p>存储节点CPU核数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageNodeCpu: Integer
        # @param StorageNodeMem: <p>存储节点内存大小</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageNodeMem: Integer
        # @param MCNum: <p>管控节点数量</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MCNum: Integer
        # @param RenewFlag: <p>续费标志</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param PayMode: <p>付费模式，0按量付费；1包年包月</p>
        # @type PayMode: String
        # @param AccountTag: <p>用户标签，inner：内部用户；external：外部用户</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountTag: String
        # @param InstanceType: <p>实例架构类型，separate:分离架构；hyper:对等架构</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param StorageType: <p>磁盘类型，CLOUD_HSSD增强型SSD,CLOUD_TCS本地SSD盘</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageType: String
        # @param DestroyedAt: <p>&quot;0000-00-00 00:00:00&quot;</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DestroyedAt: String
        # @param ExpireAt: <p>&quot;0000-00-00 00:00:00&quot;</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireAt: String
        # @param IsolatedAt: <p>&quot;0000-00-00 00:00:00&quot;</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolatedAt: String
        # @param IsolatedFrom: <p>&quot;0000-00-00 00:00:00&quot;</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolatedFrom: String
        # @param Replications: <p>1</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Replications: Integer
        # @param FullReplications: <p>全能型副本数</p>
        # @type FullReplications: Integer
        # @param AppId: <p>账号信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param SubAccountUin: <p>账号信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAccountUin: String
        # @param Uin: <p>账号信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param Zones: <p>AZ信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zones: Array
        # @param Nodes: <p>实例节点</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nodes: Array
        # @param BinlogStatus: <p>binlog是否打开</p>
        # @type BinlogStatus: Integer
        # @param CdcNodeCpu: <p>cdc节点核数</p>
        # @type CdcNodeCpu: Integer
        # @param CdcNodeMem: <p>cdc节点内存大小</p>
        # @type CdcNodeMem: Integer
        # @param CdcNodeNum: <p>cdc节点数</p>
        # @type CdcNodeNum: Integer
        # @param AZMode: <p>az模式，1: 单AZ 2: 多AZ非主AZ模式 3: 多AZ主AZ模式</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AZMode: Integer
        # @param StandbyFlag: <p>灾备标志位，1: 无灾备关系；2: 灾备主实例；3: 灾备备实例</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StandbyFlag: Integer
        # @param StandbySecondaryNum: <p>连接的备实例数量（仅当 StandbyFlag == 2 时有效）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StandbySecondaryNum: Integer
        # @param ColumnarNodeCpu: <p>列存节点 cpu 核数</p>
        # @type ColumnarNodeCpu: Integer
        # @param ColumnarNodeMem: <p>列存节点内存大小</p>
        # @type ColumnarNodeMem: Integer
        # @param ColumnarNodeNum: <p>列存节点数</p>
        # @type ColumnarNodeNum: Integer
        # @param ColumnarNodeDisk: <p>列存节点磁盘容量，单位GB</p>
        # @type ColumnarNodeDisk: Integer
        # @param ColumnarNodeStorageType: <p>列存节点磁盘类型</p>
        # @type ColumnarNodeStorageType: String
        # @param InstanceCategory: <p>独享标志位，1： 主实例（独享型）, 2: 主实例, 3： 灾备实例, 4： 灾备实例（独享型）</p>
        # @type InstanceCategory: Integer
        # @param ExclusiveClusterId: <p>dbdc-xxxxx</p>
        # @type ExclusiveClusterId: String
        # @param SQLMode: <p>兼容模式</p>
        # @type SQLMode: String
        # @param InstanceMode: <p>实例模式</p>
        # @type InstanceMode: String
        # @param ClusterId: <p>实例发货平台</p>
        # @type ClusterId: String
        # @param AutoScaleConfig: <p>自动扩容配置</p>
        # @type AutoScaleConfig: :class:`Tencentcloud::Tdmysql.v20211122.models.AutoScalingConfig`
        # @param AnalysisMode: <p>分析引擎模式</p><p>枚举值：</p><ul><li>libra： LibraDB分析引擎模式</li></ul>
        # @type AnalysisMode: String
        # @param AnalysisRelationInfos: <p>分析引擎关系信息</p>
        # @type AnalysisRelationInfos: Array
        # @param AnalysisInstanceInfo: <p>分析引擎实例信息</p>
        # @type AnalysisInstanceInfo: :class:`Tencentcloud::Tdmysql.v20211122.models.AnalysisInstanceInfo`

        attr_accessor :ComputeNodeNum, :Zone, :CreateVersion, :InitParams, :Status, :InstanceId, :StorageNodeNum, :ResourceTags, :InstanceName, :Cpu, :VpcId, :Mem, :Vip, :SubnetId, :Vport, :Disk, :CreateTime, :Region, :StatusDesc, :MCCpu, :MCMem, :ComputerNodeCpu, :ComputerNodeMem, :StorageNodeCpu, :StorageNodeMem, :MCNum, :RenewFlag, :PayMode, :AccountTag, :InstanceType, :StorageType, :DestroyedAt, :ExpireAt, :IsolatedAt, :IsolatedFrom, :Replications, :FullReplications, :AppId, :SubAccountUin, :Uin, :Zones, :Nodes, :BinlogStatus, :CdcNodeCpu, :CdcNodeMem, :CdcNodeNum, :AZMode, :StandbyFlag, :StandbySecondaryNum, :ColumnarNodeCpu, :ColumnarNodeMem, :ColumnarNodeNum, :ColumnarNodeDisk, :ColumnarNodeStorageType, :InstanceCategory, :ExclusiveClusterId, :SQLMode, :InstanceMode, :ClusterId, :AutoScaleConfig, :AnalysisMode, :AnalysisRelationInfos, :AnalysisInstanceInfo
        extend Gem::Deprecate
        deprecate :ComputeNodeNum, :none, 2026, 6
        deprecate :ComputeNodeNum=, :none, 2026, 6
        deprecate :Cpu, :none, 2026, 6
        deprecate :Cpu=, :none, 2026, 6
        deprecate :Mem, :none, 2026, 6
        deprecate :Mem=, :none, 2026, 6
        deprecate :MCCpu, :none, 2026, 6
        deprecate :MCCpu=, :none, 2026, 6
        deprecate :MCMem, :none, 2026, 6
        deprecate :MCMem=, :none, 2026, 6
        deprecate :ComputerNodeCpu, :none, 2026, 6
        deprecate :ComputerNodeCpu=, :none, 2026, 6
        deprecate :ComputerNodeMem, :none, 2026, 6
        deprecate :ComputerNodeMem=, :none, 2026, 6
        deprecate :MCNum, :none, 2026, 6
        deprecate :MCNum=, :none, 2026, 6
        deprecate :CdcNodeCpu, :none, 2026, 6
        deprecate :CdcNodeCpu=, :none, 2026, 6
        deprecate :CdcNodeMem, :none, 2026, 6
        deprecate :CdcNodeMem=, :none, 2026, 6
        deprecate :CdcNodeNum, :none, 2026, 6
        deprecate :CdcNodeNum=, :none, 2026, 6
        deprecate :ClusterId, :none, 2026, 6
        deprecate :ClusterId=, :none, 2026, 6

        def initialize(computenodenum=nil, zone=nil, createversion=nil, initparams=nil, status=nil, instanceid=nil, storagenodenum=nil, resourcetags=nil, instancename=nil, cpu=nil, vpcid=nil, mem=nil, vip=nil, subnetid=nil, vport=nil, disk=nil, createtime=nil, region=nil, statusdesc=nil, mccpu=nil, mcmem=nil, computernodecpu=nil, computernodemem=nil, storagenodecpu=nil, storagenodemem=nil, mcnum=nil, renewflag=nil, paymode=nil, accounttag=nil, instancetype=nil, storagetype=nil, destroyedat=nil, expireat=nil, isolatedat=nil, isolatedfrom=nil, replications=nil, fullreplications=nil, appid=nil, subaccountuin=nil, uin=nil, zones=nil, nodes=nil, binlogstatus=nil, cdcnodecpu=nil, cdcnodemem=nil, cdcnodenum=nil, azmode=nil, standbyflag=nil, standbysecondarynum=nil, columnarnodecpu=nil, columnarnodemem=nil, columnarnodenum=nil, columnarnodedisk=nil, columnarnodestoragetype=nil, instancecategory=nil, exclusiveclusterid=nil, sqlmode=nil, instancemode=nil, clusterid=nil, autoscaleconfig=nil, analysismode=nil, analysisrelationinfos=nil, analysisinstanceinfo=nil)
          @ComputeNodeNum = computenodenum
          @Zone = zone
          @CreateVersion = createversion
          @InitParams = initparams
          @Status = status
          @InstanceId = instanceid
          @StorageNodeNum = storagenodenum
          @ResourceTags = resourcetags
          @InstanceName = instancename
          @Cpu = cpu
          @VpcId = vpcid
          @Mem = mem
          @Vip = vip
          @SubnetId = subnetid
          @Vport = vport
          @Disk = disk
          @CreateTime = createtime
          @Region = region
          @StatusDesc = statusdesc
          @MCCpu = mccpu
          @MCMem = mcmem
          @ComputerNodeCpu = computernodecpu
          @ComputerNodeMem = computernodemem
          @StorageNodeCpu = storagenodecpu
          @StorageNodeMem = storagenodemem
          @MCNum = mcnum
          @RenewFlag = renewflag
          @PayMode = paymode
          @AccountTag = accounttag
          @InstanceType = instancetype
          @StorageType = storagetype
          @DestroyedAt = destroyedat
          @ExpireAt = expireat
          @IsolatedAt = isolatedat
          @IsolatedFrom = isolatedfrom
          @Replications = replications
          @FullReplications = fullreplications
          @AppId = appid
          @SubAccountUin = subaccountuin
          @Uin = uin
          @Zones = zones
          @Nodes = nodes
          @BinlogStatus = binlogstatus
          @CdcNodeCpu = cdcnodecpu
          @CdcNodeMem = cdcnodemem
          @CdcNodeNum = cdcnodenum
          @AZMode = azmode
          @StandbyFlag = standbyflag
          @StandbySecondaryNum = standbysecondarynum
          @ColumnarNodeCpu = columnarnodecpu
          @ColumnarNodeMem = columnarnodemem
          @ColumnarNodeNum = columnarnodenum
          @ColumnarNodeDisk = columnarnodedisk
          @ColumnarNodeStorageType = columnarnodestoragetype
          @InstanceCategory = instancecategory
          @ExclusiveClusterId = exclusiveclusterid
          @SQLMode = sqlmode
          @InstanceMode = instancemode
          @ClusterId = clusterid
          @AutoScaleConfig = autoscaleconfig
          @AnalysisMode = analysismode
          @AnalysisRelationInfos = analysisrelationinfos
          @AnalysisInstanceInfo = analysisinstanceinfo
        end

        def deserialize(params)
          @ComputeNodeNum = params['ComputeNodeNum']
          @Zone = params['Zone']
          @CreateVersion = params['CreateVersion']
          unless params['InitParams'].nil?
            @InitParams = []
            params['InitParams'].each do |i|
              instanceparam_tmp = InstanceParam.new
              instanceparam_tmp.deserialize(i)
              @InitParams << instanceparam_tmp
            end
          end
          @Status = params['Status']
          @InstanceId = params['InstanceId']
          @StorageNodeNum = params['StorageNodeNum']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @InstanceName = params['InstanceName']
          @Cpu = params['Cpu']
          @VpcId = params['VpcId']
          @Mem = params['Mem']
          @Vip = params['Vip']
          @SubnetId = params['SubnetId']
          @Vport = params['Vport']
          @Disk = params['Disk']
          @CreateTime = params['CreateTime']
          @Region = params['Region']
          @StatusDesc = params['StatusDesc']
          @MCCpu = params['MCCpu']
          @MCMem = params['MCMem']
          @ComputerNodeCpu = params['ComputerNodeCpu']
          @ComputerNodeMem = params['ComputerNodeMem']
          @StorageNodeCpu = params['StorageNodeCpu']
          @StorageNodeMem = params['StorageNodeMem']
          @MCNum = params['MCNum']
          @RenewFlag = params['RenewFlag']
          @PayMode = params['PayMode']
          @AccountTag = params['AccountTag']
          @InstanceType = params['InstanceType']
          @StorageType = params['StorageType']
          @DestroyedAt = params['DestroyedAt']
          @ExpireAt = params['ExpireAt']
          @IsolatedAt = params['IsolatedAt']
          @IsolatedFrom = params['IsolatedFrom']
          @Replications = params['Replications']
          @FullReplications = params['FullReplications']
          @AppId = params['AppId']
          @SubAccountUin = params['SubAccountUin']
          @Uin = params['Uin']
          @Zones = params['Zones']
          unless params['Nodes'].nil?
            @Nodes = []
            params['Nodes'].each do |i|
              instancenode_tmp = InstanceNode.new
              instancenode_tmp.deserialize(i)
              @Nodes << instancenode_tmp
            end
          end
          @BinlogStatus = params['BinlogStatus']
          @CdcNodeCpu = params['CdcNodeCpu']
          @CdcNodeMem = params['CdcNodeMem']
          @CdcNodeNum = params['CdcNodeNum']
          @AZMode = params['AZMode']
          @StandbyFlag = params['StandbyFlag']
          @StandbySecondaryNum = params['StandbySecondaryNum']
          @ColumnarNodeCpu = params['ColumnarNodeCpu']
          @ColumnarNodeMem = params['ColumnarNodeMem']
          @ColumnarNodeNum = params['ColumnarNodeNum']
          @ColumnarNodeDisk = params['ColumnarNodeDisk']
          @ColumnarNodeStorageType = params['ColumnarNodeStorageType']
          @InstanceCategory = params['InstanceCategory']
          @ExclusiveClusterId = params['ExclusiveClusterId']
          @SQLMode = params['SQLMode']
          @InstanceMode = params['InstanceMode']
          @ClusterId = params['ClusterId']
          unless params['AutoScaleConfig'].nil?
            @AutoScaleConfig = AutoScalingConfig.new
            @AutoScaleConfig.deserialize(params['AutoScaleConfig'])
          end
          @AnalysisMode = params['AnalysisMode']
          unless params['AnalysisRelationInfos'].nil?
            @AnalysisRelationInfos = []
            params['AnalysisRelationInfos'].each do |i|
              analysisrelationinfo_tmp = AnalysisRelationInfo.new
              analysisrelationinfo_tmp.deserialize(i)
              @AnalysisRelationInfos << analysisrelationinfo_tmp
            end
          end
          unless params['AnalysisInstanceInfo'].nil?
            @AnalysisInstanceInfo = AnalysisInstanceInfo.new
            @AnalysisInstanceInfo.deserialize(params['AnalysisInstanceInfo'])
          end
        end
      end

      # 节点信息
      class InstanceNode < TencentCloud::Common::AbstractModel
        # @param ID: 主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer
        # @param InstanceId: 实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param NodeId: Node Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeId: String
        # @param Ip: 实例Ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param EniIp: 实例EniIp
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EniIp: String
        # @param Port: 实例Port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param SpecCode: 实例SpecCode
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecCode: String
        # @param NodeName: 实例NodeName
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeName: String
        # @param Cpu: 实例Cpu
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cpu: Integer
        # @param Mem: 实例Mem
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mem: Integer
        # @param Disk: 实例Disk
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Disk: Integer
        # @param Type: 实例类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Status: 实例状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Version: 实例版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Zone: 实例地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param LocalDNS: 实例LocalDNS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalDNS: String
        # @param Region: 实例Region
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param LogDisk: 实例日志盘
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogDisk: Integer
        # @param DataDisk: 实例数据盘
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataDisk: Integer
        # @param ZoneID: 实例ZoneID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneID: String
        # @param SpecName: 实例SpecName
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecName: String
        # @param Replicas: 实例Replicas
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Replicas: Integer
        # @param Shards: 实例Shards
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Shards: Integer
        # @param DataReplicas: 实例数据副本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataReplicas: Integer
        # @param Params: 实例初始化参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: String
        # @param StorageType: 存储介质, CLOUD_PREMIUM:高性能云盘，CLOUD_SSD: SSD 云盘，CLOUD_HSSD: HSSD 云盘
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageType: String

        attr_accessor :ID, :InstanceId, :NodeId, :Ip, :EniIp, :Port, :SpecCode, :NodeName, :Cpu, :Mem, :Disk, :Type, :Status, :Version, :Zone, :LocalDNS, :Region, :LogDisk, :DataDisk, :ZoneID, :SpecName, :Replicas, :Shards, :DataReplicas, :Params, :StorageType

        def initialize(id=nil, instanceid=nil, nodeid=nil, ip=nil, eniip=nil, port=nil, speccode=nil, nodename=nil, cpu=nil, mem=nil, disk=nil, type=nil, status=nil, version=nil, zone=nil, localdns=nil, region=nil, logdisk=nil, datadisk=nil, zoneid=nil, specname=nil, replicas=nil, shards=nil, datareplicas=nil, params=nil, storagetype=nil)
          @ID = id
          @InstanceId = instanceid
          @NodeId = nodeid
          @Ip = ip
          @EniIp = eniip
          @Port = port
          @SpecCode = speccode
          @NodeName = nodename
          @Cpu = cpu
          @Mem = mem
          @Disk = disk
          @Type = type
          @Status = status
          @Version = version
          @Zone = zone
          @LocalDNS = localdns
          @Region = region
          @LogDisk = logdisk
          @DataDisk = datadisk
          @ZoneID = zoneid
          @SpecName = specname
          @Replicas = replicas
          @Shards = shards
          @DataReplicas = datareplicas
          @Params = params
          @StorageType = storagetype
        end

        def deserialize(params)
          @ID = params['ID']
          @InstanceId = params['InstanceId']
          @NodeId = params['NodeId']
          @Ip = params['Ip']
          @EniIp = params['EniIp']
          @Port = params['Port']
          @SpecCode = params['SpecCode']
          @NodeName = params['NodeName']
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @Disk = params['Disk']
          @Type = params['Type']
          @Status = params['Status']
          @Version = params['Version']
          @Zone = params['Zone']
          @LocalDNS = params['LocalDNS']
          @Region = params['Region']
          @LogDisk = params['LogDisk']
          @DataDisk = params['DataDisk']
          @ZoneID = params['ZoneID']
          @SpecName = params['SpecName']
          @Replicas = params['Replicas']
          @Shards = params['Shards']
          @DataReplicas = params['DataReplicas']
          @Params = params['Params']
          @StorageType = params['StorageType']
        end
      end

      # 初始化实例参数
      class InstanceParam < TencentCloud::Common::AbstractModel
        # @param Param: 配置参数key
        # @type Param: String
        # @param Value: 配置参数value
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

      # 日志备份统计对象
      class LogBackupStatisticsModel < TencentCloud::Common::AbstractModel
        # @param AverageSizePerBackup: <p>平均每个日志备份大小,单位Byte</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AverageSizePerBackup: Integer
        # @param AverageSizePerDay: <p>平均每天日志备份大小,单位Byte</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AverageSizePerDay: Integer
        # @param TotalCount: <p>日志备份个数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalSize: <p>日志备份大小，单位Byte</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSize: Integer

        attr_accessor :AverageSizePerBackup, :AverageSizePerDay, :TotalCount, :TotalSize

        def initialize(averagesizeperbackup=nil, averagesizeperday=nil, totalcount=nil, totalsize=nil)
          @AverageSizePerBackup = averagesizeperbackup
          @AverageSizePerDay = averagesizeperday
          @TotalCount = totalcount
          @TotalSize = totalsize
        end

        def deserialize(params)
          @AverageSizePerBackup = params['AverageSizePerBackup']
          @AverageSizePerDay = params['AverageSizePerDay']
          @TotalCount = params['TotalCount']
          @TotalSize = params['TotalSize']
        end
      end

      # 慢日志过滤
      class LogFilter < TencentCloud::Common::AbstractModel
        # @param Type: 过滤条件名称。

        # 如：sql - SQL命令详情

        # host – 客户端 IP；
        # user – 数据库账户；
        # dbName – 数据库名称；
        # sqlType - SQL类型；
        # errCode - 错误码

        # execTime - 执行时间
        # lockWaitTime - 锁等待时间
        # ioWaitTime - IO等待时间
        # trxLivingTime - 事务执行时间
        # cpuTime- Cpu时间

        # threadId - 线程ID
        # trxId - 事物ID
        # checkRows - 扫描行数
        # affectRows - 影响行数
        # sentRows - 返回行数
        # @type Type: String
        # @param Compare: 过滤条件匹配类型。支持：
        # INC – 包含；     （多个值之前是||的关系）
        # EXC – 不包含； （多个值之前是&&的关系）
        # EQS – 等于；     （多个值之前是||的关系）
        # NEQ – 不等于；（多个值之前是&&的关系）

        # RG – 范围；
        # @type Compare: String
        # @param Value: 过滤条件匹配值。当Compare=RG时，例：["1-100","200-300"]
        # @type Value: Array

        attr_accessor :Type, :Compare, :Value

        def initialize(type=nil, compare=nil, value=nil)
          @Type = type
          @Compare = compare
          @Value = value
        end

        def deserialize(params)
          @Type = params['Type']
          @Compare = params['Compare']
          @Value = params['Value']
        end
      end

      # 维护窗口配置
      class MaintenanceWindowInfo < TencentCloud::Common::AbstractModel
        # @param StartTime: 
        # @type StartTime: Integer
        # @param Duration: 
        # @type Duration: Integer
        # @param WeekDays: 
        # @type WeekDays: Array

        attr_accessor :StartTime, :Duration, :WeekDays

        def initialize(starttime=nil, duration=nil, weekdays=nil)
          @StartTime = starttime
          @Duration = duration
          @WeekDays = weekdays
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Duration = params['Duration']
          @WeekDays = params['WeekDays']
        end
      end

      # ModifyAutoRenewFlag请求参数结构体
      class ModifyAutoRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: <p>需要修改的实例列表</p>
        # @type InstanceIds: Array
        # @param AutoRenewFlag: <p>1表示开启自动续费，0为关闭自动续费</p>
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

      # ModifyDBInstanceVPort请求参数结构体
      class ModifyDBInstanceVPortRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql3-5baee8df。
        # @type InstanceId: String
        # @param Vport: 新的VPC端口，3308
        # @type Vport: Integer

        attr_accessor :InstanceId, :Vport

        def initialize(instanceid=nil, vport=nil)
          @InstanceId = instanceid
          @Vport = vport
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Vport = params['Vport']
        end
      end

      # ModifyDBInstanceVPort返回参数结构体
      class ModifyDBInstanceVPortResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 返回异步任务FlowId
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
        # @param BackupPolicy: <p>备份策略</p>
        # @type BackupPolicy: :class:`Tencentcloud::Tdmysql.v20211122.models.BackupPolicyModelInput`
        # @param InstanceId: <p>实例ID</p>
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
        # @param IsSuccess: <p>是否成功</p>
        # @type IsSuccess: Boolean
        # @param Msg: <p>消息</p>
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

      # ModifyInstanceNetwork请求参数结构体
      class ModifyInstanceNetworkRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param VpcId: 希望转到的VPC网络的VpcId
        # @type VpcId: String
        # @param SubnetId: 希望转到的VPC网络的子网ID
        # @type SubnetId: String
        # @param VipReleaseDelay: VIP保留时长，单位小时，取值范围（0~168），0表示立即释放，有一分钟释放延迟。不传此参数，默认24小时释放VIP。
        # @type VipReleaseDelay: Integer
        # @param Vip: 指定vip变更，不填表示随机vip
        # @type Vip: String

        attr_accessor :InstanceId, :VpcId, :SubnetId, :VipReleaseDelay, :Vip

        def initialize(instanceid=nil, vpcid=nil, subnetid=nil, vipreleasedelay=nil, vip=nil)
          @InstanceId = instanceid
          @VpcId = vpcid
          @SubnetId = subnetid
          @VipReleaseDelay = vipreleasedelay
          @Vip = vip
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @VipReleaseDelay = params['VipReleaseDelay']
          @Vip = params['Vip']
        end
      end

      # ModifyInstanceNetwork返回参数结构体
      class ModifyInstanceNetworkResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstanceSSLStatus请求参数结构体
      class ModifyInstanceSSLStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param Enabled: <p>是否启用SSL</p>
        # @type Enabled: Boolean

        attr_accessor :InstanceId, :Enabled

        def initialize(instanceid=nil, enabled=nil)
          @InstanceId = instanceid
          @Enabled = enabled
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Enabled = params['Enabled']
        end
      end

      # ModifyInstanceSSLStatus返回参数结构体
      class ModifyInstanceSSLStatusResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: <p>异步流程ID</p>
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

      # ModifyMaintenanceWindow请求参数结构体
      class ModifyMaintenanceWindowRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param StartTime: <p>运维窗口开始时间</p><p>参数格式：hh:mm:ss</p>
        # @type StartTime: String
        # @param Duration: <p>运维窗口持续时间</p><p>取值范围：[1, 3]</p><p>单位：时</p>
        # @type Duration: Integer
        # @param WeekDays: <p>运维窗口日期</p><p>枚举值：</p><ul><li>Monday： 星期一</li><li>Tuesday： 星期二</li><li>Wednesday： 星期三</li><li>Thursday： 星期四</li><li>Friday： 星期五</li><li>Saturday： 星期六</li><li>Sunday： 星期日</li></ul>
        # @type WeekDays: Array

        attr_accessor :InstanceId, :StartTime, :Duration, :WeekDays

        def initialize(instanceid=nil, starttime=nil, duration=nil, weekdays=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @Duration = duration
          @WeekDays = weekdays
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @Duration = params['Duration']
          @WeekDays = params['WeekDays']
        end
      end

      # ModifyMaintenanceWindow返回参数结构体
      class ModifyMaintenanceWindowResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUserPrivileges请求参数结构体
      class ModifyUserPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql3-5baee8df。
        # @type InstanceId: String
        # @param Users: 登录用户名和主机信息
        # @type Users: Array
        # @param GlobalPrivileges: 全局权限
        # @type GlobalPrivileges: Array
        # @param DatabasePrivileges: Database级别权限
        # @type DatabasePrivileges: Array
        # @param TablePrivileges: Table级别权限
        # @type TablePrivileges: Array

        attr_accessor :InstanceId, :Users, :GlobalPrivileges, :DatabasePrivileges, :TablePrivileges

        def initialize(instanceid=nil, users=nil, globalprivileges=nil, databaseprivileges=nil, tableprivileges=nil)
          @InstanceId = instanceid
          @Users = users
          @GlobalPrivileges = globalprivileges
          @DatabasePrivileges = databaseprivileges
          @TablePrivileges = tableprivileges
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              user_tmp = User.new
              user_tmp.deserialize(i)
              @Users << user_tmp
            end
          end
          @GlobalPrivileges = params['GlobalPrivileges']
          unless params['DatabasePrivileges'].nil?
            @DatabasePrivileges = []
            params['DatabasePrivileges'].each do |i|
              databaseprivileges_tmp = DatabasePrivileges.new
              databaseprivileges_tmp.deserialize(i)
              @DatabasePrivileges << databaseprivileges_tmp
            end
          end
          unless params['TablePrivileges'].nil?
            @TablePrivileges = []
            params['TablePrivileges'].each do |i|
              tableprivileges_tmp = TablePrivileges.new
              tableprivileges_tmp.deserialize(i)
              @TablePrivileges << tableprivileges_tmp
            end
          end
        end
      end

      # ModifyUserPrivileges返回参数结构体
      class ModifyUserPrivilegesResponse < TencentCloud::Common::AbstractModel
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

      # 节点信息类型
      class NodeInfo < TencentCloud::Common::AbstractModel
        # @param IP: <p>节点IP信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IP: String
        # @param Type: <p>节点类型，如sqlengine，tdstore，mc</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param NodeId: <p>节点唯一标识</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeId: String
        # @param Port: <p>节点端口信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param Zone: <p>节点所属可用区</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param Host: <p>节点所属机器ip</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Host: String
        # @param BinlogInfo: <p>节点日志服务信息</p>
        # @type BinlogInfo: Array
        # @param Cpu: <p>节点cpu个数</p>
        # @type Cpu: Integer
        # @param Mem: <p>节点mem大小</p>
        # @type Mem: Integer
        # @param DataDisk: <p>节点磁盘大小</p>
        # @type DataDisk: Integer

        attr_accessor :IP, :Type, :NodeId, :Port, :Zone, :Host, :BinlogInfo, :Cpu, :Mem, :DataDisk

        def initialize(ip=nil, type=nil, nodeid=nil, port=nil, zone=nil, host=nil, binloginfo=nil, cpu=nil, mem=nil, datadisk=nil)
          @IP = ip
          @Type = type
          @NodeId = nodeid
          @Port = port
          @Zone = zone
          @Host = host
          @BinlogInfo = binloginfo
          @Cpu = cpu
          @Mem = mem
          @DataDisk = datadisk
        end

        def deserialize(params)
          @IP = params['IP']
          @Type = params['Type']
          @NodeId = params['NodeId']
          @Port = params['Port']
          @Zone = params['Zone']
          @Host = params['Host']
          unless params['BinlogInfo'].nil?
            @BinlogInfo = []
            params['BinlogInfo'].each do |i|
              binloginfo_tmp = BinlogInfo.new
              binloginfo_tmp.deserialize(i)
              @BinlogInfo << binloginfo_tmp
            end
          end
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @DataDisk = params['DataDisk']
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

      # ResetUserPassword请求参数结构体
      class ResetUserPasswordRequest < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Host: 主机IP，IP段以%结尾，表示允许该IP段的所有IP
        # @type Host: String
        # @param Password: 新密码，要求长度8-32，至少包含英文、数字和符号中的两种
        # @type Password: String
        # @param EncryptedPassword: 加密密码
        # @type EncryptedPassword: String

        attr_accessor :UserName, :InstanceId, :Host, :Password, :EncryptedPassword

        def initialize(username=nil, instanceid=nil, host=nil, password=nil, encryptedpassword=nil)
          @UserName = username
          @InstanceId = instanceid
          @Host = host
          @Password = password
          @EncryptedPassword = encryptedpassword
        end

        def deserialize(params)
          @UserName = params['UserName']
          @InstanceId = params['InstanceId']
          @Host = params['Host']
          @Password = params['Password']
          @EncryptedPassword = params['EncryptedPassword']
        end
      end

      # ResetUserPassword返回参数结构体
      class ResetUserPasswordResponse < TencentCloud::Common::AbstractModel
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

      # tag参数
      class ResourceTag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键key
        # @type TagKey: String
        # @param TagValue: 标签值value
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

      # RestartDBInstances请求参数结构体
      class RestartDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: <p>需要重启的实例ID的数组</p>
        # @type InstanceIds: Array
        # @param RestartTime: <p>重启时间，不传表示立即重启</p>
        # @type RestartTime: String

        attr_accessor :InstanceIds, :RestartTime

        def initialize(instanceids=nil, restarttime=nil)
          @InstanceIds = instanceids
          @RestartTime = restarttime
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @RestartTime = params['RestartTime']
        end
      end

      # RestartDBInstances返回参数结构体
      class RestartDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: <p>异步任务id</p>
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

      # serverless实例的ccu规格
      class ServerlessCcu < TencentCloud::Common::AbstractModel
        # @param MinCcu: <p>ccu最小值</p>
        # @type MinCcu: Integer
        # @param MaxCcu: <p>ccu最大值范围</p>
        # @type MaxCcu: Array

        attr_accessor :MinCcu, :MaxCcu

        def initialize(minccu=nil, maxccu=nil)
          @MinCcu = minccu
          @MaxCcu = maxccu
        end

        def deserialize(params)
          @MinCcu = params['MinCcu']
          @MaxCcu = params['MaxCcu']
        end
      end

      # 慢日志信息
      class SlowLogData < TencentCloud::Common::AbstractModel
        # @param Timestamp: <p>Sql的执行时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: String
        # @param QueryTime: <p>Sql的执行时长（秒）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueryTime: Float
        # @param SqlText: <p>Sql语句</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SqlText: String
        # @param UserHost: <p>客户端地址</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserHost: String
        # @param UserName: <p>用户名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Database: <p>数据库名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Database: String
        # @param LockTime: <p>锁时长（秒）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LockTime: Float
        # @param RowsExamined: <p>扫描行数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowsExamined: Integer
        # @param RowsSent: <p>结果集行数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowsSent: Integer
        # @param TransactionId: <p>事物ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransactionId: String
        # @param RpcTime: <p>rpc耗时</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RpcTime: Float
        # @param StorageRpcTime: <p>与存储节点交互rpc耗时</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageRpcTime: Float
        # @param RpcRetryDelayTime: <p>rpc重试延迟耗时</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RpcRetryDelayTime: Float
        # @param NodeId: <p>node名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeId: String
        # @param RpcTrace: <p>rpc 链路追踪</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RpcTrace: String
        # @param TDStoreLockTime: <p>TDStore锁时长</p><p>单位：秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TDStoreLockTime: Float
        # @param TraceId: <p>全局标识ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TraceId: String
        # @param Explain: <p>执行计划</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Explain: Array

        attr_accessor :Timestamp, :QueryTime, :SqlText, :UserHost, :UserName, :Database, :LockTime, :RowsExamined, :RowsSent, :TransactionId, :RpcTime, :StorageRpcTime, :RpcRetryDelayTime, :NodeId, :RpcTrace, :TDStoreLockTime, :TraceId, :Explain

        def initialize(timestamp=nil, querytime=nil, sqltext=nil, userhost=nil, username=nil, database=nil, locktime=nil, rowsexamined=nil, rowssent=nil, transactionid=nil, rpctime=nil, storagerpctime=nil, rpcretrydelaytime=nil, nodeid=nil, rpctrace=nil, tdstorelocktime=nil, traceid=nil, explain=nil)
          @Timestamp = timestamp
          @QueryTime = querytime
          @SqlText = sqltext
          @UserHost = userhost
          @UserName = username
          @Database = database
          @LockTime = locktime
          @RowsExamined = rowsexamined
          @RowsSent = rowssent
          @TransactionId = transactionid
          @RpcTime = rpctime
          @StorageRpcTime = storagerpctime
          @RpcRetryDelayTime = rpcretrydelaytime
          @NodeId = nodeid
          @RpcTrace = rpctrace
          @TDStoreLockTime = tdstorelocktime
          @TraceId = traceid
          @Explain = explain
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @QueryTime = params['QueryTime']
          @SqlText = params['SqlText']
          @UserHost = params['UserHost']
          @UserName = params['UserName']
          @Database = params['Database']
          @LockTime = params['LockTime']
          @RowsExamined = params['RowsExamined']
          @RowsSent = params['RowsSent']
          @TransactionId = params['TransactionId']
          @RpcTime = params['RpcTime']
          @StorageRpcTime = params['StorageRpcTime']
          @RpcRetryDelayTime = params['RpcRetryDelayTime']
          @NodeId = params['NodeId']
          @RpcTrace = params['RpcTrace']
          @TDStoreLockTime = params['TDStoreLockTime']
          @TraceId = params['TraceId']
          unless params['Explain'].nil?
            @Explain = []
            params['Explain'].each do |i|
              explain_tmp = Explain.new
              explain_tmp.deserialize(i)
              @Explain << explain_tmp
            end
          end
        end
      end

      # 存储节点规格
      class StorageNodeSpec < TencentCloud::Common::AbstractModel
        # @param SpecCode: <p>规格码</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecCode: String
        # @param StorageNodeCpu: <p>存储节点CPU核数</p>
        # @type StorageNodeCpu: Integer
        # @param StorageNodeMem: <p>存储节点内存大小</p>
        # @type StorageNodeMem: Integer
        # @param StorageNodeMaxNum: <p>存储节点最大数量</p>
        # @type StorageNodeMaxNum: Integer
        # @param StorageNodeMaxDisk: <p>存储节点磁盘大小上限</p>
        # @type StorageNodeMaxDisk: Integer
        # @param StorageNodeMinNum: <p>存储节点最小数量</p>
        # @type StorageNodeMinNum: Integer
        # @param StorageNodeMinDisk: <p>存储节点磁盘大小下限</p>
        # @type StorageNodeMinDisk: Integer
        # @param StorageType: <p>磁盘类型，CLOUD_HSSD增强型SSD,CLOUD_TCS本地SSD盘</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageType: String
        # @param StorageNodeDefaultDisk: <p>存储节点默认磁盘大小，用于前端展示</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageNodeDefaultDisk: Integer
        # @param InstanceMode: <p>规格支持计费模式列表</p>
        # @type InstanceMode: Array
        # @param DiskTypeCategory: <p>磁盘类型CLOUD_DISK：云盘LOCAL_DISK：本地盘</p>
        # @type DiskTypeCategory: String

        attr_accessor :SpecCode, :StorageNodeCpu, :StorageNodeMem, :StorageNodeMaxNum, :StorageNodeMaxDisk, :StorageNodeMinNum, :StorageNodeMinDisk, :StorageType, :StorageNodeDefaultDisk, :InstanceMode, :DiskTypeCategory

        def initialize(speccode=nil, storagenodecpu=nil, storagenodemem=nil, storagenodemaxnum=nil, storagenodemaxdisk=nil, storagenodeminnum=nil, storagenodemindisk=nil, storagetype=nil, storagenodedefaultdisk=nil, instancemode=nil, disktypecategory=nil)
          @SpecCode = speccode
          @StorageNodeCpu = storagenodecpu
          @StorageNodeMem = storagenodemem
          @StorageNodeMaxNum = storagenodemaxnum
          @StorageNodeMaxDisk = storagenodemaxdisk
          @StorageNodeMinNum = storagenodeminnum
          @StorageNodeMinDisk = storagenodemindisk
          @StorageType = storagetype
          @StorageNodeDefaultDisk = storagenodedefaultdisk
          @InstanceMode = instancemode
          @DiskTypeCategory = disktypecategory
        end

        def deserialize(params)
          @SpecCode = params['SpecCode']
          @StorageNodeCpu = params['StorageNodeCpu']
          @StorageNodeMem = params['StorageNodeMem']
          @StorageNodeMaxNum = params['StorageNodeMaxNum']
          @StorageNodeMaxDisk = params['StorageNodeMaxDisk']
          @StorageNodeMinNum = params['StorageNodeMinNum']
          @StorageNodeMinDisk = params['StorageNodeMinDisk']
          @StorageType = params['StorageType']
          @StorageNodeDefaultDisk = params['StorageNodeDefaultDisk']
          @InstanceMode = params['InstanceMode']
          @DiskTypeCategory = params['DiskTypeCategory']
        end
      end

      # 表级别权限
      class TablePrivileges < TencentCloud::Common::AbstractModel
        # @param Database: DATABASE名
        # @type Database: String
        # @param Table: 表名
        # @type Table: String
        # @param Privileges: 权限列表
        # @type Privileges: Array

        attr_accessor :Database, :Table, :Privileges

        def initialize(database=nil, table=nil, privileges=nil)
          @Database = database
          @Table = table
          @Privileges = privileges
        end

        def deserialize(params)
          @Database = params['Database']
          @Table = params['Table']
          @Privileges = params['Privileges']
        end
      end

      # UpgradeInstance请求参数结构体
      class UpgradeInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param SpecCode: <p>实例规格码</p>
        # @type SpecCode: String
        # @param Disk: <p>存储节点磁盘容量，单位GB</p>
        # @type Disk: Integer
        # @param StorageNodeCpu: <p>存储节点CPU核数</p>
        # @type StorageNodeCpu: Integer
        # @param StorageNodeMem: <p>存储节点内存大小</p>
        # @type StorageNodeMem: Integer
        # @param StorageType: <p>磁盘类型，需要修改磁盘类型时传</p>
        # @type StorageType: String

        attr_accessor :InstanceId, :SpecCode, :Disk, :StorageNodeCpu, :StorageNodeMem, :StorageType

        def initialize(instanceid=nil, speccode=nil, disk=nil, storagenodecpu=nil, storagenodemem=nil, storagetype=nil)
          @InstanceId = instanceid
          @SpecCode = speccode
          @Disk = disk
          @StorageNodeCpu = storagenodecpu
          @StorageNodeMem = storagenodemem
          @StorageType = storagetype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SpecCode = params['SpecCode']
          @Disk = params['Disk']
          @StorageNodeCpu = params['StorageNodeCpu']
          @StorageNodeMem = params['StorageNodeMem']
          @StorageType = params['StorageType']
        end
      end

      # UpgradeInstance返回参数结构体
      class UpgradeInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: <p>任务ID</p>
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

      # 数据库账号信息
      class User < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param Host: 主机
        # @type Host: String

        attr_accessor :UserName, :Host

        def initialize(username=nil, host=nil)
          @UserName = username
          @Host = host
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Host = params['Host']
        end
      end

      # 用户信息类型
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param Description: 用户描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Host: 主机IP，IP段以%结尾，表示允许该IP段的所有IP
        # @type Host: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :UserName, :Description, :Host, :CreateTime, :UpdateTime

        def initialize(username=nil, description=nil, host=nil, createtime=nil, updatetime=nil)
          @UserName = username
          @Description = description
          @Host = host
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Description = params['Description']
          @Host = params['Host']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

    end
  end
end

