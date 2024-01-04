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
  module Oceanus
    module V20190422
      # 云联网描述信息
      class CCN < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络 ID
        # @type VpcId: String
        # @param SubnetId: 子网 ID
        # @type SubnetId: String
        # @param CcnId: 云联网 ID，如 ccn-rahigzjd
        # @type CcnId: String

        attr_accessor :VpcId, :SubnetId, :CcnId

        def initialize(vpcid=nil, subnetid=nil, ccnid=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @CcnId = ccnid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @CcnId = params['CcnId']
        end
      end

      # CheckSavepoint请求参数结构体
      class CheckSavepointRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业 id
        # @type JobId: String
        # @param SerialId: 快照资源 id
        # @type SerialId: String
        # @param RecordType: 快照类型 1: savepoint；2: checkpoint；3: cancelWithSavepoint
        # @type RecordType: Integer
        # @param SavepointPath: 快照路径，目前只支持 cos 路径
        # @type SavepointPath: String
        # @param WorkSpaceId: 工作空间 id
        # @type WorkSpaceId: String

        attr_accessor :JobId, :SerialId, :RecordType, :SavepointPath, :WorkSpaceId

        def initialize(jobid=nil, serialid=nil, recordtype=nil, savepointpath=nil, workspaceid=nil)
          @JobId = jobid
          @SerialId = serialid
          @RecordType = recordtype
          @SavepointPath = savepointpath
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @SerialId = params['SerialId']
          @RecordType = params['RecordType']
          @SavepointPath = params['SavepointPath']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # CheckSavepoint返回参数结构体
      class CheckSavepointResponse < TencentCloud::Common::AbstractModel
        # @param SerialId: 资源 id
        # @type SerialId: String
        # @param SavepointStatus: 1=可用，2=不可用
        # @type SavepointStatus: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SerialId, :SavepointStatus, :RequestId

        def initialize(serialid=nil, savepointstatus=nil, requestid=nil)
          @SerialId = serialid
          @SavepointStatus = savepointstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @SerialId = params['SerialId']
          @SavepointStatus = params['SavepointStatus']
          @RequestId = params['RequestId']
        end
      end

      # {
      # "Clazz": "c1", // java类全路径
      # "Level": "WARN" // 日志级别  TRACE，DEBUG、INFO、WARN、ERROR
      # }
      class ClazzLevel < TencentCloud::Common::AbstractModel
        # @param Clazz: java类全路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Clazz: String
        # @param Level: 日志级别  TRACE，DEBUG、INFO、WARN、ERROR
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: String

        attr_accessor :Clazz, :Level

        def initialize(clazz=nil, level=nil)
          @Clazz = clazz
          @Level = level
        end

        def deserialize(params)
          @Clazz = params['Clazz']
          @Level = params['Level']
        end
      end

      # 描述用户创建的集群信息
      class Cluster < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param Name: 集群名称
        # @type Name: String
        # @param Region: 地域
        # @type Region: String
        # @param AppId: 用户 AppID
        # @type AppId: Integer
        # @param OwnerUin: 主账号 UIN
        # @type OwnerUin: String
        # @param CreatorUin: 创建者 UIN
        # @type CreatorUin: String
        # @param Status: 集群状态, 1 未初始化,，3 初始化中，2 运行中
        # @type Status: Integer
        # @param Remark: 描述
        # @type Remark: String
        # @param CreateTime: 集群创建时间
        # @type CreateTime: String
        # @param UpdateTime: 最后一次操作集群的时间
        # @type UpdateTime: String
        # @param CuNum: CU 数量
        # @type CuNum: Integer
        # @param CuMem: CU 内存规格
        # @type CuMem: Integer
        # @param Zone: 可用区
        # @type Zone: String
        # @param StatusDesc: 状态描述
        # @type StatusDesc: String
        # @param CCNs: 网络
        # @type CCNs: Array
        # @param NetEnvironmentType: 网络
        # @type NetEnvironmentType: Integer
        # @param FreeCuNum: 空闲 CU
        # @type FreeCuNum: Integer
        # @param Tags: 集群绑定的标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param IsolatedTime: 集群隔离时间; 没隔离时间，则为 -
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolatedTime: String
        # @param ExpireTime: 集群过期时间; 没过期概念，则为 -
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param SecondsUntilExpiry: 距离过期还有多少秒; 没过期概念，则为 -
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecondsUntilExpiry: String
        # @param AutoRenewFlag: 自动续费标记，0 表示默认状态 (用户未设置，即初始状态，用户开通了预付费不停服特权会进行自动续费)， 1 表示自动续费，2表示明确不自动续费(用户设置)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewFlag: Integer
        # @param DefaultCOSBucket: 集群的默认 COS 存储桶
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultCOSBucket: String
        # @param CLSLogSet: 集群的CLS 日志集 LogSet
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CLSLogSet: String
        # @param CLSTopicId: 集群的CLS 日志主题 TopicId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CLSTopicId: String
        # @param CLSLogName: 集群的CLS 日志集  名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CLSLogName: String
        # @param CLSTopicName: 集群的CLS 日志主题  名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CLSTopicName: String
        # @param Version: 集群的版本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: :class:`Tencentcloud::Oceanus.v20190422.models.ClusterVersion`
        # @param FreeCu: 细粒度资源下的空闲CU
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FreeCu: Float
        # @param DefaultLogCollectConf: 集群的默认日志采集配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultLogCollectConf: String
        # @param CustomizedDNSEnabled: 取值：0-没有设置，1-已设置，2-不允许设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomizedDNSEnabled: Integer
        # @param Correlations: 空间信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Correlations: Array
        # @param RunningCu: 运行CU
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunningCu: Float
        # @param PayMode: 0 后付费,1 预付费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: Integer
        # @param IsNeedManageNode: 前端区分 集群是否需要2CU逻辑 因为历史集群 变配不需要, default 1  新集群都需要
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNeedManageNode: Integer
        # @param ClusterSessions: session集群信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterSessions: Array
        # @param ArchGeneration: V3版本 = 2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ArchGeneration: Integer
        # @param ClusterType: 0:TKE, 1:EKS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterType: Integer
        # @param Orders: 订单信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Orders: Array
        # @param SqlGateways: Gateway信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SqlGateways: Array
        # @param WebUIType: 0 公网访问 // 1 内网访问
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebUIType: Integer

        attr_accessor :ClusterId, :Name, :Region, :AppId, :OwnerUin, :CreatorUin, :Status, :Remark, :CreateTime, :UpdateTime, :CuNum, :CuMem, :Zone, :StatusDesc, :CCNs, :NetEnvironmentType, :FreeCuNum, :Tags, :IsolatedTime, :ExpireTime, :SecondsUntilExpiry, :AutoRenewFlag, :DefaultCOSBucket, :CLSLogSet, :CLSTopicId, :CLSLogName, :CLSTopicName, :Version, :FreeCu, :DefaultLogCollectConf, :CustomizedDNSEnabled, :Correlations, :RunningCu, :PayMode, :IsNeedManageNode, :ClusterSessions, :ArchGeneration, :ClusterType, :Orders, :SqlGateways, :WebUIType

        def initialize(clusterid=nil, name=nil, region=nil, appid=nil, owneruin=nil, creatoruin=nil, status=nil, remark=nil, createtime=nil, updatetime=nil, cunum=nil, cumem=nil, zone=nil, statusdesc=nil, ccns=nil, netenvironmenttype=nil, freecunum=nil, tags=nil, isolatedtime=nil, expiretime=nil, secondsuntilexpiry=nil, autorenewflag=nil, defaultcosbucket=nil, clslogset=nil, clstopicid=nil, clslogname=nil, clstopicname=nil, version=nil, freecu=nil, defaultlogcollectconf=nil, customizeddnsenabled=nil, correlations=nil, runningcu=nil, paymode=nil, isneedmanagenode=nil, clustersessions=nil, archgeneration=nil, clustertype=nil, orders=nil, sqlgateways=nil, webuitype=nil)
          @ClusterId = clusterid
          @Name = name
          @Region = region
          @AppId = appid
          @OwnerUin = owneruin
          @CreatorUin = creatoruin
          @Status = status
          @Remark = remark
          @CreateTime = createtime
          @UpdateTime = updatetime
          @CuNum = cunum
          @CuMem = cumem
          @Zone = zone
          @StatusDesc = statusdesc
          @CCNs = ccns
          @NetEnvironmentType = netenvironmenttype
          @FreeCuNum = freecunum
          @Tags = tags
          @IsolatedTime = isolatedtime
          @ExpireTime = expiretime
          @SecondsUntilExpiry = secondsuntilexpiry
          @AutoRenewFlag = autorenewflag
          @DefaultCOSBucket = defaultcosbucket
          @CLSLogSet = clslogset
          @CLSTopicId = clstopicid
          @CLSLogName = clslogname
          @CLSTopicName = clstopicname
          @Version = version
          @FreeCu = freecu
          @DefaultLogCollectConf = defaultlogcollectconf
          @CustomizedDNSEnabled = customizeddnsenabled
          @Correlations = correlations
          @RunningCu = runningcu
          @PayMode = paymode
          @IsNeedManageNode = isneedmanagenode
          @ClusterSessions = clustersessions
          @ArchGeneration = archgeneration
          @ClusterType = clustertype
          @Orders = orders
          @SqlGateways = sqlgateways
          @WebUIType = webuitype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Name = params['Name']
          @Region = params['Region']
          @AppId = params['AppId']
          @OwnerUin = params['OwnerUin']
          @CreatorUin = params['CreatorUin']
          @Status = params['Status']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @CuNum = params['CuNum']
          @CuMem = params['CuMem']
          @Zone = params['Zone']
          @StatusDesc = params['StatusDesc']
          unless params['CCNs'].nil?
            @CCNs = []
            params['CCNs'].each do |i|
              ccn_tmp = CCN.new
              ccn_tmp.deserialize(i)
              @CCNs << ccn_tmp
            end
          end
          @NetEnvironmentType = params['NetEnvironmentType']
          @FreeCuNum = params['FreeCuNum']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @IsolatedTime = params['IsolatedTime']
          @ExpireTime = params['ExpireTime']
          @SecondsUntilExpiry = params['SecondsUntilExpiry']
          @AutoRenewFlag = params['AutoRenewFlag']
          @DefaultCOSBucket = params['DefaultCOSBucket']
          @CLSLogSet = params['CLSLogSet']
          @CLSTopicId = params['CLSTopicId']
          @CLSLogName = params['CLSLogName']
          @CLSTopicName = params['CLSTopicName']
          unless params['Version'].nil?
            @Version = ClusterVersion.new
            @Version.deserialize(params['Version'])
          end
          @FreeCu = params['FreeCu']
          @DefaultLogCollectConf = params['DefaultLogCollectConf']
          @CustomizedDNSEnabled = params['CustomizedDNSEnabled']
          unless params['Correlations'].nil?
            @Correlations = []
            params['Correlations'].each do |i|
              workspaceclusteritem_tmp = WorkSpaceClusterItem.new
              workspaceclusteritem_tmp.deserialize(i)
              @Correlations << workspaceclusteritem_tmp
            end
          end
          @RunningCu = params['RunningCu']
          @PayMode = params['PayMode']
          @IsNeedManageNode = params['IsNeedManageNode']
          unless params['ClusterSessions'].nil?
            @ClusterSessions = []
            params['ClusterSessions'].each do |i|
              clustersession_tmp = ClusterSession.new
              clustersession_tmp.deserialize(i)
              @ClusterSessions << clustersession_tmp
            end
          end
          @ArchGeneration = params['ArchGeneration']
          @ClusterType = params['ClusterType']
          unless params['Orders'].nil?
            @Orders = []
            params['Orders'].each do |i|
              order_tmp = Order.new
              order_tmp.deserialize(i)
              @Orders << order_tmp
            end
          end
          unless params['SqlGateways'].nil?
            @SqlGateways = []
            params['SqlGateways'].each do |i|
              sqlgatewayitem_tmp = SqlGatewayItem.new
              sqlgatewayitem_tmp.deserialize(i)
              @SqlGateways << sqlgatewayitem_tmp
            end
          end
          @WebUIType = params['WebUIType']
        end
      end

      # 工作空间集群组信息
      class ClusterGroupSetItem < TencentCloud::Common::AbstractModel
        # @param ClusterId: clusterGroup 的 SerialId
        # @type ClusterId: String
        # @param Name: 集群名称
        # @type Name: String
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 区
        # @type Zone: String
        # @param AppId: 账号 APPID
        # @type AppId: Integer
        # @param OwnerUin: 主账号 UIN
        # @type OwnerUin: String
        # @param CreatorUin: 创建账号 UIN
        # @type CreatorUin: String
        # @param CuNum: CU 数量
        # @type CuNum: Integer
        # @param CuMem: CU 内存规格
        # @type CuMem: Integer
        # @param Status: 集群状态, 1 未初始化,，3 初始化中，2 运行中
        # @type Status: Integer
        # @param StatusDesc: 状态描述
        # @type StatusDesc: String
        # @param CreateTime: 集群创建时间
        # @type CreateTime: String
        # @param UpdateTime: 最后一次操作集群的时间
        # @type UpdateTime: String
        # @param Remark: 描述
        # @type Remark: String
        # @param NetEnvironmentType: 网络
        # @type NetEnvironmentType: Integer
        # @param FreeCuNum: 空闲 CU
        # @type FreeCuNum: Integer
        # @param FreeCu: 细粒度资源下的空闲CU
        # @type FreeCu: Float
        # @param RunningCu: 运行中CU
        # @type RunningCu: Float
        # @param PayMode: 付费模式
        # @type PayMode: Integer

        attr_accessor :ClusterId, :Name, :Region, :Zone, :AppId, :OwnerUin, :CreatorUin, :CuNum, :CuMem, :Status, :StatusDesc, :CreateTime, :UpdateTime, :Remark, :NetEnvironmentType, :FreeCuNum, :FreeCu, :RunningCu, :PayMode

        def initialize(clusterid=nil, name=nil, region=nil, zone=nil, appid=nil, owneruin=nil, creatoruin=nil, cunum=nil, cumem=nil, status=nil, statusdesc=nil, createtime=nil, updatetime=nil, remark=nil, netenvironmenttype=nil, freecunum=nil, freecu=nil, runningcu=nil, paymode=nil)
          @ClusterId = clusterid
          @Name = name
          @Region = region
          @Zone = zone
          @AppId = appid
          @OwnerUin = owneruin
          @CreatorUin = creatoruin
          @CuNum = cunum
          @CuMem = cumem
          @Status = status
          @StatusDesc = statusdesc
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Remark = remark
          @NetEnvironmentType = netenvironmenttype
          @FreeCuNum = freecunum
          @FreeCu = freecu
          @RunningCu = runningcu
          @PayMode = paymode
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Name = params['Name']
          @Region = params['Region']
          @Zone = params['Zone']
          @AppId = params['AppId']
          @OwnerUin = params['OwnerUin']
          @CreatorUin = params['CreatorUin']
          @CuNum = params['CuNum']
          @CuMem = params['CuMem']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Remark = params['Remark']
          @NetEnvironmentType = params['NetEnvironmentType']
          @FreeCuNum = params['FreeCuNum']
          @FreeCu = params['FreeCu']
          @RunningCu = params['RunningCu']
          @PayMode = params['PayMode']
        end
      end

      # session集群信息
      class ClusterSession < TencentCloud::Common::AbstractModel
        # @param ClusterGroupSerialId: 集群SerialId
        # @type ClusterGroupSerialId: String
        # @param AppId: 创建者appId
        # @type AppId: Integer
        # @param OwnerUin: 创建者主账号
        # @type OwnerUin: String
        # @param CreatorUin: 创建者账号
        # @type CreatorUin: String
        # @param Region: 区域
        # @type Region: String
        # @param Zone: zone
        # @type Zone: String
        # @param Status: Session集群状态
        # @type Status: Integer
        # @param CuNum: Session集群消耗的cu数量
        # @type CuNum: Float
        # @param FlinkVersion: Session集群的Flink版本
        # @type FlinkVersion: String
        # @param WebUIUrl: session集群FlinkUi地址
        # @type WebUIUrl: String
        # @param Properties: session集群高级参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array
        # @param JobManagerCuSpec: JobManager的规格
        # @type JobManagerCuSpec: Float
        # @param TaskManagerCuSpec: TaskManager的规格
        # @type TaskManagerCuSpec: Float
        # @param TaskManagerNum: TaskManager启动的数量
        # @type TaskManagerNum: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :ClusterGroupSerialId, :AppId, :OwnerUin, :CreatorUin, :Region, :Zone, :Status, :CuNum, :FlinkVersion, :WebUIUrl, :Properties, :JobManagerCuSpec, :TaskManagerCuSpec, :TaskManagerNum, :CreateTime, :UpdateTime

        def initialize(clustergroupserialid=nil, appid=nil, owneruin=nil, creatoruin=nil, region=nil, zone=nil, status=nil, cunum=nil, flinkversion=nil, webuiurl=nil, properties=nil, jobmanagercuspec=nil, taskmanagercuspec=nil, taskmanagernum=nil, createtime=nil, updatetime=nil)
          @ClusterGroupSerialId = clustergroupserialid
          @AppId = appid
          @OwnerUin = owneruin
          @CreatorUin = creatoruin
          @Region = region
          @Zone = zone
          @Status = status
          @CuNum = cunum
          @FlinkVersion = flinkversion
          @WebUIUrl = webuiurl
          @Properties = properties
          @JobManagerCuSpec = jobmanagercuspec
          @TaskManagerCuSpec = taskmanagercuspec
          @TaskManagerNum = taskmanagernum
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ClusterGroupSerialId = params['ClusterGroupSerialId']
          @AppId = params['AppId']
          @OwnerUin = params['OwnerUin']
          @CreatorUin = params['CreatorUin']
          @Region = params['Region']
          @Zone = params['Zone']
          @Status = params['Status']
          @CuNum = params['CuNum']
          @FlinkVersion = params['FlinkVersion']
          @WebUIUrl = params['WebUIUrl']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Properties << property_tmp
            end
          end
          @JobManagerCuSpec = params['JobManagerCuSpec']
          @TaskManagerCuSpec = params['TaskManagerCuSpec']
          @TaskManagerNum = params['TaskManagerNum']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 集群的版本相关信息
      class ClusterVersion < TencentCloud::Common::AbstractModel
        # @param Flink: 集群的Flink版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Flink: String
        # @param SupportedFlink: 集群支持的Flink版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportedFlink: Array

        attr_accessor :Flink, :SupportedFlink

        def initialize(flink=nil, supportedflink=nil)
          @Flink = flink
          @SupportedFlink = supportedflink
        end

        def deserialize(params)
          @Flink = params['Flink']
          @SupportedFlink = params['SupportedFlink']
        end
      end

      # 复制作业单条明细
      class CopyJobItem < TencentCloud::Common::AbstractModel
        # @param SourceId: 需要复制的作业serial id
        # @type SourceId: String
        # @param TargetClusterId: 目标集群的cluster serial id
        # @type TargetClusterId: String
        # @param SourceName: 需要复制的作业名称
        # @type SourceName: String
        # @param TargetName: 新作业的名称
        # @type TargetName: String
        # @param TargetFolderId: 新作业的目录id
        # @type TargetFolderId: String
        # @param JobType: 源作业类型
        # @type JobType: Integer

        attr_accessor :SourceId, :TargetClusterId, :SourceName, :TargetName, :TargetFolderId, :JobType

        def initialize(sourceid=nil, targetclusterid=nil, sourcename=nil, targetname=nil, targetfolderid=nil, jobtype=nil)
          @SourceId = sourceid
          @TargetClusterId = targetclusterid
          @SourceName = sourcename
          @TargetName = targetname
          @TargetFolderId = targetfolderid
          @JobType = jobtype
        end

        def deserialize(params)
          @SourceId = params['SourceId']
          @TargetClusterId = params['TargetClusterId']
          @SourceName = params['SourceName']
          @TargetName = params['TargetName']
          @TargetFolderId = params['TargetFolderId']
          @JobType = params['JobType']
        end
      end

      # 复制作业单条明细结果
      class CopyJobResult < TencentCloud::Common::AbstractModel
        # @param JobId: 原作业id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param JobName: 原作业名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobName: String
        # @param TargetJobName: 新作业名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetJobName: String
        # @param TargetJobId: 新作业id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetJobId: String
        # @param Message: 失败时候的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Result: 0 成功  -1 失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Integer
        # @param ClusterName: 目标集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param ClusterId: 目标集群id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param JobType: 作业类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobType: Integer

        attr_accessor :JobId, :JobName, :TargetJobName, :TargetJobId, :Message, :Result, :ClusterName, :ClusterId, :JobType

        def initialize(jobid=nil, jobname=nil, targetjobname=nil, targetjobid=nil, message=nil, result=nil, clustername=nil, clusterid=nil, jobtype=nil)
          @JobId = jobid
          @JobName = jobname
          @TargetJobName = targetjobname
          @TargetJobId = targetjobid
          @Message = message
          @Result = result
          @ClusterName = clustername
          @ClusterId = clusterid
          @JobType = jobtype
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          @TargetJobName = params['TargetJobName']
          @TargetJobId = params['TargetJobId']
          @Message = params['Message']
          @Result = params['Result']
          @ClusterName = params['ClusterName']
          @ClusterId = params['ClusterId']
          @JobType = params['JobType']
        end
      end

      # CopyJobs请求参数结构体
      class CopyJobsRequest < TencentCloud::Common::AbstractModel
        # @param JobItems: 复制明细列表
        # @type JobItems: Array
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :JobItems, :WorkSpaceId

        def initialize(jobitems=nil, workspaceid=nil)
          @JobItems = jobitems
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          unless params['JobItems'].nil?
            @JobItems = []
            params['JobItems'].each do |i|
              copyjobitem_tmp = CopyJobItem.new
              copyjobitem_tmp.deserialize(i)
              @JobItems << copyjobitem_tmp
            end
          end
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # CopyJobs返回参数结构体
      class CopyJobsResponse < TencentCloud::Common::AbstractModel
        # @param SuccessCount: 成功条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessCount: Integer
        # @param FailCount: 失败条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailCount: Integer
        # @param CopyJobsResults: 结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CopyJobsResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessCount, :FailCount, :CopyJobsResults, :RequestId

        def initialize(successcount=nil, failcount=nil, copyjobsresults=nil, requestid=nil)
          @SuccessCount = successcount
          @FailCount = failcount
          @CopyJobsResults = copyjobsresults
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessCount = params['SuccessCount']
          @FailCount = params['FailCount']
          unless params['CopyJobsResults'].nil?
            @CopyJobsResults = []
            params['CopyJobsResults'].each do |i|
              copyjobresult_tmp = CopyJobResult.new
              copyjobresult_tmp.deserialize(i)
              @CopyJobsResults << copyjobresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateFolder请求参数结构体
      class CreateFolderRequest < TencentCloud::Common::AbstractModel
        # @param FolderName: 新建文件夹名
        # @type FolderName: String
        # @param ParentId: 新建文件夹的父目录ID
        # @type ParentId: String
        # @param FolderType: 文件夹类型，0是任务文件夹，1是依赖文件夹
        # @type FolderType: Integer
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :FolderName, :ParentId, :FolderType, :WorkSpaceId

        def initialize(foldername=nil, parentid=nil, foldertype=nil, workspaceid=nil)
          @FolderName = foldername
          @ParentId = parentid
          @FolderType = foldertype
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @FolderName = params['FolderName']
          @ParentId = params['ParentId']
          @FolderType = params['FolderType']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # CreateFolder返回参数结构体
      class CreateFolderResponse < TencentCloud::Common::AbstractModel
        # @param FolderId: 新建文件夹的唯一ID
        # @type FolderId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FolderId, :RequestId

        def initialize(folderid=nil, requestid=nil)
          @FolderId = folderid
          @RequestId = requestid
        end

        def deserialize(params)
          @FolderId = params['FolderId']
          @RequestId = params['RequestId']
        end
      end

      # CreateJobConfig请求参数结构体
      class CreateJobConfigRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业Id
        # @type JobId: String
        # @param EntrypointClass: 主类
        # @type EntrypointClass: String
        # @param ProgramArgs: 主类入参
        # @type ProgramArgs: String
        # @param Remark: 备注
        # @type Remark: String
        # @param ResourceRefs: 资源引用数组
        # @type ResourceRefs: Array
        # @param DefaultParallelism: 作业默认并行度
        # @type DefaultParallelism: Integer
        # @param Properties: 系统参数
        # @type Properties: Array
        # @param AutoDelete: 1: 作业配置达到上限之后，自动删除可删除的最早版本
        # @type AutoDelete: Integer
        # @param COSBucket: 作业使用的 COS 存储桶名
        # @type COSBucket: String
        # @param LogCollect: 是否采集作业日志
        # @type LogCollect: Boolean
        # @param JobManagerSpec: JobManager规格
        # @type JobManagerSpec: Float
        # @param TaskManagerSpec: TaskManager规格
        # @type TaskManagerSpec: Float
        # @param ClsLogsetId: CLS日志集ID
        # @type ClsLogsetId: String
        # @param ClsTopicId: CLS日志主题ID
        # @type ClsTopicId: String
        # @param LogCollectType: 日志采集类型 2：CLS；3：COS
        # @type LogCollectType: Integer
        # @param PythonVersion: pyflink作业运行时使用的python版本
        # @type PythonVersion: String
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String
        # @param LogLevel: 日志级别
        # @type LogLevel: String
        # @param AutoRecover: Oceanus 平台恢复作业开关 1:开启 -1: 关闭
        # @type AutoRecover: Integer
        # @param ClazzLevels: 类日志级别
        # @type ClazzLevels: Array
        # @param ExpertModeOn: 是否打开专家模式
        # @type ExpertModeOn: Boolean
        # @param ExpertModeConfiguration: 专家模式的配置
        # @type ExpertModeConfiguration: :class:`Tencentcloud::Oceanus.v20190422.models.ExpertModeConfiguration`
        # @param TraceModeOn: trace链路
        # @type TraceModeOn: Boolean
        # @param TraceModeConfiguration: trace链路配置
        # @type TraceModeConfiguration: :class:`Tencentcloud::Oceanus.v20190422.models.TraceModeConfiguration`
        # @param CheckpointRetainedNum: checkpoint保留个数
        # @type CheckpointRetainedNum: Integer
        # @param JobGraph: 算子拓扑图
        # @type JobGraph: :class:`Tencentcloud::Oceanus.v20190422.models.JobGraph`
        # @param EsServerlessIndex: es索引名称
        # @type EsServerlessIndex: String
        # @param EsServerlessSpace: es索引空间
        # @type EsServerlessSpace: String

        attr_accessor :JobId, :EntrypointClass, :ProgramArgs, :Remark, :ResourceRefs, :DefaultParallelism, :Properties, :AutoDelete, :COSBucket, :LogCollect, :JobManagerSpec, :TaskManagerSpec, :ClsLogsetId, :ClsTopicId, :LogCollectType, :PythonVersion, :WorkSpaceId, :LogLevel, :AutoRecover, :ClazzLevels, :ExpertModeOn, :ExpertModeConfiguration, :TraceModeOn, :TraceModeConfiguration, :CheckpointRetainedNum, :JobGraph, :EsServerlessIndex, :EsServerlessSpace

        def initialize(jobid=nil, entrypointclass=nil, programargs=nil, remark=nil, resourcerefs=nil, defaultparallelism=nil, properties=nil, autodelete=nil, cosbucket=nil, logcollect=nil, jobmanagerspec=nil, taskmanagerspec=nil, clslogsetid=nil, clstopicid=nil, logcollecttype=nil, pythonversion=nil, workspaceid=nil, loglevel=nil, autorecover=nil, clazzlevels=nil, expertmodeon=nil, expertmodeconfiguration=nil, tracemodeon=nil, tracemodeconfiguration=nil, checkpointretainednum=nil, jobgraph=nil, esserverlessindex=nil, esserverlessspace=nil)
          @JobId = jobid
          @EntrypointClass = entrypointclass
          @ProgramArgs = programargs
          @Remark = remark
          @ResourceRefs = resourcerefs
          @DefaultParallelism = defaultparallelism
          @Properties = properties
          @AutoDelete = autodelete
          @COSBucket = cosbucket
          @LogCollect = logcollect
          @JobManagerSpec = jobmanagerspec
          @TaskManagerSpec = taskmanagerspec
          @ClsLogsetId = clslogsetid
          @ClsTopicId = clstopicid
          @LogCollectType = logcollecttype
          @PythonVersion = pythonversion
          @WorkSpaceId = workspaceid
          @LogLevel = loglevel
          @AutoRecover = autorecover
          @ClazzLevels = clazzlevels
          @ExpertModeOn = expertmodeon
          @ExpertModeConfiguration = expertmodeconfiguration
          @TraceModeOn = tracemodeon
          @TraceModeConfiguration = tracemodeconfiguration
          @CheckpointRetainedNum = checkpointretainednum
          @JobGraph = jobgraph
          @EsServerlessIndex = esserverlessindex
          @EsServerlessSpace = esserverlessspace
        end

        def deserialize(params)
          @JobId = params['JobId']
          @EntrypointClass = params['EntrypointClass']
          @ProgramArgs = params['ProgramArgs']
          @Remark = params['Remark']
          unless params['ResourceRefs'].nil?
            @ResourceRefs = []
            params['ResourceRefs'].each do |i|
              resourceref_tmp = ResourceRef.new
              resourceref_tmp.deserialize(i)
              @ResourceRefs << resourceref_tmp
            end
          end
          @DefaultParallelism = params['DefaultParallelism']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Properties << property_tmp
            end
          end
          @AutoDelete = params['AutoDelete']
          @COSBucket = params['COSBucket']
          @LogCollect = params['LogCollect']
          @JobManagerSpec = params['JobManagerSpec']
          @TaskManagerSpec = params['TaskManagerSpec']
          @ClsLogsetId = params['ClsLogsetId']
          @ClsTopicId = params['ClsTopicId']
          @LogCollectType = params['LogCollectType']
          @PythonVersion = params['PythonVersion']
          @WorkSpaceId = params['WorkSpaceId']
          @LogLevel = params['LogLevel']
          @AutoRecover = params['AutoRecover']
          unless params['ClazzLevels'].nil?
            @ClazzLevels = []
            params['ClazzLevels'].each do |i|
              clazzlevel_tmp = ClazzLevel.new
              clazzlevel_tmp.deserialize(i)
              @ClazzLevels << clazzlevel_tmp
            end
          end
          @ExpertModeOn = params['ExpertModeOn']
          unless params['ExpertModeConfiguration'].nil?
            @ExpertModeConfiguration = ExpertModeConfiguration.new
            @ExpertModeConfiguration.deserialize(params['ExpertModeConfiguration'])
          end
          @TraceModeOn = params['TraceModeOn']
          unless params['TraceModeConfiguration'].nil?
            @TraceModeConfiguration = TraceModeConfiguration.new
            @TraceModeConfiguration.deserialize(params['TraceModeConfiguration'])
          end
          @CheckpointRetainedNum = params['CheckpointRetainedNum']
          unless params['JobGraph'].nil?
            @JobGraph = JobGraph.new
            @JobGraph.deserialize(params['JobGraph'])
          end
          @EsServerlessIndex = params['EsServerlessIndex']
          @EsServerlessSpace = params['EsServerlessSpace']
        end
      end

      # CreateJobConfig返回参数结构体
      class CreateJobConfigResponse < TencentCloud::Common::AbstractModel
        # @param Version: 作业配置版本号
        # @type Version: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Version, :RequestId

        def initialize(version=nil, requestid=nil)
          @Version = version
          @RequestId = requestid
        end

        def deserialize(params)
          @Version = params['Version']
          @RequestId = params['RequestId']
        end
      end

      # CreateJob请求参数结构体
      class CreateJobRequest < TencentCloud::Common::AbstractModel
        # @param Name: 作业名称，允许输入长度小于等于50个字符的中文、英文、数字、-（横线）、_（下划线）、.（点），且符号必须半角字符。注意作业名不能和现有作业同名
        # @type Name: String
        # @param JobType: 作业的类型，1 表示 SQL 作业，2 表示 JAR 作业
        # @type JobType: Integer
        # @param ClusterType: 集群的类型，1 表示共享集群，2 表示独享集群
        # @type ClusterType: Integer
        # @param ClusterId: 当 ClusterType=2 时，必选，用来指定该作业提交的独享集群 ID
        # @type ClusterId: String
        # @param CuMem: 设置每 CU 的内存规格，单位为 GB，支持 2、4、8、16（需申请开通白名单后使用）。默认为 4，即 1 CU 对应 4 GB 的运行内存
        # @type CuMem: Integer
        # @param Remark: 作业的备注信息，可以随意设置
        # @type Remark: String
        # @param FolderId: 作业名所属文件夹ID，根目录为"root"
        # @type FolderId: String
        # @param FlinkVersion: 作业运行的Flink版本
        # @type FlinkVersion: String
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String
        # @param Tags: 作业标签
        # @type Tags: Array

        attr_accessor :Name, :JobType, :ClusterType, :ClusterId, :CuMem, :Remark, :FolderId, :FlinkVersion, :WorkSpaceId, :Tags

        def initialize(name=nil, jobtype=nil, clustertype=nil, clusterid=nil, cumem=nil, remark=nil, folderid=nil, flinkversion=nil, workspaceid=nil, tags=nil)
          @Name = name
          @JobType = jobtype
          @ClusterType = clustertype
          @ClusterId = clusterid
          @CuMem = cumem
          @Remark = remark
          @FolderId = folderid
          @FlinkVersion = flinkversion
          @WorkSpaceId = workspaceid
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          @JobType = params['JobType']
          @ClusterType = params['ClusterType']
          @ClusterId = params['ClusterId']
          @CuMem = params['CuMem']
          @Remark = params['Remark']
          @FolderId = params['FolderId']
          @FlinkVersion = params['FlinkVersion']
          @WorkSpaceId = params['WorkSpaceId']
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

      # CreateJob返回参数结构体
      class CreateJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 作业Id
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId

        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # CreateResourceConfig请求参数结构体
      class CreateResourceConfigRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param ResourceLoc: 位置信息
        # @type ResourceLoc: :class:`Tencentcloud::Oceanus.v20190422.models.ResourceLoc`
        # @param Remark: 资源描述信息
        # @type Remark: String
        # @param AutoDelete: 1： 资源版本达到上限，自动删除最早可删除的版本
        # @type AutoDelete: Integer
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :ResourceId, :ResourceLoc, :Remark, :AutoDelete, :WorkSpaceId

        def initialize(resourceid=nil, resourceloc=nil, remark=nil, autodelete=nil, workspaceid=nil)
          @ResourceId = resourceid
          @ResourceLoc = resourceloc
          @Remark = remark
          @AutoDelete = autodelete
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          unless params['ResourceLoc'].nil?
            @ResourceLoc = ResourceLoc.new
            @ResourceLoc.deserialize(params['ResourceLoc'])
          end
          @Remark = params['Remark']
          @AutoDelete = params['AutoDelete']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # CreateResourceConfig返回参数结构体
      class CreateResourceConfigResponse < TencentCloud::Common::AbstractModel
        # @param Version: 资源版本ID
        # @type Version: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Version, :RequestId

        def initialize(version=nil, requestid=nil)
          @Version = version
          @RequestId = requestid
        end

        def deserialize(params)
          @Version = params['Version']
          @RequestId = params['RequestId']
        end
      end

      # CreateResource请求参数结构体
      class CreateResourceRequest < TencentCloud::Common::AbstractModel
        # @param ResourceLoc: 资源位置
        # @type ResourceLoc: :class:`Tencentcloud::Oceanus.v20190422.models.ResourceLoc`
        # @param ResourceType: 资源类型。目前只支持 JAR，取值为 1
        # @type ResourceType: Integer
        # @param Remark: 资源描述
        # @type Remark: String
        # @param Name: 资源名称
        # @type Name: String
        # @param ResourceConfigRemark: 资源版本描述
        # @type ResourceConfigRemark: String
        # @param FolderId: 目录ID
        # @type FolderId: String
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :ResourceLoc, :ResourceType, :Remark, :Name, :ResourceConfigRemark, :FolderId, :WorkSpaceId

        def initialize(resourceloc=nil, resourcetype=nil, remark=nil, name=nil, resourceconfigremark=nil, folderid=nil, workspaceid=nil)
          @ResourceLoc = resourceloc
          @ResourceType = resourcetype
          @Remark = remark
          @Name = name
          @ResourceConfigRemark = resourceconfigremark
          @FolderId = folderid
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          unless params['ResourceLoc'].nil?
            @ResourceLoc = ResourceLoc.new
            @ResourceLoc.deserialize(params['ResourceLoc'])
          end
          @ResourceType = params['ResourceType']
          @Remark = params['Remark']
          @Name = params['Name']
          @ResourceConfigRemark = params['ResourceConfigRemark']
          @FolderId = params['FolderId']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # CreateResource返回参数结构体
      class CreateResourceResponse < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param Version: 资源版本
        # @type Version: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceId, :Version, :RequestId

        def initialize(resourceid=nil, version=nil, requestid=nil)
          @ResourceId = resourceid
          @Version = version
          @RequestId = requestid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Version = params['Version']
          @RequestId = params['RequestId']
        end
      end

      # CreateWorkSpace请求参数结构体
      class CreateWorkSpaceRequest < TencentCloud::Common::AbstractModel
        # @param WorkSpaceName: 工作空间名称
        # @type WorkSpaceName: String
        # @param Description: 项目空间备注
        # @type Description: String

        attr_accessor :WorkSpaceName, :Description

        def initialize(workspacename=nil, description=nil)
          @WorkSpaceName = workspacename
          @Description = description
        end

        def deserialize(params)
          @WorkSpaceName = params['WorkSpaceName']
          @Description = params['Description']
        end
      end

      # CreateWorkSpace返回参数结构体
      class CreateWorkSpaceResponse < TencentCloud::Common::AbstractModel
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkSpaceId, :RequestId

        def initialize(workspaceid=nil, requestid=nil)
          @WorkSpaceId = workspaceid
          @RequestId = requestid
        end

        def deserialize(params)
          @WorkSpaceId = params['WorkSpaceId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteFolders请求参数结构体
      class DeleteFoldersRequest < TencentCloud::Common::AbstractModel
        # @param FolderIds: 需删除的文件夹唯一ID
        # @type FolderIds: Array
        # @param FolderType: 文件夹类型，0是任务文件夹，1是依赖文件夹
        # @type FolderType: Integer
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :FolderIds, :FolderType, :WorkSpaceId

        def initialize(folderids=nil, foldertype=nil, workspaceid=nil)
          @FolderIds = folderids
          @FolderType = foldertype
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @FolderIds = params['FolderIds']
          @FolderType = params['FolderType']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DeleteFolders返回参数结构体
      class DeleteFoldersResponse < TencentCloud::Common::AbstractModel
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

      # DeleteJobConfigs请求参数结构体
      class DeleteJobConfigsRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业ID
        # @type JobId: String
        # @param JobConfigVersions: 作业配置版本数组
        # @type JobConfigVersions: Array
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :JobId, :JobConfigVersions, :WorkSpaceId

        def initialize(jobid=nil, jobconfigversions=nil, workspaceid=nil)
          @JobId = jobid
          @JobConfigVersions = jobconfigversions
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobConfigVersions = params['JobConfigVersions']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DeleteJobConfigs返回参数结构体
      class DeleteJobConfigsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteJobs请求参数结构体
      class DeleteJobsRequest < TencentCloud::Common::AbstractModel
        # @param JobIds: 作业Id列表
        # @type JobIds: Array
        # @param WorkSpaceId: 工作空间Id
        # @type WorkSpaceId: String

        attr_accessor :JobIds, :WorkSpaceId

        def initialize(jobids=nil, workspaceid=nil)
          @JobIds = jobids
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @JobIds = params['JobIds']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DeleteJobs返回参数结构体
      class DeleteJobsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteResourceConfigs请求参数结构体
      class DeleteResourceConfigsRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param ResourceConfigVersions: 资源版本数组
        # @type ResourceConfigVersions: Array
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :ResourceId, :ResourceConfigVersions, :WorkSpaceId

        def initialize(resourceid=nil, resourceconfigversions=nil, workspaceid=nil)
          @ResourceId = resourceid
          @ResourceConfigVersions = resourceconfigversions
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceConfigVersions = params['ResourceConfigVersions']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DeleteResourceConfigs返回参数结构体
      class DeleteResourceConfigsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteResources请求参数结构体
      class DeleteResourcesRequest < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 待删除资源ID列表
        # @type ResourceIds: Array
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :ResourceIds, :WorkSpaceId

        def initialize(resourceids=nil, workspaceid=nil)
          @ResourceIds = resourceids
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DeleteResources返回参数结构体
      class DeleteResourcesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTableConfig请求参数结构体
      class DeleteTableConfigRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业ID
        # @type JobId: String
        # @param DebugId: 调试作业ID
        # @type DebugId: Integer
        # @param TableName: 表名
        # @type TableName: String
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :JobId, :DebugId, :TableName, :WorkSpaceId

        def initialize(jobid=nil, debugid=nil, tablename=nil, workspaceid=nil)
          @JobId = jobid
          @DebugId = debugid
          @TableName = tablename
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @DebugId = params['DebugId']
          @TableName = params['TableName']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DeleteTableConfig返回参数结构体
      class DeleteTableConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeleteWorkSpace请求参数结构体
      class DeleteWorkSpaceRequest < TencentCloud::Common::AbstractModel
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :WorkSpaceId

        def initialize(workspaceid=nil)
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DeleteWorkSpace返回参数结构体
      class DeleteWorkSpaceResponse < TencentCloud::Common::AbstractModel
        # @param Delete: 是否删除
        # @type Delete: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Delete, :RequestId

        def initialize(delete=nil, requestid=nil)
          @Delete = delete
          @RequestId = requestid
        end

        def deserialize(params)
          @Delete = params['Delete']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusters请求参数结构体
      class DescribeClustersRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIds: 按照一个或者多个集群 ID 查询，每次请求的集群上限为 100
        # @type ClusterIds: Array
        # @param Offset: 偏移量，默认 0
        # @type Offset: Integer
        # @param Limit: 请求的集群数量，默认 20，最大值 100
        # @type Limit: Integer
        # @param OrderType: 集群信息结果排序规则，1 按时间降序，2 按照时间升序，3  按照状态排序
        # @type OrderType: Integer
        # @param Filters: 过滤规则
        # @type Filters: Array
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :ClusterIds, :Offset, :Limit, :OrderType, :Filters, :WorkSpaceId

        def initialize(clusterids=nil, offset=nil, limit=nil, ordertype=nil, filters=nil, workspaceid=nil)
          @ClusterIds = clusterids
          @Offset = offset
          @Limit = limit
          @OrderType = ordertype
          @Filters = filters
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @ClusterIds = params['ClusterIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderType = params['OrderType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DescribeClusters返回参数结构体
      class DescribeClustersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集群总数
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
              cluster_tmp = Cluster.new
              cluster_tmp.deserialize(i)
              @ClusterSet << cluster_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFolder请求参数结构体
      class DescribeFolderRequest < TencentCloud::Common::AbstractModel
        # @param FolderId: folder id
        # @type FolderId: String
        # @param WorkSpaceId: workspace id
        # @type WorkSpaceId: String
        # @param FolderType: 1:资源文件夹
        # 其他:作业文件夹
        # @type FolderType: Integer

        attr_accessor :FolderId, :WorkSpaceId, :FolderType

        def initialize(folderid=nil, workspaceid=nil, foldertype=nil)
          @FolderId = folderid
          @WorkSpaceId = workspaceid
          @FolderType = foldertype
        end

        def deserialize(params)
          @FolderId = params['FolderId']
          @WorkSpaceId = params['WorkSpaceId']
          @FolderType = params['FolderType']
        end
      end

      # DescribeFolder返回参数结构体
      class DescribeFolderResponse < TencentCloud::Common::AbstractModel
        # @param FolderId: folder id
        # @type FolderId: String
        # @param FolderName: folder name
        # @type FolderName: String
        # @param ParentId: 父文件夹id
        # @type ParentId: String
        # @param FolderType: 文件夹类型
        # @type FolderType: Integer
        # @param WorkSpaceId: workspace id
        # @type WorkSpaceId: String
        # @param SubFolderInfo: 子文件夹信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubFolderInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FolderId, :FolderName, :ParentId, :FolderType, :WorkSpaceId, :SubFolderInfo, :RequestId

        def initialize(folderid=nil, foldername=nil, parentid=nil, foldertype=nil, workspaceid=nil, subfolderinfo=nil, requestid=nil)
          @FolderId = folderid
          @FolderName = foldername
          @ParentId = parentid
          @FolderType = foldertype
          @WorkSpaceId = workspaceid
          @SubFolderInfo = subfolderinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @FolderId = params['FolderId']
          @FolderName = params['FolderName']
          @ParentId = params['ParentId']
          @FolderType = params['FolderType']
          @WorkSpaceId = params['WorkSpaceId']
          unless params['SubFolderInfo'].nil?
            @SubFolderInfo = []
            params['SubFolderInfo'].each do |i|
              subfolderinfo_tmp = SubFolderInfo.new
              subfolderinfo_tmp.deserialize(i)
              @SubFolderInfo << subfolderinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeJobConfigs请求参数结构体
      class DescribeJobConfigsRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业Id
        # @type JobId: String
        # @param JobConfigVersions: 作业配置版本
        # @type JobConfigVersions: Array
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 分页大小，默认20，最大100
        # @type Limit: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param OnlyDraft: true 表示只展示草稿
        # @type OnlyDraft: Boolean
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :JobId, :JobConfigVersions, :Offset, :Limit, :Filters, :OnlyDraft, :WorkSpaceId

        def initialize(jobid=nil, jobconfigversions=nil, offset=nil, limit=nil, filters=nil, onlydraft=nil, workspaceid=nil)
          @JobId = jobid
          @JobConfigVersions = jobconfigversions
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @OnlyDraft = onlydraft
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobConfigVersions = params['JobConfigVersions']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @OnlyDraft = params['OnlyDraft']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DescribeJobConfigs返回参数结构体
      class DescribeJobConfigsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总的配置版本数量
        # @type TotalCount: Integer
        # @param JobConfigSet: 作业配置列表
        # @type JobConfigSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :JobConfigSet, :RequestId

        def initialize(totalcount=nil, jobconfigset=nil, requestid=nil)
          @TotalCount = totalcount
          @JobConfigSet = jobconfigset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['JobConfigSet'].nil?
            @JobConfigSet = []
            params['JobConfigSet'].each do |i|
              jobconfig_tmp = JobConfig.new
              jobconfig_tmp.deserialize(i)
              @JobConfigSet << jobconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeJobEvents请求参数结构体
      class DescribeJobEventsRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业的 ID
        # @type JobId: String
        # @param StartTimestamp: 筛选条件：起始 Unix 时间戳（秒）
        # @type StartTimestamp: Integer
        # @param EndTimestamp: 筛选条件：结束 Unix 时间戳（秒）
        # @type EndTimestamp: Integer
        # @param Types: 事件类型。如果不传则返回所有类型的数据
        # @type Types: Array
        # @param RunningOrderIds: 运行实例 ID 数组
        # @type RunningOrderIds: Array
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :JobId, :StartTimestamp, :EndTimestamp, :Types, :RunningOrderIds, :WorkSpaceId

        def initialize(jobid=nil, starttimestamp=nil, endtimestamp=nil, types=nil, runningorderids=nil, workspaceid=nil)
          @JobId = jobid
          @StartTimestamp = starttimestamp
          @EndTimestamp = endtimestamp
          @Types = types
          @RunningOrderIds = runningorderids
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @StartTimestamp = params['StartTimestamp']
          @EndTimestamp = params['EndTimestamp']
          @Types = params['Types']
          @RunningOrderIds = params['RunningOrderIds']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DescribeJobEvents返回参数结构体
      class DescribeJobEventsResponse < TencentCloud::Common::AbstractModel
        # @param Events: 该作业指定范围内的事件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Events: Array
        # @param RunningOrderIds: 该作业指定范围内运行实例 ID 数组，仅当入参没有传入 RunningOrderIds 参数时才会返回。倒序输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunningOrderIds: Array
        # @param TotalCount: 事件的总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Events, :RunningOrderIds, :TotalCount, :RequestId

        def initialize(events=nil, runningorderids=nil, totalcount=nil, requestid=nil)
          @Events = events
          @RunningOrderIds = runningorderids
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              jobevent_tmp = JobEvent.new
              jobevent_tmp.deserialize(i)
              @Events << jobevent_tmp
            end
          end
          @RunningOrderIds = params['RunningOrderIds']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeJobSavepoint请求参数结构体
      class DescribeJobSavepointRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业 SerialId
        # @type JobId: String
        # @param Limit: 分页参数，单页总数
        # @type Limit: Integer
        # @param Offset: 分页参数，偏移量
        # @type Offset: Integer
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String
        # @param RecordTypes: 2 是checkpoint
        # 1 是触发savepoint
        # 3 停止触发的savepoint
        # @type RecordTypes: Array

        attr_accessor :JobId, :Limit, :Offset, :WorkSpaceId, :RecordTypes

        def initialize(jobid=nil, limit=nil, offset=nil, workspaceid=nil, recordtypes=nil)
          @JobId = jobid
          @Limit = limit
          @Offset = offset
          @WorkSpaceId = workspaceid
          @RecordTypes = recordtypes
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @WorkSpaceId = params['WorkSpaceId']
          @RecordTypes = params['RecordTypes']
        end
      end

      # DescribeJobSavepoint返回参数结构体
      class DescribeJobSavepointResponse < TencentCloud::Common::AbstractModel
        # @param TotalNumber: 快照列表总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalNumber: Integer
        # @param Savepoint: 快照列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Savepoint: Array
        # @param RunningSavepoint: 进行中的快照列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunningSavepoint: Array
        # @param RunningTotalNumber: 进行中的快照列表总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunningTotalNumber: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNumber, :Savepoint, :RunningSavepoint, :RunningTotalNumber, :RequestId

        def initialize(totalnumber=nil, savepoint=nil, runningsavepoint=nil, runningtotalnumber=nil, requestid=nil)
          @TotalNumber = totalnumber
          @Savepoint = savepoint
          @RunningSavepoint = runningsavepoint
          @RunningTotalNumber = runningtotalnumber
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNumber = params['TotalNumber']
          unless params['Savepoint'].nil?
            @Savepoint = []
            params['Savepoint'].each do |i|
              savepoint_tmp = Savepoint.new
              savepoint_tmp.deserialize(i)
              @Savepoint << savepoint_tmp
            end
          end
          unless params['RunningSavepoint'].nil?
            @RunningSavepoint = []
            params['RunningSavepoint'].each do |i|
              savepoint_tmp = Savepoint.new
              savepoint_tmp.deserialize(i)
              @RunningSavepoint << savepoint_tmp
            end
          end
          @RunningTotalNumber = params['RunningTotalNumber']
          @RequestId = params['RequestId']
        end
      end

      # DescribeJobSubmissionLog请求参数结构体
      class DescribeJobSubmissionLogRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业ID，例如：cql-6v1jkxrn
        # @type JobId: String
        # @param StartTime: 起始时间，unix时间戳，毫秒级，例如：1611754219108
        # @type StartTime: Integer
        # @param EndTime: 结束时间，unix时间戳，毫秒级，例如：1611754219108
        # @type EndTime: Integer
        # @param RunningOrderId: 作业运行的实例ID, 例如：1,2,3。默认为0，表示未选中任何实例，搜索该时间段内最近的一个实例的日志
        # @type RunningOrderId: Integer
        # @param Keyword: 日志搜索的关键词，默认为空
        # @type Keyword: String
        # @param Cursor: 日志搜索的游标，可透传上次返回的值，默认为空
        # @type Cursor: String
        # @param OrderType: 时间戳排序规则，asc - 升序，desc - 降序。默认为升序
        # @type OrderType: String
        # @param Limit: 搜索的日志条数上限值，最大为100
        # @type Limit: Integer

        attr_accessor :JobId, :StartTime, :EndTime, :RunningOrderId, :Keyword, :Cursor, :OrderType, :Limit

        def initialize(jobid=nil, starttime=nil, endtime=nil, runningorderid=nil, keyword=nil, cursor=nil, ordertype=nil, limit=nil)
          @JobId = jobid
          @StartTime = starttime
          @EndTime = endtime
          @RunningOrderId = runningorderid
          @Keyword = keyword
          @Cursor = cursor
          @OrderType = ordertype
          @Limit = limit
        end

        def deserialize(params)
          @JobId = params['JobId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RunningOrderId = params['RunningOrderId']
          @Keyword = params['Keyword']
          @Cursor = params['Cursor']
          @OrderType = params['OrderType']
          @Limit = params['Limit']
        end
      end

      # DescribeJobSubmissionLog返回参数结构体
      class DescribeJobSubmissionLogResponse < TencentCloud::Common::AbstractModel
        # @param Cursor: 日志搜索的游标，需要搜索更多时透传这个值
        # @type Cursor: String
        # @param ListOver: 是否返回了所有的日志记录
        # @type ListOver: Boolean
        # @param JobRequestId: 作业启动的requestId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobRequestId: String
        # @param JobInstanceList: 该时间段内符合关键字的所有的作业实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobInstanceList: Array
        # @param LogList: 废弃，请使用LogContentList
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogList: Array
        # @param LogContentList: 日志列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogContentList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Cursor, :ListOver, :JobRequestId, :JobInstanceList, :LogList, :LogContentList, :RequestId

        def initialize(cursor=nil, listover=nil, jobrequestid=nil, jobinstancelist=nil, loglist=nil, logcontentlist=nil, requestid=nil)
          @Cursor = cursor
          @ListOver = listover
          @JobRequestId = jobrequestid
          @JobInstanceList = jobinstancelist
          @LogList = loglist
          @LogContentList = logcontentlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Cursor = params['Cursor']
          @ListOver = params['ListOver']
          @JobRequestId = params['JobRequestId']
          unless params['JobInstanceList'].nil?
            @JobInstanceList = []
            params['JobInstanceList'].each do |i|
              jobinstanceforsubmissionlog_tmp = JobInstanceForSubmissionLog.new
              jobinstanceforsubmissionlog_tmp.deserialize(i)
              @JobInstanceList << jobinstanceforsubmissionlog_tmp
            end
          end
          @LogList = params['LogList']
          unless params['LogContentList'].nil?
            @LogContentList = []
            params['LogContentList'].each do |i|
              logcontent_tmp = LogContent.new
              logcontent_tmp.deserialize(i)
              @LogContentList << logcontent_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeJobs请求参数结构体
      class DescribeJobsRequest < TencentCloud::Common::AbstractModel
        # @param JobIds: 按照一个或者多个作业ID查询。作业ID形如：cql-11112222，每次请求的作业上限为100。参数不支持同时指定JobIds和Filters。
        # @type JobIds: Array
        # @param Filters: 过滤条件，支持的 Filter.Name 为：作业名 Name、作业状态 Status、所属集群 ClusterId、作业id JobId、集群名称 ClusterName。 每次请求的 Filters 个数的上限为 5，Filter.Values 的个数上限为 5。参数不支持同时指定 JobIds 和 Filters。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 分页大小，默认为20，最大值为100
        # @type Limit: Integer
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String
        # @param ExtraResult: 查询额外的作业信息,例如 JobEventInfo
        # @type ExtraResult: Array

        attr_accessor :JobIds, :Filters, :Offset, :Limit, :WorkSpaceId, :ExtraResult

        def initialize(jobids=nil, filters=nil, offset=nil, limit=nil, workspaceid=nil, extraresult=nil)
          @JobIds = jobids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @WorkSpaceId = workspaceid
          @ExtraResult = extraresult
        end

        def deserialize(params)
          @JobIds = params['JobIds']
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
          @WorkSpaceId = params['WorkSpaceId']
          @ExtraResult = params['ExtraResult']
        end
      end

      # DescribeJobs返回参数结构体
      class DescribeJobsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 作业总数
        # @type TotalCount: Integer
        # @param JobSet: 作业列表
        # @type JobSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :JobSet, :RequestId

        def initialize(totalcount=nil, jobset=nil, requestid=nil)
          @TotalCount = totalcount
          @JobSet = jobset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['JobSet'].nil?
            @JobSet = []
            params['JobSet'].each do |i|
              jobv1_tmp = JobV1.new
              jobv1_tmp.deserialize(i)
              @JobSet << jobv1_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceConfigs请求参数结构体
      class DescribeResourceConfigsRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param Offset: 偏移量，仅当设置 Limit 时该参数有效
        # @type Offset: Integer
        # @param Limit: 返回值大小，不填则返回全量数据
        # @type Limit: Integer
        # @param ResourceConfigVersions: 资源配置Versions集合
        # @type ResourceConfigVersions: Array
        # @param JobConfigVersion: 作业配置版本
        # @type JobConfigVersion: Integer
        # @param JobId: 作业ID
        # @type JobId: String
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :ResourceId, :Offset, :Limit, :ResourceConfigVersions, :JobConfigVersion, :JobId, :WorkSpaceId

        def initialize(resourceid=nil, offset=nil, limit=nil, resourceconfigversions=nil, jobconfigversion=nil, jobid=nil, workspaceid=nil)
          @ResourceId = resourceid
          @Offset = offset
          @Limit = limit
          @ResourceConfigVersions = resourceconfigversions
          @JobConfigVersion = jobconfigversion
          @JobId = jobid
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ResourceConfigVersions = params['ResourceConfigVersions']
          @JobConfigVersion = params['JobConfigVersion']
          @JobId = params['JobId']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DescribeResourceConfigs返回参数结构体
      class DescribeResourceConfigsResponse < TencentCloud::Common::AbstractModel
        # @param ResourceConfigSet: 资源配置描述数组
        # @type ResourceConfigSet: Array
        # @param TotalCount: 资源配置数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceConfigSet, :TotalCount, :RequestId

        def initialize(resourceconfigset=nil, totalcount=nil, requestid=nil)
          @ResourceConfigSet = resourceconfigset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResourceConfigSet'].nil?
            @ResourceConfigSet = []
            params['ResourceConfigSet'].each do |i|
              resourceconfigitem_tmp = ResourceConfigItem.new
              resourceconfigitem_tmp.deserialize(i)
              @ResourceConfigSet << resourceconfigitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceRelatedJobs请求参数结构体
      class DescribeResourceRelatedJobsRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param DESCByJobConfigCreateTime: 默认0;   1： 按照作业版本创建时间降序
        # @type DESCByJobConfigCreateTime: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 分页大小，默认为20，最大值为100
        # @type Limit: Integer
        # @param ResourceConfigVersion: 资源版本号
        # @type ResourceConfigVersion: Integer
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :ResourceId, :DESCByJobConfigCreateTime, :Offset, :Limit, :ResourceConfigVersion, :WorkSpaceId

        def initialize(resourceid=nil, descbyjobconfigcreatetime=nil, offset=nil, limit=nil, resourceconfigversion=nil, workspaceid=nil)
          @ResourceId = resourceid
          @DESCByJobConfigCreateTime = descbyjobconfigcreatetime
          @Offset = offset
          @Limit = limit
          @ResourceConfigVersion = resourceconfigversion
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @DESCByJobConfigCreateTime = params['DESCByJobConfigCreateTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ResourceConfigVersion = params['ResourceConfigVersion']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DescribeResourceRelatedJobs返回参数结构体
      class DescribeResourceRelatedJobsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RefJobInfos: 关联作业信息
        # @type RefJobInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RefJobInfos, :RequestId

        def initialize(totalcount=nil, refjobinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @RefJobInfos = refjobinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RefJobInfos'].nil?
            @RefJobInfos = []
            params['RefJobInfos'].each do |i|
              resourcerefjobinfo_tmp = ResourceRefJobInfo.new
              resourcerefjobinfo_tmp.deserialize(i)
              @RefJobInfos << resourcerefjobinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResources请求参数结构体
      class DescribeResourcesRequest < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 需要查询的资源ID数组，数量不超过100个。如果填写了该参数则忽略Filters参数。
        # @type ResourceIds: Array
        # @param Offset: 偏移量，仅当设置 Limit 参数时有效
        # @type Offset: Integer
        # @param Limit: 条数限制。如果不填，默认返回 20 条
        # @type Limit: Integer
        # @param Filters: <li><strong>ResourceName</strong></li>
        # <p style="padding-left: 30px;">按照资源名字过滤，支持模糊过滤。传入的过滤名字不超过5个</p><p style="padding-left: 30px;">类型: String</p><p style="padding-left: 30px;">必选: 否</p>
        # @type Filters: Array
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :ResourceIds, :Offset, :Limit, :Filters, :WorkSpaceId

        def initialize(resourceids=nil, offset=nil, limit=nil, filters=nil, workspaceid=nil)
          @ResourceIds = resourceids
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DescribeResources返回参数结构体
      class DescribeResourcesResponse < TencentCloud::Common::AbstractModel
        # @param ResourceSet: 资源详细信息集合
        # @type ResourceSet: Array
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceSet, :TotalCount, :RequestId

        def initialize(resourceset=nil, totalcount=nil, requestid=nil)
          @ResourceSet = resourceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResourceSet'].nil?
            @ResourceSet = []
            params['ResourceSet'].each do |i|
              resourceitem_tmp = ResourceItem.new
              resourceitem_tmp.deserialize(i)
              @ResourceSet << resourceitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSystemResources请求参数结构体
      class DescribeSystemResourcesRequest < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 需要查询的资源ID数组
        # @type ResourceIds: Array
        # @param Offset: 偏移量，仅当设置 Limit 参数时有效
        # @type Offset: Integer
        # @param Limit: 条数限制，默认返回 20 条
        # @type Limit: Integer
        # @param Filters: 查询资源配置列表， 如果不填写，返回该 ResourceIds.N 下所有作业配置列表
        # @type Filters: Array
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param FlinkVersion: 查询对应Flink版本的内置connector
        # @type FlinkVersion: String

        attr_accessor :ResourceIds, :Offset, :Limit, :Filters, :ClusterId, :FlinkVersion

        def initialize(resourceids=nil, offset=nil, limit=nil, filters=nil, clusterid=nil, flinkversion=nil)
          @ResourceIds = resourceids
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @ClusterId = clusterid
          @FlinkVersion = flinkversion
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @ClusterId = params['ClusterId']
          @FlinkVersion = params['FlinkVersion']
        end
      end

      # DescribeSystemResources返回参数结构体
      class DescribeSystemResourcesResponse < TencentCloud::Common::AbstractModel
        # @param ResourceSet: 资源详细信息集合
        # @type ResourceSet: Array
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceSet, :TotalCount, :RequestId

        def initialize(resourceset=nil, totalcount=nil, requestid=nil)
          @ResourceSet = resourceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResourceSet'].nil?
            @ResourceSet = []
            params['ResourceSet'].each do |i|
              systemresourceitem_tmp = SystemResourceItem.new
              systemresourceitem_tmp.deserialize(i)
              @ResourceSet << systemresourceitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTreeJobs请求参数结构体
      class DescribeTreeJobsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 筛选条件字段
        # @type Filters: Array
        # @param WorkSpaceId: 工作空间 Serialid
        # @type WorkSpaceId: String

        attr_accessor :Filters, :WorkSpaceId

        def initialize(filters=nil, workspaceid=nil)
          @Filters = filters
          @WorkSpaceId = workspaceid
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
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # DescribeTreeJobs返回参数结构体
      class DescribeTreeJobsResponse < TencentCloud::Common::AbstractModel
        # @param ParentId: 父节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentId: String
        # @param Id: 当前文件夹ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Name: 当前文件夹名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param JobSet: 当前文件夹下的作业列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobSet: Array
        # @param Children: 迭代子目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Children: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ParentId, :Id, :Name, :JobSet, :Children, :RequestId

        def initialize(parentid=nil, id=nil, name=nil, jobset=nil, children=nil, requestid=nil)
          @ParentId = parentid
          @Id = id
          @Name = name
          @JobSet = jobset
          @Children = children
          @RequestId = requestid
        end

        def deserialize(params)
          @ParentId = params['ParentId']
          @Id = params['Id']
          @Name = params['Name']
          unless params['JobSet'].nil?
            @JobSet = []
            params['JobSet'].each do |i|
              treejobsets_tmp = TreeJobSets.new
              treejobsets_tmp.deserialize(i)
              @JobSet << treejobsets_tmp
            end
          end
          unless params['Children'].nil?
            @Children = []
            params['Children'].each do |i|
              describetreejobsrsp_tmp = DescribeTreeJobsRsp.new
              describetreejobsrsp_tmp.deserialize(i)
              @Children << describetreejobsrsp_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 自定义树结构遍历子节点
      class DescribeTreeJobsRsp < TencentCloud::Common::AbstractModel
        # @param ParentId: 父节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentId: String
        # @param Id: 当前文件夹ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Name: 当前文件夹名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param JobSet: 当前文件夹下的作业集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobSet: Array
        # @param Children: 迭代子目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Children: Array
        # @param RequestId: 请求ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestId: String

        attr_accessor :ParentId, :Id, :Name, :JobSet, :Children, :RequestId

        def initialize(parentid=nil, id=nil, name=nil, jobset=nil, children=nil, requestid=nil)
          @ParentId = parentid
          @Id = id
          @Name = name
          @JobSet = jobset
          @Children = children
          @RequestId = requestid
        end

        def deserialize(params)
          @ParentId = params['ParentId']
          @Id = params['Id']
          @Name = params['Name']
          unless params['JobSet'].nil?
            @JobSet = []
            params['JobSet'].each do |i|
              treejobsets_tmp = TreeJobSets.new
              treejobsets_tmp.deserialize(i)
              @JobSet << treejobsets_tmp
            end
          end
          unless params['Children'].nil?
            @Children = []
            params['Children'].each do |i|
              describetreejobsrsp_tmp = DescribeTreeJobsRsp.new
              describetreejobsrsp_tmp.deserialize(i)
              @Children << describetreejobsrsp_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTreeResources请求参数结构体
      class DescribeTreeResourcesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 筛选条件字段
        # @type Filters: Array
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String
        # @param Offset: 分页游标
        # @type Offset: Integer
        # @param Limit: 单页显示数
        # @type Limit: Integer

        attr_accessor :Filters, :WorkSpaceId, :Offset, :Limit

        def initialize(filters=nil, workspaceid=nil, offset=nil, limit=nil)
          @Filters = filters
          @WorkSpaceId = workspaceid
          @Offset = offset
          @Limit = limit
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
          @WorkSpaceId = params['WorkSpaceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTreeResources返回参数结构体
      class DescribeTreeResourcesResponse < TencentCloud::Common::AbstractModel
        # @param ParentId: 父节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentId: String
        # @param Id: 文件夹ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Name: 文件夹名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Items: 文件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param Children: 子目录列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Children: Array
        # @param TotalCount: 资源总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ParentId, :Id, :Name, :Items, :Children, :TotalCount, :RequestId

        def initialize(parentid=nil, id=nil, name=nil, items=nil, children=nil, totalcount=nil, requestid=nil)
          @ParentId = parentid
          @Id = id
          @Name = name
          @Items = items
          @Children = children
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @ParentId = params['ParentId']
          @Id = params['Id']
          @Name = params['Name']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              treeresourceitem_tmp = TreeResourceItem.new
              treeresourceitem_tmp.deserialize(i)
              @Items << treeresourceitem_tmp
            end
          end
          unless params['Children'].nil?
            @Children = []
            params['Children'].each do |i|
              describetreeresourcesrsp_tmp = DescribeTreeResourcesRsp.new
              describetreeresourcesrsp_tmp.deserialize(i)
              @Children << describetreeresourcesrsp_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 树状结构资源列表对象
      class DescribeTreeResourcesRsp < TencentCloud::Common::AbstractModel
        # @param ParentId: 父节点ID
        # @type ParentId: String
        # @param Id: 文件夹ID
        # @type Id: String
        # @param Name: 文件夹名称
        # @type Name: String
        # @param Items: 文件夹下资源数字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param Children: 子节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Children: Array
        # @param TotalCount: 资源总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer

        attr_accessor :ParentId, :Id, :Name, :Items, :Children, :TotalCount

        def initialize(parentid=nil, id=nil, name=nil, items=nil, children=nil, totalcount=nil)
          @ParentId = parentid
          @Id = id
          @Name = name
          @Items = items
          @Children = children
          @TotalCount = totalcount
        end

        def deserialize(params)
          @ParentId = params['ParentId']
          @Id = params['Id']
          @Name = params['Name']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              treeresourceitem_tmp = TreeResourceItem.new
              treeresourceitem_tmp.deserialize(i)
              @Items << treeresourceitem_tmp
            end
          end
          unless params['Children'].nil?
            @Children = []
            params['Children'].each do |i|
              describetreeresourcesrsp_tmp = DescribeTreeResourcesRsp.new
              describetreeresourcesrsp_tmp.deserialize(i)
              @Children << describetreeresourcesrsp_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # DescribeWorkSpaces请求参数结构体
      class DescribeWorkSpacesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认 0
        # @type Offset: Integer
        # @param OrderType: 1 按照创建时间降序排序(默认) 2.按照创建时间升序排序，3. 按照状态降序排序 4. 按照状态升序排序 默认为0
        # @type OrderType: Integer
        # @param Limit: 请求的集群数量，默认 20
        # @type Limit: Integer
        # @param Filters: 过滤规则
        # @type Filters: Array

        attr_accessor :Offset, :OrderType, :Limit, :Filters

        def initialize(offset=nil, ordertype=nil, limit=nil, filters=nil)
          @Offset = offset
          @OrderType = ordertype
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @OrderType = params['OrderType']
          @Limit = params['Limit']
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

      # DescribeWorkSpaces返回参数结构体
      class DescribeWorkSpacesResponse < TencentCloud::Common::AbstractModel
        # @param WorkSpaceSetItem: 空间详情列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkSpaceSetItem: Array
        # @param TotalCount: 空间总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkSpaceSetItem, :TotalCount, :RequestId

        def initialize(workspacesetitem=nil, totalcount=nil, requestid=nil)
          @WorkSpaceSetItem = workspacesetitem
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WorkSpaceSetItem'].nil?
            @WorkSpaceSetItem = []
            params['WorkSpaceSetItem'].each do |i|
              workspacesetitem_tmp = WorkSpaceSetItem.new
              workspacesetitem_tmp.deserialize(i)
              @WorkSpaceSetItem << workspacesetitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 作业配置 -- 专家模式的详细配置
      class ExpertModeConfiguration < TencentCloud::Common::AbstractModel
        # @param JobGraph: Job graph
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobGraph: :class:`Tencentcloud::Oceanus.v20190422.models.JobGraph`
        # @param NodeConfig: Node configuration
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeConfig: Array
        # @param SlotSharingGroups: Slot sharing groups
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlotSharingGroups: Array

        attr_accessor :JobGraph, :NodeConfig, :SlotSharingGroups

        def initialize(jobgraph=nil, nodeconfig=nil, slotsharinggroups=nil)
          @JobGraph = jobgraph
          @NodeConfig = nodeconfig
          @SlotSharingGroups = slotsharinggroups
        end

        def deserialize(params)
          unless params['JobGraph'].nil?
            @JobGraph = JobGraph.new
            @JobGraph.deserialize(params['JobGraph'])
          end
          unless params['NodeConfig'].nil?
            @NodeConfig = []
            params['NodeConfig'].each do |i|
              nodeconfig_tmp = NodeConfig.new
              nodeconfig_tmp.deserialize(i)
              @NodeConfig << nodeconfig_tmp
            end
          end
          unless params['SlotSharingGroups'].nil?
            @SlotSharingGroups = []
            params['SlotSharingGroups'].each do |i|
              slotsharinggroup_tmp = SlotSharingGroup.new
              slotsharinggroup_tmp.deserialize(i)
              @SlotSharingGroups << slotsharinggroup_tmp
            end
          end
        end
      end

      # FetchSqlGatewayStatementResult请求参数结构体
      class FetchSqlGatewayStatementResultRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param SessionId: Sql Gateway会话ID
        # @type SessionId: String
        # @param OperationHandleId: sql的查询id
        # @type OperationHandleId: String
        # @param ResultUri: 下一条结果的获取url，首次获取执行结果时可以为空，当获取下一批查询结果时需要传递
        # @type ResultUri: String

        attr_accessor :ClusterId, :SessionId, :OperationHandleId, :ResultUri

        def initialize(clusterid=nil, sessionid=nil, operationhandleid=nil, resulturi=nil)
          @ClusterId = clusterid
          @SessionId = sessionid
          @OperationHandleId = operationhandleid
          @ResultUri = resulturi
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SessionId = params['SessionId']
          @OperationHandleId = params['OperationHandleId']
          @ResultUri = params['ResultUri']
        end
      end

      # FetchSqlGatewayStatementResult返回参数结构体
      class FetchSqlGatewayStatementResultResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMessage: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: Array
        # @param ResultType: 返回类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultType: String
        # @param IsQueryResult: 是否DQL结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsQueryResult: Boolean
        # @param ResultKind: 结果类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultKind: String
        # @param Results: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: :class:`Tencentcloud::Oceanus.v20190422.models.StatementResult`
        # @param NextResultUri: 下一次请求的uri
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextResultUri: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMessage, :ResultType, :IsQueryResult, :ResultKind, :Results, :NextResultUri, :RequestId

        def initialize(errormessage=nil, resulttype=nil, isqueryresult=nil, resultkind=nil, results=nil, nextresulturi=nil, requestid=nil)
          @ErrorMessage = errormessage
          @ResultType = resulttype
          @IsQueryResult = isqueryresult
          @ResultKind = resultkind
          @Results = results
          @NextResultUri = nextresulturi
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMessage = params['ErrorMessage']
          @ResultType = params['ResultType']
          @IsQueryResult = params['IsQueryResult']
          @ResultKind = params['ResultKind']
          unless params['Results'].nil?
            @Results = StatementResult.new
            @Results.deserialize(params['Results'])
          end
          @NextResultUri = params['NextResultUri']
          @RequestId = params['RequestId']
        end
      end

      # 查询作业列表时的过滤器
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 要过滤的字段
        # @type Name: String
        # @param Values: 字段的过滤值
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

      # Gateway引用资源信息
      class GatewayRefItem < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 空间唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: String
        # @param ResourceId: 资源唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param Version: 版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: Integer
        # @param Type: 引用类型，0:用户资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer

        attr_accessor :WorkspaceId, :ResourceId, :Version, :Type

        def initialize(workspaceid=nil, resourceid=nil, version=nil, type=nil)
          @WorkspaceId = workspaceid
          @ResourceId = resourceid
          @Version = version
          @Type = type
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @ResourceId = params['ResourceId']
          @Version = params['Version']
          @Type = params['Type']
        end
      end

      # GetMetaTable请求参数结构体
      class GetMetaTableRequest < TencentCloud::Common::AbstractModel
        # @param Catalog: 目录名
        # @type Catalog: String
        # @param Database: 库名
        # @type Database: String
        # @param Table: 表名
        # @type Table: String
        # @param WorkSpaceId: 空间唯一标识
        # @type WorkSpaceId: String

        attr_accessor :Catalog, :Database, :Table, :WorkSpaceId

        def initialize(catalog=nil, database=nil, table=nil, workspaceid=nil)
          @Catalog = catalog
          @Database = database
          @Table = table
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @Catalog = params['Catalog']
          @Database = params['Database']
          @Table = params['Table']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # GetMetaTable返回参数结构体
      class GetMetaTableResponse < TencentCloud::Common::AbstractModel
        # @param SerialId: 元数据表唯一标识
        # @type SerialId: String
        # @param Catalog: 目录名
        # @type Catalog: String
        # @param Database: 库名
        # @type Database: String
        # @param Table: 表名
        # @type Table: String
        # @param DDL: 建表语句,使用 Base64 编码。
        # 例如
        # Q1JFQVRFIFRBQkxFIGRhdGFnZW5fc291cmNlX3RhYmxlICggCiAgICBpZCBJTlQsIAogICAgbmFtZSBTVFJJTkcgCikgV0lUSCAoCidjb25uZWN0b3InPSdkYXRhZ2VuJywKJ3Jvd3MtcGVyLXNlY29uZCcgPSAnMScKKTs=
        # @type DDL: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SerialId, :Catalog, :Database, :Table, :DDL, :CreateTime, :RequestId

        def initialize(serialid=nil, catalog=nil, database=nil, table=nil, ddl=nil, createtime=nil, requestid=nil)
          @SerialId = serialid
          @Catalog = catalog
          @Database = database
          @Table = table
          @DDL = ddl
          @CreateTime = createtime
          @RequestId = requestid
        end

        def deserialize(params)
          @SerialId = params['SerialId']
          @Catalog = params['Catalog']
          @Database = params['Database']
          @Table = params['Table']
          @DDL = params['DDL']
          @CreateTime = params['CreateTime']
          @RequestId = params['RequestId']
        end
      end

      # 作业配置详情
      class JobConfig < TencentCloud::Common::AbstractModel
        # @param JobId: 作业Id
        # @type JobId: String
        # @param EntrypointClass: 主类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EntrypointClass: String
        # @param ProgramArgs: 主类入参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProgramArgs: String
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param CreateTime: 作业配置创建时间
        # @type CreateTime: String
        # @param Version: 作业配置的版本号
        # @type Version: Integer
        # @param DefaultParallelism: 作业默认并行度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultParallelism: Integer
        # @param Properties: 系统参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array
        # @param ResourceRefDetails: 引用资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceRefDetails: Array
        # @param CreatorUin: 创建者uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorUin: String
        # @param UpdateTime: 作业配置上次启动时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param COSBucket: 作业绑定的存储桶
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type COSBucket: String
        # @param LogCollect: 是否启用日志收集，0-未启用，1-已启用，2-历史集群未设置日志集，3-历史集群已开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogCollect: Integer
        # @param MaxParallelism: 作业的最大并行度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxParallelism: Integer
        # @param JobManagerSpec: JobManager规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobManagerSpec: Float
        # @param TaskManagerSpec: TaskManager规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskManagerSpec: Float
        # @param ClsLogsetId: CLS日志集ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClsLogsetId: String
        # @param ClsTopicId: CLS日志主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClsTopicId: String
        # @param PythonVersion: pyflink作业运行的python版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PythonVersion: String
        # @param AutoRecover: Oceanus 平台恢复作业开关 1:开启 -1: 关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRecover: Integer
        # @param LogLevel: 日志级别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogLevel: String
        # @param ClazzLevels: 类日志级别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClazzLevels: Array
        # @param ExpertModeOn: 是否开启专家模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpertModeOn: Boolean
        # @param ExpertModeConfiguration: 专家模式的配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpertModeConfiguration: :class:`Tencentcloud::Oceanus.v20190422.models.ExpertModeConfiguration`
        # @param TraceModeOn: trace链路
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TraceModeOn: Boolean
        # @param TraceModeConfiguration: trace链路配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TraceModeConfiguration: :class:`Tencentcloud::Oceanus.v20190422.models.TraceModeConfiguration`
        # @param CheckpointRetainedNum: checkpoint保留个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckpointRetainedNum: Integer
        # @param JobGraph: 算子拓扑图
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobGraph: :class:`Tencentcloud::Oceanus.v20190422.models.JobGraph`
        # @param EsServerlessIndex: es索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EsServerlessIndex: String
        # @param EsServerlessSpace: es空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EsServerlessSpace: String

        attr_accessor :JobId, :EntrypointClass, :ProgramArgs, :Remark, :CreateTime, :Version, :DefaultParallelism, :Properties, :ResourceRefDetails, :CreatorUin, :UpdateTime, :COSBucket, :LogCollect, :MaxParallelism, :JobManagerSpec, :TaskManagerSpec, :ClsLogsetId, :ClsTopicId, :PythonVersion, :AutoRecover, :LogLevel, :ClazzLevels, :ExpertModeOn, :ExpertModeConfiguration, :TraceModeOn, :TraceModeConfiguration, :CheckpointRetainedNum, :JobGraph, :EsServerlessIndex, :EsServerlessSpace

        def initialize(jobid=nil, entrypointclass=nil, programargs=nil, remark=nil, createtime=nil, version=nil, defaultparallelism=nil, properties=nil, resourcerefdetails=nil, creatoruin=nil, updatetime=nil, cosbucket=nil, logcollect=nil, maxparallelism=nil, jobmanagerspec=nil, taskmanagerspec=nil, clslogsetid=nil, clstopicid=nil, pythonversion=nil, autorecover=nil, loglevel=nil, clazzlevels=nil, expertmodeon=nil, expertmodeconfiguration=nil, tracemodeon=nil, tracemodeconfiguration=nil, checkpointretainednum=nil, jobgraph=nil, esserverlessindex=nil, esserverlessspace=nil)
          @JobId = jobid
          @EntrypointClass = entrypointclass
          @ProgramArgs = programargs
          @Remark = remark
          @CreateTime = createtime
          @Version = version
          @DefaultParallelism = defaultparallelism
          @Properties = properties
          @ResourceRefDetails = resourcerefdetails
          @CreatorUin = creatoruin
          @UpdateTime = updatetime
          @COSBucket = cosbucket
          @LogCollect = logcollect
          @MaxParallelism = maxparallelism
          @JobManagerSpec = jobmanagerspec
          @TaskManagerSpec = taskmanagerspec
          @ClsLogsetId = clslogsetid
          @ClsTopicId = clstopicid
          @PythonVersion = pythonversion
          @AutoRecover = autorecover
          @LogLevel = loglevel
          @ClazzLevels = clazzlevels
          @ExpertModeOn = expertmodeon
          @ExpertModeConfiguration = expertmodeconfiguration
          @TraceModeOn = tracemodeon
          @TraceModeConfiguration = tracemodeconfiguration
          @CheckpointRetainedNum = checkpointretainednum
          @JobGraph = jobgraph
          @EsServerlessIndex = esserverlessindex
          @EsServerlessSpace = esserverlessspace
        end

        def deserialize(params)
          @JobId = params['JobId']
          @EntrypointClass = params['EntrypointClass']
          @ProgramArgs = params['ProgramArgs']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @Version = params['Version']
          @DefaultParallelism = params['DefaultParallelism']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Properties << property_tmp
            end
          end
          unless params['ResourceRefDetails'].nil?
            @ResourceRefDetails = []
            params['ResourceRefDetails'].each do |i|
              resourcerefdetail_tmp = ResourceRefDetail.new
              resourcerefdetail_tmp.deserialize(i)
              @ResourceRefDetails << resourcerefdetail_tmp
            end
          end
          @CreatorUin = params['CreatorUin']
          @UpdateTime = params['UpdateTime']
          @COSBucket = params['COSBucket']
          @LogCollect = params['LogCollect']
          @MaxParallelism = params['MaxParallelism']
          @JobManagerSpec = params['JobManagerSpec']
          @TaskManagerSpec = params['TaskManagerSpec']
          @ClsLogsetId = params['ClsLogsetId']
          @ClsTopicId = params['ClsTopicId']
          @PythonVersion = params['PythonVersion']
          @AutoRecover = params['AutoRecover']
          @LogLevel = params['LogLevel']
          unless params['ClazzLevels'].nil?
            @ClazzLevels = []
            params['ClazzLevels'].each do |i|
              clazzlevel_tmp = ClazzLevel.new
              clazzlevel_tmp.deserialize(i)
              @ClazzLevels << clazzlevel_tmp
            end
          end
          @ExpertModeOn = params['ExpertModeOn']
          unless params['ExpertModeConfiguration'].nil?
            @ExpertModeConfiguration = ExpertModeConfiguration.new
            @ExpertModeConfiguration.deserialize(params['ExpertModeConfiguration'])
          end
          @TraceModeOn = params['TraceModeOn']
          unless params['TraceModeConfiguration'].nil?
            @TraceModeConfiguration = TraceModeConfiguration.new
            @TraceModeConfiguration.deserialize(params['TraceModeConfiguration'])
          end
          @CheckpointRetainedNum = params['CheckpointRetainedNum']
          unless params['JobGraph'].nil?
            @JobGraph = JobGraph.new
            @JobGraph.deserialize(params['JobGraph'])
          end
          @EsServerlessIndex = params['EsServerlessIndex']
          @EsServerlessSpace = params['EsServerlessSpace']
        end
      end

      # 描述作业发生的一个事件
      class JobEvent < TencentCloud::Common::AbstractModel
        # @param Type: 内部定义的事件类型
        # @type Type: String
        # @param Description: 事件类型的说明文字
        # @type Description: String
        # @param Timestamp: 事件发生的 Unix 时间戳（秒）
        # @type Timestamp: Integer
        # @param RunningOrderId: 事件发生时的运行 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunningOrderId: Integer
        # @param Message: 事件的一些可选说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param SolutionLink: 异常事件的排查手册链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SolutionLink: String

        attr_accessor :Type, :Description, :Timestamp, :RunningOrderId, :Message, :SolutionLink

        def initialize(type=nil, description=nil, timestamp=nil, runningorderid=nil, message=nil, solutionlink=nil)
          @Type = type
          @Description = description
          @Timestamp = timestamp
          @RunningOrderId = runningorderid
          @Message = message
          @SolutionLink = solutionlink
        end

        def deserialize(params)
          @Type = params['Type']
          @Description = params['Description']
          @Timestamp = params['Timestamp']
          @RunningOrderId = params['RunningOrderId']
          @Message = params['Message']
          @SolutionLink = params['SolutionLink']
        end
      end

      # 事件信息
      class JobEventInfo < TencentCloud::Common::AbstractModel
        # @param ErrorEventTotal: 异常事件总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorEventTotal: Integer

        attr_accessor :ErrorEventTotal

        def initialize(erroreventtotal=nil)
          @ErrorEventTotal = erroreventtotal
        end

        def deserialize(params)
          @ErrorEventTotal = params['ErrorEventTotal']
        end
      end

      # 作业运行图
      class JobGraph < TencentCloud::Common::AbstractModel
        # @param Nodes: 运行图的点集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nodes: Array
        # @param Edges: 运行图的边集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Edges: Array

        attr_accessor :Nodes, :Edges

        def initialize(nodes=nil, edges=nil)
          @Nodes = nodes
          @Edges = edges
        end

        def deserialize(params)
          unless params['Nodes'].nil?
            @Nodes = []
            params['Nodes'].each do |i|
              jobgraphnode_tmp = JobGraphNode.new
              jobgraphnode_tmp.deserialize(i)
              @Nodes << jobgraphnode_tmp
            end
          end
          unless params['Edges'].nil?
            @Edges = []
            params['Edges'].each do |i|
              jobgraphedge_tmp = JobGraphEdge.new
              jobgraphedge_tmp.deserialize(i)
              @Edges << jobgraphedge_tmp
            end
          end
        end
      end

      # Flink Job 运行图的边信息
      class JobGraphEdge < TencentCloud::Common::AbstractModel
        # @param Source: 边的起始节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: Integer
        # @param Target: 边的目标节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Target: Integer

        attr_accessor :Source, :Target

        def initialize(source=nil, target=nil)
          @Source = source
          @Target = target
        end

        def deserialize(params)
          @Source = params['Source']
          @Target = params['Target']
        end
      end

      # Flink Job 运行图的点信息
      class JobGraphNode < TencentCloud::Common::AbstractModel
        # @param Id: 节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Description: 节点描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Name: 节点名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Parallelism: 节点并行度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Parallelism: Integer

        attr_accessor :Id, :Description, :Name, :Parallelism

        def initialize(id=nil, description=nil, name=nil, parallelism=nil)
          @Id = id
          @Description = description
          @Name = name
          @Parallelism = parallelism
        end

        def deserialize(params)
          @Id = params['Id']
          @Description = params['Description']
          @Name = params['Name']
          @Parallelism = params['Parallelism']
        end
      end

      # 搜索启动日志时返回的作业实例
      class JobInstanceForSubmissionLog < TencentCloud::Common::AbstractModel
        # @param RunningOrderId: 实例的Id, 按照启动的时间顺序，从1开始
        # @type RunningOrderId: Integer
        # @param JobInstanceStartTime: 作业实例的启动时间
        # @type JobInstanceStartTime: String
        # @param StartingMillis: 作业实例启动的时间（毫秒）
        # @type StartingMillis: Integer

        attr_accessor :RunningOrderId, :JobInstanceStartTime, :StartingMillis

        def initialize(runningorderid=nil, jobinstancestarttime=nil, startingmillis=nil)
          @RunningOrderId = runningorderid
          @JobInstanceStartTime = jobinstancestarttime
          @StartingMillis = startingmillis
        end

        def deserialize(params)
          @RunningOrderId = params['RunningOrderId']
          @JobInstanceStartTime = params['JobInstanceStartTime']
          @StartingMillis = params['StartingMillis']
        end
      end

      # Job详细信息
      class JobV1 < TencentCloud::Common::AbstractModel
        # @param JobId: 作业ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Zone: 可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param AppId: 用户AppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param OwnerUin: 用户UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param CreatorUin: 创建者UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorUin: String
        # @param Name: 作业名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param JobType: 作业类型，1：sql作业，2：Jar作业
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobType: Integer
        # @param Status: 作业状态，1：未初始化，2：未发布，3：操作中，4：运行中，5：停止，6：暂停，-1：故障
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateTime: 作业创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param StartTime: 作业启动时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param StopTime: 作业停止时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StopTime: String
        # @param UpdateTime: 作业更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param TotalRunMillis: 作业累计运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalRunMillis: Integer
        # @param Remark: 备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param LastOpResult: 操作错误提示信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastOpResult: String
        # @param ClusterName: 集群名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param LatestJobConfigVersion: 最新配置版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestJobConfigVersion: Integer
        # @param PublishedJobConfigVersion: 已发布的配置版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublishedJobConfigVersion: Integer
        # @param RunningCuNum: 运行的CU数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunningCuNum: Integer
        # @param CuMem: 作业内存规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CuMem: Integer
        # @param StatusDesc: 作业状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param CurrentRunMillis: 运行状态时表示单次运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentRunMillis: Integer
        # @param ClusterId: 作业所在的集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param WebUIUrl: 作业管理WEB UI 入口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebUIUrl: String
        # @param SchedulerType: 作业所在集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerType: Integer
        # @param ClusterStatus: 作业所在集群状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterStatus: Integer
        # @param RunningCu: 细粒度下的运行的CU数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunningCu: Float
        # @param FlinkVersion: 作业运行的 Flink 版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlinkVersion: String
        # @param WorkSpaceId: 工作空间 SerialId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkSpaceId: String
        # @param WorkSpaceName: 工作空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkSpaceName: String
        # @param Tags: 作业标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param EventInfo: 作业异常事件信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventInfo: :class:`Tencentcloud::Oceanus.v20190422.models.JobEventInfo`

        attr_accessor :JobId, :Region, :Zone, :AppId, :OwnerUin, :CreatorUin, :Name, :JobType, :Status, :CreateTime, :StartTime, :StopTime, :UpdateTime, :TotalRunMillis, :Remark, :LastOpResult, :ClusterName, :LatestJobConfigVersion, :PublishedJobConfigVersion, :RunningCuNum, :CuMem, :StatusDesc, :CurrentRunMillis, :ClusterId, :WebUIUrl, :SchedulerType, :ClusterStatus, :RunningCu, :FlinkVersion, :WorkSpaceId, :WorkSpaceName, :Tags, :EventInfo

        def initialize(jobid=nil, region=nil, zone=nil, appid=nil, owneruin=nil, creatoruin=nil, name=nil, jobtype=nil, status=nil, createtime=nil, starttime=nil, stoptime=nil, updatetime=nil, totalrunmillis=nil, remark=nil, lastopresult=nil, clustername=nil, latestjobconfigversion=nil, publishedjobconfigversion=nil, runningcunum=nil, cumem=nil, statusdesc=nil, currentrunmillis=nil, clusterid=nil, webuiurl=nil, schedulertype=nil, clusterstatus=nil, runningcu=nil, flinkversion=nil, workspaceid=nil, workspacename=nil, tags=nil, eventinfo=nil)
          @JobId = jobid
          @Region = region
          @Zone = zone
          @AppId = appid
          @OwnerUin = owneruin
          @CreatorUin = creatoruin
          @Name = name
          @JobType = jobtype
          @Status = status
          @CreateTime = createtime
          @StartTime = starttime
          @StopTime = stoptime
          @UpdateTime = updatetime
          @TotalRunMillis = totalrunmillis
          @Remark = remark
          @LastOpResult = lastopresult
          @ClusterName = clustername
          @LatestJobConfigVersion = latestjobconfigversion
          @PublishedJobConfigVersion = publishedjobconfigversion
          @RunningCuNum = runningcunum
          @CuMem = cumem
          @StatusDesc = statusdesc
          @CurrentRunMillis = currentrunmillis
          @ClusterId = clusterid
          @WebUIUrl = webuiurl
          @SchedulerType = schedulertype
          @ClusterStatus = clusterstatus
          @RunningCu = runningcu
          @FlinkVersion = flinkversion
          @WorkSpaceId = workspaceid
          @WorkSpaceName = workspacename
          @Tags = tags
          @EventInfo = eventinfo
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Region = params['Region']
          @Zone = params['Zone']
          @AppId = params['AppId']
          @OwnerUin = params['OwnerUin']
          @CreatorUin = params['CreatorUin']
          @Name = params['Name']
          @JobType = params['JobType']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @StopTime = params['StopTime']
          @UpdateTime = params['UpdateTime']
          @TotalRunMillis = params['TotalRunMillis']
          @Remark = params['Remark']
          @LastOpResult = params['LastOpResult']
          @ClusterName = params['ClusterName']
          @LatestJobConfigVersion = params['LatestJobConfigVersion']
          @PublishedJobConfigVersion = params['PublishedJobConfigVersion']
          @RunningCuNum = params['RunningCuNum']
          @CuMem = params['CuMem']
          @StatusDesc = params['StatusDesc']
          @CurrentRunMillis = params['CurrentRunMillis']
          @ClusterId = params['ClusterId']
          @WebUIUrl = params['WebUIUrl']
          @SchedulerType = params['SchedulerType']
          @ClusterStatus = params['ClusterStatus']
          @RunningCu = params['RunningCu']
          @FlinkVersion = params['FlinkVersion']
          @WorkSpaceId = params['WorkSpaceId']
          @WorkSpaceName = params['WorkSpaceName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['EventInfo'].nil?
            @EventInfo = JobEventInfo.new
            @EventInfo.deserialize(params['EventInfo'])
          end
        end
      end

      # 日志查询的每行日志信息
      class LogContent < TencentCloud::Common::AbstractModel
        # @param Log: 日志内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Log: String
        # @param Time: 毫秒级时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: Integer
        # @param PkgId: 日志组Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgId: String
        # @param PkgLogId: 日志Id，在日志组范围里唯一
        # @type PkgLogId: Integer
        # @param ContainerName: 日志所属的容器名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerName: String

        attr_accessor :Log, :Time, :PkgId, :PkgLogId, :ContainerName

        def initialize(log=nil, time=nil, pkgid=nil, pkglogid=nil, containername=nil)
          @Log = log
          @Time = time
          @PkgId = pkgid
          @PkgLogId = pkglogid
          @ContainerName = containername
        end

        def deserialize(params)
          @Log = params['Log']
          @Time = params['Time']
          @PkgId = params['PkgId']
          @PkgLogId = params['PkgLogId']
          @ContainerName = params['ContainerName']
        end
      end

      # SqlGateway返回LogicalType类型
      class LogicalType < TencentCloud::Common::AbstractModel
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param NullAble: 是否允许为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NullAble: Boolean
        # @param Length: 长度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Length: Integer

        attr_accessor :Type, :NullAble, :Length

        def initialize(type=nil, nullable=nil, length=nil)
          @Type = type
          @NullAble = nullable
          @Length = length
        end

        def deserialize(params)
          @Type = params['Type']
          @NullAble = params['NullAble']
          @Length = params['Length']
        end
      end

      # ModifyFolder请求参数结构体
      class ModifyFolderRequest < TencentCloud::Common::AbstractModel
        # @param SourceFolderId: 文件夹ID（必填）
        # @type SourceFolderId: String
        # @param TargetFolderId: 如需拖拽文件夹，需传入目标文件夹ID
        # @type TargetFolderId: String
        # @param FolderName: 如需修改文件夹名，需传入FolderName字段
        # @type FolderName: String
        # @param FolderType: 文件夹类型，0是任务文件夹，1是依赖文件夹
        # @type FolderType: Integer
        # @param SourceJobIds: 批量移动的作业serial id 列表
        # @type SourceJobIds: Array
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :SourceFolderId, :TargetFolderId, :FolderName, :FolderType, :SourceJobIds, :WorkSpaceId

        def initialize(sourcefolderid=nil, targetfolderid=nil, foldername=nil, foldertype=nil, sourcejobids=nil, workspaceid=nil)
          @SourceFolderId = sourcefolderid
          @TargetFolderId = targetfolderid
          @FolderName = foldername
          @FolderType = foldertype
          @SourceJobIds = sourcejobids
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @SourceFolderId = params['SourceFolderId']
          @TargetFolderId = params['TargetFolderId']
          @FolderName = params['FolderName']
          @FolderType = params['FolderType']
          @SourceJobIds = params['SourceJobIds']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # ModifyFolder返回参数结构体
      class ModifyFolderResponse < TencentCloud::Common::AbstractModel
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

      # ModifyJob请求参数结构体
      class ModifyJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业Id
        # @type JobId: String
        # @param Name: 作业名称，支持长度小于50的中文/英文/数字/”-”/”_”/”.”，不能重名
        # @type Name: String
        # @param Remark: 描述
        # @type Remark: String
        # @param TargetFolderId: 拖拽文件需传入此参数
        # @type TargetFolderId: String
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :JobId, :Name, :Remark, :TargetFolderId, :WorkSpaceId

        def initialize(jobid=nil, name=nil, remark=nil, targetfolderid=nil, workspaceid=nil)
          @JobId = jobid
          @Name = name
          @Remark = remark
          @TargetFolderId = targetfolderid
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Name = params['Name']
          @Remark = params['Remark']
          @TargetFolderId = params['TargetFolderId']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # ModifyJob返回参数结构体
      class ModifyJobResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWorkSpace请求参数结构体
      class ModifyWorkSpaceRequest < TencentCloud::Common::AbstractModel
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String
        # @param WorkSpaceName: 待修改的工作空间名称
        # @type WorkSpaceName: String
        # @param Description: 待修改的工作空间备注
        # @type Description: String

        attr_accessor :WorkSpaceId, :WorkSpaceName, :Description

        def initialize(workspaceid=nil, workspacename=nil, description=nil)
          @WorkSpaceId = workspaceid
          @WorkSpaceName = workspacename
          @Description = description
        end

        def deserialize(params)
          @WorkSpaceId = params['WorkSpaceId']
          @WorkSpaceName = params['WorkSpaceName']
          @Description = params['Description']
        end
      end

      # ModifyWorkSpace返回参数结构体
      class ModifyWorkSpaceResponse < TencentCloud::Common::AbstractModel
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

      # 专家模式  计算节点的配置信息
      class NodeConfig < TencentCloud::Common::AbstractModel
        # @param Id: Node ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Parallelism: Node parallelism
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Parallelism: Integer
        # @param SlotSharingGroup: Slot sharing group
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlotSharingGroup: String
        # @param Configuration: Configuration properties
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Configuration: Array
        # @param StateTTL: 节点的状态ttl配置, 多个用 ; 分割
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StateTTL: String

        attr_accessor :Id, :Parallelism, :SlotSharingGroup, :Configuration, :StateTTL

        def initialize(id=nil, parallelism=nil, slotsharinggroup=nil, configuration=nil, statettl=nil)
          @Id = id
          @Parallelism = parallelism
          @SlotSharingGroup = slotsharinggroup
          @Configuration = configuration
          @StateTTL = statettl
        end

        def deserialize(params)
          @Id = params['Id']
          @Parallelism = params['Parallelism']
          @SlotSharingGroup = params['SlotSharingGroup']
          unless params['Configuration'].nil?
            @Configuration = []
            params['Configuration'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Configuration << property_tmp
            end
          end
          @StateTTL = params['StateTTL']
        end
      end

      # 集群购买、扩缩容、续费订单信息
      class Order < TencentCloud::Common::AbstractModel
        # @param Type: 创建、续费、扩缩容 1 2 3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param AutoRenewFlag: 自动续费 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewFlag: Integer
        # @param OperateUin: 操作人的UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateUin: String
        # @param ComputeCu: 最终集群的CU数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComputeCu: Integer
        # @param OrderTime: 订单的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderTime: String

        attr_accessor :Type, :AutoRenewFlag, :OperateUin, :ComputeCu, :OrderTime

        def initialize(type=nil, autorenewflag=nil, operateuin=nil, computecu=nil, ordertime=nil)
          @Type = type
          @AutoRenewFlag = autorenewflag
          @OperateUin = operateuin
          @ComputeCu = computecu
          @OrderTime = ordertime
        end

        def deserialize(params)
          @Type = params['Type']
          @AutoRenewFlag = params['AutoRenewFlag']
          @OperateUin = params['OperateUin']
          @ComputeCu = params['ComputeCu']
          @OrderTime = params['OrderTime']
        end
      end

      # 系统配置属性
      class Property < TencentCloud::Common::AbstractModel
        # @param Key: 系统配置的Key
        # @type Key: String
        # @param Value: 系统配置的Value
        # @type Value: String

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # 依赖作业分状态计数信息
      class RefJobStatusCountItem < TencentCloud::Common::AbstractModel
        # @param JobStatus: 作业状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobStatus: Integer
        # @param Count: 作业数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer

        attr_accessor :JobStatus, :Count

        def initialize(jobstatus=nil, count=nil)
          @JobStatus = jobstatus
          @Count = count
        end

        def deserialize(params)
          @JobStatus = params['JobStatus']
          @Count = params['Count']
        end
      end

      # 描述资源配置的返回参数
      class ResourceConfigItem < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param ResourceType: 资源类型
        # @type ResourceType: Integer
        # @param Region: 资源所属地域
        # @type Region: String
        # @param AppId: 资源所属AppId
        # @type AppId: Integer
        # @param OwnerUin: 主账号Uin
        # @type OwnerUin: String
        # @param CreatorUin: 子账号Uin
        # @type CreatorUin: String
        # @param ResourceLoc: 资源位置描述
        # @type ResourceLoc: :class:`Tencentcloud::Oceanus.v20190422.models.ResourceLoc`
        # @param CreateTime: 资源创建时间
        # @type CreateTime: String
        # @param Version: 资源版本
        # @type Version: Integer
        # @param Remark: 资源描述
        # @type Remark: String
        # @param Status: 资源状态：0: 资源同步中，1:资源已就绪
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param RefJobCount: 关联作业个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RefJobCount: Integer
        # @param RefJobStatusCountSet: 分状态统计关联作业数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RefJobStatusCountSet: Array

        attr_accessor :ResourceId, :ResourceType, :Region, :AppId, :OwnerUin, :CreatorUin, :ResourceLoc, :CreateTime, :Version, :Remark, :Status, :RefJobCount, :RefJobStatusCountSet

        def initialize(resourceid=nil, resourcetype=nil, region=nil, appid=nil, owneruin=nil, creatoruin=nil, resourceloc=nil, createtime=nil, version=nil, remark=nil, status=nil, refjobcount=nil, refjobstatuscountset=nil)
          @ResourceId = resourceid
          @ResourceType = resourcetype
          @Region = region
          @AppId = appid
          @OwnerUin = owneruin
          @CreatorUin = creatoruin
          @ResourceLoc = resourceloc
          @CreateTime = createtime
          @Version = version
          @Remark = remark
          @Status = status
          @RefJobCount = refjobcount
          @RefJobStatusCountSet = refjobstatuscountset
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceType = params['ResourceType']
          @Region = params['Region']
          @AppId = params['AppId']
          @OwnerUin = params['OwnerUin']
          @CreatorUin = params['CreatorUin']
          unless params['ResourceLoc'].nil?
            @ResourceLoc = ResourceLoc.new
            @ResourceLoc.deserialize(params['ResourceLoc'])
          end
          @CreateTime = params['CreateTime']
          @Version = params['Version']
          @Remark = params['Remark']
          @Status = params['Status']
          @RefJobCount = params['RefJobCount']
          unless params['RefJobStatusCountSet'].nil?
            @RefJobStatusCountSet = []
            params['RefJobStatusCountSet'].each do |i|
              refjobstatuscountitem_tmp = RefJobStatusCountItem.new
              refjobstatuscountitem_tmp.deserialize(i)
              @RefJobStatusCountSet << refjobstatuscountitem_tmp
            end
          end
        end
      end

      # 资源详细描述
      class ResourceItem < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param Name: 资源名称
        # @type Name: String
        # @param ResourceType: 资源类型
        # @type ResourceType: Integer
        # @param ResourceLoc: 资源位置
        # @type ResourceLoc: :class:`Tencentcloud::Oceanus.v20190422.models.ResourceLoc`
        # @param Region: 资源地域
        # @type Region: String
        # @param AppId: 应用ID
        # @type AppId: Integer
        # @param OwnerUin: 主账号Uin
        # @type OwnerUin: String
        # @param CreatorUin: 子账号Uin
        # @type CreatorUin: String
        # @param CreateTime: 资源创建时间
        # @type CreateTime: String
        # @param UpdateTime: 资源最后更新时间
        # @type UpdateTime: String
        # @param LatestResourceConfigVersion: 资源的资源版本ID
        # @type LatestResourceConfigVersion: Integer
        # @param Remark: 资源备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param VersionCount: 版本个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionCount: Integer
        # @param RefJobCount: 关联作业数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RefJobCount: Integer
        # @param IsJobRun: 作业运行状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsJobRun: Integer
        # @param FileName: 文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param WorkSpaceId: 工作空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkSpaceId: Integer
        # @param RefJobStatusCountSet: 分状态统计关联作业数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RefJobStatusCountSet: Array

        attr_accessor :ResourceId, :Name, :ResourceType, :ResourceLoc, :Region, :AppId, :OwnerUin, :CreatorUin, :CreateTime, :UpdateTime, :LatestResourceConfigVersion, :Remark, :VersionCount, :RefJobCount, :IsJobRun, :FileName, :WorkSpaceId, :RefJobStatusCountSet

        def initialize(resourceid=nil, name=nil, resourcetype=nil, resourceloc=nil, region=nil, appid=nil, owneruin=nil, creatoruin=nil, createtime=nil, updatetime=nil, latestresourceconfigversion=nil, remark=nil, versioncount=nil, refjobcount=nil, isjobrun=nil, filename=nil, workspaceid=nil, refjobstatuscountset=nil)
          @ResourceId = resourceid
          @Name = name
          @ResourceType = resourcetype
          @ResourceLoc = resourceloc
          @Region = region
          @AppId = appid
          @OwnerUin = owneruin
          @CreatorUin = creatoruin
          @CreateTime = createtime
          @UpdateTime = updatetime
          @LatestResourceConfigVersion = latestresourceconfigversion
          @Remark = remark
          @VersionCount = versioncount
          @RefJobCount = refjobcount
          @IsJobRun = isjobrun
          @FileName = filename
          @WorkSpaceId = workspaceid
          @RefJobStatusCountSet = refjobstatuscountset
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Name = params['Name']
          @ResourceType = params['ResourceType']
          unless params['ResourceLoc'].nil?
            @ResourceLoc = ResourceLoc.new
            @ResourceLoc.deserialize(params['ResourceLoc'])
          end
          @Region = params['Region']
          @AppId = params['AppId']
          @OwnerUin = params['OwnerUin']
          @CreatorUin = params['CreatorUin']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @LatestResourceConfigVersion = params['LatestResourceConfigVersion']
          @Remark = params['Remark']
          @VersionCount = params['VersionCount']
          @RefJobCount = params['RefJobCount']
          @IsJobRun = params['IsJobRun']
          @FileName = params['FileName']
          @WorkSpaceId = params['WorkSpaceId']
          unless params['RefJobStatusCountSet'].nil?
            @RefJobStatusCountSet = []
            params['RefJobStatusCountSet'].each do |i|
              refjobstatuscountitem_tmp = RefJobStatusCountItem.new
              refjobstatuscountitem_tmp.deserialize(i)
              @RefJobStatusCountSet << refjobstatuscountitem_tmp
            end
          end
        end
      end

      # 资源位置描述
      class ResourceLoc < TencentCloud::Common::AbstractModel
        # @param StorageType: 资源位置的存储类型，目前只支持1:COS
        # @type StorageType: Integer
        # @param Param: 描述资源位置的json
        # @type Param: :class:`Tencentcloud::Oceanus.v20190422.models.ResourceLocParam`

        attr_accessor :StorageType, :Param

        def initialize(storagetype=nil, param=nil)
          @StorageType = storagetype
          @Param = param
        end

        def deserialize(params)
          @StorageType = params['StorageType']
          unless params['Param'].nil?
            @Param = ResourceLocParam.new
            @Param.deserialize(params['Param'])
          end
        end
      end

      # 资源参数描述
      class ResourceLocParam < TencentCloud::Common::AbstractModel
        # @param Bucket: 资源bucket
        # @type Bucket: String
        # @param Path: 资源路径
        # @type Path: String
        # @param Region: 资源所在地域，如果不填，则使用Resource的Region
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String

        attr_accessor :Bucket, :Path, :Region

        def initialize(bucket=nil, path=nil, region=nil)
          @Bucket = bucket
          @Path = path
          @Region = region
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @Path = params['Path']
          @Region = params['Region']
        end
      end

      # 资源引用参数
      class ResourceRef < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param Version: 资源版本ID，-1表示使用最新版本
        # @type Version: Integer
        # @param Type: 引用资源类型，例如主资源设置为1，代表main class所在的jar包
        # @type Type: Integer

        attr_accessor :ResourceId, :Version, :Type

        def initialize(resourceid=nil, version=nil, type=nil)
          @ResourceId = resourceid
          @Version = version
          @Type = type
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Version = params['Version']
          @Type = params['Type']
        end
      end

      # JobConfig引用资源信息
      class ResourceRefDetail < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源id
        # @type ResourceId: String
        # @param Version: 资源版本，-1表示使用最新版本
        # @type Version: Integer
        # @param Name: 资源名称
        # @type Name: String
        # @param Type: 1: 主资源
        # @type Type: Integer
        # @param SystemProvide: 1: 系统内置资源
        # @type SystemProvide: Integer

        attr_accessor :ResourceId, :Version, :Name, :Type, :SystemProvide

        def initialize(resourceid=nil, version=nil, name=nil, type=nil, systemprovide=nil)
          @ResourceId = resourceid
          @Version = version
          @Name = name
          @Type = type
          @SystemProvide = systemprovide
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Version = params['Version']
          @Name = params['Name']
          @Type = params['Type']
          @SystemProvide = params['SystemProvide']
        end
      end

      # 资源被Job 引用信息
      class ResourceRefJobInfo < TencentCloud::Common::AbstractModel
        # @param JobId: Job id
        # @type JobId: String
        # @param JobConfigVersion: Job配置版本
        # @type JobConfigVersion: Integer
        # @param ResourceVersion: 资源版本
        # @type ResourceVersion: Integer

        attr_accessor :JobId, :JobConfigVersion, :ResourceVersion

        def initialize(jobid=nil, jobconfigversion=nil, resourceversion=nil)
          @JobId = jobid
          @JobConfigVersion = jobconfigversion
          @ResourceVersion = resourceversion
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobConfigVersion = params['JobConfigVersion']
          @ResourceVersion = params['ResourceVersion']
        end
      end

      # Sql Gateway返回Column类型
      class ResultColumn < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param LogicalType: 本地类型描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogicalType: :class:`Tencentcloud::Oceanus.v20190422.models.LogicalType`
        # @param Comment: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String

        attr_accessor :Name, :LogicalType, :Comment

        def initialize(name=nil, logicaltype=nil, comment=nil)
          @Name = name
          @LogicalType = logicaltype
          @Comment = comment
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['LogicalType'].nil?
            @LogicalType = LogicalType.new
            @LogicalType.deserialize(params['LogicalType'])
          end
          @Comment = params['Comment']
        end
      end

      # Sql Gateway返回数据
      class ResultData < TencentCloud::Common::AbstractModel
        # @param Kind: 操作类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Kind: String
        # @param Fields: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fields: Array

        attr_accessor :Kind, :Fields

        def initialize(kind=nil, fields=nil)
          @Kind = kind
          @Fields = fields
        end

        def deserialize(params)
          @Kind = params['Kind']
          @Fields = params['Fields']
        end
      end

      # 角色授权信息
      class RoleAuth < TencentCloud::Common::AbstractModel
        # @param AppId: 用户 AppID
        # @type AppId: Integer
        # @param WorkSpaceSerialId: 工作空间 SerialId
        # @type WorkSpaceSerialId: String
        # @param OwnerUin: 主账号 UIN
        # @type OwnerUin: String
        # @param CreatorUin: 创建者 UIN
        # @type CreatorUin: String
        # @param AuthSubAccountUin: 绑定授权的 UIN
        # @type AuthSubAccountUin: String
        # @param Permission: 对应 role表的id
        # @type Permission: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 最后一次操作时间
        # @type UpdateTime: String
        # @param Status: 2 启用 1 停用
        # @type Status: Integer
        # @param Id: id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param WorkSpaceId: 工作空间id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkSpaceId: Integer
        # @param RoleName: 权限名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleName: String

        attr_accessor :AppId, :WorkSpaceSerialId, :OwnerUin, :CreatorUin, :AuthSubAccountUin, :Permission, :CreateTime, :UpdateTime, :Status, :Id, :WorkSpaceId, :RoleName

        def initialize(appid=nil, workspaceserialid=nil, owneruin=nil, creatoruin=nil, authsubaccountuin=nil, permission=nil, createtime=nil, updatetime=nil, status=nil, id=nil, workspaceid=nil, rolename=nil)
          @AppId = appid
          @WorkSpaceSerialId = workspaceserialid
          @OwnerUin = owneruin
          @CreatorUin = creatoruin
          @AuthSubAccountUin = authsubaccountuin
          @Permission = permission
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Status = status
          @Id = id
          @WorkSpaceId = workspaceid
          @RoleName = rolename
        end

        def deserialize(params)
          @AppId = params['AppId']
          @WorkSpaceSerialId = params['WorkSpaceSerialId']
          @OwnerUin = params['OwnerUin']
          @CreatorUin = params['CreatorUin']
          @AuthSubAccountUin = params['AuthSubAccountUin']
          @Permission = params['Permission']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @Id = params['Id']
          @WorkSpaceId = params['WorkSpaceId']
          @RoleName = params['RoleName']
        end
      end

      # 作业启动详情
      class RunJobDescription < TencentCloud::Common::AbstractModel
        # @param JobId: 作业Id
        # @type JobId: String
        # @param RunType: 运行类型，1：启动，2：恢复
        # @type RunType: Integer
        # @param StartMode: 兼容旧版 SQL 类型作业启动参数：指定数据源消费起始时间点（建议传值）
        # 保证参数为 LATEST、EARLIEST、T+Timestamp （例:T1557394288000）
        # @type StartMode: String
        # @param JobConfigVersion: 当前作业的某个版本
        # （不传默认为非草稿的作业版本）
        # @type JobConfigVersion: Integer
        # @param SavepointPath: Savepoint路径
        # @type SavepointPath: String
        # @param SavepointId: Savepoint的Id
        # @type SavepointId: String
        # @param UseOldSystemConnector: 使用历史版本系统依赖
        # @type UseOldSystemConnector: Boolean
        # @param CustomTimestamp: 自定义时间戳
        # @type CustomTimestamp: Integer

        attr_accessor :JobId, :RunType, :StartMode, :JobConfigVersion, :SavepointPath, :SavepointId, :UseOldSystemConnector, :CustomTimestamp

        def initialize(jobid=nil, runtype=nil, startmode=nil, jobconfigversion=nil, savepointpath=nil, savepointid=nil, useoldsystemconnector=nil, customtimestamp=nil)
          @JobId = jobid
          @RunType = runtype
          @StartMode = startmode
          @JobConfigVersion = jobconfigversion
          @SavepointPath = savepointpath
          @SavepointId = savepointid
          @UseOldSystemConnector = useoldsystemconnector
          @CustomTimestamp = customtimestamp
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RunType = params['RunType']
          @StartMode = params['StartMode']
          @JobConfigVersion = params['JobConfigVersion']
          @SavepointPath = params['SavepointPath']
          @SavepointId = params['SavepointId']
          @UseOldSystemConnector = params['UseOldSystemConnector']
          @CustomTimestamp = params['CustomTimestamp']
        end
      end

      # RunJobs请求参数结构体
      class RunJobsRequest < TencentCloud::Common::AbstractModel
        # @param RunJobDescriptions: 批量启动作业的描述信息
        # @type RunJobDescriptions: Array
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :RunJobDescriptions, :WorkSpaceId

        def initialize(runjobdescriptions=nil, workspaceid=nil)
          @RunJobDescriptions = runjobdescriptions
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          unless params['RunJobDescriptions'].nil?
            @RunJobDescriptions = []
            params['RunJobDescriptions'].each do |i|
              runjobdescription_tmp = RunJobDescription.new
              runjobdescription_tmp.deserialize(i)
              @RunJobDescriptions << runjobdescription_tmp
            end
          end
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # RunJobs返回参数结构体
      class RunJobsResponse < TencentCloud::Common::AbstractModel
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

      # RunSqlGatewayStatement请求参数结构体
      class RunSqlGatewayStatementRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Sql: 需要执行的sql，该sql会被Sql Gateway执行，当前支持的是paimon修改需求，因此主要是DDL语句
        # @type Sql: String
        # @param SessionId: Sql Gateway会话ID，可不填，如果不填则会自动创建一个会话ID，每个会话ID都有一个存活时间，测试环境为10分钟，线上默认是30分钟
        # @type SessionId: String

        attr_accessor :ClusterId, :Sql, :SessionId

        def initialize(clusterid=nil, sql=nil, sessionid=nil)
          @ClusterId = clusterid
          @Sql = sql
          @SessionId = sessionid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Sql = params['Sql']
          @SessionId = params['SessionId']
        end
      end

      # RunSqlGatewayStatement返回参数结构体
      class RunSqlGatewayStatementResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMessage: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: Array
        # @param SessionId: 会话id，若入参未传，则返回自动创建的会话id，若入参已经传递，则返回值与原传入值一致
        # @type SessionId: String
        # @param OperationHandleId: 返回执行id，可以根据该执行id和会话id获取执行结果
        # @type OperationHandleId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMessage, :SessionId, :OperationHandleId, :RequestId

        def initialize(errormessage=nil, sessionid=nil, operationhandleid=nil, requestid=nil)
          @ErrorMessage = errormessage
          @SessionId = sessionid
          @OperationHandleId = operationhandleid
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMessage = params['ErrorMessage']
          @SessionId = params['SessionId']
          @OperationHandleId = params['OperationHandleId']
          @RequestId = params['RequestId']
        end
      end

      # 描述Savepoint信息
      class Savepoint < TencentCloud::Common::AbstractModel
        # @param Id: 主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param VersionId: 版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: Integer
        # @param Status: 状态 1: Active; 2: Expired; 3: InProgress; 4: Failed; 5: Timeout
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param Path: 路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Size: 大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Integer
        # @param RecordType: 快照类型 1: savepoint；2: checkpoint；3: cancelWithSavepoint
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordType: Integer
        # @param JobRuntimeId: 运行作业实例的顺序 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobRuntimeId: Integer
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Timeout: 固定超时时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timeout: Integer
        # @param SerialId: 快照 serialId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SerialId: String
        # @param TimeConsuming: 耗时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeConsuming: Integer
        # @param PathStatus: 快照路径状态 1：可用；2：不可用；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathStatus: Integer

        attr_accessor :Id, :VersionId, :Status, :CreateTime, :UpdateTime, :Path, :Size, :RecordType, :JobRuntimeId, :Description, :Timeout, :SerialId, :TimeConsuming, :PathStatus

        def initialize(id=nil, versionid=nil, status=nil, createtime=nil, updatetime=nil, path=nil, size=nil, recordtype=nil, jobruntimeid=nil, description=nil, timeout=nil, serialid=nil, timeconsuming=nil, pathstatus=nil)
          @Id = id
          @VersionId = versionid
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Path = path
          @Size = size
          @RecordType = recordtype
          @JobRuntimeId = jobruntimeid
          @Description = description
          @Timeout = timeout
          @SerialId = serialid
          @TimeConsuming = timeconsuming
          @PathStatus = pathstatus
        end

        def deserialize(params)
          @Id = params['Id']
          @VersionId = params['VersionId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Path = params['Path']
          @Size = params['Size']
          @RecordType = params['RecordType']
          @JobRuntimeId = params['JobRuntimeId']
          @Description = params['Description']
          @Timeout = params['Timeout']
          @SerialId = params['SerialId']
          @TimeConsuming = params['TimeConsuming']
          @PathStatus = params['PathStatus']
        end
      end

      # SlotSharingGroup 描述
      class SlotSharingGroup < TencentCloud::Common::AbstractModel
        # @param Name: SlotSharingGroup的名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Spec: SlotSharingGroup的规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Spec: :class:`Tencentcloud::Oceanus.v20190422.models.SlotSharingGroupSpec`
        # @param Description: SlotSharingGroup的描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :Name, :Spec, :Description

        def initialize(name=nil, spec=nil, description=nil)
          @Name = name
          @Spec = spec
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Spec'].nil?
            @Spec = SlotSharingGroupSpec.new
            @Spec.deserialize(params['Spec'])
          end
          @Description = params['Description']
        end
      end

      # SlotSharingGroup的规格描述
      class SlotSharingGroupSpec < TencentCloud::Common::AbstractModel
        # @param CPU: 适用的cpu
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CPU: Float
        # @param HeapMemory: 默认为b, 支持单位有 b, kb, mb, gb
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeapMemory: String
        # @param OffHeapMemory: 默认为b, 支持单位有 b, kb, mb, gb
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OffHeapMemory: String
        # @param ManagedMemory: 默认为b, 支持单位有 b, kb, mb, gb
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManagedMemory: String

        attr_accessor :CPU, :HeapMemory, :OffHeapMemory, :ManagedMemory

        def initialize(cpu=nil, heapmemory=nil, offheapmemory=nil, managedmemory=nil)
          @CPU = cpu
          @HeapMemory = heapmemory
          @OffHeapMemory = offheapmemory
          @ManagedMemory = managedmemory
        end

        def deserialize(params)
          @CPU = params['CPU']
          @HeapMemory = params['HeapMemory']
          @OffHeapMemory = params['OffHeapMemory']
          @ManagedMemory = params['ManagedMemory']
        end
      end

      # SqlGateway配置信息
      class SqlGatewayItem < TencentCloud::Common::AbstractModel
        # @param SerialId: 唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SerialId: String
        # @param FlinkVersion: Flink内核版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlinkVersion: String
        # @param Status: 状态，1.停止 2. 开启中 3. 开启 4. 开启失败 5. 停止中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreatorUin: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorUin: String
        # @param ResourceRefs: 引用资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceRefs: Array
        # @param CuSpec: Cu规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CuSpec: Float
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Properties: 配置参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array

        attr_accessor :SerialId, :FlinkVersion, :Status, :CreatorUin, :ResourceRefs, :CuSpec, :CreateTime, :UpdateTime, :Properties

        def initialize(serialid=nil, flinkversion=nil, status=nil, creatoruin=nil, resourcerefs=nil, cuspec=nil, createtime=nil, updatetime=nil, properties=nil)
          @SerialId = serialid
          @FlinkVersion = flinkversion
          @Status = status
          @CreatorUin = creatoruin
          @ResourceRefs = resourcerefs
          @CuSpec = cuspec
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Properties = properties
        end

        def deserialize(params)
          @SerialId = params['SerialId']
          @FlinkVersion = params['FlinkVersion']
          @Status = params['Status']
          @CreatorUin = params['CreatorUin']
          unless params['ResourceRefs'].nil?
            @ResourceRefs = []
            params['ResourceRefs'].each do |i|
              gatewayrefitem_tmp = GatewayRefItem.new
              gatewayrefitem_tmp.deserialize(i)
              @ResourceRefs << gatewayrefitem_tmp
            end
          end
          @CuSpec = params['CuSpec']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Properties << property_tmp
            end
          end
        end
      end

      # Sql Gateway 返回Result结构类型
      class StatementResult < TencentCloud::Common::AbstractModel
        # @param Columns: 返回结果列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param RowFormat: 格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowFormat: String
        # @param Data: 结果值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array

        attr_accessor :Columns, :RowFormat, :Data

        def initialize(columns=nil, rowformat=nil, data=nil)
          @Columns = columns
          @RowFormat = rowformat
          @Data = data
        end

        def deserialize(params)
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              resultcolumn_tmp = ResultColumn.new
              resultcolumn_tmp.deserialize(i)
              @Columns << resultcolumn_tmp
            end
          end
          @RowFormat = params['RowFormat']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              resultdata_tmp = ResultData.new
              resultdata_tmp.deserialize(i)
              @Data << resultdata_tmp
            end
          end
        end
      end

      # 停止作业的描述信息
      class StopJobDescription < TencentCloud::Common::AbstractModel
        # @param JobId: 作业Id
        # @type JobId: String
        # @param StopType: 停止类型，1 停止 2 暂停
        # @type StopType: Integer

        attr_accessor :JobId, :StopType

        def initialize(jobid=nil, stoptype=nil)
          @JobId = jobid
          @StopType = stoptype
        end

        def deserialize(params)
          @JobId = params['JobId']
          @StopType = params['StopType']
        end
      end

      # StopJobs请求参数结构体
      class StopJobsRequest < TencentCloud::Common::AbstractModel
        # @param StopJobDescriptions: 批量停止作业的描述信息
        # @type StopJobDescriptions: Array
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :StopJobDescriptions, :WorkSpaceId

        def initialize(stopjobdescriptions=nil, workspaceid=nil)
          @StopJobDescriptions = stopjobdescriptions
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          unless params['StopJobDescriptions'].nil?
            @StopJobDescriptions = []
            params['StopJobDescriptions'].each do |i|
              stopjobdescription_tmp = StopJobDescription.new
              stopjobdescription_tmp.deserialize(i)
              @StopJobDescriptions << stopjobdescription_tmp
            end
          end
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # StopJobs返回参数结构体
      class StopJobsResponse < TencentCloud::Common::AbstractModel
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

      # 子目录信息
      class SubFolderInfo < TencentCloud::Common::AbstractModel
        # @param FolderId: folder id
        # @type FolderId: String
        # @param FolderName: folder name
        # @type FolderName: String

        attr_accessor :FolderId, :FolderName

        def initialize(folderid=nil, foldername=nil)
          @FolderId = folderid
          @FolderName = foldername
        end

        def deserialize(params)
          @FolderId = params['FolderId']
          @FolderName = params['FolderName']
        end
      end

      # 系统资源返回值
      class SystemResourceItem < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param Name: 资源名称
        # @type Name: String
        # @param ResourceType: 资源类型。1 表示 JAR 包，目前只支持该值。
        # @type ResourceType: Integer
        # @param Remark: 资源备注
        # @type Remark: String
        # @param Region: 资源所属地域
        # @type Region: String
        # @param LatestResourceConfigVersion: 资源的最新版本
        # @type LatestResourceConfigVersion: Integer

        attr_accessor :ResourceId, :Name, :ResourceType, :Remark, :Region, :LatestResourceConfigVersion

        def initialize(resourceid=nil, name=nil, resourcetype=nil, remark=nil, region=nil, latestresourceconfigversion=nil)
          @ResourceId = resourceid
          @Name = name
          @ResourceType = resourcetype
          @Remark = remark
          @Region = region
          @LatestResourceConfigVersion = latestresourceconfigversion
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Name = params['Name']
          @ResourceType = params['ResourceType']
          @Remark = params['Remark']
          @Region = params['Region']
          @LatestResourceConfigVersion = params['LatestResourceConfigVersion']
        end
      end

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # {
      #   "Rate": "0.01",  ///如1%转换为0.01
      #   "Operator":  "1:OUT,2:IN_AND_OUT,3:IN"  ///如1%转换为0.01
      # }
      # Operator
      # 算子ID顺序配置，可以对每个算子配置IN、OUT、IN_AND_OUT三个值，分别表示采集输入数据、采集输出数据、同时采集输入和输出数据，配置示例:
      class TraceModeConfiguration < TencentCloud::Common::AbstractModel
        # @param Rate: 如1%转换为0.01
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rate: String
        # @param Operator: 按照算子ID顺序配置，可以对每个算子配置IN、OUT、IN_AND_OUT三个值，分别表示采集输入数据、采集输出数据、同时采集输入和输出数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String

        attr_accessor :Rate, :Operator

        def initialize(rate=nil, operator=nil)
          @Rate = rate
          @Operator = operator
        end

        def deserialize(params)
          @Rate = params['Rate']
          @Operator = params['Operator']
        end
      end

      # 自定义树结构出参作业列表
      class TreeJobSets < TencentCloud::Common::AbstractModel
        # @param JobId: 作业Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param Name: 作业名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param JobType: 作业类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobType: Integer
        # @param RunningCu: 作业占用资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunningCu: Float
        # @param Status: 作业状态 启动或者停止或者暂停
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :JobId, :Name, :JobType, :RunningCu, :Status

        def initialize(jobid=nil, name=nil, jobtype=nil, runningcu=nil, status=nil)
          @JobId = jobid
          @Name = name
          @JobType = jobtype
          @RunningCu = runningcu
          @Status = status
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Name = params['Name']
          @JobType = params['JobType']
          @RunningCu = params['RunningCu']
          @Status = params['Status']
        end
      end

      # 树状结构资源对象
      class TreeResourceItem < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param Name: 资源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ResourceType: 资源类型
        # @type ResourceType: Integer
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param FileName: 文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param FolderId: 目录ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FolderId: String
        # @param RefJobStatusCountSet: 分状态统计关联作业数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RefJobStatusCountSet: Array

        attr_accessor :ResourceId, :Name, :ResourceType, :Remark, :FileName, :FolderId, :RefJobStatusCountSet

        def initialize(resourceid=nil, name=nil, resourcetype=nil, remark=nil, filename=nil, folderid=nil, refjobstatuscountset=nil)
          @ResourceId = resourceid
          @Name = name
          @ResourceType = resourcetype
          @Remark = remark
          @FileName = filename
          @FolderId = folderid
          @RefJobStatusCountSet = refjobstatuscountset
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Name = params['Name']
          @ResourceType = params['ResourceType']
          @Remark = params['Remark']
          @FileName = params['FileName']
          @FolderId = params['FolderId']
          unless params['RefJobStatusCountSet'].nil?
            @RefJobStatusCountSet = []
            params['RefJobStatusCountSet'].each do |i|
              refjobstatuscountitem_tmp = RefJobStatusCountItem.new
              refjobstatuscountitem_tmp.deserialize(i)
              @RefJobStatusCountSet << refjobstatuscountitem_tmp
            end
          end
        end
      end

      # TriggerJobSavepoint请求参数结构体
      class TriggerJobSavepointRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 作业 SerialId
        # @type JobId: String
        # @param Description: 描述
        # @type Description: String
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String

        attr_accessor :JobId, :Description, :WorkSpaceId

        def initialize(jobid=nil, description=nil, workspaceid=nil)
          @JobId = jobid
          @Description = description
          @WorkSpaceId = workspaceid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Description = params['Description']
          @WorkSpaceId = params['WorkSpaceId']
        end
      end

      # TriggerJobSavepoint返回参数结构体
      class TriggerJobSavepointResponse < TencentCloud::Common::AbstractModel
        # @param SavepointTrigger: 是否成功
        # @type SavepointTrigger: Boolean
        # @param ErrorMsg: 错误消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param FinalSavepointPath: 快照路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinalSavepointPath: String
        # @param SavepointId: 快照 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SavepointId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SavepointTrigger, :ErrorMsg, :FinalSavepointPath, :SavepointId, :RequestId

        def initialize(savepointtrigger=nil, errormsg=nil, finalsavepointpath=nil, savepointid=nil, requestid=nil)
          @SavepointTrigger = savepointtrigger
          @ErrorMsg = errormsg
          @FinalSavepointPath = finalsavepointpath
          @SavepointId = savepointid
          @RequestId = requestid
        end

        def deserialize(params)
          @SavepointTrigger = params['SavepointTrigger']
          @ErrorMsg = params['ErrorMsg']
          @FinalSavepointPath = params['FinalSavepointPath']
          @SavepointId = params['SavepointId']
          @RequestId = params['RequestId']
        end
      end

      # 空间和集群绑定关系
      class WorkSpaceClusterItem < TencentCloud::Common::AbstractModel
        # @param ClusterGroupId: 集群 ID
        # @type ClusterGroupId: Integer
        # @param ClusterGroupSerialId: 集群 SerialId
        # @type ClusterGroupSerialId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String
        # @param WorkSpaceName: 工作空间名称
        # @type WorkSpaceName: String
        # @param Status: 绑定状态  2 绑定 1  解除绑定
        # @type Status: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param ProjectIdStr: 项目ID string类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectIdStr: String

        attr_accessor :ClusterGroupId, :ClusterGroupSerialId, :ClusterName, :WorkSpaceId, :WorkSpaceName, :Status, :ProjectId, :ProjectIdStr

        def initialize(clustergroupid=nil, clustergroupserialid=nil, clustername=nil, workspaceid=nil, workspacename=nil, status=nil, projectid=nil, projectidstr=nil)
          @ClusterGroupId = clustergroupid
          @ClusterGroupSerialId = clustergroupserialid
          @ClusterName = clustername
          @WorkSpaceId = workspaceid
          @WorkSpaceName = workspacename
          @Status = status
          @ProjectId = projectid
          @ProjectIdStr = projectidstr
        end

        def deserialize(params)
          @ClusterGroupId = params['ClusterGroupId']
          @ClusterGroupSerialId = params['ClusterGroupSerialId']
          @ClusterName = params['ClusterName']
          @WorkSpaceId = params['WorkSpaceId']
          @WorkSpaceName = params['WorkSpaceName']
          @Status = params['Status']
          @ProjectId = params['ProjectId']
          @ProjectIdStr = params['ProjectIdStr']
        end
      end

      # 工作空间详情
      class WorkSpaceSetItem < TencentCloud::Common::AbstractModel
        # @param SerialId: 工作空间 SerialId
        # @type SerialId: String
        # @param AppId: 用户 APPID
        # @type AppId: Integer
        # @param OwnerUin: 主账号 UIN
        # @type OwnerUin: String
        # @param CreatorUin: 创建者 UIN
        # @type CreatorUin: String
        # @param WorkSpaceName: 工作空间名称
        # @type WorkSpaceName: String
        # @param Region: 区域
        # @type Region: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Status: 1 未初始化 2 可用  -1 已删除
        # @type Status: Integer
        # @param Description: 工作空间描述
        # @type Description: String
        # @param ClusterGroupSetItem: 工作空间包含集群信息
        # @type ClusterGroupSetItem: Array
        # @param RoleAuth: 工作空间角色的信息
        # @type RoleAuth: Array
        # @param RoleAuthCount: 工作空间成员数量
        # @type RoleAuthCount: Integer
        # @param WorkSpaceId: 工作空间 SerialId
        # @type WorkSpaceId: String
        # @param JobsCount: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobsCount: Integer

        attr_accessor :SerialId, :AppId, :OwnerUin, :CreatorUin, :WorkSpaceName, :Region, :CreateTime, :UpdateTime, :Status, :Description, :ClusterGroupSetItem, :RoleAuth, :RoleAuthCount, :WorkSpaceId, :JobsCount

        def initialize(serialid=nil, appid=nil, owneruin=nil, creatoruin=nil, workspacename=nil, region=nil, createtime=nil, updatetime=nil, status=nil, description=nil, clustergroupsetitem=nil, roleauth=nil, roleauthcount=nil, workspaceid=nil, jobscount=nil)
          @SerialId = serialid
          @AppId = appid
          @OwnerUin = owneruin
          @CreatorUin = creatoruin
          @WorkSpaceName = workspacename
          @Region = region
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Status = status
          @Description = description
          @ClusterGroupSetItem = clustergroupsetitem
          @RoleAuth = roleauth
          @RoleAuthCount = roleauthcount
          @WorkSpaceId = workspaceid
          @JobsCount = jobscount
        end

        def deserialize(params)
          @SerialId = params['SerialId']
          @AppId = params['AppId']
          @OwnerUin = params['OwnerUin']
          @CreatorUin = params['CreatorUin']
          @WorkSpaceName = params['WorkSpaceName']
          @Region = params['Region']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @Description = params['Description']
          unless params['ClusterGroupSetItem'].nil?
            @ClusterGroupSetItem = []
            params['ClusterGroupSetItem'].each do |i|
              clustergroupsetitem_tmp = ClusterGroupSetItem.new
              clustergroupsetitem_tmp.deserialize(i)
              @ClusterGroupSetItem << clustergroupsetitem_tmp
            end
          end
          unless params['RoleAuth'].nil?
            @RoleAuth = []
            params['RoleAuth'].each do |i|
              roleauth_tmp = RoleAuth.new
              roleauth_tmp.deserialize(i)
              @RoleAuth << roleauth_tmp
            end
          end
          @RoleAuthCount = params['RoleAuthCount']
          @WorkSpaceId = params['WorkSpaceId']
          @JobsCount = params['JobsCount']
        end
      end

    end
  end
end

