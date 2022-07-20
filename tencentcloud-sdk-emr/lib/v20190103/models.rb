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
      # AddUsersForUserManager请求参数结构体
      class AddUsersForUserManagerRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群字符串ID
        # @type InstanceId: String
        # @param UserManagerUserList: 用户信息列表
        # @type UserManagerUserList: Array

        attr_accessor :InstanceId, :UserManagerUserList
        
        def initialize(instanceid=nil, usermanageruserlist=nil)
          @InstanceId = instanceid
          @UserManagerUserList = usermanageruserlist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['UserManagerUserList'].nil?
            @UserManagerUserList = []
            params['UserManagerUserList'].each do |i|
              userinfoforusermanager_tmp = UserInfoForUserManager.new
              userinfoforusermanager_tmp.deserialize(i)
              @UserManagerUserList << userinfoforusermanager_tmp
            end
          end
        end
      end

      # AddUsersForUserManager返回参数结构体
      class AddUsersForUserManagerResponse < TencentCloud::Common::AbstractModel
        # @param SuccessUserList: 添加成功的用户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessUserList: Array
        # @param FailedUserList: 添加失败的用户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedUserList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessUserList, :FailedUserList, :RequestId
        
        def initialize(successuserlist=nil, faileduserlist=nil, requestid=nil)
          @SuccessUserList = successuserlist
          @FailedUserList = faileduserlist
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessUserList = params['SuccessUserList']
          @FailedUserList = params['FailedUserList']
          @RequestId = params['RequestId']
        end
      end

      # yarn application 统计信息
      class ApplicationStatics < TencentCloud::Common::AbstractModel
        # @param Queue: 队列名
        # @type Queue: String
        # @param User: 用户名
        # @type User: String
        # @param ApplicationType: 作业类型
        # @type ApplicationType: String
        # @param SumMemorySeconds: SumMemorySeconds含义
        # @type SumMemorySeconds: Integer
        # @param SumVCoreSeconds: SumVCoreSeconds含义
        # @type SumVCoreSeconds: Integer
        # @param SumHDFSBytesWritten: SumHDFSBytesWritten（带单位）
        # @type SumHDFSBytesWritten: String
        # @param SumHDFSBytesRead: SumHDFSBytesRead（待单位）
        # @type SumHDFSBytesRead: String
        # @param CountApps: 作业数
        # @type CountApps: Integer

        attr_accessor :Queue, :User, :ApplicationType, :SumMemorySeconds, :SumVCoreSeconds, :SumHDFSBytesWritten, :SumHDFSBytesRead, :CountApps
        
        def initialize(queue=nil, user=nil, applicationtype=nil, summemoryseconds=nil, sumvcoreseconds=nil, sumhdfsbyteswritten=nil, sumhdfsbytesread=nil, countapps=nil)
          @Queue = queue
          @User = user
          @ApplicationType = applicationtype
          @SumMemorySeconds = summemoryseconds
          @SumVCoreSeconds = sumvcoreseconds
          @SumHDFSBytesWritten = sumhdfsbyteswritten
          @SumHDFSBytesRead = sumhdfsbytesread
          @CountApps = countapps
        end

        def deserialize(params)
          @Queue = params['Queue']
          @User = params['User']
          @ApplicationType = params['ApplicationType']
          @SumMemorySeconds = params['SumMemorySeconds']
          @SumVCoreSeconds = params['SumVCoreSeconds']
          @SumHDFSBytesWritten = params['SumHDFSBytesWritten']
          @SumHDFSBytesRead = params['SumHDFSBytesRead']
          @CountApps = params['CountApps']
        end
      end

      # 引导脚本
      class BootstrapAction < TencentCloud::Common::AbstractModel
        # @param Path: 脚本位置，支持cos上的文件，且只支持https协议。
        # @type Path: String
        # @param WhenRun: 执行时间。
        # resourceAfter 表示在机器资源申请成功后执行。
        # clusterBefore 表示在集群初始化前执行。
        # clusterAfter 表示在集群初始化后执行。
        # @type WhenRun: String
        # @param Args: 脚本参数
        # @type Args: Array

        attr_accessor :Path, :WhenRun, :Args
        
        def initialize(path=nil, whenrun=nil, args=nil)
          @Path = path
          @WhenRun = whenrun
          @Args = args
        end

        def deserialize(params)
          @Path = params['Path']
          @WhenRun = params['WhenRun']
          @Args = params['Args']
        end
      end

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

      # 当前集群共用组件与集群对应关系
      class ClusterExternalServiceInfo < TencentCloud::Common::AbstractModel
        # @param DependType: 依赖关系，0:被其他集群依赖，1:依赖其他集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependType: Integer
        # @param Service: 共用组件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Service: String
        # @param ClusterId: 共用集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterStatus: 共用集群状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterStatus: Integer

        attr_accessor :DependType, :Service, :ClusterId, :ClusterStatus
        
        def initialize(dependtype=nil, service=nil, clusterid=nil, clusterstatus=nil)
          @DependType = dependtype
          @Service = service
          @ClusterId = clusterid
          @ClusterStatus = clusterstatus
        end

        def deserialize(params)
          @DependType = params['DependType']
          @Service = params['Service']
          @ClusterId = params['ClusterId']
          @ClusterStatus = params['ClusterStatus']
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
        # @param Zone: 地区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param SceneName: 场景名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SceneName: String
        # @param SceneServiceClass: 场景化集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SceneServiceClass: String
        # @param SceneEmrVersion: 场景化EMR版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SceneEmrVersion: String
        # @param DisplayName: 场景化集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String
        # @param VpcName: vpc name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcName: String
        # @param SubnetName: subnet name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetName: String
        # @param ClusterExternalServiceInfo: 集群依赖关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterExternalServiceInfo: Array
        # @param UniqVpcId: 集群vpcid 字符串类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param UniqSubnetId: 子网id 字符串类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqSubnetId: String
        # @param TopologyInfoList: 节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopologyInfoList: Array
        # @param IsMultiZoneCluster: 是否是跨AZ集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsMultiZoneCluster: Boolean

        attr_accessor :Id, :ClusterId, :Ftitle, :ClusterName, :RegionId, :ZoneId, :AppId, :Uin, :ProjectId, :VpcId, :SubnetId, :Status, :AddTime, :RunTime, :Config, :MasterIp, :EmrVersion, :ChargeType, :TradeVersion, :ResourceOrderId, :IsTradeCluster, :AlarmInfo, :IsWoodpeckerCluster, :MetaDb, :Tags, :HiveMetaDb, :ServiceClass, :AliasInfo, :ProductId, :Zone, :SceneName, :SceneServiceClass, :SceneEmrVersion, :DisplayName, :VpcName, :SubnetName, :ClusterExternalServiceInfo, :UniqVpcId, :UniqSubnetId, :TopologyInfoList, :IsMultiZoneCluster
        
        def initialize(id=nil, clusterid=nil, ftitle=nil, clustername=nil, regionid=nil, zoneid=nil, appid=nil, uin=nil, projectid=nil, vpcid=nil, subnetid=nil, status=nil, addtime=nil, runtime=nil, config=nil, masterip=nil, emrversion=nil, chargetype=nil, tradeversion=nil, resourceorderid=nil, istradecluster=nil, alarminfo=nil, iswoodpeckercluster=nil, metadb=nil, tags=nil, hivemetadb=nil, serviceclass=nil, aliasinfo=nil, productid=nil, zone=nil, scenename=nil, sceneserviceclass=nil, sceneemrversion=nil, displayname=nil, vpcname=nil, subnetname=nil, clusterexternalserviceinfo=nil, uniqvpcid=nil, uniqsubnetid=nil, topologyinfolist=nil, ismultizonecluster=nil)
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
          @Zone = zone
          @SceneName = scenename
          @SceneServiceClass = sceneserviceclass
          @SceneEmrVersion = sceneemrversion
          @DisplayName = displayname
          @VpcName = vpcname
          @SubnetName = subnetname
          @ClusterExternalServiceInfo = clusterexternalserviceinfo
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @TopologyInfoList = topologyinfolist
          @IsMultiZoneCluster = ismultizonecluster
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
            @Config = EmrProductConfigOutter.new
            @Config.deserialize(params['Config'])
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
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @HiveMetaDb = params['HiveMetaDb']
          @ServiceClass = params['ServiceClass']
          @AliasInfo = params['AliasInfo']
          @ProductId = params['ProductId']
          @Zone = params['Zone']
          @SceneName = params['SceneName']
          @SceneServiceClass = params['SceneServiceClass']
          @SceneEmrVersion = params['SceneEmrVersion']
          @DisplayName = params['DisplayName']
          @VpcName = params['VpcName']
          @SubnetName = params['SubnetName']
          unless params['ClusterExternalServiceInfo'].nil?
            @ClusterExternalServiceInfo = []
            params['ClusterExternalServiceInfo'].each do |i|
              clusterexternalserviceinfo_tmp = ClusterExternalServiceInfo.new
              clusterexternalserviceinfo_tmp.deserialize(i)
              @ClusterExternalServiceInfo << clusterexternalserviceinfo_tmp
            end
          end
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          unless params['TopologyInfoList'].nil?
            @TopologyInfoList = []
            params['TopologyInfoList'].each do |i|
              topologyinfo_tmp = TopologyInfo.new
              topologyinfo_tmp.deserialize(i)
              @TopologyInfoList << topologyinfo_tmp
            end
          end
          @IsMultiZoneCluster = params['IsMultiZoneCluster']
        end
      end

      # 集群配置。
      class ClusterSetting < TencentCloud::Common::AbstractModel
        # @param InstanceChargeType: 付费方式。
        # PREPAID 包年包月。
        # POSTPAID_BY_HOUR 按量计费，默认方式。
        # @type InstanceChargeType: String
        # @param SupportHA: 是否为HA集群。
        # @type SupportHA: Boolean
        # @param SecurityGroupIds: 集群所使用的安全组，目前仅支持一个。
        # @type SecurityGroupIds: Array
        # @param Placement: 实例位置。
        # @type Placement: :class:`Tencentcloud::Emr.v20190103.models.Placement`
        # @param VPCSettings: 实例所在VPC。
        # @type VPCSettings: :class:`Tencentcloud::Emr.v20190103.models.VPCSettings`
        # @param LoginSettings: 实例登录配置。
        # @type LoginSettings: :class:`Tencentcloud::Emr.v20190103.models.LoginSettings`
        # @param TagSpecification: 实例标签。
        # @type TagSpecification: Array
        # @param MetaDB: 元数据库配置。
        # @type MetaDB: :class:`Tencentcloud::Emr.v20190103.models.MetaDbInfo`
        # @param ResourceSpec: 实例硬件配置。
        # @type ResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.JobFlowResourceSpec`
        # @param PublicIpAssigned: 是否申请公网IP，默认为false。
        # @type PublicIpAssigned: Boolean
        # @param InstanceChargePrepaid: 包年包月配置，只对包年包月集群生效。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Emr.v20190103.models.InstanceChargePrepaid`
        # @param DisasterRecoverGroupIds: 集群置放群组。
        # @type DisasterRecoverGroupIds: String
        # @param CbsEncryptFlag: 是否使用cbs加密。
        # @type CbsEncryptFlag: Boolean
        # @param RemoteTcpDefaultPort: 是否使用远程登录，默认为false。
        # @type RemoteTcpDefaultPort: Boolean

        attr_accessor :InstanceChargeType, :SupportHA, :SecurityGroupIds, :Placement, :VPCSettings, :LoginSettings, :TagSpecification, :MetaDB, :ResourceSpec, :PublicIpAssigned, :InstanceChargePrepaid, :DisasterRecoverGroupIds, :CbsEncryptFlag, :RemoteTcpDefaultPort
        
        def initialize(instancechargetype=nil, supportha=nil, securitygroupids=nil, placement=nil, vpcsettings=nil, loginsettings=nil, tagspecification=nil, metadb=nil, resourcespec=nil, publicipassigned=nil, instancechargeprepaid=nil, disasterrecovergroupids=nil, cbsencryptflag=nil, remotetcpdefaultport=nil)
          @InstanceChargeType = instancechargetype
          @SupportHA = supportha
          @SecurityGroupIds = securitygroupids
          @Placement = placement
          @VPCSettings = vpcsettings
          @LoginSettings = loginsettings
          @TagSpecification = tagspecification
          @MetaDB = metadb
          @ResourceSpec = resourcespec
          @PublicIpAssigned = publicipassigned
          @InstanceChargePrepaid = instancechargeprepaid
          @DisasterRecoverGroupIds = disasterrecovergroupids
          @CbsEncryptFlag = cbsencryptflag
          @RemoteTcpDefaultPort = remotetcpdefaultport
        end

        def deserialize(params)
          @InstanceChargeType = params['InstanceChargeType']
          @SupportHA = params['SupportHA']
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          unless params['VPCSettings'].nil?
            @VPCSettings = VPCSettings.new
            @VPCSettings.deserialize(params['VPCSettings'])
          end
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @TagSpecification = params['TagSpecification']
          unless params['MetaDB'].nil?
            @MetaDB = MetaDbInfo.new
            @MetaDB.deserialize(params['MetaDB'])
          end
          unless params['ResourceSpec'].nil?
            @ResourceSpec = JobFlowResourceSpec.new
            @ResourceSpec.deserialize(params['ResourceSpec'])
          end
          @PublicIpAssigned = params['PublicIpAssigned']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          @CbsEncryptFlag = params['CbsEncryptFlag']
          @RemoteTcpDefaultPort = params['RemoteTcpDefaultPort']
        end
      end

      # 自定义配置参数
      class Configuration < TencentCloud::Common::AbstractModel
        # @param Classification: 配置文件名，支持SPARK、HIVE、HDFS、YARN的部分配置文件自定义。
        # @type Classification: String
        # @param Properties: 配置参数通过KV的形式传入，部分文件支持自定义，可以通过特殊的键"content"传入所有内容。
        # @type Properties: String

        attr_accessor :Classification, :Properties
        
        def initialize(classification=nil, properties=nil)
          @Classification = classification
          @Properties = properties
        end

        def deserialize(params)
          @Classification = params['Classification']
          @Properties = params['Properties']
        end
      end

      # CreateInstance请求参数结构体
      class CreateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID，不同产品ID表示不同的EMR产品版本。取值范围：
        # <li>1：表示EMR-V1.3.1。</li>
        # <li>2：表示EMR-V2.0.1。</li>
        # <li>4：表示EMR-V2.1.0。</li>
        # <li>7：表示EMR-V3.0.0。</li>
        # <li>9：表示EMR-V2.2.0。</li>
        # <li>11：表示CLICKHOUSE-V1.0.0。</li>
        # <li>13：表示DRUID-V1.0.0。</li>
        # <li>15：表示EMR-V2.2.1。</li>
        # <li>16：表示EMR-V2.3.0。</li>
        # <li>17：表示CLICKHOUSE-V1.1.0。</li>
        # <li>19：表示EMR-V2.4.0。</li>
        # <li>20：表示EMR-V2.5.0。</li>
        # <li>22：表示CLICKHOUSE-V1.2.0。</li>
        # <li>24：表示EMR-TianQiong-V1.0.0。</li>
        # <li>25：表示EMR-V3.1.0。</li>
        # <li>26：表示DORIS-V1.0.0。</li>
        # <li>27：表示KAFKA-V1.0.0。</li>
        # <li>28：表示EMR-V3.2.0。</li>
        # <li>29：表示EMR-V2.5.1。</li>
        # <li>30：表示EMR-V2.6.0。</li>
        # @type ProductId: Integer
        # @param Software: 部署的组件列表。不同的EMR产品ID（ProductId：具体含义参考入参ProductId字段）对应不同可选组件列表，不同产品版本可选组件列表查询：[组件版本](https://cloud.tencent.com/document/product/589/20279) ；
        # 填写实例值：hive、flink。
        # @type Software: Array
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
        # @param VPCSettings: 私有网络相关信息配置。通过该参数可以指定私有网络的ID，子网ID等信息。
        # @type VPCSettings: :class:`Tencentcloud::Emr.v20190103.models.VPCSettings`
        # @param ResourceSpec: 节点资源的规格。
        # @type ResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.NewResourceSpec`
        # @param COSSettings: 开启COS访问需要设置的参数。
        # @type COSSettings: :class:`Tencentcloud::Emr.v20190103.models.COSSettings`
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        # @type Placement: :class:`Tencentcloud::Emr.v20190103.models.Placement`
        # @param SgId: 实例所属安全组的ID，形如sg-xxxxxxxx。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的SecurityGroupId字段来获取。
        # @type SgId: String
        # @param PreExecutedFileSettings: [引导操作](https://cloud.tencent.com/document/product/589/35656)脚本设置。
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
        # 该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/product/213/15486 ) 的返回值中的SecurityGroupId字段来获取。
        # @type DisasterRecoverGroupIds: Array
        # @param CbsEncrypt: 集群维度CBS加密盘，默认0表示不加密，1表示加密
        # @type CbsEncrypt: Integer
        # @param MetaType: hive共享元数据库类型。取值范围：
        # <li>EMR_NEW_META：表示集群默认创建</li>
        # <li>EMR_EXIT_META：表示集群使用指定EMR-MetaDB。</li>
        # <li>USER_CUSTOM_META：表示集群使用自定义MetaDB。</li>
        # @type MetaType: String
        # @param UnifyMetaInstanceId: EMR-MetaDB实例
        # @type UnifyMetaInstanceId: String
        # @param MetaDBInfo: 自定义MetaDB信息
        # @type MetaDBInfo: :class:`Tencentcloud::Emr.v20190103.models.CustomMetaInfo`
        # @param ApplicationRole: 自定义应用角色。
        # @type ApplicationRole: String
        # @param SceneName: 场景化取值：
        # Hadoop-Kudu
        # Hadoop-Zookeeper
        # Hadoop-Presto
        # Hadoop-Hbase
        # @type SceneName: String
        # @param ExternalService: 共享组件信息
        # @type ExternalService: Array
        # @param VersionID: 如果为0，则MultiZone、MultiDeployStrategy、MultiZoneSettings是disable的状态，如果为1，则废弃ResourceSpec，使用MultiZoneSettings。
        # @type VersionID: Integer
        # @param MultiZone: true表示开启跨AZ部署；仅为新建集群时的用户参数，后续不支持调整。
        # @type MultiZone: Boolean
        # @param MultiZoneSettings: 节点资源的规格，有几个可用区，就填几个，按顺序第一个为主可用区，第二个为备可用区，第三个为仲裁可用区。如果没有开启跨AZ，则长度为1即可。
        # @type MultiZoneSettings: Array

        attr_accessor :ProductId, :Software, :SupportHA, :InstanceName, :PayMode, :TimeSpan, :TimeUnit, :LoginSettings, :VPCSettings, :ResourceSpec, :COSSettings, :Placement, :SgId, :PreExecutedFileSettings, :AutoRenew, :ClientToken, :NeedMasterWan, :RemoteLoginAtCreate, :CheckSecurity, :ExtendFsField, :Tags, :DisasterRecoverGroupIds, :CbsEncrypt, :MetaType, :UnifyMetaInstanceId, :MetaDBInfo, :ApplicationRole, :SceneName, :ExternalService, :VersionID, :MultiZone, :MultiZoneSettings
        
        def initialize(productid=nil, software=nil, supportha=nil, instancename=nil, paymode=nil, timespan=nil, timeunit=nil, loginsettings=nil, vpcsettings=nil, resourcespec=nil, cossettings=nil, placement=nil, sgid=nil, preexecutedfilesettings=nil, autorenew=nil, clienttoken=nil, needmasterwan=nil, remoteloginatcreate=nil, checksecurity=nil, extendfsfield=nil, tags=nil, disasterrecovergroupids=nil, cbsencrypt=nil, metatype=nil, unifymetainstanceid=nil, metadbinfo=nil, applicationrole=nil, scenename=nil, externalservice=nil, versionid=nil, multizone=nil, multizonesettings=nil)
          @ProductId = productid
          @Software = software
          @SupportHA = supportha
          @InstanceName = instancename
          @PayMode = paymode
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @LoginSettings = loginsettings
          @VPCSettings = vpcsettings
          @ResourceSpec = resourcespec
          @COSSettings = cossettings
          @Placement = placement
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
          @ApplicationRole = applicationrole
          @SceneName = scenename
          @ExternalService = externalservice
          @VersionID = versionid
          @MultiZone = multizone
          @MultiZoneSettings = multizonesettings
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Software = params['Software']
          @SupportHA = params['SupportHA']
          @InstanceName = params['InstanceName']
          @PayMode = params['PayMode']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          unless params['VPCSettings'].nil?
            @VPCSettings = VPCSettings.new
            @VPCSettings.deserialize(params['VPCSettings'])
          end
          unless params['ResourceSpec'].nil?
            @ResourceSpec = NewResourceSpec.new
            @ResourceSpec.deserialize(params['ResourceSpec'])
          end
          unless params['COSSettings'].nil?
            @COSSettings = COSSettings.new
            @COSSettings.deserialize(params['COSSettings'])
          end
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @SgId = params['SgId']
          unless params['PreExecutedFileSettings'].nil?
            @PreExecutedFileSettings = []
            params['PreExecutedFileSettings'].each do |i|
              preexecutefilesettings_tmp = PreExecuteFileSettings.new
              preexecutefilesettings_tmp.deserialize(i)
              @PreExecutedFileSettings << preexecutefilesettings_tmp
            end
          end
          @AutoRenew = params['AutoRenew']
          @ClientToken = params['ClientToken']
          @NeedMasterWan = params['NeedMasterWan']
          @RemoteLoginAtCreate = params['RemoteLoginAtCreate']
          @CheckSecurity = params['CheckSecurity']
          @ExtendFsField = params['ExtendFsField']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          @CbsEncrypt = params['CbsEncrypt']
          @MetaType = params['MetaType']
          @UnifyMetaInstanceId = params['UnifyMetaInstanceId']
          unless params['MetaDBInfo'].nil?
            @MetaDBInfo = CustomMetaInfo.new
            @MetaDBInfo.deserialize(params['MetaDBInfo'])
          end
          @ApplicationRole = params['ApplicationRole']
          @SceneName = params['SceneName']
          unless params['ExternalService'].nil?
            @ExternalService = []
            params['ExternalService'].each do |i|
              externalservice_tmp = ExternalService.new
              externalservice_tmp.deserialize(i)
              @ExternalService << externalservice_tmp
            end
          end
          @VersionID = params['VersionID']
          @MultiZone = params['MultiZone']
          unless params['MultiZoneSettings'].nil?
            @MultiZoneSettings = []
            params['MultiZoneSettings'].each do |i|
              multizonesetting_tmp = MultiZoneSetting.new
              multizonesetting_tmp.deserialize(i)
              @MultiZoneSettings << multizonesetting_tmp
            end
          end
        end
      end

      # CreateInstance返回参数结构体
      class CreateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RequestId
        
        def initialize(instanceid=nil, requestid=nil)
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
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

      # 共用自建组件参数
      class CustomServiceDefine < TencentCloud::Common::AbstractModel
        # @param Name: 自定义参数key
        # @type Name: String
        # @param Value: 自定义参数value
        # @type Value: String

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
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
        # @param HardwareResourceType: 资源类型:支持all/host/pod，默认为all
        # @type HardwareResourceType: String
        # @param SearchFields: 支持搜索的字段
        # @type SearchFields: Array

        attr_accessor :InstanceId, :NodeFlag, :Offset, :Limit, :HardwareResourceType, :SearchFields
        
        def initialize(instanceid=nil, nodeflag=nil, offset=nil, limit=nil, hardwareresourcetype=nil, searchfields=nil)
          @InstanceId = instanceid
          @NodeFlag = nodeflag
          @Offset = offset
          @Limit = limit
          @HardwareResourceType = hardwareresourcetype
          @SearchFields = searchfields
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NodeFlag = params['NodeFlag']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @HardwareResourceType = params['HardwareResourceType']
          unless params['SearchFields'].nil?
            @SearchFields = []
            params['SearchFields'].each do |i|
              searchitem_tmp = SearchItem.new
              searchitem_tmp.deserialize(i)
              @SearchFields << searchitem_tmp
            end
          end
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
        # @param HardwareResourceTypeList: 资源类型列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HardwareResourceTypeList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :NodeList, :TagKeys, :HardwareResourceTypeList, :RequestId
        
        def initialize(totalcnt=nil, nodelist=nil, tagkeys=nil, hardwareresourcetypelist=nil, requestid=nil)
          @TotalCnt = totalcnt
          @NodeList = nodelist
          @TagKeys = tagkeys
          @HardwareResourceTypeList = hardwareresourcetypelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          unless params['NodeList'].nil?
            @NodeList = []
            params['NodeList'].each do |i|
              nodehardwareinfo_tmp = NodeHardwareInfo.new
              nodehardwareinfo_tmp.deserialize(i)
              @NodeList << nodehardwareinfo_tmp
            end
          end
          @TagKeys = params['TagKeys']
          @HardwareResourceTypeList = params['HardwareResourceTypeList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCvmQuota请求参数结构体
      class DescribeCvmQuotaRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: EMR集群ID
        # @type ClusterId: String
        # @param ZoneId: 区ID
        # @type ZoneId: Integer

        attr_accessor :ClusterId, :ZoneId
        
        def initialize(clusterid=nil, zoneid=nil)
          @ClusterId = clusterid
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeCvmQuota返回参数结构体
      class DescribeCvmQuotaResponse < TencentCloud::Common::AbstractModel
        # @param PostPaidQuotaSet: 后付费配额列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostPaidQuotaSet: Array
        # @param SpotPaidQuotaSet: 竞价实例配额列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpotPaidQuotaSet: Array
        # @param EksQuotaSet: eks配额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EksQuotaSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PostPaidQuotaSet, :SpotPaidQuotaSet, :EksQuotaSet, :RequestId
        
        def initialize(postpaidquotaset=nil, spotpaidquotaset=nil, eksquotaset=nil, requestid=nil)
          @PostPaidQuotaSet = postpaidquotaset
          @SpotPaidQuotaSet = spotpaidquotaset
          @EksQuotaSet = eksquotaset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PostPaidQuotaSet'].nil?
            @PostPaidQuotaSet = []
            params['PostPaidQuotaSet'].each do |i|
              quotaentity_tmp = QuotaEntity.new
              quotaentity_tmp.deserialize(i)
              @PostPaidQuotaSet << quotaentity_tmp
            end
          end
          unless params['SpotPaidQuotaSet'].nil?
            @SpotPaidQuotaSet = []
            params['SpotPaidQuotaSet'].each do |i|
              quotaentity_tmp = QuotaEntity.new
              quotaentity_tmp.deserialize(i)
              @SpotPaidQuotaSet << quotaentity_tmp
            end
          end
          unless params['EksQuotaSet'].nil?
            @EksQuotaSet = []
            params['EksQuotaSet'].each do |i|
              podsalespec_tmp = PodSaleSpec.new
              podsalespec_tmp.deserialize(i)
              @EksQuotaSet << podsalespec_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEmrApplicationStatics请求参数结构体
      class DescribeEmrApplicationStaticsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param StartTime: 起始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param Queues: 过滤的队列名
        # @type Queues: Array
        # @param Users: 过滤的用户名
        # @type Users: Array
        # @param ApplicationTypes: 过滤的作业类型
        # @type ApplicationTypes: Array
        # @param GroupBy: 分组字段，可选：queue, user, applicationType
        # @type GroupBy: Array
        # @param OrderBy: 排序字段，可选：sumMemorySeconds, sumVCoreSeconds, sumHDFSBytesWritten, sumHDFSBytesRead
        # @type OrderBy: String
        # @param IsAsc: 是否顺序排序，0-逆序，1-正序
        # @type IsAsc: Integer
        # @param Offset: 页号
        # @type Offset: Integer
        # @param Limit: 页容量
        # @type Limit: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :Queues, :Users, :ApplicationTypes, :GroupBy, :OrderBy, :IsAsc, :Offset, :Limit
        
        def initialize(instanceid=nil, starttime=nil, endtime=nil, queues=nil, users=nil, applicationtypes=nil, groupby=nil, orderby=nil, isasc=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Queues = queues
          @Users = users
          @ApplicationTypes = applicationtypes
          @GroupBy = groupby
          @OrderBy = orderby
          @IsAsc = isasc
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Queues = params['Queues']
          @Users = params['Users']
          @ApplicationTypes = params['ApplicationTypes']
          @GroupBy = params['GroupBy']
          @OrderBy = params['OrderBy']
          @IsAsc = params['IsAsc']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeEmrApplicationStatics返回参数结构体
      class DescribeEmrApplicationStaticsResponse < TencentCloud::Common::AbstractModel
        # @param Statics: 作业统计信息
        # @type Statics: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Queues: 可选择的队列名
        # @type Queues: Array
        # @param Users: 可选择的用户名
        # @type Users: Array
        # @param ApplicationTypes: 可选择的作业类型
        # @type ApplicationTypes: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Statics, :TotalCount, :Queues, :Users, :ApplicationTypes, :RequestId
        
        def initialize(statics=nil, totalcount=nil, queues=nil, users=nil, applicationtypes=nil, requestid=nil)
          @Statics = statics
          @TotalCount = totalcount
          @Queues = queues
          @Users = users
          @ApplicationTypes = applicationtypes
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Statics'].nil?
            @Statics = []
            params['Statics'].each do |i|
              applicationstatics_tmp = ApplicationStatics.new
              applicationstatics_tmp.deserialize(i)
              @Statics << applicationstatics_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @Queues = params['Queues']
          @Users = params['Users']
          @ApplicationTypes = params['ApplicationTypes']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceRenewNodes请求参数结构体
      class DescribeInstanceRenewNodesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID,实例ID形如: emr-xxxxxxxx
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceRenewNodes返回参数结构体
      class DescribeInstanceRenewNodesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 查询到的节点总数
        # @type TotalCnt: Integer
        # @param NodeList: 节点详细信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeList: Array
        # @param MetaInfo: 用户所有的标签键列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :NodeList, :MetaInfo, :RequestId
        
        def initialize(totalcnt=nil, nodelist=nil, metainfo=nil, requestid=nil)
          @TotalCnt = totalcnt
          @NodeList = nodelist
          @MetaInfo = metainfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          unless params['NodeList'].nil?
            @NodeList = []
            params['NodeList'].each do |i|
              renewinstancesinfo_tmp = RenewInstancesInfo.new
              renewinstancesinfo_tmp.deserialize(i)
              @NodeList << renewinstancesinfo_tmp
            end
          end
          @MetaInfo = params['MetaInfo']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesList请求参数结构体
      class DescribeInstancesListRequest < TencentCloud::Common::AbstractModel
        # @param DisplayStrategy: 集群筛选策略。取值范围：<li>clusterList：表示查询除了已销毁集群之外的集群列表。</li><li>monitorManage：表示查询除了已销毁、创建中以及创建失败的集群之外的集群列表。</li><li>cloudHardwareManage/componentManage：目前这两个取值为预留取值，暂时和monitorManage表示同样的含义。</li>
        # @type DisplayStrategy: String
        # @param Offset: 页编号，默认值为0，表示第一页。
        # @type Offset: Integer
        # @param Limit: 每页返回数量，默认值为10，最大值为100。
        # @type Limit: Integer
        # @param OrderField: 排序字段。取值范围：<li>clusterId：表示按照实例ID排序。</li><li>addTime：表示按照实例创建时间排序。</li><li>status：表示按照实例的状态码排序。</li>
        # @type OrderField: String
        # @param Asc: 按照OrderField升序或者降序进行排序。取值范围：<li>0：表示降序。</li><li>1：表示升序。</li>默认值为0。
        # @type Asc: Integer
        # @param Filters: 自定义查询
        # @type Filters: Array

        attr_accessor :DisplayStrategy, :Offset, :Limit, :OrderField, :Asc, :Filters
        
        def initialize(displaystrategy=nil, offset=nil, limit=nil, orderfield=nil, asc=nil, filters=nil)
          @DisplayStrategy = displaystrategy
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @Asc = asc
          @Filters = filters
        end

        def deserialize(params)
          @DisplayStrategy = params['DisplayStrategy']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @Asc = params['Asc']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # DescribeInstancesList返回参数结构体
      class DescribeInstancesListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 符合条件的实例总数。
        # @type TotalCnt: Integer
        # @param InstancesList: 集群实例列表
        # @type InstancesList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :InstancesList, :RequestId
        
        def initialize(totalcnt=nil, instanceslist=nil, requestid=nil)
          @TotalCnt = totalcnt
          @InstancesList = instanceslist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          unless params['InstancesList'].nil?
            @InstancesList = []
            params['InstancesList'].each do |i|
              emrlistinstance_tmp = EmrListInstance.new
              emrlistinstance_tmp.deserialize(i)
              @InstancesList << emrlistinstance_tmp
            end
          end
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
          unless params['ClusterList'].nil?
            @ClusterList = []
            params['ClusterList'].each do |i|
              clusterinstancesinfo_tmp = ClusterInstancesInfo.new
              clusterinstancesinfo_tmp.deserialize(i)
              @ClusterList << clusterinstancesinfo_tmp
            end
          end
          @TagKeys = params['TagKeys']
          @RequestId = params['RequestId']
        end
      end

      # DescribeJobFlow请求参数结构体
      class DescribeJobFlowRequest < TencentCloud::Common::AbstractModel
        # @param JobFlowId: 流程任务Id，RunJobFlow接口返回的值。
        # @type JobFlowId: Integer

        attr_accessor :JobFlowId
        
        def initialize(jobflowid=nil)
          @JobFlowId = jobflowid
        end

        def deserialize(params)
          @JobFlowId = params['JobFlowId']
        end
      end

      # DescribeJobFlow返回参数结构体
      class DescribeJobFlowResponse < TencentCloud::Common::AbstractModel
        # @param State: 流程任务状态，可以为以下值：
        # JobFlowInit，流程任务初始化。
        # JobFlowResourceApplied，资源申请中，通常为JobFlow需要新建集群时的状态。
        # JobFlowResourceReady，执行流程任务的资源就绪。
        # JobFlowStepsRunning，流程任务步骤已提交。
        # JobFlowStepsComplete，流程任务步骤已完成。
        # JobFlowTerminating，流程任务所需资源销毁中。
        # JobFlowFinish，流程任务已完成。
        # @type State: String
        # @param Details: 流程任务步骤结果。
        # @type Details: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :State, :Details, :RequestId
        
        def initialize(state=nil, details=nil, requestid=nil)
          @State = state
          @Details = details
          @RequestId = requestid
        end

        def deserialize(params)
          @State = params['State']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              jobresult_tmp = JobResult.new
              jobresult_tmp.deserialize(i)
              @Details << jobresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceSchedule请求参数结构体
      class DescribeResourceScheduleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: emr集群的英文id
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeResourceSchedule返回参数结构体
      class DescribeResourceScheduleResponse < TencentCloud::Common::AbstractModel
        # @param OpenSwitch: 资源调度功能是否开启
        # @type OpenSwitch: Boolean
        # @param Scheduler: 正在使用的资源调度器
        # @type Scheduler: String
        # @param FSInfo: 公平调度器的信息
        # @type FSInfo: String
        # @param CSInfo: 容量调度器的信息
        # @type CSInfo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OpenSwitch, :Scheduler, :FSInfo, :CSInfo, :RequestId
        
        def initialize(openswitch=nil, scheduler=nil, fsinfo=nil, csinfo=nil, requestid=nil)
          @OpenSwitch = openswitch
          @Scheduler = scheduler
          @FSInfo = fsinfo
          @CSInfo = csinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @OpenSwitch = params['OpenSwitch']
          @Scheduler = params['Scheduler']
          @FSInfo = params['FSInfo']
          @CSInfo = params['CSInfo']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsersForUserManager请求参数结构体
      class DescribeUsersForUserManagerRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param PageNo: 页码
        # @type PageNo: Integer
        # @param PageSize: 分页的大小
        # @type PageSize: Integer
        # @param UserManagerFilter: 查询用户列表过滤器
        # @type UserManagerFilter: :class:`Tencentcloud::Emr.v20190103.models.UserManagerFilter`
        # @param NeedKeytabInfo: 是否需要keytab文件的信息，仅对开启kerberos的集群有效，默认为false
        # @type NeedKeytabInfo: Boolean

        attr_accessor :InstanceId, :PageNo, :PageSize, :UserManagerFilter, :NeedKeytabInfo
        
        def initialize(instanceid=nil, pageno=nil, pagesize=nil, usermanagerfilter=nil, needkeytabinfo=nil)
          @InstanceId = instanceid
          @PageNo = pageno
          @PageSize = pagesize
          @UserManagerFilter = usermanagerfilter
          @NeedKeytabInfo = needkeytabinfo
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          unless params['UserManagerFilter'].nil?
            @UserManagerFilter = UserManagerFilter.new
            @UserManagerFilter.deserialize(params['UserManagerFilter'])
          end
          @NeedKeytabInfo = params['NeedKeytabInfo']
        end
      end

      # DescribeUsersForUserManager返回参数结构体
      class DescribeUsersForUserManagerResponse < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 总数
        # @type TotalCnt: Integer
        # @param UserManagerUserList: 用户信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserManagerUserList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :UserManagerUserList, :RequestId
        
        def initialize(totalcnt=nil, usermanageruserlist=nil, requestid=nil)
          @TotalCnt = totalcnt
          @UserManagerUserList = usermanageruserlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          unless params['UserManagerUserList'].nil?
            @UserManagerUserList = []
            params['UserManagerUserList'].each do |i|
              usermanageruserbriefinfo_tmp = UserManagerUserBriefInfo.new
              usermanageruserbriefinfo_tmp.deserialize(i)
              @UserManagerUserList << usermanageruserbriefinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 磁盘组。
      class DiskGroup < TencentCloud::Common::AbstractModel
        # @param Spec: 磁盘规格。
        # @type Spec: :class:`Tencentcloud::Emr.v20190103.models.DiskSpec`
        # @param Count: 同类型磁盘数量。
        # @type Count: Integer

        attr_accessor :Spec, :Count
        
        def initialize(spec=nil, count=nil)
          @Spec = spec
          @Count = count
        end

        def deserialize(params)
          unless params['Spec'].nil?
            @Spec = DiskSpec.new
            @Spec.deserialize(params['Spec'])
          end
          @Count = params['Count']
        end
      end

      # 磁盘描述。
      class DiskSpec < TencentCloud::Common::AbstractModel
        # @param DiskType: 磁盘类型。
        # LOCAL_BASIC  本地盘。
        # CLOUD_BASIC 云硬盘。
        # LOCAL_SSD 本地SSD。
        # CLOUD_SSD 云SSD。
        # CLOUD_PREMIUM 高效云盘。
        # CLOUD_HSSD 增强型云SSD。
        # @type DiskType: String
        # @param DiskSize: 磁盘大小，单位GB。
        # @type DiskSize: Integer

        attr_accessor :DiskType, :DiskSize
        
        def initialize(disktype=nil, disksize=nil)
          @DiskType = disktype
          @DiskSize = disksize
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
        end
      end

      # POD浮动规格
      class DynamicPodSpec < TencentCloud::Common::AbstractModel
        # @param RequestCpu: 需求最小cpu核数
        # @type RequestCpu: Float
        # @param LimitCpu: 需求最大cpu核数
        # @type LimitCpu: Float
        # @param RequestMemory: 需求最小memory，单位MB
        # @type RequestMemory: Float
        # @param LimitMemory: 需求最大memory，单位MB
        # @type LimitMemory: Float

        attr_accessor :RequestCpu, :LimitCpu, :RequestMemory, :LimitMemory
        
        def initialize(requestcpu=nil, limitcpu=nil, requestmemory=nil, limitmemory=nil)
          @RequestCpu = requestcpu
          @LimitCpu = limitcpu
          @RequestMemory = requestmemory
          @LimitMemory = limitmemory
        end

        def deserialize(params)
          @RequestCpu = params['RequestCpu']
          @LimitCpu = params['LimitCpu']
          @RequestMemory = params['RequestMemory']
          @LimitMemory = params['LimitMemory']
        end
      end

      # 集群列表返回示例
      class EmrListInstance < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param StatusDesc: 状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param ClusterName: 集群名字
        # @type ClusterName: String
        # @param ZoneId: 集群地域
        # @type ZoneId: Integer
        # @param AppId: 用户APPID
        # @type AppId: Integer
        # @param AddTime: 创建时间
        # @type AddTime: String
        # @param RunTime: 运行时间
        # @type RunTime: String
        # @param MasterIp: 集群IP
        # @type MasterIp: String
        # @param EmrVersion: 集群版本
        # @type EmrVersion: String
        # @param ChargeType: 集群计费类型
        # @type ChargeType: Integer
        # @param Id: emr ID
        # @type Id: Integer
        # @param ProductId: 产品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: Integer
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param RegionId: 区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: Integer
        # @param VpcId: 网络ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: Integer
        # @param Zone: 地区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param Status: 状态码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Tags: 实例标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param AlarmInfo: 告警信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmInfo: String
        # @param IsWoodpeckerCluster: 是否是woodpecker集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsWoodpeckerCluster: Integer
        # @param VpcName: Vpc中文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcName: String
        # @param SubnetName: 子网中文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetName: String
        # @param UniqVpcId: 字符串VpcId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param UniqSubnetId: 字符串子网
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqSubnetId: String
        # @param ClusterClass: 集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterClass: String
        # @param IsMultiZoneCluster: 是否为跨AZ集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsMultiZoneCluster: Boolean

        attr_accessor :ClusterId, :StatusDesc, :ClusterName, :ZoneId, :AppId, :AddTime, :RunTime, :MasterIp, :EmrVersion, :ChargeType, :Id, :ProductId, :ProjectId, :RegionId, :SubnetId, :VpcId, :Zone, :Status, :Tags, :AlarmInfo, :IsWoodpeckerCluster, :VpcName, :SubnetName, :UniqVpcId, :UniqSubnetId, :ClusterClass, :IsMultiZoneCluster
        
        def initialize(clusterid=nil, statusdesc=nil, clustername=nil, zoneid=nil, appid=nil, addtime=nil, runtime=nil, masterip=nil, emrversion=nil, chargetype=nil, id=nil, productid=nil, projectid=nil, regionid=nil, subnetid=nil, vpcid=nil, zone=nil, status=nil, tags=nil, alarminfo=nil, iswoodpeckercluster=nil, vpcname=nil, subnetname=nil, uniqvpcid=nil, uniqsubnetid=nil, clusterclass=nil, ismultizonecluster=nil)
          @ClusterId = clusterid
          @StatusDesc = statusdesc
          @ClusterName = clustername
          @ZoneId = zoneid
          @AppId = appid
          @AddTime = addtime
          @RunTime = runtime
          @MasterIp = masterip
          @EmrVersion = emrversion
          @ChargeType = chargetype
          @Id = id
          @ProductId = productid
          @ProjectId = projectid
          @RegionId = regionid
          @SubnetId = subnetid
          @VpcId = vpcid
          @Zone = zone
          @Status = status
          @Tags = tags
          @AlarmInfo = alarminfo
          @IsWoodpeckerCluster = iswoodpeckercluster
          @VpcName = vpcname
          @SubnetName = subnetname
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @ClusterClass = clusterclass
          @IsMultiZoneCluster = ismultizonecluster
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @StatusDesc = params['StatusDesc']
          @ClusterName = params['ClusterName']
          @ZoneId = params['ZoneId']
          @AppId = params['AppId']
          @AddTime = params['AddTime']
          @RunTime = params['RunTime']
          @MasterIp = params['MasterIp']
          @EmrVersion = params['EmrVersion']
          @ChargeType = params['ChargeType']
          @Id = params['Id']
          @ProductId = params['ProductId']
          @ProjectId = params['ProjectId']
          @RegionId = params['RegionId']
          @SubnetId = params['SubnetId']
          @VpcId = params['VpcId']
          @Zone = params['Zone']
          @Status = params['Status']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @AlarmInfo = params['AlarmInfo']
          @IsWoodpeckerCluster = params['IsWoodpeckerCluster']
          @VpcName = params['VpcName']
          @SubnetName = params['SubnetName']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @ClusterClass = params['ClusterClass']
          @IsMultiZoneCluster = params['IsMultiZoneCluster']
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
        # @param ApplicationRole: 自定义应用角色。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationRole: String
        # @param SecurityGroups: 安全组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroups: Array
        # @param PublicKeyId: SSH密钥Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicKeyId: String

        attr_accessor :SoftInfo, :MasterNodeSize, :CoreNodeSize, :TaskNodeSize, :ComNodeSize, :MasterResource, :CoreResource, :TaskResource, :ComResource, :OnCos, :ChargeType, :RouterNodeSize, :SupportHA, :SecurityOn, :SecurityGroup, :CbsEncrypt, :ApplicationRole, :SecurityGroups, :PublicKeyId
        
        def initialize(softinfo=nil, masternodesize=nil, corenodesize=nil, tasknodesize=nil, comnodesize=nil, masterresource=nil, coreresource=nil, taskresource=nil, comresource=nil, oncos=nil, chargetype=nil, routernodesize=nil, supportha=nil, securityon=nil, securitygroup=nil, cbsencrypt=nil, applicationrole=nil, securitygroups=nil, publickeyid=nil)
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
          @ApplicationRole = applicationrole
          @SecurityGroups = securitygroups
          @PublicKeyId = publickeyid
        end

        def deserialize(params)
          @SoftInfo = params['SoftInfo']
          @MasterNodeSize = params['MasterNodeSize']
          @CoreNodeSize = params['CoreNodeSize']
          @TaskNodeSize = params['TaskNodeSize']
          @ComNodeSize = params['ComNodeSize']
          unless params['MasterResource'].nil?
            @MasterResource = OutterResource.new
            @MasterResource.deserialize(params['MasterResource'])
          end
          unless params['CoreResource'].nil?
            @CoreResource = OutterResource.new
            @CoreResource.deserialize(params['CoreResource'])
          end
          unless params['TaskResource'].nil?
            @TaskResource = OutterResource.new
            @TaskResource.deserialize(params['TaskResource'])
          end
          unless params['ComResource'].nil?
            @ComResource = OutterResource.new
            @ComResource.deserialize(params['ComResource'])
          end
          @OnCos = params['OnCos']
          @ChargeType = params['ChargeType']
          @RouterNodeSize = params['RouterNodeSize']
          @SupportHA = params['SupportHA']
          @SecurityOn = params['SecurityOn']
          @SecurityGroup = params['SecurityGroup']
          @CbsEncrypt = params['CbsEncrypt']
          @ApplicationRole = params['ApplicationRole']
          @SecurityGroups = params['SecurityGroups']
          @PublicKeyId = params['PublicKeyId']
        end
      end

      # 执行动作。
      class Execution < TencentCloud::Common::AbstractModel
        # @param JobType: 任务类型，目前支持以下类型。
        # 1. “MR”，将通过hadoop jar的方式提交。
        # 2. "HIVE"，将通过hive -f的方式提交。
        # 3. "SPARK"，将通过spark-submit的方式提交。
        # @type JobType: String
        # @param Args: 任务参数，提供除提交指令以外的参数。
        # @type Args: Array

        attr_accessor :JobType, :Args
        
        def initialize(jobtype=nil, args=nil)
          @JobType = jobtype
          @Args = args
        end

        def deserialize(params)
          @JobType = params['JobType']
          @Args = params['Args']
        end
      end

      # 共用组件信息
      class ExternalService < TencentCloud::Common::AbstractModel
        # @param ShareType: 共用组件类型，EMR/CUSTOM
        # @type ShareType: String
        # @param CustomServiceDefineList: 自定义参数集合
        # @type CustomServiceDefineList: Array
        # @param Service: 共用组件名
        # @type Service: String
        # @param InstanceId: 共用组件集群
        # @type InstanceId: String

        attr_accessor :ShareType, :CustomServiceDefineList, :Service, :InstanceId
        
        def initialize(sharetype=nil, customservicedefinelist=nil, service=nil, instanceid=nil)
          @ShareType = sharetype
          @CustomServiceDefineList = customservicedefinelist
          @Service = service
          @InstanceId = instanceid
        end

        def deserialize(params)
          @ShareType = params['ShareType']
          unless params['CustomServiceDefineList'].nil?
            @CustomServiceDefineList = []
            params['CustomServiceDefineList'].each do |i|
              customservicedefine_tmp = CustomServiceDefine.new
              customservicedefine_tmp.deserialize(i)
              @CustomServiceDefineList << customservicedefine_tmp
            end
          end
          @Service = params['Service']
          @InstanceId = params['InstanceId']
        end
      end

      # Emr集群列表实例自定义查询过滤
      class Filters < TencentCloud::Common::AbstractModel
        # @param Name: 字段名称
        # @type Name: String
        # @param Values: 过滤字段值
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

      # Pod HostPath挂载方式描述
      class HostVolumeContext < TencentCloud::Common::AbstractModel
        # @param VolumePath: Pod挂载宿主机的目录。资源对宿主机的挂载点，指定的挂载点对应了宿主机的路径，该挂载点在Pod中作为数据存储目录使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumePath: String

        attr_accessor :VolumePath
        
        def initialize(volumepath=nil)
          @VolumePath = volumepath
        end

        def deserialize(params)
          @VolumePath = params['VolumePath']
        end
      end

      # InquirePriceRenewEmr请求参数结构体
      class InquirePriceRenewEmrRequest < TencentCloud::Common::AbstractModel
        # @param TimeSpan: 实例续费的时长。需要结合TimeUnit一起使用。1表示续费1一个月
        # @type TimeSpan: Integer
        # @param InstanceId: 待续费集群ID列表。
        # @type InstanceId: String
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

        attr_accessor :TimeSpan, :InstanceId, :Placement, :PayMode, :TimeUnit, :Currency
        
        def initialize(timespan=nil, instanceid=nil, placement=nil, paymode=nil, timeunit=nil, currency=nil)
          @TimeSpan = timespan
          @InstanceId = instanceid
          @Placement = placement
          @PayMode = paymode
          @TimeUnit = timeunit
          @Currency = currency
        end

        def deserialize(params)
          @TimeSpan = params['TimeSpan']
          @InstanceId = params['InstanceId']
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @PayMode = params['PayMode']
          @TimeUnit = params['TimeUnit']
          @Currency = params['Currency']
        end
      end

      # InquirePriceRenewEmr返回参数结构体
      class InquirePriceRenewEmrResponse < TencentCloud::Common::AbstractModel
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
        # @param ResourceSpec: 询价的节点规格。
        # @type ResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.NewResourceSpec`
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
        # @param SceneName: 场景化取值：
        # Hadoop-Kudu
        # Hadoop-Zookeeper
        # Hadoop-Presto
        # Hadoop-Hbase
        # @type SceneName: String
        # @param ExternalService: 共用组件信息
        # @type ExternalService: Array
        # @param VersionID: 当前默认值为0，跨AZ特性支持后为1
        # @type VersionID: Integer
        # @param MultiZoneSettings: 可用区的规格信息
        # @type MultiZoneSettings: Array

        attr_accessor :TimeUnit, :TimeSpan, :Currency, :PayMode, :SupportHA, :Software, :ResourceSpec, :Placement, :VPCSettings, :MetaType, :UnifyMetaInstanceId, :MetaDBInfo, :ProductId, :SceneName, :ExternalService, :VersionID, :MultiZoneSettings
        
        def initialize(timeunit=nil, timespan=nil, currency=nil, paymode=nil, supportha=nil, software=nil, resourcespec=nil, placement=nil, vpcsettings=nil, metatype=nil, unifymetainstanceid=nil, metadbinfo=nil, productid=nil, scenename=nil, externalservice=nil, versionid=nil, multizonesettings=nil)
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @Currency = currency
          @PayMode = paymode
          @SupportHA = supportha
          @Software = software
          @ResourceSpec = resourcespec
          @Placement = placement
          @VPCSettings = vpcsettings
          @MetaType = metatype
          @UnifyMetaInstanceId = unifymetainstanceid
          @MetaDBInfo = metadbinfo
          @ProductId = productid
          @SceneName = scenename
          @ExternalService = externalservice
          @VersionID = versionid
          @MultiZoneSettings = multizonesettings
        end

        def deserialize(params)
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          @Currency = params['Currency']
          @PayMode = params['PayMode']
          @SupportHA = params['SupportHA']
          @Software = params['Software']
          unless params['ResourceSpec'].nil?
            @ResourceSpec = NewResourceSpec.new
            @ResourceSpec.deserialize(params['ResourceSpec'])
          end
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          unless params['VPCSettings'].nil?
            @VPCSettings = VPCSettings.new
            @VPCSettings.deserialize(params['VPCSettings'])
          end
          @MetaType = params['MetaType']
          @UnifyMetaInstanceId = params['UnifyMetaInstanceId']
          unless params['MetaDBInfo'].nil?
            @MetaDBInfo = CustomMetaInfo.new
            @MetaDBInfo.deserialize(params['MetaDBInfo'])
          end
          @ProductId = params['ProductId']
          @SceneName = params['SceneName']
          unless params['ExternalService'].nil?
            @ExternalService = []
            params['ExternalService'].each do |i|
              externalservice_tmp = ExternalService.new
              externalservice_tmp.deserialize(i)
              @ExternalService << externalservice_tmp
            end
          end
          @VersionID = params['VersionID']
          unless params['MultiZoneSettings'].nil?
            @MultiZoneSettings = []
            params['MultiZoneSettings'].each do |i|
              multizonesetting_tmp = MultiZoneSetting.new
              multizonesetting_tmp.deserialize(i)
              @MultiZoneSettings << multizonesetting_tmp
            end
          end
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
        # @param ModifyPayMode: 是否按量转包年包月。0：否，1：是。
        # @type ModifyPayMode: Integer

        attr_accessor :TimeSpan, :ResourceIds, :Placement, :PayMode, :TimeUnit, :Currency, :ModifyPayMode
        
        def initialize(timespan=nil, resourceids=nil, placement=nil, paymode=nil, timeunit=nil, currency=nil, modifypaymode=nil)
          @TimeSpan = timespan
          @ResourceIds = resourceids
          @Placement = placement
          @PayMode = paymode
          @TimeUnit = timeunit
          @Currency = currency
          @ModifyPayMode = modifypaymode
        end

        def deserialize(params)
          @TimeSpan = params['TimeSpan']
          @ResourceIds = params['ResourceIds']
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @PayMode = params['PayMode']
          @TimeUnit = params['TimeUnit']
          @Currency = params['Currency']
          @ModifyPayMode = params['ModifyPayMode']
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
        # @param MasterCount: 扩容的Master节点数量。
        # @type MasterCount: Integer

        attr_accessor :TimeUnit, :TimeSpan, :ZoneId, :PayMode, :InstanceId, :CoreCount, :TaskCount, :Currency, :RouterCount, :MasterCount
        
        def initialize(timeunit=nil, timespan=nil, zoneid=nil, paymode=nil, instanceid=nil, corecount=nil, taskcount=nil, currency=nil, routercount=nil, mastercount=nil)
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @ZoneId = zoneid
          @PayMode = paymode
          @InstanceId = instanceid
          @CoreCount = corecount
          @TaskCount = taskcount
          @Currency = currency
          @RouterCount = routercount
          @MasterCount = mastercount
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
          @MasterCount = params['MasterCount']
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
            @PriceSpec = PriceResource.new
            @PriceSpec.deserialize(params['PriceSpec'])
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
            @UpdateSpec = UpdateInstanceSettings.new
            @UpdateSpec.deserialize(params['UpdateSpec'])
          end
          @PayMode = params['PayMode']
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
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

      # 实例预付费参数，只有在付费类型为PREPAID时生效。
      class InstanceChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 包年包月时间，默认为1，单位：月。
        # 取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10,11, 12, 24, 36, 48, 60。
        # @type Period: Integer
        # @param RenewFlag: 是否自动续费，默认为否。
        # @type RenewFlag: Boolean

        attr_accessor :Period, :RenewFlag
        
        def initialize(period=nil, renewflag=nil)
          @Period = period
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @Period = params['Period']
          @RenewFlag = params['RenewFlag']
        end
      end

      # 机器资源描述。
      class JobFlowResource < TencentCloud::Common::AbstractModel
        # @param Spec: 机器类型描述。
        # @type Spec: String
        # @param InstanceType: 机器类型描述，可参考CVM的该含义。
        # @type InstanceType: String
        # @param Tags: 标签KV对。
        # @type Tags: Array
        # @param DiskGroups: 磁盘描述列表。
        # @type DiskGroups: Array

        attr_accessor :Spec, :InstanceType, :Tags, :DiskGroups
        
        def initialize(spec=nil, instancetype=nil, tags=nil, diskgroups=nil)
          @Spec = spec
          @InstanceType = instancetype
          @Tags = tags
          @DiskGroups = diskgroups
        end

        def deserialize(params)
          @Spec = params['Spec']
          @InstanceType = params['InstanceType']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['DiskGroups'].nil?
            @DiskGroups = []
            params['DiskGroups'].each do |i|
              diskgroup_tmp = DiskGroup.new
              diskgroup_tmp.deserialize(i)
              @DiskGroups << diskgroup_tmp
            end
          end
        end
      end

      # 流程作业资源描述
      class JobFlowResourceSpec < TencentCloud::Common::AbstractModel
        # @param MasterCount: 主节点数量。
        # @type MasterCount: Integer
        # @param MasterResourceSpec: 主节点配置。
        # @type MasterResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.JobFlowResource`
        # @param CoreCount: Core节点数量
        # @type CoreCount: Integer
        # @param CoreResourceSpec: Core节点配置。
        # @type CoreResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.JobFlowResource`
        # @param TaskCount: Task节点数量。
        # @type TaskCount: Integer
        # @param CommonCount: Common节点数量。
        # @type CommonCount: Integer
        # @param TaskResourceSpec: Task节点配置。
        # @type TaskResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.JobFlowResource`
        # @param CommonResourceSpec: Common节点配置。
        # @type CommonResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.JobFlowResource`

        attr_accessor :MasterCount, :MasterResourceSpec, :CoreCount, :CoreResourceSpec, :TaskCount, :CommonCount, :TaskResourceSpec, :CommonResourceSpec
        
        def initialize(mastercount=nil, masterresourcespec=nil, corecount=nil, coreresourcespec=nil, taskcount=nil, commoncount=nil, taskresourcespec=nil, commonresourcespec=nil)
          @MasterCount = mastercount
          @MasterResourceSpec = masterresourcespec
          @CoreCount = corecount
          @CoreResourceSpec = coreresourcespec
          @TaskCount = taskcount
          @CommonCount = commoncount
          @TaskResourceSpec = taskresourcespec
          @CommonResourceSpec = commonresourcespec
        end

        def deserialize(params)
          @MasterCount = params['MasterCount']
          unless params['MasterResourceSpec'].nil?
            @MasterResourceSpec = JobFlowResource.new
            @MasterResourceSpec.deserialize(params['MasterResourceSpec'])
          end
          @CoreCount = params['CoreCount']
          unless params['CoreResourceSpec'].nil?
            @CoreResourceSpec = JobFlowResource.new
            @CoreResourceSpec.deserialize(params['CoreResourceSpec'])
          end
          @TaskCount = params['TaskCount']
          @CommonCount = params['CommonCount']
          unless params['TaskResourceSpec'].nil?
            @TaskResourceSpec = JobFlowResource.new
            @TaskResourceSpec.deserialize(params['TaskResourceSpec'])
          end
          unless params['CommonResourceSpec'].nil?
            @CommonResourceSpec = JobFlowResource.new
            @CommonResourceSpec.deserialize(params['CommonResourceSpec'])
          end
        end
      end

      # 任务步骤结果描述
      class JobResult < TencentCloud::Common::AbstractModel
        # @param Name: 任务步骤名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ActionOnFailure: 任务步骤失败时的处理策略，可以为以下值：
        # "CONTINUE"，跳过当前失败步骤，继续后续步骤。
        # “TERMINATE_CLUSTER”，终止当前及后续步骤，并销毁集群。
        # “CANCEL_AND_WAIT”，取消当前步骤并阻塞等待处理。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionOnFailure: String
        # @param JobState: 当前步骤的状态，可以为以下值：
        # “JobFlowStepStatusInit”，初始化状态，等待执行。
        # “JobFlowStepStatusRunning”，任务步骤正在执行。
        # “JobFlowStepStatusFailed”，任务步骤执行失败。
        # “JobFlowStepStatusSucceed”，任务步骤执行成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobState: String

        attr_accessor :Name, :ActionOnFailure, :JobState
        
        def initialize(name=nil, actiononfailure=nil, jobstate=nil)
          @Name = name
          @ActionOnFailure = actiononfailure
          @JobState = jobstate
        end

        def deserialize(params)
          @Name = params['Name']
          @ActionOnFailure = params['ActionOnFailure']
          @JobState = params['JobState']
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

      # 元数据库信息
      class MetaDbInfo < TencentCloud::Common::AbstractModel
        # @param MetaType: 元数据类型。
        # @type MetaType: String
        # @param UnifyMetaInstanceId: 统一元数据库实例ID。
        # @type UnifyMetaInstanceId: String
        # @param MetaDBInfo: 自建元数据库信息。
        # @type MetaDBInfo: :class:`Tencentcloud::Emr.v20190103.models.CustomMetaInfo`

        attr_accessor :MetaType, :UnifyMetaInstanceId, :MetaDBInfo
        
        def initialize(metatype=nil, unifymetainstanceid=nil, metadbinfo=nil)
          @MetaType = metatype
          @UnifyMetaInstanceId = unifymetainstanceid
          @MetaDBInfo = metadbinfo
        end

        def deserialize(params)
          @MetaType = params['MetaType']
          @UnifyMetaInstanceId = params['UnifyMetaInstanceId']
          unless params['MetaDBInfo'].nil?
            @MetaDBInfo = CustomMetaInfo.new
            @MetaDBInfo.deserialize(params['MetaDBInfo'])
          end
        end
      end

      # ModifyResourcePools请求参数结构体
      class ModifyResourcePoolsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: emr集群id
        # @type InstanceId: String
        # @param Key: 标识是fair还是capacity
        # @type Key: String

        attr_accessor :InstanceId, :Key
        
        def initialize(instanceid=nil, key=nil)
          @InstanceId = instanceid
          @Key = key
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Key = params['Key']
        end
      end

      # ModifyResourcePools返回参数结构体
      class ModifyResourcePoolsResponse < TencentCloud::Common::AbstractModel
        # @param IsDraft: false表示不是草稿，提交刷新请求成功
        # @type IsDraft: Boolean
        # @param ErrorMsg: 扩展字段，暂时没用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsDraft, :ErrorMsg, :RequestId
        
        def initialize(isdraft=nil, errormsg=nil, requestid=nil)
          @IsDraft = isdraft
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @IsDraft = params['IsDraft']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyResourceScheduleConfig请求参数结构体
      class ModifyResourceScheduleConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: emr集群的英文id
        # @type InstanceId: String
        # @param Key: 业务标识，fair表示编辑公平的配置项，fairPlan表示编辑执行计划，capacity表示编辑容量的配置项
        # @type Key: String
        # @param Value: 修改后的模块消息
        # @type Value: String

        attr_accessor :InstanceId, :Key, :Value
        
        def initialize(instanceid=nil, key=nil, value=nil)
          @InstanceId = instanceid
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # ModifyResourceScheduleConfig返回参数结构体
      class ModifyResourceScheduleConfigResponse < TencentCloud::Common::AbstractModel
        # @param IsDraft: true为草稿，表示还没有刷新资源池
        # @type IsDraft: Boolean
        # @param ErrorMsg: 校验错误信息，如果不为空，则说明校验失败，配置没有成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsDraft, :ErrorMsg, :RequestId
        
        def initialize(isdraft=nil, errormsg=nil, requestid=nil)
          @IsDraft = isdraft
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @IsDraft = params['IsDraft']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyResourceScheduler请求参数结构体
      class ModifyResourceSchedulerRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: emr集群的英文id
        # @type InstanceId: String
        # @param OldValue: 老的调度器:fair
        # @type OldValue: String
        # @param NewValue: 新的调度器:capacity
        # @type NewValue: String

        attr_accessor :InstanceId, :OldValue, :NewValue
        
        def initialize(instanceid=nil, oldvalue=nil, newvalue=nil)
          @InstanceId = instanceid
          @OldValue = oldvalue
          @NewValue = newvalue
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OldValue = params['OldValue']
          @NewValue = params['NewValue']
        end
      end

      # ModifyResourceScheduler返回参数结构体
      class ModifyResourceSchedulerResponse < TencentCloud::Common::AbstractModel
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

      # 多云盘参数
      class MultiDisk < TencentCloud::Common::AbstractModel
        # @param DiskType: 云盘类型
        # <li>CLOUD_SSD：表示云SSD。</li>
        # <li>CLOUD_PREMIUM：表示高效云盘。</li>
        # <li>CLOUD_HSSD：表示增强型SSD云硬盘。</li>
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

      # 各个可用区的参数信息
      class MultiZoneSetting < TencentCloud::Common::AbstractModel
        # @param ZoneTag: "master"、"standby"、"third-party"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneTag: String
        # @param VPCSettings: 无
        # @type VPCSettings: :class:`Tencentcloud::Emr.v20190103.models.VPCSettings`
        # @param Placement: 无
        # @type Placement: :class:`Tencentcloud::Emr.v20190103.models.Placement`
        # @param ResourceSpec: 无
        # @type ResourceSpec: :class:`Tencentcloud::Emr.v20190103.models.NewResourceSpec`

        attr_accessor :ZoneTag, :VPCSettings, :Placement, :ResourceSpec
        
        def initialize(zonetag=nil, vpcsettings=nil, placement=nil, resourcespec=nil)
          @ZoneTag = zonetag
          @VPCSettings = vpcsettings
          @Placement = placement
          @ResourceSpec = resourcespec
        end

        def deserialize(params)
          @ZoneTag = params['ZoneTag']
          unless params['VPCSettings'].nil?
            @VPCSettings = VPCSettings.new
            @VPCSettings.deserialize(params['VPCSettings'])
          end
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          unless params['ResourceSpec'].nil?
            @ResourceSpec = NewResourceSpec.new
            @ResourceSpec.deserialize(params['ResourceSpec'])
          end
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
            @MasterResourceSpec = Resource.new
            @MasterResourceSpec.deserialize(params['MasterResourceSpec'])
          end
          unless params['CoreResourceSpec'].nil?
            @CoreResourceSpec = Resource.new
            @CoreResourceSpec.deserialize(params['CoreResourceSpec'])
          end
          unless params['TaskResourceSpec'].nil?
            @TaskResourceSpec = Resource.new
            @TaskResourceSpec.deserialize(params['TaskResourceSpec'])
          end
          @MasterCount = params['MasterCount']
          @CoreCount = params['CoreCount']
          @TaskCount = params['TaskCount']
          unless params['CommonResourceSpec'].nil?
            @CommonResourceSpec = Resource.new
            @CommonResourceSpec.deserialize(params['CommonResourceSpec'])
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
        # @param Flag: 节点类型。0:common节点；1:master节点
        # ；2:core节点；3:task节点
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
        # @param HardwareResourceType: 资源类型, host/pod
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HardwareResourceType: String
        # @param IsDynamicSpec: 是否浮动规格，1是，0否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDynamicSpec: Integer
        # @param DynamicPodSpec: 浮动规格值json字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DynamicPodSpec: String
        # @param SupportModifyPayMode: 是否支持变更计费类型 1是，0否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportModifyPayMode: Integer
        # @param RootStorageType: 系统盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RootStorageType: Integer
        # @param Zone: 可用区信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param SubnetInfo: 子网
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetInfo: :class:`Tencentcloud::Emr.v20190103.models.SubnetInfo`
        # @param Clients: 客户端
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Clients: String

        attr_accessor :AppId, :SerialNo, :OrderNo, :WanIp, :Flag, :Spec, :CpuNum, :MemSize, :MemDesc, :RegionId, :ZoneId, :ApplyTime, :FreeTime, :DiskSize, :NameTag, :Services, :StorageType, :RootSize, :ChargeType, :CdbIp, :CdbPort, :HwDiskSize, :HwDiskSizeDesc, :HwMemSize, :HwMemSizeDesc, :ExpireTime, :EmrResourceId, :IsAutoRenew, :DeviceClass, :Mutable, :MCMultiDisk, :CdbNodeInfo, :Ip, :Destroyable, :Tags, :AutoFlag, :HardwareResourceType, :IsDynamicSpec, :DynamicPodSpec, :SupportModifyPayMode, :RootStorageType, :Zone, :SubnetInfo, :Clients
        
        def initialize(appid=nil, serialno=nil, orderno=nil, wanip=nil, flag=nil, spec=nil, cpunum=nil, memsize=nil, memdesc=nil, regionid=nil, zoneid=nil, applytime=nil, freetime=nil, disksize=nil, nametag=nil, services=nil, storagetype=nil, rootsize=nil, chargetype=nil, cdbip=nil, cdbport=nil, hwdisksize=nil, hwdisksizedesc=nil, hwmemsize=nil, hwmemsizedesc=nil, expiretime=nil, emrresourceid=nil, isautorenew=nil, deviceclass=nil, mutable=nil, mcmultidisk=nil, cdbnodeinfo=nil, ip=nil, destroyable=nil, tags=nil, autoflag=nil, hardwareresourcetype=nil, isdynamicspec=nil, dynamicpodspec=nil, supportmodifypaymode=nil, rootstoragetype=nil, zone=nil, subnetinfo=nil, clients=nil)
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
          @HardwareResourceType = hardwareresourcetype
          @IsDynamicSpec = isdynamicspec
          @DynamicPodSpec = dynamicpodspec
          @SupportModifyPayMode = supportmodifypaymode
          @RootStorageType = rootstoragetype
          @Zone = zone
          @SubnetInfo = subnetinfo
          @Clients = clients
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
          unless params['MCMultiDisk'].nil?
            @MCMultiDisk = []
            params['MCMultiDisk'].each do |i|
              multidiskmc_tmp = MultiDiskMC.new
              multidiskmc_tmp.deserialize(i)
              @MCMultiDisk << multidiskmc_tmp
            end
          end
          unless params['CdbNodeInfo'].nil?
            @CdbNodeInfo = CdbInfo.new
            @CdbNodeInfo.deserialize(params['CdbNodeInfo'])
          end
          @Ip = params['Ip']
          @Destroyable = params['Destroyable']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @AutoFlag = params['AutoFlag']
          @HardwareResourceType = params['HardwareResourceType']
          @IsDynamicSpec = params['IsDynamicSpec']
          @DynamicPodSpec = params['DynamicPodSpec']
          @SupportModifyPayMode = params['SupportModifyPayMode']
          @RootStorageType = params['RootStorageType']
          @Zone = params['Zone']
          unless params['SubnetInfo'].nil?
            @SubnetInfo = SubnetInfo.new
            @SubnetInfo.deserialize(params['SubnetInfo'])
          end
          @Clients = params['Clients']
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

      # Pod PVC存储方式描述
      class PersistentVolumeContext < TencentCloud::Common::AbstractModel
        # @param DiskSize: 磁盘大小，单位为GB。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSize: Integer
        # @param DiskType: 磁盘类型。CLOUD_PREMIUM;CLOUD_SSD
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskType: String
        # @param DiskNum: 磁盘数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskNum: Integer

        attr_accessor :DiskSize, :DiskType, :DiskNum
        
        def initialize(disksize=nil, disktype=nil, disknum=nil)
          @DiskSize = disksize
          @DiskType = disktype
          @DiskNum = disknum
        end

        def deserialize(params)
          @DiskSize = params['DiskSize']
          @DiskType = params['DiskType']
          @DiskNum = params['DiskNum']
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

      # POD自定义权限和自定义参数
      class PodParameter < TencentCloud::Common::AbstractModel
        # @param ClusterId: TKE或EKS集群ID
        # @type ClusterId: String
        # @param Config: 自定义权限
        # 如：
        # {
        #   "apiVersion": "v1",
        #   "clusters": [
        #     {
        #       "cluster": {
        #         "certificate-authority-data": "xxxxxx==",
        #         "server": "https://xxxxx.com"
        #       },
        #       "name": "cls-xxxxx"
        #     }
        #   ],
        #   "contexts": [
        #     {
        #       "context": {
        #         "cluster": "cls-xxxxx",
        #         "user": "100014xxxxx"
        #       },
        #       "name": "cls-a44yhcxxxxxxxxxx"
        #     }
        #   ],
        #   "current-context": "cls-a4xxxx-context-default",
        #   "kind": "Config",
        #   "preferences": {},
        #   "users": [
        #     {
        #       "name": "100014xxxxx",
        #       "user": {
        #         "client-certificate-data": "xxxxxx",
        #         "client-key-data": "xxxxxx"
        #       }
        #     }
        #   ]
        # }
        # @type Config: String
        # @param Parameter: 自定义参数
        # 如：
        # {
        #     "apiVersion": "apps/v1",
        #     "kind": "Deployment",
        #     "metadata": {
        #       "name": "test-deployment",
        #       "labels": {
        #         "app": "test"
        #       }
        #     },
        #     "spec": {
        #       "replicas": 3,
        #       "selector": {
        #         "matchLabels": {
        #           "app": "test-app"
        #         }
        #       },
        #       "template": {
        #         "metadata": {
        #           "annotations": {
        #             "your-organization.com/department-v1": "test-example-v1",
        #             "your-organization.com/department-v2": "test-example-v2"
        #           },
        #           "labels": {
        #             "app": "test-app",
        #             "environment": "production"
        #           }
        #         },
        #         "spec": {
        #           "nodeSelector": {
        #             "your-organization/node-test": "test-node"
        #           },
        #           "containers": [
        #             {
        #               "name": "nginx",
        #               "image": "nginx:1.14.2",
        #               "ports": [
        #                 {
        #                   "containerPort": 80
        #                 }
        #               ]
        #             }
        #           ],
        #           "affinity": {
        #             "nodeAffinity": {
        #               "requiredDuringSchedulingIgnoredDuringExecution": {
        #                 "nodeSelectorTerms": [
        #                   {
        #                     "matchExpressions": [
        #                       {
        #                         "key": "disk-type",
        #                         "operator": "In",
        #                         "values": [
        #                           "ssd",
        #                           "sas"
        #                         ]
        #                       },
        #                       {
        #                         "key": "cpu-num",
        #                         "operator": "Gt",
        #                         "values": [
        #                           "6"
        #                         ]
        #                       }
        #                     ]
        #                   }
        #                 ]
        #               }
        #             }
        #           }
        #         }
        #       }
        #     }
        #   }
        # @type Parameter: String

        attr_accessor :ClusterId, :Config, :Parameter
        
        def initialize(clusterid=nil, config=nil, parameter=nil)
          @ClusterId = clusterid
          @Config = config
          @Parameter = parameter
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Config = params['Config']
          @Parameter = params['Parameter']
        end
      end

      # Pod资源售卖规格
      class PodSaleSpec < TencentCloud::Common::AbstractModel
        # @param NodeType: 可售卖的资源规格，仅为以下值:"TASK","CORE","MASTER","ROUTER"。
        # @type NodeType: String
        # @param Cpu: Cpu核数。
        # @type Cpu: Integer
        # @param Memory: 内存数量，单位为GB。
        # @type Memory: Integer
        # @param Number: 该规格资源可申请的最大数量。
        # @type Number: Integer

        attr_accessor :NodeType, :Cpu, :Memory, :Number
        
        def initialize(nodetype=nil, cpu=nil, memory=nil, number=nil)
          @NodeType = nodetype
          @Cpu = cpu
          @Memory = memory
          @Number = number
        end

        def deserialize(params)
          @NodeType = params['NodeType']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Number = params['Number']
        end
      end

      # 扩容容器资源时的资源描述
      class PodSpec < TencentCloud::Common::AbstractModel
        # @param ResourceProviderIdentifier: 外部资源提供者的标识符，例如"cls-a1cd23fa"。
        # @type ResourceProviderIdentifier: String
        # @param ResourceProviderType: 外部资源提供者类型，例如"tke",当前仅支持"tke"。
        # @type ResourceProviderType: String
        # @param NodeType: 资源的用途，即节点类型，当前仅支持"TASK"。
        # @type NodeType: String
        # @param Cpu: CPU核数。
        # @type Cpu: Integer
        # @param Memory: 内存大小，单位为GB。
        # @type Memory: Integer
        # @param DataVolumes: 资源对宿主机的挂载点，指定的挂载点对应了宿主机的路径，该挂载点在Pod中作为数据存储目录使用。弃用
        # @type DataVolumes: Array
        # @param CpuType: Eks集群-CPU类型，当前支持"intel"和"amd"
        # @type CpuType: String
        # @param PodVolumes: Pod节点数据目录挂载信息。
        # @type PodVolumes: Array
        # @param IsDynamicSpec: 是否浮动规格，1是，0否
        # @type IsDynamicSpec: Integer
        # @param DynamicPodSpec: 浮动规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DynamicPodSpec: :class:`Tencentcloud::Emr.v20190103.models.DynamicPodSpec`
        # @param VpcId: 代表vpc网络唯一id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 代表vpc子网唯一id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param PodName: pod name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodName: String

        attr_accessor :ResourceProviderIdentifier, :ResourceProviderType, :NodeType, :Cpu, :Memory, :DataVolumes, :CpuType, :PodVolumes, :IsDynamicSpec, :DynamicPodSpec, :VpcId, :SubnetId, :PodName
        
        def initialize(resourceprovideridentifier=nil, resourceprovidertype=nil, nodetype=nil, cpu=nil, memory=nil, datavolumes=nil, cputype=nil, podvolumes=nil, isdynamicspec=nil, dynamicpodspec=nil, vpcid=nil, subnetid=nil, podname=nil)
          @ResourceProviderIdentifier = resourceprovideridentifier
          @ResourceProviderType = resourceprovidertype
          @NodeType = nodetype
          @Cpu = cpu
          @Memory = memory
          @DataVolumes = datavolumes
          @CpuType = cputype
          @PodVolumes = podvolumes
          @IsDynamicSpec = isdynamicspec
          @DynamicPodSpec = dynamicpodspec
          @VpcId = vpcid
          @SubnetId = subnetid
          @PodName = podname
        end

        def deserialize(params)
          @ResourceProviderIdentifier = params['ResourceProviderIdentifier']
          @ResourceProviderType = params['ResourceProviderType']
          @NodeType = params['NodeType']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @DataVolumes = params['DataVolumes']
          @CpuType = params['CpuType']
          unless params['PodVolumes'].nil?
            @PodVolumes = []
            params['PodVolumes'].each do |i|
              podvolume_tmp = PodVolume.new
              podvolume_tmp.deserialize(i)
              @PodVolumes << podvolume_tmp
            end
          end
          @IsDynamicSpec = params['IsDynamicSpec']
          unless params['DynamicPodSpec'].nil?
            @DynamicPodSpec = DynamicPodSpec.new
            @DynamicPodSpec.deserialize(params['DynamicPodSpec'])
          end
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @PodName = params['PodName']
        end
      end

      # 单个pod状态
      class PodState < TencentCloud::Common::AbstractModel
        # @param Name: pod的名称
        # @type Name: String
        # @param Uuid: pod uuid
        # @type Uuid: String
        # @param State: pod的状态
        # @type State: String
        # @param Reason: pod处于该状态原因
        # @type Reason: String
        # @param OwnerCluster: pod所属集群
        # @type OwnerCluster: String
        # @param Memory: pod内存大小
        # @type Memory: Integer

        attr_accessor :Name, :Uuid, :State, :Reason, :OwnerCluster, :Memory
        
        def initialize(name=nil, uuid=nil, state=nil, reason=nil, ownercluster=nil, memory=nil)
          @Name = name
          @Uuid = uuid
          @State = state
          @Reason = reason
          @OwnerCluster = ownercluster
          @Memory = memory
        end

        def deserialize(params)
          @Name = params['Name']
          @Uuid = params['Uuid']
          @State = params['State']
          @Reason = params['Reason']
          @OwnerCluster = params['OwnerCluster']
          @Memory = params['Memory']
        end
      end

      # Pod的存储设备描述信息。
      class PodVolume < TencentCloud::Common::AbstractModel
        # @param VolumeType: 存储类型，可为"pvc"，"hostpath"。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeType: String
        # @param PVCVolume: 当VolumeType为"pvc"时，该字段生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PVCVolume: :class:`Tencentcloud::Emr.v20190103.models.PersistentVolumeContext`
        # @param HostVolume: 当VolumeType为"hostpath"时，该字段生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostVolume: :class:`Tencentcloud::Emr.v20190103.models.HostVolumeContext`

        attr_accessor :VolumeType, :PVCVolume, :HostVolume
        
        def initialize(volumetype=nil, pvcvolume=nil, hostvolume=nil)
          @VolumeType = volumetype
          @PVCVolume = pvcvolume
          @HostVolume = hostvolume
        end

        def deserialize(params)
          @VolumeType = params['VolumeType']
          unless params['PVCVolume'].nil?
            @PVCVolume = PersistentVolumeContext.new
            @PVCVolume.deserialize(params['PVCVolume'])
          end
          unless params['HostVolume'].nil?
            @HostVolume = HostVolumeContext.new
            @HostVolume.deserialize(params['HostVolume'])
          end
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
          unless params['MultiDisks'].nil?
            @MultiDisks = []
            params['MultiDisks'].each do |i|
              multidisk_tmp = MultiDisk.new
              multidisk_tmp.deserialize(i)
              @MultiDisks << multidisk_tmp
            end
          end
          @DiskCnt = params['DiskCnt']
          @InstanceType = params['InstanceType']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @DiskNum = params['DiskNum']
          @LocalDiskNum = params['LocalDiskNum']
        end
      end

      # 获取CVM配额
      class QuotaEntity < TencentCloud::Common::AbstractModel
        # @param UsedQuota: 已使用配额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedQuota: Integer
        # @param RemainingQuota: 剩余配额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemainingQuota: Integer
        # @param TotalQuota: 总配额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalQuota: Integer
        # @param Zone: 可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String

        attr_accessor :UsedQuota, :RemainingQuota, :TotalQuota, :Zone
        
        def initialize(usedquota=nil, remainingquota=nil, totalquota=nil, zone=nil)
          @UsedQuota = usedquota
          @RemainingQuota = remainingquota
          @TotalQuota = totalquota
          @Zone = zone
        end

        def deserialize(params)
          @UsedQuota = params['UsedQuota']
          @RemainingQuota = params['RemainingQuota']
          @TotalQuota = params['TotalQuota']
          @Zone = params['Zone']
        end
      end

      # 集群续费实例信息
      class RenewInstancesInfo < TencentCloud::Common::AbstractModel
        # @param EmrResourceId: 节点资源ID
        # @type EmrResourceId: String
        # @param Flag: 节点类型。0:common节点；1:master节点
        # ；2:core节点；3:task节点
        # @type Flag: Integer
        # @param Ip: 内网IP
        # @type Ip: String
        # @param MemDesc: 节点内存描述
        # @type MemDesc: String
        # @param CpuNum: 节点核数
        # @type CpuNum: Integer
        # @param DiskSize: 硬盘大小
        # @type DiskSize: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: String
        # @param Spec: 节点规格
        # @type Spec: String
        # @param StorageType: 磁盘类型
        # @type StorageType: Integer

        attr_accessor :EmrResourceId, :Flag, :Ip, :MemDesc, :CpuNum, :DiskSize, :ExpireTime, :Spec, :StorageType
        
        def initialize(emrresourceid=nil, flag=nil, ip=nil, memdesc=nil, cpunum=nil, disksize=nil, expiretime=nil, spec=nil, storagetype=nil)
          @EmrResourceId = emrresourceid
          @Flag = flag
          @Ip = ip
          @MemDesc = memdesc
          @CpuNum = cpunum
          @DiskSize = disksize
          @ExpireTime = expiretime
          @Spec = spec
          @StorageType = storagetype
        end

        def deserialize(params)
          @EmrResourceId = params['EmrResourceId']
          @Flag = params['Flag']
          @Ip = params['Ip']
          @MemDesc = params['MemDesc']
          @CpuNum = params['CpuNum']
          @DiskSize = params['DiskSize']
          @ExpireTime = params['ExpireTime']
          @Spec = params['Spec']
          @StorageType = params['StorageType']
        end
      end

      # 资源详情
      class Resource < TencentCloud::Common::AbstractModel
        # @param Spec: 节点规格描述，如CVM.SA2。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Spec: String
        # @param StorageType: 存储类型
        # 取值范围：
        # <li>4：表示云SSD。</li>
        # <li>5：表示高效云盘。</li>
        # <li>6：表示增强型SSD云硬盘。</li>
        # <li>11：表示吞吐型云硬盘。</li>
        # <li>12：表示极速型SSD云硬盘。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageType: Integer
        # @param DiskType: 磁盘类型
        # 取值范围：
        # <li>CLOUD_SSD：表示云SSD。</li>
        # <li>CLOUD_PREMIUM：表示高效云盘。</li>
        # <li>CLOUD_BASIC：表示云硬盘。</li>
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
        # @param InstanceType: 规格类型，如S2.MEDIUM8
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param LocalDiskNum: 本地盘数量，该字段已废弃
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalDiskNum: Integer
        # @param DiskNum: 本地盘数量，如2
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
          unless params['MultiDisks'].nil?
            @MultiDisks = []
            params['MultiDisks'].each do |i|
              multidisk_tmp = MultiDisk.new
              multidisk_tmp.deserialize(i)
              @MultiDisks << multidisk_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @InstanceType = params['InstanceType']
          @LocalDiskNum = params['LocalDiskNum']
          @DiskNum = params['DiskNum']
        end
      end

      # RunJobFlow请求参数结构体
      class RunJobFlowRequest < TencentCloud::Common::AbstractModel
        # @param Name: 作业名称。
        # @type Name: String
        # @param CreateCluster: 是否新创建集群。
        # true，新创建集群，则使用Instance中的参数进行集群创建。
        # false，使用已有集群，则通过InstanceId传入。
        # @type CreateCluster: Boolean
        # @param Steps: 作业流程执行步骤。
        # @type Steps: Array
        # @param InstancePolicy: 作业流程正常完成时，集群的处理方式，可选择:
        # Terminate 销毁集群。
        # Reserve 保留集群。
        # @type InstancePolicy: String
        # @param ProductVersion: 只有CreateCluster为true时生效，目前只支持EMR版本，例如EMR-2.2.0，不支持ClickHouse和Druid版本。
        # @type ProductVersion: String
        # @param SecurityClusterFlag: 只在CreateCluster为true时生效。
        # true 表示安装kerberos，false表示不安装kerberos。
        # @type SecurityClusterFlag: Boolean
        # @param Software: 只在CreateCluster为true时生效。
        # 新建集群时，要安装的软件列表。
        # @type Software: Array
        # @param BootstrapActions: 引导脚本。
        # @type BootstrapActions: Array
        # @param Configurations: 指定配置创建集群。
        # @type Configurations: Array
        # @param LogUri: 作业日志保存地址。
        # @type LogUri: String
        # @param InstanceId: 只在CreateCluster为false时生效。
        # @type InstanceId: String
        # @param ApplicationRole: 自定义应用角色，大数据应用访问外部服务时使用的角色，默认为"EME_QCSRole"。
        # @type ApplicationRole: String
        # @param ClientToken: 重入标签，用来可重入检查，防止在一段时间内，创建相同的流程作业。
        # @type ClientToken: String
        # @param Instance: 只在CreateCluster为true时生效，使用该配置创建集群。
        # @type Instance: :class:`Tencentcloud::Emr.v20190103.models.ClusterSetting`

        attr_accessor :Name, :CreateCluster, :Steps, :InstancePolicy, :ProductVersion, :SecurityClusterFlag, :Software, :BootstrapActions, :Configurations, :LogUri, :InstanceId, :ApplicationRole, :ClientToken, :Instance
        
        def initialize(name=nil, createcluster=nil, steps=nil, instancepolicy=nil, productversion=nil, securityclusterflag=nil, software=nil, bootstrapactions=nil, configurations=nil, loguri=nil, instanceid=nil, applicationrole=nil, clienttoken=nil, instance=nil)
          @Name = name
          @CreateCluster = createcluster
          @Steps = steps
          @InstancePolicy = instancepolicy
          @ProductVersion = productversion
          @SecurityClusterFlag = securityclusterflag
          @Software = software
          @BootstrapActions = bootstrapactions
          @Configurations = configurations
          @LogUri = loguri
          @InstanceId = instanceid
          @ApplicationRole = applicationrole
          @ClientToken = clienttoken
          @Instance = instance
        end

        def deserialize(params)
          @Name = params['Name']
          @CreateCluster = params['CreateCluster']
          unless params['Steps'].nil?
            @Steps = []
            params['Steps'].each do |i|
              step_tmp = Step.new
              step_tmp.deserialize(i)
              @Steps << step_tmp
            end
          end
          @InstancePolicy = params['InstancePolicy']
          @ProductVersion = params['ProductVersion']
          @SecurityClusterFlag = params['SecurityClusterFlag']
          @Software = params['Software']
          unless params['BootstrapActions'].nil?
            @BootstrapActions = []
            params['BootstrapActions'].each do |i|
              bootstrapaction_tmp = BootstrapAction.new
              bootstrapaction_tmp.deserialize(i)
              @BootstrapActions << bootstrapaction_tmp
            end
          end
          unless params['Configurations'].nil?
            @Configurations = []
            params['Configurations'].each do |i|
              configuration_tmp = Configuration.new
              configuration_tmp.deserialize(i)
              @Configurations << configuration_tmp
            end
          end
          @LogUri = params['LogUri']
          @InstanceId = params['InstanceId']
          @ApplicationRole = params['ApplicationRole']
          @ClientToken = params['ClientToken']
          unless params['Instance'].nil?
            @Instance = ClusterSetting.new
            @Instance.deserialize(params['Instance'])
          end
        end
      end

      # RunJobFlow返回参数结构体
      class RunJobFlowResponse < TencentCloud::Common::AbstractModel
        # @param JobFlowId: 作业流程ID。
        # @type JobFlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobFlowId, :RequestId
        
        def initialize(jobflowid=nil, requestid=nil)
          @JobFlowId = jobflowid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobFlowId = params['JobFlowId']
          @RequestId = params['RequestId']
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
        # @param HardwareResourceType: 扩容所选资源类型，可选范围为"host","pod"，host为普通的CVM资源，Pod为TKE集群或EKS集群提供的资源
        # @type HardwareResourceType: String
        # @param PodSpec: 使用Pod资源扩容时，指定的Pod规格以及来源等信息
        # @type PodSpec: :class:`Tencentcloud::Emr.v20190103.models.PodSpec`
        # @param ClickHouseClusterName: 使用clickhouse集群扩容时，选择的机器分组名称
        # @type ClickHouseClusterName: String
        # @param ClickHouseClusterType: 使用clickhouse集群扩容时，选择的机器分组类型。new为新增，old为选择旧分组
        # @type ClickHouseClusterType: String
        # @param YarnNodeLabel: 规则扩容指定 yarn node label
        # @type YarnNodeLabel: String
        # @param PodParameter: POD自定义权限和自定义参数
        # @type PodParameter: :class:`Tencentcloud::Emr.v20190103.models.PodParameter`
        # @param MasterCount: 扩容的Master节点的数量。
        # 使用clickhouse集群扩容时，该参数不生效。
        # 使用kafka集群扩容时，该参数不生效。
        # 当HardwareResourceType=POD时，该参数不生效。
        # @type MasterCount: Integer
        # @param StartServiceAfterScaleOut: 扩容后是否启动服务，true：启动，false：不启动
        # @type StartServiceAfterScaleOut: String
        # @param ZoneId: 可用区，默认是集群的主可用区
        # @type ZoneId: Integer
        # @param SubnetId: 子网，默认是集群创建时的子网
        # @type SubnetId: String
        # @param ScaleOutServiceConfAssign: 预设配置组
        # @type ScaleOutServiceConfAssign: String

        attr_accessor :TimeUnit, :TimeSpan, :InstanceId, :PayMode, :ClientToken, :PreExecutedFileSettings, :TaskCount, :CoreCount, :UnNecessaryNodeList, :RouterCount, :SoftDeployInfo, :ServiceNodeInfo, :DisasterRecoverGroupIds, :Tags, :HardwareResourceType, :PodSpec, :ClickHouseClusterName, :ClickHouseClusterType, :YarnNodeLabel, :PodParameter, :MasterCount, :StartServiceAfterScaleOut, :ZoneId, :SubnetId, :ScaleOutServiceConfAssign
        
        def initialize(timeunit=nil, timespan=nil, instanceid=nil, paymode=nil, clienttoken=nil, preexecutedfilesettings=nil, taskcount=nil, corecount=nil, unnecessarynodelist=nil, routercount=nil, softdeployinfo=nil, servicenodeinfo=nil, disasterrecovergroupids=nil, tags=nil, hardwareresourcetype=nil, podspec=nil, clickhouseclustername=nil, clickhouseclustertype=nil, yarnnodelabel=nil, podparameter=nil, mastercount=nil, startserviceafterscaleout=nil, zoneid=nil, subnetid=nil, scaleoutserviceconfassign=nil)
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
          @HardwareResourceType = hardwareresourcetype
          @PodSpec = podspec
          @ClickHouseClusterName = clickhouseclustername
          @ClickHouseClusterType = clickhouseclustertype
          @YarnNodeLabel = yarnnodelabel
          @PodParameter = podparameter
          @MasterCount = mastercount
          @StartServiceAfterScaleOut = startserviceafterscaleout
          @ZoneId = zoneid
          @SubnetId = subnetid
          @ScaleOutServiceConfAssign = scaleoutserviceconfassign
        end

        def deserialize(params)
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          @InstanceId = params['InstanceId']
          @PayMode = params['PayMode']
          @ClientToken = params['ClientToken']
          unless params['PreExecutedFileSettings'].nil?
            @PreExecutedFileSettings = []
            params['PreExecutedFileSettings'].each do |i|
              preexecutefilesettings_tmp = PreExecuteFileSettings.new
              preexecutefilesettings_tmp.deserialize(i)
              @PreExecutedFileSettings << preexecutefilesettings_tmp
            end
          end
          @TaskCount = params['TaskCount']
          @CoreCount = params['CoreCount']
          @UnNecessaryNodeList = params['UnNecessaryNodeList']
          @RouterCount = params['RouterCount']
          @SoftDeployInfo = params['SoftDeployInfo']
          @ServiceNodeInfo = params['ServiceNodeInfo']
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @HardwareResourceType = params['HardwareResourceType']
          unless params['PodSpec'].nil?
            @PodSpec = PodSpec.new
            @PodSpec.deserialize(params['PodSpec'])
          end
          @ClickHouseClusterName = params['ClickHouseClusterName']
          @ClickHouseClusterType = params['ClickHouseClusterType']
          @YarnNodeLabel = params['YarnNodeLabel']
          unless params['PodParameter'].nil?
            @PodParameter = PodParameter.new
            @PodParameter.deserialize(params['PodParameter'])
          end
          @MasterCount = params['MasterCount']
          @StartServiceAfterScaleOut = params['StartServiceAfterScaleOut']
          @ZoneId = params['ZoneId']
          @SubnetId = params['SubnetId']
          @ScaleOutServiceConfAssign = params['ScaleOutServiceConfAssign']
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

      # 搜索字段
      class SearchItem < TencentCloud::Common::AbstractModel
        # @param SearchType: 支持搜索的类型
        # @type SearchType: String
        # @param SearchValue: 支持搜索的值
        # @type SearchValue: String

        attr_accessor :SearchType, :SearchValue
        
        def initialize(searchtype=nil, searchvalue=nil)
          @SearchType = searchtype
          @SearchValue = searchvalue
        end

        def deserialize(params)
          @SearchType = params['SearchType']
          @SearchValue = params['SearchValue']
        end
      end

      # 节点信息
      class ShortNodeInfo < TencentCloud::Common::AbstractModel
        # @param NodeType: 节点类型，Master/Core/Task/Router/Common
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeType: String
        # @param NodeSize: 节点数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeSize: Integer

        attr_accessor :NodeType, :NodeSize
        
        def initialize(nodetype=nil, nodesize=nil)
          @NodeType = nodetype
          @NodeSize = nodesize
        end

        def deserialize(params)
          @NodeType = params['NodeType']
          @NodeSize = params['NodeSize']
        end
      end

      # 执行步骤
      class Step < TencentCloud::Common::AbstractModel
        # @param Name: 执行步骤名称。
        # @type Name: String
        # @param ExecutionStep: 执行动作。
        # @type ExecutionStep: :class:`Tencentcloud::Emr.v20190103.models.Execution`
        # @param ActionOnFailure: 执行失败策略。
        # 1. TERMINATE_CLUSTER 执行失败时退出并销毁集群。
        # 2. CANCEL_AND_WAIT 执行失败时阻塞等待。
        # 3. CONTINUE 执行失败时跳过并执行后续步骤。
        # @type ActionOnFailure: String
        # @param User: 指定执行Step时的用户名，非必须，默认为hadoop。
        # @type User: String

        attr_accessor :Name, :ExecutionStep, :ActionOnFailure, :User
        
        def initialize(name=nil, executionstep=nil, actiononfailure=nil, user=nil)
          @Name = name
          @ExecutionStep = executionstep
          @ActionOnFailure = actiononfailure
          @User = user
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['ExecutionStep'].nil?
            @ExecutionStep = Execution.new
            @ExecutionStep.deserialize(params['ExecutionStep'])
          end
          @ActionOnFailure = params['ActionOnFailure']
          @User = params['User']
        end
      end

      # 子网信息
      class SubnetInfo < TencentCloud::Common::AbstractModel
        # @param SubnetName: 子网信息（名字）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetName: String
        # @param SubnetId: 子网信息（ID）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String

        attr_accessor :SubnetName, :SubnetId
        
        def initialize(subnetname=nil, subnetid=nil)
          @SubnetName = subnetname
          @SubnetId = subnetid
        end

        def deserialize(params)
          @SubnetName = params['SubnetName']
          @SubnetId = params['SubnetId']
        end
      end

      # SyncPodState请求参数结构体
      class SyncPodStateRequest < TencentCloud::Common::AbstractModel
        # @param Message: EmrService中pod状态信息
        # @type Message: :class:`Tencentcloud::Emr.v20190103.models.PodState`

        attr_accessor :Message
        
        def initialize(message=nil)
          @Message = message
        end

        def deserialize(params)
          unless params['Message'].nil?
            @Message = PodState.new
            @Message.deserialize(params['Message'])
          end
        end
      end

      # SyncPodState返回参数结构体
      class SyncPodStateResponse < TencentCloud::Common::AbstractModel
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

      # 集群节点拓扑信息
      class TopologyInfo < TencentCloud::Common::AbstractModel
        # @param ZoneId: 可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param Zone: 可用区信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param SubnetInfoList: 子网信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetInfoList: Array
        # @param NodeInfoList: 节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeInfoList: Array

        attr_accessor :ZoneId, :Zone, :SubnetInfoList, :NodeInfoList
        
        def initialize(zoneid=nil, zone=nil, subnetinfolist=nil, nodeinfolist=nil)
          @ZoneId = zoneid
          @Zone = zone
          @SubnetInfoList = subnetinfolist
          @NodeInfoList = nodeinfolist
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Zone = params['Zone']
          unless params['SubnetInfoList'].nil?
            @SubnetInfoList = []
            params['SubnetInfoList'].each do |i|
              subnetinfo_tmp = SubnetInfo.new
              subnetinfo_tmp.deserialize(i)
              @SubnetInfoList << subnetinfo_tmp
            end
          end
          unless params['NodeInfoList'].nil?
            @NodeInfoList = []
            params['NodeInfoList'].each do |i|
              shortnodeinfo_tmp = ShortNodeInfo.new
              shortnodeinfo_tmp.deserialize(i)
              @NodeInfoList << shortnodeinfo_tmp
            end
          end
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

      # 添加的用户信息列表
      class UserInfoForUserManager < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param UserGroup: 用户所属的组
        # @type UserGroup: String
        # @param PassWord: 密码
        # @type PassWord: String
        # @param ReMark: 备注
        # @type ReMark: String

        attr_accessor :UserName, :UserGroup, :PassWord, :ReMark
        
        def initialize(username=nil, usergroup=nil, password=nil, remark=nil)
          @UserName = username
          @UserGroup = usergroup
          @PassWord = password
          @ReMark = remark
        end

        def deserialize(params)
          @UserName = params['UserName']
          @UserGroup = params['UserGroup']
          @PassWord = params['PassWord']
          @ReMark = params['ReMark']
        end
      end

      # 用户管理列表过滤器
      class UserManagerFilter < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String

        attr_accessor :UserName
        
        def initialize(username=nil)
          @UserName = username
        end

        def deserialize(params)
          @UserName = params['UserName']
        end
      end

      # 用户管理中用户的简要信息
      class UserManagerUserBriefInfo < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param UserGroup: 用户所属的组
        # @type UserGroup: String
        # @param UserType: Manager表示管理员、NormalUser表示普通用户
        # @type UserType: String
        # @param CreateTime: 用户创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param SupportDownLoadKeyTab: 是否可以下载用户对应的keytab文件，对开启kerberos的集群才有意义
        # @type SupportDownLoadKeyTab: Boolean
        # @param DownLoadKeyTabUrl: keytab文件的下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownLoadKeyTabUrl: String

        attr_accessor :UserName, :UserGroup, :UserType, :CreateTime, :SupportDownLoadKeyTab, :DownLoadKeyTabUrl
        
        def initialize(username=nil, usergroup=nil, usertype=nil, createtime=nil, supportdownloadkeytab=nil, downloadkeytaburl=nil)
          @UserName = username
          @UserGroup = usergroup
          @UserType = usertype
          @CreateTime = createtime
          @SupportDownLoadKeyTab = supportdownloadkeytab
          @DownLoadKeyTabUrl = downloadkeytaburl
        end

        def deserialize(params)
          @UserName = params['UserName']
          @UserGroup = params['UserGroup']
          @UserType = params['UserType']
          @CreateTime = params['CreateTime']
          @SupportDownLoadKeyTab = params['SupportDownLoadKeyTab']
          @DownLoadKeyTabUrl = params['DownLoadKeyTabUrl']
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

