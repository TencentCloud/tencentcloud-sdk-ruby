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
  module Bi
    module V20220105
      # ApplyEmbedInterval请求参数结构体
      class ApplyEmbedIntervalRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 分享项目id，必选
        # @type ProjectId: Integer
        # @param PageId: 分享页面id，嵌出看板时此为空值0
        # @type PageId: Integer
        # @param BIToken: 需要申请延期的Token
        # @type BIToken: String
        # @param ExtraParam: 备用字段
        # @type ExtraParam: String
        # @param Scope: panel,看板；page，页面
        # @type Scope: String

        attr_accessor :ProjectId, :PageId, :BIToken, :ExtraParam, :Scope

        def initialize(projectid=nil, pageid=nil, bitoken=nil, extraparam=nil, scope=nil)
          @ProjectId = projectid
          @PageId = pageid
          @BIToken = bitoken
          @ExtraParam = extraparam
          @Scope = scope
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageId = params['PageId']
          @BIToken = params['BIToken']
          @ExtraParam = params['ExtraParam']
          @Scope = params['Scope']
        end
      end

      # ApplyEmbedInterval返回参数结构体
      class ApplyEmbedIntervalResponse < TencentCloud::Common::AbstractModel
        # @param Extra: 额外参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 结果数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.ApplyEmbedTokenInfo`
        # @param Msg: 结果描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Extra, :Data, :Msg, :RequestId

        def initialize(extra=nil, data=nil, msg=nil, requestid=nil)
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = ApplyEmbedTokenInfo.new
            @Data.deserialize(params['Data'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # 申请Token延期
      class ApplyEmbedTokenInfo < TencentCloud::Common::AbstractModel
        # @param Result: 申请结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean

        attr_accessor :Result

        def initialize(result=nil)
          @Result = result
        end

        def deserialize(params)
          @Result = params['Result']
        end
      end

      # CreateEmbedToken请求参数结构体
      class CreateEmbedTokenRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 分享项目id
        # @type ProjectId: Integer
        # @param PageId: 分享页面id，嵌出看板时此为空值0
        # @type PageId: Integer
        # @param Scope: page表示嵌出页面，panel表嵌出整个看板
        # @type Scope: String
        # @param ExpireTime: 过期时间。 单位：分钟 最大值：240。即，4小时 默认值：240
        # @type ExpireTime: String
        # @param ExtraParam: 备用字段
        # @type ExtraParam: String
        # @param UserCorpId: 使用者企业Id(仅用于多用户)
        # @type UserCorpId: String
        # @param UserId: 使用者Id(仅用于多用户)
        # @type UserId: String

        attr_accessor :ProjectId, :PageId, :Scope, :ExpireTime, :ExtraParam, :UserCorpId, :UserId

        def initialize(projectid=nil, pageid=nil, scope=nil, expiretime=nil, extraparam=nil, usercorpid=nil, userid=nil)
          @ProjectId = projectid
          @PageId = pageid
          @Scope = scope
          @ExpireTime = expiretime
          @ExtraParam = extraparam
          @UserCorpId = usercorpid
          @UserId = userid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageId = params['PageId']
          @Scope = params['Scope']
          @ExpireTime = params['ExpireTime']
          @ExtraParam = params['ExtraParam']
          @UserCorpId = params['UserCorpId']
          @UserId = params['UserId']
        end
      end

      # CreateEmbedToken返回参数结构体
      class CreateEmbedTokenResponse < TencentCloud::Common::AbstractModel
        # @param Extra: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.EmbedTokenInfo`
        # @param Msg: 结果描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Extra, :Data, :Msg, :RequestId

        def initialize(extra=nil, data=nil, msg=nil, requestid=nil)
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = EmbedTokenInfo.new
            @Data.deserialize(params['Data'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # 报表嵌出数据结构-强鉴权
      class EmbedTokenInfo < TencentCloud::Common::AbstractModel
        # @param Id: 信息标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param BIToken: 令牌
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BIToken: String
        # @param ProjectId: 项目Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param CreatedUser: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedUser: String
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedUser: 更新人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedUser: String
        # @param UpdatedAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param PageId: 页面Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageId: String
        # @param ExtraParam: 备用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraParam: String
        # @param Scope: 嵌出类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scope: String
        # @param ExpireTime: 过期时间，分钟为单位，最大240
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: Integer
        # @param UserCorpId: 使用者企业Id(仅用于多用户)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserCorpId: String
        # @param UserId: 使用者Id(仅用于多用户)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String

        attr_accessor :Id, :BIToken, :ProjectId, :CreatedUser, :CreatedAt, :UpdatedUser, :UpdatedAt, :PageId, :ExtraParam, :Scope, :ExpireTime, :UserCorpId, :UserId

        def initialize(id=nil, bitoken=nil, projectid=nil, createduser=nil, createdat=nil, updateduser=nil, updatedat=nil, pageid=nil, extraparam=nil, scope=nil, expiretime=nil, usercorpid=nil, userid=nil)
          @Id = id
          @BIToken = bitoken
          @ProjectId = projectid
          @CreatedUser = createduser
          @CreatedAt = createdat
          @UpdatedUser = updateduser
          @UpdatedAt = updatedat
          @PageId = pageid
          @ExtraParam = extraparam
          @Scope = scope
          @ExpireTime = expiretime
          @UserCorpId = usercorpid
          @UserId = userid
        end

        def deserialize(params)
          @Id = params['Id']
          @BIToken = params['BIToken']
          @ProjectId = params['ProjectId']
          @CreatedUser = params['CreatedUser']
          @CreatedAt = params['CreatedAt']
          @UpdatedUser = params['UpdatedUser']
          @UpdatedAt = params['UpdatedAt']
          @PageId = params['PageId']
          @ExtraParam = params['ExtraParam']
          @Scope = params['Scope']
          @ExpireTime = params['ExpireTime']
          @UserCorpId = params['UserCorpId']
          @UserId = params['UserId']
        end
      end

    end
  end
end

