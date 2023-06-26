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

