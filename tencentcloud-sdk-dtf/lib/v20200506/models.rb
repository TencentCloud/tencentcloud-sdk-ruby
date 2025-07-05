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
  module Dtf
    module V20200506
      # DescribeTransactions请求参数结构体
      class DescribeTransactionsRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 事务分组ID
        # @type GroupId: String
        # @param TransactionBeginFrom: 事务开始时间查询起始时间戳，UTC，精确到毫秒
        # @type TransactionBeginFrom: Integer
        # @param TransactionBeginTo: 事务开始时间查询截止时间戳，UTC，精确到毫秒
        # @type TransactionBeginTo: Integer
        # @param SearchError: 仅查询异常状态的事务，true：仅查询异常，false或不传入：查询所有
        # @type SearchError: Boolean
        # @param TransactionId: 主事务ID，不传入时查询全量，高优先级
        # @type TransactionId: Integer
        # @param TransactionIdList: 主事务ID列表，不传入时查询全量，低优先级
        # @type TransactionIdList: Array
        # @param Limit: 每页数量
        # @type Limit: Integer
        # @param Offset: 起始偏移量
        # @type Offset: Integer

        attr_accessor :GroupId, :TransactionBeginFrom, :TransactionBeginTo, :SearchError, :TransactionId, :TransactionIdList, :Limit, :Offset

        def initialize(groupid=nil, transactionbeginfrom=nil, transactionbeginto=nil, searcherror=nil, transactionid=nil, transactionidlist=nil, limit=nil, offset=nil)
          @GroupId = groupid
          @TransactionBeginFrom = transactionbeginfrom
          @TransactionBeginTo = transactionbeginto
          @SearchError = searcherror
          @TransactionId = transactionid
          @TransactionIdList = transactionidlist
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @TransactionBeginFrom = params['TransactionBeginFrom']
          @TransactionBeginTo = params['TransactionBeginTo']
          @SearchError = params['SearchError']
          @TransactionId = params['TransactionId']
          @TransactionIdList = params['TransactionIdList']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeTransactions返回参数结构体
      class DescribeTransactionsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 主事务分页列表
        # @type Result: :class:`Tencentcloud::Dtf.v20200506.models.PagedTransaction`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = PagedTransaction.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 分页主事务
      class PagedTransaction < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数，特定在该接口中总是会返回null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 主事务分组列表
        # @type Content: Array

        attr_accessor :TotalCount, :Content

        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              transaction_tmp = Transaction.new
              transaction_tmp.deserialize(i)
              @Content << transaction_tmp
            end
          end
        end
      end

      # 主事务
      class Transaction < TencentCloud::Common::AbstractModel
        # @param TransactionId: 主事务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransactionId: Integer
        # @param TransactionBegin: 主事务开始时间戳，UTC，精确到毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransactionBegin: Integer
        # @param TransactionEnd: 主事务结束时间戳，UTC，精确到毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransactionEnd: Integer
        # @param TransactionCommit: 主事务提交时间戳，UTC，精确到毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransactionCommit: Integer
        # @param TransactionRollback: 主事务回滚时间戳，UTC，精确到毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransactionRollback: Integer
        # @param TransactionError: 主事务异常停止时间戳，UTC，精确到毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransactionError: Integer
        # @param Timeout: 主事务超时时长，单位毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timeout: Integer
        # @param Status: 主事务状态：0:Trying, 1:Confirming, 2: Confirmed, 3:Canceling, 4: Canceled
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param EndFlag: 主事务结束标识：0:运行中, 1: 已结束
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndFlag: Integer
        # @param TimeoutFlag: 主事务超时标识：0:运行中, 1: 已超时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeoutFlag: Integer
        # @param Comment: 异常信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param GroupId: 事务分组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param Server: 主事务来源服务标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Server: String
        # @param BranchQuantity: 分支事务数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BranchQuantity: Integer
        # @param RetryFlag: 重试标识：true：可以重试；false：不可重试
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryFlag: Boolean

        attr_accessor :TransactionId, :TransactionBegin, :TransactionEnd, :TransactionCommit, :TransactionRollback, :TransactionError, :Timeout, :Status, :EndFlag, :TimeoutFlag, :Comment, :GroupId, :Server, :BranchQuantity, :RetryFlag

        def initialize(transactionid=nil, transactionbegin=nil, transactionend=nil, transactioncommit=nil, transactionrollback=nil, transactionerror=nil, timeout=nil, status=nil, endflag=nil, timeoutflag=nil, comment=nil, groupid=nil, server=nil, branchquantity=nil, retryflag=nil)
          @TransactionId = transactionid
          @TransactionBegin = transactionbegin
          @TransactionEnd = transactionend
          @TransactionCommit = transactioncommit
          @TransactionRollback = transactionrollback
          @TransactionError = transactionerror
          @Timeout = timeout
          @Status = status
          @EndFlag = endflag
          @TimeoutFlag = timeoutflag
          @Comment = comment
          @GroupId = groupid
          @Server = server
          @BranchQuantity = branchquantity
          @RetryFlag = retryflag
        end

        def deserialize(params)
          @TransactionId = params['TransactionId']
          @TransactionBegin = params['TransactionBegin']
          @TransactionEnd = params['TransactionEnd']
          @TransactionCommit = params['TransactionCommit']
          @TransactionRollback = params['TransactionRollback']
          @TransactionError = params['TransactionError']
          @Timeout = params['Timeout']
          @Status = params['Status']
          @EndFlag = params['EndFlag']
          @TimeoutFlag = params['TimeoutFlag']
          @Comment = params['Comment']
          @GroupId = params['GroupId']
          @Server = params['Server']
          @BranchQuantity = params['BranchQuantity']
          @RetryFlag = params['RetryFlag']
        end
      end

    end
  end
end

