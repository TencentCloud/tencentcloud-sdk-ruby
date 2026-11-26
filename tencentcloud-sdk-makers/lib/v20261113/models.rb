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
  module Makers
    module V20261113
      # BlockProject请求参数结构体
      class BlockProjectRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: <p>Makers 站点 ID</p>
        # @type ZoneId: String
        # @param ProjectId: <p>项目 ID</p>
        # @type ProjectId: String
        # @param Status: <p>操作类型，目前支持 Ban表示封禁项目， Normal表示解封项目。</p><p>枚举值：</p><ul><li>Ban： 表示封禁项目</li><li>Normal： 表示解封项目</li></ul>
        # @type Status: String

        attr_accessor :ZoneId, :ProjectId, :Status

        def initialize(zoneid=nil, projectid=nil, status=nil)
          @ZoneId = zoneid
          @ProjectId = projectid
          @Status = status
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProjectId = params['ProjectId']
          @Status = params['Status']
        end
      end

      # BlockProject返回参数结构体
      class BlockProjectResponse < TencentCloud::Common::AbstractModel
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

      # COS 临时密钥
      class CosCredentials < TencentCloud::Common::AbstractModel
        # @param TmpSecretId: <p>临时 SecretId</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpSecretId: String
        # @param TmpSecretKey: <p>临时 SecretKey</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpSecretKey: String
        # @param Token: <p>临时 Token</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Token: String

        attr_accessor :TmpSecretId, :TmpSecretKey, :Token

        def initialize(tmpsecretid=nil, tmpsecretkey=nil, token=nil)
          @TmpSecretId = tmpsecretid
          @TmpSecretKey = tmpsecretkey
          @Token = token
        end

        def deserialize(params)
          @TmpSecretId = params['TmpSecretId']
          @TmpSecretKey = params['TmpSecretKey']
          @Token = params['Token']
        end
      end

      # CreateDeployment请求参数结构体
      class CreateDeploymentRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: <p>Makers 站点 ID</p>
        # @type ZoneId: String
        # @param ProjectId: <p>项目 ID</p>
        # @type ProjectId: String
        # @param ViaMeta: <p>触发来源。Github、ReDeploy、Api、Webhook、Upload、Coding、Gitee、Gitlab</p>
        # @type ViaMeta: String
        # @param Env: <p>环境 slug。Production、Preview 或自定义环境</p>
        # @type Env: String
        # @param Provider: <p>代码来源。上传制品传 Upload</p>
        # @type Provider: String
        # @param DistType: <p>制品类型。Zip 或 Folder</p>
        # @type DistType: String
        # @param TempBucketPath: <p>已上传制品在临时桶中的对象路径</p>
        # @type TempBucketPath: String
        # @param RepoBranch: <p>构建分支</p>
        # @type RepoBranch: String
        # @param RepoCommitHash: <p>提交哈希</p>
        # @type RepoCommitHash: String
        # @param RepoCommitMsg: <p>提交说明</p>
        # @type RepoCommitMsg: String
        # @param BuildFrom: <p>构建来源</p>
        # @type BuildFrom: String
        # @param TemplateId: <p>模板 ID</p>
        # @type TemplateId: String
        # @param CiSpec: <p>构建规格。当前服务端仍从 edgeone.json 读取，此字段先保留</p>
        # @type CiSpec: String

        attr_accessor :ZoneId, :ProjectId, :ViaMeta, :Env, :Provider, :DistType, :TempBucketPath, :RepoBranch, :RepoCommitHash, :RepoCommitMsg, :BuildFrom, :TemplateId, :CiSpec

        def initialize(zoneid=nil, projectid=nil, viameta=nil, env=nil, provider=nil, disttype=nil, tempbucketpath=nil, repobranch=nil, repocommithash=nil, repocommitmsg=nil, buildfrom=nil, templateid=nil, cispec=nil)
          @ZoneId = zoneid
          @ProjectId = projectid
          @ViaMeta = viameta
          @Env = env
          @Provider = provider
          @DistType = disttype
          @TempBucketPath = tempbucketpath
          @RepoBranch = repobranch
          @RepoCommitHash = repocommithash
          @RepoCommitMsg = repocommitmsg
          @BuildFrom = buildfrom
          @TemplateId = templateid
          @CiSpec = cispec
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProjectId = params['ProjectId']
          @ViaMeta = params['ViaMeta']
          @Env = params['Env']
          @Provider = params['Provider']
          @DistType = params['DistType']
          @TempBucketPath = params['TempBucketPath']
          @RepoBranch = params['RepoBranch']
          @RepoCommitHash = params['RepoCommitHash']
          @RepoCommitMsg = params['RepoCommitMsg']
          @BuildFrom = params['BuildFrom']
          @TemplateId = params['TemplateId']
          @CiSpec = params['CiSpec']
        end
      end

      # CreateDeployment返回参数结构体
      class CreateDeploymentResponse < TencentCloud::Common::AbstractModel
        # @param DeploymentId: <p>部署 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeploymentId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeploymentId, :RequestId

        def initialize(deploymentid=nil, requestid=nil)
          @DeploymentId = deploymentid
          @RequestId = requestid
        end

        def deserialize(params)
          @DeploymentId = params['DeploymentId']
          @RequestId = params['RequestId']
        end
      end

      # CreateProject请求参数结构体
      class CreateProjectRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: <p>Makers 站点 ID</p>
        # @type ZoneId: String
        # @param Name: <p>项目名称</p>
        # @type Name: String
        # @param Channel: <p>创建来源。Template、Custom、CLI、Guest</p>
        # @type Channel: String
        # @param Provider: <p>代码来源。Upload、Github、Gitee、Gitlab、Coding</p>
        # @type Provider: String
        # @param Source: <p>接入方标识</p>
        # @type Source: String
        # @param Area: <p>加速区域。mainland、overseas、global</p>
        # @type Area: String
        # @param NodeJsVersion: <p>Node.js 版本。14.21.3、16.20.2、18.20.4、20.18.0、22.11.0、22.17.1、22.21.1、24.5.0、24.11.0、24.18.0</p>
        # @type NodeJsVersion: String
        # @param RootDir: <p>项目根目录</p>
        # @type RootDir: String
        # @param OutputDir: <p>构建产物目录</p>
        # @type OutputDir: String
        # @param BuildCmd: <p>构建命令</p>
        # @type BuildCmd: String
        # @param InstallCmd: <p>安装命令</p>
        # @type InstallCmd: String
        # @param Framework: <p>框架</p>
        # @type Framework: String
        # @param TemplateId: <p>模板 ID</p>
        # @type TemplateId: String
        # @param RepoUrl: <p>仓库地址</p>
        # @type RepoUrl: String
        # @param RepoOwner: <p>仓库所有者</p>
        # @type RepoOwner: String
        # @param RepoName: <p>仓库名称</p>
        # @type RepoName: String
        # @param RepoBranch: <p>生产分支</p>
        # @type RepoBranch: String
        # @param EnvVars: <p>初始环境变量</p>
        # @type EnvVars: Array
        # @param Namespace: <p>Coding 命名空间。Provider 为 Coding 时使用</p>
        # @type Namespace: String
        # @param CodingProjectId: <p>Coding 项目 ID。Provider 为 Coding 时使用</p>
        # @type CodingProjectId: Integer

        attr_accessor :ZoneId, :Name, :Channel, :Provider, :Source, :Area, :NodeJsVersion, :RootDir, :OutputDir, :BuildCmd, :InstallCmd, :Framework, :TemplateId, :RepoUrl, :RepoOwner, :RepoName, :RepoBranch, :EnvVars, :Namespace, :CodingProjectId

        def initialize(zoneid=nil, name=nil, channel=nil, provider=nil, source=nil, area=nil, nodejsversion=nil, rootdir=nil, outputdir=nil, buildcmd=nil, installcmd=nil, framework=nil, templateid=nil, repourl=nil, repoowner=nil, reponame=nil, repobranch=nil, envvars=nil, namespace=nil, codingprojectid=nil)
          @ZoneId = zoneid
          @Name = name
          @Channel = channel
          @Provider = provider
          @Source = source
          @Area = area
          @NodeJsVersion = nodejsversion
          @RootDir = rootdir
          @OutputDir = outputdir
          @BuildCmd = buildcmd
          @InstallCmd = installcmd
          @Framework = framework
          @TemplateId = templateid
          @RepoUrl = repourl
          @RepoOwner = repoowner
          @RepoName = reponame
          @RepoBranch = repobranch
          @EnvVars = envvars
          @Namespace = namespace
          @CodingProjectId = codingprojectid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Name = params['Name']
          @Channel = params['Channel']
          @Provider = params['Provider']
          @Source = params['Source']
          @Area = params['Area']
          @NodeJsVersion = params['NodeJsVersion']
          @RootDir = params['RootDir']
          @OutputDir = params['OutputDir']
          @BuildCmd = params['BuildCmd']
          @InstallCmd = params['InstallCmd']
          @Framework = params['Framework']
          @TemplateId = params['TemplateId']
          @RepoUrl = params['RepoUrl']
          @RepoOwner = params['RepoOwner']
          @RepoName = params['RepoName']
          @RepoBranch = params['RepoBranch']
          unless params['EnvVars'].nil?
            @EnvVars = []
            params['EnvVars'].each do |i|
              envvar_tmp = EnvVar.new
              envvar_tmp.deserialize(i)
              @EnvVars << envvar_tmp
            end
          end
          @Namespace = params['Namespace']
          @CodingProjectId = params['CodingProjectId']
        end
      end

      # CreateProject返回参数结构体
      class CreateProjectResponse < TencentCloud::Common::AbstractModel
        # @param ProjectId: <p>项目 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectId, :RequestId

        def initialize(projectid=nil, requestid=nil)
          @ProjectId = projectid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RequestId = params['RequestId']
        end
      end

      # CreateZoneCustomDomain请求参数结构体
      class CreateZoneCustomDomainRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: <p>站点 ID</p>
        # @type ZoneId: String
        # @param ProjectId: <p>项目 ID</p>
        # @type ProjectId: String
        # @param Domain: <p>自定义域名</p>
        # @type Domain: String
        # @param Env: <p>环境 slug。不传时由后端决定</p>
        # @type Env: String

        attr_accessor :ZoneId, :ProjectId, :Domain, :Env

        def initialize(zoneid=nil, projectid=nil, domain=nil, env=nil)
          @ZoneId = zoneid
          @ProjectId = projectid
          @Domain = domain
          @Env = env
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProjectId = params['ProjectId']
          @Domain = params['Domain']
          @Env = params['Env']
        end
      end

      # CreateZoneCustomDomain返回参数结构体
      class CreateZoneCustomDomainResponse < TencentCloud::Common::AbstractModel
        # @param Domain: <p>域名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Id: <p>域名配置 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Domain, :Id, :RequestId

        def initialize(domain=nil, id=nil, requestid=nil)
          @Domain = domain
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # 绑定自定义域名时的域名项
      class CustomDomainInput < TencentCloud::Common::AbstractModel
        # @param Domain: <p>域名</p>
        # @type Domain: String
        # @param CertificateId: <p>证书 ID</p>
        # @type CertificateId: String
        # @param Status: <p>校验状态。Verify、Pass、Fail</p>
        # @type Status: String
        # @param NoCertificate: <p>是否不申请证书</p>
        # @type NoCertificate: Boolean

        attr_accessor :Domain, :CertificateId, :Status, :NoCertificate

        def initialize(domain=nil, certificateid=nil, status=nil, nocertificate=nil)
          @Domain = domain
          @CertificateId = certificateid
          @Status = status
          @NoCertificate = nocertificate
        end

        def deserialize(params)
          @Domain = params['Domain']
          @CertificateId = params['CertificateId']
          @Status = params['Status']
          @NoCertificate = params['NoCertificate']
        end
      end

      # 自定义域名
      class CustomDomainItem < TencentCloud::Common::AbstractModel
        # @param Domain: <p>域名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String

        attr_accessor :Domain

        def initialize(domain=nil)
          @Domain = domain
        end

        def deserialize(params)
          @Domain = params['Domain']
        end
      end

      # DeleteProjectCustomDomains请求参数结构体
      class DeleteProjectCustomDomainsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: <p>Makers 站点 ID</p>
        # @type ZoneId: String
        # @param ProjectId: <p>项目 ID</p>
        # @type ProjectId: String
        # @param CustomDomains: <p>要解绑的域名</p>
        # @type CustomDomains: Array

        attr_accessor :ZoneId, :ProjectId, :CustomDomains

        def initialize(zoneid=nil, projectid=nil, customdomains=nil)
          @ZoneId = zoneid
          @ProjectId = projectid
          @CustomDomains = customdomains
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProjectId = params['ProjectId']
          @CustomDomains = params['CustomDomains']
        end
      end

      # DeleteProjectCustomDomains返回参数结构体
      class DeleteProjectCustomDomainsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteProjectEnvs请求参数结构体
      class DeleteProjectEnvsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: <p>Makers 站点 ID</p>
        # @type ZoneId: String
        # @param ProjectId: <p>项目 ID</p>
        # @type ProjectId: String
        # @param EnvVars: <p>要删除的环境变量。传 Key（或 Id），Value 必填但不参与匹配</p>
        # @type EnvVars: Array

        attr_accessor :ZoneId, :ProjectId, :EnvVars

        def initialize(zoneid=nil, projectid=nil, envvars=nil)
          @ZoneId = zoneid
          @ProjectId = projectid
          @EnvVars = envvars
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProjectId = params['ProjectId']
          unless params['EnvVars'].nil?
            @EnvVars = []
            params['EnvVars'].each do |i|
              envvar_tmp = EnvVar.new
              envvar_tmp.deserialize(i)
              @EnvVars << envvar_tmp
            end
          end
        end
      end

      # DeleteProjectEnvs返回参数结构体
      class DeleteProjectEnvsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteProject请求参数结构体
      class DeleteProjectRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: <p>Makers 站点 ID</p>
        # @type ZoneId: String
        # @param ProjectId: <p>项目 ID</p>
        # @type ProjectId: String

        attr_accessor :ZoneId, :ProjectId

        def initialize(zoneid=nil, projectid=nil)
          @ZoneId = zoneid
          @ProjectId = projectid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteProject返回参数结构体
      class DeleteProjectResponse < TencentCloud::Common::AbstractModel
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

      # 部署记录
      class Deployment < TencentCloud::Common::AbstractModel
        # @param DeploymentId: <p>部署 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeploymentId: String
        # @param ProjectId: <p>项目 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param Status: <p>Success、Failed、Process、Invalid、Pending、Timeout、Cancelled</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param OriginalStatus: <p>部署被移除前的原始状态</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalStatus: String
        # @param Code: <p>构建退出码，0 表示成功</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param BuildCost: <p>构建耗时，单位毫秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildCost: String
        # @param ViaMeta: <p>触发来源。Github、ReDeploy、Api、Coding、Gitee、Upload、Gitlab</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViaMeta: String
        # @param Env: <p>环境 slug</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Env: String
        # @param RepoBranch: <p>分支</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoBranch: String
        # @param RepoCommitHash: <p>提交哈希</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoCommitHash: String
        # @param RepoCommitMsg: <p>提交说明</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoCommitMsg: String
        # @param PreviewUrl: <p>本次部署的访问地址</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreviewUrl: String
        # @param ProjectUrl: <p>项目默认域名地址</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectUrl: String
        # @param UsedInProd: <p>是否为当前生产版本</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedInProd: Boolean
        # @param CoverUrl: <p>封面地址</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoverUrl: String
        # @param MetaData: <p>路由配置，JSON 字符串</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaData: String
        # @param DplRepoUrl: <p>本次部署使用的仓库地址</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DplRepoUrl: String
        # @param CreatedOn: <p>创建时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedOn: String
        # @param ModifiedOn: <p>更新时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedOn: String

        attr_accessor :DeploymentId, :ProjectId, :Status, :OriginalStatus, :Code, :BuildCost, :ViaMeta, :Env, :RepoBranch, :RepoCommitHash, :RepoCommitMsg, :PreviewUrl, :ProjectUrl, :UsedInProd, :CoverUrl, :MetaData, :DplRepoUrl, :CreatedOn, :ModifiedOn

        def initialize(deploymentid=nil, projectid=nil, status=nil, originalstatus=nil, code=nil, buildcost=nil, viameta=nil, env=nil, repobranch=nil, repocommithash=nil, repocommitmsg=nil, previewurl=nil, projecturl=nil, usedinprod=nil, coverurl=nil, metadata=nil, dplrepourl=nil, createdon=nil, modifiedon=nil)
          @DeploymentId = deploymentid
          @ProjectId = projectid
          @Status = status
          @OriginalStatus = originalstatus
          @Code = code
          @BuildCost = buildcost
          @ViaMeta = viameta
          @Env = env
          @RepoBranch = repobranch
          @RepoCommitHash = repocommithash
          @RepoCommitMsg = repocommitmsg
          @PreviewUrl = previewurl
          @ProjectUrl = projecturl
          @UsedInProd = usedinprod
          @CoverUrl = coverurl
          @MetaData = metadata
          @DplRepoUrl = dplrepourl
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
        end

        def deserialize(params)
          @DeploymentId = params['DeploymentId']
          @ProjectId = params['ProjectId']
          @Status = params['Status']
          @OriginalStatus = params['OriginalStatus']
          @Code = params['Code']
          @BuildCost = params['BuildCost']
          @ViaMeta = params['ViaMeta']
          @Env = params['Env']
          @RepoBranch = params['RepoBranch']
          @RepoCommitHash = params['RepoCommitHash']
          @RepoCommitMsg = params['RepoCommitMsg']
          @PreviewUrl = params['PreviewUrl']
          @ProjectUrl = params['ProjectUrl']
          @UsedInProd = params['UsedInProd']
          @CoverUrl = params['CoverUrl']
          @MetaData = params['MetaData']
          @DplRepoUrl = params['DplRepoUrl']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
        end
      end

      # 部署列表过滤条件
      class DeploymentFilter < TencentCloud::Common::AbstractModel
        # @param Name: <p>过滤字段。ProjectId、DeploymentId、Name、Status、StartTime、EndTime、RepoBranch</p>
        # @type Name: String
        # @param Values: <p>过滤值</p>
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

      # DescribeCosTempToken请求参数结构体
      class DescribeCosTempTokenRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: <p>Makers 站点 ID</p>
        # @type ZoneId: String
        # @param ProjectName: <p>项目名称。临时路径按它拼接</p>
        # @type ProjectName: String
        # @param ProjectId: <p>项目 ID。不传 ProjectName 时用来反查项目名</p>
        # @type ProjectId: String

        attr_accessor :ZoneId, :ProjectName, :ProjectId

        def initialize(zoneid=nil, projectname=nil, projectid=nil)
          @ZoneId = zoneid
          @ProjectName = projectname
          @ProjectId = projectid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProjectName = params['ProjectName']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeCosTempToken返回参数结构体
      class DescribeCosTempTokenResponse < TencentCloud::Common::AbstractModel
        # @param Bucket: <p>COS 桶</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bucket: String
        # @param Region: <p>COS 地域</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param TargetPath: <p>上传路径，格式 appId/projectName/时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetPath: String
        # @param ExpiredTime: <p>临时密钥过期时间，Unix 秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiredTime: Integer
        # @param Expiration: <p>临时密钥过期时间，ISO 8601</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Expiration: String
        # @param Credentials: <p>临时密钥</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Credentials: :class:`Tencentcloud::Makers.v20261113.models.CosCredentials`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Bucket, :Region, :TargetPath, :ExpiredTime, :Expiration, :Credentials, :RequestId

        def initialize(bucket=nil, region=nil, targetpath=nil, expiredtime=nil, expiration=nil, credentials=nil, requestid=nil)
          @Bucket = bucket
          @Region = region
          @TargetPath = targetpath
          @ExpiredTime = expiredtime
          @Expiration = expiration
          @Credentials = credentials
          @RequestId = requestid
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @Region = params['Region']
          @TargetPath = params['TargetPath']
          @ExpiredTime = params['ExpiredTime']
          @Expiration = params['Expiration']
          unless params['Credentials'].nil?
            @Credentials = CosCredentials.new
            @Credentials.deserialize(params['Credentials'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeploymentLog请求参数结构体
      class DescribeDeploymentLogRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: <p>Makers 站点 ID</p>
        # @type ZoneId: String
        # @param ProjectId: <p>项目 ID</p>
        # @type ProjectId: String
        # @param DeploymentId: <p>部署 ID</p>
        # @type DeploymentId: String

        attr_accessor :ZoneId, :ProjectId, :DeploymentId

        def initialize(zoneid=nil, projectid=nil, deploymentid=nil)
          @ZoneId = zoneid
          @ProjectId = projectid
          @DeploymentId = deploymentid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProjectId = params['ProjectId']
          @DeploymentId = params['DeploymentId']
        end
      end

      # DescribeDeploymentLog返回参数结构体
      class DescribeDeploymentLogResponse < TencentCloud::Common::AbstractModel
        # @param LogUrl: <p>构建日志地址</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogUrl, :RequestId

        def initialize(logurl=nil, requestid=nil)
          @LogUrl = logurl
          @RequestId = requestid
        end

        def deserialize(params)
          @LogUrl = params['LogUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeployments请求参数结构体
      class DescribeDeploymentsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: <p>Makers 站点 ID</p>
        # @type ZoneId: String
        # @param ProjectId: <p>项目 ID</p>
        # @type ProjectId: String
        # @param DeploymentIds: <p>按部署 ID 查询</p>
        # @type DeploymentIds: Array
        # @param Filters: <p>过滤条件</p>
        # @type Filters: Array
        # @param Offset: <p>偏移</p>
        # @type Offset: Integer
        # @param Limit: <p>每页数量，最大 100</p>
        # @type Limit: Integer
        # @param OrderBy: <p>CreatedOn 或 ModifiedOn</p>
        # @type OrderBy: String
        # @param OrderType: <p>Asc 或 Desc</p>
        # @type OrderType: String
        # @param StartTime: <p>开始时间</p>
        # @type StartTime: String
        # @param EndTime: <p>结束时间</p>
        # @type EndTime: String

        attr_accessor :ZoneId, :ProjectId, :DeploymentIds, :Filters, :Offset, :Limit, :OrderBy, :OrderType, :StartTime, :EndTime

        def initialize(zoneid=nil, projectid=nil, deploymentids=nil, filters=nil, offset=nil, limit=nil, orderby=nil, ordertype=nil, starttime=nil, endtime=nil)
          @ZoneId = zoneid
          @ProjectId = projectid
          @DeploymentIds = deploymentids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
          @OrderType = ordertype
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProjectId = params['ProjectId']
          @DeploymentIds = params['DeploymentIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              deploymentfilter_tmp = DeploymentFilter.new
              deploymentfilter_tmp.deserialize(i)
              @Filters << deploymentfilter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeDeployments返回参数结构体
      class DescribeDeploymentsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>总数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Deployments: <p>部署列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deployments: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Deployments, :RequestId

        def initialize(totalcount=nil, deployments=nil, requestid=nil)
          @TotalCount = totalcount
          @Deployments = deployments
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Deployments'].nil?
            @Deployments = []
            params['Deployments'].each do |i|
              deployment_tmp = Deployment.new
              deployment_tmp.deserialize(i)
              @Deployments << deployment_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvironments请求参数结构体
      class DescribeEnvironmentsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: <p>Makers 站点 ID</p>
        # @type ZoneId: String
        # @param ProjectId: <p>项目 ID</p>
        # @type ProjectId: String

        attr_accessor :ZoneId, :ProjectId

        def initialize(zoneid=nil, projectid=nil)
          @ZoneId = zoneid
          @ProjectId = projectid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeEnvironments返回参数结构体
      class DescribeEnvironmentsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>总数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Environments: <p>环境列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Environments: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Environments, :RequestId

        def initialize(totalcount=nil, environments=nil, requestid=nil)
          @TotalCount = totalcount
          @Environments = environments
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Environments'].nil?
            @Environments = []
            params['Environments'].each do |i|
              environment_tmp = Environment.new
              environment_tmp.deserialize(i)
              @Environments << environment_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjectEnvs请求参数结构体
      class DescribeProjectEnvsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: <p>Makers 站点 ID</p>
        # @type ZoneId: String
        # @param ProjectId: <p>项目 ID</p>
        # @type ProjectId: String
        # @param Env: <p>只返回该环境 slug 的变量</p>
        # @type Env: String

        attr_accessor :ZoneId, :ProjectId, :Env

        def initialize(zoneid=nil, projectid=nil, env=nil)
          @ZoneId = zoneid
          @ProjectId = projectid
          @Env = env
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProjectId = params['ProjectId']
          @Env = params['Env']
        end
      end

      # DescribeProjectEnvs返回参数结构体
      class DescribeProjectEnvsResponse < TencentCloud::Common::AbstractModel
        # @param EnvVars: <p>环境变量</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvVars: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvVars, :RequestId

        def initialize(envvars=nil, requestid=nil)
          @EnvVars = envvars
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EnvVars'].nil?
            @EnvVars = []
            params['EnvVars'].each do |i|
              envvar_tmp = EnvVar.new
              envvar_tmp.deserialize(i)
              @EnvVars << envvar_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjects请求参数结构体
      class DescribeProjectsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: <p>Makers 站点 ID</p>
        # @type ZoneId: String
        # @param Offset: <p>页码偏移，从 0 开始。后端跳过 Offset * Limit 条</p>
        # @type Offset: Integer
        # @param Limit: <p>每页数量，最大 100</p>
        # @type Limit: Integer
        # @param Filters: <p>过滤条件。Name 取值 ProjectId、Name、Status、Provider</p>
        # @type Filters: Array
        # @param ProjectIds: <p>按项目 ID 查询</p>
        # @type ProjectIds: Array
        # @param OrderBy: <p>排序字段。CreatedOn、ModifiedOn。默认 CreatedOn</p>
        # @type OrderBy: String
        # @param OrderType: <p>排序方向。Asc、Desc、ASC、DESC。默认 DESC</p>
        # @type OrderType: String
        # @param Source: <p>来源。drop 时只返回 Upload 项目</p>
        # @type Source: String
        # @param Query: <p>按项目名称模糊搜索</p>
        # @type Query: String

        attr_accessor :ZoneId, :Offset, :Limit, :Filters, :ProjectIds, :OrderBy, :OrderType, :Source, :Query

        def initialize(zoneid=nil, offset=nil, limit=nil, filters=nil, projectids=nil, orderby=nil, ordertype=nil, source=nil, query=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @ProjectIds = projectids
          @OrderBy = orderby
          @OrderType = ordertype
          @Source = source
          @Query = query
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              projectfilter_tmp = ProjectFilter.new
              projectfilter_tmp.deserialize(i)
              @Filters << projectfilter_tmp
            end
          end
          @ProjectIds = params['ProjectIds']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @Source = params['Source']
          @Query = params['Query']
        end
      end

      # DescribeProjects返回参数结构体
      class DescribeProjectsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>总数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Projects: <p>项目列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Projects: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Projects, :RequestId

        def initialize(totalcount=nil, projects=nil, requestid=nil)
          @TotalCount = totalcount
          @Projects = projects
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Projects'].nil?
            @Projects = []
            params['Projects'].each do |i|
              project_tmp = Project.new
              project_tmp.deserialize(i)
              @Projects << project_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZoneCustomDomains请求参数结构体
      class DescribeZoneCustomDomainsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: <p>Makers 站点 ID</p>
        # @type ZoneId: String
        # @param ProjectId: <p>项目 ID</p>
        # @type ProjectId: String
        # @param CustomDomains: <p>只查询这些域名。不传则返回项目下的域名</p>
        # @type CustomDomains: Array

        attr_accessor :ZoneId, :ProjectId, :CustomDomains

        def initialize(zoneid=nil, projectid=nil, customdomains=nil)
          @ZoneId = zoneid
          @ProjectId = projectid
          @CustomDomains = customdomains
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProjectId = params['ProjectId']
          unless params['CustomDomains'].nil?
            @CustomDomains = []
            params['CustomDomains'].each do |i|
              customdomaininput_tmp = CustomDomainInput.new
              customdomaininput_tmp.deserialize(i)
              @CustomDomains << customdomaininput_tmp
            end
          end
        end
      end

      # DescribeZoneCustomDomains返回参数结构体
      class DescribeZoneCustomDomainsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>总数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param PagesDomains: <p>域名列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PagesDomains: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :PagesDomains, :RequestId

        def initialize(totalcount=nil, pagesdomains=nil, requestid=nil)
          @TotalCount = totalcount
          @PagesDomains = pagesdomains
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['PagesDomains'].nil?
            @PagesDomains = []
            params['PagesDomains'].each do |i|
              zonedomain_tmp = ZoneDomain.new
              zonedomain_tmp.deserialize(i)
              @PagesDomains << zonedomain_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DNS 归属校验记录
      class DnsVerification < TencentCloud::Common::AbstractModel
        # @param RecordType: <p>记录类型，TXT</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordType: String
        # @param Subdomain: <p>主机记录</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Subdomain: String
        # @param RecordValue: <p>记录值</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordValue: String

        attr_accessor :RecordType, :Subdomain, :RecordValue

        def initialize(recordtype=nil, subdomain=nil, recordvalue=nil)
          @RecordType = recordtype
          @Subdomain = subdomain
          @RecordValue = recordvalue
        end

        def deserialize(params)
          @RecordType = params['RecordType']
          @Subdomain = params['Subdomain']
          @RecordValue = params['RecordValue']
        end
      end

      # 环境变量。Env 缺省或空数组表示全局，写入时展开为项目当前全部环境
      class EnvVar < TencentCloud::Common::AbstractModel
        # @param Key: <p>变量名，最长 255</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: <p>变量值，最长 1000</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Id: <p>变量 ID。创建时不传</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Comment: <p>备注，最长 255</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param Env: <p>生效环境 slug，例如 Production、Preview。同 Key 的多行环境不能重叠</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Env: Array

        attr_accessor :Key, :Value, :Id, :Comment, :Env

        def initialize(key=nil, value=nil, id=nil, comment=nil, env=nil)
          @Key = key
          @Value = value
          @Id = id
          @Comment = comment
          @Env = env
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @Id = params['Id']
          @Comment = params['Comment']
          @Env = params['Env']
        end
      end

      # 环境
      class Environment < TencentCloud::Common::AbstractModel
        # @param Slug: <p>环境标识，创建后不可改</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Slug: String
        # @param Name: <p>环境名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Type: <p>Production、Preview、Custom</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Branches: <p>关联分支，支持通配</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Branches: Array
        # @param AutoDeploy: <p>是否自动部署。Production 恒为 true</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoDeploy: Boolean
        # @param CustomDomains: <p>绑定的自定义域名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomDomains: Array
        # @param EnvVars: <p>环境变量</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvVars: Array
        # @param CreatedOn: <p>创建时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedOn: String
        # @param ModifiedOn: <p>更新时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedOn: String

        attr_accessor :Slug, :Name, :Type, :Branches, :AutoDeploy, :CustomDomains, :EnvVars, :CreatedOn, :ModifiedOn

        def initialize(slug=nil, name=nil, type=nil, branches=nil, autodeploy=nil, customdomains=nil, envvars=nil, createdon=nil, modifiedon=nil)
          @Slug = slug
          @Name = name
          @Type = type
          @Branches = branches
          @AutoDeploy = autodeploy
          @CustomDomains = customdomains
          @EnvVars = envvars
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
        end

        def deserialize(params)
          @Slug = params['Slug']
          @Name = params['Name']
          @Type = params['Type']
          @Branches = params['Branches']
          @AutoDeploy = params['AutoDeploy']
          @CustomDomains = params['CustomDomains']
          unless params['EnvVars'].nil?
            @EnvVars = []
            params['EnvVars'].each do |i|
              environmentenvvar_tmp = EnvironmentEnvVar.new
              environmentenvvar_tmp.deserialize(i)
              @EnvVars << environmentenvvar_tmp
            end
          end
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
        end
      end

      # 环境上的变量
      class EnvironmentEnvVar < TencentCloud::Common::AbstractModel
        # @param Id: <p>变量 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Key: <p>变量名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: <p>变量值</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Comment: <p>备注</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param Env: <p>生效环境 slug</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Env: Array

        attr_accessor :Id, :Key, :Value, :Comment, :Env

        def initialize(id=nil, key=nil, value=nil, comment=nil, env=nil)
          @Id = id
          @Key = key
          @Value = value
          @Comment = comment
          @Env = env
        end

        def deserialize(params)
          @Id = params['Id']
          @Key = params['Key']
          @Value = params['Value']
          @Comment = params['Comment']
          @Env = params['Env']
        end
      end

      # 文件归属校验信息
      class FileVerification < TencentCloud::Common::AbstractModel
        # @param Path: <p>校验文件路径</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Content: <p>校验文件内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String

        attr_accessor :Path, :Content

        def initialize(path=nil, content=nil)
          @Path = path
          @Content = content
        end

        def deserialize(params)
          @Path = params['Path']
          @Content = params['Content']
        end
      end

      # 强制 HTTPS 跳转
      class ForceRedirectConfig < TencentCloud::Common::AbstractModel
        # @param Switch: <p>on 或 off</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param RedirectStatusCode: <p>301、302、307、308</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedirectStatusCode: Integer

        attr_accessor :Switch, :RedirectStatusCode

        def initialize(switch=nil, redirectstatuscode=nil)
          @Switch = switch
          @RedirectStatusCode = redirectstatuscode
        end

        def deserialize(params)
          @Switch = params['Switch']
          @RedirectStatusCode = params['RedirectStatusCode']
        end
      end

      # HSTS 配置
      class HstsConfig < TencentCloud::Common::AbstractModel
        # @param Switch: <p>on 或 off</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String
        # @param MaxAge: <p>有效期，秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxAge: Integer
        # @param IncludeSubDomains: <p>on 或 off</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeSubDomains: String
        # @param Preload: <p>on 或 off</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Preload: String

        attr_accessor :Switch, :MaxAge, :IncludeSubDomains, :Preload

        def initialize(switch=nil, maxage=nil, includesubdomains=nil, preload=nil)
          @Switch = switch
          @MaxAge = maxage
          @IncludeSubDomains = includesubdomains
          @Preload = preload
        end

        def deserialize(params)
          @Switch = params['Switch']
          @MaxAge = params['MaxAge']
          @IncludeSubDomains = params['IncludeSubDomains']
          @Preload = params['Preload']
        end
      end

      # ModifyProjectEnvs请求参数结构体
      class ModifyProjectEnvsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: <p>Makers 站点 ID</p>
        # @type ZoneId: String
        # @param ProjectId: <p>项目 ID</p>
        # @type ProjectId: String
        # @param EnvVars: <p>要写入的环境变量</p>
        # @type EnvVars: Array

        attr_accessor :ZoneId, :ProjectId, :EnvVars

        def initialize(zoneid=nil, projectid=nil, envvars=nil)
          @ZoneId = zoneid
          @ProjectId = projectid
          @EnvVars = envvars
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProjectId = params['ProjectId']
          unless params['EnvVars'].nil?
            @EnvVars = []
            params['EnvVars'].each do |i|
              envvar_tmp = EnvVar.new
              envvar_tmp.deserialize(i)
              @EnvVars << envvar_tmp
            end
          end
        end
      end

      # ModifyProjectEnvs返回参数结构体
      class ModifyProjectEnvsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyProject请求参数结构体
      class ModifyProjectRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: <p>Makers 站点 ID</p>
        # @type ZoneId: String
        # @param ProjectId: <p>项目 ID</p>
        # @type ProjectId: String
        # @param Name: <p>项目名称</p>
        # @type Name: String
        # @param RootDir: <p>项目根目录</p>
        # @type RootDir: String
        # @param OutputDir: <p>构建产物目录</p>
        # @type OutputDir: String
        # @param BuildCmd: <p>构建命令</p>
        # @type BuildCmd: String
        # @param InstallCmd: <p>安装命令</p>
        # @type InstallCmd: String
        # @param Framework: <p>框架</p>
        # @type Framework: String
        # @param CoverUrl: <p>封面地址</p>
        # @type CoverUrl: String
        # @param NodeJsVersion: <p>Node.js 版本</p>
        # @type NodeJsVersion: String

        attr_accessor :ZoneId, :ProjectId, :Name, :RootDir, :OutputDir, :BuildCmd, :InstallCmd, :Framework, :CoverUrl, :NodeJsVersion

        def initialize(zoneid=nil, projectid=nil, name=nil, rootdir=nil, outputdir=nil, buildcmd=nil, installcmd=nil, framework=nil, coverurl=nil, nodejsversion=nil)
          @ZoneId = zoneid
          @ProjectId = projectid
          @Name = name
          @RootDir = rootdir
          @OutputDir = outputdir
          @BuildCmd = buildcmd
          @InstallCmd = installcmd
          @Framework = framework
          @CoverUrl = coverurl
          @NodeJsVersion = nodejsversion
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @RootDir = params['RootDir']
          @OutputDir = params['OutputDir']
          @BuildCmd = params['BuildCmd']
          @InstallCmd = params['InstallCmd']
          @Framework = params['Framework']
          @CoverUrl = params['CoverUrl']
          @NodeJsVersion = params['NodeJsVersion']
        end
      end

      # ModifyProject返回参数结构体
      class ModifyProjectResponse < TencentCloud::Common::AbstractModel
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

      # ModifyZoneCustomDomainEnv请求参数结构体
      class ModifyZoneCustomDomainEnvRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: <p>站点 ID</p>
        # @type ZoneId: String
        # @param ProjectId: <p>项目 ID</p>
        # @type ProjectId: String
        # @param Domain: <p>域名</p>
        # @type Domain: String
        # @param Env: <p>目标环境 slug</p>
        # @type Env: String

        attr_accessor :ZoneId, :ProjectId, :Domain, :Env

        def initialize(zoneid=nil, projectid=nil, domain=nil, env=nil)
          @ZoneId = zoneid
          @ProjectId = projectid
          @Domain = domain
          @Env = env
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProjectId = params['ProjectId']
          @Domain = params['Domain']
          @Env = params['Env']
        end
      end

      # ModifyZoneCustomDomainEnv返回参数结构体
      class ModifyZoneCustomDomainEnvResponse < TencentCloud::Common::AbstractModel
        # @param Domain: <p>域名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Env: <p>切换后的环境 slug</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Env: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Domain, :Env, :RequestId

        def initialize(domain=nil, env=nil, requestid=nil)
          @Domain = domain
          @Env = env
          @RequestId = requestid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Env = params['Env']
          @RequestId = params['RequestId']
        end
      end

      # NS 归属校验信息。Makers 目前恒为 null
      class NsVerification < TencentCloud::Common::AbstractModel
        # @param NameServers: <p>NS 服务器</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NameServers: Array

        attr_accessor :NameServers

        def initialize(nameservers=nil)
          @NameServers = nameservers
        end

        def deserialize(params)
          @NameServers = params['NameServers']
        end
      end

      # 域名归属校验信息
      class OwnershipVerification < TencentCloud::Common::AbstractModel
        # @param DnsVerification: <p>DNS 校验</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DnsVerification: :class:`Tencentcloud::Makers.v20261113.models.DnsVerification`
        # @param FileVerification: <p>文件校验</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileVerification: :class:`Tencentcloud::Makers.v20261113.models.FileVerification`
        # @param NsVerification: <p>NS 校验</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NsVerification: :class:`Tencentcloud::Makers.v20261113.models.NsVerification`

        attr_accessor :DnsVerification, :FileVerification, :NsVerification

        def initialize(dnsverification=nil, fileverification=nil, nsverification=nil)
          @DnsVerification = dnsverification
          @FileVerification = fileverification
          @NsVerification = nsverification
        end

        def deserialize(params)
          unless params['DnsVerification'].nil?
            @DnsVerification = DnsVerification.new
            @DnsVerification.deserialize(params['DnsVerification'])
          end
          unless params['FileVerification'].nil?
            @FileVerification = FileVerification.new
            @FileVerification.deserialize(params['FileVerification'])
          end
          unless params['NsVerification'].nil?
            @NsVerification = NsVerification.new
            @NsVerification.deserialize(params['NsVerification'])
          end
        end
      end

      # 项目。字段与 DescribeProjects 的实际返回一致
      class Project < TencentCloud::Common::AbstractModel
        # @param ProjectId: <p>项目 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param Name: <p>项目名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Status: <p>项目状态。Normal、Ban、Unlink、Process、Pending、Offline</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ZoneId: <p>站点 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: String
        # @param Area: <p>加速区域。mainland、overseas、global</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Area: String
        # @param Provider: <p>代码来源。Github、Gitee、Coding、Upload、Gitlab、Bitbucket、Cnb</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Provider: String
        # @param Channel: <p>创建来源。Template、Custom、CLI、Guest</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Channel: String
        # @param PresetDomain: <p>预设域名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PresetDomain: String
        # @param PresetDomainStatus: <p>预设域名状态</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PresetDomainStatus: String
        # @param RootDir: <p>项目根目录</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RootDir: String
        # @param OutputDir: <p>构建产物目录</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputDir: String
        # @param BuildCmd: <p>构建命令</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildCmd: String
        # @param InstallCmd: <p>安装命令</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstallCmd: String
        # @param Framework: <p>框架</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Framework: String
        # @param NodejsVersion: <p>Node.js 版本</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodejsVersion: String
        # @param RepoUrl: <p>仓库地址</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoUrl: String
        # @param RepoOwner: <p>仓库所有者</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoOwner: String
        # @param RepoName: <p>仓库名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoName: String
        # @param RepoBranch: <p>生产分支</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoBranch: String
        # @param RepoPreBranches: <p>预览分支</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoPreBranches: Array
        # @param Regions: <p>部署地域</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Regions: :class:`Tencentcloud::Makers.v20261113.models.Regions`
        # @param EnvVars: <p>环境变量</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvVars: Array
        # @param CustomDomains: <p>自定义域名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomDomains: Array
        # @param Deployment: <p>最近一次部署</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deployment: :class:`Tencentcloud::Makers.v20261113.models.ProjectDeployment`
        # @param IsAgent: <p>是否 Agent 项目。1 是，0 否</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAgent: Integer
        # @param AgentFramework: <p>Agent 框架。非 Agent 项目为空</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentFramework: String
        # @param IsTld: <p>是否命中用户级泛域名。1 是，0 否</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsTld: Integer
        # @param CreatedOn: <p>创建时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedOn: String
        # @param ModifiedOn: <p>更新时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedOn: String
        # @param BuildMachine: <p>构建规格客户契约</p><p>枚举值：</p><ul><li>standard： 4C6G，默认档，所有套餐可用</li><li>enhanced： 8C14G，专业版及以上可用；低配套餐声明时按 standard 处理并提示升级</li></ul><p>默认值：standard</p>
        # @type BuildMachine: String

        attr_accessor :ProjectId, :Name, :Status, :ZoneId, :Area, :Provider, :Channel, :PresetDomain, :PresetDomainStatus, :RootDir, :OutputDir, :BuildCmd, :InstallCmd, :Framework, :NodejsVersion, :RepoUrl, :RepoOwner, :RepoName, :RepoBranch, :RepoPreBranches, :Regions, :EnvVars, :CustomDomains, :Deployment, :IsAgent, :AgentFramework, :IsTld, :CreatedOn, :ModifiedOn, :BuildMachine

        def initialize(projectid=nil, name=nil, status=nil, zoneid=nil, area=nil, provider=nil, channel=nil, presetdomain=nil, presetdomainstatus=nil, rootdir=nil, outputdir=nil, buildcmd=nil, installcmd=nil, framework=nil, nodejsversion=nil, repourl=nil, repoowner=nil, reponame=nil, repobranch=nil, repoprebranches=nil, regions=nil, envvars=nil, customdomains=nil, deployment=nil, isagent=nil, agentframework=nil, istld=nil, createdon=nil, modifiedon=nil, buildmachine=nil)
          @ProjectId = projectid
          @Name = name
          @Status = status
          @ZoneId = zoneid
          @Area = area
          @Provider = provider
          @Channel = channel
          @PresetDomain = presetdomain
          @PresetDomainStatus = presetdomainstatus
          @RootDir = rootdir
          @OutputDir = outputdir
          @BuildCmd = buildcmd
          @InstallCmd = installcmd
          @Framework = framework
          @NodejsVersion = nodejsversion
          @RepoUrl = repourl
          @RepoOwner = repoowner
          @RepoName = reponame
          @RepoBranch = repobranch
          @RepoPreBranches = repoprebranches
          @Regions = regions
          @EnvVars = envvars
          @CustomDomains = customdomains
          @Deployment = deployment
          @IsAgent = isagent
          @AgentFramework = agentframework
          @IsTld = istld
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @BuildMachine = buildmachine
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @Status = params['Status']
          @ZoneId = params['ZoneId']
          @Area = params['Area']
          @Provider = params['Provider']
          @Channel = params['Channel']
          @PresetDomain = params['PresetDomain']
          @PresetDomainStatus = params['PresetDomainStatus']
          @RootDir = params['RootDir']
          @OutputDir = params['OutputDir']
          @BuildCmd = params['BuildCmd']
          @InstallCmd = params['InstallCmd']
          @Framework = params['Framework']
          @NodejsVersion = params['NodejsVersion']
          @RepoUrl = params['RepoUrl']
          @RepoOwner = params['RepoOwner']
          @RepoName = params['RepoName']
          @RepoBranch = params['RepoBranch']
          @RepoPreBranches = params['RepoPreBranches']
          unless params['Regions'].nil?
            @Regions = Regions.new
            @Regions.deserialize(params['Regions'])
          end
          unless params['EnvVars'].nil?
            @EnvVars = []
            params['EnvVars'].each do |i|
              projectenvvar_tmp = ProjectEnvVar.new
              projectenvvar_tmp.deserialize(i)
              @EnvVars << projectenvvar_tmp
            end
          end
          unless params['CustomDomains'].nil?
            @CustomDomains = []
            params['CustomDomains'].each do |i|
              customdomainitem_tmp = CustomDomainItem.new
              customdomainitem_tmp.deserialize(i)
              @CustomDomains << customdomainitem_tmp
            end
          end
          unless params['Deployment'].nil?
            @Deployment = ProjectDeployment.new
            @Deployment.deserialize(params['Deployment'])
          end
          @IsAgent = params['IsAgent']
          @AgentFramework = params['AgentFramework']
          @IsTld = params['IsTld']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          @BuildMachine = params['BuildMachine']
        end
      end

      # 项目最近一次部署
      class ProjectDeployment < TencentCloud::Common::AbstractModel
        # @param DeploymentId: <p>部署 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeploymentId: String
        # @param ProjectId: <p>项目 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param Status: <p>部署状态</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param BuildCost: <p>构建耗时，单位毫秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildCost: String
        # @param ViaMeta: <p>触发来源</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViaMeta: String
        # @param Env: <p>环境 slug</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Env: String
        # @param RepoBranch: <p>分支</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoBranch: String
        # @param RepoCommitHash: <p>提交哈希</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoCommitHash: String
        # @param RepoCommitMsg: <p>提交说明</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoCommitMsg: String
        # @param PreviewUrl: <p>预览地址</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreviewUrl: String
        # @param CoverUrl: <p>封面地址</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoverUrl: String
        # @param CreatedOn: <p>创建时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedOn: String
        # @param ModifiedOn: <p>更新时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedOn: String
        # @param DplRepoUrl: <p>本次部署使用的仓库地址</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DplRepoUrl: String

        attr_accessor :DeploymentId, :ProjectId, :Status, :BuildCost, :ViaMeta, :Env, :RepoBranch, :RepoCommitHash, :RepoCommitMsg, :PreviewUrl, :CoverUrl, :CreatedOn, :ModifiedOn, :DplRepoUrl

        def initialize(deploymentid=nil, projectid=nil, status=nil, buildcost=nil, viameta=nil, env=nil, repobranch=nil, repocommithash=nil, repocommitmsg=nil, previewurl=nil, coverurl=nil, createdon=nil, modifiedon=nil, dplrepourl=nil)
          @DeploymentId = deploymentid
          @ProjectId = projectid
          @Status = status
          @BuildCost = buildcost
          @ViaMeta = viameta
          @Env = env
          @RepoBranch = repobranch
          @RepoCommitHash = repocommithash
          @RepoCommitMsg = repocommitmsg
          @PreviewUrl = previewurl
          @CoverUrl = coverurl
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @DplRepoUrl = dplrepourl
        end

        def deserialize(params)
          @DeploymentId = params['DeploymentId']
          @ProjectId = params['ProjectId']
          @Status = params['Status']
          @BuildCost = params['BuildCost']
          @ViaMeta = params['ViaMeta']
          @Env = params['Env']
          @RepoBranch = params['RepoBranch']
          @RepoCommitHash = params['RepoCommitHash']
          @RepoCommitMsg = params['RepoCommitMsg']
          @PreviewUrl = params['PreviewUrl']
          @CoverUrl = params['CoverUrl']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          @DplRepoUrl = params['DplRepoUrl']
        end
      end

      # 项目列表里返回的环境变量，只有键和值
      class ProjectEnvVar < TencentCloud::Common::AbstractModel
        # @param Key: <p>变量名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: <p>变量值</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 项目列表过滤条件。同一条件的 Values 之间为或
      class ProjectFilter < TencentCloud::Common::AbstractModel
        # @param Name: <p>过滤字段。ProjectId、Name、Status、Provider</p>
        # @type Name: String
        # @param Values: <p>过滤值</p>
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

      # 项目部署地域
      class Regions < TencentCloud::Common::AbstractModel
        # @param Mainland: <p>中国大陆地域</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mainland: Array
        # @param Overseas: <p>海外地域</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Overseas: Array

        attr_accessor :Mainland, :Overseas

        def initialize(mainland=nil, overseas=nil)
          @Mainland = mainland
          @Overseas = overseas
        end

        def deserialize(params)
          @Mainland = params['Mainland']
          @Overseas = params['Overseas']
        end
      end

      # 开关配置
      class SwitchConfig < TencentCloud::Common::AbstractModel
        # @param Switch: <p>on 或 off</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 站点下的自定义域名
      class ZoneDomain < TencentCloud::Common::AbstractModel
        # @param Type: <p>Custom 或 Preset</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Domain: <p>域名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Status: <p>域名状态</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Env: <p>绑定的环境 slug，默认 Production</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Env: String
        # @param ZoneId: <p>站点 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: String
        # @param Area: <p>加速区域</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Area: String
        # @param Cname: <p>CNAME</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cname: String
        # @param MainDomain: <p>主域名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MainDomain: String
        # @param Ipv6: <p>IPv6</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6: :class:`Tencentcloud::Makers.v20261113.models.SwitchConfig`
        # @param Http2: <p>HTTP/2</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Http2: :class:`Tencentcloud::Makers.v20261113.models.SwitchConfig`
        # @param OcspStapling: <p>OCSP</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcspStapling: :class:`Tencentcloud::Makers.v20261113.models.SwitchConfig`
        # @param ForceRedirect: <p>强制 HTTPS</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForceRedirect: :class:`Tencentcloud::Makers.v20261113.models.ForceRedirectConfig`
        # @param Hsts: <p>HSTS</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hsts: :class:`Tencentcloud::Makers.v20261113.models.HstsConfig`
        # @param OwnershipVerification: <p>归属校验</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnershipVerification: :class:`Tencentcloud::Makers.v20261113.models.OwnershipVerification`

        attr_accessor :Type, :Domain, :Status, :Env, :ZoneId, :Area, :Cname, :MainDomain, :Ipv6, :Http2, :OcspStapling, :ForceRedirect, :Hsts, :OwnershipVerification

        def initialize(type=nil, domain=nil, status=nil, env=nil, zoneid=nil, area=nil, cname=nil, maindomain=nil, ipv6=nil, http2=nil, ocspstapling=nil, forceredirect=nil, hsts=nil, ownershipverification=nil)
          @Type = type
          @Domain = domain
          @Status = status
          @Env = env
          @ZoneId = zoneid
          @Area = area
          @Cname = cname
          @MainDomain = maindomain
          @Ipv6 = ipv6
          @Http2 = http2
          @OcspStapling = ocspstapling
          @ForceRedirect = forceredirect
          @Hsts = hsts
          @OwnershipVerification = ownershipverification
        end

        def deserialize(params)
          @Type = params['Type']
          @Domain = params['Domain']
          @Status = params['Status']
          @Env = params['Env']
          @ZoneId = params['ZoneId']
          @Area = params['Area']
          @Cname = params['Cname']
          @MainDomain = params['MainDomain']
          unless params['Ipv6'].nil?
            @Ipv6 = SwitchConfig.new
            @Ipv6.deserialize(params['Ipv6'])
          end
          unless params['Http2'].nil?
            @Http2 = SwitchConfig.new
            @Http2.deserialize(params['Http2'])
          end
          unless params['OcspStapling'].nil?
            @OcspStapling = SwitchConfig.new
            @OcspStapling.deserialize(params['OcspStapling'])
          end
          unless params['ForceRedirect'].nil?
            @ForceRedirect = ForceRedirectConfig.new
            @ForceRedirect.deserialize(params['ForceRedirect'])
          end
          unless params['Hsts'].nil?
            @Hsts = HstsConfig.new
            @Hsts.deserialize(params['Hsts'])
          end
          unless params['OwnershipVerification'].nil?
            @OwnershipVerification = OwnershipVerification.new
            @OwnershipVerification.deserialize(params['OwnershipVerification'])
          end
        end
      end

    end
  end
end

