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
  module Mariadb
    module V20170312
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
        # @param FlowId: 异步任务流程ID。
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
        # @param InstanceId: 待关闭外网访问的实例ID。形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
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
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
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
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
        # @type InstanceId: String
        # @param UserName: 登录用户名，由字母、数字、下划线和连字符组成，长度为1~32位。
        # @type UserName: String
        # @param Host: 可以登录的主机，与mysql 账号的 host 格式一致，可以支持通配符，例如 %，10.%，10.20.%。
        # @type Host: String
        # @param Password: 账号密码，由字母、数字或常见符号组成，不能包含分号、单引号和双引号，长度为6~32位。
        # @type Password: String
        # @param ReadOnly: 是否创建为只读账号，0：否， 1：该账号的sql请求优先选择备机执行，备机不可用时选择主机执行，2：优先选择备机执行，备机不可用时操作失败。
        # @type ReadOnly: Integer
        # @param Description: 账号备注，可以包含中文、英文字符、常见符号和数字，长度为0~256字符
        # @type Description: String
        # @param DelayThresh: 根据传入时间判断备机不可用
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

      # CreateDBInstance请求参数结构体
      class CreateDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Zones: 实例节点可用区分布，最多可填两个可用区。当分片规格为一主两从时，其中两个节点在第一个可用区。
        # @type Zones: Array
        # @param NodeCount: 节点个数大小，可以通过 DescribeDBInstanceSpecs
        #  查询实例规格获得。
        # @type NodeCount: Integer
        # @param Memory: 内存大小，单位：GB，可以通过 DescribeDBInstanceSpecs
        #  查询实例规格获得。
        # @type Memory: Integer
        # @param Storage: 存储空间大小，单位：GB，可以通过 DescribeDBInstanceSpecs
        #  查询实例规格获得不同内存大小对应的磁盘规格下限和上限。
        # @type Storage: Integer
        # @param Period: 欲购买的时长，单位：月。
        # @type Period: Integer
        # @param Count: 欲购买的数量，默认查询购买1个实例的价格。
        # @type Count: Integer
        # @param AutoVoucher: 是否自动使用代金券进行支付，默认不使用。
        # @type AutoVoucher: Boolean
        # @param VoucherIds: 代金券ID列表，目前仅支持指定一张代金券。
        # @type VoucherIds: Array
        # @param VpcId: 虚拟私有网络 ID，不传表示创建为基础网络
        # @type VpcId: String
        # @param SubnetId: 虚拟私有网络子网 ID，VpcId 不为空时必填
        # @type SubnetId: String
        # @param ProjectId: 项目 ID，可以通过查看项目列表获取，不传则关联到默认项目
        # @type ProjectId: Integer
        # @param DbVersionId: 数据库引擎版本，当前可选：10.0.10，10.1.9，5.7.17。如果不传的话，默认为 Mariadb 10.1.9。
        # @type DbVersionId: String
        # @param InstanceName: 实例名称， 可以通过该字段自主的设置实例的名字
        # @type InstanceName: String
        # @param SecurityGroupIds: 安全组ID列表
        # @type SecurityGroupIds: Array
        # @param AutoRenewFlag: 自动续费标志，1:自动续费，2:不自动续费
        # @type AutoRenewFlag: Integer
        # @param Ipv6Flag: 是否支持IPv6
        # @type Ipv6Flag: Integer

        attr_accessor :Zones, :NodeCount, :Memory, :Storage, :Period, :Count, :AutoVoucher, :VoucherIds, :VpcId, :SubnetId, :ProjectId, :DbVersionId, :InstanceName, :SecurityGroupIds, :AutoRenewFlag, :Ipv6Flag
        
        def initialize(zones=nil, nodecount=nil, memory=nil, storage=nil, period=nil, count=nil, autovoucher=nil, voucherids=nil, vpcid=nil, subnetid=nil, projectid=nil, dbversionid=nil, instancename=nil, securitygroupids=nil, autorenewflag=nil, ipv6flag=nil)
          @Zones = zones
          @NodeCount = nodecount
          @Memory = memory
          @Storage = storage
          @Period = period
          @Count = count
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @VpcId = vpcid
          @SubnetId = subnetid
          @ProjectId = projectid
          @DbVersionId = dbversionid
          @InstanceName = instancename
          @SecurityGroupIds = securitygroupids
          @AutoRenewFlag = autorenewflag
          @Ipv6Flag = ipv6flag
        end

        def deserialize(params)
          @Zones = params['Zones']
          @NodeCount = params['NodeCount']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @Period = params['Period']
          @Count = params['Count']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ProjectId = params['ProjectId']
          @DbVersionId = params['DbVersionId']
          @InstanceName = params['InstanceName']
          @SecurityGroupIds = params['SecurityGroupIds']
          @AutoRenewFlag = params['AutoRenewFlag']
          @Ipv6Flag = params['Ipv6Flag']
        end
      end

      # CreateDBInstance返回参数结构体
      class CreateDBInstanceResponse < TencentCloud::Common::AbstractModel
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

      # CreateTmpInstances请求参数结构体
      class CreateTmpInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 回档实例的ID列表，形如：tdsql-ow728lmc。
        # @type InstanceIds: Array
        # @param RollbackTime: 回档时间点
        # @type RollbackTime: String

        attr_accessor :InstanceIds, :RollbackTime
        
        def initialize(instanceids=nil, rollbacktime=nil)
          @InstanceIds = instanceids
          @RollbackTime = rollbacktime
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @RollbackTime = params['RollbackTime']
        end
      end

      # CreateTmpInstances返回参数结构体
      class CreateTmpInstancesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务流程ID。
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
        # @param DelayThresh: 该字段对只读帐号有意义，表示选择主备延迟小于该值的备机
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 云数据库实例备份时间配置信息
      class DBBackupTimeConfig < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param StartBackupTime: 每天备份执行的区间的开始时间，格式 mm:ss，形如 22:00
        # @type StartBackupTime: String
        # @param EndBackupTime: 每天备份执行的区间的结束时间，格式 mm:ss，形如 23:00
        # @type EndBackupTime: String

        attr_accessor :InstanceId, :StartBackupTime, :EndBackupTime
        
        def initialize(instanceid=nil, startbackuptime=nil, endbackuptime=nil)
          @InstanceId = instanceid
          @StartBackupTime = startbackuptime
          @EndBackupTime = endbackuptime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartBackupTime = params['StartBackupTime']
          @EndBackupTime = params['EndBackupTime']
        end
      end

      # 描述云数据库实例的详细信息。
      class DBInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，唯一标识一个 TDSQL 实例
        # @type InstanceId: String
        # @param InstanceName: 实例名称，用户可修改
        # @type InstanceName: String
        # @param AppId: 实例所属应用 ID
        # @type AppId: Integer
        # @param ProjectId: 实例所属项目 ID
        # @type ProjectId: Integer
        # @param Region: 实例所在地域名称，如 ap-shanghai
        # @type Region: String
        # @param Zone: 实例所在可用区名称，如 ap-shanghai-1
        # @type Zone: String
        # @param VpcId: 私有网络 ID，基础网络时为 0
        # @type VpcId: Integer
        # @param SubnetId: 子网 ID，基础网络时为 0
        # @type SubnetId: Integer
        # @param Status: 实例状态：0 创建中，1 流程处理中， 2 运行中，3 实例未初始化，-1 实例已隔离，-2 实例已删除
        # @type Status: Integer
        # @param Vip: 内网 IP 地址
        # @type Vip: String
        # @param Vport: 内网端口
        # @type Vport: Integer
        # @param WanDomain: 外网访问的域名，公网可解析
        # @type WanDomain: String
        # @param WanVip: 外网 IP 地址，公网可访问
        # @type WanVip: String
        # @param WanPort: 外网端口
        # @type WanPort: Integer
        # @param CreateTime: 实例创建时间，格式为 2006-01-02 15:04:05
        # @type CreateTime: String
        # @param UpdateTime: 实例最后更新时间，格式为 2006-01-02 15:04:05
        # @type UpdateTime: String
        # @param AutoRenewFlag: 自动续费标志：0 否，1 是
        # @type AutoRenewFlag: Integer
        # @param PeriodEndTime: 实例到期时间，格式为 2006-01-02 15:04:05
        # @type PeriodEndTime: String
        # @param Uin: 实例所属账号
        # @type Uin: String
        # @param TdsqlVersion: TDSQL 版本信息
        # @type TdsqlVersion: String
        # @param Memory: 实例内存大小，单位 GB
        # @type Memory: Integer
        # @param Storage: 实例存储大小，单位 GB
        # @type Storage: Integer
        # @param UniqueVpcId: 字符串型的私有网络ID
        # @type UniqueVpcId: String
        # @param UniqueSubnetId: 字符串型的私有网络子网ID
        # @type UniqueSubnetId: String
        # @param OriginSerialId: 原始实例ID（过时字段，请勿依赖该值）
        # @type OriginSerialId: String
        # @param NodeCount: 节点数，2为一主一从，3为一主二从
        # @type NodeCount: Integer
        # @param IsTmp: 是否临时实例，0为否，非0为是
        # @type IsTmp: Integer
        # @param ExclusterId: 独享集群ID，为空表示为普通实例
        # @type ExclusterId: String
        # @param Id: 数字实例ID（过时字段，请勿依赖该值）
        # @type Id: Integer
        # @param Pid: 产品类型 ID
        # @type Pid: Integer
        # @param Qps: 最大 Qps 值
        # @type Qps: Integer
        # @param Paymode: 付费模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Paymode: String
        # @param Locker: 实例处于异步任务时的异步任务流程ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Locker: Integer
        # @param StatusDesc: 实例目前运行状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param WanStatus: 外网状态，0-未开通；1-已开通；2-关闭；3-开通中
        # @type WanStatus: Integer
        # @param IsAuditSupported: 该实例是否支持审计。1-支持；0-不支持
        # @type IsAuditSupported: Integer
        # @param Machine: 机器型号
        # @type Machine: String
        # @param IsEncryptSupported: 是否支持数据加密。1-支持；0-不支持
        # @type IsEncryptSupported: Integer
        # @param Cpu: 实例CPU核数
        # @type Cpu: Integer

        attr_accessor :InstanceId, :InstanceName, :AppId, :ProjectId, :Region, :Zone, :VpcId, :SubnetId, :Status, :Vip, :Vport, :WanDomain, :WanVip, :WanPort, :CreateTime, :UpdateTime, :AutoRenewFlag, :PeriodEndTime, :Uin, :TdsqlVersion, :Memory, :Storage, :UniqueVpcId, :UniqueSubnetId, :OriginSerialId, :NodeCount, :IsTmp, :ExclusterId, :Id, :Pid, :Qps, :Paymode, :Locker, :StatusDesc, :WanStatus, :IsAuditSupported, :Machine, :IsEncryptSupported, :Cpu
        
        def initialize(instanceid=nil, instancename=nil, appid=nil, projectid=nil, region=nil, zone=nil, vpcid=nil, subnetid=nil, status=nil, vip=nil, vport=nil, wandomain=nil, wanvip=nil, wanport=nil, createtime=nil, updatetime=nil, autorenewflag=nil, periodendtime=nil, uin=nil, tdsqlversion=nil, memory=nil, storage=nil, uniquevpcid=nil, uniquesubnetid=nil, originserialid=nil, nodecount=nil, istmp=nil, exclusterid=nil, id=nil, pid=nil, qps=nil, paymode=nil, locker=nil, statusdesc=nil, wanstatus=nil, isauditsupported=nil, machine=nil, isencryptsupported=nil, cpu=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @AppId = appid
          @ProjectId = projectid
          @Region = region
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @Vip = vip
          @Vport = vport
          @WanDomain = wandomain
          @WanVip = wanvip
          @WanPort = wanport
          @CreateTime = createtime
          @UpdateTime = updatetime
          @AutoRenewFlag = autorenewflag
          @PeriodEndTime = periodendtime
          @Uin = uin
          @TdsqlVersion = tdsqlversion
          @Memory = memory
          @Storage = storage
          @UniqueVpcId = uniquevpcid
          @UniqueSubnetId = uniquesubnetid
          @OriginSerialId = originserialid
          @NodeCount = nodecount
          @IsTmp = istmp
          @ExclusterId = exclusterid
          @Id = id
          @Pid = pid
          @Qps = qps
          @Paymode = paymode
          @Locker = locker
          @StatusDesc = statusdesc
          @WanStatus = wanstatus
          @IsAuditSupported = isauditsupported
          @Machine = machine
          @IsEncryptSupported = isencryptsupported
          @Cpu = cpu
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
          @Status = params['Status']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @WanDomain = params['WanDomain']
          @WanVip = params['WanVip']
          @WanPort = params['WanPort']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @AutoRenewFlag = params['AutoRenewFlag']
          @PeriodEndTime = params['PeriodEndTime']
          @Uin = params['Uin']
          @TdsqlVersion = params['TdsqlVersion']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @UniqueVpcId = params['UniqueVpcId']
          @UniqueSubnetId = params['UniqueSubnetId']
          @OriginSerialId = params['OriginSerialId']
          @NodeCount = params['NodeCount']
          @IsTmp = params['IsTmp']
          @ExclusterId = params['ExclusterId']
          @Id = params['Id']
          @Pid = params['Pid']
          @Qps = params['Qps']
          @Paymode = params['Paymode']
          @Locker = params['Locker']
          @StatusDesc = params['StatusDesc']
          @WanStatus = params['WanStatus']
          @IsAuditSupported = params['IsAuditSupported']
          @Machine = params['Machine']
          @IsEncryptSupported = params['IsEncryptSupported']
          @Cpu = params['Cpu']
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
        # @param InstanceId: 实例ID，形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
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
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
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
        # @param InstanceId: 实例ID，形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
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
          @Users = params['Users']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupTime请求参数结构体
      class DescribeBackupTimeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID，形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds
        
        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeBackupTime返回参数结构体
      class DescribeBackupTimeResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的配置数量
        # @type TotalCount: Integer
        # @param Items: 实例备份时间配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId
        
        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Items = params['Items']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceSpecs请求参数结构体
      class DescribeDBInstanceSpecsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDBInstanceSpecs返回参数结构体
      class DescribeDBInstanceSpecsResponse < TencentCloud::Common::AbstractModel
        # @param Specs: 按机型分类的可售卖规格列表
        # @type Specs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Specs, :RequestId
        
        def initialize(specs=nil, requestid=nil)
          @Specs = specs
          @RequestId = requestid
        end

        def deserialize(params)
          @Specs = params['Specs']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstances请求参数结构体
      class DescribeDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 按照一个或者多个实例 ID 查询。实例 ID 形如：tdsql-ow728lmc。每次请求的实例的上限为100。
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
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param OriginSerialIds: 按 OriginSerialId 查询
        # @type OriginSerialIds: Array
        # @param IsFilterExcluster: 标识是否使用ExclusterType字段, false不使用，true使用
        # @type IsFilterExcluster: Boolean
        # @param ExclusterType: 实例所属独享集群类型。取值范围：1-非独享集群，2-独享集群， 0-全部
        # @type ExclusterType: Integer
        # @param ExclusterIds: 按独享集群ID过滤实例，独享集群ID形如dbdc-4ih6uct9
        # @type ExclusterIds: Array

        attr_accessor :InstanceIds, :SearchName, :SearchKey, :ProjectIds, :IsFilterVpc, :VpcId, :SubnetId, :OrderBy, :OrderByType, :Offset, :Limit, :OriginSerialIds, :IsFilterExcluster, :ExclusterType, :ExclusterIds
        
        def initialize(instanceids=nil, searchname=nil, searchkey=nil, projectids=nil, isfiltervpc=nil, vpcid=nil, subnetid=nil, orderby=nil, orderbytype=nil, offset=nil, limit=nil, originserialids=nil, isfilterexcluster=nil, exclustertype=nil, exclusterids=nil)
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
          @OriginSerialIds = originserialids
          @IsFilterExcluster = isfilterexcluster
          @ExclusterType = exclustertype
          @ExclusterIds = exclusterids
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
          @OriginSerialIds = params['OriginSerialIds']
          @IsFilterExcluster = params['IsFilterExcluster']
          @ExclusterType = params['ExclusterType']
          @ExclusterIds = params['ExclusterIds']
        end
      end

      # DescribeDBInstances返回参数结构体
      class DescribeDBInstancesResponse < TencentCloud::Common::AbstractModel
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
          @Instances = params['Instances']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBLogFiles请求参数结构体
      class DescribeDBLogFilesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc。
        # @type InstanceId: String
        # @param Type: 请求日志类型，取值只能为1、2、3或者4。1-binlog，2-冷备，3-errlog，4-slowlog。
        # @type Type: Integer

        attr_accessor :InstanceId, :Type
        
        def initialize(instanceid=nil, type=nil)
          @InstanceId = instanceid
          @Type = type
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
        end
      end

      # DescribeDBLogFiles返回参数结构体
      class DescribeDBLogFilesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc。
        # @type InstanceId: String
        # @param Type: 请求日志类型，取值只能为1、2、3或者4。1-binlog，2-冷备，3-errlog，4-slowlog。
        # @type Type: Integer
        # @param Total: 请求日志总数
        # @type Total: Integer
        # @param Files: 包含uri、length、mtime（修改时间）等信息
        # @type Files: Array
        # @param VpcPrefix: 如果是VPC网络的实例，做用本前缀加上URI为下载地址
        # @type VpcPrefix: String
        # @param NormalPrefix: 如果是普通网络的实例，做用本前缀加上URI为下载地址
        # @type NormalPrefix: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Type, :Total, :Files, :VpcPrefix, :NormalPrefix, :RequestId
        
        def initialize(instanceid=nil, type=nil, total=nil, files=nil, vpcprefix=nil, normalprefix=nil, requestid=nil)
          @InstanceId = instanceid
          @Type = type
          @Total = total
          @Files = files
          @VpcPrefix = vpcprefix
          @NormalPrefix = normalprefix
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          @Total = params['Total']
          @Files = params['Files']
          @VpcPrefix = params['VpcPrefix']
          @NormalPrefix = params['NormalPrefix']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBParameters请求参数结构体
      class DescribeDBParametersRequest < TencentCloud::Common::AbstractModel
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

      # DescribeDBParameters返回参数结构体
      class DescribeDBParametersResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc。
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
          @Params = params['Params']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBPerformanceDetails请求参数结构体
      class DescribeDBPerformanceDetailsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc。
        # @type InstanceId: String
        # @param StartTime: 开始日期，格式yyyy-mm-dd
        # @type StartTime: String
        # @param EndTime: 结束日期，格式yyyy-mm-dd
        # @type EndTime: String
        # @param MetricName: 拉取的指标名，支持的值为：long_query,select_total,update_total,insert_total,delete_total,mem_hit_rate,disk_iops,conn_active,is_master_switched,slave_delay
        # @type MetricName: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :MetricName
        
        def initialize(instanceid=nil, starttime=nil, endtime=nil, metricname=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
        end
      end

      # DescribeDBPerformanceDetails返回参数结构体
      class DescribeDBPerformanceDetailsResponse < TencentCloud::Common::AbstractModel
        # @param Master: 主节点性能监控数据
        # @type Master: :class:`Tencentcloud::Mariadb.v20170312.models.PerformanceMonitorSet`
        # @param Slave1: 备机1性能监控数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Slave1: :class:`Tencentcloud::Mariadb.v20170312.models.PerformanceMonitorSet`
        # @param Slave2: 备机2性能监控数据，如果实例是一主一从，则没有该字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Slave2: :class:`Tencentcloud::Mariadb.v20170312.models.PerformanceMonitorSet`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Master, :Slave1, :Slave2, :RequestId
        
        def initialize(master=nil, slave1=nil, slave2=nil, requestid=nil)
          @Master = master
          @Slave1 = slave1
          @Slave2 = slave2
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Master'].nil?
            @Master = PerformanceMonitorSet.new.deserialize(params[Master])
          end
          unless params['Slave1'].nil?
            @Slave1 = PerformanceMonitorSet.new.deserialize(params[Slave1])
          end
          unless params['Slave2'].nil?
            @Slave2 = PerformanceMonitorSet.new.deserialize(params[Slave2])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBPerformance请求参数结构体
      class DescribeDBPerformanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc。
        # @type InstanceId: String
        # @param StartTime: 开始日期，格式yyyy-mm-dd
        # @type StartTime: String
        # @param EndTime: 结束日期，格式yyyy-mm-dd
        # @type EndTime: String
        # @param MetricName: 拉取的指标名，支持的值为：long_query,select_total,update_total,insert_total,delete_total,mem_hit_rate,disk_iops,conn_active,is_master_switched,slave_delay
        # @type MetricName: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :MetricName
        
        def initialize(instanceid=nil, starttime=nil, endtime=nil, metricname=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
        end
      end

      # DescribeDBPerformance返回参数结构体
      class DescribeDBPerformanceResponse < TencentCloud::Common::AbstractModel
        # @param LongQuery: 慢查询数
        # @type LongQuery: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param SelectTotal: 查询操作数SELECT
        # @type SelectTotal: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param UpdateTotal: 更新操作数UPDATE
        # @type UpdateTotal: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param InsertTotal: 插入操作数INSERT
        # @type InsertTotal: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param DeleteTotal: 删除操作数DELETE
        # @type DeleteTotal: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param MemHitRate: 缓存命中率
        # @type MemHitRate: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param DiskIops: 磁盘每秒IO次数
        # @type DiskIops: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param ConnActive: 活跃连接数
        # @type ConnActive: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param IsMasterSwitched: 是否发生主备切换，1为发生，0否
        # @type IsMasterSwitched: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param SlaveDelay: 主备延迟
        # @type SlaveDelay: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LongQuery, :SelectTotal, :UpdateTotal, :InsertTotal, :DeleteTotal, :MemHitRate, :DiskIops, :ConnActive, :IsMasterSwitched, :SlaveDelay, :RequestId
        
        def initialize(longquery=nil, selecttotal=nil, updatetotal=nil, inserttotal=nil, deletetotal=nil, memhitrate=nil, diskiops=nil, connactive=nil, ismasterswitched=nil, slavedelay=nil, requestid=nil)
          @LongQuery = longquery
          @SelectTotal = selecttotal
          @UpdateTotal = updatetotal
          @InsertTotal = inserttotal
          @DeleteTotal = deletetotal
          @MemHitRate = memhitrate
          @DiskIops = diskiops
          @ConnActive = connactive
          @IsMasterSwitched = ismasterswitched
          @SlaveDelay = slavedelay
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LongQuery'].nil?
            @LongQuery = MonitorData.new.deserialize(params[LongQuery])
          end
          unless params['SelectTotal'].nil?
            @SelectTotal = MonitorData.new.deserialize(params[SelectTotal])
          end
          unless params['UpdateTotal'].nil?
            @UpdateTotal = MonitorData.new.deserialize(params[UpdateTotal])
          end
          unless params['InsertTotal'].nil?
            @InsertTotal = MonitorData.new.deserialize(params[InsertTotal])
          end
          unless params['DeleteTotal'].nil?
            @DeleteTotal = MonitorData.new.deserialize(params[DeleteTotal])
          end
          unless params['MemHitRate'].nil?
            @MemHitRate = MonitorData.new.deserialize(params[MemHitRate])
          end
          unless params['DiskIops'].nil?
            @DiskIops = MonitorData.new.deserialize(params[DiskIops])
          end
          unless params['ConnActive'].nil?
            @ConnActive = MonitorData.new.deserialize(params[ConnActive])
          end
          unless params['IsMasterSwitched'].nil?
            @IsMasterSwitched = MonitorData.new.deserialize(params[IsMasterSwitched])
          end
          unless params['SlaveDelay'].nil?
            @SlaveDelay = MonitorData.new.deserialize(params[SlaveDelay])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBResourceUsageDetails请求参数结构体
      class DescribeDBResourceUsageDetailsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc。
        # @type InstanceId: String
        # @param StartTime: 开始日期，格式yyyy-mm-dd
        # @type StartTime: String
        # @param EndTime: 结束日期，格式yyyy-mm-dd
        # @type EndTime: String
        # @param MetricName: 拉取的指标名称，支持的值为：data_disk_available,binlog_disk_available,mem_available,cpu_usage_rate
        # @type MetricName: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :MetricName
        
        def initialize(instanceid=nil, starttime=nil, endtime=nil, metricname=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
        end
      end

      # DescribeDBResourceUsageDetails返回参数结构体
      class DescribeDBResourceUsageDetailsResponse < TencentCloud::Common::AbstractModel
        # @param Master: 主节点资源使用情况监控数据
        # @type Master: :class:`Tencentcloud::Mariadb.v20170312.models.ResourceUsageMonitorSet`
        # @param Slave1: 备机1资源使用情况监控数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Slave1: :class:`Tencentcloud::Mariadb.v20170312.models.ResourceUsageMonitorSet`
        # @param Slave2: 备机2资源使用情况监控数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Slave2: :class:`Tencentcloud::Mariadb.v20170312.models.ResourceUsageMonitorSet`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Master, :Slave1, :Slave2, :RequestId
        
        def initialize(master=nil, slave1=nil, slave2=nil, requestid=nil)
          @Master = master
          @Slave1 = slave1
          @Slave2 = slave2
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Master'].nil?
            @Master = ResourceUsageMonitorSet.new.deserialize(params[Master])
          end
          unless params['Slave1'].nil?
            @Slave1 = ResourceUsageMonitorSet.new.deserialize(params[Slave1])
          end
          unless params['Slave2'].nil?
            @Slave2 = ResourceUsageMonitorSet.new.deserialize(params[Slave2])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBResourceUsage请求参数结构体
      class DescribeDBResourceUsageRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc。
        # @type InstanceId: String
        # @param StartTime: 开始日期，格式yyyy-mm-dd
        # @type StartTime: String
        # @param EndTime: 结束日期，格式yyyy-mm-dd
        # @type EndTime: String
        # @param MetricName: 拉取的指标名称，支持的值为：data_disk_available,binlog_disk_available,mem_available,cpu_usage_rate
        # @type MetricName: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :MetricName
        
        def initialize(instanceid=nil, starttime=nil, endtime=nil, metricname=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
        end
      end

      # DescribeDBResourceUsage返回参数结构体
      class DescribeDBResourceUsageResponse < TencentCloud::Common::AbstractModel
        # @param BinlogDiskAvailable: binlog日志磁盘可用空间,单位GB
        # @type BinlogDiskAvailable: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param DataDiskAvailable: 磁盘可用空间,单位GB
        # @type DataDiskAvailable: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param CpuUsageRate: CPU利用率
        # @type CpuUsageRate: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param MemAvailable: 内存可用空间,单位GB
        # @type MemAvailable: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BinlogDiskAvailable, :DataDiskAvailable, :CpuUsageRate, :MemAvailable, :RequestId
        
        def initialize(binlogdiskavailable=nil, datadiskavailable=nil, cpuusagerate=nil, memavailable=nil, requestid=nil)
          @BinlogDiskAvailable = binlogdiskavailable
          @DataDiskAvailable = datadiskavailable
          @CpuUsageRate = cpuusagerate
          @MemAvailable = memavailable
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BinlogDiskAvailable'].nil?
            @BinlogDiskAvailable = MonitorData.new.deserialize(params[BinlogDiskAvailable])
          end
          unless params['DataDiskAvailable'].nil?
            @DataDiskAvailable = MonitorData.new.deserialize(params[DataDiskAvailable])
          end
          unless params['CpuUsageRate'].nil?
            @CpuUsageRate = MonitorData.new.deserialize(params[CpuUsageRate])
          end
          unless params['MemAvailable'].nil?
            @MemAvailable = MonitorData.new.deserialize(params[MemAvailable])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSlowLogs请求参数结构体
      class DescribeDBSlowLogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc。
        # @type InstanceId: String
        # @param Offset: 从结果的第几条数据开始返回
        # @type Offset: Integer
        # @param Limit: 返回的结果条数
        # @type Limit: Integer
        # @param StartTime: 查询的起始时间，形如2016-07-23 14:55:20
        # @type StartTime: String
        # @param EndTime: 查询的结束时间，形如2016-08-22 14:55:20
        # @type EndTime: String
        # @param Db: 要查询的具体数据库名称
        # @type Db: String
        # @param OrderBy: 排序指标，取值为query_time_sum或者query_count
        # @type OrderBy: String
        # @param OrderByType: 排序类型，desc或者asc
        # @type OrderByType: String
        # @param Slave: 是否查询从机的慢查询，0-主机; 1-从机
        # @type Slave: Integer

        attr_accessor :InstanceId, :Offset, :Limit, :StartTime, :EndTime, :Db, :OrderBy, :OrderByType, :Slave
        
        def initialize(instanceid=nil, offset=nil, limit=nil, starttime=nil, endtime=nil, db=nil, orderby=nil, orderbytype=nil, slave=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @StartTime = starttime
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
          @EndTime = params['EndTime']
          @Db = params['Db']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          @Slave = params['Slave']
        end
      end

      # DescribeDBSlowLogs返回参数结构体
      class DescribeDBSlowLogsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 慢查询日志数据
        # @type Data: Array
        # @param LockTimeSum: 所有语句锁时间总和
        # @type LockTimeSum: Float
        # @param QueryCount: 所有语句查询总次数
        # @type QueryCount: Integer
        # @param Total: 总记录数
        # @type Total: Integer
        # @param QueryTimeSum: 所有语句查询时间总和
        # @type QueryTimeSum: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :LockTimeSum, :QueryCount, :Total, :QueryTimeSum, :RequestId
        
        def initialize(data=nil, locktimesum=nil, querycount=nil, total=nil, querytimesum=nil, requestid=nil)
          @Data = data
          @LockTimeSum = locktimesum
          @QueryCount = querycount
          @Total = total
          @QueryTimeSum = querytimesum
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @LockTimeSum = params['LockTimeSum']
          @QueryCount = params['QueryCount']
          @Total = params['Total']
          @QueryTimeSum = params['QueryTimeSum']
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
          @Databases = params['Databases']
          @InstanceId = params['InstanceId']
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
          @Deals = params['Deals']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrice请求参数结构体
      class DescribePriceRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 欲新购实例的可用区ID。
        # @type Zone: String
        # @param NodeCount: 实例节点个数，可以通过 DescribeDBInstanceSpecs
        #  查询实例规格获得。
        # @type NodeCount: Integer
        # @param Memory: 内存大小，单位：GB，可以通过 DescribeDBInstanceSpecs
        #  查询实例规格获得。
        # @type Memory: Integer
        # @param Storage: 存储空间大小，单位：GB，可以通过 DescribeDBInstanceSpecs
        #  查询实例规格获得不同内存大小对应的磁盘规格下限和上限。
        # @type Storage: Integer
        # @param Period: 欲购买的时长，单位：月。
        # @type Period: Integer
        # @param Count: 欲购买的数量，默认查询购买1个实例的价格。
        # @type Count: Integer
        # @param Paymode: 付费类型。postpaid：按量付费   prepaid：预付费
        # @type Paymode: String

        attr_accessor :Zone, :NodeCount, :Memory, :Storage, :Period, :Count, :Paymode
        
        def initialize(zone=nil, nodecount=nil, memory=nil, storage=nil, period=nil, count=nil, paymode=nil)
          @Zone = zone
          @NodeCount = nodecount
          @Memory = memory
          @Storage = storage
          @Period = period
          @Count = count
          @Paymode = paymode
        end

        def deserialize(params)
          @Zone = params['Zone']
          @NodeCount = params['NodeCount']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @Period = params['Period']
          @Count = params['Count']
          @Paymode = params['Paymode']
        end
      end

      # DescribePrice返回参数结构体
      class DescribePriceResponse < TencentCloud::Common::AbstractModel
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

      # DescribeRenewalPrice请求参数结构体
      class DescribeRenewalPriceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待续费的实例ID。形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
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

      # DescribeRenewalPrice返回参数结构体
      class DescribeRenewalPriceResponse < TencentCloud::Common::AbstractModel
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

      # DescribeSaleInfo请求参数结构体
      class DescribeSaleInfoRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSaleInfo返回参数结构体
      class DescribeSaleInfoResponse < TencentCloud::Common::AbstractModel
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
          @RegionList = params['RegionList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSqlLogs请求参数结构体
      class DescribeSqlLogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
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
          @SqlItems = params['SqlItems']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUpgradePrice请求参数结构体
      class DescribeUpgradePriceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待升级的实例ID。形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
        # @type InstanceId: String
        # @param Memory: 内存大小，单位：GB，可以通过 DescribeDBInstanceSpecs
        #  查询实例规格获得。
        # @type Memory: Integer
        # @param Storage: 存储空间大小，单位：GB，可以通过 DescribeDBInstanceSpecs
        #  查询实例规格获得不同内存大小对应的磁盘规格下限和上限。
        # @type Storage: Integer

        attr_accessor :InstanceId, :Memory, :Storage
        
        def initialize(instanceid=nil, memory=nil, storage=nil)
          @InstanceId = instanceid
          @Memory = memory
          @Storage = storage
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Memory = params['Memory']
          @Storage = params['Storage']
        end
      end

      # DescribeUpgradePrice返回参数结构体
      class DescribeUpgradePriceResponse < TencentCloud::Common::AbstractModel
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

      # GrantAccountPrivileges请求参数结构体
      class GrantAccountPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
        # @type InstanceId: String
        # @param UserName: 登录用户名。
        # @type UserName: String
        # @param Host: 用户允许的访问 host，用户名+host唯一确定一个账号。
        # @type Host: String
        # @param DbName: 数据库名。如果为 \*，表示设置全局权限（即 \*.\*），此时忽略 Type 和 Object 参数。当DbName不为\*时，需要传入参 Type。
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

      # InitDBInstances请求参数结构体
      class InitDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 待初始化的实例ID列表，形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
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
          @Params = params['Params']
        end
      end

      # InitDBInstances返回参数结构体
      class InitDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务ID，可通过 DescribeFlow 查询任务状态。
        # @type FlowId: Integer
        # @param InstanceIds: 透传入参。
        # @type InstanceIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :InstanceIds, :RequestId
        
        def initialize(flowid=nil, instanceids=nil, requestid=nil)
          @FlowId = flowid
          @InstanceIds = instanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @InstanceIds = params['InstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # 按机型归类的实例可售卖规格信息
      class InstanceSpec < TencentCloud::Common::AbstractModel
        # @param Machine: 设备型号
        # @type Machine: String
        # @param SpecInfos: 该机型对应的可售卖规格列表
        # @type SpecInfos: Array

        attr_accessor :Machine, :SpecInfos
        
        def initialize(machine=nil, specinfos=nil)
          @Machine = machine
          @SpecInfos = specinfos
        end

        def deserialize(params)
          @Machine = params['Machine']
          @SpecInfos = params['SpecInfos']
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
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
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

      # ModifyBackupTime请求参数结构体
      class ModifyBackupTimeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
        # @type InstanceId: String
        # @param StartBackupTime: 每天备份执行的区间的开始时间，格式 mm:ss，形如 22:00
        # @type StartBackupTime: String
        # @param EndBackupTime: 每天备份执行的区间的结束时间，格式 mm:ss，形如 23:59
        # @type EndBackupTime: String

        attr_accessor :InstanceId, :StartBackupTime, :EndBackupTime
        
        def initialize(instanceid=nil, startbackuptime=nil, endbackuptime=nil)
          @InstanceId = instanceid
          @StartBackupTime = startbackuptime
          @EndBackupTime = endbackuptime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartBackupTime = params['StartBackupTime']
          @EndBackupTime = params['EndBackupTime']
        end
      end

      # ModifyBackupTime返回参数结构体
      class ModifyBackupTimeResponse < TencentCloud::Common::AbstractModel
        # @param Status: 设置的状态，0 表示成功
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

      # ModifyDBInstanceName请求参数结构体
      class ModifyDBInstanceNameRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待修改的实例 ID。形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
        # @type InstanceId: String
        # @param InstanceName: 新的实例名称。允许的字符为字母、数字、下划线、连字符和中文。
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

      # ModifyDBInstancesProject请求参数结构体
      class ModifyDBInstancesProjectRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 待修改的实例ID列表。实例 ID 形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
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
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc。
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
          @Params = params['Params']
        end
      end

      # ModifyDBParameters返回参数结构体
      class ModifyDBParametersResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc。
        # @type InstanceId: String
        # @param Result: 参数修改结果
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
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyLogFileRetentionPeriod请求参数结构体
      class ModifyLogFileRetentionPeriodRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc。
        # @type InstanceId: String
        # @param Days: 保存的天数,不能超过30
        # @type Days: Integer

        attr_accessor :InstanceId, :Days
        
        def initialize(instanceid=nil, days=nil)
          @InstanceId = instanceid
          @Days = days
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Days = params['Days']
        end
      end

      # ModifyLogFileRetentionPeriod返回参数结构体
      class ModifyLogFileRetentionPeriodResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc。
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

      # 监控数据
      class MonitorData < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间，形如 2018-03-24 23:59:59
        # @type StartTime: String
        # @param EndTime: 结束时间，形如 2018-03-24 23:59:59
        # @type EndTime: String
        # @param Data: 监控数据
        # @type Data: Array

        attr_accessor :StartTime, :EndTime, :Data
        
        def initialize(starttime=nil, endtime=nil, data=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Data = data
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Data = params['Data']
        end
      end

      # OpenDBExtranetAccess请求参数结构体
      class OpenDBExtranetAccessRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待开放外网访问的实例ID。形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
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
        # @type Range: :class:`Tencentcloud::Mariadb.v20170312.models.ConstraintRange`
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
            @Range = ConstraintRange.new.deserialize(params[Range])
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
        # @param SetValue: 设置过的值，参数生效后，该值和value一样。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SetValue: String
        # @param Default: 系统默认值
        # @type Default: String
        # @param Constraint: 参数限制
        # @type Constraint: :class:`Tencentcloud::Mariadb.v20170312.models.ParamConstraint`
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
            @Constraint = ParamConstraint.new.deserialize(params[Constraint])
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

      # DB性能监控指标集合
      class PerformanceMonitorSet < TencentCloud::Common::AbstractModel
        # @param UpdateTotal: 更新操作数UPDATE
        # @type UpdateTotal: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param DiskIops: 磁盘每秒IO次数
        # @type DiskIops: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param ConnActive: 活跃连接数
        # @type ConnActive: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param MemHitRate: 缓存命中率
        # @type MemHitRate: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param SlaveDelay: 主备延迟
        # @type SlaveDelay: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param SelectTotal: 查询操作数SELECT
        # @type SelectTotal: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param LongQuery: 慢查询数
        # @type LongQuery: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param DeleteTotal: 删除操作数DELETE
        # @type DeleteTotal: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param InsertTotal: 插入操作数INSERT
        # @type InsertTotal: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param IsMasterSwitched: 是否发生主备切换，1为发生，0否
        # @type IsMasterSwitched: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`

        attr_accessor :UpdateTotal, :DiskIops, :ConnActive, :MemHitRate, :SlaveDelay, :SelectTotal, :LongQuery, :DeleteTotal, :InsertTotal, :IsMasterSwitched
        
        def initialize(updatetotal=nil, diskiops=nil, connactive=nil, memhitrate=nil, slavedelay=nil, selecttotal=nil, longquery=nil, deletetotal=nil, inserttotal=nil, ismasterswitched=nil)
          @UpdateTotal = updatetotal
          @DiskIops = diskiops
          @ConnActive = connactive
          @MemHitRate = memhitrate
          @SlaveDelay = slavedelay
          @SelectTotal = selecttotal
          @LongQuery = longquery
          @DeleteTotal = deletetotal
          @InsertTotal = inserttotal
          @IsMasterSwitched = ismasterswitched
        end

        def deserialize(params)
          unless params['UpdateTotal'].nil?
            @UpdateTotal = MonitorData.new.deserialize(params[UpdateTotal])
          end
          unless params['DiskIops'].nil?
            @DiskIops = MonitorData.new.deserialize(params[DiskIops])
          end
          unless params['ConnActive'].nil?
            @ConnActive = MonitorData.new.deserialize(params[ConnActive])
          end
          unless params['MemHitRate'].nil?
            @MemHitRate = MonitorData.new.deserialize(params[MemHitRate])
          end
          unless params['SlaveDelay'].nil?
            @SlaveDelay = MonitorData.new.deserialize(params[SlaveDelay])
          end
          unless params['SelectTotal'].nil?
            @SelectTotal = MonitorData.new.deserialize(params[SelectTotal])
          end
          unless params['LongQuery'].nil?
            @LongQuery = MonitorData.new.deserialize(params[LongQuery])
          end
          unless params['DeleteTotal'].nil?
            @DeleteTotal = MonitorData.new.deserialize(params[DeleteTotal])
          end
          unless params['InsertTotal'].nil?
            @InsertTotal = MonitorData.new.deserialize(params[InsertTotal])
          end
          unless params['IsMasterSwitched'].nil?
            @IsMasterSwitched = MonitorData.new.deserialize(params[IsMasterSwitched])
          end
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
          @ZoneList = params['ZoneList']
          @AvailableChoice = params['AvailableChoice']
        end
      end

      # RenewDBInstance请求参数结构体
      class RenewDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待续费的实例ID。形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
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

      # RenewDBInstance返回参数结构体
      class RenewDBInstanceResponse < TencentCloud::Common::AbstractModel
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
        # @param InstanceId: 实例 ID，形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
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

      # DB资源使用情况监控指标集合
      class ResourceUsageMonitorSet < TencentCloud::Common::AbstractModel
        # @param BinlogDiskAvailable: binlog日志磁盘可用空间,单位GB
        # @type BinlogDiskAvailable: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param CpuUsageRate: CPU利用率
        # @type CpuUsageRate: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param MemAvailable: 内存可用空间,单位GB
        # @type MemAvailable: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`
        # @param DataDiskAvailable: 磁盘可用空间,单位GB
        # @type DataDiskAvailable: :class:`Tencentcloud::Mariadb.v20170312.models.MonitorData`

        attr_accessor :BinlogDiskAvailable, :CpuUsageRate, :MemAvailable, :DataDiskAvailable
        
        def initialize(binlogdiskavailable=nil, cpuusagerate=nil, memavailable=nil, datadiskavailable=nil)
          @BinlogDiskAvailable = binlogdiskavailable
          @CpuUsageRate = cpuusagerate
          @MemAvailable = memavailable
          @DataDiskAvailable = datadiskavailable
        end

        def deserialize(params)
          unless params['BinlogDiskAvailable'].nil?
            @BinlogDiskAvailable = MonitorData.new.deserialize(params[BinlogDiskAvailable])
          end
          unless params['CpuUsageRate'].nil?
            @CpuUsageRate = MonitorData.new.deserialize(params[CpuUsageRate])
          end
          unless params['MemAvailable'].nil?
            @MemAvailable = MonitorData.new.deserialize(params[MemAvailable])
          end
          unless params['DataDiskAvailable'].nil?
            @DataDiskAvailable = MonitorData.new.deserialize(params[DataDiskAvailable])
          end
        end
      end

      # RestartDBInstances请求参数结构体
      class RestartDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID的数组
        # @type InstanceIds: Array

        attr_accessor :InstanceIds
        
        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # RestartDBInstances返回参数结构体
      class RestartDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务ID
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

        attr_accessor :CheckSum, :Db, :FingerPrint, :LockTimeAvg, :LockTimeMax, :LockTimeMin, :LockTimeSum, :QueryCount, :QueryTimeAvg, :QueryTimeMax, :QueryTimeMin, :QueryTimeSum, :RowsExaminedSum, :RowsSentSum, :TsMax, :TsMin, :User, :ExampleSql
        
        def initialize(checksum=nil, db=nil, fingerprint=nil, locktimeavg=nil, locktimemax=nil, locktimemin=nil, locktimesum=nil, querycount=nil, querytimeavg=nil, querytimemax=nil, querytimemin=nil, querytimesum=nil, rowsexaminedsum=nil, rowssentsum=nil, tsmax=nil, tsmin=nil, user=nil, examplesql=nil)
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
        end
      end

      # 实例可售卖规格详细信息，创建实例和扩容实例时 Pid+MemSize 唯一确定一种售卖规格，磁盘大小可用区间为[MinDataDisk,MaxDataDisk]
      class SpecConfigInfo < TencentCloud::Common::AbstractModel
        # @param Machine: 设备型号
        # @type Machine: String
        # @param Memory: 内存大小，单位 GB
        # @type Memory: Integer
        # @param MinStorage: 数据盘规格最小值，单位 GB
        # @type MinStorage: Integer
        # @param MaxStorage: 数据盘规格最大值，单位 GB
        # @type MaxStorage: Integer
        # @param SuitInfo: 推荐的使用场景
        # @type SuitInfo: String
        # @param Qps: 最大 Qps 值
        # @type Qps: Integer
        # @param Pid: 产品类型 Id
        # @type Pid: Integer
        # @param NodeCount: 节点个数，2 表示一主一从，3 表示一主二从
        # @type NodeCount: Integer
        # @param Cpu: Cpu核数
        # @type Cpu: Integer

        attr_accessor :Machine, :Memory, :MinStorage, :MaxStorage, :SuitInfo, :Qps, :Pid, :NodeCount, :Cpu
        
        def initialize(machine=nil, memory=nil, minstorage=nil, maxstorage=nil, suitinfo=nil, qps=nil, pid=nil, nodecount=nil, cpu=nil)
          @Machine = machine
          @Memory = memory
          @MinStorage = minstorage
          @MaxStorage = maxstorage
          @SuitInfo = suitinfo
          @Qps = qps
          @Pid = pid
          @NodeCount = nodecount
          @Cpu = cpu
        end

        def deserialize(params)
          @Machine = params['Machine']
          @Memory = params['Memory']
          @MinStorage = params['MinStorage']
          @MaxStorage = params['MaxStorage']
          @SuitInfo = params['SuitInfo']
          @Qps = params['Qps']
          @Pid = params['Pid']
          @NodeCount = params['NodeCount']
          @Cpu = params['Cpu']
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

      # UpgradeDBInstance请求参数结构体
      class UpgradeDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待升级的实例ID。形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
        # @type InstanceId: String
        # @param Memory: 内存大小，单位：GB，可以通过 DescribeDBInstanceSpecs
        #  查询实例规格获得。
        # @type Memory: Integer
        # @param Storage: 存储空间大小，单位：GB，可以通过 DescribeDBInstanceSpecs
        #  查询实例规格获得不同内存大小对应的磁盘规格下限和上限。
        # @type Storage: Integer
        # @param AutoVoucher: 是否自动使用代金券进行支付，默认不使用。
        # @type AutoVoucher: Boolean
        # @param VoucherIds: 代金券ID列表，目前仅支持指定一张代金券。
        # @type VoucherIds: Array

        attr_accessor :InstanceId, :Memory, :Storage, :AutoVoucher, :VoucherIds
        
        def initialize(instanceid=nil, memory=nil, storage=nil, autovoucher=nil, voucherids=nil)
          @InstanceId = instanceid
          @Memory = memory
          @Storage = storage
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
        end
      end

      # UpgradeDBInstance返回参数结构体
      class UpgradeDBInstanceResponse < TencentCloud::Common::AbstractModel
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

      # 分片节点可用区选择
      class ZoneChooseInfo < TencentCloud::Common::AbstractModel
        # @param MasterZone: 主可用区
        # @type MasterZone: :class:`Tencentcloud::Mariadb.v20170312.models.ZonesInfo`
        # @param SlaveZones: 可选的从可用区
        # @type SlaveZones: Array

        attr_accessor :MasterZone, :SlaveZones
        
        def initialize(masterzone=nil, slavezones=nil)
          @MasterZone = masterzone
          @SlaveZones = slavezones
        end

        def deserialize(params)
          unless params['MasterZone'].nil?
            @MasterZone = ZonesInfo.new.deserialize(params[MasterZone])
          end
          @SlaveZones = params['SlaveZones']
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

