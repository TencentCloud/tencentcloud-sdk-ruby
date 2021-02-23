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
        # @param Password: 账号密码，由字母、数字或常见符号组成，不能包含分号、单引号和双引号，长度为6~32位。
        # @type Password: String
        # @param ReadOnly: 是否创建为只读账号，0：否， 1：该账号的sql请求优先选择备机执行，备机不可用时选择主机执行，2：优先选择备机执行，备机不可用时操作失败，3：只从备机读取。
        # @type ReadOnly: Integer
        # @param Description: 账号备注，可以包含中文、英文字符、常见符号和数字，长度为0~256字符
        # @type Description: String
        # @param DelayThresh: 如果备机延迟超过本参数设置值，系统将认为备机发生故障
        # 建议该参数值大于10。当ReadOnly选择1、2时该参数生效。
        # @type DelayThresh: Integer

        attr_accessor :InstanceId, :UserName, :Host, :Password, :ReadOnly, :Description, :DelayThresh
        
        def initialize(instanceid=nil, username=nil, host=nil, password=nil, readonly=nil, description=nil, delaythresh=nil)
          @InstanceId = instanceid
          @UserName = username
          @Host = host
          @Password = password
          @ReadOnly = readonly
          @Description = description
          @DelayThresh = delaythresh
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @Host = params['Host']
          @Password = params['Password']
          @ReadOnly = params['ReadOnly']
          @Description = params['Description']
          @DelayThresh = params['DelayThresh']
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
        # @param DbVersionId: 数据库引擎版本，当前可选：10.0.10，10.1.9，5.7.17。
        # 10.0.10 - Mariadb 10.0.10；
        # 10.1.9 - Mariadb 10.1.9；
        # 5.7.17 - Percona 5.7.17。
        # 如果不填的话，默认为10.1.9，表示Mariadb 10.1.9。
        # @type DbVersionId: String
        # @param AutoVoucher: 是否自动使用代金券进行支付，默认不使用。
        # @type AutoVoucher: Boolean
        # @param VoucherIds: 代金券ID列表，目前仅支持指定一张代金券。
        # @type VoucherIds: Array
        # @param SecurityGroupId: 安全组id
        # @type SecurityGroupId: String
        # @param InstanceName: 实例名称， 可以通过该字段自主的设置实例的名字
        # @type InstanceName: String
        # @param Ipv6Flag: 是否支持IPv6
        # @type Ipv6Flag: Integer
        # @param ResourceTags: 标签键值对数组
        # @type ResourceTags: Array

        attr_accessor :Zones, :Period, :ShardMemory, :ShardStorage, :ShardNodeCount, :ShardCount, :Count, :ProjectId, :VpcId, :SubnetId, :DbVersionId, :AutoVoucher, :VoucherIds, :SecurityGroupId, :InstanceName, :Ipv6Flag, :ResourceTags
        
        def initialize(zones=nil, period=nil, shardmemory=nil, shardstorage=nil, shardnodecount=nil, shardcount=nil, count=nil, projectid=nil, vpcid=nil, subnetid=nil, dbversionid=nil, autovoucher=nil, voucherids=nil, securitygroupid=nil, instancename=nil, ipv6flag=nil, resourcetags=nil)
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
              @ResourceTags << ResourceTag.new.deserialize(i)
            end
          end
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

        attr_accessor :UserName, :Host, :Description, :CreateTime, :UpdateTime, :ReadOnly, :DelayThresh
        
        def initialize(username=nil, host=nil, description=nil, createtime=nil, updatetime=nil, readonly=nil, delaythresh=nil)
          @UserName = username
          @Host = host
          @Description = description
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ReadOnly = readonly
          @DelayThresh = delaythresh
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Host = params['Host']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ReadOnly = params['ReadOnly']
          @DelayThresh = params['DelayThresh']
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
        # @param Status: 状态
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

        attr_accessor :InstanceId, :InstanceName, :AppId, :ProjectId, :Region, :Zone, :VpcId, :SubnetId, :StatusDesc, :Status, :Vip, :Vport, :CreateTime, :AutoRenewFlag, :Memory, :Storage, :ShardCount, :PeriodEndTime, :IsolatedTimestamp, :Uin, :ShardDetail, :NodeCount, :IsTmp, :ExclusterId, :UniqueVpcId, :UniqueSubnetId, :Id, :WanDomain, :WanVip, :WanPort, :Pid, :UpdateTime, :DbEngine, :DbVersion, :Paymode, :Locker, :WanStatus, :IsAuditSupported, :Cpu, :Ipv6Flag, :Vipv6, :WanVipv6, :WanPortIpv6, :WanStatusIpv6, :DcnFlag, :DcnStatus, :DcnDstNum, :InstanceType
        
        def initialize(instanceid=nil, instancename=nil, appid=nil, projectid=nil, region=nil, zone=nil, vpcid=nil, subnetid=nil, statusdesc=nil, status=nil, vip=nil, vport=nil, createtime=nil, autorenewflag=nil, memory=nil, storage=nil, shardcount=nil, periodendtime=nil, isolatedtimestamp=nil, uin=nil, sharddetail=nil, nodecount=nil, istmp=nil, exclusterid=nil, uniquevpcid=nil, uniquesubnetid=nil, id=nil, wandomain=nil, wanvip=nil, wanport=nil, pid=nil, updatetime=nil, dbengine=nil, dbversion=nil, paymode=nil, locker=nil, wanstatus=nil, isauditsupported=nil, cpu=nil, ipv6flag=nil, vipv6=nil, wanvipv6=nil, wanportipv6=nil, wanstatusipv6=nil, dcnflag=nil, dcnstatus=nil, dcndstnum=nil, instancetype=nil)
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
              @ShardDetail << ShardInfo.new.deserialize(i)
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
        # @param InstanceIds: 只有创建实例的订单会填充该字段，表示该订单创建的实例的 ID。
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
              @Users << DBAccount.new.deserialize(i)
            end
          end
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
              @Files << LogFileInfo.new.deserialize(i)
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
              @Params << ParamDesc.new.deserialize(i)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Groups, :RequestId
        
        def initialize(groups=nil, requestid=nil)
          @Groups = groups
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              @Groups << SecurityGroup.new.deserialize(i)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SyncMode, :IsModifying, :RequestId
        
        def initialize(syncmode=nil, ismodifying=nil, requestid=nil)
          @SyncMode = syncmode
          @IsModifying = ismodifying
          @RequestId = requestid
        end

        def deserialize(params)
          @SyncMode = params['SyncMode']
          @IsModifying = params['IsModifying']
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

        attr_accessor :InstanceIds, :SearchName, :SearchKey, :ProjectIds, :IsFilterVpc, :VpcId, :SubnetId, :OrderBy, :OrderByType, :Offset, :Limit, :ExclusterType, :IsFilterExcluster, :ExclusterIds, :TagKeys, :FilterInstanceType
        
        def initialize(instanceids=nil, searchname=nil, searchkey=nil, projectids=nil, isfiltervpc=nil, vpcid=nil, subnetid=nil, orderby=nil, orderbytype=nil, offset=nil, limit=nil, exclustertype=nil, isfilterexcluster=nil, exclusterids=nil, tagkeys=nil, filterinstancetype=nil)
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
              @Instances << DCDBInstanceInfo.new.deserialize(i)
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

        attr_accessor :Zone, :Count, :Period, :ShardNodeCount, :ShardMemory, :ShardStorage, :ShardCount, :Paymode
        
        def initialize(zone=nil, count=nil, period=nil, shardnodecount=nil, shardmemory=nil, shardstorage=nil, shardcount=nil, paymode=nil)
          @Zone = zone
          @Count = count
          @Period = period
          @ShardNodeCount = shardnodecount
          @ShardMemory = shardmemory
          @ShardStorage = shardstorage
          @ShardCount = shardcount
          @Paymode = paymode
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
        end
      end

      # DescribeDCDBPrice返回参数结构体
      class DescribeDCDBPriceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 原价，单位：分
        # @type OriginalPrice: Integer
        # @param Price: 实际价格，单位：分。受折扣等影响，可能和原价不同。
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

        attr_accessor :InstanceId, :Period
        
        def initialize(instanceid=nil, period=nil)
          @InstanceId = instanceid
          @Period = period
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Period = params['Period']
        end
      end

      # DescribeDCDBRenewalPrice返回参数结构体
      class DescribeDCDBRenewalPriceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 原价，单位：分
        # @type OriginalPrice: Integer
        # @param Price: 实际价格，单位：分。受折扣等影响，可能和原价不同。
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
              @RegionList << RegionInfo.new.deserialize(i)
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
              @Shards << DCDBShardInfo.new.deserialize(i)
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

        attr_accessor :InstanceId, :UpgradeType, :AddShardConfig, :ExpandShardConfig, :SplitShardConfig
        
        def initialize(instanceid=nil, upgradetype=nil, addshardconfig=nil, expandshardconfig=nil, splitshardconfig=nil)
          @InstanceId = instanceid
          @UpgradeType = upgradetype
          @AddShardConfig = addshardconfig
          @ExpandShardConfig = expandshardconfig
          @SplitShardConfig = splitshardconfig
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UpgradeType = params['UpgradeType']
          unless params['AddShardConfig'].nil?
            @AddShardConfig = AddShardConfig.new.deserialize(params['AddShardConfig'])
          end
          unless params['ExpandShardConfig'].nil?
            @ExpandShardConfig = ExpandShardConfig.new.deserialize(params['ExpandShardConfig'])
          end
          unless params['SplitShardConfig'].nil?
            @SplitShardConfig = SplitShardConfig.new.deserialize(params['SplitShardConfig'])
          end
        end
      end

      # DescribeDCDBUpgradePrice返回参数结构体
      class DescribeDCDBUpgradePriceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 原价，单位：分
        # @type OriginalPrice: Integer
        # @param Price: 实际价格，单位：分。受折扣等影响，可能和原价不同。
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
              @Tables << DatabaseTable.new.deserialize(i)
            end
          end
          unless params['Views'].nil?
            @Views = []
            params['Views'].each do |i|
              @Views << DatabaseView.new.deserialize(i)
            end
          end
          unless params['Procs'].nil?
            @Procs = []
            params['Procs'].each do |i|
              @Procs << DatabaseProcedure.new.deserialize(i)
            end
          end
          unless params['Funcs'].nil?
            @Funcs = []
            params['Funcs'].each do |i|
              @Funcs << DatabaseFunction.new.deserialize(i)
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
              @Cols << TableColumn.new.deserialize(i)
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
              @Databases << Database.new.deserialize(i)
            end
          end
          @InstanceId = params['InstanceId']
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
        # @type TotalCount: Array
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
              @Deals << Deal.new.deserialize(i)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Groups, :RequestId
        
        def initialize(groups=nil, requestid=nil)
          @Groups = groups
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              @Groups << SecurityGroup.new.deserialize(i)
            end
          end
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
              @Projects << Project.new.deserialize(i)
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
              @SpecConfig << SpecConfig.new.deserialize(i)
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
              @SqlItems << SqlLogItem.new.deserialize(i)
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
              @FlowSet << UserTaskInfo.new.deserialize(i)
            end
          end
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

        attr_accessor :ShardInstanceIds, :ShardMemory, :ShardStorage
        
        def initialize(shardinstanceids=nil, shardmemory=nil, shardstorage=nil)
          @ShardInstanceIds = shardinstanceids
          @ShardMemory = shardmemory
          @ShardStorage = shardstorage
        end

        def deserialize(params)
          @ShardInstanceIds = params['ShardInstanceIds']
          @ShardMemory = params['ShardMemory']
          @ShardStorage = params['ShardStorage']
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
        # @param Privileges: 全局权限： SELECT，INSERT，UPDATE，DELETE，CREATE，DROP，REFERENCES，INDEX，ALTER，CREATE TEMPORARY TABLES，LOCK TABLES，EXECUTE，CREATE VIEW，SHOW VIEW，CREATE ROUTINE，ALTER ROUTINE，EVENT，TRIGGER，SHOW DATABASES
        # 库权限： SELECT，INSERT，UPDATE，DELETE，CREATE，DROP，REFERENCES，INDEX，ALTER，CREATE TEMPORARY TABLES，LOCK TABLES，EXECUTE，CREATE VIEW，SHOW VIEW，CREATE ROUTINE，ALTER ROUTINE，EVENT，TRIGGER
        # 表/视图权限： SELECT，INSERT，UPDATE，DELETE，CREATE，DROP，REFERENCES，INDEX，ALTER，CREATE VIEW，SHOW VIEW，TRIGGER
        # 存储过程/函数权限： ALTER ROUTINE，EXECUTE
        # 字段权限： INSERT，REFERENCES，SELECT，UPDATE
        # @type Privileges: Array
        # @param Type: 类型,可以填入 table 、 view 、 proc 、 func 和 \*。当 DbName 为具体数据库名，Type为 \* 时，表示设置该数据库权限（即db.\*），此时忽略 Object 参数
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
              @Params << DBParamValue.new.deserialize(i)
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
              @Params << DBParamValue.new.deserialize(i)
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
              @Result << ParamModifyResult.new.deserialize(i)
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
            @Range = ConstraintRange.new.deserialize(params['Range'])
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

        attr_accessor :Param, :Value, :SetValue, :Default, :Constraint, :HaveSetValue
        
        def initialize(param=nil, value=nil, setvalue=nil, default=nil, constraint=nil, havesetvalue=nil)
          @Param = param
          @Value = value
          @SetValue = setvalue
          @Default = default
          @Constraint = constraint
          @HaveSetValue = havesetvalue
        end

        def deserialize(params)
          @Param = params['Param']
          @Value = params['Value']
          @SetValue = params['SetValue']
          @Default = params['Default']
          unless params['Constraint'].nil?
            @Constraint = ParamConstraint.new.deserialize(params['Constraint'])
          end
          @HaveSetValue = params['HaveSetValue']
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
              @ZoneList << ZonesInfo.new.deserialize(i)
            end
          end
          unless params['AvailableChoice'].nil?
            @AvailableChoice = []
            params['AvailableChoice'].each do |i|
              @AvailableChoice << ShardZoneChooseInfo.new.deserialize(i)
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
              @Inbound << SecurityGroupBound.new.deserialize(i)
            end
          end
          unless params['Outbound'].nil?
            @Outbound = []
            params['Outbound'].each do |i|
              @Outbound << SecurityGroupBound.new.deserialize(i)
            end
          end
        end
      end

      # 安全出入口规则
      class SecurityGroupBound < TencentCloud::Common::AbstractModel
        # @param Action: 策略，ACCEPT 或者 DROP
        # @type Action: String
        # @param CidrIp: 来源 IP 或 IP 段，例如192.168.0.0/16
        # @type CidrIp: String
        # @param PortRange: 端口
        # @type PortRange: String
        # @param IpProtocol: 网络协议，支持 UDP、TCP 等
        # @type IpProtocol: String

        attr_accessor :Action, :CidrIp, :PortRange, :IpProtocol
        
        def initialize(action=nil, cidrip=nil, portrange=nil, ipprotocol=nil)
          @Action = action
          @CidrIp = cidrip
          @PortRange = portrange
          @IpProtocol = ipprotocol
        end

        def deserialize(params)
          @Action = params['Action']
          @CidrIp = params['CidrIp']
          @PortRange = params['PortRange']
          @IpProtocol = params['IpProtocol']
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
            @MasterZone = ZonesInfo.new.deserialize(params['MasterZone'])
          end
          unless params['SlaveZones'].nil?
            @SlaveZones = []
            params['SlaveZones'].each do |i|
              @SlaveZones << ZonesInfo.new.deserialize(i)
            end
          end
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
              @SpecConfigInfos << SpecConfigInfo.new.deserialize(i)
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
        # @param SplitRate: 数据切分比例
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

        attr_accessor :InstanceId, :UpgradeType, :AddShardConfig, :ExpandShardConfig, :SplitShardConfig, :AutoVoucher, :VoucherIds
        
        def initialize(instanceid=nil, upgradetype=nil, addshardconfig=nil, expandshardconfig=nil, splitshardconfig=nil, autovoucher=nil, voucherids=nil)
          @InstanceId = instanceid
          @UpgradeType = upgradetype
          @AddShardConfig = addshardconfig
          @ExpandShardConfig = expandshardconfig
          @SplitShardConfig = splitshardconfig
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UpgradeType = params['UpgradeType']
          unless params['AddShardConfig'].nil?
            @AddShardConfig = AddShardConfig.new.deserialize(params['AddShardConfig'])
          end
          unless params['ExpandShardConfig'].nil?
            @ExpandShardConfig = ExpandShardConfig.new.deserialize(params['ExpandShardConfig'])
          end
          unless params['SplitShardConfig'].nil?
            @SplitShardConfig = SplitShardConfig.new.deserialize(params['SplitShardConfig'])
          end
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
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

      # 可用区信息
      class ZonesInfo < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区英文ID
        # @type Zone: String
        # @param ZoneId: 可用区数字ID
        # @type ZoneId: Integer
        # @param ZoneName: 可用区中文名
        # @type ZoneName: String

        attr_accessor :Zone, :ZoneId, :ZoneName
        
        def initialize(zone=nil, zoneid=nil, zonename=nil)
          @Zone = zone
          @ZoneId = zoneid
          @ZoneName = zonename
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
        end
      end

    end
  end
end

