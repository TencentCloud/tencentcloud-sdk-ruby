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
  module Bmeip
    module V20180625
      # BindEipAcls请求参数结构体
      class BindEipAclsRequest < TencentCloud::Common::AbstractModel
        # @param EipIdAclIdList: 待关联的 EIP 与 ACL关系列表
        # @type EipIdAclIdList: Array

        attr_accessor :EipIdAclIdList

        def initialize(eipidaclidlist=nil)
          @EipIdAclIdList = eipidaclidlist
        end

        def deserialize(params)
          unless params['EipIdAclIdList'].nil?
            @EipIdAclIdList = []
            params['EipIdAclIdList'].each do |i|
              eipaclmap_tmp = EipAclMap.new
              eipaclmap_tmp.deserialize(i)
              @EipIdAclIdList << eipaclmap_tmp
            end
          end
        end
      end

      # BindEipAcls返回参数结构体
      class BindEipAclsResponse < TencentCloud::Common::AbstractModel
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

      # BindHosted请求参数结构体
      class BindHostedRequest < TencentCloud::Common::AbstractModel
        # @param EipId: Eip实例ID，可通过DescribeBmEip 接口返回字段中的 eipId获取。Eip和EipId参数必须要填写一个。
        # @type EipId: String
        # @param InstanceId: 托管机器实例ID
        # @type InstanceId: String

        attr_accessor :EipId, :InstanceId

        def initialize(eipid=nil, instanceid=nil)
          @EipId = eipid
          @InstanceId = instanceid
        end

        def deserialize(params)
          @EipId = params['EipId']
          @InstanceId = params['InstanceId']
        end
      end

      # BindHosted返回参数结构体
      class BindHostedResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID，可以通过EipBmQueryTask查询任务状态
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

      # BindRs请求参数结构体
      class BindRsRequest < TencentCloud::Common::AbstractModel
        # @param EipId: Eip实例ID
        # @type EipId: String
        # @param InstanceId: 物理服务器实例ID
        # @type InstanceId: String

        attr_accessor :EipId, :InstanceId

        def initialize(eipid=nil, instanceid=nil)
          @EipId = eipid
          @InstanceId = instanceid
        end

        def deserialize(params)
          @EipId = params['EipId']
          @InstanceId = params['InstanceId']
        end
      end

      # BindRs返回参数结构体
      class BindRsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 绑定黑石物理机异步任务ID，可以通过DescribeEipTask查询任务状态
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

      # BindVpcIp请求参数结构体
      class BindVpcIpRequest < TencentCloud::Common::AbstractModel
        # @param EipId: Eip实例ID
        # @type EipId: String
        # @param VpcId: EIP归属VpcId，例如vpc-k7j1t2x1
        # @type VpcId: String
        # @param VpcIp: 绑定的VPC内IP地址
        # @type VpcIp: String

        attr_accessor :EipId, :VpcId, :VpcIp

        def initialize(eipid=nil, vpcid=nil, vpcip=nil)
          @EipId = eipid
          @VpcId = vpcid
          @VpcIp = vpcip
        end

        def deserialize(params)
          @EipId = params['EipId']
          @VpcId = params['VpcId']
          @VpcIp = params['VpcIp']
        end
      end

      # BindVpcIp返回参数结构体
      class BindVpcIpResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: EIP绑定VPC网络IP异步任务ID，可以通过查询EIP任务状态查询任务状态
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

      # CreateEipAcl请求参数结构体
      class CreateEipAclRequest < TencentCloud::Common::AbstractModel
        # @param AclName: ACL 名称
        # @type AclName: String
        # @param Status: ACL 状态 0：无状态，1：有状态
        # @type Status: Integer

        attr_accessor :AclName, :Status

        def initialize(aclname=nil, status=nil)
          @AclName = aclname
          @Status = status
        end

        def deserialize(params)
          @AclName = params['AclName']
          @Status = params['Status']
        end
      end

      # CreateEipAcl返回参数结构体
      class CreateEipAclResponse < TencentCloud::Common::AbstractModel
        # @param AclId: ACL 实例 ID
        # @type AclId: String
        # @param Status: ACL 实例状态
        # @type Status: Integer
        # @param AclName: ACL 实例名称
        # @type AclName: String
        # @param CreatedAt: ACL 实例创建时间
        # @type CreatedAt: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AclId, :Status, :AclName, :CreatedAt, :RequestId

        def initialize(aclid=nil, status=nil, aclname=nil, createdat=nil, requestid=nil)
          @AclId = aclid
          @Status = status
          @AclName = aclname
          @CreatedAt = createdat
          @RequestId = requestid
        end

        def deserialize(params)
          @AclId = params['AclId']
          @Status = params['Status']
          @AclName = params['AclName']
          @CreatedAt = params['CreatedAt']
          @RequestId = params['RequestId']
        end
      end

      # CreateEip请求参数结构体
      class CreateEipRequest < TencentCloud::Common::AbstractModel
        # @param GoodsNum: 申请数量，默认为1, 最大 20
        # @type GoodsNum: Integer
        # @param PayMode: EIP计费方式，flow-流量计费；bandwidth-带宽计费
        # @type PayMode: String
        # @param Bandwidth: 带宽设定值（只在带宽计费时生效）
        # @type Bandwidth: Integer
        # @param SetType: EIP模式，目前支持tunnel和fullnat
        # @type SetType: String
        # @param Exclusive: 是否使用独占集群，0：不使用，1：使用。默认为0
        # @type Exclusive: Integer
        # @param VpcId: EIP归属私有网络ID，例如vpc-k7j1t2x1
        # @type VpcId: String
        # @param IpList: 指定申请的IP列表
        # @type IpList: Array

        attr_accessor :GoodsNum, :PayMode, :Bandwidth, :SetType, :Exclusive, :VpcId, :IpList

        def initialize(goodsnum=nil, paymode=nil, bandwidth=nil, settype=nil, exclusive=nil, vpcid=nil, iplist=nil)
          @GoodsNum = goodsnum
          @PayMode = paymode
          @Bandwidth = bandwidth
          @SetType = settype
          @Exclusive = exclusive
          @VpcId = vpcid
          @IpList = iplist
        end

        def deserialize(params)
          @GoodsNum = params['GoodsNum']
          @PayMode = params['PayMode']
          @Bandwidth = params['Bandwidth']
          @SetType = params['SetType']
          @Exclusive = params['Exclusive']
          @VpcId = params['VpcId']
          @IpList = params['IpList']
        end
      end

      # CreateEip返回参数结构体
      class CreateEipResponse < TencentCloud::Common::AbstractModel
        # @param EipIds: EIP列表
        # @type EipIds: Array
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EipIds, :TaskId, :RequestId

        def initialize(eipids=nil, taskid=nil, requestid=nil)
          @EipIds = eipids
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @EipIds = params['EipIds']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteEipAcl请求参数结构体
      class DeleteEipAclRequest < TencentCloud::Common::AbstractModel
        # @param AclId: 待删除的 ACL 实例 ID
        # @type AclId: String

        attr_accessor :AclId

        def initialize(aclid=nil)
          @AclId = aclid
        end

        def deserialize(params)
          @AclId = params['AclId']
        end
      end

      # DeleteEipAcl返回参数结构体
      class DeleteEipAclResponse < TencentCloud::Common::AbstractModel
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

      # DeleteEip请求参数结构体
      class DeleteEipRequest < TencentCloud::Common::AbstractModel
        # @param EipIds: Eip实例ID列表
        # @type EipIds: Array

        attr_accessor :EipIds

        def initialize(eipids=nil)
          @EipIds = eipids
        end

        def deserialize(params)
          @EipIds = params['EipIds']
        end
      end

      # DeleteEip返回参数结构体
      class DeleteEipResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
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

      # DescribeEipAcls请求参数结构体
      class DescribeEipAclsRequest < TencentCloud::Common::AbstractModel
        # @param AclName: ACL 名称，支持模糊查找
        # @type AclName: String
        # @param AclIds: ACL 实例 ID 列表，数组下标从 0 开始
        # @type AclIds: Array
        # @param Offset: 分页参数。偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 分页参数。每一页的 EIPACL 列表数目
        # @type Limit: Integer
        # @param EipIds: EIP实例ID列表
        # @type EipIds: Array
        # @param EipIps: EIP IP地址列表
        # @type EipIps: Array
        # @param EipNames: EIP名称列表
        # @type EipNames: Array
        # @param OrderField: 排序字段
        # @type OrderField: String
        # @param Order: 排序方式，取值：0:增序(默认)，1:降序
        # @type Order: Integer
        # @param AclNames: ACL名称列表，支持模糊查找
        # @type AclNames: Array

        attr_accessor :AclName, :AclIds, :Offset, :Limit, :EipIds, :EipIps, :EipNames, :OrderField, :Order, :AclNames

        def initialize(aclname=nil, aclids=nil, offset=nil, limit=nil, eipids=nil, eipips=nil, eipnames=nil, orderfield=nil, order=nil, aclnames=nil)
          @AclName = aclname
          @AclIds = aclids
          @Offset = offset
          @Limit = limit
          @EipIds = eipids
          @EipIps = eipips
          @EipNames = eipnames
          @OrderField = orderfield
          @Order = order
          @AclNames = aclnames
        end

        def deserialize(params)
          @AclName = params['AclName']
          @AclIds = params['AclIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @EipIds = params['EipIds']
          @EipIps = params['EipIps']
          @EipNames = params['EipNames']
          @OrderField = params['OrderField']
          @Order = params['Order']
          @AclNames = params['AclNames']
        end
      end

      # DescribeEipAcls返回参数结构体
      class DescribeEipAclsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回 EIPACL 列表总数
        # @type TotalCount: Integer
        # @param EipAclList: EIPACL列表
        # @type EipAclList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :EipAclList, :RequestId

        def initialize(totalcount=nil, eipacllist=nil, requestid=nil)
          @TotalCount = totalcount
          @EipAclList = eipacllist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EipAclList'].nil?
            @EipAclList = []
            params['EipAclList'].each do |i|
              eipacl_tmp = EipAcl.new
              eipacl_tmp.deserialize(i)
              @EipAclList << eipacl_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEipQuota请求参数结构体
      class DescribeEipQuotaRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeEipQuota返回参数结构体
      class DescribeEipQuotaResponse < TencentCloud::Common::AbstractModel
        # @param EipNumQuota: 能拥有的EIP个数的总配额，默认是100个
        # @type EipNumQuota: Integer
        # @param CurrentEipNum: 当前已使用的EIP个数，包括创建中、绑定中、已绑定、解绑中、未绑定几种状态的EIP个数总和
        # @type CurrentEipNum: Integer
        # @param DailyApplyCount: 当天申请EIP次数
        # @type DailyApplyCount: Integer
        # @param DailyApplyQuota: 每日申请EIP的次数限制
        # @type DailyApplyQuota: Integer
        # @param BatchApplyMax: BatchApplyMax
        # @type BatchApplyMax: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EipNumQuota, :CurrentEipNum, :DailyApplyCount, :DailyApplyQuota, :BatchApplyMax, :RequestId

        def initialize(eipnumquota=nil, currenteipnum=nil, dailyapplycount=nil, dailyapplyquota=nil, batchapplymax=nil, requestid=nil)
          @EipNumQuota = eipnumquota
          @CurrentEipNum = currenteipnum
          @DailyApplyCount = dailyapplycount
          @DailyApplyQuota = dailyapplyquota
          @BatchApplyMax = batchapplymax
          @RequestId = requestid
        end

        def deserialize(params)
          @EipNumQuota = params['EipNumQuota']
          @CurrentEipNum = params['CurrentEipNum']
          @DailyApplyCount = params['DailyApplyCount']
          @DailyApplyQuota = params['DailyApplyQuota']
          @BatchApplyMax = params['BatchApplyMax']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEipTask请求参数结构体
      class DescribeEipTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: EIP查询任务ID
        # @type TaskId: Integer

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeEipTask返回参数结构体
      class DescribeEipTaskResponse < TencentCloud::Common::AbstractModel
        # @param Status: 当前任务状态码：0-成功，1-失败，2-进行中
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeEips请求参数结构体
      class DescribeEipsRequest < TencentCloud::Common::AbstractModel
        # @param EipIds: EIP实例ID列表
        # @type EipIds: Array
        # @param Eips: EIP IP 列表
        # @type Eips: Array
        # @param InstanceIds: 主机实例ID 列表
        # @type InstanceIds: Array
        # @param SearchKey: EIP名称,模糊匹配
        # @type SearchKey: String
        # @param Status: 状态列表, 默认所有
        # @type Status: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回EIP数量，默认 20, 最大值 100
        # @type Limit: Integer
        # @param OrderField: 排序字段，支持： EipId,Eip,Status, InstanceId,CreatedAt
        # @type OrderField: String
        # @param Order: 排序方式 0:递增 1:递减(默认)
        # @type Order: Integer
        # @param PayMode: 计费模式,流量：flow，带宽：bandwidth
        # @type PayMode: String
        # @param VpcId: EIP归属VpcId，例如vpc-k7j1t2x1
        # @type VpcId: String
        # @param BindTypes: 绑定类型，-1：未绑定，0：物理机，1：nat网关，2：虚拟IP, 3:托管机器
        # @type BindTypes: Array
        # @param ExclusiveTag: 独占标志，0：共享，1：独占
        # @type ExclusiveTag: Integer
        # @param AclId: EIP ACL实例ID
        # @type AclId: String
        # @param BindAcl: 搜索条件，是否绑定了EIP ACL， 0：未绑定，1：绑定
        # @type BindAcl: Integer

        attr_accessor :EipIds, :Eips, :InstanceIds, :SearchKey, :Status, :Offset, :Limit, :OrderField, :Order, :PayMode, :VpcId, :BindTypes, :ExclusiveTag, :AclId, :BindAcl

        def initialize(eipids=nil, eips=nil, instanceids=nil, searchkey=nil, status=nil, offset=nil, limit=nil, orderfield=nil, order=nil, paymode=nil, vpcid=nil, bindtypes=nil, exclusivetag=nil, aclid=nil, bindacl=nil)
          @EipIds = eipids
          @Eips = eips
          @InstanceIds = instanceids
          @SearchKey = searchkey
          @Status = status
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @Order = order
          @PayMode = paymode
          @VpcId = vpcid
          @BindTypes = bindtypes
          @ExclusiveTag = exclusivetag
          @AclId = aclid
          @BindAcl = bindacl
        end

        def deserialize(params)
          @EipIds = params['EipIds']
          @Eips = params['Eips']
          @InstanceIds = params['InstanceIds']
          @SearchKey = params['SearchKey']
          @Status = params['Status']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @Order = params['Order']
          @PayMode = params['PayMode']
          @VpcId = params['VpcId']
          @BindTypes = params['BindTypes']
          @ExclusiveTag = params['ExclusiveTag']
          @AclId = params['AclId']
          @BindAcl = params['BindAcl']
        end
      end

      # DescribeEips返回参数结构体
      class DescribeEipsResponse < TencentCloud::Common::AbstractModel
        # @param EipSet: 返回EIP信息数组
        # @type EipSet: Array
        # @param TotalCount: 返回EIP数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EipSet, :TotalCount, :RequestId

        def initialize(eipset=nil, totalcount=nil, requestid=nil)
          @EipSet = eipset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EipSet'].nil?
            @EipSet = []
            params['EipSet'].each do |i|
              eipinfo_tmp = EipInfo.new
              eipinfo_tmp.deserialize(i)
              @EipSet << eipinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # EipAcl信息
      class EipAcl < TencentCloud::Common::AbstractModel
        # @param AclId: ACL 实例 ID。
        # @type AclId: String
        # @param AclName: ACL 实例名称
        # @type AclName: String
        # @param Status: ACL 状态。0：无状态，1：有状态
        # @type Status: String
        # @param CreatedAt: EIPACL 创建时间
        # @type CreatedAt: String
        # @param EipNum: EIPACL 已关联的 eip 数目
        # @type EipNum: Integer
        # @param OutRules: 出站规则
        # @type OutRules: Array
        # @param InRules: 入站规则
        # @type InRules: Array

        attr_accessor :AclId, :AclName, :Status, :CreatedAt, :EipNum, :OutRules, :InRules

        def initialize(aclid=nil, aclname=nil, status=nil, createdat=nil, eipnum=nil, outrules=nil, inrules=nil)
          @AclId = aclid
          @AclName = aclname
          @Status = status
          @CreatedAt = createdat
          @EipNum = eipnum
          @OutRules = outrules
          @InRules = inrules
        end

        def deserialize(params)
          @AclId = params['AclId']
          @AclName = params['AclName']
          @Status = params['Status']
          @CreatedAt = params['CreatedAt']
          @EipNum = params['EipNum']
          unless params['OutRules'].nil?
            @OutRules = []
            params['OutRules'].each do |i|
              eipaclrule_tmp = EipAclRule.new
              eipaclrule_tmp.deserialize(i)
              @OutRules << eipaclrule_tmp
            end
          end
          unless params['InRules'].nil?
            @InRules = []
            params['InRules'].each do |i|
              eipaclrule_tmp = EipAclRule.new
              eipaclrule_tmp.deserialize(i)
              @InRules << eipaclrule_tmp
            end
          end
        end
      end

      # eipid与aclid关联关系
      class EipAclMap < TencentCloud::Common::AbstractModel
        # @param EipId: EIP 实例 ID
        # @type EipId: String
        # @param AclId: ACL 实例 ID
        # @type AclId: String

        attr_accessor :EipId, :AclId

        def initialize(eipid=nil, aclid=nil)
          @EipId = eipid
          @AclId = aclid
        end

        def deserialize(params)
          @EipId = params['EipId']
          @AclId = params['AclId']
        end
      end

      # eipacl规则
      class EipAclRule < TencentCloud::Common::AbstractModel
        # @param Ip: 源 IP
        # @type Ip: String
        # @param Port: 目标端口
        # @type Port: String
        # @param Protocol: 协议(TCP/UDP/ICMP/ANY)
        # @type Protocol: String
        # @param Action: 策略（accept/drop）
        # @type Action: String
        # @param Description: 备注
        # @type Description: String

        attr_accessor :Ip, :Port, :Protocol, :Action, :Description

        def initialize(ip=nil, port=nil, protocol=nil, action=nil, description=nil)
          @Ip = ip
          @Port = port
          @Protocol = protocol
          @Action = action
          @Description = description
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Port = params['Port']
          @Protocol = params['Protocol']
          @Action = params['Action']
          @Description = params['Description']
        end
      end

      # Eip信息
      class EipInfo < TencentCloud::Common::AbstractModel
        # @param EipId: EIP实例ID
        # @type EipId: String
        # @param EipName: EIP名称
        # @type EipName: String
        # @param Eip: EIP地址
        # @type Eip: String
        # @param IspId: 运营商ID 0：电信； 1：联通； 2：移动； 3：教育网； 4：盈科； 5：BGP； 6：中国香港
        # @type IspId: Integer
        # @param Status: 状态 0：创建中； 1：绑定中； 2：已绑定； 3：解绑中； 4：未绑定； 6：下线中； 9：创建失败
        # @type Status: Integer
        # @param Arrears: 是否欠费隔离 1： 欠费隔离； 0： 正常。处在欠费隔离情况下的EIP不能进行任何管理操作。
        # @type Arrears: Integer
        # @param InstanceId: EIP所绑定的服务器实例ID，未绑定则为空
        # @type InstanceId: String
        # @param InstanceAlias: 服务器别名
        # @type InstanceAlias: String
        # @param FreeAt: EIP解绑时间
        # @type FreeAt: String
        # @param CreatedAt: EIP创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: EIP更新时间
        # @type UpdatedAt: String
        # @param FreeSecond: EIP未绑定服务器时长（单位：秒）
        # @type FreeSecond: Integer
        # @param Type: EIP所绑定的资源类型，-1：未绑定资源；0：黑石物理机，字段对应unInstanceId；1：Nat网关，字段对应natUid；2：云服务器字段对应vpcIp; 3: 托管机器，字段对应HInstanceId, HInstanceAlias
        # @type Type: Integer
        # @param PayMode: EIP计费模式，"flow"：流量计费； "bandwidth"：带宽计费
        # @type PayMode: String
        # @param Bandwidth: EIP带宽计费模式下的带宽上限（单位：MB）
        # @type Bandwidth: Integer
        # @param LatestPayMode: 最近一次操作变更的EIP计费模式，"flow"：流量计费； "bandwidth"：带宽计费
        # @type LatestPayMode: String
        # @param LatestBandwidth: 最近一次操作变更的EIP计费模式对应的带宽上限值，仅在带宽计费模式下有效（单位：MB）
        # @type LatestBandwidth: Integer
        # @param VpcName: 私有网络名称
        # @type VpcName: String
        # @param NatId: EIP所绑定的NAT网关的数字ID，形如：1001,，未绑定则为空
        # @type NatId: Integer
        # @param NatUid: EIP所绑定的NAT网关实例ID，形如："nat-n47xxxxx"，未绑定则为空
        # @type NatUid: String
        # @param VpcIp: EIP所绑定的云服务器IP(托管或者云服务器的IP），形如："10.1.1.3"。 注意：IP资源需要通过bmvpc模块注册或者申请后才可以绑定eip，接口使用申请子网IP和注册子网IP：,未绑定则为空
        # @type VpcIp: String
        # @param VpcId: 私有网络实例ID
        # @type VpcId: String
        # @param Exclusive: 是否为独占类型EIP
        # @type Exclusive: Integer
        # @param VpcCidr: 私有网络的cidr
        # @type VpcCidr: String
        # @param AclId: EIP ACL实例ID
        # @type AclId: String
        # @param AclName: EIP ACL名称
        # @type AclName: String
        # @param HInstanceId: 托管机器实例ID
        # @type HInstanceId: String
        # @param HInstanceAlias: 托管机器别名
        # @type HInstanceAlias: String

        attr_accessor :EipId, :EipName, :Eip, :IspId, :Status, :Arrears, :InstanceId, :InstanceAlias, :FreeAt, :CreatedAt, :UpdatedAt, :FreeSecond, :Type, :PayMode, :Bandwidth, :LatestPayMode, :LatestBandwidth, :VpcName, :NatId, :NatUid, :VpcIp, :VpcId, :Exclusive, :VpcCidr, :AclId, :AclName, :HInstanceId, :HInstanceAlias

        def initialize(eipid=nil, eipname=nil, eip=nil, ispid=nil, status=nil, arrears=nil, instanceid=nil, instancealias=nil, freeat=nil, createdat=nil, updatedat=nil, freesecond=nil, type=nil, paymode=nil, bandwidth=nil, latestpaymode=nil, latestbandwidth=nil, vpcname=nil, natid=nil, natuid=nil, vpcip=nil, vpcid=nil, exclusive=nil, vpccidr=nil, aclid=nil, aclname=nil, hinstanceid=nil, hinstancealias=nil)
          @EipId = eipid
          @EipName = eipname
          @Eip = eip
          @IspId = ispid
          @Status = status
          @Arrears = arrears
          @InstanceId = instanceid
          @InstanceAlias = instancealias
          @FreeAt = freeat
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @FreeSecond = freesecond
          @Type = type
          @PayMode = paymode
          @Bandwidth = bandwidth
          @LatestPayMode = latestpaymode
          @LatestBandwidth = latestbandwidth
          @VpcName = vpcname
          @NatId = natid
          @NatUid = natuid
          @VpcIp = vpcip
          @VpcId = vpcid
          @Exclusive = exclusive
          @VpcCidr = vpccidr
          @AclId = aclid
          @AclName = aclname
          @HInstanceId = hinstanceid
          @HInstanceAlias = hinstancealias
        end

        def deserialize(params)
          @EipId = params['EipId']
          @EipName = params['EipName']
          @Eip = params['Eip']
          @IspId = params['IspId']
          @Status = params['Status']
          @Arrears = params['Arrears']
          @InstanceId = params['InstanceId']
          @InstanceAlias = params['InstanceAlias']
          @FreeAt = params['FreeAt']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @FreeSecond = params['FreeSecond']
          @Type = params['Type']
          @PayMode = params['PayMode']
          @Bandwidth = params['Bandwidth']
          @LatestPayMode = params['LatestPayMode']
          @LatestBandwidth = params['LatestBandwidth']
          @VpcName = params['VpcName']
          @NatId = params['NatId']
          @NatUid = params['NatUid']
          @VpcIp = params['VpcIp']
          @VpcId = params['VpcId']
          @Exclusive = params['Exclusive']
          @VpcCidr = params['VpcCidr']
          @AclId = params['AclId']
          @AclName = params['AclName']
          @HInstanceId = params['HInstanceId']
          @HInstanceAlias = params['HInstanceAlias']
        end
      end

      # EipId与InstanceId绑定关系
      class EipRsMap < TencentCloud::Common::AbstractModel
        # @param EipId: EIP实例 ID
        # @type EipId: String
        # @param InstanceId: 黑石物理机实例ID
        # @type InstanceId: String

        attr_accessor :EipId, :InstanceId

        def initialize(eipid=nil, instanceid=nil)
          @EipId = eipid
          @InstanceId = instanceid
        end

        def deserialize(params)
          @EipId = params['EipId']
          @InstanceId = params['InstanceId']
        end
      end

      # ModifyEipAcl请求参数结构体
      class ModifyEipAclRequest < TencentCloud::Common::AbstractModel
        # @param AclId: ACL 实例 ID
        # @type AclId: String
        # @param AclName: ACL 名称
        # @type AclName: String
        # @param Status: ACL 状态。0：无状态 1：有状态
        # @type Status: Integer
        # @param Type: 规则类型（in/out）。in：入站规则 out：出站规则
        # @type Type: String
        # @param Rules: ACL规则列表
        # @type Rules: Array

        attr_accessor :AclId, :AclName, :Status, :Type, :Rules

        def initialize(aclid=nil, aclname=nil, status=nil, type=nil, rules=nil)
          @AclId = aclid
          @AclName = aclname
          @Status = status
          @Type = type
          @Rules = rules
        end

        def deserialize(params)
          @AclId = params['AclId']
          @AclName = params['AclName']
          @Status = params['Status']
          @Type = params['Type']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              eipaclrule_tmp = EipAclRule.new
              eipaclrule_tmp.deserialize(i)
              @Rules << eipaclrule_tmp
            end
          end
        end
      end

      # ModifyEipAcl返回参数结构体
      class ModifyEipAclResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEipCharge请求参数结构体
      class ModifyEipChargeRequest < TencentCloud::Common::AbstractModel
        # @param PayMode: EIP计费方式，flow-流量计费；bandwidth-带宽计费
        # @type PayMode: String
        # @param EipIds: Eip实例ID列表
        # @type EipIds: Array
        # @param Bandwidth: 带宽设定值（只在带宽计费时生效）
        # @type Bandwidth: Integer

        attr_accessor :PayMode, :EipIds, :Bandwidth

        def initialize(paymode=nil, eipids=nil, bandwidth=nil)
          @PayMode = paymode
          @EipIds = eipids
          @Bandwidth = bandwidth
        end

        def deserialize(params)
          @PayMode = params['PayMode']
          @EipIds = params['EipIds']
          @Bandwidth = params['Bandwidth']
        end
      end

      # ModifyEipCharge返回参数结构体
      class ModifyEipChargeResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 修改计费模式的异步任务ID，可以通过查询EIP任务状态查询任务状态
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

      # ModifyEipName请求参数结构体
      class ModifyEipNameRequest < TencentCloud::Common::AbstractModel
        # @param EipId: Eip实例ID，可通过/v2/DescribeEip 接口返回字段中的 eipId获取
        # @type EipId: String
        # @param EipName: EIP 实例别名
        # @type EipName: String

        attr_accessor :EipId, :EipName

        def initialize(eipid=nil, eipname=nil)
          @EipId = eipid
          @EipName = eipname
        end

        def deserialize(params)
          @EipId = params['EipId']
          @EipName = params['EipName']
        end
      end

      # ModifyEipName返回参数结构体
      class ModifyEipNameResponse < TencentCloud::Common::AbstractModel
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

      # UnbindEipAcls请求参数结构体
      class UnbindEipAclsRequest < TencentCloud::Common::AbstractModel
        # @param EipIdAclIdList: 待解关联的 EIP 与 ACL列表
        # @type EipIdAclIdList: Array

        attr_accessor :EipIdAclIdList

        def initialize(eipidaclidlist=nil)
          @EipIdAclIdList = eipidaclidlist
        end

        def deserialize(params)
          unless params['EipIdAclIdList'].nil?
            @EipIdAclIdList = []
            params['EipIdAclIdList'].each do |i|
              eipaclmap_tmp = EipAclMap.new
              eipaclmap_tmp.deserialize(i)
              @EipIdAclIdList << eipaclmap_tmp
            end
          end
        end
      end

      # UnbindEipAcls返回参数结构体
      class UnbindEipAclsResponse < TencentCloud::Common::AbstractModel
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

      # UnbindHosted请求参数结构体
      class UnbindHostedRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 托管机器实例ID
        # @type InstanceId: String
        # @param EipId: Eip实例ID，可通过DescribeBmEip 接口返回字段中的 eipId获取。Eip和EipId参数必须要填写一个。
        # @type EipId: String
        # @param Eip: 弹性IP。Eip和EipId参数必须要填写一个。
        # @type Eip: String

        attr_accessor :InstanceId, :EipId, :Eip

        def initialize(instanceid=nil, eipid=nil, eip=nil)
          @InstanceId = instanceid
          @EipId = eipid
          @Eip = eip
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @EipId = params['EipId']
          @Eip = params['Eip']
        end
      end

      # UnbindHosted返回参数结构体
      class UnbindHostedResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID，可以通过EipBmQueryTask查询任务状态
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

      # UnbindRsList请求参数结构体
      class UnbindRsListRequest < TencentCloud::Common::AbstractModel
        # @param EipRsList: 物理机绑定的EIP列表
        # @type EipRsList: Array

        attr_accessor :EipRsList

        def initialize(eiprslist=nil)
          @EipRsList = eiprslist
        end

        def deserialize(params)
          unless params['EipRsList'].nil?
            @EipRsList = []
            params['EipRsList'].each do |i|
              eiprsmap_tmp = EipRsMap.new
              eiprsmap_tmp.deserialize(i)
              @EipRsList << eiprsmap_tmp
            end
          end
        end
      end

      # UnbindRsList返回参数结构体
      class UnbindRsListResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 解绑操作的异步任务ID，可以通过查询EIP任务状态查询任务状态
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

      # UnbindRs请求参数结构体
      class UnbindRsRequest < TencentCloud::Common::AbstractModel
        # @param EipId: Eip实例ID
        # @type EipId: String
        # @param InstanceId: 物理服务器实例ID
        # @type InstanceId: String

        attr_accessor :EipId, :InstanceId

        def initialize(eipid=nil, instanceid=nil)
          @EipId = eipid
          @InstanceId = instanceid
        end

        def deserialize(params)
          @EipId = params['EipId']
          @InstanceId = params['InstanceId']
        end
      end

      # UnbindRs返回参数结构体
      class UnbindRsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 解绑操作的异步任务ID，可以通过查询EIP任务状态查询任务状态
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

      # UnbindVpcIp请求参数结构体
      class UnbindVpcIpRequest < TencentCloud::Common::AbstractModel
        # @param EipId: Eip实例ID
        # @type EipId: String
        # @param VpcId: EIP归属VpcId，例如vpc-k7j1t2x1
        # @type VpcId: String
        # @param VpcIp: 绑定的VPC内IP地址
        # @type VpcIp: String

        attr_accessor :EipId, :VpcId, :VpcIp

        def initialize(eipid=nil, vpcid=nil, vpcip=nil)
          @EipId = eipid
          @VpcId = vpcid
          @VpcIp = vpcip
        end

        def deserialize(params)
          @EipId = params['EipId']
          @VpcId = params['VpcId']
          @VpcIp = params['VpcIp']
        end
      end

      # UnbindVpcIp返回参数结构体
      class UnbindVpcIpResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 绑定黑石物理机异步任务ID，可以通过查询EIP任务状态查询任务状态
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

    end
  end
end

