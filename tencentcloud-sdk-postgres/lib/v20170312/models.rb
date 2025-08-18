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
  module Postgres
    module V20170312
      # 账户信息
      class AccountInfo < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-lnp6j617
        # @type DBInstanceId: String
        # @param UserName: 账号
        # @type UserName: String
        # @param Remark: 账号备注
        # @type Remark: String
        # @param Status: 账号状态。 1-创建中，2-正常，3-修改中，4-密码重置中，5-锁定中，-1-删除中
        # @type Status: Integer
        # @param CreateTime: 账号创建时间
        # @type CreateTime: String
        # @param UpdateTime: 账号最后一次更新时间
        # @type UpdateTime: String
        # @param UserType: 账号类型
        # @type UserType: String

        attr_accessor :DBInstanceId, :UserName, :Remark, :Status, :CreateTime, :UpdateTime, :UserType

        def initialize(dbinstanceid=nil, username=nil, remark=nil, status=nil, createtime=nil, updatetime=nil, usertype=nil)
          @DBInstanceId = dbinstanceid
          @UserName = username
          @Remark = remark
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
          @UserType = usertype
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @UserName = params['UserName']
          @Remark = params['Remark']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @UserType = params['UserType']
        end
      end

      # AddDBInstanceToReadOnlyGroup请求参数结构体
      class AddDBInstanceToReadOnlyGroupRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param ReadOnlyGroupId: 只读组ID。可通过[DescribeReadOnlyGroups](https://cloud.tencent.com/document/api/409/52599)接口获取
        # @type ReadOnlyGroupId: String

        attr_accessor :DBInstanceId, :ReadOnlyGroupId

        def initialize(dbinstanceid=nil, readonlygroupid=nil)
          @DBInstanceId = dbinstanceid
          @ReadOnlyGroupId = readonlygroupid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
        end
      end

      # AddDBInstanceToReadOnlyGroup返回参数结构体
      class AddDBInstanceToReadOnlyGroupResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
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

      # 慢查询分析接口返回的分析详情，按照参数抽象之后进行分类
      class AnalysisItems < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 慢SQL查询的数据库名
        # @type DatabaseName: String
        # @param UserName: 慢SQL执行的用户名
        # @type UserName: String
        # @param NormalQuery: 抽象参数之后的慢SQL
        # @type NormalQuery: String
        # @param ClientAddr: 慢SQL执行的客户端地址
        # @type ClientAddr: String
        # @param CallNum: 在选定时间范围内慢SQL语句执行的次数
        # @type CallNum: Integer
        # @param CallPercent: 在选定时间范围内，慢SQL语句执行的次数占所有慢SQL的百分比。
        # @type CallPercent: Float
        # @param CostTime: 在选定时间范围内，慢SQL执行的总时间
        # @type CostTime: Float
        # @param CostPercent: 在选定时间范围内，慢SQL语句执行的总时间占所有慢SQL的比例（小数返回）
        # @type CostPercent: Float
        # @param MinCostTime: 在选定时间范围内，慢SQL语句执行的耗时最短的时间（单位：ms）
        # @type MinCostTime: Float
        # @param MaxCostTime: 在选定时间范围内，慢SQL语句执行的耗时最长的时间（单位：ms）
        # @type MaxCostTime: Float
        # @param AvgCostTime: 在选定时间范围内，慢SQL语句执行的耗时平均时间（单位：ms）
        # @type AvgCostTime: Float
        # @param FirstTime: 在选定时间范围内，慢SQL第一条开始执行的时间
        # @type FirstTime: String
        # @param LastTime: 在选定时间范围内，慢SQL最后一条开始执行的时间
        # @type LastTime: String

        attr_accessor :DatabaseName, :UserName, :NormalQuery, :ClientAddr, :CallNum, :CallPercent, :CostTime, :CostPercent, :MinCostTime, :MaxCostTime, :AvgCostTime, :FirstTime, :LastTime

        def initialize(databasename=nil, username=nil, normalquery=nil, clientaddr=nil, callnum=nil, callpercent=nil, costtime=nil, costpercent=nil, mincosttime=nil, maxcosttime=nil, avgcosttime=nil, firsttime=nil, lasttime=nil)
          @DatabaseName = databasename
          @UserName = username
          @NormalQuery = normalquery
          @ClientAddr = clientaddr
          @CallNum = callnum
          @CallPercent = callpercent
          @CostTime = costtime
          @CostPercent = costpercent
          @MinCostTime = mincosttime
          @MaxCostTime = maxcosttime
          @AvgCostTime = avgcosttime
          @FirstTime = firsttime
          @LastTime = lasttime
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @UserName = params['UserName']
          @NormalQuery = params['NormalQuery']
          @ClientAddr = params['ClientAddr']
          @CallNum = params['CallNum']
          @CallPercent = params['CallPercent']
          @CostTime = params['CostTime']
          @CostPercent = params['CostPercent']
          @MinCostTime = params['MinCostTime']
          @MaxCostTime = params['MaxCostTime']
          @AvgCostTime = params['AvgCostTime']
          @FirstTime = params['FirstTime']
          @LastTime = params['LastTime']
        end
      end

      # 备份下载限制信息
      class BackupDownloadRestriction < TencentCloud::Common::AbstractModel
        # @param RestrictionType: 备份文件下载限制类型，NONE 无限制，内外网都可以下载；INTRANET 只允许内网下载；CUSTOMIZE 自定义限制下载的vpc或ip。当该参数取值为CUSTOMIZE 时，vpc或ip信息至少填写一项
        # @type RestrictionType: String
        # @param VpcRestrictionEffect: vpc限制效力，ALLOW 允许；DENY 拒绝。
        # @type VpcRestrictionEffect: String
        # @param VpcIdSet: 允许或拒绝下载备份文件的vpcId列表。
        # @type VpcIdSet: Array
        # @param IpRestrictionEffect: ip限制效力，ALLOW 允许；DENY 拒绝。
        # @type IpRestrictionEffect: String
        # @param IpSet: 允许或拒绝下载备份文件的ip列表。
        # @type IpSet: Array

        attr_accessor :RestrictionType, :VpcRestrictionEffect, :VpcIdSet, :IpRestrictionEffect, :IpSet

        def initialize(restrictiontype=nil, vpcrestrictioneffect=nil, vpcidset=nil, iprestrictioneffect=nil, ipset=nil)
          @RestrictionType = restrictiontype
          @VpcRestrictionEffect = vpcrestrictioneffect
          @VpcIdSet = vpcidset
          @IpRestrictionEffect = iprestrictioneffect
          @IpSet = ipset
        end

        def deserialize(params)
          @RestrictionType = params['RestrictionType']
          @VpcRestrictionEffect = params['VpcRestrictionEffect']
          @VpcIdSet = params['VpcIdSet']
          @IpRestrictionEffect = params['IpRestrictionEffect']
          @IpSet = params['IpSet']
        end
      end

      # 备份计划
      class BackupPlan < TencentCloud::Common::AbstractModel
        # @param BackupPeriod: 备份周期
        # @type BackupPeriod: String
        # @param BaseBackupRetentionPeriod: 数据备份保留时长。单位：天
        # @type BaseBackupRetentionPeriod: Integer
        # @param MinBackupStartTime: 开始备份的最早时间
        # @type MinBackupStartTime: String
        # @param MaxBackupStartTime: 开始备份的最晚时间
        # @type MaxBackupStartTime: String
        # @param PlanId: 备份计划ID
        # @type PlanId: String
        # @param PlanName: 备份计划自定义名称。
        # @type PlanName: String
        # @param LogBackupRetentionPeriod: 日志备份保留时长。单位：天
        # @type LogBackupRetentionPeriod: Integer
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param UpdatedTime: 最近一次的修改时间。
        # @type UpdatedTime: String
        # @param PlanType: 备份计划类型。系统默认创建的为default，自定义的为custom。
        # @type PlanType: String
        # @param BackupPeriodType: 备份周期类型。当前支持week、month。
        # @type BackupPeriodType: String

        attr_accessor :BackupPeriod, :BaseBackupRetentionPeriod, :MinBackupStartTime, :MaxBackupStartTime, :PlanId, :PlanName, :LogBackupRetentionPeriod, :CreatedTime, :UpdatedTime, :PlanType, :BackupPeriodType

        def initialize(backupperiod=nil, basebackupretentionperiod=nil, minbackupstarttime=nil, maxbackupstarttime=nil, planid=nil, planname=nil, logbackupretentionperiod=nil, createdtime=nil, updatedtime=nil, plantype=nil, backupperiodtype=nil)
          @BackupPeriod = backupperiod
          @BaseBackupRetentionPeriod = basebackupretentionperiod
          @MinBackupStartTime = minbackupstarttime
          @MaxBackupStartTime = maxbackupstarttime
          @PlanId = planid
          @PlanName = planname
          @LogBackupRetentionPeriod = logbackupretentionperiod
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @PlanType = plantype
          @BackupPeriodType = backupperiodtype
        end

        def deserialize(params)
          @BackupPeriod = params['BackupPeriod']
          @BaseBackupRetentionPeriod = params['BaseBackupRetentionPeriod']
          @MinBackupStartTime = params['MinBackupStartTime']
          @MaxBackupStartTime = params['MaxBackupStartTime']
          @PlanId = params['PlanId']
          @PlanName = params['PlanName']
          @LogBackupRetentionPeriod = params['LogBackupRetentionPeriod']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          @PlanType = params['PlanType']
          @BackupPeriodType = params['BackupPeriodType']
        end
      end

      # 实例备份统计项
      class BackupSummary < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。
        # @type DBInstanceId: String
        # @param LogBackupCount: 实例日志备份数量。
        # @type LogBackupCount: Integer
        # @param LogBackupSize: 实例日志备份大小。
        # @type LogBackupSize: Integer
        # @param ManualBaseBackupCount: 手动创建的实例数据备份数量。
        # @type ManualBaseBackupCount: Integer
        # @param ManualBaseBackupSize: 手动创建的实例数据备份大小。
        # @type ManualBaseBackupSize: Integer
        # @param AutoBaseBackupCount: 自动创建的实例数据备份数量。
        # @type AutoBaseBackupCount: Integer
        # @param AutoBaseBackupSize: 自动创建的实例数据备份大小。
        # @type AutoBaseBackupSize: Integer
        # @param TotalBackupCount: 总备份数量
        # @type TotalBackupCount: Integer
        # @param TotalBackupSize: 总备份大小
        # @type TotalBackupSize: Integer

        attr_accessor :DBInstanceId, :LogBackupCount, :LogBackupSize, :ManualBaseBackupCount, :ManualBaseBackupSize, :AutoBaseBackupCount, :AutoBaseBackupSize, :TotalBackupCount, :TotalBackupSize

        def initialize(dbinstanceid=nil, logbackupcount=nil, logbackupsize=nil, manualbasebackupcount=nil, manualbasebackupsize=nil, autobasebackupcount=nil, autobasebackupsize=nil, totalbackupcount=nil, totalbackupsize=nil)
          @DBInstanceId = dbinstanceid
          @LogBackupCount = logbackupcount
          @LogBackupSize = logbackupsize
          @ManualBaseBackupCount = manualbasebackupcount
          @ManualBaseBackupSize = manualbasebackupsize
          @AutoBaseBackupCount = autobasebackupcount
          @AutoBaseBackupSize = autobasebackupsize
          @TotalBackupCount = totalbackupcount
          @TotalBackupSize = totalbackupsize
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @LogBackupCount = params['LogBackupCount']
          @LogBackupSize = params['LogBackupSize']
          @ManualBaseBackupCount = params['ManualBaseBackupCount']
          @ManualBaseBackupSize = params['ManualBaseBackupSize']
          @AutoBaseBackupCount = params['AutoBaseBackupCount']
          @AutoBaseBackupSize = params['AutoBaseBackupSize']
          @TotalBackupCount = params['TotalBackupCount']
          @TotalBackupSize = params['TotalBackupSize']
        end
      end

      # 数据库数据备份信息
      class BaseBackup < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。
        # @type DBInstanceId: String
        # @param Id: 备份文件唯一标识。
        # @type Id: String
        # @param Name: 备份文件名称。
        # @type Name: String
        # @param BackupMethod: 备份方式：physical - 物理备份、logical - 逻辑备份。
        # @type BackupMethod: String
        # @param BackupMode: 备份模式：automatic - 自动备份、manual - 手动备份。
        # @type BackupMode: String
        # @param State: 备份任务状态。枚举值：init、running、finished、failed、canceled
        # @type State: String
        # @param Size: 备份集大小，单位bytes。
        # @type Size: Integer
        # @param StartTime: 备份的开始时间。
        # @type StartTime: String
        # @param FinishTime: 备份的结束时间。
        # @type FinishTime: String
        # @param ExpireTime: 备份的过期时间。
        # @type ExpireTime: String

        attr_accessor :DBInstanceId, :Id, :Name, :BackupMethod, :BackupMode, :State, :Size, :StartTime, :FinishTime, :ExpireTime

        def initialize(dbinstanceid=nil, id=nil, name=nil, backupmethod=nil, backupmode=nil, state=nil, size=nil, starttime=nil, finishtime=nil, expiretime=nil)
          @DBInstanceId = dbinstanceid
          @Id = id
          @Name = name
          @BackupMethod = backupmethod
          @BackupMode = backupmode
          @State = state
          @Size = size
          @StartTime = starttime
          @FinishTime = finishtime
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @Id = params['Id']
          @Name = params['Name']
          @BackupMethod = params['BackupMethod']
          @BackupMode = params['BackupMode']
          @State = params['State']
          @Size = params['Size']
          @StartTime = params['StartTime']
          @FinishTime = params['FinishTime']
          @ExpireTime = params['ExpireTime']
        end
      end

      # 数据库实例规格
      class ClassInfo < TencentCloud::Common::AbstractModel
        # @param SpecCode: 规格ID
        # @type SpecCode: String
        # @param CPU: CPU核数
        # @type CPU: Integer
        # @param Memory: 内存大小，单位：MB
        # @type Memory: Integer
        # @param MaxStorage: 该规格所支持最大存储容量，单位：GB
        # @type MaxStorage: Integer
        # @param MinStorage: 该规格所支持最小存储容量，单位：GB
        # @type MinStorage: Integer
        # @param QPS: 该规格的预估QPS
        # @type QPS: Integer

        attr_accessor :SpecCode, :CPU, :Memory, :MaxStorage, :MinStorage, :QPS

        def initialize(speccode=nil, cpu=nil, memory=nil, maxstorage=nil, minstorage=nil, qps=nil)
          @SpecCode = speccode
          @CPU = cpu
          @Memory = memory
          @MaxStorage = maxstorage
          @MinStorage = minstorage
          @QPS = qps
        end

        def deserialize(params)
          @SpecCode = params['SpecCode']
          @CPU = params['CPU']
          @Memory = params['Memory']
          @MaxStorage = params['MaxStorage']
          @MinStorage = params['MinStorage']
          @QPS = params['QPS']
        end
      end

      # CloneDBInstance请求参数结构体
      class CloneDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 克隆的源实例ID。
        # @type DBInstanceId: String
        # @param SpecCode: 售卖规格码。该参数可以通过调用[DescribeClasses](https://cloud.tencent.com/document/api/409/89019)的返回值中的SpecCode字段来获取。
        # @type SpecCode: String
        # @param Storage: 实例容量大小，单位：GB。
        # @type Storage: Integer
        # @param Period: 购买时长，单位：月。

        # - 预付费：支持1,2,3,4,5,6,7,8,9,10,11,12,24,36
        # - 后付费：只支持1
        # @type Period: Integer
        # @param AutoRenewFlag: 续费标记：

        # - 0：手动续费
        # - 1：自动续费

        # 默认值：0
        # @type AutoRenewFlag: Integer
        # @param VpcId: 私有网络ID，形如vpc-xxxxxxxx。有效的VpcId可通过登录控制台查询；也可以调用接口 [DescribeVpcEx](https://cloud.tencent.com/document/api/215/1372) ，从接口返回中的unVpcId字段获取。
        # @type VpcId: String
        # @param SubnetId: 私有网络子网ID，形如subnet-xxxxxxxx。有效的私有网络子网ID可通过登录控制台查询；也可以调用接口 [DescribeSubnets ](https://cloud.tencent.com/document/api/215/15784)，从接口返回中的unSubnetId字段获取。
        # @type SubnetId: String
        # @param Name: 新购的实例名称，仅支持长度小于60的中文/英文/数字/"_"/"-"，不指定实例名称则默认显示"未命名"。
        # @type Name: String
        # @param InstanceChargeType: 实例计费类型，目前支持：

        # - PREPAID：预付费，即包年包月
        # - POSTPAID_BY_HOUR：后付费，即按量计费

        # 默认值：PREPAID
        # @type InstanceChargeType: String
        # @param SecurityGroupIds: 实例所属安全组，该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。
        # @type SecurityGroupIds: Array
        # @param ProjectId: 项目ID。
        # @type ProjectId: Integer
        # @param TagList: 实例需要绑定的Tag信息，默认为空；可以通过调用 [DescribeTags](https://cloud.tencent.com/document/api/651/35316) 返回值中的 Tags 字段来获取。
        # @type TagList: Array
        # @param DBNodeSet: 实例节点部署信息，支持多可用区部署时需要指定每个节点的部署可用区信息。
        # 可用区信息可以通过调用 [DescribeZones](https://cloud.tencent.com/document/api/409/16769) 接口的返回值中的Zone字段来获取。
        # @type DBNodeSet: Array
        # @param AutoVoucher: 是否自动使用代金券：

        # - 0：否
        # - 1：是

        # 默认值：0
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID列表。
        # @type VoucherIds: String
        # @param ActivityId: 活动ID。
        # @type ActivityId: Integer
        # @param BackupSetId: 基础备份集ID。
        # @type BackupSetId: String
        # @param RecoveryTargetTime: 恢复时间点。
        # @type RecoveryTargetTime: String
        # @param SyncMode: 主从同步方式，支持：
        # <li>Semi-sync：半同步</li>
        # <li>Async：异步</li>
        # 主实例默认值：Semi-sync
        # 只读实例默认值：Async
        # @type SyncMode: String

        attr_accessor :DBInstanceId, :SpecCode, :Storage, :Period, :AutoRenewFlag, :VpcId, :SubnetId, :Name, :InstanceChargeType, :SecurityGroupIds, :ProjectId, :TagList, :DBNodeSet, :AutoVoucher, :VoucherIds, :ActivityId, :BackupSetId, :RecoveryTargetTime, :SyncMode

        def initialize(dbinstanceid=nil, speccode=nil, storage=nil, period=nil, autorenewflag=nil, vpcid=nil, subnetid=nil, name=nil, instancechargetype=nil, securitygroupids=nil, projectid=nil, taglist=nil, dbnodeset=nil, autovoucher=nil, voucherids=nil, activityid=nil, backupsetid=nil, recoverytargettime=nil, syncmode=nil)
          @DBInstanceId = dbinstanceid
          @SpecCode = speccode
          @Storage = storage
          @Period = period
          @AutoRenewFlag = autorenewflag
          @VpcId = vpcid
          @SubnetId = subnetid
          @Name = name
          @InstanceChargeType = instancechargetype
          @SecurityGroupIds = securitygroupids
          @ProjectId = projectid
          @TagList = taglist
          @DBNodeSet = dbnodeset
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @ActivityId = activityid
          @BackupSetId = backupsetid
          @RecoveryTargetTime = recoverytargettime
          @SyncMode = syncmode
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @SpecCode = params['SpecCode']
          @Storage = params['Storage']
          @Period = params['Period']
          @AutoRenewFlag = params['AutoRenewFlag']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Name = params['Name']
          @InstanceChargeType = params['InstanceChargeType']
          @SecurityGroupIds = params['SecurityGroupIds']
          @ProjectId = params['ProjectId']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagList << tag_tmp
            end
          end
          unless params['DBNodeSet'].nil?
            @DBNodeSet = []
            params['DBNodeSet'].each do |i|
              dbnode_tmp = DBNode.new
              dbnode_tmp.deserialize(i)
              @DBNodeSet << dbnode_tmp
            end
          end
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @ActivityId = params['ActivityId']
          @BackupSetId = params['BackupSetId']
          @RecoveryTargetTime = params['RecoveryTargetTime']
          @SyncMode = params['SyncMode']
        end
      end

      # CloneDBInstance返回参数结构体
      class CloneDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单号。
        # @type DealName: String
        # @param BillId: 订单流水号。
        # @type BillId: String
        # @param DBInstanceId: 克隆出的新实例ID，当前只支持后付费返回该值。
        # @type DBInstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :BillId, :DBInstanceId, :RequestId

        def initialize(dealname=nil, billid=nil, dbinstanceid=nil, requestid=nil)
          @DealName = dealname
          @BillId = billid
          @DBInstanceId = dbinstanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @BillId = params['BillId']
          @DBInstanceId = params['DBInstanceId']
          @RequestId = params['RequestId']
        end
      end

      # CloseDBExtranetAccess请求参数结构体
      class CloseDBExtranetAccessRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取。形如postgres-6r233v55
        # @type DBInstanceId: String
        # @param IsIpv6: 是否关闭Ipv6外网，1：是，0：否。默认值：0。
        # @type IsIpv6: Integer

        attr_accessor :DBInstanceId, :IsIpv6

        def initialize(dbinstanceid=nil, isipv6=nil)
          @DBInstanceId = dbinstanceid
          @IsIpv6 = isipv6
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @IsIpv6 = params['IsIpv6']
        end
      end

      # CloseDBExtranetAccess返回参数结构体
      class CloseDBExtranetAccessResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务流程ID
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

      # CreateAccount请求参数结构体
      class CreateAccountRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。
        # @type DBInstanceId: String
        # @param UserName: 创建的账号名称。
        # @type UserName: String
        # @param Password: 账号对应的密码。
        # @type Password: String
        # @param Type: 账号类型。当前支持normal、tencentDBSuper两个输入。normal指代普通用户，tencentDBSuper为拥有pg_tencentdb_superuser角色的账号。
        # @type Type: String
        # @param Remark: 账号备注。
        # @type Remark: String

        attr_accessor :DBInstanceId, :UserName, :Password, :Type, :Remark

        def initialize(dbinstanceid=nil, username=nil, password=nil, type=nil, remark=nil)
          @DBInstanceId = dbinstanceid
          @UserName = username
          @Password = password
          @Type = type
          @Remark = remark
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @UserName = params['UserName']
          @Password = params['Password']
          @Type = params['Type']
          @Remark = params['Remark']
        end
      end

      # CreateAccount返回参数结构体
      class CreateAccountResponse < TencentCloud::Common::AbstractModel
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

      # CreateBackupPlan请求参数结构体
      class CreateBackupPlanRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param PlanName: 备份计划名称。
        # @type PlanName: String
        # @param BackupPeriodType: 创建的备份计划类型，当前仅支持month创建。
        # @type BackupPeriodType: String
        # @param BackupPeriod: 备份的日期，示例是每个月的2号开启备份。
        # @type BackupPeriod: Array
        # @param MinBackupStartTime: 备份开始时间，不传跟随默认备份计划。
        # @type MinBackupStartTime: String
        # @param MaxBackupStartTime: 备份结束时间，不传跟随默认计划。
        # @type MaxBackupStartTime: String
        # @param BaseBackupRetentionPeriod: 数据备份保留时长，单位：天。取值范围为：[0,30000)
        # BackupPeriodType为week时默认是7,为month时默认为31。
        # @type BaseBackupRetentionPeriod: Integer

        attr_accessor :DBInstanceId, :PlanName, :BackupPeriodType, :BackupPeriod, :MinBackupStartTime, :MaxBackupStartTime, :BaseBackupRetentionPeriod

        def initialize(dbinstanceid=nil, planname=nil, backupperiodtype=nil, backupperiod=nil, minbackupstarttime=nil, maxbackupstarttime=nil, basebackupretentionperiod=nil)
          @DBInstanceId = dbinstanceid
          @PlanName = planname
          @BackupPeriodType = backupperiodtype
          @BackupPeriod = backupperiod
          @MinBackupStartTime = minbackupstarttime
          @MaxBackupStartTime = maxbackupstarttime
          @BaseBackupRetentionPeriod = basebackupretentionperiod
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @PlanName = params['PlanName']
          @BackupPeriodType = params['BackupPeriodType']
          @BackupPeriod = params['BackupPeriod']
          @MinBackupStartTime = params['MinBackupStartTime']
          @MaxBackupStartTime = params['MaxBackupStartTime']
          @BaseBackupRetentionPeriod = params['BaseBackupRetentionPeriod']
        end
      end

      # CreateBackupPlan返回参数结构体
      class CreateBackupPlanResponse < TencentCloud::Common::AbstractModel
        # @param PlanId: 备份策略的ID.
        # @type PlanId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlanId, :RequestId

        def initialize(planid=nil, requestid=nil)
          @PlanId = planid
          @RequestId = requestid
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @RequestId = params['RequestId']
        end
      end

      # CreateBaseBackup请求参数结构体
      class CreateBaseBackupRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String

        attr_accessor :DBInstanceId

        def initialize(dbinstanceid=nil)
          @DBInstanceId = dbinstanceid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
        end
      end

      # CreateBaseBackup返回参数结构体
      class CreateBaseBackupResponse < TencentCloud::Common::AbstractModel
        # @param BaseBackupId: 数据备份集ID
        # @type BaseBackupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BaseBackupId, :RequestId

        def initialize(basebackupid=nil, requestid=nil)
          @BaseBackupId = basebackupid
          @RequestId = requestid
        end

        def deserialize(params)
          @BaseBackupId = params['BaseBackupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDBInstanceNetworkAccess请求参数结构体
      class CreateDBInstanceNetworkAccessRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如：postgres-6bwgamo3。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param VpcId: 私有网络统一 ID。
        # @type VpcId: String
        # @param SubnetId: 子网ID。
        # @type SubnetId: String
        # @param IsAssignVip: 是否指定分配vip true-指定分配  false-自动分配。
        # @type IsAssignVip: Boolean
        # @param Vip: 目标VIP地址。当不指定该参数，且IsAssignVip为true时，默认自动分配Vip。
        # @type Vip: String

        attr_accessor :DBInstanceId, :VpcId, :SubnetId, :IsAssignVip, :Vip

        def initialize(dbinstanceid=nil, vpcid=nil, subnetid=nil, isassignvip=nil, vip=nil)
          @DBInstanceId = dbinstanceid
          @VpcId = vpcid
          @SubnetId = subnetid
          @IsAssignVip = isassignvip
          @Vip = vip
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @IsAssignVip = params['IsAssignVip']
          @Vip = params['Vip']
        end
      end

      # CreateDBInstanceNetworkAccess返回参数结构体
      class CreateDBInstanceNetworkAccessResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID。
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

      # CreateDatabase请求参数结构体
      class CreateDatabaseRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-6fego161。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param DatabaseName: 创建的数据库名。
        # 名称规范：由字母（a-z, A-Z）、数字（0-9）、下划线（_）组成，以字母或（_）开头，最多63个字符。不能使用系统保留关键字，不能为postgres。
        # @type DatabaseName: String
        # @param DatabaseOwner: 数据库的所有者。可通过[DescribeAccounts](https://cloud.tencent.com/document/api/409/18109)接口获取
        # @type DatabaseOwner: String
        # @param Encoding: 数据库的字符编码。
        # 支持的常用字符集包括：UTF8、LATIN1、LATIN2、WIN1250、WIN1251、WIN1252、KOI8R、EUC_JP、EUC_KR
        # 默认值：UTF8
        # @type Encoding: String
        # @param Collate: 数据库的排序规则
        # @type Collate: String
        # @param Ctype: 数据库的字符分类
        # @type Ctype: String

        attr_accessor :DBInstanceId, :DatabaseName, :DatabaseOwner, :Encoding, :Collate, :Ctype

        def initialize(dbinstanceid=nil, databasename=nil, databaseowner=nil, encoding=nil, collate=nil, ctype=nil)
          @DBInstanceId = dbinstanceid
          @DatabaseName = databasename
          @DatabaseOwner = databaseowner
          @Encoding = encoding
          @Collate = collate
          @Ctype = ctype
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @DatabaseName = params['DatabaseName']
          @DatabaseOwner = params['DatabaseOwner']
          @Encoding = params['Encoding']
          @Collate = params['Collate']
          @Ctype = params['Ctype']
        end
      end

      # CreateDatabase返回参数结构体
      class CreateDatabaseResponse < TencentCloud::Common::AbstractModel
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

      # CreateInstances请求参数结构体
      class CreateInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 实例所属主可用区， 如：ap-guangzhou-3；若需要支持多可用区，在DBNodeSet.N字段中进行添加主可用区和备可用区信息；
        # 可用区信息可以通过调用 [DescribeZones](https://cloud.tencent.com/document/api/409/16769) 接口的返回值中的Zone字段来获取。
        # @type Zone: String
        # @param SpecCode: 售卖规格码。该参数可以通过调用[DescribeClasses](https://cloud.tencent.com/document/api/409/89019)的返回值中的SpecCode字段来获取。
        # @type SpecCode: String
        # @param Storage: 实例磁盘容量大小，单位：GB。该参数的设置步长为10。
        # @type Storage: Integer
        # @param InstanceCount: 购买实例数量，取值范围：[1-10]。一次性购买支持最大数量10个，若超过该数量，可进行多次调用进行购买。
        # @type InstanceCount: Integer
        # @param Period: 购买时长，单位：月。
        # <li>预付费：支持1,2,3,4,5,6,7,8,9,10,11,12,24,36</li>
        # <li>后付费：只支持1</li>
        # @type Period: Integer
        # @param Charset: 实例字符集，目前只支持：
        # <li> UTF8</li>
        # <li> LATIN1</li>
        # @type Charset: String
        # @param AdminName: 实例根账号用户名，具体规范如下：
        # <li>用户名需要1-16个字符，只能由字母、数字或下划线组成</li>
        # <li>不能为postgres</li>
        # <li>不能由数字和pg_开头</li>
        # <li>所有规则均不区分大小写</li>
        # @type AdminName: String
        # @param AdminPassword: 实例根账号用户名对应的密码，长度8 ~ 32位，推荐使用12位以上的密码;不能以" / "开头;
        # 必须包含以下四项，字符种类:
        # <li>小写字母： [a ~ z]</li>
        # <li>大写字母：[A ～ Z]</li>
        # <li>数字：0 - 9</li>
        # <li>特殊字符：()`~!@#$%^&*-+=_|{}[]:;'<>,.?/</li>
        # @type AdminPassword: String
        # @param DBMajorVersion: PostgreSQL大版本号（该参数当前必传），版本信息可从[DescribeDBVersions](https://cloud.tencent.com/document/api/409/89018)获取。目前支持10，11，12，13，14，15这几个大版本，详情见[内核版本概述](https://cloud.tencent.com/document/product/409/67018)。
        # 输入该参数时，会基于此大版本号创建对应的最新小版本的最新内核版本号实例。
        # @type DBMajorVersion: String
        # @param DBVersion: PostgreSQL社区大版本+小版本号。
        # 一般场景不推荐传入该参数。如需指定，只能传当前大版本号下最新小版本号。
        # @type DBVersion: String
        # @param DBKernelVersion: PostgreSQL内核版本号。
        # 一般场景不推荐传入该参数。如需指定，只能传当前大版本号下最新内核版本号。
        # @type DBKernelVersion: String
        # @param InstanceChargeType: 实例计费类型，目前支持：
        # <li>PREPAID：预付费，即包年包月</li>
        # <li>POSTPAID_BY_HOUR：后付费，即按量计费</li>
        # 默认值：PREPAID
        # @type InstanceChargeType: String
        # @param VpcId: 私有网络ID，形如vpc-xxxxxxxx（该参数当前必传）。有效的VpcId可通过登录控制台查询；也可以调用接口 [DescribeVpcEx](https://cloud.tencent.com/document/api/215/1372) ，从接口返回中的unVpcId字段获取。
        # @type VpcId: String
        # @param SubnetId: 私有网络子网ID，形如subnet-xxxxxxxx（该参数当前必传）。有效的私有网络子网ID可通过登录控制台查询；也可以调用接口 [DescribeSubnets ](https://cloud.tencent.com/document/api/215/15784)，从接口返回中的unSubnetId字段获取。
        # @type SubnetId: String
        # @param DBNodeSet: 实例节点部署信息，支持多可用区部署时需要指定每个节点的部署可用区信息。
        # 可用区信息可以通过调用 [DescribeZones](https://cloud.tencent.com/document/api/409/16769) 接口的返回值中的Zone字段来获取。
        # @type DBNodeSet: Array
        # @param AutoRenewFlag: 续费标记：
        # <li>0：手动续费</li>
        # <li>1：自动续费</li>
        # 默认值：0
        # @type AutoRenewFlag: Integer
        # @param AutoVoucher: 是否自动使用代金券：
        # <li>0：否</li>
        # <li>1：是</li>
        # 默认值：0
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID列表，目前仅支持指定一张代金券。
        # @type VoucherIds: Array
        # @param ProjectId: 项目ID。默认取之为0，表示归属默认项目。
        # @type ProjectId: Integer
        # @param ActivityId: 活动ID。
        # @type ActivityId: Integer
        # @param Name: 实例名称，仅支持长度小于60的中文/英文/数字/"_"/"-"，不指定实例名称则默认显示"未命名"。
        # @type Name: String
        # @param TagList: 实例需要绑定的Tag信息，默认为空；可以通过调用 [DescribeTags](https://cloud.tencent.com/document/api/651/35316) 返回值中的 Tags 字段来获取。
        # @type TagList: Array
        # @param SecurityGroupIds: 实例所属安全组，该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。
        # @type SecurityGroupIds: Array
        # @param NeedSupportTDE: 是否需要支持数据透明加密：
        # <li>0：否</li>
        # <li>1：是</li>
        # 默认值：0
        # 参考[数据透明加密概述](https://cloud.tencent.com/document/product/409/71748)
        # @type NeedSupportTDE: Integer
        # @param KMSKeyId: 自定义密钥的KeyId，若选择自定义密匙加密，则需要传入自定义密匙的KeyId，KeyId是CMK的唯一标识。
        # KeyId创建获取相关参考[开启透明数据加密](https://cloud.tencent.com/document/product/409/71749)
        # @type KMSKeyId: String
        # @param KMSRegion: 使用KMS服务的地域，KMSRegion为空默认使用本地域的KMS，本地域不支持的情况下需自选其他KMS支持的地域。
        # KMSRegion相关介绍参考[开启透明数据加密](https://cloud.tencent.com/document/product/409/71749)
        # @type KMSRegion: String
        # @param KMSClusterId: 指定KMS服务的集群，KMSClusterId为空使用默认集群的KMS，若选择指定KMS集群，则需要传入KMSClusterId。 KMSClusterId相关介绍参考开启透明数据加密
        # @type KMSClusterId: String
        # @param DBEngine: 数据库引擎，支持：
        # <li>postgresql：云数据库PostgreSQL</li>
        # <li>mssql_compatible：MSSQL兼容-云数据库PostgreSQL</li>
        # 默认值：postgresql
        # @type DBEngine: String
        # @param DBEngineConfig: 数据库引擎的配置信息，配置格式如下：
        # {"$key1":"$value1", "$key2":"$value2"}
        # 各引擎支持如下：
        # mssql_compatible引擎：
        # <li>migrationMode：数据库模式，可选参数，可取值：single-db（单数据库模式），multi-db（多数据库模式）。默认为single-db。</li>
        # <li>defaultLocale：排序区域规则，可选参数，在初始化后不可修改，默认为en_US，可选值如下：
        # "af_ZA", "sq_AL", "ar_DZ", "ar_BH", "ar_EG", "ar_IQ", "ar_JO", "ar_KW", "ar_LB", "ar_LY", "ar_MA", "ar_OM", "ar_QA", "ar_SA", "ar_SY", "ar_TN", "ar_AE", "ar_YE", "hy_AM", "az_Cyrl_AZ", "az_Latn_AZ", "eu_ES", "be_BY", "bg_BG", "ca_ES", "zh_HK", "zh_MO", "zh_CN", "zh_SG", "zh_TW", "hr_HR", "cs_CZ", "da_DK", "nl_BE", "nl_NL", "en_AU", "en_BZ", "en_CA", "en_IE", "en_JM", "en_NZ", "en_PH", "en_ZA", "en_TT", "en_GB", "en_US", "en_ZW", "et_EE", "fo_FO", "fa_IR", "fi_FI", "fr_BE", "fr_CA", "fr_FR", "fr_LU", "fr_MC", "fr_CH", "mk_MK", "ka_GE", "de_AT", "de_DE", "de_LI", "de_LU", "de_CH", "el_GR", "gu_IN", "he_IL", "hi_IN", "hu_HU", "is_IS", "id_ID", "it_IT", "it_CH", "ja_JP", "kn_IN", "kok_IN", "ko_KR", "ky_KG", "lv_LV", "lt_LT", "ms_BN", "ms_MY", "mr_IN", "mn_MN", "nb_NO", "nn_NO", "pl_PL", "pt_BR", "pt_PT", "pa_IN", "ro_RO", "ru_RU", "sa_IN", "sr_Cyrl_RS", "sr_Latn_RS", "sk_SK", "sl_SI", "es_AR", "es_BO", "es_CL", "es_CO", "es_CR", "es_DO", "es_EC", "es_SV", "es_GT", "es_HN", "es_MX", "es_NI", "es_PA", "es_PY","es_PE", "es_PR", "es_ES", "es_TRADITIONAL", "es_UY", "es_VE", "sw_KE", "sv_FI", "sv_SE", "tt_RU", "te_IN", "th_TH", "tr_TR", "uk_UA", "ur_IN", "ur_PK", "uz_Cyrl_UZ", "uz_Latn_UZ", "vi_VN"。</li>
        # <li>serverCollationName：排序规则名称，可选参数，在初始化后不可修改，默认为sql_latin1_general_cp1_ci_as，可选值如下："bbf_unicode_general_ci_as", "bbf_unicode_cp1_ci_as", "bbf_unicode_CP1250_ci_as", "bbf_unicode_CP1251_ci_as", "bbf_unicode_cp1253_ci_as", "bbf_unicode_cp1254_ci_as", "bbf_unicode_cp1255_ci_as", "bbf_unicode_cp1256_ci_as", "bbf_unicode_cp1257_ci_as", "bbf_unicode_cp1258_ci_as", "bbf_unicode_cp874_ci_as", "sql_latin1_general_cp1250_ci_as", "sql_latin1_general_cp1251_ci_as", "sql_latin1_general_cp1_ci_as", "sql_latin1_general_cp1253_ci_as", "sql_latin1_general_cp1254_ci_as", "sql_latin1_general_cp1255_ci_as","sql_latin1_general_cp1256_ci_as", "sql_latin1_general_cp1257_ci_as", "sql_latin1_general_cp1258_ci_as", "chinese_prc_ci_as", "cyrillic_general_ci_as", "finnish_swedish_ci_as", "french_ci_as", "japanese_ci_as", "korean_wansung_ci_as", "latin1_general_ci_as", "modern_spanish_ci_as", "polish_ci_as", "thai_ci_as", "traditional_spanish_ci_as", "turkish_ci_as", "ukrainian_ci_as", "vietnamese_ci_as"。</li>
        # @type DBEngineConfig: String
        # @param SyncMode: 主从同步方式，支持：
        # <li>Semi-sync：半同步</li>
        # <li>Async：异步</li>
        # 主实例默认值：Semi-sync
        # 只读实例默认值：Async
        # @type SyncMode: String
        # @param NeedSupportIpv6: 是否需要支持Ipv6：
        # <li>0：否</li>
        # <li>1：是</li>
        # 默认值：0
        # @type NeedSupportIpv6: Integer

        attr_accessor :Zone, :SpecCode, :Storage, :InstanceCount, :Period, :Charset, :AdminName, :AdminPassword, :DBMajorVersion, :DBVersion, :DBKernelVersion, :InstanceChargeType, :VpcId, :SubnetId, :DBNodeSet, :AutoRenewFlag, :AutoVoucher, :VoucherIds, :ProjectId, :ActivityId, :Name, :TagList, :SecurityGroupIds, :NeedSupportTDE, :KMSKeyId, :KMSRegion, :KMSClusterId, :DBEngine, :DBEngineConfig, :SyncMode, :NeedSupportIpv6

        def initialize(zone=nil, speccode=nil, storage=nil, instancecount=nil, period=nil, charset=nil, adminname=nil, adminpassword=nil, dbmajorversion=nil, dbversion=nil, dbkernelversion=nil, instancechargetype=nil, vpcid=nil, subnetid=nil, dbnodeset=nil, autorenewflag=nil, autovoucher=nil, voucherids=nil, projectid=nil, activityid=nil, name=nil, taglist=nil, securitygroupids=nil, needsupporttde=nil, kmskeyid=nil, kmsregion=nil, kmsclusterid=nil, dbengine=nil, dbengineconfig=nil, syncmode=nil, needsupportipv6=nil)
          @Zone = zone
          @SpecCode = speccode
          @Storage = storage
          @InstanceCount = instancecount
          @Period = period
          @Charset = charset
          @AdminName = adminname
          @AdminPassword = adminpassword
          @DBMajorVersion = dbmajorversion
          @DBVersion = dbversion
          @DBKernelVersion = dbkernelversion
          @InstanceChargeType = instancechargetype
          @VpcId = vpcid
          @SubnetId = subnetid
          @DBNodeSet = dbnodeset
          @AutoRenewFlag = autorenewflag
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @ProjectId = projectid
          @ActivityId = activityid
          @Name = name
          @TagList = taglist
          @SecurityGroupIds = securitygroupids
          @NeedSupportTDE = needsupporttde
          @KMSKeyId = kmskeyid
          @KMSRegion = kmsregion
          @KMSClusterId = kmsclusterid
          @DBEngine = dbengine
          @DBEngineConfig = dbengineconfig
          @SyncMode = syncmode
          @NeedSupportIpv6 = needsupportipv6
        end

        def deserialize(params)
          @Zone = params['Zone']
          @SpecCode = params['SpecCode']
          @Storage = params['Storage']
          @InstanceCount = params['InstanceCount']
          @Period = params['Period']
          @Charset = params['Charset']
          @AdminName = params['AdminName']
          @AdminPassword = params['AdminPassword']
          @DBMajorVersion = params['DBMajorVersion']
          @DBVersion = params['DBVersion']
          @DBKernelVersion = params['DBKernelVersion']
          @InstanceChargeType = params['InstanceChargeType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          unless params['DBNodeSet'].nil?
            @DBNodeSet = []
            params['DBNodeSet'].each do |i|
              dbnode_tmp = DBNode.new
              dbnode_tmp.deserialize(i)
              @DBNodeSet << dbnode_tmp
            end
          end
          @AutoRenewFlag = params['AutoRenewFlag']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @ProjectId = params['ProjectId']
          @ActivityId = params['ActivityId']
          @Name = params['Name']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagList << tag_tmp
            end
          end
          @SecurityGroupIds = params['SecurityGroupIds']
          @NeedSupportTDE = params['NeedSupportTDE']
          @KMSKeyId = params['KMSKeyId']
          @KMSRegion = params['KMSRegion']
          @KMSClusterId = params['KMSClusterId']
          @DBEngine = params['DBEngine']
          @DBEngineConfig = params['DBEngineConfig']
          @SyncMode = params['SyncMode']
          @NeedSupportIpv6 = params['NeedSupportIpv6']
        end
      end

      # CreateInstances返回参数结构体
      class CreateInstancesResponse < TencentCloud::Common::AbstractModel
        # @param DealNames: 订单号列表。每个实例对应一个订单号。
        # @type DealNames: Array
        # @param BillId: 冻结流水号。
        # @type BillId: String
        # @param DBInstanceIdSet: 创建成功的实例ID集合，只在后付费情景下有返回值。
        # @type DBInstanceIdSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealNames, :BillId, :DBInstanceIdSet, :RequestId

        def initialize(dealnames=nil, billid=nil, dbinstanceidset=nil, requestid=nil)
          @DealNames = dealnames
          @BillId = billid
          @DBInstanceIdSet = dbinstanceidset
          @RequestId = requestid
        end

        def deserialize(params)
          @DealNames = params['DealNames']
          @BillId = params['BillId']
          @DBInstanceIdSet = params['DBInstanceIdSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateParameterTemplate请求参数结构体
      class CreateParameterTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateName: 模板名称，长度为1～60个字符，仅支持数字,英文大小写字母、中文以及特殊字符_-./()（）[]+=：:@
        # @type TemplateName: String
        # @param DBMajorVersion: 数据库大版本号，例如：11，12，13。可通过[DescribeDBVersions](https://cloud.tencent.com/document/api/409/89018)接口获取
        # @type DBMajorVersion: String
        # @param DBEngine: 数据库引擎，例如：postgresql，mssql_compatible
        # @type DBEngine: String
        # @param TemplateDescription: 参数模板描述，长度为0～60个字符，仅支持数字,英文大小写字母、中文以及特殊字符_-./()（）[]+=：:@
        # @type TemplateDescription: String

        attr_accessor :TemplateName, :DBMajorVersion, :DBEngine, :TemplateDescription

        def initialize(templatename=nil, dbmajorversion=nil, dbengine=nil, templatedescription=nil)
          @TemplateName = templatename
          @DBMajorVersion = dbmajorversion
          @DBEngine = dbengine
          @TemplateDescription = templatedescription
        end

        def deserialize(params)
          @TemplateName = params['TemplateName']
          @DBMajorVersion = params['DBMajorVersion']
          @DBEngine = params['DBEngine']
          @TemplateDescription = params['TemplateDescription']
        end
      end

      # CreateParameterTemplate返回参数结构体
      class CreateParameterTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板ID，用于唯一确认参数模板
        # @type TemplateId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateId, :RequestId

        def initialize(templateid=nil, requestid=nil)
          @TemplateId = templateid
          @RequestId = requestid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @RequestId = params['RequestId']
        end
      end

      # CreateReadOnlyDBInstance请求参数结构体
      class CreateReadOnlyDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 实例所属主可用区， 如：ap-guangzhou-3；
        # 可用区信息可以通过调用 [DescribeZones](https://cloud.tencent.com/document/api/409/16769) 接口的返回值中的Zone字段来获取。
        # @type Zone: String
        # @param MasterDBInstanceId: 只读实例的主实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type MasterDBInstanceId: String
        # @param SpecCode: 售卖规格码。该参数可以通过调用[DescribeClasses](https://cloud.tencent.com/document/api/409/89019)的返回值中的SpecCode字段来获取。
        # @type SpecCode: String
        # @param Storage: 实例硬盘容量大小，单位：GB。该参数的设置步长为10。
        # @type Storage: Integer
        # @param InstanceCount: 购买实例数量，取值范围：[1-10]。一次性购买支持最大数量10个，若超过该数量，可进行多次调用进行购买。
        # @type InstanceCount: Integer
        # @param Period: 购买时长，单位：月。
        # <li>预付费：支持1,2,3,4,5,6,7,8,9,10,11,12,24,36</li>
        # <li>后付费：只支持1</li>
        # @type Period: Integer
        # @param VpcId: 私有网络ID，形如vpc-xxxxxxxx（该参数当前必传）。有效的VpcId可通过登录控制台查询；也可以调用接口 [DescribeVpcEx](https://cloud.tencent.com/document/api/215/1372) ，从接口返回中的unVpcId字段获取。
        # @type VpcId: String
        # @param SubnetId: 私有网络子网ID，形如subnet-xxxxxxxx（该参数当前必传）。有效的私有网络子网ID可通过登录控制台查询；也可以调用接口 [DescribeSubnets ](https://cloud.tencent.com/document/api/215/15784)，从接口返回中的unSubnetId字段获取。
        # @type SubnetId: String
        # @param InstanceChargeType: 实例计费类型，目前支持：
        # <li>PREPAID：预付费，即包年包月。</li>
        # <li>POSTPAID_BY_HOUR：后付费，即按量计费。</li>
        # 默认值：PREPAID。如果主实例为后付费，只读实例必须也为后付费。
        # @type InstanceChargeType: String
        # @param AutoVoucher: 是否自动使用代金券：
        # <li>0：否</li>
        # <li>1：是</li>
        # 默认值：0
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID列表，目前仅支持指定一张代金券。
        # @type VoucherIds: Array
        # @param AutoRenewFlag: 续费标记：
        # <li>0：手动续费</li>
        # <li>1：自动续费</li>
        # 默认值：0
        # @type AutoRenewFlag: Integer
        # @param ProjectId: 项目ID。默认值为0，表示归属默认项目。
        # @type ProjectId: Integer
        # @param ActivityId: 优惠活动ID
        # @type ActivityId: Integer
        # @param ReadOnlyGroupId: 只读组ID。
        # @type ReadOnlyGroupId: String
        # @param TagList: 实例需要绑定的Tag信息，默认为空；可以通过调用 [DescribeTags](https://cloud.tencent.com/document/api/651/35316) 返回值中的 Tags 字段来获取。
        # @type TagList: :class:`Tencentcloud::Postgres.v20170312.models.Tag`
        # @param SecurityGroupIds: 实例所属安全组，该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。
        # @type SecurityGroupIds: Array
        # @param NeedSupportIpv6: 是否需要支持Ipv6：
        # <li>0：否</li>
        # <li>1：是</li>
        # 默认值：0
        # @type NeedSupportIpv6: Integer
        # @param Name: 实例名。仅支持长度小于60的中文/英文/数字/"_"/"-"
        # @type Name: String
        # @param DBVersion: 不再需要指定，内核版本号与主实例保持一致
        # @type DBVersion: String
        # @param DedicatedClusterId: 专属集群ID
        # @type DedicatedClusterId: String

        attr_accessor :Zone, :MasterDBInstanceId, :SpecCode, :Storage, :InstanceCount, :Period, :VpcId, :SubnetId, :InstanceChargeType, :AutoVoucher, :VoucherIds, :AutoRenewFlag, :ProjectId, :ActivityId, :ReadOnlyGroupId, :TagList, :SecurityGroupIds, :NeedSupportIpv6, :Name, :DBVersion, :DedicatedClusterId
        extend Gem::Deprecate
        deprecate :DBVersion, :none, 2025, 8
        deprecate :DBVersion=, :none, 2025, 8

        def initialize(zone=nil, masterdbinstanceid=nil, speccode=nil, storage=nil, instancecount=nil, period=nil, vpcid=nil, subnetid=nil, instancechargetype=nil, autovoucher=nil, voucherids=nil, autorenewflag=nil, projectid=nil, activityid=nil, readonlygroupid=nil, taglist=nil, securitygroupids=nil, needsupportipv6=nil, name=nil, dbversion=nil, dedicatedclusterid=nil)
          @Zone = zone
          @MasterDBInstanceId = masterdbinstanceid
          @SpecCode = speccode
          @Storage = storage
          @InstanceCount = instancecount
          @Period = period
          @VpcId = vpcid
          @SubnetId = subnetid
          @InstanceChargeType = instancechargetype
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @AutoRenewFlag = autorenewflag
          @ProjectId = projectid
          @ActivityId = activityid
          @ReadOnlyGroupId = readonlygroupid
          @TagList = taglist
          @SecurityGroupIds = securitygroupids
          @NeedSupportIpv6 = needsupportipv6
          @Name = name
          @DBVersion = dbversion
          @DedicatedClusterId = dedicatedclusterid
        end

        def deserialize(params)
          @Zone = params['Zone']
          @MasterDBInstanceId = params['MasterDBInstanceId']
          @SpecCode = params['SpecCode']
          @Storage = params['Storage']
          @InstanceCount = params['InstanceCount']
          @Period = params['Period']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @InstanceChargeType = params['InstanceChargeType']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @AutoRenewFlag = params['AutoRenewFlag']
          @ProjectId = params['ProjectId']
          @ActivityId = params['ActivityId']
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          unless params['TagList'].nil?
            @TagList = Tag.new
            @TagList.deserialize(params['TagList'])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
          @NeedSupportIpv6 = params['NeedSupportIpv6']
          @Name = params['Name']
          @DBVersion = params['DBVersion']
          @DedicatedClusterId = params['DedicatedClusterId']
        end
      end

      # CreateReadOnlyDBInstance返回参数结构体
      class CreateReadOnlyDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealNames: 订单号列表。每个实例对应一个订单号
        # @type DealNames: Array
        # @param BillId: 冻结流水号
        # @type BillId: String
        # @param DBInstanceIdSet: 创建成功的实例ID集合，只在后付费情景下有返回值
        # @type DBInstanceIdSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealNames, :BillId, :DBInstanceIdSet, :RequestId

        def initialize(dealnames=nil, billid=nil, dbinstanceidset=nil, requestid=nil)
          @DealNames = dealnames
          @BillId = billid
          @DBInstanceIdSet = dbinstanceidset
          @RequestId = requestid
        end

        def deserialize(params)
          @DealNames = params['DealNames']
          @BillId = params['BillId']
          @DBInstanceIdSet = params['DBInstanceIdSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateReadOnlyGroupNetworkAccess请求参数结构体
      class CreateReadOnlyGroupNetworkAccessRequest < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupId: RO组ID，形如：pgrogrp-4t9c6g7k。可通过[DescribeReadOnlyGroups](https://cloud.tencent.com/document/api/409/52599)接口获取
        # @type ReadOnlyGroupId: String
        # @param VpcId: 私有网络统一 ID。
        # @type VpcId: String
        # @param SubnetId: 子网ID。
        # @type SubnetId: String
        # @param IsAssignVip: 是否指定分配vip true-指定分配  false-自动分配。
        # @type IsAssignVip: Boolean
        # @param Vip: 目标VIP地址。当不指定该参数，且IsAssignVip为true时，默认自动分配Vip。
        # @type Vip: String

        attr_accessor :ReadOnlyGroupId, :VpcId, :SubnetId, :IsAssignVip, :Vip

        def initialize(readonlygroupid=nil, vpcid=nil, subnetid=nil, isassignvip=nil, vip=nil)
          @ReadOnlyGroupId = readonlygroupid
          @VpcId = vpcid
          @SubnetId = subnetid
          @IsAssignVip = isassignvip
          @Vip = vip
        end

        def deserialize(params)
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @IsAssignVip = params['IsAssignVip']
          @Vip = params['Vip']
        end
      end

      # CreateReadOnlyGroupNetworkAccess返回参数结构体
      class CreateReadOnlyGroupNetworkAccessResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID。
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

      # CreateReadOnlyGroup请求参数结构体
      class CreateReadOnlyGroupRequest < TencentCloud::Common::AbstractModel
        # @param MasterDBInstanceId: 主实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type MasterDBInstanceId: String
        # @param Name: 只读组名称。仅支持长度小于60的中文/英文/数字/"_"/"-"。
        # @type Name: String
        # @param ProjectId: 项目ID。默认值为0，表示归属于默认项目。
        # @type ProjectId: Integer
        # @param VpcId: 私有网络ID。注：默认使用基础网络，当前不支持基础网络，故该参数必填。
        # @type VpcId: String
        # @param SubnetId: 子网ID。注：默认使用基础网络，当前不支持基础网络，故该参数必填。
        # @type SubnetId: String
        # @param ReplayLagEliminate: 延迟时间大小开关：0关、1开。该参数必填。
        # @type ReplayLagEliminate: Integer
        # @param ReplayLatencyEliminate: 延迟空间大小开关： 0关、1开。该参数的填写需要与ReplayLagEliminate一致。
        # @type ReplayLatencyEliminate: Integer
        # @param MaxReplayLag: 延迟时间大小阈值，取值为正整数，单位s。当ReplayLagEliminate为1时，该参数必填；当ReplayLagEliminate为0时，该参数需填0。
        # @type MaxReplayLag: Integer
        # @param MaxReplayLatency: 延迟空间大小阈值，取值为正整数，单位MB。当ReplayLatencyEliminate为1时，该参数必填；当ReplayLatencyEliminate为0时，该参数需填0。
        # @type MaxReplayLatency: Integer
        # @param MinDelayEliminateReserve: 延迟剔除最小保留实例数。取值范围[0,100]。当ReplayLatencyEliminate为1时，该参数必填；当ReplayLagEliminate为0时，该参数无效。
        # @type MinDelayEliminateReserve: Integer
        # @param SecurityGroupIds: 安全组id
        # @type SecurityGroupIds: Array

        attr_accessor :MasterDBInstanceId, :Name, :ProjectId, :VpcId, :SubnetId, :ReplayLagEliminate, :ReplayLatencyEliminate, :MaxReplayLag, :MaxReplayLatency, :MinDelayEliminateReserve, :SecurityGroupIds

        def initialize(masterdbinstanceid=nil, name=nil, projectid=nil, vpcid=nil, subnetid=nil, replaylageliminate=nil, replaylatencyeliminate=nil, maxreplaylag=nil, maxreplaylatency=nil, mindelayeliminatereserve=nil, securitygroupids=nil)
          @MasterDBInstanceId = masterdbinstanceid
          @Name = name
          @ProjectId = projectid
          @VpcId = vpcid
          @SubnetId = subnetid
          @ReplayLagEliminate = replaylageliminate
          @ReplayLatencyEliminate = replaylatencyeliminate
          @MaxReplayLag = maxreplaylag
          @MaxReplayLatency = maxreplaylatency
          @MinDelayEliminateReserve = mindelayeliminatereserve
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @MasterDBInstanceId = params['MasterDBInstanceId']
          @Name = params['Name']
          @ProjectId = params['ProjectId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ReplayLagEliminate = params['ReplayLagEliminate']
          @ReplayLatencyEliminate = params['ReplayLatencyEliminate']
          @MaxReplayLag = params['MaxReplayLag']
          @MaxReplayLatency = params['MaxReplayLatency']
          @MinDelayEliminateReserve = params['MinDelayEliminateReserve']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # CreateReadOnlyGroup返回参数结构体
      class CreateReadOnlyGroupResponse < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupId: 只读组ID
        # @type ReadOnlyGroupId: String
        # @param FlowId: 流程ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReadOnlyGroupId, :FlowId, :RequestId

        def initialize(readonlygroupid=nil, flowid=nil, requestid=nil)
          @ReadOnlyGroupId = readonlygroupid
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # 数据库备份信息
      class DBBackup < TencentCloud::Common::AbstractModel
        # @param Id: 备份文件唯一标识
        # @type Id: Integer
        # @param StartTime: 文件生成的开始时间
        # @type StartTime: String
        # @param EndTime: 文件生成的结束时间
        # @type EndTime: String
        # @param Size: 文件大小(K)
        # @type Size: Integer
        # @param Strategy: 策略（0-实例备份；1-多库备份）
        # @type Strategy: Integer
        # @param Way: 类型（0-定时）
        # @type Way: Integer
        # @param Type: 备份方式（1-完整）
        # @type Type: Integer
        # @param Status: 状态（1-创建中；2-成功；3-失败）
        # @type Status: Integer
        # @param DbList: DB列表
        # @type DbList: Array
        # @param InternalAddr: 内网下载地址
        # @type InternalAddr: String
        # @param ExternalAddr: 外网下载地址
        # @type ExternalAddr: String
        # @param SetId: 备份集ID
        # @type SetId: String

        attr_accessor :Id, :StartTime, :EndTime, :Size, :Strategy, :Way, :Type, :Status, :DbList, :InternalAddr, :ExternalAddr, :SetId

        def initialize(id=nil, starttime=nil, endtime=nil, size=nil, strategy=nil, way=nil, type=nil, status=nil, dblist=nil, internaladdr=nil, externaladdr=nil, setid=nil)
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
          @Size = size
          @Strategy = strategy
          @Way = way
          @Type = type
          @Status = status
          @DbList = dblist
          @InternalAddr = internaladdr
          @ExternalAddr = externaladdr
          @SetId = setid
        end

        def deserialize(params)
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Size = params['Size']
          @Strategy = params['Strategy']
          @Way = params['Way']
          @Type = params['Type']
          @Status = params['Status']
          @DbList = params['DbList']
          @InternalAddr = params['InternalAddr']
          @ExternalAddr = params['ExternalAddr']
          @SetId = params['SetId']
        end
      end

      # 描述实例的详细信息
      class DBInstance < TencentCloud::Common::AbstractModel
        # @param Region: 实例所属地域，如: ap-guangzhou，对应RegionSet的Region字段。
        # @type Region: String
        # @param Zone: 实例所属可用区， 如：ap-guangzhou-3，对应ZoneSet的Zone字段。
        # @type Zone: String
        # @param VpcId: 私有网络ID，形如vpc-e6w23k31。有效的VpcId可通过登录控制台查询；也可以调用接口 [DescribeVpcs](https://cloud.tencent.com/document/api/215/15778) ，从接口返回中的unVpcId字段获取。
        # @type VpcId: String
        # @param SubnetId: 私有网络子网ID，形如subnet-51lcif9y。有效的私有网络子网ID可通过登录控制台查询；也可以调用接口 [DescribeSubnets ](https://cloud.tencent.com/document/api/215/15784)，从接口返回中的unSubnetId字段获取。
        # @type SubnetId: String
        # @param DBInstanceId: 实例ID。
        # @type DBInstanceId: String
        # @param DBInstanceName: 实例名称。
        # @type DBInstanceName: String
        # @param DBInstanceStatus: 实例状态，分别为：applying（申请中）、init(待初始化)、initing(初始化中)、running(运行中)、limited run（受限运行）、isolating（隔离中）、isolated（已隔离）、disisolating（解隔离中）、recycling（回收中）、recycled（已回收）、job running（任务执行中）、offline（下线）、migrating（迁移中）、expanding（扩容中）、waitSwitch（等待切换）、switching（切换中）、readonly（只读）、restarting（重启中）、network changing（网络变更中）、upgrading（内核版本升级中）、audit-switching（审计状态变更中）、primary-switching（主备切换中）、offlining(下线中)、deployment changing（可用区变更中）、cloning（恢复数据中）、parameter modifying（参数修改中）、log-switching（日志状态变更中）、restoring（恢复中）、expanding（变配中）
        # @type DBInstanceStatus: String
        # @param DBInstanceMemory: 实例分配的内存大小，单位：GB
        # @type DBInstanceMemory: Integer
        # @param DBInstanceStorage: 实例分配的存储空间大小，单位：GB
        # @type DBInstanceStorage: Integer
        # @param DBInstanceCpu: 实例分配的CPU数量，单位：个
        # @type DBInstanceCpu: Integer
        # @param DBInstanceClass: 售卖规格ID
        # @type DBInstanceClass: String
        # @param DBMajorVersion: PostgreSQL大版本号，版本信息可从[DescribeDBVersions](https://cloud.tencent.com/document/api/409/89018)获取，目前支持10，11，12，13，14，15这几个大版本。
        # @type DBMajorVersion: String
        # @param DBVersion: PostgreSQL社区大版本+小版本号，如12.4，版本信息可从[DescribeDBVersions](https://cloud.tencent.com/document/api/409/89018)获取。
        # @type DBVersion: String
        # @param DBKernelVersion: PostgreSQL内核版本号，如v12.7_r1.8，版本信息可从[DescribeDBVersions](https://cloud.tencent.com/document/api/409/89018)获取。
        # @type DBKernelVersion: String
        # @param DBInstanceType: 实例类型，类型有：
        # <li>primary：主实例</li>
        # <li>readonly：只读实例</li>
        # <li>guard：灾备实例</li>
        # <li>temp：临时实例</li>
        # @type DBInstanceType: String
        # @param DBInstanceVersion: 实例版本，目前只支持standard（双机高可用版, 一主一从）。
        # @type DBInstanceVersion: String
        # @param DBCharset: 实例字符集，目前只支持：
        # <li> UTF8</li>
        # <li> LATIN1</li>
        # @type DBCharset: String
        # @param CreateTime: 实例创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 实例执行最后一次更新的时间。
        # @type UpdateTime: String
        # @param ExpireTime: 实例到期时间。
        # @type ExpireTime: String
        # @param IsolatedTime: 实例隔离时间。
        # @type IsolatedTime: String
        # @param PayType: 计费模式：
        # <li>prepaid：包年包月,预付费</li>
        # <li>postpaid：按量计费，后付费</li>
        # @type PayType: String
        # @param AutoRenew: 是否自动续费：
        # <li>0：手动续费</li>
        # <li>1：自动续费</li>
        # 默认值：0
        # @type AutoRenew: Integer
        # @param DBInstanceNetInfo: 实例网络连接信息。
        # @type DBInstanceNetInfo: Array
        # @param Type: 机器类型。
        # @type Type: String
        # @param AppId: 用户的AppId。
        # @type AppId: Integer
        # @param Uid: 实例的Uid。
        # @type Uid: Integer
        # @param ProjectId: 项目ID。
        # @type ProjectId: Integer
        # @param TagList: 实例绑定的标签信息。
        # @type TagList: Array
        # @param MasterDBInstanceId: 主实例信息，仅在实例为只读实例时返回。
        # @type MasterDBInstanceId: String
        # @param ReadOnlyInstanceNum: 只读实例数量。
        # @type ReadOnlyInstanceNum: Integer
        # @param StatusInReadonlyGroup: 只读实例在只读组中的状态。
        # @type StatusInReadonlyGroup: String
        # @param OfflineTime: 下线时间。
        # @type OfflineTime: String
        # @param DBNodeSet: 实例的节点信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBNodeSet: Array
        # @param IsSupportTDE: 实例是否支持TDE数据加密：
        # <li>0：不支持</li>
        # <li>1：支持</li>
        # 默认值：0
        # TDE数据加密可参考[数据透明加密概述](https://cloud.tencent.com/document/product/409/71748)
        # @type IsSupportTDE: Integer
        # @param DBEngine: 数据库引擎，支持：
        # <li>postgresql：云数据库PostgreSQL</li>
        # <li>mssql_compatible：MSSQL兼容-云数据库PostgreSQL</li>
        # 默认值：postgresql
        # @type DBEngine: String
        # @param DBEngineConfig: 数据库引擎的配置信息，配置格式如下：
        # {"$key1":"$value1", "$key2":"$value2"}
        # 各引擎支持如下：
        # mssql_compatible引擎：
        # <li>migrationMode：数据库模式，可选参数，可取值：single-db（单数据库模式），multi-db（多数据库模式）。默认为single-db。</li>
        # <li>defaultLocale：排序区域规则，可选参数，在初始化后不可修改，默认为en_US，可选值如下：
        # "af_ZA", "sq_AL", "ar_DZ", "ar_BH", "ar_EG", "ar_IQ", "ar_JO", "ar_KW", "ar_LB", "ar_LY", "ar_MA", "ar_OM", "ar_QA", "ar_SA", "ar_SY", "ar_TN", "ar_AE", "ar_YE", "hy_AM", "az_Cyrl_AZ", "az_Latn_AZ", "eu_ES", "be_BY", "bg_BG", "ca_ES", "zh_HK", "zh_MO", "zh_CN", "zh_SG", "zh_TW", "hr_HR", "cs_CZ", "da_DK", "nl_BE", "nl_NL", "en_AU", "en_BZ", "en_CA", "en_IE", "en_JM", "en_NZ", "en_PH", "en_ZA", "en_TT", "en_GB", "en_US", "en_ZW", "et_EE", "fo_FO", "fa_IR", "fi_FI", "fr_BE", "fr_CA", "fr_FR", "fr_LU", "fr_MC", "fr_CH", "mk_MK", "ka_GE", "de_AT", "de_DE", "de_LI", "de_LU", "de_CH", "el_GR", "gu_IN", "he_IL", "hi_IN", "hu_HU", "is_IS", "id_ID", "it_IT", "it_CH", "ja_JP", "kn_IN", "kok_IN", "ko_KR", "ky_KG", "lv_LV", "lt_LT", "ms_BN", "ms_MY", "mr_IN", "mn_MN", "nb_NO", "nn_NO", "pl_PL", "pt_BR", "pt_PT", "pa_IN", "ro_RO", "ru_RU", "sa_IN", "sr_Cyrl_RS", "sr_Latn_RS", "sk_SK", "sl_SI", "es_AR", "es_BO", "es_CL", "es_CO", "es_CR", "es_DO", "es_EC", "es_SV", "es_GT", "es_HN", "es_MX", "es_NI", "es_PA", "es_PY","es_PE", "es_PR", "es_ES", "es_TRADITIONAL", "es_UY", "es_VE", "sw_KE", "sv_FI", "sv_SE", "tt_RU", "te_IN", "th_TH", "tr_TR", "uk_UA", "ur_IN", "ur_PK", "uz_Cyrl_UZ", "uz_Latn_UZ", "vi_VN"。</li>
        # <li>serverCollationName：排序规则名称，可选参数，在初始化后不可修改，默认为sql_latin1_general_cp1_ci_as，可选值如下："bbf_unicode_general_ci_as", "bbf_unicode_cp1_ci_as", "bbf_unicode_CP1250_ci_as", "bbf_unicode_CP1251_ci_as", "bbf_unicode_cp1253_ci_as", "bbf_unicode_cp1254_ci_as", "bbf_unicode_cp1255_ci_as", "bbf_unicode_cp1256_ci_as", "bbf_unicode_cp1257_ci_as", "bbf_unicode_cp1258_ci_as", "bbf_unicode_cp874_ci_as", "sql_latin1_general_cp1250_ci_as", "sql_latin1_general_cp1251_ci_as", "sql_latin1_general_cp1_ci_as", "sql_latin1_general_cp1253_ci_as", "sql_latin1_general_cp1254_ci_as", "sql_latin1_general_cp1255_ci_as","sql_latin1_general_cp1256_ci_as", "sql_latin1_general_cp1257_ci_as", "sql_latin1_general_cp1258_ci_as", "chinese_prc_ci_as", "cyrillic_general_ci_as", "finnish_swedish_ci_as", "french_ci_as", "japanese_ci_as", "korean_wansung_ci_as", "latin1_general_ci_as", "modern_spanish_ci_as", "polish_ci_as", "thai_ci_as", "traditional_spanish_ci_as", "turkish_ci_as", "ukrainian_ci_as", "vietnamese_ci_as"。</li>
        # @type DBEngineConfig: String
        # @param NetworkAccessList: 实例网络信息列表（此字段已废弃）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkAccessList: Array
        # @param SupportIpv6: 实例是否支持Ipv6：
        # <li>0：否</li>
        # <li>1：是</li>
        # 默认值：0
        # @type SupportIpv6: Integer

        attr_accessor :Region, :Zone, :VpcId, :SubnetId, :DBInstanceId, :DBInstanceName, :DBInstanceStatus, :DBInstanceMemory, :DBInstanceStorage, :DBInstanceCpu, :DBInstanceClass, :DBMajorVersion, :DBVersion, :DBKernelVersion, :DBInstanceType, :DBInstanceVersion, :DBCharset, :CreateTime, :UpdateTime, :ExpireTime, :IsolatedTime, :PayType, :AutoRenew, :DBInstanceNetInfo, :Type, :AppId, :Uid, :ProjectId, :TagList, :MasterDBInstanceId, :ReadOnlyInstanceNum, :StatusInReadonlyGroup, :OfflineTime, :DBNodeSet, :IsSupportTDE, :DBEngine, :DBEngineConfig, :NetworkAccessList, :SupportIpv6

        def initialize(region=nil, zone=nil, vpcid=nil, subnetid=nil, dbinstanceid=nil, dbinstancename=nil, dbinstancestatus=nil, dbinstancememory=nil, dbinstancestorage=nil, dbinstancecpu=nil, dbinstanceclass=nil, dbmajorversion=nil, dbversion=nil, dbkernelversion=nil, dbinstancetype=nil, dbinstanceversion=nil, dbcharset=nil, createtime=nil, updatetime=nil, expiretime=nil, isolatedtime=nil, paytype=nil, autorenew=nil, dbinstancenetinfo=nil, type=nil, appid=nil, uid=nil, projectid=nil, taglist=nil, masterdbinstanceid=nil, readonlyinstancenum=nil, statusinreadonlygroup=nil, offlinetime=nil, dbnodeset=nil, issupporttde=nil, dbengine=nil, dbengineconfig=nil, networkaccesslist=nil, supportipv6=nil)
          @Region = region
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @DBInstanceId = dbinstanceid
          @DBInstanceName = dbinstancename
          @DBInstanceStatus = dbinstancestatus
          @DBInstanceMemory = dbinstancememory
          @DBInstanceStorage = dbinstancestorage
          @DBInstanceCpu = dbinstancecpu
          @DBInstanceClass = dbinstanceclass
          @DBMajorVersion = dbmajorversion
          @DBVersion = dbversion
          @DBKernelVersion = dbkernelversion
          @DBInstanceType = dbinstancetype
          @DBInstanceVersion = dbinstanceversion
          @DBCharset = dbcharset
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ExpireTime = expiretime
          @IsolatedTime = isolatedtime
          @PayType = paytype
          @AutoRenew = autorenew
          @DBInstanceNetInfo = dbinstancenetinfo
          @Type = type
          @AppId = appid
          @Uid = uid
          @ProjectId = projectid
          @TagList = taglist
          @MasterDBInstanceId = masterdbinstanceid
          @ReadOnlyInstanceNum = readonlyinstancenum
          @StatusInReadonlyGroup = statusinreadonlygroup
          @OfflineTime = offlinetime
          @DBNodeSet = dbnodeset
          @IsSupportTDE = issupporttde
          @DBEngine = dbengine
          @DBEngineConfig = dbengineconfig
          @NetworkAccessList = networkaccesslist
          @SupportIpv6 = supportipv6
        end

        def deserialize(params)
          @Region = params['Region']
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @DBInstanceId = params['DBInstanceId']
          @DBInstanceName = params['DBInstanceName']
          @DBInstanceStatus = params['DBInstanceStatus']
          @DBInstanceMemory = params['DBInstanceMemory']
          @DBInstanceStorage = params['DBInstanceStorage']
          @DBInstanceCpu = params['DBInstanceCpu']
          @DBInstanceClass = params['DBInstanceClass']
          @DBMajorVersion = params['DBMajorVersion']
          @DBVersion = params['DBVersion']
          @DBKernelVersion = params['DBKernelVersion']
          @DBInstanceType = params['DBInstanceType']
          @DBInstanceVersion = params['DBInstanceVersion']
          @DBCharset = params['DBCharset']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ExpireTime = params['ExpireTime']
          @IsolatedTime = params['IsolatedTime']
          @PayType = params['PayType']
          @AutoRenew = params['AutoRenew']
          unless params['DBInstanceNetInfo'].nil?
            @DBInstanceNetInfo = []
            params['DBInstanceNetInfo'].each do |i|
              dbinstancenetinfo_tmp = DBInstanceNetInfo.new
              dbinstancenetinfo_tmp.deserialize(i)
              @DBInstanceNetInfo << dbinstancenetinfo_tmp
            end
          end
          @Type = params['Type']
          @AppId = params['AppId']
          @Uid = params['Uid']
          @ProjectId = params['ProjectId']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagList << tag_tmp
            end
          end
          @MasterDBInstanceId = params['MasterDBInstanceId']
          @ReadOnlyInstanceNum = params['ReadOnlyInstanceNum']
          @StatusInReadonlyGroup = params['StatusInReadonlyGroup']
          @OfflineTime = params['OfflineTime']
          unless params['DBNodeSet'].nil?
            @DBNodeSet = []
            params['DBNodeSet'].each do |i|
              dbnode_tmp = DBNode.new
              dbnode_tmp.deserialize(i)
              @DBNodeSet << dbnode_tmp
            end
          end
          @IsSupportTDE = params['IsSupportTDE']
          @DBEngine = params['DBEngine']
          @DBEngineConfig = params['DBEngineConfig']
          unless params['NetworkAccessList'].nil?
            @NetworkAccessList = []
            params['NetworkAccessList'].each do |i|
              networkaccess_tmp = NetworkAccess.new
              networkaccess_tmp.deserialize(i)
              @NetworkAccessList << networkaccess_tmp
            end
          end
          @SupportIpv6 = params['SupportIpv6']
        end
      end

      # 描述实例的网络连接信息。
      class DBInstanceNetInfo < TencentCloud::Common::AbstractModel
        # @param Address: DNS域名
        # @type Address: String
        # @param Ip: IP地址
        # @type Ip: String
        # @param Port: 连接Port地址
        # @type Port: Integer
        # @param NetType: 网络类型，1、inner（基础网络内网地址）；2、private（私有网络内网地址）；3、public（基础网络或私有网络的外网地址）；
        # @type NetType: String
        # @param Status: 网络连接状态，1、initing（未开通）；2、opened（已开通）；3、closed（已关闭）；4、opening（开通中）；5、closing（关闭中）；
        # @type Status: String
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param ProtocolType: 连接数据库的协议类型，当前支持：postgresql、mssql（MSSQL兼容语法）
        # @type ProtocolType: String

        attr_accessor :Address, :Ip, :Port, :NetType, :Status, :VpcId, :SubnetId, :ProtocolType

        def initialize(address=nil, ip=nil, port=nil, nettype=nil, status=nil, vpcid=nil, subnetid=nil, protocoltype=nil)
          @Address = address
          @Ip = ip
          @Port = port
          @NetType = nettype
          @Status = status
          @VpcId = vpcid
          @SubnetId = subnetid
          @ProtocolType = protocoltype
        end

        def deserialize(params)
          @Address = params['Address']
          @Ip = params['Ip']
          @Port = params['Port']
          @NetType = params['NetType']
          @Status = params['Status']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ProtocolType = params['ProtocolType']
        end
      end

      # 描述实例节点信息，包括节点类型、节点所在可用区、节点所在专属集群。
      class DBNode < TencentCloud::Common::AbstractModel
        # @param Role: 节点类型，值可以为：
        # Primary，代表主节点；
        # Standby，代表备节点。
        # @type Role: String
        # @param Zone: 节点所在可用区，例如 ap-guangzhou-1。
        # @type Zone: String
        # @param DedicatedClusterId: 专属集群ID
        # @type DedicatedClusterId: String

        attr_accessor :Role, :Zone, :DedicatedClusterId

        def initialize(role=nil, zone=nil, dedicatedclusterid=nil)
          @Role = role
          @Zone = zone
          @DedicatedClusterId = dedicatedclusterid
        end

        def deserialize(params)
          @Role = params['Role']
          @Zone = params['Zone']
          @DedicatedClusterId = params['DedicatedClusterId']
        end
      end

      # 描述数据库详细信息，包括所有者、字符编码等
      class Database < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名
        # @type DatabaseName: String
        # @param DatabaseOwner: 数据库所有者
        # @type DatabaseOwner: String
        # @param Encoding: 数据库字符编码
        # @type Encoding: String
        # @param Collate: 数据库排序规则
        # @type Collate: String
        # @param Ctype: 数据库字符分类
        # @type Ctype: String
        # @param AllowConn: 数据库是否允许连接
        # @type AllowConn: Boolean
        # @param ConnLimit: 数据库最大连接数，-1表示无限制
        # @type ConnLimit: Integer
        # @param Privileges: 数据库权限列表
        # @type Privileges: String

        attr_accessor :DatabaseName, :DatabaseOwner, :Encoding, :Collate, :Ctype, :AllowConn, :ConnLimit, :Privileges

        def initialize(databasename=nil, databaseowner=nil, encoding=nil, collate=nil, ctype=nil, allowconn=nil, connlimit=nil, privileges=nil)
          @DatabaseName = databasename
          @DatabaseOwner = databaseowner
          @Encoding = encoding
          @Collate = collate
          @Ctype = ctype
          @AllowConn = allowconn
          @ConnLimit = connlimit
          @Privileges = privileges
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @DatabaseOwner = params['DatabaseOwner']
          @Encoding = params['Encoding']
          @Collate = params['Collate']
          @Ctype = params['Ctype']
          @AllowConn = params['AllowConn']
          @ConnLimit = params['ConnLimit']
          @Privileges = params['Privileges']
        end
      end

      # 描述数据库中某个对象所属的类型、是在哪个数据库、模式、表中的对象。
      class DatabaseObject < TencentCloud::Common::AbstractModel
        # @param ObjectType: 支持使用的数据库对象类型有：account,database,schema,sequence,procedure,type,function,table,view,matview,column。
        # @type ObjectType: String
        # @param ObjectName: 所描述的数据库对象名称
        # @type ObjectName: String
        # @param DatabaseName: 所要描述的数据库对象，所属的数据库名称。当描述对象类型不为database时，此参数必选。
        # @type DatabaseName: String
        # @param SchemaName: 所要描述的数据库对象，所属的模式名称。当描述对象不为database、schema时，此参数必选。
        # @type SchemaName: String
        # @param TableName: 所要描述的数据库对象，所属的表名称。当描述的对象类型为column时，此参数必填。
        # @type TableName: String

        attr_accessor :ObjectType, :ObjectName, :DatabaseName, :SchemaName, :TableName

        def initialize(objecttype=nil, objectname=nil, databasename=nil, schemaname=nil, tablename=nil)
          @ObjectType = objecttype
          @ObjectName = objectname
          @DatabaseName = databasename
          @SchemaName = schemaname
          @TableName = tablename
        end

        def deserialize(params)
          @ObjectType = params['ObjectType']
          @ObjectName = params['ObjectName']
          @DatabaseName = params['DatabaseName']
          @SchemaName = params['SchemaName']
          @TableName = params['TableName']
        end
      end

      # 指定账号对数据库对象拥有的权限列表
      class DatabasePrivilege < TencentCloud::Common::AbstractModel
        # @param Object: 数据库对象，当ObjectType为database时，DatabaseName/SchemaName/TableName可为空；当ObjectType为schema时，SchemaName/TableName可为空；当ObjectType为column时，TableName不可为空，其余情况均可为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Object: :class:`Tencentcloud::Postgres.v20170312.models.DatabaseObject`
        # @param PrivilegeSet: 指定账号对数据库对象拥有的权限列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivilegeSet: Array

        attr_accessor :Object, :PrivilegeSet

        def initialize(object=nil, privilegeset=nil)
          @Object = object
          @PrivilegeSet = privilegeset
        end

        def deserialize(params)
          unless params['Object'].nil?
            @Object = DatabaseObject.new
            @Object.deserialize(params['Object'])
          end
          @PrivilegeSet = params['PrivilegeSet']
        end
      end

      # 专属集群相关信息，用于查询用户的专属集群列表
      class DedicatedCluster < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterId: 专属集群ID
        # @type DedicatedClusterId: String
        # @param Name: 专属集群名称
        # @type Name: String
        # @param Zone: 专属集群所在可用区
        # @type Zone: String
        # @param StandbyDedicatedClusterSet: 灾备集群
        # @type StandbyDedicatedClusterSet: Array
        # @param InstanceCount: 实例数量
        # @type InstanceCount: Integer
        # @param CpuTotal: Cpu总数量
        # @type CpuTotal: Integer
        # @param CpuAvailable: Cpu可用数量
        # @type CpuAvailable: Integer
        # @param MemTotal: 内存总量，单位GB
        # @type MemTotal: Integer
        # @param MemAvailable: 内存可用量，单位GB
        # @type MemAvailable: Integer
        # @param DiskTotal: 磁盘总量，单位GB
        # @type DiskTotal: Integer
        # @param DiskAvailable: 磁盘可用量，单位GB
        # @type DiskAvailable: Integer

        attr_accessor :DedicatedClusterId, :Name, :Zone, :StandbyDedicatedClusterSet, :InstanceCount, :CpuTotal, :CpuAvailable, :MemTotal, :MemAvailable, :DiskTotal, :DiskAvailable

        def initialize(dedicatedclusterid=nil, name=nil, zone=nil, standbydedicatedclusterset=nil, instancecount=nil, cputotal=nil, cpuavailable=nil, memtotal=nil, memavailable=nil, disktotal=nil, diskavailable=nil)
          @DedicatedClusterId = dedicatedclusterid
          @Name = name
          @Zone = zone
          @StandbyDedicatedClusterSet = standbydedicatedclusterset
          @InstanceCount = instancecount
          @CpuTotal = cputotal
          @CpuAvailable = cpuavailable
          @MemTotal = memtotal
          @MemAvailable = memavailable
          @DiskTotal = disktotal
          @DiskAvailable = diskavailable
        end

        def deserialize(params)
          @DedicatedClusterId = params['DedicatedClusterId']
          @Name = params['Name']
          @Zone = params['Zone']
          @StandbyDedicatedClusterSet = params['StandbyDedicatedClusterSet']
          @InstanceCount = params['InstanceCount']
          @CpuTotal = params['CpuTotal']
          @CpuAvailable = params['CpuAvailable']
          @MemTotal = params['MemTotal']
          @MemAvailable = params['MemAvailable']
          @DiskTotal = params['DiskTotal']
          @DiskAvailable = params['DiskAvailable']
        end
      end

      # DeleteAccount请求参数结构体
      class DeleteAccountRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。	可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param UserName: 删除的账号名称。	可通过[DescribeAccounts](https://cloud.tencent.com/document/api/409/18109)接口获取
        # @type UserName: String

        attr_accessor :DBInstanceId, :UserName

        def initialize(dbinstanceid=nil, username=nil)
          @DBInstanceId = dbinstanceid
          @UserName = username
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @UserName = params['UserName']
        end
      end

      # DeleteAccount返回参数结构体
      class DeleteAccountResponse < TencentCloud::Common::AbstractModel
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

      # DeleteBackupPlan请求参数结构体
      class DeleteBackupPlanRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param PlanId: 备份计划的ID。可通过[DescribeBackupPlans](https://cloud.tencent.com/document/api/409/68069)接口获取
        # @type PlanId: String

        attr_accessor :DBInstanceId, :PlanId

        def initialize(dbinstanceid=nil, planid=nil)
          @DBInstanceId = dbinstanceid
          @PlanId = planid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @PlanId = params['PlanId']
        end
      end

      # DeleteBackupPlan返回参数结构体
      class DeleteBackupPlanResponse < TencentCloud::Common::AbstractModel
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

      # DeleteBaseBackup请求参数结构体
      class DeleteBaseBackupRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param BaseBackupId: 数据备份ID。可通过[DescribeBaseBackups](https://cloud.tencent.com/document/api/409/89022)接口获取。7天内自动备份集不允许删除。
        # @type BaseBackupId: String

        attr_accessor :DBInstanceId, :BaseBackupId

        def initialize(dbinstanceid=nil, basebackupid=nil)
          @DBInstanceId = dbinstanceid
          @BaseBackupId = basebackupid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @BaseBackupId = params['BaseBackupId']
        end
      end

      # DeleteBaseBackup返回参数结构体
      class DeleteBaseBackupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDBInstanceNetworkAccess请求参数结构体
      class DeleteDBInstanceNetworkAccessRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如：postgres-6bwgamo3。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param VpcId: 私有网络统一 ID，若是基础网络则传"0"。
        # @type VpcId: String
        # @param SubnetId: 子网ID，若是基础网络则传"0"。
        # @type SubnetId: String
        # @param Vip: 目标VIP地址。
        # @type Vip: String

        attr_accessor :DBInstanceId, :VpcId, :SubnetId, :Vip

        def initialize(dbinstanceid=nil, vpcid=nil, subnetid=nil, vip=nil)
          @DBInstanceId = dbinstanceid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Vip = vip
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Vip = params['Vip']
        end
      end

      # DeleteDBInstanceNetworkAccess返回参数结构体
      class DeleteDBInstanceNetworkAccessResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID。
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

      # DeleteLogBackup请求参数结构体
      class DeleteLogBackupRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param LogBackupId: 日志备份ID。可通过[DescribeLogBackups](https://cloud.tencent.com/document/api/409/89021)接口获取。注：7天内自动备份集不允许删除。
        # @type LogBackupId: String

        attr_accessor :DBInstanceId, :LogBackupId

        def initialize(dbinstanceid=nil, logbackupid=nil)
          @DBInstanceId = dbinstanceid
          @LogBackupId = logbackupid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @LogBackupId = params['LogBackupId']
        end
      end

      # DeleteLogBackup返回参数结构体
      class DeleteLogBackupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteParameterTemplate请求参数结构体
      class DeleteParameterTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板ID，用于唯一确认待操作的参数模板。可通过[DescribeParameterTemplates](https://cloud.tencent.com/document/api/409/84067)接口获取
        # @type TemplateId: String

        attr_accessor :TemplateId

        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DeleteParameterTemplate返回参数结构体
      class DeleteParameterTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteReadOnlyGroupNetworkAccess请求参数结构体
      class DeleteReadOnlyGroupNetworkAccessRequest < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupId: RO组ID，形如：pgrogrp-4t9c6g7k。可通过[DescribeReadOnlyGroups](https://cloud.tencent.com/document/api/409/52599)接口获取
        # @type ReadOnlyGroupId: String
        # @param VpcId: 私有网络统一 ID，若是基础网络则传"0"。
        # @type VpcId: String
        # @param SubnetId: 子网ID，若是基础网络则传"0"。
        # @type SubnetId: String
        # @param Vip: 目标VIP地址。
        # @type Vip: String

        attr_accessor :ReadOnlyGroupId, :VpcId, :SubnetId, :Vip

        def initialize(readonlygroupid=nil, vpcid=nil, subnetid=nil, vip=nil)
          @ReadOnlyGroupId = readonlygroupid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Vip = vip
        end

        def deserialize(params)
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Vip = params['Vip']
        end
      end

      # DeleteReadOnlyGroupNetworkAccess返回参数结构体
      class DeleteReadOnlyGroupNetworkAccessResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID。
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

      # DeleteReadOnlyGroup请求参数结构体
      class DeleteReadOnlyGroupRequest < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupId: 待删除只读组ID
        # @type ReadOnlyGroupId: String

        attr_accessor :ReadOnlyGroupId

        def initialize(readonlygroupid=nil)
          @ReadOnlyGroupId = readonlygroupid
        end

        def deserialize(params)
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
        end
      end

      # DeleteReadOnlyGroup返回参数结构体
      class DeleteReadOnlyGroupResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
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

      # DescribeAccountPrivileges请求参数结构体
      class DescribeAccountPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。	可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param UserName: 查询此账号对某数据库对象所拥有的权限信息。账号名可通过[DescribeAccounts](https://cloud.tencent.com/document/api/409/18109)接口获取
        # @type UserName: String
        # @param DatabaseObjectSet: 要查询的数据库对象信息
        # @type DatabaseObjectSet: Array

        attr_accessor :DBInstanceId, :UserName, :DatabaseObjectSet

        def initialize(dbinstanceid=nil, username=nil, databaseobjectset=nil)
          @DBInstanceId = dbinstanceid
          @UserName = username
          @DatabaseObjectSet = databaseobjectset
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @UserName = params['UserName']
          unless params['DatabaseObjectSet'].nil?
            @DatabaseObjectSet = []
            params['DatabaseObjectSet'].each do |i|
              databaseobject_tmp = DatabaseObject.new
              databaseobject_tmp.deserialize(i)
              @DatabaseObjectSet << databaseobject_tmp
            end
          end
        end
      end

      # DescribeAccountPrivileges返回参数结构体
      class DescribeAccountPrivilegesResponse < TencentCloud::Common::AbstractModel
        # @param PrivilegeSet: 用户拥有数据库user_database的CREATE、CONNECT、TEMPORARY权限
        # @type PrivilegeSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PrivilegeSet, :RequestId

        def initialize(privilegeset=nil, requestid=nil)
          @PrivilegeSet = privilegeset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PrivilegeSet'].nil?
            @PrivilegeSet = []
            params['PrivilegeSet'].each do |i|
              databaseprivilege_tmp = DatabasePrivilege.new
              databaseprivilege_tmp.deserialize(i)
              @PrivilegeSet << databaseprivilege_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccounts请求参数结构体
      class DescribeAccountsRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-6fego161
        # @type DBInstanceId: String
        # @param Limit: 分页返回，每页最大返回数目，默认20，取值范围为1-100
        # @type Limit: Integer
        # @param Offset: 数据偏移量，从0开始。
        # @type Offset: Integer
        # @param OrderBy: 返回数据按照创建时间或者用户名排序。取值支持createTime、name、updateTime。createTime-按照创建时间排序；name-按照用户名排序; updateTime-按照更新时间排序。
        # @type OrderBy: String
        # @param OrderByType: 返回结果是升序还是降序。取值只能为desc或者asc。desc-降序；asc-升序
        # @type OrderByType: String

        attr_accessor :DBInstanceId, :Limit, :Offset, :OrderBy, :OrderByType

        def initialize(dbinstanceid=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil)
          @DBInstanceId = dbinstanceid
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeAccounts返回参数结构体
      class DescribeAccountsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 本次调用接口共返回了多少条数据。
        # @type TotalCount: Integer
        # @param Details: 账号列表详细信息。当CreateTime项为0000-00-00 00:00:00时，意味着对应账号是直连数据库创建的，并非通过CreateAccount接口创建。
        # @type Details: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Details, :RequestId

        def initialize(totalcount=nil, details=nil, requestid=nil)
          @TotalCount = totalcount
          @Details = details
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              accountinfo_tmp = AccountInfo.new
              accountinfo_tmp.deserialize(i)
              @Details << accountinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAvailableRecoveryTime请求参数结构体
      class DescribeAvailableRecoveryTimeRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String

        attr_accessor :DBInstanceId

        def initialize(dbinstanceid=nil)
          @DBInstanceId = dbinstanceid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
        end
      end

      # DescribeAvailableRecoveryTime返回参数结构体
      class DescribeAvailableRecoveryTimeResponse < TencentCloud::Common::AbstractModel
        # @param RecoveryBeginTime: 可恢复的最早时间，时区为东八区（UTC+8）。
        # @type RecoveryBeginTime: String
        # @param RecoveryEndTime: 可恢复的最晚时间，时区为东八区（UTC+8）。
        # @type RecoveryEndTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecoveryBeginTime, :RecoveryEndTime, :RequestId

        def initialize(recoverybegintime=nil, recoveryendtime=nil, requestid=nil)
          @RecoveryBeginTime = recoverybegintime
          @RecoveryEndTime = recoveryendtime
          @RequestId = requestid
        end

        def deserialize(params)
          @RecoveryBeginTime = params['RecoveryBeginTime']
          @RecoveryEndTime = params['RecoveryEndTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupDownloadRestriction请求参数结构体
      class DescribeBackupDownloadRestrictionRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBackupDownloadRestriction返回参数结构体
      class DescribeBackupDownloadRestrictionResponse < TencentCloud::Common::AbstractModel
        # @param RestrictionType: 备份文件下载限制类型，NONE 无限制，内外网都可以下载；INTRANET 只允许内网下载；CUSTOMIZE 自定义限制下载的vpc或ip。
        # @type RestrictionType: String
        # @param VpcRestrictionEffect: vpc限制效力，ALLOW 允许；DENY 拒绝。
        # @type VpcRestrictionEffect: String
        # @param VpcIdSet: 允许或拒绝下载备份文件的vpcId列表。
        # @type VpcIdSet: Array
        # @param IpRestrictionEffect: ip限制效力，ALLOW 允许；DENY 拒绝。
        # @type IpRestrictionEffect: String
        # @param IpSet: 允许或拒绝下载备份文件的ip列表。
        # @type IpSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RestrictionType, :VpcRestrictionEffect, :VpcIdSet, :IpRestrictionEffect, :IpSet, :RequestId

        def initialize(restrictiontype=nil, vpcrestrictioneffect=nil, vpcidset=nil, iprestrictioneffect=nil, ipset=nil, requestid=nil)
          @RestrictionType = restrictiontype
          @VpcRestrictionEffect = vpcrestrictioneffect
          @VpcIdSet = vpcidset
          @IpRestrictionEffect = iprestrictioneffect
          @IpSet = ipset
          @RequestId = requestid
        end

        def deserialize(params)
          @RestrictionType = params['RestrictionType']
          @VpcRestrictionEffect = params['VpcRestrictionEffect']
          @VpcIdSet = params['VpcIdSet']
          @IpRestrictionEffect = params['IpRestrictionEffect']
          @IpSet = params['IpSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupDownloadURL请求参数结构体
      class DescribeBackupDownloadURLRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param BackupType: 备份类型，目前支持：LogBackup，BaseBackup。
        # @type BackupType: String
        # @param BackupId: 备份的唯一ID。
        # @type BackupId: String
        # @param URLExpireTime: 链接的有效时间，取值为[0,36]，默认为12小时。
        # @type URLExpireTime: Integer
        # @param BackupDownloadRestriction: 备份下载限制
        # @type BackupDownloadRestriction: :class:`Tencentcloud::Postgres.v20170312.models.BackupDownloadRestriction`

        attr_accessor :DBInstanceId, :BackupType, :BackupId, :URLExpireTime, :BackupDownloadRestriction

        def initialize(dbinstanceid=nil, backuptype=nil, backupid=nil, urlexpiretime=nil, backupdownloadrestriction=nil)
          @DBInstanceId = dbinstanceid
          @BackupType = backuptype
          @BackupId = backupid
          @URLExpireTime = urlexpiretime
          @BackupDownloadRestriction = backupdownloadrestriction
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @BackupType = params['BackupType']
          @BackupId = params['BackupId']
          @URLExpireTime = params['URLExpireTime']
          unless params['BackupDownloadRestriction'].nil?
            @BackupDownloadRestriction = BackupDownloadRestriction.new
            @BackupDownloadRestriction.deserialize(params['BackupDownloadRestriction'])
          end
        end
      end

      # DescribeBackupDownloadURL返回参数结构体
      class DescribeBackupDownloadURLResponse < TencentCloud::Common::AbstractModel
        # @param BackupDownloadURL: 备份的下载地址。
        # @type BackupDownloadURL: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupDownloadURL, :RequestId

        def initialize(backupdownloadurl=nil, requestid=nil)
          @BackupDownloadURL = backupdownloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @BackupDownloadURL = params['BackupDownloadURL']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupOverview请求参数结构体
      class DescribeBackupOverviewRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBackupOverview返回参数结构体
      class DescribeBackupOverviewResponse < TencentCloud::Common::AbstractModel
        # @param TotalFreeSize: 总免费空间大小，单位byte。
        # @type TotalFreeSize: Integer
        # @param UsedFreeSize: 已使用免费空间大小，单位byte。
        # @type UsedFreeSize: Integer
        # @param UsedBillingSize: 已使用收费空间大小，单位byte。
        # @type UsedBillingSize: Integer
        # @param LogBackupCount: 日志备份数量。
        # @type LogBackupCount: Integer
        # @param LogBackupSize: 日志备份大小，单位byte。
        # @type LogBackupSize: Integer
        # @param ManualBaseBackupCount: 手动创建的基础备份数量。
        # @type ManualBaseBackupCount: Integer
        # @param ManualBaseBackupSize: 手动创建的基础备份大小，单位byte。
        # @type ManualBaseBackupSize: Integer
        # @param AutoBaseBackupCount: 自动创建的基础备份数量。
        # @type AutoBaseBackupCount: Integer
        # @param AutoBaseBackupSize: 自动创建的基础备份大小，单位byte。
        # @type AutoBaseBackupSize: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalFreeSize, :UsedFreeSize, :UsedBillingSize, :LogBackupCount, :LogBackupSize, :ManualBaseBackupCount, :ManualBaseBackupSize, :AutoBaseBackupCount, :AutoBaseBackupSize, :RequestId

        def initialize(totalfreesize=nil, usedfreesize=nil, usedbillingsize=nil, logbackupcount=nil, logbackupsize=nil, manualbasebackupcount=nil, manualbasebackupsize=nil, autobasebackupcount=nil, autobasebackupsize=nil, requestid=nil)
          @TotalFreeSize = totalfreesize
          @UsedFreeSize = usedfreesize
          @UsedBillingSize = usedbillingsize
          @LogBackupCount = logbackupcount
          @LogBackupSize = logbackupsize
          @ManualBaseBackupCount = manualbasebackupcount
          @ManualBaseBackupSize = manualbasebackupsize
          @AutoBaseBackupCount = autobasebackupcount
          @AutoBaseBackupSize = autobasebackupsize
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalFreeSize = params['TotalFreeSize']
          @UsedFreeSize = params['UsedFreeSize']
          @UsedBillingSize = params['UsedBillingSize']
          @LogBackupCount = params['LogBackupCount']
          @LogBackupSize = params['LogBackupSize']
          @ManualBaseBackupCount = params['ManualBaseBackupCount']
          @ManualBaseBackupSize = params['ManualBaseBackupSize']
          @AutoBaseBackupCount = params['AutoBaseBackupCount']
          @AutoBaseBackupSize = params['AutoBaseBackupSize']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupPlans请求参数结构体
      class DescribeBackupPlansRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String

        attr_accessor :DBInstanceId

        def initialize(dbinstanceid=nil)
          @DBInstanceId = dbinstanceid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
        end
      end

      # DescribeBackupPlans返回参数结构体
      class DescribeBackupPlansResponse < TencentCloud::Common::AbstractModel
        # @param Plans: 实例的备份计划集
        # @type Plans: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Plans, :RequestId

        def initialize(plans=nil, requestid=nil)
          @Plans = plans
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Plans'].nil?
            @Plans = []
            params['Plans'].each do |i|
              backupplan_tmp = BackupPlan.new
              backupplan_tmp.deserialize(i)
              @Plans << backupplan_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupSummaries请求参数结构体
      class DescribeBackupSummariesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页显示数量，取值范围为1-100，默认为返回10条。
        # @type Limit: Integer
        # @param Offset: 数据偏移量，从0开始。
        # @type Offset: Integer
        # @param Filters: 按照一个或者多个过滤条件进行查询，目前支持的过滤条件有：
        # db-instance-id：按照实例ID过滤，类型为string。
        # db-instance-name：按照实例名过滤，支持模糊匹配，类型为string。
        # db-instance-ip：按照实例私有网络IP地址过滤，类型为string。
        # @type Filters: Array
        # @param OrderBy: 排序字段，支持TotalBackupSize - 备份总大小、LogBackupSize - 备份日志的大小、ManualBaseBackupSize - 手动备份数据大小、AutoBaseBackupSize - 自动备份数据大小。当不传入该参数时，默认不进行排序。
        # @type OrderBy: String
        # @param OrderByType: 排序方式，包括升序：asc，降序：desc。默认值：asc。
        # @type OrderByType: String

        attr_accessor :Limit, :Offset, :Filters, :OrderBy, :OrderByType

        def initialize(limit=nil, offset=nil, filters=nil, orderby=nil, orderbytype=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeBackupSummaries返回参数结构体
      class DescribeBackupSummariesResponse < TencentCloud::Common::AbstractModel
        # @param BackupSummarySet: 备份统计信息列表。
        # @type BackupSummarySet: Array
        # @param TotalCount: 查询到的所有备份信息数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupSummarySet, :TotalCount, :RequestId

        def initialize(backupsummaryset=nil, totalcount=nil, requestid=nil)
          @BackupSummarySet = backupsummaryset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BackupSummarySet'].nil?
            @BackupSummarySet = []
            params['BackupSummarySet'].each do |i|
              backupsummary_tmp = BackupSummary.new
              backupsummary_tmp.deserialize(i)
              @BackupSummarySet << backupsummary_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaseBackups请求参数结构体
      class DescribeBaseBackupsRequest < TencentCloud::Common::AbstractModel
        # @param MinFinishTime: 备份的最小结束时间，形如2018-01-01 00:00:00。默认为7天前。
        # @type MinFinishTime: String
        # @param MaxFinishTime: 备份的最大结束时间，形如2018-01-01 00:00:00。默认为当前时间。
        # @type MaxFinishTime: String
        # @param Filters: 按照一个或者多个过滤条件进行查询，目前支持的过滤条件有：
        # db-instance-id：按照实例ID过滤，类型为string。
        # db-instance-name：按照实例名过滤，支持模糊匹配，类型为string。
        # db-instance-ip：按照实例私有网络IP地址过滤，类型为string。
        # base-backup-id：按照备份集ID过滤，类型为string。
        # db-instance-status：按实例状态过滤，类型为string。取值参考[DBInstance](https://cloud.tencent.com/document/api/409/16778#DBInstance)结构的DBInstanceStatus字段。
        # @type Filters: Array
        # @param Limit: 每页显示数量，取值范围为1-100，默认为返回10条。
        # @type Limit: Integer
        # @param Offset: 数据偏移量，从0开始。
        # @type Offset: Integer
        # @param OrderBy: 排序字段，支持StartTime,FinishTime,Size。默认值：StartTime。
        # @type OrderBy: String
        # @param OrderByType: 排序方式，包括升序：asc，降序：desc。默认值：desc。
        # @type OrderByType: String

        attr_accessor :MinFinishTime, :MaxFinishTime, :Filters, :Limit, :Offset, :OrderBy, :OrderByType

        def initialize(minfinishtime=nil, maxfinishtime=nil, filters=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil)
          @MinFinishTime = minfinishtime
          @MaxFinishTime = maxfinishtime
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @MinFinishTime = params['MinFinishTime']
          @MaxFinishTime = params['MaxFinishTime']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeBaseBackups返回参数结构体
      class DescribeBaseBackupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询到的数据备份数量。
        # @type TotalCount: Integer
        # @param BaseBackupSet: 数据备份详细信息列表。
        # @type BaseBackupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BaseBackupSet, :RequestId

        def initialize(totalcount=nil, basebackupset=nil, requestid=nil)
          @TotalCount = totalcount
          @BaseBackupSet = basebackupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BaseBackupSet'].nil?
            @BaseBackupSet = []
            params['BaseBackupSet'].each do |i|
              basebackup_tmp = BaseBackup.new
              basebackup_tmp.deserialize(i)
              @BaseBackupSet << basebackup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClasses请求参数结构体
      class DescribeClassesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区名称。可以通过接口[DescribeZones](https://cloud.tencent.com/document/product/409/16769)获取。
        # @type Zone: String
        # @param DBEngine: 数据库引擎，支持：
        # 1、postgresql（云数据库PostgreSQL）；
        # 2、mssql_compatible（MSSQL兼容-云数据库PostgreSQL）；
        # @type DBEngine: String
        # @param DBMajorVersion: 数据库主版本号。例如12，13，可以通过接口[DescribeDBVersions](https://cloud.tencent.com/document/product/409/89018)获取。
        # @type DBMajorVersion: String

        attr_accessor :Zone, :DBEngine, :DBMajorVersion

        def initialize(zone=nil, dbengine=nil, dbmajorversion=nil)
          @Zone = zone
          @DBEngine = dbengine
          @DBMajorVersion = dbmajorversion
        end

        def deserialize(params)
          @Zone = params['Zone']
          @DBEngine = params['DBEngine']
          @DBMajorVersion = params['DBMajorVersion']
        end
      end

      # DescribeClasses返回参数结构体
      class DescribeClassesResponse < TencentCloud::Common::AbstractModel
        # @param ClassInfoSet: 数据库规格列表
        # @type ClassInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClassInfoSet, :RequestId

        def initialize(classinfoset=nil, requestid=nil)
          @ClassInfoSet = classinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClassInfoSet'].nil?
            @ClassInfoSet = []
            params['ClassInfoSet'].each do |i|
              classinfo_tmp = ClassInfo.new
              classinfo_tmp.deserialize(i)
              @ClassInfoSet << classinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloneDBInstanceSpec请求参数结构体
      class DescribeCloneDBInstanceSpecRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param BackupSetId: 基础备份集ID，可通过[DescribeBaseBackups](https://cloud.tencent.com/document/api/409/89022)接口获取。此入参和RecoveryTargetTime必须选择一个传入。如与RecoveryTargetTime参数同时设置，则以此参数为准。
        # @type BackupSetId: String
        # @param RecoveryTargetTime: 恢复目标时间，此入参和BackupSetId必须选择一个传入。时区以东八区（UTC+8）为准。
        # @type RecoveryTargetTime: String

        attr_accessor :DBInstanceId, :BackupSetId, :RecoveryTargetTime

        def initialize(dbinstanceid=nil, backupsetid=nil, recoverytargettime=nil)
          @DBInstanceId = dbinstanceid
          @BackupSetId = backupsetid
          @RecoveryTargetTime = recoverytargettime
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @BackupSetId = params['BackupSetId']
          @RecoveryTargetTime = params['RecoveryTargetTime']
        end
      end

      # DescribeCloneDBInstanceSpec返回参数结构体
      class DescribeCloneDBInstanceSpecResponse < TencentCloud::Common::AbstractModel
        # @param MinSpecCode: 可购买的最小规格码。
        # @type MinSpecCode: String
        # @param MinStorage: 可购买的最小磁盘容量，单位GB。
        # @type MinStorage: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MinSpecCode, :MinStorage, :RequestId

        def initialize(minspeccode=nil, minstorage=nil, requestid=nil)
          @MinSpecCode = minspeccode
          @MinStorage = minstorage
          @RequestId = requestid
        end

        def deserialize(params)
          @MinSpecCode = params['MinSpecCode']
          @MinStorage = params['MinStorage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBBackups请求参数结构体
      class DescribeDBBackupsRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-4wdeb0zv。
        # @type DBInstanceId: String
        # @param Type: 备份方式（1-全量）。目前只支持全量，取值为1。
        # @type Type: Integer
        # @param StartTime: 查询开始时间，形如2018-06-10 17:06:38，起始时间不得小于7天以前
        # @type StartTime: String
        # @param EndTime: 查询结束时间，形如2018-06-10 17:06:38
        # @type EndTime: String
        # @param Limit: 备份列表分页返回，每页返回数量，默认为 20，最小为1，最大值为 100。（当该参数不传或者传0时按默认值处理）
        # @type Limit: Integer
        # @param Offset: 返回结果中的第几页，从第0页开始。默认为0。
        # @type Offset: Integer

        attr_accessor :DBInstanceId, :Type, :StartTime, :EndTime, :Limit, :Offset

        def initialize(dbinstanceid=nil, type=nil, starttime=nil, endtime=nil, limit=nil, offset=nil)
          @DBInstanceId = dbinstanceid
          @Type = type
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @Type = params['Type']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDBBackups返回参数结构体
      class DescribeDBBackupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回备份列表中备份文件的个数
        # @type TotalCount: Integer
        # @param BackupList: 备份列表
        # @type BackupList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BackupList, :RequestId

        def initialize(totalcount=nil, backuplist=nil, requestid=nil)
          @TotalCount = totalcount
          @BackupList = backuplist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BackupList'].nil?
            @BackupList = []
            params['BackupList'].each do |i|
              dbbackup_tmp = DBBackup.new
              dbbackup_tmp.deserialize(i)
              @BackupList << dbbackup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBErrlogs请求参数结构体
      class DescribeDBErrlogsRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。	可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param StartTime: 查询起始时间，形如2018-01-01 00:00:00。日志保留时间默认为7天，起始时间不能超出保留时间范围。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，形如2018-01-01 00:00:00。
        # @type EndTime: String
        # @param DatabaseName: 数据库名字。
        # @type DatabaseName: String
        # @param SearchKeys: 搜索关键字。
        # @type SearchKeys: Array
        # @param Limit: 每页显示数量，取值范围为1-100。默认值为50。
        # @type Limit: Integer
        # @param Offset: 数据偏移量，从0开始。默认值为0。
        # @type Offset: Integer

        attr_accessor :DBInstanceId, :StartTime, :EndTime, :DatabaseName, :SearchKeys, :Limit, :Offset

        def initialize(dbinstanceid=nil, starttime=nil, endtime=nil, databasename=nil, searchkeys=nil, limit=nil, offset=nil)
          @DBInstanceId = dbinstanceid
          @StartTime = starttime
          @EndTime = endtime
          @DatabaseName = databasename
          @SearchKeys = searchkeys
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DatabaseName = params['DatabaseName']
          @SearchKeys = params['SearchKeys']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDBErrlogs返回参数结构体
      class DescribeDBErrlogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询到的日志数量，最大值为10000条。
        # @type TotalCount: Integer
        # @param Details: 错误日志详细信息集合。
        # @type Details: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Details, :RequestId

        def initialize(totalcount=nil, details=nil, requestid=nil)
          @TotalCount = totalcount
          @Details = details
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              errlogdetail_tmp = ErrLogDetail.new
              errlogdetail_tmp.deserialize(i)
              @Details << errlogdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceAttribute请求参数结构体
      class DescribeDBInstanceAttributeRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID
        # @type DBInstanceId: String

        attr_accessor :DBInstanceId

        def initialize(dbinstanceid=nil)
          @DBInstanceId = dbinstanceid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
        end
      end

      # DescribeDBInstanceAttribute返回参数结构体
      class DescribeDBInstanceAttributeResponse < TencentCloud::Common::AbstractModel
        # @param DBInstance: 实例详细信息。
        # @type DBInstance: :class:`Tencentcloud::Postgres.v20170312.models.DBInstance`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DBInstance, :RequestId

        def initialize(dbinstance=nil, requestid=nil)
          @DBInstance = dbinstance
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DBInstance'].nil?
            @DBInstance = DBInstance.new
            @DBInstance.deserialize(params['DBInstance'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceHAConfig请求参数结构体
      class DescribeDBInstanceHAConfigRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID
        # @type DBInstanceId: String

        attr_accessor :DBInstanceId

        def initialize(dbinstanceid=nil)
          @DBInstanceId = dbinstanceid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
        end
      end

      # DescribeDBInstanceHAConfig返回参数结构体
      class DescribeDBInstanceHAConfigResponse < TencentCloud::Common::AbstractModel
        # @param SyncMode: 主从同步方式：
        # <li>Semi-sync：半同步
        # <li>Async：异步
        # @type SyncMode: String
        # @param MaxStandbyLatency: 高可用备机最大延迟数据量。备节点延迟数据量小于等于该值，且备节点延迟时间小于等于MaxStandbyLag时，可以切换为主节点。
        # <li>单位：byte
        # <li>参数范围：[1073741824, 322122547200]
        # @type MaxStandbyLatency: Integer
        # @param MaxStandbyLag: 高可用备机最大延迟时间。备节点延迟时间小于等于该值，且备节点延迟数据量小于等于MaxStandbyLatency时，可以切换为主节点。
        # <li>单位：s
        # <li>参数范围：[5, 10]
        # @type MaxStandbyLag: Integer
        # @param MaxSyncStandbyLatency: 同步备机最大延迟数据量。备机延迟数据量小于等于该值，且该备机延迟时间小于等于MaxSyncStandbyLag时，则该备机采用同步复制；否则，采用异步复制。
        # 该参数值针对SyncMode设置为Semi-sync的实例有效。
        # 异步实例该字段返回null。
        # 半同步实例禁止退化为异步复制时，该字段返回null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxSyncStandbyLatency: Integer
        # @param MaxSyncStandbyLag: 同步备机最大延迟时间。备机延迟时间小于等于该值，且该备机延迟数据量小于等于MaxSyncStandbyLatency时，则该备机采用同步复制；否则，采用异步复制。
        # 该参数值针对SyncMode设置为Semi-sync的实例有效。
        # 异步实例不返回该字段。
        # 半同步实例禁止退化为异步复制时，不返回该字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxSyncStandbyLag: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SyncMode, :MaxStandbyLatency, :MaxStandbyLag, :MaxSyncStandbyLatency, :MaxSyncStandbyLag, :RequestId

        def initialize(syncmode=nil, maxstandbylatency=nil, maxstandbylag=nil, maxsyncstandbylatency=nil, maxsyncstandbylag=nil, requestid=nil)
          @SyncMode = syncmode
          @MaxStandbyLatency = maxstandbylatency
          @MaxStandbyLag = maxstandbylag
          @MaxSyncStandbyLatency = maxsyncstandbylatency
          @MaxSyncStandbyLag = maxsyncstandbylag
          @RequestId = requestid
        end

        def deserialize(params)
          @SyncMode = params['SyncMode']
          @MaxStandbyLatency = params['MaxStandbyLatency']
          @MaxStandbyLag = params['MaxStandbyLag']
          @MaxSyncStandbyLatency = params['MaxSyncStandbyLatency']
          @MaxSyncStandbyLag = params['MaxSyncStandbyLag']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceParameters请求参数结构体
      class DescribeDBInstanceParametersRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param ParamName: 查询指定参数详情。ParamName为空或不传，默认返回全部参数列表
        # @type ParamName: String

        attr_accessor :DBInstanceId, :ParamName

        def initialize(dbinstanceid=nil, paramname=nil)
          @DBInstanceId = dbinstanceid
          @ParamName = paramname
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @ParamName = params['ParamName']
        end
      end

      # DescribeDBInstanceParameters返回参数结构体
      class DescribeDBInstanceParametersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 参数列表总数
        # @type TotalCount: Integer
        # @param Detail: 参数列表返回详情
        # @type Detail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Detail, :RequestId

        def initialize(totalcount=nil, detail=nil, requestid=nil)
          @TotalCount = totalcount
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @Detail << paraminfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceSSLConfig请求参数结构体
      class DescribeDBInstanceSSLConfigRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-6bwgamo3。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String

        attr_accessor :DBInstanceId

        def initialize(dbinstanceid=nil)
          @DBInstanceId = dbinstanceid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
        end
      end

      # DescribeDBInstanceSSLConfig返回参数结构体
      class DescribeDBInstanceSSLConfigResponse < TencentCloud::Common::AbstractModel
        # @param SSLEnabled: true 代表开通 ，false 代表未开通
        # @type SSLEnabled: Boolean
        # @param CAUrl: 云端根证书下载链接
        # @type CAUrl: String
        # @param ConnectAddress: 服务器证书中配置的内网或外网连接地址
        # @type ConnectAddress: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SSLEnabled, :CAUrl, :ConnectAddress, :RequestId

        def initialize(sslenabled=nil, caurl=nil, connectaddress=nil, requestid=nil)
          @SSLEnabled = sslenabled
          @CAUrl = caurl
          @ConnectAddress = connectaddress
          @RequestId = requestid
        end

        def deserialize(params)
          @SSLEnabled = params['SSLEnabled']
          @CAUrl = params['CAUrl']
          @ConnectAddress = params['ConnectAddress']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceSecurityGroups请求参数结构体
      class DescribeDBInstanceSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取。DBInstanceId和ReadOnlyGroupId至少传一个；如果都传，忽略ReadOnlyGroupId。
        # @type DBInstanceId: String
        # @param ReadOnlyGroupId: 只读组ID，可通过[DescribeReadOnlyGroups](https://cloud.tencent.com/document/api/409/52599)接口获取。DBInstanceId和ReadOnlyGroupId至少传一个；如果要查询只读组关联的安全组，只传ReadOnlyGroupId。
        # @type ReadOnlyGroupId: String

        attr_accessor :DBInstanceId, :ReadOnlyGroupId

        def initialize(dbinstanceid=nil, readonlygroupid=nil)
          @DBInstanceId = dbinstanceid
          @ReadOnlyGroupId = readonlygroupid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
        end
      end

      # DescribeDBInstanceSecurityGroups返回参数结构体
      class DescribeDBInstanceSecurityGroupsResponse < TencentCloud::Common::AbstractModel
        # @param SecurityGroupSet: 安全组信息数组
        # @type SecurityGroupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityGroupSet, :RequestId

        def initialize(securitygroupset=nil, requestid=nil)
          @SecurityGroupSet = securitygroupset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityGroupSet'].nil?
            @SecurityGroupSet = []
            params['SecurityGroupSet'].each do |i|
              securitygroup_tmp = SecurityGroup.new
              securitygroup_tmp.deserialize(i)
              @SecurityGroupSet << securitygroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstances请求参数结构体
      class DescribeDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 按照一个或者多个过滤条件进行查询，目前支持的过滤条件有：
        # db-instance-id：按照实例ID过滤，类型为string
        # db-instance-name：按照实例名过滤，类型为string
        # db-project-id：按照项目ID过滤，类型为integer
        # db-pay-mode：按照实例付费模式过滤，类型为string
        # db-tag-key：按照标签键过滤，类型为string
        # db-private-ip： 按照实例私有网络IP过滤，类型为string
        # db-public-address： 按照实例外网地址过滤，类型为string
        # db-dedicated-cluster-id: 按照私有集群Id过滤，类型为string
        # @type Filters: Array
        # @param Limit: 每页显示数量，取值范围为1-100，默认为返回10条。
        # @type Limit: Integer
        # @param Offset: 数据偏移量，从0开始。
        # @type Offset: Integer
        # @param OrderBy: 排序指标，如实例名、创建时间等，支持DBInstanceId,CreateTime,Name,EndTime
        # @type OrderBy: String
        # @param OrderByType: 排序方式，包括升序：asc、降序：desc。
        # @type OrderByType: String

        attr_accessor :Filters, :Limit, :Offset, :OrderBy, :OrderByType

        def initialize(filters=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeDBInstances返回参数结构体
      class DescribeDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询到的实例数量。
        # @type TotalCount: Integer
        # @param DBInstanceSet: 实例详细信息集合。
        # @type DBInstanceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DBInstanceSet, :RequestId

        def initialize(totalcount=nil, dbinstanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @DBInstanceSet = dbinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DBInstanceSet'].nil?
            @DBInstanceSet = []
            params['DBInstanceSet'].each do |i|
              dbinstance_tmp = DBInstance.new
              dbinstance_tmp.deserialize(i)
              @DBInstanceSet << dbinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBVersions请求参数结构体
      class DescribeDBVersionsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDBVersions返回参数结构体
      class DescribeDBVersionsResponse < TencentCloud::Common::AbstractModel
        # @param VersionSet: 数据库版本号信息列表
        # @type VersionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VersionSet, :RequestId

        def initialize(versionset=nil, requestid=nil)
          @VersionSet = versionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VersionSet'].nil?
            @VersionSet = []
            params['VersionSet'].each do |i|
              version_tmp = Version.new
              version_tmp.deserialize(i)
              @VersionSet << version_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBXlogs请求参数结构体
      class DescribeDBXlogsRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-4wdeb0zv。
        # @type DBInstanceId: String
        # @param StartTime: 查询开始时间，形如2018-06-10 17:06:38，起始时间不得小于7天以前
        # @type StartTime: String
        # @param EndTime: 查询结束时间，形如2018-06-10 17:06:38
        # @type EndTime: String
        # @param Offset: 分页返回，表示返回第几页的条目。从第0页开始计数。
        # @type Offset: Integer
        # @param Limit: 分页返回，表示每页有多少条目。取值为1-100。
        # @type Limit: Integer

        attr_accessor :DBInstanceId, :StartTime, :EndTime, :Offset, :Limit

        def initialize(dbinstanceid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @DBInstanceId = dbinstanceid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDBXlogs返回参数结构体
      class DescribeDBXlogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 表示此次返回结果有多少条数据。
        # @type TotalCount: Integer
        # @param XlogList: Xlog列表
        # @type XlogList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :XlogList, :RequestId

        def initialize(totalcount=nil, xloglist=nil, requestid=nil)
          @TotalCount = totalcount
          @XlogList = xloglist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['XlogList'].nil?
            @XlogList = []
            params['XlogList'].each do |i|
              xlog_tmp = Xlog.new
              xlog_tmp.deserialize(i)
              @XlogList << xlog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabaseObjects请求参数结构体
      class DescribeDatabaseObjectsRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。	可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param ObjectType: 查询的对象类型。支持查询的数据对象有：database,schema,sequence,procedure,type,function,table,view,matview,column。
        # @type ObjectType: String
        # @param Limit: 单次显示数量，默认20。可选范围为[0,100]。
        # @type Limit: Integer
        # @param Offset: 数据偏移量，从0开始。
        # @type Offset: Integer
        # @param DatabaseName: 查询对象所属的数据库。当查询对象类型不为database时，此参数必填。
        # @type DatabaseName: String
        # @param SchemaName: 查询对象所属的模式。当查询对象类型不为database、schema时，此参数必填。
        # @type SchemaName: String
        # @param TableName: 查询对象所属的表。当查询对象类型为column时，此参数必填。
        # @type TableName: String

        attr_accessor :DBInstanceId, :ObjectType, :Limit, :Offset, :DatabaseName, :SchemaName, :TableName

        def initialize(dbinstanceid=nil, objecttype=nil, limit=nil, offset=nil, databasename=nil, schemaname=nil, tablename=nil)
          @DBInstanceId = dbinstanceid
          @ObjectType = objecttype
          @Limit = limit
          @Offset = offset
          @DatabaseName = databasename
          @SchemaName = schemaname
          @TableName = tablename
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @ObjectType = params['ObjectType']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @DatabaseName = params['DatabaseName']
          @SchemaName = params['SchemaName']
          @TableName = params['TableName']
        end
      end

      # DescribeDatabaseObjects返回参数结构体
      class DescribeDatabaseObjectsResponse < TencentCloud::Common::AbstractModel
        # @param ObjectSet: 查询对象列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectSet: Array
        # @param TotalCount: 查询对象总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ObjectSet, :TotalCount, :RequestId

        def initialize(objectset=nil, totalcount=nil, requestid=nil)
          @ObjectSet = objectset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @ObjectSet = params['ObjectSet']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabases请求参数结构体
      class DescribeDatabasesRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/product/409/16773)接口获取
        # @type DBInstanceId: String
        # @param Filters: 按照一个或者多个过滤条件进行查询，目前支持的过滤条件有：database-name：按照数据库名称过滤，类型为string。此处使用模糊匹配搜索符合条件的数据库。
        # @type Filters: Array
        # @param Offset: 数据偏移量，从0开始。
        # @type Offset: Integer
        # @param Limit: 单次显示数量。建议最大取值100。
        # 默认值：20
        # @type Limit: Integer

        attr_accessor :DBInstanceId, :Filters, :Offset, :Limit

        def initialize(dbinstanceid=nil, filters=nil, offset=nil, limit=nil)
          @DBInstanceId = dbinstanceid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDatabases返回参数结构体
      class DescribeDatabasesResponse < TencentCloud::Common::AbstractModel
        # @param Items: 数据库信息
        # @type Items: Array
        # @param TotalCount: 数据库总数
        # @type TotalCount: Integer
        # @param Databases: 数据库详情列表
        # @type Databases: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :TotalCount, :Databases, :RequestId

        def initialize(items=nil, totalcount=nil, databases=nil, requestid=nil)
          @Items = items
          @TotalCount = totalcount
          @Databases = databases
          @RequestId = requestid
        end

        def deserialize(params)
          @Items = params['Items']
          @TotalCount = params['TotalCount']
          unless params['Databases'].nil?
            @Databases = []
            params['Databases'].each do |i|
              database_tmp = Database.new
              database_tmp.deserialize(i)
              @Databases << database_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDedicatedClusters请求参数结构体
      class DescribeDedicatedClustersRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 按照一个或者多个过滤条件进行查询，目前支持的过滤条件有：
        # dedicated-cluster-id: 按照专属集群ID筛选，类型为string
        # @type Filters: Array

        attr_accessor :Filters

        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
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

      # DescribeDedicatedClusters返回参数结构体
      class DescribeDedicatedClustersResponse < TencentCloud::Common::AbstractModel
        # @param DedicatedClusterSet: 专属集群信息
        # @type DedicatedClusterSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DedicatedClusterSet, :RequestId

        def initialize(dedicatedclusterset=nil, requestid=nil)
          @DedicatedClusterSet = dedicatedclusterset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DedicatedClusterSet'].nil?
            @DedicatedClusterSet = []
            params['DedicatedClusterSet'].each do |i|
              dedicatedcluster_tmp = DedicatedCluster.new
              dedicatedcluster_tmp.deserialize(i)
              @DedicatedClusterSet << dedicatedcluster_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDefaultParameters请求参数结构体
      class DescribeDefaultParametersRequest < TencentCloud::Common::AbstractModel
        # @param DBMajorVersion: 数据库版本，大版本号，例如11，12，13。可从[DescribeDBVersions](https://cloud.tencent.com/document/api/409/89018)接口获取
        # @type DBMajorVersion: String
        # @param DBEngine: 数据库引擎，例如：postgresql,mssql_compatible
        # @type DBEngine: String

        attr_accessor :DBMajorVersion, :DBEngine

        def initialize(dbmajorversion=nil, dbengine=nil)
          @DBMajorVersion = dbmajorversion
          @DBEngine = dbengine
        end

        def deserialize(params)
          @DBMajorVersion = params['DBMajorVersion']
          @DBEngine = params['DBEngine']
        end
      end

      # DescribeDefaultParameters返回参数结构体
      class DescribeDefaultParametersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 参数个数
        # @type TotalCount: Integer
        # @param ParamInfoSet: 参数信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ParamInfoSet, :RequestId

        def initialize(totalcount=nil, paraminfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @ParamInfoSet = paraminfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ParamInfoSet'].nil?
            @ParamInfoSet = []
            params['ParamInfoSet'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @ParamInfoSet << paraminfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEncryptionKeys请求参数结构体
      class DescribeEncryptionKeysRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String

        attr_accessor :DBInstanceId

        def initialize(dbinstanceid=nil)
          @DBInstanceId = dbinstanceid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
        end
      end

      # DescribeEncryptionKeys返回参数结构体
      class DescribeEncryptionKeysResponse < TencentCloud::Common::AbstractModel
        # @param EncryptionKeys: 实例密钥信息列表。
        # @type EncryptionKeys: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EncryptionKeys, :RequestId

        def initialize(encryptionkeys=nil, requestid=nil)
          @EncryptionKeys = encryptionkeys
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EncryptionKeys'].nil?
            @EncryptionKeys = []
            params['EncryptionKeys'].each do |i|
              encryptionkey_tmp = EncryptionKey.new
              encryptionkey_tmp.deserialize(i)
              @EncryptionKeys << encryptionkey_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogBackups请求参数结构体
      class DescribeLogBackupsRequest < TencentCloud::Common::AbstractModel
        # @param MinFinishTime: 备份的最小结束时间，形如2018-01-01 00:00:00。默认为7天前。
        # @type MinFinishTime: String
        # @param MaxFinishTime: 备份的最大结束时间，形如2018-01-01 00:00:00。默认为当前时间。
        # @type MaxFinishTime: String
        # @param Filters: 按照一个或者多个过滤条件进行查询，目前支持的过滤条件有：
        # db-instance-id：按照实例ID过滤，类型为string。
        # db-instance-name：按照实例名过滤，支持模糊匹配，类型为string。
        # db-instance-ip：按照实例私有网络IP地址过滤，类型为string。
        # db-instance-status：按实例状态过滤，类型为string。取值参考[DBInstance](https://cloud.tencent.com/document/api/409/16778#DBInstance)结构的DBInstanceStatus字段。
        # @type Filters: Array
        # @param Limit: 每页显示数量，取值范围为1-100，默认为返回10条。
        # @type Limit: Integer
        # @param Offset: 数据偏移量，从0开始。
        # @type Offset: Integer
        # @param OrderBy: 排序字段，支持StartTime,FinishTime,Size。默认值：StartTime
        # @type OrderBy: String
        # @param OrderByType: 排序方式，包括升序：asc，降序：desc。默认值：desc。
        # @type OrderByType: String

        attr_accessor :MinFinishTime, :MaxFinishTime, :Filters, :Limit, :Offset, :OrderBy, :OrderByType

        def initialize(minfinishtime=nil, maxfinishtime=nil, filters=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil)
          @MinFinishTime = minfinishtime
          @MaxFinishTime = maxfinishtime
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @MinFinishTime = params['MinFinishTime']
          @MaxFinishTime = params['MaxFinishTime']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeLogBackups返回参数结构体
      class DescribeLogBackupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询到的日志备份数量。
        # @type TotalCount: Integer
        # @param LogBackupSet: 日志备份详细信息列表。
        # @type LogBackupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :LogBackupSet, :RequestId

        def initialize(totalcount=nil, logbackupset=nil, requestid=nil)
          @TotalCount = totalcount
          @LogBackupSet = logbackupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LogBackupSet'].nil?
            @LogBackupSet = []
            params['LogBackupSet'].each do |i|
              logbackup_tmp = LogBackup.new
              logbackup_tmp.deserialize(i)
              @LogBackupSet << logbackup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMaintainTimeWindow请求参数结构体
      class DescribeMaintainTimeWindowRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String

        attr_accessor :DBInstanceId

        def initialize(dbinstanceid=nil)
          @DBInstanceId = dbinstanceid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
        end
      end

      # DescribeMaintainTimeWindow返回参数结构体
      class DescribeMaintainTimeWindowResponse < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID
        # @type DBInstanceId: String
        # @param MaintainStartTime: 维护开始时间。时区为东八区（UTC+8）
        # @type MaintainStartTime: String
        # @param MaintainDuration: 维护持续时间。单位：小时
        # @type MaintainDuration: Integer
        # @param MaintainWeekDays: 维护周期
        # @type MaintainWeekDays: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DBInstanceId, :MaintainStartTime, :MaintainDuration, :MaintainWeekDays, :RequestId

        def initialize(dbinstanceid=nil, maintainstarttime=nil, maintainduration=nil, maintainweekdays=nil, requestid=nil)
          @DBInstanceId = dbinstanceid
          @MaintainStartTime = maintainstarttime
          @MaintainDuration = maintainduration
          @MaintainWeekDays = maintainweekdays
          @RequestId = requestid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @MaintainStartTime = params['MaintainStartTime']
          @MaintainDuration = params['MaintainDuration']
          @MaintainWeekDays = params['MaintainWeekDays']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrders请求参数结构体
      class DescribeOrdersRequest < TencentCloud::Common::AbstractModel
        # @param DealNames: 订单名集合
        # @type DealNames: Array

        attr_accessor :DealNames

        def initialize(dealnames=nil)
          @DealNames = dealnames
        end

        def deserialize(params)
          @DealNames = params['DealNames']
        end
      end

      # DescribeOrders返回参数结构体
      class DescribeOrdersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 订单数量
        # @type TotalCount: Integer
        # @param Deals: 订单数组
        # @type Deals: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Deals, :RequestId

        def initialize(totalcount=nil, deals=nil, requestid=nil)
          @TotalCount = totalcount
          @Deals = deals
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Deals'].nil?
            @Deals = []
            params['Deals'].each do |i|
              pgdeal_tmp = PgDeal.new
              pgdeal_tmp.deserialize(i)
              @Deals << pgdeal_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeParameterTemplateAttributes请求参数结构体
      class DescribeParameterTemplateAttributesRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板ID。可通过[DescribeParameterTemplates](https://cloud.tencent.com/document/api/409/84067)接口获取
        # @type TemplateId: String

        attr_accessor :TemplateId

        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeParameterTemplateAttributes返回参数结构体
      class DescribeParameterTemplateAttributesResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板ID
        # @type TemplateId: String
        # @param TotalCount: 参数模板包含的参数个数
        # @type TotalCount: Integer
        # @param ParamInfoSet: 参数模板包含的参数信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamInfoSet: Array
        # @param TemplateName: 参数模板名称
        # @type TemplateName: String
        # @param DBMajorVersion: 参数模板适用的数据库版本
        # @type DBMajorVersion: String
        # @param DBEngine: 参数模板适用的数据库引擎
        # @type DBEngine: String
        # @param TemplateDescription: 参数模板描述
        # @type TemplateDescription: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateId, :TotalCount, :ParamInfoSet, :TemplateName, :DBMajorVersion, :DBEngine, :TemplateDescription, :RequestId

        def initialize(templateid=nil, totalcount=nil, paraminfoset=nil, templatename=nil, dbmajorversion=nil, dbengine=nil, templatedescription=nil, requestid=nil)
          @TemplateId = templateid
          @TotalCount = totalcount
          @ParamInfoSet = paraminfoset
          @TemplateName = templatename
          @DBMajorVersion = dbmajorversion
          @DBEngine = dbengine
          @TemplateDescription = templatedescription
          @RequestId = requestid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TotalCount = params['TotalCount']
          unless params['ParamInfoSet'].nil?
            @ParamInfoSet = []
            params['ParamInfoSet'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @ParamInfoSet << paraminfo_tmp
            end
          end
          @TemplateName = params['TemplateName']
          @DBMajorVersion = params['DBMajorVersion']
          @DBEngine = params['DBEngine']
          @TemplateDescription = params['TemplateDescription']
          @RequestId = params['RequestId']
        end
      end

      # DescribeParameterTemplates请求参数结构体
      class DescribeParameterTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，目前支持的过滤条件有：TemplateName, TemplateId，DBMajorVersion，DBEngine。TemplateName不支持模糊匹配。
        # @type Filters: Array
        # @param Limit: 每页显示数量，[0，100]，默认 20
        # @type Limit: Integer
        # @param Offset: 数据偏移量
        # @type Offset: Integer
        # @param OrderBy: 排序指标，枚举值，支持：CreateTime，TemplateName，DBMajorVersion。如果不指定该参数，默认将按照参数模板的编号倒序排列，也就是说最新添加的参数模板会排在最前面。
        # @type OrderBy: String
        # @param OrderByType: 排序方式，枚举值，支持：asc（升序） ，desc（降序）。默认值为asc。当未指定OrderBy时，该参数失效，此时排序方式为OrderBy参数描述中给出的默认排序方式。
        # @type OrderByType: String

        attr_accessor :Filters, :Limit, :Offset, :OrderBy, :OrderByType

        def initialize(filters=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeParameterTemplates返回参数结构体
      class DescribeParameterTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的参数模板总数
        # @type TotalCount: Integer
        # @param ParameterTemplateSet: 参数模板列表
        # @type ParameterTemplateSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ParameterTemplateSet, :RequestId

        def initialize(totalcount=nil, parametertemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @ParameterTemplateSet = parametertemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ParameterTemplateSet'].nil?
            @ParameterTemplateSet = []
            params['ParameterTemplateSet'].each do |i|
              parametertemplate_tmp = ParameterTemplate.new
              parametertemplate_tmp.deserialize(i)
              @ParameterTemplateSet << parametertemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeParamsEvent请求参数结构体
      class DescribeParamsEventRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String

        attr_accessor :DBInstanceId

        def initialize(dbinstanceid=nil)
          @DBInstanceId = dbinstanceid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
        end
      end

      # DescribeParamsEvent返回参数结构体
      class DescribeParamsEventResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 参数修改事件总数，以参数为统计粒度
        # @type TotalCount: Integer
        # @param EventItems: 实例参数修改事件详情
        # @type EventItems: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :EventItems, :RequestId

        def initialize(totalcount=nil, eventitems=nil, requestid=nil)
          @TotalCount = totalcount
          @EventItems = eventitems
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EventItems'].nil?
            @EventItems = []
            params['EventItems'].each do |i|
              eventitem_tmp = EventItem.new
              eventitem_tmp.deserialize(i)
              @EventItems << eventitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProductConfig请求参数结构体
      class DescribeProductConfigRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区名称
        # @type Zone: String
        # @param DBEngine: 数据库引擎，支持：
        # 1、postgresql（云数据库PostgreSQL）；
        # 2、mssql_compatible（MSSQL兼容-云数据库PostgreSQL）；
        # 如不指定默认使用postgresql。
        # @type DBEngine: String

        attr_accessor :Zone, :DBEngine

        def initialize(zone=nil, dbengine=nil)
          @Zone = zone
          @DBEngine = dbengine
        end

        def deserialize(params)
          @Zone = params['Zone']
          @DBEngine = params['DBEngine']
        end
      end

      # DescribeProductConfig返回参数结构体
      class DescribeProductConfigResponse < TencentCloud::Common::AbstractModel
        # @param SpecInfoList: 售卖规格列表。
        # @type SpecInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SpecInfoList, :RequestId

        def initialize(specinfolist=nil, requestid=nil)
          @SpecInfoList = specinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SpecInfoList'].nil?
            @SpecInfoList = []
            params['SpecInfoList'].each do |i|
              specinfo_tmp = SpecInfo.new
              specinfo_tmp.deserialize(i)
              @SpecInfoList << specinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReadOnlyGroups请求参数结构体
      class DescribeReadOnlyGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 按照一个或者多个过滤条件进行查询，目前支持的过滤条件有：
        # db-master-instance-id：按照主实例过滤，类型为string。
        # read-only-group-id：按照只读组ID过滤，类型为string。
        # @type Filters: Array
        # @param PageSize: 查询每一页的条数，默认为10
        # @type PageSize: Integer
        # @param PageNumber: 查询的页码，默认为1
        # @type PageNumber: Integer
        # @param OrderBy: 查询排序依据，目前支持:ROGroupId,CreateTime,Name
        # @type OrderBy: String
        # @param OrderByType: 查询排序依据类型，目前支持:desc,asc
        # @type OrderByType: String

        attr_accessor :Filters, :PageSize, :PageNumber, :OrderBy, :OrderByType

        def initialize(filters=nil, pagesize=nil, pagenumber=nil, orderby=nil, orderbytype=nil)
          @Filters = filters
          @PageSize = pagesize
          @PageNumber = pagenumber
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeReadOnlyGroups返回参数结构体
      class DescribeReadOnlyGroupsResponse < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupList: 只读组列表
        # @type ReadOnlyGroupList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReadOnlyGroupList, :RequestId

        def initialize(readonlygrouplist=nil, requestid=nil)
          @ReadOnlyGroupList = readonlygrouplist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ReadOnlyGroupList'].nil?
            @ReadOnlyGroupList = []
            params['ReadOnlyGroupList'].each do |i|
              readonlygroup_tmp = ReadOnlyGroup.new
              readonlygroup_tmp.deserialize(i)
              @ReadOnlyGroupList << readonlygroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegions请求参数结构体
      class DescribeRegionsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRegions返回参数结构体
      class DescribeRegionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的结果数量。
        # @type TotalCount: Integer
        # @param RegionSet: 地域信息集合。
        # @type RegionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RegionSet, :RequestId

        def initialize(totalcount=nil, regionset=nil, requestid=nil)
          @TotalCount = totalcount
          @RegionSet = regionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RegionSet'].nil?
            @RegionSet = []
            params['RegionSet'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @RegionSet << regioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowQueryAnalysis请求参数结构体
      class DescribeSlowQueryAnalysisRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param StartTime: 查询起始时间，形如2018-01-01 00:00:00。日志保留时间默认为7天，起始时间不能超出保留时间范围。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，形如2018-01-01 00:00:00。
        # @type EndTime: String
        # @param DatabaseName: 数据库名字。
        # @type DatabaseName: String
        # @param OrderBy: 排序字段，取值范围[CallNum,CostTime,AvgCostTime]。默认值为CallNum。
        # @type OrderBy: String
        # @param OrderByType: 排序方式，包括升序：asc 降序：desc。默认值为desc。
        # @type OrderByType: String
        # @param Limit: 每页显示数量，取值范围为1-100。默认值为50。
        # @type Limit: Integer
        # @param Offset: 数据偏移量，从0开始。默认值为0。
        # @type Offset: Integer

        attr_accessor :DBInstanceId, :StartTime, :EndTime, :DatabaseName, :OrderBy, :OrderByType, :Limit, :Offset

        def initialize(dbinstanceid=nil, starttime=nil, endtime=nil, databasename=nil, orderby=nil, orderbytype=nil, limit=nil, offset=nil)
          @DBInstanceId = dbinstanceid
          @StartTime = starttime
          @EndTime = endtime
          @DatabaseName = databasename
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DatabaseName = params['DatabaseName']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeSlowQueryAnalysis返回参数结构体
      class DescribeSlowQueryAnalysisResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询到的总条数，最大值为10000条。
        # @type TotalCount: Integer
        # @param Detail: 查询到的慢SQL统计分析详细信息集合。
        # @type Detail: :class:`Tencentcloud::Postgres.v20170312.models.Detail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Detail, :RequestId

        def initialize(totalcount=nil, detail=nil, requestid=nil)
          @TotalCount = totalcount
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Detail'].nil?
            @Detail = Detail.new
            @Detail.deserialize(params['Detail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowQueryList请求参数结构体
      class DescribeSlowQueryListRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param StartTime: 查询起始时间，形如2018-01-01 00:00:00。日志保留时间默认为7天，起始时间不能超出保留时间范围。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，形如2018-01-01 00:00:00。
        # @type EndTime: String
        # @param DatabaseName: 数据库名字。
        # @type DatabaseName: String
        # @param OrderByType: 排序方式，包括升序：asc 降序：desc。默认值为desc。
        # @type OrderByType: String
        # @param OrderBy: 排序字段，取值范围[SessionStartTime,Duration]。默认值为SessionStartTime。
        # @type OrderBy: String
        # @param Limit: 每页显示数量，取值范围为1-100。默认值为50。
        # @type Limit: Integer
        # @param Offset: 数据偏移量，从0开始。默认值为0。
        # @type Offset: Integer

        attr_accessor :DBInstanceId, :StartTime, :EndTime, :DatabaseName, :OrderByType, :OrderBy, :Limit, :Offset

        def initialize(dbinstanceid=nil, starttime=nil, endtime=nil, databasename=nil, orderbytype=nil, orderby=nil, limit=nil, offset=nil)
          @DBInstanceId = dbinstanceid
          @StartTime = starttime
          @EndTime = endtime
          @DatabaseName = databasename
          @OrderByType = orderbytype
          @OrderBy = orderby
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DatabaseName = params['DatabaseName']
          @OrderByType = params['OrderByType']
          @OrderBy = params['OrderBy']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeSlowQueryList返回参数结构体
      class DescribeSlowQueryListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询到的慢日志数量，最大值为10000条。
        # @type TotalCount: Integer
        # @param DurationAnalysis: 查询到的慢日志耗时分段分析结果。
        # @type DurationAnalysis: Array
        # @param RawSlowQueryList: 查询到的慢日志详细信息集合。
        # @type RawSlowQueryList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DurationAnalysis, :RawSlowQueryList, :RequestId

        def initialize(totalcount=nil, durationanalysis=nil, rawslowquerylist=nil, requestid=nil)
          @TotalCount = totalcount
          @DurationAnalysis = durationanalysis
          @RawSlowQueryList = rawslowquerylist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DurationAnalysis'].nil?
            @DurationAnalysis = []
            params['DurationAnalysis'].each do |i|
              durationanalysis_tmp = DurationAnalysis.new
              durationanalysis_tmp.deserialize(i)
              @DurationAnalysis << durationanalysis_tmp
            end
          end
          unless params['RawSlowQueryList'].nil?
            @RawSlowQueryList = []
            params['RawSlowQueryList'].each do |i|
              rawslowquery_tmp = RawSlowQuery.new
              rawslowquery_tmp.deserialize(i)
              @RawSlowQueryList << rawslowquery_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasks请求参数结构体
      class DescribeTasksRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 按照任务ID进行查询。其余云API中返回的FlowId和TaskId等价。
        # @type TaskId: Integer
        # @param DBInstanceId: 按照数据库实例ID进行查询。
        # @type DBInstanceId: String
        # @param MinStartTime: 任务的最早开始时间，形如2024-08-23 00:00:00,默认只展示180天内的数据。
        # @type MinStartTime: String
        # @param MaxStartTime: 任务的最晚开始时间，形如2024-08-23 00:00:00，默认为当前时间。
        # @type MaxStartTime: String
        # @param Limit: 每页显示数量，取值范围为1-100，默认为返回20条。
        # @type Limit: Integer
        # @param Offset: 数据偏移量，从0开始。
        # @type Offset: Integer
        # @param OrderBy: 排序字段，支持StartTime,EndTime，默认为StartTime。
        # @type OrderBy: String
        # @param OrderByType: 排序方式，包括升序：asc，降序：desc，默认为desc。
        # @type OrderByType: String

        attr_accessor :TaskId, :DBInstanceId, :MinStartTime, :MaxStartTime, :Limit, :Offset, :OrderBy, :OrderByType

        def initialize(taskid=nil, dbinstanceid=nil, minstarttime=nil, maxstarttime=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil)
          @TaskId = taskid
          @DBInstanceId = dbinstanceid
          @MinStartTime = minstarttime
          @MaxStartTime = maxstarttime
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @DBInstanceId = params['DBInstanceId']
          @MinStartTime = params['MinStartTime']
          @MaxStartTime = params['MaxStartTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeTasks返回参数结构体
      class DescribeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询到的任务数量
        # @type TotalCount: Integer
        # @param TaskSet: 任务信息列表
        # @type TaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TaskSet, :RequestId

        def initialize(totalcount=nil, taskset=nil, requestid=nil)
          @TotalCount = totalcount
          @TaskSet = taskset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              taskset_tmp = TaskSet.new
              taskset_tmp.deserialize(i)
              @TaskSet << taskset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZones请求参数结构体
      class DescribeZonesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeZones返回参数结构体
      class DescribeZonesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的结果数量。
        # @type TotalCount: Integer
        # @param ZoneSet: 可用区信息集合。
        # @type ZoneSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ZoneSet, :RequestId

        def initialize(totalcount=nil, zoneset=nil, requestid=nil)
          @TotalCount = totalcount
          @ZoneSet = zoneset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ZoneSet'].nil?
            @ZoneSet = []
            params['ZoneSet'].each do |i|
              zoneinfo_tmp = ZoneInfo.new
              zoneinfo_tmp.deserialize(i)
              @ZoneSet << zoneinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DestroyDBInstance请求参数结构体
      class DestroyDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 待下线实例ID
        # @type DBInstanceId: String

        attr_accessor :DBInstanceId

        def initialize(dbinstanceid=nil)
          @DBInstanceId = dbinstanceid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
        end
      end

      # DestroyDBInstance返回参数结构体
      class DestroyDBInstanceResponse < TencentCloud::Common::AbstractModel
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

      # 慢SQL 统计分析接口返回详情
      class Detail < TencentCloud::Common::AbstractModel
        # @param TotalTime: 输入时间范围内所有慢sql执行的总时间，单位毫秒（ms）
        # @type TotalTime: Float
        # @param TotalCallNum: 输入时间范围内所有慢sql总条数
        # @type TotalCallNum: Integer
        # @param AnalysisItems: 慢SQL统计分析列表
        # @type AnalysisItems: Array

        attr_accessor :TotalTime, :TotalCallNum, :AnalysisItems

        def initialize(totaltime=nil, totalcallnum=nil, analysisitems=nil)
          @TotalTime = totaltime
          @TotalCallNum = totalcallnum
          @AnalysisItems = analysisitems
        end

        def deserialize(params)
          @TotalTime = params['TotalTime']
          @TotalCallNum = params['TotalCallNum']
          unless params['AnalysisItems'].nil?
            @AnalysisItems = []
            params['AnalysisItems'].each do |i|
              analysisitems_tmp = AnalysisItems.new
              analysisitems_tmp.deserialize(i)
              @AnalysisItems << analysisitems_tmp
            end
          end
        end
      end

      # DisIsolateDBInstances请求参数结构体
      class DisIsolateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceIdSet: 实例ID列表。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取。支持同时解隔离多个实例。
        # @type DBInstanceIdSet: Array
        # @param Period: 购买时长，单位：月。
        # <li>预付费：支持1,2,3,4,5,6,7,8,9,10,11,12,24,36</li>
        # <li>后付费：该参数不生效</li>
        # @type Period: Integer
        # @param AutoVoucher: 是否使用代金券：
        # <li>true：使用</li>
        # <li>false：不使用</li>
        # 默认值：false
        # @type AutoVoucher: Boolean
        # @param VoucherIds: 代金券id列表。
        # @type VoucherIds: Array

        attr_accessor :DBInstanceIdSet, :Period, :AutoVoucher, :VoucherIds

        def initialize(dbinstanceidset=nil, period=nil, autovoucher=nil, voucherids=nil)
          @DBInstanceIdSet = dbinstanceidset
          @Period = period
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
        end

        def deserialize(params)
          @DBInstanceIdSet = params['DBInstanceIdSet']
          @Period = params['Period']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
        end
      end

      # DisIsolateDBInstances返回参数结构体
      class DisIsolateDBInstancesResponse < TencentCloud::Common::AbstractModel
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

      # 慢SQL耗时分段分析
      class DurationAnalysis < TencentCloud::Common::AbstractModel
        # @param TimeSegment: 慢SQL耗时，时段
        # @type TimeSegment: String
        # @param Count: 对应时段区间慢SQL 条数
        # @type Count: Integer

        attr_accessor :TimeSegment, :Count

        def initialize(timesegment=nil, count=nil)
          @TimeSegment = timesegment
          @Count = count
        end

        def deserialize(params)
          @TimeSegment = params['TimeSegment']
          @Count = params['Count']
        end
      end

      # KMS密钥信息
      class EncryptionKey < TencentCloud::Common::AbstractModel
        # @param KeyId: KMS实例加密的KeyId。
        # @type KeyId: String
        # @param KeyAlias: KMS实例加密Key的别名。
        # @type KeyAlias: String
        # @param DEKCipherTextBlob: 实例加密密钥DEK的密文。
        # @type DEKCipherTextBlob: String
        # @param IsEnabled: 密钥是否启用，1-启用， 0-未启用。
        # @type IsEnabled: Integer
        # @param KeyRegion: KMS密钥所在地域。
        # @type KeyRegion: String
        # @param CreateTime: DEK密钥创建时间。
        # @type CreateTime: String
        # @param KMSClusterId: 密钥所在的KMS服务集群Id，为空表示密钥在默认的KMS集群中，不为空表示在指定的KMS服务集群中
        # @type KMSClusterId: String

        attr_accessor :KeyId, :KeyAlias, :DEKCipherTextBlob, :IsEnabled, :KeyRegion, :CreateTime, :KMSClusterId

        def initialize(keyid=nil, keyalias=nil, dekciphertextblob=nil, isenabled=nil, keyregion=nil, createtime=nil, kmsclusterid=nil)
          @KeyId = keyid
          @KeyAlias = keyalias
          @DEKCipherTextBlob = dekciphertextblob
          @IsEnabled = isenabled
          @KeyRegion = keyregion
          @CreateTime = createtime
          @KMSClusterId = kmsclusterid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @KeyAlias = params['KeyAlias']
          @DEKCipherTextBlob = params['DEKCipherTextBlob']
          @IsEnabled = params['IsEnabled']
          @KeyRegion = params['KeyRegion']
          @CreateTime = params['CreateTime']
          @KMSClusterId = params['KMSClusterId']
        end
      end

      # 错误日志详情
      class ErrLogDetail < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param Database: 数据库名字
        # @type Database: String
        # @param ErrTime: 错误发生时间
        # @type ErrTime: String
        # @param ErrMsg: 错误消息
        # @type ErrMsg: String

        attr_accessor :UserName, :Database, :ErrTime, :ErrMsg

        def initialize(username=nil, database=nil, errtime=nil, errmsg=nil)
          @UserName = username
          @Database = database
          @ErrTime = errtime
          @ErrMsg = errmsg
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Database = params['Database']
          @ErrTime = params['ErrTime']
          @ErrMsg = params['ErrMsg']
        end
      end

      # 参数修改事件信息
      class EventInfo < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名
        # @type ParamName: String
        # @param OldValue: 原参数值
        # @type OldValue: String
        # @param NewValue: 本次修改期望参数值
        # @type NewValue: String
        # @param ModifyTime: 后台参数修改开始时间
        # @type ModifyTime: String
        # @param EffectiveTime: 后台参数生效开始时间
        # @type EffectiveTime: String
        # @param State: 修改状态。枚举值：in progress、success、paused
        # @type State: String
        # @param Operator: 操作者（一般为用户sub UIN）
        # @type Operator: String
        # @param EventLog: 时间日志。
        # @type EventLog: String

        attr_accessor :ParamName, :OldValue, :NewValue, :ModifyTime, :EffectiveTime, :State, :Operator, :EventLog

        def initialize(paramname=nil, oldvalue=nil, newvalue=nil, modifytime=nil, effectivetime=nil, state=nil, operator=nil, eventlog=nil)
          @ParamName = paramname
          @OldValue = oldvalue
          @NewValue = newvalue
          @ModifyTime = modifytime
          @EffectiveTime = effectivetime
          @State = state
          @Operator = operator
          @EventLog = eventlog
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @OldValue = params['OldValue']
          @NewValue = params['NewValue']
          @ModifyTime = params['ModifyTime']
          @EffectiveTime = params['EffectiveTime']
          @State = params['State']
          @Operator = params['Operator']
          @EventLog = params['EventLog']
        end
      end

      # 修改参数条目，以参数为维度
      class EventItem < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名
        # @type ParamName: String
        # @param EventCount: 修改事件数
        # @type EventCount: Integer
        # @param EventDetail: 修改时间详情
        # @type EventDetail: Array

        attr_accessor :ParamName, :EventCount, :EventDetail

        def initialize(paramname=nil, eventcount=nil, eventdetail=nil)
          @ParamName = paramname
          @EventCount = eventcount
          @EventDetail = eventdetail
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @EventCount = params['EventCount']
          unless params['EventDetail'].nil?
            @EventDetail = []
            params['EventDetail'].each do |i|
              eventinfo_tmp = EventInfo.new
              eventinfo_tmp.deserialize(i)
              @EventDetail << eventinfo_tmp
            end
          end
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称等
      # * 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # * 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤键的名称。
        # @type Name: String
        # @param Values: 一个或者多个过滤值。
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

      # InquiryPriceCreateDBInstances请求参数结构体
      class InquiryPriceCreateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区名称。该参数可以通过调用[ DescribeZones](https://cloud.tencent.com/document/product/409/16769) 接口的返回值中的Zone字段来获取。
        # @type Zone: String
        # @param SpecCode: 规格ID。该参数可以通过调用[DescribeClasses](https://cloud.tencent.com/document/product/409/89019)接口的返回值中的SpecCode字段来获取。
        # @type SpecCode: String
        # @param Storage: 存储容量大小，单位：GB。该参数的设置步长为10。
        # @type Storage: Integer
        # @param InstanceCount: 实例数量。目前最大数量不超过100，如需一次性创建更多实例，请联系客服支持。
        # @type InstanceCount: Integer
        # @param Period: 购买时长，单位：月。目前只支持1,2,3,4,5,6,7,8,9,10,11,12,24,36这些值。
        # @type Period: Integer
        # @param Pid: 【弃字段，不再生效】，计费ID。该参数可以通过调用DescribeProductConfig接口的返回值中的Pid字段来获取。
        # @type Pid: Integer
        # @param InstanceChargeType: 实例计费类型。目前支持：PREPAID（预付费，即包年包月）和 POSTPAID（按量计费）。
        # 默认值：PREPAID
        # @type InstanceChargeType: String
        # @param InstanceType: 实例类型，默认primary，支持如下：
        # primary（双机高可用（一主一从））
        # readonly（只读实例）
        # @type InstanceType: String
        # @param DBEngine: DB引擎，默认postgresql，支持如下：
        # postgresql（云数据库PostgreSQL）
        # mssql_compatible（MSSQL兼容-云数据库PostgreSQL）
        # @type DBEngine: String

        attr_accessor :Zone, :SpecCode, :Storage, :InstanceCount, :Period, :Pid, :InstanceChargeType, :InstanceType, :DBEngine

        def initialize(zone=nil, speccode=nil, storage=nil, instancecount=nil, period=nil, pid=nil, instancechargetype=nil, instancetype=nil, dbengine=nil)
          @Zone = zone
          @SpecCode = speccode
          @Storage = storage
          @InstanceCount = instancecount
          @Period = period
          @Pid = pid
          @InstanceChargeType = instancechargetype
          @InstanceType = instancetype
          @DBEngine = dbengine
        end

        def deserialize(params)
          @Zone = params['Zone']
          @SpecCode = params['SpecCode']
          @Storage = params['Storage']
          @InstanceCount = params['InstanceCount']
          @Period = params['Period']
          @Pid = params['Pid']
          @InstanceChargeType = params['InstanceChargeType']
          @InstanceType = params['InstanceType']
          @DBEngine = params['DBEngine']
        end
      end

      # InquiryPriceCreateDBInstances返回参数结构体
      class InquiryPriceCreateDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 刊例价，单位：分
        # @type OriginalPrice: Integer
        # @param Price: 折后实际付款金额，单位：分
        # @type Price: Integer
        # @param Currency: 币种。例如，CNY：人民币。
        # @type Currency: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalPrice, :Price, :Currency, :RequestId

        def initialize(originalprice=nil, price=nil, currency=nil, requestid=nil)
          @OriginalPrice = originalprice
          @Price = price
          @Currency = currency
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalPrice = params['OriginalPrice']
          @Price = params['Price']
          @Currency = params['Currency']
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceRenewDBInstance请求参数结构体
      class InquiryPriceRenewDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)获取。
        # （此接口仅支持预付费实例的查询）
        # @type DBInstanceId: String
        # @param Period: 续费周期，按月计算
        # @type Period: Integer

        attr_accessor :DBInstanceId, :Period

        def initialize(dbinstanceid=nil, period=nil)
          @DBInstanceId = dbinstanceid
          @Period = period
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @Period = params['Period']
        end
      end

      # InquiryPriceRenewDBInstance返回参数结构体
      class InquiryPriceRenewDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 刊例价，单位为分。如24650表示246.5元
        # @type OriginalPrice: Integer
        # @param Price: 折后实际付款金额，单位为分。如24650表示246.5元
        # @type Price: Integer
        # @param Currency: 币种。例如，CNY：人民币。
        # @type Currency: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalPrice, :Price, :Currency, :RequestId

        def initialize(originalprice=nil, price=nil, currency=nil, requestid=nil)
          @OriginalPrice = originalprice
          @Price = price
          @Currency = currency
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalPrice = params['OriginalPrice']
          @Price = params['Price']
          @Currency = params['Currency']
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceUpgradeDBInstance请求参数结构体
      class InquiryPriceUpgradeDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Storage: 实例的磁盘大小，单位GB
        # @type Storage: Integer
        # @param Memory: 实例的内存大小，单位GB
        # @type Memory: Integer
        # @param DBInstanceId: 实例ID，形如postgres-hez4fh0v。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param InstanceChargeType: 实例计费类型。
        # @type InstanceChargeType: String
        # @param Cpu: 实例的Cpu大小，单位Core。
        # 不传入此参数时，默认根据Memory确定的售卖规格所对应的Cpu进行设置。如Memory为2，支持的售卖规格有1核2GiB，则不传入Cpu时，Cpu默认为1。
        # @type Cpu: Integer

        attr_accessor :Storage, :Memory, :DBInstanceId, :InstanceChargeType, :Cpu
        extend Gem::Deprecate
        deprecate :InstanceChargeType, :none, 2025, 8
        deprecate :InstanceChargeType=, :none, 2025, 8

        def initialize(storage=nil, memory=nil, dbinstanceid=nil, instancechargetype=nil, cpu=nil)
          @Storage = storage
          @Memory = memory
          @DBInstanceId = dbinstanceid
          @InstanceChargeType = instancechargetype
          @Cpu = cpu
        end

        def deserialize(params)
          @Storage = params['Storage']
          @Memory = params['Memory']
          @DBInstanceId = params['DBInstanceId']
          @InstanceChargeType = params['InstanceChargeType']
          @Cpu = params['Cpu']
        end
      end

      # InquiryPriceUpgradeDBInstance返回参数结构体
      class InquiryPriceUpgradeDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 刊例价费用
        # @type OriginalPrice: Integer
        # @param Price: 折后实际付款金额
        # @type Price: Integer
        # @param Currency: 币种。例如，CNY：人民币。
        # @type Currency: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalPrice, :Price, :Currency, :RequestId

        def initialize(originalprice=nil, price=nil, currency=nil, requestid=nil)
          @OriginalPrice = originalprice
          @Price = price
          @Currency = currency
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalPrice = params['OriginalPrice']
          @Price = params['Price']
          @Currency = params['Currency']
          @RequestId = params['RequestId']
        end
      end

      # IsolateDBInstances请求参数结构体
      class IsolateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceIdSet: 实例ID集合。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取。注意：不推荐同时隔离多个实例。建议每次操作仅传入单个实例ID。
        # @type DBInstanceIdSet: Array

        attr_accessor :DBInstanceIdSet

        def initialize(dbinstanceidset=nil)
          @DBInstanceIdSet = dbinstanceidset
        end

        def deserialize(params)
          @DBInstanceIdSet = params['DBInstanceIdSet']
        end
      end

      # IsolateDBInstances返回参数结构体
      class IsolateDBInstancesResponse < TencentCloud::Common::AbstractModel
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

      # LockAccount请求参数结构体
      class LockAccountRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。
        # @type DBInstanceId: String
        # @param UserName: 账号名称。
        # @type UserName: String

        attr_accessor :DBInstanceId, :UserName

        def initialize(dbinstanceid=nil, username=nil)
          @DBInstanceId = dbinstanceid
          @UserName = username
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @UserName = params['UserName']
        end
      end

      # LockAccount返回参数结构体
      class LockAccountResponse < TencentCloud::Common::AbstractModel
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

      # 数据库日志备份信息
      class LogBackup < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。
        # @type DBInstanceId: String
        # @param Id: 备份文件唯一标识。
        # @type Id: String
        # @param Name: 备份文件名称。
        # @type Name: String
        # @param BackupMethod: 备份方式。枚举值，physical - 物理备份；logical - 逻辑备份。
        # @type BackupMethod: String
        # @param BackupMode: 备份模式。枚举值，manual - 手动备份；automatic - 自动备份 。
        # @type BackupMode: String
        # @param State: 备份任务状态。枚举值：init、running、finished、failed、canceled
        # @type State: String
        # @param Size: 备份集大小，单位bytes。
        # @type Size: Integer
        # @param StartTime: 备份的开始时间。
        # @type StartTime: String
        # @param FinishTime: 备份的结束时间。
        # @type FinishTime: String
        # @param ExpireTime: 备份的过期时间。
        # @type ExpireTime: String

        attr_accessor :DBInstanceId, :Id, :Name, :BackupMethod, :BackupMode, :State, :Size, :StartTime, :FinishTime, :ExpireTime

        def initialize(dbinstanceid=nil, id=nil, name=nil, backupmethod=nil, backupmode=nil, state=nil, size=nil, starttime=nil, finishtime=nil, expiretime=nil)
          @DBInstanceId = dbinstanceid
          @Id = id
          @Name = name
          @BackupMethod = backupmethod
          @BackupMode = backupmode
          @State = state
          @Size = size
          @StartTime = starttime
          @FinishTime = finishtime
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @Id = params['Id']
          @Name = params['Name']
          @BackupMethod = params['BackupMethod']
          @BackupMode = params['BackupMode']
          @State = params['State']
          @Size = params['Size']
          @StartTime = params['StartTime']
          @FinishTime = params['FinishTime']
          @ExpireTime = params['ExpireTime']
        end
      end

      # ModifyAccountPrivileges请求参数结构体
      class ModifyAccountPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。	可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param UserName: 修改此账号对某数据库对象的权限。可通过[DescribeAccounts](https://cloud.tencent.com/document/api/409/18109)接口获取
        # @type UserName: String
        # @param ModifyPrivilegeSet: 修改的权限信息，支持批量修改，一次最高修改50条。
        # @type ModifyPrivilegeSet: Array

        attr_accessor :DBInstanceId, :UserName, :ModifyPrivilegeSet

        def initialize(dbinstanceid=nil, username=nil, modifyprivilegeset=nil)
          @DBInstanceId = dbinstanceid
          @UserName = username
          @ModifyPrivilegeSet = modifyprivilegeset
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @UserName = params['UserName']
          unless params['ModifyPrivilegeSet'].nil?
            @ModifyPrivilegeSet = []
            params['ModifyPrivilegeSet'].each do |i|
              modifyprivilege_tmp = ModifyPrivilege.new
              modifyprivilege_tmp.deserialize(i)
              @ModifyPrivilegeSet << modifyprivilege_tmp
            end
          end
        end
      end

      # ModifyAccountPrivileges返回参数结构体
      class ModifyAccountPrivilegesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAccountRemark请求参数结构体
      class ModifyAccountRemarkRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-4wdeb0zv
        # @type DBInstanceId: String
        # @param UserName: 实例用户名
        # @type UserName: String
        # @param Remark: 用户UserName对应的新备注
        # @type Remark: String

        attr_accessor :DBInstanceId, :UserName, :Remark

        def initialize(dbinstanceid=nil, username=nil, remark=nil)
          @DBInstanceId = dbinstanceid
          @UserName = username
          @Remark = remark
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @UserName = params['UserName']
          @Remark = params['Remark']
        end
      end

      # ModifyAccountRemark返回参数结构体
      class ModifyAccountRemarkResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBackupDownloadRestriction请求参数结构体
      class ModifyBackupDownloadRestrictionRequest < TencentCloud::Common::AbstractModel
        # @param RestrictionType: 备份文件下载限制类型，NONE 无限制，内外网都可以下载；INTRANET 只允许内网下载；CUSTOMIZE 自定义限制下载的vpc或ip。当该参数取值为CUSTOMIZE时，Vpc限制和Ip限制需要至少填写一项。
        # @type RestrictionType: String
        # @param VpcRestrictionEffect: vpc限制效力，ALLOW 允许；DENY 拒绝。
        # @type VpcRestrictionEffect: String
        # @param VpcIdSet: 允许或拒绝下载备份文件的vpcId列表。
        # **注意：**该入参会全量替换存量已有集合，非增量更新。修改需传入预期的全量集合。
        # @type VpcIdSet: Array
        # @param IpRestrictionEffect: ip限制效力，ALLOW 允许；DENY 拒绝。
        # @type IpRestrictionEffect: String
        # @param IpSet: 允许或拒绝下载备份文件的ip列表。
        # **注意：**该入参会全量替换存量已有集合，非增量更新。修改需传入预期的全量集合。
        # @type IpSet: Array

        attr_accessor :RestrictionType, :VpcRestrictionEffect, :VpcIdSet, :IpRestrictionEffect, :IpSet

        def initialize(restrictiontype=nil, vpcrestrictioneffect=nil, vpcidset=nil, iprestrictioneffect=nil, ipset=nil)
          @RestrictionType = restrictiontype
          @VpcRestrictionEffect = vpcrestrictioneffect
          @VpcIdSet = vpcidset
          @IpRestrictionEffect = iprestrictioneffect
          @IpSet = ipset
        end

        def deserialize(params)
          @RestrictionType = params['RestrictionType']
          @VpcRestrictionEffect = params['VpcRestrictionEffect']
          @VpcIdSet = params['VpcIdSet']
          @IpRestrictionEffect = params['IpRestrictionEffect']
          @IpSet = params['IpSet']
        end
      end

      # ModifyBackupDownloadRestriction返回参数结构体
      class ModifyBackupDownloadRestrictionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBackupPlan请求参数结构体
      class ModifyBackupPlanRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param MinBackupStartTime: 实例最早开始备份时间
        # @type MinBackupStartTime: String
        # @param MaxBackupStartTime: 实例最晚开始备份时间
        # @type MaxBackupStartTime: String
        # @param BaseBackupRetentionPeriod: 实例备份保留时长，取值范围为7-1830，单位是天
        # @type BaseBackupRetentionPeriod: Integer
        # @param BackupPeriod: 实例备份周期，若是星期维度，格式为小写星期英文单词，且至少设置两天备份；若是按月维度，格式为数字字符，如["1","2"]。
        # @type BackupPeriod: Array
        # @param LogBackupRetentionPeriod: 实例日志备份保留时长，取值范围为7-1830，单位是天
        # @type LogBackupRetentionPeriod: Integer
        # @param PlanId: 备份计划ID，用于指明要修改哪个备份计划，不传则是修改默认备份计划。
        # @type PlanId: String
        # @param PlanName: 要修改的备份计划名称。
        # @type PlanName: String

        attr_accessor :DBInstanceId, :MinBackupStartTime, :MaxBackupStartTime, :BaseBackupRetentionPeriod, :BackupPeriod, :LogBackupRetentionPeriod, :PlanId, :PlanName

        def initialize(dbinstanceid=nil, minbackupstarttime=nil, maxbackupstarttime=nil, basebackupretentionperiod=nil, backupperiod=nil, logbackupretentionperiod=nil, planid=nil, planname=nil)
          @DBInstanceId = dbinstanceid
          @MinBackupStartTime = minbackupstarttime
          @MaxBackupStartTime = maxbackupstarttime
          @BaseBackupRetentionPeriod = basebackupretentionperiod
          @BackupPeriod = backupperiod
          @LogBackupRetentionPeriod = logbackupretentionperiod
          @PlanId = planid
          @PlanName = planname
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @MinBackupStartTime = params['MinBackupStartTime']
          @MaxBackupStartTime = params['MaxBackupStartTime']
          @BaseBackupRetentionPeriod = params['BaseBackupRetentionPeriod']
          @BackupPeriod = params['BackupPeriod']
          @LogBackupRetentionPeriod = params['LogBackupRetentionPeriod']
          @PlanId = params['PlanId']
          @PlanName = params['PlanName']
        end
      end

      # ModifyBackupPlan返回参数结构体
      class ModifyBackupPlanResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBaseBackupExpireTime请求参数结构体
      class ModifyBaseBackupExpireTimeRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param BaseBackupId: 数据备份ID。可通过[DescribeBaseBackups](https://cloud.tencent.com/document/api/409/89022)接口获取
        # @type BaseBackupId: String
        # @param NewExpireTime: 新过期时间。
        # @type NewExpireTime: String

        attr_accessor :DBInstanceId, :BaseBackupId, :NewExpireTime

        def initialize(dbinstanceid=nil, basebackupid=nil, newexpiretime=nil)
          @DBInstanceId = dbinstanceid
          @BaseBackupId = basebackupid
          @NewExpireTime = newexpiretime
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @BaseBackupId = params['BaseBackupId']
          @NewExpireTime = params['NewExpireTime']
        end
      end

      # ModifyBaseBackupExpireTime返回参数结构体
      class ModifyBaseBackupExpireTimeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceChargeType请求参数结构体
      class ModifyDBInstanceChargeTypeRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-6fego161。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param InstanceChargeType: 实例计费类型，目前支持：
        # <li>PREPAID：预付费，即包年包月</li>
        # <li>POSTPAID_BY_HOUR：后付费，即按量计费</li>
        # 默认值：PREPAID
        # @type InstanceChargeType: String
        # @param Period: 购买时长，单位：月。
        # <li>预付费：支持1,2,3,4,5,6,7,8,9,10,11,12,24,36</li>
        # <li>后付费：只支持1</li>
        # @type Period: Integer
        # @param AutoRenewFlag: 续费标记：
        # <li>0：手动续费</li>
        # <li>1：自动续费</li>
        # 默认值：0
        # @type AutoRenewFlag: Integer
        # @param AutoVoucher: 是否自动使用代金券：
        # <li>0：否</li>
        # <li>1：是</li>
        # 默认值：0
        # @type AutoVoucher: Integer

        attr_accessor :DBInstanceId, :InstanceChargeType, :Period, :AutoRenewFlag, :AutoVoucher

        def initialize(dbinstanceid=nil, instancechargetype=nil, period=nil, autorenewflag=nil, autovoucher=nil)
          @DBInstanceId = dbinstanceid
          @InstanceChargeType = instancechargetype
          @Period = period
          @AutoRenewFlag = autorenewflag
          @AutoVoucher = autovoucher
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @InstanceChargeType = params['InstanceChargeType']
          @Period = params['Period']
          @AutoRenewFlag = params['AutoRenewFlag']
          @AutoVoucher = params['AutoVoucher']
        end
      end

      # ModifyDBInstanceChargeType返回参数结构体
      class ModifyDBInstanceChargeTypeResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单名
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :RequestId

        def initialize(dealname=nil, requestid=nil)
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDBInstanceDeployment请求参数结构体
      class ModifyDBInstanceDeploymentRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param DBNodeSet: 实例节点部署信息，支持多可用区部署时需要指定每个节点的部署可用区信息。
        # 可用区信息可以通过调用 [DescribeZones](https://cloud.tencent.com/document/api/409/16769) 接口的返回值中的Zone字段来获取。
        # @type DBNodeSet: Array
        # @param SwitchTag: 指定实例配置完成变更后的切换时间。
        # <li>0：立即切换 </li>
        # <li>1：指定时间切换</li>
        # <li>2：维护时间窗口内切换</li>
        # @type SwitchTag: Integer
        # @param SwitchStartTime: 切换开始时间，时间格式：HH:MM:SS，例如：01:00:00。当SwitchTag为0或2时，该参数失效。
        # @type SwitchStartTime: String
        # @param SwitchEndTime: 切换截止时间，时间格式：HH:MM:SS，例如：01:30:00。当SwitchTag为0或2时，该参数失效。
        # @type SwitchEndTime: String

        attr_accessor :DBInstanceId, :DBNodeSet, :SwitchTag, :SwitchStartTime, :SwitchEndTime

        def initialize(dbinstanceid=nil, dbnodeset=nil, switchtag=nil, switchstarttime=nil, switchendtime=nil)
          @DBInstanceId = dbinstanceid
          @DBNodeSet = dbnodeset
          @SwitchTag = switchtag
          @SwitchStartTime = switchstarttime
          @SwitchEndTime = switchendtime
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          unless params['DBNodeSet'].nil?
            @DBNodeSet = []
            params['DBNodeSet'].each do |i|
              dbnode_tmp = DBNode.new
              dbnode_tmp.deserialize(i)
              @DBNodeSet << dbnode_tmp
            end
          end
          @SwitchTag = params['SwitchTag']
          @SwitchStartTime = params['SwitchStartTime']
          @SwitchEndTime = params['SwitchEndTime']
        end
      end

      # ModifyDBInstanceDeployment返回参数结构体
      class ModifyDBInstanceDeploymentResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceHAConfig请求参数结构体
      class ModifyDBInstanceHAConfigRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param SyncMode: 主从同步方式：
        # <li>Semi-sync：半同步</li>
        # <li>Async：异步</li>
        # @type SyncMode: String
        # @param MaxStandbyLatency: 高可用备机最大延迟数据量。备节点延迟数据量小于等于该值，且备节点延迟时间小于等于MaxStandbyLag时，可以切换为主节点。
        # <li>单位：byte</li>
        # <li>参数范围：[1073741824, 322122547200]</li>
        # @type MaxStandbyLatency: Integer
        # @param MaxStandbyLag: 高可用备机最大延迟时间。备节点延迟时间小于等于该值，且备节点延迟数据量小于等于MaxStandbyLatency时，可以切换为主节点。
        # <li>单位：s</li>
        # <li>参数范围：[5, 10]</li>
        # @type MaxStandbyLag: Integer
        # @param MaxSyncStandbyLatency: 同步备机最大延迟数据量。备机延迟数据量小于等于该值，且该备机延迟时间小于等于MaxSyncStandbyLag时，则该备机采用同步复制；否则，采用异步复制。
        # 该参数值针对SyncMode设置为Semi-sync的实例有效。
        # 半同步实例禁止退化为异步复制时，不设置MaxSyncStandbyLatency、MaxSyncStandbyLag。
        # 半同步实例允许退化异步复制时，PostgreSQL 9版本的实例须设置MaxSyncStandbyLatency且不设置MaxSyncStandbyLag，PostgreSQL 10及以上版本的实例须设置MaxSyncStandbyLatency、MaxSyncStandbyLag。
        # @type MaxSyncStandbyLatency: Integer
        # @param MaxSyncStandbyLag: 同步备机最大延迟时间。备机延迟时间小于等于该值，且该备机延迟数据量小于等于MaxSyncStandbyLatency时，则该备机采用同步复制；否则，采用异步复制。
        # 该参数值针对SyncMode设置为Semi-sync的实例有效。
        # 半同步实例禁止退化为异步复制时，不设置MaxSyncStandbyLatency、MaxSyncStandbyLag。
        # 半同步实例允许退化异步复制时，PostgreSQL 9版本的实例须设置MaxSyncStandbyLatency且不设置MaxSyncStandbyLag，PostgreSQL 10及以上版本的实例须设置MaxSyncStandbyLatency、MaxSyncStandbyLag，
        # @type MaxSyncStandbyLag: Integer

        attr_accessor :DBInstanceId, :SyncMode, :MaxStandbyLatency, :MaxStandbyLag, :MaxSyncStandbyLatency, :MaxSyncStandbyLag

        def initialize(dbinstanceid=nil, syncmode=nil, maxstandbylatency=nil, maxstandbylag=nil, maxsyncstandbylatency=nil, maxsyncstandbylag=nil)
          @DBInstanceId = dbinstanceid
          @SyncMode = syncmode
          @MaxStandbyLatency = maxstandbylatency
          @MaxStandbyLag = maxstandbylag
          @MaxSyncStandbyLatency = maxsyncstandbylatency
          @MaxSyncStandbyLag = maxsyncstandbylag
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @SyncMode = params['SyncMode']
          @MaxStandbyLatency = params['MaxStandbyLatency']
          @MaxStandbyLag = params['MaxStandbyLag']
          @MaxSyncStandbyLatency = params['MaxSyncStandbyLatency']
          @MaxSyncStandbyLag = params['MaxSyncStandbyLag']
        end
      end

      # ModifyDBInstanceHAConfig返回参数结构体
      class ModifyDBInstanceHAConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceName请求参数结构体
      class ModifyDBInstanceNameRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 数据库实例ID，形如postgres-6fego161。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param InstanceName: 实例名称，仅支持长度小于60的中文/英文/数字/"_"/"-"。
        # @type InstanceName: String

        attr_accessor :DBInstanceId, :InstanceName

        def initialize(dbinstanceid=nil, instancename=nil)
          @DBInstanceId = dbinstanceid
          @InstanceName = instancename
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @InstanceName = params['InstanceName']
        end
      end

      # ModifyDBInstanceName返回参数结构体
      class ModifyDBInstanceNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceParameters请求参数结构体
      class ModifyDBInstanceParametersRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param ParamList: 待修改参数及期望值。
        # @type ParamList: Array

        attr_accessor :DBInstanceId, :ParamList

        def initialize(dbinstanceid=nil, paramlist=nil)
          @DBInstanceId = dbinstanceid
          @ParamList = paramlist
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              paramentry_tmp = ParamEntry.new
              paramentry_tmp.deserialize(i)
              @ParamList << paramentry_tmp
            end
          end
        end
      end

      # ModifyDBInstanceParameters返回参数结构体
      class ModifyDBInstanceParametersResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceReadOnlyGroup请求参数结构体
      class ModifyDBInstanceReadOnlyGroupRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param ReadOnlyGroupId: 当前实例所在只读组ID
        # @type ReadOnlyGroupId: String
        # @param NewReadOnlyGroupId: 实例修改的目标只读组ID
        # @type NewReadOnlyGroupId: String

        attr_accessor :DBInstanceId, :ReadOnlyGroupId, :NewReadOnlyGroupId

        def initialize(dbinstanceid=nil, readonlygroupid=nil, newreadonlygroupid=nil)
          @DBInstanceId = dbinstanceid
          @ReadOnlyGroupId = readonlygroupid
          @NewReadOnlyGroupId = newreadonlygroupid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          @NewReadOnlyGroupId = params['NewReadOnlyGroupId']
        end
      end

      # ModifyDBInstanceReadOnlyGroup返回参数结构体
      class ModifyDBInstanceReadOnlyGroupResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
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

      # ModifyDBInstanceSSLConfig请求参数结构体
      class ModifyDBInstanceSSLConfigRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例 ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param SSLEnabled: 开启或关闭SSL。true - 开启 ；false - 关闭。
        # @type SSLEnabled: Boolean
        # @param ConnectAddress: SSL证书保护的唯一连接地址，若为主实例，可设置为内外网IP地址；若为只读实例，可设置为实例IP或只读组IP。在开启SSL或修改SSL保护的连接地址时，该参数为必传项；在关闭SSL时，该参数将被忽略。
        # @type ConnectAddress: String

        attr_accessor :DBInstanceId, :SSLEnabled, :ConnectAddress

        def initialize(dbinstanceid=nil, sslenabled=nil, connectaddress=nil)
          @DBInstanceId = dbinstanceid
          @SSLEnabled = sslenabled
          @ConnectAddress = connectaddress
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @SSLEnabled = params['SSLEnabled']
          @ConnectAddress = params['ConnectAddress']
        end
      end

      # ModifyDBInstanceSSLConfig返回参数结构体
      class ModifyDBInstanceSSLConfigResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyDBInstanceSecurityGroups请求参数结构体
      class ModifyDBInstanceSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupIdSet: 实例或只读组要绑定的安全组列表。
        # 安全组信息可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的sgId字段来查询。
        # **注意：**该入参会全量替换存量已有集合，非增量更新。修改需传入预期的全量集合。
        # @type SecurityGroupIdSet: Array
        # @param DBInstanceId: 实例ID，可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取。DBInstanceId和ReadOnlyGroupId至少传一个；如果都传，忽略ReadOnlyGroupId。
        # @type DBInstanceId: String
        # @param ReadOnlyGroupId: 只读组ID，可通过[DescribeReadOnlyGroups](https://cloud.tencent.com/document/api/409/52599)接口获取。DBInstanceId和ReadOnlyGroupId至少传一个；如果要修改只读组关联的安全组，只传ReadOnlyGroupId
        # @type ReadOnlyGroupId: String

        attr_accessor :SecurityGroupIdSet, :DBInstanceId, :ReadOnlyGroupId

        def initialize(securitygroupidset=nil, dbinstanceid=nil, readonlygroupid=nil)
          @SecurityGroupIdSet = securitygroupidset
          @DBInstanceId = dbinstanceid
          @ReadOnlyGroupId = readonlygroupid
        end

        def deserialize(params)
          @SecurityGroupIdSet = params['SecurityGroupIdSet']
          @DBInstanceId = params['DBInstanceId']
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
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

      # ModifyDBInstanceSpec请求参数结构体
      class ModifyDBInstanceSpecRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如：postgres-6bwgamo3。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param Memory: 修改后的实例内存大小，单位GiB。
        # @type Memory: Integer
        # @param Storage: 修改后的实例磁盘大小，单位GiB。该参数的设置步长为10。
        # @type Storage: Integer
        # @param AutoVoucher: 是否自动使用代金券：
        # <li>0：否</li>
        # <li>1：是</li>
        # 默认值：0
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID列表，目前仅支持指定一张代金券。
        # @type VoucherIds: Array
        # @param ActivityId: 活动ID。
        # @type ActivityId: Integer
        # @param SwitchTag: 指定实例配置完成变更后的切换时间。
        # <li>0：立即切换 </li>
        # <li>1：指定时间切换</li>
        # <li>2：维护时间窗口内</li>切换
        # 默认值：0
        # @type SwitchTag: Integer
        # @param SwitchStartTime: 切换开始时间，时间格式：HH:MM:SS，例如：01:00:00。当SwitchTag为0或2时，该参数失效。
        # @type SwitchStartTime: String
        # @param SwitchEndTime: 切换截止时间，时间格式：HH:MM:SS，例如：01:30:00。当SwitchTag为0或2时，该参数失效。
        # @type SwitchEndTime: String
        # @param Cpu: 修改后的实例CPU大小，单位Core。不填写该参数时，默认根据Memory确定Cpu大小。如Memory为2，支持的规格有1核2GiB，则不传入Cpu时，Cpu默认为1。
        # @type Cpu: Integer

        attr_accessor :DBInstanceId, :Memory, :Storage, :AutoVoucher, :VoucherIds, :ActivityId, :SwitchTag, :SwitchStartTime, :SwitchEndTime, :Cpu

        def initialize(dbinstanceid=nil, memory=nil, storage=nil, autovoucher=nil, voucherids=nil, activityid=nil, switchtag=nil, switchstarttime=nil, switchendtime=nil, cpu=nil)
          @DBInstanceId = dbinstanceid
          @Memory = memory
          @Storage = storage
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @ActivityId = activityid
          @SwitchTag = switchtag
          @SwitchStartTime = switchstarttime
          @SwitchEndTime = switchendtime
          @Cpu = cpu
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @ActivityId = params['ActivityId']
          @SwitchTag = params['SwitchTag']
          @SwitchStartTime = params['SwitchStartTime']
          @SwitchEndTime = params['SwitchEndTime']
          @Cpu = params['Cpu']
        end
      end

      # ModifyDBInstanceSpec返回参数结构体
      class ModifyDBInstanceSpecResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单号。
        # @type DealName: String
        # @param BillId: 冻结流水号。
        # @type BillId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :BillId, :RequestId

        def initialize(dealname=nil, billid=nil, requestid=nil)
          @DealName = dealname
          @BillId = billid
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @BillId = params['BillId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDBInstancesProject请求参数结构体
      class ModifyDBInstancesProjectRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceIdSet: 实例ID集合。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取。支持同时操作多个实例。
        # @type DBInstanceIdSet: Array
        # @param ProjectId: 所属新项目的ID。可通过[DescribeProjects](https://cloud.tencent.com/document/api/651/78725)获取
        # @type ProjectId: String

        attr_accessor :DBInstanceIdSet, :ProjectId

        def initialize(dbinstanceidset=nil, projectid=nil)
          @DBInstanceIdSet = dbinstanceidset
          @ProjectId = projectid
        end

        def deserialize(params)
          @DBInstanceIdSet = params['DBInstanceIdSet']
          @ProjectId = params['ProjectId']
        end
      end

      # ModifyDBInstancesProject返回参数结构体
      class ModifyDBInstancesProjectResponse < TencentCloud::Common::AbstractModel
        # @param Count: 转移项目成功的实例个数
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :RequestId

        def initialize(count=nil, requestid=nil)
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDatabaseOwner请求参数结构体
      class ModifyDatabaseOwnerRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param DatabaseName: 数据库名称。可通过[DescribeDatabases](https://cloud.tencent.com/document/api/409/43353)接口获取
        # @type DatabaseName: String
        # @param DatabaseOwner: 数据库新所有者。可通过[DescribeAccounts](https://cloud.tencent.com/document/api/409/18109)接口获取
        # @type DatabaseOwner: String

        attr_accessor :DBInstanceId, :DatabaseName, :DatabaseOwner

        def initialize(dbinstanceid=nil, databasename=nil, databaseowner=nil)
          @DBInstanceId = dbinstanceid
          @DatabaseName = databasename
          @DatabaseOwner = databaseowner
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @DatabaseName = params['DatabaseName']
          @DatabaseOwner = params['DatabaseOwner']
        end
      end

      # ModifyDatabaseOwner返回参数结构体
      class ModifyDatabaseOwnerResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMaintainTimeWindow请求参数结构体
      class ModifyMaintainTimeWindowRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param MaintainStartTime: 维护开始时间。时区为东八区（UTC+8）
        # @type MaintainStartTime: String
        # @param MaintainDuration: 维护持续时间。单位：小时。取值范围：[1,4]
        # @type MaintainDuration: Integer
        # @param MaintainWeekDays: 维护周期
        # @type MaintainWeekDays: Array

        attr_accessor :DBInstanceId, :MaintainStartTime, :MaintainDuration, :MaintainWeekDays

        def initialize(dbinstanceid=nil, maintainstarttime=nil, maintainduration=nil, maintainweekdays=nil)
          @DBInstanceId = dbinstanceid
          @MaintainStartTime = maintainstarttime
          @MaintainDuration = maintainduration
          @MaintainWeekDays = maintainweekdays
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @MaintainStartTime = params['MaintainStartTime']
          @MaintainDuration = params['MaintainDuration']
          @MaintainWeekDays = params['MaintainWeekDays']
        end
      end

      # ModifyMaintainTimeWindow返回参数结构体
      class ModifyMaintainTimeWindowResponse < TencentCloud::Common::AbstractModel
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

      # ModifyParameterTemplate请求参数结构体
      class ModifyParameterTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板ID，用于唯一确认参数模板，不可修改。可通过[DescribeParameterTemplates](https://cloud.tencent.com/document/api/409/84067)接口获取
        # @type TemplateId: String
        # @param TemplateName: 参数模板名称，长度为1～60个字符，仅支持数字,英文大小写字母、中文以及特殊字符_-./()（）[]+=：:@  注：若该字段为空    ，则保持原参数模板名称
        # @type TemplateName: String
        # @param TemplateDescription: 参数模板描述，长度为0～60个字符，仅支持数字,英文大小写字母、中文以及特殊字符_-./()（）[]+=：:@  注：若不传入该参数，则保持原参数模板描述
        # @type TemplateDescription: String
        # @param ModifyParamEntrySet: 需要修改或添加的参数集合，注：同一参数不能同时出现在修改添加集合和删除集合中
        # @type ModifyParamEntrySet: Array
        # @param DeleteParamSet: 需要从模板中删除的参数集合，注：同一参数不能同时出现在修改添加集合和删除集合中
        # @type DeleteParamSet: Array

        attr_accessor :TemplateId, :TemplateName, :TemplateDescription, :ModifyParamEntrySet, :DeleteParamSet

        def initialize(templateid=nil, templatename=nil, templatedescription=nil, modifyparamentryset=nil, deleteparamset=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @TemplateDescription = templatedescription
          @ModifyParamEntrySet = modifyparamentryset
          @DeleteParamSet = deleteparamset
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @TemplateDescription = params['TemplateDescription']
          unless params['ModifyParamEntrySet'].nil?
            @ModifyParamEntrySet = []
            params['ModifyParamEntrySet'].each do |i|
              paramentry_tmp = ParamEntry.new
              paramentry_tmp.deserialize(i)
              @ModifyParamEntrySet << paramentry_tmp
            end
          end
          @DeleteParamSet = params['DeleteParamSet']
        end
      end

      # ModifyParameterTemplate返回参数结构体
      class ModifyParameterTemplateResponse < TencentCloud::Common::AbstractModel
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

      # 用于修改数据库对象的权限，其中包含了数据库对象描述的数据结构、需要修改的权限列表以及修改的类型等。
      class ModifyPrivilege < TencentCloud::Common::AbstractModel
        # @param DatabasePrivilege: 要修改的数据库对象及权限列表
        # @type DatabasePrivilege: :class:`Tencentcloud::Postgres.v20170312.models.DatabasePrivilege`
        # @param ModifyType: 修改的方式，当前仅支持grantObject、revokeObject、alterRole。grantObject代表授权、revokeObject代表收回权、alterRole代表修改账号类型。
        # @type ModifyType: String
        # @param IsCascade: 当ModifyType为revokeObject才需要此参数，参数为true时，撤销权限会级联撤销。默认为false。
        # @type IsCascade: Boolean

        attr_accessor :DatabasePrivilege, :ModifyType, :IsCascade

        def initialize(databaseprivilege=nil, modifytype=nil, iscascade=nil)
          @DatabasePrivilege = databaseprivilege
          @ModifyType = modifytype
          @IsCascade = iscascade
        end

        def deserialize(params)
          unless params['DatabasePrivilege'].nil?
            @DatabasePrivilege = DatabasePrivilege.new
            @DatabasePrivilege.deserialize(params['DatabasePrivilege'])
          end
          @ModifyType = params['ModifyType']
          @IsCascade = params['IsCascade']
        end
      end

      # ModifyReadOnlyDBInstanceWeight请求参数结构体
      class ModifyReadOnlyDBInstanceWeightRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param ReadOnlyGroupId: 只读组ID。可通过[DescribeReadOnlyGroups](https://cloud.tencent.com/document/api/409/52599)接口获取
        # @type ReadOnlyGroupId: String
        # @param Weight: 只读实例在只读组中的流量权重(1-50)
        # @type Weight: Integer

        attr_accessor :DBInstanceId, :ReadOnlyGroupId, :Weight

        def initialize(dbinstanceid=nil, readonlygroupid=nil, weight=nil)
          @DBInstanceId = dbinstanceid
          @ReadOnlyGroupId = readonlygroupid
          @Weight = weight
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          @Weight = params['Weight']
        end
      end

      # ModifyReadOnlyDBInstanceWeight返回参数结构体
      class ModifyReadOnlyDBInstanceWeightResponse < TencentCloud::Common::AbstractModel
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

      # ModifyReadOnlyGroupConfig请求参数结构体
      class ModifyReadOnlyGroupConfigRequest < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupId: 只读组ID。
        # @type ReadOnlyGroupId: String
        # @param ReadOnlyGroupName: 只读组名称。仅支持长度小于60的中文/英文/数字/"_"/"-"
        # @type ReadOnlyGroupName: String
        # @param ReplayLagEliminate: 延迟时间配置开关：0关、1开
        # @type ReplayLagEliminate: Integer
        # @param ReplayLatencyEliminate: 延迟日志大小配置开关：0关、1开
        # @type ReplayLatencyEliminate: Integer
        # @param MaxReplayLatency: 延迟日志大小阈值，单位MB。当开启延迟日志大小配置，应输入正整数
        # @type MaxReplayLatency: Integer
        # @param MaxReplayLag: 延迟时间大小阈值，单位s。当开启延迟时间配置时，应输入正整数。
        # @type MaxReplayLag: Integer
        # @param Rebalance: 自动负载均衡开关：0关、1开
        # @type Rebalance: Integer
        # @param MinDelayEliminateReserve: 延迟剔除最小保留实例数。取值范围[0,100]
        # @type MinDelayEliminateReserve: Integer

        attr_accessor :ReadOnlyGroupId, :ReadOnlyGroupName, :ReplayLagEliminate, :ReplayLatencyEliminate, :MaxReplayLatency, :MaxReplayLag, :Rebalance, :MinDelayEliminateReserve

        def initialize(readonlygroupid=nil, readonlygroupname=nil, replaylageliminate=nil, replaylatencyeliminate=nil, maxreplaylatency=nil, maxreplaylag=nil, rebalance=nil, mindelayeliminatereserve=nil)
          @ReadOnlyGroupId = readonlygroupid
          @ReadOnlyGroupName = readonlygroupname
          @ReplayLagEliminate = replaylageliminate
          @ReplayLatencyEliminate = replaylatencyeliminate
          @MaxReplayLatency = maxreplaylatency
          @MaxReplayLag = maxreplaylag
          @Rebalance = rebalance
          @MinDelayEliminateReserve = mindelayeliminatereserve
        end

        def deserialize(params)
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          @ReadOnlyGroupName = params['ReadOnlyGroupName']
          @ReplayLagEliminate = params['ReplayLagEliminate']
          @ReplayLatencyEliminate = params['ReplayLatencyEliminate']
          @MaxReplayLatency = params['MaxReplayLatency']
          @MaxReplayLag = params['MaxReplayLag']
          @Rebalance = params['Rebalance']
          @MinDelayEliminateReserve = params['MinDelayEliminateReserve']
        end
      end

      # ModifyReadOnlyGroupConfig返回参数结构体
      class ModifyReadOnlyGroupConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifySwitchTimePeriod请求参数结构体
      class ModifySwitchTimePeriodRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 处于等待切换状态中的实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param SwitchTag: 入参取值为 0 ，代表立即切换。
        # @type SwitchTag: Integer

        attr_accessor :DBInstanceId, :SwitchTag

        def initialize(dbinstanceid=nil, switchtag=nil)
          @DBInstanceId = dbinstanceid
          @SwitchTag = switchtag
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @SwitchTag = params['SwitchTag']
        end
      end

      # ModifySwitchTimePeriod返回参数结构体
      class ModifySwitchTimePeriodResponse < TencentCloud::Common::AbstractModel
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

      # 网络相关信息。（该数据结构已废弃，网络相关信息使用DBInstanceNetInfo）
      class NetworkAccess < TencentCloud::Common::AbstractModel
        # @param ResourceId: 网络资源id，实例id或RO组id
        # @type ResourceId: String
        # @param ResourceType: 资源类型，1-实例 2-RO组
        # @type ResourceType: Integer
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param Vip: IPV4地址
        # @type Vip: String
        # @param Vip6: IPV6地址
        # @type Vip6: String
        # @param Vport: 访问端口
        # @type Vport: Integer
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param VpcStatus: 网络状态，1-申请中，2-使用中，3-删除中，4-已删除
        # @type VpcStatus: Integer

        attr_accessor :ResourceId, :ResourceType, :VpcId, :Vip, :Vip6, :Vport, :SubnetId, :VpcStatus

        def initialize(resourceid=nil, resourcetype=nil, vpcid=nil, vip=nil, vip6=nil, vport=nil, subnetid=nil, vpcstatus=nil)
          @ResourceId = resourceid
          @ResourceType = resourcetype
          @VpcId = vpcid
          @Vip = vip
          @Vip6 = vip6
          @Vport = vport
          @SubnetId = subnetid
          @VpcStatus = vpcstatus
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceType = params['ResourceType']
          @VpcId = params['VpcId']
          @Vip = params['Vip']
          @Vip6 = params['Vip6']
          @Vport = params['Vport']
          @SubnetId = params['SubnetId']
          @VpcStatus = params['VpcStatus']
        end
      end

      # OpenDBExtranetAccess请求参数结构体
      class OpenDBExtranetAccessRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-hez4fh0v。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取。
        # @type DBInstanceId: String
        # @param IsIpv6: 是否开通Ipv6外网，1：是，0：否
        # 默认值：0
        # @type IsIpv6: Integer

        attr_accessor :DBInstanceId, :IsIpv6

        def initialize(dbinstanceid=nil, isipv6=nil)
          @DBInstanceId = dbinstanceid
          @IsIpv6 = isipv6
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @IsIpv6 = params['IsIpv6']
        end
      end

      # OpenDBExtranetAccess返回参数结构体
      class OpenDBExtranetAccessResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务流程ID
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

      # 批量修改参数
      class ParamEntry < TencentCloud::Common::AbstractModel
        # @param Name: 参数名
        # @type Name: String
        # @param ExpectedValue: 修改参数值。入参均以字符串形式传递，例如：小数”0.1“、整数”1000“、枚举”replica“
        # @type ExpectedValue: String

        attr_accessor :Name, :ExpectedValue

        def initialize(name=nil, expectedvalue=nil)
          @Name = name
          @ExpectedValue = expectedvalue
        end

        def deserialize(params)
          @Name = params['Name']
          @ExpectedValue = params['ExpectedValue']
        end
      end

      # 参数详情
      class ParamInfo < TencentCloud::Common::AbstractModel
        # @param ID: 参数ID
        # @type ID: Integer
        # @param Name: 参数名
        # @type Name: String
        # @param ParamValueType: 参数值类型：integer（整型）、real（浮点型）、bool（布尔型）、enum（枚举类型）、mutil_enum（枚举类型、支持多选）。
        # 当参数类型为integer（整型）、real（浮点型）时，参数的取值范围根据返回值的Max、Min确定；
        # 当参数类型为bool（布尔型）时，参数设置值取值范围是true | false；
        # 当参数类型为enum（枚举类型）、mutil_enum（多枚举类型）时，参数的取值范围由返回值中的EnumValue确定。
        # @type ParamValueType: String
        # @param Unit: 参数值 单位。参数没有单位时，该字段返回空
        # @type Unit: String
        # @param DefaultValue: 参数默认值。以字符串形式返回
        # @type DefaultValue: String
        # @param CurrentValue: 参数当前运行值。以字符串形式返回
        # @type CurrentValue: String
        # @param Max: 数值类型（integer、real）参数，取值下界
        # @type Max: Float
        # @param EnumValue: 枚举类型参数，取值范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnumValue: Array
        # @param Min: 数值类型（integer、real）参数，取值上界
        # @type Min: Float
        # @param ParamDescriptionCH: 参数中文描述
        # @type ParamDescriptionCH: String
        # @param ParamDescriptionEN: 参数英文描述
        # @type ParamDescriptionEN: String
        # @param NeedReboot: 参数修改，是否重启生效。（true为需要，false为不需要）
        # @type NeedReboot: Boolean
        # @param ClassificationCN: 参数中文分类
        # @type ClassificationCN: String
        # @param ClassificationEN: 参数英文分类
        # @type ClassificationEN: String
        # @param SpecRelated: 是否和规格相关。（true为相关，false为不想关）
        # @type SpecRelated: Boolean
        # @param Advanced: 是否为重点参数。（true为重点参数，修改是需要重点关注，可能会影响实例性能）
        # @type Advanced: Boolean
        # @param LastModifyTime: 参数最后一次修改时间
        # @type LastModifyTime: String
        # @param StandbyRelated: 参数主备制约，0：无主备制约关系，1:备机参数值需比主机大，2:主机参数值需比备机大
        # @type StandbyRelated: Integer
        # @param VersionRelationSet: 参数版本关联信息，内容为相应内核版本下的参数详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionRelationSet: Array
        # @param SpecRelationSet: 参数规格关联信息，内容为相应规格下的参数详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecRelationSet: Array

        attr_accessor :ID, :Name, :ParamValueType, :Unit, :DefaultValue, :CurrentValue, :Max, :EnumValue, :Min, :ParamDescriptionCH, :ParamDescriptionEN, :NeedReboot, :ClassificationCN, :ClassificationEN, :SpecRelated, :Advanced, :LastModifyTime, :StandbyRelated, :VersionRelationSet, :SpecRelationSet

        def initialize(id=nil, name=nil, paramvaluetype=nil, unit=nil, defaultvalue=nil, currentvalue=nil, max=nil, enumvalue=nil, min=nil, paramdescriptionch=nil, paramdescriptionen=nil, needreboot=nil, classificationcn=nil, classificationen=nil, specrelated=nil, advanced=nil, lastmodifytime=nil, standbyrelated=nil, versionrelationset=nil, specrelationset=nil)
          @ID = id
          @Name = name
          @ParamValueType = paramvaluetype
          @Unit = unit
          @DefaultValue = defaultvalue
          @CurrentValue = currentvalue
          @Max = max
          @EnumValue = enumvalue
          @Min = min
          @ParamDescriptionCH = paramdescriptionch
          @ParamDescriptionEN = paramdescriptionen
          @NeedReboot = needreboot
          @ClassificationCN = classificationcn
          @ClassificationEN = classificationen
          @SpecRelated = specrelated
          @Advanced = advanced
          @LastModifyTime = lastmodifytime
          @StandbyRelated = standbyrelated
          @VersionRelationSet = versionrelationset
          @SpecRelationSet = specrelationset
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @ParamValueType = params['ParamValueType']
          @Unit = params['Unit']
          @DefaultValue = params['DefaultValue']
          @CurrentValue = params['CurrentValue']
          @Max = params['Max']
          @EnumValue = params['EnumValue']
          @Min = params['Min']
          @ParamDescriptionCH = params['ParamDescriptionCH']
          @ParamDescriptionEN = params['ParamDescriptionEN']
          @NeedReboot = params['NeedReboot']
          @ClassificationCN = params['ClassificationCN']
          @ClassificationEN = params['ClassificationEN']
          @SpecRelated = params['SpecRelated']
          @Advanced = params['Advanced']
          @LastModifyTime = params['LastModifyTime']
          @StandbyRelated = params['StandbyRelated']
          unless params['VersionRelationSet'].nil?
            @VersionRelationSet = []
            params['VersionRelationSet'].each do |i|
              paramversionrelation_tmp = ParamVersionRelation.new
              paramversionrelation_tmp.deserialize(i)
              @VersionRelationSet << paramversionrelation_tmp
            end
          end
          unless params['SpecRelationSet'].nil?
            @SpecRelationSet = []
            params['SpecRelationSet'].each do |i|
              paramspecrelation_tmp = ParamSpecRelation.new
              paramspecrelation_tmp.deserialize(i)
              @SpecRelationSet << paramspecrelation_tmp
            end
          end
        end
      end

      # 各规格下的参数信息
      class ParamSpecRelation < TencentCloud::Common::AbstractModel
        # @param Name: 参数名称
        # @type Name: String
        # @param Memory: 参数信息所属规格
        # @type Memory: String
        # @param Value: 参数在该规格下的默认值
        # @type Value: String
        # @param Unit: 参数值单位。参数没有单位时，该字段返回空
        # @type Unit: String
        # @param Max: 数值类型（integer、real）参数，取值上界
        # @type Max: Float
        # @param Min: 数值类型（integer、real）参数，取值下界
        # @type Min: Float
        # @param EnumValue: 枚举类型参数，取值范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnumValue: Array

        attr_accessor :Name, :Memory, :Value, :Unit, :Max, :Min, :EnumValue

        def initialize(name=nil, memory=nil, value=nil, unit=nil, max=nil, min=nil, enumvalue=nil)
          @Name = name
          @Memory = memory
          @Value = value
          @Unit = unit
          @Max = max
          @Min = min
          @EnumValue = enumvalue
        end

        def deserialize(params)
          @Name = params['Name']
          @Memory = params['Memory']
          @Value = params['Value']
          @Unit = params['Unit']
          @Max = params['Max']
          @Min = params['Min']
          @EnumValue = params['EnumValue']
        end
      end

      # 各版本下的参数信息
      class ParamVersionRelation < TencentCloud::Common::AbstractModel
        # @param Name: 参数名称
        # @type Name: String
        # @param DBKernelVersion: 参数信息所属内核版本
        # @type DBKernelVersion: String
        # @param Value: 参数在该版本该规格下的默认值
        # @type Value: String
        # @param Unit: 参数值单位。参数没有单位时，该字段返回空
        # @type Unit: String
        # @param Max: 数值类型（integer、real）参数，取值上界
        # @type Max: Float
        # @param Min: 数值类型（integer、real）参数，取值下界
        # @type Min: Float
        # @param EnumValue: 枚举类型参数，取值范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnumValue: Array

        attr_accessor :Name, :DBKernelVersion, :Value, :Unit, :Max, :Min, :EnumValue

        def initialize(name=nil, dbkernelversion=nil, value=nil, unit=nil, max=nil, min=nil, enumvalue=nil)
          @Name = name
          @DBKernelVersion = dbkernelversion
          @Value = value
          @Unit = unit
          @Max = max
          @Min = min
          @EnumValue = enumvalue
        end

        def deserialize(params)
          @Name = params['Name']
          @DBKernelVersion = params['DBKernelVersion']
          @Value = params['Value']
          @Unit = params['Unit']
          @Max = params['Max']
          @Min = params['Min']
          @EnumValue = params['EnumValue']
        end
      end

      # 参数模板的基本信息
      class ParameterTemplate < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板ID
        # @type TemplateId: String
        # @param TemplateName: 参数模板名称
        # @type TemplateName: String
        # @param DBMajorVersion: 参数模板适用的数据库版本
        # @type DBMajorVersion: String
        # @param DBEngine: 参数模板适用的数据库引擎
        # @type DBEngine: String
        # @param TemplateDescription: 参数模板描述
        # @type TemplateDescription: String

        attr_accessor :TemplateId, :TemplateName, :DBMajorVersion, :DBEngine, :TemplateDescription

        def initialize(templateid=nil, templatename=nil, dbmajorversion=nil, dbengine=nil, templatedescription=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @DBMajorVersion = dbmajorversion
          @DBEngine = dbengine
          @TemplateDescription = templatedescription
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @DBMajorVersion = params['DBMajorVersion']
          @DBEngine = params['DBEngine']
          @TemplateDescription = params['TemplateDescription']
        end
      end

      # 订单详情
      class PgDeal < TencentCloud::Common::AbstractModel
        # @param DealName: 订单名
        # @type DealName: String
        # @param OwnerUin: 所属用户
        # @type OwnerUin: String
        # @param Count: 订单涉及多少个实例
        # @type Count: Integer
        # @param PayMode: 付费模式。1-预付费；0-后付费
        # @type PayMode: Integer
        # @param FlowId: 异步任务流程ID
        # @type FlowId: Integer
        # @param DBInstanceIdSet: 实例ID数组
        # @type DBInstanceIdSet: Array

        attr_accessor :DealName, :OwnerUin, :Count, :PayMode, :FlowId, :DBInstanceIdSet

        def initialize(dealname=nil, owneruin=nil, count=nil, paymode=nil, flowid=nil, dbinstanceidset=nil)
          @DealName = dealname
          @OwnerUin = owneruin
          @Count = count
          @PayMode = paymode
          @FlowId = flowid
          @DBInstanceIdSet = dbinstanceidset
        end

        def deserialize(params)
          @DealName = params['DealName']
          @OwnerUin = params['OwnerUin']
          @Count = params['Count']
          @PayMode = params['PayMode']
          @FlowId = params['FlowId']
          @DBInstanceIdSet = params['DBInstanceIdSet']
        end
      end

      # 安全组规则信息
      class PolicyRule < TencentCloud::Common::AbstractModel
        # @param Action: 策略，ACCEPT 或者 DROP
        # @type Action: String
        # @param CidrIp: 来源或目的 IP 或 IP 段，例如172.16.0.0/12
        # @type CidrIp: String
        # @param PortRange: 端口
        # @type PortRange: String
        # @param IpProtocol: 网络协议，支持 UDP、TCP 等
        # @type IpProtocol: String
        # @param Description: 规则描述
        # @type Description: String

        attr_accessor :Action, :CidrIp, :PortRange, :IpProtocol, :Description

        def initialize(action=nil, cidrip=nil, portrange=nil, ipprotocol=nil, description=nil)
          @Action = action
          @CidrIp = cidrip
          @PortRange = portrange
          @IpProtocol = ipprotocol
          @Description = description
        end

        def deserialize(params)
          @Action = params['Action']
          @CidrIp = params['CidrIp']
          @PortRange = params['PortRange']
          @IpProtocol = params['IpProtocol']
          @Description = params['Description']
        end
      end

      # 慢SQL查询接口返回 慢SQL列表详情
      class RawSlowQuery < TencentCloud::Common::AbstractModel
        # @param RawQuery: 慢SQL 语句
        # @type RawQuery: String
        # @param DatabaseName: 慢SQL 查询的数据库
        # @type DatabaseName: String
        # @param Duration: 慢SQL执行 耗时
        # @type Duration: Float
        # @param ClientAddr: 执行慢SQL的客户端
        # @type ClientAddr: String
        # @param UserName: 执行慢SQL的用户名
        # @type UserName: String
        # @param SessionStartTime: 慢SQL执行的开始时间
        # @type SessionStartTime: String

        attr_accessor :RawQuery, :DatabaseName, :Duration, :ClientAddr, :UserName, :SessionStartTime

        def initialize(rawquery=nil, databasename=nil, duration=nil, clientaddr=nil, username=nil, sessionstarttime=nil)
          @RawQuery = rawquery
          @DatabaseName = databasename
          @Duration = duration
          @ClientAddr = clientaddr
          @UserName = username
          @SessionStartTime = sessionstarttime
        end

        def deserialize(params)
          @RawQuery = params['RawQuery']
          @DatabaseName = params['DatabaseName']
          @Duration = params['Duration']
          @ClientAddr = params['ClientAddr']
          @UserName = params['UserName']
          @SessionStartTime = params['SessionStartTime']
        end
      end

      # 只读组信息
      class ReadOnlyGroup < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupId: 只读组标识
        # @type ReadOnlyGroupId: String
        # @param ReadOnlyGroupName: 只读组名字
        # @type ReadOnlyGroupName: String
        # @param ProjectId: 项目id
        # @type ProjectId: Integer
        # @param MasterDBInstanceId: 主实例id
        # @type MasterDBInstanceId: String
        # @param MinDelayEliminateReserve: 最小保留实例数
        # @type MinDelayEliminateReserve: Integer
        # @param MaxReplayLatency: 延迟空间大小阈值
        # @type MaxReplayLatency: Integer
        # @param ReplayLatencyEliminate: 延迟大小开关
        # @type ReplayLatencyEliminate: Integer
        # @param MaxReplayLag: 延迟时间大小阈值
        # @type MaxReplayLag: Float
        # @param ReplayLagEliminate: 延迟时间开关
        # @type ReplayLagEliminate: Integer
        # @param VpcId: 虚拟网络id
        # @type VpcId: String
        # @param SubnetId: 子网id
        # @type SubnetId: String
        # @param Region: 地域id
        # @type Region: String
        # @param Zone: 地区id
        # @type Zone: String
        # @param Status: 状态
        # @type Status: String
        # @param ReadOnlyDBInstanceList: 实例详细信息
        # @type ReadOnlyDBInstanceList: Array
        # @param Rebalance: 自动负载均衡开关
        # @type Rebalance: Integer
        # @param DBInstanceNetInfo: 网络信息
        # @type DBInstanceNetInfo: Array
        # @param NetworkAccessList: 只读组网络信息列表（此字段已废弃）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkAccessList: Array

        attr_accessor :ReadOnlyGroupId, :ReadOnlyGroupName, :ProjectId, :MasterDBInstanceId, :MinDelayEliminateReserve, :MaxReplayLatency, :ReplayLatencyEliminate, :MaxReplayLag, :ReplayLagEliminate, :VpcId, :SubnetId, :Region, :Zone, :Status, :ReadOnlyDBInstanceList, :Rebalance, :DBInstanceNetInfo, :NetworkAccessList

        def initialize(readonlygroupid=nil, readonlygroupname=nil, projectid=nil, masterdbinstanceid=nil, mindelayeliminatereserve=nil, maxreplaylatency=nil, replaylatencyeliminate=nil, maxreplaylag=nil, replaylageliminate=nil, vpcid=nil, subnetid=nil, region=nil, zone=nil, status=nil, readonlydbinstancelist=nil, rebalance=nil, dbinstancenetinfo=nil, networkaccesslist=nil)
          @ReadOnlyGroupId = readonlygroupid
          @ReadOnlyGroupName = readonlygroupname
          @ProjectId = projectid
          @MasterDBInstanceId = masterdbinstanceid
          @MinDelayEliminateReserve = mindelayeliminatereserve
          @MaxReplayLatency = maxreplaylatency
          @ReplayLatencyEliminate = replaylatencyeliminate
          @MaxReplayLag = maxreplaylag
          @ReplayLagEliminate = replaylageliminate
          @VpcId = vpcid
          @SubnetId = subnetid
          @Region = region
          @Zone = zone
          @Status = status
          @ReadOnlyDBInstanceList = readonlydbinstancelist
          @Rebalance = rebalance
          @DBInstanceNetInfo = dbinstancenetinfo
          @NetworkAccessList = networkaccesslist
        end

        def deserialize(params)
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          @ReadOnlyGroupName = params['ReadOnlyGroupName']
          @ProjectId = params['ProjectId']
          @MasterDBInstanceId = params['MasterDBInstanceId']
          @MinDelayEliminateReserve = params['MinDelayEliminateReserve']
          @MaxReplayLatency = params['MaxReplayLatency']
          @ReplayLatencyEliminate = params['ReplayLatencyEliminate']
          @MaxReplayLag = params['MaxReplayLag']
          @ReplayLagEliminate = params['ReplayLagEliminate']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Region = params['Region']
          @Zone = params['Zone']
          @Status = params['Status']
          unless params['ReadOnlyDBInstanceList'].nil?
            @ReadOnlyDBInstanceList = []
            params['ReadOnlyDBInstanceList'].each do |i|
              dbinstance_tmp = DBInstance.new
              dbinstance_tmp.deserialize(i)
              @ReadOnlyDBInstanceList << dbinstance_tmp
            end
          end
          @Rebalance = params['Rebalance']
          unless params['DBInstanceNetInfo'].nil?
            @DBInstanceNetInfo = []
            params['DBInstanceNetInfo'].each do |i|
              dbinstancenetinfo_tmp = DBInstanceNetInfo.new
              dbinstancenetinfo_tmp.deserialize(i)
              @DBInstanceNetInfo << dbinstancenetinfo_tmp
            end
          end
          unless params['NetworkAccessList'].nil?
            @NetworkAccessList = []
            params['NetworkAccessList'].each do |i|
              networkaccess_tmp = NetworkAccess.new
              networkaccess_tmp.deserialize(i)
              @NetworkAccessList << networkaccess_tmp
            end
          end
        end
      end

      # RebalanceReadOnlyGroup请求参数结构体
      class RebalanceReadOnlyGroupRequest < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupId: 只读组ID。可通过[DescribeReadOnlyGroups](https://cloud.tencent.com/document/api/409/52599)接口获取
        # @type ReadOnlyGroupId: String

        attr_accessor :ReadOnlyGroupId

        def initialize(readonlygroupid=nil)
          @ReadOnlyGroupId = readonlygroupid
        end

        def deserialize(params)
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
        end
      end

      # RebalanceReadOnlyGroup返回参数结构体
      class RebalanceReadOnlyGroupResponse < TencentCloud::Common::AbstractModel
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

      # 描述地域的编码和状态等信息
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: 该地域对应的英文名称
        # @type Region: String
        # @param RegionName: 该地域对应的中文名称
        # @type RegionName: String
        # @param RegionId: 该地域对应的数字编号
        # @type RegionId: Integer
        # @param RegionState: 可用状态，UNAVAILABLE表示不可用，AVAILABLE表示可用
        # @type RegionState: String
        # @param SupportInternational: 该地域是否支持国际站售卖，0：不支持，1：支持
        # @type SupportInternational: Integer

        attr_accessor :Region, :RegionName, :RegionId, :RegionState, :SupportInternational

        def initialize(region=nil, regionname=nil, regionid=nil, regionstate=nil, supportinternational=nil)
          @Region = region
          @RegionName = regionname
          @RegionId = regionid
          @RegionState = regionstate
          @SupportInternational = supportinternational
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionId = params['RegionId']
          @RegionState = params['RegionState']
          @SupportInternational = params['SupportInternational']
        end
      end

      # RemoveDBInstanceFromReadOnlyGroup请求参数结构体
      class RemoveDBInstanceFromReadOnlyGroupRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param ReadOnlyGroupId: 只读组ID。可通过[DescribeReadOnlyGroups](https://cloud.tencent.com/document/api/409/52599)接口获取
        # @type ReadOnlyGroupId: String

        attr_accessor :DBInstanceId, :ReadOnlyGroupId

        def initialize(dbinstanceid=nil, readonlygroupid=nil)
          @DBInstanceId = dbinstanceid
          @ReadOnlyGroupId = readonlygroupid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
        end
      end

      # RemoveDBInstanceFromReadOnlyGroup返回参数结构体
      class RemoveDBInstanceFromReadOnlyGroupResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
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

      # RenewInstance请求参数结构体
      class RenewInstanceRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-6fego161。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取。仅支持预付费（包年包月）实例。
        # @type DBInstanceId: String
        # @param Period: 购买时长，单位：月。
        # <li>预付费：支持1,2,3,4,5,6,7,8,9,10,11,12,24,36</li>
        # @type Period: Integer
        # @param AutoVoucher: 是否自动使用代金券：
        # <li>0：否</li>
        # <li>1：是</li>
        # 默认值：0
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID列表，目前仅支持指定一张代金券
        # @type VoucherIds: Array

        attr_accessor :DBInstanceId, :Period, :AutoVoucher, :VoucherIds

        def initialize(dbinstanceid=nil, period=nil, autovoucher=nil, voucherids=nil)
          @DBInstanceId = dbinstanceid
          @Period = period
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @Period = params['Period']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
        end
      end

      # RenewInstance返回参数结构体
      class RenewInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单名
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :RequestId

        def initialize(dealname=nil, requestid=nil)
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # ResetAccountPassword请求参数结构体
      class ResetAccountPasswordRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-4wdeb0zv。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param UserName: 实例账户名。可通过[DescribeAccounts](https://cloud.tencent.com/document/api/409/18109)接口获取
        # @type UserName: String
        # @param Password: UserName账户对应的新密码。
        # 密码设置规则如下：
        # - 长度8~ 32位，推荐使用12位以上的密码
        # - 不能以" / "开头
        # - 必须包含以下四项:
        #   1.    小写字母a ~ z
        #   2.    大写字母 A ～ Z
        #   3.    数字 0 ～ 9
        #   4.    特殊字符 ()`~!@#$%^&*-+=_|{}[]:<>,.?/
        # @type Password: String

        attr_accessor :DBInstanceId, :UserName, :Password

        def initialize(dbinstanceid=nil, username=nil, password=nil)
          @DBInstanceId = dbinstanceid
          @UserName = username
          @Password = password
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @UserName = params['UserName']
          @Password = params['Password']
        end
      end

      # ResetAccountPassword返回参数结构体
      class ResetAccountPasswordResponse < TencentCloud::Common::AbstractModel
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

      # RestartDBInstance请求参数结构体
      class RestartDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-6r233v55。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String

        attr_accessor :DBInstanceId

        def initialize(dbinstanceid=nil)
          @DBInstanceId = dbinstanceid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
        end
      end

      # RestartDBInstance返回参数结构体
      class RestartDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程ID
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

      # RestoreDBInstanceObjects请求参数结构体
      class RestoreDBInstanceObjectsRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param RestoreObjects: 需要恢复的对象列表。假设需要恢复的对象名为user，则恢复后的名称为user_bak_${LinuxTime}。${LinuxTime}无法指定，由系统根据任务发起的linux时间设定。
        # @type RestoreObjects: Array
        # @param BackupSetId: 恢复所用备份集。BackupSetId与RestoreTargetTime有且只能传一个。可通过[DescribeBaseBackups](https://cloud.tencent.com/document/api/409/89022)接口获取
        # @type BackupSetId: String
        # @param RestoreTargetTime: 恢复目标时间，北京时间。BackupSetId与RestoreTargetTime有且只能传一个。
        # @type RestoreTargetTime: String

        attr_accessor :DBInstanceId, :RestoreObjects, :BackupSetId, :RestoreTargetTime

        def initialize(dbinstanceid=nil, restoreobjects=nil, backupsetid=nil, restoretargettime=nil)
          @DBInstanceId = dbinstanceid
          @RestoreObjects = restoreobjects
          @BackupSetId = backupsetid
          @RestoreTargetTime = restoretargettime
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @RestoreObjects = params['RestoreObjects']
          @BackupSetId = params['BackupSetId']
          @RestoreTargetTime = params['RestoreTargetTime']
        end
      end

      # RestoreDBInstanceObjects返回参数结构体
      class RestoreDBInstanceObjectsResponse < TencentCloud::Common::AbstractModel
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

      # 安全组信息
      class SecurityGroup < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Inbound: 入站规则
        # @type Inbound: Array
        # @param Outbound: 出站规则
        # @type Outbound: Array
        # @param SecurityGroupId: 安全组ID
        # @type SecurityGroupId: String
        # @param SecurityGroupName: 安全组名称
        # @type SecurityGroupName: String
        # @param SecurityGroupDescription: 安全组备注
        # @type SecurityGroupDescription: String

        attr_accessor :ProjectId, :CreateTime, :Inbound, :Outbound, :SecurityGroupId, :SecurityGroupName, :SecurityGroupDescription

        def initialize(projectid=nil, createtime=nil, inbound=nil, outbound=nil, securitygroupid=nil, securitygroupname=nil, securitygroupdescription=nil)
          @ProjectId = projectid
          @CreateTime = createtime
          @Inbound = inbound
          @Outbound = outbound
          @SecurityGroupId = securitygroupid
          @SecurityGroupName = securitygroupname
          @SecurityGroupDescription = securitygroupdescription
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CreateTime = params['CreateTime']
          unless params['Inbound'].nil?
            @Inbound = []
            params['Inbound'].each do |i|
              policyrule_tmp = PolicyRule.new
              policyrule_tmp.deserialize(i)
              @Inbound << policyrule_tmp
            end
          end
          unless params['Outbound'].nil?
            @Outbound = []
            params['Outbound'].each do |i|
              policyrule_tmp = PolicyRule.new
              policyrule_tmp.deserialize(i)
              @Outbound << policyrule_tmp
            end
          end
          @SecurityGroupId = params['SecurityGroupId']
          @SecurityGroupName = params['SecurityGroupName']
          @SecurityGroupDescription = params['SecurityGroupDescription']
        end
      end

      # SetAutoRenewFlag请求参数结构体
      class SetAutoRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceIdSet: 实例ID集合。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取。仅支持预付费（包年包月）的实例。支持同时操作多个实例。
        # @type DBInstanceIdSet: Array
        # @param AutoRenewFlag: 续费标记。0-正常续费；1-自动续费；2-到期不续费
        # @type AutoRenewFlag: Integer

        attr_accessor :DBInstanceIdSet, :AutoRenewFlag

        def initialize(dbinstanceidset=nil, autorenewflag=nil)
          @DBInstanceIdSet = dbinstanceidset
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @DBInstanceIdSet = params['DBInstanceIdSet']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # SetAutoRenewFlag返回参数结构体
      class SetAutoRenewFlagResponse < TencentCloud::Common::AbstractModel
        # @param Count: 设置成功的实例个数
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :RequestId

        def initialize(count=nil, requestid=nil)
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # 描述某个地域下某个可用区的可售卖规格详细信息。
      class SpecInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域英文编码，对应RegionSet的Region字段
        # @type Region: String
        # @param Zone: 区域英文编码，对应ZoneSet的Zone字段
        # @type Zone: String
        # @param SpecItemInfoList: 规格详细信息列表
        # @type SpecItemInfoList: Array
        # @param SupportKMSRegions: 支持KMS的地域
        # @type SupportKMSRegions: Array

        attr_accessor :Region, :Zone, :SpecItemInfoList, :SupportKMSRegions

        def initialize(region=nil, zone=nil, speciteminfolist=nil, supportkmsregions=nil)
          @Region = region
          @Zone = zone
          @SpecItemInfoList = speciteminfolist
          @SupportKMSRegions = supportkmsregions
        end

        def deserialize(params)
          @Region = params['Region']
          @Zone = params['Zone']
          unless params['SpecItemInfoList'].nil?
            @SpecItemInfoList = []
            params['SpecItemInfoList'].each do |i|
              speciteminfo_tmp = SpecItemInfo.new
              speciteminfo_tmp.deserialize(i)
              @SpecItemInfoList << speciteminfo_tmp
            end
          end
          @SupportKMSRegions = params['SupportKMSRegions']
        end
      end

      # 描述一种规格的信息
      class SpecItemInfo < TencentCloud::Common::AbstractModel
        # @param SpecCode: 规格ID
        # @type SpecCode: String
        # @param Version: PostgreSQL的版本编号
        # @type Version: String
        # @param VersionName: 内核编号对应的完整版本名称
        # @type VersionName: String
        # @param Cpu: CPU核数
        # @type Cpu: Integer
        # @param Memory: 内存大小，单位：MB
        # @type Memory: Integer
        # @param MaxStorage: 该规格所支持最大存储容量，单位：GB
        # @type MaxStorage: Integer
        # @param MinStorage: 该规格所支持最小存储容量，单位：GB
        # @type MinStorage: Integer
        # @param Qps: 该规格的预估QPS
        # @type Qps: Integer
        # @param Pid: 【该字段废弃】
        # @type Pid: Integer
        # @param Type: 机器类型
        # @type Type: String
        # @param MajorVersion: PostgreSQL的主要版本编号
        # @type MajorVersion: String
        # @param KernelVersion: PostgreSQL的内核版本编号
        # @type KernelVersion: String
        # @param IsSupportTDE: 是否支持TDE数据加密功能，0-不支持，1-支持
        # @type IsSupportTDE: Integer

        attr_accessor :SpecCode, :Version, :VersionName, :Cpu, :Memory, :MaxStorage, :MinStorage, :Qps, :Pid, :Type, :MajorVersion, :KernelVersion, :IsSupportTDE

        def initialize(speccode=nil, version=nil, versionname=nil, cpu=nil, memory=nil, maxstorage=nil, minstorage=nil, qps=nil, pid=nil, type=nil, majorversion=nil, kernelversion=nil, issupporttde=nil)
          @SpecCode = speccode
          @Version = version
          @VersionName = versionname
          @Cpu = cpu
          @Memory = memory
          @MaxStorage = maxstorage
          @MinStorage = minstorage
          @Qps = qps
          @Pid = pid
          @Type = type
          @MajorVersion = majorversion
          @KernelVersion = kernelversion
          @IsSupportTDE = issupporttde
        end

        def deserialize(params)
          @SpecCode = params['SpecCode']
          @Version = params['Version']
          @VersionName = params['VersionName']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @MaxStorage = params['MaxStorage']
          @MinStorage = params['MinStorage']
          @Qps = params['Qps']
          @Pid = params['Pid']
          @Type = params['Type']
          @MajorVersion = params['MajorVersion']
          @KernelVersion = params['KernelVersion']
          @IsSupportTDE = params['IsSupportTDE']
        end
      end

      # SwitchDBInstancePrimary请求参数结构体
      class SwitchDBInstancePrimaryRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param Force: 是否强制切换。强制切换时只要备节点可访问，无论主备延迟多大都会发起切换。只有SwitchTag为0时，才可使用立即切换。
        # <li>默认：false</li>
        # @type Force: Boolean
        # @param SwitchTag: 指定实例配置完成变更后的切换时间。
        # <li>0：立即切换 </li>
        # <li>1：指定时间切换</li>
        # <li>2：维护时间窗口内切换</li>
        # 默认值：0
        # @type SwitchTag: Integer
        # @param SwitchStartTime: 切换开始时间，时间格式：HH:MM:SS，例如：01:00:00。当SwitchTag为0或2时，该参数失效。
        # @type SwitchStartTime: String
        # @param SwitchEndTime: 切换截止时间，时间格式：HH:MM:SS，例如：01:30:00。当SwitchTag为0或2时，该参数失效。SwitchStartTime和SwitchEndTime时间窗口不能小于30分钟。
        # @type SwitchEndTime: String

        attr_accessor :DBInstanceId, :Force, :SwitchTag, :SwitchStartTime, :SwitchEndTime

        def initialize(dbinstanceid=nil, force=nil, switchtag=nil, switchstarttime=nil, switchendtime=nil)
          @DBInstanceId = dbinstanceid
          @Force = force
          @SwitchTag = switchtag
          @SwitchStartTime = switchstarttime
          @SwitchEndTime = switchendtime
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @Force = params['Force']
          @SwitchTag = params['SwitchTag']
          @SwitchStartTime = params['SwitchStartTime']
          @SwitchEndTime = params['SwitchEndTime']
        end
      end

      # SwitchDBInstancePrimary返回参数结构体
      class SwitchDBInstancePrimaryResponse < TencentCloud::Common::AbstractModel
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

      # 实例绑定的标签信息，包含标签键TagKey和标签值TagValue
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
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

      # 任务的详情信息
      class TaskDetail < TencentCloud::Common::AbstractModel
        # @param CurrentStep: 当前执行的子任务步骤名称。
        # @type CurrentStep: String
        # @param AllSteps: 当前任务所拥有的子步骤描述。
        # @type AllSteps: String
        # @param Input: 任务的输入参数。
        # @type Input: String
        # @param Output: 任务的输出参数。
        # @type Output: String
        # @param SwitchTag: 指定实例配置完成变更后的切换时间，默认值：0
        # 0:   此任务不需要切换
        # 1：立即切换
        # 2：指定时间切换
        # 3：维护时间窗口内切换。
        # @type SwitchTag: Integer
        # @param SwitchTime: 指定的切换时间。
        # @type SwitchTime: String
        # @param Message: 任务的提示信息。
        # @type Message: String

        attr_accessor :CurrentStep, :AllSteps, :Input, :Output, :SwitchTag, :SwitchTime, :Message

        def initialize(currentstep=nil, allsteps=nil, input=nil, output=nil, switchtag=nil, switchtime=nil, message=nil)
          @CurrentStep = currentstep
          @AllSteps = allsteps
          @Input = input
          @Output = output
          @SwitchTag = switchtag
          @SwitchTime = switchtime
          @Message = message
        end

        def deserialize(params)
          @CurrentStep = params['CurrentStep']
          @AllSteps = params['AllSteps']
          @Input = params['Input']
          @Output = params['Output']
          @SwitchTag = params['SwitchTag']
          @SwitchTime = params['SwitchTime']
          @Message = params['Message']
        end
      end

      # 任务列表信息
      class TaskSet < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。
        # @type TaskId: Integer
        # @param TaskType: 任务的类型。
        # @type TaskType: String
        # @param DBInstanceId: 任务实例的实例ID。
        # @type DBInstanceId: String
        # @param StartTime: 任务的开始时间。
        # @type StartTime: String
        # @param EndTime: 任务的结束时间。
        # @type EndTime: String
        # @param Status: 任务的运行状态，包括Running,Success,WaitSwitch,Fail,Pause。
        # @type Status: String
        # @param Progress: 任务的执行进度，取值范围0-100。
        # @type Progress: Integer
        # @param TaskDetail: 任务的详情信息
        # @type TaskDetail: :class:`Tencentcloud::Postgres.v20170312.models.TaskDetail`

        attr_accessor :TaskId, :TaskType, :DBInstanceId, :StartTime, :EndTime, :Status, :Progress, :TaskDetail

        def initialize(taskid=nil, tasktype=nil, dbinstanceid=nil, starttime=nil, endtime=nil, status=nil, progress=nil, taskdetail=nil)
          @TaskId = taskid
          @TaskType = tasktype
          @DBInstanceId = dbinstanceid
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @Progress = progress
          @TaskDetail = taskdetail
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskType = params['TaskType']
          @DBInstanceId = params['DBInstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @Progress = params['Progress']
          unless params['TaskDetail'].nil?
            @TaskDetail = TaskDetail.new
            @TaskDetail.deserialize(params['TaskDetail'])
          end
        end
      end

      # UnlockAccount请求参数结构体
      class UnlockAccountRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。
        # @type DBInstanceId: String
        # @param UserName: 账号名称。
        # @type UserName: String

        attr_accessor :DBInstanceId, :UserName

        def initialize(dbinstanceid=nil, username=nil)
          @DBInstanceId = dbinstanceid
          @UserName = username
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @UserName = params['UserName']
        end
      end

      # UnlockAccount返回参数结构体
      class UnlockAccountResponse < TencentCloud::Common::AbstractModel
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

      # UpgradeDBInstanceKernelVersion请求参数结构体
      class UpgradeDBInstanceKernelVersionRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param TargetDBKernelVersion: 升级的目标内核版本号。可以通过接口[DescribeDBVersions](https://cloud.tencent.com/document/api/409/89018)的返回字段AvailableUpgradeTarget获取。
        # @type TargetDBKernelVersion: String
        # @param SwitchTag: 指定实例升级内核版本号完成后的切换时间。可选值:
        # <li>0：立即切换</li>
        # <li>1：指定时间切换</li>
        # <li>2：维护时间窗口内切换</li>
        # 默认值：0
        # @type SwitchTag: Integer
        # @param SwitchStartTime: 切换开始时间，时间格式：HH:MM:SS，例如：01:00:00。当SwitchTag为0或2时，该参数失效。
        # @type SwitchStartTime: String
        # @param SwitchEndTime: 切换截止时间，时间格式：HH:MM:SS，例如：01:30:00。当SwitchTag为0或2时，该参数失效。SwitchStartTime和SwitchEndTime时间窗口不能小于30分钟。
        # @type SwitchEndTime: String
        # @param DryRun: 是否对本次升级实例内核版本号操作执行预检查。
        # <li>true：执行预检查操作，不升级内核版本号。检查项目包含请求参数、内核版本号兼容性、实例参数等。</li>
        # <li>false：发送正常请求（默认值），通过检查后直接升级内核版本号。</li>
        # 默认值：false
        # @type DryRun: Boolean

        attr_accessor :DBInstanceId, :TargetDBKernelVersion, :SwitchTag, :SwitchStartTime, :SwitchEndTime, :DryRun

        def initialize(dbinstanceid=nil, targetdbkernelversion=nil, switchtag=nil, switchstarttime=nil, switchendtime=nil, dryrun=nil)
          @DBInstanceId = dbinstanceid
          @TargetDBKernelVersion = targetdbkernelversion
          @SwitchTag = switchtag
          @SwitchStartTime = switchstarttime
          @SwitchEndTime = switchendtime
          @DryRun = dryrun
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @TargetDBKernelVersion = params['TargetDBKernelVersion']
          @SwitchTag = params['SwitchTag']
          @SwitchStartTime = params['SwitchStartTime']
          @SwitchEndTime = params['SwitchEndTime']
          @DryRun = params['DryRun']
        end
      end

      # UpgradeDBInstanceKernelVersion返回参数结构体
      class UpgradeDBInstanceKernelVersionResponse < TencentCloud::Common::AbstractModel
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

      # UpgradeDBInstanceMajorVersion请求参数结构体
      class UpgradeDBInstanceMajorVersionRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。可通过[DescribeDBInstances](https://cloud.tencent.com/document/api/409/16773)接口获取
        # @type DBInstanceId: String
        # @param TargetDBKernelVersion: 目标内核版本号，可以通过API [DescribeDBVersions](https://cloud.tencent.com/document/product/409/89018)获取可以升级的目标内核版本号。
        # @type TargetDBKernelVersion: String
        # @param UpgradeCheck: 是否为校验模式，若UpgradeCheck为True，表示仅进行内核版本兼容性检查，不会进行实质性的升级操作，对原实例无影响。检查结果可以通过升级日志查看。
        # @type UpgradeCheck: Boolean
        # @param BackupBeforeUpgrade: 升级前备份选项。True，表示升级前需要创建全量备份，False，表示升级前不需要创建全量备份。当实例已有备份集可以恢复到升级前的状态时，可选择False，否则需要指定为True。UpgradeCheck为True时，此参数无效。
        # @type BackupBeforeUpgrade: Boolean
        # @param StatisticsRefreshOption: 统计信息收集选项，对主例运行 ANALYZE 以在升级后更新系统统计信息。可选值包括，
        # 0：不需要收集统计信息；
        # 1：实例恢复写之前收集统计信息；
        # 3：实例恢复写之后收集统计信息。
        # UpgradeCheck为True时，此参数无效。
        # @type StatisticsRefreshOption: Integer
        # @param ExtensionUpgradeOption: 插件升级选项，pg_upgrade不会升级任何插件，需要在升级完成后在创建过插件的库上执行"ALTER EXTENSION UPDATE"。发起升级实例大版本时可以指定在实例恢复写前/后是否需要升级任务自动升级插件版本。可选值包括：
        # 0：不需要自动升级插件；
        # 1：恢复写之前升级插件；
        # 2：恢复写之后升级插件。
        # UpgradeCheck为True时，此参数无效。
        # @type ExtensionUpgradeOption: Integer
        # @param UpgradeTimeOption: 升级时间选项，升级过程中会有一段时间实例只读，并会有一次秒级闪断，发起升级时需要选择这段影响的时间窗。可选值包括：
        # 0：自动执行，不需要指定时间窗；
        # 1：指定本次升级任务的时间窗，通过参数UpgradeTimeBegin和UpgradeTimeEnd设置；
        # 2：在实例运维时间窗内执行。
        # UpgradeCheck为True时，此参数无效。
        # @type UpgradeTimeOption: Integer
        # @param UpgradeTimeBegin: 升级时间窗开始时间，时间格式：HH:MM:SS，例如：01:00:00。当UpgradeTimeOption为1时，该参数有效。
        # UpgradeCheck为True时，此参数无效。
        # @type UpgradeTimeBegin: String
        # @param UpgradeTimeEnd: 升级时间窗截止时间，时间格式：HH:MM:SS，例如：02:00:00。当UpgradeTimeOption为1时，该参数有效。
        # UpgradeCheck为True时，此参数无效。
        # @type UpgradeTimeEnd: String

        attr_accessor :DBInstanceId, :TargetDBKernelVersion, :UpgradeCheck, :BackupBeforeUpgrade, :StatisticsRefreshOption, :ExtensionUpgradeOption, :UpgradeTimeOption, :UpgradeTimeBegin, :UpgradeTimeEnd

        def initialize(dbinstanceid=nil, targetdbkernelversion=nil, upgradecheck=nil, backupbeforeupgrade=nil, statisticsrefreshoption=nil, extensionupgradeoption=nil, upgradetimeoption=nil, upgradetimebegin=nil, upgradetimeend=nil)
          @DBInstanceId = dbinstanceid
          @TargetDBKernelVersion = targetdbkernelversion
          @UpgradeCheck = upgradecheck
          @BackupBeforeUpgrade = backupbeforeupgrade
          @StatisticsRefreshOption = statisticsrefreshoption
          @ExtensionUpgradeOption = extensionupgradeoption
          @UpgradeTimeOption = upgradetimeoption
          @UpgradeTimeBegin = upgradetimebegin
          @UpgradeTimeEnd = upgradetimeend
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @TargetDBKernelVersion = params['TargetDBKernelVersion']
          @UpgradeCheck = params['UpgradeCheck']
          @BackupBeforeUpgrade = params['BackupBeforeUpgrade']
          @StatisticsRefreshOption = params['StatisticsRefreshOption']
          @ExtensionUpgradeOption = params['ExtensionUpgradeOption']
          @UpgradeTimeOption = params['UpgradeTimeOption']
          @UpgradeTimeBegin = params['UpgradeTimeBegin']
          @UpgradeTimeEnd = params['UpgradeTimeEnd']
        end
      end

      # UpgradeDBInstanceMajorVersion返回参数结构体
      class UpgradeDBInstanceMajorVersionResponse < TencentCloud::Common::AbstractModel
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

      # 数据库版本号信息
      class Version < TencentCloud::Common::AbstractModel
        # @param DBEngine: 数据库引擎，支持：
        # 1、postgresql（云数据库PostgreSQL）；
        # 2、mssql_compatible（MSSQL兼容-云数据库PostgreSQL）；
        # @type DBEngine: String
        # @param DBVersion: 数据库版本，例如：12.4
        # @type DBVersion: String
        # @param DBMajorVersion: 数据库主要版本，例如：12
        # @type DBMajorVersion: String
        # @param DBKernelVersion: 数据库内核版本，例如：v12.4_r1.3
        # @type DBKernelVersion: String
        # @param SupportedFeatureNames: 数据库内核支持的特性列表。例如，
        # TDE：支持数据加密。
        # @type SupportedFeatureNames: Array
        # @param Status: 数据库版本状态，包括：
        # AVAILABLE：可用；
        # UPGRADE_ONLY：不可创建，此版本仅可升级至高版本；
        # DEPRECATED：已弃用。
        # @type Status: String
        # @param AvailableUpgradeTarget: 该数据库版本（DBKernelVersion）可以升级到的版本号列表。其中包含可升级的小版本号和可升级的大版本号（完整内核版本格式示例：v15.1_v1.6）。
        # @type AvailableUpgradeTarget: Array

        attr_accessor :DBEngine, :DBVersion, :DBMajorVersion, :DBKernelVersion, :SupportedFeatureNames, :Status, :AvailableUpgradeTarget

        def initialize(dbengine=nil, dbversion=nil, dbmajorversion=nil, dbkernelversion=nil, supportedfeaturenames=nil, status=nil, availableupgradetarget=nil)
          @DBEngine = dbengine
          @DBVersion = dbversion
          @DBMajorVersion = dbmajorversion
          @DBKernelVersion = dbkernelversion
          @SupportedFeatureNames = supportedfeaturenames
          @Status = status
          @AvailableUpgradeTarget = availableupgradetarget
        end

        def deserialize(params)
          @DBEngine = params['DBEngine']
          @DBVersion = params['DBVersion']
          @DBMajorVersion = params['DBMajorVersion']
          @DBKernelVersion = params['DBKernelVersion']
          @SupportedFeatureNames = params['SupportedFeatureNames']
          @Status = params['Status']
          @AvailableUpgradeTarget = params['AvailableUpgradeTarget']
        end
      end

      # 数据库Xlog信息
      class Xlog < TencentCloud::Common::AbstractModel
        # @param Id: 备份文件唯一标识
        # @type Id: Integer
        # @param StartTime: 文件生成的开始时间
        # @type StartTime: String
        # @param EndTime: 文件生成的结束时间
        # @type EndTime: String
        # @param InternalAddr: 内网下载地址
        # @type InternalAddr: String
        # @param ExternalAddr: 外网下载地址
        # @type ExternalAddr: String
        # @param Size: 备份文件大小
        # @type Size: Integer

        attr_accessor :Id, :StartTime, :EndTime, :InternalAddr, :ExternalAddr, :Size

        def initialize(id=nil, starttime=nil, endtime=nil, internaladdr=nil, externaladdr=nil, size=nil)
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
          @InternalAddr = internaladdr
          @ExternalAddr = externaladdr
          @Size = size
        end

        def deserialize(params)
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @InternalAddr = params['InternalAddr']
          @ExternalAddr = params['ExternalAddr']
          @Size = params['Size']
        end
      end

      # 描述可用区的编码和状态信息
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param Zone: 该可用区的英文名称
        # @type Zone: String
        # @param ZoneName: 该可用区的中文名称
        # @type ZoneName: String
        # @param ZoneId: 该可用区对应的数字编号
        # @type ZoneId: Integer
        # @param ZoneState: 可用状态包含，
        # UNAVAILABLE：不可用。
        # AVAILABLE：可用。
        # SELLOUT：售罄。
        # SUPPORTMODIFYONLY：支持变配。
        # @type ZoneState: String
        # @param ZoneSupportIpv6: 该可用区是否支持Ipv6
        # @type ZoneSupportIpv6: Integer
        # @param StandbyZoneSet: 该可用区对应的备可用区集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StandbyZoneSet: Array

        attr_accessor :Zone, :ZoneName, :ZoneId, :ZoneState, :ZoneSupportIpv6, :StandbyZoneSet

        def initialize(zone=nil, zonename=nil, zoneid=nil, zonestate=nil, zonesupportipv6=nil, standbyzoneset=nil)
          @Zone = zone
          @ZoneName = zonename
          @ZoneId = zoneid
          @ZoneState = zonestate
          @ZoneSupportIpv6 = zonesupportipv6
          @StandbyZoneSet = standbyzoneset
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ZoneName = params['ZoneName']
          @ZoneId = params['ZoneId']
          @ZoneState = params['ZoneState']
          @ZoneSupportIpv6 = params['ZoneSupportIpv6']
          @StandbyZoneSet = params['StandbyZoneSet']
        end
      end

    end
  end
end

