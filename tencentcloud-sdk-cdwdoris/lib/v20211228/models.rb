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
  module Cdwdoris
    module V20211228
      # 集群内节点的规格磁盘规格描述
      class AttachCBSSpec < TencentCloud::Common::AbstractModel
        # @param DiskType: 节点磁盘类型，例如“CLOUD_SSD”\"CLOUD_PREMIUM"
        # @type DiskType: String
        # @param DiskSize: 磁盘容量，单位G
        # @type DiskSize: Integer
        # @param DiskCount: 磁盘总数
        # @type DiskCount: Integer
        # @param DiskDesc: 描述
        # @type DiskDesc: String

        attr_accessor :DiskType, :DiskSize, :DiskCount, :DiskDesc

        def initialize(disktype=nil, disksize=nil, diskcount=nil, diskdesc=nil)
          @DiskType = disktype
          @DiskSize = disksize
          @DiskCount = diskcount
          @DiskDesc = diskdesc
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @DiskCount = params['DiskCount']
          @DiskDesc = params['DiskDesc']
        end
      end

      # 集群计费相关信息
      class ChargeProperties < TencentCloud::Common::AbstractModel
        # @param ChargeType: 计费类型，“PREPAID” 预付费，“POSTPAID_BY_HOUR” 后付费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeType: String
        # @param RenewFlag: 是否自动续费，1表示自动续费开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param TimeSpan: 计费时间长度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeSpan: Integer
        # @param TimeUnit: 计费时间单位，“m”表示月等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeUnit: String

        attr_accessor :ChargeType, :RenewFlag, :TimeSpan, :TimeUnit

        def initialize(chargetype=nil, renewflag=nil, timespan=nil, timeunit=nil)
          @ChargeType = chargetype
          @RenewFlag = renewflag
          @TimeSpan = timespan
          @TimeUnit = timeunit
        end

        def deserialize(params)
          @ChargeType = params['ChargeType']
          @RenewFlag = params['RenewFlag']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
        end
      end

      # 用于返回XML格式的配置文件和内容以及其他配置文件有关的信息
      class ClusterConfigsInfoFromEMR < TencentCloud::Common::AbstractModel
        # @param FileName: 配置文件名称
        # @type FileName: String
        # @param FileConf: 配置文件对应的相关属性信息
        # @type FileConf: String
        # @param KeyConf: 配置文件对应的其他属性信息
        # @type KeyConf: String
        # @param OriParam: 配置文件的内容，base64编码
        # @type OriParam: String
        # @param NeedRestart: 用于表示当前配置文件是不是有过修改后没有重启，提醒用户需要重启
        # @type NeedRestart: Integer
        # @param FilePath: 配置文件路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilePath: String
        # @param FileKeyValues: 配置文件kv值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileKeyValues: String
        # @param FileKeyValuesNew: 配置文件kv值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileKeyValuesNew: Array

        attr_accessor :FileName, :FileConf, :KeyConf, :OriParam, :NeedRestart, :FilePath, :FileKeyValues, :FileKeyValuesNew
        extend Gem::Deprecate
        deprecate :FileKeyValues, :none, 2023, 12
        deprecate :FileKeyValues=, :none, 2023, 12

        def initialize(filename=nil, fileconf=nil, keyconf=nil, oriparam=nil, needrestart=nil, filepath=nil, filekeyvalues=nil, filekeyvaluesnew=nil)
          @FileName = filename
          @FileConf = fileconf
          @KeyConf = keyconf
          @OriParam = oriparam
          @NeedRestart = needrestart
          @FilePath = filepath
          @FileKeyValues = filekeyvalues
          @FileKeyValuesNew = filekeyvaluesnew
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileConf = params['FileConf']
          @KeyConf = params['KeyConf']
          @OriParam = params['OriParam']
          @NeedRestart = params['NeedRestart']
          @FilePath = params['FilePath']
          @FileKeyValues = params['FileKeyValues']
          unless params['FileKeyValuesNew'].nil?
            @FileKeyValuesNew = []
            params['FileKeyValuesNew'].each do |i|
              configkeyvalue_tmp = ConfigKeyValue.new
              configkeyvalue_tmp.deserialize(i)
              @FileKeyValuesNew << configkeyvalue_tmp
            end
          end
        end
      end

      # 返回配置的文件内容（key-value）
      class ConfigKeyValue < TencentCloud::Common::AbstractModel
        # @param KeyName: key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyName: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Message: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Display: 1-只读，2-可修改但不可删除，3-可删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Display: Integer
        # @param SupportHotUpdate: 0不支持 1支持热更新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportHotUpdate: Integer

        attr_accessor :KeyName, :Value, :Message, :Display, :SupportHotUpdate

        def initialize(keyname=nil, value=nil, message=nil, display=nil, supporthotupdate=nil)
          @KeyName = keyname
          @Value = value
          @Message = message
          @Display = display
          @SupportHotUpdate = supporthotupdate
        end

        def deserialize(params)
          @KeyName = params['KeyName']
          @Value = params['Value']
          @Message = params['Message']
          @Display = params['Display']
          @SupportHotUpdate = params['SupportHotUpdate']
        end
      end

      # CreateInstanceNew请求参数结构体
      class CreateInstanceNewRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param FeSpec: FE规格
        # @type FeSpec: :class:`Tencentcloud::Cdwdoris.v20211228.models.CreateInstanceSpec`
        # @param BeSpec: BE规格
        # @type BeSpec: :class:`Tencentcloud::Cdwdoris.v20211228.models.CreateInstanceSpec`
        # @param HaFlag: 是否高可用
        # @type HaFlag: Boolean
        # @param UserVPCId: 用户VPCID
        # @type UserVPCId: String
        # @param UserSubnetId: 用户子网ID
        # @type UserSubnetId: String
        # @param ProductVersion: 产品版本号
        # @type ProductVersion: String
        # @param ChargeProperties: 付费类型
        # @type ChargeProperties: :class:`Tencentcloud::Cdwdoris.v20211228.models.ChargeProperties`
        # @param InstanceName: 实例名字
        # @type InstanceName: String
        # @param DorisUserPwd: 数据库密码
        # @type DorisUserPwd: String
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param HaType: 高可用类型：0：非高可用，1：读高可用，2：读写高可用。
        # @type HaType: Integer
        # @param CaseSensitive: 表名大小写是否敏感，0：敏感；1：不敏感，以小写进行比较；2：不敏感，表名改为以小写存储
        # @type CaseSensitive: Integer

        attr_accessor :Zone, :FeSpec, :BeSpec, :HaFlag, :UserVPCId, :UserSubnetId, :ProductVersion, :ChargeProperties, :InstanceName, :DorisUserPwd, :Tags, :HaType, :CaseSensitive

        def initialize(zone=nil, fespec=nil, bespec=nil, haflag=nil, uservpcid=nil, usersubnetid=nil, productversion=nil, chargeproperties=nil, instancename=nil, dorisuserpwd=nil, tags=nil, hatype=nil, casesensitive=nil)
          @Zone = zone
          @FeSpec = fespec
          @BeSpec = bespec
          @HaFlag = haflag
          @UserVPCId = uservpcid
          @UserSubnetId = usersubnetid
          @ProductVersion = productversion
          @ChargeProperties = chargeproperties
          @InstanceName = instancename
          @DorisUserPwd = dorisuserpwd
          @Tags = tags
          @HaType = hatype
          @CaseSensitive = casesensitive
        end

        def deserialize(params)
          @Zone = params['Zone']
          unless params['FeSpec'].nil?
            @FeSpec = CreateInstanceSpec.new
            @FeSpec.deserialize(params['FeSpec'])
          end
          unless params['BeSpec'].nil?
            @BeSpec = CreateInstanceSpec.new
            @BeSpec.deserialize(params['BeSpec'])
          end
          @HaFlag = params['HaFlag']
          @UserVPCId = params['UserVPCId']
          @UserSubnetId = params['UserSubnetId']
          @ProductVersion = params['ProductVersion']
          unless params['ChargeProperties'].nil?
            @ChargeProperties = ChargeProperties.new
            @ChargeProperties.deserialize(params['ChargeProperties'])
          end
          @InstanceName = params['InstanceName']
          @DorisUserPwd = params['DorisUserPwd']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @HaType = params['HaType']
          @CaseSensitive = params['CaseSensitive']
        end
      end

      # CreateInstanceNew返回参数结构体
      class CreateInstanceNewResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :InstanceId, :ErrorMsg, :RequestId

        def initialize(flowid=nil, instanceid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @InstanceId = instanceid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @InstanceId = params['InstanceId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 集群规格
      class CreateInstanceSpec < TencentCloud::Common::AbstractModel
        # @param SpecName: 规格名字
        # @type SpecName: String
        # @param Count: 数量
        # @type Count: Integer
        # @param DiskSize: 云盘大小
        # @type DiskSize: Integer

        attr_accessor :SpecName, :Count, :DiskSize

        def initialize(specname=nil, count=nil, disksize=nil)
          @SpecName = specname
          @Count = count
          @DiskSize = disksize
        end

        def deserialize(params)
          @SpecName = params['SpecName']
          @Count = params['Count']
          @DiskSize = params['DiskSize']
        end
      end

      # 数据库审计
      class DataBaseAuditRecord < TencentCloud::Common::AbstractModel
        # @param OsUser: 查询用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsUser: String
        # @param InitialQueryId: 查询ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitialQueryId: String
        # @param Sql: SQL语句
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sql: String
        # @param QueryStartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueryStartTime: String
        # @param DurationMs: 执行耗时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DurationMs: Integer
        # @param ReadRows: 读取行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadRows: Integer
        # @param ResultRows: 读取字节数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultRows: Integer
        # @param ResultBytes: 结果字节数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultBytes: Integer
        # @param MemoryUsage: 内存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemoryUsage: Integer
        # @param InitialAddress: 初始查询IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitialAddress: String
        # @param DbName: 数据库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbName: String
        # @param SqlType: sql类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SqlType: String
        # @param Catalog: catalog名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Catalog: String

        attr_accessor :OsUser, :InitialQueryId, :Sql, :QueryStartTime, :DurationMs, :ReadRows, :ResultRows, :ResultBytes, :MemoryUsage, :InitialAddress, :DbName, :SqlType, :Catalog

        def initialize(osuser=nil, initialqueryid=nil, sql=nil, querystarttime=nil, durationms=nil, readrows=nil, resultrows=nil, resultbytes=nil, memoryusage=nil, initialaddress=nil, dbname=nil, sqltype=nil, catalog=nil)
          @OsUser = osuser
          @InitialQueryId = initialqueryid
          @Sql = sql
          @QueryStartTime = querystarttime
          @DurationMs = durationms
          @ReadRows = readrows
          @ResultRows = resultrows
          @ResultBytes = resultbytes
          @MemoryUsage = memoryusage
          @InitialAddress = initialaddress
          @DbName = dbname
          @SqlType = sqltype
          @Catalog = catalog
        end

        def deserialize(params)
          @OsUser = params['OsUser']
          @InitialQueryId = params['InitialQueryId']
          @Sql = params['Sql']
          @QueryStartTime = params['QueryStartTime']
          @DurationMs = params['DurationMs']
          @ReadRows = params['ReadRows']
          @ResultRows = params['ResultRows']
          @ResultBytes = params['ResultBytes']
          @MemoryUsage = params['MemoryUsage']
          @InitialAddress = params['InitialAddress']
          @DbName = params['DbName']
          @SqlType = params['SqlType']
          @Catalog = params['Catalog']
        end
      end

      # DescribeClusterConfigs请求参数结构体
      class DescribeClusterConfigsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param ConfigType:  0 公有云查询；1青鹅查询，青鹅查询显示所有需要展示的
        # @type ConfigType: Integer
        # @param FileName: 模糊搜索关键字文件
        # @type FileName: String
        # @param ClusterConfigType: 0集群维度 1节点维度
        # @type ClusterConfigType: Integer
        # @param IPAddress: eth0的ip地址
        # @type IPAddress: String

        attr_accessor :InstanceId, :ConfigType, :FileName, :ClusterConfigType, :IPAddress

        def initialize(instanceid=nil, configtype=nil, filename=nil, clusterconfigtype=nil, ipaddress=nil)
          @InstanceId = instanceid
          @ConfigType = configtype
          @FileName = filename
          @ClusterConfigType = clusterconfigtype
          @IPAddress = ipaddress
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ConfigType = params['ConfigType']
          @FileName = params['FileName']
          @ClusterConfigType = params['ClusterConfigType']
          @IPAddress = params['IPAddress']
        end
      end

      # DescribeClusterConfigs返回参数结构体
      class DescribeClusterConfigsResponse < TencentCloud::Common::AbstractModel
        # @param ClusterConfList: 返回实例的配置文件相关的信息
        # @type ClusterConfList: Array
        # @param BuildVersion: 返回当前内核版本 如果不存在则返回空字符串
        # @type BuildVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterConfList, :BuildVersion, :RequestId

        def initialize(clusterconflist=nil, buildversion=nil, requestid=nil)
          @ClusterConfList = clusterconflist
          @BuildVersion = buildversion
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterConfList'].nil?
            @ClusterConfList = []
            params['ClusterConfList'].each do |i|
              clusterconfigsinfofromemr_tmp = ClusterConfigsInfoFromEMR.new
              clusterconfigsinfofromemr_tmp.deserialize(i)
              @ClusterConfList << clusterconfigsinfofromemr_tmp
            end
          end
          @BuildVersion = params['BuildVersion']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabaseAuditDownload请求参数结构体
      class DescribeDatabaseAuditDownloadRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param PageSize: 分页
        # @type PageSize: Integer
        # @param PageNum: 分页
        # @type PageNum: Integer
        # @param OrderType: 排序参数
        # @type OrderType: String
        # @param User: 用户
        # @type User: String
        # @param DbName: 数据库
        # @type DbName: String
        # @param SqlType: sql类型
        # @type SqlType: String
        # @param Sql: sql语句
        # @type Sql: String
        # @param Users: 用户 多选
        # @type Users: Array
        # @param DbNames: 数据库 多选
        # @type DbNames: Array
        # @param SqlTypes: sql类型 多选
        # @type SqlTypes: Array
        # @param Catalogs: catalog名称 （多选）
        # @type Catalogs: Array

        attr_accessor :InstanceId, :StartTime, :EndTime, :PageSize, :PageNum, :OrderType, :User, :DbName, :SqlType, :Sql, :Users, :DbNames, :SqlTypes, :Catalogs

        def initialize(instanceid=nil, starttime=nil, endtime=nil, pagesize=nil, pagenum=nil, ordertype=nil, user=nil, dbname=nil, sqltype=nil, sql=nil, users=nil, dbnames=nil, sqltypes=nil, catalogs=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNum = pagenum
          @OrderType = ordertype
          @User = user
          @DbName = dbname
          @SqlType = sqltype
          @Sql = sql
          @Users = users
          @DbNames = dbnames
          @SqlTypes = sqltypes
          @Catalogs = catalogs
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
          @OrderType = params['OrderType']
          @User = params['User']
          @DbName = params['DbName']
          @SqlType = params['SqlType']
          @Sql = params['Sql']
          @Users = params['Users']
          @DbNames = params['DbNames']
          @SqlTypes = params['SqlTypes']
          @Catalogs = params['Catalogs']
        end
      end

      # DescribeDatabaseAuditDownload返回参数结构体
      class DescribeDatabaseAuditDownloadResponse < TencentCloud::Common::AbstractModel
        # @param CosUrl: 日志的cos地址
        # @type CosUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CosUrl, :RequestId

        def initialize(cosurl=nil, requestid=nil)
          @CosUrl = cosurl
          @RequestId = requestid
        end

        def deserialize(params)
          @CosUrl = params['CosUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabaseAuditRecords请求参数结构体
      class DescribeDatabaseAuditRecordsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param PageSize: 分页
        # @type PageSize: Integer
        # @param PageNum: 分页
        # @type PageNum: Integer
        # @param OrderType: 排序参数
        # @type OrderType: String
        # @param User: 用户
        # @type User: String
        # @param DbName: 数据库
        # @type DbName: String
        # @param SqlType: sql类型
        # @type SqlType: String
        # @param Sql: sql语句
        # @type Sql: String
        # @param Users: 用户 （多选）
        # @type Users: Array
        # @param DbNames: 数据库 （多选）
        # @type DbNames: Array
        # @param SqlTypes: sql类型 （多选）
        # @type SqlTypes: Array
        # @param Catalogs: catalog名称（多选）
        # @type Catalogs: Array

        attr_accessor :InstanceId, :StartTime, :EndTime, :PageSize, :PageNum, :OrderType, :User, :DbName, :SqlType, :Sql, :Users, :DbNames, :SqlTypes, :Catalogs

        def initialize(instanceid=nil, starttime=nil, endtime=nil, pagesize=nil, pagenum=nil, ordertype=nil, user=nil, dbname=nil, sqltype=nil, sql=nil, users=nil, dbnames=nil, sqltypes=nil, catalogs=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNum = pagenum
          @OrderType = ordertype
          @User = user
          @DbName = dbname
          @SqlType = sqltype
          @Sql = sql
          @Users = users
          @DbNames = dbnames
          @SqlTypes = sqltypes
          @Catalogs = catalogs
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
          @OrderType = params['OrderType']
          @User = params['User']
          @DbName = params['DbName']
          @SqlType = params['SqlType']
          @Sql = params['Sql']
          @Users = params['Users']
          @DbNames = params['DbNames']
          @SqlTypes = params['SqlTypes']
          @Catalogs = params['Catalogs']
        end
      end

      # DescribeDatabaseAuditRecords返回参数结构体
      class DescribeDatabaseAuditRecordsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param SlowQueryRecords: 记录列表
        # @type SlowQueryRecords: :class:`Tencentcloud::Cdwdoris.v20211228.models.DataBaseAuditRecord`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SlowQueryRecords, :RequestId

        def initialize(totalcount=nil, slowqueryrecords=nil, requestid=nil)
          @TotalCount = totalcount
          @SlowQueryRecords = slowqueryrecords
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SlowQueryRecords'].nil?
            @SlowQueryRecords = DataBaseAuditRecord.new
            @SlowQueryRecords.deserialize(params['SlowQueryRecords'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceNodesInfo请求参数结构体
      class DescribeInstanceNodesInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 集群id
        # @type InstanceID: String

        attr_accessor :InstanceID

        def initialize(instanceid=nil)
          @InstanceID = instanceid
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
        end
      end

      # DescribeInstanceNodesInfo返回参数结构体
      class DescribeInstanceNodesInfoResponse < TencentCloud::Common::AbstractModel
        # @param BeNodes: Be节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeNodes: Array
        # @param FeNodes: Fe节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeNodes: Array
        # @param FeMaster: Fe master节点
        # @type FeMaster: String
        # @param BeNodeInfos: Be节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeNodeInfos: Array
        # @param FeNodeInfos: Fe节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeNodeInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BeNodes, :FeNodes, :FeMaster, :BeNodeInfos, :FeNodeInfos, :RequestId

        def initialize(benodes=nil, fenodes=nil, femaster=nil, benodeinfos=nil, fenodeinfos=nil, requestid=nil)
          @BeNodes = benodes
          @FeNodes = fenodes
          @FeMaster = femaster
          @BeNodeInfos = benodeinfos
          @FeNodeInfos = fenodeinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @BeNodes = params['BeNodes']
          @FeNodes = params['FeNodes']
          @FeMaster = params['FeMaster']
          unless params['BeNodeInfos'].nil?
            @BeNodeInfos = []
            params['BeNodeInfos'].each do |i|
              nodeinfo_tmp = NodeInfo.new
              nodeinfo_tmp.deserialize(i)
              @BeNodeInfos << nodeinfo_tmp
            end
          end
          unless params['FeNodeInfos'].nil?
            @FeNodeInfos = []
            params['FeNodeInfos'].each do |i|
              nodeinfo_tmp = NodeInfo.new
              nodeinfo_tmp.deserialize(i)
              @FeNodeInfos << nodeinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceNodes请求参数结构体
      class DescribeInstanceNodesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param NodeRole: 集群角色类型，默认为 "data"数据节点
        # @type NodeRole: String
        # @param Offset: 分页参数，第一页为0，第二页为10
        # @type Offset: Integer
        # @param Limit: 分页参数，分页步长，默认为10
        # @type Limit: Integer
        # @param DisplayPolicy: 展现策略，All时显示所有
        # @type DisplayPolicy: String

        attr_accessor :InstanceId, :NodeRole, :Offset, :Limit, :DisplayPolicy

        def initialize(instanceid=nil, noderole=nil, offset=nil, limit=nil, displaypolicy=nil)
          @InstanceId = instanceid
          @NodeRole = noderole
          @Offset = offset
          @Limit = limit
          @DisplayPolicy = displaypolicy
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NodeRole = params['NodeRole']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DisplayPolicy = params['DisplayPolicy']
        end
      end

      # DescribeInstanceNodes返回参数结构体
      class DescribeInstanceNodesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param InstanceNodesList: 实例节点总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceNodesList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceNodesList, :RequestId

        def initialize(totalcount=nil, instancenodeslist=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceNodesList = instancenodeslist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceNodesList'].nil?
            @InstanceNodesList = []
            params['InstanceNodesList'].each do |i|
              instancenode_tmp = InstanceNode.new
              instancenode_tmp.deserialize(i)
              @InstanceNodesList << instancenode_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstance请求参数结构体
      class DescribeInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstance返回参数结构体
      class DescribeInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceInfo: 实例描述信息
        # @type InstanceInfo: :class:`Tencentcloud::Cdwdoris.v20211228.models.InstanceInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceInfo, :RequestId

        def initialize(instanceinfo=nil, requestid=nil)
          @InstanceInfo = instanceinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceInfo'].nil?
            @InstanceInfo = InstanceInfo.new
            @InstanceInfo.deserialize(params['InstanceInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceState请求参数结构体
      class DescribeInstanceStateRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例名称
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceState返回参数结构体
      class DescribeInstanceStateResponse < TencentCloud::Common::AbstractModel
        # @param InstanceState: 集群状态，例如：Serving
        # @type InstanceState: String
        # @param FlowCreateTime: 集群操作创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowCreateTime: String
        # @param FlowName: 集群操作名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowName: String
        # @param FlowProgress: 集群操作进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowProgress: Float
        # @param InstanceStateDesc: 集群状态描述，例如：运行中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStateDesc: String
        # @param FlowMsg: 集群流程错误信息，例如：“创建失败，资源不足”
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceState, :FlowCreateTime, :FlowName, :FlowProgress, :InstanceStateDesc, :FlowMsg, :RequestId

        def initialize(instancestate=nil, flowcreatetime=nil, flowname=nil, flowprogress=nil, instancestatedesc=nil, flowmsg=nil, requestid=nil)
          @InstanceState = instancestate
          @FlowCreateTime = flowcreatetime
          @FlowName = flowname
          @FlowProgress = flowprogress
          @InstanceStateDesc = instancestatedesc
          @FlowMsg = flowmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceState = params['InstanceState']
          @FlowCreateTime = params['FlowCreateTime']
          @FlowName = params['FlowName']
          @FlowProgress = params['FlowProgress']
          @InstanceStateDesc = params['InstanceStateDesc']
          @FlowMsg = params['FlowMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param SearchInstanceId: 搜索的集群id名称
        # @type SearchInstanceId: String
        # @param SearchInstanceName: 搜索的集群name
        # @type SearchInstanceName: String
        # @param Offset: 分页参数，第一页为0，第二页为10
        # @type Offset: Integer
        # @param Limit: 分页参数，分页步长，默认为10
        # @type Limit: Integer
        # @param SearchTags: 搜索标签列表
        # @type SearchTags: Array

        attr_accessor :SearchInstanceId, :SearchInstanceName, :Offset, :Limit, :SearchTags

        def initialize(searchinstanceid=nil, searchinstancename=nil, offset=nil, limit=nil, searchtags=nil)
          @SearchInstanceId = searchinstanceid
          @SearchInstanceName = searchinstancename
          @Offset = offset
          @Limit = limit
          @SearchTags = searchtags
        end

        def deserialize(params)
          @SearchInstanceId = params['SearchInstanceId']
          @SearchInstanceName = params['SearchInstanceName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['SearchTags'].nil?
            @SearchTags = []
            params['SearchTags'].each do |i|
              searchtags_tmp = SearchTags.new
              searchtags_tmp.deserialize(i)
              @SearchTags << searchtags_tmp
            end
          end
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例总数
        # @type TotalCount: Integer
        # @param InstancesList: 实例数组
        # @type InstancesList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstancesList, :RequestId

        def initialize(totalcount=nil, instanceslist=nil, requestid=nil)
          @TotalCount = totalcount
          @InstancesList = instanceslist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstancesList'].nil?
            @InstancesList = []
            params['InstancesList'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @InstancesList << instanceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowQueryRecordsDownload请求参数结构体
      class DescribeSlowQueryRecordsDownloadRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param QueryDurationMs: 慢查询时间
        # @type QueryDurationMs: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param DurationMs: 排序参数
        # @type DurationMs: String

        attr_accessor :InstanceId, :QueryDurationMs, :StartTime, :EndTime, :DurationMs

        def initialize(instanceid=nil, querydurationms=nil, starttime=nil, endtime=nil, durationms=nil)
          @InstanceId = instanceid
          @QueryDurationMs = querydurationms
          @StartTime = starttime
          @EndTime = endtime
          @DurationMs = durationms
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @QueryDurationMs = params['QueryDurationMs']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DurationMs = params['DurationMs']
        end
      end

      # DescribeSlowQueryRecordsDownload返回参数结构体
      class DescribeSlowQueryRecordsDownloadResponse < TencentCloud::Common::AbstractModel
        # @param CosUrl: cos地址
        # @type CosUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CosUrl, :RequestId

        def initialize(cosurl=nil, requestid=nil)
          @CosUrl = cosurl
          @RequestId = requestid
        end

        def deserialize(params)
          @CosUrl = params['CosUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowQueryRecords请求参数结构体
      class DescribeSlowQueryRecordsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param QueryDurationMs: 慢查询时间
        # @type QueryDurationMs: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param PageSize: 分页
        # @type PageSize: Integer
        # @param PageNum: 分页
        # @type PageNum: Integer
        # @param DurationMs: 排序参数
        # @type DurationMs: String
        # @param DbName: 数据库名称
        # @type DbName: Array
        # @param IsQuery: 是否是查询，0：否， 1：是
        # @type IsQuery: Integer
        # @param CatalogName: catalog名称
        # @type CatalogName: Array

        attr_accessor :InstanceId, :QueryDurationMs, :StartTime, :EndTime, :PageSize, :PageNum, :DurationMs, :DbName, :IsQuery, :CatalogName

        def initialize(instanceid=nil, querydurationms=nil, starttime=nil, endtime=nil, pagesize=nil, pagenum=nil, durationms=nil, dbname=nil, isquery=nil, catalogname=nil)
          @InstanceId = instanceid
          @QueryDurationMs = querydurationms
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNum = pagenum
          @DurationMs = durationms
          @DbName = dbname
          @IsQuery = isquery
          @CatalogName = catalogname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @QueryDurationMs = params['QueryDurationMs']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
          @DurationMs = params['DurationMs']
          @DbName = params['DbName']
          @IsQuery = params['IsQuery']
          @CatalogName = params['CatalogName']
        end
      end

      # DescribeSlowQueryRecords返回参数结构体
      class DescribeSlowQueryRecordsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param SlowQueryRecords: 记录列表
        # @type SlowQueryRecords: Array
        # @param DBNameList: 所有数据库名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBNameList: Array
        # @param CatalogNameList: 所有catalog名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CatalogNameList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SlowQueryRecords, :DBNameList, :CatalogNameList, :RequestId

        def initialize(totalcount=nil, slowqueryrecords=nil, dbnamelist=nil, catalognamelist=nil, requestid=nil)
          @TotalCount = totalcount
          @SlowQueryRecords = slowqueryrecords
          @DBNameList = dbnamelist
          @CatalogNameList = catalognamelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SlowQueryRecords'].nil?
            @SlowQueryRecords = []
            params['SlowQueryRecords'].each do |i|
              slowqueryrecord_tmp = SlowQueryRecord.new
              slowqueryrecord_tmp.deserialize(i)
              @SlowQueryRecords << slowqueryrecord_tmp
            end
          end
          @DBNameList = params['DBNameList']
          @CatalogNameList = params['CatalogNameList']
          @RequestId = params['RequestId']
        end
      end

      # DestroyInstance请求参数结构体
      class DestroyInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DestroyInstance返回参数结构体
      class DestroyInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :InstanceId, :ErrorMsg, :RequestId

        def initialize(flowid=nil, instanceid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @InstanceId = instanceid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @InstanceId = params['InstanceId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 实例描述信息
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID, "cdw-xxxx" 字符串类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 集群实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Status: 状态,
        # Init 创建中; Serving 运行中；
        # Deleted已销毁；Deleting 销毁中；
        # Modify 集群变更中；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Version: 版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Region: 地域, ap-guangzhou
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Zone: 可用区， ap-guangzhou-3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param VpcId: 私有网络名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param PayMode: 付费类型，"hour", "prepay"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ExpireTime: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param MasterSummary: 数据节点描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterSummary: :class:`Tencentcloud::Cdwdoris.v20211228.models.NodesSummary`
        # @param CoreSummary: zookeeper节点描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoreSummary: :class:`Tencentcloud::Cdwdoris.v20211228.models.NodesSummary`
        # @param HA: 高可用，“true" "false"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HA: String
        # @param HaType: 高可用类型：
        # 0：非高可用
        # 1：读高可用
        # 2：读写高可用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HaType: Integer
        # @param AccessInfo: 访问地址，例如 "10.0.0.1:9000"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessInfo: String
        # @param Id: 记录ID，数值型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param RegionId: regionId, 表示地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer
        # @param ZoneDesc: 可用区说明，例如 "广州二区"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneDesc: String
        # @param FlowMsg: 错误流程说明信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowMsg: String
        # @param StatusDesc: 状态描述，例如“运行中”等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param RenewFlag: 自动续费标记
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Boolean
        # @param Tags: 标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Monitor: 监控信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Monitor: String
        # @param HasClsTopic: 是否开通日志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasClsTopic: Boolean
        # @param ClsTopicId: 日志主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClsTopicId: String
        # @param ClsLogSetId: 日志集ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClsLogSetId: String
        # @param EnableXMLConfig: 是否支持xml配置管理
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableXMLConfig: Integer
        # @param RegionDesc: 区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionDesc: String
        # @param Eip: 弹性网卡地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Eip: String
        # @param CosMoveFactor: 冷热分层系数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosMoveFactor: Integer
        # @param Kind: external/local/yunti
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Kind: String
        # @param CosBucketName: cos桶
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosBucketName: String
        # @param CanAttachCbs: cbs
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanAttachCbs: Boolean
        # @param BuildVersion: 小版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildVersion: String
        # @param Components: 组件信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Components: String
        # @param IfExistCatalog: 判断审计日志表是否有catalog字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IfExistCatalog: Integer
        # @param Characteristic: 页面特性，用于前端屏蔽一些页面入口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Characteristic: Array
        # @param RestartTimeout: 超时时间 单位s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestartTimeout: String
        # @param GraceShutdownWaitSeconds: 内核优雅重启超时时间，如果为-1说明未设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GraceShutdownWaitSeconds: String
        # @param CaseSensitive: 表名大小写是否敏感，0：敏感；1：不敏感，以小写进行比较；2：不敏感，表名改为以小写存储
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CaseSensitive: Integer

        attr_accessor :InstanceId, :InstanceName, :Status, :Version, :Region, :Zone, :VpcId, :SubnetId, :PayMode, :CreateTime, :ExpireTime, :MasterSummary, :CoreSummary, :HA, :HaType, :AccessInfo, :Id, :RegionId, :ZoneDesc, :FlowMsg, :StatusDesc, :RenewFlag, :Tags, :Monitor, :HasClsTopic, :ClsTopicId, :ClsLogSetId, :EnableXMLConfig, :RegionDesc, :Eip, :CosMoveFactor, :Kind, :CosBucketName, :CanAttachCbs, :BuildVersion, :Components, :IfExistCatalog, :Characteristic, :RestartTimeout, :GraceShutdownWaitSeconds, :CaseSensitive
        extend Gem::Deprecate
        deprecate :IfExistCatalog, :none, 2023, 12
        deprecate :IfExistCatalog=, :none, 2023, 12

        def initialize(instanceid=nil, instancename=nil, status=nil, version=nil, region=nil, zone=nil, vpcid=nil, subnetid=nil, paymode=nil, createtime=nil, expiretime=nil, mastersummary=nil, coresummary=nil, ha=nil, hatype=nil, accessinfo=nil, id=nil, regionid=nil, zonedesc=nil, flowmsg=nil, statusdesc=nil, renewflag=nil, tags=nil, monitor=nil, hasclstopic=nil, clstopicid=nil, clslogsetid=nil, enablexmlconfig=nil, regiondesc=nil, eip=nil, cosmovefactor=nil, kind=nil, cosbucketname=nil, canattachcbs=nil, buildversion=nil, components=nil, ifexistcatalog=nil, characteristic=nil, restarttimeout=nil, graceshutdownwaitseconds=nil, casesensitive=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Status = status
          @Version = version
          @Region = region
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @PayMode = paymode
          @CreateTime = createtime
          @ExpireTime = expiretime
          @MasterSummary = mastersummary
          @CoreSummary = coresummary
          @HA = ha
          @HaType = hatype
          @AccessInfo = accessinfo
          @Id = id
          @RegionId = regionid
          @ZoneDesc = zonedesc
          @FlowMsg = flowmsg
          @StatusDesc = statusdesc
          @RenewFlag = renewflag
          @Tags = tags
          @Monitor = monitor
          @HasClsTopic = hasclstopic
          @ClsTopicId = clstopicid
          @ClsLogSetId = clslogsetid
          @EnableXMLConfig = enablexmlconfig
          @RegionDesc = regiondesc
          @Eip = eip
          @CosMoveFactor = cosmovefactor
          @Kind = kind
          @CosBucketName = cosbucketname
          @CanAttachCbs = canattachcbs
          @BuildVersion = buildversion
          @Components = components
          @IfExistCatalog = ifexistcatalog
          @Characteristic = characteristic
          @RestartTimeout = restarttimeout
          @GraceShutdownWaitSeconds = graceshutdownwaitseconds
          @CaseSensitive = casesensitive
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Status = params['Status']
          @Version = params['Version']
          @Region = params['Region']
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @PayMode = params['PayMode']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          unless params['MasterSummary'].nil?
            @MasterSummary = NodesSummary.new
            @MasterSummary.deserialize(params['MasterSummary'])
          end
          unless params['CoreSummary'].nil?
            @CoreSummary = NodesSummary.new
            @CoreSummary.deserialize(params['CoreSummary'])
          end
          @HA = params['HA']
          @HaType = params['HaType']
          @AccessInfo = params['AccessInfo']
          @Id = params['Id']
          @RegionId = params['RegionId']
          @ZoneDesc = params['ZoneDesc']
          @FlowMsg = params['FlowMsg']
          @StatusDesc = params['StatusDesc']
          @RenewFlag = params['RenewFlag']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Monitor = params['Monitor']
          @HasClsTopic = params['HasClsTopic']
          @ClsTopicId = params['ClsTopicId']
          @ClsLogSetId = params['ClsLogSetId']
          @EnableXMLConfig = params['EnableXMLConfig']
          @RegionDesc = params['RegionDesc']
          @Eip = params['Eip']
          @CosMoveFactor = params['CosMoveFactor']
          @Kind = params['Kind']
          @CosBucketName = params['CosBucketName']
          @CanAttachCbs = params['CanAttachCbs']
          @BuildVersion = params['BuildVersion']
          @Components = params['Components']
          @IfExistCatalog = params['IfExistCatalog']
          @Characteristic = params['Characteristic']
          @RestartTimeout = params['RestartTimeout']
          @GraceShutdownWaitSeconds = params['GraceShutdownWaitSeconds']
          @CaseSensitive = params['CaseSensitive']
        end
      end

      # 实例节点描述信息
      class InstanceNode < TencentCloud::Common::AbstractModel
        # @param Ip: IP地址
        # @type Ip: String
        # @param Spec: 机型，如 S1
        # @type Spec: String
        # @param Core: cpu核数
        # @type Core: Integer
        # @param Memory: 内存大小
        # @type Memory: Integer
        # @param DiskType: 磁盘类型
        # @type DiskType: String
        # @param DiskSize: 磁盘大小
        # @type DiskSize: Integer
        # @param Role: 所属clickhouse cluster名称
        # @type Role: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Rip: rip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rip: String
        # @param FeRole: FE节点角色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeRole: String
        # @param UUID: UUID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UUID: String

        attr_accessor :Ip, :Spec, :Core, :Memory, :DiskType, :DiskSize, :Role, :Status, :Rip, :FeRole, :UUID

        def initialize(ip=nil, spec=nil, core=nil, memory=nil, disktype=nil, disksize=nil, role=nil, status=nil, rip=nil, ferole=nil, uuid=nil)
          @Ip = ip
          @Spec = spec
          @Core = core
          @Memory = memory
          @DiskType = disktype
          @DiskSize = disksize
          @Role = role
          @Status = status
          @Rip = rip
          @FeRole = ferole
          @UUID = uuid
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Spec = params['Spec']
          @Core = params['Core']
          @Memory = params['Memory']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @Role = params['Role']
          @Status = params['Status']
          @Rip = params['Rip']
          @FeRole = params['FeRole']
          @UUID = params['UUID']
        end
      end

      # ModifyInstance请求参数结构体
      class ModifyInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param InstanceName: 新修改的实例名称
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

      # ModifyInstance返回参数结构体
      class ModifyInstanceResponse < TencentCloud::Common::AbstractModel
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

      # NodeInfo
      class NodeInfo < TencentCloud::Common::AbstractModel
        # @param Ip: 用户IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param Status: 节点状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :Ip, :Status

        def initialize(ip=nil, status=nil)
          @Ip = ip
          @Status = status
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Status = params['Status']
        end
      end

      # 节点角色描述信息
      class NodesSummary < TencentCloud::Common::AbstractModel
        # @param Spec: 机型，如 S1
        # @type Spec: String
        # @param NodeSize: 节点数目
        # @type NodeSize: Integer
        # @param Core: cpu核数，单位个
        # @type Core: Integer
        # @param Memory: 内存大小，单位G
        # @type Memory: Integer
        # @param Disk: 磁盘大小，单位G
        # @type Disk: Integer
        # @param DiskType: 磁盘类型
        # @type DiskType: String
        # @param DiskDesc: 磁盘描述
        # @type DiskDesc: String
        # @param AttachCBSSpec: 挂载云盘信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttachCBSSpec: :class:`Tencentcloud::Cdwdoris.v20211228.models.AttachCBSSpec`
        # @param SubProductType: 子产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubProductType: String
        # @param SpecCore: 规格核数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecCore: Integer
        # @param SpecMemory: 规格内存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecMemory: Integer
        # @param DiskCount: 磁盘大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskCount: Integer
        # @param Encrypt: 是否加密
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Encrypt: Integer
        # @param MaxDiskSize: 最大磁盘
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxDiskSize: Integer

        attr_accessor :Spec, :NodeSize, :Core, :Memory, :Disk, :DiskType, :DiskDesc, :AttachCBSSpec, :SubProductType, :SpecCore, :SpecMemory, :DiskCount, :Encrypt, :MaxDiskSize

        def initialize(spec=nil, nodesize=nil, core=nil, memory=nil, disk=nil, disktype=nil, diskdesc=nil, attachcbsspec=nil, subproducttype=nil, speccore=nil, specmemory=nil, diskcount=nil, encrypt=nil, maxdisksize=nil)
          @Spec = spec
          @NodeSize = nodesize
          @Core = core
          @Memory = memory
          @Disk = disk
          @DiskType = disktype
          @DiskDesc = diskdesc
          @AttachCBSSpec = attachcbsspec
          @SubProductType = subproducttype
          @SpecCore = speccore
          @SpecMemory = specmemory
          @DiskCount = diskcount
          @Encrypt = encrypt
          @MaxDiskSize = maxdisksize
        end

        def deserialize(params)
          @Spec = params['Spec']
          @NodeSize = params['NodeSize']
          @Core = params['Core']
          @Memory = params['Memory']
          @Disk = params['Disk']
          @DiskType = params['DiskType']
          @DiskDesc = params['DiskDesc']
          unless params['AttachCBSSpec'].nil?
            @AttachCBSSpec = AttachCBSSpec.new
            @AttachCBSSpec.deserialize(params['AttachCBSSpec'])
          end
          @SubProductType = params['SubProductType']
          @SpecCore = params['SpecCore']
          @SpecMemory = params['SpecMemory']
          @DiskCount = params['DiskCount']
          @Encrypt = params['Encrypt']
          @MaxDiskSize = params['MaxDiskSize']
        end
      end

      # ResizeDisk请求参数结构体
      class ResizeDiskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Type: 角色（MATER/CORE），MASTER 对应 FE，CORE对应BE
        # @type Type: String
        # @param DiskSize: 云盘大小
        # @type DiskSize: Integer

        attr_accessor :InstanceId, :Type, :DiskSize

        def initialize(instanceid=nil, type=nil, disksize=nil)
          @InstanceId = instanceid
          @Type = type
          @DiskSize = disksize
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          @DiskSize = params['DiskSize']
        end
      end

      # ResizeDisk返回参数结构体
      class ResizeDiskResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :FlowId, :ErrorMsg, :RequestId

        def initialize(instanceid=nil, flowid=nil, errormsg=nil, requestid=nil)
          @InstanceId = instanceid
          @FlowId = flowid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FlowId = params['FlowId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # RestartClusterForNode请求参数结构体
      class RestartClusterForNodeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID，例如cdwch-xxxx
        # @type InstanceId: String
        # @param ConfigName: 配置文件名称
        # @type ConfigName: String
        # @param BatchSize: 每次重启的批次
        # @type BatchSize: Integer
        # @param NodeList: 重启节点
        # @type NodeList: Array
        # @param RollingRestart: false表示非滚动重启，true表示滚动重启
        # @type RollingRestart: Boolean

        attr_accessor :InstanceId, :ConfigName, :BatchSize, :NodeList, :RollingRestart

        def initialize(instanceid=nil, configname=nil, batchsize=nil, nodelist=nil, rollingrestart=nil)
          @InstanceId = instanceid
          @ConfigName = configname
          @BatchSize = batchsize
          @NodeList = nodelist
          @RollingRestart = rollingrestart
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ConfigName = params['ConfigName']
          @BatchSize = params['BatchSize']
          @NodeList = params['NodeList']
          @RollingRestart = params['RollingRestart']
        end
      end

      # RestartClusterForNode返回参数结构体
      class RestartClusterForNodeResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程相关信息
        # @type FlowId: Integer
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :ErrorMsg, :RequestId

        def initialize(flowid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ScaleOutInstance请求参数结构体
      class ScaleOutInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Type: 角色（MATER/CORE），MASTER 对应 FE，CORE对应BE
        # @type Type: String
        # @param NodeCount: 节点数量
        # @type NodeCount: Integer
        # @param HaType: 扩容后集群高可用类型：0：非高可用，1：读高可用，2：读写高可用。
        # @type HaType: Integer

        attr_accessor :InstanceId, :Type, :NodeCount, :HaType

        def initialize(instanceid=nil, type=nil, nodecount=nil, hatype=nil)
          @InstanceId = instanceid
          @Type = type
          @NodeCount = nodecount
          @HaType = hatype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          @NodeCount = params['NodeCount']
          @HaType = params['HaType']
        end
      end

      # ScaleOutInstance返回参数结构体
      class ScaleOutInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :InstanceId, :ErrorMsg, :RequestId

        def initialize(flowid=nil, instanceid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @InstanceId = instanceid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @InstanceId = params['InstanceId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ScaleUpInstance请求参数结构体
      class ScaleUpInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param SpecName: 节点规格
        # @type SpecName: String
        # @param Type: 角色（MATER/CORE），MASTER 对应 FE，CORE对应BE
        # @type Type: String

        attr_accessor :InstanceId, :SpecName, :Type

        def initialize(instanceid=nil, specname=nil, type=nil)
          @InstanceId = instanceid
          @SpecName = specname
          @Type = type
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SpecName = params['SpecName']
          @Type = params['Type']
        end
      end

      # ScaleUpInstance返回参数结构体
      class ScaleUpInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :InstanceId, :ErrorMsg, :RequestId

        def initialize(flowid=nil, instanceid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @InstanceId = instanceid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @InstanceId = params['InstanceId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 列表页搜索的标记列表
      class SearchTags < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的键
        # @type TagKey: String
        # @param TagValue: 标签的值
        # @type TagValue: String
        # @param AllValue: 1表示只输入标签的键，没有输入值；0表示输入键时且输入值
        # @type AllValue: Integer

        attr_accessor :TagKey, :TagValue, :AllValue

        def initialize(tagkey=nil, tagvalue=nil, allvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
          @AllValue = allvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
          @AllValue = params['AllValue']
        end
      end

      # 慢查询记录
      class SlowQueryRecord < TencentCloud::Common::AbstractModel
        # @param OsUser: 查询用户
        # @type OsUser: String
        # @param InitialQueryId: 查询ID
        # @type InitialQueryId: String
        # @param Sql: SQL语句
        # @type Sql: String
        # @param QueryStartTime: 开始时间
        # @type QueryStartTime: String
        # @param DurationMs: 执行耗时
        # @type DurationMs: Integer
        # @param ReadRows: 读取行数
        # @type ReadRows: Integer
        # @param ResultRows: 读取字节数
        # @type ResultRows: Integer
        # @param ResultBytes: 结果字节数
        # @type ResultBytes: Integer
        # @param MemoryUsage: 内存
        # @type MemoryUsage: Integer
        # @param InitialAddress: 初始查询IP
        # @type InitialAddress: String
        # @param DbName: 数据库名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbName: String
        # @param IsQuery: 是否是查询，0：否，1：查询语句
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsQuery: Integer

        attr_accessor :OsUser, :InitialQueryId, :Sql, :QueryStartTime, :DurationMs, :ReadRows, :ResultRows, :ResultBytes, :MemoryUsage, :InitialAddress, :DbName, :IsQuery

        def initialize(osuser=nil, initialqueryid=nil, sql=nil, querystarttime=nil, durationms=nil, readrows=nil, resultrows=nil, resultbytes=nil, memoryusage=nil, initialaddress=nil, dbname=nil, isquery=nil)
          @OsUser = osuser
          @InitialQueryId = initialqueryid
          @Sql = sql
          @QueryStartTime = querystarttime
          @DurationMs = durationms
          @ReadRows = readrows
          @ResultRows = resultrows
          @ResultBytes = resultbytes
          @MemoryUsage = memoryusage
          @InitialAddress = initialaddress
          @DbName = dbname
          @IsQuery = isquery
        end

        def deserialize(params)
          @OsUser = params['OsUser']
          @InitialQueryId = params['InitialQueryId']
          @Sql = params['Sql']
          @QueryStartTime = params['QueryStartTime']
          @DurationMs = params['DurationMs']
          @ReadRows = params['ReadRows']
          @ResultRows = params['ResultRows']
          @ResultBytes = params['ResultBytes']
          @MemoryUsage = params['MemoryUsage']
          @InitialAddress = params['InitialAddress']
          @DbName = params['DbName']
          @IsQuery = params['IsQuery']
        end
      end

      # 标签描述
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的键
        # @type TagKey: String
        # @param TagValue: 标签的值
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

