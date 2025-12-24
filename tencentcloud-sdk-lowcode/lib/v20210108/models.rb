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
  module Lowcode
    module V20210108
      # 安装应用，任务详情
      class AppJobInfo < TencentCloud::Common::AbstractModel
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Step: 当前步骤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Step: Integer
        # @param Id: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param TotalStep: 任务总共步骤数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalStep: Integer
        # @param StepDesc: 当前步骤详情
        # @type StepDesc: String
        # @param ErrMsg: 错误信息
        # @type ErrMsg: String

        attr_accessor :Status, :Step, :Id, :TotalStep, :StepDesc, :ErrMsg

        def initialize(status=nil, step=nil, id=nil, totalstep=nil, stepdesc=nil, errmsg=nil)
          @Status = status
          @Step = step
          @Id = id
          @TotalStep = totalstep
          @StepDesc = stepdesc
          @ErrMsg = errmsg
        end

        def deserialize(params)
          @Status = params['Status']
          @Step = params['Step']
          @Id = params['Id']
          @TotalStep = params['TotalStep']
          @StepDesc = params['StepDesc']
          @ErrMsg = params['ErrMsg']
        end
      end

      # CheckDeployApp请求参数结构体
      class CheckDeployAppRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param Id: 应用id
        # @type Id: String
        # @param BuildId: 构建 Id
        # @type BuildId: String

        attr_accessor :EnvId, :Id, :BuildId

        def initialize(envid=nil, id=nil, buildid=nil)
          @EnvId = envid
          @Id = id
          @BuildId = buildid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Id = params['Id']
          @BuildId = params['BuildId']
        end
      end

      # CheckDeployApp返回参数结构体
      class CheckDeployAppResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态：success、building、reviewFail、releaseSuccess、underReview
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # CreateKnowledgeSet请求参数结构体
      class CreateKnowledgeSetRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param Name: 知识库标识
        # @type Name: String
        # @param Title: 知识库名称
        # @type Title: String
        # @param Desc: 描述
        # @type Desc: String
        # @param Meta: 知识库的meta信息
        # @type Meta: String

        attr_accessor :EnvId, :Name, :Title, :Desc, :Meta

        def initialize(envid=nil, name=nil, title=nil, desc=nil, meta=nil)
          @EnvId = envid
          @Name = name
          @Title = title
          @Desc = desc
          @Meta = meta
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Name = params['Name']
          @Title = params['Title']
          @Desc = params['Desc']
          @Meta = params['Meta']
        end
      end

      # CreateKnowledgeSet返回参数结构体
      class CreateKnowledgeSetResponse < TencentCloud::Common::AbstractModel
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

      # 数据源详情列表
      class DataSourceDetail < TencentCloud::Common::AbstractModel
        # @param Id: 数据源 ID
        # @type Id: String
        # @param Title: 数据源名称
        # @type Title: String
        # @param Name: 数据源标识
        # @type Name: String
        # @param Type: 数据源类型
        # @type Type: String
        # @param Description: 数据源描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Schema: 数据源配置
        # @type Schema: String
        # @param CmsProject: cms 项目状态, 0: 重新获取详情信息，1： 不需要重新获取详情信息
        # @type CmsProject: String
        # @param PkgId: 当前为环境 id
        # @type PkgId: String
        # @param SchemaVersion: schema 版本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaVersion: String
        # @param CreatorId: 创建者用户 ID
        # @type CreatorId: String
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param EnvId: 环境 id
        # @type EnvId: String
        # @param DataSourceVersion: 版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSourceVersion: String
        # @param AppUsageList: 所属应用数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppUsageList: Array
        # @param PublishedAt: 发布时间
        # @type PublishedAt: String
        # @param ChildDataSourceIds: 子数据源ids
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChildDataSourceIds: Array
        # @param Fun: 数据源发布信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fun: String
        # @param ScfStatus: 云函数状态 1 Active 2 Creating 3 Updating 4 Deleting  9 Deleted 11 CreatFailed  12 UpdateFailed 13 DeleteFailed 21 UpdateTimeOut
        # @type ScfStatus: Integer
        # @param Methods: 自定义方法
        # @type Methods: String
        # @param ChildDataSourceNames: 子数据源名数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChildDataSourceNames: Array
        # @param IsNewDataSource: 是否旧数据源 1 新 0 旧
        # @type IsNewDataSource: Integer
        # @param ViewId: 数据源视图id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewId: String
        # @param Configuration: 数据源属性配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Configuration: String
        # @param TemplateCode: 外部数据源模板code
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateCode: String
        # @param Source: 外部数据源模板来源 0 空模板 1 腾讯文档 2 腾讯会议 3 企业微信 4 微信电商
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: Integer
        # @param PublishVersion: 发布版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublishVersion: String
        # @param PublishViewId: 发布视图id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublishViewId: String
        # @param SubType: 数据源子类型   "database" 标准模型 "custom-database" 自定义模型 "system" 系统模型 "connector" 连接器 "custom-connector" 自定义连接器 "hidden" 隐藏数据源
        # @type SubType: String
        # @param AuthStatus: 授权状态  0 授权无效 1 授权有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthStatus: Integer
        # @param AuthInfo: 数据源授权信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthInfo: :class:`Tencentcloud::Lowcode.v20210108.models.TicketAuthInfo`
        # @param PublishStatus: 1发布0未发布
        # @type PublishStatus: Integer
        # @param UpdateVersion: 更新版本
        # @type UpdateVersion: Integer
        # @param RelationFieldList: 模型关联关系字段列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelationFieldList: Array
        # @param DbInstanceType: db实例类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbInstanceType: String
        # @param PreviewTableName: 体验环境db表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreviewTableName: String
        # @param PublishedTableName: 正式环境db表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublishedTableName: String
        # @param DbSourceType: DB来源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbSourceType: String
        # @param StagingSwitch: 模型预览状态开关
        # @type StagingSwitch: Boolean

        attr_accessor :Id, :Title, :Name, :Type, :Description, :Schema, :CmsProject, :PkgId, :SchemaVersion, :CreatorId, :CreatedAt, :UpdatedAt, :EnvId, :DataSourceVersion, :AppUsageList, :PublishedAt, :ChildDataSourceIds, :Fun, :ScfStatus, :Methods, :ChildDataSourceNames, :IsNewDataSource, :ViewId, :Configuration, :TemplateCode, :Source, :PublishVersion, :PublishViewId, :SubType, :AuthStatus, :AuthInfo, :PublishStatus, :UpdateVersion, :RelationFieldList, :DbInstanceType, :PreviewTableName, :PublishedTableName, :DbSourceType, :StagingSwitch
        extend Gem::Deprecate
        deprecate :PublishVersion, :none, 2025, 12
        deprecate :PublishVersion=, :none, 2025, 12

        def initialize(id=nil, title=nil, name=nil, type=nil, description=nil, schema=nil, cmsproject=nil, pkgid=nil, schemaversion=nil, creatorid=nil, createdat=nil, updatedat=nil, envid=nil, datasourceversion=nil, appusagelist=nil, publishedat=nil, childdatasourceids=nil, fun=nil, scfstatus=nil, methods=nil, childdatasourcenames=nil, isnewdatasource=nil, viewid=nil, configuration=nil, templatecode=nil, source=nil, publishversion=nil, publishviewid=nil, subtype=nil, authstatus=nil, authinfo=nil, publishstatus=nil, updateversion=nil, relationfieldlist=nil, dbinstancetype=nil, previewtablename=nil, publishedtablename=nil, dbsourcetype=nil, stagingswitch=nil)
          @Id = id
          @Title = title
          @Name = name
          @Type = type
          @Description = description
          @Schema = schema
          @CmsProject = cmsproject
          @PkgId = pkgid
          @SchemaVersion = schemaversion
          @CreatorId = creatorid
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @EnvId = envid
          @DataSourceVersion = datasourceversion
          @AppUsageList = appusagelist
          @PublishedAt = publishedat
          @ChildDataSourceIds = childdatasourceids
          @Fun = fun
          @ScfStatus = scfstatus
          @Methods = methods
          @ChildDataSourceNames = childdatasourcenames
          @IsNewDataSource = isnewdatasource
          @ViewId = viewid
          @Configuration = configuration
          @TemplateCode = templatecode
          @Source = source
          @PublishVersion = publishversion
          @PublishViewId = publishviewid
          @SubType = subtype
          @AuthStatus = authstatus
          @AuthInfo = authinfo
          @PublishStatus = publishstatus
          @UpdateVersion = updateversion
          @RelationFieldList = relationfieldlist
          @DbInstanceType = dbinstancetype
          @PreviewTableName = previewtablename
          @PublishedTableName = publishedtablename
          @DbSourceType = dbsourcetype
          @StagingSwitch = stagingswitch
        end

        def deserialize(params)
          @Id = params['Id']
          @Title = params['Title']
          @Name = params['Name']
          @Type = params['Type']
          @Description = params['Description']
          @Schema = params['Schema']
          @CmsProject = params['CmsProject']
          @PkgId = params['PkgId']
          @SchemaVersion = params['SchemaVersion']
          @CreatorId = params['CreatorId']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @EnvId = params['EnvId']
          @DataSourceVersion = params['DataSourceVersion']
          unless params['AppUsageList'].nil?
            @AppUsageList = []
            params['AppUsageList'].each do |i|
              datasourcelinkapp_tmp = DataSourceLinkApp.new
              datasourcelinkapp_tmp.deserialize(i)
              @AppUsageList << datasourcelinkapp_tmp
            end
          end
          @PublishedAt = params['PublishedAt']
          @ChildDataSourceIds = params['ChildDataSourceIds']
          @Fun = params['Fun']
          @ScfStatus = params['ScfStatus']
          @Methods = params['Methods']
          @ChildDataSourceNames = params['ChildDataSourceNames']
          @IsNewDataSource = params['IsNewDataSource']
          @ViewId = params['ViewId']
          @Configuration = params['Configuration']
          @TemplateCode = params['TemplateCode']
          @Source = params['Source']
          @PublishVersion = params['PublishVersion']
          @PublishViewId = params['PublishViewId']
          @SubType = params['SubType']
          @AuthStatus = params['AuthStatus']
          unless params['AuthInfo'].nil?
            @AuthInfo = TicketAuthInfo.new
            @AuthInfo.deserialize(params['AuthInfo'])
          end
          @PublishStatus = params['PublishStatus']
          @UpdateVersion = params['UpdateVersion']
          unless params['RelationFieldList'].nil?
            @RelationFieldList = []
            params['RelationFieldList'].each do |i|
              relationfield_tmp = RelationField.new
              relationfield_tmp.deserialize(i)
              @RelationFieldList << relationfield_tmp
            end
          end
          @DbInstanceType = params['DbInstanceType']
          @PreviewTableName = params['PreviewTableName']
          @PublishedTableName = params['PublishedTableName']
          @DbSourceType = params['DbSourceType']
          @StagingSwitch = params['StagingSwitch']
        end
      end

      # 数据详情列表
      class DataSourceDetailItems < TencentCloud::Common::AbstractModel
        # @param Rows: 数据详情列表
        # @type Rows: Array
        # @param Count: 数据源列表总个数
        # @type Count: Integer

        attr_accessor :Rows, :Count

        def initialize(rows=nil, count=nil)
          @Rows = rows
          @Count = count
        end

        def deserialize(params)
          unless params['Rows'].nil?
            @Rows = []
            params['Rows'].each do |i|
              datasourcedetail_tmp = DataSourceDetail.new
              datasourcedetail_tmp.deserialize(i)
              @Rows << datasourcedetail_tmp
            end
          end
          @Count = params['Count']
        end
      end

      # 数据源关联App信息
      class DataSourceLinkApp < TencentCloud::Common::AbstractModel
        # @param Id: 应用Id
        # @type Id: String
        # @param Title: 应用名称
        # @type Title: String
        # @param EditStatusUse: 是否编辑状态使用
        # @type EditStatusUse: Integer
        # @param PreviewStatusUse: 是否预览状态使用
        # @type PreviewStatusUse: Integer
        # @param OnlineStatusUse: 是否正式状态使用
        # @type OnlineStatusUse: Integer
        # @param DataSourceId: 数据源ID
        # @type DataSourceId: String

        attr_accessor :Id, :Title, :EditStatusUse, :PreviewStatusUse, :OnlineStatusUse, :DataSourceId

        def initialize(id=nil, title=nil, editstatususe=nil, previewstatususe=nil, onlinestatususe=nil, datasourceid=nil)
          @Id = id
          @Title = title
          @EditStatusUse = editstatususe
          @PreviewStatusUse = previewstatususe
          @OnlineStatusUse = onlinestatususe
          @DataSourceId = datasourceid
        end

        def deserialize(params)
          @Id = params['Id']
          @Title = params['Title']
          @EditStatusUse = params['EditStatusUse']
          @PreviewStatusUse = params['PreviewStatusUse']
          @OnlineStatusUse = params['OnlineStatusUse']
          @DataSourceId = params['DataSourceId']
        end
      end

      # 数据源模糊查询参数
      class DataSourceQueryOption < TencentCloud::Common::AbstractModel
        # @param LikeName: 数据源标识模糊匹配
        # @type LikeName: String
        # @param LikeTitle: 数据源名称模糊匹配
        # @type LikeTitle: String

        attr_accessor :LikeName, :LikeTitle

        def initialize(likename=nil, liketitle=nil)
          @LikeName = likename
          @LikeTitle = liketitle
        end

        def deserialize(params)
          @LikeName = params['LikeName']
          @LikeTitle = params['LikeTitle']
        end
      end

      # DeleteAppBindWxApp请求参数结构体
      class DeleteAppBindWxAppRequest < TencentCloud::Common::AbstractModel
        # @param WeappId: 应用id
        # @type WeappId: String

        attr_accessor :WeappId

        def initialize(weappid=nil)
          @WeappId = weappid
        end

        def deserialize(params)
          @WeappId = params['WeappId']
        end
      end

      # DeleteAppBindWxApp返回参数结构体
      class DeleteAppBindWxAppResponse < TencentCloud::Common::AbstractModel
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

      # DeleteKnowledgeDocumentSet请求参数结构体
      class DeleteKnowledgeDocumentSetRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param CollectionView: 知识库标识
        # @type CollectionView: String
        # @param Query: 删除时制定的条件
        # @type Query: :class:`Tencentcloud::Lowcode.v20210108.models.DocumentQuery`

        attr_accessor :EnvId, :CollectionView, :Query

        def initialize(envid=nil, collectionview=nil, query=nil)
          @EnvId = envid
          @CollectionView = collectionview
          @Query = query
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @CollectionView = params['CollectionView']
          unless params['Query'].nil?
            @Query = DocumentQuery.new
            @Query.deserialize(params['Query'])
          end
        end
      end

      # DeleteKnowledgeDocumentSet返回参数结构体
      class DeleteKnowledgeDocumentSetResponse < TencentCloud::Common::AbstractModel
        # @param Data: 新增文件返回信息
        # @type Data: :class:`Tencentcloud::Lowcode.v20210108.models.DeleteKnowledgeDocumentSetRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteKnowledgeDocumentSetRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除文档出参
      class DeleteKnowledgeDocumentSetRsp < TencentCloud::Common::AbstractModel
        # @param AffectedCount: 删除文档数量。
        # @type AffectedCount: Integer

        attr_accessor :AffectedCount

        def initialize(affectedcount=nil)
          @AffectedCount = affectedcount
        end

        def deserialize(params)
          @AffectedCount = params['AffectedCount']
        end
      end

      # DeleteKnowledgeSet请求参数结构体
      class DeleteKnowledgeSetRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param Name: 知识库标识
        # @type Name: String

        attr_accessor :EnvId, :Name

        def initialize(envid=nil, name=nil)
          @EnvId = envid
          @Name = name
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Name = params['Name']
        end
      end

      # DeleteKnowledgeSet返回参数结构体
      class DeleteKnowledgeSetResponse < TencentCloud::Common::AbstractModel
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

      # DeployApp请求参数结构体
      class DeployAppRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param Id: 应用id
        # @type Id: String
        # @param Mode: 发布体验preview/正式upload
        # @type Mode: String
        # @param BuildType: 构建类型：mp、pc、web、adminPortal
        # @type BuildType: String
        # @param SubAppIds: 子包数组
        # @type SubAppIds: Array

        attr_accessor :EnvId, :Id, :Mode, :BuildType, :SubAppIds

        def initialize(envid=nil, id=nil, mode=nil, buildtype=nil, subappids=nil)
          @EnvId = envid
          @Id = id
          @Mode = mode
          @BuildType = buildtype
          @SubAppIds = subappids
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Id = params['Id']
          @Mode = params['Mode']
          @BuildType = params['BuildType']
          @SubAppIds = params['SubAppIds']
        end
      end

      # DeployApp返回参数结构体
      class DeployAppResponse < TencentCloud::Common::AbstractModel
        # @param BuildId: 构建id
        # @type BuildId: String
        # @param DeployErrCode: 发布错误code
        # @type DeployErrCode: Integer
        # @param DeployErrMsg: 发布错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployErrMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BuildId, :DeployErrCode, :DeployErrMsg, :RequestId

        def initialize(buildid=nil, deployerrcode=nil, deployerrmsg=nil, requestid=nil)
          @BuildId = buildid
          @DeployErrCode = deployerrcode
          @DeployErrMsg = deployerrmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @BuildId = params['BuildId']
          @DeployErrCode = params['DeployErrCode']
          @DeployErrMsg = params['DeployErrMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeApps请求参数结构体
      class DescribeAppsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页每页个数
        # @type Limit: Integer
        # @param Offset: 分页Offset
        # @type Offset: Integer
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param Keyword: 搜索关键词
        # @type Keyword: String
        # @param AppIds: 应用id
        # @type AppIds: Array
        # @param Channel: 来源类型
        # @type Channel: String
        # @param Type: 1-自定义应用；2-模型应用
        # @type Type: Integer
        # @param Favorite: 应用是否收藏
        # @type Favorite: Boolean

        attr_accessor :Limit, :Offset, :EnvId, :Keyword, :AppIds, :Channel, :Type, :Favorite

        def initialize(limit=nil, offset=nil, envid=nil, keyword=nil, appids=nil, channel=nil, type=nil, favorite=nil)
          @Limit = limit
          @Offset = offset
          @EnvId = envid
          @Keyword = keyword
          @AppIds = appids
          @Channel = channel
          @Type = type
          @Favorite = favorite
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnvId = params['EnvId']
          @Keyword = params['Keyword']
          @AppIds = params['AppIds']
          @Channel = params['Channel']
          @Type = params['Type']
          @Favorite = params['Favorite']
        end
      end

      # DescribeApps返回参数结构体
      class DescribeAppsResponse < TencentCloud::Common::AbstractModel
        # @param Weapps: 应用列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weapps: Array
        # @param Count: 应用个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Weapps, :Count, :RequestId

        def initialize(weapps=nil, count=nil, requestid=nil)
          @Weapps = weapps
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Weapps'].nil?
            @Weapps = []
            params['Weapps'].each do |i|
              weapp_tmp = Weapp.new
              weapp_tmp.deserialize(i)
              @Weapps << weapp_tmp
            end
          end
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataSourceList请求参数结构体
      class DescribeDataSourceListRequest < TencentCloud::Common::AbstractModel
        # @param PageSize: 每页条数
        # @type PageSize: Integer
        # @param PageIndex: 页码
        # @type PageIndex: Integer
        # @param EnvId: 环境 id
        # @type EnvId: String
        # @param Appids: 应用id数组
        # @type Appids: Array
        # @param DataSourceIds: 数据源id数组
        # @type DataSourceIds: Array
        # @param DataSourceNames: 数据源名称数组
        # @type DataSourceNames: Array
        # @param DataSourceType: 数据源类型 database-自建数据源；cloud-integration-自定义数据源
        # @type DataSourceType: String
        # @param QueryOption: 数据源模糊查询参数
        # @type QueryOption: :class:`Tencentcloud::Lowcode.v20210108.models.DataSourceQueryOption`
        # @param ViewIds: 数据源视图Id数组
        # @type ViewIds: Array
        # @param AppLinkStatus: 查询未关联应用的数据源，0:未关联，该参数配合 AppIds 参数一块使用
        # @type AppLinkStatus: Integer
        # @param QueryBindToApp: 查询应用绑定数据源: 0: 否,1: 是
        # @type QueryBindToApp: Integer
        # @param QueryConnector: 查询连接器 0 数据模型 1 连接器 2 自定义连接器
        # @type QueryConnector: Integer
        # @param NotQuerySubTypeList: 废弃中
        # @type NotQuerySubTypeList: Array
        # @param ChannelList: 查询channelList
        # @type ChannelList: Array
        # @param QueryDataSourceRelationList: 是否查询数据源关联关系
        # @type QueryDataSourceRelationList: Boolean
        # @param DbInstanceType: db实例类型
        # @type DbInstanceType: String
        # @param DatabaseTableNames: 数据库表名列表
        # @type DatabaseTableNames: Array
        # @param QuerySystemModel: 是否查询系统模型，默认为true，需要显示设置为False才能过滤系统模型
        # @type QuerySystemModel: Boolean

        attr_accessor :PageSize, :PageIndex, :EnvId, :Appids, :DataSourceIds, :DataSourceNames, :DataSourceType, :QueryOption, :ViewIds, :AppLinkStatus, :QueryBindToApp, :QueryConnector, :NotQuerySubTypeList, :ChannelList, :QueryDataSourceRelationList, :DbInstanceType, :DatabaseTableNames, :QuerySystemModel

        def initialize(pagesize=nil, pageindex=nil, envid=nil, appids=nil, datasourceids=nil, datasourcenames=nil, datasourcetype=nil, queryoption=nil, viewids=nil, applinkstatus=nil, querybindtoapp=nil, queryconnector=nil, notquerysubtypelist=nil, channellist=nil, querydatasourcerelationlist=nil, dbinstancetype=nil, databasetablenames=nil, querysystemmodel=nil)
          @PageSize = pagesize
          @PageIndex = pageindex
          @EnvId = envid
          @Appids = appids
          @DataSourceIds = datasourceids
          @DataSourceNames = datasourcenames
          @DataSourceType = datasourcetype
          @QueryOption = queryoption
          @ViewIds = viewids
          @AppLinkStatus = applinkstatus
          @QueryBindToApp = querybindtoapp
          @QueryConnector = queryconnector
          @NotQuerySubTypeList = notquerysubtypelist
          @ChannelList = channellist
          @QueryDataSourceRelationList = querydatasourcerelationlist
          @DbInstanceType = dbinstancetype
          @DatabaseTableNames = databasetablenames
          @QuerySystemModel = querysystemmodel
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageIndex = params['PageIndex']
          @EnvId = params['EnvId']
          @Appids = params['Appids']
          @DataSourceIds = params['DataSourceIds']
          @DataSourceNames = params['DataSourceNames']
          @DataSourceType = params['DataSourceType']
          unless params['QueryOption'].nil?
            @QueryOption = DataSourceQueryOption.new
            @QueryOption.deserialize(params['QueryOption'])
          end
          @ViewIds = params['ViewIds']
          @AppLinkStatus = params['AppLinkStatus']
          @QueryBindToApp = params['QueryBindToApp']
          @QueryConnector = params['QueryConnector']
          @NotQuerySubTypeList = params['NotQuerySubTypeList']
          @ChannelList = params['ChannelList']
          @QueryDataSourceRelationList = params['QueryDataSourceRelationList']
          @DbInstanceType = params['DbInstanceType']
          @DatabaseTableNames = params['DatabaseTableNames']
          @QuerySystemModel = params['QuerySystemModel']
        end
      end

      # DescribeDataSourceList返回参数结构体
      class DescribeDataSourceListResponse < TencentCloud::Common::AbstractModel
        # @param Data: data 数据
        # @type Data: :class:`Tencentcloud::Lowcode.v20210108.models.DataSourceDetailItems`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DataSourceDetailItems.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKnowledgeDocumentSetDetail请求参数结构体
      class DescribeKnowledgeDocumentSetDetailRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param CollectionView: 知识库标识
        # @type CollectionView: String
        # @param DocumentSetName: 文件名
        # @type DocumentSetName: String
        # @param DocumentSetId: 文件id
        # @type DocumentSetId: String

        attr_accessor :EnvId, :CollectionView, :DocumentSetName, :DocumentSetId

        def initialize(envid=nil, collectionview=nil, documentsetname=nil, documentsetid=nil)
          @EnvId = envid
          @CollectionView = collectionview
          @DocumentSetName = documentsetname
          @DocumentSetId = documentsetid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @CollectionView = params['CollectionView']
          @DocumentSetName = params['DocumentSetName']
          @DocumentSetId = params['DocumentSetId']
        end
      end

      # DescribeKnowledgeDocumentSetDetail返回参数结构体
      class DescribeKnowledgeDocumentSetDetailResponse < TencentCloud::Common::AbstractModel
        # @param Data: 新增文件返回信息
        # @type Data: :class:`Tencentcloud::Lowcode.v20210108.models.DescribeKnowledgeDocumentSetDetailRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeKnowledgeDocumentSetDetailRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 上传知识库文档返回结果
      class DescribeKnowledgeDocumentSetDetailRsp < TencentCloud::Common::AbstractModel
        # @param Count: 获取的数量。
        # @type Count: Integer
        # @param DocumentSet: 文档信息
        # @type DocumentSet: :class:`Tencentcloud::Lowcode.v20210108.models.KnowledgeDocumentSet`

        attr_accessor :Count, :DocumentSet

        def initialize(count=nil, documentset=nil)
          @Count = count
          @DocumentSet = documentset
        end

        def deserialize(params)
          @Count = params['Count']
          unless params['DocumentSet'].nil?
            @DocumentSet = KnowledgeDocumentSet.new
            @DocumentSet.deserialize(params['DocumentSet'])
          end
        end
      end

      # DescribeKnowledgeDocumentSetList请求参数结构体
      class DescribeKnowledgeDocumentSetListRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param CollectionView: 知识库标识
        # @type CollectionView: String
        # @param Query: 查询条件
        # @type Query: :class:`Tencentcloud::Lowcode.v20210108.models.PageQuery`

        attr_accessor :EnvId, :CollectionView, :Query

        def initialize(envid=nil, collectionview=nil, query=nil)
          @EnvId = envid
          @CollectionView = collectionview
          @Query = query
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @CollectionView = params['CollectionView']
          unless params['Query'].nil?
            @Query = PageQuery.new
            @Query.deserialize(params['Query'])
          end
        end
      end

      # DescribeKnowledgeDocumentSetList返回参数结构体
      class DescribeKnowledgeDocumentSetListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 新增文件返回信息
        # @type Data: :class:`Tencentcloud::Lowcode.v20210108.models.DescribeKnowledgeDocumentSetListRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeKnowledgeDocumentSetListRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除文档出参
      class DescribeKnowledgeDocumentSetListRsp < TencentCloud::Common::AbstractModel
        # @param DocumentSets: 文件集
        # @type DocumentSets: Array
        # @param Count: 条数
        # @type Count: Integer

        attr_accessor :DocumentSets, :Count

        def initialize(documentsets=nil, count=nil)
          @DocumentSets = documentsets
          @Count = count
        end

        def deserialize(params)
          unless params['DocumentSets'].nil?
            @DocumentSets = []
            params['DocumentSets'].each do |i|
              qureyknowledgedocumentset_tmp = QureyKnowledgeDocumentSet.new
              qureyknowledgedocumentset_tmp.deserialize(i)
              @DocumentSets << qureyknowledgedocumentset_tmp
            end
          end
          @Count = params['Count']
        end
      end

      # DescribeKnowledgeSetList请求参数结构体
      class DescribeKnowledgeSetListRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param Name: 知识库标识，精准查询
        # @type Name: String
        # @param Title: 知识库名称，精准查询
        # @type Title: String
        # @param Offset: 分页起始位
        # @type Offset: Integer
        # @param Limit: 查询条数
        # @type Limit: Integer
        # @param QueryMode: NoPage标识不分页
        # @type QueryMode: String

        attr_accessor :EnvId, :Name, :Title, :Offset, :Limit, :QueryMode

        def initialize(envid=nil, name=nil, title=nil, offset=nil, limit=nil, querymode=nil)
          @EnvId = envid
          @Name = name
          @Title = title
          @Offset = offset
          @Limit = limit
          @QueryMode = querymode
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Name = params['Name']
          @Title = params['Title']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @QueryMode = params['QueryMode']
        end
      end

      # DescribeKnowledgeSetList返回参数结构体
      class DescribeKnowledgeSetListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 知识库列表
        # @type Data: :class:`Tencentcloud::Lowcode.v20210108.models.KnowledgeSetRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = KnowledgeSetRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRelatedUsers请求参数结构体
      class DescribeRelatedUsersRequest < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色id
        # @type RoleId: Integer
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param PageNo: 页码
        # @type PageNo: Integer
        # @param PageSize: 页面含量
        # @type PageSize: Integer
        # @param EnvType: 环境类型
        # @type EnvType: String
        # @param RoleStringId: 新角色id
        # @type RoleStringId: String

        attr_accessor :RoleId, :EnvId, :PageNo, :PageSize, :EnvType, :RoleStringId

        def initialize(roleid=nil, envid=nil, pageno=nil, pagesize=nil, envtype=nil, rolestringid=nil)
          @RoleId = roleid
          @EnvId = envid
          @PageNo = pageno
          @PageSize = pagesize
          @EnvType = envtype
          @RoleStringId = rolestringid
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @EnvId = params['EnvId']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @EnvType = params['EnvType']
          @RoleStringId = params['RoleStringId']
        end
      end

      # DescribeRelatedUsers返回参数结构体
      class DescribeRelatedUsersResponse < TencentCloud::Common::AbstractModel
        # @param Data: 关联的用户列表
        # @type Data: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RequestId

        def initialize(data=nil, total=nil, requestid=nil)
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              wedauser_tmp = WedaUser.new
              wedauser_tmp.deserialize(i)
              @Data << wedauser_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceRoleList请求参数结构体
      class DescribeResourceRoleListRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源id
        # @type ResourceId: String
        # @param ResourceType: 资源类型
        # @type ResourceType: String
        # @param EnvType: 预览：pre；非预览：prod
        # @type EnvType: String
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param SubType: 子资源类型
        # @type SubType: String
        # @param PageNo: 页码
        # @type PageNo: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer

        attr_accessor :ResourceId, :ResourceType, :EnvType, :EnvId, :SubType, :PageNo, :PageSize

        def initialize(resourceid=nil, resourcetype=nil, envtype=nil, envid=nil, subtype=nil, pageno=nil, pagesize=nil)
          @ResourceId = resourceid
          @ResourceType = resourcetype
          @EnvType = envtype
          @EnvId = envid
          @SubType = subtype
          @PageNo = pageno
          @PageSize = pagesize
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceType = params['ResourceType']
          @EnvType = params['EnvType']
          @EnvId = params['EnvId']
          @SubType = params['SubType']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
        end
      end

      # DescribeResourceRoleList返回参数结构体
      class DescribeResourceRoleListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 角色列表
        # @type Data: :class:`Tencentcloud::Lowcode.v20210108.models.RoleListPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RoleListPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除文档时查询入参
      class DocumentQuery < TencentCloud::Common::AbstractModel
        # @param DocumentSetId: 文件ids
        # @type DocumentSetId: Array
        # @param DocumentSetName: 文件名集合
        # @type DocumentSetName: Array
        # @param Filter: 使用创建 CollectionView 指定的 Filter 索引的字段设置查询过滤表达式
        # @type Filter: String

        attr_accessor :DocumentSetId, :DocumentSetName, :Filter

        def initialize(documentsetid=nil, documentsetname=nil, filter=nil)
          @DocumentSetId = documentsetid
          @DocumentSetName = documentsetname
          @Filter = filter
        end

        def deserialize(params)
          @DocumentSetId = params['DocumentSetId']
          @DocumentSetName = params['DocumentSetName']
          @Filter = params['Filter']
        end
      end

      # 文档信息
      class KnowledgeDocumentSet < TencentCloud::Common::AbstractModel
        # @param DocumentSetId: 文档id
        # @type DocumentSetId: String
        # @param DocumentSetName: 文档名
        # @type DocumentSetName: String
        # @param Text: 文件完整内容。
        # @type Text: String
        # @param TextPrefix: 文件内容前 200个字符。
        # @type TextPrefix: String
        # @param DocumentSetInfo: 文件详情
        # @type DocumentSetInfo: :class:`Tencentcloud::Lowcode.v20210108.models.KnowledgeDocumentSetInfo`
        # @param SplitterPreprocess: 文件拆分信息
        # @type SplitterPreprocess: :class:`Tencentcloud::Lowcode.v20210108.models.KnowledgeSplitterPreprocess`
        # @param Name: 未使用
        # @type Name: String
        # @param FileTitle: 文档标题
        # @type FileTitle: String
        # @param FileMetaData: 文档元信息，必须为jsonstring
        # @type FileMetaData: String
        # @param Author: 作者
        # @type Author: String
        # @param DocStatus: 上传文件状态
        # @type DocStatus: String
        # @param ErrMsg: 文件上传失败的具体原因
        # @type ErrMsg: String
        # @param FileId: Cos存储文件ID
        # @type FileId: String

        attr_accessor :DocumentSetId, :DocumentSetName, :Text, :TextPrefix, :DocumentSetInfo, :SplitterPreprocess, :Name, :FileTitle, :FileMetaData, :Author, :DocStatus, :ErrMsg, :FileId

        def initialize(documentsetid=nil, documentsetname=nil, text=nil, textprefix=nil, documentsetinfo=nil, splitterpreprocess=nil, name=nil, filetitle=nil, filemetadata=nil, author=nil, docstatus=nil, errmsg=nil, fileid=nil)
          @DocumentSetId = documentsetid
          @DocumentSetName = documentsetname
          @Text = text
          @TextPrefix = textprefix
          @DocumentSetInfo = documentsetinfo
          @SplitterPreprocess = splitterpreprocess
          @Name = name
          @FileTitle = filetitle
          @FileMetaData = filemetadata
          @Author = author
          @DocStatus = docstatus
          @ErrMsg = errmsg
          @FileId = fileid
        end

        def deserialize(params)
          @DocumentSetId = params['DocumentSetId']
          @DocumentSetName = params['DocumentSetName']
          @Text = params['Text']
          @TextPrefix = params['TextPrefix']
          unless params['DocumentSetInfo'].nil?
            @DocumentSetInfo = KnowledgeDocumentSetInfo.new
            @DocumentSetInfo.deserialize(params['DocumentSetInfo'])
          end
          unless params['SplitterPreprocess'].nil?
            @SplitterPreprocess = KnowledgeSplitterPreprocess.new
            @SplitterPreprocess.deserialize(params['SplitterPreprocess'])
          end
          @Name = params['Name']
          @FileTitle = params['FileTitle']
          @FileMetaData = params['FileMetaData']
          @Author = params['Author']
          @DocStatus = params['DocStatus']
          @ErrMsg = params['ErrMsg']
          @FileId = params['FileId']
        end
      end

      # 文档信息
      class KnowledgeDocumentSetInfo < TencentCloud::Common::AbstractModel
        # @param TextLength: 文件的字符数。
        # @type TextLength: Integer
        # @param ByteLength: 文件的字节数。
        # @type ByteLength: Integer
        # @param IndexedProgress: 文件被预处理、Embedding 向量化的进度。
        # @type IndexedProgress: Integer
        # @param IndexedStatus: 文件预处理、Embedding 向量化的状态。
        # New：等待解析。
        # Loading：文件解析中。
        # Failure：文件解析、写入出错。
        # Ready：文件解析、写入完成。
        # @type IndexedStatus: String
        # @param CreateTime: 文件创建时间。
        # @type CreateTime: String
        # @param LastUpdateTime: 文件最后更新时间。
        # @type LastUpdateTime: String
        # @param Keywords: 文件关键字。
        # @type Keywords: String

        attr_accessor :TextLength, :ByteLength, :IndexedProgress, :IndexedStatus, :CreateTime, :LastUpdateTime, :Keywords

        def initialize(textlength=nil, bytelength=nil, indexedprogress=nil, indexedstatus=nil, createtime=nil, lastupdatetime=nil, keywords=nil)
          @TextLength = textlength
          @ByteLength = bytelength
          @IndexedProgress = indexedprogress
          @IndexedStatus = indexedstatus
          @CreateTime = createtime
          @LastUpdateTime = lastupdatetime
          @Keywords = keywords
        end

        def deserialize(params)
          @TextLength = params['TextLength']
          @ByteLength = params['ByteLength']
          @IndexedProgress = params['IndexedProgress']
          @IndexedStatus = params['IndexedStatus']
          @CreateTime = params['CreateTime']
          @LastUpdateTime = params['LastUpdateTime']
          @Keywords = params['Keywords']
        end
      end

      # 知识库信息
      class KnowledgeSet < TencentCloud::Common::AbstractModel
        # @param Name: 知识库标识
        # @type Name: String
        # @param Title: 知识库名称
        # @type Title: String
        # @param Desc: 描述
        # @type Desc: String
        # @param Active: 状态，
        # NOT_ENABLED未启用
        # ENABLED 已启用
        # @type Active: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Meta: 知识库的meta信息
        # @type Meta: String
        # @param TotalSize: 知识库容量,单位字节
        # @type TotalSize: String

        attr_accessor :Name, :Title, :Desc, :Active, :CreateTime, :UpdateTime, :Meta, :TotalSize

        def initialize(name=nil, title=nil, desc=nil, active=nil, createtime=nil, updatetime=nil, meta=nil, totalsize=nil)
          @Name = name
          @Title = title
          @Desc = desc
          @Active = active
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Meta = meta
          @TotalSize = totalsize
        end

        def deserialize(params)
          @Name = params['Name']
          @Title = params['Title']
          @Desc = params['Desc']
          @Active = params['Active']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Meta = params['Meta']
          @TotalSize = params['TotalSize']
        end
      end

      # 查询知识库列表返回
      class KnowledgeSetRsp < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param KnowledgeSets: 知识库列表
        # @type KnowledgeSets: Array

        attr_accessor :Total, :KnowledgeSets

        def initialize(total=nil, knowledgesets=nil)
          @Total = total
          @KnowledgeSets = knowledgesets
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['KnowledgeSets'].nil?
            @KnowledgeSets = []
            params['KnowledgeSets'].each do |i|
              knowledgeset_tmp = KnowledgeSet.new
              knowledgeset_tmp.deserialize(i)
              @KnowledgeSets << knowledgeset_tmp
            end
          end
        end
      end

      # 文件拆分信息
      class KnowledgeSplitterPreprocess < TencentCloud::Common::AbstractModel
        # @param AppendTitleToChunk: 在对文件拆分时，配置是否将 Title 追加到切分后的段落后面一并 Embedding。取值如下所示：
        # false：不追加。
        # true：将段落 Title 追加到切分后的段落。
        # @type AppendTitleToChunk: Boolean
        # @param AppendKeywordsToChunk: 在对文件拆分时，配置是否将关键字 keywords 追加到切分后的段落一并 Embedding。取值如下所示：
        # false：不追加。
        # true：将全文的 keywords 追加到切分后的段落。
        # @type AppendKeywordsToChunk: Boolean

        attr_accessor :AppendTitleToChunk, :AppendKeywordsToChunk

        def initialize(appendtitletochunk=nil, appendkeywordstochunk=nil)
          @AppendTitleToChunk = appendtitletochunk
          @AppendKeywordsToChunk = appendkeywordstochunk
        end

        def deserialize(params)
          @AppendTitleToChunk = params['AppendTitleToChunk']
          @AppendKeywordsToChunk = params['AppendKeywordsToChunk']
        end
      end

      # 组织架构返回参数
      class OrgResp < TencentCloud::Common::AbstractModel
        # @param OrgId: 部门id
        # @type OrgId: String
        # @param OrgName: 部门名称
        # @type OrgName: String
        # @param OrgIdentity: 部门标识
        # @type OrgIdentity: String
        # @param Level: 部门层级
        # @type Level: String
        # @param PrimaryColumn: 主键字段
        # @type PrimaryColumn: String

        attr_accessor :OrgId, :OrgName, :OrgIdentity, :Level, :PrimaryColumn

        def initialize(orgid=nil, orgname=nil, orgidentity=nil, level=nil, primarycolumn=nil)
          @OrgId = orgid
          @OrgName = orgname
          @OrgIdentity = orgidentity
          @Level = level
          @PrimaryColumn = primarycolumn
        end

        def deserialize(params)
          @OrgId = params['OrgId']
          @OrgName = params['OrgName']
          @OrgIdentity = params['OrgIdentity']
          @Level = params['Level']
          @PrimaryColumn = params['PrimaryColumn']
        end
      end

      # 查询条件
      class PageQuery < TencentCloud::Common::AbstractModel
        # @param DocumentSetId: 文件id数组，表示要查询的文件的所有 ID，支持批量查询，数组元素范围[1,20]。
        # @type DocumentSetId: Array
        # @param DocumentSetName: 表示要查询的文档名称，支持批量查询，数组元素范围[1,20]。
        # @type DocumentSetName: Array
        # @param Limit: 取值范围：[1,16384]
        # @type Limit: Integer
        # @param Offset: 设置分页偏移量，用于控制分页查询返回结果的起始位置，方便用户对数据进行分页展示和浏览。
        # 取值：为 limit 整数倍。
        # 计算公式：offset=limit*(page-1)。
        # 例如：当 limit = 10，page = 2 时，分页偏移量 offset = 10 * (2 - 1) = 10，表示从查询结果的第 11 条记录开始返回数据。
        # @type Offset: Integer
        # @param OutputFields: 设置后，其他字段为空值
        # @type OutputFields: Array
        # @param Filter: 使用创建 CollectionView 指定的 Filter 索引的字段设置查询过滤表达式。
        # @type Filter: String

        attr_accessor :DocumentSetId, :DocumentSetName, :Limit, :Offset, :OutputFields, :Filter

        def initialize(documentsetid=nil, documentsetname=nil, limit=nil, offset=nil, outputfields=nil, filter=nil)
          @DocumentSetId = documentsetid
          @DocumentSetName = documentsetname
          @Limit = limit
          @Offset = offset
          @OutputFields = outputfields
          @Filter = filter
        end

        def deserialize(params)
          @DocumentSetId = params['DocumentSetId']
          @DocumentSetName = params['DocumentSetName']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OutputFields = params['OutputFields']
          @Filter = params['Filter']
        end
      end

      # PutWxAppIdToWeApp请求参数结构体
      class PutWxAppIdToWeAppRequest < TencentCloud::Common::AbstractModel
        # @param WeAppId: 应用ID
        # @type WeAppId: String
        # @param WxAppId: 微信AppId
        # @type WxAppId: String

        attr_accessor :WeAppId, :WxAppId

        def initialize(weappid=nil, wxappid=nil)
          @WeAppId = weappid
          @WxAppId = wxappid
        end

        def deserialize(params)
          @WeAppId = params['WeAppId']
          @WxAppId = params['WxAppId']
        end
      end

      # PutWxAppIdToWeApp返回参数结构体
      class PutWxAppIdToWeAppResponse < TencentCloud::Common::AbstractModel
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

      # 搜索数据的集合
      class QureyKnowledgeDocumentSet < TencentCloud::Common::AbstractModel
        # @param DocumentSetId: 文件id
        # @type DocumentSetId: String
        # @param DocumentSetName: 文件名
        # @type DocumentSetName: String
        # @param TextPrefix: 文件内容前 200个字符。
        # @type TextPrefix: String
        # @param SplitterPreprocess: 文件拆分信息
        # @type SplitterPreprocess: :class:`Tencentcloud::Lowcode.v20210108.models.KnowledgeSplitterPreprocess`
        # @param DocumentSetInfo: 文件详情
        # @type DocumentSetInfo: :class:`Tencentcloud::Lowcode.v20210108.models.QureyKnowledgeDocumentSetInfo`
        # @param FileTitle: 文件标题
        # @type FileTitle: String
        # @param FileMetaData: 文件元信息，必须为jsonstring
        # @type FileMetaData: String
        # @param Name: name
        # @type Name: String
        # @param Author: 作者
        # @type Author: String
        # @param DocStatus: 文档上传状态
        # @type DocStatus: String
        # @param ErrMsg: 上传文件失败时具体的错误消息
        # @type ErrMsg: String
        # @param FileId: Cos存储文件ID
        # @type FileId: String

        attr_accessor :DocumentSetId, :DocumentSetName, :TextPrefix, :SplitterPreprocess, :DocumentSetInfo, :FileTitle, :FileMetaData, :Name, :Author, :DocStatus, :ErrMsg, :FileId

        def initialize(documentsetid=nil, documentsetname=nil, textprefix=nil, splitterpreprocess=nil, documentsetinfo=nil, filetitle=nil, filemetadata=nil, name=nil, author=nil, docstatus=nil, errmsg=nil, fileid=nil)
          @DocumentSetId = documentsetid
          @DocumentSetName = documentsetname
          @TextPrefix = textprefix
          @SplitterPreprocess = splitterpreprocess
          @DocumentSetInfo = documentsetinfo
          @FileTitle = filetitle
          @FileMetaData = filemetadata
          @Name = name
          @Author = author
          @DocStatus = docstatus
          @ErrMsg = errmsg
          @FileId = fileid
        end

        def deserialize(params)
          @DocumentSetId = params['DocumentSetId']
          @DocumentSetName = params['DocumentSetName']
          @TextPrefix = params['TextPrefix']
          unless params['SplitterPreprocess'].nil?
            @SplitterPreprocess = KnowledgeSplitterPreprocess.new
            @SplitterPreprocess.deserialize(params['SplitterPreprocess'])
          end
          unless params['DocumentSetInfo'].nil?
            @DocumentSetInfo = QureyKnowledgeDocumentSetInfo.new
            @DocumentSetInfo.deserialize(params['DocumentSetInfo'])
          end
          @FileTitle = params['FileTitle']
          @FileMetaData = params['FileMetaData']
          @Name = params['Name']
          @Author = params['Author']
          @DocStatus = params['DocStatus']
          @ErrMsg = params['ErrMsg']
          @FileId = params['FileId']
        end
      end

      # 查询文件集合信息详情
      class QureyKnowledgeDocumentSetInfo < TencentCloud::Common::AbstractModel
        # @param TextLength: 文件的字符数。
        # @type TextLength: Integer
        # @param ByteLength: 文件的字节数。
        # @type ByteLength: Integer
        # @param IndexedProgress: 文件被预处理、Embedding 向量化的进度。
        # @type IndexedProgress: Integer
        # @param IndexedStatus: 文件预处理、Embedding 向量化的状态。
        # New：等待解析。
        # Loading：文件解析中。
        # Failure：文件解析、写入出错。
        # Ready：文件解析、写入完成。
        # @type IndexedStatus: String
        # @param IndexedErrorMsg: 错误信息
        # @type IndexedErrorMsg: String
        # @param CreateTime: 文件创建时间。
        # @type CreateTime: String
        # @param LastUpdateTime: 文件最后更新时间。
        # @type LastUpdateTime: String
        # @param Keywords: 文件关键字。
        # @type Keywords: String

        attr_accessor :TextLength, :ByteLength, :IndexedProgress, :IndexedStatus, :IndexedErrorMsg, :CreateTime, :LastUpdateTime, :Keywords

        def initialize(textlength=nil, bytelength=nil, indexedprogress=nil, indexedstatus=nil, indexederrormsg=nil, createtime=nil, lastupdatetime=nil, keywords=nil)
          @TextLength = textlength
          @ByteLength = bytelength
          @IndexedProgress = indexedprogress
          @IndexedStatus = indexedstatus
          @IndexedErrorMsg = indexederrormsg
          @CreateTime = createtime
          @LastUpdateTime = lastupdatetime
          @Keywords = keywords
        end

        def deserialize(params)
          @TextLength = params['TextLength']
          @ByteLength = params['ByteLength']
          @IndexedProgress = params['IndexedProgress']
          @IndexedStatus = params['IndexedStatus']
          @IndexedErrorMsg = params['IndexedErrorMsg']
          @CreateTime = params['CreateTime']
          @LastUpdateTime = params['LastUpdateTime']
          @Keywords = params['Keywords']
        end
      end

      # 数据源关联的的信息
      class RelationField < TencentCloud::Common::AbstractModel
        # @param Field: 关联关系字段
        # @type Field: String
        # @param Format: 关联关系格式
        # @type Format: String
        # @param RelateDataSourceName: 关联数据源名称
        # @type RelateDataSourceName: String

        attr_accessor :Field, :Format, :RelateDataSourceName

        def initialize(field=nil, format=nil, relatedatasourcename=nil)
          @Field = field
          @Format = format
          @RelateDataSourceName = relatedatasourcename
        end

        def deserialize(params)
          @Field = params['Field']
          @Format = params['Format']
          @RelateDataSourceName = params['RelateDataSourceName']
        end
      end

      # 权限组
      class RoleGroup < TencentCloud::Common::AbstractModel
        # @param Id: 权限组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 权限组名称
        # @type Name: String
        # @param GroupIdentity: 权限组标识
        # @type GroupIdentity: String
        # @param GroupDesc: 权限组描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupDesc: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param RoleList: 角色数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleList: Array

        attr_accessor :Id, :Name, :GroupIdentity, :GroupDesc, :CreateTime, :UpdateTime, :RoleList

        def initialize(id=nil, name=nil, groupidentity=nil, groupdesc=nil, createtime=nil, updatetime=nil, rolelist=nil)
          @Id = id
          @Name = name
          @GroupIdentity = groupidentity
          @GroupDesc = groupdesc
          @CreateTime = createtime
          @UpdateTime = updatetime
          @RoleList = rolelist
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @GroupIdentity = params['GroupIdentity']
          @GroupDesc = params['GroupDesc']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['RoleList'].nil?
            @RoleList = []
            params['RoleList'].each do |i|
              wedarole_tmp = WedaRole.new
              wedarole_tmp.deserialize(i)
              @RoleList << wedarole_tmp
            end
          end
        end
      end

      # 角色分页
      class RoleListPage < TencentCloud::Common::AbstractModel
        # @param RoleList: 角色列表
        # @type RoleList: Array
        # @param Total: 总数
        # @type Total: Integer

        attr_accessor :RoleList, :Total

        def initialize(rolelist=nil, total=nil)
          @RoleList = rolelist
          @Total = total
        end

        def deserialize(params)
          unless params['RoleList'].nil?
            @RoleList = []
            params['RoleList'].each do |i|
              wedarole_tmp = WedaRole.new
              wedarole_tmp.deserialize(i)
              @RoleList << wedarole_tmp
            end
          end
          @Total = params['Total']
        end
      end

      # 知识库搜索文档信息
      class SearchDocInfo < TencentCloud::Common::AbstractModel
        # @param CollectionViewName: 知识库名称
        # @type CollectionViewName: String
        # @param DocSetId: 文档Id
        # @type DocSetId: String
        # @param DocSetName: 文档Name
        # @type DocSetName: String
        # @param DocType: 文档类型
        # @type DocType: String
        # @param FileTitle: 文档标题
        # @type FileTitle: String
        # @param FileMetaData: 文档元信息
        # @type FileMetaData: String
        # @param DocDesc: 文档描述
        # @type DocDesc: String
        # @param FileSize: 文档大小
        # @type FileSize: Integer
        # @param FileId: Cos存储文件ID
        # @type FileId: String

        attr_accessor :CollectionViewName, :DocSetId, :DocSetName, :DocType, :FileTitle, :FileMetaData, :DocDesc, :FileSize, :FileId

        def initialize(collectionviewname=nil, docsetid=nil, docsetname=nil, doctype=nil, filetitle=nil, filemetadata=nil, docdesc=nil, filesize=nil, fileid=nil)
          @CollectionViewName = collectionviewname
          @DocSetId = docsetid
          @DocSetName = docsetname
          @DocType = doctype
          @FileTitle = filetitle
          @FileMetaData = filemetadata
          @DocDesc = docdesc
          @FileSize = filesize
          @FileId = fileid
        end

        def deserialize(params)
          @CollectionViewName = params['CollectionViewName']
          @DocSetId = params['DocSetId']
          @DocSetName = params['DocSetName']
          @DocType = params['DocType']
          @FileTitle = params['FileTitle']
          @FileMetaData = params['FileMetaData']
          @DocDesc = params['DocDesc']
          @FileSize = params['FileSize']
          @FileId = params['FileId']
        end
      end

      # SearchDocList请求参数结构体
      class SearchDocListRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param CollectionView: 知识库名称
        # @type CollectionView: String
        # @param SearchKey: 搜索模式
        # @type SearchKey: String
        # @param SearchValue: 搜索值
        # @type SearchValue: String
        # @param PageNo: 页码
        # @type PageNo: Integer
        # @param PageSize: 页大小
        # @type PageSize: Integer

        attr_accessor :EnvId, :CollectionView, :SearchKey, :SearchValue, :PageNo, :PageSize

        def initialize(envid=nil, collectionview=nil, searchkey=nil, searchvalue=nil, pageno=nil, pagesize=nil)
          @EnvId = envid
          @CollectionView = collectionview
          @SearchKey = searchkey
          @SearchValue = searchvalue
          @PageNo = pageno
          @PageSize = pagesize
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @CollectionView = params['CollectionView']
          @SearchKey = params['SearchKey']
          @SearchValue = params['SearchValue']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
        end
      end

      # SearchDocList返回参数结构体
      class SearchDocListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 知识库文档搜索数据
        # @type Data: :class:`Tencentcloud::Lowcode.v20210108.models.SearchDocRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SearchDocRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 知识库文档搜索结果
      class SearchDocRsp < TencentCloud::Common::AbstractModel
        # @param DocInfos: 文档基本信息
        # @type DocInfos: Array
        # @param Total: 文档总数
        # @type Total: Integer

        attr_accessor :DocInfos, :Total

        def initialize(docinfos=nil, total=nil)
          @DocInfos = docinfos
          @Total = total
        end

        def deserialize(params)
          unless params['DocInfos'].nil?
            @DocInfos = []
            params['DocInfos'].each do |i|
              searchdocinfo_tmp = SearchDocInfo.new
              searchdocinfo_tmp.deserialize(i)
              @DocInfos << searchdocinfo_tmp
            end
          end
          @Total = params['Total']
        end
      end

      # 数据源授权信息
      class TicketAuthInfo < TencentCloud::Common::AbstractModel
        # @param AuthUser: 授权用户
        # @type AuthUser: String

        attr_accessor :AuthUser

        def initialize(authuser=nil)
          @AuthUser = authuser
        end

        def deserialize(params)
          @AuthUser = params['AuthUser']
        end
      end

      # UpdateKnowledgeSet请求参数结构体
      class UpdateKnowledgeSetRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param Name: 知识库标识
        # @type Name: String
        # @param Title: 知识库名称
        # @type Title: String
        # @param Desc: 描述
        # @type Desc: String
        # @param Active: 状态;ENABLED启用；NOT_ENABLED不启用
        # @type Active: String
        # @param Meta: 知识库的meta信息
        # @type Meta: String

        attr_accessor :EnvId, :Name, :Title, :Desc, :Active, :Meta

        def initialize(envid=nil, name=nil, title=nil, desc=nil, active=nil, meta=nil)
          @EnvId = envid
          @Name = name
          @Title = title
          @Desc = desc
          @Active = active
          @Meta = meta
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Name = params['Name']
          @Title = params['Title']
          @Desc = params['Desc']
          @Active = params['Active']
          @Meta = params['Meta']
        end
      end

      # UpdateKnowledgeSet返回参数结构体
      class UpdateKnowledgeSetResponse < TencentCloud::Common::AbstractModel
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

      # UploadKnowledgeDocumentSet请求参数结构体
      class UploadKnowledgeDocumentSetRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param CollectionView: 知识库标识
        # @type CollectionView: String
        # @param FileName: 状态;ENABLED启用；NOT_ENABLED不启用
        # @type FileName: String
        # @param CosUrl: 腾讯云文件存储位置的可读地址
        # @type CosUrl: String
        # @param DocumentType: 文件类型，例如: .docx, .md
        # @type DocumentType: String
        # @param DocumentDesc: 对文件的描述
        # @type DocumentDesc: String
        # @param FileTitle: 文件标题
        # @type FileTitle: String
        # @param FileMetaData: 文件元信息，为jsonstring
        # @type FileMetaData: String
        # @param DocumentSetId: 文件id
        # @type DocumentSetId: String
        # @param Delimiter: 使用 regex 分割文档
        # @type Delimiter: String
        # @param FileId: Cos存储文件ID
        # @type FileId: String

        attr_accessor :EnvId, :CollectionView, :FileName, :CosUrl, :DocumentType, :DocumentDesc, :FileTitle, :FileMetaData, :DocumentSetId, :Delimiter, :FileId

        def initialize(envid=nil, collectionview=nil, filename=nil, cosurl=nil, documenttype=nil, documentdesc=nil, filetitle=nil, filemetadata=nil, documentsetid=nil, delimiter=nil, fileid=nil)
          @EnvId = envid
          @CollectionView = collectionview
          @FileName = filename
          @CosUrl = cosurl
          @DocumentType = documenttype
          @DocumentDesc = documentdesc
          @FileTitle = filetitle
          @FileMetaData = filemetadata
          @DocumentSetId = documentsetid
          @Delimiter = delimiter
          @FileId = fileid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @CollectionView = params['CollectionView']
          @FileName = params['FileName']
          @CosUrl = params['CosUrl']
          @DocumentType = params['DocumentType']
          @DocumentDesc = params['DocumentDesc']
          @FileTitle = params['FileTitle']
          @FileMetaData = params['FileMetaData']
          @DocumentSetId = params['DocumentSetId']
          @Delimiter = params['Delimiter']
          @FileId = params['FileId']
        end
      end

      # UploadKnowledgeDocumentSet返回参数结构体
      class UploadKnowledgeDocumentSetResponse < TencentCloud::Common::AbstractModel
        # @param Data: 新增文件返回信息
        # @type Data: :class:`Tencentcloud::Lowcode.v20210108.models.UploadKnowledgeDocumentSetRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UploadKnowledgeDocumentSetRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 上传知识库文档返回结果
      class UploadKnowledgeDocumentSetRsp < TencentCloud::Common::AbstractModel
        # @param DocumentSetId: 给文件分配的 ID 信息。
        # @type DocumentSetId: String
        # @param DocumentSetName: 文件名
        # @type DocumentSetName: String
        # @param FileTitle: 文件标题
        # @type FileTitle: String
        # @param FileMetaData: 文件元信息，为jsonstring
        # @type FileMetaData: String
        # @param FileId: Cos存储文件ID
        # @type FileId: String

        attr_accessor :DocumentSetId, :DocumentSetName, :FileTitle, :FileMetaData, :FileId
        extend Gem::Deprecate
        deprecate :DocumentSetId, :none, 2025, 12
        deprecate :DocumentSetId=, :none, 2025, 12

        def initialize(documentsetid=nil, documentsetname=nil, filetitle=nil, filemetadata=nil, fileid=nil)
          @DocumentSetId = documentsetid
          @DocumentSetName = documentsetname
          @FileTitle = filetitle
          @FileMetaData = filemetadata
          @FileId = fileid
        end

        def deserialize(params)
          @DocumentSetId = params['DocumentSetId']
          @DocumentSetName = params['DocumentSetName']
          @FileTitle = params['FileTitle']
          @FileMetaData = params['FileMetaData']
          @FileId = params['FileId']
        end
      end

      # 低码应用详情
      class Weapp < TencentCloud::Common::AbstractModel
        # @param Id: 应用id
        # @type Id: String
        # @param Owner: 应用所属者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Owner: String
        # @param Name: 标识
        # @type Name: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Title: 应用名称
        # @type Title: String
        # @param Env: 环境信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Env: String
        # @param Status: 状态.
        # 0:已经安装
        # 3:安装中
        # 4:安装失败
        # @type Status: Integer
        # @param EnvId: 环境信息
        # @type EnvId: String
        # @param EnvRegion: 环境地域
        # @type EnvRegion: String
        # @param PkgId: 资源包
        # @type PkgId: String
        # @param CmsProject: 应用信息是否安装到cms
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CmsProject: Integer
        # @param Channel: 渠道
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Channel: String
        # @param TemplateId: 模板id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateId: String
        # @param ExpireTime: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Source: 来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param IsFree: 是否计费应用
        # @type IsFree: Boolean
        # @param ContentType: 应用内容类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContentType: String
        # @param AppType: 应用类型，是否为B端应用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppType: Integer
        # @param AttachAppId: 关联B端一样id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttachAppId: String
        # @param EType: 应用类型，是否为企业应用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EType: Integer
        # @param EData: 企业应用数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EData: String
        # @param LastMpCiId: 最新一次小程序构建id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastMpCiId: String
        # @param LastMpCiStatus: 最新一次小程序状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastMpCiStatus: String
        # @param LastWebCiId: 最新一次web构建id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastWebCiId: String
        # @param LastWebCiStatus: 最新一次web状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastWebCiStatus: String
        # @param LastDeployTime: 最新部署时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastDeployTime: String
        # @param FlowId: 安装任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: Integer
        # @param JobInfo: 任务详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobInfo: :class:`Tencentcloud::Lowcode.v20210108.models.AppJobInfo`
        # @param Platform: 应用端
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Platform: String
        # @param LastWebCiMode: 最新一次web构建模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastWebCiMode: Integer
        # @param LastMpCiMode: 最新一次小程序构建模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastMpCiMode: Integer
        # @param SceneType: 应用场景化入口类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SceneType: String
        # @param ClientId: client_Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientId: String
        # @param IconUrl: 图标地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IconUrl: String
        # @param FaviconUrl: 页面图标地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaviconUrl: String
        # @param BackgroundColor: 图标背景色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackgroundColor: String
        # @param Favorite: 应用是否收藏
        # @type Favorite: Boolean
        # @param PublishPlatform: 发布平台：web、mp、pc、adminPortal、xPagePC、cloudAdmin
        # @type PublishPlatform: String

        attr_accessor :Id, :Owner, :Name, :Description, :Title, :Env, :Status, :EnvId, :EnvRegion, :PkgId, :CmsProject, :Channel, :TemplateId, :ExpireTime, :CreateTime, :UpdateTime, :Source, :IsFree, :ContentType, :AppType, :AttachAppId, :EType, :EData, :LastMpCiId, :LastMpCiStatus, :LastWebCiId, :LastWebCiStatus, :LastDeployTime, :FlowId, :JobInfo, :Platform, :LastWebCiMode, :LastMpCiMode, :SceneType, :ClientId, :IconUrl, :FaviconUrl, :BackgroundColor, :Favorite, :PublishPlatform

        def initialize(id=nil, owner=nil, name=nil, description=nil, title=nil, env=nil, status=nil, envid=nil, envregion=nil, pkgid=nil, cmsproject=nil, channel=nil, templateid=nil, expiretime=nil, createtime=nil, updatetime=nil, source=nil, isfree=nil, contenttype=nil, apptype=nil, attachappid=nil, etype=nil, edata=nil, lastmpciid=nil, lastmpcistatus=nil, lastwebciid=nil, lastwebcistatus=nil, lastdeploytime=nil, flowid=nil, jobinfo=nil, platform=nil, lastwebcimode=nil, lastmpcimode=nil, scenetype=nil, clientid=nil, iconurl=nil, faviconurl=nil, backgroundcolor=nil, favorite=nil, publishplatform=nil)
          @Id = id
          @Owner = owner
          @Name = name
          @Description = description
          @Title = title
          @Env = env
          @Status = status
          @EnvId = envid
          @EnvRegion = envregion
          @PkgId = pkgid
          @CmsProject = cmsproject
          @Channel = channel
          @TemplateId = templateid
          @ExpireTime = expiretime
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Source = source
          @IsFree = isfree
          @ContentType = contenttype
          @AppType = apptype
          @AttachAppId = attachappid
          @EType = etype
          @EData = edata
          @LastMpCiId = lastmpciid
          @LastMpCiStatus = lastmpcistatus
          @LastWebCiId = lastwebciid
          @LastWebCiStatus = lastwebcistatus
          @LastDeployTime = lastdeploytime
          @FlowId = flowid
          @JobInfo = jobinfo
          @Platform = platform
          @LastWebCiMode = lastwebcimode
          @LastMpCiMode = lastmpcimode
          @SceneType = scenetype
          @ClientId = clientid
          @IconUrl = iconurl
          @FaviconUrl = faviconurl
          @BackgroundColor = backgroundcolor
          @Favorite = favorite
          @PublishPlatform = publishplatform
        end

        def deserialize(params)
          @Id = params['Id']
          @Owner = params['Owner']
          @Name = params['Name']
          @Description = params['Description']
          @Title = params['Title']
          @Env = params['Env']
          @Status = params['Status']
          @EnvId = params['EnvId']
          @EnvRegion = params['EnvRegion']
          @PkgId = params['PkgId']
          @CmsProject = params['CmsProject']
          @Channel = params['Channel']
          @TemplateId = params['TemplateId']
          @ExpireTime = params['ExpireTime']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Source = params['Source']
          @IsFree = params['IsFree']
          @ContentType = params['ContentType']
          @AppType = params['AppType']
          @AttachAppId = params['AttachAppId']
          @EType = params['EType']
          @EData = params['EData']
          @LastMpCiId = params['LastMpCiId']
          @LastMpCiStatus = params['LastMpCiStatus']
          @LastWebCiId = params['LastWebCiId']
          @LastWebCiStatus = params['LastWebCiStatus']
          @LastDeployTime = params['LastDeployTime']
          @FlowId = params['FlowId']
          unless params['JobInfo'].nil?
            @JobInfo = AppJobInfo.new
            @JobInfo.deserialize(params['JobInfo'])
          end
          @Platform = params['Platform']
          @LastWebCiMode = params['LastWebCiMode']
          @LastMpCiMode = params['LastMpCiMode']
          @SceneType = params['SceneType']
          @ClientId = params['ClientId']
          @IconUrl = params['IconUrl']
          @FaviconUrl = params['FaviconUrl']
          @BackgroundColor = params['BackgroundColor']
          @Favorite = params['Favorite']
          @PublishPlatform = params['PublishPlatform']
        end
      end

      # weda角色
      class WedaRole < TencentCloud::Common::AbstractModel
        # @param Name: 角色名称
        # @type Name: String
        # @param RoleIdentity: 角色标识
        # @type RoleIdentity: String
        # @param Id: 角色id
        # @type Id: Integer
        # @param ParentRoleId: 父角色id
        # @type ParentRoleId: Integer
        # @param ChildRoleId: 子角色id
        # @type ChildRoleId: Integer
        # @param EnvIdentity: 环境标识
        # @type EnvIdentity: String
        # @param IsReleased: 是否已发布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsReleased: Boolean

        attr_accessor :Name, :RoleIdentity, :Id, :ParentRoleId, :ChildRoleId, :EnvIdentity, :IsReleased

        def initialize(name=nil, roleidentity=nil, id=nil, parentroleid=nil, childroleid=nil, envidentity=nil, isreleased=nil)
          @Name = name
          @RoleIdentity = roleidentity
          @Id = id
          @ParentRoleId = parentroleid
          @ChildRoleId = childroleid
          @EnvIdentity = envidentity
          @IsReleased = isreleased
        end

        def deserialize(params)
          @Name = params['Name']
          @RoleIdentity = params['RoleIdentity']
          @Id = params['Id']
          @ParentRoleId = params['ParentRoleId']
          @ChildRoleId = params['ChildRoleId']
          @EnvIdentity = params['EnvIdentity']
          @IsReleased = params['IsReleased']
        end
      end

      # weda用户
      class WedaUser < TencentCloud::Common::AbstractModel
        # @param Uin: 腾讯云主账号uin
        # @type Uin: Integer
        # @param Name: 名字
        # @type Name: String
        # @param Env: 环境
        # @type Env: Integer
        # @param Type: 类型
        # @type Type: Integer
        # @param NickName: 昵称
        # @type NickName: String
        # @param Email: 邮箱
        # @type Email: String
        # @param Phone: 手机号
        # @type Phone: String
        # @param ProjectId: 项目id
        # @type ProjectId: Integer
        # @param Uuid: 用户uuid
        # @type Uuid: String
        # @param Source: 渠道，1:自建；2:企业微信导入
        # @type Source: Integer
        # @param OpenId: 微信openid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenId: String
        # @param RelatedRoles: 关联角色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelatedRoles: Array
        # @param WechatUserId: 企业微信userid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WechatUserId: String
        # @param InternalUserType: 内部用户类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternalUserType: Integer
        # @param UserId: 微搭用户id
        # @type UserId: Integer
        # @param OrgName: 所属部门名称
        # @type OrgName: String
        # @param UserSchema: 用户schema
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserSchema: String
        # @param UserExtend: 用户扩展信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserExtend: String
        # @param IsLicensed: 用户是否授权License
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsLicensed: Boolean
        # @param RelatedRoleGroups: 权限组数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelatedRoleGroups: Array
        # @param Orgs: 兼岗部门
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Orgs: Array
        # @param MainOrg: 主岗部门
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MainOrg: Array
        # @param ParentUserId: 直属上级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentUserId: Integer
        # @param PrimaryColumn: 主列字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrimaryColumn: String
        # @param AvatarUrl: 用户头像
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvatarUrl: String
        # @param LastLoginTime: 最后登录时间
        # @type LastLoginTime: String

        attr_accessor :Uin, :Name, :Env, :Type, :NickName, :Email, :Phone, :ProjectId, :Uuid, :Source, :OpenId, :RelatedRoles, :WechatUserId, :InternalUserType, :UserId, :OrgName, :UserSchema, :UserExtend, :IsLicensed, :RelatedRoleGroups, :Orgs, :MainOrg, :ParentUserId, :PrimaryColumn, :AvatarUrl, :LastLoginTime

        def initialize(uin=nil, name=nil, env=nil, type=nil, nickname=nil, email=nil, phone=nil, projectid=nil, uuid=nil, source=nil, openid=nil, relatedroles=nil, wechatuserid=nil, internalusertype=nil, userid=nil, orgname=nil, userschema=nil, userextend=nil, islicensed=nil, relatedrolegroups=nil, orgs=nil, mainorg=nil, parentuserid=nil, primarycolumn=nil, avatarurl=nil, lastlogintime=nil)
          @Uin = uin
          @Name = name
          @Env = env
          @Type = type
          @NickName = nickname
          @Email = email
          @Phone = phone
          @ProjectId = projectid
          @Uuid = uuid
          @Source = source
          @OpenId = openid
          @RelatedRoles = relatedroles
          @WechatUserId = wechatuserid
          @InternalUserType = internalusertype
          @UserId = userid
          @OrgName = orgname
          @UserSchema = userschema
          @UserExtend = userextend
          @IsLicensed = islicensed
          @RelatedRoleGroups = relatedrolegroups
          @Orgs = orgs
          @MainOrg = mainorg
          @ParentUserId = parentuserid
          @PrimaryColumn = primarycolumn
          @AvatarUrl = avatarurl
          @LastLoginTime = lastlogintime
        end

        def deserialize(params)
          @Uin = params['Uin']
          @Name = params['Name']
          @Env = params['Env']
          @Type = params['Type']
          @NickName = params['NickName']
          @Email = params['Email']
          @Phone = params['Phone']
          @ProjectId = params['ProjectId']
          @Uuid = params['Uuid']
          @Source = params['Source']
          @OpenId = params['OpenId']
          unless params['RelatedRoles'].nil?
            @RelatedRoles = []
            params['RelatedRoles'].each do |i|
              wedarole_tmp = WedaRole.new
              wedarole_tmp.deserialize(i)
              @RelatedRoles << wedarole_tmp
            end
          end
          @WechatUserId = params['WechatUserId']
          @InternalUserType = params['InternalUserType']
          @UserId = params['UserId']
          @OrgName = params['OrgName']
          @UserSchema = params['UserSchema']
          @UserExtend = params['UserExtend']
          @IsLicensed = params['IsLicensed']
          unless params['RelatedRoleGroups'].nil?
            @RelatedRoleGroups = []
            params['RelatedRoleGroups'].each do |i|
              rolegroup_tmp = RoleGroup.new
              rolegroup_tmp.deserialize(i)
              @RelatedRoleGroups << rolegroup_tmp
            end
          end
          unless params['Orgs'].nil?
            @Orgs = []
            params['Orgs'].each do |i|
              orgresp_tmp = OrgResp.new
              orgresp_tmp.deserialize(i)
              @Orgs << orgresp_tmp
            end
          end
          unless params['MainOrg'].nil?
            @MainOrg = []
            params['MainOrg'].each do |i|
              orgresp_tmp = OrgResp.new
              orgresp_tmp.deserialize(i)
              @MainOrg << orgresp_tmp
            end
          end
          @ParentUserId = params['ParentUserId']
          @PrimaryColumn = params['PrimaryColumn']
          @AvatarUrl = params['AvatarUrl']
          @LastLoginTime = params['LastLoginTime']
        end
      end

    end
  end
end

