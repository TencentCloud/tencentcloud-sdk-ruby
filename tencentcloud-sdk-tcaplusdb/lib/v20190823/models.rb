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
  module Tcaplusdb
    module V20190823
      # 审批申请单
      class Application < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 审批单号
        # @type ApplicationId: String
        # @param ApplicationType: 申请类型
        # @type ApplicationType: Integer
        # @param ClusterId: 集群Id
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param TableGroupName: 表格组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableGroupName: String
        # @param TableName: 表格名称
        # @type TableName: String
        # @param Applicant: 申请人
        # @type Applicant: String
        # @param CreatedTime: 建单时间
        # @type CreatedTime: String
        # @param ApplicationStatus: 处理状态 -1 撤回 0-待审核 1-已经审核并提交任务 2-已驳回
        # @type ApplicationStatus: Integer
        # @param TableGroupId: 表格组Id
        # @type TableGroupId: String
        # @param TaskId: 已提交的任务Id，未提交申请为0
        # @type TaskId: String
        # @param TableInstanceId: 腾讯云上table的唯一键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableInstanceId: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param ExecuteUser: 审批人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecuteUser: String
        # @param ExecuteStatus: 执行状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecuteStatus: String
        # @param CanCensor: 该申请单是否可以被当前用户审批
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanCensor: Boolean
        # @param CanWithdrawal: 该申请单是否可以被当前用户撤回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanWithdrawal: Boolean

        attr_accessor :ApplicationId, :ApplicationType, :ClusterId, :ClusterName, :TableGroupName, :TableName, :Applicant, :CreatedTime, :ApplicationStatus, :TableGroupId, :TaskId, :TableInstanceId, :UpdateTime, :ExecuteUser, :ExecuteStatus, :CanCensor, :CanWithdrawal

        def initialize(applicationid=nil, applicationtype=nil, clusterid=nil, clustername=nil, tablegroupname=nil, tablename=nil, applicant=nil, createdtime=nil, applicationstatus=nil, tablegroupid=nil, taskid=nil, tableinstanceid=nil, updatetime=nil, executeuser=nil, executestatus=nil, cancensor=nil, canwithdrawal=nil)
          @ApplicationId = applicationid
          @ApplicationType = applicationtype
          @ClusterId = clusterid
          @ClusterName = clustername
          @TableGroupName = tablegroupname
          @TableName = tablename
          @Applicant = applicant
          @CreatedTime = createdtime
          @ApplicationStatus = applicationstatus
          @TableGroupId = tablegroupid
          @TaskId = taskid
          @TableInstanceId = tableinstanceid
          @UpdateTime = updatetime
          @ExecuteUser = executeuser
          @ExecuteStatus = executestatus
          @CanCensor = cancensor
          @CanWithdrawal = canwithdrawal
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @ApplicationType = params['ApplicationType']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @TableGroupName = params['TableGroupName']
          @TableName = params['TableName']
          @Applicant = params['Applicant']
          @CreatedTime = params['CreatedTime']
          @ApplicationStatus = params['ApplicationStatus']
          @TableGroupId = params['TableGroupId']
          @TaskId = params['TaskId']
          @TableInstanceId = params['TableInstanceId']
          @UpdateTime = params['UpdateTime']
          @ExecuteUser = params['ExecuteUser']
          @ExecuteStatus = params['ExecuteStatus']
          @CanCensor = params['CanCensor']
          @CanWithdrawal = params['CanWithdrawal']
        end
      end

      # 更新申请单结果
      class ApplyResult < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 申请单id
        # @type ApplicationId: String
        # @param ApplicationType: 申请类型
        # @type ApplicationType: Integer
        # @param ApplicationStatus: 处理状态 0-待审核 1-已经审核并提交任务 2-已驳回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationStatus: Integer
        # @param TaskId: 已提交的任务Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param Error: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`

        attr_accessor :ApplicationId, :ApplicationType, :ApplicationStatus, :TaskId, :Error

        def initialize(applicationid=nil, applicationtype=nil, applicationstatus=nil, taskid=nil, error=nil)
          @ApplicationId = applicationid
          @ApplicationType = applicationtype
          @ApplicationStatus = applicationstatus
          @TaskId = taskid
          @Error = error
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @ApplicationType = params['ApplicationType']
          @ApplicationStatus = params['ApplicationStatus']
          @TaskId = params['TaskId']
          unless params['Error'].nil?
            @Error = ErrorInfo.new
            @Error.deserialize(params['Error'])
          end
        end
      end

      # 申请单id及其状态
      class ApplyStatus < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 集群id-申请单id
        # @type ApplicationId: String
        # @param ApplicationStatus: 处理状态-1-撤回 1-通过 2-驳回，非0状态的申请单不可改变状态。
        # @type ApplicationStatus: Integer
        # @param ApplicationType: 申请单类型
        # @type ApplicationType: Integer
        # @param ClusterId: 集群Id
        # @type ClusterId: String

        attr_accessor :ApplicationId, :ApplicationStatus, :ApplicationType, :ClusterId

        def initialize(applicationid=nil, applicationstatus=nil, applicationtype=nil, clusterid=nil)
          @ApplicationId = applicationid
          @ApplicationStatus = applicationstatus
          @ApplicationType = applicationtype
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @ApplicationStatus = params['ApplicationStatus']
          @ApplicationType = params['ApplicationType']
          @ClusterId = params['ClusterId']
        end
      end

      # 备份保留策略详情
      # 集群策略： ClueterId=集群Id， TableGroupId=-1,  TableName="-1"
      # 集群+表格组策略： ClueterId=集群Id， TableGroupId=表格组Id,  TableName="-1"
      # 集群+表格组+表格策略： ClueterId=集群Id， TableGroupId=表格组Id,  TableName="表格名"

      # FileTag=0 txh引擎文件， =1 ulog流水文件， 当要设置为=1时， 这两项不可变 TableGroupId=-1和TableName="-1"
      # ExpireDay为大于等于1，小于999的整形数字
      # OperType=0 代表动作为新增， =1 代表动作为删除， =2 代表动作为修改， 其中0和2可以混用，后端实现兼容
      class BackupExpireRuleInfo < TencentCloud::Common::AbstractModel
        # @param TableGroupId: 所属表格组ID
        # @type TableGroupId: String
        # @param TableName: 表名称
        # @type TableName: String
        # @param FileTag: 文件标签，见上面描述
        # @type FileTag: Integer
        # @param ExpireDay: 淘汰天数，见上面描述
        # @type ExpireDay: Integer
        # @param OperType: 操作类型，见上面描述
        # @type OperType: Integer

        attr_accessor :TableGroupId, :TableName, :FileTag, :ExpireDay, :OperType

        def initialize(tablegroupid=nil, tablename=nil, filetag=nil, expireday=nil, opertype=nil)
          @TableGroupId = tablegroupid
          @TableName = tablename
          @FileTag = filetag
          @ExpireDay = expireday
          @OperType = opertype
        end

        def deserialize(params)
          @TableGroupId = params['TableGroupId']
          @TableName = params['TableName']
          @FileTag = params['FileTag']
          @ExpireDay = params['ExpireDay']
          @OperType = params['OperType']
        end
      end

      # 备份记录
      # 作为出参时，每个字段都会填充
      # 作为入参时， 原封不动将每个字段填回结构体， 注意只有FIleTag=OSDATA才可以调用此接口
      class BackupRecords < TencentCloud::Common::AbstractModel
        # @param ZoneId: 表格组ID
        # @type ZoneId: Integer
        # @param TableName: 表名称
        # @type TableName: String
        # @param BackupType: 备份源
        # @type BackupType: String
        # @param FileTag: 文件标签：TCAPLUS_FULL或OSDATA
        # @type FileTag: String
        # @param ShardCount: 分片数量
        # @type ShardCount: Integer
        # @param BackupBatchTime: 备份批次日期
        # @type BackupBatchTime: String
        # @param BackupFileSize: 备份文件汇总大小
        # @type BackupFileSize: Integer
        # @param BackupSuccRate: 备份成功率
        # @type BackupSuccRate: String
        # @param BackupExpireTime: 备份文件过期时间
        # @type BackupExpireTime: String
        # @param AppId: 业务ID
        # @type AppId: Integer

        attr_accessor :ZoneId, :TableName, :BackupType, :FileTag, :ShardCount, :BackupBatchTime, :BackupFileSize, :BackupSuccRate, :BackupExpireTime, :AppId

        def initialize(zoneid=nil, tablename=nil, backuptype=nil, filetag=nil, shardcount=nil, backupbatchtime=nil, backupfilesize=nil, backupsuccrate=nil, backupexpiretime=nil, appid=nil)
          @ZoneId = zoneid
          @TableName = tablename
          @BackupType = backuptype
          @FileTag = filetag
          @ShardCount = shardcount
          @BackupBatchTime = backupbatchtime
          @BackupFileSize = backupfilesize
          @BackupSuccRate = backupsuccrate
          @BackupExpireTime = backupexpiretime
          @AppId = appid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @TableName = params['TableName']
          @BackupType = params['BackupType']
          @FileTag = params['FileTag']
          @ShardCount = params['ShardCount']
          @BackupBatchTime = params['BackupBatchTime']
          @BackupFileSize = params['BackupFileSize']
          @BackupSuccRate = params['BackupSuccRate']
          @BackupExpireTime = params['BackupExpireTime']
          @AppId = params['AppId']
        end
      end

      # ClearTables请求参数结构体
      class ClearTablesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表所属集群实例ID
        # @type ClusterId: String
        # @param SelectedTables: 待清理表信息列表
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :SelectedTables

        def initialize(clusterid=nil, selectedtables=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              selectedtableinfonew_tmp = SelectedTableInfoNew.new
              selectedtableinfonew_tmp.deserialize(i)
              @SelectedTables << selectedtableinfonew_tmp
            end
          end
        end
      end

      # ClearTables返回参数结构体
      class ClearTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 清除表结果数量
        # @type TotalCount: Integer
        # @param TableResults: 清除表结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId

        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableResults'].nil?
            @TableResults = []
            params['TableResults'].each do |i|
              tableresultnew_tmp = TableResultNew.new
              tableresultnew_tmp.deserialize(i)
              @TableResults << tableresultnew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 集群详细信息
      class ClusterInfo < TencentCloud::Common::AbstractModel
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Region: 集群所在地域
        # @type Region: String
        # @param IdlType: 集群数据描述语言类型，如：`PROTO`,`TDR`
        # @type IdlType: String
        # @param NetworkType: 网络类型
        # @type NetworkType: String
        # @param VpcId: 集群关联的用户私有网络实例ID
        # @type VpcId: String
        # @param SubnetId: 集群关联的用户子网实例ID
        # @type SubnetId: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param Password: 集群密码
        # @type Password: String
        # @param PasswordStatus: 密码状态
        # @type PasswordStatus: String
        # @param ApiAccessId: TcaplusDB SDK连接参数，接入ID
        # @type ApiAccessId: String
        # @param ApiAccessIp: TcaplusDB SDK连接参数，接入地址
        # @type ApiAccessIp: String
        # @param ApiAccessPort: TcaplusDB SDK连接参数，接入端口
        # @type ApiAccessPort: Integer
        # @param OldPasswordExpireTime: 如果PasswordStatus是unmodifiable说明有旧密码还未过期，此字段将显示旧密码过期的时间，否则为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldPasswordExpireTime: String
        # @param ApiAccessIpv6: TcaplusDB SDK连接参数，接入ipv6地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiAccessIpv6: String
        # @param ClusterType: 集群类型，0,1:共享集群; 2:独立集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterType: Integer
        # @param ClusterStatus: 集群状态, 0：表示正常运行中，1：表示冻结隔离一般欠费进入此状态，2：表示待回收，一般用户主动触发删除进入这个状态，3：待释放，进入这个状态，表示可以释放此表占用的资源了，4：变更中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterStatus: Integer
        # @param ReadCapacityUnit: 读CU
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadCapacityUnit: Integer
        # @param WriteCapacityUnit: 写CU
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WriteCapacityUnit: Integer
        # @param DiskVolume: 磁盘容量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskVolume: Integer
        # @param ServerList: 独占server机器信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServerList: Array
        # @param ProxyList: 独占proxy机器信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyList: Array
        # @param Censorship: 是否开启审核 0-不开启 1-开启
        # @type Censorship: Integer
        # @param DbaUins: 审批人uin列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbaUins: Array
        # @param DataFlowStatus: 是否开启了数据订阅
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataFlowStatus: Integer
        # @param KafkaInfo: 数据订阅的kafka信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KafkaInfo: :class:`Tencentcloud::Tcaplusdb.v20190823.models.KafkaInfo`
        # @param TxhBackupExpireDay: 集群Txh备份文件多少天后过期删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TxhBackupExpireDay: Integer
        # @param UlogBackupExpireDay: 集群Ulog备份文件多少天后过期删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UlogBackupExpireDay: Integer
        # @param IsReadOnlyUlogBackupExpireDay: 集群Ulog备份文件过期策略是否为只读， 0： UlogBackupExpire是只读，不可修改， 1： UlogBackupExpire可以修改（当前业务存在Svrid第二段等于clusterid的机器）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsReadOnlyUlogBackupExpireDay: Integer
        # @param RestProxyStatus: restproxy状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestProxyStatus: Integer

        attr_accessor :ClusterName, :ClusterId, :Region, :IdlType, :NetworkType, :VpcId, :SubnetId, :CreatedTime, :Password, :PasswordStatus, :ApiAccessId, :ApiAccessIp, :ApiAccessPort, :OldPasswordExpireTime, :ApiAccessIpv6, :ClusterType, :ClusterStatus, :ReadCapacityUnit, :WriteCapacityUnit, :DiskVolume, :ServerList, :ProxyList, :Censorship, :DbaUins, :DataFlowStatus, :KafkaInfo, :TxhBackupExpireDay, :UlogBackupExpireDay, :IsReadOnlyUlogBackupExpireDay, :RestProxyStatus

        def initialize(clustername=nil, clusterid=nil, region=nil, idltype=nil, networktype=nil, vpcid=nil, subnetid=nil, createdtime=nil, password=nil, passwordstatus=nil, apiaccessid=nil, apiaccessip=nil, apiaccessport=nil, oldpasswordexpiretime=nil, apiaccessipv6=nil, clustertype=nil, clusterstatus=nil, readcapacityunit=nil, writecapacityunit=nil, diskvolume=nil, serverlist=nil, proxylist=nil, censorship=nil, dbauins=nil, dataflowstatus=nil, kafkainfo=nil, txhbackupexpireday=nil, ulogbackupexpireday=nil, isreadonlyulogbackupexpireday=nil, restproxystatus=nil)
          @ClusterName = clustername
          @ClusterId = clusterid
          @Region = region
          @IdlType = idltype
          @NetworkType = networktype
          @VpcId = vpcid
          @SubnetId = subnetid
          @CreatedTime = createdtime
          @Password = password
          @PasswordStatus = passwordstatus
          @ApiAccessId = apiaccessid
          @ApiAccessIp = apiaccessip
          @ApiAccessPort = apiaccessport
          @OldPasswordExpireTime = oldpasswordexpiretime
          @ApiAccessIpv6 = apiaccessipv6
          @ClusterType = clustertype
          @ClusterStatus = clusterstatus
          @ReadCapacityUnit = readcapacityunit
          @WriteCapacityUnit = writecapacityunit
          @DiskVolume = diskvolume
          @ServerList = serverlist
          @ProxyList = proxylist
          @Censorship = censorship
          @DbaUins = dbauins
          @DataFlowStatus = dataflowstatus
          @KafkaInfo = kafkainfo
          @TxhBackupExpireDay = txhbackupexpireday
          @UlogBackupExpireDay = ulogbackupexpireday
          @IsReadOnlyUlogBackupExpireDay = isreadonlyulogbackupexpireday
          @RestProxyStatus = restproxystatus
        end

        def deserialize(params)
          @ClusterName = params['ClusterName']
          @ClusterId = params['ClusterId']
          @Region = params['Region']
          @IdlType = params['IdlType']
          @NetworkType = params['NetworkType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @CreatedTime = params['CreatedTime']
          @Password = params['Password']
          @PasswordStatus = params['PasswordStatus']
          @ApiAccessId = params['ApiAccessId']
          @ApiAccessIp = params['ApiAccessIp']
          @ApiAccessPort = params['ApiAccessPort']
          @OldPasswordExpireTime = params['OldPasswordExpireTime']
          @ApiAccessIpv6 = params['ApiAccessIpv6']
          @ClusterType = params['ClusterType']
          @ClusterStatus = params['ClusterStatus']
          @ReadCapacityUnit = params['ReadCapacityUnit']
          @WriteCapacityUnit = params['WriteCapacityUnit']
          @DiskVolume = params['DiskVolume']
          unless params['ServerList'].nil?
            @ServerList = []
            params['ServerList'].each do |i|
              serverdetailinfo_tmp = ServerDetailInfo.new
              serverdetailinfo_tmp.deserialize(i)
              @ServerList << serverdetailinfo_tmp
            end
          end
          unless params['ProxyList'].nil?
            @ProxyList = []
            params['ProxyList'].each do |i|
              proxydetailinfo_tmp = ProxyDetailInfo.new
              proxydetailinfo_tmp.deserialize(i)
              @ProxyList << proxydetailinfo_tmp
            end
          end
          @Censorship = params['Censorship']
          @DbaUins = params['DbaUins']
          @DataFlowStatus = params['DataFlowStatus']
          unless params['KafkaInfo'].nil?
            @KafkaInfo = KafkaInfo.new
            @KafkaInfo.deserialize(params['KafkaInfo'])
          end
          @TxhBackupExpireDay = params['TxhBackupExpireDay']
          @UlogBackupExpireDay = params['UlogBackupExpireDay']
          @IsReadOnlyUlogBackupExpireDay = params['IsReadOnlyUlogBackupExpireDay']
          @RestProxyStatus = params['RestProxyStatus']
        end
      end

      # CompareIdlFiles请求参数结构体
      class CompareIdlFilesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待修改表格所在集群ID
        # @type ClusterId: String
        # @param SelectedTables: 待修改表格列表
        # @type SelectedTables: Array
        # @param ExistingIdlFiles: 选中的已上传IDL文件列表，与NewIdlFiles必选其一
        # @type ExistingIdlFiles: Array
        # @param NewIdlFiles: 本次上传IDL文件列表，与ExistingIdlFiles必选其一
        # @type NewIdlFiles: Array

        attr_accessor :ClusterId, :SelectedTables, :ExistingIdlFiles, :NewIdlFiles

        def initialize(clusterid=nil, selectedtables=nil, existingidlfiles=nil, newidlfiles=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
          @ExistingIdlFiles = existingidlfiles
          @NewIdlFiles = newidlfiles
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              selectedtableinfonew_tmp = SelectedTableInfoNew.new
              selectedtableinfonew_tmp.deserialize(i)
              @SelectedTables << selectedtableinfonew_tmp
            end
          end
          unless params['ExistingIdlFiles'].nil?
            @ExistingIdlFiles = []
            params['ExistingIdlFiles'].each do |i|
              idlfileinfo_tmp = IdlFileInfo.new
              idlfileinfo_tmp.deserialize(i)
              @ExistingIdlFiles << idlfileinfo_tmp
            end
          end
          unless params['NewIdlFiles'].nil?
            @NewIdlFiles = []
            params['NewIdlFiles'].each do |i|
              idlfileinfo_tmp = IdlFileInfo.new
              idlfileinfo_tmp.deserialize(i)
              @NewIdlFiles << idlfileinfo_tmp
            end
          end
        end
      end

      # CompareIdlFiles返回参数结构体
      class CompareIdlFilesResponse < TencentCloud::Common::AbstractModel
        # @param IdlFiles: 本次上传校验所有的IDL文件信息列表
        # @type IdlFiles: Array
        # @param TotalCount: 本次校验合法的表格数量
        # @type TotalCount: Integer
        # @param TableInfos: 读取IDL描述文件后,根据用户指示的所选中表格解析校验结果
        # @type TableInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IdlFiles, :TotalCount, :TableInfos, :RequestId

        def initialize(idlfiles=nil, totalcount=nil, tableinfos=nil, requestid=nil)
          @IdlFiles = idlfiles
          @TotalCount = totalcount
          @TableInfos = tableinfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IdlFiles'].nil?
            @IdlFiles = []
            params['IdlFiles'].each do |i|
              idlfileinfo_tmp = IdlFileInfo.new
              idlfileinfo_tmp.deserialize(i)
              @IdlFiles << idlfileinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['TableInfos'].nil?
            @TableInfos = []
            params['TableInfos'].each do |i|
              parsedtableinfonew_tmp = ParsedTableInfoNew.new
              parsedtableinfonew_tmp.deserialize(i)
              @TableInfos << parsedtableinfonew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 比较表格的Meta信息
      class CompareTablesInfo < TencentCloud::Common::AbstractModel
        # @param SrcTableClusterId: 源表格的集群id
        # @type SrcTableClusterId: String
        # @param SrcTableGroupId: 源表格的表格组id
        # @type SrcTableGroupId: String
        # @param SrcTableName: 源表格的表名
        # @type SrcTableName: String
        # @param DstTableClusterId: 目标表格的集群id
        # @type DstTableClusterId: String
        # @param DstTableGroupId: 目标表格的表格组id
        # @type DstTableGroupId: String
        # @param DstTableName: 目标表格的表名
        # @type DstTableName: String
        # @param SrcTableInstanceId: 源表格的实例id
        # @type SrcTableInstanceId: String
        # @param DstTableInstanceId: 目标表格的实例id
        # @type DstTableInstanceId: String

        attr_accessor :SrcTableClusterId, :SrcTableGroupId, :SrcTableName, :DstTableClusterId, :DstTableGroupId, :DstTableName, :SrcTableInstanceId, :DstTableInstanceId

        def initialize(srctableclusterid=nil, srctablegroupid=nil, srctablename=nil, dsttableclusterid=nil, dsttablegroupid=nil, dsttablename=nil, srctableinstanceid=nil, dsttableinstanceid=nil)
          @SrcTableClusterId = srctableclusterid
          @SrcTableGroupId = srctablegroupid
          @SrcTableName = srctablename
          @DstTableClusterId = dsttableclusterid
          @DstTableGroupId = dsttablegroupid
          @DstTableName = dsttablename
          @SrcTableInstanceId = srctableinstanceid
          @DstTableInstanceId = dsttableinstanceid
        end

        def deserialize(params)
          @SrcTableClusterId = params['SrcTableClusterId']
          @SrcTableGroupId = params['SrcTableGroupId']
          @SrcTableName = params['SrcTableName']
          @DstTableClusterId = params['DstTableClusterId']
          @DstTableGroupId = params['DstTableGroupId']
          @DstTableName = params['DstTableName']
          @SrcTableInstanceId = params['SrcTableInstanceId']
          @DstTableInstanceId = params['DstTableInstanceId']
        end
      end

      # CreateBackup请求参数结构体
      class CreateBackupRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待创建备份表所属集群ID
        # @type ClusterId: String
        # @param SelectedTables: 待创建备份表信息列表
        # @type SelectedTables: Array
        # @param Remark: 备注信息
        # @type Remark: String

        attr_accessor :ClusterId, :SelectedTables, :Remark

        def initialize(clusterid=nil, selectedtables=nil, remark=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
          @Remark = remark
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              selectedtableinfonew_tmp = SelectedTableInfoNew.new
              selectedtableinfonew_tmp.deserialize(i)
              @SelectedTables << selectedtableinfonew_tmp
            end
          end
          @Remark = params['Remark']
        end
      end

      # CreateBackup返回参数结构体
      class CreateBackupResponse < TencentCloud::Common::AbstractModel
        # @param TaskIds: 创建的备份任务ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskIds: Array
        # @param ApplicationIds: 创建的备份申请ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskIds, :ApplicationIds, :RequestId

        def initialize(taskids=nil, applicationids=nil, requestid=nil)
          @TaskIds = taskids
          @ApplicationIds = applicationids
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
          @ApplicationIds = params['ApplicationIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateCluster请求参数结构体
      class CreateClusterRequest < TencentCloud::Common::AbstractModel
        # @param IdlType: 集群数据描述语言类型，如：`PROTO`，`TDR`或`MIX`
        # @type IdlType: String
        # @param ClusterName: 集群名称，可使用中文或英文字符，最大长度32个字符
        # @type ClusterName: String
        # @param VpcId: 集群所绑定的私有网络实例ID，形如：vpc-f49l6u0z
        # @type VpcId: String
        # @param SubnetId: 集群所绑定的子网实例ID，形如：subnet-pxir56ns
        # @type SubnetId: String
        # @param Password: 集群访问密码，必须是a-zA-Z0-9的字符,且必须包含数字和大小写字母
        # @type Password: String
        # @param ResourceTags: 集群标签列表
        # @type ResourceTags: Array
        # @param Ipv6Enable: 集群是否开启IPv6功能
        # @type Ipv6Enable: Integer
        # @param ServerList: 独占集群占用的svr机器
        # @type ServerList: Array
        # @param ProxyList: 独占集群占用的proxy机器
        # @type ProxyList: Array
        # @param ClusterType: 集群类型1共享2独占
        # @type ClusterType: Integer
        # @param AuthType: 密码认证类型，0 静态认证， 1 签名认证
        # @type AuthType: Integer

        attr_accessor :IdlType, :ClusterName, :VpcId, :SubnetId, :Password, :ResourceTags, :Ipv6Enable, :ServerList, :ProxyList, :ClusterType, :AuthType

        def initialize(idltype=nil, clustername=nil, vpcid=nil, subnetid=nil, password=nil, resourcetags=nil, ipv6enable=nil, serverlist=nil, proxylist=nil, clustertype=nil, authtype=nil)
          @IdlType = idltype
          @ClusterName = clustername
          @VpcId = vpcid
          @SubnetId = subnetid
          @Password = password
          @ResourceTags = resourcetags
          @Ipv6Enable = ipv6enable
          @ServerList = serverlist
          @ProxyList = proxylist
          @ClusterType = clustertype
          @AuthType = authtype
        end

        def deserialize(params)
          @IdlType = params['IdlType']
          @ClusterName = params['ClusterName']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Password = params['Password']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              taginfounit_tmp = TagInfoUnit.new
              taginfounit_tmp.deserialize(i)
              @ResourceTags << taginfounit_tmp
            end
          end
          @Ipv6Enable = params['Ipv6Enable']
          unless params['ServerList'].nil?
            @ServerList = []
            params['ServerList'].each do |i|
              machineinfo_tmp = MachineInfo.new
              machineinfo_tmp.deserialize(i)
              @ServerList << machineinfo_tmp
            end
          end
          unless params['ProxyList'].nil?
            @ProxyList = []
            params['ProxyList'].each do |i|
              machineinfo_tmp = MachineInfo.new
              machineinfo_tmp.deserialize(i)
              @ProxyList << machineinfo_tmp
            end
          end
          @ClusterType = params['ClusterType']
          @AuthType = params['AuthType']
        end
      end

      # CreateCluster返回参数结构体
      class CreateClusterResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterId, :RequestId

        def initialize(clusterid=nil, requestid=nil)
          @ClusterId = clusterid
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSnapshots请求参数结构体
      class CreateSnapshotsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表格所属集群id
        # @type ClusterId: String
        # @param SelectedTables: 快照列表
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :SelectedTables

        def initialize(clusterid=nil, selectedtables=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              snapshotinfo_tmp = SnapshotInfo.new
              snapshotinfo_tmp.deserialize(i)
              @SelectedTables << snapshotinfo_tmp
            end
          end
        end
      end

      # CreateSnapshots返回参数结构体
      class CreateSnapshotsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 批量创建的快照数量
        # @type TotalCount: Integer
        # @param TableResults: 批量创建的快照结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId

        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableResults'].nil?
            @TableResults = []
            params['TableResults'].each do |i|
              snapshotresult_tmp = SnapshotResult.new
              snapshotresult_tmp.deserialize(i)
              @TableResults << snapshotresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateTableGroup请求参数结构体
      class CreateTableGroupRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表格组所属集群ID
        # @type ClusterId: String
        # @param TableGroupName: 表格组名称，可以采用中文、英文或数字字符，最大长度32个字符
        # @type TableGroupName: String
        # @param TableGroupId: 表格组ID，可以由用户指定，但在同一个集群内不能重复，如果不指定则采用自增的模式
        # @type TableGroupId: String
        # @param ResourceTags: 表格组标签列表
        # @type ResourceTags: Array

        attr_accessor :ClusterId, :TableGroupName, :TableGroupId, :ResourceTags

        def initialize(clusterid=nil, tablegroupname=nil, tablegroupid=nil, resourcetags=nil)
          @ClusterId = clusterid
          @TableGroupName = tablegroupname
          @TableGroupId = tablegroupid
          @ResourceTags = resourcetags
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupName = params['TableGroupName']
          @TableGroupId = params['TableGroupId']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              taginfounit_tmp = TagInfoUnit.new
              taginfounit_tmp.deserialize(i)
              @ResourceTags << taginfounit_tmp
            end
          end
        end
      end

      # CreateTableGroup返回参数结构体
      class CreateTableGroupResponse < TencentCloud::Common::AbstractModel
        # @param TableGroupId: 创建成功的表格组ID
        # @type TableGroupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TableGroupId, :RequestId

        def initialize(tablegroupid=nil, requestid=nil)
          @TableGroupId = tablegroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @TableGroupId = params['TableGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTables请求参数结构体
      class CreateTablesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待创建表格所属集群ID
        # @type ClusterId: String
        # @param IdlFiles: 用户选定的建表格IDL文件列表
        # @type IdlFiles: Array
        # @param SelectedTables: 待创建表格信息列表
        # @type SelectedTables: Array
        # @param ResourceTags: 表格标签列表
        # @type ResourceTags: Array

        attr_accessor :ClusterId, :IdlFiles, :SelectedTables, :ResourceTags

        def initialize(clusterid=nil, idlfiles=nil, selectedtables=nil, resourcetags=nil)
          @ClusterId = clusterid
          @IdlFiles = idlfiles
          @SelectedTables = selectedtables
          @ResourceTags = resourcetags
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['IdlFiles'].nil?
            @IdlFiles = []
            params['IdlFiles'].each do |i|
              idlfileinfo_tmp = IdlFileInfo.new
              idlfileinfo_tmp.deserialize(i)
              @IdlFiles << idlfileinfo_tmp
            end
          end
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              selectedtableinfonew_tmp = SelectedTableInfoNew.new
              selectedtableinfonew_tmp.deserialize(i)
              @SelectedTables << selectedtableinfonew_tmp
            end
          end
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              taginfounit_tmp = TagInfoUnit.new
              taginfounit_tmp.deserialize(i)
              @ResourceTags << taginfounit_tmp
            end
          end
        end
      end

      # CreateTables返回参数结构体
      class CreateTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 批量创建表格结果数量
        # @type TotalCount: Integer
        # @param TableResults: 批量创建表格结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId

        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableResults'].nil?
            @TableResults = []
            params['TableResults'].each do |i|
              tableresultnew_tmp = TableResultNew.new
              tableresultnew_tmp.deserialize(i)
              @TableResults << tableresultnew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteBackupRecords请求参数结构体
      class DeleteBackupRecordsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待删除备份记录的所在集群ID
        # @type ClusterId: String
        # @param BackupRecords: 待删除备份记录的详情
        # @type BackupRecords: Array

        attr_accessor :ClusterId, :BackupRecords

        def initialize(clusterid=nil, backuprecords=nil)
          @ClusterId = clusterid
          @BackupRecords = backuprecords
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['BackupRecords'].nil?
            @BackupRecords = []
            params['BackupRecords'].each do |i|
              backuprecords_tmp = BackupRecords.new
              backuprecords_tmp.deserialize(i)
              @BackupRecords << backuprecords_tmp
            end
          end
        end
      end

      # DeleteBackupRecords返回参数结构体
      class DeleteBackupRecordsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: TaskId由 AppInstanceId-taskId 组成，以区分不同集群的任务
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DeleteCluster请求参数结构体
      class DeleteClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待删除的集群ID
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
        # @param TaskId: 删除集群生成的任务ID
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

      # DeleteIdlFiles请求参数结构体
      class DeleteIdlFilesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: IDL所属集群ID
        # @type ClusterId: String
        # @param IdlFiles: 待删除的IDL文件信息列表
        # @type IdlFiles: Array

        attr_accessor :ClusterId, :IdlFiles

        def initialize(clusterid=nil, idlfiles=nil)
          @ClusterId = clusterid
          @IdlFiles = idlfiles
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['IdlFiles'].nil?
            @IdlFiles = []
            params['IdlFiles'].each do |i|
              idlfileinfo_tmp = IdlFileInfo.new
              idlfileinfo_tmp.deserialize(i)
              @IdlFiles << idlfileinfo_tmp
            end
          end
        end
      end

      # DeleteIdlFiles返回参数结构体
      class DeleteIdlFilesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 结果记录数量
        # @type TotalCount: Integer
        # @param IdlFileInfos: 删除结果
        # @type IdlFileInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :IdlFileInfos, :RequestId

        def initialize(totalcount=nil, idlfileinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @IdlFileInfos = idlfileinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['IdlFileInfos'].nil?
            @IdlFileInfos = []
            params['IdlFileInfos'].each do |i|
              idlfileinfowithoutcontent_tmp = IdlFileInfoWithoutContent.new
              idlfileinfowithoutcontent_tmp.deserialize(i)
              @IdlFileInfos << idlfileinfowithoutcontent_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteSnapshots请求参数结构体
      class DeleteSnapshotsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表格所属集群id
        # @type ClusterId: String
        # @param SelectedTables: 删除的快照列表
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :SelectedTables

        def initialize(clusterid=nil, selectedtables=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              snapshotinfonew_tmp = SnapshotInfoNew.new
              snapshotinfonew_tmp.deserialize(i)
              @SelectedTables << snapshotinfonew_tmp
            end
          end
        end
      end

      # DeleteSnapshots返回参数结构体
      class DeleteSnapshotsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 批量删除的快照数量
        # @type TotalCount: Integer
        # @param TableResults: 批量删除的快照结果
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId

        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableResults'].nil?
            @TableResults = []
            params['TableResults'].each do |i|
              snapshotresult_tmp = SnapshotResult.new
              snapshotresult_tmp.deserialize(i)
              @TableResults << snapshotresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteTableDataFlow请求参数结构体
      class DeleteTableDataFlowRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表格所属集群实例ID
        # @type ClusterId: String
        # @param SelectedTables: 待删除分布式索引的表格列表
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :SelectedTables

        def initialize(clusterid=nil, selectedtables=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              selectedtableinfonew_tmp = SelectedTableInfoNew.new
              selectedtableinfonew_tmp.deserialize(i)
              @SelectedTables << selectedtableinfonew_tmp
            end
          end
        end
      end

      # DeleteTableDataFlow返回参数结构体
      class DeleteTableDataFlowResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 删除表格分布式索引结果数量
        # @type TotalCount: Integer
        # @param TableResults: 删除表格分布式索引结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId

        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableResults'].nil?
            @TableResults = []
            params['TableResults'].each do |i|
              tableresultnew_tmp = TableResultNew.new
              tableresultnew_tmp.deserialize(i)
              @TableResults << tableresultnew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteTableGroup请求参数结构体
      class DeleteTableGroupRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表格组所属的集群ID
        # @type ClusterId: String
        # @param TableGroupId: 表格组ID
        # @type TableGroupId: String

        attr_accessor :ClusterId, :TableGroupId

        def initialize(clusterid=nil, tablegroupid=nil)
          @ClusterId = clusterid
          @TableGroupId = tablegroupid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupId = params['TableGroupId']
        end
      end

      # DeleteTableGroup返回参数结构体
      class DeleteTableGroupResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 删除表格组所创建的任务ID
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

      # DeleteTableIndex请求参数结构体
      class DeleteTableIndexRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表格所属集群实例ID
        # @type ClusterId: String
        # @param SelectedTables: 待删除分布式索引的表格列表
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :SelectedTables

        def initialize(clusterid=nil, selectedtables=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              selectedtableinfonew_tmp = SelectedTableInfoNew.new
              selectedtableinfonew_tmp.deserialize(i)
              @SelectedTables << selectedtableinfonew_tmp
            end
          end
        end
      end

      # DeleteTableIndex返回参数结构体
      class DeleteTableIndexResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 删除表格分布式索引结果数量
        # @type TotalCount: Integer
        # @param TableResults: 删除表格分布式索引结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId

        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableResults'].nil?
            @TableResults = []
            params['TableResults'].each do |i|
              tableresultnew_tmp = TableResultNew.new
              tableresultnew_tmp.deserialize(i)
              @TableResults << tableresultnew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteTables请求参数结构体
      class DeleteTablesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待删除表所在集群ID
        # @type ClusterId: String
        # @param SelectedTables: 待删除表信息列表
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :SelectedTables

        def initialize(clusterid=nil, selectedtables=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              selectedtableinfonew_tmp = SelectedTableInfoNew.new
              selectedtableinfonew_tmp.deserialize(i)
              @SelectedTables << selectedtableinfonew_tmp
            end
          end
        end
      end

      # DeleteTables返回参数结构体
      class DeleteTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 删除表结果数量
        # @type TotalCount: Integer
        # @param TableResults: 删除表结果详情列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId

        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableResults'].nil?
            @TableResults = []
            params['TableResults'].each do |i|
              tableresultnew_tmp = TableResultNew.new
              tableresultnew_tmp.deserialize(i)
              @TableResults << tableresultnew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplications请求参数结构体
      class DescribeApplicationsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID，用于获取指定集群的单据
        # @type ClusterId: String
        # @param Limit: 分页，限制当前返回多少条记录，大于等于10
        # @type Limit: Integer
        # @param Offset: 分页，从多少条数据开始返回
        # @type Offset: Integer
        # @param CensorStatus: 申请单状态，用于过滤，0-待审核 1-已经审核并提交任务 2-已驳回
        # @type CensorStatus: Integer
        # @param TableGroupId: 表格组id，用于过滤
        # @type TableGroupId: String
        # @param TableName: 表格名，用于过滤
        # @type TableName: String
        # @param Applicant: 申请人uin，用于过滤
        # @type Applicant: String
        # @param ApplyType: 申请类型，用于过滤，0加表 1删除表 2清理表 3修改表 4表重建 5存储层扩缩容 6接入层扩缩容 7复制表数据 8key回档
        # @type ApplyType: Integer

        attr_accessor :ClusterId, :Limit, :Offset, :CensorStatus, :TableGroupId, :TableName, :Applicant, :ApplyType

        def initialize(clusterid=nil, limit=nil, offset=nil, censorstatus=nil, tablegroupid=nil, tablename=nil, applicant=nil, applytype=nil)
          @ClusterId = clusterid
          @Limit = limit
          @Offset = offset
          @CensorStatus = censorstatus
          @TableGroupId = tablegroupid
          @TableName = tablename
          @Applicant = applicant
          @ApplyType = applytype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @CensorStatus = params['CensorStatus']
          @TableGroupId = params['TableGroupId']
          @TableName = params['TableName']
          @Applicant = params['Applicant']
          @ApplyType = params['ApplyType']
        end
      end

      # DescribeApplications返回参数结构体
      class DescribeApplicationsResponse < TencentCloud::Common::AbstractModel
        # @param Applications: 申请单列表
        # @type Applications: Array
        # @param TotalCount: 申请单个数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Applications, :TotalCount, :RequestId

        def initialize(applications=nil, totalcount=nil, requestid=nil)
          @Applications = applications
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Applications'].nil?
            @Applications = []
            params['Applications'].each do |i|
              application_tmp = Application.new
              application_tmp.deserialize(i)
              @Applications << application_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupRecords请求参数结构体
      class DescribeBackupRecordsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID，用于获取指定集群的单据
        # @type ClusterId: String
        # @param Limit: 分页
        # @type Limit: Integer
        # @param Offset: 分页
        # @type Offset: Integer
        # @param TableGroupId: 表格组id，用于过滤
        # @type TableGroupId: String
        # @param TableName: 表格名，用于过滤
        # @type TableName: String

        attr_accessor :ClusterId, :Limit, :Offset, :TableGroupId, :TableName

        def initialize(clusterid=nil, limit=nil, offset=nil, tablegroupid=nil, tablename=nil)
          @ClusterId = clusterid
          @Limit = limit
          @Offset = offset
          @TableGroupId = tablegroupid
          @TableName = tablename
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @TableGroupId = params['TableGroupId']
          @TableName = params['TableName']
        end
      end

      # DescribeBackupRecords返回参数结构体
      class DescribeBackupRecordsResponse < TencentCloud::Common::AbstractModel
        # @param BackupRecords: 备份记录详情
        # @type BackupRecords: Array
        # @param TotalCount: 返回记录条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupRecords, :TotalCount, :RequestId

        def initialize(backuprecords=nil, totalcount=nil, requestid=nil)
          @BackupRecords = backuprecords
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BackupRecords'].nil?
            @BackupRecords = []
            params['BackupRecords'].each do |i|
              backuprecords_tmp = BackupRecords.new
              backuprecords_tmp.deserialize(i)
              @BackupRecords << backuprecords_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterTags请求参数结构体
      class DescribeClusterTagsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIds: 集群ID列表
        # @type ClusterIds: Array

        attr_accessor :ClusterIds

        def initialize(clusterids=nil)
          @ClusterIds = clusterids
        end

        def deserialize(params)
          @ClusterIds = params['ClusterIds']
        end
      end

      # DescribeClusterTags返回参数结构体
      class DescribeClusterTagsResponse < TencentCloud::Common::AbstractModel
        # @param Rows: 集群标签信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rows: Array
        # @param TotalCount: 返回结果个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rows, :TotalCount, :RequestId

        def initialize(rows=nil, totalcount=nil, requestid=nil)
          @Rows = rows
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rows'].nil?
            @Rows = []
            params['Rows'].each do |i|
              tagsinfoofcluster_tmp = TagsInfoOfCluster.new
              tagsinfoofcluster_tmp.deserialize(i)
              @Rows << tagsinfoofcluster_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusters请求参数结构体
      class DescribeClustersRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIds: 指定查询的集群ID列表
        # @type ClusterIds: Array
        # @param Filters: 查询过滤条件
        # @type Filters: Array
        # @param Offset: 查询列表偏移量
        # @type Offset: Integer
        # @param Limit: 查询列表返回记录数，默认值20
        # @type Limit: Integer
        # @param Ipv6Enable: 是否启用Ipv6
        # @type Ipv6Enable: Integer

        attr_accessor :ClusterIds, :Filters, :Offset, :Limit, :Ipv6Enable

        def initialize(clusterids=nil, filters=nil, offset=nil, limit=nil, ipv6enable=nil)
          @ClusterIds = clusterids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Ipv6Enable = ipv6enable
        end

        def deserialize(params)
          @ClusterIds = params['ClusterIds']
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
          @Ipv6Enable = params['Ipv6Enable']
        end
      end

      # DescribeClusters返回参数结构体
      class DescribeClustersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集群实例数
        # @type TotalCount: Integer
        # @param Clusters: 集群实例列表
        # @type Clusters: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Clusters, :RequestId

        def initialize(totalcount=nil, clusters=nil, requestid=nil)
          @TotalCount = totalcount
          @Clusters = clusters
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Clusters'].nil?
            @Clusters = []
            params['Clusters'].each do |i|
              clusterinfo_tmp = ClusterInfo.new
              clusterinfo_tmp.deserialize(i)
              @Clusters << clusterinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIdlFileInfos请求参数结构体
      class DescribeIdlFileInfosRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 文件所属集群ID
        # @type ClusterId: String
        # @param TableGroupIds: 文件所属表格组ID
        # @type TableGroupIds: Array
        # @param IdlFileIds: 指定文件ID列表
        # @type IdlFileIds: Array
        # @param Offset: 查询列表偏移量
        # @type Offset: Integer
        # @param Limit: 查询列表返回记录数
        # @type Limit: Integer

        attr_accessor :ClusterId, :TableGroupIds, :IdlFileIds, :Offset, :Limit

        def initialize(clusterid=nil, tablegroupids=nil, idlfileids=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @TableGroupIds = tablegroupids
          @IdlFileIds = idlfileids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupIds = params['TableGroupIds']
          @IdlFileIds = params['IdlFileIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeIdlFileInfos返回参数结构体
      class DescribeIdlFileInfosResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 文件数量
        # @type TotalCount: Integer
        # @param IdlFileInfos: 文件详情列表
        # @type IdlFileInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :IdlFileInfos, :RequestId

        def initialize(totalcount=nil, idlfileinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @IdlFileInfos = idlfileinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['IdlFileInfos'].nil?
            @IdlFileInfos = []
            params['IdlFileInfos'].each do |i|
              idlfileinfo_tmp = IdlFileInfo.new
              idlfileinfo_tmp.deserialize(i)
              @IdlFileInfos << idlfileinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMachine请求参数结构体
      class DescribeMachineRequest < TencentCloud::Common::AbstractModel
        # @param Ipv6Enable: 不为0，表示查询支持ipv6的机器
        # @type Ipv6Enable: Integer

        attr_accessor :Ipv6Enable

        def initialize(ipv6enable=nil)
          @Ipv6Enable = ipv6enable
        end

        def deserialize(params)
          @Ipv6Enable = params['Ipv6Enable']
        end
      end

      # DescribeMachine返回参数结构体
      class DescribeMachineResponse < TencentCloud::Common::AbstractModel
        # @param PoolList: 独占机器资源列表
        # @type PoolList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PoolList, :RequestId

        def initialize(poollist=nil, requestid=nil)
          @PoolList = poollist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PoolList'].nil?
            @PoolList = []
            params['PoolList'].each do |i|
              poolinfo_tmp = PoolInfo.new
              poolinfo_tmp.deserialize(i)
              @PoolList << poolinfo_tmp
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
        # @param TotalCount: 可用区详情结果数量
        # @type TotalCount: Integer
        # @param RegionInfos: 可用区详情结果列表
        # @type RegionInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RegionInfos, :RequestId

        def initialize(totalcount=nil, regioninfos=nil, requestid=nil)
          @TotalCount = totalcount
          @RegionInfos = regioninfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RegionInfos'].nil?
            @RegionInfos = []
            params['RegionInfos'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @RegionInfos << regioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSnapshots请求参数结构体
      class DescribeSnapshotsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表格所属集群id
        # @type ClusterId: String
        # @param TableGroupId: 所属表格组ID
        # @type TableGroupId: String
        # @param TableName: 表名称
        # @type TableName: String
        # @param SnapshotName: 快照名称
        # @type SnapshotName: String
        # @param SelectedTables: 批量拉取快照的表格列表
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :TableGroupId, :TableName, :SnapshotName, :SelectedTables

        def initialize(clusterid=nil, tablegroupid=nil, tablename=nil, snapshotname=nil, selectedtables=nil)
          @ClusterId = clusterid
          @TableGroupId = tablegroupid
          @TableName = tablename
          @SnapshotName = snapshotname
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupId = params['TableGroupId']
          @TableName = params['TableName']
          @SnapshotName = params['SnapshotName']
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              selectedtableinfonew_tmp = SelectedTableInfoNew.new
              selectedtableinfonew_tmp.deserialize(i)
              @SelectedTables << selectedtableinfonew_tmp
            end
          end
        end
      end

      # DescribeSnapshots返回参数结构体
      class DescribeSnapshotsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 快照数量
        # @type TotalCount: Integer
        # @param TableResults: 快照结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId

        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableResults'].nil?
            @TableResults = []
            params['TableResults'].each do |i|
              snapshotresult_tmp = SnapshotResult.new
              snapshotresult_tmp.deserialize(i)
              @TableResults << snapshotresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTableGroupTags请求参数结构体
      class DescribeTableGroupTagsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待查询标签表格组所属集群ID
        # @type ClusterId: String
        # @param TableGroupIds: 待查询标签表格组ID列表
        # @type TableGroupIds: Array

        attr_accessor :ClusterId, :TableGroupIds

        def initialize(clusterid=nil, tablegroupids=nil)
          @ClusterId = clusterid
          @TableGroupIds = tablegroupids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupIds = params['TableGroupIds']
        end
      end

      # DescribeTableGroupTags返回参数结构体
      class DescribeTableGroupTagsResponse < TencentCloud::Common::AbstractModel
        # @param Rows: 表格组标签信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rows: Array
        # @param TotalCount: 返回结果个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rows, :TotalCount, :RequestId

        def initialize(rows=nil, totalcount=nil, requestid=nil)
          @Rows = rows
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rows'].nil?
            @Rows = []
            params['Rows'].each do |i|
              tagsinfooftablegroup_tmp = TagsInfoOfTableGroup.new
              tagsinfooftablegroup_tmp.deserialize(i)
              @Rows << tagsinfooftablegroup_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTableGroups请求参数结构体
      class DescribeTableGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表格组所属集群ID
        # @type ClusterId: String
        # @param TableGroupIds: 表格组ID列表
        # @type TableGroupIds: Array
        # @param Filters: 过滤条件，本接口支持：TableGroupName，TableGroupId
        # @type Filters: Array
        # @param Offset: 查询列表偏移量
        # @type Offset: Integer
        # @param Limit: 查询列表返回记录数
        # @type Limit: Integer

        attr_accessor :ClusterId, :TableGroupIds, :Filters, :Offset, :Limit

        def initialize(clusterid=nil, tablegroupids=nil, filters=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @TableGroupIds = tablegroupids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupIds = params['TableGroupIds']
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

      # DescribeTableGroups返回参数结构体
      class DescribeTableGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 表格组数量
        # @type TotalCount: Integer
        # @param TableGroups: 表格组信息列表
        # @type TableGroups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableGroups, :RequestId

        def initialize(totalcount=nil, tablegroups=nil, requestid=nil)
          @TotalCount = totalcount
          @TableGroups = tablegroups
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableGroups'].nil?
            @TableGroups = []
            params['TableGroups'].each do |i|
              tablegroupinfo_tmp = TableGroupInfo.new
              tablegroupinfo_tmp.deserialize(i)
              @TableGroups << tablegroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTableTags请求参数结构体
      class DescribeTableTagsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表格所属集群ID
        # @type ClusterId: String
        # @param SelectedTables: 表格列表
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :SelectedTables

        def initialize(clusterid=nil, selectedtables=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              selectedtableinfonew_tmp = SelectedTableInfoNew.new
              selectedtableinfonew_tmp.deserialize(i)
              @SelectedTables << selectedtableinfonew_tmp
            end
          end
        end
      end

      # DescribeTableTags返回参数结构体
      class DescribeTableTagsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回结果总数
        # @type TotalCount: Integer
        # @param Rows: 表格标签信息列表
        # @type Rows: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Rows, :RequestId

        def initialize(totalcount=nil, rows=nil, requestid=nil)
          @TotalCount = totalcount
          @Rows = rows
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Rows'].nil?
            @Rows = []
            params['Rows'].each do |i|
              tagsinfooftable_tmp = TagsInfoOfTable.new
              tagsinfooftable_tmp.deserialize(i)
              @Rows << tagsinfooftable_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTablesInRecycle请求参数结构体
      class DescribeTablesInRecycleRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待查询表格所属集群ID
        # @type ClusterId: String
        # @param TableGroupIds: 待查询表格所属表格组ID列表
        # @type TableGroupIds: Array
        # @param Filters: 过滤条件，本接口支持：TableName，TableInstanceId
        # @type Filters: Array
        # @param Offset: 查询结果偏移量
        # @type Offset: Integer
        # @param Limit: 查询结果返回记录数量
        # @type Limit: Integer

        attr_accessor :ClusterId, :TableGroupIds, :Filters, :Offset, :Limit

        def initialize(clusterid=nil, tablegroupids=nil, filters=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @TableGroupIds = tablegroupids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupIds = params['TableGroupIds']
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

      # DescribeTablesInRecycle返回参数结构体
      class DescribeTablesInRecycleResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 表格数量
        # @type TotalCount: Integer
        # @param TableInfos: 表格详情结果列表
        # @type TableInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableInfos, :RequestId

        def initialize(totalcount=nil, tableinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @TableInfos = tableinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableInfos'].nil?
            @TableInfos = []
            params['TableInfos'].each do |i|
              tableinfonew_tmp = TableInfoNew.new
              tableinfonew_tmp.deserialize(i)
              @TableInfos << tableinfonew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTables请求参数结构体
      class DescribeTablesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待查询表格所属集群ID
        # @type ClusterId: String
        # @param TableGroupIds: 待查询表格所属表格组ID列表
        # @type TableGroupIds: Array
        # @param SelectedTables: 待查询表格信息列表，用户不用关注，过滤请使用filter
        # @type SelectedTables: Array
        # @param Filters: 过滤条件，本接口支持：TableName，TableInstanceId
        # @type Filters: Array
        # @param Offset: 查询结果偏移量
        # @type Offset: Integer
        # @param Limit: 查询结果返回记录数量
        # @type Limit: Integer

        attr_accessor :ClusterId, :TableGroupIds, :SelectedTables, :Filters, :Offset, :Limit

        def initialize(clusterid=nil, tablegroupids=nil, selectedtables=nil, filters=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @TableGroupIds = tablegroupids
          @SelectedTables = selectedtables
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupIds = params['TableGroupIds']
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              selectedtableinfonew_tmp = SelectedTableInfoNew.new
              selectedtableinfonew_tmp.deserialize(i)
              @SelectedTables << selectedtableinfonew_tmp
            end
          end
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

      # DescribeTables返回参数结构体
      class DescribeTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 表格数量
        # @type TotalCount: Integer
        # @param TableInfos: 表格详情结果列表
        # @type TableInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableInfos, :RequestId

        def initialize(totalcount=nil, tableinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @TableInfos = tableinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableInfos'].nil?
            @TableInfos = []
            params['TableInfos'].each do |i|
              tableinfonew_tmp = TableInfoNew.new
              tableinfonew_tmp.deserialize(i)
              @TableInfos << tableinfonew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasks请求参数结构体
      class DescribeTasksRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIds: 需要查询任务所属的集群ID列表
        # @type ClusterIds: Array
        # @param TaskIds: 需要查询的任务ID列表
        # @type TaskIds: Array
        # @param Filters: 过滤条件，本接口支持：Content，TaskType, Operator, Time
        # @type Filters: Array
        # @param Offset: 查询列表偏移量
        # @type Offset: Integer
        # @param Limit: 查询列表返回记录数
        # @type Limit: Integer

        attr_accessor :ClusterIds, :TaskIds, :Filters, :Offset, :Limit

        def initialize(clusterids=nil, taskids=nil, filters=nil, offset=nil, limit=nil)
          @ClusterIds = clusterids
          @TaskIds = taskids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterIds = params['ClusterIds']
          @TaskIds = params['TaskIds']
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

      # DescribeTasks返回参数结构体
      class DescribeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 任务数量
        # @type TotalCount: Integer
        # @param TaskInfos: 查询到的任务详情列表
        # @type TaskInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TaskInfos, :RequestId

        def initialize(totalcount=nil, taskinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @TaskInfos = taskinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TaskInfos'].nil?
            @TaskInfos = []
            params['TaskInfos'].each do |i|
              taskinfonew_tmp = TaskInfoNew.new
              taskinfonew_tmp.deserialize(i)
              @TaskInfos << taskinfonew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUinInWhitelist请求参数结构体
      class DescribeUinInWhitelistRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeUinInWhitelist返回参数结构体
      class DescribeUinInWhitelistResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询结果：`FALSE` 否；`TRUE` 是
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DisableRestProxy请求参数结构体
      class DisableRestProxyRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 对应appid
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DisableRestProxy返回参数结构体
      class DisableRestProxyResponse < TencentCloud::Common::AbstractModel
        # @param RestProxyStatus: RestProxy的状态，0为关闭，1为开启中，2为开启，3为关闭中
        # @type RestProxyStatus: Integer
        # @param TaskId: TaskId由 AppInstanceId-taskId 组成，以区分不同集群的任务
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RestProxyStatus, :TaskId, :RequestId

        def initialize(restproxystatus=nil, taskid=nil, requestid=nil)
          @RestProxyStatus = restproxystatus
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @RestProxyStatus = params['RestProxyStatus']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # EnableRestProxy请求参数结构体
      class EnableRestProxyRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 对应于appid
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # EnableRestProxy返回参数结构体
      class EnableRestProxyResponse < TencentCloud::Common::AbstractModel
        # @param RestProxyStatus: RestProxy的状态，0为关闭，1为开启中，2为开启，3为关闭中
        # @type RestProxyStatus: Integer
        # @param TaskId: TaskId由 AppInstanceId-taskId 组成，以区分不同集群的任务
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RestProxyStatus, :TaskId, :RequestId

        def initialize(restproxystatus=nil, taskid=nil, requestid=nil)
          @RestProxyStatus = restproxystatus
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @RestProxyStatus = params['RestProxyStatus']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 描述每个实例（应用，大区或表）处理过程中可能出现的错误详情。
      class ErrorInfo < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # @type Code: String
        # @param Message: 错误信息
        # @type Message: String

        attr_accessor :Code, :Message

        def initialize(code=nil, message=nil)
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
        end
      end

      # 表格字段信息列表
      class FieldInfo < TencentCloud::Common::AbstractModel
        # @param FieldName: 表格字段名称
        # @type FieldName: String
        # @param IsPrimaryKey: 字段是否是主键字段
        # @type IsPrimaryKey: String
        # @param FieldType: 字段类型
        # @type FieldType: String
        # @param FieldSize: 字段长度
        # @type FieldSize: Integer

        attr_accessor :FieldName, :IsPrimaryKey, :FieldType, :FieldSize

        def initialize(fieldname=nil, isprimarykey=nil, fieldtype=nil, fieldsize=nil)
          @FieldName = fieldname
          @IsPrimaryKey = isprimarykey
          @FieldType = fieldtype
          @FieldSize = fieldsize
        end

        def deserialize(params)
          @FieldName = params['FieldName']
          @IsPrimaryKey = params['IsPrimaryKey']
          @FieldType = params['FieldType']
          @FieldSize = params['FieldSize']
        end
      end

      # 过滤条件
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名
        # @type Name: String
        # @param Value: 过滤字段值
        # @type Value: String
        # @param Values: 过滤字段值
        # @type Values: Array

        attr_accessor :Name, :Value, :Values

        def initialize(name=nil, value=nil, values=nil)
          @Name = name
          @Value = value
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          @Values = params['Values']
        end
      end

      # 表定义描述文件详情，包含文件内容
      class IdlFileInfo < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名称，不包含扩展名
        # @type FileName: String
        # @param FileType: 数据描述语言（IDL）类型
        # @type FileType: String
        # @param FileExtType: 文件扩展名
        # @type FileExtType: String
        # @param FileSize: 文件大小（Bytes）
        # @type FileSize: Integer
        # @param FileId: 文件ID，对于已上传的文件有意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileId: Integer
        # @param FileContent: 文件内容，对于本次新上传的文件有意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileContent: String

        attr_accessor :FileName, :FileType, :FileExtType, :FileSize, :FileId, :FileContent

        def initialize(filename=nil, filetype=nil, fileexttype=nil, filesize=nil, fileid=nil, filecontent=nil)
          @FileName = filename
          @FileType = filetype
          @FileExtType = fileexttype
          @FileSize = filesize
          @FileId = fileid
          @FileContent = filecontent
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileType = params['FileType']
          @FileExtType = params['FileExtType']
          @FileSize = params['FileSize']
          @FileId = params['FileId']
          @FileContent = params['FileContent']
        end
      end

      # 表定义描述文件详情，不包含文件内容
      class IdlFileInfoWithoutContent < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名称，不包含扩展名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param FileType: 数据描述语言（IDL）类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileType: String
        # @param FileExtType: 文件扩展名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileExtType: String
        # @param FileSize: 文件大小（Bytes）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSize: Integer
        # @param FileId: 文件ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileId: Integer
        # @param Error: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`

        attr_accessor :FileName, :FileType, :FileExtType, :FileSize, :FileId, :Error

        def initialize(filename=nil, filetype=nil, fileexttype=nil, filesize=nil, fileid=nil, error=nil)
          @FileName = filename
          @FileType = filetype
          @FileExtType = fileexttype
          @FileSize = filesize
          @FileId = fileid
          @Error = error
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileType = params['FileType']
          @FileExtType = params['FileExtType']
          @FileSize = params['FileSize']
          @FileId = params['FileId']
          unless params['Error'].nil?
            @Error = ErrorInfo.new
            @Error.deserialize(params['Error'])
          end
        end
      end

      # ImportSnapshots请求参数结构体
      class ImportSnapshotsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表格所属的集群id
        # @type ClusterId: String
        # @param Snapshots: 用于导入的快照信息
        # @type Snapshots: :class:`Tencentcloud::Tcaplusdb.v20190823.models.SnapshotInfo`
        # @param ImportSpecialKey: 是否导入部分记录，TRUE表示导入部分记录，FALSE表示全表导入
        # @type ImportSpecialKey: String
        # @param ImportOriginTable: 是否导入到当前表，TRUE表示导入到当前表，FALSE表示导入到新表
        # @type ImportOriginTable: String
        # @param KeyFile: 部分记录的key文件
        # @type KeyFile: :class:`Tencentcloud::Tcaplusdb.v20190823.models.KeyFile`
        # @param NewTableGroupId: 如果导入到新表，此为新表所属的表格组id
        # @type NewTableGroupId: String
        # @param NewTableName: 如果导入到新表，此为新表的表名，系统会以该名称自动创建一张结构相同的空表
        # @type NewTableName: String

        attr_accessor :ClusterId, :Snapshots, :ImportSpecialKey, :ImportOriginTable, :KeyFile, :NewTableGroupId, :NewTableName

        def initialize(clusterid=nil, snapshots=nil, importspecialkey=nil, importorigintable=nil, keyfile=nil, newtablegroupid=nil, newtablename=nil)
          @ClusterId = clusterid
          @Snapshots = snapshots
          @ImportSpecialKey = importspecialkey
          @ImportOriginTable = importorigintable
          @KeyFile = keyfile
          @NewTableGroupId = newtablegroupid
          @NewTableName = newtablename
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['Snapshots'].nil?
            @Snapshots = SnapshotInfo.new
            @Snapshots.deserialize(params['Snapshots'])
          end
          @ImportSpecialKey = params['ImportSpecialKey']
          @ImportOriginTable = params['ImportOriginTable']
          unless params['KeyFile'].nil?
            @KeyFile = KeyFile.new
            @KeyFile.deserialize(params['KeyFile'])
          end
          @NewTableGroupId = params['NewTableGroupId']
          @NewTableName = params['NewTableName']
        end
      end

      # ImportSnapshots返回参数结构体
      class ImportSnapshotsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: TaskId由 AppInstanceId-taskId 组成，以区分不同集群的任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param ApplicationId: ApplicationId由 AppInstanceId-applicationId 组成，以区分不同集群的申请
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :ApplicationId, :RequestId

        def initialize(taskid=nil, applicationid=nil, requestid=nil)
          @TaskId = taskid
          @ApplicationId = applicationid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ApplicationId = params['ApplicationId']
          @RequestId = params['RequestId']
        end
      end

      # ckafka地址信息
      class KafkaInfo < TencentCloud::Common::AbstractModel
        # @param Address: Kafka address
        # @type Address: String
        # @param Topic: Kafka topic
        # @type Topic: String
        # @param User: kafka username
        # @type User: String
        # @param Password: kafka password
        # @type Password: String
        # @param Instance: ckafka实例
        # @type Instance: String
        # @param IsVpc: 是否走VPC
        # @type IsVpc: Integer

        attr_accessor :Address, :Topic, :User, :Password, :Instance, :IsVpc

        def initialize(address=nil, topic=nil, user=nil, password=nil, instance=nil, isvpc=nil)
          @Address = address
          @Topic = topic
          @User = user
          @Password = password
          @Instance = instance
          @IsVpc = isvpc
        end

        def deserialize(params)
          @Address = params['Address']
          @Topic = params['Topic']
          @User = params['User']
          @Password = params['Password']
          @Instance = params['Instance']
          @IsVpc = params['IsVpc']
        end
      end

      # 部分key导入快照数据时所需要的key文件
      class KeyFile < TencentCloud::Common::AbstractModel
        # @param FileName: key文件名称
        # @type FileName: String
        # @param FileExtType: key文件扩展名
        # @type FileExtType: String
        # @param FileContent: key文件内容
        # @type FileContent: String
        # @param FileSize: key文件大小
        # @type FileSize: Integer

        attr_accessor :FileName, :FileExtType, :FileContent, :FileSize

        def initialize(filename=nil, fileexttype=nil, filecontent=nil, filesize=nil)
          @FileName = filename
          @FileExtType = fileexttype
          @FileContent = filecontent
          @FileSize = filesize
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileExtType = params['FileExtType']
          @FileContent = params['FileContent']
          @FileSize = params['FileSize']
        end
      end

      # 机器类型和数量
      class MachineInfo < TencentCloud::Common::AbstractModel
        # @param MachineType: 机器类型
        # @type MachineType: String
        # @param MachineNum: 机器数量
        # @type MachineNum: Integer

        attr_accessor :MachineType, :MachineNum

        def initialize(machinetype=nil, machinenum=nil)
          @MachineType = machinetype
          @MachineNum = machinenum
        end

        def deserialize(params)
          @MachineType = params['MachineType']
          @MachineNum = params['MachineNum']
        end
      end

      # 合服结果
      class MergeTableResult < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param Error: 成功时此字段返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`
        # @param Table: 对比的表格信息
        # @type Table: :class:`Tencentcloud::Tcaplusdb.v20190823.models.CompareTablesInfo`
        # @param ApplicationId: 申请单Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String

        attr_accessor :TaskId, :Error, :Table, :ApplicationId

        def initialize(taskid=nil, error=nil, table=nil, applicationid=nil)
          @TaskId = taskid
          @Error = error
          @Table = table
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          unless params['Error'].nil?
            @Error = ErrorInfo.new
            @Error.deserialize(params['Error'])
          end
          unless params['Table'].nil?
            @Table = CompareTablesInfo.new
            @Table.deserialize(params['Table'])
          end
          @ApplicationId = params['ApplicationId']
        end
      end

      # MergeTablesData请求参数结构体
      class MergeTablesDataRequest < TencentCloud::Common::AbstractModel
        # @param SelectedTables: 选取的表格
        # @type SelectedTables: Array
        # @param IsOnlyCompare: true只做对比，false既对比又执行
        # @type IsOnlyCompare: Boolean

        attr_accessor :SelectedTables, :IsOnlyCompare

        def initialize(selectedtables=nil, isonlycompare=nil)
          @SelectedTables = selectedtables
          @IsOnlyCompare = isonlycompare
        end

        def deserialize(params)
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              mergetablesinfo_tmp = MergeTablesInfo.new
              mergetablesinfo_tmp.deserialize(i)
              @SelectedTables << mergetablesinfo_tmp
            end
          end
          @IsOnlyCompare = params['IsOnlyCompare']
        end
      end

      # MergeTablesData返回参数结构体
      class MergeTablesDataResponse < TencentCloud::Common::AbstractModel
        # @param Results: 合服结果集
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Results, :RequestId

        def initialize(results=nil, requestid=nil)
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              mergetableresult_tmp = MergeTableResult.new
              mergetableresult_tmp.deserialize(i)
              @Results << mergetableresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 合服请求入参
      class MergeTablesInfo < TencentCloud::Common::AbstractModel
        # @param MergeTables: 合服的表格信息
        # @type MergeTables: :class:`Tencentcloud::Tcaplusdb.v20190823.models.CompareTablesInfo`
        # @param CheckIndex: 是否检查索引
        # @type CheckIndex: Boolean

        attr_accessor :MergeTables, :CheckIndex

        def initialize(mergetables=nil, checkindex=nil)
          @MergeTables = mergetables
          @CheckIndex = checkindex
        end

        def deserialize(params)
          unless params['MergeTables'].nil?
            @MergeTables = CompareTablesInfo.new
            @MergeTables.deserialize(params['MergeTables'])
          end
          @CheckIndex = params['CheckIndex']
        end
      end

      # ModifyCensorship请求参数结构体
      class ModifyCensorshipRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Censorship: 集群是否开启审核 0-关闭 1-开启
        # @type Censorship: Integer
        # @param Uins: 审批人uin列表
        # @type Uins: Array

        attr_accessor :ClusterId, :Censorship, :Uins

        def initialize(clusterid=nil, censorship=nil, uins=nil)
          @ClusterId = clusterid
          @Censorship = censorship
          @Uins = uins
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Censorship = params['Censorship']
          @Uins = params['Uins']
        end
      end

      # ModifyCensorship返回参数结构体
      class ModifyCensorshipResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Uins: 已加入审批人的uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uins: Array
        # @param Censorship: 集群是否开启审核 0-关闭 1-开启
        # @type Censorship: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterId, :Uins, :Censorship, :RequestId

        def initialize(clusterid=nil, uins=nil, censorship=nil, requestid=nil)
          @ClusterId = clusterid
          @Uins = uins
          @Censorship = censorship
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Uins = params['Uins']
          @Censorship = params['Censorship']
          @RequestId = params['RequestId']
        end
      end

      # ModifyClusterMachine请求参数结构体
      class ModifyClusterMachineRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param ServerList: svr占用的机器
        # @type ServerList: Array
        # @param ProxyList: proxy占用的机器
        # @type ProxyList: Array
        # @param ClusterType: 集群类型1共享集群2独占集群
        # @type ClusterType: Integer

        attr_accessor :ClusterId, :ServerList, :ProxyList, :ClusterType

        def initialize(clusterid=nil, serverlist=nil, proxylist=nil, clustertype=nil)
          @ClusterId = clusterid
          @ServerList = serverlist
          @ProxyList = proxylist
          @ClusterType = clustertype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['ServerList'].nil?
            @ServerList = []
            params['ServerList'].each do |i|
              machineinfo_tmp = MachineInfo.new
              machineinfo_tmp.deserialize(i)
              @ServerList << machineinfo_tmp
            end
          end
          unless params['ProxyList'].nil?
            @ProxyList = []
            params['ProxyList'].each do |i|
              machineinfo_tmp = MachineInfo.new
              machineinfo_tmp.deserialize(i)
              @ProxyList << machineinfo_tmp
            end
          end
          @ClusterType = params['ClusterType']
        end
      end

      # ModifyClusterMachine返回参数结构体
      class ModifyClusterMachineResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterId, :RequestId

        def initialize(clusterid=nil, requestid=nil)
          @ClusterId = clusterid
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyClusterName请求参数结构体
      class ModifyClusterNameRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 需要修改名称的集群ID
        # @type ClusterId: String
        # @param ClusterName: 需要修改的集群名称，可使用中文或英文字符，最大长度32个字符
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

      # ModifyClusterPassword请求参数结构体
      class ModifyClusterPasswordRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 需要修改密码的集群ID
        # @type ClusterId: String
        # @param OldPassword: 集群旧密码
        # @type OldPassword: String
        # @param OldPasswordExpireTime: 集群旧密码预期失效时间
        # @type OldPasswordExpireTime: String
        # @param NewPassword: 集群新密码，密码必须是a-zA-Z0-9的字符,且必须包含数字和大小写字母
        # @type NewPassword: String
        # @param Mode: 更新模式： `1` 更新密码；`2` 更新旧密码失效时间，默认为`1` 模式
        # @type Mode: String

        attr_accessor :ClusterId, :OldPassword, :OldPasswordExpireTime, :NewPassword, :Mode

        def initialize(clusterid=nil, oldpassword=nil, oldpasswordexpiretime=nil, newpassword=nil, mode=nil)
          @ClusterId = clusterid
          @OldPassword = oldpassword
          @OldPasswordExpireTime = oldpasswordexpiretime
          @NewPassword = newpassword
          @Mode = mode
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @OldPassword = params['OldPassword']
          @OldPasswordExpireTime = params['OldPasswordExpireTime']
          @NewPassword = params['NewPassword']
          @Mode = params['Mode']
        end
      end

      # ModifyClusterPassword返回参数结构体
      class ModifyClusterPasswordResponse < TencentCloud::Common::AbstractModel
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

      # ModifyClusterTags请求参数结构体
      class ModifyClusterTagsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待修改标签的集群ID
        # @type ClusterId: String
        # @param ReplaceTags: 待增加或修改的标签列表
        # @type ReplaceTags: Array
        # @param DeleteTags: 待删除的标签
        # @type DeleteTags: Array

        attr_accessor :ClusterId, :ReplaceTags, :DeleteTags

        def initialize(clusterid=nil, replacetags=nil, deletetags=nil)
          @ClusterId = clusterid
          @ReplaceTags = replacetags
          @DeleteTags = deletetags
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['ReplaceTags'].nil?
            @ReplaceTags = []
            params['ReplaceTags'].each do |i|
              taginfounit_tmp = TagInfoUnit.new
              taginfounit_tmp.deserialize(i)
              @ReplaceTags << taginfounit_tmp
            end
          end
          unless params['DeleteTags'].nil?
            @DeleteTags = []
            params['DeleteTags'].each do |i|
              taginfounit_tmp = TagInfoUnit.new
              taginfounit_tmp.deserialize(i)
              @DeleteTags << taginfounit_tmp
            end
          end
        end
      end

      # ModifyClusterTags返回参数结构体
      class ModifyClusterTagsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # ModifySnapshots请求参数结构体
      class ModifySnapshotsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表格所属集群id
        # @type ClusterId: String
        # @param SelectedTables: 快照列表
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :SelectedTables

        def initialize(clusterid=nil, selectedtables=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              snapshotinfonew_tmp = SnapshotInfoNew.new
              snapshotinfonew_tmp.deserialize(i)
              @SelectedTables << snapshotinfonew_tmp
            end
          end
        end
      end

      # ModifySnapshots返回参数结构体
      class ModifySnapshotsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 批量修改的快照数量
        # @type TotalCount: Integer
        # @param TableResults: 批量修改的快照结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId

        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableResults'].nil?
            @TableResults = []
            params['TableResults'].each do |i|
              snapshotresult_tmp = SnapshotResult.new
              snapshotresult_tmp.deserialize(i)
              @TableResults << snapshotresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyTableGroupName请求参数结构体
      class ModifyTableGroupNameRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表格组所属的集群ID
        # @type ClusterId: String
        # @param TableGroupId: 待修改名称的表格组ID
        # @type TableGroupId: String
        # @param TableGroupName: 新的表格组名称，可以使用中英文字符和符号
        # @type TableGroupName: String

        attr_accessor :ClusterId, :TableGroupId, :TableGroupName

        def initialize(clusterid=nil, tablegroupid=nil, tablegroupname=nil)
          @ClusterId = clusterid
          @TableGroupId = tablegroupid
          @TableGroupName = tablegroupname
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupId = params['TableGroupId']
          @TableGroupName = params['TableGroupName']
        end
      end

      # ModifyTableGroupName返回参数结构体
      class ModifyTableGroupNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTableGroupTags请求参数结构体
      class ModifyTableGroupTagsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待修改标签表格组所属集群ID
        # @type ClusterId: String
        # @param TableGroupId: 待修改标签表格组ID
        # @type TableGroupId: String
        # @param ReplaceTags: 待增加或修改的标签列表
        # @type ReplaceTags: Array
        # @param DeleteTags: 待删除的标签
        # @type DeleteTags: Array

        attr_accessor :ClusterId, :TableGroupId, :ReplaceTags, :DeleteTags

        def initialize(clusterid=nil, tablegroupid=nil, replacetags=nil, deletetags=nil)
          @ClusterId = clusterid
          @TableGroupId = tablegroupid
          @ReplaceTags = replacetags
          @DeleteTags = deletetags
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupId = params['TableGroupId']
          unless params['ReplaceTags'].nil?
            @ReplaceTags = []
            params['ReplaceTags'].each do |i|
              taginfounit_tmp = TagInfoUnit.new
              taginfounit_tmp.deserialize(i)
              @ReplaceTags << taginfounit_tmp
            end
          end
          unless params['DeleteTags'].nil?
            @DeleteTags = []
            params['DeleteTags'].each do |i|
              taginfounit_tmp = TagInfoUnit.new
              taginfounit_tmp.deserialize(i)
              @DeleteTags << taginfounit_tmp
            end
          end
        end
      end

      # ModifyTableGroupTags返回参数结构体
      class ModifyTableGroupTagsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # ModifyTableMemos请求参数结构体
      class ModifyTableMemosRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表所属集群实例ID
        # @type ClusterId: String
        # @param TableMemos: 选定表详情列表
        # @type TableMemos: Array

        attr_accessor :ClusterId, :TableMemos

        def initialize(clusterid=nil, tablememos=nil)
          @ClusterId = clusterid
          @TableMemos = tablememos
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['TableMemos'].nil?
            @TableMemos = []
            params['TableMemos'].each do |i|
              selectedtableinfonew_tmp = SelectedTableInfoNew.new
              selectedtableinfonew_tmp.deserialize(i)
              @TableMemos << selectedtableinfonew_tmp
            end
          end
        end
      end

      # ModifyTableMemos返回参数结构体
      class ModifyTableMemosResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 表备注修改结果数量
        # @type TotalCount: Integer
        # @param TableResults: 表备注修改结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId

        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableResults'].nil?
            @TableResults = []
            params['TableResults'].each do |i|
              tableresultnew_tmp = TableResultNew.new
              tableresultnew_tmp.deserialize(i)
              @TableResults << tableresultnew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyTableQuotas请求参数结构体
      class ModifyTableQuotasRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 带扩缩容表所属集群ID
        # @type ClusterId: String
        # @param TableQuotas: 已选中待修改的表配额列表
        # @type TableQuotas: Array

        attr_accessor :ClusterId, :TableQuotas

        def initialize(clusterid=nil, tablequotas=nil)
          @ClusterId = clusterid
          @TableQuotas = tablequotas
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['TableQuotas'].nil?
            @TableQuotas = []
            params['TableQuotas'].each do |i|
              selectedtableinfonew_tmp = SelectedTableInfoNew.new
              selectedtableinfonew_tmp.deserialize(i)
              @TableQuotas << selectedtableinfonew_tmp
            end
          end
        end
      end

      # ModifyTableQuotas返回参数结构体
      class ModifyTableQuotasResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 扩缩容结果数量
        # @type TotalCount: Integer
        # @param TableResults: 扩缩容结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId

        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableResults'].nil?
            @TableResults = []
            params['TableResults'].each do |i|
              tableresultnew_tmp = TableResultNew.new
              tableresultnew_tmp.deserialize(i)
              @TableResults << tableresultnew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyTableTags请求参数结构体
      class ModifyTableTagsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待修改标签表格所属集群ID
        # @type ClusterId: String
        # @param SelectedTables: 待修改标签表格列表
        # @type SelectedTables: Array
        # @param ReplaceTags: 待增加或修改的标签列表
        # @type ReplaceTags: Array
        # @param DeleteTags: 待删除的标签列表
        # @type DeleteTags: Array

        attr_accessor :ClusterId, :SelectedTables, :ReplaceTags, :DeleteTags

        def initialize(clusterid=nil, selectedtables=nil, replacetags=nil, deletetags=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
          @ReplaceTags = replacetags
          @DeleteTags = deletetags
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              selectedtableinfonew_tmp = SelectedTableInfoNew.new
              selectedtableinfonew_tmp.deserialize(i)
              @SelectedTables << selectedtableinfonew_tmp
            end
          end
          unless params['ReplaceTags'].nil?
            @ReplaceTags = []
            params['ReplaceTags'].each do |i|
              taginfounit_tmp = TagInfoUnit.new
              taginfounit_tmp.deserialize(i)
              @ReplaceTags << taginfounit_tmp
            end
          end
          unless params['DeleteTags'].nil?
            @DeleteTags = []
            params['DeleteTags'].each do |i|
              taginfounit_tmp = TagInfoUnit.new
              taginfounit_tmp.deserialize(i)
              @DeleteTags << taginfounit_tmp
            end
          end
        end
      end

      # ModifyTableTags返回参数结构体
      class ModifyTableTagsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回结果总数
        # @type TotalCount: Integer
        # @param TableResults: 返回结果
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId

        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableResults'].nil?
            @TableResults = []
            params['TableResults'].each do |i|
              tableresultnew_tmp = TableResultNew.new
              tableresultnew_tmp.deserialize(i)
              @TableResults << tableresultnew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyTables请求参数结构体
      class ModifyTablesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待修改表格所在集群ID
        # @type ClusterId: String
        # @param IdlFiles: 选中的改表IDL文件
        # @type IdlFiles: Array
        # @param SelectedTables: 待改表格列表
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :IdlFiles, :SelectedTables

        def initialize(clusterid=nil, idlfiles=nil, selectedtables=nil)
          @ClusterId = clusterid
          @IdlFiles = idlfiles
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['IdlFiles'].nil?
            @IdlFiles = []
            params['IdlFiles'].each do |i|
              idlfileinfo_tmp = IdlFileInfo.new
              idlfileinfo_tmp.deserialize(i)
              @IdlFiles << idlfileinfo_tmp
            end
          end
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              selectedtableinfonew_tmp = SelectedTableInfoNew.new
              selectedtableinfonew_tmp.deserialize(i)
              @SelectedTables << selectedtableinfonew_tmp
            end
          end
        end
      end

      # ModifyTables返回参数结构体
      class ModifyTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 修改表结果数量
        # @type TotalCount: Integer
        # @param TableResults: 修改表结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId

        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableResults'].nil?
            @TableResults = []
            params['TableResults'].each do |i|
              tableresultnew_tmp = TableResultNew.new
              tableresultnew_tmp.deserialize(i)
              @TableResults << tableresultnew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 从IDL表描述文件中解析出来的表信息
      class ParsedTableInfoNew < TencentCloud::Common::AbstractModel
        # @param TableIdlType: 表格描述语言类型：`PROTO`或`TDR`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableIdlType: String
        # @param TableInstanceId: 表格实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableInstanceId: String
        # @param TableName: 表格名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param TableType: 表格数据结构类型：`GENERIC`或`LIST`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableType: String
        # @param KeyFields: 主键字段信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyFields: String
        # @param OldKeyFields: 原主键字段信息，改表校验时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldKeyFields: String
        # @param ValueFields: 非主键字段信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueFields: String
        # @param OldValueFields: 原非主键字段信息，改表校验时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldValueFields: String
        # @param TableGroupId: 所属表格组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableGroupId: String
        # @param SumKeyFieldSize: 主键字段总大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SumKeyFieldSize: Integer
        # @param SumValueFieldSize: 非主键字段总大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SumValueFieldSize: Integer
        # @param IndexKeySet: 索引键集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexKeySet: String
        # @param ShardingKeySet: 分表因子集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShardingKeySet: String
        # @param TdrVersion: TDR版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TdrVersion: Integer
        # @param Error: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`
        # @param ListElementNum: LIST类型表格元素个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListElementNum: Integer
        # @param SortFieldNum: SORTLIST类型表格排序字段个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SortFieldNum: Integer
        # @param SortRule: SORTLIST类型表格排序顺序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SortRule: Integer

        attr_accessor :TableIdlType, :TableInstanceId, :TableName, :TableType, :KeyFields, :OldKeyFields, :ValueFields, :OldValueFields, :TableGroupId, :SumKeyFieldSize, :SumValueFieldSize, :IndexKeySet, :ShardingKeySet, :TdrVersion, :Error, :ListElementNum, :SortFieldNum, :SortRule

        def initialize(tableidltype=nil, tableinstanceid=nil, tablename=nil, tabletype=nil, keyfields=nil, oldkeyfields=nil, valuefields=nil, oldvaluefields=nil, tablegroupid=nil, sumkeyfieldsize=nil, sumvaluefieldsize=nil, indexkeyset=nil, shardingkeyset=nil, tdrversion=nil, error=nil, listelementnum=nil, sortfieldnum=nil, sortrule=nil)
          @TableIdlType = tableidltype
          @TableInstanceId = tableinstanceid
          @TableName = tablename
          @TableType = tabletype
          @KeyFields = keyfields
          @OldKeyFields = oldkeyfields
          @ValueFields = valuefields
          @OldValueFields = oldvaluefields
          @TableGroupId = tablegroupid
          @SumKeyFieldSize = sumkeyfieldsize
          @SumValueFieldSize = sumvaluefieldsize
          @IndexKeySet = indexkeyset
          @ShardingKeySet = shardingkeyset
          @TdrVersion = tdrversion
          @Error = error
          @ListElementNum = listelementnum
          @SortFieldNum = sortfieldnum
          @SortRule = sortrule
        end

        def deserialize(params)
          @TableIdlType = params['TableIdlType']
          @TableInstanceId = params['TableInstanceId']
          @TableName = params['TableName']
          @TableType = params['TableType']
          @KeyFields = params['KeyFields']
          @OldKeyFields = params['OldKeyFields']
          @ValueFields = params['ValueFields']
          @OldValueFields = params['OldValueFields']
          @TableGroupId = params['TableGroupId']
          @SumKeyFieldSize = params['SumKeyFieldSize']
          @SumValueFieldSize = params['SumValueFieldSize']
          @IndexKeySet = params['IndexKeySet']
          @ShardingKeySet = params['ShardingKeySet']
          @TdrVersion = params['TdrVersion']
          unless params['Error'].nil?
            @Error = ErrorInfo.new
            @Error.deserialize(params['Error'])
          end
          @ListElementNum = params['ListElementNum']
          @SortFieldNum = params['SortFieldNum']
          @SortRule = params['SortRule']
        end
      end

      # center资源池中的机器信息
      class PoolInfo < TencentCloud::Common::AbstractModel
        # @param PoolUid: 唯一id
        # @type PoolUid: Integer
        # @param Ipv6Enable: 是否支持ipv6
        # @type Ipv6Enable: Integer
        # @param AvailableAppCount: 剩余可用app
        # @type AvailableAppCount: Integer
        # @param ServerList: svr机器列表
        # @type ServerList: Array
        # @param ProxyList: proxy机器列表
        # @type ProxyList: Array

        attr_accessor :PoolUid, :Ipv6Enable, :AvailableAppCount, :ServerList, :ProxyList

        def initialize(pooluid=nil, ipv6enable=nil, availableappcount=nil, serverlist=nil, proxylist=nil)
          @PoolUid = pooluid
          @Ipv6Enable = ipv6enable
          @AvailableAppCount = availableappcount
          @ServerList = serverlist
          @ProxyList = proxylist
        end

        def deserialize(params)
          @PoolUid = params['PoolUid']
          @Ipv6Enable = params['Ipv6Enable']
          @AvailableAppCount = params['AvailableAppCount']
          unless params['ServerList'].nil?
            @ServerList = []
            params['ServerList'].each do |i|
              servermachineinfo_tmp = ServerMachineInfo.new
              servermachineinfo_tmp.deserialize(i)
              @ServerList << servermachineinfo_tmp
            end
          end
          unless params['ProxyList'].nil?
            @ProxyList = []
            params['ProxyList'].each do |i|
              proxymachineinfo_tmp = ProxyMachineInfo.new
              proxymachineinfo_tmp.deserialize(i)
              @ProxyList << proxymachineinfo_tmp
            end
          end
        end
      end

      # 独占的proxy详细信息
      class ProxyDetailInfo < TencentCloud::Common::AbstractModel
        # @param ProxyUid: proxy的唯一id
        # @type ProxyUid: String
        # @param MachineType: 机器类型
        # @type MachineType: String
        # @param ProcessSpeed: 请求包速度
        # @type ProcessSpeed: Integer
        # @param AverageProcessDelay: 请求包时延
        # @type AverageProcessDelay: Integer
        # @param SlowProcessSpeed: 慢处理包速度
        # @type SlowProcessSpeed: Integer
        # @param Version: 版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String

        attr_accessor :ProxyUid, :MachineType, :ProcessSpeed, :AverageProcessDelay, :SlowProcessSpeed, :Version

        def initialize(proxyuid=nil, machinetype=nil, processspeed=nil, averageprocessdelay=nil, slowprocessspeed=nil, version=nil)
          @ProxyUid = proxyuid
          @MachineType = machinetype
          @ProcessSpeed = processspeed
          @AverageProcessDelay = averageprocessdelay
          @SlowProcessSpeed = slowprocessspeed
          @Version = version
        end

        def deserialize(params)
          @ProxyUid = params['ProxyUid']
          @MachineType = params['MachineType']
          @ProcessSpeed = params['ProcessSpeed']
          @AverageProcessDelay = params['AverageProcessDelay']
          @SlowProcessSpeed = params['SlowProcessSpeed']
          @Version = params['Version']
        end
      end

      # proxy机器信息
      class ProxyMachineInfo < TencentCloud::Common::AbstractModel
        # @param ProxyUid: 唯一id
        # @type ProxyUid: String
        # @param MachineType: 机器类型
        # @type MachineType: String
        # @param AvailableCount: 可分配proxy资源数
        # @type AvailableCount: Integer

        attr_accessor :ProxyUid, :MachineType, :AvailableCount

        def initialize(proxyuid=nil, machinetype=nil, availablecount=nil)
          @ProxyUid = proxyuid
          @MachineType = machinetype
          @AvailableCount = availablecount
        end

        def deserialize(params)
          @ProxyUid = params['ProxyUid']
          @MachineType = params['MachineType']
          @AvailableCount = params['AvailableCount']
        end
      end

      # RecoverRecycleTables请求参数结构体
      class RecoverRecycleTablesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表所在集群ID
        # @type ClusterId: String
        # @param SelectedTables: 待恢复表信息
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :SelectedTables

        def initialize(clusterid=nil, selectedtables=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              selectedtableinfonew_tmp = SelectedTableInfoNew.new
              selectedtableinfonew_tmp.deserialize(i)
              @SelectedTables << selectedtableinfonew_tmp
            end
          end
        end
      end

      # RecoverRecycleTables返回参数结构体
      class RecoverRecycleTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 恢复表结果数量
        # @type TotalCount: Integer
        # @param TableResults: 恢复表信息列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId

        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableResults'].nil?
            @TableResults = []
            params['TableResults'].each do |i|
              tableresultnew_tmp = TableResultNew.new
              tableresultnew_tmp.deserialize(i)
              @TableResults << tableresultnew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # TcaplusDB服务地域信息详情
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param RegionName: 地域Ap-Code
        # @type RegionName: String
        # @param RegionAbbr: 地域缩写
        # @type RegionAbbr: String
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param Ipv6Enable: 是否支持ipv6，0:不支持，1:支持
        # @type Ipv6Enable: Integer

        attr_accessor :RegionName, :RegionAbbr, :RegionId, :Ipv6Enable

        def initialize(regionname=nil, regionabbr=nil, regionid=nil, ipv6enable=nil)
          @RegionName = regionname
          @RegionAbbr = regionabbr
          @RegionId = regionid
          @Ipv6Enable = ipv6enable
        end

        def deserialize(params)
          @RegionName = params['RegionName']
          @RegionAbbr = params['RegionAbbr']
          @RegionId = params['RegionId']
          @Ipv6Enable = params['Ipv6Enable']
        end
      end

      # RollbackTables请求参数结构体
      class RollbackTablesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待回档表格所在集群ID
        # @type ClusterId: String
        # @param SelectedTables: 待回档表格列表
        # @type SelectedTables: Array
        # @param RollbackTime: 待回档时间
        # @type RollbackTime: String
        # @param Mode: 回档模式，支持：`KEYS`
        # @type Mode: String

        attr_accessor :ClusterId, :SelectedTables, :RollbackTime, :Mode

        def initialize(clusterid=nil, selectedtables=nil, rollbacktime=nil, mode=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
          @RollbackTime = rollbacktime
          @Mode = mode
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              selectedtableinfonew_tmp = SelectedTableInfoNew.new
              selectedtableinfonew_tmp.deserialize(i)
              @SelectedTables << selectedtableinfonew_tmp
            end
          end
          @RollbackTime = params['RollbackTime']
          @Mode = params['Mode']
        end
      end

      # RollbackTables返回参数结构体
      class RollbackTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 表格回档任务结果数量
        # @type TotalCount: Integer
        # @param TableResults: 表格回档任务结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId

        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableResults'].nil?
            @TableResults = []
            params['TableResults'].each do |i|
              tablerollbackresultnew_tmp = TableRollbackResultNew.new
              tablerollbackresultnew_tmp.deserialize(i)
              @TableResults << tablerollbackresultnew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 被选中的表信息
      class SelectedTableInfoNew < TencentCloud::Common::AbstractModel
        # @param TableGroupId: 表所属表格组ID
        # @type TableGroupId: String
        # @param TableName: 表格名称
        # @type TableName: String
        # @param TableInstanceId: 表实例ID
        # @type TableInstanceId: String
        # @param TableIdlType: 表格描述语言类型：`PROTO`或`TDR`
        # @type TableIdlType: String
        # @param TableType: 表格数据结构类型：`GENERIC`或`LIST`
        # @type TableType: String
        # @param ListElementNum: LIST表元素个数
        # @type ListElementNum: Integer
        # @param ReservedVolume: 表格预留容量（GB）
        # @type ReservedVolume: Integer
        # @param ReservedReadQps: 表格预留读CU
        # @type ReservedReadQps: Integer
        # @param ReservedWriteQps: 表格预留写CU
        # @type ReservedWriteQps: Integer
        # @param Memo: 表格备注信息
        # @type Memo: String
        # @param FileName: Key回档文件名，回档专用
        # @type FileName: String
        # @param FileExtType: Key回档文件扩展名，回档专用
        # @type FileExtType: String
        # @param FileSize: Key回档文件大小，回档专用
        # @type FileSize: Integer
        # @param FileContent: Key回档文件内容，回档专用
        # @type FileContent: String

        attr_accessor :TableGroupId, :TableName, :TableInstanceId, :TableIdlType, :TableType, :ListElementNum, :ReservedVolume, :ReservedReadQps, :ReservedWriteQps, :Memo, :FileName, :FileExtType, :FileSize, :FileContent

        def initialize(tablegroupid=nil, tablename=nil, tableinstanceid=nil, tableidltype=nil, tabletype=nil, listelementnum=nil, reservedvolume=nil, reservedreadqps=nil, reservedwriteqps=nil, memo=nil, filename=nil, fileexttype=nil, filesize=nil, filecontent=nil)
          @TableGroupId = tablegroupid
          @TableName = tablename
          @TableInstanceId = tableinstanceid
          @TableIdlType = tableidltype
          @TableType = tabletype
          @ListElementNum = listelementnum
          @ReservedVolume = reservedvolume
          @ReservedReadQps = reservedreadqps
          @ReservedWriteQps = reservedwriteqps
          @Memo = memo
          @FileName = filename
          @FileExtType = fileexttype
          @FileSize = filesize
          @FileContent = filecontent
        end

        def deserialize(params)
          @TableGroupId = params['TableGroupId']
          @TableName = params['TableName']
          @TableInstanceId = params['TableInstanceId']
          @TableIdlType = params['TableIdlType']
          @TableType = params['TableType']
          @ListElementNum = params['ListElementNum']
          @ReservedVolume = params['ReservedVolume']
          @ReservedReadQps = params['ReservedReadQps']
          @ReservedWriteQps = params['ReservedWriteQps']
          @Memo = params['Memo']
          @FileName = params['FileName']
          @FileExtType = params['FileExtType']
          @FileSize = params['FileSize']
          @FileContent = params['FileContent']
        end
      end

      # 附带被选中字段信息的表格列表
      class SelectedTableWithField < TencentCloud::Common::AbstractModel
        # @param TableGroupId: 表所属表格组ID
        # @type TableGroupId: String
        # @param TableName: 表格名称
        # @type TableName: String
        # @param TableInstanceId: 表实例ID
        # @type TableInstanceId: String
        # @param TableIdlType: 表格描述语言类型：`PROTO`或`TDR`
        # @type TableIdlType: String
        # @param TableType: 表格数据结构类型：`GENERIC`或`LIST`
        # @type TableType: String
        # @param SelectedFields: 待创建索引、缓写、数据订阅的字段列表
        # @type SelectedFields: Array
        # @param ShardNum: 索引分片数
        # @type ShardNum: Integer
        # @param KafkaInfo: ckafka实例信息
        # @type KafkaInfo: :class:`Tencentcloud::Tcaplusdb.v20190823.models.KafkaInfo`

        attr_accessor :TableGroupId, :TableName, :TableInstanceId, :TableIdlType, :TableType, :SelectedFields, :ShardNum, :KafkaInfo

        def initialize(tablegroupid=nil, tablename=nil, tableinstanceid=nil, tableidltype=nil, tabletype=nil, selectedfields=nil, shardnum=nil, kafkainfo=nil)
          @TableGroupId = tablegroupid
          @TableName = tablename
          @TableInstanceId = tableinstanceid
          @TableIdlType = tableidltype
          @TableType = tabletype
          @SelectedFields = selectedfields
          @ShardNum = shardnum
          @KafkaInfo = kafkainfo
        end

        def deserialize(params)
          @TableGroupId = params['TableGroupId']
          @TableName = params['TableName']
          @TableInstanceId = params['TableInstanceId']
          @TableIdlType = params['TableIdlType']
          @TableType = params['TableType']
          unless params['SelectedFields'].nil?
            @SelectedFields = []
            params['SelectedFields'].each do |i|
              fieldinfo_tmp = FieldInfo.new
              fieldinfo_tmp.deserialize(i)
              @SelectedFields << fieldinfo_tmp
            end
          end
          @ShardNum = params['ShardNum']
          unless params['KafkaInfo'].nil?
            @KafkaInfo = KafkaInfo.new
            @KafkaInfo.deserialize(params['KafkaInfo'])
          end
        end
      end

      # server独占机器的详细信息
      class ServerDetailInfo < TencentCloud::Common::AbstractModel
        # @param ServerUid: svr唯一id
        # @type ServerUid: String
        # @param MachineType: 机器类型
        # @type MachineType: String
        # @param MemoryRate: 内存占用量
        # @type MemoryRate: Integer
        # @param DiskRate: 磁盘占用量
        # @type DiskRate: Integer
        # @param ReadNum: 读次数
        # @type ReadNum: Integer
        # @param WriteNum: 写次数
        # @type WriteNum: Integer
        # @param Version: 版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String

        attr_accessor :ServerUid, :MachineType, :MemoryRate, :DiskRate, :ReadNum, :WriteNum, :Version

        def initialize(serveruid=nil, machinetype=nil, memoryrate=nil, diskrate=nil, readnum=nil, writenum=nil, version=nil)
          @ServerUid = serveruid
          @MachineType = machinetype
          @MemoryRate = memoryrate
          @DiskRate = diskrate
          @ReadNum = readnum
          @WriteNum = writenum
          @Version = version
        end

        def deserialize(params)
          @ServerUid = params['ServerUid']
          @MachineType = params['MachineType']
          @MemoryRate = params['MemoryRate']
          @DiskRate = params['DiskRate']
          @ReadNum = params['ReadNum']
          @WriteNum = params['WriteNum']
          @Version = params['Version']
        end
      end

      # svr的机器列表ServerList
      class ServerMachineInfo < TencentCloud::Common::AbstractModel
        # @param ServerUid: 机器唯一id
        # @type ServerUid: String
        # @param MachineType: 机器类型
        # @type MachineType: String

        attr_accessor :ServerUid, :MachineType

        def initialize(serveruid=nil, machinetype=nil)
          @ServerUid = serveruid
          @MachineType = machinetype
        end

        def deserialize(params)
          @ServerUid = params['ServerUid']
          @MachineType = params['MachineType']
        end
      end

      # SetBackupExpireRule请求参数结构体
      class SetBackupExpireRuleRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表所属集群实例ID
        # @type ClusterId: String
        # @param BackupExpireRules: 淘汰策略数组
        # @type BackupExpireRules: Array

        attr_accessor :ClusterId, :BackupExpireRules

        def initialize(clusterid=nil, backupexpirerules=nil)
          @ClusterId = clusterid
          @BackupExpireRules = backupexpirerules
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['BackupExpireRules'].nil?
            @BackupExpireRules = []
            params['BackupExpireRules'].each do |i|
              backupexpireruleinfo_tmp = BackupExpireRuleInfo.new
              backupexpireruleinfo_tmp.deserialize(i)
              @BackupExpireRules << backupexpireruleinfo_tmp
            end
          end
        end
      end

      # SetBackupExpireRule返回参数结构体
      class SetBackupExpireRuleResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: TaskId由 AppInstanceId-taskId 组成，以区分不同集群的任务
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # SetTableDataFlow请求参数结构体
      class SetTableDataFlowRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表所属集群实例ID
        # @type ClusterId: String
        # @param SelectedTables: 待创建分布式索引表格列表
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :SelectedTables

        def initialize(clusterid=nil, selectedtables=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              selectedtablewithfield_tmp = SelectedTableWithField.new
              selectedtablewithfield_tmp.deserialize(i)
              @SelectedTables << selectedtablewithfield_tmp
            end
          end
        end
      end

      # SetTableDataFlow返回参数结构体
      class SetTableDataFlowResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 表格数据订阅创建结果数量
        # @type TotalCount: Integer
        # @param TableResults: 表格数据订阅创建结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId

        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableResults'].nil?
            @TableResults = []
            params['TableResults'].each do |i|
              tableresultnew_tmp = TableResultNew.new
              tableresultnew_tmp.deserialize(i)
              @TableResults << tableresultnew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # SetTableIndex请求参数结构体
      class SetTableIndexRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 表所属集群实例ID
        # @type ClusterId: String
        # @param SelectedTables: 待创建分布式索引表格列表
        # @type SelectedTables: Array

        attr_accessor :ClusterId, :SelectedTables

        def initialize(clusterid=nil, selectedtables=nil)
          @ClusterId = clusterid
          @SelectedTables = selectedtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['SelectedTables'].nil?
            @SelectedTables = []
            params['SelectedTables'].each do |i|
              selectedtablewithfield_tmp = SelectedTableWithField.new
              selectedtablewithfield_tmp.deserialize(i)
              @SelectedTables << selectedtablewithfield_tmp
            end
          end
        end
      end

      # SetTableIndex返回参数结构体
      class SetTableIndexResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 表格分布式索引创建结果数量
        # @type TotalCount: Integer
        # @param TableResults: 表格分布式索引创建结果列表
        # @type TableResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TableResults, :RequestId

        def initialize(totalcount=nil, tableresults=nil, requestid=nil)
          @TotalCount = totalcount
          @TableResults = tableresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TableResults'].nil?
            @TableResults = []
            params['TableResults'].each do |i|
              tableresultnew_tmp = TableResultNew.new
              tableresultnew_tmp.deserialize(i)
              @TableResults << tableresultnew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 快照列表
      class SnapshotInfo < TencentCloud::Common::AbstractModel
        # @param TableGroupId: 所属表格组ID
        # @type TableGroupId: String
        # @param TableName: 表名称
        # @type TableName: String
        # @param SnapshotName: 快照名称
        # @type SnapshotName: String
        # @param SnapshotTime: 快照时间点
        # @type SnapshotTime: String
        # @param SnapshotDeadTime: 快照过期时间点
        # @type SnapshotDeadTime: String

        attr_accessor :TableGroupId, :TableName, :SnapshotName, :SnapshotTime, :SnapshotDeadTime

        def initialize(tablegroupid=nil, tablename=nil, snapshotname=nil, snapshottime=nil, snapshotdeadtime=nil)
          @TableGroupId = tablegroupid
          @TableName = tablename
          @SnapshotName = snapshotname
          @SnapshotTime = snapshottime
          @SnapshotDeadTime = snapshotdeadtime
        end

        def deserialize(params)
          @TableGroupId = params['TableGroupId']
          @TableName = params['TableName']
          @SnapshotName = params['SnapshotName']
          @SnapshotTime = params['SnapshotTime']
          @SnapshotDeadTime = params['SnapshotDeadTime']
        end
      end

      # 新的快照过期时间
      class SnapshotInfoNew < TencentCloud::Common::AbstractModel
        # @param TableGroupId: 所属表格组ID
        # @type TableGroupId: String
        # @param TableName: 表名称
        # @type TableName: String
        # @param SnapshotName: 快照名称
        # @type SnapshotName: String
        # @param SnapshotDeadTime: 快照过期时间点
        # @type SnapshotDeadTime: String

        attr_accessor :TableGroupId, :TableName, :SnapshotName, :SnapshotDeadTime

        def initialize(tablegroupid=nil, tablename=nil, snapshotname=nil, snapshotdeadtime=nil)
          @TableGroupId = tablegroupid
          @TableName = tablename
          @SnapshotName = snapshotname
          @SnapshotDeadTime = snapshotdeadtime
        end

        def deserialize(params)
          @TableGroupId = params['TableGroupId']
          @TableName = params['TableName']
          @SnapshotName = params['SnapshotName']
          @SnapshotDeadTime = params['SnapshotDeadTime']
        end
      end

      # 创建快照结果
      class SnapshotResult < TencentCloud::Common::AbstractModel
        # @param TableGroupId: 表格所属表格组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableGroupId: String
        # @param TableName: 表格名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param TaskId: 任务ID，对于创建单任务的接口有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param Error: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`
        # @param SnapshotName: 快照名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotName: String
        # @param SnapshotTime: 快照的时间点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotTime: String
        # @param SnapshotDeadTime: 快照的过期时间点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotDeadTime: String
        # @param SnapshotCreateTime: 快照创建时间点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotCreateTime: String
        # @param SnapshotSize: 快照大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotSize: Integer
        # @param SnapshotStatus: 快照状态，0 生成中 1 正常 2 删除中 3 已失效 4 回档使用中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotStatus: Integer

        attr_accessor :TableGroupId, :TableName, :TaskId, :Error, :SnapshotName, :SnapshotTime, :SnapshotDeadTime, :SnapshotCreateTime, :SnapshotSize, :SnapshotStatus

        def initialize(tablegroupid=nil, tablename=nil, taskid=nil, error=nil, snapshotname=nil, snapshottime=nil, snapshotdeadtime=nil, snapshotcreatetime=nil, snapshotsize=nil, snapshotstatus=nil)
          @TableGroupId = tablegroupid
          @TableName = tablename
          @TaskId = taskid
          @Error = error
          @SnapshotName = snapshotname
          @SnapshotTime = snapshottime
          @SnapshotDeadTime = snapshotdeadtime
          @SnapshotCreateTime = snapshotcreatetime
          @SnapshotSize = snapshotsize
          @SnapshotStatus = snapshotstatus
        end

        def deserialize(params)
          @TableGroupId = params['TableGroupId']
          @TableName = params['TableName']
          @TaskId = params['TaskId']
          unless params['Error'].nil?
            @Error = ErrorInfo.new
            @Error.deserialize(params['Error'])
          end
          @SnapshotName = params['SnapshotName']
          @SnapshotTime = params['SnapshotTime']
          @SnapshotDeadTime = params['SnapshotDeadTime']
          @SnapshotCreateTime = params['SnapshotCreateTime']
          @SnapshotSize = params['SnapshotSize']
          @SnapshotStatus = params['SnapshotStatus']
        end
      end

      # 缓写表字段名称的映射
      class SyncTableField < TencentCloud::Common::AbstractModel
        # @param SourceName: TcaplusDB表字段名称
        # @type SourceName: String
        # @param TargetName: 目标缓写表的字段名称
        # @type TargetName: String

        attr_accessor :SourceName, :TargetName

        def initialize(sourcename=nil, targetname=nil)
          @SourceName = sourcename
          @TargetName = targetname
        end

        def deserialize(params)
          @SourceName = params['SourceName']
          @TargetName = params['TargetName']
        end
      end

      # TcaplusDB的缓写表信息
      class SyncTableInfo < TencentCloud::Common::AbstractModel
        # @param TargetTableSplitNum: 目标缓写表的分表数目
        # @type TargetTableSplitNum: Integer
        # @param TargetTableNamePrefix: 目标缓写表名前缀
        # @type TargetTableNamePrefix: Array
        # @param TargetSyncDBInstanceId: 缓写数据库实例ID
        # @type TargetSyncDBInstanceId: String
        # @param TargetDatabaseName: 缓写表所在数据库名称
        # @type TargetDatabaseName: String
        # @param Status: 缓写状态，0：创建中，1：进行中，2：关闭，-1：被删除
        # @type Status: Integer
        # @param ClusterId: 表格所在集群ID
        # @type ClusterId: String
        # @param TableGroupId: 表格所在表格组ID
        # @type TableGroupId: Integer
        # @param TableName: 表格名称
        # @type TableName: String
        # @param TableId: 表格ID
        # @type TableId: String
        # @param KeyFieldMapping: TcaplusDB表主键字段到目标缓写表字段的映射
        # @type KeyFieldMapping: Array
        # @param ValueFieldMapping: TcaplusDB表字段到目标缓写表字段的映射
        # @type ValueFieldMapping: Array

        attr_accessor :TargetTableSplitNum, :TargetTableNamePrefix, :TargetSyncDBInstanceId, :TargetDatabaseName, :Status, :ClusterId, :TableGroupId, :TableName, :TableId, :KeyFieldMapping, :ValueFieldMapping

        def initialize(targettablesplitnum=nil, targettablenameprefix=nil, targetsyncdbinstanceid=nil, targetdatabasename=nil, status=nil, clusterid=nil, tablegroupid=nil, tablename=nil, tableid=nil, keyfieldmapping=nil, valuefieldmapping=nil)
          @TargetTableSplitNum = targettablesplitnum
          @TargetTableNamePrefix = targettablenameprefix
          @TargetSyncDBInstanceId = targetsyncdbinstanceid
          @TargetDatabaseName = targetdatabasename
          @Status = status
          @ClusterId = clusterid
          @TableGroupId = tablegroupid
          @TableName = tablename
          @TableId = tableid
          @KeyFieldMapping = keyfieldmapping
          @ValueFieldMapping = valuefieldmapping
        end

        def deserialize(params)
          @TargetTableSplitNum = params['TargetTableSplitNum']
          @TargetTableNamePrefix = params['TargetTableNamePrefix']
          @TargetSyncDBInstanceId = params['TargetSyncDBInstanceId']
          @TargetDatabaseName = params['TargetDatabaseName']
          @Status = params['Status']
          @ClusterId = params['ClusterId']
          @TableGroupId = params['TableGroupId']
          @TableName = params['TableName']
          @TableId = params['TableId']
          unless params['KeyFieldMapping'].nil?
            @KeyFieldMapping = []
            params['KeyFieldMapping'].each do |i|
              synctablefield_tmp = SyncTableField.new
              synctablefield_tmp.deserialize(i)
              @KeyFieldMapping << synctablefield_tmp
            end
          end
          unless params['ValueFieldMapping'].nil?
            @ValueFieldMapping = []
            params['ValueFieldMapping'].each do |i|
              synctablefield_tmp = SyncTableField.new
              synctablefield_tmp.deserialize(i)
              @ValueFieldMapping << synctablefield_tmp
            end
          end
        end
      end

      # 表格组详细信息
      class TableGroupInfo < TencentCloud::Common::AbstractModel
        # @param TableGroupId: 表格组ID
        # @type TableGroupId: String
        # @param TableGroupName: 表格组名称
        # @type TableGroupName: String
        # @param CreatedTime: 表格组创建时间
        # @type CreatedTime: String
        # @param TableCount: 表格组包含的表格数量
        # @type TableCount: Integer
        # @param TotalSize: 表格组包含的表格存储总量（MB）
        # @type TotalSize: Integer
        # @param TxhBackupExpireDay: 表格Txh备份文件多少天后过期删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TxhBackupExpireDay: Integer
        # @param EnableMysql: 是否开启mysql负载均衡,0未开启 1开启中 2已开启
        # @type EnableMysql: Integer
        # @param MysqlConnIp: mysql负载均衡vip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MysqlConnIp: String
        # @param MysqlConnPort: mysql负载均衡vport
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MysqlConnPort: Integer

        attr_accessor :TableGroupId, :TableGroupName, :CreatedTime, :TableCount, :TotalSize, :TxhBackupExpireDay, :EnableMysql, :MysqlConnIp, :MysqlConnPort

        def initialize(tablegroupid=nil, tablegroupname=nil, createdtime=nil, tablecount=nil, totalsize=nil, txhbackupexpireday=nil, enablemysql=nil, mysqlconnip=nil, mysqlconnport=nil)
          @TableGroupId = tablegroupid
          @TableGroupName = tablegroupname
          @CreatedTime = createdtime
          @TableCount = tablecount
          @TotalSize = totalsize
          @TxhBackupExpireDay = txhbackupexpireday
          @EnableMysql = enablemysql
          @MysqlConnIp = mysqlconnip
          @MysqlConnPort = mysqlconnport
        end

        def deserialize(params)
          @TableGroupId = params['TableGroupId']
          @TableGroupName = params['TableGroupName']
          @CreatedTime = params['CreatedTime']
          @TableCount = params['TableCount']
          @TotalSize = params['TotalSize']
          @TxhBackupExpireDay = params['TxhBackupExpireDay']
          @EnableMysql = params['EnableMysql']
          @MysqlConnIp = params['MysqlConnIp']
          @MysqlConnPort = params['MysqlConnPort']
        end
      end

      # 表格详情信息
      class TableInfoNew < TencentCloud::Common::AbstractModel
        # @param TableName: 表格名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param TableInstanceId: 表格实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableInstanceId: String
        # @param TableType: 表格数据结构类型，如：`GENERIC`或`LIST`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableType: String
        # @param TableIdlType: 表格数据描述语言（IDL）类型，如：`PROTO`或`TDR`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableIdlType: String
        # @param ClusterId: 表格所属集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 表格所属集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param TableGroupId: 表格所属表格组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableGroupId: String
        # @param TableGroupName: 表格所属表格组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableGroupName: String
        # @param KeyStruct: 表格主键字段结构json字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyStruct: String
        # @param ValueStruct: 表格非主键字段结构json字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueStruct: String
        # @param ShardingKeySet: 表格分表因子集合，对PROTO类型表格有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShardingKeySet: String
        # @param IndexStruct: 表格索引键字段集合，对PROTO类型表格有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexStruct: String
        # @param ListElementNum: LIST类型表格元素个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListElementNum: Integer
        # @param IdlFiles: 表格所关联IDL文件信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdlFiles: Array
        # @param ReservedVolume: 表格预留容量（GB）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedVolume: Integer
        # @param ReservedReadQps: 表格预留读CU
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedReadQps: Integer
        # @param ReservedWriteQps: 表格预留写CU
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedWriteQps: Integer
        # @param TableSize: 表格实际数据量大小（MB）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableSize: Integer
        # @param Status: 表格状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param CreatedTime: 表格创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param UpdatedTime: 表格最后一次修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedTime: String
        # @param Memo: 表格备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memo: String
        # @param Error: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`
        # @param ApiAccessId: TcaplusDB SDK数据访问接入ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiAccessId: String
        # @param SortFieldNum: SORTLIST类型表格排序字段个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SortFieldNum: Integer
        # @param SortRule: SORTLIST类型表格排序顺序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SortRule: Integer
        # @param DbClusterInfoStruct: 表格分布式索引/缓写、kafka数据订阅信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbClusterInfoStruct: String
        # @param TxhBackupExpireDay: 表格Txh备份文件多少天后过期删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TxhBackupExpireDay: Integer
        # @param SyncTableInfo: 表格的缓写信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SyncTableInfo: :class:`Tencentcloud::Tcaplusdb.v20190823.models.SyncTableInfo`

        attr_accessor :TableName, :TableInstanceId, :TableType, :TableIdlType, :ClusterId, :ClusterName, :TableGroupId, :TableGroupName, :KeyStruct, :ValueStruct, :ShardingKeySet, :IndexStruct, :ListElementNum, :IdlFiles, :ReservedVolume, :ReservedReadQps, :ReservedWriteQps, :TableSize, :Status, :CreatedTime, :UpdatedTime, :Memo, :Error, :ApiAccessId, :SortFieldNum, :SortRule, :DbClusterInfoStruct, :TxhBackupExpireDay, :SyncTableInfo

        def initialize(tablename=nil, tableinstanceid=nil, tabletype=nil, tableidltype=nil, clusterid=nil, clustername=nil, tablegroupid=nil, tablegroupname=nil, keystruct=nil, valuestruct=nil, shardingkeyset=nil, indexstruct=nil, listelementnum=nil, idlfiles=nil, reservedvolume=nil, reservedreadqps=nil, reservedwriteqps=nil, tablesize=nil, status=nil, createdtime=nil, updatedtime=nil, memo=nil, error=nil, apiaccessid=nil, sortfieldnum=nil, sortrule=nil, dbclusterinfostruct=nil, txhbackupexpireday=nil, synctableinfo=nil)
          @TableName = tablename
          @TableInstanceId = tableinstanceid
          @TableType = tabletype
          @TableIdlType = tableidltype
          @ClusterId = clusterid
          @ClusterName = clustername
          @TableGroupId = tablegroupid
          @TableGroupName = tablegroupname
          @KeyStruct = keystruct
          @ValueStruct = valuestruct
          @ShardingKeySet = shardingkeyset
          @IndexStruct = indexstruct
          @ListElementNum = listelementnum
          @IdlFiles = idlfiles
          @ReservedVolume = reservedvolume
          @ReservedReadQps = reservedreadqps
          @ReservedWriteQps = reservedwriteqps
          @TableSize = tablesize
          @Status = status
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @Memo = memo
          @Error = error
          @ApiAccessId = apiaccessid
          @SortFieldNum = sortfieldnum
          @SortRule = sortrule
          @DbClusterInfoStruct = dbclusterinfostruct
          @TxhBackupExpireDay = txhbackupexpireday
          @SyncTableInfo = synctableinfo
        end

        def deserialize(params)
          @TableName = params['TableName']
          @TableInstanceId = params['TableInstanceId']
          @TableType = params['TableType']
          @TableIdlType = params['TableIdlType']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @TableGroupId = params['TableGroupId']
          @TableGroupName = params['TableGroupName']
          @KeyStruct = params['KeyStruct']
          @ValueStruct = params['ValueStruct']
          @ShardingKeySet = params['ShardingKeySet']
          @IndexStruct = params['IndexStruct']
          @ListElementNum = params['ListElementNum']
          unless params['IdlFiles'].nil?
            @IdlFiles = []
            params['IdlFiles'].each do |i|
              idlfileinfo_tmp = IdlFileInfo.new
              idlfileinfo_tmp.deserialize(i)
              @IdlFiles << idlfileinfo_tmp
            end
          end
          @ReservedVolume = params['ReservedVolume']
          @ReservedReadQps = params['ReservedReadQps']
          @ReservedWriteQps = params['ReservedWriteQps']
          @TableSize = params['TableSize']
          @Status = params['Status']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          @Memo = params['Memo']
          unless params['Error'].nil?
            @Error = ErrorInfo.new
            @Error.deserialize(params['Error'])
          end
          @ApiAccessId = params['ApiAccessId']
          @SortFieldNum = params['SortFieldNum']
          @SortRule = params['SortRule']
          @DbClusterInfoStruct = params['DbClusterInfoStruct']
          @TxhBackupExpireDay = params['TxhBackupExpireDay']
          unless params['SyncTableInfo'].nil?
            @SyncTableInfo = SyncTableInfo.new
            @SyncTableInfo.deserialize(params['SyncTableInfo'])
          end
        end
      end

      # 表处理结果信息
      class TableResultNew < TencentCloud::Common::AbstractModel
        # @param TableInstanceId: 表格实例ID，形如：tcaplus-3be64cbb
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableInstanceId: String
        # @param TaskId: 任务ID，对于创建单任务的接口有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TableName: 表格名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param TableType: 表格数据结构类型，如：`GENERIC`或`LIST`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableType: String
        # @param TableIdlType: 表数据描述语言（IDL）类型，如：`PROTO`或`TDR`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableIdlType: String
        # @param TableGroupId: 表格所属表格组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableGroupId: String
        # @param Error: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`
        # @param TaskIds: 任务ID列表，对于创建多任务的接口有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskIds: Array
        # @param ApplicationId: 腾讯云申请审核单Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String

        attr_accessor :TableInstanceId, :TaskId, :TableName, :TableType, :TableIdlType, :TableGroupId, :Error, :TaskIds, :ApplicationId

        def initialize(tableinstanceid=nil, taskid=nil, tablename=nil, tabletype=nil, tableidltype=nil, tablegroupid=nil, error=nil, taskids=nil, applicationid=nil)
          @TableInstanceId = tableinstanceid
          @TaskId = taskid
          @TableName = tablename
          @TableType = tabletype
          @TableIdlType = tableidltype
          @TableGroupId = tablegroupid
          @Error = error
          @TaskIds = taskids
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @TableInstanceId = params['TableInstanceId']
          @TaskId = params['TaskId']
          @TableName = params['TableName']
          @TableType = params['TableType']
          @TableIdlType = params['TableIdlType']
          @TableGroupId = params['TableGroupId']
          unless params['Error'].nil?
            @Error = ErrorInfo.new
            @Error.deserialize(params['Error'])
          end
          @TaskIds = params['TaskIds']
          @ApplicationId = params['ApplicationId']
        end
      end

      # 表格回档结果信息
      class TableRollbackResultNew < TencentCloud::Common::AbstractModel
        # @param TableInstanceId: 表格实例ID，形如：tcaplus-3be64cbb
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableInstanceId: String
        # @param TaskId: 任务ID，对于创建单任务的接口有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TableName: 表格名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param TableType: 表格数据结构类型，如：`GENERIC`或`LIST`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableType: String
        # @param TableIdlType: 表格数据描述语言（IDL）类型，如：`PROTO`或`TDR`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableIdlType: String
        # @param TableGroupId: 表格所属表格组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableGroupId: String
        # @param Error: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`
        # @param TaskIds: 任务ID列表，对于创建多任务的接口有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskIds: Array
        # @param FileId: 上传的key文件ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileId: String
        # @param SuccKeyNum: 校验成功Key数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccKeyNum: Integer
        # @param TotalKeyNum: Key文件中包含总的Key数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalKeyNum: Integer

        attr_accessor :TableInstanceId, :TaskId, :TableName, :TableType, :TableIdlType, :TableGroupId, :Error, :TaskIds, :FileId, :SuccKeyNum, :TotalKeyNum

        def initialize(tableinstanceid=nil, taskid=nil, tablename=nil, tabletype=nil, tableidltype=nil, tablegroupid=nil, error=nil, taskids=nil, fileid=nil, succkeynum=nil, totalkeynum=nil)
          @TableInstanceId = tableinstanceid
          @TaskId = taskid
          @TableName = tablename
          @TableType = tabletype
          @TableIdlType = tableidltype
          @TableGroupId = tablegroupid
          @Error = error
          @TaskIds = taskids
          @FileId = fileid
          @SuccKeyNum = succkeynum
          @TotalKeyNum = totalkeynum
        end

        def deserialize(params)
          @TableInstanceId = params['TableInstanceId']
          @TaskId = params['TaskId']
          @TableName = params['TableName']
          @TableType = params['TableType']
          @TableIdlType = params['TableIdlType']
          @TableGroupId = params['TableGroupId']
          unless params['Error'].nil?
            @Error = ErrorInfo.new
            @Error.deserialize(params['Error'])
          end
          @TaskIds = params['TaskIds']
          @FileId = params['FileId']
          @SuccKeyNum = params['SuccKeyNum']
          @TotalKeyNum = params['TotalKeyNum']
        end
      end

      # 标签信息单元
      class TagInfoUnit < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
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

      # 集群的标签信息
      class TagsInfoOfCluster < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param Tags: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Error: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`

        attr_accessor :ClusterId, :Tags, :Error

        def initialize(clusterid=nil, tags=nil, error=nil)
          @ClusterId = clusterid
          @Tags = tags
          @Error = error
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfounit_tmp = TagInfoUnit.new
              taginfounit_tmp.deserialize(i)
              @Tags << taginfounit_tmp
            end
          end
          unless params['Error'].nil?
            @Error = ErrorInfo.new
            @Error.deserialize(params['Error'])
          end
        end
      end

      # 表格标签信息
      class TagsInfoOfTable < TencentCloud::Common::AbstractModel
        # @param TableInstanceId: 表格实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableInstanceId: String
        # @param TableName: 表格名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param TableGroupId: 表格组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableGroupId: String
        # @param Tags: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Error: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`

        attr_accessor :TableInstanceId, :TableName, :TableGroupId, :Tags, :Error

        def initialize(tableinstanceid=nil, tablename=nil, tablegroupid=nil, tags=nil, error=nil)
          @TableInstanceId = tableinstanceid
          @TableName = tablename
          @TableGroupId = tablegroupid
          @Tags = tags
          @Error = error
        end

        def deserialize(params)
          @TableInstanceId = params['TableInstanceId']
          @TableName = params['TableName']
          @TableGroupId = params['TableGroupId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfounit_tmp = TagInfoUnit.new
              taginfounit_tmp.deserialize(i)
              @Tags << taginfounit_tmp
            end
          end
          unless params['Error'].nil?
            @Error = ErrorInfo.new
            @Error.deserialize(params['Error'])
          end
        end
      end

      # 表格组标签信息
      class TagsInfoOfTableGroup < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param TableGroupId: 表格组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableGroupId: String
        # @param Tags: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Error: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Tcaplusdb.v20190823.models.ErrorInfo`

        attr_accessor :ClusterId, :TableGroupId, :Tags, :Error

        def initialize(clusterid=nil, tablegroupid=nil, tags=nil, error=nil)
          @ClusterId = clusterid
          @TableGroupId = tablegroupid
          @Tags = tags
          @Error = error
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupId = params['TableGroupId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfounit_tmp = TagInfoUnit.new
              taginfounit_tmp.deserialize(i)
              @Tags << taginfounit_tmp
            end
          end
          unless params['Error'].nil?
            @Error = ErrorInfo.new
            @Error.deserialize(params['Error'])
          end
        end
      end

      # 任务信息详情
      class TaskInfoNew < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskType: 任务类型
        # @type TaskType: String
        # @param TransId: 任务所关联的TcaplusDB内部事务ID
        # @type TransId: String
        # @param ClusterId: 任务所属集群ID
        # @type ClusterId: String
        # @param ClusterName: 任务所属集群名称
        # @type ClusterName: String
        # @param Progress: 任务进度
        # @type Progress: Integer
        # @param StartTime: 任务创建时间
        # @type StartTime: String
        # @param UpdateTime: 任务最后更新时间
        # @type UpdateTime: String
        # @param Operator: 操作者
        # @type Operator: String
        # @param Content: 任务详情
        # @type Content: String

        attr_accessor :TaskId, :TaskType, :TransId, :ClusterId, :ClusterName, :Progress, :StartTime, :UpdateTime, :Operator, :Content

        def initialize(taskid=nil, tasktype=nil, transid=nil, clusterid=nil, clustername=nil, progress=nil, starttime=nil, updatetime=nil, operator=nil, content=nil)
          @TaskId = taskid
          @TaskType = tasktype
          @TransId = transid
          @ClusterId = clusterid
          @ClusterName = clustername
          @Progress = progress
          @StartTime = starttime
          @UpdateTime = updatetime
          @Operator = operator
          @Content = content
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskType = params['TaskType']
          @TransId = params['TransId']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Progress = params['Progress']
          @StartTime = params['StartTime']
          @UpdateTime = params['UpdateTime']
          @Operator = params['Operator']
          @Content = params['Content']
        end
      end

      # UpdateApply请求参数结构体
      class UpdateApplyRequest < TencentCloud::Common::AbstractModel
        # @param ApplyStatus: 申请单状态
        # @type ApplyStatus: Array

        attr_accessor :ApplyStatus

        def initialize(applystatus=nil)
          @ApplyStatus = applystatus
        end

        def deserialize(params)
          unless params['ApplyStatus'].nil?
            @ApplyStatus = []
            params['ApplyStatus'].each do |i|
              applystatus_tmp = ApplyStatus.new
              applystatus_tmp.deserialize(i)
              @ApplyStatus << applystatus_tmp
            end
          end
        end
      end

      # UpdateApply返回参数结构体
      class UpdateApplyResponse < TencentCloud::Common::AbstractModel
        # @param ApplyResults: 已更新的申请单列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplyResults: Array
        # @param TotalCount: 更新数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplyResults, :TotalCount, :RequestId

        def initialize(applyresults=nil, totalcount=nil, requestid=nil)
          @ApplyResults = applyresults
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApplyResults'].nil?
            @ApplyResults = []
            params['ApplyResults'].each do |i|
              applyresult_tmp = ApplyResult.new
              applyresult_tmp.deserialize(i)
              @ApplyResults << applyresult_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # VerifyIdlFiles请求参数结构体
      class VerifyIdlFilesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 待创建表格的集群ID
        # @type ClusterId: String
        # @param TableGroupId: 待创建表格的表格组ID
        # @type TableGroupId: String
        # @param ExistingIdlFiles: 曾经上传过的IDL文件信息列表，与NewIdlFiles至少有一者
        # @type ExistingIdlFiles: Array
        # @param NewIdlFiles: 待上传的IDL文件信息列表，与ExistingIdlFiles至少有一者
        # @type NewIdlFiles: Array

        attr_accessor :ClusterId, :TableGroupId, :ExistingIdlFiles, :NewIdlFiles

        def initialize(clusterid=nil, tablegroupid=nil, existingidlfiles=nil, newidlfiles=nil)
          @ClusterId = clusterid
          @TableGroupId = tablegroupid
          @ExistingIdlFiles = existingidlfiles
          @NewIdlFiles = newidlfiles
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TableGroupId = params['TableGroupId']
          unless params['ExistingIdlFiles'].nil?
            @ExistingIdlFiles = []
            params['ExistingIdlFiles'].each do |i|
              idlfileinfo_tmp = IdlFileInfo.new
              idlfileinfo_tmp.deserialize(i)
              @ExistingIdlFiles << idlfileinfo_tmp
            end
          end
          unless params['NewIdlFiles'].nil?
            @NewIdlFiles = []
            params['NewIdlFiles'].each do |i|
              idlfileinfo_tmp = IdlFileInfo.new
              idlfileinfo_tmp.deserialize(i)
              @NewIdlFiles << idlfileinfo_tmp
            end
          end
        end
      end

      # VerifyIdlFiles返回参数结构体
      class VerifyIdlFilesResponse < TencentCloud::Common::AbstractModel
        # @param IdlFiles: 本次上传校验所有的IDL文件信息列表
        # @type IdlFiles: Array
        # @param TotalCount: 读取IDL描述文件后解析出的合法表数量，不包含已经创建的表
        # @type TotalCount: Integer
        # @param TableInfos: 读取IDL描述文件后解析出的合法表列表，不包含已经创建的表
        # @type TableInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IdlFiles, :TotalCount, :TableInfos, :RequestId

        def initialize(idlfiles=nil, totalcount=nil, tableinfos=nil, requestid=nil)
          @IdlFiles = idlfiles
          @TotalCount = totalcount
          @TableInfos = tableinfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IdlFiles'].nil?
            @IdlFiles = []
            params['IdlFiles'].each do |i|
              idlfileinfo_tmp = IdlFileInfo.new
              idlfileinfo_tmp.deserialize(i)
              @IdlFiles << idlfileinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['TableInfos'].nil?
            @TableInfos = []
            params['TableInfos'].each do |i|
              parsedtableinfonew_tmp = ParsedTableInfoNew.new
              parsedtableinfonew_tmp.deserialize(i)
              @TableInfos << parsedtableinfonew_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

