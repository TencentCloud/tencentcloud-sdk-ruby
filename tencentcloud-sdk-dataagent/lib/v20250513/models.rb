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
  module Dataagent
    module V20250513
      # AddChunk请求参数结构体
      class AddChunkRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param FileId: 文件ID
        # @type FileId: String
        # @param BeforeChunkId: 新增chunk的后面一个ChunkID。如果是空就是插到队尾。插入位置的下一个 chunkId。如果插到最前面，传入原切片的第一个。
        # @type BeforeChunkId: String
        # @param InsertPos: 显式指定的位置,实际的位置。从 0 开始计算。0 代表插到最前面，chunk total 代表插到最后面。
        # @type InsertPos: Integer
        # @param Content: chunk内容
        # @type Content: String
        # @param AfterChunkId: 	 新 Chunk 插入到目标 Chunk ​之后的位置。插入位置的上一个 chunkId
        # @type AfterChunkId: String

        attr_accessor :InstanceId, :FileId, :BeforeChunkId, :InsertPos, :Content, :AfterChunkId

        def initialize(instanceid=nil, fileid=nil, beforechunkid=nil, insertpos=nil, content=nil, afterchunkid=nil)
          @InstanceId = instanceid
          @FileId = fileid
          @BeforeChunkId = beforechunkid
          @InsertPos = insertpos
          @Content = content
          @AfterChunkId = afterchunkid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FileId = params['FileId']
          @BeforeChunkId = params['BeforeChunkId']
          @InsertPos = params['InsertPos']
          @Content = params['Content']
          @AfterChunkId = params['AfterChunkId']
        end
      end

      # AddChunk返回参数结构体
      class AddChunkResponse < TencentCloud::Common::AbstractModel
        # @param ChunkId: 新增的chunkid
        # @type ChunkId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ChunkId, :RequestId

        def initialize(chunkid=nil, requestid=nil)
          @ChunkId = chunkid
          @RequestId = requestid
        end

        def deserialize(params)
          @ChunkId = params['ChunkId']
          @RequestId = params['RequestId']
        end
      end

      # ChatAI请求参数结构体
      class ChatAIRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: 会话ID
        # @type SessionId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Question: 问题内容
        # @type Question: String
        # @param Context: 上下文
        # @type Context: String
        # @param Model: 模型
        # @type Model: String
        # @param DeepThinking: 是否深度思考
        # @type DeepThinking: Boolean
        # @param DataSourceIds: 数据源id
        # @type DataSourceIds: Array
        # @param AgentType: agent类型
        # @type AgentType: String
        # @param OldRecordId: 需要重新生成答案的记录ID
        # @type OldRecordId: String
        # @param KnowledgeBaseIds: 知识库id列表
        # @type KnowledgeBaseIds: Array

        attr_accessor :SessionId, :InstanceId, :Question, :Context, :Model, :DeepThinking, :DataSourceIds, :AgentType, :OldRecordId, :KnowledgeBaseIds

        def initialize(sessionid=nil, instanceid=nil, question=nil, context=nil, model=nil, deepthinking=nil, datasourceids=nil, agenttype=nil, oldrecordid=nil, knowledgebaseids=nil)
          @SessionId = sessionid
          @InstanceId = instanceid
          @Question = question
          @Context = context
          @Model = model
          @DeepThinking = deepthinking
          @DataSourceIds = datasourceids
          @AgentType = agenttype
          @OldRecordId = oldrecordid
          @KnowledgeBaseIds = knowledgebaseids
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @InstanceId = params['InstanceId']
          @Question = params['Question']
          @Context = params['Context']
          @Model = params['Model']
          @DeepThinking = params['DeepThinking']
          @DataSourceIds = params['DataSourceIds']
          @AgentType = params['AgentType']
          @OldRecordId = params['OldRecordId']
          @KnowledgeBaseIds = params['KnowledgeBaseIds']
        end
      end

      # ChatAI返回参数结构体
      class ChatAIResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateDataAgentSession请求参数结构体
      class CreateDataAgentSessionRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # CreateDataAgentSession返回参数结构体
      class CreateDataAgentSessionResponse < TencentCloud::Common::AbstractModel
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

      # DeleteChunk请求参数结构体
      class DeleteChunkRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param FileId: 文件ID
        # @type FileId: String
        # @param ChunkIds: 切片ID
        # @type ChunkIds: Array

        attr_accessor :InstanceId, :FileId, :ChunkIds

        def initialize(instanceid=nil, fileid=nil, chunkids=nil)
          @InstanceId = instanceid
          @FileId = fileid
          @ChunkIds = chunkids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FileId = params['FileId']
          @ChunkIds = params['ChunkIds']
        end
      end

      # DeleteChunk返回参数结构体
      class DeleteChunkResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDataAgentSession请求参数结构体
      class DeleteDataAgentSessionRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DeleteDataAgentSession返回参数结构体
      class DeleteDataAgentSessionResponse < TencentCloud::Common::AbstractModel
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

      # GetKnowledgeBaseList请求参数结构体
      class GetKnowledgeBaseListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # GetKnowledgeBaseList返回参数结构体
      class GetKnowledgeBaseListResponse < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseList: 用户实例所有知识库列表
        # @type KnowledgeBaseList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KnowledgeBaseList, :RequestId

        def initialize(knowledgebaselist=nil, requestid=nil)
          @KnowledgeBaseList = knowledgebaselist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KnowledgeBaseList'].nil?
            @KnowledgeBaseList = []
            params['KnowledgeBaseList'].each do |i|
              knowledgebase_tmp = KnowledgeBase.new
              knowledgebase_tmp.deserialize(i)
              @KnowledgeBaseList << knowledgebase_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetSessionDetails请求参数结构体
      class GetSessionDetailsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetSessionDetails返回参数结构体
      class GetSessionDetailsResponse < TencentCloud::Common::AbstractModel
        # @param RecordCount: 记录总数
        # @type RecordCount: Integer
        # @param RunRecord: 当前在运行的record信息
        # @type RunRecord: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordCount, :RunRecord, :RequestId

        def initialize(recordcount=nil, runrecord=nil, requestid=nil)
          @RecordCount = recordcount
          @RunRecord = runrecord
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordCount = params['RecordCount']
          @RunRecord = params['RunRecord']
          @RequestId = params['RequestId']
        end
      end

      # 知识库信息
      class KnowledgeBase < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseId: 知识库id
        # @type KnowledgeBaseId: String
        # @param KnowledgeBaseName: 知识库名称
        # @type KnowledgeBaseName: String
        # @param KnowledgeBaseDesc: 知识库描述
        # @type KnowledgeBaseDesc: String
        # @param Creator: 创建者subuin
        # @type Creator: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param FileNum: 文件数量
        # @type FileNum: Integer
        # @param DatasourceIds: 知识库关联的数据库列表，目前是只绑定一个数据源，数组预留拓展
        # @type DatasourceIds: Array

        attr_accessor :KnowledgeBaseId, :KnowledgeBaseName, :KnowledgeBaseDesc, :Creator, :CreateTime, :FileNum, :DatasourceIds

        def initialize(knowledgebaseid=nil, knowledgebasename=nil, knowledgebasedesc=nil, creator=nil, createtime=nil, filenum=nil, datasourceids=nil)
          @KnowledgeBaseId = knowledgebaseid
          @KnowledgeBaseName = knowledgebasename
          @KnowledgeBaseDesc = knowledgebasedesc
          @Creator = creator
          @CreateTime = createtime
          @FileNum = filenum
          @DatasourceIds = datasourceids
        end

        def deserialize(params)
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @KnowledgeBaseName = params['KnowledgeBaseName']
          @KnowledgeBaseDesc = params['KnowledgeBaseDesc']
          @Creator = params['Creator']
          @CreateTime = params['CreateTime']
          @FileNum = params['FileNum']
          @DatasourceIds = params['DatasourceIds']
        end
      end

      # ModifyChunk请求参数结构体
      class ModifyChunkRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param FileId: 文件ID
        # @type FileId: String
        # @param ChunkId: 切片ID
        # @type ChunkId: String
        # @param Content: 编辑后的文本
        # @type Content: String

        attr_accessor :InstanceId, :FileId, :ChunkId, :Content

        def initialize(instanceid=nil, fileid=nil, chunkid=nil, content=nil)
          @InstanceId = instanceid
          @FileId = fileid
          @ChunkId = chunkid
          @Content = content
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FileId = params['FileId']
          @ChunkId = params['ChunkId']
          @Content = params['Content']
        end
      end

      # ModifyChunk返回参数结构体
      class ModifyChunkResponse < TencentCloud::Common::AbstractModel
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

      # ModifyKnowledgeBase请求参数结构体
      class ModifyKnowledgeBaseRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param OperateType: 操作类型：Create，Update，Delete
        # @type OperateType: String
        # @param KnowledgeBaseId: 知识库id，update和delete时必填
        # @type KnowledgeBaseId: String
        # @param KnowledgeBaseName: 知识库名称，create和update时必填。只允许字母、数字、汉字、下划线
        # @type KnowledgeBaseName: String
        # @param KnowledgeBaseDesc: 知识库描述，create和update时必填
        # @type KnowledgeBaseDesc: String

        attr_accessor :InstanceId, :OperateType, :KnowledgeBaseId, :KnowledgeBaseName, :KnowledgeBaseDesc

        def initialize(instanceid=nil, operatetype=nil, knowledgebaseid=nil, knowledgebasename=nil, knowledgebasedesc=nil)
          @InstanceId = instanceid
          @OperateType = operatetype
          @KnowledgeBaseId = knowledgebaseid
          @KnowledgeBaseName = knowledgebasename
          @KnowledgeBaseDesc = knowledgebasedesc
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OperateType = params['OperateType']
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @KnowledgeBaseName = params['KnowledgeBaseName']
          @KnowledgeBaseDesc = params['KnowledgeBaseDesc']
        end
      end

      # ModifyKnowledgeBase返回参数结构体
      class ModifyKnowledgeBaseResponse < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseId: 知识库id
        # @type KnowledgeBaseId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KnowledgeBaseId, :RequestId

        def initialize(knowledgebaseid=nil, requestid=nil)
          @KnowledgeBaseId = knowledgebaseid
          @RequestId = requestid
        end

        def deserialize(params)
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @RequestId = params['RequestId']
        end
      end

      # QueryChunkList请求参数结构体
      class QueryChunkListRequest < TencentCloud::Common::AbstractModel
        # @param Page: 默认 1 表示第一页
        # @type Page: Integer
        # @param PageSize: 	 默认 10 一页展示 10 条
        # @type PageSize: Integer

        attr_accessor :Page, :PageSize

        def initialize(page=nil, pagesize=nil)
          @Page = page
          @PageSize = pagesize
        end

        def deserialize(params)
          @Page = params['Page']
          @PageSize = params['PageSize']
        end
      end

      # QueryChunkList返回参数结构体
      class QueryChunkListResponse < TencentCloud::Common::AbstractModel
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

      # StopChatAI请求参数结构体
      class StopChatAIRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # StopChatAI返回参数结构体
      class StopChatAIResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

