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
  module Dsgc
    module V20190723
      # AKSK泄漏信息
      class AKSKLeak < TencentCloud::Common::AbstractModel
        # @param AK: AK编码
        # @type AK: String
        # @param SK: SK编码
        # @type SK: String
        # @param URL: URL编码
        # @type URL: String

        attr_accessor :AK, :SK, :URL

        def initialize(ak=nil, sk=nil, url=nil)
          @AK = ak
          @SK = sk
          @URL = url
        end

        def deserialize(params)
          @AK = params['AK']
          @SK = params['SK']
          @URL = params['URL']
        end
      end

      # 账户风险
      class AccountRisk < TencentCloud::Common::AbstractModel
        # @param Id: id（可不参考）
        # @type Id: String
        # @param RiskAccount: 风险账户
        # @type RiskAccount: String

        attr_accessor :Id, :RiskAccount

        def initialize(id=nil, riskaccount=nil)
          @Id = id
          @RiskAccount = riskaccount
        end

        def deserialize(params)
          @Id = params['Id']
          @RiskAccount = params['RiskAccount']
        end
      end

      # DSPA评估控制项
      class AssessmentControlItem < TencentCloud::Common::AbstractModel
        # @param ItemId: 评估项Id
        # @type ItemId: String
        # @param ItemName: 评估项名称
        # @type ItemName: String
        # @param Description: 评估项描述
        # @type Description: String
        # @param Source: 评估项来源，内置/用户自定，取值（system，user）
        # @type Source: String
        # @param ItemType: 评估项类型，问卷/自动化，取值（questionnaire，auto）
        # @type ItemType: String
        # @param ItemSubType: 评估项子类型，单选/多选/时间/文本/AKSK等，取值（singlechoice，multichoice，date，text，AKSK……等）
        # @type ItemSubType: String
        # @param CreatedTime: 评估项创建时间
        # @type CreatedTime: String
        # @param Status: 评估项启用状态，启用/未启用，取值draft / launched
        # @type Status: String
        # @param TemplateCount: 评估项关联的模板数量
        # @type TemplateCount: Integer

        attr_accessor :ItemId, :ItemName, :Description, :Source, :ItemType, :ItemSubType, :CreatedTime, :Status, :TemplateCount

        def initialize(itemid=nil, itemname=nil, description=nil, source=nil, itemtype=nil, itemsubtype=nil, createdtime=nil, status=nil, templatecount=nil)
          @ItemId = itemid
          @ItemName = itemname
          @Description = description
          @Source = source
          @ItemType = itemtype
          @ItemSubType = itemsubtype
          @CreatedTime = createdtime
          @Status = status
          @TemplateCount = templatecount
        end

        def deserialize(params)
          @ItemId = params['ItemId']
          @ItemName = params['ItemName']
          @Description = params['Description']
          @Source = params['Source']
          @ItemType = params['ItemType']
          @ItemSubType = params['ItemSubType']
          @CreatedTime = params['CreatedTime']
          @Status = params['Status']
          @TemplateCount = params['TemplateCount']
        end
      end

      # DSPA评估风险项
      class AssessmentRisk < TencentCloud::Common::AbstractModel
        # @param RiskId: 风险项Id
        # @type RiskId: String
        # @param RiskDescription: 风险项描述
        # @type RiskDescription: String
        # @param TemplateId: 评估模板Id
        # @type TemplateId: String
        # @param TemplateName: 评估模板名称
        # @type TemplateName: String
        # @param ControlItemId: 评估项Id
        # @type ControlItemId: String
        # @param ControlItemName: 评估项名称
        # @type ControlItemName: String
        # @param ControlItemDesc: 评估描述
        # @type ControlItemDesc: String
        # @param RiskLevel: 风险等级，取值（high，medium，low）
        # @type RiskLevel: String
        # @param RiskMitigation: 风险缓解措施
        # @type RiskMitigation: String
        # @param Status: 风险处理状态。(waiting待处理, processing处理中, finished已处理)
        # @type Status: String
        # @param CreatedTime: 风险生成时间
        # @type CreatedTime: String
        # @param RiskOwner: 风险负责人
        # @type RiskOwner: String
        # @param RelatedAsset: 风险涉及资产
        # @type RelatedAsset: String
        # @param DataSourceId: 风险涉及资产id
        # @type DataSourceId: String
        # @param DataSourceName: 风险涉及资产名称
        # @type DataSourceName: String
        # @param AssetName: 资产名称
        # @type AssetName: String
        # @param SecurityProduct: 建议使用安全产品
        # @type SecurityProduct: Array
        # @param RiskType: 风险类型
        # @type RiskType: String
        # @param RiskSide: 风险面
        # @type RiskSide: String
        # @param DataSourceType: 数据源类型
        # @type DataSourceType: String

        attr_accessor :RiskId, :RiskDescription, :TemplateId, :TemplateName, :ControlItemId, :ControlItemName, :ControlItemDesc, :RiskLevel, :RiskMitigation, :Status, :CreatedTime, :RiskOwner, :RelatedAsset, :DataSourceId, :DataSourceName, :AssetName, :SecurityProduct, :RiskType, :RiskSide, :DataSourceType

        def initialize(riskid=nil, riskdescription=nil, templateid=nil, templatename=nil, controlitemid=nil, controlitemname=nil, controlitemdesc=nil, risklevel=nil, riskmitigation=nil, status=nil, createdtime=nil, riskowner=nil, relatedasset=nil, datasourceid=nil, datasourcename=nil, assetname=nil, securityproduct=nil, risktype=nil, riskside=nil, datasourcetype=nil)
          @RiskId = riskid
          @RiskDescription = riskdescription
          @TemplateId = templateid
          @TemplateName = templatename
          @ControlItemId = controlitemid
          @ControlItemName = controlitemname
          @ControlItemDesc = controlitemdesc
          @RiskLevel = risklevel
          @RiskMitigation = riskmitigation
          @Status = status
          @CreatedTime = createdtime
          @RiskOwner = riskowner
          @RelatedAsset = relatedasset
          @DataSourceId = datasourceid
          @DataSourceName = datasourcename
          @AssetName = assetname
          @SecurityProduct = securityproduct
          @RiskType = risktype
          @RiskSide = riskside
          @DataSourceType = datasourcetype
        end

        def deserialize(params)
          @RiskId = params['RiskId']
          @RiskDescription = params['RiskDescription']
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @ControlItemId = params['ControlItemId']
          @ControlItemName = params['ControlItemName']
          @ControlItemDesc = params['ControlItemDesc']
          @RiskLevel = params['RiskLevel']
          @RiskMitigation = params['RiskMitigation']
          @Status = params['Status']
          @CreatedTime = params['CreatedTime']
          @RiskOwner = params['RiskOwner']
          @RelatedAsset = params['RelatedAsset']
          @DataSourceId = params['DataSourceId']
          @DataSourceName = params['DataSourceName']
          @AssetName = params['AssetName']
          unless params['SecurityProduct'].nil?
            @SecurityProduct = []
            params['SecurityProduct'].each do |i|
              securityproduct_tmp = SecurityProduct.new
              securityproduct_tmp.deserialize(i)
              @SecurityProduct << securityproduct_tmp
            end
          end
          @RiskType = params['RiskType']
          @RiskSide = params['RiskSide']
          @DataSourceType = params['DataSourceType']
        end
      end

      # 风险项列表详细数据
      class AssessmentRiskItem < TencentCloud::Common::AbstractModel
        # @param Id: 脆弱项id
        # @type Id: Integer
        # @param RiskName: 名称
        # @type RiskName: String
        # @param Level: 脆弱性级别
        # @type Level: String
        # @param Description: 说明
        # @type Description: String
        # @param RiskType: 风险类型
        # @type RiskType: String
        # @param ReferTemplateCount: 关联模板个数
        # @type ReferTemplateCount: Integer
        # @param SupportDataSource: 支持的数据源
        # @type SupportDataSource: Array
        # @param RiskSide: 风险面
        # @type RiskSide: String
        # @param ReferTemplateList: 关联模板列表
        # @type ReferTemplateList: Array

        attr_accessor :Id, :RiskName, :Level, :Description, :RiskType, :ReferTemplateCount, :SupportDataSource, :RiskSide, :ReferTemplateList

        def initialize(id=nil, riskname=nil, level=nil, description=nil, risktype=nil, refertemplatecount=nil, supportdatasource=nil, riskside=nil, refertemplatelist=nil)
          @Id = id
          @RiskName = riskname
          @Level = level
          @Description = description
          @RiskType = risktype
          @ReferTemplateCount = refertemplatecount
          @SupportDataSource = supportdatasource
          @RiskSide = riskside
          @ReferTemplateList = refertemplatelist
        end

        def deserialize(params)
          @Id = params['Id']
          @RiskName = params['RiskName']
          @Level = params['Level']
          @Description = params['Description']
          @RiskType = params['RiskType']
          @ReferTemplateCount = params['ReferTemplateCount']
          @SupportDataSource = params['SupportDataSource']
          @RiskSide = params['RiskSide']
          unless params['ReferTemplateList'].nil?
            @ReferTemplateList = []
            params['ReferTemplateList'].each do |i|
              templateinfo_tmp = TemplateInfo.new
              templateinfo_tmp.deserialize(i)
              @ReferTemplateList << templateinfo_tmp
            end
          end
        end
      end

      # DSPA评估任务
      class AssessmentTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 评估任务Id
        # @type TaskId: String
        # @param TaskUid: 评估任务的自增ID
        # @type TaskUid: Integer
        # @param TaskName: 评估任务名称
        # @type TaskName: String
        # @param BusinessName: 业务名称
        # @type BusinessName: String
        # @param BusinessDept: 业务所属部门
        # @type BusinessDept: String
        # @param BusinessOwner: 业务负责人
        # @type BusinessOwner: String
        # @param TemplateId: 评估模板Id
        # @type TemplateId: String
        # @param TemplateName: 评估模板名称
        # @type TemplateName: String
        # @param ComplianceGroupId: 分类分级模板Id
        # @type ComplianceGroupId: Integer
        # @param ComplianceGroupName: 分类分级模板名称
        # @type ComplianceGroupName: String
        # @param ControlItemCount: 评估项数量
        # @type ControlItemCount: Integer
        # @param RiskCount: 风险项数量（仅状态为finished的风险项不计入总数，其余状态均算入该数量）
        # @type RiskCount: Integer
        # @param FinishedTime: 评估任务完成时间
        # @type FinishedTime: String
        # @param CreatedTime: 评估任务发起时间
        # @type CreatedTime: String
        # @param Status: 评估状态。(waiting待评估，processing评估中, , finished已评估, failed评估失败)
        # @type Status: String
        # @param RiskCountInfoList: 待处理各等级风险项信息
        # @type RiskCountInfoList: Array
        # @param DiscoveryCondition: 数据源信息
        # @type DiscoveryCondition: :class:`Tencentcloud::Dsgc.v20190723.models.DiscoveryCondition`
        # @param ErrorInfo: 评估任务失败信息
        # @type ErrorInfo: String
        # @param TemplateUid: 模板主键id
        # @type TemplateUid: Integer
        # @param ProgressPercent: 进度百分比
        # @type ProgressPercent: Integer

        attr_accessor :TaskId, :TaskUid, :TaskName, :BusinessName, :BusinessDept, :BusinessOwner, :TemplateId, :TemplateName, :ComplianceGroupId, :ComplianceGroupName, :ControlItemCount, :RiskCount, :FinishedTime, :CreatedTime, :Status, :RiskCountInfoList, :DiscoveryCondition, :ErrorInfo, :TemplateUid, :ProgressPercent

        def initialize(taskid=nil, taskuid=nil, taskname=nil, businessname=nil, businessdept=nil, businessowner=nil, templateid=nil, templatename=nil, compliancegroupid=nil, compliancegroupname=nil, controlitemcount=nil, riskcount=nil, finishedtime=nil, createdtime=nil, status=nil, riskcountinfolist=nil, discoverycondition=nil, errorinfo=nil, templateuid=nil, progresspercent=nil)
          @TaskId = taskid
          @TaskUid = taskuid
          @TaskName = taskname
          @BusinessName = businessname
          @BusinessDept = businessdept
          @BusinessOwner = businessowner
          @TemplateId = templateid
          @TemplateName = templatename
          @ComplianceGroupId = compliancegroupid
          @ComplianceGroupName = compliancegroupname
          @ControlItemCount = controlitemcount
          @RiskCount = riskcount
          @FinishedTime = finishedtime
          @CreatedTime = createdtime
          @Status = status
          @RiskCountInfoList = riskcountinfolist
          @DiscoveryCondition = discoverycondition
          @ErrorInfo = errorinfo
          @TemplateUid = templateuid
          @ProgressPercent = progresspercent
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskUid = params['TaskUid']
          @TaskName = params['TaskName']
          @BusinessName = params['BusinessName']
          @BusinessDept = params['BusinessDept']
          @BusinessOwner = params['BusinessOwner']
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @ComplianceGroupId = params['ComplianceGroupId']
          @ComplianceGroupName = params['ComplianceGroupName']
          @ControlItemCount = params['ControlItemCount']
          @RiskCount = params['RiskCount']
          @FinishedTime = params['FinishedTime']
          @CreatedTime = params['CreatedTime']
          @Status = params['Status']
          unless params['RiskCountInfoList'].nil?
            @RiskCountInfoList = []
            params['RiskCountInfoList'].each do |i|
              riskcountinfo_tmp = RiskCountInfo.new
              riskcountinfo_tmp.deserialize(i)
              @RiskCountInfoList << riskcountinfo_tmp
            end
          end
          unless params['DiscoveryCondition'].nil?
            @DiscoveryCondition = DiscoveryCondition.new
            @DiscoveryCondition.deserialize(params['DiscoveryCondition'])
          end
          @ErrorInfo = params['ErrorInfo']
          @TemplateUid = params['TemplateUid']
          @ProgressPercent = params['ProgressPercent']
        end
      end

      # DSPA评估模板
      class AssessmentTemplate < TencentCloud::Common::AbstractModel
        # @param Id: id
        # @type Id: Integer
        # @param TemplateId: 评估模板Id
        # @type TemplateId: String
        # @param TemplateName: 评估模板名称
        # @type TemplateName: String
        # @param Description: 描述信息
        # @type Description: String
        # @param Source: 模板来源，内置/用户自定，取值（system，user）
        # @type Source: String
        # @param UseType: 模板类型，自动化/半自动化/问卷，取值（auto，semi-auto，law）等
        # @type UseType: String
        # @param CreatedTime: 评估模板创建时间
        # @type CreatedTime: String
        # @param ControlItemCount: 模板关联的评估项数量
        # @type ControlItemCount: Integer
        # @param AppliedItemCount: 模板已启用的评估项数量
        # @type AppliedItemCount: Integer
        # @param Status: 模板启用状态，草稿/已启用，取值draft / launched
        # @type Status: String
        # @param SupportDataSource: 支持的数据源类型
        # @type SupportDataSource: Array
        # @param IsASMTemplate: 是否包含攻击面风险
        # @type IsASMTemplate: Boolean
        # @param IdentifyComplianceId: 合规组id
        # @type IdentifyComplianceId: Integer

        attr_accessor :Id, :TemplateId, :TemplateName, :Description, :Source, :UseType, :CreatedTime, :ControlItemCount, :AppliedItemCount, :Status, :SupportDataSource, :IsASMTemplate, :IdentifyComplianceId

        def initialize(id=nil, templateid=nil, templatename=nil, description=nil, source=nil, usetype=nil, createdtime=nil, controlitemcount=nil, applieditemcount=nil, status=nil, supportdatasource=nil, isasmtemplate=nil, identifycomplianceid=nil)
          @Id = id
          @TemplateId = templateid
          @TemplateName = templatename
          @Description = description
          @Source = source
          @UseType = usetype
          @CreatedTime = createdtime
          @ControlItemCount = controlitemcount
          @AppliedItemCount = applieditemcount
          @Status = status
          @SupportDataSource = supportdatasource
          @IsASMTemplate = isasmtemplate
          @IdentifyComplianceId = identifycomplianceid
        end

        def deserialize(params)
          @Id = params['Id']
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @Description = params['Description']
          @Source = params['Source']
          @UseType = params['UseType']
          @CreatedTime = params['CreatedTime']
          @ControlItemCount = params['ControlItemCount']
          @AppliedItemCount = params['AppliedItemCount']
          @Status = params['Status']
          @SupportDataSource = params['SupportDataSource']
          @IsASMTemplate = params['IsASMTemplate']
          @IdentifyComplianceId = params['IdentifyComplianceId']
        end
      end

      # 数据资产报告-cos的资产详情
      class AssetCosDetail < TencentCloud::Common::AbstractModel
        # @param Bucket: 桶的名
        # @type Bucket: String
        # @param DataType: 数据源类型
        # @type DataType: String
        # @param FileNums: 文件的个数
        # @type FileNums: Integer
        # @param SensitiveFileNums: 敏感的文件个数
        # @type SensitiveFileNums: Integer
        # @param DistributionData: 敏感分布
        # @type DistributionData: Array
        # @param MatchedNum: cos文件的敏感数据个数
        # @type MatchedNum: Integer

        attr_accessor :Bucket, :DataType, :FileNums, :SensitiveFileNums, :DistributionData, :MatchedNum

        def initialize(bucket=nil, datatype=nil, filenums=nil, sensitivefilenums=nil, distributiondata=nil, matchednum=nil)
          @Bucket = bucket
          @DataType = datatype
          @FileNums = filenums
          @SensitiveFileNums = sensitivefilenums
          @DistributionData = distributiondata
          @MatchedNum = matchednum
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @DataType = params['DataType']
          @FileNums = params['FileNums']
          @SensitiveFileNums = params['SensitiveFileNums']
          unless params['DistributionData'].nil?
            @DistributionData = []
            params['DistributionData'].each do |i|
              note_tmp = Note.new
              note_tmp.deserialize(i)
              @DistributionData << note_tmp
            end
          end
          @MatchedNum = params['MatchedNum']
        end
      end

      # RDB敏感资产详情列表
      class AssetDBDetail < TencentCloud::Common::AbstractModel
        # @param DataSourceId: 数据源id
        # @type DataSourceId: String
        # @param DdName: 数据库名称
        # @type DdName: String
        # @param DataType: 数据库类型
        # @type DataType: String
        # @param TableNums: 表的数量
        # @type TableNums: Integer
        # @param SensitiveTableNums: 敏感表数量
        # @type SensitiveTableNums: Integer
        # @param FieldNums: 字段的数量
        # @type FieldNums: Integer
        # @param SensitiveFieldNums: 敏感字段的数量
        # @type SensitiveFieldNums: Integer
        # @param DistributionData: 敏感数据分布
        # @type DistributionData: Array

        attr_accessor :DataSourceId, :DdName, :DataType, :TableNums, :SensitiveTableNums, :FieldNums, :SensitiveFieldNums, :DistributionData

        def initialize(datasourceid=nil, ddname=nil, datatype=nil, tablenums=nil, sensitivetablenums=nil, fieldnums=nil, sensitivefieldnums=nil, distributiondata=nil)
          @DataSourceId = datasourceid
          @DdName = ddname
          @DataType = datatype
          @TableNums = tablenums
          @SensitiveTableNums = sensitivetablenums
          @FieldNums = fieldnums
          @SensitiveFieldNums = sensitivefieldnums
          @DistributionData = distributiondata
        end

        def deserialize(params)
          @DataSourceId = params['DataSourceId']
          @DdName = params['DdName']
          @DataType = params['DataType']
          @TableNums = params['TableNums']
          @SensitiveTableNums = params['SensitiveTableNums']
          @FieldNums = params['FieldNums']
          @SensitiveFieldNums = params['SensitiveFieldNums']
          unless params['DistributionData'].nil?
            @DistributionData = []
            params['DistributionData'].each do |i|
              note_tmp = Note.new
              note_tmp.deserialize(i)
              @DistributionData << note_tmp
            end
          end
        end
      end

      # 数据资产报告页面-用户查询入参
      class AssetList < TencentCloud::Common::AbstractModel
        # @param DataSourceType: 数据源类型
        # @type DataSourceType: String
        # @param DataSourceInfo: 数据源信息
        # @type DataSourceInfo: Array

        attr_accessor :DataSourceType, :DataSourceInfo

        def initialize(datasourcetype=nil, datasourceinfo=nil)
          @DataSourceType = datasourcetype
          @DataSourceInfo = datasourceinfo
        end

        def deserialize(params)
          @DataSourceType = params['DataSourceType']
          unless params['DataSourceInfo'].nil?
            @DataSourceInfo = []
            params['DataSourceInfo'].each do |i|
              datasourceinfo_tmp = DataSourceInfo.new
              datasourceinfo_tmp.deserialize(i)
              @DataSourceInfo << datasourceinfo_tmp
            end
          end
        end
      end

      # AuthorizeDSPAMetaResources请求参数结构体
      class AuthorizeDSPAMetaResourcesRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param AuthType: 授权方式，可选：automatic(一键自动授权) 、 account(指定用户名授权)。
        # @type AuthType: String
        # @param MetaType: 资源类型。
        # @type MetaType: String
        # @param ResourceRegion: 资源所处地域。
        # @type ResourceRegion: String
        # @param ResourcesAccount: 用户授权的账户信息，如果是一键自动授权模式，则不需要填写账户名与密码。
        # @type ResourcesAccount: Array
        # @param CreateDefaultTask: 创建默认主模板扫描任务
        # @type CreateDefaultTask: Boolean
        # @param AuthRange: 授权范围（all:授权整个数据源 manual:手动指定数据库）
        # @type AuthRange: String

        attr_accessor :DspaId, :AuthType, :MetaType, :ResourceRegion, :ResourcesAccount, :CreateDefaultTask, :AuthRange

        def initialize(dspaid=nil, authtype=nil, metatype=nil, resourceregion=nil, resourcesaccount=nil, createdefaulttask=nil, authrange=nil)
          @DspaId = dspaid
          @AuthType = authtype
          @MetaType = metatype
          @ResourceRegion = resourceregion
          @ResourcesAccount = resourcesaccount
          @CreateDefaultTask = createdefaulttask
          @AuthRange = authrange
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @AuthType = params['AuthType']
          @MetaType = params['MetaType']
          @ResourceRegion = params['ResourceRegion']
          unless params['ResourcesAccount'].nil?
            @ResourcesAccount = []
            params['ResourcesAccount'].each do |i|
              dsparesourceaccount_tmp = DspaResourceAccount.new
              dsparesourceaccount_tmp.deserialize(i)
              @ResourcesAccount << dsparesourceaccount_tmp
            end
          end
          @CreateDefaultTask = params['CreateDefaultTask']
          @AuthRange = params['AuthRange']
        end
      end

      # AuthorizeDSPAMetaResources返回参数结构体
      class AuthorizeDSPAMetaResourcesResponse < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param Results: 授权结果。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DspaId, :Results, :RequestId

        def initialize(dspaid=nil, results=nil, requestid=nil)
          @DspaId = dspaid
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              dspataskresult_tmp = DspaTaskResult.new
              dspataskresult_tmp.deserialize(i)
              @Results << dspataskresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # BindDSPAResourceCosBuckets请求参数结构体
      class BindDSPAResourceCosBucketsRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param BindCosResourceItems: 绑定的COS桶信息。
        # @type BindCosResourceItems: Array
        # @param UnbindCosResourceItems: 解绑的COS桶信息。
        # @type UnbindCosResourceItems: Array

        attr_accessor :DspaId, :BindCosResourceItems, :UnbindCosResourceItems

        def initialize(dspaid=nil, bindcosresourceitems=nil, unbindcosresourceitems=nil)
          @DspaId = dspaid
          @BindCosResourceItems = bindcosresourceitems
          @UnbindCosResourceItems = unbindcosresourceitems
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          unless params['BindCosResourceItems'].nil?
            @BindCosResourceItems = []
            params['BindCosResourceItems'].each do |i|
              cosresourceitem_tmp = CosResourceItem.new
              cosresourceitem_tmp.deserialize(i)
              @BindCosResourceItems << cosresourceitem_tmp
            end
          end
          unless params['UnbindCosResourceItems'].nil?
            @UnbindCosResourceItems = []
            params['UnbindCosResourceItems'].each do |i|
              cosresourceitem_tmp = CosResourceItem.new
              cosresourceitem_tmp.deserialize(i)
              @UnbindCosResourceItems << cosresourceitem_tmp
            end
          end
        end
      end

      # BindDSPAResourceCosBuckets返回参数结构体
      class BindDSPAResourceCosBucketsResponse < TencentCloud::Common::AbstractModel
        # @param CosTaskResults: 绑定结果数组
        # @type CosTaskResults: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CosTaskResults, :RequestId

        def initialize(costaskresults=nil, requestid=nil)
          @CosTaskResults = costaskresults
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CosTaskResults'].nil?
            @CosTaskResults = []
            params['CosTaskResults'].each do |i|
              costaskresult_tmp = CosTaskResult.new
              costaskresult_tmp.deserialize(i)
              @CosTaskResults << costaskresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # BindDSPAResourceDatabases请求参数结构体
      class BindDSPAResourceDatabasesRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param ResourceId: 数据库实例ID。
        # @type ResourceId: String
        # @param MetaType: 数据库实例类型。
        # @type MetaType: String
        # @param BindDbItems: 绑定DB列表。
        # @type BindDbItems: Array
        # @param UnbindDbItems: 解绑DB列表。
        # @type UnbindDbItems: Array

        attr_accessor :DspaId, :ResourceId, :MetaType, :BindDbItems, :UnbindDbItems

        def initialize(dspaid=nil, resourceid=nil, metatype=nil, binddbitems=nil, unbinddbitems=nil)
          @DspaId = dspaid
          @ResourceId = resourceid
          @MetaType = metatype
          @BindDbItems = binddbitems
          @UnbindDbItems = unbinddbitems
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ResourceId = params['ResourceId']
          @MetaType = params['MetaType']
          unless params['BindDbItems'].nil?
            @BindDbItems = []
            params['BindDbItems'].each do |i|
              dbresourceitem_tmp = DbResourceItem.new
              dbresourceitem_tmp.deserialize(i)
              @BindDbItems << dbresourceitem_tmp
            end
          end
          unless params['UnbindDbItems'].nil?
            @UnbindDbItems = []
            params['UnbindDbItems'].each do |i|
              dbresourceitem_tmp = DbResourceItem.new
              dbresourceitem_tmp.deserialize(i)
              @UnbindDbItems << dbresourceitem_tmp
            end
          end
        end
      end

      # BindDSPAResourceDatabases返回参数结构体
      class BindDSPAResourceDatabasesResponse < TencentCloud::Common::AbstractModel
        # @param DbTaskResults: 绑定结果数组
        # @type DbTaskResults: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DbTaskResults, :RequestId

        def initialize(dbtaskresults=nil, requestid=nil)
          @DbTaskResults = dbtaskresults
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DbTaskResults'].nil?
            @DbTaskResults = []
            params['DbTaskResults'].each do |i|
              dbtaskresult_tmp = DbTaskResult.new
              dbtaskresult_tmp.deserialize(i)
              @DbTaskResults << dbtaskresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # COS敏感数据识别规则
      class COSDataRule < TencentCloud::Common::AbstractModel
        # @param Operator: 只能取and 、or两个值其中之一，and：字段和内容同时满足，or：字段和内容满足其一.
        # 默认值为or
        # @type Operator: String
        # @param Contents: 规则内容
        # @type Contents: Array

        attr_accessor :Operator, :Contents

        def initialize(operator=nil, contents=nil)
          @Operator = operator
          @Contents = contents
        end

        def deserialize(params)
          @Operator = params['Operator']
          unless params['Contents'].nil?
            @Contents = []
            params['Contents'].each do |i|
              datacontent_tmp = DataContent.new
              datacontent_tmp.deserialize(i)
              @Contents << datacontent_tmp
            end
          end
        end
      end

      # COS数据源实例信息
      class COSInstance < TencentCloud::Common::AbstractModel
        # @param DataSourceId: 数据源Id
        # @type DataSourceId: String
        # @param BucketName: 桶名
        # @type BucketName: String
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String

        attr_accessor :DataSourceId, :BucketName, :ResourceRegion

        def initialize(datasourceid=nil, bucketname=nil, resourceregion=nil)
          @DataSourceId = datasourceid
          @BucketName = bucketname
          @ResourceRegion = resourceregion
        end

        def deserialize(params)
          @DataSourceId = params['DataSourceId']
          @BucketName = params['BucketName']
          @ResourceRegion = params['ResourceRegion']
        end
      end

      # 分类规则信息
      class CategoryRule < TencentCloud::Common::AbstractModel
        # @param CategoryId: 分类id
        # @type CategoryId: Integer
        # @param RuleId: 规则id
        # @type RuleId: Integer
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param LevelId: 级别id
        # @type LevelId: Integer
        # @param LevelName: 级别名称
        # @type LevelName: String
        # @param Id: 分类规则绑定关系id
        # @type Id: Integer
        # @param AliasRuleId: 别名ID
        # @type AliasRuleId: Integer
        # @param AliasRuleName: 别名规则名称
        # @type AliasRuleName: String
        # @param RuleEffectItems: 各类分类分级规则数量
        # @type RuleEffectItems: Array
        # @param RuleStatus: 规则状态
        # @type RuleStatus: Integer

        attr_accessor :CategoryId, :RuleId, :RuleName, :LevelId, :LevelName, :Id, :AliasRuleId, :AliasRuleName, :RuleEffectItems, :RuleStatus

        def initialize(categoryid=nil, ruleid=nil, rulename=nil, levelid=nil, levelname=nil, id=nil, aliasruleid=nil, aliasrulename=nil, ruleeffectitems=nil, rulestatus=nil)
          @CategoryId = categoryid
          @RuleId = ruleid
          @RuleName = rulename
          @LevelId = levelid
          @LevelName = levelname
          @Id = id
          @AliasRuleId = aliasruleid
          @AliasRuleName = aliasrulename
          @RuleEffectItems = ruleeffectitems
          @RuleStatus = rulestatus
        end

        def deserialize(params)
          @CategoryId = params['CategoryId']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @LevelId = params['LevelId']
          @LevelName = params['LevelName']
          @Id = params['Id']
          @AliasRuleId = params['AliasRuleId']
          @AliasRuleName = params['AliasRuleName']
          unless params['RuleEffectItems'].nil?
            @RuleEffectItems = []
            params['RuleEffectItems'].each do |i|
              ruleeffectitem_tmp = RuleEffectItem.new
              ruleeffectitem_tmp.deserialize(i)
              @RuleEffectItems << ruleeffectitem_tmp
            end
          end
          @RuleStatus = params['RuleStatus']
        end
      end

      # 分类规则统计信息
      class CategoryRuleStatistic < TencentCloud::Common::AbstractModel
        # @param CategoryId: 分类id
        # @type CategoryId: Integer
        # @param RuleCount: 规则数量
        # @type RuleCount: Integer
        # @param CategoryName: 分类名称
        # @type CategoryName: String

        attr_accessor :CategoryId, :RuleCount, :CategoryName

        def initialize(categoryid=nil, rulecount=nil, categoryname=nil)
          @CategoryId = categoryid
          @RuleCount = rulecount
          @CategoryName = categoryname
        end

        def deserialize(params)
          @CategoryId = params['CategoryId']
          @RuleCount = params['RuleCount']
          @CategoryName = params['CategoryName']
        end
      end

      # 云数据库资源项
      class CloudResourceItem < TencentCloud::Common::AbstractModel
        # @param Region: 资源所处地域。
        # @type Region: String
        # @param Items: 	云上资源列表。
        # @type Items: Array

        attr_accessor :Region, :Items

        def initialize(region=nil, items=nil)
          @Region = region
          @Items = items
        end

        def deserialize(params)
          @Region = params['Region']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dspacloudresourcemeta_tmp = DspaCloudResourceMeta.new
              dspacloudresourcemeta_tmp.deserialize(i)
              @Items << dspacloudresourcemeta_tmp
            end
          end
        end
      end

      # 模板详情
      class ComplianceGroupDetail < TencentCloud::Common::AbstractModel
        # @param Id: 模板id
        # @type Id: Integer
        # @param Name: 模板名称
        # @type Name: String
        # @param Description: 描述
        # @type Description: String
        # @param ComplianceGroupType: 模板类型
        # @type ComplianceGroupType: Integer
        # @param LevelGroupId: 模板分级方案id
        # @type LevelGroupId: Integer
        # @param LevelGroupName: 模板分级方案名称
        # @type LevelGroupName: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 更新时间
        # @type ModifyTime: String
        # @param IsAlias: 是否开启别名
        # @type IsAlias: Boolean

        attr_accessor :Id, :Name, :Description, :ComplianceGroupType, :LevelGroupId, :LevelGroupName, :CreateTime, :ModifyTime, :IsAlias

        def initialize(id=nil, name=nil, description=nil, compliancegrouptype=nil, levelgroupid=nil, levelgroupname=nil, createtime=nil, modifytime=nil, isalias=nil)
          @Id = id
          @Name = name
          @Description = description
          @ComplianceGroupType = compliancegrouptype
          @LevelGroupId = levelgroupid
          @LevelGroupName = levelgroupname
          @CreateTime = createtime
          @ModifyTime = modifytime
          @IsAlias = isalias
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Description = params['Description']
          @ComplianceGroupType = params['ComplianceGroupType']
          @LevelGroupId = params['LevelGroupId']
          @LevelGroupName = params['LevelGroupName']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @IsAlias = params['IsAlias']
        end
      end

      # 合规组中规则信息：包括规则ID，数据分类ID, 数据分级标识ID
      class ComplianceGroupRuleIdInfo < TencentCloud::Common::AbstractModel
        # @param RuleId: 敏感数据识别规则ID
        # @type RuleId: Integer
        # @param CategoryId: 敏感数据分类ID
        # @type CategoryId: Integer
        # @param LevelId: 敏感数据分级标识ID, 系统支持高、中、低三级，也支持自定义分级
        # @type LevelId: Integer

        attr_accessor :RuleId, :CategoryId, :LevelId

        def initialize(ruleid=nil, categoryid=nil, levelid=nil)
          @RuleId = ruleid
          @CategoryId = categoryid
          @LevelId = levelid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @CategoryId = params['CategoryId']
          @LevelId = params['LevelId']
        end
      end

      # CopyDSPATemplate请求参数结构体
      class CopyDSPATemplateRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param TemplateId: 合规组ID
        # @type TemplateId: Integer

        attr_accessor :DspaId, :TemplateId

        def initialize(dspaid=nil, templateid=nil)
          @DspaId = dspaid
          @TemplateId = templateid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TemplateId = params['TemplateId']
        end
      end

      # CopyDSPATemplate返回参数结构体
      class CopyDSPATemplateResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板id
        # @type TemplateId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateId, :RequestId

        def initialize(templateid=nil, requestid=nil)
          @TemplateId = templateid
          @RequestId = requestid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @RequestId = params['RequestId']
        end
      end

      # 数据资产报告-cos的敏感资产报告详情
      class CosAsset < TencentCloud::Common::AbstractModel
        # @param BucketNums: 桶的个数
        # @type BucketNums: Integer
        # @param SensitiveBucketNums: 敏感桶的个数
        # @type SensitiveBucketNums: Integer
        # @param FileNums: 文件个数
        # @type FileNums: Integer
        # @param SensitiveFileNums: 敏感文件的个数
        # @type SensitiveFileNums: Integer

        attr_accessor :BucketNums, :SensitiveBucketNums, :FileNums, :SensitiveFileNums

        def initialize(bucketnums=nil, sensitivebucketnums=nil, filenums=nil, sensitivefilenums=nil)
          @BucketNums = bucketnums
          @SensitiveBucketNums = sensitivebucketnums
          @FileNums = filenums
          @SensitiveFileNums = sensitivefilenums
        end

        def deserialize(params)
          @BucketNums = params['BucketNums']
          @SensitiveBucketNums = params['SensitiveBucketNums']
          @FileNums = params['FileNums']
          @SensitiveFileNums = params['SensitiveFileNums']
        end
      end

      # cos桶资源项
      class CosBucketItem < TencentCloud::Common::AbstractModel
        # @param Region: 资源所处地域。
        # @type Region: String
        # @param Buckets: COS桶列表。
        # @type Buckets: Array

        attr_accessor :Region, :Buckets

        def initialize(region=nil, buckets=nil)
          @Region = region
          @Buckets = buckets
        end

        def deserialize(params)
          @Region = params['Region']
          @Buckets = params['Buckets']
        end
      end

      # COS资源的桶信息
      class CosResourceItem < TencentCloud::Common::AbstractModel
        # @param ResourceId: cos数据源ID。
        # @type ResourceId: String
        # @param ResourceRegion: 桶所在地域。
        # @type ResourceRegion: String
        # @param ResourceName: 桶名称。
        # @type ResourceName: String

        attr_accessor :ResourceId, :ResourceRegion, :ResourceName

        def initialize(resourceid=nil, resourceregion=nil, resourcename=nil)
          @ResourceId = resourceid
          @ResourceRegion = resourceregion
          @ResourceName = resourcename
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceRegion = params['ResourceRegion']
          @ResourceName = params['ResourceName']
        end
      end

      # cos批量操作返回结果结构体
      class CosTaskResult < TencentCloud::Common::AbstractModel
        # @param Result: 结果类型。
        # @type Result: String
        # @param ResultDescription: 结果描述。
        # @type ResultDescription: String
        # @param ErrDescription: 错误信息描述。
        # @type ErrDescription: :class:`Tencentcloud::Dsgc.v20190723.models.ErrDescription`
        # @param ResourceId: 资源ID。
        # @type ResourceId: String

        attr_accessor :Result, :ResultDescription, :ErrDescription, :ResourceId

        def initialize(result=nil, resultdescription=nil, errdescription=nil, resourceid=nil)
          @Result = result
          @ResultDescription = resultdescription
          @ErrDescription = errdescription
          @ResourceId = resourceid
        end

        def deserialize(params)
          @Result = params['Result']
          @ResultDescription = params['ResultDescription']
          unless params['ErrDescription'].nil?
            @ErrDescription = ErrDescription.new
            @ErrDescription.deserialize(params['ErrDescription'])
          end
          @ResourceId = params['ResourceId']
        end
      end

      # CreateAssetSortingReportRetryTask请求参数结构体
      class CreateAssetSortingReportRetryTaskRequest < TencentCloud::Common::AbstractModel
        # @param ReportTaskId: 任务id
        # @type ReportTaskId: Integer
        # @param DspaId: dspa实例id
        # @type DspaId: String

        attr_accessor :ReportTaskId, :DspaId

        def initialize(reporttaskid=nil, dspaid=nil)
          @ReportTaskId = reporttaskid
          @DspaId = dspaid
        end

        def deserialize(params)
          @ReportTaskId = params['ReportTaskId']
          @DspaId = params['DspaId']
        end
      end

      # CreateAssetSortingReportRetryTask返回参数结构体
      class CreateAssetSortingReportRetryTaskResponse < TencentCloud::Common::AbstractModel
        # @param ReportTaskId: 任务id
        # @type ReportTaskId: Integer
        # @param Remark: 提示信息
        # @type Remark: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReportTaskId, :Remark, :RequestId

        def initialize(reporttaskid=nil, remark=nil, requestid=nil)
          @ReportTaskId = reporttaskid
          @Remark = remark
          @RequestId = requestid
        end

        def deserialize(params)
          @ReportTaskId = params['ReportTaskId']
          @Remark = params['Remark']
          @RequestId = params['RequestId']
        end
      end

      # CreateAssetSortingReportTask请求参数结构体
      class CreateAssetSortingReportTaskRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param ComplianceId: 识别模板id
        # @type ComplianceId: Integer
        # @param AssetList: 选中资产列表
        # @type AssetList: Array

        attr_accessor :DspaId, :ComplianceId, :AssetList

        def initialize(dspaid=nil, complianceid=nil, assetlist=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
          @AssetList = assetlist
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
          unless params['AssetList'].nil?
            @AssetList = []
            params['AssetList'].each do |i|
              assetlist_tmp = AssetList.new
              assetlist_tmp.deserialize(i)
              @AssetList << assetlist_tmp
            end
          end
        end
      end

      # CreateAssetSortingReportTask返回参数结构体
      class CreateAssetSortingReportTaskResponse < TencentCloud::Common::AbstractModel
        # @param ReportTaskId: 报表任务id
        # @type ReportTaskId: Integer
        # @param Remark: 提示信息
        # @type Remark: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReportTaskId, :Remark, :RequestId

        def initialize(reporttaskid=nil, remark=nil, requestid=nil)
          @ReportTaskId = reporttaskid
          @Remark = remark
          @RequestId = requestid
        end

        def deserialize(params)
          @ReportTaskId = params['ReportTaskId']
          @Remark = params['Remark']
          @RequestId = params['RequestId']
        end
      end

      # 合规组分类关联规则信息
      class CreateComplianceRules < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则id
        # @type RuleId: Integer
        # @param LevelId: 级别id
        # @type LevelId: Integer

        attr_accessor :RuleId, :LevelId

        def initialize(ruleid=nil, levelid=nil)
          @RuleId = ruleid
          @LevelId = levelid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @LevelId = params['LevelId']
        end
      end

      # CreateDSPAAssessmentRiskLevel请求参数结构体
      class CreateDSPAAssessmentRiskLevelRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param RiskLevelName: 风险等级名称
        # @type RiskLevelName: String
        # @param IdentifyComplianceId: 识别模板
        # @type IdentifyComplianceId: Integer
        # @param RiskLevelRule: 风险等级矩阵
        # @type RiskLevelRule: Array
        # @param RiskLevelDescription: 风险等级的描述
        # @type RiskLevelDescription: String

        attr_accessor :DspaId, :RiskLevelName, :IdentifyComplianceId, :RiskLevelRule, :RiskLevelDescription

        def initialize(dspaid=nil, risklevelname=nil, identifycomplianceid=nil, risklevelrule=nil, riskleveldescription=nil)
          @DspaId = dspaid
          @RiskLevelName = risklevelname
          @IdentifyComplianceId = identifycomplianceid
          @RiskLevelRule = risklevelrule
          @RiskLevelDescription = riskleveldescription
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @RiskLevelName = params['RiskLevelName']
          @IdentifyComplianceId = params['IdentifyComplianceId']
          unless params['RiskLevelRule'].nil?
            @RiskLevelRule = []
            params['RiskLevelRule'].each do |i|
              risklevelmatrix_tmp = RiskLevelMatrix.new
              risklevelmatrix_tmp.deserialize(i)
              @RiskLevelRule << risklevelmatrix_tmp
            end
          end
          @RiskLevelDescription = params['RiskLevelDescription']
        end
      end

      # CreateDSPAAssessmentRiskLevel返回参数结构体
      class CreateDSPAAssessmentRiskLevelResponse < TencentCloud::Common::AbstractModel
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

      # CreateDSPAAssessmentRiskTemplate请求参数结构体
      class CreateDSPAAssessmentRiskTemplateRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param TemplateName: 模板名称
        # @type TemplateName: String
        # @param RiskLevelId: 风险等级id
        # @type RiskLevelId: Integer
        # @param RiskIdList: 风险id列表
        # @type RiskIdList: Array
        # @param TemplateDescription: 模板描述
        # @type TemplateDescription: String

        attr_accessor :DspaId, :TemplateName, :RiskLevelId, :RiskIdList, :TemplateDescription

        def initialize(dspaid=nil, templatename=nil, risklevelid=nil, riskidlist=nil, templatedescription=nil)
          @DspaId = dspaid
          @TemplateName = templatename
          @RiskLevelId = risklevelid
          @RiskIdList = riskidlist
          @TemplateDescription = templatedescription
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TemplateName = params['TemplateName']
          @RiskLevelId = params['RiskLevelId']
          @RiskIdList = params['RiskIdList']
          @TemplateDescription = params['TemplateDescription']
        end
      end

      # CreateDSPAAssessmentRiskTemplate返回参数结构体
      class CreateDSPAAssessmentRiskTemplateResponse < TencentCloud::Common::AbstractModel
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

      # CreateDSPAAssessmentTask请求参数结构体
      class CreateDSPAAssessmentTaskRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例Id，格式“dspa-xxxxxxxx”
        # @type DspaId: String
        # @param Name: 评估任务名称。1-20个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字
        # @type Name: String
        # @param TemplateId: 评估模板Id，格式“template-xxxxxxxx”
        # @type TemplateId: String
        # @param BusinessName: 评估业务名称。1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字
        # @type BusinessName: String
        # @param BusinessDept: 业务所属部门。1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字
        # @type BusinessDept: String
        # @param BusinessOwner: 业务负责人。1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字
        # @type BusinessOwner: String
        # @param ComplianceId: 分类分级模板Id
        # @type ComplianceId: Integer
        # @param DiscoveryCondition: 敏感数据扫描数据源条件。
        # @type DiscoveryCondition: :class:`Tencentcloud::Dsgc.v20190723.models.DiscoveryCondition`
        # @param Description: 说明
        # @type Description: String

        attr_accessor :DspaId, :Name, :TemplateId, :BusinessName, :BusinessDept, :BusinessOwner, :ComplianceId, :DiscoveryCondition, :Description
        extend Gem::Deprecate
        deprecate :BusinessName, :none, 2025, 6
        deprecate :BusinessName=, :none, 2025, 6
        deprecate :BusinessDept, :none, 2025, 6
        deprecate :BusinessDept=, :none, 2025, 6
        deprecate :BusinessOwner, :none, 2025, 6
        deprecate :BusinessOwner=, :none, 2025, 6

        def initialize(dspaid=nil, name=nil, templateid=nil, businessname=nil, businessdept=nil, businessowner=nil, complianceid=nil, discoverycondition=nil, description=nil)
          @DspaId = dspaid
          @Name = name
          @TemplateId = templateid
          @BusinessName = businessname
          @BusinessDept = businessdept
          @BusinessOwner = businessowner
          @ComplianceId = complianceid
          @DiscoveryCondition = discoverycondition
          @Description = description
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @Name = params['Name']
          @TemplateId = params['TemplateId']
          @BusinessName = params['BusinessName']
          @BusinessDept = params['BusinessDept']
          @BusinessOwner = params['BusinessOwner']
          @ComplianceId = params['ComplianceId']
          unless params['DiscoveryCondition'].nil?
            @DiscoveryCondition = DiscoveryCondition.new
            @DiscoveryCondition.deserialize(params['DiscoveryCondition'])
          end
          @Description = params['Description']
        end
      end

      # CreateDSPAAssessmentTask返回参数结构体
      class CreateDSPAAssessmentTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 评估任务Id，格式“task-xxxxxxxx”
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDSPACOSDiscoveryTask请求参数结构体
      class CreateDSPACOSDiscoveryTaskRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param Name: 任务名称，1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字，Name不可重复
        # @type Name: String
        # @param DataSourceId: 数据源ID
        # @type DataSourceId: String
        # @param Enable: 任务开关，0 关闭，1 启用
        # @type Enable: Integer
        # @param Bucket: 桶名
        # @type Bucket: String
        # @param Plan: 执行计划， 0立即 1定时，选择“立即”时，扫描周期只能选择单次。
        # @type Plan: Integer
        # @param Period: 扫描周期，0单次 1每天 2每周 3每月
        # @type Period: Integer
        # @param FileTypes: 待扫描文件类型，用逗号隔开，格式如：[".txt", ".csv", ".log", ".xml",".html", ".json"]。
        # @type FileTypes: Array
        # @param FileSizeLimit: 文件大小上限，单位为KB，如1000, 目前单个文件最大只支持100MB（102400KB）
        # @type FileSizeLimit: Integer
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String
        # @param Description: 任务描述，最大长度为1024个字符
        # @type Description: String
        # @param GeneralRuleSetEnable: 通用规则集开关，0 关闭，1 启用
        # @type GeneralRuleSetEnable: Integer
        # @param ComplianceGroupIds: 合规组ID列表，最多支持添加5个
        # @type ComplianceGroupIds: Array
        # @param TimingStartTime: 任务定时启动时间，格式如：2006-01-02 15:04:05
        # 当执行计划（Plan字段）为”立即“时，定时启动时间不会生效，此场景下给该字段传值不会被保存。
        # @type TimingStartTime: String

        attr_accessor :DspaId, :Name, :DataSourceId, :Enable, :Bucket, :Plan, :Period, :FileTypes, :FileSizeLimit, :ResourceRegion, :Description, :GeneralRuleSetEnable, :ComplianceGroupIds, :TimingStartTime

        def initialize(dspaid=nil, name=nil, datasourceid=nil, enable=nil, bucket=nil, plan=nil, period=nil, filetypes=nil, filesizelimit=nil, resourceregion=nil, description=nil, generalrulesetenable=nil, compliancegroupids=nil, timingstarttime=nil)
          @DspaId = dspaid
          @Name = name
          @DataSourceId = datasourceid
          @Enable = enable
          @Bucket = bucket
          @Plan = plan
          @Period = period
          @FileTypes = filetypes
          @FileSizeLimit = filesizelimit
          @ResourceRegion = resourceregion
          @Description = description
          @GeneralRuleSetEnable = generalrulesetenable
          @ComplianceGroupIds = compliancegroupids
          @TimingStartTime = timingstarttime
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @Name = params['Name']
          @DataSourceId = params['DataSourceId']
          @Enable = params['Enable']
          @Bucket = params['Bucket']
          @Plan = params['Plan']
          @Period = params['Period']
          @FileTypes = params['FileTypes']
          @FileSizeLimit = params['FileSizeLimit']
          @ResourceRegion = params['ResourceRegion']
          @Description = params['Description']
          @GeneralRuleSetEnable = params['GeneralRuleSetEnable']
          @ComplianceGroupIds = params['ComplianceGroupIds']
          @TimingStartTime = params['TimingStartTime']
        end
      end

      # CreateDSPACOSDiscoveryTask返回参数结构体
      class CreateDSPACOSDiscoveryTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param ResultId: 扫描结果ID
        # @type ResultId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :ResultId, :RequestId

        def initialize(taskid=nil, resultid=nil, requestid=nil)
          @TaskId = taskid
          @ResultId = resultid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ResultId = params['ResultId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDSPACategoryRelation请求参数结构体
      class CreateDSPACategoryRelationRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param CategoryId: 分类id
        # @type CategoryId: Integer
        # @param ParentCategoryId: 父级分类id（无父级分类传-1）
        # @type ParentCategoryId: Integer
        # @param ComplianceId: 分类模板id
        # @type ComplianceId: Integer

        attr_accessor :DspaId, :CategoryId, :ParentCategoryId, :ComplianceId

        def initialize(dspaid=nil, categoryid=nil, parentcategoryid=nil, complianceid=nil)
          @DspaId = dspaid
          @CategoryId = categoryid
          @ParentCategoryId = parentcategoryid
          @ComplianceId = complianceid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @CategoryId = params['CategoryId']
          @ParentCategoryId = params['ParentCategoryId']
          @ComplianceId = params['ComplianceId']
        end
      end

      # CreateDSPACategoryRelation返回参数结构体
      class CreateDSPACategoryRelationResponse < TencentCloud::Common::AbstractModel
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

      # CreateDSPACategory请求参数结构体
      class CreateDSPACategoryRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param Name: 敏感数据分类名称，1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字，Name不可重复
        # @type Name: String

        attr_accessor :DspaId, :Name

        def initialize(dspaid=nil, name=nil)
          @DspaId = dspaid
          @Name = name
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @Name = params['Name']
        end
      end

      # CreateDSPACategory返回参数结构体
      class CreateDSPACategoryResponse < TencentCloud::Common::AbstractModel
        # @param CategoryId: 敏感数据分类ID
        # @type CategoryId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CategoryId, :RequestId

        def initialize(categoryid=nil, requestid=nil)
          @CategoryId = categoryid
          @RequestId = requestid
        end

        def deserialize(params)
          @CategoryId = params['CategoryId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDSPAComplianceGroup请求参数结构体
      class CreateDSPAComplianceGroupRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param Name: 合规组名称，1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字，Name不可重复
        # @type Name: String
        # @param Description: 合规组描述，最大长度为1024个字符
        # @type Description: String
        # @param ComplianceGroupRules: 合规组规则配置（参数已废弃，请传空数组）
        # @type ComplianceGroupRules: Array
        # @param LevelGroupId: 分级组ID，默认值为1，新增参数，可选
        # @type LevelGroupId: Integer
        # @param Status: 1代表模版开启，0代表模版关闭
        # @type Status: Integer
        # @param CloseComplianceId: 该complianceId的开启状态将被关闭
        # @type CloseComplianceId: Integer

        attr_accessor :DspaId, :Name, :Description, :ComplianceGroupRules, :LevelGroupId, :Status, :CloseComplianceId

        def initialize(dspaid=nil, name=nil, description=nil, compliancegrouprules=nil, levelgroupid=nil, status=nil, closecomplianceid=nil)
          @DspaId = dspaid
          @Name = name
          @Description = description
          @ComplianceGroupRules = compliancegrouprules
          @LevelGroupId = levelgroupid
          @Status = status
          @CloseComplianceId = closecomplianceid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['ComplianceGroupRules'].nil?
            @ComplianceGroupRules = []
            params['ComplianceGroupRules'].each do |i|
              compliancegroupruleidinfo_tmp = ComplianceGroupRuleIdInfo.new
              compliancegroupruleidinfo_tmp.deserialize(i)
              @ComplianceGroupRules << compliancegroupruleidinfo_tmp
            end
          end
          @LevelGroupId = params['LevelGroupId']
          @Status = params['Status']
          @CloseComplianceId = params['CloseComplianceId']
        end
      end

      # CreateDSPAComplianceGroup返回参数结构体
      class CreateDSPAComplianceGroupResponse < TencentCloud::Common::AbstractModel
        # @param ComplianceGroupId: 合规组ID
        # @type ComplianceGroupId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ComplianceGroupId, :RequestId

        def initialize(compliancegroupid=nil, requestid=nil)
          @ComplianceGroupId = compliancegroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @ComplianceGroupId = params['ComplianceGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDSPAComplianceRules请求参数结构体
      class CreateDSPAComplianceRulesRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param CategoryId: 分类id
        # @type CategoryId: Integer
        # @param ComplianceId: 合规组模板id
        # @type ComplianceId: Integer
        # @param Rules: 规则列表
        # @type Rules: Array

        attr_accessor :DspaId, :CategoryId, :ComplianceId, :Rules

        def initialize(dspaid=nil, categoryid=nil, complianceid=nil, rules=nil)
          @DspaId = dspaid
          @CategoryId = categoryid
          @ComplianceId = complianceid
          @Rules = rules
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @CategoryId = params['CategoryId']
          @ComplianceId = params['ComplianceId']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              createcompliancerules_tmp = CreateComplianceRules.new
              createcompliancerules_tmp.deserialize(i)
              @Rules << createcompliancerules_tmp
            end
          end
        end
      end

      # CreateDSPAComplianceRules返回参数结构体
      class CreateDSPAComplianceRulesResponse < TencentCloud::Common::AbstractModel
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

      # CreateDSPACosMetaResources请求参数结构体
      class CreateDSPACosMetaResourcesRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param ResourceRegion: 资源所处地域。
        # @type ResourceRegion: String
        # @param Buckets: COS桶列表
        # @type Buckets: Array
        # @param CosBucketItems: 必填，COS资源列表
        # @type CosBucketItems: Array

        attr_accessor :DspaId, :ResourceRegion, :Buckets, :CosBucketItems
        extend Gem::Deprecate
        deprecate :ResourceRegion, :none, 2025, 6
        deprecate :ResourceRegion=, :none, 2025, 6
        deprecate :Buckets, :none, 2025, 6
        deprecate :Buckets=, :none, 2025, 6

        def initialize(dspaid=nil, resourceregion=nil, buckets=nil, cosbucketitems=nil)
          @DspaId = dspaid
          @ResourceRegion = resourceregion
          @Buckets = buckets
          @CosBucketItems = cosbucketitems
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ResourceRegion = params['ResourceRegion']
          @Buckets = params['Buckets']
          unless params['CosBucketItems'].nil?
            @CosBucketItems = []
            params['CosBucketItems'].each do |i|
              cosbucketitem_tmp = CosBucketItem.new
              cosbucketitem_tmp.deserialize(i)
              @CosBucketItems << cosbucketitem_tmp
            end
          end
        end
      end

      # CreateDSPACosMetaResources返回参数结构体
      class CreateDSPACosMetaResourcesResponse < TencentCloud::Common::AbstractModel
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

      # CreateDSPADbMetaResources请求参数结构体
      class CreateDSPADbMetaResourcesRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param MetaType: 资源类型，支持：cdb（云数据库 MySQL）、dcdb（TDSQL MySQL版）、mariadb（云数据库 MariaDB）、postgres（云数据库 PostgreSQL）、cynosdbpg（TDSQL-C PostgreSQL版）、cynosdbmysql（TDSQL-C MySQL版）
        # @type MetaType: String
        # @param ResourceRegion: 资源所处地域。
        # @type ResourceRegion: String
        # @param UpdateStatus: 用来标记本次更新是否已经是最后一次，可选值：continue（后续还需要更新）、finished（本次是最后一次更新）。
        # @type UpdateStatus: String
        # @param UpdateId: 本次更新的ID号，用来标记一次完整的更新过程。
        # @type UpdateId: String
        # @param Items: 云上资源列表。
        # @type Items: Array
        # @param CloudResourceItems: 必填，云数据库资源列表。
        # @type CloudResourceItems: Array

        attr_accessor :DspaId, :MetaType, :ResourceRegion, :UpdateStatus, :UpdateId, :Items, :CloudResourceItems
        extend Gem::Deprecate
        deprecate :ResourceRegion, :none, 2025, 6
        deprecate :ResourceRegion=, :none, 2025, 6
        deprecate :UpdateStatus, :none, 2025, 6
        deprecate :UpdateStatus=, :none, 2025, 6
        deprecate :UpdateId, :none, 2025, 6
        deprecate :UpdateId=, :none, 2025, 6
        deprecate :Items, :none, 2025, 6
        deprecate :Items=, :none, 2025, 6

        def initialize(dspaid=nil, metatype=nil, resourceregion=nil, updatestatus=nil, updateid=nil, items=nil, cloudresourceitems=nil)
          @DspaId = dspaid
          @MetaType = metatype
          @ResourceRegion = resourceregion
          @UpdateStatus = updatestatus
          @UpdateId = updateid
          @Items = items
          @CloudResourceItems = cloudresourceitems
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @MetaType = params['MetaType']
          @ResourceRegion = params['ResourceRegion']
          @UpdateStatus = params['UpdateStatus']
          @UpdateId = params['UpdateId']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dspacloudresourcemeta_tmp = DspaCloudResourceMeta.new
              dspacloudresourcemeta_tmp.deserialize(i)
              @Items << dspacloudresourcemeta_tmp
            end
          end
          unless params['CloudResourceItems'].nil?
            @CloudResourceItems = []
            params['CloudResourceItems'].each do |i|
              cloudresourceitem_tmp = CloudResourceItem.new
              cloudresourceitem_tmp.deserialize(i)
              @CloudResourceItems << cloudresourceitem_tmp
            end
          end
        end
      end

      # CreateDSPADbMetaResources返回参数结构体
      class CreateDSPADbMetaResourcesResponse < TencentCloud::Common::AbstractModel
        # @param UpdateId: 本次更新的ID号，用来标记一次完整的更新过程。
        # @type UpdateId: String
        # @param MetaType: 资源类型，支持：cdb（云数据库 MySQL）、dcdb（TDSQL MySQL版）、mariadb（云数据库 MariaDB）、postgres（云数据库 PostgreSQL）、cynosdbpg（TDSQL-C PostgreSQL版）、cynosdbmysql（TDSQL-C MySQL版）
        # @type MetaType: String
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param ResourceRegion: 资源所处地域。
        # @type ResourceRegion: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UpdateId, :MetaType, :DspaId, :ResourceRegion, :RequestId
        extend Gem::Deprecate
        deprecate :UpdateId, :none, 2025, 6
        deprecate :UpdateId=, :none, 2025, 6
        deprecate :ResourceRegion, :none, 2025, 6
        deprecate :ResourceRegion=, :none, 2025, 6

        def initialize(updateid=nil, metatype=nil, dspaid=nil, resourceregion=nil, requestid=nil)
          @UpdateId = updateid
          @MetaType = metatype
          @DspaId = dspaid
          @ResourceRegion = resourceregion
          @RequestId = requestid
        end

        def deserialize(params)
          @UpdateId = params['UpdateId']
          @MetaType = params['MetaType']
          @DspaId = params['DspaId']
          @ResourceRegion = params['ResourceRegion']
          @RequestId = params['RequestId']
        end
      end

      # CreateDSPADiscoveryRule请求参数结构体
      class CreateDSPADiscoveryRuleRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param Name: 规则名称，1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字，Name不可重复
        # @type Name: String
        # @param Description: 规则描述，最大长度为1024个字符
        # @type Description: String
        # @param RDBRules: RDB类敏感数据识别规则
        # @type RDBRules: :class:`Tencentcloud::Dsgc.v20190723.models.DspaDiscoveryRDBRules`
        # @param COSRules: COS类敏感数据识别规则
        # @type COSRules: :class:`Tencentcloud::Dsgc.v20190723.models.DspaDiscoveryCOSRules`
        # @param Status: 规则状态；0 不启用, 1 启用
        # @type Status: Integer

        attr_accessor :DspaId, :Name, :Description, :RDBRules, :COSRules, :Status

        def initialize(dspaid=nil, name=nil, description=nil, rdbrules=nil, cosrules=nil, status=nil)
          @DspaId = dspaid
          @Name = name
          @Description = description
          @RDBRules = rdbrules
          @COSRules = cosrules
          @Status = status
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['RDBRules'].nil?
            @RDBRules = DspaDiscoveryRDBRules.new
            @RDBRules.deserialize(params['RDBRules'])
          end
          unless params['COSRules'].nil?
            @COSRules = DspaDiscoveryCOSRules.new
            @COSRules.deserialize(params['COSRules'])
          end
          @Status = params['Status']
        end
      end

      # CreateDSPADiscoveryRule返回参数结构体
      class CreateDSPADiscoveryRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :RequestId

        def initialize(ruleid=nil, requestid=nil)
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDSPADiscoveryTask请求参数结构体
      class CreateDSPADiscoveryTaskRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param Name: 任务名称，1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字，Name不可重复
        # @type Name: String
        # @param DataSourceId: 数据源ID
        # @type DataSourceId: String
        # @param Enable: 任务开关，0 关闭，1 启用
        # @type Enable: Integer
        # @param Plan: 执行计划， 0立即 1定时，选择“立即”时，扫描周期只能选择单次
        # @type Plan: Integer
        # @param Period: 扫描周期，0单次 1每天 2每周 3每月
        # @type Period: Integer
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String
        # @param DataSourceType: 数据源类型，可取值如下：
        # cdb 表示云数据库 MySQL,
        # dcdb 表示TDSQL MySQL版,
        # mariadb 表示云数据库 MariaDB,
        # postgres 表示云数据库 PostgreSQL,
        # cynosdbpg 表示TDSQL-C PostgreSQL版,
        # cynosdbmysql 表示TDSQL-C MySQL版,
        # selfbuilt-db 表示自建数据库
        # @type DataSourceType: String
        # @param GeneralRuleSetEnable: 通用规则集开关，0 关闭，1 启用
        # @type GeneralRuleSetEnable: Integer
        # @param Description: 任务描述，最大长度为1024个字符
        # @type Description: String
        # @param Condition: 用于传入的数据源的条件，目前只支持数据库，所以目前表示数据库的名称，选择多个数据库，之间通过逗号分隔，若不选，则默认选择全部数据库
        # @type Condition: String
        # @param ComplianceGroupIds: 合规组ID列表，最多支持添加5个
        # @type ComplianceGroupIds: Array
        # @param TimingStartTime: 任务定时启动时间，格式如：2006-01-02 15:04:05
        # 当执行计划（Plan字段）为”立即“时，定时启动时间不会生效，此场景下给该字段传值不会被保存。
        # @type TimingStartTime: String
        # @param Order: random-随机，asc生序，desc降序
        # @type Order: String
        # @param Rows: 抽样的条数，范围30-1000
        # @type Rows: Integer
        # @param GlobalOrderField: 抽样的排序字段
        # @type GlobalOrderField: String

        attr_accessor :DspaId, :Name, :DataSourceId, :Enable, :Plan, :Period, :ResourceRegion, :DataSourceType, :GeneralRuleSetEnable, :Description, :Condition, :ComplianceGroupIds, :TimingStartTime, :Order, :Rows, :GlobalOrderField
        extend Gem::Deprecate
        deprecate :GeneralRuleSetEnable, :none, 2025, 6
        deprecate :GeneralRuleSetEnable=, :none, 2025, 6

        def initialize(dspaid=nil, name=nil, datasourceid=nil, enable=nil, plan=nil, period=nil, resourceregion=nil, datasourcetype=nil, generalrulesetenable=nil, description=nil, condition=nil, compliancegroupids=nil, timingstarttime=nil, order=nil, rows=nil, globalorderfield=nil)
          @DspaId = dspaid
          @Name = name
          @DataSourceId = datasourceid
          @Enable = enable
          @Plan = plan
          @Period = period
          @ResourceRegion = resourceregion
          @DataSourceType = datasourcetype
          @GeneralRuleSetEnable = generalrulesetenable
          @Description = description
          @Condition = condition
          @ComplianceGroupIds = compliancegroupids
          @TimingStartTime = timingstarttime
          @Order = order
          @Rows = rows
          @GlobalOrderField = globalorderfield
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @Name = params['Name']
          @DataSourceId = params['DataSourceId']
          @Enable = params['Enable']
          @Plan = params['Plan']
          @Period = params['Period']
          @ResourceRegion = params['ResourceRegion']
          @DataSourceType = params['DataSourceType']
          @GeneralRuleSetEnable = params['GeneralRuleSetEnable']
          @Description = params['Description']
          @Condition = params['Condition']
          @ComplianceGroupIds = params['ComplianceGroupIds']
          @TimingStartTime = params['TimingStartTime']
          @Order = params['Order']
          @Rows = params['Rows']
          @GlobalOrderField = params['GlobalOrderField']
        end
      end

      # CreateDSPADiscoveryTask返回参数结构体
      class CreateDSPADiscoveryTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param ResultId: 扫描结果ID
        # @type ResultId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :ResultId, :RequestId

        def initialize(taskid=nil, resultid=nil, requestid=nil)
          @TaskId = taskid
          @ResultId = resultid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ResultId = params['ResultId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDSPALevelGroup请求参数结构体
      class CreateDSPALevelGroupRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param Name: 分级组名称，唯一性约束，最多60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字，Name不可重复
        # @type Name: String
        # @param ItemLevels: 分级标识配置
        # @type ItemLevels: Array
        # @param Description: 分级组描述，最多1024字符
        # @type Description: String

        attr_accessor :DspaId, :Name, :ItemLevels, :Description

        def initialize(dspaid=nil, name=nil, itemlevels=nil, description=nil)
          @DspaId = dspaid
          @Name = name
          @ItemLevels = itemlevels
          @Description = description
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @Name = params['Name']
          unless params['ItemLevels'].nil?
            @ItemLevels = []
            params['ItemLevels'].each do |i|
              itemlevel_tmp = ItemLevel.new
              itemlevel_tmp.deserialize(i)
              @ItemLevels << itemlevel_tmp
            end
          end
          @Description = params['Description']
        end
      end

      # CreateDSPALevelGroup返回参数结构体
      class CreateDSPALevelGroupResponse < TencentCloud::Common::AbstractModel
        # @param LevelGroupId: 分级组ID
        # @type LevelGroupId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LevelGroupId, :RequestId

        def initialize(levelgroupid=nil, requestid=nil)
          @LevelGroupId = levelgroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @LevelGroupId = params['LevelGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDSPAMetaResources请求参数结构体
      class CreateDSPAMetaResourcesRequest < TencentCloud::Common::AbstractModel
        # @param MetaType: 资源类型，支持：cdb（云数据库 MySQL）、dcdb（TDSQL MySQL版）、mariadb（云数据库 MariaDB）、postgres（云数据库 PostgreSQL）、cynosdbpg（TDSQL-C PostgreSQL版）、cynosdbmysql（TDSQL-C MySQL版）
        # @type MetaType: String
        # @param ResourceRegion: 资源所处地域。
        # @type ResourceRegion: String
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param UpdateStatus: 用来标记本次更新是否已经是最后一次，可选值：continue（后续还需要更新）、finished（本次是最后一次更新）。
        # @type UpdateStatus: String
        # @param UpdateId: 本次更新的ID号，用来标记一次完整的更新过程。
        # @type UpdateId: String
        # @param Items: 资源列表。
        # @type Items: Array

        attr_accessor :MetaType, :ResourceRegion, :DspaId, :UpdateStatus, :UpdateId, :Items

        def initialize(metatype=nil, resourceregion=nil, dspaid=nil, updatestatus=nil, updateid=nil, items=nil)
          @MetaType = metatype
          @ResourceRegion = resourceregion
          @DspaId = dspaid
          @UpdateStatus = updatestatus
          @UpdateId = updateid
          @Items = items
        end

        def deserialize(params)
          @MetaType = params['MetaType']
          @ResourceRegion = params['ResourceRegion']
          @DspaId = params['DspaId']
          @UpdateStatus = params['UpdateStatus']
          @UpdateId = params['UpdateId']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dspauserresourcemeta_tmp = DspaUserResourceMeta.new
              dspauserresourcemeta_tmp.deserialize(i)
              @Items << dspauserresourcemeta_tmp
            end
          end
        end
      end

      # CreateDSPAMetaResources返回参数结构体
      class CreateDSPAMetaResourcesResponse < TencentCloud::Common::AbstractModel
        # @param UpdateId: 本次更新的ID号，用来标记一次完整的更新过程。
        # @type UpdateId: String
        # @param MetaType: 资源类型，支持：cdb（云数据库 MySQL）、dcdb（TDSQL MySQL版）、mariadb（云数据库 MariaDB）、postgres（云数据库 PostgreSQL）、cynosdbpg（TDSQL-C PostgreSQL版）、cynosdbmysql（TDSQL-C MySQL版）
        # @type MetaType: String
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param ResourceRegion: 资源所处地域。
        # @type ResourceRegion: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UpdateId, :MetaType, :DspaId, :ResourceRegion, :RequestId

        def initialize(updateid=nil, metatype=nil, dspaid=nil, resourceregion=nil, requestid=nil)
          @UpdateId = updateid
          @MetaType = metatype
          @DspaId = dspaid
          @ResourceRegion = resourceregion
          @RequestId = requestid
        end

        def deserialize(params)
          @UpdateId = params['UpdateId']
          @MetaType = params['MetaType']
          @DspaId = params['DspaId']
          @ResourceRegion = params['ResourceRegion']
          @RequestId = params['RequestId']
        end
      end

      # CreateDSPASelfBuildMetaResource请求参数结构体
      class CreateDSPASelfBuildMetaResourceRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: Dspa实例ID。
        # @type DspaId: String
        # @param MetaType: 自建数据库类型。目前支持的自建数据库类型按照协议进行区分，支持两种开源数据库协议：
        # mysql_like_proto -- Mysql协议类关系型数据库，
        # postgre_like_proto -- Postgre协议类关系型数据库。
        # 其他闭源协议的数据库如SqlServer、Oracle等暂不支持。
        # @type MetaType: String
        # @param ResourceRegion: 资源所处地域。
        # @type ResourceRegion: String
        # @param ResourceId: 自建云资源ID。
        # @type ResourceId: String
        # @param ResourceUniqueVpcId: 自建云资源的VPC ID。
        # @type ResourceUniqueVpcId: String
        # @param ResourceUniqueSubnetId: 自建云资源的Subnet ID。
        # @type ResourceUniqueSubnetId: String
        # @param ResourceAccessType: 自建云资源所处的服务类型，可选：
        # cvm - 通过云服务器直接访问。
        # clb - 通过LB的方式进行访问。
        # @type ResourceAccessType: String
        # @param ResourceVip: 可用于访问自建云资源的IP。
        # emr的连接不需要使用该字段
        # @type ResourceVip: String
        # @param ResourceVPort: 可用于访问自建云资源的端口。
        # emr的连接不需要使用该字段
        # @type ResourceVPort: Integer
        # @param UserName: 账户名。如果emr_hive的连接方式为“LDAP”，则复用该字段
        # @type UserName: String
        # @param Password: 账户密码。如果emr_hive的连接方式为“LDAP”，则复用该字段
        # @type Password: String
        # @param ResourceName: 资源名称，1-60个字符。
        # @type ResourceName: String
        # @param InstanceType: 实例类型
        # databse
        # sid
        # serviceName
        # @type InstanceType: String
        # @param InstanceValue: 实例值
        # @type InstanceValue: String
        # @param AuthRange: 授权范围（all:授权整个数据源 manual:手动指定数据库）
        # @type AuthRange: String

        attr_accessor :DspaId, :MetaType, :ResourceRegion, :ResourceId, :ResourceUniqueVpcId, :ResourceUniqueSubnetId, :ResourceAccessType, :ResourceVip, :ResourceVPort, :UserName, :Password, :ResourceName, :InstanceType, :InstanceValue, :AuthRange

        def initialize(dspaid=nil, metatype=nil, resourceregion=nil, resourceid=nil, resourceuniquevpcid=nil, resourceuniquesubnetid=nil, resourceaccesstype=nil, resourcevip=nil, resourcevport=nil, username=nil, password=nil, resourcename=nil, instancetype=nil, instancevalue=nil, authrange=nil)
          @DspaId = dspaid
          @MetaType = metatype
          @ResourceRegion = resourceregion
          @ResourceId = resourceid
          @ResourceUniqueVpcId = resourceuniquevpcid
          @ResourceUniqueSubnetId = resourceuniquesubnetid
          @ResourceAccessType = resourceaccesstype
          @ResourceVip = resourcevip
          @ResourceVPort = resourcevport
          @UserName = username
          @Password = password
          @ResourceName = resourcename
          @InstanceType = instancetype
          @InstanceValue = instancevalue
          @AuthRange = authrange
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @MetaType = params['MetaType']
          @ResourceRegion = params['ResourceRegion']
          @ResourceId = params['ResourceId']
          @ResourceUniqueVpcId = params['ResourceUniqueVpcId']
          @ResourceUniqueSubnetId = params['ResourceUniqueSubnetId']
          @ResourceAccessType = params['ResourceAccessType']
          @ResourceVip = params['ResourceVip']
          @ResourceVPort = params['ResourceVPort']
          @UserName = params['UserName']
          @Password = params['Password']
          @ResourceName = params['ResourceName']
          @InstanceType = params['InstanceType']
          @InstanceValue = params['InstanceValue']
          @AuthRange = params['AuthRange']
        end
      end

      # CreateDSPASelfBuildMetaResource返回参数结构体
      class CreateDSPASelfBuildMetaResourceResponse < TencentCloud::Common::AbstractModel
        # @param ConnectivityStatus: 连通性测试情况，success表示可正常访问，failed表示无法访问。
        # @type ConnectivityStatus: String
        # @param ConnectivityDescription: 连通性描述字段，如果连通性测试失败，这里会返回无法访问的相关信息说明。
        # @type ConnectivityDescription: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConnectivityStatus, :ConnectivityDescription, :RequestId

        def initialize(connectivitystatus=nil, connectivitydescription=nil, requestid=nil)
          @ConnectivityStatus = connectivitystatus
          @ConnectivityDescription = connectivitydescription
          @RequestId = requestid
        end

        def deserialize(params)
          @ConnectivityStatus = params['ConnectivityStatus']
          @ConnectivityDescription = params['ConnectivityDescription']
          @RequestId = params['RequestId']
        end
      end

      # CreateIdentifyRuleAnotherName请求参数结构体
      class CreateIdentifyRuleAnotherNameRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param ComplianceId: 合规组ID
        # @type ComplianceId: Integer
        # @param CategoryId: 规则绑定的分类id
        # @type CategoryId: Integer
        # @param RuleId: 规则id
        # @type RuleId: Integer
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param AnotherName: 规则别名
        # @type AnotherName: String
        # @param AliasRuleId: 别名规则id
        # @type AliasRuleId: Integer
        # @param AliasRuleName: 别名规则名称
        # @type AliasRuleName: String

        attr_accessor :DspaId, :ComplianceId, :CategoryId, :RuleId, :RuleName, :AnotherName, :AliasRuleId, :AliasRuleName

        def initialize(dspaid=nil, complianceid=nil, categoryid=nil, ruleid=nil, rulename=nil, anothername=nil, aliasruleid=nil, aliasrulename=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
          @CategoryId = categoryid
          @RuleId = ruleid
          @RuleName = rulename
          @AnotherName = anothername
          @AliasRuleId = aliasruleid
          @AliasRuleName = aliasrulename
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
          @CategoryId = params['CategoryId']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @AnotherName = params['AnotherName']
          @AliasRuleId = params['AliasRuleId']
          @AliasRuleName = params['AliasRuleName']
        end
      end

      # CreateIdentifyRuleAnotherName返回参数结构体
      class CreateIdentifyRuleAnotherNameResponse < TencentCloud::Common::AbstractModel
        # @param AliasRuleId: 创建的别名规则id
        # @type AliasRuleId: Integer
        # @param AliasRuleName: 别名规则名称
        # @type AliasRuleName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AliasRuleId, :AliasRuleName, :RequestId

        def initialize(aliasruleid=nil, aliasrulename=nil, requestid=nil)
          @AliasRuleId = aliasruleid
          @AliasRuleName = aliasrulename
          @RequestId = requestid
        end

        def deserialize(params)
          @AliasRuleId = params['AliasRuleId']
          @AliasRuleName = params['AliasRuleName']
          @RequestId = params['RequestId']
        end
      end

      # 绑定的实例信息
      class DBInstanceInfo < TencentCloud::Common::AbstractModel
        # @param ResourceId: 数据源id
        # @type ResourceId: String
        # @param DbInfos: 数据源绑定的db信息
        # @type DbInfos: Array

        attr_accessor :ResourceId, :DbInfos

        def initialize(resourceid=nil, dbinfos=nil)
          @ResourceId = resourceid
          @DbInfos = dbinfos
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          unless params['DbInfos'].nil?
            @DbInfos = []
            params['DbInfos'].each do |i|
              dbinfo_tmp = DbInfo.new
              dbinfo_tmp.deserialize(i)
              @DbInfos << dbinfo_tmp
            end
          end
        end
      end

      # 数据库信息
      class DBStatements < TencentCloud::Common::AbstractModel
        # @param DBName: 数据库名称
        # @type DBName: String
        # @param DBSchema: 数据库Schema
        # @type DBSchema: String

        attr_accessor :DBName, :DBSchema

        def initialize(dbname=nil, dbschema=nil)
          @DBName = dbname
          @DBSchema = dbschema
        end

        def deserialize(params)
          @DBName = params['DBName']
          @DBSchema = params['DBSchema']
        end
      end

      # COS元数据信息
      class DSPACosMetaDataInfo < TencentCloud::Common::AbstractModel
        # @param Bucket: COS桶名
        # @type Bucket: String
        # @param CreateTime: COS桶创建时间
        # @type CreateTime: String
        # @param Valid: 1 -- 有效，0 -- 无效，资源可能已被删除。
        # @type Valid: Integer
        # @param ResourceId: DSPA为COS资源生成的资源ID
        # @type ResourceId: String
        # @param ResourceRegion: COS资源所处的地域
        # @type ResourceRegion: String
        # @param BindStatus: COS桶绑定状态
        # @type BindStatus: String
        # @param Storage: COS桶存储量
        # @type Storage: Float
        # @param GovernAuthStatus: 治理授权状态，0:关闭 1：开启
        # @type GovernAuthStatus: Integer

        attr_accessor :Bucket, :CreateTime, :Valid, :ResourceId, :ResourceRegion, :BindStatus, :Storage, :GovernAuthStatus

        def initialize(bucket=nil, createtime=nil, valid=nil, resourceid=nil, resourceregion=nil, bindstatus=nil, storage=nil, governauthstatus=nil)
          @Bucket = bucket
          @CreateTime = createtime
          @Valid = valid
          @ResourceId = resourceid
          @ResourceRegion = resourceregion
          @BindStatus = bindstatus
          @Storage = storage
          @GovernAuthStatus = governauthstatus
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @CreateTime = params['CreateTime']
          @Valid = params['Valid']
          @ResourceId = params['ResourceId']
          @ResourceRegion = params['ResourceRegion']
          @BindStatus = params['BindStatus']
          @Storage = params['Storage']
          @GovernAuthStatus = params['GovernAuthStatus']
        end
      end

      # DSPA数据源的数据库信息
      class DSPADataSourceDbInfo < TencentCloud::Common::AbstractModel
        # @param DbName: 数据库名称
        # @type DbName: String

        attr_accessor :DbName

        def initialize(dbname=nil)
          @DbName = dbname
        end

        def deserialize(params)
          @DbName = params['DbName']
        end
      end

      # 元数据类型
      class DSPAMetaType < TencentCloud::Common::AbstractModel
        # @param MetaType: 元数据类型
        # @type MetaType: String
        # @param Regions: 支持的此元数据类型的地域列表
        # @type Regions: Array
        # @param SupportedAuthTypes: 此元数据类型支持的授权类型：
        # account    -- 账户名密码授权，账户的最高只读权限需要由用户自行赋予；
        # automatic -- 一键授权，由DSPA自动生成账户名密码并自动在实例中给账户名赋予最高只读权限；
        # 如果此列表为空，表明此类资源不支持以上的授权机制，无法通过后台进行授权。
        # @type SupportedAuthTypes: Array

        attr_accessor :MetaType, :Regions, :SupportedAuthTypes

        def initialize(metatype=nil, regions=nil, supportedauthtypes=nil)
          @MetaType = metatype
          @Regions = regions
          @SupportedAuthTypes = supportedauthtypes
        end

        def deserialize(params)
          @MetaType = params['MetaType']
          @Regions = params['Regions']
          @SupportedAuthTypes = params['SupportedAuthTypes']
        end
      end

      # DSPA分类分级任务扫描的表信息
      class DSPATableInfo < TencentCloud::Common::AbstractModel
        # @param TableName: 表名
        # @type TableName: String

        attr_accessor :TableName

        def initialize(tablename=nil)
          @TableName = tablename
        end

        def deserialize(params)
          @TableName = params['TableName']
        end
      end

      # 敏感数据分类
      class DataCategory < TencentCloud::Common::AbstractModel
        # @param CategoryId: 分类ID
        # @type CategoryId: Integer
        # @param Name: 敏感数据分类名称
        # @type Name: String
        # @param Source: 敏感数据分类来源，取值：0 内置, 1 自定义
        # @type Source: Integer
        # @param RelateComplianceCount: 关联模板数量
        # @type RelateComplianceCount: Integer

        attr_accessor :CategoryId, :Name, :Source, :RelateComplianceCount

        def initialize(categoryid=nil, name=nil, source=nil, relatecompliancecount=nil)
          @CategoryId = categoryid
          @Name = name
          @Source = source
          @RelateComplianceCount = relatecompliancecount
        end

        def deserialize(params)
          @CategoryId = params['CategoryId']
          @Name = params['Name']
          @Source = params['Source']
          @RelateComplianceCount = params['RelateComplianceCount']
        end
      end

      # 扫描规则内容
      class DataContent < TencentCloud::Common::AbstractModel
        # @param RuleContent: 规则内容，可以是正则规则，关键词，
        # 忽略词扥
        # @type RuleContent: String
        # @param IsIgnoreCase: 是否区分大小写
        # false: 不区分大小写
        # true:区分大小写
        # @type IsIgnoreCase: Boolean

        attr_accessor :RuleContent, :IsIgnoreCase

        def initialize(rulecontent=nil, isignorecase=nil)
          @RuleContent = rulecontent
          @IsIgnoreCase = isignorecase
        end

        def deserialize(params)
          @RuleContent = params['RuleContent']
          @IsIgnoreCase = params['IsIgnoreCase']
        end
      end

      # 敏感数据识别规则
      class DataRule < TencentCloud::Common::AbstractModel
        # @param RuleType: 规则类型；取值：
        # keyword 关键字,
        # regex 正则
        # @type RuleType: String
        # @param RuleContent: 内容
        # @type RuleContent: String
        # @param ExtendParameters: 该字段是针对规则类型RuleType为keyword类型时的一个扩展属性
        # @type ExtendParameters: Array

        attr_accessor :RuleType, :RuleContent, :ExtendParameters

        def initialize(ruletype=nil, rulecontent=nil, extendparameters=nil)
          @RuleType = ruletype
          @RuleContent = rulecontent
          @ExtendParameters = extendparameters
        end

        def deserialize(params)
          @RuleType = params['RuleType']
          @RuleContent = params['RuleContent']
          unless params['ExtendParameters'].nil?
            @ExtendParameters = []
            params['ExtendParameters'].each do |i|
              datagovruleextendparameter_tmp = DatagovRuleExtendParameter.new
              datagovruleextendparameter_tmp.deserialize(i)
              @ExtendParameters << datagovruleextendparameter_tmp
            end
          end
        end
      end

      # 敏感数据识别规则集
      class DataRules < TencentCloud::Common::AbstractModel
        # @param Operator: 操作符；只能取and, or的其中一种
        # @type Operator: String
        # @param Contents: 规则
        # @type Contents: Array

        attr_accessor :Operator, :Contents

        def initialize(operator=nil, contents=nil)
          @Operator = operator
          @Contents = contents
        end

        def deserialize(params)
          @Operator = params['Operator']
          unless params['Contents'].nil?
            @Contents = []
            params['Contents'].each do |i|
              datarule_tmp = DataRule.new
              datarule_tmp.deserialize(i)
              @Contents << datarule_tmp
            end
          end
        end
      end

      # dsgc-资产梳理报表-数据源信息
      class DataSourceInfo < TencentCloud::Common::AbstractModel
        # @param DataSourceId: 数据源ID
        # @type DataSourceId: String
        # @param BindList: 针对rbd-就是绑定的db_name
        # @type BindList: Array

        attr_accessor :DataSourceId, :BindList

        def initialize(datasourceid=nil, bindlist=nil)
          @DataSourceId = datasourceid
          @BindList = bindlist
        end

        def deserialize(params)
          @DataSourceId = params['DataSourceId']
          @BindList = params['BindList']
        end
      end

      # 敏感数据识别规则扩展参数
      class DatagovRuleExtendParameter < TencentCloud::Common::AbstractModel
        # @param Name: 扩展参数名称，目前支持如下两个扩展属性名称：
        # IsFullWordMatch，表示是否全文匹配，该Name对应的Value可取值为"true"或"false":，默认值为"false"，
        # IsIgnoreCase，表示是否忽略大小写，该Name对应的Value可取值为"true"或"false"，默认值为"true"
        # @type Name: String
        # @param Value: 扩展参数值
        # @type Value: String

        attr_accessor :Name, :Value

        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # 查询绑定的db信息
      class DbInfo < TencentCloud::Common::AbstractModel
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param ValidStatus: 绑定的状态
        # @type ValidStatus: String
        # @param BindType: 绑定的类型
        # @type BindType: String

        attr_accessor :DbName, :ValidStatus, :BindType

        def initialize(dbname=nil, validstatus=nil, bindtype=nil)
          @DbName = dbname
          @ValidStatus = validstatus
          @BindType = bindtype
        end

        def deserialize(params)
          @DbName = params['DbName']
          @ValidStatus = params['ValidStatus']
          @BindType = params['BindType']
        end
      end

      # 数据库实例的DB绑定关系状态信息。
      class DbRelationStatusItem < TencentCloud::Common::AbstractModel
        # @param DbName: DB名称。
        # @type DbName: String
        # @param BindStatus: DB绑定状态。
        # @type BindStatus: String
        # @param ValidStatus: DB有效性状态。
        # @type ValidStatus: String

        attr_accessor :DbName, :BindStatus, :ValidStatus

        def initialize(dbname=nil, bindstatus=nil, validstatus=nil)
          @DbName = dbname
          @BindStatus = bindstatus
          @ValidStatus = validstatus
        end

        def deserialize(params)
          @DbName = params['DbName']
          @BindStatus = params['BindStatus']
          @ValidStatus = params['ValidStatus']
        end
      end

      # 数据库DB资源项
      class DbResourceItem < TencentCloud::Common::AbstractModel
        # @param DbName: DB名称。
        # @type DbName: String

        attr_accessor :DbName

        def initialize(dbname=nil)
          @DbName = dbname
        end

        def deserialize(params)
          @DbName = params['DbName']
        end
      end

      # database批量操作返回结果结构体
      class DbTaskResult < TencentCloud::Common::AbstractModel
        # @param Result: 结果类型。
        # @type Result: String
        # @param ResultDescription: 结果描述。
        # @type ResultDescription: String
        # @param ErrDescription: 错误信息描述。
        # @type ErrDescription: :class:`Tencentcloud::Dsgc.v20190723.models.ErrDescription`
        # @param ResourceId: 资源ID。
        # @type ResourceId: String
        # @param DbName: database名称。
        # @type DbName: String

        attr_accessor :Result, :ResultDescription, :ErrDescription, :ResourceId, :DbName

        def initialize(result=nil, resultdescription=nil, errdescription=nil, resourceid=nil, dbname=nil)
          @Result = result
          @ResultDescription = resultdescription
          @ErrDescription = errdescription
          @ResourceId = resourceid
          @DbName = dbname
        end

        def deserialize(params)
          @Result = params['Result']
          @ResultDescription = params['ResultDescription']
          unless params['ErrDescription'].nil?
            @ErrDescription = ErrDescription.new
            @ErrDescription.deserialize(params['ErrDescription'])
          end
          @ResourceId = params['ResourceId']
          @DbName = params['DbName']
        end
      end

      # DecribeSuggestRiskLevelMatrix请求参数结构体
      class DecribeSuggestRiskLevelMatrixRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspaId
        # @type DspaId: String
        # @param SensitiveLevelList: 分类分级等级列表
        # @type SensitiveLevelList: Array
        # @param VulnerabilityLevelList: 脆弱项等级列表
        # @type VulnerabilityLevelList: Array

        attr_accessor :DspaId, :SensitiveLevelList, :VulnerabilityLevelList

        def initialize(dspaid=nil, sensitivelevellist=nil, vulnerabilitylevellist=nil)
          @DspaId = dspaid
          @SensitiveLevelList = sensitivelevellist
          @VulnerabilityLevelList = vulnerabilitylevellist
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          unless params['SensitiveLevelList'].nil?
            @SensitiveLevelList = []
            params['SensitiveLevelList'].each do |i|
              riskmatrixlevel_tmp = RiskMatrixLevel.new
              riskmatrixlevel_tmp.deserialize(i)
              @SensitiveLevelList << riskmatrixlevel_tmp
            end
          end
          unless params['VulnerabilityLevelList'].nil?
            @VulnerabilityLevelList = []
            params['VulnerabilityLevelList'].each do |i|
              riskmatrixlevel_tmp = RiskMatrixLevel.new
              riskmatrixlevel_tmp.deserialize(i)
              @VulnerabilityLevelList << riskmatrixlevel_tmp
            end
          end
        end
      end

      # DecribeSuggestRiskLevelMatrix返回参数结构体
      class DecribeSuggestRiskLevelMatrixResponse < TencentCloud::Common::AbstractModel
        # @param SuggestRiskLevelMatrix: 矩阵
        # @type SuggestRiskLevelMatrix: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuggestRiskLevelMatrix, :RequestId

        def initialize(suggestrisklevelmatrix=nil, requestid=nil)
          @SuggestRiskLevelMatrix = suggestrisklevelmatrix
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SuggestRiskLevelMatrix'].nil?
            @SuggestRiskLevelMatrix = []
            params['SuggestRiskLevelMatrix'].each do |i|
              suggestrisklevelmatrix_tmp = SuggestRiskLevelMatrix.new
              suggestrisklevelmatrix_tmp.deserialize(i)
              @SuggestRiskLevelMatrix << suggestrisklevelmatrix_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteCosMetaResource请求参数结构体
      class DeleteCosMetaResourceRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: 实例Id。
        # @type DspaId: String
        # @param ResourceRegion: 资源所处地域。
        # @type ResourceRegion: String
        # @param ResourceIds: 资源实例ID。
        # @type ResourceIds: Array

        attr_accessor :DspaId, :ResourceRegion, :ResourceIds

        def initialize(dspaid=nil, resourceregion=nil, resourceids=nil)
          @DspaId = dspaid
          @ResourceRegion = resourceregion
          @ResourceIds = resourceids
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ResourceRegion = params['ResourceRegion']
          @ResourceIds = params['ResourceIds']
        end
      end

      # DeleteCosMetaResource返回参数结构体
      class DeleteCosMetaResourceResponse < TencentCloud::Common::AbstractModel
        # @param Results: 结果集合。
        # @type Results: Array
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Results, :DspaId, :RequestId

        def initialize(results=nil, dspaid=nil, requestid=nil)
          @Results = results
          @DspaId = dspaid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              dspataskresult_tmp = DspaTaskResult.new
              dspataskresult_tmp.deserialize(i)
              @Results << dspataskresult_tmp
            end
          end
          @DspaId = params['DspaId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteDSPAAssessmentTask请求参数结构体
      class DeleteDSPAAssessmentTaskRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例Id，格式“dspa-xxxxxxxx”
        # @type DspaId: String
        # @param TaskId: 评估任务Id，格式“task-xxxxxxxx”
        # @type TaskId: String

        attr_accessor :DspaId, :TaskId

        def initialize(dspaid=nil, taskid=nil)
          @DspaId = dspaid
          @TaskId = taskid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TaskId = params['TaskId']
        end
      end

      # DeleteDSPAAssessmentTask返回参数结构体
      class DeleteDSPAAssessmentTaskResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDSPACOSDiscoveryTask请求参数结构体
      class DeleteDSPACOSDiscoveryTaskRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer

        attr_accessor :DspaId, :TaskId

        def initialize(dspaid=nil, taskid=nil)
          @DspaId = dspaid
          @TaskId = taskid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TaskId = params['TaskId']
        end
      end

      # DeleteDSPACOSDiscoveryTask返回参数结构体
      class DeleteDSPACOSDiscoveryTaskResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDSPACOSDiscoveryTaskResult请求参数结构体
      class DeleteDSPACOSDiscoveryTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param BucketResultId: 扫描bucket结果ID
        # @type BucketResultId: Integer

        attr_accessor :DspaId, :BucketResultId

        def initialize(dspaid=nil, bucketresultid=nil)
          @DspaId = dspaid
          @BucketResultId = bucketresultid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @BucketResultId = params['BucketResultId']
        end
      end

      # DeleteDSPACOSDiscoveryTaskResult返回参数结构体
      class DeleteDSPACOSDiscoveryTaskResultResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDSPADiscoveryTask请求参数结构体
      class DeleteDSPADiscoveryTaskRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param DataSourceType: 数据源类型
        # @type DataSourceType: String

        attr_accessor :DspaId, :TaskId, :DataSourceType

        def initialize(dspaid=nil, taskid=nil, datasourcetype=nil)
          @DspaId = dspaid
          @TaskId = taskid
          @DataSourceType = datasourcetype
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TaskId = params['TaskId']
          @DataSourceType = params['DataSourceType']
        end
      end

      # DeleteDSPADiscoveryTask返回参数结构体
      class DeleteDSPADiscoveryTaskResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDSPADiscoveryTaskResult请求参数结构体
      class DeleteDSPADiscoveryTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param DbResultId: 扫描数据库结果ID
        # @type DbResultId: Integer

        attr_accessor :DspaId, :DbResultId

        def initialize(dspaid=nil, dbresultid=nil)
          @DspaId = dspaid
          @DbResultId = dbresultid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @DbResultId = params['DbResultId']
        end
      end

      # DeleteDSPADiscoveryTaskResult返回参数结构体
      class DeleteDSPADiscoveryTaskResultResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDSPAMetaResource请求参数结构体
      class DeleteDSPAMetaResourceRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param ResourceIDs: 用户云资源ID。
        # @type ResourceIDs: Array

        attr_accessor :DspaId, :ResourceIDs

        def initialize(dspaid=nil, resourceids=nil)
          @DspaId = dspaid
          @ResourceIDs = resourceids
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ResourceIDs = params['ResourceIDs']
        end
      end

      # DeleteDSPAMetaResource返回参数结构体
      class DeleteDSPAMetaResourceResponse < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param Results: 删除结果。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DspaId, :Results, :RequestId

        def initialize(dspaid=nil, results=nil, requestid=nil)
          @DspaId = dspaid
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              dspataskresult_tmp = DspaTaskResult.new
              dspataskresult_tmp.deserialize(i)
              @Results << dspataskresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetDetailDataExportResult请求参数结构体
      class DescribeAssetDetailDataExportResultRequest < TencentCloud::Common::AbstractModel
        # @param ExportTaskId: 导出任务id
        # @type ExportTaskId: Integer
        # @param DspaId: DSPA实例Id，格式“dspa-xxxxxxxx”
        # @type DspaId: String

        attr_accessor :ExportTaskId, :DspaId

        def initialize(exporttaskid=nil, dspaid=nil)
          @ExportTaskId = exporttaskid
          @DspaId = dspaid
        end

        def deserialize(params)
          @ExportTaskId = params['ExportTaskId']
          @DspaId = params['DspaId']
        end
      end

      # DescribeAssetDetailDataExportResult返回参数结构体
      class DescribeAssetDetailDataExportResultResponse < TencentCloud::Common::AbstractModel
        # @param ExportResult: 导出结果
        # @type ExportResult: String
        # @param ExportFileUrl: 导出文件地址
        # @type ExportFileUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExportResult, :ExportFileUrl, :RequestId

        def initialize(exportresult=nil, exportfileurl=nil, requestid=nil)
          @ExportResult = exportresult
          @ExportFileUrl = exportfileurl
          @RequestId = requestid
        end

        def deserialize(params)
          @ExportResult = params['ExportResult']
          @ExportFileUrl = params['ExportFileUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetOverview请求参数结构体
      class DescribeAssetOverviewRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param ComplianceId: 合规组id
        # @type ComplianceId: Integer
        # @param AssetList: 查询的资产信息列表
        # @type AssetList: Array

        attr_accessor :DspaId, :ComplianceId, :AssetList

        def initialize(dspaid=nil, complianceid=nil, assetlist=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
          @AssetList = assetlist
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
          unless params['AssetList'].nil?
            @AssetList = []
            params['AssetList'].each do |i|
              assetlist_tmp = AssetList.new
              assetlist_tmp.deserialize(i)
              @AssetList << assetlist_tmp
            end
          end
        end
      end

      # DescribeAssetOverview返回参数结构体
      class DescribeAssetOverviewResponse < TencentCloud::Common::AbstractModel
        # @param DBInstanceNums: 数据库实例id
        # @type DBInstanceNums: Integer
        # @param DBNums: 数据库个数
        # @type DBNums: Integer
        # @param TableNums: 表的个数
        # @type TableNums: Integer
        # @param FieldNums: 字段个数
        # @type FieldNums: Integer
        # @param DBInstanceDistribution: 数据库实例的分布情况
        # @type DBInstanceDistribution: Array
        # @param DBDistribution: db分布情况
        # @type DBDistribution: Array
        # @param BucketNums: cos桶的数量
        # @type BucketNums: Integer
        # @param FileNums: 文件个数
        # @type FileNums: Integer
        # @param Remark: 用于对用户进行提示信息
        # @type Remark: String
        # @param EsInstanceNums: es实例数量
        # @type EsInstanceNums: Integer
        # @param EsIndexNums: es索引数量
        # @type EsIndexNums: Integer
        # @param EsFieldNums: es字段数量
        # @type EsFieldNums: Integer
        # @param MongoInstanceNums: mongo实例数量
        # @type MongoInstanceNums: Integer
        # @param MongoDbNums: mongo数据库数量
        # @type MongoDbNums: Integer
        # @param MongoColNums: mongo集合数量
        # @type MongoColNums: Integer
        # @param MongoFieldNums: mongo字段数量
        # @type MongoFieldNums: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DBInstanceNums, :DBNums, :TableNums, :FieldNums, :DBInstanceDistribution, :DBDistribution, :BucketNums, :FileNums, :Remark, :EsInstanceNums, :EsIndexNums, :EsFieldNums, :MongoInstanceNums, :MongoDbNums, :MongoColNums, :MongoFieldNums, :RequestId

        def initialize(dbinstancenums=nil, dbnums=nil, tablenums=nil, fieldnums=nil, dbinstancedistribution=nil, dbdistribution=nil, bucketnums=nil, filenums=nil, remark=nil, esinstancenums=nil, esindexnums=nil, esfieldnums=nil, mongoinstancenums=nil, mongodbnums=nil, mongocolnums=nil, mongofieldnums=nil, requestid=nil)
          @DBInstanceNums = dbinstancenums
          @DBNums = dbnums
          @TableNums = tablenums
          @FieldNums = fieldnums
          @DBInstanceDistribution = dbinstancedistribution
          @DBDistribution = dbdistribution
          @BucketNums = bucketnums
          @FileNums = filenums
          @Remark = remark
          @EsInstanceNums = esinstancenums
          @EsIndexNums = esindexnums
          @EsFieldNums = esfieldnums
          @MongoInstanceNums = mongoinstancenums
          @MongoDbNums = mongodbnums
          @MongoColNums = mongocolnums
          @MongoFieldNums = mongofieldnums
          @RequestId = requestid
        end

        def deserialize(params)
          @DBInstanceNums = params['DBInstanceNums']
          @DBNums = params['DBNums']
          @TableNums = params['TableNums']
          @FieldNums = params['FieldNums']
          unless params['DBInstanceDistribution'].nil?
            @DBInstanceDistribution = []
            params['DBInstanceDistribution'].each do |i|
              note_tmp = Note.new
              note_tmp.deserialize(i)
              @DBInstanceDistribution << note_tmp
            end
          end
          unless params['DBDistribution'].nil?
            @DBDistribution = []
            params['DBDistribution'].each do |i|
              note_tmp = Note.new
              note_tmp.deserialize(i)
              @DBDistribution << note_tmp
            end
          end
          @BucketNums = params['BucketNums']
          @FileNums = params['FileNums']
          @Remark = params['Remark']
          @EsInstanceNums = params['EsInstanceNums']
          @EsIndexNums = params['EsIndexNums']
          @EsFieldNums = params['EsFieldNums']
          @MongoInstanceNums = params['MongoInstanceNums']
          @MongoDbNums = params['MongoDbNums']
          @MongoColNums = params['MongoColNums']
          @MongoFieldNums = params['MongoFieldNums']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBindDBList请求参数结构体
      class DescribeBindDBListRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param DataSourceType: 数据源类型
        # @type DataSourceType: String
        # @param DataSourceId: 数据源ID
        # @type DataSourceId: String

        attr_accessor :DspaId, :DataSourceType, :DataSourceId
        extend Gem::Deprecate
        deprecate :DataSourceType, :none, 2025, 6
        deprecate :DataSourceType=, :none, 2025, 6
        deprecate :DataSourceId, :none, 2025, 6
        deprecate :DataSourceId=, :none, 2025, 6

        def initialize(dspaid=nil, datasourcetype=nil, datasourceid=nil)
          @DspaId = dspaid
          @DataSourceType = datasourcetype
          @DataSourceId = datasourceid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @DataSourceType = params['DataSourceType']
          @DataSourceId = params['DataSourceId']
        end
      end

      # DescribeBindDBList返回参数结构体
      class DescribeBindDBListResponse < TencentCloud::Common::AbstractModel
        # @param BindDBList: 绑定的DB列表（已废弃）
        # @type BindDBList: Array
        # @param BindList: 绑定信息
        # @type BindList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BindDBList, :BindList, :RequestId

        def initialize(binddblist=nil, bindlist=nil, requestid=nil)
          @BindDBList = binddblist
          @BindList = bindlist
          @RequestId = requestid
        end

        def deserialize(params)
          @BindDBList = params['BindDBList']
          unless params['BindList'].nil?
            @BindList = []
            params['BindList'].each do |i|
              dbinstanceinfo_tmp = DBInstanceInfo.new
              dbinstanceinfo_tmp.deserialize(i)
              @BindList << dbinstanceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCOSAssetSensitiveDistribution请求参数结构体
      class DescribeCOSAssetSensitiveDistributionRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param ComplianceId: 合规组id
        # @type ComplianceId: Integer
        # @param AssetList: 查询的资产列表
        # @type AssetList: Array

        attr_accessor :DspaId, :ComplianceId, :AssetList

        def initialize(dspaid=nil, complianceid=nil, assetlist=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
          @AssetList = assetlist
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
          unless params['AssetList'].nil?
            @AssetList = []
            params['AssetList'].each do |i|
              assetlist_tmp = AssetList.new
              assetlist_tmp.deserialize(i)
              @AssetList << assetlist_tmp
            end
          end
        end
      end

      # DescribeCOSAssetSensitiveDistribution返回参数结构体
      class DescribeCOSAssetSensitiveDistributionResponse < TencentCloud::Common::AbstractModel
        # @param CosAsset: cos的涉敏资产
        # @type CosAsset: :class:`Tencentcloud::Dsgc.v20190723.models.CosAsset`
        # @param TopAsset: 涉敏top
        # @type TopAsset: Array
        # @param CosDetail: cos资产详情列表
        # @type CosDetail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CosAsset, :TopAsset, :CosDetail, :RequestId

        def initialize(cosasset=nil, topasset=nil, cosdetail=nil, requestid=nil)
          @CosAsset = cosasset
          @TopAsset = topasset
          @CosDetail = cosdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CosAsset'].nil?
            @CosAsset = CosAsset.new
            @CosAsset.deserialize(params['CosAsset'])
          end
          unless params['TopAsset'].nil?
            @TopAsset = []
            params['TopAsset'].each do |i|
              topasset_tmp = TopAsset.new
              topasset_tmp.deserialize(i)
              @TopAsset << topasset_tmp
            end
          end
          unless params['CosDetail'].nil?
            @CosDetail = []
            params['CosDetail'].each do |i|
              assetcosdetail_tmp = AssetCosDetail.new
              assetcosdetail_tmp.deserialize(i)
              @CosDetail << assetcosdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentHighRiskTop10Overview请求参数结构体
      class DescribeDSPAAssessmentHighRiskTop10OverviewRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例Id
        # @type DspaId: String
        # @param TemplateId: 评估模板id
        # @type TemplateId: Integer
        # @param Filter: 过滤条件， rdb（数据库）cos（对象存储）
        # 不传就是全部
        # @type Filter: String

        attr_accessor :DspaId, :TemplateId, :Filter

        def initialize(dspaid=nil, templateid=nil, filter=nil)
          @DspaId = dspaid
          @TemplateId = templateid
          @Filter = filter
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TemplateId = params['TemplateId']
          @Filter = params['Filter']
        end
      end

      # DescribeDSPAAssessmentHighRiskTop10Overview返回参数结构体
      class DescribeDSPAAssessmentHighRiskTop10OverviewResponse < TencentCloud::Common::AbstractModel
        # @param AssetsList: 含高风险资产TOP10的列表数据
        # @type AssetsList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AssetsList, :RequestId

        def initialize(assetslist=nil, requestid=nil)
          @AssetsList = assetslist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AssetsList'].nil?
            @AssetsList = []
            params['AssetsList'].each do |i|
              highriskassetsdetail_tmp = HighRiskAssetsDetail.new
              highriskassetsdetail_tmp.deserialize(i)
              @AssetsList << highriskassetsdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentLatestRiskDetailInfo请求参数结构体
      class DescribeDSPAAssessmentLatestRiskDetailInfoRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例Id
        # @type DspaId: String
        # @param TemplateId: 评估模板id
        # @type TemplateId: Integer
        # @param RiskId: 风险id
        # @type RiskId: Integer

        attr_accessor :DspaId, :TemplateId, :RiskId

        def initialize(dspaid=nil, templateid=nil, riskid=nil)
          @DspaId = dspaid
          @TemplateId = templateid
          @RiskId = riskid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TemplateId = params['TemplateId']
          @RiskId = params['RiskId']
        end
      end

      # DescribeDSPAAssessmentLatestRiskDetailInfo返回参数结构体
      class DescribeDSPAAssessmentLatestRiskDetailInfoResponse < TencentCloud::Common::AbstractModel
        # @param DataSourceId: 数据源id
        # @type DataSourceId: String
        # @param DataSourceName: 数据源name
        # @type DataSourceName: String
        # @param AssetName: 资产对象名称
        # @type AssetName: String
        # @param AssessmentTemplateId: 风险评估模板id
        # @type AssessmentTemplateId: Integer
        # @param IdentifyTemplateId: 分类分级的模板id
        # @type IdentifyTemplateId: Integer
        # @param RiskType: 风险类型
        # @type RiskType: String
        # @param RiskName: 风险项
        # @type RiskName: String
        # @param RiskDescription: 风险的描述
        # @type RiskDescription: String
        # @param RiskLevel: 风险的级别
        # @type RiskLevel: String
        # @param SuggestAction: 处置的建议
        # @type SuggestAction: String
        # @param Status: 处置状态
        # @type Status: Integer
        # @param Remark: 备注
        # @type Remark: String
        # @param SecurityProduct: 安全产品
        # @type SecurityProduct: Array
        # @param RiskDimension: 风险归属
        # @type RiskDimension: String
        # @param RelationAsset: 关联数据库（如果风险归属是instance）
        # @type RelationAsset: Array
        # @param AccountRiskDetail: 风险账号详情
        # @type AccountRiskDetail: Array
        # @param PrivilegeRiskDetail: 权限风险详情
        # @type PrivilegeRiskDetail: Array
        # @param PolicyRiskCosFileList: 策略风险的cos风险文件列表
        # @type PolicyRiskCosFileList: Array
        # @param AKSKLeak: AKSK泄漏列表
        # @type AKSKLeak: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataSourceId, :DataSourceName, :AssetName, :AssessmentTemplateId, :IdentifyTemplateId, :RiskType, :RiskName, :RiskDescription, :RiskLevel, :SuggestAction, :Status, :Remark, :SecurityProduct, :RiskDimension, :RelationAsset, :AccountRiskDetail, :PrivilegeRiskDetail, :PolicyRiskCosFileList, :AKSKLeak, :RequestId

        def initialize(datasourceid=nil, datasourcename=nil, assetname=nil, assessmenttemplateid=nil, identifytemplateid=nil, risktype=nil, riskname=nil, riskdescription=nil, risklevel=nil, suggestaction=nil, status=nil, remark=nil, securityproduct=nil, riskdimension=nil, relationasset=nil, accountriskdetail=nil, privilegeriskdetail=nil, policyriskcosfilelist=nil, akskleak=nil, requestid=nil)
          @DataSourceId = datasourceid
          @DataSourceName = datasourcename
          @AssetName = assetname
          @AssessmentTemplateId = assessmenttemplateid
          @IdentifyTemplateId = identifytemplateid
          @RiskType = risktype
          @RiskName = riskname
          @RiskDescription = riskdescription
          @RiskLevel = risklevel
          @SuggestAction = suggestaction
          @Status = status
          @Remark = remark
          @SecurityProduct = securityproduct
          @RiskDimension = riskdimension
          @RelationAsset = relationasset
          @AccountRiskDetail = accountriskdetail
          @PrivilegeRiskDetail = privilegeriskdetail
          @PolicyRiskCosFileList = policyriskcosfilelist
          @AKSKLeak = akskleak
          @RequestId = requestid
        end

        def deserialize(params)
          @DataSourceId = params['DataSourceId']
          @DataSourceName = params['DataSourceName']
          @AssetName = params['AssetName']
          @AssessmentTemplateId = params['AssessmentTemplateId']
          @IdentifyTemplateId = params['IdentifyTemplateId']
          @RiskType = params['RiskType']
          @RiskName = params['RiskName']
          @RiskDescription = params['RiskDescription']
          @RiskLevel = params['RiskLevel']
          @SuggestAction = params['SuggestAction']
          @Status = params['Status']
          @Remark = params['Remark']
          unless params['SecurityProduct'].nil?
            @SecurityProduct = []
            params['SecurityProduct'].each do |i|
              securityproduct_tmp = SecurityProduct.new
              securityproduct_tmp.deserialize(i)
              @SecurityProduct << securityproduct_tmp
            end
          end
          @RiskDimension = params['RiskDimension']
          @RelationAsset = params['RelationAsset']
          unless params['AccountRiskDetail'].nil?
            @AccountRiskDetail = []
            params['AccountRiskDetail'].each do |i|
              accountrisk_tmp = AccountRisk.new
              accountrisk_tmp.deserialize(i)
              @AccountRiskDetail << accountrisk_tmp
            end
          end
          unless params['PrivilegeRiskDetail'].nil?
            @PrivilegeRiskDetail = []
            params['PrivilegeRiskDetail'].each do |i|
              privilegerisk_tmp = PrivilegeRisk.new
              privilegerisk_tmp.deserialize(i)
              @PrivilegeRiskDetail << privilegerisk_tmp
            end
          end
          @PolicyRiskCosFileList = params['PolicyRiskCosFileList']
          unless params['AKSKLeak'].nil?
            @AKSKLeak = []
            params['AKSKLeak'].each do |i|
              akskleak_tmp = AKSKLeak.new
              akskleak_tmp.deserialize(i)
              @AKSKLeak << akskleak_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentLatestRiskList请求参数结构体
      class DescribeDSPAAssessmentLatestRiskListRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例Id
        # @type DspaId: String
        # @param TemplateId: 评估模板id
        # @type TemplateId: Integer
        # @param Limit: 限制条数
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: String
        # @param DataSourceId: 资产名称，数据源id
        # @type DataSourceId: String
        # @param RiskType: 风险类型
        # @type RiskType: String
        # @param ControlItemId: 风险项
        # @type ControlItemId: String
        # @param Status: 风险状态
        # @type Status: Integer
        # @param BeginTime: 扫描开始时间
        # @type BeginTime: String
        # @param EndTime: 扫描结束时间
        # @type EndTime: String
        # @param RiskLevel: 风险等级筛选
        # @type RiskLevel: String
        # @param RiskSide: 风险面筛选
        # @type RiskSide: Array
        # @param TimeSort: ASC 正序，DESC倒叙
        # @type TimeSort: String

        attr_accessor :DspaId, :TemplateId, :Limit, :Offset, :DataSourceId, :RiskType, :ControlItemId, :Status, :BeginTime, :EndTime, :RiskLevel, :RiskSide, :TimeSort

        def initialize(dspaid=nil, templateid=nil, limit=nil, offset=nil, datasourceid=nil, risktype=nil, controlitemid=nil, status=nil, begintime=nil, endtime=nil, risklevel=nil, riskside=nil, timesort=nil)
          @DspaId = dspaid
          @TemplateId = templateid
          @Limit = limit
          @Offset = offset
          @DataSourceId = datasourceid
          @RiskType = risktype
          @ControlItemId = controlitemid
          @Status = status
          @BeginTime = begintime
          @EndTime = endtime
          @RiskLevel = risklevel
          @RiskSide = riskside
          @TimeSort = timesort
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TemplateId = params['TemplateId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @DataSourceId = params['DataSourceId']
          @RiskType = params['RiskType']
          @ControlItemId = params['ControlItemId']
          @Status = params['Status']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @RiskLevel = params['RiskLevel']
          @RiskSide = params['RiskSide']
          @TimeSort = params['TimeSort']
        end
      end

      # DescribeDSPAAssessmentLatestRiskList返回参数结构体
      class DescribeDSPAAssessmentLatestRiskListResponse < TencentCloud::Common::AbstractModel
        # @param LatestRiskList: 最新风险详情列表
        # @type LatestRiskList: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LatestRiskList, :TotalCount, :RequestId

        def initialize(latestrisklist=nil, totalcount=nil, requestid=nil)
          @LatestRiskList = latestrisklist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LatestRiskList'].nil?
            @LatestRiskList = []
            params['LatestRiskList'].each do |i|
              riskiteminfo_tmp = RiskItemInfo.new
              riskiteminfo_tmp.deserialize(i)
              @LatestRiskList << riskiteminfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentNewDiscoveredRiskOverview请求参数结构体
      class DescribeDSPAAssessmentNewDiscoveredRiskOverviewRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param TemplateId: 评估模板id
        # @type TemplateId: Integer

        attr_accessor :DspaId, :TemplateId

        def initialize(dspaid=nil, templateid=nil)
          @DspaId = dspaid
          @TemplateId = templateid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeDSPAAssessmentNewDiscoveredRiskOverview返回参数结构体
      class DescribeDSPAAssessmentNewDiscoveredRiskOverviewResponse < TencentCloud::Common::AbstractModel
        # @param NewDiscoveredRiskCount: 待处理的风险数
        # @type NewDiscoveredRiskCount: Integer
        # @param AffectedAssetCount: 受影响的资产数
        # @type AffectedAssetCount: Integer
        # @param WeekRatio: 周同比
        # @type WeekRatio: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NewDiscoveredRiskCount, :AffectedAssetCount, :WeekRatio, :RequestId

        def initialize(newdiscoveredriskcount=nil, affectedassetcount=nil, weekratio=nil, requestid=nil)
          @NewDiscoveredRiskCount = newdiscoveredriskcount
          @AffectedAssetCount = affectedassetcount
          @WeekRatio = weekratio
          @RequestId = requestid
        end

        def deserialize(params)
          @NewDiscoveredRiskCount = params['NewDiscoveredRiskCount']
          @AffectedAssetCount = params['AffectedAssetCount']
          @WeekRatio = params['WeekRatio']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentPendingRiskOverview请求参数结构体
      class DescribeDSPAAssessmentPendingRiskOverviewRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param TemplateId: 评估模板id
        # @type TemplateId: Integer

        attr_accessor :DspaId, :TemplateId

        def initialize(dspaid=nil, templateid=nil)
          @DspaId = dspaid
          @TemplateId = templateid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeDSPAAssessmentPendingRiskOverview返回参数结构体
      class DescribeDSPAAssessmentPendingRiskOverviewResponse < TencentCloud::Common::AbstractModel
        # @param PendingRiskCount: 待处理的风险数
        # @type PendingRiskCount: Integer
        # @param AffectedAssetCount: 受影响的资产数
        # @type AffectedAssetCount: Integer
        # @param WeekRatio: 周同比
        # @type WeekRatio: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PendingRiskCount, :AffectedAssetCount, :WeekRatio, :RequestId

        def initialize(pendingriskcount=nil, affectedassetcount=nil, weekratio=nil, requestid=nil)
          @PendingRiskCount = pendingriskcount
          @AffectedAssetCount = affectedassetcount
          @WeekRatio = weekratio
          @RequestId = requestid
        end

        def deserialize(params)
          @PendingRiskCount = params['PendingRiskCount']
          @AffectedAssetCount = params['AffectedAssetCount']
          @WeekRatio = params['WeekRatio']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentProcessingRiskOverview请求参数结构体
      class DescribeDSPAAssessmentProcessingRiskOverviewRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param TemplateId: 评估模板id
        # @type TemplateId: Integer

        attr_accessor :DspaId, :TemplateId

        def initialize(dspaid=nil, templateid=nil)
          @DspaId = dspaid
          @TemplateId = templateid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeDSPAAssessmentProcessingRiskOverview返回参数结构体
      class DescribeDSPAAssessmentProcessingRiskOverviewResponse < TencentCloud::Common::AbstractModel
        # @param ProcessingRiskCount: 待处理的风险数
        # @type ProcessingRiskCount: Integer
        # @param AffectedAssetCount: 受影响的资产数
        # @type AffectedAssetCount: Integer
        # @param WeekRatio: 周同比
        # @type WeekRatio: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProcessingRiskCount, :AffectedAssetCount, :WeekRatio, :RequestId

        def initialize(processingriskcount=nil, affectedassetcount=nil, weekratio=nil, requestid=nil)
          @ProcessingRiskCount = processingriskcount
          @AffectedAssetCount = affectedassetcount
          @WeekRatio = weekratio
          @RequestId = requestid
        end

        def deserialize(params)
          @ProcessingRiskCount = params['ProcessingRiskCount']
          @AffectedAssetCount = params['AffectedAssetCount']
          @WeekRatio = params['WeekRatio']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentRiskAmountOverview请求参数结构体
      class DescribeDSPAAssessmentRiskAmountOverviewRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param TemplateId: 评估模板id
        # @type TemplateId: Integer

        attr_accessor :DspaId, :TemplateId

        def initialize(dspaid=nil, templateid=nil)
          @DspaId = dspaid
          @TemplateId = templateid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeDSPAAssessmentRiskAmountOverview返回参数结构体
      class DescribeDSPAAssessmentRiskAmountOverviewResponse < TencentCloud::Common::AbstractModel
        # @param TotalRiskCount: 风险总数
        # @type TotalRiskCount: Integer
        # @param TotalAffectedAssetCount: 受影响的资产数
        # @type TotalAffectedAssetCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalRiskCount, :TotalAffectedAssetCount, :RequestId

        def initialize(totalriskcount=nil, totalaffectedassetcount=nil, requestid=nil)
          @TotalRiskCount = totalriskcount
          @TotalAffectedAssetCount = totalaffectedassetcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalRiskCount = params['TotalRiskCount']
          @TotalAffectedAssetCount = params['TotalAffectedAssetCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentRiskDatasourceTop5请求参数结构体
      class DescribeDSPAAssessmentRiskDatasourceTop5Request < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String

        attr_accessor :DspaId

        def initialize(dspaid=nil)
          @DspaId = dspaid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
        end
      end

      # DescribeDSPAAssessmentRiskDatasourceTop5返回参数结构体
      class DescribeDSPAAssessmentRiskDatasourceTop5Response < TencentCloud::Common::AbstractModel
        # @param Items: 风险值
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId

        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              riskitem_tmp = RiskItem.new
              riskitem_tmp.deserialize(i)
              @Items << riskitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentRiskDealedOverview请求参数结构体
      class DescribeDSPAAssessmentRiskDealedOverviewRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String

        attr_accessor :DspaId

        def initialize(dspaid=nil)
          @DspaId = dspaid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
        end
      end

      # DescribeDSPAAssessmentRiskDealedOverview返回参数结构体
      class DescribeDSPAAssessmentRiskDealedOverviewResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 遗留待处理风险总数
        # @type TotalCount: Integer
        # @param YesterdayDealedCount: 昨日完成风险处置数
        # @type YesterdayDealedCount: Integer
        # @param UnDealedRiskWeekRatio: 遗留待处理风险数周同比
        # @type UnDealedRiskWeekRatio: Float
        # @param UnDealedRiskDayRatio: 遗留待处理风险数日环比
        # @type UnDealedRiskDayRatio: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :YesterdayDealedCount, :UnDealedRiskWeekRatio, :UnDealedRiskDayRatio, :RequestId

        def initialize(totalcount=nil, yesterdaydealedcount=nil, undealedriskweekratio=nil, undealedriskdayratio=nil, requestid=nil)
          @TotalCount = totalcount
          @YesterdayDealedCount = yesterdaydealedcount
          @UnDealedRiskWeekRatio = undealedriskweekratio
          @UnDealedRiskDayRatio = undealedriskdayratio
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @YesterdayDealedCount = params['YesterdayDealedCount']
          @UnDealedRiskWeekRatio = params['UnDealedRiskWeekRatio']
          @UnDealedRiskDayRatio = params['UnDealedRiskDayRatio']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentRiskDealedTrend请求参数结构体
      class DescribeDSPAAssessmentRiskDealedTrendRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param StartTime: 开始日期
        # @type StartTime: String
        # @param EndTime: 结束日期
        # @type EndTime: String
        # @param TemplateId: 评估模板id
        # @type TemplateId: String

        attr_accessor :DspaId, :StartTime, :EndTime, :TemplateId

        def initialize(dspaid=nil, starttime=nil, endtime=nil, templateid=nil)
          @DspaId = dspaid
          @StartTime = starttime
          @EndTime = endtime
          @TemplateId = templateid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeDSPAAssessmentRiskDealedTrend返回参数结构体
      class DescribeDSPAAssessmentRiskDealedTrendResponse < TencentCloud::Common::AbstractModel
        # @param Items: 趋势统计结果
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId

        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              riskdealedtrenditem_tmp = RiskDealedTrendItem.new
              riskdealedtrenditem_tmp.deserialize(i)
              @Items << riskdealedtrenditem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentRiskDistributionOverview请求参数结构体
      class DescribeDSPAAssessmentRiskDistributionOverviewRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例Id
        # @type DspaId: String
        # @param TemplateId: 评估模板id
        # @type TemplateId: Integer
        # @param Filter: 风险资产分布的过滤条件
        # （rdb，cos，不传就筛选全部）
        # @type Filter: String

        attr_accessor :DspaId, :TemplateId, :Filter

        def initialize(dspaid=nil, templateid=nil, filter=nil)
          @DspaId = dspaid
          @TemplateId = templateid
          @Filter = filter
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TemplateId = params['TemplateId']
          @Filter = params['Filter']
        end
      end

      # DescribeDSPAAssessmentRiskDistributionOverview返回参数结构体
      class DescribeDSPAAssessmentRiskDistributionOverviewResponse < TencentCloud::Common::AbstractModel
        # @param RiskTypeDistribution: 风险类型分布
        # @type RiskTypeDistribution: Array
        # @param RiskDetailDistribution: 风险详情分布
        # @type RiskDetailDistribution: Array
        # @param RiskAssetsDistribution: 风险资产详情
        # @type RiskAssetsDistribution: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RiskTypeDistribution, :RiskDetailDistribution, :RiskAssetsDistribution, :RequestId

        def initialize(risktypedistribution=nil, riskdetaildistribution=nil, riskassetsdistribution=nil, requestid=nil)
          @RiskTypeDistribution = risktypedistribution
          @RiskDetailDistribution = riskdetaildistribution
          @RiskAssetsDistribution = riskassetsdistribution
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RiskTypeDistribution'].nil?
            @RiskTypeDistribution = []
            params['RiskTypeDistribution'].each do |i|
              note_tmp = Note.new
              note_tmp.deserialize(i)
              @RiskTypeDistribution << note_tmp
            end
          end
          unless params['RiskDetailDistribution'].nil?
            @RiskDetailDistribution = []
            params['RiskDetailDistribution'].each do |i|
              note_tmp = Note.new
              note_tmp.deserialize(i)
              @RiskDetailDistribution << note_tmp
            end
          end
          unless params['RiskAssetsDistribution'].nil?
            @RiskAssetsDistribution = []
            params['RiskAssetsDistribution'].each do |i|
              note_tmp = Note.new
              note_tmp.deserialize(i)
              @RiskAssetsDistribution << note_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentRiskItemTop5请求参数结构体
      class DescribeDSPAAssessmentRiskItemTop5Request < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String

        attr_accessor :DspaId

        def initialize(dspaid=nil)
          @DspaId = dspaid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
        end
      end

      # DescribeDSPAAssessmentRiskItemTop5返回参数结构体
      class DescribeDSPAAssessmentRiskItemTop5Response < TencentCloud::Common::AbstractModel
        # @param Items: 风险结果
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId

        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              riskitem_tmp = RiskItem.new
              riskitem_tmp.deserialize(i)
              @Items << riskitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentRiskLevelDetail请求参数结构体
      class DescribeDSPAAssessmentRiskLevelDetailRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param RiskLevelId: 风险级别id
        # @type RiskLevelId: Integer

        attr_accessor :DspaId, :RiskLevelId

        def initialize(dspaid=nil, risklevelid=nil)
          @DspaId = dspaid
          @RiskLevelId = risklevelid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @RiskLevelId = params['RiskLevelId']
        end
      end

      # DescribeDSPAAssessmentRiskLevelDetail返回参数结构体
      class DescribeDSPAAssessmentRiskLevelDetailResponse < TencentCloud::Common::AbstractModel
        # @param RiskLevelName: 风险级别名称
        # @type RiskLevelName: String
        # @param RiskLevelDescription: 风险级别描述
        # @type RiskLevelDescription: String
        # @param IdentifyComplianceId: 分类分级id
        # @type IdentifyComplianceId: Integer
        # @param IdentifyComplianceName: 分类分级模板名称
        # @type IdentifyComplianceName: String
        # @param RiskLevelMatrix: 风险数据
        # @type RiskLevelMatrix: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RiskLevelName, :RiskLevelDescription, :IdentifyComplianceId, :IdentifyComplianceName, :RiskLevelMatrix, :RequestId

        def initialize(risklevelname=nil, riskleveldescription=nil, identifycomplianceid=nil, identifycompliancename=nil, risklevelmatrix=nil, requestid=nil)
          @RiskLevelName = risklevelname
          @RiskLevelDescription = riskleveldescription
          @IdentifyComplianceId = identifycomplianceid
          @IdentifyComplianceName = identifycompliancename
          @RiskLevelMatrix = risklevelmatrix
          @RequestId = requestid
        end

        def deserialize(params)
          @RiskLevelName = params['RiskLevelName']
          @RiskLevelDescription = params['RiskLevelDescription']
          @IdentifyComplianceId = params['IdentifyComplianceId']
          @IdentifyComplianceName = params['IdentifyComplianceName']
          unless params['RiskLevelMatrix'].nil?
            @RiskLevelMatrix = []
            params['RiskLevelMatrix'].each do |i|
              risklevelmatrix_tmp = RiskLevelMatrix.new
              risklevelmatrix_tmp.deserialize(i)
              @RiskLevelMatrix << risklevelmatrix_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentRiskLevelList请求参数结构体
      class DescribeDSPAAssessmentRiskLevelListRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param Limit: 限制条数
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer

        attr_accessor :DspaId, :Limit, :Offset

        def initialize(dspaid=nil, limit=nil, offset=nil)
          @DspaId = dspaid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDSPAAssessmentRiskLevelList返回参数结构体
      class DescribeDSPAAssessmentRiskLevelListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RiskLevelList: 风险等级列表
        # @type RiskLevelList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RiskLevelList, :RequestId

        def initialize(totalcount=nil, risklevellist=nil, requestid=nil)
          @TotalCount = totalcount
          @RiskLevelList = risklevellist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RiskLevelList'].nil?
            @RiskLevelList = []
            params['RiskLevelList'].each do |i|
              risklevelrisk_tmp = RiskLevelRisk.new
              risklevelrisk_tmp.deserialize(i)
              @RiskLevelList << risklevelrisk_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentRiskLevelTrend请求参数结构体
      class DescribeDSPAAssessmentRiskLevelTrendRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param StartTime: 开始日期
        # @type StartTime: String
        # @param EndTime: 结束时日期
        # @type EndTime: String
        # @param TemplateId: 评估模板id
        # @type TemplateId: String

        attr_accessor :DspaId, :StartTime, :EndTime, :TemplateId

        def initialize(dspaid=nil, starttime=nil, endtime=nil, templateid=nil)
          @DspaId = dspaid
          @StartTime = starttime
          @EndTime = endtime
          @TemplateId = templateid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeDSPAAssessmentRiskLevelTrend返回参数结构体
      class DescribeDSPAAssessmentRiskLevelTrendResponse < TencentCloud::Common::AbstractModel
        # @param Items: 结果集
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId

        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              riskleveltrenditem_tmp = RiskLevelTrendItem.new
              riskleveltrenditem_tmp.deserialize(i)
              @Items << riskleveltrenditem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentRiskOverview请求参数结构体
      class DescribeDSPAAssessmentRiskOverviewRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String

        attr_accessor :DspaId

        def initialize(dspaid=nil)
          @DspaId = dspaid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
        end
      end

      # DescribeDSPAAssessmentRiskOverview返回参数结构体
      class DescribeDSPAAssessmentRiskOverviewResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 风险总数
        # @type TotalCount: Integer
        # @param HighRiskCount: 高危风险数
        # @type HighRiskCount: Integer
        # @param HighRiskWeekRatio: 周同比
        # @type HighRiskWeekRatio: Float
        # @param HighRiskDayRatio: 高危风险数日环比
        # @type HighRiskDayRatio: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :HighRiskCount, :HighRiskWeekRatio, :HighRiskDayRatio, :RequestId

        def initialize(totalcount=nil, highriskcount=nil, highriskweekratio=nil, highriskdayratio=nil, requestid=nil)
          @TotalCount = totalcount
          @HighRiskCount = highriskcount
          @HighRiskWeekRatio = highriskweekratio
          @HighRiskDayRatio = highriskdayratio
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @HighRiskCount = params['HighRiskCount']
          @HighRiskWeekRatio = params['HighRiskWeekRatio']
          @HighRiskDayRatio = params['HighRiskDayRatio']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentRiskProcessHistory请求参数结构体
      class DescribeDSPAAssessmentRiskProcessHistoryRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param RiskId: 风险id
        # @type RiskId: Integer

        attr_accessor :DspaId, :RiskId

        def initialize(dspaid=nil, riskid=nil)
          @DspaId = dspaid
          @RiskId = riskid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @RiskId = params['RiskId']
        end
      end

      # DescribeDSPAAssessmentRiskProcessHistory返回参数结构体
      class DescribeDSPAAssessmentRiskProcessHistoryResponse < TencentCloud::Common::AbstractModel
        # @param ProcessHistory: 处理的历史
        # @type ProcessHistory: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProcessHistory, :RequestId

        def initialize(processhistory=nil, requestid=nil)
          @ProcessHistory = processhistory
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProcessHistory'].nil?
            @ProcessHistory = []
            params['ProcessHistory'].each do |i|
              processhistory_tmp = ProcessHistory.new
              processhistory_tmp.deserialize(i)
              @ProcessHistory << processhistory_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentRiskSideDistributed请求参数结构体
      class DescribeDSPAAssessmentRiskSideDistributedRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param TemplateId: 评估模板id
        # @type TemplateId: Integer

        attr_accessor :DspaId, :TemplateId

        def initialize(dspaid=nil, templateid=nil)
          @DspaId = dspaid
          @TemplateId = templateid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeDSPAAssessmentRiskSideDistributed返回参数结构体
      class DescribeDSPAAssessmentRiskSideDistributedResponse < TencentCloud::Common::AbstractModel
        # @param RiskSideDistributed: 风险面的分布
        # @type RiskSideDistributed: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RiskSideDistributed, :RequestId

        def initialize(risksidedistributed=nil, requestid=nil)
          @RiskSideDistributed = risksidedistributed
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RiskSideDistributed'].nil?
            @RiskSideDistributed = []
            params['RiskSideDistributed'].each do |i|
              risksidedistributed_tmp = RiskSideDistributed.new
              risksidedistributed_tmp.deserialize(i)
              @RiskSideDistributed << risksidedistributed_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentRiskSideList请求参数结构体
      class DescribeDSPAAssessmentRiskSideListRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param TemplateId: 评估模板id
        # @type TemplateId: Integer

        attr_accessor :DspaId, :TemplateId

        def initialize(dspaid=nil, templateid=nil)
          @DspaId = dspaid
          @TemplateId = templateid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeDSPAAssessmentRiskSideList返回参数结构体
      class DescribeDSPAAssessmentRiskSideListResponse < TencentCloud::Common::AbstractModel
        # @param RiskSideItmeList: 风险面列表
        # @type RiskSideItmeList: Array
        # @param RiskSideItemList: 风险面列表
        # @type RiskSideItemList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RiskSideItmeList, :RiskSideItemList, :RequestId
        extend Gem::Deprecate
        deprecate :RiskSideItmeList, :none, 2025, 6
        deprecate :RiskSideItmeList=, :none, 2025, 6

        def initialize(risksideitmelist=nil, risksideitemlist=nil, requestid=nil)
          @RiskSideItmeList = risksideitmelist
          @RiskSideItemList = risksideitemlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RiskSideItmeList'].nil?
            @RiskSideItmeList = []
            params['RiskSideItmeList'].each do |i|
              note_tmp = Note.new
              note_tmp.deserialize(i)
              @RiskSideItmeList << note_tmp
            end
          end
          unless params['RiskSideItemList'].nil?
            @RiskSideItemList = []
            params['RiskSideItemList'].each do |i|
              note_tmp = Note.new
              note_tmp.deserialize(i)
              @RiskSideItemList << note_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentRiskTemplateDetail请求参数结构体
      class DescribeDSPAAssessmentRiskTemplateDetailRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param TemplateId: 模板id
        # @type TemplateId: Integer
        # @param Limit: 限制条数
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer

        attr_accessor :DspaId, :TemplateId, :Limit, :Offset

        def initialize(dspaid=nil, templateid=nil, limit=nil, offset=nil)
          @DspaId = dspaid
          @TemplateId = templateid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TemplateId = params['TemplateId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDSPAAssessmentRiskTemplateDetail返回参数结构体
      class DescribeDSPAAssessmentRiskTemplateDetailResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板id
        # @type TemplateId: Integer
        # @param TemplateName: 模板名称
        # @type TemplateName: String
        # @param TemplateDescription: 模板的描述
        # @type TemplateDescription: String
        # @param RiskLevelId: 风险等级
        # @type RiskLevelId: Integer
        # @param RiskLevelName: 风险等级名称
        # @type RiskLevelName: String
        # @param RiskItemList: 脆弱项配置列表
        # @type RiskItemList: Array
        # @param TotalCount: 脆弱项配置条数
        # @type TotalCount: Integer
        # @param TaskCitations: 被任务引用次数
        # @type TaskCitations: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateId, :TemplateName, :TemplateDescription, :RiskLevelId, :RiskLevelName, :RiskItemList, :TotalCount, :TaskCitations, :RequestId

        def initialize(templateid=nil, templatename=nil, templatedescription=nil, risklevelid=nil, risklevelname=nil, riskitemlist=nil, totalcount=nil, taskcitations=nil, requestid=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @TemplateDescription = templatedescription
          @RiskLevelId = risklevelid
          @RiskLevelName = risklevelname
          @RiskItemList = riskitemlist
          @TotalCount = totalcount
          @TaskCitations = taskcitations
          @RequestId = requestid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @TemplateDescription = params['TemplateDescription']
          @RiskLevelId = params['RiskLevelId']
          @RiskLevelName = params['RiskLevelName']
          unless params['RiskItemList'].nil?
            @RiskItemList = []
            params['RiskItemList'].each do |i|
              assessmentriskitem_tmp = AssessmentRiskItem.new
              assessmentriskitem_tmp.deserialize(i)
              @RiskItemList << assessmentriskitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @TaskCitations = params['TaskCitations']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentRiskTemplateVulnerableList请求参数结构体
      class DescribeDSPAAssessmentRiskTemplateVulnerableListRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param Limit: 限制条数
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param RiskType: 风险类型
        # @type RiskType: String
        # @param RiskName: 风险名称
        # @type RiskName: String
        # @param RiskSide: 风险面
        # @type RiskSide: String

        attr_accessor :DspaId, :Limit, :Offset, :RiskType, :RiskName, :RiskSide

        def initialize(dspaid=nil, limit=nil, offset=nil, risktype=nil, riskname=nil, riskside=nil)
          @DspaId = dspaid
          @Limit = limit
          @Offset = offset
          @RiskType = risktype
          @RiskName = riskname
          @RiskSide = riskside
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @RiskType = params['RiskType']
          @RiskName = params['RiskName']
          @RiskSide = params['RiskSide']
        end
      end

      # DescribeDSPAAssessmentRiskTemplateVulnerableList返回参数结构体
      class DescribeDSPAAssessmentRiskTemplateVulnerableListResponse < TencentCloud::Common::AbstractModel
        # @param RiskItemList: 脆弱项列表
        # @type RiskItemList: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RiskItemList, :TotalCount, :RequestId

        def initialize(riskitemlist=nil, totalcount=nil, requestid=nil)
          @RiskItemList = riskitemlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RiskItemList'].nil?
            @RiskItemList = []
            params['RiskItemList'].each do |i|
              assessmentriskitem_tmp = AssessmentRiskItem.new
              assessmentriskitem_tmp.deserialize(i)
              @RiskItemList << assessmentriskitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentRisks请求参数结构体
      class DescribeDSPAAssessmentRisksRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例Id，格式“dspa-xxxxxxxx”
        # @type DspaId: String
        # @param TaskId: 评估任务Id，格式“task-xxxxxxxx”
        # @type TaskId: String
        # @param Offset: 偏移量。默认为0
        # @type Offset: Integer
        # @param Limit: 结果集个数限制。默认为20，最大值为100
        # @type Limit: Integer
        # @param Filters: 过滤项。
        # 支持模糊搜索：ControlItemName。
        # 支持过滤：
        # RiskLevel：风险等级（high，medium，low）
        # Status：风险处理状态(waiting待处理, processing处理中, stopped处理暂停, finished已处理, failed处理失败)
        # @type Filters: Array

        attr_accessor :DspaId, :TaskId, :Offset, :Limit, :Filters

        def initialize(dspaid=nil, taskid=nil, offset=nil, limit=nil, filters=nil)
          @DspaId = dspaid
          @TaskId = taskid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TaskId = params['TaskId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              dspaassessmentfilter_tmp = DspaAssessmentFilter.new
              dspaassessmentfilter_tmp.deserialize(i)
              @Filters << dspaassessmentfilter_tmp
            end
          end
        end
      end

      # DescribeDSPAAssessmentRisks返回参数结构体
      class DescribeDSPAAssessmentRisksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的评估风险项数目
        # @type TotalCount: Integer
        # @param Items: 评估风险项列表
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              assessmentrisk_tmp = AssessmentRisk.new
              assessmentrisk_tmp.deserialize(i)
              @Items << assessmentrisk_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentTasks请求参数结构体
      class DescribeDSPAAssessmentTasksRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例Id，格式“dspa-xxxxxxxx”
        # @type DspaId: String
        # @param Offset: 偏移量。默认为0
        # @type Offset: Integer
        # @param Limit: 结果集个数限制。默认为20，最大值为100
        # @type Limit: Integer
        # @param Filters: 过滤项。支持模糊搜索：TaskId，TaskName支持过滤：BusinessName：业务名称BusinessDept：业务部门名称TemplateName：评估模板名称Status：评估状态 (waiting待评估，processing评估中, , finished已评估, failed评估失败)
        # @type Filters: Array

        attr_accessor :DspaId, :Offset, :Limit, :Filters

        def initialize(dspaid=nil, offset=nil, limit=nil, filters=nil)
          @DspaId = dspaid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              dspaassessmentfilter_tmp = DspaAssessmentFilter.new
              dspaassessmentfilter_tmp.deserialize(i)
              @Filters << dspaassessmentfilter_tmp
            end
          end
        end
      end

      # DescribeDSPAAssessmentTasks返回参数结构体
      class DescribeDSPAAssessmentTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的评估任务数目
        # @type TotalCount: Integer
        # @param Items: 评估任务列表
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              assessmenttask_tmp = AssessmentTask.new
              assessmenttask_tmp.deserialize(i)
              @Items << assessmenttask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentTemplateControlItems请求参数结构体
      class DescribeDSPAAssessmentTemplateControlItemsRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例Id。格式“dspa-xxxxxxxx”
        # @type DspaId: String
        # @param TemplateId: 评估模板Id。格式“template-xxxxxxxx”
        # @type TemplateId: String
        # @param Offset: 偏移量。默认为0
        # @type Offset: Integer
        # @param Limit: 结果集个数限制。默认为20，最大值为100
        # @type Limit: Integer
        # @param Filters: 过滤项。
        # 支持模糊搜索：ItemId，ItemName
        # 支持过滤：
        # Source：评估项来源，system / user
        # ItemType：评估项类型，questionnaire / auto
        # ItemSubType：评估项子类型
        # Status：评估项启用状态，draft / launched
        # @type Filters: Array

        attr_accessor :DspaId, :TemplateId, :Offset, :Limit, :Filters

        def initialize(dspaid=nil, templateid=nil, offset=nil, limit=nil, filters=nil)
          @DspaId = dspaid
          @TemplateId = templateid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TemplateId = params['TemplateId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              dspaassessmentfilter_tmp = DspaAssessmentFilter.new
              dspaassessmentfilter_tmp.deserialize(i)
              @Filters << dspaassessmentfilter_tmp
            end
          end
        end
      end

      # DescribeDSPAAssessmentTemplateControlItems返回参数结构体
      class DescribeDSPAAssessmentTemplateControlItemsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的评估项数目
        # @type TotalCount: Integer
        # @param Items: 模板关联的评估项列表
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              assessmentcontrolitem_tmp = AssessmentControlItem.new
              assessmentcontrolitem_tmp.deserialize(i)
              @Items << assessmentcontrolitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAAssessmentTemplates请求参数结构体
      class DescribeDSPAAssessmentTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例Id，格式“dspa-xxxxxxxx”
        # @type DspaId: String
        # @param Offset: 偏移量。默认为0
        # @type Offset: Integer
        # @param Limit: 结果集个数限制。默认为20，最大值为100
        # @type Limit: Integer
        # @param Filters: 过滤项。支持模糊搜索：（TemplateId，TemplateName）支持过滤：Source：模板来源，system / userUseType：模板类型，auto，semi-auto，law等Status：模板启用状态，draft / launched，ComplianceId：关联的分类分级模板id
        # @type Filters: Array

        attr_accessor :DspaId, :Offset, :Limit, :Filters

        def initialize(dspaid=nil, offset=nil, limit=nil, filters=nil)
          @DspaId = dspaid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              dspaassessmentfilter_tmp = DspaAssessmentFilter.new
              dspaassessmentfilter_tmp.deserialize(i)
              @Filters << dspaassessmentfilter_tmp
            end
          end
        end
      end

      # DescribeDSPAAssessmentTemplates返回参数结构体
      class DescribeDSPAAssessmentTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的模板数目
        # @type TotalCount: Integer
        # @param Items: 模板列表。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              assessmenttemplate_tmp = AssessmentTemplate.new
              assessmenttemplate_tmp.deserialize(i)
              @Items << assessmenttemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPACOSDataAssetBuckets请求参数结构体
      class DescribeDSPACOSDataAssetBucketsRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例Id
        # @type DspaId: String
        # @param ComplianceId: 合规组Id
        # @type ComplianceId: Integer

        attr_accessor :DspaId, :ComplianceId

        def initialize(dspaid=nil, complianceid=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
        end
      end

      # DescribeDSPACOSDataAssetBuckets返回参数结构体
      class DescribeDSPACOSDataAssetBucketsResponse < TencentCloud::Common::AbstractModel
        # @param Buckets: COS对象存储敏感数据资产已扫描的桶集合。
        # @type Buckets: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Buckets, :RequestId

        def initialize(buckets=nil, requestid=nil)
          @Buckets = buckets
          @RequestId = requestid
        end

        def deserialize(params)
          @Buckets = params['Buckets']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPACOSDataAssetByComplianceId请求参数结构体
      class DescribeDSPACOSDataAssetByComplianceIdRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param ComplianceId: 合规组ID
        # @type ComplianceId: Integer

        attr_accessor :DspaId, :ComplianceId

        def initialize(dspaid=nil, complianceid=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
        end
      end

      # DescribeDSPACOSDataAssetByComplianceId返回参数结构体
      class DescribeDSPACOSDataAssetByComplianceIdResponse < TencentCloud::Common::AbstractModel
        # @param Stats: 符合条件的COS存储对象的敏感数据资产统计记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Stats: :class:`Tencentcloud::Dsgc.v20190723.models.DspaCOSDataAssetCount`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Stats, :RequestId

        def initialize(stats=nil, requestid=nil)
          @Stats = stats
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Stats'].nil?
            @Stats = DspaCOSDataAssetCount.new
            @Stats.deserialize(params['Stats'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPACOSDataAssetDetail请求参数结构体
      class DescribeDSPACOSDataAssetDetailRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param ComplianceId: 合规组ID
        # @type ComplianceId: Integer

        attr_accessor :DspaId, :ComplianceId

        def initialize(dspaid=nil, complianceid=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
        end
      end

      # DescribeDSPACOSDataAssetDetail返回参数结构体
      class DescribeDSPACOSDataAssetDetailResponse < TencentCloud::Common::AbstractModel
        # @param Details: COS对象存储敏感数据资产详情列表
        # @type Details: Array
        # @param TotalCount: 符合条件的COS对象存储敏感数据资产数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Details, :TotalCount, :RequestId

        def initialize(details=nil, totalcount=nil, requestid=nil)
          @Details = details
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              dspacosdataassetdetail_tmp = DspaCOSDataAssetDetail.new
              dspacosdataassetdetail_tmp.deserialize(i)
              @Details << dspacosdataassetdetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPACOSDiscoveryTaskDetail请求参数结构体
      class DescribeDSPACOSDiscoveryTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer

        attr_accessor :DspaId, :TaskId

        def initialize(dspaid=nil, taskid=nil)
          @DspaId = dspaid
          @TaskId = taskid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TaskId = params['TaskId']
        end
      end

      # DescribeDSPACOSDiscoveryTaskDetail返回参数结构体
      class DescribeDSPACOSDiscoveryTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param Task: 任务详情
        # @type Task: :class:`Tencentcloud::Dsgc.v20190723.models.DspaCOSDiscoveryTaskDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Task, :RequestId

        def initialize(task=nil, requestid=nil)
          @Task = task
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Task'].nil?
            @Task = DspaCOSDiscoveryTaskDetail.new
            @Task.deserialize(params['Task'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPACOSDiscoveryTaskFiles请求参数结构体
      class DescribeDSPACOSDiscoveryTaskFilesRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例Id
        # @type DspaId: String
        # @param TaskId: 扫描任务ID
        # @type TaskId: Integer
        # @param BucketResultId: 扫描Bucket任务结果ID
        # @type BucketResultId: Integer

        attr_accessor :DspaId, :TaskId, :BucketResultId

        def initialize(dspaid=nil, taskid=nil, bucketresultid=nil)
          @DspaId = dspaid
          @TaskId = taskid
          @BucketResultId = bucketresultid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TaskId = params['TaskId']
          @BucketResultId = params['BucketResultId']
        end
      end

      # DescribeDSPACOSDiscoveryTaskFiles返回参数结构体
      class DescribeDSPACOSDiscoveryTaskFilesResponse < TencentCloud::Common::AbstractModel
        # @param Files: 文件列表
        # @type Files: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Files, :RequestId

        def initialize(files=nil, requestid=nil)
          @Files = files
          @RequestId = requestid
        end

        def deserialize(params)
          @Files = params['Files']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPACOSDiscoveryTaskResult请求参数结构体
      class DescribeDSPACOSDiscoveryTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param Offset: 偏移量，默认值为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认值为20，最大值为100
        # @type Limit: Integer
        # @param Filters: Array of Filter	此参数对外不可见。过滤数组。支持的Name：
        # BucketName 对象桶名
        # TaskID 任务ID，
        # TaskName 任务名，
        # DataSourceId：数据源ID，
        # ResourceRegion：资源所在地域
        # 每项过滤条件最多支持5个。
        # @type Filters: Array

        attr_accessor :DspaId, :Offset, :Limit, :Filters

        def initialize(dspaid=nil, offset=nil, limit=nil, filters=nil)
          @DspaId = dspaid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeDSPACOSDiscoveryTaskResult返回参数结构体
      class DescribeDSPACOSDiscoveryTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param Items: 扫描任务结果项
        # @type Items: Array
        # @param TotalCount: 符合条件的数据结果数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :TotalCount, :RequestId

        def initialize(items=nil, totalcount=nil, requestid=nil)
          @Items = items
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dspacosdiscoverytaskresult_tmp = DspaCOSDiscoveryTaskResult.new
              dspacosdiscoverytaskresult_tmp.deserialize(i)
              @Items << dspacosdiscoverytaskresult_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPACOSDiscoveryTasks请求参数结构体
      class DescribeDSPACOSDiscoveryTasksRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param Name: 任务名称
        # @type Name: String
        # @param StatusList: 任务扫描结果状态，可供选择的状态值有：-1待触发 0待扫描 1扫描中 2扫描终止 3扫描成功 4扫描失败
        # @type StatusList: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回结果集数量，默认值是10000，最大值为10000，根据该资源的个数限制条件，该资源的个数不会超过10000，所以如果不输入该字段，默认获取全量数据
        # @type Limit: Integer

        attr_accessor :DspaId, :TaskId, :Name, :StatusList, :Offset, :Limit

        def initialize(dspaid=nil, taskid=nil, name=nil, statuslist=nil, offset=nil, limit=nil)
          @DspaId = dspaid
          @TaskId = taskid
          @Name = name
          @StatusList = statuslist
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TaskId = params['TaskId']
          @Name = params['Name']
          @StatusList = params['StatusList']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDSPACOSDiscoveryTasks返回参数结构体
      class DescribeDSPACOSDiscoveryTasksResponse < TencentCloud::Common::AbstractModel
        # @param Items: 任务列表
        # @type Items: Array
        # @param TotalCount: 符合条件的任务列表数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :TotalCount, :RequestId

        def initialize(items=nil, totalcount=nil, requestid=nil)
          @Items = items
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dspacosdiscoverytask_tmp = DspaCOSDiscoveryTask.new
              dspacosdiscoverytask_tmp.deserialize(i)
              @Items << dspacosdiscoverytask_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPACOSTaskResultDetail请求参数结构体
      class DescribeDSPACOSTaskResultDetailRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param BucketResultId: 扫描Bucket结果ID
        # @type BucketResultId: Integer
        # @param ComplianceId: 合规组ID
        # @type ComplianceId: Integer
        # @param FileName: 文件名
        # @type FileName: String
        # @param CategoryId: 敏感数据分类ID
        # @type CategoryId: Integer
        # @param LevelId: 敏感数据分级ID
        # @type LevelId: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认值为20，最大值为100
        # @type Limit: Integer
        # @param BucketName: 扫描桶名称。
        # @type BucketName: String
        # @param CategoryIdList: 多级分类的分类ID集合
        # @type CategoryIdList: Array

        attr_accessor :DspaId, :TaskId, :BucketResultId, :ComplianceId, :FileName, :CategoryId, :LevelId, :Offset, :Limit, :BucketName, :CategoryIdList

        def initialize(dspaid=nil, taskid=nil, bucketresultid=nil, complianceid=nil, filename=nil, categoryid=nil, levelid=nil, offset=nil, limit=nil, bucketname=nil, categoryidlist=nil)
          @DspaId = dspaid
          @TaskId = taskid
          @BucketResultId = bucketresultid
          @ComplianceId = complianceid
          @FileName = filename
          @CategoryId = categoryid
          @LevelId = levelid
          @Offset = offset
          @Limit = limit
          @BucketName = bucketname
          @CategoryIdList = categoryidlist
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TaskId = params['TaskId']
          @BucketResultId = params['BucketResultId']
          @ComplianceId = params['ComplianceId']
          @FileName = params['FileName']
          @CategoryId = params['CategoryId']
          @LevelId = params['LevelId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @BucketName = params['BucketName']
          @CategoryIdList = params['CategoryIdList']
        end
      end

      # DescribeDSPACOSTaskResultDetail返回参数结构体
      class DescribeDSPACOSTaskResultDetailResponse < TencentCloud::Common::AbstractModel
        # @param Items: 扫描结果详情列表
        # @type Items: Array
        # @param TotalCount: 符合条件的详情数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :TotalCount, :RequestId

        def initialize(items=nil, totalcount=nil, requestid=nil)
          @Items = items
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dspadiscoverycostaskresultdetail_tmp = DspaDiscoveryCOSTaskResultDetail.new
              dspadiscoverycostaskresultdetail_tmp.deserialize(i)
              @Items << dspadiscoverycostaskresultdetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPACategories请求参数结构体
      class DescribeDSPACategoriesRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param CategoryId: 数据分类ID
        # @type CategoryId: Integer
        # @param Name: 敏感数据分类名称
        # @type Name: String
        # @param Offset: 偏移量，默认值为0
        # @type Offset: Integer
        # @param Limit: 返回结果集数量，默认值是10000，最大值为10000，根据该资源的个数限制条件，该资源的个数不会超过10000，所以如果不输入该字段，默认获取全量数据
        # @type Limit: Integer

        attr_accessor :DspaId, :CategoryId, :Name, :Offset, :Limit

        def initialize(dspaid=nil, categoryid=nil, name=nil, offset=nil, limit=nil)
          @DspaId = dspaid
          @CategoryId = categoryid
          @Name = name
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @CategoryId = params['CategoryId']
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDSPACategories返回参数结构体
      class DescribeDSPACategoriesResponse < TencentCloud::Common::AbstractModel
        # @param Items: 敏感数据分类列表
        # @type Items: Array
        # @param TotalCount: 符合条件的敏感数据分类数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :TotalCount, :RequestId

        def initialize(items=nil, totalcount=nil, requestid=nil)
          @Items = items
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              datacategory_tmp = DataCategory.new
              datacategory_tmp.deserialize(i)
              @Items << datacategory_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPACategoryRuleStatistic请求参数结构体
      class DescribeDSPACategoryRuleStatisticRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param ComplianceId: 合规组模板id
        # @type ComplianceId: Integer

        attr_accessor :DspaId, :ComplianceId

        def initialize(dspaid=nil, complianceid=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
        end
      end

      # DescribeDSPACategoryRuleStatistic返回参数结构体
      class DescribeDSPACategoryRuleStatisticResponse < TencentCloud::Common::AbstractModel
        # @param StatisticSet: 分类规则统计信息
        # @type StatisticSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StatisticSet, :RequestId

        def initialize(statisticset=nil, requestid=nil)
          @StatisticSet = statisticset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['StatisticSet'].nil?
            @StatisticSet = []
            params['StatisticSet'].each do |i|
              categoryrulestatistic_tmp = CategoryRuleStatistic.new
              categoryrulestatistic_tmp.deserialize(i)
              @StatisticSet << categoryrulestatistic_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPACategoryRules请求参数结构体
      class DescribeDSPACategoryRulesRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param CategoryId: 分类id
        # @type CategoryId: Integer
        # @param ComplianceId: 合规组模板id
        # @type ComplianceId: Integer

        attr_accessor :DspaId, :CategoryId, :ComplianceId

        def initialize(dspaid=nil, categoryid=nil, complianceid=nil)
          @DspaId = dspaid
          @CategoryId = categoryid
          @ComplianceId = complianceid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @CategoryId = params['CategoryId']
          @ComplianceId = params['ComplianceId']
        end
      end

      # DescribeDSPACategoryRules返回参数结构体
      class DescribeDSPACategoryRulesResponse < TencentCloud::Common::AbstractModel
        # @param CategoryRules: 分类规则信息
        # @type CategoryRules: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CategoryRules, :RequestId

        def initialize(categoryrules=nil, requestid=nil)
          @CategoryRules = categoryrules
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CategoryRules'].nil?
            @CategoryRules = []
            params['CategoryRules'].each do |i|
              categoryrule_tmp = CategoryRule.new
              categoryrule_tmp.deserialize(i)
              @CategoryRules << categoryrule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPACategoryTree请求参数结构体
      class DescribeDSPACategoryTreeRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param ComplianceId: 合规组id
        # @type ComplianceId: Integer

        attr_accessor :DspaId, :ComplianceId

        def initialize(dspaid=nil, complianceid=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
        end
      end

      # DescribeDSPACategoryTree返回参数结构体
      class DescribeDSPACategoryTreeResponse < TencentCloud::Common::AbstractModel
        # @param ResultJson: 分类树json
        # @type ResultJson: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultJson, :RequestId

        def initialize(resultjson=nil, requestid=nil)
          @ResultJson = resultjson
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultJson = params['ResultJson']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPACategoryTreeWithRules请求参数结构体
      class DescribeDSPACategoryTreeWithRulesRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param ComplianceId: 合规组模板id
        # @type ComplianceId: Integer
        # @param CategoryId: 分类id
        # @type CategoryId: Integer

        attr_accessor :DspaId, :ComplianceId, :CategoryId

        def initialize(dspaid=nil, complianceid=nil, categoryid=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
          @CategoryId = categoryid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
          @CategoryId = params['CategoryId']
        end
      end

      # DescribeDSPACategoryTreeWithRules返回参数结构体
      class DescribeDSPACategoryTreeWithRulesResponse < TencentCloud::Common::AbstractModel
        # @param ResultJson: 分类树json
        # @type ResultJson: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultJson, :RequestId

        def initialize(resultjson=nil, requestid=nil)
          @ResultJson = resultjson
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultJson = params['ResultJson']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAComplianceGroupDetail请求参数结构体
      class DescribeDSPAComplianceGroupDetailRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param ComplianceId: 模板id
        # @type ComplianceId: Integer

        attr_accessor :DspaId, :ComplianceId

        def initialize(dspaid=nil, complianceid=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
        end
      end

      # DescribeDSPAComplianceGroupDetail返回参数结构体
      class DescribeDSPAComplianceGroupDetailResponse < TencentCloud::Common::AbstractModel
        # @param Detail: 模板详情
        # @type Detail: :class:`Tencentcloud::Dsgc.v20190723.models.ComplianceGroupDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Detail, :RequestId

        def initialize(detail=nil, requestid=nil)
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Detail'].nil?
            @Detail = ComplianceGroupDetail.new
            @Detail.deserialize(params['Detail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAComplianceGroups请求参数结构体
      class DescribeDSPAComplianceGroupsRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param ComplianceGroupId: 合规组ID
        # @type ComplianceGroupId: Integer
        # @param Name: 合规组名称
        # @type Name: String
        # @param Offset: 偏移量，默认值为0
        # @type Offset: Integer
        # @param Limit: 返回结果集数量，默认值是10000，最大值为10000，根据该资源的个数限制条件，该资源的个数不会超过10000，所以如果不输入该字段，默认获取全量数据
        # @type Limit: Integer
        # @param ComplianceGroupTypeList: 合规组类型可选值：0 默认合规组, 1 系统合规组, 2 自定义合规组
        # @type ComplianceGroupTypeList: Array
        # @param IsFilterCloseComplianceGroup: 是否仅显示已开启模版
        # @type IsFilterCloseComplianceGroup: Boolean

        attr_accessor :DspaId, :ComplianceGroupId, :Name, :Offset, :Limit, :ComplianceGroupTypeList, :IsFilterCloseComplianceGroup

        def initialize(dspaid=nil, compliancegroupid=nil, name=nil, offset=nil, limit=nil, compliancegrouptypelist=nil, isfilterclosecompliancegroup=nil)
          @DspaId = dspaid
          @ComplianceGroupId = compliancegroupid
          @Name = name
          @Offset = offset
          @Limit = limit
          @ComplianceGroupTypeList = compliancegrouptypelist
          @IsFilterCloseComplianceGroup = isfilterclosecompliancegroup
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceGroupId = params['ComplianceGroupId']
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ComplianceGroupTypeList = params['ComplianceGroupTypeList']
          @IsFilterCloseComplianceGroup = params['IsFilterCloseComplianceGroup']
        end
      end

      # DescribeDSPAComplianceGroups返回参数结构体
      class DescribeDSPAComplianceGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Items: 合规组列表
        # @type Items: Array
        # @param TotalCount: 符合条件的合规组列表数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :TotalCount, :RequestId

        def initialize(items=nil, totalcount=nil, requestid=nil)
          @Items = items
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dspadiscoverycompliancegroupinfo_tmp = DspaDiscoveryComplianceGroupInfo.new
              dspadiscoverycompliancegroupinfo_tmp.deserialize(i)
              @Items << dspadiscoverycompliancegroupinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAComplianceUpdateNotification请求参数结构体
      class DescribeDSPAComplianceUpdateNotificationRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param ComplianceId: 合规组分类模板id
        # @type ComplianceId: Integer

        attr_accessor :DspaId, :ComplianceId

        def initialize(dspaid=nil, complianceid=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
        end
      end

      # DescribeDSPAComplianceUpdateNotification返回参数结构体
      class DescribeDSPAComplianceUpdateNotificationResponse < TencentCloud::Common::AbstractModel
        # @param IsUpdated: 模板是否更新
        # @type IsUpdated: Boolean
        # @param TaskNameSet: 任务名称集合
        # @type TaskNameSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsUpdated, :TaskNameSet, :RequestId

        def initialize(isupdated=nil, tasknameset=nil, requestid=nil)
          @IsUpdated = isupdated
          @TaskNameSet = tasknameset
          @RequestId = requestid
        end

        def deserialize(params)
          @IsUpdated = params['IsUpdated']
          @TaskNameSet = params['TaskNameSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPADataSourceDbInfo请求参数结构体
      class DescribeDSPADataSourceDbInfoRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param DataSourceId: 数据源ID
        # @type DataSourceId: String
        # @param DataSourceType: 数据源类型
        # @type DataSourceType: String

        attr_accessor :DspaId, :DataSourceId, :DataSourceType

        def initialize(dspaid=nil, datasourceid=nil, datasourcetype=nil)
          @DspaId = dspaid
          @DataSourceId = datasourceid
          @DataSourceType = datasourcetype
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @DataSourceId = params['DataSourceId']
          @DataSourceType = params['DataSourceType']
        end
      end

      # DescribeDSPADataSourceDbInfo返回参数结构体
      class DescribeDSPADataSourceDbInfoResponse < TencentCloud::Common::AbstractModel
        # @param Items: 数据库信息列表
        # @type Items: Array
        # @param DataSourceId: 数据源id
        # @type DataSourceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :DataSourceId, :RequestId

        def initialize(items=nil, datasourceid=nil, requestid=nil)
          @Items = items
          @DataSourceId = datasourceid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dspadatasourcedbinfo_tmp = DSPADataSourceDbInfo.new
              dspadatasourcedbinfo_tmp.deserialize(i)
              @Items << dspadatasourcedbinfo_tmp
            end
          end
          @DataSourceId = params['DataSourceId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPADiscoveryRules请求参数结构体
      class DescribeDSPADiscoveryRulesRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回上限，默认值10， 最大值10000。
        # @type Limit: Integer
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param Name: 规则名称
        # @type Name: String
        # @param FilterRuleSource: 是否需要过滤别名
        # @type FilterRuleSource: Boolean

        attr_accessor :DspaId, :Offset, :Limit, :RuleId, :Name, :FilterRuleSource

        def initialize(dspaid=nil, offset=nil, limit=nil, ruleid=nil, name=nil, filterrulesource=nil)
          @DspaId = dspaid
          @Offset = offset
          @Limit = limit
          @RuleId = ruleid
          @Name = name
          @FilterRuleSource = filterrulesource
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @RuleId = params['RuleId']
          @Name = params['Name']
          @FilterRuleSource = params['FilterRuleSource']
        end
      end

      # DescribeDSPADiscoveryRules返回参数结构体
      class DescribeDSPADiscoveryRulesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 规则ID
        # @type TotalCount: Integer
        # @param Items: 规则集合
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dspadiscoveryruledetail_tmp = DspaDiscoveryRuleDetail.new
              dspadiscoveryruledetail_tmp.deserialize(i)
              @Items << dspadiscoveryruledetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPADiscoveryServiceStatus请求参数结构体
      class DescribeDSPADiscoveryServiceStatusRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String

        attr_accessor :DspaId

        def initialize(dspaid=nil)
          @DspaId = dspaid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
        end
      end

      # DescribeDSPADiscoveryServiceStatus返回参数结构体
      class DescribeDSPADiscoveryServiceStatusResponse < TencentCloud::Common::AbstractModel
        # @param ServiceEnabled: 分类分级服务是否开通，true 表示已开通，false表示未开通
        # @type ServiceEnabled: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceEnabled, :RequestId

        def initialize(serviceenabled=nil, requestid=nil)
          @ServiceEnabled = serviceenabled
          @RequestId = requestid
        end

        def deserialize(params)
          @ServiceEnabled = params['ServiceEnabled']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPADiscoveryTaskDetail请求参数结构体
      class DescribeDSPADiscoveryTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer

        attr_accessor :DspaId, :TaskId

        def initialize(dspaid=nil, taskid=nil)
          @DspaId = dspaid
          @TaskId = taskid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TaskId = params['TaskId']
        end
      end

      # DescribeDSPADiscoveryTaskDetail返回参数结构体
      class DescribeDSPADiscoveryTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param Task: 任务详情
        # @type Task: :class:`Tencentcloud::Dsgc.v20190723.models.DspaDiscoveryTaskDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Task, :RequestId

        def initialize(task=nil, requestid=nil)
          @Task = task
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Task'].nil?
            @Task = DspaDiscoveryTaskDetail.new
            @Task.deserialize(params['Task'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPADiscoveryTaskResultDetail请求参数结构体
      class DescribeDSPADiscoveryTaskResultDetailRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param DbResultId: 扫描数据库结果ID
        # @type DbResultId: Integer
        # @param ComplianceId: 合规组ID
        # @type ComplianceId: Integer
        # @param DbName: 数据库名
        # @type DbName: String
        # @param TableName: 所属数据表名
        # @type TableName: String
        # @param CategoryId: 敏感数据分类ID
        # @type CategoryId: Integer
        # @param LevelId: 敏感数据分级ID
        # @type LevelId: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认值为20，最大值为100
        # @type Limit: Integer
        # @param CategoryIdList: 多级分类的分类ID集合
        # @type CategoryIdList: Array

        attr_accessor :DspaId, :TaskId, :DbResultId, :ComplianceId, :DbName, :TableName, :CategoryId, :LevelId, :Offset, :Limit, :CategoryIdList

        def initialize(dspaid=nil, taskid=nil, dbresultid=nil, complianceid=nil, dbname=nil, tablename=nil, categoryid=nil, levelid=nil, offset=nil, limit=nil, categoryidlist=nil)
          @DspaId = dspaid
          @TaskId = taskid
          @DbResultId = dbresultid
          @ComplianceId = complianceid
          @DbName = dbname
          @TableName = tablename
          @CategoryId = categoryid
          @LevelId = levelid
          @Offset = offset
          @Limit = limit
          @CategoryIdList = categoryidlist
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TaskId = params['TaskId']
          @DbResultId = params['DbResultId']
          @ComplianceId = params['ComplianceId']
          @DbName = params['DbName']
          @TableName = params['TableName']
          @CategoryId = params['CategoryId']
          @LevelId = params['LevelId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CategoryIdList = params['CategoryIdList']
        end
      end

      # DescribeDSPADiscoveryTaskResultDetail返回参数结构体
      class DescribeDSPADiscoveryTaskResultDetailResponse < TencentCloud::Common::AbstractModel
        # @param Items: 扫描结果详情列表
        # @type Items: Array
        # @param TotalCount: 符合条件的扫描结果详情记录数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :TotalCount, :RequestId

        def initialize(items=nil, totalcount=nil, requestid=nil)
          @Items = items
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dspadiscoverytaskresultdetail_tmp = DspaDiscoveryTaskResultDetail.new
              dspadiscoverytaskresultdetail_tmp.deserialize(i)
              @Items << dspadiscoverytaskresultdetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPADiscoveryTaskResult请求参数结构体
      class DescribeDSPADiscoveryTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param DataSourceType: 数据源类型，可取值如下：
        # cdb 表示云数据库 MySQL,
        # dcdb 表示TDSQL MySQL版,
        # mariadb 表示云数据库 MariaDB,
        # postgres 表示云数据库 PostgreSQL,
        # cynosdbpg 表示TDSQL-C PostgreSQL版,
        # cynosdbmysql 表示TDSQL-C MySQL版,
        # selfbuilt-db 表示自建数据库
        # @type DataSourceType: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param DataSourceId: 数据源ID
        # @type DataSourceId: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param Offset: 偏移量，默认值为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认值为20，最大值为100
        # @type Limit: Integer
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String

        attr_accessor :DspaId, :DataSourceType, :TaskId, :TaskName, :DataSourceId, :DbName, :Offset, :Limit, :ResourceRegion

        def initialize(dspaid=nil, datasourcetype=nil, taskid=nil, taskname=nil, datasourceid=nil, dbname=nil, offset=nil, limit=nil, resourceregion=nil)
          @DspaId = dspaid
          @DataSourceType = datasourcetype
          @TaskId = taskid
          @TaskName = taskname
          @DataSourceId = datasourceid
          @DbName = dbname
          @Offset = offset
          @Limit = limit
          @ResourceRegion = resourceregion
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @DataSourceType = params['DataSourceType']
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @DataSourceId = params['DataSourceId']
          @DbName = params['DbName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ResourceRegion = params['ResourceRegion']
        end
      end

      # DescribeDSPADiscoveryTaskResult返回参数结构体
      class DescribeDSPADiscoveryTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param Items: 扫描任务结果项
        # @type Items: Array
        # @param TotalCount: 符合条件的扫描任务结果记录数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :TotalCount, :RequestId

        def initialize(items=nil, totalcount=nil, requestid=nil)
          @Items = items
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dspadiscoverytaskdbresult_tmp = DspaDiscoveryTaskDbResult.new
              dspadiscoverytaskdbresult_tmp.deserialize(i)
              @Items << dspadiscoverytaskdbresult_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPADiscoveryTaskTables请求参数结构体
      class DescribeDSPADiscoveryTaskTablesRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param DbResultId: 数据库扫描结果ID
        # @type DbResultId: Integer
        # @param DbName: db名称
        # @type DbName: String

        attr_accessor :DspaId, :TaskId, :DbResultId, :DbName

        def initialize(dspaid=nil, taskid=nil, dbresultid=nil, dbname=nil)
          @DspaId = dspaid
          @TaskId = taskid
          @DbResultId = dbresultid
          @DbName = dbname
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TaskId = params['TaskId']
          @DbResultId = params['DbResultId']
          @DbName = params['DbName']
        end
      end

      # DescribeDSPADiscoveryTaskTables返回参数结构体
      class DescribeDSPADiscoveryTaskTablesResponse < TencentCloud::Common::AbstractModel
        # @param Items: 分类分级扫描表集合
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId

        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dspatableinfo_tmp = DSPATableInfo.new
              dspatableinfo_tmp.deserialize(i)
              @Items << dspatableinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPADiscoveryTasks请求参数结构体
      class DescribeDSPADiscoveryTasksRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param DataSourceType: 数据源类型，可取值如下：
        # cdb 表示云数据库 MySQL,
        # dcdb 表示TDSQL MySQL版,
        # mariadb 表示云数据库 MariaDB,
        # postgres 表示云数据库 PostgreSQL,
        # cynosdbpg 表示TDSQL-C PostgreSQL版,
        # cynosdbmysql 表示TDSQL-C MySQL版,
        # selfbuilt-db 表示自建数据库
        # @type DataSourceType: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param Name: 任务名称
        # @type Name: String
        # @param StatusList: 任务扫描结果状态，可供选择的状态值有：-1待触发 0待扫描 1扫描中 2扫描终止 3扫描成功 4扫描失败
        # @type StatusList: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回结果集数量，默认值是10000，最大值为10000，根据该资源的个数限制条件，该资源的个数不会超过10000，所以如果不输入该字段，默认获取全量数据
        # @type Limit: Integer

        attr_accessor :DspaId, :DataSourceType, :TaskId, :Name, :StatusList, :Offset, :Limit

        def initialize(dspaid=nil, datasourcetype=nil, taskid=nil, name=nil, statuslist=nil, offset=nil, limit=nil)
          @DspaId = dspaid
          @DataSourceType = datasourcetype
          @TaskId = taskid
          @Name = name
          @StatusList = statuslist
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @DataSourceType = params['DataSourceType']
          @TaskId = params['TaskId']
          @Name = params['Name']
          @StatusList = params['StatusList']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDSPADiscoveryTasks返回参数结构体
      class DescribeDSPADiscoveryTasksResponse < TencentCloud::Common::AbstractModel
        # @param Items: 任务列表
        # @type Items: Array
        # @param TotalCount: 符合条件的任务列表数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :TotalCount, :RequestId

        def initialize(items=nil, totalcount=nil, requestid=nil)
          @Items = items
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dspadiscoverytask_tmp = DspaDiscoveryTask.new
              dspadiscoverytask_tmp.deserialize(i)
              @Items << dspadiscoverytask_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAESDataAssetByComplianceId请求参数结构体
      class DescribeDSPAESDataAssetByComplianceIdRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param ComplianceId: 合规组id
        # @type ComplianceId: Integer
        # @param BuildType: 云上还是自建
        # @type BuildType: String
        # @param DataSourceType: 数据源类型
        # @type DataSourceType: String

        attr_accessor :DspaId, :ComplianceId, :BuildType, :DataSourceType

        def initialize(dspaid=nil, complianceid=nil, buildtype=nil, datasourcetype=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
          @BuildType = buildtype
          @DataSourceType = datasourcetype
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
          @BuildType = params['BuildType']
          @DataSourceType = params['DataSourceType']
        end
      end

      # DescribeDSPAESDataAssetByComplianceId返回参数结构体
      class DescribeDSPAESDataAssetByComplianceIdResponse < TencentCloud::Common::AbstractModel
        # @param Stats: 概览统计结果
        # @type Stats: :class:`Tencentcloud::Dsgc.v20190723.models.ESDataAssetCountDto`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Stats, :RequestId

        def initialize(stats=nil, requestid=nil)
          @Stats = stats
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Stats'].nil?
            @Stats = ESDataAssetCountDto.new
            @Stats.deserialize(params['Stats'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAESDataAssetDetail请求参数结构体
      class DescribeDSPAESDataAssetDetailRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param ComplianceId: 合规组id
        # @type ComplianceId: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制条目数
        # @type Limit: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param CreditScore: 可信分排序，ASC升序
        # DESC降序
        # @type CreditScore: String

        attr_accessor :DspaId, :ComplianceId, :Offset, :Limit, :Filters, :CreditScore

        def initialize(dspaid=nil, complianceid=nil, offset=nil, limit=nil, filters=nil, creditscore=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @CreditScore = creditscore
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @CreditScore = params['CreditScore']
        end
      end

      # DescribeDSPAESDataAssetDetail返回参数结构体
      class DescribeDSPAESDataAssetDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总的个数
        # @type TotalCount: Integer
        # @param Details: 概览详情列表
        # @type Details: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Details, :RequestId

        def initialize(totalcount=nil, details=nil, requestid=nil)
          @TotalCount = totalcount
          @Details = details
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              esdataassetdetail_tmp = ESDataAssetDetail.new
              esdataassetdetail_tmp.deserialize(i)
              @Details << esdataassetdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAESDataSample请求参数结构体
      class DescribeDSPAESDataSampleRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param FieldResultId: 字段扫描结果ID
        # @type FieldResultId: Integer
        # @param Order: 排序方式
        # @type Order: String
        # @param OrderField: 排序字段
        # @type OrderField: String

        attr_accessor :DspaId, :FieldResultId, :Order, :OrderField

        def initialize(dspaid=nil, fieldresultid=nil, order=nil, orderfield=nil)
          @DspaId = dspaid
          @FieldResultId = fieldresultid
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @FieldResultId = params['FieldResultId']
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeDSPAESDataSample返回参数结构体
      class DescribeDSPAESDataSampleResponse < TencentCloud::Common::AbstractModel
        # @param Items: 数据样本列表，最多10条数据
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId

        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @Items = params['Items']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPAESDiscoveryTaskResultDetail请求参数结构体
      class DescribeDSPAESDiscoveryTaskResultDetailRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param ComplianceId: 合规组ID
        # @type ComplianceId: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认值为20，最大值为100
        # @type Limit: Integer
        # @param CategoryIdList: 多级分类的分类ID集合
        # @type CategoryIdList: Array
        # @param LevelId: 敏感数据分级ID
        # @type LevelId: Integer
        # @param DbName: 数据库名称
        # @type DbName: String

        attr_accessor :DspaId, :TaskId, :ComplianceId, :Offset, :Limit, :CategoryIdList, :LevelId, :DbName

        def initialize(dspaid=nil, taskid=nil, complianceid=nil, offset=nil, limit=nil, categoryidlist=nil, levelid=nil, dbname=nil)
          @DspaId = dspaid
          @TaskId = taskid
          @ComplianceId = complianceid
          @Offset = offset
          @Limit = limit
          @CategoryIdList = categoryidlist
          @LevelId = levelid
          @DbName = dbname
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TaskId = params['TaskId']
          @ComplianceId = params['ComplianceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CategoryIdList = params['CategoryIdList']
          @LevelId = params['LevelId']
          @DbName = params['DbName']
        end
      end

      # DescribeDSPAESDiscoveryTaskResultDetail返回参数结构体
      class DescribeDSPAESDiscoveryTaskResultDetailResponse < TencentCloud::Common::AbstractModel
        # @param Items: ES扫描结果详情列表
        # @type Items: Array
        # @param TotalCount: 符合条件的扫描结果详情记录数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :TotalCount, :RequestId

        def initialize(items=nil, totalcount=nil, requestid=nil)
          @Items = items
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              estaskresultdetail_tmp = ESTaskResultDetail.new
              estaskresultdetail_tmp.deserialize(i)
              @Items << estaskresultdetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPALevelDetail请求参数结构体
      class DescribeDSPALevelDetailRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param Filters: 过滤数组。支持的Name：
        # ComplianceId 合规组ID
        # LevelGroupId 敏感分级组ID
        # @type Filters: Array

        attr_accessor :DspaId, :Filters

        def initialize(dspaid=nil, filters=nil)
          @DspaId = dspaid
          @Filters = filters
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeDSPALevelDetail返回参数结构体
      class DescribeDSPALevelDetailResponse < TencentCloud::Common::AbstractModel
        # @param Items: 符合条件的敏感数据分级标识记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param TotalCount: 符合条件的敏感数据分级标识记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :TotalCount, :RequestId

        def initialize(items=nil, totalcount=nil, requestid=nil)
          @Items = items
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              levelitem_tmp = LevelItem.new
              levelitem_tmp.deserialize(i)
              @Items << levelitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPALevelGroups请求参数结构体
      class DescribeDSPALevelGroupsRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param Name: 分级组名称
        # @type Name: String
        # @param Limit: 每页返回的记录数
        # @type Limit: Integer
        # @param Offset: 从第几条记录开始返回
        # @type Offset: Integer

        attr_accessor :DspaId, :Name, :Limit, :Offset

        def initialize(dspaid=nil, name=nil, limit=nil, offset=nil)
          @DspaId = dspaid
          @Name = name
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @Name = params['Name']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDSPALevelGroups返回参数结构体
      class DescribeDSPALevelGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Items: 符合条件的敏感数据分级标识记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param TotalCount: 符合条件的敏感数据分级标识记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :TotalCount, :RequestId

        def initialize(items=nil, totalcount=nil, requestid=nil)
          @Items = items
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dspadiscoveryleveldetail_tmp = DspaDiscoveryLevelDetail.new
              dspadiscoveryleveldetail_tmp.deserialize(i)
              @Items << dspadiscoveryleveldetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPARDBDataAssetByComplianceId请求参数结构体
      class DescribeDSPARDBDataAssetByComplianceIdRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param ComplianceId: 合规组ID
        # @type ComplianceId: Integer
        # @param DataSourceType: 数据源类型，不填默认过滤非自建的所有关系型数据源类型，填selfbuilt-db只过滤自建类型
        # @type DataSourceType: String
        # @param BuildType: 自建还是云上
        # @type BuildType: String

        attr_accessor :DspaId, :ComplianceId, :DataSourceType, :BuildType

        def initialize(dspaid=nil, complianceid=nil, datasourcetype=nil, buildtype=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
          @DataSourceType = datasourcetype
          @BuildType = buildtype
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
          @DataSourceType = params['DataSourceType']
          @BuildType = params['BuildType']
        end
      end

      # DescribeDSPARDBDataAssetByComplianceId返回参数结构体
      class DescribeDSPARDBDataAssetByComplianceIdResponse < TencentCloud::Common::AbstractModel
        # @param Stats: 符合条件的RDB关系数据库敏感数据资产统计记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Stats: :class:`Tencentcloud::Dsgc.v20190723.models.DspaRDBDataAssetCount`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Stats, :RequestId

        def initialize(stats=nil, requestid=nil)
          @Stats = stats
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Stats'].nil?
            @Stats = DspaRDBDataAssetCount.new
            @Stats.deserialize(params['Stats'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPARDBDataAssetDetail请求参数结构体
      class DescribeDSPARDBDataAssetDetailRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例Id
        # @type DspaId: String
        # @param ComplianceId: 合规组Id
        # @type ComplianceId: Integer
        # @param Filters: 过滤数组。支持的Name：
        # DataSourceID 数据源ID
        # DbName 数据库名称
        # CategoryID 敏感数据分类ID
        # RuleID 规则ID
        # LevelID 敏感分级ID
        # ResourceRegion 资源所在地域
        # SensitiveField 过滤敏感字段，可选值为1，或者无此SensitiveField字段
        # DataSourceType 数据源类型，不填默认过滤非自建的所有关系型数据源类型，填selfbuilt-db只过滤自建类型
        # 注意：每个name默认支持最多5个values。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param CreditScore: 可信分排序，ASC-升序
        # DESC降序
        # @type CreditScore: String

        attr_accessor :DspaId, :ComplianceId, :Filters, :Offset, :Limit, :CreditScore

        def initialize(dspaid=nil, complianceid=nil, filters=nil, offset=nil, limit=nil, creditscore=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @CreditScore = creditscore
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CreditScore = params['CreditScore']
        end
      end

      # DescribeDSPARDBDataAssetDetail返回参数结构体
      class DescribeDSPARDBDataAssetDetailResponse < TencentCloud::Common::AbstractModel
        # @param Details: RDB关系数据库敏感数据资产详情列表
        # @type Details: Array
        # @param TotalCount: 符合条件的RDB关系数据库敏感数据资产数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Details, :TotalCount, :RequestId

        def initialize(details=nil, totalcount=nil, requestid=nil)
          @Details = details
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              dspardbdataassetdetail_tmp = DspaRDBDataAssetDetail.new
              dspardbdataassetdetail_tmp.deserialize(i)
              @Details << dspardbdataassetdetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPASupportedMetas请求参数结构体
      class DescribeDSPASupportedMetasRequest < TencentCloud::Common::AbstractModel
        # @param MetaTypes: 元数据类型
        # @type MetaTypes: Array

        attr_accessor :MetaTypes

        def initialize(metatypes=nil)
          @MetaTypes = metatypes
        end

        def deserialize(params)
          @MetaTypes = params['MetaTypes']
        end
      end

      # DescribeDSPASupportedMetas返回参数结构体
      class DescribeDSPASupportedMetasResponse < TencentCloud::Common::AbstractModel
        # @param Metas: 支持的元数据类型
        # @type Metas: Array
        # @param MaxDBInstanceLimit: 最大支持每批次同步数量
        # @type MaxDBInstanceLimit: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Metas, :MaxDBInstanceLimit, :RequestId

        def initialize(metas=nil, maxdbinstancelimit=nil, requestid=nil)
          @Metas = metas
          @MaxDBInstanceLimit = maxdbinstancelimit
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Metas'].nil?
            @Metas = []
            params['Metas'].each do |i|
              dspametatype_tmp = DSPAMetaType.new
              dspametatype_tmp.deserialize(i)
              @Metas << dspametatype_tmp
            end
          end
          @MaxDBInstanceLimit = params['MaxDBInstanceLimit']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDSPATaskResultDataSample请求参数结构体
      class DescribeDSPATaskResultDataSampleRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param FieldResultId: 字段扫描结果ID
        # @type FieldResultId: Integer
        # @param Order: 排序方式
        # @type Order: String
        # @param OrderField: 排序字段
        # @type OrderField: String

        attr_accessor :DspaId, :FieldResultId, :Order, :OrderField

        def initialize(dspaid=nil, fieldresultid=nil, order=nil, orderfield=nil)
          @DspaId = dspaid
          @FieldResultId = fieldresultid
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @FieldResultId = params['FieldResultId']
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeDSPATaskResultDataSample返回参数结构体
      class DescribeDSPATaskResultDataSampleResponse < TencentCloud::Common::AbstractModel
        # @param Items: 数据样本列表，最多10条数据
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId

        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dspafieldresultdatasample_tmp = DspaFieldResultDataSample.new
              dspafieldresultdatasample_tmp.deserialize(i)
              @Items << dspafieldresultdatasample_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeESAssetSensitiveDistribution请求参数结构体
      class DescribeESAssetSensitiveDistributionRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param ComplianceId: 合规组id
        # @type ComplianceId: Integer
        # @param AssetList: 查询的资产信息列表
        # @type AssetList: Array

        attr_accessor :DspaId, :ComplianceId, :AssetList

        def initialize(dspaid=nil, complianceid=nil, assetlist=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
          @AssetList = assetlist
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
          unless params['AssetList'].nil?
            @AssetList = []
            params['AssetList'].each do |i|
              assetlist_tmp = AssetList.new
              assetlist_tmp.deserialize(i)
              @AssetList << assetlist_tmp
            end
          end
        end
      end

      # DescribeESAssetSensitiveDistribution返回参数结构体
      class DescribeESAssetSensitiveDistributionResponse < TencentCloud::Common::AbstractModel
        # @param ESAsset: ES的资产统计数据
        # @type ESAsset: :class:`Tencentcloud::Dsgc.v20190723.models.ESAsset`
        # @param TopAsset: 涉敏top数据
        # @type TopAsset: Array
        # @param ESDetail: ES的详情列表
        # @type ESDetail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ESAsset, :TopAsset, :ESDetail, :RequestId

        def initialize(esasset=nil, topasset=nil, esdetail=nil, requestid=nil)
          @ESAsset = esasset
          @TopAsset = topasset
          @ESDetail = esdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ESAsset'].nil?
            @ESAsset = ESAsset.new
            @ESAsset.deserialize(params['ESAsset'])
          end
          unless params['TopAsset'].nil?
            @TopAsset = []
            params['TopAsset'].each do |i|
              topasset_tmp = TopAsset.new
              topasset_tmp.deserialize(i)
              @TopAsset << topasset_tmp
            end
          end
          unless params['ESDetail'].nil?
            @ESDetail = []
            params['ESDetail'].each do |i|
              esassetdbdetail_tmp = ESAssetDBDetail.new
              esassetdbdetail_tmp.deserialize(i)
              @ESDetail << esassetdbdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeExportTaskResult请求参数结构体
      class DescribeExportTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param ExportTaskId: 导出任务id
        # @type ExportTaskId: Integer

        attr_accessor :DspaId, :ExportTaskId

        def initialize(dspaid=nil, exporttaskid=nil)
          @DspaId = dspaid
          @ExportTaskId = exporttaskid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ExportTaskId = params['ExportTaskId']
        end
      end

      # DescribeExportTaskResult返回参数结构体
      class DescribeExportTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param ExportResult: 导出任务结果
        # @type ExportResult: String
        # @param ExportFileUrl: 导出文件地址
        # @type ExportFileUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExportResult, :ExportFileUrl, :RequestId

        def initialize(exportresult=nil, exportfileurl=nil, requestid=nil)
          @ExportResult = exportresult
          @ExportFileUrl = exportfileurl
          @RequestId = requestid
        end

        def deserialize(params)
          @ExportResult = params['ExportResult']
          @ExportFileUrl = params['ExportFileUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMongoAssetSensitiveDistribution请求参数结构体
      class DescribeMongoAssetSensitiveDistributionRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param ComplianceId: 合规组id
        # @type ComplianceId: Integer
        # @param AssetList: 查询的资产信息列表
        # @type AssetList: Array

        attr_accessor :DspaId, :ComplianceId, :AssetList

        def initialize(dspaid=nil, complianceid=nil, assetlist=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
          @AssetList = assetlist
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
          unless params['AssetList'].nil?
            @AssetList = []
            params['AssetList'].each do |i|
              assetlist_tmp = AssetList.new
              assetlist_tmp.deserialize(i)
              @AssetList << assetlist_tmp
            end
          end
        end
      end

      # DescribeMongoAssetSensitiveDistribution返回参数结构体
      class DescribeMongoAssetSensitiveDistributionResponse < TencentCloud::Common::AbstractModel
        # @param MongoAsset: mongo的资产统计数据
        # @type MongoAsset: :class:`Tencentcloud::Dsgc.v20190723.models.MongoAsset`
        # @param TopAsset: 涉敏top数据
        # @type TopAsset: Array
        # @param MongoDetail: mongo的详情列表
        # @type MongoDetail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MongoAsset, :TopAsset, :MongoDetail, :RequestId

        def initialize(mongoasset=nil, topasset=nil, mongodetail=nil, requestid=nil)
          @MongoAsset = mongoasset
          @TopAsset = topasset
          @MongoDetail = mongodetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MongoAsset'].nil?
            @MongoAsset = MongoAsset.new
            @MongoAsset.deserialize(params['MongoAsset'])
          end
          unless params['TopAsset'].nil?
            @TopAsset = []
            params['TopAsset'].each do |i|
              topasset_tmp = TopAsset.new
              topasset_tmp.deserialize(i)
              @TopAsset << topasset_tmp
            end
          end
          unless params['MongoDetail'].nil?
            @MongoDetail = []
            params['MongoDetail'].each do |i|
              mongoassetdbdetail_tmp = MongoAssetDBDetail.new
              mongoassetdbdetail_tmp.deserialize(i)
              @MongoDetail << mongoassetdbdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRDBAssetSensitiveDistribution请求参数结构体
      class DescribeRDBAssetSensitiveDistributionRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param ComplianceId: 合规组id
        # @type ComplianceId: Integer
        # @param AssetList: 查询的资产信息列表
        # @type AssetList: Array

        attr_accessor :DspaId, :ComplianceId, :AssetList

        def initialize(dspaid=nil, complianceid=nil, assetlist=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
          @AssetList = assetlist
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
          unless params['AssetList'].nil?
            @AssetList = []
            params['AssetList'].each do |i|
              assetlist_tmp = AssetList.new
              assetlist_tmp.deserialize(i)
              @AssetList << assetlist_tmp
            end
          end
        end
      end

      # DescribeRDBAssetSensitiveDistribution返回参数结构体
      class DescribeRDBAssetSensitiveDistributionResponse < TencentCloud::Common::AbstractModel
        # @param RDBAsset: rdb的资产统计数据
        # @type RDBAsset: :class:`Tencentcloud::Dsgc.v20190723.models.RDBAsset`
        # @param TopAsset: 涉敏top数据
        # @type TopAsset: Array
        # @param RDBDetail: rdb的详情列表
        # @type RDBDetail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RDBAsset, :TopAsset, :RDBDetail, :RequestId

        def initialize(rdbasset=nil, topasset=nil, rdbdetail=nil, requestid=nil)
          @RDBAsset = rdbasset
          @TopAsset = topasset
          @RDBDetail = rdbdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RDBAsset'].nil?
            @RDBAsset = RDBAsset.new
            @RDBAsset.deserialize(params['RDBAsset'])
          end
          unless params['TopAsset'].nil?
            @TopAsset = []
            params['TopAsset'].each do |i|
              topasset_tmp = TopAsset.new
              topasset_tmp.deserialize(i)
              @TopAsset << topasset_tmp
            end
          end
          unless params['RDBDetail'].nil?
            @RDBDetail = []
            params['RDBDetail'].each do |i|
              assetdbdetail_tmp = AssetDBDetail.new
              assetdbdetail_tmp.deserialize(i)
              @RDBDetail << assetdbdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReportTaskDownloadUrl请求参数结构体
      class DescribeReportTaskDownloadUrlRequest < TencentCloud::Common::AbstractModel
        # @param ReportTaskId: 任务id
        # @type ReportTaskId: Integer
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param IsWithSensitiveDetailReport: 是否同时下载敏感资产详情报告
        # @type IsWithSensitiveDetailReport: Boolean

        attr_accessor :ReportTaskId, :DspaId, :IsWithSensitiveDetailReport

        def initialize(reporttaskid=nil, dspaid=nil, iswithsensitivedetailreport=nil)
          @ReportTaskId = reporttaskid
          @DspaId = dspaid
          @IsWithSensitiveDetailReport = iswithsensitivedetailreport
        end

        def deserialize(params)
          @ReportTaskId = params['ReportTaskId']
          @DspaId = params['DspaId']
          @IsWithSensitiveDetailReport = params['IsWithSensitiveDetailReport']
        end
      end

      # DescribeReportTaskDownloadUrl返回参数结构体
      class DescribeReportTaskDownloadUrlResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrlSet: 下载链接集合
        # @type DownloadUrlSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrlSet, :RequestId

        def initialize(downloadurlset=nil, requestid=nil)
          @DownloadUrlSet = downloadurlset
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrlSet = params['DownloadUrlSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReportTasks请求参数结构体
      class DescribeReportTasksRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param ReportName: 报表名称
        # @type ReportName: String

        attr_accessor :DspaId, :Limit, :Offset, :ReportName

        def initialize(dspaid=nil, limit=nil, offset=nil, reportname=nil)
          @DspaId = dspaid
          @Limit = limit
          @Offset = offset
          @ReportName = reportname
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ReportName = params['ReportName']
        end
      end

      # DescribeReportTasks返回参数结构体
      class DescribeReportTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param ItemSet: 报表信息
        # @type ItemSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ItemSet, :RequestId

        def initialize(totalcount=nil, itemset=nil, requestid=nil)
          @TotalCount = totalcount
          @ItemSet = itemset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ItemSet'].nil?
            @ItemSet = []
            params['ItemSet'].each do |i|
              reportinfo_tmp = ReportInfo.new
              reportinfo_tmp.deserialize(i)
              @ItemSet << reportinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSensitiveCOSDataDistribution请求参数结构体
      class DescribeSensitiveCOSDataDistributionRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param ComplianceId: 2331
        # @type ComplianceId: Integer
        # @param AssetList: 查询的资产信息列表
        # @type AssetList: Array

        attr_accessor :DspaId, :ComplianceId, :AssetList

        def initialize(dspaid=nil, complianceid=nil, assetlist=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
          @AssetList = assetlist
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
          unless params['AssetList'].nil?
            @AssetList = []
            params['AssetList'].each do |i|
              assetlist_tmp = AssetList.new
              assetlist_tmp.deserialize(i)
              @AssetList << assetlist_tmp
            end
          end
        end
      end

      # DescribeSensitiveCOSDataDistribution返回参数结构体
      class DescribeSensitiveCOSDataDistributionResponse < TencentCloud::Common::AbstractModel
        # @param LevelDistribution: 分级分布
        # @type LevelDistribution: Array
        # @param CategoryDistribution: 分类分布
        # @type CategoryDistribution: Array
        # @param RuleDistribution: 规则分布详情
        # @type RuleDistribution: Array
        # @param SensitiveDataNum: 计算占比
        # @type SensitiveDataNum: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LevelDistribution, :CategoryDistribution, :RuleDistribution, :SensitiveDataNum, :RequestId

        def initialize(leveldistribution=nil, categorydistribution=nil, ruledistribution=nil, sensitivedatanum=nil, requestid=nil)
          @LevelDistribution = leveldistribution
          @CategoryDistribution = categorydistribution
          @RuleDistribution = ruledistribution
          @SensitiveDataNum = sensitivedatanum
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LevelDistribution'].nil?
            @LevelDistribution = []
            params['LevelDistribution'].each do |i|
              note_tmp = Note.new
              note_tmp.deserialize(i)
              @LevelDistribution << note_tmp
            end
          end
          unless params['CategoryDistribution'].nil?
            @CategoryDistribution = []
            params['CategoryDistribution'].each do |i|
              note_tmp = Note.new
              note_tmp.deserialize(i)
              @CategoryDistribution << note_tmp
            end
          end
          unless params['RuleDistribution'].nil?
            @RuleDistribution = []
            params['RuleDistribution'].each do |i|
              ruledistribution_tmp = RuleDistribution.new
              ruledistribution_tmp.deserialize(i)
              @RuleDistribution << ruledistribution_tmp
            end
          end
          @SensitiveDataNum = params['SensitiveDataNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSensitiveRDBDataDistribution请求参数结构体
      class DescribeSensitiveRDBDataDistributionRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa-实例id
        # @type DspaId: String
        # @param ComplianceId: 合规组id
        # @type ComplianceId: Integer
        # @param AssetList: 查询的资产信息列表
        # @type AssetList: Array

        attr_accessor :DspaId, :ComplianceId, :AssetList

        def initialize(dspaid=nil, complianceid=nil, assetlist=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
          @AssetList = assetlist
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
          unless params['AssetList'].nil?
            @AssetList = []
            params['AssetList'].each do |i|
              assetlist_tmp = AssetList.new
              assetlist_tmp.deserialize(i)
              @AssetList << assetlist_tmp
            end
          end
        end
      end

      # DescribeSensitiveRDBDataDistribution返回参数结构体
      class DescribeSensitiveRDBDataDistributionResponse < TencentCloud::Common::AbstractModel
        # @param LevelDistribution: 分级分布
        # @type LevelDistribution: Array
        # @param CategoryDistribution: 分类分布
        # @type CategoryDistribution: Array
        # @param RuleDistribution: 敏感规则分布详情列表
        # @type RuleDistribution: Array
        # @param SensitiveDataNum: 计算占比字段
        # @type SensitiveDataNum: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LevelDistribution, :CategoryDistribution, :RuleDistribution, :SensitiveDataNum, :RequestId

        def initialize(leveldistribution=nil, categorydistribution=nil, ruledistribution=nil, sensitivedatanum=nil, requestid=nil)
          @LevelDistribution = leveldistribution
          @CategoryDistribution = categorydistribution
          @RuleDistribution = ruledistribution
          @SensitiveDataNum = sensitivedatanum
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LevelDistribution'].nil?
            @LevelDistribution = []
            params['LevelDistribution'].each do |i|
              note_tmp = Note.new
              note_tmp.deserialize(i)
              @LevelDistribution << note_tmp
            end
          end
          unless params['CategoryDistribution'].nil?
            @CategoryDistribution = []
            params['CategoryDistribution'].each do |i|
              note_tmp = Note.new
              note_tmp.deserialize(i)
              @CategoryDistribution << note_tmp
            end
          end
          unless params['RuleDistribution'].nil?
            @RuleDistribution = []
            params['RuleDistribution'].each do |i|
              ruledistribution_tmp = RuleDistribution.new
              ruledistribution_tmp.deserialize(i)
              @RuleDistribution << ruledistribution_tmp
            end
          end
          @SensitiveDataNum = params['SensitiveDataNum']
          @RequestId = params['RequestId']
        end
      end

      # DisableDSPAMetaResourceAuth请求参数结构体
      class DisableDSPAMetaResourceAuthRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param MetaType: 资源类型。
        # @type MetaType: String
        # @param ResourceRegion: 资源所处地域。
        # @type ResourceRegion: String
        # @param ResourceIDs: 用户云资源ID列表。
        # @type ResourceIDs: Array

        attr_accessor :DspaId, :MetaType, :ResourceRegion, :ResourceIDs

        def initialize(dspaid=nil, metatype=nil, resourceregion=nil, resourceids=nil)
          @DspaId = dspaid
          @MetaType = metatype
          @ResourceRegion = resourceregion
          @ResourceIDs = resourceids
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @MetaType = params['MetaType']
          @ResourceRegion = params['ResourceRegion']
          @ResourceIDs = params['ResourceIDs']
        end
      end

      # DisableDSPAMetaResourceAuth返回参数结构体
      class DisableDSPAMetaResourceAuthResponse < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param Results: 授权结果。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DspaId, :Results, :RequestId

        def initialize(dspaid=nil, results=nil, requestid=nil)
          @DspaId = dspaid
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              dspataskresult_tmp = DspaTaskResult.new
              dspataskresult_tmp.deserialize(i)
              @Results << dspataskresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DSPA敏感数据扫描数据源条件
      class DiscoveryCondition < TencentCloud::Common::AbstractModel
        # @param RDBInstances: RDB实例列表
        # @type RDBInstances: Array
        # @param COSInstances: COS实例列表
        # @type COSInstances: Array
        # @param NOSQLInstances: Mongo实例列表
        # @type NOSQLInstances: Array
        # @param ESInstances: ES实例列表
        # @type ESInstances: Array

        attr_accessor :RDBInstances, :COSInstances, :NOSQLInstances, :ESInstances

        def initialize(rdbinstances=nil, cosinstances=nil, nosqlinstances=nil, esinstances=nil)
          @RDBInstances = rdbinstances
          @COSInstances = cosinstances
          @NOSQLInstances = nosqlinstances
          @ESInstances = esinstances
        end

        def deserialize(params)
          unless params['RDBInstances'].nil?
            @RDBInstances = []
            params['RDBInstances'].each do |i|
              rdbinstance_tmp = RDBInstance.new
              rdbinstance_tmp.deserialize(i)
              @RDBInstances << rdbinstance_tmp
            end
          end
          unless params['COSInstances'].nil?
            @COSInstances = []
            params['COSInstances'].each do |i|
              cosinstance_tmp = COSInstance.new
              cosinstance_tmp.deserialize(i)
              @COSInstances << cosinstance_tmp
            end
          end
          unless params['NOSQLInstances'].nil?
            @NOSQLInstances = []
            params['NOSQLInstances'].each do |i|
              nosqlinstance_tmp = NOSQLInstance.new
              nosqlinstance_tmp.deserialize(i)
              @NOSQLInstances << nosqlinstance_tmp
            end
          end
          unless params['ESInstances'].nil?
            @ESInstances = []
            params['ESInstances'].each do |i|
              esinstance_tmp = ESInstance.new
              esinstance_tmp.deserialize(i)
              @ESInstances << esinstance_tmp
            end
          end
        end
      end

      # 描述键值对过滤器，用于条件过滤查询
      class DspaAssessmentFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤类型。
        # @type Name: String
        # @param Values: 过滤类型的值。
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # COS对象存储敏感数据资产统计
      class DspaCOSDataAssetCount < TencentCloud::Common::AbstractModel
        # @param DataAssetType: 数组资产类型，0代表关系型数据库资产，1代表对象存储COS资产
        # @type DataAssetType: Integer
        # @param TotalBucketCnt: 已扫描的存储桶的个数
        # @type TotalBucketCnt: Integer
        # @param TotalObjectCnt: 对象总数
        # @type TotalObjectCnt: Integer
        # @param SensitiveCategoryCnt: 敏感数据类型个数
        # @type SensitiveCategoryCnt: Integer
        # @param SensitiveDataCnt: 敏感数据条数
        # @type SensitiveDataCnt: Integer
        # @param SensitiveLevel: 敏感等级分布
        # @type SensitiveLevel: Array
        # @param SensitiveBucketCnt: 敏感存储桶个数
        # @type SensitiveBucketCnt: Integer
        # @param SensitiveObjectCnt: 敏感对象个数
        # @type SensitiveObjectCnt: Integer
        # @param CategoryDistributed: 数据分类分布
        # @type CategoryDistributed: Array

        attr_accessor :DataAssetType, :TotalBucketCnt, :TotalObjectCnt, :SensitiveCategoryCnt, :SensitiveDataCnt, :SensitiveLevel, :SensitiveBucketCnt, :SensitiveObjectCnt, :CategoryDistributed

        def initialize(dataassettype=nil, totalbucketcnt=nil, totalobjectcnt=nil, sensitivecategorycnt=nil, sensitivedatacnt=nil, sensitivelevel=nil, sensitivebucketcnt=nil, sensitiveobjectcnt=nil, categorydistributed=nil)
          @DataAssetType = dataassettype
          @TotalBucketCnt = totalbucketcnt
          @TotalObjectCnt = totalobjectcnt
          @SensitiveCategoryCnt = sensitivecategorycnt
          @SensitiveDataCnt = sensitivedatacnt
          @SensitiveLevel = sensitivelevel
          @SensitiveBucketCnt = sensitivebucketcnt
          @SensitiveObjectCnt = sensitiveobjectcnt
          @CategoryDistributed = categorydistributed
        end

        def deserialize(params)
          @DataAssetType = params['DataAssetType']
          @TotalBucketCnt = params['TotalBucketCnt']
          @TotalObjectCnt = params['TotalObjectCnt']
          @SensitiveCategoryCnt = params['SensitiveCategoryCnt']
          @SensitiveDataCnt = params['SensitiveDataCnt']
          unless params['SensitiveLevel'].nil?
            @SensitiveLevel = []
            params['SensitiveLevel'].each do |i|
              sensitivelevel_tmp = SensitiveLevel.new
              sensitivelevel_tmp.deserialize(i)
              @SensitiveLevel << sensitivelevel_tmp
            end
          end
          @SensitiveBucketCnt = params['SensitiveBucketCnt']
          @SensitiveObjectCnt = params['SensitiveObjectCnt']
          unless params['CategoryDistributed'].nil?
            @CategoryDistributed = []
            params['CategoryDistributed'].each do |i|
              dspadatacategorydistributed_tmp = DspaDataCategoryDistributed.new
              dspadatacategorydistributed_tmp.deserialize(i)
              @CategoryDistributed << dspadatacategorydistributed_tmp
            end
          end
        end
      end

      # COS对象存储数据资产详情
      class DspaCOSDataAssetDetail < TencentCloud::Common::AbstractModel
        # @param BucketName: 对象桶
        # @type BucketName: String
        # @param FileName: 对象名称
        # @type FileName: String
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param SensitiveDataCount: 出现次数
        # @type SensitiveDataCount: Integer
        # @param CategoryName: 敏感数据分类
        # @type CategoryName: String
        # @param LevelRiskName: 敏感等级
        # @type LevelRiskName: String
        # @param KMSEncrypted: KMS加密
        # @type KMSEncrypted: Boolean
        # @param FileType: 文件类型
        # @type FileType: String
        # @param FileSize: 文件大小
        # @type FileSize: String
        # @param LevelRiskScore: 敏感数据分级分数
        # @type LevelRiskScore: Integer
        # @param DataSourceId: 数据源ID
        # @type DataSourceId: String
        # @param RuleId: 规则id
        # @type RuleId: Integer
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String
        # @param CategoryId: 分类ID
        # @type CategoryId: Integer
        # @param LevelId: 分级ID
        # @type LevelId: Integer
        # @param FileResultId: 文件扫描结果ID
        # @type FileResultId: Integer
        # @param DataSourceName: 数据源名称
        # @type DataSourceName: String
        # @param CategoryFullPath: 分类路径
        # @type CategoryFullPath: String
        # @param IdentifyType: 0-系统识别
        # 1-人工识别
        # @type IdentifyType: Integer
        # @param CheckStatus: 0-系统识别
        # 1-人工识别
        # @type CheckStatus: Integer

        attr_accessor :BucketName, :FileName, :RuleName, :SensitiveDataCount, :CategoryName, :LevelRiskName, :KMSEncrypted, :FileType, :FileSize, :LevelRiskScore, :DataSourceId, :RuleId, :ResourceRegion, :CategoryId, :LevelId, :FileResultId, :DataSourceName, :CategoryFullPath, :IdentifyType, :CheckStatus

        def initialize(bucketname=nil, filename=nil, rulename=nil, sensitivedatacount=nil, categoryname=nil, levelriskname=nil, kmsencrypted=nil, filetype=nil, filesize=nil, levelriskscore=nil, datasourceid=nil, ruleid=nil, resourceregion=nil, categoryid=nil, levelid=nil, fileresultid=nil, datasourcename=nil, categoryfullpath=nil, identifytype=nil, checkstatus=nil)
          @BucketName = bucketname
          @FileName = filename
          @RuleName = rulename
          @SensitiveDataCount = sensitivedatacount
          @CategoryName = categoryname
          @LevelRiskName = levelriskname
          @KMSEncrypted = kmsencrypted
          @FileType = filetype
          @FileSize = filesize
          @LevelRiskScore = levelriskscore
          @DataSourceId = datasourceid
          @RuleId = ruleid
          @ResourceRegion = resourceregion
          @CategoryId = categoryid
          @LevelId = levelid
          @FileResultId = fileresultid
          @DataSourceName = datasourcename
          @CategoryFullPath = categoryfullpath
          @IdentifyType = identifytype
          @CheckStatus = checkstatus
        end

        def deserialize(params)
          @BucketName = params['BucketName']
          @FileName = params['FileName']
          @RuleName = params['RuleName']
          @SensitiveDataCount = params['SensitiveDataCount']
          @CategoryName = params['CategoryName']
          @LevelRiskName = params['LevelRiskName']
          @KMSEncrypted = params['KMSEncrypted']
          @FileType = params['FileType']
          @FileSize = params['FileSize']
          @LevelRiskScore = params['LevelRiskScore']
          @DataSourceId = params['DataSourceId']
          @RuleId = params['RuleId']
          @ResourceRegion = params['ResourceRegion']
          @CategoryId = params['CategoryId']
          @LevelId = params['LevelId']
          @FileResultId = params['FileResultId']
          @DataSourceName = params['DataSourceName']
          @CategoryFullPath = params['CategoryFullPath']
          @IdentifyType = params['IdentifyType']
          @CheckStatus = params['CheckStatus']
        end
      end

      # COS敏感数据扫描任务相关信息
      class DspaCOSDiscoveryTask < TencentCloud::Common::AbstractModel
        # @param Name: 任务名称
        # @type Name: String
        # @param Description: 任务描述
        # @type Description: String
        # @param Period: 执行周期，0单次 1每天 2每周 3每月
        # @type Period: Integer
        # @param Plan: 执行计划，0立即 1定时
        # @type Plan: Integer
        # @param Enable: 任务开关；1 打开，0 关闭
        # @type Enable: Integer
        # @param DataSourceInfo: 数据源对象信息
        # @type DataSourceInfo: :class:`Tencentcloud::Dsgc.v20190723.models.DspaCOSDiscoveryTaskDataSourceInfo`
        # @param GeneralRuleSetEnable: 通用规则集开关，0 关闭，1 启用
        # @type GeneralRuleSetEnable: Integer
        # @param Result: 任务最新的一次执行结果信息，该字段用于查询任务列表接口
        # @type Result: :class:`Tencentcloud::Dsgc.v20190723.models.ScanTaskResult`
        # @param TimingStartTime: 定时开始时间
        # @type TimingStartTime: String
        # @param ComplianceUpdate: 关联分类模板是否更新
        # @type ComplianceUpdate: Boolean

        attr_accessor :Name, :Description, :Period, :Plan, :Enable, :DataSourceInfo, :GeneralRuleSetEnable, :Result, :TimingStartTime, :ComplianceUpdate

        def initialize(name=nil, description=nil, period=nil, plan=nil, enable=nil, datasourceinfo=nil, generalrulesetenable=nil, result=nil, timingstarttime=nil, complianceupdate=nil)
          @Name = name
          @Description = description
          @Period = period
          @Plan = plan
          @Enable = enable
          @DataSourceInfo = datasourceinfo
          @GeneralRuleSetEnable = generalrulesetenable
          @Result = result
          @TimingStartTime = timingstarttime
          @ComplianceUpdate = complianceupdate
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @Period = params['Period']
          @Plan = params['Plan']
          @Enable = params['Enable']
          unless params['DataSourceInfo'].nil?
            @DataSourceInfo = DspaCOSDiscoveryTaskDataSourceInfo.new
            @DataSourceInfo.deserialize(params['DataSourceInfo'])
          end
          @GeneralRuleSetEnable = params['GeneralRuleSetEnable']
          unless params['Result'].nil?
            @Result = ScanTaskResult.new
            @Result.deserialize(params['Result'])
          end
          @TimingStartTime = params['TimingStartTime']
          @ComplianceUpdate = params['ComplianceUpdate']
        end
      end

      # 扫描任务元数据信息
      class DspaCOSDiscoveryTaskDataSourceInfo < TencentCloud::Common::AbstractModel
        # @param DataSourceId: 数据源ID
        # @type DataSourceId: String
        # @param ProxyAddress: 代理地址
        # @type ProxyAddress: Array
        # @param DataSourceName: 数据源名称
        # @type DataSourceName: String
        # @param Condition: 扫描任务条件
        # @type Condition: :class:`Tencentcloud::Dsgc.v20190723.models.DspaDiscoveryTaskCOSCondition`
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String

        attr_accessor :DataSourceId, :ProxyAddress, :DataSourceName, :Condition, :ResourceRegion

        def initialize(datasourceid=nil, proxyaddress=nil, datasourcename=nil, condition=nil, resourceregion=nil)
          @DataSourceId = datasourceid
          @ProxyAddress = proxyaddress
          @DataSourceName = datasourcename
          @Condition = condition
          @ResourceRegion = resourceregion
        end

        def deserialize(params)
          @DataSourceId = params['DataSourceId']
          @ProxyAddress = params['ProxyAddress']
          @DataSourceName = params['DataSourceName']
          unless params['Condition'].nil?
            @Condition = DspaDiscoveryTaskCOSCondition.new
            @Condition.deserialize(params['Condition'])
          end
          @ResourceRegion = params['ResourceRegion']
        end
      end

      # COS敏感数据扫描任务相关信息
      class DspaCOSDiscoveryTaskDetail < TencentCloud::Common::AbstractModel
        # @param Name: 任务名称
        # @type Name: String
        # @param Description: 任务描述
        # @type Description: String
        # @param Period: 执行周期，0单次 1每天 2每周 3每月
        # @type Period: Integer
        # @param Plan: 执行计划，0立即 1定时
        # @type Plan: Integer
        # @param Enable: 任务开关；1 打开，0 关闭
        # @type Enable: Integer
        # @param DataSourceInfo: 数据源对象信息
        # @type DataSourceInfo: :class:`Tencentcloud::Dsgc.v20190723.models.DspaCOSDiscoveryTaskDataSourceInfo`
        # @param GeneralRuleSetEnable: 通用规则集开关，0 关闭，1 启用
        # @type GeneralRuleSetEnable: Integer
        # @param DefaultComplianceInfo: 当创建任务时，用户打开了通用规则集开关，则该字段就会保存默认合规组信息
        # @type DefaultComplianceInfo: Array
        # @param CustomComplianceInfo: 该任务中用户选择的合规组信息列表
        # @type CustomComplianceInfo: Array
        # @param TimingStartTime: 定时开始时间
        # @type TimingStartTime: String

        attr_accessor :Name, :Description, :Period, :Plan, :Enable, :DataSourceInfo, :GeneralRuleSetEnable, :DefaultComplianceInfo, :CustomComplianceInfo, :TimingStartTime

        def initialize(name=nil, description=nil, period=nil, plan=nil, enable=nil, datasourceinfo=nil, generalrulesetenable=nil, defaultcomplianceinfo=nil, customcomplianceinfo=nil, timingstarttime=nil)
          @Name = name
          @Description = description
          @Period = period
          @Plan = plan
          @Enable = enable
          @DataSourceInfo = datasourceinfo
          @GeneralRuleSetEnable = generalrulesetenable
          @DefaultComplianceInfo = defaultcomplianceinfo
          @CustomComplianceInfo = customcomplianceinfo
          @TimingStartTime = timingstarttime
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @Period = params['Period']
          @Plan = params['Plan']
          @Enable = params['Enable']
          unless params['DataSourceInfo'].nil?
            @DataSourceInfo = DspaCOSDiscoveryTaskDataSourceInfo.new
            @DataSourceInfo.deserialize(params['DataSourceInfo'])
          end
          @GeneralRuleSetEnable = params['GeneralRuleSetEnable']
          unless params['DefaultComplianceInfo'].nil?
            @DefaultComplianceInfo = []
            params['DefaultComplianceInfo'].each do |i|
              scantaskcomplianceinfo_tmp = ScanTaskComplianceInfo.new
              scantaskcomplianceinfo_tmp.deserialize(i)
              @DefaultComplianceInfo << scantaskcomplianceinfo_tmp
            end
          end
          unless params['CustomComplianceInfo'].nil?
            @CustomComplianceInfo = []
            params['CustomComplianceInfo'].each do |i|
              scantaskcomplianceinfo_tmp = ScanTaskComplianceInfo.new
              scantaskcomplianceinfo_tmp.deserialize(i)
              @CustomComplianceInfo << scantaskcomplianceinfo_tmp
            end
          end
          @TimingStartTime = params['TimingStartTime']
        end
      end

      # COS扫描任务结果，按照数据库级别展示
      class DspaCOSDiscoveryTaskResult < TencentCloud::Common::AbstractModel
        # @param BucketResultId: 扫描bucket结果ID
        # @type BucketResultId: Integer
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param ResultId: 扫描任务最新一次扫描结果ID
        # @type ResultId: Integer
        # @param DataSourceId: 数据源ID
        # @type DataSourceId: String
        # @param BucketName: 桶名称
        # @type BucketName: String
        # @param TotalFiles: 总文件数
        # @type TotalFiles: Integer
        # @param SensitiveDataNums: 被识别出的敏感数据数
        # @type SensitiveDataNums: Integer
        # @param EndTime: Bucket扫描的结束时间，格式如：2006-01-02 15:04:05
        # @type EndTime: String
        # @param DataSourceName: 数据源名称
        # @type DataSourceName: String
        # @param Status: Bucket扫描状态，0待扫描 1扫描中 2扫描终止 3扫描成功 4扫描失败
        # @type Status: Integer
        # @param ErrorInfo: Bucket扫描结果错误信息
        # @type ErrorInfo: String
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String
        # @param OverSize: 是否超额
        # @type OverSize: String

        attr_accessor :BucketResultId, :TaskId, :TaskName, :ResultId, :DataSourceId, :BucketName, :TotalFiles, :SensitiveDataNums, :EndTime, :DataSourceName, :Status, :ErrorInfo, :ResourceRegion, :OverSize

        def initialize(bucketresultid=nil, taskid=nil, taskname=nil, resultid=nil, datasourceid=nil, bucketname=nil, totalfiles=nil, sensitivedatanums=nil, endtime=nil, datasourcename=nil, status=nil, errorinfo=nil, resourceregion=nil, oversize=nil)
          @BucketResultId = bucketresultid
          @TaskId = taskid
          @TaskName = taskname
          @ResultId = resultid
          @DataSourceId = datasourceid
          @BucketName = bucketname
          @TotalFiles = totalfiles
          @SensitiveDataNums = sensitivedatanums
          @EndTime = endtime
          @DataSourceName = datasourcename
          @Status = status
          @ErrorInfo = errorinfo
          @ResourceRegion = resourceregion
          @OverSize = oversize
        end

        def deserialize(params)
          @BucketResultId = params['BucketResultId']
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @ResultId = params['ResultId']
          @DataSourceId = params['DataSourceId']
          @BucketName = params['BucketName']
          @TotalFiles = params['TotalFiles']
          @SensitiveDataNums = params['SensitiveDataNums']
          @EndTime = params['EndTime']
          @DataSourceName = params['DataSourceName']
          @Status = params['Status']
          @ErrorInfo = params['ErrorInfo']
          @ResourceRegion = params['ResourceRegion']
          @OverSize = params['OverSize']
        end
      end

      # 云上资源元数据
      class DspaCloudResourceMeta < TencentCloud::Common::AbstractModel
        # @param ResourceId: 用户资源ID。
        # @type ResourceId: String
        # @param ResourceName: 资源名称。
        # @type ResourceName: String
        # @param ResourceVip: 资源VIP。
        # @type ResourceVip: String
        # @param ResourceVPort: 资源端口。
        # @type ResourceVPort: Integer
        # @param ResourceCreateTime: 资源被创建时间。
        # @type ResourceCreateTime: String
        # @param ResourceUniqueVpcId: 用户资源VPC ID 字符串。
        # @type ResourceUniqueVpcId: String
        # @param ResourceUniqueSubnetId: 用户资源Subnet ID 字符串。
        # @type ResourceUniqueSubnetId: String

        attr_accessor :ResourceId, :ResourceName, :ResourceVip, :ResourceVPort, :ResourceCreateTime, :ResourceUniqueVpcId, :ResourceUniqueSubnetId

        def initialize(resourceid=nil, resourcename=nil, resourcevip=nil, resourcevport=nil, resourcecreatetime=nil, resourceuniquevpcid=nil, resourceuniquesubnetid=nil)
          @ResourceId = resourceid
          @ResourceName = resourcename
          @ResourceVip = resourcevip
          @ResourceVPort = resourcevport
          @ResourceCreateTime = resourcecreatetime
          @ResourceUniqueVpcId = resourceuniquevpcid
          @ResourceUniqueSubnetId = resourceuniquesubnetid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          @ResourceVip = params['ResourceVip']
          @ResourceVPort = params['ResourceVPort']
          @ResourceCreateTime = params['ResourceCreateTime']
          @ResourceUniqueVpcId = params['ResourceUniqueVpcId']
          @ResourceUniqueSubnetId = params['ResourceUniqueSubnetId']
        end
      end

      # DSPA数据分类分布
      class DspaDataCategoryDistributed < TencentCloud::Common::AbstractModel
        # @param CategoryId: 数据分类ID
        # @type CategoryId: Integer
        # @param CategoryName: 数据分类名称
        # @type CategoryName: String
        # @param Count: 数据分类统计个数
        # @type Count: Integer
        # @param CategoryFullPath: 分类路径
        # @type CategoryFullPath: String

        attr_accessor :CategoryId, :CategoryName, :Count, :CategoryFullPath

        def initialize(categoryid=nil, categoryname=nil, count=nil, categoryfullpath=nil)
          @CategoryId = categoryid
          @CategoryName = categoryname
          @Count = count
          @CategoryFullPath = categoryfullpath
        end

        def deserialize(params)
          @CategoryId = params['CategoryId']
          @CategoryName = params['CategoryName']
          @Count = params['Count']
          @CategoryFullPath = params['CategoryFullPath']
        end
      end

      # 过滤内容
      class DspaDataSourceMngFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤类型。
        # @type Name: String
        # @param Values: 过滤类型的值。
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # COS敏感数据识别规则
      class DspaDiscoveryCOSDataRule < TencentCloud::Common::AbstractModel
        # @param Operator: 只能取and 、or两个值其中之一，and：字段和内容同时满足，or：字段和内容满足其一.
        # 默认值为or
        # @type Operator: String
        # @param Contents: 规则内容
        # @type Contents: Array

        attr_accessor :Operator, :Contents

        def initialize(operator=nil, contents=nil)
          @Operator = operator
          @Contents = contents
        end

        def deserialize(params)
          @Operator = params['Operator']
          unless params['Contents'].nil?
            @Contents = []
            params['Contents'].each do |i|
              dspadiscoverydatacontent_tmp = DspaDiscoveryDataContent.new
              dspadiscoverydatacontent_tmp.deserialize(i)
              @Contents << dspadiscoverydatacontent_tmp
            end
          end
        end
      end

      # 分类分级任务COS识别规则
      class DspaDiscoveryCOSRules < TencentCloud::Common::AbstractModel
        # @param Status: 规则状态；0 不启用, 1 启用
        # @type Status: Integer
        # @param RegexRule: regex规则内容
        # @type RegexRule: :class:`Tencentcloud::Dsgc.v20190723.models.DspaDiscoveryCOSDataRule`
        # @param KeywordRule: 关键词规则内容组，最大支持5个关键词。
        # @type KeywordRule: :class:`Tencentcloud::Dsgc.v20190723.models.DspaDiscoveryCOSDataRule`
        # @param IgnoreStringRule: 忽略词规则内容组，最大支持5个忽略词。
        # @type IgnoreStringRule: :class:`Tencentcloud::Dsgc.v20190723.models.DspaDiscoveryCOSDataRule`
        # @param MaxMatch: 最大匹配距离，默认值为100。上限为500.
        # @type MaxMatch: Integer

        attr_accessor :Status, :RegexRule, :KeywordRule, :IgnoreStringRule, :MaxMatch

        def initialize(status=nil, regexrule=nil, keywordrule=nil, ignorestringrule=nil, maxmatch=nil)
          @Status = status
          @RegexRule = regexrule
          @KeywordRule = keywordrule
          @IgnoreStringRule = ignorestringrule
          @MaxMatch = maxmatch
        end

        def deserialize(params)
          @Status = params['Status']
          unless params['RegexRule'].nil?
            @RegexRule = DspaDiscoveryCOSDataRule.new
            @RegexRule.deserialize(params['RegexRule'])
          end
          unless params['KeywordRule'].nil?
            @KeywordRule = DspaDiscoveryCOSDataRule.new
            @KeywordRule.deserialize(params['KeywordRule'])
          end
          unless params['IgnoreStringRule'].nil?
            @IgnoreStringRule = DspaDiscoveryCOSDataRule.new
            @IgnoreStringRule.deserialize(params['IgnoreStringRule'])
          end
          @MaxMatch = params['MaxMatch']
        end
      end

      # COS扫描任务结果详情
      class DspaDiscoveryCOSTaskResultDetail < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param FileResultId: 扫描File结果详情ID
        # @type FileResultId: Integer
        # @param BucketName: 所属桶名
        # @type BucketName: String
        # @param FileName: 所属文件名
        # @type FileName: String
        # @param CategoryId: 敏感数据分类ID
        # @type CategoryId: Integer
        # @param CategoryName: 敏感数据分类名称
        # @type CategoryName: String
        # @param LevelId: 敏感数据分级ID
        # @type LevelId: Integer
        # @param LevelName: 敏感数据分级名称
        # @type LevelName: String
        # @param KMSEncrypted: KMS加密，true or false
        # @type KMSEncrypted: Boolean
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param LevelRiskScore: 敏感数据分级分数
        # @type LevelRiskScore: Integer
        # @param FileSize: 文件大小，单位为KB
        # @type FileSize: Integer
        # @param FileType: 文件类型，如csv，txt
        # @type FileType: String
        # @param SensitiveDataCount: 敏感数据出现次数
        # @type SensitiveDataCount: Integer
        # @param CategoryFullPath: 分类树路径
        # @type CategoryFullPath: Array
        # @param CategoryArr: 分类树路径
        # @type CategoryArr: Array
        # @param ComplianceId: 合规组ID
        # @type ComplianceId: Integer
        # @param ResultId: 结果id
        # @type ResultId: Integer

        attr_accessor :TaskId, :FileResultId, :BucketName, :FileName, :CategoryId, :CategoryName, :LevelId, :LevelName, :KMSEncrypted, :RuleName, :RuleId, :LevelRiskScore, :FileSize, :FileType, :SensitiveDataCount, :CategoryFullPath, :CategoryArr, :ComplianceId, :ResultId

        def initialize(taskid=nil, fileresultid=nil, bucketname=nil, filename=nil, categoryid=nil, categoryname=nil, levelid=nil, levelname=nil, kmsencrypted=nil, rulename=nil, ruleid=nil, levelriskscore=nil, filesize=nil, filetype=nil, sensitivedatacount=nil, categoryfullpath=nil, categoryarr=nil, complianceid=nil, resultid=nil)
          @TaskId = taskid
          @FileResultId = fileresultid
          @BucketName = bucketname
          @FileName = filename
          @CategoryId = categoryid
          @CategoryName = categoryname
          @LevelId = levelid
          @LevelName = levelname
          @KMSEncrypted = kmsencrypted
          @RuleName = rulename
          @RuleId = ruleid
          @LevelRiskScore = levelriskscore
          @FileSize = filesize
          @FileType = filetype
          @SensitiveDataCount = sensitivedatacount
          @CategoryFullPath = categoryfullpath
          @CategoryArr = categoryarr
          @ComplianceId = complianceid
          @ResultId = resultid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @FileResultId = params['FileResultId']
          @BucketName = params['BucketName']
          @FileName = params['FileName']
          @CategoryId = params['CategoryId']
          @CategoryName = params['CategoryName']
          @LevelId = params['LevelId']
          @LevelName = params['LevelName']
          @KMSEncrypted = params['KMSEncrypted']
          @RuleName = params['RuleName']
          @RuleId = params['RuleId']
          @LevelRiskScore = params['LevelRiskScore']
          @FileSize = params['FileSize']
          @FileType = params['FileType']
          @SensitiveDataCount = params['SensitiveDataCount']
          @CategoryFullPath = params['CategoryFullPath']
          @CategoryArr = params['CategoryArr']
          @ComplianceId = params['ComplianceId']
          @ResultId = params['ResultId']
        end
      end

      # 合规组
      class DspaDiscoveryComplianceGroup < TencentCloud::Common::AbstractModel
        # @param ComplianceGroupId: 合规组ID
        # @type ComplianceGroupId: Integer
        # @param Name: 合规组名称
        # @type Name: String
        # @param Description: 合规组描述信息
        # @type Description: String
        # @param ComplianceGroupType: 合规组类型；0 默认合规组，1 系统合规组（除默认合规组外）, 2 自定义合规组
        # @type ComplianceGroupType: Integer
        # @param ComplianceGroupRules: 合规组对应的规则项
        # @type ComplianceGroupRules: Array
        # @param LevelGroupId: 合规组对应的分级组ID
        # @type LevelGroupId: Integer

        attr_accessor :ComplianceGroupId, :Name, :Description, :ComplianceGroupType, :ComplianceGroupRules, :LevelGroupId

        def initialize(compliancegroupid=nil, name=nil, description=nil, compliancegrouptype=nil, compliancegrouprules=nil, levelgroupid=nil)
          @ComplianceGroupId = compliancegroupid
          @Name = name
          @Description = description
          @ComplianceGroupType = compliancegrouptype
          @ComplianceGroupRules = compliancegrouprules
          @LevelGroupId = levelgroupid
        end

        def deserialize(params)
          @ComplianceGroupId = params['ComplianceGroupId']
          @Name = params['Name']
          @Description = params['Description']
          @ComplianceGroupType = params['ComplianceGroupType']
          unless params['ComplianceGroupRules'].nil?
            @ComplianceGroupRules = []
            params['ComplianceGroupRules'].each do |i|
              dspadiscoverycompliancegroupruleinfo_tmp = DspaDiscoveryComplianceGroupRuleInfo.new
              dspadiscoverycompliancegroupruleinfo_tmp.deserialize(i)
              @ComplianceGroupRules << dspadiscoverycompliancegroupruleinfo_tmp
            end
          end
          @LevelGroupId = params['LevelGroupId']
        end
      end

      # 合规组信息
      class DspaDiscoveryComplianceGroupInfo < TencentCloud::Common::AbstractModel
        # @param ComplianceGroupId: 合规组ID
        # @type ComplianceGroupId: Integer
        # @param Name: 合规组名称
        # @type Name: String
        # @param Description: 合规组描述信息
        # @type Description: String
        # @param ComplianceGroupType: 合规组类型；0 默认合规组，1 系统合规组（除默认合规组外）, 2 自定义合规组
        # @type ComplianceGroupType: Integer
        # @param ComplianceGroupRules: 合规组对应的规则项
        # @type ComplianceGroupRules: Array
        # @param LevelGroupId: 合规组对应的分级组ID
        # @type LevelGroupId: Integer
        # @param Disabled: 是否禁止使用（true，禁止使用，false，可以使用）
        # @type Disabled: Boolean
        # @param IsAlias: 是否别名
        # @type IsAlias: Boolean
        # @param Status: 1代表模版开启，0代表模版关闭
        # @type Status: Integer
        # @param ModifyTime: 模版最后修改时间
        # @type ModifyTime: String

        attr_accessor :ComplianceGroupId, :Name, :Description, :ComplianceGroupType, :ComplianceGroupRules, :LevelGroupId, :Disabled, :IsAlias, :Status, :ModifyTime

        def initialize(compliancegroupid=nil, name=nil, description=nil, compliancegrouptype=nil, compliancegrouprules=nil, levelgroupid=nil, disabled=nil, isalias=nil, status=nil, modifytime=nil)
          @ComplianceGroupId = compliancegroupid
          @Name = name
          @Description = description
          @ComplianceGroupType = compliancegrouptype
          @ComplianceGroupRules = compliancegrouprules
          @LevelGroupId = levelgroupid
          @Disabled = disabled
          @IsAlias = isalias
          @Status = status
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @ComplianceGroupId = params['ComplianceGroupId']
          @Name = params['Name']
          @Description = params['Description']
          @ComplianceGroupType = params['ComplianceGroupType']
          unless params['ComplianceGroupRules'].nil?
            @ComplianceGroupRules = []
            params['ComplianceGroupRules'].each do |i|
              dspadiscoverycompliancegrouprule_tmp = DspaDiscoveryComplianceGroupRule.new
              dspadiscoverycompliancegrouprule_tmp.deserialize(i)
              @ComplianceGroupRules << dspadiscoverycompliancegrouprule_tmp
            end
          end
          @LevelGroupId = params['LevelGroupId']
          @Disabled = params['Disabled']
          @IsAlias = params['IsAlias']
          @Status = params['Status']
          @ModifyTime = params['ModifyTime']
        end
      end

      # 合规组中规则信息，用于合规组列表中规则信息展示
      class DspaDiscoveryComplianceGroupRule < TencentCloud::Common::AbstractModel
        # @param RuleId: 敏感数据识别规则ID
        # @type RuleId: Integer
        # @param RuleName: 敏感数据识别规则名称
        # @type RuleName: String
        # @param CategoryId: 敏感数据分类ID
        # @type CategoryId: Integer
        # @param LevelId: 敏感数据分级ID, 目前只支持高、中、低三级
        # @type LevelId: Integer
        # @param CategoryName: 合规组对应的分类信息
        # @type CategoryName: String
        # @param LevelRiskName: 分级名称
        # @type LevelRiskName: String

        attr_accessor :RuleId, :RuleName, :CategoryId, :LevelId, :CategoryName, :LevelRiskName

        def initialize(ruleid=nil, rulename=nil, categoryid=nil, levelid=nil, categoryname=nil, levelriskname=nil)
          @RuleId = ruleid
          @RuleName = rulename
          @CategoryId = categoryid
          @LevelId = levelid
          @CategoryName = categoryname
          @LevelRiskName = levelriskname
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @CategoryId = params['CategoryId']
          @LevelId = params['LevelId']
          @CategoryName = params['CategoryName']
          @LevelRiskName = params['LevelRiskName']
        end
      end

      # 合规组中规则信息，用于合规组列表中规则信息展示
      class DspaDiscoveryComplianceGroupRuleInfo < TencentCloud::Common::AbstractModel
        # @param RuleId: 敏感数据识别规则ID
        # @type RuleId: Integer
        # @param RuleName: 敏感数据识别规则名称
        # @type RuleName: String
        # @param CategoryId: 敏感数据分类ID
        # @type CategoryId: Integer
        # @param LevelId: 敏感数据分级ID, 目前只支持高、中、低三级
        # @type LevelId: Integer

        attr_accessor :RuleId, :RuleName, :CategoryId, :LevelId

        def initialize(ruleid=nil, rulename=nil, categoryid=nil, levelid=nil)
          @RuleId = ruleid
          @RuleName = rulename
          @CategoryId = categoryid
          @LevelId = levelid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @CategoryId = params['CategoryId']
          @LevelId = params['LevelId']
        end
      end

      # 扫描规则内容
      class DspaDiscoveryDataContent < TencentCloud::Common::AbstractModel
        # @param RuleContent: 规则内容，可以是正则规则，关键词，
        # 忽略词扥
        # @type RuleContent: String
        # @param IsIgnoreCase: 是否区分大小写
        # false: 不区分大小写
        # true:区分大小写
        # @type IsIgnoreCase: Boolean

        attr_accessor :RuleContent, :IsIgnoreCase

        def initialize(rulecontent=nil, isignorecase=nil)
          @RuleContent = rulecontent
          @IsIgnoreCase = isignorecase
        end

        def deserialize(params)
          @RuleContent = params['RuleContent']
          @IsIgnoreCase = params['IsIgnoreCase']
        end
      end

      # 敏感数据识别规则
      class DspaDiscoveryDataRule < TencentCloud::Common::AbstractModel
        # @param RuleType: 规则类型；取值：
        # keyword 关键字,
        # regex 正则
        # @type RuleType: String
        # @param RuleContent: 内容
        # @type RuleContent: String
        # @param ExtendParameters: 该字段是针对规则类型RuleType为keyword类型时的一个扩展属性
        # @type ExtendParameters: Array

        attr_accessor :RuleType, :RuleContent, :ExtendParameters

        def initialize(ruletype=nil, rulecontent=nil, extendparameters=nil)
          @RuleType = ruletype
          @RuleContent = rulecontent
          @ExtendParameters = extendparameters
        end

        def deserialize(params)
          @RuleType = params['RuleType']
          @RuleContent = params['RuleContent']
          unless params['ExtendParameters'].nil?
            @ExtendParameters = []
            params['ExtendParameters'].each do |i|
              datagovruleextendparameter_tmp = DatagovRuleExtendParameter.new
              datagovruleextendparameter_tmp.deserialize(i)
              @ExtendParameters << datagovruleextendparameter_tmp
            end
          end
        end
      end

      # 敏感数据识别规则集
      class DspaDiscoveryDataRules < TencentCloud::Common::AbstractModel
        # @param Operator: 操作符；只能取and, or的其中一种
        # @type Operator: String
        # @param Contents: 规则
        # @type Contents: Array

        attr_accessor :Operator, :Contents

        def initialize(operator=nil, contents=nil)
          @Operator = operator
          @Contents = contents
        end

        def deserialize(params)
          @Operator = params['Operator']
          unless params['Contents'].nil?
            @Contents = []
            params['Contents'].each do |i|
              dspadiscoverydatarule_tmp = DspaDiscoveryDataRule.new
              dspadiscoverydatarule_tmp.deserialize(i)
              @Contents << dspadiscoverydatarule_tmp
            end
          end
        end
      end

      # 敏感数据分级信息
      class DspaDiscoveryLevelDetail < TencentCloud::Common::AbstractModel
        # @param LevelGroupName: 分级组名称，唯一性约束，最多60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字，Name不可重复
        # @type LevelGroupName: String
        # @param Source: 分级组来源，0为内置，1为自定义
        # @type Source: Integer
        # @param LevelGroupDesc: 分级组描述，最多1024字符
        # @type LevelGroupDesc: String
        # @param LevelDetail: 具体分级标识详情
        # @type LevelDetail: Array
        # @param RefComplianceCnt: 引用合规组次数
        # @type RefComplianceCnt: Integer
        # @param RefCompliance: 引用合规组
        # @type RefCompliance: Array
        # @param LevelGroupId: 分级组ID
        # @type LevelGroupId: Integer

        attr_accessor :LevelGroupName, :Source, :LevelGroupDesc, :LevelDetail, :RefComplianceCnt, :RefCompliance, :LevelGroupId

        def initialize(levelgroupname=nil, source=nil, levelgroupdesc=nil, leveldetail=nil, refcompliancecnt=nil, refcompliance=nil, levelgroupid=nil)
          @LevelGroupName = levelgroupname
          @Source = source
          @LevelGroupDesc = levelgroupdesc
          @LevelDetail = leveldetail
          @RefComplianceCnt = refcompliancecnt
          @RefCompliance = refcompliance
          @LevelGroupId = levelgroupid
        end

        def deserialize(params)
          @LevelGroupName = params['LevelGroupName']
          @Source = params['Source']
          @LevelGroupDesc = params['LevelGroupDesc']
          unless params['LevelDetail'].nil?
            @LevelDetail = []
            params['LevelDetail'].each do |i|
              levelitem_tmp = LevelItem.new
              levelitem_tmp.deserialize(i)
              @LevelDetail << levelitem_tmp
            end
          end
          @RefComplianceCnt = params['RefComplianceCnt']
          unless params['RefCompliance'].nil?
            @RefCompliance = []
            params['RefCompliance'].each do |i|
              dspadiscoverycompliancegroup_tmp = DspaDiscoveryComplianceGroup.new
              dspadiscoverycompliancegroup_tmp.deserialize(i)
              @RefCompliance << dspadiscoverycompliancegroup_tmp
            end
          end
          @LevelGroupId = params['LevelGroupId']
        end
      end

      # 分类分级任务RDB数据规则
      class DspaDiscoveryRDBRules < TencentCloud::Common::AbstractModel
        # @param Status: 规则状态；0 不启用, 1 启用
        # @type Status: Integer
        # @param MatchOperator: 只能取and 、or两个值其中之一，and：字段和内容同时满足，or：字段和内容满足其一
        # @type MatchOperator: String
        # @param MetaRule: 字段名包含规则，最大支持选择9项
        # @type MetaRule: :class:`Tencentcloud::Dsgc.v20190723.models.DspaDiscoveryDataRules`
        # @param ContentRule: 内容包含规则，最大支持选择9项
        # @type ContentRule: :class:`Tencentcloud::Dsgc.v20190723.models.DspaDiscoveryDataRules`

        attr_accessor :Status, :MatchOperator, :MetaRule, :ContentRule

        def initialize(status=nil, matchoperator=nil, metarule=nil, contentrule=nil)
          @Status = status
          @MatchOperator = matchoperator
          @MetaRule = metarule
          @ContentRule = contentrule
        end

        def deserialize(params)
          @Status = params['Status']
          @MatchOperator = params['MatchOperator']
          unless params['MetaRule'].nil?
            @MetaRule = DspaDiscoveryDataRules.new
            @MetaRule.deserialize(params['MetaRule'])
          end
          unless params['ContentRule'].nil?
            @ContentRule = DspaDiscoveryDataRules.new
            @ContentRule.deserialize(params['ContentRule'])
          end
        end
      end

      # 敏感数据扫描任务识别规则详情
      class DspaDiscoveryRuleDetail < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param Name: 规则名称
        # @type Name: String
        # @param Description: 规则描述
        # @type Description: String
        # @param Source: 规则来源，取值：0 内置, 1 自定义
        # @type Source: Integer
        # @param RDBRules: RDB规则详情
        # @type RDBRules: :class:`Tencentcloud::Dsgc.v20190723.models.DspaDiscoveryRDBRules`
        # @param COSRules: COS规则详情
        # @type COSRules: :class:`Tencentcloud::Dsgc.v20190723.models.DspaDiscoveryCOSRules`
        # @param Status: 0关闭，1开启
        # @type Status: Integer

        attr_accessor :RuleId, :Name, :Description, :Source, :RDBRules, :COSRules, :Status

        def initialize(ruleid=nil, name=nil, description=nil, source=nil, rdbrules=nil, cosrules=nil, status=nil)
          @RuleId = ruleid
          @Name = name
          @Description = description
          @Source = source
          @RDBRules = rdbrules
          @COSRules = cosrules
          @Status = status
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Name = params['Name']
          @Description = params['Description']
          @Source = params['Source']
          unless params['RDBRules'].nil?
            @RDBRules = DspaDiscoveryRDBRules.new
            @RDBRules.deserialize(params['RDBRules'])
          end
          unless params['COSRules'].nil?
            @COSRules = DspaDiscoveryCOSRules.new
            @COSRules.deserialize(params['COSRules'])
          end
          @Status = params['Status']
        end
      end

      # 分类分级任务相关信息
      class DspaDiscoveryTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param Name: 任务名称
        # @type Name: String
        # @param Description: 任务描述
        # @type Description: String
        # @param Period: 执行周期，0单次 1每天 2每周 3每月
        # @type Period: Integer
        # @param Plan: 执行计划，0立即 1定时
        # @type Plan: Integer
        # @param Enable: 任务开关；1 打开，0 关闭
        # @type Enable: Integer
        # @param DataSourceInfo: 元数据对象信息
        # @type DataSourceInfo: :class:`Tencentcloud::Dsgc.v20190723.models.DspaDiscoveryTaskDataSource`
        # @param GeneralRuleSetEnable: 通用规则集开关，0 关闭，1 启用
        # @type GeneralRuleSetEnable: Integer
        # @param Result: 任务最新的一次执行结果信息，该字段用于查询任务列表接口
        # @type Result: :class:`Tencentcloud::Dsgc.v20190723.models.ScanTaskResult`
        # @param TimingStartTime: 定时开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimingStartTime: String
        # @param ComplianceUpdate: 关联模板是否更新
        # @type ComplianceUpdate: Boolean

        attr_accessor :TaskId, :Name, :Description, :Period, :Plan, :Enable, :DataSourceInfo, :GeneralRuleSetEnable, :Result, :TimingStartTime, :ComplianceUpdate

        def initialize(taskid=nil, name=nil, description=nil, period=nil, plan=nil, enable=nil, datasourceinfo=nil, generalrulesetenable=nil, result=nil, timingstarttime=nil, complianceupdate=nil)
          @TaskId = taskid
          @Name = name
          @Description = description
          @Period = period
          @Plan = plan
          @Enable = enable
          @DataSourceInfo = datasourceinfo
          @GeneralRuleSetEnable = generalrulesetenable
          @Result = result
          @TimingStartTime = timingstarttime
          @ComplianceUpdate = complianceupdate
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Name = params['Name']
          @Description = params['Description']
          @Period = params['Period']
          @Plan = params['Plan']
          @Enable = params['Enable']
          unless params['DataSourceInfo'].nil?
            @DataSourceInfo = DspaDiscoveryTaskDataSource.new
            @DataSourceInfo.deserialize(params['DataSourceInfo'])
          end
          @GeneralRuleSetEnable = params['GeneralRuleSetEnable']
          unless params['Result'].nil?
            @Result = ScanTaskResult.new
            @Result.deserialize(params['Result'])
          end
          @TimingStartTime = params['TimingStartTime']
          @ComplianceUpdate = params['ComplianceUpdate']
        end
      end

      # 描述对象存储类敏感识别扫描人元数据条件。
      class DspaDiscoveryTaskCOSCondition < TencentCloud::Common::AbstractModel
        # @param Bucket: 数据桶名称
        # @type Bucket: String
        # @param FileTypes: 文件类型
        # @type FileTypes: Array
        # @param FileSizeLimit: 文件大小上限，单位为KB，如1000, 目前单个文件最大只支持1GB（1048576KB）
        # @type FileSizeLimit: Integer

        attr_accessor :Bucket, :FileTypes, :FileSizeLimit

        def initialize(bucket=nil, filetypes=nil, filesizelimit=nil)
          @Bucket = bucket
          @FileTypes = filetypes
          @FileSizeLimit = filesizelimit
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @FileTypes = params['FileTypes']
          @FileSizeLimit = params['FileSizeLimit']
        end
      end

      # 扫描任务数据源信息
      class DspaDiscoveryTaskDataSource < TencentCloud::Common::AbstractModel
        # @param DataSourceId: 数据源ID
        # @type DataSourceId: String
        # @param Condition: 用于传入的数据源的条件，可以选择多个数据库，数据库之间通过逗号分隔，如果为空，默认是全部数据库
        # @type Condition: String
        # @param ProxyAddress: 代理地址
        # @type ProxyAddress: Array
        # @param DataSourceName: 数据源名称
        # @type DataSourceName: String
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String
        # @param DataSourceType: 数据源类型
        # @type DataSourceType: String

        attr_accessor :DataSourceId, :Condition, :ProxyAddress, :DataSourceName, :ResourceRegion, :DataSourceType

        def initialize(datasourceid=nil, condition=nil, proxyaddress=nil, datasourcename=nil, resourceregion=nil, datasourcetype=nil)
          @DataSourceId = datasourceid
          @Condition = condition
          @ProxyAddress = proxyaddress
          @DataSourceName = datasourcename
          @ResourceRegion = resourceregion
          @DataSourceType = datasourcetype
        end

        def deserialize(params)
          @DataSourceId = params['DataSourceId']
          @Condition = params['Condition']
          @ProxyAddress = params['ProxyAddress']
          @DataSourceName = params['DataSourceName']
          @ResourceRegion = params['ResourceRegion']
          @DataSourceType = params['DataSourceType']
        end
      end

      # 扫描任务结果，按照数据库级别展示
      class DspaDiscoveryTaskDbResult < TencentCloud::Common::AbstractModel
        # @param DbResultId: 扫描数据库结果ID
        # @type DbResultId: Integer
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param ResultId: 扫描任务最新一次扫描结果ID
        # @type ResultId: Integer
        # @param DataSourceId: 数据源ID
        # @type DataSourceId: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param TotalTables: 总表数
        # @type TotalTables: Integer
        # @param SensitiveTables: 敏感表数
        # @type SensitiveTables: Integer
        # @param EndTime: DB扫描的结束时间，格式如：2006-01-02 15:04:05
        # @type EndTime: String
        # @param DataSourceName: 数据源名称
        # @type DataSourceName: String
        # @param Status: DB扫描状态，0待扫描 1扫描中 2扫描终止 3扫描成功 4扫描失败
        # @type Status: Integer
        # @param ErrorInfo: DB扫描结果错误信息
        # @type ErrorInfo: String
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String
        # @param SensitiveField: 敏感字段数
        # @type SensitiveField: Integer
        # @param TotalField: 总的字段数
        # @type TotalField: Integer

        attr_accessor :DbResultId, :TaskId, :TaskName, :ResultId, :DataSourceId, :DbName, :TotalTables, :SensitiveTables, :EndTime, :DataSourceName, :Status, :ErrorInfo, :ResourceRegion, :SensitiveField, :TotalField

        def initialize(dbresultid=nil, taskid=nil, taskname=nil, resultid=nil, datasourceid=nil, dbname=nil, totaltables=nil, sensitivetables=nil, endtime=nil, datasourcename=nil, status=nil, errorinfo=nil, resourceregion=nil, sensitivefield=nil, totalfield=nil)
          @DbResultId = dbresultid
          @TaskId = taskid
          @TaskName = taskname
          @ResultId = resultid
          @DataSourceId = datasourceid
          @DbName = dbname
          @TotalTables = totaltables
          @SensitiveTables = sensitivetables
          @EndTime = endtime
          @DataSourceName = datasourcename
          @Status = status
          @ErrorInfo = errorinfo
          @ResourceRegion = resourceregion
          @SensitiveField = sensitivefield
          @TotalField = totalfield
        end

        def deserialize(params)
          @DbResultId = params['DbResultId']
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @ResultId = params['ResultId']
          @DataSourceId = params['DataSourceId']
          @DbName = params['DbName']
          @TotalTables = params['TotalTables']
          @SensitiveTables = params['SensitiveTables']
          @EndTime = params['EndTime']
          @DataSourceName = params['DataSourceName']
          @Status = params['Status']
          @ErrorInfo = params['ErrorInfo']
          @ResourceRegion = params['ResourceRegion']
          @SensitiveField = params['SensitiveField']
          @TotalField = params['TotalField']
        end
      end

      # 敏感数据扫描任务相关信息
      class DspaDiscoveryTaskDetail < TencentCloud::Common::AbstractModel
        # @param Name: 任务名称
        # @type Name: String
        # @param Description: 任务描述
        # @type Description: String
        # @param Period: 执行周期，0单次 1每天 2每周 3每月
        # @type Period: Integer
        # @param Plan: 执行计划，0立即 1定时
        # @type Plan: Integer
        # @param Enable: 任务开关；1 打开，0 关闭
        # @type Enable: Integer
        # @param DataSourceInfo: 元数据对象信息
        # @type DataSourceInfo: :class:`Tencentcloud::Dsgc.v20190723.models.DspaDiscoveryTaskDataSource`
        # @param GeneralRuleSetEnable: 通用规则集开关，0 关闭，1 启用
        # @type GeneralRuleSetEnable: Integer
        # @param DefaultComplianceInfo: 当创建任务时，用户打开了通用规则集开关，则该字段就会保存默认合规组信息
        # @type DefaultComplianceInfo: Array
        # @param CustomComplianceInfo: 该任务中用户选择的合规组信息列表
        # @type CustomComplianceInfo: Array
        # @param TimingStartTime: 定时开始时间
        # @type TimingStartTime: String

        attr_accessor :Name, :Description, :Period, :Plan, :Enable, :DataSourceInfo, :GeneralRuleSetEnable, :DefaultComplianceInfo, :CustomComplianceInfo, :TimingStartTime

        def initialize(name=nil, description=nil, period=nil, plan=nil, enable=nil, datasourceinfo=nil, generalrulesetenable=nil, defaultcomplianceinfo=nil, customcomplianceinfo=nil, timingstarttime=nil)
          @Name = name
          @Description = description
          @Period = period
          @Plan = plan
          @Enable = enable
          @DataSourceInfo = datasourceinfo
          @GeneralRuleSetEnable = generalrulesetenable
          @DefaultComplianceInfo = defaultcomplianceinfo
          @CustomComplianceInfo = customcomplianceinfo
          @TimingStartTime = timingstarttime
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @Period = params['Period']
          @Plan = params['Plan']
          @Enable = params['Enable']
          unless params['DataSourceInfo'].nil?
            @DataSourceInfo = DspaDiscoveryTaskDataSource.new
            @DataSourceInfo.deserialize(params['DataSourceInfo'])
          end
          @GeneralRuleSetEnable = params['GeneralRuleSetEnable']
          unless params['DefaultComplianceInfo'].nil?
            @DefaultComplianceInfo = []
            params['DefaultComplianceInfo'].each do |i|
              scantaskcomplianceinfo_tmp = ScanTaskComplianceInfo.new
              scantaskcomplianceinfo_tmp.deserialize(i)
              @DefaultComplianceInfo << scantaskcomplianceinfo_tmp
            end
          end
          unless params['CustomComplianceInfo'].nil?
            @CustomComplianceInfo = []
            params['CustomComplianceInfo'].each do |i|
              scantaskcomplianceinfo_tmp = ScanTaskComplianceInfo.new
              scantaskcomplianceinfo_tmp.deserialize(i)
              @CustomComplianceInfo << scantaskcomplianceinfo_tmp
            end
          end
          @TimingStartTime = params['TimingStartTime']
        end
      end

      # 扫描任务结果详情
      class DspaDiscoveryTaskResultDetail < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param FieldResultId: 扫描结果详情ID
        # @type FieldResultId: Integer
        # @param TableName: 所属数据表名
        # @type TableName: String
        # @param FieldName: 字段名
        # @type FieldName: String
        # @param CategoryId: 敏感数据分类ID
        # @type CategoryId: Integer
        # @param CategoryName: 敏感数据分类名称
        # @type CategoryName: String
        # @param LevelId: 敏感数据分级ID
        # @type LevelId: Integer
        # @param LevelName: 敏感数据分级名称
        # @type LevelName: String
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param LevelRiskScore: 敏感数据分级分数
        # @type LevelRiskScore: Integer
        # @param SafeGuard: 保护措施
        # @type SafeGuard: :class:`Tencentcloud::Dsgc.v20190723.models.DspaSafeGuard`
        # @param CategoryFullPath: 分类路径
        # @type CategoryFullPath: String
        # @param SchemaName: 模式名
        # @type SchemaName: String

        attr_accessor :TaskId, :FieldResultId, :TableName, :FieldName, :CategoryId, :CategoryName, :LevelId, :LevelName, :RuleName, :RuleId, :LevelRiskScore, :SafeGuard, :CategoryFullPath, :SchemaName

        def initialize(taskid=nil, fieldresultid=nil, tablename=nil, fieldname=nil, categoryid=nil, categoryname=nil, levelid=nil, levelname=nil, rulename=nil, ruleid=nil, levelriskscore=nil, safeguard=nil, categoryfullpath=nil, schemaname=nil)
          @TaskId = taskid
          @FieldResultId = fieldresultid
          @TableName = tablename
          @FieldName = fieldname
          @CategoryId = categoryid
          @CategoryName = categoryname
          @LevelId = levelid
          @LevelName = levelname
          @RuleName = rulename
          @RuleId = ruleid
          @LevelRiskScore = levelriskscore
          @SafeGuard = safeguard
          @CategoryFullPath = categoryfullpath
          @SchemaName = schemaname
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @FieldResultId = params['FieldResultId']
          @TableName = params['TableName']
          @FieldName = params['FieldName']
          @CategoryId = params['CategoryId']
          @CategoryName = params['CategoryName']
          @LevelId = params['LevelId']
          @LevelName = params['LevelName']
          @RuleName = params['RuleName']
          @RuleId = params['RuleId']
          @LevelRiskScore = params['LevelRiskScore']
          unless params['SafeGuard'].nil?
            @SafeGuard = DspaSafeGuard.new
            @SafeGuard.deserialize(params['SafeGuard'])
          end
          @CategoryFullPath = params['CategoryFullPath']
          @SchemaName = params['SchemaName']
        end
      end

      # 数据样本
      class DspaFieldResultDataSample < TencentCloud::Common::AbstractModel
        # @param DataSample: 数据样本
        # @type DataSample: String

        attr_accessor :DataSample

        def initialize(datasample=nil)
          @DataSample = datasample
        end

        def deserialize(params)
          @DataSample = params['DataSample']
        end
      end

      # Dspa实例信息
      class DspaInstance < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param DspaName: DSPA实例名称。
        # @type DspaName: String
        # @param DspaDescription: DSPA实例描述信息。
        # @type DspaDescription: String
        # @param DBAuthCount: DSPA实例已授权的数据库实例数量。
        # @type DBAuthCount: Integer
        # @param CosBindCount: DSPA实例已绑定的cos桶数量。
        # @type CosBindCount: Integer
        # @param InstanceVersion: DSPA实例版本。
        # @type InstanceVersion: String
        # @param Status: DSPA实例状态。
        # @type Status: String
        # @param ExpiredAt: 实例过期时间戳。
        # @type ExpiredAt: Integer
        # @param AppId: 账户APPID。
        # @type AppId: Integer
        # @param TrialVersion: 体验版本信息。
        # @type TrialVersion: String
        # @param TrialEndAt: 体验版本过期时间戳。
        # @type TrialEndAt: Integer
        # @param DbTotalQuota: DB已购配额。
        # @type DbTotalQuota: Integer
        # @param CosTotalQuota: COS已购配额。
        # @type CosTotalQuota: Integer
        # @param CosQuotaUnit: COS配额单位，例如:TB。
        # @type CosQuotaUnit: String
        # @param RenewFlag: 0: 默认状态(用户未设置)
        # 1: 开启自动续费
        # 2: 明确不自动续费
        # @type RenewFlag: Integer
        # @param Channel: 实例渠道
        # @type Channel: String
        # @param InsAuthCount: 已授权的实例数量
        # @type InsAuthCount: Integer
        # @param InsTotalQuota: 已购买的实例数量
        # @type InsTotalQuota: Integer

        attr_accessor :DspaId, :DspaName, :DspaDescription, :DBAuthCount, :CosBindCount, :InstanceVersion, :Status, :ExpiredAt, :AppId, :TrialVersion, :TrialEndAt, :DbTotalQuota, :CosTotalQuota, :CosQuotaUnit, :RenewFlag, :Channel, :InsAuthCount, :InsTotalQuota

        def initialize(dspaid=nil, dspaname=nil, dspadescription=nil, dbauthcount=nil, cosbindcount=nil, instanceversion=nil, status=nil, expiredat=nil, appid=nil, trialversion=nil, trialendat=nil, dbtotalquota=nil, costotalquota=nil, cosquotaunit=nil, renewflag=nil, channel=nil, insauthcount=nil, instotalquota=nil)
          @DspaId = dspaid
          @DspaName = dspaname
          @DspaDescription = dspadescription
          @DBAuthCount = dbauthcount
          @CosBindCount = cosbindcount
          @InstanceVersion = instanceversion
          @Status = status
          @ExpiredAt = expiredat
          @AppId = appid
          @TrialVersion = trialversion
          @TrialEndAt = trialendat
          @DbTotalQuota = dbtotalquota
          @CosTotalQuota = costotalquota
          @CosQuotaUnit = cosquotaunit
          @RenewFlag = renewflag
          @Channel = channel
          @InsAuthCount = insauthcount
          @InsTotalQuota = instotalquota
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @DspaName = params['DspaName']
          @DspaDescription = params['DspaDescription']
          @DBAuthCount = params['DBAuthCount']
          @CosBindCount = params['CosBindCount']
          @InstanceVersion = params['InstanceVersion']
          @Status = params['Status']
          @ExpiredAt = params['ExpiredAt']
          @AppId = params['AppId']
          @TrialVersion = params['TrialVersion']
          @TrialEndAt = params['TrialEndAt']
          @DbTotalQuota = params['DbTotalQuota']
          @CosTotalQuota = params['CosTotalQuota']
          @CosQuotaUnit = params['CosQuotaUnit']
          @RenewFlag = params['RenewFlag']
          @Channel = params['Channel']
          @InsAuthCount = params['InsAuthCount']
          @InsTotalQuota = params['InsTotalQuota']
        end
      end

      # RDB关系型数据库敏感数据资产统计
      class DspaRDBDataAssetCount < TencentCloud::Common::AbstractModel
        # @param DataAssetType: 数组资产类型，0代表关系型数据库资产，1代表对象存储COS资产
        # @type DataAssetType: Integer
        # @param TotalDbCnt: 已扫描的数据库的个数
        # @type TotalDbCnt: Integer
        # @param TotalTableCnt: 数据库表的个数
        # @type TotalTableCnt: Integer
        # @param SensitiveCategoryCnt: 敏感数据类型个数
        # @type SensitiveCategoryCnt: Integer
        # @param SensitiveFieldCnt: 敏感字段的个数
        # @type SensitiveFieldCnt: Integer
        # @param SensitiveLevel: 敏感等级分布
        # @type SensitiveLevel: Array
        # @param SensitiveDbCnt: 敏感数据库的个数
        # @type SensitiveDbCnt: Integer
        # @param SensitiveTableCnt: 敏感数据库表的个数
        # @type SensitiveTableCnt: Integer
        # @param TotalFieldCnt: 扫描字段的个数
        # @type TotalFieldCnt: Integer
        # @param CategoryDistributed: 数据分类分布
        # @type CategoryDistributed: Array

        attr_accessor :DataAssetType, :TotalDbCnt, :TotalTableCnt, :SensitiveCategoryCnt, :SensitiveFieldCnt, :SensitiveLevel, :SensitiveDbCnt, :SensitiveTableCnt, :TotalFieldCnt, :CategoryDistributed

        def initialize(dataassettype=nil, totaldbcnt=nil, totaltablecnt=nil, sensitivecategorycnt=nil, sensitivefieldcnt=nil, sensitivelevel=nil, sensitivedbcnt=nil, sensitivetablecnt=nil, totalfieldcnt=nil, categorydistributed=nil)
          @DataAssetType = dataassettype
          @TotalDbCnt = totaldbcnt
          @TotalTableCnt = totaltablecnt
          @SensitiveCategoryCnt = sensitivecategorycnt
          @SensitiveFieldCnt = sensitivefieldcnt
          @SensitiveLevel = sensitivelevel
          @SensitiveDbCnt = sensitivedbcnt
          @SensitiveTableCnt = sensitivetablecnt
          @TotalFieldCnt = totalfieldcnt
          @CategoryDistributed = categorydistributed
        end

        def deserialize(params)
          @DataAssetType = params['DataAssetType']
          @TotalDbCnt = params['TotalDbCnt']
          @TotalTableCnt = params['TotalTableCnt']
          @SensitiveCategoryCnt = params['SensitiveCategoryCnt']
          @SensitiveFieldCnt = params['SensitiveFieldCnt']
          unless params['SensitiveLevel'].nil?
            @SensitiveLevel = []
            params['SensitiveLevel'].each do |i|
              sensitivelevel_tmp = SensitiveLevel.new
              sensitivelevel_tmp.deserialize(i)
              @SensitiveLevel << sensitivelevel_tmp
            end
          end
          @SensitiveDbCnt = params['SensitiveDbCnt']
          @SensitiveTableCnt = params['SensitiveTableCnt']
          @TotalFieldCnt = params['TotalFieldCnt']
          unless params['CategoryDistributed'].nil?
            @CategoryDistributed = []
            params['CategoryDistributed'].each do |i|
              dspadatacategorydistributed_tmp = DspaDataCategoryDistributed.new
              dspadatacategorydistributed_tmp.deserialize(i)
              @CategoryDistributed << dspadatacategorydistributed_tmp
            end
          end
        end
      end

      # 关系型数据库资产详情
      class DspaRDBDataAssetDetail < TencentCloud::Common::AbstractModel
        # @param DataSourceId: 数据源ID
        # @type DataSourceId: String
        # @param DbType: 数据库类型
        # @type DbType: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param TableName: 数据库表名称
        # @type TableName: String
        # @param FieldName: 数据库表字段名称
        # @type FieldName: String
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param CategoryName: 数据分类
        # @type CategoryName: String
        # @param LevelRiskName: 敏感等级
        # @type LevelRiskName: String
        # @param LevelRiskScore: 分级风险分数，1-10，最小值为1，最大值为10
        # @type LevelRiskScore: Integer
        # @param TrustedScore: 可信分
        # @type TrustedScore: String
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String
        # @param FieldResultId: 字段扫描结果ID
        # @type FieldResultId: String
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param LevelId: 分级ID
        # @type LevelId: Integer
        # @param CategoryId: 分类ID
        # @type CategoryId: Integer
        # @param DataSourceName: 数据源名称
        # @type DataSourceName: String
        # @param SafeGuard: 保护措施
        # @type SafeGuard: :class:`Tencentcloud::Dsgc.v20190723.models.DspaSafeGuard`
        # @param CategoryFullPath: 分类路径
        # @type CategoryFullPath: String
        # @param IdentifyType: 0.系统识别，1人工打标
        # @type IdentifyType: Integer
        # @param CheckStatus: 0未核查 1已核查
        # @type CheckStatus: Integer
        # @param IsSensitiveData: 0非敏感，1敏感
        # @type IsSensitiveData: Integer
        # @param SchemaName: 模式名
        # @type SchemaName: String

        attr_accessor :DataSourceId, :DbType, :DbName, :TableName, :FieldName, :RuleName, :CategoryName, :LevelRiskName, :LevelRiskScore, :TrustedScore, :ResourceRegion, :FieldResultId, :RuleId, :LevelId, :CategoryId, :DataSourceName, :SafeGuard, :CategoryFullPath, :IdentifyType, :CheckStatus, :IsSensitiveData, :SchemaName

        def initialize(datasourceid=nil, dbtype=nil, dbname=nil, tablename=nil, fieldname=nil, rulename=nil, categoryname=nil, levelriskname=nil, levelriskscore=nil, trustedscore=nil, resourceregion=nil, fieldresultid=nil, ruleid=nil, levelid=nil, categoryid=nil, datasourcename=nil, safeguard=nil, categoryfullpath=nil, identifytype=nil, checkstatus=nil, issensitivedata=nil, schemaname=nil)
          @DataSourceId = datasourceid
          @DbType = dbtype
          @DbName = dbname
          @TableName = tablename
          @FieldName = fieldname
          @RuleName = rulename
          @CategoryName = categoryname
          @LevelRiskName = levelriskname
          @LevelRiskScore = levelriskscore
          @TrustedScore = trustedscore
          @ResourceRegion = resourceregion
          @FieldResultId = fieldresultid
          @RuleId = ruleid
          @LevelId = levelid
          @CategoryId = categoryid
          @DataSourceName = datasourcename
          @SafeGuard = safeguard
          @CategoryFullPath = categoryfullpath
          @IdentifyType = identifytype
          @CheckStatus = checkstatus
          @IsSensitiveData = issensitivedata
          @SchemaName = schemaname
        end

        def deserialize(params)
          @DataSourceId = params['DataSourceId']
          @DbType = params['DbType']
          @DbName = params['DbName']
          @TableName = params['TableName']
          @FieldName = params['FieldName']
          @RuleName = params['RuleName']
          @CategoryName = params['CategoryName']
          @LevelRiskName = params['LevelRiskName']
          @LevelRiskScore = params['LevelRiskScore']
          @TrustedScore = params['TrustedScore']
          @ResourceRegion = params['ResourceRegion']
          @FieldResultId = params['FieldResultId']
          @RuleId = params['RuleId']
          @LevelId = params['LevelId']
          @CategoryId = params['CategoryId']
          @DataSourceName = params['DataSourceName']
          unless params['SafeGuard'].nil?
            @SafeGuard = DspaSafeGuard.new
            @SafeGuard.deserialize(params['SafeGuard'])
          end
          @CategoryFullPath = params['CategoryFullPath']
          @IdentifyType = params['IdentifyType']
          @CheckStatus = params['CheckStatus']
          @IsSensitiveData = params['IsSensitiveData']
          @SchemaName = params['SchemaName']
        end
      end

      # 资源账户信息
      class DspaResourceAccount < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID。
        # @type ResourceId: String
        # @param UserName: 用户名。
        # @type UserName: String
        # @param Password: 密码。
        # @type Password: String

        attr_accessor :ResourceId, :UserName, :Password

        def initialize(resourceid=nil, username=nil, password=nil)
          @ResourceId = resourceid
          @UserName = username
          @Password = password
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @UserName = params['UserName']
          @Password = params['Password']
        end
      end

      # 分类分级扫描结果字段的保护措施
      class DspaSafeGuard < TencentCloud::Common::AbstractModel
        # @param Encrypt: 加密状态，可取值如下：
        # UNSET 未设置
        # DISABLE 规则设置未启用
        # ENABLE 规则设置并启用
        # @type Encrypt: String
        # @param Desensitization: 脱敏状态，可取值如下：
        # UNSET 未设置
        # DISABLE 规则设置未启用
        # ENABLE 规则设置并启用
        # @type Desensitization: String

        attr_accessor :Encrypt, :Desensitization

        def initialize(encrypt=nil, desensitization=nil)
          @Encrypt = encrypt
          @Desensitization = desensitization
        end

        def deserialize(params)
          @Encrypt = params['Encrypt']
          @Desensitization = params['Desensitization']
        end
      end

      # 任务执行结果描述。
      class DspaTaskResult < TencentCloud::Common::AbstractModel
        # @param Result: 任务结果。
        # @type Result: String
        # @param ResultDescription: 结果描述。
        # @type ResultDescription: String
        # @param ResourceId: 资源ID。
        # @type ResourceId: String
        # @param MetaType: 资源类型。
        # @type MetaType: String

        attr_accessor :Result, :ResultDescription, :ResourceId, :MetaType

        def initialize(result=nil, resultdescription=nil, resourceid=nil, metatype=nil)
          @Result = result
          @ResultDescription = resultdescription
          @ResourceId = resourceid
          @MetaType = metatype
        end

        def deserialize(params)
          @Result = params['Result']
          @ResultDescription = params['ResultDescription']
          @ResourceId = params['ResourceId']
          @MetaType = params['MetaType']
        end
      end

      # DSPA用户资源元信息
      class DspaUserResourceMeta < TencentCloud::Common::AbstractModel
        # @param ResourceId: 用户资源ID。
        # @type ResourceId: String
        # @param ResourceName: 资源名称。
        # @type ResourceName: String
        # @param ResourceVip: 资源VIP。
        # @type ResourceVip: String
        # @param ResourceVPort: 资源端口。
        # @type ResourceVPort: Integer
        # @param ResourceCreateTime: 资源被创建时间。
        # @type ResourceCreateTime: String
        # @param ResourceUniqueVpcId: 用户资源VPC ID 字符串。
        # @type ResourceUniqueVpcId: String
        # @param ResourceUniqueSubnetId: 用户资源Subnet ID 字符串。
        # @type ResourceUniqueSubnetId: String
        # @param MetaType: 用户资源类型信息。
        # @type MetaType: String
        # @param ResourceRegion: 资源所处地域。
        # @type ResourceRegion: String
        # @param ResourceSyncTime: 资源被同步时间。
        # @type ResourceSyncTime: String
        # @param AuthStatus: 资源被授权状态。
        # @type AuthStatus: String
        # @param BuildType: 资源创建类型，cloud-云原生资源，build-用户自建资源。
        # @type BuildType: String
        # @param MasterInsId: 主实例ID。
        # @type MasterInsId: String
        # @param ResourceVpcId: 用户资源VPC ID 整数。
        # @type ResourceVpcId: Integer
        # @param ResourceSubnetId: 用户资源Subnet ID 整数。
        # @type ResourceSubnetId: Integer
        # @param Protocol: 协议类型。
        # @type Protocol: String
        # @param ResourceVersion: 资源版本号。
        # @type ResourceVersion: String
        # @param ResourceAuthType: 授权方式
        # @type ResourceAuthType: String
        # @param ResourceAuthAccount: 授权账号名
        # @type ResourceAuthAccount: String
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param InstanceValue: 实例值
        # @type InstanceValue: String
        # @param GovernAuthStatus: //治理授权状态（0：关闭 1：开启）
        # @type GovernAuthStatus: Integer
        # @param AuthRange: 授权范围：all - 授权整个数据源 manual:手动指定数据源
        # @type AuthRange: String

        attr_accessor :ResourceId, :ResourceName, :ResourceVip, :ResourceVPort, :ResourceCreateTime, :ResourceUniqueVpcId, :ResourceUniqueSubnetId, :MetaType, :ResourceRegion, :ResourceSyncTime, :AuthStatus, :BuildType, :MasterInsId, :ResourceVpcId, :ResourceSubnetId, :Protocol, :ResourceVersion, :ResourceAuthType, :ResourceAuthAccount, :InstanceType, :InstanceValue, :GovernAuthStatus, :AuthRange

        def initialize(resourceid=nil, resourcename=nil, resourcevip=nil, resourcevport=nil, resourcecreatetime=nil, resourceuniquevpcid=nil, resourceuniquesubnetid=nil, metatype=nil, resourceregion=nil, resourcesynctime=nil, authstatus=nil, buildtype=nil, masterinsid=nil, resourcevpcid=nil, resourcesubnetid=nil, protocol=nil, resourceversion=nil, resourceauthtype=nil, resourceauthaccount=nil, instancetype=nil, instancevalue=nil, governauthstatus=nil, authrange=nil)
          @ResourceId = resourceid
          @ResourceName = resourcename
          @ResourceVip = resourcevip
          @ResourceVPort = resourcevport
          @ResourceCreateTime = resourcecreatetime
          @ResourceUniqueVpcId = resourceuniquevpcid
          @ResourceUniqueSubnetId = resourceuniquesubnetid
          @MetaType = metatype
          @ResourceRegion = resourceregion
          @ResourceSyncTime = resourcesynctime
          @AuthStatus = authstatus
          @BuildType = buildtype
          @MasterInsId = masterinsid
          @ResourceVpcId = resourcevpcid
          @ResourceSubnetId = resourcesubnetid
          @Protocol = protocol
          @ResourceVersion = resourceversion
          @ResourceAuthType = resourceauthtype
          @ResourceAuthAccount = resourceauthaccount
          @InstanceType = instancetype
          @InstanceValue = instancevalue
          @GovernAuthStatus = governauthstatus
          @AuthRange = authrange
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          @ResourceVip = params['ResourceVip']
          @ResourceVPort = params['ResourceVPort']
          @ResourceCreateTime = params['ResourceCreateTime']
          @ResourceUniqueVpcId = params['ResourceUniqueVpcId']
          @ResourceUniqueSubnetId = params['ResourceUniqueSubnetId']
          @MetaType = params['MetaType']
          @ResourceRegion = params['ResourceRegion']
          @ResourceSyncTime = params['ResourceSyncTime']
          @AuthStatus = params['AuthStatus']
          @BuildType = params['BuildType']
          @MasterInsId = params['MasterInsId']
          @ResourceVpcId = params['ResourceVpcId']
          @ResourceSubnetId = params['ResourceSubnetId']
          @Protocol = params['Protocol']
          @ResourceVersion = params['ResourceVersion']
          @ResourceAuthType = params['ResourceAuthType']
          @ResourceAuthAccount = params['ResourceAuthAccount']
          @InstanceType = params['InstanceType']
          @InstanceValue = params['InstanceValue']
          @GovernAuthStatus = params['GovernAuthStatus']
          @AuthRange = params['AuthRange']
        end
      end

      # es的资产统计结果
      class ESAsset < TencentCloud::Common::AbstractModel
        # @param IndexNums: 索引总数量
        # @type IndexNums: Integer
        # @param SensitiveIndexNums: 敏感索引的数量
        # @type SensitiveIndexNums: Integer
        # @param FieldNums: 字段数量
        # @type FieldNums: Integer
        # @param SensitiveFieldNums: 敏感的字段数量
        # @type SensitiveFieldNums: Integer

        attr_accessor :IndexNums, :SensitiveIndexNums, :FieldNums, :SensitiveFieldNums

        def initialize(indexnums=nil, sensitiveindexnums=nil, fieldnums=nil, sensitivefieldnums=nil)
          @IndexNums = indexnums
          @SensitiveIndexNums = sensitiveindexnums
          @FieldNums = fieldnums
          @SensitiveFieldNums = sensitivefieldnums
        end

        def deserialize(params)
          @IndexNums = params['IndexNums']
          @SensitiveIndexNums = params['SensitiveIndexNums']
          @FieldNums = params['FieldNums']
          @SensitiveFieldNums = params['SensitiveFieldNums']
        end
      end

      # es敏感资产详情列表
      class ESAssetDBDetail < TencentCloud::Common::AbstractModel
        # @param DataSourceId: 数据源id
        # @type DataSourceId: String
        # @param IndexName: 索引名称
        # @type IndexName: String
        # @param DataType: 数据库类型
        # @type DataType: String
        # @param FieldNums: 字段的数量
        # @type FieldNums: Integer
        # @param SensitiveFieldNums: 敏感字段的数量
        # @type SensitiveFieldNums: Integer
        # @param DistributionData: 敏感数据分布
        # @type DistributionData: Array

        attr_accessor :DataSourceId, :IndexName, :DataType, :FieldNums, :SensitiveFieldNums, :DistributionData

        def initialize(datasourceid=nil, indexname=nil, datatype=nil, fieldnums=nil, sensitivefieldnums=nil, distributiondata=nil)
          @DataSourceId = datasourceid
          @IndexName = indexname
          @DataType = datatype
          @FieldNums = fieldnums
          @SensitiveFieldNums = sensitivefieldnums
          @DistributionData = distributiondata
        end

        def deserialize(params)
          @DataSourceId = params['DataSourceId']
          @IndexName = params['IndexName']
          @DataType = params['DataType']
          @FieldNums = params['FieldNums']
          @SensitiveFieldNums = params['SensitiveFieldNums']
          unless params['DistributionData'].nil?
            @DistributionData = []
            params['DistributionData'].each do |i|
              note_tmp = Note.new
              note_tmp.deserialize(i)
              @DistributionData << note_tmp
            end
          end
        end
      end

      # ES的概览页统计数据
      class ESDataAssetCountDto < TencentCloud::Common::AbstractModel
        # @param DataAssetType: es
        # @type DataAssetType: Integer
        # @param SensitiveIndexCnt: 敏感索引个数
        # @type SensitiveIndexCnt: Integer
        # @param TotalIndexCnt: 总的索引个数
        # @type TotalIndexCnt: Integer
        # @param SensitiveFieldCnt: 敏感字段个数
        # @type SensitiveFieldCnt: Integer
        # @param TotalFieldCnt: 总的字段个数
        # @type TotalFieldCnt: Integer
        # @param SensitiveCategoryCnt: 敏感分类的个数
        # @type SensitiveCategoryCnt: Integer
        # @param SensitiveLevel: 敏感分级的分布
        # @type SensitiveLevel: Array
        # @param CategoryDistributed: 敏感分类的分布
        # @type CategoryDistributed: Array

        attr_accessor :DataAssetType, :SensitiveIndexCnt, :TotalIndexCnt, :SensitiveFieldCnt, :TotalFieldCnt, :SensitiveCategoryCnt, :SensitiveLevel, :CategoryDistributed

        def initialize(dataassettype=nil, sensitiveindexcnt=nil, totalindexcnt=nil, sensitivefieldcnt=nil, totalfieldcnt=nil, sensitivecategorycnt=nil, sensitivelevel=nil, categorydistributed=nil)
          @DataAssetType = dataassettype
          @SensitiveIndexCnt = sensitiveindexcnt
          @TotalIndexCnt = totalindexcnt
          @SensitiveFieldCnt = sensitivefieldcnt
          @TotalFieldCnt = totalfieldcnt
          @SensitiveCategoryCnt = sensitivecategorycnt
          @SensitiveLevel = sensitivelevel
          @CategoryDistributed = categorydistributed
        end

        def deserialize(params)
          @DataAssetType = params['DataAssetType']
          @SensitiveIndexCnt = params['SensitiveIndexCnt']
          @TotalIndexCnt = params['TotalIndexCnt']
          @SensitiveFieldCnt = params['SensitiveFieldCnt']
          @TotalFieldCnt = params['TotalFieldCnt']
          @SensitiveCategoryCnt = params['SensitiveCategoryCnt']
          unless params['SensitiveLevel'].nil?
            @SensitiveLevel = []
            params['SensitiveLevel'].each do |i|
              sensitivelevel_tmp = SensitiveLevel.new
              sensitivelevel_tmp.deserialize(i)
              @SensitiveLevel << sensitivelevel_tmp
            end
          end
          unless params['CategoryDistributed'].nil?
            @CategoryDistributed = []
            params['CategoryDistributed'].each do |i|
              dspadatacategorydistributed_tmp = DspaDataCategoryDistributed.new
              dspadatacategorydistributed_tmp.deserialize(i)
              @CategoryDistributed << dspadatacategorydistributed_tmp
            end
          end
        end
      end

      # ES的概览页资产详情
      class ESDataAssetDetail < TencentCloud::Common::AbstractModel
        # @param FieldResultId: id
        # @type FieldResultId: Integer
        # @param DataSourceId: 数据源id
        # @type DataSourceId: String
        # @param DataSourceName: 数据源名称
        # @type DataSourceName: String
        # @param DataSourceType: 类型
        # @type DataSourceType: String
        # @param ResourceRegion: 地域信息
        # @type ResourceRegion: String
        # @param IndexName: 索引名称
        # @type IndexName: String
        # @param FieldName: 字段名称
        # @type FieldName: String
        # @param CategoryId: 分类id
        # @type CategoryId: Integer
        # @param CategoryName: 分类名称
        # @type CategoryName: String
        # @param CategoryArr: 分类路径数组
        # @type CategoryArr: Array
        # @param LevelId: 等级id
        # @type LevelId: Integer
        # @param LevelRiskName: 分级名称
        # @type LevelRiskName: String
        # @param LevelRiskScore: 分级分数
        # @type LevelRiskScore: Integer
        # @param TrustedScore: 可信分
        # @type TrustedScore: Float
        # @param RuleId: 规则id
        # @type RuleId: Integer
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param IdentifyType: 0系统识别，1人工打标
        # @type IdentifyType: Integer
        # @param CheckStatus: 0未核查，1已核查
        # @type CheckStatus: Integer

        attr_accessor :FieldResultId, :DataSourceId, :DataSourceName, :DataSourceType, :ResourceRegion, :IndexName, :FieldName, :CategoryId, :CategoryName, :CategoryArr, :LevelId, :LevelRiskName, :LevelRiskScore, :TrustedScore, :RuleId, :RuleName, :IdentifyType, :CheckStatus

        def initialize(fieldresultid=nil, datasourceid=nil, datasourcename=nil, datasourcetype=nil, resourceregion=nil, indexname=nil, fieldname=nil, categoryid=nil, categoryname=nil, categoryarr=nil, levelid=nil, levelriskname=nil, levelriskscore=nil, trustedscore=nil, ruleid=nil, rulename=nil, identifytype=nil, checkstatus=nil)
          @FieldResultId = fieldresultid
          @DataSourceId = datasourceid
          @DataSourceName = datasourcename
          @DataSourceType = datasourcetype
          @ResourceRegion = resourceregion
          @IndexName = indexname
          @FieldName = fieldname
          @CategoryId = categoryid
          @CategoryName = categoryname
          @CategoryArr = categoryarr
          @LevelId = levelid
          @LevelRiskName = levelriskname
          @LevelRiskScore = levelriskscore
          @TrustedScore = trustedscore
          @RuleId = ruleid
          @RuleName = rulename
          @IdentifyType = identifytype
          @CheckStatus = checkstatus
        end

        def deserialize(params)
          @FieldResultId = params['FieldResultId']
          @DataSourceId = params['DataSourceId']
          @DataSourceName = params['DataSourceName']
          @DataSourceType = params['DataSourceType']
          @ResourceRegion = params['ResourceRegion']
          @IndexName = params['IndexName']
          @FieldName = params['FieldName']
          @CategoryId = params['CategoryId']
          @CategoryName = params['CategoryName']
          @CategoryArr = params['CategoryArr']
          @LevelId = params['LevelId']
          @LevelRiskName = params['LevelRiskName']
          @LevelRiskScore = params['LevelRiskScore']
          @TrustedScore = params['TrustedScore']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @IdentifyType = params['IdentifyType']
          @CheckStatus = params['CheckStatus']
        end
      end

      # 创建评估任务的ES详情
      class ESInstance < TencentCloud::Common::AbstractModel
        # @param DataSourceId: 数据源id
        # @type DataSourceId: String
        # @param DataSourceType: 数据源类型
        # @type DataSourceType: String
        # @param ResourceRegion: 地域
        # @type ResourceRegion: String
        # @param DiscoveryTaskId: 扫描任务ID
        # @type DiscoveryTaskId: Integer
        # @param DiscoveryTaskInstanceID: 扫描任务实例ID
        # @type DiscoveryTaskInstanceID: Integer

        attr_accessor :DataSourceId, :DataSourceType, :ResourceRegion, :DiscoveryTaskId, :DiscoveryTaskInstanceID

        def initialize(datasourceid=nil, datasourcetype=nil, resourceregion=nil, discoverytaskid=nil, discoverytaskinstanceid=nil)
          @DataSourceId = datasourceid
          @DataSourceType = datasourcetype
          @ResourceRegion = resourceregion
          @DiscoveryTaskId = discoverytaskid
          @DiscoveryTaskInstanceID = discoverytaskinstanceid
        end

        def deserialize(params)
          @DataSourceId = params['DataSourceId']
          @DataSourceType = params['DataSourceType']
          @ResourceRegion = params['ResourceRegion']
          @DiscoveryTaskId = params['DiscoveryTaskId']
          @DiscoveryTaskInstanceID = params['DiscoveryTaskInstanceID']
        end
      end

      # ES扫描任务结果详情
      class ESTaskResultDetail < TencentCloud::Common::AbstractModel
        # @param Id: id
        # @type Id: Integer
        # @param TaskId: 任务id
        # @type TaskId: Integer
        # @param FieldName: 字段名称
        # @type FieldName: String
        # @param RuleId: 规则id
        # @type RuleId: Integer
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param CategoryId: 分类id
        # @type CategoryId: Integer
        # @param CategoryName: 分类名称
        # @type CategoryName: String
        # @param CategoryArr: 多级分类的路径
        # @type CategoryArr: Array
        # @param LevelId: 分级id
        # @type LevelId: Integer
        # @param LevelName: 分级名称
        # @type LevelName: String
        # @param LevelRiskScore: 分级分数
        # @type LevelRiskScore: Integer

        attr_accessor :Id, :TaskId, :FieldName, :RuleId, :RuleName, :CategoryId, :CategoryName, :CategoryArr, :LevelId, :LevelName, :LevelRiskScore

        def initialize(id=nil, taskid=nil, fieldname=nil, ruleid=nil, rulename=nil, categoryid=nil, categoryname=nil, categoryarr=nil, levelid=nil, levelname=nil, levelriskscore=nil)
          @Id = id
          @TaskId = taskid
          @FieldName = fieldname
          @RuleId = ruleid
          @RuleName = rulename
          @CategoryId = categoryid
          @CategoryName = categoryname
          @CategoryArr = categoryarr
          @LevelId = levelid
          @LevelName = levelname
          @LevelRiskScore = levelriskscore
        end

        def deserialize(params)
          @Id = params['Id']
          @TaskId = params['TaskId']
          @FieldName = params['FieldName']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @CategoryId = params['CategoryId']
          @CategoryName = params['CategoryName']
          @CategoryArr = params['CategoryArr']
          @LevelId = params['LevelId']
          @LevelName = params['LevelName']
          @LevelRiskScore = params['LevelRiskScore']
        end
      end

      # EnableDSPADiscoveryRule请求参数结构体
      class EnableDSPADiscoveryRuleRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param Enable: 开关ScanRule
        # @type Enable: Boolean

        attr_accessor :DspaId, :RuleId, :Enable

        def initialize(dspaid=nil, ruleid=nil, enable=nil)
          @DspaId = dspaid
          @RuleId = ruleid
          @Enable = enable
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @RuleId = params['RuleId']
          @Enable = params['Enable']
        end
      end

      # EnableDSPADiscoveryRule返回参数结构体
      class EnableDSPADiscoveryRuleResponse < TencentCloud::Common::AbstractModel
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

      # EnableTrialVersion请求参数结构体
      class EnableTrialVersionRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param TrialVersion: 体验版本名称。
        # @type TrialVersion: String

        attr_accessor :DspaId, :TrialVersion

        def initialize(dspaid=nil, trialversion=nil)
          @DspaId = dspaid
          @TrialVersion = trialversion
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TrialVersion = params['TrialVersion']
        end
      end

      # EnableTrialVersion返回参数结构体
      class EnableTrialVersionResponse < TencentCloud::Common::AbstractModel
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

      # 错误信息描述
      class ErrDescription < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。
        # @type ErrCode: String
        # @param ErrMessage: 具体错误信息。
        # @type ErrMessage: String

        attr_accessor :ErrCode, :ErrMessage

        def initialize(errcode=nil, errmessage=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
        end
      end

      # ExportAssetDetailData请求参数结构体
      class ExportAssetDetailDataRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例Id，格式“dspa-xxxxxxxx”
        # @type DspaId: String
        # @param ComplianceId: 合规组id
        # @type ComplianceId: Integer
        # @param MetaDataType: 资产类型（rdb,cvm_db,cos）
        # @type MetaDataType: String
        # @param Filters: 过滤数组。支持的Name：
        # DataSourceID 数据源ID
        # DbName 数据库名称
        # CategoryID 敏感数据分类ID
        # RuleID 规则ID
        # LevelID 敏感分级ID
        # ResourceRegion 资源所在地域
        # DataSourceType 数据源类型，不填默认过滤非自建的所有关系型数据源类型，填selfbuilt-db只过滤自建类型
        # 注意：每个name默认支持最多5个values。
        # @type Filters: Array
        # @param CasbId: casbId
        # @type CasbId: String

        attr_accessor :DspaId, :ComplianceId, :MetaDataType, :Filters, :CasbId

        def initialize(dspaid=nil, complianceid=nil, metadatatype=nil, filters=nil, casbid=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
          @MetaDataType = metadatatype
          @Filters = filters
          @CasbId = casbid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
          @MetaDataType = params['MetaDataType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @CasbId = params['CasbId']
        end
      end

      # ExportAssetDetailData返回参数结构体
      class ExportAssetDetailDataResponse < TencentCloud::Common::AbstractModel
        # @param ExportTaskId: 导出任务id
        # @type ExportTaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExportTaskId, :RequestId

        def initialize(exporttaskid=nil, requestid=nil)
          @ExportTaskId = exporttaskid
          @RequestId = requestid
        end

        def deserialize(params)
          @ExportTaskId = params['ExportTaskId']
          @RequestId = params['RequestId']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等

      # 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段。
        # @type Name: String
        # @param Values: 字段的过滤值。
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # GetResourceConnectionStatus请求参数结构体
      class GetResourceConnectionStatusRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param MetaType: 资源类型。
        # @type MetaType: String
        # @param ResourceRegion: 资源所处地域。
        # @type ResourceRegion: String
        # @param ResourceId: 资源列表中展示的资源ID。
        # @type ResourceId: String

        attr_accessor :DspaId, :MetaType, :ResourceRegion, :ResourceId

        def initialize(dspaid=nil, metatype=nil, resourceregion=nil, resourceid=nil)
          @DspaId = dspaid
          @MetaType = metatype
          @ResourceRegion = resourceregion
          @ResourceId = resourceid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @MetaType = params['MetaType']
          @ResourceRegion = params['ResourceRegion']
          @ResourceId = params['ResourceId']
        end
      end

      # GetResourceConnectionStatus返回参数结构体
      class GetResourceConnectionStatusResponse < TencentCloud::Common::AbstractModel
        # @param ConnectionStatus: 连接状态，success -- 连接成功，failed -- 连接失败
        # @type ConnectionStatus: String
        # @param ConnectionDesc: 连接状态的描述信息。
        # @type ConnectionDesc: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConnectionStatus, :ConnectionDesc, :RequestId

        def initialize(connectionstatus=nil, connectiondesc=nil, requestid=nil)
          @ConnectionStatus = connectionstatus
          @ConnectionDesc = connectiondesc
          @RequestId = requestid
        end

        def deserialize(params)
          @ConnectionStatus = params['ConnectionStatus']
          @ConnectionDesc = params['ConnectionDesc']
          @RequestId = params['RequestId']
        end
      end

      # GetTrialVersion请求参数结构体
      class GetTrialVersionRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String

        attr_accessor :DspaId

        def initialize(dspaid=nil)
          @DspaId = dspaid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
        end
      end

      # GetTrialVersion返回参数结构体
      class GetTrialVersionResponse < TencentCloud::Common::AbstractModel
        # @param TrialVersion: 体验版本名称。
        # @type TrialVersion: String
        # @param TrialEndAt: 版本体验结束时间戳。
        # @type TrialEndAt: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrialVersion, :TrialEndAt, :RequestId

        def initialize(trialversion=nil, trialendat=nil, requestid=nil)
          @TrialVersion = trialversion
          @TrialEndAt = trialendat
          @RequestId = requestid
        end

        def deserialize(params)
          @TrialVersion = params['TrialVersion']
          @TrialEndAt = params['TrialEndAt']
          @RequestId = params['RequestId']
        end
      end

      # GetUserQuotaInfo请求参数结构体
      class GetUserQuotaInfoRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String

        attr_accessor :DspaId

        def initialize(dspaid=nil)
          @DspaId = dspaid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
        end
      end

      # GetUserQuotaInfo返回参数结构体
      class GetUserQuotaInfoResponse < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param DbTotalQuota: 用户购买的DB配额。
        # @type DbTotalQuota: Integer
        # @param CosTotalQuota: 用户购买的COS存储量配额。
        # @type CosTotalQuota: Integer
        # @param DbRemainQuota: 用户可用的DB配额。
        # @type DbRemainQuota: Integer
        # @param CosRemainQuota: 用户可用的COS存储量配额。
        # @type CosRemainQuota: Float
        # @param CosQuotaUnit: COS存储量单位，例如TB。
        # @type CosQuotaUnit: String
        # @param DBUnbindNum: db月解绑次数
        # @type DBUnbindNum: Integer
        # @param COSUnbindNum: cos月解绑次数
        # @type COSUnbindNum: Integer
        # @param InsTotalQuota: 用户购买的实例配额。
        # @type InsTotalQuota: Integer
        # @param InsRemainQuota: 用户可用的实例配额。
        # @type InsRemainQuota: Integer
        # @param Version: 用户购买的版本
        # @type Version: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DspaId, :DbTotalQuota, :CosTotalQuota, :DbRemainQuota, :CosRemainQuota, :CosQuotaUnit, :DBUnbindNum, :COSUnbindNum, :InsTotalQuota, :InsRemainQuota, :Version, :RequestId

        def initialize(dspaid=nil, dbtotalquota=nil, costotalquota=nil, dbremainquota=nil, cosremainquota=nil, cosquotaunit=nil, dbunbindnum=nil, cosunbindnum=nil, instotalquota=nil, insremainquota=nil, version=nil, requestid=nil)
          @DspaId = dspaid
          @DbTotalQuota = dbtotalquota
          @CosTotalQuota = costotalquota
          @DbRemainQuota = dbremainquota
          @CosRemainQuota = cosremainquota
          @CosQuotaUnit = cosquotaunit
          @DBUnbindNum = dbunbindnum
          @COSUnbindNum = cosunbindnum
          @InsTotalQuota = instotalquota
          @InsRemainQuota = insremainquota
          @Version = version
          @RequestId = requestid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @DbTotalQuota = params['DbTotalQuota']
          @CosTotalQuota = params['CosTotalQuota']
          @DbRemainQuota = params['DbRemainQuota']
          @CosRemainQuota = params['CosRemainQuota']
          @CosQuotaUnit = params['CosQuotaUnit']
          @DBUnbindNum = params['DBUnbindNum']
          @COSUnbindNum = params['COSUnbindNum']
          @InsTotalQuota = params['InsTotalQuota']
          @InsRemainQuota = params['InsRemainQuota']
          @Version = params['Version']
          @RequestId = params['RequestId']
        end
      end

      # 高风险资产详情信息
      class HighRiskAssetsDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param DataSourceType: 数据源类型
        # @type DataSourceType: String
        # @param DataSourceName: 数据源名称
        # @type DataSourceName: String
        # @param AssetsName: 资产对象名称
        # @type AssetsName: String
        # @param HighRiskCount: 高风险个数
        # @type HighRiskCount: Integer
        # @param RiskType: 风险类型
        # @type RiskType: String
        # @param TotalRiskCount: 总的风险个数
        # @type TotalRiskCount: Integer
        # @param RiskSide: 风险面
        # @type RiskSide: String
        # @param ResourceRegion: 地域
        # @type ResourceRegion: String

        attr_accessor :InstanceId, :DataSourceType, :DataSourceName, :AssetsName, :HighRiskCount, :RiskType, :TotalRiskCount, :RiskSide, :ResourceRegion

        def initialize(instanceid=nil, datasourcetype=nil, datasourcename=nil, assetsname=nil, highriskcount=nil, risktype=nil, totalriskcount=nil, riskside=nil, resourceregion=nil)
          @InstanceId = instanceid
          @DataSourceType = datasourcetype
          @DataSourceName = datasourcename
          @AssetsName = assetsname
          @HighRiskCount = highriskcount
          @RiskType = risktype
          @TotalRiskCount = totalriskcount
          @RiskSide = riskside
          @ResourceRegion = resourceregion
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DataSourceType = params['DataSourceType']
          @DataSourceName = params['DataSourceName']
          @AssetsName = params['AssetsName']
          @HighRiskCount = params['HighRiskCount']
          @RiskType = params['RiskType']
          @TotalRiskCount = params['TotalRiskCount']
          @RiskSide = params['RiskSide']
          @ResourceRegion = params['ResourceRegion']
        end
      end

      # 某个分级单个信息
      class ItemLevel < TencentCloud::Common::AbstractModel
        # @param LevelRiskName: 分级标识名称，1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字，Name不可重复
        # @type LevelRiskName: String
        # @param LevelRiskScore: 分级标识对应的风险分数值，1-10，最小为1，最大为10
        # @type LevelRiskScore: Integer

        attr_accessor :LevelRiskName, :LevelRiskScore

        def initialize(levelriskname=nil, levelriskscore=nil)
          @LevelRiskName = levelriskname
          @LevelRiskScore = levelriskscore
        end

        def deserialize(params)
          @LevelRiskName = params['LevelRiskName']
          @LevelRiskScore = params['LevelRiskScore']
        end
      end

      # 分级单项信息
      class LevelItem < TencentCloud::Common::AbstractModel
        # @param LevelId: 分级ID
        # @type LevelId: Integer
        # @param LevelGroupId: 分级组ID
        # @type LevelGroupId: Integer
        # @param LevelRiskName: 分级标识名称，支持内置分级，内置分级取值：高，中，低，也可以自定义
        # @type LevelRiskName: String
        # @param LevelRiskScore: 分级风险分数，1-10，最小值为1，最大值为10
        # @type LevelRiskScore: Integer

        attr_accessor :LevelId, :LevelGroupId, :LevelRiskName, :LevelRiskScore

        def initialize(levelid=nil, levelgroupid=nil, levelriskname=nil, levelriskscore=nil)
          @LevelId = levelid
          @LevelGroupId = levelgroupid
          @LevelRiskName = levelriskname
          @LevelRiskScore = levelriskscore
        end

        def deserialize(params)
          @LevelId = params['LevelId']
          @LevelGroupId = params['LevelGroupId']
          @LevelRiskName = params['LevelRiskName']
          @LevelRiskScore = params['LevelRiskScore']
        end
      end

      # ListDSPAClusters请求参数结构体
      class ListDSPAClustersRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页步长，默认为100。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤项。
        # 支持的过滤项包括：DspaId、Status、Version、DspaName、Channel。
        # DspaId和DspaName支持模糊搜索。
        # Status支持的可选值：enabled、disabled。
        # Version支持的可选值：trial、official。
        # Channel支持的可选值：sp_cds_dsgc_pre（代表dsgc实例）、sp_cds_dsgc_wedata_dc（代表wedata实例）
        # @type Filters: Array
        # @param ListMode: 展示模式。

        # 目前只有两个值的处理逻辑：

        # 空值：需要查询每个实例的配额信息，因为是串行查询，所以速度很慢，limit最大为100

        # "simple"：不需要查询每个实例的配额信息，速度快，limit最大为1000
        # @type ListMode: String

        attr_accessor :Limit, :Offset, :Filters, :ListMode

        def initialize(limit=nil, offset=nil, filters=nil, listmode=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @ListMode = listmode
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              dspadatasourcemngfilter_tmp = DspaDataSourceMngFilter.new
              dspadatasourcemngfilter_tmp.deserialize(i)
              @Filters << dspadatasourcemngfilter_tmp
            end
          end
          @ListMode = params['ListMode']
        end
      end

      # ListDSPAClusters返回参数结构体
      class ListDSPAClustersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 资源总数。
        # @type TotalCount: Integer
        # @param InstanceList: 资源列表。
        # @type InstanceList: Array
        # @param DenyAll: 是否被拒绝访问所有dspa实例资源。
        # @type DenyAll: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceList, :DenyAll, :RequestId

        def initialize(totalcount=nil, instancelist=nil, denyall=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceList = instancelist
          @DenyAll = denyall
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              dspainstance_tmp = DspaInstance.new
              dspainstance_tmp.deserialize(i)
              @InstanceList << dspainstance_tmp
            end
          end
          @DenyAll = params['DenyAll']
          @RequestId = params['RequestId']
        end
      end

      # ListDSPACosMetaResources请求参数结构体
      class ListDSPACosMetaResourcesRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: 实例Id
        # @type DspaId: String
        # @param Filters: 过滤数组。支持的Name：
        # Bucket - 桶名，支持模糊匹配

        # ResoureRegion - 资源所处地域，需要填写完整地域名称，不支持模糊匹配。

        # Valid -- 资源是否有效，"1" 表示有效，"0"表示无效。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为100。
        # @type Limit: Integer
        # @param BindType: 资源绑定状态过滤，默认为全部
        # @type BindType: String

        attr_accessor :DspaId, :Filters, :Offset, :Limit, :BindType

        def initialize(dspaid=nil, filters=nil, offset=nil, limit=nil, bindtype=nil)
          @DspaId = dspaid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @BindType = bindtype
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              dspadatasourcemngfilter_tmp = DspaDataSourceMngFilter.new
              dspadatasourcemngfilter_tmp.deserialize(i)
              @Filters << dspadatasourcemngfilter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @BindType = params['BindType']
        end
      end

      # ListDSPACosMetaResources返回参数结构体
      class ListDSPACosMetaResourcesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的COS元数据数量。
        # @type TotalCount: Integer
        # @param Items: COS元数据信息
        # @type Items: Array
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :DspaId, :RequestId

        def initialize(totalcount=nil, items=nil, dspaid=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @DspaId = dspaid
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dspacosmetadatainfo_tmp = DSPACosMetaDataInfo.new
              dspacosmetadatainfo_tmp.deserialize(i)
              @Items << dspacosmetadatainfo_tmp
            end
          end
          @DspaId = params['DspaId']
          @RequestId = params['RequestId']
        end
      end

      # ListDSPAMetaResources请求参数结构体
      class ListDSPAMetaResourcesRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param Filters: 过滤项。
        # 可过滤值包括：
        # ResoureRegion - 资源所处地域，需要填写完整地域名称，不支持模糊匹配。

        # AuthStatus - authorized（已授权）、unauthorized（未授权）、deleted（资源已被删除），不支持模糊匹配，需要填写完整。

        # BuildType - cloud（云原生资源）、build（用户自建资源），不支持模糊匹配，需要填写完整。

        # MetaType - cdb（云数据Mysql）、dcdb（TDSQL MySQL版）、mariadb（云数据库 MariaDB）、postgres（云数据库 PostgreSQL）、cynosdbmysql（TDSQL-C MySQL版）、cos（对象存储）、mysql_like_proto（自建型Mysql协议类关系型数据库）、postgre_like_proto（自建型Postgre协议类关系型数据库）。

        # ResourceId - 资源ID，支持模糊搜索。

        # CvmID - 自建资源对应CvmId，如：ins-xxxxxxxx。该字段用于casb调用dsgc接口时，根据cvmId和vport确定具体的自建实例
        # @type Filters: Array
        # @param Limit: 分页步长，默认为100。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，默认为0。
        # @type Offset: Integer
        # @param BindType: 资源绑定状态过滤，默认为全部
        # @type BindType: String

        attr_accessor :DspaId, :Filters, :Limit, :Offset, :BindType

        def initialize(dspaid=nil, filters=nil, limit=nil, offset=nil, bindtype=nil)
          @DspaId = dspaid
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @BindType = bindtype
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              dspadatasourcemngfilter_tmp = DspaDataSourceMngFilter.new
              dspadatasourcemngfilter_tmp.deserialize(i)
              @Filters << dspadatasourcemngfilter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @BindType = params['BindType']
        end
      end

      # ListDSPAMetaResources返回参数结构体
      class ListDSPAMetaResourcesResponse < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param Resources: 用户资源列表。
        # @type Resources: Array
        # @param TotalCount: 资源总量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DspaId, :Resources, :TotalCount, :RequestId

        def initialize(dspaid=nil, resources=nil, totalcount=nil, requestid=nil)
          @DspaId = dspaid
          @Resources = resources
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              dspauserresourcemeta_tmp = DspaUserResourceMeta.new
              dspauserresourcemeta_tmp.deserialize(i)
              @Resources << dspauserresourcemeta_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDSPAAssessmentRiskLatest请求参数结构体
      class ModifyDSPAAssessmentRiskLatestRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param Status: 风险状态（waiting:待处理，processing:处理中，finished:已处理，ignored:已忽略）
        # @type Status: String
        # @param RiskLatestTableId: 最新风险项Id
        # @type RiskLatestTableId: Integer
        # @param Note: 备注
        # @type Note: String
        # @param ProcessPeople: 处置人
        # @type ProcessPeople: String
        # @param BathRiskIdList: 批量处理的列表
        # @type BathRiskIdList: Array

        attr_accessor :DspaId, :Status, :RiskLatestTableId, :Note, :ProcessPeople, :BathRiskIdList
        extend Gem::Deprecate
        deprecate :RiskLatestTableId, :none, 2025, 6
        deprecate :RiskLatestTableId=, :none, 2025, 6

        def initialize(dspaid=nil, status=nil, risklatesttableid=nil, note=nil, processpeople=nil, bathriskidlist=nil)
          @DspaId = dspaid
          @Status = status
          @RiskLatestTableId = risklatesttableid
          @Note = note
          @ProcessPeople = processpeople
          @BathRiskIdList = bathriskidlist
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @Status = params['Status']
          @RiskLatestTableId = params['RiskLatestTableId']
          @Note = params['Note']
          @ProcessPeople = params['ProcessPeople']
          @BathRiskIdList = params['BathRiskIdList']
        end
      end

      # ModifyDSPAAssessmentRiskLatest返回参数结构体
      class ModifyDSPAAssessmentRiskLatestResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDSPAAssessmentRiskLevel请求参数结构体
      class ModifyDSPAAssessmentRiskLevelRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param RiskLevelName: 风险等级名称
        # @type RiskLevelName: String
        # @param RiskLevelDescription: 风险的描述
        # @type RiskLevelDescription: String
        # @param RiskId: 风险id
        # @type RiskId: Integer
        # @param ModifyRiskItem: 需要修改的风险列表
        # @type ModifyRiskItem: Array

        attr_accessor :DspaId, :RiskLevelName, :RiskLevelDescription, :RiskId, :ModifyRiskItem

        def initialize(dspaid=nil, risklevelname=nil, riskleveldescription=nil, riskid=nil, modifyriskitem=nil)
          @DspaId = dspaid
          @RiskLevelName = risklevelname
          @RiskLevelDescription = riskleveldescription
          @RiskId = riskid
          @ModifyRiskItem = modifyriskitem
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @RiskLevelName = params['RiskLevelName']
          @RiskLevelDescription = params['RiskLevelDescription']
          @RiskId = params['RiskId']
          unless params['ModifyRiskItem'].nil?
            @ModifyRiskItem = []
            params['ModifyRiskItem'].each do |i|
              risklevelmatrix_tmp = RiskLevelMatrix.new
              risklevelmatrix_tmp.deserialize(i)
              @ModifyRiskItem << risklevelmatrix_tmp
            end
          end
        end
      end

      # ModifyDSPAAssessmentRiskLevel返回参数结构体
      class ModifyDSPAAssessmentRiskLevelResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDSPAAssessmentRisk请求参数结构体
      class ModifyDSPAAssessmentRiskRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例Id，格式“dspa-xxxxxxxx”
        # @type DspaId: String
        # @param TaskId: 评估任务Id，格式“task-xxxxxxxx”
        # @type TaskId: String
        # @param RiskId: 风险项Id，格式“risk-xxxxxxxx”
        # @type RiskId: String
        # @param Status: 风险项状态。（waiting:待处理，processing:处理中，finished:已处理）
        # @type Status: String

        attr_accessor :DspaId, :TaskId, :RiskId, :Status

        def initialize(dspaid=nil, taskid=nil, riskid=nil, status=nil)
          @DspaId = dspaid
          @TaskId = taskid
          @RiskId = riskid
          @Status = status
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TaskId = params['TaskId']
          @RiskId = params['RiskId']
          @Status = params['Status']
        end
      end

      # ModifyDSPAAssessmentRisk返回参数结构体
      class ModifyDSPAAssessmentRiskResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDSPAAssessmentRiskTemplate请求参数结构体
      class ModifyDSPAAssessmentRiskTemplateRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param TemplateName: 模板名称
        # @type TemplateName: String
        # @param TemplateId: 模板id
        # @type TemplateId: Integer
        # @param RiskLevelId: 修改的风险等级id
        # @type RiskLevelId: Integer
        # @param TemplateDescription: 模板的描述
        # @type TemplateDescription: String
        # @param RiskIdList: 脆弱项列表
        # @type RiskIdList: Array

        attr_accessor :DspaId, :TemplateName, :TemplateId, :RiskLevelId, :TemplateDescription, :RiskIdList

        def initialize(dspaid=nil, templatename=nil, templateid=nil, risklevelid=nil, templatedescription=nil, riskidlist=nil)
          @DspaId = dspaid
          @TemplateName = templatename
          @TemplateId = templateid
          @RiskLevelId = risklevelid
          @TemplateDescription = templatedescription
          @RiskIdList = riskidlist
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TemplateName = params['TemplateName']
          @TemplateId = params['TemplateId']
          @RiskLevelId = params['RiskLevelId']
          @TemplateDescription = params['TemplateDescription']
          @RiskIdList = params['RiskIdList']
        end
      end

      # ModifyDSPAAssessmentRiskTemplate返回参数结构体
      class ModifyDSPAAssessmentRiskTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDSPACOSDiscoveryTask请求参数结构体
      class ModifyDSPACOSDiscoveryTaskRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param Name: 任务名称，1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字，Name不可重复
        # @type Name: String
        # @param Description: 任务描述，最大长度为1024个字符
        # @type Description: String
        # @param Enable: 任务开关，0 关闭，1 启用
        # @type Enable: Integer
        # @param GeneralRuleSetEnable: 通用规则集开关；0 关闭，1 启用
        # @type GeneralRuleSetEnable: Integer
        # @param ComplianceGroupIds: 合规组ID列表，最多支持添加5个
        # @type ComplianceGroupIds: Array
        # @param Plan: 执行计划； 0立即 1定时，选择“立即”时，扫描周期只能选择单次
        # @type Plan: Integer
        # @param Period: 扫描周期；0单次 1每天 2每周 3每月
        # @type Period: Integer
        # @param TimingStartTime: 任务定时启动时间，格式：2006-01-02 15:04:05
        # 当执行计划（Plan字段）为”立即“时，定时启动时间不会生效，此场景下给该字段传值不会被保存。
        # @type TimingStartTime: String
        # @param FileTypes: 待扫描文件类型，用逗号隔开，格式如：[".txt", ".csv", ".log", ".xml",".html", ".json"]。
        # @type FileTypes: Array
        # @param FileSizeLimit: 文件大小上限，单位为KB，如1000, 目前单个文件最大只支持100MB（102400KB）
        # @type FileSizeLimit: Integer
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String

        attr_accessor :DspaId, :TaskId, :Name, :Description, :Enable, :GeneralRuleSetEnable, :ComplianceGroupIds, :Plan, :Period, :TimingStartTime, :FileTypes, :FileSizeLimit, :ResourceRegion

        def initialize(dspaid=nil, taskid=nil, name=nil, description=nil, enable=nil, generalrulesetenable=nil, compliancegroupids=nil, plan=nil, period=nil, timingstarttime=nil, filetypes=nil, filesizelimit=nil, resourceregion=nil)
          @DspaId = dspaid
          @TaskId = taskid
          @Name = name
          @Description = description
          @Enable = enable
          @GeneralRuleSetEnable = generalrulesetenable
          @ComplianceGroupIds = compliancegroupids
          @Plan = plan
          @Period = period
          @TimingStartTime = timingstarttime
          @FileTypes = filetypes
          @FileSizeLimit = filesizelimit
          @ResourceRegion = resourceregion
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TaskId = params['TaskId']
          @Name = params['Name']
          @Description = params['Description']
          @Enable = params['Enable']
          @GeneralRuleSetEnable = params['GeneralRuleSetEnable']
          @ComplianceGroupIds = params['ComplianceGroupIds']
          @Plan = params['Plan']
          @Period = params['Period']
          @TimingStartTime = params['TimingStartTime']
          @FileTypes = params['FileTypes']
          @FileSizeLimit = params['FileSizeLimit']
          @ResourceRegion = params['ResourceRegion']
        end
      end

      # ModifyDSPACOSDiscoveryTask返回参数结构体
      class ModifyDSPACOSDiscoveryTaskResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDSPACOSTaskResult请求参数结构体
      class ModifyDSPACOSTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param ComplianceId: 合规组ID
        # @type ComplianceId: Integer
        # @param FileResultId: 文件扫描结果ID
        # @type FileResultId: Integer
        # @param IsSetNonSensitiveFile: 是否设置为非敏感文件
        # @type IsSetNonSensitiveFile: Boolean
        # @param FileName: 文件名
        # @type FileName: String
        # @param BucketName: 桶名
        # @type BucketName: String
        # @param DataSourceId: 数据源id
        # @type DataSourceId: String

        attr_accessor :DspaId, :ComplianceId, :FileResultId, :IsSetNonSensitiveFile, :FileName, :BucketName, :DataSourceId

        def initialize(dspaid=nil, complianceid=nil, fileresultid=nil, issetnonsensitivefile=nil, filename=nil, bucketname=nil, datasourceid=nil)
          @DspaId = dspaid
          @ComplianceId = complianceid
          @FileResultId = fileresultid
          @IsSetNonSensitiveFile = issetnonsensitivefile
          @FileName = filename
          @BucketName = bucketname
          @DataSourceId = datasourceid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceId = params['ComplianceId']
          @FileResultId = params['FileResultId']
          @IsSetNonSensitiveFile = params['IsSetNonSensitiveFile']
          @FileName = params['FileName']
          @BucketName = params['BucketName']
          @DataSourceId = params['DataSourceId']
        end
      end

      # ModifyDSPACOSTaskResult返回参数结构体
      class ModifyDSPACOSTaskResultResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDSPACategoryRelation请求参数结构体
      class ModifyDSPACategoryRelationRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param CategoryId: 当前分类id
        # @type CategoryId: Integer
        # @param MergedCategoryId: 合并到的分类id
        # @type MergedCategoryId: Integer
        # @param ComplianceId: 合规组模板id
        # @type ComplianceId: Integer

        attr_accessor :DspaId, :CategoryId, :MergedCategoryId, :ComplianceId

        def initialize(dspaid=nil, categoryid=nil, mergedcategoryid=nil, complianceid=nil)
          @DspaId = dspaid
          @CategoryId = categoryid
          @MergedCategoryId = mergedcategoryid
          @ComplianceId = complianceid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @CategoryId = params['CategoryId']
          @MergedCategoryId = params['MergedCategoryId']
          @ComplianceId = params['ComplianceId']
        end
      end

      # ModifyDSPACategoryRelation返回参数结构体
      class ModifyDSPACategoryRelationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDSPACategory请求参数结构体
      class ModifyDSPACategoryRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param CategoryId: 数据分类ID
        # @type CategoryId: Integer
        # @param Name: 敏感数据分类名称，1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字，Name不可重复
        # @type Name: String

        attr_accessor :DspaId, :CategoryId, :Name

        def initialize(dspaid=nil, categoryid=nil, name=nil)
          @DspaId = dspaid
          @CategoryId = categoryid
          @Name = name
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @CategoryId = params['CategoryId']
          @Name = params['Name']
        end
      end

      # ModifyDSPACategory返回参数结构体
      class ModifyDSPACategoryResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDSPAClusterInfo请求参数结构体
      class ModifyDSPAClusterInfoRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param DspaName: DSPA实例名。1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字。
        # @type DspaName: String
        # @param DspaDescription: DSPA实例描述信息。最长1024个字符。
        # @type DspaDescription: String

        attr_accessor :DspaId, :DspaName, :DspaDescription

        def initialize(dspaid=nil, dspaname=nil, dspadescription=nil)
          @DspaId = dspaid
          @DspaName = dspaname
          @DspaDescription = dspadescription
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @DspaName = params['DspaName']
          @DspaDescription = params['DspaDescription']
        end
      end

      # ModifyDSPAClusterInfo返回参数结构体
      class ModifyDSPAClusterInfoResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDSPAComplianceGroup请求参数结构体
      class ModifyDSPAComplianceGroupRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param ComplianceGroupId: 合规组ID
        # @type ComplianceGroupId: Integer
        # @param Name: 合规组名称，1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字，Name不可重复
        # @type Name: String
        # @param Description: 合规组描述，最大长度为1024个字符
        # @type Description: String
        # @param ComplianceGroupRules: 合规组规则配置（参数已废弃，请传空数组）
        # @type ComplianceGroupRules: Array
        # @param LevelGroupId: 分级组ID，新增参数，可选参数，默认值为1
        # @type LevelGroupId: Integer
        # @param RuleAlias: 是否开启别名
        # @type RuleAlias: Boolean

        attr_accessor :DspaId, :ComplianceGroupId, :Name, :Description, :ComplianceGroupRules, :LevelGroupId, :RuleAlias

        def initialize(dspaid=nil, compliancegroupid=nil, name=nil, description=nil, compliancegrouprules=nil, levelgroupid=nil, rulealias=nil)
          @DspaId = dspaid
          @ComplianceGroupId = compliancegroupid
          @Name = name
          @Description = description
          @ComplianceGroupRules = compliancegrouprules
          @LevelGroupId = levelgroupid
          @RuleAlias = rulealias
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ComplianceGroupId = params['ComplianceGroupId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['ComplianceGroupRules'].nil?
            @ComplianceGroupRules = []
            params['ComplianceGroupRules'].each do |i|
              compliancegroupruleidinfo_tmp = ComplianceGroupRuleIdInfo.new
              compliancegroupruleidinfo_tmp.deserialize(i)
              @ComplianceGroupRules << compliancegroupruleidinfo_tmp
            end
          end
          @LevelGroupId = params['LevelGroupId']
          @RuleAlias = params['RuleAlias']
        end
      end

      # ModifyDSPAComplianceGroup返回参数结构体
      class ModifyDSPAComplianceGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDSPADiscoveryRule请求参数结构体
      class ModifyDSPADiscoveryRuleRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param Name: 规则名称，1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字，Name不可重复
        # @type Name: String
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param Description: 规则描述，最大长度为1024个字符
        # @type Description: String
        # @param RDBRules: RDB类敏感数据识别规则
        # @type RDBRules: :class:`Tencentcloud::Dsgc.v20190723.models.ScanTaskRDBRules`
        # @param COSRules: COS类敏感数据识别规则
        # @type COSRules: :class:`Tencentcloud::Dsgc.v20190723.models.ScanTaskCOSRules`
        # @param Status: 规则状态
        # @type Status: Integer

        attr_accessor :DspaId, :Name, :RuleId, :Description, :RDBRules, :COSRules, :Status

        def initialize(dspaid=nil, name=nil, ruleid=nil, description=nil, rdbrules=nil, cosrules=nil, status=nil)
          @DspaId = dspaid
          @Name = name
          @RuleId = ruleid
          @Description = description
          @RDBRules = rdbrules
          @COSRules = cosrules
          @Status = status
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @Name = params['Name']
          @RuleId = params['RuleId']
          @Description = params['Description']
          unless params['RDBRules'].nil?
            @RDBRules = ScanTaskRDBRules.new
            @RDBRules.deserialize(params['RDBRules'])
          end
          unless params['COSRules'].nil?
            @COSRules = ScanTaskCOSRules.new
            @COSRules.deserialize(params['COSRules'])
          end
          @Status = params['Status']
        end
      end

      # ModifyDSPADiscoveryRule返回参数结构体
      class ModifyDSPADiscoveryRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDSPADiscoveryTask请求参数结构体
      class ModifyDSPADiscoveryTaskRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param Name: 任务名称，1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字，Name不可重复
        # @type Name: String
        # @param Description: 任务描述，最大长度为1024个字符
        # @type Description: String
        # @param Enable: 任务开关，0 关闭，1 启用
        # @type Enable: Integer
        # @param DataSourceId: 数据源ID
        # @type DataSourceId: String
        # @param Condition: 用于传入的数据源的条件，目前只支持数据库，所以目前表示数据库的名称，最多添加5个数据库，之间通过逗号分隔
        # @type Condition: String
        # @param GeneralRuleSetEnable: 通用规则集开关；0 关闭，1 启用
        # @type GeneralRuleSetEnable: Integer
        # @param ComplianceGroupIds: 合规组ID列表，最多支持添加5个
        # @type ComplianceGroupIds: Array
        # @param Plan: 执行计划； 0立即 1定时，选择“立即”时，扫描周期只能选择单次
        # @type Plan: Integer
        # @param Period: 扫描周期；0单次 1每天 2每周 3每月
        # @type Period: Integer
        # @param TimingStartTime: 任务定时启动时间，格式：2006-01-02 15:04:05
        # 当执行计划（Plan字段）为”立即“时，定时启动时间不会生效，此场景下给该字段传值不会被保存。
        # @type TimingStartTime: String
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String
        # @param DataSourceType: 数据源类型，可取值如下：
        # cdb 表示云数据库 MySQL,
        # dcdb 表示TDSQL MySQL版,
        # mariadb 表示云数据库 MariaDB,
        # postgres 表示云数据库 PostgreSQL,
        # cynosdbpg 表示TDSQL-C PostgreSQL版,
        # cynosdbmysql 表示TDSQL-C MySQL版,
        # selfbuilt-db 表示自建数据库
        # @type DataSourceType: String

        attr_accessor :DspaId, :TaskId, :Name, :Description, :Enable, :DataSourceId, :Condition, :GeneralRuleSetEnable, :ComplianceGroupIds, :Plan, :Period, :TimingStartTime, :ResourceRegion, :DataSourceType

        def initialize(dspaid=nil, taskid=nil, name=nil, description=nil, enable=nil, datasourceid=nil, condition=nil, generalrulesetenable=nil, compliancegroupids=nil, plan=nil, period=nil, timingstarttime=nil, resourceregion=nil, datasourcetype=nil)
          @DspaId = dspaid
          @TaskId = taskid
          @Name = name
          @Description = description
          @Enable = enable
          @DataSourceId = datasourceid
          @Condition = condition
          @GeneralRuleSetEnable = generalrulesetenable
          @ComplianceGroupIds = compliancegroupids
          @Plan = plan
          @Period = period
          @TimingStartTime = timingstarttime
          @ResourceRegion = resourceregion
          @DataSourceType = datasourcetype
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TaskId = params['TaskId']
          @Name = params['Name']
          @Description = params['Description']
          @Enable = params['Enable']
          @DataSourceId = params['DataSourceId']
          @Condition = params['Condition']
          @GeneralRuleSetEnable = params['GeneralRuleSetEnable']
          @ComplianceGroupIds = params['ComplianceGroupIds']
          @Plan = params['Plan']
          @Period = params['Period']
          @TimingStartTime = params['TimingStartTime']
          @ResourceRegion = params['ResourceRegion']
          @DataSourceType = params['DataSourceType']
        end
      end

      # ModifyDSPADiscoveryTask返回参数结构体
      class ModifyDSPADiscoveryTaskResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDSPAESTaskResult请求参数结构体
      class ModifyDSPAESTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param FieldResultId: 字段扫描结果ID
        # @type FieldResultId: Integer
        # @param ComplianceId: 合规组ID
        # @type ComplianceId: Integer
        # @param IsSetNonSensitiveField: 是否设置为非敏感字段
        # @type IsSetNonSensitiveField: Boolean
        # @param DestRuleId: 调整后新的规则ID
        # @type DestRuleId: Integer
        # @param DestCategoryId: 调整后新的分类ID
        # @type DestCategoryId: Integer
        # @param DestLevelId: 调整后新的分级ID
        # @type DestLevelId: Integer
        # @param SrcRuleId: 调整前的规则id（系统识别的id）
        # @type SrcRuleId: Integer
        # @param SrcCategoryId: 调整前的规则id（系统识别的id）
        # @type SrcCategoryId: Integer
        # @param SrcLevelId: 调整前的等级id
        # @type SrcLevelId: Integer
        # @param IdentifyType: 0系统识别，1人工打标
        # @type IdentifyType: Integer

        attr_accessor :DspaId, :FieldResultId, :ComplianceId, :IsSetNonSensitiveField, :DestRuleId, :DestCategoryId, :DestLevelId, :SrcRuleId, :SrcCategoryId, :SrcLevelId, :IdentifyType

        def initialize(dspaid=nil, fieldresultid=nil, complianceid=nil, issetnonsensitivefield=nil, destruleid=nil, destcategoryid=nil, destlevelid=nil, srcruleid=nil, srccategoryid=nil, srclevelid=nil, identifytype=nil)
          @DspaId = dspaid
          @FieldResultId = fieldresultid
          @ComplianceId = complianceid
          @IsSetNonSensitiveField = issetnonsensitivefield
          @DestRuleId = destruleid
          @DestCategoryId = destcategoryid
          @DestLevelId = destlevelid
          @SrcRuleId = srcruleid
          @SrcCategoryId = srccategoryid
          @SrcLevelId = srclevelid
          @IdentifyType = identifytype
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @FieldResultId = params['FieldResultId']
          @ComplianceId = params['ComplianceId']
          @IsSetNonSensitiveField = params['IsSetNonSensitiveField']
          @DestRuleId = params['DestRuleId']
          @DestCategoryId = params['DestCategoryId']
          @DestLevelId = params['DestLevelId']
          @SrcRuleId = params['SrcRuleId']
          @SrcCategoryId = params['SrcCategoryId']
          @SrcLevelId = params['SrcLevelId']
          @IdentifyType = params['IdentifyType']
        end
      end

      # ModifyDSPAESTaskResult返回参数结构体
      class ModifyDSPAESTaskResultResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDSPATaskResult请求参数结构体
      class ModifyDSPATaskResultRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param FieldResultId: 字段扫描结果ID
        # @type FieldResultId: Integer
        # @param ComplianceId: 合规组ID
        # @type ComplianceId: Integer
        # @param IsSetNonSensitiveField: 是否设置为非敏感字段
        # @type IsSetNonSensitiveField: Boolean
        # @param DestRuleId: 调整后新的规则ID
        # @type DestRuleId: Integer
        # @param DestCategoryId: 调整后新的分类ID
        # @type DestCategoryId: Integer
        # @param DestLevelId: 调整后新的分级ID
        # @type DestLevelId: Integer
        # @param SrcRuleId: 调整前的规则ID
        # @type SrcRuleId: Integer
        # @param SrcCategoryId: 调整之前的分类id
        # @type SrcCategoryId: Integer
        # @param SrcLevelId: 调整之前的分级id
        # @type SrcLevelId: Integer
        # @param IdentifyType: 识别方式
        # 0-系统识别，1-人工打标
        # @type IdentifyType: Integer

        attr_accessor :DspaId, :FieldResultId, :ComplianceId, :IsSetNonSensitiveField, :DestRuleId, :DestCategoryId, :DestLevelId, :SrcRuleId, :SrcCategoryId, :SrcLevelId, :IdentifyType

        def initialize(dspaid=nil, fieldresultid=nil, complianceid=nil, issetnonsensitivefield=nil, destruleid=nil, destcategoryid=nil, destlevelid=nil, srcruleid=nil, srccategoryid=nil, srclevelid=nil, identifytype=nil)
          @DspaId = dspaid
          @FieldResultId = fieldresultid
          @ComplianceId = complianceid
          @IsSetNonSensitiveField = issetnonsensitivefield
          @DestRuleId = destruleid
          @DestCategoryId = destcategoryid
          @DestLevelId = destlevelid
          @SrcRuleId = srcruleid
          @SrcCategoryId = srccategoryid
          @SrcLevelId = srclevelid
          @IdentifyType = identifytype
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @FieldResultId = params['FieldResultId']
          @ComplianceId = params['ComplianceId']
          @IsSetNonSensitiveField = params['IsSetNonSensitiveField']
          @DestRuleId = params['DestRuleId']
          @DestCategoryId = params['DestCategoryId']
          @DestLevelId = params['DestLevelId']
          @SrcRuleId = params['SrcRuleId']
          @SrcCategoryId = params['SrcCategoryId']
          @SrcLevelId = params['SrcLevelId']
          @IdentifyType = params['IdentifyType']
        end
      end

      # ModifyDSPATaskResult返回参数结构体
      class ModifyDSPATaskResultResponse < TencentCloud::Common::AbstractModel
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

      # mongo的资产统计结果
      class MongoAsset < TencentCloud::Common::AbstractModel
        # @param DbNums: DB总数量
        # @type DbNums: Integer
        # @param SensitiveDbNums: 敏感DB数量
        # @type SensitiveDbNums: Integer
        # @param ColNums: 集合数量
        # @type ColNums: Integer
        # @param SensitiveColNums: 敏感集合的数量
        # @type SensitiveColNums: Integer
        # @param FieldNums: 字段数量
        # @type FieldNums: Integer
        # @param SensitiveFieldNums: 敏感的字段数量
        # @type SensitiveFieldNums: Integer

        attr_accessor :DbNums, :SensitiveDbNums, :ColNums, :SensitiveColNums, :FieldNums, :SensitiveFieldNums

        def initialize(dbnums=nil, sensitivedbnums=nil, colnums=nil, sensitivecolnums=nil, fieldnums=nil, sensitivefieldnums=nil)
          @DbNums = dbnums
          @SensitiveDbNums = sensitivedbnums
          @ColNums = colnums
          @SensitiveColNums = sensitivecolnums
          @FieldNums = fieldnums
          @SensitiveFieldNums = sensitivefieldnums
        end

        def deserialize(params)
          @DbNums = params['DbNums']
          @SensitiveDbNums = params['SensitiveDbNums']
          @ColNums = params['ColNums']
          @SensitiveColNums = params['SensitiveColNums']
          @FieldNums = params['FieldNums']
          @SensitiveFieldNums = params['SensitiveFieldNums']
        end
      end

      # mongo敏感资产详情列表
      class MongoAssetDBDetail < TencentCloud::Common::AbstractModel
        # @param DataSourceId: 数据源id
        # @type DataSourceId: String
        # @param DdName: 数据库名称
        # @type DdName: String
        # @param DataType: 数据库类型
        # @type DataType: String
        # @param ColNums: 集合的数量
        # @type ColNums: Integer
        # @param SensitiveColNums: 敏感集合数量
        # @type SensitiveColNums: Integer
        # @param FieldNums: 字段的数量
        # @type FieldNums: Integer
        # @param SensitiveFieldNums: 敏感字段的数量
        # @type SensitiveFieldNums: Integer
        # @param DistributionData: 敏感数据分布
        # @type DistributionData: Array

        attr_accessor :DataSourceId, :DdName, :DataType, :ColNums, :SensitiveColNums, :FieldNums, :SensitiveFieldNums, :DistributionData

        def initialize(datasourceid=nil, ddname=nil, datatype=nil, colnums=nil, sensitivecolnums=nil, fieldnums=nil, sensitivefieldnums=nil, distributiondata=nil)
          @DataSourceId = datasourceid
          @DdName = ddname
          @DataType = datatype
          @ColNums = colnums
          @SensitiveColNums = sensitivecolnums
          @FieldNums = fieldnums
          @SensitiveFieldNums = sensitivefieldnums
          @DistributionData = distributiondata
        end

        def deserialize(params)
          @DataSourceId = params['DataSourceId']
          @DdName = params['DdName']
          @DataType = params['DataType']
          @ColNums = params['ColNums']
          @SensitiveColNums = params['SensitiveColNums']
          @FieldNums = params['FieldNums']
          @SensitiveFieldNums = params['SensitiveFieldNums']
          unless params['DistributionData'].nil?
            @DistributionData = []
            params['DistributionData'].each do |i|
              note_tmp = Note.new
              note_tmp.deserialize(i)
              @DistributionData << note_tmp
            end
          end
        end
      end

      # NOSQL类型的数据源实例
      class NOSQLInstance < TencentCloud::Common::AbstractModel
        # @param DataSourceId: 数据源id
        # @type DataSourceId: String
        # @param DataSourceType: cdb, dcdb, mariadb, postgres, cynosdbpg, cynosdbmysql, cos, mysql_like_proto, postgre_like_proto,mongodb
        # @type DataSourceType: String
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String
        # @param DiscoveryTaskId: 根据实例创建的敏感数据识别扫描任务Id
        # @type DiscoveryTaskId: Integer
        # @param DiscoveryTaskInstanceID: 敏感数据识别任务实例id
        # @type DiscoveryTaskInstanceID: Integer

        attr_accessor :DataSourceId, :DataSourceType, :ResourceRegion, :DiscoveryTaskId, :DiscoveryTaskInstanceID

        def initialize(datasourceid=nil, datasourcetype=nil, resourceregion=nil, discoverytaskid=nil, discoverytaskinstanceid=nil)
          @DataSourceId = datasourceid
          @DataSourceType = datasourcetype
          @ResourceRegion = resourceregion
          @DiscoveryTaskId = discoverytaskid
          @DiscoveryTaskInstanceID = discoverytaskinstanceid
        end

        def deserialize(params)
          @DataSourceId = params['DataSourceId']
          @DataSourceType = params['DataSourceType']
          @ResourceRegion = params['ResourceRegion']
          @DiscoveryTaskId = params['DiscoveryTaskId']
          @DiscoveryTaskInstanceID = params['DiscoveryTaskInstanceID']
        end
      end

      # 数据资产报告-各种key-value的展示数据结构
      class Note < TencentCloud::Common::AbstractModel
        # @param Key: 通用key，例如分类名称
        # @type Key: String
        # @param Value: 通用value，例如分类个数
        # @type Value: Integer

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # 权限风险详情
      class PrivilegeRisk < TencentCloud::Common::AbstractModel
        # @param AccountName: 账户名
        # @type AccountName: Array
        # @param TableName: 表名称
        # @type TableName: String
        # @param Description: 说明
        # @type Description: String

        attr_accessor :AccountName, :TableName, :Description

        def initialize(accountname=nil, tablename=nil, description=nil)
          @AccountName = accountname
          @TableName = tablename
          @Description = description
        end

        def deserialize(params)
          @AccountName = params['AccountName']
          @TableName = params['TableName']
          @Description = params['Description']
        end
      end

      # 处理历史
      class ProcessHistory < TencentCloud::Common::AbstractModel
        # @param Time: 处理时间
        # @type Time: String
        # @param Status: 状态
        # @type Status: Integer
        # @param Handler: 处理人
        # @type Handler: String
        # @param Note: 备注
        # @type Note: String

        attr_accessor :Time, :Status, :Handler, :Note

        def initialize(time=nil, status=nil, handler=nil, note=nil)
          @Time = time
          @Status = status
          @Handler = handler
          @Note = note
        end

        def deserialize(params)
          @Time = params['Time']
          @Status = params['Status']
          @Handler = params['Handler']
          @Note = params['Note']
        end
      end

      # QueryDSPAMetaResourceDbList请求参数结构体
      class QueryDSPAMetaResourceDbListRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param ResourceId: 数据库实例ID。
        # @type ResourceId: String
        # @param ResourceRegion: 数据库实例所在地域。
        # @type ResourceRegion: String
        # @param MetaType: 数据库实例类型。
        # @type MetaType: String

        attr_accessor :DspaId, :ResourceId, :ResourceRegion, :MetaType

        def initialize(dspaid=nil, resourceid=nil, resourceregion=nil, metatype=nil)
          @DspaId = dspaid
          @ResourceId = resourceid
          @ResourceRegion = resourceregion
          @MetaType = metatype
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ResourceId = params['ResourceId']
          @ResourceRegion = params['ResourceRegion']
          @MetaType = params['MetaType']
        end
      end

      # QueryDSPAMetaResourceDbList返回参数结构体
      class QueryDSPAMetaResourceDbListResponse < TencentCloud::Common::AbstractModel
        # @param DbRelationStatusItems: 数据库实例DB列表的查询结果。
        # @type DbRelationStatusItems: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DbRelationStatusItems, :RequestId

        def initialize(dbrelationstatusitems=nil, requestid=nil)
          @DbRelationStatusItems = dbrelationstatusitems
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DbRelationStatusItems'].nil?
            @DbRelationStatusItems = []
            params['DbRelationStatusItems'].each do |i|
              dbrelationstatusitem_tmp = DbRelationStatusItem.new
              dbrelationstatusitem_tmp.deserialize(i)
              @DbRelationStatusItems << dbrelationstatusitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryResourceDbBindStatus请求参数结构体
      class QueryResourceDbBindStatusRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param ResourceId: 资源ID。
        # @type ResourceId: String
        # @param ResourceRegion: 资源所在地域。
        # @type ResourceRegion: String
        # @param MetaType: 资源类型。
        # @type MetaType: String

        attr_accessor :DspaId, :ResourceId, :ResourceRegion, :MetaType

        def initialize(dspaid=nil, resourceid=nil, resourceregion=nil, metatype=nil)
          @DspaId = dspaid
          @ResourceId = resourceid
          @ResourceRegion = resourceregion
          @MetaType = metatype
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ResourceId = params['ResourceId']
          @ResourceRegion = params['ResourceRegion']
          @MetaType = params['MetaType']
        end
      end

      # QueryResourceDbBindStatus返回参数结构体
      class QueryResourceDbBindStatusResponse < TencentCloud::Common::AbstractModel
        # @param BindDbNums: 绑定DB数量。
        # @type BindDbNums: Integer
        # @param UnbindDbNums: 未绑定DB数量。
        # @type UnbindDbNums: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BindDbNums, :UnbindDbNums, :RequestId

        def initialize(binddbnums=nil, unbinddbnums=nil, requestid=nil)
          @BindDbNums = binddbnums
          @UnbindDbNums = unbinddbnums
          @RequestId = requestid
        end

        def deserialize(params)
          @BindDbNums = params['BindDbNums']
          @UnbindDbNums = params['UnbindDbNums']
          @RequestId = params['RequestId']
        end
      end

      # rdb的资产统计结果
      class RDBAsset < TencentCloud::Common::AbstractModel
        # @param DbNums: DB总数量
        # @type DbNums: Integer
        # @param SensitiveDbNums: 敏感DB数量
        # @type SensitiveDbNums: Integer
        # @param TableNums: 表数量
        # @type TableNums: Integer
        # @param SensitiveTableNums: 敏感表的数量
        # @type SensitiveTableNums: Integer
        # @param FieldNums: 字段数量
        # @type FieldNums: Integer
        # @param SensitiveFieldNums: 敏感的字段数量
        # @type SensitiveFieldNums: Integer

        attr_accessor :DbNums, :SensitiveDbNums, :TableNums, :SensitiveTableNums, :FieldNums, :SensitiveFieldNums

        def initialize(dbnums=nil, sensitivedbnums=nil, tablenums=nil, sensitivetablenums=nil, fieldnums=nil, sensitivefieldnums=nil)
          @DbNums = dbnums
          @SensitiveDbNums = sensitivedbnums
          @TableNums = tablenums
          @SensitiveTableNums = sensitivetablenums
          @FieldNums = fieldnums
          @SensitiveFieldNums = sensitivefieldnums
        end

        def deserialize(params)
          @DbNums = params['DbNums']
          @SensitiveDbNums = params['SensitiveDbNums']
          @TableNums = params['TableNums']
          @SensitiveTableNums = params['SensitiveTableNums']
          @FieldNums = params['FieldNums']
          @SensitiveFieldNums = params['SensitiveFieldNums']
        end
      end

      # RDB实例信息
      class RDBInstance < TencentCloud::Common::AbstractModel
        # @param DataSourceId: 数据源Id
        # @type DataSourceId: String
        # @param DataSourceType: cdb, dcdb, mariadb, postgres, cynosdbpg, cynosdbmysql, cos, mysql_like_proto, postgre_like_proto
        # @type DataSourceType: String
        # @param ResourceRegion: 资源所在地域
        # @type ResourceRegion: String
        # @param DBs: 若未来扩展到DBName粒度，可采用
        # @type DBs: Array

        attr_accessor :DataSourceId, :DataSourceType, :ResourceRegion, :DBs

        def initialize(datasourceid=nil, datasourcetype=nil, resourceregion=nil, dbs=nil)
          @DataSourceId = datasourceid
          @DataSourceType = datasourcetype
          @ResourceRegion = resourceregion
          @DBs = dbs
        end

        def deserialize(params)
          @DataSourceId = params['DataSourceId']
          @DataSourceType = params['DataSourceType']
          @ResourceRegion = params['ResourceRegion']
          unless params['DBs'].nil?
            @DBs = []
            params['DBs'].each do |i|
              dbstatements_tmp = DBStatements.new
              dbstatements_tmp.deserialize(i)
              @DBs << dbstatements_tmp
            end
          end
        end
      end

      # 报表信息
      class ReportInfo < TencentCloud::Common::AbstractModel
        # @param Id: 任务id
        # @type Id: Integer
        # @param ReportName: 报告名称
        # @type ReportName: String
        # @param ReportType: 报告类型（AssetSorting:资产梳理）
        # @type ReportType: String
        # @param ReportPeriod: 报告周期（0单次 1每天 2每周 3每月）
        # @type ReportPeriod: Integer
        # @param ReportPlan: 执行计划 （0:单次报告 1:定时报告）
        # @type ReportPlan: Integer
        # @param ReportStatus: 报告导出状态（Success 成功, Failed 失败, InProgress 进行中）
        # @type ReportStatus: String
        # @param TimingStartTime: 任务下次启动时间
        # @type TimingStartTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param FinishedTime: 完成时间
        # @type FinishedTime: String
        # @param SubUin: 子账号uin
        # @type SubUin: String
        # @param FailedMessage: 失败信息
        # @type FailedMessage: String
        # @param Enable: 是否启用（0：否 1：是）
        # @type Enable: Integer
        # @param ComplianceName: 识别模板名称
        # @type ComplianceName: String
        # @param ProgressPercent: 进度百分比
        # @type ProgressPercent: Integer
        # @param ReportTemplateName: 报告模版名称
        # @type ReportTemplateName: String

        attr_accessor :Id, :ReportName, :ReportType, :ReportPeriod, :ReportPlan, :ReportStatus, :TimingStartTime, :CreateTime, :FinishedTime, :SubUin, :FailedMessage, :Enable, :ComplianceName, :ProgressPercent, :ReportTemplateName

        def initialize(id=nil, reportname=nil, reporttype=nil, reportperiod=nil, reportplan=nil, reportstatus=nil, timingstarttime=nil, createtime=nil, finishedtime=nil, subuin=nil, failedmessage=nil, enable=nil, compliancename=nil, progresspercent=nil, reporttemplatename=nil)
          @Id = id
          @ReportName = reportname
          @ReportType = reporttype
          @ReportPeriod = reportperiod
          @ReportPlan = reportplan
          @ReportStatus = reportstatus
          @TimingStartTime = timingstarttime
          @CreateTime = createtime
          @FinishedTime = finishedtime
          @SubUin = subuin
          @FailedMessage = failedmessage
          @Enable = enable
          @ComplianceName = compliancename
          @ProgressPercent = progresspercent
          @ReportTemplateName = reporttemplatename
        end

        def deserialize(params)
          @Id = params['Id']
          @ReportName = params['ReportName']
          @ReportType = params['ReportType']
          @ReportPeriod = params['ReportPeriod']
          @ReportPlan = params['ReportPlan']
          @ReportStatus = params['ReportStatus']
          @TimingStartTime = params['TimingStartTime']
          @CreateTime = params['CreateTime']
          @FinishedTime = params['FinishedTime']
          @SubUin = params['SubUin']
          @FailedMessage = params['FailedMessage']
          @Enable = params['Enable']
          @ComplianceName = params['ComplianceName']
          @ProgressPercent = params['ProgressPercent']
          @ReportTemplateName = params['ReportTemplateName']
        end
      end

      # RestartDSPAAssessmentTask请求参数结构体
      class RestartDSPAAssessmentTaskRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例Id，格式“dspa-xxxxxxxx”
        # @type DspaId: String
        # @param TaskId: 评估任务Id，格式“task-xxxxxxxx”
        # @type TaskId: String

        attr_accessor :DspaId, :TaskId

        def initialize(dspaid=nil, taskid=nil)
          @DspaId = dspaid
          @TaskId = taskid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TaskId = params['TaskId']
        end
      end

      # RestartDSPAAssessmentTask返回参数结构体
      class RestartDSPAAssessmentTaskResponse < TencentCloud::Common::AbstractModel
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

      # 待处理风险项数量信息
      class RiskCountInfo < TencentCloud::Common::AbstractModel
        # @param RiskLevel: 风险等级
        # @type RiskLevel: String
        # @param Count: 该等级风险项数量
        # @type Count: Integer
        # @param RiskLevelName: 风险等级名称
        # @type RiskLevelName: String

        attr_accessor :RiskLevel, :Count, :RiskLevelName

        def initialize(risklevel=nil, count=nil, risklevelname=nil)
          @RiskLevel = risklevel
          @Count = count
          @RiskLevelName = risklevelname
        end

        def deserialize(params)
          @RiskLevel = params['RiskLevel']
          @Count = params['Count']
          @RiskLevelName = params['RiskLevelName']
        end
      end

      # 风险趋势项
      class RiskDealedTrendItem < TencentCloud::Common::AbstractModel
        # @param Date: 日期
        # @type Date: String
        # @param Unhandled: 未解决数量
        # @type Unhandled: Integer
        # @param Handled: 已解决数量
        # @type Handled: Integer
        # @param NewDiscoveryHandled: 新发现
        # @type NewDiscoveryHandled: Integer

        attr_accessor :Date, :Unhandled, :Handled, :NewDiscoveryHandled

        def initialize(date=nil, unhandled=nil, handled=nil, newdiscoveryhandled=nil)
          @Date = date
          @Unhandled = unhandled
          @Handled = handled
          @NewDiscoveryHandled = newdiscoveryhandled
        end

        def deserialize(params)
          @Date = params['Date']
          @Unhandled = params['Unhandled']
          @Handled = params['Handled']
          @NewDiscoveryHandled = params['NewDiscoveryHandled']
        end
      end

      # 风险TOP5统计项
      class RiskItem < TencentCloud::Common::AbstractModel
        # @param ItemName: 名称
        # @type ItemName: String
        # @param RiskNum: 风险数量
        # @type RiskNum: Integer

        attr_accessor :ItemName, :RiskNum

        def initialize(itemname=nil, risknum=nil)
          @ItemName = itemname
          @RiskNum = risknum
        end

        def deserialize(params)
          @ItemName = params['ItemName']
          @RiskNum = params['RiskNum']
        end
      end

      # 最新的风险详情信息数据
      class RiskItemInfo < TencentCloud::Common::AbstractModel
        # @param Id: 最新风险项id
        # @type Id: Integer
        # @param DataSourceId: 数据源id
        # @type DataSourceId: String
        # @param DataSourceName: 数据源名称
        # @type DataSourceName: String
        # @param DataSourceType: 数据源类型
        # @type DataSourceType: String
        # @param ResourceRegion: 资源地域
        # @type ResourceRegion: String
        # @param AssetName: 资产名称
        # @type AssetName: String
        # @param RiskType: 风险类型
        # @type RiskType: String
        # @param RiskName: 风险项
        # @type RiskName: String
        # @param RiskLevel: 风险级别
        # @type RiskLevel: String
        # @param RiskDescription: 风险描述
        # @type RiskDescription: String
        # @param SuggestAction: 建议措施
        # @type SuggestAction: String
        # @param SecurityProduct: 安全产品（可能有多个）
        # @type SecurityProduct: Array
        # @param Status: 状态(waiting:待处理，processing:处理中，finished:已处理，ignored:已忽略)
        # @type Status: Integer
        # @param ScanTime: 扫描时间
        # @type ScanTime: String
        # @param LastProcessTime: 最后处置时间
        # @type LastProcessTime: String
        # @param IdentifyComplianceId: 分类分级合规组Id
        # @type IdentifyComplianceId: Integer
        # @param ItemSubType: 类型
        # @type ItemSubType: String
        # @param RiskSide: 风险面
        # @type RiskSide: String
        # @param APIRiskLinkURL: API安全风险链接
        # @type APIRiskLinkURL: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :Id, :DataSourceId, :DataSourceName, :DataSourceType, :ResourceRegion, :AssetName, :RiskType, :RiskName, :RiskLevel, :RiskDescription, :SuggestAction, :SecurityProduct, :Status, :ScanTime, :LastProcessTime, :IdentifyComplianceId, :ItemSubType, :RiskSide, :APIRiskLinkURL, :Remark

        def initialize(id=nil, datasourceid=nil, datasourcename=nil, datasourcetype=nil, resourceregion=nil, assetname=nil, risktype=nil, riskname=nil, risklevel=nil, riskdescription=nil, suggestaction=nil, securityproduct=nil, status=nil, scantime=nil, lastprocesstime=nil, identifycomplianceid=nil, itemsubtype=nil, riskside=nil, apirisklinkurl=nil, remark=nil)
          @Id = id
          @DataSourceId = datasourceid
          @DataSourceName = datasourcename
          @DataSourceType = datasourcetype
          @ResourceRegion = resourceregion
          @AssetName = assetname
          @RiskType = risktype
          @RiskName = riskname
          @RiskLevel = risklevel
          @RiskDescription = riskdescription
          @SuggestAction = suggestaction
          @SecurityProduct = securityproduct
          @Status = status
          @ScanTime = scantime
          @LastProcessTime = lastprocesstime
          @IdentifyComplianceId = identifycomplianceid
          @ItemSubType = itemsubtype
          @RiskSide = riskside
          @APIRiskLinkURL = apirisklinkurl
          @Remark = remark
        end

        def deserialize(params)
          @Id = params['Id']
          @DataSourceId = params['DataSourceId']
          @DataSourceName = params['DataSourceName']
          @DataSourceType = params['DataSourceType']
          @ResourceRegion = params['ResourceRegion']
          @AssetName = params['AssetName']
          @RiskType = params['RiskType']
          @RiskName = params['RiskName']
          @RiskLevel = params['RiskLevel']
          @RiskDescription = params['RiskDescription']
          @SuggestAction = params['SuggestAction']
          unless params['SecurityProduct'].nil?
            @SecurityProduct = []
            params['SecurityProduct'].each do |i|
              securityproduct_tmp = SecurityProduct.new
              securityproduct_tmp.deserialize(i)
              @SecurityProduct << securityproduct_tmp
            end
          end
          @Status = params['Status']
          @ScanTime = params['ScanTime']
          @LastProcessTime = params['LastProcessTime']
          @IdentifyComplianceId = params['IdentifyComplianceId']
          @ItemSubType = params['ItemSubType']
          @RiskSide = params['RiskSide']
          @APIRiskLinkURL = params['APIRiskLinkURL']
          @Remark = params['Remark']
        end
      end

      # 风险级别详情的矩阵
      class RiskLevelMatrix < TencentCloud::Common::AbstractModel
        # @param Id: 存储id
        # @type Id: Integer
        # @param SensitiveLevelId: 分类分级levelID
        # @type SensitiveLevelId: Integer
        # @param SensitiveLevelName: 分类分级名称
        # @type SensitiveLevelName: String
        # @param VulnerabilityLevel: 漏洞级别
        # @type VulnerabilityLevel: String
        # @param RiskLevel: 风险级别
        # @type RiskLevel: String

        attr_accessor :Id, :SensitiveLevelId, :SensitiveLevelName, :VulnerabilityLevel, :RiskLevel

        def initialize(id=nil, sensitivelevelid=nil, sensitivelevelname=nil, vulnerabilitylevel=nil, risklevel=nil)
          @Id = id
          @SensitiveLevelId = sensitivelevelid
          @SensitiveLevelName = sensitivelevelname
          @VulnerabilityLevel = vulnerabilitylevel
          @RiskLevel = risklevel
        end

        def deserialize(params)
          @Id = params['Id']
          @SensitiveLevelId = params['SensitiveLevelId']
          @SensitiveLevelName = params['SensitiveLevelName']
          @VulnerabilityLevel = params['VulnerabilityLevel']
          @RiskLevel = params['RiskLevel']
        end
      end

      # 风险等级列表
      class RiskLevelRisk < TencentCloud::Common::AbstractModel
        # @param Id: 风险id
        # @type Id: Integer
        # @param RiskLevelName: 风险等级列表
        # @type RiskLevelName: String
        # @param RiskLevelDescription: 风险级别描述
        # @type RiskLevelDescription: String
        # @param IdentifyComplianceName: 引用的分类分级模板
        # @type IdentifyComplianceName: String
        # @param Type: 类型，区分自定义还是系统内置
        # @type Type: String

        attr_accessor :Id, :RiskLevelName, :RiskLevelDescription, :IdentifyComplianceName, :Type

        def initialize(id=nil, risklevelname=nil, riskleveldescription=nil, identifycompliancename=nil, type=nil)
          @Id = id
          @RiskLevelName = risklevelname
          @RiskLevelDescription = riskleveldescription
          @IdentifyComplianceName = identifycompliancename
          @Type = type
        end

        def deserialize(params)
          @Id = params['Id']
          @RiskLevelName = params['RiskLevelName']
          @RiskLevelDescription = params['RiskLevelDescription']
          @IdentifyComplianceName = params['IdentifyComplianceName']
          @Type = params['Type']
        end
      end

      # 风险级别趋势项
      class RiskLevelTrendItem < TencentCloud::Common::AbstractModel
        # @param Date: 日期
        # @type Date: String
        # @param High: 高风险数量
        # @type High: Integer
        # @param Medium: 中风险数量
        # @type Medium: Integer
        # @param Low: 低风险数量
        # @type Low: Integer
        # @param Total: 总数
        # @type Total: Integer

        attr_accessor :Date, :High, :Medium, :Low, :Total

        def initialize(date=nil, high=nil, medium=nil, low=nil, total=nil)
          @Date = date
          @High = high
          @Medium = medium
          @Low = low
          @Total = total
        end

        def deserialize(params)
          @Date = params['Date']
          @High = params['High']
          @Medium = params['Medium']
          @Low = params['Low']
          @Total = params['Total']
        end
      end

      # 用于生成默认的风险级别矩阵
      class RiskMatrixLevel < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Id: 就是id
        # @type Id: Integer
        # @param Score: 分数
        # @type Score: Float

        attr_accessor :Name, :Id, :Score

        def initialize(name=nil, id=nil, score=nil)
          @Name = name
          @Id = id
          @Score = score
        end

        def deserialize(params)
          @Name = params['Name']
          @Id = params['Id']
          @Score = params['Score']
        end
      end

      # 风险面的分布
      class RiskSideDistributed < TencentCloud::Common::AbstractModel
        # @param AssessmentRiskSide: 风险面
        # @type AssessmentRiskSide: :class:`Tencentcloud::Dsgc.v20190723.models.Note`
        # @param AssessmentRisk: 风险类型
        # @type AssessmentRisk: Array

        attr_accessor :AssessmentRiskSide, :AssessmentRisk

        def initialize(assessmentriskside=nil, assessmentrisk=nil)
          @AssessmentRiskSide = assessmentriskside
          @AssessmentRisk = assessmentrisk
        end

        def deserialize(params)
          unless params['AssessmentRiskSide'].nil?
            @AssessmentRiskSide = Note.new
            @AssessmentRiskSide.deserialize(params['AssessmentRiskSide'])
          end
          unless params['AssessmentRisk'].nil?
            @AssessmentRisk = []
            params['AssessmentRisk'].each do |i|
              note_tmp = Note.new
              note_tmp.deserialize(i)
              @AssessmentRisk << note_tmp
            end
          end
        end
      end

      # 数据资产报告-rdb的敏感数据规则分布
      class RuleDistribution < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则id
        # @type RuleId: Integer
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param LevelId: 分级id
        # @type LevelId: Integer
        # @param LevelName: 分级名称
        # @type LevelName: String
        # @param RuleCnt: 规则数量
        # @type RuleCnt: Integer

        attr_accessor :RuleId, :RuleName, :LevelId, :LevelName, :RuleCnt

        def initialize(ruleid=nil, rulename=nil, levelid=nil, levelname=nil, rulecnt=nil)
          @RuleId = ruleid
          @RuleName = rulename
          @LevelId = levelid
          @LevelName = levelname
          @RuleCnt = rulecnt
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @LevelId = params['LevelId']
          @LevelName = params['LevelName']
          @RuleCnt = params['RuleCnt']
        end
      end

      # 分类分级规则数量
      class RuleEffectItem < TencentCloud::Common::AbstractModel
        # @param Name: 规则描述
        # @type Name: String
        # @param Value: 规则值
        # @type Value: Integer

        attr_accessor :Name, :Value

        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # 敏感识别任务COS识别规则
      class ScanTaskCOSRules < TencentCloud::Common::AbstractModel
        # @param RegexRule: regex规则内容
        # @type RegexRule: :class:`Tencentcloud::Dsgc.v20190723.models.COSDataRule`
        # @param Status: 规则状态；0 不启用, 1 启用
        # @type Status: Integer
        # @param KeywordRule: 关键词规则内容组，最大支持5个关键词。
        # @type KeywordRule: :class:`Tencentcloud::Dsgc.v20190723.models.COSDataRule`
        # @param IgnoreStringRule: 忽略词规则内容组，最大支持5个忽略词。
        # @type IgnoreStringRule: :class:`Tencentcloud::Dsgc.v20190723.models.COSDataRule`
        # @param MaxMatch: 最大匹配距离，默认值为100。上限为500.
        # @type MaxMatch: Integer

        attr_accessor :RegexRule, :Status, :KeywordRule, :IgnoreStringRule, :MaxMatch

        def initialize(regexrule=nil, status=nil, keywordrule=nil, ignorestringrule=nil, maxmatch=nil)
          @RegexRule = regexrule
          @Status = status
          @KeywordRule = keywordrule
          @IgnoreStringRule = ignorestringrule
          @MaxMatch = maxmatch
        end

        def deserialize(params)
          unless params['RegexRule'].nil?
            @RegexRule = COSDataRule.new
            @RegexRule.deserialize(params['RegexRule'])
          end
          @Status = params['Status']
          unless params['KeywordRule'].nil?
            @KeywordRule = COSDataRule.new
            @KeywordRule.deserialize(params['KeywordRule'])
          end
          unless params['IgnoreStringRule'].nil?
            @IgnoreStringRule = COSDataRule.new
            @IgnoreStringRule.deserialize(params['IgnoreStringRule'])
          end
          @MaxMatch = params['MaxMatch']
        end
      end

      # 扫描任务选择的合规组信息
      class ScanTaskComplianceInfo < TencentCloud::Common::AbstractModel
        # @param ComplianceGroupId: 合规组ID
        # @type ComplianceGroupId: Integer
        # @param ComplianceGroupName: 合规组名称
        # @type ComplianceGroupName: String

        attr_accessor :ComplianceGroupId, :ComplianceGroupName

        def initialize(compliancegroupid=nil, compliancegroupname=nil)
          @ComplianceGroupId = compliancegroupid
          @ComplianceGroupName = compliancegroupname
        end

        def deserialize(params)
          @ComplianceGroupId = params['ComplianceGroupId']
          @ComplianceGroupName = params['ComplianceGroupName']
        end
      end

      # 敏感识别任务RDB数据规则
      class ScanTaskRDBRules < TencentCloud::Common::AbstractModel
        # @param Status: 规则状态；0 不启用, 1 启用
        # @type Status: Integer
        # @param MatchOperator: 只能取and 、or两个值其中之一，and：字段和内容同时满足，or：字段和内容满足其一
        # @type MatchOperator: String
        # @param MetaRule: 字段名包含规则，最大支持选择9项
        # @type MetaRule: :class:`Tencentcloud::Dsgc.v20190723.models.DataRules`
        # @param ContentRule: 内容包含规则，最大支持选择9项
        # @type ContentRule: :class:`Tencentcloud::Dsgc.v20190723.models.DataRules`

        attr_accessor :Status, :MatchOperator, :MetaRule, :ContentRule

        def initialize(status=nil, matchoperator=nil, metarule=nil, contentrule=nil)
          @Status = status
          @MatchOperator = matchoperator
          @MetaRule = metarule
          @ContentRule = contentrule
        end

        def deserialize(params)
          @Status = params['Status']
          @MatchOperator = params['MatchOperator']
          unless params['MetaRule'].nil?
            @MetaRule = DataRules.new
            @MetaRule.deserialize(params['MetaRule'])
          end
          unless params['ContentRule'].nil?
            @ContentRule = DataRules.new
            @ContentRule.deserialize(params['ContentRule'])
          end
        end
      end

      # 扫描任务结果信息
      class ScanTaskResult < TencentCloud::Common::AbstractModel
        # @param Id: 任务最新一次运行结果ID
        # @type Id: Integer
        # @param EndTime: 任务扫描结束的时间，格式如：2021-12-12 12:12:12
        # @type EndTime: String
        # @param Status: 任务状态，-1待触发 0待扫描 1扫描中 2扫描终止 3扫描成功 4扫描失败
        # @type Status: Integer
        # @param Result: 扫描任务结果展示，如果扫描失败，则显示失败原因
        # @type Result: String
        # @param ResultDescription: 结果描述
        # @type ResultDescription: String
        # @param Suggestion: 结果建议
        # @type Suggestion: String
        # @param Progress: 扫描进度
        # @type Progress: Float

        attr_accessor :Id, :EndTime, :Status, :Result, :ResultDescription, :Suggestion, :Progress

        def initialize(id=nil, endtime=nil, status=nil, result=nil, resultdescription=nil, suggestion=nil, progress=nil)
          @Id = id
          @EndTime = endtime
          @Status = status
          @Result = result
          @ResultDescription = resultdescription
          @Suggestion = suggestion
          @Progress = progress
        end

        def deserialize(params)
          @Id = params['Id']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @Result = params['Result']
          @ResultDescription = params['ResultDescription']
          @Suggestion = params['Suggestion']
          @Progress = params['Progress']
        end
      end

      # 建议使用的安全产品
      class SecurityProduct < TencentCloud::Common::AbstractModel
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param ReferUrl: 产品链接
        # @type ReferUrl: String

        attr_accessor :ProductName, :ReferUrl

        def initialize(productname=nil, referurl=nil)
          @ProductName = productname
          @ReferUrl = referurl
        end

        def deserialize(params)
          @ProductName = params['ProductName']
          @ReferUrl = params['ReferUrl']
        end
      end

      # 敏感等级分布
      class SensitiveLevel < TencentCloud::Common::AbstractModel
        # @param LevelId: 分级标识ID
        # @type LevelId: Integer
        # @param LevelCnt: 分级标识统计
        # @type LevelCnt: Integer
        # @param LevelRiskName: 分级标识名称
        # @type LevelRiskName: String
        # @param LevelRiskScore: 分级标识分数
        # @type LevelRiskScore: Integer

        attr_accessor :LevelId, :LevelCnt, :LevelRiskName, :LevelRiskScore

        def initialize(levelid=nil, levelcnt=nil, levelriskname=nil, levelriskscore=nil)
          @LevelId = levelid
          @LevelCnt = levelcnt
          @LevelRiskName = levelriskname
          @LevelRiskScore = levelriskscore
        end

        def deserialize(params)
          @LevelId = params['LevelId']
          @LevelCnt = params['LevelCnt']
          @LevelRiskName = params['LevelRiskName']
          @LevelRiskScore = params['LevelRiskScore']
        end
      end

      # StartDSPADiscoveryTask请求参数结构体
      class StartDSPADiscoveryTaskRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer

        attr_accessor :DspaId, :TaskId

        def initialize(dspaid=nil, taskid=nil)
          @DspaId = dspaid
          @TaskId = taskid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TaskId = params['TaskId']
        end
      end

      # StartDSPADiscoveryTask返回参数结构体
      class StartDSPADiscoveryTaskResponse < TencentCloud::Common::AbstractModel
        # @param ResultId: 任务扫描结果ID
        # @type ResultId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultId, :RequestId

        def initialize(resultid=nil, requestid=nil)
          @ResultId = resultid
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultId = params['ResultId']
          @RequestId = params['RequestId']
        end
      end

      # StopDSPADiscoveryTask请求参数结构体
      class StopDSPADiscoveryTaskRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer

        attr_accessor :DspaId, :TaskId

        def initialize(dspaid=nil, taskid=nil)
          @DspaId = dspaid
          @TaskId = taskid
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @TaskId = params['TaskId']
        end
      end

      # StopDSPADiscoveryTask返回参数结构体
      class StopDSPADiscoveryTaskResponse < TencentCloud::Common::AbstractModel
        # @param ResultId: 任务扫描结果ID
        # @type ResultId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultId, :RequestId

        def initialize(resultid=nil, requestid=nil)
          @ResultId = resultid
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultId = params['ResultId']
          @RequestId = params['RequestId']
        end
      end

      # 生成的建议的风险等级矩阵
      class SuggestRiskLevelMatrix < TencentCloud::Common::AbstractModel
        # @param RiskLevelMatrix: 矩阵
        # @type RiskLevelMatrix: Array

        attr_accessor :RiskLevelMatrix

        def initialize(risklevelmatrix=nil)
          @RiskLevelMatrix = risklevelmatrix
        end

        def deserialize(params)
          unless params['RiskLevelMatrix'].nil?
            @RiskLevelMatrix = []
            params['RiskLevelMatrix'].each do |i|
              suggestrisklevelmatrixitem_tmp = SuggestRiskLevelMatrixItem.new
              suggestrisklevelmatrixitem_tmp.deserialize(i)
              @RiskLevelMatrix << suggestrisklevelmatrixitem_tmp
            end
          end
        end
      end

      # 建议生成的二位矩阵的第二层
      class SuggestRiskLevelMatrixItem < TencentCloud::Common::AbstractModel
        # @param SensitiveLevel: 分类分级等级
        # @type SensitiveLevel: :class:`Tencentcloud::Dsgc.v20190723.models.RiskMatrixLevel`
        # @param VulnerabilityLevel: 脆弱项等级
        # @type VulnerabilityLevel: :class:`Tencentcloud::Dsgc.v20190723.models.RiskMatrixLevel`
        # @param RiskName: 风险名
        # @type RiskName: String
        # @param RiskScore: 分数
        # @type RiskScore: Float

        attr_accessor :SensitiveLevel, :VulnerabilityLevel, :RiskName, :RiskScore

        def initialize(sensitivelevel=nil, vulnerabilitylevel=nil, riskname=nil, riskscore=nil)
          @SensitiveLevel = sensitivelevel
          @VulnerabilityLevel = vulnerabilitylevel
          @RiskName = riskname
          @RiskScore = riskscore
        end

        def deserialize(params)
          unless params['SensitiveLevel'].nil?
            @SensitiveLevel = RiskMatrixLevel.new
            @SensitiveLevel.deserialize(params['SensitiveLevel'])
          end
          unless params['VulnerabilityLevel'].nil?
            @VulnerabilityLevel = RiskMatrixLevel.new
            @VulnerabilityLevel.deserialize(params['VulnerabilityLevel'])
          end
          @RiskName = params['RiskName']
          @RiskScore = params['RiskScore']
        end
      end

      # 评估模板的详情数据
      class TemplateInfo < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板id
        # @type TemplateId: Integer
        # @param TemplateName: 模板名称
        # @type TemplateName: String

        attr_accessor :TemplateId, :TemplateName

        def initialize(templateid=nil, templatename=nil)
          @TemplateId = templateid
          @TemplateName = templatename
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
        end
      end

      # 数据资产报告-涉敏top的资产
      class TopAsset < TencentCloud::Common::AbstractModel
        # @param LevelName: 分级名称
        # @type LevelName: String
        # @param TopStat: top数据信息
        # @type TopStat: Array

        attr_accessor :LevelName, :TopStat

        def initialize(levelname=nil, topstat=nil)
          @LevelName = levelname
          @TopStat = topstat
        end

        def deserialize(params)
          @LevelName = params['LevelName']
          unless params['TopStat'].nil?
            @TopStat = []
            params['TopStat'].each do |i|
              topassetstat_tmp = TopAssetStat.new
              topassetstat_tmp.deserialize(i)
              @TopStat << topassetstat_tmp
            end
          end
        end
      end

      # 设敏top资产的信息
      class TopAssetStat < TencentCloud::Common::AbstractModel
        # @param DataSourceId: 数据源id
        # @type DataSourceId: String
        # @param SubData: db_name
        # @type SubData: String
        # @param SensitiveCnt: 敏感个数
        # @type SensitiveCnt: Integer

        attr_accessor :DataSourceId, :SubData, :SensitiveCnt

        def initialize(datasourceid=nil, subdata=nil, sensitivecnt=nil)
          @DataSourceId = datasourceid
          @SubData = subdata
          @SensitiveCnt = sensitivecnt
        end

        def deserialize(params)
          @DataSourceId = params['DataSourceId']
          @SubData = params['SubData']
          @SensitiveCnt = params['SensitiveCnt']
        end
      end

      # UpdateDSPASelfBuildResource请求参数结构体
      class UpdateDSPASelfBuildResourceRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param ResourceId: 云资源名称，如果是通过CVM访问则填写CVM的资源ID，如果是通过LB访问则填写LB的资源ID。
        # @type ResourceId: String
        # @param ResourceVPort: 资源绑定的端口，为0则表示不更新。
        # @type ResourceVPort: Integer
        # @param UserName: 账户名，为空则表示不更新。
        # UserName和Password必须同时填写或同时为空。
        # @type UserName: String
        # @param Password: 账户密码，为空则表示不更新。
        # UserName和Password必须同时填写或同时为空。
        # @type Password: String
        # @param AuthRange: 授权范围：all 授权全部  manual：手动指定
        # @type AuthRange: String
        # @param ResourceName: 自建数据资产的名称，支持修改
        # @type ResourceName: String

        attr_accessor :DspaId, :ResourceId, :ResourceVPort, :UserName, :Password, :AuthRange, :ResourceName

        def initialize(dspaid=nil, resourceid=nil, resourcevport=nil, username=nil, password=nil, authrange=nil, resourcename=nil)
          @DspaId = dspaid
          @ResourceId = resourceid
          @ResourceVPort = resourcevport
          @UserName = username
          @Password = password
          @AuthRange = authrange
          @ResourceName = resourcename
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @ResourceId = params['ResourceId']
          @ResourceVPort = params['ResourceVPort']
          @UserName = params['UserName']
          @Password = params['Password']
          @AuthRange = params['AuthRange']
          @ResourceName = params['ResourceName']
        end
      end

      # UpdateDSPASelfBuildResource返回参数结构体
      class UpdateDSPASelfBuildResourceResponse < TencentCloud::Common::AbstractModel
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

      # VerifyDSPACOSRule请求参数结构体
      class VerifyDSPACOSRuleRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param COSRules: 待验证COS规则
        # @type COSRules: :class:`Tencentcloud::Dsgc.v20190723.models.ScanTaskCOSRules`
        # @param Data: 待验证数据
        # @type Data: String

        attr_accessor :DspaId, :COSRules, :Data

        def initialize(dspaid=nil, cosrules=nil, data=nil)
          @DspaId = dspaid
          @COSRules = cosrules
          @Data = data
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          unless params['COSRules'].nil?
            @COSRules = ScanTaskCOSRules.new
            @COSRules.deserialize(params['COSRules'])
          end
          @Data = params['Data']
        end
      end

      # VerifyDSPACOSRule返回参数结构体
      class VerifyDSPACOSRuleResponse < TencentCloud::Common::AbstractModel
        # @param VerifyResult: 验证结果
        # Success 验证成功
        # Failed 验证失败
        # @type VerifyResult: String
        # @param DetailInfo: 验证结果详情
        # @type DetailInfo: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VerifyResult, :DetailInfo, :RequestId

        def initialize(verifyresult=nil, detailinfo=nil, requestid=nil)
          @VerifyResult = verifyresult
          @DetailInfo = detailinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @VerifyResult = params['VerifyResult']
          @DetailInfo = params['DetailInfo']
          @RequestId = params['RequestId']
        end
      end

      # VerifyDSPADiscoveryRule请求参数结构体
      class VerifyDSPADiscoveryRuleRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID
        # @type DspaId: String
        # @param MatchOperator: 只能取and 、or两个值其中之一，and：字段和内容同时满足，or：字段和内容满足其一
        # @type MatchOperator: String
        # @param MetaRule: 字段名包含规则，最大支持选择9项
        # @type MetaRule: :class:`Tencentcloud::Dsgc.v20190723.models.DataRules`
        # @param ContentRule: 内容包含规则，最大支持选择9项
        # @type ContentRule: :class:`Tencentcloud::Dsgc.v20190723.models.DataRules`
        # @param VerifyMeta: 验证规则字段名，最大长度为1024个字符
        # @type VerifyMeta: String
        # @param VerifyContent: 验证规则数据内容，最大长度为1024个字符
        # @type VerifyContent: String

        attr_accessor :DspaId, :MatchOperator, :MetaRule, :ContentRule, :VerifyMeta, :VerifyContent

        def initialize(dspaid=nil, matchoperator=nil, metarule=nil, contentrule=nil, verifymeta=nil, verifycontent=nil)
          @DspaId = dspaid
          @MatchOperator = matchoperator
          @MetaRule = metarule
          @ContentRule = contentrule
          @VerifyMeta = verifymeta
          @VerifyContent = verifycontent
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @MatchOperator = params['MatchOperator']
          unless params['MetaRule'].nil?
            @MetaRule = DataRules.new
            @MetaRule.deserialize(params['MetaRule'])
          end
          unless params['ContentRule'].nil?
            @ContentRule = DataRules.new
            @ContentRule.deserialize(params['ContentRule'])
          end
          @VerifyMeta = params['VerifyMeta']
          @VerifyContent = params['VerifyContent']
        end
      end

      # VerifyDSPADiscoveryRule返回参数结构体
      class VerifyDSPADiscoveryRuleResponse < TencentCloud::Common::AbstractModel
        # @param VerifyResult: 验证结果
        # Success 验证成功
        # Failed 验证失败
        # @type VerifyResult: String
        # @param DetailInfo: 验证结果详情
        # @type DetailInfo: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VerifyResult, :DetailInfo, :RequestId

        def initialize(verifyresult=nil, detailinfo=nil, requestid=nil)
          @VerifyResult = verifyresult
          @DetailInfo = detailinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @VerifyResult = params['VerifyResult']
          @DetailInfo = params['DetailInfo']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

