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
  module Cynosdb
    module V20190107
      # 数据库账号信息
      class Account < TencentCloud::Common::AbstractModel
        # @param AccountName: 数据库账号名
        # @type AccountName: String
        # @param Description: 数据库账号描述
        # @type Description: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Host: 主机
        # @type Host: String

        attr_accessor :AccountName, :Description, :CreateTime, :UpdateTime, :Host
        
        def initialize(accountname=nil, description=nil, createtime=nil, updatetime=nil, host=nil)
          @AccountName = accountname
          @Description = description
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Host = host
        end

        def deserialize(params)
          @AccountName = params['AccountName']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Host = params['Host']
        end
      end

      # 账号参数
      class AccountParam < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名称，当前仅支持参数：max_user_connections
        # @type ParamName: String
        # @param ParamValue: 参数值
        # @type ParamValue: String

        attr_accessor :ParamName, :ParamValue
        
        def initialize(paramname=nil, paramvalue=nil)
          @ParamName = paramname
          @ParamValue = paramvalue
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @ParamValue = params['ParamValue']
        end
      end

      # ActivateInstance请求参数结构体
      class ActivateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIdList: 实例 ID 列表，单个实例 ID 格式如：cynosdbmysql-ins-n7ocdslw，与TDSQL-C MySQL数据库控制台页面中显示的实例 ID 相同，可使用 查询实例列表 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceIdList: Array

        attr_accessor :ClusterId, :InstanceIdList
        
        def initialize(clusterid=nil, instanceidlist=nil)
          @ClusterId = clusterid
          @InstanceIdList = instanceidlist
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIdList = params['InstanceIdList']
        end
      end

      # ActivateInstance返回参数结构体
      class ActivateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流id
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # AddInstances请求参数结构体
      class AddInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Cpu: Cpu核数
        # @type Cpu: Integer
        # @param Memory: 内存，单位为GB
        # @type Memory: Integer
        # @param ReadOnlyCount: 新增只读实例数，取值范围为[0,4]
        # @type ReadOnlyCount: Integer
        # @param InstanceGrpId: 实例组ID，在已有RO组中新增实例时使用，不传则新增RO组。当前版本不建议传输该值。
        # @type InstanceGrpId: String
        # @param VpcId: 所属VPC网络ID，该参数已废弃
        # @type VpcId: String
        # @param SubnetId: 所属子网ID，如果设置了VpcId，则SubnetId必填。该参数已废弃。
        # @type SubnetId: String
        # @param Port: 新增RO组时使用的Port，取值范围为[0,65535)
        # @type Port: Integer
        # @param InstanceName: 实例名称，字符串长度范围为[0,64)，取值范围为大小写字母，0-9数字，'_','-','.'
        # @type InstanceName: String
        # @param AutoVoucher: 是否自动选择代金券 1是 0否 默认为0
        # @type AutoVoucher: Integer
        # @param DbType: 数据库类型，取值范围:
        # <li> MYSQL </li>
        # @type DbType: String
        # @param OrderSource: 订单来源，字符串长度范围为[0,64)
        # @type OrderSource: String
        # @param DealMode: 交易模式 0-下单并支付 1-下单
        # @type DealMode: Integer

        attr_accessor :ClusterId, :Cpu, :Memory, :ReadOnlyCount, :InstanceGrpId, :VpcId, :SubnetId, :Port, :InstanceName, :AutoVoucher, :DbType, :OrderSource, :DealMode
        
        def initialize(clusterid=nil, cpu=nil, memory=nil, readonlycount=nil, instancegrpid=nil, vpcid=nil, subnetid=nil, port=nil, instancename=nil, autovoucher=nil, dbtype=nil, ordersource=nil, dealmode=nil)
          @ClusterId = clusterid
          @Cpu = cpu
          @Memory = memory
          @ReadOnlyCount = readonlycount
          @InstanceGrpId = instancegrpid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Port = port
          @InstanceName = instancename
          @AutoVoucher = autovoucher
          @DbType = dbtype
          @OrderSource = ordersource
          @DealMode = dealmode
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @ReadOnlyCount = params['ReadOnlyCount']
          @InstanceGrpId = params['InstanceGrpId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Port = params['Port']
          @InstanceName = params['InstanceName']
          @AutoVoucher = params['AutoVoucher']
          @DbType = params['DbType']
          @OrderSource = params['OrderSource']
          @DealMode = params['DealMode']
        end
      end

      # AddInstances返回参数结构体
      class AddInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TranId: 冻结流水，一次开通一个冻结流水。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranId: String
        # @param DealNames: 后付费订单号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array
        # @param ResourceIds: 发货资源id列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceIds: Array
        # @param BigDealIds: 大订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BigDealIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TranId, :DealNames, :ResourceIds, :BigDealIds, :RequestId
        
        def initialize(tranid=nil, dealnames=nil, resourceids=nil, bigdealids=nil, requestid=nil)
          @TranId = tranid
          @DealNames = dealnames
          @ResourceIds = resourceids
          @BigDealIds = bigdealids
          @RequestId = requestid
        end

        def deserialize(params)
          @TranId = params['TranId']
          @DealNames = params['DealNames']
          @ResourceIds = params['ResourceIds']
          @BigDealIds = params['BigDealIds']
          @RequestId = params['RequestId']
        end
      end

      # 数据库地址
      class Addr < TencentCloud::Common::AbstractModel
        # @param IP: IP
        # @type IP: String
        # @param Port: 端口
        # @type Port: Integer

        attr_accessor :IP, :Port
        
        def initialize(ip=nil, port=nil)
          @IP = ip
          @Port = port
        end

        def deserialize(params)
          @IP = params['IP']
          @Port = params['Port']
        end
      end

      # AssociateSecurityGroups请求参数结构体
      class AssociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例组ID数组
        # @type InstanceIds: Array
        # @param SecurityGroupIds: 要修改的安全组ID列表，一个或者多个安全组Id组成的数组。
        # @type SecurityGroupIds: Array
        # @param Zone: 可用区
        # @type Zone: String

        attr_accessor :InstanceIds, :SecurityGroupIds, :Zone
        
        def initialize(instanceids=nil, securitygroupids=nil, zone=nil)
          @InstanceIds = instanceids
          @SecurityGroupIds = securitygroupids
          @Zone = zone
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @SecurityGroupIds = params['SecurityGroupIds']
          @Zone = params['Zone']
        end
      end

      # AssociateSecurityGroups返回参数结构体
      class AssociateSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 备份文件信息
      class BackupFileInfo < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 快照文件ID，用于回滚
        # @type SnapshotId: Integer
        # @param FileName: 快照文件名
        # @type FileName: String
        # @param FileSize: 快照文件大小
        # @type FileSize: Integer
        # @param StartTime: 快照备份开始时间
        # @type StartTime: String
        # @param FinishTime: 快照备份完成时间
        # @type FinishTime: String
        # @param BackupType: 备份类型：snapshot，快照备份；timepoint，时间点备份
        # @type BackupType: String
        # @param BackupMethod: 备份方式：auto，自动备份；manual，手动备份
        # @type BackupMethod: String
        # @param BackupStatus: 备份文件状态：success：备份成功；fail：备份失败；creating：备份文件创建中；deleting：备份文件删除中
        # @type BackupStatus: String
        # @param SnapshotTime: 备份文件时间
        # @type SnapshotTime: String

        attr_accessor :SnapshotId, :FileName, :FileSize, :StartTime, :FinishTime, :BackupType, :BackupMethod, :BackupStatus, :SnapshotTime
        
        def initialize(snapshotid=nil, filename=nil, filesize=nil, starttime=nil, finishtime=nil, backuptype=nil, backupmethod=nil, backupstatus=nil, snapshottime=nil)
          @SnapshotId = snapshotid
          @FileName = filename
          @FileSize = filesize
          @StartTime = starttime
          @FinishTime = finishtime
          @BackupType = backuptype
          @BackupMethod = backupmethod
          @BackupStatus = backupstatus
          @SnapshotTime = snapshottime
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @StartTime = params['StartTime']
          @FinishTime = params['FinishTime']
          @BackupType = params['BackupType']
          @BackupMethod = params['BackupMethod']
          @BackupStatus = params['BackupStatus']
          @SnapshotTime = params['SnapshotTime']
        end
      end

      # 计费资源信息
      class BillingResourceInfo < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIds: 实例ID列表
        # @type InstanceIds: Array
        # @param DealName: 订单ID
        # @type DealName: String

        attr_accessor :ClusterId, :InstanceIds, :DealName
        
        def initialize(clusterid=nil, instanceids=nil, dealname=nil)
          @ClusterId = clusterid
          @InstanceIds = instanceids
          @DealName = dealname
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIds = params['InstanceIds']
          @DealName = params['DealName']
        end
      end

      # Binlog描述
      class BinlogItem < TencentCloud::Common::AbstractModel
        # @param FileName: Binlog文件名称
        # @type FileName: String
        # @param FileSize: 文件大小，单位：字节
        # @type FileSize: Integer
        # @param StartTime: 事务最早时间
        # @type StartTime: String
        # @param FinishTime: 事务最晚时间
        # @type FinishTime: String
        # @param BinlogId: Binlog文件ID
        # @type BinlogId: Integer

        attr_accessor :FileName, :FileSize, :StartTime, :FinishTime, :BinlogId
        
        def initialize(filename=nil, filesize=nil, starttime=nil, finishtime=nil, binlogid=nil)
          @FileName = filename
          @FileSize = filesize
          @StartTime = starttime
          @FinishTime = finishtime
          @BinlogId = binlogid
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @StartTime = params['StartTime']
          @FinishTime = params['FinishTime']
          @BinlogId = params['BinlogId']
        end
      end

      # 集群实例信息
      class ClusterInstanceDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param InstanceType: 引擎类型
        # @type InstanceType: String
        # @param InstanceStatus: 实例状态
        # @type InstanceStatus: String
        # @param InstanceStatusDesc: 实例状态描述
        # @type InstanceStatusDesc: String
        # @param InstanceCpu: cpu核数
        # @type InstanceCpu: Integer
        # @param InstanceMemory: 内存
        # @type InstanceMemory: Integer
        # @param InstanceStorage: 硬盘
        # @type InstanceStorage: Integer

        attr_accessor :InstanceId, :InstanceName, :InstanceType, :InstanceStatus, :InstanceStatusDesc, :InstanceCpu, :InstanceMemory, :InstanceStorage
        
        def initialize(instanceid=nil, instancename=nil, instancetype=nil, instancestatus=nil, instancestatusdesc=nil, instancecpu=nil, instancememory=nil, instancestorage=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceType = instancetype
          @InstanceStatus = instancestatus
          @InstanceStatusDesc = instancestatusdesc
          @InstanceCpu = instancecpu
          @InstanceMemory = instancememory
          @InstanceStorage = instancestorage
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceType = params['InstanceType']
          @InstanceStatus = params['InstanceStatus']
          @InstanceStatusDesc = params['InstanceStatusDesc']
          @InstanceCpu = params['InstanceCpu']
          @InstanceMemory = params['InstanceMemory']
          @InstanceStorage = params['InstanceStorage']
        end
      end

      # 参数修改记录
      class ClusterParamModifyLog < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名称
        # @type ParamName: String
        # @param CurrentValue: 当前值
        # @type CurrentValue: String
        # @param UpdateValue: 修改后的值
        # @type UpdateValue: String
        # @param Status: 修改状态
        # @type Status: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :ParamName, :CurrentValue, :UpdateValue, :Status, :CreateTime, :UpdateTime
        
        def initialize(paramname=nil, currentvalue=nil, updatevalue=nil, status=nil, createtime=nil, updatetime=nil)
          @ParamName = paramname
          @CurrentValue = currentvalue
          @UpdateValue = updatevalue
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @CurrentValue = params['CurrentValue']
          @UpdateValue = params['UpdateValue']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # CreateAccounts请求参数结构体
      class CreateAccountsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Accounts: 新账户列表
        # @type Accounts: Array

        attr_accessor :ClusterId, :Accounts
        
        def initialize(clusterid=nil, accounts=nil)
          @ClusterId = clusterid
          @Accounts = accounts
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              newaccount_tmp = NewAccount.new
              newaccount_tmp.deserialize(i)
              @Accounts << newaccount_tmp
            end
          end
        end
      end

      # CreateAccounts返回参数结构体
      class CreateAccountsResponse < TencentCloud::Common::AbstractModel
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

      # CreateClusters请求参数结构体
      class CreateClustersRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param VpcId: 所属VPC网络ID
        # @type VpcId: String
        # @param SubnetId: 所属子网ID
        # @type SubnetId: String
        # @param DbType: 数据库类型，取值范围:
        # <li> MYSQL </li>
        # @type DbType: String
        # @param DbVersion: 数据库版本，取值范围:
        # <li> MYSQL可选值：5.7，8.0 </li>
        # @type DbVersion: String
        # @param ProjectId: 所属项目ID
        # @type ProjectId: Integer
        # @param Cpu: 当DbMode为NORMAL或不填时必选
        # 普通实例Cpu核数
        # @type Cpu: Integer
        # @param Memory: 当DbMode为NORMAL或不填时必选
        # 普通实例内存,单位G
        # @type Memory: Integer
        # @param Storage: 该参数无实际意义，已废弃。
        # 存储大小，单位G。
        # @type Storage: Integer
        # @param ClusterName: 集群名称，长度小于64个字符，每个字符取值范围：大/小写字母，数字，特殊符号（'-','_','.'）
        # @type ClusterName: String
        # @param AdminPassword: 账号密码(8-64个字符，包含大小写英文字母、数字和符号~!@#$%^&*_-+=`|\(){}[]:;'<>,.?/中的任意三种)
        # @type AdminPassword: String
        # @param Port: 端口，默认3306，取值范围[0, 65535)
        # @type Port: Integer
        # @param PayMode: 计费模式，按量计费：0，包年包月：1。默认按量计费。
        # @type PayMode: Integer
        # @param Count: 购买集群数，可选值范围[1,50]，默认为1
        # @type Count: Integer
        # @param RollbackStrategy: 回档类型：
        # noneRollback：不回档；
        # snapRollback，快照回档；
        # timeRollback，时间点回档
        # @type RollbackStrategy: String
        # @param RollbackId: 快照回档，表示snapshotId；时间点回档，表示queryId，为0，表示需要判断时间点是否有效
        # @type RollbackId: Integer
        # @param OriginalClusterId: 回档时，传入源集群ID，用于查找源poolId
        # @type OriginalClusterId: String
        # @param ExpectTime: 时间点回档，指定时间；快照回档，快照时间
        # @type ExpectTime: String
        # @param ExpectTimeThresh: 该参数无实际意义，已废弃。
        # 时间点回档，指定时间允许范围
        # @type ExpectTimeThresh: Integer
        # @param StorageLimit: 普通实例存储上限，单位GB
        # 当DbType为MYSQL，且存储计费模式为预付费时，该参数需不大于cpu与memory对应存储规格上限
        # @type StorageLimit: Integer
        # @param InstanceCount: 实例数量，数量范围为(0,16]
        # @type InstanceCount: Integer
        # @param TimeSpan: 包年包月购买时长
        # @type TimeSpan: Integer
        # @param TimeUnit: 包年包月购买时长单位，['s','d','m','y']
        # @type TimeUnit: String
        # @param AutoRenewFlag: 包年包月购买是否自动续费，默认为0
        # @type AutoRenewFlag: Integer
        # @param AutoVoucher: 是否自动选择代金券 1是 0否 默认为0
        # @type AutoVoucher: Integer
        # @param HaCount: 实例数量（该参数已不再使用，只做存量兼容处理）
        # @type HaCount: Integer
        # @param OrderSource: 订单来源
        # @type OrderSource: String
        # @param ResourceTags: 集群创建需要绑定的tag数组信息
        # @type ResourceTags: Array
        # @param DbMode: Db类型
        # 当DbType为MYSQL时可选(默认NORMAL)：
        # <li>NORMAL</li>
        # <li>SERVERLESS</li>
        # @type DbMode: String
        # @param MinCpu: 当DbMode为SEVERLESS时必填
        # cpu最小值，可选范围参考DescribeServerlessInstanceSpecs接口返回
        # @type MinCpu: Float
        # @param MaxCpu: 当DbMode为SEVERLESS时必填：
        # cpu最大值，可选范围参考DescribeServerlessInstanceSpecs接口返回
        # @type MaxCpu: Float
        # @param AutoPause: 当DbMode为SEVERLESS时，指定集群是否自动暂停，可选范围
        # <li>yes</li>
        # <li>no</li>
        # 默认值:yes
        # @type AutoPause: String
        # @param AutoPauseDelay: 当DbMode为SEVERLESS时，指定集群自动暂停的延迟，单位秒，可选范围[600,691200]
        # 默认值:600
        # @type AutoPauseDelay: Integer
        # @param StoragePayMode: 集群存储计费模式，按量计费：0，包年包月：1。默认按量计费
        # 当DbType为MYSQL时，在集群计算计费模式为后付费（包括DbMode为SERVERLESS）时，存储计费模式仅可为按量计费
        # 回档与克隆均不支持包年包月存储
        # @type StoragePayMode: Integer
        # @param SecurityGroupIds: 安全组id数组
        # @type SecurityGroupIds: Array
        # @param AlarmPolicyIds: 告警策略Id数组
        # @type AlarmPolicyIds: Array
        # @param ClusterParams: 参数数组
        # @type ClusterParams: Array
        # @param DealMode: 交易模式，0-下单且支付，1-下单
        # @type DealMode: Integer
        # @param ParamTemplateId: 参数模版ID，可以通过查询参数模板信息DescribeParamTemplates获得参数模板ID
        # @type ParamTemplateId: Integer
        # @param SlaveZone: 多可用区地址
        # @type SlaveZone: String

        attr_accessor :Zone, :VpcId, :SubnetId, :DbType, :DbVersion, :ProjectId, :Cpu, :Memory, :Storage, :ClusterName, :AdminPassword, :Port, :PayMode, :Count, :RollbackStrategy, :RollbackId, :OriginalClusterId, :ExpectTime, :ExpectTimeThresh, :StorageLimit, :InstanceCount, :TimeSpan, :TimeUnit, :AutoRenewFlag, :AutoVoucher, :HaCount, :OrderSource, :ResourceTags, :DbMode, :MinCpu, :MaxCpu, :AutoPause, :AutoPauseDelay, :StoragePayMode, :SecurityGroupIds, :AlarmPolicyIds, :ClusterParams, :DealMode, :ParamTemplateId, :SlaveZone
        
        def initialize(zone=nil, vpcid=nil, subnetid=nil, dbtype=nil, dbversion=nil, projectid=nil, cpu=nil, memory=nil, storage=nil, clustername=nil, adminpassword=nil, port=nil, paymode=nil, count=nil, rollbackstrategy=nil, rollbackid=nil, originalclusterid=nil, expecttime=nil, expecttimethresh=nil, storagelimit=nil, instancecount=nil, timespan=nil, timeunit=nil, autorenewflag=nil, autovoucher=nil, hacount=nil, ordersource=nil, resourcetags=nil, dbmode=nil, mincpu=nil, maxcpu=nil, autopause=nil, autopausedelay=nil, storagepaymode=nil, securitygroupids=nil, alarmpolicyids=nil, clusterparams=nil, dealmode=nil, paramtemplateid=nil, slavezone=nil)
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @DbType = dbtype
          @DbVersion = dbversion
          @ProjectId = projectid
          @Cpu = cpu
          @Memory = memory
          @Storage = storage
          @ClusterName = clustername
          @AdminPassword = adminpassword
          @Port = port
          @PayMode = paymode
          @Count = count
          @RollbackStrategy = rollbackstrategy
          @RollbackId = rollbackid
          @OriginalClusterId = originalclusterid
          @ExpectTime = expecttime
          @ExpectTimeThresh = expecttimethresh
          @StorageLimit = storagelimit
          @InstanceCount = instancecount
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @AutoRenewFlag = autorenewflag
          @AutoVoucher = autovoucher
          @HaCount = hacount
          @OrderSource = ordersource
          @ResourceTags = resourcetags
          @DbMode = dbmode
          @MinCpu = mincpu
          @MaxCpu = maxcpu
          @AutoPause = autopause
          @AutoPauseDelay = autopausedelay
          @StoragePayMode = storagepaymode
          @SecurityGroupIds = securitygroupids
          @AlarmPolicyIds = alarmpolicyids
          @ClusterParams = clusterparams
          @DealMode = dealmode
          @ParamTemplateId = paramtemplateid
          @SlaveZone = slavezone
        end

        def deserialize(params)
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @DbType = params['DbType']
          @DbVersion = params['DbVersion']
          @ProjectId = params['ProjectId']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @ClusterName = params['ClusterName']
          @AdminPassword = params['AdminPassword']
          @Port = params['Port']
          @PayMode = params['PayMode']
          @Count = params['Count']
          @RollbackStrategy = params['RollbackStrategy']
          @RollbackId = params['RollbackId']
          @OriginalClusterId = params['OriginalClusterId']
          @ExpectTime = params['ExpectTime']
          @ExpectTimeThresh = params['ExpectTimeThresh']
          @StorageLimit = params['StorageLimit']
          @InstanceCount = params['InstanceCount']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @AutoRenewFlag = params['AutoRenewFlag']
          @AutoVoucher = params['AutoVoucher']
          @HaCount = params['HaCount']
          @OrderSource = params['OrderSource']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @ResourceTags << tag_tmp
            end
          end
          @DbMode = params['DbMode']
          @MinCpu = params['MinCpu']
          @MaxCpu = params['MaxCpu']
          @AutoPause = params['AutoPause']
          @AutoPauseDelay = params['AutoPauseDelay']
          @StoragePayMode = params['StoragePayMode']
          @SecurityGroupIds = params['SecurityGroupIds']
          @AlarmPolicyIds = params['AlarmPolicyIds']
          unless params['ClusterParams'].nil?
            @ClusterParams = []
            params['ClusterParams'].each do |i|
              paramitem_tmp = ParamItem.new
              paramitem_tmp.deserialize(i)
              @ClusterParams << paramitem_tmp
            end
          end
          @DealMode = params['DealMode']
          @ParamTemplateId = params['ParamTemplateId']
          @SlaveZone = params['SlaveZone']
        end
      end

      # CreateClusters返回参数结构体
      class CreateClustersResponse < TencentCloud::Common::AbstractModel
        # @param TranId: 冻结流水ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranId: String
        # @param DealNames: 订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array
        # @param ResourceIds: 资源ID列表（该字段已不再维护，请使用dealNames字段查询接口DescribeResourcesByDealName获取资源ID）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceIds: Array
        # @param ClusterIds: 集群ID列表（该字段已不再维护，请使用dealNames字段查询接口DescribeResourcesByDealName获取集群ID）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterIds: Array
        # @param BigDealIds: 大订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BigDealIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TranId, :DealNames, :ResourceIds, :ClusterIds, :BigDealIds, :RequestId
        
        def initialize(tranid=nil, dealnames=nil, resourceids=nil, clusterids=nil, bigdealids=nil, requestid=nil)
          @TranId = tranid
          @DealNames = dealnames
          @ResourceIds = resourceids
          @ClusterIds = clusterids
          @BigDealIds = bigdealids
          @RequestId = requestid
        end

        def deserialize(params)
          @TranId = params['TranId']
          @DealNames = params['DealNames']
          @ResourceIds = params['ResourceIds']
          @ClusterIds = params['ClusterIds']
          @BigDealIds = params['BigDealIds']
          @RequestId = params['RequestId']
        end
      end

      # 集群信息
      class CynosdbCluster < TencentCloud::Common::AbstractModel
        # @param Status: 集群状态， 可选值如下:
        # creating: 创建中
        # running:运行中
        # isolating:隔离中
        # isolated:已隔离
        # activating:解隔离中
        # offlining:下线中
        # offlined:已下线
        # deleting:删除中
        # deleted:已删除
        # @type Status: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param Region: 地域
        # @type Region: String
        # @param DbVersion: 数据库版本
        # @type DbVersion: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceNum: 实例数
        # @type InstanceNum: Integer
        # @param Uin: 用户uin
        # @type Uin: String
        # @param DbType: 引擎类型
        # @type DbType: String
        # @param AppId: 用户appid
        # @type AppId: Integer
        # @param StatusDesc: 集群状态描述
        # @type StatusDesc: String
        # @param CreateTime: 集群创建时间
        # @type CreateTime: String
        # @param PayMode: 付费模式。0-按量计费，1-包年包月
        # @type PayMode: Integer
        # @param PeriodEndTime: 截止时间
        # @type PeriodEndTime: String
        # @param Vip: 集群读写vip
        # @type Vip: String
        # @param Vport: 集群读写vport
        # @type Vport: Integer
        # @param ProjectID: 项目id
        # @type ProjectID: Integer
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param CynosVersion: cynos内核版本
        # @type CynosVersion: String
        # @param StorageLimit: 存储容量
        # @type StorageLimit: Integer
        # @param RenewFlag: 续费标志
        # @type RenewFlag: Integer
        # @param ProcessingTask: 正在处理的任务
        # @type ProcessingTask: String
        # @param Tasks: 集群的任务数组
        # @type Tasks: Array
        # @param ResourceTags: 集群绑定的tag数组
        # @type ResourceTags: Array
        # @param DbMode: Db类型(NORMAL, SERVERLESS)
        # @type DbMode: String
        # @param ServerlessStatus: 当Db类型为SERVERLESS时，serverless集群状态，可选值:
        # resume
        # pause
        # @type ServerlessStatus: String
        # @param Storage: 集群预付费存储值大小
        # @type Storage: Integer
        # @param StorageId: 集群存储为预付费时的存储ID，用于预付费存储变配
        # @type StorageId: String
        # @param StoragePayMode: 集群存储付费模式。0-按量计费，1-包年包月
        # @type StoragePayMode: Integer
        # @param MinStorageSize: 集群计算规格对应的最小存储值
        # @type MinStorageSize: Integer
        # @param MaxStorageSize: 集群计算规格对应的最大存储值
        # @type MaxStorageSize: Integer
        # @param NetAddrs: 集群网络信息
        # @type NetAddrs: Array

        attr_accessor :Status, :UpdateTime, :Zone, :ClusterName, :Region, :DbVersion, :ClusterId, :InstanceNum, :Uin, :DbType, :AppId, :StatusDesc, :CreateTime, :PayMode, :PeriodEndTime, :Vip, :Vport, :ProjectID, :VpcId, :SubnetId, :CynosVersion, :StorageLimit, :RenewFlag, :ProcessingTask, :Tasks, :ResourceTags, :DbMode, :ServerlessStatus, :Storage, :StorageId, :StoragePayMode, :MinStorageSize, :MaxStorageSize, :NetAddrs
        
        def initialize(status=nil, updatetime=nil, zone=nil, clustername=nil, region=nil, dbversion=nil, clusterid=nil, instancenum=nil, uin=nil, dbtype=nil, appid=nil, statusdesc=nil, createtime=nil, paymode=nil, periodendtime=nil, vip=nil, vport=nil, projectid=nil, vpcid=nil, subnetid=nil, cynosversion=nil, storagelimit=nil, renewflag=nil, processingtask=nil, tasks=nil, resourcetags=nil, dbmode=nil, serverlessstatus=nil, storage=nil, storageid=nil, storagepaymode=nil, minstoragesize=nil, maxstoragesize=nil, netaddrs=nil)
          @Status = status
          @UpdateTime = updatetime
          @Zone = zone
          @ClusterName = clustername
          @Region = region
          @DbVersion = dbversion
          @ClusterId = clusterid
          @InstanceNum = instancenum
          @Uin = uin
          @DbType = dbtype
          @AppId = appid
          @StatusDesc = statusdesc
          @CreateTime = createtime
          @PayMode = paymode
          @PeriodEndTime = periodendtime
          @Vip = vip
          @Vport = vport
          @ProjectID = projectid
          @VpcId = vpcid
          @SubnetId = subnetid
          @CynosVersion = cynosversion
          @StorageLimit = storagelimit
          @RenewFlag = renewflag
          @ProcessingTask = processingtask
          @Tasks = tasks
          @ResourceTags = resourcetags
          @DbMode = dbmode
          @ServerlessStatus = serverlessstatus
          @Storage = storage
          @StorageId = storageid
          @StoragePayMode = storagepaymode
          @MinStorageSize = minstoragesize
          @MaxStorageSize = maxstoragesize
          @NetAddrs = netaddrs
        end

        def deserialize(params)
          @Status = params['Status']
          @UpdateTime = params['UpdateTime']
          @Zone = params['Zone']
          @ClusterName = params['ClusterName']
          @Region = params['Region']
          @DbVersion = params['DbVersion']
          @ClusterId = params['ClusterId']
          @InstanceNum = params['InstanceNum']
          @Uin = params['Uin']
          @DbType = params['DbType']
          @AppId = params['AppId']
          @StatusDesc = params['StatusDesc']
          @CreateTime = params['CreateTime']
          @PayMode = params['PayMode']
          @PeriodEndTime = params['PeriodEndTime']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @ProjectID = params['ProjectID']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @CynosVersion = params['CynosVersion']
          @StorageLimit = params['StorageLimit']
          @RenewFlag = params['RenewFlag']
          @ProcessingTask = params['ProcessingTask']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              objecttask_tmp = ObjectTask.new
              objecttask_tmp.deserialize(i)
              @Tasks << objecttask_tmp
            end
          end
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @ResourceTags << tag_tmp
            end
          end
          @DbMode = params['DbMode']
          @ServerlessStatus = params['ServerlessStatus']
          @Storage = params['Storage']
          @StorageId = params['StorageId']
          @StoragePayMode = params['StoragePayMode']
          @MinStorageSize = params['MinStorageSize']
          @MaxStorageSize = params['MaxStorageSize']
          unless params['NetAddrs'].nil?
            @NetAddrs = []
            params['NetAddrs'].each do |i|
              netaddr_tmp = NetAddr.new
              netaddr_tmp.deserialize(i)
              @NetAddrs << netaddr_tmp
            end
          end
        end
      end

      # 集群详情详细信息
      class CynosdbClusterDetail < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param Region: 地域
        # @type Region: String
        # @param Status: 状态
        # @type Status: String
        # @param StatusDesc: 状态描述
        # @type StatusDesc: String
        # @param VpcName: VPC名称
        # @type VpcName: String
        # @param VpcId: vpc唯一id
        # @type VpcId: String
        # @param SubnetName: 子网名称
        # @type SubnetName: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Charset: 字符集
        # @type Charset: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param DbType: 数据库类型
        # @type DbType: String
        # @param DbVersion: 数据库版本
        # @type DbVersion: String
        # @param UsedStorage: 使用容量
        # @type UsedStorage: Integer
        # @param RoAddr: 读写分离Vport
        # @type RoAddr: Array
        # @param InstanceSet: 实例信息
        # @type InstanceSet: Array
        # @param PayMode: 付费模式
        # @type PayMode: Integer
        # @param PeriodEndTime: 到期时间
        # @type PeriodEndTime: String
        # @param Vip: vip地址
        # @type Vip: String
        # @param Vport: vport端口
        # @type Vport: Integer
        # @param ProjectID: 项目id
        # @type ProjectID: Integer
        # @param Zone: 可用区
        # @type Zone: String
        # @param ResourceTags: 实例绑定的tag数组信息
        # @type ResourceTags: Array
        # @param ServerlessStatus: 当Db类型为SERVERLESS时，serverless集群状态，可选值:
        # resume
        # resuming
        # pause
        # pausing
        # @type ServerlessStatus: String

        attr_accessor :ClusterId, :ClusterName, :Region, :Status, :StatusDesc, :VpcName, :VpcId, :SubnetName, :SubnetId, :Charset, :CreateTime, :DbType, :DbVersion, :UsedStorage, :RoAddr, :InstanceSet, :PayMode, :PeriodEndTime, :Vip, :Vport, :ProjectID, :Zone, :ResourceTags, :ServerlessStatus
        
        def initialize(clusterid=nil, clustername=nil, region=nil, status=nil, statusdesc=nil, vpcname=nil, vpcid=nil, subnetname=nil, subnetid=nil, charset=nil, createtime=nil, dbtype=nil, dbversion=nil, usedstorage=nil, roaddr=nil, instanceset=nil, paymode=nil, periodendtime=nil, vip=nil, vport=nil, projectid=nil, zone=nil, resourcetags=nil, serverlessstatus=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @Region = region
          @Status = status
          @StatusDesc = statusdesc
          @VpcName = vpcname
          @VpcId = vpcid
          @SubnetName = subnetname
          @SubnetId = subnetid
          @Charset = charset
          @CreateTime = createtime
          @DbType = dbtype
          @DbVersion = dbversion
          @UsedStorage = usedstorage
          @RoAddr = roaddr
          @InstanceSet = instanceset
          @PayMode = paymode
          @PeriodEndTime = periodendtime
          @Vip = vip
          @Vport = vport
          @ProjectID = projectid
          @Zone = zone
          @ResourceTags = resourcetags
          @ServerlessStatus = serverlessstatus
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Region = params['Region']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @VpcName = params['VpcName']
          @VpcId = params['VpcId']
          @SubnetName = params['SubnetName']
          @SubnetId = params['SubnetId']
          @Charset = params['Charset']
          @CreateTime = params['CreateTime']
          @DbType = params['DbType']
          @DbVersion = params['DbVersion']
          @UsedStorage = params['UsedStorage']
          unless params['RoAddr'].nil?
            @RoAddr = []
            params['RoAddr'].each do |i|
              addr_tmp = Addr.new
              addr_tmp.deserialize(i)
              @RoAddr << addr_tmp
            end
          end
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              clusterinstancedetail_tmp = ClusterInstanceDetail.new
              clusterinstancedetail_tmp.deserialize(i)
              @InstanceSet << clusterinstancedetail_tmp
            end
          end
          @PayMode = params['PayMode']
          @PeriodEndTime = params['PeriodEndTime']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @ProjectID = params['ProjectID']
          @Zone = params['Zone']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @ResourceTags << tag_tmp
            end
          end
          @ServerlessStatus = params['ServerlessStatus']
        end
      end

      # 实例信息
      class CynosdbInstance < TencentCloud::Common::AbstractModel
        # @param Uin: 用户Uin
        # @type Uin: String
        # @param AppId: 用户AppId
        # @type AppId: Integer
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param Status: 实例状态
        # @type Status: String
        # @param StatusDesc: 实例状态中文描述
        # @type StatusDesc: String
        # @param DbType: 数据库类型
        # @type DbType: String
        # @param DbVersion: 数据库版本
        # @type DbVersion: String
        # @param Cpu: Cpu，单位：核
        # @type Cpu: Integer
        # @param Memory: 内存，单位：GB
        # @type Memory: Integer
        # @param Storage: 存储量，单位：GB
        # @type Storage: Integer
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param InstanceRole: 实例当前角色
        # @type InstanceRole: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param VpcId: VPC网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Vip: 实例内网IP
        # @type Vip: String
        # @param Vport: 实例内网端口
        # @type Vport: Integer
        # @param PayMode: 付费模式
        # @type PayMode: Integer
        # @param PeriodEndTime: 实例过期时间
        # @type PeriodEndTime: String
        # @param DestroyDeadlineText: 销毁期限
        # @type DestroyDeadlineText: String
        # @param IsolateTime: 隔离时间
        # @type IsolateTime: String
        # @param NetType: 网络类型
        # @type NetType: Integer
        # @param WanDomain: 外网域名
        # @type WanDomain: String
        # @param WanIP: 外网IP
        # @type WanIP: String
        # @param WanPort: 外网端口
        # @type WanPort: Integer
        # @param WanStatus: 外网状态
        # @type WanStatus: String
        # @param DestroyTime: 实例销毁时间
        # @type DestroyTime: String
        # @param CynosVersion: Cynos内核版本
        # @type CynosVersion: String
        # @param ProcessingTask: 正在处理的任务
        # @type ProcessingTask: String
        # @param RenewFlag: 续费标志
        # @type RenewFlag: Integer
        # @param MinCpu: serverless实例cpu下限
        # @type MinCpu: Float
        # @param MaxCpu: serverless实例cpu上限
        # @type MaxCpu: Float
        # @param ServerlessStatus: serverless实例状态, 可选值：
        # resume
        # pause
        # @type ServerlessStatus: String
        # @param StorageId: 预付费存储Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageId: String
        # @param StoragePayMode: 存储付费类型
        # @type StoragePayMode: Integer

        attr_accessor :Uin, :AppId, :ClusterId, :ClusterName, :InstanceId, :InstanceName, :ProjectId, :Region, :Zone, :Status, :StatusDesc, :DbType, :DbVersion, :Cpu, :Memory, :Storage, :InstanceType, :InstanceRole, :UpdateTime, :CreateTime, :VpcId, :SubnetId, :Vip, :Vport, :PayMode, :PeriodEndTime, :DestroyDeadlineText, :IsolateTime, :NetType, :WanDomain, :WanIP, :WanPort, :WanStatus, :DestroyTime, :CynosVersion, :ProcessingTask, :RenewFlag, :MinCpu, :MaxCpu, :ServerlessStatus, :StorageId, :StoragePayMode
        
        def initialize(uin=nil, appid=nil, clusterid=nil, clustername=nil, instanceid=nil, instancename=nil, projectid=nil, region=nil, zone=nil, status=nil, statusdesc=nil, dbtype=nil, dbversion=nil, cpu=nil, memory=nil, storage=nil, instancetype=nil, instancerole=nil, updatetime=nil, createtime=nil, vpcid=nil, subnetid=nil, vip=nil, vport=nil, paymode=nil, periodendtime=nil, destroydeadlinetext=nil, isolatetime=nil, nettype=nil, wandomain=nil, wanip=nil, wanport=nil, wanstatus=nil, destroytime=nil, cynosversion=nil, processingtask=nil, renewflag=nil, mincpu=nil, maxcpu=nil, serverlessstatus=nil, storageid=nil, storagepaymode=nil)
          @Uin = uin
          @AppId = appid
          @ClusterId = clusterid
          @ClusterName = clustername
          @InstanceId = instanceid
          @InstanceName = instancename
          @ProjectId = projectid
          @Region = region
          @Zone = zone
          @Status = status
          @StatusDesc = statusdesc
          @DbType = dbtype
          @DbVersion = dbversion
          @Cpu = cpu
          @Memory = memory
          @Storage = storage
          @InstanceType = instancetype
          @InstanceRole = instancerole
          @UpdateTime = updatetime
          @CreateTime = createtime
          @VpcId = vpcid
          @SubnetId = subnetid
          @Vip = vip
          @Vport = vport
          @PayMode = paymode
          @PeriodEndTime = periodendtime
          @DestroyDeadlineText = destroydeadlinetext
          @IsolateTime = isolatetime
          @NetType = nettype
          @WanDomain = wandomain
          @WanIP = wanip
          @WanPort = wanport
          @WanStatus = wanstatus
          @DestroyTime = destroytime
          @CynosVersion = cynosversion
          @ProcessingTask = processingtask
          @RenewFlag = renewflag
          @MinCpu = mincpu
          @MaxCpu = maxcpu
          @ServerlessStatus = serverlessstatus
          @StorageId = storageid
          @StoragePayMode = storagepaymode
        end

        def deserialize(params)
          @Uin = params['Uin']
          @AppId = params['AppId']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @ProjectId = params['ProjectId']
          @Region = params['Region']
          @Zone = params['Zone']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @DbType = params['DbType']
          @DbVersion = params['DbVersion']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @InstanceType = params['InstanceType']
          @InstanceRole = params['InstanceRole']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @PayMode = params['PayMode']
          @PeriodEndTime = params['PeriodEndTime']
          @DestroyDeadlineText = params['DestroyDeadlineText']
          @IsolateTime = params['IsolateTime']
          @NetType = params['NetType']
          @WanDomain = params['WanDomain']
          @WanIP = params['WanIP']
          @WanPort = params['WanPort']
          @WanStatus = params['WanStatus']
          @DestroyTime = params['DestroyTime']
          @CynosVersion = params['CynosVersion']
          @ProcessingTask = params['ProcessingTask']
          @RenewFlag = params['RenewFlag']
          @MinCpu = params['MinCpu']
          @MaxCpu = params['MaxCpu']
          @ServerlessStatus = params['ServerlessStatus']
          @StorageId = params['StorageId']
          @StoragePayMode = params['StoragePayMode']
        end
      end

      # 实例详情
      class CynosdbInstanceDetail < TencentCloud::Common::AbstractModel
        # @param Uin: 用户Uin
        # @type Uin: String
        # @param AppId: 用户AppId
        # @type AppId: Integer
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param Status: 实例状态
        # @type Status: String
        # @param StatusDesc: 实例状态中文描述
        # @type StatusDesc: String
        # @param DbType: 数据库类型
        # @type DbType: String
        # @param DbVersion: 数据库版本
        # @type DbVersion: String
        # @param Cpu: Cpu，单位：核
        # @type Cpu: Integer
        # @param Memory: 内存，单位：GB
        # @type Memory: Integer
        # @param Storage: 存储量，单位：GB
        # @type Storage: Integer
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param InstanceRole: 实例当前角色
        # @type InstanceRole: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param PayMode: 付费模式
        # @type PayMode: Integer
        # @param PeriodEndTime: 实例过期时间
        # @type PeriodEndTime: String
        # @param NetType: 网络类型
        # @type NetType: Integer
        # @param VpcId: VPC网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Vip: 实例内网IP
        # @type Vip: String
        # @param Vport: 实例内网端口
        # @type Vport: Integer
        # @param WanDomain: 实例外网域名
        # @type WanDomain: String
        # @param Charset: 字符集
        # @type Charset: String
        # @param CynosVersion: Cynos内核版本
        # @type CynosVersion: String
        # @param RenewFlag: 续费标志
        # @type RenewFlag: Integer
        # @param MinCpu: serverless实例cpu下限
        # @type MinCpu: Float
        # @param MaxCpu: serverless实例cpu上限
        # @type MaxCpu: Float
        # @param ServerlessStatus: serverless实例状态, 可能值：
        # resume
        # pause
        # @type ServerlessStatus: String

        attr_accessor :Uin, :AppId, :ClusterId, :ClusterName, :InstanceId, :InstanceName, :ProjectId, :Region, :Zone, :Status, :StatusDesc, :DbType, :DbVersion, :Cpu, :Memory, :Storage, :InstanceType, :InstanceRole, :UpdateTime, :CreateTime, :PayMode, :PeriodEndTime, :NetType, :VpcId, :SubnetId, :Vip, :Vport, :WanDomain, :Charset, :CynosVersion, :RenewFlag, :MinCpu, :MaxCpu, :ServerlessStatus
        
        def initialize(uin=nil, appid=nil, clusterid=nil, clustername=nil, instanceid=nil, instancename=nil, projectid=nil, region=nil, zone=nil, status=nil, statusdesc=nil, dbtype=nil, dbversion=nil, cpu=nil, memory=nil, storage=nil, instancetype=nil, instancerole=nil, updatetime=nil, createtime=nil, paymode=nil, periodendtime=nil, nettype=nil, vpcid=nil, subnetid=nil, vip=nil, vport=nil, wandomain=nil, charset=nil, cynosversion=nil, renewflag=nil, mincpu=nil, maxcpu=nil, serverlessstatus=nil)
          @Uin = uin
          @AppId = appid
          @ClusterId = clusterid
          @ClusterName = clustername
          @InstanceId = instanceid
          @InstanceName = instancename
          @ProjectId = projectid
          @Region = region
          @Zone = zone
          @Status = status
          @StatusDesc = statusdesc
          @DbType = dbtype
          @DbVersion = dbversion
          @Cpu = cpu
          @Memory = memory
          @Storage = storage
          @InstanceType = instancetype
          @InstanceRole = instancerole
          @UpdateTime = updatetime
          @CreateTime = createtime
          @PayMode = paymode
          @PeriodEndTime = periodendtime
          @NetType = nettype
          @VpcId = vpcid
          @SubnetId = subnetid
          @Vip = vip
          @Vport = vport
          @WanDomain = wandomain
          @Charset = charset
          @CynosVersion = cynosversion
          @RenewFlag = renewflag
          @MinCpu = mincpu
          @MaxCpu = maxcpu
          @ServerlessStatus = serverlessstatus
        end

        def deserialize(params)
          @Uin = params['Uin']
          @AppId = params['AppId']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @ProjectId = params['ProjectId']
          @Region = params['Region']
          @Zone = params['Zone']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @DbType = params['DbType']
          @DbVersion = params['DbVersion']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @InstanceType = params['InstanceType']
          @InstanceRole = params['InstanceRole']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @PayMode = params['PayMode']
          @PeriodEndTime = params['PeriodEndTime']
          @NetType = params['NetType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @WanDomain = params['WanDomain']
          @Charset = params['Charset']
          @CynosVersion = params['CynosVersion']
          @RenewFlag = params['RenewFlag']
          @MinCpu = params['MinCpu']
          @MaxCpu = params['MaxCpu']
          @ServerlessStatus = params['ServerlessStatus']
        end
      end

      # 实例组信息
      class CynosdbInstanceGrp < TencentCloud::Common::AbstractModel
        # @param AppId: appId
        # @type AppId: Integer
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param DeletedTime: 删除时间
        # @type DeletedTime: String
        # @param InstanceGrpId: 实例组ID
        # @type InstanceGrpId: String
        # @param Status: 状态
        # @type Status: String
        # @param Type: 实例组类型。ha-ha组；ro-只读组
        # @type Type: String
        # @param UpdatedTime: 更新时间
        # @type UpdatedTime: String
        # @param Vip: 内网IP
        # @type Vip: String
        # @param Vport: 内网端口
        # @type Vport: Integer
        # @param WanDomain: 外网域名
        # @type WanDomain: String
        # @param WanIP: 外网ip
        # @type WanIP: String
        # @param WanPort: 外网端口
        # @type WanPort: Integer
        # @param WanStatus: 外网状态
        # @type WanStatus: String
        # @param InstanceSet: 实例组包含实例信息
        # @type InstanceSet: Array

        attr_accessor :AppId, :ClusterId, :CreatedTime, :DeletedTime, :InstanceGrpId, :Status, :Type, :UpdatedTime, :Vip, :Vport, :WanDomain, :WanIP, :WanPort, :WanStatus, :InstanceSet
        
        def initialize(appid=nil, clusterid=nil, createdtime=nil, deletedtime=nil, instancegrpid=nil, status=nil, type=nil, updatedtime=nil, vip=nil, vport=nil, wandomain=nil, wanip=nil, wanport=nil, wanstatus=nil, instanceset=nil)
          @AppId = appid
          @ClusterId = clusterid
          @CreatedTime = createdtime
          @DeletedTime = deletedtime
          @InstanceGrpId = instancegrpid
          @Status = status
          @Type = type
          @UpdatedTime = updatedtime
          @Vip = vip
          @Vport = vport
          @WanDomain = wandomain
          @WanIP = wanip
          @WanPort = wanport
          @WanStatus = wanstatus
          @InstanceSet = instanceset
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ClusterId = params['ClusterId']
          @CreatedTime = params['CreatedTime']
          @DeletedTime = params['DeletedTime']
          @InstanceGrpId = params['InstanceGrpId']
          @Status = params['Status']
          @Type = params['Type']
          @UpdatedTime = params['UpdatedTime']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @WanDomain = params['WanDomain']
          @WanIP = params['WanIP']
          @WanPort = params['WanPort']
          @WanStatus = params['WanStatus']
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              cynosdbinstance_tmp = CynosdbInstance.new
              cynosdbinstance_tmp.deserialize(i)
              @InstanceSet << cynosdbinstance_tmp
            end
          end
        end
      end

      # 数据库权限列表
      class DatabasePrivileges < TencentCloud::Common::AbstractModel
        # @param Db: 数据库
        # @type Db: String
        # @param Privileges: 权限列表
        # @type Privileges: Array

        attr_accessor :Db, :Privileges
        
        def initialize(db=nil, privileges=nil)
          @Db = db
          @Privileges = privileges
        end

        def deserialize(params)
          @Db = params['Db']
          @Privileges = params['Privileges']
        end
      end

      # 数据库表
      class DbTable < TencentCloud::Common::AbstractModel
        # @param Db: 数据库名称
        # @type Db: String
        # @param TableName: 数据库表名称
        # @type TableName: String

        attr_accessor :Db, :TableName
        
        def initialize(db=nil, tablename=nil)
          @Db = db
          @TableName = tablename
        end

        def deserialize(params)
          @Db = params['Db']
          @TableName = params['TableName']
        end
      end

      # DescribeAccountAllGrantPrivileges请求参数结构体
      class DescribeAccountAllGrantPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Account: 账号信息
        # @type Account: :class:`Tencentcloud::Cynosdb.v20190107.models.InputAccount`

        attr_accessor :ClusterId, :Account
        
        def initialize(clusterid=nil, account=nil)
          @ClusterId = clusterid
          @Account = account
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['Account'].nil?
            @Account = InputAccount.new
            @Account.deserialize(params['Account'])
          end
        end
      end

      # DescribeAccountAllGrantPrivileges返回参数结构体
      class DescribeAccountAllGrantPrivilegesResponse < TencentCloud::Common::AbstractModel
        # @param PrivilegeStatements: 权限语句
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivilegeStatements: Array
        # @param GlobalPrivileges: 全局权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GlobalPrivileges: Array
        # @param DatabasePrivileges: 数据库权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabasePrivileges: Array
        # @param TablePrivileges: 数据库表权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TablePrivileges: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PrivilegeStatements, :GlobalPrivileges, :DatabasePrivileges, :TablePrivileges, :RequestId
        
        def initialize(privilegestatements=nil, globalprivileges=nil, databaseprivileges=nil, tableprivileges=nil, requestid=nil)
          @PrivilegeStatements = privilegestatements
          @GlobalPrivileges = globalprivileges
          @DatabasePrivileges = databaseprivileges
          @TablePrivileges = tableprivileges
          @RequestId = requestid
        end

        def deserialize(params)
          @PrivilegeStatements = params['PrivilegeStatements']
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccounts请求参数结构体
      class DescribeAccountsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param AccountNames: 需要过滤的账户列表
        # @type AccountNames: Array
        # @param DbType: 数据库类型，取值范围:
        # <li> MYSQL </li>
        # @type DbType: String

        attr_accessor :ClusterId, :AccountNames, :DbType
        
        def initialize(clusterid=nil, accountnames=nil, dbtype=nil)
          @ClusterId = clusterid
          @AccountNames = accountnames
          @DbType = dbtype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @AccountNames = params['AccountNames']
          @DbType = params['DbType']
        end
      end

      # DescribeAccounts返回参数结构体
      class DescribeAccountsResponse < TencentCloud::Common::AbstractModel
        # @param AccountSet: 数据库账号列表
        # @type AccountSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccountSet, :RequestId
        
        def initialize(accountset=nil, requestid=nil)
          @AccountSet = accountset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccountSet'].nil?
            @AccountSet = []
            params['AccountSet'].each do |i|
              account_tmp = Account.new
              account_tmp.deserialize(i)
              @AccountSet << account_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupConfig请求参数结构体
      class DescribeBackupConfigRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeBackupConfig返回参数结构体
      class DescribeBackupConfigResponse < TencentCloud::Common::AbstractModel
        # @param BackupTimeBeg: 表示全备开始时间，[0-24*3600]， 如0:00, 1:00, 2:00 分别为 0，3600， 7200
        # @type BackupTimeBeg: Integer
        # @param BackupTimeEnd: 表示全备开始时间，[0-24*3600]， 如0:00, 1:00, 2:00 分别为 0，3600， 7200
        # @type BackupTimeEnd: Integer
        # @param ReserveDuration: 表示保留备份时长, 单位秒，超过该时间将被清理, 七天表示为3600*24*7=604800
        # @type ReserveDuration: Integer
        # @param BackupFreq: 备份频率，长度为7的数组，分别对应周一到周日的备份方式，full-全量备份，increment-增量备份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupFreq: Array
        # @param BackupType: 备份方式，logic-逻辑备份，snapshot-快照备份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupTimeBeg, :BackupTimeEnd, :ReserveDuration, :BackupFreq, :BackupType, :RequestId
        
        def initialize(backuptimebeg=nil, backuptimeend=nil, reserveduration=nil, backupfreq=nil, backuptype=nil, requestid=nil)
          @BackupTimeBeg = backuptimebeg
          @BackupTimeEnd = backuptimeend
          @ReserveDuration = reserveduration
          @BackupFreq = backupfreq
          @BackupType = backuptype
          @RequestId = requestid
        end

        def deserialize(params)
          @BackupTimeBeg = params['BackupTimeBeg']
          @BackupTimeEnd = params['BackupTimeEnd']
          @ReserveDuration = params['ReserveDuration']
          @BackupFreq = params['BackupFreq']
          @BackupType = params['BackupType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupDownloadUrl请求参数结构体
      class DescribeBackupDownloadUrlRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param BackupId: 备份ID
        # @type BackupId: Integer

        attr_accessor :ClusterId, :BackupId
        
        def initialize(clusterid=nil, backupid=nil)
          @ClusterId = clusterid
          @BackupId = backupid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @BackupId = params['BackupId']
        end
      end

      # DescribeBackupDownloadUrl返回参数结构体
      class DescribeBackupDownloadUrlResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 备份下载地址
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :RequestId
        
        def initialize(downloadurl=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupList请求参数结构体
      class DescribeBackupListRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Limit: 备份文件列表偏移
        # @type Limit: Integer
        # @param Offset: 备份文件列表起始
        # @type Offset: Integer
        # @param DbType: 数据库类型，取值范围:
        # <li> MYSQL </li>
        # @type DbType: String

        attr_accessor :ClusterId, :Limit, :Offset, :DbType
        
        def initialize(clusterid=nil, limit=nil, offset=nil, dbtype=nil)
          @ClusterId = clusterid
          @Limit = limit
          @Offset = offset
          @DbType = dbtype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @DbType = params['DbType']
        end
      end

      # DescribeBackupList返回参数结构体
      class DescribeBackupListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总共备份文件个数
        # @type TotalCount: Integer
        # @param BackupList: 备份文件列表
        # @type BackupList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              backupfileinfo_tmp = BackupFileInfo.new
              backupfileinfo_tmp.deserialize(i)
              @BackupList << backupfileinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBinlogDownloadUrl请求参数结构体
      class DescribeBinlogDownloadUrlRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param BinlogId: Binlog文件ID
        # @type BinlogId: Integer

        attr_accessor :ClusterId, :BinlogId
        
        def initialize(clusterid=nil, binlogid=nil)
          @ClusterId = clusterid
          @BinlogId = binlogid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @BinlogId = params['BinlogId']
        end
      end

      # DescribeBinlogDownloadUrl返回参数结构体
      class DescribeBinlogDownloadUrlResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 下载地址
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :RequestId
        
        def initialize(downloadurl=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBinlogSaveDays请求参数结构体
      class DescribeBinlogSaveDaysRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeBinlogSaveDays返回参数结构体
      class DescribeBinlogSaveDaysResponse < TencentCloud::Common::AbstractModel
        # @param BinlogSaveDays: Binlog保留天数
        # @type BinlogSaveDays: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BinlogSaveDays, :RequestId
        
        def initialize(binlogsavedays=nil, requestid=nil)
          @BinlogSaveDays = binlogsavedays
          @RequestId = requestid
        end

        def deserialize(params)
          @BinlogSaveDays = params['BinlogSaveDays']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBinlogs请求参数结构体
      class DescribeBinlogsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制条数
        # @type Limit: Integer

        attr_accessor :ClusterId, :StartTime, :EndTime, :Offset, :Limit
        
        def initialize(clusterid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeBinlogs返回参数结构体
      class DescribeBinlogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总条数
        # @type TotalCount: Integer
        # @param Binlogs: Binlog列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Binlogs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Binlogs, :RequestId
        
        def initialize(totalcount=nil, binlogs=nil, requestid=nil)
          @TotalCount = totalcount
          @Binlogs = binlogs
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Binlogs'].nil?
            @Binlogs = []
            params['Binlogs'].each do |i|
              binlogitem_tmp = BinlogItem.new
              binlogitem_tmp.deserialize(i)
              @Binlogs << binlogitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterDetail请求参数结构体
      class DescribeClusterDetailRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeClusterDetail返回参数结构体
      class DescribeClusterDetailResponse < TencentCloud::Common::AbstractModel
        # @param Detail: 集群详细信息
        # @type Detail: :class:`Tencentcloud::Cynosdb.v20190107.models.CynosdbClusterDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Detail, :RequestId
        
        def initialize(detail=nil, requestid=nil)
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Detail'].nil?
            @Detail = CynosdbClusterDetail.new
            @Detail.deserialize(params['Detail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterInstanceGrps请求参数结构体
      class DescribeClusterInstanceGrpsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeClusterInstanceGrps返回参数结构体
      class DescribeClusterInstanceGrpsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例组个数
        # @type TotalCount: Integer
        # @param InstanceGrpInfoList: 实例组列表
        # @type InstanceGrpInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceGrpInfoList, :RequestId
        
        def initialize(totalcount=nil, instancegrpinfolist=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceGrpInfoList = instancegrpinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceGrpInfoList'].nil?
            @InstanceGrpInfoList = []
            params['InstanceGrpInfoList'].each do |i|
              cynosdbinstancegrp_tmp = CynosdbInstanceGrp.new
              cynosdbinstancegrp_tmp.deserialize(i)
              @InstanceGrpInfoList << cynosdbinstancegrp_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterParamLogs请求参数结构体
      class DescribeClusterParamLogsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Limit: 返回数量，默认为 20，取值范围为(0,100]
        # @type Limit: Integer
        # @param Offset: 记录偏移量，默认值为0，取值范围为[0,INF)
        # @type Offset: Integer

        attr_accessor :ClusterId, :Limit, :Offset
        
        def initialize(clusterid=nil, limit=nil, offset=nil)
          @ClusterId = clusterid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeClusterParamLogs返回参数结构体
      class DescribeClusterParamLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param ClusterParamLogs: 参数修改记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterParamLogs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ClusterParamLogs, :RequestId
        
        def initialize(totalcount=nil, clusterparamlogs=nil, requestid=nil)
          @TotalCount = totalcount
          @ClusterParamLogs = clusterparamlogs
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ClusterParamLogs'].nil?
            @ClusterParamLogs = []
            params['ClusterParamLogs'].each do |i|
              clusterparammodifylog_tmp = ClusterParamModifyLog.new
              clusterparammodifylog_tmp.deserialize(i)
              @ClusterParamLogs << clusterparammodifylog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusters请求参数结构体
      class DescribeClustersRequest < TencentCloud::Common::AbstractModel
        # @param DbType: 引擎类型：目前支持“MYSQL”， “POSTGRESQL”
        # @type DbType: String
        # @param Limit: 返回数量，默认为 20，最大值为 100
        # @type Limit: Integer
        # @param Offset: 记录偏移量，默认值为0
        # @type Offset: Integer
        # @param OrderBy: 排序字段，取值范围：
        # <li> CREATETIME：创建时间</li>
        # <li> PERIODENDTIME：过期时间</li>
        # @type OrderBy: String
        # @param OrderByType: 排序类型，取值范围：
        # <li> ASC：升序排序 </li>
        # <li> DESC：降序排序 </li>
        # @type OrderByType: String
        # @param Filters: 搜索条件，若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        # @type Filters: Array

        attr_accessor :DbType, :Limit, :Offset, :OrderBy, :OrderByType, :Filters
        
        def initialize(dbtype=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil, filters=nil)
          @DbType = dbtype
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Filters = filters
        end

        def deserialize(params)
          @DbType = params['DbType']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              queryfilter_tmp = QueryFilter.new
              queryfilter_tmp.deserialize(i)
              @Filters << queryfilter_tmp
            end
          end
        end
      end

      # DescribeClusters返回参数结构体
      class DescribeClustersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集群数
        # @type TotalCount: Integer
        # @param ClusterSet: 集群列表
        # @type ClusterSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ClusterSet, :RequestId
        
        def initialize(totalcount=nil, clusterset=nil, requestid=nil)
          @TotalCount = totalcount
          @ClusterSet = clusterset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ClusterSet'].nil?
            @ClusterSet = []
            params['ClusterSet'].each do |i|
              cynosdbcluster_tmp = CynosdbCluster.new
              cynosdbcluster_tmp.deserialize(i)
              @ClusterSet << cynosdbcluster_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSecurityGroups请求参数结构体
      class DescribeDBSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例组ID
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
        # @param Groups: 安全组信息
        # @type Groups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Groups, :RequestId
        
        def initialize(groups=nil, requestid=nil)
          @Groups = groups
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceDetail请求参数结构体
      class DescribeInstanceDetailRequest < TencentCloud::Common::AbstractModel
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

      # DescribeInstanceDetail返回参数结构体
      class DescribeInstanceDetailResponse < TencentCloud::Common::AbstractModel
        # @param Detail: 实例详情
        # @type Detail: :class:`Tencentcloud::Cynosdb.v20190107.models.CynosdbInstanceDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Detail, :RequestId
        
        def initialize(detail=nil, requestid=nil)
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Detail'].nil?
            @Detail = CynosdbInstanceDetail.new
            @Detail.deserialize(params['Detail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceSlowQueries请求参数结构体
      class DescribeInstanceSlowQueriesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param StartTime: 事务开始最早时间
        # @type StartTime: String
        # @param EndTime: 事务开始最晚时间
        # @type EndTime: String
        # @param Limit: 限制条数
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Username: 用户名
        # @type Username: String
        # @param Host: 客户端host
        # @type Host: String
        # @param Database: 数据库名
        # @type Database: String
        # @param OrderBy: 排序字段，可选值：QueryTime,LockTime,RowsExamined,RowsSent
        # @type OrderBy: String
        # @param OrderByType: 排序类型，可选值：asc,desc
        # @type OrderByType: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :Limit, :Offset, :Username, :Host, :Database, :OrderBy, :OrderByType
        
        def initialize(instanceid=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, username=nil, host=nil, database=nil, orderby=nil, orderbytype=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @Username = username
          @Host = host
          @Database = database
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Username = params['Username']
          @Host = params['Host']
          @Database = params['Database']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeInstanceSlowQueries返回参数结构体
      class DescribeInstanceSlowQueriesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param SlowQueries: 慢查询记录
        # @type SlowQueries: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SlowQueries, :RequestId
        
        def initialize(totalcount=nil, slowqueries=nil, requestid=nil)
          @TotalCount = totalcount
          @SlowQueries = slowqueries
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SlowQueries'].nil?
            @SlowQueries = []
            params['SlowQueries'].each do |i|
              slowqueriesitem_tmp = SlowQueriesItem.new
              slowqueriesitem_tmp.deserialize(i)
              @SlowQueries << slowqueriesitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceSpecs请求参数结构体
      class DescribeInstanceSpecsRequest < TencentCloud::Common::AbstractModel
        # @param DbType: 数据库类型，取值范围:
        # <li> MYSQL </li>
        # @type DbType: String

        attr_accessor :DbType
        
        def initialize(dbtype=nil)
          @DbType = dbtype
        end

        def deserialize(params)
          @DbType = params['DbType']
        end
      end

      # DescribeInstanceSpecs返回参数结构体
      class DescribeInstanceSpecsResponse < TencentCloud::Common::AbstractModel
        # @param InstanceSpecSet: 规格信息
        # @type InstanceSpecSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceSpecSet, :RequestId
        
        def initialize(instancespecset=nil, requestid=nil)
          @InstanceSpecSet = instancespecset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceSpecSet'].nil?
            @InstanceSpecSet = []
            params['InstanceSpecSet'].each do |i|
              instancespec_tmp = InstanceSpec.new
              instancespec_tmp.deserialize(i)
              @InstanceSpecSet << instancespec_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为 20，最大值为 100
        # @type Limit: Integer
        # @param Offset: 记录偏移量，默认值为0
        # @type Offset: Integer
        # @param OrderBy: 排序字段，取值范围：
        # <li> CREATETIME：创建时间</li>
        # <li> PERIODENDTIME：过期时间</li>
        # @type OrderBy: String
        # @param OrderByType: 排序类型，取值范围：
        # <li> ASC：升序排序 </li>
        # <li> DESC：降序排序 </li>
        # @type OrderByType: String
        # @param Filters: 搜索条件，若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        # @type Filters: Array
        # @param DbType: 引擎类型：目前支持“MYSQL”， “POSTGRESQL”
        # @type DbType: String
        # @param Status: 实例状态, 可选值:
        # creating 创建中
        # running 运行中
        # isolating 隔离中
        # isolated 已隔离
        # activating 恢复中
        # offlining 下线中
        # offlined 已下线
        # @type Status: String
        # @param InstanceIds: 实例id列表
        # @type InstanceIds: Array

        attr_accessor :Limit, :Offset, :OrderBy, :OrderByType, :Filters, :DbType, :Status, :InstanceIds
        
        def initialize(limit=nil, offset=nil, orderby=nil, orderbytype=nil, filters=nil, dbtype=nil, status=nil, instanceids=nil)
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Filters = filters
          @DbType = dbtype
          @Status = status
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              queryfilter_tmp = QueryFilter.new
              queryfilter_tmp.deserialize(i)
              @Filters << queryfilter_tmp
            end
          end
          @DbType = params['DbType']
          @Status = params['Status']
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例个数
        # @type TotalCount: Integer
        # @param InstanceSet: 实例列表
        # @type InstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceSet, :RequestId
        
        def initialize(totalcount=nil, instanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceSet = instanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              cynosdbinstance_tmp = CynosdbInstance.new
              cynosdbinstance_tmp.deserialize(i)
              @InstanceSet << cynosdbinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMaintainPeriod请求参数结构体
      class DescribeMaintainPeriodRequest < TencentCloud::Common::AbstractModel
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

      # DescribeMaintainPeriod返回参数结构体
      class DescribeMaintainPeriodResponse < TencentCloud::Common::AbstractModel
        # @param MaintainWeekDays: 维护week days
        # @type MaintainWeekDays: Array
        # @param MaintainStartTime: 维护开始时间，单位秒
        # @type MaintainStartTime: Integer
        # @param MaintainDuration: 维护时长，单位秒
        # @type MaintainDuration: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaintainWeekDays, :MaintainStartTime, :MaintainDuration, :RequestId
        
        def initialize(maintainweekdays=nil, maintainstarttime=nil, maintainduration=nil, requestid=nil)
          @MaintainWeekDays = maintainweekdays
          @MaintainStartTime = maintainstarttime
          @MaintainDuration = maintainduration
          @RequestId = requestid
        end

        def deserialize(params)
          @MaintainWeekDays = params['MaintainWeekDays']
          @MaintainStartTime = params['MaintainStartTime']
          @MaintainDuration = params['MaintainDuration']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjectSecurityGroups请求参数结构体
      class DescribeProjectSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer

        attr_accessor :ProjectId
        
        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeProjectSecurityGroups返回参数结构体
      class DescribeProjectSecurityGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Groups: 安全组详情
        # @type Groups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Groups, :RequestId
        
        def initialize(groups=nil, requestid=nil)
          @Groups = groups
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourcesByDealName请求参数结构体
      class DescribeResourcesByDealNameRequest < TencentCloud::Common::AbstractModel
        # @param DealName: 计费订单ID（如果计费还没回调业务发货，可能出现错误码InvalidParameterValue.DealNameNotFound，这种情况需要业务重试DescribeResourcesByDealName接口直到成功）
        # @type DealName: String
        # @param DealNames: 计费订单ID列表，可以一次查询若干条订单ID对应资源信息（如果计费还没回调业务发货，可能出现错误码InvalidParameterValue.DealNameNotFound，这种情况需要业务重试DescribeResourcesByDealName接口直到成功）
        # @type DealNames: Array

        attr_accessor :DealName, :DealNames
        
        def initialize(dealname=nil, dealnames=nil)
          @DealName = dealname
          @DealNames = dealnames
        end

        def deserialize(params)
          @DealName = params['DealName']
          @DealNames = params['DealNames']
        end
      end

      # DescribeResourcesByDealName返回参数结构体
      class DescribeResourcesByDealNameResponse < TencentCloud::Common::AbstractModel
        # @param BillingResourceInfos: 计费资源id信息数组
        # @type BillingResourceInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BillingResourceInfos, :RequestId
        
        def initialize(billingresourceinfos=nil, requestid=nil)
          @BillingResourceInfos = billingresourceinfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BillingResourceInfos'].nil?
            @BillingResourceInfos = []
            params['BillingResourceInfos'].each do |i|
              billingresourceinfo_tmp = BillingResourceInfo.new
              billingresourceinfo_tmp.deserialize(i)
              @BillingResourceInfos << billingresourceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRollbackTimeRange请求参数结构体
      class DescribeRollbackTimeRangeRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeRollbackTimeRange返回参数结构体
      class DescribeRollbackTimeRangeResponse < TencentCloud::Common::AbstractModel
        # @param TimeRangeStart: 有效回归时间范围开始时间点
        # @type TimeRangeStart: String
        # @param TimeRangeEnd: 有效回归时间范围结束时间点
        # @type TimeRangeEnd: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TimeRangeStart, :TimeRangeEnd, :RequestId
        
        def initialize(timerangestart=nil, timerangeend=nil, requestid=nil)
          @TimeRangeStart = timerangestart
          @TimeRangeEnd = timerangeend
          @RequestId = requestid
        end

        def deserialize(params)
          @TimeRangeStart = params['TimeRangeStart']
          @TimeRangeEnd = params['TimeRangeEnd']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRollbackTimeValidity请求参数结构体
      class DescribeRollbackTimeValidityRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ExpectTime: 期望回滚的时间点
        # @type ExpectTime: String
        # @param ExpectTimeThresh: 回滚时间点的允许误差范围
        # @type ExpectTimeThresh: Integer

        attr_accessor :ClusterId, :ExpectTime, :ExpectTimeThresh
        
        def initialize(clusterid=nil, expecttime=nil, expecttimethresh=nil)
          @ClusterId = clusterid
          @ExpectTime = expecttime
          @ExpectTimeThresh = expecttimethresh
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ExpectTime = params['ExpectTime']
          @ExpectTimeThresh = params['ExpectTimeThresh']
        end
      end

      # DescribeRollbackTimeValidity返回参数结构体
      class DescribeRollbackTimeValidityResponse < TencentCloud::Common::AbstractModel
        # @param PoolId: 存储poolID
        # @type PoolId: Integer
        # @param QueryId: 回滚任务ID，后续按该时间点回滚时，需要传入
        # @type QueryId: Integer
        # @param Status: 时间点是否有效：pass，检测通过；fail，检测失败
        # @type Status: String
        # @param SuggestTime: 建议时间点，在Status为fail时，该值才有效
        # @type SuggestTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PoolId, :QueryId, :Status, :SuggestTime, :RequestId
        
        def initialize(poolid=nil, queryid=nil, status=nil, suggesttime=nil, requestid=nil)
          @PoolId = poolid
          @QueryId = queryid
          @Status = status
          @SuggestTime = suggesttime
          @RequestId = requestid
        end

        def deserialize(params)
          @PoolId = params['PoolId']
          @QueryId = params['QueryId']
          @Status = params['Status']
          @SuggestTime = params['SuggestTime']
          @RequestId = params['RequestId']
        end
      end

      # DisassociateSecurityGroups请求参数结构体
      class DisassociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例组ID数组
        # @type InstanceIds: Array
        # @param SecurityGroupIds: 要修改的安全组ID列表，一个或者多个安全组ID组成的数组。
        # @type SecurityGroupIds: Array
        # @param Zone: 可用区
        # @type Zone: String

        attr_accessor :InstanceIds, :SecurityGroupIds, :Zone
        
        def initialize(instanceids=nil, securitygroupids=nil, zone=nil)
          @InstanceIds = instanceids
          @SecurityGroupIds = securitygroupids
          @Zone = zone
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @SecurityGroupIds = params['SecurityGroupIds']
          @Zone = params['Zone']
        end
      end

      # DisassociateSecurityGroups返回参数结构体
      class DisassociateSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # ExportInstanceSlowQueries请求参数结构体
      class ExportInstanceSlowQueriesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param StartTime: 事务开始最早时间
        # @type StartTime: String
        # @param EndTime: 事务开始最晚时间
        # @type EndTime: String
        # @param Limit: 限制条数
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Username: 用户名
        # @type Username: String
        # @param Host: 客户端host
        # @type Host: String
        # @param Database: 数据库名
        # @type Database: String
        # @param FileType: 文件类型，可选值：csv, original
        # @type FileType: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :Limit, :Offset, :Username, :Host, :Database, :FileType
        
        def initialize(instanceid=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, username=nil, host=nil, database=nil, filetype=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @Username = username
          @Host = host
          @Database = database
          @FileType = filetype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Username = params['Username']
          @Host = params['Host']
          @Database = params['Database']
          @FileType = params['FileType']
        end
      end

      # ExportInstanceSlowQueries返回参数结构体
      class ExportInstanceSlowQueriesResponse < TencentCloud::Common::AbstractModel
        # @param FileContent: 慢查询导出内容
        # @type FileContent: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileContent, :RequestId
        
        def initialize(filecontent=nil, requestid=nil)
          @FileContent = filecontent
          @RequestId = requestid
        end

        def deserialize(params)
          @FileContent = params['FileContent']
          @RequestId = params['RequestId']
        end
      end

      # GrantAccountPrivileges请求参数结构体
      class GrantAccountPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Account: 账号信息
        # @type Account: :class:`Tencentcloud::Cynosdb.v20190107.models.InputAccount`
        # @param DbTablePrivileges: 数据库表权限码数组
        # @type DbTablePrivileges: Array
        # @param DbTables: 数据库表信息
        # @type DbTables: Array

        attr_accessor :ClusterId, :Account, :DbTablePrivileges, :DbTables
        
        def initialize(clusterid=nil, account=nil, dbtableprivileges=nil, dbtables=nil)
          @ClusterId = clusterid
          @Account = account
          @DbTablePrivileges = dbtableprivileges
          @DbTables = dbtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['Account'].nil?
            @Account = InputAccount.new
            @Account.deserialize(params['Account'])
          end
          @DbTablePrivileges = params['DbTablePrivileges']
          unless params['DbTables'].nil?
            @DbTables = []
            params['DbTables'].each do |i|
              dbtable_tmp = DbTable.new
              dbtable_tmp.deserialize(i)
              @DbTables << dbtable_tmp
            end
          end
        end
      end

      # GrantAccountPrivileges返回参数结构体
      class GrantAccountPrivilegesResponse < TencentCloud::Common::AbstractModel
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

      # 账号，包含accountName和host
      class InputAccount < TencentCloud::Common::AbstractModel
        # @param AccountName: 账号
        # @type AccountName: String
        # @param Host: 主机，默认‘%’
        # @type Host: String

        attr_accessor :AccountName, :Host
        
        def initialize(accountname=nil, host=nil)
          @AccountName = accountname
          @Host = host
        end

        def deserialize(params)
          @AccountName = params['AccountName']
          @Host = params['Host']
        end
      end

      # InquirePriceCreate请求参数结构体
      class InquirePriceCreateRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区,每个地域提供最佳实践
        # @type Zone: String
        # @param GoodsNum: 购买商品数量
        # @type GoodsNum: Integer
        # @param InstancePayMode: 实例购买类型，可选值为：PREPAID, POSTPAID, SERVERLESS
        # @type InstancePayMode: String
        # @param StoragePayMode: 存储购买类型，可选值为：PREPAID, POSTPAID
        # @type StoragePayMode: String
        # @param Cpu: CPU核数，PREPAID与POSTPAID实例类型必传
        # @type Cpu: Integer
        # @param Memory: 内存大小，单位G，PREPAID与POSTPAID实例类型必传
        # @type Memory: Integer
        # @param Ccu: Ccu大小，serverless类型必传
        # @type Ccu: Float
        # @param StorageLimit: 存储大小，PREPAID存储类型必传
        # @type StorageLimit: Integer
        # @param TimeSpan: 购买时长，PREPAID购买类型必传
        # @type TimeSpan: Integer
        # @param TimeUnit: 时长单位，可选值为：m,d。PREPAID购买类型必传
        # @type TimeUnit: String

        attr_accessor :Zone, :GoodsNum, :InstancePayMode, :StoragePayMode, :Cpu, :Memory, :Ccu, :StorageLimit, :TimeSpan, :TimeUnit
        
        def initialize(zone=nil, goodsnum=nil, instancepaymode=nil, storagepaymode=nil, cpu=nil, memory=nil, ccu=nil, storagelimit=nil, timespan=nil, timeunit=nil)
          @Zone = zone
          @GoodsNum = goodsnum
          @InstancePayMode = instancepaymode
          @StoragePayMode = storagepaymode
          @Cpu = cpu
          @Memory = memory
          @Ccu = ccu
          @StorageLimit = storagelimit
          @TimeSpan = timespan
          @TimeUnit = timeunit
        end

        def deserialize(params)
          @Zone = params['Zone']
          @GoodsNum = params['GoodsNum']
          @InstancePayMode = params['InstancePayMode']
          @StoragePayMode = params['StoragePayMode']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Ccu = params['Ccu']
          @StorageLimit = params['StorageLimit']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
        end
      end

      # InquirePriceCreate返回参数结构体
      class InquirePriceCreateResponse < TencentCloud::Common::AbstractModel
        # @param InstancePrice: 实例价格
        # @type InstancePrice: :class:`Tencentcloud::Cynosdb.v20190107.models.TradePrice`
        # @param StoragePrice: 存储价格
        # @type StoragePrice: :class:`Tencentcloud::Cynosdb.v20190107.models.TradePrice`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstancePrice, :StoragePrice, :RequestId
        
        def initialize(instanceprice=nil, storageprice=nil, requestid=nil)
          @InstancePrice = instanceprice
          @StoragePrice = storageprice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstancePrice'].nil?
            @InstancePrice = TradePrice.new
            @InstancePrice.deserialize(params['InstancePrice'])
          end
          unless params['StoragePrice'].nil?
            @StoragePrice = TradePrice.new
            @StoragePrice.deserialize(params['StoragePrice'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 实例可售卖规格详细信息，创建实例时Cpu/Memory确定实例规格，存储可选大小为[MinStorageSize,MaxStorageSize]
      class InstanceSpec < TencentCloud::Common::AbstractModel
        # @param Cpu: 实例CPU，单位：核
        # @type Cpu: Integer
        # @param Memory: 实例内存，单位：GB
        # @type Memory: Integer
        # @param MaxStorageSize: 实例最大可用存储，单位：GB
        # @type MaxStorageSize: Integer
        # @param MinStorageSize: 实例最小可用存储，单位：GB
        # @type MinStorageSize: Integer

        attr_accessor :Cpu, :Memory, :MaxStorageSize, :MinStorageSize
        
        def initialize(cpu=nil, memory=nil, maxstoragesize=nil, minstoragesize=nil)
          @Cpu = cpu
          @Memory = memory
          @MaxStorageSize = maxstoragesize
          @MinStorageSize = minstoragesize
        end

        def deserialize(params)
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @MaxStorageSize = params['MaxStorageSize']
          @MinStorageSize = params['MinStorageSize']
        end
      end

      # IsolateCluster请求参数结构体
      class IsolateClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param DbType: 该参数已废用
        # @type DbType: String

        attr_accessor :ClusterId, :DbType
        
        def initialize(clusterid=nil, dbtype=nil)
          @ClusterId = clusterid
          @DbType = dbtype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @DbType = params['DbType']
        end
      end

      # IsolateCluster返回参数结构体
      class IsolateClusterResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: Integer
        # @param DealNames: 退款订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :DealNames, :RequestId
        
        def initialize(flowid=nil, dealnames=nil, requestid=nil)
          @FlowId = flowid
          @DealNames = dealnames
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @DealNames = params['DealNames']
          @RequestId = params['RequestId']
        end
      end

      # IsolateInstance请求参数结构体
      class IsolateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIdList: 实例ID数组
        # @type InstanceIdList: Array
        # @param DbType: 该参数已废弃
        # @type DbType: String

        attr_accessor :ClusterId, :InstanceIdList, :DbType
        
        def initialize(clusterid=nil, instanceidlist=nil, dbtype=nil)
          @ClusterId = clusterid
          @InstanceIdList = instanceidlist
          @DbType = dbtype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIdList = params['InstanceIdList']
          @DbType = params['DbType']
        end
      end

      # IsolateInstance返回参数结构体
      class IsolateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流id
        # @type FlowId: Integer
        # @param DealNames: 隔离实例的订单id（预付费实例）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :DealNames, :RequestId
        
        def initialize(flowid=nil, dealnames=nil, requestid=nil)
          @FlowId = flowid
          @DealNames = dealnames
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @DealNames = params['DealNames']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAccountParams请求参数结构体
      class ModifyAccountParamsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id，不超过32个字符
        # @type ClusterId: String
        # @param Account: 账号信息
        # @type Account: :class:`Tencentcloud::Cynosdb.v20190107.models.InputAccount`
        # @param AccountParams: 数据库表权限数组,当前仅支持参数：max_user_connections，max_user_connections不能大于10240
        # @type AccountParams: Array

        attr_accessor :ClusterId, :Account, :AccountParams
        
        def initialize(clusterid=nil, account=nil, accountparams=nil)
          @ClusterId = clusterid
          @Account = account
          @AccountParams = accountparams
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['Account'].nil?
            @Account = InputAccount.new
            @Account.deserialize(params['Account'])
          end
          unless params['AccountParams'].nil?
            @AccountParams = []
            params['AccountParams'].each do |i|
              accountparam_tmp = AccountParam.new
              accountparam_tmp.deserialize(i)
              @AccountParams << accountparam_tmp
            end
          end
        end
      end

      # ModifyAccountParams返回参数结构体
      class ModifyAccountParamsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBackupConfig请求参数结构体
      class ModifyBackupConfigRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param BackupTimeBeg: 表示全备开始时间，[0-24*3600]， 如0:00, 1:00, 2:00 分别为 0，3600， 7200
        # @type BackupTimeBeg: Integer
        # @param BackupTimeEnd: 表示全备结束时间，[0-24*3600]， 如0:00, 1:00, 2:00 分别为 0，3600， 7200
        # @type BackupTimeEnd: Integer
        # @param ReserveDuration: 表示保留备份时长, 单位秒，超过该时间将被清理, 七天表示为3600*24*7=604800，最大为158112000
        # @type ReserveDuration: Integer
        # @param BackupFreq: 该参数目前不支持修改，无需填写。备份频率，长度为7的数组，分别对应周一到周日的备份方式，full-全量备份，increment-增量备份
        # @type BackupFreq: Array
        # @param BackupType: 该参数目前不支持修改，无需填写。备份方式，logic-逻辑备份，snapshot-快照备份
        # @type BackupType: String

        attr_accessor :ClusterId, :BackupTimeBeg, :BackupTimeEnd, :ReserveDuration, :BackupFreq, :BackupType
        
        def initialize(clusterid=nil, backuptimebeg=nil, backuptimeend=nil, reserveduration=nil, backupfreq=nil, backuptype=nil)
          @ClusterId = clusterid
          @BackupTimeBeg = backuptimebeg
          @BackupTimeEnd = backuptimeend
          @ReserveDuration = reserveduration
          @BackupFreq = backupfreq
          @BackupType = backuptype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @BackupTimeBeg = params['BackupTimeBeg']
          @BackupTimeEnd = params['BackupTimeEnd']
          @ReserveDuration = params['ReserveDuration']
          @BackupFreq = params['BackupFreq']
          @BackupType = params['BackupType']
        end
      end

      # ModifyBackupConfig返回参数结构体
      class ModifyBackupConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBackupName请求参数结构体
      class ModifyBackupNameRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param BackupId: 备份文件ID
        # @type BackupId: Integer
        # @param BackupName: 备注名，长度不能超过60个字符
        # @type BackupName: String

        attr_accessor :ClusterId, :BackupId, :BackupName
        
        def initialize(clusterid=nil, backupid=nil, backupname=nil)
          @ClusterId = clusterid
          @BackupId = backupid
          @BackupName = backupname
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @BackupId = params['BackupId']
          @BackupName = params['BackupName']
        end
      end

      # ModifyBackupName返回参数结构体
      class ModifyBackupNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyClusterName请求参数结构体
      class ModifyClusterNameRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 集群名
        # @type ClusterName: String

        attr_accessor :ClusterId, :ClusterName
        
        def initialize(clusterid=nil, clustername=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
        end
      end

      # ModifyClusterName返回参数结构体
      class ModifyClusterNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyClusterParam请求参数结构体
      class ModifyClusterParamRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ParamList: 要修改的参数列表。每一个元素是ParamName、CurrentValue和OldValue的组合。ParamName是参数名称，CurrentValue是当前值，OldValue是之前值且不做校验
        # @type ParamList: Array
        # @param IsInMaintainPeriod: 维护期间执行-yes,立即执行-no
        # @type IsInMaintainPeriod: String

        attr_accessor :ClusterId, :ParamList, :IsInMaintainPeriod
        
        def initialize(clusterid=nil, paramlist=nil, isinmaintainperiod=nil)
          @ClusterId = clusterid
          @ParamList = paramlist
          @IsInMaintainPeriod = isinmaintainperiod
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              paramitem_tmp = ParamItem.new
              paramitem_tmp.deserialize(i)
              @ParamList << paramitem_tmp
            end
          end
          @IsInMaintainPeriod = params['IsInMaintainPeriod']
        end
      end

      # ModifyClusterParam返回参数结构体
      class ModifyClusterParamResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步请求Id，用于查询结果
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

      # ModifyDBInstanceSecurityGroups请求参数结构体
      class ModifyDBInstanceSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例组ID
        # @type InstanceId: String
        # @param SecurityGroupIds: 要修改的安全组ID列表，一个或者多个安全组ID组成的数组。
        # @type SecurityGroupIds: Array
        # @param Zone: 可用区
        # @type Zone: String

        attr_accessor :InstanceId, :SecurityGroupIds, :Zone
        
        def initialize(instanceid=nil, securitygroupids=nil, zone=nil)
          @InstanceId = instanceid
          @SecurityGroupIds = securitygroupids
          @Zone = zone
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SecurityGroupIds = params['SecurityGroupIds']
          @Zone = params['Zone']
        end
      end

      # ModifyDBInstanceSecurityGroups返回参数结构体
      class ModifyDBInstanceSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstanceName请求参数结构体
      class ModifyInstanceNameRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
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

      # ModifyMaintainPeriodConfig请求参数结构体
      class ModifyMaintainPeriodConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param MaintainStartTime: 维护开始时间，单位为秒，如3:00为10800
        # @type MaintainStartTime: Integer
        # @param MaintainDuration: 维护持续时间，单位为秒，如1小时为3600
        # @type MaintainDuration: Integer
        # @param MaintainWeekDays: 每周维护日期，日期取值范围[Mon, Tue, Wed, Thu, Fri, Sat, Sun]
        # @type MaintainWeekDays: Array

        attr_accessor :InstanceId, :MaintainStartTime, :MaintainDuration, :MaintainWeekDays
        
        def initialize(instanceid=nil, maintainstarttime=nil, maintainduration=nil, maintainweekdays=nil)
          @InstanceId = instanceid
          @MaintainStartTime = maintainstarttime
          @MaintainDuration = maintainduration
          @MaintainWeekDays = maintainweekdays
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @MaintainStartTime = params['MaintainStartTime']
          @MaintainDuration = params['MaintainDuration']
          @MaintainWeekDays = params['MaintainWeekDays']
        end
      end

      # ModifyMaintainPeriodConfig返回参数结构体
      class ModifyMaintainPeriodConfigResponse < TencentCloud::Common::AbstractModel
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

      # 网络信息
      class NetAddr < TencentCloud::Common::AbstractModel
        # @param Vip: 内网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip: String
        # @param Vport: 内网端口号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vport: Integer
        # @param WanDomain: 外网域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanDomain: String
        # @param WanPort: 外网端口号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanPort: Integer
        # @param NetType: 网络类型（ro-只读,rw/ha-读写）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetType: String

        attr_accessor :Vip, :Vport, :WanDomain, :WanPort, :NetType
        
        def initialize(vip=nil, vport=nil, wandomain=nil, wanport=nil, nettype=nil)
          @Vip = vip
          @Vport = vport
          @WanDomain = wandomain
          @WanPort = wanport
          @NetType = nettype
        end

        def deserialize(params)
          @Vip = params['Vip']
          @Vport = params['Vport']
          @WanDomain = params['WanDomain']
          @WanPort = params['WanPort']
          @NetType = params['NetType']
        end
      end

      # 新创建的账号
      class NewAccount < TencentCloud::Common::AbstractModel
        # @param AccountName: 账户名
        # @type AccountName: String
        # @param AccountPassword: 密码
        # @type AccountPassword: String
        # @param Host: 主机
        # @type Host: String
        # @param Description: 描述
        # @type Description: String

        attr_accessor :AccountName, :AccountPassword, :Host, :Description
        
        def initialize(accountname=nil, accountpassword=nil, host=nil, description=nil)
          @AccountName = accountname
          @AccountPassword = accountpassword
          @Host = host
          @Description = description
        end

        def deserialize(params)
          @AccountName = params['AccountName']
          @AccountPassword = params['AccountPassword']
          @Host = params['Host']
          @Description = params['Description']
        end
      end

      # 任务信息
      class ObjectTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务自增ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param TaskType: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: String
        # @param TaskStatus: 任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskStatus: String
        # @param ObjectId: 任务ID（集群ID|实例组ID|实例ID）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectId: String
        # @param ObjectType: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectType: String

        attr_accessor :TaskId, :TaskType, :TaskStatus, :ObjectId, :ObjectType
        
        def initialize(taskid=nil, tasktype=nil, taskstatus=nil, objectid=nil, objecttype=nil)
          @TaskId = taskid
          @TaskType = tasktype
          @TaskStatus = taskstatus
          @ObjectId = objectid
          @ObjectType = objecttype
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskType = params['TaskType']
          @TaskStatus = params['TaskStatus']
          @ObjectId = params['ObjectId']
          @ObjectType = params['ObjectType']
        end
      end

      # OfflineCluster请求参数结构体
      class OfflineClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # OfflineCluster返回参数结构体
      class OfflineClusterResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # OfflineInstance请求参数结构体
      class OfflineInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIdList: 实例ID数组
        # @type InstanceIdList: Array

        attr_accessor :ClusterId, :InstanceIdList
        
        def initialize(clusterid=nil, instanceidlist=nil)
          @ClusterId = clusterid
          @InstanceIdList = instanceidlist
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIdList = params['InstanceIdList']
        end
      end

      # OfflineInstance返回参数结构体
      class OfflineInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 修改参数时，传入参数描述
      class ParamItem < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名称
        # @type ParamName: String
        # @param CurrentValue: 当前值
        # @type CurrentValue: String
        # @param OldValue: 原有值
        # @type OldValue: String

        attr_accessor :ParamName, :CurrentValue, :OldValue
        
        def initialize(paramname=nil, currentvalue=nil, oldvalue=nil)
          @ParamName = paramname
          @CurrentValue = currentvalue
          @OldValue = oldvalue
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @CurrentValue = params['CurrentValue']
          @OldValue = params['OldValue']
        end
      end

      # PauseServerless请求参数结构体
      class PauseServerlessRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ForcePause: 是否强制暂停，忽略当前的用户链接  0:不强制  1:强制， 默认为1
        # @type ForcePause: Integer

        attr_accessor :ClusterId, :ForcePause
        
        def initialize(clusterid=nil, forcepause=nil)
          @ClusterId = clusterid
          @ForcePause = forcepause
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ForcePause = params['ForcePause']
        end
      end

      # PauseServerless返回参数结构体
      class PauseServerlessResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 安全组规则
      class PolicyRule < TencentCloud::Common::AbstractModel
        # @param Action: 策略，ACCEPT或者DROP
        # @type Action: String
        # @param CidrIp: 来源Ip或Ip段，例如192.168.0.0/16
        # @type CidrIp: String
        # @param PortRange: 端口
        # @type PortRange: String
        # @param IpProtocol: 网络协议，支持udp、tcp等
        # @type IpProtocol: String
        # @param ServiceModule: 协议端口ID或者协议端口组ID。
        # @type ServiceModule: String
        # @param AddressModule: IP地址ID或者ID地址组ID。
        # @type AddressModule: String
        # @param Id: id
        # @type Id: String
        # @param Desc: 描述
        # @type Desc: String

        attr_accessor :Action, :CidrIp, :PortRange, :IpProtocol, :ServiceModule, :AddressModule, :Id, :Desc
        
        def initialize(action=nil, cidrip=nil, portrange=nil, ipprotocol=nil, servicemodule=nil, addressmodule=nil, id=nil, desc=nil)
          @Action = action
          @CidrIp = cidrip
          @PortRange = portrange
          @IpProtocol = ipprotocol
          @ServiceModule = servicemodule
          @AddressModule = addressmodule
          @Id = id
          @Desc = desc
        end

        def deserialize(params)
          @Action = params['Action']
          @CidrIp = params['CidrIp']
          @PortRange = params['PortRange']
          @IpProtocol = params['IpProtocol']
          @ServiceModule = params['ServiceModule']
          @AddressModule = params['AddressModule']
          @Id = params['Id']
          @Desc = params['Desc']
        end
      end

      # 查询过滤器
      class QueryFilter < TencentCloud::Common::AbstractModel
        # @param Names: 搜索字段，目前支持："InstanceId", "ProjectId", "InstanceName", "Vip"
        # @type Names: Array
        # @param Values: 搜索字符串
        # @type Values: Array
        # @param ExactMatch: 是否精确匹配
        # @type ExactMatch: Boolean
        # @param Name: 搜索字段
        # @type Name: String

        attr_accessor :Names, :Values, :ExactMatch, :Name
        
        def initialize(names=nil, values=nil, exactmatch=nil, name=nil)
          @Names = names
          @Values = values
          @ExactMatch = exactmatch
          @Name = name
        end

        def deserialize(params)
          @Names = params['Names']
          @Values = params['Values']
          @ExactMatch = params['ExactMatch']
          @Name = params['Name']
        end
      end

      # ResumeServerless请求参数结构体
      class ResumeServerlessRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # ResumeServerless返回参数结构体
      class ResumeServerlessResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # RevokeAccountPrivileges请求参数结构体
      class RevokeAccountPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Account: 账号信息
        # @type Account: :class:`Tencentcloud::Cynosdb.v20190107.models.InputAccount`
        # @param DbTablePrivileges: 数据库表权限数组
        # @type DbTablePrivileges: Array
        # @param DbTables: 数据库表信息
        # @type DbTables: Array

        attr_accessor :ClusterId, :Account, :DbTablePrivileges, :DbTables
        
        def initialize(clusterid=nil, account=nil, dbtableprivileges=nil, dbtables=nil)
          @ClusterId = clusterid
          @Account = account
          @DbTablePrivileges = dbtableprivileges
          @DbTables = dbtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['Account'].nil?
            @Account = InputAccount.new
            @Account.deserialize(params['Account'])
          end
          @DbTablePrivileges = params['DbTablePrivileges']
          unless params['DbTables'].nil?
            @DbTables = []
            params['DbTables'].each do |i|
              dbtable_tmp = DbTable.new
              dbtable_tmp.deserialize(i)
              @DbTables << dbtable_tmp
            end
          end
        end
      end

      # RevokeAccountPrivileges返回参数结构体
      class RevokeAccountPrivilegesResponse < TencentCloud::Common::AbstractModel
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

      # RollBackCluster请求参数结构体
      class RollBackClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param RollbackStrategy: 回档策略 timeRollback-按时间点回档 snapRollback-按备份文件回档
        # @type RollbackStrategy: String
        # @param RollbackId: 回档ID
        # @type RollbackId: Integer
        # @param ExpectTime: 期望回档时间
        # @type ExpectTime: String
        # @param ExpectTimeThresh: 期望阈值
        # @type ExpectTimeThresh: Integer
        # @param RollbackDatabases: 回档数据库列表
        # @type RollbackDatabases: Array
        # @param RollbackTables: 回档数据库表
        # @type RollbackTables: Array

        attr_accessor :ClusterId, :RollbackStrategy, :RollbackId, :ExpectTime, :ExpectTimeThresh, :RollbackDatabases, :RollbackTables
        
        def initialize(clusterid=nil, rollbackstrategy=nil, rollbackid=nil, expecttime=nil, expecttimethresh=nil, rollbackdatabases=nil, rollbacktables=nil)
          @ClusterId = clusterid
          @RollbackStrategy = rollbackstrategy
          @RollbackId = rollbackid
          @ExpectTime = expecttime
          @ExpectTimeThresh = expecttimethresh
          @RollbackDatabases = rollbackdatabases
          @RollbackTables = rollbacktables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @RollbackStrategy = params['RollbackStrategy']
          @RollbackId = params['RollbackId']
          @ExpectTime = params['ExpectTime']
          @ExpectTimeThresh = params['ExpectTimeThresh']
          unless params['RollbackDatabases'].nil?
            @RollbackDatabases = []
            params['RollbackDatabases'].each do |i|
              rollbackdatabase_tmp = RollbackDatabase.new
              rollbackdatabase_tmp.deserialize(i)
              @RollbackDatabases << rollbackdatabase_tmp
            end
          end
          unless params['RollbackTables'].nil?
            @RollbackTables = []
            params['RollbackTables'].each do |i|
              rollbacktable_tmp = RollbackTable.new
              rollbacktable_tmp.deserialize(i)
              @RollbackTables << rollbacktable_tmp
            end
          end
        end
      end

      # RollBackCluster返回参数结构体
      class RollBackClusterResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 回滚数据库信息
      class RollbackDatabase < TencentCloud::Common::AbstractModel
        # @param OldDatabase: 旧数据库名称
        # @type OldDatabase: String
        # @param NewDatabase: 新数据库名称
        # @type NewDatabase: String

        attr_accessor :OldDatabase, :NewDatabase
        
        def initialize(olddatabase=nil, newdatabase=nil)
          @OldDatabase = olddatabase
          @NewDatabase = newdatabase
        end

        def deserialize(params)
          @OldDatabase = params['OldDatabase']
          @NewDatabase = params['NewDatabase']
        end
      end

      # 回档数据库及表
      class RollbackTable < TencentCloud::Common::AbstractModel
        # @param Database: 数据库名称
        # @type Database: String
        # @param Tables: 数据库表
        # @type Tables: Array

        attr_accessor :Database, :Tables
        
        def initialize(database=nil, tables=nil)
          @Database = database
          @Tables = tables
        end

        def deserialize(params)
          @Database = params['Database']
          unless params['Tables'].nil?
            @Tables = []
            params['Tables'].each do |i|
              rollbacktableinfo_tmp = RollbackTableInfo.new
              rollbacktableinfo_tmp.deserialize(i)
              @Tables << rollbacktableinfo_tmp
            end
          end
        end
      end

      # 回档表信息
      class RollbackTableInfo < TencentCloud::Common::AbstractModel
        # @param OldTable: 旧表名称
        # @type OldTable: String
        # @param NewTable: 新表名称
        # @type NewTable: String

        attr_accessor :OldTable, :NewTable
        
        def initialize(oldtable=nil, newtable=nil)
          @OldTable = oldtable
          @NewTable = newtable
        end

        def deserialize(params)
          @OldTable = params['OldTable']
          @NewTable = params['NewTable']
        end
      end

      # 安全组详情
      class SecurityGroup < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param CreateTime: 创建时间，时间格式：yyyy-mm-dd hh:mm:ss
        # @type CreateTime: String
        # @param Inbound: 入站规则
        # @type Inbound: Array
        # @param Outbound: 出站规则
        # @type Outbound: Array
        # @param SecurityGroupId: 安全组ID
        # @type SecurityGroupId: String
        # @param SecurityGroupName: 安全组名称
        # @type SecurityGroupName: String
        # @param SecurityGroupRemark: 安全组备注
        # @type SecurityGroupRemark: String

        attr_accessor :ProjectId, :CreateTime, :Inbound, :Outbound, :SecurityGroupId, :SecurityGroupName, :SecurityGroupRemark
        
        def initialize(projectid=nil, createtime=nil, inbound=nil, outbound=nil, securitygroupid=nil, securitygroupname=nil, securitygroupremark=nil)
          @ProjectId = projectid
          @CreateTime = createtime
          @Inbound = inbound
          @Outbound = outbound
          @SecurityGroupId = securitygroupid
          @SecurityGroupName = securitygroupname
          @SecurityGroupRemark = securitygroupremark
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
          @SecurityGroupRemark = params['SecurityGroupRemark']
        end
      end

      # SetRenewFlag请求参数结构体
      class SetRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 需操作的实例ID
        # @type ResourceIds: Array
        # @param AutoRenewFlag: 自动续费标志位，续费标记 0:正常续费  1:自动续费 2:到期不续
        # @type AutoRenewFlag: Integer

        attr_accessor :ResourceIds, :AutoRenewFlag
        
        def initialize(resourceids=nil, autorenewflag=nil)
          @ResourceIds = resourceids
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # SetRenewFlag返回参数结构体
      class SetRenewFlagResponse < TencentCloud::Common::AbstractModel
        # @param Count: 操作成功实例数
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 实例慢查询信息
      class SlowQueriesItem < TencentCloud::Common::AbstractModel
        # @param Timestamp: 执行时间戳
        # @type Timestamp: Integer
        # @param QueryTime: 执行时长，单位秒
        # @type QueryTime: Float
        # @param SqlText: sql语句
        # @type SqlText: String
        # @param UserHost: 客户端host
        # @type UserHost: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param Database: 数据库名
        # @type Database: String
        # @param LockTime: 锁时长，单位秒
        # @type LockTime: Float
        # @param RowsExamined: 扫描行数
        # @type RowsExamined: Integer
        # @param RowsSent: 返回行数
        # @type RowsSent: Integer
        # @param SqlTemplate: sql模版
        # @type SqlTemplate: String
        # @param SqlMd5: sql语句md5
        # @type SqlMd5: String

        attr_accessor :Timestamp, :QueryTime, :SqlText, :UserHost, :UserName, :Database, :LockTime, :RowsExamined, :RowsSent, :SqlTemplate, :SqlMd5
        
        def initialize(timestamp=nil, querytime=nil, sqltext=nil, userhost=nil, username=nil, database=nil, locktime=nil, rowsexamined=nil, rowssent=nil, sqltemplate=nil, sqlmd5=nil)
          @Timestamp = timestamp
          @QueryTime = querytime
          @SqlText = sqltext
          @UserHost = userhost
          @UserName = username
          @Database = database
          @LockTime = locktime
          @RowsExamined = rowsexamined
          @RowsSent = rowssent
          @SqlTemplate = sqltemplate
          @SqlMd5 = sqlmd5
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
          @SqlTemplate = params['SqlTemplate']
          @SqlMd5 = params['SqlMd5']
        end
      end

      # mysql表权限
      class TablePrivileges < TencentCloud::Common::AbstractModel
        # @param Db: 数据库名
        # @type Db: String
        # @param TableName: 表名
        # @type TableName: String
        # @param Privileges: 权限列表
        # @type Privileges: Array

        attr_accessor :Db, :TableName, :Privileges
        
        def initialize(db=nil, tablename=nil, privileges=nil)
          @Db = db
          @TableName = tablename
          @Privileges = privileges
        end

        def deserialize(params)
          @Db = params['Db']
          @TableName = params['TableName']
          @Privileges = params['Privileges']
        end
      end

      # 集群绑定的标签信息，包含标签键TagKey和标签值TagValue
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

      # 计费询价结果
      class TradePrice < TencentCloud::Common::AbstractModel
        # @param TotalPrice: 预付费模式下资源总价，不包含优惠，单位:分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPrice: Integer
        # @param Discount: 总的折扣，100表示100%不打折
        # @type Discount: Float
        # @param TotalPriceDiscount: 预付费模式下的优惠后总价, 单位: 分,例如用户享有折扣 =TotalPrice × Discount
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPriceDiscount: Integer
        # @param UnitPrice: 后付费模式下的单位资源价格，不包含优惠，单位:分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPrice: Integer
        # @param UnitPriceDiscount: 优惠后后付费模式下的单位资源价格, 单位: 分,例如用户享有折扣=UnitPricet × Discount
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceDiscount: Integer
        # @param ChargeUnit: 计费价格单位
        # @type ChargeUnit: String

        attr_accessor :TotalPrice, :Discount, :TotalPriceDiscount, :UnitPrice, :UnitPriceDiscount, :ChargeUnit
        
        def initialize(totalprice=nil, discount=nil, totalpricediscount=nil, unitprice=nil, unitpricediscount=nil, chargeunit=nil)
          @TotalPrice = totalprice
          @Discount = discount
          @TotalPriceDiscount = totalpricediscount
          @UnitPrice = unitprice
          @UnitPriceDiscount = unitpricediscount
          @ChargeUnit = chargeunit
        end

        def deserialize(params)
          @TotalPrice = params['TotalPrice']
          @Discount = params['Discount']
          @TotalPriceDiscount = params['TotalPriceDiscount']
          @UnitPrice = params['UnitPrice']
          @UnitPriceDiscount = params['UnitPriceDiscount']
          @ChargeUnit = params['ChargeUnit']
        end
      end

      # UpgradeInstance请求参数结构体
      class UpgradeInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Cpu: 数据库CPU
        # @type Cpu: Integer
        # @param Memory: 数据库内存，单位GB
        # @type Memory: Integer
        # @param UpgradeType: 升级类型：upgradeImmediate，upgradeInMaintain
        # @type UpgradeType: String
        # @param StorageLimit: 该参数已废弃
        # @type StorageLimit: Integer
        # @param AutoVoucher: 是否自动选择代金券 1是 0否 默认为0
        # @type AutoVoucher: Integer
        # @param DbType: 该参数已废弃
        # @type DbType: String
        # @param DealMode: 交易模式 0-下单并支付 1-下单
        # @type DealMode: Integer

        attr_accessor :InstanceId, :Cpu, :Memory, :UpgradeType, :StorageLimit, :AutoVoucher, :DbType, :DealMode
        
        def initialize(instanceid=nil, cpu=nil, memory=nil, upgradetype=nil, storagelimit=nil, autovoucher=nil, dbtype=nil, dealmode=nil)
          @InstanceId = instanceid
          @Cpu = cpu
          @Memory = memory
          @UpgradeType = upgradetype
          @StorageLimit = storagelimit
          @AutoVoucher = autovoucher
          @DbType = dbtype
          @DealMode = dealmode
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @UpgradeType = params['UpgradeType']
          @StorageLimit = params['StorageLimit']
          @AutoVoucher = params['AutoVoucher']
          @DbType = params['DbType']
          @DealMode = params['DealMode']
        end
      end

      # UpgradeInstance返回参数结构体
      class UpgradeInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TranId: 冻结流水ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranId: String
        # @param BigDealIds: 大订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BigDealIds: Array
        # @param DealNames: 订单号
        # @type DealNames: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TranId, :BigDealIds, :DealNames, :RequestId
        
        def initialize(tranid=nil, bigdealids=nil, dealnames=nil, requestid=nil)
          @TranId = tranid
          @BigDealIds = bigdealids
          @DealNames = dealnames
          @RequestId = requestid
        end

        def deserialize(params)
          @TranId = params['TranId']
          @BigDealIds = params['BigDealIds']
          @DealNames = params['DealNames']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

