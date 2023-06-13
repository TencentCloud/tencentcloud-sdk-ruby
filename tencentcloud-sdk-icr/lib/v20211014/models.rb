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
  module Icr
    module V20211014
      # 获取成员列表入参payload
      class GetIndustryV1HomeMembersReqPayload < TencentCloud::Common::AbstractModel
        # @param ID: 用户ID
        # @type ID: String

        attr_accessor :ID

        def initialize(id=nil)
          @ID = id
        end

        def deserialize(params)
          @ID = params['ID']
        end
      end

      # GetIndustryV1HomeMembers请求参数结构体
      class GetIndustryV1HomeMembersRequest < TencentCloud::Common::AbstractModel
        # @param Payload: 无
        # @type Payload: :class:`Tencentcloud::Icr.v20211014.models.GetIndustryV1HomeMembersReqPayload`
        # @param Metadata: 无
        # @type Metadata: :class:`Tencentcloud::Icr.v20211014.models.ReqMetadata`

        attr_accessor :Payload, :Metadata

        def initialize(payload=nil, metadata=nil)
          @Payload = payload
          @Metadata = metadata
        end

        def deserialize(params)
          unless params['Payload'].nil?
            @Payload = GetIndustryV1HomeMembersReqPayload.new
            @Payload.deserialize(params['Payload'])
          end
          unless params['Metadata'].nil?
            @Metadata = ReqMetadata.new
            @Metadata.deserialize(params['Metadata'])
          end
        end
      end

      # 获取成员列表回包DataList
      class GetIndustryV1HomeMembersRespData < TencentCloud::Common::AbstractModel
        # @param EditTime: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EditTime: Integer
        # @param FeatureList: 功能列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeatureList: :class:`Tencentcloud::Icr.v20211014.models.GetIndustryV1HomeMembersRespFeature`
        # @param ID: 用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: String
        # @param IndustryType: 用户行业分类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndustryType: String
        # @param MemberNum: 子用户数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberNum: Integer
        # @param ProductList: 机器人列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductList: :class:`Tencentcloud::Icr.v20211014.models.GetIndustryV1HomeMembersRespProduct`
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param Status: 是否有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param TypeList: 功能列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeList: :class:`Tencentcloud::Icr.v20211014.models.GetIndustryV1HomeMembersRespType`
        # @param UserAccount: 用户账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserAccount: String

        attr_accessor :EditTime, :FeatureList, :ID, :IndustryType, :MemberNum, :ProductList, :Remark, :Status, :TypeList, :UserAccount

        def initialize(edittime=nil, featurelist=nil, id=nil, industrytype=nil, membernum=nil, productlist=nil, remark=nil, status=nil, typelist=nil, useraccount=nil)
          @EditTime = edittime
          @FeatureList = featurelist
          @ID = id
          @IndustryType = industrytype
          @MemberNum = membernum
          @ProductList = productlist
          @Remark = remark
          @Status = status
          @TypeList = typelist
          @UserAccount = useraccount
        end

        def deserialize(params)
          @EditTime = params['EditTime']
          unless params['FeatureList'].nil?
            @FeatureList = GetIndustryV1HomeMembersRespFeature.new
            @FeatureList.deserialize(params['FeatureList'])
          end
          @ID = params['ID']
          @IndustryType = params['IndustryType']
          @MemberNum = params['MemberNum']
          unless params['ProductList'].nil?
            @ProductList = GetIndustryV1HomeMembersRespProduct.new
            @ProductList.deserialize(params['ProductList'])
          end
          @Remark = params['Remark']
          @Status = params['Status']
          unless params['TypeList'].nil?
            @TypeList = GetIndustryV1HomeMembersRespType.new
            @TypeList.deserialize(params['TypeList'])
          end
          @UserAccount = params['UserAccount']
        end
      end

      # 获取成员列表接口回包Feature
      class GetIndustryV1HomeMembersRespFeature < TencentCloud::Common::AbstractModel
        # @param FeatureName: 功能名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeatureName: String
        # @param ID: 功能ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: String

        attr_accessor :FeatureName, :ID

        def initialize(featurename=nil, id=nil)
          @FeatureName = featurename
          @ID = id
        end

        def deserialize(params)
          @FeatureName = params['FeatureName']
          @ID = params['ID']
        end
      end

      # 获取成员列表回包Industry
      class GetIndustryV1HomeMembersRespIndustry < TencentCloud::Common::AbstractModel
        # @param ID: 行业ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: String
        # @param IndustryName: 行业名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndustryName: String

        attr_accessor :ID, :IndustryName

        def initialize(id=nil, industryname=nil)
          @ID = id
          @IndustryName = industryname
        end

        def deserialize(params)
          @ID = params['ID']
          @IndustryName = params['IndustryName']
        end
      end

      # 获取成员列表回包Payload
      class GetIndustryV1HomeMembersRespPayload < TencentCloud::Common::AbstractModel
        # @param AccountLevel: 用户级别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountLevel: String
        # @param DataList: 用户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataList: Array
        # @param Limit: 每页数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，从0开始
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Offset: Integer
        # @param Total: 用户总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer

        attr_accessor :AccountLevel, :DataList, :Limit, :Offset, :Total

        def initialize(accountlevel=nil, datalist=nil, limit=nil, offset=nil, total=nil)
          @AccountLevel = accountlevel
          @DataList = datalist
          @Limit = limit
          @Offset = offset
          @Total = total
        end

        def deserialize(params)
          @AccountLevel = params['AccountLevel']
          unless params['DataList'].nil?
            @DataList = []
            params['DataList'].each do |i|
              getindustryv1homemembersrespdata_tmp = GetIndustryV1HomeMembersRespData.new
              getindustryv1homemembersrespdata_tmp.deserialize(i)
              @DataList << getindustryv1homemembersrespdata_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Total = params['Total']
        end
      end

      # 获取成员列表接口回包ProductList
      class GetIndustryV1HomeMembersRespProduct < TencentCloud::Common::AbstractModel
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param EditTime: 编辑时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EditTime: String
        # @param AppKey: 机器人ID（AppKey信息）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppKey: String
        # @param Image: 机器人图标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Image: String
        # @param Industry: 行业信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Industry: Array
        # @param OperatorList: 操作员列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorList: String
        # @param ProductName: 机器人名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param TemplateList: 模板列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateList: String

        attr_accessor :CreateTime, :EditTime, :AppKey, :Image, :Industry, :OperatorList, :ProductName, :Remark, :TemplateList

        def initialize(createtime=nil, edittime=nil, appkey=nil, image=nil, industry=nil, operatorlist=nil, productname=nil, remark=nil, templatelist=nil)
          @CreateTime = createtime
          @EditTime = edittime
          @AppKey = appkey
          @Image = image
          @Industry = industry
          @OperatorList = operatorlist
          @ProductName = productname
          @Remark = remark
          @TemplateList = templatelist
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @EditTime = params['EditTime']
          @AppKey = params['AppKey']
          @Image = params['Image']
          unless params['Industry'].nil?
            @Industry = []
            params['Industry'].each do |i|
              getindustryv1homemembersrespindustry_tmp = GetIndustryV1HomeMembersRespIndustry.new
              getindustryv1homemembersrespindustry_tmp.deserialize(i)
              @Industry << getindustryv1homemembersrespindustry_tmp
            end
          end
          @OperatorList = params['OperatorList']
          @ProductName = params['ProductName']
          @Remark = params['Remark']
          @TemplateList = params['TemplateList']
        end
      end

      # 获取成员列表接口回包TypeList
      class GetIndustryV1HomeMembersRespType < TencentCloud::Common::AbstractModel
        # @param Type: 类型ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param TypeName: 类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeName: String

        attr_accessor :Type, :TypeName

        def initialize(type=nil, typename=nil)
          @Type = type
          @TypeName = typename
        end

        def deserialize(params)
          @Type = params['Type']
          @TypeName = params['TypeName']
        end
      end

      # GetIndustryV1HomeMembers返回参数结构体
      class GetIndustryV1HomeMembersResponse < TencentCloud::Common::AbstractModel
        # @param Metadata: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metadata: :class:`Tencentcloud::Icr.v20211014.models.RspMetadata`
        # @param Payload: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Payload: :class:`Tencentcloud::Icr.v20211014.models.GetIndustryV1HomeMembersRespPayload`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Metadata, :Payload, :RequestId

        def initialize(metadata=nil, payload=nil, requestid=nil)
          @Metadata = metadata
          @Payload = payload
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Metadata'].nil?
            @Metadata = RspMetadata.new
            @Metadata.deserialize(params['Metadata'])
          end
          unless params['Payload'].nil?
            @Payload = GetIndustryV1HomeMembersRespPayload.new
            @Payload.deserialize(params['Payload'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 请求的Metadata
      class ReqMetadata < TencentCloud::Common::AbstractModel
        # @param ChannelID: 渠道
        # @type ChannelID: String
        # @param BusinessName: 无
        # @type BusinessName: String
        # @param GUID: 无
        # @type GUID: String
        # @param AppKey: 无
        # @type AppKey: String
        # @param LBS: 位置定位服务
        # @type LBS: :class:`Tencentcloud::Icr.v20211014.models.ReqMetadataLBS`
        # @param Vagrants: 透传字段
        # @type Vagrants: Array

        attr_accessor :ChannelID, :BusinessName, :GUID, :AppKey, :LBS, :Vagrants

        def initialize(channelid=nil, businessname=nil, guid=nil, appkey=nil, lbs=nil, vagrants=nil)
          @ChannelID = channelid
          @BusinessName = businessname
          @GUID = guid
          @AppKey = appkey
          @LBS = lbs
          @Vagrants = vagrants
        end

        def deserialize(params)
          @ChannelID = params['ChannelID']
          @BusinessName = params['BusinessName']
          @GUID = params['GUID']
          @AppKey = params['AppKey']
          unless params['LBS'].nil?
            @LBS = ReqMetadataLBS.new
            @LBS.deserialize(params['LBS'])
          end
          unless params['Vagrants'].nil?
            @Vagrants = []
            params['Vagrants'].each do |i|
              reqmetadatavagrant_tmp = ReqMetadataVagrant.new
              reqmetadatavagrant_tmp.deserialize(i)
              @Vagrants << reqmetadatavagrant_tmp
            end
          end
        end
      end

      # 请求参数的lbs
      class ReqMetadataLBS < TencentCloud::Common::AbstractModel
        # @param Latitude: 纬度
        # @type Latitude: Float
        # @param Longitude: 经度
        # @type Longitude: Float

        attr_accessor :Latitude, :Longitude

        def initialize(latitude=nil, longitude=nil)
          @Latitude = latitude
          @Longitude = longitude
        end

        def deserialize(params)
          @Latitude = params['Latitude']
          @Longitude = params['Longitude']
        end
      end

      # 请求参数Vagrant
      class ReqMetadataVagrant < TencentCloud::Common::AbstractModel
        # @param Key: 无
        # @type Key: String
        # @param Value: 无
        # @type Value: String

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # 回包的meta data
      class RspMetadata < TencentCloud::Common::AbstractModel
        # @param Code: 无
        # @type Code: Integer
        # @param Message: 无
        # @type Message: String
        # @param SessionID: 无
        # @type SessionID: String
        # @param SessionDelta: 无
        # @type SessionDelta: String

        attr_accessor :Code, :Message, :SessionID, :SessionDelta

        def initialize(code=nil, message=nil, sessionid=nil, sessiondelta=nil)
          @Code = code
          @Message = message
          @SessionID = sessionid
          @SessionDelta = sessiondelta
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          @SessionID = params['SessionID']
          @SessionDelta = params['SessionDelta']
        end
      end

    end
  end
end

