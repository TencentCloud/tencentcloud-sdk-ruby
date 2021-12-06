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
  module Postgres
    module V20170312
      # 账户信息
      class AccountInfo < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-lnp6j617
        # @type DBInstanceId: String
        # @param UserName: 帐号
        # @type UserName: String
        # @param Remark: 帐号备注
        # @type Remark: String
        # @param Status: 帐号状态。 1-创建中，2-正常，3-修改中，4-密码重置中，-1-删除中
        # @type Status: Integer
        # @param CreateTime: 帐号创建时间
        # @type CreateTime: String
        # @param UpdateTime: 帐号最后一次更新时间
        # @type UpdateTime: String

        attr_accessor :DBInstanceId, :UserName, :Remark, :Status, :CreateTime, :UpdateTime
        
        def initialize(dbinstanceid=nil, username=nil, remark=nil, status=nil, createtime=nil, updatetime=nil)
          @DBInstanceId = dbinstanceid
          @UserName = username
          @Remark = remark
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @UserName = params['UserName']
          @Remark = params['Remark']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # AddDBInstanceToReadOnlyGroup请求参数结构体
      class AddDBInstanceToReadOnlyGroupRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID
        # @type DBInstanceId: String
        # @param ReadOnlyGroupId: 只读组ID
        # @type ReadOnlyGroupId: String

        attr_accessor :DBInstanceId, :ReadOnlyGroupId
        
        def initialize(dbinstanceid=nil, readonlygroupid=nil)
          @DBInstanceId = dbinstanceid
          @ReadOnlyGroupId = readonlygroupid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
        end
      end

      # AddDBInstanceToReadOnlyGroup返回参数结构体
      class AddDBInstanceToReadOnlyGroupResponse < TencentCloud::Common::AbstractModel
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

      # 慢查询分析接口返回的分析详情，按照参数抽象之后进行分类
      class AnalysisItems < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 慢SQL查询的数据库名
        # @type DatabaseName: String
        # @param UserName: 慢SQL执行的用户名
        # @type UserName: String
        # @param NormalQuery: 抽象参数之后的慢SQL
        # @type NormalQuery: String
        # @param ClientAddr: 慢SQL执行的客户端地址
        # @type ClientAddr: String
        # @param CallNum: 在选定时间范围内慢SQL语句执行的次数
        # @type CallNum: Integer
        # @param CallPercent: 在选定时间范围内，慢SQL语句执行的次数占所有慢SQL的比例（小数返回）
        # @type CallPercent: Float
        # @param CostTime: 在选定时间范围内，慢SQL执行的总时间
        # @type CostTime: Float
        # @param CostPercent: 在选定时间范围内，慢SQL语句执行的总时间占所有慢SQL的比例（小数返回）
        # @type CostPercent: Float
        # @param MinCostTime: 在选定时间范围内，慢SQL语句执行的耗时最短的时间（单位：ms）
        # @type MinCostTime: Float
        # @param MaxCostTime: 在选定时间范围内，慢SQL语句执行的耗时最长的时间（单位：ms）
        # @type MaxCostTime: Float
        # @param AvgCostTime: 在选定时间范围内，慢SQL语句执行的耗时平均时间（单位：ms）
        # @type AvgCostTime: Float
        # @param FirstTime: 在选定时间范围内，慢SQL第一条开始执行的时间戳
        # @type FirstTime: String
        # @param LastTime: 在选定时间范围内，慢SQL最后一条开始执行的时间戳
        # @type LastTime: String

        attr_accessor :DatabaseName, :UserName, :NormalQuery, :ClientAddr, :CallNum, :CallPercent, :CostTime, :CostPercent, :MinCostTime, :MaxCostTime, :AvgCostTime, :FirstTime, :LastTime
        
        def initialize(databasename=nil, username=nil, normalquery=nil, clientaddr=nil, callnum=nil, callpercent=nil, costtime=nil, costpercent=nil, mincosttime=nil, maxcosttime=nil, avgcosttime=nil, firsttime=nil, lasttime=nil)
          @DatabaseName = databasename
          @UserName = username
          @NormalQuery = normalquery
          @ClientAddr = clientaddr
          @CallNum = callnum
          @CallPercent = callpercent
          @CostTime = costtime
          @CostPercent = costpercent
          @MinCostTime = mincosttime
          @MaxCostTime = maxcosttime
          @AvgCostTime = avgcosttime
          @FirstTime = firsttime
          @LastTime = lasttime
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @UserName = params['UserName']
          @NormalQuery = params['NormalQuery']
          @ClientAddr = params['ClientAddr']
          @CallNum = params['CallNum']
          @CallPercent = params['CallPercent']
          @CostTime = params['CostTime']
          @CostPercent = params['CostPercent']
          @MinCostTime = params['MinCostTime']
          @MaxCostTime = params['MaxCostTime']
          @AvgCostTime = params['AvgCostTime']
          @FirstTime = params['FirstTime']
          @LastTime = params['LastTime']
        end
      end

      # CloseDBExtranetAccess请求参数结构体
      class CloseDBExtranetAccessRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-6r233v55
        # @type DBInstanceId: String
        # @param IsIpv6: 是否关闭Ipv6外网，1：是，0：否
        # @type IsIpv6: Integer

        attr_accessor :DBInstanceId, :IsIpv6
        
        def initialize(dbinstanceid=nil, isipv6=nil)
          @DBInstanceId = dbinstanceid
          @IsIpv6 = isipv6
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @IsIpv6 = params['IsIpv6']
        end
      end

      # CloseDBExtranetAccess返回参数结构体
      class CloseDBExtranetAccessResponse < TencentCloud::Common::AbstractModel
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

      # CloseServerlessDBExtranetAccess请求参数结构体
      class CloseServerlessDBExtranetAccessRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例唯一标识符
        # @type DBInstanceId: String
        # @param DBInstanceName: 实例名称
        # @type DBInstanceName: String

        attr_accessor :DBInstanceId, :DBInstanceName
        
        def initialize(dbinstanceid=nil, dbinstancename=nil)
          @DBInstanceId = dbinstanceid
          @DBInstanceName = dbinstancename
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @DBInstanceName = params['DBInstanceName']
        end
      end

      # CloseServerlessDBExtranetAccess返回参数结构体
      class CloseServerlessDBExtranetAccessResponse < TencentCloud::Common::AbstractModel
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

      # CreateDBInstances请求参数结构体
      class CreateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param SpecCode: 售卖规格ID。该参数可以通过调用DescribeProductConfig的返回值中的SpecCode字段来获取。
        # @type SpecCode: String
        # @param DBVersion: PostgreSQL内核版本，目前支持以下版本：9.3.5、9.5.4、10.4、11.8、12.4 。
        # @type DBVersion: String
        # @param Storage: 实例容量大小，单位：GB。
        # @type Storage: Integer
        # @param InstanceCount: 一次性购买的实例数量。取值1-100
        # @type InstanceCount: Integer
        # @param Period: 购买时长，单位：月。目前只支持1,2,3,4,5,6,7,8,9,10,11,12,24,36这些值，按量计费模式下该参数传1。
        # @type Period: Integer
        # @param Zone: 可用区ID。该参数可以通过调用 DescribeZones 接口的返回值中的Zone字段来获取。
        # @type Zone: String
        # @param ProjectId: 项目ID。
        # @type ProjectId: Integer
        # @param InstanceChargeType: 实例计费类型。目前支持：PREPAID（预付费，即包年包月），POSTPAID_BY_HOUR（后付费，即按量计费）。
        # @type InstanceChargeType: String
        # @param AutoVoucher: 是否自动使用代金券。1（是），0（否），默认不使用。
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID列表，目前仅支持指定一张代金券。
        # @type VoucherIds: Array
        # @param VpcId: 私有网络ID。
        # @type VpcId: String
        # @param SubnetId: 私有网络子网ID。
        # @type SubnetId: String
        # @param AutoRenewFlag: 续费标记：0-正常续费（默认）；1-自动续费；
        # @type AutoRenewFlag: Integer
        # @param ActivityId: 活动ID
        # @type ActivityId: Integer
        # @param Name: 实例名(后续支持)
        # @type Name: String
        # @param NeedSupportIpv6: 是否需要支持Ipv6，1：是，0：否
        # @type NeedSupportIpv6: Integer
        # @param TagList: 实例需要绑定的Tag信息，默认为空
        # @type TagList: Array
        # @param SecurityGroupIds: 安全组id
        # @type SecurityGroupIds: Array

        attr_accessor :SpecCode, :DBVersion, :Storage, :InstanceCount, :Period, :Zone, :ProjectId, :InstanceChargeType, :AutoVoucher, :VoucherIds, :VpcId, :SubnetId, :AutoRenewFlag, :ActivityId, :Name, :NeedSupportIpv6, :TagList, :SecurityGroupIds
        
        def initialize(speccode=nil, dbversion=nil, storage=nil, instancecount=nil, period=nil, zone=nil, projectid=nil, instancechargetype=nil, autovoucher=nil, voucherids=nil, vpcid=nil, subnetid=nil, autorenewflag=nil, activityid=nil, name=nil, needsupportipv6=nil, taglist=nil, securitygroupids=nil)
          @SpecCode = speccode
          @DBVersion = dbversion
          @Storage = storage
          @InstanceCount = instancecount
          @Period = period
          @Zone = zone
          @ProjectId = projectid
          @InstanceChargeType = instancechargetype
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @VpcId = vpcid
          @SubnetId = subnetid
          @AutoRenewFlag = autorenewflag
          @ActivityId = activityid
          @Name = name
          @NeedSupportIpv6 = needsupportipv6
          @TagList = taglist
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @SpecCode = params['SpecCode']
          @DBVersion = params['DBVersion']
          @Storage = params['Storage']
          @InstanceCount = params['InstanceCount']
          @Period = params['Period']
          @Zone = params['Zone']
          @ProjectId = params['ProjectId']
          @InstanceChargeType = params['InstanceChargeType']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @AutoRenewFlag = params['AutoRenewFlag']
          @ActivityId = params['ActivityId']
          @Name = params['Name']
          @NeedSupportIpv6 = params['NeedSupportIpv6']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagList << tag_tmp
            end
          end
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # CreateDBInstances返回参数结构体
      class CreateDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param DealNames: 订单号列表。每个实例对应一个订单号。
        # @type DealNames: Array
        # @param BillId: 冻结流水号
        # @type BillId: String
        # @param DBInstanceIdSet: 创建成功的实例ID集合，只在后付费情景下有返回值
        # @type DBInstanceIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealNames, :BillId, :DBInstanceIdSet, :RequestId
        
        def initialize(dealnames=nil, billid=nil, dbinstanceidset=nil, requestid=nil)
          @DealNames = dealnames
          @BillId = billid
          @DBInstanceIdSet = dbinstanceidset
          @RequestId = requestid
        end

        def deserialize(params)
          @DealNames = params['DealNames']
          @BillId = params['BillId']
          @DBInstanceIdSet = params['DBInstanceIdSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateInstances请求参数结构体
      class CreateInstancesRequest < TencentCloud::Common::AbstractModel
        # @param SpecCode: 售卖规格ID。该参数可以通过调用DescribeProductConfig的返回值中的SpecCode字段来获取。
        # @type SpecCode: String
        # @param DBVersion: PostgreSQL内核版本，目前支持：9.3.5、9.5.4、10.4、11.8、12.4五种版本。
        # @type DBVersion: String
        # @param Storage: 实例容量大小，单位：GB。
        # @type Storage: Integer
        # @param InstanceCount: 一次性购买的实例数量。取值1-10。
        # @type InstanceCount: Integer
        # @param Period: 购买时长，单位：月。目前只支持1,2,3,4,5,6,7,8,9,10,11,12,24,36这些值，按量计费模式下该参数传1。
        # @type Period: Integer
        # @param Zone: 可用区ID。该参数可以通过调用 DescribeZones 接口的返回值中的Zone字段来获取。
        # @type Zone: String
        # @param Charset: 实例字符集，目前只支持：UTF8、LATIN1。
        # @type Charset: String
        # @param AdminName: 实例根账号用户名。
        # @type AdminName: String
        # @param AdminPassword: 实例根账号用户名对应的密码。
        # @type AdminPassword: String
        # @param ProjectId: 项目ID。
        # @type ProjectId: Integer
        # @param InstanceChargeType: 实例计费类型。目前支持：PREPAID（预付费，即包年包月），POSTPAID_BY_HOUR（后付费，即按量计费）。
        # @type InstanceChargeType: String
        # @param AutoVoucher: 是否自动使用代金券。1（是），0（否），默认不使用。
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID列表，目前仅支持指定一张代金券。
        # @type VoucherIds: Array
        # @param VpcId: 私有网络ID。
        # @type VpcId: String
        # @param SubnetId: 已配置的私有网络中的子网ID。
        # @type SubnetId: String
        # @param AutoRenewFlag: 续费标记：0-正常续费（默认）；1-自动续费。
        # @type AutoRenewFlag: Integer
        # @param ActivityId: 活动ID。
        # @type ActivityId: Integer
        # @param Name: 实例名。
        # @type Name: String
        # @param NeedSupportIpv6: 是否需要支持Ipv6，1：是，0：否（默认）。
        # @type NeedSupportIpv6: Integer
        # @param TagList: 实例需要绑定的Tag信息，默认为空。
        # @type TagList: Array
        # @param SecurityGroupIds: 安全组ID。
        # @type SecurityGroupIds: Array

        attr_accessor :SpecCode, :DBVersion, :Storage, :InstanceCount, :Period, :Zone, :Charset, :AdminName, :AdminPassword, :ProjectId, :InstanceChargeType, :AutoVoucher, :VoucherIds, :VpcId, :SubnetId, :AutoRenewFlag, :ActivityId, :Name, :NeedSupportIpv6, :TagList, :SecurityGroupIds
        
        def initialize(speccode=nil, dbversion=nil, storage=nil, instancecount=nil, period=nil, zone=nil, charset=nil, adminname=nil, adminpassword=nil, projectid=nil, instancechargetype=nil, autovoucher=nil, voucherids=nil, vpcid=nil, subnetid=nil, autorenewflag=nil, activityid=nil, name=nil, needsupportipv6=nil, taglist=nil, securitygroupids=nil)
          @SpecCode = speccode
          @DBVersion = dbversion
          @Storage = storage
          @InstanceCount = instancecount
          @Period = period
          @Zone = zone
          @Charset = charset
          @AdminName = adminname
          @AdminPassword = adminpassword
          @ProjectId = projectid
          @InstanceChargeType = instancechargetype
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @VpcId = vpcid
          @SubnetId = subnetid
          @AutoRenewFlag = autorenewflag
          @ActivityId = activityid
          @Name = name
          @NeedSupportIpv6 = needsupportipv6
          @TagList = taglist
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @SpecCode = params['SpecCode']
          @DBVersion = params['DBVersion']
          @Storage = params['Storage']
          @InstanceCount = params['InstanceCount']
          @Period = params['Period']
          @Zone = params['Zone']
          @Charset = params['Charset']
          @AdminName = params['AdminName']
          @AdminPassword = params['AdminPassword']
          @ProjectId = params['ProjectId']
          @InstanceChargeType = params['InstanceChargeType']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @AutoRenewFlag = params['AutoRenewFlag']
          @ActivityId = params['ActivityId']
          @Name = params['Name']
          @NeedSupportIpv6 = params['NeedSupportIpv6']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagList << tag_tmp
            end
          end
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # CreateInstances返回参数结构体
      class CreateInstancesResponse < TencentCloud::Common::AbstractModel
        # @param DealNames: 订单号列表。每个实例对应一个订单号。
        # @type DealNames: Array
        # @param BillId: 冻结流水号。
        # @type BillId: String
        # @param DBInstanceIdSet: 创建成功的实例ID集合，只在后付费情景下有返回值。
        # @type DBInstanceIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealNames, :BillId, :DBInstanceIdSet, :RequestId
        
        def initialize(dealnames=nil, billid=nil, dbinstanceidset=nil, requestid=nil)
          @DealNames = dealnames
          @BillId = billid
          @DBInstanceIdSet = dbinstanceidset
          @RequestId = requestid
        end

        def deserialize(params)
          @DealNames = params['DealNames']
          @BillId = params['BillId']
          @DBInstanceIdSet = params['DBInstanceIdSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateReadOnlyDBInstance请求参数结构体
      class CreateReadOnlyDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param SpecCode: 售卖规格ID。该参数可以通过调用DescribeProductConfig的返回值中的SpecCode字段来获取。
        # @type SpecCode: String
        # @param DBVersion: PostgreSQL内核版本，目前强制和主实例保持一致
        # @type DBVersion: String
        # @param Storage: 实例容量大小，单位：GB。
        # @type Storage: Integer
        # @param InstanceCount: 一次性购买的实例数量。取值1-100
        # @type InstanceCount: Integer
        # @param Period: 购买时长，单位：月。目前只支持1,2,3,4,5,6,7,8,9,10,11,12,24,36这些值，按量计费模式下该参数传1。
        # @type Period: Integer
        # @param MasterDBInstanceId: 只读实例的主实例ID
        # @type MasterDBInstanceId: String
        # @param Zone: 可用区ID。该参数可以通过调用 DescribeZones 接口的返回值中的Zone字段来获取。
        # @type Zone: String
        # @param ProjectId: 项目ID。
        # @type ProjectId: Integer
        # @param InstanceChargeType: 实例计费类型。目前支持：PREPAID（预付费，即包年包月），POSTPAID_BY_HOUR（后付费，即按量计费）。
        # @type InstanceChargeType: String
        # @param AutoVoucher: 是否自动使用代金券。1（是），0（否），默认不使用。
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID列表，目前仅支持指定一张代金券。
        # @type VoucherIds: Array
        # @param AutoRenewFlag: 续费标记：0-正常续费（默认）；1-自动续费；
        # @type AutoRenewFlag: Integer
        # @param VpcId: 私有网络ID。
        # @type VpcId: String
        # @param SubnetId: 私有网络子网ID。
        # @type SubnetId: String
        # @param ActivityId: 优惠活动ID
        # @type ActivityId: Integer
        # @param Name: 实例名(后续支持)
        # @type Name: String
        # @param NeedSupportIpv6: 是否需要支持Ipv6，1：是，0：否
        # @type NeedSupportIpv6: Integer
        # @param ReadOnlyGroupId: 只读组ID。
        # @type ReadOnlyGroupId: String
        # @param TagList: 实例需要绑定的Tag信息，默认为空
        # @type TagList: :class:`Tencentcloud::Postgres.v20170312.models.Tag`
        # @param SecurityGroupIds: 安全组id
        # @type SecurityGroupIds: Array

        attr_accessor :SpecCode, :DBVersion, :Storage, :InstanceCount, :Period, :MasterDBInstanceId, :Zone, :ProjectId, :InstanceChargeType, :AutoVoucher, :VoucherIds, :AutoRenewFlag, :VpcId, :SubnetId, :ActivityId, :Name, :NeedSupportIpv6, :ReadOnlyGroupId, :TagList, :SecurityGroupIds
        
        def initialize(speccode=nil, dbversion=nil, storage=nil, instancecount=nil, period=nil, masterdbinstanceid=nil, zone=nil, projectid=nil, instancechargetype=nil, autovoucher=nil, voucherids=nil, autorenewflag=nil, vpcid=nil, subnetid=nil, activityid=nil, name=nil, needsupportipv6=nil, readonlygroupid=nil, taglist=nil, securitygroupids=nil)
          @SpecCode = speccode
          @DBVersion = dbversion
          @Storage = storage
          @InstanceCount = instancecount
          @Period = period
          @MasterDBInstanceId = masterdbinstanceid
          @Zone = zone
          @ProjectId = projectid
          @InstanceChargeType = instancechargetype
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @AutoRenewFlag = autorenewflag
          @VpcId = vpcid
          @SubnetId = subnetid
          @ActivityId = activityid
          @Name = name
          @NeedSupportIpv6 = needsupportipv6
          @ReadOnlyGroupId = readonlygroupid
          @TagList = taglist
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @SpecCode = params['SpecCode']
          @DBVersion = params['DBVersion']
          @Storage = params['Storage']
          @InstanceCount = params['InstanceCount']
          @Period = params['Period']
          @MasterDBInstanceId = params['MasterDBInstanceId']
          @Zone = params['Zone']
          @ProjectId = params['ProjectId']
          @InstanceChargeType = params['InstanceChargeType']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @AutoRenewFlag = params['AutoRenewFlag']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ActivityId = params['ActivityId']
          @Name = params['Name']
          @NeedSupportIpv6 = params['NeedSupportIpv6']
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          unless params['TagList'].nil?
            @TagList = Tag.new
            @TagList.deserialize(params['TagList'])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # CreateReadOnlyDBInstance返回参数结构体
      class CreateReadOnlyDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealNames: 订单号列表。每个实例对应一个订单号
        # @type DealNames: Array
        # @param BillId: 冻结流水号
        # @type BillId: String
        # @param DBInstanceIdSet: 创建成功的实例ID集合，只在后付费情景下有返回值
        # @type DBInstanceIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealNames, :BillId, :DBInstanceIdSet, :RequestId
        
        def initialize(dealnames=nil, billid=nil, dbinstanceidset=nil, requestid=nil)
          @DealNames = dealnames
          @BillId = billid
          @DBInstanceIdSet = dbinstanceidset
          @RequestId = requestid
        end

        def deserialize(params)
          @DealNames = params['DealNames']
          @BillId = params['BillId']
          @DBInstanceIdSet = params['DBInstanceIdSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateReadOnlyGroup请求参数结构体
      class CreateReadOnlyGroupRequest < TencentCloud::Common::AbstractModel
        # @param MasterDBInstanceId: 主实例ID
        # @type MasterDBInstanceId: String
        # @param Name: 只读组名称
        # @type Name: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param ReplayLagEliminate: 延迟时间大小开关：0关、1开
        # @type ReplayLagEliminate: Integer
        # @param ReplayLatencyEliminate: 延迟空间大小开关： 0关、1开
        # @type ReplayLatencyEliminate: Integer
        # @param MaxReplayLag: 延迟时间大小阈值，单位ms
        # @type MaxReplayLag: Integer
        # @param MaxReplayLatency: 延迟空间大小阈值，单位MB
        # @type MaxReplayLatency: Integer
        # @param MinDelayEliminateReserve: 延迟剔除最小保留实例数
        # @type MinDelayEliminateReserve: Integer
        # @param SecurityGroupIds: 安全组id
        # @type SecurityGroupIds: Array

        attr_accessor :MasterDBInstanceId, :Name, :ProjectId, :VpcId, :SubnetId, :ReplayLagEliminate, :ReplayLatencyEliminate, :MaxReplayLag, :MaxReplayLatency, :MinDelayEliminateReserve, :SecurityGroupIds
        
        def initialize(masterdbinstanceid=nil, name=nil, projectid=nil, vpcid=nil, subnetid=nil, replaylageliminate=nil, replaylatencyeliminate=nil, maxreplaylag=nil, maxreplaylatency=nil, mindelayeliminatereserve=nil, securitygroupids=nil)
          @MasterDBInstanceId = masterdbinstanceid
          @Name = name
          @ProjectId = projectid
          @VpcId = vpcid
          @SubnetId = subnetid
          @ReplayLagEliminate = replaylageliminate
          @ReplayLatencyEliminate = replaylatencyeliminate
          @MaxReplayLag = maxreplaylag
          @MaxReplayLatency = maxreplaylatency
          @MinDelayEliminateReserve = mindelayeliminatereserve
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @MasterDBInstanceId = params['MasterDBInstanceId']
          @Name = params['Name']
          @ProjectId = params['ProjectId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ReplayLagEliminate = params['ReplayLagEliminate']
          @ReplayLatencyEliminate = params['ReplayLatencyEliminate']
          @MaxReplayLag = params['MaxReplayLag']
          @MaxReplayLatency = params['MaxReplayLatency']
          @MinDelayEliminateReserve = params['MinDelayEliminateReserve']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # CreateReadOnlyGroup返回参数结构体
      class CreateReadOnlyGroupResponse < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupId: 只读组ID
        # @type ReadOnlyGroupId: String
        # @param FlowId: 流程ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReadOnlyGroupId, :FlowId, :RequestId
        
        def initialize(readonlygroupid=nil, flowid=nil, requestid=nil)
          @ReadOnlyGroupId = readonlygroupid
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # CreateServerlessDBInstance请求参数结构体
      class CreateServerlessDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区ID。公测阶段仅支持ap-shanghai-2、ap-beijing-1,ap-guangzhou-2.
        # @type Zone: String
        # @param DBInstanceName: DB实例名称，同一个账号下该值必须唯一。
        # @type DBInstanceName: String
        # @param DBVersion: PostgreSQL内核版本，目前只支持：10.4。
        # @type DBVersion: String
        # @param DBCharset: PostgreSQL数据库字符集，目前支持UTF8。
        # @type DBCharset: String
        # @param ProjectId: 项目ID。
        # @type ProjectId: Integer
        # @param VpcId: 私有网络ID。
        # @type VpcId: String
        # @param SubnetId: 私有网络子网ID。
        # @type SubnetId: String
        # @param TagList: 实例需要绑定的标签数组信息
        # @type TagList: Array

        attr_accessor :Zone, :DBInstanceName, :DBVersion, :DBCharset, :ProjectId, :VpcId, :SubnetId, :TagList
        
        def initialize(zone=nil, dbinstancename=nil, dbversion=nil, dbcharset=nil, projectid=nil, vpcid=nil, subnetid=nil, taglist=nil)
          @Zone = zone
          @DBInstanceName = dbinstancename
          @DBVersion = dbversion
          @DBCharset = dbcharset
          @ProjectId = projectid
          @VpcId = vpcid
          @SubnetId = subnetid
          @TagList = taglist
        end

        def deserialize(params)
          @Zone = params['Zone']
          @DBInstanceName = params['DBInstanceName']
          @DBVersion = params['DBVersion']
          @DBCharset = params['DBCharset']
          @ProjectId = params['ProjectId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagList << tag_tmp
            end
          end
        end
      end

      # CreateServerlessDBInstance返回参数结构体
      class CreateServerlessDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，该ID全局唯一，如：postgres-xxxxx
        # @type DBInstanceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DBInstanceId, :RequestId
        
        def initialize(dbinstanceid=nil, requestid=nil)
          @DBInstanceId = dbinstanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @RequestId = params['RequestId']
        end
      end

      # 数据库备份信息
      class DBBackup < TencentCloud::Common::AbstractModel
        # @param Id: 备份文件唯一标识
        # @type Id: Integer
        # @param StartTime: 文件生成的开始时间
        # @type StartTime: String
        # @param EndTime: 文件生成的结束时间
        # @type EndTime: String
        # @param Size: 文件大小(K)
        # @type Size: Integer
        # @param Strategy: 策略（0-实例备份；1-多库备份）
        # @type Strategy: Integer
        # @param Way: 类型（0-定时）
        # @type Way: Integer
        # @param Type: 备份方式（1-完整）
        # @type Type: Integer
        # @param Status: 状态（1-创建中；2-成功；3-失败）
        # @type Status: Integer
        # @param DbList: DB列表
        # @type DbList: Array
        # @param InternalAddr: 内网下载地址
        # @type InternalAddr: String
        # @param ExternalAddr: 外网下载地址
        # @type ExternalAddr: String

        attr_accessor :Id, :StartTime, :EndTime, :Size, :Strategy, :Way, :Type, :Status, :DbList, :InternalAddr, :ExternalAddr
        
        def initialize(id=nil, starttime=nil, endtime=nil, size=nil, strategy=nil, way=nil, type=nil, status=nil, dblist=nil, internaladdr=nil, externaladdr=nil)
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
          @Size = size
          @Strategy = strategy
          @Way = way
          @Type = type
          @Status = status
          @DbList = dblist
          @InternalAddr = internaladdr
          @ExternalAddr = externaladdr
        end

        def deserialize(params)
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Size = params['Size']
          @Strategy = params['Strategy']
          @Way = params['Way']
          @Type = params['Type']
          @Status = params['Status']
          @DbList = params['DbList']
          @InternalAddr = params['InternalAddr']
          @ExternalAddr = params['ExternalAddr']
        end
      end

      # 描述实例的详细信息
      class DBInstance < TencentCloud::Common::AbstractModel
        # @param Region: 实例所属地域，如: ap-guangzhou，对应RegionSet的Region字段
        # @type Region: String
        # @param Zone: 实例所属可用区， 如：ap-guangzhou-3，对应ZoneSet的Zone字段
        # @type Zone: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param DBInstanceId: 实例ID
        # @type DBInstanceId: String
        # @param DBInstanceName: 实例名称
        # @type DBInstanceName: String
        # @param DBInstanceStatus: 实例状态，分别为：applying（申请中）、init(待初始化)、initing(初始化中)、running(运行中)、limited run（受限运行）、isolated（已隔离）、recycling（回收中）、recycled（已回收）、job running（任务执行中）、offline（下线）、migrating（迁移中）、expanding（扩容中）、waitSwitch（等待切换）、switching（切换中）、readonly（只读）、restarting（重启中）、network changing（网络变更中）
        # @type DBInstanceStatus: String
        # @param DBInstanceMemory: 实例分配的内存大小，单位：GB
        # @type DBInstanceMemory: Integer
        # @param DBInstanceStorage: 实例分配的存储空间大小，单位：GB
        # @type DBInstanceStorage: Integer
        # @param DBInstanceCpu: 实例分配的CPU数量，单位：个
        # @type DBInstanceCpu: Integer
        # @param DBInstanceClass: 售卖规格ID
        # @type DBInstanceClass: String
        # @param DBInstanceType: 实例类型，类型有：1、primary（主实例）；2、readonly（只读实例）；3、guard（灾备实例）；4、temp（临时实例）
        # @type DBInstanceType: String
        # @param DBInstanceVersion: 实例版本，目前只支持standard（双机高可用版, 一主一从）
        # @type DBInstanceVersion: String
        # @param DBCharset: 实例DB字符集
        # @type DBCharset: String
        # @param DBVersion: PostgreSQL主版本
        # @type DBVersion: String
        # @param CreateTime: 实例创建时间
        # @type CreateTime: String
        # @param UpdateTime: 实例执行最后一次更新的时间
        # @type UpdateTime: String
        # @param ExpireTime: 实例到期时间
        # @type ExpireTime: String
        # @param IsolatedTime: 实例隔离时间
        # @type IsolatedTime: String
        # @param PayType: 计费模式，1、prepaid（包年包月,预付费）；2、postpaid（按量计费，后付费）
        # @type PayType: String
        # @param AutoRenew: 是否自动续费，1：自动续费，0：不自动续费
        # @type AutoRenew: Integer
        # @param DBInstanceNetInfo: 实例网络连接信息
        # @type DBInstanceNetInfo: Array
        # @param Type: 机器类型
        # @type Type: String
        # @param AppId: 用户的AppId
        # @type AppId: Integer
        # @param Uid: 实例的Uid
        # @type Uid: Integer
        # @param SupportIpv6: 实例是否支持Ipv6，1：支持，0：不支持
        # @type SupportIpv6: Integer
        # @param TagList: 实例绑定的标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagList: Array
        # @param MasterDBInstanceId: 主实例信息，仅在实例为只读实例时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterDBInstanceId: String
        # @param ReadOnlyInstanceNum: 只读实例数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadOnlyInstanceNum: Integer
        # @param StatusInReadonlyGroup: 只读实例在只读组中的状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusInReadonlyGroup: String
        # @param OfflineTime: 下线时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineTime: String
        # @param DBKernelVersion: 数据库内核版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBKernelVersion: String
        # @param NetworkAccessList: 实例网络信息列表（此字段已废弃）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkAccessList: Array

        attr_accessor :Region, :Zone, :ProjectId, :VpcId, :SubnetId, :DBInstanceId, :DBInstanceName, :DBInstanceStatus, :DBInstanceMemory, :DBInstanceStorage, :DBInstanceCpu, :DBInstanceClass, :DBInstanceType, :DBInstanceVersion, :DBCharset, :DBVersion, :CreateTime, :UpdateTime, :ExpireTime, :IsolatedTime, :PayType, :AutoRenew, :DBInstanceNetInfo, :Type, :AppId, :Uid, :SupportIpv6, :TagList, :MasterDBInstanceId, :ReadOnlyInstanceNum, :StatusInReadonlyGroup, :OfflineTime, :DBKernelVersion, :NetworkAccessList
        
        def initialize(region=nil, zone=nil, projectid=nil, vpcid=nil, subnetid=nil, dbinstanceid=nil, dbinstancename=nil, dbinstancestatus=nil, dbinstancememory=nil, dbinstancestorage=nil, dbinstancecpu=nil, dbinstanceclass=nil, dbinstancetype=nil, dbinstanceversion=nil, dbcharset=nil, dbversion=nil, createtime=nil, updatetime=nil, expiretime=nil, isolatedtime=nil, paytype=nil, autorenew=nil, dbinstancenetinfo=nil, type=nil, appid=nil, uid=nil, supportipv6=nil, taglist=nil, masterdbinstanceid=nil, readonlyinstancenum=nil, statusinreadonlygroup=nil, offlinetime=nil, dbkernelversion=nil, networkaccesslist=nil)
          @Region = region
          @Zone = zone
          @ProjectId = projectid
          @VpcId = vpcid
          @SubnetId = subnetid
          @DBInstanceId = dbinstanceid
          @DBInstanceName = dbinstancename
          @DBInstanceStatus = dbinstancestatus
          @DBInstanceMemory = dbinstancememory
          @DBInstanceStorage = dbinstancestorage
          @DBInstanceCpu = dbinstancecpu
          @DBInstanceClass = dbinstanceclass
          @DBInstanceType = dbinstancetype
          @DBInstanceVersion = dbinstanceversion
          @DBCharset = dbcharset
          @DBVersion = dbversion
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ExpireTime = expiretime
          @IsolatedTime = isolatedtime
          @PayType = paytype
          @AutoRenew = autorenew
          @DBInstanceNetInfo = dbinstancenetinfo
          @Type = type
          @AppId = appid
          @Uid = uid
          @SupportIpv6 = supportipv6
          @TagList = taglist
          @MasterDBInstanceId = masterdbinstanceid
          @ReadOnlyInstanceNum = readonlyinstancenum
          @StatusInReadonlyGroup = statusinreadonlygroup
          @OfflineTime = offlinetime
          @DBKernelVersion = dbkernelversion
          @NetworkAccessList = networkaccesslist
        end

        def deserialize(params)
          @Region = params['Region']
          @Zone = params['Zone']
          @ProjectId = params['ProjectId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @DBInstanceId = params['DBInstanceId']
          @DBInstanceName = params['DBInstanceName']
          @DBInstanceStatus = params['DBInstanceStatus']
          @DBInstanceMemory = params['DBInstanceMemory']
          @DBInstanceStorage = params['DBInstanceStorage']
          @DBInstanceCpu = params['DBInstanceCpu']
          @DBInstanceClass = params['DBInstanceClass']
          @DBInstanceType = params['DBInstanceType']
          @DBInstanceVersion = params['DBInstanceVersion']
          @DBCharset = params['DBCharset']
          @DBVersion = params['DBVersion']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ExpireTime = params['ExpireTime']
          @IsolatedTime = params['IsolatedTime']
          @PayType = params['PayType']
          @AutoRenew = params['AutoRenew']
          unless params['DBInstanceNetInfo'].nil?
            @DBInstanceNetInfo = []
            params['DBInstanceNetInfo'].each do |i|
              dbinstancenetinfo_tmp = DBInstanceNetInfo.new
              dbinstancenetinfo_tmp.deserialize(i)
              @DBInstanceNetInfo << dbinstancenetinfo_tmp
            end
          end
          @Type = params['Type']
          @AppId = params['AppId']
          @Uid = params['Uid']
          @SupportIpv6 = params['SupportIpv6']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagList << tag_tmp
            end
          end
          @MasterDBInstanceId = params['MasterDBInstanceId']
          @ReadOnlyInstanceNum = params['ReadOnlyInstanceNum']
          @StatusInReadonlyGroup = params['StatusInReadonlyGroup']
          @OfflineTime = params['OfflineTime']
          @DBKernelVersion = params['DBKernelVersion']
          unless params['NetworkAccessList'].nil?
            @NetworkAccessList = []
            params['NetworkAccessList'].each do |i|
              networkaccess_tmp = NetworkAccess.new
              networkaccess_tmp.deserialize(i)
              @NetworkAccessList << networkaccess_tmp
            end
          end
        end
      end

      # 描述实例的网络连接信息。
      class DBInstanceNetInfo < TencentCloud::Common::AbstractModel
        # @param Address: DNS域名
        # @type Address: String
        # @param Ip: IP地址
        # @type Ip: String
        # @param Port: 连接Port地址
        # @type Port: Integer
        # @param NetType: 网络类型，1、inner（基础网络内网地址）；2、private（私有网络内网地址）；3、public（基础网络或私有网络的外网地址）；
        # @type NetType: String
        # @param Status: 网络连接状态，1、initing（未开通）；2、opened（已开通）；3、closed（已关闭）；4、opening（开通中）；5、closing（关闭中）；
        # @type Status: String
        # @param VpcId: 私有网络ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String

        attr_accessor :Address, :Ip, :Port, :NetType, :Status, :VpcId, :SubnetId
        
        def initialize(address=nil, ip=nil, port=nil, nettype=nil, status=nil, vpcid=nil, subnetid=nil)
          @Address = address
          @Ip = ip
          @Port = port
          @NetType = nettype
          @Status = status
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @Address = params['Address']
          @Ip = params['Ip']
          @Port = params['Port']
          @NetType = params['NetType']
          @Status = params['Status']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # DeleteReadOnlyGroup请求参数结构体
      class DeleteReadOnlyGroupRequest < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupId: 待删除只读组ID
        # @type ReadOnlyGroupId: String

        attr_accessor :ReadOnlyGroupId
        
        def initialize(readonlygroupid=nil)
          @ReadOnlyGroupId = readonlygroupid
        end

        def deserialize(params)
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
        end
      end

      # DeleteReadOnlyGroup返回参数结构体
      class DeleteReadOnlyGroupResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DeleteServerlessDBInstance请求参数结构体
      class DeleteServerlessDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceName: DB实例名称，实例名和实例ID必须至少传一个，如果同时存在，将只以实例ID为准。
        # @type DBInstanceName: String
        # @param DBInstanceId: DB实例ID，实例名和实例ID必须至少传一个，如果同时存在，将只以实例ID为准。
        # @type DBInstanceId: String

        attr_accessor :DBInstanceName, :DBInstanceId
        
        def initialize(dbinstancename=nil, dbinstanceid=nil)
          @DBInstanceName = dbinstancename
          @DBInstanceId = dbinstanceid
        end

        def deserialize(params)
          @DBInstanceName = params['DBInstanceName']
          @DBInstanceId = params['DBInstanceId']
        end
      end

      # DeleteServerlessDBInstance返回参数结构体
      class DeleteServerlessDBInstanceResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAccounts请求参数结构体
      class DescribeAccountsRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-6fego161
        # @type DBInstanceId: String
        # @param Limit: 分页返回，每页最大返回数目，默认20，取值范围为1-100
        # @type Limit: Integer
        # @param Offset: 分页返回，返回第几页的用户数据。页码从0开始计数
        # @type Offset: Integer
        # @param OrderBy: 返回数据按照创建时间或者用户名排序。取值只能为createTime或者name。createTime-按照创建时间排序；name-按照用户名排序
        # @type OrderBy: String
        # @param OrderByType: 返回结果是升序还是降序。取值只能为desc或者asc。desc-降序；asc-升序
        # @type OrderByType: String

        attr_accessor :DBInstanceId, :Limit, :Offset, :OrderBy, :OrderByType
        
        def initialize(dbinstanceid=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil)
          @DBInstanceId = dbinstanceid
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeAccounts返回参数结构体
      class DescribeAccountsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 本次调用接口共返回了多少条数据。
        # @type TotalCount: Integer
        # @param Details: 帐号列表详细信息。
        # @type Details: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Details, :RequestId
        
        def initialize(totalcount=nil, details=nil, requestid=nil)
          @TotalCount = totalcount
          @Details = details
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              accountinfo_tmp = AccountInfo.new
              accountinfo_tmp.deserialize(i)
              @Details << accountinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBBackups请求参数结构体
      class DescribeDBBackupsRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-4wdeb0zv。
        # @type DBInstanceId: String
        # @param Type: 备份方式（1-全量）。目前只支持全量，取值为1。
        # @type Type: Integer
        # @param StartTime: 查询开始时间，形如2018-06-10 17:06:38，起始时间不得小于7天以前
        # @type StartTime: String
        # @param EndTime: 查询结束时间，形如2018-06-10 17:06:38
        # @type EndTime: String
        # @param Limit: 备份列表分页返回，每页返回数量，默认为 20，最小为1，最大值为 100。（当该参数不传或者传0时按默认值处理）
        # @type Limit: Integer
        # @param Offset: 返回结果中的第几页，从第0页开始。默认为0。
        # @type Offset: Integer

        attr_accessor :DBInstanceId, :Type, :StartTime, :EndTime, :Limit, :Offset
        
        def initialize(dbinstanceid=nil, type=nil, starttime=nil, endtime=nil, limit=nil, offset=nil)
          @DBInstanceId = dbinstanceid
          @Type = type
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @Type = params['Type']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDBBackups返回参数结构体
      class DescribeDBBackupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回备份列表中备份文件的个数
        # @type TotalCount: Integer
        # @param BackupList: 备份列表
        # @type BackupList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BackupList, :RequestId
        
        def initialize(totalcount=nil, backuplist=nil, requestid=nil)
          @TotalCount = totalcount
          @BackupList = backuplist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BackupList'].nil?
            @BackupList = []
            params['BackupList'].each do |i|
              dbbackup_tmp = DBBackup.new
              dbbackup_tmp.deserialize(i)
              @BackupList << dbbackup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBErrlogs请求参数结构体
      class DescribeDBErrlogsRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-5bq3wfjd
        # @type DBInstanceId: String
        # @param StartTime: 查询起始时间，形如2018-01-01 00:00:00，起始时间不得小于7天以前
        # @type StartTime: String
        # @param EndTime: 查询结束时间，形如2018-01-01 00:00:00
        # @type EndTime: String
        # @param DatabaseName: 数据库名字
        # @type DatabaseName: String
        # @param SearchKeys: 搜索关键字
        # @type SearchKeys: Array
        # @param Limit: 分页返回，每页返回的最大数量。取值为1-100
        # @type Limit: Integer
        # @param Offset: 分页返回，返回第几页的数据，从第0页开始计数
        # @type Offset: Integer

        attr_accessor :DBInstanceId, :StartTime, :EndTime, :DatabaseName, :SearchKeys, :Limit, :Offset
        
        def initialize(dbinstanceid=nil, starttime=nil, endtime=nil, databasename=nil, searchkeys=nil, limit=nil, offset=nil)
          @DBInstanceId = dbinstanceid
          @StartTime = starttime
          @EndTime = endtime
          @DatabaseName = databasename
          @SearchKeys = searchkeys
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DatabaseName = params['DatabaseName']
          @SearchKeys = params['SearchKeys']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDBErrlogs返回参数结构体
      class DescribeDBErrlogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 本次调用返回了多少条数据
        # @type TotalCount: Integer
        # @param Details: 错误日志列表
        # @type Details: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Details, :RequestId
        
        def initialize(totalcount=nil, details=nil, requestid=nil)
          @TotalCount = totalcount
          @Details = details
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              errlogdetail_tmp = ErrLogDetail.new
              errlogdetail_tmp.deserialize(i)
              @Details << errlogdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceAttribute请求参数结构体
      class DescribeDBInstanceAttributeRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID
        # @type DBInstanceId: String

        attr_accessor :DBInstanceId
        
        def initialize(dbinstanceid=nil)
          @DBInstanceId = dbinstanceid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
        end
      end

      # DescribeDBInstanceAttribute返回参数结构体
      class DescribeDBInstanceAttributeResponse < TencentCloud::Common::AbstractModel
        # @param DBInstance: 实例详细信息。
        # @type DBInstance: :class:`Tencentcloud::Postgres.v20170312.models.DBInstance`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DBInstance, :RequestId
        
        def initialize(dbinstance=nil, requestid=nil)
          @DBInstance = dbinstance
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DBInstance'].nil?
            @DBInstance = DBInstance.new
            @DBInstance.deserialize(params['DBInstance'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceParameters请求参数结构体
      class DescribeDBInstanceParametersRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID
        # @type DBInstanceId: String
        # @param ParamName: 查询指定参数详情。ParamName为空或不传，默认返回全部参数列表
        # @type ParamName: String

        attr_accessor :DBInstanceId, :ParamName
        
        def initialize(dbinstanceid=nil, paramname=nil)
          @DBInstanceId = dbinstanceid
          @ParamName = paramname
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @ParamName = params['ParamName']
        end
      end

      # DescribeDBInstanceParameters返回参数结构体
      class DescribeDBInstanceParametersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 参数列表总数
        # @type TotalCount: Integer
        # @param Detail: 参数列表返回详情
        # @type Detail: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Detail, :RequestId
        
        def initialize(totalcount=nil, detail=nil, requestid=nil)
          @TotalCount = totalcount
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @Detail << paraminfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstances请求参数结构体
      class DescribeDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 按照一个或者多个过滤条件进行查询，目前支持的过滤条件有：
        # db-instance-id：按照实例ID过滤，类型为string
        # db-instance-name：按照实例名过滤，类型为string
        # db-project-id：按照项目ID过滤，类型为integer
        # db-pay-mode：按照付费模式过滤，类型为string
        # db-tag-key：按照标签键过滤，类型为string
        # @type Filters: Array
        # @param Limit: 每页显示数量，取值范围为1-100，默认为返回10条。
        # @type Limit: Integer
        # @param OrderBy: 排序指标，如实例名、创建时间等，支持DBInstanceId,CreateTime,Name,EndTime
        # @type OrderBy: String
        # @param Offset: 页码偏移量，从0开始。
        # @type Offset: Integer
        # @param OrderByType: 排序方式，包括升序：asc、降序：desc。
        # @type OrderByType: String

        attr_accessor :Filters, :Limit, :OrderBy, :Offset, :OrderByType
        
        def initialize(filters=nil, limit=nil, orderby=nil, offset=nil, orderbytype=nil)
          @Filters = filters
          @Limit = limit
          @OrderBy = orderby
          @Offset = offset
          @OrderByType = orderbytype
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
          @OrderBy = params['OrderBy']
          @Offset = params['Offset']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeDBInstances返回参数结构体
      class DescribeDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询到的实例数量。
        # @type TotalCount: Integer
        # @param DBInstanceSet: 实例详细信息集合。
        # @type DBInstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DBInstanceSet, :RequestId
        
        def initialize(totalcount=nil, dbinstanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @DBInstanceSet = dbinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DBInstanceSet'].nil?
            @DBInstanceSet = []
            params['DBInstanceSet'].each do |i|
              dbinstance_tmp = DBInstance.new
              dbinstance_tmp.deserialize(i)
              @DBInstanceSet << dbinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSlowlogs请求参数结构体
      class DescribeDBSlowlogsRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-lnp6j617
        # @type DBInstanceId: String
        # @param StartTime: 查询起始时间，形如2018-06-10 17:06:38，起始时间不得小于7天以前
        # @type StartTime: String
        # @param EndTime: 查询结束时间，形如2018-06-10 17:06:38
        # @type EndTime: String
        # @param DatabaseName: 数据库名字
        # @type DatabaseName: String
        # @param OrderBy: 按照何种指标排序，取值为sum_calls或者sum_cost_time。sum_calls-总调用次数；sum_cost_time-总的花费时间
        # @type OrderBy: String
        # @param OrderByType: 排序规则。desc-降序；asc-升序
        # @type OrderByType: String
        # @param Limit: 分页返回结果，每页最大返回数量，取值为1-100，默认20
        # @type Limit: Integer
        # @param Offset: 分页返回结果，返回结果的第几页，从0开始计数
        # @type Offset: Integer

        attr_accessor :DBInstanceId, :StartTime, :EndTime, :DatabaseName, :OrderBy, :OrderByType, :Limit, :Offset
        
        def initialize(dbinstanceid=nil, starttime=nil, endtime=nil, databasename=nil, orderby=nil, orderbytype=nil, limit=nil, offset=nil)
          @DBInstanceId = dbinstanceid
          @StartTime = starttime
          @EndTime = endtime
          @DatabaseName = databasename
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DatabaseName = params['DatabaseName']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDBSlowlogs返回参数结构体
      class DescribeDBSlowlogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 本次返回多少条数据
        # @type TotalCount: Integer
        # @param Detail: 慢查询日志详情
        # @type Detail: :class:`Tencentcloud::Postgres.v20170312.models.SlowlogDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Detail, :RequestId
        
        def initialize(totalcount=nil, detail=nil, requestid=nil)
          @TotalCount = totalcount
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Detail'].nil?
            @Detail = SlowlogDetail.new
            @Detail.deserialize(params['Detail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBXlogs请求参数结构体
      class DescribeDBXlogsRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-4wdeb0zv。
        # @type DBInstanceId: String
        # @param StartTime: 查询开始时间，形如2018-06-10 17:06:38，起始时间不得小于7天以前
        # @type StartTime: String
        # @param EndTime: 查询结束时间，形如2018-06-10 17:06:38
        # @type EndTime: String
        # @param Offset: 分页返回，表示返回第几页的条目。从第0页开始计数。
        # @type Offset: Integer
        # @param Limit: 分页返回，表示每页有多少条目。取值为1-100。
        # @type Limit: Integer

        attr_accessor :DBInstanceId, :StartTime, :EndTime, :Offset, :Limit
        
        def initialize(dbinstanceid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @DBInstanceId = dbinstanceid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDBXlogs返回参数结构体
      class DescribeDBXlogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 表示此次返回结果有多少条数据。
        # @type TotalCount: Integer
        # @param XlogList: Xlog列表
        # @type XlogList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :XlogList, :RequestId
        
        def initialize(totalcount=nil, xloglist=nil, requestid=nil)
          @TotalCount = totalcount
          @XlogList = xloglist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['XlogList'].nil?
            @XlogList = []
            params['XlogList'].each do |i|
              xlog_tmp = Xlog.new
              xlog_tmp.deserialize(i)
              @XlogList << xlog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabases请求参数结构体
      class DescribeDatabasesRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID
        # @type DBInstanceId: String

        attr_accessor :DBInstanceId
        
        def initialize(dbinstanceid=nil)
          @DBInstanceId = dbinstanceid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
        end
      end

      # DescribeDatabases返回参数结构体
      class DescribeDatabasesResponse < TencentCloud::Common::AbstractModel
        # @param Items: 数据库信息
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId
        
        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @Items = params['Items']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrders请求参数结构体
      class DescribeOrdersRequest < TencentCloud::Common::AbstractModel
        # @param DealNames: 订单名集合
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
        # @param TotalCount: 订单数量
        # @type TotalCount: Integer
        # @param Deals: 订单数组
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
              pgdeal_tmp = PgDeal.new
              pgdeal_tmp.deserialize(i)
              @Deals << pgdeal_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeParamsEvent请求参数结构体
      class DescribeParamsEventRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例DB ID
        # @type DBInstanceId: String

        attr_accessor :DBInstanceId
        
        def initialize(dbinstanceid=nil)
          @DBInstanceId = dbinstanceid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
        end
      end

      # DescribeParamsEvent返回参数结构体
      class DescribeParamsEventResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 参数修改事件总数，以参数为统计粒度
        # @type TotalCount: Integer
        # @param EventItems: 实例参数修改事件详情
        # @type EventItems: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :EventItems, :RequestId
        
        def initialize(totalcount=nil, eventitems=nil, requestid=nil)
          @TotalCount = totalcount
          @EventItems = eventitems
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EventItems'].nil?
            @EventItems = []
            params['EventItems'].each do |i|
              eventitem_tmp = EventItem.new
              eventitem_tmp.deserialize(i)
              @EventItems << eventitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProductConfig请求参数结构体
      class DescribeProductConfigRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区名称
        # @type Zone: String

        attr_accessor :Zone
        
        def initialize(zone=nil)
          @Zone = zone
        end

        def deserialize(params)
          @Zone = params['Zone']
        end
      end

      # DescribeProductConfig返回参数结构体
      class DescribeProductConfigResponse < TencentCloud::Common::AbstractModel
        # @param SpecInfoList: 售卖规格列表。
        # @type SpecInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SpecInfoList, :RequestId
        
        def initialize(specinfolist=nil, requestid=nil)
          @SpecInfoList = specinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SpecInfoList'].nil?
            @SpecInfoList = []
            params['SpecInfoList'].each do |i|
              specinfo_tmp = SpecInfo.new
              specinfo_tmp.deserialize(i)
              @SpecInfoList << specinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReadOnlyGroups请求参数结构体
      class DescribeReadOnlyGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，必须传入主实例ID进行过滤，否则返回值将为空，过滤参数为：db-master-instance-id
        # @type Filters: Array
        # @param PageSize: 查询每一页的条数，默认为10
        # @type PageSize: Integer
        # @param PageNumber: 查询的页码，默认为1
        # @type PageNumber: Integer
        # @param OrderBy: 查询排序依据，目前支持:ROGroupId,CreateTime,Name
        # @type OrderBy: String
        # @param OrderByType: 查询排序依据类型，目前支持:desc,asc
        # @type OrderByType: String

        attr_accessor :Filters, :PageSize, :PageNumber, :OrderBy, :OrderByType
        
        def initialize(filters=nil, pagesize=nil, pagenumber=nil, orderby=nil, orderbytype=nil)
          @Filters = filters
          @PageSize = pagesize
          @PageNumber = pagenumber
          @OrderBy = orderby
          @OrderByType = orderbytype
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
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeReadOnlyGroups返回参数结构体
      class DescribeReadOnlyGroupsResponse < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupList: 只读组列表
        # @type ReadOnlyGroupList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReadOnlyGroupList, :RequestId
        
        def initialize(readonlygrouplist=nil, requestid=nil)
          @ReadOnlyGroupList = readonlygrouplist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ReadOnlyGroupList'].nil?
            @ReadOnlyGroupList = []
            params['ReadOnlyGroupList'].each do |i|
              readonlygroup_tmp = ReadOnlyGroup.new
              readonlygroup_tmp.deserialize(i)
              @ReadOnlyGroupList << readonlygroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegions请求参数结构体
      class DescribeRegionsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRegions返回参数结构体
      class DescribeRegionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的结果数量。
        # @type TotalCount: Integer
        # @param RegionSet: 地域信息集合。
        # @type RegionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RegionSet, :RequestId
        
        def initialize(totalcount=nil, regionset=nil, requestid=nil)
          @TotalCount = totalcount
          @RegionSet = regionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RegionSet'].nil?
            @RegionSet = []
            params['RegionSet'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @RegionSet << regioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServerlessDBInstances请求参数结构体
      class DescribeServerlessDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 查询条件
        # @type Filter: Array
        # @param Limit: 查询个数
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param OrderBy: 排序指标，目前支持实例创建时间CreateTime
        # @type OrderBy: String
        # @param OrderByType: 排序方式，包括升序、降序
        # @type OrderByType: String

        attr_accessor :Filter, :Limit, :Offset, :OrderBy, :OrderByType
        
        def initialize(filter=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil)
          @Filter = filter
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = []
            params['Filter'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filter << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeServerlessDBInstances返回参数结构体
      class DescribeServerlessDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果数
        # @type TotalCount: Integer
        # @param DBInstanceSet: 查询结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBInstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DBInstanceSet, :RequestId
        
        def initialize(totalcount=nil, dbinstanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @DBInstanceSet = dbinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DBInstanceSet'].nil?
            @DBInstanceSet = []
            params['DBInstanceSet'].each do |i|
              serverlessdbinstance_tmp = ServerlessDBInstance.new
              serverlessdbinstance_tmp.deserialize(i)
              @DBInstanceSet << serverlessdbinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowQueryAnalysis请求参数结构体
      class DescribeSlowQueryAnalysisRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。
        # @type DBInstanceId: String
        # @param StartTime: 查询起始时间戳，格式 “YYYY-MM-DD HH:mm:ss” ，日志保留时间默认为7天，起始时间不能超出保留时间范围。
        # @type StartTime: String
        # @param EndTime: 查询结束时间戳，格式 “YYYY-MM-DD HH:mm:ss”。
        # @type EndTime: String
        # @param DatabaseName: 根据数据库名进行筛选，可以为空。
        # @type DatabaseName: String
        # @param OrderBy: 排序维度。 可选参数，取值范围[CallNum,CostTime,AvgCostTime]。默认CallNum。
        # @type OrderBy: String
        # @param OrderByType: 排序类型。升序asc、降序desc。默认desc。
        # @type OrderByType: String
        # @param Limit: 分页大小。取值范围[1,100]。默认50。
        # @type Limit: Integer
        # @param Offset: 分页偏移。取值范围[0,INF)。默认0。
        # @type Offset: Integer

        attr_accessor :DBInstanceId, :StartTime, :EndTime, :DatabaseName, :OrderBy, :OrderByType, :Limit, :Offset
        
        def initialize(dbinstanceid=nil, starttime=nil, endtime=nil, databasename=nil, orderby=nil, orderbytype=nil, limit=nil, offset=nil)
          @DBInstanceId = dbinstanceid
          @StartTime = starttime
          @EndTime = endtime
          @DatabaseName = databasename
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DatabaseName = params['DatabaseName']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeSlowQueryAnalysis返回参数结构体
      class DescribeSlowQueryAnalysisResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总条数。
        # @type TotalCount: Integer
        # @param Detail: 慢SQL统计分析接口返回详情。
        # @type Detail: :class:`Tencentcloud::Postgres.v20170312.models.Detail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Detail, :RequestId
        
        def initialize(totalcount=nil, detail=nil, requestid=nil)
          @TotalCount = totalcount
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Detail'].nil?
            @Detail = Detail.new
            @Detail.deserialize(params['Detail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowQueryList请求参数结构体
      class DescribeSlowQueryListRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID。
        # @type DBInstanceId: String
        # @param StartTime: 查询起始时间戳，格式 “YYYY-MM-DD HH:mm:ss” ，日志保留时间默认为7天，起始时间不能超出保留时间范围。
        # @type StartTime: String
        # @param EndTime: 查询结束时间戳，格式 “YYYY-MM-DD HH:mm:ss”。
        # @type EndTime: String
        # @param DatabaseName: 根据数据库名进行筛选，可以为空。
        # @type DatabaseName: String
        # @param OrderByType: 排序类型。升序asc、降序desc。默认为desc。
        # @type OrderByType: String
        # @param OrderBy: 排序维度。 可选参数，取值范围[SessionStartTime,Duration]，默认为SessionStartTime。
        # @type OrderBy: String
        # @param Limit: 分页大小。取值范围[1,100],默认为20。
        # @type Limit: Integer
        # @param Offset: 分页偏移。取值范围[0,INF)，默认为0。
        # @type Offset: Integer

        attr_accessor :DBInstanceId, :StartTime, :EndTime, :DatabaseName, :OrderByType, :OrderBy, :Limit, :Offset
        
        def initialize(dbinstanceid=nil, starttime=nil, endtime=nil, databasename=nil, orderbytype=nil, orderby=nil, limit=nil, offset=nil)
          @DBInstanceId = dbinstanceid
          @StartTime = starttime
          @EndTime = endtime
          @DatabaseName = databasename
          @OrderByType = orderbytype
          @OrderBy = orderby
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DatabaseName = params['DatabaseName']
          @OrderByType = params['OrderByType']
          @OrderBy = params['OrderBy']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeSlowQueryList返回参数结构体
      class DescribeSlowQueryListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 选定时间范围内慢SQL总条数。
        # @type TotalCount: Integer
        # @param DurationAnalysis: 指定时间范围内，慢SQL耗时分段分析。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DurationAnalysis: Array
        # @param RawSlowQueryList: 指定时间范围内 慢SQL流水。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RawSlowQueryList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DurationAnalysis, :RawSlowQueryList, :RequestId
        
        def initialize(totalcount=nil, durationanalysis=nil, rawslowquerylist=nil, requestid=nil)
          @TotalCount = totalcount
          @DurationAnalysis = durationanalysis
          @RawSlowQueryList = rawslowquerylist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DurationAnalysis'].nil?
            @DurationAnalysis = []
            params['DurationAnalysis'].each do |i|
              durationanalysis_tmp = DurationAnalysis.new
              durationanalysis_tmp.deserialize(i)
              @DurationAnalysis << durationanalysis_tmp
            end
          end
          unless params['RawSlowQueryList'].nil?
            @RawSlowQueryList = []
            params['RawSlowQueryList'].each do |i|
              rawslowquery_tmp = RawSlowQuery.new
              rawslowquery_tmp.deserialize(i)
              @RawSlowQueryList << rawslowquery_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZones请求参数结构体
      class DescribeZonesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeZones返回参数结构体
      class DescribeZonesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的结果数量。
        # @type TotalCount: Integer
        # @param ZoneSet: 可用区信息集合。
        # @type ZoneSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ZoneSet, :RequestId
        
        def initialize(totalcount=nil, zoneset=nil, requestid=nil)
          @TotalCount = totalcount
          @ZoneSet = zoneset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ZoneSet'].nil?
            @ZoneSet = []
            params['ZoneSet'].each do |i|
              zoneinfo_tmp = ZoneInfo.new
              zoneinfo_tmp.deserialize(i)
              @ZoneSet << zoneinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DestroyDBInstance请求参数结构体
      class DestroyDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 待下线实例ID
        # @type DBInstanceId: String

        attr_accessor :DBInstanceId
        
        def initialize(dbinstanceid=nil)
          @DBInstanceId = dbinstanceid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
        end
      end

      # DestroyDBInstance返回参数结构体
      class DestroyDBInstanceResponse < TencentCloud::Common::AbstractModel
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

      # 慢SQL 统计分析接口返回详情
      class Detail < TencentCloud::Common::AbstractModel
        # @param TotalTime: 输入时间范围内所有慢sql执行的总时间，单位毫秒（ms）
        # @type TotalTime: Float
        # @param TotalCallNum: 输入时间范围内所有慢sql总条数
        # @type TotalCallNum: Integer
        # @param AnalysisItems: 慢SQL统计分析列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnalysisItems: Array

        attr_accessor :TotalTime, :TotalCallNum, :AnalysisItems
        
        def initialize(totaltime=nil, totalcallnum=nil, analysisitems=nil)
          @TotalTime = totaltime
          @TotalCallNum = totalcallnum
          @AnalysisItems = analysisitems
        end

        def deserialize(params)
          @TotalTime = params['TotalTime']
          @TotalCallNum = params['TotalCallNum']
          unless params['AnalysisItems'].nil?
            @AnalysisItems = []
            params['AnalysisItems'].each do |i|
              analysisitems_tmp = AnalysisItems.new
              analysisitems_tmp.deserialize(i)
              @AnalysisItems << analysisitems_tmp
            end
          end
        end
      end

      # DisIsolateDBInstances请求参数结构体
      class DisIsolateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceIdSet: 资源ID列表
        # @type DBInstanceIdSet: Array
        # @param Period: 包年包月实例解隔离时购买时常 以月为单位
        # @type Period: Integer
        # @param AutoVoucher: 是否使用代金券：true-使用,false-不使用，默认不使用
        # @type AutoVoucher: Boolean
        # @param VoucherIds: 代金券id列表
        # @type VoucherIds: Array

        attr_accessor :DBInstanceIdSet, :Period, :AutoVoucher, :VoucherIds
        
        def initialize(dbinstanceidset=nil, period=nil, autovoucher=nil, voucherids=nil)
          @DBInstanceIdSet = dbinstanceidset
          @Period = period
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
        end

        def deserialize(params)
          @DBInstanceIdSet = params['DBInstanceIdSet']
          @Period = params['Period']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
        end
      end

      # DisIsolateDBInstances返回参数结构体
      class DisIsolateDBInstancesResponse < TencentCloud::Common::AbstractModel
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

      # 慢SQL耗时分段分析
      class DurationAnalysis < TencentCloud::Common::AbstractModel
        # @param TimeSegment: 慢SQL耗时，时段
        # @type TimeSegment: String
        # @param Count: 对应时段区间慢SQL 条数
        # @type Count: Integer

        attr_accessor :TimeSegment, :Count
        
        def initialize(timesegment=nil, count=nil)
          @TimeSegment = timesegment
          @Count = count
        end

        def deserialize(params)
          @TimeSegment = params['TimeSegment']
          @Count = params['Count']
        end
      end

      # 错误日志详情
      class ErrLogDetail < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param Database: 数据库名字
        # @type Database: String
        # @param ErrTime: 错误发生时间
        # @type ErrTime: String
        # @param ErrMsg: 错误消息
        # @type ErrMsg: String

        attr_accessor :UserName, :Database, :ErrTime, :ErrMsg
        
        def initialize(username=nil, database=nil, errtime=nil, errmsg=nil)
          @UserName = username
          @Database = database
          @ErrTime = errtime
          @ErrMsg = errmsg
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Database = params['Database']
          @ErrTime = params['ErrTime']
          @ErrMsg = params['ErrMsg']
        end
      end

      # 参数修改事件信息
      class EventInfo < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamName: String
        # @param OldValue: 原参数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldValue: String
        # @param NewValue: 本次修改期望参数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewValue: String
        # @param ModifyTime: 后台参数修改开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param EffectiveTime: 后台参数生效开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EffectiveTime: String
        # @param State: 修改状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: String
        # @param Operator: 操作者（一般为用户sub UIN）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param EventLog: 时间日志。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventLog: String

        attr_accessor :ParamName, :OldValue, :NewValue, :ModifyTime, :EffectiveTime, :State, :Operator, :EventLog
        
        def initialize(paramname=nil, oldvalue=nil, newvalue=nil, modifytime=nil, effectivetime=nil, state=nil, operator=nil, eventlog=nil)
          @ParamName = paramname
          @OldValue = oldvalue
          @NewValue = newvalue
          @ModifyTime = modifytime
          @EffectiveTime = effectivetime
          @State = state
          @Operator = operator
          @EventLog = eventlog
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @OldValue = params['OldValue']
          @NewValue = params['NewValue']
          @ModifyTime = params['ModifyTime']
          @EffectiveTime = params['EffectiveTime']
          @State = params['State']
          @Operator = params['Operator']
          @EventLog = params['EventLog']
        end
      end

      # 修改参数条目，以参数为维度
      class EventItem < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamName: String
        # @param EventCount: 修改事件数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventCount: Integer
        # @param EventDetail: 修改时间详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventDetail: Array

        attr_accessor :ParamName, :EventCount, :EventDetail
        
        def initialize(paramname=nil, eventcount=nil, eventdetail=nil)
          @ParamName = paramname
          @EventCount = eventcount
          @EventDetail = eventdetail
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @EventCount = params['EventCount']
          unless params['EventDetail'].nil?
            @EventDetail = []
            params['EventDetail'].each do |i|
              eventinfo_tmp = EventInfo.new
              eventinfo_tmp.deserialize(i)
              @EventDetail << eventinfo_tmp
            end
          end
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称等
      # * 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # * 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤键的名称。
        # @type Name: String
        # @param Values: 一个或者多个过滤值。
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

      # InitDBInstances请求参数结构体
      class InitDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceIdSet: 实例ID集合。
        # @type DBInstanceIdSet: Array
        # @param AdminName: 实例根账号用户名。
        # @type AdminName: String
        # @param AdminPassword: 实例根账号用户名对应的密码。
        # @type AdminPassword: String
        # @param Charset: 实例字符集，目前只支持：UTF8、LATIN1。
        # @type Charset: String

        attr_accessor :DBInstanceIdSet, :AdminName, :AdminPassword, :Charset
        
        def initialize(dbinstanceidset=nil, adminname=nil, adminpassword=nil, charset=nil)
          @DBInstanceIdSet = dbinstanceidset
          @AdminName = adminname
          @AdminPassword = adminpassword
          @Charset = charset
        end

        def deserialize(params)
          @DBInstanceIdSet = params['DBInstanceIdSet']
          @AdminName = params['AdminName']
          @AdminPassword = params['AdminPassword']
          @Charset = params['Charset']
        end
      end

      # InitDBInstances返回参数结构体
      class InitDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param DBInstanceIdSet: 实例ID集合。
        # @type DBInstanceIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DBInstanceIdSet, :RequestId
        
        def initialize(dbinstanceidset=nil, requestid=nil)
          @DBInstanceIdSet = dbinstanceidset
          @RequestId = requestid
        end

        def deserialize(params)
          @DBInstanceIdSet = params['DBInstanceIdSet']
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceCreateDBInstances请求参数结构体
      class InquiryPriceCreateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区ID。该参数可以通过调用 DescribeZones 接口的返回值中的Zone字段来获取。
        # @type Zone: String
        # @param SpecCode: 规格ID。该参数可以通过调用DescribeProductConfig接口的返回值中的SpecCode字段来获取。
        # @type SpecCode: String
        # @param Storage: 存储容量大小，单位：GB。
        # @type Storage: Integer
        # @param InstanceCount: 实例数量。目前最大数量不超过100，如需一次性创建更多实例，请联系客服支持。
        # @type InstanceCount: Integer
        # @param Period: 购买时长，单位：月。目前只支持1,2,3,4,5,6,7,8,9,10,11,12,24,36这些值。
        # @type Period: Integer
        # @param Pid: 计费ID。该参数可以通过调用DescribeProductConfig接口的返回值中的Pid字段来获取。
        # @type Pid: Integer
        # @param InstanceChargeType: 实例计费类型。目前只支持：PREPAID（预付费，即包年包月）。
        # @type InstanceChargeType: String

        attr_accessor :Zone, :SpecCode, :Storage, :InstanceCount, :Period, :Pid, :InstanceChargeType
        
        def initialize(zone=nil, speccode=nil, storage=nil, instancecount=nil, period=nil, pid=nil, instancechargetype=nil)
          @Zone = zone
          @SpecCode = speccode
          @Storage = storage
          @InstanceCount = instancecount
          @Period = period
          @Pid = pid
          @InstanceChargeType = instancechargetype
        end

        def deserialize(params)
          @Zone = params['Zone']
          @SpecCode = params['SpecCode']
          @Storage = params['Storage']
          @InstanceCount = params['InstanceCount']
          @Period = params['Period']
          @Pid = params['Pid']
          @InstanceChargeType = params['InstanceChargeType']
        end
      end

      # InquiryPriceCreateDBInstances返回参数结构体
      class InquiryPriceCreateDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 原始价格，单位：分
        # @type OriginalPrice: Integer
        # @param Price: 折后价格，单位：分
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

      # InquiryPriceRenewDBInstance请求参数结构体
      class InquiryPriceRenewDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID
        # @type DBInstanceId: String
        # @param Period: 续费周期，按月计算，最大不超过48
        # @type Period: Integer

        attr_accessor :DBInstanceId, :Period
        
        def initialize(dbinstanceid=nil, period=nil)
          @DBInstanceId = dbinstanceid
          @Period = period
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @Period = params['Period']
        end
      end

      # InquiryPriceRenewDBInstance返回参数结构体
      class InquiryPriceRenewDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 总费用，打折前的。比如24650表示246.5元
        # @type OriginalPrice: Integer
        # @param Price: 实际需要付款金额。比如24650表示246.5元
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

      # InquiryPriceUpgradeDBInstance请求参数结构体
      class InquiryPriceUpgradeDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Storage: 实例的磁盘大小，单位GB
        # @type Storage: Integer
        # @param Memory: 实例的内存大小，单位GB
        # @type Memory: Integer
        # @param DBInstanceId: 实例ID，形如postgres-hez4fh0v
        # @type DBInstanceId: String
        # @param InstanceChargeType: 实例计费类型，预付费或者后付费。PREPAID-预付费。目前只支持预付费。
        # @type InstanceChargeType: String

        attr_accessor :Storage, :Memory, :DBInstanceId, :InstanceChargeType
        
        def initialize(storage=nil, memory=nil, dbinstanceid=nil, instancechargetype=nil)
          @Storage = storage
          @Memory = memory
          @DBInstanceId = dbinstanceid
          @InstanceChargeType = instancechargetype
        end

        def deserialize(params)
          @Storage = params['Storage']
          @Memory = params['Memory']
          @DBInstanceId = params['DBInstanceId']
          @InstanceChargeType = params['InstanceChargeType']
        end
      end

      # InquiryPriceUpgradeDBInstance返回参数结构体
      class InquiryPriceUpgradeDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 总费用，打折前的
        # @type OriginalPrice: Integer
        # @param Price: 实际需要付款金额
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

      # IsolateDBInstances请求参数结构体
      class IsolateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceIdSet: 实例ID集合
        # @type DBInstanceIdSet: Array

        attr_accessor :DBInstanceIdSet
        
        def initialize(dbinstanceidset=nil)
          @DBInstanceIdSet = dbinstanceidset
        end

        def deserialize(params)
          @DBInstanceIdSet = params['DBInstanceIdSet']
        end
      end

      # IsolateDBInstances返回参数结构体
      class IsolateDBInstancesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAccountRemark请求参数结构体
      class ModifyAccountRemarkRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-4wdeb0zv
        # @type DBInstanceId: String
        # @param UserName: 实例用户名
        # @type UserName: String
        # @param Remark: 用户UserName对应的新备注
        # @type Remark: String

        attr_accessor :DBInstanceId, :UserName, :Remark
        
        def initialize(dbinstanceid=nil, username=nil, remark=nil)
          @DBInstanceId = dbinstanceid
          @UserName = username
          @Remark = remark
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @UserName = params['UserName']
          @Remark = params['Remark']
        end
      end

      # ModifyAccountRemark返回参数结构体
      class ModifyAccountRemarkResponse < TencentCloud::Common::AbstractModel
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
        # @param DBInstanceId: 数据库实例ID，形如postgres-6fego161
        # @type DBInstanceId: String
        # @param InstanceName: 新的数据库实例名字
        # @type InstanceName: String

        attr_accessor :DBInstanceId, :InstanceName
        
        def initialize(dbinstanceid=nil, instancename=nil)
          @DBInstanceId = dbinstanceid
          @InstanceName = instancename
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @InstanceName = params['InstanceName']
        end
      end

      # ModifyDBInstanceName返回参数结构体
      class ModifyDBInstanceNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceParameters请求参数结构体
      class ModifyDBInstanceParametersRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID
        # @type DBInstanceId: String
        # @param ParamList: 待修改参数及期望值
        # @type ParamList: Array

        attr_accessor :DBInstanceId, :ParamList
        
        def initialize(dbinstanceid=nil, paramlist=nil)
          @DBInstanceId = dbinstanceid
          @ParamList = paramlist
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              paramentry_tmp = ParamEntry.new
              paramentry_tmp.deserialize(i)
              @ParamList << paramentry_tmp
            end
          end
        end
      end

      # ModifyDBInstanceParameters返回参数结构体
      class ModifyDBInstanceParametersResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceReadOnlyGroup请求参数结构体
      class ModifyDBInstanceReadOnlyGroupRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID
        # @type DBInstanceId: String
        # @param ReadOnlyGroupId: 当前实例所在只读组ID
        # @type ReadOnlyGroupId: String
        # @param NewReadOnlyGroupId: 实例修改的目标只读组ID
        # @type NewReadOnlyGroupId: String

        attr_accessor :DBInstanceId, :ReadOnlyGroupId, :NewReadOnlyGroupId
        
        def initialize(dbinstanceid=nil, readonlygroupid=nil, newreadonlygroupid=nil)
          @DBInstanceId = dbinstanceid
          @ReadOnlyGroupId = readonlygroupid
          @NewReadOnlyGroupId = newreadonlygroupid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          @NewReadOnlyGroupId = params['NewReadOnlyGroupId']
        end
      end

      # ModifyDBInstanceReadOnlyGroup返回参数结构体
      class ModifyDBInstanceReadOnlyGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceSpec请求参数结构体
      class ModifyDBInstanceSpecRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如：postgres-6bwgamo3。
        # @type DBInstanceId: String
        # @param Memory: 修改后的实例内存大小，单位GiB。
        # @type Memory: Integer
        # @param Storage: 修改后的实例磁盘大小，单位GiB。
        # @type Storage: Integer
        # @param AutoVoucher: 是否自动使用代金券,1是,0否，默认不使用。
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID列表，目前仅支持指定一张代金券。
        # @type VoucherIds: Array
        # @param ActivityId: 活动ID。
        # @type ActivityId: Integer
        # @param SwitchTag: 指定实例配置完成变更后的切换时间，默认为 立即切换，入参为 0 ：立即切换 。1：指定时间切换。
        # @type SwitchTag: Integer
        # @param SwitchStartTime: 切换开始时间，时间格式：HH:MM:SS，例如：01:00:00。
        # @type SwitchStartTime: String
        # @param SwitchEndTime: 切换截止时间，时间格式：HH:MM:SS，例如：01:30:00。
        # @type SwitchEndTime: String

        attr_accessor :DBInstanceId, :Memory, :Storage, :AutoVoucher, :VoucherIds, :ActivityId, :SwitchTag, :SwitchStartTime, :SwitchEndTime
        
        def initialize(dbinstanceid=nil, memory=nil, storage=nil, autovoucher=nil, voucherids=nil, activityid=nil, switchtag=nil, switchstarttime=nil, switchendtime=nil)
          @DBInstanceId = dbinstanceid
          @Memory = memory
          @Storage = storage
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @ActivityId = activityid
          @SwitchTag = switchtag
          @SwitchStartTime = switchstarttime
          @SwitchEndTime = switchendtime
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @ActivityId = params['ActivityId']
          @SwitchTag = params['SwitchTag']
          @SwitchStartTime = params['SwitchStartTime']
          @SwitchEndTime = params['SwitchEndTime']
        end
      end

      # ModifyDBInstanceSpec返回参数结构体
      class ModifyDBInstanceSpecResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单号。
        # @type DealName: String
        # @param BillId: 冻结流水号。
        # @type BillId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :BillId, :RequestId
        
        def initialize(dealname=nil, billid=nil, requestid=nil)
          @DealName = dealname
          @BillId = billid
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @BillId = params['BillId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDBInstancesProject请求参数结构体
      class ModifyDBInstancesProjectRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceIdSet: postgresql实例ID数组
        # @type DBInstanceIdSet: Array
        # @param ProjectId: postgresql实例所属新项目的ID
        # @type ProjectId: String

        attr_accessor :DBInstanceIdSet, :ProjectId
        
        def initialize(dbinstanceidset=nil, projectid=nil)
          @DBInstanceIdSet = dbinstanceidset
          @ProjectId = projectid
        end

        def deserialize(params)
          @DBInstanceIdSet = params['DBInstanceIdSet']
          @ProjectId = params['ProjectId']
        end
      end

      # ModifyDBInstancesProject返回参数结构体
      class ModifyDBInstancesProjectResponse < TencentCloud::Common::AbstractModel
        # @param Count: 转移项目成功的实例个数
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :RequestId
        
        def initialize(count=nil, requestid=nil)
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # ModifyReadOnlyGroupConfig请求参数结构体
      class ModifyReadOnlyGroupConfigRequest < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupId: 只读组ID
        # @type ReadOnlyGroupId: String
        # @param ReadOnlyGroupName: 只读组名称
        # @type ReadOnlyGroupName: String
        # @param ReplayLagEliminate: 延迟时间配置开关：0关、1开
        # @type ReplayLagEliminate: Integer
        # @param ReplayLatencyEliminate: 延迟日志大小配置开关：0关、1开
        # @type ReplayLatencyEliminate: Integer
        # @param MaxReplayLatency: 延迟日志大小阈值，单位MB
        # @type MaxReplayLatency: Integer
        # @param MaxReplayLag: 延迟时间大小阈值，单位ms
        # @type MaxReplayLag: Integer
        # @param Rebalance: 自动负载均衡开关：0关、1开
        # @type Rebalance: Integer
        # @param MinDelayEliminateReserve: 延迟剔除最小保留实例数
        # @type MinDelayEliminateReserve: Integer

        attr_accessor :ReadOnlyGroupId, :ReadOnlyGroupName, :ReplayLagEliminate, :ReplayLatencyEliminate, :MaxReplayLatency, :MaxReplayLag, :Rebalance, :MinDelayEliminateReserve
        
        def initialize(readonlygroupid=nil, readonlygroupname=nil, replaylageliminate=nil, replaylatencyeliminate=nil, maxreplaylatency=nil, maxreplaylag=nil, rebalance=nil, mindelayeliminatereserve=nil)
          @ReadOnlyGroupId = readonlygroupid
          @ReadOnlyGroupName = readonlygroupname
          @ReplayLagEliminate = replaylageliminate
          @ReplayLatencyEliminate = replaylatencyeliminate
          @MaxReplayLatency = maxreplaylatency
          @MaxReplayLag = maxreplaylag
          @Rebalance = rebalance
          @MinDelayEliminateReserve = mindelayeliminatereserve
        end

        def deserialize(params)
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          @ReadOnlyGroupName = params['ReadOnlyGroupName']
          @ReplayLagEliminate = params['ReplayLagEliminate']
          @ReplayLatencyEliminate = params['ReplayLatencyEliminate']
          @MaxReplayLatency = params['MaxReplayLatency']
          @MaxReplayLag = params['MaxReplayLag']
          @Rebalance = params['Rebalance']
          @MinDelayEliminateReserve = params['MinDelayEliminateReserve']
        end
      end

      # ModifyReadOnlyGroupConfig返回参数结构体
      class ModifyReadOnlyGroupConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifySwitchTimePeriod请求参数结构体
      class ModifySwitchTimePeriodRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 处于等待切换状态中的实例ID
        # @type DBInstanceId: String
        # @param SwitchTag: 入参取值为 0 ，代表立即切换。
        # @type SwitchTag: Integer

        attr_accessor :DBInstanceId, :SwitchTag
        
        def initialize(dbinstanceid=nil, switchtag=nil)
          @DBInstanceId = dbinstanceid
          @SwitchTag = switchtag
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @SwitchTag = params['SwitchTag']
        end
      end

      # ModifySwitchTimePeriod返回参数结构体
      class ModifySwitchTimePeriodResponse < TencentCloud::Common::AbstractModel
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

      # 网络相关信息。（该数据结构已废弃，网络相关信息使用DBInstanceNetInfo）
      class NetworkAccess < TencentCloud::Common::AbstractModel
        # @param ResourceId: 网络资源id，实例id或RO组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param ResourceType: 资源类型，1-实例 2-RO组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: Integer
        # @param VpcId: 私有网络ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param Vip: IPV4地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip: String
        # @param Vip6: IPV6地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip6: String
        # @param Vport: 访问端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vport: Integer
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param VpcStatus: 网络状态，1-申请中，2-使用中，3-删除中，4-已删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcStatus: Integer

        attr_accessor :ResourceId, :ResourceType, :VpcId, :Vip, :Vip6, :Vport, :SubnetId, :VpcStatus
        
        def initialize(resourceid=nil, resourcetype=nil, vpcid=nil, vip=nil, vip6=nil, vport=nil, subnetid=nil, vpcstatus=nil)
          @ResourceId = resourceid
          @ResourceType = resourcetype
          @VpcId = vpcid
          @Vip = vip
          @Vip6 = vip6
          @Vport = vport
          @SubnetId = subnetid
          @VpcStatus = vpcstatus
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceType = params['ResourceType']
          @VpcId = params['VpcId']
          @Vip = params['Vip']
          @Vip6 = params['Vip6']
          @Vport = params['Vport']
          @SubnetId = params['SubnetId']
          @VpcStatus = params['VpcStatus']
        end
      end

      # 单条SlowQuery信息
      class NormalQueryItem < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param Calls: 调用次数
        # @type Calls: Integer
        # @param CallsGrids: 粒度点
        # @type CallsGrids: Array
        # @param CostTime: 花费总时间
        # @type CostTime: Float
        # @param Rows: 影响的行数
        # @type Rows: Integer
        # @param MinCostTime: 花费最小时间
        # @type MinCostTime: Float
        # @param MaxCostTime: 花费最大时间
        # @type MaxCostTime: Float
        # @param FirstTime: 最早一条慢SQL时间
        # @type FirstTime: String
        # @param LastTime: 最晚一条慢SQL时间
        # @type LastTime: String
        # @param SharedReadBlks: 读共享内存块数
        # @type SharedReadBlks: Integer
        # @param SharedWriteBlks: 写共享内存块数
        # @type SharedWriteBlks: Integer
        # @param ReadCostTime: 读io总耗时
        # @type ReadCostTime: Integer
        # @param WriteCostTime: 写io总耗时
        # @type WriteCostTime: Integer
        # @param DatabaseName: 数据库名字
        # @type DatabaseName: String
        # @param NormalQuery: 脱敏后的慢SQL
        # @type NormalQuery: String

        attr_accessor :UserName, :Calls, :CallsGrids, :CostTime, :Rows, :MinCostTime, :MaxCostTime, :FirstTime, :LastTime, :SharedReadBlks, :SharedWriteBlks, :ReadCostTime, :WriteCostTime, :DatabaseName, :NormalQuery
        
        def initialize(username=nil, calls=nil, callsgrids=nil, costtime=nil, rows=nil, mincosttime=nil, maxcosttime=nil, firsttime=nil, lasttime=nil, sharedreadblks=nil, sharedwriteblks=nil, readcosttime=nil, writecosttime=nil, databasename=nil, normalquery=nil)
          @UserName = username
          @Calls = calls
          @CallsGrids = callsgrids
          @CostTime = costtime
          @Rows = rows
          @MinCostTime = mincosttime
          @MaxCostTime = maxcosttime
          @FirstTime = firsttime
          @LastTime = lasttime
          @SharedReadBlks = sharedreadblks
          @SharedWriteBlks = sharedwriteblks
          @ReadCostTime = readcosttime
          @WriteCostTime = writecosttime
          @DatabaseName = databasename
          @NormalQuery = normalquery
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Calls = params['Calls']
          @CallsGrids = params['CallsGrids']
          @CostTime = params['CostTime']
          @Rows = params['Rows']
          @MinCostTime = params['MinCostTime']
          @MaxCostTime = params['MaxCostTime']
          @FirstTime = params['FirstTime']
          @LastTime = params['LastTime']
          @SharedReadBlks = params['SharedReadBlks']
          @SharedWriteBlks = params['SharedWriteBlks']
          @ReadCostTime = params['ReadCostTime']
          @WriteCostTime = params['WriteCostTime']
          @DatabaseName = params['DatabaseName']
          @NormalQuery = params['NormalQuery']
        end
      end

      # OpenDBExtranetAccess请求参数结构体
      class OpenDBExtranetAccessRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-hez4fh0v
        # @type DBInstanceId: String
        # @param IsIpv6: 是否开通Ipv6外网，1：是，0：否
        # @type IsIpv6: Integer

        attr_accessor :DBInstanceId, :IsIpv6
        
        def initialize(dbinstanceid=nil, isipv6=nil)
          @DBInstanceId = dbinstanceid
          @IsIpv6 = isipv6
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @IsIpv6 = params['IsIpv6']
        end
      end

      # OpenDBExtranetAccess返回参数结构体
      class OpenDBExtranetAccessResponse < TencentCloud::Common::AbstractModel
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

      # OpenServerlessDBExtranetAccess请求参数结构体
      class OpenServerlessDBExtranetAccessRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例的唯一标识符
        # @type DBInstanceId: String
        # @param DBInstanceName: 实例名称
        # @type DBInstanceName: String

        attr_accessor :DBInstanceId, :DBInstanceName
        
        def initialize(dbinstanceid=nil, dbinstancename=nil)
          @DBInstanceId = dbinstanceid
          @DBInstanceName = dbinstancename
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @DBInstanceName = params['DBInstanceName']
        end
      end

      # OpenServerlessDBExtranetAccess返回参数结构体
      class OpenServerlessDBExtranetAccessResponse < TencentCloud::Common::AbstractModel
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

      # 批量修改参数
      class ParamEntry < TencentCloud::Common::AbstractModel
        # @param Name: 参数名
        # @type Name: String
        # @param ExpectedValue: 修改参数值。入参均以字符串形式传递，例如：小数”0.1“、整数”1000“、枚举”replica“
        # @type ExpectedValue: String

        attr_accessor :Name, :ExpectedValue
        
        def initialize(name=nil, expectedvalue=nil)
          @Name = name
          @ExpectedValue = expectedvalue
        end

        def deserialize(params)
          @Name = params['Name']
          @ExpectedValue = params['ExpectedValue']
        end
      end

      # 参数详情
      class ParamInfo < TencentCloud::Common::AbstractModel
        # @param ID: 参数ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer
        # @param Name: 参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ParamValueType: 参数值类型：integer（整型）、real（浮点型）、bool（布尔型）、enum（枚举类型）、mutil_enum（枚举类型、支持多选）。
        # 当参数类型为integer（整型）、real（浮点型）时，参数的取值范围根据返回值的Max、Min确定；
        # 当参数类型为bool（布尔型）时，参数设置值取值范围是true | false；
        # 当参数类型为enum（枚举类型）、mutil_enum（多枚举类型）时，参数的取值范围由返回值中的EnumValue确定。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamValueType: String
        # @param Unit: 参数值 单位。参数没有单位是，该字段返回空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String
        # @param DefaultValue: 参数默认值。以字符串形式返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultValue: String
        # @param CurrentValue: 参数当前运行值。以字符串形式返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentValue: String
        # @param EnumValue: 枚举类型参数，取值范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnumValue: Array
        # @param Max: 数值类型（integer、real）参数，取值下界
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Max: Float
        # @param Min: 数值类型（integer、real）参数，取值上界
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Min: Float
        # @param ParamDescriptionCH: 参数中文描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamDescriptionCH: String
        # @param ParamDescriptionEN: 参数英文描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamDescriptionEN: String
        # @param NeedReboot: 参数修改，是否重启生效。（true为需要，false为不需要）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NeedReboot: Boolean
        # @param ClassificationCN: 参数中文分类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassificationCN: String
        # @param ClassificationEN: 参数英文分类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassificationEN: String
        # @param SpecRelated: 是否和规格相关。（true为相关，false为不想关）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecRelated: Boolean
        # @param Advanced: 是否为重点参数。（true为重点参数，修改是需要重点关注，可能会影响实例性能）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Advanced: Boolean
        # @param LastModifyTime: 参数最后一次修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifyTime: String

        attr_accessor :ID, :Name, :ParamValueType, :Unit, :DefaultValue, :CurrentValue, :EnumValue, :Max, :Min, :ParamDescriptionCH, :ParamDescriptionEN, :NeedReboot, :ClassificationCN, :ClassificationEN, :SpecRelated, :Advanced, :LastModifyTime
        
        def initialize(id=nil, name=nil, paramvaluetype=nil, unit=nil, defaultvalue=nil, currentvalue=nil, enumvalue=nil, max=nil, min=nil, paramdescriptionch=nil, paramdescriptionen=nil, needreboot=nil, classificationcn=nil, classificationen=nil, specrelated=nil, advanced=nil, lastmodifytime=nil)
          @ID = id
          @Name = name
          @ParamValueType = paramvaluetype
          @Unit = unit
          @DefaultValue = defaultvalue
          @CurrentValue = currentvalue
          @EnumValue = enumvalue
          @Max = max
          @Min = min
          @ParamDescriptionCH = paramdescriptionch
          @ParamDescriptionEN = paramdescriptionen
          @NeedReboot = needreboot
          @ClassificationCN = classificationcn
          @ClassificationEN = classificationen
          @SpecRelated = specrelated
          @Advanced = advanced
          @LastModifyTime = lastmodifytime
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @ParamValueType = params['ParamValueType']
          @Unit = params['Unit']
          @DefaultValue = params['DefaultValue']
          @CurrentValue = params['CurrentValue']
          @EnumValue = params['EnumValue']
          @Max = params['Max']
          @Min = params['Min']
          @ParamDescriptionCH = params['ParamDescriptionCH']
          @ParamDescriptionEN = params['ParamDescriptionEN']
          @NeedReboot = params['NeedReboot']
          @ClassificationCN = params['ClassificationCN']
          @ClassificationEN = params['ClassificationEN']
          @SpecRelated = params['SpecRelated']
          @Advanced = params['Advanced']
          @LastModifyTime = params['LastModifyTime']
        end
      end

      # 订单详情
      class PgDeal < TencentCloud::Common::AbstractModel
        # @param DealName: 订单名
        # @type DealName: String
        # @param OwnerUin: 所属用户
        # @type OwnerUin: String
        # @param Count: 订单涉及多少个实例
        # @type Count: Integer
        # @param PayMode: 付费模式。1-预付费；0-后付费
        # @type PayMode: Integer
        # @param FlowId: 异步任务流程ID
        # @type FlowId: Integer
        # @param DBInstanceIdSet: 实例ID数组
        # @type DBInstanceIdSet: Array

        attr_accessor :DealName, :OwnerUin, :Count, :PayMode, :FlowId, :DBInstanceIdSet
        
        def initialize(dealname=nil, owneruin=nil, count=nil, paymode=nil, flowid=nil, dbinstanceidset=nil)
          @DealName = dealname
          @OwnerUin = owneruin
          @Count = count
          @PayMode = paymode
          @FlowId = flowid
          @DBInstanceIdSet = dbinstanceidset
        end

        def deserialize(params)
          @DealName = params['DealName']
          @OwnerUin = params['OwnerUin']
          @Count = params['Count']
          @PayMode = params['PayMode']
          @FlowId = params['FlowId']
          @DBInstanceIdSet = params['DBInstanceIdSet']
        end
      end

      # 慢SQL查询接口返回 慢SQL列表详情
      class RawSlowQuery < TencentCloud::Common::AbstractModel
        # @param RawQuery: 慢SQL 语句
        # @type RawQuery: String
        # @param DatabaseName: 慢SQL 查询的数据库
        # @type DatabaseName: String
        # @param Duration: 慢SQL执行 耗时
        # @type Duration: Float
        # @param ClientAddr: 执行慢SQL的客户端
        # @type ClientAddr: String
        # @param UserName: 执行慢SQL的用户名
        # @type UserName: String
        # @param SessionStartTime: 慢SQL执行的开始时间
        # @type SessionStartTime: String

        attr_accessor :RawQuery, :DatabaseName, :Duration, :ClientAddr, :UserName, :SessionStartTime
        
        def initialize(rawquery=nil, databasename=nil, duration=nil, clientaddr=nil, username=nil, sessionstarttime=nil)
          @RawQuery = rawquery
          @DatabaseName = databasename
          @Duration = duration
          @ClientAddr = clientaddr
          @UserName = username
          @SessionStartTime = sessionstarttime
        end

        def deserialize(params)
          @RawQuery = params['RawQuery']
          @DatabaseName = params['DatabaseName']
          @Duration = params['Duration']
          @ClientAddr = params['ClientAddr']
          @UserName = params['UserName']
          @SessionStartTime = params['SessionStartTime']
        end
      end

      # 只读组信息
      class ReadOnlyGroup < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupId: 只读组标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadOnlyGroupId: String
        # @param ReadOnlyGroupName: 只读组名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadOnlyGroupName: String
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param MasterDBInstanceId: 主实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterDBInstanceId: String
        # @param MinDelayEliminateReserve: 最小保留实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinDelayEliminateReserve: Integer
        # @param MaxReplayLatency: 延迟空间大小阈值
        # @type MaxReplayLatency: Integer
        # @param ReplayLatencyEliminate: 延迟大小开关
        # @type ReplayLatencyEliminate: Integer
        # @param MaxReplayLag: 延迟时间大小阈值
        # @type MaxReplayLag: Float
        # @param ReplayLagEliminate: 延迟时间开关
        # @type ReplayLagEliminate: Integer
        # @param VpcId: 虚拟网络id
        # @type VpcId: String
        # @param SubnetId: 子网id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param Region: 地域id
        # @type Region: String
        # @param Zone: 地区id
        # @type Zone: String
        # @param Status: 状态
        # @type Status: String
        # @param ReadOnlyDBInstanceList: 实例详细信息
        # @type ReadOnlyDBInstanceList: Array
        # @param Rebalance: 自动负载均衡开关
        # @type Rebalance: Integer
        # @param DBInstanceNetInfo: 网络信息
        # @type DBInstanceNetInfo: Array
        # @param NetworkAccessList: 只读组网络信息列表（此字段已废弃）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkAccessList: Array

        attr_accessor :ReadOnlyGroupId, :ReadOnlyGroupName, :ProjectId, :MasterDBInstanceId, :MinDelayEliminateReserve, :MaxReplayLatency, :ReplayLatencyEliminate, :MaxReplayLag, :ReplayLagEliminate, :VpcId, :SubnetId, :Region, :Zone, :Status, :ReadOnlyDBInstanceList, :Rebalance, :DBInstanceNetInfo, :NetworkAccessList
        
        def initialize(readonlygroupid=nil, readonlygroupname=nil, projectid=nil, masterdbinstanceid=nil, mindelayeliminatereserve=nil, maxreplaylatency=nil, replaylatencyeliminate=nil, maxreplaylag=nil, replaylageliminate=nil, vpcid=nil, subnetid=nil, region=nil, zone=nil, status=nil, readonlydbinstancelist=nil, rebalance=nil, dbinstancenetinfo=nil, networkaccesslist=nil)
          @ReadOnlyGroupId = readonlygroupid
          @ReadOnlyGroupName = readonlygroupname
          @ProjectId = projectid
          @MasterDBInstanceId = masterdbinstanceid
          @MinDelayEliminateReserve = mindelayeliminatereserve
          @MaxReplayLatency = maxreplaylatency
          @ReplayLatencyEliminate = replaylatencyeliminate
          @MaxReplayLag = maxreplaylag
          @ReplayLagEliminate = replaylageliminate
          @VpcId = vpcid
          @SubnetId = subnetid
          @Region = region
          @Zone = zone
          @Status = status
          @ReadOnlyDBInstanceList = readonlydbinstancelist
          @Rebalance = rebalance
          @DBInstanceNetInfo = dbinstancenetinfo
          @NetworkAccessList = networkaccesslist
        end

        def deserialize(params)
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
          @ReadOnlyGroupName = params['ReadOnlyGroupName']
          @ProjectId = params['ProjectId']
          @MasterDBInstanceId = params['MasterDBInstanceId']
          @MinDelayEliminateReserve = params['MinDelayEliminateReserve']
          @MaxReplayLatency = params['MaxReplayLatency']
          @ReplayLatencyEliminate = params['ReplayLatencyEliminate']
          @MaxReplayLag = params['MaxReplayLag']
          @ReplayLagEliminate = params['ReplayLagEliminate']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Region = params['Region']
          @Zone = params['Zone']
          @Status = params['Status']
          unless params['ReadOnlyDBInstanceList'].nil?
            @ReadOnlyDBInstanceList = []
            params['ReadOnlyDBInstanceList'].each do |i|
              dbinstance_tmp = DBInstance.new
              dbinstance_tmp.deserialize(i)
              @ReadOnlyDBInstanceList << dbinstance_tmp
            end
          end
          @Rebalance = params['Rebalance']
          unless params['DBInstanceNetInfo'].nil?
            @DBInstanceNetInfo = []
            params['DBInstanceNetInfo'].each do |i|
              dbinstancenetinfo_tmp = DBInstanceNetInfo.new
              dbinstancenetinfo_tmp.deserialize(i)
              @DBInstanceNetInfo << dbinstancenetinfo_tmp
            end
          end
          unless params['NetworkAccessList'].nil?
            @NetworkAccessList = []
            params['NetworkAccessList'].each do |i|
              networkaccess_tmp = NetworkAccess.new
              networkaccess_tmp.deserialize(i)
              @NetworkAccessList << networkaccess_tmp
            end
          end
        end
      end

      # RebalanceReadOnlyGroup请求参数结构体
      class RebalanceReadOnlyGroupRequest < TencentCloud::Common::AbstractModel
        # @param ReadOnlyGroupId: 只读组ID
        # @type ReadOnlyGroupId: String

        attr_accessor :ReadOnlyGroupId
        
        def initialize(readonlygroupid=nil)
          @ReadOnlyGroupId = readonlygroupid
        end

        def deserialize(params)
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
        end
      end

      # RebalanceReadOnlyGroup返回参数结构体
      class RebalanceReadOnlyGroupResponse < TencentCloud::Common::AbstractModel
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

      # 描述地域的编码和状态等信息
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: 该地域对应的英文名称
        # @type Region: String
        # @param RegionName: 该地域对应的中文名称
        # @type RegionName: String
        # @param RegionId: 该地域对应的数字编号
        # @type RegionId: Integer
        # @param RegionState: 可用状态，UNAVAILABLE表示不可用，AVAILABLE表示可用
        # @type RegionState: String
        # @param SupportInternational: 该地域是否支持国际站售卖，0：不支持，1：支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportInternational: Integer

        attr_accessor :Region, :RegionName, :RegionId, :RegionState, :SupportInternational
        
        def initialize(region=nil, regionname=nil, regionid=nil, regionstate=nil, supportinternational=nil)
          @Region = region
          @RegionName = regionname
          @RegionId = regionid
          @RegionState = regionstate
          @SupportInternational = supportinternational
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionId = params['RegionId']
          @RegionState = params['RegionState']
          @SupportInternational = params['SupportInternational']
        end
      end

      # RemoveDBInstanceFromReadOnlyGroup请求参数结构体
      class RemoveDBInstanceFromReadOnlyGroupRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID
        # @type DBInstanceId: String
        # @param ReadOnlyGroupId: 只读组ID
        # @type ReadOnlyGroupId: String

        attr_accessor :DBInstanceId, :ReadOnlyGroupId
        
        def initialize(dbinstanceid=nil, readonlygroupid=nil)
          @DBInstanceId = dbinstanceid
          @ReadOnlyGroupId = readonlygroupid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @ReadOnlyGroupId = params['ReadOnlyGroupId']
        end
      end

      # RemoveDBInstanceFromReadOnlyGroup返回参数结构体
      class RemoveDBInstanceFromReadOnlyGroupResponse < TencentCloud::Common::AbstractModel
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

      # RenewInstance请求参数结构体
      class RenewInstanceRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-6fego161
        # @type DBInstanceId: String
        # @param Period: 续费多少个月
        # @type Period: Integer
        # @param AutoVoucher: 是否自动使用代金券,1是,0否，默认不使用
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID列表，目前仅支持指定一张代金券
        # @type VoucherIds: Array

        attr_accessor :DBInstanceId, :Period, :AutoVoucher, :VoucherIds
        
        def initialize(dbinstanceid=nil, period=nil, autovoucher=nil, voucherids=nil)
          @DBInstanceId = dbinstanceid
          @Period = period
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @Period = params['Period']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
        end
      end

      # RenewInstance返回参数结构体
      class RenewInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单名
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
        # @param DBInstanceId: 实例ID，形如postgres-4wdeb0zv
        # @type DBInstanceId: String
        # @param UserName: 实例账户名
        # @type UserName: String
        # @param Password: UserName账户对应的新密码
        # @type Password: String

        attr_accessor :DBInstanceId, :UserName, :Password
        
        def initialize(dbinstanceid=nil, username=nil, password=nil)
          @DBInstanceId = dbinstanceid
          @UserName = username
          @Password = password
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @UserName = params['UserName']
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

      # RestartDBInstance请求参数结构体
      class RestartDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例ID，形如postgres-6r233v55
        # @type DBInstanceId: String

        attr_accessor :DBInstanceId
        
        def initialize(dbinstanceid=nil)
          @DBInstanceId = dbinstanceid
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
        end
      end

      # RestartDBInstance返回参数结构体
      class RestartDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程ID
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

      # serverless账号描述
      class ServerlessDBAccount < TencentCloud::Common::AbstractModel
        # @param DBUser: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBUser: String
        # @param DBPassword: 密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBPassword: String
        # @param DBConnLimit: 连接数限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBConnLimit: Integer

        attr_accessor :DBUser, :DBPassword, :DBConnLimit
        
        def initialize(dbuser=nil, dbpassword=nil, dbconnlimit=nil)
          @DBUser = dbuser
          @DBPassword = dbpassword
          @DBConnLimit = dbconnlimit
        end

        def deserialize(params)
          @DBUser = params['DBUser']
          @DBPassword = params['DBPassword']
          @DBConnLimit = params['DBConnLimit']
        end
      end

      # serverless实例描述
      class ServerlessDBInstance < TencentCloud::Common::AbstractModel
        # @param DBInstanceId: 实例id，唯一标识符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBInstanceId: String
        # @param DBInstanceName: 实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBInstanceName: String
        # @param DBInstanceStatus: 实例状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBInstanceStatus: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Zone: 可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param VpcId: 私有网络Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param DBCharset: 字符集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBCharset: String
        # @param DBVersion: 数据库版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBVersion: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param DBInstanceNetInfo: 实例网络信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBInstanceNetInfo: Array
        # @param DBAccountSet: 实例账户信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBAccountSet: Array
        # @param DBDatabaseList: 实例下的db信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBDatabaseList: Array
        # @param TagList: 实例绑定的标签数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagList: Array
        # @param DBKernelVersion: 数据库内核版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBKernelVersion: String

        attr_accessor :DBInstanceId, :DBInstanceName, :DBInstanceStatus, :Region, :Zone, :ProjectId, :VpcId, :SubnetId, :DBCharset, :DBVersion, :CreateTime, :DBInstanceNetInfo, :DBAccountSet, :DBDatabaseList, :TagList, :DBKernelVersion
        
        def initialize(dbinstanceid=nil, dbinstancename=nil, dbinstancestatus=nil, region=nil, zone=nil, projectid=nil, vpcid=nil, subnetid=nil, dbcharset=nil, dbversion=nil, createtime=nil, dbinstancenetinfo=nil, dbaccountset=nil, dbdatabaselist=nil, taglist=nil, dbkernelversion=nil)
          @DBInstanceId = dbinstanceid
          @DBInstanceName = dbinstancename
          @DBInstanceStatus = dbinstancestatus
          @Region = region
          @Zone = zone
          @ProjectId = projectid
          @VpcId = vpcid
          @SubnetId = subnetid
          @DBCharset = dbcharset
          @DBVersion = dbversion
          @CreateTime = createtime
          @DBInstanceNetInfo = dbinstancenetinfo
          @DBAccountSet = dbaccountset
          @DBDatabaseList = dbdatabaselist
          @TagList = taglist
          @DBKernelVersion = dbkernelversion
        end

        def deserialize(params)
          @DBInstanceId = params['DBInstanceId']
          @DBInstanceName = params['DBInstanceName']
          @DBInstanceStatus = params['DBInstanceStatus']
          @Region = params['Region']
          @Zone = params['Zone']
          @ProjectId = params['ProjectId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @DBCharset = params['DBCharset']
          @DBVersion = params['DBVersion']
          @CreateTime = params['CreateTime']
          unless params['DBInstanceNetInfo'].nil?
            @DBInstanceNetInfo = []
            params['DBInstanceNetInfo'].each do |i|
              serverlessdbinstancenetinfo_tmp = ServerlessDBInstanceNetInfo.new
              serverlessdbinstancenetinfo_tmp.deserialize(i)
              @DBInstanceNetInfo << serverlessdbinstancenetinfo_tmp
            end
          end
          unless params['DBAccountSet'].nil?
            @DBAccountSet = []
            params['DBAccountSet'].each do |i|
              serverlessdbaccount_tmp = ServerlessDBAccount.new
              serverlessdbaccount_tmp.deserialize(i)
              @DBAccountSet << serverlessdbaccount_tmp
            end
          end
          @DBDatabaseList = params['DBDatabaseList']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagList << tag_tmp
            end
          end
          @DBKernelVersion = params['DBKernelVersion']
        end
      end

      # serverless实例网络信息描述
      class ServerlessDBInstanceNetInfo < TencentCloud::Common::AbstractModel
        # @param Address: 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param Ip: ip地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param Port: 端口号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param NetType: 网络类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetType: String

        attr_accessor :Address, :Ip, :Port, :Status, :NetType
        
        def initialize(address=nil, ip=nil, port=nil, status=nil, nettype=nil)
          @Address = address
          @Ip = ip
          @Port = port
          @Status = status
          @NetType = nettype
        end

        def deserialize(params)
          @Address = params['Address']
          @Ip = params['Ip']
          @Port = params['Port']
          @Status = params['Status']
          @NetType = params['NetType']
        end
      end

      # SetAutoRenewFlag请求参数结构体
      class SetAutoRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param DBInstanceIdSet: 实例ID数组
        # @type DBInstanceIdSet: Array
        # @param AutoRenewFlag: 续费标记。0-正常续费；1-自动续费；2-到期不续费
        # @type AutoRenewFlag: Integer

        attr_accessor :DBInstanceIdSet, :AutoRenewFlag
        
        def initialize(dbinstanceidset=nil, autorenewflag=nil)
          @DBInstanceIdSet = dbinstanceidset
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @DBInstanceIdSet = params['DBInstanceIdSet']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # SetAutoRenewFlag返回参数结构体
      class SetAutoRenewFlagResponse < TencentCloud::Common::AbstractModel
        # @param Count: 设置成功的实例个数
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :RequestId
        
        def initialize(count=nil, requestid=nil)
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # 慢查询详情
      class SlowlogDetail < TencentCloud::Common::AbstractModel
        # @param TotalTime: 花费总时间
        # @type TotalTime: Float
        # @param TotalCalls: 调用总次数
        # @type TotalCalls: Integer
        # @param NormalQueries: 脱敏后的慢SQL列表
        # @type NormalQueries: Array

        attr_accessor :TotalTime, :TotalCalls, :NormalQueries
        
        def initialize(totaltime=nil, totalcalls=nil, normalqueries=nil)
          @TotalTime = totaltime
          @TotalCalls = totalcalls
          @NormalQueries = normalqueries
        end

        def deserialize(params)
          @TotalTime = params['TotalTime']
          @TotalCalls = params['TotalCalls']
          unless params['NormalQueries'].nil?
            @NormalQueries = []
            params['NormalQueries'].each do |i|
              normalqueryitem_tmp = NormalQueryItem.new
              normalqueryitem_tmp.deserialize(i)
              @NormalQueries << normalqueryitem_tmp
            end
          end
        end
      end

      # 描述某个地域下某个可用区的可售卖规格详细信息。
      class SpecInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域英文编码，对应RegionSet的Region字段
        # @type Region: String
        # @param Zone: 区域英文编码，对应ZoneSet的Zone字段
        # @type Zone: String
        # @param SpecItemInfoList: 规格详细信息列表
        # @type SpecItemInfoList: Array

        attr_accessor :Region, :Zone, :SpecItemInfoList
        
        def initialize(region=nil, zone=nil, speciteminfolist=nil)
          @Region = region
          @Zone = zone
          @SpecItemInfoList = speciteminfolist
        end

        def deserialize(params)
          @Region = params['Region']
          @Zone = params['Zone']
          unless params['SpecItemInfoList'].nil?
            @SpecItemInfoList = []
            params['SpecItemInfoList'].each do |i|
              speciteminfo_tmp = SpecItemInfo.new
              speciteminfo_tmp.deserialize(i)
              @SpecItemInfoList << speciteminfo_tmp
            end
          end
        end
      end

      # 描述一种规格的信息
      class SpecItemInfo < TencentCloud::Common::AbstractModel
        # @param SpecCode: 规格ID
        # @type SpecCode: String
        # @param Version: PostgreSQL的内核版本编号
        # @type Version: String
        # @param VersionName: 内核编号对应的完整版本名称
        # @type VersionName: String
        # @param Cpu: CPU核数
        # @type Cpu: Integer
        # @param Memory: 内存大小，单位：MB
        # @type Memory: Integer
        # @param MaxStorage: 该规格所支持最大存储容量，单位：GB
        # @type MaxStorage: Integer
        # @param MinStorage: 该规格所支持最小存储容量，单位：GB
        # @type MinStorage: Integer
        # @param Qps: 该规格的预估QPS
        # @type Qps: Integer
        # @param Pid: 该规格对应的计费ID
        # @type Pid: Integer
        # @param Type: 机器类型
        # @type Type: String

        attr_accessor :SpecCode, :Version, :VersionName, :Cpu, :Memory, :MaxStorage, :MinStorage, :Qps, :Pid, :Type
        
        def initialize(speccode=nil, version=nil, versionname=nil, cpu=nil, memory=nil, maxstorage=nil, minstorage=nil, qps=nil, pid=nil, type=nil)
          @SpecCode = speccode
          @Version = version
          @VersionName = versionname
          @Cpu = cpu
          @Memory = memory
          @MaxStorage = maxstorage
          @MinStorage = minstorage
          @Qps = qps
          @Pid = pid
          @Type = type
        end

        def deserialize(params)
          @SpecCode = params['SpecCode']
          @Version = params['Version']
          @VersionName = params['VersionName']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @MaxStorage = params['MaxStorage']
          @MinStorage = params['MinStorage']
          @Qps = params['Qps']
          @Pid = params['Pid']
          @Type = params['Type']
        end
      end

      # 实例绑定的标签信息，包含标签键TagKey和标签值TagValue
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

      # UpgradeDBInstance请求参数结构体
      class UpgradeDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Memory: 升级后的实例内存大小，单位GB
        # @type Memory: Integer
        # @param Storage: 升级后的实例磁盘大小，单位GB
        # @type Storage: Integer
        # @param DBInstanceId: 实例ID，形如postgres-lnp6j617
        # @type DBInstanceId: String
        # @param AutoVoucher: 是否自动使用代金券,1是,0否，默认不使用
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID列表，目前仅支持指定一张代金券
        # @type VoucherIds: Array
        # @param ActivityId: 活动ID
        # @type ActivityId: Integer
        # @param SwitchTag: 指定实例配置完成变更后的切换时间，默认为 立即切换，入参为 0 ：立即切换 。1：指定时间切换。
        # @type SwitchTag: Integer
        # @param SwitchStartTime: 切换开始时间
        # @type SwitchStartTime: String
        # @param SwitchEndTime: 切换截止时间
        # @type SwitchEndTime: String

        attr_accessor :Memory, :Storage, :DBInstanceId, :AutoVoucher, :VoucherIds, :ActivityId, :SwitchTag, :SwitchStartTime, :SwitchEndTime
        
        def initialize(memory=nil, storage=nil, dbinstanceid=nil, autovoucher=nil, voucherids=nil, activityid=nil, switchtag=nil, switchstarttime=nil, switchendtime=nil)
          @Memory = memory
          @Storage = storage
          @DBInstanceId = dbinstanceid
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @ActivityId = activityid
          @SwitchTag = switchtag
          @SwitchStartTime = switchstarttime
          @SwitchEndTime = switchendtime
        end

        def deserialize(params)
          @Memory = params['Memory']
          @Storage = params['Storage']
          @DBInstanceId = params['DBInstanceId']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @ActivityId = params['ActivityId']
          @SwitchTag = params['SwitchTag']
          @SwitchStartTime = params['SwitchStartTime']
          @SwitchEndTime = params['SwitchEndTime']
        end
      end

      # UpgradeDBInstance返回参数结构体
      class UpgradeDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 交易名字。
        # @type DealName: String
        # @param BillId: 冻结流水号
        # @type BillId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :BillId, :RequestId
        
        def initialize(dealname=nil, billid=nil, requestid=nil)
          @DealName = dealname
          @BillId = billid
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @BillId = params['BillId']
          @RequestId = params['RequestId']
        end
      end

      # 数据库Xlog信息
      class Xlog < TencentCloud::Common::AbstractModel
        # @param Id: 备份文件唯一标识
        # @type Id: Integer
        # @param StartTime: 文件生成的开始时间
        # @type StartTime: String
        # @param EndTime: 文件生成的结束时间
        # @type EndTime: String
        # @param InternalAddr: 内网下载地址
        # @type InternalAddr: String
        # @param ExternalAddr: 外网下载地址
        # @type ExternalAddr: String
        # @param Size: 备份文件大小
        # @type Size: Integer

        attr_accessor :Id, :StartTime, :EndTime, :InternalAddr, :ExternalAddr, :Size
        
        def initialize(id=nil, starttime=nil, endtime=nil, internaladdr=nil, externaladdr=nil, size=nil)
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
          @InternalAddr = internaladdr
          @ExternalAddr = externaladdr
          @Size = size
        end

        def deserialize(params)
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @InternalAddr = params['InternalAddr']
          @ExternalAddr = params['ExternalAddr']
          @Size = params['Size']
        end
      end

      # 描述可用区的编码和状态信息
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param Zone: 该可用区的英文名称
        # @type Zone: String
        # @param ZoneName: 该可用区的中文名称
        # @type ZoneName: String
        # @param ZoneId: 该可用区对应的数字编号
        # @type ZoneId: Integer
        # @param ZoneState: 可用状态，UNAVAILABLE表示不可用，AVAILABLE表示可用
        # @type ZoneState: String
        # @param ZoneSupportIpv6: 该可用区是否支持Ipv6
        # @type ZoneSupportIpv6: Integer

        attr_accessor :Zone, :ZoneName, :ZoneId, :ZoneState, :ZoneSupportIpv6
        
        def initialize(zone=nil, zonename=nil, zoneid=nil, zonestate=nil, zonesupportipv6=nil)
          @Zone = zone
          @ZoneName = zonename
          @ZoneId = zoneid
          @ZoneState = zonestate
          @ZoneSupportIpv6 = zonesupportipv6
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ZoneName = params['ZoneName']
          @ZoneId = params['ZoneId']
          @ZoneState = params['ZoneState']
          @ZoneSupportIpv6 = params['ZoneSupportIpv6']
        end
      end

    end
  end
end

