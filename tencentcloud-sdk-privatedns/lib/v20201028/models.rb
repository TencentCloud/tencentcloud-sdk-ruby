# frozen_string_literal: true

# Copyright (c) 2017-2025 Tencent. All Rights Reserved.
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
        # @param UniqVpcId: VpcId
        # @type UniqVpcId: String
        # @param Region: Vpc所属地区
        # @type Region: String
        # @param Uin: Vpc所属账号
        # @type Uin: String
        # @param VpcName: vpc资源名称
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
        # @param VpcId: VpcId
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

      # AddSpecifyPrivateZoneVpc请求参数结构体
      class AddSpecifyPrivateZoneVpcRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 私有域id
        # @type ZoneId: String
        # @param VpcSet: 本次新增的vpc信息
        # @type VpcSet: Array
        # @param AccountVpcSet: 本次新增关联账户vpc信息
        # @type AccountVpcSet: Array
        # @param Sync: 是否为同步操作
        # @type Sync: Boolean

        attr_accessor :ZoneId, :VpcSet, :AccountVpcSet, :Sync

        def initialize(zoneid=nil, vpcset=nil, accountvpcset=nil, sync=nil)
          @ZoneId = zoneid
          @VpcSet = vpcset
          @AccountVpcSet = accountvpcset
          @Sync = sync
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
          @Sync = params['Sync']
        end
      end

      # AddSpecifyPrivateZoneVpc返回参数结构体
      class AddSpecifyPrivateZoneVpcResponse < TencentCloud::Common::AbstractModel
        # @param ZoneId: zone id
        # @type ZoneId: String
        # @param VpcSet: 本次新增的vpc
        # @type VpcSet: Array
        # @param AccountVpcSet: 本次新增的关联账号vpc
        # @type AccountVpcSet: Array
        # @param UniqId: 唯一id
        # @type UniqId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneId, :VpcSet, :AccountVpcSet, :UniqId, :RequestId

        def initialize(zoneid=nil, vpcset=nil, accountvpcset=nil, uniqid=nil, requestid=nil)
          @ZoneId = zoneid
          @VpcSet = vpcset
          @AccountVpcSet = accountvpcset
          @UniqId = uniqid
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
              accountvpcinfo_tmp = AccountVpcInfo.new
              accountvpcinfo_tmp.deserialize(i)
              @AccountVpcSet << accountvpcinfo_tmp
            end
          end
          @UniqId = params['UniqId']
          @RequestId = params['RequestId']
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

      # CreateExtendEndpoint请求参数结构体
      class CreateExtendEndpointRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # CreateExtendEndpoint返回参数结构体
      class CreateExtendEndpointResponse < TencentCloud::Common::AbstractModel
        # @param EndpointId: 终端节点id
        # @type EndpointId: String
        # @param EndpointName: 终端节点名称
        # @type EndpointName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EndpointId, :EndpointName, :RequestId

        def initialize(endpointid=nil, endpointname=nil, requestid=nil)
          @EndpointId = endpointid
          @EndpointName = endpointname
          @RequestId = requestid
        end

        def deserialize(params)
          @EndpointId = params['EndpointId']
          @EndpointName = params['EndpointName']
          @RequestId = params['RequestId']
        end
      end

      # CreateForwardRule请求参数结构体
      class CreateForwardRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 转发规则名称
        # @type RuleName: String
        # @param RuleType: 转发规则类型：云上到云下DOWN，云下到云上UP
        # @type RuleType: String
        # @param ZoneId: 私有域ID，可在私有域列表页面查看
        # @type ZoneId: String
        # @param EndPointId: 终端节点ID
        # @type EndPointId: String

        attr_accessor :RuleName, :RuleType, :ZoneId, :EndPointId

        def initialize(rulename=nil, ruletype=nil, zoneid=nil, endpointid=nil)
          @RuleName = rulename
          @RuleType = ruletype
          @ZoneId = zoneid
          @EndPointId = endpointid
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @RuleType = params['RuleType']
          @ZoneId = params['ZoneId']
          @EndPointId = params['EndPointId']
        end
      end

      # CreateForwardRule返回参数结构体
      class CreateForwardRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 转发规则ID
        # @type RuleId: String
        # @param RuleName: 转发规则名称
        # @type RuleName: String
        # @param RuleType: 转发规则类型
        # @type RuleType: String
        # @param ZoneId: 私有域ID
        # @type ZoneId: String
        # @param EndPointId: 终端节点ID
        # @type EndPointId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :RuleName, :RuleType, :ZoneId, :EndPointId, :RequestId

        def initialize(ruleid=nil, rulename=nil, ruletype=nil, zoneid=nil, endpointid=nil, requestid=nil)
          @RuleId = ruleid
          @RuleName = rulename
          @RuleType = ruletype
          @ZoneId = zoneid
          @EndPointId = endpointid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @RuleType = params['RuleType']
          @ZoneId = params['ZoneId']
          @EndPointId = params['EndPointId']
          @RequestId = params['RequestId']
        end
      end

      # CreateInboundEndpoint请求参数结构体
      class CreateInboundEndpointRequest < TencentCloud::Common::AbstractModel
        # @param EndpointName: 名称
        # @type EndpointName: String
        # @param EndpointRegion: 地域
        # @type EndpointRegion: String
        # @param EndpointVpc: vpcid
        # @type EndpointVpc: String
        # @param SubnetIp: 子网信息
        # @type SubnetIp: Array

        attr_accessor :EndpointName, :EndpointRegion, :EndpointVpc, :SubnetIp

        def initialize(endpointname=nil, endpointregion=nil, endpointvpc=nil, subnetip=nil)
          @EndpointName = endpointname
          @EndpointRegion = endpointregion
          @EndpointVpc = endpointvpc
          @SubnetIp = subnetip
        end

        def deserialize(params)
          @EndpointName = params['EndpointName']
          @EndpointRegion = params['EndpointRegion']
          @EndpointVpc = params['EndpointVpc']
          unless params['SubnetIp'].nil?
            @SubnetIp = []
            params['SubnetIp'].each do |i|
              subnetipinfo_tmp = SubnetIpInfo.new
              subnetipinfo_tmp.deserialize(i)
              @SubnetIp << subnetipinfo_tmp
            end
          end
        end
      end

      # CreateInboundEndpoint返回参数结构体
      class CreateInboundEndpointResponse < TencentCloud::Common::AbstractModel
        # @param EndpointId: 终端节点ID
        # @type EndpointId: String
        # @param EndpointName: 名称
        # @type EndpointName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EndpointId, :EndpointName, :RequestId

        def initialize(endpointid=nil, endpointname=nil, requestid=nil)
          @EndpointId = endpointid
          @EndpointName = endpointname
          @RequestId = requestid
        end

        def deserialize(params)
          @EndpointId = params['EndpointId']
          @EndpointName = params['EndpointName']
          @RequestId = params['RequestId']
        end
      end

      # CreatePrivateDNSAccount请求参数结构体
      class CreatePrivateDNSAccountRequest < TencentCloud::Common::AbstractModel
        # @param Account: 私有域解析账号，该账号不能与主账号一致且需要子账号授权
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
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :ZoneId, :RecordType, :SubDomain, :RecordValue, :Weight, :MX, :TTL, :Remark

        def initialize(zoneid=nil, recordtype=nil, subdomain=nil, recordvalue=nil, weight=nil, mx=nil, ttl=nil, remark=nil)
          @ZoneId = zoneid
          @RecordType = recordtype
          @SubDomain = subdomain
          @RecordValue = recordvalue
          @Weight = weight
          @MX = mx
          @TTL = ttl
          @Remark = remark
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RecordType = params['RecordType']
          @SubDomain = params['SubDomain']
          @RecordValue = params['RecordValue']
          @Weight = params['Weight']
          @MX = params['MX']
          @TTL = params['TTL']
          @Remark = params['Remark']
        end
      end

      # CreatePrivateZoneRecord返回参数结构体
      class CreatePrivateZoneRecordResponse < TencentCloud::Common::AbstractModel
        # @param RecordId: 记录Id
        # @type RecordId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        extend Gem::Deprecate
        deprecate :Vpcs, :none, 2025, 11
        deprecate :Vpcs=, :none, 2025, 11

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
        # @param ZoneId: 私有域ID, zone-12sa5ce78
        # @type ZoneId: String
        # @param Domain: 私有域名
        # @type Domain: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteEndPoint请求参数结构体
      class DeleteEndPointRequest < TencentCloud::Common::AbstractModel
        # @param EndPointId: 终端节点ID
        # @type EndPointId: String

        attr_accessor :EndPointId

        def initialize(endpointid=nil)
          @EndPointId = endpointid
        end

        def deserialize(params)
          @EndPointId = params['EndPointId']
        end
      end

      # DeleteEndPoint返回参数结构体
      class DeleteEndPointResponse < TencentCloud::Common::AbstractModel
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

      # DeleteForwardRule请求参数结构体
      class DeleteForwardRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleIdSet: 转发规则ID数组
        # @type RuleIdSet: Array

        attr_accessor :RuleIdSet

        def initialize(ruleidset=nil)
          @RuleIdSet = ruleidset
        end

        def deserialize(params)
          @RuleIdSet = params['RuleIdSet']
        end
      end

      # DeleteForwardRule返回参数结构体
      class DeleteForwardRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteInboundEndpoint请求参数结构体
      class DeleteInboundEndpointRequest < TencentCloud::Common::AbstractModel
        # @param EndpointId: 终端节点ID
        # @type EndpointId: String

        attr_accessor :EndpointId

        def initialize(endpointid=nil)
          @EndpointId = endpointid
        end

        def deserialize(params)
          @EndpointId = params['EndpointId']
        end
      end

      # DeleteInboundEndpoint返回参数结构体
      class DeleteInboundEndpointResponse < TencentCloud::Common::AbstractModel
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

      # DeletePrivateZoneRecord请求参数结构体
      class DeletePrivateZoneRecordRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 私有域ID
        # @type ZoneId: String
        # @param RecordId: 记录ID（调用DescribePrivateZoneRecordList可获取到RecordId）
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

      # DeleteSpecifyPrivateZoneVpc请求参数结构体
      class DeleteSpecifyPrivateZoneVpcRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 私有域id
        # @type ZoneId: String
        # @param VpcSet: 本次删除的VPC
        # @type VpcSet: Array
        # @param AccountVpcSet: 本次删除的关联账户VPC
        # @type AccountVpcSet: Array
        # @param Sync: 是否为同步操作
        # @type Sync: Boolean

        attr_accessor :ZoneId, :VpcSet, :AccountVpcSet, :Sync

        def initialize(zoneid=nil, vpcset=nil, accountvpcset=nil, sync=nil)
          @ZoneId = zoneid
          @VpcSet = vpcset
          @AccountVpcSet = accountvpcset
          @Sync = sync
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
          @Sync = params['Sync']
        end
      end

      # DeleteSpecifyPrivateZoneVpc返回参数结构体
      class DeleteSpecifyPrivateZoneVpcResponse < TencentCloud::Common::AbstractModel
        # @param ZoneId: 私有域id
        # @type ZoneId: String
        # @param VpcSet: 本次删除的VPC
        # @type VpcSet: Array
        # @param AccountVpcSet: 本次删除的关联账户的VPC
        # @type AccountVpcSet: Array
        # @param UniqId: 唯一id
        # @type UniqId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneId, :VpcSet, :AccountVpcSet, :UniqId, :RequestId

        def initialize(zoneid=nil, vpcset=nil, accountvpcset=nil, uniqid=nil, requestid=nil)
          @ZoneId = zoneid
          @VpcSet = vpcset
          @AccountVpcSet = accountvpcset
          @UniqId = uniqid
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
              accountvpcinfo_tmp = AccountVpcInfo.new
              accountvpcinfo_tmp.deserialize(i)
              @AccountVpcSet << accountvpcinfo_tmp
            end
          end
          @UniqId = params['UniqId']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeExtendEndpointList请求参数结构体
      class DescribeExtendEndpointListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量，从0开始
        # @type Offset: Integer
        # @param Limit: 分页限制数目， 最大100，默认20
        # @type Limit: Integer
        # @param Filters: 过滤参数，支持EndpointName,EndpointId
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

      # DescribeExtendEndpointList返回参数结构体
      class DescribeExtendEndpointListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeForwardRuleList请求参数结构体
      class DescribeForwardRuleListRequest < TencentCloud::Common::AbstractModel
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

      # DescribeForwardRuleList返回参数结构体
      class DescribeForwardRuleListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 私有域数量
        # @type TotalCount: Integer
        # @param ForwardRuleSet: 私有域列表
        # @type ForwardRuleSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ForwardRuleSet, :RequestId

        def initialize(totalcount=nil, forwardruleset=nil, requestid=nil)
          @TotalCount = totalcount
          @ForwardRuleSet = forwardruleset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ForwardRuleSet'].nil?
            @ForwardRuleSet = []
            params['ForwardRuleSet'].each do |i|
              forwardrule_tmp = ForwardRule.new
              forwardrule_tmp.deserialize(i)
              @ForwardRuleSet << forwardrule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInboundEndpointList请求参数结构体
      class DescribeInboundEndpointListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量，从0开始
        # @type Offset: Integer
        # @param Limit: 分页限制数目， 最大100，默认20
        # @type Limit: Integer
        # @param Filters: 过滤参数，支持EndPointName，EndpointName，EndpointId
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

      # DescribeInboundEndpointList返回参数结构体
      class DescribeInboundEndpointListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param InboundEndpointSet: 终端节点信息
        # @type InboundEndpointSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InboundEndpointSet, :RequestId

        def initialize(totalcount=nil, inboundendpointset=nil, requestid=nil)
          @TotalCount = totalcount
          @InboundEndpointSet = inboundendpointset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InboundEndpointSet'].nil?
            @InboundEndpointSet = []
            params['InboundEndpointSet'].each do |i|
              inboundendpointset_tmp = InboundEndpointSet.new
              inboundendpointset_tmp.deserialize(i)
              @InboundEndpointSet << inboundendpointset_tmp
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param ZoneId: 私有域ID: zone-12c5a6e8
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param ZoneId: 私有域id
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeRecord请求参数结构体
      class DescribeRecordRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 私有域ID
        # @type ZoneId: String
        # @param RecordId: 记录ID
        # @type RecordId: String

        attr_accessor :ZoneId, :RecordId

        def initialize(zoneid=nil, recordid=nil)
          @ZoneId = zoneid
          @RecordId = recordid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RecordId = params['RecordId']
        end
      end

      # DescribeRecord返回参数结构体
      class DescribeRecordResponse < TencentCloud::Common::AbstractModel
        # @param RecordInfo: 记录信息
        # @type RecordInfo: :class:`Tencentcloud::Privatedns.v20201028.models.RecordInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordInfo, :RequestId

        def initialize(recordinfo=nil, requestid=nil)
          @RecordInfo = recordinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RecordInfo'].nil?
            @RecordInfo = RecordInfo.new
            @RecordInfo.deserialize(params['RecordInfo'])
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
        # @param Export: 是否导出：true导出，false不导出
        # @type Export: Boolean

        attr_accessor :TimeRangeBegin, :Filters, :TimeRangeEnd, :Export

        def initialize(timerangebegin=nil, filters=nil, timerangeend=nil, export=nil)
          @TimeRangeBegin = timerangebegin
          @Filters = filters
          @TimeRangeEnd = timerangeend
          @Export = export
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
          @Export = params['Export']
        end
      end

      # DescribeRequestData返回参数结构体
      class DescribeRequestDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 请求量统计表
        # @type Data: Array
        # @param Interval: 请求量单位时间: Day：天，Hour：小时
        # @type Interval: String
        # @param Url: 导出数据下载地址
        # @type Url: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Interval, :Url, :RequestId

        def initialize(data=nil, interval=nil, url=nil, requestid=nil)
          @Data = data
          @Interval = interval
          @Url = url
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
          @Url = params['Url']
          @RequestId = params['RequestId']
        end
      end

      # 终端节点信息
      class EndPointServiceInfo < TencentCloud::Common::AbstractModel
        # @param EndPointVip: ip
        # @type EndPointVip: String
        # @param UniqSubnetId: 子网id
        # @type UniqSubnetId: String
        # @param EndPointState: 网络侧状态，0 可用，1 待接受，3 拒绝
        # @type EndPointState: Integer
        # @param EndPointStatus: 状态，1表示可用，0表示删除
        # @type EndPointStatus: Integer
        # @param EndPointRemark: 备注信息
        # @type EndPointRemark: String
        # @param EndPointIsolateFlag: 网络侧隔离状态，1：已隔离，0：未隔离
        # @type EndPointIsolateFlag: Integer

        attr_accessor :EndPointVip, :UniqSubnetId, :EndPointState, :EndPointStatus, :EndPointRemark, :EndPointIsolateFlag

        def initialize(endpointvip=nil, uniqsubnetid=nil, endpointstate=nil, endpointstatus=nil, endpointremark=nil, endpointisolateflag=nil)
          @EndPointVip = endpointvip
          @UniqSubnetId = uniqsubnetid
          @EndPointState = endpointstate
          @EndPointStatus = endpointstatus
          @EndPointRemark = endpointremark
          @EndPointIsolateFlag = endpointisolateflag
        end

        def deserialize(params)
          @EndPointVip = params['EndPointVip']
          @UniqSubnetId = params['UniqSubnetId']
          @EndPointState = params['EndPointState']
          @EndPointStatus = params['EndPointStatus']
          @EndPointRemark = params['EndPointRemark']
          @EndPointIsolateFlag = params['EndPointIsolateFlag']
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

      # 转发规则详情
      class ForwardRule < TencentCloud::Common::AbstractModel
        # @param Domain: 私有域名
        # @type Domain: String
        # @param RuleName: 转发规则名称
        # @type RuleName: String
        # @param RuleId: 规则id
        # @type RuleId: String
        # @param RuleType: 转发规则类型：云上到云下DOWN、云下到云上DOWN
        # @type RuleType: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String
        # @param EndPointName: 终端节点名称
        # @type EndPointName: String
        # @param EndPointId: 终端节点ID
        # @type EndPointId: String
        # @param ForwardAddress: 转发地址
        # @type ForwardAddress: Array
        # @param VpcSet: 私有域绑定的vpc列表
        # @type VpcSet: Array
        # @param ZoneId: 绑定的私有域ID
        # @type ZoneId: String
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :Domain, :RuleName, :RuleId, :RuleType, :CreatedAt, :UpdatedAt, :EndPointName, :EndPointId, :ForwardAddress, :VpcSet, :ZoneId, :Tags

        def initialize(domain=nil, rulename=nil, ruleid=nil, ruletype=nil, createdat=nil, updatedat=nil, endpointname=nil, endpointid=nil, forwardaddress=nil, vpcset=nil, zoneid=nil, tags=nil)
          @Domain = domain
          @RuleName = rulename
          @RuleId = ruleid
          @RuleType = ruletype
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @EndPointName = endpointname
          @EndPointId = endpointid
          @ForwardAddress = forwardaddress
          @VpcSet = vpcset
          @ZoneId = zoneid
          @Tags = tags
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RuleName = params['RuleName']
          @RuleId = params['RuleId']
          @RuleType = params['RuleType']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @EndPointName = params['EndPointName']
          @EndPointId = params['EndPointId']
          @ForwardAddress = params['ForwardAddress']
          unless params['VpcSet'].nil?
            @VpcSet = []
            params['VpcSet'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @VpcSet << vpcinfo_tmp
            end
          end
          @ZoneId = params['ZoneId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
        end
      end

      # 终端节点信息列表
      class InboundEndpointSet < TencentCloud::Common::AbstractModel
        # @param EndPointId: 终端节点ID
        # @type EndPointId: String
        # @param EndPointName: 名称
        # @type EndPointName: String
        # @param UniqVpcId: vpcid
        # @type UniqVpcId: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String
        # @param EndPointService: 终端节点信息
        # @type EndPointService: Array

        attr_accessor :EndPointId, :EndPointName, :UniqVpcId, :CreatedAt, :UpdatedAt, :EndPointService

        def initialize(endpointid=nil, endpointname=nil, uniqvpcid=nil, createdat=nil, updatedat=nil, endpointservice=nil)
          @EndPointId = endpointid
          @EndPointName = endpointname
          @UniqVpcId = uniqvpcid
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @EndPointService = endpointservice
        end

        def deserialize(params)
          @EndPointId = params['EndPointId']
          @EndPointName = params['EndPointName']
          @UniqVpcId = params['UniqVpcId']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          unless params['EndPointService'].nil?
            @EndPointService = []
            params['EndPointService'].each do |i|
              endpointserviceinfo_tmp = EndPointServiceInfo.new
              endpointserviceinfo_tmp.deserialize(i)
              @EndPointService << endpointserviceinfo_tmp
            end
          end
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

      # ModifyForwardRule请求参数结构体
      class ModifyForwardRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 转发规则ID
        # @type RuleId: String
        # @param RuleName: 转发规则名称
        # @type RuleName: String
        # @param EndPointId: 终端节点ID
        # @type EndPointId: String

        attr_accessor :RuleId, :RuleName, :EndPointId

        def initialize(ruleid=nil, rulename=nil, endpointid=nil)
          @RuleId = ruleid
          @RuleName = rulename
          @EndPointId = endpointid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @EndPointId = params['EndPointId']
        end
      end

      # ModifyForwardRule返回参数结构体
      class ModifyForwardRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInboundEndpoint请求参数结构体
      class ModifyInboundEndpointRequest < TencentCloud::Common::AbstractModel
        # @param EndpointId: 终端节点ID
        # @type EndpointId: String
        # @param EndpointName: 终端节点名称
        # @type EndpointName: String

        attr_accessor :EndpointId, :EndpointName

        def initialize(endpointid=nil, endpointname=nil)
          @EndpointId = endpointid
          @EndpointName = endpointname
        end

        def deserialize(params)
          @EndpointId = params['EndpointId']
          @EndpointName = params['EndpointName']
        end
      end

      # ModifyInboundEndpoint返回参数结构体
      class ModifyInboundEndpointResponse < TencentCloud::Common::AbstractModel
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
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :ZoneId, :RecordId, :RecordType, :SubDomain, :RecordValue, :Weight, :MX, :TTL, :Remark

        def initialize(zoneid=nil, recordid=nil, recordtype=nil, subdomain=nil, recordvalue=nil, weight=nil, mx=nil, ttl=nil, remark=nil)
          @ZoneId = zoneid
          @RecordId = recordid
          @RecordType = recordtype
          @SubDomain = subdomain
          @RecordValue = recordvalue
          @Weight = weight
          @MX = mx
          @TTL = ttl
          @Remark = remark
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
          @Remark = params['Remark']
        end
      end

      # ModifyPrivateZoneRecord返回参数结构体
      class ModifyPrivateZoneRecordResponse < TencentCloud::Common::AbstractModel
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
        # @param ZoneId: 私有域ID, zone-12e45ds6
        # @type ZoneId: String
        # @param VpcSet: 解析域关联的VPC列表
        # @type VpcSet: Array
        # @param AccountVpcSet: 私有域账号关联的全部VPC列表
        # @type AccountVpcSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyRecordsStatus请求参数结构体
      class ModifyRecordsStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 私有域ID
        # @type ZoneId: String
        # @param RecordIds: 解析记录ID列表
        # @type RecordIds: Array
        # @param Status: enabled：生效，disabled：失效
        # @type Status: String

        attr_accessor :ZoneId, :RecordIds, :Status

        def initialize(zoneid=nil, recordids=nil, status=nil)
          @ZoneId = zoneid
          @RecordIds = recordids
          @Status = status
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RecordIds = params['RecordIds']
          @Status = params['Status']
        end
      end

      # ModifyRecordsStatus返回参数结构体
      class ModifyRecordsStatusResponse < TencentCloud::Common::AbstractModel
        # @param ZoneId: 私有域ID
        # @type ZoneId: String
        # @param RecordIds: 解析记录ID列表
        # @type RecordIds: Array
        # @param Status: enabled：生效，disabled：失效
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneId, :RecordIds, :Status, :RequestId

        def initialize(zoneid=nil, recordids=nil, status=nil, requestid=nil)
          @ZoneId = zoneid
          @RecordIds = recordids
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RecordIds = params['RecordIds']
          @Status = params['Status']
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
        # @type Remark: String
        # @param VpcSet: 绑定的Vpc列表
        # @type VpcSet: Array
        # @param Status: 私有域绑定VPC状态，未关联vpc：SUSPEND，已关联VPC：ENABLED
        # ，关联VPC失败：FAILED
        # @type Status: String
        # @param DnsForwardStatus: 域名递归解析状态：开通：ENABLED, 关闭，DISABLED
        # @type DnsForwardStatus: String
        # @param Tags: 标签键值对集合
        # @type Tags: Array
        # @param AccountVpcSet: 绑定的关联账号的vpc列表
        # @type AccountVpcSet: Array
        # @param IsCustomTld: 是否自定义TLD
        # @type IsCustomTld: Boolean
        # @param CnameSpeedupStatus: CNAME加速状态：开通：ENABLED, 关闭，DISABLED
        # @type CnameSpeedupStatus: String
        # @param ForwardRuleName: 转发规则名称
        # @type ForwardRuleName: String
        # @param ForwardRuleType: 转发规则类型：云上到云下，DOWN；云下到云上，UP，目前只支持DOWN
        # @type ForwardRuleType: String
        # @param ForwardAddress: 转发的地址
        # @type ForwardAddress: String
        # @param EndPointName: 终端节点名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndPointName: String
        # @param DeletedVpcSet: 已删除的vpc
        # @type DeletedVpcSet: Array

        attr_accessor :ZoneId, :OwnerUin, :Domain, :CreatedOn, :UpdatedOn, :RecordCount, :Remark, :VpcSet, :Status, :DnsForwardStatus, :Tags, :AccountVpcSet, :IsCustomTld, :CnameSpeedupStatus, :ForwardRuleName, :ForwardRuleType, :ForwardAddress, :EndPointName, :DeletedVpcSet

        def initialize(zoneid=nil, owneruin=nil, domain=nil, createdon=nil, updatedon=nil, recordcount=nil, remark=nil, vpcset=nil, status=nil, dnsforwardstatus=nil, tags=nil, accountvpcset=nil, iscustomtld=nil, cnamespeedupstatus=nil, forwardrulename=nil, forwardruletype=nil, forwardaddress=nil, endpointname=nil, deletedvpcset=nil)
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
          @ForwardRuleName = forwardrulename
          @ForwardRuleType = forwardruletype
          @ForwardAddress = forwardaddress
          @EndPointName = endpointname
          @DeletedVpcSet = deletedvpcset
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
          @ForwardRuleName = params['ForwardRuleName']
          @ForwardRuleType = params['ForwardRuleType']
          @ForwardAddress = params['ForwardAddress']
          @EndPointName = params['EndPointName']
          unless params['DeletedVpcSet'].nil?
            @DeletedVpcSet = []
            params['DeletedVpcSet'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @DeletedVpcSet << vpcinfo_tmp
            end
          end
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
        # @type Enabled: Integer
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :RecordId, :ZoneId, :SubDomain, :RecordType, :RecordValue, :TTL, :MX, :Status, :Weight, :CreatedOn, :UpdatedOn, :Extra, :Enabled, :Remark

        def initialize(recordid=nil, zoneid=nil, subdomain=nil, recordtype=nil, recordvalue=nil, ttl=nil, mx=nil, status=nil, weight=nil, createdon=nil, updatedon=nil, extra=nil, enabled=nil, remark=nil)
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
          @Remark = remark
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
          @Remark = params['Remark']
        end
      end

      # QueryAsyncBindVpcStatus请求参数结构体
      class QueryAsyncBindVpcStatusRequest < TencentCloud::Common::AbstractModel
        # @param UniqId: 唯一ID
        # @type UniqId: String

        attr_accessor :UniqId

        def initialize(uniqid=nil)
          @UniqId = uniqid
        end

        def deserialize(params)
          @UniqId = params['UniqId']
        end
      end

      # QueryAsyncBindVpcStatus返回参数结构体
      class QueryAsyncBindVpcStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: processing 处理中，success 执行成功，
        # failed 执行失败
        # @type Status: String
        # @param ErrorMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ErrorMsg, :RequestId

        def initialize(status=nil, errormsg=nil, requestid=nil)
          @Status = status
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 私有域信息
      class RecordInfo < TencentCloud::Common::AbstractModel
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
        # @type MX: Integer
        # @param Weight: 记录权重，值为1-100
        # @type Weight: Integer
        # @param CreatedOn: 记录创建时间
        # @type CreatedOn: String
        # @param UpdatedOn: 记录更新时间
        # @type UpdatedOn: String
        # @param Enabled: 0暂停，1启用
        # @type Enabled: Integer
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :RecordId, :ZoneId, :SubDomain, :RecordType, :RecordValue, :TTL, :MX, :Weight, :CreatedOn, :UpdatedOn, :Enabled, :Remark

        def initialize(recordid=nil, zoneid=nil, subdomain=nil, recordtype=nil, recordvalue=nil, ttl=nil, mx=nil, weight=nil, createdon=nil, updatedon=nil, enabled=nil, remark=nil)
          @RecordId = recordid
          @ZoneId = zoneid
          @SubDomain = subdomain
          @RecordType = recordtype
          @RecordValue = recordvalue
          @TTL = ttl
          @MX = mx
          @Weight = weight
          @CreatedOn = createdon
          @UpdatedOn = updatedon
          @Enabled = enabled
          @Remark = remark
        end

        def deserialize(params)
          @RecordId = params['RecordId']
          @ZoneId = params['ZoneId']
          @SubDomain = params['SubDomain']
          @RecordType = params['RecordType']
          @RecordValue = params['RecordValue']
          @TTL = params['TTL']
          @MX = params['MX']
          @Weight = params['Weight']
          @CreatedOn = params['CreatedOn']
          @UpdatedOn = params['UpdatedOn']
          @Enabled = params['Enabled']
          @Remark = params['Remark']
        end
      end

      # 终端节点信息
      class SubnetIpInfo < TencentCloud::Common::AbstractModel
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param SubnetVip: ip
        # @type SubnetVip: String

        attr_accessor :SubnetId, :SubnetVip

        def initialize(subnetid=nil, subnetvip=nil)
          @SubnetId = subnetid
          @SubnetVip = subnetvip
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @SubnetVip = params['SubnetVip']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param UniqVpcId: VpcId
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

