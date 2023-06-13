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
  module Cds
    module V20180420
      # 数据安全产品实例信息
      class CdsAuditInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param AppId: 用户AppId
        # @type AppId: String
        # @param Uin: 用户Uin
        # @type Uin: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param RenewFlag: 续费标识
        # @type RenewFlag: Integer
        # @param Region: 所属地域
        # @type Region: String
        # @param PayMode: 付费模式（数据安全审计只支持预付费：1）
        # @type PayMode: Integer
        # @param Status: 实例状态： 0，未生效；1：正常运行； 2：被隔离； 3，已过期
        # @type Status: Integer
        # @param IsolatedTimestamp: 实例被隔离时间，格式：yyyy-mm-dd HH:ii:ss
        # @type IsolatedTimestamp: String
        # @param CreateTime: 实例创建时间，格式： yyyy-mm-dd HH:ii:ss
        # @type CreateTime: String
        # @param ExpireTime: 实例过期时间，格式：yyyy-mm-dd HH:ii:ss
        # @type ExpireTime: String
        # @param InstanceName: 实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param PublicIp: 实例公网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param PrivateIp: 实例私网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIp: String
        # @param InstanceType: 实例类型（版本）
        # @type InstanceType: String
        # @param Pdomain: 实例域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pdomain: String

        attr_accessor :InstanceId, :AppId, :Uin, :ProjectId, :RenewFlag, :Region, :PayMode, :Status, :IsolatedTimestamp, :CreateTime, :ExpireTime, :InstanceName, :PublicIp, :PrivateIp, :InstanceType, :Pdomain

        def initialize(instanceid=nil, appid=nil, uin=nil, projectid=nil, renewflag=nil, region=nil, paymode=nil, status=nil, isolatedtimestamp=nil, createtime=nil, expiretime=nil, instancename=nil, publicip=nil, privateip=nil, instancetype=nil, pdomain=nil)
          @InstanceId = instanceid
          @AppId = appid
          @Uin = uin
          @ProjectId = projectid
          @RenewFlag = renewflag
          @Region = region
          @PayMode = paymode
          @Status = status
          @IsolatedTimestamp = isolatedtimestamp
          @CreateTime = createtime
          @ExpireTime = expiretime
          @InstanceName = instancename
          @PublicIp = publicip
          @PrivateIp = privateip
          @InstanceType = instancetype
          @Pdomain = pdomain
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @ProjectId = params['ProjectId']
          @RenewFlag = params['RenewFlag']
          @Region = params['Region']
          @PayMode = params['PayMode']
          @Status = params['Status']
          @IsolatedTimestamp = params['IsolatedTimestamp']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @InstanceName = params['InstanceName']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @InstanceType = params['InstanceType']
          @Pdomain = params['Pdomain']
        end
      end

      # 数据安全审计产品规格信息
      class DbauditTypesInfo < TencentCloud::Common::AbstractModel
        # @param InstanceVersionName: 规格描述
        # @type InstanceVersionName: String
        # @param InstanceVersionKey: 规格名称
        # @type InstanceVersionKey: String
        # @param Qps: 最大吞吐量
        # @type Qps: Integer
        # @param MaxInstances: 最大实例数
        # @type MaxInstances: Integer
        # @param InsertSpeed: 入库速率（每小时）
        # @type InsertSpeed: Integer
        # @param OnlineStorageCapacity: 最大在线存储量，单位：条
        # @type OnlineStorageCapacity: Integer
        # @param ArchivingStorageCapacity: 最大归档存储量，单位：条
        # @type ArchivingStorageCapacity: Integer

        attr_accessor :InstanceVersionName, :InstanceVersionKey, :Qps, :MaxInstances, :InsertSpeed, :OnlineStorageCapacity, :ArchivingStorageCapacity

        def initialize(instanceversionname=nil, instanceversionkey=nil, qps=nil, maxinstances=nil, insertspeed=nil, onlinestoragecapacity=nil, archivingstoragecapacity=nil)
          @InstanceVersionName = instanceversionname
          @InstanceVersionKey = instanceversionkey
          @Qps = qps
          @MaxInstances = maxinstances
          @InsertSpeed = insertspeed
          @OnlineStorageCapacity = onlinestoragecapacity
          @ArchivingStorageCapacity = archivingstoragecapacity
        end

        def deserialize(params)
          @InstanceVersionName = params['InstanceVersionName']
          @InstanceVersionKey = params['InstanceVersionKey']
          @Qps = params['Qps']
          @MaxInstances = params['MaxInstances']
          @InsertSpeed = params['InsertSpeed']
          @OnlineStorageCapacity = params['OnlineStorageCapacity']
          @ArchivingStorageCapacity = params['ArchivingStorageCapacity']
        end
      end

      # DescribeDasbImageIds请求参数结构体
      class DescribeDasbImageIdsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDasbImageIds返回参数结构体
      class DescribeDasbImageIdsResponse < TencentCloud::Common::AbstractModel
        # @param BaseImageId: 基础镜像ID
        # @type BaseImageId: String
        # @param AiImageId: AI镜像ID
        # @type AiImageId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BaseImageId, :AiImageId, :RequestId

        def initialize(baseimageid=nil, aiimageid=nil, requestid=nil)
          @BaseImageId = baseimageid
          @AiImageId = aiimageid
          @RequestId = requestid
        end

        def deserialize(params)
          @BaseImageId = params['BaseImageId']
          @AiImageId = params['AiImageId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDbauditInstanceType请求参数结构体
      class DescribeDbauditInstanceTypeRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDbauditInstanceType返回参数结构体
      class DescribeDbauditInstanceTypeResponse < TencentCloud::Common::AbstractModel
        # @param DbauditTypesSet: 数据安全审计产品规格信息列表
        # @type DbauditTypesSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DbauditTypesSet, :RequestId

        def initialize(dbaudittypesset=nil, requestid=nil)
          @DbauditTypesSet = dbaudittypesset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DbauditTypesSet'].nil?
            @DbauditTypesSet = []
            params['DbauditTypesSet'].each do |i|
              dbaudittypesinfo_tmp = DbauditTypesInfo.new
              dbaudittypesinfo_tmp.deserialize(i)
              @DbauditTypesSet << dbaudittypesinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDbauditInstances请求参数结构体
      class DescribeDbauditInstancesRequest < TencentCloud::Common::AbstractModel
        # @param SearchRegion: 查询条件地域
        # @type SearchRegion: String
        # @param Limit: 限制数目，默认10， 最大50
        # @type Limit: Integer
        # @param Offset: 偏移量，默认1
        # @type Offset: Integer

        attr_accessor :SearchRegion, :Limit, :Offset

        def initialize(searchregion=nil, limit=nil, offset=nil)
          @SearchRegion = searchregion
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @SearchRegion = params['SearchRegion']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDbauditInstances返回参数结构体
      class DescribeDbauditInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总实例数
        # @type TotalCount: Integer
        # @param CdsAuditInstanceSet: 数据安全审计实例信息列表
        # @type CdsAuditInstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CdsAuditInstanceSet, :RequestId

        def initialize(totalcount=nil, cdsauditinstanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @CdsAuditInstanceSet = cdsauditinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CdsAuditInstanceSet'].nil?
            @CdsAuditInstanceSet = []
            params['CdsAuditInstanceSet'].each do |i|
              cdsauditinstance_tmp = CdsAuditInstance.new
              cdsauditinstance_tmp.deserialize(i)
              @CdsAuditInstanceSet << cdsauditinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDbauditUsedRegions请求参数结构体
      class DescribeDbauditUsedRegionsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDbauditUsedRegions返回参数结构体
      class DescribeDbauditUsedRegionsResponse < TencentCloud::Common::AbstractModel
        # @param RegionSet: 可售卖地域信息列表
        # @type RegionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegionSet, :RequestId

        def initialize(regionset=nil, requestid=nil)
          @RegionSet = regionset
          @RequestId = requestid
        end

        def deserialize(params)
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

      # InquiryPriceDbauditInstance请求参数结构体
      class InquiryPriceDbauditInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceVersion: 实例规格，取值范围： cdsaudit，cdsaudit_adv， cdsaudit_ent 分别为合规版，高级版，企业版
        # @type InstanceVersion: String
        # @param InquiryType: 询价类型： renew，续费；newbuy，新购
        # @type InquiryType: String
        # @param TimeSpan: 购买实例的时长。取值范围：1（y/m），2（y/m）,，3（y/m），4（m）， 5（m），6（m）， 7（m），8（m），9（m）， 10（m）
        # @type TimeSpan: Integer
        # @param TimeUnit: 购买时长单位，y：年；m：月
        # @type TimeUnit: String
        # @param ServiceRegion: 实例所在地域
        # @type ServiceRegion: String

        attr_accessor :InstanceVersion, :InquiryType, :TimeSpan, :TimeUnit, :ServiceRegion

        def initialize(instanceversion=nil, inquirytype=nil, timespan=nil, timeunit=nil, serviceregion=nil)
          @InstanceVersion = instanceversion
          @InquiryType = inquirytype
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @ServiceRegion = serviceregion
        end

        def deserialize(params)
          @InstanceVersion = params['InstanceVersion']
          @InquiryType = params['InquiryType']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @ServiceRegion = params['ServiceRegion']
        end
      end

      # InquiryPriceDbauditInstance返回参数结构体
      class InquiryPriceDbauditInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TotalPrice: 总价，单位：元
        # @type TotalPrice: Float
        # @param RealTotalCost: 真实价钱，预支费用的折扣价，单位：元
        # @type RealTotalCost: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalPrice, :RealTotalCost, :RequestId

        def initialize(totalprice=nil, realtotalcost=nil, requestid=nil)
          @TotalPrice = totalprice
          @RealTotalCost = realtotalcost
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalPrice = params['TotalPrice']
          @RealTotalCost = params['RealTotalCost']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDbauditInstancesRenewFlag请求参数结构体
      class ModifyDbauditInstancesRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param AutoRenewFlag: 0，表示默认状态(用户未设置，即初始状态)；1，表示自动续费；2，表示明确不自动续费
        # @type AutoRenewFlag: Integer

        attr_accessor :InstanceId, :AutoRenewFlag

        def initialize(instanceid=nil, autorenewflag=nil)
          @InstanceId = instanceid
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # ModifyDbauditInstancesRenewFlag返回参数结构体
      class ModifyDbauditInstancesRenewFlagResponse < TencentCloud::Common::AbstractModel
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

      # 数盾地域信息
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param Region: 地域名称
        # @type Region: String
        # @param RegionName: 地域描述
        # @type RegionName: String
        # @param RegionState: 地域可用状态
        # @type RegionState: Integer

        attr_accessor :RegionId, :Region, :RegionName, :RegionState

        def initialize(regionid=nil, region=nil, regionname=nil, regionstate=nil)
          @RegionId = regionid
          @Region = region
          @RegionName = regionname
          @RegionState = regionstate
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionState = params['RegionState']
        end
      end

    end
  end
end

