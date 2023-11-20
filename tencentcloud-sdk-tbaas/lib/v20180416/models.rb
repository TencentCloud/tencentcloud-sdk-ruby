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
  module Tbaas
    module V20180416
      # ApplyChainMakerBatchUserCert请求参数结构体
      class ApplyChainMakerBatchUserCertRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param SignUserCsrList: 证书标识和证书请求文件，可参考TBaaS证书生成相关文档生成证书请求文件
        # @type SignUserCsrList: Array

        attr_accessor :ClusterId, :SignUserCsrList

        def initialize(clusterid=nil, signusercsrlist=nil)
          @ClusterId = clusterid
          @SignUserCsrList = signusercsrlist
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['SignUserCsrList'].nil?
            @SignUserCsrList = []
            params['SignUserCsrList'].each do |i|
              signcertcsr_tmp = SignCertCsr.new
              signcertcsr_tmp.deserialize(i)
              @SignUserCsrList << signcertcsr_tmp
            end
          end
        end
      end

      # ApplyChainMakerBatchUserCert返回参数结构体
      class ApplyChainMakerBatchUserCertResponse < TencentCloud::Common::AbstractModel
        # @param SignUserCrtList: 成功生成的用户证书的base64编码字符串列表，与SignUserCsrList一一对应
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignUserCrtList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SignUserCrtList, :RequestId

        def initialize(signusercrtlist=nil, requestid=nil)
          @SignUserCrtList = signusercrtlist
          @RequestId = requestid
        end

        def deserialize(params)
          @SignUserCrtList = params['SignUserCrtList']
          @RequestId = params['RequestId']
        end
      end

      # ApplyUserCert请求参数结构体
      class ApplyUserCertRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，固定字段：cert_mng
        # @type Module: String
        # @param Operation: 操作名，固定字段：cert_apply_for_user
        # @type Operation: String
        # @param ClusterId: 区块链网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param GroupName: 申请证书的组织名称，可以在组织管理列表中获取当前组织的名称
        # @type GroupName: String
        # @param UserIdentity: 用户证书标识，用于标识用户证书，要求由纯小写字母组成，长度小于10
        # @type UserIdentity: String
        # @param Applicant: 证书申请实体，使用腾讯云账号实名认证的名称
        # @type Applicant: String
        # @param IdentityNum: 证件号码。如果腾讯云账号对应的实名认证类型为企业认证，填入“0”；如果腾讯云账号对应的实名认证类型为个人认证，填入个人身份证号码
        # @type IdentityNum: String
        # @param CsrData: csr p10证书文件。需要用户根据文档生成证书的CSR文件
        # @type CsrData: String
        # @param Notes: 证书备注信息
        # @type Notes: String

        attr_accessor :Module, :Operation, :ClusterId, :GroupName, :UserIdentity, :Applicant, :IdentityNum, :CsrData, :Notes

        def initialize(_module=nil, operation=nil, clusterid=nil, groupname=nil, useridentity=nil, applicant=nil, identitynum=nil, csrdata=nil, notes=nil)
          @Module = _module
          @Operation = operation
          @ClusterId = clusterid
          @GroupName = groupname
          @UserIdentity = useridentity
          @Applicant = applicant
          @IdentityNum = identitynum
          @CsrData = csrdata
          @Notes = notes
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @ClusterId = params['ClusterId']
          @GroupName = params['GroupName']
          @UserIdentity = params['UserIdentity']
          @Applicant = params['Applicant']
          @IdentityNum = params['IdentityNum']
          @CsrData = params['CsrData']
          @Notes = params['Notes']
        end
      end

      # ApplyUserCert返回参数结构体
      class ApplyUserCertResponse < TencentCloud::Common::AbstractModel
        # @param CertId: 证书ID
        # @type CertId: Integer
        # @param CertDn: 证书DN
        # @type CertDn: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertId, :CertDn, :RequestId

        def initialize(certid=nil, certdn=nil, requestid=nil)
          @CertId = certid
          @CertDn = certdn
          @RequestId = requestid
        end

        def deserialize(params)
          @CertId = params['CertId']
          @CertDn = params['CertDn']
          @RequestId = params['RequestId']
        end
      end

      # 区块对象
      class Block < TencentCloud::Common::AbstractModel
        # @param BlockNum: 区块编号
        # @type BlockNum: Integer
        # @param DataHash: 区块数据Hash数值
        # @type DataHash: String
        # @param BlockId: 区块ID，与区块编号一致
        # @type BlockId: Integer
        # @param PreHash: 前一个区块Hash
        # @type PreHash: String
        # @param TxCount: 区块内的交易数量
        # @type TxCount: Integer

        attr_accessor :BlockNum, :DataHash, :BlockId, :PreHash, :TxCount

        def initialize(blocknum=nil, datahash=nil, blockid=nil, prehash=nil, txcount=nil)
          @BlockNum = blocknum
          @DataHash = datahash
          @BlockId = blockid
          @PreHash = prehash
          @TxCount = txcount
        end

        def deserialize(params)
          @BlockNum = params['BlockNum']
          @DataHash = params['DataHash']
          @BlockId = params['BlockId']
          @PreHash = params['PreHash']
          @TxCount = params['TxCount']
        end
      end

      # 长安链合约执行结果
      class ChainMakerContractResult < TencentCloud::Common::AbstractModel
        # @param Code: 交易结果码
        # @type Code: Integer
        # @param CodeMessage: 交易结果码含义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeMessage: String
        # @param TxId: 交易ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TxId: String
        # @param GasUsed: Gas使用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GasUsed: Integer
        # @param Message: 合约返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Result: 合约函数返回，base64编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String

        attr_accessor :Code, :CodeMessage, :TxId, :GasUsed, :Message, :Result

        def initialize(code=nil, codemessage=nil, txid=nil, gasused=nil, message=nil, result=nil)
          @Code = code
          @CodeMessage = codemessage
          @TxId = txid
          @GasUsed = gasused
          @Message = message
          @Result = result
        end

        def deserialize(params)
          @Code = params['Code']
          @CodeMessage = params['CodeMessage']
          @TxId = params['TxId']
          @GasUsed = params['GasUsed']
          @Message = params['Message']
          @Result = params['Result']
        end
      end

      # 长安链交易查询结果
      class ChainMakerTransactionResult < TencentCloud::Common::AbstractModel
        # @param Code: 交易结果码
        # @type Code: Integer
        # @param CodeMessage: 交易结果码含义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeMessage: String
        # @param TxId: 交易ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TxId: String
        # @param GasUsed: Gas使用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GasUsed: Integer
        # @param BlockHeight: 区块高度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlockHeight: Integer
        # @param ContractEvent: 合约执行结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractEvent: String
        # @param Message: 合约返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Timestamp: 交易时间，单位是秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: Integer

        attr_accessor :Code, :CodeMessage, :TxId, :GasUsed, :BlockHeight, :ContractEvent, :Message, :Timestamp

        def initialize(code=nil, codemessage=nil, txid=nil, gasused=nil, blockheight=nil, contractevent=nil, message=nil, timestamp=nil)
          @Code = code
          @CodeMessage = codemessage
          @TxId = txid
          @GasUsed = gasused
          @BlockHeight = blockheight
          @ContractEvent = contractevent
          @Message = message
          @Timestamp = timestamp
        end

        def deserialize(params)
          @Code = params['Code']
          @CodeMessage = params['CodeMessage']
          @TxId = params['TxId']
          @GasUsed = params['GasUsed']
          @BlockHeight = params['BlockHeight']
          @ContractEvent = params['ContractEvent']
          @Message = params['Message']
          @Timestamp = params['Timestamp']
        end
      end

      # DescribeFabricBlock请求参数结构体
      class DescribeFabricBlockRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param ChannelId: 通道ID，可在通道列表或通道详情获取
        # @type ChannelId: String
        # @param BlockHeight: 区块高度，从0开始
        # @type BlockHeight: Integer

        attr_accessor :ClusterId, :ChannelId, :BlockHeight

        def initialize(clusterid=nil, channelid=nil, blockheight=nil)
          @ClusterId = clusterid
          @ChannelId = channelid
          @BlockHeight = blockheight
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ChannelId = params['ChannelId']
          @BlockHeight = params['BlockHeight']
        end
      end

      # DescribeFabricBlock返回参数结构体
      class DescribeFabricBlockResponse < TencentCloud::Common::AbstractModel
        # @param BlockHeight: 区块高度
        # @type BlockHeight: Integer
        # @param BlockHash: 区块Hash
        # @type BlockHash: String
        # @param PreBlockHash: 前置区块Hash
        # @type PreBlockHash: String
        # @param TxCount: 区块中交易数量
        # @type TxCount: Integer
        # @param TransactionList: 区块中交易列表
        # @type TransactionList: Array
        # @param CreateTimestamp: 创建时间戳
        # @type CreateTimestamp: String
        # @param ProposerOrg: 提案组织
        # @type ProposerOrg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BlockHeight, :BlockHash, :PreBlockHash, :TxCount, :TransactionList, :CreateTimestamp, :ProposerOrg, :RequestId

        def initialize(blockheight=nil, blockhash=nil, preblockhash=nil, txcount=nil, transactionlist=nil, createtimestamp=nil, proposerorg=nil, requestid=nil)
          @BlockHeight = blockheight
          @BlockHash = blockhash
          @PreBlockHash = preblockhash
          @TxCount = txcount
          @TransactionList = transactionlist
          @CreateTimestamp = createtimestamp
          @ProposerOrg = proposerorg
          @RequestId = requestid
        end

        def deserialize(params)
          @BlockHeight = params['BlockHeight']
          @BlockHash = params['BlockHash']
          @PreBlockHash = params['PreBlockHash']
          @TxCount = params['TxCount']
          unless params['TransactionList'].nil?
            @TransactionList = []
            params['TransactionList'].each do |i|
              transaction_tmp = Transaction.new
              transaction_tmp.deserialize(i)
              @TransactionList << transaction_tmp
            end
          end
          @CreateTimestamp = params['CreateTimestamp']
          @ProposerOrg = params['ProposerOrg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFabricTransaction请求参数结构体
      class DescribeFabricTransactionRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param ChannelId: 通道ID，可在通道列表或通道详情获取
        # @type ChannelId: String
        # @param TxId: 交易ID
        # @type TxId: String

        attr_accessor :ClusterId, :ChannelId, :TxId

        def initialize(clusterid=nil, channelid=nil, txid=nil)
          @ClusterId = clusterid
          @ChannelId = channelid
          @TxId = txid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ChannelId = params['ChannelId']
          @TxId = params['TxId']
        end
      end

      # DescribeFabricTransaction返回参数结构体
      class DescribeFabricTransactionResponse < TencentCloud::Common::AbstractModel
        # @param TxId: 交易ID
        # @type TxId: String
        # @param TxHash: 交易Hash
        # @type TxHash: String
        # @param TxStatus: 交易状态
        # @type TxStatus: String
        # @param JoinOrgList: 参与的组织列表
        # @type JoinOrgList: Array
        # @param Sender: 交易发送者
        # @type Sender: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param BlockHeight: 区块高度
        # @type BlockHeight: Integer
        # @param ChaincodeName: 交易所属合约
        # @type ChaincodeName: String
        # @param TransactionData: 交易数据，base64编码，解码后为json化的字符串
        # @type TransactionData: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxId, :TxHash, :TxStatus, :JoinOrgList, :Sender, :CreateTime, :BlockHeight, :ChaincodeName, :TransactionData, :RequestId

        def initialize(txid=nil, txhash=nil, txstatus=nil, joinorglist=nil, sender=nil, createtime=nil, blockheight=nil, chaincodename=nil, transactiondata=nil, requestid=nil)
          @TxId = txid
          @TxHash = txhash
          @TxStatus = txstatus
          @JoinOrgList = joinorglist
          @Sender = sender
          @CreateTime = createtime
          @BlockHeight = blockheight
          @ChaincodeName = chaincodename
          @TransactionData = transactiondata
          @RequestId = requestid
        end

        def deserialize(params)
          @TxId = params['TxId']
          @TxHash = params['TxHash']
          @TxStatus = params['TxStatus']
          @JoinOrgList = params['JoinOrgList']
          @Sender = params['Sender']
          @CreateTime = params['CreateTime']
          @BlockHeight = params['BlockHeight']
          @ChaincodeName = params['ChaincodeName']
          @TransactionData = params['TransactionData']
          @RequestId = params['RequestId']
        end
      end

      # DownloadUserCert请求参数结构体
      class DownloadUserCertRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，固定字段：cert_mng
        # @type Module: String
        # @param Operation: 操作名，固定字段：cert_download_for_user
        # @type Operation: String
        # @param CertId: 证书ID，可以在证书详情页面获取
        # @type CertId: Integer
        # @param CertDn: 证书DN，可以在证书详情页面获取
        # @type CertDn: String
        # @param ClusterId: 区块链网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param GroupName: 下载证书的组织名称，可以在组织管理列表中获取当前组织的名称
        # @type GroupName: String

        attr_accessor :Module, :Operation, :CertId, :CertDn, :ClusterId, :GroupName

        def initialize(_module=nil, operation=nil, certid=nil, certdn=nil, clusterid=nil, groupname=nil)
          @Module = _module
          @Operation = operation
          @CertId = certid
          @CertDn = certdn
          @ClusterId = clusterid
          @GroupName = groupname
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @CertId = params['CertId']
          @CertDn = params['CertDn']
          @ClusterId = params['ClusterId']
          @GroupName = params['GroupName']
        end
      end

      # DownloadUserCert返回参数结构体
      class DownloadUserCertResponse < TencentCloud::Common::AbstractModel
        # @param CertName: 证书名称
        # @type CertName: String
        # @param CertCtx: 证书内容
        # @type CertCtx: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertName, :CertCtx, :RequestId

        def initialize(certname=nil, certctx=nil, requestid=nil)
          @CertName = certname
          @CertCtx = certctx
          @RequestId = requestid
        end

        def deserialize(params)
          @CertName = params['CertName']
          @CertCtx = params['CertCtx']
          @RequestId = params['RequestId']
        end
      end

      # 背书组织及其节点列表
      class EndorserGroup < TencentCloud::Common::AbstractModel
        # @param EndorserGroupName: 背书组织名称
        # @type EndorserGroupName: String
        # @param EndorserPeerList: 背书节点列表
        # @type EndorserPeerList: Array

        attr_accessor :EndorserGroupName, :EndorserPeerList

        def initialize(endorsergroupname=nil, endorserpeerlist=nil)
          @EndorserGroupName = endorsergroupname
          @EndorserPeerList = endorserpeerlist
        end

        def deserialize(params)
          @EndorserGroupName = params['EndorserGroupName']
          @EndorserPeerList = params['EndorserPeerList']
        end
      end

      # GetBlockList请求参数结构体
      class GetBlockListRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名称，固定字段：block
        # @type Module: String
        # @param Operation: 操作名称，固定字段：block_list
        # @type Operation: String
        # @param ChannelId: 通道ID，固定字段：0
        # @type ChannelId: Integer
        # @param GroupId: 组织ID，固定字段：0
        # @type GroupId: Integer
        # @param ChannelName: 需要查询的通道名称，可在通道详情或列表中获取
        # @type ChannelName: String
        # @param GroupName: 调用接口的组织名称，可以在组织管理列表中获取当前组织的名称
        # @type GroupName: String
        # @param ClusterId: 区块链网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param Offset: 需要获取的起始交易偏移
        # @type Offset: Integer
        # @param Limit: 需要获取的交易数量
        # @type Limit: Integer

        attr_accessor :Module, :Operation, :ChannelId, :GroupId, :ChannelName, :GroupName, :ClusterId, :Offset, :Limit

        def initialize(_module=nil, operation=nil, channelid=nil, groupid=nil, channelname=nil, groupname=nil, clusterid=nil, offset=nil, limit=nil)
          @Module = _module
          @Operation = operation
          @ChannelId = channelid
          @GroupId = groupid
          @ChannelName = channelname
          @GroupName = groupname
          @ClusterId = clusterid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @ChannelId = params['ChannelId']
          @GroupId = params['GroupId']
          @ChannelName = params['ChannelName']
          @GroupName = params['GroupName']
          @ClusterId = params['ClusterId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetBlockList返回参数结构体
      class GetBlockListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 区块数量
        # @type TotalCount: Integer
        # @param BlockList: 区块列表
        # @type BlockList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BlockList, :RequestId

        def initialize(totalcount=nil, blocklist=nil, requestid=nil)
          @TotalCount = totalcount
          @BlockList = blocklist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BlockList'].nil?
            @BlockList = []
            params['BlockList'].each do |i|
              block_tmp = Block.new
              block_tmp.deserialize(i)
              @BlockList << block_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetBlockTransactionListForUser请求参数结构体
      class GetBlockTransactionListForUserRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，固定字段：transaction
        # @type Module: String
        # @param Operation: 操作名，固定字段：block_transaction_list_for_user
        # @type Operation: String
        # @param ClusterId: 区块链网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param GroupName: 参与交易的组织名称，可以在组织管理列表中获取当前组织的名称
        # @type GroupName: String
        # @param ChannelName: 业务所属通道名称，可在通道详情或列表中获取
        # @type ChannelName: String
        # @param BlockId: 区块ID，通过GetInvokeTx接口可以获取交易所在的区块ID
        # @type BlockId: Integer
        # @param Offset: 查询的交易列表起始偏移地址
        # @type Offset: Integer
        # @param Limit: 查询的交易列表数量
        # @type Limit: Integer

        attr_accessor :Module, :Operation, :ClusterId, :GroupName, :ChannelName, :BlockId, :Offset, :Limit

        def initialize(_module=nil, operation=nil, clusterid=nil, groupname=nil, channelname=nil, blockid=nil, offset=nil, limit=nil)
          @Module = _module
          @Operation = operation
          @ClusterId = clusterid
          @GroupName = groupname
          @ChannelName = channelname
          @BlockId = blockid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @ClusterId = params['ClusterId']
          @GroupName = params['GroupName']
          @ChannelName = params['ChannelName']
          @BlockId = params['BlockId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetBlockTransactionListForUser返回参数结构体
      class GetBlockTransactionListForUserResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 交易总数量
        # @type TotalCount: Integer
        # @param TransactionList: 交易列表
        # @type TransactionList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TransactionList, :RequestId

        def initialize(totalcount=nil, transactionlist=nil, requestid=nil)
          @TotalCount = totalcount
          @TransactionList = transactionlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TransactionList'].nil?
            @TransactionList = []
            params['TransactionList'].each do |i|
              transactionitem_tmp = TransactionItem.new
              transactionitem_tmp.deserialize(i)
              @TransactionList << transactionitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetClusterSummary请求参数结构体
      class GetClusterSummaryRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名称，固定字段：cluster_mng
        # @type Module: String
        # @param Operation: 操作名称，固定字段：cluster_summary
        # @type Operation: String
        # @param ClusterId: 区块链网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param GroupId: 组织ID，固定字段：0
        # @type GroupId: Integer
        # @param GroupName: 调用接口的组织名称，可以在组织管理列表中获取当前组织的名称
        # @type GroupName: String

        attr_accessor :Module, :Operation, :ClusterId, :GroupId, :GroupName

        def initialize(_module=nil, operation=nil, clusterid=nil, groupid=nil, groupname=nil)
          @Module = _module
          @Operation = operation
          @ClusterId = clusterid
          @GroupId = groupid
          @GroupName = groupname
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @ClusterId = params['ClusterId']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
        end
      end

      # GetClusterSummary返回参数结构体
      class GetClusterSummaryResponse < TencentCloud::Common::AbstractModel
        # @param TotalChannelCount: 网络通道总数量
        # @type TotalChannelCount: Integer
        # @param MyChannelCount: 当前组织创建的通道数量
        # @type MyChannelCount: Integer
        # @param JoinChannelCount: 当前组织加入的通道数量
        # @type JoinChannelCount: Integer
        # @param TotalPeerCount: 网络节点总数量
        # @type TotalPeerCount: Integer
        # @param MyPeerCount: 当前组织创建的节点数量
        # @type MyPeerCount: Integer
        # @param OrderCount: 其他组织创建的节点数量
        # @type OrderCount: Integer
        # @param TotalGroupCount: 网络组织总数量
        # @type TotalGroupCount: Integer
        # @param MyGroupCount: 当前组织创建的组织数量
        # @type MyGroupCount: Integer
        # @param TotalChaincodeCount: 网络智能合约总数量
        # @type TotalChaincodeCount: Integer
        # @param RecentChaincodeCount: 最近7天发起的智能合约数量
        # @type RecentChaincodeCount: Integer
        # @param MyChaincodeCount: 当前组织发起的智能合约数量
        # @type MyChaincodeCount: Integer
        # @param TotalCertCount: 当前组织的证书总数量
        # @type TotalCertCount: Integer
        # @param TlsCertCount: 颁发给当前组织的证书数量
        # @type TlsCertCount: Integer
        # @param PeerCertCount: 网络背书节点证书数量
        # @type PeerCertCount: Integer
        # @param ClientCertCount: 当前组织业务证书数量
        # @type ClientCertCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalChannelCount, :MyChannelCount, :JoinChannelCount, :TotalPeerCount, :MyPeerCount, :OrderCount, :TotalGroupCount, :MyGroupCount, :TotalChaincodeCount, :RecentChaincodeCount, :MyChaincodeCount, :TotalCertCount, :TlsCertCount, :PeerCertCount, :ClientCertCount, :RequestId

        def initialize(totalchannelcount=nil, mychannelcount=nil, joinchannelcount=nil, totalpeercount=nil, mypeercount=nil, ordercount=nil, totalgroupcount=nil, mygroupcount=nil, totalchaincodecount=nil, recentchaincodecount=nil, mychaincodecount=nil, totalcertcount=nil, tlscertcount=nil, peercertcount=nil, clientcertcount=nil, requestid=nil)
          @TotalChannelCount = totalchannelcount
          @MyChannelCount = mychannelcount
          @JoinChannelCount = joinchannelcount
          @TotalPeerCount = totalpeercount
          @MyPeerCount = mypeercount
          @OrderCount = ordercount
          @TotalGroupCount = totalgroupcount
          @MyGroupCount = mygroupcount
          @TotalChaincodeCount = totalchaincodecount
          @RecentChaincodeCount = recentchaincodecount
          @MyChaincodeCount = mychaincodecount
          @TotalCertCount = totalcertcount
          @TlsCertCount = tlscertcount
          @PeerCertCount = peercertcount
          @ClientCertCount = clientcertcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalChannelCount = params['TotalChannelCount']
          @MyChannelCount = params['MyChannelCount']
          @JoinChannelCount = params['JoinChannelCount']
          @TotalPeerCount = params['TotalPeerCount']
          @MyPeerCount = params['MyPeerCount']
          @OrderCount = params['OrderCount']
          @TotalGroupCount = params['TotalGroupCount']
          @MyGroupCount = params['MyGroupCount']
          @TotalChaincodeCount = params['TotalChaincodeCount']
          @RecentChaincodeCount = params['RecentChaincodeCount']
          @MyChaincodeCount = params['MyChaincodeCount']
          @TotalCertCount = params['TotalCertCount']
          @TlsCertCount = params['TlsCertCount']
          @PeerCertCount = params['PeerCertCount']
          @ClientCertCount = params['ClientCertCount']
          @RequestId = params['RequestId']
        end
      end

      # GetInvokeTx请求参数结构体
      class GetInvokeTxRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，固定字段：transaction
        # @type Module: String
        # @param Operation: 操作名，固定字段：query_txid
        # @type Operation: String
        # @param ClusterId: 区块链网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param ChannelName: 业务所属通道名称，可在通道详情或列表中获取
        # @type ChannelName: String
        # @param PeerName: 执行该查询交易的节点名称，可以在通道详情中获取该通道上的节点名称及其所属组织名称
        # @type PeerName: String
        # @param PeerGroup: 执行该查询交易的节点所属组织名称，可以在通道详情中获取该通道上的节点名称及其所属组织名称
        # @type PeerGroup: String
        # @param TxId: 交易ID
        # @type TxId: String
        # @param GroupName: 调用合约的组织名称，可以在组织管理列表中获取当前组织的名称
        # @type GroupName: String

        attr_accessor :Module, :Operation, :ClusterId, :ChannelName, :PeerName, :PeerGroup, :TxId, :GroupName

        def initialize(_module=nil, operation=nil, clusterid=nil, channelname=nil, peername=nil, peergroup=nil, txid=nil, groupname=nil)
          @Module = _module
          @Operation = operation
          @ClusterId = clusterid
          @ChannelName = channelname
          @PeerName = peername
          @PeerGroup = peergroup
          @TxId = txid
          @GroupName = groupname
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @ClusterId = params['ClusterId']
          @ChannelName = params['ChannelName']
          @PeerName = params['PeerName']
          @PeerGroup = params['PeerGroup']
          @TxId = params['TxId']
          @GroupName = params['GroupName']
        end
      end

      # GetInvokeTx返回参数结构体
      class GetInvokeTxResponse < TencentCloud::Common::AbstractModel
        # @param TxValidationCode: 交易执行状态码
        # @type TxValidationCode: Integer
        # @param TxValidationMsg: 交易执行消息
        # @type TxValidationMsg: String
        # @param BlockId: 交易所在区块ID
        # @type BlockId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxValidationCode, :TxValidationMsg, :BlockId, :RequestId

        def initialize(txvalidationcode=nil, txvalidationmsg=nil, blockid=nil, requestid=nil)
          @TxValidationCode = txvalidationcode
          @TxValidationMsg = txvalidationmsg
          @BlockId = blockid
          @RequestId = requestid
        end

        def deserialize(params)
          @TxValidationCode = params['TxValidationCode']
          @TxValidationMsg = params['TxValidationMsg']
          @BlockId = params['BlockId']
          @RequestId = params['RequestId']
        end
      end

      # GetLatesdTransactionList请求参数结构体
      class GetLatesdTransactionListRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名称，固定字段：transaction
        # @type Module: String
        # @param Operation: 操作名称，固定字段：latest_transaction_list
        # @type Operation: String
        # @param GroupId: 组织ID，固定字段：0
        # @type GroupId: Integer
        # @param ChannelId: 通道ID，固定字段：0
        # @type ChannelId: Integer
        # @param LatestBlockNumber: 获取的最新交易的区块数量，取值范围1~5
        # @type LatestBlockNumber: Integer
        # @param GroupName: 调用接口的组织名称，可以在组织管理列表中获取当前组织的名称
        # @type GroupName: String
        # @param ChannelName: 需要查询的通道名称，可在通道详情或列表中获取
        # @type ChannelName: String
        # @param ClusterId: 区块链网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param Offset: 需要获取的起始交易偏移
        # @type Offset: Integer
        # @param Limit: 需要获取的交易数量
        # @type Limit: Integer

        attr_accessor :Module, :Operation, :GroupId, :ChannelId, :LatestBlockNumber, :GroupName, :ChannelName, :ClusterId, :Offset, :Limit

        def initialize(_module=nil, operation=nil, groupid=nil, channelid=nil, latestblocknumber=nil, groupname=nil, channelname=nil, clusterid=nil, offset=nil, limit=nil)
          @Module = _module
          @Operation = operation
          @GroupId = groupid
          @ChannelId = channelid
          @LatestBlockNumber = latestblocknumber
          @GroupName = groupname
          @ChannelName = channelname
          @ClusterId = clusterid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @GroupId = params['GroupId']
          @ChannelId = params['ChannelId']
          @LatestBlockNumber = params['LatestBlockNumber']
          @GroupName = params['GroupName']
          @ChannelName = params['ChannelName']
          @ClusterId = params['ClusterId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetLatesdTransactionList返回参数结构体
      class GetLatesdTransactionListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 交易总数量
        # @type TotalCount: Integer
        # @param TransactionList: 交易列表
        # @type TransactionList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TransactionList, :RequestId

        def initialize(totalcount=nil, transactionlist=nil, requestid=nil)
          @TotalCount = totalcount
          @TransactionList = transactionlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TransactionList'].nil?
            @TransactionList = []
            params['TransactionList'].each do |i|
              transactionitem_tmp = TransactionItem.new
              transactionitem_tmp.deserialize(i)
              @TransactionList << transactionitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetLatestTransactionList请求参数结构体
      class GetLatestTransactionListRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名称，固定字段：transaction
        # @type Module: String
        # @param Operation: 操作名称，固定字段：latest_transaction_list
        # @type Operation: String
        # @param GroupId: 组织ID，固定字段：0
        # @type GroupId: Integer
        # @param ChannelId: 通道ID，固定字段：0
        # @type ChannelId: Integer
        # @param LatestBlockNumber: 获取的最新交易的区块数量，取值范围1~5
        # @type LatestBlockNumber: Integer
        # @param GroupName: 调用接口的组织名称，可以在组织管理列表中获取当前组织的名称
        # @type GroupName: String
        # @param ChannelName: 需要查询的通道名称，可在通道详情或列表中获取
        # @type ChannelName: String
        # @param ClusterId: 区块链网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param Offset: 需要获取的起始交易偏移
        # @type Offset: Integer
        # @param Limit: 需要获取的交易数量
        # @type Limit: Integer

        attr_accessor :Module, :Operation, :GroupId, :ChannelId, :LatestBlockNumber, :GroupName, :ChannelName, :ClusterId, :Offset, :Limit

        def initialize(_module=nil, operation=nil, groupid=nil, channelid=nil, latestblocknumber=nil, groupname=nil, channelname=nil, clusterid=nil, offset=nil, limit=nil)
          @Module = _module
          @Operation = operation
          @GroupId = groupid
          @ChannelId = channelid
          @LatestBlockNumber = latestblocknumber
          @GroupName = groupname
          @ChannelName = channelname
          @ClusterId = clusterid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @GroupId = params['GroupId']
          @ChannelId = params['ChannelId']
          @LatestBlockNumber = params['LatestBlockNumber']
          @GroupName = params['GroupName']
          @ChannelName = params['ChannelName']
          @ClusterId = params['ClusterId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetLatestTransactionList返回参数结构体
      class GetLatestTransactionListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 交易总数量
        # @type TotalCount: Integer
        # @param TransactionList: 交易列表
        # @type TransactionList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TransactionList, :RequestId

        def initialize(totalcount=nil, transactionlist=nil, requestid=nil)
          @TotalCount = totalcount
          @TransactionList = transactionlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TransactionList'].nil?
            @TransactionList = []
            params['TransactionList'].each do |i|
              transactionitem_tmp = TransactionItem.new
              transactionitem_tmp.deserialize(i)
              @TransactionList << transactionitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTransactionDetailForUser请求参数结构体
      class GetTransactionDetailForUserRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，固定字段：transaction
        # @type Module: String
        # @param Operation: 操作名，固定字段：transaction_detail_for_user
        # @type Operation: String
        # @param ClusterId: 区块链网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param GroupName: 参与交易的组织名称，可以在组织管理列表中获取当前组织的名称
        # @type GroupName: String
        # @param ChannelName: 业务所属通道名称，可在通道详情或列表中获取
        # @type ChannelName: String
        # @param BlockId: 区块ID，通过GetInvokeTx接口可以获取交易所在的区块ID
        # @type BlockId: Integer
        # @param TransactionId: 交易ID，需要查询的详情的交易ID
        # @type TransactionId: String

        attr_accessor :Module, :Operation, :ClusterId, :GroupName, :ChannelName, :BlockId, :TransactionId

        def initialize(_module=nil, operation=nil, clusterid=nil, groupname=nil, channelname=nil, blockid=nil, transactionid=nil)
          @Module = _module
          @Operation = operation
          @ClusterId = clusterid
          @GroupName = groupname
          @ChannelName = channelname
          @BlockId = blockid
          @TransactionId = transactionid
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @ClusterId = params['ClusterId']
          @GroupName = params['GroupName']
          @ChannelName = params['ChannelName']
          @BlockId = params['BlockId']
          @TransactionId = params['TransactionId']
        end
      end

      # GetTransactionDetailForUser返回参数结构体
      class GetTransactionDetailForUserResponse < TencentCloud::Common::AbstractModel
        # @param TransactionId: 交易ID
        # @type TransactionId: String
        # @param TransactionHash: 交易hash
        # @type TransactionHash: String
        # @param CreateOrgName: 创建交易的组织名
        # @type CreateOrgName: String
        # @param TransactionType: 交易类型（普通交易和配置交易）
        # @type TransactionType: String
        # @param TransactionStatus: 交易状态
        # @type TransactionStatus: String
        # @param CreateTime: 交易创建时间
        # @type CreateTime: String
        # @param TransactionData: 交易数据
        # @type TransactionData: String
        # @param BlockId: 交易所在区块号
        # @type BlockId: Integer
        # @param BlockHash: 交易所在区块哈希
        # @type BlockHash: String
        # @param BlockHeight: 交易所在区块高度
        # @type BlockHeight: Integer
        # @param ChannelName: 通道名称
        # @type ChannelName: String
        # @param ContractName: 交易所在合约名称
        # @type ContractName: String
        # @param EndorserOrgList: 背书组织列表
        # @type EndorserOrgList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TransactionId, :TransactionHash, :CreateOrgName, :TransactionType, :TransactionStatus, :CreateTime, :TransactionData, :BlockId, :BlockHash, :BlockHeight, :ChannelName, :ContractName, :EndorserOrgList, :RequestId

        def initialize(transactionid=nil, transactionhash=nil, createorgname=nil, transactiontype=nil, transactionstatus=nil, createtime=nil, transactiondata=nil, blockid=nil, blockhash=nil, blockheight=nil, channelname=nil, contractname=nil, endorserorglist=nil, requestid=nil)
          @TransactionId = transactionid
          @TransactionHash = transactionhash
          @CreateOrgName = createorgname
          @TransactionType = transactiontype
          @TransactionStatus = transactionstatus
          @CreateTime = createtime
          @TransactionData = transactiondata
          @BlockId = blockid
          @BlockHash = blockhash
          @BlockHeight = blockheight
          @ChannelName = channelname
          @ContractName = contractname
          @EndorserOrgList = endorserorglist
          @RequestId = requestid
        end

        def deserialize(params)
          @TransactionId = params['TransactionId']
          @TransactionHash = params['TransactionHash']
          @CreateOrgName = params['CreateOrgName']
          @TransactionType = params['TransactionType']
          @TransactionStatus = params['TransactionStatus']
          @CreateTime = params['CreateTime']
          @TransactionData = params['TransactionData']
          @BlockId = params['BlockId']
          @BlockHash = params['BlockHash']
          @BlockHeight = params['BlockHeight']
          @ChannelName = params['ChannelName']
          @ContractName = params['ContractName']
          unless params['EndorserOrgList'].nil?
            @EndorserOrgList = []
            params['EndorserOrgList'].each do |i|
              endorsergroup_tmp = EndorserGroup.new
              endorsergroup_tmp.deserialize(i)
              @EndorserOrgList << endorsergroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # InvokeChainMakerContract请求参数结构体
      class InvokeChainMakerContractRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param ChainId: 业务链ID，可在网络概览页获取
        # @type ChainId: String
        # @param ContractName: 合约名称，可在合约管理中获取
        # @type ContractName: String
        # @param FuncName: 合约方法名
        # @type FuncName: String
        # @param FuncParam: 合约方法入参，json格式字符串，key/value都是string类型的map
        # @type FuncParam: String
        # @param AsyncFlag: 是否异步执行，1为是，否则为0；如果异步执行，可使用返回值中的交易TxID查询执行结果
        # @type AsyncFlag: Integer

        attr_accessor :ClusterId, :ChainId, :ContractName, :FuncName, :FuncParam, :AsyncFlag

        def initialize(clusterid=nil, chainid=nil, contractname=nil, funcname=nil, funcparam=nil, asyncflag=nil)
          @ClusterId = clusterid
          @ChainId = chainid
          @ContractName = contractname
          @FuncName = funcname
          @FuncParam = funcparam
          @AsyncFlag = asyncflag
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ChainId = params['ChainId']
          @ContractName = params['ContractName']
          @FuncName = params['FuncName']
          @FuncParam = params['FuncParam']
          @AsyncFlag = params['AsyncFlag']
        end
      end

      # InvokeChainMakerContract返回参数结构体
      class InvokeChainMakerContractResponse < TencentCloud::Common::AbstractModel
        # @param Result: 交易结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tbaas.v20180416.models.ChainMakerContractResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ChainMakerContractResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InvokeChainMakerDemoContract请求参数结构体
      class InvokeChainMakerDemoContractRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param ChainId: 业务链ID，可在网络概览页获取
        # @type ChainId: String
        # @param ContractName: 合约名称，可在合约管理中获取
        # @type ContractName: String
        # @param FuncName: 合约方法名
        # @type FuncName: String
        # @param FuncParam: 合约方法入参，json格式字符串，key/value都是string类型的map
        # @type FuncParam: String
        # @param AsyncFlag: 是否异步执行，1为是，否则为0；如果异步执行，可使用返回值中的交易TxID查询执行结果
        # @type AsyncFlag: Integer

        attr_accessor :ClusterId, :ChainId, :ContractName, :FuncName, :FuncParam, :AsyncFlag

        def initialize(clusterid=nil, chainid=nil, contractname=nil, funcname=nil, funcparam=nil, asyncflag=nil)
          @ClusterId = clusterid
          @ChainId = chainid
          @ContractName = contractname
          @FuncName = funcname
          @FuncParam = funcparam
          @AsyncFlag = asyncflag
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ChainId = params['ChainId']
          @ContractName = params['ContractName']
          @FuncName = params['FuncName']
          @FuncParam = params['FuncParam']
          @AsyncFlag = params['AsyncFlag']
        end
      end

      # InvokeChainMakerDemoContract返回参数结构体
      class InvokeChainMakerDemoContractResponse < TencentCloud::Common::AbstractModel
        # @param Result: 交易结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tbaas.v20180416.models.ChainMakerContractResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ChainMakerContractResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InvokeFabricChaincode请求参数结构体
      class InvokeFabricChaincodeRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID，可在区块链网络详情获取
        # @type ClusterId: String
        # @param ChannelId: 通道ID，可在通道列表或通道详情获取
        # @type ChannelId: String
        # @param ChaincodeName: 合约名称，可在合约列表或合约详情获取
        # @type ChaincodeName: String
        # @param FuncName: 合约方法
        # @type FuncName: String
        # @param FuncParam: 合约方法入参
        # @type FuncParam: Array
        # @param WithAsyncResult: 是否异步执行，如果异步执行，可使用返回值中的交易TxID查询执行结果
        # @type WithAsyncResult: Boolean

        attr_accessor :ClusterId, :ChannelId, :ChaincodeName, :FuncName, :FuncParam, :WithAsyncResult

        def initialize(clusterid=nil, channelid=nil, chaincodename=nil, funcname=nil, funcparam=nil, withasyncresult=nil)
          @ClusterId = clusterid
          @ChannelId = channelid
          @ChaincodeName = chaincodename
          @FuncName = funcname
          @FuncParam = funcparam
          @WithAsyncResult = withasyncresult
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ChannelId = params['ChannelId']
          @ChaincodeName = params['ChaincodeName']
          @FuncName = params['FuncName']
          @FuncParam = params['FuncParam']
          @WithAsyncResult = params['WithAsyncResult']
        end
      end

      # InvokeFabricChaincode返回参数结构体
      class InvokeFabricChaincodeResponse < TencentCloud::Common::AbstractModel
        # @param TxId: 交易ID
        # @type TxId: String
        # @param TxStatus: 交易状态
        # @type TxStatus: String
        # @param TxResult: 交易结果
        # @type TxResult: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxId, :TxStatus, :TxResult, :RequestId

        def initialize(txid=nil, txstatus=nil, txresult=nil, requestid=nil)
          @TxId = txid
          @TxStatus = txstatus
          @TxResult = txresult
          @RequestId = requestid
        end

        def deserialize(params)
          @TxId = params['TxId']
          @TxStatus = params['TxStatus']
          @TxResult = params['TxResult']
          @RequestId = params['RequestId']
        end
      end

      # Invoke请求参数结构体
      class InvokeRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，固定字段：transaction
        # @type Module: String
        # @param Operation: 操作名，固定字段：invoke
        # @type Operation: String
        # @param ClusterId: 区块链网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param ChaincodeName: 业务所属智能合约名称，可在智能合约详情或列表中获取
        # @type ChaincodeName: String
        # @param ChannelName: 业务所属通道名称，可在通道详情或列表中获取
        # @type ChannelName: String
        # @param Peers: 对该笔交易进行背书的节点列表（包括节点名称和节点所属组织名称，详见数据结构一节），可以在通道详情中获取该通道上的节点名称及其所属组织名称
        # @type Peers: Array
        # @param FuncName: 该笔交易需要调用的智能合约中的函数名称
        # @type FuncName: String
        # @param GroupName: 调用合约的组织名称，可以在组织管理列表中获取当前组织的名称
        # @type GroupName: String
        # @param Args: 被调用的函数参数列表，参数列表大小总和要求小于2M
        # @type Args: Array
        # @param AsyncFlag: 同步调用标识，可选参数，值为0或者不传表示使用同步方法调用，调用后会等待交易执行后再返回执行结果；值为1时表示使用异步方式调用Invoke，执行后会立即返回交易对应的Txid，后续需要通过GetInvokeTx这个API查询该交易的执行结果。（对于逻辑较为简单的交易，可以使用同步模式；对于逻辑较为复杂的交易，建议使用异步模式，否则容易导致API因等待时间过长，返回等待超时）
        # @type AsyncFlag: Integer

        attr_accessor :Module, :Operation, :ClusterId, :ChaincodeName, :ChannelName, :Peers, :FuncName, :GroupName, :Args, :AsyncFlag

        def initialize(_module=nil, operation=nil, clusterid=nil, chaincodename=nil, channelname=nil, peers=nil, funcname=nil, groupname=nil, args=nil, asyncflag=nil)
          @Module = _module
          @Operation = operation
          @ClusterId = clusterid
          @ChaincodeName = chaincodename
          @ChannelName = channelname
          @Peers = peers
          @FuncName = funcname
          @GroupName = groupname
          @Args = args
          @AsyncFlag = asyncflag
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @ClusterId = params['ClusterId']
          @ChaincodeName = params['ChaincodeName']
          @ChannelName = params['ChannelName']
          unless params['Peers'].nil?
            @Peers = []
            params['Peers'].each do |i|
              peerset_tmp = PeerSet.new
              peerset_tmp.deserialize(i)
              @Peers << peerset_tmp
            end
          end
          @FuncName = params['FuncName']
          @GroupName = params['GroupName']
          @Args = params['Args']
          @AsyncFlag = params['AsyncFlag']
        end
      end

      # Invoke返回参数结构体
      class InvokeResponse < TencentCloud::Common::AbstractModel
        # @param Txid: 交易ID
        # @type Txid: String
        # @param Events: 交易执行结果
        # @type Events: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Txid, :Events, :RequestId

        def initialize(txid=nil, events=nil, requestid=nil)
          @Txid = txid
          @Events = events
          @RequestId = requestid
        end

        def deserialize(params)
          @Txid = params['Txid']
          @Events = params['Events']
          @RequestId = params['RequestId']
        end
      end

      # PeerSet
      class PeerSet < TencentCloud::Common::AbstractModel
        # @param PeerName: 节点名称
        # @type PeerName: String
        # @param OrgName: 组织名称
        # @type OrgName: String

        attr_accessor :PeerName, :OrgName

        def initialize(peername=nil, orgname=nil)
          @PeerName = peername
          @OrgName = orgname
        end

        def deserialize(params)
          @PeerName = params['PeerName']
          @OrgName = params['OrgName']
        end
      end

      # QueryChainMakerBlockTransaction请求参数结构体
      class QueryChainMakerBlockTransactionRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param ChainId: 业务链ID，可在网络概览页获取
        # @type ChainId: String
        # @param BlockHeight: 区块高度
        # @type BlockHeight: Integer

        attr_accessor :ClusterId, :ChainId, :BlockHeight

        def initialize(clusterid=nil, chainid=nil, blockheight=nil)
          @ClusterId = clusterid
          @ChainId = chainid
          @BlockHeight = blockheight
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ChainId = params['ChainId']
          @BlockHeight = params['BlockHeight']
        end
      end

      # QueryChainMakerBlockTransaction返回参数结构体
      class QueryChainMakerBlockTransactionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 区块交易
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param BlockHeight: 区块高度
        # @type BlockHeight: Integer
        # @param TxCount: 交易数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TxCount: Integer
        # @param BlockTimestamp: 区块时间戳，单位是秒
        # @type BlockTimestamp: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :BlockHeight, :TxCount, :BlockTimestamp, :RequestId

        def initialize(result=nil, blockheight=nil, txcount=nil, blocktimestamp=nil, requestid=nil)
          @Result = result
          @BlockHeight = blockheight
          @TxCount = txcount
          @BlockTimestamp = blocktimestamp
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              chainmakertransactionresult_tmp = ChainMakerTransactionResult.new
              chainmakertransactionresult_tmp.deserialize(i)
              @Result << chainmakertransactionresult_tmp
            end
          end
          @BlockHeight = params['BlockHeight']
          @TxCount = params['TxCount']
          @BlockTimestamp = params['BlockTimestamp']
          @RequestId = params['RequestId']
        end
      end

      # QueryChainMakerContract请求参数结构体
      class QueryChainMakerContractRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param ChainId: 业务链ID，可在网络概览页获取
        # @type ChainId: String
        # @param ContractName: 合约名称，可在合约管理中获取
        # @type ContractName: String
        # @param FuncName: 合约方法名
        # @type FuncName: String
        # @param FuncParam: 合约方法入参，json格式字符串，key/value都是string类型的map
        # @type FuncParam: String

        attr_accessor :ClusterId, :ChainId, :ContractName, :FuncName, :FuncParam

        def initialize(clusterid=nil, chainid=nil, contractname=nil, funcname=nil, funcparam=nil)
          @ClusterId = clusterid
          @ChainId = chainid
          @ContractName = contractname
          @FuncName = funcname
          @FuncParam = funcparam
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ChainId = params['ChainId']
          @ContractName = params['ContractName']
          @FuncName = params['FuncName']
          @FuncParam = params['FuncParam']
        end
      end

      # QueryChainMakerContract返回参数结构体
      class QueryChainMakerContractResponse < TencentCloud::Common::AbstractModel
        # @param Result: 交易结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tbaas.v20180416.models.ChainMakerContractResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ChainMakerContractResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryChainMakerDemoBlockTransaction请求参数结构体
      class QueryChainMakerDemoBlockTransactionRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param ChainId: 业务链ID，可在网络概览页获取
        # @type ChainId: String
        # @param BlockHeight: 区块高度
        # @type BlockHeight: Integer

        attr_accessor :ClusterId, :ChainId, :BlockHeight

        def initialize(clusterid=nil, chainid=nil, blockheight=nil)
          @ClusterId = clusterid
          @ChainId = chainid
          @BlockHeight = blockheight
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ChainId = params['ChainId']
          @BlockHeight = params['BlockHeight']
        end
      end

      # QueryChainMakerDemoBlockTransaction返回参数结构体
      class QueryChainMakerDemoBlockTransactionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 区块交易
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param BlockHeight: 区块高度
        # @type BlockHeight: Integer
        # @param TxCount: 交易数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TxCount: Integer
        # @param BlockTimestamp: 区块时间戳，单位是秒
        # @type BlockTimestamp: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :BlockHeight, :TxCount, :BlockTimestamp, :RequestId

        def initialize(result=nil, blockheight=nil, txcount=nil, blocktimestamp=nil, requestid=nil)
          @Result = result
          @BlockHeight = blockheight
          @TxCount = txcount
          @BlockTimestamp = blocktimestamp
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              chainmakertransactionresult_tmp = ChainMakerTransactionResult.new
              chainmakertransactionresult_tmp.deserialize(i)
              @Result << chainmakertransactionresult_tmp
            end
          end
          @BlockHeight = params['BlockHeight']
          @TxCount = params['TxCount']
          @BlockTimestamp = params['BlockTimestamp']
          @RequestId = params['RequestId']
        end
      end

      # QueryChainMakerDemoContract请求参数结构体
      class QueryChainMakerDemoContractRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param ChainId: 业务链ID，可在网络概览页获取
        # @type ChainId: String
        # @param ContractName: 合约名称，可在合约管理中获取
        # @type ContractName: String
        # @param FuncName: 合约方法名
        # @type FuncName: String
        # @param FuncParam: 合约方法入参，json格式字符串，key/value都是string类型的map
        # @type FuncParam: String

        attr_accessor :ClusterId, :ChainId, :ContractName, :FuncName, :FuncParam

        def initialize(clusterid=nil, chainid=nil, contractname=nil, funcname=nil, funcparam=nil)
          @ClusterId = clusterid
          @ChainId = chainid
          @ContractName = contractname
          @FuncName = funcname
          @FuncParam = funcparam
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ChainId = params['ChainId']
          @ContractName = params['ContractName']
          @FuncName = params['FuncName']
          @FuncParam = params['FuncParam']
        end
      end

      # QueryChainMakerDemoContract返回参数结构体
      class QueryChainMakerDemoContractResponse < TencentCloud::Common::AbstractModel
        # @param Result: 交易结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tbaas.v20180416.models.ChainMakerContractResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ChainMakerContractResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryChainMakerDemoTransaction请求参数结构体
      class QueryChainMakerDemoTransactionRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param ChainId: 业务链ID，可在网络概览页获取
        # @type ChainId: String
        # @param TxID: 交易ID，通过调用合约的返回值获取
        # @type TxID: String

        attr_accessor :ClusterId, :ChainId, :TxID

        def initialize(clusterid=nil, chainid=nil, txid=nil)
          @ClusterId = clusterid
          @ChainId = chainid
          @TxID = txid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ChainId = params['ChainId']
          @TxID = params['TxID']
        end
      end

      # QueryChainMakerDemoTransaction返回参数结构体
      class QueryChainMakerDemoTransactionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 交易结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tbaas.v20180416.models.ChainMakerTransactionResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ChainMakerTransactionResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryChainMakerTransaction请求参数结构体
      class QueryChainMakerTransactionRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param ChainId: 业务链ID，可在网络概览页获取
        # @type ChainId: String
        # @param TxID: 交易ID，通过调用合约的返回值获取
        # @type TxID: String

        attr_accessor :ClusterId, :ChainId, :TxID

        def initialize(clusterid=nil, chainid=nil, txid=nil)
          @ClusterId = clusterid
          @ChainId = chainid
          @TxID = txid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ChainId = params['ChainId']
          @TxID = params['TxID']
        end
      end

      # QueryChainMakerTransaction返回参数结构体
      class QueryChainMakerTransactionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 交易结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tbaas.v20180416.models.ChainMakerTransactionResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ChainMakerTransactionResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryFabricChaincode请求参数结构体
      class QueryFabricChaincodeRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 网络ID，可在区块链网络详情获取
        # @type ClusterId: String
        # @param ChannelId: 通道ID，可在通道列表或通道详情获取
        # @type ChannelId: String
        # @param ChaincodeName: 合约名称，可在合约列表或合约详情获取
        # @type ChaincodeName: String
        # @param FuncName: 合约方法
        # @type FuncName: String
        # @param FuncParam: 合约方法入参
        # @type FuncParam: Array

        attr_accessor :ClusterId, :ChannelId, :ChaincodeName, :FuncName, :FuncParam

        def initialize(clusterid=nil, channelid=nil, chaincodename=nil, funcname=nil, funcparam=nil)
          @ClusterId = clusterid
          @ChannelId = channelid
          @ChaincodeName = chaincodename
          @FuncName = funcname
          @FuncParam = funcparam
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ChannelId = params['ChannelId']
          @ChaincodeName = params['ChaincodeName']
          @FuncName = params['FuncName']
          @FuncParam = params['FuncParam']
        end
      end

      # QueryFabricChaincode返回参数结构体
      class QueryFabricChaincodeResponse < TencentCloud::Common::AbstractModel
        # @param TxId: 交易ID
        # @type TxId: String
        # @param TxStatus: 交易状态
        # @type TxStatus: String
        # @param TxResult: 交易结果
        # @type TxResult: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxId, :TxStatus, :TxResult, :RequestId

        def initialize(txid=nil, txstatus=nil, txresult=nil, requestid=nil)
          @TxId = txid
          @TxStatus = txstatus
          @TxResult = txresult
          @RequestId = requestid
        end

        def deserialize(params)
          @TxId = params['TxId']
          @TxStatus = params['TxStatus']
          @TxResult = params['TxResult']
          @RequestId = params['RequestId']
        end
      end

      # Query请求参数结构体
      class QueryRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，固定字段：transaction
        # @type Module: String
        # @param Operation: 操作名，固定字段：query
        # @type Operation: String
        # @param ClusterId: 区块链网络ID，可在区块链网络详情或列表中获取
        # @type ClusterId: String
        # @param ChaincodeName: 业务所属智能合约名称，可在智能合约详情或列表中获取
        # @type ChaincodeName: String
        # @param ChannelName: 业务所属通道名称，可在通道详情或列表中获取
        # @type ChannelName: String
        # @param Peers: 执行该查询交易的节点列表（包括节点名称和节点所属组织名称，详见数据结构一节），可以在通道详情中获取该通道上的节点名称及其所属组织名称
        # @type Peers: Array
        # @param FuncName: 该笔交易查询需要调用的智能合约中的函数名称
        # @type FuncName: String
        # @param GroupName: 调用合约的组织名称，可以在组织管理列表中获取当前组织的名称
        # @type GroupName: String
        # @param Args: 被调用的函数参数列表
        # @type Args: Array

        attr_accessor :Module, :Operation, :ClusterId, :ChaincodeName, :ChannelName, :Peers, :FuncName, :GroupName, :Args

        def initialize(_module=nil, operation=nil, clusterid=nil, chaincodename=nil, channelname=nil, peers=nil, funcname=nil, groupname=nil, args=nil)
          @Module = _module
          @Operation = operation
          @ClusterId = clusterid
          @ChaincodeName = chaincodename
          @ChannelName = channelname
          @Peers = peers
          @FuncName = funcname
          @GroupName = groupname
          @Args = args
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @ClusterId = params['ClusterId']
          @ChaincodeName = params['ChaincodeName']
          @ChannelName = params['ChannelName']
          unless params['Peers'].nil?
            @Peers = []
            params['Peers'].each do |i|
              peerset_tmp = PeerSet.new
              peerset_tmp.deserialize(i)
              @Peers << peerset_tmp
            end
          end
          @FuncName = params['FuncName']
          @GroupName = params['GroupName']
          @Args = params['Args']
        end
      end

      # Query返回参数结构体
      class QueryResponse < TencentCloud::Common::AbstractModel
        # @param Data: 查询结果数据
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # 用于申请用户签名证书的结构体
      class SignCertCsr < TencentCloud::Common::AbstractModel
        # @param CertMark: 用户签名证书的标识，会存在于用户申请的证书中
        # @type CertMark: String
        # @param SignCsrContent: 用户申请签名证书所需要的证书请求文件的base64编码
        # @type SignCsrContent: String

        attr_accessor :CertMark, :SignCsrContent

        def initialize(certmark=nil, signcsrcontent=nil)
          @CertMark = certmark
          @SignCsrContent = signcsrcontent
        end

        def deserialize(params)
          @CertMark = params['CertMark']
          @SignCsrContent = params['SignCsrContent']
        end
      end

      # SrvInvoke请求参数结构体
      class SrvInvokeRequest < TencentCloud::Common::AbstractModel
        # @param Service: 服务类型，iss或者dam
        # @type Service: String
        # @param Method: 服务接口，要调用的方法函数名
        # @type Method: String
        # @param Param: 用户自定义json字符串
        # @type Param: String

        attr_accessor :Service, :Method, :Param

        def initialize(service=nil, method=nil, param=nil)
          @Service = service
          @Method = method
          @Param = param
        end

        def deserialize(params)
          @Service = params['Service']
          @Method = params['Method']
          @Param = params['Param']
        end
      end

      # SrvInvoke返回参数结构体
      class SrvInvokeResponse < TencentCloud::Common::AbstractModel
        # @param RetCode: 返回码
        # @type RetCode: Integer
        # @param RetMsg: 返回消息
        # @type RetMsg: String
        # @param Data: 返回数据
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RetCode, :RetMsg, :Data, :RequestId

        def initialize(retcode=nil, retmsg=nil, data=nil, requestid=nil)
          @RetCode = retcode
          @RetMsg = retmsg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @RetCode = params['RetCode']
          @RetMsg = params['RetMsg']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # 交易显示概述信息
      class Transaction < TencentCloud::Common::AbstractModel
        # @param TxId: 交易ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TxId: String
        # @param ChaincodeName: 合约名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChaincodeName: String
        # @param Sender: 交易发送者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sender: String
        # @param CreateTime: 交易创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param BlockHeight: 交易所在区块高度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlockHeight: Integer
        # @param TxIndex: 交易在区块中的序号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TxIndex: Integer

        attr_accessor :TxId, :ChaincodeName, :Sender, :CreateTime, :BlockHeight, :TxIndex

        def initialize(txid=nil, chaincodename=nil, sender=nil, createtime=nil, blockheight=nil, txindex=nil)
          @TxId = txid
          @ChaincodeName = chaincodename
          @Sender = sender
          @CreateTime = createtime
          @BlockHeight = blockheight
          @TxIndex = txindex
        end

        def deserialize(params)
          @TxId = params['TxId']
          @ChaincodeName = params['ChaincodeName']
          @Sender = params['Sender']
          @CreateTime = params['CreateTime']
          @BlockHeight = params['BlockHeight']
          @TxIndex = params['TxIndex']
        end
      end

      # 交易列表项信息
      class TransactionItem < TencentCloud::Common::AbstractModel
        # @param TransactionId: 交易ID
        # @type TransactionId: String
        # @param TransactionHash: 交易hash
        # @type TransactionHash: String
        # @param CreateOrgName: 创建交易的组织名
        # @type CreateOrgName: String
        # @param BlockId: 交易所在区块号
        # @type BlockId: Integer
        # @param TransactionType: 交易类型（普通交易和配置交易）
        # @type TransactionType: String
        # @param CreateTime: 交易创建时间
        # @type CreateTime: String
        # @param BlockHeight: 交易所在区块高度
        # @type BlockHeight: Integer
        # @param TransactionStatus: 交易状态
        # @type TransactionStatus: String

        attr_accessor :TransactionId, :TransactionHash, :CreateOrgName, :BlockId, :TransactionType, :CreateTime, :BlockHeight, :TransactionStatus

        def initialize(transactionid=nil, transactionhash=nil, createorgname=nil, blockid=nil, transactiontype=nil, createtime=nil, blockheight=nil, transactionstatus=nil)
          @TransactionId = transactionid
          @TransactionHash = transactionhash
          @CreateOrgName = createorgname
          @BlockId = blockid
          @TransactionType = transactiontype
          @CreateTime = createtime
          @BlockHeight = blockheight
          @TransactionStatus = transactionstatus
        end

        def deserialize(params)
          @TransactionId = params['TransactionId']
          @TransactionHash = params['TransactionHash']
          @CreateOrgName = params['CreateOrgName']
          @BlockId = params['BlockId']
          @TransactionType = params['TransactionType']
          @CreateTime = params['CreateTime']
          @BlockHeight = params['BlockHeight']
          @TransactionStatus = params['TransactionStatus']
        end
      end

    end
  end
end

