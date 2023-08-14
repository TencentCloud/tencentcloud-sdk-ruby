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
  module Dcdb
    module V20180411
      # 数据库账号信息
      class Account < TencentCloud::Common::AbstractModel
        # @param User: 账户的名称
        # @type User: String
        # @param Host: 账户的域名
        # @type Host: String

        attr_accessor :User, :Host

        def initialize(user=nil, host=nil)
          @User = user
          @Host = host
        end

        def deserialize(params)
          @User = params['User']
          @Host = params['Host']
        end
      end

      # ActiveHourDCDBInstance请求参数结构体
      class ActiveHourDCDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 待升级的实例ID列表。形如：["dcdbt-ow728lmc"]，可以通过 DescribeDCDBInstances 查询实例详情获得。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # ActiveHourDCDBInstance返回参数结构体
      class ActiveHourDCDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param SuccessInstanceIds: 解隔离成功的实例id列表
        # @type SuccessInstanceIds: Array
        # @param FailedInstanceIds: 解隔离失败的实例id列表
        # @type FailedInstanceIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessInstanceIds, :FailedInstanceIds, :RequestId

        def initialize(successinstanceids=nil, failedinstanceids=nil, requestid=nil)
          @SuccessInstanceIds = successinstanceids
          @FailedInstanceIds = failedinstanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessInstanceIds = params['SuccessInstanceIds']
          @FailedInstanceIds = params['FailedInstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # 升级实例 -- 新增分片类型
      class AddShardConfig < TencentCloud::Common::AbstractModel
        # @param ShardCount: 新增分片的数量
        # @type ShardCount: Integer
        # @param ShardMemory: 分片内存大小，单位 GB
        # @type ShardMemory: Integer
        # @param ShardStorage: 分片存储大小，单位 GB
        # @type ShardStorage: Integer

        attr_accessor :ShardCount, :ShardMemory, :ShardStorage

        def initialize(shardcount=nil, shardmemory=nil, shardstorage=nil)
          @ShardCount = shardcount
          @ShardMemory = shardmemory
          @ShardStorage = shardstorage
        end

        def deserialize(params)
          @ShardCount = params['ShardCount']
          @ShardMemory = params['ShardMemory']
          @ShardStorage = params['ShardStorage']
        end
      end

      # AssociateSecurityGroups请求参数结构体
      class AssociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 数据库引擎名称，本接口取值：dcdb。
        # @type Product: String
        # @param SecurityGroupId: 要绑定的安全组ID，类似sg-efil73jd。
        # @type SecurityGroupId: String
        # @param InstanceIds: 被绑定的实例ID，类似tdsqlshard-lesecurk，支持指定多个实例。
        # @type InstanceIds: Array

        attr_accessor :Product, :SecurityGroupId, :InstanceIds

        def initialize(product=nil, securitygroupid=nil, instanceids=nil)
          @Product = product
          @SecurityGroupId = securitygroupid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @Product = params['Product']
          @SecurityGroupId = params['SecurityGroupId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # AssociateSecurityGroups返回参数结构体
      class AssociateSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 描述分片DB节点信息
      class BriefNodeInfo < TencentCloud::Common::AbstractModel
        # @param NodeId: DB节点ID
        # @type NodeId: String
        # @param Role: DB节点角色，取值为master或者slave
        # @type Role: String
        # @param ShardId: 节点所属分片的分片ID
        # @type ShardId: String

        attr_accessor :NodeId, :Role, :ShardId

        def initialize(nodeid=nil, role=nil, shardid=nil)
          @NodeId = nodeid
          @Role = role
          @ShardId = shardid
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @Role = params['Role']
          @ShardId = params['ShardId']
        end
      end

      # CancelDcnJob请求参数结构体
      class CancelDcnJobRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 灾备实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # CancelDcnJob返回参数结构体
      class CancelDcnJobResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # CloneAccount请求参数结构体
      class CloneAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param SrcUser: 源用户账户名
        # @type SrcUser: String
        # @param SrcHost: 源用户HOST
        # @type SrcHost: String
        # @param DstUser: 目的用户账户名
        # @type DstUser: String
        # @param DstHost: 目的用户HOST
        # @type DstHost: String
        # @param DstDesc: 目的用户账户描述
        # @type DstDesc: String

        attr_accessor :InstanceId, :SrcUser, :SrcHost, :DstUser, :DstHost, :DstDesc

        def initialize(instanceid=nil, srcuser=nil, srchost=nil, dstuser=nil, dsthost=nil, dstdesc=nil)
          @InstanceId = instanceid
          @SrcUser = srcuser
          @SrcHost = srchost
          @DstUser = dstuser
          @DstHost = dsthost
          @DstDesc = dstdesc
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SrcUser = params['SrcUser']
          @SrcHost = params['SrcHost']
          @DstUser = params['DstUser']
          @DstHost = params['DstHost']
          @DstDesc = params['DstDesc']
        end
      end

      # CloneAccount返回参数结构体
      class CloneAccountResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务流程ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # CloseDBExtranetAccess请求参数结构体
      class CloseDBExtranetAccessRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待关闭外网访问的实例ID。形如：dcdbt-ow728lmc，可以通过 DescribeDCDBInstances 查询实例详情获得。
        # @type InstanceId: String
        # @param Ipv6Flag: 是否IPv6，默认0
        # @type Ipv6Flag: Integer

        attr_accessor :InstanceId, :Ipv6Flag

        def initialize(instanceid=nil, ipv6flag=nil)
          @InstanceId = instanceid
          @Ipv6Flag = ipv6flag
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Ipv6Flag = params['Ipv6Flag']
        end
      end

      # CloseDBExtranetAccess返回参数结构体
      class CloseDBExtranetAccessResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务ID，可通过 DescribeFlow 查询任务状态。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # 列权限信息
      class ColumnPrivilege < TencentCloud::Common::AbstractModel
        # @param Database: 数据库名
        # @type Database: String
        # @param Table: 数据库表名
        # @type Table: String
        # @param Column: 数据库列名
        # @type Column: String
        # @param Privileges: 权限信息
        # @type Privileges: Array

        attr_accessor :Database, :Table, :Column, :Privileges

        def initialize(database=nil, table=nil, column=nil, privileges=nil)
          @Database = database
          @Table = table
          @Column = column
          @Privileges = privileges
        end

        def deserialize(params)
          @Database = params['Database']
          @Table = params['Table']
          @Column = params['Column']
          @Privileges = params['Privileges']
        end
      end

      # 配置信息。包含配置项Config，配置值Value
      class ConfigValue < TencentCloud::Common::AbstractModel
        # @param Config: 配置项的名称，支持填写max_user_connections
        # @type Config: String
        # @param Value: 配置值
        # @type Value: String

        attr_accessor :Config, :Value

        def initialize(config=nil, value=nil)
          @Config = config
          @Value = value
        end

        def deserialize(params)
          @Config = params['Config']
          @Value = params['Value']
        end
      end

      # 约束类型值的范围
      class ConstraintRange < TencentCloud::Common::AbstractModel
        # @param Min: 约束类型为section时的最小值
        # @type Min: String
        # @param Max: 约束类型为section时的最大值
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

      # CopyAccountPrivileges请求参数结构体
      class CopyAccountPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：dcdbt-ow728lmc。
        # @type InstanceId: String
        # @param SrcUserName: 源用户名
        # @type SrcUserName: String
        # @param SrcHost: 源用户允许的访问 host
        # @type SrcHost: String
        # @param DstUserName: 目的用户名
        # @type DstUserName: String
        # @param DstHost: 目的用户允许的访问 host
        # @type DstHost: String
        # @param SrcReadOnly: 源账号的 ReadOnly 属性
        # @type SrcReadOnly: String
        # @param DstReadOnly: 目的账号的 ReadOnly 属性
        # @type DstReadOnly: String

        attr_accessor :InstanceId, :SrcUserName, :SrcHost, :DstUserName, :DstHost, :SrcReadOnly, :DstReadOnly

        def initialize(instanceid=nil, srcusername=nil, srchost=nil, dstusername=nil, dsthost=nil, srcreadonly=nil, dstreadonly=nil)
          @InstanceId = instanceid
          @SrcUserName = srcusername
          @SrcHost = srchost
          @DstUserName = dstusername
          @DstHost = dsthost
          @SrcReadOnly = srcreadonly
          @DstReadOnly = dstreadonly
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SrcUserName = params['SrcUserName']
          @SrcHost = params['SrcHost']
          @DstUserName = params['DstUserName']
          @DstHost = params['DstHost']
          @SrcReadOnly = params['SrcReadOnly']
          @DstReadOnly = params['DstReadOnly']
        end
      end

      # CopyAccountPrivileges返回参数结构体
      class CopyAccountPrivilegesResponse < TencentCloud::Common::AbstractModel
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

      # CreateAccount请求参数结构体
      class CreateAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：dcdbt-ow728lmc，可以通过 DescribeDCDBInstances 查询实例详情获得。
        # @type InstanceId: String
        # @param UserName: AccountName
        # @type UserName: String
        # @param Host: 可以登录的主机，与mysql 账号的 host 格式一致，可以支持通配符，例如 %，10.%，10.20.%。
        # @type Host: String
        # @param Password: 账号密码，密码需要 8-32 个字符，不能以 '/' 开头，并且必须包含小写字母、大写字母、数字和符号()~!@#$%^&*-+=_|{}[]:<>,.?/。
        # @type Password: String
        # @param ReadOnly: 是否创建为只读账号，0：否， 1：该账号的sql请求优先选择备机执行，备机不可用时选择主机执行，2：优先选择备机执行，备机不可用时操作失败，3：只从备机读取。
        # @type ReadOnly: Integer
        # @param Description: 账号备注，可以包含中文、英文字符、常见符号和数字，长度为0~256字符
        # @type Description: String
        # @param DelayThresh: 如果备机延迟超过本参数设置值，系统将认为备机发生故障
        # 建议该参数值大于10。当ReadOnly选择1、2时该参数生效。
        # @type DelayThresh: Integer
        # @param SlaveConst: 针对只读账号，设置策略是否固定备机，0：不固定备机，即备机不满足条件与客户端不断开连接，Proxy选择其他可用备机，1：备机不满足条件断开连接，确保一个连接固定备机。
        # @type SlaveConst: Integer
        # @param MaxUserConnections: 用户最大连接数限制参数。不传或者传0表示为不限制，对应max_user_connections参数，目前10.1内核版本不支持设置。
        # @type MaxUserConnections: Integer

        attr_accessor :InstanceId, :UserName, :Host, :Password, :ReadOnly, :Description, :DelayThresh, :SlaveConst, :MaxUserConnections

        def initialize(instanceid=nil, username=nil, host=nil, password=nil, readonly=nil, description=nil, delaythresh=nil, slaveconst=nil, maxuserconnections=nil)
          @InstanceId = instanceid
          @UserName = username
          @Host = host
          @Password = password
          @ReadOnly = readonly
          @Description = description
          @DelayThresh = delaythresh
          @SlaveConst = slaveconst
          @MaxUserConnections = maxuserconnections
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @Host = params['Host']
          @Password = params['Password']
          @ReadOnly = params['ReadOnly']
          @Description = params['Description']
          @DelayThresh = params['DelayThresh']
          @SlaveConst = params['SlaveConst']
          @MaxUserConnections = params['MaxUserConnections']
        end
      end

      # CreateAccount返回参数结构体
      class CreateAccountResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，透传入参。
        # @type InstanceId: String
        # @param UserName: 用户名，透传入参。
        # @type UserName: String
        # @param Host: 允许访问的 host，透传入参。
        # @type Host: String
        # @param ReadOnly: 透传入参。
        # @type ReadOnly: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :UserName, :Host, :ReadOnly, :RequestId

        def initialize(instanceid=nil, username=nil, host=nil, readonly=nil, requestid=nil)
          @InstanceId = instanceid
          @UserName = username
          @Host = host
          @ReadOnly = readonly
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @Host = params['Host']
          @ReadOnly = params['ReadOnly']
          @RequestId = params['RequestId']
        end
      end

      # CreateDCDBInstance请求参数结构体
      class CreateDCDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Zones: 分片节点可用区分布，最多可填两个可用区。当分片规格为一主两从时，其中两个节点在第一个可用区。
        # 注意当前可售卖的可用区需要通过DescribeDCDBSaleInfo接口拉取。
        # @type Zones: Array
        # @param Period: 欲购买的时长，单位：月。
        # @type Period: Integer
        # @param ShardMemory: 分片内存大小，单位：GB，可以通过 DescribeShardSpec
        #  查询实例规格获得。
        # @type ShardMemory: Integer
        # @param ShardStorage: 分片存储空间大小，单位：GB，可以通过 DescribeShardSpec
        #  查询实例规格获得。
        # @type ShardStorage: Integer
        # @param ShardNodeCount: 单个分片节点个数，可以通过 DescribeShardSpec
        #  查询实例规格获得。
        # @type ShardNodeCount: Integer
        # @param ShardCount: 实例分片个数，可选范围2-8，可以通过升级实例进行新增分片到最多64个分片。
        # @type ShardCount: Integer
        # @param Count: 欲购买实例的数量
        # @type Count: Integer
        # @param ProjectId: 项目 ID，可以通过查看项目列表获取，不传则关联到默认项目
        # @type ProjectId: Integer
        # @param VpcId: 虚拟私有网络 ID，不传或传空表示创建为基础网络
        # @type VpcId: String
        # @param SubnetId: 虚拟私有网络子网 ID，VpcId不为空时必填
        # @type SubnetId: String
        # @param DbVersionId: 数据库引擎版本，当前可选：8.0，5.7，10.1，10.0。
        # @type DbVersionId: String
        # @param AutoVoucher: 是否自动使用代金券进行支付，默认不使用。
        # @type AutoVoucher: Boolean
        # @param VoucherIds: 代金券ID列表，目前仅支持指定一张代金券。
        # @type VoucherIds: Array
        # @param SecurityGroupId: 安全组id
        # @type SecurityGroupId: String
        # @param InstanceName: 实例名称， 可以通过该字段自主的设置实例的名字
        # @type InstanceName: String
        # @param Ipv6Flag: 是否支持IPv6，0:不支持，1:支持
        # @type Ipv6Flag: Integer
        # @param ResourceTags: 标签键值对数组
        # @type ResourceTags: Array
        # @param InitParams: 参数列表。本接口的可选值为：character_set_server（字符集，必传），lower_case_table_names（表名大小写敏感，必传，0 - 敏感；1-不敏感），innodb_page_size（innodb数据页，默认16K），sync_mode（同步模式：0 - 异步； 1 - 强同步；2 - 强同步可退化。默认为强同步可退化）。
        # @type InitParams: Array
        # @param DcnRegion: DCN源地域
        # @type DcnRegion: String
        # @param DcnInstanceId: DCN源实例ID
        # @type DcnInstanceId: String
        # @param AutoRenewFlag: 自动续费标记，0:默认状态(用户未设置，即初始状态即手动续费，用户开通了预付费不停服特权也会进行自动续费)， 1:自动续费，2:明确不自动续费(用户设置)。若业务无续费概念或无需自动续费，需要设置为0
        # @type AutoRenewFlag: Integer
        # @param SecurityGroupIds: 安全组ids，安全组可以传数组形式，兼容之前SecurityGroupId参数
        # @type SecurityGroupIds: Array

        attr_accessor :Zones, :Period, :ShardMemory, :ShardStorage, :ShardNodeCount, :ShardCount, :Count, :ProjectId, :VpcId, :SubnetId, :DbVersionId, :AutoVoucher, :VoucherIds, :SecurityGroupId, :InstanceName, :Ipv6Flag, :ResourceTags, :InitParams, :DcnRegion, :DcnInstanceId, :AutoRenewFlag, :SecurityGroupIds

        def initialize(zones=nil, period=nil, shardmemory=nil, shardstorage=nil, shardnodecount=nil, shardcount=nil, count=nil, projectid=nil, vpcid=nil, subnetid=nil, dbversionid=nil, autovoucher=nil, voucherids=nil, securitygroupid=nil, instancename=nil, ipv6flag=nil, resourcetags=nil, initparams=nil, dcnregion=nil, dcninstanceid=nil, autorenewflag=nil, securitygroupids=nil)
          @Zones = zones
          @Period = period
          @ShardMemory = shardmemory
          @ShardStorage = shardstorage
          @ShardNodeCount = shardnodecount
          @ShardCount = shardcount
          @Count = count
          @ProjectId = projectid
          @VpcId = vpcid
          @SubnetId = subnetid
          @DbVersionId = dbversionid
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @SecurityGroupId = securitygroupid
          @InstanceName = instancename
          @Ipv6Flag = ipv6flag
          @ResourceTags = resourcetags
          @InitParams = initparams
          @DcnRegion = dcnregion
          @DcnInstanceId = dcninstanceid
          @AutoRenewFlag = autorenewflag
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @Zones = params['Zones']
          @Period = params['Period']
          @ShardMemory = params['ShardMemory']
          @ShardStorage = params['ShardStorage']
          @ShardNodeCount = params['ShardNodeCount']
          @ShardCount = params['ShardCount']
          @Count = params['Count']
          @ProjectId = params['ProjectId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @DbVersionId = params['DbVersionId']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @SecurityGroupId = params['SecurityGroupId']
          @InstanceName = params['InstanceName']
          @Ipv6Flag = params['Ipv6Flag']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          unless params['InitParams'].nil?
            @InitParams = []
            params['InitParams'].each do |i|
              dbparamvalue_tmp = DBParamValue.new
              dbparamvalue_tmp.deserialize(i)
              @InitParams << dbparamvalue_tmp
            end
          end
          @DcnRegion = params['DcnRegion']
          @DcnInstanceId = params['DcnInstanceId']
          @AutoRenewFlag = params['AutoRenewFlag']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # CreateDCDBInstance返回参数结构体
      class CreateDCDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 长订单号。可以据此调用 DescribeOrders
        #  查询订单详细信息，或在支付失败时调用用户账号相关接口进行支付。
        # @type DealName: String
        # @param InstanceIds: 订单对应的实例 ID 列表，如果此处没有返回实例 ID，可以通过订单查询接口获取。还可通过实例查询接口查询实例是否创建完成。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :InstanceIds, :RequestId

        def initialize(dealname=nil, instanceids=nil, requestid=nil)
          @DealName = dealname
          @InstanceIds = instanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @InstanceIds = params['InstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateDedicatedClusterDCDBInstance请求参数结构体
      class CreateDedicatedClusterDCDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param GoodsNum: 分配实例个数
        # @type GoodsNum: Integer
        # @param ShardNum: 分片数量
        # @type ShardNum: Integer
        # @param ShardMemory: 分片內存大小, 单位GB
        # @type ShardMemory: Integer
        # @param ShardStorage: 分片磁盘大小, 单位GB
        # @type ShardStorage: Integer
        # @param ClusterId: 独享集群集群uuid
        # @type ClusterId: String
        # @param Zone: （废弃）可用区
        # @type Zone: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Cpu: （废弃）cpu大小，单位：核
        # @type Cpu: Integer
        # @param VpcId: 网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param ShardMachine: （废弃）分片机型
        # @type ShardMachine: String
        # @param ShardNodeNum: 分片的节点个数
        # @type ShardNodeNum: Integer
        # @param ShardNodeCpu: （废弃）节点cpu核数，单位：1/100核
        # @type ShardNodeCpu: Integer
        # @param ShardNodeMemory: （废弃）节点內存大小，单位：GB
        # @type ShardNodeMemory: Integer
        # @param ShardNodeStorage: （废弃）节点磁盘大小，单位：GB
        # @type ShardNodeStorage: Integer
        # @param DbVersionId: db版本
        # @type DbVersionId: String
        # @param SecurityGroupId: 安全组ID
        # @type SecurityGroupId: String
        # @param SecurityGroupIds: 安全组ID列表
        # @type SecurityGroupIds: Array
        # @param DcnInstanceId: DCN源实例ID
        # @type DcnInstanceId: String
        # @param DcnRegion: DCN源实例地域名
        # @type DcnRegion: String
        # @param InstanceName: 自定义实例名称
        # @type InstanceName: String
        # @param ResourceTags: 标签
        # @type ResourceTags: Array
        # @param Ipv6Flag: 支持IPv6标志：1 支持， 0 不支持
        # @type Ipv6Flag: Integer
        # @param Pid: （废弃）Pid，可通过获取独享集群售卖配置接口得到
        # @type Pid: Integer
        # @param InitParams: 参数列表。本接口的可选值为：character_set_server（字符集，必传），lower_case_table_names（表名大小写敏感，必传，0 - 敏感；1-不敏感），innodb_page_size（innodb数据页，默认16K），sync_mode（同步模式：0 - 异步； 1 - 强同步；2 - 强同步可退化。默认为强同步可退化）。
        # @type InitParams: Array
        # @param MasterHostId: 指定主节点uuid，不填随机分配
        # @type MasterHostId: String
        # @param SlaveHostIds: 指定从节点uuid，不填随机分配
        # @type SlaveHostIds: Array
        # @param RollbackInstanceId: 需要回档的源实例ID
        # @type RollbackInstanceId: String
        # @param RollbackTime: 回档时间
        # @type RollbackTime: String

        attr_accessor :GoodsNum, :ShardNum, :ShardMemory, :ShardStorage, :ClusterId, :Zone, :ProjectId, :Cpu, :VpcId, :SubnetId, :ShardMachine, :ShardNodeNum, :ShardNodeCpu, :ShardNodeMemory, :ShardNodeStorage, :DbVersionId, :SecurityGroupId, :SecurityGroupIds, :DcnInstanceId, :DcnRegion, :InstanceName, :ResourceTags, :Ipv6Flag, :Pid, :InitParams, :MasterHostId, :SlaveHostIds, :RollbackInstanceId, :RollbackTime

        def initialize(goodsnum=nil, shardnum=nil, shardmemory=nil, shardstorage=nil, clusterid=nil, zone=nil, projectid=nil, cpu=nil, vpcid=nil, subnetid=nil, shardmachine=nil, shardnodenum=nil, shardnodecpu=nil, shardnodememory=nil, shardnodestorage=nil, dbversionid=nil, securitygroupid=nil, securitygroupids=nil, dcninstanceid=nil, dcnregion=nil, instancename=nil, resourcetags=nil, ipv6flag=nil, pid=nil, initparams=nil, masterhostid=nil, slavehostids=nil, rollbackinstanceid=nil, rollbacktime=nil)
          @GoodsNum = goodsnum
          @ShardNum = shardnum
          @ShardMemory = shardmemory
          @ShardStorage = shardstorage
          @ClusterId = clusterid
          @Zone = zone
          @ProjectId = projectid
          @Cpu = cpu
          @VpcId = vpcid
          @SubnetId = subnetid
          @ShardMachine = shardmachine
          @ShardNodeNum = shardnodenum
          @ShardNodeCpu = shardnodecpu
          @ShardNodeMemory = shardnodememory
          @ShardNodeStorage = shardnodestorage
          @DbVersionId = dbversionid
          @SecurityGroupId = securitygroupid
          @SecurityGroupIds = securitygroupids
          @DcnInstanceId = dcninstanceid
          @DcnRegion = dcnregion
          @InstanceName = instancename
          @ResourceTags = resourcetags
          @Ipv6Flag = ipv6flag
          @Pid = pid
          @InitParams = initparams
          @MasterHostId = masterhostid
          @SlaveHostIds = slavehostids
          @RollbackInstanceId = rollbackinstanceid
          @RollbackTime = rollbacktime
        end

        def deserialize(params)
          @GoodsNum = params['GoodsNum']
          @ShardNum = params['ShardNum']
          @ShardMemory = params['ShardMemory']
          @ShardStorage = params['ShardStorage']
          @ClusterId = params['ClusterId']
          @Zone = params['Zone']
          @ProjectId = params['ProjectId']
          @Cpu = params['Cpu']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ShardMachine = params['ShardMachine']
          @ShardNodeNum = params['ShardNodeNum']
          @ShardNodeCpu = params['ShardNodeCpu']
          @ShardNodeMemory = params['ShardNodeMemory']
          @ShardNodeStorage = params['ShardNodeStorage']
          @DbVersionId = params['DbVersionId']
          @SecurityGroupId = params['SecurityGroupId']
          @SecurityGroupIds = params['SecurityGroupIds']
          @DcnInstanceId = params['DcnInstanceId']
          @DcnRegion = params['DcnRegion']
          @InstanceName = params['InstanceName']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @Ipv6Flag = params['Ipv6Flag']
          @Pid = params['Pid']
          unless params['InitParams'].nil?
            @InitParams = []
            params['InitParams'].each do |i|
              dbparamvalue_tmp = DBParamValue.new
              dbparamvalue_tmp.deserialize(i)
              @InitParams << dbparamvalue_tmp
            end
          end
          @MasterHostId = params['MasterHostId']
          @SlaveHostIds = params['SlaveHostIds']
          @RollbackInstanceId = params['RollbackInstanceId']
          @RollbackTime = params['RollbackTime']
        end
      end

      # CreateDedicatedClusterDCDBInstance返回参数结构体
      class CreateDedicatedClusterDCDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 分配资源ID数组
        # @type InstanceIds: Array
        # @param FlowId: 流程ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceIds, :FlowId, :RequestId

        def initialize(instanceids=nil, flowid=nil, requestid=nil)
          @InstanceIds = instanceids
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # CreateHourDCDBInstance请求参数结构体
      class CreateHourDCDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ShardMemory: 分片内存大小，单位：GB，可以通过 DescribeShardSpec
        #  查询实例规格获得。
        # @type ShardMemory: Integer
        # @param ShardStorage: 分片存储空间大小，单位：GB，可以通过 DescribeShardSpec
        #  查询实例规格获得。
        # @type ShardStorage: Integer
        # @param ShardNodeCount: 单个分片节点个数，可以通过 DescribeShardSpec
        #  查询实例规格获得。
        # @type ShardNodeCount: Integer
        # @param ShardCount: 实例分片个数，可选范围2-8，可以通过升级实例进行新增分片到最多64个分片。
        # @type ShardCount: Integer
        # @param Count: 欲购买实例的数量
        # @type Count: Integer
        # @param ProjectId: 项目 ID，可以通过查看项目列表获取，不传则关联到默认项目
        # @type ProjectId: Integer
        # @param VpcId: 虚拟私有网络 ID，不传或传空表示创建为基础网络
        # @type VpcId: String
        # @param SubnetId: 虚拟私有网络子网 ID，VpcId不为空时必填
        # @type SubnetId: String
        # @param ShardCpu: 分片cpu大小，单位：核，可以通过 DescribeShardSpec
        #  查询实例规格获得。
        # @type ShardCpu: Integer
        # @param DbVersionId: 数据库引擎版本，当前可选：8.0，5.7，10.1，10.0。
        # @type DbVersionId: String
        # @param Zones: 分片节点可用区分布，最多可填两个可用区。当分片规格为一主两从时，其中两个节点在第一个可用区。
        # @type Zones: Array
        # @param SecurityGroupId: 安全组id
        # @type SecurityGroupId: String
        # @param InstanceName: 实例名称， 可以通过该字段自主的设置实例的名字
        # @type InstanceName: String
        # @param Ipv6Flag: 是否支持IPv6，0:不支持，1:支持
        # @type Ipv6Flag: Integer
        # @param ResourceTags: 标签键值对数组
        # @type ResourceTags: Array
        # @param DcnRegion: DCN源地域
        # @type DcnRegion: String
        # @param DcnInstanceId: DCN源实例ID
        # @type DcnInstanceId: String
        # @param InitParams: 参数列表。本接口的可选值为：character_set_server（字符集，必传），lower_case_table_names（表名大小写敏感，必传，0 - 敏感；1-不敏感），innodb_page_size（innodb数据页，默认16K），sync_mode（同步模式：0 - 异步； 1 - 强同步；2 - 强同步可退化。默认为强同步可退化）。
        # @type InitParams: Array
        # @param RollbackInstanceId: 需要回档的源实例ID
        # @type RollbackInstanceId: String
        # @param RollbackTime: 回档时间，例如“2021-11-22 00:00:00”
        # @type RollbackTime: String
        # @param SecurityGroupIds: 安全组ids，安全组可以传数组形式，兼容之前SecurityGroupId参数
        # @type SecurityGroupIds: Array

        attr_accessor :ShardMemory, :ShardStorage, :ShardNodeCount, :ShardCount, :Count, :ProjectId, :VpcId, :SubnetId, :ShardCpu, :DbVersionId, :Zones, :SecurityGroupId, :InstanceName, :Ipv6Flag, :ResourceTags, :DcnRegion, :DcnInstanceId, :InitParams, :RollbackInstanceId, :RollbackTime, :SecurityGroupIds

        def initialize(shardmemory=nil, shardstorage=nil, shardnodecount=nil, shardcount=nil, count=nil, projectid=nil, vpcid=nil, subnetid=nil, shardcpu=nil, dbversionid=nil, zones=nil, securitygroupid=nil, instancename=nil, ipv6flag=nil, resourcetags=nil, dcnregion=nil, dcninstanceid=nil, initparams=nil, rollbackinstanceid=nil, rollbacktime=nil, securitygroupids=nil)
          @ShardMemory = shardmemory
          @ShardStorage = shardstorage
          @ShardNodeCount = shardnodecount
          @ShardCount = shardcount
          @Count = count
          @ProjectId = projectid
          @VpcId = vpcid
          @SubnetId = subnetid
          @ShardCpu = shardcpu
          @DbVersionId = dbversionid
          @Zones = zones
          @SecurityGroupId = securitygroupid
          @InstanceName = instancename
          @Ipv6Flag = ipv6flag
          @ResourceTags = resourcetags
          @DcnRegion = dcnregion
          @DcnInstanceId = dcninstanceid
          @InitParams = initparams
          @RollbackInstanceId = rollbackinstanceid
          @RollbackTime = rollbacktime
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @ShardMemory = params['ShardMemory']
          @ShardStorage = params['ShardStorage']
          @ShardNodeCount = params['ShardNodeCount']
          @ShardCount = params['ShardCount']
          @Count = params['Count']
          @ProjectId = params['ProjectId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ShardCpu = params['ShardCpu']
          @DbVersionId = params['DbVersionId']
          @Zones = params['Zones']
          @SecurityGroupId = params['SecurityGroupId']
          @InstanceName = params['InstanceName']
          @Ipv6Flag = params['Ipv6Flag']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @DcnRegion = params['DcnRegion']
          @DcnInstanceId = params['DcnInstanceId']
          unless params['InitParams'].nil?
            @InitParams = []
            params['InitParams'].each do |i|
              dbparamvalue_tmp = DBParamValue.new
              dbparamvalue_tmp.deserialize(i)
              @InitParams << dbparamvalue_tmp
            end
          end
          @RollbackInstanceId = params['RollbackInstanceId']
          @RollbackTime = params['RollbackTime']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # CreateHourDCDBInstance返回参数结构体
      class CreateHourDCDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 订单对应的实例 ID 列表，如果此处没有返回实例 ID，可以通过订单查询接口获取。还可通过实例查询接口查询实例是否创建完成。
        # @type InstanceIds: Array
        # @param FlowId: 流程id，可以根据流程id查询创建进度
        # @type FlowId: Integer
        # @param DealName: 订单号。可以据此调用 DescribeOrders
        #  查询订单详细信息，或在支付失败时调用用户账号相关接口进行支付。
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceIds, :FlowId, :DealName, :RequestId

        def initialize(instanceids=nil, flowid=nil, dealname=nil, requestid=nil)
          @InstanceIds = instanceids
          @FlowId = flowid
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @FlowId = params['FlowId']
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # CreateTmpDCDBInstance请求参数结构体
      class CreateTmpDCDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 回档实例的ID
        # @type InstanceId: String
        # @param RollbackTime: 回档时间点
        # @type RollbackTime: String

        attr_accessor :InstanceId, :RollbackTime

        def initialize(instanceid=nil, rollbacktime=nil)
          @InstanceId = instanceid
          @RollbackTime = rollbacktime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RollbackTime = params['RollbackTime']
        end
      end

      # CreateTmpDCDBInstance返回参数结构体
      class CreateTmpDCDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # 云数据库账号信息
      class DBAccount < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param Host: 用户可以从哪台主机登录（对应 MySQL 用户的 host 字段，UserName + Host 唯一标识一个用户，IP形式，IP段以%结尾；支持填入%；为空默认等于%）
        # @type Host: String
        # @param Description: 用户备注信息
        # @type Description: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 最后更新时间
        # @type UpdateTime: String
        # @param ReadOnly: 只读标记，0：否， 1：该账号的sql请求优先选择备机执行，备机不可用时选择主机执行，2：优先选择备机执行，备机不可用时操作失败。
        # @type ReadOnly: Integer
        # @param DelayThresh: 如果备机延迟超过本参数设置值，系统将认为备机发生故障
        # 建议该参数值大于10。当ReadOnly选择1、2时该参数生效。
        # @type DelayThresh: Integer
        # @param SlaveConst: 针对只读账号，设置策略是否固定备机，0：不固定备机，即备机不满足条件与客户端不断开连接，Proxy选择其他可用备机，1：备机不满足条件断开连接，确保一个连接固定备机。
        # @type SlaveConst: Integer
        # @param MaxUserConnections: 用户最大连接数，0代表无限制
        # @type MaxUserConnections: Integer

        attr_accessor :UserName, :Host, :Description, :CreateTime, :UpdateTime, :ReadOnly, :DelayThresh, :SlaveConst, :MaxUserConnections

        def initialize(username=nil, host=nil, description=nil, createtime=nil, updatetime=nil, readonly=nil, delaythresh=nil, slaveconst=nil, maxuserconnections=nil)
          @UserName = username
          @Host = host
          @Description = description
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ReadOnly = readonly
          @DelayThresh = delaythresh
          @SlaveConst = slaveconst
          @MaxUserConnections = maxuserconnections
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Host = params['Host']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ReadOnly = params['ReadOnly']
          @DelayThresh = params['DelayThresh']
          @SlaveConst = params['SlaveConst']
          @MaxUserConnections = params['MaxUserConnections']
        end
      end

      # 云数据库参数信息。
      class DBParamValue < TencentCloud::Common::AbstractModel
        # @param Param: 参数名称
        # @type Param: String
        # @param Value: 参数值
        # @type Value: String

        attr_accessor :Param, :Value

        def initialize(param=nil, value=nil)
          @Param = param
          @Value = value
        end

        def deserialize(params)
          @Param = params['Param']
          @Value = params['Value']
        end
      end

      # 分布式数据库实例信息
      class DCDBInstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param AppId: 应用ID
        # @type AppId: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param VpcId: VPC数字ID
        # @type VpcId: Integer
        # @param SubnetId: Subnet数字ID
        # @type SubnetId: Integer
        # @param StatusDesc: 状态中文描述
        # @type StatusDesc: String
        # @param Status: 实例状态：0 创建中，1 流程处理中， 2 运行中，3 实例未初始化，-1 实例已隔离，4 实例初始化中，5 实例删除中，6 实例重启中，7 数据迁移中
        # @type Status: Integer
        # @param Vip: 内网IP
        # @type Vip: String
        # @param Vport: 内网端口
        # @type Vport: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param AutoRenewFlag: 自动续费标志
        # @type AutoRenewFlag: Integer
        # @param Memory: 内存大小，单位 GB
        # @type Memory: Integer
        # @param Storage: 存储大小，单位 GB
        # @type Storage: Integer
        # @param ShardCount: 分片个数
        # @type ShardCount: Integer
        # @param PeriodEndTime: 到期时间
        # @type PeriodEndTime: String
        # @param IsolatedTimestamp: 隔离时间
        # @type IsolatedTimestamp: String
        # @param Uin: 账号ID
        # @type Uin: String
        # @param ShardDetail: 分片详情
        # @type ShardDetail: Array
        # @param NodeCount: 节点数，2 为一主一从， 3 为一主二从
        # @type NodeCount: Integer
        # @param IsTmp: 临时实例标记，0 为非临时实例
        # @type IsTmp: Integer
        # @param ExclusterId: 独享集群ID，为空表示非独享集群实例
        # @type ExclusterId: String
        # @param UniqueVpcId: 字符串型的私有网络ID
        # @type UniqueVpcId: String
        # @param UniqueSubnetId: 字符串型的私有网络子网ID
        # @type UniqueSubnetId: String
        # @param Id: 数字实例ID（过时字段，请勿依赖该值）
        # @type Id: Integer
        # @param WanDomain: 外网访问的域名，公网可解析
        # @type WanDomain: String
        # @param WanVip: 外网 IP 地址，公网可访问
        # @type WanVip: String
        # @param WanPort: 外网端口
        # @type WanPort: Integer
        # @param Pid: 产品类型 ID（过时字段，请勿依赖该值）
        # @type Pid: Integer
        # @param UpdateTime: 实例最后更新时间，格式为 2006-01-02 15:04:05
        # @type UpdateTime: String
        # @param DbEngine: 数据库引擎
        # @type DbEngine: String
        # @param DbVersion: 数据库引擎版本
        # @type DbVersion: String
        # @param Paymode: 付费模式
        # @type Paymode: String
        # @param Locker: 实例处于异步任务状态时，表示异步任务流程ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Locker: Integer
        # @param WanStatus: 外网状态，0-未开通；1-已开通；2-关闭；3-开通中
        # @type WanStatus: Integer
        # @param IsAuditSupported: 该实例是否支持审计。1-支持；0-不支持
        # @type IsAuditSupported: Integer
        # @param Cpu: Cpu核数
        # @type Cpu: Integer
        # @param Ipv6Flag: 实例IPv6标志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6Flag: Integer
        # @param Vipv6: 内网IPv6
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vipv6: String
        # @param WanVipv6: 外网IPv6
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanVipv6: String
        # @param WanPortIpv6: 外网IPv6端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanPortIpv6: Integer
        # @param WanStatusIpv6: 外网IPv6状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanStatusIpv6: Integer
        # @param DcnFlag: DCN标志，0-无，1-主实例，2-灾备实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DcnFlag: Integer
        # @param DcnStatus: DCN状态，0-无，1-创建中，2-同步中，3-已断开
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DcnStatus: Integer
        # @param DcnDstNum: DCN灾备实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DcnDstNum: Integer
        # @param InstanceType: 1： 主实例（独享型）, 2: 主实例, 3： 灾备实例, 4： 灾备实例（独享型）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: Integer
        # @param ResourceTags: 实例标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceTags: Array
        # @param DbVersionId: 数据库引擎版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbVersionId: String

        attr_accessor :InstanceId, :InstanceName, :AppId, :ProjectId, :Region, :Zone, :VpcId, :SubnetId, :StatusDesc, :Status, :Vip, :Vport, :CreateTime, :AutoRenewFlag, :Memory, :Storage, :ShardCount, :PeriodEndTime, :IsolatedTimestamp, :Uin, :ShardDetail, :NodeCount, :IsTmp, :ExclusterId, :UniqueVpcId, :UniqueSubnetId, :Id, :WanDomain, :WanVip, :WanPort, :Pid, :UpdateTime, :DbEngine, :DbVersion, :Paymode, :Locker, :WanStatus, :IsAuditSupported, :Cpu, :Ipv6Flag, :Vipv6, :WanVipv6, :WanPortIpv6, :WanStatusIpv6, :DcnFlag, :DcnStatus, :DcnDstNum, :InstanceType, :ResourceTags, :DbVersionId

        def initialize(instanceid=nil, instancename=nil, appid=nil, projectid=nil, region=nil, zone=nil, vpcid=nil, subnetid=nil, statusdesc=nil, status=nil, vip=nil, vport=nil, createtime=nil, autorenewflag=nil, memory=nil, storage=nil, shardcount=nil, periodendtime=nil, isolatedtimestamp=nil, uin=nil, sharddetail=nil, nodecount=nil, istmp=nil, exclusterid=nil, uniquevpcid=nil, uniquesubnetid=nil, id=nil, wandomain=nil, wanvip=nil, wanport=nil, pid=nil, updatetime=nil, dbengine=nil, dbversion=nil, paymode=nil, locker=nil, wanstatus=nil, isauditsupported=nil, cpu=nil, ipv6flag=nil, vipv6=nil, wanvipv6=nil, wanportipv6=nil, wanstatusipv6=nil, dcnflag=nil, dcnstatus=nil, dcndstnum=nil, instancetype=nil, resourcetags=nil, dbversionid=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @AppId = appid
          @ProjectId = projectid
          @Region = region
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @StatusDesc = statusdesc
          @Status = status
          @Vip = vip
          @Vport = vport
          @CreateTime = createtime
          @AutoRenewFlag = autorenewflag
          @Memory = memory
          @Storage = storage
          @ShardCount = shardcount
          @PeriodEndTime = periodendtime
          @IsolatedTimestamp = isolatedtimestamp
          @Uin = uin
          @ShardDetail = sharddetail
          @NodeCount = nodecount
          @IsTmp = istmp
          @ExclusterId = exclusterid
          @UniqueVpcId = uniquevpcid
          @UniqueSubnetId = uniquesubnetid
          @Id = id
          @WanDomain = wandomain
          @WanVip = wanvip
          @WanPort = wanport
          @Pid = pid
          @UpdateTime = updatetime
          @DbEngine = dbengine
          @DbVersion = dbversion
          @Paymode = paymode
          @Locker = locker
          @WanStatus = wanstatus
          @IsAuditSupported = isauditsupported
          @Cpu = cpu
          @Ipv6Flag = ipv6flag
          @Vipv6 = vipv6
          @WanVipv6 = wanvipv6
          @WanPortIpv6 = wanportipv6
          @WanStatusIpv6 = wanstatusipv6
          @DcnFlag = dcnflag
          @DcnStatus = dcnstatus
          @DcnDstNum = dcndstnum
          @InstanceType = instancetype
          @ResourceTags = resourcetags
          @DbVersionId = dbversionid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @AppId = params['AppId']
          @ProjectId = params['ProjectId']
          @Region = params['Region']
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @StatusDesc = params['StatusDesc']
          @Status = params['Status']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @CreateTime = params['CreateTime']
          @AutoRenewFlag = params['AutoRenewFlag']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @ShardCount = params['ShardCount']
          @PeriodEndTime = params['PeriodEndTime']
          @IsolatedTimestamp = params['IsolatedTimestamp']
          @Uin = params['Uin']
          unless params['ShardDetail'].nil?
            @ShardDetail = []
            params['ShardDetail'].each do |i|
              shardinfo_tmp = ShardInfo.new
              shardinfo_tmp.deserialize(i)
              @ShardDetail << shardinfo_tmp
            end
          end
          @NodeCount = params['NodeCount']
          @IsTmp = params['IsTmp']
          @ExclusterId = params['ExclusterId']
          @UniqueVpcId = params['UniqueVpcId']
          @UniqueSubnetId = params['UniqueSubnetId']
          @Id = params['Id']
          @WanDomain = params['WanDomain']
          @WanVip = params['WanVip']
          @WanPort = params['WanPort']
          @Pid = params['Pid']
          @UpdateTime = params['UpdateTime']
          @DbEngine = params['DbEngine']
          @DbVersion = params['DbVersion']
          @Paymode = params['Paymode']
          @Locker = params['Locker']
          @WanStatus = params['WanStatus']
          @IsAuditSupported = params['IsAuditSupported']
          @Cpu = params['Cpu']
          @Ipv6Flag = params['Ipv6Flag']
          @Vipv6 = params['Vipv6']
          @WanVipv6 = params['WanVipv6']
          @WanPortIpv6 = params['WanPortIpv6']
          @WanStatusIpv6 = params['WanStatusIpv6']
          @DcnFlag = params['DcnFlag']
          @DcnStatus = params['DcnStatus']
          @DcnDstNum = params['DcnDstNum']
          @InstanceType = params['InstanceType']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @DbVersionId = params['DbVersionId']
        end
      end

      # 描述分布式数据库分片信息。
      class DCDBShardInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 所属实例Id
        # @type InstanceId: String
        # @param ShardSerialId: 分片SQL透传Id，用于将sql透传到指定分片执行
        # @type ShardSerialId: String
        # @param ShardInstanceId: 全局唯一的分片Id
        # @type ShardInstanceId: String
        # @param Status: 状态：0 创建中，1 流程处理中， 2 运行中，3 分片未初始化
        # @type Status: Integer
        # @param StatusDesc: 状态中文描述
        # @type StatusDesc: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param VpcId: 字符串格式的私有网络Id
        # @type VpcId: String
        # @param SubnetId: 字符串格式的私有网络子网Id
        # @type SubnetId: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param Memory: 内存大小，单位 GB
        # @type Memory: Integer
        # @param Storage: 存储大小，单位 GB
        # @type Storage: Integer
        # @param PeriodEndTime: 到期时间
        # @type PeriodEndTime: String
        # @param NodeCount: 节点数，2 为一主一从， 3 为一主二从
        # @type NodeCount: Integer
        # @param StorageUsage: 存储使用率，单位为 %
        # @type StorageUsage: Float
        # @param MemoryUsage: 内存使用率，单位为 %
        # @type MemoryUsage: Float
        # @param ShardId: 数字分片Id（过时字段，请勿依赖该值）
        # @type ShardId: Integer
        # @param Pid: 产品ProductID
        # @type Pid: Integer
        # @param ProxyVersion: Proxy版本
        # @type ProxyVersion: String
        # @param Paymode: 付费模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Paymode: String
        # @param ShardMasterZone: 分片的主可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShardMasterZone: String
        # @param ShardSlaveZones: 分片的从可用区列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShardSlaveZones: Array
        # @param Cpu: CPU核数
        # @type Cpu: Integer
        # @param Range: 分片ShardKey的范围（总共64个哈希值），例如： 0-31，32-63
        # @type Range: String

        attr_accessor :InstanceId, :ShardSerialId, :ShardInstanceId, :Status, :StatusDesc, :CreateTime, :VpcId, :SubnetId, :ProjectId, :Region, :Zone, :Memory, :Storage, :PeriodEndTime, :NodeCount, :StorageUsage, :MemoryUsage, :ShardId, :Pid, :ProxyVersion, :Paymode, :ShardMasterZone, :ShardSlaveZones, :Cpu, :Range

        def initialize(instanceid=nil, shardserialid=nil, shardinstanceid=nil, status=nil, statusdesc=nil, createtime=nil, vpcid=nil, subnetid=nil, projectid=nil, region=nil, zone=nil, memory=nil, storage=nil, periodendtime=nil, nodecount=nil, storageusage=nil, memoryusage=nil, shardid=nil, pid=nil, proxyversion=nil, paymode=nil, shardmasterzone=nil, shardslavezones=nil, cpu=nil, range=nil)
          @InstanceId = instanceid
          @ShardSerialId = shardserialid
          @ShardInstanceId = shardinstanceid
          @Status = status
          @StatusDesc = statusdesc
          @CreateTime = createtime
          @VpcId = vpcid
          @SubnetId = subnetid
          @ProjectId = projectid
          @Region = region
          @Zone = zone
          @Memory = memory
          @Storage = storage
          @PeriodEndTime = periodendtime
          @NodeCount = nodecount
          @StorageUsage = storageusage
          @MemoryUsage = memoryusage
          @ShardId = shardid
          @Pid = pid
          @ProxyVersion = proxyversion
          @Paymode = paymode
          @ShardMasterZone = shardmasterzone
          @ShardSlaveZones = shardslavezones
          @Cpu = cpu
          @Range = range
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ShardSerialId = params['ShardSerialId']
          @ShardInstanceId = params['ShardInstanceId']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @CreateTime = params['CreateTime']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ProjectId = params['ProjectId']
          @Region = params['Region']
          @Zone = params['Zone']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @PeriodEndTime = params['PeriodEndTime']
          @NodeCount = params['NodeCount']
          @StorageUsage = params['StorageUsage']
          @MemoryUsage = params['MemoryUsage']
          @ShardId = params['ShardId']
          @Pid = params['Pid']
          @ProxyVersion = params['ProxyVersion']
          @Paymode = params['Paymode']
          @ShardMasterZone = params['ShardMasterZone']
          @ShardSlaveZones = params['ShardSlaveZones']
          @Cpu = params['Cpu']
          @Range = params['Range']
        end
      end

      # 数据库信息
      class Database < TencentCloud::Common::AbstractModel
        # @param DbName: 数据库名称
        # @type DbName: String

        attr_accessor :DbName

        def initialize(dbname=nil)
          @DbName = dbname
        end

        def deserialize(params)
          @DbName = params['DbName']
        end
      end

      # 数据库函数信息
      class DatabaseFunction < TencentCloud::Common::AbstractModel
        # @param Func: 函数名称
        # @type Func: String

        attr_accessor :Func

        def initialize(func=nil)
          @Func = func
        end

        def deserialize(params)
          @Func = params['Func']
        end
      end

      # 数据库权限
      class DatabasePrivilege < TencentCloud::Common::AbstractModel
        # @param Privileges: 权限信息
        # @type Privileges: Array
        # @param Database: 数据库名
        # @type Database: String

        attr_accessor :Privileges, :Database

        def initialize(privileges=nil, database=nil)
          @Privileges = privileges
          @Database = database
        end

        def deserialize(params)
          @Privileges = params['Privileges']
          @Database = params['Database']
        end
      end

      # 数据库存储过程信息
      class DatabaseProcedure < TencentCloud::Common::AbstractModel
        # @param Proc: 存储过程名称
        # @type Proc: String

        attr_accessor :Proc

        def initialize(proc=nil)
          @Proc = proc
        end

        def deserialize(params)
          @Proc = params['Proc']
        end
      end

      # 数据库表信息
      class DatabaseTable < TencentCloud::Common::AbstractModel
        # @param Table: 表名
        # @type Table: String

        attr_accessor :Table

        def initialize(table=nil)
          @Table = table
        end

        def deserialize(params)
          @Table = params['Table']
        end
      end

      # 数据库视图信息
      class DatabaseView < TencentCloud::Common::AbstractModel
        # @param View: 视图名称
        # @type View: String

        attr_accessor :View

        def initialize(view=nil)
          @View = view
        end

        def deserialize(params)
          @View = params['View']
        end
      end

      # DCN详情条目
      class DcnDetailItem < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param Region: 实例地域
        # @type Region: String
        # @param Zone: 实例可用区
        # @type Zone: String
        # @param Vip: 实例IP地址
        # @type Vip: String
        # @param Vipv6: 实例IPv6地址
        # @type Vipv6: String
        # @param Vport: 实例端口
        # @type Vport: Integer
        # @param Status: 实例状态
        # @type Status: Integer
        # @param StatusDesc: 实例状态描述
        # @type StatusDesc: String
        # @param DcnFlag: 实例DCN标志，1-主，2-备
        # @type DcnFlag: Integer
        # @param DcnStatus: 实例DCN状态，0-无，1-创建中，2-同步中，3-已断开
        # @type DcnStatus: Integer
        # @param Cpu: 实例CPU核数
        # @type Cpu: Integer
        # @param Memory: 实例内存大小，单位 GB
        # @type Memory: Integer
        # @param Storage: 实例存储大小，单位 GB
        # @type Storage: Integer
        # @param PayMode: 付费模式
        # @type PayMode: Integer
        # @param CreateTime: 实例创建时间，格式为 2006-01-02 15:04:05
        # @type CreateTime: String
        # @param PeriodEndTime: 实例到期时间，格式为 2006-01-02 15:04:05
        # @type PeriodEndTime: String
        # @param InstanceType: 1： 主实例（独享型）, 2: 主实例, 3： 灾备实例, 4： 灾备实例（独享型）
        # @type InstanceType: Integer
        # @param EncryptStatus: 是否开启了 kms
        # @type EncryptStatus: Integer

        attr_accessor :InstanceId, :InstanceName, :Region, :Zone, :Vip, :Vipv6, :Vport, :Status, :StatusDesc, :DcnFlag, :DcnStatus, :Cpu, :Memory, :Storage, :PayMode, :CreateTime, :PeriodEndTime, :InstanceType, :EncryptStatus

        def initialize(instanceid=nil, instancename=nil, region=nil, zone=nil, vip=nil, vipv6=nil, vport=nil, status=nil, statusdesc=nil, dcnflag=nil, dcnstatus=nil, cpu=nil, memory=nil, storage=nil, paymode=nil, createtime=nil, periodendtime=nil, instancetype=nil, encryptstatus=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Region = region
          @Zone = zone
          @Vip = vip
          @Vipv6 = vipv6
          @Vport = vport
          @Status = status
          @StatusDesc = statusdesc
          @DcnFlag = dcnflag
          @DcnStatus = dcnstatus
          @Cpu = cpu
          @Memory = memory
          @Storage = storage
          @PayMode = paymode
          @CreateTime = createtime
          @PeriodEndTime = periodendtime
          @InstanceType = instancetype
          @EncryptStatus = encryptstatus
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Region = params['Region']
          @Zone = params['Zone']
          @Vip = params['Vip']
          @Vipv6 = params['Vipv6']
          @Vport = params['Vport']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @DcnFlag = params['DcnFlag']
          @DcnStatus = params['DcnStatus']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @PayMode = params['PayMode']
          @CreateTime = params['CreateTime']
          @PeriodEndTime = params['PeriodEndTime']
          @InstanceType = params['InstanceType']
          @EncryptStatus = params['EncryptStatus']
        end
      end

      # 订单信息
      class Deal < TencentCloud::Common::AbstractModel
        # @param DealName: 订单号
        # @type DealName: String
        # @param OwnerUin: 所属账号
        # @type OwnerUin: String
        # @param Count: 商品数量
        # @type Count: Integer
        # @param FlowId: 关联的流程 Id，可用于查询流程执行状态
        # @type FlowId: Integer
        # @param InstanceIds: 只有创建实例且已完成发货的订单会填充该字段，表示该订单创建的实例的 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceIds: Array
        # @param PayMode: 付费模式，0后付费/1预付费
        # @type PayMode: Integer

        attr_accessor :DealName, :OwnerUin, :Count, :FlowId, :InstanceIds, :PayMode

        def initialize(dealname=nil, owneruin=nil, count=nil, flowid=nil, instanceids=nil, paymode=nil)
          @DealName = dealname
          @OwnerUin = owneruin
          @Count = count
          @FlowId = flowid
          @InstanceIds = instanceids
          @PayMode = paymode
        end

        def deserialize(params)
          @DealName = params['DealName']
          @OwnerUin = params['OwnerUin']
          @Count = params['Count']
          @FlowId = params['FlowId']
          @InstanceIds = params['InstanceIds']
          @PayMode = params['PayMode']
        end
      end

      # DeleteAccount请求参数结构体
      class DeleteAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如：dcdbt-ow728lmc，可以通过 DescribeDCDBInstances 查询实例详情获得。
        # @type InstanceId: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param Host: 用户允许的访问 host
        # @type Host: String

        attr_accessor :InstanceId, :UserName, :Host

        def initialize(instanceid=nil, username=nil, host=nil)
          @InstanceId = instanceid
          @UserName = username
          @Host = host
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @Host = params['Host']
        end
      end

      # DeleteAccount返回参数结构体
      class DeleteAccountResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAccountPrivileges请求参数结构体
      class DescribeAccountPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：dcdbt-ow7t8lmc。
        # @type InstanceId: String
        # @param UserName: 登录用户名。
        # @type UserName: String
        # @param Host: 用户允许的访问 host，用户名+host唯一确定一个账号。
        # @type Host: String
        # @param DbName: 数据库名。如果为 \*，表示查询全局权限（即 \*.\*），此时忽略 Type 和 Object 参数
        # @type DbName: String
        # @param Type: 类型,可以填入 table 、 view 、 proc 、 func 和 \*。当 DbName 为具体数据库名，Type为 \* 时，表示查询该数据库权限（即db.\*），此时忽略 Object 参数
        # @type Type: String
        # @param Object: 具体的 Type 的名称，例如 Type 为 table 时就是具体的表名。DbName 和 Type 都为具体名称，则 Object 表示具体对象名，不能为 \* 或者为空
        # @type Object: String
        # @param ColName: 当 Type=table 时，ColName 为 \* 表示查询表的权限，如果为具体字段名，表示查询对应字段的权限
        # @type ColName: String

        attr_accessor :InstanceId, :UserName, :Host, :DbName, :Type, :Object, :ColName

        def initialize(instanceid=nil, username=nil, host=nil, dbname=nil, type=nil, object=nil, colname=nil)
          @InstanceId = instanceid
          @UserName = username
          @Host = host
          @DbName = dbname
          @Type = type
          @Object = object
          @ColName = colname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @Host = params['Host']
          @DbName = params['DbName']
          @Type = params['Type']
          @Object = params['Object']
          @ColName = params['ColName']
        end
      end

      # DescribeAccountPrivileges返回参数结构体
      class DescribeAccountPrivilegesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Privileges: 权限列表。
        # @type Privileges: Array
        # @param UserName: 数据库账号用户名
        # @type UserName: String
        # @param Host: 数据库账号Host
        # @type Host: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Privileges, :UserName, :Host, :RequestId

        def initialize(instanceid=nil, privileges=nil, username=nil, host=nil, requestid=nil)
          @InstanceId = instanceid
          @Privileges = privileges
          @UserName = username
          @Host = host
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Privileges = params['Privileges']
          @UserName = params['UserName']
          @Host = params['Host']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccounts请求参数结构体
      class DescribeAccountsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如：dcdbt-ow728lmc。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeAccounts返回参数结构体
      class DescribeAccountsResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，透传入参。
        # @type InstanceId: String
        # @param Users: 实例用户列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Users: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Users, :RequestId

        def initialize(instanceid=nil, users=nil, requestid=nil)
          @InstanceId = instanceid
          @Users = users
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              dbaccount_tmp = DBAccount.new
              dbaccount_tmp.deserialize(i)
              @Users << dbaccount_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupFiles请求参数结构体
      class DescribeBackupFilesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 按实例ID查询
        # @type InstanceId: String
        # @param ShardId: 按分片ID查询
        # @type ShardId: String
        # @param BackupType: 备份类型，Data:数据备份，Binlog:Binlog备份，Errlog:错误日志，Slowlog:慢日志
        # @type BackupType: String
        # @param StartTime: 按开始时间查询
        # @type StartTime: String
        # @param EndTime: 按结束时间查询
        # @type EndTime: String
        # @param Limit: 分页参数
        # @type Limit: Integer
        # @param Offset: 分页参数
        # @type Offset: Integer
        # @param OrderBy: 排序参数，可选值：Time,Size
        # @type OrderBy: String
        # @param OrderType: 排序参数，可选值：DESC,ASC
        # @type OrderType: String

        attr_accessor :InstanceId, :ShardId, :BackupType, :StartTime, :EndTime, :Limit, :Offset, :OrderBy, :OrderType

        def initialize(instanceid=nil, shardid=nil, backuptype=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, orderby=nil, ordertype=nil)
          @InstanceId = instanceid
          @ShardId = shardid
          @BackupType = backuptype
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderType = ordertype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ShardId = params['ShardId']
          @BackupType = params['BackupType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
        end
      end

      # DescribeBackupFiles返回参数结构体
      class DescribeBackupFilesResponse < TencentCloud::Common::AbstractModel
        # @param Files: 备份文件列表
        # @type Files: Array
        # @param TotalCount: 总条目数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Files, :TotalCount, :RequestId

        def initialize(files=nil, totalcount=nil, requestid=nil)
          @Files = files
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Files'].nil?
            @Files = []
            params['Files'].each do |i|
              instancebackupfileitem_tmp = InstanceBackupFileItem.new
              instancebackupfileitem_tmp.deserialize(i)
              @Files << instancebackupfileitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBEncryptAttributes请求参数结构体
      class DescribeDBEncryptAttributesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id，形如：tdsqlshard-ow728lmc。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBEncryptAttributes返回参数结构体
      class DescribeDBEncryptAttributesResponse < TencentCloud::Common::AbstractModel
        # @param EncryptStatus: 是否启用加密，1-已开启；0-未开启。
        # @type EncryptStatus: Integer
        # @param CipherText: DEK密钥
        # @type CipherText: String
        # @param ExpireDate: DEK密钥过期日期。
        # @type ExpireDate: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EncryptStatus, :CipherText, :ExpireDate, :RequestId

        def initialize(encryptstatus=nil, ciphertext=nil, expiredate=nil, requestid=nil)
          @EncryptStatus = encryptstatus
          @CipherText = ciphertext
          @ExpireDate = expiredate
          @RequestId = requestid
        end

        def deserialize(params)
          @EncryptStatus = params['EncryptStatus']
          @CipherText = params['CipherText']
          @ExpireDate = params['ExpireDate']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBLogFiles请求参数结构体
      class DescribeDBLogFilesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：dcdbt-ow7t8lmc。
        # @type InstanceId: String
        # @param ShardId: 分片 ID，形如：shard-7noic7tv
        # @type ShardId: String
        # @param Type: 请求日志类型，取值只能为1、2、3或者4。1-binlog，2-冷备，3-errlog，4-slowlog。
        # @type Type: Integer

        attr_accessor :InstanceId, :ShardId, :Type

        def initialize(instanceid=nil, shardid=nil, type=nil)
          @InstanceId = instanceid
          @ShardId = shardid
          @Type = type
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ShardId = params['ShardId']
          @Type = params['Type']
        end
      end

      # DescribeDBLogFiles返回参数结构体
      class DescribeDBLogFilesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：dcdbt-ow728lmc。
        # @type InstanceId: String
        # @param Type: 请求日志类型。1-binlog，2-冷备，3-errlog，4-slowlog。
        # @type Type: Integer
        # @param Total: 请求日志总数
        # @type Total: Integer
        # @param Files: 日志文件列表
        # @type Files: Array
        # @param VpcPrefix: 如果是VPC网络的实例，做用本前缀加上URI为下载地址
        # @type VpcPrefix: String
        # @param NormalPrefix: 如果是普通网络的实例，做用本前缀加上URI为下载地址
        # @type NormalPrefix: String
        # @param ShardId: 分片 ID，形如：shard-7noic7tv
        # @type ShardId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Type, :Total, :Files, :VpcPrefix, :NormalPrefix, :ShardId, :RequestId

        def initialize(instanceid=nil, type=nil, total=nil, files=nil, vpcprefix=nil, normalprefix=nil, shardid=nil, requestid=nil)
          @InstanceId = instanceid
          @Type = type
          @Total = total
          @Files = files
          @VpcPrefix = vpcprefix
          @NormalPrefix = normalprefix
          @ShardId = shardid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          @Total = params['Total']
          unless params['Files'].nil?
            @Files = []
            params['Files'].each do |i|
              logfileinfo_tmp = LogFileInfo.new
              logfileinfo_tmp.deserialize(i)
              @Files << logfileinfo_tmp
            end
          end
          @VpcPrefix = params['VpcPrefix']
          @NormalPrefix = params['NormalPrefix']
          @ShardId = params['ShardId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBParameters请求参数结构体
      class DescribeDBParametersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：dcdbt-ow7t8lmc。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBParameters返回参数结构体
      class DescribeDBParametersResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：dcdbt-ow7t8lmc。
        # @type InstanceId: String
        # @param Params: 请求DB的当前参数值
        # @type Params: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Params, :RequestId

        def initialize(instanceid=nil, params=nil, requestid=nil)
          @InstanceId = instanceid
          @Params = params
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              paramdesc_tmp = ParamDesc.new
              paramdesc_tmp.deserialize(i)
              @Params << paramdesc_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSecurityGroups请求参数结构体
      class DescribeDBSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 数据库引擎名称，本接口取值：dcdb。
        # @type Product: String
        # @param InstanceId: 实例ID。
        # @type InstanceId: String

        attr_accessor :Product, :InstanceId

        def initialize(product=nil, instanceid=nil)
          @Product = product
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Product = params['Product']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBSecurityGroups返回参数结构体
      class DescribeDBSecurityGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Groups: 安全组详情。
        # @type Groups: Array
        # @param VIP: 实例VIP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VIP: String
        # @param VPort: 实例端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VPort: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Groups, :VIP, :VPort, :RequestId

        def initialize(groups=nil, vip=nil, vport=nil, requestid=nil)
          @Groups = groups
          @VIP = vip
          @VPort = vport
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              securitygroup_tmp = SecurityGroup.new
              securitygroup_tmp.deserialize(i)
              @Groups << securitygroup_tmp
            end
          end
          @VIP = params['VIP']
          @VPort = params['VPort']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSlowLogs请求参数结构体
      class DescribeDBSlowLogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：dcdbt-hw0qj6m1
        # @type InstanceId: String
        # @param Offset: 从结果的第几条数据开始返回
        # @type Offset: Integer
        # @param Limit: 返回的结果条数
        # @type Limit: Integer
        # @param StartTime: 查询的起始时间，形如2016-07-23 14:55:20
        # @type StartTime: String
        # @param ShardId: 实例的分片ID，形如shard-53ima8ln
        # @type ShardId: String
        # @param EndTime: 查询的结束时间，形如2016-08-22 14:55:20。如果不填，那么查询结束时间就是当前时间
        # @type EndTime: String
        # @param Db: 要查询的具体数据库名称
        # @type Db: String
        # @param OrderBy: 排序指标，取值为query_time_sum或者query_count。不填默认按照query_time_sum排序
        # @type OrderBy: String
        # @param OrderByType: 排序类型，desc（降序）或者asc（升序）。不填默认desc排序
        # @type OrderByType: String
        # @param Slave: 是否查询从机的慢查询，0-主机; 1-从机。不填默认查询主机慢查询
        # @type Slave: Integer

        attr_accessor :InstanceId, :Offset, :Limit, :StartTime, :ShardId, :EndTime, :Db, :OrderBy, :OrderByType, :Slave

        def initialize(instanceid=nil, offset=nil, limit=nil, starttime=nil, shardid=nil, endtime=nil, db=nil, orderby=nil, orderbytype=nil, slave=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @StartTime = starttime
          @ShardId = shardid
          @EndTime = endtime
          @Db = db
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Slave = slave
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @StartTime = params['StartTime']
          @ShardId = params['ShardId']
          @EndTime = params['EndTime']
          @Db = params['Db']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          @Slave = params['Slave']
        end
      end

      # DescribeDBSlowLogs返回参数结构体
      class DescribeDBSlowLogsResponse < TencentCloud::Common::AbstractModel
        # @param LockTimeSum: 所有语句锁时间总和
        # @type LockTimeSum: Float
        # @param QueryCount: 所有语句查询总次数
        # @type QueryCount: Integer
        # @param Total: 总记录数
        # @type Total: Integer
        # @param QueryTimeSum: 所有语句查询时间总和
        # @type QueryTimeSum: Float
        # @param Data: 慢查询日志数据
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LockTimeSum, :QueryCount, :Total, :QueryTimeSum, :Data, :RequestId

        def initialize(locktimesum=nil, querycount=nil, total=nil, querytimesum=nil, data=nil, requestid=nil)
          @LockTimeSum = locktimesum
          @QueryCount = querycount
          @Total = total
          @QueryTimeSum = querytimesum
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @LockTimeSum = params['LockTimeSum']
          @QueryCount = params['QueryCount']
          @Total = params['Total']
          @QueryTimeSum = params['QueryTimeSum']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              slowlogdata_tmp = SlowLogData.new
              slowlogdata_tmp.deserialize(i)
              @Data << slowlogdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSyncMode请求参数结构体
      class DescribeDBSyncModeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待修改同步模式的实例ID。形如：dcdbt-ow728lmc。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBSyncMode返回参数结构体
      class DescribeDBSyncModeResponse < TencentCloud::Common::AbstractModel
        # @param SyncMode: 同步模式：0 异步，1 强同步， 2 强同步可退化
        # @type SyncMode: Integer
        # @param IsModifying: 是否有修改流程在执行中：1 是， 0 否。
        # @type IsModifying: Integer
        # @param CurrentSyncMode: 当前复制方式，0 异步，1 同步
        # @type CurrentSyncMode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SyncMode, :IsModifying, :CurrentSyncMode, :RequestId

        def initialize(syncmode=nil, ismodifying=nil, currentsyncmode=nil, requestid=nil)
          @SyncMode = syncmode
          @IsModifying = ismodifying
          @CurrentSyncMode = currentsyncmode
          @RequestId = requestid
        end

        def deserialize(params)
          @SyncMode = params['SyncMode']
          @IsModifying = params['IsModifying']
          @CurrentSyncMode = params['CurrentSyncMode']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBTmpInstances请求参数结构体
      class DescribeDBTmpInstancesRequest < TencentCloud::Common::AbstractModel
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

      # DescribeDBTmpInstances返回参数结构体
      class DescribeDBTmpInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TmpInstances: 临时实例列表
        # @type TmpInstances: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TmpInstances, :RequestId

        def initialize(tmpinstances=nil, requestid=nil)
          @TmpInstances = tmpinstances
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TmpInstances'].nil?
            @TmpInstances = []
            params['TmpInstances'].each do |i|
              tmpinstance_tmp = TmpInstance.new
              tmpinstance_tmp.deserialize(i)
              @TmpInstances << tmpinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDCDBInstanceDetail请求参数结构体
      class DescribeDCDBInstanceDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如dcdbt-7oaxtcb7
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDCDBInstanceDetail返回参数结构体
      class DescribeDCDBInstanceDetailResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如dcdbt-7oaxtcb7
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param Status: 实例状态。0-实例创建中；1-异步任务处理中；2-运行中；3-实例未初始化；-1-实例已隔离
        # @type Status: Integer
        # @param StatusDesc: 实例目前运行状态描述
        # @type StatusDesc: String
        # @param Vip: 实例内网IP地址
        # @type Vip: String
        # @param Vport: 实例内网端口
        # @type Vport: Integer
        # @param NodeCount: 实例节点数。值为2时表示一主一从，值为3时表示一主二从
        # @type NodeCount: Integer
        # @param Region: 实例所在地域名称，形如ap-guangzhou
        # @type Region: String
        # @param VpcId: 实例私有网络ID，形如vpc-r9jr0de3
        # @type VpcId: String
        # @param SubnetId: 实例私有网络子网ID，形如subnet-6rqs61o2
        # @type SubnetId: String
        # @param WanStatus: 外网状态，0-未开通；1-已开通；2-关闭；3-开通中；4-关闭中
        # @type WanStatus: Integer
        # @param WanDomain: 外网访问的域名，公网可解析
        # @type WanDomain: String
        # @param WanVip: 外网IP地址，公网可访问
        # @type WanVip: String
        # @param WanPort: 外网访问端口
        # @type WanPort: Integer
        # @param ProjectId: 实例所属项目ID
        # @type ProjectId: Integer
        # @param AutoRenewFlag: 实例自动续费标志。0-正常续费；1-自动续费；2-到期不续费
        # @type AutoRenewFlag: Integer
        # @param ExclusterId: 独享集群ID
        # @type ExclusterId: String
        # @param PayMode: 付费模式。prepaid-预付费；postpaid-按量计费
        # @type PayMode: String
        # @param CreateTime: 实例创建时间，格式为 2006-01-02 15:04:05
        # @type CreateTime: String
        # @param PeriodEndTime: 实例到期时间，格式为 2006-01-02 15:04:05
        # @type PeriodEndTime: String
        # @param DbVersion: 数据库版本信息
        # @type DbVersion: String
        # @param IsAuditSupported: 实例是否支持审计。0-不支持；1-支持
        # @type IsAuditSupported: Integer
        # @param IsEncryptSupported: 实例是否支持数据加密。0-不支持；1-支持
        # @type IsEncryptSupported: Integer
        # @param Machine: 实例母机机器型号
        # @type Machine: String
        # @param Memory: 实例内存大小，单位 GB，各个分片的内存大小的和
        # @type Memory: Integer
        # @param Storage: 实例磁盘存储大小，单位 GB，各个分片的磁盘大小的和
        # @type Storage: Integer
        # @param StorageUsage: 实例存储空间使用率，计算方式为：各个分片已经使用的磁盘大小的和/各个分片的磁盘大小的和。
        # @type StorageUsage: Float
        # @param LogStorage: 日志存储空间大小，单位GB
        # @type LogStorage: Integer
        # @param Pid: 产品类型ID
        # @type Pid: Integer
        # @param MasterZone: 主DB可用区
        # @type MasterZone: String
        # @param SlaveZones: 从DB可用区
        # @type SlaveZones: Array
        # @param Shards: 分片信息
        # @type Shards: Array
        # @param Vip6: 内网IPv6
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip6: String
        # @param Cpu: 实例Cpu核数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cpu: Integer
        # @param Qps: 实例QPS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Qps: Integer
        # @param DbEngine: DB引擎
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbEngine: String
        # @param Ipv6Flag: 是否支持IPv6
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6Flag: Integer
        # @param WanVipv6: 外网IPv6地址，公网可访问
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanVipv6: String
        # @param WanStatusIpv6: 外网状态，0-未开通；1-已开通；2-关闭；3-开通中；4-关闭中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanStatusIpv6: Integer
        # @param WanPortIpv6: 外网IPv6端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanPortIpv6: Integer
        # @param ResourceTags: 标签信息
        # @type ResourceTags: Array
        # @param DcnFlag: DCN标志，0-无，1-主实例，2-灾备实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DcnFlag: Integer
        # @param DcnStatus: DCN状态，0-无，1-创建中，2-同步中，3-已断开
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DcnStatus: Integer
        # @param DcnDstNum: DCN灾备实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DcnDstNum: Integer
        # @param InstanceType: 1： 主实例（独享型）, 2: 主实例, 3： 灾备实例, 4： 灾备实例（独享型）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: Integer
        # @param IsMaxUserConnectionsSupported: 实例是否支持设置用户连接数限制，内核为10.1暂不支持。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsMaxUserConnectionsSupported: Boolean
        # @param DbVersionId: 对外显示的数据库版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbVersionId: String
        # @param EncryptStatus: 加密状态, 0-未开启，1-已开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptStatus: Integer
        # @param ExclusterType: 独享集群类型，0:公有云, 1:金融围笼, 2:CDC集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExclusterType: Integer
        # @param RsAccessStrategy: VPC就近访问
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RsAccessStrategy: Integer
        # @param ReservedNetResources: 尚未回收的网络资源
        # @type ReservedNetResources: Array
        # @param IsPhysicalReplicationSupported: 是否支持物理复制
        # @type IsPhysicalReplicationSupported: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :InstanceName, :Status, :StatusDesc, :Vip, :Vport, :NodeCount, :Region, :VpcId, :SubnetId, :WanStatus, :WanDomain, :WanVip, :WanPort, :ProjectId, :AutoRenewFlag, :ExclusterId, :PayMode, :CreateTime, :PeriodEndTime, :DbVersion, :IsAuditSupported, :IsEncryptSupported, :Machine, :Memory, :Storage, :StorageUsage, :LogStorage, :Pid, :MasterZone, :SlaveZones, :Shards, :Vip6, :Cpu, :Qps, :DbEngine, :Ipv6Flag, :WanVipv6, :WanStatusIpv6, :WanPortIpv6, :ResourceTags, :DcnFlag, :DcnStatus, :DcnDstNum, :InstanceType, :IsMaxUserConnectionsSupported, :DbVersionId, :EncryptStatus, :ExclusterType, :RsAccessStrategy, :ReservedNetResources, :IsPhysicalReplicationSupported, :RequestId

        def initialize(instanceid=nil, instancename=nil, status=nil, statusdesc=nil, vip=nil, vport=nil, nodecount=nil, region=nil, vpcid=nil, subnetid=nil, wanstatus=nil, wandomain=nil, wanvip=nil, wanport=nil, projectid=nil, autorenewflag=nil, exclusterid=nil, paymode=nil, createtime=nil, periodendtime=nil, dbversion=nil, isauditsupported=nil, isencryptsupported=nil, machine=nil, memory=nil, storage=nil, storageusage=nil, logstorage=nil, pid=nil, masterzone=nil, slavezones=nil, shards=nil, vip6=nil, cpu=nil, qps=nil, dbengine=nil, ipv6flag=nil, wanvipv6=nil, wanstatusipv6=nil, wanportipv6=nil, resourcetags=nil, dcnflag=nil, dcnstatus=nil, dcndstnum=nil, instancetype=nil, ismaxuserconnectionssupported=nil, dbversionid=nil, encryptstatus=nil, exclustertype=nil, rsaccessstrategy=nil, reservednetresources=nil, isphysicalreplicationsupported=nil, requestid=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Status = status
          @StatusDesc = statusdesc
          @Vip = vip
          @Vport = vport
          @NodeCount = nodecount
          @Region = region
          @VpcId = vpcid
          @SubnetId = subnetid
          @WanStatus = wanstatus
          @WanDomain = wandomain
          @WanVip = wanvip
          @WanPort = wanport
          @ProjectId = projectid
          @AutoRenewFlag = autorenewflag
          @ExclusterId = exclusterid
          @PayMode = paymode
          @CreateTime = createtime
          @PeriodEndTime = periodendtime
          @DbVersion = dbversion
          @IsAuditSupported = isauditsupported
          @IsEncryptSupported = isencryptsupported
          @Machine = machine
          @Memory = memory
          @Storage = storage
          @StorageUsage = storageusage
          @LogStorage = logstorage
          @Pid = pid
          @MasterZone = masterzone
          @SlaveZones = slavezones
          @Shards = shards
          @Vip6 = vip6
          @Cpu = cpu
          @Qps = qps
          @DbEngine = dbengine
          @Ipv6Flag = ipv6flag
          @WanVipv6 = wanvipv6
          @WanStatusIpv6 = wanstatusipv6
          @WanPortIpv6 = wanportipv6
          @ResourceTags = resourcetags
          @DcnFlag = dcnflag
          @DcnStatus = dcnstatus
          @DcnDstNum = dcndstnum
          @InstanceType = instancetype
          @IsMaxUserConnectionsSupported = ismaxuserconnectionssupported
          @DbVersionId = dbversionid
          @EncryptStatus = encryptstatus
          @ExclusterType = exclustertype
          @RsAccessStrategy = rsaccessstrategy
          @ReservedNetResources = reservednetresources
          @IsPhysicalReplicationSupported = isphysicalreplicationsupported
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @NodeCount = params['NodeCount']
          @Region = params['Region']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @WanStatus = params['WanStatus']
          @WanDomain = params['WanDomain']
          @WanVip = params['WanVip']
          @WanPort = params['WanPort']
          @ProjectId = params['ProjectId']
          @AutoRenewFlag = params['AutoRenewFlag']
          @ExclusterId = params['ExclusterId']
          @PayMode = params['PayMode']
          @CreateTime = params['CreateTime']
          @PeriodEndTime = params['PeriodEndTime']
          @DbVersion = params['DbVersion']
          @IsAuditSupported = params['IsAuditSupported']
          @IsEncryptSupported = params['IsEncryptSupported']
          @Machine = params['Machine']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @StorageUsage = params['StorageUsage']
          @LogStorage = params['LogStorage']
          @Pid = params['Pid']
          @MasterZone = params['MasterZone']
          @SlaveZones = params['SlaveZones']
          unless params['Shards'].nil?
            @Shards = []
            params['Shards'].each do |i|
              shardbriefinfo_tmp = ShardBriefInfo.new
              shardbriefinfo_tmp.deserialize(i)
              @Shards << shardbriefinfo_tmp
            end
          end
          @Vip6 = params['Vip6']
          @Cpu = params['Cpu']
          @Qps = params['Qps']
          @DbEngine = params['DbEngine']
          @Ipv6Flag = params['Ipv6Flag']
          @WanVipv6 = params['WanVipv6']
          @WanStatusIpv6 = params['WanStatusIpv6']
          @WanPortIpv6 = params['WanPortIpv6']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @ResourceTags << resourcetag_tmp
            end
          end
          @DcnFlag = params['DcnFlag']
          @DcnStatus = params['DcnStatus']
          @DcnDstNum = params['DcnDstNum']
          @InstanceType = params['InstanceType']
          @IsMaxUserConnectionsSupported = params['IsMaxUserConnectionsSupported']
          @DbVersionId = params['DbVersionId']
          @EncryptStatus = params['EncryptStatus']
          @ExclusterType = params['ExclusterType']
          @RsAccessStrategy = params['RsAccessStrategy']
          unless params['ReservedNetResources'].nil?
            @ReservedNetResources = []
            params['ReservedNetResources'].each do |i|
              reservednetresource_tmp = ReservedNetResource.new
              reservednetresource_tmp.deserialize(i)
              @ReservedNetResources << reservednetresource_tmp
            end
          end
          @IsPhysicalReplicationSupported = params['IsPhysicalReplicationSupported']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDCDBInstanceNodeInfo请求参数结构体
      class DescribeDCDBInstanceNodeInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Limit: 单次最多返回多少条，取值范围为(0-100]，默认为100
        # @type Limit: Integer
        # @param Offset: 返回数据的偏移值，默认为0
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

      # DescribeDCDBInstanceNodeInfo返回参数结构体
      class DescribeDCDBInstanceNodeInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 节点总个数
        # @type TotalCount: Integer
        # @param NodesInfo: 节点信息
        # @type NodesInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :NodesInfo, :RequestId

        def initialize(totalcount=nil, nodesinfo=nil, requestid=nil)
          @TotalCount = totalcount
          @NodesInfo = nodesinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['NodesInfo'].nil?
            @NodesInfo = []
            params['NodesInfo'].each do |i|
              briefnodeinfo_tmp = BriefNodeInfo.new
              briefnodeinfo_tmp.deserialize(i)
              @NodesInfo << briefnodeinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDCDBInstances请求参数结构体
      class DescribeDCDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 按照一个或者多个实例 ID 查询。实例 ID 形如：dcdbt-2t4cf98d
        # @type InstanceIds: Array
        # @param SearchName: 搜索的字段名，当前支持的值有：instancename、vip、all。传 instancename 表示按实例名进行搜索；传 vip 表示按内网IP进行搜索；传 all 将会按实例ID、实例名和内网IP进行搜索。
        # @type SearchName: String
        # @param SearchKey: 搜索的关键字，支持模糊搜索。多个关键字使用换行符（'\n'）分割。
        # @type SearchKey: String
        # @param ProjectIds: 按项目 ID 查询
        # @type ProjectIds: Array
        # @param IsFilterVpc: 是否根据 VPC 网络来搜索
        # @type IsFilterVpc: Boolean
        # @param VpcId: 私有网络 ID， IsFilterVpc 为 1 时有效
        # @type VpcId: String
        # @param SubnetId: 私有网络的子网 ID， IsFilterVpc 为 1 时有效
        # @type SubnetId: String
        # @param OrderBy: 排序字段， projectId， createtime， instancename 三者之一
        # @type OrderBy: String
        # @param OrderByType: 排序类型， desc 或者 asc
        # @type OrderByType: String
        # @param Offset: 偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 10，最大值为 100。
        # @type Limit: Integer
        # @param ExclusterType: 1非独享集群，2独享集群， 0全部
        # @type ExclusterType: Integer
        # @param IsFilterExcluster: 标识是否使用ExclusterType字段, false不使用，true使用
        # @type IsFilterExcluster: Boolean
        # @param ExclusterIds: 独享集群ID
        # @type ExclusterIds: Array
        # @param TagKeys: 按标签key查询
        # @type TagKeys: Array
        # @param FilterInstanceType: 实例类型过滤，1-独享实例，2-主实例，3-灾备实例，多个按逗号分隔
        # @type FilterInstanceType: String
        # @param Status: 按实例状态筛选
        # @type Status: Array
        # @param ExcludeStatus: 排除实例状态
        # @type ExcludeStatus: Array

        attr_accessor :InstanceIds, :SearchName, :SearchKey, :ProjectIds, :IsFilterVpc, :VpcId, :SubnetId, :OrderBy, :OrderByType, :Offset, :Limit, :ExclusterType, :IsFilterExcluster, :ExclusterIds, :TagKeys, :FilterInstanceType, :Status, :ExcludeStatus

        def initialize(instanceids=nil, searchname=nil, searchkey=nil, projectids=nil, isfiltervpc=nil, vpcid=nil, subnetid=nil, orderby=nil, orderbytype=nil, offset=nil, limit=nil, exclustertype=nil, isfilterexcluster=nil, exclusterids=nil, tagkeys=nil, filterinstancetype=nil, status=nil, excludestatus=nil)
          @InstanceIds = instanceids
          @SearchName = searchname
          @SearchKey = searchkey
          @ProjectIds = projectids
          @IsFilterVpc = isfiltervpc
          @VpcId = vpcid
          @SubnetId = subnetid
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Offset = offset
          @Limit = limit
          @ExclusterType = exclustertype
          @IsFilterExcluster = isfilterexcluster
          @ExclusterIds = exclusterids
          @TagKeys = tagkeys
          @FilterInstanceType = filterinstancetype
          @Status = status
          @ExcludeStatus = excludestatus
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @SearchName = params['SearchName']
          @SearchKey = params['SearchKey']
          @ProjectIds = params['ProjectIds']
          @IsFilterVpc = params['IsFilterVpc']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ExclusterType = params['ExclusterType']
          @IsFilterExcluster = params['IsFilterExcluster']
          @ExclusterIds = params['ExclusterIds']
          @TagKeys = params['TagKeys']
          @FilterInstanceType = params['FilterInstanceType']
          @Status = params['Status']
          @ExcludeStatus = params['ExcludeStatus']
        end
      end

      # DescribeDCDBInstances返回参数结构体
      class DescribeDCDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量
        # @type TotalCount: Integer
        # @param Instances: 实例详细信息列表
        # @type Instances: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Instances, :RequestId

        def initialize(totalcount=nil, instances=nil, requestid=nil)
          @TotalCount = totalcount
          @Instances = instances
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              dcdbinstanceinfo_tmp = DCDBInstanceInfo.new
              dcdbinstanceinfo_tmp.deserialize(i)
              @Instances << dcdbinstanceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDCDBPrice请求参数结构体
      class DescribeDCDBPriceRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 欲新购实例的可用区ID。
        # @type Zone: String
        # @param Count: 欲购买实例的数量，目前支持购买1-10个实例
        # @type Count: Integer
        # @param Period: 欲购买的时长，单位：月。
        # @type Period: Integer
        # @param ShardNodeCount: 单个分片节点个数大小，可以通过 DescribeShardSpec
        #  查询实例规格获得。
        # @type ShardNodeCount: Integer
        # @param ShardMemory: 分片内存大小，单位：GB，可以通过 DescribeShardSpec
        #  查询实例规格获得。
        # @type ShardMemory: Integer
        # @param ShardStorage: 分片存储空间大小，单位：GB，可以通过 DescribeShardSpec
        #  查询实例规格获得。
        # @type ShardStorage: Integer
        # @param ShardCount: 实例分片个数，可选范围2-8，可以通过升级实例进行新增分片到最多64个分片。
        # @type ShardCount: Integer
        # @param Paymode: 付费类型。postpaid：按量付费   prepaid：预付费
        # @type Paymode: String
        # @param AmountUnit: 价格金额单位，不传默认单位为分，取值：
        # * pent：分
        # * microPent：微分
        # @type AmountUnit: String

        attr_accessor :Zone, :Count, :Period, :ShardNodeCount, :ShardMemory, :ShardStorage, :ShardCount, :Paymode, :AmountUnit

        def initialize(zone=nil, count=nil, period=nil, shardnodecount=nil, shardmemory=nil, shardstorage=nil, shardcount=nil, paymode=nil, amountunit=nil)
          @Zone = zone
          @Count = count
          @Period = period
          @ShardNodeCount = shardnodecount
          @ShardMemory = shardmemory
          @ShardStorage = shardstorage
          @ShardCount = shardcount
          @Paymode = paymode
          @AmountUnit = amountunit
        end

        def deserialize(params)
          @Zone = params['Zone']
          @Count = params['Count']
          @Period = params['Period']
          @ShardNodeCount = params['ShardNodeCount']
          @ShardMemory = params['ShardMemory']
          @ShardStorage = params['ShardStorage']
          @ShardCount = params['ShardCount']
          @Paymode = params['Paymode']
          @AmountUnit = params['AmountUnit']
        end
      end

      # DescribeDCDBPrice返回参数结构体
      class DescribeDCDBPriceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 原价
        # * 单位：默认为分，若请求参数带有AmountUnit，参考AmountUnit描述
        # * 币种：国内站为人民币，国际站为美元
        # @type OriginalPrice: Integer
        # @param Price: 实际价格，受折扣等影响，可能和原价不同
        # * 单位：默认为分，若请求参数带有AmountUnit，参考AmountUnit描述
        # * 币种：国内站人民币，国际站美元
        # @type Price: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalPrice, :Price, :RequestId

        def initialize(originalprice=nil, price=nil, requestid=nil)
          @OriginalPrice = originalprice
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalPrice = params['OriginalPrice']
          @Price = params['Price']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDCDBRenewalPrice请求参数结构体
      class DescribeDCDBRenewalPriceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待续费的实例ID。形如：dcdbt-ow728lmc，可以通过 DescribeDCDBInstances 查询实例详情获得。
        # @type InstanceId: String
        # @param Period: 续费时长，单位：月。不传则默认为1个月。
        # @type Period: Integer
        # @param AmountUnit: 价格金额单位，不传默认单位为分，取值：
        # * pent：分
        # * microPent：微分
        # @type AmountUnit: String

        attr_accessor :InstanceId, :Period, :AmountUnit

        def initialize(instanceid=nil, period=nil, amountunit=nil)
          @InstanceId = instanceid
          @Period = period
          @AmountUnit = amountunit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Period = params['Period']
          @AmountUnit = params['AmountUnit']
        end
      end

      # DescribeDCDBRenewalPrice返回参数结构体
      class DescribeDCDBRenewalPriceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 原价
        # * 单位：默认为分，若请求参数带有AmountUnit，参考AmountUnit描述
        # * 币种：国内站为人民币，国际站为美元
        # @type OriginalPrice: Integer
        # @param Price: 实际价格，受折扣等影响，可能和原价不同
        # * 单位：默认为分，若请求参数带有AmountUnit，参考AmountUnit描述
        # * 币种：国内站人民币，国际站美元
        # @type Price: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalPrice, :Price, :RequestId

        def initialize(originalprice=nil, price=nil, requestid=nil)
          @OriginalPrice = originalprice
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalPrice = params['OriginalPrice']
          @Price = params['Price']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDCDBSaleInfo请求参数结构体
      class DescribeDCDBSaleInfoRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDCDBSaleInfo返回参数结构体
      class DescribeDCDBSaleInfoResponse < TencentCloud::Common::AbstractModel
        # @param RegionList: 可售卖地域信息列表
        # @type RegionList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegionList, :RequestId

        def initialize(regionlist=nil, requestid=nil)
          @RegionList = regionlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @RegionList << regioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDCDBShards请求参数结构体
      class DescribeDCDBShardsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如：dcdbt-ow728lmc。
        # @type InstanceId: String
        # @param ShardInstanceIds: 分片ID列表。
        # @type ShardInstanceIds: Array
        # @param Offset: 偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param OrderBy: 排序字段， 目前仅支持 createtime
        # @type OrderBy: String
        # @param OrderByType: 排序类型， desc 或者 asc
        # @type OrderByType: String

        attr_accessor :InstanceId, :ShardInstanceIds, :Offset, :Limit, :OrderBy, :OrderByType

        def initialize(instanceid=nil, shardinstanceids=nil, offset=nil, limit=nil, orderby=nil, orderbytype=nil)
          @InstanceId = instanceid
          @ShardInstanceIds = shardinstanceids
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ShardInstanceIds = params['ShardInstanceIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeDCDBShards返回参数结构体
      class DescribeDCDBShardsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的分片数量
        # @type TotalCount: Integer
        # @param Shards: 分片信息列表
        # @type Shards: Array
        # @param DcnFlag: 灾备标志，0-无，1-主实例，2-灾备实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DcnFlag: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Shards, :DcnFlag, :RequestId

        def initialize(totalcount=nil, shards=nil, dcnflag=nil, requestid=nil)
          @TotalCount = totalcount
          @Shards = shards
          @DcnFlag = dcnflag
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Shards'].nil?
            @Shards = []
            params['Shards'].each do |i|
              dcdbshardinfo_tmp = DCDBShardInfo.new
              dcdbshardinfo_tmp.deserialize(i)
              @Shards << dcdbshardinfo_tmp
            end
          end
          @DcnFlag = params['DcnFlag']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDCDBUpgradePrice请求参数结构体
      class DescribeDCDBUpgradePriceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待升级的实例ID。形如：dcdbt-ow728lmc，可以通过 DescribeDCDBInstances 查询实例详情获得。
        # @type InstanceId: String
        # @param UpgradeType: 升级类型，取值范围:
        # <li> ADD: 新增分片 </li>
        #  <li> EXPAND: 升级实例中的已有分片 </li>
        #  <li> SPLIT: 将已有分片中的数据切分到新增分片上</li>
        # @type UpgradeType: String
        # @param AddShardConfig: 新增分片配置，当UpgradeType为ADD时生效。
        # @type AddShardConfig: :class:`Tencentcloud::Dcdb.v20180411.models.AddShardConfig`
        # @param ExpandShardConfig: 扩容分片配置，当UpgradeType为EXPAND时生效。
        # @type ExpandShardConfig: :class:`Tencentcloud::Dcdb.v20180411.models.ExpandShardConfig`
        # @param SplitShardConfig: 切分分片配置，当UpgradeType为SPLIT时生效。
        # @type SplitShardConfig: :class:`Tencentcloud::Dcdb.v20180411.models.SplitShardConfig`
        # @param AmountUnit: 价格金额单位，不传默认单位为分，取值：
        # * pent：分
        # * microPent：微分
        # @type AmountUnit: String

        attr_accessor :InstanceId, :UpgradeType, :AddShardConfig, :ExpandShardConfig, :SplitShardConfig, :AmountUnit

        def initialize(instanceid=nil, upgradetype=nil, addshardconfig=nil, expandshardconfig=nil, splitshardconfig=nil, amountunit=nil)
          @InstanceId = instanceid
          @UpgradeType = upgradetype
          @AddShardConfig = addshardconfig
          @ExpandShardConfig = expandshardconfig
          @SplitShardConfig = splitshardconfig
          @AmountUnit = amountunit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UpgradeType = params['UpgradeType']
          unless params['AddShardConfig'].nil?
            @AddShardConfig = AddShardConfig.new
            @AddShardConfig.deserialize(params['AddShardConfig'])
          end
          unless params['ExpandShardConfig'].nil?
            @ExpandShardConfig = ExpandShardConfig.new
            @ExpandShardConfig.deserialize(params['ExpandShardConfig'])
          end
          unless params['SplitShardConfig'].nil?
            @SplitShardConfig = SplitShardConfig.new
            @SplitShardConfig.deserialize(params['SplitShardConfig'])
          end
          @AmountUnit = params['AmountUnit']
        end
      end

      # DescribeDCDBUpgradePrice返回参数结构体
      class DescribeDCDBUpgradePriceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 原价
        # * 单位：默认为分，若请求参数带有AmountUnit，参考AmountUnit描述
        # * 币种：国内站为人民币，国际站为美元
        # @type OriginalPrice: Integer
        # @param Price: 实际价格，受折扣等影响，可能和原价不同
        # * 单位：默认为分，若请求参数带有AmountUnit，参考AmountUnit描述
        # * 币种：国内站人民币，国际站美元
        # @type Price: Integer
        # @param Formula: 变配明细计算公式
        # @type Formula: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalPrice, :Price, :Formula, :RequestId

        def initialize(originalprice=nil, price=nil, formula=nil, requestid=nil)
          @OriginalPrice = originalprice
          @Price = price
          @Formula = formula
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalPrice = params['OriginalPrice']
          @Price = params['Price']
          @Formula = params['Formula']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabaseObjects请求参数结构体
      class DescribeDatabaseObjectsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：dcdbt-ow7t8lmc。
        # @type InstanceId: String
        # @param DbName: 数据库名称，通过 DescribeDatabases 接口获取。
        # @type DbName: String

        attr_accessor :InstanceId, :DbName

        def initialize(instanceid=nil, dbname=nil)
          @InstanceId = instanceid
          @DbName = dbname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DbName = params['DbName']
        end
      end

      # DescribeDatabaseObjects返回参数结构体
      class DescribeDatabaseObjectsResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 透传入参。
        # @type InstanceId: String
        # @param DbName: 数据库名称。
        # @type DbName: String
        # @param Tables: 表列表。
        # @type Tables: Array
        # @param Views: 视图列表。
        # @type Views: Array
        # @param Procs: 存储过程列表。
        # @type Procs: Array
        # @param Funcs: 函数列表。
        # @type Funcs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :DbName, :Tables, :Views, :Procs, :Funcs, :RequestId

        def initialize(instanceid=nil, dbname=nil, tables=nil, views=nil, procs=nil, funcs=nil, requestid=nil)
          @InstanceId = instanceid
          @DbName = dbname
          @Tables = tables
          @Views = views
          @Procs = procs
          @Funcs = funcs
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DbName = params['DbName']
          unless params['Tables'].nil?
            @Tables = []
            params['Tables'].each do |i|
              databasetable_tmp = DatabaseTable.new
              databasetable_tmp.deserialize(i)
              @Tables << databasetable_tmp
            end
          end
          unless params['Views'].nil?
            @Views = []
            params['Views'].each do |i|
              databaseview_tmp = DatabaseView.new
              databaseview_tmp.deserialize(i)
              @Views << databaseview_tmp
            end
          end
          unless params['Procs'].nil?
            @Procs = []
            params['Procs'].each do |i|
              databaseprocedure_tmp = DatabaseProcedure.new
              databaseprocedure_tmp.deserialize(i)
              @Procs << databaseprocedure_tmp
            end
          end
          unless params['Funcs'].nil?
            @Funcs = []
            params['Funcs'].each do |i|
              databasefunction_tmp = DatabaseFunction.new
              databasefunction_tmp.deserialize(i)
              @Funcs << databasefunction_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabaseTable请求参数结构体
      class DescribeDatabaseTableRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：dcdbt-ow7t8lmc。
        # @type InstanceId: String
        # @param DbName: 数据库名称，通过 DescribeDatabases 接口获取。
        # @type DbName: String
        # @param Table: 表名称，通过 DescribeDatabaseObjects 接口获取。
        # @type Table: String

        attr_accessor :InstanceId, :DbName, :Table

        def initialize(instanceid=nil, dbname=nil, table=nil)
          @InstanceId = instanceid
          @DbName = dbname
          @Table = table
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DbName = params['DbName']
          @Table = params['Table']
        end
      end

      # DescribeDatabaseTable返回参数结构体
      class DescribeDatabaseTableResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例名称。
        # @type InstanceId: String
        # @param DbName: 数据库名称。
        # @type DbName: String
        # @param Table: 表名称。
        # @type Table: String
        # @param Cols: 列信息。
        # @type Cols: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :DbName, :Table, :Cols, :RequestId

        def initialize(instanceid=nil, dbname=nil, table=nil, cols=nil, requestid=nil)
          @InstanceId = instanceid
          @DbName = dbname
          @Table = table
          @Cols = cols
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DbName = params['DbName']
          @Table = params['Table']
          unless params['Cols'].nil?
            @Cols = []
            params['Cols'].each do |i|
              tablecolumn_tmp = TableColumn.new
              tablecolumn_tmp.deserialize(i)
              @Cols << tablecolumn_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabases请求参数结构体
      class DescribeDatabasesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：dcdbt-ow7t8lmc。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDatabases返回参数结构体
      class DescribeDatabasesResponse < TencentCloud::Common::AbstractModel
        # @param Databases: 该实例上的数据库列表。
        # @type Databases: Array
        # @param InstanceId: 透传入参。
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Databases, :InstanceId, :RequestId

        def initialize(databases=nil, instanceid=nil, requestid=nil)
          @Databases = databases
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Databases'].nil?
            @Databases = []
            params['Databases'].each do |i|
              database_tmp = Database.new
              database_tmp.deserialize(i)
              @Databases << database_tmp
            end
          end
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDcnDetail请求参数结构体
      class DescribeDcnDetailRequest < TencentCloud::Common::AbstractModel
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

      # DescribeDcnDetail返回参数结构体
      class DescribeDcnDetailResponse < TencentCloud::Common::AbstractModel
        # @param DcnDetails: DCN同步详情
        # @type DcnDetails: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DcnDetails, :RequestId

        def initialize(dcndetails=nil, requestid=nil)
          @DcnDetails = dcndetails
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DcnDetails'].nil?
            @DcnDetails = []
            params['DcnDetails'].each do |i|
              dcndetailitem_tmp = DcnDetailItem.new
              dcndetailitem_tmp.deserialize(i)
              @DcnDetails << dcndetailitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileDownloadUrl请求参数结构体
      class DescribeFileDownloadUrlRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ShardId: 实例分片ID
        # @type ShardId: String
        # @param FilePath: 不带签名的文件路径
        # @type FilePath: String

        attr_accessor :InstanceId, :ShardId, :FilePath

        def initialize(instanceid=nil, shardid=nil, filepath=nil)
          @InstanceId = instanceid
          @ShardId = shardid
          @FilePath = filepath
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ShardId = params['ShardId']
          @FilePath = params['FilePath']
        end
      end

      # DescribeFileDownloadUrl返回参数结构体
      class DescribeFileDownloadUrlResponse < TencentCloud::Common::AbstractModel
        # @param PreSignedUrl: 带签名的下载连接
        # @type PreSignedUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PreSignedUrl, :RequestId

        def initialize(presignedurl=nil, requestid=nil)
          @PreSignedUrl = presignedurl
          @RequestId = requestid
        end

        def deserialize(params)
          @PreSignedUrl = params['PreSignedUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlow请求参数结构体
      class DescribeFlowRequest < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步请求接口返回的任务流程号。
        # @type FlowId: Integer

        attr_accessor :FlowId

        def initialize(flowid=nil)
          @FlowId = flowid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
        end
      end

      # DescribeFlow返回参数结构体
      class DescribeFlowResponse < TencentCloud::Common::AbstractModel
        # @param Status: 流程状态，0：成功，1：失败，2：运行中
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogFileRetentionPeriod请求参数结构体
      class DescribeLogFileRetentionPeriodRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeLogFileRetentionPeriod返回参数结构体
      class DescribeLogFileRetentionPeriodResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc。
        # @type InstanceId: String
        # @param Days: 日志备份天数
        # @type Days: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Days, :RequestId

        def initialize(instanceid=nil, days=nil, requestid=nil)
          @InstanceId = instanceid
          @Days = days
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Days = params['Days']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrders请求参数结构体
      class DescribeOrdersRequest < TencentCloud::Common::AbstractModel
        # @param DealNames: 待查询的长订单号列表，创建实例、续费实例、扩容实例接口返回。
        # @type DealNames: Array

        attr_accessor :DealNames

        def initialize(dealnames=nil)
          @DealNames = dealnames
        end

        def deserialize(params)
          @DealNames = params['DealNames']
        end
      end

      # DescribeOrders返回参数结构体
      class DescribeOrdersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的订单数量。
        # @type TotalCount: Integer
        # @param Deals: 订单信息列表。
        # @type Deals: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Deals, :RequestId

        def initialize(totalcount=nil, deals=nil, requestid=nil)
          @TotalCount = totalcount
          @Deals = deals
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Deals'].nil?
            @Deals = []
            params['Deals'].each do |i|
              deal_tmp = Deal.new
              deal_tmp.deserialize(i)
              @Deals << deal_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjectSecurityGroups请求参数结构体
      class DescribeProjectSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 数据库引擎名称，本接口取值：dcdb。
        # @type Product: String
        # @param ProjectId: 项目ID。
        # @type ProjectId: Integer

        attr_accessor :Product, :ProjectId

        def initialize(product=nil, projectid=nil)
          @Product = product
          @ProjectId = projectid
        end

        def deserialize(params)
          @Product = params['Product']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeProjectSecurityGroups返回参数结构体
      class DescribeProjectSecurityGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Groups: 安全组详情。
        # @type Groups: Array
        # @param Total: 安全组个数。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Groups, :Total, :RequestId

        def initialize(groups=nil, total=nil, requestid=nil)
          @Groups = groups
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              securitygroup_tmp = SecurityGroup.new
              securitygroup_tmp.deserialize(i)
              @Groups << securitygroup_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjects请求参数结构体
      class DescribeProjectsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeProjects返回参数结构体
      class DescribeProjectsResponse < TencentCloud::Common::AbstractModel
        # @param Projects: 项目列表
        # @type Projects: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Projects, :RequestId

        def initialize(projects=nil, requestid=nil)
          @Projects = projects
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Projects'].nil?
            @Projects = []
            params['Projects'].each do |i|
              project_tmp = Project.new
              project_tmp.deserialize(i)
              @Projects << project_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeShardSpec请求参数结构体
      class DescribeShardSpecRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeShardSpec返回参数结构体
      class DescribeShardSpecResponse < TencentCloud::Common::AbstractModel
        # @param SpecConfig: 按机型分类的可售卖规格列表
        # @type SpecConfig: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SpecConfig, :RequestId

        def initialize(specconfig=nil, requestid=nil)
          @SpecConfig = specconfig
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SpecConfig'].nil?
            @SpecConfig = []
            params['SpecConfig'].each do |i|
              specconfig_tmp = SpecConfig.new
              specconfig_tmp.deserialize(i)
              @SpecConfig << specconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSqlLogs请求参数结构体
      class DescribeSqlLogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：dcdbt-ow728lmc，可以通过 DescribeDCDBInstances 查询实例详情获得。
        # @type InstanceId: String
        # @param Offset: SQL日志偏移。
        # @type Offset: Integer
        # @param Limit: 拉取数量（0-10000，为0时拉取总数信息）。
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

      # DescribeSqlLogs返回参数结构体
      class DescribeSqlLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 当前消息队列中的sql日志条目数。
        # @type TotalCount: Integer
        # @param StartOffset: 消息队列中的sql日志起始偏移。
        # @type StartOffset: Integer
        # @param EndOffset: 消息队列中的sql日志结束偏移。
        # @type EndOffset: Integer
        # @param Offset: 返回的第一条sql日志的偏移。
        # @type Offset: Integer
        # @param Count: 返回的sql日志数量。
        # @type Count: Integer
        # @param SqlItems: Sql日志列表。
        # @type SqlItems: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :StartOffset, :EndOffset, :Offset, :Count, :SqlItems, :RequestId

        def initialize(totalcount=nil, startoffset=nil, endoffset=nil, offset=nil, count=nil, sqlitems=nil, requestid=nil)
          @TotalCount = totalcount
          @StartOffset = startoffset
          @EndOffset = endoffset
          @Offset = offset
          @Count = count
          @SqlItems = sqlitems
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @StartOffset = params['StartOffset']
          @EndOffset = params['EndOffset']
          @Offset = params['Offset']
          @Count = params['Count']
          unless params['SqlItems'].nil?
            @SqlItems = []
            params['SqlItems'].each do |i|
              sqllogitem_tmp = SqlLogItem.new
              sqllogitem_tmp.deserialize(i)
              @SqlItems << sqllogitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserTasks请求参数结构体
      class DescribeUserTasksRequest < TencentCloud::Common::AbstractModel
        # @param Statuses: 任务的状态列表。0-任务启动中；1-任务运行中；2-任务成功；3-任务失败
        # @type Statuses: Array
        # @param InstanceIds: 实例ID列表
        # @type InstanceIds: Array
        # @param FlowTypes: 任务类型列表，当前支持的任务类型有：0-回档任务；1-创建实例任务；2-扩容任务；3-迁移任务；4-删除实例任务；5-重启任务
        # @type FlowTypes: Array
        # @param StartTime: 任务的创建时间
        # @type StartTime: String
        # @param EndTime: 任务的结束时间
        # @type EndTime: String
        # @param UTaskIds: 任务ID的数组
        # @type UTaskIds: Array
        # @param Limit: 每次最多返回多少条任务，取值范围为(0,100]，不传的话默认值为20
        # @type Limit: Integer
        # @param Offset: 返回任务默认是按照创建时间降序排列，从偏移值Offset处开始返回
        # @type Offset: Integer

        attr_accessor :Statuses, :InstanceIds, :FlowTypes, :StartTime, :EndTime, :UTaskIds, :Limit, :Offset

        def initialize(statuses=nil, instanceids=nil, flowtypes=nil, starttime=nil, endtime=nil, utaskids=nil, limit=nil, offset=nil)
          @Statuses = statuses
          @InstanceIds = instanceids
          @FlowTypes = flowtypes
          @StartTime = starttime
          @EndTime = endtime
          @UTaskIds = utaskids
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Statuses = params['Statuses']
          @InstanceIds = params['InstanceIds']
          @FlowTypes = params['FlowTypes']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @UTaskIds = params['UTaskIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeUserTasks返回参数结构体
      class DescribeUserTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 任务总数
        # @type TotalCount: Integer
        # @param FlowSet: 任务列表
        # @type FlowSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :FlowSet, :RequestId

        def initialize(totalcount=nil, flowset=nil, requestid=nil)
          @TotalCount = totalcount
          @FlowSet = flowset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['FlowSet'].nil?
            @FlowSet = []
            params['FlowSet'].each do |i|
              usertaskinfo_tmp = UserTaskInfo.new
              usertaskinfo_tmp.deserialize(i)
              @FlowSet << usertaskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DestroyDCDBInstance请求参数结构体
      class DestroyDCDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：tdsqlshard-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DestroyDCDBInstance返回参数结构体
      class DestroyDCDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，与入参InstanceId一致。
        # @type InstanceId: String
        # @param FlowId: 异步任务的请求 ID，可使用此 ID [查询异步任务的执行结果](https://cloud.tencent.com/document/product/557/56485)。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :FlowId, :RequestId

        def initialize(instanceid=nil, flowid=nil, requestid=nil)
          @InstanceId = instanceid
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # DestroyHourDCDBInstance请求参数结构体
      class DestroyHourDCDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：tdsqlshard-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DestroyHourDCDBInstance返回参数结构体
      class DestroyHourDCDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务的请求 ID，可使用此 ID [查询异步任务的执行结果](https://cloud.tencent.com/document/product/557/56485)。
        # @type FlowId: Integer
        # @param InstanceId: 实例 ID，与入参InstanceId一致。
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :InstanceId, :RequestId

        def initialize(flowid=nil, instanceid=nil, requestid=nil)
          @FlowId = flowid
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # DisassociateSecurityGroups请求参数结构体
      class DisassociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 数据库引擎名称，本接口取值：dcdb。
        # @type Product: String
        # @param SecurityGroupId: 安全组Id。
        # @type SecurityGroupId: String
        # @param InstanceIds: 实例ID列表，一个或者多个实例Id组成的数组。
        # @type InstanceIds: Array

        attr_accessor :Product, :SecurityGroupId, :InstanceIds

        def initialize(product=nil, securitygroupid=nil, instanceids=nil)
          @Product = product
          @SecurityGroupId = securitygroupid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @Product = params['Product']
          @SecurityGroupId = params['SecurityGroupId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # DisassociateSecurityGroups返回参数结构体
      class DisassociateSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 升级实例 -- 扩容分片类型
      class ExpandShardConfig < TencentCloud::Common::AbstractModel
        # @param ShardInstanceIds: 分片ID数组
        # @type ShardInstanceIds: Array
        # @param ShardMemory: 分片内存大小，单位 GB
        # @type ShardMemory: Integer
        # @param ShardStorage: 分片存储大小，单位 GB
        # @type ShardStorage: Integer
        # @param ShardNodeCount: 分片节点数
        # @type ShardNodeCount: Integer

        attr_accessor :ShardInstanceIds, :ShardMemory, :ShardStorage, :ShardNodeCount

        def initialize(shardinstanceids=nil, shardmemory=nil, shardstorage=nil, shardnodecount=nil)
          @ShardInstanceIds = shardinstanceids
          @ShardMemory = shardmemory
          @ShardStorage = shardstorage
          @ShardNodeCount = shardnodecount
        end

        def deserialize(params)
          @ShardInstanceIds = params['ShardInstanceIds']
          @ShardMemory = params['ShardMemory']
          @ShardStorage = params['ShardStorage']
          @ShardNodeCount = params['ShardNodeCount']
        end
      end

      # FlushBinlog请求参数结构体
      class FlushBinlogRequest < TencentCloud::Common::AbstractModel
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

      # FlushBinlog返回参数结构体
      class FlushBinlogResponse < TencentCloud::Common::AbstractModel
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

      # GrantAccountPrivileges请求参数结构体
      class GrantAccountPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：dcdbt-ow728lmc。
        # @type InstanceId: String
        # @param UserName: 登录用户名。
        # @type UserName: String
        # @param Host: 用户允许的访问 host，用户名+host唯一确定一个账号。
        # @type Host: String
        # @param DbName: 数据库名。如果为 \*，表示查询全局权限（即 \*.\*），此时忽略 Type 和 Object 参数
        # @type DbName: String
        # @param Privileges: 全局权限： SELECT，INSERT，UPDATE，DELETE，CREATE，DROP，REFERENCES，INDEX，ALTER，CREATE TEMPORARY TABLES，LOCK TABLES，EXECUTE，CREATE VIEW，SHOW VIEW，CREATE ROUTINE，ALTER ROUTINE，EVENT，TRIGGER，SHOW DATABASES，REPLICATION CLIENT，REPLICATION SLAVE
        # 库权限： SELECT，INSERT，UPDATE，DELETE，CREATE，DROP，REFERENCES，INDEX，ALTER，CREATE TEMPORARY TABLES，LOCK TABLES，EXECUTE，CREATE VIEW，SHOW VIEW，CREATE ROUTINE，ALTER ROUTINE，EVENT，TRIGGER
        # 表权限： SELECT，INSERT，UPDATE，DELETE，CREATE，DROP，REFERENCES，INDEX，ALTER，CREATE VIEW，SHOW VIEW，TRIGGER
        # 字段权限： INSERT，REFERENCES，SELECT，UPDATE
        # @type Privileges: Array
        # @param Type: 类型,可以填入 table 和 \*。当 DbName 为具体数据库名，Type为 \* 时，表示设置该数据库权限（即db.\*），此时忽略 Object 参数
        # @type Type: String
        # @param Object: 具体的 Type 的名称，例如 Type 为 table 时就是具体的表名。DbName 和 Type 都为具体名称，则 Object 表示具体对象名，不能为 \* 或者为空
        # @type Object: String
        # @param ColName: 当 Type=table 时，ColName 为 \* 表示对表授权，如果为具体字段名，表示对字段授权
        # @type ColName: String

        attr_accessor :InstanceId, :UserName, :Host, :DbName, :Privileges, :Type, :Object, :ColName

        def initialize(instanceid=nil, username=nil, host=nil, dbname=nil, privileges=nil, type=nil, object=nil, colname=nil)
          @InstanceId = instanceid
          @UserName = username
          @Host = host
          @DbName = dbname
          @Privileges = privileges
          @Type = type
          @Object = object
          @ColName = colname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @Host = params['Host']
          @DbName = params['DbName']
          @Privileges = params['Privileges']
          @Type = params['Type']
          @Object = params['Object']
          @ColName = params['ColName']
        end
      end

      # GrantAccountPrivileges返回参数结构体
      class GrantAccountPrivilegesResponse < TencentCloud::Common::AbstractModel
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

      # InitDCDBInstances请求参数结构体
      class InitDCDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 待初始化的实例ID列表，形如：dcdbt-ow728lmc，可以通过 DescribeDCDBInstances 查询实例详情获得。
        # @type InstanceIds: Array
        # @param Params: 参数列表。本接口的可选值为：character_set_server（字符集，必传），lower_case_table_names（表名大小写敏感，必传，0 - 敏感；1-不敏感），innodb_page_size（innodb数据页，默认16K），sync_mode（同步模式：0 - 异步； 1 - 强同步；2 - 强同步可退化。默认为强同步）。
        # @type Params: Array

        attr_accessor :InstanceIds, :Params

        def initialize(instanceids=nil, params=nil)
          @InstanceIds = instanceids
          @Params = params
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              dbparamvalue_tmp = DBParamValue.new
              dbparamvalue_tmp.deserialize(i)
              @Params << dbparamvalue_tmp
            end
          end
        end
      end

      # InitDCDBInstances返回参数结构体
      class InitDCDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param FlowIds: 异步任务ID，可通过 DescribeFlow 查询任务状态。
        # @type FlowIds: Array
        # @param InstanceIds: 透传入参。
        # @type InstanceIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowIds, :InstanceIds, :RequestId

        def initialize(flowids=nil, instanceids=nil, requestid=nil)
          @FlowIds = flowids
          @InstanceIds = instanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowIds = params['FlowIds']
          @InstanceIds = params['InstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # 实例备份文件信息
      class InstanceBackupFileItem < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param InstanceStatus: 实例状态
        # @type InstanceStatus: Integer
        # @param ShardId: 分片ID
        # @type ShardId: String
        # @param FilePath: 文件路径
        # @type FilePath: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileSize: 文件大小
        # @type FileSize: Integer
        # @param BackupType: 备份类型，Data:数据备份，Binlog:Binlog备份，Errlog:错误日志，Slowlog:慢日志
        # @type BackupType: String
        # @param ManualBackup: 手动备份，0:否，1:是
        # @type ManualBackup: Integer
        # @param StartTime: 备份开始时间
        # @type StartTime: String
        # @param EndTime: 备份结束时间
        # @type EndTime: String

        attr_accessor :InstanceId, :InstanceName, :InstanceStatus, :ShardId, :FilePath, :FileName, :FileSize, :BackupType, :ManualBackup, :StartTime, :EndTime

        def initialize(instanceid=nil, instancename=nil, instancestatus=nil, shardid=nil, filepath=nil, filename=nil, filesize=nil, backuptype=nil, manualbackup=nil, starttime=nil, endtime=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceStatus = instancestatus
          @ShardId = shardid
          @FilePath = filepath
          @FileName = filename
          @FileSize = filesize
          @BackupType = backuptype
          @ManualBackup = manualbackup
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceStatus = params['InstanceStatus']
          @ShardId = params['ShardId']
          @FilePath = params['FilePath']
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @BackupType = params['BackupType']
          @ManualBackup = params['ManualBackup']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # IsolateDCDBInstance请求参数结构体
      class IsolateDCDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID，格式如：tdsqlshard-avw0207d，与云数据库控制台页面中显示的实例 ID 相同，可使用 查询实例列表 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # IsolateDCDBInstance返回参数结构体
      class IsolateDCDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param SuccessInstanceIds: 隔离成功实例ID列表。
        # @type SuccessInstanceIds: Array
        # @param FailedInstanceIds: 隔离失败实例ID列表。
        # @type FailedInstanceIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessInstanceIds, :FailedInstanceIds, :RequestId

        def initialize(successinstanceids=nil, failedinstanceids=nil, requestid=nil)
          @SuccessInstanceIds = successinstanceids
          @FailedInstanceIds = failedinstanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessInstanceIds = params['SuccessInstanceIds']
          @FailedInstanceIds = params['FailedInstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # IsolateDedicatedDBInstance请求参数结构体
      class IsolateDedicatedDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 Id，形如：dcdbt-ow728lmc。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # IsolateDedicatedDBInstance返回参数结构体
      class IsolateDedicatedDBInstanceResponse < TencentCloud::Common::AbstractModel
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

      # IsolateHourDCDBInstance请求参数结构体
      class IsolateHourDCDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 待升级的实例ID列表。形如：["dcdbt-ow728lmc"]，可以通过 DescribeDCDBInstances 查询实例详情获得。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # IsolateHourDCDBInstance返回参数结构体
      class IsolateHourDCDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param SuccessInstanceIds: 隔离成功的实例id列表
        # @type SuccessInstanceIds: Array
        # @param FailedInstanceIds: 隔离失败的实例id列表
        # @type FailedInstanceIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessInstanceIds, :FailedInstanceIds, :RequestId

        def initialize(successinstanceids=nil, failedinstanceids=nil, requestid=nil)
          @SuccessInstanceIds = successinstanceids
          @FailedInstanceIds = failedinstanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessInstanceIds = params['SuccessInstanceIds']
          @FailedInstanceIds = params['FailedInstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # KillSession请求参数结构体
      class KillSessionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param SessionId: 会话ID列表
        # @type SessionId: Array
        # @param ShardId: 分片ID，与ShardSerialId设置一个
        # @type ShardId: String
        # @param ShardSerialId: 分片序列ID，与ShardId设置一个
        # @type ShardSerialId: String

        attr_accessor :InstanceId, :SessionId, :ShardId, :ShardSerialId

        def initialize(instanceid=nil, sessionid=nil, shardid=nil, shardserialid=nil)
          @InstanceId = instanceid
          @SessionId = sessionid
          @ShardId = shardid
          @ShardSerialId = shardserialid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SessionId = params['SessionId']
          @ShardId = params['ShardId']
          @ShardSerialId = params['ShardSerialId']
        end
      end

      # KillSession返回参数结构体
      class KillSessionResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 拉取的日志信息
      class LogFileInfo < TencentCloud::Common::AbstractModel
        # @param Mtime: Log最后修改时间
        # @type Mtime: Integer
        # @param Length: 文件长度
        # @type Length: Integer
        # @param Uri: 下载Log时用到的统一资源标识符
        # @type Uri: String
        # @param FileName: 文件名
        # @type FileName: String

        attr_accessor :Mtime, :Length, :Uri, :FileName

        def initialize(mtime=nil, length=nil, uri=nil, filename=nil)
          @Mtime = mtime
          @Length = length
          @Uri = uri
          @FileName = filename
        end

        def deserialize(params)
          @Mtime = params['Mtime']
          @Length = params['Length']
          @Uri = params['Uri']
          @FileName = params['FileName']
        end
      end

      # ModifyAccountConfig请求参数结构体
      class ModifyAccountConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：tdsqlshard-kpkvq5oj，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param UserName: 账号的名称
        # @type UserName: String
        # @param Host: 账号的域名
        # @type Host: String
        # @param Configs: 配置列表，每一个元素是Config和Value的组合
        # @type Configs: Array

        attr_accessor :InstanceId, :UserName, :Host, :Configs

        def initialize(instanceid=nil, username=nil, host=nil, configs=nil)
          @InstanceId = instanceid
          @UserName = username
          @Host = host
          @Configs = configs
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @Host = params['Host']
          unless params['Configs'].nil?
            @Configs = []
            params['Configs'].each do |i|
              configvalue_tmp = ConfigValue.new
              configvalue_tmp.deserialize(i)
              @Configs << configvalue_tmp
            end
          end
        end
      end

      # ModifyAccountConfig返回参数结构体
      class ModifyAccountConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAccountDescription请求参数结构体
      class ModifyAccountDescriptionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：dcdbt-ow728lmc。
        # @type InstanceId: String
        # @param UserName: 登录用户名。
        # @type UserName: String
        # @param Host: 用户允许的访问 host，用户名+host唯一确定一个账号。
        # @type Host: String
        # @param Description: 新的账号备注，长度 0~256。
        # @type Description: String

        attr_accessor :InstanceId, :UserName, :Host, :Description

        def initialize(instanceid=nil, username=nil, host=nil, description=nil)
          @InstanceId = instanceid
          @UserName = username
          @Host = host
          @Description = description
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @Host = params['Host']
          @Description = params['Description']
        end
      end

      # ModifyAccountDescription返回参数结构体
      class ModifyAccountDescriptionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAccountPrivileges请求参数结构体
      class ModifyAccountPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：tdsql-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param Accounts: 数据库的账号，包括用户名和域名。
        # @type Accounts: Array
        # @param GlobalPrivileges: 全局权限。其中，GlobalPrivileges 中权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE", "PROCESS", "DROP","REFERENCES","INDEX","ALTER","SHOW DATABASES","CREATE TEMPORARY TABLES","LOCK TABLES","EXECUTE","CREATE VIEW","SHOW VIEW","CREATE ROUTINE","ALTER ROUTINE","EVENT","TRIGGER"。
        # 注意，不传该参数表示保留现有权限，如需清除，该字段传空数组。
        # @type GlobalPrivileges: Array
        # @param DatabasePrivileges: 数据库的权限。Privileges 权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE", "DROP","REFERENCES","INDEX","ALTER","CREATE TEMPORARY TABLES","LOCK TABLES","EXECUTE","CREATE VIEW","SHOW VIEW","CREATE ROUTINE","ALTER ROUTINE","EVENT","TRIGGER"。
        # 注意，不传该参数表示保留现有权限，如需清除，请在复杂类型Privileges字段传空数组。
        # @type DatabasePrivileges: Array
        # @param TablePrivileges: 数据库中表的权限。Privileges 权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE", "DROP","REFERENCES","INDEX","ALTER","CREATE VIEW","SHOW VIEW", "TRIGGER"。
        # 注意，不传该参数表示保留现有权限，如需清除，请在复杂类型Privileges字段传空数组。
        # @type TablePrivileges: Array
        # @param ColumnPrivileges: 数据库表中列的权限。Privileges 权限的可选值为："SELECT","INSERT","UPDATE","REFERENCES"。
        # 注意，不传该参数表示保留现有权限，如需清除，请在复杂类型Privileges字段传空数组。
        # @type ColumnPrivileges: Array
        # @param ViewPrivileges: 数据库视图的权限。Privileges 权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE", "DROP","REFERENCES","INDEX","ALTER","CREATE VIEW","SHOW VIEW", "TRIGGER"。
        # 注意，不传该参数表示保留现有权限，如需清除，请在复杂类型Privileges字段传空数组。
        # @type ViewPrivileges: Array

        attr_accessor :InstanceId, :Accounts, :GlobalPrivileges, :DatabasePrivileges, :TablePrivileges, :ColumnPrivileges, :ViewPrivileges

        def initialize(instanceid=nil, accounts=nil, globalprivileges=nil, databaseprivileges=nil, tableprivileges=nil, columnprivileges=nil, viewprivileges=nil)
          @InstanceId = instanceid
          @Accounts = accounts
          @GlobalPrivileges = globalprivileges
          @DatabasePrivileges = databaseprivileges
          @TablePrivileges = tableprivileges
          @ColumnPrivileges = columnprivileges
          @ViewPrivileges = viewprivileges
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              account_tmp = Account.new
              account_tmp.deserialize(i)
              @Accounts << account_tmp
            end
          end
          @GlobalPrivileges = params['GlobalPrivileges']
          unless params['DatabasePrivileges'].nil?
            @DatabasePrivileges = []
            params['DatabasePrivileges'].each do |i|
              databaseprivilege_tmp = DatabasePrivilege.new
              databaseprivilege_tmp.deserialize(i)
              @DatabasePrivileges << databaseprivilege_tmp
            end
          end
          unless params['TablePrivileges'].nil?
            @TablePrivileges = []
            params['TablePrivileges'].each do |i|
              tableprivilege_tmp = TablePrivilege.new
              tableprivilege_tmp.deserialize(i)
              @TablePrivileges << tableprivilege_tmp
            end
          end
          unless params['ColumnPrivileges'].nil?
            @ColumnPrivileges = []
            params['ColumnPrivileges'].each do |i|
              columnprivilege_tmp = ColumnPrivilege.new
              columnprivilege_tmp.deserialize(i)
              @ColumnPrivileges << columnprivilege_tmp
            end
          end
          unless params['ViewPrivileges'].nil?
            @ViewPrivileges = []
            params['ViewPrivileges'].each do |i|
              viewprivileges_tmp = ViewPrivileges.new
              viewprivileges_tmp.deserialize(i)
              @ViewPrivileges << viewprivileges_tmp
            end
          end
        end
      end

      # ModifyAccountPrivileges返回参数结构体
      class ModifyAccountPrivilegesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务的请求 ID，可使用此 ID [查询异步任务的执行结果](https://cloud.tencent.com/document/product/237/16177)。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDBEncryptAttributes请求参数结构体
      class ModifyDBEncryptAttributesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id，形如：tdsqlshard-ow728lmc。
        # @type InstanceId: String
        # @param EncryptEnabled: 是否启用数据加密，开启后暂不支持关闭。本接口的可选值为：1-开启数据加密。
        # @type EncryptEnabled: Integer

        attr_accessor :InstanceId, :EncryptEnabled

        def initialize(instanceid=nil, encryptenabled=nil)
          @InstanceId = instanceid
          @EncryptEnabled = encryptenabled
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @EncryptEnabled = params['EncryptEnabled']
        end
      end

      # ModifyDBEncryptAttributes返回参数结构体
      class ModifyDBEncryptAttributesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceName请求参数结构体
      class ModifyDBInstanceNameRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如tdsql-hdaprz0v
        # @type InstanceId: String
        # @param InstanceName: 实例名称
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

      # ModifyDBInstanceName返回参数结构体
      class ModifyDBInstanceNameResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
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

      # ModifyDBInstanceSecurityGroups请求参数结构体
      class ModifyDBInstanceSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Product: 数据库引擎名称，本接口取值：dcdb。
        # @type Product: String
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param SecurityGroupIds: 要修改的安全组 ID 列表，一个或者多个安全组 ID 组成的数组。
        # @type SecurityGroupIds: Array

        attr_accessor :Product, :InstanceId, :SecurityGroupIds

        def initialize(product=nil, instanceid=nil, securitygroupids=nil)
          @Product = product
          @InstanceId = instanceid
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @Product = params['Product']
          @InstanceId = params['InstanceId']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # ModifyDBInstanceSecurityGroups返回参数结构体
      class ModifyDBInstanceSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstancesProject请求参数结构体
      class ModifyDBInstancesProjectRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 待修改的实例ID列表。实例 ID 形如：dcdbt-ow728lmc。
        # @type InstanceIds: Array
        # @param ProjectId: 要分配的项目 ID，可以通过 DescribeProjects 查询项目列表接口获取。
        # @type ProjectId: Integer

        attr_accessor :InstanceIds, :ProjectId

        def initialize(instanceids=nil, projectid=nil)
          @InstanceIds = instanceids
          @ProjectId = projectid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @ProjectId = params['ProjectId']
        end
      end

      # ModifyDBInstancesProject返回参数结构体
      class ModifyDBInstancesProjectResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBParameters请求参数结构体
      class ModifyDBParametersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：dcdbt-ow728lmc。
        # @type InstanceId: String
        # @param Params: 参数列表，每一个元素是Param和Value的组合
        # @type Params: Array

        attr_accessor :InstanceId, :Params

        def initialize(instanceid=nil, params=nil)
          @InstanceId = instanceid
          @Params = params
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              dbparamvalue_tmp = DBParamValue.new
              dbparamvalue_tmp.deserialize(i)
              @Params << dbparamvalue_tmp
            end
          end
        end
      end

      # ModifyDBParameters返回参数结构体
      class ModifyDBParametersResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：dcdbt-ow728lmc。
        # @type InstanceId: String
        # @param Result: 各参数修改结果
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Result, :RequestId

        def initialize(instanceid=nil, result=nil, requestid=nil)
          @InstanceId = instanceid
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              parammodifyresult_tmp = ParamModifyResult.new
              parammodifyresult_tmp.deserialize(i)
              @Result << parammodifyresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyDBSyncMode请求参数结构体
      class ModifyDBSyncModeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待修改同步模式的实例ID。形如：dcdbt-ow728lmc。
        # @type InstanceId: String
        # @param SyncMode: 同步模式：0 异步，1 强同步， 2 强同步可退化
        # @type SyncMode: Integer

        attr_accessor :InstanceId, :SyncMode

        def initialize(instanceid=nil, syncmode=nil)
          @InstanceId = instanceid
          @SyncMode = syncmode
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SyncMode = params['SyncMode']
        end
      end

      # ModifyDBSyncMode返回参数结构体
      class ModifyDBSyncModeResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务Id，可通过 DescribeFlow 查询任务状态。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyInstanceNetwork请求参数结构体
      class ModifyInstanceNetworkRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param VpcId: 希望转到的VPC网络的VpcId
        # @type VpcId: String
        # @param SubnetId: 希望转到的VPC网络的子网ID
        # @type SubnetId: String
        # @param Vip: 如果需要指定VIP，填上该字段
        # @type Vip: String
        # @param Vipv6: 如果需要指定VIPv6，填上该字段
        # @type Vipv6: String
        # @param VipReleaseDelay: VIP保留时长，单位小时，取值范围（0~168），0表示立即释放，有一分钟释放延迟。不传此参数，默认24小时释放VIP。
        # @type VipReleaseDelay: Integer

        attr_accessor :InstanceId, :VpcId, :SubnetId, :Vip, :Vipv6, :VipReleaseDelay

        def initialize(instanceid=nil, vpcid=nil, subnetid=nil, vip=nil, vipv6=nil, vipreleasedelay=nil)
          @InstanceId = instanceid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Vip = vip
          @Vipv6 = vipv6
          @VipReleaseDelay = vipreleasedelay
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Vip = params['Vip']
          @Vipv6 = params['Vipv6']
          @VipReleaseDelay = params['VipReleaseDelay']
        end
      end

      # ModifyInstanceNetwork返回参数结构体
      class ModifyInstanceNetworkResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务ID，根据此FlowId通过DescribeFlow接口查询任务进行状态
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyInstanceVip请求参数结构体
      class ModifyInstanceVipRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Vip: 实例VIP
        # @type Vip: String
        # @param Ipv6Flag: IPv6标志
        # @type Ipv6Flag: Integer
        # @param VipReleaseDelay: VIP保留时长，单位小时，取值范围（0~168），0表示立即释放，有一分钟释放延迟。不传此参数，默认24小时释放VIP。
        # @type VipReleaseDelay: Integer

        attr_accessor :InstanceId, :Vip, :Ipv6Flag, :VipReleaseDelay

        def initialize(instanceid=nil, vip=nil, ipv6flag=nil, vipreleasedelay=nil)
          @InstanceId = instanceid
          @Vip = vip
          @Ipv6Flag = ipv6flag
          @VipReleaseDelay = vipreleasedelay
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Vip = params['Vip']
          @Ipv6Flag = params['Ipv6Flag']
          @VipReleaseDelay = params['VipReleaseDelay']
        end
      end

      # ModifyInstanceVip返回参数结构体
      class ModifyInstanceVipResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务流程ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyInstanceVport请求参数结构体
      class ModifyInstanceVportRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Vport: 实例VPORT
        # @type Vport: Integer

        attr_accessor :InstanceId, :Vport

        def initialize(instanceid=nil, vport=nil)
          @InstanceId = instanceid
          @Vport = vport
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Vport = params['Vport']
        end
      end

      # ModifyInstanceVport返回参数结构体
      class ModifyInstanceVportResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRealServerAccessStrategy请求参数结构体
      class ModifyRealServerAccessStrategyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：tdsqlshard-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param RsAccessStrategy: RS就近模式, 0-无策略, 1-可用区就近访问。
        # @type RsAccessStrategy: Integer

        attr_accessor :InstanceId, :RsAccessStrategy

        def initialize(instanceid=nil, rsaccessstrategy=nil)
          @InstanceId = instanceid
          @RsAccessStrategy = rsaccessstrategy
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RsAccessStrategy = params['RsAccessStrategy']
        end
      end

      # ModifyRealServerAccessStrategy返回参数结构体
      class ModifyRealServerAccessStrategyResponse < TencentCloud::Common::AbstractModel
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

      # 描述DB节点信息
      class NodeInfo < TencentCloud::Common::AbstractModel
        # @param NodeId: DB节点ID
        # @type NodeId: String
        # @param Role: DB节点角色，取值为master或者slave
        # @type Role: String

        attr_accessor :NodeId, :Role

        def initialize(nodeid=nil, role=nil)
          @NodeId = nodeid
          @Role = role
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @Role = params['Role']
        end
      end

      # OpenDBExtranetAccess请求参数结构体
      class OpenDBExtranetAccessRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待开放外网访问的实例ID。形如：dcdbt-ow728lmc。
        # @type InstanceId: String
        # @param Ipv6Flag: 是否IPv6，默认0
        # @type Ipv6Flag: Integer

        attr_accessor :InstanceId, :Ipv6Flag

        def initialize(instanceid=nil, ipv6flag=nil)
          @InstanceId = instanceid
          @Ipv6Flag = ipv6flag
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Ipv6Flag = params['Ipv6Flag']
        end
      end

      # OpenDBExtranetAccess返回参数结构体
      class OpenDBExtranetAccessResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务ID，可通过 DescribeFlow 查询任务状态。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # 参数约束
      class ParamConstraint < TencentCloud::Common::AbstractModel
        # @param Type: 约束类型,如枚举enum，区间section
        # @type Type: String
        # @param Enum: 约束类型为enum时的可选值列表
        # @type Enum: String
        # @param Range: 约束类型为section时的范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Range: :class:`Tencentcloud::Dcdb.v20180411.models.ConstraintRange`
        # @param String: 约束类型为string时的可选值列表
        # @type String: String

        attr_accessor :Type, :Enum, :Range, :String

        def initialize(type=nil, enum=nil, range=nil, string=nil)
          @Type = type
          @Enum = enum
          @Range = range
          @String = string
        end

        def deserialize(params)
          @Type = params['Type']
          @Enum = params['Enum']
          unless params['Range'].nil?
            @Range = ConstraintRange.new
            @Range.deserialize(params['Range'])
          end
          @String = params['String']
        end
      end

      # DB参数描述
      class ParamDesc < TencentCloud::Common::AbstractModel
        # @param Param: 参数名字
        # @type Param: String
        # @param Value: 当前参数值
        # @type Value: String
        # @param SetValue: 设置过的值，参数生效后，该值和value一样。未设置过就不返回该字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SetValue: String
        # @param Default: 系统默认值
        # @type Default: String
        # @param Constraint: 参数限制
        # @type Constraint: :class:`Tencentcloud::Dcdb.v20180411.models.ParamConstraint`
        # @param HaveSetValue: 是否有设置过值，false:没有设置过值，true:有设置过值。
        # @type HaveSetValue: Boolean
        # @param NeedRestart: 是否需要重启生效，false:不需要重启，
        # true:需要重启
        # @type NeedRestart: Boolean

        attr_accessor :Param, :Value, :SetValue, :Default, :Constraint, :HaveSetValue, :NeedRestart

        def initialize(param=nil, value=nil, setvalue=nil, default=nil, constraint=nil, havesetvalue=nil, needrestart=nil)
          @Param = param
          @Value = value
          @SetValue = setvalue
          @Default = default
          @Constraint = constraint
          @HaveSetValue = havesetvalue
          @NeedRestart = needrestart
        end

        def deserialize(params)
          @Param = params['Param']
          @Value = params['Value']
          @SetValue = params['SetValue']
          @Default = params['Default']
          unless params['Constraint'].nil?
            @Constraint = ParamConstraint.new
            @Constraint.deserialize(params['Constraint'])
          end
          @HaveSetValue = params['HaveSetValue']
          @NeedRestart = params['NeedRestart']
        end
      end

      # 修改参数结果
      class ParamModifyResult < TencentCloud::Common::AbstractModel
        # @param Param: 修改参数名字
        # @type Param: String
        # @param Code: 参数修改结果。0表示修改成功；-1表示修改失败；-2表示该参数值非法
        # @type Code: Integer

        attr_accessor :Param, :Code

        def initialize(param=nil, code=nil)
          @Param = param
          @Code = code
        end

        def deserialize(params)
          @Param = params['Param']
          @Code = params['Code']
        end
      end

      # 项目信息描述
      class Project < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param OwnerUin: 资源拥有者（主账号）uin
        # @type OwnerUin: Integer
        # @param AppId: 应用Id
        # @type AppId: Integer
        # @param Name: 项目名称
        # @type Name: String
        # @param CreatorUin: 创建者uin
        # @type CreatorUin: Integer
        # @param SrcPlat: 来源平台
        # @type SrcPlat: String
        # @param SrcAppId: 来源AppId
        # @type SrcAppId: Integer
        # @param Status: 项目状态,0正常，-1关闭。默认项目为3
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param IsDefault: 是否默认项目，1 是，0 不是
        # @type IsDefault: Integer
        # @param Info: 描述信息
        # @type Info: String

        attr_accessor :ProjectId, :OwnerUin, :AppId, :Name, :CreatorUin, :SrcPlat, :SrcAppId, :Status, :CreateTime, :IsDefault, :Info

        def initialize(projectid=nil, owneruin=nil, appid=nil, name=nil, creatoruin=nil, srcplat=nil, srcappid=nil, status=nil, createtime=nil, isdefault=nil, info=nil)
          @ProjectId = projectid
          @OwnerUin = owneruin
          @AppId = appid
          @Name = name
          @CreatorUin = creatoruin
          @SrcPlat = srcplat
          @SrcAppId = srcappid
          @Status = status
          @CreateTime = createtime
          @IsDefault = isdefault
          @Info = info
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @OwnerUin = params['OwnerUin']
          @AppId = params['AppId']
          @Name = params['Name']
          @CreatorUin = params['CreatorUin']
          @SrcPlat = params['SrcPlat']
          @SrcAppId = params['SrcAppId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @IsDefault = params['IsDefault']
          @Info = params['Info']
        end
      end

      # 售卖可用区信息
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域英文ID
        # @type Region: String
        # @param RegionId: 地域数字ID
        # @type RegionId: Integer
        # @param RegionName: 地域中文名
        # @type RegionName: String
        # @param ZoneList: 可用区列表
        # @type ZoneList: Array
        # @param AvailableChoice: 可选择的主可用区和从可用区
        # @type AvailableChoice: Array

        attr_accessor :Region, :RegionId, :RegionName, :ZoneList, :AvailableChoice

        def initialize(region=nil, regionid=nil, regionname=nil, zonelist=nil, availablechoice=nil)
          @Region = region
          @RegionId = regionid
          @RegionName = regionname
          @ZoneList = zonelist
          @AvailableChoice = availablechoice
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          unless params['ZoneList'].nil?
            @ZoneList = []
            params['ZoneList'].each do |i|
              zonesinfo_tmp = ZonesInfo.new
              zonesinfo_tmp.deserialize(i)
              @ZoneList << zonesinfo_tmp
            end
          end
          unless params['AvailableChoice'].nil?
            @AvailableChoice = []
            params['AvailableChoice'].each do |i|
              shardzonechooseinfo_tmp = ShardZoneChooseInfo.new
              shardzonechooseinfo_tmp.deserialize(i)
              @AvailableChoice << shardzonechooseinfo_tmp
            end
          end
        end
      end

      # RenewDCDBInstance请求参数结构体
      class RenewDCDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待续费的实例ID。形如：dcdbt-ow728lmc，可以通过 DescribeDCDBInstances 查询实例详情获得。
        # @type InstanceId: String
        # @param Period: 续费时长，单位：月。
        # @type Period: Integer
        # @param AutoVoucher: 是否自动使用代金券进行支付，默认不使用。
        # @type AutoVoucher: Boolean
        # @param VoucherIds: 代金券ID列表，目前仅支持指定一张代金券。
        # @type VoucherIds: Array

        attr_accessor :InstanceId, :Period, :AutoVoucher, :VoucherIds

        def initialize(instanceid=nil, period=nil, autovoucher=nil, voucherids=nil)
          @InstanceId = instanceid
          @Period = period
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Period = params['Period']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
        end
      end

      # RenewDCDBInstance返回参数结构体
      class RenewDCDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 长订单号。可以据此调用 DescribeOrders
        #  查询订单详细信息，或在支付失败时调用用户账号相关接口进行支付。
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :RequestId

        def initialize(dealname=nil, requestid=nil)
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # 保留的网络资源信息
      class ReservedNetResource < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络
        # @type VpcId: String
        # @param SubnetId: 子网
        # @type SubnetId: String
        # @param Vip: VpcId,SubnetId下保留的内网ip
        # @type Vip: String
        # @param Vports: Vip下的端口
        # @type Vports: Array
        # @param RecycleTime: Vip的回收时间
        # @type RecycleTime: String

        attr_accessor :VpcId, :SubnetId, :Vip, :Vports, :RecycleTime

        def initialize(vpcid=nil, subnetid=nil, vip=nil, vports=nil, recycletime=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @Vip = vip
          @Vports = vports
          @RecycleTime = recycletime
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Vip = params['Vip']
          @Vports = params['Vports']
          @RecycleTime = params['RecycleTime']
        end
      end

      # ResetAccountPassword请求参数结构体
      class ResetAccountPasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：dcdbt-ow728lmc。
        # @type InstanceId: String
        # @param UserName: 登录用户名。
        # @type UserName: String
        # @param Host: 用户允许的访问 host，用户名+host唯一确定一个账号。
        # @type Host: String
        # @param Password: 新密码，由字母、数字或常见符号组成，不能包含分号、单引号和双引号，长度为6~32位。
        # @type Password: String

        attr_accessor :InstanceId, :UserName, :Host, :Password

        def initialize(instanceid=nil, username=nil, host=nil, password=nil)
          @InstanceId = instanceid
          @UserName = username
          @Host = host
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @Host = params['Host']
          @Password = params['Password']
        end
      end

      # ResetAccountPassword返回参数结构体
      class ResetAccountPasswordResponse < TencentCloud::Common::AbstractModel
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

      # 标签对象，包含tagKey & tagValue
      class ResourceTag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键key
        # @type TagKey: String
        # @param TagValue: 标签值value
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

      # 安全组详情
      class SecurityGroup < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param CreateTime: 创建时间，时间格式：yyyy-mm-dd hh:mm:ss
        # @type CreateTime: String
        # @param SecurityGroupId: 安全组ID
        # @type SecurityGroupId: String
        # @param SecurityGroupName: 安全组名称
        # @type SecurityGroupName: String
        # @param SecurityGroupRemark: 安全组备注
        # @type SecurityGroupRemark: String
        # @param Inbound: 入站规则
        # @type Inbound: Array
        # @param Outbound: 出站规则
        # @type Outbound: Array

        attr_accessor :ProjectId, :CreateTime, :SecurityGroupId, :SecurityGroupName, :SecurityGroupRemark, :Inbound, :Outbound

        def initialize(projectid=nil, createtime=nil, securitygroupid=nil, securitygroupname=nil, securitygroupremark=nil, inbound=nil, outbound=nil)
          @ProjectId = projectid
          @CreateTime = createtime
          @SecurityGroupId = securitygroupid
          @SecurityGroupName = securitygroupname
          @SecurityGroupRemark = securitygroupremark
          @Inbound = inbound
          @Outbound = outbound
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CreateTime = params['CreateTime']
          @SecurityGroupId = params['SecurityGroupId']
          @SecurityGroupName = params['SecurityGroupName']
          @SecurityGroupRemark = params['SecurityGroupRemark']
          unless params['Inbound'].nil?
            @Inbound = []
            params['Inbound'].each do |i|
              securitygroupbound_tmp = SecurityGroupBound.new
              securitygroupbound_tmp.deserialize(i)
              @Inbound << securitygroupbound_tmp
            end
          end
          unless params['Outbound'].nil?
            @Outbound = []
            params['Outbound'].each do |i|
              securitygroupbound_tmp = SecurityGroupBound.new
              securitygroupbound_tmp.deserialize(i)
              @Outbound << securitygroupbound_tmp
            end
          end
        end
      end

      # 安全出入口规则
      class SecurityGroupBound < TencentCloud::Common::AbstractModel
        # @param CidrIp: 来源 IP 或 IP 段，例如192.168.0.0/16
        # @type CidrIp: String
        # @param Action: 策略，ACCEPT 或者 DROP
        # @type Action: String
        # @param PortRange: 端口
        # @type PortRange: String
        # @param IpProtocol: 网络协议，支持 UDP、TCP 等
        # @type IpProtocol: String

        attr_accessor :CidrIp, :Action, :PortRange, :IpProtocol

        def initialize(cidrip=nil, action=nil, portrange=nil, ipprotocol=nil)
          @CidrIp = cidrip
          @Action = action
          @PortRange = portrange
          @IpProtocol = ipprotocol
        end

        def deserialize(params)
          @CidrIp = params['CidrIp']
          @Action = params['Action']
          @PortRange = params['PortRange']
          @IpProtocol = params['IpProtocol']
        end
      end

      # DCDB分片信息
      class ShardBriefInfo < TencentCloud::Common::AbstractModel
        # @param ShardSerialId: 分片SerialId
        # @type ShardSerialId: String
        # @param ShardInstanceId: 分片ID，形如shard-7vg1o339
        # @type ShardInstanceId: String
        # @param Status: 分片运行状态
        # @type Status: Integer
        # @param StatusDesc: 分片运行状态描述
        # @type StatusDesc: String
        # @param CreateTime: 分片创建时间
        # @type CreateTime: String
        # @param Memory: 分片内存大小，单位GB
        # @type Memory: Integer
        # @param Storage: 分片磁盘大小，单位GB
        # @type Storage: Integer
        # @param LogDisk: 分片日志磁盘空间大小，单位GB
        # @type LogDisk: Integer
        # @param NodeCount: 分片节点个数
        # @type NodeCount: Integer
        # @param StorageUsage: 分片磁盘空间使用率
        # @type StorageUsage: Float
        # @param ProxyVersion: 分片Proxy版本信息
        # @type ProxyVersion: String
        # @param ShardMasterZone: 分片主DB可用区
        # @type ShardMasterZone: String
        # @param ShardSlaveZones: 分片从DB可用区
        # @type ShardSlaveZones: Array
        # @param Cpu: 分片Cpu核数
        # @type Cpu: Integer
        # @param NodesInfo: DB节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodesInfo: Array

        attr_accessor :ShardSerialId, :ShardInstanceId, :Status, :StatusDesc, :CreateTime, :Memory, :Storage, :LogDisk, :NodeCount, :StorageUsage, :ProxyVersion, :ShardMasterZone, :ShardSlaveZones, :Cpu, :NodesInfo

        def initialize(shardserialid=nil, shardinstanceid=nil, status=nil, statusdesc=nil, createtime=nil, memory=nil, storage=nil, logdisk=nil, nodecount=nil, storageusage=nil, proxyversion=nil, shardmasterzone=nil, shardslavezones=nil, cpu=nil, nodesinfo=nil)
          @ShardSerialId = shardserialid
          @ShardInstanceId = shardinstanceid
          @Status = status
          @StatusDesc = statusdesc
          @CreateTime = createtime
          @Memory = memory
          @Storage = storage
          @LogDisk = logdisk
          @NodeCount = nodecount
          @StorageUsage = storageusage
          @ProxyVersion = proxyversion
          @ShardMasterZone = shardmasterzone
          @ShardSlaveZones = shardslavezones
          @Cpu = cpu
          @NodesInfo = nodesinfo
        end

        def deserialize(params)
          @ShardSerialId = params['ShardSerialId']
          @ShardInstanceId = params['ShardInstanceId']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @CreateTime = params['CreateTime']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @LogDisk = params['LogDisk']
          @NodeCount = params['NodeCount']
          @StorageUsage = params['StorageUsage']
          @ProxyVersion = params['ProxyVersion']
          @ShardMasterZone = params['ShardMasterZone']
          @ShardSlaveZones = params['ShardSlaveZones']
          @Cpu = params['Cpu']
          unless params['NodesInfo'].nil?
            @NodesInfo = []
            params['NodesInfo'].each do |i|
              nodeinfo_tmp = NodeInfo.new
              nodeinfo_tmp.deserialize(i)
              @NodesInfo << nodeinfo_tmp
            end
          end
        end
      end

      # 分片信息
      class ShardInfo < TencentCloud::Common::AbstractModel
        # @param ShardInstanceId: 分片ID
        # @type ShardInstanceId: String
        # @param ShardSerialId: 分片Set ID
        # @type ShardSerialId: String
        # @param Status: 状态：0 创建中，1 流程处理中， 2 运行中，3 分片未初始化，-2 分片已删除
        # @type Status: Integer
        # @param Createtime: 创建时间
        # @type Createtime: String
        # @param Memory: 内存大小，单位 GB
        # @type Memory: Integer
        # @param Storage: 存储大小，单位 GB
        # @type Storage: Integer
        # @param ShardId: 分片数字ID
        # @type ShardId: Integer
        # @param NodeCount: 节点数，2 为一主一从， 3 为一主二从
        # @type NodeCount: Integer
        # @param Pid: 产品类型 Id（过时字段，请勿依赖该值）
        # @type Pid: Integer
        # @param Cpu: Cpu核数
        # @type Cpu: Integer

        attr_accessor :ShardInstanceId, :ShardSerialId, :Status, :Createtime, :Memory, :Storage, :ShardId, :NodeCount, :Pid, :Cpu

        def initialize(shardinstanceid=nil, shardserialid=nil, status=nil, createtime=nil, memory=nil, storage=nil, shardid=nil, nodecount=nil, pid=nil, cpu=nil)
          @ShardInstanceId = shardinstanceid
          @ShardSerialId = shardserialid
          @Status = status
          @Createtime = createtime
          @Memory = memory
          @Storage = storage
          @ShardId = shardid
          @NodeCount = nodecount
          @Pid = pid
          @Cpu = cpu
        end

        def deserialize(params)
          @ShardInstanceId = params['ShardInstanceId']
          @ShardSerialId = params['ShardSerialId']
          @Status = params['Status']
          @Createtime = params['Createtime']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @ShardId = params['ShardId']
          @NodeCount = params['NodeCount']
          @Pid = params['Pid']
          @Cpu = params['Cpu']
        end
      end

      # 分片节点可用区选择
      class ShardZoneChooseInfo < TencentCloud::Common::AbstractModel
        # @param MasterZone: 主可用区
        # @type MasterZone: :class:`Tencentcloud::Dcdb.v20180411.models.ZonesInfo`
        # @param SlaveZones: 可选的从可用区
        # @type SlaveZones: Array

        attr_accessor :MasterZone, :SlaveZones

        def initialize(masterzone=nil, slavezones=nil)
          @MasterZone = masterzone
          @SlaveZones = slavezones
        end

        def deserialize(params)
          unless params['MasterZone'].nil?
            @MasterZone = ZonesInfo.new
            @MasterZone.deserialize(params['MasterZone'])
          end
          unless params['SlaveZones'].nil?
            @SlaveZones = []
            params['SlaveZones'].each do |i|
              zonesinfo_tmp = ZonesInfo.new
              zonesinfo_tmp.deserialize(i)
              @SlaveZones << zonesinfo_tmp
            end
          end
        end
      end

      # 慢查询条目信息
      class SlowLogData < TencentCloud::Common::AbstractModel
        # @param CheckSum: 语句校验和，用于查询详情
        # @type CheckSum: String
        # @param Db: 数据库名称
        # @type Db: String
        # @param FingerPrint: 抽象的SQL语句
        # @type FingerPrint: String
        # @param LockTimeAvg: 平均的锁时间
        # @type LockTimeAvg: String
        # @param LockTimeMax: 最大锁时间
        # @type LockTimeMax: String
        # @param LockTimeMin: 最小锁时间
        # @type LockTimeMin: String
        # @param LockTimeSum: 锁时间总和
        # @type LockTimeSum: String
        # @param QueryCount: 查询次数
        # @type QueryCount: String
        # @param QueryTimeAvg: 平均查询时间
        # @type QueryTimeAvg: String
        # @param QueryTimeMax: 最大查询时间
        # @type QueryTimeMax: String
        # @param QueryTimeMin: 最小查询时间
        # @type QueryTimeMin: String
        # @param QueryTimeSum: 查询时间总和
        # @type QueryTimeSum: String
        # @param RowsExaminedSum: 扫描行数
        # @type RowsExaminedSum: String
        # @param RowsSentSum: 发送行数
        # @type RowsSentSum: String
        # @param TsMax: 最后执行时间
        # @type TsMax: String
        # @param TsMin: 首次执行时间
        # @type TsMin: String
        # @param User: 帐号
        # @type User: String
        # @param ExampleSql: 样例Sql
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExampleSql: String
        # @param Host: 账户的域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Host: String

        attr_accessor :CheckSum, :Db, :FingerPrint, :LockTimeAvg, :LockTimeMax, :LockTimeMin, :LockTimeSum, :QueryCount, :QueryTimeAvg, :QueryTimeMax, :QueryTimeMin, :QueryTimeSum, :RowsExaminedSum, :RowsSentSum, :TsMax, :TsMin, :User, :ExampleSql, :Host

        def initialize(checksum=nil, db=nil, fingerprint=nil, locktimeavg=nil, locktimemax=nil, locktimemin=nil, locktimesum=nil, querycount=nil, querytimeavg=nil, querytimemax=nil, querytimemin=nil, querytimesum=nil, rowsexaminedsum=nil, rowssentsum=nil, tsmax=nil, tsmin=nil, user=nil, examplesql=nil, host=nil)
          @CheckSum = checksum
          @Db = db
          @FingerPrint = fingerprint
          @LockTimeAvg = locktimeavg
          @LockTimeMax = locktimemax
          @LockTimeMin = locktimemin
          @LockTimeSum = locktimesum
          @QueryCount = querycount
          @QueryTimeAvg = querytimeavg
          @QueryTimeMax = querytimemax
          @QueryTimeMin = querytimemin
          @QueryTimeSum = querytimesum
          @RowsExaminedSum = rowsexaminedsum
          @RowsSentSum = rowssentsum
          @TsMax = tsmax
          @TsMin = tsmin
          @User = user
          @ExampleSql = examplesql
          @Host = host
        end

        def deserialize(params)
          @CheckSum = params['CheckSum']
          @Db = params['Db']
          @FingerPrint = params['FingerPrint']
          @LockTimeAvg = params['LockTimeAvg']
          @LockTimeMax = params['LockTimeMax']
          @LockTimeMin = params['LockTimeMin']
          @LockTimeSum = params['LockTimeSum']
          @QueryCount = params['QueryCount']
          @QueryTimeAvg = params['QueryTimeAvg']
          @QueryTimeMax = params['QueryTimeMax']
          @QueryTimeMin = params['QueryTimeMin']
          @QueryTimeSum = params['QueryTimeSum']
          @RowsExaminedSum = params['RowsExaminedSum']
          @RowsSentSum = params['RowsSentSum']
          @TsMax = params['TsMax']
          @TsMin = params['TsMin']
          @User = params['User']
          @ExampleSql = params['ExampleSql']
          @Host = params['Host']
        end
      end

      # 按机型分类的规格配置
      class SpecConfig < TencentCloud::Common::AbstractModel
        # @param Machine: 规格机型
        # @type Machine: String
        # @param SpecConfigInfos: 规格列表
        # @type SpecConfigInfos: Array

        attr_accessor :Machine, :SpecConfigInfos

        def initialize(machine=nil, specconfiginfos=nil)
          @Machine = machine
          @SpecConfigInfos = specconfiginfos
        end

        def deserialize(params)
          @Machine = params['Machine']
          unless params['SpecConfigInfos'].nil?
            @SpecConfigInfos = []
            params['SpecConfigInfos'].each do |i|
              specconfiginfo_tmp = SpecConfigInfo.new
              specconfiginfo_tmp.deserialize(i)
              @SpecConfigInfos << specconfiginfo_tmp
            end
          end
        end
      end

      # 实例可售卖规格详细信息，创建实例和扩容实例时 NodeCount、Memory 确定售卖规格，硬盘大小可用区间为[MinStorage,MaxStorage]
      class SpecConfigInfo < TencentCloud::Common::AbstractModel
        # @param NodeCount: 节点个数，2 表示一主一从，3 表示一主二从
        # @type NodeCount: Integer
        # @param Memory: 内存大小，单位 GB
        # @type Memory: Integer
        # @param MinStorage: 数据盘规格最小值，单位 GB
        # @type MinStorage: Integer
        # @param MaxStorage: 数据盘规格最大值，单位 GB
        # @type MaxStorage: Integer
        # @param SuitInfo: 推荐的使用场景
        # @type SuitInfo: String
        # @param Pid: 产品类型 Id
        # @type Pid: Integer
        # @param Qps: 最大 Qps 值
        # @type Qps: Integer
        # @param Cpu: CPU核数
        # @type Cpu: Integer

        attr_accessor :NodeCount, :Memory, :MinStorage, :MaxStorage, :SuitInfo, :Pid, :Qps, :Cpu

        def initialize(nodecount=nil, memory=nil, minstorage=nil, maxstorage=nil, suitinfo=nil, pid=nil, qps=nil, cpu=nil)
          @NodeCount = nodecount
          @Memory = memory
          @MinStorage = minstorage
          @MaxStorage = maxstorage
          @SuitInfo = suitinfo
          @Pid = pid
          @Qps = qps
          @Cpu = cpu
        end

        def deserialize(params)
          @NodeCount = params['NodeCount']
          @Memory = params['Memory']
          @MinStorage = params['MinStorage']
          @MaxStorage = params['MaxStorage']
          @SuitInfo = params['SuitInfo']
          @Pid = params['Pid']
          @Qps = params['Qps']
          @Cpu = params['Cpu']
        end
      end

      # 升级实例 -- 切分分片类型
      class SplitShardConfig < TencentCloud::Common::AbstractModel
        # @param ShardInstanceIds: 分片ID数组
        # @type ShardInstanceIds: Array
        # @param SplitRate: 数据切分比例，固定50%
        # @type SplitRate: Integer
        # @param ShardMemory: 分片内存大小，单位 GB
        # @type ShardMemory: Integer
        # @param ShardStorage: 分片存储大小，单位 GB
        # @type ShardStorage: Integer

        attr_accessor :ShardInstanceIds, :SplitRate, :ShardMemory, :ShardStorage

        def initialize(shardinstanceids=nil, splitrate=nil, shardmemory=nil, shardstorage=nil)
          @ShardInstanceIds = shardinstanceids
          @SplitRate = splitrate
          @ShardMemory = shardmemory
          @ShardStorage = shardstorage
        end

        def deserialize(params)
          @ShardInstanceIds = params['ShardInstanceIds']
          @SplitRate = params['SplitRate']
          @ShardMemory = params['ShardMemory']
          @ShardStorage = params['ShardStorage']
        end
      end

      # 描述一条sql日志的详细信息。
      class SqlLogItem < TencentCloud::Common::AbstractModel
        # @param Offset: 本条日志在消息队列中的偏移量。
        # @type Offset: Integer
        # @param User: 执行本条sql的用户。
        # @type User: String
        # @param Client: 执行本条sql的客户端IP+端口。
        # @type Client: String
        # @param DbName: 数据库名称。
        # @type DbName: String
        # @param Sql: 执行的sql语句。
        # @type Sql: String
        # @param SelectRowNum: 返回的数据行数。
        # @type SelectRowNum: Integer
        # @param AffectRowNum: 影响行数。
        # @type AffectRowNum: Integer
        # @param Timestamp: Sql执行时间戳。
        # @type Timestamp: Integer
        # @param TimeCostMs: Sql耗时，单位为毫秒。
        # @type TimeCostMs: Integer
        # @param ResultCode: Sql返回码，0为成功。
        # @type ResultCode: Integer

        attr_accessor :Offset, :User, :Client, :DbName, :Sql, :SelectRowNum, :AffectRowNum, :Timestamp, :TimeCostMs, :ResultCode

        def initialize(offset=nil, user=nil, client=nil, dbname=nil, sql=nil, selectrownum=nil, affectrownum=nil, timestamp=nil, timecostms=nil, resultcode=nil)
          @Offset = offset
          @User = user
          @Client = client
          @DbName = dbname
          @Sql = sql
          @SelectRowNum = selectrownum
          @AffectRowNum = affectrownum
          @Timestamp = timestamp
          @TimeCostMs = timecostms
          @ResultCode = resultcode
        end

        def deserialize(params)
          @Offset = params['Offset']
          @User = params['User']
          @Client = params['Client']
          @DbName = params['DbName']
          @Sql = params['Sql']
          @SelectRowNum = params['SelectRowNum']
          @AffectRowNum = params['AffectRowNum']
          @Timestamp = params['Timestamp']
          @TimeCostMs = params['TimeCostMs']
          @ResultCode = params['ResultCode']
        end
      end

      # SwitchDBInstanceHA请求参数结构体
      class SwitchDBInstanceHARequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id，形如 tdsql-ow728lmc。
        # @type InstanceId: String
        # @param Zone: 切换的目标区域，会自动选择该可用区中延迟最低的节点。
        # @type Zone: String

        attr_accessor :InstanceId, :Zone

        def initialize(instanceid=nil, zone=nil)
          @InstanceId = instanceid
          @Zone = zone
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Zone = params['Zone']
        end
      end

      # SwitchDBInstanceHA返回参数结构体
      class SwitchDBInstanceHAResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程Id
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # 数据库列信息
      class TableColumn < TencentCloud::Common::AbstractModel
        # @param Col: 列名称
        # @type Col: String
        # @param Type: 列类型
        # @type Type: String

        attr_accessor :Col, :Type

        def initialize(col=nil, type=nil)
          @Col = col
          @Type = type
        end

        def deserialize(params)
          @Col = params['Col']
          @Type = params['Type']
        end
      end

      # 数据库表权限
      class TablePrivilege < TencentCloud::Common::AbstractModel
        # @param Database: 数据库名
        # @type Database: String
        # @param Table: 数据库表名
        # @type Table: String
        # @param Privileges: 权限信息
        # @type Privileges: Array

        attr_accessor :Database, :Table, :Privileges

        def initialize(database=nil, table=nil, privileges=nil)
          @Database = database
          @Table = table
          @Privileges = privileges
        end

        def deserialize(params)
          @Database = params['Database']
          @Table = params['Table']
          @Privileges = params['Privileges']
        end
      end

      # TerminateDedicatedDBInstance请求参数结构体
      class TerminateDedicatedDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 Id，形如：dcdbt-ow728lmc。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # TerminateDedicatedDBInstance返回参数结构体
      class TerminateDedicatedDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程Id
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # 临时实例
      class TmpInstance < TencentCloud::Common::AbstractModel
        # @param AppId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param InstanceRemark: 实例备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceRemark: String
        # @param TempType: 0:非临时实例 ,1:无效临时实例, 2:回档成功的有效临时实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TempType: Integer
        # @param Status: 实例状态,0:待初始化,1:流程处理中,2:有效状态,-1:已隔离，-2：已下线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param Vip: 实例虚IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip: String
        # @param Vport: 实例虚端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vport: Integer
        # @param PeriodEndTime: 有效期结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeriodEndTime: String
        # @param SrcInstanceId: 源实例 ID，形如：tdsql-ow728lmc。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcInstanceId: String
        # @param StatusDesc: 实例状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param Region: 实例所在地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Zone: 实例所在可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param Vipv6: 实例虚IPv6
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vipv6: String
        # @param Ipv6Flag: 实例IPv6标志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6Flag: Integer

        attr_accessor :AppId, :CreateTime, :InstanceRemark, :TempType, :Status, :InstanceId, :Vip, :Vport, :PeriodEndTime, :SrcInstanceId, :StatusDesc, :Region, :Zone, :Vipv6, :Ipv6Flag

        def initialize(appid=nil, createtime=nil, instanceremark=nil, temptype=nil, status=nil, instanceid=nil, vip=nil, vport=nil, periodendtime=nil, srcinstanceid=nil, statusdesc=nil, region=nil, zone=nil, vipv6=nil, ipv6flag=nil)
          @AppId = appid
          @CreateTime = createtime
          @InstanceRemark = instanceremark
          @TempType = temptype
          @Status = status
          @InstanceId = instanceid
          @Vip = vip
          @Vport = vport
          @PeriodEndTime = periodendtime
          @SrcInstanceId = srcinstanceid
          @StatusDesc = statusdesc
          @Region = region
          @Zone = zone
          @Vipv6 = vipv6
          @Ipv6Flag = ipv6flag
        end

        def deserialize(params)
          @AppId = params['AppId']
          @CreateTime = params['CreateTime']
          @InstanceRemark = params['InstanceRemark']
          @TempType = params['TempType']
          @Status = params['Status']
          @InstanceId = params['InstanceId']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @PeriodEndTime = params['PeriodEndTime']
          @SrcInstanceId = params['SrcInstanceId']
          @StatusDesc = params['StatusDesc']
          @Region = params['Region']
          @Zone = params['Zone']
          @Vipv6 = params['Vipv6']
          @Ipv6Flag = params['Ipv6Flag']
        end
      end

      # UpgradeDCDBInstance请求参数结构体
      class UpgradeDCDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待升级的实例ID。形如：dcdbt-ow728lmc，可以通过 DescribeDCDBInstances 查询实例详情获得。
        # @type InstanceId: String
        # @param UpgradeType: 升级类型，取值范围:
        # <li> ADD: 新增分片 </li>
        #  <li> EXPAND: 升级实例中的已有分片 </li>
        #  <li> SPLIT: 将已有分片中的数据切分到新增分片上</li>
        # @type UpgradeType: String
        # @param AddShardConfig: 新增分片配置，当UpgradeType为ADD时生效。
        # @type AddShardConfig: :class:`Tencentcloud::Dcdb.v20180411.models.AddShardConfig`
        # @param ExpandShardConfig: 扩容分片配置，当UpgradeType为EXPAND时生效。
        # @type ExpandShardConfig: :class:`Tencentcloud::Dcdb.v20180411.models.ExpandShardConfig`
        # @param SplitShardConfig: 切分分片配置，当UpgradeType为SPLIT时生效。
        # @type SplitShardConfig: :class:`Tencentcloud::Dcdb.v20180411.models.SplitShardConfig`
        # @param AutoVoucher: 是否自动使用代金券进行支付，默认不使用。
        # @type AutoVoucher: Boolean
        # @param VoucherIds: 代金券ID列表，目前仅支持指定一张代金券。
        # @type VoucherIds: Array
        # @param Zones: 变更部署时指定的新可用区列表，第1个为主可用区，其余为从可用区
        # @type Zones: Array

        attr_accessor :InstanceId, :UpgradeType, :AddShardConfig, :ExpandShardConfig, :SplitShardConfig, :AutoVoucher, :VoucherIds, :Zones

        def initialize(instanceid=nil, upgradetype=nil, addshardconfig=nil, expandshardconfig=nil, splitshardconfig=nil, autovoucher=nil, voucherids=nil, zones=nil)
          @InstanceId = instanceid
          @UpgradeType = upgradetype
          @AddShardConfig = addshardconfig
          @ExpandShardConfig = expandshardconfig
          @SplitShardConfig = splitshardconfig
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @Zones = zones
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UpgradeType = params['UpgradeType']
          unless params['AddShardConfig'].nil?
            @AddShardConfig = AddShardConfig.new
            @AddShardConfig.deserialize(params['AddShardConfig'])
          end
          unless params['ExpandShardConfig'].nil?
            @ExpandShardConfig = ExpandShardConfig.new
            @ExpandShardConfig.deserialize(params['ExpandShardConfig'])
          end
          unless params['SplitShardConfig'].nil?
            @SplitShardConfig = SplitShardConfig.new
            @SplitShardConfig.deserialize(params['SplitShardConfig'])
          end
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @Zones = params['Zones']
        end
      end

      # UpgradeDCDBInstance返回参数结构体
      class UpgradeDCDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 长订单号。可以据此调用 DescribeOrders
        #  查询订单详细信息，或在支付失败时调用用户账号相关接口进行支付。
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :RequestId

        def initialize(dealname=nil, requestid=nil)
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # UpgradeDedicatedDCDBInstance请求参数结构体
      class UpgradeDedicatedDCDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param UpgradeType: 升级类型，取值为ADD，SPLIT和EXPAND。ADD-添加分片；SPLIT-切分某个分片；EXPAND-垂直扩容某个分片
        # @type UpgradeType: String
        # @param InstanceId: 实例ID，形如 dcdbt-mlfjm74h
        # @type InstanceId: String
        # @param AddShardConfig: 当UpgradeType取值为ADD时，添加分片的配置参数
        # @type AddShardConfig: :class:`Tencentcloud::Dcdb.v20180411.models.AddShardConfig`
        # @param ExpandShardConfig: 当UpgradeType取值为EXPAND时，垂直扩容分片的配置参数
        # @type ExpandShardConfig: :class:`Tencentcloud::Dcdb.v20180411.models.ExpandShardConfig`
        # @param SplitShardConfig: 当UpgradeType取值为SPLIT时，切分分片的配置参数
        # @type SplitShardConfig: :class:`Tencentcloud::Dcdb.v20180411.models.SplitShardConfig`
        # @param SwitchAutoRetry: 错过切换时间窗口时，是否自动重试一次，0-否，1-是
        # @type SwitchAutoRetry: Integer
        # @param SwitchStartTime: 切换时间窗口开始时间
        # @type SwitchStartTime: String
        # @param SwitchEndTime: 切换时间窗口结束时间
        # @type SwitchEndTime: String

        attr_accessor :UpgradeType, :InstanceId, :AddShardConfig, :ExpandShardConfig, :SplitShardConfig, :SwitchAutoRetry, :SwitchStartTime, :SwitchEndTime

        def initialize(upgradetype=nil, instanceid=nil, addshardconfig=nil, expandshardconfig=nil, splitshardconfig=nil, switchautoretry=nil, switchstarttime=nil, switchendtime=nil)
          @UpgradeType = upgradetype
          @InstanceId = instanceid
          @AddShardConfig = addshardconfig
          @ExpandShardConfig = expandshardconfig
          @SplitShardConfig = splitshardconfig
          @SwitchAutoRetry = switchautoretry
          @SwitchStartTime = switchstarttime
          @SwitchEndTime = switchendtime
        end

        def deserialize(params)
          @UpgradeType = params['UpgradeType']
          @InstanceId = params['InstanceId']
          unless params['AddShardConfig'].nil?
            @AddShardConfig = AddShardConfig.new
            @AddShardConfig.deserialize(params['AddShardConfig'])
          end
          unless params['ExpandShardConfig'].nil?
            @ExpandShardConfig = ExpandShardConfig.new
            @ExpandShardConfig.deserialize(params['ExpandShardConfig'])
          end
          unless params['SplitShardConfig'].nil?
            @SplitShardConfig = SplitShardConfig.new
            @SplitShardConfig.deserialize(params['SplitShardConfig'])
          end
          @SwitchAutoRetry = params['SwitchAutoRetry']
          @SwitchStartTime = params['SwitchStartTime']
          @SwitchEndTime = params['SwitchEndTime']
        end
      end

      # UpgradeDedicatedDCDBInstance返回参数结构体
      class UpgradeDedicatedDCDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务流程ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # UpgradeHourDCDBInstance请求参数结构体
      class UpgradeHourDCDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待升级的实例ID。形如：dcdbt-ow728lmc，可以通过 DescribeDCDBInstances 查询实例详情获得。
        # @type InstanceId: String
        # @param UpgradeType: 升级类型，取值范围:
        # <li> ADD: 新增分片 </li>
        #  <li> EXPAND: 升级实例中的已有分片 </li>
        #  <li> SPLIT: 将已有分片中的数据切分到新增分片上</li>
        # @type UpgradeType: String
        # @param AddShardConfig: 新增分片配置，当UpgradeType为ADD时生效。
        # @type AddShardConfig: :class:`Tencentcloud::Dcdb.v20180411.models.AddShardConfig`
        # @param ExpandShardConfig: 扩容分片配置，当UpgradeType为EXPAND时生效。
        # @type ExpandShardConfig: :class:`Tencentcloud::Dcdb.v20180411.models.ExpandShardConfig`
        # @param SplitShardConfig: 切分分片配置，当UpgradeType为SPLIT时生效。
        # @type SplitShardConfig: :class:`Tencentcloud::Dcdb.v20180411.models.SplitShardConfig`
        # @param SwitchStartTime: 切换开始时间，格式如: "2019-12-12 07:00:00"。开始时间必须在当前时间一个小时以后，3天以内。
        # @type SwitchStartTime: String
        # @param SwitchEndTime: 切换结束时间,  格式如: "2019-12-12 07:15:00"，结束时间必须大于开始时间。
        # @type SwitchEndTime: String
        # @param SwitchAutoRetry: 是否自动重试。 0：不自动重试  1：自动重试
        # @type SwitchAutoRetry: Integer
        # @param Zones: 变更部署时指定的新可用区列表，第1个为主可用区，其余为从可用区
        # @type Zones: Array

        attr_accessor :InstanceId, :UpgradeType, :AddShardConfig, :ExpandShardConfig, :SplitShardConfig, :SwitchStartTime, :SwitchEndTime, :SwitchAutoRetry, :Zones

        def initialize(instanceid=nil, upgradetype=nil, addshardconfig=nil, expandshardconfig=nil, splitshardconfig=nil, switchstarttime=nil, switchendtime=nil, switchautoretry=nil, zones=nil)
          @InstanceId = instanceid
          @UpgradeType = upgradetype
          @AddShardConfig = addshardconfig
          @ExpandShardConfig = expandshardconfig
          @SplitShardConfig = splitshardconfig
          @SwitchStartTime = switchstarttime
          @SwitchEndTime = switchendtime
          @SwitchAutoRetry = switchautoretry
          @Zones = zones
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UpgradeType = params['UpgradeType']
          unless params['AddShardConfig'].nil?
            @AddShardConfig = AddShardConfig.new
            @AddShardConfig.deserialize(params['AddShardConfig'])
          end
          unless params['ExpandShardConfig'].nil?
            @ExpandShardConfig = ExpandShardConfig.new
            @ExpandShardConfig.deserialize(params['ExpandShardConfig'])
          end
          unless params['SplitShardConfig'].nil?
            @SplitShardConfig = SplitShardConfig.new
            @SplitShardConfig.deserialize(params['SplitShardConfig'])
          end
          @SwitchStartTime = params['SwitchStartTime']
          @SwitchEndTime = params['SwitchEndTime']
          @SwitchAutoRetry = params['SwitchAutoRetry']
          @Zones = params['Zones']
        end
      end

      # UpgradeHourDCDBInstance返回参数结构体
      class UpgradeHourDCDBInstanceResponse < TencentCloud::Common::AbstractModel
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

      # 用户任务信息
      class UserTaskInfo < TencentCloud::Common::AbstractModel
        # @param Id: 任务ID
        # @type Id: Integer
        # @param AppId: 用户账户ID
        # @type AppId: Integer
        # @param Status: 任务状态，0-任务初始化中；1-任务运行中；2-任务成功；3-任务失败
        # @type Status: Integer
        # @param UserTaskType: 任务类型，0-实例回档；1-实例创建；2-实例扩容；3-实例迁移；4-实例删除；5-实例重启
        # @type UserTaskType: Integer
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param EndTime: 任务结束时间
        # @type EndTime: String
        # @param ErrMsg: 任务错误信息
        # @type ErrMsg: String
        # @param InputData: 客户端参数
        # @type InputData: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param RegionId: 地域ID
        # @type RegionId: Integer

        attr_accessor :Id, :AppId, :Status, :UserTaskType, :CreateTime, :EndTime, :ErrMsg, :InputData, :InstanceId, :InstanceName, :RegionId

        def initialize(id=nil, appid=nil, status=nil, usertasktype=nil, createtime=nil, endtime=nil, errmsg=nil, inputdata=nil, instanceid=nil, instancename=nil, regionid=nil)
          @Id = id
          @AppId = appid
          @Status = status
          @UserTaskType = usertasktype
          @CreateTime = createtime
          @EndTime = endtime
          @ErrMsg = errmsg
          @InputData = inputdata
          @InstanceId = instanceid
          @InstanceName = instancename
          @RegionId = regionid
        end

        def deserialize(params)
          @Id = params['Id']
          @AppId = params['AppId']
          @Status = params['Status']
          @UserTaskType = params['UserTaskType']
          @CreateTime = params['CreateTime']
          @EndTime = params['EndTime']
          @ErrMsg = params['ErrMsg']
          @InputData = params['InputData']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @RegionId = params['RegionId']
        end
      end

      # 视图权限信息
      class ViewPrivileges < TencentCloud::Common::AbstractModel
        # @param Database: 数据库名
        # @type Database: String
        # @param View: 数据库视图名
        # @type View: String
        # @param Privileges: 权限信息
        # @type Privileges: Array

        attr_accessor :Database, :View, :Privileges

        def initialize(database=nil, view=nil, privileges=nil)
          @Database = database
          @View = view
          @Privileges = privileges
        end

        def deserialize(params)
          @Database = params['Database']
          @View = params['View']
          @Privileges = params['Privileges']
        end
      end

      # 可用区信息
      class ZonesInfo < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区英文ID
        # @type Zone: String
        # @param ZoneId: 可用区数字ID
        # @type ZoneId: Integer
        # @param ZoneName: 可用区中文名
        # @type ZoneName: String
        # @param OnSale: 是否在售
        # @type OnSale: Boolean

        attr_accessor :Zone, :ZoneId, :ZoneName, :OnSale

        def initialize(zone=nil, zoneid=nil, zonename=nil, onsale=nil)
          @Zone = zone
          @ZoneId = zoneid
          @ZoneName = zonename
          @OnSale = onsale
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @OnSale = params['OnSale']
        end
      end

    end
  end
end

