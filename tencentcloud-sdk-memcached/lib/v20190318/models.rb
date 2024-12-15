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
  module Memcached
    module V20190318
      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param OrderBy: 枚举范围： AddTimeStamp, InstanceName, ProjectId
        # @type OrderBy: String
        # @param SearchKeys: 查找的关键字
        # @type SearchKeys: Array
        # @param UniqSubnetIds: 子网ID列表
        # @type UniqSubnetIds: Array
        # @param Vips: VIP列表
        # @type Vips: Array
        # @param OrderType: 0倒序，1正序，默认倒序
        # @type OrderType: Integer
        # @param InstanceNames: 实例名称列表
        # @type InstanceNames: Array
        # @param UniqVpcIds: VPC ID列表
        # @type UniqVpcIds: Array
        # @param ProjectIds: 项目ID列表
        # @type ProjectIds: Array
        # @param Offset: 偏移量，取Limit整数倍
        # @type Offset: Integer
        # @param Limit: 实例列表的大小，参数默认值100
        # @type Limit: Integer
        # @param InstanceIds: 实例ID列表
        # @type InstanceIds: Array

        attr_accessor :OrderBy, :SearchKeys, :UniqSubnetIds, :Vips, :OrderType, :InstanceNames, :UniqVpcIds, :ProjectIds, :Offset, :Limit, :InstanceIds

        def initialize(orderby=nil, searchkeys=nil, uniqsubnetids=nil, vips=nil, ordertype=nil, instancenames=nil, uniqvpcids=nil, projectids=nil, offset=nil, limit=nil, instanceids=nil)
          @OrderBy = orderby
          @SearchKeys = searchkeys
          @UniqSubnetIds = uniqsubnetids
          @Vips = vips
          @OrderType = ordertype
          @InstanceNames = instancenames
          @UniqVpcIds = uniqvpcids
          @ProjectIds = projectids
          @Offset = offset
          @Limit = limit
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @OrderBy = params['OrderBy']
          @SearchKeys = params['SearchKeys']
          @UniqSubnetIds = params['UniqSubnetIds']
          @Vips = params['Vips']
          @OrderType = params['OrderType']
          @InstanceNames = params['InstanceNames']
          @UniqVpcIds = params['UniqVpcIds']
          @ProjectIds = params['ProjectIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: 实例详细信息列表
        # @type InstanceList: Array
        # @param TotalNum: 实例数量
        # @type TotalNum: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceList, :TotalNum, :RequestId

        def initialize(instancelist=nil, totalnum=nil, requestid=nil)
          @InstanceList = instancelist
          @TotalNum = totalnum
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              instancelistinfo_tmp = InstanceListInfo.new
              instancelistinfo_tmp.deserialize(i)
              @InstanceList << instancelistinfo_tmp
            end
          end
          @TotalNum = params['TotalNum']
          @RequestId = params['RequestId']
        end
      end

      # 实例详细信息列表
      class InstanceListInfo < TencentCloud::Common::AbstractModel
        # @param ModTimeStamp: 实例修改时间
        # @type ModTimeStamp: String
        # @param IsolateTimeStamp: 实例隔离时间
        # @type IsolateTimeStamp: String
        # @param AutoRenewFlag: 实例是否设置自动续费标识，1：设置自动续费；0：未设置自动续费
        # @type AutoRenewFlag: Integer
        # @param SetId: 仓库ID
        # @type SetId: Integer
        # @param Status: 实例当前状态，0：发货中；1：运行中；2：创建失败；4：销毁中；5：隔离中；6：下线中
        # @type Status: Integer
        # @param CmemId: 实例内置ID
        # @type CmemId: Integer
        # @param Tags: 实例关联的标签信息
        # @type Tags: Array
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param RegionId: 地域id 1--广州 4--上海 5-- 香港 6--多伦多 7--上海金融 8--北京 9-- 新加坡 11--深圳金融 15--美西（硅谷）16--成都 17--德国 18--韩国 19--重庆 21--印度 22--美东（弗吉尼亚）23--泰国   25--日本
        # @type RegionId: Integer
        # @param InstanceDesc: 实例描述信息
        # @type InstanceDesc: String
        # @param Expire: 过期策略
        # @type Expire: Integer
        # @param SubnetId: vpc网络下子网id 如：46315
        # @type SubnetId: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param AddTimeStamp: 实例创建时间
        # @type AddTimeStamp: String
        # @param ZoneId: 区域ID
        # @type ZoneId: Integer
        # @param PayMode: 计费模式：0-按量计费，1-包年包月
        # @type PayMode: Integer
        # @param VpcId: vpc网络id 如：75101
        # @type VpcId: Integer
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param DeadlineTimeStamp: 实例截止时间
        # @type DeadlineTimeStamp: String
        # @param UniqVpcId: vpc网络id 如：vpc-fk33jsf43kgv
        # @type UniqVpcId: String
        # @param Vip: 实例vip
        # @type Vip: String
        # @param UniqSubnetId: vpc网络下子网id 如：subnet-fd3j6l35mm0
        # @type UniqSubnetId: String
        # @param AppId: 用户AppID
        # @type AppId: Integer
        # @param Vport: 实例端口号
        # @type Vport: Integer

        attr_accessor :ModTimeStamp, :IsolateTimeStamp, :AutoRenewFlag, :SetId, :Status, :CmemId, :Tags, :InstanceId, :RegionId, :InstanceDesc, :Expire, :SubnetId, :ProjectId, :AddTimeStamp, :ZoneId, :PayMode, :VpcId, :InstanceName, :DeadlineTimeStamp, :UniqVpcId, :Vip, :UniqSubnetId, :AppId, :Vport

        def initialize(modtimestamp=nil, isolatetimestamp=nil, autorenewflag=nil, setid=nil, status=nil, cmemid=nil, tags=nil, instanceid=nil, regionid=nil, instancedesc=nil, expire=nil, subnetid=nil, projectid=nil, addtimestamp=nil, zoneid=nil, paymode=nil, vpcid=nil, instancename=nil, deadlinetimestamp=nil, uniqvpcid=nil, vip=nil, uniqsubnetid=nil, appid=nil, vport=nil)
          @ModTimeStamp = modtimestamp
          @IsolateTimeStamp = isolatetimestamp
          @AutoRenewFlag = autorenewflag
          @SetId = setid
          @Status = status
          @CmemId = cmemid
          @Tags = tags
          @InstanceId = instanceid
          @RegionId = regionid
          @InstanceDesc = instancedesc
          @Expire = expire
          @SubnetId = subnetid
          @ProjectId = projectid
          @AddTimeStamp = addtimestamp
          @ZoneId = zoneid
          @PayMode = paymode
          @VpcId = vpcid
          @InstanceName = instancename
          @DeadlineTimeStamp = deadlinetimestamp
          @UniqVpcId = uniqvpcid
          @Vip = vip
          @UniqSubnetId = uniqsubnetid
          @AppId = appid
          @Vport = vport
        end

        def deserialize(params)
          @ModTimeStamp = params['ModTimeStamp']
          @IsolateTimeStamp = params['IsolateTimeStamp']
          @AutoRenewFlag = params['AutoRenewFlag']
          @SetId = params['SetId']
          @Status = params['Status']
          @CmemId = params['CmemId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @InstanceId = params['InstanceId']
          @RegionId = params['RegionId']
          @InstanceDesc = params['InstanceDesc']
          @Expire = params['Expire']
          @SubnetId = params['SubnetId']
          @ProjectId = params['ProjectId']
          @AddTimeStamp = params['AddTimeStamp']
          @ZoneId = params['ZoneId']
          @PayMode = params['PayMode']
          @VpcId = params['VpcId']
          @InstanceName = params['InstanceName']
          @DeadlineTimeStamp = params['DeadlineTimeStamp']
          @UniqVpcId = params['UniqVpcId']
          @Vip = params['Vip']
          @UniqSubnetId = params['UniqSubnetId']
          @AppId = params['AppId']
          @Vport = params['Vport']
        end
      end

      # 标签信息
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

    end
  end
end

