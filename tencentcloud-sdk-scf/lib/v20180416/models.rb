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
  module Scf
    module V20180416
      # HTTP域名相关信息
      class AccessInfo < TencentCloud::Common::AbstractModel
        # @param Host: 域名
        # @type Host: String
        # @param Vip: VIP
        # @type Vip: String

        attr_accessor :Host, :Vip

        def initialize(host=nil, vip=nil)
          @Host = host
          @Vip = vip
        end

        def deserialize(params)
          @Host = params['Host']
          @Vip = params['Vip']
        end
      end

      # 函数的版本别名
      class Alias < TencentCloud::Common::AbstractModel
        # @param FunctionVersion: 别名指向的主版本
        # @type FunctionVersion: String
        # @param Name: 别名的名称
        # @type Name: String
        # @param RoutingConfig: 别名的路由信息
        # @type RoutingConfig: :class:`Tencentcloud::Scf.v20180416.models.RoutingConfig`
        # @param Description: 描述信息
        # @type Description: String
        # @param AddTime: 创建时间
        # @type AddTime: String
        # @param ModTime: 更新时间
        # @type ModTime: String

        attr_accessor :FunctionVersion, :Name, :RoutingConfig, :Description, :AddTime, :ModTime

        def initialize(functionversion=nil, name=nil, routingconfig=nil, description=nil, addtime=nil, modtime=nil)
          @FunctionVersion = functionversion
          @Name = name
          @RoutingConfig = routingconfig
          @Description = description
          @AddTime = addtime
          @ModTime = modtime
        end

        def deserialize(params)
          @FunctionVersion = params['FunctionVersion']
          @Name = params['Name']
          unless params['RoutingConfig'].nil?
            @RoutingConfig = RoutingConfig.new
            @RoutingConfig.deserialize(params['RoutingConfig'])
          end
          @Description = params['Description']
          @AddTime = params['AddTime']
          @ModTime = params['ModTime']
        end
      end

      # 异步事件
      class AsyncEvent < TencentCloud::Common::AbstractModel
        # @param InvokeRequestId: 调用请求id
        # @type InvokeRequestId: String
        # @param InvokeType: 调用类型
        # @type InvokeType: String
        # @param Qualifier: 函数版本
        # @type Qualifier: String
        # @param Status: 事件状态，RUNNING 表示运行中, FINISHED 表示调用成功, ABORTED 表示调用终止, FAILED 表示调用失败
        # @type Status: String
        # @param StartTime: 调用开始时间，格式: "%Y-%m-%d %H:%M:%S.%f"
        # @type StartTime: String
        # @param EndTime: 调用结束时间，格式: "%Y-%m-%d %H:%M:%S.%f"
        # @type EndTime: String

        attr_accessor :InvokeRequestId, :InvokeType, :Qualifier, :Status, :StartTime, :EndTime

        def initialize(invokerequestid=nil, invoketype=nil, qualifier=nil, status=nil, starttime=nil, endtime=nil)
          @InvokeRequestId = invokerequestid
          @InvokeType = invoketype
          @Qualifier = qualifier
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @InvokeRequestId = params['InvokeRequestId']
          @InvokeType = params['InvokeType']
          @Qualifier = params['Qualifier']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 异步事件状态
      class AsyncEventStatus < TencentCloud::Common::AbstractModel
        # @param Status: 异步事件状态，RUNNING 表示运行中, FINISHED 表示调用成功, ABORTED 表示调用终止, FAILED 表示调用失败。
        # @type Status: String
        # @param StatusCode: 请求状态码
        # @type StatusCode: Integer
        # @param InvokeRequestId: 异步执行请求 Id
        # @type InvokeRequestId: String

        attr_accessor :Status, :StatusCode, :InvokeRequestId

        def initialize(status=nil, statuscode=nil, invokerequestid=nil)
          @Status = status
          @StatusCode = statuscode
          @InvokeRequestId = invokerequestid
        end

        def deserialize(params)
          @Status = params['Status']
          @StatusCode = params['StatusCode']
          @InvokeRequestId = params['InvokeRequestId']
        end
      end

      # 函数的异步重试配置详情
      class AsyncTriggerConfig < TencentCloud::Common::AbstractModel
        # @param RetryConfig: 用户错误的异步重试重试配置
        # @type RetryConfig: Array
        # @param MsgTTL: 消息保留时间
        # @type MsgTTL: Integer

        attr_accessor :RetryConfig, :MsgTTL

        def initialize(retryconfig=nil, msgttl=nil)
          @RetryConfig = retryconfig
          @MsgTTL = msgttl
        end

        def deserialize(params)
          unless params['RetryConfig'].nil?
            @RetryConfig = []
            params['RetryConfig'].each do |i|
              retryconfig_tmp = RetryConfig.new
              retryconfig_tmp.deserialize(i)
              @RetryConfig << retryconfig_tmp
            end
          end
          @MsgTTL = params['MsgTTL']
        end
      end

      # 证书配置
      class CertConf < TencentCloud::Common::AbstractModel
        # @param CertificateId: ssl证书ID
        # @type CertificateId: String

        attr_accessor :CertificateId

        def initialize(certificateid=nil)
          @CertificateId = certificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
        end
      end

      # 文件系统(cfs)配置描述
      class CfsConfig < TencentCloud::Common::AbstractModel
        # @param CfsInsList: 文件系统信息列表
        # @type CfsInsList: Array

        attr_accessor :CfsInsList

        def initialize(cfsinslist=nil)
          @CfsInsList = cfsinslist
        end

        def deserialize(params)
          unless params['CfsInsList'].nil?
            @CfsInsList = []
            params['CfsInsList'].each do |i|
              cfsinsinfo_tmp = CfsInsInfo.new
              cfsinsinfo_tmp.deserialize(i)
              @CfsInsList << cfsinsinfo_tmp
            end
          end
        end
      end

      # 云函数关联的cfs配置信息
      class CfsInsInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户id
        # @type UserId: String
        # @param UserGroupId: 用户组id
        # @type UserGroupId: String
        # @param CfsId: 文件系统实例id
        # @type CfsId: String
        # @param MountInsId: 文件系统挂载点id
        # @type MountInsId: String
        # @param LocalMountDir: 本地挂载点
        # @type LocalMountDir: String
        # @param RemoteMountDir: 远程挂载点
        # @type RemoteMountDir: String
        # @param IpAddress: 文件系统ip，配置 cfs 时无需填写。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpAddress: String
        # @param MountVpcId: 文件系统所在的私有网络id，配置 cfs 时无需填写。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MountVpcId: String
        # @param MountSubnetId: 文件系统所在私有网络的子网id，配置 cfs 时无需填写。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MountSubnetId: String

        attr_accessor :UserId, :UserGroupId, :CfsId, :MountInsId, :LocalMountDir, :RemoteMountDir, :IpAddress, :MountVpcId, :MountSubnetId

        def initialize(userid=nil, usergroupid=nil, cfsid=nil, mountinsid=nil, localmountdir=nil, remotemountdir=nil, ipaddress=nil, mountvpcid=nil, mountsubnetid=nil)
          @UserId = userid
          @UserGroupId = usergroupid
          @CfsId = cfsid
          @MountInsId = mountinsid
          @LocalMountDir = localmountdir
          @RemoteMountDir = remotemountdir
          @IpAddress = ipaddress
          @MountVpcId = mountvpcid
          @MountSubnetId = mountsubnetid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserGroupId = params['UserGroupId']
          @CfsId = params['CfsId']
          @MountInsId = params['MountInsId']
          @LocalMountDir = params['LocalMountDir']
          @RemoteMountDir = params['RemoteMountDir']
          @IpAddress = params['IpAddress']
          @MountVpcId = params['MountVpcId']
          @MountSubnetId = params['MountSubnetId']
        end
      end

      # 函数代码
      class Code < TencentCloud::Common::AbstractModel
        # @param CosBucketName: 对象存储桶名称（填写存储桶名称自定义部分，不包含-appid）
        # @type CosBucketName: String
        # @param CosObjectName: 对象存储中代码包文件路径，以/开头
        # @type CosObjectName: String
        # @param ZipFile: 包含函数代码文件及其依赖项的 zip 格式文件，zip包大小上限为 50MB，使用该接口时要求将 zip 文件的内容转成 base64 编码
        # @type ZipFile: String
        # @param CosBucketRegion: 对象存储的地域，地域为北京时需要传入ap-beijing,北京一区时需要传递ap-beijing-1，其他的地域不需要传递。
        # @type CosBucketRegion: String
        # @param DemoId: 如果是通过Demo创建的话，需要传入DemoId
        # @type DemoId: String
        # @param TempCosObjectName: 如果是从TempCos创建的话，需要传入TempCosObjectName
        # @type TempCosObjectName: String
        # @param GitUrl: Git地址。该功能已下线。
        # @type GitUrl: String
        # @param GitUserName: Git用户名。该功能已下线。
        # @type GitUserName: String
        # @param GitPassword: Git密码。该功能已下线。
        # @type GitPassword: String
        # @param GitPasswordSecret: 加密后的Git密码，一般无需指定。该功能已下线。
        # @type GitPasswordSecret: String
        # @param GitBranch: Git分支。该功能已下线。
        # @type GitBranch: String
        # @param GitDirectory: 代码在Git仓库中的路径。该功能已下线。
        # @type GitDirectory: String
        # @param GitCommitId: 指定要拉取的版本。该功能已下线。
        # @type GitCommitId: String
        # @param GitUserNameSecret: 加密后的Git用户名，一般无需指定。该功能已下线。
        # @type GitUserNameSecret: String
        # @param ImageConfig: 镜像部署时配置TCR镜像信息
        # @type ImageConfig: :class:`Tencentcloud::Scf.v20180416.models.ImageConfig`

        attr_accessor :CosBucketName, :CosObjectName, :ZipFile, :CosBucketRegion, :DemoId, :TempCosObjectName, :GitUrl, :GitUserName, :GitPassword, :GitPasswordSecret, :GitBranch, :GitDirectory, :GitCommitId, :GitUserNameSecret, :ImageConfig

        def initialize(cosbucketname=nil, cosobjectname=nil, zipfile=nil, cosbucketregion=nil, demoid=nil, tempcosobjectname=nil, giturl=nil, gitusername=nil, gitpassword=nil, gitpasswordsecret=nil, gitbranch=nil, gitdirectory=nil, gitcommitid=nil, gitusernamesecret=nil, imageconfig=nil)
          @CosBucketName = cosbucketname
          @CosObjectName = cosobjectname
          @ZipFile = zipfile
          @CosBucketRegion = cosbucketregion
          @DemoId = demoid
          @TempCosObjectName = tempcosobjectname
          @GitUrl = giturl
          @GitUserName = gitusername
          @GitPassword = gitpassword
          @GitPasswordSecret = gitpasswordsecret
          @GitBranch = gitbranch
          @GitDirectory = gitdirectory
          @GitCommitId = gitcommitid
          @GitUserNameSecret = gitusernamesecret
          @ImageConfig = imageconfig
        end

        def deserialize(params)
          @CosBucketName = params['CosBucketName']
          @CosObjectName = params['CosObjectName']
          @ZipFile = params['ZipFile']
          @CosBucketRegion = params['CosBucketRegion']
          @DemoId = params['DemoId']
          @TempCosObjectName = params['TempCosObjectName']
          @GitUrl = params['GitUrl']
          @GitUserName = params['GitUserName']
          @GitPassword = params['GitPassword']
          @GitPasswordSecret = params['GitPasswordSecret']
          @GitBranch = params['GitBranch']
          @GitDirectory = params['GitDirectory']
          @GitCommitId = params['GitCommitId']
          @GitUserNameSecret = params['GitUserNameSecret']
          unless params['ImageConfig'].nil?
            @ImageConfig = ImageConfig.new
            @ImageConfig.deserialize(params['ImageConfig'])
          end
        end
      end

      # CopyFunction请求参数结构体
      class CopyFunctionRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 要复制的函数的名称
        # @type FunctionName: String
        # @param NewFunctionName: 新函数的名称
        # @type NewFunctionName: String
        # @param Namespace: 要复制的函数所在的命名空间，默认为default
        # @type Namespace: String
        # @param TargetNamespace: 将函数复制到的命名空间，默认为default
        # @type TargetNamespace: String
        # @param Description: 新函数的描述
        # @type Description: String
        # @param TargetRegion: 要将函数复制到的地域，不填则默认为当前地域
        # @type TargetRegion: String
        # @param Override: 如果目标Namespace下已有同名函数，是否覆盖，默认为否
        # （注意：如果选择覆盖，会导致同名函数被删除，请慎重操作）
        # TRUE：覆盖同名函数
        # FALSE：不覆盖同名函数
        # @type Override: Boolean
        # @param CopyConfiguration: 是否复制函数的属性，包括环境变量、内存、超时、函数描述、标签、VPC等，默认为是。
        # TRUE：复制函数配置
        # FALSE：不复制函数配置
        # @type CopyConfiguration: Boolean

        attr_accessor :FunctionName, :NewFunctionName, :Namespace, :TargetNamespace, :Description, :TargetRegion, :Override, :CopyConfiguration

        def initialize(functionname=nil, newfunctionname=nil, namespace=nil, targetnamespace=nil, description=nil, targetregion=nil, override=nil, copyconfiguration=nil)
          @FunctionName = functionname
          @NewFunctionName = newfunctionname
          @Namespace = namespace
          @TargetNamespace = targetnamespace
          @Description = description
          @TargetRegion = targetregion
          @Override = override
          @CopyConfiguration = copyconfiguration
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @NewFunctionName = params['NewFunctionName']
          @Namespace = params['Namespace']
          @TargetNamespace = params['TargetNamespace']
          @Description = params['Description']
          @TargetRegion = params['TargetRegion']
          @Override = params['Override']
          @CopyConfiguration = params['CopyConfiguration']
        end
      end

      # CopyFunction返回参数结构体
      class CopyFunctionResponse < TencentCloud::Common::AbstractModel
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

      # CreateAlias请求参数结构体
      class CreateAliasRequest < TencentCloud::Common::AbstractModel
        # @param Name: 别名的名称，在函数级别中唯一，只能包含字母、数字、'_'和‘-’，且必须以字母开头，长度限制为1-64
        # @type Name: String
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param FunctionVersion: 别名指向的主版本
        # @type FunctionVersion: String
        # @param Namespace: 函数所在的命名空间
        # @type Namespace: String
        # @param RoutingConfig: 别名的路由信息，需要为别名指定附加版本时，必须提供此参数；	  附加版本指的是：除主版本 FunctionVersion 外，为此别名再指定一个函数可正常使用的版本；   这里附加版本中的 Version 值 不能是别名指向的主版本；  要注意的是：如果想要某个版本的流量全部指向这个别名，不需配置此参数； 目前一个别名最多只能指定一个附加版本
        # @type RoutingConfig: :class:`Tencentcloud::Scf.v20180416.models.RoutingConfig`
        # @param Description: 别名的描述信息
        # @type Description: String

        attr_accessor :Name, :FunctionName, :FunctionVersion, :Namespace, :RoutingConfig, :Description

        def initialize(name=nil, functionname=nil, functionversion=nil, namespace=nil, routingconfig=nil, description=nil)
          @Name = name
          @FunctionName = functionname
          @FunctionVersion = functionversion
          @Namespace = namespace
          @RoutingConfig = routingconfig
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          @FunctionName = params['FunctionName']
          @FunctionVersion = params['FunctionVersion']
          @Namespace = params['Namespace']
          unless params['RoutingConfig'].nil?
            @RoutingConfig = RoutingConfig.new
            @RoutingConfig.deserialize(params['RoutingConfig'])
          end
          @Description = params['Description']
        end
      end

      # CreateAlias返回参数结构体
      class CreateAliasResponse < TencentCloud::Common::AbstractModel
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

      # CreateCustomDomain请求参数结构体
      class CreateCustomDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名，不支持泛域名
        # @type Domain: String
        # @param Protocol: 协议，取值范围：HTTP, HTTPS, HTTP&HTTPS
        # @type Protocol: String
        # @param EndpointsConfig: 路由配置
        # @type EndpointsConfig: Array
        # @param CertConfig: 证书配置信息，有使用HTTPS协议时候必须传
        # @type CertConfig: :class:`Tencentcloud::Scf.v20180416.models.CertConf`
        # @param WafConfig: web 应用防火墙配置
        # @type WafConfig: :class:`Tencentcloud::Scf.v20180416.models.WafConf`
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :Domain, :Protocol, :EndpointsConfig, :CertConfig, :WafConfig, :Tags

        def initialize(domain=nil, protocol=nil, endpointsconfig=nil, certconfig=nil, wafconfig=nil, tags=nil)
          @Domain = domain
          @Protocol = protocol
          @EndpointsConfig = endpointsconfig
          @CertConfig = certconfig
          @WafConfig = wafconfig
          @Tags = tags
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Protocol = params['Protocol']
          unless params['EndpointsConfig'].nil?
            @EndpointsConfig = []
            params['EndpointsConfig'].each do |i|
              endpointsconf_tmp = EndpointsConf.new
              endpointsconf_tmp.deserialize(i)
              @EndpointsConfig << endpointsconf_tmp
            end
          end
          unless params['CertConfig'].nil?
            @CertConfig = CertConf.new
            @CertConfig.deserialize(params['CertConfig'])
          end
          unless params['WafConfig'].nil?
            @WafConfig = WafConf.new
            @WafConfig.deserialize(params['WafConfig'])
          end
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

      # CreateCustomDomain返回参数结构体
      class CreateCustomDomainResponse < TencentCloud::Common::AbstractModel
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

      # CreateFunction请求参数结构体
      class CreateFunctionRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 创建的函数名称，函数名称支持26个英文字母大小写、数字、连接符和下划线，第一个字符只能以字母开头，最后一个字符不能为连接符或者下划线，名称长度2-60
        # @type FunctionName: String
        # @param Code: 函数代码. 注意：不能同时指定Cos、ZipFile或 DemoId。
        # @type Code: :class:`Tencentcloud::Scf.v20180416.models.Code`
        # @param Handler: 函数处理方法名称，名称格式支持 "文件名称.方法名称" 形式（java 名称格式 包名.类名::方法名），文件名称和函数名称之间以"."隔开，文件名称和函数名称要求以字母开始和结尾，中间允许插入字母、数字、下划线和连接符，文件名称和函数名字的长度要求是 2-60 个字符
        # @type Handler: String
        # @param Description: 函数描述,最大支持 1000 个英文字母、数字、空格、逗号、换行符和英文句号，支持中文
        # @type Description: String
        # @param MemorySize: 函数运行时内存大小，默认为 128M，可选范围 64、128MB-3072MB，并且以 128MB 为阶梯
        # @type MemorySize: Integer
        # @param Timeout: 函数最长执行时间，单位为秒，可选值范围 1-900 秒，默认为 3 秒
        # @type Timeout: Integer
        # @param Environment: 函数的环境变量
        # @type Environment: :class:`Tencentcloud::Scf.v20180416.models.Environment`
        # @param Runtime: 函数运行环境，默认Python2.7
        # 目前支持的运行环境：
        # - Python2.7
        # - Python3.6
        # - Python3.7
        # - Python3.9
        # - Python3.10
        # - Nodejs6.10
        # - Nodejs8.9
        # - Nodejs10.15
        # - Nodejs12.16
        # - Nodejs14.18
        # - Nodejs16.13
        # - Nodejs18.15
        # - Php5.6
        # - Php7(7.2版本)
        # - Php7.4
        # - Php8.0
        # - Go1
        # - Java8
        # - CustomRuntime
        # @type Runtime: String
        # @param VpcConfig: 函数的私有网络配置
        # @type VpcConfig: :class:`Tencentcloud::Scf.v20180416.models.VpcConfig`
        # @param Namespace: 函数所属命名空间
        # @type Namespace: String
        # @param Role: 函数绑定的角色
        # @type Role: String
        # @param InstallDependency: [在线依赖安装](https://cloud.tencent.com/document/product/583/37920)，TRUE 表示安装，默认值为 FALSE。仅支持 Node.js 函数。
        # @type InstallDependency: String
        # @param ClsLogsetId: 函数日志投递到的CLS LogsetID
        # @type ClsLogsetId: String
        # @param ClsTopicId: 函数日志投递到的CLS TopicID
        # @type ClsTopicId: String
        # @param Type: 函数类型，默认值为Event，创建触发器函数请填写Event，创建HTTP函数级服务请填写HTTP
        # @type Type: String
        # @param CodeSource: CodeSource 代码来源，支持ZipFile, Cos, Demo 其中之一
        # @type CodeSource: String
        # @param Layers: 函数要关联的Layer版本列表，Layer会按照在列表中顺序依次覆盖。
        # @type Layers: Array
        # @param DeadLetterConfig: 死信队列参数
        # @type DeadLetterConfig: :class:`Tencentcloud::Scf.v20180416.models.DeadLetterConfig`
        # @param PublicNetConfig: 公网访问配置
        # @type PublicNetConfig: :class:`Tencentcloud::Scf.v20180416.models.PublicNetConfigIn`
        # @param CfsConfig: 文件系统配置参数，用于云函数挂载文件系统
        # @type CfsConfig: :class:`Tencentcloud::Scf.v20180416.models.CfsConfig`
        # @param InitTimeout: 函数初始化超时时间，默认 65s，镜像部署函数默认 90s。
        # @type InitTimeout: Integer
        # @param Tags: 函数 Tag 参数，以键值对数组形式传入
        # @type Tags: Array
        # @param AsyncRunEnable: 是否开启异步属性，TRUE 为开启，FALSE为关闭
        # @type AsyncRunEnable: String
        # @param TraceEnable: 是否开启事件追踪，TRUE 为开启，FALSE为关闭
        # @type TraceEnable: String
        # @param AutoDeployClsTopicIndex: 是否自动创建cls索引，TRUE 为开启，FALSE为关闭
        # @type AutoDeployClsTopicIndex: String
        # @param AutoCreateClsTopic: 是否自动创建cls主题，TRUE 为开启，FALSE为关闭
        # @type AutoCreateClsTopic: String
        # @param ProtocolType: HTTP函数支持的访问协议。当前支持WebSockets协议，值为WS
        # @type ProtocolType: String
        # @param ProtocolParams: HTTP函数配置ProtocolType访问协议，当前协议可配置的参数
        # @type ProtocolParams: :class:`Tencentcloud::Scf.v20180416.models.ProtocolParams`
        # @param InstanceConcurrencyConfig: 单实例多并发配置。只支持Web函数。
        # @type InstanceConcurrencyConfig: :class:`Tencentcloud::Scf.v20180416.models.InstanceConcurrencyConfig`
        # @param DnsCache: 是否开启Dns缓存能力。只支持EVENT函数。默认为FALSE，TRUE 为开启，FALSE为关闭
        # @type DnsCache: String
        # @param IntranetConfig: 内网访问配置
        # @type IntranetConfig: :class:`Tencentcloud::Scf.v20180416.models.IntranetConfigIn`

        attr_accessor :FunctionName, :Code, :Handler, :Description, :MemorySize, :Timeout, :Environment, :Runtime, :VpcConfig, :Namespace, :Role, :InstallDependency, :ClsLogsetId, :ClsTopicId, :Type, :CodeSource, :Layers, :DeadLetterConfig, :PublicNetConfig, :CfsConfig, :InitTimeout, :Tags, :AsyncRunEnable, :TraceEnable, :AutoDeployClsTopicIndex, :AutoCreateClsTopic, :ProtocolType, :ProtocolParams, :InstanceConcurrencyConfig, :DnsCache, :IntranetConfig

        def initialize(functionname=nil, code=nil, handler=nil, description=nil, memorysize=nil, timeout=nil, environment=nil, runtime=nil, vpcconfig=nil, namespace=nil, role=nil, installdependency=nil, clslogsetid=nil, clstopicid=nil, type=nil, codesource=nil, layers=nil, deadletterconfig=nil, publicnetconfig=nil, cfsconfig=nil, inittimeout=nil, tags=nil, asyncrunenable=nil, traceenable=nil, autodeployclstopicindex=nil, autocreateclstopic=nil, protocoltype=nil, protocolparams=nil, instanceconcurrencyconfig=nil, dnscache=nil, intranetconfig=nil)
          @FunctionName = functionname
          @Code = code
          @Handler = handler
          @Description = description
          @MemorySize = memorysize
          @Timeout = timeout
          @Environment = environment
          @Runtime = runtime
          @VpcConfig = vpcconfig
          @Namespace = namespace
          @Role = role
          @InstallDependency = installdependency
          @ClsLogsetId = clslogsetid
          @ClsTopicId = clstopicid
          @Type = type
          @CodeSource = codesource
          @Layers = layers
          @DeadLetterConfig = deadletterconfig
          @PublicNetConfig = publicnetconfig
          @CfsConfig = cfsconfig
          @InitTimeout = inittimeout
          @Tags = tags
          @AsyncRunEnable = asyncrunenable
          @TraceEnable = traceenable
          @AutoDeployClsTopicIndex = autodeployclstopicindex
          @AutoCreateClsTopic = autocreateclstopic
          @ProtocolType = protocoltype
          @ProtocolParams = protocolparams
          @InstanceConcurrencyConfig = instanceconcurrencyconfig
          @DnsCache = dnscache
          @IntranetConfig = intranetconfig
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          unless params['Code'].nil?
            @Code = Code.new
            @Code.deserialize(params['Code'])
          end
          @Handler = params['Handler']
          @Description = params['Description']
          @MemorySize = params['MemorySize']
          @Timeout = params['Timeout']
          unless params['Environment'].nil?
            @Environment = Environment.new
            @Environment.deserialize(params['Environment'])
          end
          @Runtime = params['Runtime']
          unless params['VpcConfig'].nil?
            @VpcConfig = VpcConfig.new
            @VpcConfig.deserialize(params['VpcConfig'])
          end
          @Namespace = params['Namespace']
          @Role = params['Role']
          @InstallDependency = params['InstallDependency']
          @ClsLogsetId = params['ClsLogsetId']
          @ClsTopicId = params['ClsTopicId']
          @Type = params['Type']
          @CodeSource = params['CodeSource']
          unless params['Layers'].nil?
            @Layers = []
            params['Layers'].each do |i|
              layerversionsimple_tmp = LayerVersionSimple.new
              layerversionsimple_tmp.deserialize(i)
              @Layers << layerversionsimple_tmp
            end
          end
          unless params['DeadLetterConfig'].nil?
            @DeadLetterConfig = DeadLetterConfig.new
            @DeadLetterConfig.deserialize(params['DeadLetterConfig'])
          end
          unless params['PublicNetConfig'].nil?
            @PublicNetConfig = PublicNetConfigIn.new
            @PublicNetConfig.deserialize(params['PublicNetConfig'])
          end
          unless params['CfsConfig'].nil?
            @CfsConfig = CfsConfig.new
            @CfsConfig.deserialize(params['CfsConfig'])
          end
          @InitTimeout = params['InitTimeout']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @AsyncRunEnable = params['AsyncRunEnable']
          @TraceEnable = params['TraceEnable']
          @AutoDeployClsTopicIndex = params['AutoDeployClsTopicIndex']
          @AutoCreateClsTopic = params['AutoCreateClsTopic']
          @ProtocolType = params['ProtocolType']
          unless params['ProtocolParams'].nil?
            @ProtocolParams = ProtocolParams.new
            @ProtocolParams.deserialize(params['ProtocolParams'])
          end
          unless params['InstanceConcurrencyConfig'].nil?
            @InstanceConcurrencyConfig = InstanceConcurrencyConfig.new
            @InstanceConcurrencyConfig.deserialize(params['InstanceConcurrencyConfig'])
          end
          @DnsCache = params['DnsCache']
          unless params['IntranetConfig'].nil?
            @IntranetConfig = IntranetConfigIn.new
            @IntranetConfig.deserialize(params['IntranetConfig'])
          end
        end
      end

      # CreateFunction返回参数结构体
      class CreateFunctionResponse < TencentCloud::Common::AbstractModel
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

      # CreateNamespace请求参数结构体
      class CreateNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间名称
        # @type Namespace: String
        # @param Description: 命名空间描述
        # @type Description: String
        # @param ResourceEnv: 资源池配置
        # @type ResourceEnv: :class:`Tencentcloud::Scf.v20180416.models.NamespaceResourceEnv`

        attr_accessor :Namespace, :Description, :ResourceEnv

        def initialize(namespace=nil, description=nil, resourceenv=nil)
          @Namespace = namespace
          @Description = description
          @ResourceEnv = resourceenv
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @Description = params['Description']
          unless params['ResourceEnv'].nil?
            @ResourceEnv = NamespaceResourceEnv.new
            @ResourceEnv.deserialize(params['ResourceEnv'])
          end
        end
      end

      # CreateNamespace返回参数结构体
      class CreateNamespaceResponse < TencentCloud::Common::AbstractModel
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

      # CreateTrigger请求参数结构体
      class CreateTriggerRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 新建触发器绑定的函数名称
        # @type FunctionName: String
        # @param TriggerName: 新建触发器名称。如果是定时触发器，名称支持英文字母、数字、连接符和下划线，最长100个字符；如果是cos触发器，需要是对应cos存储桶适用于XML API的访问域名(例如:5401-5ff414-12345.cos.ap-shanghai.myqcloud.com);如果是其他触发器，见具体触发器绑定参数的说明
        # @type TriggerName: String
        # @param Type: 触发器类型，目前支持 cos 、cls 、 timer、 ckafka、http类型。创建函数 URL 请使用 http 类型，参考[创建函数 URL ](https://cloud.tencent.com/document/product/583/100227#33bbbda4-9131-48a6-ac37-ac62ffe01424)。创建 cls 触发器请参考[CLS 创建投递 SCF 任务](https://cloud.tencent.com/document/product/614/61096)。
        # @type Type: String
        # @param TriggerDesc: 触发器对应的参数，可见具体[触发器描述说明](https://cloud.tencent.com/document/product/583/39901)
        # @type TriggerDesc: String
        # @param Namespace: 函数的命名空间
        # @type Namespace: String
        # @param Qualifier: 触发器所生效的版本或别名，建议填写 [$DEFAULT](https://cloud.tencent.com/document/product/583/36149#.E9.BB.98.E8.AE.A4.E5.88.AB.E5.90.8D)方便后续进行版本的灰度发布，默认为 $LATEST。
        # @type Qualifier: String
        # @param Enable: 触发器的初始是能状态 OPEN表示开启 CLOSE表示关闭
        # @type Enable: String
        # @param CustomArgument: 用户自定义参数，仅支持timer触发器
        # @type CustomArgument: String
        # @param Description: 触发器描述
        # @type Description: String

        attr_accessor :FunctionName, :TriggerName, :Type, :TriggerDesc, :Namespace, :Qualifier, :Enable, :CustomArgument, :Description

        def initialize(functionname=nil, triggername=nil, type=nil, triggerdesc=nil, namespace=nil, qualifier=nil, enable=nil, customargument=nil, description=nil)
          @FunctionName = functionname
          @TriggerName = triggername
          @Type = type
          @TriggerDesc = triggerdesc
          @Namespace = namespace
          @Qualifier = qualifier
          @Enable = enable
          @CustomArgument = customargument
          @Description = description
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @TriggerName = params['TriggerName']
          @Type = params['Type']
          @TriggerDesc = params['TriggerDesc']
          @Namespace = params['Namespace']
          @Qualifier = params['Qualifier']
          @Enable = params['Enable']
          @CustomArgument = params['CustomArgument']
          @Description = params['Description']
        end
      end

      # CreateTrigger返回参数结构体
      class CreateTriggerResponse < TencentCloud::Common::AbstractModel
        # @param TriggerInfo: 触发器信息
        # @type TriggerInfo: :class:`Tencentcloud::Scf.v20180416.models.Trigger`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TriggerInfo, :RequestId

        def initialize(triggerinfo=nil, requestid=nil)
          @TriggerInfo = triggerinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TriggerInfo'].nil?
            @TriggerInfo = Trigger.new
            @TriggerInfo.deserialize(params['TriggerInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 死信队列参数
      class DeadLetterConfig < TencentCloud::Common::AbstractModel
        # @param Type: 死信队列模式
        # @type Type: String
        # @param Name: 死信队列名称
        # @type Name: String
        # @param FilterType: 死信队列主题模式的标签形式
        # @type FilterType: String

        attr_accessor :Type, :Name, :FilterType

        def initialize(type=nil, name=nil, filtertype=nil)
          @Type = type
          @Name = name
          @FilterType = filtertype
        end

        def deserialize(params)
          @Type = params['Type']
          @Name = params['Name']
          @FilterType = params['FilterType']
        end
      end

      # DeleteAlias请求参数结构体
      class DeleteAliasRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param Name: 别名的名称
        # @type Name: String
        # @param Namespace: 函数所在的命名空间
        # @type Namespace: String

        attr_accessor :FunctionName, :Name, :Namespace

        def initialize(functionname=nil, name=nil, namespace=nil)
          @FunctionName = functionname
          @Name = name
          @Namespace = namespace
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Name = params['Name']
          @Namespace = params['Namespace']
        end
      end

      # DeleteAlias返回参数结构体
      class DeleteAliasResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCustomDomain请求参数结构体
      class DeleteCustomDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String

        attr_accessor :Domain

        def initialize(domain=nil)
          @Domain = domain
        end

        def deserialize(params)
          @Domain = params['Domain']
        end
      end

      # DeleteCustomDomain返回参数结构体
      class DeleteCustomDomainResponse < TencentCloud::Common::AbstractModel
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

      # DeleteFunction请求参数结构体
      class DeleteFunctionRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 要删除的函数名称
        # @type FunctionName: String
        # @param Namespace: 函数所属命名空间
        # @type Namespace: String
        # @param Qualifier: 填写需要删除的版本号，不填默认删除函数下全部版本。
        # @type Qualifier: String

        attr_accessor :FunctionName, :Namespace, :Qualifier

        def initialize(functionname=nil, namespace=nil, qualifier=nil)
          @FunctionName = functionname
          @Namespace = namespace
          @Qualifier = qualifier
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Namespace = params['Namespace']
          @Qualifier = params['Qualifier']
        end
      end

      # DeleteFunction返回参数结构体
      class DeleteFunctionResponse < TencentCloud::Common::AbstractModel
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

      # DeleteFunctionVersion请求参数结构体
      class DeleteFunctionVersionRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 要删除的函数名称
        # @type FunctionName: String
        # @param Qualifier: 填写需要删除的版本号
        # @type Qualifier: String
        # @param Namespace: 函数所属命名空间
        # @type Namespace: String
        # @param ForceDelete: 强制删除标记，传true会直接删除容器，并强制关闭还在执行中的函数
        # @type ForceDelete: String

        attr_accessor :FunctionName, :Qualifier, :Namespace, :ForceDelete

        def initialize(functionname=nil, qualifier=nil, namespace=nil, forcedelete=nil)
          @FunctionName = functionname
          @Qualifier = qualifier
          @Namespace = namespace
          @ForceDelete = forcedelete
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Qualifier = params['Qualifier']
          @Namespace = params['Namespace']
          @ForceDelete = params['ForceDelete']
        end
      end

      # DeleteFunctionVersion返回参数结构体
      class DeleteFunctionVersionResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLayerVersion请求参数结构体
      class DeleteLayerVersionRequest < TencentCloud::Common::AbstractModel
        # @param LayerName: 层名称
        # @type LayerName: String
        # @param LayerVersion: 版本号
        # @type LayerVersion: Integer

        attr_accessor :LayerName, :LayerVersion

        def initialize(layername=nil, layerversion=nil)
          @LayerName = layername
          @LayerVersion = layerversion
        end

        def deserialize(params)
          @LayerName = params['LayerName']
          @LayerVersion = params['LayerVersion']
        end
      end

      # DeleteLayerVersion返回参数结构体
      class DeleteLayerVersionResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNamespace请求参数结构体
      class DeleteNamespaceRequest < TencentCloud::Common::AbstractModel
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

      # DeleteNamespace返回参数结构体
      class DeleteNamespaceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteProvisionedConcurrencyConfig请求参数结构体
      class DeleteProvisionedConcurrencyConfigRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 需要删除预置并发的函数的名称
        # @type FunctionName: String
        # @param Qualifier: 函数的版本号
        # @type Qualifier: String
        # @param Namespace: 函数所属命名空间，默认为default
        # @type Namespace: String

        attr_accessor :FunctionName, :Qualifier, :Namespace

        def initialize(functionname=nil, qualifier=nil, namespace=nil)
          @FunctionName = functionname
          @Qualifier = qualifier
          @Namespace = namespace
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Qualifier = params['Qualifier']
          @Namespace = params['Namespace']
        end
      end

      # DeleteProvisionedConcurrencyConfig返回参数结构体
      class DeleteProvisionedConcurrencyConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeleteReservedConcurrencyConfig请求参数结构体
      class DeleteReservedConcurrencyConfigRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 需要删除最大独占配额的函数的名称
        # @type FunctionName: String
        # @param Namespace: 函数所属命名空间，默认为default
        # @type Namespace: String

        attr_accessor :FunctionName, :Namespace

        def initialize(functionname=nil, namespace=nil)
          @FunctionName = functionname
          @Namespace = namespace
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Namespace = params['Namespace']
        end
      end

      # DeleteReservedConcurrencyConfig返回参数结构体
      class DeleteReservedConcurrencyConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTrigger请求参数结构体
      class DeleteTriggerRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数的名称
        # @type FunctionName: String
        # @param TriggerName: 要删除的触发器名称
        # @type TriggerName: String
        # @param Type: 要删除的触发器类型，目前只支持  timer、ckafka 、apigw 、cls 、cos 、cmq 、http 类型
        # @type Type: String
        # @param Namespace: 函数所属命名空间
        # @type Namespace: String
        # @param TriggerDesc: 如果删除的触发器类型为 COS 触发器，该字段为必填值，存放 JSON 格式的数据 {"event":"cos:ObjectCreated:*"}，数据内容和 SetTrigger 接口中该字段的格式相同；如果删除的触发器类型为定时触发器或 CMQ 触发器，可以不指定该字段
        # @type TriggerDesc: String
        # @param Qualifier: 要删除的触发器实际所指向的版本或别名，默认值为 $LATEST
        # @type Qualifier: String

        attr_accessor :FunctionName, :TriggerName, :Type, :Namespace, :TriggerDesc, :Qualifier

        def initialize(functionname=nil, triggername=nil, type=nil, namespace=nil, triggerdesc=nil, qualifier=nil)
          @FunctionName = functionname
          @TriggerName = triggername
          @Type = type
          @Namespace = namespace
          @TriggerDesc = triggerdesc
          @Qualifier = qualifier
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @TriggerName = params['TriggerName']
          @Type = params['Type']
          @Namespace = params['Namespace']
          @TriggerDesc = params['TriggerDesc']
          @Qualifier = params['Qualifier']
        end
      end

      # DeleteTrigger返回参数结构体
      class DeleteTriggerResponse < TencentCloud::Common::AbstractModel
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

      # 云函数自定义域名详情
      class DomainInfo < TencentCloud::Common::AbstractModel
        # @param Domain: 域名，不支持泛域名
        # @type Domain: String
        # @param Protocol: 协议，取值范围：HTTP, HTTPS, HTTP&HTTPS
        # @type Protocol: String
        # @param EndpointsConfig: 路由配置信息
        # @type EndpointsConfig: Array
        # @param CertConfig: 证书配置信息，HTTPS协议必传路由配置
        # @type CertConfig: :class:`Tencentcloud::Scf.v20180416.models.CertConf`
        # @param WafConfig: web 应用防火墙配置
        # @type WafConfig: :class:`Tencentcloud::Scf.v20180416.models.WafConf`
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :Domain, :Protocol, :EndpointsConfig, :CertConfig, :WafConfig, :Tags

        def initialize(domain=nil, protocol=nil, endpointsconfig=nil, certconfig=nil, wafconfig=nil, tags=nil)
          @Domain = domain
          @Protocol = protocol
          @EndpointsConfig = endpointsconfig
          @CertConfig = certconfig
          @WafConfig = wafconfig
          @Tags = tags
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Protocol = params['Protocol']
          unless params['EndpointsConfig'].nil?
            @EndpointsConfig = []
            params['EndpointsConfig'].each do |i|
              endpointsconf_tmp = EndpointsConf.new
              endpointsconf_tmp.deserialize(i)
              @EndpointsConfig << endpointsconf_tmp
            end
          end
          unless params['CertConfig'].nil?
            @CertConfig = CertConf.new
            @CertConfig.deserialize(params['CertConfig'])
          end
          unless params['WafConfig'].nil?
            @WafConfig = WafConf.new
            @WafConfig.deserialize(params['WafConfig'])
          end
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

      # 公网访问固定ip配置
      class EipConfigIn < TencentCloud::Common::AbstractModel
        # @param EipStatus: Eip开启状态，取值['ENABLE','DISABLE']
        # @type EipStatus: String

        attr_accessor :EipStatus

        def initialize(eipstatus=nil)
          @EipStatus = eipstatus
        end

        def deserialize(params)
          @EipStatus = params['EipStatus']
        end
      end

      # 公网访问固定ip配置
      class EipConfigOut < TencentCloud::Common::AbstractModel
        # @param EipStatus: 是否是固定IP，["ENABLE","DISABLE"]
        # @type EipStatus: String
        # @param EipAddress: IP列表
        # @type EipAddress: Array

        attr_accessor :EipStatus, :EipAddress

        def initialize(eipstatus=nil, eipaddress=nil)
          @EipStatus = eipstatus
          @EipAddress = eipaddress
        end

        def deserialize(params)
          @EipStatus = params['EipStatus']
          @EipAddress = params['EipAddress']
        end
      end

      # EipOutConfig
      class EipOutConfig < TencentCloud::Common::AbstractModel
        # @param EipFixed: 是否是固定IP，["TRUE","FALSE"]
        # @type EipFixed: String
        # @param Eips: IP列表
        # @type Eips: Array

        attr_accessor :EipFixed, :Eips

        def initialize(eipfixed=nil, eips=nil)
          @EipFixed = eipfixed
          @Eips = eips
        end

        def deserialize(params)
          @EipFixed = params['EipFixed']
          @Eips = params['Eips']
        end
      end

      # 后端路由配置信息
      class EndpointsConf < TencentCloud::Common::AbstractModel
        # @param Namespace: 函数命名空间
        # @type Namespace: String
        # @param FunctionName: 函数名
        # @type FunctionName: String
        # @param Qualifier: 函数别名或版本
        # @type Qualifier: String
        # @param PathMatch: 路径,取值规范：/，/*，/xxx，/xxx/a，/xxx/*"
        # @type PathMatch: String
        # @param PathRewrite: 路径重写策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathRewrite: Array

        attr_accessor :Namespace, :FunctionName, :Qualifier, :PathMatch, :PathRewrite

        def initialize(namespace=nil, functionname=nil, qualifier=nil, pathmatch=nil, pathrewrite=nil)
          @Namespace = namespace
          @FunctionName = functionname
          @Qualifier = qualifier
          @PathMatch = pathmatch
          @PathRewrite = pathrewrite
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @FunctionName = params['FunctionName']
          @Qualifier = params['Qualifier']
          @PathMatch = params['PathMatch']
          unless params['PathRewrite'].nil?
            @PathRewrite = []
            params['PathRewrite'].each do |i|
              pathrewriterule_tmp = PathRewriteRule.new
              pathrewriterule_tmp.deserialize(i)
              @PathRewrite << pathrewriterule_tmp
            end
          end
        end
      end

      # 函数的环境变量参数
      class Environment < TencentCloud::Common::AbstractModel
        # @param Variables: 环境变量数组
        # @type Variables: Array

        attr_accessor :Variables

        def initialize(variables=nil)
          @Variables = variables
        end

        def deserialize(params)
          unless params['Variables'].nil?
            @Variables = []
            params['Variables'].each do |i|
              variable_tmp = Variable.new
              variable_tmp.deserialize(i)
              @Variables << variable_tmp
            end
          end
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
      # 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段。过滤条件数量限制为10。
        # Name可选值：VpcId, SubnetId, ClsTopicId, ClsLogsetId, Role, CfsId, CfsMountInsId, Eip；Values 长度限制为1。
        # Name可选值：Status, Runtime, FunctionType, PublicNetStatus, AsyncRunEnable, TraceEnable；Values 长度限制为20。
        # 当 Name = Runtime 时，CustomImage 表示过滤镜像类型函数。
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

      # 函数列表
      class Function < TencentCloud::Common::AbstractModel
        # @param ModTime: 修改时间
        # @type ModTime: String
        # @param AddTime: 创建时间
        # @type AddTime: String
        # @param Runtime: 运行时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Runtime: String
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param FunctionId: 函数ID
        # @type FunctionId: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Status: 函数状态，状态值及流转[参考此处](https://cloud.tencent.com/document/product/583/17244)
        # @type Status: String
        # @param StatusDesc: 函数状态详情
        # @type StatusDesc: String
        # @param Description: 函数描述
        # @type Description: String
        # @param Tags: 函数标签
        # @type Tags: Array
        # @param Type: 函数类型，取值为 HTTP 或者 Event
        # @type Type: String
        # @param StatusReasons: 函数状态失败原因
        # @type StatusReasons: Array
        # @param TotalProvisionedConcurrencyMem: 函数所有版本预置并发内存总和
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalProvisionedConcurrencyMem: Integer
        # @param ReservedConcurrencyMem: 函数并发保留内存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedConcurrencyMem: Integer
        # @param AsyncRunEnable: 函数异步属性，取值 TRUE 或者 FALSE
        # @type AsyncRunEnable: String
        # @param TraceEnable: 异步函数是否开启调用追踪，取值 TRUE 或者 FALSE
        # @type TraceEnable: String

        attr_accessor :ModTime, :AddTime, :Runtime, :FunctionName, :FunctionId, :Namespace, :Status, :StatusDesc, :Description, :Tags, :Type, :StatusReasons, :TotalProvisionedConcurrencyMem, :ReservedConcurrencyMem, :AsyncRunEnable, :TraceEnable

        def initialize(modtime=nil, addtime=nil, runtime=nil, functionname=nil, functionid=nil, namespace=nil, status=nil, statusdesc=nil, description=nil, tags=nil, type=nil, statusreasons=nil, totalprovisionedconcurrencymem=nil, reservedconcurrencymem=nil, asyncrunenable=nil, traceenable=nil)
          @ModTime = modtime
          @AddTime = addtime
          @Runtime = runtime
          @FunctionName = functionname
          @FunctionId = functionid
          @Namespace = namespace
          @Status = status
          @StatusDesc = statusdesc
          @Description = description
          @Tags = tags
          @Type = type
          @StatusReasons = statusreasons
          @TotalProvisionedConcurrencyMem = totalprovisionedconcurrencymem
          @ReservedConcurrencyMem = reservedconcurrencymem
          @AsyncRunEnable = asyncrunenable
          @TraceEnable = traceenable
        end

        def deserialize(params)
          @ModTime = params['ModTime']
          @AddTime = params['AddTime']
          @Runtime = params['Runtime']
          @FunctionName = params['FunctionName']
          @FunctionId = params['FunctionId']
          @Namespace = params['Namespace']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @Description = params['Description']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Type = params['Type']
          unless params['StatusReasons'].nil?
            @StatusReasons = []
            params['StatusReasons'].each do |i|
              statusreason_tmp = StatusReason.new
              statusreason_tmp.deserialize(i)
              @StatusReasons << statusreason_tmp
            end
          end
          @TotalProvisionedConcurrencyMem = params['TotalProvisionedConcurrencyMem']
          @ReservedConcurrencyMem = params['ReservedConcurrencyMem']
          @AsyncRunEnable = params['AsyncRunEnable']
          @TraceEnable = params['TraceEnable']
        end
      end

      # 日志信息
      class FunctionLog < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数的名称
        # @type FunctionName: String
        # @param RetMsg: 函数执行完成后的返回值
        # @type RetMsg: String
        # @param RequestId: 执行该函数对应的requestId
        # @type RequestId: String
        # @param StartTime: 函数开始执行时的时间点
        # @type StartTime: String
        # @param RetCode: 函数执行结果，如果是 0 表示执行成功，2表示函数运行中，3表示函数执行中断，其他值表示失败
        # @type RetCode: Integer
        # @param InvokeFinished: 函数调用是否结束，如果是 1 表示执行结束，其他值表示调用异常
        # @type InvokeFinished: Integer
        # @param Duration: 函数执行耗时，单位为 ms
        # @type Duration: Float
        # @param BillDuration: 函数计费时间，根据 duration 向上取最近的 100ms，单位为ms
        # @type BillDuration: Integer
        # @param MemUsage: 函数执行时消耗实际内存大小，单位为 Byte
        # @type MemUsage: Integer
        # @param Log: 函数执行过程中的日志输出
        # @type Log: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Source: 日志来源
        # @type Source: String
        # @param RetryNum: 重试次数
        # @type RetryNum: Integer

        attr_accessor :FunctionName, :RetMsg, :RequestId, :StartTime, :RetCode, :InvokeFinished, :Duration, :BillDuration, :MemUsage, :Log, :Level, :Source, :RetryNum
        extend Gem::Deprecate
        deprecate :Level, :none, 2026, 1
        deprecate :Level=, :none, 2026, 1
        deprecate :Source, :none, 2026, 1
        deprecate :Source=, :none, 2026, 1

        def initialize(functionname=nil, retmsg=nil, requestid=nil, starttime=nil, retcode=nil, invokefinished=nil, duration=nil, billduration=nil, memusage=nil, log=nil, level=nil, source=nil, retrynum=nil)
          @FunctionName = functionname
          @RetMsg = retmsg
          @RequestId = requestid
          @StartTime = starttime
          @RetCode = retcode
          @InvokeFinished = invokefinished
          @Duration = duration
          @BillDuration = billduration
          @MemUsage = memusage
          @Log = log
          @Level = level
          @Source = source
          @RetryNum = retrynum
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @RetMsg = params['RetMsg']
          @RequestId = params['RequestId']
          @StartTime = params['StartTime']
          @RetCode = params['RetCode']
          @InvokeFinished = params['InvokeFinished']
          @Duration = params['Duration']
          @BillDuration = params['BillDuration']
          @MemUsage = params['MemUsage']
          @Log = params['Log']
          @Level = params['Level']
          @Source = params['Source']
          @RetryNum = params['RetryNum']
        end
      end

      # 函数版本信息
      class FunctionVersion < TencentCloud::Common::AbstractModel
        # @param Version: 函数版本名称
        # @type Version: String
        # @param Description: 版本描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param AddTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddTime: String
        # @param ModTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModTime: String
        # @param Status: 版本状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :Version, :Description, :AddTime, :ModTime, :Status

        def initialize(version=nil, description=nil, addtime=nil, modtime=nil, status=nil)
          @Version = version
          @Description = description
          @AddTime = addtime
          @ModTime = modtime
          @Status = status
        end

        def deserialize(params)
          @Version = params['Version']
          @Description = params['Description']
          @AddTime = params['AddTime']
          @ModTime = params['ModTime']
          @Status = params['Status']
        end
      end

      # GetAccount请求参数结构体
      class GetAccountRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetAccount返回参数结构体
      class GetAccountResponse < TencentCloud::Common::AbstractModel
        # @param AccountUsage: 命名空间已使用的信息
        # @type AccountUsage: :class:`Tencentcloud::Scf.v20180416.models.UsageInfo`
        # @param AccountLimit: 命名空间限制的信息
        # @type AccountLimit: :class:`Tencentcloud::Scf.v20180416.models.LimitsInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccountUsage, :AccountLimit, :RequestId

        def initialize(accountusage=nil, accountlimit=nil, requestid=nil)
          @AccountUsage = accountusage
          @AccountLimit = accountlimit
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccountUsage'].nil?
            @AccountUsage = UsageInfo.new
            @AccountUsage.deserialize(params['AccountUsage'])
          end
          unless params['AccountLimit'].nil?
            @AccountLimit = LimitsInfo.new
            @AccountLimit.deserialize(params['AccountLimit'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetAlias请求参数结构体
      class GetAliasRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param Name: 别名的名称
        # @type Name: String
        # @param Namespace: 函数所在的命名空间
        # @type Namespace: String

        attr_accessor :FunctionName, :Name, :Namespace

        def initialize(functionname=nil, name=nil, namespace=nil)
          @FunctionName = functionname
          @Name = name
          @Namespace = namespace
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Name = params['Name']
          @Namespace = params['Namespace']
        end
      end

      # GetAlias返回参数结构体
      class GetAliasResponse < TencentCloud::Common::AbstractModel
        # @param FunctionVersion: 别名指向的主版本
        # @type FunctionVersion: String
        # @param Name: 别名的名称
        # @type Name: String
        # @param RoutingConfig: 别名的路由信息
        # @type RoutingConfig: :class:`Tencentcloud::Scf.v20180416.models.RoutingConfig`
        # @param Description: 别名的描述
        # @type Description: String
        # @param AddTime: 创建时间
        # @type AddTime: String
        # @param ModTime: 更新时间
        # @type ModTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FunctionVersion, :Name, :RoutingConfig, :Description, :AddTime, :ModTime, :RequestId

        def initialize(functionversion=nil, name=nil, routingconfig=nil, description=nil, addtime=nil, modtime=nil, requestid=nil)
          @FunctionVersion = functionversion
          @Name = name
          @RoutingConfig = routingconfig
          @Description = description
          @AddTime = addtime
          @ModTime = modtime
          @RequestId = requestid
        end

        def deserialize(params)
          @FunctionVersion = params['FunctionVersion']
          @Name = params['Name']
          unless params['RoutingConfig'].nil?
            @RoutingConfig = RoutingConfig.new
            @RoutingConfig.deserialize(params['RoutingConfig'])
          end
          @Description = params['Description']
          @AddTime = params['AddTime']
          @ModTime = params['ModTime']
          @RequestId = params['RequestId']
        end
      end

      # GetAsyncEventStatus请求参数结构体
      class GetAsyncEventStatusRequest < TencentCloud::Common::AbstractModel
        # @param InvokeRequestId: 异步执行请求 id
        # @type InvokeRequestId: String

        attr_accessor :InvokeRequestId

        def initialize(invokerequestid=nil)
          @InvokeRequestId = invokerequestid
        end

        def deserialize(params)
          @InvokeRequestId = params['InvokeRequestId']
        end
      end

      # GetAsyncEventStatus返回参数结构体
      class GetAsyncEventStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 异步事件状态
        # @type Result: :class:`Tencentcloud::Scf.v20180416.models.AsyncEventStatus`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = AsyncEventStatus.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetCustomDomain请求参数结构体
      class GetCustomDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String

        attr_accessor :Domain

        def initialize(domain=nil)
          @Domain = domain
        end

        def deserialize(params)
          @Domain = params['Domain']
        end
      end

      # GetCustomDomain返回参数结构体
      class GetCustomDomainResponse < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param EndpointsConfig: 路由配置
        # @type EndpointsConfig: Array
        # @param CertConfig: 证书配置信息
        # @type CertConfig: :class:`Tencentcloud::Scf.v20180416.models.CertConf`
        # @param WafConfig: web 应用防火墙配置
        # @type WafConfig: :class:`Tencentcloud::Scf.v20180416.models.WafConf`
        # @param Tags: 标签
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Domain, :Protocol, :EndpointsConfig, :CertConfig, :WafConfig, :Tags, :RequestId

        def initialize(domain=nil, protocol=nil, endpointsconfig=nil, certconfig=nil, wafconfig=nil, tags=nil, requestid=nil)
          @Domain = domain
          @Protocol = protocol
          @EndpointsConfig = endpointsconfig
          @CertConfig = certconfig
          @WafConfig = wafconfig
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Protocol = params['Protocol']
          unless params['EndpointsConfig'].nil?
            @EndpointsConfig = []
            params['EndpointsConfig'].each do |i|
              endpointsconf_tmp = EndpointsConf.new
              endpointsconf_tmp.deserialize(i)
              @EndpointsConfig << endpointsconf_tmp
            end
          end
          unless params['CertConfig'].nil?
            @CertConfig = CertConf.new
            @CertConfig.deserialize(params['CertConfig'])
          end
          unless params['WafConfig'].nil?
            @WafConfig = WafConf.new
            @WafConfig.deserialize(params['WafConfig'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetFunctionAddress请求参数结构体
      class GetFunctionAddressRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数的名称
        # @type FunctionName: String
        # @param Qualifier: 函数的版本
        # @type Qualifier: String
        # @param Namespace: 函数的命名空间
        # @type Namespace: String

        attr_accessor :FunctionName, :Qualifier, :Namespace

        def initialize(functionname=nil, qualifier=nil, namespace=nil)
          @FunctionName = functionname
          @Qualifier = qualifier
          @Namespace = namespace
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Qualifier = params['Qualifier']
          @Namespace = params['Namespace']
        end
      end

      # GetFunctionAddress返回参数结构体
      class GetFunctionAddressResponse < TencentCloud::Common::AbstractModel
        # @param Url: 函数的Cos地址
        # @type Url: String
        # @param CodeSha256: 函数的SHA256编码
        # @type CodeSha256: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :CodeSha256, :RequestId

        def initialize(url=nil, codesha256=nil, requestid=nil)
          @Url = url
          @CodeSha256 = codesha256
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @CodeSha256 = params['CodeSha256']
          @RequestId = params['RequestId']
        end
      end

      # GetFunctionEventInvokeConfig请求参数结构体
      class GetFunctionEventInvokeConfigRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param Namespace: 函数所属命名空间，默认为default
        # @type Namespace: String
        # @param Qualifier: 函数版本，默认为$LATEST
        # @type Qualifier: String

        attr_accessor :FunctionName, :Namespace, :Qualifier

        def initialize(functionname=nil, namespace=nil, qualifier=nil)
          @FunctionName = functionname
          @Namespace = namespace
          @Qualifier = qualifier
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Namespace = params['Namespace']
          @Qualifier = params['Qualifier']
        end
      end

      # GetFunctionEventInvokeConfig返回参数结构体
      class GetFunctionEventInvokeConfigResponse < TencentCloud::Common::AbstractModel
        # @param AsyncTriggerConfig: 异步重试配置信息
        # @type AsyncTriggerConfig: :class:`Tencentcloud::Scf.v20180416.models.AsyncTriggerConfig`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncTriggerConfig, :RequestId

        def initialize(asynctriggerconfig=nil, requestid=nil)
          @AsyncTriggerConfig = asynctriggerconfig
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AsyncTriggerConfig'].nil?
            @AsyncTriggerConfig = AsyncTriggerConfig.new
            @AsyncTriggerConfig.deserialize(params['AsyncTriggerConfig'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetFunctionLogs请求参数结构体
      class GetFunctionLogsRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数的名称。
        # - 为保证[获取函数运行日志](https://cloud.tencent.com/document/product/583/18583)接口`GetFunctionLogs`兼容性，输入参数`FunctionName`仍为非必填项，但建议填写该参数，否则可能导致日志获取失败。
        # - 函数关联日志服务后，建议使用[日志服务](https://cloud.tencent.com/document/product/614/16875)相关接口以获得最佳日志检索体验。
        # @type FunctionName: String
        # @param Offset: 数据的偏移量，Offset+Limit不能大于10000
        # @type Offset: Integer
        # @param Limit: 返回数据的长度，Offset+Limit不能大于10000
        # @type Limit: Integer
        # @param Order: 以升序还是降序的方式对日志进行排序，可选值 desc和 asc
        # @type Order: String
        # @param OrderBy: 根据某个字段排序日志,支持以下字段：function_name, duration, mem_usage, start_time
        # @type OrderBy: String
        # @param Filter: 日志过滤条件。可用来区分正确和错误日志，filter.RetCode=not0 表示只返回错误日志，filter.RetCode=is0 表示只返回正确日志，不传，则返回所有日志
        # @type Filter: :class:`Tencentcloud::Scf.v20180416.models.LogFilter`
        # @param Namespace: 函数的命名空间
        # @type Namespace: String
        # @param Qualifier: 函数的版本
        # @type Qualifier: String
        # @param FunctionRequestId: 执行该函数对应的requestId
        # @type FunctionRequestId: String
        # @param StartTime: 查询的具体日期，例如：2017-05-16 20:00:00，只能与endtime相差一天之内
        # @type StartTime: String
        # @param EndTime: 查询的具体日期，例如：2017-05-16 20:59:59，只能与startTime相差一天之内
        # @type EndTime: String
        # @param SearchContext: 该字段已下线
        # @type SearchContext: :class:`Tencentcloud::Scf.v20180416.models.LogSearchContext`

        attr_accessor :FunctionName, :Offset, :Limit, :Order, :OrderBy, :Filter, :Namespace, :Qualifier, :FunctionRequestId, :StartTime, :EndTime, :SearchContext

        def initialize(functionname=nil, offset=nil, limit=nil, order=nil, orderby=nil, filter=nil, namespace=nil, qualifier=nil, functionrequestid=nil, starttime=nil, endtime=nil, searchcontext=nil)
          @FunctionName = functionname
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderBy = orderby
          @Filter = filter
          @Namespace = namespace
          @Qualifier = qualifier
          @FunctionRequestId = functionrequestid
          @StartTime = starttime
          @EndTime = endtime
          @SearchContext = searchcontext
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderBy = params['OrderBy']
          unless params['Filter'].nil?
            @Filter = LogFilter.new
            @Filter.deserialize(params['Filter'])
          end
          @Namespace = params['Namespace']
          @Qualifier = params['Qualifier']
          @FunctionRequestId = params['FunctionRequestId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['SearchContext'].nil?
            @SearchContext = LogSearchContext.new
            @SearchContext.deserialize(params['SearchContext'])
          end
        end
      end

      # GetFunctionLogs返回参数结构体
      class GetFunctionLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 函数日志的总数
        # @type TotalCount: Integer
        # @param Data: 函数日志信息
        # @type Data: Array
        # @param SearchContext: 该字段已下线
        # @type SearchContext: :class:`Tencentcloud::Scf.v20180416.models.LogSearchContext`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :SearchContext, :RequestId

        def initialize(totalcount=nil, data=nil, searchcontext=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @SearchContext = searchcontext
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              functionlog_tmp = FunctionLog.new
              functionlog_tmp.deserialize(i)
              @Data << functionlog_tmp
            end
          end
          unless params['SearchContext'].nil?
            @SearchContext = LogSearchContext.new
            @SearchContext.deserialize(params['SearchContext'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetFunction请求参数结构体
      class GetFunctionRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 需要获取详情的函数名称，ResourceId和FunctionName只能传一个
        # @type FunctionName: String
        # @param Qualifier: 函数的版本号
        # 默认值: $LATEST
        # @type Qualifier: String
        # @param Namespace: 函数所属命名空间
        # 默认值: default
        # @type Namespace: String
        # @param ShowCode: 是否显示代码, TRUE表示显示代码，FALSE表示不显示代码,大于1M的入口文件不会显示
        # @type ShowCode: String

        attr_accessor :FunctionName, :Qualifier, :Namespace, :ShowCode

        def initialize(functionname=nil, qualifier=nil, namespace=nil, showcode=nil)
          @FunctionName = functionname
          @Qualifier = qualifier
          @Namespace = namespace
          @ShowCode = showcode
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Qualifier = params['Qualifier']
          @Namespace = params['Namespace']
          @ShowCode = params['ShowCode']
        end
      end

      # GetFunction返回参数结构体
      class GetFunctionResponse < TencentCloud::Common::AbstractModel
        # @param ModTime: 函数的最后修改时间
        # @type ModTime: String
        # @param CodeInfo: 函数的代码
        # @type CodeInfo: String
        # @param Description: 函数的描述信息
        # @type Description: String
        # @param Triggers: 函数的触发器列表
        # @type Triggers: Array
        # @param Handler: 函数的入口
        # @type Handler: String
        # @param CodeSize: 函数代码大小
        # @type CodeSize: Integer
        # @param Timeout: 函数的超时时间
        # @type Timeout: Integer
        # @param FunctionVersion: 函数的版本
        # @type FunctionVersion: String
        # @param MemorySize: 函数的最大可用内存
        # @type MemorySize: Integer
        # @param Runtime: 函数的运行环境
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Runtime: String
        # @param FunctionName: 函数的名称
        # @type FunctionName: String
        # @param VpcConfig: 函数的私有网络
        # @type VpcConfig: :class:`Tencentcloud::Scf.v20180416.models.VpcConfig`
        # @param UseGpu: 是否使用GPU
        # @type UseGpu: String
        # @param Environment: 函数的环境变量
        # @type Environment: :class:`Tencentcloud::Scf.v20180416.models.Environment`
        # @param CodeResult: 代码是否正确
        # @type CodeResult: String
        # @param CodeError: 代码错误信息
        # @type CodeError: String
        # @param ErrNo: 代码错误码
        # @type ErrNo: Integer
        # @param Namespace: 函数的命名空间
        # @type Namespace: String
        # @param Role: 函数绑定的角色
        # @type Role: String
        # @param InstallDependency: 是否自动安装依赖
        # @type InstallDependency: String
        # @param Status: 函数状态，状态值及流转[参考说明](https://cloud.tencent.com/document/product/583/115197)
        # @type Status: String
        # @param StatusDesc: 状态描述
        # @type StatusDesc: String
        # @param ClsLogsetId: 日志投递到的Cls日志集
        # @type ClsLogsetId: String
        # @param ClsTopicId: 日志投递到的Cls Topic
        # @type ClsTopicId: String
        # @param FunctionId: 函数ID
        # @type FunctionId: String
        # @param Tags: 函数的标签列表
        # @type Tags: Array
        # @param EipConfig: EipConfig配置
        # @type EipConfig: :class:`Tencentcloud::Scf.v20180416.models.EipOutConfig`
        # @param AccessInfo: 域名信息
        # @type AccessInfo: :class:`Tencentcloud::Scf.v20180416.models.AccessInfo`
        # @param Type: 函数类型，取值为HTTP或者Event
        # @type Type: String
        # @param L5Enable: 是否启用L5
        # @type L5Enable: String
        # @param Layers: 函数关联的Layer版本信息
        # @type Layers: Array
        # @param DeadLetterConfig: 函数关联的死信队列信息
        # @type DeadLetterConfig: :class:`Tencentcloud::Scf.v20180416.models.DeadLetterConfig`
        # @param AddTime: 函数创建回见
        # @type AddTime: String
        # @param PublicNetConfig: 公网访问配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicNetConfig: :class:`Tencentcloud::Scf.v20180416.models.PublicNetConfigOut`
        # @param OnsEnable: 是否启用Ons
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OnsEnable: String
        # @param CfsConfig: 文件系统配置参数，用于云函数挂载文件系统
        # @type CfsConfig: :class:`Tencentcloud::Scf.v20180416.models.CfsConfig`
        # @param AvailableStatus: 函数的计费状态，状态值[参考此处](https://cloud.tencent.com/document/product/583/47175#.E5.87.BD.E6.95.B0.E8.AE.A1.E8.B4.B9.E7.8A.B6.E6.80.81)
        # @type AvailableStatus: String
        # @param Qualifier: 函数版本
        # @type Qualifier: String
        # @param InitTimeout: 函数初始化超时时间
        # @type InitTimeout: Integer
        # @param StatusReasons: 函数状态失败原因
        # @type StatusReasons: Array
        # @param AsyncRunEnable: 是否开启异步属性
        # @type AsyncRunEnable: String
        # @param TraceEnable: 是否开启事件追踪
        # @type TraceEnable: String
        # @param ImageConfig: 镜像配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageConfig: :class:`Tencentcloud::Scf.v20180416.models.ImageConfig`
        # @param ProtocolType: HTTP函数支持的访问协议。当前支持WebSockets协议。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtocolType: String
        # @param ProtocolParams: HTTP函数配置ProtocolType访问协议，当前协议配置的参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtocolParams: :class:`Tencentcloud::Scf.v20180416.models.ProtocolParams`
        # @param InstanceConcurrencyConfig: 单实例多并发配置。只支持Web函数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceConcurrencyConfig: :class:`Tencentcloud::Scf.v20180416.models.InstanceConcurrencyConfig`
        # @param DnsCache: 是否开启DNS缓存
        # @type DnsCache: String
        # @param IntranetConfig: 内网访问配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntranetConfig: :class:`Tencentcloud::Scf.v20180416.models.IntranetConfigOut`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModTime, :CodeInfo, :Description, :Triggers, :Handler, :CodeSize, :Timeout, :FunctionVersion, :MemorySize, :Runtime, :FunctionName, :VpcConfig, :UseGpu, :Environment, :CodeResult, :CodeError, :ErrNo, :Namespace, :Role, :InstallDependency, :Status, :StatusDesc, :ClsLogsetId, :ClsTopicId, :FunctionId, :Tags, :EipConfig, :AccessInfo, :Type, :L5Enable, :Layers, :DeadLetterConfig, :AddTime, :PublicNetConfig, :OnsEnable, :CfsConfig, :AvailableStatus, :Qualifier, :InitTimeout, :StatusReasons, :AsyncRunEnable, :TraceEnable, :ImageConfig, :ProtocolType, :ProtocolParams, :InstanceConcurrencyConfig, :DnsCache, :IntranetConfig, :RequestId

        def initialize(modtime=nil, codeinfo=nil, description=nil, triggers=nil, handler=nil, codesize=nil, timeout=nil, functionversion=nil, memorysize=nil, runtime=nil, functionname=nil, vpcconfig=nil, usegpu=nil, environment=nil, coderesult=nil, codeerror=nil, errno=nil, namespace=nil, role=nil, installdependency=nil, status=nil, statusdesc=nil, clslogsetid=nil, clstopicid=nil, functionid=nil, tags=nil, eipconfig=nil, accessinfo=nil, type=nil, l5enable=nil, layers=nil, deadletterconfig=nil, addtime=nil, publicnetconfig=nil, onsenable=nil, cfsconfig=nil, availablestatus=nil, qualifier=nil, inittimeout=nil, statusreasons=nil, asyncrunenable=nil, traceenable=nil, imageconfig=nil, protocoltype=nil, protocolparams=nil, instanceconcurrencyconfig=nil, dnscache=nil, intranetconfig=nil, requestid=nil)
          @ModTime = modtime
          @CodeInfo = codeinfo
          @Description = description
          @Triggers = triggers
          @Handler = handler
          @CodeSize = codesize
          @Timeout = timeout
          @FunctionVersion = functionversion
          @MemorySize = memorysize
          @Runtime = runtime
          @FunctionName = functionname
          @VpcConfig = vpcconfig
          @UseGpu = usegpu
          @Environment = environment
          @CodeResult = coderesult
          @CodeError = codeerror
          @ErrNo = errno
          @Namespace = namespace
          @Role = role
          @InstallDependency = installdependency
          @Status = status
          @StatusDesc = statusdesc
          @ClsLogsetId = clslogsetid
          @ClsTopicId = clstopicid
          @FunctionId = functionid
          @Tags = tags
          @EipConfig = eipconfig
          @AccessInfo = accessinfo
          @Type = type
          @L5Enable = l5enable
          @Layers = layers
          @DeadLetterConfig = deadletterconfig
          @AddTime = addtime
          @PublicNetConfig = publicnetconfig
          @OnsEnable = onsenable
          @CfsConfig = cfsconfig
          @AvailableStatus = availablestatus
          @Qualifier = qualifier
          @InitTimeout = inittimeout
          @StatusReasons = statusreasons
          @AsyncRunEnable = asyncrunenable
          @TraceEnable = traceenable
          @ImageConfig = imageconfig
          @ProtocolType = protocoltype
          @ProtocolParams = protocolparams
          @InstanceConcurrencyConfig = instanceconcurrencyconfig
          @DnsCache = dnscache
          @IntranetConfig = intranetconfig
          @RequestId = requestid
        end

        def deserialize(params)
          @ModTime = params['ModTime']
          @CodeInfo = params['CodeInfo']
          @Description = params['Description']
          unless params['Triggers'].nil?
            @Triggers = []
            params['Triggers'].each do |i|
              trigger_tmp = Trigger.new
              trigger_tmp.deserialize(i)
              @Triggers << trigger_tmp
            end
          end
          @Handler = params['Handler']
          @CodeSize = params['CodeSize']
          @Timeout = params['Timeout']
          @FunctionVersion = params['FunctionVersion']
          @MemorySize = params['MemorySize']
          @Runtime = params['Runtime']
          @FunctionName = params['FunctionName']
          unless params['VpcConfig'].nil?
            @VpcConfig = VpcConfig.new
            @VpcConfig.deserialize(params['VpcConfig'])
          end
          @UseGpu = params['UseGpu']
          unless params['Environment'].nil?
            @Environment = Environment.new
            @Environment.deserialize(params['Environment'])
          end
          @CodeResult = params['CodeResult']
          @CodeError = params['CodeError']
          @ErrNo = params['ErrNo']
          @Namespace = params['Namespace']
          @Role = params['Role']
          @InstallDependency = params['InstallDependency']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @ClsLogsetId = params['ClsLogsetId']
          @ClsTopicId = params['ClsTopicId']
          @FunctionId = params['FunctionId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['EipConfig'].nil?
            @EipConfig = EipOutConfig.new
            @EipConfig.deserialize(params['EipConfig'])
          end
          unless params['AccessInfo'].nil?
            @AccessInfo = AccessInfo.new
            @AccessInfo.deserialize(params['AccessInfo'])
          end
          @Type = params['Type']
          @L5Enable = params['L5Enable']
          unless params['Layers'].nil?
            @Layers = []
            params['Layers'].each do |i|
              layerversioninfo_tmp = LayerVersionInfo.new
              layerversioninfo_tmp.deserialize(i)
              @Layers << layerversioninfo_tmp
            end
          end
          unless params['DeadLetterConfig'].nil?
            @DeadLetterConfig = DeadLetterConfig.new
            @DeadLetterConfig.deserialize(params['DeadLetterConfig'])
          end
          @AddTime = params['AddTime']
          unless params['PublicNetConfig'].nil?
            @PublicNetConfig = PublicNetConfigOut.new
            @PublicNetConfig.deserialize(params['PublicNetConfig'])
          end
          @OnsEnable = params['OnsEnable']
          unless params['CfsConfig'].nil?
            @CfsConfig = CfsConfig.new
            @CfsConfig.deserialize(params['CfsConfig'])
          end
          @AvailableStatus = params['AvailableStatus']
          @Qualifier = params['Qualifier']
          @InitTimeout = params['InitTimeout']
          unless params['StatusReasons'].nil?
            @StatusReasons = []
            params['StatusReasons'].each do |i|
              statusreason_tmp = StatusReason.new
              statusreason_tmp.deserialize(i)
              @StatusReasons << statusreason_tmp
            end
          end
          @AsyncRunEnable = params['AsyncRunEnable']
          @TraceEnable = params['TraceEnable']
          unless params['ImageConfig'].nil?
            @ImageConfig = ImageConfig.new
            @ImageConfig.deserialize(params['ImageConfig'])
          end
          @ProtocolType = params['ProtocolType']
          unless params['ProtocolParams'].nil?
            @ProtocolParams = ProtocolParams.new
            @ProtocolParams.deserialize(params['ProtocolParams'])
          end
          unless params['InstanceConcurrencyConfig'].nil?
            @InstanceConcurrencyConfig = InstanceConcurrencyConfig.new
            @InstanceConcurrencyConfig.deserialize(params['InstanceConcurrencyConfig'])
          end
          @DnsCache = params['DnsCache']
          unless params['IntranetConfig'].nil?
            @IntranetConfig = IntranetConfigOut.new
            @IntranetConfig.deserialize(params['IntranetConfig'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetLayerVersion请求参数结构体
      class GetLayerVersionRequest < TencentCloud::Common::AbstractModel
        # @param LayerName: 层名称
        # @type LayerName: String
        # @param LayerVersion: 版本号
        # @type LayerVersion: Integer

        attr_accessor :LayerName, :LayerVersion

        def initialize(layername=nil, layerversion=nil)
          @LayerName = layername
          @LayerVersion = layerversion
        end

        def deserialize(params)
          @LayerName = params['LayerName']
          @LayerVersion = params['LayerVersion']
        end
      end

      # GetLayerVersion返回参数结构体
      class GetLayerVersionResponse < TencentCloud::Common::AbstractModel
        # @param CompatibleRuntimes: 适配的运行时
        # @type CompatibleRuntimes: Array
        # @param CodeSha256: 层中版本文件的SHA256编码
        # @type CodeSha256: String
        # @param Location: 层中版本文件的下载地址
        # @type Location: String
        # @param AddTime: 版本的创建时间
        # @type AddTime: String
        # @param Description: 版本的描述信息
        # @type Description: String
        # @param LicenseInfo: 许可证信息
        # @type LicenseInfo: String
        # @param LayerVersion: 版本号
        # @type LayerVersion: Integer
        # @param LayerName: 层名称
        # @type LayerName: String
        # @param Status: 层的具体版本当前状态，状态值[参考此处](https://cloud.tencent.com/document/product/583/115197#.E5.B1.82.EF.BC.88Layer.EF.BC.89.E7.8A.B6.E6.80.81)
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompatibleRuntimes, :CodeSha256, :Location, :AddTime, :Description, :LicenseInfo, :LayerVersion, :LayerName, :Status, :RequestId

        def initialize(compatibleruntimes=nil, codesha256=nil, location=nil, addtime=nil, description=nil, licenseinfo=nil, layerversion=nil, layername=nil, status=nil, requestid=nil)
          @CompatibleRuntimes = compatibleruntimes
          @CodeSha256 = codesha256
          @Location = location
          @AddTime = addtime
          @Description = description
          @LicenseInfo = licenseinfo
          @LayerVersion = layerversion
          @LayerName = layername
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @CompatibleRuntimes = params['CompatibleRuntimes']
          @CodeSha256 = params['CodeSha256']
          @Location = params['Location']
          @AddTime = params['AddTime']
          @Description = params['Description']
          @LicenseInfo = params['LicenseInfo']
          @LayerVersion = params['LayerVersion']
          @LayerName = params['LayerName']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # GetProvisionedConcurrencyConfig请求参数结构体
      class GetProvisionedConcurrencyConfigRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 需要获取预置并发详情的函数名称。
        # @type FunctionName: String
        # @param Namespace: 函数所在的命名空间，默认为default。
        # @type Namespace: String
        # @param Qualifier: 函数版本号，不传则返回函数所有版本的预置并发信息。
        # @type Qualifier: String

        attr_accessor :FunctionName, :Namespace, :Qualifier

        def initialize(functionname=nil, namespace=nil, qualifier=nil)
          @FunctionName = functionname
          @Namespace = namespace
          @Qualifier = qualifier
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Namespace = params['Namespace']
          @Qualifier = params['Qualifier']
        end
      end

      # GetProvisionedConcurrencyConfig返回参数结构体
      class GetProvisionedConcurrencyConfigResponse < TencentCloud::Common::AbstractModel
        # @param UnallocatedConcurrencyNum: 该函数剩余可配置的预置并发数。
        # @type UnallocatedConcurrencyNum: Integer
        # @param Allocated: 函数已预置的并发配置详情。
        # @type Allocated: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UnallocatedConcurrencyNum, :Allocated, :RequestId

        def initialize(unallocatedconcurrencynum=nil, allocated=nil, requestid=nil)
          @UnallocatedConcurrencyNum = unallocatedconcurrencynum
          @Allocated = allocated
          @RequestId = requestid
        end

        def deserialize(params)
          @UnallocatedConcurrencyNum = params['UnallocatedConcurrencyNum']
          unless params['Allocated'].nil?
            @Allocated = []
            params['Allocated'].each do |i|
              versionprovisionedconcurrencyinfo_tmp = VersionProvisionedConcurrencyInfo.new
              versionprovisionedconcurrencyinfo_tmp.deserialize(i)
              @Allocated << versionprovisionedconcurrencyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetRequestStatus请求参数结构体
      class GetRequestStatusRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param FunctionRequestId: 需要查询状态的请求 id
        # @type FunctionRequestId: String
        # @param Namespace: 函数的所在的命名空间
        # @type Namespace: String
        # @param StartTime: 查询的开始时间，例如：2017-05-16 20:00:00，不填默认为当前时间 - 15min
        # @type StartTime: String
        # @param EndTime: 查询的结束时间，例如：2017-05-16 20:59:59。StartTime 为空时，EndTime 默认为当前时间；StartTime 有值时，需要同时传 EndTime。EndTime 需要晚于 StartTime。
        # @type EndTime: String

        attr_accessor :FunctionName, :FunctionRequestId, :Namespace, :StartTime, :EndTime

        def initialize(functionname=nil, functionrequestid=nil, namespace=nil, starttime=nil, endtime=nil)
          @FunctionName = functionname
          @FunctionRequestId = functionrequestid
          @Namespace = namespace
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @FunctionRequestId = params['FunctionRequestId']
          @Namespace = params['Namespace']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # GetRequestStatus返回参数结构体
      class GetRequestStatusResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 函数运行状态的总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 函数运行状态数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              requeststatus_tmp = RequestStatus.new
              requeststatus_tmp.deserialize(i)
              @Data << requeststatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetReservedConcurrencyConfig请求参数结构体
      class GetReservedConcurrencyConfigRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 需要获取最大独占配额详情的函数名称。
        # @type FunctionName: String
        # @param Namespace: 函数所在的命名空间，默认为default。
        # @type Namespace: String

        attr_accessor :FunctionName, :Namespace

        def initialize(functionname=nil, namespace=nil)
          @FunctionName = functionname
          @Namespace = namespace
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Namespace = params['Namespace']
        end
      end

      # GetReservedConcurrencyConfig返回参数结构体
      class GetReservedConcurrencyConfigResponse < TencentCloud::Common::AbstractModel
        # @param ReservedMem: 该函数的最大独占配额。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMem: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReservedMem, :RequestId

        def initialize(reservedmem=nil, requestid=nil)
          @ReservedMem = reservedmem
          @RequestId = requestid
        end

        def deserialize(params)
          @ReservedMem = params['ReservedMem']
          @RequestId = params['RequestId']
        end
      end

      # TCR镜像信息描述
      class ImageConfig < TencentCloud::Common::AbstractModel
        # @param ImageType: 镜像仓库类型，个人版或者企业版：personal/enterprise
        # @type ImageType: String
        # @param ImageUri: {domain}/{namespace}/{imageName}:{tag}@{digest}
        # @type ImageUri: String
        # @param RegistryId: 用于企业版TCR获取镜像拉取临时凭证，ImageType为"enterprise"时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistryId: String
        # @param EntryPoint: 该参数即将下线，不推荐用户使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EntryPoint: String
        # @param Command: 容器的启动命令。该参数为可选参数，如果不填写，则默认使用 Dockerfile 中的 Entrypoint。传入规范，填写可运行的指令，例如 python
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Command: String
        # @param Args: 容器的启动参数。该参数为可选参数，如果不填写，则默认使用 Dockerfile 中的 CMD。传入规范，以“空格”作为参数的分割标识，例如 -u app.py
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Args: String
        # @param ContainerImageAccelerate: 镜像加速开关，默认False
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerImageAccelerate: Boolean
        # @param ImagePort: 镜像函数端口设置，可指定镜像类型
        # Web Server镜像：9000
        # Job 镜像：-1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 默认值：9000
        # 示例值：9000
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImagePort: Integer

        attr_accessor :ImageType, :ImageUri, :RegistryId, :EntryPoint, :Command, :Args, :ContainerImageAccelerate, :ImagePort

        def initialize(imagetype=nil, imageuri=nil, registryid=nil, entrypoint=nil, command=nil, args=nil, containerimageaccelerate=nil, imageport=nil)
          @ImageType = imagetype
          @ImageUri = imageuri
          @RegistryId = registryid
          @EntryPoint = entrypoint
          @Command = command
          @Args = args
          @ContainerImageAccelerate = containerimageaccelerate
          @ImagePort = imageport
        end

        def deserialize(params)
          @ImageType = params['ImageType']
          @ImageUri = params['ImageUri']
          @RegistryId = params['RegistryId']
          @EntryPoint = params['EntryPoint']
          @Command = params['Command']
          @Args = params['Args']
          @ContainerImageAccelerate = params['ContainerImageAccelerate']
          @ImagePort = params['ImagePort']
        end
      end

      # 多并发执行配置描述
      class InstanceConcurrencyConfig < TencentCloud::Common::AbstractModel
        # @param DynamicEnabled: 是否开启智能动态并发。'FALSE'时是静态并发。''时取消多并发配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DynamicEnabled: String
        # @param MaxConcurrency: 单实例并发数最大值。取值范围 [1,100]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxConcurrency: Integer
        # @param InstanceIsolationEnabled: 安全隔离开关
        # @type InstanceIsolationEnabled: String
        # @param Type: 基于会话：Session-Based ， 或者基于请求：Request-Based，二选一
        # @type Type: String
        # @param MixNodeConfig: 动态并发参数
        # @type MixNodeConfig: Array
        # @param SessionConfig: 会话配置参数
        # @type SessionConfig: :class:`Tencentcloud::Scf.v20180416.models.SessionConfig`

        attr_accessor :DynamicEnabled, :MaxConcurrency, :InstanceIsolationEnabled, :Type, :MixNodeConfig, :SessionConfig

        def initialize(dynamicenabled=nil, maxconcurrency=nil, instanceisolationenabled=nil, type=nil, mixnodeconfig=nil, sessionconfig=nil)
          @DynamicEnabled = dynamicenabled
          @MaxConcurrency = maxconcurrency
          @InstanceIsolationEnabled = instanceisolationenabled
          @Type = type
          @MixNodeConfig = mixnodeconfig
          @SessionConfig = sessionconfig
        end

        def deserialize(params)
          @DynamicEnabled = params['DynamicEnabled']
          @MaxConcurrency = params['MaxConcurrency']
          @InstanceIsolationEnabled = params['InstanceIsolationEnabled']
          @Type = params['Type']
          unless params['MixNodeConfig'].nil?
            @MixNodeConfig = []
            params['MixNodeConfig'].each do |i|
              mixnodeconfig_tmp = MixNodeConfig.new
              mixnodeconfig_tmp.deserialize(i)
              @MixNodeConfig << mixnodeconfig_tmp
            end
          end
          unless params['SessionConfig'].nil?
            @SessionConfig = SessionConfig.new
            @SessionConfig.deserialize(params['SessionConfig'])
          end
        end
      end

      # 内网配置
      class IntranetConfigIn < TencentCloud::Common::AbstractModel
        # @param IpFixed: 是否开启固定内网IP
        # ENABLE 为开启
        # DISABLE 为不开启
        # @type IpFixed: String

        attr_accessor :IpFixed

        def initialize(ipfixed=nil)
          @IpFixed = ipfixed
        end

        def deserialize(params)
          @IpFixed = params['IpFixed']
        end
      end

      # 内网配置
      class IntranetConfigOut < TencentCloud::Common::AbstractModel
        # @param IpFixed: 是否启用固定内网IP
        # ENABLE 为启用
        # DISABLE 为不启用
        # @type IpFixed: String
        # @param IpAddress: 若已启用固定内网IP，则该字段返回使用的IP列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpAddress: Array

        attr_accessor :IpFixed, :IpAddress

        def initialize(ipfixed=nil, ipaddress=nil)
          @IpFixed = ipfixed
          @IpAddress = ipaddress
        end

        def deserialize(params)
          @IpFixed = params['IpFixed']
          @IpAddress = params['IpAddress']
        end
      end

      # InvokeFunction请求参数结构体
      class InvokeFunctionRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param Qualifier: 触发函数的版本号或别名，默认值为$DEFAULT
        # @type Qualifier: String
        # @param Event: 运行函数时的参数，以json格式传入，最大支持的参数长度是 6MB。该字段信息对应函数 [event 入参](https://cloud.tencent.com/document/product/583/9210#.E5.87.BD.E6.95.B0.E5.85.A5.E5.8F.82.3Ca-id.3D.22input.22.3E.3C.2Fa.3E)。
        # @type Event: String
        # @param LogType: 返回值会包含4KB的日志，可选值为None和Tail，默认值为None。当该值为Tail时，返回参数中的Log字段会包含对应的函数执行日志
        # @type LogType: String
        # @param Namespace: 命名空间，不填默认为 default
        # @type Namespace: String
        # @param RoutingKey: 函数灰度流量控制调用，以json格式传入，例如{"k":"v"}，注意kv都需要是字符串类型，最大支持的参数长度是1024字节
        # @type RoutingKey: String

        attr_accessor :FunctionName, :Qualifier, :Event, :LogType, :Namespace, :RoutingKey

        def initialize(functionname=nil, qualifier=nil, event=nil, logtype=nil, namespace=nil, routingkey=nil)
          @FunctionName = functionname
          @Qualifier = qualifier
          @Event = event
          @LogType = logtype
          @Namespace = namespace
          @RoutingKey = routingkey
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Qualifier = params['Qualifier']
          @Event = params['Event']
          @LogType = params['LogType']
          @Namespace = params['Namespace']
          @RoutingKey = params['RoutingKey']
        end
      end

      # InvokeFunction返回参数结构体
      class InvokeFunctionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 函数执行结果
        # @type Result: :class:`Tencentcloud::Scf.v20180416.models.Result`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = Result.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # Invoke请求参数结构体
      class InvokeRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param InvocationType: 同步调用请使用[同步 Invoke 调用接口](https://cloud.tencent.com/document/product/583/58400) 或填写同步调用参数 RequestResponse ，建议使用同步调用接口以获取最佳性能；异步调用填写 Event；默认为同步。接口超时时间为 300s，更长超时时间请使用异步调用。
        # @type InvocationType: String
        # @param Qualifier: 触发函数的版本号或别名，默认值为 $LATEST
        # @type Qualifier: String
        # @param ClientContext: 运行函数时的参数，以json格式传入，同步调用最大支持 6MB，异步调用最大支持 128 KB。该字段信息对应函数 [event 入参](https://cloud.tencent.com/document/product/583/9210#.E5.87.BD.E6.95.B0.E5.85.A5.E5.8F.82.3Ca-id.3D.22input.22.3E.3C.2Fa.3E)。
        # @type ClientContext: String
        # @param LogType: 异步调用该字段返回为空。
        # @type LogType: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param RoutingKey: 函数灰度流量控制调用，以json格式传入，例如{"k":"v"}，注意kv都需要是字符串类型，最大支持的参数长度是1024字节
        # @type RoutingKey: String

        attr_accessor :FunctionName, :InvocationType, :Qualifier, :ClientContext, :LogType, :Namespace, :RoutingKey

        def initialize(functionname=nil, invocationtype=nil, qualifier=nil, clientcontext=nil, logtype=nil, namespace=nil, routingkey=nil)
          @FunctionName = functionname
          @InvocationType = invocationtype
          @Qualifier = qualifier
          @ClientContext = clientcontext
          @LogType = logtype
          @Namespace = namespace
          @RoutingKey = routingkey
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @InvocationType = params['InvocationType']
          @Qualifier = params['Qualifier']
          @ClientContext = params['ClientContext']
          @LogType = params['LogType']
          @Namespace = params['Namespace']
          @RoutingKey = params['RoutingKey']
        end
      end

      # Invoke返回参数结构体
      class InvokeResponse < TencentCloud::Common::AbstractModel
        # @param Result: 函数执行结果
        # @type Result: :class:`Tencentcloud::Scf.v20180416.models.Result`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = Result.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # k8s label
      class K8SLabel < TencentCloud::Common::AbstractModel
        # @param Key: label的名称
        # @type Key: String
        # @param Value: label的值
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

      # Kubernetes污点容忍，使用时请注意您的Kubernetes版本所支持的字段情况。
      # 可参考 https://kubernetes.io/zh-cn/docs/concepts/scheduling-eviction/taint-and-toleration/
      class K8SToleration < TencentCloud::Common::AbstractModel
        # @param Key: 匹配的污点名
        # @type Key: String
        # @param Operator: 匹配方式，默认值为: Equal
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param Effect: 执行策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Effect: String
        # @param Value: 匹配的污点值，当Operator为Equal时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param TolerationSeconds: 当污点不被容忍时，Pod还能在节点上运行多久
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TolerationSeconds: Integer

        attr_accessor :Key, :Operator, :Effect, :Value, :TolerationSeconds

        def initialize(key=nil, operator=nil, effect=nil, value=nil, tolerationseconds=nil)
          @Key = key
          @Operator = operator
          @Effect = effect
          @Value = value
          @TolerationSeconds = tolerationseconds
        end

        def deserialize(params)
          @Key = params['Key']
          @Operator = params['Operator']
          @Effect = params['Effect']
          @Value = params['Value']
          @TolerationSeconds = params['TolerationSeconds']
        end
      end

      # 层版本信息
      class LayerVersionInfo < TencentCloud::Common::AbstractModel
        # @param CompatibleRuntimes: 版本适用的运行时
        # @type CompatibleRuntimes: Array
        # @param AddTime: 创建时间
        # @type AddTime: String
        # @param Description: 版本描述
        # @type Description: String
        # @param LicenseInfo: 许可证信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LicenseInfo: String
        # @param LayerVersion: 版本号
        # @type LayerVersion: Integer
        # @param LayerName: 层名称
        # @type LayerName: String
        # @param Status: 层的具体版本当前状态，状态值[参考此处](https://cloud.tencent.com/document/product/583/115197#.E5.B1.82.EF.BC.88Layer.EF.BC.89.E7.8A.B6.E6.80.81)
        # @type Status: String
        # @param Stamp: Stamp
        # @type Stamp: String
        # @param Tags: 返回层绑定的标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :CompatibleRuntimes, :AddTime, :Description, :LicenseInfo, :LayerVersion, :LayerName, :Status, :Stamp, :Tags

        def initialize(compatibleruntimes=nil, addtime=nil, description=nil, licenseinfo=nil, layerversion=nil, layername=nil, status=nil, stamp=nil, tags=nil)
          @CompatibleRuntimes = compatibleruntimes
          @AddTime = addtime
          @Description = description
          @LicenseInfo = licenseinfo
          @LayerVersion = layerversion
          @LayerName = layername
          @Status = status
          @Stamp = stamp
          @Tags = tags
        end

        def deserialize(params)
          @CompatibleRuntimes = params['CompatibleRuntimes']
          @AddTime = params['AddTime']
          @Description = params['Description']
          @LicenseInfo = params['LicenseInfo']
          @LayerVersion = params['LayerVersion']
          @LayerName = params['LayerName']
          @Status = params['Status']
          @Stamp = params['Stamp']
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

      # 指定某个Layer版本
      class LayerVersionSimple < TencentCloud::Common::AbstractModel
        # @param LayerName: 绑定的层名称。解绑层需传递空字符串。
        # @type LayerName: String
        # @param LayerVersion: 绑定或解绑层的版本号。解绑函数版本关联的最后一个层版本时，LayerVersion 填 0。
        # @type LayerVersion: Integer

        attr_accessor :LayerName, :LayerVersion

        def initialize(layername=nil, layerversion=nil)
          @LayerName = layername
          @LayerVersion = layerversion
        end

        def deserialize(params)
          @LayerName = params['LayerName']
          @LayerVersion = params['LayerVersion']
        end
      end

      # 限制信息
      class LimitsInfo < TencentCloud::Common::AbstractModel
        # @param NamespacesCount: 命名空间个数限制
        # @type NamespacesCount: Integer
        # @param Namespace: 命名空间限制信息
        # @type Namespace: Array

        attr_accessor :NamespacesCount, :Namespace

        def initialize(namespacescount=nil, namespace=nil)
          @NamespacesCount = namespacescount
          @Namespace = namespace
        end

        def deserialize(params)
          @NamespacesCount = params['NamespacesCount']
          unless params['Namespace'].nil?
            @Namespace = []
            params['Namespace'].each do |i|
              namespacelimit_tmp = NamespaceLimit.new
              namespacelimit_tmp.deserialize(i)
              @Namespace << namespacelimit_tmp
            end
          end
        end
      end

      # ListAliases请求参数结构体
      class ListAliasesRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param Namespace: 函数所在的命名空间
        # @type Namespace: String
        # @param FunctionVersion: 如果提供此参数，则只返回与该函数版本有关联的别名
        # @type FunctionVersion: String
        # @param Offset: 数据偏移量，默认值为 0
        # @type Offset: String
        # @param Limit: 返回数据长度，默认值为 20
        # @type Limit: String

        attr_accessor :FunctionName, :Namespace, :FunctionVersion, :Offset, :Limit

        def initialize(functionname=nil, namespace=nil, functionversion=nil, offset=nil, limit=nil)
          @FunctionName = functionname
          @Namespace = namespace
          @FunctionVersion = functionversion
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Namespace = params['Namespace']
          @FunctionVersion = params['FunctionVersion']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # ListAliases返回参数结构体
      class ListAliasesResponse < TencentCloud::Common::AbstractModel
        # @param Aliases: 别名列表
        # @type Aliases: Array
        # @param TotalCount: 别名总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Aliases, :TotalCount, :RequestId

        def initialize(aliases=nil, totalcount=nil, requestid=nil)
          @Aliases = aliases
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Aliases'].nil?
            @Aliases = []
            params['Aliases'].each do |i|
              alias_tmp = Alias.new
              alias_tmp.deserialize(i)
              @Aliases << alias_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListAsyncEvents请求参数结构体
      class ListAsyncEventsRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Qualifier: 过滤条件，函数版本
        # @type Qualifier: String
        # @param InvokeType: 过滤条件，调用类型列表
        # @type InvokeType: Array
        # @param Status: 过滤条件，事件状态列表
        # @type Status: Array
        # @param StartTimeInterval: 过滤条件，开始执行时间左闭右开区间
        # @type StartTimeInterval: :class:`Tencentcloud::Scf.v20180416.models.TimeInterval`
        # @param EndTimeInterval: 过滤条件，结束执行时间左闭右开区间
        # @type EndTimeInterval: :class:`Tencentcloud::Scf.v20180416.models.TimeInterval`
        # @param Order: 可选值 ASC 和 DESC，默认 DESC
        # @type Order: String
        # @param Orderby: 可选值 StartTime 和 EndTime，默认值 StartTime
        # @type Orderby: String
        # @param Offset: 数据偏移量，默认值为 0
        # @type Offset: Integer
        # @param Limit: 返回数据长度，默认值为 20，最大值 100
        # @type Limit: Integer
        # @param InvokeRequestId: 过滤条件，事件调用请求id
        # @type InvokeRequestId: String

        attr_accessor :FunctionName, :Namespace, :Qualifier, :InvokeType, :Status, :StartTimeInterval, :EndTimeInterval, :Order, :Orderby, :Offset, :Limit, :InvokeRequestId

        def initialize(functionname=nil, namespace=nil, qualifier=nil, invoketype=nil, status=nil, starttimeinterval=nil, endtimeinterval=nil, order=nil, orderby=nil, offset=nil, limit=nil, invokerequestid=nil)
          @FunctionName = functionname
          @Namespace = namespace
          @Qualifier = qualifier
          @InvokeType = invoketype
          @Status = status
          @StartTimeInterval = starttimeinterval
          @EndTimeInterval = endtimeinterval
          @Order = order
          @Orderby = orderby
          @Offset = offset
          @Limit = limit
          @InvokeRequestId = invokerequestid
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Namespace = params['Namespace']
          @Qualifier = params['Qualifier']
          @InvokeType = params['InvokeType']
          @Status = params['Status']
          unless params['StartTimeInterval'].nil?
            @StartTimeInterval = TimeInterval.new
            @StartTimeInterval.deserialize(params['StartTimeInterval'])
          end
          unless params['EndTimeInterval'].nil?
            @EndTimeInterval = TimeInterval.new
            @EndTimeInterval.deserialize(params['EndTimeInterval'])
          end
          @Order = params['Order']
          @Orderby = params['Orderby']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InvokeRequestId = params['InvokeRequestId']
        end
      end

      # ListAsyncEvents返回参数结构体
      class ListAsyncEventsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 满足过滤条件的事件总数
        # @type TotalCount: Integer
        # @param EventList: 异步事件列表
        # @type EventList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :EventList, :RequestId

        def initialize(totalcount=nil, eventlist=nil, requestid=nil)
          @TotalCount = totalcount
          @EventList = eventlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EventList'].nil?
            @EventList = []
            params['EventList'].each do |i|
              asyncevent_tmp = AsyncEvent.new
              asyncevent_tmp.deserialize(i)
              @EventList << asyncevent_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListCustomDomains请求参数结构体
      class ListCustomDomainsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 容量，默认20
        # @type Limit: Integer
        # @param OrderBy: 取值范围：AddTime，ModTime， 默认AddTime
        # @type OrderBy: String
        # @param Order: 取值范围：DESC, ASC 默认DESC
        # @type Order: String
        # @param Filters: 过滤条件
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :OrderBy, :Order, :Filters

        def initialize(offset=nil, limit=nil, orderby=nil, order=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
          @Order = order
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderBy = params['OrderBy']
          @Order = params['Order']
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

      # ListCustomDomains返回参数结构体
      class ListCustomDomainsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Domains: 域名列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domains: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Domains, :RequestId

        def initialize(total=nil, domains=nil, requestid=nil)
          @Total = total
          @Domains = domains
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Domains'].nil?
            @Domains = []
            params['Domains'].each do |i|
              domaininfo_tmp = DomainInfo.new
              domaininfo_tmp.deserialize(i)
              @Domains << domaininfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListFunctions请求参数结构体
      class ListFunctionsRequest < TencentCloud::Common::AbstractModel
        # @param Order: 以升序还是降序的方式返回结果，可选值 ASC 和 DESC
        # @type Order: String
        # @param Orderby: 根据哪个字段进行返回结果排序,支持以下字段：AddTime, ModTime, FunctionName
        # @type Orderby: String
        # @param Offset: 数据偏移量，默认值为 0
        # @type Offset: Integer
        # @param Limit: 返回数据长度，默认值为 20
        # @type Limit: Integer
        # @param SearchKey: 支持FunctionName模糊匹配
        # @type SearchKey: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Description: 函数描述，支持模糊搜索
        # @type Description: String
        # @param Filters: `过滤特定属性或者有特定标签的函数。`
        # - 传值方式
        #    key-value 进行传值
        #     例如："Filters": [{ "Name": "Status", "Values": ["CreateFailed","Creating"]}, {"Name": "Type","Values": ["HTTP"]}]上述条件的函数是，函数状态为创建失败或者创建中，且函数类型为 HTTP 函数
        # - `如果通过标签进行过滤：`Filter 中  Name 字段需要以 `tag-` 起始，`-` 后跟着标签名称，`Values` 指定对应的标签值
        #    示例值："Filters": [{"Name":"tag-dmtest","Values":["dmtest"]}]
        # - `入参限制：`
        # `Filter`:对应的`Name`支持的字段有：
        # `单 Value Filter`支持的 `Name` 字段入参：['VpcId', 'SubnetId', 'ClsTopicId', 'ClsLogsetId', 'Role', 'CfsId', 'CfsMountInsId', 'Eip']
        # `多 Value Filter`支持的 `Name` 字段入参：['Status', 'Runtime', 'Type', 'PublicNetStatus', 'AsyncRunEnable', 'TraceEnable', 'Stamp']

        # 单次 API 请求的`Filters` 的上限为`10`, 即Filters 最多有 10个 {"Name":"","Values":[]} `Name -Values` 的键值对。`Filter.Values`的上限，由 `Filter` 的 `Name` 决定。
        # 1.[ VpcId', 'SubnetId', 'ClsTopicId', 'ClsLogsetId', 'Role', 'CfsId', 'CfsMountInsId', 'Eip' ] 过滤的 Name 为这些属性时， Values `只能传一个值`
        #  2.['Status', 'Runtime', 'Type', 'PublicNetStatus', 'AsyncRunEnable', 'TraceEnable', 'Stamp'] 过滤的Name 为这些属性时 ，Values `至多可以传20个值`
        # @type Filters: Array

        attr_accessor :Order, :Orderby, :Offset, :Limit, :SearchKey, :Namespace, :Description, :Filters

        def initialize(order=nil, orderby=nil, offset=nil, limit=nil, searchkey=nil, namespace=nil, description=nil, filters=nil)
          @Order = order
          @Orderby = orderby
          @Offset = offset
          @Limit = limit
          @SearchKey = searchkey
          @Namespace = namespace
          @Description = description
          @Filters = filters
        end

        def deserialize(params)
          @Order = params['Order']
          @Orderby = params['Orderby']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchKey = params['SearchKey']
          @Namespace = params['Namespace']
          @Description = params['Description']
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

      # ListFunctions返回参数结构体
      class ListFunctionsResponse < TencentCloud::Common::AbstractModel
        # @param Functions: 函数列表
        # @type Functions: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Functions, :TotalCount, :RequestId

        def initialize(functions=nil, totalcount=nil, requestid=nil)
          @Functions = functions
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Functions'].nil?
            @Functions = []
            params['Functions'].each do |i|
              function_tmp = Function.new
              function_tmp.deserialize(i)
              @Functions << function_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListLayerVersions请求参数结构体
      class ListLayerVersionsRequest < TencentCloud::Common::AbstractModel
        # @param LayerName: 层名称
        # @type LayerName: String
        # @param CompatibleRuntime: 适配的运行时
        # @type CompatibleRuntime: Array

        attr_accessor :LayerName, :CompatibleRuntime

        def initialize(layername=nil, compatibleruntime=nil)
          @LayerName = layername
          @CompatibleRuntime = compatibleruntime
        end

        def deserialize(params)
          @LayerName = params['LayerName']
          @CompatibleRuntime = params['CompatibleRuntime']
        end
      end

      # ListLayerVersions返回参数结构体
      class ListLayerVersionsResponse < TencentCloud::Common::AbstractModel
        # @param LayerVersions: 层版本列表
        # @type LayerVersions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LayerVersions, :RequestId

        def initialize(layerversions=nil, requestid=nil)
          @LayerVersions = layerversions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LayerVersions'].nil?
            @LayerVersions = []
            params['LayerVersions'].each do |i|
              layerversioninfo_tmp = LayerVersionInfo.new
              layerversioninfo_tmp.deserialize(i)
              @LayerVersions << layerversioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListLayers请求参数结构体
      class ListLayersRequest < TencentCloud::Common::AbstractModel
        # @param CompatibleRuntime: 适配的运行时
        # @type CompatibleRuntime: String
        # @param Offset: 偏移位置
        # @type Offset: Integer
        # @param Limit: 查询数目限制
        # @type Limit: Integer
        # @param SearchKey: 查询key，模糊匹配名称
        # @type SearchKey: String

        attr_accessor :CompatibleRuntime, :Offset, :Limit, :SearchKey

        def initialize(compatibleruntime=nil, offset=nil, limit=nil, searchkey=nil)
          @CompatibleRuntime = compatibleruntime
          @Offset = offset
          @Limit = limit
          @SearchKey = searchkey
        end

        def deserialize(params)
          @CompatibleRuntime = params['CompatibleRuntime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchKey = params['SearchKey']
        end
      end

      # ListLayers返回参数结构体
      class ListLayersResponse < TencentCloud::Common::AbstractModel
        # @param Layers: 层列表
        # @type Layers: Array
        # @param TotalCount: 层总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Layers, :TotalCount, :RequestId

        def initialize(layers=nil, totalcount=nil, requestid=nil)
          @Layers = layers
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Layers'].nil?
            @Layers = []
            params['Layers'].each do |i|
              layerversioninfo_tmp = LayerVersionInfo.new
              layerversioninfo_tmp.deserialize(i)
              @Layers << layerversioninfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListNamespaces请求参数结构体
      class ListNamespacesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数据长度，默认值为 20
        # @type Limit: Integer
        # @param Offset: 数据的偏移量，默认值为 0
        # @type Offset: Integer
        # @param Orderby: 根据哪个字段进行返回结果排序,支持以下字段：Name,Updatetime
        # @type Orderby: String
        # @param Order: 以升序还是降序的方式返回结果，可选值 ASC 和 DESC
        # @type Order: String
        # @param SearchKey: 关键字匹配搜索，Key 可选值为 Namespace 和 Description，多个搜索条件之间是与的关系
        # @type SearchKey: Array

        attr_accessor :Limit, :Offset, :Orderby, :Order, :SearchKey

        def initialize(limit=nil, offset=nil, orderby=nil, order=nil, searchkey=nil)
          @Limit = limit
          @Offset = offset
          @Orderby = orderby
          @Order = order
          @SearchKey = searchkey
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Orderby = params['Orderby']
          @Order = params['Order']
          unless params['SearchKey'].nil?
            @SearchKey = []
            params['SearchKey'].each do |i|
              searchkey_tmp = SearchKey.new
              searchkey_tmp.deserialize(i)
              @SearchKey << searchkey_tmp
            end
          end
        end
      end

      # ListNamespaces返回参数结构体
      class ListNamespacesResponse < TencentCloud::Common::AbstractModel
        # @param Namespaces: namespace详情
        # @type Namespaces: Array
        # @param TotalCount: 返回的namespace数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Namespaces, :TotalCount, :RequestId

        def initialize(namespaces=nil, totalcount=nil, requestid=nil)
          @Namespaces = namespaces
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Namespaces'].nil?
            @Namespaces = []
            params['Namespaces'].each do |i|
              namespace_tmp = Namespace.new
              namespace_tmp.deserialize(i)
              @Namespaces << namespace_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListTriggers请求参数结构体
      class ListTriggersRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param Namespace: 命名空间，默认是default
        # @type Namespace: String
        # @param Offset: 数据偏移量，默认值为 0
        # @type Offset: Integer
        # @param Limit: 返回数据长度，默认值为 20
        # @type Limit: Integer
        # @param OrderBy: 根据哪个字段进行返回结果排序,支持以下字段：add_time，mod_time，默认mod_time
        # @type OrderBy: String
        # @param Order: 以升序还是降序的方式返回结果，可选值 ASC 和 DESC，默认DESC
        # @type Order: String
        # @param Filters: * Qualifier: 函数版本，别名
        # * TriggerName: 函数触发器名称
        # * Description: 函数触发器描述
        # @type Filters: Array

        attr_accessor :FunctionName, :Namespace, :Offset, :Limit, :OrderBy, :Order, :Filters

        def initialize(functionname=nil, namespace=nil, offset=nil, limit=nil, orderby=nil, order=nil, filters=nil)
          @FunctionName = functionname
          @Namespace = namespace
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
          @Order = order
          @Filters = filters
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Namespace = params['Namespace']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderBy = params['OrderBy']
          @Order = params['Order']
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

      # ListTriggers返回参数结构体
      class ListTriggersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 触发器总数
        # @type TotalCount: Integer
        # @param Triggers: 触发器列表
        # @type Triggers: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              triggerinfo_tmp = TriggerInfo.new
              triggerinfo_tmp.deserialize(i)
              @Triggers << triggerinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListVersionByFunction请求参数结构体
      class ListVersionByFunctionRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数名
        # @type FunctionName: String
        # @param Namespace: 函数所在命名空间
        # @type Namespace: String
        # @param Offset: 数据偏移量，默认值为 0
        # @type Offset: Integer
        # @param Limit: 返回数据长度，默认值为 20
        # @type Limit: Integer
        # @param Order: 以升序还是降序的方式返回结果，可选值 ASC 和 DESC
        # @type Order: String
        # @param OrderBy: 根据哪个字段进行返回结果排序,支持以下字段：AddTime, ModTime
        # @type OrderBy: String

        attr_accessor :FunctionName, :Namespace, :Offset, :Limit, :Order, :OrderBy

        def initialize(functionname=nil, namespace=nil, offset=nil, limit=nil, order=nil, orderby=nil)
          @FunctionName = functionname
          @Namespace = namespace
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderBy = orderby
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Namespace = params['Namespace']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderBy = params['OrderBy']
        end
      end

      # ListVersionByFunction返回参数结构体
      class ListVersionByFunctionResponse < TencentCloud::Common::AbstractModel
        # @param FunctionVersion: 函数版本。
        # @type FunctionVersion: Array
        # @param Versions: 函数版本列表。
        # @type Versions: Array
        # @param TotalCount: 函数版本总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FunctionVersion, :Versions, :TotalCount, :RequestId

        def initialize(functionversion=nil, versions=nil, totalcount=nil, requestid=nil)
          @FunctionVersion = functionversion
          @Versions = versions
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @FunctionVersion = params['FunctionVersion']
          unless params['Versions'].nil?
            @Versions = []
            params['Versions'].each do |i|
              functionversion_tmp = FunctionVersion.new
              functionversion_tmp.deserialize(i)
              @Versions << functionversion_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 日志过滤条件，用于区分正确与错误日志
      class LogFilter < TencentCloud::Common::AbstractModel
        # @param RetCode: filter.RetCode的取值有：
        # not0 表示只返回错误日志，
        # is0 表示只返回正确日志，
        # TimeLimitExceeded 返回函数调用发生超时的日志，
        # ResourceLimitExceeded 返回函数调用发生资源超限的日志，
        # UserCodeException 返回函数调用发生用户代码错误的日志，
        # 无输入则返回所有日志。
        # @type RetCode: String

        attr_accessor :RetCode

        def initialize(retcode=nil)
          @RetCode = retcode
        end

        def deserialize(params)
          @RetCode = params['RetCode']
        end
      end

      # 日志搜索上下文
      class LogSearchContext < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: String
        # @param Limit: 日志条数
        # @type Limit: Integer
        # @param Keyword: 日志关键词
        # @type Keyword: String
        # @param Type: 日志类型，支持Application和Platform，默认为Application
        # @type Type: String

        attr_accessor :Offset, :Limit, :Keyword, :Type

        def initialize(offset=nil, limit=nil, keyword=nil, type=nil)
          @Offset = offset
          @Limit = limit
          @Keyword = keyword
          @Type = type
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Keyword = params['Keyword']
          @Type = params['Type']
        end
      end

      # 动态并发配置
      class MixNodeConfig < TencentCloud::Common::AbstractModel
        # @param NodeSpec: GPU机型名
        # @type NodeSpec: String
        # @param Num: 并发个数
        # @type Num: Integer

        attr_accessor :NodeSpec, :Num

        def initialize(nodespec=nil, num=nil)
          @NodeSpec = nodespec
          @Num = num
        end

        def deserialize(params)
          @NodeSpec = params['NodeSpec']
          @Num = params['Num']
        end
      end

      # 命名空间
      class Namespace < TencentCloud::Common::AbstractModel
        # @param ModTime: 命名空间创建时间
        # @type ModTime: String
        # @param AddTime: 命名空间修改时间
        # @type AddTime: String
        # @param Description: 命名空间描述
        # @type Description: String
        # @param Name: 命名空间名称
        # @type Name: String
        # @param Type: 默认default，TCB表示是小程序云开发创建的
        # @type Type: String

        attr_accessor :ModTime, :AddTime, :Description, :Name, :Type

        def initialize(modtime=nil, addtime=nil, description=nil, name=nil, type=nil)
          @ModTime = modtime
          @AddTime = addtime
          @Description = description
          @Name = name
          @Type = type
        end

        def deserialize(params)
          @ModTime = params['ModTime']
          @AddTime = params['AddTime']
          @Description = params['Description']
          @Name = params['Name']
          @Type = params['Type']
        end
      end

      # 命名空间限制
      class NamespaceLimit < TencentCloud::Common::AbstractModel
        # @param FunctionsCount: 函数总数
        # @type FunctionsCount: Integer
        # @param Trigger: Trigger信息
        # @type Trigger: :class:`Tencentcloud::Scf.v20180416.models.TriggerCount`
        # @param Namespace: Namespace名称
        # @type Namespace: String
        # @param ConcurrentExecutions: 并发量
        # @type ConcurrentExecutions: Integer
        # @param TimeoutLimit: Timeout限制
        # @type TimeoutLimit: Integer
        # @param TestModelLimit: 测试事件限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TestModelLimit: Integer
        # @param InitTimeoutLimit: 初始化超时限制
        # @type InitTimeoutLimit: Integer
        # @param RetryNumLimit: 异步重试次数限制
        # @type RetryNumLimit: Integer
        # @param MinMsgTTL: 异步重试消息保留时间下限
        # @type MinMsgTTL: Integer
        # @param MaxMsgTTL: 异步重试消息保留时间上限
        # @type MaxMsgTTL: Integer

        attr_accessor :FunctionsCount, :Trigger, :Namespace, :ConcurrentExecutions, :TimeoutLimit, :TestModelLimit, :InitTimeoutLimit, :RetryNumLimit, :MinMsgTTL, :MaxMsgTTL

        def initialize(functionscount=nil, trigger=nil, namespace=nil, concurrentexecutions=nil, timeoutlimit=nil, testmodellimit=nil, inittimeoutlimit=nil, retrynumlimit=nil, minmsgttl=nil, maxmsgttl=nil)
          @FunctionsCount = functionscount
          @Trigger = trigger
          @Namespace = namespace
          @ConcurrentExecutions = concurrentexecutions
          @TimeoutLimit = timeoutlimit
          @TestModelLimit = testmodellimit
          @InitTimeoutLimit = inittimeoutlimit
          @RetryNumLimit = retrynumlimit
          @MinMsgTTL = minmsgttl
          @MaxMsgTTL = maxmsgttl
        end

        def deserialize(params)
          @FunctionsCount = params['FunctionsCount']
          unless params['Trigger'].nil?
            @Trigger = TriggerCount.new
            @Trigger.deserialize(params['Trigger'])
          end
          @Namespace = params['Namespace']
          @ConcurrentExecutions = params['ConcurrentExecutions']
          @TimeoutLimit = params['TimeoutLimit']
          @TestModelLimit = params['TestModelLimit']
          @InitTimeoutLimit = params['InitTimeoutLimit']
          @RetryNumLimit = params['RetryNumLimit']
          @MinMsgTTL = params['MinMsgTTL']
          @MaxMsgTTL = params['MaxMsgTTL']
        end
      end

      # 命名空间资源池配置
      class NamespaceResourceEnv < TencentCloud::Common::AbstractModel
        # @param TKE: 基于TKE集群的资源池
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TKE: :class:`Tencentcloud::Scf.v20180416.models.NamespaceResourceEnvTKE`
        # @param OFFLINE: 近离线计算类型的命名空间
        # @type OFFLINE: Boolean

        attr_accessor :TKE, :OFFLINE

        def initialize(tke=nil, offline=nil)
          @TKE = tke
          @OFFLINE = offline
        end

        def deserialize(params)
          unless params['TKE'].nil?
            @TKE = NamespaceResourceEnvTKE.new
            @TKE.deserialize(params['TKE'])
          end
          @OFFLINE = params['OFFLINE']
        end
      end

      # 基于TKE的资源池选项
      class NamespaceResourceEnvTKE < TencentCloud::Common::AbstractModel
        # @param ClusterID: 集群ID
        # @type ClusterID: String
        # @param SubnetID: 子网ID
        # @type SubnetID: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param DataPath: 数据存储地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataPath: String
        # @param NodeSelector: node选择器
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeSelector: Array
        # @param Tolerations: 污点容忍
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tolerations: Array
        # @param Port: scf组件将占用的节点端口起始号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param PodTemplatePatch: yaml格式的pod patch内容，例如
        # metadata:
        #   labels:
        #     key: value
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodTemplatePatch: String

        attr_accessor :ClusterID, :SubnetID, :Namespace, :DataPath, :NodeSelector, :Tolerations, :Port, :PodTemplatePatch

        def initialize(clusterid=nil, subnetid=nil, namespace=nil, datapath=nil, nodeselector=nil, tolerations=nil, port=nil, podtemplatepatch=nil)
          @ClusterID = clusterid
          @SubnetID = subnetid
          @Namespace = namespace
          @DataPath = datapath
          @NodeSelector = nodeselector
          @Tolerations = tolerations
          @Port = port
          @PodTemplatePatch = podtemplatepatch
        end

        def deserialize(params)
          @ClusterID = params['ClusterID']
          @SubnetID = params['SubnetID']
          @Namespace = params['Namespace']
          @DataPath = params['DataPath']
          unless params['NodeSelector'].nil?
            @NodeSelector = []
            params['NodeSelector'].each do |i|
              k8slabel_tmp = K8SLabel.new
              k8slabel_tmp.deserialize(i)
              @NodeSelector << k8slabel_tmp
            end
          end
          unless params['Tolerations'].nil?
            @Tolerations = []
            params['Tolerations'].each do |i|
              k8stoleration_tmp = K8SToleration.new
              k8stoleration_tmp.deserialize(i)
              @Tolerations << k8stoleration_tmp
            end
          end
          @Port = params['Port']
          @PodTemplatePatch = params['PodTemplatePatch']
        end
      end

      # 名称空间已使用信息
      class NamespaceUsage < TencentCloud::Common::AbstractModel
        # @param Functions: 函数数组
        # @type Functions: Array
        # @param Namespace: 命名空间名称
        # @type Namespace: String
        # @param FunctionsCount: 命名空间函数个数
        # @type FunctionsCount: Integer
        # @param TotalConcurrencyMem: 命名空间配额总量
        # @type TotalConcurrencyMem: Integer
        # @param TotalAllocatedConcurrencyMem: 命名空间并发使用量
        # @type TotalAllocatedConcurrencyMem: Integer
        # @param TotalAllocatedProvisionedMem: 命名空间预置使用量
        # @type TotalAllocatedProvisionedMem: Integer

        attr_accessor :Functions, :Namespace, :FunctionsCount, :TotalConcurrencyMem, :TotalAllocatedConcurrencyMem, :TotalAllocatedProvisionedMem

        def initialize(functions=nil, namespace=nil, functionscount=nil, totalconcurrencymem=nil, totalallocatedconcurrencymem=nil, totalallocatedprovisionedmem=nil)
          @Functions = functions
          @Namespace = namespace
          @FunctionsCount = functionscount
          @TotalConcurrencyMem = totalconcurrencymem
          @TotalAllocatedConcurrencyMem = totalallocatedconcurrencymem
          @TotalAllocatedProvisionedMem = totalallocatedprovisionedmem
        end

        def deserialize(params)
          @Functions = params['Functions']
          @Namespace = params['Namespace']
          @FunctionsCount = params['FunctionsCount']
          @TotalConcurrencyMem = params['TotalConcurrencyMem']
          @TotalAllocatedConcurrencyMem = params['TotalAllocatedConcurrencyMem']
          @TotalAllocatedProvisionedMem = params['TotalAllocatedProvisionedMem']
        end
      end

      # 路径路由重写规则
      class PathRewriteRule < TencentCloud::Common::AbstractModel
        # @param Path: 需要重路由的路径，取值规范：/，/*，/xxx，/xxx/a，/xxx/*
        # @type Path: String
        # @param Type: 匹配规，取值范围： WildcardRules 通配符匹配， ExactRules 精确匹配
        # @type Type: String
        # @param Rewrite: 替换值：比如/, /$
        # @type Rewrite: String

        attr_accessor :Path, :Type, :Rewrite

        def initialize(path=nil, type=nil, rewrite=nil)
          @Path = path
          @Type = type
          @Rewrite = rewrite
        end

        def deserialize(params)
          @Path = params['Path']
          @Type = params['Type']
          @Rewrite = params['Rewrite']
        end
      end

      # HTTP函数支持其他访问协议的参数
      class ProtocolParams < TencentCloud::Common::AbstractModel
        # @param WSParams: WebSockets协议支持的参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WSParams: :class:`Tencentcloud::Scf.v20180416.models.WSParams`

        attr_accessor :WSParams

        def initialize(wsparams=nil)
          @WSParams = wsparams
        end

        def deserialize(params)
          unless params['WSParams'].nil?
            @WSParams = WSParams.new
            @WSParams.deserialize(params['WSParams'])
          end
        end
      end

      # 公网访问配置
      class PublicNetConfigIn < TencentCloud::Common::AbstractModel
        # @param PublicNetStatus: 是否开启公网访问能力取值['DISABLE','ENABLE']
        # @type PublicNetStatus: String
        # @param EipConfig: Eip配置
        # @type EipConfig: :class:`Tencentcloud::Scf.v20180416.models.EipConfigIn`

        attr_accessor :PublicNetStatus, :EipConfig

        def initialize(publicnetstatus=nil, eipconfig=nil)
          @PublicNetStatus = publicnetstatus
          @EipConfig = eipconfig
        end

        def deserialize(params)
          @PublicNetStatus = params['PublicNetStatus']
          unless params['EipConfig'].nil?
            @EipConfig = EipConfigIn.new
            @EipConfig.deserialize(params['EipConfig'])
          end
        end
      end

      # 公网访问配置
      class PublicNetConfigOut < TencentCloud::Common::AbstractModel
        # @param PublicNetStatus: 是否开启公网访问能力取值['DISABLE','ENABLE']
        # @type PublicNetStatus: String
        # @param EipConfig: Eip配置
        # @type EipConfig: :class:`Tencentcloud::Scf.v20180416.models.EipConfigOut`

        attr_accessor :PublicNetStatus, :EipConfig

        def initialize(publicnetstatus=nil, eipconfig=nil)
          @PublicNetStatus = publicnetstatus
          @EipConfig = eipconfig
        end

        def deserialize(params)
          @PublicNetStatus = params['PublicNetStatus']
          unless params['EipConfig'].nil?
            @EipConfig = EipConfigOut.new
            @EipConfig.deserialize(params['EipConfig'])
          end
        end
      end

      # PublishLayerVersion请求参数结构体
      class PublishLayerVersionRequest < TencentCloud::Common::AbstractModel
        # @param LayerName: 层名称，支持26个英文字母大小写、数字、连接符和下划线，第一个字符只能以字母开头，最后一个字符不能为连接符或者下划线，名称长度1-64
        # @type LayerName: String
        # @param CompatibleRuntimes: 层适用的运行时，可多选，可选的值对应函数的 Runtime 可选值。
        # @type CompatibleRuntimes: Array
        # @param Content: 层的文件来源或文件内容
        # @type Content: :class:`Tencentcloud::Scf.v20180416.models.Code`
        # @param Description: 层的版本的描述
        # @type Description: String
        # @param LicenseInfo: 层的软件许可证
        # @type LicenseInfo: String
        # @param Tags: 层Tag 参数，以键值对数组形式传入
        # @type Tags: Array

        attr_accessor :LayerName, :CompatibleRuntimes, :Content, :Description, :LicenseInfo, :Tags

        def initialize(layername=nil, compatibleruntimes=nil, content=nil, description=nil, licenseinfo=nil, tags=nil)
          @LayerName = layername
          @CompatibleRuntimes = compatibleruntimes
          @Content = content
          @Description = description
          @LicenseInfo = licenseinfo
          @Tags = tags
        end

        def deserialize(params)
          @LayerName = params['LayerName']
          @CompatibleRuntimes = params['CompatibleRuntimes']
          unless params['Content'].nil?
            @Content = Code.new
            @Content.deserialize(params['Content'])
          end
          @Description = params['Description']
          @LicenseInfo = params['LicenseInfo']
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

      # PublishLayerVersion返回参数结构体
      class PublishLayerVersionResponse < TencentCloud::Common::AbstractModel
        # @param LayerVersion: 本次创建的层的版本号
        # @type LayerVersion: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LayerVersion, :RequestId

        def initialize(layerversion=nil, requestid=nil)
          @LayerVersion = layerversion
          @RequestId = requestid
        end

        def deserialize(params)
          @LayerVersion = params['LayerVersion']
          @RequestId = params['RequestId']
        end
      end

      # PublishVersion请求参数结构体
      class PublishVersionRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 发布函数的名称
        # @type FunctionName: String
        # @param Description: 函数的描述
        # @type Description: String
        # @param Namespace: 函数的命名空间
        # @type Namespace: String

        attr_accessor :FunctionName, :Description, :Namespace

        def initialize(functionname=nil, description=nil, namespace=nil)
          @FunctionName = functionname
          @Description = description
          @Namespace = namespace
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Description = params['Description']
          @Namespace = params['Namespace']
        end
      end

      # PublishVersion返回参数结构体
      class PublishVersionResponse < TencentCloud::Common::AbstractModel
        # @param FunctionVersion: 函数的版本
        # @type FunctionVersion: String
        # @param CodeSize: 代码大小
        # @type CodeSize: Integer
        # @param MemorySize: 最大可用内存
        # @type MemorySize: Integer
        # @param Description: 函数的描述
        # @type Description: String
        # @param Handler: 函数的入口
        # @type Handler: String
        # @param Timeout: 函数的超时时间
        # @type Timeout: Integer
        # @param Runtime: 函数的运行环境
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Runtime: String
        # @param Namespace: 函数的命名空间
        # @type Namespace: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FunctionVersion, :CodeSize, :MemorySize, :Description, :Handler, :Timeout, :Runtime, :Namespace, :RequestId

        def initialize(functionversion=nil, codesize=nil, memorysize=nil, description=nil, handler=nil, timeout=nil, runtime=nil, namespace=nil, requestid=nil)
          @FunctionVersion = functionversion
          @CodeSize = codesize
          @MemorySize = memorysize
          @Description = description
          @Handler = handler
          @Timeout = timeout
          @Runtime = runtime
          @Namespace = namespace
          @RequestId = requestid
        end

        def deserialize(params)
          @FunctionVersion = params['FunctionVersion']
          @CodeSize = params['CodeSize']
          @MemorySize = params['MemorySize']
          @Description = params['Description']
          @Handler = params['Handler']
          @Timeout = params['Timeout']
          @Runtime = params['Runtime']
          @Namespace = params['Namespace']
          @RequestId = params['RequestId']
        end
      end

      # PutProvisionedConcurrencyConfig请求参数结构体
      class PutProvisionedConcurrencyConfigRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 需要设置预置并发的函数的名称
        # @type FunctionName: String
        # @param Qualifier: 函数的版本号，注：$LATEST版本不支持预置并发
        # @type Qualifier: String
        # @param VersionProvisionedConcurrencyNum: 预置并发数量，注：所有版本的预置并发数总和存在上限限制，当前的上限是：函数最大并发配额 - 100
        # @type VersionProvisionedConcurrencyNum: Integer
        # @param Namespace: 函数所属命名空间，默认为default
        # @type Namespace: String
        # @param TriggerActions: 定时预置任务
        # @type TriggerActions: Array
        # @param ProvisionedType: 预置类型，
        # 静态预置：Default
        # 动态追踪并发利用率指标预置：ConcurrencyUtilizationTracking
        # 预置类型二选一，设置静态预置时可以设置VersionProvisionedConcurrencyNum。

        # 动态利用率预置可以设置TrackingTarget，MinCapacity，MaxCapacity，保持向后兼容性此时VersionProvisionedConcurrencyNum设置为0.
        # @type ProvisionedType: String
        # @param TrackingTarget: 指标追踪的并发利用率。设置范围(0,1)
        # @type TrackingTarget: Float
        # @param MinCapacity: 缩容时的最小值, 最小值为1
        # @type MinCapacity: Integer
        # @param MaxCapacity: 扩容时的最大值
        # @type MaxCapacity: Integer

        attr_accessor :FunctionName, :Qualifier, :VersionProvisionedConcurrencyNum, :Namespace, :TriggerActions, :ProvisionedType, :TrackingTarget, :MinCapacity, :MaxCapacity

        def initialize(functionname=nil, qualifier=nil, versionprovisionedconcurrencynum=nil, namespace=nil, triggeractions=nil, provisionedtype=nil, trackingtarget=nil, mincapacity=nil, maxcapacity=nil)
          @FunctionName = functionname
          @Qualifier = qualifier
          @VersionProvisionedConcurrencyNum = versionprovisionedconcurrencynum
          @Namespace = namespace
          @TriggerActions = triggeractions
          @ProvisionedType = provisionedtype
          @TrackingTarget = trackingtarget
          @MinCapacity = mincapacity
          @MaxCapacity = maxcapacity
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Qualifier = params['Qualifier']
          @VersionProvisionedConcurrencyNum = params['VersionProvisionedConcurrencyNum']
          @Namespace = params['Namespace']
          unless params['TriggerActions'].nil?
            @TriggerActions = []
            params['TriggerActions'].each do |i|
              triggeraction_tmp = TriggerAction.new
              triggeraction_tmp.deserialize(i)
              @TriggerActions << triggeraction_tmp
            end
          end
          @ProvisionedType = params['ProvisionedType']
          @TrackingTarget = params['TrackingTarget']
          @MinCapacity = params['MinCapacity']
          @MaxCapacity = params['MaxCapacity']
        end
      end

      # PutProvisionedConcurrencyConfig返回参数结构体
      class PutProvisionedConcurrencyConfigResponse < TencentCloud::Common::AbstractModel
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

      # PutReservedConcurrencyConfig请求参数结构体
      class PutReservedConcurrencyConfigRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 需要设置最大独占配额的函数的名称
        # @type FunctionName: String
        # @param ReservedConcurrencyMem: 函数最大独占配额，注：函数的最大独占配额内存总和上限：用户总并发内存配额 - 12800
        # @type ReservedConcurrencyMem: Integer
        # @param Namespace: 函数所属命名空间，默认为default
        # @type Namespace: String

        attr_accessor :FunctionName, :ReservedConcurrencyMem, :Namespace

        def initialize(functionname=nil, reservedconcurrencymem=nil, namespace=nil)
          @FunctionName = functionname
          @ReservedConcurrencyMem = reservedconcurrencymem
          @Namespace = namespace
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @ReservedConcurrencyMem = params['ReservedConcurrencyMem']
          @Namespace = params['Namespace']
        end
      end

      # PutReservedConcurrencyConfig返回参数结构体
      class PutReservedConcurrencyConfigResponse < TencentCloud::Common::AbstractModel
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

      # PutTotalConcurrencyConfig请求参数结构体
      class PutTotalConcurrencyConfigRequest < TencentCloud::Common::AbstractModel
        # @param TotalConcurrencyMem: 账号并发内存配额，注：账号并发内存配额下限：用户已用并发内存总额 + 12800
        # @type TotalConcurrencyMem: Integer
        # @param Namespace: 命名空间，默认为default
        # @type Namespace: String

        attr_accessor :TotalConcurrencyMem, :Namespace

        def initialize(totalconcurrencymem=nil, namespace=nil)
          @TotalConcurrencyMem = totalconcurrencymem
          @Namespace = namespace
        end

        def deserialize(params)
          @TotalConcurrencyMem = params['TotalConcurrencyMem']
          @Namespace = params['Namespace']
        end
      end

      # PutTotalConcurrencyConfig返回参数结构体
      class PutTotalConcurrencyConfigResponse < TencentCloud::Common::AbstractModel
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

      # 函数运行状态
      class RequestStatus < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数的名称
        # @type FunctionName: String
        # @param RetMsg: 函数执行完成后的返回值
        # @type RetMsg: String
        # @param RequestId: 查询的请求 id
        # @type RequestId: String
        # @param StartTime: 请求开始时间
        # @type StartTime: String
        # @param RetCode: 请求执行结果， 0 表示执行成功，1表示运行中，-1 表示执行异常。
        # @type RetCode: Integer
        # @param Duration: 请求运行耗时，单位：ms
        # @type Duration: Float
        # @param MemUsage: 请求消耗内存，单位为 MB
        # @type MemUsage: Float
        # @param RetryNum: 重试次数
        # @type RetryNum: Integer

        attr_accessor :FunctionName, :RetMsg, :RequestId, :StartTime, :RetCode, :Duration, :MemUsage, :RetryNum

        def initialize(functionname=nil, retmsg=nil, requestid=nil, starttime=nil, retcode=nil, duration=nil, memusage=nil, retrynum=nil)
          @FunctionName = functionname
          @RetMsg = retmsg
          @RequestId = requestid
          @StartTime = starttime
          @RetCode = retcode
          @Duration = duration
          @MemUsage = memusage
          @RetryNum = retrynum
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @RetMsg = params['RetMsg']
          @RequestId = params['RequestId']
          @StartTime = params['StartTime']
          @RetCode = params['RetCode']
          @Duration = params['Duration']
          @MemUsage = params['MemUsage']
          @RetryNum = params['RetryNum']
        end
      end

      # 运行函数的返回
      class Result < TencentCloud::Common::AbstractModel
        # @param Log: 表示执行过程中的日志输出，异步调用返回为空
        # @type Log: String
        # @param RetMsg: 表示执行函数的返回，异步调用返回为空
        # @type RetMsg: String
        # @param ErrMsg: 表示执行函数的错误返回信息，异步调用返回为空
        # @type ErrMsg: String
        # @param MemUsage: 执行函数时的内存大小，单位为Byte，异步调用返回为空
        # @type MemUsage: Integer
        # @param Duration: 表示执行函数的耗时，单位是毫秒，异步调用返回为空
        # @type Duration: Float
        # @param BillDuration: 表示函数的计费耗时，单位是毫秒，异步调用返回为空
        # @type BillDuration: Integer
        # @param FunctionRequestId: 此次函数执行的Id
        # @type FunctionRequestId: String
        # @param InvokeResult: 该参数不再维护，不推荐用户继续使用。
        # @type InvokeResult: Integer

        attr_accessor :Log, :RetMsg, :ErrMsg, :MemUsage, :Duration, :BillDuration, :FunctionRequestId, :InvokeResult

        def initialize(log=nil, retmsg=nil, errmsg=nil, memusage=nil, duration=nil, billduration=nil, functionrequestid=nil, invokeresult=nil)
          @Log = log
          @RetMsg = retmsg
          @ErrMsg = errmsg
          @MemUsage = memusage
          @Duration = duration
          @BillDuration = billduration
          @FunctionRequestId = functionrequestid
          @InvokeResult = invokeresult
        end

        def deserialize(params)
          @Log = params['Log']
          @RetMsg = params['RetMsg']
          @ErrMsg = params['ErrMsg']
          @MemUsage = params['MemUsage']
          @Duration = params['Duration']
          @BillDuration = params['BillDuration']
          @FunctionRequestId = params['FunctionRequestId']
          @InvokeResult = params['InvokeResult']
        end
      end

      # 异步重试配置
      class RetryConfig < TencentCloud::Common::AbstractModel
        # @param RetryNum: 重试次数
        # @type RetryNum: Integer

        attr_accessor :RetryNum

        def initialize(retrynum=nil)
          @RetryNum = retrynum
        end

        def deserialize(params)
          @RetryNum = params['RetryNum']
        end
      end

      # 别名的版本路由配置
      # 其中：随机权重路由附加版本和规则路由附加版本不可以同时配置
      class RoutingConfig < TencentCloud::Common::AbstractModel
        # @param AdditionalVersionWeights: 随机权重路由附加版本
        # @type AdditionalVersionWeights: Array
        # @param AddtionVersionMatchs: 规则路由附加版本
        # @type AddtionVersionMatchs: Array

        attr_accessor :AdditionalVersionWeights, :AddtionVersionMatchs

        def initialize(additionalversionweights=nil, addtionversionmatchs=nil)
          @AdditionalVersionWeights = additionalversionweights
          @AddtionVersionMatchs = addtionversionmatchs
        end

        def deserialize(params)
          unless params['AdditionalVersionWeights'].nil?
            @AdditionalVersionWeights = []
            params['AdditionalVersionWeights'].each do |i|
              versionweight_tmp = VersionWeight.new
              versionweight_tmp.deserialize(i)
              @AdditionalVersionWeights << versionweight_tmp
            end
          end
          unless params['AddtionVersionMatchs'].nil?
            @AddtionVersionMatchs = []
            params['AddtionVersionMatchs'].each do |i|
              versionmatch_tmp = VersionMatch.new
              versionmatch_tmp.deserialize(i)
              @AddtionVersionMatchs << versionmatch_tmp
            end
          end
        end
      end

      # 包含搜索关键字和对应的内容
      class SearchKey < TencentCloud::Common::AbstractModel
        # @param Key: 搜索关键字
        # @type Key: String
        # @param Value: 搜索内容
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

      # 会话参数
      class SessionConfig < TencentCloud::Common::AbstractModel
        # @param SessionSource: session 来源，三选一：'HEADER', 'COOKIE', 'QUERY_STRING'
        # @type SessionSource: String
        # @param SessionName: session 名称，以字母开头，非首字母可包含数字、字母、下划线、中划线，长度5-40个字符
        # @type SessionName: String
        # @param MaximumConcurrencySessionPerInstance: 最大并发会话数
        # @type MaximumConcurrencySessionPerInstance: Integer
        # @param MaximumTTLInSeconds: 生命周期
        # @type MaximumTTLInSeconds: Integer
        # @param MaximumIdleTimeInSeconds: 空闲时长
        # @type MaximumIdleTimeInSeconds: Integer
        # @param SessionPath: session 对应的路径信息
        # @type SessionPath: String
        # @param IdleTimeoutStrategy: 自动销毁 FATAL、自动暂停PAUSE， 只有启动安全隔离的时候才会有
        # @type IdleTimeoutStrategy: String

        attr_accessor :SessionSource, :SessionName, :MaximumConcurrencySessionPerInstance, :MaximumTTLInSeconds, :MaximumIdleTimeInSeconds, :SessionPath, :IdleTimeoutStrategy

        def initialize(sessionsource=nil, sessionname=nil, maximumconcurrencysessionperinstance=nil, maximumttlinseconds=nil, maximumidletimeinseconds=nil, sessionpath=nil, idletimeoutstrategy=nil)
          @SessionSource = sessionsource
          @SessionName = sessionname
          @MaximumConcurrencySessionPerInstance = maximumconcurrencysessionperinstance
          @MaximumTTLInSeconds = maximumttlinseconds
          @MaximumIdleTimeInSeconds = maximumidletimeinseconds
          @SessionPath = sessionpath
          @IdleTimeoutStrategy = idletimeoutstrategy
        end

        def deserialize(params)
          @SessionSource = params['SessionSource']
          @SessionName = params['SessionName']
          @MaximumConcurrencySessionPerInstance = params['MaximumConcurrencySessionPerInstance']
          @MaximumTTLInSeconds = params['MaximumTTLInSeconds']
          @MaximumIdleTimeInSeconds = params['MaximumIdleTimeInSeconds']
          @SessionPath = params['SessionPath']
          @IdleTimeoutStrategy = params['IdleTimeoutStrategy']
        end
      end

      # 状态原因描述
      class StatusReason < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 错误码
        # @type ErrorCode: String
        # @param ErrorMessage: 错误描述
        # @type ErrorMessage: String

        attr_accessor :ErrorCode, :ErrorMessage

        def initialize(errorcode=nil, errormessage=nil)
          @ErrorCode = errorcode
          @ErrorMessage = errormessage
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @ErrorMessage = params['ErrorMessage']
        end
      end

      # 函数标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签的key
        # @type Key: String
        # @param Value: 标签的value
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

      # TerminateAsyncEvent请求参数结构体
      class TerminateAsyncEventRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param InvokeRequestId: 终止的调用请求id
        # @type InvokeRequestId: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param GraceShutdown: true，向指定请求[发送 SIGTERM 终止信号](https://cloud.tencent.com/document/product/583/63969#.E5.8F.91.E9.80.81.E7.BB.88.E6.AD.A2.E4.BF.A1.E5.8F.B7]， ，默认值为 false。
        # @type GraceShutdown: Boolean

        attr_accessor :FunctionName, :InvokeRequestId, :Namespace, :GraceShutdown

        def initialize(functionname=nil, invokerequestid=nil, namespace=nil, graceshutdown=nil)
          @FunctionName = functionname
          @InvokeRequestId = invokerequestid
          @Namespace = namespace
          @GraceShutdown = graceshutdown
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @InvokeRequestId = params['InvokeRequestId']
          @Namespace = params['Namespace']
          @GraceShutdown = params['GraceShutdown']
        end
      end

      # TerminateAsyncEvent返回参数结构体
      class TerminateAsyncEventResponse < TencentCloud::Common::AbstractModel
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

      # 左闭右开时间区间，包括起始时间和结束时间，格式为"%Y-%m-%d %H:%M:%S"
      class TimeInterval < TencentCloud::Common::AbstractModel
        # @param Start: 起始时间（包括在内），格式"%Y-%m-%d %H:%M:%S"
        # @type Start: String
        # @param End: 结束时间（不包括在内），格式"%Y-%m-%d %H:%M:%S"
        # @type End: String

        attr_accessor :Start, :End

        def initialize(start=nil, _end=nil)
          @Start = start
          @End = _end
        end

        def deserialize(params)
          @Start = params['Start']
          @End = params['End']
        end
      end

      # 触发器类型
      class Trigger < TencentCloud::Common::AbstractModel
        # @param ModTime: 触发器最后修改时间
        # @type ModTime: String
        # @param Type: 触发器类型
        # @type Type: String
        # @param TriggerDesc: 触发器详细配置
        # @type TriggerDesc: String
        # @param TriggerName: 触发器名称
        # @type TriggerName: String
        # @param AddTime: 触发器创建时间
        # @type AddTime: String
        # @param Enable: 使能开关
        # @type Enable: Integer
        # @param CustomArgument: 客户自定义参数
        # @type CustomArgument: String
        # @param AvailableStatus: 触发器状态
        # @type AvailableStatus: String
        # @param ResourceId: 触发器最小资源ID
        # @type ResourceId: String
        # @param BindStatus: 触发器和云函数绑定状态
        # @type BindStatus: String
        # @param TriggerAttribute: 触发器类型，双向表示两侧控制台均可操作，单向表示SCF控制台单向创建
        # @type TriggerAttribute: String
        # @param Qualifier: 触发器绑定的别名或版本
        # @type Qualifier: String
        # @param Description: 触发器描述
        # @type Description: String

        attr_accessor :ModTime, :Type, :TriggerDesc, :TriggerName, :AddTime, :Enable, :CustomArgument, :AvailableStatus, :ResourceId, :BindStatus, :TriggerAttribute, :Qualifier, :Description
        extend Gem::Deprecate
        deprecate :ResourceId, :none, 2026, 1
        deprecate :ResourceId=, :none, 2026, 1
        deprecate :BindStatus, :none, 2026, 1
        deprecate :BindStatus=, :none, 2026, 1
        deprecate :TriggerAttribute, :none, 2026, 1
        deprecate :TriggerAttribute=, :none, 2026, 1

        def initialize(modtime=nil, type=nil, triggerdesc=nil, triggername=nil, addtime=nil, enable=nil, customargument=nil, availablestatus=nil, resourceid=nil, bindstatus=nil, triggerattribute=nil, qualifier=nil, description=nil)
          @ModTime = modtime
          @Type = type
          @TriggerDesc = triggerdesc
          @TriggerName = triggername
          @AddTime = addtime
          @Enable = enable
          @CustomArgument = customargument
          @AvailableStatus = availablestatus
          @ResourceId = resourceid
          @BindStatus = bindstatus
          @TriggerAttribute = triggerattribute
          @Qualifier = qualifier
          @Description = description
        end

        def deserialize(params)
          @ModTime = params['ModTime']
          @Type = params['Type']
          @TriggerDesc = params['TriggerDesc']
          @TriggerName = params['TriggerName']
          @AddTime = params['AddTime']
          @Enable = params['Enable']
          @CustomArgument = params['CustomArgument']
          @AvailableStatus = params['AvailableStatus']
          @ResourceId = params['ResourceId']
          @BindStatus = params['BindStatus']
          @TriggerAttribute = params['TriggerAttribute']
          @Qualifier = params['Qualifier']
          @Description = params['Description']
        end
      end

      # 预置定时任务动作
      class TriggerAction < TencentCloud::Common::AbstractModel
        # @param TriggerName: 定时预置名称
        # @type TriggerName: String
        # @param TriggerProvisionedConcurrencyNum: 定时预置并发数量
        # @type TriggerProvisionedConcurrencyNum: Integer
        # @param TriggerCronConfig: 设置定时触发器的时间配置，cron表达式。Cron 表达式有七个必需字段，按空格分隔。
        # @type TriggerCronConfig: String
        # @param ProvisionedType: 预置类型 Default
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProvisionedType: String

        attr_accessor :TriggerName, :TriggerProvisionedConcurrencyNum, :TriggerCronConfig, :ProvisionedType

        def initialize(triggername=nil, triggerprovisionedconcurrencynum=nil, triggercronconfig=nil, provisionedtype=nil)
          @TriggerName = triggername
          @TriggerProvisionedConcurrencyNum = triggerprovisionedconcurrencynum
          @TriggerCronConfig = triggercronconfig
          @ProvisionedType = provisionedtype
        end

        def deserialize(params)
          @TriggerName = params['TriggerName']
          @TriggerProvisionedConcurrencyNum = params['TriggerProvisionedConcurrencyNum']
          @TriggerCronConfig = params['TriggerCronConfig']
          @ProvisionedType = params['ProvisionedType']
        end
      end

      # TriggerCount描述不同类型触发器的数量
      class TriggerCount < TencentCloud::Common::AbstractModel
        # @param Cos: Cos触发器数量
        # @type Cos: Integer
        # @param Timer: Timer触发器数量
        # @type Timer: Integer
        # @param Cmq: Cmq触发器数量
        # @type Cmq: Integer
        # @param Total: 触发器总数
        # @type Total: Integer
        # @param Ckafka: Ckafka触发器数量
        # @type Ckafka: Integer
        # @param Apigw: Apigw触发器数量
        # @type Apigw: Integer
        # @param Cls: Cls触发器数量
        # @type Cls: Integer
        # @param Clb: Clb触发器数量
        # @type Clb: Integer
        # @param Mps: Mps触发器数量
        # @type Mps: Integer
        # @param Cm: Cm触发器数量
        # @type Cm: Integer
        # @param Vod: Vod触发器数量
        # @type Vod: Integer
        # @param Eb: Eb触发器数量
        # @type Eb: Integer

        attr_accessor :Cos, :Timer, :Cmq, :Total, :Ckafka, :Apigw, :Cls, :Clb, :Mps, :Cm, :Vod, :Eb

        def initialize(cos=nil, timer=nil, cmq=nil, total=nil, ckafka=nil, apigw=nil, cls=nil, clb=nil, mps=nil, cm=nil, vod=nil, eb=nil)
          @Cos = cos
          @Timer = timer
          @Cmq = cmq
          @Total = total
          @Ckafka = ckafka
          @Apigw = apigw
          @Cls = cls
          @Clb = clb
          @Mps = mps
          @Cm = cm
          @Vod = vod
          @Eb = eb
        end

        def deserialize(params)
          @Cos = params['Cos']
          @Timer = params['Timer']
          @Cmq = params['Cmq']
          @Total = params['Total']
          @Ckafka = params['Ckafka']
          @Apigw = params['Apigw']
          @Cls = params['Cls']
          @Clb = params['Clb']
          @Mps = params['Mps']
          @Cm = params['Cm']
          @Vod = params['Vod']
          @Eb = params['Eb']
        end
      end

      # 触发器信息
      class TriggerInfo < TencentCloud::Common::AbstractModel
        # @param Enable: 使能开关
        # @type Enable: Integer
        # @param Qualifier: 函数版本或别名
        # @type Qualifier: String
        # @param TriggerName: 触发器名称
        # @type TriggerName: String
        # @param Type: 触发器类型
        # @type Type: String
        # @param TriggerDesc: 触发器详细配置
        # @type TriggerDesc: String
        # @param AvailableStatus: 触发器是否可用
        # @type AvailableStatus: String
        # @param CustomArgument: 客户自定义参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomArgument: String
        # @param AddTime: 触发器创建时间
        # @type AddTime: String
        # @param ModTime: 触发器最后修改时间
        # @type ModTime: String
        # @param ResourceId: 触发器最小资源ID
        # @type ResourceId: String
        # @param BindStatus: 触发器和云函数绑定状态
        # @type BindStatus: String
        # @param TriggerAttribute: 触发器类型，双向表示两侧控制台均可操作，单向表示SCF控制台单向创建
        # @type TriggerAttribute: String
        # @param Description: 客户自定义触发器描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param BoundResources: 与此触发器关联的资源。目前仅函数URL关联的自定义域名会返回
        # @type BoundResources: String

        attr_accessor :Enable, :Qualifier, :TriggerName, :Type, :TriggerDesc, :AvailableStatus, :CustomArgument, :AddTime, :ModTime, :ResourceId, :BindStatus, :TriggerAttribute, :Description, :BoundResources
        extend Gem::Deprecate
        deprecate :ResourceId, :none, 2026, 1
        deprecate :ResourceId=, :none, 2026, 1
        deprecate :BindStatus, :none, 2026, 1
        deprecate :BindStatus=, :none, 2026, 1
        deprecate :TriggerAttribute, :none, 2026, 1
        deprecate :TriggerAttribute=, :none, 2026, 1

        def initialize(enable=nil, qualifier=nil, triggername=nil, type=nil, triggerdesc=nil, availablestatus=nil, customargument=nil, addtime=nil, modtime=nil, resourceid=nil, bindstatus=nil, triggerattribute=nil, description=nil, boundresources=nil)
          @Enable = enable
          @Qualifier = qualifier
          @TriggerName = triggername
          @Type = type
          @TriggerDesc = triggerdesc
          @AvailableStatus = availablestatus
          @CustomArgument = customargument
          @AddTime = addtime
          @ModTime = modtime
          @ResourceId = resourceid
          @BindStatus = bindstatus
          @TriggerAttribute = triggerattribute
          @Description = description
          @BoundResources = boundresources
        end

        def deserialize(params)
          @Enable = params['Enable']
          @Qualifier = params['Qualifier']
          @TriggerName = params['TriggerName']
          @Type = params['Type']
          @TriggerDesc = params['TriggerDesc']
          @AvailableStatus = params['AvailableStatus']
          @CustomArgument = params['CustomArgument']
          @AddTime = params['AddTime']
          @ModTime = params['ModTime']
          @ResourceId = params['ResourceId']
          @BindStatus = params['BindStatus']
          @TriggerAttribute = params['TriggerAttribute']
          @Description = params['Description']
          @BoundResources = params['BoundResources']
        end
      end

      # UpdateAlias请求参数结构体
      class UpdateAliasRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param Name: 别名的名称
        # @type Name: String
        # @param FunctionVersion: 别名指向的主版本
        # @type FunctionVersion: String
        # @param Namespace: 函数所在的命名空间
        # @type Namespace: String
        # @param RoutingConfig: 别名的路由信息，需要为别名指定附加版本时，必须提供此参数；	  附加版本指的是：除主版本 FunctionVersion 外，为此别名再指定一个函数可正常使用的版本；   这里附加版本中的 Version 值 不能是别名指向的主版本；  要注意的是：如果想要某个版本的流量全部指向这个别名，不需配置此参数； 目前一个别名最多只能指定一个附加版本
        # @type RoutingConfig: :class:`Tencentcloud::Scf.v20180416.models.RoutingConfig`
        # @param Description: 别名的描述
        # @type Description: String

        attr_accessor :FunctionName, :Name, :FunctionVersion, :Namespace, :RoutingConfig, :Description

        def initialize(functionname=nil, name=nil, functionversion=nil, namespace=nil, routingconfig=nil, description=nil)
          @FunctionName = functionname
          @Name = name
          @FunctionVersion = functionversion
          @Namespace = namespace
          @RoutingConfig = routingconfig
          @Description = description
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Name = params['Name']
          @FunctionVersion = params['FunctionVersion']
          @Namespace = params['Namespace']
          unless params['RoutingConfig'].nil?
            @RoutingConfig = RoutingConfig.new
            @RoutingConfig.deserialize(params['RoutingConfig'])
          end
          @Description = params['Description']
        end
      end

      # UpdateAlias返回参数结构体
      class UpdateAliasResponse < TencentCloud::Common::AbstractModel
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

      # UpdateCustomDomain请求参数结构体
      class UpdateCustomDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 自定义域名
        # @type Domain: String
        # @param Protocol: 协议，取值范围：HTTP, HTTPS, HTTP&HTTPS
        # @type Protocol: String
        # @param CertConfig: 证书配置信息，HTTPS协议必穿
        # @type CertConfig: :class:`Tencentcloud::Scf.v20180416.models.CertConf`
        # @param WafConfig: web 应用防火墙配置
        # @type WafConfig: :class:`Tencentcloud::Scf.v20180416.models.WafConf`
        # @param EndpointsConfig: 路由配置
        # @type EndpointsConfig: Array

        attr_accessor :Domain, :Protocol, :CertConfig, :WafConfig, :EndpointsConfig

        def initialize(domain=nil, protocol=nil, certconfig=nil, wafconfig=nil, endpointsconfig=nil)
          @Domain = domain
          @Protocol = protocol
          @CertConfig = certconfig
          @WafConfig = wafconfig
          @EndpointsConfig = endpointsconfig
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Protocol = params['Protocol']
          unless params['CertConfig'].nil?
            @CertConfig = CertConf.new
            @CertConfig.deserialize(params['CertConfig'])
          end
          unless params['WafConfig'].nil?
            @WafConfig = WafConf.new
            @WafConfig.deserialize(params['WafConfig'])
          end
          unless params['EndpointsConfig'].nil?
            @EndpointsConfig = []
            params['EndpointsConfig'].each do |i|
              endpointsconf_tmp = EndpointsConf.new
              endpointsconf_tmp.deserialize(i)
              @EndpointsConfig << endpointsconf_tmp
            end
          end
        end
      end

      # UpdateCustomDomain返回参数结构体
      class UpdateCustomDomainResponse < TencentCloud::Common::AbstractModel
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

      # UpdateFunctionCode请求参数结构体
      class UpdateFunctionCodeRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 要修改的函数名称
        # @type FunctionName: String
        # @param Handler: 函数处理方法名称。名称格式支持“文件名称.函数名称”形式（java 名称格式 包名.类名::方法名），文件名称和函数名称之间以"."隔开，文件名称和函数名称要求以字母开始和结尾，中间允许插入字母、数字、下划线和连接符，文件名称和函数名字的长度要求 2-60 个字符
        # @type Handler: String
        # @param CosBucketName: 对象存储桶名称
        # @type CosBucketName: String
        # @param CosObjectName: 对象存储对象路径
        # @type CosObjectName: String
        # @param ZipFile: 包含函数代码文件及其依赖项的 zip 格式文件，使用该接口时要求将 zip 文件的内容转成 base64 编码，最大支持20M
        # @type ZipFile: String
        # @param Namespace: 函数所属命名空间
        # @type Namespace: String
        # @param CosBucketRegion: 对象存储的地域，注：北京分为ap-beijing和ap-beijing-1
        # @type CosBucketRegion: String
        # @param InstallDependency: 是否自动安装依赖
        # @type InstallDependency: String
        # @param EnvId: 函数所属环境
        # @type EnvId: String
        # @param Publish: 在更新时是否同步发布新版本，默认为：FALSE，不发布
        # @type Publish: String
        # @param Code: 函数代码
        # @type Code: :class:`Tencentcloud::Scf.v20180416.models.Code`
        # @param CodeSource: 代码来源方式，支持 ZipFile, Cos, Inline 之一
        # @type CodeSource: String

        attr_accessor :FunctionName, :Handler, :CosBucketName, :CosObjectName, :ZipFile, :Namespace, :CosBucketRegion, :InstallDependency, :EnvId, :Publish, :Code, :CodeSource

        def initialize(functionname=nil, handler=nil, cosbucketname=nil, cosobjectname=nil, zipfile=nil, namespace=nil, cosbucketregion=nil, installdependency=nil, envid=nil, publish=nil, code=nil, codesource=nil)
          @FunctionName = functionname
          @Handler = handler
          @CosBucketName = cosbucketname
          @CosObjectName = cosobjectname
          @ZipFile = zipfile
          @Namespace = namespace
          @CosBucketRegion = cosbucketregion
          @InstallDependency = installdependency
          @EnvId = envid
          @Publish = publish
          @Code = code
          @CodeSource = codesource
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Handler = params['Handler']
          @CosBucketName = params['CosBucketName']
          @CosObjectName = params['CosObjectName']
          @ZipFile = params['ZipFile']
          @Namespace = params['Namespace']
          @CosBucketRegion = params['CosBucketRegion']
          @InstallDependency = params['InstallDependency']
          @EnvId = params['EnvId']
          @Publish = params['Publish']
          unless params['Code'].nil?
            @Code = Code.new
            @Code.deserialize(params['Code'])
          end
          @CodeSource = params['CodeSource']
        end
      end

      # UpdateFunctionCode返回参数结构体
      class UpdateFunctionCodeResponse < TencentCloud::Common::AbstractModel
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

      # UpdateFunctionConfiguration请求参数结构体
      class UpdateFunctionConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 要修改的函数名称
        # @type FunctionName: String
        # @param Description: 函数描述。最大支持 1000 个英文字母、数字、空格、逗号和英文句号，支持中文
        # @type Description: String
        # @param MemorySize: 函数运行时内存大小，默认为 128 M，可选范64M、128 M-3072 M，以 128MB 为阶梯。
        # @type MemorySize: Integer
        # @param Timeout: 函数最长执行时间，单位为秒，可选值范 1-900 秒，默认为 3 秒
        # @type Timeout: Integer
        # @param Runtime: 函数运行环境，创建时指定，目前不支持修改。
        # @type Runtime: String
        # @param Environment: 函数的环境变量
        # @type Environment: :class:`Tencentcloud::Scf.v20180416.models.Environment`
        # @param Namespace: 函数所属命名空间
        # 默认值: default
        # @type Namespace: String
        # @param VpcConfig: 函数的私有网络配置
        # @type VpcConfig: :class:`Tencentcloud::Scf.v20180416.models.VpcConfig`
        # @param Role: 函数绑定的角色
        # @type Role: String
        # @param InstallDependency: [在线依赖安装](https://cloud.tencent.com/document/product/583/37920)，TRUE 表示安装，默认值为 FALSE。仅支持 Node.js 函数。
        # @type InstallDependency: String
        # @param ClsLogsetId: 日志投递到的cls日志集ID
        # @type ClsLogsetId: String
        # @param ClsTopicId: 日志投递到的cls Topic ID
        # @type ClsTopicId: String
        # @param Publish: 在更新时是否同步发布新版本，默认为：FALSE，不发布新版本
        # @type Publish: String
        # @param L5Enable: 是否开启L5访问能力，TRUE 为开启，FALSE为关闭
        # @type L5Enable: String
        # @param Layers: 函数要关联的层版本列表，层的版本会按照在列表中顺序依次覆盖。
        # @type Layers: Array
        # @param DeadLetterConfig: 函数关联的死信队列信息
        # @type DeadLetterConfig: :class:`Tencentcloud::Scf.v20180416.models.DeadLetterConfig`
        # @param PublicNetConfig: 公网访问配置
        # @type PublicNetConfig: :class:`Tencentcloud::Scf.v20180416.models.PublicNetConfigIn`
        # @param CfsConfig: 文件系统配置入参，用于云函数绑定CFS文件系统
        # @type CfsConfig: :class:`Tencentcloud::Scf.v20180416.models.CfsConfig`
        # @param InitTimeout: 函数初始化执行超时时间
        # @type InitTimeout: Integer
        # @param ProtocolParams: HTTP函数配置ProtocolType访问协议，当前协议可配置的参数
        # @type ProtocolParams: :class:`Tencentcloud::Scf.v20180416.models.ProtocolParams`
        # @param InstanceConcurrencyConfig: 单实例多并发配置。只支持Web函数。
        # @type InstanceConcurrencyConfig: :class:`Tencentcloud::Scf.v20180416.models.InstanceConcurrencyConfig`
        # @param DnsCache: 是否开启Dns缓存能力。只支持EVENT函数。默认为FALSE，TRUE 为开启，FALSE为关闭
        # @type DnsCache: String
        # @param IntranetConfig: 内网访问配置
        # @type IntranetConfig: :class:`Tencentcloud::Scf.v20180416.models.IntranetConfigIn`
        # @param IgnoreSysLog: 忽略系统日志上报
        # @type IgnoreSysLog: Boolean

        attr_accessor :FunctionName, :Description, :MemorySize, :Timeout, :Runtime, :Environment, :Namespace, :VpcConfig, :Role, :InstallDependency, :ClsLogsetId, :ClsTopicId, :Publish, :L5Enable, :Layers, :DeadLetterConfig, :PublicNetConfig, :CfsConfig, :InitTimeout, :ProtocolParams, :InstanceConcurrencyConfig, :DnsCache, :IntranetConfig, :IgnoreSysLog

        def initialize(functionname=nil, description=nil, memorysize=nil, timeout=nil, runtime=nil, environment=nil, namespace=nil, vpcconfig=nil, role=nil, installdependency=nil, clslogsetid=nil, clstopicid=nil, publish=nil, l5enable=nil, layers=nil, deadletterconfig=nil, publicnetconfig=nil, cfsconfig=nil, inittimeout=nil, protocolparams=nil, instanceconcurrencyconfig=nil, dnscache=nil, intranetconfig=nil, ignoresyslog=nil)
          @FunctionName = functionname
          @Description = description
          @MemorySize = memorysize
          @Timeout = timeout
          @Runtime = runtime
          @Environment = environment
          @Namespace = namespace
          @VpcConfig = vpcconfig
          @Role = role
          @InstallDependency = installdependency
          @ClsLogsetId = clslogsetid
          @ClsTopicId = clstopicid
          @Publish = publish
          @L5Enable = l5enable
          @Layers = layers
          @DeadLetterConfig = deadletterconfig
          @PublicNetConfig = publicnetconfig
          @CfsConfig = cfsconfig
          @InitTimeout = inittimeout
          @ProtocolParams = protocolparams
          @InstanceConcurrencyConfig = instanceconcurrencyconfig
          @DnsCache = dnscache
          @IntranetConfig = intranetconfig
          @IgnoreSysLog = ignoresyslog
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Description = params['Description']
          @MemorySize = params['MemorySize']
          @Timeout = params['Timeout']
          @Runtime = params['Runtime']
          unless params['Environment'].nil?
            @Environment = Environment.new
            @Environment.deserialize(params['Environment'])
          end
          @Namespace = params['Namespace']
          unless params['VpcConfig'].nil?
            @VpcConfig = VpcConfig.new
            @VpcConfig.deserialize(params['VpcConfig'])
          end
          @Role = params['Role']
          @InstallDependency = params['InstallDependency']
          @ClsLogsetId = params['ClsLogsetId']
          @ClsTopicId = params['ClsTopicId']
          @Publish = params['Publish']
          @L5Enable = params['L5Enable']
          unless params['Layers'].nil?
            @Layers = []
            params['Layers'].each do |i|
              layerversionsimple_tmp = LayerVersionSimple.new
              layerversionsimple_tmp.deserialize(i)
              @Layers << layerversionsimple_tmp
            end
          end
          unless params['DeadLetterConfig'].nil?
            @DeadLetterConfig = DeadLetterConfig.new
            @DeadLetterConfig.deserialize(params['DeadLetterConfig'])
          end
          unless params['PublicNetConfig'].nil?
            @PublicNetConfig = PublicNetConfigIn.new
            @PublicNetConfig.deserialize(params['PublicNetConfig'])
          end
          unless params['CfsConfig'].nil?
            @CfsConfig = CfsConfig.new
            @CfsConfig.deserialize(params['CfsConfig'])
          end
          @InitTimeout = params['InitTimeout']
          unless params['ProtocolParams'].nil?
            @ProtocolParams = ProtocolParams.new
            @ProtocolParams.deserialize(params['ProtocolParams'])
          end
          unless params['InstanceConcurrencyConfig'].nil?
            @InstanceConcurrencyConfig = InstanceConcurrencyConfig.new
            @InstanceConcurrencyConfig.deserialize(params['InstanceConcurrencyConfig'])
          end
          @DnsCache = params['DnsCache']
          unless params['IntranetConfig'].nil?
            @IntranetConfig = IntranetConfigIn.new
            @IntranetConfig.deserialize(params['IntranetConfig'])
          end
          @IgnoreSysLog = params['IgnoreSysLog']
        end
      end

      # UpdateFunctionConfiguration返回参数结构体
      class UpdateFunctionConfigurationResponse < TencentCloud::Common::AbstractModel
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

      # UpdateFunctionEventInvokeConfig请求参数结构体
      class UpdateFunctionEventInvokeConfigRequest < TencentCloud::Common::AbstractModel
        # @param AsyncTriggerConfig: 异步重试配置信息
        # @type AsyncTriggerConfig: :class:`Tencentcloud::Scf.v20180416.models.AsyncTriggerConfig`
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param Namespace: 函数所属命名空间，默认为default
        # @type Namespace: String

        attr_accessor :AsyncTriggerConfig, :FunctionName, :Namespace

        def initialize(asynctriggerconfig=nil, functionname=nil, namespace=nil)
          @AsyncTriggerConfig = asynctriggerconfig
          @FunctionName = functionname
          @Namespace = namespace
        end

        def deserialize(params)
          unless params['AsyncTriggerConfig'].nil?
            @AsyncTriggerConfig = AsyncTriggerConfig.new
            @AsyncTriggerConfig.deserialize(params['AsyncTriggerConfig'])
          end
          @FunctionName = params['FunctionName']
          @Namespace = params['Namespace']
        end
      end

      # UpdateFunctionEventInvokeConfig返回参数结构体
      class UpdateFunctionEventInvokeConfigResponse < TencentCloud::Common::AbstractModel
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

      # UpdateNamespace请求参数结构体
      class UpdateNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间名称
        # @type Namespace: String
        # @param Description: 命名空间描述
        # @type Description: String

        attr_accessor :Namespace, :Description

        def initialize(namespace=nil, description=nil)
          @Namespace = namespace
          @Description = description
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @Description = params['Description']
        end
      end

      # UpdateNamespace返回参数结构体
      class UpdateNamespaceResponse < TencentCloud::Common::AbstractModel
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

      # UpdateTrigger请求参数结构体
      class UpdateTriggerRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param TriggerName: 触发器名称
        # @type TriggerName: String
        # @param Type: 触发器类型，目前只支持timer、ckafka、http三种类型
        # @type Type: String
        # @param Enable: 触发器开启或关闭，传参为OPEN为开启，CLOSE为关闭
        # @type Enable: String
        # @param Qualifier: 触发器创建时所指向的函数版本或别名，默认为 $LATEST
        # @type Qualifier: String
        # @param Namespace: 函数的命名空间，默认值为default
        # @type Namespace: String
        # @param TriggerDesc: TriggerDesc参数
        # @type TriggerDesc: String
        # @param Description: 触发器描述
        # @type Description: String
        # @param CustomArgument: 用户附加信息
        # @type CustomArgument: String

        attr_accessor :FunctionName, :TriggerName, :Type, :Enable, :Qualifier, :Namespace, :TriggerDesc, :Description, :CustomArgument

        def initialize(functionname=nil, triggername=nil, type=nil, enable=nil, qualifier=nil, namespace=nil, triggerdesc=nil, description=nil, customargument=nil)
          @FunctionName = functionname
          @TriggerName = triggername
          @Type = type
          @Enable = enable
          @Qualifier = qualifier
          @Namespace = namespace
          @TriggerDesc = triggerdesc
          @Description = description
          @CustomArgument = customargument
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @TriggerName = params['TriggerName']
          @Type = params['Type']
          @Enable = params['Enable']
          @Qualifier = params['Qualifier']
          @Namespace = params['Namespace']
          @TriggerDesc = params['TriggerDesc']
          @Description = params['Description']
          @CustomArgument = params['CustomArgument']
        end
      end

      # UpdateTrigger返回参数结构体
      class UpdateTriggerResponse < TencentCloud::Common::AbstractModel
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

      # UpdateTriggerStatus请求参数结构体
      class UpdateTriggerStatusRequest < TencentCloud::Common::AbstractModel
        # @param Enable: 触发器的初始是能状态OPEN表示开启 CLOSE表示关闭
        # @type Enable: String
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param TriggerName: 触发器名称
        # @type TriggerName: String
        # @param Type: 触发器类型，触发器类型，目前只支持 timer、 cos  、 ckafka三种类型
        # @type Type: String
        # @param Qualifier: 触发器在创建时所指向的触发别名或版本，默认值为$LATEST
        # @type Qualifier: String
        # @param Namespace: 函数所在的命名空间，默认值为default
        # @type Namespace: String
        # @param TriggerDesc: 如果更新的触发器类型为 COS 触发器，该字段为必填值，存放 JSON 格式的数据 {"event":"cos:ObjectCreated:*"}，数据内容和 SetTrigger 接口中该字段的格式相同；如果更新的触发器类型为定时触发器或 CMQ 触发器，可以不指定该字段
        # @type TriggerDesc: String

        attr_accessor :Enable, :FunctionName, :TriggerName, :Type, :Qualifier, :Namespace, :TriggerDesc

        def initialize(enable=nil, functionname=nil, triggername=nil, type=nil, qualifier=nil, namespace=nil, triggerdesc=nil)
          @Enable = enable
          @FunctionName = functionname
          @TriggerName = triggername
          @Type = type
          @Qualifier = qualifier
          @Namespace = namespace
          @TriggerDesc = triggerdesc
        end

        def deserialize(params)
          @Enable = params['Enable']
          @FunctionName = params['FunctionName']
          @TriggerName = params['TriggerName']
          @Type = params['Type']
          @Qualifier = params['Qualifier']
          @Namespace = params['Namespace']
          @TriggerDesc = params['TriggerDesc']
        end
      end

      # UpdateTriggerStatus返回参数结构体
      class UpdateTriggerStatusResponse < TencentCloud::Common::AbstractModel
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

      # 已使用的信息
      class UsageInfo < TencentCloud::Common::AbstractModel
        # @param NamespacesCount: 命名空间个数
        # @type NamespacesCount: Integer
        # @param Namespace: 命名空间详情
        # @type Namespace: Array
        # @param TotalConcurrencyMem: 当前地域用户并发内存配额上限
        # @type TotalConcurrencyMem: Integer
        # @param TotalAllocatedConcurrencyMem: 当前地域用户已配置并发内存额度
        # @type TotalAllocatedConcurrencyMem: Integer
        # @param UserConcurrencyMemLimit: 用户实际配置的账号并发配额
        # @type UserConcurrencyMemLimit: Integer

        attr_accessor :NamespacesCount, :Namespace, :TotalConcurrencyMem, :TotalAllocatedConcurrencyMem, :UserConcurrencyMemLimit

        def initialize(namespacescount=nil, namespace=nil, totalconcurrencymem=nil, totalallocatedconcurrencymem=nil, userconcurrencymemlimit=nil)
          @NamespacesCount = namespacescount
          @Namespace = namespace
          @TotalConcurrencyMem = totalconcurrencymem
          @TotalAllocatedConcurrencyMem = totalallocatedconcurrencymem
          @UserConcurrencyMemLimit = userconcurrencymemlimit
        end

        def deserialize(params)
          @NamespacesCount = params['NamespacesCount']
          unless params['Namespace'].nil?
            @Namespace = []
            params['Namespace'].each do |i|
              namespaceusage_tmp = NamespaceUsage.new
              namespaceusage_tmp.deserialize(i)
              @Namespace << namespaceusage_tmp
            end
          end
          @TotalConcurrencyMem = params['TotalConcurrencyMem']
          @TotalAllocatedConcurrencyMem = params['TotalAllocatedConcurrencyMem']
          @UserConcurrencyMemLimit = params['UserConcurrencyMemLimit']
        end
      end

      # 变量参数
      class Variable < TencentCloud::Common::AbstractModel
        # @param Key: 变量的名称，不可为空字符
        # @type Key: String
        # @param Value: 变量的值，不可为空字符
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

      # 带有匹配规则的函数版本
      class VersionMatch < TencentCloud::Common::AbstractModel
        # @param Version: 函数版本名称
        # @type Version: String
        # @param Key: 匹配规则的key，调用时通过传key来匹配规则路由到指定版本
        # header方式：
        # key填写"invoke.headers.User"，并在 invoke 调用函数时传参 RoutingKey：{"User":"value"}规则匹配调用
        # @type Key: String
        # @param Method: 匹配方式。取值范围：
        # range：范围匹配
        # exact：字符串精确匹配
        # @type Method: String
        # @param Expression: range 匹配规则要求：
        # 需要为开区间或闭区间描述 (a,b) [a,b]，其中 a、b 均为整数
        # exact 匹配规则要求：
        # 字符串精确匹配
        # @type Expression: String

        attr_accessor :Version, :Key, :Method, :Expression

        def initialize(version=nil, key=nil, method=nil, expression=nil)
          @Version = version
          @Key = key
          @Method = method
          @Expression = expression
        end

        def deserialize(params)
          @Version = params['Version']
          @Key = params['Key']
          @Method = params['Method']
          @Expression = params['Expression']
        end
      end

      # 函数版本的预置并发信息，包括设置预置并发数、已完成预置的并发数和预置任务状态。
      class VersionProvisionedConcurrencyInfo < TencentCloud::Common::AbstractModel
        # @param AllocatedProvisionedConcurrencyNum: 设置的预置并发数。
        # @type AllocatedProvisionedConcurrencyNum: Integer
        # @param AvailableProvisionedConcurrencyNum: 当前已完成预置的并发数。
        # @type AvailableProvisionedConcurrencyNum: Integer
        # @param Status: 预置任务状态，Done表示已完成，InProgress表示进行中，Failed表示部分或全部失败。
        # @type Status: String
        # @param StatusReason: 对预置任务状态Status的说明。
        # @type StatusReason: String
        # @param Qualifier: 函数版本号
        # @type Qualifier: String
        # @param TriggerActions: 预置并发定时任务。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerActions: Array

        attr_accessor :AllocatedProvisionedConcurrencyNum, :AvailableProvisionedConcurrencyNum, :Status, :StatusReason, :Qualifier, :TriggerActions

        def initialize(allocatedprovisionedconcurrencynum=nil, availableprovisionedconcurrencynum=nil, status=nil, statusreason=nil, qualifier=nil, triggeractions=nil)
          @AllocatedProvisionedConcurrencyNum = allocatedprovisionedconcurrencynum
          @AvailableProvisionedConcurrencyNum = availableprovisionedconcurrencynum
          @Status = status
          @StatusReason = statusreason
          @Qualifier = qualifier
          @TriggerActions = triggeractions
        end

        def deserialize(params)
          @AllocatedProvisionedConcurrencyNum = params['AllocatedProvisionedConcurrencyNum']
          @AvailableProvisionedConcurrencyNum = params['AvailableProvisionedConcurrencyNum']
          @Status = params['Status']
          @StatusReason = params['StatusReason']
          @Qualifier = params['Qualifier']
          unless params['TriggerActions'].nil?
            @TriggerActions = []
            params['TriggerActions'].each do |i|
              triggeraction_tmp = TriggerAction.new
              triggeraction_tmp.deserialize(i)
              @TriggerActions << triggeraction_tmp
            end
          end
        end
      end

      # 带有权重的函数版本
      class VersionWeight < TencentCloud::Common::AbstractModel
        # @param Version: 函数版本名称
        # @type Version: String
        # @param Weight: 该版本的权重
        # @type Weight: Float

        attr_accessor :Version, :Weight

        def initialize(version=nil, weight=nil)
          @Version = version
          @Weight = weight
        end

        def deserialize(params)
          @Version = params['Version']
          @Weight = params['Weight']
        end
      end

      # 私有网络参数配置
      class VpcConfig < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络 的 Id
        # @type VpcId: String
        # @param SubnetId: 子网的 Id
        # @type SubnetId: String

        attr_accessor :VpcId, :SubnetId

        def initialize(vpcid=nil, subnetid=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # HTTP函数通过WebSockets协议访问时的参数
      class WSParams < TencentCloud::Common::AbstractModel
        # @param IdleTimeOut: 空闲超时时间, 单位秒，默认15s。可配置范围1~1800s。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdleTimeOut: Integer

        attr_accessor :IdleTimeOut

        def initialize(idletimeout=nil)
          @IdleTimeOut = idletimeout
        end

        def deserialize(params)
          @IdleTimeOut = params['IdleTimeOut']
        end
      end

      # web应用防火墙配置信息
      class WafConf < TencentCloud::Common::AbstractModel
        # @param WafOpen: web应用防火墙是否打开， 取值范围:OPEN, CLOSE
        # @type WafOpen: String
        # @param WafInstanceId: web应用防火墙实例ID
        # @type WafInstanceId: String

        attr_accessor :WafOpen, :WafInstanceId

        def initialize(wafopen=nil, wafinstanceid=nil)
          @WafOpen = wafopen
          @WafInstanceId = wafinstanceid
        end

        def deserialize(params)
          @WafOpen = params['WafOpen']
          @WafInstanceId = params['WafInstanceId']
        end
      end

    end
  end
end

