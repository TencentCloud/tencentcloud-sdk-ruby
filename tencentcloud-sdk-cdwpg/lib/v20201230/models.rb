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

      # 计费时间参数
      class ChargeProperties < TencentCloud::Common::AbstractModel
        # @param RenewFlag: 1-需要自动续期
        # @type RenewFlag: Integer
        # @param TimeSpan: 订单时间范围
        # @type TimeSpan: Integer
        # @param TimeUnit: 时间单位，一般为h和m
        # @type TimeUnit: String
        # @param PayMode: 计费类型0-按量计费，1-包年包月
        # @type PayMode: Integer
        # @param ChargeType: PREPAID、POSTPAID_BY_HOUR
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

        attr_accessor :InstanceName, :Zone, :UserVPCId, :UserSubnetId, :ChargeProperties, :AdminPassword, :Resources, :Tags

        def initialize(instancename=nil, zone=nil, uservpcid=nil, usersubnetid=nil, chargeproperties=nil, adminpassword=nil, resources=nil, tags=nil)
          @InstanceName = instancename
          @Zone = zone
          @UserVPCId = uservpcid
          @UserSubnetId = usersubnetid
          @ChargeProperties = chargeproperties
          @AdminPassword = adminpassword
          @Resources = resources
          @Tags = tags
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

    end
  end
end

