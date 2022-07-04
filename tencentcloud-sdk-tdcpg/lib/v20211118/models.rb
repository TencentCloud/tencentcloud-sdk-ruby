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
  module Tdcpg
    module V20211118
      # 数据库账户信息
      class Account < TencentCloud::Common::AbstractModel
        # @param AccountName: 数据库账号名
        # @type AccountName: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param AccountDescription: 数据库账号描述
        # @type AccountDescription: String
        # @param CreateTime: 数据库账号创建时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        # @type CreateTime: String
        # @param UpdateTime: 数据库账号信息更新时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        # @type UpdateTime: String

        attr_accessor :AccountName, :ClusterId, :AccountDescription, :CreateTime, :UpdateTime
        
        def initialize(accountname=nil, clusterid=nil, accountdescription=nil, createtime=nil, updatetime=nil)
          @AccountName = accountname
          @ClusterId = clusterid
          @AccountDescription = accountdescription
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @AccountName = params['AccountName']
          @ClusterId = params['ClusterId']
          @AccountDescription = params['AccountDescription']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 可以回档时间范围
      class AvailableRecoveryTimeRange < TencentCloud::Common::AbstractModel
        # @param AvailableBeginTime: 可回档起始时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        # @type AvailableBeginTime: String
        # @param AvailableEndTime: 可回档结束时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        # @type AvailableEndTime: String

        attr_accessor :AvailableBeginTime, :AvailableEndTime
        
        def initialize(availablebegintime=nil, availableendtime=nil)
          @AvailableBeginTime = availablebegintime
          @AvailableEndTime = availableendtime
        end

        def deserialize(params)
          @AvailableBeginTime = params['AvailableBeginTime']
          @AvailableEndTime = params['AvailableEndTime']
        end
      end

      # 集群备份集信息
      class Backup < TencentCloud::Common::AbstractModel
        # @param BackupId: 备份集ID，集群内唯一
        # @type BackupId: Integer
        # @param BackupType: 备份集类型，目前只支持 SNAPSHOT：快照
        # @type BackupType: String
        # @param BackupMethod: 备份集产生的方案，目前只支持 AUTO：自动
        # @type BackupMethod: String
        # @param BackupDataTime: 备份集对应的数据时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        # @type BackupDataTime: String
        # @param BackupDataSize: 备份集数据大小，单位GiB
        # @type BackupDataSize: Integer
        # @param BackupTaskStartTime: 备份集对应的任务开始时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        # @type BackupTaskStartTime: String
        # @param BackupTaskEndTime: 备份集对应的任务结束时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        # @type BackupTaskEndTime: String
        # @param BackupTaskStatus: 备份集对应的任务状态  SUCCESS：成功
        # @type BackupTaskStatus: String

        attr_accessor :BackupId, :BackupType, :BackupMethod, :BackupDataTime, :BackupDataSize, :BackupTaskStartTime, :BackupTaskEndTime, :BackupTaskStatus
        
        def initialize(backupid=nil, backuptype=nil, backupmethod=nil, backupdatatime=nil, backupdatasize=nil, backuptaskstarttime=nil, backuptaskendtime=nil, backuptaskstatus=nil)
          @BackupId = backupid
          @BackupType = backuptype
          @BackupMethod = backupmethod
          @BackupDataTime = backupdatatime
          @BackupDataSize = backupdatasize
          @BackupTaskStartTime = backuptaskstarttime
          @BackupTaskEndTime = backuptaskendtime
          @BackupTaskStatus = backuptaskstatus
        end

        def deserialize(params)
          @BackupId = params['BackupId']
          @BackupType = params['BackupType']
          @BackupMethod = params['BackupMethod']
          @BackupDataTime = params['BackupDataTime']
          @BackupDataSize = params['BackupDataSize']
          @BackupTaskStartTime = params['BackupTaskStartTime']
          @BackupTaskEndTime = params['BackupTaskEndTime']
          @BackupTaskStatus = params['BackupTaskStatus']
        end
      end

      # CloneClusterToPointInTime请求参数结构体
      class CloneClusterToPointInTimeRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param DBVersion: 数据库版本，目前仅支持 10.17
        # @type DBVersion: String
        # @param CPU: CPU核数。取值参考文档【购买指南】
        # @type CPU: Integer
        # @param Memory: 内存大小，单位GiB。取值参考文档【购买指南】
        # @type Memory: Integer
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 已配置的私有网络中的子网ID
        # @type SubnetId: String
        # @param PayMode: 集群付费模式
        # - PREPAID：预付费，即包年包月
        # - POSTPAID_BY_HOUR：按小时后付费
        # @type PayMode: String
        # @param SourceClusterId: 对应的备份数据来源集群ID
        # @type SourceClusterId: String
        # @param SourceDataPoint: 对应的备份数据时间点。按照RFC3339标准表示，并且使用东八区时区时间。格式为：YYYY-MM-DDThh:mm:ss+08:00。
        # @type SourceDataPoint: String
        # @param ClusterName: 集群名，1-60个字符，可以包含中文、英文、数字和符号"-"、"_"、"."。不输入此参数时默认与ClusterId保持一致。
        # @type ClusterName: String
        # @param ProjectId: 项目Id，默认为0表示默认项目
        # @type ProjectId: Integer
        # @param Port: 连接数据库时，Endpoint使用的端口。取值范围为[1,65534]，默认值为5432
        # @type Port: Integer
        # @param InstanceCount: 集群下实例数量。取值范围为[1,4]，默认值为1
        # @type InstanceCount: Integer
        # @param Period: 购买时长，单位：月。取值范围为[1,60]，默认值为1。
        # 只有当PayMode为PREPAID时生效。
        # @type Period: Integer
        # @param AutoRenewFlag: 是否自动续费，0-不 1-是。默认为0，只有当PayMode为PREPAID时生效。
        # @type AutoRenewFlag: Integer

        attr_accessor :Zone, :DBVersion, :CPU, :Memory, :VpcId, :SubnetId, :PayMode, :SourceClusterId, :SourceDataPoint, :ClusterName, :ProjectId, :Port, :InstanceCount, :Period, :AutoRenewFlag
        
        def initialize(zone=nil, dbversion=nil, cpu=nil, memory=nil, vpcid=nil, subnetid=nil, paymode=nil, sourceclusterid=nil, sourcedatapoint=nil, clustername=nil, projectid=nil, port=nil, instancecount=nil, period=nil, autorenewflag=nil)
          @Zone = zone
          @DBVersion = dbversion
          @CPU = cpu
          @Memory = memory
          @VpcId = vpcid
          @SubnetId = subnetid
          @PayMode = paymode
          @SourceClusterId = sourceclusterid
          @SourceDataPoint = sourcedatapoint
          @ClusterName = clustername
          @ProjectId = projectid
          @Port = port
          @InstanceCount = instancecount
          @Period = period
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @Zone = params['Zone']
          @DBVersion = params['DBVersion']
          @CPU = params['CPU']
          @Memory = params['Memory']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @PayMode = params['PayMode']
          @SourceClusterId = params['SourceClusterId']
          @SourceDataPoint = params['SourceDataPoint']
          @ClusterName = params['ClusterName']
          @ProjectId = params['ProjectId']
          @Port = params['Port']
          @InstanceCount = params['InstanceCount']
          @Period = params['Period']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # CloneClusterToPointInTime返回参数结构体
      class CloneClusterToPointInTimeResponse < TencentCloud::Common::AbstractModel
        # @param DealNameSet: 订单号
        # @type DealNameSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealNameSet, :RequestId
        
        def initialize(dealnameset=nil, requestid=nil)
          @DealNameSet = dealnameset
          @RequestId = requestid
        end

        def deserialize(params)
          @DealNameSet = params['DealNameSet']
          @RequestId = params['RequestId']
        end
      end

      # 集群信息
      class Cluster < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID，集群的唯一标识
        # @type ClusterId: String
        # @param ClusterName: 集群名字，不修改时默认和集群ID相同
        # @type ClusterName: String
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param DBVersion: TDSQL-C PostgreSQL 合入的社区版本号
        # @type DBVersion: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Status: 集群状态。目前包括
        #  - creating ：创建中
        #  - running : 运行中
        #  - isolating : 隔离中
        #  - isolated : 已隔离
        #  - recovering : 恢复中
        #  - deleting : 删除中
        #  - deleted : 已删除
        # @type Status: String
        # @param StatusDesc: 集群状态中文含义
        # @type StatusDesc: String
        # @param CreateTime: 集群创建时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        # @type CreateTime: String
        # @param StorageUsed: 存储当前使用量，单位GiB
        # @type StorageUsed: Float
        # @param StorageLimit: 存储最大使用量，单位GiB
        # @type StorageLimit: Integer
        # @param PayMode: 付费模式：
        #  - PREPAID : 预付费，即包年包月
        #  - POSTPAID_BY_HOUR : 按小时结算后付费
        # @type PayMode: String
        # @param PayPeriodEndTime: 预付费集群到期时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        # @type PayPeriodEndTime: String
        # @param AutoRenewFlag: 预付费集群自动续费标签
        #  - 0 : 到期不自动续费
        #  - 1 : 到期自动续费
        # @type AutoRenewFlag: Integer
        # @param DBCharset: 数据库字符集
        # @type DBCharset: String
        # @param InstanceCount: 集群内实例的数量
        # @type InstanceCount: Integer
        # @param EndpointSet: 集群内访问点信息
        # @type EndpointSet: Array
        # @param DBMajorVersion: TDSQL-C PostgreSQL 合入的社区主要版本号
        # @type DBMajorVersion: String
        # @param DBKernelVersion: TDSQL-C PostgreSQL 内核版本号
        # @type DBKernelVersion: String

        attr_accessor :ClusterId, :ClusterName, :Region, :Zone, :DBVersion, :ProjectId, :Status, :StatusDesc, :CreateTime, :StorageUsed, :StorageLimit, :PayMode, :PayPeriodEndTime, :AutoRenewFlag, :DBCharset, :InstanceCount, :EndpointSet, :DBMajorVersion, :DBKernelVersion
        
        def initialize(clusterid=nil, clustername=nil, region=nil, zone=nil, dbversion=nil, projectid=nil, status=nil, statusdesc=nil, createtime=nil, storageused=nil, storagelimit=nil, paymode=nil, payperiodendtime=nil, autorenewflag=nil, dbcharset=nil, instancecount=nil, endpointset=nil, dbmajorversion=nil, dbkernelversion=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @Region = region
          @Zone = zone
          @DBVersion = dbversion
          @ProjectId = projectid
          @Status = status
          @StatusDesc = statusdesc
          @CreateTime = createtime
          @StorageUsed = storageused
          @StorageLimit = storagelimit
          @PayMode = paymode
          @PayPeriodEndTime = payperiodendtime
          @AutoRenewFlag = autorenewflag
          @DBCharset = dbcharset
          @InstanceCount = instancecount
          @EndpointSet = endpointset
          @DBMajorVersion = dbmajorversion
          @DBKernelVersion = dbkernelversion
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Region = params['Region']
          @Zone = params['Zone']
          @DBVersion = params['DBVersion']
          @ProjectId = params['ProjectId']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @CreateTime = params['CreateTime']
          @StorageUsed = params['StorageUsed']
          @StorageLimit = params['StorageLimit']
          @PayMode = params['PayMode']
          @PayPeriodEndTime = params['PayPeriodEndTime']
          @AutoRenewFlag = params['AutoRenewFlag']
          @DBCharset = params['DBCharset']
          @InstanceCount = params['InstanceCount']
          unless params['EndpointSet'].nil?
            @EndpointSet = []
            params['EndpointSet'].each do |i|
              endpoint_tmp = Endpoint.new
              endpoint_tmp.deserialize(i)
              @EndpointSet << endpoint_tmp
            end
          end
          @DBMajorVersion = params['DBMajorVersion']
          @DBKernelVersion = params['DBKernelVersion']
        end
      end

      # CreateClusterInstances请求参数结构体
      class CreateClusterInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param CPU: CPU核数。取值参考文档【购买指南】
        # @type CPU: Integer
        # @param Memory: 内存大小，单位GiB。取值参考文档【购买指南】
        # @type Memory: Integer
        # @param InstanceName: 实例名，1-60个字符，可以包含中文、英文、数字和符号"-"、"_"、"."。不输入此参数时默认与InstanceId一致。
        # @type InstanceName: String
        # @param InstanceCount: 新建实例的数量，默认为1。单集群下实例数量目前不能超过4个。
        # @type InstanceCount: Integer

        attr_accessor :ClusterId, :CPU, :Memory, :InstanceName, :InstanceCount
        
        def initialize(clusterid=nil, cpu=nil, memory=nil, instancename=nil, instancecount=nil)
          @ClusterId = clusterid
          @CPU = cpu
          @Memory = memory
          @InstanceName = instancename
          @InstanceCount = instancecount
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @CPU = params['CPU']
          @Memory = params['Memory']
          @InstanceName = params['InstanceName']
          @InstanceCount = params['InstanceCount']
        end
      end

      # CreateClusterInstances返回参数结构体
      class CreateClusterInstancesResponse < TencentCloud::Common::AbstractModel
        # @param DealNameSet: 订单号
        # @type DealNameSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealNameSet, :RequestId
        
        def initialize(dealnameset=nil, requestid=nil)
          @DealNameSet = dealnameset
          @RequestId = requestid
        end

        def deserialize(params)
          @DealNameSet = params['DealNameSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateCluster请求参数结构体
      class CreateClusterRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param MasterUserPassword: 数据库用户密码，必须满足 8-64个字符，至少包含 大写字母、小写字母、数字和符号~!@#$%^&*_-+=`|\(){}[]:;'<>,.?/中的任意三种
        # @type MasterUserPassword: String
        # @param CPU: CPU核数。取值参考文档【购买指南】
        # @type CPU: Integer
        # @param Memory: 内存大小，单位GiB。取值参考文档【购买指南】
        # @type Memory: Integer
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 已配置的私有网络中的子网ID
        # @type SubnetId: String
        # @param PayMode: 集群付费模式
        #  - PREPAID：预付费，即包年包月
        #  - POSTPAID_BY_HOUR：按小时后付费
        # @type PayMode: String
        # @param ClusterName: 集群名，1-60个字符，可以包含中文、英文、数字和符号"-"、"_"、"."。不输入此参数时默认与ClusterId保持一致
        # @type ClusterName: String
        # @param DBVersion: TDSQL-C PostgreSQL 合入的社区版本号。
        # 支持入参值为：10.17。当输入该参数时，会基于此版本号创建对应的最新DBKernelVersion数据库内核。
        # 注：该参数与DBMajorVersion、DBKernelVersion只能传递一个，且需要传递一个。
        # @type DBVersion: String
        # @param ProjectId: 项目Id，默认为0表示默认项目
        # @type ProjectId: Integer
        # @param Port: 连接数据库时，Endpoint使用的端口。取值范围为[1,65534]，默认值为5432
        # @type Port: Integer
        # @param InstanceCount: 集群下实例数量。取值范围为[1,4]，默认值为1
        # @type InstanceCount: Integer
        # @param Period: 购买时长，单位：月。取值范围为[1,60]，默认值为1。
        # 只有当PayMode为PREPAID时生效。
        # @type Period: Integer
        # @param AutoRenewFlag: 是否自动续费，0-不 1-是。默认值为0，只有当PayMode为PREPAID时生效。
        # @type AutoRenewFlag: Integer
        # @param DBMajorVersion: TDSQL-C PostgreSQL 合入的社区主要版本号。
        # 支持入参值为：10。当输入该参数时，会基于此版本号创建对应的最新DBKernelVersion数据库内核。
        # 注：该参数和DBVersion、DBKernelVersion只能传递一个，且需要传递一个。
        # @type DBMajorVersion: String
        # @param DBKernelVersion: TDSQL-C PostgreSQL 内核版本号。
        # 支持入参值为：v10.17_r1.4。当输入该参数时，会创建此版本号对应的数据库内核。
        # 注：该参数和DBVersion、DBMajorVersion只能传递一个，且需要传递一个。
        # @type DBKernelVersion: String

        attr_accessor :Zone, :MasterUserPassword, :CPU, :Memory, :VpcId, :SubnetId, :PayMode, :ClusterName, :DBVersion, :ProjectId, :Port, :InstanceCount, :Period, :AutoRenewFlag, :DBMajorVersion, :DBKernelVersion
        
        def initialize(zone=nil, masteruserpassword=nil, cpu=nil, memory=nil, vpcid=nil, subnetid=nil, paymode=nil, clustername=nil, dbversion=nil, projectid=nil, port=nil, instancecount=nil, period=nil, autorenewflag=nil, dbmajorversion=nil, dbkernelversion=nil)
          @Zone = zone
          @MasterUserPassword = masteruserpassword
          @CPU = cpu
          @Memory = memory
          @VpcId = vpcid
          @SubnetId = subnetid
          @PayMode = paymode
          @ClusterName = clustername
          @DBVersion = dbversion
          @ProjectId = projectid
          @Port = port
          @InstanceCount = instancecount
          @Period = period
          @AutoRenewFlag = autorenewflag
          @DBMajorVersion = dbmajorversion
          @DBKernelVersion = dbkernelversion
        end

        def deserialize(params)
          @Zone = params['Zone']
          @MasterUserPassword = params['MasterUserPassword']
          @CPU = params['CPU']
          @Memory = params['Memory']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @PayMode = params['PayMode']
          @ClusterName = params['ClusterName']
          @DBVersion = params['DBVersion']
          @ProjectId = params['ProjectId']
          @Port = params['Port']
          @InstanceCount = params['InstanceCount']
          @Period = params['Period']
          @AutoRenewFlag = params['AutoRenewFlag']
          @DBMajorVersion = params['DBMajorVersion']
          @DBKernelVersion = params['DBKernelVersion']
        end
      end

      # CreateCluster返回参数结构体
      class CreateClusterResponse < TencentCloud::Common::AbstractModel
        # @param DealNameSet: 订单号
        # @type DealNameSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealNameSet, :RequestId
        
        def initialize(dealnameset=nil, requestid=nil)
          @DealNameSet = dealnameset
          @RequestId = requestid
        end

        def deserialize(params)
          @DealNameSet = params['DealNameSet']
          @RequestId = params['RequestId']
        end
      end

      # DeleteClusterInstances请求参数结构体
      class DeleteClusterInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIdSet: 实例ID列表
        # @type InstanceIdSet: Array

        attr_accessor :ClusterId, :InstanceIdSet
        
        def initialize(clusterid=nil, instanceidset=nil)
          @ClusterId = clusterid
          @InstanceIdSet = instanceidset
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIdSet = params['InstanceIdSet']
        end
      end

      # DeleteClusterInstances返回参数结构体
      class DeleteClusterInstancesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCluster请求参数结构体
      class DeleteClusterRequest < TencentCloud::Common::AbstractModel
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

      # DeleteCluster返回参数结构体
      class DeleteClusterResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAccounts请求参数结构体
      class DescribeAccountsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeAccounts返回参数结构体
      class DescribeAccountsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param AccountSet: 账号信息列表
        # @type AccountSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AccountSet, :RequestId
        
        def initialize(totalcount=nil, accountset=nil, requestid=nil)
          @TotalCount = totalcount
          @AccountSet = accountset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
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

      # DescribeClusterBackups请求参数结构体
      class DescribeClusterBackupsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param PageNumber: 页码，取值范围为[1,INF)，默认值为1
        # @type PageNumber: Integer
        # @param PageSize: 每页个数，取值范围为默认为[1,100]，默认值为20
        # @type PageSize: Integer

        attr_accessor :ClusterId, :PageNumber, :PageSize
        
        def initialize(clusterid=nil, pagenumber=nil, pagesize=nil)
          @ClusterId = clusterid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeClusterBackups返回参数结构体
      class DescribeClusterBackupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param BackupSet: 备份列表信息
        # @type BackupSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BackupSet, :RequestId
        
        def initialize(totalcount=nil, backupset=nil, requestid=nil)
          @TotalCount = totalcount
          @BackupSet = backupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BackupSet'].nil?
            @BackupSet = []
            params['BackupSet'].each do |i|
              backup_tmp = Backup.new
              backup_tmp.deserialize(i)
              @BackupSet << backup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterEndpoints请求参数结构体
      class DescribeClusterEndpointsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeClusterEndpoints返回参数结构体
      class DescribeClusterEndpointsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param EndpointSet: 接入点列表
        # @type EndpointSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :EndpointSet, :RequestId
        
        def initialize(totalcount=nil, endpointset=nil, requestid=nil)
          @TotalCount = totalcount
          @EndpointSet = endpointset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EndpointSet'].nil?
            @EndpointSet = []
            params['EndpointSet'].each do |i|
              endpoint_tmp = Endpoint.new
              endpoint_tmp.deserialize(i)
              @EndpointSet << endpoint_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterInstances请求参数结构体
      class DescribeClusterInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param PageNumber: 页码，取值范围为[1,INF)，默认值为1
        # @type PageNumber: Integer
        # @param PageSize: 每页个数，取值范围为默认为[1,100]，默认值为20
        # @type PageSize: Integer
        # @param Filters: 目前支持查询条件包括：
        #  - InstanceId : 实例ID
        #  - InstanceName : 实例名
        #  - EndpointId : 接入点ID
        #  - Status : 实例状态
        #  - InstanceType : 实例类型
        # @type Filters: Array
        # @param OrderBy: 排序字段，可选字段：
        # - CreateTime : 实例创建时间(默认值)
        # - PayPeriodEndTime : 实例过期时间
        # @type OrderBy: String
        # @param OrderByType: 排序方式，可选字段：
        # - DESC : 降序(默认值)
        # - ASC : 升序
        # @type OrderByType: String

        attr_accessor :ClusterId, :PageNumber, :PageSize, :Filters, :OrderBy, :OrderByType
        
        def initialize(clusterid=nil, pagenumber=nil, pagesize=nil, filters=nil, orderby=nil, orderbytype=nil)
          @ClusterId = clusterid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
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

      # DescribeClusterInstances返回参数结构体
      class DescribeClusterInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param InstanceSet: 实例列表信息
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
              instance_tmp = Instance.new
              instance_tmp.deserialize(i)
              @InstanceSet << instance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterRecoveryTimeRange请求参数结构体
      class DescribeClusterRecoveryTimeRangeRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param DataPoint: 期望的回档时间点，传入从集群创建时间到当前时间之间的时间点。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        # @type DataPoint: String

        attr_accessor :ClusterId, :DataPoint
        
        def initialize(clusterid=nil, datapoint=nil)
          @ClusterId = clusterid
          @DataPoint = datapoint
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @DataPoint = params['DataPoint']
        end
      end

      # DescribeClusterRecoveryTimeRange返回参数结构体
      class DescribeClusterRecoveryTimeRangeResponse < TencentCloud::Common::AbstractModel
        # @param AvailableRecoveryTimeRangeSet: 可回档时间范围列表
        # @type AvailableRecoveryTimeRangeSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AvailableRecoveryTimeRangeSet, :RequestId
        
        def initialize(availablerecoverytimerangeset=nil, requestid=nil)
          @AvailableRecoveryTimeRangeSet = availablerecoverytimerangeset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AvailableRecoveryTimeRangeSet'].nil?
            @AvailableRecoveryTimeRangeSet = []
            params['AvailableRecoveryTimeRangeSet'].each do |i|
              availablerecoverytimerange_tmp = AvailableRecoveryTimeRange.new
              availablerecoverytimerange_tmp.deserialize(i)
              @AvailableRecoveryTimeRangeSet << availablerecoverytimerange_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusters请求参数结构体
      class DescribeClustersRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码，取值范围为[1,INF)，默认值为1
        # @type PageNumber: Integer
        # @param PageSize: 每页条数，取值范围为默认为[1,100]，默认值为20
        # @type PageSize: Integer
        # @param Filters: 目前支持查询条件包括：
        #  - ClusterId : 集群ID
        #  - ClusterName : 集群名
        #  - ProjectId : 项目ID
        #  - Status : 集群状态
        #  - PayMode : 付费模式
        # @type Filters: Array
        # @param OrderBy: 排序字段，可选字段：
        #  - CreateTime : 集群创建时间(默认值)
        #  - PayPeriodEndTime : 集群过期时间
        # @type OrderBy: String
        # @param OrderByType: 排序方式，可选字段：
        #  - DESC : 降序(默认值)
        #  - ASC : 升序
        # @type OrderByType: String

        attr_accessor :PageNumber, :PageSize, :Filters, :OrderBy, :OrderByType
        
        def initialize(pagenumber=nil, pagesize=nil, filters=nil, orderby=nil, orderbytype=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
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

      # DescribeClusters返回参数结构体
      class DescribeClustersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param ClusterSet: 集群列表信息
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
              cluster_tmp = Cluster.new
              cluster_tmp.deserialize(i)
              @ClusterSet << cluster_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourcesByDealName请求参数结构体
      class DescribeResourcesByDealNameRequest < TencentCloud::Common::AbstractModel
        # @param DealName: 计费订单id（如果计费还没回调业务发货，可能出现错误码InvalidParameterValue.DealNameNotFound，这种情况需要业务重试DescribeResourcesByDealName接口直到成功）
        # @type DealName: String

        attr_accessor :DealName
        
        def initialize(dealname=nil)
          @DealName = dealname
        end

        def deserialize(params)
          @DealName = params['DealName']
        end
      end

      # DescribeResourcesByDealName返回参数结构体
      class DescribeResourcesByDealNameResponse < TencentCloud::Common::AbstractModel
        # @param ResourceIdInfoSet: 资源ID信息列表
        # @type ResourceIdInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceIdInfoSet, :RequestId
        
        def initialize(resourceidinfoset=nil, requestid=nil)
          @ResourceIdInfoSet = resourceidinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResourceIdInfoSet'].nil?
            @ResourceIdInfoSet = []
            params['ResourceIdInfoSet'].each do |i|
              resourceidinfo_tmp = ResourceIdInfo.new
              resourceidinfo_tmp.deserialize(i)
              @ResourceIdInfoSet << resourceidinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 集群的连接点信息，包含访问数据库的相关网络信息
      class Endpoint < TencentCloud::Common::AbstractModel
        # @param EndpointId: 连接点ID，集群内唯一
        # @type EndpointId: String
        # @param ClusterId: 连接点所属的集群ID
        # @type ClusterId: String
        # @param EndpointName: 连接点名字，默认和连接点ID一致
        # @type EndpointName: String
        # @param EndpointType: 连接点类型
        #  - RW : 读写
        #  - RO : 只读
        # @type EndpointType: String
        # @param VpcId: 私有网络VPC实例ID
        # @type VpcId: String
        # @param SubnetId: 私有网络VPC下子网实例ID
        # @type SubnetId: String
        # @param PrivateIp: 私有网络VPC下用于访问数据库的IP
        # @type PrivateIp: String
        # @param PrivatePort: 私有网络VPC下用于访问数据库的端口
        # @type PrivatePort: Integer
        # @param WanIp: 公共网络用户访问数据库的IP
        # @type WanIp: String
        # @param WanPort: 公共网络用户访问数据库的端口
        # @type WanPort: Integer
        # @param WanDomain: 公共网络用户访问数据库的域名
        # @type WanDomain: String

        attr_accessor :EndpointId, :ClusterId, :EndpointName, :EndpointType, :VpcId, :SubnetId, :PrivateIp, :PrivatePort, :WanIp, :WanPort, :WanDomain
        
        def initialize(endpointid=nil, clusterid=nil, endpointname=nil, endpointtype=nil, vpcid=nil, subnetid=nil, privateip=nil, privateport=nil, wanip=nil, wanport=nil, wandomain=nil)
          @EndpointId = endpointid
          @ClusterId = clusterid
          @EndpointName = endpointname
          @EndpointType = endpointtype
          @VpcId = vpcid
          @SubnetId = subnetid
          @PrivateIp = privateip
          @PrivatePort = privateport
          @WanIp = wanip
          @WanPort = wanport
          @WanDomain = wandomain
        end

        def deserialize(params)
          @EndpointId = params['EndpointId']
          @ClusterId = params['ClusterId']
          @EndpointName = params['EndpointName']
          @EndpointType = params['EndpointType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @PrivateIp = params['PrivateIp']
          @PrivatePort = params['PrivatePort']
          @WanIp = params['WanIp']
          @WanPort = params['WanPort']
          @WanDomain = params['WanDomain']
        end
      end

      # 过滤条件
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤条件名
        # @type Name: String
        # @param Values: 过滤条件值数组
        # @type Values: Array
        # @param ExactMatch: true:精确匹配(默认值) false:(模糊匹配)
        # @type ExactMatch: Boolean

        attr_accessor :Name, :Values, :ExactMatch
        
        def initialize(name=nil, values=nil, exactmatch=nil)
          @Name = name
          @Values = values
          @ExactMatch = exactmatch
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @ExactMatch = params['ExactMatch']
        end
      end

      # 集群下的实例信息
      class Instance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，集群下唯一
        # @type InstanceId: String
        # @param InstanceName: 实例名字，默认和实例ID一致
        # @type InstanceName: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param EndpointId: 实例所在的访问点ID
        # @type EndpointId: String
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param DBVersion: 数据库版本
        # @type DBVersion: String
        # @param Status: 实例状态
        # @type Status: String
        # @param StatusDesc: 实例状态中文含义
        # @type StatusDesc: String
        # @param CreateTime: 实例创建时间。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        # @type CreateTime: String
        # @param PayMode: 付费模式：
        # - PREPAID : 预付费
        # - POSTPAID_BY_HOUR : 按小时结算后付费

        # 同一集群下付费模式需要保持一致。
        # @type PayMode: String
        # @param PayPeriodEndTime: 实例到期时间。同一集群下到期时间需要保持一致。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        # @type PayPeriodEndTime: String
        # @param CPU: CPU核数
        # @type CPU: Integer
        # @param Memory: 内存大小，单位GiB
        # @type Memory: Integer
        # @param InstanceType: 实例类型
        #  - RW：读写实例
        #  - RO：只读实例
        # @type InstanceType: String
        # @param DBMajorVersion: TDSQL-C PostgreSQL 合入的社区主要版本号
        # @type DBMajorVersion: String
        # @param DBKernelVersion: TDSQL-C PostgreSQL 内核版本号
        # @type DBKernelVersion: String

        attr_accessor :InstanceId, :InstanceName, :ClusterId, :EndpointId, :Region, :Zone, :DBVersion, :Status, :StatusDesc, :CreateTime, :PayMode, :PayPeriodEndTime, :CPU, :Memory, :InstanceType, :DBMajorVersion, :DBKernelVersion
        
        def initialize(instanceid=nil, instancename=nil, clusterid=nil, endpointid=nil, region=nil, zone=nil, dbversion=nil, status=nil, statusdesc=nil, createtime=nil, paymode=nil, payperiodendtime=nil, cpu=nil, memory=nil, instancetype=nil, dbmajorversion=nil, dbkernelversion=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @ClusterId = clusterid
          @EndpointId = endpointid
          @Region = region
          @Zone = zone
          @DBVersion = dbversion
          @Status = status
          @StatusDesc = statusdesc
          @CreateTime = createtime
          @PayMode = paymode
          @PayPeriodEndTime = payperiodendtime
          @CPU = cpu
          @Memory = memory
          @InstanceType = instancetype
          @DBMajorVersion = dbmajorversion
          @DBKernelVersion = dbkernelversion
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @ClusterId = params['ClusterId']
          @EndpointId = params['EndpointId']
          @Region = params['Region']
          @Zone = params['Zone']
          @DBVersion = params['DBVersion']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @CreateTime = params['CreateTime']
          @PayMode = params['PayMode']
          @PayPeriodEndTime = params['PayPeriodEndTime']
          @CPU = params['CPU']
          @Memory = params['Memory']
          @InstanceType = params['InstanceType']
          @DBMajorVersion = params['DBMajorVersion']
          @DBKernelVersion = params['DBKernelVersion']
        end
      end

      # IsolateClusterInstances请求参数结构体
      class IsolateClusterInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIdSet: 实例ID列表
        # @type InstanceIdSet: Array

        attr_accessor :ClusterId, :InstanceIdSet
        
        def initialize(clusterid=nil, instanceidset=nil)
          @ClusterId = clusterid
          @InstanceIdSet = instanceidset
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIdSet = params['InstanceIdSet']
        end
      end

      # IsolateClusterInstances返回参数结构体
      class IsolateClusterInstancesResponse < TencentCloud::Common::AbstractModel
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

      # IsolateCluster请求参数结构体
      class IsolateClusterRequest < TencentCloud::Common::AbstractModel
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

      # IsolateCluster返回参数结构体
      class IsolateClusterResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAccountDescription请求参数结构体
      class ModifyAccountDescriptionRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param AccountName: 账号名字
        # @type AccountName: String
        # @param AccountDescription: 账号描述，0-256个字符
        # @type AccountDescription: String

        attr_accessor :ClusterId, :AccountName, :AccountDescription
        
        def initialize(clusterid=nil, accountname=nil, accountdescription=nil)
          @ClusterId = clusterid
          @AccountName = accountname
          @AccountDescription = accountdescription
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @AccountName = params['AccountName']
          @AccountDescription = params['AccountDescription']
        end
      end

      # ModifyAccountDescription返回参数结构体
      class ModifyAccountDescriptionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyClusterEndpointWanStatus请求参数结构体
      class ModifyClusterEndpointWanStatusRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param EndpointId: 接入点ID
        # @type EndpointId: String
        # @param WanStatus: 取值为：
        #  - OPEN：开启外网
        #  - CLOSE：关闭外网
        # @type WanStatus: String

        attr_accessor :ClusterId, :EndpointId, :WanStatus
        
        def initialize(clusterid=nil, endpointid=nil, wanstatus=nil)
          @ClusterId = clusterid
          @EndpointId = endpointid
          @WanStatus = wanstatus
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @EndpointId = params['EndpointId']
          @WanStatus = params['WanStatus']
        end
      end

      # ModifyClusterEndpointWanStatus返回参数结构体
      class ModifyClusterEndpointWanStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyClusterInstancesSpec请求参数结构体
      class ModifyClusterInstancesSpecRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIdSet: 实例ID列表，目前只支持单个实例修改
        # @type InstanceIdSet: Array
        # @param CPU: 修改后的CPU核数。取值参考文档【购买指南】
        # @type CPU: Integer
        # @param Memory: 修改后的内存大小，单位GiB。取值参考文档【购买指南】
        # @type Memory: Integer
        # @param OperationTiming: 操作时机
        #  - IMMEDIATE：立即执行
        #  - MAINTAIN_PERIOD：维护窗口期执行
        # @type OperationTiming: String

        attr_accessor :ClusterId, :InstanceIdSet, :CPU, :Memory, :OperationTiming
        
        def initialize(clusterid=nil, instanceidset=nil, cpu=nil, memory=nil, operationtiming=nil)
          @ClusterId = clusterid
          @InstanceIdSet = instanceidset
          @CPU = cpu
          @Memory = memory
          @OperationTiming = operationtiming
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIdSet = params['InstanceIdSet']
          @CPU = params['CPU']
          @Memory = params['Memory']
          @OperationTiming = params['OperationTiming']
        end
      end

      # ModifyClusterInstancesSpec返回参数结构体
      class ModifyClusterInstancesSpecResponse < TencentCloud::Common::AbstractModel
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
        # @param ClusterName: 集群名，1-60个字符，可以包含中文、英文、数字和符号"-"、"_"、"."
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

      # ModifyClustersAutoRenewFlag请求参数结构体
      class ModifyClustersAutoRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIdSet: 集群ID列表
        # @type ClusterIdSet: Array
        # @param AutoRenewFlag: 是否自动续费，0-不 1-是。默认为0，只有当集群的PayMode为PREPAID时生效。
        # @type AutoRenewFlag: Integer

        attr_accessor :ClusterIdSet, :AutoRenewFlag
        
        def initialize(clusteridset=nil, autorenewflag=nil)
          @ClusterIdSet = clusteridset
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @ClusterIdSet = params['ClusterIdSet']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # ModifyClustersAutoRenewFlag返回参数结构体
      class ModifyClustersAutoRenewFlagResponse < TencentCloud::Common::AbstractModel
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

      # RecoverClusterInstances请求参数结构体
      class RecoverClusterInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIdSet: 实例ID列表
        # @type InstanceIdSet: Array
        # @param Period: 购买时长，单位：月。取值范围为[1,60]，默认值为1。
        # 只有当PayMode为PREPAID时生效。
        # @type Period: Integer

        attr_accessor :ClusterId, :InstanceIdSet, :Period
        
        def initialize(clusterid=nil, instanceidset=nil, period=nil)
          @ClusterId = clusterid
          @InstanceIdSet = instanceidset
          @Period = period
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIdSet = params['InstanceIdSet']
          @Period = params['Period']
        end
      end

      # RecoverClusterInstances返回参数结构体
      class RecoverClusterInstancesResponse < TencentCloud::Common::AbstractModel
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

      # RecoverCluster请求参数结构体
      class RecoverClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Period: 购买时长，单位：月。取值范围为[1,60]，默认值为1。
        # 只有当PayMode为PREPAID时生效。
        # @type Period: Integer

        attr_accessor :ClusterId, :Period
        
        def initialize(clusterid=nil, period=nil)
          @ClusterId = clusterid
          @Period = period
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Period = params['Period']
        end
      end

      # RecoverCluster返回参数结构体
      class RecoverClusterResponse < TencentCloud::Common::AbstractModel
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

      # RenewCluster请求参数结构体
      class RenewClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Period: 续费时间，单位：月。取值范围为[1,60]，默认值为1。
        # @type Period: Integer

        attr_accessor :ClusterId, :Period
        
        def initialize(clusterid=nil, period=nil)
          @ClusterId = clusterid
          @Period = period
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Period = params['Period']
        end
      end

      # RenewCluster返回参数结构体
      class RenewClusterResponse < TencentCloud::Common::AbstractModel
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

      # ResetAccountPassword请求参数结构体
      class ResetAccountPasswordRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param AccountName: 账号名字
        # @type AccountName: String
        # @param AccountPassword: 数据库用户密码，必须满足 8-64个字符，至少包含 大写字母、小写字母、数字和符号~!@#$%^&*_-+=`|(){}[]:;'<>,.?/中的任意三种
        # @type AccountPassword: String

        attr_accessor :ClusterId, :AccountName, :AccountPassword
        
        def initialize(clusterid=nil, accountname=nil, accountpassword=nil)
          @ClusterId = clusterid
          @AccountName = accountname
          @AccountPassword = accountpassword
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @AccountName = params['AccountName']
          @AccountPassword = params['AccountPassword']
        end
      end

      # ResetAccountPassword返回参数结构体
      class ResetAccountPasswordResponse < TencentCloud::Common::AbstractModel
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

      # 资源ID信息，包括ClusterID和InstanceID
      class ResourceIdInfo < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIdSet: 实例ID列表
        # @type InstanceIdSet: Array

        attr_accessor :ClusterId, :InstanceIdSet
        
        def initialize(clusterid=nil, instanceidset=nil)
          @ClusterId = clusterid
          @InstanceIdSet = instanceidset
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIdSet = params['InstanceIdSet']
        end
      end

      # RestartClusterInstances请求参数结构体
      class RestartClusterInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIdSet: 实例ID列表，目前只支持单个实例重启
        # @type InstanceIdSet: Array

        attr_accessor :ClusterId, :InstanceIdSet
        
        def initialize(clusterid=nil, instanceidset=nil)
          @ClusterId = clusterid
          @InstanceIdSet = instanceidset
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIdSet = params['InstanceIdSet']
        end
      end

      # RestartClusterInstances返回参数结构体
      class RestartClusterInstancesResponse < TencentCloud::Common::AbstractModel
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

      # TransformClusterPayMode请求参数结构体
      class TransformClusterPayModeRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param CurrentPayMode: 当前付费模式，目前只支持：POSTPAID_BY_HOUR(按小时后付费)
        # @type CurrentPayMode: String
        # @param TargetPayMode: 目标付费模式，目前只支持：PREPAID(预付费)
        # @type TargetPayMode: String
        # @param Period: 购买时长，单位：月。取值范围为[1,60]，默认值为1。
        # @type Period: Integer

        attr_accessor :ClusterId, :CurrentPayMode, :TargetPayMode, :Period
        
        def initialize(clusterid=nil, currentpaymode=nil, targetpaymode=nil, period=nil)
          @ClusterId = clusterid
          @CurrentPayMode = currentpaymode
          @TargetPayMode = targetpaymode
          @Period = period
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @CurrentPayMode = params['CurrentPayMode']
          @TargetPayMode = params['TargetPayMode']
          @Period = params['Period']
        end
      end

      # TransformClusterPayMode返回参数结构体
      class TransformClusterPayModeResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

