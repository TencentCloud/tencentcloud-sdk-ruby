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
  module Organization
    module V20181225
      # AcceptOrganizationInvitation请求参数结构体
      class AcceptOrganizationInvitationRequest < TencentCloud::Common::AbstractModel
        # @param Id: 邀请ID
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # AcceptOrganizationInvitation返回参数结构体
      class AcceptOrganizationInvitationResponse < TencentCloud::Common::AbstractModel
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

      # AddOrganizationNode请求参数结构体
      class AddOrganizationNodeRequest < TencentCloud::Common::AbstractModel
        # @param ParentNodeId: 父组织单元ID
        # @type ParentNodeId: Integer
        # @param Name: 组织单元名字
        # @type Name: String

        attr_accessor :ParentNodeId, :Name
        
        def initialize(parentnodeid=nil, name=nil)
          @ParentNodeId = parentnodeid
          @Name = name
        end

        def deserialize(params)
          @ParentNodeId = params['ParentNodeId']
          @Name = params['Name']
        end
      end

      # AddOrganizationNode返回参数结构体
      class AddOrganizationNodeResponse < TencentCloud::Common::AbstractModel
        # @param NodeId: 组织单元ID
        # @type NodeId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NodeId, :RequestId
        
        def initialize(nodeid=nil, requestid=nil)
          @NodeId = nodeid
          @RequestId = requestid
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @RequestId = params['RequestId']
        end
      end

      # CancelOrganizationInvitation请求参数结构体
      class CancelOrganizationInvitationRequest < TencentCloud::Common::AbstractModel
        # @param Id: 邀请ID
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # CancelOrganizationInvitation返回参数结构体
      class CancelOrganizationInvitationResponse < TencentCloud::Common::AbstractModel
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

      # CreateOrganization请求参数结构体
      class CreateOrganizationRequest < TencentCloud::Common::AbstractModel
        # @param OrgType: 组织类型（目前固定为1）
        # @type OrgType: Integer

        attr_accessor :OrgType
        
        def initialize(orgtype=nil)
          @OrgType = orgtype
        end

        def deserialize(params)
          @OrgType = params['OrgType']
        end
      end

      # CreateOrganization返回参数结构体
      class CreateOrganizationResponse < TencentCloud::Common::AbstractModel
        # @param OrgId: 企业组织ID
        # @type OrgId: Integer
        # @param Nickname: 创建者昵称
        # @type Nickname: String
        # @param Mail: 创建者邮箱
        # @type Mail: String
        # @param OrgType: 组织类型
        # @type OrgType: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrgId, :Nickname, :Mail, :OrgType, :RequestId
        
        def initialize(orgid=nil, nickname=nil, mail=nil, orgtype=nil, requestid=nil)
          @OrgId = orgid
          @Nickname = nickname
          @Mail = mail
          @OrgType = orgtype
          @RequestId = requestid
        end

        def deserialize(params)
          @OrgId = params['OrgId']
          @Nickname = params['Nickname']
          @Mail = params['Mail']
          @OrgType = params['OrgType']
          @RequestId = params['RequestId']
        end
      end

      # DeleteOrganizationMemberFromNode请求参数结构体
      class DeleteOrganizationMemberFromNodeRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 被删除成员UIN
        # @type MemberUin: Integer
        # @param NodeId: 组织单元ID
        # @type NodeId: Integer

        attr_accessor :MemberUin, :NodeId
        
        def initialize(memberuin=nil, nodeid=nil)
          @MemberUin = memberuin
          @NodeId = nodeid
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @NodeId = params['NodeId']
        end
      end

      # DeleteOrganizationMemberFromNode返回参数结构体
      class DeleteOrganizationMemberFromNodeResponse < TencentCloud::Common::AbstractModel
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

      # DeleteOrganizationMembers请求参数结构体
      class DeleteOrganizationMembersRequest < TencentCloud::Common::AbstractModel
        # @param Uins: 被删除成员的UIN列表
        # @type Uins: Array

        attr_accessor :Uins
        
        def initialize(uins=nil)
          @Uins = uins
        end

        def deserialize(params)
          @Uins = params['Uins']
        end
      end

      # DeleteOrganizationMembers返回参数结构体
      class DeleteOrganizationMembersResponse < TencentCloud::Common::AbstractModel
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

      # DeleteOrganizationNodes请求参数结构体
      class DeleteOrganizationNodesRequest < TencentCloud::Common::AbstractModel
        # @param NodeIds: 组织单元ID列表
        # @type NodeIds: Array

        attr_accessor :NodeIds
        
        def initialize(nodeids=nil)
          @NodeIds = nodeids
        end

        def deserialize(params)
          @NodeIds = params['NodeIds']
        end
      end

      # DeleteOrganizationNodes返回参数结构体
      class DeleteOrganizationNodesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteOrganization请求参数结构体
      class DeleteOrganizationRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DeleteOrganization返回参数结构体
      class DeleteOrganizationResponse < TencentCloud::Common::AbstractModel
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

      # DenyOrganizationInvitation请求参数结构体
      class DenyOrganizationInvitationRequest < TencentCloud::Common::AbstractModel
        # @param Id: 邀请ID
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DenyOrganizationInvitation返回参数结构体
      class DenyOrganizationInvitationResponse < TencentCloud::Common::AbstractModel
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

      # GetOrganizationMember请求参数结构体
      class GetOrganizationMemberRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 组织成员UIN
        # @type MemberUin: Integer

        attr_accessor :MemberUin
        
        def initialize(memberuin=nil)
          @MemberUin = memberuin
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
        end
      end

      # GetOrganizationMember返回参数结构体
      class GetOrganizationMemberResponse < TencentCloud::Common::AbstractModel
        # @param Uin: 组织成员UIN
        # @type Uin: Integer
        # @param Name: 组织成员名称
        # @type Name: String
        # @param Remark: 备注
        # @type Remark: String
        # @param JoinTime: 加入时间
        # @type JoinTime: String
        # @param NodeId: 组织单元ID
        # @type NodeId: Integer
        # @param NodeName: 组织单元名称
        # @type NodeName: String
        # @param ParentNodeId: 父组织单元ID
        # @type ParentNodeId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Uin, :Name, :Remark, :JoinTime, :NodeId, :NodeName, :ParentNodeId, :RequestId
        
        def initialize(uin=nil, name=nil, remark=nil, jointime=nil, nodeid=nil, nodename=nil, parentnodeid=nil, requestid=nil)
          @Uin = uin
          @Name = name
          @Remark = remark
          @JoinTime = jointime
          @NodeId = nodeid
          @NodeName = nodename
          @ParentNodeId = parentnodeid
          @RequestId = requestid
        end

        def deserialize(params)
          @Uin = params['Uin']
          @Name = params['Name']
          @Remark = params['Remark']
          @JoinTime = params['JoinTime']
          @NodeId = params['NodeId']
          @NodeName = params['NodeName']
          @ParentNodeId = params['ParentNodeId']
          @RequestId = params['RequestId']
        end
      end

      # GetOrganization请求参数结构体
      class GetOrganizationRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetOrganization返回参数结构体
      class GetOrganizationResponse < TencentCloud::Common::AbstractModel
        # @param OrgId: 企业组织ID
        # @type OrgId: Integer
        # @param HostUin: 创建者UIN
        # @type HostUin: Integer
        # @param Nickname: 创建者昵称
        # @type Nickname: String
        # @param Mail: 创建者邮箱
        # @type Mail: String
        # @param OrgType: 企业组织类型
        # @type OrgType: Integer
        # @param IsEmpty: 是否为空
        # @type IsEmpty: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrgId, :HostUin, :Nickname, :Mail, :OrgType, :IsEmpty, :RequestId
        
        def initialize(orgid=nil, hostuin=nil, nickname=nil, mail=nil, orgtype=nil, isempty=nil, requestid=nil)
          @OrgId = orgid
          @HostUin = hostuin
          @Nickname = nickname
          @Mail = mail
          @OrgType = orgtype
          @IsEmpty = isempty
          @RequestId = requestid
        end

        def deserialize(params)
          @OrgId = params['OrgId']
          @HostUin = params['HostUin']
          @Nickname = params['Nickname']
          @Mail = params['Mail']
          @OrgType = params['OrgType']
          @IsEmpty = params['IsEmpty']
          @RequestId = params['RequestId']
        end
      end

      # ListOrganizationInvitations请求参数结构体
      class ListOrganizationInvitationsRequest < TencentCloud::Common::AbstractModel
        # @param Invited: 是否被邀请。1：被邀请，0：发出的邀请
        # @type Invited: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer

        attr_accessor :Invited, :Offset, :Limit
        
        def initialize(invited=nil, offset=nil, limit=nil)
          @Invited = invited
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Invited = params['Invited']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # ListOrganizationInvitations返回参数结构体
      class ListOrganizationInvitationsResponse < TencentCloud::Common::AbstractModel
        # @param Invitations: 邀请信息列表
        # @type Invitations: Array
        # @param TotalCount: 总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Invitations, :TotalCount, :RequestId
        
        def initialize(invitations=nil, totalcount=nil, requestid=nil)
          @Invitations = invitations
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Invitations'].nil?
            @Invitations = []
            params['Invitations'].each do |i|
              orginvitation_tmp = OrgInvitation.new
              orginvitation_tmp.deserialize(i)
              @Invitations << orginvitation_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListOrganizationMembers请求参数结构体
      class ListOrganizationMembersRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer

        attr_accessor :Offset, :Limit
        
        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # ListOrganizationMembers返回参数结构体
      class ListOrganizationMembersResponse < TencentCloud::Common::AbstractModel
        # @param Members: 成员列表
        # @type Members: Array
        # @param TotalCount: 总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Members, :TotalCount, :RequestId
        
        def initialize(members=nil, totalcount=nil, requestid=nil)
          @Members = members
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Members'].nil?
            @Members = []
            params['Members'].each do |i|
              orgmember_tmp = OrgMember.new
              orgmember_tmp.deserialize(i)
              @Members << orgmember_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListOrganizationNodeMembers请求参数结构体
      class ListOrganizationNodeMembersRequest < TencentCloud::Common::AbstractModel
        # @param NodeId: 企业组织单元ID
        # @type NodeId: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer

        attr_accessor :NodeId, :Offset, :Limit
        
        def initialize(nodeid=nil, offset=nil, limit=nil)
          @NodeId = nodeid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # ListOrganizationNodeMembers返回参数结构体
      class ListOrganizationNodeMembersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数目
        # @type TotalCount: Integer
        # @param Members: 成员列表
        # @type Members: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Members, :RequestId
        
        def initialize(totalcount=nil, members=nil, requestid=nil)
          @TotalCount = totalcount
          @Members = members
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Members'].nil?
            @Members = []
            params['Members'].each do |i|
              orgmember_tmp = OrgMember.new
              orgmember_tmp.deserialize(i)
              @Members << orgmember_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListOrganizationNodes请求参数结构体
      class ListOrganizationNodesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListOrganizationNodes返回参数结构体
      class ListOrganizationNodesResponse < TencentCloud::Common::AbstractModel
        # @param Nodes: 企业组织单元列表
        # @type Nodes: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Nodes, :RequestId
        
        def initialize(nodes=nil, requestid=nil)
          @Nodes = nodes
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Nodes'].nil?
            @Nodes = []
            params['Nodes'].each do |i|
              orgnode_tmp = OrgNode.new
              orgnode_tmp.deserialize(i)
              @Nodes << orgnode_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # MoveOrganizationMembersToNode请求参数结构体
      class MoveOrganizationMembersToNodeRequest < TencentCloud::Common::AbstractModel
        # @param NodeId: 组织单元ID
        # @type NodeId: Integer
        # @param Uins: 成员UIN列表
        # @type Uins: Array

        attr_accessor :NodeId, :Uins
        
        def initialize(nodeid=nil, uins=nil)
          @NodeId = nodeid
          @Uins = uins
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @Uins = params['Uins']
        end
      end

      # MoveOrganizationMembersToNode返回参数结构体
      class MoveOrganizationMembersToNodeResponse < TencentCloud::Common::AbstractModel
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

      # 企业组织邀请
      class OrgInvitation < TencentCloud::Common::AbstractModel
        # @param Id: 邀请ID
        # @type Id: Integer
        # @param Uin: 被邀请UIN
        # @type Uin: Integer
        # @param HostUin: 创建者UIN
        # @type HostUin: Integer
        # @param HostName: 创建者名称
        # @type HostName: String
        # @param HostMail: 创建者邮箱
        # @type HostMail: String
        # @param Status: 邀请状态。-1：已过期，0：正常，1：已接受，2：已失效，3：已取消
        # @type Status: Integer
        # @param Name: 名称
        # @type Name: String
        # @param Remark: 备注
        # @type Remark: String
        # @param OrgType: 企业组织类型
        # @type OrgType: Integer
        # @param InviteTime: 邀请时间
        # @type InviteTime: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: String

        attr_accessor :Id, :Uin, :HostUin, :HostName, :HostMail, :Status, :Name, :Remark, :OrgType, :InviteTime, :ExpireTime
        
        def initialize(id=nil, uin=nil, hostuin=nil, hostname=nil, hostmail=nil, status=nil, name=nil, remark=nil, orgtype=nil, invitetime=nil, expiretime=nil)
          @Id = id
          @Uin = uin
          @HostUin = hostuin
          @HostName = hostname
          @HostMail = hostmail
          @Status = status
          @Name = name
          @Remark = remark
          @OrgType = orgtype
          @InviteTime = invitetime
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @Id = params['Id']
          @Uin = params['Uin']
          @HostUin = params['HostUin']
          @HostName = params['HostName']
          @HostMail = params['HostMail']
          @Status = params['Status']
          @Name = params['Name']
          @Remark = params['Remark']
          @OrgType = params['OrgType']
          @InviteTime = params['InviteTime']
          @ExpireTime = params['ExpireTime']
        end
      end

      # 企业组织成员
      class OrgMember < TencentCloud::Common::AbstractModel
        # @param Uin: UIN
        # @type Uin: Integer
        # @param Name: 名称
        # @type Name: String
        # @param Remark: 备注
        # @type Remark: String
        # @param JoinTime: 加入时间
        # @type JoinTime: String

        attr_accessor :Uin, :Name, :Remark, :JoinTime
        
        def initialize(uin=nil, name=nil, remark=nil, jointime=nil)
          @Uin = uin
          @Name = name
          @Remark = remark
          @JoinTime = jointime
        end

        def deserialize(params)
          @Uin = params['Uin']
          @Name = params['Name']
          @Remark = params['Remark']
          @JoinTime = params['JoinTime']
        end
      end

      # 企业组织单元
      class OrgNode < TencentCloud::Common::AbstractModel
        # @param NodeId: 组织单元ID
        # @type NodeId: Integer
        # @param Name: 名称
        # @type Name: String
        # @param ParentNodeId: 父单元ID
        # @type ParentNodeId: Integer
        # @param MemberCount: 成员数量
        # @type MemberCount: Integer

        attr_accessor :NodeId, :Name, :ParentNodeId, :MemberCount
        
        def initialize(nodeid=nil, name=nil, parentnodeid=nil, membercount=nil)
          @NodeId = nodeid
          @Name = name
          @ParentNodeId = parentnodeid
          @MemberCount = membercount
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @Name = params['Name']
          @ParentNodeId = params['ParentNodeId']
          @MemberCount = params['MemberCount']
        end
      end

      # QuitOrganization请求参数结构体
      class QuitOrganizationRequest < TencentCloud::Common::AbstractModel
        # @param OrgId: 企业组织ID
        # @type OrgId: Integer

        attr_accessor :OrgId
        
        def initialize(orgid=nil)
          @OrgId = orgid
        end

        def deserialize(params)
          @OrgId = params['OrgId']
        end
      end

      # QuitOrganization返回参数结构体
      class QuitOrganizationResponse < TencentCloud::Common::AbstractModel
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

      # SendOrganizationInvitation请求参数结构体
      class SendOrganizationInvitationRequest < TencentCloud::Common::AbstractModel
        # @param InviteUin: 被邀请账户UIN
        # @type InviteUin: Integer
        # @param Name: 名称
        # @type Name: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :InviteUin, :Name, :Remark
        
        def initialize(inviteuin=nil, name=nil, remark=nil)
          @InviteUin = inviteuin
          @Name = name
          @Remark = remark
        end

        def deserialize(params)
          @InviteUin = params['InviteUin']
          @Name = params['Name']
          @Remark = params['Remark']
        end
      end

      # SendOrganizationInvitation返回参数结构体
      class SendOrganizationInvitationResponse < TencentCloud::Common::AbstractModel
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

      # UpdateOrganizationMember请求参数结构体
      class UpdateOrganizationMemberRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员UIN
        # @type MemberUin: Integer
        # @param Name: 名称
        # @type Name: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :MemberUin, :Name, :Remark
        
        def initialize(memberuin=nil, name=nil, remark=nil)
          @MemberUin = memberuin
          @Name = name
          @Remark = remark
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @Name = params['Name']
          @Remark = params['Remark']
        end
      end

      # UpdateOrganizationMember返回参数结构体
      class UpdateOrganizationMemberResponse < TencentCloud::Common::AbstractModel
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

      # UpdateOrganizationNode请求参数结构体
      class UpdateOrganizationNodeRequest < TencentCloud::Common::AbstractModel
        # @param NodeId: 企业组织单元ID
        # @type NodeId: Integer
        # @param Name: 名称
        # @type Name: String
        # @param ParentNodeId: 父单元ID
        # @type ParentNodeId: Integer

        attr_accessor :NodeId, :Name, :ParentNodeId
        
        def initialize(nodeid=nil, name=nil, parentnodeid=nil)
          @NodeId = nodeid
          @Name = name
          @ParentNodeId = parentnodeid
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @Name = params['Name']
          @ParentNodeId = params['ParentNodeId']
        end
      end

      # UpdateOrganizationNode返回参数结构体
      class UpdateOrganizationNodeResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

