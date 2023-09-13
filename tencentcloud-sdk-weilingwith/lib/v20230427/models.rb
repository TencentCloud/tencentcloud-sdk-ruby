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
  module Weilingwith
    module V20230427
      # DescribeApplicationList请求参数结构体
      class DescribeApplicationListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeApplicationList返回参数结构体
      class DescribeApplicationListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeEdgeApplicationToken请求参数结构体
      class DescribeEdgeApplicationTokenRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeEdgeApplicationToken返回参数结构体
      class DescribeEdgeApplicationTokenResponse < TencentCloud::Common::AbstractModel
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

      # DescribeInterfaceList请求参数结构体
      class DescribeInterfaceListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeInterfaceList返回参数结构体
      class DescribeInterfaceListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeWorkspaceList请求参数结构体
      class DescribeWorkspaceListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWorkspaceList返回参数结构体
      class DescribeWorkspaceListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeWorkspaceUserList请求参数结构体
      class DescribeWorkspaceUserListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 翻页页码
        # @type Offset: Integer
        # @param Limit: 翻页大小
        # @type Limit: Integer
        # @param WorkspaceId: 工作空间ID
        # @type WorkspaceId: String
        # @param ApplicationToken: token
        # @type ApplicationToken: String
        # @param TenantId: 租户ID
        # @type TenantId: String
        # @param UpdateAt: 更新时间戳，单位秒
        # @type UpdateAt: Integer

        attr_accessor :Offset, :Limit, :WorkspaceId, :ApplicationToken, :TenantId, :UpdateAt

        def initialize(offset=nil, limit=nil, workspaceid=nil, applicationtoken=nil, tenantid=nil, updateat=nil)
          @Offset = offset
          @Limit = limit
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @TenantId = tenantid
          @UpdateAt = updateat
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          @TenantId = params['TenantId']
          @UpdateAt = params['UpdateAt']
        end
      end

      # DescribeWorkspaceUserList返回参数结构体
      class DescribeWorkspaceUserListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回数据
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.SsoTeamUserResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = SsoTeamUserResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 部门用户
      class SsoTeamUser < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param RealName: 用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealName: String
        # @param UserType: 用户类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserType: String
        # @param TenantId: 所属租户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TenantId: String
        # @param Email: 邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param Phone: 电话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phone: String
        # @param Status: 用户状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateAt: Integer
        # @param DepartmentId: 部门ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DepartmentId: String
        # @param DepartmentName: 部门名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DepartmentName: String
        # @param LinkFilter: 是否关联权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LinkFilter: Integer

        attr_accessor :UserId, :RealName, :UserType, :TenantId, :Email, :Phone, :Status, :CreateAt, :DepartmentId, :DepartmentName, :LinkFilter

        def initialize(userid=nil, realname=nil, usertype=nil, tenantid=nil, email=nil, phone=nil, status=nil, createat=nil, departmentid=nil, departmentname=nil, linkfilter=nil)
          @UserId = userid
          @RealName = realname
          @UserType = usertype
          @TenantId = tenantid
          @Email = email
          @Phone = phone
          @Status = status
          @CreateAt = createat
          @DepartmentId = departmentid
          @DepartmentName = departmentname
          @LinkFilter = linkfilter
        end

        def deserialize(params)
          @UserId = params['UserId']
          @RealName = params['RealName']
          @UserType = params['UserType']
          @TenantId = params['TenantId']
          @Email = params['Email']
          @Phone = params['Phone']
          @Status = params['Status']
          @CreateAt = params['CreateAt']
          @DepartmentId = params['DepartmentId']
          @DepartmentName = params['DepartmentName']
          @LinkFilter = params['LinkFilter']
        end
      end

      # 空间用户结果
      class SsoTeamUserResult < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Users: 部门用户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Users: Array

        attr_accessor :Total, :Users

        def initialize(total=nil, users=nil)
          @Total = total
          @Users = users
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              ssoteamuser_tmp = SsoTeamUser.new
              ssoteamuser_tmp.deserialize(i)
              @Users << ssoteamuser_tmp
            end
          end
        end
      end

    end
  end
end

