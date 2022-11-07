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
  module Tcr
    module V20190924
      # 内网接入信息
      class AccessVpc < TencentCloud::Common::AbstractModel
        # @param VpcId: Vpc的Id
        # @type VpcId: String
        # @param SubnetId: 子网Id
        # @type SubnetId: String
        # @param Status: 内网接入状态
        # @type Status: String
        # @param AccessIp: 内网接入Ip
        # @type AccessIp: String

        attr_accessor :VpcId, :SubnetId, :Status, :AccessIp
        
        def initialize(vpcid=nil, subnetid=nil, status=nil, accessip=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @AccessIp = accessip
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Status = params['Status']
          @AccessIp = params['AccessIp']
        end
      end

      # 自动删除策略信息
      class AutoDelStrategyInfo < TencentCloud::Common::AbstractModel
        # @param Username: 用户名
        # @type Username: String
        # @param RepoName: 仓库名
        # @type RepoName: String
        # @param Type: 类型
        # @type Type: String
        # @param Value: 策略值
        # @type Value: Integer
        # @param Valid: Valid
        # @type Valid: Integer
        # @param CreationTime: 创建时间
        # @type CreationTime: String

        attr_accessor :Username, :RepoName, :Type, :Value, :Valid, :CreationTime
        
        def initialize(username=nil, reponame=nil, type=nil, value=nil, valid=nil, creationtime=nil)
          @Username = username
          @RepoName = reponame
          @Type = type
          @Value = value
          @Valid = valid
          @CreationTime = creationtime
        end

        def deserialize(params)
          @Username = params['Username']
          @RepoName = params['RepoName']
          @Type = params['Type']
          @Value = params['Value']
          @Valid = params['Valid']
          @CreationTime = params['CreationTime']
        end
      end

      # 获取自动删除策略
      class AutoDelStrategyInfoResp < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数目
        # @type TotalCount: Integer
        # @param StrategyInfo: 自动删除策略列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyInfo: Array

        attr_accessor :TotalCount, :StrategyInfo
        
        def initialize(totalcount=nil, strategyinfo=nil)
          @TotalCount = totalcount
          @StrategyInfo = strategyinfo
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['StrategyInfo'].nil?
            @StrategyInfo = []
            params['StrategyInfo'].each do |i|
              autodelstrategyinfo_tmp = AutoDelStrategyInfo.new
              autodelstrategyinfo_tmp.deserialize(i)
              @StrategyInfo << autodelstrategyinfo_tmp
            end
          end
        end
      end

      # BatchDeleteImagePersonal请求参数结构体
      class BatchDeleteImagePersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名称
        # @type RepoName: String
        # @param Tags: Tag列表
        # @type Tags: Array

        attr_accessor :RepoName, :Tags
        
        def initialize(reponame=nil, tags=nil)
          @RepoName = reponame
          @Tags = tags
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @Tags = params['Tags']
        end
      end

      # BatchDeleteImagePersonal返回参数结构体
      class BatchDeleteImagePersonalResponse < TencentCloud::Common::AbstractModel
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

      # BatchDeleteRepositoryPersonal请求参数结构体
      class BatchDeleteRepositoryPersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoNames: 仓库名称数组
        # @type RepoNames: Array

        attr_accessor :RepoNames
        
        def initialize(reponames=nil)
          @RepoNames = reponames
        end

        def deserialize(params)
          @RepoNames = params['RepoNames']
        end
      end

      # BatchDeleteRepositoryPersonal返回参数结构体
      class BatchDeleteRepositoryPersonalResponse < TencentCloud::Common::AbstractModel
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

      # CheckInstanceName请求参数结构体
      class CheckInstanceNameRequest < TencentCloud::Common::AbstractModel
        # @param RegistryName: 待创建的实例名称
        # @type RegistryName: String

        attr_accessor :RegistryName
        
        def initialize(registryname=nil)
          @RegistryName = registryname
        end

        def deserialize(params)
          @RegistryName = params['RegistryName']
        end
      end

      # CheckInstanceName返回参数结构体
      class CheckInstanceNameResponse < TencentCloud::Common::AbstractModel
        # @param IsValidated: 检查结果，true为合法，false为非法
        # @type IsValidated: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsValidated, :RequestId
        
        def initialize(isvalidated=nil, requestid=nil)
          @IsValidated = isvalidated
          @RequestId = requestid
        end

        def deserialize(params)
          @IsValidated = params['IsValidated']
          @RequestId = params['RequestId']
        end
      end

      # CheckInstance请求参数结构体
      class CheckInstanceRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 待检测的实例Id
        # @type RegistryId: String

        attr_accessor :RegistryId
        
        def initialize(registryid=nil)
          @RegistryId = registryid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
        end
      end

      # CheckInstance返回参数结构体
      class CheckInstanceResponse < TencentCloud::Common::AbstractModel
        # @param IsValidated: 检查结果，true为合法，false为非法
        # @type IsValidated: Boolean
        # @param RegionId: 实例所在的RegionId
        # @type RegionId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsValidated, :RegionId, :RequestId
        
        def initialize(isvalidated=nil, regionid=nil, requestid=nil)
          @IsValidated = isvalidated
          @RegionId = regionid
          @RequestId = requestid
        end

        def deserialize(params)
          @IsValidated = params['IsValidated']
          @RegionId = params['RegionId']
          @RequestId = params['RequestId']
        end
      end

      # CreateApplicationTriggerPersonal请求参数结构体
      class CreateApplicationTriggerPersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 触发器关联的镜像仓库，library/test格式
        # @type RepoName: String
        # @param TriggerName: 触发器名称
        # @type TriggerName: String
        # @param InvokeMethod: 触发方式，"all"全部触发，"taglist"指定tag触发，"regex"正则触发
        # @type InvokeMethod: String
        # @param ClusterId: 应用所在TKE集群ID
        # @type ClusterId: String
        # @param Namespace: 应用所在TKE集群命名空间
        # @type Namespace: String
        # @param WorkloadType: 应用所在TKE集群工作负载类型,支持Deployment、StatefulSet、DaemonSet、CronJob、Job。
        # @type WorkloadType: String
        # @param WorkloadName: 应用所在TKE集群工作负载名称
        # @type WorkloadName: String
        # @param ContainerName: 应用所在TKE集群工作负载下容器名称
        # @type ContainerName: String
        # @param ClusterRegion: 应用所在TKE集群地域
        # @type ClusterRegion: Integer
        # @param InvokeExpr: 触发方式对应的表达式
        # @type InvokeExpr: String

        attr_accessor :RepoName, :TriggerName, :InvokeMethod, :ClusterId, :Namespace, :WorkloadType, :WorkloadName, :ContainerName, :ClusterRegion, :InvokeExpr
        
        def initialize(reponame=nil, triggername=nil, invokemethod=nil, clusterid=nil, namespace=nil, workloadtype=nil, workloadname=nil, containername=nil, clusterregion=nil, invokeexpr=nil)
          @RepoName = reponame
          @TriggerName = triggername
          @InvokeMethod = invokemethod
          @ClusterId = clusterid
          @Namespace = namespace
          @WorkloadType = workloadtype
          @WorkloadName = workloadname
          @ContainerName = containername
          @ClusterRegion = clusterregion
          @InvokeExpr = invokeexpr
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @TriggerName = params['TriggerName']
          @InvokeMethod = params['InvokeMethod']
          @ClusterId = params['ClusterId']
          @Namespace = params['Namespace']
          @WorkloadType = params['WorkloadType']
          @WorkloadName = params['WorkloadName']
          @ContainerName = params['ContainerName']
          @ClusterRegion = params['ClusterRegion']
          @InvokeExpr = params['InvokeExpr']
        end
      end

      # CreateApplicationTriggerPersonal返回参数结构体
      class CreateApplicationTriggerPersonalResponse < TencentCloud::Common::AbstractModel
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

      # CreateImageAccelerationService请求参数结构体
      class CreateImageAccelerationServiceRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param VpcId: 创建CFS的归属的VPCID
        # @type VpcId: String
        # @param SubnetId: 创建CFS的归属的子网ID
        # @type SubnetId: String
        # @param StorageType: 创建CFS的存储类型，其中 SD 为标准型存储， HP为性能存储。
        # @type StorageType: String
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String
        # @param Zone: 可用区名称，例如ap-beijing-1，请参考 概览 文档中的地域与可用区列表
        # @type Zone: String
        # @param TagSpecification: 云标签描述
        # @type TagSpecification: :class:`Tencentcloud::Tcr.v20190924.models.TagSpecification`

        attr_accessor :RegistryId, :VpcId, :SubnetId, :StorageType, :PGroupId, :Zone, :TagSpecification
        
        def initialize(registryid=nil, vpcid=nil, subnetid=nil, storagetype=nil, pgroupid=nil, zone=nil, tagspecification=nil)
          @RegistryId = registryid
          @VpcId = vpcid
          @SubnetId = subnetid
          @StorageType = storagetype
          @PGroupId = pgroupid
          @Zone = zone
          @TagSpecification = tagspecification
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @StorageType = params['StorageType']
          @PGroupId = params['PGroupId']
          @Zone = params['Zone']
          unless params['TagSpecification'].nil?
            @TagSpecification = TagSpecification.new
            @TagSpecification.deserialize(params['TagSpecification'])
          end
        end
      end

      # CreateImageAccelerationService返回参数结构体
      class CreateImageAccelerationServiceResponse < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegistryId, :RequestId
        
        def initialize(registryid=nil, requestid=nil)
          @RegistryId = registryid
          @RequestId = requestid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @RequestId = params['RequestId']
        end
      end

      # CreateImageLifecyclePersonal请求参数结构体
      class CreateImageLifecyclePersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名称
        # @type RepoName: String
        # @param Type: keep_last_days:保留最近几天的数据;keep_last_nums:保留最近多少个
        # @type Type: String
        # @param Val: 策略值
        # @type Val: Integer

        attr_accessor :RepoName, :Type, :Val
        
        def initialize(reponame=nil, type=nil, val=nil)
          @RepoName = reponame
          @Type = type
          @Val = val
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @Type = params['Type']
          @Val = params['Val']
        end
      end

      # CreateImageLifecyclePersonal返回参数结构体
      class CreateImageLifecyclePersonalResponse < TencentCloud::Common::AbstractModel
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

      # CreateImmutableTagRules请求参数结构体
      class CreateImmutableTagRulesRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例 Id
        # @type RegistryId: String
        # @param NamespaceName: 命名空间
        # @type NamespaceName: String
        # @param Rule: 规则
        # @type Rule: :class:`Tencentcloud::Tcr.v20190924.models.ImmutableTagRule`

        attr_accessor :RegistryId, :NamespaceName, :Rule
        
        def initialize(registryid=nil, namespacename=nil, rule=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
          @Rule = rule
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
          unless params['Rule'].nil?
            @Rule = ImmutableTagRule.new
            @Rule.deserialize(params['Rule'])
          end
        end
      end

      # CreateImmutableTagRules返回参数结构体
      class CreateImmutableTagRulesResponse < TencentCloud::Common::AbstractModel
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

      # CreateInstanceCustomizedDomain请求参数结构体
      class CreateInstanceCustomizedDomainRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 主实例iD
        # @type RegistryId: String
        # @param DomainName: 自定义域名
        # @type DomainName: String
        # @param CertificateId: 证书ID
        # @type CertificateId: String

        attr_accessor :RegistryId, :DomainName, :CertificateId
        
        def initialize(registryid=nil, domainname=nil, certificateid=nil)
          @RegistryId = registryid
          @DomainName = domainname
          @CertificateId = certificateid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @DomainName = params['DomainName']
          @CertificateId = params['CertificateId']
        end
      end

      # CreateInstanceCustomizedDomain返回参数结构体
      class CreateInstanceCustomizedDomainResponse < TencentCloud::Common::AbstractModel
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

      # CreateInstance请求参数结构体
      class CreateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param RegistryName: 企业版实例名称
        # @type RegistryName: String
        # @param RegistryType: 企业版实例类型（basic 基础版；standard 标准版；premium 高级版）
        # @type RegistryType: String
        # @param TagSpecification: 云标签描述
        # @type TagSpecification: :class:`Tencentcloud::Tcr.v20190924.models.TagSpecification`
        # @param RegistryChargeType: 实例计费类型，0表示按量计费，1表示预付费，默认为按量计费
        # @type RegistryChargeType: Integer
        # @param SyncTag: 是否同步TCR云标签至生成的COS Bucket
        # @type SyncTag: Boolean

        attr_accessor :RegistryName, :RegistryType, :TagSpecification, :RegistryChargeType, :SyncTag
        
        def initialize(registryname=nil, registrytype=nil, tagspecification=nil, registrychargetype=nil, synctag=nil)
          @RegistryName = registryname
          @RegistryType = registrytype
          @TagSpecification = tagspecification
          @RegistryChargeType = registrychargetype
          @SyncTag = synctag
        end

        def deserialize(params)
          @RegistryName = params['RegistryName']
          @RegistryType = params['RegistryType']
          unless params['TagSpecification'].nil?
            @TagSpecification = TagSpecification.new
            @TagSpecification.deserialize(params['TagSpecification'])
          end
          @RegistryChargeType = params['RegistryChargeType']
          @SyncTag = params['SyncTag']
        end
      end

      # CreateInstance返回参数结构体
      class CreateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param RegistryId: 企业版实例Id
        # @type RegistryId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegistryId, :RequestId
        
        def initialize(registryid=nil, requestid=nil)
          @RegistryId = registryid
          @RequestId = requestid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @RequestId = params['RequestId']
        end
      end

      # CreateInstanceToken请求参数结构体
      class CreateInstanceTokenRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param TokenType: 访问凭证类型，longterm 为长期访问凭证，temp 为临时访问凭证，默认是临时访问凭证，有效期1小时
        # @type TokenType: String
        # @param Desc: 长期访问凭证描述信息
        # @type Desc: String

        attr_accessor :RegistryId, :TokenType, :Desc
        
        def initialize(registryid=nil, tokentype=nil, desc=nil)
          @RegistryId = registryid
          @TokenType = tokentype
          @Desc = desc
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @TokenType = params['TokenType']
          @Desc = params['Desc']
        end
      end

      # CreateInstanceToken返回参数结构体
      class CreateInstanceTokenResponse < TencentCloud::Common::AbstractModel
        # @param Username: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Username: String
        # @param Token: 访问凭证
        # @type Token: String
        # @param ExpTime: 访问凭证过期时间戳，是一个时间戳数字，无单位
        # @type ExpTime: Integer
        # @param TokenId: 长期凭证的TokenId，短期凭证没有TokenId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TokenId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Username, :Token, :ExpTime, :TokenId, :RequestId
        
        def initialize(username=nil, token=nil, exptime=nil, tokenid=nil, requestid=nil)
          @Username = username
          @Token = token
          @ExpTime = exptime
          @TokenId = tokenid
          @RequestId = requestid
        end

        def deserialize(params)
          @Username = params['Username']
          @Token = params['Token']
          @ExpTime = params['ExpTime']
          @TokenId = params['TokenId']
          @RequestId = params['RequestId']
        end
      end

      # CreateInternalEndpointDns请求参数结构体
      class CreateInternalEndpointDnsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tcr实例id
        # @type InstanceId: String
        # @param VpcId: 私有网络id
        # @type VpcId: String
        # @param EniLBIp: tcr内网访问链路ip
        # @type EniLBIp: String
        # @param UsePublicDomain: true：为默认域名，公网域名一致
        # false: 使用vpc域名
        # 默认为vpc域名
        # @type UsePublicDomain: Boolean
        # @param RegionName: 解析地域，需要保证和vpc处于同一地域，如果不填则默认为主实例地域
        # @type RegionName: String
        # @param RegionId: 请求的地域ID，用于实例复制地域
        # @type RegionId: Integer

        attr_accessor :InstanceId, :VpcId, :EniLBIp, :UsePublicDomain, :RegionName, :RegionId
        
        def initialize(instanceid=nil, vpcid=nil, enilbip=nil, usepublicdomain=nil, regionname=nil, regionid=nil)
          @InstanceId = instanceid
          @VpcId = vpcid
          @EniLBIp = enilbip
          @UsePublicDomain = usepublicdomain
          @RegionName = regionname
          @RegionId = regionid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VpcId = params['VpcId']
          @EniLBIp = params['EniLBIp']
          @UsePublicDomain = params['UsePublicDomain']
          @RegionName = params['RegionName']
          @RegionId = params['RegionId']
        end
      end

      # CreateInternalEndpointDns返回参数结构体
      class CreateInternalEndpointDnsResponse < TencentCloud::Common::AbstractModel
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

      # CreateMultipleSecurityPolicy请求参数结构体
      class CreateMultipleSecurityPolicyRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param SecurityGroupPolicySet: 安全组策略
        # @type SecurityGroupPolicySet: Array

        attr_accessor :RegistryId, :SecurityGroupPolicySet
        
        def initialize(registryid=nil, securitygrouppolicyset=nil)
          @RegistryId = registryid
          @SecurityGroupPolicySet = securitygrouppolicyset
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          unless params['SecurityGroupPolicySet'].nil?
            @SecurityGroupPolicySet = []
            params['SecurityGroupPolicySet'].each do |i|
              securitypolicy_tmp = SecurityPolicy.new
              securitypolicy_tmp.deserialize(i)
              @SecurityGroupPolicySet << securitypolicy_tmp
            end
          end
        end
      end

      # CreateMultipleSecurityPolicy返回参数结构体
      class CreateMultipleSecurityPolicyResponse < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegistryId, :RequestId
        
        def initialize(registryid=nil, requestid=nil)
          @RegistryId = registryid
          @RequestId = requestid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @RequestId = params['RequestId']
        end
      end

      # CreateNamespacePersonal请求参数结构体
      class CreateNamespacePersonalRequest < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间名称
        # @type Namespace: String

        attr_accessor :Namespace
        
        def initialize(namespace=nil)
          @Namespace = namespace
        end

        def deserialize(params)
          @Namespace = params['Namespace']
        end
      end

      # CreateNamespacePersonal返回参数结构体
      class CreateNamespacePersonalResponse < TencentCloud::Common::AbstractModel
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

      # CreateNamespace请求参数结构体
      class CreateNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例ID
        # @type RegistryId: String
        # @param NamespaceName: 命名空间的名称（长度2-30个字符，只能包含小写字母、数字及分隔符("."、"_"、"-")，且不能以分隔符开头、结尾或连续）
        # @type NamespaceName: String
        # @param IsPublic: 是否公开，true为公开，fale为私有
        # @type IsPublic: Boolean
        # @param TagSpecification: 云标签描述
        # @type TagSpecification: :class:`Tencentcloud::Tcr.v20190924.models.TagSpecification`

        attr_accessor :RegistryId, :NamespaceName, :IsPublic, :TagSpecification
        
        def initialize(registryid=nil, namespacename=nil, ispublic=nil, tagspecification=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
          @IsPublic = ispublic
          @TagSpecification = tagspecification
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
          @IsPublic = params['IsPublic']
          unless params['TagSpecification'].nil?
            @TagSpecification = TagSpecification.new
            @TagSpecification.deserialize(params['TagSpecification'])
          end
        end
      end

      # CreateNamespace返回参数结构体
      class CreateNamespaceResponse < TencentCloud::Common::AbstractModel
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

      # CreateReplicationInstance请求参数结构体
      class CreateReplicationInstanceRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 主实例iD
        # @type RegistryId: String
        # @param ReplicationRegionId: 复制实例地域ID
        # @type ReplicationRegionId: Integer
        # @param ReplicationRegionName: 复制实例地域名称
        # @type ReplicationRegionName: String
        # @param SyncTag: 是否同步TCR云标签至生成的COS Bucket
        # @type SyncTag: Boolean

        attr_accessor :RegistryId, :ReplicationRegionId, :ReplicationRegionName, :SyncTag
        
        def initialize(registryid=nil, replicationregionid=nil, replicationregionname=nil, synctag=nil)
          @RegistryId = registryid
          @ReplicationRegionId = replicationregionid
          @ReplicationRegionName = replicationregionname
          @SyncTag = synctag
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @ReplicationRegionId = params['ReplicationRegionId']
          @ReplicationRegionName = params['ReplicationRegionName']
          @SyncTag = params['SyncTag']
        end
      end

      # CreateReplicationInstance返回参数结构体
      class CreateReplicationInstanceResponse < TencentCloud::Common::AbstractModel
        # @param ReplicationRegistryId: 企业版复制实例Id
        # @type ReplicationRegistryId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReplicationRegistryId, :RequestId
        
        def initialize(replicationregistryid=nil, requestid=nil)
          @ReplicationRegistryId = replicationregistryid
          @RequestId = requestid
        end

        def deserialize(params)
          @ReplicationRegistryId = params['ReplicationRegistryId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRepositoryPersonal请求参数结构体
      class CreateRepositoryPersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名称
        # @type RepoName: String
        # @param Public: 是否公共,1:公共,0:私有
        # @type Public: Integer
        # @param Description: 仓库描述
        # @type Description: String

        attr_accessor :RepoName, :Public, :Description
        
        def initialize(reponame=nil, public=nil, description=nil)
          @RepoName = reponame
          @Public = public
          @Description = description
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @Public = params['Public']
          @Description = params['Description']
        end
      end

      # CreateRepositoryPersonal返回参数结构体
      class CreateRepositoryPersonalResponse < TencentCloud::Common::AbstractModel
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

      # CreateRepository请求参数结构体
      class CreateRepositoryRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例ID
        # @type RegistryId: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param RepositoryName: 仓库名称
        # @type RepositoryName: String
        # @param BriefDescription: 仓库简短描述
        # @type BriefDescription: String
        # @param Description: 仓库详细描述
        # @type Description: String

        attr_accessor :RegistryId, :NamespaceName, :RepositoryName, :BriefDescription, :Description
        
        def initialize(registryid=nil, namespacename=nil, repositoryname=nil, briefdescription=nil, description=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
          @RepositoryName = repositoryname
          @BriefDescription = briefdescription
          @Description = description
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
          @RepositoryName = params['RepositoryName']
          @BriefDescription = params['BriefDescription']
          @Description = params['Description']
        end
      end

      # CreateRepository返回参数结构体
      class CreateRepositoryResponse < TencentCloud::Common::AbstractModel
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

      # CreateSecurityPolicies请求参数结构体
      class CreateSecurityPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param CidrBlock: 192.168.0.0/24
        # @type CidrBlock: String
        # @param Description: 描述
        # @type Description: String

        attr_accessor :RegistryId, :CidrBlock, :Description
        
        def initialize(registryid=nil, cidrblock=nil, description=nil)
          @RegistryId = registryid
          @CidrBlock = cidrblock
          @Description = description
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @CidrBlock = params['CidrBlock']
          @Description = params['Description']
        end
      end

      # CreateSecurityPolicies返回参数结构体
      class CreateSecurityPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegistryId, :RequestId
        
        def initialize(registryid=nil, requestid=nil)
          @RegistryId = registryid
          @RequestId = requestid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSecurityPolicy请求参数结构体
      class CreateSecurityPolicyRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param CidrBlock: 192.168.0.0/24
        # @type CidrBlock: String
        # @param Description: 备注
        # @type Description: String

        attr_accessor :RegistryId, :CidrBlock, :Description
        
        def initialize(registryid=nil, cidrblock=nil, description=nil)
          @RegistryId = registryid
          @CidrBlock = cidrblock
          @Description = description
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @CidrBlock = params['CidrBlock']
          @Description = params['Description']
        end
      end

      # CreateSecurityPolicy返回参数结构体
      class CreateSecurityPolicyResponse < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegistryId, :RequestId
        
        def initialize(registryid=nil, requestid=nil)
          @RegistryId = registryid
          @RequestId = requestid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSignaturePolicy请求参数结构体
      class CreateSignaturePolicyRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例 Id
        # @type RegistryId: String
        # @param Name: 策略名称
        # @type Name: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param KmsId: KMS 密钥
        # @type KmsId: String
        # @param KmsRegion: KMS 密钥所属地域
        # @type KmsRegion: String
        # @param Domain: 用户自定义域名，为空时使用 TCR 实例默认域名生成签名
        # @type Domain: String
        # @param Disabled: 禁用加签策略，默认为 false
        # @type Disabled: Boolean

        attr_accessor :RegistryId, :Name, :NamespaceName, :KmsId, :KmsRegion, :Domain, :Disabled
        
        def initialize(registryid=nil, name=nil, namespacename=nil, kmsid=nil, kmsregion=nil, domain=nil, disabled=nil)
          @RegistryId = registryid
          @Name = name
          @NamespaceName = namespacename
          @KmsId = kmsid
          @KmsRegion = kmsregion
          @Domain = domain
          @Disabled = disabled
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @Name = params['Name']
          @NamespaceName = params['NamespaceName']
          @KmsId = params['KmsId']
          @KmsRegion = params['KmsRegion']
          @Domain = params['Domain']
          @Disabled = params['Disabled']
        end
      end

      # CreateSignaturePolicy返回参数结构体
      class CreateSignaturePolicyResponse < TencentCloud::Common::AbstractModel
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

      # CreateSignature请求参数结构体
      class CreateSignatureRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例ID
        # @type RegistryId: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param RepositoryName: 仓库名称
        # @type RepositoryName: String
        # @param ImageVersion: Tag名称
        # @type ImageVersion: String

        attr_accessor :RegistryId, :NamespaceName, :RepositoryName, :ImageVersion
        
        def initialize(registryid=nil, namespacename=nil, repositoryname=nil, imageversion=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
          @RepositoryName = repositoryname
          @ImageVersion = imageversion
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
          @RepositoryName = params['RepositoryName']
          @ImageVersion = params['ImageVersion']
        end
      end

      # CreateSignature返回参数结构体
      class CreateSignatureResponse < TencentCloud::Common::AbstractModel
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

      # CreateTagRetentionExecution请求参数结构体
      class CreateTagRetentionExecutionRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 主实例iD
        # @type RegistryId: String
        # @param RetentionId: 版本保留规则Id
        # @type RetentionId: Integer
        # @param DryRun: 是否模拟执行，默认值为false，即非模拟执行
        # @type DryRun: Boolean

        attr_accessor :RegistryId, :RetentionId, :DryRun
        
        def initialize(registryid=nil, retentionid=nil, dryrun=nil)
          @RegistryId = registryid
          @RetentionId = retentionid
          @DryRun = dryrun
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @RetentionId = params['RetentionId']
          @DryRun = params['DryRun']
        end
      end

      # CreateTagRetentionExecution返回参数结构体
      class CreateTagRetentionExecutionResponse < TencentCloud::Common::AbstractModel
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

      # CreateTagRetentionRule请求参数结构体
      class CreateTagRetentionRuleRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 主实例iD
        # @type RegistryId: String
        # @param NamespaceId: 命名空间的Id
        # @type NamespaceId: Integer
        # @param RetentionRule: 保留策略
        # @type RetentionRule: :class:`Tencentcloud::Tcr.v20190924.models.RetentionRule`
        # @param CronSetting: 执行周期，当前只能选择： manual;daily;weekly;monthly
        # @type CronSetting: String
        # @param Disabled: 是否禁用规则，默认值为false
        # @type Disabled: Boolean

        attr_accessor :RegistryId, :NamespaceId, :RetentionRule, :CronSetting, :Disabled
        
        def initialize(registryid=nil, namespaceid=nil, retentionrule=nil, cronsetting=nil, disabled=nil)
          @RegistryId = registryid
          @NamespaceId = namespaceid
          @RetentionRule = retentionrule
          @CronSetting = cronsetting
          @Disabled = disabled
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceId = params['NamespaceId']
          unless params['RetentionRule'].nil?
            @RetentionRule = RetentionRule.new
            @RetentionRule.deserialize(params['RetentionRule'])
          end
          @CronSetting = params['CronSetting']
          @Disabled = params['Disabled']
        end
      end

      # CreateTagRetentionRule返回参数结构体
      class CreateTagRetentionRuleResponse < TencentCloud::Common::AbstractModel
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

      # CreateUserPersonal请求参数结构体
      class CreateUserPersonalRequest < TencentCloud::Common::AbstractModel
        # @param Password: 用户密码，密码必须为8到16位
        # @type Password: String

        attr_accessor :Password
        
        def initialize(password=nil)
          @Password = password
        end

        def deserialize(params)
          @Password = params['Password']
        end
      end

      # CreateUserPersonal返回参数结构体
      class CreateUserPersonalResponse < TencentCloud::Common::AbstractModel
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

      # CreateWebhookTrigger请求参数结构体
      class CreateWebhookTriggerRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例 Id
        # @type RegistryId: String
        # @param Trigger: 触发器参数
        # @type Trigger: :class:`Tencentcloud::Tcr.v20190924.models.WebhookTrigger`
        # @param Namespace: 命名空间
        # @type Namespace: String

        attr_accessor :RegistryId, :Trigger, :Namespace
        
        def initialize(registryid=nil, trigger=nil, namespace=nil)
          @RegistryId = registryid
          @Trigger = trigger
          @Namespace = namespace
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          unless params['Trigger'].nil?
            @Trigger = WebhookTrigger.new
            @Trigger.deserialize(params['Trigger'])
          end
          @Namespace = params['Namespace']
        end
      end

      # CreateWebhookTrigger返回参数结构体
      class CreateWebhookTriggerResponse < TencentCloud::Common::AbstractModel
        # @param Trigger: 新建的触发器
        # @type Trigger: :class:`Tencentcloud::Tcr.v20190924.models.WebhookTrigger`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Trigger, :RequestId
        
        def initialize(trigger=nil, requestid=nil)
          @Trigger = trigger
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Trigger'].nil?
            @Trigger = WebhookTrigger.new
            @Trigger.deserialize(params['Trigger'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 自定义域名信息
      class CustomizedDomainInfo < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例ID
        # @type RegistryId: String
        # @param CertId: 证书ID
        # @type CertId: String
        # @param DomainName: 域名名称
        # @type DomainName: String
        # @param Status: 域名创建状态（SUCCESS, FAILURE, CREATING, DELETING）
        # @type Status: String

        attr_accessor :RegistryId, :CertId, :DomainName, :Status
        
        def initialize(registryid=nil, certid=nil, domainname=nil, status=nil)
          @RegistryId = registryid
          @CertId = certid
          @DomainName = domainname
          @Status = status
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @CertId = params['CertId']
          @DomainName = params['DomainName']
          @Status = params['Status']
        end
      end

      # DeleteApplicationTriggerPersonal请求参数结构体
      class DeleteApplicationTriggerPersonalRequest < TencentCloud::Common::AbstractModel
        # @param TriggerName: 触发器名称
        # @type TriggerName: String

        attr_accessor :TriggerName
        
        def initialize(triggername=nil)
          @TriggerName = triggername
        end

        def deserialize(params)
          @TriggerName = params['TriggerName']
        end
      end

      # DeleteApplicationTriggerPersonal返回参数结构体
      class DeleteApplicationTriggerPersonalResponse < TencentCloud::Common::AbstractModel
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

      # DeleteImageAccelerateService请求参数结构体
      class DeleteImageAccelerateServiceRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String

        attr_accessor :RegistryId
        
        def initialize(registryid=nil)
          @RegistryId = registryid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
        end
      end

      # DeleteImageAccelerateService返回参数结构体
      class DeleteImageAccelerateServiceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteImageLifecycleGlobalPersonal请求参数结构体
      class DeleteImageLifecycleGlobalPersonalRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DeleteImageLifecycleGlobalPersonal返回参数结构体
      class DeleteImageLifecycleGlobalPersonalResponse < TencentCloud::Common::AbstractModel
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

      # DeleteImageLifecyclePersonal请求参数结构体
      class DeleteImageLifecyclePersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名称
        # @type RepoName: String

        attr_accessor :RepoName
        
        def initialize(reponame=nil)
          @RepoName = reponame
        end

        def deserialize(params)
          @RepoName = params['RepoName']
        end
      end

      # DeleteImageLifecyclePersonal返回参数结构体
      class DeleteImageLifecyclePersonalResponse < TencentCloud::Common::AbstractModel
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

      # DeleteImagePersonal请求参数结构体
      class DeleteImagePersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名称
        # @type RepoName: String
        # @param Tag: Tag名
        # @type Tag: String

        attr_accessor :RepoName, :Tag
        
        def initialize(reponame=nil, tag=nil)
          @RepoName = reponame
          @Tag = tag
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @Tag = params['Tag']
        end
      end

      # DeleteImagePersonal返回参数结构体
      class DeleteImagePersonalResponse < TencentCloud::Common::AbstractModel
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

      # DeleteImage请求参数结构体
      class DeleteImageRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param RepositoryName: 镜像仓库名称
        # @type RepositoryName: String
        # @param ImageVersion: 镜像版本
        # @type ImageVersion: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String

        attr_accessor :RegistryId, :RepositoryName, :ImageVersion, :NamespaceName
        
        def initialize(registryid=nil, repositoryname=nil, imageversion=nil, namespacename=nil)
          @RegistryId = registryid
          @RepositoryName = repositoryname
          @ImageVersion = imageversion
          @NamespaceName = namespacename
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @RepositoryName = params['RepositoryName']
          @ImageVersion = params['ImageVersion']
          @NamespaceName = params['NamespaceName']
        end
      end

      # DeleteImage返回参数结构体
      class DeleteImageResponse < TencentCloud::Common::AbstractModel
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

      # DeleteImmutableTagRules请求参数结构体
      class DeleteImmutableTagRulesRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例 Id
        # @type RegistryId: String
        # @param NamespaceName: 命名空间
        # @type NamespaceName: String
        # @param RuleId: 规则 Id
        # @type RuleId: Integer

        attr_accessor :RegistryId, :NamespaceName, :RuleId
        
        def initialize(registryid=nil, namespacename=nil, ruleid=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
          @RuleId = ruleid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
          @RuleId = params['RuleId']
        end
      end

      # DeleteImmutableTagRules返回参数结构体
      class DeleteImmutableTagRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteInstanceCustomizedDomain请求参数结构体
      class DeleteInstanceCustomizedDomainRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 主实例iD
        # @type RegistryId: String
        # @param DomainName: 自定义域名
        # @type DomainName: String
        # @param CertificateId: 证书ID
        # @type CertificateId: String

        attr_accessor :RegistryId, :DomainName, :CertificateId
        
        def initialize(registryid=nil, domainname=nil, certificateid=nil)
          @RegistryId = registryid
          @DomainName = domainname
          @CertificateId = certificateid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @DomainName = params['DomainName']
          @CertificateId = params['CertificateId']
        end
      end

      # DeleteInstanceCustomizedDomain返回参数结构体
      class DeleteInstanceCustomizedDomainResponse < TencentCloud::Common::AbstractModel
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

      # DeleteInstance请求参数结构体
      class DeleteInstanceRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例id
        # @type RegistryId: String
        # @param DeleteBucket: 是否删除存储桶，默认为false
        # @type DeleteBucket: Boolean
        # @param DryRun: 是否dryRun模式，缺省值：false
        # @type DryRun: Boolean

        attr_accessor :RegistryId, :DeleteBucket, :DryRun
        
        def initialize(registryid=nil, deletebucket=nil, dryrun=nil)
          @RegistryId = registryid
          @DeleteBucket = deletebucket
          @DryRun = dryrun
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @DeleteBucket = params['DeleteBucket']
          @DryRun = params['DryRun']
        end
      end

      # DeleteInstance返回参数结构体
      class DeleteInstanceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteInstanceToken请求参数结构体
      class DeleteInstanceTokenRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例 ID
        # @type RegistryId: String
        # @param TokenId: 访问凭证 ID
        # @type TokenId: String

        attr_accessor :RegistryId, :TokenId
        
        def initialize(registryid=nil, tokenid=nil)
          @RegistryId = registryid
          @TokenId = tokenid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @TokenId = params['TokenId']
        end
      end

      # DeleteInstanceToken返回参数结构体
      class DeleteInstanceTokenResponse < TencentCloud::Common::AbstractModel
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

      # DeleteInternalEndpointDns请求参数结构体
      class DeleteInternalEndpointDnsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: tcr实例id
        # @type InstanceId: String
        # @param VpcId: 私有网络id
        # @type VpcId: String
        # @param EniLBIp: tcr内网访问链路ip
        # @type EniLBIp: String
        # @param UsePublicDomain: true：使用默认域名
        # false:  使用带有vpc的域名
        # @type UsePublicDomain: Boolean
        # @param RegionName: 解析地域，需要保证和vpc处于同一地域，如果不填则默认为主实例地域
        # @type RegionName: String

        attr_accessor :InstanceId, :VpcId, :EniLBIp, :UsePublicDomain, :RegionName
        
        def initialize(instanceid=nil, vpcid=nil, enilbip=nil, usepublicdomain=nil, regionname=nil)
          @InstanceId = instanceid
          @VpcId = vpcid
          @EniLBIp = enilbip
          @UsePublicDomain = usepublicdomain
          @RegionName = regionname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VpcId = params['VpcId']
          @EniLBIp = params['EniLBIp']
          @UsePublicDomain = params['UsePublicDomain']
          @RegionName = params['RegionName']
        end
      end

      # DeleteInternalEndpointDns返回参数结构体
      class DeleteInternalEndpointDnsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMultipleSecurityPolicy请求参数结构体
      class DeleteMultipleSecurityPolicyRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param SecurityGroupPolicySet: 安全组策略
        # @type SecurityGroupPolicySet: Array

        attr_accessor :RegistryId, :SecurityGroupPolicySet
        
        def initialize(registryid=nil, securitygrouppolicyset=nil)
          @RegistryId = registryid
          @SecurityGroupPolicySet = securitygrouppolicyset
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          unless params['SecurityGroupPolicySet'].nil?
            @SecurityGroupPolicySet = []
            params['SecurityGroupPolicySet'].each do |i|
              securitypolicy_tmp = SecurityPolicy.new
              securitypolicy_tmp.deserialize(i)
              @SecurityGroupPolicySet << securitypolicy_tmp
            end
          end
        end
      end

      # DeleteMultipleSecurityPolicy返回参数结构体
      class DeleteMultipleSecurityPolicyResponse < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegistryId, :RequestId
        
        def initialize(registryid=nil, requestid=nil)
          @RegistryId = registryid
          @RequestId = requestid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteNamespacePersonal请求参数结构体
      class DeleteNamespacePersonalRequest < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间名称
        # @type Namespace: String

        attr_accessor :Namespace
        
        def initialize(namespace=nil)
          @Namespace = namespace
        end

        def deserialize(params)
          @Namespace = params['Namespace']
        end
      end

      # DeleteNamespacePersonal返回参数结构体
      class DeleteNamespacePersonalResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNamespace请求参数结构体
      class DeleteNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例ID
        # @type RegistryId: String
        # @param NamespaceName: 命名空间的名称
        # @type NamespaceName: String

        attr_accessor :RegistryId, :NamespaceName
        
        def initialize(registryid=nil, namespacename=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
        end
      end

      # DeleteNamespace返回参数结构体
      class DeleteNamespaceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteReplicationInstance请求参数结构体
      class DeleteReplicationInstanceRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例id
        # @type RegistryId: String
        # @param ReplicationRegistryId: 复制实例ID
        # @type ReplicationRegistryId: String
        # @param ReplicationRegionId: 复制实例地域Id
        # @type ReplicationRegionId: Integer

        attr_accessor :RegistryId, :ReplicationRegistryId, :ReplicationRegionId
        
        def initialize(registryid=nil, replicationregistryid=nil, replicationregionid=nil)
          @RegistryId = registryid
          @ReplicationRegistryId = replicationregistryid
          @ReplicationRegionId = replicationregionid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @ReplicationRegistryId = params['ReplicationRegistryId']
          @ReplicationRegionId = params['ReplicationRegionId']
        end
      end

      # DeleteReplicationInstance返回参数结构体
      class DeleteReplicationInstanceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRepositoryPersonal请求参数结构体
      class DeleteRepositoryPersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名称
        # @type RepoName: String

        attr_accessor :RepoName
        
        def initialize(reponame=nil)
          @RepoName = reponame
        end

        def deserialize(params)
          @RepoName = params['RepoName']
        end
      end

      # DeleteRepositoryPersonal返回参数结构体
      class DeleteRepositoryPersonalResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRepository请求参数结构体
      class DeleteRepositoryRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param NamespaceName: 命名空间的名称
        # @type NamespaceName: String
        # @param RepositoryName: 镜像仓库的名称
        # @type RepositoryName: String

        attr_accessor :RegistryId, :NamespaceName, :RepositoryName
        
        def initialize(registryid=nil, namespacename=nil, repositoryname=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
          @RepositoryName = repositoryname
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
          @RepositoryName = params['RepositoryName']
        end
      end

      # DeleteRepository返回参数结构体
      class DeleteRepositoryResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRepositoryTags请求参数结构体
      class DeleteRepositoryTagsRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例ID
        # @type RegistryId: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param RepositoryName: 仓库名称
        # @type RepositoryName: String
        # @param Tags: Tag列表，单次请求Tag数量最大为20
        # @type Tags: Array

        attr_accessor :RegistryId, :NamespaceName, :RepositoryName, :Tags
        
        def initialize(registryid=nil, namespacename=nil, repositoryname=nil, tags=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
          @RepositoryName = repositoryname
          @Tags = tags
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
          @RepositoryName = params['RepositoryName']
          @Tags = params['Tags']
        end
      end

      # DeleteRepositoryTags返回参数结构体
      class DeleteRepositoryTagsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSecurityPolicy请求参数结构体
      class DeleteSecurityPolicyRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param PolicyIndex: 白名单Id
        # @type PolicyIndex: Integer
        # @param PolicyVersion: 白名单版本
        # @type PolicyVersion: String

        attr_accessor :RegistryId, :PolicyIndex, :PolicyVersion
        
        def initialize(registryid=nil, policyindex=nil, policyversion=nil)
          @RegistryId = registryid
          @PolicyIndex = policyindex
          @PolicyVersion = policyversion
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @PolicyIndex = params['PolicyIndex']
          @PolicyVersion = params['PolicyVersion']
        end
      end

      # DeleteSecurityPolicy返回参数结构体
      class DeleteSecurityPolicyResponse < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegistryId, :RequestId
        
        def initialize(registryid=nil, requestid=nil)
          @RegistryId = registryid
          @RequestId = requestid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteSignaturePolicy请求参数结构体
      class DeleteSignaturePolicyRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例ID
        # @type RegistryId: String
        # @param NamespaceName: 命名空间的名称
        # @type NamespaceName: String

        attr_accessor :RegistryId, :NamespaceName
        
        def initialize(registryid=nil, namespacename=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
        end
      end

      # DeleteSignaturePolicy返回参数结构体
      class DeleteSignaturePolicyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTagRetentionRule请求参数结构体
      class DeleteTagRetentionRuleRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 主实例iD
        # @type RegistryId: String
        # @param RetentionId: 版本保留规则的Id
        # @type RetentionId: Integer

        attr_accessor :RegistryId, :RetentionId
        
        def initialize(registryid=nil, retentionid=nil)
          @RegistryId = registryid
          @RetentionId = retentionid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @RetentionId = params['RetentionId']
        end
      end

      # DeleteTagRetentionRule返回参数结构体
      class DeleteTagRetentionRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteWebhookTrigger请求参数结构体
      class DeleteWebhookTriggerRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Id: 触发器 Id
        # @type Id: Integer

        attr_accessor :RegistryId, :Namespace, :Id
        
        def initialize(registryid=nil, namespace=nil, id=nil)
          @RegistryId = registryid
          @Namespace = namespace
          @Id = id
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @Namespace = params['Namespace']
          @Id = params['Id']
        end
      end

      # DeleteWebhookTrigger返回参数结构体
      class DeleteWebhookTriggerResponse < TencentCloud::Common::AbstractModel
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

      # DescribeApplicationTriggerLogPersonal请求参数结构体
      class DescribeApplicationTriggerLogPersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名称
        # @type RepoName: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回最大数量，默认 20, 最大值 100
        # @type Limit: Integer
        # @param Order: 升序或降序
        # @type Order: String
        # @param OrderBy: 按某列排序
        # @type OrderBy: String

        attr_accessor :RepoName, :Offset, :Limit, :Order, :OrderBy
        
        def initialize(reponame=nil, offset=nil, limit=nil, order=nil, orderby=nil)
          @RepoName = reponame
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderBy = orderby
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderBy = params['OrderBy']
        end
      end

      # 查询应用更新触发器触发日志返回值
      class DescribeApplicationTriggerLogPersonalResp < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回总数
        # @type TotalCount: Integer
        # @param LogInfo: 触发日志列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogInfo: Array

        attr_accessor :TotalCount, :LogInfo
        
        def initialize(totalcount=nil, loginfo=nil)
          @TotalCount = totalcount
          @LogInfo = loginfo
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LogInfo'].nil?
            @LogInfo = []
            params['LogInfo'].each do |i|
              triggerlogresp_tmp = TriggerLogResp.new
              triggerlogresp_tmp.deserialize(i)
              @LogInfo << triggerlogresp_tmp
            end
          end
        end
      end

      # DescribeApplicationTriggerLogPersonal返回参数结构体
      class DescribeApplicationTriggerLogPersonalResponse < TencentCloud::Common::AbstractModel
        # @param Data: 触发日志返回值
        # @type Data: :class:`Tencentcloud::Tcr.v20190924.models.DescribeApplicationTriggerLogPersonalResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeApplicationTriggerLogPersonalResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationTriggerPersonal请求参数结构体
      class DescribeApplicationTriggerPersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名称
        # @type RepoName: String
        # @param TriggerName: 触发器名称
        # @type TriggerName: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回最大数量，默认 20, 最大值 100
        # @type Limit: Integer

        attr_accessor :RepoName, :TriggerName, :Offset, :Limit
        
        def initialize(reponame=nil, triggername=nil, offset=nil, limit=nil)
          @RepoName = reponame
          @TriggerName = triggername
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @TriggerName = params['TriggerName']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # 拉取触发器列表返回值
      class DescribeApplicationTriggerPersonalResp < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回条目总数
        # @type TotalCount: Integer
        # @param TriggerInfo: 触发器列表
        # @type TriggerInfo: Array

        attr_accessor :TotalCount, :TriggerInfo
        
        def initialize(totalcount=nil, triggerinfo=nil)
          @TotalCount = totalcount
          @TriggerInfo = triggerinfo
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TriggerInfo'].nil?
            @TriggerInfo = []
            params['TriggerInfo'].each do |i|
              triggerresp_tmp = TriggerResp.new
              triggerresp_tmp.deserialize(i)
              @TriggerInfo << triggerresp_tmp
            end
          end
        end
      end

      # DescribeApplicationTriggerPersonal返回参数结构体
      class DescribeApplicationTriggerPersonalResponse < TencentCloud::Common::AbstractModel
        # @param Data: 触发器列表返回值
        # @type Data: :class:`Tencentcloud::Tcr.v20190924.models.DescribeApplicationTriggerPersonalResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeApplicationTriggerPersonalResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeChartDownloadInfo请求参数结构体
      class DescribeChartDownloadInfoRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例ID
        # @type RegistryId: String
        # @param NamespaceName: 命名空间
        # @type NamespaceName: String
        # @param ChartName: Chart包的名称
        # @type ChartName: String
        # @param ChartVersion: Chart包的版本
        # @type ChartVersion: String

        attr_accessor :RegistryId, :NamespaceName, :ChartName, :ChartVersion
        
        def initialize(registryid=nil, namespacename=nil, chartname=nil, chartversion=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
          @ChartName = chartname
          @ChartVersion = chartversion
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
          @ChartName = params['ChartName']
          @ChartVersion = params['ChartVersion']
        end
      end

      # DescribeChartDownloadInfo返回参数结构体
      class DescribeChartDownloadInfoResponse < TencentCloud::Common::AbstractModel
        # @param PreSignedDownloadURL: 用于下载的url的预签名地址
        # @type PreSignedDownloadURL: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PreSignedDownloadURL, :RequestId
        
        def initialize(presigneddownloadurl=nil, requestid=nil)
          @PreSignedDownloadURL = presigneddownloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @PreSignedDownloadURL = params['PreSignedDownloadURL']
          @RequestId = params['RequestId']
        end
      end

      # DescribeExternalEndpointStatus请求参数结构体
      class DescribeExternalEndpointStatusRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String

        attr_accessor :RegistryId
        
        def initialize(registryid=nil)
          @RegistryId = registryid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
        end
      end

      # DescribeExternalEndpointStatus返回参数结构体
      class DescribeExternalEndpointStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 开启公网访问状态，开启中（Opening）、已开启（Opened）、关闭（Closed）
        # @type Status: String
        # @param Reason: 原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Reason, :RequestId
        
        def initialize(status=nil, reason=nil, requestid=nil)
          @Status = status
          @Reason = reason
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Reason = params['Reason']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFavorRepositoryPersonal请求参数结构体
      class DescribeFavorRepositoryPersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名称
        # @type RepoName: String
        # @param Limit: 分页Limit
        # @type Limit: Integer
        # @param Offset: Offset用于分页
        # @type Offset: Integer

        attr_accessor :RepoName, :Limit, :Offset
        
        def initialize(reponame=nil, limit=nil, offset=nil)
          @RepoName = reponame
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeFavorRepositoryPersonal返回参数结构体
      class DescribeFavorRepositoryPersonalResponse < TencentCloud::Common::AbstractModel
        # @param Data: 个人收藏仓库列表返回信息
        # @type Data: :class:`Tencentcloud::Tcr.v20190924.models.FavorResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = FavorResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGCJobs请求参数结构体
      class DescribeGCJobsRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例 Id
        # @type RegistryId: String

        attr_accessor :RegistryId
        
        def initialize(registryid=nil)
          @RegistryId = registryid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
        end
      end

      # DescribeGCJobs返回参数结构体
      class DescribeGCJobsResponse < TencentCloud::Common::AbstractModel
        # @param Jobs: GC Job 列表
        # @type Jobs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              gcjobinfo_tmp = GCJobInfo.new
              gcjobinfo_tmp.deserialize(i)
              @Jobs << gcjobinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageAccelerateService请求参数结构体
      class DescribeImageAccelerateServiceRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String

        attr_accessor :RegistryId
        
        def initialize(registryid=nil)
          @RegistryId = registryid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
        end
      end

      # DescribeImageAccelerateService返回参数结构体
      class DescribeImageAccelerateServiceResponse < TencentCloud::Common::AbstractModel
        # @param Status: 镜像加速状态
        # @type Status: String
        # @param CFSVIP: CFS的VIP
        # @type CFSVIP: String
        # @param IsEnable: 是否开通
        # @type IsEnable: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :CFSVIP, :IsEnable, :RequestId
        
        def initialize(status=nil, cfsvip=nil, isenable=nil, requestid=nil)
          @Status = status
          @CFSVIP = cfsvip
          @IsEnable = isenable
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @CFSVIP = params['CFSVIP']
          @IsEnable = params['IsEnable']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageFilterPersonal请求参数结构体
      class DescribeImageFilterPersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名称
        # @type RepoName: String
        # @param Tag: Tag名
        # @type Tag: String

        attr_accessor :RepoName, :Tag
        
        def initialize(reponame=nil, tag=nil)
          @RepoName = reponame
          @Tag = tag
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @Tag = params['Tag']
        end
      end

      # DescribeImageFilterPersonal返回参数结构体
      class DescribeImageFilterPersonalResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回tag镜像内容相同的tag列表
        # @type Data: :class:`Tencentcloud::Tcr.v20190924.models.SameImagesResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SameImagesResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageLifecycleGlobalPersonal请求参数结构体
      class DescribeImageLifecycleGlobalPersonalRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeImageLifecycleGlobalPersonal返回参数结构体
      class DescribeImageLifecycleGlobalPersonalResponse < TencentCloud::Common::AbstractModel
        # @param Data: 全局自动删除策略信息
        # @type Data: :class:`Tencentcloud::Tcr.v20190924.models.AutoDelStrategyInfoResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AutoDelStrategyInfoResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageLifecyclePersonal请求参数结构体
      class DescribeImageLifecyclePersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名称
        # @type RepoName: String

        attr_accessor :RepoName
        
        def initialize(reponame=nil)
          @RepoName = reponame
        end

        def deserialize(params)
          @RepoName = params['RepoName']
        end
      end

      # DescribeImageLifecyclePersonal返回参数结构体
      class DescribeImageLifecyclePersonalResponse < TencentCloud::Common::AbstractModel
        # @param Data: 自动删除策略信息
        # @type Data: :class:`Tencentcloud::Tcr.v20190924.models.AutoDelStrategyInfoResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AutoDelStrategyInfoResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageManifests请求参数结构体
      class DescribeImageManifestsRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例ID
        # @type RegistryId: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param RepositoryName: 镜像仓库名称
        # @type RepositoryName: String
        # @param ImageVersion: 镜像版本
        # @type ImageVersion: String

        attr_accessor :RegistryId, :NamespaceName, :RepositoryName, :ImageVersion
        
        def initialize(registryid=nil, namespacename=nil, repositoryname=nil, imageversion=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
          @RepositoryName = repositoryname
          @ImageVersion = imageversion
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
          @RepositoryName = params['RepositoryName']
          @ImageVersion = params['ImageVersion']
        end
      end

      # DescribeImageManifests返回参数结构体
      class DescribeImageManifestsResponse < TencentCloud::Common::AbstractModel
        # @param Manifest: 镜像的Manifest信息
        # @type Manifest: String
        # @param Config: 镜像的配置信息
        # @type Config: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Manifest, :Config, :RequestId
        
        def initialize(manifest=nil, config=nil, requestid=nil)
          @Manifest = manifest
          @Config = config
          @RequestId = requestid
        end

        def deserialize(params)
          @Manifest = params['Manifest']
          @Config = params['Config']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImagePersonal请求参数结构体
      class DescribeImagePersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名称
        # @type RepoName: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回最大数量，默认 20, 最大值 100
        # @type Limit: Integer
        # @param Tag: tag名称，可根据输入搜索
        # @type Tag: String

        attr_accessor :RepoName, :Offset, :Limit, :Tag
        
        def initialize(reponame=nil, offset=nil, limit=nil, tag=nil)
          @RepoName = reponame
          @Offset = offset
          @Limit = limit
          @Tag = tag
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Tag = params['Tag']
        end
      end

      # DescribeImagePersonal返回参数结构体
      class DescribeImagePersonalResponse < TencentCloud::Common::AbstractModel
        # @param Data: 镜像tag信息
        # @type Data: :class:`Tencentcloud::Tcr.v20190924.models.TagInfoResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TagInfoResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImages请求参数结构体
      class DescribeImagesRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例ID
        # @type RegistryId: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param RepositoryName: 镜像仓库名称
        # @type RepositoryName: String
        # @param ImageVersion: 指定镜像版本进行查找，当前为模糊搜索
        # @type ImageVersion: String
        # @param Limit: 每页个数，用于分页，默认20
        # @type Limit: Integer
        # @param Offset: 页数，默认值为1
        # @type Offset: Integer
        # @param Digest: 指定镜像 Digest 进行查找
        # @type Digest: String
        # @param ExactMatch: 指定是否为精准匹配，true为精准匹配，不填为模糊匹配
        # @type ExactMatch: Boolean

        attr_accessor :RegistryId, :NamespaceName, :RepositoryName, :ImageVersion, :Limit, :Offset, :Digest, :ExactMatch
        
        def initialize(registryid=nil, namespacename=nil, repositoryname=nil, imageversion=nil, limit=nil, offset=nil, digest=nil, exactmatch=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
          @RepositoryName = repositoryname
          @ImageVersion = imageversion
          @Limit = limit
          @Offset = offset
          @Digest = digest
          @ExactMatch = exactmatch
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
          @RepositoryName = params['RepositoryName']
          @ImageVersion = params['ImageVersion']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Digest = params['Digest']
          @ExactMatch = params['ExactMatch']
        end
      end

      # DescribeImages返回参数结构体
      class DescribeImagesResponse < TencentCloud::Common::AbstractModel
        # @param ImageInfoList: 容器镜像信息列表
        # @type ImageInfoList: Array
        # @param TotalCount: 容器镜像总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageInfoList, :TotalCount, :RequestId
        
        def initialize(imageinfolist=nil, totalcount=nil, requestid=nil)
          @ImageInfoList = imageinfolist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ImageInfoList'].nil?
            @ImageInfoList = []
            params['ImageInfoList'].each do |i|
              tcrimageinfo_tmp = TcrImageInfo.new
              tcrimageinfo_tmp.deserialize(i)
              @ImageInfoList << tcrimageinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImmutableTagRules请求参数结构体
      class DescribeImmutableTagRulesRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例 Id
        # @type RegistryId: String

        attr_accessor :RegistryId
        
        def initialize(registryid=nil)
          @RegistryId = registryid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
        end
      end

      # DescribeImmutableTagRules返回参数结构体
      class DescribeImmutableTagRulesResponse < TencentCloud::Common::AbstractModel
        # @param Rules: 规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rules: Array
        # @param EmptyNs: 未创建规则的命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EmptyNs: Array
        # @param Total: 规则总量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rules, :EmptyNs, :Total, :RequestId
        
        def initialize(rules=nil, emptyns=nil, total=nil, requestid=nil)
          @Rules = rules
          @EmptyNs = emptyns
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              immutabletagrule_tmp = ImmutableTagRule.new
              immutabletagrule_tmp.deserialize(i)
              @Rules << immutabletagrule_tmp
            end
          end
          @EmptyNs = params['EmptyNs']
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceAllNamespaces请求参数结构体
      class DescribeInstanceAllNamespacesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页个数
        # @type Limit: Integer
        # @param Offset: 起始偏移位置
        # @type Offset: Integer

        attr_accessor :Limit, :Offset
        
        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeInstanceAllNamespaces返回参数结构体
      class DescribeInstanceAllNamespacesResponse < TencentCloud::Common::AbstractModel
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

      # DescribeInstanceAll请求参数结构体
      class DescribeInstanceAllRequest < TencentCloud::Common::AbstractModel
        # @param Registryids: 实例ID列表(为空时，
        # 表示获取账号下所有实例)
        # @type Registryids: Array
        # @param Offset: 偏移量,默认0
        # @type Offset: Integer
        # @param Limit: 最大输出条数，默认20，最大为100
        # @type Limit: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param AllRegion: 获取所有地域的实例，默认为False
        # @type AllRegion: Boolean

        attr_accessor :Registryids, :Offset, :Limit, :Filters, :AllRegion
        
        def initialize(registryids=nil, offset=nil, limit=nil, filters=nil, allregion=nil)
          @Registryids = registryids
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @AllRegion = allregion
        end

        def deserialize(params)
          @Registryids = params['Registryids']
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
          @AllRegion = params['AllRegion']
        end
      end

      # DescribeInstanceAll返回参数结构体
      class DescribeInstanceAllResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总实例个数
        # @type TotalCount: Integer
        # @param Registries: 实例信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Registries: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Registries, :RequestId
        
        def initialize(totalcount=nil, registries=nil, requestid=nil)
          @TotalCount = totalcount
          @Registries = registries
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Registries'].nil?
            @Registries = []
            params['Registries'].each do |i|
              registry_tmp = Registry.new
              registry_tmp.deserialize(i)
              @Registries << registry_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceCustomizedDomain请求参数结构体
      class DescribeInstanceCustomizedDomainRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 主实例iD
        # @type RegistryId: String
        # @param Limit: 分页Limit
        # @type Limit: Integer
        # @param Offset: 分页Offset
        # @type Offset: Integer

        attr_accessor :RegistryId, :Limit, :Offset
        
        def initialize(registryid=nil, limit=nil, offset=nil)
          @RegistryId = registryid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeInstanceCustomizedDomain返回参数结构体
      class DescribeInstanceCustomizedDomainResponse < TencentCloud::Common::AbstractModel
        # @param DomainInfoList: 域名信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainInfoList: Array
        # @param TotalCount: 总个数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainInfoList, :TotalCount, :RequestId
        
        def initialize(domaininfolist=nil, totalcount=nil, requestid=nil)
          @DomainInfoList = domaininfolist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DomainInfoList'].nil?
            @DomainInfoList = []
            params['DomainInfoList'].each do |i|
              customizeddomaininfo_tmp = CustomizedDomainInfo.new
              customizeddomaininfo_tmp.deserialize(i)
              @DomainInfoList << customizeddomaininfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceStatus请求参数结构体
      class DescribeInstanceStatusRequest < TencentCloud::Common::AbstractModel
        # @param RegistryIds: 实例ID的数组
        # @type RegistryIds: Array

        attr_accessor :RegistryIds
        
        def initialize(registryids=nil)
          @RegistryIds = registryids
        end

        def deserialize(params)
          @RegistryIds = params['RegistryIds']
        end
      end

      # DescribeInstanceStatus返回参数结构体
      class DescribeInstanceStatusResponse < TencentCloud::Common::AbstractModel
        # @param RegistryStatusSet: 实例的状态列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistryStatusSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegistryStatusSet, :RequestId
        
        def initialize(registrystatusset=nil, requestid=nil)
          @RegistryStatusSet = registrystatusset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RegistryStatusSet'].nil?
            @RegistryStatusSet = []
            params['RegistryStatusSet'].each do |i|
              registrystatus_tmp = RegistryStatus.new
              registrystatus_tmp.deserialize(i)
              @RegistryStatusSet << registrystatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceToken请求参数结构体
      class DescribeInstanceTokenRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例 ID
        # @type RegistryId: String
        # @param Limit: 分页单页数量
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer

        attr_accessor :RegistryId, :Limit, :Offset
        
        def initialize(registryid=nil, limit=nil, offset=nil)
          @RegistryId = registryid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeInstanceToken返回参数结构体
      class DescribeInstanceTokenResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 长期访问凭证总数
        # @type TotalCount: Integer
        # @param Tokens: 长期访问凭证列表
        # @type Tokens: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Tokens, :RequestId
        
        def initialize(totalcount=nil, tokens=nil, requestid=nil)
          @TotalCount = totalcount
          @Tokens = tokens
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Tokens'].nil?
            @Tokens = []
            params['Tokens'].each do |i|
              tcrinstancetoken_tmp = TcrInstanceToken.new
              tcrinstancetoken_tmp.deserialize(i)
              @Tokens << tcrinstancetoken_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Registryids: 实例ID列表(为空时，
        # 表示获取账号下所有实例)
        # @type Registryids: Array
        # @param Offset: 偏移量,默认0
        # @type Offset: Integer
        # @param Limit: 最大输出条数，默认20，最大为100
        # @type Limit: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param AllRegion: 获取所有地域的实例，默认为False
        # @type AllRegion: Boolean

        attr_accessor :Registryids, :Offset, :Limit, :Filters, :AllRegion
        
        def initialize(registryids=nil, offset=nil, limit=nil, filters=nil, allregion=nil)
          @Registryids = registryids
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @AllRegion = allregion
        end

        def deserialize(params)
          @Registryids = params['Registryids']
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
          @AllRegion = params['AllRegion']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总实例个数
        # @type TotalCount: Integer
        # @param Registries: 实例信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Registries: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Registries, :RequestId
        
        def initialize(totalcount=nil, registries=nil, requestid=nil)
          @TotalCount = totalcount
          @Registries = registries
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Registries'].nil?
            @Registries = []
            params['Registries'].each do |i|
              registry_tmp = Registry.new
              registry_tmp.deserialize(i)
              @Registries << registry_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInternalEndpointDnsStatus请求参数结构体
      class DescribeInternalEndpointDnsStatusRequest < TencentCloud::Common::AbstractModel
        # @param VpcSet: vpc列表
        # @type VpcSet: Array

        attr_accessor :VpcSet
        
        def initialize(vpcset=nil)
          @VpcSet = vpcset
        end

        def deserialize(params)
          unless params['VpcSet'].nil?
            @VpcSet = []
            params['VpcSet'].each do |i|
              vpcanddomaininfo_tmp = VpcAndDomainInfo.new
              vpcanddomaininfo_tmp.deserialize(i)
              @VpcSet << vpcanddomaininfo_tmp
            end
          end
        end
      end

      # DescribeInternalEndpointDnsStatus返回参数结构体
      class DescribeInternalEndpointDnsStatusResponse < TencentCloud::Common::AbstractModel
        # @param VpcSet: vpc私有域名解析状态列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VpcSet, :RequestId
        
        def initialize(vpcset=nil, requestid=nil)
          @VpcSet = vpcset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VpcSet'].nil?
            @VpcSet = []
            params['VpcSet'].each do |i|
              vpcprivatedomainstatus_tmp = VpcPrivateDomainStatus.new
              vpcprivatedomainstatus_tmp.deserialize(i)
              @VpcSet << vpcprivatedomainstatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInternalEndpoints请求参数结构体
      class DescribeInternalEndpointsRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String

        attr_accessor :RegistryId
        
        def initialize(registryid=nil)
          @RegistryId = registryid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
        end
      end

      # DescribeInternalEndpoints返回参数结构体
      class DescribeInternalEndpointsResponse < TencentCloud::Common::AbstractModel
        # @param AccessVpcSet: 内网接入信息的列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessVpcSet: Array
        # @param TotalCount: 内网接入总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccessVpcSet, :TotalCount, :RequestId
        
        def initialize(accessvpcset=nil, totalcount=nil, requestid=nil)
          @AccessVpcSet = accessvpcset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccessVpcSet'].nil?
            @AccessVpcSet = []
            params['AccessVpcSet'].each do |i|
              accessvpc_tmp = AccessVpc.new
              accessvpc_tmp.deserialize(i)
              @AccessVpcSet << accessvpc_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNamespacePersonal请求参数结构体
      class DescribeNamespacePersonalRequest < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间，支持模糊查询
        # @type Namespace: String
        # @param Limit: 单页数量
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer

        attr_accessor :Namespace, :Limit, :Offset
        
        def initialize(namespace=nil, limit=nil, offset=nil)
          @Namespace = namespace
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeNamespacePersonal返回参数结构体
      class DescribeNamespacePersonalResponse < TencentCloud::Common::AbstractModel
        # @param Data: 用户命名空间返回信息
        # @type Data: :class:`Tencentcloud::Tcr.v20190924.models.NamespaceInfoResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = NamespaceInfoResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNamespaces请求参数结构体
      class DescribeNamespacesRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param NamespaceName: 指定命名空间，不填写默认查询所有命名空间
        # @type NamespaceName: String
        # @param Limit: 每页个数
        # @type Limit: Integer
        # @param Offset: 页面偏移（第几页）
        # @type Offset: Integer
        # @param All: 列出所有命名空间
        # @type All: Boolean
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param KmsSignPolicy: 仅查询启用了 KMS 镜像签名的空间
        # @type KmsSignPolicy: Boolean

        attr_accessor :RegistryId, :NamespaceName, :Limit, :Offset, :All, :Filters, :KmsSignPolicy
        
        def initialize(registryid=nil, namespacename=nil, limit=nil, offset=nil, all=nil, filters=nil, kmssignpolicy=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
          @Limit = limit
          @Offset = offset
          @All = all
          @Filters = filters
          @KmsSignPolicy = kmssignpolicy
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @All = params['All']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @KmsSignPolicy = params['KmsSignPolicy']
        end
      end

      # DescribeNamespaces返回参数结构体
      class DescribeNamespacesResponse < TencentCloud::Common::AbstractModel
        # @param NamespaceList: 命名空间列表信息
        # @type NamespaceList: Array
        # @param TotalCount: 总个数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NamespaceList, :TotalCount, :RequestId
        
        def initialize(namespacelist=nil, totalcount=nil, requestid=nil)
          @NamespaceList = namespacelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NamespaceList'].nil?
            @NamespaceList = []
            params['NamespaceList'].each do |i|
              tcrnamespaceinfo_tmp = TcrNamespaceInfo.new
              tcrnamespaceinfo_tmp.deserialize(i)
              @NamespaceList << tcrnamespaceinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegions请求参数结构体
      class DescribeRegionsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRegions返回参数结构体
      class DescribeRegionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的总数
        # @type TotalCount: Integer
        # @param Regions: 地域信息列表
        # @type Regions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Regions, :RequestId
        
        def initialize(totalcount=nil, regions=nil, requestid=nil)
          @TotalCount = totalcount
          @Regions = regions
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Regions'].nil?
            @Regions = []
            params['Regions'].each do |i|
              region_tmp = Region.new
              region_tmp.deserialize(i)
              @Regions << region_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReplicationInstanceCreateTasks请求参数结构体
      class DescribeReplicationInstanceCreateTasksRequest < TencentCloud::Common::AbstractModel
        # @param ReplicationRegistryId: 同步实例Id，见实例返回列表中的同步实例ID
        # @type ReplicationRegistryId: String
        # @param ReplicationRegionId: 同步实例的地域ID，见实例返回列表中地域ID
        # @type ReplicationRegionId: Integer

        attr_accessor :ReplicationRegistryId, :ReplicationRegionId
        
        def initialize(replicationregistryid=nil, replicationregionid=nil)
          @ReplicationRegistryId = replicationregistryid
          @ReplicationRegionId = replicationregionid
        end

        def deserialize(params)
          @ReplicationRegistryId = params['ReplicationRegistryId']
          @ReplicationRegionId = params['ReplicationRegionId']
        end
      end

      # DescribeReplicationInstanceCreateTasks返回参数结构体
      class DescribeReplicationInstanceCreateTasksResponse < TencentCloud::Common::AbstractModel
        # @param TaskDetail: 任务详情
        # @type TaskDetail: Array
        # @param Status: 整体任务状态
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskDetail, :Status, :RequestId
        
        def initialize(taskdetail=nil, status=nil, requestid=nil)
          @TaskDetail = taskdetail
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskDetail'].nil?
            @TaskDetail = []
            params['TaskDetail'].each do |i|
              taskdetail_tmp = TaskDetail.new
              taskdetail_tmp.deserialize(i)
              @TaskDetail << taskdetail_tmp
            end
          end
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReplicationInstanceSyncStatus请求参数结构体
      class DescribeReplicationInstanceSyncStatusRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 主实例Id
        # @type RegistryId: String
        # @param ReplicationRegistryId: 复制实例Id
        # @type ReplicationRegistryId: String
        # @param ReplicationRegionId: 复制实例的地域Id
        # @type ReplicationRegionId: Integer
        # @param ShowReplicationLog: 是否显示同步日志
        # @type ShowReplicationLog: Boolean
        # @param Offset: 日志页号, 默认0
        # @type Offset: Integer
        # @param Limit: 最大输出条数，默认5，最大为20
        # @type Limit: Integer

        attr_accessor :RegistryId, :ReplicationRegistryId, :ReplicationRegionId, :ShowReplicationLog, :Offset, :Limit
        
        def initialize(registryid=nil, replicationregistryid=nil, replicationregionid=nil, showreplicationlog=nil, offset=nil, limit=nil)
          @RegistryId = registryid
          @ReplicationRegistryId = replicationregistryid
          @ReplicationRegionId = replicationregionid
          @ShowReplicationLog = showreplicationlog
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @ReplicationRegistryId = params['ReplicationRegistryId']
          @ReplicationRegionId = params['ReplicationRegionId']
          @ShowReplicationLog = params['ShowReplicationLog']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeReplicationInstanceSyncStatus返回参数结构体
      class DescribeReplicationInstanceSyncStatusResponse < TencentCloud::Common::AbstractModel
        # @param ReplicationStatus: 同步状态
        # @type ReplicationStatus: String
        # @param ReplicationTime: 同步完成时间
        # @type ReplicationTime: String
        # @param ReplicationLog: 同步日志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplicationLog: :class:`Tencentcloud::Tcr.v20190924.models.ReplicationLog`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReplicationStatus, :ReplicationTime, :ReplicationLog, :RequestId
        
        def initialize(replicationstatus=nil, replicationtime=nil, replicationlog=nil, requestid=nil)
          @ReplicationStatus = replicationstatus
          @ReplicationTime = replicationtime
          @ReplicationLog = replicationlog
          @RequestId = requestid
        end

        def deserialize(params)
          @ReplicationStatus = params['ReplicationStatus']
          @ReplicationTime = params['ReplicationTime']
          unless params['ReplicationLog'].nil?
            @ReplicationLog = ReplicationLog.new
            @ReplicationLog.deserialize(params['ReplicationLog'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReplicationInstances请求参数结构体
      class DescribeReplicationInstancesRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param Offset: 偏移量,默认0
        # @type Offset: Integer
        # @param Limit: 最大输出条数，默认20，最大为100
        # @type Limit: Integer

        attr_accessor :RegistryId, :Offset, :Limit
        
        def initialize(registryid=nil, offset=nil, limit=nil)
          @RegistryId = registryid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeReplicationInstances返回参数结构体
      class DescribeReplicationInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总实例个数
        # @type TotalCount: Integer
        # @param ReplicationRegistries: 同步实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplicationRegistries: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ReplicationRegistries, :RequestId
        
        def initialize(totalcount=nil, replicationregistries=nil, requestid=nil)
          @TotalCount = totalcount
          @ReplicationRegistries = replicationregistries
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ReplicationRegistries'].nil?
            @ReplicationRegistries = []
            params['ReplicationRegistries'].each do |i|
              replicationregistry_tmp = ReplicationRegistry.new
              replicationregistry_tmp.deserialize(i)
              @ReplicationRegistries << replicationregistry_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRepositories请求参数结构体
      class DescribeRepositoriesRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param NamespaceName: 指定命名空间，不填写默认为查询所有命名空间下镜像仓库
        # @type NamespaceName: String
        # @param RepositoryName: 指定镜像仓库，不填写默认查询指定命名空间下所有镜像仓库
        # @type RepositoryName: String
        # @param Offset: 页数，用于分页
        # @type Offset: Integer
        # @param Limit: 每页个数，用于分页
        # @type Limit: Integer
        # @param SortBy: 基于字段排序，支持的值有-creation_time,-name, -update_time
        # @type SortBy: String

        attr_accessor :RegistryId, :NamespaceName, :RepositoryName, :Offset, :Limit, :SortBy
        
        def initialize(registryid=nil, namespacename=nil, repositoryname=nil, offset=nil, limit=nil, sortby=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
          @RepositoryName = repositoryname
          @Offset = offset
          @Limit = limit
          @SortBy = sortby
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
          @RepositoryName = params['RepositoryName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SortBy = params['SortBy']
        end
      end

      # DescribeRepositories返回参数结构体
      class DescribeRepositoriesResponse < TencentCloud::Common::AbstractModel
        # @param RepositoryList: 仓库信息列表
        # @type RepositoryList: Array
        # @param TotalCount: 总个数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RepositoryList, :TotalCount, :RequestId
        
        def initialize(repositorylist=nil, totalcount=nil, requestid=nil)
          @RepositoryList = repositorylist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RepositoryList'].nil?
            @RepositoryList = []
            params['RepositoryList'].each do |i|
              tcrrepositoryinfo_tmp = TcrRepositoryInfo.new
              tcrrepositoryinfo_tmp.deserialize(i)
              @RepositoryList << tcrrepositoryinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRepositoryFilterPersonal请求参数结构体
      class DescribeRepositoryFilterPersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 搜索镜像名
        # @type RepoName: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回最大数量，默认 20，最大100
        # @type Limit: Integer
        # @param Public: 筛选条件：1表示public，0表示private
        # @type Public: Integer
        # @param Namespace: 命名空间
        # @type Namespace: String

        attr_accessor :RepoName, :Offset, :Limit, :Public, :Namespace
        
        def initialize(reponame=nil, offset=nil, limit=nil, public=nil, namespace=nil)
          @RepoName = reponame
          @Offset = offset
          @Limit = limit
          @Public = public
          @Namespace = namespace
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Public = params['Public']
          @Namespace = params['Namespace']
        end
      end

      # DescribeRepositoryFilterPersonal返回参数结构体
      class DescribeRepositoryFilterPersonalResponse < TencentCloud::Common::AbstractModel
        # @param Data: 仓库信息
        # @type Data: :class:`Tencentcloud::Tcr.v20190924.models.SearchUserRepositoryResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SearchUserRepositoryResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRepositoryOwnerPersonal请求参数结构体
      class DescribeRepositoryOwnerPersonalRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回最大数量，默认 20, 最大值 100
        # @type Limit: Integer
        # @param RepoName: 仓库名称
        # @type RepoName: String

        attr_accessor :Offset, :Limit, :RepoName
        
        def initialize(offset=nil, limit=nil, reponame=nil)
          @Offset = offset
          @Limit = limit
          @RepoName = reponame
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @RepoName = params['RepoName']
        end
      end

      # DescribeRepositoryOwnerPersonal返回参数结构体
      class DescribeRepositoryOwnerPersonalResponse < TencentCloud::Common::AbstractModel
        # @param Data: 仓库信息
        # @type Data: :class:`Tencentcloud::Tcr.v20190924.models.RepoInfoResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RepoInfoResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRepositoryPersonal请求参数结构体
      class DescribeRepositoryPersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名字
        # @type RepoName: String

        attr_accessor :RepoName
        
        def initialize(reponame=nil)
          @RepoName = reponame
        end

        def deserialize(params)
          @RepoName = params['RepoName']
        end
      end

      # DescribeRepositoryPersonal返回参数结构体
      class DescribeRepositoryPersonalResponse < TencentCloud::Common::AbstractModel
        # @param Data: 仓库信息
        # @type Data: :class:`Tencentcloud::Tcr.v20190924.models.RepositoryInfoResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RepositoryInfoResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityPolicies请求参数结构体
      class DescribeSecurityPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例的Id
        # @type RegistryId: String

        attr_accessor :RegistryId
        
        def initialize(registryid=nil)
          @RegistryId = registryid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
        end
      end

      # DescribeSecurityPolicies返回参数结构体
      class DescribeSecurityPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param SecurityPolicySet: 实例安全策略组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityPolicySet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityPolicySet, :RequestId
        
        def initialize(securitypolicyset=nil, requestid=nil)
          @SecurityPolicySet = securitypolicyset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityPolicySet'].nil?
            @SecurityPolicySet = []
            params['SecurityPolicySet'].each do |i|
              securitypolicy_tmp = SecurityPolicy.new
              securitypolicy_tmp.deserialize(i)
              @SecurityPolicySet << securitypolicy_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTagRetentionExecution请求参数结构体
      class DescribeTagRetentionExecutionRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 主实例iD
        # @type RegistryId: String
        # @param RetentionId: 规则Id
        # @type RetentionId: Integer
        # @param Limit: 分页PageSize
        # @type Limit: Integer
        # @param Offset: 分页Page
        # @type Offset: Integer

        attr_accessor :RegistryId, :RetentionId, :Limit, :Offset
        
        def initialize(registryid=nil, retentionid=nil, limit=nil, offset=nil)
          @RegistryId = registryid
          @RetentionId = retentionid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @RetentionId = params['RetentionId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeTagRetentionExecution返回参数结构体
      class DescribeTagRetentionExecutionResponse < TencentCloud::Common::AbstractModel
        # @param RetentionExecutionList: 版本保留执行记录列表
        # @type RetentionExecutionList: Array
        # @param TotalCount: 版本保留执行记录总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RetentionExecutionList, :TotalCount, :RequestId
        
        def initialize(retentionexecutionlist=nil, totalcount=nil, requestid=nil)
          @RetentionExecutionList = retentionexecutionlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RetentionExecutionList'].nil?
            @RetentionExecutionList = []
            params['RetentionExecutionList'].each do |i|
              retentionexecution_tmp = RetentionExecution.new
              retentionexecution_tmp.deserialize(i)
              @RetentionExecutionList << retentionexecution_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTagRetentionExecutionTask请求参数结构体
      class DescribeTagRetentionExecutionTaskRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 主实例iD
        # @type RegistryId: String
        # @param RetentionId: 规则Id
        # @type RetentionId: Integer
        # @param ExecutionId: 规则执行Id
        # @type ExecutionId: Integer
        # @param Offset: 分页Page
        # @type Offset: Integer
        # @param Limit: 分页PageSize
        # @type Limit: Integer

        attr_accessor :RegistryId, :RetentionId, :ExecutionId, :Offset, :Limit
        
        def initialize(registryid=nil, retentionid=nil, executionid=nil, offset=nil, limit=nil)
          @RegistryId = registryid
          @RetentionId = retentionid
          @ExecutionId = executionid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @RetentionId = params['RetentionId']
          @ExecutionId = params['ExecutionId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTagRetentionExecutionTask返回参数结构体
      class DescribeTagRetentionExecutionTaskResponse < TencentCloud::Common::AbstractModel
        # @param RetentionTaskList: 版本保留执行任务列表
        # @type RetentionTaskList: Array
        # @param TotalCount: 版本保留执行任务总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RetentionTaskList, :TotalCount, :RequestId
        
        def initialize(retentiontasklist=nil, totalcount=nil, requestid=nil)
          @RetentionTaskList = retentiontasklist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RetentionTaskList'].nil?
            @RetentionTaskList = []
            params['RetentionTaskList'].each do |i|
              retentiontask_tmp = RetentionTask.new
              retentiontask_tmp.deserialize(i)
              @RetentionTaskList << retentiontask_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTagRetentionRules请求参数结构体
      class DescribeTagRetentionRulesRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 主实例iD
        # @type RegistryId: String
        # @param NamespaceName: 命名空间的名称
        # @type NamespaceName: String
        # @param Limit: 分页PageSize
        # @type Limit: Integer
        # @param Offset: 分页Page
        # @type Offset: Integer

        attr_accessor :RegistryId, :NamespaceName, :Limit, :Offset
        
        def initialize(registryid=nil, namespacename=nil, limit=nil, offset=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeTagRetentionRules返回参数结构体
      class DescribeTagRetentionRulesResponse < TencentCloud::Common::AbstractModel
        # @param RetentionPolicyList: 版本保留策略列表
        # @type RetentionPolicyList: Array
        # @param TotalCount: 版本保留策略总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RetentionPolicyList, :TotalCount, :RequestId
        
        def initialize(retentionpolicylist=nil, totalcount=nil, requestid=nil)
          @RetentionPolicyList = retentionpolicylist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RetentionPolicyList'].nil?
            @RetentionPolicyList = []
            params['RetentionPolicyList'].each do |i|
              retentionpolicy_tmp = RetentionPolicy.new
              retentionpolicy_tmp.deserialize(i)
              @RetentionPolicyList << retentionpolicy_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserQuotaPersonal请求参数结构体
      class DescribeUserQuotaPersonalRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeUserQuotaPersonal返回参数结构体
      class DescribeUserQuotaPersonalResponse < TencentCloud::Common::AbstractModel
        # @param Data: 配额返回信息
        # @type Data: :class:`Tencentcloud::Tcr.v20190924.models.RespLimit`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RespLimit.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebhookTriggerLog请求参数结构体
      class DescribeWebhookTriggerLogRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例 Id
        # @type RegistryId: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Id: 触发器 Id
        # @type Id: Integer
        # @param Limit: 分页单页数量
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer

        attr_accessor :RegistryId, :Namespace, :Id, :Limit, :Offset
        
        def initialize(registryid=nil, namespace=nil, id=nil, limit=nil, offset=nil)
          @RegistryId = registryid
          @Namespace = namespace
          @Id = id
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @Namespace = params['Namespace']
          @Id = params['Id']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeWebhookTriggerLog返回参数结构体
      class DescribeWebhookTriggerLogResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Logs: 日志列表
        # @type Logs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Logs, :RequestId
        
        def initialize(totalcount=nil, logs=nil, requestid=nil)
          @TotalCount = totalcount
          @Logs = logs
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Logs'].nil?
            @Logs = []
            params['Logs'].each do |i|
              webhooktriggerlog_tmp = WebhookTriggerLog.new
              webhooktriggerlog_tmp.deserialize(i)
              @Logs << webhooktriggerlog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebhookTrigger请求参数结构体
      class DescribeWebhookTriggerRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param Limit: 分页单页数量
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Namespace: 命名空间
        # @type Namespace: String

        attr_accessor :RegistryId, :Limit, :Offset, :Namespace
        
        def initialize(registryid=nil, limit=nil, offset=nil, namespace=nil)
          @RegistryId = registryid
          @Limit = limit
          @Offset = offset
          @Namespace = namespace
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Namespace = params['Namespace']
        end
      end

      # DescribeWebhookTrigger返回参数结构体
      class DescribeWebhookTriggerResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 触发器总数
        # @type TotalCount: Integer
        # @param Triggers: 触发器列表
        # @type Triggers: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Triggers, :RequestId
        
        def initialize(totalcount=nil, triggers=nil, requestid=nil)
          @TotalCount = totalcount
          @Triggers = triggers
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Triggers'].nil?
            @Triggers = []
            params['Triggers'].each do |i|
              webhooktrigger_tmp = WebhookTrigger.new
              webhooktrigger_tmp.deserialize(i)
              @Triggers << webhooktrigger_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DownloadHelmChart请求参数结构体
      class DownloadHelmChartRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例ID
        # @type RegistryId: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param ChartName: Helm chart名称
        # @type ChartName: String
        # @param ChartVersion: Helm chart版本
        # @type ChartVersion: String

        attr_accessor :RegistryId, :NamespaceName, :ChartName, :ChartVersion
        
        def initialize(registryid=nil, namespacename=nil, chartname=nil, chartversion=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
          @ChartName = chartname
          @ChartVersion = chartversion
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
          @ChartName = params['ChartName']
          @ChartVersion = params['ChartVersion']
        end
      end

      # DownloadHelmChart返回参数结构体
      class DownloadHelmChartResponse < TencentCloud::Common::AbstractModel
        # @param TmpToken: 临时token
        # @type TmpToken: String
        # @param TmpSecretId: 临时的secretId
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时的secretKey
        # @type TmpSecretKey: String
        # @param Bucket: 存储桶信息
        # @type Bucket: String
        # @param Region: 实例ID
        # @type Region: String
        # @param Path: chart信息
        # @type Path: String
        # @param StartTime: 开始时间时间戳
        # @type StartTime: Integer
        # @param ExpiredTime: token过期时间时间戳
        # @type ExpiredTime: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TmpToken, :TmpSecretId, :TmpSecretKey, :Bucket, :Region, :Path, :StartTime, :ExpiredTime, :RequestId
        
        def initialize(tmptoken=nil, tmpsecretid=nil, tmpsecretkey=nil, bucket=nil, region=nil, path=nil, starttime=nil, expiredtime=nil, requestid=nil)
          @TmpToken = tmptoken
          @TmpSecretId = tmpsecretid
          @TmpSecretKey = tmpsecretkey
          @Bucket = bucket
          @Region = region
          @Path = path
          @StartTime = starttime
          @ExpiredTime = expiredtime
          @RequestId = requestid
        end

        def deserialize(params)
          @TmpToken = params['TmpToken']
          @TmpSecretId = params['TmpSecretId']
          @TmpSecretKey = params['TmpSecretKey']
          @Bucket = params['Bucket']
          @Region = params['Region']
          @Path = params['Path']
          @StartTime = params['StartTime']
          @ExpiredTime = params['ExpiredTime']
          @RequestId = params['RequestId']
        end
      end

      # 复制镜像tag返回值
      class DupImageTagResp < TencentCloud::Common::AbstractModel
        # @param Digest: 镜像Digest值
        # @type Digest: String

        attr_accessor :Digest
        
        def initialize(digest=nil)
          @Digest = digest
        end

        def deserialize(params)
          @Digest = params['Digest']
        end
      end

      # DuplicateImagePersonal请求参数结构体
      class DuplicateImagePersonalRequest < TencentCloud::Common::AbstractModel
        # @param SrcImage: 源镜像名称，不包含domain。例如： tencentyun/foo:v1
        # @type SrcImage: String
        # @param DestImage: 目的镜像名称，不包含domain。例如： tencentyun/foo:latest
        # @type DestImage: String

        attr_accessor :SrcImage, :DestImage
        
        def initialize(srcimage=nil, destimage=nil)
          @SrcImage = srcimage
          @DestImage = destimage
        end

        def deserialize(params)
          @SrcImage = params['SrcImage']
          @DestImage = params['DestImage']
        end
      end

      # DuplicateImagePersonal返回参数结构体
      class DuplicateImagePersonalResponse < TencentCloud::Common::AbstractModel
        # @param Data: 复制镜像返回值
        # @type Data: :class:`Tencentcloud::Tcr.v20190924.models.DupImageTagResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DupImageTagResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 用于获取收藏仓库的响应
      class FavorResp < TencentCloud::Common::AbstractModel
        # @param TotalCount: 收藏仓库的总数
        # @type TotalCount: Integer
        # @param RepoInfo: 仓库信息数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoInfo: Array

        attr_accessor :TotalCount, :RepoInfo
        
        def initialize(totalcount=nil, repoinfo=nil)
          @TotalCount = totalcount
          @RepoInfo = repoinfo
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RepoInfo'].nil?
            @RepoInfo = []
            params['RepoInfo'].each do |i|
              favors_tmp = Favors.new
              favors_tmp.deserialize(i)
              @RepoInfo << favors_tmp
            end
          end
        end
      end

      # 仓库收藏
      class Favors < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名字
        # @type RepoName: String
        # @param RepoType: 仓库类型
        # @type RepoType: String
        # @param PullCount: Pull总共的次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PullCount: Integer
        # @param FavorCount: 仓库收藏次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FavorCount: Integer
        # @param Public: 仓库是否公开
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Public: Integer
        # @param IsQcloudOfficial: 是否为官方所有
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsQcloudOfficial: Boolean
        # @param TagCount: 仓库Tag的数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagCount: Integer
        # @param Logo: Logo
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Logo: String
        # @param Region: 地域
        # @type Region: String
        # @param RegionId: 地域的Id
        # @type RegionId: Integer

        attr_accessor :RepoName, :RepoType, :PullCount, :FavorCount, :Public, :IsQcloudOfficial, :TagCount, :Logo, :Region, :RegionId
        
        def initialize(reponame=nil, repotype=nil, pullcount=nil, favorcount=nil, public=nil, isqcloudofficial=nil, tagcount=nil, logo=nil, region=nil, regionid=nil)
          @RepoName = reponame
          @RepoType = repotype
          @PullCount = pullcount
          @FavorCount = favorcount
          @Public = public
          @IsQcloudOfficial = isqcloudofficial
          @TagCount = tagcount
          @Logo = logo
          @Region = region
          @RegionId = regionid
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @RepoType = params['RepoType']
          @PullCount = params['PullCount']
          @FavorCount = params['FavorCount']
          @Public = params['Public']
          @IsQcloudOfficial = params['IsQcloudOfficial']
          @TagCount = params['TagCount']
          @Logo = params['Logo']
          @Region = params['Region']
          @RegionId = params['RegionId']
        end
      end

      # 过滤器
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 属性名称, 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        # @type Name: String
        # @param Values: 属性值, 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
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

      # GC 执行信息
      class GCJobInfo < TencentCloud::Common::AbstractModel
        # @param ID: 作业 ID
        # @type ID: Integer
        # @param JobStatus: 作业状态
        # @type JobStatus: String
        # @param CreationTime: 创建时间
        # @type CreationTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Schedule: 调度信息
        # @type Schedule: :class:`Tencentcloud::Tcr.v20190924.models.Schedule`

        attr_accessor :ID, :JobStatus, :CreationTime, :UpdateTime, :Schedule
        
        def initialize(id=nil, jobstatus=nil, creationtime=nil, updatetime=nil, schedule=nil)
          @ID = id
          @JobStatus = jobstatus
          @CreationTime = creationtime
          @UpdateTime = updatetime
          @Schedule = schedule
        end

        def deserialize(params)
          @ID = params['ID']
          @JobStatus = params['JobStatus']
          @CreationTime = params['CreationTime']
          @UpdateTime = params['UpdateTime']
          unless params['Schedule'].nil?
            @Schedule = Schedule.new
            @Schedule.deserialize(params['Schedule'])
          end
        end
      end

      # Header KV
      class Header < TencentCloud::Common::AbstractModel
        # @param Key: Header Key
        # @type Key: String
        # @param Values: Header Values
        # @type Values: Array

        attr_accessor :Key, :Values
        
        def initialize(key=nil, values=nil)
          @Key = key
          @Values = values
        end

        def deserialize(params)
          @Key = params['Key']
          @Values = params['Values']
        end
      end

      # 镜像 tag 不可变规则
      class ImmutableTagRule < TencentCloud::Common::AbstractModel
        # @param RepositoryPattern: 仓库匹配规则
        # @type RepositoryPattern: String
        # @param TagPattern: Tag 匹配规则
        # @type TagPattern: String
        # @param RepositoryDecoration: repoMatches或repoExcludes
        # @type RepositoryDecoration: String
        # @param TagDecoration: matches或excludes
        # @type TagDecoration: String
        # @param Disabled: 禁用规则
        # @type Disabled: Boolean
        # @param RuleId: 规则 Id
        # @type RuleId: Integer
        # @param NsName: 命名空间
        # @type NsName: String

        attr_accessor :RepositoryPattern, :TagPattern, :RepositoryDecoration, :TagDecoration, :Disabled, :RuleId, :NsName
        
        def initialize(repositorypattern=nil, tagpattern=nil, repositorydecoration=nil, tagdecoration=nil, disabled=nil, ruleid=nil, nsname=nil)
          @RepositoryPattern = repositorypattern
          @TagPattern = tagpattern
          @RepositoryDecoration = repositorydecoration
          @TagDecoration = tagdecoration
          @Disabled = disabled
          @RuleId = ruleid
          @NsName = nsname
        end

        def deserialize(params)
          @RepositoryPattern = params['RepositoryPattern']
          @TagPattern = params['TagPattern']
          @RepositoryDecoration = params['RepositoryDecoration']
          @TagDecoration = params['TagDecoration']
          @Disabled = params['Disabled']
          @RuleId = params['RuleId']
          @NsName = params['NsName']
        end
      end

      # 通用参数字符串键值对
      class KeyValueString < TencentCloud::Common::AbstractModel
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

      # 共享镜像仓库用户配额
      class Limit < TencentCloud::Common::AbstractModel
        # @param Username: 用户名
        # @type Username: String
        # @param Type: 配额的类型
        # @type Type: String
        # @param Value: 配置的值
        # @type Value: Integer

        attr_accessor :Username, :Type, :Value
        
        def initialize(username=nil, type=nil, value=nil)
          @Username = username
          @Type = type
          @Value = value
        end

        def deserialize(params)
          @Username = params['Username']
          @Type = params['Type']
          @Value = params['Value']
        end
      end

      # ManageExternalEndpoint请求参数结构体
      class ManageExternalEndpointRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param Operation: 操作（Create/Delete）
        # @type Operation: String

        attr_accessor :RegistryId, :Operation
        
        def initialize(registryid=nil, operation=nil)
          @RegistryId = registryid
          @Operation = operation
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @Operation = params['Operation']
        end
      end

      # ManageExternalEndpoint返回参数结构体
      class ManageExternalEndpointResponse < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegistryId, :RequestId
        
        def initialize(registryid=nil, requestid=nil)
          @RegistryId = registryid
          @RequestId = requestid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @RequestId = params['RequestId']
        end
      end

      # ManageImageLifecycleGlobalPersonal请求参数结构体
      class ManageImageLifecycleGlobalPersonalRequest < TencentCloud::Common::AbstractModel
        # @param Type: global_keep_last_days:全局保留最近几天的数据;global_keep_last_nums:全局保留最近多少个
        # @type Type: String
        # @param Val: 策略值
        # @type Val: Integer

        attr_accessor :Type, :Val
        
        def initialize(type=nil, val=nil)
          @Type = type
          @Val = val
        end

        def deserialize(params)
          @Type = params['Type']
          @Val = params['Val']
        end
      end

      # ManageImageLifecycleGlobalPersonal返回参数结构体
      class ManageImageLifecycleGlobalPersonalResponse < TencentCloud::Common::AbstractModel
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

      # ManageInternalEndpoint请求参数结构体
      class ManageInternalEndpointRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param Operation: Create/Delete
        # @type Operation: String
        # @param VpcId: 需要接入的用户vpcid
        # @type VpcId: String
        # @param SubnetId: 需要接入的用户子网id
        # @type SubnetId: String
        # @param RegionId: 请求的地域ID，用于实例复制地域
        # @type RegionId: Integer
        # @param RegionName: 请求的地域名称，用于实例复制地域
        # @type RegionName: String

        attr_accessor :RegistryId, :Operation, :VpcId, :SubnetId, :RegionId, :RegionName
        
        def initialize(registryid=nil, operation=nil, vpcid=nil, subnetid=nil, regionid=nil, regionname=nil)
          @RegistryId = registryid
          @Operation = operation
          @VpcId = vpcid
          @SubnetId = subnetid
          @RegionId = regionid
          @RegionName = regionname
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @Operation = params['Operation']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
        end
      end

      # ManageInternalEndpoint返回参数结构体
      class ManageInternalEndpointResponse < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegistryId, :RequestId
        
        def initialize(registryid=nil, requestid=nil)
          @RegistryId = registryid
          @RequestId = requestid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @RequestId = params['RequestId']
        end
      end

      # ManageReplication请求参数结构体
      class ManageReplicationRequest < TencentCloud::Common::AbstractModel
        # @param SourceRegistryId: 复制源实例ID
        # @type SourceRegistryId: String
        # @param DestinationRegistryId: 复制目标实例ID
        # @type DestinationRegistryId: String
        # @param Rule: 同步规则
        # @type Rule: :class:`Tencentcloud::Tcr.v20190924.models.ReplicationRule`
        # @param Description: 规则描述
        # @type Description: String
        # @param DestinationRegionId: 目标实例的地域ID，如广州是1
        # @type DestinationRegionId: Integer
        # @param PeerReplicationOption: 开启跨主账号实例同步配置项
        # @type PeerReplicationOption: :class:`Tencentcloud::Tcr.v20190924.models.PeerReplicationOption`

        attr_accessor :SourceRegistryId, :DestinationRegistryId, :Rule, :Description, :DestinationRegionId, :PeerReplicationOption
        
        def initialize(sourceregistryid=nil, destinationregistryid=nil, rule=nil, description=nil, destinationregionid=nil, peerreplicationoption=nil)
          @SourceRegistryId = sourceregistryid
          @DestinationRegistryId = destinationregistryid
          @Rule = rule
          @Description = description
          @DestinationRegionId = destinationregionid
          @PeerReplicationOption = peerreplicationoption
        end

        def deserialize(params)
          @SourceRegistryId = params['SourceRegistryId']
          @DestinationRegistryId = params['DestinationRegistryId']
          unless params['Rule'].nil?
            @Rule = ReplicationRule.new
            @Rule.deserialize(params['Rule'])
          end
          @Description = params['Description']
          @DestinationRegionId = params['DestinationRegionId']
          unless params['PeerReplicationOption'].nil?
            @PeerReplicationOption = PeerReplicationOption.new
            @PeerReplicationOption.deserialize(params['PeerReplicationOption'])
          end
        end
      end

      # ManageReplication返回参数结构体
      class ManageReplicationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyApplicationTriggerPersonal请求参数结构体
      class ModifyApplicationTriggerPersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 触发器关联的镜像仓库，library/test格式
        # @type RepoName: String
        # @param TriggerName: 触发器名称，必填参数
        # @type TriggerName: String
        # @param InvokeMethod: 触发方式，"all"全部触发，"taglist"指定tag触发，"regex"正则触发
        # @type InvokeMethod: String
        # @param InvokeExpr: 触发方式对应的表达式
        # @type InvokeExpr: String
        # @param ClusterId: 应用所在TKE集群ID
        # @type ClusterId: String
        # @param Namespace: 应用所在TKE集群命名空间
        # @type Namespace: String
        # @param WorkloadType: 应用所在TKE集群工作负载类型,支持Deployment、StatefulSet、DaemonSet、CronJob、Job。
        # @type WorkloadType: String
        # @param WorkloadName: 应用所在TKE集群工作负载名称
        # @type WorkloadName: String
        # @param ContainerName: 应用所在TKE集群工作负载下容器名称
        # @type ContainerName: String
        # @param ClusterRegion: 应用所在TKE集群地域数字ID，如1（广州）、16（成都）
        # @type ClusterRegion: Integer
        # @param NewTriggerName: 新触发器名称
        # @type NewTriggerName: String

        attr_accessor :RepoName, :TriggerName, :InvokeMethod, :InvokeExpr, :ClusterId, :Namespace, :WorkloadType, :WorkloadName, :ContainerName, :ClusterRegion, :NewTriggerName
        
        def initialize(reponame=nil, triggername=nil, invokemethod=nil, invokeexpr=nil, clusterid=nil, namespace=nil, workloadtype=nil, workloadname=nil, containername=nil, clusterregion=nil, newtriggername=nil)
          @RepoName = reponame
          @TriggerName = triggername
          @InvokeMethod = invokemethod
          @InvokeExpr = invokeexpr
          @ClusterId = clusterid
          @Namespace = namespace
          @WorkloadType = workloadtype
          @WorkloadName = workloadname
          @ContainerName = containername
          @ClusterRegion = clusterregion
          @NewTriggerName = newtriggername
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @TriggerName = params['TriggerName']
          @InvokeMethod = params['InvokeMethod']
          @InvokeExpr = params['InvokeExpr']
          @ClusterId = params['ClusterId']
          @Namespace = params['Namespace']
          @WorkloadType = params['WorkloadType']
          @WorkloadName = params['WorkloadName']
          @ContainerName = params['ContainerName']
          @ClusterRegion = params['ClusterRegion']
          @NewTriggerName = params['NewTriggerName']
        end
      end

      # ModifyApplicationTriggerPersonal返回参数结构体
      class ModifyApplicationTriggerPersonalResponse < TencentCloud::Common::AbstractModel
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

      # ModifyImmutableTagRules请求参数结构体
      class ModifyImmutableTagRulesRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例 Id
        # @type RegistryId: String
        # @param NamespaceName: 命名空间
        # @type NamespaceName: String
        # @param RuleId: 规则 Id
        # @type RuleId: Integer
        # @param Rule: 规则
        # @type Rule: :class:`Tencentcloud::Tcr.v20190924.models.ImmutableTagRule`

        attr_accessor :RegistryId, :NamespaceName, :RuleId, :Rule
        
        def initialize(registryid=nil, namespacename=nil, ruleid=nil, rule=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
          @RuleId = ruleid
          @Rule = rule
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
          @RuleId = params['RuleId']
          unless params['Rule'].nil?
            @Rule = ImmutableTagRule.new
            @Rule.deserialize(params['Rule'])
          end
        end
      end

      # ModifyImmutableTagRules返回参数结构体
      class ModifyImmutableTagRulesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstance请求参数结构体
      class ModifyInstanceRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例ID
        # @type RegistryId: String
        # @param RegistryType: 实例的规格
        # @type RegistryType: String

        attr_accessor :RegistryId, :RegistryType
        
        def initialize(registryid=nil, registrytype=nil)
          @RegistryId = registryid
          @RegistryType = registrytype
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @RegistryType = params['RegistryType']
        end
      end

      # ModifyInstance返回参数结构体
      class ModifyInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstanceToken请求参数结构体
      class ModifyInstanceTokenRequest < TencentCloud::Common::AbstractModel
        # @param TokenId: 实例长期访问凭证 ID
        # @type TokenId: String
        # @param RegistryId: 实例 ID
        # @type RegistryId: String
        # @param Enable: 启用或禁用实例长期访问凭证
        # @type Enable: Boolean
        # @param Desc: 访问凭证描述
        # @type Desc: String
        # @param ModifyFlag: 1为修改描述 2为操作启动禁用，默认值为2
        # @type ModifyFlag: Integer

        attr_accessor :TokenId, :RegistryId, :Enable, :Desc, :ModifyFlag
        
        def initialize(tokenid=nil, registryid=nil, enable=nil, desc=nil, modifyflag=nil)
          @TokenId = tokenid
          @RegistryId = registryid
          @Enable = enable
          @Desc = desc
          @ModifyFlag = modifyflag
        end

        def deserialize(params)
          @TokenId = params['TokenId']
          @RegistryId = params['RegistryId']
          @Enable = params['Enable']
          @Desc = params['Desc']
          @ModifyFlag = params['ModifyFlag']
        end
      end

      # ModifyInstanceToken返回参数结构体
      class ModifyInstanceTokenResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNamespace请求参数结构体
      class ModifyNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param IsPublic: 访问级别，True为公开，False为私有
        # @type IsPublic: Boolean

        attr_accessor :RegistryId, :NamespaceName, :IsPublic
        
        def initialize(registryid=nil, namespacename=nil, ispublic=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
          @IsPublic = ispublic
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
          @IsPublic = params['IsPublic']
        end
      end

      # ModifyNamespace返回参数结构体
      class ModifyNamespaceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRepositoryAccessPersonal请求参数结构体
      class ModifyRepositoryAccessPersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名称
        # @type RepoName: String
        # @param Public: 默认值为0, 1公共，0私有
        # @type Public: Integer

        attr_accessor :RepoName, :Public
        
        def initialize(reponame=nil, public=nil)
          @RepoName = reponame
          @Public = public
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @Public = params['Public']
        end
      end

      # ModifyRepositoryAccessPersonal返回参数结构体
      class ModifyRepositoryAccessPersonalResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRepositoryInfoPersonal请求参数结构体
      class ModifyRepositoryInfoPersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名称
        # @type RepoName: String
        # @param Description: 仓库描述
        # @type Description: String

        attr_accessor :RepoName, :Description
        
        def initialize(reponame=nil, description=nil)
          @RepoName = reponame
          @Description = description
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @Description = params['Description']
        end
      end

      # ModifyRepositoryInfoPersonal返回参数结构体
      class ModifyRepositoryInfoPersonalResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRepository请求参数结构体
      class ModifyRepositoryRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例ID
        # @type RegistryId: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param RepositoryName: 镜像仓库名称
        # @type RepositoryName: String
        # @param BriefDescription: 仓库简短描述
        # @type BriefDescription: String
        # @param Description: 仓库详细描述
        # @type Description: String

        attr_accessor :RegistryId, :NamespaceName, :RepositoryName, :BriefDescription, :Description
        
        def initialize(registryid=nil, namespacename=nil, repositoryname=nil, briefdescription=nil, description=nil)
          @RegistryId = registryid
          @NamespaceName = namespacename
          @RepositoryName = repositoryname
          @BriefDescription = briefdescription
          @Description = description
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceName = params['NamespaceName']
          @RepositoryName = params['RepositoryName']
          @BriefDescription = params['BriefDescription']
          @Description = params['Description']
        end
      end

      # ModifyRepository返回参数结构体
      class ModifyRepositoryResponse < TencentCloud::Common::AbstractModel
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

      # ModifySecurityPolicy请求参数结构体
      class ModifySecurityPolicyRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例的Id
        # @type RegistryId: String
        # @param PolicyIndex: PolicyId
        # @type PolicyIndex: Integer
        # @param CidrBlock: 192.168.0.0/24 白名单Ip
        # @type CidrBlock: String
        # @param Description: 备注
        # @type Description: String

        attr_accessor :RegistryId, :PolicyIndex, :CidrBlock, :Description
        
        def initialize(registryid=nil, policyindex=nil, cidrblock=nil, description=nil)
          @RegistryId = registryid
          @PolicyIndex = policyindex
          @CidrBlock = cidrblock
          @Description = description
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @PolicyIndex = params['PolicyIndex']
          @CidrBlock = params['CidrBlock']
          @Description = params['Description']
        end
      end

      # ModifySecurityPolicy返回参数结构体
      class ModifySecurityPolicyResponse < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegistryId, :RequestId
        
        def initialize(registryid=nil, requestid=nil)
          @RegistryId = registryid
          @RequestId = requestid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTagRetentionRule请求参数结构体
      class ModifyTagRetentionRuleRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 主实例iD
        # @type RegistryId: String
        # @param NamespaceId: 命名空间的Id，必须填写原有的命名空间id
        # @type NamespaceId: Integer
        # @param RetentionRule: 保留策略
        # @type RetentionRule: :class:`Tencentcloud::Tcr.v20190924.models.RetentionRule`
        # @param CronSetting: 执行周期，必须填写为原来的设置
        # @type CronSetting: String
        # @param RetentionId: 规则Id
        # @type RetentionId: Integer
        # @param Disabled: 是否禁用规则
        # @type Disabled: Boolean

        attr_accessor :RegistryId, :NamespaceId, :RetentionRule, :CronSetting, :RetentionId, :Disabled
        
        def initialize(registryid=nil, namespaceid=nil, retentionrule=nil, cronsetting=nil, retentionid=nil, disabled=nil)
          @RegistryId = registryid
          @NamespaceId = namespaceid
          @RetentionRule = retentionrule
          @CronSetting = cronsetting
          @RetentionId = retentionid
          @Disabled = disabled
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @NamespaceId = params['NamespaceId']
          unless params['RetentionRule'].nil?
            @RetentionRule = RetentionRule.new
            @RetentionRule.deserialize(params['RetentionRule'])
          end
          @CronSetting = params['CronSetting']
          @RetentionId = params['RetentionId']
          @Disabled = params['Disabled']
        end
      end

      # ModifyTagRetentionRule返回参数结构体
      class ModifyTagRetentionRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUserPasswordPersonal请求参数结构体
      class ModifyUserPasswordPersonalRequest < TencentCloud::Common::AbstractModel
        # @param Password: 更新后的密码
        # @type Password: String

        attr_accessor :Password
        
        def initialize(password=nil)
          @Password = password
        end

        def deserialize(params)
          @Password = params['Password']
        end
      end

      # ModifyUserPasswordPersonal返回参数结构体
      class ModifyUserPasswordPersonalResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWebhookTrigger请求参数结构体
      class ModifyWebhookTriggerRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param Trigger: 触发器参数
        # @type Trigger: :class:`Tencentcloud::Tcr.v20190924.models.WebhookTrigger`
        # @param Namespace: 命名空间
        # @type Namespace: String

        attr_accessor :RegistryId, :Trigger, :Namespace
        
        def initialize(registryid=nil, trigger=nil, namespace=nil)
          @RegistryId = registryid
          @Trigger = trigger
          @Namespace = namespace
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          unless params['Trigger'].nil?
            @Trigger = WebhookTrigger.new
            @Trigger.deserialize(params['Trigger'])
          end
          @Namespace = params['Namespace']
        end
      end

      # ModifyWebhookTrigger返回参数结构体
      class ModifyWebhookTriggerResponse < TencentCloud::Common::AbstractModel
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

      # 命名空间信息
      class NamespaceInfo < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param CreationTime: 创建时间
        # @type CreationTime: String
        # @param RepoCount: 命名空间下仓库数量
        # @type RepoCount: Integer

        attr_accessor :Namespace, :CreationTime, :RepoCount
        
        def initialize(namespace=nil, creationtime=nil, repocount=nil)
          @Namespace = namespace
          @CreationTime = creationtime
          @RepoCount = repocount
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @CreationTime = params['CreationTime']
          @RepoCount = params['RepoCount']
        end
      end

      # 获取命名空间信息返回
      class NamespaceInfoResp < TencentCloud::Common::AbstractModel
        # @param NamespaceCount: 命名空间数量
        # @type NamespaceCount: Integer
        # @param NamespaceInfo: 命名空间信息
        # @type NamespaceInfo: Array

        attr_accessor :NamespaceCount, :NamespaceInfo
        
        def initialize(namespacecount=nil, namespaceinfo=nil)
          @NamespaceCount = namespacecount
          @NamespaceInfo = namespaceinfo
        end

        def deserialize(params)
          @NamespaceCount = params['NamespaceCount']
          unless params['NamespaceInfo'].nil?
            @NamespaceInfo = []
            params['NamespaceInfo'].each do |i|
              namespaceinfo_tmp = NamespaceInfo.new
              namespaceinfo_tmp.deserialize(i)
              @NamespaceInfo << namespaceinfo_tmp
            end
          end
        end
      end

      # NamespaceIsExists返回类型
      class NamespaceIsExistsResp < TencentCloud::Common::AbstractModel
        # @param IsExist: 命名空间是否存在
        # @type IsExist: Boolean
        # @param IsPreserved: 是否为保留命名空间
        # @type IsPreserved: Boolean

        attr_accessor :IsExist, :IsPreserved
        
        def initialize(isexist=nil, ispreserved=nil)
          @IsExist = isexist
          @IsPreserved = ispreserved
        end

        def deserialize(params)
          @IsExist = params['IsExist']
          @IsPreserved = params['IsPreserved']
        end
      end

      # 跨主账号实例同步参数
      class PeerReplicationOption < TencentCloud::Common::AbstractModel
        # @param PeerRegistryUin: 待同步实例的uin
        # @type PeerRegistryUin: String
        # @param PeerRegistryToken: 待同步实例的访问永久Token
        # @type PeerRegistryToken: String
        # @param EnablePeerReplication: 是否开启跨主账号实例同步
        # @type EnablePeerReplication: Boolean

        attr_accessor :PeerRegistryUin, :PeerRegistryToken, :EnablePeerReplication
        
        def initialize(peerregistryuin=nil, peerregistrytoken=nil, enablepeerreplication=nil)
          @PeerRegistryUin = peerregistryuin
          @PeerRegistryToken = peerregistrytoken
          @EnablePeerReplication = enablepeerreplication
        end

        def deserialize(params)
          @PeerRegistryUin = params['PeerRegistryUin']
          @PeerRegistryToken = params['PeerRegistryToken']
          @EnablePeerReplication = params['EnablePeerReplication']
        end
      end

      # 地域信息
      class Region < TencentCloud::Common::AbstractModel
        # @param Alias: gz
        # @type Alias: String
        # @param RegionId: 1
        # @type RegionId: Integer
        # @param RegionName: ap-guangzhou
        # @type RegionName: String
        # @param Status: alluser
        # @type Status: String
        # @param Remark: remark
        # @type Remark: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String
        # @param Id: id
        # @type Id: Integer

        attr_accessor :Alias, :RegionId, :RegionName, :Status, :Remark, :CreatedAt, :UpdatedAt, :Id
        
        def initialize(_alias=nil, regionid=nil, regionname=nil, status=nil, remark=nil, createdat=nil, updatedat=nil, id=nil)
          @Alias = _alias
          @RegionId = regionid
          @RegionName = regionname
          @Status = status
          @Remark = remark
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @Id = id
        end

        def deserialize(params)
          @Alias = params['Alias']
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          @Status = params['Status']
          @Remark = params['Remark']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @Id = params['Id']
        end
      end

      # 实例信息结构体
      class Registry < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例ID
        # @type RegistryId: String
        # @param RegistryName: 实例名称
        # @type RegistryName: String
        # @param RegistryType: 实例规格
        # @type RegistryType: String
        # @param Status: 实例状态
        # @type Status: String
        # @param PublicDomain: 实例的公共访问地址
        # @type PublicDomain: String
        # @param CreatedAt: 实例创建时间
        # @type CreatedAt: String
        # @param RegionName: 地域名称
        # @type RegionName: String
        # @param RegionId: 地域Id
        # @type RegionId: Integer
        # @param EnableAnonymous: 是否支持匿名
        # @type EnableAnonymous: Boolean
        # @param TokenValidTime: Token有效时间
        # @type TokenValidTime: Integer
        # @param InternalEndpoint: 实例内部访问地址
        # @type InternalEndpoint: String
        # @param TagSpecification: 实例云标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSpecification: :class:`Tencentcloud::Tcr.v20190924.models.TagSpecification`
        # @param ExpiredAt: 实例过期时间（预付费）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiredAt: String
        # @param PayMod: 实例付费类型，0表示后付费，1表示预付费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMod: Integer
        # @param RenewFlag: 预付费续费标识，0表示手动续费，1表示自动续费，2不续费并且不通知
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer

        attr_accessor :RegistryId, :RegistryName, :RegistryType, :Status, :PublicDomain, :CreatedAt, :RegionName, :RegionId, :EnableAnonymous, :TokenValidTime, :InternalEndpoint, :TagSpecification, :ExpiredAt, :PayMod, :RenewFlag
        
        def initialize(registryid=nil, registryname=nil, registrytype=nil, status=nil, publicdomain=nil, createdat=nil, regionname=nil, regionid=nil, enableanonymous=nil, tokenvalidtime=nil, internalendpoint=nil, tagspecification=nil, expiredat=nil, paymod=nil, renewflag=nil)
          @RegistryId = registryid
          @RegistryName = registryname
          @RegistryType = registrytype
          @Status = status
          @PublicDomain = publicdomain
          @CreatedAt = createdat
          @RegionName = regionname
          @RegionId = regionid
          @EnableAnonymous = enableanonymous
          @TokenValidTime = tokenvalidtime
          @InternalEndpoint = internalendpoint
          @TagSpecification = tagspecification
          @ExpiredAt = expiredat
          @PayMod = paymod
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @RegistryName = params['RegistryName']
          @RegistryType = params['RegistryType']
          @Status = params['Status']
          @PublicDomain = params['PublicDomain']
          @CreatedAt = params['CreatedAt']
          @RegionName = params['RegionName']
          @RegionId = params['RegionId']
          @EnableAnonymous = params['EnableAnonymous']
          @TokenValidTime = params['TokenValidTime']
          @InternalEndpoint = params['InternalEndpoint']
          unless params['TagSpecification'].nil?
            @TagSpecification = TagSpecification.new
            @TagSpecification.deserialize(params['TagSpecification'])
          end
          @ExpiredAt = params['ExpiredAt']
          @PayMod = params['PayMod']
          @RenewFlag = params['RenewFlag']
        end
      end

      # 实例预付费模式
      class RegistryChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 购买实例的时长，单位：月
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识，0：手动续费，1：自动续费，2：不续费并且不通知
        # @type RenewFlag: Integer

        attr_accessor :Period, :RenewFlag
        
        def initialize(period=nil, renewflag=nil)
          @Period = period
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @Period = params['Period']
          @RenewFlag = params['RenewFlag']
        end
      end

      # 实例创建过程
      class RegistryCondition < TencentCloud::Common::AbstractModel
        # @param Type: 实例创建过程类型
        # @type Type: String
        # @param Status: 实例创建过程状态
        # @type Status: String
        # @param Reason: 转换到该过程的简明原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String

        attr_accessor :Type, :Status, :Reason
        
        def initialize(type=nil, status=nil, reason=nil)
          @Type = type
          @Status = status
          @Reason = reason
        end

        def deserialize(params)
          @Type = params['Type']
          @Status = params['Status']
          @Reason = params['Reason']
        end
      end

      # 实例状态
      class RegistryStatus < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例的Id
        # @type RegistryId: String
        # @param Status: 实例的状态
        # @type Status: String
        # @param Conditions: 附加状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Conditions: Array

        attr_accessor :RegistryId, :Status, :Conditions
        
        def initialize(registryid=nil, status=nil, conditions=nil)
          @RegistryId = registryid
          @Status = status
          @Conditions = conditions
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @Status = params['Status']
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              registrycondition_tmp = RegistryCondition.new
              registrycondition_tmp.deserialize(i)
              @Conditions << registrycondition_tmp
            end
          end
        end
      end

      # RenewInstance请求参数结构体
      class RenewInstanceRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 实例Id
        # @type RegistryId: String
        # @param RegistryChargePrepaid: 预付费自动续费标识和购买时长,0：手动续费，1：自动续费，2：不续费并且不通知;单位为月
        # @type RegistryChargePrepaid: :class:`Tencentcloud::Tcr.v20190924.models.RegistryChargePrepaid`
        # @param Flag: 0 续费， 1按量转包年包月
        # @type Flag: Integer

        attr_accessor :RegistryId, :RegistryChargePrepaid, :Flag
        
        def initialize(registryid=nil, registrychargeprepaid=nil, flag=nil)
          @RegistryId = registryid
          @RegistryChargePrepaid = registrychargeprepaid
          @Flag = flag
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          unless params['RegistryChargePrepaid'].nil?
            @RegistryChargePrepaid = RegistryChargePrepaid.new
            @RegistryChargePrepaid.deserialize(params['RegistryChargePrepaid'])
          end
          @Flag = params['Flag']
        end
      end

      # RenewInstance返回参数结构体
      class RenewInstanceResponse < TencentCloud::Common::AbstractModel
        # @param RegistryId: 企业版实例Id
        # @type RegistryId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegistryId, :RequestId
        
        def initialize(registryid=nil, requestid=nil)
          @RegistryId = registryid
          @RequestId = requestid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @RequestId = params['RequestId']
        end
      end

      # 同步规则过滤器
      class ReplicationFilter < TencentCloud::Common::AbstractModel
        # @param Type: 类型（name、tag和resource）
        # @type Type: String
        # @param Value: 默认为空
        # @type Value: String

        attr_accessor :Type, :Value
        
        def initialize(type=nil, value=nil)
          @Type = type
          @Value = value
        end

        def deserialize(params)
          @Type = params['Type']
          @Value = params['Value']
        end
      end

      # 同步日志
      class ReplicationLog < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param Source: 源资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param Destination: 目的资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Destination: String
        # @param Status: 同步状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :ResourceType, :Source, :Destination, :Status, :StartTime, :EndTime
        
        def initialize(resourcetype=nil, source=nil, destination=nil, status=nil, starttime=nil, endtime=nil)
          @ResourceType = resourcetype
          @Source = source
          @Destination = destination
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @Source = params['Source']
          @Destination = params['Destination']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 企业版复制实例
      class ReplicationRegistry < TencentCloud::Common::AbstractModel
        # @param RegistryId: 主实例ID
        # @type RegistryId: String
        # @param ReplicationRegistryId: 复制实例ID
        # @type ReplicationRegistryId: String
        # @param ReplicationRegionId: 复制实例的地域ID
        # @type ReplicationRegionId: Integer
        # @param ReplicationRegionName: 复制实例的地域名称
        # @type ReplicationRegionName: String
        # @param Status: 复制实例的状态
        # @type Status: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String

        attr_accessor :RegistryId, :ReplicationRegistryId, :ReplicationRegionId, :ReplicationRegionName, :Status, :CreatedAt
        
        def initialize(registryid=nil, replicationregistryid=nil, replicationregionid=nil, replicationregionname=nil, status=nil, createdat=nil)
          @RegistryId = registryid
          @ReplicationRegistryId = replicationregistryid
          @ReplicationRegionId = replicationregionid
          @ReplicationRegionName = replicationregionname
          @Status = status
          @CreatedAt = createdat
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
          @ReplicationRegistryId = params['ReplicationRegistryId']
          @ReplicationRegionId = params['ReplicationRegionId']
          @ReplicationRegionName = params['ReplicationRegionName']
          @Status = params['Status']
          @CreatedAt = params['CreatedAt']
        end
      end

      # 同步规则
      class ReplicationRule < TencentCloud::Common::AbstractModel
        # @param Name: 同步规则名称
        # @type Name: String
        # @param DestNamespace: 目标命名空间
        # @type DestNamespace: String
        # @param Override: 是否覆盖
        # @type Override: Boolean
        # @param Filters: 同步过滤条件
        # @type Filters: Array

        attr_accessor :Name, :DestNamespace, :Override, :Filters
        
        def initialize(name=nil, destnamespace=nil, override=nil, filters=nil)
          @Name = name
          @DestNamespace = destnamespace
          @Override = override
          @Filters = filters
        end

        def deserialize(params)
          @Name = params['Name']
          @DestNamespace = params['DestNamespace']
          @Override = params['Override']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              replicationfilter_tmp = ReplicationFilter.new
              replicationfilter_tmp.deserialize(i)
              @Filters << replicationfilter_tmp
            end
          end
        end
      end

      # 仓库的信息
      class RepoInfo < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名称
        # @type RepoName: String
        # @param RepoType: 仓库类型
        # @type RepoType: String
        # @param TagCount: Tag数量
        # @type TagCount: Integer
        # @param Public: 是否为公开
        # @type Public: Integer
        # @param IsUserFavor: 是否为用户收藏
        # @type IsUserFavor: Boolean
        # @param IsQcloudOfficial: 是否为腾讯云官方仓库
        # @type IsQcloudOfficial: Boolean
        # @param FavorCount: 被收藏的个数
        # @type FavorCount: Integer
        # @param PullCount: 拉取的数量
        # @type PullCount: Integer
        # @param Description: 描述
        # @type Description: String
        # @param CreationTime: 仓库创建时间
        # @type CreationTime: String
        # @param UpdateTime: 仓库更新时间
        # @type UpdateTime: String

        attr_accessor :RepoName, :RepoType, :TagCount, :Public, :IsUserFavor, :IsQcloudOfficial, :FavorCount, :PullCount, :Description, :CreationTime, :UpdateTime
        
        def initialize(reponame=nil, repotype=nil, tagcount=nil, public=nil, isuserfavor=nil, isqcloudofficial=nil, favorcount=nil, pullcount=nil, description=nil, creationtime=nil, updatetime=nil)
          @RepoName = reponame
          @RepoType = repotype
          @TagCount = tagcount
          @Public = public
          @IsUserFavor = isuserfavor
          @IsQcloudOfficial = isqcloudofficial
          @FavorCount = favorcount
          @PullCount = pullcount
          @Description = description
          @CreationTime = creationtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @RepoType = params['RepoType']
          @TagCount = params['TagCount']
          @Public = params['Public']
          @IsUserFavor = params['IsUserFavor']
          @IsQcloudOfficial = params['IsQcloudOfficial']
          @FavorCount = params['FavorCount']
          @PullCount = params['PullCount']
          @Description = params['Description']
          @CreationTime = params['CreationTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 仓库信息的返回信息
      class RepoInfoResp < TencentCloud::Common::AbstractModel
        # @param TotalCount: 仓库总数
        # @type TotalCount: Integer
        # @param RepoInfo: 仓库信息列表
        # @type RepoInfo: Array
        # @param Server: Server信息
        # @type Server: String

        attr_accessor :TotalCount, :RepoInfo, :Server
        
        def initialize(totalcount=nil, repoinfo=nil, server=nil)
          @TotalCount = totalcount
          @RepoInfo = repoinfo
          @Server = server
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RepoInfo'].nil?
            @RepoInfo = []
            params['RepoInfo'].each do |i|
              repoinfo_tmp = RepoInfo.new
              repoinfo_tmp.deserialize(i)
              @RepoInfo << repoinfo_tmp
            end
          end
          @Server = params['Server']
        end
      end

      # 仓库是否存在的返回值
      class RepoIsExistResp < TencentCloud::Common::AbstractModel
        # @param IsExist: 仓库是否存在
        # @type IsExist: Boolean

        attr_accessor :IsExist
        
        def initialize(isexist=nil)
          @IsExist = isexist
        end

        def deserialize(params)
          @IsExist = params['IsExist']
        end
      end

      # 查询共享版仓库信息返回
      class RepositoryInfoResp < TencentCloud::Common::AbstractModel
        # @param RepoName: 镜像仓库名字
        # @type RepoName: String
        # @param RepoType: 镜像仓库类型
        # @type RepoType: String
        # @param Server: 镜像仓库服务地址
        # @type Server: String
        # @param CreationTime: 创建时间
        # @type CreationTime: String
        # @param Description: 镜像仓库描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Public: 是否为公有镜像
        # @type Public: Integer
        # @param PullCount: 下载次数
        # @type PullCount: Integer
        # @param FavorCount: 收藏次数
        # @type FavorCount: Integer
        # @param IsUserFavor: 是否为用户收藏
        # @type IsUserFavor: Boolean
        # @param IsQcloudOfficial: 是否为腾讯云官方镜像
        # @type IsQcloudOfficial: Boolean

        attr_accessor :RepoName, :RepoType, :Server, :CreationTime, :Description, :Public, :PullCount, :FavorCount, :IsUserFavor, :IsQcloudOfficial
        
        def initialize(reponame=nil, repotype=nil, server=nil, creationtime=nil, description=nil, public=nil, pullcount=nil, favorcount=nil, isuserfavor=nil, isqcloudofficial=nil)
          @RepoName = reponame
          @RepoType = repotype
          @Server = server
          @CreationTime = creationtime
          @Description = description
          @Public = public
          @PullCount = pullcount
          @FavorCount = favorcount
          @IsUserFavor = isuserfavor
          @IsQcloudOfficial = isqcloudofficial
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @RepoType = params['RepoType']
          @Server = params['Server']
          @CreationTime = params['CreationTime']
          @Description = params['Description']
          @Public = params['Public']
          @PullCount = params['PullCount']
          @FavorCount = params['FavorCount']
          @IsUserFavor = params['IsUserFavor']
          @IsQcloudOfficial = params['IsQcloudOfficial']
        end
      end

      # 用户配额返回值
      class RespLimit < TencentCloud::Common::AbstractModel
        # @param LimitInfo: 配额信息
        # @type LimitInfo: Array

        attr_accessor :LimitInfo
        
        def initialize(limitinfo=nil)
          @LimitInfo = limitinfo
        end

        def deserialize(params)
          unless params['LimitInfo'].nil?
            @LimitInfo = []
            params['LimitInfo'].each do |i|
              limit_tmp = Limit.new
              limit_tmp.deserialize(i)
              @LimitInfo << limit_tmp
            end
          end
        end
      end

      # 版本保留规则执行
      class RetentionExecution < TencentCloud::Common::AbstractModel
        # @param ExecutionId: 执行Id
        # @type ExecutionId: Integer
        # @param RetentionId: 所属规则id
        # @type RetentionId: Integer
        # @param StartTime: 执行的开始时间
        # @type StartTime: String
        # @param EndTime: 执行的结束时间
        # @type EndTime: String
        # @param Status: 执行的状态，Failed, Succeed, Stopped, InProgress
        # @type Status: String

        attr_accessor :ExecutionId, :RetentionId, :StartTime, :EndTime, :Status
        
        def initialize(executionid=nil, retentionid=nil, starttime=nil, endtime=nil, status=nil)
          @ExecutionId = executionid
          @RetentionId = retentionid
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
        end

        def deserialize(params)
          @ExecutionId = params['ExecutionId']
          @RetentionId = params['RetentionId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
        end
      end

      # 版本保留策略
      class RetentionPolicy < TencentCloud::Common::AbstractModel
        # @param RetentionId: 版本保留策略Id
        # @type RetentionId: Integer
        # @param NamespaceName: 命名空间的名称
        # @type NamespaceName: String
        # @param RetentionRuleList: 规则列表
        # @type RetentionRuleList: Array
        # @param CronSetting: 定期执行方式
        # @type CronSetting: String
        # @param Disabled: 是否启用规则
        # @type Disabled: Boolean
        # @param NextExecutionTime: 基于当前时间根据cronSetting后下一次任务要执行的时间，仅做参考使用
        # @type NextExecutionTime: String

        attr_accessor :RetentionId, :NamespaceName, :RetentionRuleList, :CronSetting, :Disabled, :NextExecutionTime
        
        def initialize(retentionid=nil, namespacename=nil, retentionrulelist=nil, cronsetting=nil, disabled=nil, nextexecutiontime=nil)
          @RetentionId = retentionid
          @NamespaceName = namespacename
          @RetentionRuleList = retentionrulelist
          @CronSetting = cronsetting
          @Disabled = disabled
          @NextExecutionTime = nextexecutiontime
        end

        def deserialize(params)
          @RetentionId = params['RetentionId']
          @NamespaceName = params['NamespaceName']
          unless params['RetentionRuleList'].nil?
            @RetentionRuleList = []
            params['RetentionRuleList'].each do |i|
              retentionrule_tmp = RetentionRule.new
              retentionrule_tmp.deserialize(i)
              @RetentionRuleList << retentionrule_tmp
            end
          end
          @CronSetting = params['CronSetting']
          @Disabled = params['Disabled']
          @NextExecutionTime = params['NextExecutionTime']
        end
      end

      # 版本保留规则
      class RetentionRule < TencentCloud::Common::AbstractModel
        # @param Key: 支持的策略，可选值为latestPushedK（保留最新推送多少个版本）nDaysSinceLastPush（保留近天内推送）
        # @type Key: String
        # @param Value: 规则设置下的对应值
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

      # 版本保留执行的规则
      class RetentionTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # @type TaskId: Integer
        # @param ExecutionId: 所属的规则执行Id
        # @type ExecutionId: Integer
        # @param StartTime: 任务开始时间
        # @type StartTime: String
        # @param EndTime: 任务结束时间
        # @type EndTime: String
        # @param Status: 任务的执行状态，Failed, Succeed, Stopped, InProgress
        # @type Status: String
        # @param Total: 总tag数
        # @type Total: Integer
        # @param Retained: 保留tag数
        # @type Retained: Integer
        # @param Repository: 应用的仓库
        # @type Repository: String

        attr_accessor :TaskId, :ExecutionId, :StartTime, :EndTime, :Status, :Total, :Retained, :Repository
        
        def initialize(taskid=nil, executionid=nil, starttime=nil, endtime=nil, status=nil, total=nil, retained=nil, repository=nil)
          @TaskId = taskid
          @ExecutionId = executionid
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @Total = total
          @Retained = retained
          @Repository = repository
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ExecutionId = params['ExecutionId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @Total = params['Total']
          @Retained = params['Retained']
          @Repository = params['Repository']
        end
      end

      # 指定tag镜像内容相同的tag列表
      class SameImagesResp < TencentCloud::Common::AbstractModel
        # @param SameImages: tag列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SameImages: Array

        attr_accessor :SameImages
        
        def initialize(sameimages=nil)
          @SameImages = sameimages
        end

        def deserialize(params)
          @SameImages = params['SameImages']
        end
      end

      #  作业调度信息
      class Schedule < TencentCloud::Common::AbstractModel
        # @param Type: 类型：Hourly, Daily, Weekly, Custom, Manual, Dryrun, None
        # @type Type: String

        attr_accessor :Type
        
        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # 获取满足输入搜索条件的用户镜像仓库
      class SearchUserRepositoryResp < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总个数
        # @type TotalCount: Integer
        # @param RepoInfo: 仓库列表
        # @type RepoInfo: Array
        # @param Server: Server
        # @type Server: String
        # @param PrivilegeFiltered: PrivilegeFiltered
        # @type PrivilegeFiltered: Boolean

        attr_accessor :TotalCount, :RepoInfo, :Server, :PrivilegeFiltered
        
        def initialize(totalcount=nil, repoinfo=nil, server=nil, privilegefiltered=nil)
          @TotalCount = totalcount
          @RepoInfo = repoinfo
          @Server = server
          @PrivilegeFiltered = privilegefiltered
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RepoInfo'].nil?
            @RepoInfo = []
            params['RepoInfo'].each do |i|
              repoinfo_tmp = RepoInfo.new
              repoinfo_tmp.deserialize(i)
              @RepoInfo << repoinfo_tmp
            end
          end
          @Server = params['Server']
          @PrivilegeFiltered = params['PrivilegeFiltered']
        end
      end

      # 安全策略
      class SecurityPolicy < TencentCloud::Common::AbstractModel
        # @param PolicyIndex: 策略索引
        # @type PolicyIndex: Integer
        # @param Description: 备注
        # @type Description: String
        # @param CidrBlock: 运行访问的公网IP地址端
        # @type CidrBlock: String
        # @param PolicyVersion: 安全策略的版本
        # @type PolicyVersion: String

        attr_accessor :PolicyIndex, :Description, :CidrBlock, :PolicyVersion
        
        def initialize(policyindex=nil, description=nil, cidrblock=nil, policyversion=nil)
          @PolicyIndex = policyindex
          @Description = description
          @CidrBlock = cidrblock
          @PolicyVersion = policyversion
        end

        def deserialize(params)
          @PolicyIndex = params['PolicyIndex']
          @Description = params['Description']
          @CidrBlock = params['CidrBlock']
          @PolicyVersion = params['PolicyVersion']
        end
      end

      # 云标签Tag
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 云标签的key
        # @type Key: String
        # @param Value: 云标签的值
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

      # 镜像tag信息
      class TagInfo < TencentCloud::Common::AbstractModel
        # @param TagName: Tag名称
        # @type TagName: String
        # @param TagId: 镜像Id
        # @type TagId: String
        # @param ImageId: docker image 可以看到的id
        # @type ImageId: String
        # @param Size: 大小
        # @type Size: String
        # @param CreationTime: 镜像的创建时间
        # @type CreationTime: String
        # @param DurationDays: 镜像创建至今时间长度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DurationDays: String
        # @param Author: 镜像的作者
        # @type Author: String
        # @param Architecture: 次镜像建议运行的系统架构
        # @type Architecture: String
        # @param DockerVersion: 创建此镜像的docker版本
        # @type DockerVersion: String
        # @param OS: 此镜像建议运行系统
        # @type OS: String
        # @param SizeByte: SizeByte
        # @type SizeByte: Integer
        # @param Id: Id
        # @type Id: Integer
        # @param UpdateTime: 数据更新时间
        # @type UpdateTime: String
        # @param PushTime: 镜像更新时间
        # @type PushTime: String

        attr_accessor :TagName, :TagId, :ImageId, :Size, :CreationTime, :DurationDays, :Author, :Architecture, :DockerVersion, :OS, :SizeByte, :Id, :UpdateTime, :PushTime
        
        def initialize(tagname=nil, tagid=nil, imageid=nil, size=nil, creationtime=nil, durationdays=nil, author=nil, architecture=nil, dockerversion=nil, os=nil, sizebyte=nil, id=nil, updatetime=nil, pushtime=nil)
          @TagName = tagname
          @TagId = tagid
          @ImageId = imageid
          @Size = size
          @CreationTime = creationtime
          @DurationDays = durationdays
          @Author = author
          @Architecture = architecture
          @DockerVersion = dockerversion
          @OS = os
          @SizeByte = sizebyte
          @Id = id
          @UpdateTime = updatetime
          @PushTime = pushtime
        end

        def deserialize(params)
          @TagName = params['TagName']
          @TagId = params['TagId']
          @ImageId = params['ImageId']
          @Size = params['Size']
          @CreationTime = params['CreationTime']
          @DurationDays = params['DurationDays']
          @Author = params['Author']
          @Architecture = params['Architecture']
          @DockerVersion = params['DockerVersion']
          @OS = params['OS']
          @SizeByte = params['SizeByte']
          @Id = params['Id']
          @UpdateTime = params['UpdateTime']
          @PushTime = params['PushTime']
        end
      end

      # Tag列表的返回值
      class TagInfoResp < TencentCloud::Common::AbstractModel
        # @param TagCount: Tag的总数
        # @type TagCount: Integer
        # @param TagInfo: TagInfo列表
        # @type TagInfo: Array
        # @param Server: Server
        # @type Server: String
        # @param RepoName: 仓库名称
        # @type RepoName: String

        attr_accessor :TagCount, :TagInfo, :Server, :RepoName
        
        def initialize(tagcount=nil, taginfo=nil, server=nil, reponame=nil)
          @TagCount = tagcount
          @TagInfo = taginfo
          @Server = server
          @RepoName = reponame
        end

        def deserialize(params)
          @TagCount = params['TagCount']
          unless params['TagInfo'].nil?
            @TagInfo = []
            params['TagInfo'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @TagInfo << taginfo_tmp
            end
          end
          @Server = params['Server']
          @RepoName = params['RepoName']
        end
      end

      # 云标签
      class TagSpecification < TencentCloud::Common::AbstractModel
        # @param ResourceType: 默认值为instance
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param Tags: 云标签数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :ResourceType, :Tags
        
        def initialize(resourcetype=nil, tags=nil)
          @ResourceType = resourcetype
          @Tags = tags
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # 任务详情
      class TaskDetail < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务
        # @type TaskName: String
        # @param TaskUUID: 任务UUID
        # @type TaskUUID: String
        # @param TaskStatus: 任务状态
        # @type TaskStatus: String
        # @param TaskMessage: 任务的状态信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskMessage: String
        # @param CreatedTime: 任务开始时间
        # @type CreatedTime: String
        # @param FinishedTime: 任务结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinishedTime: String

        attr_accessor :TaskName, :TaskUUID, :TaskStatus, :TaskMessage, :CreatedTime, :FinishedTime
        
        def initialize(taskname=nil, taskuuid=nil, taskstatus=nil, taskmessage=nil, createdtime=nil, finishedtime=nil)
          @TaskName = taskname
          @TaskUUID = taskuuid
          @TaskStatus = taskstatus
          @TaskMessage = taskmessage
          @CreatedTime = createdtime
          @FinishedTime = finishedtime
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @TaskUUID = params['TaskUUID']
          @TaskStatus = params['TaskStatus']
          @TaskMessage = params['TaskMessage']
          @CreatedTime = params['CreatedTime']
          @FinishedTime = params['FinishedTime']
        end
      end

      # 镜像信息
      class TcrImageInfo < TencentCloud::Common::AbstractModel
        # @param Digest: 哈希值
        # @type Digest: String
        # @param Size: 镜像体积（单位：字节）
        # @type Size: Integer
        # @param ImageVersion: Tag名称
        # @type ImageVersion: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Kind: 制品类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Kind: String
        # @param KmsSignature: KMS 签名信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KmsSignature: String

        attr_accessor :Digest, :Size, :ImageVersion, :UpdateTime, :Kind, :KmsSignature
        
        def initialize(digest=nil, size=nil, imageversion=nil, updatetime=nil, kind=nil, kmssignature=nil)
          @Digest = digest
          @Size = size
          @ImageVersion = imageversion
          @UpdateTime = updatetime
          @Kind = kind
          @KmsSignature = kmssignature
        end

        def deserialize(params)
          @Digest = params['Digest']
          @Size = params['Size']
          @ImageVersion = params['ImageVersion']
          @UpdateTime = params['UpdateTime']
          @Kind = params['Kind']
          @KmsSignature = params['KmsSignature']
        end
      end

      # 实例登录令牌
      class TcrInstanceToken < TencentCloud::Common::AbstractModel
        # @param Id: 令牌ID
        # @type Id: String
        # @param Desc: 令牌描述
        # @type Desc: String
        # @param RegistryId: 令牌所属实例ID
        # @type RegistryId: String
        # @param Enabled: 令牌启用状态
        # @type Enabled: Boolean
        # @param CreatedAt: 令牌创建时间
        # @type CreatedAt: String
        # @param ExpiredAt: 令牌过期时间戳
        # @type ExpiredAt: Integer

        attr_accessor :Id, :Desc, :RegistryId, :Enabled, :CreatedAt, :ExpiredAt
        
        def initialize(id=nil, desc=nil, registryid=nil, enabled=nil, createdat=nil, expiredat=nil)
          @Id = id
          @Desc = desc
          @RegistryId = registryid
          @Enabled = enabled
          @CreatedAt = createdat
          @ExpiredAt = expiredat
        end

        def deserialize(params)
          @Id = params['Id']
          @Desc = params['Desc']
          @RegistryId = params['RegistryId']
          @Enabled = params['Enabled']
          @CreatedAt = params['CreatedAt']
          @ExpiredAt = params['ExpiredAt']
        end
      end

      # Tcr 命名空间的描述
      class TcrNamespaceInfo < TencentCloud::Common::AbstractModel
        # @param Name: 命名空间名称
        # @type Name: String
        # @param CreationTime: 创建时间
        # @type CreationTime: String
        # @param Public: 访问级别
        # @type Public: Boolean
        # @param NamespaceId: 命名空间的Id
        # @type NamespaceId: Integer
        # @param TagSpecification: 实例云标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSpecification: :class:`Tencentcloud::Tcr.v20190924.models.TagSpecification`
        # @param Metadata: 命名空间元数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metadata: Array

        attr_accessor :Name, :CreationTime, :Public, :NamespaceId, :TagSpecification, :Metadata
        
        def initialize(name=nil, creationtime=nil, public=nil, namespaceid=nil, tagspecification=nil, metadata=nil)
          @Name = name
          @CreationTime = creationtime
          @Public = public
          @NamespaceId = namespaceid
          @TagSpecification = tagspecification
          @Metadata = metadata
        end

        def deserialize(params)
          @Name = params['Name']
          @CreationTime = params['CreationTime']
          @Public = params['Public']
          @NamespaceId = params['NamespaceId']
          unless params['TagSpecification'].nil?
            @TagSpecification = TagSpecification.new
            @TagSpecification.deserialize(params['TagSpecification'])
          end
          unless params['Metadata'].nil?
            @Metadata = []
            params['Metadata'].each do |i|
              keyvaluestring_tmp = KeyValueString.new
              keyvaluestring_tmp.deserialize(i)
              @Metadata << keyvaluestring_tmp
            end
          end
        end
      end

      # Tcr镜像仓库信息
      class TcrRepositoryInfo < TencentCloud::Common::AbstractModel
        # @param Name: 仓库名称
        # @type Name: String
        # @param Namespace: 命名空间名称
        # @type Namespace: String
        # @param CreationTime: 创建时间，格式"2006-01-02 15:04:05.999999999 -0700 MST"
        # @type CreationTime: String
        # @param Public: 是否公开
        # @type Public: Boolean
        # @param Description: 仓库详细描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param BriefDescription: 简单描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BriefDescription: String
        # @param UpdateTime: 更新时间，格式"2006-01-02 15:04:05.999999999 -0700 MST"
        # @type UpdateTime: String

        attr_accessor :Name, :Namespace, :CreationTime, :Public, :Description, :BriefDescription, :UpdateTime
        
        def initialize(name=nil, namespace=nil, creationtime=nil, public=nil, description=nil, briefdescription=nil, updatetime=nil)
          @Name = name
          @Namespace = namespace
          @CreationTime = creationtime
          @Public = public
          @Description = description
          @BriefDescription = briefdescription
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Name = params['Name']
          @Namespace = params['Namespace']
          @CreationTime = params['CreationTime']
          @Public = params['Public']
          @Description = params['Description']
          @BriefDescription = params['BriefDescription']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 触发器触发条件
      class TriggerInvokeCondition < TencentCloud::Common::AbstractModel
        # @param InvokeMethod: 触发方式
        # @type InvokeMethod: String
        # @param InvokeExpr: 触发表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokeExpr: String

        attr_accessor :InvokeMethod, :InvokeExpr
        
        def initialize(invokemethod=nil, invokeexpr=nil)
          @InvokeMethod = invokemethod
          @InvokeExpr = invokeexpr
        end

        def deserialize(params)
          @InvokeMethod = params['InvokeMethod']
          @InvokeExpr = params['InvokeExpr']
        end
      end

      # 触发器触发参数
      class TriggerInvokePara < TencentCloud::Common::AbstractModel
        # @param AppId: AppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param ClusterId: TKE集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param Namespace: TKE集群命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param ServiceName: TKE集群工作负载名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String
        # @param ContainerName: TKE集群工作负载中容器名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerName: String
        # @param ClusterRegion: TKE集群地域数字ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterRegion: Integer

        attr_accessor :AppId, :ClusterId, :Namespace, :ServiceName, :ContainerName, :ClusterRegion
        
        def initialize(appid=nil, clusterid=nil, namespace=nil, servicename=nil, containername=nil, clusterregion=nil)
          @AppId = appid
          @ClusterId = clusterid
          @Namespace = namespace
          @ServiceName = servicename
          @ContainerName = containername
          @ClusterRegion = clusterregion
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ClusterId = params['ClusterId']
          @Namespace = params['Namespace']
          @ServiceName = params['ServiceName']
          @ContainerName = params['ContainerName']
          @ClusterRegion = params['ClusterRegion']
        end
      end

      # 触发器触发结果
      class TriggerInvokeResult < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 请求TKE返回值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnCode: Integer
        # @param ReturnMsg: 请求TKE返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnMsg: String

        attr_accessor :ReturnCode, :ReturnMsg
        
        def initialize(returncode=nil, returnmsg=nil)
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
        end
      end

      # 触发器日志
      class TriggerLogResp < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoName: String
        # @param TagName: Tag名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagName: String
        # @param TriggerName: 触发器名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerName: String
        # @param InvokeSource: 触发方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokeSource: String
        # @param InvokeAction: 触发动作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokeAction: String
        # @param InvokeTime: 触发时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokeTime: String
        # @param InvokeCondition: 触发条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokeCondition: :class:`Tencentcloud::Tcr.v20190924.models.TriggerInvokeCondition`
        # @param InvokePara: 触发参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokePara: :class:`Tencentcloud::Tcr.v20190924.models.TriggerInvokePara`
        # @param InvokeResult: 触发结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokeResult: :class:`Tencentcloud::Tcr.v20190924.models.TriggerInvokeResult`

        attr_accessor :RepoName, :TagName, :TriggerName, :InvokeSource, :InvokeAction, :InvokeTime, :InvokeCondition, :InvokePara, :InvokeResult
        
        def initialize(reponame=nil, tagname=nil, triggername=nil, invokesource=nil, invokeaction=nil, invoketime=nil, invokecondition=nil, invokepara=nil, invokeresult=nil)
          @RepoName = reponame
          @TagName = tagname
          @TriggerName = triggername
          @InvokeSource = invokesource
          @InvokeAction = invokeaction
          @InvokeTime = invoketime
          @InvokeCondition = invokecondition
          @InvokePara = invokepara
          @InvokeResult = invokeresult
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @TagName = params['TagName']
          @TriggerName = params['TriggerName']
          @InvokeSource = params['InvokeSource']
          @InvokeAction = params['InvokeAction']
          @InvokeTime = params['InvokeTime']
          unless params['InvokeCondition'].nil?
            @InvokeCondition = TriggerInvokeCondition.new
            @InvokeCondition.deserialize(params['InvokeCondition'])
          end
          unless params['InvokePara'].nil?
            @InvokePara = TriggerInvokePara.new
            @InvokePara.deserialize(params['InvokePara'])
          end
          unless params['InvokeResult'].nil?
            @InvokeResult = TriggerInvokeResult.new
            @InvokeResult.deserialize(params['InvokeResult'])
          end
        end
      end

      # 触发器返回值
      class TriggerResp < TencentCloud::Common::AbstractModel
        # @param TriggerName: 触发器名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerName: String
        # @param InvokeSource: 触发来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokeSource: String
        # @param InvokeAction: 触发动作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokeAction: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param InvokeCondition: 触发条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokeCondition: :class:`Tencentcloud::Tcr.v20190924.models.TriggerInvokeCondition`
        # @param InvokePara: 触发器参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokePara: :class:`Tencentcloud::Tcr.v20190924.models.TriggerInvokePara`

        attr_accessor :TriggerName, :InvokeSource, :InvokeAction, :CreateTime, :UpdateTime, :InvokeCondition, :InvokePara
        
        def initialize(triggername=nil, invokesource=nil, invokeaction=nil, createtime=nil, updatetime=nil, invokecondition=nil, invokepara=nil)
          @TriggerName = triggername
          @InvokeSource = invokesource
          @InvokeAction = invokeaction
          @CreateTime = createtime
          @UpdateTime = updatetime
          @InvokeCondition = invokecondition
          @InvokePara = invokepara
        end

        def deserialize(params)
          @TriggerName = params['TriggerName']
          @InvokeSource = params['InvokeSource']
          @InvokeAction = params['InvokeAction']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['InvokeCondition'].nil?
            @InvokeCondition = TriggerInvokeCondition.new
            @InvokeCondition.deserialize(params['InvokeCondition'])
          end
          unless params['InvokePara'].nil?
            @InvokePara = TriggerInvokePara.new
            @InvokePara.deserialize(params['InvokePara'])
          end
        end
      end

      # ValidateNamespaceExistPersonal请求参数结构体
      class ValidateNamespaceExistPersonalRequest < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间名称
        # @type Namespace: String

        attr_accessor :Namespace
        
        def initialize(namespace=nil)
          @Namespace = namespace
        end

        def deserialize(params)
          @Namespace = params['Namespace']
        end
      end

      # ValidateNamespaceExistPersonal返回参数结构体
      class ValidateNamespaceExistPersonalResponse < TencentCloud::Common::AbstractModel
        # @param Data: 验证命名空间是否存在返回信息
        # @type Data: :class:`Tencentcloud::Tcr.v20190924.models.NamespaceIsExistsResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = NamespaceIsExistsResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ValidateRepositoryExistPersonal请求参数结构体
      class ValidateRepositoryExistPersonalRequest < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名称
        # @type RepoName: String

        attr_accessor :RepoName
        
        def initialize(reponame=nil)
          @RepoName = reponame
        end

        def deserialize(params)
          @RepoName = params['RepoName']
        end
      end

      # ValidateRepositoryExistPersonal返回参数结构体
      class ValidateRepositoryExistPersonalResponse < TencentCloud::Common::AbstractModel
        # @param Data: 验证个人版仓库是否存在返回信息
        # @type Data: :class:`Tencentcloud::Tcr.v20190924.models.RepoIsExistResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RepoIsExistResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # vpc和domain信息
      class VpcAndDomainInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: tcr实例id
        # @type InstanceId: String
        # @param VpcId: 私有网络id
        # @type VpcId: String
        # @param EniLBIp: tcr内网访问链路ip
        # @type EniLBIp: String
        # @param UsePublicDomain: true：use instance name as subdomain
        # false: use instancename+"-vpc" as subdomain
        # @type UsePublicDomain: Boolean
        # @param RegionName: 解析地域，需要保证和vpc处于同一地域，如果不填则默认为主实例地域
        # @type RegionName: String

        attr_accessor :InstanceId, :VpcId, :EniLBIp, :UsePublicDomain, :RegionName
        
        def initialize(instanceid=nil, vpcid=nil, enilbip=nil, usepublicdomain=nil, regionname=nil)
          @InstanceId = instanceid
          @VpcId = vpcid
          @EniLBIp = enilbip
          @UsePublicDomain = usepublicdomain
          @RegionName = regionname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VpcId = params['VpcId']
          @EniLBIp = params['EniLBIp']
          @UsePublicDomain = params['UsePublicDomain']
          @RegionName = params['RegionName']
        end
      end

      # vpc私有域名解析状态
      class VpcPrivateDomainStatus < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param VpcId: unique vpc id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param Status: ENABLE代表已经开启，DISABLE代表未开启，ERROR代表查询出错
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :Region, :VpcId, :Status
        
        def initialize(region=nil, vpcid=nil, status=nil)
          @Region = region
          @VpcId = vpcid
          @Status = status
        end

        def deserialize(params)
          @Region = params['Region']
          @VpcId = params['VpcId']
          @Status = params['Status']
        end
      end

      # 触发器目标
      class WebhookTarget < TencentCloud::Common::AbstractModel
        # @param Address: 目标地址
        # @type Address: String
        # @param Headers: 自定义 Headers
        # @type Headers: Array

        attr_accessor :Address, :Headers
        
        def initialize(address=nil, headers=nil)
          @Address = address
          @Headers = headers
        end

        def deserialize(params)
          @Address = params['Address']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              header_tmp = Header.new
              header_tmp.deserialize(i)
              @Headers << header_tmp
            end
          end
        end
      end

      # Webhook 触发器
      class WebhookTrigger < TencentCloud::Common::AbstractModel
        # @param Name: 触发器名称
        # @type Name: String
        # @param Targets: 触发器目标
        # @type Targets: Array
        # @param EventTypes: 触发动作
        # @type EventTypes: Array
        # @param Condition: 触发规则
        # @type Condition: String
        # @param Enabled: 启用触发器
        # @type Enabled: Boolean
        # @param Id: 触发器Id
        # @type Id: Integer
        # @param Description: 触发器描述
        # @type Description: String
        # @param NamespaceId: 触发器所属命名空间 Id
        # @type NamespaceId: Integer

        attr_accessor :Name, :Targets, :EventTypes, :Condition, :Enabled, :Id, :Description, :NamespaceId
        
        def initialize(name=nil, targets=nil, eventtypes=nil, condition=nil, enabled=nil, id=nil, description=nil, namespaceid=nil)
          @Name = name
          @Targets = targets
          @EventTypes = eventtypes
          @Condition = condition
          @Enabled = enabled
          @Id = id
          @Description = description
          @NamespaceId = namespaceid
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              webhooktarget_tmp = WebhookTarget.new
              webhooktarget_tmp.deserialize(i)
              @Targets << webhooktarget_tmp
            end
          end
          @EventTypes = params['EventTypes']
          @Condition = params['Condition']
          @Enabled = params['Enabled']
          @Id = params['Id']
          @Description = params['Description']
          @NamespaceId = params['NamespaceId']
        end
      end

      # 触发器日志
      class WebhookTriggerLog < TencentCloud::Common::AbstractModel
        # @param Id: 日志 Id
        # @type Id: Integer
        # @param TriggerId: 触发器 Id
        # @type TriggerId: Integer
        # @param EventType: 事件类型
        # @type EventType: String
        # @param NotifyType: 通知类型
        # @type NotifyType: String
        # @param Detail: 详情
        # @type Detail: String
        # @param CreationTime: 创建时间
        # @type CreationTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Status: 状态
        # @type Status: String

        attr_accessor :Id, :TriggerId, :EventType, :NotifyType, :Detail, :CreationTime, :UpdateTime, :Status
        
        def initialize(id=nil, triggerid=nil, eventtype=nil, notifytype=nil, detail=nil, creationtime=nil, updatetime=nil, status=nil)
          @Id = id
          @TriggerId = triggerid
          @EventType = eventtype
          @NotifyType = notifytype
          @Detail = detail
          @CreationTime = creationtime
          @UpdateTime = updatetime
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @TriggerId = params['TriggerId']
          @EventType = params['EventType']
          @NotifyType = params['NotifyType']
          @Detail = params['Detail']
          @CreationTime = params['CreationTime']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
        end
      end

    end
  end
end

