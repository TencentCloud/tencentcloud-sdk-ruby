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
  module Lowcode
    module V20210108
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
        # @type Description: String
        # @param Schema: 数据源配置
        # @type Schema: String
        # @param CmsProject: cms 项目状态, 0: 重新获取详情信息，1： 不需要重新获取详情信息
        # @type CmsProject: String
        # @param PkgId: 当前为环境 id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgId: String
        # @param SchemaVersion: schema 版本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaVersion: String
        # @param CreatorId: 创建者用户 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorId: String
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param EnvId: 环境 id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvId: String
        # @param DataSourceVersion: 版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSourceVersion: String
        # @param AppUsageList: 所属应用数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppUsageList: Array
        # @param PublishedAt: 发布时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublishedAt: String
        # @param ChildDataSourceIds: 子数据源ids
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChildDataSourceIds: Array
        # @param Fun: 数据源发布信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fun: String
        # @param ScfStatus: 云函数状态 1 Active 2 Creating 3 Updating 4 Deleting  9 Deleted 11 CreatFailed  12 UpdateFailed 13 DeleteFailed 21 UpdateTimeOut
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScfStatus: Integer
        # @param Methods: 自定义方法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Methods: String
        # @param ChildDataSourceNames: 子数据源名数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChildDataSourceNames: Array
        # @param IsNewDataSource: 是否旧数据源 1 新 0 旧
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubType: String
        # @param AuthStatus: 授权状态  0 授权无效 1 授权有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthStatus: Integer
        # @param AuthInfo: 数据源授权信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthInfo: :class:`Tencentcloud::Lowcode.v20210108.models.TicketAuthInfo`

        attr_accessor :Id, :Title, :Name, :Type, :Description, :Schema, :CmsProject, :PkgId, :SchemaVersion, :CreatorId, :CreatedAt, :UpdatedAt, :EnvId, :DataSourceVersion, :AppUsageList, :PublishedAt, :ChildDataSourceIds, :Fun, :ScfStatus, :Methods, :ChildDataSourceNames, :IsNewDataSource, :ViewId, :Configuration, :TemplateCode, :Source, :PublishVersion, :PublishViewId, :SubType, :AuthStatus, :AuthInfo

        def initialize(id=nil, title=nil, name=nil, type=nil, description=nil, schema=nil, cmsproject=nil, pkgid=nil, schemaversion=nil, creatorid=nil, createdat=nil, updatedat=nil, envid=nil, datasourceversion=nil, appusagelist=nil, publishedat=nil, childdatasourceids=nil, fun=nil, scfstatus=nil, methods=nil, childdatasourcenames=nil, isnewdatasource=nil, viewid=nil, configuration=nil, templatecode=nil, source=nil, publishversion=nil, publishviewid=nil, subtype=nil, authstatus=nil, authinfo=nil)
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Title: String
        # @param EditStatusUse: 是否编辑状态使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EditStatusUse: Integer
        # @param PreviewStatusUse: 是否预览状态使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreviewStatusUse: Integer
        # @param OnlineStatusUse: 是否正式状态使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OnlineStatusUse: Integer

        attr_accessor :Id, :Title, :EditStatusUse, :PreviewStatusUse, :OnlineStatusUse

        def initialize(id=nil, title=nil, editstatususe=nil, previewstatususe=nil, onlinestatususe=nil)
          @Id = id
          @Title = title
          @EditStatusUse = editstatususe
          @PreviewStatusUse = previewstatususe
          @OnlineStatusUse = onlinestatususe
        end

        def deserialize(params)
          @Id = params['Id']
          @Title = params['Title']
          @EditStatusUse = params['EditStatusUse']
          @PreviewStatusUse = params['PreviewStatusUse']
          @OnlineStatusUse = params['OnlineStatusUse']
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
        # @param NotQuerySubTypeList: 查询数据源黑名单机制，比如不想要系统数据源["system"]
        # @type NotQuerySubTypeList: Array

        attr_accessor :PageSize, :PageIndex, :EnvId, :Appids, :DataSourceIds, :DataSourceNames, :DataSourceType, :QueryOption, :ViewIds, :AppLinkStatus, :QueryBindToApp, :QueryConnector, :NotQuerySubTypeList

        def initialize(pagesize=nil, pageindex=nil, envid=nil, appids=nil, datasourceids=nil, datasourcenames=nil, datasourcetype=nil, queryoption=nil, viewids=nil, applinkstatus=nil, querybindtoapp=nil, queryconnector=nil, notquerysubtypelist=nil)
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
        end
      end

      # DescribeDataSourceList返回参数结构体
      class DescribeDataSourceListResponse < TencentCloud::Common::AbstractModel
        # @param Data: data 数据
        # @type Data: :class:`Tencentcloud::Lowcode.v20210108.models.DataSourceDetailItems`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

    end
  end
end

