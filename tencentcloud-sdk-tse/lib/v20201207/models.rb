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
  module Tse
    module V20201207
      # 服务治理引擎绑定的kubernetes信息
      class BoundK8SInfo < TencentCloud::Common::AbstractModel
        # @param BoundClusterId: 绑定的kubernetes集群ID
        # @type BoundClusterId: String
        # @param BoundClusterType: 绑定的kubernetes的集群类型，分tke和eks两种
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BoundClusterType: String

        attr_accessor :BoundClusterId, :BoundClusterType
        
        def initialize(boundclusterid=nil, boundclustertype=nil)
          @BoundClusterId = boundclusterid
          @BoundClusterType = boundclustertype
        end

        def deserialize(params)
          @BoundClusterId = params['BoundClusterId']
          @BoundClusterType = params['BoundClusterType']
        end
      end

      # DescribeSREInstanceAccessAddress请求参数结构体
      class DescribeSREInstanceAccessAddressRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 注册引擎实例Id
        # @type InstanceId: String
        # @param VpcId: VPC ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String

        attr_accessor :InstanceId, :VpcId, :SubnetId
        
        def initialize(instanceid=nil, vpcid=nil, subnetid=nil)
          @InstanceId = instanceid
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # DescribeSREInstanceAccessAddress返回参数结构体
      class DescribeSREInstanceAccessAddressResponse < TencentCloud::Common::AbstractModel
        # @param IntranetAddress: 内网访问地址
        # @type IntranetAddress: String
        # @param InternetAddress: 公网访问地址
        # @type InternetAddress: String
        # @param EnvAddressInfos: apollo多环境公网ip
        # @type EnvAddressInfos: Array
        # @param ConsoleInternetAddress: 控制台公网访问地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsoleInternetAddress: String
        # @param ConsoleIntranetAddress: 控制台内网访问地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsoleIntranetAddress: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IntranetAddress, :InternetAddress, :EnvAddressInfos, :ConsoleInternetAddress, :ConsoleIntranetAddress, :RequestId
        
        def initialize(intranetaddress=nil, internetaddress=nil, envaddressinfos=nil, consoleinternetaddress=nil, consoleintranetaddress=nil, requestid=nil)
          @IntranetAddress = intranetaddress
          @InternetAddress = internetaddress
          @EnvAddressInfos = envaddressinfos
          @ConsoleInternetAddress = consoleinternetaddress
          @ConsoleIntranetAddress = consoleintranetaddress
          @RequestId = requestid
        end

        def deserialize(params)
          @IntranetAddress = params['IntranetAddress']
          @InternetAddress = params['InternetAddress']
          unless params['EnvAddressInfos'].nil?
            @EnvAddressInfos = []
            params['EnvAddressInfos'].each do |i|
              envaddressinfo_tmp = EnvAddressInfo.new
              envaddressinfo_tmp.deserialize(i)
              @EnvAddressInfos << envaddressinfo_tmp
            end
          end
          @ConsoleInternetAddress = params['ConsoleInternetAddress']
          @ConsoleIntranetAddress = params['ConsoleIntranetAddress']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSREInstances请求参数结构体
      class DescribeSREInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 请求过滤参数
        # @type Filters: Array
        # @param Limit: 翻页单页查询限制数量[0,1000], 默认值0
        # @type Limit: Integer
        # @param Offset: 翻页单页偏移量，默认值0
        # @type Offset: Integer
        # @param QueryType: 查询类型
        # @type QueryType: String
        # @param QuerySource: 调用方来源
        # @type QuerySource: String

        attr_accessor :Filters, :Limit, :Offset, :QueryType, :QuerySource
        
        def initialize(filters=nil, limit=nil, offset=nil, querytype=nil, querysource=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @QueryType = querytype
          @QuerySource = querysource
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
          @QueryType = params['QueryType']
          @QuerySource = params['QuerySource']
        end
      end

      # DescribeSREInstances返回参数结构体
      class DescribeSREInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param Content: 实例记录
        # @type Content: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Content, :RequestId
        
        def initialize(totalcount=nil, content=nil, requestid=nil)
          @TotalCount = totalcount
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              sreinstance_tmp = SREInstance.new
              sreinstance_tmp.deserialize(i)
              @Content << sreinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 多环境网络信息
      class EnvAddressInfo < TencentCloud::Common::AbstractModel
        # @param EnvName: 环境名
        # @type EnvName: String
        # @param EnableConfigInternet: 是否开启config公网
        # @type EnableConfigInternet: Boolean
        # @param ConfigInternetServiceIp: config公网ip
        # @type ConfigInternetServiceIp: String

        attr_accessor :EnvName, :EnableConfigInternet, :ConfigInternetServiceIp
        
        def initialize(envname=nil, enableconfiginternet=nil, configinternetserviceip=nil)
          @EnvName = envname
          @EnableConfigInternet = enableconfiginternet
          @ConfigInternetServiceIp = configinternetserviceip
        end

        def deserialize(params)
          @EnvName = params['EnvName']
          @EnableConfigInternet = params['EnableConfigInternet']
          @ConfigInternetServiceIp = params['ConfigInternetServiceIp']
        end
      end

      # 环境具体信息
      class EnvInfo < TencentCloud::Common::AbstractModel
        # @param EnvName: 环境名称
        # @type EnvName: String
        # @param VpcInfos: 环境对应的网络信息
        # @type VpcInfos: Array
        # @param StorageCapacity: 云硬盘容量
        # @type StorageCapacity: Integer
        # @param Status: 运行状态
        # @type Status: String
        # @param AdminServiceIp: Admin service 访问地址
        # @type AdminServiceIp: String
        # @param ConfigServiceIp: Config service访问地址
        # @type ConfigServiceIp: String
        # @param EnableConfigInternet: 是否开启config-server公网
        # @type EnableConfigInternet: Boolean
        # @param ConfigInternetServiceIp: config-server公网访问地址
        # @type ConfigInternetServiceIp: String

        attr_accessor :EnvName, :VpcInfos, :StorageCapacity, :Status, :AdminServiceIp, :ConfigServiceIp, :EnableConfigInternet, :ConfigInternetServiceIp
        
        def initialize(envname=nil, vpcinfos=nil, storagecapacity=nil, status=nil, adminserviceip=nil, configserviceip=nil, enableconfiginternet=nil, configinternetserviceip=nil)
          @EnvName = envname
          @VpcInfos = vpcinfos
          @StorageCapacity = storagecapacity
          @Status = status
          @AdminServiceIp = adminserviceip
          @ConfigServiceIp = configserviceip
          @EnableConfigInternet = enableconfiginternet
          @ConfigInternetServiceIp = configinternetserviceip
        end

        def deserialize(params)
          @EnvName = params['EnvName']
          unless params['VpcInfos'].nil?
            @VpcInfos = []
            params['VpcInfos'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @VpcInfos << vpcinfo_tmp
            end
          end
          @StorageCapacity = params['StorageCapacity']
          @Status = params['Status']
          @AdminServiceIp = params['AdminServiceIp']
          @ConfigServiceIp = params['ConfigServiceIp']
          @EnableConfigInternet = params['EnableConfigInternet']
          @ConfigInternetServiceIp = params['ConfigInternetServiceIp']
        end
      end

      # 查询过滤通用对象
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤参数名
        # @type Name: String
        # @param Values: 过滤参数值
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

      # 键值对
      class KVPair < TencentCloud::Common::AbstractModel
        # @param Key: 键
        # @type Key: String
        # @param Value: 值
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

      # 微服务注册引擎实例
      class SREInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Name: 名称
        # @type Name: String
        # @param Edition: 版本号
        # @type Edition: String
        # @param Status: 状态, 枚举值:creating/create_fail/running/updating/update_fail/restarting/restart_fail/destroying/destroy_fail
        # @type Status: String
        # @param SpecId: 规格ID
        # @type SpecId: String
        # @param Replica: 副本数
        # @type Replica: Integer
        # @param Type: 类型
        # @type Type: String
        # @param VpcId: Vpc iD
        # @type VpcId: String
        # @param SubnetIds: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetIds: Array
        # @param EnableStorage: 是否开启持久化存储
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableStorage: Boolean
        # @param StorageType: 数据存储方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageType: String
        # @param StorageCapacity: 云硬盘容量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageCapacity: Integer
        # @param Paymode: 计费方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Paymode: String
        # @param EKSClusterID: EKS集群的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EKSClusterID: String
        # @param CreateTime: 集群创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param EnvInfos: 环境配置信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvInfos: Array
        # @param EngineRegion: 引擎所在的区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineRegion: String
        # @param EnableInternet: 注册引擎是否开启公网
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableInternet: Boolean
        # @param VpcInfos: 私有网络列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcInfos: Array
        # @param ServiceGovernanceInfos: 服务治理相关信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceGovernanceInfos: Array
        # @param Tags: 实例的标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param EnableConsoleInternet: 引擎实例是否开启控制台公网访问地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableConsoleInternet: Boolean
        # @param EnableConsoleIntranet: 引擎实例是否开启控制台内网访问地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableConsoleIntranet: Boolean

        attr_accessor :InstanceId, :Name, :Edition, :Status, :SpecId, :Replica, :Type, :VpcId, :SubnetIds, :EnableStorage, :StorageType, :StorageCapacity, :Paymode, :EKSClusterID, :CreateTime, :EnvInfos, :EngineRegion, :EnableInternet, :VpcInfos, :ServiceGovernanceInfos, :Tags, :EnableConsoleInternet, :EnableConsoleIntranet
        
        def initialize(instanceid=nil, name=nil, edition=nil, status=nil, specid=nil, replica=nil, type=nil, vpcid=nil, subnetids=nil, enablestorage=nil, storagetype=nil, storagecapacity=nil, paymode=nil, eksclusterid=nil, createtime=nil, envinfos=nil, engineregion=nil, enableinternet=nil, vpcinfos=nil, servicegovernanceinfos=nil, tags=nil, enableconsoleinternet=nil, enableconsoleintranet=nil)
          @InstanceId = instanceid
          @Name = name
          @Edition = edition
          @Status = status
          @SpecId = specid
          @Replica = replica
          @Type = type
          @VpcId = vpcid
          @SubnetIds = subnetids
          @EnableStorage = enablestorage
          @StorageType = storagetype
          @StorageCapacity = storagecapacity
          @Paymode = paymode
          @EKSClusterID = eksclusterid
          @CreateTime = createtime
          @EnvInfos = envinfos
          @EngineRegion = engineregion
          @EnableInternet = enableinternet
          @VpcInfos = vpcinfos
          @ServiceGovernanceInfos = servicegovernanceinfos
          @Tags = tags
          @EnableConsoleInternet = enableconsoleinternet
          @EnableConsoleIntranet = enableconsoleintranet
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Edition = params['Edition']
          @Status = params['Status']
          @SpecId = params['SpecId']
          @Replica = params['Replica']
          @Type = params['Type']
          @VpcId = params['VpcId']
          @SubnetIds = params['SubnetIds']
          @EnableStorage = params['EnableStorage']
          @StorageType = params['StorageType']
          @StorageCapacity = params['StorageCapacity']
          @Paymode = params['Paymode']
          @EKSClusterID = params['EKSClusterID']
          @CreateTime = params['CreateTime']
          unless params['EnvInfos'].nil?
            @EnvInfos = []
            params['EnvInfos'].each do |i|
              envinfo_tmp = EnvInfo.new
              envinfo_tmp.deserialize(i)
              @EnvInfos << envinfo_tmp
            end
          end
          @EngineRegion = params['EngineRegion']
          @EnableInternet = params['EnableInternet']
          unless params['VpcInfos'].nil?
            @VpcInfos = []
            params['VpcInfos'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @VpcInfos << vpcinfo_tmp
            end
          end
          unless params['ServiceGovernanceInfos'].nil?
            @ServiceGovernanceInfos = []
            params['ServiceGovernanceInfos'].each do |i|
              servicegovernanceinfo_tmp = ServiceGovernanceInfo.new
              servicegovernanceinfo_tmp.deserialize(i)
              @ServiceGovernanceInfos << servicegovernanceinfo_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Tags << kvpair_tmp
            end
          end
          @EnableConsoleInternet = params['EnableConsoleInternet']
          @EnableConsoleIntranet = params['EnableConsoleIntranet']
        end
      end

      # 服务治理相关的信息
      class ServiceGovernanceInfo < TencentCloud::Common::AbstractModel
        # @param EngineRegion: 引擎所在的地域
        # @type EngineRegion: String
        # @param BoundK8SInfos: 服务治理引擎绑定的kubernetes集群信息
        # @type BoundK8SInfos: Array
        # @param VpcInfos: 服务治理引擎绑定的网络信息
        # @type VpcInfos: Array

        attr_accessor :EngineRegion, :BoundK8SInfos, :VpcInfos
        
        def initialize(engineregion=nil, boundk8sinfos=nil, vpcinfos=nil)
          @EngineRegion = engineregion
          @BoundK8SInfos = boundk8sinfos
          @VpcInfos = vpcinfos
        end

        def deserialize(params)
          @EngineRegion = params['EngineRegion']
          unless params['BoundK8SInfos'].nil?
            @BoundK8SInfos = []
            params['BoundK8SInfos'].each do |i|
              boundk8sinfo_tmp = BoundK8SInfo.new
              boundk8sinfo_tmp.deserialize(i)
              @BoundK8SInfos << boundk8sinfo_tmp
            end
          end
          unless params['VpcInfos'].nil?
            @VpcInfos = []
            params['VpcInfos'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @VpcInfos << vpcinfo_tmp
            end
          end
        end
      end

      # 私有网络信息
      class VpcInfo < TencentCloud::Common::AbstractModel
        # @param VpcId: Vpc Id
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param IntranetAddress: 内网访问地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntranetAddress: String

        attr_accessor :VpcId, :SubnetId, :IntranetAddress
        
        def initialize(vpcid=nil, subnetid=nil, intranetaddress=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @IntranetAddress = intranetaddress
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @IntranetAddress = params['IntranetAddress']
        end
      end

    end
  end
end

