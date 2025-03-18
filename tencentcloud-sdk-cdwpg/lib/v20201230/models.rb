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
  module Cdwpg
    module V20201230
      # 访问信息
      class AccessInfo < TencentCloud::Common::AbstractModel
        # @param Address: 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param Protocol: 协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String

        attr_accessor :Address, :Protocol

        def initialize(address=nil, protocol=nil)
          @Address = address
          @Protocol = protocol
        end

        def deserialize(params)
          @Address = params['Address']
          @Protocol = params['Protocol']
        end
      end

      # 用于描述账号的实例ID、账号名
      class AccountInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param UserName: 账号名
        # @type UserName: String
        # @param Perms: 账户属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Perms: Array

        attr_accessor :InstanceId, :UserName, :Perms

        def initialize(instanceid=nil, username=nil, perms=nil)
          @InstanceId = instanceid
          @UserName = username
          @Perms = perms
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @Perms = params['Perms']
        end
      end

      # 磁盘规格
      class CBSSpec < TencentCloud::Common::AbstractModel
        # @param DiskType: 盘类型
        # @type DiskType: String
        # @param DiskSize: 大小
        # @type DiskSize: Integer
        # @param DiskCount: 个数
        # @type DiskCount: Integer

        attr_accessor :DiskType, :DiskSize, :DiskCount

        def initialize(disktype=nil, disksize=nil, diskcount=nil)
          @DiskType = disktype
          @DiskSize = disksize
          @DiskCount = diskcount
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @DiskCount = params['DiskCount']
        end
      end

      # 磁盘信息
      class CBSSpecInfo < TencentCloud::Common::AbstractModel
        # @param DiskType: 盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskType: String
        # @param DiskSize: 大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSize: Integer
        # @param DiskCount: 个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskCount: Integer

        attr_accessor :DiskType, :DiskSize, :DiskCount

        def initialize(disktype=nil, disksize=nil, diskcount=nil)
          @DiskType = disktype
          @DiskSize = disksize
          @DiskCount = diskcount
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @DiskCount = params['DiskCount']
        end
      end

      # 云原生资源规格描述信息
      class CNResourceSpec < TencentCloud::Common::AbstractModel
        # @param Type: 无
        # @type Type: String
        # @param SpecName: 无
        # @type SpecName: String
        # @param Count: 无
        # @type Count: Integer
        # @param DiskSpec: 无
        # @type DiskSpec: :class:`Tencentcloud::Cdwpg.v20201230.models.CBSSpec`

        attr_accessor :Type, :SpecName, :Count, :DiskSpec

        def initialize(type=nil, specname=nil, count=nil, diskspec=nil)
          @Type = type
          @SpecName = specname
          @Count = count
          @DiskSpec = diskspec
        end

        def deserialize(params)
          @Type = params['Type']
          @SpecName = params['SpecName']
          @Count = params['Count']
          unless params['DiskSpec'].nil?
            @DiskSpec = CBSSpec.new
            @DiskSpec.deserialize(params['DiskSpec'])
          end
        end
      end

      # 计费时间参数
      class ChargeProperties < TencentCloud::Common::AbstractModel
        # @param RenewFlag: 1-需要自动续期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param TimeSpan: 订单时间范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeSpan: Integer
        # @param TimeUnit: 时间单位，一般为h和m
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeUnit: String
        # @param PayMode: 计费类型0-按量计费，1-包年包月
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: Integer
        # @param ChargeType: PREPAID、POSTPAID_BY_HOUR
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeType: String

        attr_accessor :RenewFlag, :TimeSpan, :TimeUnit, :PayMode, :ChargeType

        def initialize(renewflag=nil, timespan=nil, timeunit=nil, paymode=nil, chargetype=nil)
          @RenewFlag = renewflag
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @PayMode = paymode
          @ChargeType = chargetype
        end

        def deserialize(params)
          @RenewFlag = params['RenewFlag']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @PayMode = params['PayMode']
          @ChargeType = params['ChargeType']
        end
      end

      # ConfigHistory1
      class ConfigHistory < TencentCloud::Common::AbstractModel
        # @param Id: id1
        # @type Id: Integer
        # @param InstanceId: 实例名
        # @type InstanceId: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String
        # @param NodeType: dn/cn
        # @type NodeType: String
        # @param ParamName: 参数名
        # @type ParamName: String
        # @param ParamNewValue: 新参数值
        # @type ParamNewValue: String
        # @param ParamOldValue: 旧参数值
        # @type ParamOldValue: String
        # @param Status: 状态 doing/success
        # @type Status: String

        attr_accessor :Id, :InstanceId, :CreatedAt, :UpdatedAt, :NodeType, :ParamName, :ParamNewValue, :ParamOldValue, :Status

        def initialize(id=nil, instanceid=nil, createdat=nil, updatedat=nil, nodetype=nil, paramname=nil, paramnewvalue=nil, paramoldvalue=nil, status=nil)
          @Id = id
          @InstanceId = instanceid
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @NodeType = nodetype
          @ParamName = paramname
          @ParamNewValue = paramnewvalue
          @ParamOldValue = paramoldvalue
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @InstanceId = params['InstanceId']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @NodeType = params['NodeType']
          @ParamName = params['ParamName']
          @ParamNewValue = params['ParamNewValue']
          @ParamOldValue = params['ParamOldValue']
          @Status = params['Status']
        end
      end

      # 参数
      class ConfigParams < TencentCloud::Common::AbstractModel
        # @param ParameterName: 名字
        # @type ParameterName: String
        # @param ParameterValue: 值
        # @type ParameterValue: String
        # @param ParameterOldValue: 修改前的值
        # @type ParameterOldValue: String

        attr_accessor :ParameterName, :ParameterValue, :ParameterOldValue

        def initialize(parametername=nil, parametervalue=nil, parameteroldvalue=nil)
          @ParameterName = parametername
          @ParameterValue = parametervalue
          @ParameterOldValue = parameteroldvalue
        end

        def deserialize(params)
          @ParameterName = params['ParameterName']
          @ParameterValue = params['ParameterValue']
          @ParameterOldValue = params['ParameterOldValue']
        end
      end

      # CreateInstanceByApi请求参数结构体
      class CreateInstanceByApiRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param UserVPCId: 私有网络
        # @type UserVPCId: String
        # @param UserSubnetId: 子网
        # @type UserSubnetId: String
        # @param ChargeProperties: 计费方式
        # @type ChargeProperties: :class:`Tencentcloud::Cdwpg.v20201230.models.ChargeProperties`
        # @param AdminPassword: 集群密码
        # @type AdminPassword: String
        # @param Resources: 资源信息
        # @type Resources: Array
        # @param Tags: 标签列表
        # @type Tags: :class:`Tencentcloud::Cdwpg.v20201230.models.Tag`
        # @param ProductVersion: 版本
        # @type ProductVersion: String

        attr_accessor :InstanceName, :Zone, :UserVPCId, :UserSubnetId, :ChargeProperties, :AdminPassword, :Resources, :Tags, :ProductVersion

        def initialize(instancename=nil, zone=nil, uservpcid=nil, usersubnetid=nil, chargeproperties=nil, adminpassword=nil, resources=nil, tags=nil, productversion=nil)
          @InstanceName = instancename
          @Zone = zone
          @UserVPCId = uservpcid
          @UserSubnetId = usersubnetid
          @ChargeProperties = chargeproperties
          @AdminPassword = adminpassword
          @Resources = resources
          @Tags = tags
          @ProductVersion = productversion
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @Zone = params['Zone']
          @UserVPCId = params['UserVPCId']
          @UserSubnetId = params['UserSubnetId']
          unless params['ChargeProperties'].nil?
            @ChargeProperties = ChargeProperties.new
            @ChargeProperties.deserialize(params['ChargeProperties'])
          end
          @AdminPassword = params['AdminPassword']
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              resourcespecnew_tmp = ResourceSpecNew.new
              resourcespecnew_tmp.deserialize(i)
              @Resources << resourcespecnew_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = Tag.new
            @Tags.deserialize(params['Tags'])
          end
          @ProductVersion = params['ProductVersion']
        end
      end

      # CreateInstanceByApi返回参数结构体
      class CreateInstanceByApiResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: String
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param ErrorMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeAccounts请求参数结构体
      class DescribeAccountsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100
        # @type Limit: Integer

        attr_accessor :InstanceId, :Offset, :Limit

        def initialize(instanceid=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAccounts返回参数结构体
      class DescribeAccountsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Accounts: 账号数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Accounts: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Accounts, :RequestId

        def initialize(totalcount=nil, accounts=nil, requestid=nil)
          @TotalCount = totalcount
          @Accounts = accounts
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              accountinfo_tmp = AccountInfo.new
              accountinfo_tmp.deserialize(i)
              @Accounts << accountinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBConfigHistory请求参数结构体
      class DescribeDBConfigHistoryRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Limit: 数据库分页
        # @type Limit: Integer
        # @param Offset: 数据库分页
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

      # DescribeDBConfigHistory返回参数结构体
      class DescribeDBConfigHistoryResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param ConfigHistory: 历史参数
        # @type ConfigHistory: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ConfigHistory, :RequestId

        def initialize(totalcount=nil, confighistory=nil, requestid=nil)
          @TotalCount = totalcount
          @ConfigHistory = confighistory
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ConfigHistory'].nil?
            @ConfigHistory = []
            params['ConfigHistory'].each do |i|
              confighistory_tmp = ConfigHistory.new
              confighistory_tmp.deserialize(i)
              @ConfigHistory << confighistory_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBParams请求参数结构体
      class DescribeDBParamsRequest < TencentCloud::Common::AbstractModel
        # @param NodeTypes: cn/dn
        # @type NodeTypes: Array
        # @param Limit: range::(0,100]
        # @type Limit: Integer
        # @param Offset: range::[0,INF)
        # @type Offset: Integer
        # @param InstanceId: InstanceId名称
        # @type InstanceId: String

        attr_accessor :NodeTypes, :Limit, :Offset, :InstanceId

        def initialize(nodetypes=nil, limit=nil, offset=nil, instanceid=nil)
          @NodeTypes = nodetypes
          @Limit = limit
          @Offset = offset
          @InstanceId = instanceid
        end

        def deserialize(params)
          @NodeTypes = params['NodeTypes']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBParams返回参数结构体
      class DescribeDBParamsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Items: 参数信息
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
              paramitem_tmp = ParamItem.new
              paramitem_tmp.deserialize(i)
              @Items << paramitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeErrorLog请求参数结构体
      class DescribeErrorLogRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Limit: 返回数量，默认为20，最大值为2000
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :Limit, :Offset

        def initialize(instanceid=nil, starttime=nil, endtime=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeErrorLog返回参数结构体
      class DescribeErrorLogResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回信息总数
        # @type TotalCount: Integer
        # @param ErrorLogDetails: 错误日志详细信息
        # @type ErrorLogDetails: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ErrorLogDetails, :RequestId

        def initialize(totalcount=nil, errorlogdetails=nil, requestid=nil)
          @TotalCount = totalcount
          @ErrorLogDetails = errorlogdetails
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ErrorLogDetails'].nil?
            @ErrorLogDetails = []
            params['ErrorLogDetails'].each do |i|
              errorlogdetail_tmp = ErrorLogDetail.new
              errorlogdetail_tmp.deserialize(i)
              @ErrorLogDetails << errorlogdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceInfo请求参数结构体
      class DescribeInstanceInfoRequest < TencentCloud::Common::AbstractModel
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

      # DescribeInstanceInfo返回参数结构体
      class DescribeInstanceInfoResponse < TencentCloud::Common::AbstractModel
        # @param SimpleInstanceInfo: 集群描述信息
        # @type SimpleInstanceInfo: :class:`Tencentcloud::Cdwpg.v20201230.models.SimpleInstanceInfo`
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SimpleInstanceInfo, :ErrorMsg, :RequestId

        def initialize(simpleinstanceinfo=nil, errormsg=nil, requestid=nil)
          @SimpleInstanceInfo = simpleinstanceinfo
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SimpleInstanceInfo'].nil?
            @SimpleInstanceInfo = SimpleInstanceInfo.new
            @SimpleInstanceInfo.deserialize(params['SimpleInstanceInfo'])
          end
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceNodes请求参数结构体
      class DescribeInstanceNodesRequest < TencentCloud::Common::AbstractModel
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

      # DescribeInstanceNodes返回参数结构体
      class DescribeInstanceNodesResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: error msg
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param InstanceNodes: 节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceNodes: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :InstanceNodes, :RequestId

        def initialize(errormsg=nil, instancenodes=nil, requestid=nil)
          @ErrorMsg = errormsg
          @InstanceNodes = instancenodes
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          unless params['InstanceNodes'].nil?
            @InstanceNodes = []
            params['InstanceNodes'].each do |i|
              instancenode_tmp = InstanceNode.new
              instancenode_tmp.deserialize(i)
              @InstanceNodes << instancenode_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceOperations请求参数结构体
      class DescribeInstanceOperationsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Offset: 分页参数，偏移量，从0开始
        # @type Offset: Integer
        # @param Limit: 分页参数，每页数目，默认为10
        # @type Limit: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :InstanceId, :Offset, :Limit, :StartTime, :EndTime

        def initialize(instanceid=nil, offset=nil, limit=nil, starttime=nil, endtime=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeInstanceOperations返回参数结构体
      class DescribeInstanceOperationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 操作记录总数
        # @type TotalCount: Integer
        # @param Operations: 操作记录具体数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operations: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Operations, :RequestId

        def initialize(totalcount=nil, operations=nil, requestid=nil)
          @TotalCount = totalcount
          @Operations = operations
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Operations'].nil?
            @Operations = []
            params['Operations'].each do |i|
              instanceoperation_tmp = InstanceOperation.new
              instanceoperation_tmp.deserialize(i)
              @Operations << instanceoperation_tmp
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
        # @type InstanceInfo: :class:`Tencentcloud::Cdwpg.v20201230.models.InstanceInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param ProcessName: 当前步骤的名称，例如：”购买资源中“
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessName: String
        # @param BackupStatus: 集群备份任务开启状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupStatus: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceState, :FlowCreateTime, :FlowName, :FlowProgress, :InstanceStateDesc, :FlowMsg, :ProcessName, :BackupStatus, :RequestId

        def initialize(instancestate=nil, flowcreatetime=nil, flowname=nil, flowprogress=nil, instancestatedesc=nil, flowmsg=nil, processname=nil, backupstatus=nil, requestid=nil)
          @InstanceState = instancestate
          @FlowCreateTime = flowcreatetime
          @FlowName = flowname
          @FlowProgress = flowprogress
          @InstanceStateDesc = instancestatedesc
          @FlowMsg = flowmsg
          @ProcessName = processname
          @BackupStatus = backupstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceState = params['InstanceState']
          @FlowCreateTime = params['FlowCreateTime']
          @FlowName = params['FlowName']
          @FlowProgress = params['FlowProgress']
          @InstanceStateDesc = params['InstanceStateDesc']
          @FlowMsg = params['FlowMsg']
          @ProcessName = params['ProcessName']
          @BackupStatus = params['BackupStatus']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param InstancesList: 实例数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstancesList: Array
        # @param ErrorMsg: -
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstancesList, :ErrorMsg, :RequestId

        def initialize(totalcount=nil, instanceslist=nil, errormsg=nil, requestid=nil)
          @TotalCount = totalcount
          @InstancesList = instanceslist
          @ErrorMsg = errormsg
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
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSimpleInstances请求参数结构体
      class DescribeSimpleInstancesRequest < TencentCloud::Common::AbstractModel
        # @param SearchInstanceId: 11
        # @type SearchInstanceId: String
        # @param SearchInstanceName: 11
        # @type SearchInstanceName: String
        # @param Offset: 11
        # @type Offset: Integer
        # @param Limit: 11
        # @type Limit: Integer
        # @param SearchTags: 11
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
          @SearchTags = params['SearchTags']
        end
      end

      # DescribeSimpleInstances返回参数结构体
      class DescribeSimpleInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param InstancesList: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstancesList: Array
        # @param ErrorMsg: -
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstancesList, :ErrorMsg, :RequestId

        def initialize(totalcount=nil, instanceslist=nil, errormsg=nil, requestid=nil)
          @TotalCount = totalcount
          @InstancesList = instanceslist
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstancesList'].nil?
            @InstancesList = []
            params['InstancesList'].each do |i|
              instancesimpleinfonew_tmp = InstanceSimpleInfoNew.new
              instancesimpleinfonew_tmp.deserialize(i)
              @InstancesList << instancesimpleinfonew_tmp
            end
          end
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowLog请求参数结构体
      class DescribeSlowLogRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Limit: 返回数量，默认为20，最大值为2000
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Database: 数据库
        # @type Database: String
        # @param OrderBy: 排序根据
        # @type OrderBy: String
        # @param OrderByType: 升降序
        # @type OrderByType: String
        # @param Duration: 过滤时间
        # @type Duration: Float

        attr_accessor :InstanceId, :StartTime, :EndTime, :Limit, :Offset, :Database, :OrderBy, :OrderByType, :Duration

        def initialize(instanceid=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, database=nil, orderby=nil, orderbytype=nil, duration=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @Database = database
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Duration = duration
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Database = params['Database']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          @Duration = params['Duration']
        end
      end

      # DescribeSlowLog返回参数结构体
      class DescribeSlowLogResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回信息总数
        # @type TotalCount: Integer
        # @param SlowLogDetails: 慢SQL日志详细信息
        # @type SlowLogDetails: :class:`Tencentcloud::Cdwpg.v20201230.models.SlowLogDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SlowLogDetails, :RequestId

        def initialize(totalcount=nil, slowlogdetails=nil, requestid=nil)
          @TotalCount = totalcount
          @SlowLogDetails = slowlogdetails
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SlowLogDetails'].nil?
            @SlowLogDetails = SlowLogDetail.new
            @SlowLogDetails.deserialize(params['SlowLogDetails'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUpgradeList请求参数结构体
      class DescribeUpgradeListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Offset: 分页参数，偏移量，从0开始
        # @type Offset: Integer
        # @param Limit: 分页参数，每页数目，默认为10
        # @type Limit: Integer

        attr_accessor :InstanceId, :Offset, :Limit

        def initialize(instanceid=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeUpgradeList返回参数结构体
      class DescribeUpgradeListResponse < TencentCloud::Common::AbstractModel
        # @param UpgradeItems: 升级记录具体数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpgradeItems: Array
        # @param TotalCount: 升级记录总数
        # @type TotalCount: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UpgradeItems, :TotalCount, :RequestId

        def initialize(upgradeitems=nil, totalcount=nil, requestid=nil)
          @UpgradeItems = upgradeitems
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UpgradeItems'].nil?
            @UpgradeItems = []
            params['UpgradeItems'].each do |i|
              upgradeitem_tmp = UpgradeItem.new
              upgradeitem_tmp.deserialize(i)
              @UpgradeItems << upgradeitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserHbaConfig请求参数结构体
      class DescribeUserHbaConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeUserHbaConfig返回参数结构体
      class DescribeUserHbaConfigResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param HbaConfigs: hba数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HbaConfigs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :HbaConfigs, :RequestId

        def initialize(totalcount=nil, hbaconfigs=nil, requestid=nil)
          @TotalCount = totalcount
          @HbaConfigs = hbaconfigs
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['HbaConfigs'].nil?
            @HbaConfigs = []
            params['HbaConfigs'].each do |i|
              hbaconfig_tmp = HbaConfig.new
              hbaconfig_tmp.deserialize(i)
              @HbaConfigs << hbaconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DestroyInstanceByApi请求参数结构体
      class DestroyInstanceByApiRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例名称，例如"cdwpg-xxxx"
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DestroyInstanceByApi返回参数结构体
      class DestroyInstanceByApiResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 销毁流程Id
        # @type FlowId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 磁盘规格
      class DiskSpecPlus < TencentCloud::Common::AbstractModel
        # @param DiskCount: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskCount: Integer
        # @param MaxDiskSize: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxDiskSize: Integer
        # @param MinDiskSize: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinDiskSize: Integer
        # @param DiskType: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskType: String
        # @param DiskDesc: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskDesc: String
        # @param CvmClass: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CvmClass: String

        attr_accessor :DiskCount, :MaxDiskSize, :MinDiskSize, :DiskType, :DiskDesc, :CvmClass

        def initialize(diskcount=nil, maxdisksize=nil, mindisksize=nil, disktype=nil, diskdesc=nil, cvmclass=nil)
          @DiskCount = diskcount
          @MaxDiskSize = maxdisksize
          @MinDiskSize = mindisksize
          @DiskType = disktype
          @DiskDesc = diskdesc
          @CvmClass = cvmclass
        end

        def deserialize(params)
          @DiskCount = params['DiskCount']
          @MaxDiskSize = params['MaxDiskSize']
          @MinDiskSize = params['MinDiskSize']
          @DiskType = params['DiskType']
          @DiskDesc = params['DiskDesc']
          @CvmClass = params['CvmClass']
        end
      end

      # 错误日志详细信息
      class ErrorLogDetail < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Database: 数据库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Database: String
        # @param ErrorTime: 报错时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorTime: String
        # @param ErrorMessage: 报错信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String

        attr_accessor :UserName, :Database, :ErrorTime, :ErrorMessage

        def initialize(username=nil, database=nil, errortime=nil, errormessage=nil)
          @UserName = username
          @Database = database
          @ErrorTime = errortime
          @ErrorMessage = errormessage
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Database = params['Database']
          @ErrorTime = params['ErrorTime']
          @ErrorMessage = params['ErrorMessage']
        end
      end

      # user_config
      class HbaConfig < TencentCloud::Common::AbstractModel
        # @param Type: 类型
        # @type Type: String
        # @param Database: 数据库
        # @type Database: String
        # @param User: 用户
        # @type User: String
        # @param Address: ip地址
        # @type Address: String
        # @param Method: 方法
        # @type Method: String
        # @param Mask: 是否遮盖
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mask: String

        attr_accessor :Type, :Database, :User, :Address, :Method, :Mask

        def initialize(type=nil, database=nil, user=nil, address=nil, method=nil, mask=nil)
          @Type = type
          @Database = database
          @User = user
          @Address = address
          @Method = method
          @Mask = mask
        end

        def deserialize(params)
          @Type = params['Type']
          @Database = params['Database']
          @User = params['User']
          @Address = params['Address']
          @Method = params['Method']
          @Mask = params['Mask']
        end
      end

      # 云原生实例详情
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param ID: ID值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer
        # @param InstanceType: cdwpg-cn或者其他
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param InstanceName: cdwpg-cn或者其他
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Status: Running
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param StatusDesc: 运行中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param InstanceStateInfo: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStateInfo: :class:`Tencentcloud::Cdwpg.v20201230.models.InstanceStateInfo`
        # @param InstanceID: -
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceID: String
        # @param CreateTime: 2022-09-05 20:00:01
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Region: ap-chongqing
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Zone: ap
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param RegionDesc: region
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionDesc: String
        # @param ZoneDesc: zone
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneDesc: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Version: v3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Charset: 字符集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Charset: String
        # @param CNNodes: CN节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CNNodes: Array
        # @param DNNodes: DN节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DNNodes: Array
        # @param RegionId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer
        # @param ZoneId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param VpcId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param ExpireTime: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param PayMode: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String
        # @param RenewFlag: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Boolean
        # @param InstanceId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param AccessDetails: 访问信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessDetails: Array

        attr_accessor :ID, :InstanceType, :InstanceName, :Status, :StatusDesc, :InstanceStateInfo, :InstanceID, :CreateTime, :Region, :Zone, :RegionDesc, :ZoneDesc, :Tags, :Version, :Charset, :CNNodes, :DNNodes, :RegionId, :ZoneId, :VpcId, :SubnetId, :ExpireTime, :PayMode, :RenewFlag, :InstanceId, :AccessDetails

        def initialize(id=nil, instancetype=nil, instancename=nil, status=nil, statusdesc=nil, instancestateinfo=nil, instanceid=nil, createtime=nil, region=nil, zone=nil, regiondesc=nil, zonedesc=nil, tags=nil, version=nil, charset=nil, cnnodes=nil, dnnodes=nil, regionid=nil, zoneid=nil, vpcid=nil, subnetid=nil, expiretime=nil, paymode=nil, renewflag=nil, instanceid=nil, accessdetails=nil)
          @ID = id
          @InstanceType = instancetype
          @InstanceName = instancename
          @Status = status
          @StatusDesc = statusdesc
          @InstanceStateInfo = instancestateinfo
          @InstanceID = instanceid
          @CreateTime = createtime
          @Region = region
          @Zone = zone
          @RegionDesc = regiondesc
          @ZoneDesc = zonedesc
          @Tags = tags
          @Version = version
          @Charset = charset
          @CNNodes = cnnodes
          @DNNodes = dnnodes
          @RegionId = regionid
          @ZoneId = zoneid
          @VpcId = vpcid
          @SubnetId = subnetid
          @ExpireTime = expiretime
          @PayMode = paymode
          @RenewFlag = renewflag
          @InstanceId = instanceid
          @AccessDetails = accessdetails
        end

        def deserialize(params)
          @ID = params['ID']
          @InstanceType = params['InstanceType']
          @InstanceName = params['InstanceName']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          unless params['InstanceStateInfo'].nil?
            @InstanceStateInfo = InstanceStateInfo.new
            @InstanceStateInfo.deserialize(params['InstanceStateInfo'])
          end
          @InstanceID = params['InstanceID']
          @CreateTime = params['CreateTime']
          @Region = params['Region']
          @Zone = params['Zone']
          @RegionDesc = params['RegionDesc']
          @ZoneDesc = params['ZoneDesc']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Version = params['Version']
          @Charset = params['Charset']
          unless params['CNNodes'].nil?
            @CNNodes = []
            params['CNNodes'].each do |i|
              instancenodegroup_tmp = InstanceNodeGroup.new
              instancenodegroup_tmp.deserialize(i)
              @CNNodes << instancenodegroup_tmp
            end
          end
          unless params['DNNodes'].nil?
            @DNNodes = []
            params['DNNodes'].each do |i|
              instancenodegroup_tmp = InstanceNodeGroup.new
              instancenodegroup_tmp.deserialize(i)
              @DNNodes << instancenodegroup_tmp
            end
          end
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ExpireTime = params['ExpireTime']
          @PayMode = params['PayMode']
          @RenewFlag = params['RenewFlag']
          @InstanceId = params['InstanceId']
          unless params['AccessDetails'].nil?
            @AccessDetails = []
            params['AccessDetails'].each do |i|
              accessinfo_tmp = AccessInfo.new
              accessinfo_tmp.deserialize(i)
              @AccessDetails << accessinfo_tmp
            end
          end
        end
      end

      # Instance node
      class InstanceNode < TencentCloud::Common::AbstractModel
        # @param NodeId: id
        # @type NodeId: Integer
        # @param NodeType: cn
        # @type NodeType: String
        # @param NodeIp: ip
        # @type NodeIp: String

        attr_accessor :NodeId, :NodeType, :NodeIp

        def initialize(nodeid=nil, nodetype=nil, nodeip=nil)
          @NodeId = nodeid
          @NodeType = nodetype
          @NodeIp = nodeip
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @NodeType = params['NodeType']
          @NodeIp = params['NodeIp']
        end
      end

      # 集群节点信息
      class InstanceNodeGroup < TencentCloud::Common::AbstractModel
        # @param SpecName: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecName: String
        # @param DataDisk: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataDisk: :class:`Tencentcloud::Cdwpg.v20201230.models.DiskSpecPlus`
        # @param CvmCount: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CvmCount: Integer

        attr_accessor :SpecName, :DataDisk, :CvmCount

        def initialize(specname=nil, datadisk=nil, cvmcount=nil)
          @SpecName = specname
          @DataDisk = datadisk
          @CvmCount = cvmcount
        end

        def deserialize(params)
          @SpecName = params['SpecName']
          unless params['DataDisk'].nil?
            @DataDisk = DiskSpecPlus.new
            @DataDisk.deserialize(params['DataDisk'])
          end
          @CvmCount = params['CvmCount']
        end
      end

      # 集群操作描述
      class InstanceOperation < TencentCloud::Common::AbstractModel
        # @param Id: 操作名称，例如“create_instance"、“scaleout_instance”等
        # @type Id: Integer
        # @param InstanceId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param Action: 操作名称描述，例如“创建”，“修改集群名称”等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param StartTime: 操作开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 操作结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Context: 操作上下文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String
        # @param UpdateTime: 操作更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Uin: 操作UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String

        attr_accessor :Id, :InstanceId, :Action, :Status, :StartTime, :EndTime, :Context, :UpdateTime, :Uin

        def initialize(id=nil, instanceid=nil, action=nil, status=nil, starttime=nil, endtime=nil, context=nil, updatetime=nil, uin=nil)
          @Id = id
          @InstanceId = instanceid
          @Action = action
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
          @Context = context
          @UpdateTime = updatetime
          @Uin = uin
        end

        def deserialize(params)
          @Id = params['Id']
          @InstanceId = params['InstanceId']
          @Action = params['Action']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Context = params['Context']
          @UpdateTime = params['UpdateTime']
          @Uin = params['Uin']
        end
      end

      # 精简集群信息
      class InstanceSimpleInfoNew < TencentCloud::Common::AbstractModel
        # @param ID: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer
        # @param InstanceId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Version: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Region: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param RegionId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer
        # @param RegionDesc: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionDesc: String
        # @param Zone: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param ZoneId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param ZoneDesc: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneDesc: String
        # @param VpcId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param CreateTime: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ExpireTime: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param AccessInfo: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessInfo: String
        # @param PayMode: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String
        # @param RenewFlag: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Boolean

        attr_accessor :ID, :InstanceId, :InstanceName, :Version, :Region, :RegionId, :RegionDesc, :Zone, :ZoneId, :ZoneDesc, :VpcId, :SubnetId, :CreateTime, :ExpireTime, :AccessInfo, :PayMode, :RenewFlag

        def initialize(id=nil, instanceid=nil, instancename=nil, version=nil, region=nil, regionid=nil, regiondesc=nil, zone=nil, zoneid=nil, zonedesc=nil, vpcid=nil, subnetid=nil, createtime=nil, expiretime=nil, accessinfo=nil, paymode=nil, renewflag=nil)
          @ID = id
          @InstanceId = instanceid
          @InstanceName = instancename
          @Version = version
          @Region = region
          @RegionId = regionid
          @RegionDesc = regiondesc
          @Zone = zone
          @ZoneId = zoneid
          @ZoneDesc = zonedesc
          @VpcId = vpcid
          @SubnetId = subnetid
          @CreateTime = createtime
          @ExpireTime = expiretime
          @AccessInfo = accessinfo
          @PayMode = paymode
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @ID = params['ID']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Version = params['Version']
          @Region = params['Region']
          @RegionId = params['RegionId']
          @RegionDesc = params['RegionDesc']
          @Zone = params['Zone']
          @ZoneId = params['ZoneId']
          @ZoneDesc = params['ZoneDesc']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @AccessInfo = params['AccessInfo']
          @PayMode = params['PayMode']
          @RenewFlag = params['RenewFlag']
        end
      end

      # 集群状态抽象后的结构体
      class InstanceStateInfo < TencentCloud::Common::AbstractModel
        # @param InstanceState: 集群状态，例如：Serving
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceState: String
        # @param FlowCreateTime: 集群操作创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowCreateTime: String
        # @param FlowName: 集群操作名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowName: String
        # @param FlowProgress: 集群操作进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowProgress: Integer
        # @param InstanceStateDesc: 集群状态描述，例如：运行中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStateDesc: String
        # @param FlowMsg: 集群流程错误信息，例如：“创建失败，资源不足”
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowMsg: String
        # @param ProcessName: 当前步骤的名称，例如：”购买资源中“
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessName: String
        # @param BackupStatus: 集群是否有备份中任务，有为1,无为0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupStatus: Integer
        # @param RequestId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestId: String
        # @param BackupOpenStatus: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupOpenStatus: Integer

        attr_accessor :InstanceState, :FlowCreateTime, :FlowName, :FlowProgress, :InstanceStateDesc, :FlowMsg, :ProcessName, :BackupStatus, :RequestId, :BackupOpenStatus

        def initialize(instancestate=nil, flowcreatetime=nil, flowname=nil, flowprogress=nil, instancestatedesc=nil, flowmsg=nil, processname=nil, backupstatus=nil, requestid=nil, backupopenstatus=nil)
          @InstanceState = instancestate
          @FlowCreateTime = flowcreatetime
          @FlowName = flowname
          @FlowProgress = flowprogress
          @InstanceStateDesc = instancestatedesc
          @FlowMsg = flowmsg
          @ProcessName = processname
          @BackupStatus = backupstatus
          @RequestId = requestid
          @BackupOpenStatus = backupopenstatus
        end

        def deserialize(params)
          @InstanceState = params['InstanceState']
          @FlowCreateTime = params['FlowCreateTime']
          @FlowName = params['FlowName']
          @FlowProgress = params['FlowProgress']
          @InstanceStateDesc = params['InstanceStateDesc']
          @FlowMsg = params['FlowMsg']
          @ProcessName = params['ProcessName']
          @BackupStatus = params['BackupStatus']
          @RequestId = params['RequestId']
          @BackupOpenStatus = params['BackupOpenStatus']
        end
      end

      # ModifyDBParameters请求参数结构体
      class ModifyDBParametersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: Instance 名字
        # @type InstanceId: String
        # @param NodeConfigParams: node参数
        # @type NodeConfigParams: Array

        attr_accessor :InstanceId, :NodeConfigParams

        def initialize(instanceid=nil, nodeconfigparams=nil)
          @InstanceId = instanceid
          @NodeConfigParams = nodeconfigparams
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['NodeConfigParams'].nil?
            @NodeConfigParams = []
            params['NodeConfigParams'].each do |i|
              nodeconfigparams_tmp = NodeConfigParams.new
              nodeconfigparams_tmp.deserialize(i)
              @NodeConfigParams << nodeconfigparams_tmp
            end
          end
        end
      end

      # ModifyDBParameters返回参数结构体
      class ModifyDBParametersResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步流程Id
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyUserHba请求参数结构体
      class ModifyUserHbaRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param HbaConfigs: hba数组
        # @type HbaConfigs: Array

        attr_accessor :InstanceId, :HbaConfigs

        def initialize(instanceid=nil, hbaconfigs=nil)
          @InstanceId = instanceid
          @HbaConfigs = hbaconfigs
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['HbaConfigs'].nil?
            @HbaConfigs = []
            params['HbaConfigs'].each do |i|
              hbaconfig_tmp = HbaConfig.new
              hbaconfig_tmp.deserialize(i)
              @HbaConfigs << hbaconfig_tmp
            end
          end
        end
      end

      # ModifyUserHba返回参数结构体
      class ModifyUserHbaResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param ErrorMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :ErrorMsg, :RequestId

        def initialize(taskid=nil, errormsg=nil, requestid=nil)
          @TaskId = taskid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # node参数
      class NodeConfigParams < TencentCloud::Common::AbstractModel
        # @param NodeType: node类型
        # @type NodeType: String
        # @param ConfigParams: 参数
        # @type ConfigParams: Array

        attr_accessor :NodeType, :ConfigParams

        def initialize(nodetype=nil, configparams=nil)
          @NodeType = nodetype
          @ConfigParams = configparams
        end

        def deserialize(params)
          @NodeType = params['NodeType']
          unless params['ConfigParams'].nil?
            @ConfigParams = []
            params['ConfigParams'].each do |i|
              configparams_tmp = ConfigParams.new
              configparams_tmp.deserialize(i)
              @ConfigParams << configparams_tmp
            end
          end
        end
      end

      # 慢查询项目信息
      class NormQueryItem < TencentCloud::Common::AbstractModel
        # @param CallTimes: 调用次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallTimes: Integer
        # @param SharedReadBlocks: 读共享内存块数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SharedReadBlocks: Integer
        # @param SharedWriteBlocks: 写共享内存块数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SharedWriteBlocks: Integer
        # @param DatabaseName: 数据库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param NormalQuery: 脱敏后语句
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NormalQuery: String
        # @param MaxElapsedQuery: 执行时间最长的语句
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxElapsedQuery: String
        # @param CostTime: 花费总时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CostTime: Float
        # @param ClientIp: 客户端ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIp: String
        # @param UserName: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param TotalCallTimesPercent: 总次数占比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCallTimesPercent: Float
        # @param TotalCostTimePercent: 总耗时占比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCostTimePercent: Float
        # @param MinCostTime: 花费最小时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinCostTime: Float
        # @param MaxCostTime: 花费最大时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxCostTime: Float
        # @param FirstTime: 最早一条时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstTime: String
        # @param LastTime: 最晚一条时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTime: String
        # @param ReadCostTime: 读io总耗时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadCostTime: Float
        # @param WriteCostTime: 写io总耗时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WriteCostTime: Float

        attr_accessor :CallTimes, :SharedReadBlocks, :SharedWriteBlocks, :DatabaseName, :NormalQuery, :MaxElapsedQuery, :CostTime, :ClientIp, :UserName, :TotalCallTimesPercent, :TotalCostTimePercent, :MinCostTime, :MaxCostTime, :FirstTime, :LastTime, :ReadCostTime, :WriteCostTime

        def initialize(calltimes=nil, sharedreadblocks=nil, sharedwriteblocks=nil, databasename=nil, normalquery=nil, maxelapsedquery=nil, costtime=nil, clientip=nil, username=nil, totalcalltimespercent=nil, totalcosttimepercent=nil, mincosttime=nil, maxcosttime=nil, firsttime=nil, lasttime=nil, readcosttime=nil, writecosttime=nil)
          @CallTimes = calltimes
          @SharedReadBlocks = sharedreadblocks
          @SharedWriteBlocks = sharedwriteblocks
          @DatabaseName = databasename
          @NormalQuery = normalquery
          @MaxElapsedQuery = maxelapsedquery
          @CostTime = costtime
          @ClientIp = clientip
          @UserName = username
          @TotalCallTimesPercent = totalcalltimespercent
          @TotalCostTimePercent = totalcosttimepercent
          @MinCostTime = mincosttime
          @MaxCostTime = maxcosttime
          @FirstTime = firsttime
          @LastTime = lasttime
          @ReadCostTime = readcosttime
          @WriteCostTime = writecosttime
        end

        def deserialize(params)
          @CallTimes = params['CallTimes']
          @SharedReadBlocks = params['SharedReadBlocks']
          @SharedWriteBlocks = params['SharedWriteBlocks']
          @DatabaseName = params['DatabaseName']
          @NormalQuery = params['NormalQuery']
          @MaxElapsedQuery = params['MaxElapsedQuery']
          @CostTime = params['CostTime']
          @ClientIp = params['ClientIp']
          @UserName = params['UserName']
          @TotalCallTimesPercent = params['TotalCallTimesPercent']
          @TotalCostTimePercent = params['TotalCostTimePercent']
          @MinCostTime = params['MinCostTime']
          @MaxCostTime = params['MaxCostTime']
          @FirstTime = params['FirstTime']
          @LastTime = params['LastTime']
          @ReadCostTime = params['ReadCostTime']
          @WriteCostTime = params['WriteCostTime']
        end
      end

      # ParamDetail 详细
      class ParamDetail < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamName: String
        # @param DefaultValue: 默认值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultValue: String
        # @param NeedRestart: 是否需要重启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NeedRestart: Boolean
        # @param RunningValue: 当前运行值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunningValue: String
        # @param ValueRange: 取值范围
        # @type ValueRange: :class:`Tencentcloud::Cdwpg.v20201230.models.ValueRange`
        # @param Unit: 单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String
        # @param ShortDesc: 英文简介
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShortDesc: String
        # @param ParameterName: 参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParameterName: String

        attr_accessor :ParamName, :DefaultValue, :NeedRestart, :RunningValue, :ValueRange, :Unit, :ShortDesc, :ParameterName

        def initialize(paramname=nil, defaultvalue=nil, needrestart=nil, runningvalue=nil, valuerange=nil, unit=nil, shortdesc=nil, parametername=nil)
          @ParamName = paramname
          @DefaultValue = defaultvalue
          @NeedRestart = needrestart
          @RunningValue = runningvalue
          @ValueRange = valuerange
          @Unit = unit
          @ShortDesc = shortdesc
          @ParameterName = parametername
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @DefaultValue = params['DefaultValue']
          @NeedRestart = params['NeedRestart']
          @RunningValue = params['RunningValue']
          unless params['ValueRange'].nil?
            @ValueRange = ValueRange.new
            @ValueRange.deserialize(params['ValueRange'])
          end
          @Unit = params['Unit']
          @ShortDesc = params['ShortDesc']
          @ParameterName = params['ParameterName']
        end
      end

      # ParamItem 信息
      class ParamItem < TencentCloud::Common::AbstractModel
        # @param NodeType: 节点类型, cn/dn
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeType: String
        # @param NodeName: 节点名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeName: String
        # @param TotalCount: 参数个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Details: 参数信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Details: Array

        attr_accessor :NodeType, :NodeName, :TotalCount, :Details

        def initialize(nodetype=nil, nodename=nil, totalcount=nil, details=nil)
          @NodeType = nodetype
          @NodeName = nodename
          @TotalCount = totalcount
          @Details = details
        end

        def deserialize(params)
          @NodeType = params['NodeType']
          @NodeName = params['NodeName']
          @TotalCount = params['TotalCount']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              paramdetail_tmp = ParamDetail.new
              paramdetail_tmp.deserialize(i)
              @Details << paramdetail_tmp
            end
          end
        end
      end

      # Range范围
      class Range < TencentCloud::Common::AbstractModel
        # @param Min: 最小值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Min: String
        # @param Max: 最大值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Max: String

        attr_accessor :Min, :Max

        def initialize(min=nil, max=nil)
          @Min = min
          @Max = max
        end

        def deserialize(params)
          @Min = params['Min']
          @Max = params['Max']
        end
      end

      # ResetAccountPassword请求参数结构体
      class ResetAccountPasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param UserName: 需要修改的用户名
        # @type UserName: String
        # @param NewPassword: 新密码
        # @type NewPassword: String

        attr_accessor :InstanceId, :UserName, :NewPassword

        def initialize(instanceid=nil, username=nil, newpassword=nil)
          @InstanceId = instanceid
          @UserName = username
          @NewPassword = newpassword
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @NewPassword = params['NewPassword']
        end
      end

      # ResetAccountPassword返回参数结构体
      class ResetAccountPasswordResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :RequestId

        def initialize(errormsg=nil, requestid=nil)
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 资源信息
      class ResourceInfo < TencentCloud::Common::AbstractModel
        # @param SpecName: 资源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecName: String
        # @param Count: 资源数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param DiskSpec: 磁盘信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSpec: :class:`Tencentcloud::Cdwpg.v20201230.models.CBSSpecInfo`
        # @param Type: 资源类型，DATA
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :SpecName, :Count, :DiskSpec, :Type

        def initialize(specname=nil, count=nil, diskspec=nil, type=nil)
          @SpecName = specname
          @Count = count
          @DiskSpec = diskspec
          @Type = type
        end

        def deserialize(params)
          @SpecName = params['SpecName']
          @Count = params['Count']
          unless params['DiskSpec'].nil?
            @DiskSpec = CBSSpecInfo.new
            @DiskSpec.deserialize(params['DiskSpec'])
          end
          @Type = params['Type']
        end
      end

      # 资源规格
      class ResourceSpecNew < TencentCloud::Common::AbstractModel
        # @param SpecName: 资源名称
        # @type SpecName: String
        # @param Count: 资源数
        # @type Count: Integer
        # @param DiskSpec: 磁盘信息
        # @type DiskSpec: :class:`Tencentcloud::Cdwpg.v20201230.models.CBSSpec`
        # @param Type: 资源类型，DATA
        # @type Type: String

        attr_accessor :SpecName, :Count, :DiskSpec, :Type

        def initialize(specname=nil, count=nil, diskspec=nil, type=nil)
          @SpecName = specname
          @Count = count
          @DiskSpec = diskspec
          @Type = type
        end

        def deserialize(params)
          @SpecName = params['SpecName']
          @Count = params['Count']
          unless params['DiskSpec'].nil?
            @DiskSpec = CBSSpec.new
            @DiskSpec.deserialize(params['DiskSpec'])
          end
          @Type = params['Type']
        end
      end

      # RestartInstance请求参数结构体
      class RestartInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例名称，例如“cdwpg-xxxx"
        # @type InstanceId: String
        # @param NodeTypes: 需要重启的节点类型么，gtm/cn/dn/fn
        # @type NodeTypes: Array
        # @param NodeIds: 需要重启的节点编号，指定重启节点
        # @type NodeIds: Array

        attr_accessor :InstanceId, :NodeTypes, :NodeIds

        def initialize(instanceid=nil, nodetypes=nil, nodeids=nil)
          @InstanceId = instanceid
          @NodeTypes = nodetypes
          @NodeIds = nodeids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NodeTypes = params['NodeTypes']
          @NodeIds = params['NodeIds']
        end
      end

      # RestartInstance返回参数结构体
      class RestartInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 重启实例id
        # @type FlowId: Integer
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param InstanceId: 集群名
        # @type InstanceId: String
        # @param NodeType: 节点类型
        # @type NodeType: String
        # @param ScaleOutCount: 扩容节点数量
        # @type ScaleOutCount: Integer

        attr_accessor :InstanceId, :NodeType, :ScaleOutCount

        def initialize(instanceid=nil, nodetype=nil, scaleoutcount=nil)
          @InstanceId = instanceid
          @NodeType = nodetype
          @ScaleOutCount = scaleoutcount
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NodeType = params['NodeType']
          @ScaleOutCount = params['ScaleOutCount']
        end
      end

      # ScaleOutInstance返回参数结构体
      class ScaleOutInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 1
        # @type FlowId: String
        # @param ErrorMsg: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ScaleUpInstance请求参数结构体
      class ScaleUpInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群唯一ID
        # @type InstanceId: String
        # @param Case: 变更资源类型
        # @type Case: String
        # @param ModifySpec: 修改的参数
        # @type ModifySpec: :class:`Tencentcloud::Cdwpg.v20201230.models.CNResourceSpec`
        # @param InstanceName: 集群名称
        # @type InstanceName: String

        attr_accessor :InstanceId, :Case, :ModifySpec, :InstanceName

        def initialize(instanceid=nil, _case=nil, modifyspec=nil, instancename=nil)
          @InstanceId = instanceid
          @Case = _case
          @ModifySpec = modifyspec
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Case = params['Case']
          unless params['ModifySpec'].nil?
            @ModifySpec = CNResourceSpec.new
            @ModifySpec.deserialize(params['ModifySpec'])
          end
          @InstanceName = params['InstanceName']
        end
      end

      # ScaleUpInstance返回参数结构体
      class ScaleUpInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 返回的id
        # @type FlowId: Integer
        # @param ErrorMsg: 具体错误
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 集群信息
      class SimpleInstanceInfo < TencentCloud::Common::AbstractModel
        # @param ID: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer
        # @param InstanceId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Version: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Region: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Zone: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param UserVPCID: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserVPCID: String
        # @param UserSubnetID: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserSubnetID: String
        # @param CreateTime: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ExpireTime: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param AccessInfo: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessInfo: String
        # @param RenewFlag: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param ChargeProperties: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeProperties: :class:`Tencentcloud::Cdwpg.v20201230.models.ChargeProperties`
        # @param Resources: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resources: Array
        # @param Tags: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Status: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :ID, :InstanceId, :InstanceName, :Version, :Region, :Zone, :UserVPCID, :UserSubnetID, :CreateTime, :ExpireTime, :AccessInfo, :RenewFlag, :ChargeProperties, :Resources, :Tags, :Status

        def initialize(id=nil, instanceid=nil, instancename=nil, version=nil, region=nil, zone=nil, uservpcid=nil, usersubnetid=nil, createtime=nil, expiretime=nil, accessinfo=nil, renewflag=nil, chargeproperties=nil, resources=nil, tags=nil, status=nil)
          @ID = id
          @InstanceId = instanceid
          @InstanceName = instancename
          @Version = version
          @Region = region
          @Zone = zone
          @UserVPCID = uservpcid
          @UserSubnetID = usersubnetid
          @CreateTime = createtime
          @ExpireTime = expiretime
          @AccessInfo = accessinfo
          @RenewFlag = renewflag
          @ChargeProperties = chargeproperties
          @Resources = resources
          @Tags = tags
          @Status = status
        end

        def deserialize(params)
          @ID = params['ID']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Version = params['Version']
          @Region = params['Region']
          @Zone = params['Zone']
          @UserVPCID = params['UserVPCID']
          @UserSubnetID = params['UserSubnetID']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @AccessInfo = params['AccessInfo']
          @RenewFlag = params['RenewFlag']
          unless params['ChargeProperties'].nil?
            @ChargeProperties = ChargeProperties.new
            @ChargeProperties.deserialize(params['ChargeProperties'])
          end
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              resourceinfo_tmp = ResourceInfo.new
              resourceinfo_tmp.deserialize(i)
              @Resources << resourceinfo_tmp
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
          @Status = params['Status']
        end
      end

      # 慢SQL日志
      class SlowLogDetail < TencentCloud::Common::AbstractModel
        # @param TotalTime: 花费总时间
        # @type TotalTime: Float
        # @param TotalCallTimes: 调用总次数
        # @type TotalCallTimes: Integer
        # @param NormalQuerys: 慢SQL
        # @type NormalQuerys: Array

        attr_accessor :TotalTime, :TotalCallTimes, :NormalQuerys

        def initialize(totaltime=nil, totalcalltimes=nil, normalquerys=nil)
          @TotalTime = totaltime
          @TotalCallTimes = totalcalltimes
          @NormalQuerys = normalquerys
        end

        def deserialize(params)
          @TotalTime = params['TotalTime']
          @TotalCallTimes = params['TotalCallTimes']
          unless params['NormalQuerys'].nil?
            @NormalQuerys = []
            params['NormalQuerys'].each do |i|
              normqueryitem_tmp = NormQueryItem.new
              normqueryitem_tmp.deserialize(i)
              @NormalQuerys << normqueryitem_tmp
            end
          end
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

      # UpgradeInstance请求参数结构体
      class UpgradeInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param PackageVersion: 安装包版本
        # @type PackageVersion: String

        attr_accessor :InstanceId, :PackageVersion

        def initialize(instanceid=nil, packageversion=nil)
          @InstanceId = instanceid
          @PackageVersion = packageversion
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PackageVersion = params['PackageVersion']
        end
      end

      # UpgradeInstance返回参数结构体
      class UpgradeInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务id
        # @type FlowId: Integer
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 升级信息
      class UpgradeItem < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param SourceVersion: 原有内核版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceVersion: String
        # @param TargetVersion: 目标内核版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetVersion: String
        # @param CreateTime: 任务创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param EndTime: 任务结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Status: 任务完成状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param OperateUin: 操作者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateUin: String

        attr_accessor :TaskName, :SourceVersion, :TargetVersion, :CreateTime, :EndTime, :Status, :OperateUin

        def initialize(taskname=nil, sourceversion=nil, targetversion=nil, createtime=nil, endtime=nil, status=nil, operateuin=nil)
          @TaskName = taskname
          @SourceVersion = sourceversion
          @TargetVersion = targetversion
          @CreateTime = createtime
          @EndTime = endtime
          @Status = status
          @OperateUin = operateuin
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @SourceVersion = params['SourceVersion']
          @TargetVersion = params['TargetVersion']
          @CreateTime = params['CreateTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @OperateUin = params['OperateUin']
        end
      end

      # ValueRange值
      class ValueRange < TencentCloud::Common::AbstractModel
        # @param Type: 参数类型，可以为 enum，string，section; 其中enum表示枚举，类似： utf8,latin1,gbk; string表示返回的参数值是字符串; section表示返回的参数值是一个取值范围，类似：[4-8]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Range: type 取section的时候，返回的参数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Range: :class:`Tencentcloud::Cdwpg.v20201230.models.Range`
        # @param Enum: type 取enum的时候，返回参数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enum: Array
        # @param String: type 取string的时候，返回的参数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type String: String

        attr_accessor :Type, :Range, :Enum, :String

        def initialize(type=nil, range=nil, enum=nil, string=nil)
          @Type = type
          @Range = range
          @Enum = enum
          @String = string
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['Range'].nil?
            @Range = Range.new
            @Range.deserialize(params['Range'])
          end
          @Enum = params['Enum']
          @String = params['String']
        end
      end

    end
  end
end

