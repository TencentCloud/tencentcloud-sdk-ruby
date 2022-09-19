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
  module Privatedns
    module V20201028
      # 私有域解析账号Vpc信息
      class AccountVpcInfo < TencentCloud::Common::AbstractModel
        # @param UniqVpcId: VpcId： vpc-xadsafsdasd
        # @type UniqVpcId: String
        # @param Region: Vpc所属地区: ap-guangzhou, ap-shanghai
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Uin: Vpc所属账号: 123456789
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param VpcName: vpc资源名称：testname
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcName: String

        attr_accessor :UniqVpcId, :Region, :Uin, :VpcName
        
        def initialize(uniqvpcid=nil, region=nil, uin=nil, vpcname=nil)
          @UniqVpcId = uniqvpcid
          @Region = region
          @Uin = uin
          @VpcName = vpcname
        end

        def deserialize(params)
          @UniqVpcId = params['UniqVpcId']
          @Region = params['Region']
          @Uin = params['Uin']
          @VpcName = params['VpcName']
        end
      end

      # 查询关联账号VPC列表出参
      class AccountVpcInfoOut < TencentCloud::Common::AbstractModel
        # @param VpcId: VpcId： vpc-xadsafsdasd
        # @type VpcId: String
        # @param Region: Vpc所属地区: ap-guangzhou, ap-shanghai
        # @type Region: String
        # @param Uin: Vpc所属账号: 123456789
        # @type Uin: String
        # @param VpcName: vpc资源名称：testname
        # @type VpcName: String

        attr_accessor :VpcId, :Region, :Uin, :VpcName
        
        def initialize(vpcid=nil, region=nil, uin=nil, vpcname=nil)
          @VpcId = vpcid
          @Region = region
          @Uin = uin
          @VpcName = vpcname
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @Region = params['Region']
          @Uin = params['Uin']
          @VpcName = params['VpcName']
        end
      end

      # 关联的VPC出参
      class AccountVpcInfoOutput < TencentCloud::Common::AbstractModel
        # @param Uin: 关联账户的uin
        # @type Uin: String
        # @param UniqVpcId: vpcid
        # @type UniqVpcId: String
        # @param Region: 地域
        # @type Region: String

        attr_accessor :Uin, :UniqVpcId, :Region
        
        def initialize(uin=nil, uniqvpcid=nil, region=nil)
          @Uin = uin
          @UniqVpcId = uniqvpcid
          @Region = region
        end

        def deserialize(params)
          @Uin = params['Uin']
          @UniqVpcId = params['UniqVpcId']
          @Region = params['Region']
        end
      end

      # 操作日志
      class AuditLog < TencentCloud::Common::AbstractModel
        # @param Resource: 日志类型
        # @type Resource: String
        # @param Metric: 日志表名
        # @type Metric: String
        # @param TotalCount: 日志总数
        # @type TotalCount: Integer
        # @param DataSet: 日志列表
        # @type DataSet: Array

        attr_accessor :Resource, :Metric, :TotalCount, :DataSet
        
        def initialize(resource=nil, metric=nil, totalcount=nil, dataset=nil)
          @Resource = resource
          @Metric = metric
          @TotalCount = totalcount
          @DataSet = dataset
        end

        def deserialize(params)
          @Resource = params['Resource']
          @Metric = params['Metric']
          @TotalCount = params['TotalCount']
          unless params['DataSet'].nil?
            @DataSet = []
            params['DataSet'].each do |i|
              auditloginfo_tmp = AuditLogInfo.new
              auditloginfo_tmp.deserialize(i)
              @DataSet << auditloginfo_tmp
            end
          end
        end
      end

      # 日志详情
      class AuditLogInfo < TencentCloud::Common::AbstractModel
        # @param Date: 时间
        # @type Date: String
        # @param OperatorUin: 操作人uin
        # @type OperatorUin: String
        # @param Content: 日志内容
        # @type Content: String

        attr_accessor :Date, :OperatorUin, :Content
        
        def initialize(date=nil, operatoruin=nil, content=nil)
          @Date = date
          @OperatorUin = operatoruin
          @Content = content
        end

        def deserialize(params)
          @Date = params['Date']
          @OperatorUin = params['OperatorUin']
          @Content = params['Content']
        end
      end

      # CreatePrivateDNSAccount请求参数结构体
      class CreatePrivateDNSAccountRequest < TencentCloud::Common::AbstractModel
        # @param Account: 私有域解析账号
        # @type Account: :class:`Tencentcloud::Privatedns.v20201028.models.PrivateDNSAccount`

        attr_accessor :Account
        
        def initialize(account=nil)
          @Account = account
        end

        def deserialize(params)
          unless params['Account'].nil?
            @Account = PrivateDNSAccount.new
            @Account.deserialize(params['Account'])
          end
        end
      end

      # CreatePrivateDNSAccount返回参数结构体
      class CreatePrivateDNSAccountResponse < TencentCloud::Common::AbstractModel
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

      # CreatePrivateZoneRecord请求参数结构体
      class CreatePrivateZoneRecordRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 私有域ID
        # @type ZoneId: String
        # @param RecordType: 记录类型，可选的记录类型为："A", "AAAA", "CNAME", "MX", "TXT", "PTR"
        # @type RecordType: String
        # @param SubDomain: 子域名，例如 "www", "m", "@"
        # @type SubDomain: String
        # @param RecordValue: 记录值，例如 IP：192.168.10.2，CNAME：cname.qcloud.com.，MX：mail.qcloud.com.
        # @type RecordValue: String
        # @param Weight: 记录权重，值为1-100
        # @type Weight: Integer
        # @param MX: MX优先级：记录类型为MX时必填。取值范围：5,10,15,20,30,40,50
        # @type MX: Integer
        # @param TTL: 记录缓存时间，数值越小生效越快，取值1-86400s, 默认 600
        # @type TTL: Integer

        attr_accessor :ZoneId, :RecordType, :SubDomain, :RecordValue, :Weight, :MX, :TTL
        
        def initialize(zoneid=nil, recordtype=nil, subdomain=nil, recordvalue=nil, weight=nil, mx=nil, ttl=nil)
          @ZoneId = zoneid
          @RecordType = recordtype
          @SubDomain = subdomain
          @RecordValue = recordvalue
          @Weight = weight
          @MX = mx
          @TTL = ttl
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RecordType = params['RecordType']
          @SubDomain = params['SubDomain']
          @RecordValue = params['RecordValue']
          @Weight = params['Weight']
          @MX = params['MX']
          @TTL = params['TTL']
        end
      end

      # CreatePrivateZoneRecord返回参数结构体
      class CreatePrivateZoneRecordResponse < TencentCloud::Common::AbstractModel
        # @param RecordId: 记录Id
        # @type RecordId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordId, :RequestId
        
        def initialize(recordid=nil, requestid=nil)
          @RecordId = recordid
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordId = params['RecordId']
          @RequestId = params['RequestId']
        end
      end

      # CreatePrivateZone请求参数结构体
      class CreatePrivateZoneRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名，格式必须是标准的TLD
        # @type Domain: String
        # @param TagSet: 创建私有域的同时，为其打上标签
        # @type TagSet: Array
        # @param VpcSet: 创建私有域的同时，将其关联至VPC
        # @type VpcSet: Array
        # @param Remark: 备注
        # @type Remark: String
        # @param DnsForwardStatus: 是否开启子域名递归, ENABLED， DISABLED。默认值为ENABLED
        # @type DnsForwardStatus: String
        # @param Vpcs: 创建私有域的同时，将其关联至VPC
        # @type Vpcs: Array
        # @param AccountVpcSet: 创建私有域同时绑定关联账号的VPC
        # @type AccountVpcSet: Array
        # @param CnameSpeedupStatus: 是否CNAME加速：ENABLED，DISABLED，默认值为ENABLED
        # @type CnameSpeedupStatus: String

        attr_accessor :Domain, :TagSet, :VpcSet, :Remark, :DnsForwardStatus, :Vpcs, :AccountVpcSet, :CnameSpeedupStatus
        
        def initialize(domain=nil, tagset=nil, vpcset=nil, remark=nil, dnsforwardstatus=nil, vpcs=nil, accountvpcset=nil, cnamespeedupstatus=nil)
          @Domain = domain
          @TagSet = tagset
          @VpcSet = vpcset
          @Remark = remark
          @DnsForwardStatus = dnsforwardstatus
          @Vpcs = vpcs
          @AccountVpcSet = accountvpcset
          @CnameSpeedupStatus = cnamespeedupstatus
        end

        def deserialize(params)
          @Domain = params['Domain']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @TagSet << taginfo_tmp
            end
          end
          unless params['VpcSet'].nil?
            @VpcSet = []
            params['VpcSet'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @VpcSet << vpcinfo_tmp
            end
          end
          @Remark = params['Remark']
          @DnsForwardStatus = params['DnsForwardStatus']
          unless params['Vpcs'].nil?
            @Vpcs = []
            params['Vpcs'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @Vpcs << vpcinfo_tmp
            end
          end
          unless params['AccountVpcSet'].nil?
            @AccountVpcSet = []
            params['AccountVpcSet'].each do |i|
              accountvpcinfo_tmp = AccountVpcInfo.new
              accountvpcinfo_tmp.deserialize(i)
              @AccountVpcSet << accountvpcinfo_tmp
            end
          end
          @CnameSpeedupStatus = params['CnameSpeedupStatus']
        end
      end

      # CreatePrivateZone返回参数结构体
      class CreatePrivateZoneResponse < TencentCloud::Common::AbstractModel
        # @param ZoneId: 私有域ID, zone-xxxxxx
        # @type ZoneId: String
        # @param Domain: 私有域名
        # @type Domain: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneId, :Domain, :RequestId
        
        def initialize(zoneid=nil, domain=nil, requestid=nil)
          @ZoneId = zoneid
          @Domain = domain
          @RequestId = requestid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Domain = params['Domain']
          @RequestId = params['RequestId']
        end
      end

      # 时间统计值
      class DatePoint < TencentCloud::Common::AbstractModel
        # @param Date: 时间
        # @type Date: String
        # @param Value: 值
        # @type Value: Integer

        attr_accessor :Date, :Value
        
        def initialize(date=nil, value=nil)
          @Date = date
          @Value = value
        end

        def deserialize(params)
          @Date = params['Date']
          @Value = params['Value']
        end
      end

      # DeletePrivateDNSAccount请求参数结构体
      class DeletePrivateDNSAccountRequest < TencentCloud::Common::AbstractModel
        # @param Account: 私有域解析账号
        # @type Account: :class:`Tencentcloud::Privatedns.v20201028.models.PrivateDNSAccount`

        attr_accessor :Account
        
        def initialize(account=nil)
          @Account = account
        end

        def deserialize(params)
          unless params['Account'].nil?
            @Account = PrivateDNSAccount.new
            @Account.deserialize(params['Account'])
          end
        end
      end

      # DeletePrivateDNSAccount返回参数结构体
      class DeletePrivateDNSAccountResponse < TencentCloud::Common::AbstractModel
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

      # DeletePrivateZoneRecord请求参数结构体
      class DeletePrivateZoneRecordRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 私有域ID
        # @type ZoneId: String
        # @param RecordId: 记录ID
        # @type RecordId: String
        # @param RecordIdSet: 记录ID数组，RecordId 优先
        # @type RecordIdSet: Array

        attr_accessor :ZoneId, :RecordId, :RecordIdSet
        
        def initialize(zoneid=nil, recordid=nil, recordidset=nil)
          @ZoneId = zoneid
          @RecordId = recordid
          @RecordIdSet = recordidset
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RecordId = params['RecordId']
          @RecordIdSet = params['RecordIdSet']
        end
      end

      # DeletePrivateZoneRecord返回参数结构体
      class DeletePrivateZoneRecordResponse < TencentCloud::Common::AbstractModel
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

      # DeletePrivateZone请求参数结构体
      class DeletePrivateZoneRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 私有域ID
        # @type ZoneId: String
        # @param ZoneIdSet: 私有域ID数组，ZoneId 优先
        # @type ZoneIdSet: Array

        attr_accessor :ZoneId, :ZoneIdSet
        
        def initialize(zoneid=nil, zoneidset=nil)
          @ZoneId = zoneid
          @ZoneIdSet = zoneidset
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneIdSet = params['ZoneIdSet']
        end
      end

      # DeletePrivateZone返回参数结构体
      class DeletePrivateZoneResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAccountVpcList请求参数结构体
      class DescribeAccountVpcListRequest < TencentCloud::Common::AbstractModel
        # @param AccountUin: 关联账号的uin
        # @type AccountUin: String
        # @param Offset: 分页偏移量，从0开始
        # @type Offset: Integer
        # @param Limit: 分页限制数目， 最大100，默认20
        # @type Limit: Integer
        # @param Filters: 过滤参数
        # @type Filters: Array

        attr_accessor :AccountUin, :Offset, :Limit, :Filters
        
        def initialize(accountuin=nil, offset=nil, limit=nil, filters=nil)
          @AccountUin = accountuin
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @AccountUin = params['AccountUin']
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
        end
      end

      # DescribeAccountVpcList返回参数结构体
      class DescribeAccountVpcListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: VPC数量
        # @type TotalCount: Integer
        # @param VpcSet: VPC 列表
        # @type VpcSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VpcSet, :RequestId
        
        def initialize(totalcount=nil, vpcset=nil, requestid=nil)
          @TotalCount = totalcount
          @VpcSet = vpcset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['VpcSet'].nil?
            @VpcSet = []
            params['VpcSet'].each do |i|
              accountvpcinfoout_tmp = AccountVpcInfoOut.new
              accountvpcinfoout_tmp.deserialize(i)
              @VpcSet << accountvpcinfoout_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuditLog请求参数结构体
      class DescribeAuditLogRequest < TencentCloud::Common::AbstractModel
        # @param TimeRangeBegin: 请求量统计起始时间
        # @type TimeRangeBegin: String
        # @param Filters: 筛选参数：ZoneId：私有域ID；Domain：私有域；OperatorUin：操作者账号ID
        # @type Filters: Array
        # @param TimeRangeEnd: 请求量统计结束时间
        # @type TimeRangeEnd: String
        # @param Offset: 分页偏移量，从0开始
        # @type Offset: Integer
        # @param Limit: 分页限制数目， 最大100，默认20
        # @type Limit: Integer

        attr_accessor :TimeRangeBegin, :Filters, :TimeRangeEnd, :Offset, :Limit
        
        def initialize(timerangebegin=nil, filters=nil, timerangeend=nil, offset=nil, limit=nil)
          @TimeRangeBegin = timerangebegin
          @Filters = filters
          @TimeRangeEnd = timerangeend
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TimeRangeBegin = params['TimeRangeBegin']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @TimeRangeEnd = params['TimeRangeEnd']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAuditLog返回参数结构体
      class DescribeAuditLogResponse < TencentCloud::Common::AbstractModel
        # @param Data: 操作日志列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              auditlog_tmp = AuditLog.new
              auditlog_tmp.deserialize(i)
              @Data << auditlog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDashboard请求参数结构体
      class DescribeDashboardRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDashboard返回参数结构体
      class DescribeDashboardResponse < TencentCloud::Common::AbstractModel
        # @param ZoneTotal: 私有域解析总数
        # @type ZoneTotal: Integer
        # @param ZoneVpcCount: 私有域关联VPC数量
        # @type ZoneVpcCount: Integer
        # @param RequestTotalCount: 历史请求量总数
        # @type RequestTotalCount: Integer
        # @param FlowUsage: 流量包用量
        # @type FlowUsage: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneTotal, :ZoneVpcCount, :RequestTotalCount, :FlowUsage, :RequestId
        
        def initialize(zonetotal=nil, zonevpccount=nil, requesttotalcount=nil, flowusage=nil, requestid=nil)
          @ZoneTotal = zonetotal
          @ZoneVpcCount = zonevpccount
          @RequestTotalCount = requesttotalcount
          @FlowUsage = flowusage
          @RequestId = requestid
        end

        def deserialize(params)
          @ZoneTotal = params['ZoneTotal']
          @ZoneVpcCount = params['ZoneVpcCount']
          @RequestTotalCount = params['RequestTotalCount']
          unless params['FlowUsage'].nil?
            @FlowUsage = []
            params['FlowUsage'].each do |i|
              flowusage_tmp = FlowUsage.new
              flowusage_tmp.deserialize(i)
              @FlowUsage << flowusage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePrivateDNSAccountList请求参数结构体
      class DescribePrivateDNSAccountListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量，从0开始
        # @type Offset: Integer
        # @param Limit: 分页限制数目， 最大100，默认20
        # @type Limit: Integer
        # @param Filters: 过滤参数
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Filters
        
        def initialize(offset=nil, limit=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
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
        end
      end

      # DescribePrivateDNSAccountList返回参数结构体
      class DescribePrivateDNSAccountListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 私有域解析账号数量
        # @type TotalCount: Integer
        # @param AccountSet: 私有域解析账号列表
        # @type AccountSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AccountSet, :RequestId
        
        def initialize(totalcount=nil, accountset=nil, requestid=nil)
          @TotalCount = totalcount
          @AccountSet = accountset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AccountSet'].nil?
            @AccountSet = []
            params['AccountSet'].each do |i|
              privatednsaccount_tmp = PrivateDNSAccount.new
              privatednsaccount_tmp.deserialize(i)
              @AccountSet << privatednsaccount_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePrivateZoneList请求参数结构体
      class DescribePrivateZoneListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量，从0开始
        # @type Offset: Integer
        # @param Limit: 分页限制数目， 最大100，默认20
        # @type Limit: Integer
        # @param Filters: 过滤参数
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Filters
        
        def initialize(offset=nil, limit=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
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
        end
      end

      # DescribePrivateZoneList返回参数结构体
      class DescribePrivateZoneListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 私有域数量
        # @type TotalCount: Integer
        # @param PrivateZoneSet: 私有域列表
        # @type PrivateZoneSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :PrivateZoneSet, :RequestId
        
        def initialize(totalcount=nil, privatezoneset=nil, requestid=nil)
          @TotalCount = totalcount
          @PrivateZoneSet = privatezoneset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['PrivateZoneSet'].nil?
            @PrivateZoneSet = []
            params['PrivateZoneSet'].each do |i|
              privatezone_tmp = PrivateZone.new
              privatezone_tmp.deserialize(i)
              @PrivateZoneSet << privatezone_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePrivateZoneRecordList请求参数结构体
      class DescribePrivateZoneRecordListRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 私有域ID: zone-xxxxxx
        # @type ZoneId: String
        # @param Filters: 过滤参数（支持使用Value、RecordType过滤）
        # @type Filters: Array
        # @param Offset: 分页偏移量，从0开始
        # @type Offset: Integer
        # @param Limit: 分页限制数目， 最大200，默认20
        # @type Limit: Integer

        attr_accessor :ZoneId, :Filters, :Offset, :Limit
        
        def initialize(zoneid=nil, filters=nil, offset=nil, limit=nil)
          @ZoneId = zoneid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
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
        end
      end

      # DescribePrivateZoneRecordList返回参数结构体
      class DescribePrivateZoneRecordListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 解析记录数量
        # @type TotalCount: Integer
        # @param RecordSet: 解析记录列表
        # @type RecordSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RecordSet, :RequestId
        
        def initialize(totalcount=nil, recordset=nil, requestid=nil)
          @TotalCount = totalcount
          @RecordSet = recordset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RecordSet'].nil?
            @RecordSet = []
            params['RecordSet'].each do |i|
              privatezonerecord_tmp = PrivateZoneRecord.new
              privatezonerecord_tmp.deserialize(i)
              @RecordSet << privatezonerecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePrivateZone请求参数结构体
      class DescribePrivateZoneRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 域名，格式必须是标准的TLD
        # @type ZoneId: String

        attr_accessor :ZoneId
        
        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # DescribePrivateZone返回参数结构体
      class DescribePrivateZoneResponse < TencentCloud::Common::AbstractModel
        # @param PrivateZone: 私有域详情
        # @type PrivateZone: :class:`Tencentcloud::Privatedns.v20201028.models.PrivateZone`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PrivateZone, :RequestId
        
        def initialize(privatezone=nil, requestid=nil)
          @PrivateZone = privatezone
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PrivateZone'].nil?
            @PrivateZone = PrivateZone.new
            @PrivateZone.deserialize(params['PrivateZone'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePrivateZoneService请求参数结构体
      class DescribePrivateZoneServiceRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribePrivateZoneService返回参数结构体
      class DescribePrivateZoneServiceResponse < TencentCloud::Common::AbstractModel
        # @param ServiceStatus: 私有域解析服务开通状态。ENABLED已开通，DISABLED未开通
        # @type ServiceStatus: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceStatus, :RequestId
        
        def initialize(servicestatus=nil, requestid=nil)
          @ServiceStatus = servicestatus
          @RequestId = requestid
        end

        def deserialize(params)
          @ServiceStatus = params['ServiceStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeQuotaUsage请求参数结构体
      class DescribeQuotaUsageRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeQuotaUsage返回参数结构体
      class DescribeQuotaUsageResponse < TencentCloud::Common::AbstractModel
        # @param TldQuota: Tld额度使用情况
        # @type TldQuota: :class:`Tencentcloud::Privatedns.v20201028.models.TldQuota`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TldQuota, :RequestId
        
        def initialize(tldquota=nil, requestid=nil)
          @TldQuota = tldquota
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TldQuota'].nil?
            @TldQuota = TldQuota.new
            @TldQuota.deserialize(params['TldQuota'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRequestData请求参数结构体
      class DescribeRequestDataRequest < TencentCloud::Common::AbstractModel
        # @param TimeRangeBegin: 请求量统计起始时间，格式：2020-11-22 00:00:00
        # @type TimeRangeBegin: String
        # @param Filters: 筛选参数：
        # @type Filters: Array
        # @param TimeRangeEnd: 请求量统计结束时间，格式：2020-11-22 23:59:59
        # @type TimeRangeEnd: String

        attr_accessor :TimeRangeBegin, :Filters, :TimeRangeEnd
        
        def initialize(timerangebegin=nil, filters=nil, timerangeend=nil)
          @TimeRangeBegin = timerangebegin
          @Filters = filters
          @TimeRangeEnd = timerangeend
        end

        def deserialize(params)
          @TimeRangeBegin = params['TimeRangeBegin']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @TimeRangeEnd = params['TimeRangeEnd']
        end
      end

      # DescribeRequestData返回参数结构体
      class DescribeRequestDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 请求量统计表
        # @type Data: Array
        # @param Interval: 请求量单位时间: Day：天，Hour：小时
        # @type Interval: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Interval, :RequestId
        
        def initialize(data=nil, interval=nil, requestid=nil)
          @Data = data
          @Interval = interval
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              metricdata_tmp = MetricData.new
              metricdata_tmp.deserialize(i)
              @Data << metricdata_tmp
            end
          end
          @Interval = params['Interval']
          @RequestId = params['RequestId']
        end
      end

      # 筛选参数
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 参数名
        # @type Name: String
        # @param Values: 参数值数组
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

      # 流量包用量
      class FlowUsage < TencentCloud::Common::AbstractModel
        # @param FlowType: 流量包类型：ZONE 私有域；TRAFFIC 解析流量包
        # @type FlowType: String
        # @param TotalQuantity: 流量包总额度
        # @type TotalQuantity: Integer
        # @param AvailableQuantity: 流量包可用额度
        # @type AvailableQuantity: Integer

        attr_accessor :FlowType, :TotalQuantity, :AvailableQuantity
        
        def initialize(flowtype=nil, totalquantity=nil, availablequantity=nil)
          @FlowType = flowtype
          @TotalQuantity = totalquantity
          @AvailableQuantity = availablequantity
        end

        def deserialize(params)
          @FlowType = params['FlowType']
          @TotalQuantity = params['TotalQuantity']
          @AvailableQuantity = params['AvailableQuantity']
        end
      end

      # 统计数据表
      class MetricData < TencentCloud::Common::AbstractModel
        # @param Resource: 资源描述
        # @type Resource: String
        # @param Metric: 表名
        # @type Metric: String
        # @param DataSet: 表数据
        # @type DataSet: Array
        # @param MetricCount: 查询范围内的请求总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricCount: Integer

        attr_accessor :Resource, :Metric, :DataSet, :MetricCount
        
        def initialize(resource=nil, metric=nil, dataset=nil, metriccount=nil)
          @Resource = resource
          @Metric = metric
          @DataSet = dataset
          @MetricCount = metriccount
        end

        def deserialize(params)
          @Resource = params['Resource']
          @Metric = params['Metric']
          unless params['DataSet'].nil?
            @DataSet = []
            params['DataSet'].each do |i|
              datepoint_tmp = DatePoint.new
              datepoint_tmp.deserialize(i)
              @DataSet << datepoint_tmp
            end
          end
          @MetricCount = params['MetricCount']
        end
      end

      # ModifyPrivateZoneRecord请求参数结构体
      class ModifyPrivateZoneRecordRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 私有域ID
        # @type ZoneId: String
        # @param RecordId: 记录ID
        # @type RecordId: String
        # @param RecordType: 记录类型，可选的记录类型为："A", "AAAA", "CNAME", "MX", "TXT", "PTR"
        # @type RecordType: String
        # @param SubDomain: 子域名，例如 "www", "m", "@"
        # @type SubDomain: String
        # @param RecordValue: 记录值，例如 IP：192.168.10.2，CNAME：cname.qcloud.com.，MX：mail.qcloud.com.
        # @type RecordValue: String
        # @param Weight: 记录权重，值为1-100
        # @type Weight: Integer
        # @param MX: MX优先级：记录类型为MX时必填。取值范围：5,10,15,20,30,40,50
        # @type MX: Integer
        # @param TTL: 记录缓存时间，数值越小生效越快，取值1-86400s, 默认 600
        # @type TTL: Integer

        attr_accessor :ZoneId, :RecordId, :RecordType, :SubDomain, :RecordValue, :Weight, :MX, :TTL
        
        def initialize(zoneid=nil, recordid=nil, recordtype=nil, subdomain=nil, recordvalue=nil, weight=nil, mx=nil, ttl=nil)
          @ZoneId = zoneid
          @RecordId = recordid
          @RecordType = recordtype
          @SubDomain = subdomain
          @RecordValue = recordvalue
          @Weight = weight
          @MX = mx
          @TTL = ttl
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RecordId = params['RecordId']
          @RecordType = params['RecordType']
          @SubDomain = params['SubDomain']
          @RecordValue = params['RecordValue']
          @Weight = params['Weight']
          @MX = params['MX']
          @TTL = params['TTL']
        end
      end

      # ModifyPrivateZoneRecord返回参数结构体
      class ModifyPrivateZoneRecordResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPrivateZone请求参数结构体
      class ModifyPrivateZoneRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 私有域ID
        # @type ZoneId: String
        # @param Remark: 备注
        # @type Remark: String
        # @param DnsForwardStatus: 是否开启子域名递归, ENABLED， DISABLED
        # @type DnsForwardStatus: String
        # @param CnameSpeedupStatus: 是否开启CNAME加速：ENABLED， DISABLED
        # @type CnameSpeedupStatus: String

        attr_accessor :ZoneId, :Remark, :DnsForwardStatus, :CnameSpeedupStatus
        
        def initialize(zoneid=nil, remark=nil, dnsforwardstatus=nil, cnamespeedupstatus=nil)
          @ZoneId = zoneid
          @Remark = remark
          @DnsForwardStatus = dnsforwardstatus
          @CnameSpeedupStatus = cnamespeedupstatus
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Remark = params['Remark']
          @DnsForwardStatus = params['DnsForwardStatus']
          @CnameSpeedupStatus = params['CnameSpeedupStatus']
        end
      end

      # ModifyPrivateZone返回参数结构体
      class ModifyPrivateZoneResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPrivateZoneVpc请求参数结构体
      class ModifyPrivateZoneVpcRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 私有域ID
        # @type ZoneId: String
        # @param VpcSet: 私有域关联的全部VPC列表
        # @type VpcSet: Array
        # @param AccountVpcSet: 私有域账号关联的全部VPC列表
        # @type AccountVpcSet: Array

        attr_accessor :ZoneId, :VpcSet, :AccountVpcSet
        
        def initialize(zoneid=nil, vpcset=nil, accountvpcset=nil)
          @ZoneId = zoneid
          @VpcSet = vpcset
          @AccountVpcSet = accountvpcset
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['VpcSet'].nil?
            @VpcSet = []
            params['VpcSet'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @VpcSet << vpcinfo_tmp
            end
          end
          unless params['AccountVpcSet'].nil?
            @AccountVpcSet = []
            params['AccountVpcSet'].each do |i|
              accountvpcinfo_tmp = AccountVpcInfo.new
              accountvpcinfo_tmp.deserialize(i)
              @AccountVpcSet << accountvpcinfo_tmp
            end
          end
        end
      end

      # ModifyPrivateZoneVpc返回参数结构体
      class ModifyPrivateZoneVpcResponse < TencentCloud::Common::AbstractModel
        # @param ZoneId: 私有域ID, zone-xxxxxx
        # @type ZoneId: String
        # @param VpcSet: 解析域关联的VPC列表
        # @type VpcSet: Array
        # @param AccountVpcSet: 私有域账号关联的全部VPC列表
        # @type AccountVpcSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneId, :VpcSet, :AccountVpcSet, :RequestId
        
        def initialize(zoneid=nil, vpcset=nil, accountvpcset=nil, requestid=nil)
          @ZoneId = zoneid
          @VpcSet = vpcset
          @AccountVpcSet = accountvpcset
          @RequestId = requestid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['VpcSet'].nil?
            @VpcSet = []
            params['VpcSet'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @VpcSet << vpcinfo_tmp
            end
          end
          unless params['AccountVpcSet'].nil?
            @AccountVpcSet = []
            params['AccountVpcSet'].each do |i|
              accountvpcinfooutput_tmp = AccountVpcInfoOutput.new
              accountvpcinfooutput_tmp.deserialize(i)
              @AccountVpcSet << accountvpcinfooutput_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 私有域解析账号
      class PrivateDNSAccount < TencentCloud::Common::AbstractModel
        # @param Uin: 主账号Uin
        # @type Uin: String
        # @param Account: 主账号名称
        # @type Account: String
        # @param Nickname: 用户昵称
        # @type Nickname: String

        attr_accessor :Uin, :Account, :Nickname
        
        def initialize(uin=nil, account=nil, nickname=nil)
          @Uin = uin
          @Account = account
          @Nickname = nickname
        end

        def deserialize(params)
          @Uin = params['Uin']
          @Account = params['Account']
          @Nickname = params['Nickname']
        end
      end

      # 私有域信息
      class PrivateZone < TencentCloud::Common::AbstractModel
        # @param ZoneId: 私有域id: zone-xxxxxxxx
        # @type ZoneId: String
        # @param OwnerUin: 域名所有者uin
        # @type OwnerUin: Integer
        # @param Domain: 私有域名
        # @type Domain: String
        # @param CreatedOn: 创建时间
        # @type CreatedOn: String
        # @param UpdatedOn: 修改时间
        # @type UpdatedOn: String
        # @param RecordCount: 记录数
        # @type RecordCount: Integer
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param VpcSet: 绑定的Vpc列表
        # @type VpcSet: Array
        # @param Status: 私有域状态：正常解析：ENABLED, 暂停解析：SUSPEND, 锁定：FROZEN
        # @type Status: String
        # @param DnsForwardStatus: 域名递归解析状态：开通：ENABLED, 关闭，DISABLED
        # @type DnsForwardStatus: String
        # @param Tags: 标签键值对集合
        # @type Tags: Array
        # @param AccountVpcSet: 绑定的关联账号的vpc列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountVpcSet: Array
        # @param IsCustomTld: 是否自定义TLD
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCustomTld: Boolean
        # @param CnameSpeedupStatus: CNAME加速状态：开通：ENABLED, 关闭，DISABLED
        # @type CnameSpeedupStatus: String

        attr_accessor :ZoneId, :OwnerUin, :Domain, :CreatedOn, :UpdatedOn, :RecordCount, :Remark, :VpcSet, :Status, :DnsForwardStatus, :Tags, :AccountVpcSet, :IsCustomTld, :CnameSpeedupStatus
        
        def initialize(zoneid=nil, owneruin=nil, domain=nil, createdon=nil, updatedon=nil, recordcount=nil, remark=nil, vpcset=nil, status=nil, dnsforwardstatus=nil, tags=nil, accountvpcset=nil, iscustomtld=nil, cnamespeedupstatus=nil)
          @ZoneId = zoneid
          @OwnerUin = owneruin
          @Domain = domain
          @CreatedOn = createdon
          @UpdatedOn = updatedon
          @RecordCount = recordcount
          @Remark = remark
          @VpcSet = vpcset
          @Status = status
          @DnsForwardStatus = dnsforwardstatus
          @Tags = tags
          @AccountVpcSet = accountvpcset
          @IsCustomTld = iscustomtld
          @CnameSpeedupStatus = cnamespeedupstatus
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @OwnerUin = params['OwnerUin']
          @Domain = params['Domain']
          @CreatedOn = params['CreatedOn']
          @UpdatedOn = params['UpdatedOn']
          @RecordCount = params['RecordCount']
          @Remark = params['Remark']
          unless params['VpcSet'].nil?
            @VpcSet = []
            params['VpcSet'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @VpcSet << vpcinfo_tmp
            end
          end
          @Status = params['Status']
          @DnsForwardStatus = params['DnsForwardStatus']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          unless params['AccountVpcSet'].nil?
            @AccountVpcSet = []
            params['AccountVpcSet'].each do |i|
              accountvpcinfooutput_tmp = AccountVpcInfoOutput.new
              accountvpcinfooutput_tmp.deserialize(i)
              @AccountVpcSet << accountvpcinfooutput_tmp
            end
          end
          @IsCustomTld = params['IsCustomTld']
          @CnameSpeedupStatus = params['CnameSpeedupStatus']
        end
      end

      # 私有域信息
      class PrivateZoneRecord < TencentCloud::Common::AbstractModel
        # @param RecordId: 记录id
        # @type RecordId: String
        # @param ZoneId: 私有域id: zone-xxxxxxxx
        # @type ZoneId: String
        # @param SubDomain: 子域名
        # @type SubDomain: String
        # @param RecordType: 记录类型，可选的记录类型为："A", "AAAA", "CNAME", "MX", "TXT", "PTR"
        # @type RecordType: String
        # @param RecordValue: 记录值
        # @type RecordValue: String
        # @param TTL: 记录缓存时间，数值越小生效越快，取值1-86400s, 默认 600
        # @type TTL: Integer
        # @param MX: MX优先级：记录类型为MX时必填。取值范围：5,10,15,20,30,40,50
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MX: Integer
        # @param Status: 记录状态：ENABLED
        # @type Status: String
        # @param Weight: 记录权重，值为1-100
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer
        # @param CreatedOn: 记录创建时间
        # @type CreatedOn: String
        # @param UpdatedOn: 记录更新时间
        # @type UpdatedOn: String
        # @param Extra: 附加信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Enabled: 0暂停，1启用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enabled: Integer

        attr_accessor :RecordId, :ZoneId, :SubDomain, :RecordType, :RecordValue, :TTL, :MX, :Status, :Weight, :CreatedOn, :UpdatedOn, :Extra, :Enabled
        
        def initialize(recordid=nil, zoneid=nil, subdomain=nil, recordtype=nil, recordvalue=nil, ttl=nil, mx=nil, status=nil, weight=nil, createdon=nil, updatedon=nil, extra=nil, enabled=nil)
          @RecordId = recordid
          @ZoneId = zoneid
          @SubDomain = subdomain
          @RecordType = recordtype
          @RecordValue = recordvalue
          @TTL = ttl
          @MX = mx
          @Status = status
          @Weight = weight
          @CreatedOn = createdon
          @UpdatedOn = updatedon
          @Extra = extra
          @Enabled = enabled
        end

        def deserialize(params)
          @RecordId = params['RecordId']
          @ZoneId = params['ZoneId']
          @SubDomain = params['SubDomain']
          @RecordType = params['RecordType']
          @RecordValue = params['RecordValue']
          @TTL = params['TTL']
          @MX = params['MX']
          @Status = params['Status']
          @Weight = params['Weight']
          @CreatedOn = params['CreatedOn']
          @UpdatedOn = params['UpdatedOn']
          @Extra = params['Extra']
          @Enabled = params['Enabled']
        end
      end

      # SubscribePrivateZoneService请求参数结构体
      class SubscribePrivateZoneServiceRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # SubscribePrivateZoneService返回参数结构体
      class SubscribePrivateZoneServiceResponse < TencentCloud::Common::AbstractModel
        # @param ServiceStatus: 私有域解析服务开通状态
        # @type ServiceStatus: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceStatus, :RequestId
        
        def initialize(servicestatus=nil, requestid=nil)
          @ServiceStatus = servicestatus
          @RequestId = requestid
        end

        def deserialize(params)
          @ServiceStatus = params['ServiceStatus']
          @RequestId = params['RequestId']
        end
      end

      # 标签
      class TagInfo < TencentCloud::Common::AbstractModel
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

      # Tld额度
      class TldQuota < TencentCloud::Common::AbstractModel
        # @param Total: 总共额度
        # @type Total: Integer
        # @param Used: 已使用额度
        # @type Used: Integer
        # @param Stock: 库存
        # @type Stock: Integer
        # @param Quota: 用户限额
        # @type Quota: Integer

        attr_accessor :Total, :Used, :Stock, :Quota
        
        def initialize(total=nil, used=nil, stock=nil, quota=nil)
          @Total = total
          @Used = used
          @Stock = stock
          @Quota = quota
        end

        def deserialize(params)
          @Total = params['Total']
          @Used = params['Used']
          @Stock = params['Stock']
          @Quota = params['Quota']
        end
      end

      # Vpc信息
      class VpcInfo < TencentCloud::Common::AbstractModel
        # @param UniqVpcId: VpcId： vpc-xadsafsdasd
        # @type UniqVpcId: String
        # @param Region: Vpc所属地区: ap-guangzhou, ap-shanghai
        # @type Region: String

        attr_accessor :UniqVpcId, :Region
        
        def initialize(uniqvpcid=nil, region=nil)
          @UniqVpcId = uniqvpcid
          @Region = region
        end

        def deserialize(params)
          @UniqVpcId = params['UniqVpcId']
          @Region = params['Region']
        end
      end

    end
  end
end

