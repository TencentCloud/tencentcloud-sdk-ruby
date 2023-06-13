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
  module Tdid
    module V20210519
      # AddLabel请求参数结构体
      class AddLabelRequest < TencentCloud::Common::AbstractModel
        # @param LabelId: 标签ID
        # @type LabelId: Integer
        # @param Did: tdid
        # @type Did: String

        attr_accessor :LabelId, :Did

        def initialize(labelid=nil, did=nil)
          @LabelId = labelid
          @Did = did
        end

        def deserialize(params)
          @LabelId = params['LabelId']
          @Did = params['Did']
        end
      end

      # AddLabel返回参数结构体
      class AddLabelResponse < TencentCloud::Common::AbstractModel
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

      # 权威机构
      class Authority < TencentCloud::Common::AbstractModel
        # @param Id: 权威机构ID
        # @type Id: Integer
        # @param DidId: Did的ID
        # @type DidId: Integer
        # @param Did: DID具体信息
        # @type Did: String
        # @param Name: 机构名称
        # @type Name: String
        # @param Status: 权威认证 1:已认证，2:未认证
        # @type Status: Integer
        # @param DidServiceId: DID服务ID
        # @type DidServiceId: Integer
        # @param ContractAppId: 应用ID
        # @type ContractAppId: Integer
        # @param Remark: 备注
        # @type Remark: String
        # @param RegisterTime: 注册时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegisterTime: String
        # @param RecognizeTime: 认证时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecognizeTime: String
        # @param CreateTime: 生成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param GroupId: 群组ID
        # @type GroupId: Integer
        # @param AppName: 合约名称
        # @type AppName: String
        # @param LabelName: 链上标签
        # @type LabelName: String

        attr_accessor :Id, :DidId, :Did, :Name, :Status, :DidServiceId, :ContractAppId, :Remark, :RegisterTime, :RecognizeTime, :CreateTime, :UpdateTime, :ClusterId, :GroupId, :AppName, :LabelName

        def initialize(id=nil, didid=nil, did=nil, name=nil, status=nil, didserviceid=nil, contractappid=nil, remark=nil, registertime=nil, recognizetime=nil, createtime=nil, updatetime=nil, clusterid=nil, groupid=nil, appname=nil, labelname=nil)
          @Id = id
          @DidId = didid
          @Did = did
          @Name = name
          @Status = status
          @DidServiceId = didserviceid
          @ContractAppId = contractappid
          @Remark = remark
          @RegisterTime = registertime
          @RecognizeTime = recognizetime
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ClusterId = clusterid
          @GroupId = groupid
          @AppName = appname
          @LabelName = labelname
        end

        def deserialize(params)
          @Id = params['Id']
          @DidId = params['DidId']
          @Did = params['Did']
          @Name = params['Name']
          @Status = params['Status']
          @DidServiceId = params['DidServiceId']
          @ContractAppId = params['ContractAppId']
          @Remark = params['Remark']
          @RegisterTime = params['RegisterTime']
          @RecognizeTime = params['RecognizeTime']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ClusterId = params['ClusterId']
          @GroupId = params['GroupId']
          @AppName = params['AppName']
          @LabelName = params['LabelName']
        end
      end

      # bcos网络信息
      class BcosClusterItem < TencentCloud::Common::AbstractModel
        # @param ChainId: 网络索引id
        # @type ChainId: Integer
        # @param ChainName: 网络名称
        # @type ChainName: String
        # @param AgencyCount: 机构数量
        # @type AgencyCount: Integer
        # @param ConsortiumId: 联盟id
        # @type ConsortiumId: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: String
        # @param ChainStatus: 网络状态
        # @type ChainStatus: Integer
        # @param ResourceId: 资源 id
        # @type ResourceId: String
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param ConsortiumName: 组织名称
        # @type ConsortiumName: String
        # @param AgencyId: 机构id
        # @type AgencyId: Integer
        # @param AutoRenewFlag: 续费状态
        # @type AutoRenewFlag: Integer
        # @param TotalNetworkNode: 网络模式
        # @type TotalNetworkNode: Integer
        # @param TotalCreateNode: 创建节点数
        # @type TotalCreateNode: Integer
        # @param TotalGroups: 总群组数量
        # @type TotalGroups: Integer

        attr_accessor :ChainId, :ChainName, :AgencyCount, :ConsortiumId, :CreateTime, :ExpireTime, :ChainStatus, :ResourceId, :ClusterId, :ConsortiumName, :AgencyId, :AutoRenewFlag, :TotalNetworkNode, :TotalCreateNode, :TotalGroups

        def initialize(chainid=nil, chainname=nil, agencycount=nil, consortiumid=nil, createtime=nil, expiretime=nil, chainstatus=nil, resourceid=nil, clusterid=nil, consortiumname=nil, agencyid=nil, autorenewflag=nil, totalnetworknode=nil, totalcreatenode=nil, totalgroups=nil)
          @ChainId = chainid
          @ChainName = chainname
          @AgencyCount = agencycount
          @ConsortiumId = consortiumid
          @CreateTime = createtime
          @ExpireTime = expiretime
          @ChainStatus = chainstatus
          @ResourceId = resourceid
          @ClusterId = clusterid
          @ConsortiumName = consortiumname
          @AgencyId = agencyid
          @AutoRenewFlag = autorenewflag
          @TotalNetworkNode = totalnetworknode
          @TotalCreateNode = totalcreatenode
          @TotalGroups = totalgroups
        end

        def deserialize(params)
          @ChainId = params['ChainId']
          @ChainName = params['ChainName']
          @AgencyCount = params['AgencyCount']
          @ConsortiumId = params['ConsortiumId']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @ChainStatus = params['ChainStatus']
          @ResourceId = params['ResourceId']
          @ClusterId = params['ClusterId']
          @ConsortiumName = params['ConsortiumName']
          @AgencyId = params['AgencyId']
          @AutoRenewFlag = params['AutoRenewFlag']
          @TotalNetworkNode = params['TotalNetworkNode']
          @TotalCreateNode = params['TotalCreateNode']
          @TotalGroups = params['TotalGroups']
        end
      end

      # CancelAuthorityIssuer请求参数结构体
      class CancelAuthorityIssuerRequest < TencentCloud::Common::AbstractModel
        # @param Did: did具体信息
        # @type Did: String

        attr_accessor :Did

        def initialize(did=nil)
          @Did = did
        end

        def deserialize(params)
          @Did = params['Did']
        end
      end

      # CancelAuthorityIssuer返回参数结构体
      class CancelAuthorityIssuerResponse < TencentCloud::Common::AbstractModel
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

      # CheckChain请求参数结构体
      class CheckChainRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 群组ID
        # @type GroupId: Integer
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param AgencyName: did服务机构名称
        # @type AgencyName: String

        attr_accessor :GroupId, :ClusterId, :AgencyName

        def initialize(groupid=nil, clusterid=nil, agencyname=nil)
          @GroupId = groupid
          @ClusterId = clusterid
          @AgencyName = agencyname
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @ClusterId = params['ClusterId']
          @AgencyName = params['AgencyName']
        end
      end

      # CheckChain返回参数结构体
      class CheckChainResponse < TencentCloud::Common::AbstractModel
        # @param RoleType: 1为盟主，0为非盟主
        # @type RoleType: Integer
        # @param ChainId: 链ID
        # @type ChainId: String
        # @param AppName: 应用名称
        # @type AppName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleType, :ChainId, :AppName, :RequestId

        def initialize(roletype=nil, chainid=nil, appname=nil, requestid=nil)
          @RoleType = roletype
          @ChainId = chainid
          @AppName = appname
          @RequestId = requestid
        end

        def deserialize(params)
          @RoleType = params['RoleType']
          @ChainId = params['ChainId']
          @AppName = params['AppName']
          @RequestId = params['RequestId']
        end
      end

      # CheckDidDeploy请求参数结构体
      class CheckDidDeployRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # CheckDidDeploy返回参数结构体
      class CheckDidDeployResponse < TencentCloud::Common::AbstractModel
        # @param Task: 服务信息
        # @type Task: :class:`Tencentcloud::Tdid.v20210519.models.Task`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Task, :RequestId

        def initialize(task=nil, requestid=nil)
          @Task = task
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Task'].nil?
            @Task = Task.new
            @Task.deserialize(params['Task'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 联盟信息
      class ConsortiumItem < TencentCloud::Common::AbstractModel
        # @param Id: 联盟id
        # @type Id: Integer
        # @param Name: 联盟名称
        # @type Name: String

        attr_accessor :Id, :Name

        def initialize(id=nil, name=nil)
          @Id = id
          @Name = name
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
        end
      end

      # 部署合约
      class Contract < TencentCloud::Common::AbstractModel
        # @param ApplyName: 应用名
        # @type ApplyName: String
        # @param Enable: 合约状态 true:已启用 false:未启用
        # @type Enable: Boolean
        # @param Hash: 合约CNS地址
        # @type Hash: String
        # @param HashShow: 合约CNS地址脱敏
        # @type HashShow: String
        # @param WeId: 部署机构DID
        # @type WeId: String
        # @param DeployName: 部署机构名称
        # @type DeployName: String
        # @param GroupId: 部署群组
        # @type GroupId: String
        # @param CreateTime: 部署时间
        # @type CreateTime: String

        attr_accessor :ApplyName, :Enable, :Hash, :HashShow, :WeId, :DeployName, :GroupId, :CreateTime

        def initialize(applyname=nil, enable=nil, hash=nil, hashshow=nil, weid=nil, deployname=nil, groupid=nil, createtime=nil)
          @ApplyName = applyname
          @Enable = enable
          @Hash = hash
          @HashShow = hashshow
          @WeId = weid
          @DeployName = deployname
          @GroupId = groupid
          @CreateTime = createtime
        end

        def deserialize(params)
          @ApplyName = params['ApplyName']
          @Enable = params['Enable']
          @Hash = params['Hash']
          @HashShow = params['HashShow']
          @WeId = params['WeId']
          @DeployName = params['DeployName']
          @GroupId = params['GroupId']
          @CreateTime = params['CreateTime']
        end
      end

      # 模板颁发量排名
      class CptIssueRank < TencentCloud::Common::AbstractModel
        # @param CptName: 模板名称
        # @type CptName: String
        # @param Rank: 名次
        # @type Rank: Integer
        # @param Count: 颁发量
        # @type Count: Integer
        # @param ApplyName: 应用名称
        # @type ApplyName: String
        # @param ApplyId: 应用ID
        # @type ApplyId: Integer

        attr_accessor :CptName, :Rank, :Count, :ApplyName, :ApplyId

        def initialize(cptname=nil, rank=nil, count=nil, applyname=nil, applyid=nil)
          @CptName = cptname
          @Rank = rank
          @Count = count
          @ApplyName = applyname
          @ApplyId = applyid
        end

        def deserialize(params)
          @CptName = params['CptName']
          @Rank = params['Rank']
          @Count = params['Count']
          @ApplyName = params['ApplyName']
          @ApplyId = params['ApplyId']
        end
      end

      # cpt集合数据
      class CptListData < TencentCloud::Common::AbstractModel
        # @param Id: ID信息
        # @type Id: Integer
        # @param Name: 模版名称
        # @type Name: String
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param GroupId: 群组ID
        # @type GroupId: Integer
        # @param ServiceId: 服务ID
        # @type ServiceId: Integer
        # @param ContractAppId: 合约应用ID
        # @type ContractAppId: Integer
        # @param CptId: 凭证模板ID
        # @type CptId: Integer
        # @param CptType: 模板类型，1: 系统模板，2: 用户模板，3:普通模板
        # @type CptType: Integer
        # @param Description: 凭证模版描述
        # @type Description: String
        # @param CptJson: 凭证模板Json
        # @type CptJson: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param CreatorDid: 创建者DID
        # @type CreatorDid: String
        # @param AppName: 应用名称
        # @type AppName: String

        attr_accessor :Id, :Name, :ClusterId, :GroupId, :ServiceId, :ContractAppId, :CptId, :CptType, :Description, :CptJson, :CreateTime, :UpdateTime, :CreatorDid, :AppName

        def initialize(id=nil, name=nil, clusterid=nil, groupid=nil, serviceid=nil, contractappid=nil, cptid=nil, cpttype=nil, description=nil, cptjson=nil, createtime=nil, updatetime=nil, creatordid=nil, appname=nil)
          @Id = id
          @Name = name
          @ClusterId = clusterid
          @GroupId = groupid
          @ServiceId = serviceid
          @ContractAppId = contractappid
          @CptId = cptid
          @CptType = cpttype
          @Description = description
          @CptJson = cptjson
          @CreateTime = createtime
          @UpdateTime = updatetime
          @CreatorDid = creatordid
          @AppName = appname
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @ClusterId = params['ClusterId']
          @GroupId = params['GroupId']
          @ServiceId = params['ServiceId']
          @ContractAppId = params['ContractAppId']
          @CptId = params['CptId']
          @CptType = params['CptType']
          @Description = params['Description']
          @CptJson = params['CptJson']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @CreatorDid = params['CreatorDid']
          @AppName = params['AppName']
        end
      end

      # CreateCredential请求参数结构体
      class CreateCredentialRequest < TencentCloud::Common::AbstractModel
        # @param FunctionArg: 参数集合，详见示例
        # @type FunctionArg: :class:`Tencentcloud::Tdid.v20210519.models.FunctionArg`
        # @param TransactionArg: 参数集合，详见示例
        # @type TransactionArg: :class:`Tencentcloud::Tdid.v20210519.models.TransactionArg`
        # @param VersionCredential: 版本
        # @type VersionCredential: String
        # @param UnSigned: 是否未签名
        # @type UnSigned: Boolean

        attr_accessor :FunctionArg, :TransactionArg, :VersionCredential, :UnSigned

        def initialize(functionarg=nil, transactionarg=nil, versioncredential=nil, unsigned=nil)
          @FunctionArg = functionarg
          @TransactionArg = transactionarg
          @VersionCredential = versioncredential
          @UnSigned = unsigned
        end

        def deserialize(params)
          unless params['FunctionArg'].nil?
            @FunctionArg = FunctionArg.new
            @FunctionArg.deserialize(params['FunctionArg'])
          end
          unless params['TransactionArg'].nil?
            @TransactionArg = TransactionArg.new
            @TransactionArg.deserialize(params['TransactionArg'])
          end
          @VersionCredential = params['VersionCredential']
          @UnSigned = params['UnSigned']
        end
      end

      # CreateCredential返回参数结构体
      class CreateCredentialResponse < TencentCloud::Common::AbstractModel
        # @param CredentialData: Credential的具体信息
        # @type CredentialData: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CredentialData, :RequestId

        def initialize(credentialdata=nil, requestid=nil)
          @CredentialData = credentialdata
          @RequestId = requestid
        end

        def deserialize(params)
          @CredentialData = params['CredentialData']
          @RequestId = params['RequestId']
        end
      end

      # CreateDidService请求参数结构体
      class CreateDidServiceRequest < TencentCloud::Common::AbstractModel
        # @param ConsortiumName: 联盟名称
        # @type ConsortiumName: String
        # @param ConsortiumId: 联盟ID
        # @type ConsortiumId: Integer
        # @param GroupId: 群组ID
        # @type GroupId: Integer
        # @param AgencyName: 机构名称
        # @type AgencyName: String
        # @param AppName: 应用名称
        # @type AppName: String
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param GroupName: 群组名称
        # @type GroupName: String

        attr_accessor :ConsortiumName, :ConsortiumId, :GroupId, :AgencyName, :AppName, :ClusterId, :GroupName

        def initialize(consortiumname=nil, consortiumid=nil, groupid=nil, agencyname=nil, appname=nil, clusterid=nil, groupname=nil)
          @ConsortiumName = consortiumname
          @ConsortiumId = consortiumid
          @GroupId = groupid
          @AgencyName = agencyname
          @AppName = appname
          @ClusterId = clusterid
          @GroupName = groupname
        end

        def deserialize(params)
          @ConsortiumName = params['ConsortiumName']
          @ConsortiumId = params['ConsortiumId']
          @GroupId = params['GroupId']
          @AgencyName = params['AgencyName']
          @AppName = params['AppName']
          @ClusterId = params['ClusterId']
          @GroupName = params['GroupName']
        end
      end

      # CreateDidService返回参数结构体
      class CreateDidServiceResponse < TencentCloud::Common::AbstractModel
        # @param Task: 服务信息
        # @type Task: :class:`Tencentcloud::Tdid.v20210519.models.Task`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Task, :RequestId

        def initialize(task=nil, requestid=nil)
          @Task = task
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Task'].nil?
            @Task = Task.new
            @Task.deserialize(params['Task'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateLabel请求参数结构体
      class CreateLabelRequest < TencentCloud::Common::AbstractModel
        # @param LabelName: 标签名称
        # @type LabelName: String
        # @param ClusterId: 网络Id
        # @type ClusterId: String
        # @param GroupId: 群组ID
        # @type GroupId: Integer

        attr_accessor :LabelName, :ClusterId, :GroupId

        def initialize(labelname=nil, clusterid=nil, groupid=nil)
          @LabelName = labelname
          @ClusterId = clusterid
          @GroupId = groupid
        end

        def deserialize(params)
          @LabelName = params['LabelName']
          @ClusterId = params['ClusterId']
          @GroupId = params['GroupId']
        end
      end

      # CreateLabel返回参数结构体
      class CreateLabelResponse < TencentCloud::Common::AbstractModel
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

      # CreateSelectiveCredential请求参数结构体
      class CreateSelectiveCredentialRequest < TencentCloud::Common::AbstractModel
        # @param FunctionArg: 参数集合
        # @type FunctionArg: :class:`Tencentcloud::Tdid.v20210519.models.VerifyFunctionArg`
        # @param PolicyId: 批露策略id
        # @type PolicyId: Integer

        attr_accessor :FunctionArg, :PolicyId

        def initialize(functionarg=nil, policyid=nil)
          @FunctionArg = functionarg
          @PolicyId = policyid
        end

        def deserialize(params)
          unless params['FunctionArg'].nil?
            @FunctionArg = VerifyFunctionArg.new
            @FunctionArg.deserialize(params['FunctionArg'])
          end
          @PolicyId = params['PolicyId']
        end
      end

      # CreateSelectiveCredential返回参数结构体
      class CreateSelectiveCredentialResponse < TencentCloud::Common::AbstractModel
        # @param CredentialData: 凭证字符串
        # @type CredentialData: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CredentialData, :RequestId

        def initialize(credentialdata=nil, requestid=nil)
          @CredentialData = credentialdata
          @RequestId = requestid
        end

        def deserialize(params)
          @CredentialData = params['CredentialData']
          @RequestId = params['RequestId']
        end
      end

      # CreateTDidByPrivateKey请求参数结构体
      class CreateTDidByPrivateKeyRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param GroupId: 群组ID
        # @type GroupId: Integer
        # @param PrivateKey: 私钥
        # @type PrivateKey: String

        attr_accessor :ClusterId, :GroupId, :PrivateKey

        def initialize(clusterid=nil, groupid=nil, privatekey=nil)
          @ClusterId = clusterid
          @GroupId = groupid
          @PrivateKey = privatekey
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @GroupId = params['GroupId']
          @PrivateKey = params['PrivateKey']
        end
      end

      # CreateTDidByPrivateKey返回参数结构体
      class CreateTDidByPrivateKeyResponse < TencentCloud::Common::AbstractModel
        # @param Did: did的具体信息
        # @type Did: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Did, :RequestId

        def initialize(did=nil, requestid=nil)
          @Did = did
          @RequestId = requestid
        end

        def deserialize(params)
          @Did = params['Did']
          @RequestId = params['RequestId']
        end
      end

      # CreateTDidByPublicKey请求参数结构体
      class CreateTDidByPublicKeyRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param GroupId: 群组ID
        # @type GroupId: Integer
        # @param PublicKey: 身份公钥
        # @type PublicKey: String
        # @param EncryptPubKey: 加密公钥
        # @type EncryptPubKey: String

        attr_accessor :ClusterId, :GroupId, :PublicKey, :EncryptPubKey

        def initialize(clusterid=nil, groupid=nil, publickey=nil, encryptpubkey=nil)
          @ClusterId = clusterid
          @GroupId = groupid
          @PublicKey = publickey
          @EncryptPubKey = encryptpubkey
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @GroupId = params['GroupId']
          @PublicKey = params['PublicKey']
          @EncryptPubKey = params['EncryptPubKey']
        end
      end

      # CreateTDidByPublicKey返回参数结构体
      class CreateTDidByPublicKeyResponse < TencentCloud::Common::AbstractModel
        # @param Did: did具体信息
        # @type Did: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Did, :RequestId

        def initialize(did=nil, requestid=nil)
          @Did = did
          @RequestId = requestid
        end

        def deserialize(params)
          @Did = params['Did']
          @RequestId = params['RequestId']
        end
      end

      # CreateTDid请求参数结构体
      class CreateTDidRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 群组ID
        # @type GroupId: Integer
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param Relegation: 部署机构为1，否则为0
        # @type Relegation: Integer

        attr_accessor :GroupId, :ClusterId, :Relegation

        def initialize(groupid=nil, clusterid=nil, relegation=nil)
          @GroupId = groupid
          @ClusterId = clusterid
          @Relegation = relegation
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @ClusterId = params['ClusterId']
          @Relegation = params['Relegation']
        end
      end

      # CreateTDid返回参数结构体
      class CreateTDidResponse < TencentCloud::Common::AbstractModel
        # @param Did: TDID
        # @type Did: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Did, :RequestId

        def initialize(did=nil, requestid=nil)
          @Did = did
          @RequestId = requestid
        end

        def deserialize(params)
          @Did = params['Did']
          @RequestId = params['RequestId']
        end
      end

      # 凭证链上状态信息
      class CredentialStatus < TencentCloud::Common::AbstractModel
        # @param CredentialId: 凭证唯一id
        # @type CredentialId: String
        # @param Status: 凭证状态（0：吊销；1：有效）
        # @type Status: Integer
        # @param Issuer: 凭证颁发者Did
        # @type Issuer: String
        # @param Digest: 凭证摘要
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Digest: String
        # @param Signature: 凭证签名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Signature: String
        # @param TimeStamp: 更新时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeStamp: Integer

        attr_accessor :CredentialId, :Status, :Issuer, :Digest, :Signature, :TimeStamp

        def initialize(credentialid=nil, status=nil, issuer=nil, digest=nil, signature=nil, timestamp=nil)
          @CredentialId = credentialid
          @Status = status
          @Issuer = issuer
          @Digest = digest
          @Signature = signature
          @TimeStamp = timestamp
        end

        def deserialize(params)
          @CredentialId = params['CredentialId']
          @Status = params['Status']
          @Issuer = params['Issuer']
          @Digest = params['Digest']
          @Signature = params['Signature']
          @TimeStamp = params['TimeStamp']
        end
      end

      # DeployByName请求参数结构体
      class DeployByNameRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationName: 应用名称
        # @type ApplicationName: String
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param GroupId: 群组ID
        # @type GroupId: Integer

        attr_accessor :ApplicationName, :ClusterId, :GroupId

        def initialize(applicationname=nil, clusterid=nil, groupid=nil)
          @ApplicationName = applicationname
          @ClusterId = clusterid
          @GroupId = groupid
        end

        def deserialize(params)
          @ApplicationName = params['ApplicationName']
          @ClusterId = params['ClusterId']
          @GroupId = params['GroupId']
        end
      end

      # DeployByName返回参数结构体
      class DeployByNameResponse < TencentCloud::Common::AbstractModel
        # @param Hash: 哈希值
        # @type Hash: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Hash, :RequestId

        def initialize(hash=nil, requestid=nil)
          @Hash = hash
          @RequestId = requestid
        end

        def deserialize(params)
          @Hash = params['Hash']
          @RequestId = params['RequestId']
        end
      end

      # did区块链网络信息
      class DidCluster < TencentCloud::Common::AbstractModel
        # @param ChainId: 链ID
        # @type ChainId: Integer
        # @param ChainName: 链名称
        # @type ChainName: String
        # @param AgencyCount: 组织数量
        # @type AgencyCount: Integer
        # @param ConsortiumId: 联盟ID
        # @type ConsortiumId: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: String
        # @param ChainStatus: 网络状态
        # @type ChainStatus: Integer
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param ConsortiumName: 联盟名称
        # @type ConsortiumName: String
        # @param AgencyId: 组织ID
        # @type AgencyId: Integer
        # @param AutoRenewFlag: 自动续费
        # @type AutoRenewFlag: Integer
        # @param TotalNetworkNode: 网络节点总数
        # @type TotalNetworkNode: Integer
        # @param TotalCreateNode: 本机构节点数
        # @type TotalCreateNode: Integer
        # @param TotalGroups: 总群组数
        # @type TotalGroups: Integer
        # @param DidCount: DID总数
        # @type DidCount: Integer

        attr_accessor :ChainId, :ChainName, :AgencyCount, :ConsortiumId, :CreateTime, :ExpireTime, :ChainStatus, :ResourceId, :ClusterId, :ConsortiumName, :AgencyId, :AutoRenewFlag, :TotalNetworkNode, :TotalCreateNode, :TotalGroups, :DidCount

        def initialize(chainid=nil, chainname=nil, agencycount=nil, consortiumid=nil, createtime=nil, expiretime=nil, chainstatus=nil, resourceid=nil, clusterid=nil, consortiumname=nil, agencyid=nil, autorenewflag=nil, totalnetworknode=nil, totalcreatenode=nil, totalgroups=nil, didcount=nil)
          @ChainId = chainid
          @ChainName = chainname
          @AgencyCount = agencycount
          @ConsortiumId = consortiumid
          @CreateTime = createtime
          @ExpireTime = expiretime
          @ChainStatus = chainstatus
          @ResourceId = resourceid
          @ClusterId = clusterid
          @ConsortiumName = consortiumname
          @AgencyId = agencyid
          @AutoRenewFlag = autorenewflag
          @TotalNetworkNode = totalnetworknode
          @TotalCreateNode = totalcreatenode
          @TotalGroups = totalgroups
          @DidCount = didcount
        end

        def deserialize(params)
          @ChainId = params['ChainId']
          @ChainName = params['ChainName']
          @AgencyCount = params['AgencyCount']
          @ConsortiumId = params['ConsortiumId']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @ChainStatus = params['ChainStatus']
          @ResourceId = params['ResourceId']
          @ClusterId = params['ClusterId']
          @ConsortiumName = params['ConsortiumName']
          @AgencyId = params['AgencyId']
          @AutoRenewFlag = params['AutoRenewFlag']
          @TotalNetworkNode = params['TotalNetworkNode']
          @TotalCreateNode = params['TotalCreateNode']
          @TotalGroups = params['TotalGroups']
          @DidCount = params['DidCount']
        end
      end

      # DID列表
      class DidData < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
        # @type ServiceId: Integer
        # @param GroupId: 群组ID
        # @type GroupId: Integer
        # @param AppName: 应用名称
        # @type AppName: String
        # @param Did: did号码
        # @type Did: String
        # @param Remark: 备注
        # @type Remark: String
        # @param AuthorityState: 权威机构认证状态 1未注册 2 未认证 3 已认证
        # @type AuthorityState: Integer
        # @param LabelName: DID标签名称
        # @type LabelName: String
        # @param CreatedAt: DID创建时间
        # @type CreatedAt: String
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param AllianceName: 联盟名称
        # @type AllianceName: String
        # @param LabelId: DID标签id
        # @type LabelId: Integer

        attr_accessor :ServiceId, :GroupId, :AppName, :Did, :Remark, :AuthorityState, :LabelName, :CreatedAt, :ClusterId, :AllianceName, :LabelId

        def initialize(serviceid=nil, groupid=nil, appname=nil, did=nil, remark=nil, authoritystate=nil, labelname=nil, createdat=nil, clusterid=nil, alliancename=nil, labelid=nil)
          @ServiceId = serviceid
          @GroupId = groupid
          @AppName = appname
          @Did = did
          @Remark = remark
          @AuthorityState = authoritystate
          @LabelName = labelname
          @CreatedAt = createdat
          @ClusterId = clusterid
          @AllianceName = alliancename
          @LabelId = labelid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @GroupId = params['GroupId']
          @AppName = params['AppName']
          @Did = params['Did']
          @Remark = params['Remark']
          @AuthorityState = params['AuthorityState']
          @LabelName = params['LabelName']
          @CreatedAt = params['CreatedAt']
          @ClusterId = params['ClusterId']
          @AllianceName = params['AllianceName']
          @LabelId = params['LabelId']
        end
      end

      # DID服务基本信息
      class DidServiceInfo < TencentCloud::Common::AbstractModel
        # @param Id: DID服务索引
        # @type Id: Integer
        # @param Appid: 应用ID
        # @type Appid: Integer
        # @param Uin: 账号唯一标识
        # @type Uin: String
        # @param ConsortiumId: 联盟id
        # @type ConsortiumId: Integer
        # @param ConsortiumName: 联盟名称
        # @type ConsortiumName: String
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param GroupId: 群组ID
        # @type GroupId: Integer
        # @param ChainId: 链ID
        # @type ChainId: String
        # @param RoleType: 1为盟主，0为非盟主
        # @type RoleType: Integer
        # @param AgencyDid: 机构DID
        # @type AgencyDid: String
        # @param CreateOrg: 机构名称
        # @type CreateOrg: String
        # @param Endpoint: 端点
        # @type Endpoint: String
        # @param CreateTime: 生成时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param GroupName: 群组名称
        # @type GroupName: String

        attr_accessor :Id, :Appid, :Uin, :ConsortiumId, :ConsortiumName, :ClusterId, :GroupId, :ChainId, :RoleType, :AgencyDid, :CreateOrg, :Endpoint, :CreateTime, :UpdateTime, :GroupName

        def initialize(id=nil, appid=nil, uin=nil, consortiumid=nil, consortiumname=nil, clusterid=nil, groupid=nil, chainid=nil, roletype=nil, agencydid=nil, createorg=nil, endpoint=nil, createtime=nil, updatetime=nil, groupname=nil)
          @Id = id
          @Appid = appid
          @Uin = uin
          @ConsortiumId = consortiumid
          @ConsortiumName = consortiumname
          @ClusterId = clusterid
          @GroupId = groupid
          @ChainId = chainid
          @RoleType = roletype
          @AgencyDid = agencydid
          @CreateOrg = createorg
          @Endpoint = endpoint
          @CreateTime = createtime
          @UpdateTime = updatetime
          @GroupName = groupname
        end

        def deserialize(params)
          @Id = params['Id']
          @Appid = params['Appid']
          @Uin = params['Uin']
          @ConsortiumId = params['ConsortiumId']
          @ConsortiumName = params['ConsortiumName']
          @ClusterId = params['ClusterId']
          @GroupId = params['GroupId']
          @ChainId = params['ChainId']
          @RoleType = params['RoleType']
          @AgencyDid = params['AgencyDid']
          @CreateOrg = params['CreateOrg']
          @Endpoint = params['Endpoint']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @GroupName = params['GroupName']
        end
      end

      # DownCpt请求参数结构体
      class DownCptRequest < TencentCloud::Common::AbstractModel
        # @param CptIndex: Cpt索引
        # @type CptIndex: Integer

        attr_accessor :CptIndex

        def initialize(cptindex=nil)
          @CptIndex = cptindex
        end

        def deserialize(params)
          @CptIndex = params['CptIndex']
        end
      end

      # DownCpt返回参数结构体
      class DownCptResponse < TencentCloud::Common::AbstractModel
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

      # EnableHash请求参数结构体
      class EnableHashRequest < TencentCloud::Common::AbstractModel
        # @param Hash: 合约CNS地址
        # @type Hash: String

        attr_accessor :Hash

        def initialize(hash=nil)
          @Hash = hash
        end

        def deserialize(params)
          @Hash = params['Hash']
        end
      end

      # EnableHash返回参数结构体
      class EnableHashResponse < TencentCloud::Common::AbstractModel
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

      # 创建凭证入参的FunctionArg
      class FunctionArg < TencentCloud::Common::AbstractModel
        # @param CptId: CPT ID
        # @type CptId: Integer
        # @param Issuer: 签发者 did
        # @type Issuer: String
        # @param ExpirationDate: 过期时间
        # @type ExpirationDate: String
        # @param ClaimJson: 声明
        # @type ClaimJson: String

        attr_accessor :CptId, :Issuer, :ExpirationDate, :ClaimJson

        def initialize(cptid=nil, issuer=nil, expirationdate=nil, claimjson=nil)
          @CptId = cptid
          @Issuer = issuer
          @ExpirationDate = expirationdate
          @ClaimJson = claimjson
        end

        def deserialize(params)
          @CptId = params['CptId']
          @Issuer = params['Issuer']
          @ExpirationDate = params['ExpirationDate']
          @ClaimJson = params['ClaimJson']
        end
      end

      # GetAgencyTDid请求参数结构体
      class GetAgencyTDidRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # GetAgencyTDid返回参数结构体
      class GetAgencyTDidResponse < TencentCloud::Common::AbstractModel
        # @param Prefix: 固定前缀
        # @type Prefix: String
        # @param Identity: did详情
        # @type Identity: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Prefix, :Identity, :RequestId

        def initialize(prefix=nil, identity=nil, requestid=nil)
          @Prefix = prefix
          @Identity = identity
          @RequestId = requestid
        end

        def deserialize(params)
          @Prefix = params['Prefix']
          unless params['Identity'].nil?
            @Identity = []
            params['Identity'].each do |i|
              identity_tmp = Identity.new
              identity_tmp.deserialize(i)
              @Identity << identity_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetAuthoritiesList请求参数结构体
      class GetAuthoritiesListRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码，从1开始
        # @type PageNumber: Integer
        # @param PageSize: 每页大小
        # @type PageSize: Integer
        # @param Did: Did信息
        # @type Did: String
        # @param Status: 权威认证 1:已认证，2:未认证
        # @type Status: Integer

        attr_accessor :PageNumber, :PageSize, :Did, :Status

        def initialize(pagenumber=nil, pagesize=nil, did=nil, status=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Did = did
          @Status = status
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Did = params['Did']
          @Status = params['Status']
        end
      end

      # GetAuthoritiesList返回参数结构体
      class GetAuthoritiesListResponse < TencentCloud::Common::AbstractModel
        # @param ResultList: 数据集合
        # @type ResultList: Array
        # @param AllCount: 总数
        # @type AllCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultList, :AllCount, :RequestId

        def initialize(resultlist=nil, allcount=nil, requestid=nil)
          @ResultList = resultlist
          @AllCount = allcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResultList'].nil?
            @ResultList = []
            params['ResultList'].each do |i|
              authority_tmp = Authority.new
              authority_tmp.deserialize(i)
              @ResultList << authority_tmp
            end
          end
          @AllCount = params['AllCount']
          @RequestId = params['RequestId']
        end
      end

      # GetAuthorityIssuer请求参数结构体
      class GetAuthorityIssuerRequest < TencentCloud::Common::AbstractModel
        # @param Did: tdid
        # @type Did: String

        attr_accessor :Did

        def initialize(did=nil)
          @Did = did
        end

        def deserialize(params)
          @Did = params['Did']
        end
      end

      # GetAuthorityIssuer返回参数结构体
      class GetAuthorityIssuerResponse < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param ClusterId: 区块链网络id
        # @type ClusterId: String
        # @param GroupId: 区块链群组id
        # @type GroupId: Integer
        # @param Did: 权威机构did
        # @type Did: String
        # @param Remark: 机构备注信息
        # @type Remark: String
        # @param RegisterTime: 注册时间
        # @type RegisterTime: String
        # @param RecognizeTime: 认证时间
        # @type RecognizeTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :ClusterId, :GroupId, :Did, :Remark, :RegisterTime, :RecognizeTime, :RequestId

        def initialize(name=nil, clusterid=nil, groupid=nil, did=nil, remark=nil, registertime=nil, recognizetime=nil, requestid=nil)
          @Name = name
          @ClusterId = clusterid
          @GroupId = groupid
          @Did = did
          @Remark = remark
          @RegisterTime = registertime
          @RecognizeTime = recognizetime
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @ClusterId = params['ClusterId']
          @GroupId = params['GroupId']
          @Did = params['Did']
          @Remark = params['Remark']
          @RegisterTime = params['RegisterTime']
          @RecognizeTime = params['RecognizeTime']
          @RequestId = params['RequestId']
        end
      end

      # GetConsortiumClusterList请求参数结构体
      class GetConsortiumClusterListRequest < TencentCloud::Common::AbstractModel
        # @param ConsortiumId: 联盟id
        # @type ConsortiumId: Integer

        attr_accessor :ConsortiumId

        def initialize(consortiumid=nil)
          @ConsortiumId = consortiumid
        end

        def deserialize(params)
          @ConsortiumId = params['ConsortiumId']
        end
      end

      # GetConsortiumClusterList返回参数结构体
      class GetConsortiumClusterListResponse < TencentCloud::Common::AbstractModel
        # @param ClusterList: 网络列表
        # @type ClusterList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterList, :RequestId

        def initialize(clusterlist=nil, requestid=nil)
          @ClusterList = clusterlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterList'].nil?
            @ClusterList = []
            params['ClusterList'].each do |i|
              bcosclusteritem_tmp = BcosClusterItem.new
              bcosclusteritem_tmp.deserialize(i)
              @ClusterList << bcosclusteritem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetConsortiumList请求参数结构体
      class GetConsortiumListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetConsortiumList返回参数结构体
      class GetConsortiumListResponse < TencentCloud::Common::AbstractModel
        # @param ConsortiumList: 联盟列表
        # @type ConsortiumList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConsortiumList, :RequestId

        def initialize(consortiumlist=nil, requestid=nil)
          @ConsortiumList = consortiumlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ConsortiumList'].nil?
            @ConsortiumList = []
            params['ConsortiumList'].each do |i|
              consortiumitem_tmp = ConsortiumItem.new
              consortiumitem_tmp.deserialize(i)
              @ConsortiumList << consortiumitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetCptInfo请求参数结构体
      class GetCptInfoRequest < TencentCloud::Common::AbstractModel
        # @param CptIndex: Cpt索引
        # @type CptIndex: Integer

        attr_accessor :CptIndex

        def initialize(cptindex=nil)
          @CptIndex = cptindex
        end

        def deserialize(params)
          @CptIndex = params['CptIndex']
        end
      end

      # GetCptInfo返回参数结构体
      class GetCptInfoResponse < TencentCloud::Common::AbstractModel
        # @param CptJsonData: CptJsonData的具体信息
        # @type CptJsonData: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CptJsonData, :RequestId

        def initialize(cptjsondata=nil, requestid=nil)
          @CptJsonData = cptjsondata
          @RequestId = requestid
        end

        def deserialize(params)
          @CptJsonData = params['CptJsonData']
          @RequestId = params['RequestId']
        end
      end

      # GetCptList请求参数结构体
      class GetCptListRequest < TencentCloud::Common::AbstractModel
        # @param DisplayStart: 起始位置
        # @type DisplayStart: Integer
        # @param DisplayLength: 长度
        # @type DisplayLength: Integer
        # @param CptType: 模板类型，0: 所有模板，1: 系统模板，2: 用户模板，3:普通模板
        # @type CptType: Integer

        attr_accessor :DisplayStart, :DisplayLength, :CptType

        def initialize(displaystart=nil, displaylength=nil, cpttype=nil)
          @DisplayStart = displaystart
          @DisplayLength = displaylength
          @CptType = cpttype
        end

        def deserialize(params)
          @DisplayStart = params['DisplayStart']
          @DisplayLength = params['DisplayLength']
          @CptType = params['CptType']
        end
      end

      # GetCptList返回参数结构体
      class GetCptListResponse < TencentCloud::Common::AbstractModel
        # @param CptDataList: cpt数据集合
        # @type CptDataList: Array
        # @param AllCount: 凭证模板总数
        # @type AllCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CptDataList, :AllCount, :RequestId

        def initialize(cptdatalist=nil, allcount=nil, requestid=nil)
          @CptDataList = cptdatalist
          @AllCount = allcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CptDataList'].nil?
            @CptDataList = []
            params['CptDataList'].each do |i|
              cptlistdata_tmp = CptListData.new
              cptlistdata_tmp.deserialize(i)
              @CptDataList << cptlistdata_tmp
            end
          end
          @AllCount = params['AllCount']
          @RequestId = params['RequestId']
        end
      end

      # GetCredentialCptRank请求参数结构体
      class GetCredentialCptRankRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间（支持到天 2021-4-23）
        # @type StartTime: String
        # @param EndTime: 结束时间（支持到天 2021-4-23）
        # @type EndTime: String
        # @param ClusterId: 网络ID
        # @type ClusterId: String

        attr_accessor :StartTime, :EndTime, :ClusterId

        def initialize(starttime=nil, endtime=nil, clusterid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ClusterId = clusterid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ClusterId = params['ClusterId']
        end
      end

      # GetCredentialCptRank返回参数结构体
      class GetCredentialCptRankResponse < TencentCloud::Common::AbstractModel
        # @param RankIssueResult: Rank集合
        # @type RankIssueResult: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RankIssueResult, :RequestId

        def initialize(rankissueresult=nil, requestid=nil)
          @RankIssueResult = rankissueresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RankIssueResult'].nil?
            @RankIssueResult = []
            params['RankIssueResult'].each do |i|
              cptissuerank_tmp = CptIssueRank.new
              cptissuerank_tmp.deserialize(i)
              @RankIssueResult << cptissuerank_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetCredentialIssueRank请求参数结构体
      class GetCredentialIssueRankRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间（支持到天 2021-4-23）
        # @type StartTime: String
        # @param EndTime: 结束时间（支持到天 2021-4-23）
        # @type EndTime: String
        # @param ClusterId: 网络ID
        # @type ClusterId: String

        attr_accessor :StartTime, :EndTime, :ClusterId

        def initialize(starttime=nil, endtime=nil, clusterid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ClusterId = clusterid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ClusterId = params['ClusterId']
        end
      end

      # GetCredentialIssueRank返回参数结构体
      class GetCredentialIssueRankResponse < TencentCloud::Common::AbstractModel
        # @param RankIssueResult: Rank集合
        # @type RankIssueResult: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RankIssueResult, :RequestId

        def initialize(rankissueresult=nil, requestid=nil)
          @RankIssueResult = rankissueresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RankIssueResult'].nil?
            @RankIssueResult = []
            params['RankIssueResult'].each do |i|
              cptissuerank_tmp = CptIssueRank.new
              cptissuerank_tmp.deserialize(i)
              @RankIssueResult << cptissuerank_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetCredentialIssueTrend请求参数结构体
      class GetCredentialIssueTrendRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间（支持到天 2021-4-23）
        # @type StartTime: String
        # @param EndTime: 结束时间（支持到天 2021-4-23）
        # @type EndTime: String
        # @param ClusterId: 网络ID
        # @type ClusterId: String

        attr_accessor :StartTime, :EndTime, :ClusterId

        def initialize(starttime=nil, endtime=nil, clusterid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ClusterId = clusterid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ClusterId = params['ClusterId']
        end
      end

      # GetCredentialIssueTrend返回参数结构体
      class GetCredentialIssueTrendResponse < TencentCloud::Common::AbstractModel
        # @param Trend: Trend集合
        # @type Trend: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Trend, :RequestId

        def initialize(trend=nil, requestid=nil)
          @Trend = trend
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Trend'].nil?
            @Trend = []
            params['Trend'].each do |i|
              trend_tmp = Trend.new
              trend_tmp.deserialize(i)
              @Trend << trend_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetCredentialStatus请求参数结构体
      class GetCredentialStatusRequest < TencentCloud::Common::AbstractModel
        # @param CredentialId: 凭证id
        # @type CredentialId: String

        attr_accessor :CredentialId

        def initialize(credentialid=nil)
          @CredentialId = credentialid
        end

        def deserialize(params)
          @CredentialId = params['CredentialId']
        end
      end

      # GetCredentialStatus返回参数结构体
      class GetCredentialStatusResponse < TencentCloud::Common::AbstractModel
        # @param CredentialStatus: 凭证状态信息
        # @type CredentialStatus: :class:`Tencentcloud::Tdid.v20210519.models.CredentialStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CredentialStatus, :RequestId

        def initialize(credentialstatus=nil, requestid=nil)
          @CredentialStatus = credentialstatus
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CredentialStatus'].nil?
            @CredentialStatus = CredentialStatus.new
            @CredentialStatus.deserialize(params['CredentialStatus'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetDataPanel请求参数结构体
      class GetDataPanelRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # GetDataPanel返回参数结构体
      class GetDataPanelResponse < TencentCloud::Common::AbstractModel
        # @param BlockNetworkCount: 区块链网络数量
        # @type BlockNetworkCount: Integer
        # @param BlockNetworkName: 区块链网络名称
        # @type BlockNetworkName: String
        # @param BlockHeight: 当前区块高度
        # @type BlockHeight: Integer
        # @param BlockNetworkType: 区块链网络类型
        # @type BlockNetworkType: Integer
        # @param DidCount: did数量
        # @type DidCount: Integer
        # @param CptCount: 凭证模版数量
        # @type CptCount: Integer
        # @param CertificatedAuthCount: 已认证权威机构数量
        # @type CertificatedAuthCount: Integer
        # @param IssueCptCount: 颁发凭证数量
        # @type IssueCptCount: Integer
        # @param NewDidCount: 本周新增DID数量
        # @type NewDidCount: Integer
        # @param BcosCount: BCOS网络类型数量
        # @type BcosCount: Integer
        # @param FabricCount: Fabric网络类型数量
        # @type FabricCount: Integer
        # @param ChainMakerCount: 长安链网络类型数量
        # @type ChainMakerCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BlockNetworkCount, :BlockNetworkName, :BlockHeight, :BlockNetworkType, :DidCount, :CptCount, :CertificatedAuthCount, :IssueCptCount, :NewDidCount, :BcosCount, :FabricCount, :ChainMakerCount, :RequestId

        def initialize(blocknetworkcount=nil, blocknetworkname=nil, blockheight=nil, blocknetworktype=nil, didcount=nil, cptcount=nil, certificatedauthcount=nil, issuecptcount=nil, newdidcount=nil, bcoscount=nil, fabriccount=nil, chainmakercount=nil, requestid=nil)
          @BlockNetworkCount = blocknetworkcount
          @BlockNetworkName = blocknetworkname
          @BlockHeight = blockheight
          @BlockNetworkType = blocknetworktype
          @DidCount = didcount
          @CptCount = cptcount
          @CertificatedAuthCount = certificatedauthcount
          @IssueCptCount = issuecptcount
          @NewDidCount = newdidcount
          @BcosCount = bcoscount
          @FabricCount = fabriccount
          @ChainMakerCount = chainmakercount
          @RequestId = requestid
        end

        def deserialize(params)
          @BlockNetworkCount = params['BlockNetworkCount']
          @BlockNetworkName = params['BlockNetworkName']
          @BlockHeight = params['BlockHeight']
          @BlockNetworkType = params['BlockNetworkType']
          @DidCount = params['DidCount']
          @CptCount = params['CptCount']
          @CertificatedAuthCount = params['CertificatedAuthCount']
          @IssueCptCount = params['IssueCptCount']
          @NewDidCount = params['NewDidCount']
          @BcosCount = params['BcosCount']
          @FabricCount = params['FabricCount']
          @ChainMakerCount = params['ChainMakerCount']
          @RequestId = params['RequestId']
        end
      end

      # GetDeployInfo请求参数结构体
      class GetDeployInfoRequest < TencentCloud::Common::AbstractModel
        # @param Hash: 合约CNS地址
        # @type Hash: String

        attr_accessor :Hash

        def initialize(hash=nil)
          @Hash = hash
        end

        def deserialize(params)
          @Hash = params['Hash']
        end
      end

      # GetDeployInfo返回参数结构体
      class GetDeployInfoResponse < TencentCloud::Common::AbstractModel
        # @param Hash: 合约CNS地址
        # @type Hash: String
        # @param GroupId: 合约主群组ID
        # @type GroupId: String
        # @param DeployDid: 部署机构DID
        # @type DeployDid: String
        # @param SdkVersion: TDID SDK版本
        # @type SdkVersion: String
        # @param ContractVersion: TDID 合约版本
        # @type ContractVersion: String
        # @param BlockVersion: 区块链节点版本
        # @type BlockVersion: String
        # @param BlockIp: 区块链节点IP
        # @type BlockIp: String
        # @param DidAddress: DID合约地址
        # @type DidAddress: String
        # @param CptAddress: CPT合约地址
        # @type CptAddress: String
        # @param AuthorityAddress: Authority Issuer地址
        # @type AuthorityAddress: String
        # @param EvidenceAddress: Evidence合约地址
        # @type EvidenceAddress: String
        # @param SpecificAddress: Specific Issuer合约地址
        # @type SpecificAddress: String
        # @param ChainId: 链ID
        # @type ChainId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Hash, :GroupId, :DeployDid, :SdkVersion, :ContractVersion, :BlockVersion, :BlockIp, :DidAddress, :CptAddress, :AuthorityAddress, :EvidenceAddress, :SpecificAddress, :ChainId, :RequestId

        def initialize(hash=nil, groupid=nil, deploydid=nil, sdkversion=nil, contractversion=nil, blockversion=nil, blockip=nil, didaddress=nil, cptaddress=nil, authorityaddress=nil, evidenceaddress=nil, specificaddress=nil, chainid=nil, requestid=nil)
          @Hash = hash
          @GroupId = groupid
          @DeployDid = deploydid
          @SdkVersion = sdkversion
          @ContractVersion = contractversion
          @BlockVersion = blockversion
          @BlockIp = blockip
          @DidAddress = didaddress
          @CptAddress = cptaddress
          @AuthorityAddress = authorityaddress
          @EvidenceAddress = evidenceaddress
          @SpecificAddress = specificaddress
          @ChainId = chainid
          @RequestId = requestid
        end

        def deserialize(params)
          @Hash = params['Hash']
          @GroupId = params['GroupId']
          @DeployDid = params['DeployDid']
          @SdkVersion = params['SdkVersion']
          @ContractVersion = params['ContractVersion']
          @BlockVersion = params['BlockVersion']
          @BlockIp = params['BlockIp']
          @DidAddress = params['DidAddress']
          @CptAddress = params['CptAddress']
          @AuthorityAddress = params['AuthorityAddress']
          @EvidenceAddress = params['EvidenceAddress']
          @SpecificAddress = params['SpecificAddress']
          @ChainId = params['ChainId']
          @RequestId = params['RequestId']
        end
      end

      # GetDeployList请求参数结构体
      class GetDeployListRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param GroupId: 群组ID
        # @type GroupId: Integer
        # @param DisplayStart: 起始位置
        # @type DisplayStart: Integer
        # @param DisplayLength: 长度
        # @type DisplayLength: Integer

        attr_accessor :ClusterId, :GroupId, :DisplayStart, :DisplayLength

        def initialize(clusterid=nil, groupid=nil, displaystart=nil, displaylength=nil)
          @ClusterId = clusterid
          @GroupId = groupid
          @DisplayStart = displaystart
          @DisplayLength = displaylength
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @GroupId = params['GroupId']
          @DisplayStart = params['DisplayStart']
          @DisplayLength = params['DisplayLength']
        end
      end

      # GetDeployList返回参数结构体
      class GetDeployListResponse < TencentCloud::Common::AbstractModel
        # @param AllCount: 合约总数
        # @type AllCount: Integer
        # @param Result: 合约部署列表
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AllCount, :Result, :RequestId

        def initialize(allcount=nil, result=nil, requestid=nil)
          @AllCount = allcount
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @AllCount = params['AllCount']
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              contract_tmp = Contract.new
              contract_tmp.deserialize(i)
              @Result << contract_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetDidClusterDetail请求参数结构体
      class GetDidClusterDetailRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: DID网络ID
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # GetDidClusterDetail返回参数结构体
      class GetDidClusterDetailResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param ConsortiumName: 组织名称
        # @type ConsortiumName: String
        # @param ChainAgency: 区块链组织名称
        # @type ChainAgency: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterId, :ConsortiumName, :ChainAgency, :RequestId

        def initialize(clusterid=nil, consortiumname=nil, chainagency=nil, requestid=nil)
          @ClusterId = clusterid
          @ConsortiumName = consortiumname
          @ChainAgency = chainagency
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ConsortiumName = params['ConsortiumName']
          @ChainAgency = params['ChainAgency']
          @RequestId = params['RequestId']
        end
      end

      # GetDidClusterList请求参数结构体
      class GetDidClusterListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetDidClusterList返回参数结构体
      class GetDidClusterListResponse < TencentCloud::Common::AbstractModel
        # @param DidClusterList: DID网络列表
        # @type DidClusterList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DidClusterList, :RequestId

        def initialize(didclusterlist=nil, requestid=nil)
          @DidClusterList = didclusterlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DidClusterList'].nil?
            @DidClusterList = []
            params['DidClusterList'].each do |i|
              didcluster_tmp = DidCluster.new
              didcluster_tmp.deserialize(i)
              @DidClusterList << didcluster_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetDidDetail请求参数结构体
      class GetDidDetailRequest < TencentCloud::Common::AbstractModel
        # @param Did: DID号码的具体信息
        # @type Did: String

        attr_accessor :Did

        def initialize(did=nil)
          @Did = did
        end

        def deserialize(params)
          @Did = params['Did']
        end
      end

      # GetDidDetail返回参数结构体
      class GetDidDetailResponse < TencentCloud::Common::AbstractModel
        # @param Did: DID名称
        # @type Did: String
        # @param Remark: 备注
        # @type Remark: String
        # @param PublicKey: 公钥
        # @type PublicKey: String
        # @param AuthorityState: 权威认证
        # @type AuthorityState: Integer
        # @param ConsortiumId: 联盟ID
        # @type ConsortiumId: Integer
        # @param ConsortiumName: 联盟名称
        # @type ConsortiumName: String
        # @param GroupId: 群组ID
        # @type GroupId: Integer
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param ResChainId: bcos资源ID
        # @type ResChainId: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Did, :Remark, :PublicKey, :AuthorityState, :ConsortiumId, :ConsortiumName, :GroupId, :ClusterId, :ResChainId, :CreateTime, :RequestId

        def initialize(did=nil, remark=nil, publickey=nil, authoritystate=nil, consortiumid=nil, consortiumname=nil, groupid=nil, clusterid=nil, reschainid=nil, createtime=nil, requestid=nil)
          @Did = did
          @Remark = remark
          @PublicKey = publickey
          @AuthorityState = authoritystate
          @ConsortiumId = consortiumid
          @ConsortiumName = consortiumname
          @GroupId = groupid
          @ClusterId = clusterid
          @ResChainId = reschainid
          @CreateTime = createtime
          @RequestId = requestid
        end

        def deserialize(params)
          @Did = params['Did']
          @Remark = params['Remark']
          @PublicKey = params['PublicKey']
          @AuthorityState = params['AuthorityState']
          @ConsortiumId = params['ConsortiumId']
          @ConsortiumName = params['ConsortiumName']
          @GroupId = params['GroupId']
          @ClusterId = params['ClusterId']
          @ResChainId = params['ResChainId']
          @CreateTime = params['CreateTime']
          @RequestId = params['RequestId']
        end
      end

      # GetDidDocument请求参数结构体
      class GetDidDocumentRequest < TencentCloud::Common::AbstractModel
        # @param Did: tdid
        # @type Did: String

        attr_accessor :Did

        def initialize(did=nil)
          @Did = did
        end

        def deserialize(params)
          @Did = params['Did']
        end
      end

      # GetDidDocument返回参数结构体
      class GetDidDocumentResponse < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Document: DID文档
        # @type Document: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Document, :RequestId

        def initialize(name=nil, document=nil, requestid=nil)
          @Name = name
          @Document = document
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Document = params['Document']
          @RequestId = params['RequestId']
        end
      end

      # GetDidList请求参数结构体
      class GetDidListRequest < TencentCloud::Common::AbstractModel
        # @param PageSize: 每页大小
        # @type PageSize: Integer
        # @param PageNumber: 页码，从1开始
        # @type PageNumber: Integer
        # @param Did: Did信息
        # @type Did: String
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param GroupId: 群组ID
        # @type GroupId: Integer

        attr_accessor :PageSize, :PageNumber, :Did, :ClusterId, :GroupId

        def initialize(pagesize=nil, pagenumber=nil, did=nil, clusterid=nil, groupid=nil)
          @PageSize = pagesize
          @PageNumber = pagenumber
          @Did = did
          @ClusterId = clusterid
          @GroupId = groupid
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @Did = params['Did']
          @ClusterId = params['ClusterId']
          @GroupId = params['GroupId']
        end
      end

      # GetDidList返回参数结构体
      class GetDidListResponse < TencentCloud::Common::AbstractModel
        # @param DataList: 数据列表
        # @type DataList: Array
        # @param AllCount: 数据总条数
        # @type AllCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataList, :AllCount, :RequestId

        def initialize(datalist=nil, allcount=nil, requestid=nil)
          @DataList = datalist
          @AllCount = allcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataList'].nil?
            @DataList = []
            params['DataList'].each do |i|
              diddata_tmp = DidData.new
              diddata_tmp.deserialize(i)
              @DataList << diddata_tmp
            end
          end
          @AllCount = params['AllCount']
          @RequestId = params['RequestId']
        end
      end

      # GetDidRegisterTrend请求参数结构体
      class GetDidRegisterTrendRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间（支持到天 2021-4-23）
        # @type StartTime: String
        # @param EndTime: 结束时间（支持到天 2021-4-23）
        # @type EndTime: String
        # @param ClusterId: 网络ID
        # @type ClusterId: String

        attr_accessor :StartTime, :EndTime, :ClusterId

        def initialize(starttime=nil, endtime=nil, clusterid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ClusterId = clusterid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ClusterId = params['ClusterId']
        end
      end

      # GetDidRegisterTrend返回参数结构体
      class GetDidRegisterTrendResponse < TencentCloud::Common::AbstractModel
        # @param Trend: Trend集合
        # @type Trend: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Trend, :RequestId

        def initialize(trend=nil, requestid=nil)
          @Trend = trend
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Trend'].nil?
            @Trend = []
            params['Trend'].each do |i|
              trend_tmp = Trend.new
              trend_tmp.deserialize(i)
              @Trend << trend_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetDidServiceDetail请求参数结构体
      class GetDidServiceDetailRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: DID服务ID
        # @type ServiceId: Integer

        attr_accessor :ServiceId

        def initialize(serviceid=nil)
          @ServiceId = serviceid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
        end
      end

      # GetDidServiceDetail返回参数结构体
      class GetDidServiceDetailResponse < TencentCloud::Common::AbstractModel
        # @param DidService: did服务信息
        # @type DidService: :class:`Tencentcloud::Tdid.v20210519.models.DidServiceInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DidService, :RequestId

        def initialize(didservice=nil, requestid=nil)
          @DidService = didservice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DidService'].nil?
            @DidService = DidServiceInfo.new
            @DidService.deserialize(params['DidService'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetDidServiceList请求参数结构体
      class GetDidServiceListRequest < TencentCloud::Common::AbstractModel
        # @param Type: 1: 以网络维度输出, 0: 以服务维度输出
        # @type Type: Integer

        attr_accessor :Type

        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # GetDidServiceList返回参数结构体
      class GetDidServiceListResponse < TencentCloud::Common::AbstractModel
        # @param DidServiceList: DID服务列表
        # @type DidServiceList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DidServiceList, :RequestId

        def initialize(didservicelist=nil, requestid=nil)
          @DidServiceList = didservicelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DidServiceList'].nil?
            @DidServiceList = []
            params['DidServiceList'].each do |i|
              didserviceinfo_tmp = DidServiceInfo.new
              didserviceinfo_tmp.deserialize(i)
              @DidServiceList << didserviceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetGroupList请求参数结构体
      class GetGroupListRequest < TencentCloud::Common::AbstractModel
        # @param Status: 0为未部署DID服务的群组，1为已部署DID服务的群组
        # @type Status: Integer
        # @param ClusterId: 网络ID
        # @type ClusterId: String

        attr_accessor :Status, :ClusterId

        def initialize(status=nil, clusterid=nil)
          @Status = status
          @ClusterId = clusterid
        end

        def deserialize(params)
          @Status = params['Status']
          @ClusterId = params['ClusterId']
        end
      end

      # GetGroupList返回参数结构体
      class GetGroupListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 群组数据集合
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              group_tmp = Group.new
              group_tmp.deserialize(i)
              @Result << group_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetLabelList请求参数结构体
      class GetLabelListRequest < TencentCloud::Common::AbstractModel
        # @param PageSize: 每页大小
        # @type PageSize: Integer
        # @param PageNumber: 页码，从1开始
        # @type PageNumber: Integer
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param GroupId: 群组ID
        # @type GroupId: Integer

        attr_accessor :PageSize, :PageNumber, :ClusterId, :GroupId

        def initialize(pagesize=nil, pagenumber=nil, clusterid=nil, groupid=nil)
          @PageSize = pagesize
          @PageNumber = pagenumber
          @ClusterId = clusterid
          @GroupId = groupid
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @ClusterId = params['ClusterId']
          @GroupId = params['GroupId']
        end
      end

      # GetLabelList返回参数结构体
      class GetLabelListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 数据集合
        # @type Result: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :TotalCount, :RequestId

        def initialize(result=nil, totalcount=nil, requestid=nil)
          @Result = result
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @Result << label_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # GetPolicyList请求参数结构体
      class GetPolicyListRequest < TencentCloud::Common::AbstractModel
        # @param DisplayStart: 起始位置
        # @type DisplayStart: Integer
        # @param DisplayLength: 长度
        # @type DisplayLength: Integer

        attr_accessor :DisplayStart, :DisplayLength

        def initialize(displaystart=nil, displaylength=nil)
          @DisplayStart = displaystart
          @DisplayLength = displaylength
        end

        def deserialize(params)
          @DisplayStart = params['DisplayStart']
          @DisplayLength = params['DisplayLength']
        end
      end

      # GetPolicyList返回参数结构体
      class GetPolicyListResponse < TencentCloud::Common::AbstractModel
        # @param PolicyDataList: 策略Policy管理列表
        # @type PolicyDataList: Array
        # @param AllCount: 总数
        # @type AllCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyDataList, :AllCount, :RequestId

        def initialize(policydatalist=nil, allcount=nil, requestid=nil)
          @PolicyDataList = policydatalist
          @AllCount = allcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PolicyDataList'].nil?
            @PolicyDataList = []
            params['PolicyDataList'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @PolicyDataList << policy_tmp
            end
          end
          @AllCount = params['AllCount']
          @RequestId = params['RequestId']
        end
      end

      # GetPublicKey请求参数结构体
      class GetPublicKeyRequest < TencentCloud::Common::AbstractModel
        # @param Did: did的具体号码
        # @type Did: String

        attr_accessor :Did

        def initialize(did=nil)
          @Did = did
        end

        def deserialize(params)
          @Did = params['Did']
        end
      end

      # GetPublicKey返回参数结构体
      class GetPublicKeyResponse < TencentCloud::Common::AbstractModel
        # @param Did: DID的具体信息
        # @type Did: String
        # @param PublicKey: 公钥
        # @type PublicKey: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Did, :PublicKey, :RequestId

        def initialize(did=nil, publickey=nil, requestid=nil)
          @Did = did
          @PublicKey = publickey
          @RequestId = requestid
        end

        def deserialize(params)
          @Did = params['Did']
          @PublicKey = params['PublicKey']
          @RequestId = params['RequestId']
        end
      end

      # 群组
      class Group < TencentCloud::Common::AbstractModel
        # @param GroupId: 群组ID
        # @type GroupId: Integer
        # @param NodeCount: 节点数量
        # @type NodeCount: Integer
        # @param NodeCountOfAgency: 所属机构节点数量
        # @type NodeCountOfAgency: Integer
        # @param Description: 群组描述
        # @type Description: String
        # @param RoleType: 参与角色，盟主或非盟主
        # @type RoleType: Integer
        # @param ChainId: 链id
        # @type ChainId: String

        attr_accessor :GroupId, :NodeCount, :NodeCountOfAgency, :Description, :RoleType, :ChainId

        def initialize(groupid=nil, nodecount=nil, nodecountofagency=nil, description=nil, roletype=nil, chainid=nil)
          @GroupId = groupid
          @NodeCount = nodecount
          @NodeCountOfAgency = nodecountofagency
          @Description = description
          @RoleType = roletype
          @ChainId = chainid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @NodeCount = params['NodeCount']
          @NodeCountOfAgency = params['NodeCountOfAgency']
          @Description = params['Description']
          @RoleType = params['RoleType']
          @ChainId = params['ChainId']
        end
      end

      # did详情
      class Identity < TencentCloud::Common::AbstractModel
        # @param AccountIdentifier: 账户标识符
        # @type AccountIdentifier: String
        # @param ChainID: 链ID
        # @type ChainID: String
        # @param Did: 完整tdid
        # @type Did: String
        # @param GroupId: 群组ID
        # @type GroupId: Integer
        # @param GroupName: 群组名称
        # @type GroupName: String

        attr_accessor :AccountIdentifier, :ChainID, :Did, :GroupId, :GroupName

        def initialize(accountidentifier=nil, chainid=nil, did=nil, groupid=nil, groupname=nil)
          @AccountIdentifier = accountidentifier
          @ChainID = chainid
          @Did = did
          @GroupId = groupid
          @GroupName = groupname
        end

        def deserialize(params)
          @AccountIdentifier = params['AccountIdentifier']
          @ChainID = params['ChainID']
          @Did = params['Did']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
        end
      end

      # 标签
      class Label < TencentCloud::Common::AbstractModel
        # @param LabelId: 标签ID
        # @type LabelId: Integer
        # @param LabelName: 标签名称
        # @type LabelName: String
        # @param DidCount: did数量
        # @type DidCount: Integer
        # @param Did: 创建者did
        # @type Did: String
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param GroupId: 群组ID
        # @type GroupId: Integer

        attr_accessor :LabelId, :LabelName, :DidCount, :Did, :ClusterId, :CreateTime, :GroupId

        def initialize(labelid=nil, labelname=nil, didcount=nil, did=nil, clusterid=nil, createtime=nil, groupid=nil)
          @LabelId = labelid
          @LabelName = labelname
          @DidCount = didcount
          @Did = did
          @ClusterId = clusterid
          @CreateTime = createtime
          @GroupId = groupid
        end

        def deserialize(params)
          @LabelId = params['LabelId']
          @LabelName = params['LabelName']
          @DidCount = params['DidCount']
          @Did = params['Did']
          @ClusterId = params['ClusterId']
          @CreateTime = params['CreateTime']
          @GroupId = params['GroupId']
        end
      end

      # 策略管理
      class Policy < TencentCloud::Common::AbstractModel
        # @param Id: 披露策略索引
        # @type Id: Integer
        # @param Name: 披露策略名称
        # @type Name: String
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param GroupId: 群组ID
        # @type GroupId: Integer
        # @param ServiceId: 服务ID
        # @type ServiceId: Integer
        # @param ContractAppId: 合约应用ID
        # @type ContractAppId: Integer
        # @param PolicyId: 披露策略ID
        # @type PolicyId: Integer
        # @param CptId: 凭证模板ID
        # @type CptId: Integer
        # @param PolicyJson: 策略Json
        # @type PolicyJson: String
        # @param CreateTime: 生成时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param CreatorDid: 创建者DID
        # @type CreatorDid: String
        # @param AppName: 应用名称
        # @type AppName: String
        # @param CptIndex: 模板索引
        # @type CptIndex: Integer

        attr_accessor :Id, :Name, :ClusterId, :GroupId, :ServiceId, :ContractAppId, :PolicyId, :CptId, :PolicyJson, :CreateTime, :UpdateTime, :CreatorDid, :AppName, :CptIndex

        def initialize(id=nil, name=nil, clusterid=nil, groupid=nil, serviceid=nil, contractappid=nil, policyid=nil, cptid=nil, policyjson=nil, createtime=nil, updatetime=nil, creatordid=nil, appname=nil, cptindex=nil)
          @Id = id
          @Name = name
          @ClusterId = clusterid
          @GroupId = groupid
          @ServiceId = serviceid
          @ContractAppId = contractappid
          @PolicyId = policyid
          @CptId = cptid
          @PolicyJson = policyjson
          @CreateTime = createtime
          @UpdateTime = updatetime
          @CreatorDid = creatordid
          @AppName = appname
          @CptIndex = cptindex
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @ClusterId = params['ClusterId']
          @GroupId = params['GroupId']
          @ServiceId = params['ServiceId']
          @ContractAppId = params['ContractAppId']
          @PolicyId = params['PolicyId']
          @CptId = params['CptId']
          @PolicyJson = params['PolicyJson']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @CreatorDid = params['CreatorDid']
          @AppName = params['AppName']
          @CptIndex = params['CptIndex']
        end
      end

      # 验证凭证签名
      class Proof < TencentCloud::Common::AbstractModel
        # @param Created: 创建时间
        # @type Created: Integer
        # @param Creator: 创建着did
        # @type Creator: String
        # @param SaltJson: salt值
        # @type SaltJson: String
        # @param SignatureValue: 签名
        # @type SignatureValue: String
        # @param Type: type类型
        # @type Type: String

        attr_accessor :Created, :Creator, :SaltJson, :SignatureValue, :Type

        def initialize(created=nil, creator=nil, saltjson=nil, signaturevalue=nil, type=nil)
          @Created = created
          @Creator = creator
          @SaltJson = saltjson
          @SignatureValue = signaturevalue
          @Type = type
        end

        def deserialize(params)
          @Created = params['Created']
          @Creator = params['Creator']
          @SaltJson = params['SaltJson']
          @SignatureValue = params['SignatureValue']
          @Type = params['Type']
        end
      end

      # QueryPolicy请求参数结构体
      class QueryPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyIndex: policy索引
        # @type PolicyIndex: Integer

        attr_accessor :PolicyIndex

        def initialize(policyindex=nil)
          @PolicyIndex = policyindex
        end

        def deserialize(params)
          @PolicyIndex = params['PolicyIndex']
        end
      end

      # QueryPolicy返回参数结构体
      class QueryPolicyResponse < TencentCloud::Common::AbstractModel
        # @param Id: 披露策略索引
        # @type Id: Integer
        # @param PolicyId: 披露策略ID
        # @type PolicyId: Integer
        # @param CptId: 凭证模板ID
        # @type CptId: Integer
        # @param PolicyData: 披露策略的具体信息
        # @type PolicyData: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :PolicyId, :CptId, :PolicyData, :RequestId

        def initialize(id=nil, policyid=nil, cptid=nil, policydata=nil, requestid=nil)
          @Id = id
          @PolicyId = policyid
          @CptId = cptid
          @PolicyData = policydata
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @PolicyId = params['PolicyId']
          @CptId = params['CptId']
          @PolicyData = params['PolicyData']
          @RequestId = params['RequestId']
        end
      end

      # RecognizeAuthorityIssuer请求参数结构体
      class RecognizeAuthorityIssuerRequest < TencentCloud::Common::AbstractModel
        # @param Did: did具体信息
        # @type Did: String

        attr_accessor :Did

        def initialize(did=nil)
          @Did = did
        end

        def deserialize(params)
          @Did = params['Did']
        end
      end

      # RecognizeAuthorityIssuer返回参数结构体
      class RecognizeAuthorityIssuerResponse < TencentCloud::Common::AbstractModel
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

      # RegisterClaimPolicy请求参数结构体
      class RegisterClaimPolicyRequest < TencentCloud::Common::AbstractModel
        # @param CptIndex: Cpt索引
        # @type CptIndex: Integer
        # @param Policy: 披露策略
        # @type Policy: String

        attr_accessor :CptIndex, :Policy

        def initialize(cptindex=nil, policy=nil)
          @CptIndex = cptindex
          @Policy = policy
        end

        def deserialize(params)
          @CptIndex = params['CptIndex']
          @Policy = params['Policy']
        end
      end

      # RegisterClaimPolicy返回参数结构体
      class RegisterClaimPolicyResponse < TencentCloud::Common::AbstractModel
        # @param Id: 披露策略索引
        # @type Id: Integer
        # @param PolicyId: 披露策略ID
        # @type PolicyId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :PolicyId, :RequestId

        def initialize(id=nil, policyid=nil, requestid=nil)
          @Id = id
          @PolicyId = policyid
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @PolicyId = params['PolicyId']
          @RequestId = params['RequestId']
        end
      end

      # RegisterCpt请求参数结构体
      class RegisterCptRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 群组ID
        # @type GroupId: Integer
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param CptJson: CptJson的具体信息
        # @type CptJson: String
        # @param CptId: cptId 不填默认自增
        # @type CptId: Integer

        attr_accessor :GroupId, :ClusterId, :CptJson, :CptId

        def initialize(groupid=nil, clusterid=nil, cptjson=nil, cptid=nil)
          @GroupId = groupid
          @ClusterId = clusterid
          @CptJson = cptjson
          @CptId = cptid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @ClusterId = params['ClusterId']
          @CptJson = params['CptJson']
          @CptId = params['CptId']
        end
      end

      # RegisterCpt返回参数结构体
      class RegisterCptResponse < TencentCloud::Common::AbstractModel
        # @param Id: 凭证模板索引
        # @type Id: Integer
        # @param CptId: 凭证模板id
        # @type CptId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :CptId, :RequestId

        def initialize(id=nil, cptid=nil, requestid=nil)
          @Id = id
          @CptId = cptid
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @CptId = params['CptId']
          @RequestId = params['RequestId']
        end
      end

      # RegisterIssuer请求参数结构体
      class RegisterIssuerRequest < TencentCloud::Common::AbstractModel
        # @param Did: tdid
        # @type Did: String
        # @param Name: 权威机构名称
        # @type Name: String
        # @param Description: 备注
        # @type Description: String

        attr_accessor :Did, :Name, :Description

        def initialize(did=nil, name=nil, description=nil)
          @Did = did
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @Did = params['Did']
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # RegisterIssuer返回参数结构体
      class RegisterIssuerResponse < TencentCloud::Common::AbstractModel
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

      # RemoveHash请求参数结构体
      class RemoveHashRequest < TencentCloud::Common::AbstractModel
        # @param Hash: 合约CNS地址
        # @type Hash: String

        attr_accessor :Hash

        def initialize(hash=nil)
          @Hash = hash
        end

        def deserialize(params)
          @Hash = params['Hash']
        end
      end

      # RemoveHash返回参数结构体
      class RemoveHashResponse < TencentCloud::Common::AbstractModel
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

      # SetCredentialStatus请求参数结构体
      class SetCredentialStatusRequest < TencentCloud::Common::AbstractModel
        # @param CredentialStatus: 凭证状态
        # @type CredentialStatus: :class:`Tencentcloud::Tdid.v20210519.models.CredentialStatus`

        attr_accessor :CredentialStatus

        def initialize(credentialstatus=nil)
          @CredentialStatus = credentialstatus
        end

        def deserialize(params)
          unless params['CredentialStatus'].nil?
            @CredentialStatus = CredentialStatus.new
            @CredentialStatus.deserialize(params['CredentialStatus'])
          end
        end
      end

      # SetCredentialStatus返回参数结构体
      class SetCredentialStatusResponse < TencentCloud::Common::AbstractModel
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

      # CreateDidService、CheckDidDeploy出参
      class Task < TencentCloud::Common::AbstractModel
        # @param Id: 任务ID
        # @type Id: Integer
        # @param AppId: 应用ID
        # @type AppId: Integer
        # @param ClusterId: 网络ID
        # @type ClusterId: String
        # @param GroupId: 群组ID
        # @type GroupId: Integer
        # @param ServiceId: 服务ID
        # @type ServiceId: Integer
        # @param Status: 0: 部署中，1:部署成功，其他失败
        # @type Status: Integer
        # @param ErrorCode: 错误码
        # @type ErrorCode: String
        # @param ErrorMsg: 错误提示
        # @type ErrorMsg: String
        # @param CreateTime: 生成时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :Id, :AppId, :ClusterId, :GroupId, :ServiceId, :Status, :ErrorCode, :ErrorMsg, :CreateTime, :UpdateTime

        def initialize(id=nil, appid=nil, clusterid=nil, groupid=nil, serviceid=nil, status=nil, errorcode=nil, errormsg=nil, createtime=nil, updatetime=nil)
          @Id = id
          @AppId = appid
          @ClusterId = clusterid
          @GroupId = groupid
          @ServiceId = serviceid
          @Status = status
          @ErrorCode = errorcode
          @ErrorMsg = errormsg
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Id = params['Id']
          @AppId = params['AppId']
          @ClusterId = params['ClusterId']
          @GroupId = params['GroupId']
          @ServiceId = params['ServiceId']
          @Status = params['Status']
          @ErrorCode = params['ErrorCode']
          @ErrorMsg = params['ErrorMsg']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 创建凭证第二个
      class TransactionArg < TencentCloud::Common::AbstractModel
        # @param InvokerTDid: 凭证did
        # @type InvokerTDid: String

        attr_accessor :InvokerTDid

        def initialize(invokertdid=nil)
          @InvokerTDid = invokertdid
        end

        def deserialize(params)
          @InvokerTDid = params['InvokerTDid']
        end
      end

      # 趋势
      class Trend < TencentCloud::Common::AbstractModel
        # @param Time: 时间点
        # @type Time: String
        # @param Count: 数量
        # @type Count: Integer

        attr_accessor :Time, :Count

        def initialize(time=nil, count=nil)
          @Time = time
          @Count = count
        end

        def deserialize(params)
          @Time = params['Time']
          @Count = params['Count']
        end
      end

      # VerifyCredential请求参数结构体
      class VerifyCredentialRequest < TencentCloud::Common::AbstractModel
        # @param FunctionArg: 参数集合
        # @type FunctionArg: :class:`Tencentcloud::Tdid.v20210519.models.VerifyFunctionArg`

        attr_accessor :FunctionArg

        def initialize(functionarg=nil)
          @FunctionArg = functionarg
        end

        def deserialize(params)
          unless params['FunctionArg'].nil?
            @FunctionArg = VerifyFunctionArg.new
            @FunctionArg.deserialize(params['FunctionArg'])
          end
        end
      end

      # VerifyCredential返回参数结构体
      class VerifyCredentialResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否验证成功
        # @type Result: Boolean
        # @param VerifyCode: 验证返回码
        # @type VerifyCode: Integer
        # @param VerifyMessage: 验证消息
        # @type VerifyMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :VerifyCode, :VerifyMessage, :RequestId

        def initialize(result=nil, verifycode=nil, verifymessage=nil, requestid=nil)
          @Result = result
          @VerifyCode = verifycode
          @VerifyMessage = verifymessage
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @VerifyCode = params['VerifyCode']
          @VerifyMessage = params['VerifyMessage']
          @RequestId = params['RequestId']
        end
      end

      # 验证凭证参数值
      class VerifyFunctionArg < TencentCloud::Common::AbstractModel
        # @param CptId: CPT ID
        # @type CptId: Integer
        # @param Issuer: issuer did
        # @type Issuer: String
        # @param ExpirationDate: 过期时间
        # @type ExpirationDate: Integer
        # @param ClaimJson: 声明
        # @type ClaimJson: String
        # @param IssuanceDate: 颁发时间
        # @type IssuanceDate: Integer
        # @param Context: context值
        # @type Context: String
        # @param Id: id值
        # @type Id: String
        # @param Proof: 签名值
        # @type Proof: :class:`Tencentcloud::Tdid.v20210519.models.Proof`
        # @param Type: type值
        # @type Type: Array

        attr_accessor :CptId, :Issuer, :ExpirationDate, :ClaimJson, :IssuanceDate, :Context, :Id, :Proof, :Type

        def initialize(cptid=nil, issuer=nil, expirationdate=nil, claimjson=nil, issuancedate=nil, context=nil, id=nil, proof=nil, type=nil)
          @CptId = cptid
          @Issuer = issuer
          @ExpirationDate = expirationdate
          @ClaimJson = claimjson
          @IssuanceDate = issuancedate
          @Context = context
          @Id = id
          @Proof = proof
          @Type = type
        end

        def deserialize(params)
          @CptId = params['CptId']
          @Issuer = params['Issuer']
          @ExpirationDate = params['ExpirationDate']
          @ClaimJson = params['ClaimJson']
          @IssuanceDate = params['IssuanceDate']
          @Context = params['Context']
          @Id = params['Id']
          unless params['Proof'].nil?
            @Proof = Proof.new
            @Proof.deserialize(params['Proof'])
          end
          @Type = params['Type']
        end
      end

    end
  end
end

