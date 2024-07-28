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
  module Sqlserver
    module V20180328
      # 账号创建信息
      class AccountCreateInfo < TencentCloud::Common::AbstractModel
        # @param UserName: 实例用户名
        # @type UserName: String
        # @param Password: 实例密码
        # @type Password: String
        # @param DBPrivileges: DB权限列表
        # @type DBPrivileges: Array
        # @param Remark: 账号备注信息
        # @type Remark: String
        # @param IsAdmin: 是否为管理员账户，当值为true 等价于单节点AccountType=L0，双节点AccountType=L1，当值为false，等价于AccountType=L3
        # @type IsAdmin: Boolean
        # @param Authentication: win-windows鉴权,sql-sqlserver鉴权，不填默认值为sql-sqlserver鉴权
        # @type Authentication: String
        # @param AccountType: 账号类型，IsAdmin的扩展字段。 L0-超级权限(基础版独有),L1-高级权限,L2-特殊权限,L3-普通权限，默认L3
        # @type AccountType: String
        # @param IsCam: 是否开启CAM验证
        # @type IsCam: Boolean

        attr_accessor :UserName, :Password, :DBPrivileges, :Remark, :IsAdmin, :Authentication, :AccountType, :IsCam

        def initialize(username=nil, password=nil, dbprivileges=nil, remark=nil, isadmin=nil, authentication=nil, accounttype=nil, iscam=nil)
          @UserName = username
          @Password = password
          @DBPrivileges = dbprivileges
          @Remark = remark
          @IsAdmin = isadmin
          @Authentication = authentication
          @AccountType = accounttype
          @IsCam = iscam
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Password = params['Password']
          unless params['DBPrivileges'].nil?
            @DBPrivileges = []
            params['DBPrivileges'].each do |i|
              dbprivilege_tmp = DBPrivilege.new
              dbprivilege_tmp.deserialize(i)
              @DBPrivileges << dbprivilege_tmp
            end
          end
          @Remark = params['Remark']
          @IsAdmin = params['IsAdmin']
          @Authentication = params['Authentication']
          @AccountType = params['AccountType']
          @IsCam = params['IsCam']
        end
      end

      # 账号信息详情
      class AccountDetail < TencentCloud::Common::AbstractModel
        # @param Name: 账户名
        # @type Name: String
        # @param Remark: 账户备注
        # @type Remark: String
        # @param CreateTime: 账户创建时间
        # @type CreateTime: String
        # @param Status: 账户状态，1-创建中，2-正常，3-修改中，4-密码重置中，-1-删除中
        # @type Status: Integer
        # @param UpdateTime: 账户更新时间
        # @type UpdateTime: String
        # @param PassTime: 密码更新时间
        # @type PassTime: String
        # @param InternalStatus: 账户内部状态，正常为enable
        # @type InternalStatus: String
        # @param Dbs: 该账户对相关db的读写权限信息
        # @type Dbs: Array
        # @param IsAdmin: 是否为管理员账户
        # @type IsAdmin: Boolean
        # @param IsCam: 是否为cam托管账户
        # @type IsCam: Boolean
        # @param Authentication: win-windows鉴权,sql-sqlserver鉴权
        # @type Authentication: String
        # @param Host: win-windows鉴权账户需要host
        # @type Host: String
        # @param AccountType: 账号类型。L0-超级权限(基础版独有),L1-高级权限,L2-特殊权限,L3-普通权限
        # @type AccountType: String

        attr_accessor :Name, :Remark, :CreateTime, :Status, :UpdateTime, :PassTime, :InternalStatus, :Dbs, :IsAdmin, :IsCam, :Authentication, :Host, :AccountType

        def initialize(name=nil, remark=nil, createtime=nil, status=nil, updatetime=nil, passtime=nil, internalstatus=nil, dbs=nil, isadmin=nil, iscam=nil, authentication=nil, host=nil, accounttype=nil)
          @Name = name
          @Remark = remark
          @CreateTime = createtime
          @Status = status
          @UpdateTime = updatetime
          @PassTime = passtime
          @InternalStatus = internalstatus
          @Dbs = dbs
          @IsAdmin = isadmin
          @IsCam = iscam
          @Authentication = authentication
          @Host = host
          @AccountType = accounttype
        end

        def deserialize(params)
          @Name = params['Name']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          @UpdateTime = params['UpdateTime']
          @PassTime = params['PassTime']
          @InternalStatus = params['InternalStatus']
          unless params['Dbs'].nil?
            @Dbs = []
            params['Dbs'].each do |i|
              dbprivilege_tmp = DBPrivilege.new
              dbprivilege_tmp.deserialize(i)
              @Dbs << dbprivilege_tmp
            end
          end
          @IsAdmin = params['IsAdmin']
          @IsCam = params['IsCam']
          @Authentication = params['Authentication']
          @Host = params['Host']
          @AccountType = params['AccountType']
        end
      end

      # 实例账号密码信息
      class AccountPassword < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param Password: 密码
        # @type Password: String

        attr_accessor :UserName, :Password

        def initialize(username=nil, password=nil)
          @UserName = username
          @Password = password
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Password = params['Password']
        end
      end

      # 数据库账号权限信息。创建数据库时设置
      class AccountPrivilege < TencentCloud::Common::AbstractModel
        # @param UserName: 数据库用户名
        # @type UserName: String
        # @param Privilege: 数据库权限。ReadWrite表示可读写，ReadOnly表示只读,Delete表示删除DB对该账户的权限，DBOwner所有者
        # @type Privilege: String
        # @param AccountType: 账户名称，L0-超级权限(基础版独有),L1-高级权限,L2-特殊权限,L3-普通权限
        # @type AccountType: String

        attr_accessor :UserName, :Privilege, :AccountType

        def initialize(username=nil, privilege=nil, accounttype=nil)
          @UserName = username
          @Privilege = privilege
          @AccountType = accounttype
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Privilege = params['Privilege']
          @AccountType = params['AccountType']
        end
      end

      # 数据库账号权限变更信息
      class AccountPrivilegeModifyInfo < TencentCloud::Common::AbstractModel
        # @param UserName: 数据库用户名
        # @type UserName: String
        # @param DBPrivileges: 账号权限变更信息
        # @type DBPrivileges: Array
        # @param IsAdmin: 表示是否为管理员账户，当值为true，表示是 管理员。若实例 是 单节点，则管理员所在的 账号类型为超级权限账号 ，即AccountType=L0；若实例 是 双节点，则管理员所在的 账号类型为高级权限账号，即AccountType=L1；当值为false，表示 不是管理员，则账号类型为普通账号，即AccountType=L3
        # @type IsAdmin: Boolean
        # @param AccountType: 账号类型，IsAdmin字段的扩展字段。 L0-超级权限(基础版独有),L1-高级权限,L2-特殊权限,L3-普通权限，默认L3
        # @type AccountType: String

        attr_accessor :UserName, :DBPrivileges, :IsAdmin, :AccountType

        def initialize(username=nil, dbprivileges=nil, isadmin=nil, accounttype=nil)
          @UserName = username
          @DBPrivileges = dbprivileges
          @IsAdmin = isadmin
          @AccountType = accounttype
        end

        def deserialize(params)
          @UserName = params['UserName']
          unless params['DBPrivileges'].nil?
            @DBPrivileges = []
            params['DBPrivileges'].each do |i|
              dbprivilegemodifyinfo_tmp = DBPrivilegeModifyInfo.new
              dbprivilegemodifyinfo_tmp.deserialize(i)
              @DBPrivileges << dbprivilegemodifyinfo_tmp
            end
          end
          @IsAdmin = params['IsAdmin']
          @AccountType = params['AccountType']
        end
      end

      # 账户备注信息
      class AccountRemark < TencentCloud::Common::AbstractModel
        # @param UserName: 账户名
        # @type UserName: String
        # @param Remark: 对应账户新的备注信息
        # @type Remark: String

        attr_accessor :UserName, :Remark

        def initialize(username=nil, remark=nil)
          @UserName = username
          @Remark = remark
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Remark = params['Remark']
        end
      end

      # AssociateSecurityGroups请求参数结构体
      class AssociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组ID。
        # @type SecurityGroupId: String
        # @param InstanceIdSet: 实例ID 列表，一个或者多个实例ID组成的数组。多个实例必须是同一个地域，同一个可用区，同一个项目下的。
        # @type InstanceIdSet: Array

        attr_accessor :SecurityGroupId, :InstanceIdSet

        def initialize(securitygroupid=nil, instanceidset=nil)
          @SecurityGroupId = securitygroupid
          @InstanceIdSet = instanceidset
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          @InstanceIdSet = params['InstanceIdSet']
        end
      end

      # AssociateSecurityGroups返回参数结构体
      class AssociateSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 备份文件详细信息
      class Backup < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名，对于单库备份文件不返回此值；单库备份文件通过DescribeBackupFiles接口获取文件名
        # @type FileName: String
        # @param Size: 文件大小，单位 KB，对于单库备份文件不返回此值；单库备份文件通过DescribeBackupFiles接口获取文件大小
        # @type Size: Integer
        # @param StartTime: 备份开始时间
        # @type StartTime: String
        # @param EndTime: 备份结束时间
        # @type EndTime: String
        # @param InternalAddr: 内网下载地址，对于单库备份文件不返回此值；单库备份文件通过DescribeBackupFiles接口获取下载地址
        # @type InternalAddr: String
        # @param ExternalAddr: 外网下载地址，对于单库备份文件不返回此值；单库备份文件通过DescribeBackupFiles接口获取下载地址
        # @type ExternalAddr: String
        # @param Id: 备份文件唯一标识，RestoreInstance接口会用到该字段，对于单库备份文件不返回此值；单库备份文件通过DescribeBackupFiles接口获取可回档的ID
        # @type Id: Integer
        # @param Status: 备份文件状态（0-创建中；1-成功；2-失败）
        # @type Status: Integer
        # @param DBs: 多库备份时的DB列表
        # @type DBs: Array
        # @param Strategy: 备份策略（0-实例备份；1-多库备份）
        # @type Strategy: Integer
        # @param StorageStrategy: 备份存储策略 0-跟随自定义备份保留策略 1-跟随实例生命周期直到实例下线
        # @type StorageStrategy: Integer
        # @param BackupWay: 备份方式，0-定时备份；1-手动临时备份；2-定期备份
        # @type BackupWay: Integer
        # @param BackupName: 备份任务名称，可自定义
        # @type BackupName: String
        # @param GroupId: 聚合Id，对于打包备份文件不返回此值。通过此值调用DescribeBackupFiles接口，获取单库备份文件的详细信息
        # @type GroupId: String
        # @param BackupFormat: 备份文件形式（pkg-打包备份文件，single-单库备份文件）
        # @type BackupFormat: String
        # @param Region: 实例当前地域Code
        # @type Region: String
        # @param CrossBackupAddr: 跨地域备份的目的地域下载链接
        # @type CrossBackupAddr: Array
        # @param CrossBackupStatus: 跨地域备份的目标地域和备份状态
        # @type CrossBackupStatus: Array

        attr_accessor :FileName, :Size, :StartTime, :EndTime, :InternalAddr, :ExternalAddr, :Id, :Status, :DBs, :Strategy, :StorageStrategy, :BackupWay, :BackupName, :GroupId, :BackupFormat, :Region, :CrossBackupAddr, :CrossBackupStatus

        def initialize(filename=nil, size=nil, starttime=nil, endtime=nil, internaladdr=nil, externaladdr=nil, id=nil, status=nil, dbs=nil, strategy=nil, storagestrategy=nil, backupway=nil, backupname=nil, groupid=nil, backupformat=nil, region=nil, crossbackupaddr=nil, crossbackupstatus=nil)
          @FileName = filename
          @Size = size
          @StartTime = starttime
          @EndTime = endtime
          @InternalAddr = internaladdr
          @ExternalAddr = externaladdr
          @Id = id
          @Status = status
          @DBs = dbs
          @Strategy = strategy
          @StorageStrategy = storagestrategy
          @BackupWay = backupway
          @BackupName = backupname
          @GroupId = groupid
          @BackupFormat = backupformat
          @Region = region
          @CrossBackupAddr = crossbackupaddr
          @CrossBackupStatus = crossbackupstatus
        end

        def deserialize(params)
          @FileName = params['FileName']
          @Size = params['Size']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @InternalAddr = params['InternalAddr']
          @ExternalAddr = params['ExternalAddr']
          @Id = params['Id']
          @Status = params['Status']
          @DBs = params['DBs']
          @Strategy = params['Strategy']
          @StorageStrategy = params['StorageStrategy']
          @BackupWay = params['BackupWay']
          @BackupName = params['BackupName']
          @GroupId = params['GroupId']
          @BackupFormat = params['BackupFormat']
          @Region = params['Region']
          unless params['CrossBackupAddr'].nil?
            @CrossBackupAddr = []
            params['CrossBackupAddr'].each do |i|
              crossbackupaddr_tmp = CrossBackupAddr.new
              crossbackupaddr_tmp.deserialize(i)
              @CrossBackupAddr << crossbackupaddr_tmp
            end
          end
          unless params['CrossBackupStatus'].nil?
            @CrossBackupStatus = []
            params['CrossBackupStatus'].each do |i|
              crossregionstatus_tmp = CrossRegionStatus.new
              crossregionstatus_tmp.deserialize(i)
              @CrossBackupStatus << crossregionstatus_tmp
            end
          end
        end
      end

      # 在非打包上传备份模式下，每个库对应一个备份文件
      class BackupFile < TencentCloud::Common::AbstractModel
        # @param Id: 备份文件唯一标识
        # @type Id: Integer
        # @param FileName: 备份文件名称
        # @type FileName: String
        # @param Size: 文件大小(K)
        # @type Size: Integer
        # @param DBs: 备份文件的库的名称
        # @type DBs: Array
        # @param DownloadLink: 下载地址
        # @type DownloadLink: String
        # @param Region: 当前实例地域码
        # @type Region: String
        # @param CrossBackupAddr: 备份的跨地域region和所对应的下载地址
        # @type CrossBackupAddr: Array

        attr_accessor :Id, :FileName, :Size, :DBs, :DownloadLink, :Region, :CrossBackupAddr

        def initialize(id=nil, filename=nil, size=nil, dbs=nil, downloadlink=nil, region=nil, crossbackupaddr=nil)
          @Id = id
          @FileName = filename
          @Size = size
          @DBs = dbs
          @DownloadLink = downloadlink
          @Region = region
          @CrossBackupAddr = crossbackupaddr
        end

        def deserialize(params)
          @Id = params['Id']
          @FileName = params['FileName']
          @Size = params['Size']
          @DBs = params['DBs']
          @DownloadLink = params['DownloadLink']
          @Region = params['Region']
          unless params['CrossBackupAddr'].nil?
            @CrossBackupAddr = []
            params['CrossBackupAddr'].each do |i|
              crossbackupaddr_tmp = CrossBackupAddr.new
              crossbackupaddr_tmp.deserialize(i)
              @CrossBackupAddr << crossbackupaddr_tmp
            end
          end
        end
      end

      # BalanceReadOnlyGroup请求参数结构体
      class BalanceReadOnlyGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 主实例ID，格式如：mssql-3l3fgqn7
        # @type InstanceId: String
        # @param ReadOnlyGroupId: 只读组ID，格式如：mssqlrg-dj5i29c5n
        # @type ReadOnlyGroupId: String

        attr_accessor :InstanceId, :ReadOnlyGroupId

        def initialize(instanceid=nil, readonlygroupid=nil)
          @InstanceId = instanceid
          @ReadOnlyGroupId = readonlygroupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
        end
      end

      # BalanceReadOnlyGroup返回参数结构体
      class BalanceReadOnlyGroupResponse < TencentCloud::Common::AbstractModel
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

      # 商业智能服务文件类型
      class BusinessIntelligenceFile < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名称
        # @type FileName: String
        # @param FileType: 文件类型
        # @type FileType: String
        # @param FileURL: 文件的COS_URL
        # @type FileURL: String
        # @param FilePath: 文件在服务器上的路径
        # @type FilePath: String
        # @param FileSize: 文件大小，单位时Byte
        # @type FileSize: Integer
        # @param FileMd5: 文件md5值
        # @type FileMd5: String
        # @param Status: 部署文件状态 1-初始化待部署 2-部署中 3-部署成功 4-部署失败
        # @type Status: Integer
        # @param Remark: 备注信息
        # @type Remark: String
        # @param CreateTime: 文件创建时间
        # @type CreateTime: String
        # @param StartTime: 文件部署开始时间
        # @type StartTime: String
        # @param EndTime: 文件部署结束时间
        # @type EndTime: String
        # @param Message: 报错信息返回
        # @type Message: String
        # @param InstanceId: 商业智能实例ID
        # @type InstanceId: String
        # @param Action: 动作相关信息
        # @type Action: :class:`Tencentcloud::Sqlserver.v20180328.models.FileAction`

        attr_accessor :FileName, :FileType, :FileURL, :FilePath, :FileSize, :FileMd5, :Status, :Remark, :CreateTime, :StartTime, :EndTime, :Message, :InstanceId, :Action

        def initialize(filename=nil, filetype=nil, fileurl=nil, filepath=nil, filesize=nil, filemd5=nil, status=nil, remark=nil, createtime=nil, starttime=nil, endtime=nil, message=nil, instanceid=nil, action=nil)
          @FileName = filename
          @FileType = filetype
          @FileURL = fileurl
          @FilePath = filepath
          @FileSize = filesize
          @FileMd5 = filemd5
          @Status = status
          @Remark = remark
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
          @Message = message
          @InstanceId = instanceid
          @Action = action
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileType = params['FileType']
          @FileURL = params['FileURL']
          @FilePath = params['FilePath']
          @FileSize = params['FileSize']
          @FileMd5 = params['FileMd5']
          @Status = params['Status']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Message = params['Message']
          @InstanceId = params['InstanceId']
          unless params['Action'].nil?
            @Action = FileAction.new
            @Action.deserialize(params['Action'])
          end
        end
      end

      # 实例变配检查条目
      class CheckItem < TencentCloud::Common::AbstractModel
        # @param CheckName: 检查项目名称，CK_CPU-变配后CPU风险检查；CK_MASTER_STORAGE-只读副本变配下，只读副本磁盘空间不小于主实例空间检查；CK_MEMORY-变配后内存风险检查；CK_STORAGE-变配后磁盘空间风险检查；CK_UPGRATE-变配是否需要迁移检查；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckName: String
        # @param CurrentValue: 检查项目返回值，CK_CPU-当前CPU近7天最大的使用率(%) ；CK_MASTER_STORAGE-主实例的磁盘空间(GB)；CK_MEMORY-当前内存近7天最大的使用值（GB)；
        # CK_STORAGE-当前磁盘近7天最大的使用值（GB)；CK_UPGRATE- 当前变配检查是否需要迁移，MIGRATE需要迁移变配，LOCAL本地变配；
        # @type CurrentValue: String
        # @param Passed: 检查条目是否通过 0-不通过，不能变配； 1-通过，可以变配
        # @type Passed: Integer
        # @param IsAffect: 本条目变配是否对实例有影响 0-没有影响 1-有影响
        # @type IsAffect: Integer
        # @param Msg: 有影响或者不通过的情况下的必要描述
        # @type Msg: String
        # @param MsgCode: 描述对应的代码
        # @type MsgCode: Integer

        attr_accessor :CheckName, :CurrentValue, :Passed, :IsAffect, :Msg, :MsgCode

        def initialize(checkname=nil, currentvalue=nil, passed=nil, isaffect=nil, msg=nil, msgcode=nil)
          @CheckName = checkname
          @CurrentValue = currentvalue
          @Passed = passed
          @IsAffect = isaffect
          @Msg = msg
          @MsgCode = msgcode
        end

        def deserialize(params)
          @CheckName = params['CheckName']
          @CurrentValue = params['CurrentValue']
          @Passed = params['Passed']
          @IsAffect = params['IsAffect']
          @Msg = params['Msg']
          @MsgCode = params['MsgCode']
        end
      end

      # CloneDB请求参数结构体
      class CloneDBRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-j8kv137v
        # @type InstanceId: String
        # @param RenameRestore: 按照ReNameRestoreDatabase中的库进行克隆，并重命名，新库名称必须指定
        # @type RenameRestore: Array

        attr_accessor :InstanceId, :RenameRestore

        def initialize(instanceid=nil, renamerestore=nil)
          @InstanceId = instanceid
          @RenameRestore = renamerestore
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['RenameRestore'].nil?
            @RenameRestore = []
            params['RenameRestore'].each do |i|
              renamerestoredatabase_tmp = RenameRestoreDatabase.new
              renamerestoredatabase_tmp.deserialize(i)
              @RenameRestore << renamerestoredatabase_tmp
            end
          end
        end
      end

      # CloneDB返回参数结构体
      class CloneDBResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程任务ID，使用FlowId调用DescribeFlowStatus接口获取任务执行状态
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

      # CloseInterCommunication请求参数结构体
      class CloseInterCommunicationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 关闭互通的实例ID集合
        # @type InstanceIdSet: Array

        attr_accessor :InstanceIdSet

        def initialize(instanceidset=nil)
          @InstanceIdSet = instanceidset
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
        end
      end

      # CloseInterCommunication返回参数结构体
      class CloseInterCommunicationResponse < TencentCloud::Common::AbstractModel
        # @param InterInstanceFlowSet: 实例和异步流程ID
        # @type InterInstanceFlowSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InterInstanceFlowSet, :RequestId

        def initialize(interinstanceflowset=nil, requestid=nil)
          @InterInstanceFlowSet = interinstanceflowset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InterInstanceFlowSet'].nil?
            @InterInstanceFlowSet = []
            params['InterInstanceFlowSet'].each do |i|
              interinstanceflow_tmp = InterInstanceFlow.new
              interinstanceflow_tmp.deserialize(i)
              @InterInstanceFlowSet << interinstanceflow_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CompleteExpansion请求参数结构体
      class CompleteExpansionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-j8kv137v
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # CompleteExpansion返回参数结构体
      class CompleteExpansionResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID，可通过接口DescribeFlowStatus查询立即切换升级任务的状态。
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

      # CompleteMigration请求参数结构体
      class CompleteMigrationRequest < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer

        attr_accessor :MigrateId

        def initialize(migrateid=nil)
          @MigrateId = migrateid
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
        end
      end

      # CompleteMigration返回参数结构体
      class CompleteMigrationResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 完成迁移流程发起后，返回的流程id
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

      # 查询已经上传的备份文件大小。
      class CosUploadBackupFile < TencentCloud::Common::AbstractModel
        # @param FileName: 备份名称
        # @type FileName: String
        # @param Size: 备份大小
        # @type Size: Integer

        attr_accessor :FileName, :Size

        def initialize(filename=nil, size=nil)
          @FileName = filename
          @Size = size
        end

        def deserialize(params)
          @FileName = params['FileName']
          @Size = params['Size']
        end
      end

      # CreateAccount请求参数结构体
      class CreateAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据库实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param Accounts: 数据库实例账户信息
        # @type Accounts: Array

        attr_accessor :InstanceId, :Accounts

        def initialize(instanceid=nil, accounts=nil)
          @InstanceId = instanceid
          @Accounts = accounts
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              accountcreateinfo_tmp = AccountCreateInfo.new
              accountcreateinfo_tmp.deserialize(i)
              @Accounts << accountcreateinfo_tmp
            end
          end
        end
      end

      # CreateAccount返回参数结构体
      class CreateAccountResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
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

      # CreateBackupMigration请求参数结构体
      class CreateBackupMigrationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 导入目标实例ID
        # @type InstanceId: String
        # @param RecoveryType: 迁移任务恢复类型，FULL-全量备份恢复，FULL_LOG-全量备份+事务日志恢复，FULL_DIFF-全量备份+差异备份恢复
        # @type RecoveryType: String
        # @param UploadType: 备份上传类型，COS_URL-备份放在用户的对象存储上，提供URL。COS_UPLOAD-备份放在业务的对象存储上，需要用户上传。
        # @type UploadType: String
        # @param MigrationName: 任务名称
        # @type MigrationName: String
        # @param BackupFiles: UploadType是COS_URL时这里填URL，COS_UPLOAD这里填备份文件的名字。只支持1个备份文件，但1个备份文件内可包含多个库
        # @type BackupFiles: Array

        attr_accessor :InstanceId, :RecoveryType, :UploadType, :MigrationName, :BackupFiles

        def initialize(instanceid=nil, recoverytype=nil, uploadtype=nil, migrationname=nil, backupfiles=nil)
          @InstanceId = instanceid
          @RecoveryType = recoverytype
          @UploadType = uploadtype
          @MigrationName = migrationname
          @BackupFiles = backupfiles
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RecoveryType = params['RecoveryType']
          @UploadType = params['UploadType']
          @MigrationName = params['MigrationName']
          @BackupFiles = params['BackupFiles']
        end
      end

      # CreateBackupMigration返回参数结构体
      class CreateBackupMigrationResponse < TencentCloud::Common::AbstractModel
        # @param BackupMigrationId: 备份导入任务ID
        # @type BackupMigrationId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupMigrationId, :RequestId

        def initialize(backupmigrationid=nil, requestid=nil)
          @BackupMigrationId = backupmigrationid
          @RequestId = requestid
        end

        def deserialize(params)
          @BackupMigrationId = params['BackupMigrationId']
          @RequestId = params['RequestId']
        end
      end

      # CreateBackup请求参数结构体
      class CreateBackupRequest < TencentCloud::Common::AbstractModel
        # @param Strategy: 备份策略(0-实例备份 1-多库备份)
        # @type Strategy: Integer
        # @param DBNames: 需要备份库名的列表(多库备份才填写)
        # @type DBNames: Array
        # @param InstanceId: 实例ID（必填），形如mssql-i1z41iwd
        # @type InstanceId: String
        # @param BackupName: 备份名称，若不填则自动生成“实例ID_备份开始时间戳”
        # @type BackupName: String
        # @param StorageStrategy: 备份存储策略 0-跟随自定义备份保留策略 1-跟随实例生命周期直到实例下线，默认取值0
        # @type StorageStrategy: Integer

        attr_accessor :Strategy, :DBNames, :InstanceId, :BackupName, :StorageStrategy

        def initialize(strategy=nil, dbnames=nil, instanceid=nil, backupname=nil, storagestrategy=nil)
          @Strategy = strategy
          @DBNames = dbnames
          @InstanceId = instanceid
          @BackupName = backupname
          @StorageStrategy = storagestrategy
        end

        def deserialize(params)
          @Strategy = params['Strategy']
          @DBNames = params['DBNames']
          @InstanceId = params['InstanceId']
          @BackupName = params['BackupName']
          @StorageStrategy = params['StorageStrategy']
        end
      end

      # CreateBackup返回参数结构体
      class CreateBackupResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务ID
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

      # CreateBasicDBInstances请求参数结构体
      class CreateBasicDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 实例可用区，类似ap-guangzhou-1（广州一区）；实例可售卖区域可以通过接口DescribeZones获取
        # @type Zone: String
        # @param Cpu: 实例的CPU核心数
        # @type Cpu: Integer
        # @param Memory: 实例内存大小，单位GB
        # @type Memory: Integer
        # @param Storage: 实例磁盘大小，单位GB
        # @type Storage: Integer
        # @param SubnetId: VPC子网ID，形如subnet-bdoe83fa
        # @type SubnetId: String
        # @param VpcId: VPC网络ID，形如vpc-dsp338hz
        # @type VpcId: String
        # @param MachineType: 购买实例的宿主机类型，CLOUD_PREMIUM-虚拟机高性能云盘，CLOUD_SSD-虚拟机SSD云盘,CLOUD_HSSD-虚拟机加强型SSD云盘，CLOUD_TSSD-虚拟机极速型SSD云盘，CLOUD_BSSD-虚拟机通用型SSD云盘
        # @type MachineType: String
        # @param InstanceChargeType: 付费模式，取值支持 PREPAID（预付费），POSTPAID（后付费）。
        # @type InstanceChargeType: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param GoodsNum: 本次购买几个实例，默认值为1。取值不超过10
        # @type GoodsNum: Integer
        # @param DBVersion: sqlserver版本，目前所有支持的版本有：2008R2 (SQL Server 2008 R2 Enterprise)，2012SP3 (SQL Server 2012 Enterprise)，201202 (SQL Server 2012 Standard)，2014SP2 (SQL Server 2014 Enterprise)，201402 (SQL Server 2014 Standard)，2016SP1 (SQL Server 2016 Enterprise)，201602 (SQL Server 2016 Standard)，2017 (SQL Server 2017 Enterprise)，201702 (SQL Server 2017 Standard)，2019 (SQL Server 2019 Enterprise)，201902 (SQL Server 2019 Standard)。每个地域支持售卖的版本不同，可通过DescribeProductConfig接口来拉取每个地域可售卖的版本信息。不填，默认为版本2008R2。
        # @type DBVersion: String
        # @param Period: 购买实例周期，默认取值为1，表示一个月。取值不超过48
        # @type Period: Integer
        # @param SecurityGroupList: 安全组列表，填写形如sg-xxx的安全组ID
        # @type SecurityGroupList: Array
        # @param AutoRenewFlag: 自动续费标志：0-正常续费  1-自动续费，默认为1自动续费。只在购买预付费实例时有效。
        # @type AutoRenewFlag: Integer
        # @param AutoVoucher: 是否自动使用代金券；1 - 是，0 - 否，默认不使用
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID数组，目前单个订单只能使用一张
        # @type VoucherIds: Array
        # @param Weekly: 可维护时间窗配置，以周为单位，表示周几允许维护，1-7分别代表周一到周末
        # @type Weekly: Array
        # @param StartTime: 可维护时间窗配置，每天可维护的开始时间
        # @type StartTime: String
        # @param Span: 可维护时间窗配置，持续时间，单位：小时
        # @type Span: Integer
        # @param ResourceTags: 新建实例绑定的标签集合
        # @type ResourceTags: Array
        # @param Collation: 系统字符集排序规则，默认：Chinese_PRC_CI_AS
        # @type Collation: String
        # @param TimeZone: 系统时区，默认：China Standard Time
        # @type TimeZone: String

        attr_accessor :Zone, :Cpu, :Memory, :Storage, :SubnetId, :VpcId, :MachineType, :InstanceChargeType, :ProjectId, :GoodsNum, :DBVersion, :Period, :SecurityGroupList, :AutoRenewFlag, :AutoVoucher, :VoucherIds, :Weekly, :StartTime, :Span, :ResourceTags, :Collation, :TimeZone

        def initialize(zone=nil, cpu=nil, memory=nil, storage=nil, subnetid=nil, vpcid=nil, machinetype=nil, instancechargetype=nil, projectid=nil, goodsnum=nil, dbversion=nil, period=nil, securitygrouplist=nil, autorenewflag=nil, autovoucher=nil, voucherids=nil, weekly=nil, starttime=nil, span=nil, resourcetags=nil, collation=nil, timezone=nil)
          @Zone = zone
          @Cpu = cpu
          @Memory = memory
          @Storage = storage
          @SubnetId = subnetid
          @VpcId = vpcid
          @MachineType = machinetype
          @InstanceChargeType = instancechargetype
          @ProjectId = projectid
          @GoodsNum = goodsnum
          @DBVersion = dbversion
          @Period = period
          @SecurityGroupList = securitygrouplist
          @AutoRenewFlag = autorenewflag
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @Weekly = weekly
          @StartTime = starttime
          @Span = span
          @ResourceTags = resourcetags
          @Collation = collation
          @TimeZone = timezone
        end

        def deserialize(params)
          @Zone = params['Zone']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @SubnetId = params['SubnetId']
          @VpcId = params['VpcId']
          @MachineType = params['MachineType']
          @InstanceChargeType = params['InstanceChargeType']
          @ProjectId = params['ProjectId']
          @GoodsNum = params['GoodsNum']
          @DBVersion = params['DBVersion']
          @Period = params['Period']
          @SecurityGroupList = params['SecurityGroupList']
          @AutoRenewFlag = params['AutoRenewFlag']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @Weekly = params['Weekly']
          @StartTime = params['StartTime']
          @Span = params['Span']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @Collation = params['Collation']
          @TimeZone = params['TimeZone']
        end
      end

      # CreateBasicDBInstances返回参数结构体
      class CreateBasicDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单名称
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

      # CreateBusinessDBInstances请求参数结构体
      class CreateBusinessDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 实例可用区，类似ap-guangzhou-1（广州一区）；实例可售卖区域可以通过接口DescribeZones获取
        # @type Zone: String
        # @param Memory: 实例内存大小，单位GB
        # @type Memory: Integer
        # @param Storage: 实例磁盘大小，单位GB
        # @type Storage: Integer
        # @param Cpu: 预购买实例的CPU核心数
        # @type Cpu: Integer
        # @param MachineType: 购买实例的宿主机类型，CLOUD_PREMIUM-虚拟机高性能云盘，CLOUD_SSD-虚拟机SSD云盘
        # @type MachineType: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param GoodsNum: 本次购买几个实例，默认值为1
        # @type GoodsNum: Integer
        # @param SubnetId: VPC子网ID，形如subnet-bdoe83fa；SubnetId和VpcId需同时设置或者同时不设置
        # @type SubnetId: String
        # @param VpcId: VPC网络ID，形如vpc-dsp338hz；SubnetId和VpcId需同时设置或者同时不设置
        # @type VpcId: String
        # @param DBVersion: 商业智能服务器版本，目前只支持：201603（SQL Server 2016 Integration Services），201703（SQL Server 2017 Integration Services），201903（SQL Server 2019 Integration Services）版本。每个地域支持售卖的版本不同，可通过DescribeProductConfig接口来拉取每个地域可售卖的版本信息。不填，默认为版本201903。
        # @type DBVersion: String
        # @param SecurityGroupList: 安全组列表，填写形如sg-xxx的安全组ID
        # @type SecurityGroupList: Array
        # @param Weekly: 可维护时间窗配置，以周为单位，表示周几允许维护，1-7分别代表周一到周末
        # @type Weekly: Array
        # @param StartTime: 可维护时间窗配置，每天可维护的开始时间
        # @type StartTime: String
        # @param Span: 可维护时间窗配置，持续时间，单位：小时
        # @type Span: Integer
        # @param ResourceTags: 新建实例绑定的标签集合
        # @type ResourceTags: Array

        attr_accessor :Zone, :Memory, :Storage, :Cpu, :MachineType, :ProjectId, :GoodsNum, :SubnetId, :VpcId, :DBVersion, :SecurityGroupList, :Weekly, :StartTime, :Span, :ResourceTags

        def initialize(zone=nil, memory=nil, storage=nil, cpu=nil, machinetype=nil, projectid=nil, goodsnum=nil, subnetid=nil, vpcid=nil, dbversion=nil, securitygrouplist=nil, weekly=nil, starttime=nil, span=nil, resourcetags=nil)
          @Zone = zone
          @Memory = memory
          @Storage = storage
          @Cpu = cpu
          @MachineType = machinetype
          @ProjectId = projectid
          @GoodsNum = goodsnum
          @SubnetId = subnetid
          @VpcId = vpcid
          @DBVersion = dbversion
          @SecurityGroupList = securitygrouplist
          @Weekly = weekly
          @StartTime = starttime
          @Span = span
          @ResourceTags = resourcetags
        end

        def deserialize(params)
          @Zone = params['Zone']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @Cpu = params['Cpu']
          @MachineType = params['MachineType']
          @ProjectId = params['ProjectId']
          @GoodsNum = params['GoodsNum']
          @SubnetId = params['SubnetId']
          @VpcId = params['VpcId']
          @DBVersion = params['DBVersion']
          @SecurityGroupList = params['SecurityGroupList']
          @Weekly = params['Weekly']
          @StartTime = params['StartTime']
          @Span = params['Span']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
        end
      end

      # CreateBusinessDBInstances返回参数结构体
      class CreateBusinessDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单名称
        # @type DealName: String
        # @param FlowId: 流程ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: Integer
        # @param InstanceIdSet: 实例ID集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceIdSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :FlowId, :InstanceIdSet, :RequestId

        def initialize(dealname=nil, flowid=nil, instanceidset=nil, requestid=nil)
          @DealName = dealname
          @FlowId = flowid
          @InstanceIdSet = instanceidset
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @FlowId = params['FlowId']
          @InstanceIdSet = params['InstanceIdSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateBusinessIntelligenceFile请求参数结构体
      class CreateBusinessIntelligenceFileRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param FileURL: COS_URL
        # @type FileURL: String
        # @param FileType: 文件类型 FLAT-作为数据源的平面文件， SSIS-ssis项目包
        # @type FileType: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :InstanceId, :FileURL, :FileType, :Remark

        def initialize(instanceid=nil, fileurl=nil, filetype=nil, remark=nil)
          @InstanceId = instanceid
          @FileURL = fileurl
          @FileType = filetype
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FileURL = params['FileURL']
          @FileType = params['FileType']
          @Remark = params['Remark']
        end
      end

      # CreateBusinessIntelligenceFile返回参数结构体
      class CreateBusinessIntelligenceFileResponse < TencentCloud::Common::AbstractModel
        # @param FileTaskId: 文件名称
        # @type FileTaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileTaskId, :RequestId

        def initialize(filetaskid=nil, requestid=nil)
          @FileTaskId = filetaskid
          @RequestId = requestid
        end

        def deserialize(params)
          @FileTaskId = params['FileTaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCloudDBInstances请求参数结构体
      class CreateCloudDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 实例可用区，类似ap-guangzhou-1（广州一区）；实例可售卖区域可以通过接口DescribeZones获取
        # @type Zone: String
        # @param Memory: 实例内存大小，单位GB
        # @type Memory: Integer
        # @param Storage: 实例磁盘大小，单位GB
        # @type Storage: Integer
        # @param Cpu: 实例核心数
        # @type Cpu: Integer
        # @param MachineType: 购买实例的宿主机磁盘类型,CLOUD_HSSD-虚拟机加强型SSD云盘，CLOUD_TSSD-虚拟机极速型SSD云盘，CLOUD_BSSD-虚拟机通用型SSD云盘
        # @type MachineType: String
        # @param InstanceChargeType: 付费模式，取值支持 PREPAID（预付费），POSTPAID（后付费）。
        # @type InstanceChargeType: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param GoodsNum: 本次购买几个实例，默认值为1。取值不超过10
        # @type GoodsNum: Integer
        # @param SubnetId: VPC子网ID，形如subnet-bdoe83fa；SubnetId和VpcId需同时设置或者同时不设置
        # @type SubnetId: String
        # @param VpcId: VPC网络ID，形如vpc-dsp338hz；SubnetId和VpcId需同时设置或者同时不设置
        # @type VpcId: String
        # @param Period: 购买实例周期，默认取值为1，表示一个月。取值不超过48
        # @type Period: Integer
        # @param AutoVoucher: 是否自动使用代金券；1 - 是，0 - 否，默认不使用
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID数组，目前单个订单只能使用一张
        # @type VoucherIds: Array
        # @param DBVersion: sqlserver版本，目前所有支持的版本有：2008R2 (SQL Server 2008 R2 Enterprise)，2012SP3 (SQL Server 2012 Enterprise)，201202 (SQL Server 2012 Standard)，2014SP2 (SQL Server 2014 Enterprise)，201402 (SQL Server 2014 Standard)，2016SP1 (SQL Server 2016 Enterprise)，201602 (SQL Server 2016 Standard)，2017 (SQL Server 2017 Enterprise)，201702 (SQL Server 2017 Standard)，2019 (SQL Server 2019 Enterprise)，201902 (SQL Server 2019 Standard)。每个地域支持售卖的版本不同，可通过DescribeProductConfig接口来拉取每个地域可售卖的版本信息。不填，默认为版本2008R2。
        # @type DBVersion: String
        # @param AutoRenewFlag: 自动续费标志：0-正常续费  1-自动续费，默认为1自动续费。只在购买预付费实例时有效。
        # @type AutoRenewFlag: Integer
        # @param SecurityGroupList: 安全组列表，填写形如sg-xxx的安全组ID
        # @type SecurityGroupList: Array
        # @param Weekly: 可维护时间窗配置，以周为单位，表示周几允许维护，1-7分别代表周一到周末
        # @type Weekly: Array
        # @param StartTime: 可维护时间窗配置，每天可维护的开始时间
        # @type StartTime: String
        # @param Span: 可维护时间窗配置，持续时间，单位：小时
        # @type Span: Integer
        # @param MultiZones: 是否跨可用区部署，默认值为false
        # @type MultiZones: Boolean
        # @param ResourceTags: 新建实例绑定的标签集合
        # @type ResourceTags: Array
        # @param Collation: 系统字符集排序规则，默认：Chinese_PRC_CI_AS
        # @type Collation: String
        # @param TimeZone: 系统时区，默认：China Standard Time
        # @type TimeZone: String

        attr_accessor :Zone, :Memory, :Storage, :Cpu, :MachineType, :InstanceChargeType, :ProjectId, :GoodsNum, :SubnetId, :VpcId, :Period, :AutoVoucher, :VoucherIds, :DBVersion, :AutoRenewFlag, :SecurityGroupList, :Weekly, :StartTime, :Span, :MultiZones, :ResourceTags, :Collation, :TimeZone

        def initialize(zone=nil, memory=nil, storage=nil, cpu=nil, machinetype=nil, instancechargetype=nil, projectid=nil, goodsnum=nil, subnetid=nil, vpcid=nil, period=nil, autovoucher=nil, voucherids=nil, dbversion=nil, autorenewflag=nil, securitygrouplist=nil, weekly=nil, starttime=nil, span=nil, multizones=nil, resourcetags=nil, collation=nil, timezone=nil)
          @Zone = zone
          @Memory = memory
          @Storage = storage
          @Cpu = cpu
          @MachineType = machinetype
          @InstanceChargeType = instancechargetype
          @ProjectId = projectid
          @GoodsNum = goodsnum
          @SubnetId = subnetid
          @VpcId = vpcid
          @Period = period
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @DBVersion = dbversion
          @AutoRenewFlag = autorenewflag
          @SecurityGroupList = securitygrouplist
          @Weekly = weekly
          @StartTime = starttime
          @Span = span
          @MultiZones = multizones
          @ResourceTags = resourcetags
          @Collation = collation
          @TimeZone = timezone
        end

        def deserialize(params)
          @Zone = params['Zone']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @Cpu = params['Cpu']
          @MachineType = params['MachineType']
          @InstanceChargeType = params['InstanceChargeType']
          @ProjectId = params['ProjectId']
          @GoodsNum = params['GoodsNum']
          @SubnetId = params['SubnetId']
          @VpcId = params['VpcId']
          @Period = params['Period']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @DBVersion = params['DBVersion']
          @AutoRenewFlag = params['AutoRenewFlag']
          @SecurityGroupList = params['SecurityGroupList']
          @Weekly = params['Weekly']
          @StartTime = params['StartTime']
          @Span = params['Span']
          @MultiZones = params['MultiZones']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @Collation = params['Collation']
          @TimeZone = params['TimeZone']
        end
      end

      # CreateCloudDBInstances返回参数结构体
      class CreateCloudDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单名称
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

      # CreateCloudReadOnlyDBInstances请求参数结构体
      class CreateCloudReadOnlyDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 主实例ID，格式如：mssql-3l3fgqn7
        # @type InstanceId: String
        # @param Zone: 实例可用区，类似ap-guangzhou-1（广州一区）；实例可售卖区域可以通过接口DescribeZones获取
        # @type Zone: String
        # @param ReadOnlyGroupType: 只读组类型选项，1-按照一个实例一个只读组的方式发货，2-新建只读组后发货，所有实例都在这个只读组下面， 3-发货的所有实例都在已有的只读组下面
        # @type ReadOnlyGroupType: Integer
        # @param Memory: 实例内存大小，单位GB
        # @type Memory: Integer
        # @param Storage: 实例磁盘大小，单位GB
        # @type Storage: Integer
        # @param Cpu: 实例核心数
        # @type Cpu: Integer
        # @param MachineType: 购买实例的宿主机磁盘类型,CLOUD_HSSD-虚拟机加强型SSD云盘，CLOUD_TSSD-虚拟机极速型SSD云盘，CLOUD_BSSD-虚拟机通用型SSD云盘
        # @type MachineType: String
        # @param ReadOnlyGroupForcedUpgrade: 0-默认不升级主实例，1-强制升级主实例完成ro部署；主实例为非集群版时需要填1，强制升级为集群版。填1 说明您已同意将主实例升级到集群版实例。
        # @type ReadOnlyGroupForcedUpgrade: Integer
        # @param ReadOnlyGroupId: ReadOnlyGroupType=3时必填,已存在的只读组ID
        # @type ReadOnlyGroupId: String
        # @param ReadOnlyGroupName: ReadOnlyGroupType=2时必填，新建的只读组名称
        # @type ReadOnlyGroupName: String
        # @param ReadOnlyGroupIsOfflineDelay: ReadOnlyGroupType=2时必填，新建的只读组是否开启延迟剔除功能，1-开启，0-关闭。当只读副本与主实例延迟大于阈值后，自动剔除。
        # @type ReadOnlyGroupIsOfflineDelay: Integer
        # @param ReadOnlyGroupMaxDelayTime: ReadOnlyGroupType=2 且 ReadOnlyGroupIsOfflineDelay=1时必填，新建的只读组延迟剔除的阈值。
        # @type ReadOnlyGroupMaxDelayTime: Integer
        # @param ReadOnlyGroupMinInGroup: ReadOnlyGroupType=2 且 ReadOnlyGroupIsOfflineDelay=1时必填，新建的只读组延迟剔除后至少保留只读副本的个数。
        # @type ReadOnlyGroupMinInGroup: Integer
        # @param InstanceChargeType: 付费模式，取值支持 PREPAID（预付费），POSTPAID（后付费）。
        # @type InstanceChargeType: String
        # @param GoodsNum: 本次即将购买的实例数量，默认取值2。
        # @type GoodsNum: Integer
        # @param SubnetId: VPC子网ID，形如subnet-bdoe83fa；SubnetId和VpcId需同时设置或者同时不设置
        # @type SubnetId: String
        # @param VpcId: VPC网络ID，形如vpc-dsp338hz；SubnetId和VpcId需同时设置或者同时不设置
        # @type VpcId: String
        # @param Period: 购买实例周期，默认取值为1，表示一个月。取值不超过48
        # @type Period: Integer
        # @param SecurityGroupList: 安全组列表，填写形如sg-xxx的安全组ID
        # @type SecurityGroupList: Array
        # @param AutoVoucher: 是否自动使用代金券；1 - 是，0 - 否，默认不使用
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID数组，目前单个订单只能使用一张
        # @type VoucherIds: Array
        # @param ResourceTags: 新建实例绑定的标签集合
        # @type ResourceTags: Array
        # @param Collation: 系统字符集排序规则，默认：Chinese_PRC_CI_AS
        # @type Collation: String
        # @param TimeZone: 系统时区，默认：China Standard Time
        # @type TimeZone: String

        attr_accessor :InstanceId, :Zone, :ReadOnlyGroupType, :Memory, :Storage, :Cpu, :MachineType, :ReadOnlyGroupForcedUpgrade, :ReadOnlyGroupId, :ReadOnlyGroupName, :ReadOnlyGroupIsOfflineDelay, :ReadOnlyGroupMaxDelayTime, :ReadOnlyGroupMinInGroup, :InstanceChargeType, :GoodsNum, :SubnetId, :VpcId, :Period, :SecurityGroupList, :AutoVoucher, :VoucherIds, :ResourceTags, :Collation, :TimeZone

        def initialize(instanceid=nil, zone=nil, readonlygrouptype=nil, memory=nil, storage=nil, cpu=nil, machinetype=nil, readonlygroupforcedupgrade=nil, readonlygroupid=nil, readonlygroupname=nil, readonlygroupisofflinedelay=nil, readonlygroupmaxdelaytime=nil, readonlygroupminingroup=nil, instancechargetype=nil, goodsnum=nil, subnetid=nil, vpcid=nil, period=nil, securitygrouplist=nil, autovoucher=nil, voucherids=nil, resourcetags=nil, collation=nil, timezone=nil)
          @InstanceId = instanceid
          @Zone = zone
          @ReadOnlyGroupType = readonlygrouptype
          @Memory = memory
          @Storage = storage
          @Cpu = cpu
          @MachineType = machinetype
          @ReadOnlyGroupForcedUpgrade = readonlygroupforcedupgrade
          @ReadOnlyGroupId = readonlygroupid
          @ReadOnlyGroupName = readonlygroupname
          @ReadOnlyGroupIsOfflineDelay = readonlygroupisofflinedelay
          @ReadOnlyGroupMaxDelayTime = readonlygroupmaxdelaytime
          @ReadOnlyGroupMinInGroup = readonlygroupminingroup
          @InstanceChargeType = instancechargetype
          @GoodsNum = goodsnum
          @SubnetId = subnetid
          @VpcId = vpcid
          @Period = period
          @SecurityGroupList = securitygrouplist
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @ResourceTags = resourcetags
          @Collation = collation
          @TimeZone = timezone
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Zone = params['Zone']
          @ReadOnlyGroupType = params['ReadOnlyGroupType']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @Cpu = params['Cpu']
          @MachineType = params['MachineType']
          @ReadOnlyGroupForcedUpgrade = params['ReadOnlyGroupForcedUpgrade']
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          @ReadOnlyGroupName = params['ReadOnlyGroupName']
          @ReadOnlyGroupIsOfflineDelay = params['ReadOnlyGroupIsOfflineDelay']
          @ReadOnlyGroupMaxDelayTime = params['ReadOnlyGroupMaxDelayTime']
          @ReadOnlyGroupMinInGroup = params['ReadOnlyGroupMinInGroup']
          @InstanceChargeType = params['InstanceChargeType']
          @GoodsNum = params['GoodsNum']
          @SubnetId = params['SubnetId']
          @VpcId = params['VpcId']
          @Period = params['Period']
          @SecurityGroupList = params['SecurityGroupList']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @Collation = params['Collation']
          @TimeZone = params['TimeZone']
        end
      end

      # CreateCloudReadOnlyDBInstances返回参数结构体
      class CreateCloudReadOnlyDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param DealNames: 订单名称数组
        # @type DealNames: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealNames, :RequestId

        def initialize(dealnames=nil, requestid=nil)
          @DealNames = dealnames
          @RequestId = requestid
        end

        def deserialize(params)
          @DealNames = params['DealNames']
          @RequestId = params['RequestId']
        end
      end

      # CreateDBInstances请求参数结构体
      class CreateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 实例可用区，类似ap-guangzhou-1（广州一区）；实例可售卖区域可以通过接口DescribeZones获取
        # @type Zone: String
        # @param Memory: 实例内存大小，单位GB
        # @type Memory: Integer
        # @param Storage: 实例磁盘大小，单位GB
        # @type Storage: Integer
        # @param InstanceChargeType: 付费模式，取值支持 PREPAID（预付费），POSTPAID（后付费）。
        # @type InstanceChargeType: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param GoodsNum: 本次购买几个实例，默认值为1。取值不超过10
        # @type GoodsNum: Integer
        # @param SubnetId: VPC子网ID，形如subnet-bdoe83fa；SubnetId和VpcId需同时设置或者同时不设置
        # @type SubnetId: String
        # @param VpcId: VPC网络ID，形如vpc-dsp338hz；SubnetId和VpcId需同时设置或者同时不设置
        # @type VpcId: String
        # @param Period: 购买实例周期，默认取值为1，表示一个月。取值不超过48
        # @type Period: Integer
        # @param AutoVoucher: 是否自动使用代金券；1 - 是，0 - 否，默认不使用
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID数组，目前单个订单只能使用一张
        # @type VoucherIds: Array
        # @param DBVersion: sqlserver版本，目前所有支持的版本有：2008R2 (SQL Server 2008 R2 Enterprise)，2012SP3 (SQL Server 2012 Enterprise)，201202 (SQL Server 2012 Standard)，2014SP2 (SQL Server 2014 Enterprise)，201402 (SQL Server 2014 Standard)，2016SP1 (SQL Server 2016 Enterprise)，201602 (SQL Server 2016 Standard)，2017 (SQL Server 2017 Enterprise)，201702 (SQL Server 2017 Standard)，2019 (SQL Server 2019 Enterprise)，201902 (SQL Server 2019 Standard)。每个地域支持售卖的版本不同，可通过DescribeProductConfig接口来拉取每个地域可售卖的版本信息。不填，默认为版本2008R2。
        # @type DBVersion: String
        # @param AutoRenewFlag: 自动续费标志：0-正常续费  1-自动续费，默认为1自动续费。只在购买预付费实例时有效。
        # @type AutoRenewFlag: Integer
        # @param SecurityGroupList: 安全组列表，填写形如sg-xxx的安全组ID
        # @type SecurityGroupList: Array
        # @param Weekly: 可维护时间窗配置，以周为单位，表示周几允许维护，1-7分别代表周一到周末
        # @type Weekly: Array
        # @param StartTime: 可维护时间窗配置，每天可维护的开始时间
        # @type StartTime: String
        # @param Span: 可维护时间窗配置，持续时间，单位：小时
        # @type Span: Integer
        # @param HAType: 购买高可用实例的类型：DUAL-双机高可用  CLUSTER-集群，默认值为DUAL
        # @type HAType: String
        # @param MultiZones: 是否跨可用区部署，默认值为false
        # @type MultiZones: Boolean
        # @param ResourceTags: 新建实例绑定的标签集合
        # @type ResourceTags: Array
        # @param Collation: 系统字符集排序规则，默认：Chinese_PRC_CI_AS
        # @type Collation: String
        # @param TimeZone: 系统时区，默认：China Standard Time
        # @type TimeZone: String

        attr_accessor :Zone, :Memory, :Storage, :InstanceChargeType, :ProjectId, :GoodsNum, :SubnetId, :VpcId, :Period, :AutoVoucher, :VoucherIds, :DBVersion, :AutoRenewFlag, :SecurityGroupList, :Weekly, :StartTime, :Span, :HAType, :MultiZones, :ResourceTags, :Collation, :TimeZone

        def initialize(zone=nil, memory=nil, storage=nil, instancechargetype=nil, projectid=nil, goodsnum=nil, subnetid=nil, vpcid=nil, period=nil, autovoucher=nil, voucherids=nil, dbversion=nil, autorenewflag=nil, securitygrouplist=nil, weekly=nil, starttime=nil, span=nil, hatype=nil, multizones=nil, resourcetags=nil, collation=nil, timezone=nil)
          @Zone = zone
          @Memory = memory
          @Storage = storage
          @InstanceChargeType = instancechargetype
          @ProjectId = projectid
          @GoodsNum = goodsnum
          @SubnetId = subnetid
          @VpcId = vpcid
          @Period = period
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @DBVersion = dbversion
          @AutoRenewFlag = autorenewflag
          @SecurityGroupList = securitygrouplist
          @Weekly = weekly
          @StartTime = starttime
          @Span = span
          @HAType = hatype
          @MultiZones = multizones
          @ResourceTags = resourcetags
          @Collation = collation
          @TimeZone = timezone
        end

        def deserialize(params)
          @Zone = params['Zone']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @InstanceChargeType = params['InstanceChargeType']
          @ProjectId = params['ProjectId']
          @GoodsNum = params['GoodsNum']
          @SubnetId = params['SubnetId']
          @VpcId = params['VpcId']
          @Period = params['Period']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @DBVersion = params['DBVersion']
          @AutoRenewFlag = params['AutoRenewFlag']
          @SecurityGroupList = params['SecurityGroupList']
          @Weekly = params['Weekly']
          @StartTime = params['StartTime']
          @Span = params['Span']
          @HAType = params['HAType']
          @MultiZones = params['MultiZones']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @Collation = params['Collation']
          @TimeZone = params['TimeZone']
        end
      end

      # CreateDBInstances返回参数结构体
      class CreateDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单名称
        # @type DealName: String
        # @param DealNames: 订单名称数组
        # @type DealNames: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :DealNames, :RequestId

        def initialize(dealname=nil, dealnames=nil, requestid=nil)
          @DealName = dealname
          @DealNames = dealnames
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @DealNames = params['DealNames']
          @RequestId = params['RequestId']
        end
      end

      # CreateDB请求参数结构体
      class CreateDBRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param DBs: 数据库创建信息
        # @type DBs: Array

        attr_accessor :InstanceId, :DBs

        def initialize(instanceid=nil, dbs=nil)
          @InstanceId = instanceid
          @DBs = dbs
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['DBs'].nil?
            @DBs = []
            params['DBs'].each do |i|
              dbcreateinfo_tmp = DBCreateInfo.new
              dbcreateinfo_tmp.deserialize(i)
              @DBs << dbcreateinfo_tmp
            end
          end
        end
      end

      # CreateDB返回参数结构体
      class CreateDBResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
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

      # CreateIncrementalMigration请求参数结构体
      class CreateIncrementalMigrationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 导入目标实例ID
        # @type InstanceId: String
        # @param BackupMigrationId: 备份导入任务ID，由CreateBackupMigration接口返回
        # @type BackupMigrationId: String
        # @param BackupFiles: 增量备份文件，全量备份任务UploadType是COS_URL时这里填URL，是COS_UPLOAD这里填备份文件的名字；只支持1个备份文件，但1个备份文件内可包含多个库
        # @type BackupFiles: Array
        # @param IsRecovery: 是否需要恢复，NO-不需要，YES-需要，默认不需要
        # @type IsRecovery: String

        attr_accessor :InstanceId, :BackupMigrationId, :BackupFiles, :IsRecovery

        def initialize(instanceid=nil, backupmigrationid=nil, backupfiles=nil, isrecovery=nil)
          @InstanceId = instanceid
          @BackupMigrationId = backupmigrationid
          @BackupFiles = backupfiles
          @IsRecovery = isrecovery
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMigrationId = params['BackupMigrationId']
          @BackupFiles = params['BackupFiles']
          @IsRecovery = params['IsRecovery']
        end
      end

      # CreateIncrementalMigration返回参数结构体
      class CreateIncrementalMigrationResponse < TencentCloud::Common::AbstractModel
        # @param IncrementalMigrationId: 增量备份导入任务ID
        # @type IncrementalMigrationId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IncrementalMigrationId, :RequestId

        def initialize(incrementalmigrationid=nil, requestid=nil)
          @IncrementalMigrationId = incrementalmigrationid
          @RequestId = requestid
        end

        def deserialize(params)
          @IncrementalMigrationId = params['IncrementalMigrationId']
          @RequestId = params['RequestId']
        end
      end

      # CreateMigration请求参数结构体
      class CreateMigrationRequest < TencentCloud::Common::AbstractModel
        # @param MigrateName: 迁移任务的名称
        # @type MigrateName: String
        # @param MigrateType: 迁移类型（1:结构迁移 2:数据迁移 3:增量同步）
        # @type MigrateType: Integer
        # @param SourceType: 迁移源的类型 1:TencentDB for SQLServer 2:云服务器自建SQLServer数据库 4:SQLServer备份还原 5:SQLServer备份还原（COS方式）
        # @type SourceType: Integer
        # @param Source: 迁移源
        # @type Source: :class:`Tencentcloud::Sqlserver.v20180328.models.MigrateSource`
        # @param Target: 迁移目标
        # @type Target: :class:`Tencentcloud::Sqlserver.v20180328.models.MigrateTarget`
        # @param MigrateDBSet: 迁移DB对象 ，离线迁移不使用（SourceType=4或SourceType=5）。
        # @type MigrateDBSet: Array
        # @param RenameRestore: 按照ReNameRestoreDatabase中的库进行恢复，并重命名，不填则按照默认方式命名恢复的库，且恢复所有的库。SourceType=5的情况下有效。
        # @type RenameRestore: Array

        attr_accessor :MigrateName, :MigrateType, :SourceType, :Source, :Target, :MigrateDBSet, :RenameRestore

        def initialize(migratename=nil, migratetype=nil, sourcetype=nil, source=nil, target=nil, migratedbset=nil, renamerestore=nil)
          @MigrateName = migratename
          @MigrateType = migratetype
          @SourceType = sourcetype
          @Source = source
          @Target = target
          @MigrateDBSet = migratedbset
          @RenameRestore = renamerestore
        end

        def deserialize(params)
          @MigrateName = params['MigrateName']
          @MigrateType = params['MigrateType']
          @SourceType = params['SourceType']
          unless params['Source'].nil?
            @Source = MigrateSource.new
            @Source.deserialize(params['Source'])
          end
          unless params['Target'].nil?
            @Target = MigrateTarget.new
            @Target.deserialize(params['Target'])
          end
          unless params['MigrateDBSet'].nil?
            @MigrateDBSet = []
            params['MigrateDBSet'].each do |i|
              migratedb_tmp = MigrateDB.new
              migratedb_tmp.deserialize(i)
              @MigrateDBSet << migratedb_tmp
            end
          end
          unless params['RenameRestore'].nil?
            @RenameRestore = []
            params['RenameRestore'].each do |i|
              renamerestoredatabase_tmp = RenameRestoreDatabase.new
              renamerestoredatabase_tmp.deserialize(i)
              @RenameRestore << renamerestoredatabase_tmp
            end
          end
        end
      end

      # CreateMigration返回参数结构体
      class CreateMigrationResponse < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MigrateId, :RequestId

        def initialize(migrateid=nil, requestid=nil)
          @MigrateId = migrateid
          @RequestId = requestid
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
          @RequestId = params['RequestId']
        end
      end

      # CreatePublishSubscribe请求参数结构体
      class CreatePublishSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param PublishInstanceId: 发布实例ID，形如mssql-j8kv137v
        # @type PublishInstanceId: String
        # @param SubscribeInstanceId: 订阅实例ID，形如mssql-j8kv137v
        # @type SubscribeInstanceId: String
        # @param DatabaseTupleSet: 数据库的订阅发布关系集合
        # @type DatabaseTupleSet: Array
        # @param PublishSubscribeName: 发布订阅的名称，默认值为：default_name
        # @type PublishSubscribeName: String

        attr_accessor :PublishInstanceId, :SubscribeInstanceId, :DatabaseTupleSet, :PublishSubscribeName

        def initialize(publishinstanceid=nil, subscribeinstanceid=nil, databasetupleset=nil, publishsubscribename=nil)
          @PublishInstanceId = publishinstanceid
          @SubscribeInstanceId = subscribeinstanceid
          @DatabaseTupleSet = databasetupleset
          @PublishSubscribeName = publishsubscribename
        end

        def deserialize(params)
          @PublishInstanceId = params['PublishInstanceId']
          @SubscribeInstanceId = params['SubscribeInstanceId']
          unless params['DatabaseTupleSet'].nil?
            @DatabaseTupleSet = []
            params['DatabaseTupleSet'].each do |i|
              databasetuple_tmp = DatabaseTuple.new
              databasetuple_tmp.deserialize(i)
              @DatabaseTupleSet << databasetuple_tmp
            end
          end
          @PublishSubscribeName = params['PublishSubscribeName']
        end
      end

      # CreatePublishSubscribe返回参数结构体
      class CreatePublishSubscribeResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID，可通过接口DescribeFlowStatus查询立即切换升级任务的状态。
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

      # CreateReadOnlyDBInstances请求参数结构体
      class CreateReadOnlyDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 主实例ID，格式如：mssql-3l3fgqn7
        # @type InstanceId: String
        # @param Zone: 实例可用区，类似ap-guangzhou-1（广州一区）；实例可售卖区域可以通过接口DescribeZones获取
        # @type Zone: String
        # @param ReadOnlyGroupType: 只读组类型选项，1-按照一个实例一个只读组的方式发货，2-新建只读组后发货，所有实例都在这个只读组下面， 3-发货的所有实例都在已有的只读组下面
        # @type ReadOnlyGroupType: Integer
        # @param Memory: 实例内存大小，单位GB
        # @type Memory: Integer
        # @param Storage: 实例磁盘大小，单位GB
        # @type Storage: Integer
        # @param ReadOnlyGroupForcedUpgrade: 0-默认不升级主实例，1-强制升级主实例完成ro部署；主实例为非集群版时需要填1，强制升级为集群版。填1 说明您已同意将主实例升级到集群版实例。
        # @type ReadOnlyGroupForcedUpgrade: Integer
        # @param ReadOnlyGroupId: ReadOnlyGroupType=3时必填,已存在的只读组ID
        # @type ReadOnlyGroupId: String
        # @param ReadOnlyGroupName: ReadOnlyGroupType=2时必填，新建的只读组名称
        # @type ReadOnlyGroupName: String
        # @param ReadOnlyGroupIsOfflineDelay: ReadOnlyGroupType=2时必填，新建的只读组是否开启延迟剔除功能，1-开启，0-关闭。当只读副本与主实例延迟大于阈值后，自动剔除。
        # @type ReadOnlyGroupIsOfflineDelay: Integer
        # @param ReadOnlyGroupMaxDelayTime: ReadOnlyGroupType=2 且 ReadOnlyGroupIsOfflineDelay=1时必填，新建的只读组延迟剔除的阈值。
        # @type ReadOnlyGroupMaxDelayTime: Integer
        # @param ReadOnlyGroupMinInGroup: ReadOnlyGroupType=2 且 ReadOnlyGroupIsOfflineDelay=1时必填，新建的只读组延迟剔除后至少保留只读副本的个数。
        # @type ReadOnlyGroupMinInGroup: Integer
        # @param InstanceChargeType: 付费模式，取值支持 PREPAID（预付费），POSTPAID（后付费）。
        # @type InstanceChargeType: String
        # @param GoodsNum: 本次购买几个只读实例，默认值为2。
        # @type GoodsNum: Integer
        # @param SubnetId: VPC子网ID，形如subnet-bdoe83fa；SubnetId和VpcId需同时设置或者同时不设置
        # @type SubnetId: String
        # @param VpcId: VPC网络ID，形如vpc-dsp338hz；SubnetId和VpcId需同时设置或者同时不设置
        # @type VpcId: String
        # @param Period: 购买实例周期，默认取值为1，表示一个月。取值不超过48
        # @type Period: Integer
        # @param SecurityGroupList: 安全组列表，填写形如sg-xxx的安全组ID
        # @type SecurityGroupList: Array
        # @param AutoVoucher: 是否自动使用代金券；1 - 是，0 - 否，默认不使用
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID数组，目前单个订单只能使用一张
        # @type VoucherIds: Array
        # @param ResourceTags: 新建实例绑定的标签集合
        # @type ResourceTags: Array
        # @param Collation: 系统字符集排序规则，默认：Chinese_PRC_CI_AS
        # @type Collation: String
        # @param TimeZone: 系统时区，默认：China Standard Time
        # @type TimeZone: String

        attr_accessor :InstanceId, :Zone, :ReadOnlyGroupType, :Memory, :Storage, :ReadOnlyGroupForcedUpgrade, :ReadOnlyGroupId, :ReadOnlyGroupName, :ReadOnlyGroupIsOfflineDelay, :ReadOnlyGroupMaxDelayTime, :ReadOnlyGroupMinInGroup, :InstanceChargeType, :GoodsNum, :SubnetId, :VpcId, :Period, :SecurityGroupList, :AutoVoucher, :VoucherIds, :ResourceTags, :Collation, :TimeZone

        def initialize(instanceid=nil, zone=nil, readonlygrouptype=nil, memory=nil, storage=nil, readonlygroupforcedupgrade=nil, readonlygroupid=nil, readonlygroupname=nil, readonlygroupisofflinedelay=nil, readonlygroupmaxdelaytime=nil, readonlygroupminingroup=nil, instancechargetype=nil, goodsnum=nil, subnetid=nil, vpcid=nil, period=nil, securitygrouplist=nil, autovoucher=nil, voucherids=nil, resourcetags=nil, collation=nil, timezone=nil)
          @InstanceId = instanceid
          @Zone = zone
          @ReadOnlyGroupType = readonlygrouptype
          @Memory = memory
          @Storage = storage
          @ReadOnlyGroupForcedUpgrade = readonlygroupforcedupgrade
          @ReadOnlyGroupId = readonlygroupid
          @ReadOnlyGroupName = readonlygroupname
          @ReadOnlyGroupIsOfflineDelay = readonlygroupisofflinedelay
          @ReadOnlyGroupMaxDelayTime = readonlygroupmaxdelaytime
          @ReadOnlyGroupMinInGroup = readonlygroupminingroup
          @InstanceChargeType = instancechargetype
          @GoodsNum = goodsnum
          @SubnetId = subnetid
          @VpcId = vpcid
          @Period = period
          @SecurityGroupList = securitygrouplist
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @ResourceTags = resourcetags
          @Collation = collation
          @TimeZone = timezone
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Zone = params['Zone']
          @ReadOnlyGroupType = params['ReadOnlyGroupType']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @ReadOnlyGroupForcedUpgrade = params['ReadOnlyGroupForcedUpgrade']
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          @ReadOnlyGroupName = params['ReadOnlyGroupName']
          @ReadOnlyGroupIsOfflineDelay = params['ReadOnlyGroupIsOfflineDelay']
          @ReadOnlyGroupMaxDelayTime = params['ReadOnlyGroupMaxDelayTime']
          @ReadOnlyGroupMinInGroup = params['ReadOnlyGroupMinInGroup']
          @InstanceChargeType = params['InstanceChargeType']
          @GoodsNum = params['GoodsNum']
          @SubnetId = params['SubnetId']
          @VpcId = params['VpcId']
          @Period = params['Period']
          @SecurityGroupList = params['SecurityGroupList']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @Collation = params['Collation']
          @TimeZone = params['TimeZone']
        end
      end

      # CreateReadOnlyDBInstances返回参数结构体
      class CreateReadOnlyDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param DealNames: 订单名称数组
        # @type DealNames: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealNames, :RequestId

        def initialize(dealnames=nil, requestid=nil)
          @DealNames = dealnames
          @RequestId = requestid
        end

        def deserialize(params)
          @DealNames = params['DealNames']
          @RequestId = params['RequestId']
        end
      end

      # 跨地域备份下载地址集合
      class CrossBackupAddr < TencentCloud::Common::AbstractModel
        # @param CrossRegion: 跨地域备份目标地域
        # @type CrossRegion: String
        # @param CrossInternalAddr: 跨地域备份内网下载地址
        # @type CrossInternalAddr: String
        # @param CrossExternalAddr: 跨地域备份外网下载地址
        # @type CrossExternalAddr: String

        attr_accessor :CrossRegion, :CrossInternalAddr, :CrossExternalAddr

        def initialize(crossregion=nil, crossinternaladdr=nil, crossexternaladdr=nil)
          @CrossRegion = crossregion
          @CrossInternalAddr = crossinternaladdr
          @CrossExternalAddr = crossexternaladdr
        end

        def deserialize(params)
          @CrossRegion = params['CrossRegion']
          @CrossInternalAddr = params['CrossInternalAddr']
          @CrossExternalAddr = params['CrossExternalAddr']
        end
      end

      # 跨地域备份的目标地域和备份状态
      class CrossRegionStatus < TencentCloud::Common::AbstractModel
        # @param CrossRegion: 跨地域备份目标地域
        # @type CrossRegion: String
        # @param CrossStatus: 备份跨地域的同步状态 0-创建中；1-成功；2-失败；4-同步中
        # @type CrossStatus: Integer

        attr_accessor :CrossRegion, :CrossStatus

        def initialize(crossregion=nil, crossstatus=nil)
          @CrossRegion = crossregion
          @CrossStatus = crossstatus
        end

        def deserialize(params)
          @CrossRegion = params['CrossRegion']
          @CrossStatus = params['CrossStatus']
        end
      end

      # 跨地域备份实时统计列表项
      class CrossSummaryDetailRes < TencentCloud::Common::AbstractModel
        # @param Status: 实例状态
        # @type Status: Integer
        # @param Region: 实例所属地域
        # @type Region: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Name: 实例名称
        # @type Name: String
        # @param CrossBackupEnabled: 跨地域备份状态 enable-开启，disable-关闭
        # @type CrossBackupEnabled: String
        # @param CrossRegions: 跨地域备份目标地域
        # @type CrossRegions: Array
        # @param LastBackupStartTime: 最新备份开始时间
        # @type LastBackupStartTime: String
        # @param CrossBackupSaveDays: 跨地域备份保留天数
        # @type CrossBackupSaveDays: Integer
        # @param DataBackupSpace: 跨地域数据备份总空间
        # @type DataBackupSpace: Integer
        # @param DataBackupCount: 跨地域数据备份文件总个数
        # @type DataBackupCount: Integer
        # @param LogBackupSpace: 跨地域日志备份总空间
        # @type LogBackupSpace: Integer
        # @param LogBackupCount: 跨地域日志备份文件总个数
        # @type LogBackupCount: Integer
        # @param ActualUsedSpace: 跨地域备份总空间
        # @type ActualUsedSpace: Integer
        # @param ActualUsedCount: 跨地域备份总个数
        # @type ActualUsedCount: Integer

        attr_accessor :Status, :Region, :InstanceId, :Name, :CrossBackupEnabled, :CrossRegions, :LastBackupStartTime, :CrossBackupSaveDays, :DataBackupSpace, :DataBackupCount, :LogBackupSpace, :LogBackupCount, :ActualUsedSpace, :ActualUsedCount

        def initialize(status=nil, region=nil, instanceid=nil, name=nil, crossbackupenabled=nil, crossregions=nil, lastbackupstarttime=nil, crossbackupsavedays=nil, databackupspace=nil, databackupcount=nil, logbackupspace=nil, logbackupcount=nil, actualusedspace=nil, actualusedcount=nil)
          @Status = status
          @Region = region
          @InstanceId = instanceid
          @Name = name
          @CrossBackupEnabled = crossbackupenabled
          @CrossRegions = crossregions
          @LastBackupStartTime = lastbackupstarttime
          @CrossBackupSaveDays = crossbackupsavedays
          @DataBackupSpace = databackupspace
          @DataBackupCount = databackupcount
          @LogBackupSpace = logbackupspace
          @LogBackupCount = logbackupcount
          @ActualUsedSpace = actualusedspace
          @ActualUsedCount = actualusedcount
        end

        def deserialize(params)
          @Status = params['Status']
          @Region = params['Region']
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @CrossBackupEnabled = params['CrossBackupEnabled']
          @CrossRegions = params['CrossRegions']
          @LastBackupStartTime = params['LastBackupStartTime']
          @CrossBackupSaveDays = params['CrossBackupSaveDays']
          @DataBackupSpace = params['DataBackupSpace']
          @DataBackupCount = params['DataBackupCount']
          @LogBackupSpace = params['LogBackupSpace']
          @LogBackupCount = params['LogBackupCount']
          @ActualUsedSpace = params['ActualUsedSpace']
          @ActualUsedCount = params['ActualUsedCount']
        end
      end

      # 数据库创建信息
      class DBCreateInfo < TencentCloud::Common::AbstractModel
        # @param DBName: 数据库名
        # @type DBName: String
        # @param Charset: 字符集。可通过接口DescribeDBCharsets查到支持的字符集，不填默认为Chinese_PRC_CI_AS。
        # @type Charset: String
        # @param Accounts: 数据库账号权限信息
        # @type Accounts: Array
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :DBName, :Charset, :Accounts, :Remark

        def initialize(dbname=nil, charset=nil, accounts=nil, remark=nil)
          @DBName = dbname
          @Charset = charset
          @Accounts = accounts
          @Remark = remark
        end

        def deserialize(params)
          @DBName = params['DBName']
          @Charset = params['Charset']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              accountprivilege_tmp = AccountPrivilege.new
              accountprivilege_tmp.deserialize(i)
              @Accounts << accountprivilege_tmp
            end
          end
          @Remark = params['Remark']
        end
      end

      # 数据库信息
      class DBDetail < TencentCloud::Common::AbstractModel
        # @param Name: 数据库名称
        # @type Name: String
        # @param Charset: 字符集
        # @type Charset: String
        # @param Remark: 备注
        # @type Remark: String
        # @param CreateTime: 数据库创建时间
        # @type CreateTime: String
        # @param Status: 数据库状态。1--创建中， 2--运行中， 3--修改中，-1--删除中
        # @type Status: Integer
        # @param Accounts: 数据库账号权限信息
        # @type Accounts: Array
        # @param InternalStatus: 内部状态。ONLINE表示运行中
        # @type InternalStatus: String
        # @param Encryption: 是否已开启TDE加密，enable-已加密，disable-未加密
        # @type Encryption: String

        attr_accessor :Name, :Charset, :Remark, :CreateTime, :Status, :Accounts, :InternalStatus, :Encryption

        def initialize(name=nil, charset=nil, remark=nil, createtime=nil, status=nil, accounts=nil, internalstatus=nil, encryption=nil)
          @Name = name
          @Charset = charset
          @Remark = remark
          @CreateTime = createtime
          @Status = status
          @Accounts = accounts
          @InternalStatus = internalstatus
          @Encryption = encryption
        end

        def deserialize(params)
          @Name = params['Name']
          @Charset = params['Charset']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              accountprivilege_tmp = AccountPrivilege.new
              accountprivilege_tmp.deserialize(i)
              @Accounts << accountprivilege_tmp
            end
          end
          @InternalStatus = params['InternalStatus']
          @Encryption = params['Encryption']
        end
      end

      # 实例详细信息
      class DBInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Name: 实例名称
        # @type Name: String
        # @param ProjectId: 实例所在项目ID
        # @type ProjectId: Integer
        # @param RegionId: 实例所在地域ID
        # @type RegionId: Integer
        # @param ZoneId: 实例所在可用区ID
        # @type ZoneId: Integer
        # @param VpcId: 实例所在私有网络ID，基础网络时为 0
        # @type VpcId: Integer
        # @param SubnetId: 实例所在私有网络子网ID，基础网络时为 0
        # @type SubnetId: Integer
        # @param Status: 实例状态。取值范围： <li>1：申请中</li> <li>2：运行中</li> <li>3：受限运行中 (主备切换中)</li> <li>4：已隔离</li> <li>5：回收中</li> <li>6：已回收</li> <li>7：任务执行中 (实例做备份、回档等操作)</li> <li>8：已下线</li> <li>9：实例扩容中</li> <li>10：实例迁移中</li> <li>11：只读</li> <li>12：重启中</li>  <li>13：实例修改中且待切换</li> <li>14：订阅发布创建中</li> <li>15：订阅发布修改中</li> <li>16：实例修改中且切换中</li> <li>17：创建RO副本中</li>
        # @type Status: Integer
        # @param Vip: 实例访问IP
        # @type Vip: String
        # @param Vport: 实例访问端口
        # @type Vport: Integer
        # @param CreateTime: 实例创建时间
        # @type CreateTime: String
        # @param UpdateTime: 实例更新时间
        # @type UpdateTime: String
        # @param StartTime: 实例计费开始时间
        # @type StartTime: String
        # @param EndTime: 实例计费结束时间
        # @type EndTime: String
        # @param IsolateTime: 实例隔离时间
        # @type IsolateTime: String
        # @param Memory: 实例内存大小，单位G
        # @type Memory: Integer
        # @param UsedStorage: 实例已经使用存储空间大小，单位G
        # @type UsedStorage: Integer
        # @param Storage: 实例存储空间大小，单位G
        # @type Storage: Integer
        # @param VersionName: 实例版本
        # @type VersionName: String
        # @param RenewFlag: 实例续费标记，0-正常续费，1-自动续费，2-到期不续费
        # @type RenewFlag: Integer
        # @param Model: 实例高可用， 1-双机高可用，2-单机，3-跨可用区，4-集群跨可用区，5-集群，9-自研机房
        # @type Model: Integer
        # @param Region: 实例所在地域名称，如 ap-guangzhou
        # @type Region: String
        # @param Zone: 实例所在可用区名称，如 ap-guangzhou-1
        # @type Zone: String
        # @param BackupTime: 备份时间点
        # @type BackupTime: String
        # @param PayMode: 实例付费模式， 0-按量计费，1-包年包月
        # @type PayMode: Integer
        # @param Uid: 实例唯一UID
        # @type Uid: String
        # @param Cpu: 实例cpu核心数
        # @type Cpu: Integer
        # @param Version: 实例版本代号
        # @type Version: String
        # @param Type: 实例类型代号："TS85"-物理机，本地SSD硬盘；"Z3"-物理机早期版本，本地SSD硬盘；"CLOUD_BASIC"-虚拟机，普通云硬盘；"CLOUD_PREMIUM"-虚拟机，高性能云硬盘；"CLOUD_SSD"-虚拟机，云SSD硬盘；"CLOUD_HSSD"-虚拟机，增强型SSD云硬盘；"CLOUD_TSSD"-虚拟机，极速型SSD云硬盘；"CLOUD_BSSD"-虚拟机，通用型SSD云硬盘
        # @type Type: String
        # @param Pid: 计费ID
        # @type Pid: Integer
        # @param UniqVpcId: 实例所属VPC的唯一字符串ID，格式如：vpc-xxx，基础网络时为空字符串
        # @type UniqVpcId: String
        # @param UniqSubnetId: 实例所属子网的唯一字符串ID，格式如： subnet-xxx，基础网络时为空字符串
        # @type UniqSubnetId: String
        # @param IsolateOperator: 实例隔离操作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolateOperator: String
        # @param SubFlag: 发布订阅标识，SUB-订阅实例，PUB-发布实例，空值-没有发布订阅的普通实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubFlag: String
        # @param ROFlag: 只读标识，RO-只读实例，MASTER-有RO实例的主实例，空值-没有只读组的非RO实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ROFlag: String
        # @param HAFlag: 容灾类型，MIRROR-镜像，ALWAYSON-AlwaysOn, SINGLE-单例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HAFlag: String
        # @param ResourceTags: 实例绑定的标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceTags: Array
        # @param BackupModel: 备份模式，master_pkg-主节点打包备份(默认) ；master_no_pkg-主节点不打包备份；slave_pkg-从节点打包备份(always on集群有效)；slave_no_pkg-从节点不打包备份(always on集群有效)；只读副本对该值无效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupModel: String
        # @param InstanceNote: 实例备份信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceNote: String
        # @param BackupCycle: 备份周期
        # @type BackupCycle: Array
        # @param BackupCycleType: 备份周期类型，[daily、weekly、monthly]
        # @type BackupCycleType: String
        # @param BackupSaveDays: 数据(日志)备份保留时间
        # @type BackupSaveDays: Integer
        # @param InstanceType: 实例类型 HA-高可用 RO-只读实例 SI-基础版 BI-商业智能服务
        # @type InstanceType: String
        # @param CrossRegions: 跨地域备份目的地域，如果为空，则表示未开启跨地域备份
        # @type CrossRegions: Array
        # @param CrossBackupEnabled: 跨地域备份状态 enable-开启，disable-关闭
        # @type CrossBackupEnabled: String
        # @param CrossBackupSaveDays: 跨地域备份保留天数，则默认7天
        # @type CrossBackupSaveDays: Integer
        # @param DnsPodDomain: 外网地址域名
        # @type DnsPodDomain: String
        # @param TgwWanVPort: 外网端口号
        # @type TgwWanVPort: Integer
        # @param Collation: 系统字符集排序规则，默认：Chinese_PRC_CI_AS
        # @type Collation: String
        # @param TimeZone: 系统时区，默认：China Standard Time
        # @type TimeZone: String
        # @param IsDrZone: 是否跨AZ
        # @type IsDrZone: Boolean
        # @param SlaveZones: 备可用区信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlaveZones: :class:`Tencentcloud::Sqlserver.v20180328.models.SlaveZones`
        # @param Architecture: 架构标识，SINGLE-单节点 DOUBLE-双节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Architecture: String
        # @param Style: 类型标识，EXCLUSIVE-独享型，SHARED-共享型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Style: String

        attr_accessor :InstanceId, :Name, :ProjectId, :RegionId, :ZoneId, :VpcId, :SubnetId, :Status, :Vip, :Vport, :CreateTime, :UpdateTime, :StartTime, :EndTime, :IsolateTime, :Memory, :UsedStorage, :Storage, :VersionName, :RenewFlag, :Model, :Region, :Zone, :BackupTime, :PayMode, :Uid, :Cpu, :Version, :Type, :Pid, :UniqVpcId, :UniqSubnetId, :IsolateOperator, :SubFlag, :ROFlag, :HAFlag, :ResourceTags, :BackupModel, :InstanceNote, :BackupCycle, :BackupCycleType, :BackupSaveDays, :InstanceType, :CrossRegions, :CrossBackupEnabled, :CrossBackupSaveDays, :DnsPodDomain, :TgwWanVPort, :Collation, :TimeZone, :IsDrZone, :SlaveZones, :Architecture, :Style

        def initialize(instanceid=nil, name=nil, projectid=nil, regionid=nil, zoneid=nil, vpcid=nil, subnetid=nil, status=nil, vip=nil, vport=nil, createtime=nil, updatetime=nil, starttime=nil, endtime=nil, isolatetime=nil, memory=nil, usedstorage=nil, storage=nil, versionname=nil, renewflag=nil, model=nil, region=nil, zone=nil, backuptime=nil, paymode=nil, uid=nil, cpu=nil, version=nil, type=nil, pid=nil, uniqvpcid=nil, uniqsubnetid=nil, isolateoperator=nil, subflag=nil, roflag=nil, haflag=nil, resourcetags=nil, backupmodel=nil, instancenote=nil, backupcycle=nil, backupcycletype=nil, backupsavedays=nil, instancetype=nil, crossregions=nil, crossbackupenabled=nil, crossbackupsavedays=nil, dnspoddomain=nil, tgwwanvport=nil, collation=nil, timezone=nil, isdrzone=nil, slavezones=nil, architecture=nil, style=nil)
          @InstanceId = instanceid
          @Name = name
          @ProjectId = projectid
          @RegionId = regionid
          @ZoneId = zoneid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @Vip = vip
          @Vport = vport
          @CreateTime = createtime
          @UpdateTime = updatetime
          @StartTime = starttime
          @EndTime = endtime
          @IsolateTime = isolatetime
          @Memory = memory
          @UsedStorage = usedstorage
          @Storage = storage
          @VersionName = versionname
          @RenewFlag = renewflag
          @Model = model
          @Region = region
          @Zone = zone
          @BackupTime = backuptime
          @PayMode = paymode
          @Uid = uid
          @Cpu = cpu
          @Version = version
          @Type = type
          @Pid = pid
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @IsolateOperator = isolateoperator
          @SubFlag = subflag
          @ROFlag = roflag
          @HAFlag = haflag
          @ResourceTags = resourcetags
          @BackupModel = backupmodel
          @InstanceNote = instancenote
          @BackupCycle = backupcycle
          @BackupCycleType = backupcycletype
          @BackupSaveDays = backupsavedays
          @InstanceType = instancetype
          @CrossRegions = crossregions
          @CrossBackupEnabled = crossbackupenabled
          @CrossBackupSaveDays = crossbackupsavedays
          @DnsPodDomain = dnspoddomain
          @TgwWanVPort = tgwwanvport
          @Collation = collation
          @TimeZone = timezone
          @IsDrZone = isdrzone
          @SlaveZones = slavezones
          @Architecture = architecture
          @Style = style
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @ProjectId = params['ProjectId']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Status = params['Status']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IsolateTime = params['IsolateTime']
          @Memory = params['Memory']
          @UsedStorage = params['UsedStorage']
          @Storage = params['Storage']
          @VersionName = params['VersionName']
          @RenewFlag = params['RenewFlag']
          @Model = params['Model']
          @Region = params['Region']
          @Zone = params['Zone']
          @BackupTime = params['BackupTime']
          @PayMode = params['PayMode']
          @Uid = params['Uid']
          @Cpu = params['Cpu']
          @Version = params['Version']
          @Type = params['Type']
          @Pid = params['Pid']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @IsolateOperator = params['IsolateOperator']
          @SubFlag = params['SubFlag']
          @ROFlag = params['ROFlag']
          @HAFlag = params['HAFlag']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @BackupModel = params['BackupModel']
          @InstanceNote = params['InstanceNote']
          @BackupCycle = params['BackupCycle']
          @BackupCycleType = params['BackupCycleType']
          @BackupSaveDays = params['BackupSaveDays']
          @InstanceType = params['InstanceType']
          @CrossRegions = params['CrossRegions']
          @CrossBackupEnabled = params['CrossBackupEnabled']
          @CrossBackupSaveDays = params['CrossBackupSaveDays']
          @DnsPodDomain = params['DnsPodDomain']
          @TgwWanVPort = params['TgwWanVPort']
          @Collation = params['Collation']
          @TimeZone = params['TimeZone']
          @IsDrZone = params['IsDrZone']
          unless params['SlaveZones'].nil?
            @SlaveZones = SlaveZones.new
            @SlaveZones.deserialize(params['SlaveZones'])
          end
          @Architecture = params['Architecture']
          @Style = params['Style']
        end
      end

      # 账号的数据库权限信息
      class DBPrivilege < TencentCloud::Common::AbstractModel
        # @param DBName: 数据库名
        # @type DBName: String
        # @param Privilege: 数据库权限，ReadWrite表示可读写，ReadOnly表示只读，DBOwner所有者
        # @type Privilege: String

        attr_accessor :DBName, :Privilege

        def initialize(dbname=nil, privilege=nil)
          @DBName = dbname
          @Privilege = privilege
        end

        def deserialize(params)
          @DBName = params['DBName']
          @Privilege = params['Privilege']
        end
      end

      # 数据库权限变更信息
      class DBPrivilegeModifyInfo < TencentCloud::Common::AbstractModel
        # @param DBName: 数据库名
        # @type DBName: String
        # @param Privilege: 权限变更信息。ReadWrite表示可读写，ReadOnly表示只读，Delete表示删除账号对该DB的权限，DBOwner所有者
        # @type Privilege: String

        attr_accessor :DBName, :Privilege

        def initialize(dbname=nil, privilege=nil)
          @DBName = dbname
          @Privilege = privilege
        end

        def deserialize(params)
          @DBName = params['DBName']
          @Privilege = params['Privilege']
        end
      end

      # 数据库备注信息
      class DBRemark < TencentCloud::Common::AbstractModel
        # @param Name: 数据库名称
        # @type Name: String
        # @param Remark: 备注信息
        # @type Remark: String

        attr_accessor :Name, :Remark

        def initialize(name=nil, remark=nil)
          @Name = name
          @Remark = remark
        end

        def deserialize(params)
          @Name = params['Name']
          @Remark = params['Remark']
        end
      end

      # 数据库重命名返回参数
      class DBRenameRes < TencentCloud::Common::AbstractModel
        # @param NewName: 新数据库名称
        # @type NewName: String
        # @param OldName: 老数据库名称
        # @type OldName: String

        attr_accessor :NewName, :OldName

        def initialize(newname=nil, oldname=nil)
          @NewName = newname
          @OldName = oldname
        end

        def deserialize(params)
          @NewName = params['NewName']
          @OldName = params['OldName']
        end
      end

      # 开启、关闭TDE数据库加密
      class DBTDEEncrypt < TencentCloud::Common::AbstractModel
        # @param DBName: 数据库名称
        # @type DBName: String
        # @param Encryption: enable-开启数据库TDE加密，disable-关闭数据库TDE加密
        # @type Encryption: String

        attr_accessor :DBName, :Encryption

        def initialize(dbname=nil, encryption=nil)
          @DBName = dbname
          @Encryption = encryption
        end

        def deserialize(params)
          @DBName = params['DBName']
          @Encryption = params['Encryption']
        end
      end

      # 该数据结构表示具有发布订阅关系的两个数据库。
      class DatabaseTuple < TencentCloud::Common::AbstractModel
        # @param PublishDatabase: 发布数据库名称
        # @type PublishDatabase: String
        # @param SubscribeDatabase: 订阅数据库名称
        # @type SubscribeDatabase: String

        attr_accessor :PublishDatabase, :SubscribeDatabase

        def initialize(publishdatabase=nil, subscribedatabase=nil)
          @PublishDatabase = publishdatabase
          @SubscribeDatabase = subscribedatabase
        end

        def deserialize(params)
          @PublishDatabase = params['PublishDatabase']
          @SubscribeDatabase = params['SubscribeDatabase']
        end
      end

      # 该数据结构表示具有发布订阅关系的两个数据库，以及其之间发布订阅的状态信息。
      class DatabaseTupleStatus < TencentCloud::Common::AbstractModel
        # @param PublishDatabase: 发布数据库名称
        # @type PublishDatabase: String
        # @param SubscribeDatabase: 订阅数据库名称
        # @type SubscribeDatabase: String
        # @param LastSyncTime: 最近一次同步时间
        # @type LastSyncTime: String
        # @param Status: 数据库之间的发布订阅状态 running，success，fail，unknow
        # @type Status: String

        attr_accessor :PublishDatabase, :SubscribeDatabase, :LastSyncTime, :Status

        def initialize(publishdatabase=nil, subscribedatabase=nil, lastsynctime=nil, status=nil)
          @PublishDatabase = publishdatabase
          @SubscribeDatabase = subscribedatabase
          @LastSyncTime = lastsynctime
          @Status = status
        end

        def deserialize(params)
          @PublishDatabase = params['PublishDatabase']
          @SubscribeDatabase = params['SubscribeDatabase']
          @LastSyncTime = params['LastSyncTime']
          @Status = params['Status']
        end
      end

      # 数据库配置信息
      class DbNormalDetail < TencentCloud::Common::AbstractModel
        # @param IsSubscribed: 是否已订阅 0：否 1：是
        # @type IsSubscribed: String
        # @param CollationName: 数据库排序规则
        # @type CollationName: String
        # @param IsAutoCleanupOn: 开启CT之后是否自动清理 0：否 1：是
        # @type IsAutoCleanupOn: String
        # @param IsBrokerEnabled: 是否已启用代理  0：否 1：是
        # @type IsBrokerEnabled: String
        # @param IsCdcEnabled: 是否已开启/关闭CDC 0：关闭 1：开启
        # @type IsCdcEnabled: String
        # @param IsDbChainingOn: 是否已启用/ 禁用CT 0：禁用 1：启用
        # @type IsDbChainingOn: String
        # @param IsEncrypted: 是否加密 0：否 1：是
        # @type IsEncrypted: String
        # @param IsFulltextEnabled: 是否全文启用 0：否 1：是
        # @type IsFulltextEnabled: String
        # @param IsMirroring: 是否是镜像 0：否 1：是
        # @type IsMirroring: String
        # @param IsPublished: 是否已发布 0：否 1：是
        # @type IsPublished: String
        # @param IsReadCommittedSnapshotOn: 是否开启快照 0：否 1：是
        # @type IsReadCommittedSnapshotOn: String
        # @param IsTrustworthyOn: 是否可信任 0：否 1：是
        # @type IsTrustworthyOn: String
        # @param MirroringState: 镜像状态
        # @type MirroringState: String
        # @param Name: 数据库名称
        # @type Name: String
        # @param RecoveryModelDesc: 恢复模式
        # @type RecoveryModelDesc: String
        # @param RetentionPeriod: 保留天数
        # @type RetentionPeriod: String
        # @param StateDesc: 数据库状态
        # @type StateDesc: String
        # @param UserAccessDesc: 用户类型
        # @type UserAccessDesc: String
        # @param CreateTime: 数据库创建时间
        # @type CreateTime: String
        # @param IsFullTextEnabled: 是否全文启用 0：否 1：是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsFullTextEnabled: String

        attr_accessor :IsSubscribed, :CollationName, :IsAutoCleanupOn, :IsBrokerEnabled, :IsCdcEnabled, :IsDbChainingOn, :IsEncrypted, :IsFulltextEnabled, :IsMirroring, :IsPublished, :IsReadCommittedSnapshotOn, :IsTrustworthyOn, :MirroringState, :Name, :RecoveryModelDesc, :RetentionPeriod, :StateDesc, :UserAccessDesc, :CreateTime, :IsFullTextEnabled
        extend Gem::Deprecate
        deprecate :IsFulltextEnabled, :none, 2024, 7
        deprecate :IsFulltextEnabled=, :none, 2024, 7

        def initialize(issubscribed=nil, collationname=nil, isautocleanupon=nil, isbrokerenabled=nil, iscdcenabled=nil, isdbchainingon=nil, isencrypted=nil, ismirroring=nil, ispublished=nil, isreadcommittedsnapshoton=nil, istrustworthyon=nil, mirroringstate=nil, name=nil, recoverymodeldesc=nil, retentionperiod=nil, statedesc=nil, useraccessdesc=nil, createtime=nil, isfulltextenabled=nil)
          @IsSubscribed = issubscribed
          @CollationName = collationname
          @IsAutoCleanupOn = isautocleanupon
          @IsBrokerEnabled = isbrokerenabled
          @IsCdcEnabled = iscdcenabled
          @IsDbChainingOn = isdbchainingon
          @IsEncrypted = isencrypted
          @IsMirroring = ismirroring
          @IsPublished = ispublished
          @IsReadCommittedSnapshotOn = isreadcommittedsnapshoton
          @IsTrustworthyOn = istrustworthyon
          @MirroringState = mirroringstate
          @Name = name
          @RecoveryModelDesc = recoverymodeldesc
          @RetentionPeriod = retentionperiod
          @StateDesc = statedesc
          @UserAccessDesc = useraccessdesc
          @CreateTime = createtime
          @IsFullTextEnabled = isfulltextenabled
        end

        def deserialize(params)
          @IsSubscribed = params['IsSubscribed']
          @CollationName = params['CollationName']
          @IsAutoCleanupOn = params['IsAutoCleanupOn']
          @IsBrokerEnabled = params['IsBrokerEnabled']
          @IsCdcEnabled = params['IsCdcEnabled']
          @IsDbChainingOn = params['IsDbChainingOn']
          @IsEncrypted = params['IsEncrypted']
          @IsMirroring = params['IsMirroring']
          @IsPublished = params['IsPublished']
          @IsReadCommittedSnapshotOn = params['IsReadCommittedSnapshotOn']
          @IsTrustworthyOn = params['IsTrustworthyOn']
          @MirroringState = params['MirroringState']
          @Name = params['Name']
          @RecoveryModelDesc = params['RecoveryModelDesc']
          @RetentionPeriod = params['RetentionPeriod']
          @StateDesc = params['StateDesc']
          @UserAccessDesc = params['UserAccessDesc']
          @CreateTime = params['CreateTime']
          @IsFullTextEnabled = params['IsFullTextEnabled']
        end
      end

      # 数据库可回档时间范围信息
      class DbRollbackTimeInfo < TencentCloud::Common::AbstractModel
        # @param DBName: 数据库名称
        # @type DBName: String
        # @param StartTime: 可回档开始时间
        # @type StartTime: String
        # @param EndTime: 可回档结束时间
        # @type EndTime: String

        attr_accessor :DBName, :StartTime, :EndTime

        def initialize(dbname=nil, starttime=nil, endtime=nil)
          @DBName = dbname
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @DBName = params['DBName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 订单信息
      class DealInfo < TencentCloud::Common::AbstractModel
        # @param DealName: 订单名
        # @type DealName: String
        # @param Count: 商品数量
        # @type Count: Integer
        # @param FlowId: 关联的流程 ID，可用于查询流程执行状态
        # @type FlowId: Integer
        # @param InstanceIdSet: 只有创建实例的订单会填充该字段，表示该订单创建的实例的 ID。
        # @type InstanceIdSet: Array
        # @param OwnerUin: 所属账号
        # @type OwnerUin: String
        # @param InstanceChargeType: 实例付费类型
        # @type InstanceChargeType: String

        attr_accessor :DealName, :Count, :FlowId, :InstanceIdSet, :OwnerUin, :InstanceChargeType

        def initialize(dealname=nil, count=nil, flowid=nil, instanceidset=nil, owneruin=nil, instancechargetype=nil)
          @DealName = dealname
          @Count = count
          @FlowId = flowid
          @InstanceIdSet = instanceidset
          @OwnerUin = owneruin
          @InstanceChargeType = instancechargetype
        end

        def deserialize(params)
          @DealName = params['DealName']
          @Count = params['Count']
          @FlowId = params['FlowId']
          @InstanceIdSet = params['InstanceIdSet']
          @OwnerUin = params['OwnerUin']
          @InstanceChargeType = params['InstanceChargeType']
        end
      end

      # 订单号对应的资源ID列表
      class DealInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: Array
        # @param DealName: 订单号
        # @type DealName: String

        attr_accessor :InstanceId, :DealName

        def initialize(instanceid=nil, dealname=nil)
          @InstanceId = instanceid
          @DealName = dealname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DealName = params['DealName']
        end
      end

      # DeleteAccount请求参数结构体
      class DeleteAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据库实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param UserNames: 实例用户名数组
        # @type UserNames: Array

        attr_accessor :InstanceId, :UserNames

        def initialize(instanceid=nil, usernames=nil)
          @InstanceId = instanceid
          @UserNames = usernames
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserNames = params['UserNames']
        end
      end

      # DeleteAccount返回参数结构体
      class DeleteAccountResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
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

      # DeleteBackupMigration请求参数结构体
      class DeleteBackupMigrationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 目标实例ID，由DescribeBackupMigration接口返回
        # @type InstanceId: String
        # @param BackupMigrationId: 备份导入任务ID，由DescribeBackupMigration接口返回
        # @type BackupMigrationId: String

        attr_accessor :InstanceId, :BackupMigrationId

        def initialize(instanceid=nil, backupmigrationid=nil)
          @InstanceId = instanceid
          @BackupMigrationId = backupmigrationid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMigrationId = params['BackupMigrationId']
        end
      end

      # DeleteBackupMigration返回参数结构体
      class DeleteBackupMigrationResponse < TencentCloud::Common::AbstractModel
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

      # DeleteBusinessIntelligenceFile请求参数结构体
      class DeleteBusinessIntelligenceFileRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param FileNameSet: 文件名称集合
        # @type FileNameSet: Array

        attr_accessor :InstanceId, :FileNameSet

        def initialize(instanceid=nil, filenameset=nil)
          @InstanceId = instanceid
          @FileNameSet = filenameset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FileNameSet = params['FileNameSet']
        end
      end

      # DeleteBusinessIntelligenceFile返回参数结构体
      class DeleteBusinessIntelligenceFileResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDBInstance请求参数结构体
      class DeleteDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：mssql-3l3fgqn7 或 mssqlro-3l3fgqn7
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteDBInstance返回参数结构体
      class DeleteDBInstanceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDB请求参数结构体
      class DeleteDBRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-rljoi3bf
        # @type InstanceId: String
        # @param Names: 数据库名数组
        # @type Names: Array

        attr_accessor :InstanceId, :Names

        def initialize(instanceid=nil, names=nil)
          @InstanceId = instanceid
          @Names = names
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Names = params['Names']
        end
      end

      # DeleteDB返回参数结构体
      class DeleteDBResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
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

      # DeleteIncrementalMigration请求参数结构体
      class DeleteIncrementalMigrationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 目标实例ID
        # @type InstanceId: String
        # @param BackupMigrationId: 备份导入任务ID，由CreateBackupMigration接口返回
        # @type BackupMigrationId: String
        # @param IncrementalMigrationId: 增量备份导入任务ID，由CreateIncrementalMigration接口返回
        # @type IncrementalMigrationId: String

        attr_accessor :InstanceId, :BackupMigrationId, :IncrementalMigrationId

        def initialize(instanceid=nil, backupmigrationid=nil, incrementalmigrationid=nil)
          @InstanceId = instanceid
          @BackupMigrationId = backupmigrationid
          @IncrementalMigrationId = incrementalmigrationid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMigrationId = params['BackupMigrationId']
          @IncrementalMigrationId = params['IncrementalMigrationId']
        end
      end

      # DeleteIncrementalMigration返回参数结构体
      class DeleteIncrementalMigrationResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMigration请求参数结构体
      class DeleteMigrationRequest < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer

        attr_accessor :MigrateId

        def initialize(migrateid=nil)
          @MigrateId = migrateid
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
        end
      end

      # DeleteMigration返回参数结构体
      class DeleteMigrationResponse < TencentCloud::Common::AbstractModel
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

      # DeletePublishSubscribe请求参数结构体
      class DeletePublishSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param PublishSubscribeId: 发布订阅ID，可通过DescribePublishSubscribe接口获得
        # @type PublishSubscribeId: Integer
        # @param DatabaseTupleSet: 待删除的数据库的订阅发布关系集合
        # @type DatabaseTupleSet: Array

        attr_accessor :PublishSubscribeId, :DatabaseTupleSet

        def initialize(publishsubscribeid=nil, databasetupleset=nil)
          @PublishSubscribeId = publishsubscribeid
          @DatabaseTupleSet = databasetupleset
        end

        def deserialize(params)
          @PublishSubscribeId = params['PublishSubscribeId']
          unless params['DatabaseTupleSet'].nil?
            @DatabaseTupleSet = []
            params['DatabaseTupleSet'].each do |i|
              databasetuple_tmp = DatabaseTuple.new
              databasetuple_tmp.deserialize(i)
              @DatabaseTupleSet << databasetuple_tmp
            end
          end
        end
      end

      # DeletePublishSubscribe返回参数结构体
      class DeletePublishSubscribeResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRestoreTask请求参数结构体
      class DeleteRestoreTaskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param RestoreIds: 回档任务记录ID集合，一次最多删除10条
        # @type RestoreIds: Array

        attr_accessor :InstanceId, :RestoreIds

        def initialize(instanceid=nil, restoreids=nil)
          @InstanceId = instanceid
          @RestoreIds = restoreids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RestoreIds = params['RestoreIds']
        end
      end

      # DeleteRestoreTask返回参数结构体
      class DeleteRestoreTaskResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAccountPrivilegeByDB请求参数结构体
      class DescribeAccountPrivilegeByDBRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param DBName: 数据库名称
        # @type DBName: String
        # @param AccountName: 数据库属于账号名称
        # @type AccountName: String
        # @param Limit: 分页返回，每页返回的数目，取值为1-100，默认值为20
        # @type Limit: Integer
        # @param Offset: 分页返回，页编号，默认值为第0页
        # @type Offset: Integer

        attr_accessor :InstanceId, :DBName, :AccountName, :Limit, :Offset

        def initialize(instanceid=nil, dbname=nil, accountname=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @DBName = dbname
          @AccountName = accountname
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DBName = params['DBName']
          @AccountName = params['AccountName']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeAccountPrivilegeByDB返回参数结构体
      class DescribeAccountPrivilegeByDBResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 账号总数量
        # @type TotalCount: Integer
        # @param Accounts: 账号权限列表
        # @type Accounts: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Accounts, :RequestId

        def initialize(totalcount=nil, accounts=nil, requestid=nil)
          @TotalCount = totalcount
          @Accounts = accounts
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              accountprivilege_tmp = AccountPrivilege.new
              accountprivilege_tmp.deserialize(i)
              @Accounts << accountprivilege_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccounts请求参数结构体
      class DescribeAccountsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Limit: 分页返回，每页返回的数目，取值为1-100，默认值为20
        # @type Limit: Integer
        # @param Offset: 分页返回，页编号，默认值为第0页
        # @type Offset: Integer
        # @param Name: 账号名称
        # @type Name: String
        # @param OrderBy: createTime,updateTime,passTime" note:"排序字段，默认按照账号创建时间倒序
        # @type OrderBy: String
        # @param OrderByType: 排序规则（desc-降序，asc-升序），默认desc
        # @type OrderByType: String

        attr_accessor :InstanceId, :Limit, :Offset, :Name, :OrderBy, :OrderByType

        def initialize(instanceid=nil, limit=nil, offset=nil, name=nil, orderby=nil, orderbytype=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
          @Name = name
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Name = params['Name']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeAccounts返回参数结构体
      class DescribeAccountsResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Accounts: 账户信息列表
        # @type Accounts: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Accounts, :TotalCount, :RequestId

        def initialize(instanceid=nil, accounts=nil, totalcount=nil, requestid=nil)
          @InstanceId = instanceid
          @Accounts = accounts
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              accountdetail_tmp = AccountDetail.new
              accountdetail_tmp.deserialize(i)
              @Accounts << accountdetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupByFlowId请求参数结构体
      class DescribeBackupByFlowIdRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：mssql-3l3fgqn7
        # @type InstanceId: String
        # @param FlowId: 创建备份流程ID，可通过 [CreateBackup](https://cloud.tencent.com/document/product/238/19946) 接口获取
        # @type FlowId: String

        attr_accessor :InstanceId, :FlowId

        def initialize(instanceid=nil, flowid=nil)
          @InstanceId = instanceid
          @FlowId = flowid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FlowId = params['FlowId']
        end
      end

      # DescribeBackupByFlowId返回参数结构体
      class DescribeBackupByFlowIdResponse < TencentCloud::Common::AbstractModel
        # @param Id: 备份文件唯一标识，RestoreInstance接口会用到该字段，对于单库备份文件只返回第一条记录的备份文件唯一标识；单库备份文件需要通过DescribeBackupFiles接口获取全部记录的可回档的ID
        # @type Id: Integer
        # @param FileName: 文件名，对于单库备份文件只返回第一条记录的文件名；单库备份文件需要通过DescribeBackupFiles接口获取全部记录的文件名
        # @type FileName: String
        # @param BackupName: 备份任务名称，可自定义
        # @type BackupName: String
        # @param StartTime: 备份开始时间
        # @type StartTime: String
        # @param EndTime: 备份结束时间
        # @type EndTime: String
        # @param Size: 文件大小，单位 KB，对于单库备份文件只返回第一条记录的文件大小；单库备份文件需要通过DescribeBackupFiles接口获取全部记录的文件大小
        # @type Size: Integer
        # @param Strategy: 备份策略，0-实例备份；1-多库备份；实例状态是0-创建中时，该字段为默认值0，无实际意义
        # @type Strategy: Integer
        # @param Status: 备份文件状态，0-创建中；1-成功；2-失败
        # @type Status: Integer
        # @param BackupWay: 备份方式，0-定时备份；1-手动临时备份；实例状态是0-创建中时，该字段为默认值0，无实际意义
        # @type BackupWay: Integer
        # @param DBs: DB列表，对于单库备份文件只返回第一条记录包含的库名；单库备份文件需要通过DescribeBackupFiles接口获取全部记录的库名。
        # @type DBs: Array
        # @param InternalAddr: 内网下载地址，对于单库备份文件只返回第一条记录的内网下载地址；单库备份文件需要通过DescribeBackupFiles接口获取全部记录的下载地址
        # @type InternalAddr: String
        # @param ExternalAddr: 外网下载地址，对于单库备份文件只返回第一条记录的外网下载地址；单库备份文件需要通过DescribeBackupFiles接口获取全部记录的下载地址
        # @type ExternalAddr: String
        # @param GroupId: 聚合Id，对于打包备份文件不返回此值。通过此值调用DescribeBackupFiles接口，获取单库备份文件的详细信息
        # @type GroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :FileName, :BackupName, :StartTime, :EndTime, :Size, :Strategy, :Status, :BackupWay, :DBs, :InternalAddr, :ExternalAddr, :GroupId, :RequestId

        def initialize(id=nil, filename=nil, backupname=nil, starttime=nil, endtime=nil, size=nil, strategy=nil, status=nil, backupway=nil, dbs=nil, internaladdr=nil, externaladdr=nil, groupid=nil, requestid=nil)
          @Id = id
          @FileName = filename
          @BackupName = backupname
          @StartTime = starttime
          @EndTime = endtime
          @Size = size
          @Strategy = strategy
          @Status = status
          @BackupWay = backupway
          @DBs = dbs
          @InternalAddr = internaladdr
          @ExternalAddr = externaladdr
          @GroupId = groupid
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @FileName = params['FileName']
          @BackupName = params['BackupName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Size = params['Size']
          @Strategy = params['Strategy']
          @Status = params['Status']
          @BackupWay = params['BackupWay']
          @DBs = params['DBs']
          @InternalAddr = params['InternalAddr']
          @ExternalAddr = params['ExternalAddr']
          @GroupId = params['GroupId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupCommand请求参数结构体
      class DescribeBackupCommandRequest < TencentCloud::Common::AbstractModel
        # @param BackupFileType: 备份文件类型，FULL-全量备份，FULL_LOG-全量备份需要日志增量，FULL_DIFF-全量备份需要差异增量，LOG-日志备份，DIFF-差异备份
        # @type BackupFileType: String
        # @param DataBaseName: 数据库名称
        # @type DataBaseName: String
        # @param IsRecovery: 是否需要恢复，NO-不需要，YES-需要
        # @type IsRecovery: String
        # @param LocalPath: 备份文件保存的路径；如果不填则默认在D:\\
        # @type LocalPath: String

        attr_accessor :BackupFileType, :DataBaseName, :IsRecovery, :LocalPath

        def initialize(backupfiletype=nil, databasename=nil, isrecovery=nil, localpath=nil)
          @BackupFileType = backupfiletype
          @DataBaseName = databasename
          @IsRecovery = isrecovery
          @LocalPath = localpath
        end

        def deserialize(params)
          @BackupFileType = params['BackupFileType']
          @DataBaseName = params['DataBaseName']
          @IsRecovery = params['IsRecovery']
          @LocalPath = params['LocalPath']
        end
      end

      # DescribeBackupCommand返回参数结构体
      class DescribeBackupCommandResponse < TencentCloud::Common::AbstractModel
        # @param Command: 创建备份命令
        # @type Command: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Command, :RequestId

        def initialize(command=nil, requestid=nil)
          @Command = command
          @RequestId = requestid
        end

        def deserialize(params)
          @Command = params['Command']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupFiles请求参数结构体
      class DescribeBackupFilesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param GroupId: 单库备份的聚合ID, 可通过接口DescribeBackups获取（不支持查询打包备份记录）
        # @type GroupId: String
        # @param Limit: 分页返回，每页返回的数目，取值为1-100，默认值为20
        # @type Limit: Integer
        # @param Offset: 分页返回，页编号，默认值为第0页
        # @type Offset: Integer
        # @param DatabaseName: 按照备份的库名称筛选，不填则不筛选此项
        # @type DatabaseName: String
        # @param OrderBy: 列表项排序，目前只按照备份大小排序（desc-降序，asc-升序），默认desc
        # @type OrderBy: String

        attr_accessor :InstanceId, :GroupId, :Limit, :Offset, :DatabaseName, :OrderBy

        def initialize(instanceid=nil, groupid=nil, limit=nil, offset=nil, databasename=nil, orderby=nil)
          @InstanceId = instanceid
          @GroupId = groupid
          @Limit = limit
          @Offset = offset
          @DatabaseName = databasename
          @OrderBy = orderby
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @GroupId = params['GroupId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @DatabaseName = params['DatabaseName']
          @OrderBy = params['OrderBy']
        end
      end

      # DescribeBackupFiles返回参数结构体
      class DescribeBackupFilesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 备份总数量
        # @type TotalCount: Integer
        # @param BackupFiles: 备份文件列表详情
        # @type BackupFiles: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BackupFiles, :RequestId

        def initialize(totalcount=nil, backupfiles=nil, requestid=nil)
          @TotalCount = totalcount
          @BackupFiles = backupfiles
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BackupFiles'].nil?
            @BackupFiles = []
            params['BackupFiles'].each do |i|
              backupfile_tmp = BackupFile.new
              backupfile_tmp.deserialize(i)
              @BackupFiles << backupfile_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupMigration请求参数结构体
      class DescribeBackupMigrationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 导入目标实例ID
        # @type InstanceId: String
        # @param BackupMigrationId: 备份导入任务ID，由CreateBackupMigration接口返回
        # @type BackupMigrationId: String
        # @param MigrationName: 导入任务名称
        # @type MigrationName: String
        # @param BackupFileName: 备份文件名称
        # @type BackupFileName: String
        # @param StatusSet: 导入任务状态集合
        # @type StatusSet: Array
        # @param RecoveryType: 导入任务恢复类型，FULL,FULL_LOG,FULL_DIFF
        # @type RecoveryType: String
        # @param UploadType: COS_URL-备份放在用户的对象存储上，提供URL。COS_UPLOAD-备份放在业务的对象存储上，用户上传
        # @type UploadType: String
        # @param Limit: 分页，页大小，默认值：100
        # @type Limit: Integer
        # @param Offset: 分页，页数，默认值：0
        # @type Offset: Integer
        # @param OrderBy: 排序字段，name；createTime；startTime；endTime，默认按照createTime递增排序。
        # @type OrderBy: String
        # @param OrderByType: 排序方式，desc-递减排序，asc-递增排序。默认按照asc排序，且在OrderBy为有效值时，本参数有效
        # @type OrderByType: String

        attr_accessor :InstanceId, :BackupMigrationId, :MigrationName, :BackupFileName, :StatusSet, :RecoveryType, :UploadType, :Limit, :Offset, :OrderBy, :OrderByType

        def initialize(instanceid=nil, backupmigrationid=nil, migrationname=nil, backupfilename=nil, statusset=nil, recoverytype=nil, uploadtype=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil)
          @InstanceId = instanceid
          @BackupMigrationId = backupmigrationid
          @MigrationName = migrationname
          @BackupFileName = backupfilename
          @StatusSet = statusset
          @RecoveryType = recoverytype
          @UploadType = uploadtype
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMigrationId = params['BackupMigrationId']
          @MigrationName = params['MigrationName']
          @BackupFileName = params['BackupFileName']
          @StatusSet = params['StatusSet']
          @RecoveryType = params['RecoveryType']
          @UploadType = params['UploadType']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeBackupMigration返回参数结构体
      class DescribeBackupMigrationResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 迁移任务总数
        # @type TotalCount: Integer
        # @param BackupMigrationSet: 迁移任务集合
        # @type BackupMigrationSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BackupMigrationSet, :RequestId

        def initialize(totalcount=nil, backupmigrationset=nil, requestid=nil)
          @TotalCount = totalcount
          @BackupMigrationSet = backupmigrationset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BackupMigrationSet'].nil?
            @BackupMigrationSet = []
            params['BackupMigrationSet'].each do |i|
              migration_tmp = Migration.new
              migration_tmp.deserialize(i)
              @BackupMigrationSet << migration_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupMonitor请求参数结构体
      class DescribeBackupMonitorRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 备份空间使用详情开始时间
        # @type StartTime: String
        # @param EndTime: 备份空间使用详情结束时间
        # @type EndTime: String
        # @param Type: 备份趋势查询类型，local-本地备份，cross-跨地域备份
        # @type Type: String

        attr_accessor :StartTime, :EndTime, :Type

        def initialize(starttime=nil, endtime=nil, type=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Type = type
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Type = params['Type']
        end
      end

      # DescribeBackupMonitor返回参数结构体
      class DescribeBackupMonitorResponse < TencentCloud::Common::AbstractModel
        # @param TimeStamp: 备份趋势图时间轴
        # @type TimeStamp: Array
        # @param FreeSpace: 免费备份空间
        # @type FreeSpace: Array
        # @param ActualUsedSpace: 实际总备份空间
        # @type ActualUsedSpace: Array
        # @param LogBackupSpace: 日志备份空间
        # @type LogBackupSpace: Array
        # @param DataBackupSpace: 数据备份空间
        # @type DataBackupSpace: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TimeStamp, :FreeSpace, :ActualUsedSpace, :LogBackupSpace, :DataBackupSpace, :RequestId

        def initialize(timestamp=nil, freespace=nil, actualusedspace=nil, logbackupspace=nil, databackupspace=nil, requestid=nil)
          @TimeStamp = timestamp
          @FreeSpace = freespace
          @ActualUsedSpace = actualusedspace
          @LogBackupSpace = logbackupspace
          @DataBackupSpace = databackupspace
          @RequestId = requestid
        end

        def deserialize(params)
          @TimeStamp = params['TimeStamp']
          @FreeSpace = params['FreeSpace']
          @ActualUsedSpace = params['ActualUsedSpace']
          @LogBackupSpace = params['LogBackupSpace']
          @DataBackupSpace = params['DataBackupSpace']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupStatistical请求参数结构体
      class DescribeBackupStatisticalRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页返回，每页返回的数目，取值为1-100，默认值为100
        # @type Limit: Integer
        # @param Offset: 分页返回，页编号，默认值为第0页。
        # @type Offset: Integer
        # @param InstanceIdSet: 一个或者多个实例ID。实例ID，格式如：mssql-si2823jyl。
        # @type InstanceIdSet: Array
        # @param InstanceNameSet: 实例名称列表，模糊查询。
        # @type InstanceNameSet: Array
        # @param OrderBy: 排序字段，默认default，则按照备份空间降序。
        # default 按照备份空间排序
        # data 数据备份排序
        # log 日志备份排序
        # auto 自动备份排序
        # manual 手动备份排序
        # @type OrderBy: String
        # @param OrderByType: 默认降序，[desc-降序，asc-升序]。
        # @type OrderByType: String

        attr_accessor :Limit, :Offset, :InstanceIdSet, :InstanceNameSet, :OrderBy, :OrderByType

        def initialize(limit=nil, offset=nil, instanceidset=nil, instancenameset=nil, orderby=nil, orderbytype=nil)
          @Limit = limit
          @Offset = offset
          @InstanceIdSet = instanceidset
          @InstanceNameSet = instancenameset
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @InstanceIdSet = params['InstanceIdSet']
          @InstanceNameSet = params['InstanceNameSet']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeBackupStatistical返回参数结构体
      class DescribeBackupStatisticalResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例总数。分页返回的话，这个值指的是所有符合条件的实例的个数，而非当前根据Limit和Offset值返回的实例个数。
        # @type TotalCount: Integer
        # @param Items: 实例列表。
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
              summarydetailres_tmp = SummaryDetailRes.new
              summarydetailres_tmp.deserialize(i)
              @Items << summarydetailres_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupSummary请求参数结构体
      class DescribeBackupSummaryRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBackupSummary返回参数结构体
      class DescribeBackupSummaryResponse < TencentCloud::Common::AbstractModel
        # @param FreeSpace: 实际免费总空间，单位(KB)。
        # @type FreeSpace: Integer
        # @param ActualUsedSpace: 备份实际使用空间，单位(KB)。
        # @type ActualUsedSpace: Integer
        # @param BackupFilesTotal: 备份文件总个数。
        # @type BackupFilesTotal: Integer
        # @param BillingSpace: 备份占用收费空间，单位(KB)。
        # @type BillingSpace: Integer
        # @param DataBackupSpace: 数据备份使用空间，单位(KB)。
        # @type DataBackupSpace: Integer
        # @param DataBackupCount: 数据备份文件总个数。
        # @type DataBackupCount: Integer
        # @param ManualBackupSpace: 数据备份中手动备份使用空间，单位(KB)。
        # @type ManualBackupSpace: Integer
        # @param ManualBackupCount: 数据备份中手动备份文件总个数。
        # @type ManualBackupCount: Integer
        # @param AutoBackupSpace: 数据备份中自动备份使用空间，单位(KB)。
        # @type AutoBackupSpace: Integer
        # @param AutoBackupCount: 数据备份中自动备份文件总个数。
        # @type AutoBackupCount: Integer
        # @param LogBackupSpace: 日志备份使用空间，单位(KB)。
        # @type LogBackupSpace: Integer
        # @param LogBackupCount: 日志备份文件总个数。
        # @type LogBackupCount: Integer
        # @param EstimatedAmount: 预估收费金额，单位（元/小时）。
        # @type EstimatedAmount: Float
        # @param LocalBackupFilesTotal: 本地备份文件总个数
        # @type LocalBackupFilesTotal: Integer
        # @param CrossBackupFilesTotal: 跨地域备份文件总个数
        # @type CrossBackupFilesTotal: Integer
        # @param CrossBillingSpace: 跨地域备份占用收费空间，单位（KB）
        # @type CrossBillingSpace: Integer
        # @param CrossAutoBackupSpace: 跨地域自动数据备份使用空间，单位（KB）
        # @type CrossAutoBackupSpace: Integer
        # @param CrossAutoBackupCount: 跨地域自动数据备份文件总个数
        # @type CrossAutoBackupCount: Integer
        # @param LocalLogBackupSpace: 本地日志备份使用空间，单位（KB）
        # @type LocalLogBackupSpace: Integer
        # @param LocalLogBackupCount: 本地日志备份文件总个数
        # @type LocalLogBackupCount: Integer
        # @param CrossLogBackupSpace: 跨地域日志备份使用空间，单位（KB）
        # @type CrossLogBackupSpace: Integer
        # @param CrossLogBackupCount: 跨地域日志备份文件总个数
        # @type CrossLogBackupCount: Integer
        # @param CrossEstimatedAmount: 跨地域备份预估收费金额，单位（元/小时）
        # @type CrossEstimatedAmount: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FreeSpace, :ActualUsedSpace, :BackupFilesTotal, :BillingSpace, :DataBackupSpace, :DataBackupCount, :ManualBackupSpace, :ManualBackupCount, :AutoBackupSpace, :AutoBackupCount, :LogBackupSpace, :LogBackupCount, :EstimatedAmount, :LocalBackupFilesTotal, :CrossBackupFilesTotal, :CrossBillingSpace, :CrossAutoBackupSpace, :CrossAutoBackupCount, :LocalLogBackupSpace, :LocalLogBackupCount, :CrossLogBackupSpace, :CrossLogBackupCount, :CrossEstimatedAmount, :RequestId

        def initialize(freespace=nil, actualusedspace=nil, backupfilestotal=nil, billingspace=nil, databackupspace=nil, databackupcount=nil, manualbackupspace=nil, manualbackupcount=nil, autobackupspace=nil, autobackupcount=nil, logbackupspace=nil, logbackupcount=nil, estimatedamount=nil, localbackupfilestotal=nil, crossbackupfilestotal=nil, crossbillingspace=nil, crossautobackupspace=nil, crossautobackupcount=nil, locallogbackupspace=nil, locallogbackupcount=nil, crosslogbackupspace=nil, crosslogbackupcount=nil, crossestimatedamount=nil, requestid=nil)
          @FreeSpace = freespace
          @ActualUsedSpace = actualusedspace
          @BackupFilesTotal = backupfilestotal
          @BillingSpace = billingspace
          @DataBackupSpace = databackupspace
          @DataBackupCount = databackupcount
          @ManualBackupSpace = manualbackupspace
          @ManualBackupCount = manualbackupcount
          @AutoBackupSpace = autobackupspace
          @AutoBackupCount = autobackupcount
          @LogBackupSpace = logbackupspace
          @LogBackupCount = logbackupcount
          @EstimatedAmount = estimatedamount
          @LocalBackupFilesTotal = localbackupfilestotal
          @CrossBackupFilesTotal = crossbackupfilestotal
          @CrossBillingSpace = crossbillingspace
          @CrossAutoBackupSpace = crossautobackupspace
          @CrossAutoBackupCount = crossautobackupcount
          @LocalLogBackupSpace = locallogbackupspace
          @LocalLogBackupCount = locallogbackupcount
          @CrossLogBackupSpace = crosslogbackupspace
          @CrossLogBackupCount = crosslogbackupcount
          @CrossEstimatedAmount = crossestimatedamount
          @RequestId = requestid
        end

        def deserialize(params)
          @FreeSpace = params['FreeSpace']
          @ActualUsedSpace = params['ActualUsedSpace']
          @BackupFilesTotal = params['BackupFilesTotal']
          @BillingSpace = params['BillingSpace']
          @DataBackupSpace = params['DataBackupSpace']
          @DataBackupCount = params['DataBackupCount']
          @ManualBackupSpace = params['ManualBackupSpace']
          @ManualBackupCount = params['ManualBackupCount']
          @AutoBackupSpace = params['AutoBackupSpace']
          @AutoBackupCount = params['AutoBackupCount']
          @LogBackupSpace = params['LogBackupSpace']
          @LogBackupCount = params['LogBackupCount']
          @EstimatedAmount = params['EstimatedAmount']
          @LocalBackupFilesTotal = params['LocalBackupFilesTotal']
          @CrossBackupFilesTotal = params['CrossBackupFilesTotal']
          @CrossBillingSpace = params['CrossBillingSpace']
          @CrossAutoBackupSpace = params['CrossAutoBackupSpace']
          @CrossAutoBackupCount = params['CrossAutoBackupCount']
          @LocalLogBackupSpace = params['LocalLogBackupSpace']
          @LocalLogBackupCount = params['LocalLogBackupCount']
          @CrossLogBackupSpace = params['CrossLogBackupSpace']
          @CrossLogBackupCount = params['CrossLogBackupCount']
          @CrossEstimatedAmount = params['CrossEstimatedAmount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupUploadSize请求参数结构体
      class DescribeBackupUploadSizeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 导入目标实例ID
        # @type InstanceId: String
        # @param BackupMigrationId: 备份导入任务ID，由CreateBackupMigration接口返回
        # @type BackupMigrationId: String
        # @param IncrementalMigrationId: 增量导入任务ID
        # @type IncrementalMigrationId: String

        attr_accessor :InstanceId, :BackupMigrationId, :IncrementalMigrationId

        def initialize(instanceid=nil, backupmigrationid=nil, incrementalmigrationid=nil)
          @InstanceId = instanceid
          @BackupMigrationId = backupmigrationid
          @IncrementalMigrationId = incrementalmigrationid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMigrationId = params['BackupMigrationId']
          @IncrementalMigrationId = params['IncrementalMigrationId']
        end
      end

      # DescribeBackupUploadSize返回参数结构体
      class DescribeBackupUploadSizeResponse < TencentCloud::Common::AbstractModel
        # @param CosUploadBackupFileSet: 已上传的备份的信息
        # @type CosUploadBackupFileSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CosUploadBackupFileSet, :RequestId

        def initialize(cosuploadbackupfileset=nil, requestid=nil)
          @CosUploadBackupFileSet = cosuploadbackupfileset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CosUploadBackupFileSet'].nil?
            @CosUploadBackupFileSet = []
            params['CosUploadBackupFileSet'].each do |i|
              cosuploadbackupfile_tmp = CosUploadBackupFile.new
              cosuploadbackupfile_tmp.deserialize(i)
              @CosUploadBackupFileSet << cosuploadbackupfile_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackups请求参数结构体
      class DescribeBackupsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间(yyyy-MM-dd HH:mm:ss)
        # @type StartTime: String
        # @param EndTime: 结束时间(yyyy-MM-dd HH:mm:ss)
        # @type EndTime: String
        # @param InstanceId: 实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param Limit: 分页返回，每页返回的数目，取值为1-100，默认值为20
        # @type Limit: Integer
        # @param Offset: 分页返回，页编号，默认值为第0页
        # @type Offset: Integer
        # @param BackupName: 按照备份名称筛选，不填则不筛选此项
        # @type BackupName: String
        # @param Strategy: 按照备份策略筛选，0-实例备份，1-多库备份，不填则不筛选此项
        # @type Strategy: Integer
        # @param BackupWay: 按照备份方式筛选，0-后台自动定时备份，1-用户手动临时备份，2-定期备份，不填则不筛选此项
        # @type BackupWay: Integer
        # @param BackupId: 按照备份ID筛选，不填则不筛选此项
        # @type BackupId: Integer
        # @param DatabaseName: 按照备份的库名称筛选，不填则不筛选此项
        # @type DatabaseName: String
        # @param Group: 是否分组查询，默认是0，单库备份情况下 0-兼容老方式不分组，1-单库备份分组后展示
        # @type Group: Integer
        # @param Type: 备份类型，1-数据备份，2-日志备份，默认值为1
        # @type Type: Integer
        # @param BackupFormat: 按照备份文件形式筛选，pkg-打包备份文件，single-单库备份文件
        # @type BackupFormat: String
        # @param StorageStrategy: 备份存储策略 0-跟随自定义备份保留策略 1-跟随实例生命周期直到实例下线，默认取值0
        # @type StorageStrategy: Integer

        attr_accessor :StartTime, :EndTime, :InstanceId, :Limit, :Offset, :BackupName, :Strategy, :BackupWay, :BackupId, :DatabaseName, :Group, :Type, :BackupFormat, :StorageStrategy

        def initialize(starttime=nil, endtime=nil, instanceid=nil, limit=nil, offset=nil, backupname=nil, strategy=nil, backupway=nil, backupid=nil, databasename=nil, group=nil, type=nil, backupformat=nil, storagestrategy=nil)
          @StartTime = starttime
          @EndTime = endtime
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
          @BackupName = backupname
          @Strategy = strategy
          @BackupWay = backupway
          @BackupId = backupid
          @DatabaseName = databasename
          @Group = group
          @Type = type
          @BackupFormat = backupformat
          @StorageStrategy = storagestrategy
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @BackupName = params['BackupName']
          @Strategy = params['Strategy']
          @BackupWay = params['BackupWay']
          @BackupId = params['BackupId']
          @DatabaseName = params['DatabaseName']
          @Group = params['Group']
          @Type = params['Type']
          @BackupFormat = params['BackupFormat']
          @StorageStrategy = params['StorageStrategy']
        end
      end

      # DescribeBackups返回参数结构体
      class DescribeBackupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 备份总数量
        # @type TotalCount: Integer
        # @param Backups: 备份列表详情
        # @type Backups: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Backups, :RequestId

        def initialize(totalcount=nil, backups=nil, requestid=nil)
          @TotalCount = totalcount
          @Backups = backups
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Backups'].nil?
            @Backups = []
            params['Backups'].each do |i|
              backup_tmp = Backup.new
              backup_tmp.deserialize(i)
              @Backups << backup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBusinessIntelligenceFile请求参数结构体
      class DescribeBusinessIntelligenceFileRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param FileName: 文件名称
        # @type FileName: String
        # @param StatusSet: 迁移任务状态集合,1-初始化待部署 2-部署中 3-部署成功 4-部署失败
        # @type StatusSet: Array
        # @param FileType: 文件类型 FLAT-平面文件，SSIS商业智能服务项目文件
        # @type FileType: String
        # @param Limit: 分页，页大小，范围1-100
        # @type Limit: Integer
        # @param Offset: 分页,页数，默认0
        # @type Offset: Integer
        # @param OrderBy: 排序字段，可选值file_name,create_time,start_time
        # @type OrderBy: String
        # @param OrderByType: 排序方式，desc,asc
        # @type OrderByType: String

        attr_accessor :InstanceId, :FileName, :StatusSet, :FileType, :Limit, :Offset, :OrderBy, :OrderByType

        def initialize(instanceid=nil, filename=nil, statusset=nil, filetype=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil)
          @InstanceId = instanceid
          @FileName = filename
          @StatusSet = statusset
          @FileType = filetype
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FileName = params['FileName']
          @StatusSet = params['StatusSet']
          @FileType = params['FileType']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeBusinessIntelligenceFile返回参数结构体
      class DescribeBusinessIntelligenceFileResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 文件部署任务总数
        # @type TotalCount: Integer
        # @param BackupMigrationSet: 文件部署任务集合
        # @type BackupMigrationSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BackupMigrationSet, :RequestId

        def initialize(totalcount=nil, backupmigrationset=nil, requestid=nil)
          @TotalCount = totalcount
          @BackupMigrationSet = backupmigrationset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BackupMigrationSet'].nil?
            @BackupMigrationSet = []
            params['BackupMigrationSet'].each do |i|
              businessintelligencefile_tmp = BusinessIntelligenceFile.new
              businessintelligencefile_tmp.deserialize(i)
              @BackupMigrationSet << businessintelligencefile_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCollationTimeZone请求参数结构体
      class DescribeCollationTimeZoneRequest < TencentCloud::Common::AbstractModel
        # @param MachineType: 购买实例的宿主机类型，PM-物理机, CLOUD_PREMIUM-云服务器高性能云盘，
        # CLOUD_SSD-云服务器SSD云盘,CLOUD_HSSD-云服务器加强型SSD云盘，CLOUD_TSSD-云服务器极速型SSD云盘，CLOUD_BSSD-云服务器通用型SSD云盘,CLOUD_BASIC-云服务器云硬盘，默认取值PM
        # @type MachineType: String
        # @param DBVersion: 购买实例版本号
        # @type DBVersion: String

        attr_accessor :MachineType, :DBVersion

        def initialize(machinetype=nil, dbversion=nil)
          @MachineType = machinetype
          @DBVersion = dbversion
        end

        def deserialize(params)
          @MachineType = params['MachineType']
          @DBVersion = params['DBVersion']
        end
      end

      # DescribeCollationTimeZone返回参数结构体
      class DescribeCollationTimeZoneResponse < TencentCloud::Common::AbstractModel
        # @param Collation: 系统字符集排序规则列表
        # @type Collation: Array
        # @param TimeZone: 系统时区列表
        # @type TimeZone: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Collation, :TimeZone, :RequestId

        def initialize(collation=nil, timezone=nil, requestid=nil)
          @Collation = collation
          @TimeZone = timezone
          @RequestId = requestid
        end

        def deserialize(params)
          @Collation = params['Collation']
          @TimeZone = params['TimeZone']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCrossBackupStatistical请求参数结构体
      class DescribeCrossBackupStatisticalRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页,页数
        # @type Offset: Integer
        # @param Limit: 分页，页大小
        # @type Limit: Integer
        # @param InstanceIdSet: 实例ID列表
        # @type InstanceIdSet: Array
        # @param InstanceNameSet: 实例名称列表
        # @type InstanceNameSet: Array
        # @param CrossBackupStatus: 跨地域备份状态，enable-开启，disable-关闭
        # @type CrossBackupStatus: String
        # @param CrossRegion: 跨地域备份目标地域
        # @type CrossRegion: String
        # @param OrderBy: 排序字段，默认default-按照备份空间降序排序，data-按照数据备份排序，log-按照日志备份培训
        # @type OrderBy: String
        # @param OrderByType: 排序规则（desc-降序，asc-升序），默认desc
        # @type OrderByType: String

        attr_accessor :Offset, :Limit, :InstanceIdSet, :InstanceNameSet, :CrossBackupStatus, :CrossRegion, :OrderBy, :OrderByType

        def initialize(offset=nil, limit=nil, instanceidset=nil, instancenameset=nil, crossbackupstatus=nil, crossregion=nil, orderby=nil, orderbytype=nil)
          @Offset = offset
          @Limit = limit
          @InstanceIdSet = instanceidset
          @InstanceNameSet = instancenameset
          @CrossBackupStatus = crossbackupstatus
          @CrossRegion = crossregion
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceIdSet = params['InstanceIdSet']
          @InstanceNameSet = params['InstanceNameSet']
          @CrossBackupStatus = params['CrossBackupStatus']
          @CrossRegion = params['CrossRegion']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeCrossBackupStatistical返回参数结构体
      class DescribeCrossBackupStatisticalResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 跨地域备份概览实时统计总条数
        # @type TotalCount: Integer
        # @param Items: 跨地域备份概览实时统计列表
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
              crosssummarydetailres_tmp = CrossSummaryDetailRes.new
              crosssummarydetailres_tmp.deserialize(i)
              @Items << crosssummarydetailres_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCrossRegionZone请求参数结构体
      class DescribeCrossRegionZoneRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：mssql-3l3fgqn7
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeCrossRegionZone返回参数结构体
      class DescribeCrossRegionZoneResponse < TencentCloud::Common::AbstractModel
        # @param Region: 备机所在地域的字符串ID，形如：ap-guangzhou
        # @type Region: String
        # @param Zone: 备机所在可用区的字符串ID，形如：ap-guangzhou-1
        # @type Zone: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Region, :Zone, :RequestId

        def initialize(region=nil, zone=nil, requestid=nil)
          @Region = region
          @Zone = zone
          @RequestId = requestid
        end

        def deserialize(params)
          @Region = params['Region']
          @Zone = params['Zone']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCrossRegions请求参数结构体
      class DescribeCrossRegionsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCrossRegions返回参数结构体
      class DescribeCrossRegionsResponse < TencentCloud::Common::AbstractModel
        # @param Regions: 支持跨地域备份的目标地域集合
        # @type Regions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Regions, :RequestId

        def initialize(regions=nil, requestid=nil)
          @Regions = regions
          @RequestId = requestid
        end

        def deserialize(params)
          @Regions = params['Regions']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBCharsets请求参数结构体
      class DescribeDBCharsetsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-j8kv137v
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBCharsets返回参数结构体
      class DescribeDBCharsetsResponse < TencentCloud::Common::AbstractModel
        # @param DatabaseCharsets: 数据库字符集列表
        # @type DatabaseCharsets: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DatabaseCharsets, :RequestId

        def initialize(databasecharsets=nil, requestid=nil)
          @DatabaseCharsets = databasecharsets
          @RequestId = requestid
        end

        def deserialize(params)
          @DatabaseCharsets = params['DatabaseCharsets']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceInter请求参数结构体
      class DescribeDBInstanceInterRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页，页大小，范围是1-100
        # @type Limit: Integer
        # @param InstanceId: 按照实例ID筛选
        # @type InstanceId: String
        # @param Status: 按照状态筛选 1-互通IP打开中；2-互通IP已经打开；3-加入到互通组中；4-已加入到互通组；5-互通IP回收中；6-互通IP已回收；7-从互通组移除中；8-已从互通组中移除
        # @type Status: Integer
        # @param VersionSet: 实例版本代号列表
        # @type VersionSet: Array
        # @param Zone: 实例所在可用区，格式如：ap-guangzhou-2
        # @type Zone: String
        # @param Offset: 分页，页数，默认是0
        # @type Offset: Integer

        attr_accessor :Limit, :InstanceId, :Status, :VersionSet, :Zone, :Offset

        def initialize(limit=nil, instanceid=nil, status=nil, versionset=nil, zone=nil, offset=nil)
          @Limit = limit
          @InstanceId = instanceid
          @Status = status
          @VersionSet = versionset
          @Zone = zone
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @InstanceId = params['InstanceId']
          @Status = params['Status']
          @VersionSet = params['VersionSet']
          @Zone = params['Zone']
          @Offset = params['Offset']
        end
      end

      # DescribeDBInstanceInter返回参数结构体
      class DescribeDBInstanceInterResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 互通组内总条数
        # @type TotalCount: Integer
        # @param InterInstanceSet: 互通组内实例信息详情
        # @type InterInstanceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InterInstanceSet, :RequestId

        def initialize(totalcount=nil, interinstanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @InterInstanceSet = interinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InterInstanceSet'].nil?
            @InterInstanceSet = []
            params['InterInstanceSet'].each do |i|
              interinstance_tmp = InterInstance.new
              interinstance_tmp.deserialize(i)
              @InterInstanceSet << interinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstancesAttribute请求参数结构体
      class DescribeDBInstancesAttributeRequest < TencentCloud::Common::AbstractModel
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

      # DescribeDBInstancesAttribute返回参数结构体
      class DescribeDBInstancesAttributeResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param RegularBackupEnable: 定期备份状态 enable-开启，disable-关闭
        # @type RegularBackupEnable: String
        # @param RegularBackupSaveDays: 定期备份保留天数 [90 - 3650]天
        # @type RegularBackupSaveDays: Integer
        # @param RegularBackupStrategy: 定期备份策略 years-每年，quarters-每季度，months-每月
        # @type RegularBackupStrategy: String
        # @param RegularBackupCounts: 定期备份保留个数
        # @type RegularBackupCounts: Integer
        # @param RegularBackupStartTime: 定期备份开始日期，格式-YYYY-MM-DD 默认当前日期
        # @type RegularBackupStartTime: String
        # @param BlockedThreshold: 阻塞进程阈值，单位毫秒
        # @type BlockedThreshold: Integer
        # @param EventSaveDays: 慢SQL、阻塞、死锁扩展事件文件保留时长
        # @type EventSaveDays: Integer
        # @param TDEConfig: TDE透明数据加密配置
        # @type TDEConfig: :class:`Tencentcloud::Sqlserver.v20180328.models.TDEConfigAttribute`
        # @param SSLConfig: SSL加密
        # @type SSLConfig: :class:`Tencentcloud::Sqlserver.v20180328.models.SSLConfig`
        # @param DrReadableInfo: 备机只读信息
        # @type DrReadableInfo: :class:`Tencentcloud::Sqlserver.v20180328.models.DrReadableInfo`
        # @param OldVipList: 等待回收的IP列表
        # @type OldVipList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RegularBackupEnable, :RegularBackupSaveDays, :RegularBackupStrategy, :RegularBackupCounts, :RegularBackupStartTime, :BlockedThreshold, :EventSaveDays, :TDEConfig, :SSLConfig, :DrReadableInfo, :OldVipList, :RequestId

        def initialize(instanceid=nil, regularbackupenable=nil, regularbackupsavedays=nil, regularbackupstrategy=nil, regularbackupcounts=nil, regularbackupstarttime=nil, blockedthreshold=nil, eventsavedays=nil, tdeconfig=nil, sslconfig=nil, drreadableinfo=nil, oldviplist=nil, requestid=nil)
          @InstanceId = instanceid
          @RegularBackupEnable = regularbackupenable
          @RegularBackupSaveDays = regularbackupsavedays
          @RegularBackupStrategy = regularbackupstrategy
          @RegularBackupCounts = regularbackupcounts
          @RegularBackupStartTime = regularbackupstarttime
          @BlockedThreshold = blockedthreshold
          @EventSaveDays = eventsavedays
          @TDEConfig = tdeconfig
          @SSLConfig = sslconfig
          @DrReadableInfo = drreadableinfo
          @OldVipList = oldviplist
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RegularBackupEnable = params['RegularBackupEnable']
          @RegularBackupSaveDays = params['RegularBackupSaveDays']
          @RegularBackupStrategy = params['RegularBackupStrategy']
          @RegularBackupCounts = params['RegularBackupCounts']
          @RegularBackupStartTime = params['RegularBackupStartTime']
          @BlockedThreshold = params['BlockedThreshold']
          @EventSaveDays = params['EventSaveDays']
          unless params['TDEConfig'].nil?
            @TDEConfig = TDEConfigAttribute.new
            @TDEConfig.deserialize(params['TDEConfig'])
          end
          unless params['SSLConfig'].nil?
            @SSLConfig = SSLConfig.new
            @SSLConfig.deserialize(params['SSLConfig'])
          end
          unless params['DrReadableInfo'].nil?
            @DrReadableInfo = DrReadableInfo.new
            @DrReadableInfo.deserialize(params['DrReadableInfo'])
          end
          unless params['OldVipList'].nil?
            @OldVipList = []
            params['OldVipList'].each do |i|
              oldvip_tmp = OldVip.new
              oldvip_tmp.deserialize(i)
              @OldVipList << oldvip_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstances请求参数结构体
      class DescribeDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Status: 实例状态。取值范围：
        # <li>1：申请中</li>
        # <li>2：运行中</li>
        # <li>3：受限运行中 (主备切换中)</li>
        # <li>4：已隔离</li>
        # <li>5：回收中</li>
        # <li>6：已回收</li>
        # <li>7：任务执行中 (实例做备份、回档等操作)</li>
        # <li>8：已下线</li>
        # <li>9：实例扩容中</li>
        # <li>10：实例迁移中</li>
        # <li>11：只读</li>
        # <li>12：重启中</li>
        # @type Status: Integer
        # @param Offset: 分页返回，页编号，默认值为第0页
        # @type Offset: Integer
        # @param Limit: 分页返回，每页返回的数目，取值为1-100，默认值为100
        # @type Limit: Integer
        # @param InstanceIdSet: 一个或者多个实例ID。实例ID，格式如：mssql-si2823jyl
        # @type InstanceIdSet: Array
        # @param PayMode: 付费类型检索 1-包年包月，0-按量计费
        # @type PayMode: Integer
        # @param VpcId: 实例所属VPC的唯一字符串ID，格式如：vpc-xxx，传空字符串(“”)则按照基础网络筛选。
        # @type VpcId: String
        # @param SubnetId: 实例所属子网的唯一字符串ID，格式如： subnet-xxx，传空字符串(“”)则按照基础网络筛选。
        # @type SubnetId: String
        # @param VipSet: 实例内网地址列表，格式如：172.1.0.12
        # @type VipSet: Array
        # @param InstanceNameSet: 实例名称列表，模糊查询
        # @type InstanceNameSet: Array
        # @param VersionSet: 实例版本代号列表，格式如：2008R2，2012SP3等
        # @type VersionSet: Array
        # @param Zone: 实例可用区，格式如：ap-guangzhou-2
        # @type Zone: String
        # @param TagKeys: 实例标签列表
        # @type TagKeys: Array
        # @param SearchKey: 模糊查询关键字，支持实例id、实例名、内网ip
        # @type SearchKey: String
        # @param UidSet: 实例唯一Uid列表
        # @type UidSet: Array
        # @param InstanceType: 实例类型 HA-高可用 RO-只读实例 SI-基础版 BI-商业智能服务
        # @type InstanceType: String
        # @param PaginationType: 分页查询方式 offset-按照偏移量分页查询，pageNumber-按照页数分页查询，默认取值pageNumber
        # @type PaginationType: String

        attr_accessor :ProjectId, :Status, :Offset, :Limit, :InstanceIdSet, :PayMode, :VpcId, :SubnetId, :VipSet, :InstanceNameSet, :VersionSet, :Zone, :TagKeys, :SearchKey, :UidSet, :InstanceType, :PaginationType

        def initialize(projectid=nil, status=nil, offset=nil, limit=nil, instanceidset=nil, paymode=nil, vpcid=nil, subnetid=nil, vipset=nil, instancenameset=nil, versionset=nil, zone=nil, tagkeys=nil, searchkey=nil, uidset=nil, instancetype=nil, paginationtype=nil)
          @ProjectId = projectid
          @Status = status
          @Offset = offset
          @Limit = limit
          @InstanceIdSet = instanceidset
          @PayMode = paymode
          @VpcId = vpcid
          @SubnetId = subnetid
          @VipSet = vipset
          @InstanceNameSet = instancenameset
          @VersionSet = versionset
          @Zone = zone
          @TagKeys = tagkeys
          @SearchKey = searchkey
          @UidSet = uidset
          @InstanceType = instancetype
          @PaginationType = paginationtype
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Status = params['Status']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceIdSet = params['InstanceIdSet']
          @PayMode = params['PayMode']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @VipSet = params['VipSet']
          @InstanceNameSet = params['InstanceNameSet']
          @VersionSet = params['VersionSet']
          @Zone = params['Zone']
          @TagKeys = params['TagKeys']
          @SearchKey = params['SearchKey']
          @UidSet = params['UidSet']
          @InstanceType = params['InstanceType']
          @PaginationType = params['PaginationType']
        end
      end

      # DescribeDBInstances返回参数结构体
      class DescribeDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例总数。分页返回的话，这个值指的是所有符合条件的实例的个数，而非当前根据Limit和Offset值返回的实例个数
        # @type TotalCount: Integer
        # @param DBInstances: 实例列表
        # @type DBInstances: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DBInstances, :RequestId

        def initialize(totalcount=nil, dbinstances=nil, requestid=nil)
          @TotalCount = totalcount
          @DBInstances = dbinstances
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DBInstances'].nil?
            @DBInstances = []
            params['DBInstances'].each do |i|
              dbinstance_tmp = DBInstance.new
              dbinstance_tmp.deserialize(i)
              @DBInstances << dbinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBPrivilegeByAccount请求参数结构体
      class DescribeDBPrivilegeByAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param AccountName: 账号名称
        # @type AccountName: String
        # @param DBName: 账号关联的数据库名称
        # @type DBName: String
        # @param Limit: 分页返回，每页返回的数目，取值为1-100，默认值为20
        # @type Limit: Integer
        # @param Offset: 分页返回，页编号，默认值为第0页
        # @type Offset: Integer

        attr_accessor :InstanceId, :AccountName, :DBName, :Limit, :Offset

        def initialize(instanceid=nil, accountname=nil, dbname=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @AccountName = accountname
          @DBName = dbname
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AccountName = params['AccountName']
          @DBName = params['DBName']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDBPrivilegeByAccount返回参数结构体
      class DescribeDBPrivilegeByAccountResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据总库数量
        # @type TotalCount: Integer
        # @param DBList: 数据库权限列表
        # @type DBList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DBList, :RequestId

        def initialize(totalcount=nil, dblist=nil, requestid=nil)
          @TotalCount = totalcount
          @DBList = dblist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DBList'].nil?
            @DBList = []
            params['DBList'].each do |i|
              dbprivilege_tmp = DBPrivilege.new
              dbprivilege_tmp.deserialize(i)
              @DBList << dbprivilege_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBRestoreTime请求参数结构体
      class DescribeDBRestoreTimeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 原实例ID
        # @type InstanceId: String
        # @param TargetInstanceId: 回档的目标实例ID，不填则回档到原实例ID
        # @type TargetInstanceId: String
        # @param Time: 按时间点查询可回档数据库，时间格式 YYYY-MM-DD HH:MM:SS。BackupId，Time二选一，不能同时为空
        # @type Time: String
        # @param BackupId: 按备份集ID查询可回档数据库，可通过DescribeBackups接口获取。BackupId，Time二选一不能同时为空
        # @type BackupId: Integer
        # @param DBName: 数据库名称
        # @type DBName: String

        attr_accessor :InstanceId, :TargetInstanceId, :Time, :BackupId, :DBName

        def initialize(instanceid=nil, targetinstanceid=nil, time=nil, backupid=nil, dbname=nil)
          @InstanceId = instanceid
          @TargetInstanceId = targetinstanceid
          @Time = time
          @BackupId = backupid
          @DBName = dbname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TargetInstanceId = params['TargetInstanceId']
          @Time = params['Time']
          @BackupId = params['BackupId']
          @DBName = params['DBName']
        end
      end

      # DescribeDBRestoreTime返回参数结构体
      class DescribeDBRestoreTimeResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 可回档数据库总数量
        # @type TotalCount: Integer
        # @param Details: 可回档数据库列表
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
              dbrenameres_tmp = DBRenameRes.new
              dbrenameres_tmp.deserialize(i)
              @Details << dbrenameres_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSecurityGroups请求参数结构体
      class DescribeDBSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：mssql-c1nl9rpv或者mssqlro-c1nl9rpv，与云数据库控制台页面中显示的实例ID相同。
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
        # @param SecurityGroupSet: 安全组详情。
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

      # DescribeDBsNormal请求参数结构体
      class DescribeDBsNormalRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-7vfv3rk3
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBsNormal返回参数结构体
      class DescribeDBsNormalResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 表示当前实例下的数据库总个数
        # @type TotalCount: Integer
        # @param DBList: 返回数据库的详细配置信息，例如：数据库是否开启CDC、CT等
        # @type DBList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DBList, :RequestId

        def initialize(totalcount=nil, dblist=nil, requestid=nil)
          @TotalCount = totalcount
          @DBList = dblist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DBList'].nil?
            @DBList = []
            params['DBList'].each do |i|
              dbnormaldetail_tmp = DbNormalDetail.new
              dbnormaldetail_tmp.deserialize(i)
              @DBList << dbnormaldetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBs请求参数结构体
      class DescribeDBsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 实例ID
        # @type InstanceIdSet: Array
        # @param Limit: 分页返回，每页返回的数目，取值为1-100，默认值为20
        # @type Limit: Integer
        # @param Offset: 分页返回，页编号，默认值为第0页
        # @type Offset: Integer
        # @param Name: 数据库名称
        # @type Name: String
        # @param OrderByType: 排序规则（desc-降序，asc-升序），默认desc
        # @type OrderByType: String
        # @param Encryption: 是否已开启TDE加密，enable-已加密，disable-未加密
        # @type Encryption: String

        attr_accessor :InstanceIdSet, :Limit, :Offset, :Name, :OrderByType, :Encryption

        def initialize(instanceidset=nil, limit=nil, offset=nil, name=nil, orderbytype=nil, encryption=nil)
          @InstanceIdSet = instanceidset
          @Limit = limit
          @Offset = offset
          @Name = name
          @OrderByType = orderbytype
          @Encryption = encryption
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Name = params['Name']
          @OrderByType = params['OrderByType']
          @Encryption = params['Encryption']
        end
      end

      # DescribeDBs返回参数结构体
      class DescribeDBsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据库数量
        # @type TotalCount: Integer
        # @param DBInstances: 实例数据库列表
        # @type DBInstances: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DBInstances, :RequestId

        def initialize(totalcount=nil, dbinstances=nil, requestid=nil)
          @TotalCount = totalcount
          @DBInstances = dbinstances
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DBInstances'].nil?
            @DBInstances = []
            params['DBInstances'].each do |i|
              instancedbdetail_tmp = InstanceDBDetail.new
              instancedbdetail_tmp.deserialize(i)
              @DBInstances << instancedbdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabaseNames请求参数结构体
      class DescribeDatabaseNamesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-rljoi3bf
        # @type InstanceId: String
        # @param AccountName: 账户名称
        # @type AccountName: String

        attr_accessor :InstanceId, :AccountName

        def initialize(instanceid=nil, accountname=nil)
          @InstanceId = instanceid
          @AccountName = accountname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AccountName = params['AccountName']
        end
      end

      # DescribeDatabaseNames返回参数结构体
      class DescribeDatabaseNamesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 账户关联的数据库总数
        # @type TotalCount: Integer
        # @param DatabaseNameSet: 数据库名称集合
        # @type DatabaseNameSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DatabaseNameSet, :RequestId

        def initialize(totalcount=nil, databasenameset=nil, requestid=nil)
          @TotalCount = totalcount
          @DatabaseNameSet = databasenameset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @DatabaseNameSet = params['DatabaseNameSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabasesNormal请求参数结构体
      class DescribeDatabasesNormalRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-7vfv3rk3
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDatabasesNormal返回参数结构体
      class DescribeDatabasesNormalResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 表示当前实例下的数据库总个数
        # @type TotalCount: Integer
        # @param DBList: 返回数据库的详细配置信息，例如：数据库是否开启CDC、CT等
        # @type DBList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DBList, :RequestId

        def initialize(totalcount=nil, dblist=nil, requestid=nil)
          @TotalCount = totalcount
          @DBList = dblist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DBList'].nil?
            @DBList = []
            params['DBList'].each do |i|
              dbnormaldetail_tmp = DbNormalDetail.new
              dbnormaldetail_tmp.deserialize(i)
              @DBList << dbnormaldetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabases请求参数结构体
      class DescribeDatabasesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 实例ID
        # @type InstanceIdSet: Array
        # @param Limit: 分页返回，每页返回的数目，取值为1-100，默认值为20
        # @type Limit: Integer
        # @param Offset: 分页返回，页编号，默认值为第0页
        # @type Offset: Integer
        # @param Name: 数据库名称
        # @type Name: String
        # @param OrderByType: 排序规则（desc-降序，asc-升序），默认desc
        # @type OrderByType: String
        # @param Encryption: 是否已开启TDE加密，enable-已加密，disable-未加密
        # @type Encryption: String

        attr_accessor :InstanceIdSet, :Limit, :Offset, :Name, :OrderByType, :Encryption

        def initialize(instanceidset=nil, limit=nil, offset=nil, name=nil, orderbytype=nil, encryption=nil)
          @InstanceIdSet = instanceidset
          @Limit = limit
          @Offset = offset
          @Name = name
          @OrderByType = orderbytype
          @Encryption = encryption
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Name = params['Name']
          @OrderByType = params['OrderByType']
          @Encryption = params['Encryption']
        end
      end

      # DescribeDatabases返回参数结构体
      class DescribeDatabasesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据库数量
        # @type TotalCount: Integer
        # @param DBInstances: 实例数据库列表
        # @type DBInstances: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DBInstances, :RequestId

        def initialize(totalcount=nil, dbinstances=nil, requestid=nil)
          @TotalCount = totalcount
          @DBInstances = dbinstances
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DBInstances'].nil?
            @DBInstances = []
            params['DBInstances'].each do |i|
              instancedbdetail_tmp = InstanceDBDetail.new
              instancedbdetail_tmp.deserialize(i)
              @DBInstances << instancedbdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlowStatus请求参数结构体
      class DescribeFlowStatusRequest < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: Integer

        attr_accessor :FlowId

        def initialize(flowid=nil)
          @FlowId = flowid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
        end
      end

      # DescribeFlowStatus返回参数结构体
      class DescribeFlowStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 流程状态，0：成功，1：失败，2：运行中
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHASwitchLog请求参数结构体
      class DescribeHASwitchLogRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param StartTime: 开始时间(yyyy-MM-dd HH:mm:ss)
        # @type StartTime: String
        # @param EndTime: 结束时间(yyyy-MM-dd HH:mm:ss)
        # @type EndTime: String
        # @param SwitchType: 切换模式 0-系统自动切换，1-手动切换，不填默认查全部。
        # @type SwitchType: Integer
        # @param Limit: 分页，页大小
        # @type Limit: Integer
        # @param Offset: 分页,页数
        # @type Offset: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :SwitchType, :Limit, :Offset

        def initialize(instanceid=nil, starttime=nil, endtime=nil, switchtype=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @SwitchType = switchtype
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SwitchType = params['SwitchType']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeHASwitchLog返回参数结构体
      class DescribeHASwitchLogResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 日志总数量
        # @type TotalCount: Integer
        # @param SwitchLog: 主备切换日志
        # @type SwitchLog: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SwitchLog, :RequestId

        def initialize(totalcount=nil, switchlog=nil, requestid=nil)
          @TotalCount = totalcount
          @SwitchLog = switchlog
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SwitchLog'].nil?
            @SwitchLog = []
            params['SwitchLog'].each do |i|
              switchlog_tmp = SwitchLog.new
              switchlog_tmp.deserialize(i)
              @SwitchLog << switchlog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIncrementalMigration请求参数结构体
      class DescribeIncrementalMigrationRequest < TencentCloud::Common::AbstractModel
        # @param BackupMigrationId: 备份导入任务ID，由CreateBackupMigration接口返回
        # @type BackupMigrationId: String
        # @param InstanceId: 导入目标实例ID
        # @type InstanceId: String
        # @param BackupFileName: 备份文件名称
        # @type BackupFileName: String
        # @param StatusSet: 导入任务状态集合
        # @type StatusSet: Array
        # @param Limit: 分页，页大小，默认值：100
        # @type Limit: Integer
        # @param Offset: 分页，页数，默认值：0
        # @type Offset: Integer
        # @param OrderBy: 排序字段，name；createTime；startTime；endTime，默认按照createTime递增排序。
        # @type OrderBy: String
        # @param OrderByType: 排序方式，desc-递减排序，asc-递增排序。默认按照asc排序，且在OrderBy为有效值时，本参数有效
        # @type OrderByType: String
        # @param IncrementalMigrationId: 增量备份导入任务ID，由CreateIncrementalMigration接口返回
        # @type IncrementalMigrationId: String

        attr_accessor :BackupMigrationId, :InstanceId, :BackupFileName, :StatusSet, :Limit, :Offset, :OrderBy, :OrderByType, :IncrementalMigrationId

        def initialize(backupmigrationid=nil, instanceid=nil, backupfilename=nil, statusset=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil, incrementalmigrationid=nil)
          @BackupMigrationId = backupmigrationid
          @InstanceId = instanceid
          @BackupFileName = backupfilename
          @StatusSet = statusset
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
          @IncrementalMigrationId = incrementalmigrationid
        end

        def deserialize(params)
          @BackupMigrationId = params['BackupMigrationId']
          @InstanceId = params['InstanceId']
          @BackupFileName = params['BackupFileName']
          @StatusSet = params['StatusSet']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          @IncrementalMigrationId = params['IncrementalMigrationId']
        end
      end

      # DescribeIncrementalMigration返回参数结构体
      class DescribeIncrementalMigrationResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 增量导入任务总数
        # @type TotalCount: Integer
        # @param IncrementalMigrationSet: 增量导入任务集合
        # @type IncrementalMigrationSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :IncrementalMigrationSet, :RequestId

        def initialize(totalcount=nil, incrementalmigrationset=nil, requestid=nil)
          @TotalCount = totalcount
          @IncrementalMigrationSet = incrementalmigrationset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['IncrementalMigrationSet'].nil?
            @IncrementalMigrationSet = []
            params['IncrementalMigrationSet'].each do |i|
              migration_tmp = Migration.new
              migration_tmp.deserialize(i)
              @IncrementalMigrationSet << migration_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInquiryPriceParameter请求参数结构体
      class DescribeInquiryPriceParameterRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区ID。该参数可以通过调用 DescribeZones 接口的返回值中的Zone字段来获取。
        # @type Zone: String
        # @param Memory: 内存大小，单位：GB
        # @type Memory: Integer
        # @param Storage: 实例容量大小，单位：GB。
        # @type Storage: Integer
        # @param InstanceType: 购买实例的类型 HA-高可用型(包括双机高可用，alwaysOn集群)，RO-只读副本型，SI-单节点型,cvmHA-新版高可用,cvmRO-新版只读
        # @type InstanceType: String
        # @param InstanceChargeType: 计费类型，取值支持 PREPAID，POSTPAID。
        # @type InstanceChargeType: String
        # @param Cpu: 预购买实例的CPU核心数
        # @type Cpu: Integer
        # @param Period: 购买时长，单位：月。取值为1到48，默认为1
        # @type Period: Integer
        # @param GoodsNum: 一次性购买的实例数量。取值1-100，默认取值为1
        # @type GoodsNum: Integer
        # @param DBVersion: sqlserver版本，目前所有支持的版本有：2008R2 (SQL Server 2008 R2 Enterprise)，2012SP3 (SQL Server 2012 Enterprise)，201202 (SQL Server 2012 Standard)，2014SP2 (SQL Server 2014 Enterprise)，201402 (SQL Server 2014 Standard)，2016SP1 (SQL Server 2016 Enterprise)，201602 (SQL Server 2016 Standard)，2017 (SQL Server 2017 Enterprise)，201702 (SQL Server 2017 Standard)，2019 (SQL Server 2019 Enterprise)，201902 (SQL Server 2019 Standard)。每个地域支持售卖的版本不同，可通过DescribeProductConfig接口来拉取每个地域可售卖的版本信息。不填，默认为版本2008R2。
        # @type DBVersion: String
        # @param MachineType: 购买实例的宿主机类型，PM-物理机, CLOUD_PREMIUM-云服务器高性能云盘，CLOUD_SSD-云服务器SSD云盘,
        # CLOUD_HSSD-云服务器加强型SSD云盘，CLOUD_TSSD-云服务器极速型SSD云盘，CLOUD_BSSD-云服务器通用型SSD云盘
        # @type MachineType: String

        attr_accessor :Zone, :Memory, :Storage, :InstanceType, :InstanceChargeType, :Cpu, :Period, :GoodsNum, :DBVersion, :MachineType

        def initialize(zone=nil, memory=nil, storage=nil, instancetype=nil, instancechargetype=nil, cpu=nil, period=nil, goodsnum=nil, dbversion=nil, machinetype=nil)
          @Zone = zone
          @Memory = memory
          @Storage = storage
          @InstanceType = instancetype
          @InstanceChargeType = instancechargetype
          @Cpu = cpu
          @Period = period
          @GoodsNum = goodsnum
          @DBVersion = dbversion
          @MachineType = machinetype
        end

        def deserialize(params)
          @Zone = params['Zone']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @InstanceType = params['InstanceType']
          @InstanceChargeType = params['InstanceChargeType']
          @Cpu = params['Cpu']
          @Period = params['Period']
          @GoodsNum = params['GoodsNum']
          @DBVersion = params['DBVersion']
          @MachineType = params['MachineType']
        end
      end

      # DescribeInquiryPriceParameter返回参数结构体
      class DescribeInquiryPriceParameterResponse < TencentCloud::Common::AbstractModel
        # @param Parameter: 计费参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Parameter: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Parameter, :RequestId

        def initialize(parameter=nil, requestid=nil)
          @Parameter = parameter
          @RequestId = requestid
        end

        def deserialize(params)
          @Parameter = params['Parameter']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceByOrders请求参数结构体
      class DescribeInstanceByOrdersRequest < TencentCloud::Common::AbstractModel
        # @param DealNames: 订单号集合
        # @type DealNames: Array

        attr_accessor :DealNames

        def initialize(dealnames=nil)
          @DealNames = dealnames
        end

        def deserialize(params)
          @DealNames = params['DealNames']
        end
      end

      # DescribeInstanceByOrders返回参数结构体
      class DescribeInstanceByOrdersResponse < TencentCloud::Common::AbstractModel
        # @param DealInstance: 资源ID集合
        # @type DealInstance: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealInstance, :RequestId

        def initialize(dealinstance=nil, requestid=nil)
          @DealInstance = dealinstance
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DealInstance'].nil?
            @DealInstance = []
            params['DealInstance'].each do |i|
              dealinstance_tmp = DealInstance.new
              dealinstance_tmp.deserialize(i)
              @DealInstance << dealinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceParamRecords请求参数结构体
      class DescribeInstanceParamRecordsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：mssql-dj5i29c5n，与云数据库控制台页面中显示的实例 ID 相同，可使用 DescribeDBInstances 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceId: String
        # @param Offset: 分页，页数，默认0
        # @type Offset: Integer
        # @param Limit: 分页，页大小，默认20，最大不超过100
        # @type Limit: Integer

        attr_accessor :InstanceId, :Offset, :Limit

        def initialize(instanceid=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeInstanceParamRecords返回参数结构体
      class DescribeInstanceParamRecordsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录数
        # @type TotalCount: Integer
        # @param Items: 参数修改记录
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
              paramrecord_tmp = ParamRecord.new
              paramrecord_tmp.deserialize(i)
              @Items << paramrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceParams请求参数结构体
      class DescribeInstanceParamsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：mssql-dj5i29c5n，与云数据库控制台页面中显示的实例 ID 相同，可使用 DescribeDBInstances 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceParams返回参数结构体
      class DescribeInstanceParamsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例的参数总数
        # @type TotalCount: Integer
        # @param Items: 参数详情
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
              parameterdetail_tmp = ParameterDetail.new
              parameterdetail_tmp.deserialize(i)
              @Items << parameterdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceTasks请求参数结构体
      class DescribeInstanceTasksRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据库实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Status: 异步任务状态 1-运行中，2-运行成功，3-运行失败
        # @type Status: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer

        attr_accessor :InstanceId, :Limit, :Status, :Offset

        def initialize(instanceid=nil, limit=nil, status=nil, offset=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Status = status
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Status = params['Status']
          @Offset = params['Offset']
        end
      end

      # DescribeInstanceTasks返回参数结构体
      class DescribeInstanceTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 异步任务总条数
        # @type TotalCount: Integer
        # @param InstanceTaskSet: 异步任务信息数组
        # @type InstanceTaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceTaskSet, :RequestId

        def initialize(totalcount=nil, instancetaskset=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceTaskSet = instancetaskset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceTaskSet'].nil?
            @InstanceTaskSet = []
            params['InstanceTaskSet'].each do |i|
              instancetask_tmp = InstanceTask.new
              instancetask_tmp.deserialize(i)
              @InstanceTaskSet << instancetask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceTradeParameter请求参数结构体
      class DescribeInstanceTradeParameterRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 实例可用区，类似ap-guangzhou-1（广州一区）；实例可售卖区域可以通过接口DescribeZones获取
        # @type Zone: String
        # @param Cpu: 实例核心数
        # @type Cpu: Integer
        # @param Memory: 实例内存大小，单位GB
        # @type Memory: Integer
        # @param Storage: 实例磁盘大小，单位GB
        # @type Storage: Integer
        # @param InstanceType: 购买实例的类型 HA-高可用型(包括双机高可用，alwaysOn集群)，RO-只读副本型，SI-单节点型,BI-商业智能服务,cvmHA-新版高可用,cvmRO-新版只读
        # @type InstanceType: String
        # @param MachineType: 购买实例的宿主机磁盘类型,CLOUD_HSSD-云服务器加强型SSD云盘，CLOUD_TSSD-云服务器极速型SSD云盘，CLOUD_BSSD-云服务器通用型SSD云盘
        # @type MachineType: String
        # @param InstanceChargeType: 付费模式，取值支持 PREPAID（预付费），POSTPAID（后付费）。
        # @type InstanceChargeType: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param GoodsNum: 本次购买几个实例，默认值为1。取值不超过10
        # @type GoodsNum: Integer
        # @param DBVersion: sqlserver版本，目前所有支持的版本有：2008R2 (SQL Server 2008 R2 Enterprise)，2012SP3 (SQL Server 2012 Enterprise)，201202 (SQL Server 2012 Standard)，2014SP2 (SQL Server 2014 Enterprise)，201402 (SQL Server 2014 Standard)，2016SP1 (SQL Server 2016 Enterprise)，201602 (SQL Server 2016 Standard)，2017 (SQL Server 2017 Enterprise)，201702 (SQL Server 2017 Standard)，2019 (SQL Server 2019 Enterprise)，201902 (SQL Server 2019 Standard)。每个地域支持售卖的版本不同，可通过DescribeProductConfig接口来拉取每个地域可售卖的版本信息。不填，默认为版本2008R2。
        # @type DBVersion: String
        # @param SubnetId: VPC子网ID，形如subnet-bdoe83fa；SubnetId和VpcId需同时设置或者同时不设置
        # @type SubnetId: String
        # @param VpcId: VPC网络ID，形如vpc-dsp338hz；SubnetId和VpcId需同时设置或者同时不设置
        # @type VpcId: String
        # @param Period: 购买实例周期，默认取值为1，表示一个月。取值不超过48
        # @type Period: Integer
        # @param SecurityGroupList: 安全组列表，填写形如sg-xxx的安全组ID
        # @type SecurityGroupList: Array
        # @param AutoRenewFlag: 自动续费标志：0-正常续费  1-自动续费，默认为1自动续费。只在购买预付费实例时有效。
        # @type AutoRenewFlag: Integer
        # @param Weekly: 可维护时间窗配置，以周为单位，表示周几允许维护，1-7分别代表周一到周末
        # @type Weekly: Array
        # @param StartTime: 可维护时间窗配置，每天可维护的开始时间
        # @type StartTime: String
        # @param Span: 可维护时间窗配置，持续时间，单位：小时
        # @type Span: Integer
        # @param MultiZones: 是否跨可用区部署，默认值为false
        # @type MultiZones: Boolean
        # @param ResourceTags: 新建实例绑定的标签集合
        # @type ResourceTags: Array
        # @param TimeZone: 系统时区，默认：China Standard Time
        # @type TimeZone: String
        # @param Collation: 系统字符集排序规则，默认：Chinese_PRC_CI_AS
        # @type Collation: String

        attr_accessor :Zone, :Cpu, :Memory, :Storage, :InstanceType, :MachineType, :InstanceChargeType, :ProjectId, :GoodsNum, :DBVersion, :SubnetId, :VpcId, :Period, :SecurityGroupList, :AutoRenewFlag, :Weekly, :StartTime, :Span, :MultiZones, :ResourceTags, :TimeZone, :Collation

        def initialize(zone=nil, cpu=nil, memory=nil, storage=nil, instancetype=nil, machinetype=nil, instancechargetype=nil, projectid=nil, goodsnum=nil, dbversion=nil, subnetid=nil, vpcid=nil, period=nil, securitygrouplist=nil, autorenewflag=nil, weekly=nil, starttime=nil, span=nil, multizones=nil, resourcetags=nil, timezone=nil, collation=nil)
          @Zone = zone
          @Cpu = cpu
          @Memory = memory
          @Storage = storage
          @InstanceType = instancetype
          @MachineType = machinetype
          @InstanceChargeType = instancechargetype
          @ProjectId = projectid
          @GoodsNum = goodsnum
          @DBVersion = dbversion
          @SubnetId = subnetid
          @VpcId = vpcid
          @Period = period
          @SecurityGroupList = securitygrouplist
          @AutoRenewFlag = autorenewflag
          @Weekly = weekly
          @StartTime = starttime
          @Span = span
          @MultiZones = multizones
          @ResourceTags = resourcetags
          @TimeZone = timezone
          @Collation = collation
        end

        def deserialize(params)
          @Zone = params['Zone']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @InstanceType = params['InstanceType']
          @MachineType = params['MachineType']
          @InstanceChargeType = params['InstanceChargeType']
          @ProjectId = params['ProjectId']
          @GoodsNum = params['GoodsNum']
          @DBVersion = params['DBVersion']
          @SubnetId = params['SubnetId']
          @VpcId = params['VpcId']
          @Period = params['Period']
          @SecurityGroupList = params['SecurityGroupList']
          @AutoRenewFlag = params['AutoRenewFlag']
          @Weekly = params['Weekly']
          @StartTime = params['StartTime']
          @Span = params['Span']
          @MultiZones = params['MultiZones']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @TimeZone = params['TimeZone']
          @Collation = params['Collation']
        end
      end

      # DescribeInstanceTradeParameter返回参数结构体
      class DescribeInstanceTradeParameterResponse < TencentCloud::Common::AbstractModel
        # @param Parameter: 计费参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Parameter: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Parameter, :RequestId

        def initialize(parameter=nil, requestid=nil)
          @Parameter = parameter
          @RequestId = requestid
        end

        def deserialize(params)
          @Parameter = params['Parameter']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMaintenanceSpan请求参数结构体
      class DescribeMaintenanceSpanRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-k8voqdlz
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeMaintenanceSpan返回参数结构体
      class DescribeMaintenanceSpanResponse < TencentCloud::Common::AbstractModel
        # @param Weekly: 以周为单位，表示周几允许维护，例如：[1,2,3,4,5,6,7]表示周一到周日均为可维护日。
        # @type Weekly: Array
        # @param StartTime: 每天可维护的开始时间，例如：10:24标识可维护时间窗10点24分开始。
        # @type StartTime: String
        # @param Span: 每天可维护的持续时间，单位是h，例如：1 表示从可维护的开始时间起持续1小时。
        # @type Span: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Weekly, :StartTime, :Span, :RequestId

        def initialize(weekly=nil, starttime=nil, span=nil, requestid=nil)
          @Weekly = weekly
          @StartTime = starttime
          @Span = span
          @RequestId = requestid
        end

        def deserialize(params)
          @Weekly = params['Weekly']
          @StartTime = params['StartTime']
          @Span = params['Span']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMigrationDatabases请求参数结构体
      class DescribeMigrationDatabasesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 迁移源实例的ID，格式如：mssql-si2823jyl
        # @type InstanceId: String
        # @param UserName: 迁移源实例用户名
        # @type UserName: String
        # @param Password: 迁移源实例密码
        # @type Password: String

        attr_accessor :InstanceId, :UserName, :Password

        def initialize(instanceid=nil, username=nil, password=nil)
          @InstanceId = instanceid
          @UserName = username
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @Password = params['Password']
        end
      end

      # DescribeMigrationDatabases返回参数结构体
      class DescribeMigrationDatabasesResponse < TencentCloud::Common::AbstractModel
        # @param Amount: 数据库数量
        # @type Amount: Integer
        # @param MigrateDBSet: 数据库名称数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MigrateDBSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Amount, :MigrateDBSet, :RequestId

        def initialize(amount=nil, migratedbset=nil, requestid=nil)
          @Amount = amount
          @MigrateDBSet = migratedbset
          @RequestId = requestid
        end

        def deserialize(params)
          @Amount = params['Amount']
          @MigrateDBSet = params['MigrateDBSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMigrationDetail请求参数结构体
      class DescribeMigrationDetailRequest < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer

        attr_accessor :MigrateId

        def initialize(migrateid=nil)
          @MigrateId = migrateid
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
        end
      end

      # DescribeMigrationDetail返回参数结构体
      class DescribeMigrationDetailResponse < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer
        # @param MigrateName: 迁移任务名称
        # @type MigrateName: String
        # @param AppId: 迁移任务所属的用户ID
        # @type AppId: Integer
        # @param Region: 迁移任务所属的地域
        # @type Region: String
        # @param SourceType: 迁移源的类型 1:TencentDB for SQLServer 2:云服务器自建SQLServer数据库 4:SQLServer备份还原 5:SQLServer备份还原（COS方式）
        # @type SourceType: Integer
        # @param CreateTime: 迁移任务的创建时间
        # @type CreateTime: String
        # @param StartTime: 迁移任务的开始时间
        # @type StartTime: String
        # @param EndTime: 迁移任务的结束时间
        # @type EndTime: String
        # @param Status: 迁移任务的状态（1:初始化,4:迁移中,5.迁移失败,6.迁移成功）
        # @type Status: Integer
        # @param Progress: 迁移任务当前进度
        # @type Progress: Integer
        # @param MigrateType: 迁移类型（1:结构迁移 2:数据迁移 3:增量同步）
        # @type MigrateType: Integer
        # @param Source: 迁移源
        # @type Source: :class:`Tencentcloud::Sqlserver.v20180328.models.MigrateSource`
        # @param Target: 迁移目标
        # @type Target: :class:`Tencentcloud::Sqlserver.v20180328.models.MigrateTarget`
        # @param MigrateDBSet: 迁移DB对象 ，离线迁移（SourceType=4或SourceType=5）不使用。
        # @type MigrateDBSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MigrateId, :MigrateName, :AppId, :Region, :SourceType, :CreateTime, :StartTime, :EndTime, :Status, :Progress, :MigrateType, :Source, :Target, :MigrateDBSet, :RequestId

        def initialize(migrateid=nil, migratename=nil, appid=nil, region=nil, sourcetype=nil, createtime=nil, starttime=nil, endtime=nil, status=nil, progress=nil, migratetype=nil, source=nil, target=nil, migratedbset=nil, requestid=nil)
          @MigrateId = migrateid
          @MigrateName = migratename
          @AppId = appid
          @Region = region
          @SourceType = sourcetype
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @Progress = progress
          @MigrateType = migratetype
          @Source = source
          @Target = target
          @MigrateDBSet = migratedbset
          @RequestId = requestid
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
          @MigrateName = params['MigrateName']
          @AppId = params['AppId']
          @Region = params['Region']
          @SourceType = params['SourceType']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @Progress = params['Progress']
          @MigrateType = params['MigrateType']
          unless params['Source'].nil?
            @Source = MigrateSource.new
            @Source.deserialize(params['Source'])
          end
          unless params['Target'].nil?
            @Target = MigrateTarget.new
            @Target.deserialize(params['Target'])
          end
          unless params['MigrateDBSet'].nil?
            @MigrateDBSet = []
            params['MigrateDBSet'].each do |i|
              migratedb_tmp = MigrateDB.new
              migratedb_tmp.deserialize(i)
              @MigrateDBSet << migratedb_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMigrations请求参数结构体
      class DescribeMigrationsRequest < TencentCloud::Common::AbstractModel
        # @param StatusSet: 状态集合。只要符合集合中某一状态的迁移任务，就会查出来
        # @type StatusSet: Array
        # @param MigrateName: 迁移任务的名称，模糊匹配
        # @type MigrateName: String
        # @param Limit: 分页返回，每页返回的数目，取值为1-100，默认值为100
        # @type Limit: Integer
        # @param Offset: 分页返回，页编号，默认值为第0页
        # @type Offset: Integer
        # @param OrderBy: 查询结果按照关键字排序，可选值为name、createTime、startTime，endTime，status
        # @type OrderBy: String
        # @param OrderByType: 排序方式，可选值为desc、asc
        # @type OrderByType: String

        attr_accessor :StatusSet, :MigrateName, :Limit, :Offset, :OrderBy, :OrderByType

        def initialize(statusset=nil, migratename=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil)
          @StatusSet = statusset
          @MigrateName = migratename
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @StatusSet = params['StatusSet']
          @MigrateName = params['MigrateName']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeMigrations返回参数结构体
      class DescribeMigrationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果的总数
        # @type TotalCount: Integer
        # @param MigrateTaskSet: 查询结果的列表
        # @type MigrateTaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :MigrateTaskSet, :RequestId

        def initialize(totalcount=nil, migratetaskset=nil, requestid=nil)
          @TotalCount = totalcount
          @MigrateTaskSet = migratetaskset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['MigrateTaskSet'].nil?
            @MigrateTaskSet = []
            params['MigrateTaskSet'].each do |i|
              migratetask_tmp = MigrateTask.new
              migratetask_tmp.deserialize(i)
              @MigrateTaskSet << migratetask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrders请求参数结构体
      class DescribeOrdersRequest < TencentCloud::Common::AbstractModel
        # @param DealNames: 订单数组。发货时会返回订单名字，利用该订单名字调用DescribeOrders接口查询发货情况
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
        # @param Deals: 订单信息数组
        # @type Deals: Array
        # @param TotalCount: 返回多少个订单的信息
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Deals, :TotalCount, :RequestId

        def initialize(deals=nil, totalcount=nil, requestid=nil)
          @Deals = deals
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Deals'].nil?
            @Deals = []
            params['Deals'].each do |i|
              dealinfo_tmp = DealInfo.new
              dealinfo_tmp.deserialize(i)
              @Deals << dealinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProductConfig请求参数结构体
      class DescribeProductConfigRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区英文ID，形如ap-guangzhou-1
        # @type Zone: String
        # @param InstanceType: 购买实例的类型 HA-本地盘高可用(包括双机高可用，alwaysOn集群)，RO-本地盘只读副本，SI-云盘版单节点,BI-商业智能服务，cvmHA-云盘版高可用，cvmRO-云盘版只读副本
        # @type InstanceType: String

        attr_accessor :Zone, :InstanceType

        def initialize(zone=nil, instancetype=nil)
          @Zone = zone
          @InstanceType = instancetype
        end

        def deserialize(params)
          @Zone = params['Zone']
          @InstanceType = params['InstanceType']
        end
      end

      # DescribeProductConfig返回参数结构体
      class DescribeProductConfigResponse < TencentCloud::Common::AbstractModel
        # @param SpecInfoList: 规格信息数组
        # @type SpecInfoList: Array
        # @param TotalCount: 返回总共多少条数据
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SpecInfoList, :TotalCount, :RequestId

        def initialize(specinfolist=nil, totalcount=nil, requestid=nil)
          @SpecInfoList = specinfolist
          @TotalCount = totalcount
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
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProductSpec请求参数结构体
      class DescribeProductSpecRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeProductSpec返回参数结构体
      class DescribeProductSpecResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 配置地域分的个数
        # @type TotalCount: Integer
        # @param SpecInfoList: 规格信息数组
        # @type SpecInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SpecInfoList, :RequestId

        def initialize(totalcount=nil, specinfolist=nil, requestid=nil)
          @TotalCount = totalcount
          @SpecInfoList = specinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SpecInfoList'].nil?
            @SpecInfoList = []
            params['SpecInfoList'].each do |i|
              productspec_tmp = ProductSpec.new
              productspec_tmp.deserialize(i)
              @SpecInfoList << productspec_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjectSecurityGroups请求参数结构体
      class DescribeProjectSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID，可通过控制台项目管理中查看
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
        # @param SecurityGroupSet: 安全组详情。
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

      # DescribePublishSubscribe请求参数结构体
      class DescribePublishSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-j8kv137v
        # @type InstanceId: String
        # @param PubOrSubInstanceId: 订阅/发布实例ID，与InstanceId是发布实例还是订阅实例有关；当InstanceId为发布实例时，本字段按照订阅实例ID做筛选；当InstanceId为订阅实例时，本字段按照发布实例ID做筛选；
        # @type PubOrSubInstanceId: String
        # @param PubOrSubInstanceIp: 订阅/发布实例内网IP，与InstanceId是发布实例还是订阅实例有关；当InstanceId为发布实例时，本字段按照订阅实例内网IP做筛选；当InstanceId为订阅实例时，本字段按照发布实例内网IP做筛选；
        # @type PubOrSubInstanceIp: String
        # @param PublishSubscribeId: 订阅发布ID，用于筛选
        # @type PublishSubscribeId: Integer
        # @param PublishSubscribeName: 订阅发布名字，用于筛选
        # @type PublishSubscribeName: String
        # @param PublishDBName: 发布库名字，用于筛选
        # @type PublishDBName: String
        # @param SubscribeDBName: 订阅库名字，用于筛选
        # @type SubscribeDBName: String
        # @param Offset: 分页，页数
        # @type Offset: Integer
        # @param Limit: 分页，页大小
        # @type Limit: Integer

        attr_accessor :InstanceId, :PubOrSubInstanceId, :PubOrSubInstanceIp, :PublishSubscribeId, :PublishSubscribeName, :PublishDBName, :SubscribeDBName, :Offset, :Limit

        def initialize(instanceid=nil, puborsubinstanceid=nil, puborsubinstanceip=nil, publishsubscribeid=nil, publishsubscribename=nil, publishdbname=nil, subscribedbname=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @PubOrSubInstanceId = puborsubinstanceid
          @PubOrSubInstanceIp = puborsubinstanceip
          @PublishSubscribeId = publishsubscribeid
          @PublishSubscribeName = publishsubscribename
          @PublishDBName = publishdbname
          @SubscribeDBName = subscribedbname
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PubOrSubInstanceId = params['PubOrSubInstanceId']
          @PubOrSubInstanceIp = params['PubOrSubInstanceIp']
          @PublishSubscribeId = params['PublishSubscribeId']
          @PublishSubscribeName = params['PublishSubscribeName']
          @PublishDBName = params['PublishDBName']
          @SubscribeDBName = params['SubscribeDBName']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePublishSubscribe返回参数结构体
      class DescribePublishSubscribeResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param PublishSubscribeSet: 发布订阅列表
        # @type PublishSubscribeSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :PublishSubscribeSet, :RequestId

        def initialize(totalcount=nil, publishsubscribeset=nil, requestid=nil)
          @TotalCount = totalcount
          @PublishSubscribeSet = publishsubscribeset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['PublishSubscribeSet'].nil?
            @PublishSubscribeSet = []
            params['PublishSubscribeSet'].each do |i|
              publishsubscribe_tmp = PublishSubscribe.new
              publishsubscribe_tmp.deserialize(i)
              @PublishSubscribeSet << publishsubscribe_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReadOnlyGroupAutoWeight请求参数结构体
      class DescribeReadOnlyGroupAutoWeightRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 主实例ID，格式如：mssql-3l3fgqn7
        # @type InstanceId: String
        # @param ReadOnlyGroupId: 只读组ID，格式如：mssqlro-3l3fgqn7
        # @type ReadOnlyGroupId: String

        attr_accessor :InstanceId, :ReadOnlyGroupId

        def initialize(instanceid=nil, readonlygroupid=nil)
          @InstanceId = instanceid
          @ReadOnlyGroupId = readonlygroupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
        end
      end

      # DescribeReadOnlyGroupAutoWeight返回参数结构体
      class DescribeReadOnlyGroupAutoWeightResponse < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupId: 只读组ID，格式如：mssqlro-3l3fgqn7
        # @type ReadOnlyGroupId: String
        # @param ReadOnlyGroupName: 只读组名称
        # @type ReadOnlyGroupName: String
        # @param RegionId: 只读组的地域ID，与主实例相同
        # @type RegionId: String
        # @param ZoneId: 只读组的可用区，与主实例相同
        # @type ZoneId: String
        # @param IsOfflineDelay: 是否启动超时剔除功能，1-开启，0-不开启
        # @type IsOfflineDelay: Integer
        # @param ReadOnlyMaxDelayTime: 启动超时剔除功能后，使用的超时阈值(秒)
        # @type ReadOnlyMaxDelayTime: Integer
        # @param MinReadOnlyInGroup: 启动超时剔除功能后，至少只读组保留的只读副本数
        # @type MinReadOnlyInGroup: Integer
        # @param Vip: 只读组vip
        # @type Vip: String
        # @param Vport: 只读组vport
        # @type Vport: Integer
        # @param VpcId: 只读组在私有网络ID
        # @type VpcId: String
        # @param SubnetId: 只读组在私有网络子网ID
        # @type SubnetId: String
        # @param ReadOnlyInstanceSet: 只读实例副本集合
        # @type ReadOnlyInstanceSet: Array
        # @param Status: 只读组状态: 1-申请成功运行中，5-申请中
        # @type Status: Integer
        # @param MasterInstanceId: 主实例ID，形如mssql-sgeshe3th
        # @type MasterInstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReadOnlyGroupId, :ReadOnlyGroupName, :RegionId, :ZoneId, :IsOfflineDelay, :ReadOnlyMaxDelayTime, :MinReadOnlyInGroup, :Vip, :Vport, :VpcId, :SubnetId, :ReadOnlyInstanceSet, :Status, :MasterInstanceId, :RequestId

        def initialize(readonlygroupid=nil, readonlygroupname=nil, regionid=nil, zoneid=nil, isofflinedelay=nil, readonlymaxdelaytime=nil, minreadonlyingroup=nil, vip=nil, vport=nil, vpcid=nil, subnetid=nil, readonlyinstanceset=nil, status=nil, masterinstanceid=nil, requestid=nil)
          @ReadOnlyGroupId = readonlygroupid
          @ReadOnlyGroupName = readonlygroupname
          @RegionId = regionid
          @ZoneId = zoneid
          @IsOfflineDelay = isofflinedelay
          @ReadOnlyMaxDelayTime = readonlymaxdelaytime
          @MinReadOnlyInGroup = minreadonlyingroup
          @Vip = vip
          @Vport = vport
          @VpcId = vpcid
          @SubnetId = subnetid
          @ReadOnlyInstanceSet = readonlyinstanceset
          @Status = status
          @MasterInstanceId = masterinstanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          @ReadOnlyGroupName = params['ReadOnlyGroupName']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @IsOfflineDelay = params['IsOfflineDelay']
          @ReadOnlyMaxDelayTime = params['ReadOnlyMaxDelayTime']
          @MinReadOnlyInGroup = params['MinReadOnlyInGroup']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          unless params['ReadOnlyInstanceSet'].nil?
            @ReadOnlyInstanceSet = []
            params['ReadOnlyInstanceSet'].each do |i|
              readonlyinstance_tmp = ReadOnlyInstance.new
              readonlyinstance_tmp.deserialize(i)
              @ReadOnlyInstanceSet << readonlyinstance_tmp
            end
          end
          @Status = params['Status']
          @MasterInstanceId = params['MasterInstanceId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReadOnlyGroupByReadOnlyInstance请求参数结构体
      class DescribeReadOnlyGroupByReadOnlyInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：mssqlro-3l3fgqn7
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeReadOnlyGroupByReadOnlyInstance返回参数结构体
      class DescribeReadOnlyGroupByReadOnlyInstanceResponse < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupId: 只读组ID
        # @type ReadOnlyGroupId: String
        # @param ReadOnlyGroupName: 只读组名称
        # @type ReadOnlyGroupName: String
        # @param RegionId: 只读组的地域ID
        # @type RegionId: String
        # @param ZoneId: 只读组的可用区ID
        # @type ZoneId: String
        # @param IsOfflineDelay: 是否启动超时剔除功能 ,0-不开启剔除功能，1-开启剔除功能
        # @type IsOfflineDelay: Integer
        # @param ReadOnlyMaxDelayTime: 启动超时剔除功能后，使用的超时阈值，单位是秒
        # @type ReadOnlyMaxDelayTime: Integer
        # @param MinReadOnlyInGroup: 启动超时剔除功能后，只读组至少保留的只读副本数
        # @type MinReadOnlyInGroup: Integer
        # @param Vip: 只读组vip
        # @type Vip: String
        # @param Vport: 只读组vport
        # @type Vport: Integer
        # @param VpcId: 只读组在私有网络ID
        # @type VpcId: String
        # @param SubnetId: 只读组在私有网络子网ID
        # @type SubnetId: String
        # @param MasterInstanceId: 主实例ID，形如mssql-sgeshe3th
        # @type MasterInstanceId: String
        # @param MasterRegionId: 主实例的地域ID
        # @type MasterRegionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReadOnlyGroupId, :ReadOnlyGroupName, :RegionId, :ZoneId, :IsOfflineDelay, :ReadOnlyMaxDelayTime, :MinReadOnlyInGroup, :Vip, :Vport, :VpcId, :SubnetId, :MasterInstanceId, :MasterRegionId, :RequestId

        def initialize(readonlygroupid=nil, readonlygroupname=nil, regionid=nil, zoneid=nil, isofflinedelay=nil, readonlymaxdelaytime=nil, minreadonlyingroup=nil, vip=nil, vport=nil, vpcid=nil, subnetid=nil, masterinstanceid=nil, masterregionid=nil, requestid=nil)
          @ReadOnlyGroupId = readonlygroupid
          @ReadOnlyGroupName = readonlygroupname
          @RegionId = regionid
          @ZoneId = zoneid
          @IsOfflineDelay = isofflinedelay
          @ReadOnlyMaxDelayTime = readonlymaxdelaytime
          @MinReadOnlyInGroup = minreadonlyingroup
          @Vip = vip
          @Vport = vport
          @VpcId = vpcid
          @SubnetId = subnetid
          @MasterInstanceId = masterinstanceid
          @MasterRegionId = masterregionid
          @RequestId = requestid
        end

        def deserialize(params)
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          @ReadOnlyGroupName = params['ReadOnlyGroupName']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @IsOfflineDelay = params['IsOfflineDelay']
          @ReadOnlyMaxDelayTime = params['ReadOnlyMaxDelayTime']
          @MinReadOnlyInGroup = params['MinReadOnlyInGroup']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @MasterInstanceId = params['MasterInstanceId']
          @MasterRegionId = params['MasterRegionId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReadOnlyGroupDetails请求参数结构体
      class DescribeReadOnlyGroupDetailsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 主实例ID，格式如：mssql-3l3fgqn7
        # @type InstanceId: String
        # @param ReadOnlyGroupId: 只读组ID，格式如：mssqlrg-3l3fgqn7
        # @type ReadOnlyGroupId: String

        attr_accessor :InstanceId, :ReadOnlyGroupId

        def initialize(instanceid=nil, readonlygroupid=nil)
          @InstanceId = instanceid
          @ReadOnlyGroupId = readonlygroupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
        end
      end

      # DescribeReadOnlyGroupDetails返回参数结构体
      class DescribeReadOnlyGroupDetailsResponse < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupId: 只读组ID
        # @type ReadOnlyGroupId: String
        # @param ReadOnlyGroupName: 只读组名称
        # @type ReadOnlyGroupName: String
        # @param RegionId: 只读组的地域ID，与主实例相同
        # @type RegionId: String
        # @param ZoneId: 只读组的可用区ID，与主实例相同
        # @type ZoneId: String
        # @param IsOfflineDelay: 是否启动超时剔除功能，0-不开启剔除功能，1-开启剔除功能
        # @type IsOfflineDelay: Integer
        # @param ReadOnlyMaxDelayTime: 启动超时剔除功能后，使用的超时阈值
        # @type ReadOnlyMaxDelayTime: Integer
        # @param MinReadOnlyInGroup: 启动超时剔除功能后，至少只读组保留的只读副本数
        # @type MinReadOnlyInGroup: Integer
        # @param Vip: 只读组vip
        # @type Vip: String
        # @param Vport: 只读组vport
        # @type Vport: Integer
        # @param VpcId: 只读组私有网络ID
        # @type VpcId: String
        # @param SubnetId: 只读组私有网络子网ID
        # @type SubnetId: String
        # @param ReadOnlyInstanceSet: 只读实例副本集合
        # @type ReadOnlyInstanceSet: Array
        # @param Status: 只读组状态: 1-申请成功运行中，5-申请中
        # @type Status: Integer
        # @param MasterInstanceId: 主实例ID，形如mssql-sgeshe3th
        # @type MasterInstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReadOnlyGroupId, :ReadOnlyGroupName, :RegionId, :ZoneId, :IsOfflineDelay, :ReadOnlyMaxDelayTime, :MinReadOnlyInGroup, :Vip, :Vport, :VpcId, :SubnetId, :ReadOnlyInstanceSet, :Status, :MasterInstanceId, :RequestId

        def initialize(readonlygroupid=nil, readonlygroupname=nil, regionid=nil, zoneid=nil, isofflinedelay=nil, readonlymaxdelaytime=nil, minreadonlyingroup=nil, vip=nil, vport=nil, vpcid=nil, subnetid=nil, readonlyinstanceset=nil, status=nil, masterinstanceid=nil, requestid=nil)
          @ReadOnlyGroupId = readonlygroupid
          @ReadOnlyGroupName = readonlygroupname
          @RegionId = regionid
          @ZoneId = zoneid
          @IsOfflineDelay = isofflinedelay
          @ReadOnlyMaxDelayTime = readonlymaxdelaytime
          @MinReadOnlyInGroup = minreadonlyingroup
          @Vip = vip
          @Vport = vport
          @VpcId = vpcid
          @SubnetId = subnetid
          @ReadOnlyInstanceSet = readonlyinstanceset
          @Status = status
          @MasterInstanceId = masterinstanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          @ReadOnlyGroupName = params['ReadOnlyGroupName']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @IsOfflineDelay = params['IsOfflineDelay']
          @ReadOnlyMaxDelayTime = params['ReadOnlyMaxDelayTime']
          @MinReadOnlyInGroup = params['MinReadOnlyInGroup']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          unless params['ReadOnlyInstanceSet'].nil?
            @ReadOnlyInstanceSet = []
            params['ReadOnlyInstanceSet'].each do |i|
              readonlyinstance_tmp = ReadOnlyInstance.new
              readonlyinstance_tmp.deserialize(i)
              @ReadOnlyInstanceSet << readonlyinstance_tmp
            end
          end
          @Status = params['Status']
          @MasterInstanceId = params['MasterInstanceId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReadOnlyGroupList请求参数结构体
      class DescribeReadOnlyGroupListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 主实例ID，格式如：mssql-3l3fgqn7
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeReadOnlyGroupList返回参数结构体
      class DescribeReadOnlyGroupListResponse < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupSet: 只读组列表
        # @type ReadOnlyGroupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReadOnlyGroupSet, :RequestId

        def initialize(readonlygroupset=nil, requestid=nil)
          @ReadOnlyGroupSet = readonlygroupset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ReadOnlyGroupSet'].nil?
            @ReadOnlyGroupSet = []
            params['ReadOnlyGroupSet'].each do |i|
              readonlygroup_tmp = ReadOnlyGroup.new
              readonlygroup_tmp.deserialize(i)
              @ReadOnlyGroupSet << readonlygroup_tmp
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
        # @param TotalCount: 返回地域信息总的条目
        # @type TotalCount: Integer
        # @param RegionSet: 地域信息数组
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

      # DescribeRegularBackupPlan请求参数结构体
      class DescribeRegularBackupPlanRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param RegularBackupSaveDays: 定期备份保留天数 [90 - 3650]天，默认365天
        # @type RegularBackupSaveDays: Integer
        # @param RegularBackupStrategy: 定期备份策略 years-每年，quarters-每季度，months-每月，默认months
        # @type RegularBackupStrategy: String
        # @param RegularBackupCounts: 定期备份保留个数，默认1个
        # @type RegularBackupCounts: Integer
        # @param RegularBackupStartTime: 定期备份开始日期，格式-YYYY-MM-DD 默认当前日期
        # @type RegularBackupStartTime: String
        # @param BackupCycle: 常规备份周期
        # @type BackupCycle: Array

        attr_accessor :InstanceId, :RegularBackupSaveDays, :RegularBackupStrategy, :RegularBackupCounts, :RegularBackupStartTime, :BackupCycle

        def initialize(instanceid=nil, regularbackupsavedays=nil, regularbackupstrategy=nil, regularbackupcounts=nil, regularbackupstarttime=nil, backupcycle=nil)
          @InstanceId = instanceid
          @RegularBackupSaveDays = regularbackupsavedays
          @RegularBackupStrategy = regularbackupstrategy
          @RegularBackupCounts = regularbackupcounts
          @RegularBackupStartTime = regularbackupstarttime
          @BackupCycle = backupcycle
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RegularBackupSaveDays = params['RegularBackupSaveDays']
          @RegularBackupStrategy = params['RegularBackupStrategy']
          @RegularBackupCounts = params['RegularBackupCounts']
          @RegularBackupStartTime = params['RegularBackupStartTime']
          @BackupCycle = params['BackupCycle']
        end
      end

      # DescribeRegularBackupPlan返回参数结构体
      class DescribeRegularBackupPlanResponse < TencentCloud::Common::AbstractModel
        # @param SaveModePeriod: 常规备份计划
        # @type SaveModePeriod: Array
        # @param SaveModeRegular: 定期备份计划
        # @type SaveModeRegular: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SaveModePeriod, :SaveModeRegular, :RequestId

        def initialize(savemodeperiod=nil, savemoderegular=nil, requestid=nil)
          @SaveModePeriod = savemodeperiod
          @SaveModeRegular = savemoderegular
          @RequestId = requestid
        end

        def deserialize(params)
          @SaveModePeriod = params['SaveModePeriod']
          @SaveModeRegular = params['SaveModeRegular']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRestoreTask请求参数结构体
      class DescribeRestoreTaskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 源实例ID
        # @type InstanceId: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param RestoreType: 回档方式，0-按照时间点回档，1-按照备份集回档
        # @type RestoreType: Integer
        # @param TargetRegion: 回档的目标实例所在地域
        # @type TargetRegion: String
        # @param TargetType: 回档到目标实例的类型，0-当前实例，1-已有实例，2-全新实例
        # @type TargetType: Integer
        # @param Status: 回档状态，0-初始化，1-运行中，2-成功，3-失败
        # @type Status: Integer
        # @param Offset: 分页返回，每页返回的数目，取值为1-100，默认值为20
        # @type Offset: Integer
        # @param Limit: 分页返回，页编号，默认值为第0页
        # @type Limit: Integer
        # @param OrderBy: 排序字段，restoreTime-回档时间，startTime-任务开始时间，endTime-任务结束时间，默认按照任务开始时间降序
        # @type OrderBy: String
        # @param OrderByType: 排序规则（desc-降序，asc-升序），默认desc
        # @type OrderByType: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :RestoreType, :TargetRegion, :TargetType, :Status, :Offset, :Limit, :OrderBy, :OrderByType

        def initialize(instanceid=nil, starttime=nil, endtime=nil, restoretype=nil, targetregion=nil, targettype=nil, status=nil, offset=nil, limit=nil, orderby=nil, orderbytype=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @RestoreType = restoretype
          @TargetRegion = targetregion
          @TargetType = targettype
          @Status = status
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RestoreType = params['RestoreType']
          @TargetRegion = params['TargetRegion']
          @TargetType = params['TargetType']
          @Status = params['Status']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeRestoreTask返回参数结构体
      class DescribeRestoreTaskResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 回档任务总数量
        # @type TotalCount: Integer
        # @param Tasks: 回档任务记录列表
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Tasks, :RequestId

        def initialize(totalcount=nil, tasks=nil, requestid=nil)
          @TotalCount = totalcount
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              restoretask_tmp = RestoreTask.new
              restoretask_tmp.deserialize(i)
              @Tasks << restoretask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRestoreTimeRange请求参数结构体
      class DescribeRestoreTimeRangeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param TargetInstanceId: 回档的目标实例ID，不填默认回档到原实例
        # @type TargetInstanceId: String

        attr_accessor :InstanceId, :TargetInstanceId

        def initialize(instanceid=nil, targetinstanceid=nil)
          @InstanceId = instanceid
          @TargetInstanceId = targetinstanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TargetInstanceId = params['TargetInstanceId']
        end
      end

      # DescribeRestoreTimeRange返回参数结构体
      class DescribeRestoreTimeRangeResponse < TencentCloud::Common::AbstractModel
        # @param MinTime: 按照时间点可回档的最小时间
        # @type MinTime: String
        # @param MaxTime: 按照时间点可回档的最大时间
        # @type MaxTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MinTime, :MaxTime, :RequestId

        def initialize(mintime=nil, maxtime=nil, requestid=nil)
          @MinTime = mintime
          @MaxTime = maxtime
          @RequestId = requestid
        end

        def deserialize(params)
          @MinTime = params['MinTime']
          @MaxTime = params['MaxTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRollbackTime请求参数结构体
      class DescribeRollbackTimeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param DBs: 需要查询的数据库列表
        # @type DBs: Array

        attr_accessor :InstanceId, :DBs

        def initialize(instanceid=nil, dbs=nil)
          @InstanceId = instanceid
          @DBs = dbs
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DBs = params['DBs']
        end
      end

      # DescribeRollbackTime返回参数结构体
      class DescribeRollbackTimeResponse < TencentCloud::Common::AbstractModel
        # @param Details: 数据库可回档实例信息
        # @type Details: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Details, :RequestId

        def initialize(details=nil, requestid=nil)
          @Details = details
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              dbrollbacktimeinfo_tmp = DbRollbackTimeInfo.new
              dbrollbacktimeinfo_tmp.deserialize(i)
              @Details << dbrollbacktimeinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowlogs请求参数结构体
      class DescribeSlowlogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-k8voqdlz
        # @type InstanceId: String
        # @param StartTime: 开始时间(yyyy-MM-dd HH:mm:ss)
        # @type StartTime: String
        # @param EndTime: 结束时间(yyyy-MM-dd HH:mm:ss)
        # @type EndTime: String
        # @param Limit: 分页返回，每页返回的数目，取值为1-100，默认值为20
        # @type Limit: Integer
        # @param Offset: 分页返回，页编号，默认值为第0页
        # @type Offset: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :Limit, :Offset

        def initialize(instanceid=nil, starttime=nil, endtime=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeSlowlogs返回参数结构体
      class DescribeSlowlogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
        # @type TotalCount: Integer
        # @param Slowlogs: 慢查询日志信息列表
        # @type Slowlogs: Array
        # @param SlowLogs: 慢查询日志信息列表
        # @type SlowLogs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Slowlogs, :SlowLogs, :RequestId
        extend Gem::Deprecate
        deprecate :Slowlogs, :none, 2024, 7
        deprecate :Slowlogs=, :none, 2024, 7

        def initialize(totalcount=nil, slowlogs=nil, requestid=nil)
          @TotalCount = totalcount
          @SlowLogs = slowlogs
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SlowLogs'].nil?
            @SlowLogs = []
            params['SlowLogs'].each do |i|
              slowlog_tmp = SlowLog.new
              slowlog_tmp.deserialize(i)
              @SlowLogs << slowlog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpecSellStatus请求参数结构体
      class DescribeSpecSellStatusRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区英文ID，形如ap-guangzhou-3
        # @type Zone: String
        # @param SpecIdSet: 实例规格ID，可通过DescribeProductConfig接口获取。
        # @type SpecIdSet: Array
        # @param DBVersion: 数据库版本信息，可通过DescribeProductConfig接口获取。
        # @type DBVersion: String
        # @param Pid: 产品ID，可通过DescribeProductConfig接口获取。
        # @type Pid: Integer
        # @param PayMode: 付费模式，POST-按量计费 PRE-包年包月
        # @type PayMode: String
        # @param Currency: 付费模式，CNY-人民币 USD-美元
        # @type Currency: String

        attr_accessor :Zone, :SpecIdSet, :DBVersion, :Pid, :PayMode, :Currency

        def initialize(zone=nil, specidset=nil, dbversion=nil, pid=nil, paymode=nil, currency=nil)
          @Zone = zone
          @SpecIdSet = specidset
          @DBVersion = dbversion
          @Pid = pid
          @PayMode = paymode
          @Currency = currency
        end

        def deserialize(params)
          @Zone = params['Zone']
          @SpecIdSet = params['SpecIdSet']
          @DBVersion = params['DBVersion']
          @Pid = params['Pid']
          @PayMode = params['PayMode']
          @Currency = params['Currency']
        end
      end

      # DescribeSpecSellStatus返回参数结构体
      class DescribeSpecSellStatusResponse < TencentCloud::Common::AbstractModel
        # @param DescribeSpecSellStatusSet: 规格在不同地域状态集合
        # @type DescribeSpecSellStatusSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DescribeSpecSellStatusSet, :RequestId

        def initialize(describespecsellstatusset=nil, requestid=nil)
          @DescribeSpecSellStatusSet = describespecsellstatusset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DescribeSpecSellStatusSet'].nil?
            @DescribeSpecSellStatusSet = []
            params['DescribeSpecSellStatusSet'].each do |i|
              specsellstatus_tmp = SpecSellStatus.new
              specsellstatus_tmp.deserialize(i)
              @DescribeSpecSellStatusSet << specsellstatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUpgradeInstanceCheck请求参数结构体
      class DescribeUpgradeInstanceCheckRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据库实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param Cpu: 实例变配后的CPU核心数，不填则不修改
        # @type Cpu: Integer
        # @param Memory: 实例变配后内存大小，单位GB，不填则不修改
        # @type Memory: Integer
        # @param Storage: 实例变配后磁盘大小，单位GB，不填则不修改
        # @type Storage: Integer
        # @param DBVersion: 实例版本，不填则不修改
        # @type DBVersion: String
        # @param HAType: 实例变配后的类型，可选值：CLUSTER-集群，不填则不修改
        # @type HAType: String
        # @param MultiZones: 实例变配后的跨可用区类型，可选值： SameZones-修改为同可用区 MultiZones-修改为跨可用区，不填则不修改
        # @type MultiZones: String

        attr_accessor :InstanceId, :Cpu, :Memory, :Storage, :DBVersion, :HAType, :MultiZones

        def initialize(instanceid=nil, cpu=nil, memory=nil, storage=nil, dbversion=nil, hatype=nil, multizones=nil)
          @InstanceId = instanceid
          @Cpu = cpu
          @Memory = memory
          @Storage = storage
          @DBVersion = dbversion
          @HAType = hatype
          @MultiZones = multizones
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @DBVersion = params['DBVersion']
          @HAType = params['HAType']
          @MultiZones = params['MultiZones']
        end
      end

      # DescribeUpgradeInstanceCheck返回参数结构体
      class DescribeUpgradeInstanceCheckResponse < TencentCloud::Common::AbstractModel
        # @param IsAffect: 本变配是否对实例有影响，0-没有影响 1-有影响
        # @type IsAffect: Integer
        # @param Passed: 本变配是否可以执行 0-不通过，不能变配 1-通过，可以变配
        # @type Passed: Integer
        # @param ModifyMode: 本变配是升配还是降配，down-降配 up-升配
        # @type ModifyMode: String
        # @param CheckItems: 检查项列表
        # @type CheckItems: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsAffect, :Passed, :ModifyMode, :CheckItems, :RequestId

        def initialize(isaffect=nil, passed=nil, modifymode=nil, checkitems=nil, requestid=nil)
          @IsAffect = isaffect
          @Passed = passed
          @ModifyMode = modifymode
          @CheckItems = checkitems
          @RequestId = requestid
        end

        def deserialize(params)
          @IsAffect = params['IsAffect']
          @Passed = params['Passed']
          @ModifyMode = params['ModifyMode']
          unless params['CheckItems'].nil?
            @CheckItems = []
            params['CheckItems'].each do |i|
              checkitem_tmp = CheckItem.new
              checkitem_tmp.deserialize(i)
              @CheckItems << checkitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUploadBackupInfo请求参数结构体
      class DescribeUploadBackupInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 导入目标实例ID
        # @type InstanceId: String
        # @param BackupMigrationId: 备份导入任务ID，由CreateBackupMigration接口返回
        # @type BackupMigrationId: String

        attr_accessor :InstanceId, :BackupMigrationId

        def initialize(instanceid=nil, backupmigrationid=nil)
          @InstanceId = instanceid
          @BackupMigrationId = backupmigrationid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMigrationId = params['BackupMigrationId']
        end
      end

      # DescribeUploadBackupInfo返回参数结构体
      class DescribeUploadBackupInfoResponse < TencentCloud::Common::AbstractModel
        # @param BucketName: 存储桶名称
        # @type BucketName: String
        # @param Region: 存储桶地域信息
        # @type Region: String
        # @param Path: 存储路径
        # @type Path: String
        # @param TmpSecretId: 临时密钥ID
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时密钥Key
        # @type TmpSecretKey: String
        # @param XCosSecurityToken: 临时密钥Token
        # @type XCosSecurityToken: String
        # @param StartTime: 临时密钥开始时间
        # @type StartTime: String
        # @param ExpiredTime: 临时密钥到期时间
        # @type ExpiredTime: String
        # @param CosSecurityToken: 临时密钥Token
        # @type CosSecurityToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BucketName, :Region, :Path, :TmpSecretId, :TmpSecretKey, :XCosSecurityToken, :StartTime, :ExpiredTime, :CosSecurityToken, :RequestId
        extend Gem::Deprecate
        deprecate :XCosSecurityToken, :none, 2024, 7
        deprecate :XCosSecurityToken=, :none, 2024, 7

        def initialize(bucketname=nil, region=nil, path=nil, tmpsecretid=nil, tmpsecretkey=nil, xcossecuritytoken=nil, starttime=nil, expiredtime=nil, cossecuritytoken=nil, requestid=nil)
          @BucketName = bucketname
          @Region = region
          @Path = path
          @TmpSecretId = tmpsecretid
          @TmpSecretKey = tmpsecretkey
          @XCosSecurityToken = xcossecuritytoken
          @StartTime = starttime
          @ExpiredTime = expiredtime
          @CosSecurityToken = cossecuritytoken
          @RequestId = requestid
        end

        def deserialize(params)
          @BucketName = params['BucketName']
          @Region = params['Region']
          @Path = params['Path']
          @TmpSecretId = params['TmpSecretId']
          @TmpSecretKey = params['TmpSecretKey']
          @XCosSecurityToken = params['XCosSecurityToken']
          @StartTime = params['StartTime']
          @ExpiredTime = params['ExpiredTime']
          @CosSecurityToken = params['CosSecurityToken']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUploadIncrementalInfo请求参数结构体
      class DescribeUploadIncrementalInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 导入目标实例ID
        # @type InstanceId: String
        # @param BackupMigrationId: 备份导入任务ID，由CreateBackupMigration接口返回
        # @type BackupMigrationId: String
        # @param IncrementalMigrationId: 增量导入任务ID
        # @type IncrementalMigrationId: String

        attr_accessor :InstanceId, :BackupMigrationId, :IncrementalMigrationId

        def initialize(instanceid=nil, backupmigrationid=nil, incrementalmigrationid=nil)
          @InstanceId = instanceid
          @BackupMigrationId = backupmigrationid
          @IncrementalMigrationId = incrementalmigrationid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMigrationId = params['BackupMigrationId']
          @IncrementalMigrationId = params['IncrementalMigrationId']
        end
      end

      # DescribeUploadIncrementalInfo返回参数结构体
      class DescribeUploadIncrementalInfoResponse < TencentCloud::Common::AbstractModel
        # @param BucketName: 存储桶名称
        # @type BucketName: String
        # @param Region: 存储桶地域信息
        # @type Region: String
        # @param Path: 存储路径
        # @type Path: String
        # @param TmpSecretId: 临时密钥ID
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时密钥Key
        # @type TmpSecretKey: String
        # @param XCosSecurityToken: 临时密钥Token
        # @type XCosSecurityToken: String
        # @param StartTime: 临时密钥开始时间
        # @type StartTime: String
        # @param ExpiredTime: 临时密钥到期时间
        # @type ExpiredTime: String
        # @param CosSecurityToken: 临时密钥Token
        # @type CosSecurityToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BucketName, :Region, :Path, :TmpSecretId, :TmpSecretKey, :XCosSecurityToken, :StartTime, :ExpiredTime, :CosSecurityToken, :RequestId
        extend Gem::Deprecate
        deprecate :XCosSecurityToken, :none, 2024, 7
        deprecate :XCosSecurityToken=, :none, 2024, 7

        def initialize(bucketname=nil, region=nil, path=nil, tmpsecretid=nil, tmpsecretkey=nil, xcossecuritytoken=nil, starttime=nil, expiredtime=nil, cossecuritytoken=nil, requestid=nil)
          @BucketName = bucketname
          @Region = region
          @Path = path
          @TmpSecretId = tmpsecretid
          @TmpSecretKey = tmpsecretkey
          @XCosSecurityToken = xcossecuritytoken
          @StartTime = starttime
          @ExpiredTime = expiredtime
          @CosSecurityToken = cossecuritytoken
          @RequestId = requestid
        end

        def deserialize(params)
          @BucketName = params['BucketName']
          @Region = params['Region']
          @Path = params['Path']
          @TmpSecretId = params['TmpSecretId']
          @TmpSecretKey = params['TmpSecretKey']
          @XCosSecurityToken = params['XCosSecurityToken']
          @StartTime = params['StartTime']
          @ExpiredTime = params['ExpiredTime']
          @CosSecurityToken = params['CosSecurityToken']
          @RequestId = params['RequestId']
        end
      end

      # DescribeXEvents请求参数结构体
      class DescribeXEventsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param EventType: 事件类型，slow-慢SQL事件，blocked-阻塞事件，deadlock-死锁事件
        # @type EventType: String
        # @param StartTime: 扩展文件生成开始时间(yyyy-MM-dd HH:mm:ss)
        # @type StartTime: String
        # @param EndTime: 扩展文件生成结束时间(yyyy-MM-dd HH:mm:ss)
        # @type EndTime: String
        # @param Offset: 分页返回，页编号，默认值为第0页
        # @type Offset: Integer
        # @param Limit: 分页返回，每页返回的数目，取值为1~100，默认值为20
        # @type Limit: Integer

        attr_accessor :InstanceId, :EventType, :StartTime, :EndTime, :Offset, :Limit

        def initialize(instanceid=nil, eventtype=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @EventType = eventtype
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @EventType = params['EventType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeXEvents返回参数结构体
      class DescribeXEventsResponse < TencentCloud::Common::AbstractModel
        # @param Events: 扩展事件列表
        # @type Events: Array
        # @param TotalCount: 扩展事件总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Events, :TotalCount, :RequestId

        def initialize(events=nil, totalcount=nil, requestid=nil)
          @Events = events
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              events_tmp = Events.new
              events_tmp.deserialize(i)
              @Events << events_tmp
            end
          end
          @TotalCount = params['TotalCount']
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
        # @param TotalCount: 返回多少个可用区信息
        # @type TotalCount: Integer
        # @param ZoneSet: 可用区数组
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

      # DisassociateSecurityGroups请求参数结构体
      class DisassociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组ID。
        # @type SecurityGroupId: String
        # @param InstanceIdSet: 实例ID 列表，一个或者多个实例ID组成的数组。多个实例必须是同一个地域，同一个可用区，同一个项目下的。
        # @type InstanceIdSet: Array

        attr_accessor :SecurityGroupId, :InstanceIdSet

        def initialize(securitygroupid=nil, instanceidset=nil)
          @SecurityGroupId = securitygroupid
          @InstanceIdSet = instanceidset
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          @InstanceIdSet = params['InstanceIdSet']
        end
      end

      # DisassociateSecurityGroups返回参数结构体
      class DisassociateSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 备机只读信息
      class DrReadableInfo < TencentCloud::Common::AbstractModel
        # @param SlaveStatus: 备机状态，enable-运行中，disable-不可用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlaveStatus: String
        # @param ReadableStatus: 备机可读状态，enable-已开启，disable-已关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadableStatus: String
        # @param Vip: 备机只读vip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip: String
        # @param VPort: 备机只读端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VPort: Integer
        # @param UniqVpcId: 备机所在私有网络ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param UniqSubnetId: 备机所在私有网络子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqSubnetId: String

        attr_accessor :SlaveStatus, :ReadableStatus, :Vip, :VPort, :UniqVpcId, :UniqSubnetId

        def initialize(slavestatus=nil, readablestatus=nil, vip=nil, vport=nil, uniqvpcid=nil, uniqsubnetid=nil)
          @SlaveStatus = slavestatus
          @ReadableStatus = readablestatus
          @Vip = vip
          @VPort = vport
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
        end

        def deserialize(params)
          @SlaveStatus = params['SlaveStatus']
          @ReadableStatus = params['ReadableStatus']
          @Vip = params['Vip']
          @VPort = params['VPort']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
        end
      end

      # 设置实例扩展事件阈值
      class EventConfig < TencentCloud::Common::AbstractModel
        # @param EventType: 事件类型，slow-设置慢SQL阈值，blocked-设置阻塞、死锁阈值
        # @type EventType: String
        # @param Threshold: 阈值，单位毫秒。0表示关闭，大于0表示开启
        # @type Threshold: Integer

        attr_accessor :EventType, :Threshold

        def initialize(eventtype=nil, threshold=nil)
          @EventType = eventtype
          @Threshold = threshold
        end

        def deserialize(params)
          @EventType = params['EventType']
          @Threshold = params['Threshold']
        end
      end

      # 实例扩展事件详情
      class Events < TencentCloud::Common::AbstractModel
        # @param Id: ID
        # @type Id: Integer
        # @param FileName: 扩展事件文件名称
        # @type FileName: String
        # @param Size: 扩展事件文件大小
        # @type Size: Integer
        # @param EventType: 事件类型，slow-慢SQL事件，blocked-阻塞事件，deadlock-死锁事件
        # @type EventType: String
        # @param Status: 事件记录状态，1-成功，2-失败
        # @type Status: Integer
        # @param StartTime: 扩展文件生成开始时间
        # @type StartTime: String
        # @param EndTime: 扩展文件生成开始时间
        # @type EndTime: String
        # @param InternalAddr: 内网下载地址
        # @type InternalAddr: String
        # @param ExternalAddr: 外网下载地址
        # @type ExternalAddr: String

        attr_accessor :Id, :FileName, :Size, :EventType, :Status, :StartTime, :EndTime, :InternalAddr, :ExternalAddr

        def initialize(id=nil, filename=nil, size=nil, eventtype=nil, status=nil, starttime=nil, endtime=nil, internaladdr=nil, externaladdr=nil)
          @Id = id
          @FileName = filename
          @Size = size
          @EventType = eventtype
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
          @InternalAddr = internaladdr
          @ExternalAddr = externaladdr
        end

        def deserialize(params)
          @Id = params['Id']
          @FileName = params['FileName']
          @Size = params['Size']
          @EventType = params['EventType']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @InternalAddr = params['InternalAddr']
          @ExternalAddr = params['ExternalAddr']
        end
      end

      # 允许动作信息
      class FileAction < TencentCloud::Common::AbstractModel
        # @param AllAction: 支持的所有操作，值包括：view(查看列表) remark(修改备注)，deploy(部署)，delete(删除文件)
        # @type AllAction: Array
        # @param AllowedAction: 当前状态允许的操作，AllAction的子集,为空表示禁止所有操作
        # @type AllowedAction: Array

        attr_accessor :AllAction, :AllowedAction

        def initialize(allaction=nil, allowedaction=nil)
          @AllAction = allaction
          @AllowedAction = allowedaction
        end

        def deserialize(params)
          @AllAction = params['AllAction']
          @AllowedAction = params['AllowedAction']
        end
      end

      # InquiryPriceCreateDBInstances请求参数结构体
      class InquiryPriceCreateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区ID。该参数可以通过调用 DescribeZones 接口的返回值中的Zone字段来获取。
        # @type Zone: String
        # @param Memory: 内存大小，单位：GB
        # @type Memory: Integer
        # @param Storage: 实例容量大小，单位：GB。
        # @type Storage: Integer
        # @param InstanceChargeType: 计费类型，取值支持 PREPAID，POSTPAID。
        # @type InstanceChargeType: String
        # @param Period: 购买时长，单位：月。取值为1到48，默认为1
        # @type Period: Integer
        # @param GoodsNum: 一次性购买的实例数量。取值1-100，默认取值为1
        # @type GoodsNum: Integer
        # @param DBVersion: sqlserver版本，目前所有支持的版本有：2008R2 (SQL Server 2008 R2 Enterprise)，2012SP3 (SQL Server 2012 Enterprise)，201202 (SQL Server 2012 Standard)，2014SP2 (SQL Server 2014 Enterprise)，201402 (SQL Server 2014 Standard)，2016SP1 (SQL Server 2016 Enterprise)，201602 (SQL Server 2016 Standard)，2017 (SQL Server 2017 Enterprise)，201702 (SQL Server 2017 Standard)，2019 (SQL Server 2019 Enterprise)，201902 (SQL Server 2019 Standard)。每个地域支持售卖的版本不同，可通过DescribeProductConfig接口来拉取每个地域可售卖的版本信息。不填，默认为版本2008R2。
        # @type DBVersion: String
        # @param Cpu: 预购买实例的CPU核心数
        # @type Cpu: Integer
        # @param InstanceType: 购买实例的类型 HA-高可用型(包括双机高可用，alwaysOn集群)，RO-只读副本型，SI-单节点型,cvmHA-虚拟机双机高可用,cvmRO-虚拟机只读
        # @type InstanceType: String
        # @param MachineType: 购买实例的宿主机类型，PM-物理机, CLOUD_PREMIUM-虚拟机高性能云盘，CLOUD_SSD-虚拟机SSD云盘,
        # CLOUD_HSSD-虚拟机加强型SSD云盘，CLOUD_TSSD-虚拟机极速型SSD云盘，CLOUD_BSSD-虚拟机通用型SSD云盘
        # @type MachineType: String

        attr_accessor :Zone, :Memory, :Storage, :InstanceChargeType, :Period, :GoodsNum, :DBVersion, :Cpu, :InstanceType, :MachineType

        def initialize(zone=nil, memory=nil, storage=nil, instancechargetype=nil, period=nil, goodsnum=nil, dbversion=nil, cpu=nil, instancetype=nil, machinetype=nil)
          @Zone = zone
          @Memory = memory
          @Storage = storage
          @InstanceChargeType = instancechargetype
          @Period = period
          @GoodsNum = goodsnum
          @DBVersion = dbversion
          @Cpu = cpu
          @InstanceType = instancetype
          @MachineType = machinetype
        end

        def deserialize(params)
          @Zone = params['Zone']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @InstanceChargeType = params['InstanceChargeType']
          @Period = params['Period']
          @GoodsNum = params['GoodsNum']
          @DBVersion = params['DBVersion']
          @Cpu = params['Cpu']
          @InstanceType = params['InstanceType']
          @MachineType = params['MachineType']
        end
      end

      # InquiryPriceCreateDBInstances返回参数结构体
      class InquiryPriceCreateDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 未打折前价格，其值除以100表示最终的价格。
        # InstanceChargeType=PREPAID时，单位是"每月"。
        # InstanceChargeType=POSTPAID时，单位是"每小时"。
        # 例如10010，在InstanceChargeType=PREPAID情况下，表示每月100.10元。
        # @type OriginalPrice: Integer
        # @param Price: 实际需要支付的价格，其值除以100表示最终的价格。
        # InstanceChargeType=PREPAID时，单位是"每月"。
        # InstanceChargeType=POSTPAID时，单位是"每小时"。
        # 例如10010，在InstanceChargeType=PREPAID情况下，表示每月100.10元。
        # @type Price: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalPrice, :Price, :RequestId

        def initialize(originalprice=nil, price=nil, requestid=nil)
          @OriginalPrice = originalprice
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalPrice = params['OriginalPrice']
          @Price = params['Price']
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceRenewDBInstance请求参数结构体
      class InquiryPriceRenewDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Period: 续费周期。按月续费最多48个月。默认查询续费一个月的价格
        # @type Period: Integer
        # @param TimeUnit: 续费周期单位。month表示按月续费，当前只支持按月付费查询价格
        # @type TimeUnit: String

        attr_accessor :InstanceId, :Period, :TimeUnit

        def initialize(instanceid=nil, period=nil, timeunit=nil)
          @InstanceId = instanceid
          @Period = period
          @TimeUnit = timeunit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Period = params['Period']
          @TimeUnit = params['TimeUnit']
        end
      end

      # InquiryPriceRenewDBInstance返回参数结构体
      class InquiryPriceRenewDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 未打折的原价，其值除以100表示最终的价格。例如10094表示100.94元
        # @type OriginalPrice: Integer
        # @param Price: 实际需要支付价格，其值除以100表示最终的价格。例如10094表示100.94元
        # @type Price: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalPrice, :Price, :RequestId

        def initialize(originalprice=nil, price=nil, requestid=nil)
          @OriginalPrice = originalprice
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalPrice = params['OriginalPrice']
          @Price = params['Price']
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceUpgradeDBInstance请求参数结构体
      class InquiryPriceUpgradeDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param Memory: 实例升级后的内存大小，单位GB，其值不能比当前实例内存小
        # @type Memory: Integer
        # @param Storage: 实例升级后的磁盘大小，单位GB，其值不能比当前实例磁盘小
        # @type Storage: Integer
        # @param Cpu: 实例升级后的CPU核心数，其值不能比当前实例CPU小
        # @type Cpu: Integer

        attr_accessor :InstanceId, :Memory, :Storage, :Cpu

        def initialize(instanceid=nil, memory=nil, storage=nil, cpu=nil)
          @InstanceId = instanceid
          @Memory = memory
          @Storage = storage
          @Cpu = cpu
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @Cpu = params['Cpu']
        end
      end

      # InquiryPriceUpgradeDBInstance返回参数结构体
      class InquiryPriceUpgradeDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 未打折的原价，其值除以100表示最终的价格。例如10094表示100.94元
        # @type OriginalPrice: Integer
        # @param Price: 实际需要支付价格，其值除以100表示最终的价格。例如10094表示100.94元
        # @type Price: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalPrice, :Price, :RequestId

        def initialize(originalprice=nil, price=nil, requestid=nil)
          @OriginalPrice = originalprice
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalPrice = params['OriginalPrice']
          @Price = params['Price']
          @RequestId = params['RequestId']
        end
      end

      # 实例的数据库信息
      class InstanceDBDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param DBDetails: 数据库信息列表
        # @type DBDetails: Array

        attr_accessor :InstanceId, :DBDetails

        def initialize(instanceid=nil, dbdetails=nil)
          @InstanceId = instanceid
          @DBDetails = dbdetails
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['DBDetails'].nil?
            @DBDetails = []
            params['DBDetails'].each do |i|
              dbdetail_tmp = DBDetail.new
              dbdetail_tmp.deserialize(i)
              @DBDetails << dbdetail_tmp
            end
          end
        end
      end

      # 实例续费状态信息
      class InstanceRenewInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-j8kv137v
        # @type InstanceId: String
        # @param RenewFlag: 实例续费标记。0：正常续费，1：自动续费，2：到期不续
        # @type RenewFlag: Integer

        attr_accessor :InstanceId, :RenewFlag

        def initialize(instanceid=nil, renewflag=nil)
          @InstanceId = instanceid
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RenewFlag = params['RenewFlag']
        end
      end

      # 实例异步任务
      class InstanceTask < TencentCloud::Common::AbstractModel
        # @param Id: 唯一id
        # @type Id: Integer
        # @param Type: Job类型
        # @type Type: Integer
        # @param Status: Job状态
        # @type Status: Integer
        # @param Progress: 进度百分比0~100
        # @type Progress: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param ErrorCode: 错误代码
        # @type ErrorCode: Integer
        # @param Message: 错误信息描述
        # @type Message: String

        attr_accessor :Id, :Type, :Status, :Progress, :StartTime, :EndTime, :ErrorCode, :Message

        def initialize(id=nil, type=nil, status=nil, progress=nil, starttime=nil, endtime=nil, errorcode=nil, message=nil)
          @Id = id
          @Type = type
          @Status = status
          @Progress = progress
          @StartTime = starttime
          @EndTime = endtime
          @ErrorCode = errorcode
          @Message = message
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @Status = params['Status']
          @Progress = params['Progress']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ErrorCode = params['ErrorCode']
          @Message = params['Message']
        end
      end

      # 互通组内实例信息详情
      class InterInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InterVip: 实例互通IP，用于加入互通组后访问
        # @type InterVip: String
        # @param InterPort: 实例互通端口，用于加入互通组后访问
        # @type InterPort: Integer
        # @param Status: 实例互通状态，1 -互通ipprot打开中 2 -互通ipprot已经打开 3 -已经打开互通ip的实例加入到互通组中 4 -已经打开互通ip的实例已加入到互通组 5 -互通ipprot回收中 6 -互通ipprot已回收 7 -已回收的实例从互通组中移除中 8 -已回收的实例从互通组中已经移除
        # @type Status: Integer
        # @param Region: 实例所在地域名称，如 ap-guangzhou
        # @type Region: String
        # @param Zone: 实例所在可用区名称，如 ap-guangzhou-1
        # @type Zone: String
        # @param Version: 实例版本代号
        # @type Version: String
        # @param VersionName: 实例版本
        # @type VersionName: String
        # @param Name: 实例名称
        # @type Name: String
        # @param Vip: 实例访问IP
        # @type Vip: String
        # @param Vport: 实例访问端口
        # @type Vport: Integer

        attr_accessor :InstanceId, :InterVip, :InterPort, :Status, :Region, :Zone, :Version, :VersionName, :Name, :Vip, :Vport

        def initialize(instanceid=nil, intervip=nil, interport=nil, status=nil, region=nil, zone=nil, version=nil, versionname=nil, name=nil, vip=nil, vport=nil)
          @InstanceId = instanceid
          @InterVip = intervip
          @InterPort = interport
          @Status = status
          @Region = region
          @Zone = zone
          @Version = version
          @VersionName = versionname
          @Name = name
          @Vip = vip
          @Vport = vport
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InterVip = params['InterVip']
          @InterPort = params['InterPort']
          @Status = params['Status']
          @Region = params['Region']
          @Zone = params['Zone']
          @Version = params['Version']
          @VersionName = params['VersionName']
          @Name = params['Name']
          @Vip = params['Vip']
          @Vport = params['Vport']
        end
      end

      # 实例开通或者关闭互通组后的状态
      class InterInstanceFlow < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，例如：mssql-sdf32n1d
        # @type InstanceId: String
        # @param FlowId: 实例开通或者关闭互通组的流程ID，FlowId小于0-开通或者关闭失败，反之则成功。
        # @type FlowId: Integer

        attr_accessor :InstanceId, :FlowId

        def initialize(instanceid=nil, flowid=nil)
          @InstanceId = instanceid
          @FlowId = flowid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FlowId = params['FlowId']
        end
      end

      # 需要迁移的DB列表
      class MigrateDB < TencentCloud::Common::AbstractModel
        # @param DBName: 迁移数据库的名称
        # @type DBName: String

        attr_accessor :DBName

        def initialize(dbname=nil)
          @DBName = dbname
        end

        def deserialize(params)
          @DBName = params['DBName']
        end
      end

      # 迁移的进度详情类型
      class MigrateDetail < TencentCloud::Common::AbstractModel
        # @param StepName: 当前环节的名称
        # @type StepName: String
        # @param Progress: 当前环节的进度（单位是%）
        # @type Progress: Integer

        attr_accessor :StepName, :Progress

        def initialize(stepname=nil, progress=nil)
          @StepName = stepname
          @Progress = progress
        end

        def deserialize(params)
          @StepName = params['StepName']
          @Progress = params['Progress']
        end
      end

      # 迁移任务的源类型
      class MigrateSource < TencentCloud::Common::AbstractModel
        # @param InstanceId: 迁移源实例的ID，MigrateType=1(TencentDB for SQLServers)时使用，格式如：mssql-si2823jyl
        # @type InstanceId: String
        # @param CvmId: 迁移源Cvm的ID，MigrateType=2(云服务器自建SQLServer数据库)时使用
        # @type CvmId: String
        # @param VpcId: 迁移源Cvm的Vpc网络标识，MigrateType=2(云服务器自建SQLServer数据库)时使用，格式如：vpc-6ys9ont9
        # @type VpcId: String
        # @param SubnetId: 迁移源Cvm的Vpc下的子网标识，MigrateType=2(云服务器自建SQLServer数据库)时使用，格式如：subnet-h9extioi
        # @type SubnetId: String
        # @param UserName: 用户名，MigrateType=1或MigrateType=2使用
        # @type UserName: String
        # @param Password: 密码，MigrateType=1或MigrateType=2使用
        # @type Password: String
        # @param Ip: 迁移源Cvm自建库的内网IP，MigrateType=2(云服务器自建SQLServer数据库)时使用
        # @type Ip: String
        # @param Port: 迁移源Cvm自建库的端口号，MigrateType=2(云服务器自建SQLServer数据库)时使用
        # @type Port: Integer
        # @param Url: 离线迁移的源备份地址，MigrateType=4或MigrateType=5使用
        # @type Url: Array
        # @param UrlPassword: 离线迁移的源备份密码，MigrateType=4或MigrateType=5使用
        # @type UrlPassword: String

        attr_accessor :InstanceId, :CvmId, :VpcId, :SubnetId, :UserName, :Password, :Ip, :Port, :Url, :UrlPassword

        def initialize(instanceid=nil, cvmid=nil, vpcid=nil, subnetid=nil, username=nil, password=nil, ip=nil, port=nil, url=nil, urlpassword=nil)
          @InstanceId = instanceid
          @CvmId = cvmid
          @VpcId = vpcid
          @SubnetId = subnetid
          @UserName = username
          @Password = password
          @Ip = ip
          @Port = port
          @Url = url
          @UrlPassword = urlpassword
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @CvmId = params['CvmId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @UserName = params['UserName']
          @Password = params['Password']
          @Ip = params['Ip']
          @Port = params['Port']
          @Url = params['Url']
          @UrlPassword = params['UrlPassword']
        end
      end

      # 迁移任务的目标类型
      class MigrateTarget < TencentCloud::Common::AbstractModel
        # @param InstanceId: 迁移目标实例的ID，格式如：mssql-si2823jyl
        # @type InstanceId: String
        # @param UserName: 迁移目标实例的用户名
        # @type UserName: String
        # @param Password: 迁移目标实例的密码
        # @type Password: String

        attr_accessor :InstanceId, :UserName, :Password

        def initialize(instanceid=nil, username=nil, password=nil)
          @InstanceId = instanceid
          @UserName = username
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @Password = params['Password']
        end
      end

      # 查询迁移任务列表类型
      class MigrateTask < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer
        # @param MigrateName: 迁移任务名称
        # @type MigrateName: String
        # @param AppId: 迁移任务所属的用户ID
        # @type AppId: Integer
        # @param Region: 迁移任务所属的地域
        # @type Region: String
        # @param SourceType: 迁移源的类型 1:TencentDB for SQLServer 2:云服务器自建SQLServer数据库 4:SQLServer备份还原 5:SQLServer备份还原（COS方式）
        # @type SourceType: Integer
        # @param CreateTime: 迁移任务的创建时间
        # @type CreateTime: String
        # @param StartTime: 迁移任务的开始时间
        # @type StartTime: String
        # @param EndTime: 迁移任务的结束时间
        # @type EndTime: String
        # @param Status: 迁移任务的状态（1:初始化,4:迁移中,5.迁移失败,6.迁移成功,7已中止,8已删除,9中止中,10完成中,11中止失败,12完成失败）
        # @type Status: Integer
        # @param Message: 信息
        # @type Message: String
        # @param CheckFlag: 是否迁移任务经过检查（0:未校验,1:校验成功,2:校验失败,3:校验中）
        # @type CheckFlag: Integer
        # @param Progress: 迁移任务当前进度（单位%）
        # @type Progress: Integer
        # @param MigrateDetail: 迁移任务进度细节
        # @type MigrateDetail: :class:`Tencentcloud::Sqlserver.v20180328.models.MigrateDetail`

        attr_accessor :MigrateId, :MigrateName, :AppId, :Region, :SourceType, :CreateTime, :StartTime, :EndTime, :Status, :Message, :CheckFlag, :Progress, :MigrateDetail

        def initialize(migrateid=nil, migratename=nil, appid=nil, region=nil, sourcetype=nil, createtime=nil, starttime=nil, endtime=nil, status=nil, message=nil, checkflag=nil, progress=nil, migratedetail=nil)
          @MigrateId = migrateid
          @MigrateName = migratename
          @AppId = appid
          @Region = region
          @SourceType = sourcetype
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @Message = message
          @CheckFlag = checkflag
          @Progress = progress
          @MigrateDetail = migratedetail
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
          @MigrateName = params['MigrateName']
          @AppId = params['AppId']
          @Region = params['Region']
          @SourceType = params['SourceType']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @Message = params['Message']
          @CheckFlag = params['CheckFlag']
          @Progress = params['Progress']
          unless params['MigrateDetail'].nil?
            @MigrateDetail = MigrateDetail.new
            @MigrateDetail.deserialize(params['MigrateDetail'])
          end
        end
      end

      # 冷备迁移导入
      class Migration < TencentCloud::Common::AbstractModel
        # @param MigrationId: 备份导入任务ID 或 增量导入任务ID
        # @type MigrationId: String
        # @param MigrationName: 备份导入名称，增量导入任务该字段为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MigrationName: String
        # @param AppId: 应用ID
        # @type AppId: Integer
        # @param Region: 地域
        # @type Region: String
        # @param InstanceId: 迁移目标实例ID
        # @type InstanceId: String
        # @param RecoveryType: 迁移任务恢复类型
        # @type RecoveryType: String
        # @param UploadType: 备份用户上传类型，COS_URL-备份放在用户的对象存储上，提供URL。COS_UPLOAD-备份放在业务的对象存储上，用户上传
        # @type UploadType: String
        # @param BackupFiles: 备份文件列表，UploadType确定，COS_URL则保存URL，COS_UPLOAD则保存备份名称
        # @type BackupFiles: Array
        # @param Status: 迁移任务状态，2-创建完成，7-全量导入中，8-等待增量，9-导入成功，10-导入失败，12-增量导入中
        # @type Status: Integer
        # @param CreateTime: 迁移任务创建时间
        # @type CreateTime: String
        # @param StartTime: 迁移任务开始时间
        # @type StartTime: String
        # @param EndTime: 迁移任务结束时间
        # @type EndTime: String
        # @param Message: 说明信息
        # @type Message: String
        # @param Detail: 迁移细节
        # @type Detail: :class:`Tencentcloud::Sqlserver.v20180328.models.MigrationDetail`
        # @param Action: 当前状态允许的操作
        # @type Action: :class:`Tencentcloud::Sqlserver.v20180328.models.MigrationAction`
        # @param IsRecovery: 是否是最终恢复，全量导入任务该字段为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsRecovery: String
        # @param DBRename: 重命名的数据库名称集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBRename: Array

        attr_accessor :MigrationId, :MigrationName, :AppId, :Region, :InstanceId, :RecoveryType, :UploadType, :BackupFiles, :Status, :CreateTime, :StartTime, :EndTime, :Message, :Detail, :Action, :IsRecovery, :DBRename

        def initialize(migrationid=nil, migrationname=nil, appid=nil, region=nil, instanceid=nil, recoverytype=nil, uploadtype=nil, backupfiles=nil, status=nil, createtime=nil, starttime=nil, endtime=nil, message=nil, detail=nil, action=nil, isrecovery=nil, dbrename=nil)
          @MigrationId = migrationid
          @MigrationName = migrationname
          @AppId = appid
          @Region = region
          @InstanceId = instanceid
          @RecoveryType = recoverytype
          @UploadType = uploadtype
          @BackupFiles = backupfiles
          @Status = status
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
          @Message = message
          @Detail = detail
          @Action = action
          @IsRecovery = isrecovery
          @DBRename = dbrename
        end

        def deserialize(params)
          @MigrationId = params['MigrationId']
          @MigrationName = params['MigrationName']
          @AppId = params['AppId']
          @Region = params['Region']
          @InstanceId = params['InstanceId']
          @RecoveryType = params['RecoveryType']
          @UploadType = params['UploadType']
          @BackupFiles = params['BackupFiles']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Message = params['Message']
          unless params['Detail'].nil?
            @Detail = MigrationDetail.new
            @Detail.deserialize(params['Detail'])
          end
          unless params['Action'].nil?
            @Action = MigrationAction.new
            @Action.deserialize(params['Action'])
          end
          @IsRecovery = params['IsRecovery']
          unless params['DBRename'].nil?
            @DBRename = []
            params['DBRename'].each do |i|
              dbrenameres_tmp = DBRenameRes.new
              dbrenameres_tmp.deserialize(i)
              @DBRename << dbrenameres_tmp
            end
          end
        end
      end

      # 冷备导入任务允许的操作
      class MigrationAction < TencentCloud::Common::AbstractModel
        # @param AllAction: 支持的所有操作，值包括：view(查看任务) ，modify(修改任务)， start(启动任务)，incremental(创建增量任务)，delete(删除任务)，upload(获取上传权限)。
        # @type AllAction: Array
        # @param AllowedAction: 当前状态允许的操作，AllAction的子集,为空表示禁止所有操作
        # @type AllowedAction: Array

        attr_accessor :AllAction, :AllowedAction

        def initialize(allaction=nil, allowedaction=nil)
          @AllAction = allaction
          @AllowedAction = allowedaction
        end

        def deserialize(params)
          @AllAction = params['AllAction']
          @AllowedAction = params['AllowedAction']
        end
      end

      # 冷备导入任务迁移细节
      class MigrationDetail < TencentCloud::Common::AbstractModel
        # @param StepAll: 总步骤数
        # @type StepAll: Integer
        # @param StepNow: 当前步骤
        # @type StepNow: Integer
        # @param Progress: 总进度,如："30"表示30%
        # @type Progress: Integer
        # @param StepInfo: 步骤信息，null表示还未开始迁移
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepInfo: Array

        attr_accessor :StepAll, :StepNow, :Progress, :StepInfo

        def initialize(stepall=nil, stepnow=nil, progress=nil, stepinfo=nil)
          @StepAll = stepall
          @StepNow = stepnow
          @Progress = progress
          @StepInfo = stepinfo
        end

        def deserialize(params)
          @StepAll = params['StepAll']
          @StepNow = params['StepNow']
          @Progress = params['Progress']
          unless params['StepInfo'].nil?
            @StepInfo = []
            params['StepInfo'].each do |i|
              migrationstep_tmp = MigrationStep.new
              migrationstep_tmp.deserialize(i)
              @StepInfo << migrationstep_tmp
            end
          end
        end
      end

      # 冷备导入任务迁移步骤细节
      class MigrationStep < TencentCloud::Common::AbstractModel
        # @param StepNo: 步骤序列
        # @type StepNo: Integer
        # @param StepName: 步骤展现名称
        # @type StepName: String
        # @param StepId: 英文ID标识
        # @type StepId: String
        # @param Status: 步骤状态:0-默认值,1-成功,2-失败,3-执行中,4-未执行
        # @type Status: Integer

        attr_accessor :StepNo, :StepName, :StepId, :Status

        def initialize(stepno=nil, stepname=nil, stepid=nil, status=nil)
          @StepNo = stepno
          @StepName = stepname
          @StepId = stepid
          @Status = status
        end

        def deserialize(params)
          @StepNo = params['StepNo']
          @StepName = params['StepName']
          @StepId = params['StepId']
          @Status = params['Status']
        end
      end

      # ModifyAccountPrivilege请求参数结构体
      class ModifyAccountPrivilegeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据库实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param Accounts: 账号权限变更信息
        # @type Accounts: Array

        attr_accessor :InstanceId, :Accounts

        def initialize(instanceid=nil, accounts=nil)
          @InstanceId = instanceid
          @Accounts = accounts
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              accountprivilegemodifyinfo_tmp = AccountPrivilegeModifyInfo.new
              accountprivilegemodifyinfo_tmp.deserialize(i)
              @Accounts << accountprivilegemodifyinfo_tmp
            end
          end
        end
      end

      # ModifyAccountPrivilege返回参数结构体
      class ModifyAccountPrivilegeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAccountRemark请求参数结构体
      class ModifyAccountRemarkRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-j8kv137v
        # @type InstanceId: String
        # @param Accounts: 修改备注的账户信息
        # @type Accounts: Array

        attr_accessor :InstanceId, :Accounts

        def initialize(instanceid=nil, accounts=nil)
          @InstanceId = instanceid
          @Accounts = accounts
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              accountremark_tmp = AccountRemark.new
              accountremark_tmp.deserialize(i)
              @Accounts << accountremark_tmp
            end
          end
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

      # ModifyBackupMigration请求参数结构体
      class ModifyBackupMigrationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 导入目标实例ID
        # @type InstanceId: String
        # @param BackupMigrationId: 备份导入任务ID，由CreateBackupMigration接口返回
        # @type BackupMigrationId: String
        # @param MigrationName: 任务名称
        # @type MigrationName: String
        # @param RecoveryType: 迁移任务恢复类型，FULL,FULL_LOG,FULL_DIFF
        # @type RecoveryType: String
        # @param UploadType: COS_URL-备份放在用户的对象存储上，提供URL。COS_UPLOAD-备份放在业务的对象存储上，用户上传
        # @type UploadType: String
        # @param BackupFiles: UploadType是COS_URL时这里时URL，COS_UPLOAD这里填备份文件的名字；只支持1个备份文件，但1个备份文件内可包含多个库
        # @type BackupFiles: Array
        # @param DBRename: 需要重命名的数据库名称集合
        # @type DBRename: Array

        attr_accessor :InstanceId, :BackupMigrationId, :MigrationName, :RecoveryType, :UploadType, :BackupFiles, :DBRename

        def initialize(instanceid=nil, backupmigrationid=nil, migrationname=nil, recoverytype=nil, uploadtype=nil, backupfiles=nil, dbrename=nil)
          @InstanceId = instanceid
          @BackupMigrationId = backupmigrationid
          @MigrationName = migrationname
          @RecoveryType = recoverytype
          @UploadType = uploadtype
          @BackupFiles = backupfiles
          @DBRename = dbrename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMigrationId = params['BackupMigrationId']
          @MigrationName = params['MigrationName']
          @RecoveryType = params['RecoveryType']
          @UploadType = params['UploadType']
          @BackupFiles = params['BackupFiles']
          unless params['DBRename'].nil?
            @DBRename = []
            params['DBRename'].each do |i|
              renamerestoredatabase_tmp = RenameRestoreDatabase.new
              renamerestoredatabase_tmp.deserialize(i)
              @DBRename << renamerestoredatabase_tmp
            end
          end
        end
      end

      # ModifyBackupMigration返回参数结构体
      class ModifyBackupMigrationResponse < TencentCloud::Common::AbstractModel
        # @param BackupMigrationId: 备份导入任务ID
        # @type BackupMigrationId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupMigrationId, :RequestId

        def initialize(backupmigrationid=nil, requestid=nil)
          @BackupMigrationId = backupmigrationid
          @RequestId = requestid
        end

        def deserialize(params)
          @BackupMigrationId = params['BackupMigrationId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyBackupName请求参数结构体
      class ModifyBackupNameRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：mssql-3l3fgqn7
        # @type InstanceId: String
        # @param BackupName: 修改的备份名称
        # @type BackupName: String
        # @param BackupId: 备份ID 可通过 [DescribeBackups](https://cloud.tencent.com/document/product/238/19943)  接口获取。当GroupId为空时，BackupId必填。
        # @type BackupId: Integer
        # @param GroupId: 备份任务组ID，在单库备份文件模式下，可通过[DescribeBackups](https://cloud.tencent.com/document/product/238/19943) 接口获得。
        #  BackupId 和 GroupId 同时存在，按照BackupId进行修改。
        # @type GroupId: String

        attr_accessor :InstanceId, :BackupName, :BackupId, :GroupId

        def initialize(instanceid=nil, backupname=nil, backupid=nil, groupid=nil)
          @InstanceId = instanceid
          @BackupName = backupname
          @BackupId = backupid
          @GroupId = groupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupName = params['BackupName']
          @BackupId = params['BackupId']
          @GroupId = params['GroupId']
        end
      end

      # ModifyBackupName返回参数结构体
      class ModifyBackupNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBackupStrategy请求参数结构体
      class ModifyBackupStrategyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param BackupType: 备份类型，当length(BackupDay) <=7 && length(BackupDay) >=2时，取值为weekly，当length(BackupDay)=1时，取值daily，默认daily
        # @type BackupType: String
        # @param BackupTime: 备份时间点，取值为0-23的整数
        # @type BackupTime: Integer
        # @param BackupDay: BackupType取值为daily时，表示备份间隔天数。当前取值只能为1
        # @type BackupDay: Integer
        # @param BackupModel: 备份模式（必填），master_pkg-主节点上打包备份文件；master_no_pkg-主节点单库备份文件；slave_pkg-从节点上打包备份文件；slave_no_pkg-从节点上单库备份文件，从节点上备份只有在always on容灾模式下支持。
        # @type BackupModel: String
        # @param BackupCycle: BackupType取值为weekly时，表示每周的星期N做备份。（如果数据备份保留时间<7天，则取值[1,2,3,4,5,6,7]。如果数据备份保留时间>=7天，则备份周期取值至少是一周的任意2天）
        # @type BackupCycle: Array
        # @param BackupSaveDays: 数据(日志)备份保留天数（必填），取值[3-1830]天，默认7天
        # @type BackupSaveDays: Integer
        # @param RegularBackupEnable: 定期备份状态 enable-开启，disable-关闭，默认关闭
        # @type RegularBackupEnable: String
        # @param RegularBackupSaveDays: 定期备份保留天数 [90 - 3650]天，默认365天
        # @type RegularBackupSaveDays: Integer
        # @param RegularBackupStrategy: 定期备份策略 years-每年，quarters-每季度，months-每月，默认months
        # @type RegularBackupStrategy: String
        # @param RegularBackupCounts: 定期备份保留个数，默认1个
        # @type RegularBackupCounts: Integer
        # @param RegularBackupStartTime: 定期备份开始日期，格式-YYYY-MM-DD 默认当前日期
        # @type RegularBackupStartTime: String

        attr_accessor :InstanceId, :BackupType, :BackupTime, :BackupDay, :BackupModel, :BackupCycle, :BackupSaveDays, :RegularBackupEnable, :RegularBackupSaveDays, :RegularBackupStrategy, :RegularBackupCounts, :RegularBackupStartTime

        def initialize(instanceid=nil, backuptype=nil, backuptime=nil, backupday=nil, backupmodel=nil, backupcycle=nil, backupsavedays=nil, regularbackupenable=nil, regularbackupsavedays=nil, regularbackupstrategy=nil, regularbackupcounts=nil, regularbackupstarttime=nil)
          @InstanceId = instanceid
          @BackupType = backuptype
          @BackupTime = backuptime
          @BackupDay = backupday
          @BackupModel = backupmodel
          @BackupCycle = backupcycle
          @BackupSaveDays = backupsavedays
          @RegularBackupEnable = regularbackupenable
          @RegularBackupSaveDays = regularbackupsavedays
          @RegularBackupStrategy = regularbackupstrategy
          @RegularBackupCounts = regularbackupcounts
          @RegularBackupStartTime = regularbackupstarttime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupType = params['BackupType']
          @BackupTime = params['BackupTime']
          @BackupDay = params['BackupDay']
          @BackupModel = params['BackupModel']
          @BackupCycle = params['BackupCycle']
          @BackupSaveDays = params['BackupSaveDays']
          @RegularBackupEnable = params['RegularBackupEnable']
          @RegularBackupSaveDays = params['RegularBackupSaveDays']
          @RegularBackupStrategy = params['RegularBackupStrategy']
          @RegularBackupCounts = params['RegularBackupCounts']
          @RegularBackupStartTime = params['RegularBackupStartTime']
        end
      end

      # ModifyBackupStrategy返回参数结构体
      class ModifyBackupStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Errno: 返回错误码
        # @type Errno: Integer
        # @param Msg: 返回错误信息
        # @type Msg: String
        # @param Code: 返回错误码
        # @type Code: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Errno, :Msg, :Code, :RequestId
        extend Gem::Deprecate
        deprecate :Errno, :none, 2024, 7
        deprecate :Errno=, :none, 2024, 7

        def initialize(errno=nil, msg=nil, code=nil, requestid=nil)
          @Errno = errno
          @Msg = msg
          @Code = code
          @RequestId = requestid
        end

        def deserialize(params)
          @Errno = params['Errno']
          @Msg = params['Msg']
          @Code = params['Code']
          @RequestId = params['RequestId']
        end
      end

      # ModifyCloseWanIp请求参数结构体
      class ModifyCloseWanIpRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例资源ID
        # @type InstanceId: String
        # @param RoGroupId: RO只读组Id
        # @type RoGroupId: String

        attr_accessor :InstanceId, :RoGroupId

        def initialize(instanceid=nil, rogroupid=nil)
          @InstanceId = instanceid
          @RoGroupId = rogroupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RoGroupId = params['RoGroupId']
        end
      end

      # ModifyCloseWanIp返回参数结构体
      class ModifyCloseWanIpResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 关闭外网流程Id
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

      # ModifyCrossBackupStrategy请求参数结构体
      class ModifyCrossBackupStrategyRequest < TencentCloud::Common::AbstractModel
        # @param CrossBackupEnabled: 跨地域备份开关(数据备份&日志备份) enable-开启，disable-关闭
        # @type CrossBackupEnabled: String
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param InstanceIdSet: 实例ID列表
        # @type InstanceIdSet: Array
        # @param CrossBackupSaveDays: 跨地域备份保留天数，取值：7~1830，默认7天
        # @type CrossBackupSaveDays: Integer
        # @param CrossBackupRegion: 跨地域备份的目标地域ID，最多两个，最少一个
        # @type CrossBackupRegion: Array
        # @param CleanUpCrossBackup: 是否立即清理跨地域备份(数据备份&日志备份) ，只有在BackupEnabled = disable时有效。1-是，0-否，默认：0
        # @type CleanUpCrossBackup: Integer

        attr_accessor :CrossBackupEnabled, :InstanceId, :InstanceIdSet, :CrossBackupSaveDays, :CrossBackupRegion, :CleanUpCrossBackup

        def initialize(crossbackupenabled=nil, instanceid=nil, instanceidset=nil, crossbackupsavedays=nil, crossbackupregion=nil, cleanupcrossbackup=nil)
          @CrossBackupEnabled = crossbackupenabled
          @InstanceId = instanceid
          @InstanceIdSet = instanceidset
          @CrossBackupSaveDays = crossbackupsavedays
          @CrossBackupRegion = crossbackupregion
          @CleanUpCrossBackup = cleanupcrossbackup
        end

        def deserialize(params)
          @CrossBackupEnabled = params['CrossBackupEnabled']
          @InstanceId = params['InstanceId']
          @InstanceIdSet = params['InstanceIdSet']
          @CrossBackupSaveDays = params['CrossBackupSaveDays']
          @CrossBackupRegion = params['CrossBackupRegion']
          @CleanUpCrossBackup = params['CleanUpCrossBackup']
        end
      end

      # ModifyCrossBackupStrategy返回参数结构体
      class ModifyCrossBackupStrategyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBEncryptAttributes请求参数结构体
      class ModifyDBEncryptAttributesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param DBTDEEncrypt: 开启、关闭数据库TDE加密
        # @type DBTDEEncrypt: Array

        attr_accessor :InstanceId, :DBTDEEncrypt

        def initialize(instanceid=nil, dbtdeencrypt=nil)
          @InstanceId = instanceid
          @DBTDEEncrypt = dbtdeencrypt
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['DBTDEEncrypt'].nil?
            @DBTDEEncrypt = []
            params['DBTDEEncrypt'].each do |i|
              dbtdeencrypt_tmp = DBTDEEncrypt.new
              dbtdeencrypt_tmp.deserialize(i)
              @DBTDEEncrypt << dbtdeencrypt_tmp
            end
          end
        end
      end

      # ModifyDBEncryptAttributes返回参数结构体
      class ModifyDBEncryptAttributesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
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

      # ModifyDBInstanceName请求参数结构体
      class ModifyDBInstanceNameRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据库实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param InstanceName: 新的数据库实例名字
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

      # ModifyDBInstanceNetwork请求参数结构体
      class ModifyDBInstanceNetworkRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param NewVpcId: 新VPC网络Id
        # @type NewVpcId: String
        # @param NewSubnetId: 新子网Id
        # @type NewSubnetId: String
        # @param OldIpRetainTime: 原vip保留时长，单位小时，默认为0，代表立即回收，最大为168小时
        # @type OldIpRetainTime: Integer
        # @param Vip: 指定VIP地址
        # @type Vip: String
        # @param DRNetwork: 目标节点，0-修改主节点网络，1-修改备节点网络，默认取值0
        # @type DRNetwork: Integer

        attr_accessor :InstanceId, :NewVpcId, :NewSubnetId, :OldIpRetainTime, :Vip, :DRNetwork

        def initialize(instanceid=nil, newvpcid=nil, newsubnetid=nil, oldipretaintime=nil, vip=nil, drnetwork=nil)
          @InstanceId = instanceid
          @NewVpcId = newvpcid
          @NewSubnetId = newsubnetid
          @OldIpRetainTime = oldipretaintime
          @Vip = vip
          @DRNetwork = drnetwork
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NewVpcId = params['NewVpcId']
          @NewSubnetId = params['NewSubnetId']
          @OldIpRetainTime = params['OldIpRetainTime']
          @Vip = params['Vip']
          @DRNetwork = params['DRNetwork']
        end
      end

      # ModifyDBInstanceNetwork返回参数结构体
      class ModifyDBInstanceNetworkResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 实例转网流程id，可通过[DescribeFlowStatus](https://cloud.tencent.com/document/product/238/19967)接口查询流程状态
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

      # ModifyDBInstanceNote请求参数结构体
      class ModifyDBInstanceNoteRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据库实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param InstanceNote: 实例备注信息
        # @type InstanceNote: String

        attr_accessor :InstanceId, :InstanceNote

        def initialize(instanceid=nil, instancenote=nil)
          @InstanceId = instanceid
          @InstanceNote = instancenote
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceNote = params['InstanceNote']
        end
      end

      # ModifyDBInstanceNote返回参数结构体
      class ModifyDBInstanceNoteResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceProject请求参数结构体
      class ModifyDBInstanceProjectRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 实例ID数组，形如mssql-j8kv137v
        # @type InstanceIdSet: Array
        # @param ProjectId: 项目ID，为0的话表示默认项目
        # @type ProjectId: Integer

        attr_accessor :InstanceIdSet, :ProjectId

        def initialize(instanceidset=nil, projectid=nil)
          @InstanceIdSet = instanceidset
          @ProjectId = projectid
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @ProjectId = params['ProjectId']
        end
      end

      # ModifyDBInstanceProject返回参数结构体
      class ModifyDBInstanceProjectResponse < TencentCloud::Common::AbstractModel
        # @param Count: 修改成功的实例个数
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

      # ModifyDBInstanceRenewFlag请求参数结构体
      class ModifyDBInstanceRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param RenewFlags: 实例续费状态标记信息
        # @type RenewFlags: Array

        attr_accessor :RenewFlags

        def initialize(renewflags=nil)
          @RenewFlags = renewflags
        end

        def deserialize(params)
          unless params['RenewFlags'].nil?
            @RenewFlags = []
            params['RenewFlags'].each do |i|
              instancerenewinfo_tmp = InstanceRenewInfo.new
              instancerenewinfo_tmp.deserialize(i)
              @RenewFlags << instancerenewinfo_tmp
            end
          end
        end
      end

      # ModifyDBInstanceRenewFlag返回参数结构体
      class ModifyDBInstanceRenewFlagResponse < TencentCloud::Common::AbstractModel
        # @param Count: 修改成功的个数
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

      # ModifyDBInstanceSSL请求参数结构体
      class ModifyDBInstanceSSLRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Type: 操作类型。enable-开启SSL，disable-关闭SSL，renew-更新证书有效期
        # @type Type: String
        # @param WaitSwitch: 操作设置。0-立即执行，1- 维护时间内执行，默认取值0。
        # @type WaitSwitch: Integer

        attr_accessor :InstanceId, :Type, :WaitSwitch

        def initialize(instanceid=nil, type=nil, waitswitch=nil)
          @InstanceId = instanceid
          @Type = type
          @WaitSwitch = waitswitch
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          @WaitSwitch = params['WaitSwitch']
        end
      end

      # ModifyDBInstanceSSL返回参数结构体
      class ModifyDBInstanceSSLResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceSecurityGroups请求参数结构体
      class ModifyDBInstanceSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：mssql-c1nl9rpv 或者 mssqlro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param SecurityGroupIdSet: 要修改的安全组 ID 列表，一个或者多个安全组 ID 组成的数组。
        # @type SecurityGroupIdSet: Array

        attr_accessor :InstanceId, :SecurityGroupIdSet

        def initialize(instanceid=nil, securitygroupidset=nil)
          @InstanceId = instanceid
          @SecurityGroupIdSet = securitygroupidset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SecurityGroupIdSet = params['SecurityGroupIdSet']
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

      # ModifyDBName请求参数结构体
      class ModifyDBNameRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param OldDBName: 旧数据库名
        # @type OldDBName: String
        # @param NewDBName: 新数据库名
        # @type NewDBName: String

        attr_accessor :InstanceId, :OldDBName, :NewDBName

        def initialize(instanceid=nil, olddbname=nil, newdbname=nil)
          @InstanceId = instanceid
          @OldDBName = olddbname
          @NewDBName = newdbname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OldDBName = params['OldDBName']
          @NewDBName = params['NewDBName']
        end
      end

      # ModifyDBName返回参数结构体
      class ModifyDBNameResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
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

      # ModifyDBRemark请求参数结构体
      class ModifyDBRemarkRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-rljoi3bf
        # @type InstanceId: String
        # @param DBRemarks: 数据库名称及备注数组，每个元素包含数据库名和对应的备注
        # @type DBRemarks: Array

        attr_accessor :InstanceId, :DBRemarks

        def initialize(instanceid=nil, dbremarks=nil)
          @InstanceId = instanceid
          @DBRemarks = dbremarks
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['DBRemarks'].nil?
            @DBRemarks = []
            params['DBRemarks'].each do |i|
              dbremark_tmp = DBRemark.new
              dbremark_tmp.deserialize(i)
              @DBRemarks << dbremark_tmp
            end
          end
        end
      end

      # ModifyDBRemark返回参数结构体
      class ModifyDBRemarkResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDReadable请求参数结构体
      class ModifyDReadableRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Type: 操作类型。enable-开启备机只读，disable-关闭备机只读
        # @type Type: String
        # @param VpcId: 备机网络ID，不填默认和主实例保持一致
        # @type VpcId: String
        # @param SubnetId: 备机网络子网ID，不填默认和主实例保持一致
        # @type SubnetId: String
        # @param Vip: 指定的备机只读vip，不填自动分配
        # @type Vip: String

        attr_accessor :InstanceId, :Type, :VpcId, :SubnetId, :Vip

        def initialize(instanceid=nil, type=nil, vpcid=nil, subnetid=nil, vip=nil)
          @InstanceId = instanceid
          @Type = type
          @VpcId = vpcid
          @SubnetId = subnetid
          @Vip = vip
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Vip = params['Vip']
        end
      end

      # ModifyDReadable返回参数结构体
      class ModifyDReadableResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务ID
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

      # 要修改的数据库订阅发布关系集合
      class ModifyDataBaseTuple < TencentCloud::Common::AbstractModel
        # @param DatabaseTuple: 要修改的订阅关系
        # @type DatabaseTuple: :class:`Tencentcloud::Sqlserver.v20180328.models.DatabaseTuple`
        # @param NewDatabaseTuple: 修改后的订阅关系。DeleteDataBasesTuple为false时有效
        # @type NewDatabaseTuple: :class:`Tencentcloud::Sqlserver.v20180328.models.DatabaseTuple`
        # @param DeleteDataBasesTuple: 是否删除订阅关系。此选项为true时，NewDatabaseTuple无效
        # @type DeleteDataBasesTuple: Boolean

        attr_accessor :DatabaseTuple, :NewDatabaseTuple, :DeleteDataBasesTuple

        def initialize(databasetuple=nil, newdatabasetuple=nil, deletedatabasestuple=nil)
          @DatabaseTuple = databasetuple
          @NewDatabaseTuple = newdatabasetuple
          @DeleteDataBasesTuple = deletedatabasestuple
        end

        def deserialize(params)
          unless params['DatabaseTuple'].nil?
            @DatabaseTuple = DatabaseTuple.new
            @DatabaseTuple.deserialize(params['DatabaseTuple'])
          end
          unless params['NewDatabaseTuple'].nil?
            @NewDatabaseTuple = DatabaseTuple.new
            @NewDatabaseTuple.deserialize(params['NewDatabaseTuple'])
          end
          @DeleteDataBasesTuple = params['DeleteDataBasesTuple']
        end
      end

      # ModifyDatabaseCDC请求参数结构体
      class ModifyDatabaseCDCRequest < TencentCloud::Common::AbstractModel
        # @param DBNames: 数据库名数组
        # @type DBNames: Array
        # @param ModifyType: 开启、关闭数据库CDC功能 enable；开启，disable：关闭
        # @type ModifyType: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :DBNames, :ModifyType, :InstanceId

        def initialize(dbnames=nil, modifytype=nil, instanceid=nil)
          @DBNames = dbnames
          @ModifyType = modifytype
          @InstanceId = instanceid
        end

        def deserialize(params)
          @DBNames = params['DBNames']
          @ModifyType = params['ModifyType']
          @InstanceId = params['InstanceId']
        end
      end

      # ModifyDatabaseCDC返回参数结构体
      class ModifyDatabaseCDCResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDatabaseCT请求参数结构体
      class ModifyDatabaseCTRequest < TencentCloud::Common::AbstractModel
        # @param DBNames: 数据库名数组
        # @type DBNames: Array
        # @param ModifyType: 启用、禁用数据库CT功能 enable；启用，disable：禁用
        # @type ModifyType: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ChangeRetentionDay: 启用CT时额外保留天数，默认保留3天，最小3天，最大30天
        # @type ChangeRetentionDay: Integer

        attr_accessor :DBNames, :ModifyType, :InstanceId, :ChangeRetentionDay

        def initialize(dbnames=nil, modifytype=nil, instanceid=nil, changeretentionday=nil)
          @DBNames = dbnames
          @ModifyType = modifytype
          @InstanceId = instanceid
          @ChangeRetentionDay = changeretentionday
        end

        def deserialize(params)
          @DBNames = params['DBNames']
          @ModifyType = params['ModifyType']
          @InstanceId = params['InstanceId']
          @ChangeRetentionDay = params['ChangeRetentionDay']
        end
      end

      # ModifyDatabaseCT返回参数结构体
      class ModifyDatabaseCTResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDatabaseMdf请求参数结构体
      class ModifyDatabaseMdfRequest < TencentCloud::Common::AbstractModel
        # @param DBNames: 数据库名数组
        # @type DBNames: Array
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :DBNames, :InstanceId

        def initialize(dbnames=nil, instanceid=nil)
          @DBNames = dbnames
          @InstanceId = instanceid
        end

        def deserialize(params)
          @DBNames = params['DBNames']
          @InstanceId = params['InstanceId']
        end
      end

      # ModifyDatabaseMdf返回参数结构体
      class ModifyDatabaseMdfResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDatabaseShrinkMDF请求参数结构体
      class ModifyDatabaseShrinkMDFRequest < TencentCloud::Common::AbstractModel
        # @param DBNames: 数据库名数组
        # @type DBNames: Array
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :DBNames, :InstanceId

        def initialize(dbnames=nil, instanceid=nil)
          @DBNames = dbnames
          @InstanceId = instanceid
        end

        def deserialize(params)
          @DBNames = params['DBNames']
          @InstanceId = params['InstanceId']
        end
      end

      # ModifyDatabaseShrinkMDF返回参数结构体
      class ModifyDatabaseShrinkMDFResponse < TencentCloud::Common::AbstractModel
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

      # ModifyIncrementalMigration请求参数结构体
      class ModifyIncrementalMigrationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 导入目标实例ID
        # @type InstanceId: String
        # @param BackupMigrationId: 备份导入任务ID，由CreateBackupMigration接口返回
        # @type BackupMigrationId: String
        # @param IncrementalMigrationId: 增量导入任务ID，由CreateIncrementalMigration接口返回
        # @type IncrementalMigrationId: String
        # @param IsRecovery: 是否需要恢复，NO-不需要，YES-需要，默认不修改增量备份导入任务是否需要恢复的属性。
        # @type IsRecovery: String
        # @param BackupFiles: UploadType是COS_URL时这里时URL，COS_UPLOAD这里填备份文件的名字；只支持1个备份文件，但1个备份文件内可包含多个库
        # @type BackupFiles: Array

        attr_accessor :InstanceId, :BackupMigrationId, :IncrementalMigrationId, :IsRecovery, :BackupFiles

        def initialize(instanceid=nil, backupmigrationid=nil, incrementalmigrationid=nil, isrecovery=nil, backupfiles=nil)
          @InstanceId = instanceid
          @BackupMigrationId = backupmigrationid
          @IncrementalMigrationId = incrementalmigrationid
          @IsRecovery = isrecovery
          @BackupFiles = backupfiles
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMigrationId = params['BackupMigrationId']
          @IncrementalMigrationId = params['IncrementalMigrationId']
          @IsRecovery = params['IsRecovery']
          @BackupFiles = params['BackupFiles']
        end
      end

      # ModifyIncrementalMigration返回参数结构体
      class ModifyIncrementalMigrationResponse < TencentCloud::Common::AbstractModel
        # @param IncrementalMigrationId: 增量备份导入任务ID
        # @type IncrementalMigrationId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IncrementalMigrationId, :RequestId

        def initialize(incrementalmigrationid=nil, requestid=nil)
          @IncrementalMigrationId = incrementalmigrationid
          @RequestId = requestid
        end

        def deserialize(params)
          @IncrementalMigrationId = params['IncrementalMigrationId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyInstanceEncryptAttributes请求参数结构体
      class ModifyInstanceEncryptAttributesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param CertificateAttribution: 证书归属。self-表示使用该账号自身的证书，others-表示引用其他账号的证书，默认取值self。
        # @type CertificateAttribution: String
        # @param QuoteUin: 引用的其他主账号ID，当CertificateAttribution 为others时必填。
        # @type QuoteUin: String

        attr_accessor :InstanceId, :CertificateAttribution, :QuoteUin

        def initialize(instanceid=nil, certificateattribution=nil, quoteuin=nil)
          @InstanceId = instanceid
          @CertificateAttribution = certificateattribution
          @QuoteUin = quoteuin
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @CertificateAttribution = params['CertificateAttribution']
          @QuoteUin = params['QuoteUin']
        end
      end

      # ModifyInstanceEncryptAttributes返回参数结构体
      class ModifyInstanceEncryptAttributesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
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

      # ModifyInstanceParam请求参数结构体
      class ModifyInstanceParamRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例短 ID 列表
        # @type InstanceIds: Array
        # @param ParamList: 要修改的参数列表。每一个元素是 Name 和 CurrentValue 的组合。Name 是参数名，CurrentValue 是要修改的值。<b>注意</b>：如果修改的参数需要<b>重启</b>实例，那么您的实例将会在执行修改时<b>重启</b>。您可以通过DescribeInstanceParams接口查询修改参数时是否会重启实例，以免导致您的实例不符合预期重启。
        # @type ParamList: Array
        # @param WaitSwitch: 执行参数调整任务的方式，默认为 0。支持值包括：0 - 立刻执行，1 - 时间窗执行。
        # @type WaitSwitch: Integer

        attr_accessor :InstanceIds, :ParamList, :WaitSwitch

        def initialize(instanceids=nil, paramlist=nil, waitswitch=nil)
          @InstanceIds = instanceids
          @ParamList = paramlist
          @WaitSwitch = waitswitch
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              parameter_tmp = Parameter.new
              parameter_tmp.deserialize(i)
              @ParamList << parameter_tmp
            end
          end
          @WaitSwitch = params['WaitSwitch']
        end
      end

      # ModifyInstanceParam返回参数结构体
      class ModifyInstanceParamResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMaintenanceSpan请求参数结构体
      class ModifyMaintenanceSpanRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-k8voqdlz
        # @type InstanceId: String
        # @param Weekly: 以周为单位，表示允许周几维护，例如：[1,2,3,4,5,6,7]表示周一到周日均为可维护日，本参数不填，则不修改此值。
        # @type Weekly: Array
        # @param StartTime: 每天可维护的开始时间，例如：10:24标识可维护时间窗10点24分开始，本参数不填，则不修改此值。
        # @type StartTime: String
        # @param Span: 每天可维护的持续时间，单位是h，例如：1 表示从可维护的开始时间起持续1小时，本参数不填，则不修改此值。
        # @type Span: Integer

        attr_accessor :InstanceId, :Weekly, :StartTime, :Span

        def initialize(instanceid=nil, weekly=nil, starttime=nil, span=nil)
          @InstanceId = instanceid
          @Weekly = weekly
          @StartTime = starttime
          @Span = span
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Weekly = params['Weekly']
          @StartTime = params['StartTime']
          @Span = params['Span']
        end
      end

      # ModifyMaintenanceSpan返回参数结构体
      class ModifyMaintenanceSpanResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMigration请求参数结构体
      class ModifyMigrationRequest < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer
        # @param MigrateName: 新的迁移任务的名称，若不填则不修改
        # @type MigrateName: String
        # @param MigrateType: 新的迁移类型（1:结构迁移 2:数据迁移 3:增量同步），若不填则不修改
        # @type MigrateType: Integer
        # @param SourceType: 迁移源的类型 1:TencentDB for SQLServer 2:云服务器自建SQLServer数据库 4:SQLServer备份还原 5:SQLServer备份还原（COS方式），若不填则不修改
        # @type SourceType: Integer
        # @param Source: 迁移源，若不填则不修改
        # @type Source: :class:`Tencentcloud::Sqlserver.v20180328.models.MigrateSource`
        # @param Target: 迁移目标，若不填则不修改
        # @type Target: :class:`Tencentcloud::Sqlserver.v20180328.models.MigrateTarget`
        # @param MigrateDBSet: 迁移DB对象 ，离线迁移（SourceType=4或SourceType=5）不使用，若不填则不修改
        # @type MigrateDBSet: Array

        attr_accessor :MigrateId, :MigrateName, :MigrateType, :SourceType, :Source, :Target, :MigrateDBSet

        def initialize(migrateid=nil, migratename=nil, migratetype=nil, sourcetype=nil, source=nil, target=nil, migratedbset=nil)
          @MigrateId = migrateid
          @MigrateName = migratename
          @MigrateType = migratetype
          @SourceType = sourcetype
          @Source = source
          @Target = target
          @MigrateDBSet = migratedbset
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
          @MigrateName = params['MigrateName']
          @MigrateType = params['MigrateType']
          @SourceType = params['SourceType']
          unless params['Source'].nil?
            @Source = MigrateSource.new
            @Source.deserialize(params['Source'])
          end
          unless params['Target'].nil?
            @Target = MigrateTarget.new
            @Target.deserialize(params['Target'])
          end
          unless params['MigrateDBSet'].nil?
            @MigrateDBSet = []
            params['MigrateDBSet'].each do |i|
              migratedb_tmp = MigrateDB.new
              migratedb_tmp.deserialize(i)
              @MigrateDBSet << migratedb_tmp
            end
          end
        end
      end

      # ModifyMigration返回参数结构体
      class ModifyMigrationResponse < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MigrateId, :RequestId

        def initialize(migrateid=nil, requestid=nil)
          @MigrateId = migrateid
          @RequestId = requestid
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyOpenWanIp请求参数结构体
      class ModifyOpenWanIpRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例资源ID
        # @type InstanceId: String
        # @param RoGroupId: RO只读组Id
        # @type RoGroupId: String

        attr_accessor :InstanceId, :RoGroupId

        def initialize(instanceid=nil, rogroupid=nil)
          @InstanceId = instanceid
          @RoGroupId = rogroupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RoGroupId = params['RoGroupId']
        end
      end

      # ModifyOpenWanIp返回参数结构体
      class ModifyOpenWanIpResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 开通外网流程Id
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

      # ModifyPublishSubscribeName请求参数结构体
      class ModifyPublishSubscribeNameRequest < TencentCloud::Common::AbstractModel
        # @param PublishSubscribeId: 发布订阅ID
        # @type PublishSubscribeId: Integer
        # @param PublishSubscribeName: 待修改的发布订阅名称
        # @type PublishSubscribeName: String

        attr_accessor :PublishSubscribeId, :PublishSubscribeName

        def initialize(publishsubscribeid=nil, publishsubscribename=nil)
          @PublishSubscribeId = publishsubscribeid
          @PublishSubscribeName = publishsubscribename
        end

        def deserialize(params)
          @PublishSubscribeId = params['PublishSubscribeId']
          @PublishSubscribeName = params['PublishSubscribeName']
        end
      end

      # ModifyPublishSubscribeName返回参数结构体
      class ModifyPublishSubscribeNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPublishSubscribe请求参数结构体
      class ModifyPublishSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，例如：mssql-dg32dcv
        # @type InstanceId: String
        # @param PublishSubscribeId: 发布订阅ID
        # @type PublishSubscribeId: Integer
        # @param DatabaseTupleSet: 修改的数据库订阅发布关系集合
        # @type DatabaseTupleSet: Array

        attr_accessor :InstanceId, :PublishSubscribeId, :DatabaseTupleSet

        def initialize(instanceid=nil, publishsubscribeid=nil, databasetupleset=nil)
          @InstanceId = instanceid
          @PublishSubscribeId = publishsubscribeid
          @DatabaseTupleSet = databasetupleset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PublishSubscribeId = params['PublishSubscribeId']
          unless params['DatabaseTupleSet'].nil?
            @DatabaseTupleSet = []
            params['DatabaseTupleSet'].each do |i|
              modifydatabasetuple_tmp = ModifyDataBaseTuple.new
              modifydatabasetuple_tmp.deserialize(i)
              @DatabaseTupleSet << modifydatabasetuple_tmp
            end
          end
        end
      end

      # ModifyPublishSubscribe返回参数结构体
      class ModifyPublishSubscribeResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流id
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

      # ModifyReadOnlyGroupDetails请求参数结构体
      class ModifyReadOnlyGroupDetailsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 主实例ID，格式如：mssql-3l3fgqn7
        # @type InstanceId: String
        # @param ReadOnlyGroupId: 只读组ID
        # @type ReadOnlyGroupId: String
        # @param ReadOnlyGroupName: 只读组名称，不填此参数，则不修改
        # @type ReadOnlyGroupName: String
        # @param IsOfflineDelay: 是否启动超时剔除功能,0-不开启剔除功能，1-开启剔除功能，不填此参数，则不修改
        # @type IsOfflineDelay: Integer
        # @param ReadOnlyMaxDelayTime: 启动超时剔除功能后，使用的超时阈值，不填此参数，则不修改
        # @type ReadOnlyMaxDelayTime: Integer
        # @param MinReadOnlyInGroup: 启动超时剔除功能后，只读组至少保留的只读副本数，不填此参数，则不修改
        # @type MinReadOnlyInGroup: Integer
        # @param WeightPairs: 只读组实例权重修改集合，不填此参数，则不修改
        # @type WeightPairs: Array
        # @param AutoWeight: 0-用户自定义权重（根据WeightPairs调整）,1-系统自动分配权重(WeightPairs无效)， 默认为0
        # @type AutoWeight: Integer
        # @param BalanceWeight: 0-不重新均衡负载，1-重新均衡负载，默认为0
        # @type BalanceWeight: Integer

        attr_accessor :InstanceId, :ReadOnlyGroupId, :ReadOnlyGroupName, :IsOfflineDelay, :ReadOnlyMaxDelayTime, :MinReadOnlyInGroup, :WeightPairs, :AutoWeight, :BalanceWeight

        def initialize(instanceid=nil, readonlygroupid=nil, readonlygroupname=nil, isofflinedelay=nil, readonlymaxdelaytime=nil, minreadonlyingroup=nil, weightpairs=nil, autoweight=nil, balanceweight=nil)
          @InstanceId = instanceid
          @ReadOnlyGroupId = readonlygroupid
          @ReadOnlyGroupName = readonlygroupname
          @IsOfflineDelay = isofflinedelay
          @ReadOnlyMaxDelayTime = readonlymaxdelaytime
          @MinReadOnlyInGroup = minreadonlyingroup
          @WeightPairs = weightpairs
          @AutoWeight = autoweight
          @BalanceWeight = balanceweight
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          @ReadOnlyGroupName = params['ReadOnlyGroupName']
          @IsOfflineDelay = params['IsOfflineDelay']
          @ReadOnlyMaxDelayTime = params['ReadOnlyMaxDelayTime']
          @MinReadOnlyInGroup = params['MinReadOnlyInGroup']
          unless params['WeightPairs'].nil?
            @WeightPairs = []
            params['WeightPairs'].each do |i|
              readonlyinstanceweightpair_tmp = ReadOnlyInstanceWeightPair.new
              readonlyinstanceweightpair_tmp.deserialize(i)
              @WeightPairs << readonlyinstanceweightpair_tmp
            end
          end
          @AutoWeight = params['AutoWeight']
          @BalanceWeight = params['BalanceWeight']
        end
      end

      # ModifyReadOnlyGroupDetails返回参数结构体
      class ModifyReadOnlyGroupDetailsResponse < TencentCloud::Common::AbstractModel
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

      # 用于返回实例存在的未回收的ip数量
      class OldVip < TencentCloud::Common::AbstractModel
        # @param Vip: 未回收的旧ip
        # @type Vip: String
        # @param RecycleTime: ip回收时间
        # @type RecycleTime: String
        # @param OldIpRetainTime: 旧IP保留时间小时数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldIpRetainTime: Integer

        attr_accessor :Vip, :RecycleTime, :OldIpRetainTime

        def initialize(vip=nil, recycletime=nil, oldipretaintime=nil)
          @Vip = vip
          @RecycleTime = recycletime
          @OldIpRetainTime = oldipretaintime
        end

        def deserialize(params)
          @Vip = params['Vip']
          @RecycleTime = params['RecycleTime']
          @OldIpRetainTime = params['OldIpRetainTime']
        end
      end

      # OpenInterCommunication请求参数结构体
      class OpenInterCommunicationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 打开互通组的实例ID集合
        # @type InstanceIdSet: Array

        attr_accessor :InstanceIdSet

        def initialize(instanceidset=nil)
          @InstanceIdSet = instanceidset
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
        end
      end

      # OpenInterCommunication返回参数结构体
      class OpenInterCommunicationResponse < TencentCloud::Common::AbstractModel
        # @param InterInstanceFlowSet: 实例和异步流程ID
        # @type InterInstanceFlowSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InterInstanceFlowSet, :RequestId

        def initialize(interinstanceflowset=nil, requestid=nil)
          @InterInstanceFlowSet = interinstanceflowset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InterInstanceFlowSet'].nil?
            @InterInstanceFlowSet = []
            params['InterInstanceFlowSet'].each do |i|
              interinstanceflow_tmp = InterInstanceFlow.new
              interinstanceflow_tmp.deserialize(i)
              @InterInstanceFlowSet << interinstanceflow_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 实例参数修改记录
      class ParamRecord < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ParamName: 参数名称
        # @type ParamName: String
        # @param OldValue: 参数修改前的值
        # @type OldValue: String
        # @param NewValue: 参数修改后的值
        # @type NewValue: String
        # @param Status: 参数修改状态，1-初始化等待被执行，2-执行成功，3-执行失败，4-参数修改中
        # @type Status: Integer
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String

        attr_accessor :InstanceId, :ParamName, :OldValue, :NewValue, :Status, :ModifyTime

        def initialize(instanceid=nil, paramname=nil, oldvalue=nil, newvalue=nil, status=nil, modifytime=nil)
          @InstanceId = instanceid
          @ParamName = paramname
          @OldValue = oldvalue
          @NewValue = newvalue
          @Status = status
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ParamName = params['ParamName']
          @OldValue = params['OldValue']
          @NewValue = params['NewValue']
          @Status = params['Status']
          @ModifyTime = params['ModifyTime']
        end
      end

      # 数据库实例参数
      class Parameter < TencentCloud::Common::AbstractModel
        # @param Name: 参数名称
        # @type Name: String
        # @param CurrentValue: 参数值
        # @type CurrentValue: String

        attr_accessor :Name, :CurrentValue

        def initialize(name=nil, currentvalue=nil)
          @Name = name
          @CurrentValue = currentvalue
        end

        def deserialize(params)
          @Name = params['Name']
          @CurrentValue = params['CurrentValue']
        end
      end

      # 实例参数的详细描述
      class ParameterDetail < TencentCloud::Common::AbstractModel
        # @param Name: 参数名称
        # @type Name: String
        # @param ParamType: 参数类型，integer-整型，enum-枚举型
        # @type ParamType: String
        # @param Default: 参数默认值
        # @type Default: String
        # @param Description: 参数描述
        # @type Description: String
        # @param CurrentValue: 参数当前值
        # @type CurrentValue: String
        # @param NeedReboot: 修改参数后，是否需要重启数据库以使参数生效，0-不需要重启，1-需要重启
        # @type NeedReboot: Integer
        # @param Max: 参数允许的最大值
        # @type Max: Integer
        # @param Min: 参数允许的最小值
        # @type Min: Integer
        # @param EnumValue: 参数允许的枚举类型
        # @type EnumValue: Array
        # @param Status: 参数状态 0-状态正常 1-在修改中
        # @type Status: Integer

        attr_accessor :Name, :ParamType, :Default, :Description, :CurrentValue, :NeedReboot, :Max, :Min, :EnumValue, :Status

        def initialize(name=nil, paramtype=nil, default=nil, description=nil, currentvalue=nil, needreboot=nil, max=nil, min=nil, enumvalue=nil, status=nil)
          @Name = name
          @ParamType = paramtype
          @Default = default
          @Description = description
          @CurrentValue = currentvalue
          @NeedReboot = needreboot
          @Max = max
          @Min = min
          @EnumValue = enumvalue
          @Status = status
        end

        def deserialize(params)
          @Name = params['Name']
          @ParamType = params['ParamType']
          @Default = params['Default']
          @Description = params['Description']
          @CurrentValue = params['CurrentValue']
          @NeedReboot = params['NeedReboot']
          @Max = params['Max']
          @Min = params['Min']
          @EnumValue = params['EnumValue']
          @Status = params['Status']
        end
      end

      # 参考价格，该价格为CPU、内存规格价格，不包括磁盘用量，实际价格以询价接口为准。
      class Price < TencentCloud::Common::AbstractModel
        # @param PrepaidPrice: 包年包月参考价格，单位-分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrepaidPrice: Integer
        # @param PrepaidPriceUnit: 包年包月价格单位，M-月
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrepaidPriceUnit: String
        # @param PostpaidPrice: 按量付费价格，单位-分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostpaidPrice: Integer
        # @param PostpaidPriceUnit: 按量付费价格单位，H-小时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostpaidPriceUnit: String

        attr_accessor :PrepaidPrice, :PrepaidPriceUnit, :PostpaidPrice, :PostpaidPriceUnit

        def initialize(prepaidprice=nil, prepaidpriceunit=nil, postpaidprice=nil, postpaidpriceunit=nil)
          @PrepaidPrice = prepaidprice
          @PrepaidPriceUnit = prepaidpriceunit
          @PostpaidPrice = postpaidprice
          @PostpaidPriceUnit = postpaidpriceunit
        end

        def deserialize(params)
          @PrepaidPrice = params['PrepaidPrice']
          @PrepaidPriceUnit = params['PrepaidPriceUnit']
          @PostpaidPrice = params['PostpaidPrice']
          @PostpaidPriceUnit = params['PostpaidPriceUnit']
        end
      end

      # 包括地域的产品规格配置
      class ProductSpec < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param ZoneId: 可用区ID
        # @type ZoneId: Integer
        # @param Info: 配置信息
        # @type Info: Array

        attr_accessor :RegionId, :ZoneId, :Info

        def initialize(regionid=nil, zoneid=nil, info=nil)
          @RegionId = regionid
          @ZoneId = zoneid
          @Info = info
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          unless params['Info'].nil?
            @Info = []
            params['Info'].each do |i|
              specinfo_tmp = SpecInfo.new
              specinfo_tmp.deserialize(i)
              @Info << specinfo_tmp
            end
          end
        end
      end

      # 发布订阅对象
      class PublishSubscribe < TencentCloud::Common::AbstractModel
        # @param Id: 发布订阅ID
        # @type Id: Integer
        # @param Name: 发布订阅名称
        # @type Name: String
        # @param PublishInstanceId: 发布实例ID
        # @type PublishInstanceId: String
        # @param PublishInstanceName: 发布实例名称
        # @type PublishInstanceName: String
        # @param PublishInstanceIp: 发布实例IP
        # @type PublishInstanceIp: String
        # @param SubscribeInstanceId: 订阅实例ID
        # @type SubscribeInstanceId: String
        # @param SubscribeInstanceName: 订阅实例名称
        # @type SubscribeInstanceName: String
        # @param SubscribeInstanceIp: 订阅实例IP
        # @type SubscribeInstanceIp: String
        # @param DatabaseTupleSet: 数据库的订阅发布关系集合
        # @type DatabaseTupleSet: Array

        attr_accessor :Id, :Name, :PublishInstanceId, :PublishInstanceName, :PublishInstanceIp, :SubscribeInstanceId, :SubscribeInstanceName, :SubscribeInstanceIp, :DatabaseTupleSet

        def initialize(id=nil, name=nil, publishinstanceid=nil, publishinstancename=nil, publishinstanceip=nil, subscribeinstanceid=nil, subscribeinstancename=nil, subscribeinstanceip=nil, databasetupleset=nil)
          @Id = id
          @Name = name
          @PublishInstanceId = publishinstanceid
          @PublishInstanceName = publishinstancename
          @PublishInstanceIp = publishinstanceip
          @SubscribeInstanceId = subscribeinstanceid
          @SubscribeInstanceName = subscribeinstancename
          @SubscribeInstanceIp = subscribeinstanceip
          @DatabaseTupleSet = databasetupleset
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @PublishInstanceId = params['PublishInstanceId']
          @PublishInstanceName = params['PublishInstanceName']
          @PublishInstanceIp = params['PublishInstanceIp']
          @SubscribeInstanceId = params['SubscribeInstanceId']
          @SubscribeInstanceName = params['SubscribeInstanceName']
          @SubscribeInstanceIp = params['SubscribeInstanceIp']
          unless params['DatabaseTupleSet'].nil?
            @DatabaseTupleSet = []
            params['DatabaseTupleSet'].each do |i|
              databasetuplestatus_tmp = DatabaseTupleStatus.new
              databasetuplestatus_tmp.deserialize(i)
              @DatabaseTupleSet << databasetuplestatus_tmp
            end
          end
        end
      end

      # QueryMigrationCheckProcess请求参数结构体
      class QueryMigrationCheckProcessRequest < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer

        attr_accessor :MigrateId

        def initialize(migrateid=nil)
          @MigrateId = migrateid
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
        end
      end

      # QueryMigrationCheckProcess返回参数结构体
      class QueryMigrationCheckProcessResponse < TencentCloud::Common::AbstractModel
        # @param TotalStep: 总步骤数量
        # @type TotalStep: Integer
        # @param CurrentStep: 当前步骤编号，从1开始
        # @type CurrentStep: Integer
        # @param StepDetails: 所有步骤详情
        # @type StepDetails: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalStep, :CurrentStep, :StepDetails, :RequestId

        def initialize(totalstep=nil, currentstep=nil, stepdetails=nil, requestid=nil)
          @TotalStep = totalstep
          @CurrentStep = currentstep
          @StepDetails = stepdetails
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalStep = params['TotalStep']
          @CurrentStep = params['CurrentStep']
          unless params['StepDetails'].nil?
            @StepDetails = []
            params['StepDetails'].each do |i|
              stepdetail_tmp = StepDetail.new
              stepdetail_tmp.deserialize(i)
              @StepDetails << stepdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 只读组对象
      class ReadOnlyGroup < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupId: 只读组ID
        # @type ReadOnlyGroupId: String
        # @param ReadOnlyGroupName: 只读组名称
        # @type ReadOnlyGroupName: String
        # @param RegionId: 只读组的地域ID，与主实例相同
        # @type RegionId: String
        # @param ZoneId: 只读组的可用区ID，与主实例相同
        # @type ZoneId: String
        # @param IsOfflineDelay: 是否启动超时剔除功能，0-不开启剔除功能，1-开启剔除功能
        # @type IsOfflineDelay: Integer
        # @param ReadOnlyMaxDelayTime: 启动超时剔除功能后，使用的超时阈值
        # @type ReadOnlyMaxDelayTime: Integer
        # @param MinReadOnlyInGroup: 启动超时剔除功能后，只读组至少保留的只读副本数
        # @type MinReadOnlyInGroup: Integer
        # @param Vip: 只读组vip
        # @type Vip: String
        # @param Vport: 只读组vport
        # @type Vport: Integer
        # @param VpcId: 只读组私有网络ID
        # @type VpcId: String
        # @param SubnetId: 只读组私有网络子网ID
        # @type SubnetId: String
        # @param Status: 只读组状态: 1-申请成功运行中，5-申请中
        # @type Status: Integer
        # @param MasterInstanceId: 主实例ID，形如mssql-sgeshe3th
        # @type MasterInstanceId: String
        # @param ReadOnlyInstanceSet: 只读实例副本集合
        # @type ReadOnlyInstanceSet: Array
        # @param DnsPodDomain: RO组外网地址域名
        # @type DnsPodDomain: String
        # @param TgwWanVPort: RO组外网地址端口
        # @type TgwWanVPort: Integer

        attr_accessor :ReadOnlyGroupId, :ReadOnlyGroupName, :RegionId, :ZoneId, :IsOfflineDelay, :ReadOnlyMaxDelayTime, :MinReadOnlyInGroup, :Vip, :Vport, :VpcId, :SubnetId, :Status, :MasterInstanceId, :ReadOnlyInstanceSet, :DnsPodDomain, :TgwWanVPort

        def initialize(readonlygroupid=nil, readonlygroupname=nil, regionid=nil, zoneid=nil, isofflinedelay=nil, readonlymaxdelaytime=nil, minreadonlyingroup=nil, vip=nil, vport=nil, vpcid=nil, subnetid=nil, status=nil, masterinstanceid=nil, readonlyinstanceset=nil, dnspoddomain=nil, tgwwanvport=nil)
          @ReadOnlyGroupId = readonlygroupid
          @ReadOnlyGroupName = readonlygroupname
          @RegionId = regionid
          @ZoneId = zoneid
          @IsOfflineDelay = isofflinedelay
          @ReadOnlyMaxDelayTime = readonlymaxdelaytime
          @MinReadOnlyInGroup = minreadonlyingroup
          @Vip = vip
          @Vport = vport
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @MasterInstanceId = masterinstanceid
          @ReadOnlyInstanceSet = readonlyinstanceset
          @DnsPodDomain = dnspoddomain
          @TgwWanVPort = tgwwanvport
        end

        def deserialize(params)
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          @ReadOnlyGroupName = params['ReadOnlyGroupName']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @IsOfflineDelay = params['IsOfflineDelay']
          @ReadOnlyMaxDelayTime = params['ReadOnlyMaxDelayTime']
          @MinReadOnlyInGroup = params['MinReadOnlyInGroup']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Status = params['Status']
          @MasterInstanceId = params['MasterInstanceId']
          unless params['ReadOnlyInstanceSet'].nil?
            @ReadOnlyInstanceSet = []
            params['ReadOnlyInstanceSet'].each do |i|
              readonlyinstance_tmp = ReadOnlyInstance.new
              readonlyinstance_tmp.deserialize(i)
              @ReadOnlyInstanceSet << readonlyinstance_tmp
            end
          end
          @DnsPodDomain = params['DnsPodDomain']
          @TgwWanVPort = params['TgwWanVPort']
        end
      end

      # 只读副本实例
      class ReadOnlyInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 只读副本ID，格式如：mssqlro-3l3fgqn7
        # @type InstanceId: String
        # @param Name: 只读副本名称
        # @type Name: String
        # @param Uid: 只读副本唯一UID
        # @type Uid: String
        # @param ProjectId: 只读副本所在项目ID
        # @type ProjectId: Integer
        # @param Status: 只读副本状态。1：申请中 2：运行中 3：被延迟剔除 4：已隔离 5：回收中 6：已回收 7：任务执行中 8：已下线 9：实例扩容中 10：实例迁移中  12：重启中
        # @type Status: Integer
        # @param CreateTime: 只读副本创建时间
        # @type CreateTime: String
        # @param UpdateTime: 只读副本更新时间
        # @type UpdateTime: String
        # @param Memory: 只读副本内存大小，单位G
        # @type Memory: Integer
        # @param Storage: 只读副本存储空间大小，单位G
        # @type Storage: Integer
        # @param Cpu: 只读副本cpu核心数
        # @type Cpu: Integer
        # @param Version: 只读副本版本代号
        # @type Version: String
        # @param Type: 宿主机代号
        # @type Type: String
        # @param Model: 只读副本模式，2-单机
        # @type Model: Integer
        # @param PayMode: 只读副本计费模式，1-包年包月，0-按量计费
        # @type PayMode: Integer
        # @param Weight: 只读副本权重
        # @type Weight: Integer
        # @param DelayTime: 只读副本延迟时间，单位秒
        # @type DelayTime: String
        # @param SynStatus: 只读副本与主实例的同步状态。
        # Init:初始化
        # DeployReadOnlyInPorgress:部署副本进行中
        # DeployReadOnlySuccess:部署副本成功
        # DeployReadOnlyFail:部署副本失败
        # DeployMasterDBInPorgress:主节点上加入副本数据库进行中
        # DeployMasterDBSuccess:主节点上加入副本数据库成功
        # DeployMasterDBFail:主节点上加入副本数据库进失败
        # DeployReadOnlyDBInPorgress:副本还原加入数据库开始
        # DeployReadOnlyDBSuccess:副本还原加入数据库成功
        # DeployReadOnlyDBFail:副本还原加入数据库失败
        # SyncDelay:同步延迟
        # SyncFail:同步故障
        # SyncExcluded:已剔除只读组
        # SyncNormal:正常
        # @type SynStatus: String
        # @param DatabaseDifference: 只读副本与主实例没有同步的库
        # @type DatabaseDifference: String
        # @param AccountDifference: 只读副本与主实例没有同步的账户
        # @type AccountDifference: String
        # @param StartTime: 只读副本计费开始时间
        # @type StartTime: String
        # @param EndTime: 只读副本计费结束时间
        # @type EndTime: String
        # @param IsolateTime: 只读副本隔离时间
        # @type IsolateTime: String
        # @param RegionId: 只读副本所在地域
        # @type RegionId: String
        # @param ZoneId: 只读副本所在可用区
        # @type ZoneId: String

        attr_accessor :InstanceId, :Name, :Uid, :ProjectId, :Status, :CreateTime, :UpdateTime, :Memory, :Storage, :Cpu, :Version, :Type, :Model, :PayMode, :Weight, :DelayTime, :SynStatus, :DatabaseDifference, :AccountDifference, :StartTime, :EndTime, :IsolateTime, :RegionId, :ZoneId

        def initialize(instanceid=nil, name=nil, uid=nil, projectid=nil, status=nil, createtime=nil, updatetime=nil, memory=nil, storage=nil, cpu=nil, version=nil, type=nil, model=nil, paymode=nil, weight=nil, delaytime=nil, synstatus=nil, databasedifference=nil, accountdifference=nil, starttime=nil, endtime=nil, isolatetime=nil, regionid=nil, zoneid=nil)
          @InstanceId = instanceid
          @Name = name
          @Uid = uid
          @ProjectId = projectid
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Memory = memory
          @Storage = storage
          @Cpu = cpu
          @Version = version
          @Type = type
          @Model = model
          @PayMode = paymode
          @Weight = weight
          @DelayTime = delaytime
          @SynStatus = synstatus
          @DatabaseDifference = databasedifference
          @AccountDifference = accountdifference
          @StartTime = starttime
          @EndTime = endtime
          @IsolateTime = isolatetime
          @RegionId = regionid
          @ZoneId = zoneid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Uid = params['Uid']
          @ProjectId = params['ProjectId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @Cpu = params['Cpu']
          @Version = params['Version']
          @Type = params['Type']
          @Model = params['Model']
          @PayMode = params['PayMode']
          @Weight = params['Weight']
          @DelayTime = params['DelayTime']
          @SynStatus = params['SynStatus']
          @DatabaseDifference = params['DatabaseDifference']
          @AccountDifference = params['AccountDifference']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IsolateTime = params['IsolateTime']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
        end
      end

      # 只读实例与权重对应关系
      class ReadOnlyInstanceWeightPair < TencentCloud::Common::AbstractModel
        # @param ReadOnlyInstanceId: 只读实例ID，格式如：mssqlro-3l3fgqn7
        # @type ReadOnlyInstanceId: String
        # @param ReadOnlyWeight: 只读实例权重 ，范围是0-100
        # @type ReadOnlyWeight: Integer

        attr_accessor :ReadOnlyInstanceId, :ReadOnlyWeight

        def initialize(readonlyinstanceid=nil, readonlyweight=nil)
          @ReadOnlyInstanceId = readonlyinstanceid
          @ReadOnlyWeight = readonlyweight
        end

        def deserialize(params)
          @ReadOnlyInstanceId = params['ReadOnlyInstanceId']
          @ReadOnlyWeight = params['ReadOnlyWeight']
        end
      end

      # RecycleDBInstance请求参数结构体
      class RecycleDBInstanceRequest < TencentCloud::Common::AbstractModel
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

      # RecycleDBInstance返回参数结构体
      class RecycleDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程id
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

      # RecycleReadOnlyGroup请求参数结构体
      class RecycleReadOnlyGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 主实例的ID
        # @type InstanceId: String
        # @param ReadOnlyGroupId: 只读组的ID
        # @type ReadOnlyGroupId: String

        attr_accessor :InstanceId, :ReadOnlyGroupId

        def initialize(instanceid=nil, readonlygroupid=nil)
          @InstanceId = instanceid
          @ReadOnlyGroupId = readonlygroupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
        end
      end

      # RecycleReadOnlyGroup返回参数结构体
      class RecycleReadOnlyGroupResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
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

      # 地域信息
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域英文ID，类似ap-guanghou
        # @type Region: String
        # @param RegionName: 地域中文名称
        # @type RegionName: String
        # @param RegionId: 地域数字ID
        # @type RegionId: Integer
        # @param RegionState: 该地域目前是否可以售卖，UNAVAILABLE-不可售卖；AVAILABLE-可售卖
        # @type RegionState: String

        attr_accessor :Region, :RegionName, :RegionId, :RegionState

        def initialize(region=nil, regionname=nil, regionid=nil, regionstate=nil)
          @Region = region
          @RegionName = regionname
          @RegionId = regionid
          @RegionState = regionstate
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionId = params['RegionId']
          @RegionState = params['RegionState']
        end
      end

      # RemoveBackups请求参数结构体
      class RemoveBackupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-j8kv137v
        # @type InstanceId: String
        # @param BackupNames: 待删除的备份名称，备份名称可通过DescribeBackups接口的FileName字段获得，单次请求批量删除备份数不能超过10个。当StartTime、EndTime为空时，此字段必填。
        # @type BackupNames: Array
        # @param StartTime: 批量删除手动备份起始时间。当BackupNames为空时，此字段必填。
        # @type StartTime: String
        # @param EndTime: 批量删除手动备份截止时间。当BackupNames为空时，此字段必填。
        # @type EndTime: String

        attr_accessor :InstanceId, :BackupNames, :StartTime, :EndTime

        def initialize(instanceid=nil, backupnames=nil, starttime=nil, endtime=nil)
          @InstanceId = instanceid
          @BackupNames = backupnames
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupNames = params['BackupNames']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # RemoveBackups返回参数结构体
      class RemoveBackupsResponse < TencentCloud::Common::AbstractModel
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

      # 用于RestoreInstance，RollbackInstance，CreateMigration、CloneDB、ModifyBackupMigration 等接口；对恢复的库进行重命名，且支持选择要恢复的库。
      class RenameRestoreDatabase < TencentCloud::Common::AbstractModel
        # @param OldName: 库的名字，如果oldName不存在则返回失败。
        # 在用于离线迁移任务时可不填。
        # @type OldName: String
        # @param NewName: 库的新名字，在用于离线迁移时，不填则按照OldName命名，OldName和NewName不能同时不填。在用于克隆数据库时，OldName和NewName都必须填写，且不能重复
        # @type NewName: String

        attr_accessor :OldName, :NewName

        def initialize(oldname=nil, newname=nil)
          @OldName = oldname
          @NewName = newname
        end

        def deserialize(params)
          @OldName = params['OldName']
          @NewName = params['NewName']
        end
      end

      # RenewDBInstance请求参数结构体
      class RenewDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-j8kv137v
        # @type InstanceId: String
        # @param Period: 续费多少个月，取值范围为1-48，默认为1
        # @type Period: Integer
        # @param AutoVoucher: 是否自动使用代金券，0-不使用；1-使用；默认不使用
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID数组，目前只支持使用1张代金券
        # @type VoucherIds: Array
        # @param AutoRenewFlag: 续费标记 0:正常续费 1:自动续费：只用于按量计费转包年包月时有效。
        # @type AutoRenewFlag: Integer

        attr_accessor :InstanceId, :Period, :AutoVoucher, :VoucherIds, :AutoRenewFlag

        def initialize(instanceid=nil, period=nil, autovoucher=nil, voucherids=nil, autorenewflag=nil)
          @InstanceId = instanceid
          @Period = period
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Period = params['Period']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # RenewDBInstance返回参数结构体
      class RenewDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单名称
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

      # RenewPostpaidDBInstance请求参数结构体
      class RenewPostpaidDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：mssql-3l3fgqn7 或 mssqlro-3l3fgqn7
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # RenewPostpaidDBInstance返回参数结构体
      class RenewPostpaidDBInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ResetAccountPassword请求参数结构体
      class ResetAccountPasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据库实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param Accounts: 更新后的账户密码信息数组
        # @type Accounts: Array

        attr_accessor :InstanceId, :Accounts

        def initialize(instanceid=nil, accounts=nil)
          @InstanceId = instanceid
          @Accounts = accounts
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              accountpassword_tmp = AccountPassword.new
              accountpassword_tmp.deserialize(i)
              @Accounts << accountpassword_tmp
            end
          end
        end
      end

      # ResetAccountPassword返回参数结构体
      class ResetAccountPasswordResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 修改账号密码的异步任务流程ID
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

      # 实例绑定的标签信息
      class ResourceTag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签key
        # @type TagKey: String
        # @param TagValue: 标签value
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

      # RestartDBInstance请求参数结构体
      class RestartDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据库实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # RestartDBInstance返回参数结构体
      class RestartDBInstanceResponse < TencentCloud::Common::AbstractModel
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

      # RestoreInstance请求参数结构体
      class RestoreInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-j8kv137v
        # @type InstanceId: String
        # @param BackupId: 备份文件ID，该ID可以通过DescribeBackups接口返回数据中的Id字段获得
        # @type BackupId: Integer
        # @param TargetInstanceId: 备份恢复到的同一个APPID下的实例ID，不填则恢复到原实例ID
        # @type TargetInstanceId: String
        # @param RenameRestore: 按照ReNameRestoreDatabase中的库进行恢复，并重命名，不填则按照默认方式命名恢复的库，且恢复所有的库。
        # @type RenameRestore: Array
        # @param Type: 回档类型，0-覆盖方式；1-重命名方式，默认1
        # @type Type: Integer
        # @param DBList: 需要覆盖回档的数据库，只有覆盖回档时必填
        # @type DBList: Array
        # @param GroupId: 备份任务组ID，在单库备份文件模式下
        # @type GroupId: String

        attr_accessor :InstanceId, :BackupId, :TargetInstanceId, :RenameRestore, :Type, :DBList, :GroupId

        def initialize(instanceid=nil, backupid=nil, targetinstanceid=nil, renamerestore=nil, type=nil, dblist=nil, groupid=nil)
          @InstanceId = instanceid
          @BackupId = backupid
          @TargetInstanceId = targetinstanceid
          @RenameRestore = renamerestore
          @Type = type
          @DBList = dblist
          @GroupId = groupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupId = params['BackupId']
          @TargetInstanceId = params['TargetInstanceId']
          unless params['RenameRestore'].nil?
            @RenameRestore = []
            params['RenameRestore'].each do |i|
              renamerestoredatabase_tmp = RenameRestoreDatabase.new
              renamerestoredatabase_tmp.deserialize(i)
              @RenameRestore << renamerestoredatabase_tmp
            end
          end
          @Type = params['Type']
          @DBList = params['DBList']
          @GroupId = params['GroupId']
        end
      end

      # RestoreInstance返回参数结构体
      class RestoreInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程任务ID，使用FlowId调用DescribeFlowStatus接口获取任务执行状态
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

      # 回档任务记录
      class RestoreTask < TencentCloud::Common::AbstractModel
        # @param TargetInstanceId: 目标实例ID
        # @type TargetInstanceId: String
        # @param TargetInstanceName: 目标实例名称
        # @type TargetInstanceName: String
        # @param TargetInstanceStatus: 目标实例状态。取值范围：
        # 1：申请中
        # 2：运行中
        # 3：受限运行中 (主备切换中)
        # 4：已隔离
        # 5：回收中
        # 6：已回收
        # 7：任务执行中 (实例做备份、回档等操作)
        # 8：已下线
        # 9：实例扩容中
        # 10：实例迁移中
        # 11：只读
        # 12：重启中
        # @type TargetInstanceStatus: Integer
        # @param TargetRegion: 目标实例所在地域
        # @type TargetRegion: String
        # @param RestoreId: 回档记录ID
        # @type RestoreId: Integer
        # @param TargetType: 回档到目标实例的类型，0-当前实例，1-已有实例，2-全新实例
        # @type TargetType: Integer
        # @param RestoreType: 回档方式，0-按照时间点回档，1-按照备份集回档
        # @type RestoreType: Integer
        # @param RestoreTime: 回档目标时间
        # @type RestoreTime: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Status: 回档状态，0-初始化，1-运行中，2-成功，3-失败
        # @type Status: Integer

        attr_accessor :TargetInstanceId, :TargetInstanceName, :TargetInstanceStatus, :TargetRegion, :RestoreId, :TargetType, :RestoreType, :RestoreTime, :StartTime, :EndTime, :Status

        def initialize(targetinstanceid=nil, targetinstancename=nil, targetinstancestatus=nil, targetregion=nil, restoreid=nil, targettype=nil, restoretype=nil, restoretime=nil, starttime=nil, endtime=nil, status=nil)
          @TargetInstanceId = targetinstanceid
          @TargetInstanceName = targetinstancename
          @TargetInstanceStatus = targetinstancestatus
          @TargetRegion = targetregion
          @RestoreId = restoreid
          @TargetType = targettype
          @RestoreType = restoretype
          @RestoreTime = restoretime
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
        end

        def deserialize(params)
          @TargetInstanceId = params['TargetInstanceId']
          @TargetInstanceName = params['TargetInstanceName']
          @TargetInstanceStatus = params['TargetInstanceStatus']
          @TargetRegion = params['TargetRegion']
          @RestoreId = params['RestoreId']
          @TargetType = params['TargetType']
          @RestoreType = params['RestoreType']
          @RestoreTime = params['RestoreTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
        end
      end

      # RollbackInstance请求参数结构体
      class RollbackInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Type: 回档类型，0-回档的数据库覆盖原库；1-回档的数据库以重命名的形式生成，不覆盖原库
        # @type Type: Integer
        # @param Time: 回档目标时间点
        # @type Time: String
        # @param DBs: 需要回档的数据库
        # @type DBs: Array
        # @param TargetInstanceId: 备份恢复到的同一个APPID下的实例ID，不填则恢复到原实例ID
        # @type TargetInstanceId: String
        # @param RenameRestore: 按照ReNameRestoreDatabase中的库进行重命名，仅在Type = 1重命名回档方式有效；不填则按照默认方式命名库，DBs参数确定要恢复的库
        # @type RenameRestore: Array

        attr_accessor :InstanceId, :Type, :Time, :DBs, :TargetInstanceId, :RenameRestore

        def initialize(instanceid=nil, type=nil, time=nil, dbs=nil, targetinstanceid=nil, renamerestore=nil)
          @InstanceId = instanceid
          @Type = type
          @Time = time
          @DBs = dbs
          @TargetInstanceId = targetinstanceid
          @RenameRestore = renamerestore
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          @Time = params['Time']
          @DBs = params['DBs']
          @TargetInstanceId = params['TargetInstanceId']
          unless params['RenameRestore'].nil?
            @RenameRestore = []
            params['RenameRestore'].each do |i|
              renamerestoredatabase_tmp = RenameRestoreDatabase.new
              renamerestoredatabase_tmp.deserialize(i)
              @RenameRestore << renamerestoredatabase_tmp
            end
          end
        end
      end

      # RollbackInstance返回参数结构体
      class RollbackInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务ID
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

      # RunMigration请求参数结构体
      class RunMigrationRequest < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer

        attr_accessor :MigrateId

        def initialize(migrateid=nil)
          @MigrateId = migrateid
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
        end
      end

      # RunMigration返回参数结构体
      class RunMigrationResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 迁移流程启动后，返回流程ID
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

      # SSL加密配置
      class SSLConfig < TencentCloud::Common::AbstractModel
        # @param Encryption: SSL加密状态，
        # enable-已开启
        # disable-未开启
        # enable_doing-开启中
        # disable_doing-关闭中
        # renew_doing-更新中
        # wait_doing-等待维护时间内执行
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Encryption: String
        # @param SSLValidityPeriod: SSL证书有效期，时间格式 YYYY-MM-DD HH:MM:SS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SSLValidityPeriod: String
        # @param SSLValidity: SSL证书有效性，0-无效，1-有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SSLValidity: Integer

        attr_accessor :Encryption, :SSLValidityPeriod, :SSLValidity

        def initialize(encryption=nil, sslvalidityperiod=nil, sslvalidity=nil)
          @Encryption = encryption
          @SSLValidityPeriod = sslvalidityperiod
          @SSLValidity = sslvalidity
        end

        def deserialize(params)
          @Encryption = params['Encryption']
          @SSLValidityPeriod = params['SSLValidityPeriod']
          @SSLValidity = params['SSLValidity']
        end
      end

      # 安全组
      class SecurityGroup < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param CreateTime: 创建时间，时间格式：yyyy-mm-dd hh:mm:ss
        # @type CreateTime: String
        # @param InboundSet: 入站规则
        # @type InboundSet: Array
        # @param OutboundSet: 出站规则
        # @type OutboundSet: Array
        # @param SecurityGroupId: 安全组ID
        # @type SecurityGroupId: String
        # @param SecurityGroupName: 安全组名称
        # @type SecurityGroupName: String
        # @param SecurityGroupRemark: 安全组备注
        # @type SecurityGroupRemark: String

        attr_accessor :ProjectId, :CreateTime, :InboundSet, :OutboundSet, :SecurityGroupId, :SecurityGroupName, :SecurityGroupRemark

        def initialize(projectid=nil, createtime=nil, inboundset=nil, outboundset=nil, securitygroupid=nil, securitygroupname=nil, securitygroupremark=nil)
          @ProjectId = projectid
          @CreateTime = createtime
          @InboundSet = inboundset
          @OutboundSet = outboundset
          @SecurityGroupId = securitygroupid
          @SecurityGroupName = securitygroupname
          @SecurityGroupRemark = securitygroupremark
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CreateTime = params['CreateTime']
          unless params['InboundSet'].nil?
            @InboundSet = []
            params['InboundSet'].each do |i|
              securitygrouppolicy_tmp = SecurityGroupPolicy.new
              securitygrouppolicy_tmp.deserialize(i)
              @InboundSet << securitygrouppolicy_tmp
            end
          end
          unless params['OutboundSet'].nil?
            @OutboundSet = []
            params['OutboundSet'].each do |i|
              securitygrouppolicy_tmp = SecurityGroupPolicy.new
              securitygrouppolicy_tmp.deserialize(i)
              @OutboundSet << securitygrouppolicy_tmp
            end
          end
          @SecurityGroupId = params['SecurityGroupId']
          @SecurityGroupName = params['SecurityGroupName']
          @SecurityGroupRemark = params['SecurityGroupRemark']
        end
      end

      # 安全组策略
      class SecurityGroupPolicy < TencentCloud::Common::AbstractModel
        # @param Action: 策略，ACCEPT 或者 DROP
        # @type Action: String
        # @param CidrIp: 目的 IP 或 IP 段，例如172.16.0.0/12
        # @type CidrIp: String
        # @param PortRange: 端口或者端口范围
        # @type PortRange: String
        # @param IpProtocol: 网络协议，支持 UDP、TCP等
        # @type IpProtocol: String
        # @param Dir: 规则限定的方向，OUTPUT-出战规则  INPUT-进站规则
        # @type Dir: String

        attr_accessor :Action, :CidrIp, :PortRange, :IpProtocol, :Dir

        def initialize(action=nil, cidrip=nil, portrange=nil, ipprotocol=nil, dir=nil)
          @Action = action
          @CidrIp = cidrip
          @PortRange = portrange
          @IpProtocol = ipprotocol
          @Dir = dir
        end

        def deserialize(params)
          @Action = params['Action']
          @CidrIp = params['CidrIp']
          @PortRange = params['PortRange']
          @IpProtocol = params['IpProtocol']
          @Dir = params['Dir']
        end
      end

      # 备可用区信息
      class SlaveZones < TencentCloud::Common::AbstractModel
        # @param SlaveZone: 备可用区地域码
        # @type SlaveZone: String
        # @param SlaveZoneName: 备可用区
        # @type SlaveZoneName: String

        attr_accessor :SlaveZone, :SlaveZoneName

        def initialize(slavezone=nil, slavezonename=nil)
          @SlaveZone = slavezone
          @SlaveZoneName = slavezonename
        end

        def deserialize(params)
          @SlaveZone = params['SlaveZone']
          @SlaveZoneName = params['SlaveZoneName']
        end
      end

      # 慢查询日志文件信息
      class SlowLog < TencentCloud::Common::AbstractModel
        # @param Id: 慢查询日志文件唯一标识
        # @type Id: Integer
        # @param StartTime: 文件生成的开始时间
        # @type StartTime: String
        # @param EndTime: 文件生成的结束时间
        # @type EndTime: String
        # @param Size: 文件大小（KB）
        # @type Size: Integer
        # @param Count: 文件中log条数
        # @type Count: Integer
        # @param InternalAddr: 内网下载地址
        # @type InternalAddr: String
        # @param ExternalAddr: 外网下载地址
        # @type ExternalAddr: String
        # @param Status: 状态（1成功 2失败）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :Id, :StartTime, :EndTime, :Size, :Count, :InternalAddr, :ExternalAddr, :Status

        def initialize(id=nil, starttime=nil, endtime=nil, size=nil, count=nil, internaladdr=nil, externaladdr=nil, status=nil)
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
          @Size = size
          @Count = count
          @InternalAddr = internaladdr
          @ExternalAddr = externaladdr
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Size = params['Size']
          @Count = params['Count']
          @InternalAddr = params['InternalAddr']
          @ExternalAddr = params['ExternalAddr']
          @Status = params['Status']
        end
      end

      # 慢查询日志文件信息
      class SlowlogInfo < TencentCloud::Common::AbstractModel
        # @param Id: 慢查询日志文件唯一标识
        # @type Id: Integer
        # @param StartTime: 文件生成的开始时间
        # @type StartTime: String
        # @param EndTime: 文件生成的结束时间
        # @type EndTime: String
        # @param Size: 文件大小（KB）
        # @type Size: Integer
        # @param Count: 文件中log条数
        # @type Count: Integer
        # @param InternalAddr: 内网下载地址
        # @type InternalAddr: String
        # @param ExternalAddr: 外网下载地址
        # @type ExternalAddr: String
        # @param Status: 状态（1成功 2失败）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :Id, :StartTime, :EndTime, :Size, :Count, :InternalAddr, :ExternalAddr, :Status

        def initialize(id=nil, starttime=nil, endtime=nil, size=nil, count=nil, internaladdr=nil, externaladdr=nil, status=nil)
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
          @Size = size
          @Count = count
          @InternalAddr = internaladdr
          @ExternalAddr = externaladdr
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Size = params['Size']
          @Count = params['Count']
          @InternalAddr = params['InternalAddr']
          @ExternalAddr = params['ExternalAddr']
          @Status = params['Status']
        end
      end

      # 实例可售卖的规格信息
      class SpecInfo < TencentCloud::Common::AbstractModel
        # @param SpecId: 实例规格ID，利用DescribeZones返回的SpecId，结合DescribeProductConfig返回的可售卖规格信息，可获悉某个可用区下可购买什么规格的实例
        # @type SpecId: Integer
        # @param MachineType: 机型ID
        # @type MachineType: String
        # @param MachineTypeName: 机型中文名称
        # @type MachineTypeName: String
        # @param Version: 数据库版本信息。取值为2008R2（表示SQL Server 2008 R2），2012SP3（表示SQL Server 2012），2016SP1（表示SQL Server 2016 SP1）
        # @type Version: String
        # @param VersionName: Version字段对应的版本名称
        # @type VersionName: String
        # @param Memory: 内存大小，单位GB
        # @type Memory: Integer
        # @param CPU: CPU核数
        # @type CPU: Integer
        # @param MinStorage: 此规格下最小的磁盘大小，单位GB
        # @type MinStorage: Integer
        # @param MaxStorage: 此规格下最大的磁盘大小，单位GB
        # @type MaxStorage: Integer
        # @param QPS: 此规格对应的QPS大小
        # @type QPS: Integer
        # @param SuitInfo: 此规格的中文描述信息
        # @type SuitInfo: String
        # @param Pid: 此规格对应的包年包月Pid
        # @type Pid: Integer
        # @param PostPid: 此规格对应的按量计费Pid列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostPid: Array
        # @param PayModeStatus: 此规格下支持的付费模式，POST-仅支持按量计费 PRE-仅支持包年包月 ALL-支持所有
        # @type PayModeStatus: String
        # @param InstanceType: 产品类型，HA-高可用型(包括双机高可用，alwaysOn集群)，RO-只读副本型，SI-基础版本型
        # @type InstanceType: String
        # @param MultiZonesStatus: 跨可用区类型，MultiZones-只支持跨可用区，SameZones-只支持同可用区，ALL-支持所有
        # @type MultiZonesStatus: String

        attr_accessor :SpecId, :MachineType, :MachineTypeName, :Version, :VersionName, :Memory, :CPU, :MinStorage, :MaxStorage, :QPS, :SuitInfo, :Pid, :PostPid, :PayModeStatus, :InstanceType, :MultiZonesStatus

        def initialize(specid=nil, machinetype=nil, machinetypename=nil, version=nil, versionname=nil, memory=nil, cpu=nil, minstorage=nil, maxstorage=nil, qps=nil, suitinfo=nil, pid=nil, postpid=nil, paymodestatus=nil, instancetype=nil, multizonesstatus=nil)
          @SpecId = specid
          @MachineType = machinetype
          @MachineTypeName = machinetypename
          @Version = version
          @VersionName = versionname
          @Memory = memory
          @CPU = cpu
          @MinStorage = minstorage
          @MaxStorage = maxstorage
          @QPS = qps
          @SuitInfo = suitinfo
          @Pid = pid
          @PostPid = postpid
          @PayModeStatus = paymodestatus
          @InstanceType = instancetype
          @MultiZonesStatus = multizonesstatus
        end

        def deserialize(params)
          @SpecId = params['SpecId']
          @MachineType = params['MachineType']
          @MachineTypeName = params['MachineTypeName']
          @Version = params['Version']
          @VersionName = params['VersionName']
          @Memory = params['Memory']
          @CPU = params['CPU']
          @MinStorage = params['MinStorage']
          @MaxStorage = params['MaxStorage']
          @QPS = params['QPS']
          @SuitInfo = params['SuitInfo']
          @Pid = params['Pid']
          @PostPid = params['PostPid']
          @PayModeStatus = params['PayModeStatus']
          @InstanceType = params['InstanceType']
          @MultiZonesStatus = params['MultiZonesStatus']
        end
      end

      # 售卖配置状态
      class SpecSellStatus < TencentCloud::Common::AbstractModel
        # @param Id: 可售卖的规格唯一ID
        # @type Id: String
        # @param SpecId: 实例规格ID
        # @type SpecId: Integer
        # @param PayModeStatus: 此规格下支持的付费模式，POST-仅支持按量计费 PRE-仅支持包年包月 ALL-支持所有
        # @type PayModeStatus: String
        # @param InstanceType: 产品类型
        # @type InstanceType: String
        # @param MultiZonesStatus: 该规格支持的是否跨可用去，MultiZones-只支持跨可用区，SameZones-只支持同可用区，ALL-支持所有
        # @type MultiZonesStatus: String
        # @param Architecture: 架构标识，SINGLE-单节点 DOUBLE-双节点 TRIPLE-三节点
        # @type Architecture: String
        # @param Style: 类型标识，EXCLUSIVE-独享型，SHARED-共享型
        # @type Style: String
        # @param Version: 数据库版本信息
        # @type Version: String
        # @param ZoneStatusSet: 每个可用区的售卖状态集合
        # @type ZoneStatusSet: Array
        # @param Price: 规格的参考价格，实际价格以询价接口为准
        # @type Price: :class:`Tencentcloud::Sqlserver.v20180328.models.Price`
        # @param Status: 规格售卖状态 1-正常 2-关闭售卖但是可以升级 3-完全关闭售卖
        # @type Status: Integer

        attr_accessor :Id, :SpecId, :PayModeStatus, :InstanceType, :MultiZonesStatus, :Architecture, :Style, :Version, :ZoneStatusSet, :Price, :Status

        def initialize(id=nil, specid=nil, paymodestatus=nil, instancetype=nil, multizonesstatus=nil, architecture=nil, style=nil, version=nil, zonestatusset=nil, price=nil, status=nil)
          @Id = id
          @SpecId = specid
          @PayModeStatus = paymodestatus
          @InstanceType = instancetype
          @MultiZonesStatus = multizonesstatus
          @Architecture = architecture
          @Style = style
          @Version = version
          @ZoneStatusSet = zonestatusset
          @Price = price
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @SpecId = params['SpecId']
          @PayModeStatus = params['PayModeStatus']
          @InstanceType = params['InstanceType']
          @MultiZonesStatus = params['MultiZonesStatus']
          @Architecture = params['Architecture']
          @Style = params['Style']
          @Version = params['Version']
          unless params['ZoneStatusSet'].nil?
            @ZoneStatusSet = []
            params['ZoneStatusSet'].each do |i|
              zonestatus_tmp = ZoneStatus.new
              zonestatus_tmp.deserialize(i)
              @ZoneStatusSet << zonestatus_tmp
            end
          end
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @Status = params['Status']
        end
      end

      # StartBackupMigration请求参数结构体
      class StartBackupMigrationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 导入目标实例ID
        # @type InstanceId: String
        # @param BackupMigrationId: 备份导入任务ID，由CreateBackupMigration接口返回
        # @type BackupMigrationId: String

        attr_accessor :InstanceId, :BackupMigrationId

        def initialize(instanceid=nil, backupmigrationid=nil)
          @InstanceId = instanceid
          @BackupMigrationId = backupmigrationid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMigrationId = params['BackupMigrationId']
        end
      end

      # StartBackupMigration返回参数结构体
      class StartBackupMigrationResponse < TencentCloud::Common::AbstractModel
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

      # StartIncrementalMigration请求参数结构体
      class StartIncrementalMigrationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 导入目标实例ID
        # @type InstanceId: String
        # @param BackupMigrationId: 备份导入任务ID，由CreateBackupMigration接口返回
        # @type BackupMigrationId: String
        # @param IncrementalMigrationId: 增量备份导入任务ID
        # @type IncrementalMigrationId: String

        attr_accessor :InstanceId, :BackupMigrationId, :IncrementalMigrationId

        def initialize(instanceid=nil, backupmigrationid=nil, incrementalmigrationid=nil)
          @InstanceId = instanceid
          @BackupMigrationId = backupmigrationid
          @IncrementalMigrationId = incrementalmigrationid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMigrationId = params['BackupMigrationId']
          @IncrementalMigrationId = params['IncrementalMigrationId']
        end
      end

      # StartIncrementalMigration返回参数结构体
      class StartIncrementalMigrationResponse < TencentCloud::Common::AbstractModel
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

      # StartInstanceXEvent请求参数结构体
      class StartInstanceXEventRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param EventConfig: 开启、关闭扩展事件
        # @type EventConfig: Array

        attr_accessor :InstanceId, :EventConfig

        def initialize(instanceid=nil, eventconfig=nil)
          @InstanceId = instanceid
          @EventConfig = eventconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['EventConfig'].nil?
            @EventConfig = []
            params['EventConfig'].each do |i|
              eventconfig_tmp = EventConfig.new
              eventconfig_tmp.deserialize(i)
              @EventConfig << eventconfig_tmp
            end
          end
        end
      end

      # StartInstanceXEvent返回参数结构体
      class StartInstanceXEventResponse < TencentCloud::Common::AbstractModel
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

      # StartMigrationCheck请求参数结构体
      class StartMigrationCheckRequest < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务id
        # @type MigrateId: Integer

        attr_accessor :MigrateId

        def initialize(migrateid=nil)
          @MigrateId = migrateid
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
        end
      end

      # StartMigrationCheck返回参数结构体
      class StartMigrationCheckResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 迁移检查流程发起后，返回的流程id
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

      # 进度步骤详情
      class StepDetail < TencentCloud::Common::AbstractModel
        # @param Msg: 具体步骤返回信息
        # @type Msg: String
        # @param Status: 当前步骤状态，0成功，-2未开始
        # @type Status: Integer
        # @param Name: 步骤名称
        # @type Name: String

        attr_accessor :Msg, :Status, :Name

        def initialize(msg=nil, status=nil, name=nil)
          @Msg = msg
          @Status = status
          @Name = name
        end

        def deserialize(params)
          @Msg = params['Msg']
          @Status = params['Status']
          @Name = params['Name']
        end
      end

      # StopMigration请求参数结构体
      class StopMigrationRequest < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer

        attr_accessor :MigrateId

        def initialize(migrateid=nil)
          @MigrateId = migrateid
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
        end
      end

      # StopMigration返回参数结构体
      class StopMigrationResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 中止迁移流程发起后，返回的流程id
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

      # 备份概览实时统计项
      class SummaryDetailRes < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域标识
        # @type RegionId: Integer
        # @param Status: 实例状态。1：申请中2：运行中3：受限运行中 (主备切换中)4：已隔离5：回收中6：已回收7：任务执行中 (实例做备份、回档等操作)8：已下线9：实例扩容中10：实例迁移中
        # @type Status: Integer
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Name: 实例名称
        # @type Name: String
        # @param ActualUsedSpace: 备份空间
        # @type ActualUsedSpace: Integer
        # @param DataBackupSpace: 数据备份空间
        # @type DataBackupSpace: Integer
        # @param DataBackupCount: 数据备份文件总个数
        # @type DataBackupCount: Integer
        # @param LogBackupSpace: 日志备份空间
        # @type LogBackupSpace: Integer
        # @param LogBackupCount: 日志备份文件总个数
        # @type LogBackupCount: Integer
        # @param AutoBackupSpace: 自动备份空间
        # @type AutoBackupSpace: Integer
        # @param AutoBackupCount: 自动备份文件总个数
        # @type AutoBackupCount: Integer
        # @param ManualBackupSpace: 手动备份空间
        # @type ManualBackupSpace: Integer
        # @param ManualBackupCount: 手动备份文件总个数
        # @type ManualBackupCount: Integer
        # @param Region: 实例所属地域码
        # @type Region: String

        attr_accessor :RegionId, :Status, :InstanceId, :Name, :ActualUsedSpace, :DataBackupSpace, :DataBackupCount, :LogBackupSpace, :LogBackupCount, :AutoBackupSpace, :AutoBackupCount, :ManualBackupSpace, :ManualBackupCount, :Region

        def initialize(regionid=nil, status=nil, instanceid=nil, name=nil, actualusedspace=nil, databackupspace=nil, databackupcount=nil, logbackupspace=nil, logbackupcount=nil, autobackupspace=nil, autobackupcount=nil, manualbackupspace=nil, manualbackupcount=nil, region=nil)
          @RegionId = regionid
          @Status = status
          @InstanceId = instanceid
          @Name = name
          @ActualUsedSpace = actualusedspace
          @DataBackupSpace = databackupspace
          @DataBackupCount = databackupcount
          @LogBackupSpace = logbackupspace
          @LogBackupCount = logbackupcount
          @AutoBackupSpace = autobackupspace
          @AutoBackupCount = autobackupcount
          @ManualBackupSpace = manualbackupspace
          @ManualBackupCount = manualbackupcount
          @Region = region
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @Status = params['Status']
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @ActualUsedSpace = params['ActualUsedSpace']
          @DataBackupSpace = params['DataBackupSpace']
          @DataBackupCount = params['DataBackupCount']
          @LogBackupSpace = params['LogBackupSpace']
          @LogBackupCount = params['LogBackupCount']
          @AutoBackupSpace = params['AutoBackupSpace']
          @AutoBackupCount = params['AutoBackupCount']
          @ManualBackupSpace = params['ManualBackupSpace']
          @ManualBackupCount = params['ManualBackupCount']
          @Region = params['Region']
        end
      end

      # SwitchCloudInstanceHA请求参数结构体
      class SwitchCloudInstanceHARequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param WaitSwitch: 切换执行方式，0-立刻执行，1-时间窗内执行，默认取值为0。
        # @type WaitSwitch: Integer

        attr_accessor :InstanceId, :WaitSwitch

        def initialize(instanceid=nil, waitswitch=nil)
          @InstanceId = instanceid
          @WaitSwitch = waitswitch
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @WaitSwitch = params['WaitSwitch']
        end
      end

      # SwitchCloudInstanceHA返回参数结构体
      class SwitchCloudInstanceHAResponse < TencentCloud::Common::AbstractModel
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

      # 主备切换日志
      class SwitchLog < TencentCloud::Common::AbstractModel
        # @param EventId: 切换事件ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventId: String
        # @param SwitchType: 切换模式 0-系统自动切换，1-手动切换
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SwitchType: Integer
        # @param StartTime: 切换开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 切换结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Reason: 机器故障导致自动切换
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String

        attr_accessor :EventId, :SwitchType, :StartTime, :EndTime, :Reason

        def initialize(eventid=nil, switchtype=nil, starttime=nil, endtime=nil, reason=nil)
          @EventId = eventid
          @SwitchType = switchtype
          @StartTime = starttime
          @EndTime = endtime
          @Reason = reason
        end

        def deserialize(params)
          @EventId = params['EventId']
          @SwitchType = params['SwitchType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Reason = params['Reason']
        end
      end

      # TDE透明数据加密配置
      class TDEConfigAttribute < TencentCloud::Common::AbstractModel
        # @param Encryption: 是否已开通TDE加密，enable-已开通，disable-未开通
        # @type Encryption: String
        # @param CertificateAttribution: 证书归属。self-表示使用该账号自身的证书，others-表示引用其他账号的证书，none-表示没有证书
        # @type CertificateAttribution: String
        # @param QuoteUin: 开通TDE加密时引用的其他主账号ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuoteUin: String

        attr_accessor :Encryption, :CertificateAttribution, :QuoteUin

        def initialize(encryption=nil, certificateattribution=nil, quoteuin=nil)
          @Encryption = encryption
          @CertificateAttribution = certificateattribution
          @QuoteUin = quoteuin
        end

        def deserialize(params)
          @Encryption = params['Encryption']
          @CertificateAttribution = params['CertificateAttribution']
          @QuoteUin = params['QuoteUin']
        end
      end

      # TerminateDBInstance请求参数结构体
      class TerminateDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 主动销毁的实例ID列表，格式如：[mssql-3l3fgqn7]。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceIdSet: Array

        attr_accessor :InstanceIdSet

        def initialize(instanceidset=nil)
          @InstanceIdSet = instanceidset
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
        end
      end

      # TerminateDBInstance返回参数结构体
      class TerminateDBInstanceResponse < TencentCloud::Common::AbstractModel
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

      # UpgradeDBInstance请求参数结构体
      class UpgradeDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-j8kv137v
        # @type InstanceId: String
        # @param Memory: 实例升级后内存大小，单位GB，其值不能小于当前实例内存大小
        # @type Memory: Integer
        # @param Storage: 实例升级后磁盘大小，单位GB，其值不能小于当前实例磁盘大小
        # @type Storage: Integer
        # @param AutoVoucher: 是否自动使用代金券，0 - 不使用；1 - 默认使用。取值默认为0
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID，目前单个订单只能使用一张代金券
        # @type VoucherIds: Array
        # @param Cpu: 实例升级后的CPU核心数
        # @type Cpu: Integer
        # @param DBVersion: 升级sqlserver的版本，目前支持：2008R2（SQL Server 2008 Enterprise），2012SP3（SQL Server 2012 Enterprise）版本等。每个地域支持售卖的版本不同，可通过DescribeProductConfig接口来拉取每个地域可售卖的版本信息，版本不支持降级，不填则不修改版本
        # @type DBVersion: String
        # @param HAType: 升级sqlserver的高可用架构,从镜像容灾升级到always on集群容灾，仅支持2017及以上版本且支持always on高可用的实例，不支持降级到镜像方式容灾，CLUSTER-升级为always on容灾，不填则不修改高可用架构
        # @type HAType: String
        # @param MultiZones: 修改实例是否为跨可用区容灾，SameZones-修改为同可用区 MultiZones-修改为跨可用区
        # @type MultiZones: String
        # @param WaitSwitch: 执行变配的方式，默认为 1。支持值包括：0 - 立刻执行，1 - 维护时间窗执行
        # @type WaitSwitch: Integer

        attr_accessor :InstanceId, :Memory, :Storage, :AutoVoucher, :VoucherIds, :Cpu, :DBVersion, :HAType, :MultiZones, :WaitSwitch

        def initialize(instanceid=nil, memory=nil, storage=nil, autovoucher=nil, voucherids=nil, cpu=nil, dbversion=nil, hatype=nil, multizones=nil, waitswitch=nil)
          @InstanceId = instanceid
          @Memory = memory
          @Storage = storage
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @Cpu = cpu
          @DBVersion = dbversion
          @HAType = hatype
          @MultiZones = multizones
          @WaitSwitch = waitswitch
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @Cpu = params['Cpu']
          @DBVersion = params['DBVersion']
          @HAType = params['HAType']
          @MultiZones = params['MultiZones']
          @WaitSwitch = params['WaitSwitch']
        end
      end

      # UpgradeDBInstance返回参数结构体
      class UpgradeDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单名称
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

      # 可用区信息
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区英文ID，形如ap-guangzhou-1，表示广州一区
        # @type Zone: String
        # @param ZoneName: 可用区中文名称
        # @type ZoneName: String
        # @param ZoneId: 可用区数字ID
        # @type ZoneId: Integer
        # @param SpecId: 该可用区目前可售卖的规格ID，利用SpecId，结合接口DescribeProductConfig返回的数据，可获悉该可用区目前可售卖的规格大小
        # @type SpecId: Integer
        # @param Version: 当前可用区与规格下，可售卖的数据库版本，形如2008R2（表示SQL Server 2008 R2）。其可选值有2008R2（表示SQL Server 2008 R2），2012SP3（表示SQL Server 2012），2016SP1（表示SQL Server 2016 SP1）
        # @type Version: String

        attr_accessor :Zone, :ZoneName, :ZoneId, :SpecId, :Version

        def initialize(zone=nil, zonename=nil, zoneid=nil, specid=nil, version=nil)
          @Zone = zone
          @ZoneName = zonename
          @ZoneId = zoneid
          @SpecId = specid
          @Version = version
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ZoneName = params['ZoneName']
          @ZoneId = params['ZoneId']
          @SpecId = params['SpecId']
          @Version = params['Version']
        end
      end

      # 某个地域可用区下的规格售卖状态。
      class ZoneStatus < TencentCloud::Common::AbstractModel
        # @param Zone: 规格地域
        # @type Zone: String
        # @param Region: 规格可用区
        # @type Region: String
        # @param Status: 规格在该可用区的售卖状态 1-正常 2-关闭售卖但是可以升级 3-完全关闭售卖
        # @type Status: Integer

        attr_accessor :Zone, :Region, :Status

        def initialize(zone=nil, region=nil, status=nil)
          @Zone = zone
          @Region = region
          @Status = status
        end

        def deserialize(params)
          @Zone = params['Zone']
          @Region = params['Region']
          @Status = params['Status']
        end
      end

    end
  end
end

