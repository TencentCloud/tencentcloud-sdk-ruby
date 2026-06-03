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
  module Bi
    module V20220105
      # API数据源连接配置
      class ApiDatasourceConfig < TencentCloud::Common::AbstractModel
        # @param FieldsJsonData: API数据源解析结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldsJsonData: String
        # @param ConnectionType: 连接类型1:直连 2:抽取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectionType: Integer
        # @param FrequencyConfig: 抽取频率配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrequencyConfig: :class:`Tencentcloud::Bi.v20220105.models.FrequencyConfig`
        # @param Url: 请求URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param RequestMethod: 1:GET 2:POST
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestMethod: Integer
        # @param RequestHeader: 请求头
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestHeader: String
        # @param RequestParams: 请求参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestParams: String
        # @param RequestBody: 请求体
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestBody: String
        # @param UserName: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: 密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param AuthorizationType: 1: 无鉴权 2:BASIC_AUTH
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizationType: Integer
        # @param TableId: 表id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: Integer
        # @param JsonPathDbNameMap: 路径DbName映射
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JsonPathDbNameMap: String
        # @param AuthApi: 鉴权API
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthApi: String
        # @param AppKey: 应用Key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppKey: String
        # @param AppSecret: 应用密钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppSecret: String
        # @param SecretKey: 数据密钥Key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretKey: String
        # @param SecretIv: 数据密钥初始化向量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretIv: String

        attr_accessor :FieldsJsonData, :ConnectionType, :FrequencyConfig, :Url, :RequestMethod, :RequestHeader, :RequestParams, :RequestBody, :UserName, :Password, :AuthorizationType, :TableId, :JsonPathDbNameMap, :AuthApi, :AppKey, :AppSecret, :SecretKey, :SecretIv

        def initialize(fieldsjsondata=nil, connectiontype=nil, frequencyconfig=nil, url=nil, requestmethod=nil, requestheader=nil, requestparams=nil, requestbody=nil, username=nil, password=nil, authorizationtype=nil, tableid=nil, jsonpathdbnamemap=nil, authapi=nil, appkey=nil, appsecret=nil, secretkey=nil, secretiv=nil)
          @FieldsJsonData = fieldsjsondata
          @ConnectionType = connectiontype
          @FrequencyConfig = frequencyconfig
          @Url = url
          @RequestMethod = requestmethod
          @RequestHeader = requestheader
          @RequestParams = requestparams
          @RequestBody = requestbody
          @UserName = username
          @Password = password
          @AuthorizationType = authorizationtype
          @TableId = tableid
          @JsonPathDbNameMap = jsonpathdbnamemap
          @AuthApi = authapi
          @AppKey = appkey
          @AppSecret = appsecret
          @SecretKey = secretkey
          @SecretIv = secretiv
        end

        def deserialize(params)
          @FieldsJsonData = params['FieldsJsonData']
          @ConnectionType = params['ConnectionType']
          unless params['FrequencyConfig'].nil?
            @FrequencyConfig = FrequencyConfig.new
            @FrequencyConfig.deserialize(params['FrequencyConfig'])
          end
          @Url = params['Url']
          @RequestMethod = params['RequestMethod']
          @RequestHeader = params['RequestHeader']
          @RequestParams = params['RequestParams']
          @RequestBody = params['RequestBody']
          @UserName = params['UserName']
          @Password = params['Password']
          @AuthorizationType = params['AuthorizationType']
          @TableId = params['TableId']
          @JsonPathDbNameMap = params['JsonPathDbNameMap']
          @AuthApi = params['AuthApi']
          @AppKey = params['AppKey']
          @AppSecret = params['AppSecret']
          @SecretKey = params['SecretKey']
          @SecretIv = params['SecretIv']
        end
      end

      # 创建ApiKey接口出参
      class ApiKeyAuthApplyVO < TencentCloud::Common::AbstractModel
        # @param Id: <p>id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param CorpId: <p>企业id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorpId: String
        # @param ApiKey: <p>apiKey</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiKey: String
        # @param DefaultUser: <p>默认用户</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultUser: String
        # @param CreatedUser: <p>创建人</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedUser: String
        # @param CreatedAt: <p>创建时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedUser: <p>更新人</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedUser: String
        # @param UpdatedAt: <p>更新时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String

        attr_accessor :Id, :CorpId, :ApiKey, :DefaultUser, :CreatedUser, :CreatedAt, :UpdatedUser, :UpdatedAt

        def initialize(id=nil, corpid=nil, apikey=nil, defaultuser=nil, createduser=nil, createdat=nil, updateduser=nil, updatedat=nil)
          @Id = id
          @CorpId = corpid
          @ApiKey = apikey
          @DefaultUser = defaultuser
          @CreatedUser = createduser
          @CreatedAt = createdat
          @UpdatedUser = updateduser
          @UpdatedAt = updatedat
        end

        def deserialize(params)
          @Id = params['Id']
          @CorpId = params['CorpId']
          @ApiKey = params['ApiKey']
          @DefaultUser = params['DefaultUser']
          @CreatedUser = params['CreatedUser']
          @CreatedAt = params['CreatedAt']
          @UpdatedUser = params['UpdatedUser']
          @UpdatedAt = params['UpdatedAt']
        end
      end

      # ApiKey列表
      class ApiKeyAuthApplyVOList < TencentCloud::Common::AbstractModel
        # @param Total: <p>总数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param TotalPages: <p>页数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPages: Integer
        # @param List: <p>列表数据</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :Total, :TotalPages, :List

        def initialize(total=nil, totalpages=nil, list=nil)
          @Total = total
          @TotalPages = totalpages
          @List = list
        end

        def deserialize(params)
          @Total = params['Total']
          @TotalPages = params['TotalPages']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              apikeyauthapplyvo_tmp = ApiKeyAuthApplyVO.new
              apikeyauthapplyvo_tmp.deserialize(i)
              @List << apikeyauthapplyvo_tmp
            end
          end
        end
      end

      # ApplyEmbedInterval请求参数结构体
      class ApplyEmbedIntervalRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 分享项目id
        # @type ProjectId: Integer
        # @param PageId: 分享页面id，嵌出看板时此为空值0，ChatBI嵌出时不传
        # @type PageId: Integer
        # @param BIToken: 需要申请延期的Token
        # @type BIToken: String
        # @param ExtraParam: 备用字段
        # @type ExtraParam: String
        # @param Intention: embed：页面/看板嵌出
        # chatBIEmbed：ChatBI嵌出
        # @type Intention: String
        # @param Scope: panel, 看板；page，页面
        # project，ChatBI嵌出时
        # @type Scope: String

        attr_accessor :ProjectId, :PageId, :BIToken, :ExtraParam, :Intention, :Scope

        def initialize(projectid=nil, pageid=nil, bitoken=nil, extraparam=nil, intention=nil, scope=nil)
          @ProjectId = projectid
          @PageId = pageid
          @BIToken = bitoken
          @ExtraParam = extraparam
          @Intention = intention
          @Scope = scope
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageId = params['PageId']
          @BIToken = params['BIToken']
          @ExtraParam = params['ExtraParam']
          @Intention = params['Intention']
          @Scope = params['Scope']
        end
      end

      # ApplyEmbedInterval返回参数结构体
      class ApplyEmbedIntervalResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 额外参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 结果数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.ApplyEmbedTokenInfo`
        # @param Msg: 结果描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
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

      # 列表查询返回的每条记录的操作属性
      class BaseStateAction < TencentCloud::Common::AbstractModel
        # @param ShowEdit: 编辑是否可见
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowEdit: Boolean
        # @param IsEdit: 编辑是否可点击
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsEdit: Boolean
        # @param EditText: 编辑按钮的文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EditText: String
        # @param EditTips: 编辑不可用时的提示文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EditTips: String
        # @param ShowDel: 删除是否可见
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowDel: Boolean
        # @param IsDel: 删除是否可点击
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDel: Boolean
        # @param DelText: 删除按钮的文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DelText: String
        # @param DelTips: 删除不可用时的提示文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DelTips: String
        # @param ShowCopy: 复制是否可见
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowCopy: Boolean
        # @param ShowView: 是否可见
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowView: Boolean
        # @param ShowRename: 是否可重命名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowRename: Boolean

        attr_accessor :ShowEdit, :IsEdit, :EditText, :EditTips, :ShowDel, :IsDel, :DelText, :DelTips, :ShowCopy, :ShowView, :ShowRename

        def initialize(showedit=nil, isedit=nil, edittext=nil, edittips=nil, showdel=nil, isdel=nil, deltext=nil, deltips=nil, showcopy=nil, showview=nil, showrename=nil)
          @ShowEdit = showedit
          @IsEdit = isedit
          @EditText = edittext
          @EditTips = edittips
          @ShowDel = showdel
          @IsDel = isdel
          @DelText = deltext
          @DelTips = deltips
          @ShowCopy = showcopy
          @ShowView = showview
          @ShowRename = showrename
        end

        def deserialize(params)
          @ShowEdit = params['ShowEdit']
          @IsEdit = params['IsEdit']
          @EditText = params['EditText']
          @EditTips = params['EditTips']
          @ShowDel = params['ShowDel']
          @IsDel = params['IsDel']
          @DelText = params['DelText']
          @DelTips = params['DelTips']
          @ShowCopy = params['ShowCopy']
          @ShowView = params['ShowView']
          @ShowRename = params['ShowRename']
        end
      end

      # ClearEmbedToken请求参数结构体
      class ClearEmbedTokenRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param UserCorpId: 主账号id
        # @type UserCorpId: String
        # @param Scope: panel , page
        # @type Scope: String
        # @param PageId: page id
        # @type PageId: String

        attr_accessor :ProjectId, :UserCorpId, :Scope, :PageId

        def initialize(projectid=nil, usercorpid=nil, scope=nil, pageid=nil)
          @ProjectId = projectid
          @UserCorpId = usercorpid
          @Scope = scope
          @PageId = pageid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @UserCorpId = params['UserCorpId']
          @Scope = params['Scope']
          @PageId = params['PageId']
        end
      end

      # ClearEmbedToken返回参数结构体
      class ClearEmbedTokenResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 额外消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 提示消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # 企业用户列表
      class CorpUserListData < TencentCloud::Common::AbstractModel
        # @param List: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param TotalPages: 页数
        # @type TotalPages: Integer

        attr_accessor :List, :Total, :TotalPages

        def initialize(list=nil, total=nil, totalpages=nil)
          @List = list
          @Total = total
          @TotalPages = totalpages
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              useridandusername_tmp = UserIdAndUserName.new
              useridandusername_tmp.deserialize(i)
              @List << useridandusername_tmp
            end
          end
          @Total = params['Total']
          @TotalPages = params['TotalPages']
        end
      end

      # CreateAuthApiKey请求参数结构体
      class CreateAuthApiKeyRequest < TencentCloud::Common::AbstractModel
        # @param DefaultUser: <p>默认用户</p>
        # @type DefaultUser: String

        attr_accessor :DefaultUser

        def initialize(defaultuser=nil)
          @DefaultUser = defaultuser
        end

        def deserialize(params)
          @DefaultUser = params['DefaultUser']
        end
      end

      # CreateAuthApiKey返回参数结构体
      class CreateAuthApiKeyResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: <p>&quot;&quot;</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: <p>&quot;success&quot;</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: <p>数据</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.ApiKeyAuthApplyVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          unless params['Data'].nil?
            @Data = ApiKeyAuthApplyVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateDataTable请求参数结构体
      class CreateDataTableRequest < TencentCloud::Common::AbstractModel
        # @param Type: 后端提供字典：数据表类型，1、数据库建表，2、SQL建表，3、Excel上传，4、API接入，5、腾讯文档，6、云数据库，7、手工输入，8、关联查询
        # @type Type: Integer
        # @param Name: 数据表名称
        # @type Name: String
        # @param ProjectId: 无
        # @type ProjectId: Integer
        # @param FoldId: 所属文件夹
        # @type FoldId: Integer
        # @param DatasourceId: 数据源Id
        # @type DatasourceId: String
        # @param TableName: 物理表名
        # @type TableName: String
        # @param Sql: sql语句
        # @type Sql: String
        # @param ExcelUrl: excel地址
        # @type ExcelUrl: String
        # @param Fields: 字段配置
        # @type Fields: Array
        # @param TableNodeType: 多表关联使用: 1:数据源原表,2:本地表,3:Excel表,4:API表
        # @type TableNodeType: Integer
        # @param Tables: 多表关联的原始表信息
        # @type Tables: Array
        # @param Joins: 多表关联的关联信息
        # @type Joins: Array
        # @param ExtInfo: 补充信息，如api数据源信息，腾讯文档接入信息等
        # @type ExtInfo: String
        # @param AsyncRequest: 是否是异步
        # @type AsyncRequest: Boolean
        # @param ParentTranId: 依赖的异步事务id
        # @type ParentTranId: String
        # @param ApiDatasourceConfig: API数据源配置
        # @type ApiDatasourceConfig: :class:`Tencentcloud::Bi.v20220105.models.ApiDatasourceConfig`
        # @param ParamList: 1
        # @type ParamList: Array
        # @param DlcExtInfo: dlc高级参数
        # @type DlcExtInfo: String
        # @param QueryDbData: 是否查询数据库
        # @type QueryDbData: String
        # @param TableComment: 数据表备注
        # @type TableComment: String
        # @param QueryFieldRemark: 是否查询字段备注
        # @type QueryFieldRemark: Integer
        # @param FieldRemarkList: 字段备注列表
        # @type FieldRemarkList: Array

        attr_accessor :Type, :Name, :ProjectId, :FoldId, :DatasourceId, :TableName, :Sql, :ExcelUrl, :Fields, :TableNodeType, :Tables, :Joins, :ExtInfo, :AsyncRequest, :ParentTranId, :ApiDatasourceConfig, :ParamList, :DlcExtInfo, :QueryDbData, :TableComment, :QueryFieldRemark, :FieldRemarkList

        def initialize(type=nil, name=nil, projectid=nil, foldid=nil, datasourceid=nil, tablename=nil, sql=nil, excelurl=nil, fields=nil, tablenodetype=nil, tables=nil, joins=nil, extinfo=nil, asyncrequest=nil, parenttranid=nil, apidatasourceconfig=nil, paramlist=nil, dlcextinfo=nil, querydbdata=nil, tablecomment=nil, queryfieldremark=nil, fieldremarklist=nil)
          @Type = type
          @Name = name
          @ProjectId = projectid
          @FoldId = foldid
          @DatasourceId = datasourceid
          @TableName = tablename
          @Sql = sql
          @ExcelUrl = excelurl
          @Fields = fields
          @TableNodeType = tablenodetype
          @Tables = tables
          @Joins = joins
          @ExtInfo = extinfo
          @AsyncRequest = asyncrequest
          @ParentTranId = parenttranid
          @ApiDatasourceConfig = apidatasourceconfig
          @ParamList = paramlist
          @DlcExtInfo = dlcextinfo
          @QueryDbData = querydbdata
          @TableComment = tablecomment
          @QueryFieldRemark = queryfieldremark
          @FieldRemarkList = fieldremarklist
        end

        def deserialize(params)
          @Type = params['Type']
          @Name = params['Name']
          @ProjectId = params['ProjectId']
          @FoldId = params['FoldId']
          @DatasourceId = params['DatasourceId']
          @TableName = params['TableName']
          @Sql = params['Sql']
          @ExcelUrl = params['ExcelUrl']
          unless params['Fields'].nil?
            @Fields = []
            params['Fields'].each do |i|
              tablefield_tmp = TableField.new
              tablefield_tmp.deserialize(i)
              @Fields << tablefield_tmp
            end
          end
          @TableNodeType = params['TableNodeType']
          unless params['Tables'].nil?
            @Tables = []
            params['Tables'].each do |i|
              joinsourcetable_tmp = JoinSourceTable.new
              joinsourcetable_tmp.deserialize(i)
              @Tables << joinsourcetable_tmp
            end
          end
          unless params['Joins'].nil?
            @Joins = []
            params['Joins'].each do |i|
              joinrelation_tmp = JoinRelation.new
              joinrelation_tmp.deserialize(i)
              @Joins << joinrelation_tmp
            end
          end
          @ExtInfo = params['ExtInfo']
          @AsyncRequest = params['AsyncRequest']
          @ParentTranId = params['ParentTranId']
          unless params['ApiDatasourceConfig'].nil?
            @ApiDatasourceConfig = ApiDatasourceConfig.new
            @ApiDatasourceConfig.deserialize(params['ApiDatasourceConfig'])
          end
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              paramcreatedto_tmp = ParamCreateDTO.new
              paramcreatedto_tmp.deserialize(i)
              @ParamList << paramcreatedto_tmp
            end
          end
          @DlcExtInfo = params['DlcExtInfo']
          @QueryDbData = params['QueryDbData']
          @TableComment = params['TableComment']
          @QueryFieldRemark = params['QueryFieldRemark']
          unless params['FieldRemarkList'].nil?
            @FieldRemarkList = []
            params['FieldRemarkList'].each do |i|
              fieldremarkdto_tmp = FieldRemarkDTO.new
              fieldremarkdto_tmp.deserialize(i)
              @FieldRemarkList << fieldremarkdto_tmp
            end
          end
        end
      end

      # CreateDataTable返回参数结构体
      class CreateDataTableResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Data: 成功返回数据表的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.IdDTO`
        # @param Extra: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 错误提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Data, :Extra, :Msg, :RequestId

        def initialize(errorinfo=nil, data=nil, extra=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Data = data
          @Extra = extra
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          unless params['Data'].nil?
            @Data = IdDTO.new
            @Data.deserialize(params['Data'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # CreateDatasourceCloud请求参数结构体
      class CreateDatasourceCloudRequest < TencentCloud::Common::AbstractModel
        # @param ServiceType: 后端提供字典：域类型，1、腾讯云，2、本地
        # @type ServiceType: String
        # @param DbType: 驱动
        # 取值范围：
        # MYSQL：MySQL数据库
        # PRESTO：PRESTO数据库
        # POSTGRE：PostgreSQL数据库
        # DLC：DLC数据库
        # MSSQL：微软SQL Server数据库
        # @type DbType: String
        # @param Charset: 数据库编码
        # @type Charset: String
        # @param DbUser: 用户名
        # @type DbUser: String
        # @param DbPwd: 密码
        # @type DbPwd: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param SourceName: 数据库别名
        # @type SourceName: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param Vip: 公有云内网ip
        # @type Vip: String
        # @param Vport: 公有云内网端口
        # @type Vport: String
        # @param VpcId: vpc标识
        # @type VpcId: String
        # @param UniqVpcId: 统一vpc标识
        # @type UniqVpcId: String
        # @param RegionId: 区域标识（gz,bj)
        # @type RegionId: String
        # @param ExtraParam: 扩展参数
        # @type ExtraParam: String
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param ProdDbName: 数据源产品名
        # @type ProdDbName: String
        # @param DataOrigin: 第三方数据源标识
        # @type DataOrigin: String
        # @param DataOriginProjectId: 第三方项目id
        # @type DataOriginProjectId: String
        # @param DataOriginDatasourceId: 第三方数据源id
        # @type DataOriginDatasourceId: String
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Schema: 数据库schema
        # @type Schema: String
        # @param DbVersion: 数据库版本
        # @type DbVersion: String

        attr_accessor :ServiceType, :DbType, :Charset, :DbUser, :DbPwd, :DbName, :SourceName, :ProjectId, :Vip, :Vport, :VpcId, :UniqVpcId, :RegionId, :ExtraParam, :InstanceId, :ProdDbName, :DataOrigin, :DataOriginProjectId, :DataOriginDatasourceId, :ClusterId, :Schema, :DbVersion

        def initialize(servicetype=nil, dbtype=nil, charset=nil, dbuser=nil, dbpwd=nil, dbname=nil, sourcename=nil, projectid=nil, vip=nil, vport=nil, vpcid=nil, uniqvpcid=nil, regionid=nil, extraparam=nil, instanceid=nil, proddbname=nil, dataorigin=nil, dataoriginprojectid=nil, dataorigindatasourceid=nil, clusterid=nil, schema=nil, dbversion=nil)
          @ServiceType = servicetype
          @DbType = dbtype
          @Charset = charset
          @DbUser = dbuser
          @DbPwd = dbpwd
          @DbName = dbname
          @SourceName = sourcename
          @ProjectId = projectid
          @Vip = vip
          @Vport = vport
          @VpcId = vpcid
          @UniqVpcId = uniqvpcid
          @RegionId = regionid
          @ExtraParam = extraparam
          @InstanceId = instanceid
          @ProdDbName = proddbname
          @DataOrigin = dataorigin
          @DataOriginProjectId = dataoriginprojectid
          @DataOriginDatasourceId = dataorigindatasourceid
          @ClusterId = clusterid
          @Schema = schema
          @DbVersion = dbversion
        end

        def deserialize(params)
          @ServiceType = params['ServiceType']
          @DbType = params['DbType']
          @Charset = params['Charset']
          @DbUser = params['DbUser']
          @DbPwd = params['DbPwd']
          @DbName = params['DbName']
          @SourceName = params['SourceName']
          @ProjectId = params['ProjectId']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @VpcId = params['VpcId']
          @UniqVpcId = params['UniqVpcId']
          @RegionId = params['RegionId']
          @ExtraParam = params['ExtraParam']
          @InstanceId = params['InstanceId']
          @ProdDbName = params['ProdDbName']
          @DataOrigin = params['DataOrigin']
          @DataOriginProjectId = params['DataOriginProjectId']
          @DataOriginDatasourceId = params['DataOriginDatasourceId']
          @ClusterId = params['ClusterId']
          @Schema = params['Schema']
          @DbVersion = params['DbVersion']
        end
      end

      # CreateDatasourceCloud返回参数结构体
      class CreateDatasourceCloudResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Data: 成功无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.IdDTO`
        # @param Extra: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Data, :Extra, :Msg, :RequestId

        def initialize(errorinfo=nil, data=nil, extra=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Data = data
          @Extra = extra
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          unless params['Data'].nil?
            @Data = IdDTO.new
            @Data.deserialize(params['Data'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # CreateDatasource请求参数结构体
      class CreateDatasourceRequest < TencentCloud::Common::AbstractModel
        # @param DbHost: HOST
        # @type DbHost: String
        # @param DbPort: 端口
        # @type DbPort: Integer
        # @param ServiceType: 后端提供字典：域类型，1、腾讯云，2、本地
        # @type ServiceType: String
        # @param DbType: 驱动
        # 取值范围：
        # MYSQL：MySQL数据库
        # PRESTO：PRESTO数据库
        # POSTGRE：PostgreSQL数据库
        # DLC：DLC数据库
        # MSSQL：微软SQL Server数据库
        # @type DbType: String
        # @param Charset: 数据库编码
        # @type Charset: String
        # @param DbUser: 用户名
        # @type DbUser: String
        # @param DbPwd: 密码
        # @type DbPwd: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param SourceName: 数据库别名
        # @type SourceName: String
        # @param ProjectId: 项目id
        # @type ProjectId: Integer
        # @param Catalog: catalog值
        # @type Catalog: String
        # @param DataOrigin: 第三方数据源标识
        # @type DataOrigin: String
        # @param DataOriginProjectId: 第三方项目id
        # @type DataOriginProjectId: String
        # @param DataOriginDatasourceId: 第三方数据源id
        # @type DataOriginDatasourceId: String
        # @param ExtraParam: 扩展参数
        # @type ExtraParam: String
        # @param UniqVpcId: 腾讯云私有网络统一标识
        # @type UniqVpcId: String
        # @param Vip: 私有网络ip
        # @type Vip: String
        # @param Vport: 私有网络端口
        # @type Vport: String
        # @param VpcId: 腾讯云私有网络标识
        # @type VpcId: String
        # @param OperationAuthLimit: 操作权限限制
        # @type OperationAuthLimit: Array
        # @param UseVPC: 开启vpc
        # @type UseVPC: Boolean
        # @param RegionId: 地域
        # @type RegionId: String
        # @param Schema: 数据库schema
        # @type Schema: String
        # @param DbVersion: 数据库版本
        # @type DbVersion: String

        attr_accessor :DbHost, :DbPort, :ServiceType, :DbType, :Charset, :DbUser, :DbPwd, :DbName, :SourceName, :ProjectId, :Catalog, :DataOrigin, :DataOriginProjectId, :DataOriginDatasourceId, :ExtraParam, :UniqVpcId, :Vip, :Vport, :VpcId, :OperationAuthLimit, :UseVPC, :RegionId, :Schema, :DbVersion

        def initialize(dbhost=nil, dbport=nil, servicetype=nil, dbtype=nil, charset=nil, dbuser=nil, dbpwd=nil, dbname=nil, sourcename=nil, projectid=nil, catalog=nil, dataorigin=nil, dataoriginprojectid=nil, dataorigindatasourceid=nil, extraparam=nil, uniqvpcid=nil, vip=nil, vport=nil, vpcid=nil, operationauthlimit=nil, usevpc=nil, regionid=nil, schema=nil, dbversion=nil)
          @DbHost = dbhost
          @DbPort = dbport
          @ServiceType = servicetype
          @DbType = dbtype
          @Charset = charset
          @DbUser = dbuser
          @DbPwd = dbpwd
          @DbName = dbname
          @SourceName = sourcename
          @ProjectId = projectid
          @Catalog = catalog
          @DataOrigin = dataorigin
          @DataOriginProjectId = dataoriginprojectid
          @DataOriginDatasourceId = dataorigindatasourceid
          @ExtraParam = extraparam
          @UniqVpcId = uniqvpcid
          @Vip = vip
          @Vport = vport
          @VpcId = vpcid
          @OperationAuthLimit = operationauthlimit
          @UseVPC = usevpc
          @RegionId = regionid
          @Schema = schema
          @DbVersion = dbversion
        end

        def deserialize(params)
          @DbHost = params['DbHost']
          @DbPort = params['DbPort']
          @ServiceType = params['ServiceType']
          @DbType = params['DbType']
          @Charset = params['Charset']
          @DbUser = params['DbUser']
          @DbPwd = params['DbPwd']
          @DbName = params['DbName']
          @SourceName = params['SourceName']
          @ProjectId = params['ProjectId']
          @Catalog = params['Catalog']
          @DataOrigin = params['DataOrigin']
          @DataOriginProjectId = params['DataOriginProjectId']
          @DataOriginDatasourceId = params['DataOriginDatasourceId']
          @ExtraParam = params['ExtraParam']
          @UniqVpcId = params['UniqVpcId']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @VpcId = params['VpcId']
          @OperationAuthLimit = params['OperationAuthLimit']
          @UseVPC = params['UseVPC']
          @RegionId = params['RegionId']
          @Schema = params['Schema']
          @DbVersion = params['DbVersion']
        end
      end

      # CreateDatasource返回参数结构体
      class CreateDatasourceResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Data: 数据源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.IdDTO`
        # @param Extra: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Data, :Extra, :Msg, :RequestId

        def initialize(errorinfo=nil, data=nil, extra=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Data = data
          @Extra = extra
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          unless params['Data'].nil?
            @Data = IdDTO.new
            @Data.deserialize(params['Data'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # CreateEmbedToken请求参数结构体
      class CreateEmbedTokenRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 分享项目id
        # @type ProjectId: Integer
        # @param PageId: 分享页面id，嵌出看板时此为空值0，ChatBI嵌出时不传
        # @type PageId: Integer
        # @param Intention: embed表示页面看板嵌出，chatBIEmbed表示ChatBI嵌出
        # @type Intention: String
        # @param Scope: page表示嵌出页面，panel表示嵌出整个看板，ChatBI嵌出时使用project
        # @type Scope: String
        # @param ExpireTime: 过期时间。 单位：分钟 最大值：240。即，4小时 默认值：240
        # @type ExpireTime: String
        # @param ExtraParam: 备用字段
        # @type ExtraParam: String
        # @param UserCorpId: 使用者企业Id(仅用于多用户)
        # @type UserCorpId: String
        # @param UserId: 使用者Id(仅用于多用户)
        # @type UserId: String
        # @param TicketNum: 访问次数限制，限制范围1-99999，为空则不设置访问次数限制
        # @type TicketNum: Integer
        # @param GlobalParam: 全局筛选参数 报表过滤条件的全局参数。 格式为JSON格式的字符串
        # **目前仅支持字符类型页面参数绑定到全局参数
        # **
        # [
        #     {
        #         "ParamKey": "name",  //页面参数名称
        #         "JoinType": "AND",     // 连接方式,目前仅支持AND
        #         "WhereList": [
        #             {
        #                 "Operator": "-neq",   // 操作符，参考以下说明
        #                 "Value": [                   //操作值，单值数组只传一个值
        #                     "zZWJMD",
        #                     "ZzVGHX",
        #                     "湖南省",
        #                     "河北省"
        #                 ]
        #             }
        #         ]
        #     },
        #     {
        #         "ParamKey": "genderParam",
        #         "JoinType": "AND",
        #         "WhereList": [
        #             {
        #                 "Operator": "-neq",
        #                 "Value": [
        #                     "男"
        #                 ]
        #             }
        #         ]
        #     }
        # ]



        # Operator 目前支持
        # -neq  不等于!=操作符
        # -eq  等于=操作符
        # -is     in操作符
        # @type GlobalParam: String
        # @param TokenType: 100 不绑定用户, 一次创建一个token，UserCorpId和UserId 非必填，不支持 ChatBI 嵌出
        # 200 单用户单token , 一次创建一个token， UserCorpId和UserId 必填
        # 300 单用户多token, 一次创建多个token，UserCorpId和UserId 必填
        # @type TokenType: Integer
        # @param TokenNum: 一次创建的token数
        # @type TokenNum: Integer
        # @param ConfigParam: 嵌出显示配置，目前为ChatBI嵌出场景用，TableFilter表示数据表列表过滤，SqlView表示sql查看功能
        # @type ConfigParam: String

        attr_accessor :ProjectId, :PageId, :Intention, :Scope, :ExpireTime, :ExtraParam, :UserCorpId, :UserId, :TicketNum, :GlobalParam, :TokenType, :TokenNum, :ConfigParam

        def initialize(projectid=nil, pageid=nil, intention=nil, scope=nil, expiretime=nil, extraparam=nil, usercorpid=nil, userid=nil, ticketnum=nil, globalparam=nil, tokentype=nil, tokennum=nil, configparam=nil)
          @ProjectId = projectid
          @PageId = pageid
          @Intention = intention
          @Scope = scope
          @ExpireTime = expiretime
          @ExtraParam = extraparam
          @UserCorpId = usercorpid
          @UserId = userid
          @TicketNum = ticketnum
          @GlobalParam = globalparam
          @TokenType = tokentype
          @TokenNum = tokennum
          @ConfigParam = configparam
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageId = params['PageId']
          @Intention = params['Intention']
          @Scope = params['Scope']
          @ExpireTime = params['ExpireTime']
          @ExtraParam = params['ExtraParam']
          @UserCorpId = params['UserCorpId']
          @UserId = params['UserId']
          @TicketNum = params['TicketNum']
          @GlobalParam = params['GlobalParam']
          @TokenType = params['TokenType']
          @TokenNum = params['TokenNum']
          @ConfigParam = params['ConfigParam']
        end
      end

      # CreateEmbedToken返回参数结构体
      class CreateEmbedTokenResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.EmbedTokenInfo`
        # @param Msg: 结果描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = EmbedTokenInfo.new
            @Data.deserialize(params['Data'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # CreatePermissionRanks请求参数结构体
      class CreatePermissionRanksRequest < TencentCloud::Common::AbstractModel
        # @param TableId: 页数
        # @type TableId: Integer
        # @param Mode: 模式。
        # 取值范围：
        # - ALL：全部
        # - Specify：指定
        # - TAG：标签

        # 默认值：ALL
        # 示例值：ALL
        # @type Mode: String
        # @param RoleType: 角色类型。
        # 取值范围：

        # - ROLES：按角色
        # - Others：其它

        # 默认值：Others
        # 示例值：Others
        # @type RoleType: String
        # @param RoleId: 所有页码
        # @type RoleId: Integer
        # @param RulerInfo: 规则信息
        # @type RulerInfo: String
        # @param Type: 类型。
        # 取值范围：

        # - ROW：行权限
        # - COLUMN：列权限

        # 默认值：ROW
        # 示例值：ROW
        # @type Type: String
        # @param OpenStatus: 开启状态。
        # 取值范围：

        # - Open：开启
        # - Close：关闭

        # 默认值：Close
        # 示例值：Close
        # @type OpenStatus: String
        # @param ProjectId: 项目id
        # @type ProjectId: Integer
        # @param RowColumnConfigList: 行列权限配置
        # @type RowColumnConfigList: Array

        attr_accessor :TableId, :Mode, :RoleType, :RoleId, :RulerInfo, :Type, :OpenStatus, :ProjectId, :RowColumnConfigList

        def initialize(tableid=nil, mode=nil, roletype=nil, roleid=nil, rulerinfo=nil, type=nil, openstatus=nil, projectid=nil, rowcolumnconfiglist=nil)
          @TableId = tableid
          @Mode = mode
          @RoleType = roletype
          @RoleId = roleid
          @RulerInfo = rulerinfo
          @Type = type
          @OpenStatus = openstatus
          @ProjectId = projectid
          @RowColumnConfigList = rowcolumnconfiglist
        end

        def deserialize(params)
          @TableId = params['TableId']
          @Mode = params['Mode']
          @RoleType = params['RoleType']
          @RoleId = params['RoleId']
          @RulerInfo = params['RulerInfo']
          @Type = params['Type']
          @OpenStatus = params['OpenStatus']
          @ProjectId = params['ProjectId']
          unless params['RowColumnConfigList'].nil?
            @RowColumnConfigList = []
            params['RowColumnConfigList'].each do |i|
              rowcolumnconfig_tmp = RowColumnConfig.new
              rowcolumnconfig_tmp.deserialize(i)
              @RowColumnConfigList << rowcolumnconfig_tmp
            end
          end
        end
      end

      # CreatePermissionRanks返回参数结构体
      class CreatePermissionRanksResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Extra: 112
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Msg, :Extra, :Data, :RequestId

        def initialize(errorinfo=nil, msg=nil, extra=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Msg = msg
          @Extra = extra
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Msg = params['Msg']
          @Extra = params['Extra']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # CreateProject请求参数结构体
      class CreateProjectRequest < TencentCloud::Common::AbstractModel
        # @param Name: 项目名称
        # @type Name: String
        # @param ColorCode: logo底色
        # @type ColorCode: String
        # @param Logo: 项目Logo
        # @type Logo: String
        # @param Mark: 备注
        # @type Mark: String
        # @param IsApply: 是否允许用户申请
        # @type IsApply: Boolean
        # @param DefaultPanelType: 默认看板
        # 取值范围：
        # 1：项目看板
        # 2：我的看板
        # @type DefaultPanelType: Integer
        # @param ManagePlatform: 管理平台
        # @type ManagePlatform: String

        attr_accessor :Name, :ColorCode, :Logo, :Mark, :IsApply, :DefaultPanelType, :ManagePlatform

        def initialize(name=nil, colorcode=nil, logo=nil, mark=nil, isapply=nil, defaultpaneltype=nil, manageplatform=nil)
          @Name = name
          @ColorCode = colorcode
          @Logo = logo
          @Mark = mark
          @IsApply = isapply
          @DefaultPanelType = defaultpaneltype
          @ManagePlatform = manageplatform
        end

        def deserialize(params)
          @Name = params['Name']
          @ColorCode = params['ColorCode']
          @Logo = params['Logo']
          @Mark = params['Mark']
          @IsApply = params['IsApply']
          @DefaultPanelType = params['DefaultPanelType']
          @ManagePlatform = params['ManagePlatform']
        end
      end

      # CreateProject返回参数结构体
      class CreateProjectResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 额外数据
        # @type Extra: String
        # @param Data: 数据
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.Data`
        # @param Msg: 返回信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = Data.new
            @Data.deserialize(params['Data'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # CreateUserGroupMember请求参数结构体
      class CreateUserGroupMemberRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: <p>用户组id</p>
        # @type GroupId: Integer
        # @param UserIdList: <p>用户id集合</p>
        # @type UserIdList: Array

        attr_accessor :GroupId, :UserIdList

        def initialize(groupid=nil, useridlist=nil)
          @GroupId = groupid
          @UserIdList = useridlist
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @UserIdList = params['UserIdList']
        end
      end

      # CreateUserGroupMember返回参数结构体
      class CreateUserGroupMemberResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: <p>额外信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: <p>结果信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: <p>数据</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # CreateUserGroup请求参数结构体
      class CreateUserGroupRequest < TencentCloud::Common::AbstractModel
        # @param AdminUserId: <p>组管理员</p>
        # @type AdminUserId: String
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param GroupName: <p>用户组名称</p>
        # @type GroupName: String
        # @param Location: <p>位置</p>
        # @type Location: Integer
        # @param ParentId: <p>父用户组id</p>
        # @type ParentId: Integer

        attr_accessor :AdminUserId, :Description, :GroupName, :Location, :ParentId

        def initialize(adminuserid=nil, description=nil, groupname=nil, location=nil, parentid=nil)
          @AdminUserId = adminuserid
          @Description = description
          @GroupName = groupname
          @Location = location
          @ParentId = parentid
        end

        def deserialize(params)
          @AdminUserId = params['AdminUserId']
          @Description = params['Description']
          @GroupName = params['GroupName']
          @Location = params['Location']
          @ParentId = params['ParentId']
        end
      end

      # CreateUserGroup返回参数结构体
      class CreateUserGroupResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: <p>额外信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: <p>结果信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: <p>数据</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.UserGroupVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          unless params['Data'].nil?
            @Data = UserGroupVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateUserRoleProject请求参数结构体
      class CreateUserRoleProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param RoleIdList: 角色ID列表
        # @type RoleIdList: Array
        # @param UserList: 用户列表（废弃）
        # @type UserList: Array
        # @param UserInfoList: 用户列表（新）
        # @type UserInfoList: Array

        attr_accessor :ProjectId, :RoleIdList, :UserList, :UserInfoList
        extend Gem::Deprecate
        deprecate :UserList, :none, 2026, 6
        deprecate :UserList=, :none, 2026, 6

        def initialize(projectid=nil, roleidlist=nil, userlist=nil, userinfolist=nil)
          @ProjectId = projectid
          @RoleIdList = roleidlist
          @UserList = userlist
          @UserInfoList = userinfolist
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RoleIdList = params['RoleIdList']
          unless params['UserList'].nil?
            @UserList = []
            params['UserList'].each do |i|
              useridandusername_tmp = UserIdAndUserName.new
              useridandusername_tmp.deserialize(i)
              @UserList << useridandusername_tmp
            end
          end
          unless params['UserInfoList'].nil?
            @UserInfoList = []
            params['UserInfoList'].each do |i|
              userinfo_tmp = UserInfo.new
              userinfo_tmp.deserialize(i)
              @UserInfoList << userinfo_tmp
            end
          end
        end
      end

      # CreateUserRoleProject返回参数结构体
      class CreateUserRoleProjectResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.DataId`
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = DataId.new
            @Data.deserialize(params['Data'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # CreateUserRole请求参数结构体
      class CreateUserRoleRequest < TencentCloud::Common::AbstractModel
        # @param RoleIdList: 角色ID列表
        # @type RoleIdList: Array
        # @param UserList: 用户列表（废弃）
        # @type UserList: Array
        # @param UserInfoList: 用户列表（新）
        # @type UserInfoList: Array
        # @param UserGroups: 用户组id列表
        # @type UserGroups: Array

        attr_accessor :RoleIdList, :UserList, :UserInfoList, :UserGroups
        extend Gem::Deprecate
        deprecate :UserList, :none, 2026, 6
        deprecate :UserList=, :none, 2026, 6

        def initialize(roleidlist=nil, userlist=nil, userinfolist=nil, usergroups=nil)
          @RoleIdList = roleidlist
          @UserList = userlist
          @UserInfoList = userinfolist
          @UserGroups = usergroups
        end

        def deserialize(params)
          @RoleIdList = params['RoleIdList']
          unless params['UserList'].nil?
            @UserList = []
            params['UserList'].each do |i|
              useridandusername_tmp = UserIdAndUserName.new
              useridandusername_tmp.deserialize(i)
              @UserList << useridandusername_tmp
            end
          end
          unless params['UserInfoList'].nil?
            @UserInfoList = []
            params['UserInfoList'].each do |i|
              userinfo_tmp = UserInfo.new
              userinfo_tmp.deserialize(i)
              @UserInfoList << userinfo_tmp
            end
          end
          @UserGroups = params['UserGroups']
        end
      end

      # CreateUserRole返回参数结构体
      class CreateUserRoleResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.DataId`
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = DataId.new
            @Data.deserialize(params['Data'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # 数据
      class Data < TencentCloud::Common::AbstractModel
        # @param Id: 项目Id
        # @type Id: Integer
        # @param EditUrl: url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EditUrl: String

        attr_accessor :Id, :EditUrl

        def initialize(id=nil, editurl=nil)
          @Id = id
          @EditUrl = editurl
        end

        def deserialize(params)
          @Id = params['Id']
          @EditUrl = params['EditUrl']
        end
      end

      # 数据ID
      class DataId < TencentCloud::Common::AbstractModel
        # @param Id: 数据id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # 数据源详情
      class DatasourceInfo < TencentCloud::Common::AbstractModel
        # @param Id: 数据库ID
        # @type Id: Integer
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param ServiceType: 域类型，1、腾讯云，2、本地
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceType: String
        # @param SourceName: 数据库别名
        # @type SourceName: String
        # @param DbType: 数据库驱动
        # @type DbType: String
        # @param DbHost: HOST
        # @type DbHost: String
        # @param DbPort: 端口
        # @type DbPort: Integer
        # @param DbUser: 用户名
        # @type DbUser: String
        # @param Charset: 数据库编码
        # @type Charset: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 修改时间
        # @type UpdatedAt: String
        # @param CreatedUser: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedUser: String
        # @param Catalog: catalog值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Catalog: String
        # @param ConnectType: 连接类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectType: String
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param Desc: 数据源描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param Status: 数据源状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param SourcePlat: 来源平台
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourcePlat: String
        # @param ExtraParam: 扩展参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraParam: String
        # @param AddInfo: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddInfo: String
        # @param ProjectName: 项目名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param EngineType: 引擎类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineType: String
        # @param Manager: 数据源负责人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Manager: String
        # @param OperatorWhitelist: 特定操作人员白名单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorWhitelist: String
        # @param VpcId: 数据源的vpc信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param UniqVpcId: 数据源的uniqVpc信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param RegionId: 数据源的地域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: String
        # @param StateAction: 操作属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StateAction: :class:`Tencentcloud::Bi.v20220105.models.BaseStateAction`
        # @param UpdatedUser: 更新人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedUser: String
        # @param PermissionList: 权限列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PermissionList: Array
        # @param AuthList: 权限值列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthList: Array
        # @param DataOrigin: 第三方数据源标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataOrigin: String
        # @param DataOriginProjectId: 第三方项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataOriginProjectId: String
        # @param DataOriginDatasourceId: 第三方数据源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataOriginDatasourceId: String
        # @param ClusterId: 集群id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param DbTypeName: 数据源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbTypeName: String
        # @param UseVPC: 开启vpc
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseVPC: Boolean
        # @param Owner: 所属人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Owner: String
        # @param OwnerName: 所属人名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerName: String
        # @param Schema: 数据库schema
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Schema: String
        # @param DbVersion: 数据库版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbVersion: String

        attr_accessor :Id, :DbName, :ServiceType, :SourceName, :DbType, :DbHost, :DbPort, :DbUser, :Charset, :CreatedAt, :UpdatedAt, :CreatedUser, :Catalog, :ConnectType, :ProjectId, :Desc, :Status, :SourcePlat, :ExtraParam, :AddInfo, :ProjectName, :EngineType, :Manager, :OperatorWhitelist, :VpcId, :UniqVpcId, :RegionId, :StateAction, :UpdatedUser, :PermissionList, :AuthList, :DataOrigin, :DataOriginProjectId, :DataOriginDatasourceId, :ClusterId, :DbTypeName, :UseVPC, :Owner, :OwnerName, :Schema, :DbVersion

        def initialize(id=nil, dbname=nil, servicetype=nil, sourcename=nil, dbtype=nil, dbhost=nil, dbport=nil, dbuser=nil, charset=nil, createdat=nil, updatedat=nil, createduser=nil, catalog=nil, connecttype=nil, projectid=nil, desc=nil, status=nil, sourceplat=nil, extraparam=nil, addinfo=nil, projectname=nil, enginetype=nil, manager=nil, operatorwhitelist=nil, vpcid=nil, uniqvpcid=nil, regionid=nil, stateaction=nil, updateduser=nil, permissionlist=nil, authlist=nil, dataorigin=nil, dataoriginprojectid=nil, dataorigindatasourceid=nil, clusterid=nil, dbtypename=nil, usevpc=nil, owner=nil, ownername=nil, schema=nil, dbversion=nil)
          @Id = id
          @DbName = dbname
          @ServiceType = servicetype
          @SourceName = sourcename
          @DbType = dbtype
          @DbHost = dbhost
          @DbPort = dbport
          @DbUser = dbuser
          @Charset = charset
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @CreatedUser = createduser
          @Catalog = catalog
          @ConnectType = connecttype
          @ProjectId = projectid
          @Desc = desc
          @Status = status
          @SourcePlat = sourceplat
          @ExtraParam = extraparam
          @AddInfo = addinfo
          @ProjectName = projectname
          @EngineType = enginetype
          @Manager = manager
          @OperatorWhitelist = operatorwhitelist
          @VpcId = vpcid
          @UniqVpcId = uniqvpcid
          @RegionId = regionid
          @StateAction = stateaction
          @UpdatedUser = updateduser
          @PermissionList = permissionlist
          @AuthList = authlist
          @DataOrigin = dataorigin
          @DataOriginProjectId = dataoriginprojectid
          @DataOriginDatasourceId = dataorigindatasourceid
          @ClusterId = clusterid
          @DbTypeName = dbtypename
          @UseVPC = usevpc
          @Owner = owner
          @OwnerName = ownername
          @Schema = schema
          @DbVersion = dbversion
        end

        def deserialize(params)
          @Id = params['Id']
          @DbName = params['DbName']
          @ServiceType = params['ServiceType']
          @SourceName = params['SourceName']
          @DbType = params['DbType']
          @DbHost = params['DbHost']
          @DbPort = params['DbPort']
          @DbUser = params['DbUser']
          @Charset = params['Charset']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @CreatedUser = params['CreatedUser']
          @Catalog = params['Catalog']
          @ConnectType = params['ConnectType']
          @ProjectId = params['ProjectId']
          @Desc = params['Desc']
          @Status = params['Status']
          @SourcePlat = params['SourcePlat']
          @ExtraParam = params['ExtraParam']
          @AddInfo = params['AddInfo']
          @ProjectName = params['ProjectName']
          @EngineType = params['EngineType']
          @Manager = params['Manager']
          @OperatorWhitelist = params['OperatorWhitelist']
          @VpcId = params['VpcId']
          @UniqVpcId = params['UniqVpcId']
          @RegionId = params['RegionId']
          unless params['StateAction'].nil?
            @StateAction = BaseStateAction.new
            @StateAction.deserialize(params['StateAction'])
          end
          @UpdatedUser = params['UpdatedUser']
          unless params['PermissionList'].nil?
            @PermissionList = []
            params['PermissionList'].each do |i|
              permissiongroup_tmp = PermissionGroup.new
              permissiongroup_tmp.deserialize(i)
              @PermissionList << permissiongroup_tmp
            end
          end
          @AuthList = params['AuthList']
          @DataOrigin = params['DataOrigin']
          @DataOriginProjectId = params['DataOriginProjectId']
          @DataOriginDatasourceId = params['DataOriginDatasourceId']
          @ClusterId = params['ClusterId']
          @DbTypeName = params['DbTypeName']
          @UseVPC = params['UseVPC']
          @Owner = params['Owner']
          @OwnerName = params['OwnerName']
          @Schema = params['Schema']
          @DbVersion = params['DbVersion']
        end
      end

      # 数据源详情列表
      class DatasourceInfoData < TencentCloud::Common::AbstractModel
        # @param List: 数据源详情列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param TotalPages: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPages: Integer

        attr_accessor :List, :Total, :TotalPages

        def initialize(list=nil, total=nil, totalpages=nil)
          @List = list
          @Total = total
          @TotalPages = totalpages
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              datasourceinfo_tmp = DatasourceInfo.new
              datasourceinfo_tmp.deserialize(i)
              @List << datasourceinfo_tmp
            end
          end
          @Total = params['Total']
          @TotalPages = params['TotalPages']
        end
      end

      # DeleteAuthApiKey请求参数结构体
      class DeleteAuthApiKeyRequest < TencentCloud::Common::AbstractModel
        # @param ApiKey: <p>ApiKey</p>
        # @type ApiKey: String

        attr_accessor :ApiKey

        def initialize(apikey=nil)
          @ApiKey = apikey
        end

        def deserialize(params)
          @ApiKey = params['ApiKey']
        end
      end

      # DeleteAuthApiKey返回参数结构体
      class DeleteAuthApiKeyResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: <p>&quot;&quot;</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: <p>&quot;success&quot;</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: <p>数据</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DeleteDatasource请求参数结构体
      class DeleteDatasourceRequest < TencentCloud::Common::AbstractModel
        # @param Id: 数据源id
        # @type Id: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: Integer

        attr_accessor :Id, :ProjectId

        def initialize(id=nil, projectid=nil)
          @Id = id
          @ProjectId = projectid
        end

        def deserialize(params)
          @Id = params['Id']
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteDatasource返回参数结构体
      class DeleteDatasourceResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param Extra: 扩展
        # @type Extra: String
        # @param Msg: 信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Data, :Extra, :Msg, :RequestId

        def initialize(errorinfo=nil, data=nil, extra=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Data = data
          @Extra = extra
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Data = params['Data']
          @Extra = params['Extra']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteProject请求参数结构体
      class DeleteProjectRequest < TencentCloud::Common::AbstractModel
        # @param Id: 项目ID
        # @type Id: Integer
        # @param Seed: 随机数
        # @type Seed: String
        # @param DefaultPanelType: 默认看板
        # 取值范围：
        # 1：项目看板
        # 2：我的看板
        # @type DefaultPanelType: Integer

        attr_accessor :Id, :Seed, :DefaultPanelType

        def initialize(id=nil, seed=nil, defaultpaneltype=nil)
          @Id = id
          @Seed = seed
          @DefaultPanelType = defaultpaneltype
        end

        def deserialize(params)
          @Id = params['Id']
          @Seed = params['Seed']
          @DefaultPanelType = params['DefaultPanelType']
        end
      end

      # DeleteProject返回参数结构体
      class DeleteProjectResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: ”“
        # @type Extra: String
        # @param Data: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param Msg: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Data = params['Data']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteUserGroupMember请求参数结构体
      class DeleteUserGroupMemberRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: <p>用户组id</p>
        # @type GroupId: Integer
        # @param UserIdList: <p>用户id集合</p>
        # @type UserIdList: Array

        attr_accessor :GroupId, :UserIdList

        def initialize(groupid=nil, useridlist=nil)
          @GroupId = groupid
          @UserIdList = useridlist
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @UserIdList = params['UserIdList']
        end
      end

      # DeleteUserGroupMember返回参数结构体
      class DeleteUserGroupMemberResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: <p>额外信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: <p>结果信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: <p>数据</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DeleteUserGroup请求参数结构体
      class DeleteUserGroupRequest < TencentCloud::Common::AbstractModel
        # @param Id: <p>用户组id</p>
        # @type Id: Integer

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DeleteUserGroup返回参数结构体
      class DeleteUserGroupResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: <p>额外信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: <p>结果信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: <p>数据</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DeleteUserRoleProject请求参数结构体
      class DeleteUserRoleProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param UserId: 用户ID
        # @type UserId: String

        attr_accessor :ProjectId, :UserId

        def initialize(projectid=nil, userid=nil)
          @ProjectId = projectid
          @UserId = userid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @UserId = params['UserId']
        end
      end

      # DeleteUserRoleProject返回参数结构体
      class DeleteUserRoleProjectResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Data = params['Data']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteUserRole请求参数结构体
      class DeleteUserRoleRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String

        attr_accessor :UserId

        def initialize(userid=nil)
          @UserId = userid
        end

        def deserialize(params)
          @UserId = params['UserId']
        end
      end

      # DeleteUserRole返回参数结构体
      class DeleteUserRoleResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Data = params['Data']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuthApiKeyInfo请求参数结构体
      class DescribeAuthApiKeyInfoRequest < TencentCloud::Common::AbstractModel
        # @param ApiKey: <p>ApiKey</p>
        # @type ApiKey: String

        attr_accessor :ApiKey

        def initialize(apikey=nil)
          @ApiKey = apikey
        end

        def deserialize(params)
          @ApiKey = params['ApiKey']
        end
      end

      # DescribeAuthApiKeyInfo返回参数结构体
      class DescribeAuthApiKeyInfoResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: <p>&quot;&quot;</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: <p>&quot;success&quot;</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: <p>数据</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.ApiKeyAuthApplyVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          unless params['Data'].nil?
            @Data = ApiKeyAuthApplyVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuthApiKeyList请求参数结构体
      class DescribeAuthApiKeyListRequest < TencentCloud::Common::AbstractModel
        # @param AllPage: <p>全部</p><p>默认值：false</p>
        # @type AllPage: Boolean
        # @param PageNo: <p>页码</p><p>默认值：0</p>
        # @type PageNo: Integer
        # @param PageSize: <p>分页大小</p><p>默认值：10</p>
        # @type PageSize: Integer
        # @param Keyword: <p>关键字过滤</p>
        # @type Keyword: String

        attr_accessor :AllPage, :PageNo, :PageSize, :Keyword

        def initialize(allpage=nil, pageno=nil, pagesize=nil, keyword=nil)
          @AllPage = allpage
          @PageNo = pageno
          @PageSize = pagesize
          @Keyword = keyword
        end

        def deserialize(params)
          @AllPage = params['AllPage']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @Keyword = params['Keyword']
        end
      end

      # DescribeAuthApiKeyList返回参数结构体
      class DescribeAuthApiKeyListResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: <p>{}</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: <p>信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: <p>数据</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.ApiKeyAuthApplyVOList`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          unless params['Data'].nil?
            @Data = ApiKeyAuthApplyVOList.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatasourceList请求参数结构体
      class DescribeDatasourceListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 无
        # @type ProjectId: Integer
        # @param AllPage: 返回所有页面，默认false
        # @type AllPage: Boolean
        # @param DbName: 数据库名称检索
        # @type DbName: String
        # @param PageNo: 无
        # @type PageNo: Integer
        # @param PageSize: 无
        # @type PageSize: Integer
        # @param Keyword: 搜索关键词
        # @type Keyword: String
        # @param PermissionType: 过滤无权限列表的参数（0 全量，1 使用权限，2 编辑权限）
        # @type PermissionType: Integer

        attr_accessor :ProjectId, :AllPage, :DbName, :PageNo, :PageSize, :Keyword, :PermissionType

        def initialize(projectid=nil, allpage=nil, dbname=nil, pageno=nil, pagesize=nil, keyword=nil, permissiontype=nil)
          @ProjectId = projectid
          @AllPage = allpage
          @DbName = dbname
          @PageNo = pageno
          @PageSize = pagesize
          @Keyword = keyword
          @PermissionType = permissiontype
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @AllPage = params['AllPage']
          @DbName = params['DbName']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @Keyword = params['Keyword']
          @PermissionType = params['PermissionType']
        end
      end

      # DescribeDatasourceList返回参数结构体
      class DescribeDatasourceListResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Data: 列表详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.DatasourceInfoData`
        # @param Extra: 信息
        # @type Extra: String
        # @param Msg: 信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Data, :Extra, :Msg, :RequestId

        def initialize(errorinfo=nil, data=nil, extra=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Data = data
          @Extra = extra
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          unless params['Data'].nil?
            @Data = DatasourceInfoData.new
            @Data.deserialize(params['Data'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribePageWidgetList请求参数结构体
      class DescribePageWidgetListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param PageId: 页面id
        # @type PageId: String

        attr_accessor :ProjectId, :PageId

        def initialize(projectid=nil, pageid=nil)
          @ProjectId = projectid
          @PageId = pageid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageId = params['PageId']
        end
      end

      # DescribePageWidgetList返回参数结构体
      class DescribePageWidgetListResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 返回数据结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.WidgetListVO`
        # @param Msg: 返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = WidgetListVO.new
            @Data.deserialize(params['Data'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribePermissionRanksInfo请求参数结构体
      class DescribePermissionRanksInfoRequest < TencentCloud::Common::AbstractModel
        # @param TableId: 页数
        # @type TableId: Integer
        # @param Mode: 模式。
        # 取值范围：

        # - ALL：全部
        # - Specify：指定
        # - TAG：标签

        # 默认值：ALL
        # 示例值：ALL
        # @type Mode: String
        # @param RoleType: 角色类型。
        # 取值范围：

        # - ROLES：按角色
        # - Others：其它

        # 默认值：Others
        # 示例值：Others
        # @type RoleType: String
        # @param RoleId: 所有页码
        # @type RoleId: Integer
        # @param Type: 类型。
        # 取值范围：

        # - ROW：行权限
        # - COLUMN：列权限

        # 默认值：ROW
        # 示例值：ROW
        # @type Type: String
        # @param ProjectId: 项目id
        # @type ProjectId: Integer

        attr_accessor :TableId, :Mode, :RoleType, :RoleId, :Type, :ProjectId

        def initialize(tableid=nil, mode=nil, roletype=nil, roleid=nil, type=nil, projectid=nil)
          @TableId = tableid
          @Mode = mode
          @RoleType = roletype
          @RoleId = roleid
          @Type = type
          @ProjectId = projectid
        end

        def deserialize(params)
          @TableId = params['TableId']
          @Mode = params['Mode']
          @RoleType = params['RoleType']
          @RoleId = params['RoleId']
          @Type = params['Type']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribePermissionRanksInfo返回参数结构体
      class DescribePermissionRanksInfoResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Extra: 112
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.RankInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Msg, :Extra, :Data, :RequestId

        def initialize(errorinfo=nil, msg=nil, extra=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Msg = msg
          @Extra = extra
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Msg = params['Msg']
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = RankInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePermissionRoleInfo请求参数结构体
      class DescribePermissionRoleInfoRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param PageNo: 页数
        # @type PageNo: Integer
        # @param PageSize: 条数
        # @type PageSize: Integer
        # @param AllPage: 所有页码
        # @type AllPage: Boolean

        attr_accessor :ProjectId, :PageNo, :PageSize, :AllPage

        def initialize(projectid=nil, pageno=nil, pagesize=nil, allpage=nil)
          @ProjectId = projectid
          @PageNo = pageno
          @PageSize = pagesize
          @AllPage = allpage
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @AllPage = params['AllPage']
        end
      end

      # DescribePermissionRoleInfo返回参数结构体
      class DescribePermissionRoleInfoResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Extra: 112
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Data, :Msg, :Extra, :RequestId

        def initialize(errorinfo=nil, data=nil, msg=nil, extra=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Data = data
          @Msg = msg
          @Extra = extra
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              role_tmp = Role.new
              role_tmp.deserialize(i)
              @Data << role_tmp
            end
          end
          @Msg = params['Msg']
          @Extra = params['Extra']
          @RequestId = params['RequestId']
        end
      end

      # DescribePermissionStatusInfo请求参数结构体
      class DescribePermissionStatusInfoRequest < TencentCloud::Common::AbstractModel
        # @param TableId: 页数
        # @type TableId: Integer
        # @param Type: 类型。
        # 取值范围：

        # - ROW：行权限
        # - COLUMN：列权限

        # 默认值：ROW
        # 示例值：ROW
        # @type Type: String
        # @param ProjectId: 1
        # @type ProjectId: String

        attr_accessor :TableId, :Type, :ProjectId

        def initialize(tableid=nil, type=nil, projectid=nil)
          @TableId = tableid
          @Type = type
          @ProjectId = projectid
        end

        def deserialize(params)
          @TableId = params['TableId']
          @Type = params['Type']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribePermissionStatusInfo返回参数结构体
      class DescribePermissionStatusInfoResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Extra: 112
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.RowColumnStatus`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Msg, :Extra, :Data, :RequestId

        def initialize(errorinfo=nil, msg=nil, extra=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Msg = msg
          @Extra = extra
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Msg = params['Msg']
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = RowColumnStatus.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjectInfo请求参数结构体
      class DescribeProjectInfoRequest < TencentCloud::Common::AbstractModel
        # @param Id: 项目Id
        # @type Id: Integer
        # @param DefaultPanelType: 默认看板
        # 取值范围：
        # 1：项目看板
        # 2：我的看板
        # @type DefaultPanelType: Integer

        attr_accessor :Id, :DefaultPanelType

        def initialize(id=nil, defaultpaneltype=nil)
          @Id = id
          @DefaultPanelType = defaultpaneltype
        end

        def deserialize(params)
          @Id = params['Id']
          @DefaultPanelType = params['DefaultPanelType']
        end
      end

      # DescribeProjectInfo返回参数结构体
      class DescribeProjectInfoResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: 项目详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.Project`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          unless params['Data'].nil?
            @Data = Project.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjectList请求参数结构体
      class DescribeProjectListRequest < TencentCloud::Common::AbstractModel
        # @param PageSize: 页容，初版默认20，将来可能根据屏幕宽度动态变化
        # @type PageSize: Integer
        # @param PageNo: 页标
        # @type PageNo: Integer
        # @param Keyword: 检索模糊字段
        # @type Keyword: String
        # @param AllPage: 是否全部展示，如果是ture，则忽略分页
        # @type AllPage: Boolean
        # @param ModuleCollection: 角色信息
        # @type ModuleCollection: String
        # @param ModuleIdList: moduleId集合
        # @type ModuleIdList: Array

        attr_accessor :PageSize, :PageNo, :Keyword, :AllPage, :ModuleCollection, :ModuleIdList

        def initialize(pagesize=nil, pageno=nil, keyword=nil, allpage=nil, modulecollection=nil, moduleidlist=nil)
          @PageSize = pagesize
          @PageNo = pageno
          @Keyword = keyword
          @AllPage = allpage
          @ModuleCollection = modulecollection
          @ModuleIdList = moduleidlist
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
          @Keyword = params['Keyword']
          @AllPage = params['AllPage']
          @ModuleCollection = params['ModuleCollection']
          @ModuleIdList = params['ModuleIdList']
        end
      end

      # DescribeProjectList返回参数结构体
      class DescribeProjectListResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 接口信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.ProjectListData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          unless params['Data'].nil?
            @Data = ProjectListData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceUserGroupPageList请求参数结构体
      class DescribeResourceUserGroupPageListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: Integer
        # @param PageId: 页面Id
        # @type PageId: Integer
        # @param ResourceType: 资源类型
        # @type ResourceType: String
        # @param AllPage: 是否分页
        # @type AllPage: Integer
        # @param Keyword: 模糊搜索关键字
        # @type Keyword: String
        # @param PageNo: 页码
        # @type PageNo: Integer
        # @param PageSize: 每页条数
        # @type PageSize: Integer
        # @param TagValueList: 标签过滤条件
        # @type TagValueList: Array
        # @param ModuleCollection: 角色
        # @type ModuleCollection: String
        # @param ResourceValue: 是否授权
        # @type ResourceValue: String
        # @param ResourceName: 权限类型
        # @type ResourceName: String
        # @param ParentId: 父id
        # @type ParentId: Integer
        # @param EntityId: 资源id
        # @type EntityId: Integer

        attr_accessor :ProjectId, :PageId, :ResourceType, :AllPage, :Keyword, :PageNo, :PageSize, :TagValueList, :ModuleCollection, :ResourceValue, :ResourceName, :ParentId, :EntityId

        def initialize(projectid=nil, pageid=nil, resourcetype=nil, allpage=nil, keyword=nil, pageno=nil, pagesize=nil, tagvaluelist=nil, modulecollection=nil, resourcevalue=nil, resourcename=nil, parentid=nil, entityid=nil)
          @ProjectId = projectid
          @PageId = pageid
          @ResourceType = resourcetype
          @AllPage = allpage
          @Keyword = keyword
          @PageNo = pageno
          @PageSize = pagesize
          @TagValueList = tagvaluelist
          @ModuleCollection = modulecollection
          @ResourceValue = resourcevalue
          @ResourceName = resourcename
          @ParentId = parentid
          @EntityId = entityid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageId = params['PageId']
          @ResourceType = params['ResourceType']
          @AllPage = params['AllPage']
          @Keyword = params['Keyword']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          unless params['TagValueList'].nil?
            @TagValueList = []
            params['TagValueList'].each do |i|
              resourcetagvalue_tmp = ResourceTagValue.new
              resourcetagvalue_tmp.deserialize(i)
              @TagValueList << resourcetagvalue_tmp
            end
          end
          @ModuleCollection = params['ModuleCollection']
          @ResourceValue = params['ResourceValue']
          @ResourceName = params['ResourceName']
          @ParentId = params['ParentId']
          @EntityId = params['EntityId']
        end
      end

      # DescribeResourceUserGroupPageList返回参数结构体
      class DescribeResourceUserGroupPageListResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.UserGroupPageTreeVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          unless params['Data'].nil?
            @Data = UserGroupPageTreeVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSourceFieldList请求参数结构体
      class DescribeSourceFieldListRequest < TencentCloud::Common::AbstractModel
        # @param DataSourceId: 数据源Id
        # @type DataSourceId: Integer
        # @param TableName: 表名
        # @type TableName: String
        # @param Sql: sql内容
        # @type Sql: String
        # @param ProjectId: 项目id
        # @type ProjectId: Integer
        # @param AsyncRequest: 是否是异步
        # @type AsyncRequest: Boolean
        # @param TranId: 异步事务id
        # @type TranId: String
        # @param ParamList: 11
        # @type ParamList: Array
        # @param DlcExtInfo: DLC扩展参数
        # @type DlcExtInfo: String
        # @param QueryDbData: 是否查询数据库
        # @type QueryDbData: String
        # @param TableId: 数据表 Id
        # @type TableId: String
        # @param TableType: 后端提供字典：数据表类型，1、数据库建表，2、SQL建表，3、Excel上传，4、API接入，5、腾讯文档，6、云数据库，7、手工输入，8、关联查询
        # @type TableType: Integer

        attr_accessor :DataSourceId, :TableName, :Sql, :ProjectId, :AsyncRequest, :TranId, :ParamList, :DlcExtInfo, :QueryDbData, :TableId, :TableType

        def initialize(datasourceid=nil, tablename=nil, sql=nil, projectid=nil, asyncrequest=nil, tranid=nil, paramlist=nil, dlcextinfo=nil, querydbdata=nil, tableid=nil, tabletype=nil)
          @DataSourceId = datasourceid
          @TableName = tablename
          @Sql = sql
          @ProjectId = projectid
          @AsyncRequest = asyncrequest
          @TranId = tranid
          @ParamList = paramlist
          @DlcExtInfo = dlcextinfo
          @QueryDbData = querydbdata
          @TableId = tableid
          @TableType = tabletype
        end

        def deserialize(params)
          @DataSourceId = params['DataSourceId']
          @TableName = params['TableName']
          @Sql = params['Sql']
          @ProjectId = params['ProjectId']
          @AsyncRequest = params['AsyncRequest']
          @TranId = params['TranId']
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              paramcreatedto_tmp = ParamCreateDTO.new
              paramcreatedto_tmp.deserialize(i)
              @ParamList << paramcreatedto_tmp
            end
          end
          @DlcExtInfo = params['DlcExtInfo']
          @QueryDbData = params['QueryDbData']
          @TableId = params['TableId']
          @TableType = params['TableType']
        end
      end

      # DescribeSourceFieldList返回参数结构体
      class DescribeSourceFieldListResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: 表中字段的列表
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.TableColumnListData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          unless params['Data'].nil?
            @Data = TableColumnListData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserGroupInfo请求参数结构体
      class DescribeUserGroupInfoRequest < TencentCloud::Common::AbstractModel
        # @param Id: 用户组id
        # @type Id: Integer

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeUserGroupInfo返回参数结构体
      class DescribeUserGroupInfoResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :RequestId

        def initialize(errorinfo=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserGroupMemberList请求参数结构体
      class DescribeUserGroupMemberListRequest < TencentCloud::Common::AbstractModel
        # @param GroupIds: <p>用户组id集合</p>
        # @type GroupIds: Array
        # @param CreatedOnOrder: <p>asc正序,desc倒序</p>
        # @type CreatedOnOrder: String
        # @param Keyword: <p>搜索关键字</p>
        # @type Keyword: String
        # @param PageSize: <p>分页大小</p>
        # @type PageSize: Integer
        # @param PageNo: <p>分页页码</p>
        # @type PageNo: Integer
        # @param AllPage: <p>是否需要分页</p>
        # @type AllPage: Boolean

        attr_accessor :GroupIds, :CreatedOnOrder, :Keyword, :PageSize, :PageNo, :AllPage

        def initialize(groupids=nil, createdonorder=nil, keyword=nil, pagesize=nil, pageno=nil, allpage=nil)
          @GroupIds = groupids
          @CreatedOnOrder = createdonorder
          @Keyword = keyword
          @PageSize = pagesize
          @PageNo = pageno
          @AllPage = allpage
        end

        def deserialize(params)
          @GroupIds = params['GroupIds']
          @CreatedOnOrder = params['CreatedOnOrder']
          @Keyword = params['Keyword']
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
          @AllPage = params['AllPage']
        end
      end

      # DescribeUserGroupMemberList返回参数结构体
      class DescribeUserGroupMemberListResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: <p>额外信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: <p>结果信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: <p>数据</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.DescribeUserGroupMemberPageListContainer`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          unless params['Data'].nil?
            @Data = DescribeUserGroupMemberPageListContainer.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询页面列表
      class DescribeUserGroupMemberPageListContainer < TencentCloud::Common::AbstractModel
        # @param List: 列表数据集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param TotalPages: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPages: Integer

        attr_accessor :List, :Total, :TotalPages

        def initialize(list=nil, total=nil, totalpages=nil)
          @List = list
          @Total = total
          @TotalPages = totalpages
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              usergroupmembervo_tmp = UserGroupMemberVO.new
              usergroupmembervo_tmp.deserialize(i)
              @List << usergroupmembervo_tmp
            end
          end
          @Total = params['Total']
          @TotalPages = params['TotalPages']
        end
      end

      # DescribeUserGroupTreeList请求参数结构体
      class DescribeUserGroupTreeListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: Integer
        # @param AllPage: 是否分页
        # @type AllPage: Integer
        # @param PageNo: 页码
        # @type PageNo: Integer
        # @param PageSize: 每页条数
        # @type PageSize: Integer
        # @param TagValueList: 标签过滤条件
        # @type TagValueList: Array
        # @param Nodes: 节点集合
        # @type Nodes: Array
        # @param GroupIds: 用户组id集合
        # @type GroupIds: Array
        # @param QueryNextNode: 查询下一个code
        # @type QueryNextNode: Boolean
        # @param ParentIds: 父id集合
        # @type ParentIds: Array
        # @param QueryAllNode: 是否查询所有节点
        # @type QueryAllNode: Boolean
        # @param FilterGroupIds: 过滤组id集合
        # @type FilterGroupIds: Array
        # @param Keyword: 模糊搜索关键字
        # @type Keyword: String

        attr_accessor :ProjectId, :AllPage, :PageNo, :PageSize, :TagValueList, :Nodes, :GroupIds, :QueryNextNode, :ParentIds, :QueryAllNode, :FilterGroupIds, :Keyword

        def initialize(projectid=nil, allpage=nil, pageno=nil, pagesize=nil, tagvaluelist=nil, nodes=nil, groupids=nil, querynextnode=nil, parentids=nil, queryallnode=nil, filtergroupids=nil, keyword=nil)
          @ProjectId = projectid
          @AllPage = allpage
          @PageNo = pageno
          @PageSize = pagesize
          @TagValueList = tagvaluelist
          @Nodes = nodes
          @GroupIds = groupids
          @QueryNextNode = querynextnode
          @ParentIds = parentids
          @QueryAllNode = queryallnode
          @FilterGroupIds = filtergroupids
          @Keyword = keyword
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @AllPage = params['AllPage']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          unless params['TagValueList'].nil?
            @TagValueList = []
            params['TagValueList'].each do |i|
              resourcetagvalue_tmp = ResourceTagValue.new
              resourcetagvalue_tmp.deserialize(i)
              @TagValueList << resourcetagvalue_tmp
            end
          end
          unless params['Nodes'].nil?
            @Nodes = []
            params['Nodes'].each do |i|
              usergrouptreenodedto_tmp = UserGroupTreeNodeDTO.new
              usergrouptreenodedto_tmp.deserialize(i)
              @Nodes << usergrouptreenodedto_tmp
            end
          end
          @GroupIds = params['GroupIds']
          @QueryNextNode = params['QueryNextNode']
          @ParentIds = params['ParentIds']
          @QueryAllNode = params['QueryAllNode']
          @FilterGroupIds = params['FilterGroupIds']
          @Keyword = params['Keyword']
        end
      end

      # DescribeUserGroupTreeList返回参数结构体
      class DescribeUserGroupTreeListResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              usergrouptreevo_tmp = UserGroupTreeVO.new
              usergrouptreevo_tmp.deserialize(i)
              @Data << usergrouptreevo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserProjectList请求参数结构体
      class DescribeUserProjectListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param AllPage: 无
        # @type AllPage: Boolean
        # @param PageNo: 无
        # @type PageNo: Integer
        # @param PageSize: 无
        # @type PageSize: Integer
        # @param IsFilterPerAuthUser: 是否过滤掉企业管理员
        # @type IsFilterPerAuthUser: Boolean
        # @param IsFilterCurrentUser: 是否过滤掉当前用户
        # @type IsFilterCurrentUser: Boolean
        # @param Keyword: 关键字
        # @type Keyword: String

        attr_accessor :ProjectId, :AllPage, :PageNo, :PageSize, :IsFilterPerAuthUser, :IsFilterCurrentUser, :Keyword

        def initialize(projectid=nil, allpage=nil, pageno=nil, pagesize=nil, isfilterperauthuser=nil, isfiltercurrentuser=nil, keyword=nil)
          @ProjectId = projectid
          @AllPage = allpage
          @PageNo = pageno
          @PageSize = pagesize
          @IsFilterPerAuthUser = isfilterperauthuser
          @IsFilterCurrentUser = isfiltercurrentuser
          @Keyword = keyword
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @AllPage = params['AllPage']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @IsFilterPerAuthUser = params['IsFilterPerAuthUser']
          @IsFilterCurrentUser = params['IsFilterCurrentUser']
          @Keyword = params['Keyword']
        end
      end

      # DescribeUserProjectList返回参数结构体
      class DescribeUserProjectListResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.CorpUserListData`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Data, :Extra, :Msg, :RequestId

        def initialize(errorinfo=nil, data=nil, extra=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Data = data
          @Extra = extra
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          unless params['Data'].nil?
            @Data = CorpUserListData.new
            @Data.deserialize(params['Data'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserRoleList请求参数结构体
      class DescribeUserRoleListRequest < TencentCloud::Common::AbstractModel
        # @param PageNo: 页码
        # @type PageNo: Integer
        # @param PageSize: 页数
        # @type PageSize: Integer
        # @param AllPage: 全部页码
        # @type AllPage: Boolean
        # @param UserType: 0 企业用户 1 访客 不填表示所有用户
        # @type UserType: String
        # @param Keyword: 模糊搜索的关键字
        # @type Keyword: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param IsOnlyBindAppUser: 是否只获取绑定企微应用的
        # @type IsOnlyBindAppUser: Boolean

        attr_accessor :PageNo, :PageSize, :AllPage, :UserType, :Keyword, :ProjectId, :IsOnlyBindAppUser

        def initialize(pageno=nil, pagesize=nil, allpage=nil, usertype=nil, keyword=nil, projectid=nil, isonlybindappuser=nil)
          @PageNo = pageno
          @PageSize = pagesize
          @AllPage = allpage
          @UserType = usertype
          @Keyword = keyword
          @ProjectId = projectid
          @IsOnlyBindAppUser = isonlybindappuser
        end

        def deserialize(params)
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @AllPage = params['AllPage']
          @UserType = params['UserType']
          @Keyword = params['Keyword']
          @ProjectId = params['ProjectId']
          @IsOnlyBindAppUser = params['IsOnlyBindAppUser']
        end
      end

      # DescribeUserRoleList返回参数结构体
      class DescribeUserRoleListResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展描述信息(提供更多异常信息,用于辅助判断)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.UserRoleListData`
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = UserRoleListData.new
            @Data.deserialize(params['Data'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserRoleProjectList请求参数结构体
      class DescribeUserRoleProjectListRequest < TencentCloud::Common::AbstractModel
        # @param PageNo: 页码
        # @type PageNo: Integer
        # @param PageSize: 页数
        # @type PageSize: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param IsOnlyBindAppUser: 是否只获取绑定企微应用的
        # @type IsOnlyBindAppUser: Boolean
        # @param AllPage: 是否获取全部数据
        # @type AllPage: Boolean
        # @param RoleCode: 角色编码
        # @type RoleCode: String
        # @param UserIdList: 用户id列表
        # @type UserIdList: Array
        # @param Keyword: 搜索关键词
        # @type Keyword: String

        attr_accessor :PageNo, :PageSize, :ProjectId, :IsOnlyBindAppUser, :AllPage, :RoleCode, :UserIdList, :Keyword

        def initialize(pageno=nil, pagesize=nil, projectid=nil, isonlybindappuser=nil, allpage=nil, rolecode=nil, useridlist=nil, keyword=nil)
          @PageNo = pageno
          @PageSize = pagesize
          @ProjectId = projectid
          @IsOnlyBindAppUser = isonlybindappuser
          @AllPage = allpage
          @RoleCode = rolecode
          @UserIdList = useridlist
          @Keyword = keyword
        end

        def deserialize(params)
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @ProjectId = params['ProjectId']
          @IsOnlyBindAppUser = params['IsOnlyBindAppUser']
          @AllPage = params['AllPage']
          @RoleCode = params['RoleCode']
          @UserIdList = params['UserIdList']
          @Keyword = params['Keyword']
        end
      end

      # DescribeUserRoleProjectList返回参数结构体
      class DescribeUserRoleProjectListResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.UserRoleListData`
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = UserRoleListData.new
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
        # @param TicketNum: 访问次数限制，限制范围1-99999，为空则不设置访问次数限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TicketNum: Integer
        # @param GlobalParam: 全局参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GlobalParam: String
        # @param Intention: embed表示页面看板嵌出，chatBIEmbed表示ChatBI嵌出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Intention: String
        # @param TokenType: 100 无绑定用户
        # 200 单用户单token
        # 300 单用户 多token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TokenType: Integer
        # @param TokenNum: token 数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TokenNum: Integer
        # @param SingleUserMultiToken: 是否单用户多token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SingleUserMultiToken: Boolean
        # @param ConfigParam: 嵌出显示配置，目前为ChatBI嵌出场景用，TableFilter表示数据表列表过滤，SqlView表示sql查看功能
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigParam: String

        attr_accessor :Id, :BIToken, :ProjectId, :CreatedUser, :CreatedAt, :UpdatedUser, :UpdatedAt, :PageId, :ExtraParam, :Scope, :ExpireTime, :UserCorpId, :UserId, :TicketNum, :GlobalParam, :Intention, :TokenType, :TokenNum, :SingleUserMultiToken, :ConfigParam

        def initialize(id=nil, bitoken=nil, projectid=nil, createduser=nil, createdat=nil, updateduser=nil, updatedat=nil, pageid=nil, extraparam=nil, scope=nil, expiretime=nil, usercorpid=nil, userid=nil, ticketnum=nil, globalparam=nil, intention=nil, tokentype=nil, tokennum=nil, singleusermultitoken=nil, configparam=nil)
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
          @TicketNum = ticketnum
          @GlobalParam = globalparam
          @Intention = intention
          @TokenType = tokentype
          @TokenNum = tokennum
          @SingleUserMultiToken = singleusermultitoken
          @ConfigParam = configparam
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
          @TicketNum = params['TicketNum']
          @GlobalParam = params['GlobalParam']
          @Intention = params['Intention']
          @TokenType = params['TokenType']
          @TokenNum = params['TokenNum']
          @SingleUserMultiToken = params['SingleUserMultiToken']
          @ConfigParam = params['ConfigParam']
        end
      end

      # 空值展示样式配置值结构
      class EmptyValue < TencentCloud::Common::AbstractModel
        # @param Type: 空值展示样式类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Custom: 空值展示样式类型对应具体的展示字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Custom: String

        attr_accessor :Type, :Custom

        def initialize(type=nil, custom=nil)
          @Type = type
          @Custom = custom
        end

        def deserialize(params)
          @Type = params['Type']
          @Custom = params['Custom']
        end
      end

      # 空值展示样式配置结构
      class EmptyValueConfig < TencentCloud::Common::AbstractModel
        # @param Number: 数值类字段空值样式配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Number: :class:`Tencentcloud::Bi.v20220105.models.EmptyValue`
        # @param String: 字符串字段空置样式配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type String: :class:`Tencentcloud::Bi.v20220105.models.EmptyValue`

        attr_accessor :Number, :String

        def initialize(number=nil, string=nil)
          @Number = number
          @String = string
        end

        def deserialize(params)
          unless params['Number'].nil?
            @Number = EmptyValue.new
            @Number.deserialize(params['Number'])
          end
          unless params['String'].nil?
            @String = EmptyValue.new
            @String.deserialize(params['String'])
          end
        end
      end

      # 自定义错误信息对象
      class ErrorInfo < TencentCloud::Common::AbstractModel
        # @param ErrorTip: 错误说明字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorTip: String
        # @param ErrorMessage: 原始异常信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param ErrorLevel: 错误等级字段
        # ERROR
        # WARN
        # INFO
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorLevel: String
        # @param DocLink: 指引文档链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocLink: String
        # @param FAQ: 快速指引说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FAQ: String
        # @param ReservedField: 预留字段1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedField: String

        attr_accessor :ErrorTip, :ErrorMessage, :ErrorLevel, :DocLink, :FAQ, :ReservedField

        def initialize(errortip=nil, errormessage=nil, errorlevel=nil, doclink=nil, faq=nil, reservedfield=nil)
          @ErrorTip = errortip
          @ErrorMessage = errormessage
          @ErrorLevel = errorlevel
          @DocLink = doclink
          @FAQ = faq
          @ReservedField = reservedfield
        end

        def deserialize(params)
          @ErrorTip = params['ErrorTip']
          @ErrorMessage = params['ErrorMessage']
          @ErrorLevel = params['ErrorLevel']
          @DocLink = params['DocLink']
          @FAQ = params['FAQ']
          @ReservedField = params['ReservedField']
        end
      end

      # ExportScreenPage请求参数结构体
      class ExportScreenPageRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param PageId: 页面id
        # @type PageId: String
        # @param CanvasType: 画布类型。栅格画布：GRID；自由画布：FREE
        # @type CanvasType: String
        # @param PicType: 图片导出类型。base64；url（有效期：1天）
        # @type PicType: String
        # @param WidgetIds: 组件Ids。为空时，导出整个页面
        # @type WidgetIds: Array
        # @param AsyncRequest: 是否是异步请求
        # @type AsyncRequest: Boolean
        # @param TranId: 事务id
        # @type TranId: String

        attr_accessor :ProjectId, :PageId, :CanvasType, :PicType, :WidgetIds, :AsyncRequest, :TranId

        def initialize(projectid=nil, pageid=nil, canvastype=nil, pictype=nil, widgetids=nil, asyncrequest=nil, tranid=nil)
          @ProjectId = projectid
          @PageId = pageid
          @CanvasType = canvastype
          @PicType = pictype
          @WidgetIds = widgetids
          @AsyncRequest = asyncrequest
          @TranId = tranid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageId = params['PageId']
          @CanvasType = params['CanvasType']
          @PicType = params['PicType']
          @WidgetIds = params['WidgetIds']
          @AsyncRequest = params['AsyncRequest']
          @TranId = params['TranId']
        end
      end

      # ExportScreenPage返回参数结构体
      class ExportScreenPageResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 返回数据结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.PageScreenListVO`
        # @param Msg: 返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = PageScreenListVO.new
            @Data.deserialize(params['Data'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # 字段备注信息
      class FieldRemarkDTO < TencentCloud::Common::AbstractModel
        # @param FieldName: 字段名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldName: String
        # @param Comment: 字段备注列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: Array

        attr_accessor :FieldName, :Comment

        def initialize(fieldname=nil, comment=nil)
          @FieldName = fieldname
          @Comment = comment
        end

        def deserialize(params)
          @FieldName = params['FieldName']
          @Comment = params['Comment']
        end
      end

      # 定时任务执行频率配置
      class FrequencyConfig < TencentCloud::Common::AbstractModel
        # @param Frequency: 周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Frequency: String
        # @param Dates: 日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dates: Array
        # @param Time: 时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: String
        # @param IntervalTime: 间隔时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntervalTime: Integer
        # @param IntervalTimeUnit: 1:SECOND,2:MINUTE,3:HOUR,4:DAY
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntervalTimeUnit: Integer
        # @param Hours: 小时列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hours: Array
        # @param Minute: 分钟列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Minute: Array

        attr_accessor :Frequency, :Dates, :Time, :IntervalTime, :IntervalTimeUnit, :Hours, :Minute

        def initialize(frequency=nil, dates=nil, time=nil, intervaltime=nil, intervaltimeunit=nil, hours=nil, minute=nil)
          @Frequency = frequency
          @Dates = dates
          @Time = time
          @IntervalTime = intervaltime
          @IntervalTimeUnit = intervaltimeunit
          @Hours = hours
          @Minute = minute
        end

        def deserialize(params)
          @Frequency = params['Frequency']
          @Dates = params['Dates']
          @Time = params['Time']
          @IntervalTime = params['IntervalTime']
          @IntervalTimeUnit = params['IntervalTimeUnit']
          @Hours = params['Hours']
          @Minute = params['Minute']
        end
      end

      # 仅包含id的对象
      class IdDTO < TencentCloud::Common::AbstractModel
        # @param Id: 请求id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param AccessKey: key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessKey: String
        # @param ProjectId: id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param TranId: 事务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranId: String
        # @param TranStatus: 事务状态
        # 取值范围：
        # 1: 处理中
        # 2: 处理成功
        # 3: 处理失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranStatus: Integer

        attr_accessor :Id, :AccessKey, :ProjectId, :TranId, :TranStatus

        def initialize(id=nil, accesskey=nil, projectid=nil, tranid=nil, transtatus=nil)
          @Id = id
          @AccessKey = accesskey
          @ProjectId = projectid
          @TranId = tranid
          @TranStatus = transtatus
        end

        def deserialize(params)
          @Id = params['Id']
          @AccessKey = params['AccessKey']
          @ProjectId = params['ProjectId']
          @TranId = params['TranId']
          @TranStatus = params['TranStatus']
        end
      end

      # 多表关联原始表之间的关联信息
      class JoinRelation < TencentCloud::Common::AbstractModel
        # @param JoinId: 表关联关系id,前端使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JoinId: String
        # @param SourceTableNodeId: 原表节点id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceTableNodeId: String
        # @param TargetTableNodeId: 目标表节点id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetTableNodeId: String
        # @param JoinType: 多表关联的关联类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JoinType: String
        # @param Fields: 多表关联的字段列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fields: Array

        attr_accessor :JoinId, :SourceTableNodeId, :TargetTableNodeId, :JoinType, :Fields

        def initialize(joinid=nil, sourcetablenodeid=nil, targettablenodeid=nil, jointype=nil, fields=nil)
          @JoinId = joinid
          @SourceTableNodeId = sourcetablenodeid
          @TargetTableNodeId = targettablenodeid
          @JoinType = jointype
          @Fields = fields
        end

        def deserialize(params)
          @JoinId = params['JoinId']
          @SourceTableNodeId = params['SourceTableNodeId']
          @TargetTableNodeId = params['TargetTableNodeId']
          @JoinType = params['JoinType']
          unless params['Fields'].nil?
            @Fields = []
            params['Fields'].each do |i|
              joinrelationfield_tmp = JoinRelationField.new
              joinrelationfield_tmp.deserialize(i)
              @Fields << joinrelationfield_tmp
            end
          end
        end
      end

      # 多表关联原始表之间使用的关联字段信息
      class JoinRelationField < TencentCloud::Common::AbstractModel
        # @param FieldJoinId: 字段关联关系id,前端使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldJoinId: String
        # @param SourceField: 原表字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceField: :class:`Tencentcloud::Bi.v20220105.models.TableField`
        # @param TargetField: 目标表字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetField: :class:`Tencentcloud::Bi.v20220105.models.TableField`

        attr_accessor :FieldJoinId, :SourceField, :TargetField

        def initialize(fieldjoinid=nil, sourcefield=nil, targetfield=nil)
          @FieldJoinId = fieldjoinid
          @SourceField = sourcefield
          @TargetField = targetfield
        end

        def deserialize(params)
          @FieldJoinId = params['FieldJoinId']
          unless params['SourceField'].nil?
            @SourceField = TableField.new
            @SourceField.deserialize(params['SourceField'])
          end
          unless params['TargetField'].nil?
            @TargetField = TableField.new
            @TargetField.deserialize(params['TargetField'])
          end
        end
      end

      # 多表关联原始表信息
      class JoinSourceTable < TencentCloud::Common::AbstractModel
        # @param TableNodeType: 1:数据源原表,2:本地表,3:Excel表,4:API表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableNodeType: Integer
        # @param TableNodeId: 原始表节点Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableNodeId: String
        # @param ParentId: 父节点id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentId: String
        # @param TableId: 非必填, 数据源原表没有ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: String
        # @param TableName: 必填,数据源原表用原始表名, 其他类型用BI的逻辑表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param Fields: 原始表需要展示的字段列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fields: Array
        # @param DatasourceId: 数据源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceId: Integer
        # @param TableAlias: 非必填,前端展示的数据源别名,excel建表需要
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableAlias: String

        attr_accessor :TableNodeType, :TableNodeId, :ParentId, :TableId, :TableName, :Fields, :DatasourceId, :TableAlias

        def initialize(tablenodetype=nil, tablenodeid=nil, parentid=nil, tableid=nil, tablename=nil, fields=nil, datasourceid=nil, tablealias=nil)
          @TableNodeType = tablenodetype
          @TableNodeId = tablenodeid
          @ParentId = parentid
          @TableId = tableid
          @TableName = tablename
          @Fields = fields
          @DatasourceId = datasourceid
          @TableAlias = tablealias
        end

        def deserialize(params)
          @TableNodeType = params['TableNodeType']
          @TableNodeId = params['TableNodeId']
          @ParentId = params['ParentId']
          @TableId = params['TableId']
          @TableName = params['TableName']
          unless params['Fields'].nil?
            @Fields = []
            params['Fields'].each do |i|
              tablefield_tmp = TableField.new
              tablefield_tmp.deserialize(i)
              @Fields << tablefield_tmp
            end
          end
          @DatasourceId = params['DatasourceId']
          @TableAlias = params['TableAlias']
        end
      end

      # ModifyAuthApiKey请求参数结构体
      class ModifyAuthApiKeyRequest < TencentCloud::Common::AbstractModel
        # @param ApiKey: <p>ApiKey</p>
        # @type ApiKey: String
        # @param DefaultUser: <p>默认用户</p>
        # @type DefaultUser: String

        attr_accessor :ApiKey, :DefaultUser

        def initialize(apikey=nil, defaultuser=nil)
          @ApiKey = apikey
          @DefaultUser = defaultuser
        end

        def deserialize(params)
          @ApiKey = params['ApiKey']
          @DefaultUser = params['DefaultUser']
        end
      end

      # ModifyAuthApiKey返回参数结构体
      class ModifyAuthApiKeyResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: <p>&quot;&quot;</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: <p>&quot;success&quot;</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: <p>数据</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.ApiKeyAuthApplyVO`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          unless params['Data'].nil?
            @Data = ApiKeyAuthApplyVO.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyDatasourceCloud请求参数结构体
      class ModifyDatasourceCloudRequest < TencentCloud::Common::AbstractModel
        # @param ServiceType: 后端提供字典：域类型，1、腾讯云，2、本地
        # @type ServiceType: String
        # @param DbType: 驱动
        # 取值范围：
        # MYSQL：MySQL数据库
        # PRESTO：PRESTO数据库
        # POSTGRE：PostgreSQL数据库
        # DLC：DLC数据库
        # MSSQL：微软SQL Server数据库
        # @type DbType: String
        # @param Charset: 数据库编码
        # @type Charset: String
        # @param DbUser: 用户名
        # @type DbUser: String
        # @param DbPwd: 密码
        # @type DbPwd: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param SourceName: 数据库别名
        # @type SourceName: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param Id: 住键
        # @type Id: Integer
        # @param Vip: 公有云内网ip
        # @type Vip: String
        # @param Vport: 公有云内网端口
        # @type Vport: String
        # @param VpcId: vpc标识
        # @type VpcId: String
        # @param UniqVpcId: 统一vpc标识
        # @type UniqVpcId: String
        # @param RegionId: 区域标识（gz,bj)
        # @type RegionId: String
        # @param ExtraParam: 扩展参数
        # @type ExtraParam: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param ProdDbName: 数据源产品名
        # @type ProdDbName: String
        # @param DataOrigin: 第三方数据源标识
        # @type DataOrigin: String
        # @param DataOriginProjectId: 第三方项目id
        # @type DataOriginProjectId: String
        # @param DataOriginDatasourceId: 第三方数据源id
        # @type DataOriginDatasourceId: String
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Schema: 数据库schema
        # @type Schema: String
        # @param DbVersion: 数据库版本
        # @type DbVersion: String

        attr_accessor :ServiceType, :DbType, :Charset, :DbUser, :DbPwd, :DbName, :SourceName, :ProjectId, :Id, :Vip, :Vport, :VpcId, :UniqVpcId, :RegionId, :ExtraParam, :InstanceId, :ProdDbName, :DataOrigin, :DataOriginProjectId, :DataOriginDatasourceId, :ClusterId, :Schema, :DbVersion

        def initialize(servicetype=nil, dbtype=nil, charset=nil, dbuser=nil, dbpwd=nil, dbname=nil, sourcename=nil, projectid=nil, id=nil, vip=nil, vport=nil, vpcid=nil, uniqvpcid=nil, regionid=nil, extraparam=nil, instanceid=nil, proddbname=nil, dataorigin=nil, dataoriginprojectid=nil, dataorigindatasourceid=nil, clusterid=nil, schema=nil, dbversion=nil)
          @ServiceType = servicetype
          @DbType = dbtype
          @Charset = charset
          @DbUser = dbuser
          @DbPwd = dbpwd
          @DbName = dbname
          @SourceName = sourcename
          @ProjectId = projectid
          @Id = id
          @Vip = vip
          @Vport = vport
          @VpcId = vpcid
          @UniqVpcId = uniqvpcid
          @RegionId = regionid
          @ExtraParam = extraparam
          @InstanceId = instanceid
          @ProdDbName = proddbname
          @DataOrigin = dataorigin
          @DataOriginProjectId = dataoriginprojectid
          @DataOriginDatasourceId = dataorigindatasourceid
          @ClusterId = clusterid
          @Schema = schema
          @DbVersion = dbversion
        end

        def deserialize(params)
          @ServiceType = params['ServiceType']
          @DbType = params['DbType']
          @Charset = params['Charset']
          @DbUser = params['DbUser']
          @DbPwd = params['DbPwd']
          @DbName = params['DbName']
          @SourceName = params['SourceName']
          @ProjectId = params['ProjectId']
          @Id = params['Id']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @VpcId = params['VpcId']
          @UniqVpcId = params['UniqVpcId']
          @RegionId = params['RegionId']
          @ExtraParam = params['ExtraParam']
          @InstanceId = params['InstanceId']
          @ProdDbName = params['ProdDbName']
          @DataOrigin = params['DataOrigin']
          @DataOriginProjectId = params['DataOriginProjectId']
          @DataOriginDatasourceId = params['DataOriginDatasourceId']
          @ClusterId = params['ClusterId']
          @Schema = params['Schema']
          @DbVersion = params['DbVersion']
        end
      end

      # ModifyDatasourceCloud返回参数结构体
      class ModifyDatasourceCloudResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param Extra: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Data, :Extra, :Msg, :RequestId

        def initialize(errorinfo=nil, data=nil, extra=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Data = data
          @Extra = extra
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Data = params['Data']
          @Extra = params['Extra']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDatasource请求参数结构体
      class ModifyDatasourceRequest < TencentCloud::Common::AbstractModel
        # @param DbHost: HOST
        # @type DbHost: String
        # @param DbPort: 端口
        # @type DbPort: Integer
        # @param ServiceType: 后端提供字典：域类型，1、腾讯云，2、本地
        # @type ServiceType: String
        # @param DbType: 驱动
        # 取值范围：
        # MYSQL：MySQL数据库
        # PRESTO：PRESTO数据库
        # POSTGRE：PostgreSQL数据库
        # DLC：DLC数据库
        # MSSQL：微软SQL Server数据库
        # @type DbType: String
        # @param Charset: 数据库编码
        # @type Charset: String
        # @param DbUser: 用户名
        # @type DbUser: String
        # @param DbPwd: 密码
        # @type DbPwd: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param SourceName: 数据库别名
        # @type SourceName: String
        # @param Id: 数据源id
        # @type Id: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Catalog: catalog值
        # @type Catalog: String
        # @param DataOrigin: 第三方数据源标识
        # @type DataOrigin: String
        # @param DataOriginProjectId: 第三方项目id
        # @type DataOriginProjectId: String
        # @param DataOriginDatasourceId: 第三方数据源id
        # @type DataOriginDatasourceId: String
        # @param ExtraParam: 扩展参数
        # @type ExtraParam: String
        # @param UniqVpcId: 腾讯云私有网络统一标识
        # @type UniqVpcId: String
        # @param Vip: 私有网络ip
        # @type Vip: String
        # @param Vport: 私有网络端口
        # @type Vport: String
        # @param VpcId: 腾讯云私有网络标识
        # @type VpcId: String
        # @param UseVPC: 开启vpc
        # @type UseVPC: Boolean
        # @param RegionId: 地域
        # @type RegionId: String
        # @param Schema: 数据库schema
        # @type Schema: String
        # @param DbVersion: 数据库版本
        # @type DbVersion: String

        attr_accessor :DbHost, :DbPort, :ServiceType, :DbType, :Charset, :DbUser, :DbPwd, :DbName, :SourceName, :Id, :ProjectId, :Catalog, :DataOrigin, :DataOriginProjectId, :DataOriginDatasourceId, :ExtraParam, :UniqVpcId, :Vip, :Vport, :VpcId, :UseVPC, :RegionId, :Schema, :DbVersion

        def initialize(dbhost=nil, dbport=nil, servicetype=nil, dbtype=nil, charset=nil, dbuser=nil, dbpwd=nil, dbname=nil, sourcename=nil, id=nil, projectid=nil, catalog=nil, dataorigin=nil, dataoriginprojectid=nil, dataorigindatasourceid=nil, extraparam=nil, uniqvpcid=nil, vip=nil, vport=nil, vpcid=nil, usevpc=nil, regionid=nil, schema=nil, dbversion=nil)
          @DbHost = dbhost
          @DbPort = dbport
          @ServiceType = servicetype
          @DbType = dbtype
          @Charset = charset
          @DbUser = dbuser
          @DbPwd = dbpwd
          @DbName = dbname
          @SourceName = sourcename
          @Id = id
          @ProjectId = projectid
          @Catalog = catalog
          @DataOrigin = dataorigin
          @DataOriginProjectId = dataoriginprojectid
          @DataOriginDatasourceId = dataorigindatasourceid
          @ExtraParam = extraparam
          @UniqVpcId = uniqvpcid
          @Vip = vip
          @Vport = vport
          @VpcId = vpcid
          @UseVPC = usevpc
          @RegionId = regionid
          @Schema = schema
          @DbVersion = dbversion
        end

        def deserialize(params)
          @DbHost = params['DbHost']
          @DbPort = params['DbPort']
          @ServiceType = params['ServiceType']
          @DbType = params['DbType']
          @Charset = params['Charset']
          @DbUser = params['DbUser']
          @DbPwd = params['DbPwd']
          @DbName = params['DbName']
          @SourceName = params['SourceName']
          @Id = params['Id']
          @ProjectId = params['ProjectId']
          @Catalog = params['Catalog']
          @DataOrigin = params['DataOrigin']
          @DataOriginProjectId = params['DataOriginProjectId']
          @DataOriginDatasourceId = params['DataOriginDatasourceId']
          @ExtraParam = params['ExtraParam']
          @UniqVpcId = params['UniqVpcId']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @VpcId = params['VpcId']
          @UseVPC = params['UseVPC']
          @RegionId = params['RegionId']
          @Schema = params['Schema']
          @DbVersion = params['DbVersion']
        end
      end

      # ModifyDatasource返回参数结构体
      class ModifyDatasourceResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param Extra: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Data, :Extra, :Msg, :RequestId

        def initialize(errorinfo=nil, data=nil, extra=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Data = data
          @Extra = extra
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Data = params['Data']
          @Extra = params['Extra']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyProject请求参数结构体
      class ModifyProjectRequest < TencentCloud::Common::AbstractModel
        # @param Id: 项目Id
        # @type Id: Integer
        # @param Name: 名字
        # @type Name: String
        # @param ColorCode: 颜色值
        # @type ColorCode: String
        # @param Logo: 图标
        # @type Logo: String
        # @param Mark: 备注
        # @type Mark: String
        # @param IsApply: 可申请
        # @type IsApply: Boolean
        # @param Seed: 种子
        # @type Seed: String
        # @param DefaultPanelType: 默认看板
        # 取值范围：
        # 1：项目看板
        # 2：我的看板
        # @type DefaultPanelType: Integer
        # @param PanelScope: 2
        # @type PanelScope: String
        # @param ManagePlatform: 项目管理平台
        # @type ManagePlatform: String

        attr_accessor :Id, :Name, :ColorCode, :Logo, :Mark, :IsApply, :Seed, :DefaultPanelType, :PanelScope, :ManagePlatform

        def initialize(id=nil, name=nil, colorcode=nil, logo=nil, mark=nil, isapply=nil, seed=nil, defaultpaneltype=nil, panelscope=nil, manageplatform=nil)
          @Id = id
          @Name = name
          @ColorCode = colorcode
          @Logo = logo
          @Mark = mark
          @IsApply = isapply
          @Seed = seed
          @DefaultPanelType = defaultpaneltype
          @PanelScope = panelscope
          @ManagePlatform = manageplatform
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @ColorCode = params['ColorCode']
          @Logo = params['Logo']
          @Mark = params['Mark']
          @IsApply = params['IsApply']
          @Seed = params['Seed']
          @DefaultPanelType = params['DefaultPanelType']
          @PanelScope = params['PanelScope']
          @ManagePlatform = params['ManagePlatform']
        end
      end

      # ModifyProject返回参数结构体
      class ModifyProjectResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 返回数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param Msg: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Data = params['Data']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyResourceUserGroup请求参数结构体
      class ModifyResourceUserGroupRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: Integer
        # @param UserGroupIds: 用户组id集合
        # @type UserGroupIds: Array
        # @param Resource: 操作的资源权限
        # @type Resource: :class:`Tencentcloud::Bi.v20220105.models.ResourceListDTO`
        # @param ResourceType: 资源类型
        # @type ResourceType: String
        # @param QueryChildren: 是否查询所有孩子节点
        # @type QueryChildren: Boolean

        attr_accessor :ProjectId, :UserGroupIds, :Resource, :ResourceType, :QueryChildren

        def initialize(projectid=nil, usergroupids=nil, resource=nil, resourcetype=nil, querychildren=nil)
          @ProjectId = projectid
          @UserGroupIds = usergroupids
          @Resource = resource
          @ResourceType = resourcetype
          @QueryChildren = querychildren
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @UserGroupIds = params['UserGroupIds']
          unless params['Resource'].nil?
            @Resource = ResourceListDTO.new
            @Resource.deserialize(params['Resource'])
          end
          @ResourceType = params['ResourceType']
          @QueryChildren = params['QueryChildren']
        end
      end

      # ModifyResourceUserGroupResource请求参数结构体
      class ModifyResourceUserGroupResourceRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: Integer
        # @param UserGroupId: 用户id
        # @type UserGroupId: Integer
        # @param Resource: 资源
        # @type Resource: :class:`Tencentcloud::Bi.v20220105.models.UserResourceDTO`
        # @param EntityIds: 实体类
        # @type EntityIds: Array
        # @param ResourceType: 资源类型
        # @type ResourceType: String

        attr_accessor :ProjectId, :UserGroupId, :Resource, :EntityIds, :ResourceType

        def initialize(projectid=nil, usergroupid=nil, resource=nil, entityids=nil, resourcetype=nil)
          @ProjectId = projectid
          @UserGroupId = usergroupid
          @Resource = resource
          @EntityIds = entityids
          @ResourceType = resourcetype
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @UserGroupId = params['UserGroupId']
          unless params['Resource'].nil?
            @Resource = UserResourceDTO.new
            @Resource.deserialize(params['Resource'])
          end
          @EntityIds = params['EntityIds']
          @ResourceType = params['ResourceType']
        end
      end

      # ModifyResourceUserGroupResource返回参数结构体
      class ModifyResourceUserGroupResourceResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyResourceUserGroup返回参数结构体
      class ModifyResourceUserGroupResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyUserDetailInfo请求参数结构体
      class ModifyUserDetailInfoRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String
        # @param RoleIdList: 角色ID 列表
        # @type RoleIdList: Array
        # @param Email: 邮箱
        # @type Email: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param PhoneNumber: 手机号
        # @type PhoneNumber: String
        # @param AreaCode: 手机区号
        # @type AreaCode: String
        # @param AppUserId: 企业微信应用用户id
        # @type AppUserId: String
        # @param LoginSecurityStatus: 是否开启手机验证码登录（0 关闭，1 开启）
        # @type LoginSecurityStatus: Integer
        # @param ResetPassWordTip: 是否开启密码过期提醒（0 关闭，1 开启
        # @type ResetPassWordTip: Integer
        # @param ForceResetPassWord: 强制修改密码（0 关闭，1 开启）
        # @type ForceResetPassWord: Integer
        # @param PasswordExpired: 密码过期提醒时间，30、60、90（默认）、180天
        # @type PasswordExpired: Integer
        # @param UserGroupIdList: 用户组id
        # @type UserGroupIdList: Array

        attr_accessor :UserId, :RoleIdList, :Email, :UserName, :PhoneNumber, :AreaCode, :AppUserId, :LoginSecurityStatus, :ResetPassWordTip, :ForceResetPassWord, :PasswordExpired, :UserGroupIdList

        def initialize(userid=nil, roleidlist=nil, email=nil, username=nil, phonenumber=nil, areacode=nil, appuserid=nil, loginsecuritystatus=nil, resetpasswordtip=nil, forceresetpassword=nil, passwordexpired=nil, usergroupidlist=nil)
          @UserId = userid
          @RoleIdList = roleidlist
          @Email = email
          @UserName = username
          @PhoneNumber = phonenumber
          @AreaCode = areacode
          @AppUserId = appuserid
          @LoginSecurityStatus = loginsecuritystatus
          @ResetPassWordTip = resetpasswordtip
          @ForceResetPassWord = forceresetpassword
          @PasswordExpired = passwordexpired
          @UserGroupIdList = usergroupidlist
        end

        def deserialize(params)
          @UserId = params['UserId']
          @RoleIdList = params['RoleIdList']
          @Email = params['Email']
          @UserName = params['UserName']
          @PhoneNumber = params['PhoneNumber']
          @AreaCode = params['AreaCode']
          @AppUserId = params['AppUserId']
          @LoginSecurityStatus = params['LoginSecurityStatus']
          @ResetPassWordTip = params['ResetPassWordTip']
          @ForceResetPassWord = params['ForceResetPassWord']
          @PasswordExpired = params['PasswordExpired']
          @UserGroupIdList = params['UserGroupIdList']
        end
      end

      # ModifyUserDetailInfo返回参数结构体
      class ModifyUserDetailInfoResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyUserGroup请求参数结构体
      class ModifyUserGroupRequest < TencentCloud::Common::AbstractModel
        # @param UpdateList: <p>用户组更新list</p>
        # @type UpdateList: Array

        attr_accessor :UpdateList

        def initialize(updatelist=nil)
          @UpdateList = updatelist
        end

        def deserialize(params)
          unless params['UpdateList'].nil?
            @UpdateList = []
            params['UpdateList'].each do |i|
              usergroupupdatedto_tmp = UserGroupUpdateDTO.new
              usergroupupdatedto_tmp.deserialize(i)
              @UpdateList << usergroupupdatedto_tmp
            end
          end
        end
      end

      # ModifyUserGroup返回参数结构体
      class ModifyUserGroupResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: <p>额外信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: <p>结果信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: <p>数据</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              usergroupvo_tmp = UserGroupVO.new
              usergroupvo_tmp.deserialize(i)
              @Data << usergroupvo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyUserRoleProject请求参数结构体
      class ModifyUserRoleProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param UserId: 用户ID
        # @type UserId: String
        # @param RoleIdList: 角色ID 列表
        # @type RoleIdList: Array
        # @param Email: 邮箱
        # @type Email: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param AppUserId: 企业微信应用用户id
        # @type AppUserId: String

        attr_accessor :ProjectId, :UserId, :RoleIdList, :Email, :UserName, :AppUserId

        def initialize(projectid=nil, userid=nil, roleidlist=nil, email=nil, username=nil, appuserid=nil)
          @ProjectId = projectid
          @UserId = userid
          @RoleIdList = roleidlist
          @Email = email
          @UserName = username
          @AppUserId = appuserid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @UserId = params['UserId']
          @RoleIdList = params['RoleIdList']
          @Email = params['Email']
          @UserName = params['UserName']
          @AppUserId = params['AppUserId']
        end
      end

      # ModifyUserRoleProject返回参数结构体
      class ModifyUserRoleProjectResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyUserRole请求参数结构体
      class ModifyUserRoleRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String
        # @param RoleIdList: 角色ID 列表
        # @type RoleIdList: Array
        # @param Email: 邮箱
        # @type Email: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param PhoneNumber: 手机号
        # @type PhoneNumber: String
        # @param AreaCode: 手机区号
        # @type AreaCode: String
        # @param AppUserId: 企业微信应用用户id
        # @type AppUserId: String
        # @param LoginSecurityStatus: 是否开启手机验证码登录（0 关闭，1 开启）
        # @type LoginSecurityStatus: Integer
        # @param ResetPassWordTip: 是否开启密码过期提醒（0 关闭，1 开启
        # @type ResetPassWordTip: Integer
        # @param ForceResetPassWord: 强制修改密码（0 关闭，1 开启）
        # @type ForceResetPassWord: Integer
        # @param PasswordExpired: 密码过期提醒时间，30、60、90（默认）、180天
        # @type PasswordExpired: Integer

        attr_accessor :UserId, :RoleIdList, :Email, :UserName, :PhoneNumber, :AreaCode, :AppUserId, :LoginSecurityStatus, :ResetPassWordTip, :ForceResetPassWord, :PasswordExpired

        def initialize(userid=nil, roleidlist=nil, email=nil, username=nil, phonenumber=nil, areacode=nil, appuserid=nil, loginsecuritystatus=nil, resetpasswordtip=nil, forceresetpassword=nil, passwordexpired=nil)
          @UserId = userid
          @RoleIdList = roleidlist
          @Email = email
          @UserName = username
          @PhoneNumber = phonenumber
          @AreaCode = areacode
          @AppUserId = appuserid
          @LoginSecurityStatus = loginsecuritystatus
          @ResetPassWordTip = resetpasswordtip
          @ForceResetPassWord = forceresetpassword
          @PasswordExpired = passwordexpired
        end

        def deserialize(params)
          @UserId = params['UserId']
          @RoleIdList = params['RoleIdList']
          @Email = params['Email']
          @UserName = params['UserName']
          @PhoneNumber = params['PhoneNumber']
          @AreaCode = params['AreaCode']
          @AppUserId = params['AppUserId']
          @LoginSecurityStatus = params['LoginSecurityStatus']
          @ResetPassWordTip = params['ResetPassWordTip']
          @ForceResetPassWord = params['ForceResetPassWord']
          @PasswordExpired = params['PasswordExpired']
        end
      end

      # ModifyUserRole返回参数结构体
      class ModifyUserRoleResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # 页面截图列表
      class PageScreenListVO < TencentCloud::Common::AbstractModel
        # @param PicType: 图片导出类型。base64；url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PicType: String
        # @param List: 图片列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param TranId: 异步事务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranId: String
        # @param TranStatus: 事务状态
        # 1: 处理中; 2: 处理成功; 3 处理失败(错误内容见外层Msg)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranStatus: Integer

        attr_accessor :PicType, :List, :TranId, :TranStatus

        def initialize(pictype=nil, list=nil, tranid=nil, transtatus=nil)
          @PicType = pictype
          @List = list
          @TranId = tranid
          @TranStatus = transtatus
        end

        def deserialize(params)
          @PicType = params['PicType']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              pagescreenvo_tmp = PageScreenVO.new
              pagescreenvo_tmp.deserialize(i)
              @List << pagescreenvo_tmp
            end
          end
          @TranId = params['TranId']
          @TranStatus = params['TranStatus']
        end
      end

      # 页面截图信息
      class PageScreenVO < TencentCloud::Common::AbstractModel
        # @param Content: 截图base64或 url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param WidgetId: 组件Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WidgetId: String

        attr_accessor :Content, :WidgetId

        def initialize(content=nil, widgetid=nil)
          @Content = content
          @WidgetId = widgetid
        end

        def deserialize(params)
          @Content = params['Content']
          @WidgetId = params['WidgetId']
        end
      end

      # 1
      class ParamCreateDTO < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamName: String
        # @param DefaultValue: 默认值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultValue: String
        # @param ParamType: 参数类型，string/datetime/number
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamType: String
        # @param FormatRule: 格式化类型，yyyy-MM-dd HH:mm:ss.SSS（只有时间必填）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FormatRule: String
        # @param ComplexType: 复杂类型，格式化的另一种表达，例如YYYY-MM
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComplexType: String
        # @param Scope: 作用域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scope: String

        attr_accessor :ParamName, :DefaultValue, :ParamType, :FormatRule, :ComplexType, :Scope

        def initialize(paramname=nil, defaultvalue=nil, paramtype=nil, formatrule=nil, complextype=nil, scope=nil)
          @ParamName = paramname
          @DefaultValue = defaultvalue
          @ParamType = paramtype
          @FormatRule = formatrule
          @ComplexType = complextype
          @Scope = scope
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @DefaultValue = params['DefaultValue']
          @ParamType = params['ParamType']
          @FormatRule = params['FormatRule']
          @ComplexType = params['ComplexType']
          @Scope = params['Scope']
        end
      end

      # 商业版本权限单元
      class PermissionComponent < TencentCloud::Common::AbstractModel
        # @param ModuleId: 权限值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModuleId: String
        # @param IncludeType: 可用性。
        # 取值范围：

        # - usable：可用
        # - visible：可见
        # - disabled：不可用
        # - hidden：隐藏

        # 默认值：disabled
        # 示例值：disabled
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeType: String
        # @param UpgradeVersionType: 目标升级版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpgradeVersionType: String
        # @param Tips: 补充信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tips: String
        # @param TipsKey: 补充信息的key值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TipsKey: String

        attr_accessor :ModuleId, :IncludeType, :UpgradeVersionType, :Tips, :TipsKey

        def initialize(moduleid=nil, includetype=nil, upgradeversiontype=nil, tips=nil, tipskey=nil)
          @ModuleId = moduleid
          @IncludeType = includetype
          @UpgradeVersionType = upgradeversiontype
          @Tips = tips
          @TipsKey = tipskey
        end

        def deserialize(params)
          @ModuleId = params['ModuleId']
          @IncludeType = params['IncludeType']
          @UpgradeVersionType = params['UpgradeVersionType']
          @Tips = params['Tips']
          @TipsKey = params['TipsKey']
        end
      end

      # 商业化版本权限分组
      class PermissionGroup < TencentCloud::Common::AbstractModel
        # @param ModuleGroup: 分组名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModuleGroup: String
        # @param Components: 权限列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Components: Array

        attr_accessor :ModuleGroup, :Components

        def initialize(modulegroup=nil, components=nil)
          @ModuleGroup = modulegroup
          @Components = components
        end

        def deserialize(params)
          @ModuleGroup = params['ModuleGroup']
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              permissioncomponent_tmp = PermissionComponent.new
              permissioncomponent_tmp.deserialize(i)
              @Components << permissioncomponent_tmp
            end
          end
        end
      end

      # 项目信息描述
      class Project < TencentCloud::Common::AbstractModel
        # @param Id: 项目ID
        # @type Id: Integer
        # @param Logo: 项目Logo
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Logo: String
        # @param Name: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ColorCode: logo底色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColorCode: String
        # @param CreatedUser: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedUser: String
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param MemberCount: 成员个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberCount: Integer
        # @param PageCount: 页面个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageCount: Integer
        # @param LastModifyName: 最后修改报表、简报名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifyName: String
        # @param Source: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param Apply: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Apply: Boolean
        # @param UpdatedUser: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedUser: String
        # @param UpdatedAt: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param CorpId: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorpId: String
        # @param Mark: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mark: String
        # @param Seed: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Seed: String
        # @param AuthList: 项目内权限列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthList: Array
        # @param PanelScope: 默认看板
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PanelScope: String
        # @param IsExternalManage: 是否被托管
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsExternalManage: Boolean
        # @param ManagePlatform: 托管平台名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManagePlatform: String
        # @param ConfigList: 定制化参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigList: Array
        # @param CreatedUserName: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedUserName: String
        # @param Owner: 所属人id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Owner: String
        # @param OwnerName: 所属人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerName: String
        # @param NormalCount: 仪表盘页面数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NormalCount: Integer
        # @param FreeCount: 自由画布页面数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FreeCount: Integer
        # @param AdhocCount: 即席分析页面数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdhocCount: Integer
        # @param BriefingCount: 简报页面数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BriefingCount: Integer

        attr_accessor :Id, :Logo, :Name, :ColorCode, :CreatedUser, :CreatedAt, :MemberCount, :PageCount, :LastModifyName, :Source, :Apply, :UpdatedUser, :UpdatedAt, :CorpId, :Mark, :Seed, :AuthList, :PanelScope, :IsExternalManage, :ManagePlatform, :ConfigList, :CreatedUserName, :Owner, :OwnerName, :NormalCount, :FreeCount, :AdhocCount, :BriefingCount

        def initialize(id=nil, logo=nil, name=nil, colorcode=nil, createduser=nil, createdat=nil, membercount=nil, pagecount=nil, lastmodifyname=nil, source=nil, apply=nil, updateduser=nil, updatedat=nil, corpid=nil, mark=nil, seed=nil, authlist=nil, panelscope=nil, isexternalmanage=nil, manageplatform=nil, configlist=nil, createdusername=nil, owner=nil, ownername=nil, normalcount=nil, freecount=nil, adhoccount=nil, briefingcount=nil)
          @Id = id
          @Logo = logo
          @Name = name
          @ColorCode = colorcode
          @CreatedUser = createduser
          @CreatedAt = createdat
          @MemberCount = membercount
          @PageCount = pagecount
          @LastModifyName = lastmodifyname
          @Source = source
          @Apply = apply
          @UpdatedUser = updateduser
          @UpdatedAt = updatedat
          @CorpId = corpid
          @Mark = mark
          @Seed = seed
          @AuthList = authlist
          @PanelScope = panelscope
          @IsExternalManage = isexternalmanage
          @ManagePlatform = manageplatform
          @ConfigList = configlist
          @CreatedUserName = createdusername
          @Owner = owner
          @OwnerName = ownername
          @NormalCount = normalcount
          @FreeCount = freecount
          @AdhocCount = adhoccount
          @BriefingCount = briefingcount
        end

        def deserialize(params)
          @Id = params['Id']
          @Logo = params['Logo']
          @Name = params['Name']
          @ColorCode = params['ColorCode']
          @CreatedUser = params['CreatedUser']
          @CreatedAt = params['CreatedAt']
          @MemberCount = params['MemberCount']
          @PageCount = params['PageCount']
          @LastModifyName = params['LastModifyName']
          @Source = params['Source']
          @Apply = params['Apply']
          @UpdatedUser = params['UpdatedUser']
          @UpdatedAt = params['UpdatedAt']
          @CorpId = params['CorpId']
          @Mark = params['Mark']
          @Seed = params['Seed']
          @AuthList = params['AuthList']
          @PanelScope = params['PanelScope']
          @IsExternalManage = params['IsExternalManage']
          @ManagePlatform = params['ManagePlatform']
          unless params['ConfigList'].nil?
            @ConfigList = []
            params['ConfigList'].each do |i|
              projectconfiglist_tmp = ProjectConfigList.new
              projectconfiglist_tmp.deserialize(i)
              @ConfigList << projectconfiglist_tmp
            end
          end
          @CreatedUserName = params['CreatedUserName']
          @Owner = params['Owner']
          @OwnerName = params['OwnerName']
          @NormalCount = params['NormalCount']
          @FreeCount = params['FreeCount']
          @AdhocCount = params['AdhocCount']
          @BriefingCount = params['BriefingCount']
        end
      end

      # 定制化查询
      class ProjectConfigList < TencentCloud::Common::AbstractModel
        # @param ModuleGroup: 模块组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModuleGroup: String
        # @param Components: 内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Components: Array

        attr_accessor :ModuleGroup, :Components

        def initialize(modulegroup=nil, components=nil)
          @ModuleGroup = modulegroup
          @Components = components
        end

        def deserialize(params)
          @ModuleGroup = params['ModuleGroup']
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              projectconfigresult_tmp = ProjectConfigResult.new
              projectconfigresult_tmp.deserialize(i)
              @Components << projectconfigresult_tmp
            end
          end
        end
      end

      # 定制化查询
      class ProjectConfigResult < TencentCloud::Common::AbstractModel
        # @param ModuleId: 配置名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModuleId: String
        # @param IncludeType: 配置方式。
        # 取值范围：

        # - usable：可用
        # - visible：可见
        # - disabled：不可用
        # - hidden：隐藏

        # 默认值：disabled
        # 示例值：disabled
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeType: String
        # @param Params: 额外参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: String

        attr_accessor :ModuleId, :IncludeType, :Params

        def initialize(moduleid=nil, includetype=nil, params=nil)
          @ModuleId = moduleid
          @IncludeType = includetype
          @Params = params
        end

        def deserialize(params)
          @ModuleId = params['ModuleId']
          @IncludeType = params['IncludeType']
          @Params = params['Params']
        end
      end

      # 项目列表数据
      class ProjectListData < TencentCloud::Common::AbstractModel
        # @param List: 数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param TotalPages: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPages: Integer

        attr_accessor :List, :Total, :TotalPages

        def initialize(list=nil, total=nil, totalpages=nil)
          @List = list
          @Total = total
          @TotalPages = totalpages
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              project_tmp = Project.new
              project_tmp.deserialize(i)
              @List << project_tmp
            end
          end
          @Total = params['Total']
          @TotalPages = params['TotalPages']
        end
      end

      # QueryUserGroupMember请求参数结构体
      class QueryUserGroupMemberRequest < TencentCloud::Common::AbstractModel
        # @param GroupIds: <p>用户组id集合</p>
        # @type GroupIds: Array
        # @param Keyword: <p>搜索关键字</p>
        # @type Keyword: String
        # @param PageSize: <p>分页大小</p>
        # @type PageSize: Integer
        # @param PageNo: <p>分页页码</p>
        # @type PageNo: Integer
        # @param AllPage: <p>是否需要分页</p>
        # @type AllPage: Boolean
        # @param Nodes: <p>用户组节点信息</p>
        # @type Nodes: Array
        # @param TagValueList: <p>标签值</p>
        # @type TagValueList: Array
        # @param FilterGroupIds: <p>需要过滤的用户组</p>
        # @type FilterGroupIds: Array

        attr_accessor :GroupIds, :Keyword, :PageSize, :PageNo, :AllPage, :Nodes, :TagValueList, :FilterGroupIds

        def initialize(groupids=nil, keyword=nil, pagesize=nil, pageno=nil, allpage=nil, nodes=nil, tagvaluelist=nil, filtergroupids=nil)
          @GroupIds = groupids
          @Keyword = keyword
          @PageSize = pagesize
          @PageNo = pageno
          @AllPage = allpage
          @Nodes = nodes
          @TagValueList = tagvaluelist
          @FilterGroupIds = filtergroupids
        end

        def deserialize(params)
          @GroupIds = params['GroupIds']
          @Keyword = params['Keyword']
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
          @AllPage = params['AllPage']
          unless params['Nodes'].nil?
            @Nodes = []
            params['Nodes'].each do |i|
              usergrouptreenodedto_tmp = UserGroupTreeNodeDTO.new
              usergrouptreenodedto_tmp.deserialize(i)
              @Nodes << usergrouptreenodedto_tmp
            end
          end
          unless params['TagValueList'].nil?
            @TagValueList = []
            params['TagValueList'].each do |i|
              resourcetagvalue_tmp = ResourceTagValue.new
              resourcetagvalue_tmp.deserialize(i)
              @TagValueList << resourcetagvalue_tmp
            end
          end
          @FilterGroupIds = params['FilterGroupIds']
        end
      end

      # QueryUserGroupMember返回参数结构体
      class QueryUserGroupMemberResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: <p>额外信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: <p>结果信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: <p>数据</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.DescribeUserGroupMemberPageListContainer`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          unless params['Data'].nil?
            @Data = DescribeUserGroupMemberPageListContainer.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 行列权限内容
      class RankInfo < TencentCloud::Common::AbstractModel
        # @param Type: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Mode: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mode: String
        # @param RulerInfo: `
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RulerInfo: String
        # @param RoleId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleId: Integer
        # @param RoleType: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleType: String
        # @param TableId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: Integer
        # @param RowColumnConfigList: 行列权限配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowColumnConfigList: Array

        attr_accessor :Type, :Mode, :RulerInfo, :RoleId, :RoleType, :TableId, :RowColumnConfigList

        def initialize(type=nil, mode=nil, rulerinfo=nil, roleid=nil, roletype=nil, tableid=nil, rowcolumnconfiglist=nil)
          @Type = type
          @Mode = mode
          @RulerInfo = rulerinfo
          @RoleId = roleid
          @RoleType = roletype
          @TableId = tableid
          @RowColumnConfigList = rowcolumnconfiglist
        end

        def deserialize(params)
          @Type = params['Type']
          @Mode = params['Mode']
          @RulerInfo = params['RulerInfo']
          @RoleId = params['RoleId']
          @RoleType = params['RoleType']
          @TableId = params['TableId']
          unless params['RowColumnConfigList'].nil?
            @RowColumnConfigList = []
            params['RowColumnConfigList'].each do |i|
              rowcolumnconfig_tmp = RowColumnConfig.new
              rowcolumnconfig_tmp.deserialize(i)
              @RowColumnConfigList << rowcolumnconfig_tmp
            end
          end
        end
      end

      # 资源权限信息
      class ResourceDTO < TencentCloud::Common::AbstractModel
        # @param ResourceName: 资源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param ResourceValue: 是否启用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceValue: Boolean
        # @param CanChange: 能否变更
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanChange: Boolean
        # @param Tips: 提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tips: String

        attr_accessor :ResourceName, :ResourceValue, :CanChange, :Tips

        def initialize(resourcename=nil, resourcevalue=nil, canchange=nil, tips=nil)
          @ResourceName = resourcename
          @ResourceValue = resourcevalue
          @CanChange = canchange
          @Tips = tips
        end

        def deserialize(params)
          @ResourceName = params['ResourceName']
          @ResourceValue = params['ResourceValue']
          @CanChange = params['CanChange']
          @Tips = params['Tips']
        end
      end

      # 资源
      class ResourceItem < TencentCloud::Common::AbstractModel
        # @param ResourceName: 资源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param ResourceValue: 资源值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceValue: Boolean
        # @param CanChange: 是否可变更
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanChange: Boolean
        # @param Tips: 提示信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tips: String

        attr_accessor :ResourceName, :ResourceValue, :CanChange, :Tips

        def initialize(resourcename=nil, resourcevalue=nil, canchange=nil, tips=nil)
          @ResourceName = resourcename
          @ResourceValue = resourcevalue
          @CanChange = canchange
          @Tips = tips
        end

        def deserialize(params)
          @ResourceName = params['ResourceName']
          @ResourceValue = params['ResourceValue']
          @CanChange = params['CanChange']
          @Tips = params['Tips']
        end
      end

      # 操作的资源权限
      class ResourceListDTO < TencentCloud::Common::AbstractModel
        # @param EntityId: 资源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EntityId: Integer
        # @param NodeType: 资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeType: Integer
        # @param ResourceList: 资源权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceList: Array

        attr_accessor :EntityId, :NodeType, :ResourceList

        def initialize(entityid=nil, nodetype=nil, resourcelist=nil)
          @EntityId = entityid
          @NodeType = nodetype
          @ResourceList = resourcelist
        end

        def deserialize(params)
          @EntityId = params['EntityId']
          @NodeType = params['NodeType']
          unless params['ResourceList'].nil?
            @ResourceList = []
            params['ResourceList'].each do |i|
              resourceitem_tmp = ResourceItem.new
              resourceitem_tmp.deserialize(i)
              @ResourceList << resourceitem_tmp
            end
          end
        end
      end

      # 资源权限标签过滤参数
      class ResourceTagValue < TencentCloud::Common::AbstractModel
        # @param Id: 标签id
        # @type Id: Integer
        # @param Name: 标签名称
        # @type Name: String
        # @param Values: 标签值列表
        # @type Values: Array

        attr_accessor :Id, :Name, :Values

        def initialize(id=nil, name=nil, values=nil)
          @Id = id
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 角色
      class Role < TencentCloud::Common::AbstractModel
        # @param Id: 角色ID
        # @type Id: Integer
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param CorpId: 企业ID
        # @type CorpId: String
        # @param RoleType: 角色类型
        # @type RoleType: String
        # @param Scope: 范围
        # @type Scope: String
        # @param Description: 描述
        # @type Description: String
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param CreatedUser: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedUser: String
        # @param UpdatedAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param UpdatedUser: 更新人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedUser: String
        # @param ScopeType: 是否为全局角色（0 不是， 1 是）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScopeType: Integer
        # @param CanChoose: 是否可被选
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanChoose: Boolean
        # @param ModuleCollection: 角色key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModuleCollection: String

        attr_accessor :Id, :RoleName, :CorpId, :RoleType, :Scope, :Description, :CreatedAt, :CreatedUser, :UpdatedAt, :UpdatedUser, :ScopeType, :CanChoose, :ModuleCollection

        def initialize(id=nil, rolename=nil, corpid=nil, roletype=nil, scope=nil, description=nil, createdat=nil, createduser=nil, updatedat=nil, updateduser=nil, scopetype=nil, canchoose=nil, modulecollection=nil)
          @Id = id
          @RoleName = rolename
          @CorpId = corpid
          @RoleType = roletype
          @Scope = scope
          @Description = description
          @CreatedAt = createdat
          @CreatedUser = createduser
          @UpdatedAt = updatedat
          @UpdatedUser = updateduser
          @ScopeType = scopetype
          @CanChoose = canchoose
          @ModuleCollection = modulecollection
        end

        def deserialize(params)
          @Id = params['Id']
          @RoleName = params['RoleName']
          @CorpId = params['CorpId']
          @RoleType = params['RoleType']
          @Scope = params['Scope']
          @Description = params['Description']
          @CreatedAt = params['CreatedAt']
          @CreatedUser = params['CreatedUser']
          @UpdatedAt = params['UpdatedAt']
          @UpdatedUser = params['UpdatedUser']
          @ScopeType = params['ScopeType']
          @CanChoose = params['CanChoose']
          @ModuleCollection = params['ModuleCollection']
        end
      end

      # 行列权限配置
      class RowColumnConfig < TencentCloud::Common::AbstractModel
        # @param RulerInfo: 行列权限规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RulerInfo: String
        # @param TagValueList: 标签值列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagValueList: Array

        attr_accessor :RulerInfo, :TagValueList

        def initialize(rulerinfo=nil, tagvaluelist=nil)
          @RulerInfo = rulerinfo
          @TagValueList = tagvaluelist
        end

        def deserialize(params)
          @RulerInfo = params['RulerInfo']
          unless params['TagValueList'].nil?
            @TagValueList = []
            params['TagValueList'].each do |i|
              rowcolumntagvalue_tmp = RowColumnTagValue.new
              rowcolumntagvalue_tmp.deserialize(i)
              @TagValueList << rowcolumntagvalue_tmp
            end
          end
        end
      end

      # 行列权限初始状态
      class RowColumnStatus < TencentCloud::Common::AbstractModel
        # @param TableId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableId: Integer
        # @param Type: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Mode: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mode: String
        # @param OpenStatus: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenStatus: String
        # @param RoleType: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleType: String
        # @param RoleId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleId: Integer

        attr_accessor :TableId, :Type, :Mode, :OpenStatus, :RoleType, :RoleId

        def initialize(tableid=nil, type=nil, mode=nil, openstatus=nil, roletype=nil, roleid=nil)
          @TableId = tableid
          @Type = type
          @Mode = mode
          @OpenStatus = openstatus
          @RoleType = roletype
          @RoleId = roleid
        end

        def deserialize(params)
          @TableId = params['TableId']
          @Type = params['Type']
          @Mode = params['Mode']
          @OpenStatus = params['OpenStatus']
          @RoleType = params['RoleType']
          @RoleId = params['RoleId']
        end
      end

      # 行列权限标签出入参
      class RowColumnTagValue < TencentCloud::Common::AbstractModel
        # @param Id: 标签id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Values: 标签值列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :Id, :Name, :Values

        def initialize(id=nil, name=nil, values=nil)
          @Id = id
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 表的列数据抽象
      class TableColumn < TencentCloud::Common::AbstractModel
        # @param DbName: 列名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbName: String
        # @param AliasName: 列的别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AliasName: String
        # @param DbType: 列的类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbType: String
        # @param FieldType: 段类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldType: String
        # @param Mark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mark: String
        # @param ExcelName: excel名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExcelName: String
        # @param DictId: 关联的字典表Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DictId: Integer
        # @param DictName: 关联的字典表表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DictName: String
        # @param TableNodeId: 多表关联新增字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableNodeId: String
        # @param TableName: 字段所属的表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param FieldComplexType: 用户设置的带格式的目标复杂格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldComplexType: String
        # @param FormatRule: 格式规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FormatRule: String
        # @param IsFilter: 数据字段是否过滤空值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsFilter: Boolean
        # @param CalcType: 计算字段类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CalcType: String
        # @param CalcFormula: 计算字段的公式内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CalcFormula: String
        # @param CalcDesc: 计算字段的中文公式内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CalcDesc: String
        # @param JsonPathName: Api数据源json路径名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JsonPathName: String
        # @param Granularity: 地理类型标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Granularity: String
        # @param GeoJsonId: 自定义地图Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GeoJsonId: Integer
        # @param EmptyValueConfig: 空值展示样式配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EmptyValueConfig: :class:`Tencentcloud::Bi.v20220105.models.EmptyValueConfig`
        # @param DbFieldName: 原列名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbFieldName: String
        # @param IsCopyOperation: 是否是复制字段操作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCopyOperation: Boolean
        # @param IsCopyFromNormal: 是否从普通字段复制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCopyFromNormal: Boolean

        attr_accessor :DbName, :AliasName, :DbType, :FieldType, :Mark, :ExcelName, :DictId, :DictName, :TableNodeId, :TableName, :FieldComplexType, :FormatRule, :IsFilter, :CalcType, :CalcFormula, :CalcDesc, :JsonPathName, :Granularity, :GeoJsonId, :EmptyValueConfig, :DbFieldName, :IsCopyOperation, :IsCopyFromNormal

        def initialize(dbname=nil, aliasname=nil, dbtype=nil, fieldtype=nil, mark=nil, excelname=nil, dictid=nil, dictname=nil, tablenodeid=nil, tablename=nil, fieldcomplextype=nil, formatrule=nil, isfilter=nil, calctype=nil, calcformula=nil, calcdesc=nil, jsonpathname=nil, granularity=nil, geojsonid=nil, emptyvalueconfig=nil, dbfieldname=nil, iscopyoperation=nil, iscopyfromnormal=nil)
          @DbName = dbname
          @AliasName = aliasname
          @DbType = dbtype
          @FieldType = fieldtype
          @Mark = mark
          @ExcelName = excelname
          @DictId = dictid
          @DictName = dictname
          @TableNodeId = tablenodeid
          @TableName = tablename
          @FieldComplexType = fieldcomplextype
          @FormatRule = formatrule
          @IsFilter = isfilter
          @CalcType = calctype
          @CalcFormula = calcformula
          @CalcDesc = calcdesc
          @JsonPathName = jsonpathname
          @Granularity = granularity
          @GeoJsonId = geojsonid
          @EmptyValueConfig = emptyvalueconfig
          @DbFieldName = dbfieldname
          @IsCopyOperation = iscopyoperation
          @IsCopyFromNormal = iscopyfromnormal
        end

        def deserialize(params)
          @DbName = params['DbName']
          @AliasName = params['AliasName']
          @DbType = params['DbType']
          @FieldType = params['FieldType']
          @Mark = params['Mark']
          @ExcelName = params['ExcelName']
          @DictId = params['DictId']
          @DictName = params['DictName']
          @TableNodeId = params['TableNodeId']
          @TableName = params['TableName']
          @FieldComplexType = params['FieldComplexType']
          @FormatRule = params['FormatRule']
          @IsFilter = params['IsFilter']
          @CalcType = params['CalcType']
          @CalcFormula = params['CalcFormula']
          @CalcDesc = params['CalcDesc']
          @JsonPathName = params['JsonPathName']
          @Granularity = params['Granularity']
          @GeoJsonId = params['GeoJsonId']
          unless params['EmptyValueConfig'].nil?
            @EmptyValueConfig = EmptyValueConfig.new
            @EmptyValueConfig.deserialize(params['EmptyValueConfig'])
          end
          @DbFieldName = params['DbFieldName']
          @IsCopyOperation = params['IsCopyOperation']
          @IsCopyFromNormal = params['IsCopyFromNormal']
        end
      end

      # 表的全部列名数据列表
      class TableColumnListData < TencentCloud::Common::AbstractModel
        # @param List: 表中的列的列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param TranId: 异步事务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranId: String
        # @param TranStatus: 异步事务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranStatus: Integer

        attr_accessor :List, :TranId, :TranStatus

        def initialize(list=nil, tranid=nil, transtatus=nil)
          @List = list
          @TranId = tranid
          @TranStatus = transtatus
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              tablecolumn_tmp = TableColumn.new
              tablecolumn_tmp.deserialize(i)
              @List << tablecolumn_tmp
            end
          end
          @TranId = params['TranId']
          @TranStatus = params['TranStatus']
        end
      end

      # 表字段描述
      class TableField < TencentCloud::Common::AbstractModel
        # @param DbName: db里的字段column名
        # @type DbName: String
        # @param AliasName: bi展示名
        # @type AliasName: String
        # @param DbType: db里的字段类型
        # @type DbType: String
        # @param FieldType: BI归类后的抽象字段类型,比如字符串,数字,时间
        # @type FieldType: String
        # @param FieldComplexType: 字段组合计算公式后生成的复杂明细类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldComplexType: String
        # @param Mark: 字段描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mark: String
        # @param FormatRule: 字段计算公式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FormatRule: String
        # @param IsFilter: 数据字段是否过滤空值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsFilter: Boolean
        # @param CalcType: 计算字段类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CalcType: String
        # @param CalcFormula: 计算字段的公式内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CalcFormula: String
        # @param CalcDesc: 计算字段的中文公式内容, 前端展示使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CalcDesc: String
        # @param DictId: 关联字典表id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DictId: Integer
        # @param DictName: 关联字典表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DictName: String
        # @param TableNodeId: 非必填, 多表关联新增字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableNodeId: String
        # @param ExcelName: excel
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExcelName: String
        # @param TableName: 非必填,多表关联新增字段,字段所属的表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param JsonPathName: api数据源路径名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JsonPathName: String
        # @param Granularity: 地理字段标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Granularity: String
        # @param GeoJsonId: 地图id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GeoJsonId: Integer
        # @param EmptyValueConfig: 空值展示样式配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EmptyValueConfig: :class:`Tencentcloud::Bi.v20220105.models.EmptyValueConfig`
        # @param DbFieldName: 原列名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbFieldName: String
        # @param IsCopyOperation: 是否是复制字段操作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCopyOperation: Boolean
        # @param IsCopyFromNormal: 是否从普通字段复制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCopyFromNormal: Boolean

        attr_accessor :DbName, :AliasName, :DbType, :FieldType, :FieldComplexType, :Mark, :FormatRule, :IsFilter, :CalcType, :CalcFormula, :CalcDesc, :DictId, :DictName, :TableNodeId, :ExcelName, :TableName, :JsonPathName, :Granularity, :GeoJsonId, :EmptyValueConfig, :DbFieldName, :IsCopyOperation, :IsCopyFromNormal

        def initialize(dbname=nil, aliasname=nil, dbtype=nil, fieldtype=nil, fieldcomplextype=nil, mark=nil, formatrule=nil, isfilter=nil, calctype=nil, calcformula=nil, calcdesc=nil, dictid=nil, dictname=nil, tablenodeid=nil, excelname=nil, tablename=nil, jsonpathname=nil, granularity=nil, geojsonid=nil, emptyvalueconfig=nil, dbfieldname=nil, iscopyoperation=nil, iscopyfromnormal=nil)
          @DbName = dbname
          @AliasName = aliasname
          @DbType = dbtype
          @FieldType = fieldtype
          @FieldComplexType = fieldcomplextype
          @Mark = mark
          @FormatRule = formatrule
          @IsFilter = isfilter
          @CalcType = calctype
          @CalcFormula = calcformula
          @CalcDesc = calcdesc
          @DictId = dictid
          @DictName = dictname
          @TableNodeId = tablenodeid
          @ExcelName = excelname
          @TableName = tablename
          @JsonPathName = jsonpathname
          @Granularity = granularity
          @GeoJsonId = geojsonid
          @EmptyValueConfig = emptyvalueconfig
          @DbFieldName = dbfieldname
          @IsCopyOperation = iscopyoperation
          @IsCopyFromNormal = iscopyfromnormal
        end

        def deserialize(params)
          @DbName = params['DbName']
          @AliasName = params['AliasName']
          @DbType = params['DbType']
          @FieldType = params['FieldType']
          @FieldComplexType = params['FieldComplexType']
          @Mark = params['Mark']
          @FormatRule = params['FormatRule']
          @IsFilter = params['IsFilter']
          @CalcType = params['CalcType']
          @CalcFormula = params['CalcFormula']
          @CalcDesc = params['CalcDesc']
          @DictId = params['DictId']
          @DictName = params['DictName']
          @TableNodeId = params['TableNodeId']
          @ExcelName = params['ExcelName']
          @TableName = params['TableName']
          @JsonPathName = params['JsonPathName']
          @Granularity = params['Granularity']
          @GeoJsonId = params['GeoJsonId']
          unless params['EmptyValueConfig'].nil?
            @EmptyValueConfig = EmptyValueConfig.new
            @EmptyValueConfig.deserialize(params['EmptyValueConfig'])
          end
          @DbFieldName = params['DbFieldName']
          @IsCopyOperation = params['IsCopyOperation']
          @IsCopyFromNormal = params['IsCopyFromNormal']
        end
      end

      # 用户组
      class UserGroupDTO < TencentCloud::Common::AbstractModel
        # @param Id: id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param GroupName: 用户组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param ParentId: 父节点id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentId: Integer
        # @param IsDefault: 是否为默认
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDefault: Integer
        # @param AdminUserId: 管理员用户id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdminUserId: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Location: 定位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: Integer

        attr_accessor :Id, :GroupName, :ParentId, :IsDefault, :AdminUserId, :Description, :Location

        def initialize(id=nil, groupname=nil, parentid=nil, isdefault=nil, adminuserid=nil, description=nil, location=nil)
          @Id = id
          @GroupName = groupname
          @ParentId = parentid
          @IsDefault = isdefault
          @AdminUserId = adminuserid
          @Description = description
          @Location = location
        end

        def deserialize(params)
          @Id = params['Id']
          @GroupName = params['GroupName']
          @ParentId = params['ParentId']
          @IsDefault = params['IsDefault']
          @AdminUserId = params['AdminUserId']
          @Description = params['Description']
          @Location = params['Location']
        end
      end

      # 用户组成员VO出参
      class UserGroupMemberVO < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param UserId: 用户id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param CreatedBy: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedBy: String
        # @param CreatedOn: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedOn: String

        attr_accessor :UserName, :UserId, :CreatedBy, :CreatedOn

        def initialize(username=nil, userid=nil, createdby=nil, createdon=nil)
          @UserName = username
          @UserId = userid
          @CreatedBy = createdby
          @CreatedOn = createdon
        end

        def deserialize(params)
          @UserName = params['UserName']
          @UserId = params['UserId']
          @CreatedBy = params['CreatedBy']
          @CreatedOn = params['CreatedOn']
        end
      end

      # 用户组权限树
      class UserGroupPageTreeVO < TencentCloud::Common::AbstractModel
        # @param List: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param TotalPages: 页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPages: Integer

        attr_accessor :List, :Total, :TotalPages

        def initialize(list=nil, total=nil, totalpages=nil)
          @List = list
          @Total = total
          @TotalPages = totalpages
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              usergrouptreevo_tmp = UserGroupTreeVO.new
              usergrouptreevo_tmp.deserialize(i)
              @List << usergrouptreevo_tmp
            end
          end
          @Total = params['Total']
          @TotalPages = params['TotalPages']
        end
      end

      # 用户组数节点
      class UserGroupTreeNodeDTO < TencentCloud::Common::AbstractModel
        # @param GroupId: 用户组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: Integer
        # @param QueryChildNodes: 是否查询子节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueryChildNodes: Boolean

        attr_accessor :GroupId, :QueryChildNodes

        def initialize(groupid=nil, querychildnodes=nil)
          @GroupId = groupid
          @QueryChildNodes = querychildnodes
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @QueryChildNodes = params['QueryChildNodes']
        end
      end

      # 用户组权限树
      class UserGroupTreeVO < TencentCloud::Common::AbstractModel
        # @param Id: 当前实体ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param GroupName: 用户组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param ParentId: 父id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentId: Integer
        # @param ParentName: 父节点名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentName: String
        # @param IsDefault: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDefault: Integer
        # @param AdminUserId: 管理员账号id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdminUserId: String
        # @param UserList: 用户集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserList: Array
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Location: 排序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: Integer
        # @param Children: 孩子节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Children: Array
        # @param HasChildren: 是否有孩子节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasChildren: Boolean
        # @param ResourceList: 资源集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceList: Array

        attr_accessor :Id, :GroupName, :ParentId, :ParentName, :IsDefault, :AdminUserId, :UserList, :Description, :Location, :Children, :HasChildren, :ResourceList

        def initialize(id=nil, groupname=nil, parentid=nil, parentname=nil, isdefault=nil, adminuserid=nil, userlist=nil, description=nil, location=nil, children=nil, haschildren=nil, resourcelist=nil)
          @Id = id
          @GroupName = groupname
          @ParentId = parentid
          @ParentName = parentname
          @IsDefault = isdefault
          @AdminUserId = adminuserid
          @UserList = userlist
          @Description = description
          @Location = location
          @Children = children
          @HasChildren = haschildren
          @ResourceList = resourcelist
        end

        def deserialize(params)
          @Id = params['Id']
          @GroupName = params['GroupName']
          @ParentId = params['ParentId']
          @ParentName = params['ParentName']
          @IsDefault = params['IsDefault']
          @AdminUserId = params['AdminUserId']
          unless params['UserList'].nil?
            @UserList = []
            params['UserList'].each do |i|
              uservo_tmp = UserVO.new
              uservo_tmp.deserialize(i)
              @UserList << uservo_tmp
            end
          end
          @Description = params['Description']
          @Location = params['Location']
          unless params['Children'].nil?
            @Children = []
            params['Children'].each do |i|
              usergrouptreevo_tmp = UserGroupTreeVO.new
              usergrouptreevo_tmp.deserialize(i)
              @Children << usergrouptreevo_tmp
            end
          end
          @HasChildren = params['HasChildren']
          unless params['ResourceList'].nil?
            @ResourceList = []
            params['ResourceList'].each do |i|
              resourcedto_tmp = ResourceDTO.new
              resourcedto_tmp.deserialize(i)
              @ResourceList << resourcedto_tmp
            end
          end
        end
      end

      # 用户组更新入参
      class UserGroupUpdateDTO < TencentCloud::Common::AbstractModel
        # @param AdminUserId: 组管理员
        # @type AdminUserId: String
        # @param Description: 描述
        # @type Description: String
        # @param GroupName: 用户组名称
        # @type GroupName: String
        # @param Location: 排序位置
        # @type Location: Integer
        # @param ParentId: 父节点id
        # @type ParentId: Integer
        # @param Id: 用户组id
        # @type Id: Integer
        # @param ParentName: 父节点名称
        # @type ParentName: String

        attr_accessor :AdminUserId, :Description, :GroupName, :Location, :ParentId, :Id, :ParentName

        def initialize(adminuserid=nil, description=nil, groupname=nil, location=nil, parentid=nil, id=nil, parentname=nil)
          @AdminUserId = adminuserid
          @Description = description
          @GroupName = groupname
          @Location = location
          @ParentId = parentid
          @Id = id
          @ParentName = parentname
        end

        def deserialize(params)
          @AdminUserId = params['AdminUserId']
          @Description = params['Description']
          @GroupName = params['GroupName']
          @Location = params['Location']
          @ParentId = params['ParentId']
          @Id = params['Id']
          @ParentName = params['ParentName']
        end
      end

      # 用户组返回参数
      class UserGroupUserInfoVO < TencentCloud::Common::AbstractModel
        # @param UserId: 用户id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param UserName: 用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String

        attr_accessor :UserId, :UserName

        def initialize(userid=nil, username=nil)
          @UserId = userid
          @UserName = username
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserName = params['UserName']
        end
      end

      # 用户组返回参数
      class UserGroupVO < TencentCloud::Common::AbstractModel
        # @param Id: 用户组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param GroupName: 用户组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param ParentId: 所属用户组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentId: Integer
        # @param ParentName: 所属用户组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentName: String
        # @param IsDefault: 是否默认用户组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDefault: Integer
        # @param AdminUserId: 用户组管理员
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdminUserId: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Location: 排序位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: Integer
        # @param UserList: 用户信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserList: Array

        attr_accessor :Id, :GroupName, :ParentId, :ParentName, :IsDefault, :AdminUserId, :Description, :Location, :UserList

        def initialize(id=nil, groupname=nil, parentid=nil, parentname=nil, isdefault=nil, adminuserid=nil, description=nil, location=nil, userlist=nil)
          @Id = id
          @GroupName = groupname
          @ParentId = parentid
          @ParentName = parentname
          @IsDefault = isdefault
          @AdminUserId = adminuserid
          @Description = description
          @Location = location
          @UserList = userlist
        end

        def deserialize(params)
          @Id = params['Id']
          @GroupName = params['GroupName']
          @ParentId = params['ParentId']
          @ParentName = params['ParentName']
          @IsDefault = params['IsDefault']
          @AdminUserId = params['AdminUserId']
          @Description = params['Description']
          @Location = params['Location']
          unless params['UserList'].nil?
            @UserList = []
            params['UserList'].each do |i|
              usergroupuserinfovo_tmp = UserGroupUserInfoVO.new
              usergroupuserinfovo_tmp.deserialize(i)
              @UserList << usergroupuserinfovo_tmp
            end
          end
        end
      end

      # 用户ID和用户名
      class UserIdAndUserName < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param CorpId: 企业ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorpId: String
        # @param Email: 电子邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param LastLogin: 最后一次登录时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastLogin: String
        # @param Status: 用户状态。
        # 取值范围：

        # - 1：启用
        # - 0：停用

        # 默认值：1
        # 示例值：1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param FirstModify: 首次登录是否修改密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstModify: Integer
        # @param PhoneNumber: 手机号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneNumber: String
        # @param AreaCode: 手机区号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AreaCode: String
        # @param CreatedUser: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedUser: String
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedUser: 修改人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedUser: String
        # @param UpdatedAt: 更改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param GlobalUserName: 系统全局角色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GlobalUserName: String
        # @param GlobalUserCode: 系统全局角色编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GlobalUserCode: String
        # @param Mobile: 手机号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mobile: String
        # @param AppId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param AppUserId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppUserId: String
        # @param AppUserAliasName: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppUserAliasName: String
        # @param AppUserName: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppUserName: String
        # @param InValidateAppRange: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InValidateAppRange: Boolean
        # @param EmailActivationStatus: -1 免激活  0 未激活  1 已激活 空代表待绑定
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EmailActivationStatus: Integer
        # @param Id: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer

        attr_accessor :UserId, :UserName, :CorpId, :Email, :LastLogin, :Status, :FirstModify, :PhoneNumber, :AreaCode, :CreatedUser, :CreatedAt, :UpdatedUser, :UpdatedAt, :GlobalUserName, :GlobalUserCode, :Mobile, :AppId, :AppUserId, :AppUserAliasName, :AppUserName, :InValidateAppRange, :EmailActivationStatus, :Id

        def initialize(userid=nil, username=nil, corpid=nil, email=nil, lastlogin=nil, status=nil, firstmodify=nil, phonenumber=nil, areacode=nil, createduser=nil, createdat=nil, updateduser=nil, updatedat=nil, globalusername=nil, globalusercode=nil, mobile=nil, appid=nil, appuserid=nil, appuseraliasname=nil, appusername=nil, invalidateapprange=nil, emailactivationstatus=nil, id=nil)
          @UserId = userid
          @UserName = username
          @CorpId = corpid
          @Email = email
          @LastLogin = lastlogin
          @Status = status
          @FirstModify = firstmodify
          @PhoneNumber = phonenumber
          @AreaCode = areacode
          @CreatedUser = createduser
          @CreatedAt = createdat
          @UpdatedUser = updateduser
          @UpdatedAt = updatedat
          @GlobalUserName = globalusername
          @GlobalUserCode = globalusercode
          @Mobile = mobile
          @AppId = appid
          @AppUserId = appuserid
          @AppUserAliasName = appuseraliasname
          @AppUserName = appusername
          @InValidateAppRange = invalidateapprange
          @EmailActivationStatus = emailactivationstatus
          @Id = id
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserName = params['UserName']
          @CorpId = params['CorpId']
          @Email = params['Email']
          @LastLogin = params['LastLogin']
          @Status = params['Status']
          @FirstModify = params['FirstModify']
          @PhoneNumber = params['PhoneNumber']
          @AreaCode = params['AreaCode']
          @CreatedUser = params['CreatedUser']
          @CreatedAt = params['CreatedAt']
          @UpdatedUser = params['UpdatedUser']
          @UpdatedAt = params['UpdatedAt']
          @GlobalUserName = params['GlobalUserName']
          @GlobalUserCode = params['GlobalUserCode']
          @Mobile = params['Mobile']
          @AppId = params['AppId']
          @AppUserId = params['AppUserId']
          @AppUserAliasName = params['AppUserAliasName']
          @AppUserName = params['AppUserName']
          @InValidateAppRange = params['InValidateAppRange']
          @EmailActivationStatus = params['EmailActivationStatus']
          @Id = params['Id']
        end
      end

      # 用户ID和用户名
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param Email: 邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param PhoneNumber: 手机号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneNumber: String
        # @param AreaCode: 手机号区号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AreaCode: String
        # @param AppUserId: 企微账号id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppUserId: String
        # @param AppUserName: 企微账号名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppUserName: String

        attr_accessor :UserId, :UserName, :Email, :PhoneNumber, :AreaCode, :AppUserId, :AppUserName

        def initialize(userid=nil, username=nil, email=nil, phonenumber=nil, areacode=nil, appuserid=nil, appusername=nil)
          @UserId = userid
          @UserName = username
          @Email = email
          @PhoneNumber = phonenumber
          @AreaCode = areacode
          @AppUserId = appuserid
          @AppUserName = appusername
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserName = params['UserName']
          @Email = params['Email']
          @PhoneNumber = params['PhoneNumber']
          @AreaCode = params['AreaCode']
          @AppUserId = params['AppUserId']
          @AppUserName = params['AppUserName']
        end
      end

      # 用户资源入参
      class UserResourceDTO < TencentCloud::Common::AbstractModel
        # @param CorpId: 企业id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorpId: String
        # @param UserId: 用户id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param UserName: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param ResourceList: 资源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceList: Array

        attr_accessor :CorpId, :UserId, :UserName, :ResourceList

        def initialize(corpid=nil, userid=nil, username=nil, resourcelist=nil)
          @CorpId = corpid
          @UserId = userid
          @UserName = username
          @ResourceList = resourcelist
        end

        def deserialize(params)
          @CorpId = params['CorpId']
          @UserId = params['UserId']
          @UserName = params['UserName']
          unless params['ResourceList'].nil?
            @ResourceList = []
            params['ResourceList'].each do |i|
              resourceitem_tmp = ResourceItem.new
              resourceitem_tmp.deserialize(i)
              @ResourceList << resourceitem_tmp
            end
          end
        end
      end

      # 用户角色信息
      class UserRoleListData < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param TotalPages: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPages: Integer
        # @param List: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :Total, :TotalPages, :List

        def initialize(total=nil, totalpages=nil, list=nil)
          @Total = total
          @TotalPages = totalpages
          @List = list
        end

        def deserialize(params)
          @Total = params['Total']
          @TotalPages = params['TotalPages']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              userrolelistdatauserroleinfo_tmp = UserRoleListDataUserRoleInfo.new
              userrolelistdatauserroleinfo_tmp.deserialize(i)
              @List << userrolelistdatauserroleinfo_tmp
            end
          end
        end
      end

      # 用户角色列表角色信息
      class UserRoleListDataRoleInfo < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleName: String
        # @param RoleId: 角色ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleId: Integer
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param ProjectName: 项目名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param ScopeType: 是否为全局角色（0 不是 1 是）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScopeType: Integer
        # @param ModuleCollection: 角色key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModuleCollection: String

        attr_accessor :RoleName, :RoleId, :ProjectId, :ProjectName, :ScopeType, :ModuleCollection

        def initialize(rolename=nil, roleid=nil, projectid=nil, projectname=nil, scopetype=nil, modulecollection=nil)
          @RoleName = rolename
          @RoleId = roleid
          @ProjectId = projectid
          @ProjectName = projectname
          @ScopeType = scopetype
          @ModuleCollection = modulecollection
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @RoleId = params['RoleId']
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ScopeType = params['ScopeType']
          @ModuleCollection = params['ModuleCollection']
        end
      end

      # 用户角色信息
      class UserRoleListDataUserRoleInfo < TencentCloud::Common::AbstractModel
        # @param Id: 业务ID
        # @type Id: Integer
        # @param RoleList: 角色列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleList: Array
        # @param RoleIdList: 角色ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleIdList: Array
        # @param UserId: 用户ID
        # @type UserId: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param CorpId: 企业ID
        # @type CorpId: String
        # @param Email: 邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
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
        # @param LastLogin: 最后一次登录时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastLogin: String
        # @param Status: 账号状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param PhoneNumber: 手机号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneNumber: String
        # @param AreaCode: 手机号区号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AreaCode: String
        # @param RootAccount: 是否为主账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RootAccount: Boolean
        # @param CorpAdmin: 是否为企业管理员
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorpAdmin: Boolean
        # @param AppUserId: 企微用户id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppUserId: String
        # @param AppUserAliasName: 昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppUserAliasName: String
        # @param AppUserName: 应用用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppUserName: String
        # @param InValidateAppRange: 是否在可见范围内
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InValidateAppRange: Boolean
        # @param AppOpenUserId: 用户openid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppOpenUserId: String
        # @param EmailActivationStatus: 邮箱激活状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EmailActivationStatus: Integer
        # @param UserGroupList: 用户组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroupList: Array

        attr_accessor :Id, :RoleList, :RoleIdList, :UserId, :UserName, :CorpId, :Email, :CreatedUser, :CreatedAt, :UpdatedUser, :UpdatedAt, :LastLogin, :Status, :PhoneNumber, :AreaCode, :RootAccount, :CorpAdmin, :AppUserId, :AppUserAliasName, :AppUserName, :InValidateAppRange, :AppOpenUserId, :EmailActivationStatus, :UserGroupList

        def initialize(id=nil, rolelist=nil, roleidlist=nil, userid=nil, username=nil, corpid=nil, email=nil, createduser=nil, createdat=nil, updateduser=nil, updatedat=nil, lastlogin=nil, status=nil, phonenumber=nil, areacode=nil, rootaccount=nil, corpadmin=nil, appuserid=nil, appuseraliasname=nil, appusername=nil, invalidateapprange=nil, appopenuserid=nil, emailactivationstatus=nil, usergrouplist=nil)
          @Id = id
          @RoleList = rolelist
          @RoleIdList = roleidlist
          @UserId = userid
          @UserName = username
          @CorpId = corpid
          @Email = email
          @CreatedUser = createduser
          @CreatedAt = createdat
          @UpdatedUser = updateduser
          @UpdatedAt = updatedat
          @LastLogin = lastlogin
          @Status = status
          @PhoneNumber = phonenumber
          @AreaCode = areacode
          @RootAccount = rootaccount
          @CorpAdmin = corpadmin
          @AppUserId = appuserid
          @AppUserAliasName = appuseraliasname
          @AppUserName = appusername
          @InValidateAppRange = invalidateapprange
          @AppOpenUserId = appopenuserid
          @EmailActivationStatus = emailactivationstatus
          @UserGroupList = usergrouplist
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['RoleList'].nil?
            @RoleList = []
            params['RoleList'].each do |i|
              userrolelistdataroleinfo_tmp = UserRoleListDataRoleInfo.new
              userrolelistdataroleinfo_tmp.deserialize(i)
              @RoleList << userrolelistdataroleinfo_tmp
            end
          end
          @RoleIdList = params['RoleIdList']
          @UserId = params['UserId']
          @UserName = params['UserName']
          @CorpId = params['CorpId']
          @Email = params['Email']
          @CreatedUser = params['CreatedUser']
          @CreatedAt = params['CreatedAt']
          @UpdatedUser = params['UpdatedUser']
          @UpdatedAt = params['UpdatedAt']
          @LastLogin = params['LastLogin']
          @Status = params['Status']
          @PhoneNumber = params['PhoneNumber']
          @AreaCode = params['AreaCode']
          @RootAccount = params['RootAccount']
          @CorpAdmin = params['CorpAdmin']
          @AppUserId = params['AppUserId']
          @AppUserAliasName = params['AppUserAliasName']
          @AppUserName = params['AppUserName']
          @InValidateAppRange = params['InValidateAppRange']
          @AppOpenUserId = params['AppOpenUserId']
          @EmailActivationStatus = params['EmailActivationStatus']
          unless params['UserGroupList'].nil?
            @UserGroupList = []
            params['UserGroupList'].each do |i|
              usergroupdto_tmp = UserGroupDTO.new
              usergroupdto_tmp.deserialize(i)
              @UserGroupList << usergroupdto_tmp
            end
          end
        end
      end

      # 基础用户信息
      class UserVO < TencentCloud::Common::AbstractModel
        # @param UserId: u1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param UserName: zhang
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String

        attr_accessor :UserId, :UserName

        def initialize(userid=nil, username=nil)
          @UserId = userid
          @UserName = username
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserName = params['UserName']
        end
      end

      # 页面组件信息
      class WidgetListVO < TencentCloud::Common::AbstractModel
        # @param CorpId: uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorpId: String
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param PageId: 页面id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageId: String
        # @param WidgetList: 组件数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WidgetList: Array

        attr_accessor :CorpId, :ProjectId, :PageId, :WidgetList

        def initialize(corpid=nil, projectid=nil, pageid=nil, widgetlist=nil)
          @CorpId = corpid
          @ProjectId = projectid
          @PageId = pageid
          @WidgetList = widgetlist
        end

        def deserialize(params)
          @CorpId = params['CorpId']
          @ProjectId = params['ProjectId']
          @PageId = params['PageId']
          unless params['WidgetList'].nil?
            @WidgetList = []
            params['WidgetList'].each do |i|
              widgetvo_tmp = WidgetVO.new
              widgetvo_tmp.deserialize(i)
              @WidgetList << widgetvo_tmp
            end
          end
        end
      end

      # 组件信息
      class WidgetVO < TencentCloud::Common::AbstractModel
        # @param WidgetId: 组件Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WidgetId: String
        # @param WidgetName: 组件name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WidgetName: String

        attr_accessor :WidgetId, :WidgetName

        def initialize(widgetid=nil, widgetname=nil)
          @WidgetId = widgetid
          @WidgetName = widgetname
        end

        def deserialize(params)
          @WidgetId = params['WidgetId']
          @WidgetName = params['WidgetName']
        end
      end

    end
  end
end

