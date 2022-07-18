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
      # Apollo 环境配置参数
      class ApolloEnvParam < TencentCloud::Common::AbstractModel
        # @param Name: 环境名称
        # @type Name: String
        # @param EngineResourceSpec: 环境内引擎的节点规格 ID
        # @type EngineResourceSpec: String
        # @param EngineNodeNum: 环境内引擎的节点数量
        # @type EngineNodeNum: Integer
        # @param StorageCapacity: 配置存储空间大小，以GB为单位
        # @type StorageCapacity: Integer
        # @param VpcId: VPC ID。在 VPC 的子网内分配一个 IP 作为 ConfigServer 的访问地址
        # @type VpcId: String
        # @param SubnetId: 子网 ID。在 VPC 的子网内分配一个 IP 作为 ConfigServer 的访问地址
        # @type SubnetId: String

        attr_accessor :Name, :EngineResourceSpec, :EngineNodeNum, :StorageCapacity, :VpcId, :SubnetId
        
        def initialize(name=nil, engineresourcespec=nil, enginenodenum=nil, storagecapacity=nil, vpcid=nil, subnetid=nil)
          @Name = name
          @EngineResourceSpec = engineresourcespec
          @EngineNodeNum = enginenodenum
          @StorageCapacity = storagecapacity
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @Name = params['Name']
          @EngineResourceSpec = params['EngineResourceSpec']
          @EngineNodeNum = params['EngineNodeNum']
          @StorageCapacity = params['StorageCapacity']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # 服务治理引擎绑定的kubernetes信息
      class BoundK8SInfo < TencentCloud::Common::AbstractModel
        # @param BoundClusterId: 绑定的kubernetes集群ID
        # @type BoundClusterId: String
        # @param BoundClusterType: 绑定的kubernetes的集群类型，分tke和eks两种
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BoundClusterType: String
        # @param SyncMode: 服务同步模式，all为全量同步，demand为按需同步
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SyncMode: String

        attr_accessor :BoundClusterId, :BoundClusterType, :SyncMode
        
        def initialize(boundclusterid=nil, boundclustertype=nil, syncmode=nil)
          @BoundClusterId = boundclusterid
          @BoundClusterType = boundclustertype
          @SyncMode = syncmode
        end

        def deserialize(params)
          @BoundClusterId = params['BoundClusterId']
          @BoundClusterType = params['BoundClusterType']
          @SyncMode = params['SyncMode']
        end
      end

      # CreateEngine请求参数结构体
      class CreateEngineRequest < TencentCloud::Common::AbstractModel
        # @param EngineType: 引擎类型。参考值：
        # - zookeeper
        # - nacos
        # - consul
        # - apollo
        # - eureka
        # - polaris
        # @type EngineType: String
        # @param EngineVersion: 引擎的开源版本。每种引擎支持的开源版本不同，请参考产品文档或者控制台购买页
        # @type EngineVersion: String
        # @param EngineProductVersion: 引擎的产品版本。参考值：
        # - STANDARD： 标准版

        # 引擎各版本及可选择的规格、节点数说明：
        # apollo - STANDARD版本
        # 规格列表：spec-qcr53kf1t（1C2G）,spec-qdr53kf2w（2C4G）
        # 节点数：1，2，3，4，5

        # eureka - STANDARD版本
        # 规格列表：spec-qvj6k7t4q（1C2G）,spec-qcr53kfjt（2C4G）,spec-qvj6k7t4m（4G8G）,spec-qcr54kfjt（8C16G）,spec-qcr55kfjt（16C32G）
        # 节点数：3，4，5
        # @type EngineProductVersion: String
        # @param EngineRegion: 引擎所在地域。参考值说明：
        # 中国区 参考值：
        # - ap-guangzhou：广州
        # - ap-beijing：北京
        # - ap-chengdu：成都
        # - ap-chongqing：重庆
        # - ap-nanjing：南京
        # - ap-shanghai：上海
        # - ap-hongkong：香港
        # - ap-taipei：台北
        # 亚太区 参考值：
        # - ap-jakarta：雅加达
        # - ap-singapore：新加坡
        # 北美区 参考值
        # - na-toronto：多伦多
        # 金融专区 参考值
        # - ap-beijing-fsi：北京金融
        # - ap-shanghai-fsi：上海金融
        # - ap-shenzhen-fsi：深圳金融
        # @type EngineRegion: String
        # @param EngineName: 引擎名称。参考值：
        # - eurek-test
        # @type EngineName: String
        # @param TradeType: 付费类型。参考值：
        # - 0：后付费
        # - 1：预付费
        # @type TradeType: Integer
        # @param EngineResourceSpec: 引擎的节点规格 ID。参见EngineProductVersion字段说明
        # @type EngineResourceSpec: String
        # @param EngineNodeNum: 引擎的节点数量。参见EngineProductVersion字段说明
        # @type EngineNodeNum: Integer
        # @param VpcId: VPC ID。在 VPC 的子网内分配一个 IP 作为引擎的访问地址。参考值：
        # - vpc-conz6aix
        # @type VpcId: String
        # @param SubnetId: 子网 ID。在 VPC 的子网内分配一个 IP 作为引擎的访问地址。参考值：
        # - subnet-ahde9me9
        # @type SubnetId: String
        # @param ApolloEnvParams: Apollo 环境配置参数列表。参数说明：
        # 如果创建Apollo类型，此参数为必填的环境信息列表，最多可选4个环境。环境信息参数说明：
        # - Name：环境名。参考值：prod, dev, fat, uat
        # - EngineResourceSpec：环境内引擎的节点规格ID。参见EngineProductVersion参数说明
        # - EngineNodeNum：环境内引擎的节点数量。参见EngineProductVersion参数说明，其中prod环境支持的节点数为2，3，4，5
        # - StorageCapacity：配置存储空间大小，以GB为单位，步长为5.参考值：35
        # - VpcId：VPC ID。参考值：vpc-conz6aix
        # - SubnetId：子网 ID。参考值：subnet-ahde9me9
        # @type ApolloEnvParams: Array
        # @param EngineTags: 引擎的标签列表。用户自定义的key/value形式，无参考值
        # @type EngineTags: Array
        # @param EngineAdmin: 引擎的初始帐号信息。可设置参数：
        # - Name：控制台初始用户名
        # - Password：控制台初始密码
        # - Token：引擎接口的管理员 Token
        # @type EngineAdmin: :class:`Tencentcloud::Tse.v20201207.models.EngineAdmin`
        # @param PrepaidPeriod: 预付费时长，以月为单位
        # @type PrepaidPeriod: Integer
        # @param PrepaidRenewFlag: 自动续费标记，仅预付费使用。参考值：
        # - 0：不自动续费
        # - 1：自动续费
        # @type PrepaidRenewFlag: Integer

        attr_accessor :EngineType, :EngineVersion, :EngineProductVersion, :EngineRegion, :EngineName, :TradeType, :EngineResourceSpec, :EngineNodeNum, :VpcId, :SubnetId, :ApolloEnvParams, :EngineTags, :EngineAdmin, :PrepaidPeriod, :PrepaidRenewFlag
        
        def initialize(enginetype=nil, engineversion=nil, engineproductversion=nil, engineregion=nil, enginename=nil, tradetype=nil, engineresourcespec=nil, enginenodenum=nil, vpcid=nil, subnetid=nil, apolloenvparams=nil, enginetags=nil, engineadmin=nil, prepaidperiod=nil, prepaidrenewflag=nil)
          @EngineType = enginetype
          @EngineVersion = engineversion
          @EngineProductVersion = engineproductversion
          @EngineRegion = engineregion
          @EngineName = enginename
          @TradeType = tradetype
          @EngineResourceSpec = engineresourcespec
          @EngineNodeNum = enginenodenum
          @VpcId = vpcid
          @SubnetId = subnetid
          @ApolloEnvParams = apolloenvparams
          @EngineTags = enginetags
          @EngineAdmin = engineadmin
          @PrepaidPeriod = prepaidperiod
          @PrepaidRenewFlag = prepaidrenewflag
        end

        def deserialize(params)
          @EngineType = params['EngineType']
          @EngineVersion = params['EngineVersion']
          @EngineProductVersion = params['EngineProductVersion']
          @EngineRegion = params['EngineRegion']
          @EngineName = params['EngineName']
          @TradeType = params['TradeType']
          @EngineResourceSpec = params['EngineResourceSpec']
          @EngineNodeNum = params['EngineNodeNum']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          unless params['ApolloEnvParams'].nil?
            @ApolloEnvParams = []
            params['ApolloEnvParams'].each do |i|
              apolloenvparam_tmp = ApolloEnvParam.new
              apolloenvparam_tmp.deserialize(i)
              @ApolloEnvParams << apolloenvparam_tmp
            end
          end
          unless params['EngineTags'].nil?
            @EngineTags = []
            params['EngineTags'].each do |i|
              instancetaginfo_tmp = InstanceTagInfo.new
              instancetaginfo_tmp.deserialize(i)
              @EngineTags << instancetaginfo_tmp
            end
          end
          unless params['EngineAdmin'].nil?
            @EngineAdmin = EngineAdmin.new
            @EngineAdmin.deserialize(params['EngineAdmin'])
          end
          @PrepaidPeriod = params['PrepaidPeriod']
          @PrepaidRenewFlag = params['PrepaidRenewFlag']
        end
      end

      # CreateEngine返回参数结构体
      class CreateEngineResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 引擎实例 ID
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

      # DeleteEngine请求参数结构体
      class DeleteEngineRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 引擎实例 ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteEngine返回参数结构体
      class DeleteEngineResponse < TencentCloud::Common::AbstractModel
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

      # DescribeNacosReplicas请求参数结构体
      class DescribeNacosReplicasRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 引擎实例ID
        # @type InstanceId: String
        # @param Limit: 副本列表Limit
        # @type Limit: Integer
        # @param Offset: 副本列表Offset
        # @type Offset: Integer

        attr_accessor :InstanceId, :Limit, :Offset
        
        def initialize(instanceid=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeNacosReplicas返回参数结构体
      class DescribeNacosReplicasResponse < TencentCloud::Common::AbstractModel
        # @param Replicas: 引擎实例副本信息
        # @type Replicas: Array
        # @param TotalCount: 副本个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Replicas, :TotalCount, :RequestId
        
        def initialize(replicas=nil, totalcount=nil, requestid=nil)
          @Replicas = replicas
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Replicas'].nil?
            @Replicas = []
            params['Replicas'].each do |i|
              nacosreplica_tmp = NacosReplica.new
              nacosreplica_tmp.deserialize(i)
              @Replicas << nacosreplica_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNacosServerInterfaces请求参数结构体
      class DescribeNacosServerInterfacesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Limit: 返回的列表个数
        # @type Limit: Integer
        # @param Offset: 返回的列表起始偏移量
        # @type Offset: Integer

        attr_accessor :InstanceId, :Limit, :Offset
        
        def initialize(instanceid=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeNacosServerInterfaces返回参数结构体
      class DescribeNacosServerInterfacesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 接口总个数
        # @type TotalCount: Integer
        # @param Content: 接口列表
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
              nacosserverinterface_tmp = NacosServerInterface.new
              nacosserverinterface_tmp.deserialize(i)
              @Content << nacosserverinterface_tmp
            end
          end
          @RequestId = params['RequestId']
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
        # @param Workload: 引擎其他组件名称（pushgateway）
        # @type Workload: String

        attr_accessor :InstanceId, :VpcId, :SubnetId, :Workload
        
        def initialize(instanceid=nil, vpcid=nil, subnetid=nil, workload=nil)
          @InstanceId = instanceid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Workload = workload
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Workload = params['Workload']
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
        # @param InternetBandWidth: 客户端公网带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetBandWidth: Integer
        # @param ConsoleInternetBandWidth: 控制台公网带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsoleInternetBandWidth: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IntranetAddress, :InternetAddress, :EnvAddressInfos, :ConsoleInternetAddress, :ConsoleIntranetAddress, :InternetBandWidth, :ConsoleInternetBandWidth, :RequestId
        
        def initialize(intranetaddress=nil, internetaddress=nil, envaddressinfos=nil, consoleinternetaddress=nil, consoleintranetaddress=nil, internetbandwidth=nil, consoleinternetbandwidth=nil, requestid=nil)
          @IntranetAddress = intranetaddress
          @InternetAddress = internetaddress
          @EnvAddressInfos = envaddressinfos
          @ConsoleInternetAddress = consoleinternetaddress
          @ConsoleIntranetAddress = consoleintranetaddress
          @InternetBandWidth = internetbandwidth
          @ConsoleInternetBandWidth = consoleinternetbandwidth
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
          @InternetBandWidth = params['InternetBandWidth']
          @ConsoleInternetBandWidth = params['ConsoleInternetBandWidth']
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

      # DescribeZookeeperReplicas请求参数结构体
      class DescribeZookeeperReplicasRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 注册引擎实例ID
        # @type InstanceId: String
        # @param Limit: 副本列表Limit
        # @type Limit: Integer
        # @param Offset: 副本列表Offset
        # @type Offset: Integer

        attr_accessor :InstanceId, :Limit, :Offset
        
        def initialize(instanceid=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeZookeeperReplicas返回参数结构体
      class DescribeZookeeperReplicasResponse < TencentCloud::Common::AbstractModel
        # @param Replicas: 注册引擎实例副本信息
        # @type Replicas: Array
        # @param TotalCount: 副本个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Replicas, :TotalCount, :RequestId
        
        def initialize(replicas=nil, totalcount=nil, requestid=nil)
          @Replicas = replicas
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Replicas'].nil?
            @Replicas = []
            params['Replicas'].each do |i|
              zookeeperreplica_tmp = ZookeeperReplica.new
              zookeeperreplica_tmp.deserialize(i)
              @Replicas << zookeeperreplica_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeZookeeperServerInterfaces请求参数结构体
      class DescribeZookeeperServerInterfacesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Limit: 返回的列表个数
        # @type Limit: Integer
        # @param Offset: 返回的列表起始偏移量
        # @type Offset: Integer

        attr_accessor :InstanceId, :Limit, :Offset
        
        def initialize(instanceid=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeZookeeperServerInterfaces返回参数结构体
      class DescribeZookeeperServerInterfacesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 接口总个数
        # @type TotalCount: Integer
        # @param Content: 接口列表
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
              zookeeperserverinterface_tmp = ZookeeperServerInterface.new
              zookeeperserverinterface_tmp.deserialize(i)
              @Content << zookeeperserverinterface_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 引擎的初始管理帐号
      class EngineAdmin < TencentCloud::Common::AbstractModel
        # @param Name: 控制台初始用户名
        # @type Name: String
        # @param Password: 控制台初始密码
        # @type Password: String
        # @param Token: 引擎接口的管理员 Token
        # @type Token: String

        attr_accessor :Name, :Password, :Token
        
        def initialize(name=nil, password=nil, token=nil)
          @Name = name
          @Password = password
          @Token = token
        end

        def deserialize(params)
          @Name = params['Name']
          @Password = params['Password']
          @Token = params['Token']
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
        # @param ConfigIntranetAddress: config内网访问地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigIntranetAddress: String

        attr_accessor :EnvName, :EnableConfigInternet, :ConfigInternetServiceIp, :ConfigIntranetAddress
        
        def initialize(envname=nil, enableconfiginternet=nil, configinternetserviceip=nil, configintranetaddress=nil)
          @EnvName = envname
          @EnableConfigInternet = enableconfiginternet
          @ConfigInternetServiceIp = configinternetserviceip
          @ConfigIntranetAddress = configintranetaddress
        end

        def deserialize(params)
          @EnvName = params['EnvName']
          @EnableConfigInternet = params['EnableConfigInternet']
          @ConfigInternetServiceIp = params['ConfigInternetServiceIp']
          @ConfigIntranetAddress = params['ConfigIntranetAddress']
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
        # @param SpecId: 规格ID
        # @type SpecId: String
        # @param EnvReplica: 环境的节点数
        # @type EnvReplica: Integer
        # @param RunningCount: 环境运行的节点数
        # @type RunningCount: Integer
        # @param AliasEnvName: 环境别名
        # @type AliasEnvName: String
        # @param EnvDesc: 环境描述
        # @type EnvDesc: String
        # @param ClientBandWidth: 客户端带宽
        # @type ClientBandWidth: Integer

        attr_accessor :EnvName, :VpcInfos, :StorageCapacity, :Status, :AdminServiceIp, :ConfigServiceIp, :EnableConfigInternet, :ConfigInternetServiceIp, :SpecId, :EnvReplica, :RunningCount, :AliasEnvName, :EnvDesc, :ClientBandWidth
        
        def initialize(envname=nil, vpcinfos=nil, storagecapacity=nil, status=nil, adminserviceip=nil, configserviceip=nil, enableconfiginternet=nil, configinternetserviceip=nil, specid=nil, envreplica=nil, runningcount=nil, aliasenvname=nil, envdesc=nil, clientbandwidth=nil)
          @EnvName = envname
          @VpcInfos = vpcinfos
          @StorageCapacity = storagecapacity
          @Status = status
          @AdminServiceIp = adminserviceip
          @ConfigServiceIp = configserviceip
          @EnableConfigInternet = enableconfiginternet
          @ConfigInternetServiceIp = configinternetserviceip
          @SpecId = specid
          @EnvReplica = envreplica
          @RunningCount = runningcount
          @AliasEnvName = aliasenvname
          @EnvDesc = envdesc
          @ClientBandWidth = clientbandwidth
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
          @SpecId = params['SpecId']
          @EnvReplica = params['EnvReplica']
          @RunningCount = params['RunningCount']
          @AliasEnvName = params['AliasEnvName']
          @EnvDesc = params['EnvDesc']
          @ClientBandWidth = params['ClientBandWidth']
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

      # 引擎实例的标签信息
      class InstanceTagInfo < TencentCloud::Common::AbstractModel
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

      # Nacos副本信息
      class NacosReplica < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Role: 角色
        # @type Role: String
        # @param Status: 状态
        # @type Status: String
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param Zone: 可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param ZoneId: 可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: String

        attr_accessor :Name, :Role, :Status, :SubnetId, :Zone, :ZoneId
        
        def initialize(name=nil, role=nil, status=nil, subnetid=nil, zone=nil, zoneid=nil)
          @Name = name
          @Role = role
          @Status = status
          @SubnetId = subnetid
          @Zone = zone
          @ZoneId = zoneid
        end

        def deserialize(params)
          @Name = params['Name']
          @Role = params['Role']
          @Status = params['Status']
          @SubnetId = params['SubnetId']
          @Zone = params['Zone']
          @ZoneId = params['ZoneId']
        end
      end

      # nacos服务端接口列表，用于云监控
      class NacosServerInterface < TencentCloud::Common::AbstractModel
        # @param Interface: 接口名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Interface: String

        attr_accessor :Interface
        
        def initialize(interface=nil)
          @Interface = interface
        end

        def deserialize(params)
          @Interface = params['Interface']
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
        # @param ConfigInfoVisible: 引擎实例是否展示参数配置页面
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigInfoVisible: Boolean
        # @param ConsoleDefaultPwd: 引擎实例控制台默认密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsoleDefaultPwd: String
        # @param TradeType: 交易付费类型，0后付费/1预付费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeType: Integer
        # @param AutoRenewFlag: 自动续费标记：0表示默认状态(用户未设置，即初始状态)， 1表示自动续费，2表示明确不自动续费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewFlag: Integer
        # @param CurDeadline: 预付费到期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurDeadline: String
        # @param IsolateTime: 隔离开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolateTime: String

        attr_accessor :InstanceId, :Name, :Edition, :Status, :SpecId, :Replica, :Type, :VpcId, :SubnetIds, :EnableStorage, :StorageType, :StorageCapacity, :Paymode, :EKSClusterID, :CreateTime, :EnvInfos, :EngineRegion, :EnableInternet, :VpcInfos, :ServiceGovernanceInfos, :Tags, :EnableConsoleInternet, :EnableConsoleIntranet, :ConfigInfoVisible, :ConsoleDefaultPwd, :TradeType, :AutoRenewFlag, :CurDeadline, :IsolateTime
        
        def initialize(instanceid=nil, name=nil, edition=nil, status=nil, specid=nil, replica=nil, type=nil, vpcid=nil, subnetids=nil, enablestorage=nil, storagetype=nil, storagecapacity=nil, paymode=nil, eksclusterid=nil, createtime=nil, envinfos=nil, engineregion=nil, enableinternet=nil, vpcinfos=nil, servicegovernanceinfos=nil, tags=nil, enableconsoleinternet=nil, enableconsoleintranet=nil, configinfovisible=nil, consoledefaultpwd=nil, tradetype=nil, autorenewflag=nil, curdeadline=nil, isolatetime=nil)
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
          @ConfigInfoVisible = configinfovisible
          @ConsoleDefaultPwd = consoledefaultpwd
          @TradeType = tradetype
          @AutoRenewFlag = autorenewflag
          @CurDeadline = curdeadline
          @IsolateTime = isolatetime
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
          @ConfigInfoVisible = params['ConfigInfoVisible']
          @ConsoleDefaultPwd = params['ConsoleDefaultPwd']
          @TradeType = params['TradeType']
          @AutoRenewFlag = params['AutoRenewFlag']
          @CurDeadline = params['CurDeadline']
          @IsolateTime = params['IsolateTime']
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
        # @param AuthOpen: 当前实例鉴权是否开启
        # @type AuthOpen: Boolean
        # @param Features: 该实例支持的功能，鉴权就是 Auth
        # @type Features: Array
        # @param MainPassword: 主账户名默认为 polaris，该值为主账户的默认密码
        # @type MainPassword: String
        # @param PgwVpcInfos: 服务治理pushgateway引擎绑定的网络信息
        # @type PgwVpcInfos: Array

        attr_accessor :EngineRegion, :BoundK8SInfos, :VpcInfos, :AuthOpen, :Features, :MainPassword, :PgwVpcInfos
        
        def initialize(engineregion=nil, boundk8sinfos=nil, vpcinfos=nil, authopen=nil, features=nil, mainpassword=nil, pgwvpcinfos=nil)
          @EngineRegion = engineregion
          @BoundK8SInfos = boundk8sinfos
          @VpcInfos = vpcinfos
          @AuthOpen = authopen
          @Features = features
          @MainPassword = mainpassword
          @PgwVpcInfos = pgwvpcinfos
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
          @AuthOpen = params['AuthOpen']
          @Features = params['Features']
          @MainPassword = params['MainPassword']
          unless params['PgwVpcInfos'].nil?
            @PgwVpcInfos = []
            params['PgwVpcInfos'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @PgwVpcInfos << vpcinfo_tmp
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

      # Zookeeper副本信息
      class ZookeeperReplica < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Role: 角色
        # @type Role: String
        # @param Status: 状态
        # @type Status: String
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param Zone: 可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param ZoneId: 可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: String

        attr_accessor :Name, :Role, :Status, :SubnetId, :Zone, :ZoneId
        
        def initialize(name=nil, role=nil, status=nil, subnetid=nil, zone=nil, zoneid=nil)
          @Name = name
          @Role = role
          @Status = status
          @SubnetId = subnetid
          @Zone = zone
          @ZoneId = zoneid
        end

        def deserialize(params)
          @Name = params['Name']
          @Role = params['Role']
          @Status = params['Status']
          @SubnetId = params['SubnetId']
          @Zone = params['Zone']
          @ZoneId = params['ZoneId']
        end
      end

      # Zookeeper服务端接口列表，用于云监控
      class ZookeeperServerInterface < TencentCloud::Common::AbstractModel
        # @param Interface: 接口名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Interface: String

        attr_accessor :Interface
        
        def initialize(interface=nil)
          @Interface = interface
        end

        def deserialize(params)
          @Interface = params['Interface']
        end
      end

    end
  end
end

