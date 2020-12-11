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
  module Emr
    module V20190103
      # COS 相关配置
      class COSSettings < TencentCloud::Common::AbstractModel
        # @param CosSecretId: COS SecretId
        # @type CosSecretId: String
        # @param CosSecretKey: COS SecrectKey
        # @type CosSecretKey: String
        # @param LogOnCosPath: 日志存储在COS上的路径
        # @type LogOnCosPath: String

        attr_accessor :CosSecretId, :CosSecretKey, :LogOnCosPath
        
        def initialize(cossecretid=nil, cossecretkey=nil, logoncospath=nil)
          @CosSecretId = cossecretid
          @CosSecretKey = cossecretkey
          @LogOnCosPath = logoncospath
        end

        def deserialize(params)
          @CosSecretId = params['CosSecretId']
          @CosSecretKey = params['CosSecretKey']
          @LogOnCosPath = params['LogOnCosPath']
        end
      end

      # 出参
      class CdbInfo < TencentCloud::Common::AbstractModel
        # @param InstanceName: 数据库实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Ip: 数据库IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param Port: 数据库端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param MemSize: 数据库内存规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemSize: Integer
        # @param Volume: 数据库磁盘规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Volume: Integer
        # @param Service: 服务标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Service: String
        # @param ExpireTime: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param ApplyTime: 申请时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplyTime: String
        # @param PayType: 付费类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayType: Integer
        # @param ExpireFlag: 过期标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireFlag: Boolean
        # @param Status: 数据库状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param IsAutoRenew: 续费标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAutoRenew: Integer
        # @param SerialNo: 数据库字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SerialNo: String
        # @param ZoneId: ZoneId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param RegionId: RegionId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer

        attr_accessor :InstanceName, :Ip, :Port, :MemSize, :Volume, :Service, :ExpireTime, :ApplyTime, :PayType, :ExpireFlag, :Status, :IsAutoRenew, :SerialNo, :ZoneId, :RegionId
        
        def initialize(instancename=nil, ip=nil, port=nil, memsize=nil, volume=nil, service=nil, expiretime=nil, applytime=nil, paytype=nil, expireflag=nil, status=nil, isautorenew=nil, serialno=nil, zoneid=nil, regionid=nil)
          @InstanceName = instancename
          @Ip = ip
          @Port = port
          @MemSize = memsize
          @Volume = volume
          @Service = service
          @ExpireTime = expiretime
          @ApplyTime = applytime
          @PayType = paytype
          @ExpireFlag = expireflag
          @Status = status
          @IsAutoRenew = isautorenew
          @SerialNo = serialno
          @ZoneId = zoneid
          @RegionId = regionid
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @Ip = params['Ip']
          @Port = params['Port']
          @MemSize = params['MemSize']
          @Volume = params['Volume']
          @Service = params['Service']
          @ExpireTime = params['ExpireTime']
          @ApplyTime = params['ApplyTime']
          @PayType = params['PayType']
          @ExpireFlag = params['ExpireFlag']
          @Status = params['Status']
          @IsAutoRenew = params['IsAutoRenew']
          @SerialNo = params['SerialNo']
          @ZoneId = params['ZoneId']
          @RegionId = params['RegionId']
        end
      end

      # 集群实例信息
      class ClusterInstancesInfo < TencentCloud::Common::AbstractModel
        # @param Id: ID号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param Ftitle: 标题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ftitle: String
        # @param ClusterName: 集群名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param RegionId: 地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer
        # @param ZoneId: 地区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param AppId: 用户APPID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param Uin: 用户UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param ProjectId: 项目Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param VpcId: 集群VPCID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: Integer
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: Integer
        # @param Status: 实例的状态码。取值范围：
        # <li>2：表示集群运行中。</li>
        # <li>3：表示集群创建中。</li>
        # <li>4：表示集群扩容中。</li>
        # <li>5：表示集群增加router节点中。</li>
        # <li>6：表示集群安装组件中。</li>
        # <li>7：表示集群执行命令中。</li>
        # <li>8：表示重启服务中。</li>
        # <li>9：表示进入维护中。</li>
        # <li>10：表示服务暂停中。</li>
        # <li>11：表示退出维护中。</li>
        # <li>12：表示退出暂停中。</li>
        # <li>13：表示配置下发中。</li>
        # <li>14：表示销毁集群中。</li>
        # <li>15：表示销毁core节点中。</li>
        # <li>16：销毁task节点中。</li>
        # <li>17：表示销毁router节点中。</li>
        # <li>18：表示更改webproxy密码中。</li>
        # <li>19：表示集群隔离中。</li>
        # <li>20：表示集群冲正中。</li>
        # <li>21：表示集群回收中。</li>
        # <li>22：表示变配等待中。</li>
        # <li>23：表示集群已隔离。</li>
        # <li>24：表示缩容节点中。</li>
        # <li>33：表示集群等待退费中。</li>
        # <li>34：表示集群已退费。</li>
        # <li>301：表示创建失败。</li>
        # <li>302：表示扩容失败。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param AddTime: 添加时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddTime: String
        # @param RunTime: 已经运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunTime: String
        # @param Config: 集群产品配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Config: :class:`Tencentcloud::Emr.v20190103.models.EmrProductConfigOutter`
        # @param MasterIp: 主节点外网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterIp: String
        # @param EmrVersion: EMR版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EmrVersion: String
        # @param ChargeType: 收费类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeType: Integer
        # @param TradeVersion: 交易版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeVersion: Integer
        # @param ResourceOrderId: 资源订单ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceOrderId: Integer
        # @param IsTradeCluster: 是否计费集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsTradeCluster: Integer
        # @param AlarmInfo: 集群错误状态告警信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmInfo: String
        # @param IsWoodpeckerCluster: 是否采用新架构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsWoodpeckerCluster: Integer
        # @param MetaDb: 元数据库信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaDb: String
        # @param Tags: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param HiveMetaDb: Hive元数据信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HiveMetaDb: String
        # @param ServiceClass: 集群类型:EMR,CLICKHOUSE,DRUID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceClass: String
        # @param AliasInfo: 集群所有节点的别名序列化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AliasInfo: String
        # @param ProductId: 集群版本Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: Integer

        attr_accessor :Id, :ClusterId, :Ftitle, :ClusterName, :RegionId, :ZoneId, :AppId, :Uin, :ProjectId, :VpcId, :SubnetId, :Status, :AddTime, :RunTime, :Config, :MasterIp, :EmrVersion, :ChargeType, :TradeVersion, :ResourceOrderId, :IsTradeCluster, :AlarmInfo, :IsWoodpeckerCluster, :MetaDb, :Tags, :HiveMetaDb, :ServiceClass, :AliasInfo, :ProductId
        
        def initialize(id=nil, clusterid=nil, ftitle=nil, clustername=nil, regionid=nil, zoneid=nil, appid=nil, uin=nil, projectid=nil, vpcid=nil, subnetid=nil, status=nil, addtime=nil, runtime=nil, config=nil, masterip=nil, emrversion=nil, chargetype=nil, tradeversion=nil, resourceorderid=nil, istradecluster=nil, alarminfo=nil, iswoodpeckercluster=nil, metadb=nil, tags=nil, hivemetadb=nil, serviceclass=nil, aliasinfo=nil, productid=nil)
          @Id = id
          @ClusterId = clusterid
          @Ftitle = ftitle
          @ClusterName = clustername
          @RegionId = regionid
          @ZoneId = zoneid
          @AppId = appid
          @Uin = uin
          @ProjectId = projectid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @AddTime = addtime
          @RunTime = runtime
          @Config = config
          @MasterIp = masterip
          @EmrVersion = emrversion
          @ChargeType = chargetype
          @TradeVersion = tradeversion
          @ResourceOrderId = resourceorderid
          @IsTradeCluster = istradecluster
          @AlarmInfo = alarminfo
          @IsWoodpeckerCluster = iswoodpeckercluster
          @MetaDb = metadb
          @Tags = tags
          @HiveMetaDb = hivemetadb
          @ServiceClass = serviceclass
          @AliasInfo = aliasinfo
          @ProductId = productid
        end

        def deserialize(params)
          @Id = params['Id']
          @ClusterId = params['ClusterId']
          @Ftitle = params['Ftitle']
          @ClusterName = params['ClusterName']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @ProjectId = params['ProjectId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Status = params['Status']
          @AddTime = params['AddTime']
          @RunTime = params['RunTime']
          unless params['Config'].nil?
            @Config = EmrProductConfigOutter.new.deserialize(params[Config])
          end
          @MasterIp = params['MasterIp']
          @EmrVersion = params['EmrVersion']
          @ChargeType = params['ChargeType']
          @TradeVersion = params['TradeVersion']
          @ResourceOrderId = params['ResourceOrderId']
          @IsTradeCluster = params['IsTradeCluster']
          @AlarmInfo = params['AlarmInfo']
          @IsWoodpeckerCluster = params['IsWoodpeckerCluster']
          @MetaDb = params['MetaDb']
          @Tags = params['Tags']
          @HiveMetaDb = params['HiveMetaDb']
          @ServiceClass = params['ServiceClass']
          @AliasInfo = params['AliasInfo']
          @ProductId = params['ProductId']
        end
      end

      # CreateInstance请求参数结构体
      class CreateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID，不同产品ID表示不同的EMR产品版本。取值范围：
        # <li>1：表示EMR-V1.3.1。</li>
        # <li>2：表示EMR-V2.0.1。</li>
        # <li>4：表示EMR-V2.1.0。</li>
        # <li>7：表示EMR-V3.0.0。</li>
        # @type ProductId: Integer
        # @param VPCSettings: 私有网络相关信息配置。通过该参数可以指定私有网络的ID，子网ID等信息。
        # @type VPCSettings: :class:`Tencentcloud::Emr.v20190103.models.VPCSettings`
        # @param Software: 部署的组件列表。不同的EMR产品ID（ProductId：具体含义参考入参ProductId字段）需要选择不同的必选组件：
        # <li>ProductId为1的时候，必选组件包括：hadoop-2.7.3、knox-1.2.0、zookeeper-3.4.9</li>
        # <li>ProductId为2的时候，必选组件包括：hadoop-2.7.3、knox-1.2.0、zookeeper-3.4.9</li>
        # <li>ProductId为4的时候，必选组件包括：hadoop-2.8.4、knox-1.2.0、zookeeper-3.4.9</li>
        # <li>ProductId为7的时候，必选组件包括：hadoop-3.1.2、knox-1.2.0、zookeeper-3.4.9</li>
        # @type Software: Array
        # @param ResourceSpec: 节点资源的规格。
        # @type ResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.NewResourceSpec`
        # @param SupportHA: 是否开启节点高可用。取值范围：
        # <li>0：表示不开启节点高可用。</li>
        # <li>1：表示开启节点高可用。</li>
        # @type SupportHA: Integer
        # @param InstanceName: 实例名称。
        # <li>长度限制为6-36个字符。</li>
        # <li>只允许包含中文、字母、数字、-、_。</li>
        # @type InstanceName: String
        # @param PayMode: 实例计费模式。取值范围：
        # <li>0：表示按量计费。</li>
        # <li>1：表示包年包月。</li>
        # @type PayMode: Integer
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        # @type Placement: :class:`Tencentcloud::Emr.v20190103.models.Placement`
        # @param TimeSpan: 购买实例的时长。结合TimeUnit一起使用。
        # <li>TimeUnit为s时，该参数只能填写3600，表示按量计费实例。</li>
        # <li>TimeUnit为m时，该参数填写的数字表示包年包月实例的购买时长，如1表示购买一个月</li>
        # @type TimeSpan: Integer
        # @param TimeUnit: 购买实例的时间单位。取值范围：
        # <li>s：表示秒。PayMode取值为0时，TimeUnit只能取值为s。</li>
        # <li>m：表示月份。PayMode取值为1时，TimeUnit只能取值为m。</li>
        # @type TimeUnit: String
        # @param LoginSettings: 实例登录设置。通过该参数可以设置所购买节点的登录方式密码或者密钥。
        # <li>设置密钥时，密码仅用于组件原生WebUI快捷入口登录。</li>
        # <li>未设置密钥时，密码用于登录所购节点以及组件原生WebUI快捷入口登录。</li>
        # @type LoginSettings: :class:`Tencentcloud::Emr.v20190103.models.LoginSettings`
        # @param COSSettings: 开启COS访问需要设置的参数。
        # @type COSSettings: :class:`Tencentcloud::Emr.v20190103.models.COSSettings`
        # @param SgId: 实例所属安全组的ID，形如sg-xxxxxxxx。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的SecurityGroupId字段来获取。
        # @type SgId: String
        # @param PreExecutedFileSettings: 引导操作脚本设置。
        # @type PreExecutedFileSettings: Array
        # @param AutoRenew: 包年包月实例是否自动续费。取值范围：
        # <li>0：表示不自动续费。</li>
        # <li>1：表示自动续费。</li>
        # @type AutoRenew: Integer
        # @param ClientToken: 客户端Token。
        # @type ClientToken: String
        # @param NeedMasterWan: 是否开启集群Master节点公网。取值范围：
        # <li>NEED_MASTER_WAN：表示开启集群Master节点公网。</li>
        # <li>NOT_NEED_MASTER_WAN：表示不开启。</li>默认开启集群Master节点公网。
        # @type NeedMasterWan: String
        # @param RemoteLoginAtCreate: 是否需要开启外网远程登录，即22号端口。在SgId不为空时，该参数无效。
        # @type RemoteLoginAtCreate: Integer
        # @param CheckSecurity: 是否开启安全集群。0表示不开启，非0表示开启。
        # @type CheckSecurity: Integer
        # @param ExtendFsField: 访问外部文件系统。
        # @type ExtendFsField: String
        # @param Tags: 标签描述列表。通过指定该参数可以同时绑定标签到相应的实例。
        # @type Tags: Array
        # @param DisasterRecoverGroupIds: 分散置放群组ID列表，当前只支持指定一个。
        # @type DisasterRecoverGroupIds: Array
        # @param CbsEncrypt: 集群维度CBS加密盘，默认0表示不加密，1表示加密
        # @type CbsEncrypt: Integer
        # @param MetaType: hive共享元数据库类型。取值范围：
        # <li>EMR_NEW_META：表示集群默认创建</li>
        # <li>EMR_EXIT_METE：表示集群使用指定EMR-MetaDB。</li>
        # <li>USER_CUSTOM_META：表示集群使用自定义MetaDB。</li>
        # @type MetaType: String
        # @param UnifyMetaInstanceId: EMR-MetaDB实例
        # @type UnifyMetaInstanceId: String
        # @param MetaDBInfo: 自定义MetaDB信息
        # @type MetaDBInfo: :class:`Tencentcloud::Emr.v20190103.models.CustomMetaInfo`

        attr_accessor :ProductId, :VPCSettings, :Software, :ResourceSpec, :SupportHA, :InstanceName, :PayMode, :Placement, :TimeSpan, :TimeUnit, :LoginSettings, :COSSettings, :SgId, :PreExecutedFileSettings, :AutoRenew, :ClientToken, :NeedMasterWan, :RemoteLoginAtCreate, :CheckSecurity, :ExtendFsField, :Tags, :DisasterRecoverGroupIds, :CbsEncrypt, :MetaType, :UnifyMetaInstanceId, :MetaDBInfo
        
        def initialize(productid=nil, vpcsettings=nil, software=nil, resourcespec=nil, supportha=nil, instancename=nil, paymode=nil, placement=nil, timespan=nil, timeunit=nil, loginsettings=nil, cossettings=nil, sgid=nil, preexecutedfilesettings=nil, autorenew=nil, clienttoken=nil, needmasterwan=nil, remoteloginatcreate=nil, checksecurity=nil, extendfsfield=nil, tags=nil, disasterrecovergroupids=nil, cbsencrypt=nil, metatype=nil, unifymetainstanceid=nil, metadbinfo=nil)
          @ProductId = productid
          @VPCSettings = vpcsettings
          @Software = software
          @ResourceSpec = resourcespec
          @SupportHA = supportha
          @InstanceName = instancename
          @PayMode = paymode
          @Placement = placement
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @LoginSettings = loginsettings
          @COSSettings = cossettings
          @SgId = sgid
          @PreExecutedFileSettings = preexecutedfilesettings
          @AutoRenew = autorenew
          @ClientToken = clienttoken
          @NeedMasterWan = needmasterwan
          @RemoteLoginAtCreate = remoteloginatcreate
          @CheckSecurity = checksecurity
          @ExtendFsField = extendfsfield
          @Tags = tags
          @DisasterRecoverGroupIds = disasterrecovergroupids
          @CbsEncrypt = cbsencrypt
          @MetaType = metatype
          @UnifyMetaInstanceId = unifymetainstanceid
          @MetaDBInfo = metadbinfo
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          unless params['VPCSettings'].nil?
            @VPCSettings = VPCSettings.new.deserialize(params[VPCSettings])
          end
          @Software = params['Software']
          unless params['ResourceSpec'].nil?
            @ResourceSpec = NewResourceSpec.new.deserialize(params[ResourceSpec])
          end
          @SupportHA = params['SupportHA']
          @InstanceName = params['InstanceName']
          @PayMode = params['PayMode']
          unless params['Placement'].nil?
            @Placement = Placement.new.deserialize(params[Placement])
          end
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new.deserialize(params[LoginSettings])
          end
          unless params['COSSettings'].nil?
            @COSSettings = COSSettings.new.deserialize(params[COSSettings])
          end
          @SgId = params['SgId']
          @PreExecutedFileSettings = params['PreExecutedFileSettings']
          @AutoRenew = params['AutoRenew']
          @ClientToken = params['ClientToken']
          @NeedMasterWan = params['NeedMasterWan']
          @RemoteLoginAtCreate = params['RemoteLoginAtCreate']
          @CheckSecurity = params['CheckSecurity']
          @ExtendFsField = params['ExtendFsField']
          @Tags = params['Tags']
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          @CbsEncrypt = params['CbsEncrypt']
          @MetaType = params['MetaType']
          @UnifyMetaInstanceId = params['UnifyMetaInstanceId']
          unless params['MetaDBInfo'].nil?
            @MetaDBInfo = CustomMetaInfo.new.deserialize(params[MetaDBInfo])
          end
        end
      end

      # CreateInstance返回参数结构体
      class CreateInstanceResponse < TencentCloud::Common::AbstractModel
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

      # 用户自建Hive-MetaDB信息
      class CustomMetaInfo < TencentCloud::Common::AbstractModel
        # @param MetaDataJdbcUrl: 自定义MetaDB的JDBC连接，请以 jdbc:mysql:// 开头
        # @type MetaDataJdbcUrl: String
        # @param MetaDataUser: 自定义MetaDB用户名
        # @type MetaDataUser: String
        # @param MetaDataPass: 自定义MetaDB密码
        # @type MetaDataPass: String

        attr_accessor :MetaDataJdbcUrl, :MetaDataUser, :MetaDataPass
        
        def initialize(metadatajdbcurl=nil, metadatauser=nil, metadatapass=nil)
          @MetaDataJdbcUrl = metadatajdbcurl
          @MetaDataUser = metadatauser
          @MetaDataPass = metadatapass
        end

        def deserialize(params)
          @MetaDataJdbcUrl = params['MetaDataJdbcUrl']
          @MetaDataUser = params['MetaDataUser']
          @MetaDataPass = params['MetaDataPass']
        end
      end

      # DescribeClusterNodes请求参数结构体
      class DescribeClusterNodesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID,实例ID形如: emr-xxxxxxxx
        # @type InstanceId: String
        # @param NodeFlag: 节点标识，取值为：
        # <li>all：表示获取全部类型节点，cdb信息除外。</li>
        # <li>master：表示获取master节点信息。</li>
        # <li>core：表示获取core节点信息。</li>
        # <li>task：表示获取task节点信息。</li>
        # <li>common：表示获取common节点信息。</li>
        # <li>router：表示获取router节点信息。</li>
        # <li>db：表示获取正常状态的cdb信息。</li>
        # <li>recyle：表示获取回收站隔离中的节点信息，包括cdb信息。</li>
        # <li>renew：表示获取所有待续费的节点信息，包括cdb信息，自动续费节点不会返回。</li>
        # 注意：现在只支持以上取值，输入其他值会导致错误。
        # @type NodeFlag: String
        # @param Offset: 页编号，默认值为0，表示第一页。
        # @type Offset: Integer
        # @param Limit: 每页返回数量，默认值为100，最大值为100。
        # @type Limit: Integer

        attr_accessor :InstanceId, :NodeFlag, :Offset, :Limit
        
        def initialize(instanceid=nil, nodeflag=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @NodeFlag = nodeflag
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NodeFlag = params['NodeFlag']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeClusterNodes返回参数结构体
      class DescribeClusterNodesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 查询到的节点总数
        # @type TotalCnt: Integer
        # @param NodeList: 节点详细信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeList: Array
        # @param TagKeys: 用户所有的标签键列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKeys: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :NodeList, :TagKeys, :RequestId
        
        def initialize(totalcnt=nil, nodelist=nil, tagkeys=nil, requestid=nil)
          @TotalCnt = totalcnt
          @NodeList = nodelist
          @TagKeys = tagkeys
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          @NodeList = params['NodeList']
          @TagKeys = params['TagKeys']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param DisplayStrategy: 集群筛选策略。取值范围：
        # <li>clusterList：表示查询除了已销毁集群之外的集群列表。</li>
        # <li>monitorManage：表示查询除了已销毁、创建中以及创建失败的集群之外的集群列表。</li>
        # <li>cloudHardwareManage/componentManage：目前这两个取值为预留取值，暂时和monitorManage表示同样的含义。</li>
        # @type DisplayStrategy: String
        # @param InstanceIds: 按照一个或者多个实例ID查询。实例ID形如: emr-xxxxxxxx 。(此参数的具体格式可参考API[简介](https://cloud.tencent.com/document/api/213/15688)的 Ids.N 一节)。如果不填写实例ID，返回该APPID下所有实例列表。
        # @type InstanceIds: Array
        # @param Offset: 页编号，默认值为0，表示第一页。
        # @type Offset: Integer
        # @param Limit: 每页返回数量，默认值为10，最大值为100。
        # @type Limit: Integer
        # @param ProjectId: 建议必填-1，表示拉取所有项目下的集群。
        # 不填默认值为0，表示拉取默认项目下的集群。
        # 实例所属项目ID。该参数可以通过调用 [DescribeProject](https://cloud.tencent.com/document/api/378/4400) 的返回值中的 projectId 字段来获取。
        # @type ProjectId: Integer
        # @param OrderField: 排序字段。取值范围：
        # <li>clusterId：表示按照实例ID排序。</li>
        # <li>addTime：表示按照实例创建时间排序。</li>
        # <li>status：表示按照实例的状态码排序。</li>
        # @type OrderField: String
        # @param Asc: 按照OrderField升序或者降序进行排序。取值范围：
        # <li>0：表示降序。</li>
        # <li>1：表示升序。</li>默认值为0。
        # @type Asc: Integer

        attr_accessor :DisplayStrategy, :InstanceIds, :Offset, :Limit, :ProjectId, :OrderField, :Asc
        
        def initialize(displaystrategy=nil, instanceids=nil, offset=nil, limit=nil, projectid=nil, orderfield=nil, asc=nil)
          @DisplayStrategy = displaystrategy
          @InstanceIds = instanceids
          @Offset = offset
          @Limit = limit
          @ProjectId = projectid
          @OrderField = orderfield
          @Asc = asc
        end

        def deserialize(params)
          @DisplayStrategy = params['DisplayStrategy']
          @InstanceIds = params['InstanceIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProjectId = params['ProjectId']
          @OrderField = params['OrderField']
          @Asc = params['Asc']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 符合条件的实例总数。
        # @type TotalCnt: Integer
        # @param ClusterList: EMR实例详细信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterList: Array
        # @param TagKeys: 实例关联的标签键列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKeys: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :ClusterList, :TagKeys, :RequestId
        
        def initialize(totalcnt=nil, clusterlist=nil, tagkeys=nil, requestid=nil)
          @TotalCnt = totalcnt
          @ClusterList = clusterlist
          @TagKeys = tagkeys
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          @ClusterList = params['ClusterList']
          @TagKeys = params['TagKeys']
          @RequestId = params['RequestId']
        end
      end

      # EMR产品配置
      class EmrProductConfigOutter < TencentCloud::Common::AbstractModel
        # @param SoftInfo: 软件信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoftInfo: Array
        # @param MasterNodeSize: Master节点个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterNodeSize: Integer
        # @param CoreNodeSize: Core节点个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoreNodeSize: Integer
        # @param TaskNodeSize: Task节点个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskNodeSize: Integer
        # @param ComNodeSize: Common节点个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComNodeSize: Integer
        # @param MasterResource: Master节点资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterResource: :class:`Tencentcloud::Emr.v20190103.models.OutterResource`
        # @param CoreResource: Core节点资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoreResource: :class:`Tencentcloud::Emr.v20190103.models.OutterResource`
        # @param TaskResource: Task节点资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskResource: :class:`Tencentcloud::Emr.v20190103.models.OutterResource`
        # @param ComResource: Common节点资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComResource: :class:`Tencentcloud::Emr.v20190103.models.OutterResource`
        # @param OnCos: 是否使用COS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OnCos: Boolean
        # @param ChargeType: 收费类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeType: Integer
        # @param RouterNodeSize: Router节点个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouterNodeSize: Integer
        # @param SupportHA: 是否支持HA
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportHA: Boolean
        # @param SecurityOn: 是否支持安全模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityOn: Boolean
        # @param SecurityGroup: 安全组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroup: String
        # @param CbsEncrypt: 是否开启Cbs加密
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CbsEncrypt: Integer

        attr_accessor :SoftInfo, :MasterNodeSize, :CoreNodeSize, :TaskNodeSize, :ComNodeSize, :MasterResource, :CoreResource, :TaskResource, :ComResource, :OnCos, :ChargeType, :RouterNodeSize, :SupportHA, :SecurityOn, :SecurityGroup, :CbsEncrypt
        
        def initialize(softinfo=nil, masternodesize=nil, corenodesize=nil, tasknodesize=nil, comnodesize=nil, masterresource=nil, coreresource=nil, taskresource=nil, comresource=nil, oncos=nil, chargetype=nil, routernodesize=nil, supportha=nil, securityon=nil, securitygroup=nil, cbsencrypt=nil)
          @SoftInfo = softinfo
          @MasterNodeSize = masternodesize
          @CoreNodeSize = corenodesize
          @TaskNodeSize = tasknodesize
          @ComNodeSize = comnodesize
          @MasterResource = masterresource
          @CoreResource = coreresource
          @TaskResource = taskresource
          @ComResource = comresource
          @OnCos = oncos
          @ChargeType = chargetype
          @RouterNodeSize = routernodesize
          @SupportHA = supportha
          @SecurityOn = securityon
          @SecurityGroup = securitygroup
          @CbsEncrypt = cbsencrypt
        end

        def deserialize(params)
          @SoftInfo = params['SoftInfo']
          @MasterNodeSize = params['MasterNodeSize']
          @CoreNodeSize = params['CoreNodeSize']
          @TaskNodeSize = params['TaskNodeSize']
          @ComNodeSize = params['ComNodeSize']
          unless params['MasterResource'].nil?
            @MasterResource = OutterResource.new.deserialize(params[MasterResource])
          end
          unless params['CoreResource'].nil?
            @CoreResource = OutterResource.new.deserialize(params[CoreResource])
          end
          unless params['TaskResource'].nil?
            @TaskResource = OutterResource.new.deserialize(params[TaskResource])
          end
          unless params['ComResource'].nil?
            @ComResource = OutterResource.new.deserialize(params[ComResource])
          end
          @OnCos = params['OnCos']
          @ChargeType = params['ChargeType']
          @RouterNodeSize = params['RouterNodeSize']
          @SupportHA = params['SupportHA']
          @SecurityOn = params['SecurityOn']
          @SecurityGroup = params['SecurityGroup']
          @CbsEncrypt = params['CbsEncrypt']
        end
      end

      # InquiryPriceCreateInstance请求参数结构体
      class InquiryPriceCreateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param TimeUnit: 购买实例的时间单位。取值范围：
        # <li>s：表示秒。PayMode取值为0时，TimeUnit只能取值为s。</li>
        # <li>m：表示月份。PayMode取值为1时，TimeUnit只能取值为m。</li>
        # @type TimeUnit: String
        # @param TimeSpan: 购买实例的时长。结合TimeUnit一起使用。
        # <li>TimeUnit为s时，该参数只能填写3600，表示按量计费实例。</li>
        # <li>TimeUnit为m时，该参数填写的数字表示包年包月实例的购买时长，如1表示购买一个月</li>
        # @type TimeSpan: Integer
        # @param ResourceSpec: 询价的节点规格。
        # @type ResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.NewResourceSpec`
        # @param Currency: 货币种类。取值范围：
        # <li>CNY：表示人民币。</li>
        # @type Currency: String
        # @param PayMode: 实例计费模式。取值范围：
        # <li>0：表示按量计费。</li>
        # <li>1：表示包年包月。</li>
        # @type PayMode: Integer
        # @param SupportHA: 是否开启节点高可用。取值范围：
        # <li>0：表示不开启节点高可用。</li>
        # <li>1：表示开启节点高可用。</li>
        # @type SupportHA: Integer
        # @param Software: 部署的组件列表。不同的EMR产品ID（ProductId：具体含义参考入参ProductId字段）需要选择不同的必选组件：
        # <li>ProductId为1的时候，必选组件包括：hadoop-2.7.3、knox-1.2.0、zookeeper-3.4.9</li>
        # <li>ProductId为2的时候，必选组件包括：hadoop-2.7.3、knox-1.2.0、zookeeper-3.4.9</li>
        # <li>ProductId为4的时候，必选组件包括：hadoop-2.8.4、knox-1.2.0、zookeeper-3.4.9</li>
        # <li>ProductId为7的时候，必选组件包括：hadoop-3.1.2、knox-1.2.0、zookeeper-3.4.9</li>
        # @type Software: Array
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        # @type Placement: :class:`Tencentcloud::Emr.v20190103.models.Placement`
        # @param VPCSettings: 私有网络相关信息配置。通过该参数可以指定私有网络的ID，子网ID等信息。
        # @type VPCSettings: :class:`Tencentcloud::Emr.v20190103.models.VPCSettings`
        # @param MetaType: hive共享元数据库类型。取值范围：
        # <li>EMR_NEW_META：表示集群默认创建</li>
        # <li>EMR_EXIT_METE：表示集群使用指定EMR-MetaDB。</li>
        # <li>USER_CUSTOM_META：表示集群使用自定义MetaDB。</li>
        # @type MetaType: String
        # @param UnifyMetaInstanceId: EMR-MetaDB实例
        # @type UnifyMetaInstanceId: String
        # @param MetaDBInfo: 自定义MetaDB信息
        # @type MetaDBInfo: :class:`Tencentcloud::Emr.v20190103.models.CustomMetaInfo`
        # @param ProductId: 产品ID，不同产品ID表示不同的EMR产品版本。取值范围：
        # <li>1：表示EMR-V1.3.1。</li>
        # <li>2：表示EMR-V2.0.1。</li>
        # <li>4：表示EMR-V2.1.0。</li>
        # <li>7：表示EMR-V3.0.0。</li>
        # @type ProductId: Integer

        attr_accessor :TimeUnit, :TimeSpan, :ResourceSpec, :Currency, :PayMode, :SupportHA, :Software, :Placement, :VPCSettings, :MetaType, :UnifyMetaInstanceId, :MetaDBInfo, :ProductId
        
        def initialize(timeunit=nil, timespan=nil, resourcespec=nil, currency=nil, paymode=nil, supportha=nil, software=nil, placement=nil, vpcsettings=nil, metatype=nil, unifymetainstanceid=nil, metadbinfo=nil, productid=nil)
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @ResourceSpec = resourcespec
          @Currency = currency
          @PayMode = paymode
          @SupportHA = supportha
          @Software = software
          @Placement = placement
          @VPCSettings = vpcsettings
          @MetaType = metatype
          @UnifyMetaInstanceId = unifymetainstanceid
          @MetaDBInfo = metadbinfo
          @ProductId = productid
        end

        def deserialize(params)
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          unless params['ResourceSpec'].nil?
            @ResourceSpec = NewResourceSpec.new.deserialize(params[ResourceSpec])
          end
          @Currency = params['Currency']
          @PayMode = params['PayMode']
          @SupportHA = params['SupportHA']
          @Software = params['Software']
          unless params['Placement'].nil?
            @Placement = Placement.new.deserialize(params[Placement])
          end
          unless params['VPCSettings'].nil?
            @VPCSettings = VPCSettings.new.deserialize(params[VPCSettings])
          end
          @MetaType = params['MetaType']
          @UnifyMetaInstanceId = params['UnifyMetaInstanceId']
          unless params['MetaDBInfo'].nil?
            @MetaDBInfo = CustomMetaInfo.new.deserialize(params[MetaDBInfo])
          end
          @ProductId = params['ProductId']
        end
      end

      # InquiryPriceCreateInstance返回参数结构体
      class InquiryPriceCreateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalCost: 原价，单位为元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalCost: Float
        # @param DiscountCost: 折扣价，单位为元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountCost: Float
        # @param TimeUnit: 购买实例的时间单位。取值范围：
        # <li>s：表示秒。</li>
        # <li>m：表示月份。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeUnit: String
        # @param TimeSpan: 购买实例的时长。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeSpan: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalCost, :DiscountCost, :TimeUnit, :TimeSpan, :RequestId
        
        def initialize(originalcost=nil, discountcost=nil, timeunit=nil, timespan=nil, requestid=nil)
          @OriginalCost = originalcost
          @DiscountCost = discountcost
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalCost = params['OriginalCost']
          @DiscountCost = params['DiscountCost']
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceRenewInstance请求参数结构体
      class InquiryPriceRenewInstanceRequest < TencentCloud::Common::AbstractModel
        # @param TimeSpan: 实例续费的时长。需要结合TimeUnit一起使用。1表示续费1一个月
        # @type TimeSpan: Integer
        # @param ResourceIds: 待续费节点的资源ID列表。资源ID形如：emr-vm-xxxxxxxx。有效的资源ID可通过登录[控制台](https://console.cloud.tencent.com/emr/static/hardware)查询。
        # @type ResourceIds: Array
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        # @type Placement: :class:`Tencentcloud::Emr.v20190103.models.Placement`
        # @param PayMode: 实例计费模式。此处只支持取值为1，表示包年包月。
        # @type PayMode: Integer
        # @param TimeUnit: 实例续费的时间单位。取值范围：
        # <li>m：表示月份。</li>
        # @type TimeUnit: String
        # @param Currency: 货币种类。取值范围：
        # <li>CNY：表示人民币。</li>
        # @type Currency: String

        attr_accessor :TimeSpan, :ResourceIds, :Placement, :PayMode, :TimeUnit, :Currency
        
        def initialize(timespan=nil, resourceids=nil, placement=nil, paymode=nil, timeunit=nil, currency=nil)
          @TimeSpan = timespan
          @ResourceIds = resourceids
          @Placement = placement
          @PayMode = paymode
          @TimeUnit = timeunit
          @Currency = currency
        end

        def deserialize(params)
          @TimeSpan = params['TimeSpan']
          @ResourceIds = params['ResourceIds']
          unless params['Placement'].nil?
            @Placement = Placement.new.deserialize(params[Placement])
          end
          @PayMode = params['PayMode']
          @TimeUnit = params['TimeUnit']
          @Currency = params['Currency']
        end
      end

      # InquiryPriceRenewInstance返回参数结构体
      class InquiryPriceRenewInstanceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalCost: 原价，单位为元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalCost: Float
        # @param DiscountCost: 折扣价，单位为元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountCost: Float
        # @param TimeUnit: 实例续费的时间单位。取值范围：
        # <li>m：表示月份。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeUnit: String
        # @param TimeSpan: 实例续费的时长。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeSpan: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalCost, :DiscountCost, :TimeUnit, :TimeSpan, :RequestId
        
        def initialize(originalcost=nil, discountcost=nil, timeunit=nil, timespan=nil, requestid=nil)
          @OriginalCost = originalcost
          @DiscountCost = discountcost
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalCost = params['OriginalCost']
          @DiscountCost = params['DiscountCost']
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceScaleOutInstance请求参数结构体
      class InquiryPriceScaleOutInstanceRequest < TencentCloud::Common::AbstractModel
        # @param TimeUnit: 扩容的时间单位。取值范围：
        # <li>s：表示秒。PayMode取值为0时，TimeUnit只能取值为s。</li>
        # <li>m：表示月份。PayMode取值为1时，TimeUnit只能取值为m。</li>
        # @type TimeUnit: String
        # @param TimeSpan: 扩容的时长。结合TimeUnit一起使用。
        # <li>TimeUnit为s时，该参数只能填写3600，表示按量计费实例。</li>
        # <li>TimeUnit为m时，该参数填写的数字表示包年包月实例的购买时长，如1表示购买一个月</li>
        # @type TimeSpan: Integer
        # @param ZoneId: 实例所属的可用区ID，例如100003。该参数可以通过调用 [DescribeZones](https://cloud.tencent.com/document/api/213/15707) 的返回值中的ZoneId字段来获取。
        # @type ZoneId: Integer
        # @param PayMode: 实例计费模式。取值范围：
        # <li>0：表示按量计费。</li>
        # <li>1：表示包年包月。</li>
        # @type PayMode: Integer
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param CoreCount: 扩容的Core节点数量。
        # @type CoreCount: Integer
        # @param TaskCount: 扩容的Task节点数量。
        # @type TaskCount: Integer
        # @param Currency: 货币种类。取值范围：
        # <li>CNY：表示人民币。</li>
        # @type Currency: String
        # @param RouterCount: 扩容的Router节点数量。
        # @type RouterCount: Integer

        attr_accessor :TimeUnit, :TimeSpan, :ZoneId, :PayMode, :InstanceId, :CoreCount, :TaskCount, :Currency, :RouterCount
        
        def initialize(timeunit=nil, timespan=nil, zoneid=nil, paymode=nil, instanceid=nil, corecount=nil, taskcount=nil, currency=nil, routercount=nil)
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @ZoneId = zoneid
          @PayMode = paymode
          @InstanceId = instanceid
          @CoreCount = corecount
          @TaskCount = taskcount
          @Currency = currency
          @RouterCount = routercount
        end

        def deserialize(params)
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          @ZoneId = params['ZoneId']
          @PayMode = params['PayMode']
          @InstanceId = params['InstanceId']
          @CoreCount = params['CoreCount']
          @TaskCount = params['TaskCount']
          @Currency = params['Currency']
          @RouterCount = params['RouterCount']
        end
      end

      # InquiryPriceScaleOutInstance返回参数结构体
      class InquiryPriceScaleOutInstanceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalCost: 原价，单位为元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalCost: String
        # @param DiscountCost: 折扣价，单位为元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountCost: String
        # @param Unit: 扩容的时间单位。取值范围：
        # <li>s：表示秒。</li>
        # <li>m：表示月份。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String
        # @param PriceSpec: 询价的节点规格。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PriceSpec: :class:`Tencentcloud::Emr.v20190103.models.PriceResource`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalCost, :DiscountCost, :Unit, :PriceSpec, :RequestId
        
        def initialize(originalcost=nil, discountcost=nil, unit=nil, pricespec=nil, requestid=nil)
          @OriginalCost = originalcost
          @DiscountCost = discountcost
          @Unit = unit
          @PriceSpec = pricespec
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalCost = params['OriginalCost']
          @DiscountCost = params['DiscountCost']
          @Unit = params['Unit']
          unless params['PriceSpec'].nil?
            @PriceSpec = PriceResource.new.deserialize(params[PriceSpec])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceUpdateInstance请求参数结构体
      class InquiryPriceUpdateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param TimeUnit: 变配的时间单位。取值范围：
        # <li>s：表示秒。PayMode取值为0时，TimeUnit只能取值为s。</li>
        # <li>m：表示月份。PayMode取值为1时，TimeUnit只能取值为m。</li>
        # @type TimeUnit: String
        # @param TimeSpan: 变配的时长。结合TimeUnit一起使用。
        # <li>TimeUnit为s时，该参数只能填写3600，表示按量计费实例。</li>
        # <li>TimeUnit为m时，该参数填写的数字表示包年包月实例的购买时长，如1表示购买一个月</li>
        # @type TimeSpan: Integer
        # @param UpdateSpec: 节点变配的目标配置。
        # @type UpdateSpec: :class:`Tencentcloud::Emr.v20190103.models.UpdateInstanceSettings`
        # @param PayMode: 实例计费模式。取值范围：
        # <li>0：表示按量计费。</li>
        # <li>1：表示包年包月。</li>
        # @type PayMode: Integer
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        # @type Placement: :class:`Tencentcloud::Emr.v20190103.models.Placement`
        # @param Currency: 货币种类。取值范围：
        # <li>CNY：表示人民币。</li>
        # @type Currency: String

        attr_accessor :TimeUnit, :TimeSpan, :UpdateSpec, :PayMode, :Placement, :Currency
        
        def initialize(timeunit=nil, timespan=nil, updatespec=nil, paymode=nil, placement=nil, currency=nil)
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @UpdateSpec = updatespec
          @PayMode = paymode
          @Placement = placement
          @Currency = currency
        end

        def deserialize(params)
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          unless params['UpdateSpec'].nil?
            @UpdateSpec = UpdateInstanceSettings.new.deserialize(params[UpdateSpec])
          end
          @PayMode = params['PayMode']
          unless params['Placement'].nil?
            @Placement = Placement.new.deserialize(params[Placement])
          end
          @Currency = params['Currency']
        end
      end

      # InquiryPriceUpdateInstance返回参数结构体
      class InquiryPriceUpdateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalCost: 原价，单位为元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalCost: Float
        # @param DiscountCost: 折扣价，单位为元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountCost: Float
        # @param TimeUnit: 变配的时间单位。取值范围：
        # <li>s：表示秒。</li>
        # <li>m：表示月份。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeUnit: String
        # @param TimeSpan: 变配的时长。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeSpan: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalCost, :DiscountCost, :TimeUnit, :TimeSpan, :RequestId
        
        def initialize(originalcost=nil, discountcost=nil, timeunit=nil, timespan=nil, requestid=nil)
          @OriginalCost = originalcost
          @DiscountCost = discountcost
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalCost = params['OriginalCost']
          @DiscountCost = params['DiscountCost']
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          @RequestId = params['RequestId']
        end
      end

      # 登录设置
      class LoginSettings < TencentCloud::Common::AbstractModel
        # @param Password: Password
        # @type Password: String
        # @param PublicKeyId: Public Key
        # @type PublicKeyId: String

        attr_accessor :Password, :PublicKeyId
        
        def initialize(password=nil, publickeyid=nil)
          @Password = password
          @PublicKeyId = publickeyid
        end

        def deserialize(params)
          @Password = params['Password']
          @PublicKeyId = params['PublicKeyId']
        end
      end

      # 多云盘参数
      class MultiDisk < TencentCloud::Common::AbstractModel
        # @param DiskType: 云盘类型("CLOUD_PREMIUM","CLOUD_SSD","CLOUD_BASIC")的一种
        # @type DiskType: String
        # @param Volume: 云盘大小
        # @type Volume: Integer
        # @param Count: 该类型云盘个数
        # @type Count: Integer

        attr_accessor :DiskType, :Volume, :Count
        
        def initialize(disktype=nil, volume=nil, count=nil)
          @DiskType = disktype
          @Volume = volume
          @Count = count
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @Volume = params['Volume']
          @Count = params['Count']
        end
      end

      # 多云盘参数
      class MultiDiskMC < TencentCloud::Common::AbstractModel
        # @param Count: 该类型云盘个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param Type: 磁盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param Volume: 云盘大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Volume: Integer

        attr_accessor :Count, :Type, :Volume
        
        def initialize(count=nil, type=nil, volume=nil)
          @Count = count
          @Type = type
          @Volume = volume
        end

        def deserialize(params)
          @Count = params['Count']
          @Type = params['Type']
          @Volume = params['Volume']
        end
      end

      # 资源描述
      class NewResourceSpec < TencentCloud::Common::AbstractModel
        # @param MasterResourceSpec: 描述Master节点资源
        # @type MasterResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.Resource`
        # @param CoreResourceSpec: 描述Core节点资源
        # @type CoreResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.Resource`
        # @param TaskResourceSpec: 描述Task节点资源
        # @type TaskResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.Resource`
        # @param MasterCount: Master节点数量
        # @type MasterCount: Integer
        # @param CoreCount: Core节点数量
        # @type CoreCount: Integer
        # @param TaskCount: Task节点数量
        # @type TaskCount: Integer
        # @param CommonResourceSpec: 描述Common节点资源
        # @type CommonResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.Resource`
        # @param CommonCount: Common节点数量
        # @type CommonCount: Integer

        attr_accessor :MasterResourceSpec, :CoreResourceSpec, :TaskResourceSpec, :MasterCount, :CoreCount, :TaskCount, :CommonResourceSpec, :CommonCount
        
        def initialize(masterresourcespec=nil, coreresourcespec=nil, taskresourcespec=nil, mastercount=nil, corecount=nil, taskcount=nil, commonresourcespec=nil, commoncount=nil)
          @MasterResourceSpec = masterresourcespec
          @CoreResourceSpec = coreresourcespec
          @TaskResourceSpec = taskresourcespec
          @MasterCount = mastercount
          @CoreCount = corecount
          @TaskCount = taskcount
          @CommonResourceSpec = commonresourcespec
          @CommonCount = commoncount
        end

        def deserialize(params)
          unless params['MasterResourceSpec'].nil?
            @MasterResourceSpec = Resource.new.deserialize(params[MasterResourceSpec])
          end
          unless params['CoreResourceSpec'].nil?
            @CoreResourceSpec = Resource.new.deserialize(params[CoreResourceSpec])
          end
          unless params['TaskResourceSpec'].nil?
            @TaskResourceSpec = Resource.new.deserialize(params[TaskResourceSpec])
          end
          @MasterCount = params['MasterCount']
          @CoreCount = params['CoreCount']
          @TaskCount = params['TaskCount']
          unless params['CommonResourceSpec'].nil?
            @CommonResourceSpec = Resource.new.deserialize(params[CommonResourceSpec])
          end
          @CommonCount = params['CommonCount']
        end
      end

      # 节点硬件信息
      class NodeHardwareInfo < TencentCloud::Common::AbstractModel
        # @param AppId: 用户APPID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param SerialNo: 序列号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SerialNo: String
        # @param OrderNo: 机器实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderNo: String
        # @param WanIp: master节点绑定外网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanIp: String
        # @param Flag: 节点类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Flag: Integer
        # @param Spec: 节点规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Spec: String
        # @param CpuNum: 节点核数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuNum: Integer
        # @param MemSize: 节点内存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemSize: Integer
        # @param MemDesc: 节点内存描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemDesc: String
        # @param RegionId: 节点所在region
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer
        # @param ZoneId: 节点所在Zone
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param ApplyTime: 申请时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplyTime: String
        # @param FreeTime: 释放时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FreeTime: String
        # @param DiskSize: 硬盘大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSize: String
        # @param NameTag: 节点描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NameTag: String
        # @param Services: 节点部署服务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Services: String
        # @param StorageType: 磁盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageType: Integer
        # @param RootSize: 系统盘大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RootSize: Integer
        # @param ChargeType: 付费类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeType: Integer
        # @param CdbIp: 数据库IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CdbIp: String
        # @param CdbPort: 数据库端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CdbPort: Integer
        # @param HwDiskSize: 硬盘容量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HwDiskSize: Integer
        # @param HwDiskSizeDesc: 硬盘容量描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HwDiskSizeDesc: String
        # @param HwMemSize: 内存容量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HwMemSize: Integer
        # @param HwMemSizeDesc: 内存容量描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HwMemSizeDesc: String
        # @param ExpireTime: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param EmrResourceId: 节点资源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EmrResourceId: String
        # @param IsAutoRenew: 续费标志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAutoRenew: Integer
        # @param DeviceClass: 设备标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceClass: String
        # @param Mutable: 支持变配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mutable: Integer
        # @param MCMultiDisk: 多云盘
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MCMultiDisk: Array
        # @param CdbNodeInfo: 数据库信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CdbNodeInfo: :class:`Tencentcloud::Emr.v20190103.models.CdbInfo`
        # @param Ip: 内网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param Destroyable: 此节点是否可销毁，1可销毁，0不可销毁
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Destroyable: Integer
        # @param Tags: 节点绑定的标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param AutoFlag: 是否是自动扩缩容节点，0为普通节点，1为自动扩缩容节点。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoFlag: Integer

        attr_accessor :AppId, :SerialNo, :OrderNo, :WanIp, :Flag, :Spec, :CpuNum, :MemSize, :MemDesc, :RegionId, :ZoneId, :ApplyTime, :FreeTime, :DiskSize, :NameTag, :Services, :StorageType, :RootSize, :ChargeType, :CdbIp, :CdbPort, :HwDiskSize, :HwDiskSizeDesc, :HwMemSize, :HwMemSizeDesc, :ExpireTime, :EmrResourceId, :IsAutoRenew, :DeviceClass, :Mutable, :MCMultiDisk, :CdbNodeInfo, :Ip, :Destroyable, :Tags, :AutoFlag
        
        def initialize(appid=nil, serialno=nil, orderno=nil, wanip=nil, flag=nil, spec=nil, cpunum=nil, memsize=nil, memdesc=nil, regionid=nil, zoneid=nil, applytime=nil, freetime=nil, disksize=nil, nametag=nil, services=nil, storagetype=nil, rootsize=nil, chargetype=nil, cdbip=nil, cdbport=nil, hwdisksize=nil, hwdisksizedesc=nil, hwmemsize=nil, hwmemsizedesc=nil, expiretime=nil, emrresourceid=nil, isautorenew=nil, deviceclass=nil, mutable=nil, mcmultidisk=nil, cdbnodeinfo=nil, ip=nil, destroyable=nil, tags=nil, autoflag=nil)
          @AppId = appid
          @SerialNo = serialno
          @OrderNo = orderno
          @WanIp = wanip
          @Flag = flag
          @Spec = spec
          @CpuNum = cpunum
          @MemSize = memsize
          @MemDesc = memdesc
          @RegionId = regionid
          @ZoneId = zoneid
          @ApplyTime = applytime
          @FreeTime = freetime
          @DiskSize = disksize
          @NameTag = nametag
          @Services = services
          @StorageType = storagetype
          @RootSize = rootsize
          @ChargeType = chargetype
          @CdbIp = cdbip
          @CdbPort = cdbport
          @HwDiskSize = hwdisksize
          @HwDiskSizeDesc = hwdisksizedesc
          @HwMemSize = hwmemsize
          @HwMemSizeDesc = hwmemsizedesc
          @ExpireTime = expiretime
          @EmrResourceId = emrresourceid
          @IsAutoRenew = isautorenew
          @DeviceClass = deviceclass
          @Mutable = mutable
          @MCMultiDisk = mcmultidisk
          @CdbNodeInfo = cdbnodeinfo
          @Ip = ip
          @Destroyable = destroyable
          @Tags = tags
          @AutoFlag = autoflag
        end

        def deserialize(params)
          @AppId = params['AppId']
          @SerialNo = params['SerialNo']
          @OrderNo = params['OrderNo']
          @WanIp = params['WanIp']
          @Flag = params['Flag']
          @Spec = params['Spec']
          @CpuNum = params['CpuNum']
          @MemSize = params['MemSize']
          @MemDesc = params['MemDesc']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @ApplyTime = params['ApplyTime']
          @FreeTime = params['FreeTime']
          @DiskSize = params['DiskSize']
          @NameTag = params['NameTag']
          @Services = params['Services']
          @StorageType = params['StorageType']
          @RootSize = params['RootSize']
          @ChargeType = params['ChargeType']
          @CdbIp = params['CdbIp']
          @CdbPort = params['CdbPort']
          @HwDiskSize = params['HwDiskSize']
          @HwDiskSizeDesc = params['HwDiskSizeDesc']
          @HwMemSize = params['HwMemSize']
          @HwMemSizeDesc = params['HwMemSizeDesc']
          @ExpireTime = params['ExpireTime']
          @EmrResourceId = params['EmrResourceId']
          @IsAutoRenew = params['IsAutoRenew']
          @DeviceClass = params['DeviceClass']
          @Mutable = params['Mutable']
          @MCMultiDisk = params['MCMultiDisk']
          unless params['CdbNodeInfo'].nil?
            @CdbNodeInfo = CdbInfo.new.deserialize(params[CdbNodeInfo])
          end
          @Ip = params['Ip']
          @Destroyable = params['Destroyable']
          @Tags = params['Tags']
          @AutoFlag = params['AutoFlag']
        end
      end

      # 资源详情
      class OutterResource < TencentCloud::Common::AbstractModel
        # @param Spec: 规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Spec: String
        # @param SpecName: 规格名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecName: String
        # @param StorageType: 硬盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageType: Integer
        # @param DiskType: 硬盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskType: String
        # @param RootSize: 系统盘大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RootSize: Integer
        # @param MemSize: 内存大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemSize: Integer
        # @param Cpu: CPU个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cpu: Integer
        # @param DiskSize: 硬盘大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSize: Integer
        # @param InstanceType: 规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String

        attr_accessor :Spec, :SpecName, :StorageType, :DiskType, :RootSize, :MemSize, :Cpu, :DiskSize, :InstanceType
        
        def initialize(spec=nil, specname=nil, storagetype=nil, disktype=nil, rootsize=nil, memsize=nil, cpu=nil, disksize=nil, instancetype=nil)
          @Spec = spec
          @SpecName = specname
          @StorageType = storagetype
          @DiskType = disktype
          @RootSize = rootsize
          @MemSize = memsize
          @Cpu = cpu
          @DiskSize = disksize
          @InstanceType = instancetype
        end

        def deserialize(params)
          @Spec = params['Spec']
          @SpecName = params['SpecName']
          @StorageType = params['StorageType']
          @DiskType = params['DiskType']
          @RootSize = params['RootSize']
          @MemSize = params['MemSize']
          @Cpu = params['Cpu']
          @DiskSize = params['DiskSize']
          @InstanceType = params['InstanceType']
        end
      end

      # 描述集群实例位置信息
      class Placement < TencentCloud::Common::AbstractModel
        # @param ProjectId: 实例所属项目ID。该参数可以通过调用 DescribeProject 的返回值中的 projectId 字段来获取。填0为默认项目。
        # @type ProjectId: Integer
        # @param Zone: 实例所属的可用区，例如ap-guangzhou-1。该参数也可以通过调用 DescribeZones 的返回值中的Zone字段来获取。
        # @type Zone: String

        attr_accessor :ProjectId, :Zone
        
        def initialize(projectid=nil, zone=nil)
          @ProjectId = projectid
          @Zone = zone
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Zone = params['Zone']
        end
      end

      # 预执行脚本配置
      class PreExecuteFileSettings < TencentCloud::Common::AbstractModel
        # @param Path: 脚本在COS上路径，已废弃
        # @type Path: String
        # @param Args: 执行脚本参数
        # @type Args: Array
        # @param Bucket: COS的Bucket名称，已废弃
        # @type Bucket: String
        # @param Region: COS的Region名称，已废弃
        # @type Region: String
        # @param Domain: COS的Domain数据，已废弃
        # @type Domain: String
        # @param RunOrder: 执行顺序
        # @type RunOrder: Integer
        # @param WhenRun: resourceAfter 或 clusterAfter
        # @type WhenRun: String
        # @param CosFileName: 脚本文件名，已废弃
        # @type CosFileName: String
        # @param CosFileURI: 脚本的cos地址
        # @type CosFileURI: String
        # @param CosSecretId: cos的SecretId
        # @type CosSecretId: String
        # @param CosSecretKey: Cos的SecretKey
        # @type CosSecretKey: String
        # @param AppId: cos的appid，已废弃
        # @type AppId: String

        attr_accessor :Path, :Args, :Bucket, :Region, :Domain, :RunOrder, :WhenRun, :CosFileName, :CosFileURI, :CosSecretId, :CosSecretKey, :AppId
        
        def initialize(path=nil, args=nil, bucket=nil, region=nil, domain=nil, runorder=nil, whenrun=nil, cosfilename=nil, cosfileuri=nil, cossecretid=nil, cossecretkey=nil, appid=nil)
          @Path = path
          @Args = args
          @Bucket = bucket
          @Region = region
          @Domain = domain
          @RunOrder = runorder
          @WhenRun = whenrun
          @CosFileName = cosfilename
          @CosFileURI = cosfileuri
          @CosSecretId = cossecretid
          @CosSecretKey = cossecretkey
          @AppId = appid
        end

        def deserialize(params)
          @Path = params['Path']
          @Args = params['Args']
          @Bucket = params['Bucket']
          @Region = params['Region']
          @Domain = params['Domain']
          @RunOrder = params['RunOrder']
          @WhenRun = params['WhenRun']
          @CosFileName = params['CosFileName']
          @CosFileURI = params['CosFileURI']
          @CosSecretId = params['CosSecretId']
          @CosSecretKey = params['CosSecretKey']
          @AppId = params['AppId']
        end
      end

      # 询价资源
      class PriceResource < TencentCloud::Common::AbstractModel
        # @param Spec: 需要的规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Spec: String
        # @param StorageType: 硬盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageType: Integer
        # @param DiskType: 硬盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskType: String
        # @param RootSize: 系统盘大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RootSize: Integer
        # @param MemSize: 内存大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemSize: Integer
        # @param Cpu: 核心数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cpu: Integer
        # @param DiskSize: 硬盘大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSize: Integer
        # @param MultiDisks: 云盘列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MultiDisks: Array
        # @param DiskCnt: 磁盘数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskCnt: Integer
        # @param InstanceType: 规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param DiskNum: 磁盘数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskNum: Integer
        # @param LocalDiskNum: 本地盘的数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalDiskNum: Integer

        attr_accessor :Spec, :StorageType, :DiskType, :RootSize, :MemSize, :Cpu, :DiskSize, :MultiDisks, :DiskCnt, :InstanceType, :Tags, :DiskNum, :LocalDiskNum
        
        def initialize(spec=nil, storagetype=nil, disktype=nil, rootsize=nil, memsize=nil, cpu=nil, disksize=nil, multidisks=nil, diskcnt=nil, instancetype=nil, tags=nil, disknum=nil, localdisknum=nil)
          @Spec = spec
          @StorageType = storagetype
          @DiskType = disktype
          @RootSize = rootsize
          @MemSize = memsize
          @Cpu = cpu
          @DiskSize = disksize
          @MultiDisks = multidisks
          @DiskCnt = diskcnt
          @InstanceType = instancetype
          @Tags = tags
          @DiskNum = disknum
          @LocalDiskNum = localdisknum
        end

        def deserialize(params)
          @Spec = params['Spec']
          @StorageType = params['StorageType']
          @DiskType = params['DiskType']
          @RootSize = params['RootSize']
          @MemSize = params['MemSize']
          @Cpu = params['Cpu']
          @DiskSize = params['DiskSize']
          @MultiDisks = params['MultiDisks']
          @DiskCnt = params['DiskCnt']
          @InstanceType = params['InstanceType']
          @Tags = params['Tags']
          @DiskNum = params['DiskNum']
          @LocalDiskNum = params['LocalDiskNum']
        end
      end

      # 资源详情
      class Resource < TencentCloud::Common::AbstractModel
        # @param Spec: 节点规格描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Spec: String
        # @param StorageType: 存储类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageType: Integer
        # @param DiskType: 磁盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskType: String
        # @param MemSize: 内存容量,单位为M
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemSize: Integer
        # @param Cpu: CPU核数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cpu: Integer
        # @param DiskSize: 数据盘容量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSize: Integer
        # @param RootSize: 系统盘容量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RootSize: Integer
        # @param MultiDisks: 云盘列表，当数据盘为一块云盘时，直接使用DiskType和DiskSize参数，超出部分使用MultiDisks
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MultiDisks: Array
        # @param Tags: 需要绑定的标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param InstanceType: 规格类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param LocalDiskNum: 本地盘数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalDiskNum: Integer
        # @param DiskNum: 盘数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskNum: Integer

        attr_accessor :Spec, :StorageType, :DiskType, :MemSize, :Cpu, :DiskSize, :RootSize, :MultiDisks, :Tags, :InstanceType, :LocalDiskNum, :DiskNum
        
        def initialize(spec=nil, storagetype=nil, disktype=nil, memsize=nil, cpu=nil, disksize=nil, rootsize=nil, multidisks=nil, tags=nil, instancetype=nil, localdisknum=nil, disknum=nil)
          @Spec = spec
          @StorageType = storagetype
          @DiskType = disktype
          @MemSize = memsize
          @Cpu = cpu
          @DiskSize = disksize
          @RootSize = rootsize
          @MultiDisks = multidisks
          @Tags = tags
          @InstanceType = instancetype
          @LocalDiskNum = localdisknum
          @DiskNum = disknum
        end

        def deserialize(params)
          @Spec = params['Spec']
          @StorageType = params['StorageType']
          @DiskType = params['DiskType']
          @MemSize = params['MemSize']
          @Cpu = params['Cpu']
          @DiskSize = params['DiskSize']
          @RootSize = params['RootSize']
          @MultiDisks = params['MultiDisks']
          @Tags = params['Tags']
          @InstanceType = params['InstanceType']
          @LocalDiskNum = params['LocalDiskNum']
          @DiskNum = params['DiskNum']
        end
      end

      # ScaleOutInstance请求参数结构体
      class ScaleOutInstanceRequest < TencentCloud::Common::AbstractModel
        # @param TimeUnit: 扩容的时间单位。取值范围：
        # <li>s：表示秒。PayMode取值为0时，TimeUnit只能取值为s。</li>
        # <li>m：表示月份。PayMode取值为1时，TimeUnit只能取值为m。</li>
        # @type TimeUnit: String
        # @param TimeSpan: 扩容的时长。结合TimeUnit一起使用。
        # <li>TimeUnit为s时，该参数只能填写3600，表示按量计费实例。</li>
        # <li>TimeUnit为m时，该参数填写的数字表示包年包月实例的购买时长，如1表示购买一个月</li>
        # @type TimeSpan: Integer
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param PayMode: 实例计费模式。取值范围：
        # <li>0：表示按量计费。</li>
        # <li>1：表示包年包月。</li>
        # @type PayMode: Integer
        # @param ClientToken: 客户端Token。
        # @type ClientToken: String
        # @param PreExecutedFileSettings: 引导操作脚本设置。
        # @type PreExecutedFileSettings: Array
        # @param TaskCount: 扩容的Task节点数量。
        # @type TaskCount: Integer
        # @param CoreCount: 扩容的Core节点数量。
        # @type CoreCount: Integer
        # @param UnNecessaryNodeList: 扩容时不需要安装的进程。
        # @type UnNecessaryNodeList: Array
        # @param RouterCount: 扩容的Router节点数量。
        # @type RouterCount: Integer
        # @param SoftDeployInfo: 部署的服务。
        # <li>SoftDeployInfo和ServiceNodeInfo是同组参数，和UnNecessaryNodeList参数互斥。</li>
        # <li>建议使用SoftDeployInfo和ServiceNodeInfo组合。</li>
        # @type SoftDeployInfo: Array
        # @param ServiceNodeInfo: 启动的进程。
        # @type ServiceNodeInfo: Array
        # @param DisasterRecoverGroupIds: 分散置放群组ID列表，当前仅支持指定一个。
        # @type DisasterRecoverGroupIds: Array
        # @param Tags: 扩容节点绑定标签列表。
        # @type Tags: Array

        attr_accessor :TimeUnit, :TimeSpan, :InstanceId, :PayMode, :ClientToken, :PreExecutedFileSettings, :TaskCount, :CoreCount, :UnNecessaryNodeList, :RouterCount, :SoftDeployInfo, :ServiceNodeInfo, :DisasterRecoverGroupIds, :Tags
        
        def initialize(timeunit=nil, timespan=nil, instanceid=nil, paymode=nil, clienttoken=nil, preexecutedfilesettings=nil, taskcount=nil, corecount=nil, unnecessarynodelist=nil, routercount=nil, softdeployinfo=nil, servicenodeinfo=nil, disasterrecovergroupids=nil, tags=nil)
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @InstanceId = instanceid
          @PayMode = paymode
          @ClientToken = clienttoken
          @PreExecutedFileSettings = preexecutedfilesettings
          @TaskCount = taskcount
          @CoreCount = corecount
          @UnNecessaryNodeList = unnecessarynodelist
          @RouterCount = routercount
          @SoftDeployInfo = softdeployinfo
          @ServiceNodeInfo = servicenodeinfo
          @DisasterRecoverGroupIds = disasterrecovergroupids
          @Tags = tags
        end

        def deserialize(params)
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          @InstanceId = params['InstanceId']
          @PayMode = params['PayMode']
          @ClientToken = params['ClientToken']
          @PreExecutedFileSettings = params['PreExecutedFileSettings']
          @TaskCount = params['TaskCount']
          @CoreCount = params['CoreCount']
          @UnNecessaryNodeList = params['UnNecessaryNodeList']
          @RouterCount = params['RouterCount']
          @SoftDeployInfo = params['SoftDeployInfo']
          @ServiceNodeInfo = params['ServiceNodeInfo']
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          @Tags = params['Tags']
        end
      end

      # ScaleOutInstance返回参数结构体
      class ScaleOutInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param DealNames: 订单号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array
        # @param ClientToken: 客户端Token。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientToken: String
        # @param FlowId: 扩容流程ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: Integer
        # @param BillId: 大订单号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :DealNames, :ClientToken, :FlowId, :BillId, :RequestId
        
        def initialize(instanceid=nil, dealnames=nil, clienttoken=nil, flowid=nil, billid=nil, requestid=nil)
          @InstanceId = instanceid
          @DealNames = dealnames
          @ClientToken = clienttoken
          @FlowId = flowid
          @BillId = billid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DealNames = params['DealNames']
          @ClientToken = params['ClientToken']
          @FlowId = params['FlowId']
          @BillId = params['BillId']
          @RequestId = params['RequestId']
        end
      end

      # 标签
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

      # TerminateInstance请求参数结构体
      class TerminateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param ResourceIds: 销毁节点ID。该参数为预留参数，用户无需配置。
        # @type ResourceIds: Array

        attr_accessor :InstanceId, :ResourceIds
        
        def initialize(instanceid=nil, resourceids=nil)
          @InstanceId = instanceid
          @ResourceIds = resourceids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ResourceIds = params['ResourceIds']
        end
      end

      # TerminateInstance返回参数结构体
      class TerminateInstanceResponse < TencentCloud::Common::AbstractModel
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

      # TerminateTasks请求参数结构体
      class TerminateTasksRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param ResourceIds: 待销毁节点的资源ID列表。资源ID形如：emr-vm-xxxxxxxx。有效的资源ID可通过登录[控制台](https://console.cloud.tencent.com/emr/static/hardware)查询。
        # @type ResourceIds: Array

        attr_accessor :InstanceId, :ResourceIds
        
        def initialize(instanceid=nil, resourceids=nil)
          @InstanceId = instanceid
          @ResourceIds = resourceids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ResourceIds = params['ResourceIds']
        end
      end

      # TerminateTasks返回参数结构体
      class TerminateTasksResponse < TencentCloud::Common::AbstractModel
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

      # 变配资源规格
      class UpdateInstanceSettings < TencentCloud::Common::AbstractModel
        # @param Memory: 内存容量，单位为G
        # @type Memory: Integer
        # @param CPUCores: CPU核数
        # @type CPUCores: Integer
        # @param ResourceId: 机器资源ID（EMR测资源标识）
        # @type ResourceId: String
        # @param InstanceType: 变配机器规格
        # @type InstanceType: String

        attr_accessor :Memory, :CPUCores, :ResourceId, :InstanceType
        
        def initialize(memory=nil, cpucores=nil, resourceid=nil, instancetype=nil)
          @Memory = memory
          @CPUCores = cpucores
          @ResourceId = resourceid
          @InstanceType = instancetype
        end

        def deserialize(params)
          @Memory = params['Memory']
          @CPUCores = params['CPUCores']
          @ResourceId = params['ResourceId']
          @InstanceType = params['InstanceType']
        end
      end

      # VPC 参数
      class VPCSettings < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC ID
        # @type VpcId: String
        # @param SubnetId: Subnet ID
        # @type SubnetId: String

        attr_accessor :VpcId, :SubnetId
        
        def initialize(vpcid=nil, subnetid=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

    end
  end
end

