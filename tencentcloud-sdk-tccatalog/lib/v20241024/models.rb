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
  module Tccatalog
    module V20241024
      # AcceptTccVpcEndPointConnect请求参数结构体
      class AcceptTccVpcEndPointConnectRequest < TencentCloud::Common::AbstractModel
        # @param EndPointServiceId: 终端节点服务Id
        # @type EndPointServiceId: String
        # @param EndPointId: 终端节点id
        # @type EndPointId: Array
        # @param AcceptFlag: 是否接受连接
        # @type AcceptFlag: Boolean

        attr_accessor :EndPointServiceId, :EndPointId, :AcceptFlag

        def initialize(endpointserviceid=nil, endpointid=nil, acceptflag=nil)
          @EndPointServiceId = endpointserviceid
          @EndPointId = endpointid
          @AcceptFlag = acceptflag
        end

        def deserialize(params)
          @EndPointServiceId = params['EndPointServiceId']
          @EndPointId = params['EndPointId']
          @AcceptFlag = params['AcceptFlag']
        end
      end

      # AcceptTccVpcEndPointConnect返回参数结构体
      class AcceptTccVpcEndPointConnectResponse < TencentCloud::Common::AbstractModel
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

      # BindTccVpcEndPointServiceWhiteList请求参数结构体
      class BindTccVpcEndPointServiceWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param EndPointServiceId: 终端节点服务Id
        # @type EndPointServiceId: String
        # @param UserUin: 需要开白的用户Uin
        # @type UserUin: String
        # @param Description: 用户描述
        # @type Description: String

        attr_accessor :EndPointServiceId, :UserUin, :Description

        def initialize(endpointserviceid=nil, useruin=nil, description=nil)
          @EndPointServiceId = endpointserviceid
          @UserUin = useruin
          @Description = description
        end

        def deserialize(params)
          @EndPointServiceId = params['EndPointServiceId']
          @UserUin = params['UserUin']
          @Description = params['Description']
        end
      end

      # BindTccVpcEndPointServiceWhiteList返回参数结构体
      class BindTccVpcEndPointServiceWhiteListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeTccCatalog请求参数结构体
      class DescribeTccCatalogRequest < TencentCloud::Common::AbstractModel
        # @param CatalogId: 数据目录Id
        # @type CatalogId: String

        attr_accessor :CatalogId

        def initialize(catalogid=nil)
          @CatalogId = catalogid
        end

        def deserialize(params)
          @CatalogId = params['CatalogId']
        end
      end

      # DescribeTccCatalog返回参数结构体
      class DescribeTccCatalogResponse < TencentCloud::Common::AbstractModel
        # @param TccCatalog: Tcc数据目录信息
        # @type TccCatalog: :class:`Tencentcloud::Tccatalog.v20241024.models.TccCatalogConfig`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TccCatalog, :RequestId

        def initialize(tcccatalog=nil, requestid=nil)
          @TccCatalog = tcccatalog
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TccCatalog'].nil?
            @TccCatalog = TccCatalogConfig.new
            @TccCatalog.deserialize(params['TccCatalog'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTccCatalogs请求参数结构体
      class DescribeTccCatalogsRequest < TencentCloud::Common::AbstractModel
        # @param CatalogId: 数据目录Id
        # @type CatalogId: String
        # @param Name: 数据目录名称
        # @type Name: String
        # @param Type: 数据目录类型,当前支持：TCC-HIVE
        # @type Type: String
        # @param Status: 状态信息：注册中0，待测试1，连接成功2，连接失败3，删除中4，已删除5
        # @type Status: Integer
        # @param Operator: 操作人uin
        # @type Operator: String

        attr_accessor :CatalogId, :Name, :Type, :Status, :Operator

        def initialize(catalogid=nil, name=nil, type=nil, status=nil, operator=nil)
          @CatalogId = catalogid
          @Name = name
          @Type = type
          @Status = status
          @Operator = operator
        end

        def deserialize(params)
          @CatalogId = params['CatalogId']
          @Name = params['Name']
          @Type = params['Type']
          @Status = params['Status']
          @Operator = params['Operator']
        end
      end

      # DescribeTccCatalogs返回参数结构体
      class DescribeTccCatalogsResponse < TencentCloud::Common::AbstractModel
        # @param TccCatalogSet: 数据目录列表
        # @type TccCatalogSet: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TccCatalogSet, :Total, :RequestId

        def initialize(tcccatalogset=nil, total=nil, requestid=nil)
          @TccCatalogSet = tcccatalogset
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TccCatalogSet'].nil?
            @TccCatalogSet = []
            params['TccCatalogSet'].each do |i|
              tcccatalogset_tmp = TccCatalogSet.new
              tcccatalogset_tmp.deserialize(i)
              @TccCatalogSet << tcccatalogset_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # 网络配置信息
      class NetWork < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc实例id
        # @type VpcId: String
        # @param VpcCidrBlock: vpc网段
        # @type VpcCidrBlock: String
        # @param SubnetId: 子网实例id
        # @type SubnetId: String
        # @param SubnetCidrBlock: 子网网段
        # @type SubnetCidrBlock: String

        attr_accessor :VpcId, :VpcCidrBlock, :SubnetId, :SubnetCidrBlock

        def initialize(vpcid=nil, vpccidrblock=nil, subnetid=nil, subnetcidrblock=nil)
          @VpcId = vpcid
          @VpcCidrBlock = vpccidrblock
          @SubnetId = subnetid
          @SubnetCidrBlock = subnetcidrblock
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @VpcCidrBlock = params['VpcCidrBlock']
          @SubnetId = params['SubnetId']
          @SubnetCidrBlock = params['SubnetCidrBlock']
        end
      end

      # Tcc数据目录信息
      class TccCatalogConfig < TencentCloud::Common::AbstractModel
        # @param Id: 数据目录唯一id
        # @type Id: String
        # @param Name: 数据目录名字
        # @type Name: String
        # @param Type: 数据目录类型,当前支持：TCC-HIVE
        # @type Type: String
        # @param Comment: 描述信息
        # @type Comment: String
        # @param Status: 状态信息：注册中0，待测试1，连接成功2，连接失败3，删除中4，已删除5
        # @type Status: Integer
        # @param Connection: Tcc数据目录连接信息
        # @type Connection: :class:`Tencentcloud::Tccatalog.v20241024.models.TccConnectionConfig`
        # @param Operator: 操作人uin
        # @type Operator: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :Id, :Name, :Type, :Comment, :Status, :Connection, :Operator, :CreateTime, :UpdateTime

        def initialize(id=nil, name=nil, type=nil, comment=nil, status=nil, connection=nil, operator=nil, createtime=nil, updatetime=nil)
          @Id = id
          @Name = name
          @Type = type
          @Comment = comment
          @Status = status
          @Connection = connection
          @Operator = operator
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Type = params['Type']
          @Comment = params['Comment']
          @Status = params['Status']
          unless params['Connection'].nil?
            @Connection = TccConnectionConfig.new
            @Connection.deserialize(params['Connection'])
          end
          @Operator = params['Operator']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # Tcc数据目录信息集合
      class TccCatalogSet < TencentCloud::Common::AbstractModel
        # @param Id: 数据目录唯一id
        # @type Id: String
        # @param Name: 数据目录名字
        # @type Name: String
        # @param Type: 数据目录类型,当前支持：TCC-HIVE
        # @type Type: String
        # @param Status: 状态信息：注册中0，待测试1，连接成功2，连接失败3，删除中4，已删除5
        # @type Status: Integer
        # @param Operator: 操作人uin
        # @type Operator: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :Id, :Name, :Type, :Status, :Operator, :CreateTime, :UpdateTime

        def initialize(id=nil, name=nil, type=nil, status=nil, operator=nil, createtime=nil, updatetime=nil)
          @Id = id
          @Name = name
          @Type = type
          @Status = status
          @Operator = operator
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Type = params['Type']
          @Status = params['Status']
          @Operator = params['Operator']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # Tcc数据目录连接配置
      class TccConnection < TencentCloud::Common::AbstractModel
        # @param EndpointServiceId: 引擎终端节点服务Id
        # @type EndpointServiceId: String
        # @param MetaStoreUrl: 元数据连接串
        # @type MetaStoreUrl: String
        # @param NetWork: 网络信息
        # @type NetWork: :class:`Tencentcloud::Tccatalog.v20241024.models.NetWork`
        # @param HiveVersion: hive版本
        # @type HiveVersion: String
        # @param Location: hive location
        # @type Location: String
        # @param HmsEndpointServiceId: HMS终端节点服务
        # @type HmsEndpointServiceId: String

        attr_accessor :EndpointServiceId, :MetaStoreUrl, :NetWork, :HiveVersion, :Location, :HmsEndpointServiceId

        def initialize(endpointserviceid=nil, metastoreurl=nil, network=nil, hiveversion=nil, location=nil, hmsendpointserviceid=nil)
          @EndpointServiceId = endpointserviceid
          @MetaStoreUrl = metastoreurl
          @NetWork = network
          @HiveVersion = hiveversion
          @Location = location
          @HmsEndpointServiceId = hmsendpointserviceid
        end

        def deserialize(params)
          @EndpointServiceId = params['EndpointServiceId']
          @MetaStoreUrl = params['MetaStoreUrl']
          unless params['NetWork'].nil?
            @NetWork = NetWork.new
            @NetWork.deserialize(params['NetWork'])
          end
          @HiveVersion = params['HiveVersion']
          @Location = params['Location']
          @HmsEndpointServiceId = params['HmsEndpointServiceId']
        end
      end

      # Tcc数据目录连接信息
      class TccConnectionConfig < TencentCloud::Common::AbstractModel
        # @param TccHive: Tcc数据目录连接配置
        # @type TccHive: :class:`Tencentcloud::Tccatalog.v20241024.models.TccConnection`

        attr_accessor :TccHive

        def initialize(tcchive=nil)
          @TccHive = tcchive
        end

        def deserialize(params)
          unless params['TccHive'].nil?
            @TccHive = TccConnection.new
            @TccHive.deserialize(params['TccHive'])
          end
        end
      end

    end
  end
end

