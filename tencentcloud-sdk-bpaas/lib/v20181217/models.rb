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
  module Bpaas
    module V20181217
      # bpaas申请入参
      class ApplyParam < TencentCloud::Common::AbstractModel
        # @param Key: 审批流中表单唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 表单value
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Array
        # @param Name: 表单参数描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Key, :Value, :Name

        def initialize(key=nil, value=nil, name=nil)
          @Key = key
          @Value = value
          @Name = name
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @Name = params['Name']
        end
      end

      # 审批意见
      class ApproveOpinion < TencentCloud::Common::AbstractModel
        # @param Type: 方式 1:输入文字反馈  2:预设选项
        # @type Type: Integer
        # @param Content: 审批意见
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :Type, :Content

        def initialize(type=nil, content=nil)
          @Type = type
          @Content = content
        end

        def deserialize(params)
          @Type = params['Type']
          @Content = params['Content']
        end
      end

      # 审批人
      class ApproveUser < TencentCloud::Common::AbstractModel
        # @param Uin: 用户uin
        # @type Uin: Integer
        # @param Type: 用户类型 (1:用户  2:用户组)
        # @type Type: Integer
        # @param Desc: 用户描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param Nick: 用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nick: String
        # @param Scf: 动态获取Scf
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scf: :class:`Tencentcloud::Bpaas.v20181217.models.Scf`

        attr_accessor :Uin, :Type, :Desc, :Nick, :Scf

        def initialize(uin=nil, type=nil, desc=nil, nick=nil, scf=nil)
          @Uin = uin
          @Type = type
          @Desc = desc
          @Nick = nick
          @Scf = scf
        end

        def deserialize(params)
          @Uin = params['Uin']
          @Type = params['Type']
          @Desc = params['Desc']
          @Nick = params['Nick']
          unless params['Scf'].nil?
            @Scf = Scf.new
            @Scf.deserialize(params['Scf'])
          end
        end
      end

      # GetBpaasApproveDetail请求参数结构体
      class GetBpaasApproveDetailRequest < TencentCloud::Common::AbstractModel
        # @param ApproveId: 审批id
        # @type ApproveId: Integer

        attr_accessor :ApproveId

        def initialize(approveid=nil)
          @ApproveId = approveid
        end

        def deserialize(params)
          @ApproveId = params['ApproveId']
        end
      end

      # GetBpaasApproveDetail返回参数结构体
      class GetBpaasApproveDetailResponse < TencentCloud::Common::AbstractModel
        # @param ApplyUin: 申请人uin
        # @type ApplyUin: Integer
        # @param ApplyOwnUin: 申请人主账号
        # @type ApplyOwnUin: Integer
        # @param ApplyUinNick: 申请人昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplyUinNick: String
        # @param BpaasId: 审批流id
        # @type BpaasId: Integer
        # @param BpaasName: 审批流名称
        # @type BpaasName: String
        # @param ApplicationParams: 申请参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationParams: Array
        # @param Reason: 申请原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String
        # @param CreateTime: 申请时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Status: 申请单状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Nodes: 节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nodes: Array
        # @param ApprovingNodeId: 正在审批的节点id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApprovingNodeId: String
        # @param ModifyTime: 更新时间，时间格式：2021-12-12 10:12:10
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplyUin, :ApplyOwnUin, :ApplyUinNick, :BpaasId, :BpaasName, :ApplicationParams, :Reason, :CreateTime, :Status, :Nodes, :ApprovingNodeId, :ModifyTime, :RequestId

        def initialize(applyuin=nil, applyownuin=nil, applyuinnick=nil, bpaasid=nil, bpaasname=nil, applicationparams=nil, reason=nil, createtime=nil, status=nil, nodes=nil, approvingnodeid=nil, modifytime=nil, requestid=nil)
          @ApplyUin = applyuin
          @ApplyOwnUin = applyownuin
          @ApplyUinNick = applyuinnick
          @BpaasId = bpaasid
          @BpaasName = bpaasname
          @ApplicationParams = applicationparams
          @Reason = reason
          @CreateTime = createtime
          @Status = status
          @Nodes = nodes
          @ApprovingNodeId = approvingnodeid
          @ModifyTime = modifytime
          @RequestId = requestid
        end

        def deserialize(params)
          @ApplyUin = params['ApplyUin']
          @ApplyOwnUin = params['ApplyOwnUin']
          @ApplyUinNick = params['ApplyUinNick']
          @BpaasId = params['BpaasId']
          @BpaasName = params['BpaasName']
          unless params['ApplicationParams'].nil?
            @ApplicationParams = []
            params['ApplicationParams'].each do |i|
              applyparam_tmp = ApplyParam.new
              applyparam_tmp.deserialize(i)
              @ApplicationParams << applyparam_tmp
            end
          end
          @Reason = params['Reason']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          unless params['Nodes'].nil?
            @Nodes = []
            params['Nodes'].each do |i|
              statusnode_tmp = StatusNode.new
              statusnode_tmp.deserialize(i)
              @Nodes << statusnode_tmp
            end
          end
          @ApprovingNodeId = params['ApprovingNodeId']
          @ModifyTime = params['ModifyTime']
          @RequestId = params['RequestId']
        end
      end

      # OutApproveBpaasApplication请求参数结构体
      class OutApproveBpaasApplicationRequest < TencentCloud::Common::AbstractModel
        # @param Status: 状态  1:通过  2:拒绝
        # @type Status: Integer
        # @param ApproveId: 审批单id
        # @type ApproveId: Integer
        # @param Msg: 审批意见
        # @type Msg: String

        attr_accessor :Status, :ApproveId, :Msg

        def initialize(status=nil, approveid=nil, msg=nil)
          @Status = status
          @ApproveId = approveid
          @Msg = msg
        end

        def deserialize(params)
          @Status = params['Status']
          @ApproveId = params['ApproveId']
          @Msg = params['Msg']
        end
      end

      # OutApproveBpaasApplication返回参数结构体
      class OutApproveBpaasApplicationResponse < TencentCloud::Common::AbstractModel
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

      # 云函数SCF
      class Scf < TencentCloud::Common::AbstractModel
        # @param ScfRegion: Scf函数地域id
        # @type ScfRegion: String
        # @param ScfRegionName: Scf函数地域
        # @type ScfRegionName: String
        # @param ScfName: Scf函数名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScfName: String
        # @param Params: Scf函数入参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: Array

        attr_accessor :ScfRegion, :ScfRegionName, :ScfName, :Params

        def initialize(scfregion=nil, scfregionname=nil, scfname=nil, params=nil)
          @ScfRegion = scfregion
          @ScfRegionName = scfregionname
          @ScfName = scfname
          @Params = params
        end

        def deserialize(params)
          @ScfRegion = params['ScfRegion']
          @ScfRegionName = params['ScfRegionName']
          @ScfName = params['ScfName']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              scfparam_tmp = ScfParam.new
              scfparam_tmp.deserialize(i)
              @Params << scfparam_tmp
            end
          end
        end
      end

      # Scf函数入参
      class ScfParam < TencentCloud::Common::AbstractModel
        # @param Key: 参数Key
        # @type Key: String
        # @param Type: 参数类型 1用户输入 2预设参数 3表单参数
        # @type Type: Integer
        # @param Values: 参数值
        # @type Values: Array
        # @param Name: 参数描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Key, :Type, :Values, :Name

        def initialize(key=nil, type=nil, values=nil, name=nil)
          @Key = key
          @Type = type
          @Values = values
          @Name = name
        end

        def deserialize(params)
          @Key = params['Key']
          @Type = params['Type']
          @Values = params['Values']
          @Name = params['Name']
        end
      end

      # 状态节点
      class StatusNode < TencentCloud::Common::AbstractModel
        # @param NodeId: 节点id
        # @type NodeId: String
        # @param NodeName: 节点名称
        # @type NodeName: String
        # @param NodeType: 节点类型 1:审批节点 2:执行节点 3:条件节点
        # @type NodeType: Integer
        # @param NextNode: 下一个节点
        # @type NextNode: String
        # @param Opinion: 审批意见模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Opinion: :class:`Tencentcloud::Bpaas.v20181217.models.ApproveOpinion`
        # @param ScfName: scf函数名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScfName: String
        # @param SubStatus: 状态（0：待审批，1：审批通过，2：拒绝，3：scf执行失败，4：scf执行成功）18: 外部审批中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubStatus: Integer
        # @param ApprovedUin: 审批节点审批人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApprovedUin: Array
        # @param CreateTime: 审批时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Msg: 审批意见信息 审批节点:审批人意见  执行节点:scf函数执行日志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Users: 有权限审批该节点的uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Users: :class:`Tencentcloud::Bpaas.v20181217.models.ApproveUser`
        # @param IsApprove: 是否有权限审批该节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsApprove: Boolean
        # @param ApproveId: 审批id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveId: String
        # @param ApproveMethod: 审批方式 0或签 1会签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveMethod: Integer
        # @param ApproveType: 审批节点审批类型，1人工审批 2自动通过 3自动决绝 4外部审批scf
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApproveType: Integer
        # @param CallMethod: 外部审批类型 scf:0或null ; CKafka:1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallMethod: Integer
        # @param DataHubId: CKafka - 接入资源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataHubId: String
        # @param TaskName: CKafka - 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param CKafkaRegion: CKafka - 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CKafkaRegion: String
        # @param ExternalUrl: 外部审批Url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalUrl: String
        # @param ParallelNodes: 并行节点 3-4
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParallelNodes: String
        # @param RejectedCloudFunctionMsg: scf拒绝时返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RejectedCloudFunctionMsg: String
        # @param PrevNode: 上一个节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrevNode: String

        attr_accessor :NodeId, :NodeName, :NodeType, :NextNode, :Opinion, :ScfName, :SubStatus, :ApprovedUin, :CreateTime, :Msg, :Users, :IsApprove, :ApproveId, :ApproveMethod, :ApproveType, :CallMethod, :DataHubId, :TaskName, :CKafkaRegion, :ExternalUrl, :ParallelNodes, :RejectedCloudFunctionMsg, :PrevNode

        def initialize(nodeid=nil, nodename=nil, nodetype=nil, nextnode=nil, opinion=nil, scfname=nil, substatus=nil, approveduin=nil, createtime=nil, msg=nil, users=nil, isapprove=nil, approveid=nil, approvemethod=nil, approvetype=nil, callmethod=nil, datahubid=nil, taskname=nil, ckafkaregion=nil, externalurl=nil, parallelnodes=nil, rejectedcloudfunctionmsg=nil, prevnode=nil)
          @NodeId = nodeid
          @NodeName = nodename
          @NodeType = nodetype
          @NextNode = nextnode
          @Opinion = opinion
          @ScfName = scfname
          @SubStatus = substatus
          @ApprovedUin = approveduin
          @CreateTime = createtime
          @Msg = msg
          @Users = users
          @IsApprove = isapprove
          @ApproveId = approveid
          @ApproveMethod = approvemethod
          @ApproveType = approvetype
          @CallMethod = callmethod
          @DataHubId = datahubid
          @TaskName = taskname
          @CKafkaRegion = ckafkaregion
          @ExternalUrl = externalurl
          @ParallelNodes = parallelnodes
          @RejectedCloudFunctionMsg = rejectedcloudfunctionmsg
          @PrevNode = prevnode
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @NodeName = params['NodeName']
          @NodeType = params['NodeType']
          @NextNode = params['NextNode']
          unless params['Opinion'].nil?
            @Opinion = ApproveOpinion.new
            @Opinion.deserialize(params['Opinion'])
          end
          @ScfName = params['ScfName']
          @SubStatus = params['SubStatus']
          @ApprovedUin = params['ApprovedUin']
          @CreateTime = params['CreateTime']
          @Msg = params['Msg']
          unless params['Users'].nil?
            @Users = ApproveUser.new
            @Users.deserialize(params['Users'])
          end
          @IsApprove = params['IsApprove']
          @ApproveId = params['ApproveId']
          @ApproveMethod = params['ApproveMethod']
          @ApproveType = params['ApproveType']
          @CallMethod = params['CallMethod']
          @DataHubId = params['DataHubId']
          @TaskName = params['TaskName']
          @CKafkaRegion = params['CKafkaRegion']
          @ExternalUrl = params['ExternalUrl']
          @ParallelNodes = params['ParallelNodes']
          @RejectedCloudFunctionMsg = params['RejectedCloudFunctionMsg']
          @PrevNode = params['PrevNode']
        end
      end

    end
  end
end

