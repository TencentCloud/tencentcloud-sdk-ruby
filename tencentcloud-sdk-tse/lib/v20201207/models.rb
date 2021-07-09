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
      # DescribeConfig请求参数结构体
      class DescribeConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Type: 配置中心类型（consul、zookeeper、apollo等）
        # @type Type: String
        # @param Key: 配置项的节点路径key
        # @type Key: String

        attr_accessor :InstanceId, :Type, :Key
        
        def initialize(instanceid=nil, type=nil, key=nil)
          @InstanceId = instanceid
          @Type = type
          @Key = key
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          @Key = params['Key']
        end
      end

      # DescribeConfig返回参数结构体
      class DescribeConfigResponse < TencentCloud::Common::AbstractModel
        # @param Key: 配置项或路径key
        # @type Key: String
        # @param Value: 配置项的值
        # @type Value: String
        # @param IsDir: 当前key是否为路径
        # @type IsDir: Boolean
        # @param List: 当前key下的子路径
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Key, :Value, :IsDir, :List, :RequestId
        
        def initialize(key=nil, value=nil, isdir=nil, list=nil, requestid=nil)
          @Key = key
          @Value = value
          @IsDir = isdir
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @IsDir = params['IsDir']
          @List = params['List']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSREInstanceAccessAddress请求参数结构体
      class DescribeSREInstanceAccessAddressRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 注册引擎实例Id
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeSREInstanceAccessAddress返回参数结构体
      class DescribeSREInstanceAccessAddressResponse < TencentCloud::Common::AbstractModel
        # @param IntranetAddress: 内网访问地址
        # @type IntranetAddress: String
        # @param InternetAddress: 公网访问地址
        # @type InternetAddress: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IntranetAddress, :InternetAddress, :RequestId
        
        def initialize(intranetaddress=nil, internetaddress=nil, requestid=nil)
          @IntranetAddress = intranetaddress
          @InternetAddress = internetaddress
          @RequestId = requestid
        end

        def deserialize(params)
          @IntranetAddress = params['IntranetAddress']
          @InternetAddress = params['InternetAddress']
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

        attr_accessor :Filters, :Limit, :Offset, :QueryType
        
        def initialize(filters=nil, limit=nil, offset=nil, querytype=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @QueryType = querytype
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

        attr_accessor :EnvName, :VpcInfos, :StorageCapacity, :Status, :AdminServiceIp, :ConfigServiceIp
        
        def initialize(envname=nil, vpcinfos=nil, storagecapacity=nil, status=nil, adminserviceip=nil, configserviceip=nil)
          @EnvName = envname
          @VpcInfos = vpcinfos
          @StorageCapacity = storagecapacity
          @Status = status
          @AdminServiceIp = adminserviceip
          @ConfigServiceIp = configserviceip
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

      # ManageConfig请求参数结构体
      class ManageConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Type: 配置中心类型（consul、zookeeper、apollo等）
        # @type Type: String
        # @param Command: 请求命名 PUT GET DELETE
        # @type Command: String
        # @param Key: 配置的Key
        # @type Key: String
        # @param Value: 配置的Value
        # @type Value: String

        attr_accessor :InstanceId, :Type, :Command, :Key, :Value
        
        def initialize(instanceid=nil, type=nil, command=nil, key=nil, value=nil)
          @InstanceId = instanceid
          @Type = type
          @Command = command
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          @Command = params['Command']
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # ManageConfig返回参数结构体
      class ManageConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 对配置中心操作配置之后的返回值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param OpResult: 操作是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpResult: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :OpResult, :RequestId
        
        def initialize(result=nil, opresult=nil, requestid=nil)
          @Result = result
          @OpResult = opresult
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @OpResult = params['OpResult']
          @RequestId = params['RequestId']
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

        attr_accessor :InstanceId, :Name, :Edition, :Status, :SpecId, :Replica, :Type, :VpcId, :SubnetIds, :EnableStorage, :StorageType, :StorageCapacity, :Paymode, :EKSClusterID, :CreateTime, :EnvInfos
        
        def initialize(instanceid=nil, name=nil, edition=nil, status=nil, specid=nil, replica=nil, type=nil, vpcid=nil, subnetids=nil, enablestorage=nil, storagetype=nil, storagecapacity=nil, paymode=nil, eksclusterid=nil, createtime=nil, envinfos=nil)
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
        end
      end

      # 私有网络信息
      class VpcInfo < TencentCloud::Common::AbstractModel
        # @param VpcId: Vpc Id
        # @type VpcId: String
        # @param SubnetId: 子网ID
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

