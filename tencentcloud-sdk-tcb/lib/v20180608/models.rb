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
  module Tcb
    module V20180608
      # 合法域名
      class AuthDomain < TencentCloud::Common::AbstractModel
        # @param Id: 域名ID
        # @type Id: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Type: 域名类型。包含以下取值：
        # <li>SYSTEM</li>
        # <li>USER</li>
        # @type Type: String
        # @param Status: 状态。包含以下取值：
        # <li>ENABLE</li>
        # <li>DISABLE</li>
        # @type Status: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :Id, :Domain, :Type, :Status, :CreateTime, :UpdateTime

        def initialize(id=nil, domain=nil, type=nil, status=nil, createtime=nil, updatetime=nil)
          @Id = id
          @Domain = domain
          @Type = type
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Id = params['Id']
          @Domain = params['Domain']
          @Type = params['Type']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 云开发新套餐详情
      class BaasPackageInfo < TencentCloud::Common::AbstractModel
        # @param PackageName: DAU产品套餐ID
        # @type PackageName: String
        # @param PackageTitle: DAU套餐中文名称
        # @type PackageTitle: String
        # @param GroupName: 套餐分组
        # @type GroupName: String
        # @param GroupTitle: 套餐分组中文名
        # @type GroupTitle: String
        # @param BillTags: json格式化计费标签，例如：
        # {"pid":2, "cids":{"create": 2, "renew": 2, "modify": 2}, "productCode":"p_tcb_mp", "subProductCode":"sp_tcb_mp_cloudbase_dau"}
        # @type BillTags: String
        # @param ResourceLimit: json格式化用户资源限制，例如：
        # {"Qps":1000,"InvokeNum":{"TimeUnit":"m", "Unit":"万次", "MaxSize": 100},"Capacity":{"TimeUnit":"m", "Unit":"GB", "MaxSize": 100}, "Cdn":{"Flux":{"TimeUnit":"m", "Unit":"GB", "MaxSize": 100}, "BackFlux":{"TimeUnit":"m", "Unit":"GB", "MaxSize": 100}},"Scf":{"Concurrency":1000,"OutFlux":{"TimeUnit":"m", "Unit":"GB", "MaxSize": 100},"MemoryUse":{"TimeUnit":"m", "Unit":"WGBS", "MaxSize": 100000}}}
        # @type ResourceLimit: String
        # @param AdvanceLimit: json格式化高级限制，例如：
        # {"CMSEnable":false,"ProvisionedConcurrencyMem":512000, "PictureProcessing":false, "SecurityAudit":false, "RealTimePush":false, "TemplateMessageBatchPush":false, "Payment":false}
        # @type AdvanceLimit: String
        # @param PackageDescription: 套餐描述
        # @type PackageDescription: String
        # @param IsExternal: 是否对外展示
        # @type IsExternal: Boolean

        attr_accessor :PackageName, :PackageTitle, :GroupName, :GroupTitle, :BillTags, :ResourceLimit, :AdvanceLimit, :PackageDescription, :IsExternal

        def initialize(packagename=nil, packagetitle=nil, groupname=nil, grouptitle=nil, billtags=nil, resourcelimit=nil, advancelimit=nil, packagedescription=nil, isexternal=nil)
          @PackageName = packagename
          @PackageTitle = packagetitle
          @GroupName = groupname
          @GroupTitle = grouptitle
          @BillTags = billtags
          @ResourceLimit = resourcelimit
          @AdvanceLimit = advancelimit
          @PackageDescription = packagedescription
          @IsExternal = isexternal
        end

        def deserialize(params)
          @PackageName = params['PackageName']
          @PackageTitle = params['PackageTitle']
          @GroupName = params['GroupName']
          @GroupTitle = params['GroupTitle']
          @BillTags = params['BillTags']
          @ResourceLimit = params['ResourceLimit']
          @AdvanceLimit = params['AdvanceLimit']
          @PackageDescription = params['PackageDescription']
          @IsExternal = params['IsExternal']
        end
      end

      # BindCloudBaseAccessDomain请求参数结构体
      class BindCloudBaseAccessDomainRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务Id，目前是指环境Id
        # @type ServiceId: String
        # @param Domain: 自定义域名
        # @type Domain: String
        # @param CertId: 腾讯云证书Id
        # @type CertId: String
        # @param BindFlag: 默认1，1 绑定默认Cdn，2 绑定TcbIngress（不经过cdn），4 绑定自定义cdn
        # @type BindFlag: Integer
        # @param CustomCname: 自定义cdn cname域名
        # @type CustomCname: String

        attr_accessor :ServiceId, :Domain, :CertId, :BindFlag, :CustomCname

        def initialize(serviceid=nil, domain=nil, certid=nil, bindflag=nil, customcname=nil)
          @ServiceId = serviceid
          @Domain = domain
          @CertId = certid
          @BindFlag = bindflag
          @CustomCname = customcname
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Domain = params['Domain']
          @CertId = params['CertId']
          @BindFlag = params['BindFlag']
          @CustomCname = params['CustomCname']
        end
      end

      # BindCloudBaseAccessDomain返回参数结构体
      class BindCloudBaseAccessDomainResponse < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务Id，目前是指环境Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceId, :RequestId

        def initialize(serviceid=nil, requestid=nil)
          @ServiceId = serviceid
          @RequestId = requestid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @RequestId = params['RequestId']
        end
      end

      # BindCloudBaseGWDomain请求参数结构体
      class BindCloudBaseGWDomainRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
        # @type ServiceId: String
        # @param Domain: 服务域名
        # @type Domain: String
        # @param CertId: 证书ID
        # @type CertId: String
        # @param EnableRegion: 是否启用多地域
        # @type EnableRegion: Boolean

        attr_accessor :ServiceId, :Domain, :CertId, :EnableRegion

        def initialize(serviceid=nil, domain=nil, certid=nil, enableregion=nil)
          @ServiceId = serviceid
          @Domain = domain
          @CertId = certid
          @EnableRegion = enableregion
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Domain = params['Domain']
          @CertId = params['CertId']
          @EnableRegion = params['EnableRegion']
        end
      end

      # BindCloudBaseGWDomain返回参数结构体
      class BindCloudBaseGWDomainResponse < TencentCloud::Common::AbstractModel
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

      # CheckTcbService请求参数结构体
      class CheckTcbServiceRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # CheckTcbService返回参数结构体
      class CheckTcbServiceResponse < TencentCloud::Common::AbstractModel
        # @param Initialized: true表示已开通
        # @type Initialized: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Initialized, :RequestId

        def initialize(initialized=nil, requestid=nil)
          @Initialized = initialized
          @RequestId = requestid
        end

        def deserialize(params)
          @Initialized = params['Initialized']
          @RequestId = params['RequestId']
        end
      end

      # http访问服务客户端限频
      class CloudBaseClientQPSPolicy < TencentCloud::Common::AbstractModel
        # @param LimitBy: UserID 或 ClientIP 或 None，如果为 None 代表不限制
        # @type LimitBy: String
        # @param LimitValue: 限制值
        # @type LimitValue: Integer

        attr_accessor :LimitBy, :LimitValue

        def initialize(limitby=nil, limitvalue=nil)
          @LimitBy = limitby
          @LimitValue = limitvalue
        end

        def deserialize(params)
          @LimitBy = params['LimitBy']
          @LimitValue = params['LimitValue']
        end
      end

      # tcb 网关API
      class CloudBaseGWAPI < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
        # @type ServiceId: String
        # @param APIId: API ID
        # @type APIId: String
        # @param Path: API Path
        # @type Path: String
        # @param Type: API 类型
        # @type Type: Integer
        # @param Name: API 名
        # @type Name: String
        # @param CreateTime: API创建时间
        # @type CreateTime: Integer
        # @param Custom: 自定义值通用字段：
        # Type为1时，该值为空。
        # Type为2时，该值为容器的代理IP:PORT数组。
        # @type Custom: String
        # @param EnableAuth: 表示是否开启认证
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableAuth: Boolean
        # @param EnvId: 云开发环境ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvId: String
        # @param AccessType: 访问类型（该参数暂不对外暴露）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessType: Integer
        # @param UnionStatus: 统一发布状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnionStatus: Integer
        # @param Domain: 域名（*表示所有域名）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param ConflictFlag: 是否有路径冲突
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConflictFlag: Boolean
        # @param DomainStatus: 域名状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainStatus: Integer
        # @param IsShortPath: 是否开启路径透传，默认true表示短路径，即不开启(已弃用)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsShortPath: Boolean
        # @param PathTransmission: 路径透传，默认0关闭，1开启，2关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathTransmission: Integer
        # @param EnableCheckAcrossDomain: 跨域校验，默认0开启，1开启，2关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableCheckAcrossDomain: Integer
        # @param StaticFileDirectory: 静态托管文件目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StaticFileDirectory: String
        # @param QPSPolicy: QPS策略
        # @type QPSPolicy: :class:`Tencentcloud::Tcb.v20180608.models.CloudBaseGWAPIQPSPolicy`

        attr_accessor :ServiceId, :APIId, :Path, :Type, :Name, :CreateTime, :Custom, :EnableAuth, :EnvId, :AccessType, :UnionStatus, :Domain, :ConflictFlag, :DomainStatus, :IsShortPath, :PathTransmission, :EnableCheckAcrossDomain, :StaticFileDirectory, :QPSPolicy

        def initialize(serviceid=nil, apiid=nil, path=nil, type=nil, name=nil, createtime=nil, custom=nil, enableauth=nil, envid=nil, accesstype=nil, unionstatus=nil, domain=nil, conflictflag=nil, domainstatus=nil, isshortpath=nil, pathtransmission=nil, enablecheckacrossdomain=nil, staticfiledirectory=nil, qpspolicy=nil)
          @ServiceId = serviceid
          @APIId = apiid
          @Path = path
          @Type = type
          @Name = name
          @CreateTime = createtime
          @Custom = custom
          @EnableAuth = enableauth
          @EnvId = envid
          @AccessType = accesstype
          @UnionStatus = unionstatus
          @Domain = domain
          @ConflictFlag = conflictflag
          @DomainStatus = domainstatus
          @IsShortPath = isshortpath
          @PathTransmission = pathtransmission
          @EnableCheckAcrossDomain = enablecheckacrossdomain
          @StaticFileDirectory = staticfiledirectory
          @QPSPolicy = qpspolicy
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @APIId = params['APIId']
          @Path = params['Path']
          @Type = params['Type']
          @Name = params['Name']
          @CreateTime = params['CreateTime']
          @Custom = params['Custom']
          @EnableAuth = params['EnableAuth']
          @EnvId = params['EnvId']
          @AccessType = params['AccessType']
          @UnionStatus = params['UnionStatus']
          @Domain = params['Domain']
          @ConflictFlag = params['ConflictFlag']
          @DomainStatus = params['DomainStatus']
          @IsShortPath = params['IsShortPath']
          @PathTransmission = params['PathTransmission']
          @EnableCheckAcrossDomain = params['EnableCheckAcrossDomain']
          @StaticFileDirectory = params['StaticFileDirectory']
          unless params['QPSPolicy'].nil?
            @QPSPolicy = CloudBaseGWAPIQPSPolicy.new
            @QPSPolicy.deserialize(params['QPSPolicy'])
          end
        end
      end

      # http访问服务路由qps策略
      class CloudBaseGWAPIQPSPolicy < TencentCloud::Common::AbstractModel
        # @param QPSTotal: qps限额总量
        # @type QPSTotal: Integer
        # @param QPSPerClient: 客户端限频，如果不限制，LimitBy=None
        # @type QPSPerClient: :class:`Tencentcloud::Tcb.v20180608.models.CloudBaseClientQPSPolicy`

        attr_accessor :QPSTotal, :QPSPerClient

        def initialize(qpstotal=nil, qpsperclient=nil)
          @QPSTotal = qpstotal
          @QPSPerClient = qpsperclient
        end

        def deserialize(params)
          @QPSTotal = params['QPSTotal']
          unless params['QPSPerClient'].nil?
            @QPSPerClient = CloudBaseClientQPSPolicy.new
            @QPSPerClient.deserialize(params['QPSPerClient'])
          end
        end
      end

      # 网关服务
      class CloudBaseGWService < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
        # @type ServiceId: String
        # @param Domain: 服务域名
        # @type Domain: String
        # @param OpenTime: 开启时间
        # @type OpenTime: Integer
        # @param Status: 绑定状态，1 绑定中；2绑定失败；3绑定成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param IsPreempted: 是否被抢占, 被抢占表示域名被其他环境绑定了，需要解绑或者重新绑定。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPreempted: Boolean
        # @param EnableRegion: 是否开启多地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableRegion: Boolean
        # @param Cname: cdn CName地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cname: String
        # @param UnionStatus: 统一域名状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnionStatus: Integer
        # @param CnameStatus: CName状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CnameStatus: Integer
        # @param CertId: 证书Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertId: String
        # @param ForceHttps: 是否强制https
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForceHttps: Boolean
        # @param IcpForbidStatus: icp黑名单封禁状态，0-未封禁，1-封禁
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IcpForbidStatus: Integer
        # @param CustomRoutingRules: 自定义路由规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomRoutingRules: String
        # @param BindFlag: 绑定类型，1绑定cdn，2源站，4自定义
        # @type BindFlag: Integer
        # @param OriginCname: TcbIngress源站cname
        # @type OriginCname: String
        # @param CustomCname: 自定义cname
        # @type CustomCname: String

        attr_accessor :ServiceId, :Domain, :OpenTime, :Status, :IsPreempted, :EnableRegion, :Cname, :UnionStatus, :CnameStatus, :CertId, :ForceHttps, :IcpForbidStatus, :CustomRoutingRules, :BindFlag, :OriginCname, :CustomCname

        def initialize(serviceid=nil, domain=nil, opentime=nil, status=nil, ispreempted=nil, enableregion=nil, cname=nil, unionstatus=nil, cnamestatus=nil, certid=nil, forcehttps=nil, icpforbidstatus=nil, customroutingrules=nil, bindflag=nil, origincname=nil, customcname=nil)
          @ServiceId = serviceid
          @Domain = domain
          @OpenTime = opentime
          @Status = status
          @IsPreempted = ispreempted
          @EnableRegion = enableregion
          @Cname = cname
          @UnionStatus = unionstatus
          @CnameStatus = cnamestatus
          @CertId = certid
          @ForceHttps = forcehttps
          @IcpForbidStatus = icpforbidstatus
          @CustomRoutingRules = customroutingrules
          @BindFlag = bindflag
          @OriginCname = origincname
          @CustomCname = customcname
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Domain = params['Domain']
          @OpenTime = params['OpenTime']
          @Status = params['Status']
          @IsPreempted = params['IsPreempted']
          @EnableRegion = params['EnableRegion']
          @Cname = params['Cname']
          @UnionStatus = params['UnionStatus']
          @CnameStatus = params['CnameStatus']
          @CertId = params['CertId']
          @ForceHttps = params['ForceHttps']
          @IcpForbidStatus = params['IcpForbidStatus']
          @CustomRoutingRules = params['CustomRoutingRules']
          @BindFlag = params['BindFlag']
          @OriginCname = params['OriginCname']
          @CustomCname = params['CustomCname']
        end
      end

      # http service选项
      class CloudBaseOption < TencentCloud::Common::AbstractModel
        # @param Key: 键
        # @type Key: String
        # @param Value: 值
        # @type Value: String

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

      # cls日志信息
      class ClsInfo < TencentCloud::Common::AbstractModel
        # @param ClsRegion: cls所属地域
        # @type ClsRegion: String
        # @param ClsLogsetId: cls日志集ID
        # @type ClsLogsetId: String
        # @param ClsTopicId: cls日志主题ID
        # @type ClsTopicId: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :ClsRegion, :ClsLogsetId, :ClsTopicId, :CreateTime

        def initialize(clsregion=nil, clslogsetid=nil, clstopicid=nil, createtime=nil)
          @ClsRegion = clsregion
          @ClsLogsetId = clslogsetid
          @ClsTopicId = clstopicid
          @CreateTime = createtime
        end

        def deserialize(params)
          @ClsRegion = params['ClsRegion']
          @ClsLogsetId = params['ClsLogsetId']
          @ClsTopicId = params['ClsTopicId']
          @CreateTime = params['CreateTime']
        end
      end

      # TDSQL-C数据库详情
      class ClusterDetail < TencentCloud::Common::AbstractModel
        # @param IsOpenPubNetAccess: 是否开启公网访问
        # @type IsOpenPubNetAccess: Boolean
        # @param MaxCpu: 最大算力
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxCpu: Float
        # @param MinCpu: 最小算力
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinCpu: Float
        # @param Status: TDSQL-C集群状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param UsedStorage: 存储用量（单位：MB）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedStorage: Integer
        # @param StorageLimit: 最大存储量（单位：GB）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageLimit: Integer
        # @param DbType: 数据库类型
        # @type DbType: String
        # @param DbVersion: 数据库类型
        # @type DbVersion: String
        # @param WanStatus: 公网访问状态；open开启，opening开启中，closed关闭，closing关闭中
        # @type WanStatus: String
        # @param ClusterStatus: 数据库集群状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterStatus: String
        # @param ServerlessStatus: serverless状态
        # @type ServerlessStatus: String

        attr_accessor :IsOpenPubNetAccess, :MaxCpu, :MinCpu, :Status, :UsedStorage, :StorageLimit, :DbType, :DbVersion, :WanStatus, :ClusterStatus, :ServerlessStatus

        def initialize(isopenpubnetaccess=nil, maxcpu=nil, mincpu=nil, status=nil, usedstorage=nil, storagelimit=nil, dbtype=nil, dbversion=nil, wanstatus=nil, clusterstatus=nil, serverlessstatus=nil)
          @IsOpenPubNetAccess = isopenpubnetaccess
          @MaxCpu = maxcpu
          @MinCpu = mincpu
          @Status = status
          @UsedStorage = usedstorage
          @StorageLimit = storagelimit
          @DbType = dbtype
          @DbVersion = dbversion
          @WanStatus = wanstatus
          @ClusterStatus = clusterstatus
          @ServerlessStatus = serverlessstatus
        end

        def deserialize(params)
          @IsOpenPubNetAccess = params['IsOpenPubNetAccess']
          @MaxCpu = params['MaxCpu']
          @MinCpu = params['MinCpu']
          @Status = params['Status']
          @UsedStorage = params['UsedStorage']
          @StorageLimit = params['StorageLimit']
          @DbType = params['DbType']
          @DbVersion = params['DbVersion']
          @WanStatus = params['WanStatus']
          @ClusterStatus = params['ClusterStatus']
          @ServerlessStatus = params['ServerlessStatus']
        end
      end

      # CreateAuthDomain请求参数结构体
      class CreateAuthDomainRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param Domains: 安全域名
        # @type Domains: Array

        attr_accessor :EnvId, :Domains

        def initialize(envid=nil, domains=nil)
          @EnvId = envid
          @Domains = domains
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Domains = params['Domains']
        end
      end

      # CreateAuthDomain返回参数结构体
      class CreateAuthDomainResponse < TencentCloud::Common::AbstractModel
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

      # CreateBillDeal请求参数结构体
      class CreateBillDealRequest < TencentCloud::Common::AbstractModel
        # @param DealType: 当前下单的操作类型，可取[purchase,renew,modify]三种值，分别代表新购，续费，变配。
        # @type DealType: String
        # @param ProductType: 购买的产品类型，可取[tcb-baas,tcb-promotion,tcb-package], 分别代表baas套餐、大促包、资源包
        # @type ProductType: String
        # @param PackageId: 目标下单产品/套餐Id。
        # 对于云开发环境套餐，可通过 DescribeBaasPackageList 接口获取，对应其出参的PackageName
        # @type PackageId: String
        # @param CreateAndPay: 默认只下单不支付，为ture则下单并支付。
        # 如果需要下单并支付，请确保账户下有足够的余额，否则会导致下单失败。
        # @type CreateAndPay: Boolean
        # @param TimeSpan: 购买时长，与TimeUnit字段搭配使用。
        # @type TimeSpan: Integer
        # @param TimeUnit: 购买时长单位,按各产品规则可选d(天),m(月),y(年),p(一次性)。
        # 对于 云开发环境的 新购和续费，目前仅支持 按月购买（即 TimeUnit=m）。
        # @type TimeUnit: String
        # @param ResourceId: 资源唯一标识。
        # 在云开发环境 续费和变配 场景下必传，取值为环境ID。
        # @type ResourceId: String
        # @param Source: 来源可选[qcloud,miniapp]，默认qcloud。
        # miniapp表示微信云开发，主要适用于[小程序云开发](https://developers.weixin.qq.com/miniprogram/dev/wxcloudservice/wxcloud/billing/price.html)。
        # @type Source: String
        # @param Alias: 环境别名，用于新购云开发环境时，给云开发环境起别名。
        # 仅当 新购云开发环境（DealType=purchase 并且 ProductType=tcb-baas ）时有效。

        # ### 格式要求
        # - 可选字符： 小写字母(a~z)、数字、减号(-)
        # - 不能以 减号(-) 开头或结尾
        # - 不能有连个连续的 减号(-)
        # - 长度不超过20位
        # @type Alias: String
        # @param EnvId: 环境id，当购买资源包和大促包时（ProductType取值为tcb-promotion 或 tcb-package）必传，表示资源包在哪个环境下生效。
        # @type EnvId: String
        # @param EnableExcess: 开启超限按量。
        # 开启后，当 套餐内的资源点 和 资源包 都用尽后，会自动按量计费。
        # 详见 [计费说明](https://cloud.tencent.com/document/product/876/127357)。
        # @type EnableExcess: Boolean
        # @param ModifyPackageId: 变配目标套餐id，对于云开发环境变配场景下必传。
        # 对于云开发环境套餐，可通过 DescribeBaasPackageList 接口获取，对应其出参的PackageName
        # @type ModifyPackageId: String
        # @param Extension: jsonstr附加信息
        # @type Extension: String
        # @param AutoVoucher: 是否自动选择代金券支付。
        # @type AutoVoucher: Boolean
        # @param ResourceTypes: 资源类型。
        # 代表新购环境（DealType=purchase 并且 ProductType=tcb-baas ）时需要发货哪些资源。
        # 可取值：flexdb, cos, cdn, scf
        # @type ResourceTypes: Array
        # @param EnvTags: 环境标签。
        #  代表新购环境（DealType=purchase 并且 ProductType=tcb-baas ）时需要打的标签。
        # @type EnvTags: Array

        attr_accessor :DealType, :ProductType, :PackageId, :CreateAndPay, :TimeSpan, :TimeUnit, :ResourceId, :Source, :Alias, :EnvId, :EnableExcess, :ModifyPackageId, :Extension, :AutoVoucher, :ResourceTypes, :EnvTags

        def initialize(dealtype=nil, producttype=nil, packageid=nil, createandpay=nil, timespan=nil, timeunit=nil, resourceid=nil, source=nil, _alias=nil, envid=nil, enableexcess=nil, modifypackageid=nil, extension=nil, autovoucher=nil, resourcetypes=nil, envtags=nil)
          @DealType = dealtype
          @ProductType = producttype
          @PackageId = packageid
          @CreateAndPay = createandpay
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @ResourceId = resourceid
          @Source = source
          @Alias = _alias
          @EnvId = envid
          @EnableExcess = enableexcess
          @ModifyPackageId = modifypackageid
          @Extension = extension
          @AutoVoucher = autovoucher
          @ResourceTypes = resourcetypes
          @EnvTags = envtags
        end

        def deserialize(params)
          @DealType = params['DealType']
          @ProductType = params['ProductType']
          @PackageId = params['PackageId']
          @CreateAndPay = params['CreateAndPay']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @ResourceId = params['ResourceId']
          @Source = params['Source']
          @Alias = params['Alias']
          @EnvId = params['EnvId']
          @EnableExcess = params['EnableExcess']
          @ModifyPackageId = params['ModifyPackageId']
          @Extension = params['Extension']
          @AutoVoucher = params['AutoVoucher']
          @ResourceTypes = params['ResourceTypes']
          unless params['EnvTags'].nil?
            @EnvTags = []
            params['EnvTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @EnvTags << tag_tmp
            end
          end
        end
      end

      # CreateBillDeal返回参数结构体
      class CreateBillDealResponse < TencentCloud::Common::AbstractModel
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

      # CreateCloudBaseGWAPI请求参数结构体
      class CreateCloudBaseGWAPIRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: Service ID
        # @type ServiceId: String
        # @param Path: API Path
        # @type Path: String
        # @param Type: API类型（1表示云函数，2表示容器）
        # @type Type: Integer
        # @param Name: API Name
        # @type Name: String
        # @param APIId: APIId，如果非空，表示修改绑定Path
        # @type APIId: String
        # @param Custom: 自定义值通用字段（当Type为容器时必填）
        # @type Custom: String
        # @param AuthSwitch: 认证开关 1为开启 2为关闭
        # @type AuthSwitch: Integer
        # @param EnableRegion: 是否开启多地域
        # @type EnableRegion: Boolean
        # @param EnableUnion: 是否启用统一域名
        # @type EnableUnion: Boolean
        # @param Domain: 域名
        # @type Domain: String
        # @param AccessTypes: 访问类型："OA", "PUBLIC", "MINIAPP", "VPC" （不传默认PUBLIC+MINIAPP+VPC）
        # @type AccessTypes: Array
        # @param IsShortPath: 是否开启路径透传，默认true表示短路径，即不开启路径透传(已弃用)
        # @type IsShortPath: Boolean
        # @param PathTransmission: 路径透传，默认0关闭，1开启，2关闭
        # @type PathTransmission: Integer
        # @param EnableCheckAcrossDomain: 跨域校验，默认0开启，1开启，2关闭
        # @type EnableCheckAcrossDomain: Integer
        # @param StaticFileDirectory: 静态托管资源目录
        # @type StaticFileDirectory: String

        attr_accessor :ServiceId, :Path, :Type, :Name, :APIId, :Custom, :AuthSwitch, :EnableRegion, :EnableUnion, :Domain, :AccessTypes, :IsShortPath, :PathTransmission, :EnableCheckAcrossDomain, :StaticFileDirectory

        def initialize(serviceid=nil, path=nil, type=nil, name=nil, apiid=nil, custom=nil, authswitch=nil, enableregion=nil, enableunion=nil, domain=nil, accesstypes=nil, isshortpath=nil, pathtransmission=nil, enablecheckacrossdomain=nil, staticfiledirectory=nil)
          @ServiceId = serviceid
          @Path = path
          @Type = type
          @Name = name
          @APIId = apiid
          @Custom = custom
          @AuthSwitch = authswitch
          @EnableRegion = enableregion
          @EnableUnion = enableunion
          @Domain = domain
          @AccessTypes = accesstypes
          @IsShortPath = isshortpath
          @PathTransmission = pathtransmission
          @EnableCheckAcrossDomain = enablecheckacrossdomain
          @StaticFileDirectory = staticfiledirectory
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Path = params['Path']
          @Type = params['Type']
          @Name = params['Name']
          @APIId = params['APIId']
          @Custom = params['Custom']
          @AuthSwitch = params['AuthSwitch']
          @EnableRegion = params['EnableRegion']
          @EnableUnion = params['EnableUnion']
          @Domain = params['Domain']
          @AccessTypes = params['AccessTypes']
          @IsShortPath = params['IsShortPath']
          @PathTransmission = params['PathTransmission']
          @EnableCheckAcrossDomain = params['EnableCheckAcrossDomain']
          @StaticFileDirectory = params['StaticFileDirectory']
        end
      end

      # CreateCloudBaseGWAPI返回参数结构体
      class CreateCloudBaseGWAPIResponse < TencentCloud::Common::AbstractModel
        # @param APIId: API ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type APIId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :APIId, :RequestId

        def initialize(apiid=nil, requestid=nil)
          @APIId = apiid
          @RequestId = requestid
        end

        def deserialize(params)
          @APIId = params['APIId']
          @RequestId = params['RequestId']
        end
      end

      # CreateEnv请求参数结构体
      class CreateEnvRequest < TencentCloud::Common::AbstractModel
        # @param Alias: 环境别名。

        # ### 格式要求
        # - 可选字符： 小写字母(a~z)、数字、减号(-)
        # - 不能以 减号(-) 开头或结尾
        # - 不能有连个连续的 减号(-)
        # - 长度不超过20位
        # 示例值：cloud
        # @type Alias: String
        # @param PackageId: 云开发环境套餐Id。
        # 对于云开发环境套餐，可通过 [DescribeBaasPackageList](https://cloud.tencent.com/document/product/876/78167) 接口获取，对应其出参的PackageName。
        # @type PackageId: String
        # @param Resources: 资源类型。代表新购环境时需要发货哪些资源。
        # 可取值以及含义：
        # - flexdb : 表示文档型数据库
        # - storage : 表示云存储
        # - function : 表示云函数

        # **该字段不可为空**
        # @type Resources: Array
        # @param Period: 购买实例的时长，单位：月。取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24。
        # 默认值为1，即1个月。
        # @type Period: Integer
        # @param AutoVoucher: 是否自动选择代金券支付。
        # @type AutoVoucher: Boolean
        # @param Tags: 环境标签。
        # 可取值通过接口 [tag:DescribeTags](https://cloud.tencent.com/document/product/651/35316) 可获取到。
        # 不传或为空则默认不打任何标签。
        # @type Tags: Array
        # @param RenewFlag: 自动续费标识。取值范围：
        # - NOTIFY_AND_AUTO_RENEW：通知过期且自动续费
        # - NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费（需要手动续费，可通过接口 [RenewEnv](https://cloud.tencent.com/document/product/876/128590) 来续费）

        # 默认取值：NOTIFY_AND_MANUAL_RENEW。
        # 若该参数指定为NOTIFY_AND_AUTO_RENEW（即：自动续费），在账户余额充足的情况下，实例到期后将按月自动续费；但如果账户余额不足，将无法自动续费。请留意腾讯云短信和邮件通知。
        # @type RenewFlag: String

        attr_accessor :Alias, :PackageId, :Resources, :Period, :AutoVoucher, :Tags, :RenewFlag

        def initialize(_alias=nil, packageid=nil, resources=nil, period=nil, autovoucher=nil, tags=nil, renewflag=nil)
          @Alias = _alias
          @PackageId = packageid
          @Resources = resources
          @Period = period
          @AutoVoucher = autovoucher
          @Tags = tags
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @Alias = params['Alias']
          @PackageId = params['PackageId']
          @Resources = params['Resources']
          @Period = params['Period']
          @AutoVoucher = params['AutoVoucher']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @RenewFlag = params['RenewFlag']
        end
      end

      # CreateEnv返回参数结构体
      class CreateEnvResponse < TencentCloud::Common::AbstractModel
        # @param EnvId: 自动生成的环境ID
        # @type EnvId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvId, :RequestId

        def initialize(envid=nil, requestid=nil)
          @EnvId = envid
          @RequestId = requestid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @RequestId = params['RequestId']
        end
      end

      # CreateHostingDomain请求参数结构体
      class CreateHostingDomainRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param Domain: 域名
        # @type Domain: String
        # @param CertId: 证书ID
        # @type CertId: String

        attr_accessor :EnvId, :Domain, :CertId

        def initialize(envid=nil, domain=nil, certid=nil)
          @EnvId = envid
          @Domain = domain
          @CertId = certid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Domain = params['Domain']
          @CertId = params['CertId']
        end
      end

      # CreateHostingDomain返回参数结构体
      class CreateHostingDomainResponse < TencentCloud::Common::AbstractModel
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

      # 本类型用于UpdateTable接口中描述待创建索引信息
      class CreateIndex < TencentCloud::Common::AbstractModel
        # @param IndexName: 索引名称
        # @type IndexName: String
        # @param MgoKeySchema: 索引结构
        # @type MgoKeySchema: :class:`Tencentcloud::Tcb.v20180608.models.MgoKeySchema`

        attr_accessor :IndexName, :MgoKeySchema

        def initialize(indexname=nil, mgokeyschema=nil)
          @IndexName = indexname
          @MgoKeySchema = mgokeyschema
        end

        def deserialize(params)
          @IndexName = params['IndexName']
          unless params['MgoKeySchema'].nil?
            @MgoKeySchema = MgoKeySchema.new
            @MgoKeySchema.deserialize(params['MgoKeySchema'])
          end
        end
      end

      # CreateMySQL请求参数结构体
      class CreateMySQLRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 云开发环境ID
        # @type EnvId: String
        # @param DbInstanceType: Db类型: MYSQL
        # @type DbInstanceType: String
        # @param MysqlVersion: mysql版本
        # @type MysqlVersion: String
        # @param VpcId: vpc Id
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param LowerCaseTableNames: 0 区分表名大小写；1 不区分表名大小写(默认)
        # @type LowerCaseTableNames: String

        attr_accessor :EnvId, :DbInstanceType, :MysqlVersion, :VpcId, :SubnetId, :LowerCaseTableNames

        def initialize(envid=nil, dbinstancetype=nil, mysqlversion=nil, vpcid=nil, subnetid=nil, lowercasetablenames=nil)
          @EnvId = envid
          @DbInstanceType = dbinstancetype
          @MysqlVersion = mysqlversion
          @VpcId = vpcid
          @SubnetId = subnetid
          @LowerCaseTableNames = lowercasetablenames
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @DbInstanceType = params['DbInstanceType']
          @MysqlVersion = params['MysqlVersion']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @LowerCaseTableNames = params['LowerCaseTableNames']
        end
      end

      # CreateMySQL返回参数结构体
      class CreateMySQLResponse < TencentCloud::Common::AbstractModel
        # @param Data: 开通结果
        # @type Data: :class:`Tencentcloud::Tcb.v20180608.models.CreateMySQLResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateMySQLResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 开通Mysql 结果
      class CreateMySQLResult < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # CreateStaticStore请求参数结构体
      class CreateStaticStoreRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param EnableUnion: 是否启用统一域名
        # @type EnableUnion: Boolean

        attr_accessor :EnvId, :EnableUnion

        def initialize(envid=nil, enableunion=nil)
          @EnvId = envid
          @EnableUnion = enableunion
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @EnableUnion = params['EnableUnion']
        end
      end

      # CreateStaticStore返回参数结构体
      class CreateStaticStoreResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建静态资源结果(succ/fail)
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # CreateTable请求参数结构体
      class CreateTableRequest < TencentCloud::Common::AbstractModel
        # @param TableName: 数据表名；长度不超过96个字符，可以为英文字母、数字、下划线(_)和短横线(-)的组合，且不能以下划线开头
        # @type TableName: String
        # @param Tag: FlexDB实例ID，如：tnt-nl7hjzasw
        # @type Tag: String
        # @param PermissionInfo: FlexDB数据库权限信息
        # @type PermissionInfo: :class:`Tencentcloud::Tcb.v20180608.models.PermissionInfo`
        # @param EnvId: 云开发环境ID
        # @type EnvId: String
        # @param MongoConnector: MongoDB连接器配置
        # @type MongoConnector: :class:`Tencentcloud::Tcb.v20180608.models.MongoConnector`

        attr_accessor :TableName, :Tag, :PermissionInfo, :EnvId, :MongoConnector

        def initialize(tablename=nil, tag=nil, permissioninfo=nil, envid=nil, mongoconnector=nil)
          @TableName = tablename
          @Tag = tag
          @PermissionInfo = permissioninfo
          @EnvId = envid
          @MongoConnector = mongoconnector
        end

        def deserialize(params)
          @TableName = params['TableName']
          @Tag = params['Tag']
          unless params['PermissionInfo'].nil?
            @PermissionInfo = PermissionInfo.new
            @PermissionInfo.deserialize(params['PermissionInfo'])
          end
          @EnvId = params['EnvId']
          unless params['MongoConnector'].nil?
            @MongoConnector = MongoConnector.new
            @MongoConnector.deserialize(params['MongoConnector'])
          end
        end
      end

      # CreateTable返回参数结构体
      class CreateTableResponse < TencentCloud::Common::AbstractModel
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

      # CreateUser请求参数结构体
      class CreateUserRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param Name: 用户名，用户名规则：1. 长度1-64字符 2. 只能包含大小写英文字母、数字和符号 . _ - 3. 只能以字母或数字开头 4. 不能重复
        # @type Name: String
        # @param Uid: 用户ID，最多64字符，如不传则系统自动生成
        # @type Uid: String
        # @param Type: 用户类型：internalUser-内部用户、externalUser-外部用户，默认internalUser（内部用户）
        # @type Type: String
        # @param Password: 密码，传入Uid时密码可不传。密码规则：1. 长度8-32字符（推荐12位以上） 2. 不能以特殊字符开头 3. 至少包含以下四项中的三项：小写字母a-z、大写字母A-Z、数字0-9、特殊字符()!@#$%^&*\|?><_-
        # @type Password: String
        # @param UserStatus: 用户状态：ACTIVE（激活）、BLOCKED（冻结），默认激活
        # @type UserStatus: String
        # @param NickName: 用户昵称，长度2-64字符
        # @type NickName: String
        # @param Phone: 手机号，不能重复
        # @type Phone: String
        # @param Email: 邮箱地址，不能重复
        # @type Email: String
        # @param AvatarUrl: 头像链接，可访问的公网URL
        # @type AvatarUrl: String
        # @param Description: 用户描述，最多200字符
        # @type Description: String

        attr_accessor :EnvId, :Name, :Uid, :Type, :Password, :UserStatus, :NickName, :Phone, :Email, :AvatarUrl, :Description

        def initialize(envid=nil, name=nil, uid=nil, type=nil, password=nil, userstatus=nil, nickname=nil, phone=nil, email=nil, avatarurl=nil, description=nil)
          @EnvId = envid
          @Name = name
          @Uid = uid
          @Type = type
          @Password = password
          @UserStatus = userstatus
          @NickName = nickname
          @Phone = phone
          @Email = email
          @AvatarUrl = avatarurl
          @Description = description
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Name = params['Name']
          @Uid = params['Uid']
          @Type = params['Type']
          @Password = params['Password']
          @UserStatus = params['UserStatus']
          @NickName = params['NickName']
          @Phone = params['Phone']
          @Email = params['Email']
          @AvatarUrl = params['AvatarUrl']
          @Description = params['Description']
        end
      end

      # 创建用户返回结果
      class CreateUserResp < TencentCloud::Common::AbstractModel
        # @param Uid: 用户ID
        # @type Uid: String

        attr_accessor :Uid

        def initialize(uid=nil)
          @Uid = uid
        end

        def deserialize(params)
          @Uid = params['Uid']
        end
      end

      # CreateUser返回参数结构体
      class CreateUserResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果返回
        # @type Data: :class:`Tencentcloud::Tcb.v20180608.models.CreateUserResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateUserResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 数据库资源信息
      class DatabasesInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据库唯一标识
        # @type InstanceId: String
        # @param Status: 状态。包含以下取值：
        # <li>INITIALIZING：资源初始化中</li>
        # <li>RUNNING：运行中，可正常使用的状态</li>
        # <li>UNUSABLE：禁用，不可用</li>
        # <li>OVERDUE：资源过期</li>
        # @type Status: String
        # @param Region: 所属地域。
        # 当前支持ap-shanghai
        # @type Region: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :InstanceId, :Status, :Region, :UpdateTime

        def initialize(instanceid=nil, status=nil, region=nil, updatetime=nil)
          @InstanceId = instanceid
          @Status = status
          @Region = region
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Status = params['Status']
          @Region = params['Region']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 数据库连接器实例信息
      class DbInstance < TencentCloud::Common::AbstractModel
        # @param EnvId: 云开发环境ID
        # @type EnvId: String
        # @param InstanceId: MySQL 连接器实例 ID；`"default"` 或为空表示使用 TCB 环境的默认连接器
        # @type InstanceId: String
        # @param Schema: 数据库名；为空时使用连接器配置的默认数据库名
        # @type Schema: String

        attr_accessor :EnvId, :InstanceId, :Schema

        def initialize(envid=nil, instanceid=nil, schema=nil)
          @EnvId = envid
          @InstanceId = instanceid
          @Schema = schema
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @InstanceId = params['InstanceId']
          @Schema = params['Schema']
        end
      end

      # DeleteAuthDomain请求参数结构体
      class DeleteAuthDomainRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 开发者的环境ID
        # @type EnvId: String
        # @param DomainIds: 域名ID列表，支持批量
        # @type DomainIds: Array

        attr_accessor :EnvId, :DomainIds

        def initialize(envid=nil, domainids=nil)
          @EnvId = envid
          @DomainIds = domainids
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @DomainIds = params['DomainIds']
        end
      end

      # DeleteAuthDomain返回参数结构体
      class DeleteAuthDomainResponse < TencentCloud::Common::AbstractModel
        # @param Deleted: 删除的域名个数
        # @type Deleted: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Deleted, :RequestId

        def initialize(deleted=nil, requestid=nil)
          @Deleted = deleted
          @RequestId = requestid
        end

        def deserialize(params)
          @Deleted = params['Deleted']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCloudBaseGWAPI请求参数结构体
      class DeleteCloudBaseGWAPIRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
        # @type ServiceId: String
        # @param Path: API Path
        # @type Path: String
        # @param APIId: API ID
        # @type APIId: String
        # @param Type: API类型
        # @type Type: Integer
        # @param Name: API Name
        # @type Name: String
        # @param Custom: 自定义值字段（Type为2时，传递容器服务名表示需要删除JNSGW）
        # @type Custom: String
        # @param Domain: 域名
        # @type Domain: String

        attr_accessor :ServiceId, :Path, :APIId, :Type, :Name, :Custom, :Domain

        def initialize(serviceid=nil, path=nil, apiid=nil, type=nil, name=nil, custom=nil, domain=nil)
          @ServiceId = serviceid
          @Path = path
          @APIId = apiid
          @Type = type
          @Name = name
          @Custom = custom
          @Domain = domain
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Path = params['Path']
          @APIId = params['APIId']
          @Type = params['Type']
          @Name = params['Name']
          @Custom = params['Custom']
          @Domain = params['Domain']
        end
      end

      # DeleteCloudBaseGWAPI返回参数结构体
      class DeleteCloudBaseGWAPIResponse < TencentCloud::Common::AbstractModel
        # @param Count: 最终删除API个数
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :RequestId

        def initialize(count=nil, requestid=nil)
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCloudBaseGWDomain请求参数结构体
      class DeleteCloudBaseGWDomainRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
        # @type ServiceId: String
        # @param Domain: 服务域名
        # @type Domain: String

        attr_accessor :ServiceId, :Domain

        def initialize(serviceid=nil, domain=nil)
          @ServiceId = serviceid
          @Domain = domain
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Domain = params['Domain']
        end
      end

      # DeleteCloudBaseGWDomain返回参数结构体
      class DeleteCloudBaseGWDomainResponse < TencentCloud::Common::AbstractModel
        # @param Count: 删除个数
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :RequestId

        def initialize(count=nil, requestid=nil)
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # DeleteTable请求参数结构体
      class DeleteTableRequest < TencentCloud::Common::AbstractModel
        # @param TableName: 待删除的表名
        # @type TableName: String
        # @param Tag: FlexDB实例ID
        # @type Tag: String
        # @param EnvId: 云开发环境ID
        # @type EnvId: String
        # @param MongoConnector: MongoDB连接器配置
        # @type MongoConnector: :class:`Tencentcloud::Tcb.v20180608.models.MongoConnector`

        attr_accessor :TableName, :Tag, :EnvId, :MongoConnector

        def initialize(tablename=nil, tag=nil, envid=nil, mongoconnector=nil)
          @TableName = tablename
          @Tag = tag
          @EnvId = envid
          @MongoConnector = mongoconnector
        end

        def deserialize(params)
          @TableName = params['TableName']
          @Tag = params['Tag']
          @EnvId = params['EnvId']
          unless params['MongoConnector'].nil?
            @MongoConnector = MongoConnector.new
            @MongoConnector.deserialize(params['MongoConnector'])
          end
        end
      end

      # DeleteTable返回参数结构体
      class DeleteTableResponse < TencentCloud::Common::AbstractModel
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

      # DeleteUsers请求参数结构体
      class DeleteUsersRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param Uids: tcb用户id列表, 一次最多支持删除100个
        # @type Uids: Array

        attr_accessor :EnvId, :Uids

        def initialize(envid=nil, uids=nil)
          @EnvId = envid
          @Uids = uids
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Uids = params['Uids']
        end
      end

      # 删除tcb用户返回值
      class DeleteUsersResp < TencentCloud::Common::AbstractModel
        # @param SuccessCount: 成功个数
        # @type SuccessCount: Integer
        # @param FailedCount: 失败个数
        # @type FailedCount: Integer

        attr_accessor :SuccessCount, :FailedCount

        def initialize(successcount=nil, failedcount=nil)
          @SuccessCount = successcount
          @FailedCount = failedcount
        end

        def deserialize(params)
          @SuccessCount = params['SuccessCount']
          @FailedCount = params['FailedCount']
        end
      end

      # DeleteUsers返回参数结构体
      class DeleteUsersResponse < TencentCloud::Common::AbstractModel
        # @param Data: 删除用户结果
        # @type Data: :class:`Tencentcloud::Tcb.v20180608.models.DeleteUsersResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteUsersResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuthDomains请求参数结构体
      class DescribeAuthDomainsRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String

        attr_accessor :EnvId

        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribeAuthDomains返回参数结构体
      class DescribeAuthDomainsResponse < TencentCloud::Common::AbstractModel
        # @param Domains: 安全域名列表
        # @type Domains: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Domains, :RequestId

        def initialize(domains=nil, requestid=nil)
          @Domains = domains
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Domains'].nil?
            @Domains = []
            params['Domains'].each do |i|
              authdomain_tmp = AuthDomain.new
              authdomain_tmp.deserialize(i)
              @Domains << authdomain_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaasPackageList请求参数结构体
      class DescribeBaasPackageListRequest < TencentCloud::Common::AbstractModel
        # @param PackageName: tcb产品套餐ID，不填拉取全量package信息。
        # @type PackageName: String
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param Source: 套餐归属方，填写后只返回对应的套餐 包含miniapp与qcloud两种 默认为miniapp
        # @type Source: String
        # @param EnvChannel: 套餐归属环境渠道
        # @type EnvChannel: String
        # @param TargetAction: 拉取套餐用途：
        # 1）new 新购
        # 2）modify变配
        # 3）renew续费
        # @type TargetAction: String
        # @param GroupName: 预留字段，同一商品会对应多个类型套餐，对指标有不同侧重。
        # 计算型calculation
        # 流量型flux
        # 容量型capactiy
        # @type GroupName: String
        # @param PackageTypeList: 类型分组过滤。默认为["default"]
        # @type PackageTypeList: Array
        # @param PaymentChannel: 付费渠道，与回包billTags中的计费参数相关，不填返回默认值。
        # @type PaymentChannel: String

        attr_accessor :PackageName, :EnvId, :Source, :EnvChannel, :TargetAction, :GroupName, :PackageTypeList, :PaymentChannel

        def initialize(packagename=nil, envid=nil, source=nil, envchannel=nil, targetaction=nil, groupname=nil, packagetypelist=nil, paymentchannel=nil)
          @PackageName = packagename
          @EnvId = envid
          @Source = source
          @EnvChannel = envchannel
          @TargetAction = targetaction
          @GroupName = groupname
          @PackageTypeList = packagetypelist
          @PaymentChannel = paymentchannel
        end

        def deserialize(params)
          @PackageName = params['PackageName']
          @EnvId = params['EnvId']
          @Source = params['Source']
          @EnvChannel = params['EnvChannel']
          @TargetAction = params['TargetAction']
          @GroupName = params['GroupName']
          @PackageTypeList = params['PackageTypeList']
          @PaymentChannel = params['PaymentChannel']
        end
      end

      # DescribeBaasPackageList返回参数结构体
      class DescribeBaasPackageListResponse < TencentCloud::Common::AbstractModel
        # @param PackageList: 套餐列表
        # @type PackageList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PackageList, :RequestId

        def initialize(packagelist=nil, requestid=nil)
          @PackageList = packagelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PackageList'].nil?
            @PackageList = []
            params['PackageList'].each do |i|
              baaspackageinfo_tmp = BaasPackageInfo.new
              baaspackageinfo_tmp.deserialize(i)
              @PackageList << baaspackageinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillingInfo请求参数结构体
      class DescribeBillingInfoRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String

        attr_accessor :EnvId

        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribeBillingInfo返回参数结构体
      class DescribeBillingInfoResponse < TencentCloud::Common::AbstractModel
        # @param EnvBillingInfoList: 环境计费信息列表
        # @type EnvBillingInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvBillingInfoList, :RequestId

        def initialize(envbillinginfolist=nil, requestid=nil)
          @EnvBillingInfoList = envbillinginfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EnvBillingInfoList'].nil?
            @EnvBillingInfoList = []
            params['EnvBillingInfoList'].each do |i|
              envbillinginfoitem_tmp = EnvBillingInfoItem.new
              envbillinginfoitem_tmp.deserialize(i)
              @EnvBillingInfoList << envbillinginfoitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudBaseBuildService请求参数结构体
      class DescribeCloudBaseBuildServiceRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param ServiceName: 服务名
        # @type ServiceName: String
        # @param CIBusiness: build类型,枚举值有: cloudbaserun, framework-ci
        # @type CIBusiness: String
        # @param ServiceVersion: 服务版本
        # @type ServiceVersion: String
        # @param Suffix: 文件后缀
        # @type Suffix: String

        attr_accessor :EnvId, :ServiceName, :CIBusiness, :ServiceVersion, :Suffix

        def initialize(envid=nil, servicename=nil, cibusiness=nil, serviceversion=nil, suffix=nil)
          @EnvId = envid
          @ServiceName = servicename
          @CIBusiness = cibusiness
          @ServiceVersion = serviceversion
          @Suffix = suffix
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServiceName = params['ServiceName']
          @CIBusiness = params['CIBusiness']
          @ServiceVersion = params['ServiceVersion']
          @Suffix = params['Suffix']
        end
      end

      # DescribeCloudBaseBuildService返回参数结构体
      class DescribeCloudBaseBuildServiceResponse < TencentCloud::Common::AbstractModel
        # @param UploadUrl: 上传url
        # @type UploadUrl: String
        # @param UploadHeaders: 上传header
        # @type UploadHeaders: Array
        # @param PackageName: 包名
        # @type PackageName: String
        # @param PackageVersion: 包版本
        # @type PackageVersion: String
        # @param DownloadUrl: 下载链接
        # @type DownloadUrl: String
        # @param DownloadHeaders: 下载Httpheader
        # @type DownloadHeaders: Array
        # @param OutDate: 下载链接是否过期
        # @type OutDate: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UploadUrl, :UploadHeaders, :PackageName, :PackageVersion, :DownloadUrl, :DownloadHeaders, :OutDate, :RequestId

        def initialize(uploadurl=nil, uploadheaders=nil, packagename=nil, packageversion=nil, downloadurl=nil, downloadheaders=nil, outdate=nil, requestid=nil)
          @UploadUrl = uploadurl
          @UploadHeaders = uploadheaders
          @PackageName = packagename
          @PackageVersion = packageversion
          @DownloadUrl = downloadurl
          @DownloadHeaders = downloadheaders
          @OutDate = outdate
          @RequestId = requestid
        end

        def deserialize(params)
          @UploadUrl = params['UploadUrl']
          unless params['UploadHeaders'].nil?
            @UploadHeaders = []
            params['UploadHeaders'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @UploadHeaders << kvpair_tmp
            end
          end
          @PackageName = params['PackageName']
          @PackageVersion = params['PackageVersion']
          @DownloadUrl = params['DownloadUrl']
          unless params['DownloadHeaders'].nil?
            @DownloadHeaders = []
            params['DownloadHeaders'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @DownloadHeaders << kvpair_tmp
            end
          end
          @OutDate = params['OutDate']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudBaseGWAPI请求参数结构体
      class DescribeCloudBaseGWAPIRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
        # @type ServiceId: String
        # @param Domain: API域名
        # @type Domain: String
        # @param Path: API Path
        # @type Path: String
        # @param APIId: API ID
        # @type APIId: String
        # @param Type: API类型，1为云函数，2为容器
        # @type Type: Integer
        # @param Name: API名，Type为1时为云函数名，Type为2时为容器服务名
        # @type Name: String
        # @param Offset: 查询的分页参数，用于设置查询的偏移位置，0表示从头开始
        # @type Offset: Integer
        # @param Limit: 查询的分页参数，用于表示每次查询的最大返回数据量
        # @type Limit: Integer
        # @param EnableRegion: 是否启用多地域
        # @type EnableRegion: Boolean
        # @param EnableUnion: 是否使用统一域名
        # @type EnableUnion: Boolean

        attr_accessor :ServiceId, :Domain, :Path, :APIId, :Type, :Name, :Offset, :Limit, :EnableRegion, :EnableUnion

        def initialize(serviceid=nil, domain=nil, path=nil, apiid=nil, type=nil, name=nil, offset=nil, limit=nil, enableregion=nil, enableunion=nil)
          @ServiceId = serviceid
          @Domain = domain
          @Path = path
          @APIId = apiid
          @Type = type
          @Name = name
          @Offset = offset
          @Limit = limit
          @EnableRegion = enableregion
          @EnableUnion = enableunion
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Domain = params['Domain']
          @Path = params['Path']
          @APIId = params['APIId']
          @Type = params['Type']
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @EnableRegion = params['EnableRegion']
          @EnableUnion = params['EnableUnion']
        end
      end

      # DescribeCloudBaseGWAPI返回参数结构体
      class DescribeCloudBaseGWAPIResponse < TencentCloud::Common::AbstractModel
        # @param APISet: API列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type APISet: Array
        # @param EnableService: 是否开启http调用
        # @type EnableService: Boolean
        # @param Total: 查询结果的数据总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Offset: 查询的分页参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Offset: Integer
        # @param Limit: 查询的分页参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Limit: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :APISet, :EnableService, :Total, :Offset, :Limit, :RequestId

        def initialize(apiset=nil, enableservice=nil, total=nil, offset=nil, limit=nil, requestid=nil)
          @APISet = apiset
          @EnableService = enableservice
          @Total = total
          @Offset = offset
          @Limit = limit
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['APISet'].nil?
            @APISet = []
            params['APISet'].each do |i|
              cloudbasegwapi_tmp = CloudBaseGWAPI.new
              cloudbasegwapi_tmp.deserialize(i)
              @APISet << cloudbasegwapi_tmp
            end
          end
          @EnableService = params['EnableService']
          @Total = params['Total']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudBaseGWService请求参数结构体
      class DescribeCloudBaseGWServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
        # @type ServiceId: String
        # @param Domain: 服务域名
        # @type Domain: String
        # @param EnableRegion: 是否启用多地域
        # @type EnableRegion: Boolean
        # @param EnableUnion: 是否启用统一域名
        # @type EnableUnion: Boolean

        attr_accessor :ServiceId, :Domain, :EnableRegion, :EnableUnion

        def initialize(serviceid=nil, domain=nil, enableregion=nil, enableunion=nil)
          @ServiceId = serviceid
          @Domain = domain
          @EnableRegion = enableregion
          @EnableUnion = enableunion
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Domain = params['Domain']
          @EnableRegion = params['EnableRegion']
          @EnableUnion = params['EnableUnion']
        end
      end

      # DescribeCloudBaseGWService返回参数结构体
      class DescribeCloudBaseGWServiceResponse < TencentCloud::Common::AbstractModel
        # @param ServiceSet: 服务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceSet: Array
        # @param EnableService: 是否开启服务
        # @type EnableService: Boolean
        # @param DefaultDomain: 默认域名信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultDomain: String
        # @param EnableUnion: 是否开启CDN迁移
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableUnion: Boolean
        # @param EnableCheckAcrossDomain: 是否开启跨域校验，默认开启 true
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableCheckAcrossDomain: Boolean
        # @param CustomRoutingRules: 自定义路由规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomRoutingRules: String
        # @param AccessFlag: 默认域名绑定类型，1绑定TCB-CDN，2绑定tcbingres（不经过cdn）
        # @type AccessFlag: Integer
        # @param OriginDomain: 云接入源站域名
        # @type OriginDomain: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceSet, :EnableService, :DefaultDomain, :EnableUnion, :EnableCheckAcrossDomain, :CustomRoutingRules, :AccessFlag, :OriginDomain, :RequestId

        def initialize(serviceset=nil, enableservice=nil, defaultdomain=nil, enableunion=nil, enablecheckacrossdomain=nil, customroutingrules=nil, accessflag=nil, origindomain=nil, requestid=nil)
          @ServiceSet = serviceset
          @EnableService = enableservice
          @DefaultDomain = defaultdomain
          @EnableUnion = enableunion
          @EnableCheckAcrossDomain = enablecheckacrossdomain
          @CustomRoutingRules = customroutingrules
          @AccessFlag = accessflag
          @OriginDomain = origindomain
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ServiceSet'].nil?
            @ServiceSet = []
            params['ServiceSet'].each do |i|
              cloudbasegwservice_tmp = CloudBaseGWService.new
              cloudbasegwservice_tmp.deserialize(i)
              @ServiceSet << cloudbasegwservice_tmp
            end
          end
          @EnableService = params['EnableService']
          @DefaultDomain = params['DefaultDomain']
          @EnableUnion = params['EnableUnion']
          @EnableCheckAcrossDomain = params['EnableCheckAcrossDomain']
          @CustomRoutingRules = params['CustomRoutingRules']
          @AccessFlag = params['AccessFlag']
          @OriginDomain = params['OriginDomain']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudBaseRunServerVersion请求参数结构体
      class DescribeCloudBaseRunServerVersionRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param ServerName: 服务名称
        # @type ServerName: String
        # @param VersionName: 版本名称
        # @type VersionName: String

        attr_accessor :EnvId, :ServerName, :VersionName

        def initialize(envid=nil, servername=nil, versionname=nil)
          @EnvId = envid
          @ServerName = servername
          @VersionName = versionname
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ServerName = params['ServerName']
          @VersionName = params['VersionName']
        end
      end

      # DescribeCloudBaseRunServerVersion返回参数结构体
      class DescribeCloudBaseRunServerVersionResponse < TencentCloud::Common::AbstractModel
        # @param VersionName: 版本名称
        # @type VersionName: String
        # @param Remark: 备注
        # @type Remark: String
        # @param DockerfilePath: Dockerfile的路径
        # @type DockerfilePath: String
        # @param BuildDir: DockerBuild的目录
        # @type BuildDir: String
        # @param Cpu: 请使用CPUSize
        # @type Cpu: Float
        # @param Mem: 请使用MemSize
        # @type Mem: Float
        # @param MinNum: 副本最小值
        # @type MinNum: Integer
        # @param MaxNum: 副本最大值
        # @type MaxNum: Integer
        # @param PolicyType: 策略类型
        # @type PolicyType: String
        # @param PolicyThreshold: 策略阈值
        # @type PolicyThreshold: Float
        # @param EnvParams: 环境变量
        # @type EnvParams: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param UpdatedTime: 更新时间
        # @type UpdatedTime: String
        # @param VersionIP: 版本的IP
        # @type VersionIP: String
        # @param VersionPort: 版本的端口号
        # @type VersionPort: Integer
        # @param Status: 版本状态
        # @type Status: String
        # @param PackageName: 代码包的名字
        # @type PackageName: String
        # @param PackageVersion: 代码版本的名字
        # @type PackageVersion: String
        # @param UploadType: 枚举（package/repository/image)
        # @type UploadType: String
        # @param RepoType: Repo的类型(gitlab/github/coding)
        # @type RepoType: String
        # @param Repo: 地址
        # @type Repo: String
        # @param Branch: 分支
        # @type Branch: String
        # @param ServerName: 服务名字
        # @type ServerName: String
        # @param IsPublic: 是否对于外网开放
        # @type IsPublic: Boolean
        # @param VpcId: vpc id
        # @type VpcId: String
        # @param SubnetIds: 子网实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetIds: Array
        # @param CustomLogs: 日志采集路径
        # @type CustomLogs: String
        # @param ContainerPort: 监听端口
        # @type ContainerPort: Integer
        # @param InitialDelaySeconds: 延迟多长时间开始健康检查（单位s）
        # @type InitialDelaySeconds: Integer
        # @param ImageUrl: 镜像地址
        # @type ImageUrl: String
        # @param CpuSize: CPU 大小
        # @type CpuSize: Float
        # @param MemSize: MEM 大小
        # @type MemSize: Float
        # @param HasDockerfile: 是否有Dockerfile：0-default has, 1-has, 2-has not
        # @type HasDockerfile: Integer
        # @param BaseImage: 基础镜像
        # @type BaseImage: String
        # @param EntryPoint: 容器启动入口命令
        # @type EntryPoint: String
        # @param RepoLanguage: 仓库语言
        # @type RepoLanguage: String
        # @param PolicyDetail: 自动扩缩容策略组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyDetail: Array
        # @param TkeClusterInfo: Tke集群信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TkeClusterInfo: :class:`Tencentcloud::Tcb.v20180608.models.TkeClusterInfo`
        # @param TkeWorkloadType: 版本工作负载类型；deployment/deamonset
        # @type TkeWorkloadType: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VersionName, :Remark, :DockerfilePath, :BuildDir, :Cpu, :Mem, :MinNum, :MaxNum, :PolicyType, :PolicyThreshold, :EnvParams, :CreatedTime, :UpdatedTime, :VersionIP, :VersionPort, :Status, :PackageName, :PackageVersion, :UploadType, :RepoType, :Repo, :Branch, :ServerName, :IsPublic, :VpcId, :SubnetIds, :CustomLogs, :ContainerPort, :InitialDelaySeconds, :ImageUrl, :CpuSize, :MemSize, :HasDockerfile, :BaseImage, :EntryPoint, :RepoLanguage, :PolicyDetail, :TkeClusterInfo, :TkeWorkloadType, :RequestId

        def initialize(versionname=nil, remark=nil, dockerfilepath=nil, builddir=nil, cpu=nil, mem=nil, minnum=nil, maxnum=nil, policytype=nil, policythreshold=nil, envparams=nil, createdtime=nil, updatedtime=nil, versionip=nil, versionport=nil, status=nil, packagename=nil, packageversion=nil, uploadtype=nil, repotype=nil, repo=nil, branch=nil, servername=nil, ispublic=nil, vpcid=nil, subnetids=nil, customlogs=nil, containerport=nil, initialdelayseconds=nil, imageurl=nil, cpusize=nil, memsize=nil, hasdockerfile=nil, baseimage=nil, entrypoint=nil, repolanguage=nil, policydetail=nil, tkeclusterinfo=nil, tkeworkloadtype=nil, requestid=nil)
          @VersionName = versionname
          @Remark = remark
          @DockerfilePath = dockerfilepath
          @BuildDir = builddir
          @Cpu = cpu
          @Mem = mem
          @MinNum = minnum
          @MaxNum = maxnum
          @PolicyType = policytype
          @PolicyThreshold = policythreshold
          @EnvParams = envparams
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @VersionIP = versionip
          @VersionPort = versionport
          @Status = status
          @PackageName = packagename
          @PackageVersion = packageversion
          @UploadType = uploadtype
          @RepoType = repotype
          @Repo = repo
          @Branch = branch
          @ServerName = servername
          @IsPublic = ispublic
          @VpcId = vpcid
          @SubnetIds = subnetids
          @CustomLogs = customlogs
          @ContainerPort = containerport
          @InitialDelaySeconds = initialdelayseconds
          @ImageUrl = imageurl
          @CpuSize = cpusize
          @MemSize = memsize
          @HasDockerfile = hasdockerfile
          @BaseImage = baseimage
          @EntryPoint = entrypoint
          @RepoLanguage = repolanguage
          @PolicyDetail = policydetail
          @TkeClusterInfo = tkeclusterinfo
          @TkeWorkloadType = tkeworkloadtype
          @RequestId = requestid
        end

        def deserialize(params)
          @VersionName = params['VersionName']
          @Remark = params['Remark']
          @DockerfilePath = params['DockerfilePath']
          @BuildDir = params['BuildDir']
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @MinNum = params['MinNum']
          @MaxNum = params['MaxNum']
          @PolicyType = params['PolicyType']
          @PolicyThreshold = params['PolicyThreshold']
          @EnvParams = params['EnvParams']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          @VersionIP = params['VersionIP']
          @VersionPort = params['VersionPort']
          @Status = params['Status']
          @PackageName = params['PackageName']
          @PackageVersion = params['PackageVersion']
          @UploadType = params['UploadType']
          @RepoType = params['RepoType']
          @Repo = params['Repo']
          @Branch = params['Branch']
          @ServerName = params['ServerName']
          @IsPublic = params['IsPublic']
          @VpcId = params['VpcId']
          @SubnetIds = params['SubnetIds']
          @CustomLogs = params['CustomLogs']
          @ContainerPort = params['ContainerPort']
          @InitialDelaySeconds = params['InitialDelaySeconds']
          @ImageUrl = params['ImageUrl']
          @CpuSize = params['CpuSize']
          @MemSize = params['MemSize']
          @HasDockerfile = params['HasDockerfile']
          @BaseImage = params['BaseImage']
          @EntryPoint = params['EntryPoint']
          @RepoLanguage = params['RepoLanguage']
          unless params['PolicyDetail'].nil?
            @PolicyDetail = []
            params['PolicyDetail'].each do |i|
              hpapolicy_tmp = HpaPolicy.new
              hpapolicy_tmp.deserialize(i)
              @PolicyDetail << hpapolicy_tmp
            end
          end
          unless params['TkeClusterInfo'].nil?
            @TkeClusterInfo = TkeClusterInfo.new
            @TkeClusterInfo.deserialize(params['TkeClusterInfo'])
          end
          @TkeWorkloadType = params['TkeWorkloadType']
          @RequestId = params['RequestId']
        end
      end

      # 查询开通Mysql结果
      class DescribeCreateMySQLResult < TencentCloud::Common::AbstractModel
        # @param Status: 状态 notexist | init | doing | success | fail
        # @type Status: String
        # @param FailReason: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailReason: String
        # @param FreezeStatus: 是否已被冻结（只在 Status=success时有效）
        # @type FreezeStatus: Boolean

        attr_accessor :Status, :FailReason, :FreezeStatus

        def initialize(status=nil, failreason=nil, freezestatus=nil)
          @Status = status
          @FailReason = failreason
          @FreezeStatus = freezestatus
        end

        def deserialize(params)
          @Status = params['Status']
          @FailReason = params['FailReason']
          @FreezeStatus = params['FreezeStatus']
        end
      end

      # DescribeCreateMySQLResult请求参数结构体
      class DescribeCreateMySQLResultRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 云开发环境ID
        # @type EnvId: String
        # @param TaskId: OpenMysql 返回任务 Id
        # @type TaskId: String

        attr_accessor :EnvId, :TaskId

        def initialize(envid=nil, taskid=nil)
          @EnvId = envid
          @TaskId = taskid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @TaskId = params['TaskId']
        end
      end

      # DescribeCreateMySQLResult返回参数结构体
      class DescribeCreateMySQLResultResponse < TencentCloud::Common::AbstractModel
        # @param Data: 查询开通结果
        # @type Data: :class:`Tencentcloud::Tcb.v20180608.models.DescribeCreateMySQLResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeCreateMySQLResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCurveData请求参数结构体
      class DescribeCurveDataRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param MetricName: <h4>文档型数据库相关指标</h4>
        # <li> DbRead: 数据库读请求数 </li>
        # <li> DbWrite: 数据库写请求数 </li>
        # <li> DbCostTime10ms: 数据库耗时在10ms-50ms请求数 </li>
        # <li> DbCostTime50ms: 数据库耗时在50ms-100ms请求数 </li>
        # <li> DbCostTime100ms: 数据库耗时在100ms以上请求数 </li>
        # <li> DbSizepkg: 数据库容量，单位MB </li>

        # <h4>SQL型数据库相关指标</h4>
        # <li> MysqlStorageUsage: 关系型数据库容量，单位MB </li>
        # <li> MysqlCCU: CCU </li>
        # <li> MysqlCpuUsageRate:CPU利用率 </li>
        # <li> MysqlDbConnections:数据库连接数 </li>
        # <li> MysqlMemoryUse: 内存使用量，单位MB </li>
        # <li> MysqlSlowQueries:慢查询数 </li>
        # <li> MysqlTps: 提交数 </li>
        # <li> MysqlQps: QPS </li>

        # <h4>云函数相关指标</h4>
        # <li> FunctionCU: 资源用量</li>
        # <li> FunctionInvocation: 调用次数 </li>
        # <li> FunctionFlux: 外网出流量, 单位千字节(KB) </li>
        # <li> FunctionThrottle: 受限次数 </li>
        # <li> FunctionConcurrentExecutions: 并发执行个数</li>
        # <li> FunctionTimeout: 函数执行超时次数</li>
        # <li> FunctionGBs: 资源用量, 单位Mb*Ms </li>
        # <li> FunctionError: 云错误次数 </li>
        # <li> FunctionDuration: 运行时间, 单位毫秒 </li>
        # <li> FunctionConcurrencyMemoryMB: 并发执行内存量 </li>
        # <li>FunctionMemOverFlow：内存超限次数</li>
        # <li> FunctionIdleProvisioned: 预置并发闲置量 </li>
        # <li> FunctionProvisionedConcurrency: 预置并发个数 </li>

        # <h4>云托管相关指标</h4>
        # <li>TkeRspTimeService ： 响应时间，单位毫秒</li>
        # <li>TkeCpuUsedService ： CPU使用量</li>
        # <li>TkeMemUsedService ： 内存使用量</li>
        # <li>TkeQPSService ： QPS</li>
        # <li>TkePodNumService ： 实例个数</li>
        # <li>TkeHttpServiceNatPkg ： 外网出流量，单位byte</li>
        # <li>TkeCUUsedService ： 内存使用量(CU单位)</li>
        # <li>TkeInvokeNumService ： 调用量</li>
        # <li>TkeHttpErrorService ： 错误响应（404、500等）</li>

        # <h4>静态网站托管相关指标</h4>
        # <li>StaticFsFluxPkg：流量，单位byte</li>
        # <li>StaticFsSizePkg：存储容量，单位MB</li>

        # <h4>身份认证相关指标</h4>
        # <li>AuthInvocationNumPkg：调用次数</li>

        # <h4>API调用相关指标</h4>
        # <li>GwCloudDevelopmentSecureCallsInvocation：云开发API调用次数</li>
        # <li>GwWXInvocation：小程序API调用次数</li>

        # <h4>HTTP网关相关指标</h4>
        # <li>GwCloudDevelopmentStandardCallsInvocation：HTTP调用次数</li>

        # <h4>大模型相关指标</h4>
        # <li>AIPromptTokenNumPkg：输入Token</li>
        # <li>AICompletionTokenNumPkg：输出Token</li>
        # <li>AITotalTokenNumPkg：总Token</li>

        # <h4>知识库相关指标</h4>
        # <li>KnowledgeBaseCapacity：容量，单位bytes</li>


        # <h4>用户登录相关指标</h4>
        # <li>DayActiveLoginAnonymousUser：匿名用户登陆日活</li>
        # <li>DayActiveLoginAllUser ： 全部用户登陆日活</li>
        # <li>DayActiveLoginExternalUser ： 外部用户登陆日活</li>
        # <li>DayActiveLoginInternalUser ： 内部用户登陆日活</li>
        # @type MetricName: String
        # @param StartTime: 开始时间，如2018-08-24 10:50:00, 开始时间需要早于结束时间至少五分钟(原因是因为目前统计粒度最小是5分钟)
        # @type StartTime: String
        # @param EndTime: 结束时间，如2018-08-24 10:50:00, 结束时间需要晚于开始时间至少五分钟(原因是因为目前统计粒度最小是5分钟)
        # @type EndTime: String
        # @param ResourceID: 资源ID, 目前仅对文档型数据库、云函数、云托管相关的指标有意义。
        # 如果想查询某个具体云函数/具体数据库集合的指标，则需传入对应的云函数名称/集合名称；如果只想查询整个namespace的指标, 则留空或不传。
        # 云托管相关指标的查询，必须传入云托管服务名称。
        # @type ResourceID: String
        # @param WxAppId: 微信AppId，微信必传
        # @type WxAppId: String
        # @param SubresourceID: 子资源信息。
        # 查询云托管相关指标的具体版本的监控数据，需传入。
        # @type SubresourceID: String
        # @param ThirdResource: 网关路由
        # @type ThirdResource: String
        # @param Period: 统计周期(单位秒)，非必传，传入时仅支持传入300，3600，86400。不传采用默认以下默认规则：当时间区间为1天内, 统计周期为300；当时间区间选择为1天以上, 15天以下, 统计周期为3600； 当时间区间选择为15天以上, 180天以下, 统计周期为86400。
        # 如果传入period，需遵循以下规则。EndTime-StartTime的时间范围不超过1 天，Period可以取300或3600；EndTime-StartTime的时间范围满足超过1天且不超过3 天，Period可以取300或3600或86400；EndTime-StartTime的时间范围超过3天时，Period可以取3600或86400。
        # @type Period: Integer

        attr_accessor :EnvId, :MetricName, :StartTime, :EndTime, :ResourceID, :WxAppId, :SubresourceID, :ThirdResource, :Period

        def initialize(envid=nil, metricname=nil, starttime=nil, endtime=nil, resourceid=nil, wxappid=nil, subresourceid=nil, thirdresource=nil, period=nil)
          @EnvId = envid
          @MetricName = metricname
          @StartTime = starttime
          @EndTime = endtime
          @ResourceID = resourceid
          @WxAppId = wxappid
          @SubresourceID = subresourceid
          @ThirdResource = thirdresource
          @Period = period
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @MetricName = params['MetricName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ResourceID = params['ResourceID']
          @WxAppId = params['WxAppId']
          @SubresourceID = params['SubresourceID']
          @ThirdResource = params['ThirdResource']
          @Period = params['Period']
        end
      end

      # DescribeCurveData返回参数结构体
      class DescribeCurveDataResponse < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间, 会根据数据的统计周期进行取整
        # @type StartTime: String
        # @param EndTime: 结束时间, 会根据数据的统计周期进行取整
        # @type EndTime: String
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param Period: 统计周期(单位秒), 当时间区间为1天内, 统计周期为5分钟; 当时间区间选择为1天以上, 15天以下, 统计周期为1小时; 当时间区间选择为15天以上, 180天以下, 统计周期为1天
        # @type Period: Integer
        # @param Values: 有效的监控数据, 每个有效监控数据的上报时间可以从时间数组中的对应位置上获取到
        # @type Values: Array
        # @param Time: 各数据点的时间戳数组（Unix 时间戳，秒级），与  ⁠Values⁠  一一对应
        # @type Time: Array
        # @param NewValues: 有效的监控数据, 每个有效监控数据的上报时间可以从时间数组中的对应位置上获取到
        # @type NewValues: Array
        # @param Statistics:  聚合方式， ⁠"last"⁠  表示取时间段内最后一个值，“max”表示取时间段内最大值，“avg”表示取时间段内的平均值
        # @type Statistics: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StartTime, :EndTime, :MetricName, :Period, :Values, :Time, :NewValues, :Statistics, :RequestId

        def initialize(starttime=nil, endtime=nil, metricname=nil, period=nil, values=nil, time=nil, newvalues=nil, statistics=nil, requestid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
          @Period = period
          @Values = values
          @Time = time
          @NewValues = newvalues
          @Statistics = statistics
          @RequestId = requestid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
          @Period = params['Period']
          @Values = params['Values']
          @Time = params['Time']
          @NewValues = params['NewValues']
          @Statistics = params['Statistics']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabaseACL请求参数结构体
      class DescribeDatabaseACLRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param CollectionName: 集合名称
        # @type CollectionName: String

        attr_accessor :EnvId, :CollectionName

        def initialize(envid=nil, collectionname=nil)
          @EnvId = envid
          @CollectionName = collectionname
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @CollectionName = params['CollectionName']
        end
      end

      # DescribeDatabaseACL返回参数结构体
      class DescribeDatabaseACLResponse < TencentCloud::Common::AbstractModel
        # @param AclTag: 权限标签。包含以下取值：
        # <li> READONLY：所有用户可读，仅创建者和管理员可写</li>
        # <li> PRIVATE：仅创建者及管理员可读写</li>
        # <li> ADMINWRITE：所有用户可读，仅管理员可写</li>
        # <li> ADMINONLY：仅管理员可读写</li>
        # @type AclTag: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AclTag, :RequestId

        def initialize(acltag=nil, requestid=nil)
          @AclTag = acltag
          @RequestId = requestid
        end

        def deserialize(params)
          @AclTag = params['AclTag']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvAccountCircle请求参数结构体
      class DescribeEnvAccountCircleRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String

        attr_accessor :EnvId

        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribeEnvAccountCircle返回参数结构体
      class DescribeEnvAccountCircleResponse < TencentCloud::Common::AbstractModel
        # @param StartTime: 环境计费周期开始时间
        # @type StartTime: String
        # @param EndTime: 环境计费周期结束时间
        # @type EndTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StartTime, :EndTime, :RequestId

        def initialize(starttime=nil, endtime=nil, requestid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @RequestId = requestid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvLimit请求参数结构体
      class DescribeEnvLimitRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeEnvLimit返回参数结构体
      class DescribeEnvLimitResponse < TencentCloud::Common::AbstractModel
        # @param MaxEnvNum: 环境总数上限
        # @type MaxEnvNum: Integer
        # @param CurrentEnvNum: 目前环境总数
        # @type CurrentEnvNum: Integer
        # @param MaxFreeEnvNum: 免费环境数量上限
        # @type MaxFreeEnvNum: Integer
        # @param CurrentFreeEnvNum: 目前免费环境数量
        # @type CurrentFreeEnvNum: Integer
        # @param MaxDeleteTotal: 总计允许销毁环境次数上限
        # @type MaxDeleteTotal: Integer
        # @param CurrentDeleteTotal: 目前已销毁环境次数
        # @type CurrentDeleteTotal: Integer
        # @param MaxDeleteMonthly: 每月允许销毁环境次数上限
        # @type MaxDeleteMonthly: Integer
        # @param CurrentDeleteMonthly: 本月已销毁环境次数
        # @type CurrentDeleteMonthly: Integer
        # @param MaxFreeTrialNum: 微信网关体验版可购买月份数
        # @type MaxFreeTrialNum: Integer
        # @param CurrentFreeTrialNum: 微信网关体验版已购买月份数
        # @type CurrentFreeTrialNum: Integer
        # @param ChangePayTotal: 转支付限额总数
        # @type ChangePayTotal: Integer
        # @param CurrentChangePayTotal: 当前已用转支付次数
        # @type CurrentChangePayTotal: Integer
        # @param ChangePayMonthly: 转支付每月限额
        # @type ChangePayMonthly: Integer
        # @param CurrentChangePayMonthly: 本月已用转支付额度
        # @type CurrentChangePayMonthly: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaxEnvNum, :CurrentEnvNum, :MaxFreeEnvNum, :CurrentFreeEnvNum, :MaxDeleteTotal, :CurrentDeleteTotal, :MaxDeleteMonthly, :CurrentDeleteMonthly, :MaxFreeTrialNum, :CurrentFreeTrialNum, :ChangePayTotal, :CurrentChangePayTotal, :ChangePayMonthly, :CurrentChangePayMonthly, :RequestId

        def initialize(maxenvnum=nil, currentenvnum=nil, maxfreeenvnum=nil, currentfreeenvnum=nil, maxdeletetotal=nil, currentdeletetotal=nil, maxdeletemonthly=nil, currentdeletemonthly=nil, maxfreetrialnum=nil, currentfreetrialnum=nil, changepaytotal=nil, currentchangepaytotal=nil, changepaymonthly=nil, currentchangepaymonthly=nil, requestid=nil)
          @MaxEnvNum = maxenvnum
          @CurrentEnvNum = currentenvnum
          @MaxFreeEnvNum = maxfreeenvnum
          @CurrentFreeEnvNum = currentfreeenvnum
          @MaxDeleteTotal = maxdeletetotal
          @CurrentDeleteTotal = currentdeletetotal
          @MaxDeleteMonthly = maxdeletemonthly
          @CurrentDeleteMonthly = currentdeletemonthly
          @MaxFreeTrialNum = maxfreetrialnum
          @CurrentFreeTrialNum = currentfreetrialnum
          @ChangePayTotal = changepaytotal
          @CurrentChangePayTotal = currentchangepaytotal
          @ChangePayMonthly = changepaymonthly
          @CurrentChangePayMonthly = currentchangepaymonthly
          @RequestId = requestid
        end

        def deserialize(params)
          @MaxEnvNum = params['MaxEnvNum']
          @CurrentEnvNum = params['CurrentEnvNum']
          @MaxFreeEnvNum = params['MaxFreeEnvNum']
          @CurrentFreeEnvNum = params['CurrentFreeEnvNum']
          @MaxDeleteTotal = params['MaxDeleteTotal']
          @CurrentDeleteTotal = params['CurrentDeleteTotal']
          @MaxDeleteMonthly = params['MaxDeleteMonthly']
          @CurrentDeleteMonthly = params['CurrentDeleteMonthly']
          @MaxFreeTrialNum = params['MaxFreeTrialNum']
          @CurrentFreeTrialNum = params['CurrentFreeTrialNum']
          @ChangePayTotal = params['ChangePayTotal']
          @CurrentChangePayTotal = params['CurrentChangePayTotal']
          @ChangePayMonthly = params['ChangePayMonthly']
          @CurrentChangePayMonthly = params['CurrentChangePayMonthly']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvs请求参数结构体
      class DescribeEnvsRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID，如果传了这个参数则只返回该环境的相关信息
        # @type EnvId: String
        # @param IsVisible: 指定Channels字段为可见渠道列表或不可见渠道列表
        # 如只想获取渠道A的环境 就填写IsVisible= true,Channels = ["A"], 过滤渠道A拉取其他渠道环境时填写IsVisible= false,Channels = ["A"]
        # @type IsVisible: Boolean
        # @param Channels: 渠道列表，代表可见或不可见渠道由IsVisible参数指定
        # @type Channels: Array
        # @param Limit: 分页参数，单页限制个数
        # @type Limit: Integer
        # @param Offset: 分页参数，偏移量
        # @type Offset: Integer

        attr_accessor :EnvId, :IsVisible, :Channels, :Limit, :Offset

        def initialize(envid=nil, isvisible=nil, channels=nil, limit=nil, offset=nil)
          @EnvId = envid
          @IsVisible = isvisible
          @Channels = channels
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @IsVisible = params['IsVisible']
          @Channels = params['Channels']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeEnvs返回参数结构体
      class DescribeEnvsResponse < TencentCloud::Common::AbstractModel
        # @param EnvList: 环境信息列表
        # @type EnvList: Array
        # @param Total: 环境个数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvList, :Total, :RequestId

        def initialize(envlist=nil, total=nil, requestid=nil)
          @EnvList = envlist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EnvList'].nil?
            @EnvList = []
            params['EnvList'].each do |i|
              envinfo_tmp = EnvInfo.new
              envinfo_tmp.deserialize(i)
              @EnvList << envinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostingDomainTask请求参数结构体
      class DescribeHostingDomainTaskRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String

        attr_accessor :EnvId

        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribeHostingDomainTask返回参数结构体
      class DescribeHostingDomainTaskResponse < TencentCloud::Common::AbstractModel
        # @param Status: todo/doing/done/error
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

      # DescribeMySQLClusterDetail请求参数结构体
      class DescribeMySQLClusterDetailRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 云开发环境ID
        # @type EnvId: String

        attr_accessor :EnvId

        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribeMySQLClusterDetail返回参数结构体
      class DescribeMySQLClusterDetailResponse < TencentCloud::Common::AbstractModel
        # @param Data: 集群详情
        # @type Data: :class:`Tencentcloud::Tcb.v20180608.models.MySQLClusterDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = MySQLClusterDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMySQLTaskStatus请求参数结构体
      class DescribeMySQLTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 云开发环境ID
        # @type EnvId: String
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param TaskName: 任务名
        # @type TaskName: String

        attr_accessor :EnvId, :TaskId, :TaskName

        def initialize(envid=nil, taskid=nil, taskname=nil)
          @EnvId = envid
          @TaskId = taskid
          @TaskName = taskname
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
        end
      end

      # DescribeMySQLTaskStatus返回参数结构体
      class DescribeMySQLTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务状态
        # @type Data: :class:`Tencentcloud::Tcb.v20180608.models.MySQLTaskStatus`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = MySQLTaskStatus.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeQuotaData请求参数结构体
      class DescribeQuotaDataRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param MetricName: <li> 指标名: </li>
        # <li> StorageSizepkg: 当月存储空间容量, 单位MB </li>
        # <li> StorageReadpkg: 当月存储读请求次数 </li>
        # <li> StorageWritepkg: 当月存储写请求次数 </li>
        # <li> StorageCdnOriginFluxpkg: 当月CDN回源流量, 单位字节 </li>
        # <li> StorageCdnOriginFluxpkgDay: 当日CDN回源流量, 单位字节 </li>
        # <li> StorageReadpkgDay: 当日存储读请求次数 </li>
        # <li> StorageWritepkgDay: 当日写请求次数 </li>
        # <li> CDNFluxpkg: 当月CDN流量, 单位为字节 </li>
        # <li> CDNFluxpkgDay: 当日CDN流量, 单位为字节 </li>
        # <li> FunctionInvocationpkg: 当月云函数调用次数 </li>
        # <li> FunctionGBspkg: 当月云函数资源使用量, 单位Mb*Ms </li>
        # <li> FunctionFluxpkg: 当月云函数流量, 单位千字节(KB) </li>
        # <li> FunctionInvocationpkgDay: 当日云函数调用次数 </li>
        # <li> FunctionGBspkgDay: 当日云函数资源使用量, 单位Mb*Ms </li>
        # <li> FunctionFluxpkgDay: 当日云函数流量, 单位千字节(KB) </li>
        # <li> DbSizepkg: 当月数据库容量大小, 单位MB </li>
        # <li> DbReadpkg: 当日数据库读请求数 </li>
        # <li> DbWritepkg: 当日数据库写请求数 </li>
        # <li> StaticFsFluxPkgDay: 当日静态托管流量 </li>
        # <li> StaticFsFluxPkg: 当月静态托管流量</li>
        # <li> StaticFsSizePkg: 当月静态托管容量 </li>
        # <li> TkeCpuUsedPkg: 当月容器托管CPU使用量，单位核*秒 </li>
        # <li> TkeCpuUsedPkgDay: 当天容器托管CPU使用量，单位核*秒 </li>
        # <li> TkeMemUsedPkg: 当月容器托管内存使用量，单位MB*秒 </li>
        # <li> TkeMemUsedPkgDay: 当天容器托管内存使用量，单位MB*秒 </li>
        # <li> CodingBuildTimePkgDay: 当天容器托管构建时间使用量，单位毫秒 </li>
        # <li> TkeHttpServiceNatPkgDay: 当天容器托管流量使用量，单位B </li>
        # <li> CynosdbCcupkg: 当月微信云托管MySQL CCU使用量，单位个  （需要除以1000）</li>
        # <li> CynosdbStoragepkg: 当月微信云托管MySQL 存储使用量，单位MB  （需要除以1000）</li>
        # <li> CynosdbCcupkgDay: 当天微信云托管MySQL 存储使用量，单位个 （需要除以1000） </li>
        # <li> CynosdbStoragepkgDay: 当天微信云托管MySQL 存储使用量，单位MB （需要除以1000） </li>
        # @type MetricName: String
        # @param ResourceID: 资源ID, 目前仅对云函数、容器托管相关的指标有意义。云函数(FunctionInvocationpkg, FunctionGBspkg, FunctionFluxpkg)、容器托管（服务名称）。如果想查询某个云函数的指标则在ResourceId中传入函数名; 如果只想查询整个namespace的指标, 则留空或不传。
        # @type ResourceID: String

        attr_accessor :EnvId, :MetricName, :ResourceID

        def initialize(envid=nil, metricname=nil, resourceid=nil)
          @EnvId = envid
          @MetricName = metricname
          @ResourceID = resourceid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @MetricName = params['MetricName']
          @ResourceID = params['ResourceID']
        end
      end

      # DescribeQuotaData返回参数结构体
      class DescribeQuotaDataResponse < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param Value: 指标的值
        # @type Value: Integer
        # @param SubValue: 指标的附加值信息
        # @type SubValue: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MetricName, :Value, :SubValue, :RequestId

        def initialize(metricname=nil, value=nil, subvalue=nil, requestid=nil)
          @MetricName = metricname
          @Value = value
          @SubValue = subvalue
          @RequestId = requestid
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          @Value = params['Value']
          @SubValue = params['SubValue']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSafeRule请求参数结构体
      class DescribeSafeRuleRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param CollectionName: 集合名称
        # @type CollectionName: String
        # @param WxAppId: 微信AppId，微信必传
        # @type WxAppId: String

        attr_accessor :EnvId, :CollectionName, :WxAppId

        def initialize(envid=nil, collectionname=nil, wxappid=nil)
          @EnvId = envid
          @CollectionName = collectionname
          @WxAppId = wxappid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @CollectionName = params['CollectionName']
          @WxAppId = params['WxAppId']
        end
      end

      # DescribeSafeRule返回参数结构体
      class DescribeSafeRuleResponse < TencentCloud::Common::AbstractModel
        # @param Rule: 规则内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rule: String
        # @param AclTag: 权限标签。包含以下取值：
        # <li> READONLY：所有用户可读，仅创建者和管理员可写</li>
        # <li> PRIVATE：仅创建者及管理员可读写</li>
        # <li> ADMINWRITE：所有用户可读，仅管理员可写</li>
        # <li> ADMINONLY：仅管理员可读写</li>
        # <li> CUSTOM：自定义安全规则</li>
        # @type AclTag: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rule, :AclTag, :RequestId

        def initialize(rule=nil, acltag=nil, requestid=nil)
          @Rule = rule
          @AclTag = acltag
          @RequestId = requestid
        end

        def deserialize(params)
          @Rule = params['Rule']
          @AclTag = params['AclTag']
          @RequestId = params['RequestId']
        end
      end

      # DescribeStaticStore请求参数结构体
      class DescribeStaticStoreRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String

        attr_accessor :EnvId

        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribeStaticStore返回参数结构体
      class DescribeStaticStoreResponse < TencentCloud::Common::AbstractModel
        # @param Data: 静态托管资源信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              staticstoreinfo_tmp = StaticStoreInfo.new
              staticstoreinfo_tmp.deserialize(i)
              @Data << staticstoreinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTable请求参数结构体
      class DescribeTableRequest < TencentCloud::Common::AbstractModel
        # @param TableName: 表名
        # @type TableName: String
        # @param Tag: FlecDB实例ID
        # @type Tag: String
        # @param EnvId: 云开发环境ID
        # @type EnvId: String
        # @param MongoConnector: MongoDB连接器配置
        # @type MongoConnector: :class:`Tencentcloud::Tcb.v20180608.models.MongoConnector`

        attr_accessor :TableName, :Tag, :EnvId, :MongoConnector

        def initialize(tablename=nil, tag=nil, envid=nil, mongoconnector=nil)
          @TableName = tablename
          @Tag = tag
          @EnvId = envid
          @MongoConnector = mongoconnector
        end

        def deserialize(params)
          @TableName = params['TableName']
          @Tag = params['Tag']
          @EnvId = params['EnvId']
          unless params['MongoConnector'].nil?
            @MongoConnector = MongoConnector.new
            @MongoConnector.deserialize(params['MongoConnector'])
          end
        end
      end

      # DescribeTable返回参数结构体
      class DescribeTableResponse < TencentCloud::Common::AbstractModel
        # @param Indexes: 索引相关信息
        # @type Indexes: Array
        # @param IndexNum: 索引个数
        # @type IndexNum: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Indexes, :IndexNum, :RequestId

        def initialize(indexes=nil, indexnum=nil, requestid=nil)
          @Indexes = indexes
          @IndexNum = indexnum
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Indexes'].nil?
            @Indexes = []
            params['Indexes'].each do |i|
              indexinfo_tmp = IndexInfo.new
              indexinfo_tmp.deserialize(i)
              @Indexes << indexinfo_tmp
            end
          end
          @IndexNum = params['IndexNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTables请求参数结构体
      class DescribeTablesRequest < TencentCloud::Common::AbstractModel
        # @param MgoLimit: 分页条件
        # @type MgoLimit: Integer
        # @param Tag: 实例ID
        # @type Tag: String
        # @param MgoOffset: 分页条件
        # @type MgoOffset: Integer
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param MongoConnector: MongoConnector
        # @type MongoConnector: :class:`Tencentcloud::Tcb.v20180608.models.MongoConnector`
        # @param TableNames: 指定表名过滤，为空时返回所有表
        # @type TableNames: Array

        attr_accessor :MgoLimit, :Tag, :MgoOffset, :EnvId, :MongoConnector, :TableNames

        def initialize(mgolimit=nil, tag=nil, mgooffset=nil, envid=nil, mongoconnector=nil, tablenames=nil)
          @MgoLimit = mgolimit
          @Tag = tag
          @MgoOffset = mgooffset
          @EnvId = envid
          @MongoConnector = mongoconnector
          @TableNames = tablenames
        end

        def deserialize(params)
          @MgoLimit = params['MgoLimit']
          @Tag = params['Tag']
          @MgoOffset = params['MgoOffset']
          @EnvId = params['EnvId']
          unless params['MongoConnector'].nil?
            @MongoConnector = MongoConnector.new
            @MongoConnector.deserialize(params['MongoConnector'])
          end
          @TableNames = params['TableNames']
        end
      end

      # DescribeTables返回参数结构体
      class DescribeTablesResponse < TencentCloud::Common::AbstractModel
        # @param Tables: 表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tables: Array
        # @param Pager: 分页信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pager: :class:`Tencentcloud::Tcb.v20180608.models.Pager`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tables, :Pager, :RequestId

        def initialize(tables=nil, pager=nil, requestid=nil)
          @Tables = tables
          @Pager = pager
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tables'].nil?
            @Tables = []
            params['Tables'].each do |i|
              tableinfo_tmp = TableInfo.new
              tableinfo_tmp.deserialize(i)
              @Tables << tableinfo_tmp
            end
          end
          unless params['Pager'].nil?
            @Pager = Pager.new
            @Pager.deserialize(params['Pager'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserList请求参数结构体
      class DescribeUserListRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param PageNo: 页码，从1开始，默认1
        # @type PageNo: Integer
        # @param PageSize: 每页数量，默认20，最大100
        # @type PageSize: Integer
        # @param Name: 用户名，模糊查询
        # @type Name: String
        # @param NickName: 用户昵称，模糊查询
        # @type NickName: String
        # @param Phone: 手机号，模糊查询
        # @type Phone: String
        # @param Email: 邮箱，模糊查询
        # @type Email: String

        attr_accessor :EnvId, :PageNo, :PageSize, :Name, :NickName, :Phone, :Email

        def initialize(envid=nil, pageno=nil, pagesize=nil, name=nil, nickname=nil, phone=nil, email=nil)
          @EnvId = envid
          @PageNo = pageno
          @PageSize = pagesize
          @Name = name
          @NickName = nickname
          @Phone = phone
          @Email = email
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @Name = params['Name']
          @NickName = params['NickName']
          @Phone = params['Phone']
          @Email = params['Email']
        end
      end

      # 查询用户返回结果
      class DescribeUserListResp < TencentCloud::Common::AbstractModel
        # @param Total: 用户总数
        # @type Total: Integer
        # @param UserList: 用户列表
        # @type UserList: Array

        attr_accessor :Total, :UserList

        def initialize(total=nil, userlist=nil)
          @Total = total
          @UserList = userlist
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['UserList'].nil?
            @UserList = []
            params['UserList'].each do |i|
              user_tmp = User.new
              user_tmp.deserialize(i)
              @UserList << user_tmp
            end
          end
        end
      end

      # DescribeUserList返回参数结构体
      class DescribeUserListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果返回
        # @type Data: :class:`Tencentcloud::Tcb.v20180608.models.DescribeUserListResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeUserListResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DestroyEnv请求参数结构体
      class DestroyEnvRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param IsForce: 针对预付费 删除隔离中的环境时要传true 正常环境直接跳过隔离期删除
        # @type IsForce: Boolean
        # @param BypassCheck: 是否绕过资源检查，资源包等额外资源，默认为false，如果为true，则不检查资源是否有数据，直接删除。
        # @type BypassCheck: Boolean

        attr_accessor :EnvId, :IsForce, :BypassCheck

        def initialize(envid=nil, isforce=nil, bypasscheck=nil)
          @EnvId = envid
          @IsForce = isforce
          @BypassCheck = bypasscheck
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @IsForce = params['IsForce']
          @BypassCheck = params['BypassCheck']
        end
      end

      # DestroyEnv返回参数结构体
      class DestroyEnvResponse < TencentCloud::Common::AbstractModel
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

      # DestroyMySQL请求参数结构体
      class DestroyMySQLRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 云开发环境ID
        # @type EnvId: String

        attr_accessor :EnvId

        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DestroyMySQL返回参数结构体
      class DestroyMySQLResponse < TencentCloud::Common::AbstractModel
        # @param Data: 销毁结果
        # @type Data: :class:`Tencentcloud::Tcb.v20180608.models.DestroyMySQLResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DestroyMySQLResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 销毁 Mysql 结果
      class DestroyMySQLResult < TencentCloud::Common::AbstractModel
        # @param IsSuccess: 是否成功
        # @type IsSuccess: Boolean
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskName: 任务名
        # @type TaskName: String

        attr_accessor :IsSuccess, :TaskId, :TaskName

        def initialize(issuccess=nil, taskid=nil, taskname=nil)
          @IsSuccess = issuccess
          @TaskId = taskid
          @TaskName = taskname
        end

        def deserialize(params)
          @IsSuccess = params['IsSuccess']
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
        end
      end

      # DestroyStaticStore请求参数结构体
      class DestroyStaticStoreRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param CdnDomain: cdn域名
        # @type CdnDomain: String

        attr_accessor :EnvId, :CdnDomain

        def initialize(envid=nil, cdndomain=nil)
          @EnvId = envid
          @CdnDomain = cdndomain
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @CdnDomain = params['CdnDomain']
        end
      end

      # DestroyStaticStore返回参数结构体
      class DestroyStaticStoreResponse < TencentCloud::Common::AbstractModel
        # @param Result: 条件任务结果(succ/fail)
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 本类型用于UpdateTable接口中描述待删除索引信息
      class DropIndex < TencentCloud::Common::AbstractModel
        # @param IndexName: 索引名称
        # @type IndexName: String

        attr_accessor :IndexName

        def initialize(indexname=nil)
          @IndexName = indexname
        end

        def deserialize(params)
          @IndexName = params['IndexName']
        end
      end

      # EditAuthConfig请求参数结构体
      class EditAuthConfigRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param PhoneNumberLogin: 手机号登录配置 "TRUE",  "FALSE", "LOGIN_ONLY"
        # @type PhoneNumberLogin: String
        # @param AnonymousLogin: 匿名登录配置 "TRUE",  "FALSE"
        # @type AnonymousLogin: String
        # @param UsernameLogin: 用户名密码登录配置 "TRUE",  "FALSE"
        # @type UsernameLogin: String

        attr_accessor :EnvId, :PhoneNumberLogin, :AnonymousLogin, :UsernameLogin

        def initialize(envid=nil, phonenumberlogin=nil, anonymouslogin=nil, usernamelogin=nil)
          @EnvId = envid
          @PhoneNumberLogin = phonenumberlogin
          @AnonymousLogin = anonymouslogin
          @UsernameLogin = usernamelogin
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @PhoneNumberLogin = params['PhoneNumberLogin']
          @AnonymousLogin = params['AnonymousLogin']
          @UsernameLogin = params['UsernameLogin']
        end
      end

      # EditAuthConfig返回参数结构体
      class EditAuthConfigResponse < TencentCloud::Common::AbstractModel
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

      # 环境计费信息
      class EnvBillingInfoItem < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param PackageId: tcb产品套餐ID，参考DescribePackages接口的返回值。
        # @type PackageId: String
        # @param IsAutoRenew: 自动续费标记
        # @type IsAutoRenew: Boolean
        # @param Status: 状态。包含以下取值：
        # <li> 空字符串：初始化中</li>
        # <li> NORMAL：正常</li>
        # <li> ISOLATE：隔离</li>
        # @type Status: String
        # @param PayMode: 支付方式。包含以下取值：
        # <li> PREPAYMENT：预付费</li>
        # <li> POSTPAID：后付费</li>
        # @type PayMode: String
        # @param IsolatedTime: 隔离时间，最近一次隔离的时间
        # @type IsolatedTime: String
        # @param ExpireTime: 过期时间，套餐即将到期的时间
        # @type ExpireTime: String
        # @param CreateTime: 创建时间，第一次接入计费方案的时间。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间，计费信息最近一次更新的时间。
        # @type UpdateTime: String
        # @param IsAlwaysFree: true表示从未升级过付费版。
        # @type IsAlwaysFree: Boolean
        # @param PaymentChannel: 付费渠道。
        # <li> miniapp：小程序</li>
        # <li> qcloud：腾讯云</li>
        # @type PaymentChannel: String
        # @param OrderInfo: 最新的订单信息
        # @type OrderInfo: :class:`Tencentcloud::Tcb.v20180608.models.OrderInfo`
        # @param FreeQuota: 免费配额信息。
        # @type FreeQuota: String
        # @param EnableOverrun: 是否开启 `超过套餐额度部分转按量付费`
        # @type EnableOverrun: Boolean
        # @param ExtPackageType: 环境套餐类型
        # @type ExtPackageType: String
        # @param EnvCharged: 是否付费期环境，可取值：yes/no。
        # @type EnvCharged: String
        # @param EnvActivated: 是否已激活，可取值：yes/no。
        # @type EnvActivated: String

        attr_accessor :EnvId, :PackageId, :IsAutoRenew, :Status, :PayMode, :IsolatedTime, :ExpireTime, :CreateTime, :UpdateTime, :IsAlwaysFree, :PaymentChannel, :OrderInfo, :FreeQuota, :EnableOverrun, :ExtPackageType, :EnvCharged, :EnvActivated

        def initialize(envid=nil, packageid=nil, isautorenew=nil, status=nil, paymode=nil, isolatedtime=nil, expiretime=nil, createtime=nil, updatetime=nil, isalwaysfree=nil, paymentchannel=nil, orderinfo=nil, freequota=nil, enableoverrun=nil, extpackagetype=nil, envcharged=nil, envactivated=nil)
          @EnvId = envid
          @PackageId = packageid
          @IsAutoRenew = isautorenew
          @Status = status
          @PayMode = paymode
          @IsolatedTime = isolatedtime
          @ExpireTime = expiretime
          @CreateTime = createtime
          @UpdateTime = updatetime
          @IsAlwaysFree = isalwaysfree
          @PaymentChannel = paymentchannel
          @OrderInfo = orderinfo
          @FreeQuota = freequota
          @EnableOverrun = enableoverrun
          @ExtPackageType = extpackagetype
          @EnvCharged = envcharged
          @EnvActivated = envactivated
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @PackageId = params['PackageId']
          @IsAutoRenew = params['IsAutoRenew']
          @Status = params['Status']
          @PayMode = params['PayMode']
          @IsolatedTime = params['IsolatedTime']
          @ExpireTime = params['ExpireTime']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @IsAlwaysFree = params['IsAlwaysFree']
          @PaymentChannel = params['PaymentChannel']
          unless params['OrderInfo'].nil?
            @OrderInfo = OrderInfo.new
            @OrderInfo.deserialize(params['OrderInfo'])
          end
          @FreeQuota = params['FreeQuota']
          @EnableOverrun = params['EnableOverrun']
          @ExtPackageType = params['ExtPackageType']
          @EnvCharged = params['EnvCharged']
          @EnvActivated = params['EnvActivated']
        end
      end

      # 环境信息
      class EnvInfo < TencentCloud::Common::AbstractModel
        # @param EnvId: 账户下该环境唯一标识
        # @type EnvId: String
        # @param Source: 环境来源。包含以下取值：
        # <li>miniapp：微信小程序</li>
        # <li>qcloud ：腾讯云</li>
        # @type Source: String
        # @param Alias: 环境别名，要以a-z开头，不能包含 a-zA-z0-9- 以外的字符
        # @type Alias: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 最后修改时间
        # @type UpdateTime: String
        # @param Status: 环境状态。包含以下取值：
        # <li>NORMAL：正常可用</li>
        # <li>UNAVAILABLE：服务不可用，可能是尚未初始化或者初始化过程中</li>
        # @type Status: String
        # @param Databases: 数据库列表
        # @type Databases: Array
        # @param Storages: 存储列表
        # @type Storages: Array
        # @param Functions: 函数列表
        # @type Functions: Array
        # @param PackageId: tcb产品套餐ID，参考DescribePackages接口的返回值。
        # @type PackageId: String
        # @param PackageName: 套餐中文名称，参考DescribePackages接口的返回值。
        # @type PackageName: String
        # @param LogServices: 云日志服务列表
        # @type LogServices: Array
        # @param StaticStorages: 静态资源信息
        # @type StaticStorages: Array
        # @param IsAutoDegrade: 是否到期自动降为免费版
        # @type IsAutoDegrade: Boolean
        # @param EnvChannel: 环境渠道
        # @type EnvChannel: String
        # @param PayMode: 支付方式。包含以下取值：
        # <li> prepayment：预付费</li>
        # <li> postpaid：后付费</li>
        # @type PayMode: String
        # @param IsDefault: 是否为默认环境
        # @type IsDefault: Boolean
        # @param Region: 环境所属地域
        # @type Region: String
        # @param Tags: 环境标签列表
        # @type Tags: Array
        # @param CustomLogServices: 自定义日志服务
        # @type CustomLogServices: Array
        # @param EnvType: 环境类型：baas, run, hoting, weda
        # @type EnvType: String
        # @param IsDauPackage: 是否是dau新套餐
        # @type IsDauPackage: Boolean
        # @param PackageType: 套餐类型:空\baas\tcbr
        # @type PackageType: String
        # @param ArchitectureType: 架构类型
        # @type ArchitectureType: String
        # @param Recycle: 回收标志，默认为空
        # @type Recycle: String

        attr_accessor :EnvId, :Source, :Alias, :CreateTime, :UpdateTime, :Status, :Databases, :Storages, :Functions, :PackageId, :PackageName, :LogServices, :StaticStorages, :IsAutoDegrade, :EnvChannel, :PayMode, :IsDefault, :Region, :Tags, :CustomLogServices, :EnvType, :IsDauPackage, :PackageType, :ArchitectureType, :Recycle

        def initialize(envid=nil, source=nil, _alias=nil, createtime=nil, updatetime=nil, status=nil, databases=nil, storages=nil, functions=nil, packageid=nil, packagename=nil, logservices=nil, staticstorages=nil, isautodegrade=nil, envchannel=nil, paymode=nil, isdefault=nil, region=nil, tags=nil, customlogservices=nil, envtype=nil, isdaupackage=nil, packagetype=nil, architecturetype=nil, recycle=nil)
          @EnvId = envid
          @Source = source
          @Alias = _alias
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Status = status
          @Databases = databases
          @Storages = storages
          @Functions = functions
          @PackageId = packageid
          @PackageName = packagename
          @LogServices = logservices
          @StaticStorages = staticstorages
          @IsAutoDegrade = isautodegrade
          @EnvChannel = envchannel
          @PayMode = paymode
          @IsDefault = isdefault
          @Region = region
          @Tags = tags
          @CustomLogServices = customlogservices
          @EnvType = envtype
          @IsDauPackage = isdaupackage
          @PackageType = packagetype
          @ArchitectureType = architecturetype
          @Recycle = recycle
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Source = params['Source']
          @Alias = params['Alias']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          unless params['Databases'].nil?
            @Databases = []
            params['Databases'].each do |i|
              databasesinfo_tmp = DatabasesInfo.new
              databasesinfo_tmp.deserialize(i)
              @Databases << databasesinfo_tmp
            end
          end
          unless params['Storages'].nil?
            @Storages = []
            params['Storages'].each do |i|
              storageinfo_tmp = StorageInfo.new
              storageinfo_tmp.deserialize(i)
              @Storages << storageinfo_tmp
            end
          end
          unless params['Functions'].nil?
            @Functions = []
            params['Functions'].each do |i|
              functioninfo_tmp = FunctionInfo.new
              functioninfo_tmp.deserialize(i)
              @Functions << functioninfo_tmp
            end
          end
          @PackageId = params['PackageId']
          @PackageName = params['PackageName']
          unless params['LogServices'].nil?
            @LogServices = []
            params['LogServices'].each do |i|
              logserviceinfo_tmp = LogServiceInfo.new
              logserviceinfo_tmp.deserialize(i)
              @LogServices << logserviceinfo_tmp
            end
          end
          unless params['StaticStorages'].nil?
            @StaticStorages = []
            params['StaticStorages'].each do |i|
              staticstorageinfo_tmp = StaticStorageInfo.new
              staticstorageinfo_tmp.deserialize(i)
              @StaticStorages << staticstorageinfo_tmp
            end
          end
          @IsAutoDegrade = params['IsAutoDegrade']
          @EnvChannel = params['EnvChannel']
          @PayMode = params['PayMode']
          @IsDefault = params['IsDefault']
          @Region = params['Region']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['CustomLogServices'].nil?
            @CustomLogServices = []
            params['CustomLogServices'].each do |i|
              clsinfo_tmp = ClsInfo.new
              clsinfo_tmp.deserialize(i)
              @CustomLogServices << clsinfo_tmp
            end
          end
          @EnvType = params['EnvType']
          @IsDauPackage = params['IsDauPackage']
          @PackageType = params['PackageType']
          @ArchitectureType = params['ArchitectureType']
          @Recycle = params['Recycle']
        end
      end

      # 函数的信息
      class FunctionInfo < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Region: 所属地域。
        # 当前支持ap-shanghai
        # @type Region: String

        attr_accessor :Namespace, :Region

        def initialize(namespace=nil, region=nil)
          @Namespace = namespace
          @Region = region
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @Region = params['Region']
        end
      end

      # 扩缩容策略
      class HpaPolicy < TencentCloud::Common::AbstractModel
        # @param PolicyType: 策略类型
        # @type PolicyType: String
        # @param PolicyThreshold: 策略阈值
        # @type PolicyThreshold: Integer

        attr_accessor :PolicyType, :PolicyThreshold

        def initialize(policytype=nil, policythreshold=nil)
          @PolicyType = policytype
          @PolicyThreshold = policythreshold
        end

        def deserialize(params)
          @PolicyType = params['PolicyType']
          @PolicyThreshold = params['PolicyThreshold']
        end
      end

      # 索引命中信息
      class IndexAccesses < TencentCloud::Common::AbstractModel
        # @param Ops: 索引命中次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ops: Integer
        # @param Since: 命中次数从何时开始计数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Since: String

        attr_accessor :Ops, :Since

        def initialize(ops=nil, since=nil)
          @Ops = ops
          @Since = since
        end

        def deserialize(params)
          @Ops = params['Ops']
          @Since = params['Since']
        end
      end

      # 索引信息
      class IndexInfo < TencentCloud::Common::AbstractModel
        # @param Name: 索引名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Size: 索引大小，单位: 字节
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Integer
        # @param Keys: 索引键值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keys: Array
        # @param Accesses: 索引使用信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Accesses: :class:`Tencentcloud::Tcb.v20180608.models.IndexAccesses`
        # @param Unique: 是否为唯一索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unique: Boolean

        attr_accessor :Name, :Size, :Keys, :Accesses, :Unique

        def initialize(name=nil, size=nil, keys=nil, accesses=nil, unique=nil)
          @Name = name
          @Size = size
          @Keys = keys
          @Accesses = accesses
          @Unique = unique
        end

        def deserialize(params)
          @Name = params['Name']
          @Size = params['Size']
          unless params['Keys'].nil?
            @Keys = []
            params['Keys'].each do |i|
              indexkey_tmp = Indexkey.new
              indexkey_tmp.deserialize(i)
              @Keys << indexkey_tmp
            end
          end
          unless params['Accesses'].nil?
            @Accesses = IndexAccesses.new
            @Accesses.deserialize(params['Accesses'])
          end
          @Unique = params['Unique']
        end
      end

      # 索引的key值
      class Indexkey < TencentCloud::Common::AbstractModel
        # @param Name: 键名
        # @type Name: String
        # @param Direction: 方向：specify 1 for ascending or -1 for descending
        # @type Direction: String

        attr_accessor :Name, :Direction

        def initialize(name=nil, direction=nil)
          @Name = name
          @Direction = direction
        end

        def deserialize(params)
          @Name = params['Name']
          @Direction = params['Direction']
        end
      end

      # 键值对
      class KVPair < TencentCloud::Common::AbstractModel
        # @param Key: 键
        # @type Key: String
        # @param Value: 值
        # @type Value: String

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

      # ListTables请求参数结构体
      class ListTablesRequest < TencentCloud::Common::AbstractModel
        # @param MgoLimit: 每页返回数量（0-1000)
        # @type MgoLimit: Integer
        # @param Tag: FlexDB实例ID
        # @type Tag: String
        # @param MgoOffset: 分页偏移量
        # @type MgoOffset: Integer
        # @param Filters: 过滤标签数组，用于过滤表名，可选值如：HIDDEN、WEDA、WEDA_SYSTEM
        # @type Filters: Array
        # @param SearchValue: 模糊搜索查询值
        # @type SearchValue: String
        # @param ShowHidden: 是否展示隐藏表
        # @type ShowHidden: Boolean
        # @param EnvId: 云开发环境ID
        # @type EnvId: String
        # @param MongoConnector: mongo连接器信息
        # @type MongoConnector: :class:`Tencentcloud::Tcb.v20180608.models.MongoConnector`

        attr_accessor :MgoLimit, :Tag, :MgoOffset, :Filters, :SearchValue, :ShowHidden, :EnvId, :MongoConnector

        def initialize(mgolimit=nil, tag=nil, mgooffset=nil, filters=nil, searchvalue=nil, showhidden=nil, envid=nil, mongoconnector=nil)
          @MgoLimit = mgolimit
          @Tag = tag
          @MgoOffset = mgooffset
          @Filters = filters
          @SearchValue = searchvalue
          @ShowHidden = showhidden
          @EnvId = envid
          @MongoConnector = mongoconnector
        end

        def deserialize(params)
          @MgoLimit = params['MgoLimit']
          @Tag = params['Tag']
          @MgoOffset = params['MgoOffset']
          @Filters = params['Filters']
          @SearchValue = params['SearchValue']
          @ShowHidden = params['ShowHidden']
          @EnvId = params['EnvId']
          unless params['MongoConnector'].nil?
            @MongoConnector = MongoConnector.new
            @MongoConnector.deserialize(params['MongoConnector'])
          end
        end
      end

      # ListTables返回参数结构体
      class ListTablesResponse < TencentCloud::Common::AbstractModel
        # @param Tables: 表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tables: Array
        # @param Pager: 分页信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pager: :class:`Tencentcloud::Tcb.v20180608.models.Pager`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tables, :Pager, :RequestId

        def initialize(tables=nil, pager=nil, requestid=nil)
          @Tables = tables
          @Pager = pager
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tables'].nil?
            @Tables = []
            params['Tables'].each do |i|
              tableinfo_tmp = TableInfo.new
              tableinfo_tmp.deserialize(i)
              @Tables << tableinfo_tmp
            end
          end
          unless params['Pager'].nil?
            @Pager = Pager.new
            @Pager.deserialize(params['Pager'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CLS日志单条信息
      class LogObject < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志属于的 topic ID
        # @type TopicId: String
        # @param TopicName: 日志主题的名字
        # @type TopicName: String
        # @param Timestamp: 日志时间
        # @type Timestamp: String
        # @param Content: 日志内容
        # @type Content: String
        # @param FileName: 采集路径
        # @type FileName: String
        # @param Source: 日志来源设备
        # @type Source: String

        attr_accessor :TopicId, :TopicName, :Timestamp, :Content, :FileName, :Source

        def initialize(topicid=nil, topicname=nil, timestamp=nil, content=nil, filename=nil, source=nil)
          @TopicId = topicid
          @TopicName = topicname
          @Timestamp = timestamp
          @Content = content
          @FileName = filename
          @Source = source
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @Timestamp = params['Timestamp']
          @Content = params['Content']
          @FileName = params['FileName']
          @Source = params['Source']
        end
      end

      # CLS日志结果
      class LogResObject < TencentCloud::Common::AbstractModel
        # @param Context: 获取更多检索结果的游标
        # @type Context: String
        # @param ListOver: 搜索结果是否已经全部返回
        # @type ListOver: Boolean
        # @param Results: 日志内容信息
        # @type Results: Array
        # @param AnalysisRecords: 日志聚合结果
        # @type AnalysisRecords: Array

        attr_accessor :Context, :ListOver, :Results, :AnalysisRecords

        def initialize(context=nil, listover=nil, results=nil, analysisrecords=nil)
          @Context = context
          @ListOver = listover
          @Results = results
          @AnalysisRecords = analysisrecords
        end

        def deserialize(params)
          @Context = params['Context']
          @ListOver = params['ListOver']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              logobject_tmp = LogObject.new
              logobject_tmp.deserialize(i)
              @Results << logobject_tmp
            end
          end
          @AnalysisRecords = params['AnalysisRecords']
        end
      end

      # 云日志服务相关信息
      class LogServiceInfo < TencentCloud::Common::AbstractModel
        # @param LogsetName: log名
        # @type LogsetName: String
        # @param LogsetId: log-id
        # @type LogsetId: String
        # @param TopicName: topic名
        # @type TopicName: String
        # @param TopicId: topic-id
        # @type TopicId: String
        # @param Region: cls日志所属地域
        # @type Region: String
        # @param Period: topic保存时长 默认7天
        # @type Period: Integer

        attr_accessor :LogsetName, :LogsetId, :TopicName, :TopicId, :Region, :Period

        def initialize(logsetname=nil, logsetid=nil, topicname=nil, topicid=nil, region=nil, period=nil)
          @LogsetName = logsetname
          @LogsetId = logsetid
          @TopicName = topicname
          @TopicId = topicid
          @Region = region
          @Period = period
        end

        def deserialize(params)
          @LogsetName = params['LogsetName']
          @LogsetId = params['LogsetId']
          @TopicName = params['TopicName']
          @TopicId = params['TopicId']
          @Region = params['Region']
          @Period = params['Period']
        end
      end

      # 待执行命令
      class MgoCommandParam < TencentCloud::Common::AbstractModel
        # @param TableName: 表名
        # @type TableName: String
        # @param CommandType: 操作类型，可选类型为：UPDATE/QUERY/INSERT/DELETE/COMMAND，本操作必须按实际填写，监控会依赖该字段统计本次操作的类型，并实时减少用户配额，如果填写错误会误扣用户请求配额
        # @type CommandType: String
        # @param Command: 待执行命令
        # @type Command: String

        attr_accessor :TableName, :CommandType, :Command

        def initialize(tablename=nil, commandtype=nil, command=nil)
          @TableName = tablename
          @CommandType = commandtype
          @Command = command
        end

        def deserialize(params)
          @TableName = params['TableName']
          @CommandType = params['CommandType']
          @Command = params['Command']
        end
      end

      # 本类型用于UpdateTable接口中描述待创建索引信息
      class MgoIndexKeys < TencentCloud::Common::AbstractModel
        # @param Name: 无
        # @type Name: String
        # @param Direction: 无
        # @type Direction: String

        attr_accessor :Name, :Direction

        def initialize(name=nil, direction=nil)
          @Name = name
          @Direction = direction
        end

        def deserialize(params)
          @Name = params['Name']
          @Direction = params['Direction']
        end
      end

      # 本类型用于接口中描述待创建索引结构
      class MgoKeySchema < TencentCloud::Common::AbstractModel
        # @param MgoIndexKeys: 索引字段
        # @type MgoIndexKeys: Array
        # @param MgoIsUnique: 是否唯一索引
        # @type MgoIsUnique: Boolean
        # @param MgoIsSparse: 是否稀疏索引
        # @type MgoIsSparse: Boolean

        attr_accessor :MgoIndexKeys, :MgoIsUnique, :MgoIsSparse

        def initialize(mgoindexkeys=nil, mgoisunique=nil, mgoissparse=nil)
          @MgoIndexKeys = mgoindexkeys
          @MgoIsUnique = mgoisunique
          @MgoIsSparse = mgoissparse
        end

        def deserialize(params)
          unless params['MgoIndexKeys'].nil?
            @MgoIndexKeys = []
            params['MgoIndexKeys'].each do |i|
              mgoindexkeys_tmp = MgoIndexKeys.new
              mgoindexkeys_tmp.deserialize(i)
              @MgoIndexKeys << mgoindexkeys_tmp
            end
          end
          @MgoIsUnique = params['MgoIsUnique']
          @MgoIsSparse = params['MgoIsSparse']
        end
      end

      # ModifyCloudBaseGWAPI请求参数结构体
      class ModifyCloudBaseGWAPIRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: Service ID
        # @type ServiceId: String
        # @param APIId: API ID
        # @type APIId: String
        # @param Options: 选项列表，key取值：domain, path。
        # @type Options: Array

        attr_accessor :ServiceId, :APIId, :Options

        def initialize(serviceid=nil, apiid=nil, options=nil)
          @ServiceId = serviceid
          @APIId = apiid
          @Options = options
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @APIId = params['APIId']
          unless params['Options'].nil?
            @Options = []
            params['Options'].each do |i|
              cloudbaseoption_tmp = CloudBaseOption.new
              cloudbaseoption_tmp.deserialize(i)
              @Options << cloudbaseoption_tmp
            end
          end
        end
      end

      # ModifyCloudBaseGWAPI返回参数结构体
      class ModifyCloudBaseGWAPIResponse < TencentCloud::Common::AbstractModel
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

      # ModifyClsTopic请求参数结构体
      class ModifyClsTopicRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param Period: 日志生命周期，单位天，可取值范围1~3600，取值为3640时代表永久保存
        # @type Period: Integer

        attr_accessor :EnvId, :Period

        def initialize(envid=nil, period=nil)
          @EnvId = envid
          @Period = period
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Period = params['Period']
        end
      end

      # ModifyClsTopic返回参数结构体
      class ModifyClsTopicResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDatabaseACL请求参数结构体
      class ModifyDatabaseACLRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param CollectionName: 集合名称
        # @type CollectionName: String
        # @param AclTag: 权限标签。包含以下取值：
        # <li> READONLY：所有用户可读，仅创建者和管理员可写</li>
        # <li> PRIVATE：仅创建者及管理员可读写</li>
        # <li> ADMINWRITE：所有用户可读，仅管理员可写</li>
        # <li> ADMINONLY：仅管理员可读写</li>
        # @type AclTag: String

        attr_accessor :EnvId, :CollectionName, :AclTag

        def initialize(envid=nil, collectionname=nil, acltag=nil)
          @EnvId = envid
          @CollectionName = collectionname
          @AclTag = acltag
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @CollectionName = params['CollectionName']
          @AclTag = params['AclTag']
        end
      end

      # ModifyDatabaseACL返回参数结构体
      class ModifyDatabaseACLResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEnvPlan请求参数结构体
      class ModifyEnvPlanRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 所需变更套餐的环境ID
        # @type EnvId: String
        # @param PackageId: 目标套餐Id。
        # 对于云开发环境套餐，可通过 [DescribeBaasPackageList](https://cloud.tencent.com/document/product/876/78167) 接口获取，对应其出参的PackageName
        # @type PackageId: String
        # @param AutoVoucher: 是否自动选择代金券支付。
        # @type AutoVoucher: Boolean

        attr_accessor :EnvId, :PackageId, :AutoVoucher

        def initialize(envid=nil, packageid=nil, autovoucher=nil)
          @EnvId = envid
          @PackageId = packageid
          @AutoVoucher = autovoucher
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @PackageId = params['PackageId']
          @AutoVoucher = params['AutoVoucher']
        end
      end

      # ModifyEnvPlan返回参数结构体
      class ModifyEnvPlanResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEnv请求参数结构体
      class ModifyEnvRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param Alias: 环境备注名，要以a-z开头，不能包含 a-zA-z0-9- 以外的字符
        # @type Alias: String

        attr_accessor :EnvId, :Alias

        def initialize(envid=nil, _alias=nil)
          @EnvId = envid
          @Alias = _alias
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Alias = params['Alias']
        end
      end

      # ModifyEnv返回参数结构体
      class ModifyEnvResponse < TencentCloud::Common::AbstractModel
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

      # ModifySafeRule请求参数结构体
      class ModifySafeRuleRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param CollectionName: 集合名称
        # @type CollectionName: String
        # @param AclTag: 权限标签。包含以下取值：
        # <li> READONLY：所有用户可读，仅创建者和管理员可写</li>
        # <li> PRIVATE：仅创建者及管理员可读写</li>
        # <li> ADMINWRITE：所有用户可读，仅管理员可写</li>
        # <li> ADMINONLY：仅管理员可读写</li>
        # <li> CUSTOM：自定义安全规则</li>
        # @type AclTag: String
        # @param Rule: 安全规则内容。
        # 当 AclTag=CUSTOM 时，此参数必填。
        # 详情参考：[文档型数据库安全规则](https://docs.cloudbase.net/database/security-rules)
        # @type Rule: String

        attr_accessor :EnvId, :CollectionName, :AclTag, :Rule

        def initialize(envid=nil, collectionname=nil, acltag=nil, rule=nil)
          @EnvId = envid
          @CollectionName = collectionname
          @AclTag = acltag
          @Rule = rule
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @CollectionName = params['CollectionName']
          @AclTag = params['AclTag']
          @Rule = params['Rule']
        end
      end

      # ModifySafeRule返回参数结构体
      class ModifySafeRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUser请求参数结构体
      class ModifyUserRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param Uid: 用户Id, 不做修改
        # @type Uid: String
        # @param Name: 用户名，用户名规则：1. 长度1-64字符 2. 只能包含大小写英文字母、数字和符号 . _ - 3. 只能以字母或数字开头 4. 不能重复，不传该字段或传空字符不修改
        # @type Name: String
        # @param Type: 用户类型：0-内部用户、1-外部用户，默认0（内部用户），不传该字段或传空字符串不修改
        # @type Type: String
        # @param Password: 密码，传入Uid时密码可不传。密码规则：1. 长度8-32字符（推荐12位以上） 2. 不能以特殊字符开头 3. 至少包含以下四项中的三项：小写字母a-z、大写字母A-Z、数字0-9、特殊字符()!@#$%^&*\|?><_-，不传该字段或传空字符串不修改
        # @type Password: String
        # @param UserStatus: 用户状态：ACTIVE（激活）、BLOCKED（冻结），默认冻结，不传该字段或传空字符串不修改
        # @type UserStatus: String
        # @param NickName: 用户昵称，长度2-64字符，不传该字段不修改，传空字符修改为空
        # @type NickName: String
        # @param Phone: 手机号，11位数字，不传该字段不修改，传空字符串修改为空
        # @type Phone: String
        # @param Email: 邮箱地址，不传该字段不修改，传空字符修改为空
        # @type Email: String
        # @param AvatarUrl: 头像链接，可访问的公网URL，不传该字段不修改，传空字符串修改为空
        # @type AvatarUrl: String
        # @param Description: 用户描述，最多200字符，不传该字段不修改，传空字符修改为空
        # @type Description: String

        attr_accessor :EnvId, :Uid, :Name, :Type, :Password, :UserStatus, :NickName, :Phone, :Email, :AvatarUrl, :Description

        def initialize(envid=nil, uid=nil, name=nil, type=nil, password=nil, userstatus=nil, nickname=nil, phone=nil, email=nil, avatarurl=nil, description=nil)
          @EnvId = envid
          @Uid = uid
          @Name = name
          @Type = type
          @Password = password
          @UserStatus = userstatus
          @NickName = nickname
          @Phone = phone
          @Email = email
          @AvatarUrl = avatarurl
          @Description = description
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Uid = params['Uid']
          @Name = params['Name']
          @Type = params['Type']
          @Password = params['Password']
          @UserStatus = params['UserStatus']
          @NickName = params['NickName']
          @Phone = params['Phone']
          @Email = params['Email']
          @AvatarUrl = params['AvatarUrl']
          @Description = params['Description']
        end
      end

      # 修改用户返回值
      class ModifyUserResp < TencentCloud::Common::AbstractModel
        # @param Success: 是否成功
        # @type Success: Boolean

        attr_accessor :Success

        def initialize(success=nil)
          @Success = success
        end

        def deserialize(params)
          @Success = params['Success']
        end
      end

      # ModifyUser返回参数结构体
      class ModifyUserResponse < TencentCloud::Common::AbstractModel
        # @param Data: 修改用户返回值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Tcb.v20180608.models.ModifyUserResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ModifyUserResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # MongoDB连接器配置
      class MongoConnector < TencentCloud::Common::AbstractModel
        # @param InstanceId: 连接器实例ID
        # @type InstanceId: String
        # @param DatabaseName: MongoDB数据库名
        # @type DatabaseName: String

        attr_accessor :InstanceId, :DatabaseName

        def initialize(instanceid=nil, databasename=nil)
          @InstanceId = instanceid
          @DatabaseName = databasename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DatabaseName = params['DatabaseName']
        end
      end

      # MySql 集群详情
      class MySQLClusterDetail < TencentCloud::Common::AbstractModel
        # @param DbClusterId: 集群ID
        # @type DbClusterId: String
        # @param NetInfo: 网络详情
        # @type NetInfo: :class:`Tencentcloud::Tcb.v20180608.models.MySQLNetDetail`
        # @param DbInfo: 数据库详情
        # @type DbInfo: :class:`Tencentcloud::Tcb.v20180608.models.ClusterDetail`

        attr_accessor :DbClusterId, :NetInfo, :DbInfo

        def initialize(dbclusterid=nil, netinfo=nil, dbinfo=nil)
          @DbClusterId = dbclusterid
          @NetInfo = netinfo
          @DbInfo = dbinfo
        end

        def deserialize(params)
          @DbClusterId = params['DbClusterId']
          unless params['NetInfo'].nil?
            @NetInfo = MySQLNetDetail.new
            @NetInfo.deserialize(params['NetInfo'])
          end
          unless params['DbInfo'].nil?
            @DbInfo = ClusterDetail.new
            @DbInfo.deserialize(params['DbInfo'])
          end
        end
      end

      # TDSQL-C网络信息类型
      class MySQLNetDetail < TencentCloud::Common::AbstractModel
        # @param PrivateNetAddress: 内网地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateNetAddress: String
        # @param PubNetAddress: 外网地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PubNetAddress: String
        # @param Net: 网络信息（VPCID/SubnetID）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Net: String
        # @param PubNetAccessEnabled: 是否开通公网
        # @type PubNetAccessEnabled: Boolean
        # @param VpcId: vpc id
        # @type VpcId: String
        # @param VpcName: vpc name
        # @type VpcName: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param SubnetName: 子网名
        # @type SubnetName: String

        attr_accessor :PrivateNetAddress, :PubNetAddress, :Net, :PubNetAccessEnabled, :VpcId, :VpcName, :SubnetId, :SubnetName

        def initialize(privatenetaddress=nil, pubnetaddress=nil, net=nil, pubnetaccessenabled=nil, vpcid=nil, vpcname=nil, subnetid=nil, subnetname=nil)
          @PrivateNetAddress = privatenetaddress
          @PubNetAddress = pubnetaddress
          @Net = net
          @PubNetAccessEnabled = pubnetaccessenabled
          @VpcId = vpcid
          @VpcName = vpcname
          @SubnetId = subnetid
          @SubnetName = subnetname
        end

        def deserialize(params)
          @PrivateNetAddress = params['PrivateNetAddress']
          @PubNetAddress = params['PubNetAddress']
          @Net = params['Net']
          @PubNetAccessEnabled = params['PubNetAccessEnabled']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
        end
      end

      # MySql 任务状态
      class MySQLTaskStatus < TencentCloud::Common::AbstractModel
        # @param Status: SUCCESS | FAILED | PENDING
        # @type Status: String
        # @param StatusDesc: 状态描述
        # @type StatusDesc: String

        attr_accessor :Status, :StatusDesc

        def initialize(status=nil, statusdesc=nil)
          @Status = status
          @StatusDesc = statusdesc
        end

        def deserialize(params)
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
        end
      end

      # 订单信息
      class OrderInfo < TencentCloud::Common::AbstractModel
        # @param TranId: 订单号
        # @type TranId: String
        # @param PackageId: 订单要切换的套餐ID
        # @type PackageId: String
        # @param TranType: 订单类型
        # <li>1 购买</li>
        # <li>2 续费</li>
        # <li>3 变配</li>
        # @type TranType: String
        # @param TranStatus: 订单状态。
        # <li>1未支付</li>
        # <li>2 支付中</li>
        # <li>3 发货中</li>
        # <li>4 发货成功</li>
        # <li>5 发货失败</li>
        # <li>6 已退款</li>
        # <li>7 已取消</li>
        # <li>100 已删除</li>
        # @type TranStatus: String
        # @param UpdateTime: 订单更新时间
        # @type UpdateTime: String
        # @param CreateTime: 订单创建时间
        # @type CreateTime: String
        # @param PayMode: 付费模式.
        # <li>prepayment 预付费</li>
        # <li>postpaid 后付费</li>
        # @type PayMode: String
        # @param ExtensionId: 订单绑定的扩展ID
        # @type ExtensionId: String
        # @param ResourceReady: 资源初始化结果(仅当ExtensionId不为空时有效): successful(初始化成功), failed(初始化失败), doing(初始化进行中), init(准备初始化)
        # @type ResourceReady: String
        # @param Flag: 安装标记。建议使用方统一转大小写之后再判断。
        # <li>QuickStart：快速启动来源</li>
        # <li>Activity：活动来源</li>
        # @type Flag: String
        # @param ReqBody: 下单时的参数
        # @type ReqBody: String

        attr_accessor :TranId, :PackageId, :TranType, :TranStatus, :UpdateTime, :CreateTime, :PayMode, :ExtensionId, :ResourceReady, :Flag, :ReqBody

        def initialize(tranid=nil, packageid=nil, trantype=nil, transtatus=nil, updatetime=nil, createtime=nil, paymode=nil, extensionid=nil, resourceready=nil, flag=nil, reqbody=nil)
          @TranId = tranid
          @PackageId = packageid
          @TranType = trantype
          @TranStatus = transtatus
          @UpdateTime = updatetime
          @CreateTime = createtime
          @PayMode = paymode
          @ExtensionId = extensionid
          @ResourceReady = resourceready
          @Flag = flag
          @ReqBody = reqbody
        end

        def deserialize(params)
          @TranId = params['TranId']
          @PackageId = params['PackageId']
          @TranType = params['TranType']
          @TranStatus = params['TranStatus']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @PayMode = params['PayMode']
          @ExtensionId = params['ExtensionId']
          @ResourceReady = params['ResourceReady']
          @Flag = params['Flag']
          @ReqBody = params['ReqBody']
        end
      end

      # 分页信息
      class Pager < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Offset: Integer
        # @param Limit: 每页返回记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Limit: Integer
        # @param Total: 文档集合总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer

        attr_accessor :Offset, :Limit, :Total

        def initialize(offset=nil, limit=nil, total=nil)
          @Offset = offset
          @Limit = limit
          @Total = total
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Total = params['Total']
        end
      end

      # FlexDB数据库权限信息
      class PermissionInfo < TencentCloud::Common::AbstractModel
        # @param AclTag: "READONLY",   //公有读，私有写。所有用户可读，仅创建者及管理员可写
        # "PRIVATE",    //私有读写，仅创建者及管理员可读写
        # "ADMINWRITE", //所有用户可读，仅管理员可写
        # "ADMINONLY",  //仅管理员可操作
        # "CUSTOM",     // 安全规则
        # @type AclTag: String
        # @param EnvId: 云开发环境ID
        # @type EnvId: String
        # @param Rule: 自定义规则
        # @type Rule: String

        attr_accessor :AclTag, :EnvId, :Rule

        def initialize(acltag=nil, envid=nil, rule=nil)
          @AclTag = acltag
          @EnvId = envid
          @Rule = rule
        end

        def deserialize(params)
          @AclTag = params['AclTag']
          @EnvId = params['EnvId']
          @Rule = params['Rule']
        end
      end

      # ReinstateEnv请求参数结构体
      class ReinstateEnvRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String

        attr_accessor :EnvId

        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # ReinstateEnv返回参数结构体
      class ReinstateEnvResponse < TencentCloud::Common::AbstractModel
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

      # RenewEnv请求参数结构体
      class RenewEnvRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param Period: 续费周期，单位：月。
        # 默认值为 1，即续费1个月。
        # @type Period: Integer
        # @param AutoVoucher: 是否自动选择代金券支付。
        # @type AutoVoucher: Boolean

        attr_accessor :EnvId, :Period, :AutoVoucher

        def initialize(envid=nil, period=nil, autovoucher=nil)
          @EnvId = envid
          @Period = period
          @AutoVoucher = autovoucher
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Period = params['Period']
          @AutoVoucher = params['AutoVoucher']
        end
      end

      # RenewEnv返回参数结构体
      class RenewEnvResponse < TencentCloud::Common::AbstractModel
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

      # RunCommands请求参数结构体
      class RunCommandsRequest < TencentCloud::Common::AbstractModel
        # @param MgoCommands: 待执行命令
        # @type MgoCommands: Array
        # @param Tag: 实例ID
        # @type Tag: String
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param MongoConnector: Mongo连接器实例信息
        # @type MongoConnector: :class:`Tencentcloud::Tcb.v20180608.models.MongoConnector`

        attr_accessor :MgoCommands, :Tag, :EnvId, :MongoConnector

        def initialize(mgocommands=nil, tag=nil, envid=nil, mongoconnector=nil)
          @MgoCommands = mgocommands
          @Tag = tag
          @EnvId = envid
          @MongoConnector = mongoconnector
        end

        def deserialize(params)
          unless params['MgoCommands'].nil?
            @MgoCommands = []
            params['MgoCommands'].each do |i|
              mgocommandparam_tmp = MgoCommandParam.new
              mgocommandparam_tmp.deserialize(i)
              @MgoCommands << mgocommandparam_tmp
            end
          end
          @Tag = params['Tag']
          @EnvId = params['EnvId']
          unless params['MongoConnector'].nil?
            @MongoConnector = MongoConnector.new
            @MongoConnector.deserialize(params['MongoConnector'])
          end
        end
      end

      # RunCommands返回参数结构体
      class RunCommandsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果，返回结果为一个json字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # RunSql请求参数结构体
      class RunSqlRequest < TencentCloud::Common::AbstractModel
        # @param Sql: 要执行的SQL语句
        # @type Sql: String
        # @param EnvId: 云开发环境ID
        # @type EnvId: String
        # @param DbInstance: 数据库连接器实例信息
        # @type DbInstance: :class:`Tencentcloud::Tcb.v20180608.models.DbInstance`
        # @param ReadOnly: 是否只读；当 `true` 时仅允许以 `SELECT/WITH/SHOW/DESCRIBE/DESC/EXPLAIN` 开头的 SQL
        # @type ReadOnly: Boolean

        attr_accessor :Sql, :EnvId, :DbInstance, :ReadOnly

        def initialize(sql=nil, envid=nil, dbinstance=nil, readonly=nil)
          @Sql = sql
          @EnvId = envid
          @DbInstance = dbinstance
          @ReadOnly = readonly
        end

        def deserialize(params)
          @Sql = params['Sql']
          @EnvId = params['EnvId']
          unless params['DbInstance'].nil?
            @DbInstance = DbInstance.new
            @DbInstance.deserialize(params['DbInstance'])
          end
          @ReadOnly = params['ReadOnly']
        end
      end

      # RunSql返回参数结构体
      class RunSqlResponse < TencentCloud::Common::AbstractModel
        # @param Items: 查询结果行，每个元素为 JSON 字符串
        # @type Items: Array
        # @param Infos: 列元数据信息，每个元素为 JSON 字符串，字段包含 `name/databaseType/nullable/length/precision/scale`
        # @type Infos: Array
        # @param RowsAffected: 受影响的行数（INSERT/UPDATE/DELETE 等语句）
        # @type RowsAffected: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :Infos, :RowsAffected, :RequestId

        def initialize(items=nil, infos=nil, rowsaffected=nil, requestid=nil)
          @Items = items
          @Infos = infos
          @RowsAffected = rowsaffected
          @RequestId = requestid
        end

        def deserialize(params)
          @Items = params['Items']
          @Infos = params['Infos']
          @RowsAffected = params['RowsAffected']
          @RequestId = params['RequestId']
        end
      end

      # SearchClsLog请求参数结构体
      class SearchClsLogRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境唯一ID
        # @type EnvId: String
        # @param StartTime: 查询起始时间条件
        # @type StartTime: String
        # @param EndTime: 查询结束时间条件
        # @type EndTime: String
        # @param QueryString: 查询语句， 例如查询云函数：(src:app OR src:system) AND log:\"START RequestId*\"，  聚合云函数请求状态：* | select request_id, max(status_code) as status  where ((request_id='44738f94-16dd-11f1-****' AND retry_num=0) AND retry_num=0)) AND status_code!=202 group by request_id, retry_num 查询云数据库[文档型]：module:database， 查询云数据库[文档型]事件：module:database AND eventType:(MongoSlowQuery)，MongoSlowQuery为文档型数据库慢查询事件 查询云数据库[SQL型]：module:rdb， 查询云数据库[SQL型]事件：module:rdb AND eventType:(MysqlFreeze OR MysqlRecover OR MysqlSlowQuery)，MysqlFreeze为mysql数据库冻结事件、MysqlRecover为mysql数据库恢复事件、MysqlSlowQuery为mysql数据库慢查询事件 查询审批流：module:workflow， 查询模型：module:model， 查询用户权限：module:auth， 查询大模型：module:llm AND logType:llm-tracelog 查询网关服务调用：logType:accesslog 查询应用发布/删除事件：module:app AND eventType:(AppProdPub OR AppProdDel)，AppProdPub为应用发布事件，AppProdDel为应用删除事件 以上仅为示例语句，实际使用时请根据具体日志内容进行调整，查询语句需严格遵循CLS（Cloud Log Service）语法规范 详细的语法规则请参考官方档：https://cloud.tencent.com/document/product/614/47044
        # @type QueryString: String
        # @param Limit: 单次要返回的日志条数，单次返回的最大条数为100
        # @type Limit: Integer
        # @param Context: 加载更多使用，透传上次返回的 context 值，获取后续的日志内容，通过游标最多可获取10000条，请尽可能缩小时间范围
        # @type Context: String
        # @param Sort: 按时间排序 asc（升序）或者 desc（降序），默认为 desc
        # @type Sort: String
        # @param UseLucene: 是否使用Lucene语法，默认为false
        # @type UseLucene: Boolean

        attr_accessor :EnvId, :StartTime, :EndTime, :QueryString, :Limit, :Context, :Sort, :UseLucene

        def initialize(envid=nil, starttime=nil, endtime=nil, querystring=nil, limit=nil, context=nil, sort=nil, uselucene=nil)
          @EnvId = envid
          @StartTime = starttime
          @EndTime = endtime
          @QueryString = querystring
          @Limit = limit
          @Context = context
          @Sort = sort
          @UseLucene = uselucene
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @QueryString = params['QueryString']
          @Limit = params['Limit']
          @Context = params['Context']
          @Sort = params['Sort']
          @UseLucene = params['UseLucene']
        end
      end

      # SearchClsLog返回参数结构体
      class SearchClsLogResponse < TencentCloud::Common::AbstractModel
        # @param LogResults: 日志内容结果
        # @type LogResults: :class:`Tencentcloud::Tcb.v20180608.models.LogResObject`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogResults, :RequestId

        def initialize(logresults=nil, requestid=nil)
          @LogResults = logresults
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LogResults'].nil?
            @LogResults = LogResObject.new
            @LogResults.deserialize(params['LogResults'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 静态CDN资源信息
      class StaticStorageInfo < TencentCloud::Common::AbstractModel
        # @param StaticDomain: 静态CDN域名
        # @type StaticDomain: String
        # @param DefaultDirName: 静态CDN默认文件夹，当前为根目录
        # @type DefaultDirName: String
        # @param Status: 资源状态(process/online/offline/init)
        # @type Status: String
        # @param Region: cos所属区域
        # @type Region: String
        # @param Bucket: bucket信息
        # @type Bucket: String

        attr_accessor :StaticDomain, :DefaultDirName, :Status, :Region, :Bucket

        def initialize(staticdomain=nil, defaultdirname=nil, status=nil, region=nil, bucket=nil)
          @StaticDomain = staticdomain
          @DefaultDirName = defaultdirname
          @Status = status
          @Region = region
          @Bucket = bucket
        end

        def deserialize(params)
          @StaticDomain = params['StaticDomain']
          @DefaultDirName = params['DefaultDirName']
          @Status = params['Status']
          @Region = params['Region']
          @Bucket = params['Bucket']
        end
      end

      # 静态托管资源信息
      class StaticStoreInfo < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvId: String
        # @param CdnDomain: 静态域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CdnDomain: String
        # @param Bucket: COS桶
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bucket: String
        # @param Regoin: cos区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Regoin: String
        # @param Status: 资源状态:init(初始化)/process(处理中)/online(上线)/destroying(销毁中)/offline(下线))
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String

        attr_accessor :EnvId, :CdnDomain, :Bucket, :Regoin, :Status, :Region
        extend Gem::Deprecate
        deprecate :Regoin, :none, 2026, 3
        deprecate :Regoin=, :none, 2026, 3

        def initialize(envid=nil, cdndomain=nil, bucket=nil, regoin=nil, status=nil, region=nil)
          @EnvId = envid
          @CdnDomain = cdndomain
          @Bucket = bucket
          @Regoin = regoin
          @Status = status
          @Region = region
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @CdnDomain = params['CdnDomain']
          @Bucket = params['Bucket']
          @Regoin = params['Regoin']
          @Status = params['Status']
          @Region = params['Region']
        end
      end

      # StorageInfo 资源信息
      class StorageInfo < TencentCloud::Common::AbstractModel
        # @param Region: 资源所属地域。
        # 当前支持ap-shanghai
        # @type Region: String
        # @param Bucket: 桶名，存储资源的唯一标识
        # @type Bucket: String
        # @param CdnDomain: cdn 域名
        # @type CdnDomain: String
        # @param AppId: 资源所属用户的腾讯云appId
        # @type AppId: String

        attr_accessor :Region, :Bucket, :CdnDomain, :AppId

        def initialize(region=nil, bucket=nil, cdndomain=nil, appid=nil)
          @Region = region
          @Bucket = bucket
          @CdnDomain = cdndomain
          @AppId = appid
        end

        def deserialize(params)
          @Region = params['Region']
          @Bucket = params['Bucket']
          @CdnDomain = params['CdnDomain']
          @AppId = params['AppId']
        end
      end

      # 表信息
      class TableInfo < TencentCloud::Common::AbstractModel
        # @param TableName: 表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param Count: 表中文档数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param Size: 表的大小（即表中文档总大小），单位：字节
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Integer
        # @param IndexCount: 索引数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexCount: Integer
        # @param IndexSize: 索引占用空间，单位：字节
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexSize: Integer

        attr_accessor :TableName, :Count, :Size, :IndexCount, :IndexSize

        def initialize(tablename=nil, count=nil, size=nil, indexcount=nil, indexsize=nil)
          @TableName = tablename
          @Count = count
          @Size = size
          @IndexCount = indexcount
          @IndexSize = indexsize
        end

        def deserialize(params)
          @TableName = params['TableName']
          @Count = params['Count']
          @Size = params['Size']
          @IndexCount = params['IndexCount']
          @IndexSize = params['IndexSize']
        end
      end

      # 标签键值对
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签键
        # @type Key: String
        # @param Value: 标签值
        # @type Value: String

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

      # tke集群信息
      class TkeClusterInfo < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param VpcId: 集群的vpcId
        # @type VpcId: String
        # @param VersionClbSubnetId: 版本内网CLB所在子网Id
        # @type VersionClbSubnetId: String

        attr_accessor :ClusterId, :VpcId, :VersionClbSubnetId

        def initialize(clusterid=nil, vpcid=nil, versionclbsubnetid=nil)
          @ClusterId = clusterid
          @VpcId = vpcid
          @VersionClbSubnetId = versionclbsubnetid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @VpcId = params['VpcId']
          @VersionClbSubnetId = params['VersionClbSubnetId']
        end
      end

      # UpdateTable请求参数结构体
      class UpdateTableRequest < TencentCloud::Common::AbstractModel
        # @param TableName: 表名
        # @type TableName: String
        # @param Tag: FlexDB实例ID
        # @type Tag: String
        # @param DropIndexes: 待删除索引信息
        # @type DropIndexes: Array
        # @param CreateIndexes: 待创建索引信息
        # @type CreateIndexes: Array
        # @param EnvId: 云开发环境ID
        # @type EnvId: String
        # @param MongoConnector: MongoDB连接器配置
        # @type MongoConnector: :class:`Tencentcloud::Tcb.v20180608.models.MongoConnector`

        attr_accessor :TableName, :Tag, :DropIndexes, :CreateIndexes, :EnvId, :MongoConnector

        def initialize(tablename=nil, tag=nil, dropindexes=nil, createindexes=nil, envid=nil, mongoconnector=nil)
          @TableName = tablename
          @Tag = tag
          @DropIndexes = dropindexes
          @CreateIndexes = createindexes
          @EnvId = envid
          @MongoConnector = mongoconnector
        end

        def deserialize(params)
          @TableName = params['TableName']
          @Tag = params['Tag']
          unless params['DropIndexes'].nil?
            @DropIndexes = []
            params['DropIndexes'].each do |i|
              dropindex_tmp = DropIndex.new
              dropindex_tmp.deserialize(i)
              @DropIndexes << dropindex_tmp
            end
          end
          unless params['CreateIndexes'].nil?
            @CreateIndexes = []
            params['CreateIndexes'].each do |i|
              createindex_tmp = CreateIndex.new
              createindex_tmp.deserialize(i)
              @CreateIndexes << createindex_tmp
            end
          end
          @EnvId = params['EnvId']
          unless params['MongoConnector'].nil?
            @MongoConnector = MongoConnector.new
            @MongoConnector.deserialize(params['MongoConnector'])
          end
        end
      end

      # UpdateTable返回参数结构体
      class UpdateTableResponse < TencentCloud::Common::AbstractModel
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

      # 用户信息
      class User < TencentCloud::Common::AbstractModel
        # @param Uid: 用户ID
        # @type Uid: String
        # @param Name: 用户名
        # @type Name: String
        # @param Type: 用户类型：internalUser-内部用户、externalUser-外部用户
        # @type Type: String
        # @param UserStatus: 用户状态：ACTIVE（激活）、BLOCKED（冻结）
        # @type UserStatus: String
        # @param NickName: 用户昵称
        # @type NickName: String
        # @param Phone: 手机号
        # @type Phone: String
        # @param Email: 邮箱
        # @type Email: String
        # @param AvatarUrl: 头像链接
        # @type AvatarUrl: String
        # @param Description: 用户描述
        # @type Description: String

        attr_accessor :Uid, :Name, :Type, :UserStatus, :NickName, :Phone, :Email, :AvatarUrl, :Description

        def initialize(uid=nil, name=nil, type=nil, userstatus=nil, nickname=nil, phone=nil, email=nil, avatarurl=nil, description=nil)
          @Uid = uid
          @Name = name
          @Type = type
          @UserStatus = userstatus
          @NickName = nickname
          @Phone = phone
          @Email = email
          @AvatarUrl = avatarurl
          @Description = description
        end

        def deserialize(params)
          @Uid = params['Uid']
          @Name = params['Name']
          @Type = params['Type']
          @UserStatus = params['UserStatus']
          @NickName = params['NickName']
          @Phone = params['Phone']
          @Email = params['Email']
          @AvatarUrl = params['AvatarUrl']
          @Description = params['Description']
        end
      end

    end
  end
end

