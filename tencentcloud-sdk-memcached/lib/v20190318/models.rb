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
        # @param InstanceIds: 实例ID组成的数组，数组下标从0开始
        # @type InstanceIds: Array
        # @param InstanceNames: 实例名称组成的数组，数组下标从0开始
        # @type InstanceNames: Array
        # @param Limit: 实例列表的大小，参数默认值100
        # @type Limit: Integer
        # @param Offset: 偏移量，取Limit整数倍
        # @type Offset: Integer
        # @param OrderBy: 枚举范围： AddTimeStamp, InstanceName, ProjectId
        # @type OrderBy: String
        # @param OrderType: 0倒序，1正序，默认倒序
        # @type OrderType: Integer
        # @param ProjectIds: 项目ID组成的数组，数组下标从0开始
        # @type ProjectIds: Array
        # @param SearchKeys: 搜索关键词：支持实例ID、实例名称、完整IP
        # @type SearchKeys: Array
        # @param UniqSubnetIds: 子网ID数组，数组下标从0开始，如：subnet-fdj24n34j2
        # @type UniqSubnetIds: Array
        # @param UniqVpcIds: 私有网络ID数组，数组下标从0开始，如果不传则默认选择基础网络，如：vpc-sad23jfdfk
        # @type UniqVpcIds: Array
        # @param Vips: 实例服务IP组成的数组，数组下标从0开始
        # @type Vips: Array

        attr_accessor :InstanceIds, :InstanceNames, :Limit, :Offset, :OrderBy, :OrderType, :ProjectIds, :SearchKeys, :UniqSubnetIds, :UniqVpcIds, :Vips
        
        def initialize(instanceids=nil, instancenames=nil, limit=nil, offset=nil, orderby=nil, ordertype=nil, projectids=nil, searchkeys=nil, uniqsubnetids=nil, uniqvpcids=nil, vips=nil)
          @InstanceIds = instanceids
          @InstanceNames = instancenames
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderType = ordertype
          @ProjectIds = projectids
          @SearchKeys = searchkeys
          @UniqSubnetIds = uniqsubnetids
          @UniqVpcIds = uniqvpcids
          @Vips = vips
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @InstanceNames = params['InstanceNames']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @ProjectIds = params['ProjectIds']
          @SearchKeys = params['SearchKeys']
          @UniqSubnetIds = params['UniqSubnetIds']
          @UniqVpcIds = params['UniqVpcIds']
          @Vips = params['Vips']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: 实例详细信息列表
        # @type InstanceList: Array
        # @param TotalNum: 实例数量
        # @type TotalNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Tags: 实例关联的标签信息
        # @type Tags: Array
        # @param AddTimeStamp: 实例创建时间
        # @type AddTimeStamp: String
        # @param AppId: 用户AppID
        # @type AppId: Integer
        # @param AutoRenewFlag: 实例是否设置自动续费标识，1：设置自动续费；0：未设置自动续费
        # @type AutoRenewFlag: Integer
        # @param CmemId: 实例内置ID
        # @type CmemId: Integer
        # @param DeadlineTimeStamp: 实例截止时间
        # @type DeadlineTimeStamp: String
        # @param Expire: 过期策略
        # @type Expire: Integer
        # @param InstanceDesc: 实例描述信息
        # @type InstanceDesc: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param IsolateTimeStamp: 实例隔离时间
        # @type IsolateTimeStamp: String
        # @param ModTimeStamp: 实例修改时间
        # @type ModTimeStamp: String
        # @param PayMode: 计费模式：0-按量计费，1-包年包月
        # @type PayMode: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param RegionId: 地域id 1--广州 4--上海 5-- 香港 6--多伦多 7--上海金融 8--北京 9-- 新加坡 11--深圳金融 15--美西（硅谷）16--成都 17--德国 18--韩国 19--重庆 21--印度 22--美东（弗吉尼亚）23--泰国 24--俄罗斯 25--日本
        # @type RegionId: Integer
        # @param SetId: 仓库ID
        # @type SetId: Integer
        # @param Status: 实例当前状态，0：待初始化；1：实例在流程中；2：实例运行中；-2：实例已隔离；-3：实例待删除
        # @type Status: Integer
        # @param SubnetId: vpc网络下子网id 如：46315
        # @type SubnetId: Integer
        # @param UniqSubnetId: vpc网络下子网id 如：subnet-fd3j6l35mm0
        # @type UniqSubnetId: String
        # @param UniqVpcId: vpc网络id 如：vpc-fk33jsf43kgv
        # @type UniqVpcId: String
        # @param Vip: 实例vip
        # @type Vip: String
        # @param VpcId: vpc网络id 如：75101
        # @type VpcId: Integer
        # @param Vport: 实例端口号
        # @type Vport: Integer
        # @param ZoneId: 区域ID
        # @type ZoneId: Integer

        attr_accessor :Tags, :AddTimeStamp, :AppId, :AutoRenewFlag, :CmemId, :DeadlineTimeStamp, :Expire, :InstanceDesc, :InstanceId, :InstanceName, :IsolateTimeStamp, :ModTimeStamp, :PayMode, :ProjectId, :RegionId, :SetId, :Status, :SubnetId, :UniqSubnetId, :UniqVpcId, :Vip, :VpcId, :Vport, :ZoneId
        
        def initialize(tags=nil, addtimestamp=nil, appid=nil, autorenewflag=nil, cmemid=nil, deadlinetimestamp=nil, expire=nil, instancedesc=nil, instanceid=nil, instancename=nil, isolatetimestamp=nil, modtimestamp=nil, paymode=nil, projectid=nil, regionid=nil, setid=nil, status=nil, subnetid=nil, uniqsubnetid=nil, uniqvpcid=nil, vip=nil, vpcid=nil, vport=nil, zoneid=nil)
          @Tags = tags
          @AddTimeStamp = addtimestamp
          @AppId = appid
          @AutoRenewFlag = autorenewflag
          @CmemId = cmemid
          @DeadlineTimeStamp = deadlinetimestamp
          @Expire = expire
          @InstanceDesc = instancedesc
          @InstanceId = instanceid
          @InstanceName = instancename
          @IsolateTimeStamp = isolatetimestamp
          @ModTimeStamp = modtimestamp
          @PayMode = paymode
          @ProjectId = projectid
          @RegionId = regionid
          @SetId = setid
          @Status = status
          @SubnetId = subnetid
          @UniqSubnetId = uniqsubnetid
          @UniqVpcId = uniqvpcid
          @Vip = vip
          @VpcId = vpcid
          @Vport = vport
          @ZoneId = zoneid
        end

        def deserialize(params)
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @AddTimeStamp = params['AddTimeStamp']
          @AppId = params['AppId']
          @AutoRenewFlag = params['AutoRenewFlag']
          @CmemId = params['CmemId']
          @DeadlineTimeStamp = params['DeadlineTimeStamp']
          @Expire = params['Expire']
          @InstanceDesc = params['InstanceDesc']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @IsolateTimeStamp = params['IsolateTimeStamp']
          @ModTimeStamp = params['ModTimeStamp']
          @PayMode = params['PayMode']
          @ProjectId = params['ProjectId']
          @RegionId = params['RegionId']
          @SetId = params['SetId']
          @Status = params['Status']
          @SubnetId = params['SubnetId']
          @UniqSubnetId = params['UniqSubnetId']
          @UniqVpcId = params['UniqVpcId']
          @Vip = params['Vip']
          @VpcId = params['VpcId']
          @Vport = params['Vport']
          @ZoneId = params['ZoneId']
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

