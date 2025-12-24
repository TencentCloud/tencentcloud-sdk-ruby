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
  module Dbs
    module V20211108
      # 备份列对象
      class BackupColumnItem < TencentCloud::Common::AbstractModel
        # @param ColumnName: 列名。
        # @type ColumnName: String
        # @param NewColumnName: 重命名后的列名。
        # @type NewColumnName: String

        attr_accessor :ColumnName, :NewColumnName

        def initialize(columnname=nil, newcolumnname=nil)
          @ColumnName = columnname
          @NewColumnName = newcolumnname
        end

        def deserialize(params)
          @ColumnName = params['ColumnName']
          @NewColumnName = params['NewColumnName']
        end
      end

      # 备份源实例详情
      class BackupEndpoint < TencentCloud::Common::AbstractModel
        # @param DatabaseType: 数据库类型。目前支持的值["mysql", "mariadb", "percona"]。注意，该值必须和备份计划的类型一致。
        # @type DatabaseType: String
        # @param AccessType: 实例接入类型，支持的值包括：
        # "extranet" - 外网;
        # "cvm" - cvm自建实例;
        # "dcg" - 专线接入;
        # "vpncloud" - 云vpn接入;
        # "cdb" - 腾讯云数据库实例;
        # "ccn" - 云联网接入。
        # @type AccessType: String
        # @param UserName: 用户名。
        # @type UserName: String
        # @param Password: 登录密码。
        # @type Password: String
        # @param Region: 接入地域。
        # @type Region: String
        # @param Supplier: 服务提供商，支持的值包括["aliyun", "aws", "others"]。
        # @type Supplier: String
        # @param Ip: 实例 Ip。
        # @type Ip: String
        # @param Port: 实例端口号。
        # @type Port: Integer
        # @param InstanceId: 云数据库实例ID，格式如：cdb-qcloudtest。
        # @type InstanceId: String
        # @param CvmInstanceId: CVM 实例ID，格式如：ins-olgl39y8，与云服务器控制台页面显示的实例ID相同。如果是CVM自建实例，需要填写该字段。
        # @type CvmInstanceId: String
        # @param UniqDcgId: 专线网关ID，格式如：dcg-0rxtqqxb。
        # @type UniqDcgId: String
        # @param UniqVpnGwId: VPN网关ID，格式如：vpngw-9ghexg7q。
        # @type UniqVpnGwId: String
        # @param VpcId: 私有网络ID，格式如：vpc-92jblxto。
        # @type VpcId: String
        # @param SubnetId: 子网ID，格式如：subnet-3paxmkdz。
        # @type SubnetId: String
        # @param CcnId: 云联网ID，如：ccn-afp6kltc。
        # @type CcnId: String
        # @param EngineVersion: 数据库版本，当实例为 RDS 或 AWS 实例时才有效，格式如：5.6或者5.7，默认为5.6。
        # @type EngineVersion: String
        # @param DBKernel: mariadb三引擎版本。
        # @type DBKernel: String

        attr_accessor :DatabaseType, :AccessType, :UserName, :Password, :Region, :Supplier, :Ip, :Port, :InstanceId, :CvmInstanceId, :UniqDcgId, :UniqVpnGwId, :VpcId, :SubnetId, :CcnId, :EngineVersion, :DBKernel

        def initialize(databasetype=nil, accesstype=nil, username=nil, password=nil, region=nil, supplier=nil, ip=nil, port=nil, instanceid=nil, cvminstanceid=nil, uniqdcgid=nil, uniqvpngwid=nil, vpcid=nil, subnetid=nil, ccnid=nil, engineversion=nil, dbkernel=nil)
          @DatabaseType = databasetype
          @AccessType = accesstype
          @UserName = username
          @Password = password
          @Region = region
          @Supplier = supplier
          @Ip = ip
          @Port = port
          @InstanceId = instanceid
          @CvmInstanceId = cvminstanceid
          @UniqDcgId = uniqdcgid
          @UniqVpnGwId = uniqvpngwid
          @VpcId = vpcid
          @SubnetId = subnetid
          @CcnId = ccnid
          @EngineVersion = engineversion
          @DBKernel = dbkernel
        end

        def deserialize(params)
          @DatabaseType = params['DatabaseType']
          @AccessType = params['AccessType']
          @UserName = params['UserName']
          @Password = params['Password']
          @Region = params['Region']
          @Supplier = params['Supplier']
          @Ip = params['Ip']
          @Port = params['Port']
          @InstanceId = params['InstanceId']
          @CvmInstanceId = params['CvmInstanceId']
          @UniqDcgId = params['UniqDcgId']
          @UniqVpnGwId = params['UniqVpnGwId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @CcnId = params['CcnId']
          @EngineVersion = params['EngineVersion']
          @DBKernel = params['DBKernel']
        end
      end

      # 备份对象
      class BackupObject < TencentCloud::Common::AbstractModel
        # @param ObjectMode: 备份对象类型，可能的取值为:
        # "all" - 整实例;
        # "partial" - 部分对象。
        # @type ObjectMode: String
        # @param ObjectItems: 备份对象详情，当 ObjectMode 为 partial, 即选择部分对象备份时，该字段不能为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectItems: Array

        attr_accessor :ObjectMode, :ObjectItems

        def initialize(objectmode=nil, objectitems=nil)
          @ObjectMode = objectmode
          @ObjectItems = objectitems
        end

        def deserialize(params)
          @ObjectMode = params['ObjectMode']
          unless params['ObjectItems'].nil?
            @ObjectItems = []
            params['ObjectItems'].each do |i|
              backupobjectitem_tmp = BackupObjectItem.new
              backupobjectitem_tmp.deserialize(i)
              @ObjectItems << backupobjectitem_tmp
            end
          end
        end
      end

      # 备份对象详情
      class BackupObjectItem < TencentCloud::Common::AbstractModel
        # @param DBName: 库名。
        # @type DBName: String
        # @param NewDBName: 重命名后的库名。
        # @type NewDBName: String
        # @param SchemaName: schema 名。
        # @type SchemaName: String
        # @param NewSchemaName: 重命名后的 schema 名。
        # @type NewSchemaName: String
        # @param DbMode: 库选择模式，可能的取值为：
        # "all" - 当前对象下的所有对象;
        # "partial" - 当前对象下的部分对象。
        # @type DbMode: String
        # @param TableMode: 表选择模式，可能的取值为:
        # "all" - 当前对象下的所有对象;
        # "partial" - 当前对象下的部分对象。
        # @type TableMode: String
        # @param Tables: 表对象详情。当 TableMode 为 partial，即选择部分表备份时，此参数需要填写。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tables: Array

        attr_accessor :DBName, :NewDBName, :SchemaName, :NewSchemaName, :DbMode, :TableMode, :Tables

        def initialize(dbname=nil, newdbname=nil, schemaname=nil, newschemaname=nil, dbmode=nil, tablemode=nil, tables=nil)
          @DBName = dbname
          @NewDBName = newdbname
          @SchemaName = schemaname
          @NewSchemaName = newschemaname
          @DbMode = dbmode
          @TableMode = tablemode
          @Tables = tables
        end

        def deserialize(params)
          @DBName = params['DBName']
          @NewDBName = params['NewDBName']
          @SchemaName = params['SchemaName']
          @NewSchemaName = params['NewSchemaName']
          @DbMode = params['DbMode']
          @TableMode = params['TableMode']
          unless params['Tables'].nil?
            @Tables = []
            params['Tables'].each do |i|
              backuptableitem_tmp = BackupTableItem.new
              backuptableitem_tmp.deserialize(i)
              @Tables << backuptableitem_tmp
            end
          end
        end
      end

      # 备份周期描述
      class BackupPeriod < TencentCloud::Common::AbstractModel
        # @param PeriodType: 全量备份频率。目前仅支持"Weekly" - 每星期
        # @type PeriodType: String
        # @param Day: 全量备份周期。取值范围为：["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]。
        # @type Day: Array

        attr_accessor :PeriodType, :Day

        def initialize(periodtype=nil, day=nil)
          @PeriodType = periodtype
          @Day = day
        end

        def deserialize(params)
          @PeriodType = params['PeriodType']
          @Day = params['Day']
        end
      end

      # 备份计划信息
      class BackupPlanInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域信息。
        # @type Region: String
        # @param BackupPlanId: 备份计划 ID。
        # @type BackupPlanId: String
        # @param BackupPlanName: 备份计划名称。
        # @type BackupPlanName: String
        # @param Status: 备份计划状态。可能的取值为：
        # "notStarted" - 未启动;
        # "checking" - 校验中;
        # "checkPass" - 校验通过;
        # "checkNotPass" - 校验未通过;
        # "running" - 运行中;
        # "fullBacking" - 全量备份中;
        # "isolating" - 隔离中;
        # "isolated" - 已隔离;
        # "offlining" - 下线中;
        # "offlined" - 已下线;
        # "paused" - 已暂停。
        # @type Status: String
        # @param DatabaseType: 数据库类型。
        # @type DatabaseType: String
        # @param AccessType: 访问类型。可能的取值为：
        # "extranet" - 外网;
        # "cvm" - cvm 自建实例;
        # "dcg" - 专线接入;
        # "vpncloud" - 云vpn接入;
        # "cdb" - 腾讯云数据库实例;
        # "ccn" - 云联网。
        # @type AccessType: String
        # @param SourceInfo: 源实例信息。
        # @type SourceInfo: Array
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param ExpireTime: 到期时间。
        # @type ExpireTime: String
        # @param OfflineTime: 下线时间。
        # @type OfflineTime: String
        # @param InstanceClass: 实例规格类型。可能的取值为：["micro", "small", "medium", "large", "xlarge"]。
        # @type InstanceClass: String
        # @param BackupMethod: 备份方式。可能的取值为：
        # "logical" - 逻辑备份;
        # "physical" - 物理备份。
        # @type BackupMethod: String
        # @param Tags: 标签信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param AutoRenewFlag: 自动续费标记。可能的取值为：
        # 0 - 未开启自动续费;
        # 1 - 已开启自动续费;
        # 2 - 已关闭自动续费。
        # @type AutoRenewFlag: Integer
        # @param EnableIncrement: 是否开启增量备份标记。
        # @type EnableIncrement: Boolean
        # @param PayType: 付费类型。可能的取值为：
        # "prePay" - 预付费类型;
        # "postPay" - 后付费类型。
        # @type PayType: String
        # @param SetSourceInfo: 源端信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SetSourceInfo: Array

        attr_accessor :Region, :BackupPlanId, :BackupPlanName, :Status, :DatabaseType, :AccessType, :SourceInfo, :CreateTime, :ExpireTime, :OfflineTime, :InstanceClass, :BackupMethod, :Tags, :AutoRenewFlag, :EnableIncrement, :PayType, :SetSourceInfo

        def initialize(region=nil, backupplanid=nil, backupplanname=nil, status=nil, databasetype=nil, accesstype=nil, sourceinfo=nil, createtime=nil, expiretime=nil, offlinetime=nil, instanceclass=nil, backupmethod=nil, tags=nil, autorenewflag=nil, enableincrement=nil, paytype=nil, setsourceinfo=nil)
          @Region = region
          @BackupPlanId = backupplanid
          @BackupPlanName = backupplanname
          @Status = status
          @DatabaseType = databasetype
          @AccessType = accesstype
          @SourceInfo = sourceinfo
          @CreateTime = createtime
          @ExpireTime = expiretime
          @OfflineTime = offlinetime
          @InstanceClass = instanceclass
          @BackupMethod = backupmethod
          @Tags = tags
          @AutoRenewFlag = autorenewflag
          @EnableIncrement = enableincrement
          @PayType = paytype
          @SetSourceInfo = setsourceinfo
        end

        def deserialize(params)
          @Region = params['Region']
          @BackupPlanId = params['BackupPlanId']
          @BackupPlanName = params['BackupPlanName']
          @Status = params['Status']
          @DatabaseType = params['DatabaseType']
          @AccessType = params['AccessType']
          @SourceInfo = params['SourceInfo']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @OfflineTime = params['OfflineTime']
          @InstanceClass = params['InstanceClass']
          @BackupMethod = params['BackupMethod']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @AutoRenewFlag = params['AutoRenewFlag']
          @EnableIncrement = params['EnableIncrement']
          @PayType = params['PayType']
          @SetSourceInfo = params['SetSourceInfo']
        end
      end

      # 备份策略
      class BackupStrategy < TencentCloud::Common::AbstractModel
        # @param BackupStartTime: 全量备份开始时间。周期性的全量备份将在当天该时间开始。
        # @type BackupStartTime: String
        # @param StorageStrategy: 存储策略。
        # @type StorageStrategy: :class:`Tencentcloud::Dbs.v20211108.models.StorageStrategy`
        # @param BackupPeriod: 备份周期。
        # @type BackupPeriod: :class:`Tencentcloud::Dbs.v20211108.models.BackupPeriod`
        # @param BackupMethod: 备份方法。目前仅支持 "logical" - 逻辑备份。
        # @type BackupMethod: String
        # @param StrategyType: 备份周期。支持的值包括：
        # "period" - 周期性备份；
        # "single" - 单次备份。
        # 默认值为"period"。
        # @type StrategyType: String
        # @param EnableIncrement: 是否开启增量备份。可能的取值为["true", "false"]。默认值为"true"。
        # @type EnableIncrement: Boolean

        attr_accessor :BackupStartTime, :StorageStrategy, :BackupPeriod, :BackupMethod, :StrategyType, :EnableIncrement

        def initialize(backupstarttime=nil, storagestrategy=nil, backupperiod=nil, backupmethod=nil, strategytype=nil, enableincrement=nil)
          @BackupStartTime = backupstarttime
          @StorageStrategy = storagestrategy
          @BackupPeriod = backupperiod
          @BackupMethod = backupmethod
          @StrategyType = strategytype
          @EnableIncrement = enableincrement
        end

        def deserialize(params)
          @BackupStartTime = params['BackupStartTime']
          unless params['StorageStrategy'].nil?
            @StorageStrategy = StorageStrategy.new
            @StorageStrategy.deserialize(params['StorageStrategy'])
          end
          unless params['BackupPeriod'].nil?
            @BackupPeriod = BackupPeriod.new
            @BackupPeriod.deserialize(params['BackupPeriod'])
          end
          @BackupMethod = params['BackupMethod']
          @StrategyType = params['StrategyType']
          @EnableIncrement = params['EnableIncrement']
        end
      end

      # 备份表对象
      class BackupTableItem < TencentCloud::Common::AbstractModel
        # @param TableName: 表名。
        # @type TableName: String
        # @param NewTableName: 重命名后的表名。
        # @type NewTableName: String
        # @param Columns: 列对象。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array

        attr_accessor :TableName, :NewTableName, :Columns

        def initialize(tablename=nil, newtablename=nil, columns=nil)
          @TableName = tablename
          @NewTableName = newtablename
          @Columns = columns
        end

        def deserialize(params)
          @TableName = params['TableName']
          @NewTableName = params['NewTableName']
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              backupcolumnitem_tmp = BackupColumnItem.new
              backupcolumnitem_tmp.deserialize(i)
              @Columns << backupcolumnitem_tmp
            end
          end
        end
      end

      # ConfigureBackupPlan请求参数结构体
      class ConfigureBackupPlanRequest < TencentCloud::Common::AbstractModel
        # @param BackupPlanId: 备份计划 ID。
        # @type BackupPlanId: String
        # @param BackupPlanName: 备份计划名称。支持数字、英文大小写字母、中文以及特殊字符_-./()（）[]+=：:@,且长度不能超过60。
        # @type BackupPlanName: String
        # @param UpperParallel: 全量备份并发数上限。
        # @type UpperParallel: Integer
        # @param SourceEndPoint: 备份源实例信息。
        # @type SourceEndPoint: :class:`Tencentcloud::Dbs.v20211108.models.BackupEndpoint`
        # @param BackupObject: 备份对象信息。
        # @type BackupObject: :class:`Tencentcloud::Dbs.v20211108.models.BackupObject`
        # @param BackupStrategy: 备份策略。
        # @type BackupStrategy: :class:`Tencentcloud::Dbs.v20211108.models.BackupStrategy`
        # @param PlainText: 加密信息。当需要使用SSE-KMS需要传入该值，你可以通过 KMS 的 GenerateDataKey 接口生成。
        # @type PlainText: String

        attr_accessor :BackupPlanId, :BackupPlanName, :UpperParallel, :SourceEndPoint, :BackupObject, :BackupStrategy, :PlainText

        def initialize(backupplanid=nil, backupplanname=nil, upperparallel=nil, sourceendpoint=nil, backupobject=nil, backupstrategy=nil, plaintext=nil)
          @BackupPlanId = backupplanid
          @BackupPlanName = backupplanname
          @UpperParallel = upperparallel
          @SourceEndPoint = sourceendpoint
          @BackupObject = backupobject
          @BackupStrategy = backupstrategy
          @PlainText = plaintext
        end

        def deserialize(params)
          @BackupPlanId = params['BackupPlanId']
          @BackupPlanName = params['BackupPlanName']
          @UpperParallel = params['UpperParallel']
          unless params['SourceEndPoint'].nil?
            @SourceEndPoint = BackupEndpoint.new
            @SourceEndPoint.deserialize(params['SourceEndPoint'])
          end
          unless params['BackupObject'].nil?
            @BackupObject = BackupObject.new
            @BackupObject.deserialize(params['BackupObject'])
          end
          unless params['BackupStrategy'].nil?
            @BackupStrategy = BackupStrategy.new
            @BackupStrategy.deserialize(params['BackupStrategy'])
          end
          @PlainText = params['PlainText']
        end
      end

      # ConfigureBackupPlan返回参数结构体
      class ConfigureBackupPlanResponse < TencentCloud::Common::AbstractModel
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

      # 连通性检测结果
      class ConnectTestResult < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>任务 ID</p>
        # @type TaskId: Integer
        # @param Status: <p>任务状态</p>
        # @type Status: String
        # @param IsPass: <p>是否通过。0 表示未通过，1 表示通过。</p>
        # @type IsPass: Integer
        # @param Addr: <p>源端地址</p>
        # @type Addr: String
        # @param SNatIp: <p>源地址转换IP</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SNatIp: String
        # @param TestItems: <p>检测结果集</p>
        # @type TestItems: Array

        attr_accessor :TaskId, :Status, :IsPass, :Addr, :SNatIp, :TestItems

        def initialize(taskid=nil, status=nil, ispass=nil, addr=nil, snatip=nil, testitems=nil)
          @TaskId = taskid
          @Status = status
          @IsPass = ispass
          @Addr = addr
          @SNatIp = snatip
          @TestItems = testitems
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @IsPass = params['IsPass']
          @Addr = params['Addr']
          @SNatIp = params['SNatIp']
          unless params['TestItems'].nil?
            @TestItems = []
            params['TestItems'].each do |i|
              testitem_tmp = TestItem.new
              testitem_tmp.deserialize(i)
              @TestItems << testitem_tmp
            end
          end
        end
      end

      # CreateBackupPlan请求参数结构体
      class CreateBackupPlanRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseType: 源端数据库类型。当前支持值为: ["mysql","cynosdbmysql","percona","mariadb","tdsqlmysql"]。
        # @type DatabaseType: String
        # @param BackupMethod: 备份方式。当前仅支持"logical"，即逻辑备份。
        # @type BackupMethod: String
        # @param InstanceClass: 规格。当前支持值为: ["micro","small","medium","large","xlarge"]。默认为"small"。
        # @type InstanceClass: String
        # @param Period: 购买时长，单位为月，默认值为1。
        # @type Period: Integer
        # @param PayType: 计费模式。当前仅支持"prepay"，即包年包月。
        # @type PayType: String
        # @param Count: 购买数量。取值范围为[1, 10]，默认值为1。
        # @type Count: Integer
        # @param AutoRenew: 自动续费标识。1 - 开启自动续费；0 - 不开启自动续费。
        # @type AutoRenew: Integer
        # @param Tags: 标签值。
        # @type Tags: Array

        attr_accessor :DatabaseType, :BackupMethod, :InstanceClass, :Period, :PayType, :Count, :AutoRenew, :Tags

        def initialize(databasetype=nil, backupmethod=nil, instanceclass=nil, period=nil, paytype=nil, count=nil, autorenew=nil, tags=nil)
          @DatabaseType = databasetype
          @BackupMethod = backupmethod
          @InstanceClass = instanceclass
          @Period = period
          @PayType = paytype
          @Count = count
          @AutoRenew = autorenew
          @Tags = tags
        end

        def deserialize(params)
          @DatabaseType = params['DatabaseType']
          @BackupMethod = params['BackupMethod']
          @InstanceClass = params['InstanceClass']
          @Period = params['Period']
          @PayType = params['PayType']
          @Count = params['Count']
          @AutoRenew = params['AutoRenew']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # CreateBackupPlan返回参数结构体
      class CreateBackupPlanResponse < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单参数。
        # @type OrderId: String
        # @param BackupPlanIds: 资源ID。
        # @type BackupPlanIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderId, :BackupPlanIds, :RequestId

        def initialize(orderid=nil, backupplanids=nil, requestid=nil)
          @OrderId = orderid
          @BackupPlanIds = backupplanids
          @RequestId = requestid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @BackupPlanIds = params['BackupPlanIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateConnectTestJob请求参数结构体
      class CreateConnectTestJobRequest < TencentCloud::Common::AbstractModel
        # @param Endpoint: 备份源实例信息。
        # @type Endpoint: :class:`Tencentcloud::Dbs.v20211108.models.BackupEndpoint`

        attr_accessor :Endpoint

        def initialize(endpoint=nil)
          @Endpoint = endpoint
        end

        def deserialize(params)
          unless params['Endpoint'].nil?
            @Endpoint = BackupEndpoint.new
            @Endpoint.deserialize(params['Endpoint'])
          end
        end
      end

      # CreateConnectTestJob返回参数结构体
      class CreateConnectTestJobResponse < TencentCloud::Common::AbstractModel
        # @param ConnTaskId: 连通性任务 ID。
        # @type ConnTaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConnTaskId, :RequestId

        def initialize(conntaskid=nil, requestid=nil)
          @ConnTaskId = conntaskid
          @RequestId = requestid
        end

        def deserialize(params)
          @ConnTaskId = params['ConnTaskId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupCheckJob请求参数结构体
      class DescribeBackupCheckJobRequest < TencentCloud::Common::AbstractModel
        # @param BackupPlanId: 备份计划 ID。
        # @type BackupPlanId: String

        attr_accessor :BackupPlanId

        def initialize(backupplanid=nil)
          @BackupPlanId = backupplanid
        end

        def deserialize(params)
          @BackupPlanId = params['BackupPlanId']
        end
      end

      # DescribeBackupCheckJob返回参数结构体
      class DescribeBackupCheckJobResponse < TencentCloud::Common::AbstractModel
        # @param Status: 校验任务状态。可能的取值为："finished" - 已完成; "running" - 进行中。
        # @type Status: String
        # @param Progress: 任务进度。取值范围为[0, 100]，表示任务完成的百分比。例如：30表示任务完成30%。
        # @type Progress: Integer
        # @param CheckFlag: 校验是否通过标记。可能的取值为："1" - 校验通过;"0" - 校验未通过。
        # @type CheckFlag: Integer
        # @param ErrMessage: 错误信息。
        # @type ErrMessage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Progress, :CheckFlag, :ErrMessage, :RequestId

        def initialize(status=nil, progress=nil, checkflag=nil, errmessage=nil, requestid=nil)
          @Status = status
          @Progress = progress
          @CheckFlag = checkflag
          @ErrMessage = errmessage
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Progress = params['Progress']
          @CheckFlag = params['CheckFlag']
          @ErrMessage = params['ErrMessage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupPlans请求参数结构体
      class DescribeBackupPlansRequest < TencentCloud::Common::AbstractModel
        # @param BackupPlanId: 过滤条件，备份计划 ID。
        # @type BackupPlanId: String
        # @param Status: 过滤条件，备份计划状态。
        # @type Status: Array
        # @param DatabaseType: 过滤条件，数据库类型。
        # @type DatabaseType: Array
        # @param AccessType: 过滤条件，接入访问类型。
        # @type AccessType: Array
        # @param BackupPlanName: 过滤条件，备份计划名称。
        # @type BackupPlanName: String
        # @param TagFilters: 过滤条件，标签键值。
        # @type TagFilters: Array
        # @param Limit: 分页参数。取值范围为(0, 100]，默认值为20。
        # @type Limit: Integer
        # @param Offset: 分页参数。默认值为0。
        # @type Offset: Integer

        attr_accessor :BackupPlanId, :Status, :DatabaseType, :AccessType, :BackupPlanName, :TagFilters, :Limit, :Offset

        def initialize(backupplanid=nil, status=nil, databasetype=nil, accesstype=nil, backupplanname=nil, tagfilters=nil, limit=nil, offset=nil)
          @BackupPlanId = backupplanid
          @Status = status
          @DatabaseType = databasetype
          @AccessType = accesstype
          @BackupPlanName = backupplanname
          @TagFilters = tagfilters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @BackupPlanId = params['BackupPlanId']
          @Status = params['Status']
          @DatabaseType = params['DatabaseType']
          @AccessType = params['AccessType']
          @BackupPlanName = params['BackupPlanName']
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeBackupPlans返回参数结构体
      class DescribeBackupPlansResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 备份计划数量。
        # @type TotalCount: Integer
        # @param Items: 备份计划详情。
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
              backupplaninfo_tmp = BackupPlanInfo.new
              backupplaninfo_tmp.deserialize(i)
              @Items << backupplaninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConnectTestResult请求参数结构体
      class DescribeConnectTestResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: <p>连通性检测任务 ID。</p>
        # @type TaskIds: Array

        attr_accessor :TaskIds

        def initialize(taskids=nil)
          @TaskIds = taskids
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
        end
      end

      # DescribeConnectTestResult返回参数结构体
      class DescribeConnectTestResultResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>任务总数。</p>
        # @type TotalCount: Integer
        # @param Items: <p>检测结果详情。</p>
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
              connecttestresult_tmp = ConnectTestResult.new
              connecttestresult_tmp.deserialize(i)
              @Items << connecttestresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # StartBackupCheckJob请求参数结构体
      class StartBackupCheckJobRequest < TencentCloud::Common::AbstractModel
        # @param BackupPlanId: 备份计划 ID。
        # @type BackupPlanId: String

        attr_accessor :BackupPlanId

        def initialize(backupplanid=nil)
          @BackupPlanId = backupplanid
        end

        def deserialize(params)
          @BackupPlanId = params['BackupPlanId']
        end
      end

      # StartBackupCheckJob返回参数结构体
      class StartBackupCheckJobResponse < TencentCloud::Common::AbstractModel
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

      # StartBackupPlan请求参数结构体
      class StartBackupPlanRequest < TencentCloud::Common::AbstractModel
        # @param BackupPlanId: 备份计划 ID。
        # @type BackupPlanId: String

        attr_accessor :BackupPlanId

        def initialize(backupplanid=nil)
          @BackupPlanId = backupplanid
        end

        def deserialize(params)
          @BackupPlanId = params['BackupPlanId']
        end
      end

      # StartBackupPlan返回参数结构体
      class StartBackupPlanResponse < TencentCloud::Common::AbstractModel
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

      # 备份存储策略。
      class StorageStrategy < TencentCloud::Common::AbstractModel
        # @param StorageType: 存储类型。目前仅支持 "system" - DBS 内置存储。默认值为 "system"。
        # @type StorageType: String
        # @param Encryption: 加密方式。可能的取值为：
        # "UnEncrypted" - 非加密存储;
        # "SSE-COS" - 内置加密存储;
        # 当该参数用作入参时，默认值为 "UnEncrypted"。
        # @type Encryption: String
        # @param BackupRetentionPeriod: 日志保留时间，单位为天。取值范围为[7, 3650]，默认值为 30。
        # @type BackupRetentionPeriod: Integer

        attr_accessor :StorageType, :Encryption, :BackupRetentionPeriod

        def initialize(storagetype=nil, encryption=nil, backupretentionperiod=nil)
          @StorageType = storagetype
          @Encryption = encryption
          @BackupRetentionPeriod = backupretentionperiod
        end

        def deserialize(params)
          @StorageType = params['StorageType']
          @Encryption = params['Encryption']
          @BackupRetentionPeriod = params['BackupRetentionPeriod']
        end
      end

      # 标签信息
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键。
        # @type TagKey: String
        # @param TagValue: 标签值。
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

      # 标签过滤条件
      class TagFilter < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键。
        # @type TagKey: String
        # @param TagValue: 标签值。
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

      # 检测步骤详情
      class TestItem < TencentCloud::Common::AbstractModel
        # @param TestName: <p>检测步骤名称</p>
        # @type TestName: String
        # @param Code: <p>错误码</p>
        # @type Code: Integer
        # @param Message: <p>错误信息</p>
        # @type Message: String

        attr_accessor :TestName, :Code, :Message

        def initialize(testname=nil, code=nil, message=nil)
          @TestName = testname
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @TestName = params['TestName']
          @Code = params['Code']
          @Message = params['Message']
        end
      end

    end
  end
end

