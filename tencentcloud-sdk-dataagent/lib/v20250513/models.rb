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
        # @param AfterChunkId: 新 Chunk 插入到目标 Chunk ​之后的位置。插入位置的上一个 chunkId
        # @type AfterChunkId: String
        # @param KnowledgeBaseId: 知识库id
        # @type KnowledgeBaseId: String

        attr_accessor :InstanceId, :FileId, :BeforeChunkId, :InsertPos, :Content, :AfterChunkId, :KnowledgeBaseId

        def initialize(instanceid=nil, fileid=nil, beforechunkid=nil, insertpos=nil, content=nil, afterchunkid=nil, knowledgebaseid=nil)
          @InstanceId = instanceid
          @FileId = fileid
          @BeforeChunkId = beforechunkid
          @InsertPos = insertpos
          @Content = content
          @AfterChunkId = afterchunkid
          @KnowledgeBaseId = knowledgebaseid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FileId = params['FileId']
          @BeforeChunkId = params['BeforeChunkId']
          @InsertPos = params['InsertPos']
          @Content = params['Content']
          @AfterChunkId = params['AfterChunkId']
          @KnowledgeBaseId = params['KnowledgeBaseId']
        end
      end

      # AddChunk返回参数结构体
      class AddChunkResponse < TencentCloud::Common::AbstractModel
        # @param ChunkId: 新增的ChunkId
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

      # 文件分片
      class Chunk < TencentCloud::Common::AbstractModel
        # @param Id: 切片ID
        # @type Id: String
        # @param Content: 切片内容
        # @type Content: String
        # @param Size: 切片的字数
        # @type Size: Integer
        # @param Summary: 切片概要
        # @type Summary: String

        attr_accessor :Id, :Content, :Size, :Summary

        def initialize(id=nil, content=nil, size=nil, summary=nil)
          @Id = id
          @Content = content
          @Size = size
          @Summary = summary
        end

        def deserialize(params)
          @Id = params['Id']
          @Content = params['Content']
          @Size = params['Size']
          @Summary = params['Summary']
        end
      end

      # 知识库文档表列信息
      class ColumnInfo < TencentCloud::Common::AbstractModel
        # @param Name: 列名称
        # @type Name: String
        # @param Type: 列类型：int, bigint, double, date, datetime, string，decimal
        # @type Type: String
        # @param Description: 列名称描述
        # @type Description: String
        # @param Index: 列索引
        # @type Index: Integer
        # @param OriginalName: 原始字段名称
        # @type OriginalName: String

        attr_accessor :Name, :Type, :Description, :Index, :OriginalName

        def initialize(name=nil, type=nil, description=nil, index=nil, originalname=nil)
          @Name = name
          @Type = type
          @Description = description
          @Index = index
          @OriginalName = originalname
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Description = params['Description']
          @Index = params['Index']
          @OriginalName = params['OriginalName']
        end
      end

      # cos 文件信息
      class CosFileInfo < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名称，包含后缀
        # @type FileName: String
        # @param FileType: 文件类型，"PDF", "DOC", "DOCX", "XLS", "XLSX", "PPT", "PPTX", "MD", "TXT", "PNG", "JPG", "JPEG", "CSV"
        # @type FileType: String
        # @param UserCosUrl: 用户文件的cosurl
        # @type UserCosUrl: String

        attr_accessor :FileName, :FileType, :UserCosUrl

        def initialize(filename=nil, filetype=nil, usercosurl=nil)
          @FileName = filename
          @FileType = filetype
          @UserCosUrl = usercosurl
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileType = params['FileType']
          @UserCosUrl = params['UserCosUrl']
        end
      end

      # CreateDataAgentSession请求参数结构体
      class CreateDataAgentSessionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # CreateDataAgentSession返回参数结构体
      class CreateDataAgentSessionResponse < TencentCloud::Common::AbstractModel
        # @param SessionId: 会话
        # @type SessionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionId, :RequestId

        def initialize(sessionid=nil, requestid=nil)
          @SessionId = sessionid
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
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
        # @param KnowledgeBaseId: 知识库id
        # @type KnowledgeBaseId: String

        attr_accessor :InstanceId, :FileId, :ChunkIds, :KnowledgeBaseId

        def initialize(instanceid=nil, fileid=nil, chunkids=nil, knowledgebaseid=nil)
          @InstanceId = instanceid
          @FileId = fileid
          @ChunkIds = chunkids
          @KnowledgeBaseId = knowledgebaseid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FileId = params['FileId']
          @ChunkIds = params['ChunkIds']
          @KnowledgeBaseId = params['KnowledgeBaseId']
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
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param SessionId: 会话ID
        # @type SessionId: String

        attr_accessor :InstanceId, :SessionId

        def initialize(instanceid=nil, sessionid=nil)
          @InstanceId = instanceid
          @SessionId = sessionid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SessionId = params['SessionId']
        end
      end

      # DeleteDataAgentSession返回参数结构体
      class DeleteDataAgentSessionResponse < TencentCloud::Common::AbstractModel
        # @param SessionId: 删除的会话ID
        # @type SessionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionId, :RequestId

        def initialize(sessionid=nil, requestid=nil)
          @SessionId = sessionid
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @RequestId = params['RequestId']
        end
      end

      # 知识库文件信息
      class FileInfo < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名称
        # @type FileName: String
        # @param FileSize: 文件大小，字节
        # @type FileSize: Float
        # @param Type: 文件类型,0=文本,1=表格，默认0
        # @type Type: Integer
        # @param FileId: 文件ID
        # @type FileId: String
        # @param Status: 状态，0：数据处理中  1：可用 -1：错误
        # @type Status: Integer
        # @param CreateUser: 操作者
        # @type CreateUser: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ChunkConfig: 分片策略
        # @type ChunkConfig: :class:`Tencentcloud::Dataagent.v20250513.models.KnowledgeTaskConfig`
        # @param Source: 文件来源0=unknow,1=user_cos,2=local
        # @type Source: Integer
        # @param FileUrl: 文件url
        # @type FileUrl: String
        # @param IsShowCase: 是否官方示例，0=否，1=是
        # @type IsShowCase: Integer
        # @param DocumentSummary: 文档摘要
        # @type DocumentSummary: String

        attr_accessor :FileName, :FileSize, :Type, :FileId, :Status, :CreateUser, :CreateTime, :ChunkConfig, :Source, :FileUrl, :IsShowCase, :DocumentSummary

        def initialize(filename=nil, filesize=nil, type=nil, fileid=nil, status=nil, createuser=nil, createtime=nil, chunkconfig=nil, source=nil, fileurl=nil, isshowcase=nil, documentsummary=nil)
          @FileName = filename
          @FileSize = filesize
          @Type = type
          @FileId = fileid
          @Status = status
          @CreateUser = createuser
          @CreateTime = createtime
          @ChunkConfig = chunkconfig
          @Source = source
          @FileUrl = fileurl
          @IsShowCase = isshowcase
          @DocumentSummary = documentsummary
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @Type = params['Type']
          @FileId = params['FileId']
          @Status = params['Status']
          @CreateUser = params['CreateUser']
          @CreateTime = params['CreateTime']
          unless params['ChunkConfig'].nil?
            @ChunkConfig = KnowledgeTaskConfig.new
            @ChunkConfig.deserialize(params['ChunkConfig'])
          end
          @Source = params['Source']
          @FileUrl = params['FileUrl']
          @IsShowCase = params['IsShowCase']
          @DocumentSummary = params['DocumentSummary']
        end
      end

      # GetJobsByKnowledgeBaseId请求参数结构体
      class GetJobsByKnowledgeBaseIdRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param KnowledgeBaseId: 知识库id
        # @type KnowledgeBaseId: String

        attr_accessor :InstanceId, :KnowledgeBaseId

        def initialize(instanceid=nil, knowledgebaseid=nil)
          @InstanceId = instanceid
          @KnowledgeBaseId = knowledgebaseid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @KnowledgeBaseId = params['KnowledgeBaseId']
        end
      end

      # GetJobsByKnowledgeBaseId返回参数结构体
      class GetJobsByKnowledgeBaseIdResponse < TencentCloud::Common::AbstractModel
        # @param Jobs: 任务列表详情
        # @type Jobs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Jobs, :RequestId

        def initialize(jobs=nil, requestid=nil)
          @Jobs = jobs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Jobs'].nil?
            @Jobs = []
            params['Jobs'].each do |i|
              uploadjob_tmp = UploadJob.new
              uploadjob_tmp.deserialize(i)
              @Jobs << uploadjob_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetKnowledgeBaseFileList请求参数结构体
      class GetKnowledgeBaseFileListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Page: 默认 1 表示第一页，可以不填
        # @type Page: Integer
        # @param PageSize: 默认 10 一页展示 10 条，可以不填
        # @type PageSize: Integer
        # @param KnowledgeBaseId: 知识库id
        # @type KnowledgeBaseId: String

        attr_accessor :InstanceId, :Page, :PageSize, :KnowledgeBaseId

        def initialize(instanceid=nil, page=nil, pagesize=nil, knowledgebaseid=nil)
          @InstanceId = instanceid
          @Page = page
          @PageSize = pagesize
          @KnowledgeBaseId = knowledgebaseid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Page = params['Page']
          @PageSize = params['PageSize']
          @KnowledgeBaseId = params['KnowledgeBaseId']
        end
      end

      # GetKnowledgeBaseFileList返回参数结构体
      class GetKnowledgeBaseFileListResponse < TencentCloud::Common::AbstractModel
        # @param FileList: 文件信息列表
        # @type FileList: Array
        # @param Total: 文件信息总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileList, :Total, :RequestId

        def initialize(filelist=nil, total=nil, requestid=nil)
          @FileList = filelist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FileList'].nil?
            @FileList = []
            params['FileList'].each do |i|
              fileinfo_tmp = FileInfo.new
              fileinfo_tmp.deserialize(i)
              @FileList << fileinfo_tmp
            end
          end
          @Total = params['Total']
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
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param SessionId: 会话ID
        # @type SessionId: String

        attr_accessor :InstanceId, :SessionId

        def initialize(instanceid=nil, sessionid=nil)
          @InstanceId = instanceid
          @SessionId = sessionid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SessionId = params['SessionId']
        end
      end

      # GetSessionDetails返回参数结构体
      class GetSessionDetailsResponse < TencentCloud::Common::AbstractModel
        # @param RecordList: 会话记录详情
        # @type RecordList: Array
        # @param RecordCount: 记录总数
        # @type RecordCount: Integer
        # @param RunRecord: 当前在运行的record信息
        # @type RunRecord: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordList, :RecordCount, :RunRecord, :RequestId

        def initialize(recordlist=nil, recordcount=nil, runrecord=nil, requestid=nil)
          @RecordList = recordlist
          @RecordCount = recordcount
          @RunRecord = runrecord
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RecordList'].nil?
            @RecordList = []
            params['RecordList'].each do |i|
              record_tmp = Record.new
              record_tmp.deserialize(i)
              @RecordList << record_tmp
            end
          end
          @RecordCount = params['RecordCount']
          @RunRecord = params['RunRecord']
          @RequestId = params['RequestId']
        end
      end

      # GetUploadJobDetails请求参数结构体
      class GetUploadJobDetailsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param JobId: 任务id
        # @type JobId: String

        attr_accessor :InstanceId, :JobId

        def initialize(instanceid=nil, jobid=nil)
          @InstanceId = instanceid
          @JobId = jobid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @JobId = params['JobId']
        end
      end

      # GetUploadJobDetails返回参数结构体
      class GetUploadJobDetailsResponse < TencentCloud::Common::AbstractModel
        # @param Job: 任务详情
        # @type Job: :class:`Tencentcloud::Dataagent.v20250513.models.UploadJob`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Job, :RequestId

        def initialize(job=nil, requestid=nil)
          @Job = job
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Job'].nil?
            @Job = UploadJob.new
            @Job.deserialize(params['Job'])
          end
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

      # 任务配置
      class KnowledgeTaskConfig < TencentCloud::Common::AbstractModel
        # @param ChunkType: 切片类型  0:自定义切片，1：智能切片
        # @type ChunkType: Integer
        # @param MaxChunkSize: /智能切片：最小值 1000，默认 4800 自定义切片：正整数即可,默认值 1000
        # @type MaxChunkSize: Integer
        # @param Delimiters:  切片分隔符,自定义切片使用：默认值为：["\n\n", "\n", "。", "！", "？", "，", ""]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Delimiters: Array
        # @param ChunkOverlap: 自定义切片使用:默认0 可重叠字符长度
        # @type ChunkOverlap: Integer
        # @param Columns: 表格类文档解析
        # @type Columns: Array
        # @param Indexes: 带检索的索引列表
        # @type Indexes: Array
        # @param GenDocSummary: 0：不生成文档摘要，1：生成文档概要。默认0，当取1时，GenParaSummary必须也为1
        # @type GenDocSummary: Integer
        # @param GenParaSummary: 0：不生成段落摘要，1：生成段落概要。默认0
        # @type GenParaSummary: Integer

        attr_accessor :ChunkType, :MaxChunkSize, :Delimiters, :ChunkOverlap, :Columns, :Indexes, :GenDocSummary, :GenParaSummary

        def initialize(chunktype=nil, maxchunksize=nil, delimiters=nil, chunkoverlap=nil, columns=nil, indexes=nil, gendocsummary=nil, genparasummary=nil)
          @ChunkType = chunktype
          @MaxChunkSize = maxchunksize
          @Delimiters = delimiters
          @ChunkOverlap = chunkoverlap
          @Columns = columns
          @Indexes = indexes
          @GenDocSummary = gendocsummary
          @GenParaSummary = genparasummary
        end

        def deserialize(params)
          @ChunkType = params['ChunkType']
          @MaxChunkSize = params['MaxChunkSize']
          @Delimiters = params['Delimiters']
          @ChunkOverlap = params['ChunkOverlap']
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              columninfo_tmp = ColumnInfo.new
              columninfo_tmp.deserialize(i)
              @Columns << columninfo_tmp
            end
          end
          @Indexes = params['Indexes']
          @GenDocSummary = params['GenDocSummary']
          @GenParaSummary = params['GenParaSummary']
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
        # @param KnowledgeBaseId: 知识库id
        # @type KnowledgeBaseId: String

        attr_accessor :InstanceId, :FileId, :ChunkId, :Content, :KnowledgeBaseId

        def initialize(instanceid=nil, fileid=nil, chunkid=nil, content=nil, knowledgebaseid=nil)
          @InstanceId = instanceid
          @FileId = fileid
          @ChunkId = chunkid
          @Content = content
          @KnowledgeBaseId = knowledgebaseid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FileId = params['FileId']
          @ChunkId = params['ChunkId']
          @Content = params['Content']
          @KnowledgeBaseId = params['KnowledgeBaseId']
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
        # @param UseScope: 1仅自己使用，2指定用户，0全员
        # @type UseScope: Integer
        # @param AuthorityUins: 可使用用户列表
        # @type AuthorityUins: Array

        attr_accessor :InstanceId, :OperateType, :KnowledgeBaseId, :KnowledgeBaseName, :KnowledgeBaseDesc, :UseScope, :AuthorityUins

        def initialize(instanceid=nil, operatetype=nil, knowledgebaseid=nil, knowledgebasename=nil, knowledgebasedesc=nil, usescope=nil, authorityuins=nil)
          @InstanceId = instanceid
          @OperateType = operatetype
          @KnowledgeBaseId = knowledgebaseid
          @KnowledgeBaseName = knowledgebasename
          @KnowledgeBaseDesc = knowledgebasedesc
          @UseScope = usescope
          @AuthorityUins = authorityuins
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OperateType = params['OperateType']
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @KnowledgeBaseName = params['KnowledgeBaseName']
          @KnowledgeBaseDesc = params['KnowledgeBaseDesc']
          @UseScope = params['UseScope']
          @AuthorityUins = params['AuthorityUins']
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
        # @param Page: 表示第一页
        # @type Page: Integer
        # @param PageSize: 默认一页展示 10 条
        # @type PageSize: Integer
        # @param KnowledgeBaseId: 知识库id
        # @type KnowledgeBaseId: String

        attr_accessor :Page, :PageSize, :KnowledgeBaseId

        def initialize(page=nil, pagesize=nil, knowledgebaseid=nil)
          @Page = page
          @PageSize = pagesize
          @KnowledgeBaseId = knowledgebaseid
        end

        def deserialize(params)
          @Page = params['Page']
          @PageSize = params['PageSize']
          @KnowledgeBaseId = params['KnowledgeBaseId']
        end
      end

      # QueryChunkList返回参数结构体
      class QueryChunkListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Chunks: 分片信息
        # @type Chunks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Chunks, :RequestId

        def initialize(total=nil, chunks=nil, requestid=nil)
          @Total = total
          @Chunks = chunks
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Chunks'].nil?
            @Chunks = []
            params['Chunks'].each do |i|
              chunk_tmp = Chunk.new
              chunk_tmp.deserialize(i)
              @Chunks << chunk_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 问答结构
      class Record < TencentCloud::Common::AbstractModel
        # @param Question: 问题内容
        # @type Question: String
        # @param Answer: 回答内容
        # @type Answer: String
        # @param Think: 思考内容
        # @type Think: String
        # @param TaskList: 任务列表
        # @type TaskList: Array
        # @param CreateTime: 记录创建时间
        # @type CreateTime: String
        # @param UpdateTime: 记录更新时间
        # @type UpdateTime: String
        # @param RecordId: 记录id
        # @type RecordId: String
        # @param FinalSummary: 总结内容
        # @type FinalSummary: String
        # @param SessionId: 会话ID
        # @type SessionId: String
        # @param Feedback: 1=赞，2=踩，0=无反馈
        # @type Feedback: Integer
        # @param DbInfo: 数据库信息
        # @type DbInfo: String
        # @param ErrorContext: 错误信息
        # @type ErrorContext: String
        # @param TaskListStr: TaskList的string字符串
        # @type TaskListStr: String
        # @param KnowledgeBaseIds: 知识库id列表
        # @type KnowledgeBaseIds: Array
        # @param Context: 上下文
        # @type Context: String

        attr_accessor :Question, :Answer, :Think, :TaskList, :CreateTime, :UpdateTime, :RecordId, :FinalSummary, :SessionId, :Feedback, :DbInfo, :ErrorContext, :TaskListStr, :KnowledgeBaseIds, :Context

        def initialize(question=nil, answer=nil, think=nil, tasklist=nil, createtime=nil, updatetime=nil, recordid=nil, finalsummary=nil, sessionid=nil, feedback=nil, dbinfo=nil, errorcontext=nil, taskliststr=nil, knowledgebaseids=nil, context=nil)
          @Question = question
          @Answer = answer
          @Think = think
          @TaskList = tasklist
          @CreateTime = createtime
          @UpdateTime = updatetime
          @RecordId = recordid
          @FinalSummary = finalsummary
          @SessionId = sessionid
          @Feedback = feedback
          @DbInfo = dbinfo
          @ErrorContext = errorcontext
          @TaskListStr = taskliststr
          @KnowledgeBaseIds = knowledgebaseids
          @Context = context
        end

        def deserialize(params)
          @Question = params['Question']
          @Answer = params['Answer']
          @Think = params['Think']
          unless params['TaskList'].nil?
            @TaskList = []
            params['TaskList'].each do |i|
              task_tmp = Task.new
              task_tmp.deserialize(i)
              @TaskList << task_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @RecordId = params['RecordId']
          @FinalSummary = params['FinalSummary']
          @SessionId = params['SessionId']
          @Feedback = params['Feedback']
          @DbInfo = params['DbInfo']
          @ErrorContext = params['ErrorContext']
          @TaskListStr = params['TaskListStr']
          @KnowledgeBaseIds = params['KnowledgeBaseIds']
          @Context = params['Context']
        end
      end

      # 步骤扩展结构
      class StepExpand < TencentCloud::Common::AbstractModel
        # @param Title: 标题
        # @type Title: String
        # @param Status: 状态
        # @type Status: String
        # @param CellIds: cellid数组
        # @type CellIds: Array

        attr_accessor :Title, :Status, :CellIds

        def initialize(title=nil, status=nil, cellids=nil)
          @Title = title
          @Status = status
          @CellIds = cellids
        end

        def deserialize(params)
          @Title = params['Title']
          @Status = params['Status']
          @CellIds = params['CellIds']
        end
      end

      # 任务步骤
      class StepInfo < TencentCloud::Common::AbstractModel
        # @param Id: 步骤id
        # @type Id: Integer
        # @param Name: 步骤名称
        # @type Name: String
        # @param Status: 步骤状态
        # @type Status: String
        # @param Type: 类型(text/expand)
        # @type Type: String
        # @param Summary: 总结
        # @type Summary: String
        # @param Expand: 步骤扩展结构
        # @type Expand: :class:`Tencentcloud::Dataagent.v20250513.models.StepExpand`
        # @param Desc: 描述
        # @type Desc: String

        attr_accessor :Id, :Name, :Status, :Type, :Summary, :Expand, :Desc

        def initialize(id=nil, name=nil, status=nil, type=nil, summary=nil, expand=nil, desc=nil)
          @Id = id
          @Name = name
          @Status = status
          @Type = type
          @Summary = summary
          @Expand = expand
          @Desc = desc
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Status = params['Status']
          @Type = params['Type']
          @Summary = params['Summary']
          unless params['Expand'].nil?
            @Expand = StepExpand.new
            @Expand.deserialize(params['Expand'])
          end
          @Desc = params['Desc']
        end
      end

      # StopChatAI请求参数结构体
      class StopChatAIRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: 会话ID
        # @type SessionId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :SessionId, :InstanceId

        def initialize(sessionid=nil, instanceid=nil)
          @SessionId = sessionid
          @InstanceId = instanceid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @InstanceId = params['InstanceId']
        end
      end

      # StopChatAI返回参数结构体
      class StopChatAIResponse < TencentCloud::Common::AbstractModel
        # @param SessionId: 会话
        # @type SessionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionId, :RequestId

        def initialize(sessionid=nil, requestid=nil)
          @SessionId = sessionid
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @RequestId = params['RequestId']
        end
      end

      # 任务信息
      class Task < TencentCloud::Common::AbstractModel
        # @param Id: 任务ID
        # @type Id: Integer
        # @param Name: 任务名称
        # @type Name: String
        # @param Status: 任务状态
        # @type Status: String
        # @param StepInfoList: 任务步骤列表
        # @type StepInfoList: Array

        attr_accessor :Id, :Name, :Status, :StepInfoList

        def initialize(id=nil, name=nil, status=nil, stepinfolist=nil)
          @Id = id
          @Name = name
          @Status = status
          @StepInfoList = stepinfolist
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Status = params['Status']
          unless params['StepInfoList'].nil?
            @StepInfoList = []
            params['StepInfoList'].each do |i|
              stepinfo_tmp = StepInfo.new
              stepinfo_tmp.deserialize(i)
              @StepInfoList << stepinfo_tmp
            end
          end
        end
      end

      # UploadAndCommitFile请求参数结构体
      class UploadAndCommitFileRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param CosFiles: 上传文件列表
        # @type CosFiles: Array
        # @param KnowledgeBaseId: 知识库id
        # @type KnowledgeBaseId: String

        attr_accessor :InstanceId, :CosFiles, :KnowledgeBaseId

        def initialize(instanceid=nil, cosfiles=nil, knowledgebaseid=nil)
          @InstanceId = instanceid
          @CosFiles = cosfiles
          @KnowledgeBaseId = knowledgebaseid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['CosFiles'].nil?
            @CosFiles = []
            params['CosFiles'].each do |i|
              cosfileinfo_tmp = CosFileInfo.new
              cosfileinfo_tmp.deserialize(i)
              @CosFiles << cosfileinfo_tmp
            end
          end
          @KnowledgeBaseId = params['KnowledgeBaseId']
        end
      end

      # UploadAndCommitFile返回参数结构体
      class UploadAndCommitFileResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 上传任务
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId

        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # 上传任务
      class UploadJob < TencentCloud::Common::AbstractModel
        # @param Id: id
        # @type Id: Integer
        # @param JobId: 任务id
        # @type JobId: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param KnowledgeBaseId: 知识库id
        # @type KnowledgeBaseId: String
        # @param Uin: uin
        # @type Uin: String
        # @param SubUin: subuin
        # @type SubUin: String
        # @param Status: Pending、FileUploading、
        # FileParsing、
        # Success、
        # Failed

        # @type Status: String
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param UpdateTime: 任务更新时间
        # @type UpdateTime: String
        # @param Message: 错误信息
        # @type Message: String

        attr_accessor :Id, :JobId, :InstanceId, :KnowledgeBaseId, :Uin, :SubUin, :Status, :CreateTime, :UpdateTime, :Message

        def initialize(id=nil, jobid=nil, instanceid=nil, knowledgebaseid=nil, uin=nil, subuin=nil, status=nil, createtime=nil, updatetime=nil, message=nil)
          @Id = id
          @JobId = jobid
          @InstanceId = instanceid
          @KnowledgeBaseId = knowledgebaseid
          @Uin = uin
          @SubUin = subuin
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Message = message
        end

        def deserialize(params)
          @Id = params['Id']
          @JobId = params['JobId']
          @InstanceId = params['InstanceId']
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @Uin = params['Uin']
          @SubUin = params['SubUin']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Message = params['Message']
        end
      end

    end
  end
end

