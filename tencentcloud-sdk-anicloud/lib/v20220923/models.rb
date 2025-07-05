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
  module Anicloud
    module V20220923
      # CheckAppidExist请求参数结构体
      class CheckAppidExistRequest < TencentCloud::Common::AbstractModel
        # @param SDKAppid: 业务的appid
        # @type SDKAppid: String
        # @param Type: sub product code
        # @type Type: String

        attr_accessor :SDKAppid, :Type

        def initialize(sdkappid=nil, type=nil)
          @SDKAppid = sdkappid
          @Type = type
        end

        def deserialize(params)
          @SDKAppid = params['SDKAppid']
          @Type = params['Type']
        end
      end

      # CheckAppidExist返回参数结构体
      class CheckAppidExistResponse < TencentCloud::Common::AbstractModel
        # @param Exist: appid是否存在
        # @type Exist: Boolean
        # @param HasError: 请求是否成功
        # @type HasError: Boolean
        # @param Msg: 出错消息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Exist, :HasError, :Msg, :RequestId

        def initialize(exist=nil, haserror=nil, msg=nil, requestid=nil)
          @Exist = exist
          @HasError = haserror
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Exist = params['Exist']
          @HasError = params['HasError']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # 购买详情
      class GoodsDetail < TencentCloud::Common::AbstractModel
        # @param ProductCode: 按照四层接入的产品需要传入产品标签,例如:p_cvm
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCode: String
        # @param SubProductCode: 四层定义的子产品标签,例如:sp_cvm_s1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubProductCode: String
        # @param Type: 资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Array
        # @param GoodsNum: 资源数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GoodsNum: Integer

        attr_accessor :ProductCode, :SubProductCode, :Type, :GoodsNum

        def initialize(productcode=nil, subproductcode=nil, type=nil, goodsnum=nil)
          @ProductCode = productcode
          @SubProductCode = subproductcode
          @Type = type
          @GoodsNum = goodsnum
        end

        def deserialize(params)
          @ProductCode = params['ProductCode']
          @SubProductCode = params['SubProductCode']
          @Type = params['Type']
          @GoodsNum = params['GoodsNum']
        end
      end

      # QueryResourceInfo请求参数结构体
      class QueryResourceInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # QueryResourceInfo返回参数结构体
      class QueryResourceInfoResponse < TencentCloud::Common::AbstractModel
        # @param Resource: 资源信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: :class:`Tencentcloud::Anicloud.v20220923.models.Resource`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Resource, :RequestId

        def initialize(resource=nil, requestid=nil)
          @Resource = resource
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Resource'].nil?
            @Resource = Resource.new
            @Resource.deserialize(params['Resource'])
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryResource请求参数结构体
      class QueryResourceRequest < TencentCloud::Common::AbstractModel
        # @param Type: 0: sdk 1:material
        # @type Type: Integer
        # @param PageNumber: 分页起始页
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer

        attr_accessor :Type, :PageNumber, :PageSize

        def initialize(type=nil, pagenumber=nil, pagesize=nil)
          @Type = type
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @Type = params['Type']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # QueryResource返回参数结构体
      class QueryResourceResponse < TencentCloud::Common::AbstractModel
        # @param Resources: 资源信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resources: Array
        # @param Total: 总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Resources, :Total, :RequestId

        def initialize(resources=nil, total=nil, requestid=nil)
          @Resources = resources
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              resource_tmp = Resource.new
              resource_tmp.deserialize(i)
              @Resources << resource_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # 资源信息
      class Resource < TencentCloud::Common::AbstractModel
        # @param UIN: 资源拥有者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UIN: String
        # @param AppId: 云平台应用ID，一般来说与uin存在一一对应的关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param ResourceId: 资源id，会展示到通知内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param ZoneId: 区域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param Status: 资源状态，1正常，2隔离，3销毁(如果资源已经删除或销毁，不需要返回)，4冻结/封禁
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param IsolatedTimestamp: 资源隔离时间，未隔离传"0000-00-00 00:00:00"，资源由隔离变回正常传"0000-00-00 00:00:00"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolatedTimestamp: String
        # @param CreateTime: 资源创建时间，用于更新新购订单的资源开始时间，按时长退费时的资源结束时间取自订单的资源结束时间，
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param PayMode: 0后付费 1预付费 2预留实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: Integer
        # @param Alias: 资源名称，账单中资源别名，生命周期通知中的资源名称，不返回则通知中展示为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param GoodsDetail: 购买详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GoodsDetail: :class:`Tencentcloud::Anicloud.v20220923.models.GoodsDetail`
        # @param RenewFlag: 预付费必填 ，自动续费标记，0表示默认状态(用户未设置，即初始状态即手动续费，用户开通了预付费不停服特权也会进行自动续费)， 1表示自动续费，2表示明确不自动续费(用户设置)，若业务无续费概念或无需自动续费，需要设置为0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param ExpireTime: （仅预付费）资源到期时间，无到期概念传"0000-00-00 00:00:00"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param Region: 地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: Integer
        # @param SdkAppId: sdk appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SdkAppId: String
        # @param AppName: app名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppName: String
        # @param PackageName: app的package名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageName: String
        # @param URL: 资源链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type URL: String
        # @param Entry: app的entry
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Entry: String
        # @param InstType: 0：sdk 1：素材
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstType: Integer
        # @param Key: license的秘钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String

        attr_accessor :UIN, :AppId, :ResourceId, :ZoneId, :Status, :IsolatedTimestamp, :CreateTime, :PayMode, :Alias, :GoodsDetail, :RenewFlag, :ExpireTime, :Region, :SdkAppId, :AppName, :PackageName, :URL, :Entry, :InstType, :Key

        def initialize(uin=nil, appid=nil, resourceid=nil, zoneid=nil, status=nil, isolatedtimestamp=nil, createtime=nil, paymode=nil, _alias=nil, goodsdetail=nil, renewflag=nil, expiretime=nil, region=nil, sdkappid=nil, appname=nil, packagename=nil, url=nil, entry=nil, insttype=nil, key=nil)
          @UIN = uin
          @AppId = appid
          @ResourceId = resourceid
          @ZoneId = zoneid
          @Status = status
          @IsolatedTimestamp = isolatedtimestamp
          @CreateTime = createtime
          @PayMode = paymode
          @Alias = _alias
          @GoodsDetail = goodsdetail
          @RenewFlag = renewflag
          @ExpireTime = expiretime
          @Region = region
          @SdkAppId = sdkappid
          @AppName = appname
          @PackageName = packagename
          @URL = url
          @Entry = entry
          @InstType = insttype
          @Key = key
        end

        def deserialize(params)
          @UIN = params['UIN']
          @AppId = params['AppId']
          @ResourceId = params['ResourceId']
          @ZoneId = params['ZoneId']
          @Status = params['Status']
          @IsolatedTimestamp = params['IsolatedTimestamp']
          @CreateTime = params['CreateTime']
          @PayMode = params['PayMode']
          @Alias = params['Alias']
          unless params['GoodsDetail'].nil?
            @GoodsDetail = GoodsDetail.new
            @GoodsDetail.deserialize(params['GoodsDetail'])
          end
          @RenewFlag = params['RenewFlag']
          @ExpireTime = params['ExpireTime']
          @Region = params['Region']
          @SdkAppId = params['SdkAppId']
          @AppName = params['AppName']
          @PackageName = params['PackageName']
          @URL = params['URL']
          @Entry = params['Entry']
          @InstType = params['InstType']
          @Key = params['Key']
        end
      end

    end
  end
end

