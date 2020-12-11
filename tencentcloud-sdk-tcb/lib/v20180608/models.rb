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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CommonServiceAPI请求参数结构体
      class CommonServiceAPIRequest < TencentCloud::Common::AbstractModel
        # @param Service: Service名，需要转发访问的接口名
        # @type Service: String
        # @param JSONData: 需要转发的云API参数，要转成JSON格式
        # @type JSONData: String

        attr_accessor :Service, :JSONData
        
        def initialize(service=nil, jsondata=nil)
          @Service = service
          @JSONData = jsondata
        end

        def deserialize(params)
          @Service = params['Service']
          @JSONData = params['JSONData']
        end
      end

      # CommonServiceAPI返回参数结构体
      class CommonServiceAPIResponse < TencentCloud::Common::AbstractModel
        # @param JSONResp: json格式response
        # @type JSONResp: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JSONResp, :RequestId
        
        def initialize(jsonresp=nil, requestid=nil)
          @JSONResp = jsonresp
          @RequestId = requestid
        end

        def deserialize(params)
          @JSONResp = params['JSONResp']
          @RequestId = params['RequestId']
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

      # CreatePostpayPackage请求参数结构体
      class CreatePostpayPackageRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param WxAppId: 微信 AppId，微信必传
        # @type WxAppId: String
        # @param Source: 付费来源
        # <li>miniapp</li>
        # <li>qcloud</li>
        # @type Source: String
        # @param FreeQuota: 用户享有的免费额度级别，目前只能为“basic”，不传该字段或该字段为空，标识不享受免费额度。
        # @type FreeQuota: String
        # @param Alias: 环境别名，要以a-z开头，不能包含 a-zA-z0-9- 以外的字符
        # @type Alias: String
        # @param EnvSource: 环境创建来源，取值：
        # <li>miniapp</li>
        # <li>qcloud</li>
        # 用法同CreateEnv接口的Source参数
        # 和 Channel 参数同时传，或者同时不传；EnvId 为空时必传。
        # @type EnvSource: String
        # @param Channel: 如果envsource为miniapp, channel可以为ide或api;
        # 如果envsource为qcloud, channel可以为qc_console,cocos, qq, cloudgame,dcloud
        # 和 EnvSource 参数同时传，或者同时不传；EnvId 为空时必传。
        # @type Channel: String

        attr_accessor :EnvId, :WxAppId, :Source, :FreeQuota, :Alias, :EnvSource, :Channel
        
        def initialize(envid=nil, wxappid=nil, source=nil, freequota=nil, alias=nil, envsource=nil, channel=nil)
          @EnvId = envid
          @WxAppId = wxappid
          @Source = source
          @FreeQuota = freequota
          @Alias = alias
          @EnvSource = envsource
          @Channel = channel
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @WxAppId = params['WxAppId']
          @Source = params['Source']
          @FreeQuota = params['FreeQuota']
          @Alias = params['Alias']
          @EnvSource = params['EnvSource']
          @Channel = params['Channel']
        end
      end

      # CreatePostpayPackage返回参数结构体
      class CreatePostpayPackageResponse < TencentCloud::Common::AbstractModel
        # @param TranId: 后付费订单号
        # @type TranId: String
        # @param EnvId: 环境ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TranId, :EnvId, :RequestId
        
        def initialize(tranid=nil, envid=nil, requestid=nil)
          @TranId = tranid
          @EnvId = envid
          @RequestId = requestid
        end

        def deserialize(params)
          @TranId = params['TranId']
          @EnvId = params['EnvId']
          @RequestId = params['RequestId']
        end
      end

      # CreateStaticStore请求参数结构体
      class CreateStaticStoreRequest < TencentCloud::Common::AbstractModel
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

      # CreateStaticStore返回参数结构体
      class CreateStaticStoreResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建静态资源结果(succ/fail)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

        attr_accessor :InstanceId, :Status, :Region
        
        def initialize(instanceid=nil, status=nil, region=nil)
          @InstanceId = instanceid
          @Status = status
          @Region = region
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Status = params['Status']
          @Region = params['Region']
        end
      end

      # DeleteEndUser请求参数结构体
      class DeleteEndUserRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param UserList: 用户列表，每一项都是uuid
        # @type UserList: Array

        attr_accessor :EnvId, :UserList
        
        def initialize(envid=nil, userlist=nil)
          @EnvId = envid
          @UserList = userlist
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @UserList = params['UserList']
        end
      end

      # DeleteEndUser返回参数结构体
      class DeleteEndUserResponse < TencentCloud::Common::AbstractModel
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
        # @param Domains: 安全域名列表列表
        # @type Domains: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Domains, :RequestId
        
        def initialize(domains=nil, requestid=nil)
          @Domains = domains
          @RequestId = requestid
        end

        def deserialize(params)
          @Domains = params['Domains']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeEndUserLoginStatistic请求参数结构体
      class DescribeEndUserLoginStatisticRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境id
        # @type EnvId: String
        # @param Source: 终端用户来源
        # <li> qcloud </li>
        # <li>miniapp</li>
        # @type Source: String

        attr_accessor :EnvId, :Source
        
        def initialize(envid=nil, source=nil)
          @EnvId = envid
          @Source = source
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Source = params['Source']
        end
      end

      # DescribeEndUserLoginStatistic返回参数结构体
      class DescribeEndUserLoginStatisticResponse < TencentCloud::Common::AbstractModel
        # @param LoginStatistics: 环境终端用户新增与登录统计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoginStatistics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoginStatistics, :RequestId
        
        def initialize(loginstatistics=nil, requestid=nil)
          @LoginStatistics = loginstatistics
          @RequestId = requestid
        end

        def deserialize(params)
          @LoginStatistics = params['LoginStatistics']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEndUserStatistic请求参数结构体
      class DescribeEndUserStatisticRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境id
        # @type EnvId: String

        attr_accessor :EnvId
        
        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribeEndUserStatistic返回参数结构体
      class DescribeEndUserStatisticResponse < TencentCloud::Common::AbstractModel
        # @param PlatformStatistics: 终端用户各平台统计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlatformStatistics: Array
        # @param TotalCount: 终端用户总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlatformStatistics, :TotalCount, :RequestId
        
        def initialize(platformstatistics=nil, totalcount=nil, requestid=nil)
          @PlatformStatistics = platformstatistics
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @PlatformStatistics = params['PlatformStatistics']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEndUsers请求参数结构体
      class DescribeEndUsersRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 开发者的环境ID
        # @type EnvId: String
        # @param Offset: 可选参数，偏移量，默认 0
        # @type Offset: Integer
        # @param Limit: 可选参数，拉取数量，默认 20
        # @type Limit: Integer
        # @param UUIds: 按照 uuid 列表过滤，最大个数为100
        # @type UUIds: Array

        attr_accessor :EnvId, :Offset, :Limit, :UUIds
        
        def initialize(envid=nil, offset=nil, limit=nil, uuids=nil)
          @EnvId = envid
          @Offset = offset
          @Limit = limit
          @UUIds = uuids
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @UUIds = params['UUIds']
        end
      end

      # DescribeEndUsers返回参数结构体
      class DescribeEndUsersResponse < TencentCloud::Common::AbstractModel
        # @param Total: 用户总数
        # @type Total: Integer
        # @param Users: 用户列表
        # @type Users: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Users, :RequestId
        
        def initialize(total=nil, users=nil, requestid=nil)
          @Total = total
          @Users = users
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @Users = params['Users']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvFreeQuota请求参数结构体
      class DescribeEnvFreeQuotaRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param ResourceTypes: 资源类型：可选值：CDN, COS, FLEXDB, HOSTING, SCF
        # 不传则返回全部资源指标
        # @type ResourceTypes: Array

        attr_accessor :EnvId, :ResourceTypes
        
        def initialize(envid=nil, resourcetypes=nil)
          @EnvId = envid
          @ResourceTypes = resourcetypes
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @ResourceTypes = params['ResourceTypes']
        end
      end

      # DescribeEnvFreeQuota返回参数结构体
      class DescribeEnvFreeQuotaResponse < TencentCloud::Common::AbstractModel
        # @param QuotaItems: 免费抵扣配额详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuotaItems: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QuotaItems, :RequestId
        
        def initialize(quotaitems=nil, requestid=nil)
          @QuotaItems = quotaitems
          @RequestId = requestid
        end

        def deserialize(params)
          @QuotaItems = params['QuotaItems']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaxEnvNum, :CurrentEnvNum, :MaxFreeEnvNum, :CurrentFreeEnvNum, :MaxDeleteTotal, :CurrentDeleteTotal, :MaxDeleteMonthly, :CurrentDeleteMonthly, :RequestId
        
        def initialize(maxenvnum=nil, currentenvnum=nil, maxfreeenvnum=nil, currentfreeenvnum=nil, maxdeletetotal=nil, currentdeletetotal=nil, maxdeletemonthly=nil, currentdeletemonthly=nil, requestid=nil)
          @MaxEnvNum = maxenvnum
          @CurrentEnvNum = currentenvnum
          @MaxFreeEnvNum = maxfreeenvnum
          @CurrentFreeEnvNum = currentfreeenvnum
          @MaxDeleteTotal = maxdeletetotal
          @CurrentDeleteTotal = currentdeletetotal
          @MaxDeleteMonthly = maxdeletemonthly
          @CurrentDeleteMonthly = currentdeletemonthly
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

        attr_accessor :EnvId, :IsVisible, :Channels
        
        def initialize(envid=nil, isvisible=nil, channels=nil)
          @EnvId = envid
          @IsVisible = isvisible
          @Channels = channels
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @IsVisible = params['IsVisible']
          @Channels = params['Channels']
        end
      end

      # DescribeEnvs返回参数结构体
      class DescribeEnvsResponse < TencentCloud::Common::AbstractModel
        # @param EnvList: 环境信息列表
        # @type EnvList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvList, :RequestId
        
        def initialize(envlist=nil, requestid=nil)
          @EnvList = envlist
          @RequestId = requestid
        end

        def deserialize(params)
          @EnvList = params['EnvList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeExtraPkgBillingInfo请求参数结构体
      class DescribeExtraPkgBillingInfoRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 已购买增值包的环境ID
        # @type EnvId: String

        attr_accessor :EnvId
        
        def initialize(envid=nil)
          @EnvId = envid
        end

        def deserialize(params)
          @EnvId = params['EnvId']
        end
      end

      # DescribeExtraPkgBillingInfo返回参数结构体
      class DescribeExtraPkgBillingInfoResponse < TencentCloud::Common::AbstractModel
        # @param EnvInfoList: 增值包计费信息列表
        # @type EnvInfoList: Array
        # @param Total: 增值包数目
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvInfoList, :Total, :RequestId
        
        def initialize(envinfolist=nil, total=nil, requestid=nil)
          @EnvInfoList = envinfolist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @EnvInfoList = params['EnvInfoList']
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribePostpayPackageFreeQuotas请求参数结构体
      class DescribePostpayPackageFreeQuotasRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param FreeQuotaType: 免费额度类型标识
        # @type FreeQuotaType: String

        attr_accessor :EnvId, :FreeQuotaType
        
        def initialize(envid=nil, freequotatype=nil)
          @EnvId = envid
          @FreeQuotaType = freequotatype
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @FreeQuotaType = params['FreeQuotaType']
        end
      end

      # DescribePostpayPackageFreeQuotas返回参数结构体
      class DescribePostpayPackageFreeQuotasResponse < TencentCloud::Common::AbstractModel
        # @param PackageFreeQuotaInfos: 免费量资源信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageFreeQuotaInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PackageFreeQuotaInfos, :RequestId
        
        def initialize(packagefreequotainfos=nil, requestid=nil)
          @PackageFreeQuotaInfos = packagefreequotainfos
          @RequestId = requestid
        end

        def deserialize(params)
          @PackageFreeQuotaInfos = params['PackageFreeQuotaInfos']
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
        # <li> TkeCpuUsedPkg: 当月容器托管CPU使用量，单位核 </li>
        # <li> TkeMemUsedPkg: 当月容器托管内存使用量，单位MB </li>
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MetricName, :Value, :RequestId
        
        def initialize(metricname=nil, value=nil, requestid=nil)
          @MetricName = metricname
          @Value = value
          @RequestId = requestid
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          @Value = params['Value']
          @RequestId = params['RequestId']
        end
      end

      # DestroyEnv请求参数结构体
      class DestroyEnvRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境Id
        # @type EnvId: String
        # @param IsForce: 针对预付费 删除隔离中的环境时要传true 正常环境直接跳过隔离期删除
        # @type IsForce: Boolean

        attr_accessor :EnvId, :IsForce
        
        def initialize(envid=nil, isforce=nil)
          @EnvId = envid
          @IsForce = isforce
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @IsForce = params['IsForce']
        end
      end

      # DestroyEnv返回参数结构体
      class DestroyEnvResponse < TencentCloud::Common::AbstractModel
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 终端用户信息
      class EndUserInfo < TencentCloud::Common::AbstractModel
        # @param UUId: 用户唯一ID
        # @type UUId: String
        # @param WXOpenId: 微信ID
        # @type WXOpenId: String
        # @param QQOpenId: qq ID
        # @type QQOpenId: String
        # @param Phone: 手机号
        # @type Phone: String
        # @param Email: 邮箱
        # @type Email: String
        # @param NickName: 昵称
        # @type NickName: String
        # @param Gender: 性别
        # @type Gender: String
        # @param AvatarUrl: 头像地址
        # @type AvatarUrl: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param IsAnonymous: 是否为匿名用户
        # @type IsAnonymous: Boolean
        # @param IsDisabled: 是否禁用账户
        # @type IsDisabled: Boolean
        # @param HasPassword: 是否设置过密码
        # @type HasPassword: Boolean
        # @param UserName: 用户名
        # @type UserName: String

        attr_accessor :UUId, :WXOpenId, :QQOpenId, :Phone, :Email, :NickName, :Gender, :AvatarUrl, :UpdateTime, :CreateTime, :IsAnonymous, :IsDisabled, :HasPassword, :UserName
        
        def initialize(uuid=nil, wxopenid=nil, qqopenid=nil, phone=nil, email=nil, nickname=nil, gender=nil, avatarurl=nil, updatetime=nil, createtime=nil, isanonymous=nil, isdisabled=nil, haspassword=nil, username=nil)
          @UUId = uuid
          @WXOpenId = wxopenid
          @QQOpenId = qqopenid
          @Phone = phone
          @Email = email
          @NickName = nickname
          @Gender = gender
          @AvatarUrl = avatarurl
          @UpdateTime = updatetime
          @CreateTime = createtime
          @IsAnonymous = isanonymous
          @IsDisabled = isdisabled
          @HasPassword = haspassword
          @UserName = username
        end

        def deserialize(params)
          @UUId = params['UUId']
          @WXOpenId = params['WXOpenId']
          @QQOpenId = params['QQOpenId']
          @Phone = params['Phone']
          @Email = params['Email']
          @NickName = params['NickName']
          @Gender = params['Gender']
          @AvatarUrl = params['AvatarUrl']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @IsAnonymous = params['IsAnonymous']
          @IsDisabled = params['IsDisabled']
          @HasPassword = params['HasPassword']
          @UserName = params['UserName']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentChannel: String
        # @param OrderInfo: 最新的订单信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderInfo: :class:`Tencentcloud::Tcb.v20180608.models.OrderInfo`
        # @param FreeQuota: 免费配额信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FreeQuota: String

        attr_accessor :EnvId, :PackageId, :IsAutoRenew, :Status, :PayMode, :IsolatedTime, :ExpireTime, :CreateTime, :UpdateTime, :IsAlwaysFree, :PaymentChannel, :OrderInfo, :FreeQuota
        
        def initialize(envid=nil, packageid=nil, isautorenew=nil, status=nil, paymode=nil, isolatedtime=nil, expiretime=nil, createtime=nil, updatetime=nil, isalwaysfree=nil, paymentchannel=nil, orderinfo=nil, freequota=nil)
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
            @OrderInfo = OrderInfo.new.deserialize(params[OrderInfo])
          end
          @FreeQuota = params['FreeQuota']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageId: String
        # @param PackageName: 套餐中文名称，参考DescribePackages接口的返回值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageName: String
        # @param LogServices: 云日志服务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogServices: Array
        # @param StaticStorages: 静态资源信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StaticStorages: Array
        # @param IsAutoDegrade: 是否到期自动降为免费版
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAutoDegrade: Boolean
        # @param EnvChannel: 环境渠道
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvChannel: String

        attr_accessor :EnvId, :Source, :Alias, :CreateTime, :UpdateTime, :Status, :Databases, :Storages, :Functions, :PackageId, :PackageName, :LogServices, :StaticStorages, :IsAutoDegrade, :EnvChannel
        
        def initialize(envid=nil, source=nil, alias=nil, createtime=nil, updatetime=nil, status=nil, databases=nil, storages=nil, functions=nil, packageid=nil, packagename=nil, logservices=nil, staticstorages=nil, isautodegrade=nil, envchannel=nil)
          @EnvId = envid
          @Source = source
          @Alias = alias
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
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Source = params['Source']
          @Alias = params['Alias']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @Databases = params['Databases']
          @Storages = params['Storages']
          @Functions = params['Functions']
          @PackageId = params['PackageId']
          @PackageName = params['PackageName']
          @LogServices = params['LogServices']
          @StaticStorages = params['StaticStorages']
          @IsAutoDegrade = params['IsAutoDegrade']
          @EnvChannel = params['EnvChannel']
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

        attr_accessor :LogsetName, :LogsetId, :TopicName, :TopicId, :Region
        
        def initialize(logsetname=nil, logsetid=nil, topicname=nil, topicid=nil, region=nil)
          @LogsetName = logsetname
          @LogsetId = logsetid
          @TopicName = topicname
          @TopicId = topicid
          @Region = region
        end

        def deserialize(params)
          @LogsetName = params['LogsetName']
          @LogsetId = params['LogsetId']
          @TopicName = params['TopicName']
          @TopicId = params['TopicId']
          @Region = params['Region']
        end
      end

      # 终端用户登录新增统计
      class LoginStatistic < TencentCloud::Common::AbstractModel
        # @param StatisticalType: 统计类型 新增NEWUSER 和登录 LOGIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatisticalType: String
        # @param StatisticalCycle: 统计周期：日DAY，周WEEK，月MONTH
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatisticalCycle: String
        # @param Count: 统计总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :StatisticalType, :StatisticalCycle, :Count, :UpdateTime
        
        def initialize(statisticaltype=nil, statisticalcycle=nil, count=nil, updatetime=nil)
          @StatisticalType = statisticaltype
          @StatisticalCycle = statisticalcycle
          @Count = count
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @StatisticalType = params['StatisticalType']
          @StatisticalCycle = params['StatisticalCycle']
          @Count = params['Count']
          @UpdateTime = params['UpdateTime']
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

      # ModifyEndUser请求参数结构体
      class ModifyEndUserRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param UUId: C端用户端的唯一ID
        # @type UUId: String
        # @param Status: 帐号的状态
        # @type Status: String

        attr_accessor :EnvId, :UUId, :Status
        
        def initialize(envid=nil, uuid=nil, status=nil)
          @EnvId = envid
          @UUId = uuid
          @Status = status
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @UUId = params['UUId']
          @Status = params['Status']
        end
      end

      # ModifyEndUser返回参数结构体
      class ModifyEndUserResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEnv请求参数结构体
      class ModifyEnvRequest < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境ID
        # @type EnvId: String
        # @param Alias: 环境备注名，要以a-z开头，不能包含 a-zA-z0-9- 以外的字符
        # @type Alias: String

        attr_accessor :EnvId, :Alias
        
        def initialize(envid=nil, alias=nil)
          @EnvId = envid
          @Alias = alias
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @Alias = params['Alias']
        end
      end

      # ModifyEnv返回参数结构体
      class ModifyEnvResponse < TencentCloud::Common::AbstractModel
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

        attr_accessor :TranId, :PackageId, :TranType, :TranStatus, :UpdateTime, :CreateTime, :PayMode
        
        def initialize(tranid=nil, packageid=nil, trantype=nil, transtatus=nil, updatetime=nil, createtime=nil, paymode=nil)
          @TranId = tranid
          @PackageId = packageid
          @TranType = trantype
          @TranStatus = transtatus
          @UpdateTime = updatetime
          @CreateTime = createtime
          @PayMode = paymode
        end

        def deserialize(params)
          @TranId = params['TranId']
          @PackageId = params['PackageId']
          @TranType = params['TranType']
          @TranStatus = params['TranStatus']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @PayMode = params['PayMode']
        end
      end

      # 后付费免费额度
      class PackageFreeQuotaInfo < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型
        # <li>COS</li>
        # <li>CDN</li>
        # <li>FLEXDB</li>
        # <li>SCF</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param ResourceMetric: 资源指标名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceMetric: String
        # @param FreeQuota: 资源指标免费量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FreeQuota: Integer
        # @param MetricUnit: 指标单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricUnit: String
        # @param DeductType: 免费量抵扣周期
        # <li>sum-month:以月为单位抵扣</li>
        # <li>sum-day:以天为单位抵扣</li>
        # <li>totalize:总容量抵扣</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeductType: String
        # @param FreeQuotaType: 免费量类型
        # <li>basic:通用量抵扣</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FreeQuotaType: String

        attr_accessor :ResourceType, :ResourceMetric, :FreeQuota, :MetricUnit, :DeductType, :FreeQuotaType
        
        def initialize(resourcetype=nil, resourcemetric=nil, freequota=nil, metricunit=nil, deducttype=nil, freequotatype=nil)
          @ResourceType = resourcetype
          @ResourceMetric = resourcemetric
          @FreeQuota = freequota
          @MetricUnit = metricunit
          @DeductType = deducttype
          @FreeQuotaType = freequotatype
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @ResourceMetric = params['ResourceMetric']
          @FreeQuota = params['FreeQuota']
          @MetricUnit = params['MetricUnit']
          @DeductType = params['DeductType']
          @FreeQuotaType = params['FreeQuotaType']
        end
      end

      # 终端用户平台统计信息
      class PlatformStatistic < TencentCloud::Common::AbstractModel
        # @param Platform: 终端用户从属平台
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Platform: String
        # @param Count: 平台终端用户数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :Platform, :Count, :UpdateTime
        
        def initialize(platform=nil, count=nil, updatetime=nil)
          @Platform = platform
          @Count = count
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Platform = params['Platform']
          @Count = params['Count']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 按量付费免费配额信息
      class PostpayEnvQuota < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型
        # @type ResourceType: String
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param Value: 配额值
        # @type Value: Integer
        # @param StartTime: 配额生效时间
        # 为空表示没有时间限制
        # @type StartTime: String
        # @param EndTime: 配额失效时间
        # 为空表示没有时间限制
        # @type EndTime: String

        attr_accessor :ResourceType, :MetricName, :Value, :StartTime, :EndTime
        
        def initialize(resourcetype=nil, metricname=nil, value=nil, starttime=nil, endtime=nil)
          @ResourceType = resourcetype
          @MetricName = metricname
          @Value = value
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @MetricName = params['MetricName']
          @Value = params['Value']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
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

      # 静态CDN资源信息
      class StaticStorageInfo < TencentCloud::Common::AbstractModel
        # @param StaticDomain: 静态CDN域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StaticDomain: String
        # @param DefaultDirName: 静态CDN默认文件夹，当前为根目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultDirName: String
        # @param Status: 资源状态(process/online/offline/init)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Region: cos所属区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Bucket: bucket信息
        # 注意：此字段可能返回 null，表示取不到有效值。
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

    end
  end
end

