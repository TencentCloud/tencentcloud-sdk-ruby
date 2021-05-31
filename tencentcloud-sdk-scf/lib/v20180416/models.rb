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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoutingConfig: :class:`Tencentcloud::Scf.v20180416.models.RoutingConfig`
        # @param Description: 描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param AddTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddTime: String
        # @param ModTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
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
            @RoutingConfig = RoutingConfig.new.deserialize(params['RoutingConfig'])
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
        # @param Status: 事件状态
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
              @RetryConfig << RetryConfig.new.deserialize(i)
            end
          end
          @MsgTTL = params['MsgTTL']
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
              @CfsInsList << CfsInsInfo.new.deserialize(i)
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
        # @param CosObjectName: 对象存储对象路径
        # @type CosObjectName: String
        # @param ZipFile: 包含函数代码文件及其依赖项的 zip 格式文件，zip包大小上限为 50MB，使用该接口时要求将 zip 文件的内容转成 base64 编码
        # @type ZipFile: String
        # @param CosBucketRegion: 对象存储的地域，地域为北京时需要传入ap-beijing,北京一区时需要传递ap-beijing-1，其他的地域不需要传递。
        # @type CosBucketRegion: String
        # @param DemoId: 如果是通过Demo创建的话，需要传入DemoId
        # @type DemoId: String
        # @param TempCosObjectName: 如果是从TempCos创建的话，需要传入TempCosObjectName
        # @type TempCosObjectName: String
        # @param GitUrl: Git地址
        # @type GitUrl: String
        # @param GitUserName: Git用户名
        # @type GitUserName: String
        # @param GitPassword: Git密码
        # @type GitPassword: String
        # @param GitPasswordSecret: 加密后的Git密码，一般无需指定
        # @type GitPasswordSecret: String
        # @param GitBranch: Git分支
        # @type GitBranch: String
        # @param GitDirectory: 代码在Git仓库中的路径
        # @type GitDirectory: String
        # @param GitCommitId: 指定要拉取的版本
        # @type GitCommitId: String
        # @param GitUserNameSecret: 加密后的Git用户名，一般无需指定
        # @type GitUserNameSecret: String

        attr_accessor :CosBucketName, :CosObjectName, :ZipFile, :CosBucketRegion, :DemoId, :TempCosObjectName, :GitUrl, :GitUserName, :GitPassword, :GitPasswordSecret, :GitBranch, :GitDirectory, :GitCommitId, :GitUserNameSecret
        
        def initialize(cosbucketname=nil, cosobjectname=nil, zipfile=nil, cosbucketregion=nil, demoid=nil, tempcosobjectname=nil, giturl=nil, gitusername=nil, gitpassword=nil, gitpasswordsecret=nil, gitbranch=nil, gitdirectory=nil, gitcommitid=nil, gitusernamesecret=nil)
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
        # @param RoutingConfig: 别名的请求路由配置
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
            @RoutingConfig = RoutingConfig.new.deserialize(params['RoutingConfig'])
          end
          @Description = params['Description']
        end
      end

      # CreateAlias返回参数结构体
      class CreateAliasResponse < TencentCloud::Common::AbstractModel
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
        # @param Runtime: 函数运行环境，目前仅支持 Python2.7，Python3.6，Nodejs6.10，Nodejs8.9，Nodejs10.15，Nodejs12.16， Php5， Php7，Go1，Java8 和 CustomRuntime，默认Python2.7
        # @type Runtime: String
        # @param VpcConfig: 函数的私有网络配置
        # @type VpcConfig: :class:`Tencentcloud::Scf.v20180416.models.VpcConfig`
        # @param Namespace: 函数所属命名空间
        # @type Namespace: String
        # @param Role: 函数绑定的角色
        # @type Role: String
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
        # @param InitTimeout: 函数初始化超时时间
        # @type InitTimeout: Integer
        # @param Tags: 函数 Tag 参数，以键值对数组形式传入
        # @type Tags: Array
        # @param AsyncRunEnable: 是否开启异步属性，TRUE 为开启，FALSE为关闭
        # @type AsyncRunEnable: String
        # @param TraceEnable: 是否开启事件追踪，TRUE 为开启，FALSE为关闭
        # @type TraceEnable: String

        attr_accessor :FunctionName, :Code, :Handler, :Description, :MemorySize, :Timeout, :Environment, :Runtime, :VpcConfig, :Namespace, :Role, :ClsLogsetId, :ClsTopicId, :Type, :CodeSource, :Layers, :DeadLetterConfig, :PublicNetConfig, :CfsConfig, :InitTimeout, :Tags, :AsyncRunEnable, :TraceEnable
        
        def initialize(functionname=nil, code=nil, handler=nil, description=nil, memorysize=nil, timeout=nil, environment=nil, runtime=nil, vpcconfig=nil, namespace=nil, role=nil, clslogsetid=nil, clstopicid=nil, type=nil, codesource=nil, layers=nil, deadletterconfig=nil, publicnetconfig=nil, cfsconfig=nil, inittimeout=nil, tags=nil, asyncrunenable=nil, traceenable=nil)
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
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          unless params['Code'].nil?
            @Code = Code.new.deserialize(params['Code'])
          end
          @Handler = params['Handler']
          @Description = params['Description']
          @MemorySize = params['MemorySize']
          @Timeout = params['Timeout']
          unless params['Environment'].nil?
            @Environment = Environment.new.deserialize(params['Environment'])
          end
          @Runtime = params['Runtime']
          unless params['VpcConfig'].nil?
            @VpcConfig = VpcConfig.new.deserialize(params['VpcConfig'])
          end
          @Namespace = params['Namespace']
          @Role = params['Role']
          @ClsLogsetId = params['ClsLogsetId']
          @ClsTopicId = params['ClsTopicId']
          @Type = params['Type']
          @CodeSource = params['CodeSource']
          unless params['Layers'].nil?
            @Layers = []
            params['Layers'].each do |i|
              @Layers << LayerVersionSimple.new.deserialize(i)
            end
          end
          unless params['DeadLetterConfig'].nil?
            @DeadLetterConfig = DeadLetterConfig.new.deserialize(params['DeadLetterConfig'])
          end
          unless params['PublicNetConfig'].nil?
            @PublicNetConfig = PublicNetConfigIn.new.deserialize(params['PublicNetConfig'])
          end
          unless params['CfsConfig'].nil?
            @CfsConfig = CfsConfig.new.deserialize(params['CfsConfig'])
          end
          @InitTimeout = params['InitTimeout']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << Tag.new.deserialize(i)
            end
          end
          @AsyncRunEnable = params['AsyncRunEnable']
          @TraceEnable = params['TraceEnable']
        end
      end

      # CreateFunction返回参数结构体
      class CreateFunctionResponse < TencentCloud::Common::AbstractModel
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

      # CreateTrigger请求参数结构体
      class CreateTriggerRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 新建触发器绑定的函数名称
        # @type FunctionName: String
        # @param TriggerName: 新建触发器名称。如果是定时触发器，名称支持英文字母、数字、连接符和下划线，最长100个字符；如果是cos触发器，需要是对应cos存储桶适用于XML API的访问域名(例如:5401-5ff414-12345.cos.ap-shanghai.myqcloud.com);如果是其他触发器，见具体触发器绑定参数的说明
        # @type TriggerName: String
        # @param Type: 触发器类型，目前支持 cos 、cmq、 timer、 ckafka、apigw类型
        # @type Type: String
        # @param TriggerDesc: 触发器对应的参数，可见具体[触发器描述说明](https://cloud.tencent.com/document/product/583/39901)
        # @type TriggerDesc: String
        # @param Namespace: 函数的命名空间
        # @type Namespace: String
        # @param Qualifier: 函数的版本
        # @type Qualifier: String
        # @param Enable: 触发器的初始是能状态 OPEN表示开启 CLOSE表示关闭
        # @type Enable: String
        # @param CustomArgument: 用户自定义参数，仅支持timer触发器
        # @type CustomArgument: String

        attr_accessor :FunctionName, :TriggerName, :Type, :TriggerDesc, :Namespace, :Qualifier, :Enable, :CustomArgument
        
        def initialize(functionname=nil, triggername=nil, type=nil, triggerdesc=nil, namespace=nil, qualifier=nil, enable=nil, customargument=nil)
          @FunctionName = functionname
          @TriggerName = triggername
          @Type = type
          @TriggerDesc = triggerdesc
          @Namespace = namespace
          @Qualifier = qualifier
          @Enable = enable
          @CustomArgument = customargument
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
        end
      end

      # CreateTrigger返回参数结构体
      class CreateTriggerResponse < TencentCloud::Common::AbstractModel
        # @param TriggerInfo: 触发器信息
        # @type TriggerInfo: :class:`Tencentcloud::Scf.v20180416.models.Trigger`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TriggerInfo, :RequestId
        
        def initialize(triggerinfo=nil, requestid=nil)
          @TriggerInfo = triggerinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TriggerInfo'].nil?
            @TriggerInfo = Trigger.new.deserialize(params['TriggerInfo'])
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

      # DeleteFunction请求参数结构体
      class DeleteFunctionRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 要删除的函数名称
        # @type FunctionName: String
        # @param Namespace: 函数所属命名空间
        # @type Namespace: String
        # @param Qualifier: 函数版本
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

      # DeleteReservedConcurrencyConfig请求参数结构体
      class DeleteReservedConcurrencyConfigRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 需要删除预置并发的函数的名称
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

      # DeleteTrigger请求参数结构体
      class DeleteTriggerRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数的名称
        # @type FunctionName: String
        # @param TriggerName: 要删除的触发器名称
        # @type TriggerName: String
        # @param Type: 要删除的触发器类型，目前支持 cos 、cmq、 timer、ckafka 类型
        # @type Type: String
        # @param Namespace: 函数所属命名空间
        # @type Namespace: String
        # @param TriggerDesc: 如果删除的触发器类型为 COS 触发器，该字段为必填值，存放 JSON 格式的数据 {"event":"cos:ObjectCreated:*"}，数据内容和 SetTrigger 接口中该字段的格式相同；如果删除的触发器类型为定时触发器或 CMQ 触发器，可以不指定该字段
        # @type TriggerDesc: String
        # @param Qualifier: 函数的版本信息
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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
              @Variables << Variable.new.deserialize(i)
            end
          end
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

      # 函数列表
      class Function < TencentCloud::Common::AbstractModel
        # @param ModTime: 修改时间
        # @type ModTime: String
        # @param AddTime: 创建时间
        # @type AddTime: String
        # @param Runtime: 运行时
        # @type Runtime: String
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param FunctionId: 函数ID
        # @type FunctionId: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Status: 函数状态，状态值及流转[参考此处](https://cloud.tencent.com/document/product/583/47175)
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

        attr_accessor :ModTime, :AddTime, :Runtime, :FunctionName, :FunctionId, :Namespace, :Status, :StatusDesc, :Description, :Tags, :Type, :StatusReasons, :TotalProvisionedConcurrencyMem, :ReservedConcurrencyMem
        
        def initialize(modtime=nil, addtime=nil, runtime=nil, functionname=nil, functionid=nil, namespace=nil, status=nil, statusdesc=nil, description=nil, tags=nil, type=nil, statusreasons=nil, totalprovisionedconcurrencymem=nil, reservedconcurrencymem=nil)
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
              @Tags << Tag.new.deserialize(i)
            end
          end
          @Type = params['Type']
          unless params['StatusReasons'].nil?
            @StatusReasons = []
            params['StatusReasons'].each do |i|
              @StatusReasons << StatusReason.new.deserialize(i)
            end
          end
          @TotalProvisionedConcurrencyMem = params['TotalProvisionedConcurrencyMem']
          @ReservedConcurrencyMem = params['ReservedConcurrencyMem']
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
        # @param RetCode: 函数执行结果，如果是 0 表示执行成功，其他值表示失败
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

        attr_accessor :Version, :Description, :AddTime, :ModTime
        
        def initialize(version=nil, description=nil, addtime=nil, modtime=nil)
          @Version = version
          @Description = description
          @AddTime = addtime
          @ModTime = modtime
        end

        def deserialize(params)
          @Version = params['Version']
          @Description = params['Description']
          @AddTime = params['AddTime']
          @ModTime = params['ModTime']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccountUsage, :AccountLimit, :RequestId
        
        def initialize(accountusage=nil, accountlimit=nil, requestid=nil)
          @AccountUsage = accountusage
          @AccountLimit = accountlimit
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccountUsage'].nil?
            @AccountUsage = UsageInfo.new.deserialize(params['AccountUsage'])
          end
          unless params['AccountLimit'].nil?
            @AccountLimit = LimitsInfo.new.deserialize(params['AccountLimit'])
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param AddTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddTime: String
        # @param ModTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
            @RoutingConfig = RoutingConfig.new.deserialize(params['RoutingConfig'])
          end
          @Description = params['Description']
          @AddTime = params['AddTime']
          @ModTime = params['ModTime']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncTriggerConfig, :RequestId
        
        def initialize(asynctriggerconfig=nil, requestid=nil)
          @AsyncTriggerConfig = asynctriggerconfig
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AsyncTriggerConfig'].nil?
            @AsyncTriggerConfig = AsyncTriggerConfig.new.deserialize(params['AsyncTriggerConfig'])
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
            @Filter = LogFilter.new.deserialize(params['Filter'])
          end
          @Namespace = params['Namespace']
          @Qualifier = params['Qualifier']
          @FunctionRequestId = params['FunctionRequestId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['SearchContext'].nil?
            @SearchContext = LogSearchContext.new.deserialize(params['SearchContext'])
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @Data << FunctionLog.new.deserialize(i)
            end
          end
          unless params['SearchContext'].nil?
            @SearchContext = LogSearchContext.new.deserialize(params['SearchContext'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetFunction请求参数结构体
      class GetFunctionRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 需要获取详情的函数名称
        # @type FunctionName: String
        # @param Qualifier: 函数的版本号
        # @type Qualifier: String
        # @param Namespace: 函数所属命名空间
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
        # @param Status: 函数状态，状态值及流转[参考说明](https://cloud.tencent.com/document/product/583/47175)
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CfsConfig: :class:`Tencentcloud::Scf.v20180416.models.CfsConfig`
        # @param AvailableStatus: 函数的计费状态，状态值[参考此处](https://cloud.tencent.com/document/product/583/47175#.E5.87.BD.E6.95.B0.E8.AE.A1.E8.B4.B9.E7.8A.B6.E6.80.81)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableStatus: String
        # @param Qualifier: 函数版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Qualifier: String
        # @param InitTimeout: 函数初始化超时时间
        # @type InitTimeout: Integer
        # @param StatusReasons: 函数状态失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusReasons: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModTime, :CodeInfo, :Description, :Triggers, :Handler, :CodeSize, :Timeout, :FunctionVersion, :MemorySize, :Runtime, :FunctionName, :VpcConfig, :UseGpu, :Environment, :CodeResult, :CodeError, :ErrNo, :Namespace, :Role, :InstallDependency, :Status, :StatusDesc, :ClsLogsetId, :ClsTopicId, :FunctionId, :Tags, :EipConfig, :AccessInfo, :Type, :L5Enable, :Layers, :DeadLetterConfig, :AddTime, :PublicNetConfig, :OnsEnable, :CfsConfig, :AvailableStatus, :Qualifier, :InitTimeout, :StatusReasons, :RequestId
        
        def initialize(modtime=nil, codeinfo=nil, description=nil, triggers=nil, handler=nil, codesize=nil, timeout=nil, functionversion=nil, memorysize=nil, runtime=nil, functionname=nil, vpcconfig=nil, usegpu=nil, environment=nil, coderesult=nil, codeerror=nil, errno=nil, namespace=nil, role=nil, installdependency=nil, status=nil, statusdesc=nil, clslogsetid=nil, clstopicid=nil, functionid=nil, tags=nil, eipconfig=nil, accessinfo=nil, type=nil, l5enable=nil, layers=nil, deadletterconfig=nil, addtime=nil, publicnetconfig=nil, onsenable=nil, cfsconfig=nil, availablestatus=nil, qualifier=nil, inittimeout=nil, statusreasons=nil, requestid=nil)
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
          @RequestId = requestid
        end

        def deserialize(params)
          @ModTime = params['ModTime']
          @CodeInfo = params['CodeInfo']
          @Description = params['Description']
          unless params['Triggers'].nil?
            @Triggers = []
            params['Triggers'].each do |i|
              @Triggers << Trigger.new.deserialize(i)
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
            @VpcConfig = VpcConfig.new.deserialize(params['VpcConfig'])
          end
          @UseGpu = params['UseGpu']
          unless params['Environment'].nil?
            @Environment = Environment.new.deserialize(params['Environment'])
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
              @Tags << Tag.new.deserialize(i)
            end
          end
          unless params['EipConfig'].nil?
            @EipConfig = EipOutConfig.new.deserialize(params['EipConfig'])
          end
          unless params['AccessInfo'].nil?
            @AccessInfo = AccessInfo.new.deserialize(params['AccessInfo'])
          end
          @Type = params['Type']
          @L5Enable = params['L5Enable']
          unless params['Layers'].nil?
            @Layers = []
            params['Layers'].each do |i|
              @Layers << LayerVersionInfo.new.deserialize(i)
            end
          end
          unless params['DeadLetterConfig'].nil?
            @DeadLetterConfig = DeadLetterConfig.new.deserialize(params['DeadLetterConfig'])
          end
          @AddTime = params['AddTime']
          unless params['PublicNetConfig'].nil?
            @PublicNetConfig = PublicNetConfigOut.new.deserialize(params['PublicNetConfig'])
          end
          @OnsEnable = params['OnsEnable']
          unless params['CfsConfig'].nil?
            @CfsConfig = CfsConfig.new.deserialize(params['CfsConfig'])
          end
          @AvailableStatus = params['AvailableStatus']
          @Qualifier = params['Qualifier']
          @InitTimeout = params['InitTimeout']
          unless params['StatusReasons'].nil?
            @StatusReasons = []
            params['StatusReasons'].each do |i|
              @StatusReasons << StatusReason.new.deserialize(i)
            end
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
        # @param Description: 版本的描述
        # @type Description: String
        # @param LicenseInfo: 许可证信息
        # @type LicenseInfo: String
        # @param LayerVersion: 版本号
        # @type LayerVersion: Integer
        # @param LayerName: 层名称
        # @type LayerName: String
        # @param Status: 层的具体版本当前状态，可能取值：
        # Active 正常
        # Publishing  发布中
        # PublishFailed  发布失败
        # Deleted 已删除
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @Allocated << VersionProvisionedConcurrencyInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetReservedConcurrencyConfig请求参数结构体
      class GetReservedConcurrencyConfigRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 需要获取预置并发详情的函数名称。
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
        # @param ReservedMem: 该函数的保留并发内存。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMem: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # Invoke请求参数结构体
      class InvokeRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param InvocationType: RequestResponse(同步) 和 Event(异步)，默认为同步
        # @type InvocationType: String
        # @param Qualifier: 触发函数的版本号或别名
        # @type Qualifier: String
        # @param ClientContext: 运行函数时的参数，以json格式传入，最大支持的参数长度是 1M
        # @type ClientContext: String
        # @param LogType: 同步调用时指定该字段，返回值会包含4K的日志，可选值为None和Tail，默认值为None。当该值为Tail时，返回参数中的Log字段会包含对应的函数执行日志
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = Result.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 层版本信息
      class LayerVersionInfo < TencentCloud::Common::AbstractModel
        # @param CompatibleRuntimes: 版本适用的运行时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompatibleRuntimes: Array
        # @param AddTime: 创建时间
        # @type AddTime: String
        # @param Description: 版本描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param LicenseInfo: 许可证信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LicenseInfo: String
        # @param LayerVersion: 版本号
        # @type LayerVersion: Integer
        # @param LayerName: 层名称
        # @type LayerName: String
        # @param Status: 层的具体版本当前状态，状态值[参考此处](https://cloud.tencent.com/document/product/583/47175#.E5.B1.82.EF.BC.88layer.EF.BC.89.E7.8A.B6.E6.80.81)
        # @type Status: String

        attr_accessor :CompatibleRuntimes, :AddTime, :Description, :LicenseInfo, :LayerVersion, :LayerName, :Status
        
        def initialize(compatibleruntimes=nil, addtime=nil, description=nil, licenseinfo=nil, layerversion=nil, layername=nil, status=nil)
          @CompatibleRuntimes = compatibleruntimes
          @AddTime = addtime
          @Description = description
          @LicenseInfo = licenseinfo
          @LayerVersion = layerversion
          @LayerName = layername
          @Status = status
        end

        def deserialize(params)
          @CompatibleRuntimes = params['CompatibleRuntimes']
          @AddTime = params['AddTime']
          @Description = params['Description']
          @LicenseInfo = params['LicenseInfo']
          @LayerVersion = params['LayerVersion']
          @LayerName = params['LayerName']
          @Status = params['Status']
        end
      end

      # 指定某个Layer版本
      class LayerVersionSimple < TencentCloud::Common::AbstractModel
        # @param LayerName: layer名称
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
              @Namespace << NamespaceLimit.new.deserialize(i)
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @Aliases << Alias.new.deserialize(i)
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
            @StartTimeInterval = TimeInterval.new.deserialize(params['StartTimeInterval'])
          end
          unless params['EndTimeInterval'].nil?
            @EndTimeInterval = TimeInterval.new.deserialize(params['EndTimeInterval'])
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @EventList << AsyncEvent.new.deserialize(i)
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
        # @param Filters: 过滤条件。
        # - tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。

        # 每次请求的Filters的上限为10，Filter.Values的上限为5。
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
              @Filters << Filter.new.deserialize(i)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @Functions << Function.new.deserialize(i)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @LayerVersions << LayerVersionInfo.new.deserialize(i)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @Layers << LayerVersionInfo.new.deserialize(i)
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

        attr_accessor :Limit, :Offset, :Orderby, :Order
        
        def initialize(limit=nil, offset=nil, orderby=nil, order=nil)
          @Limit = limit
          @Offset = offset
          @Orderby = orderby
          @Order = order
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Orderby = params['Orderby']
          @Order = params['Order']
        end
      end

      # ListNamespaces返回参数结构体
      class ListNamespacesResponse < TencentCloud::Common::AbstractModel
        # @param Namespaces: namespace详情
        # @type Namespaces: Array
        # @param TotalCount: 返回的namespace数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @Namespaces << Namespace.new.deserialize(i)
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
        # @param Filters: * Qualifier:
        # 函数版本，别名
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
              @Filters << Filter.new.deserialize(i)
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
              @Triggers << TriggerInfo.new.deserialize(i)
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Versions: Array
        # @param TotalCount: 函数版本总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              @Versions << FunctionVersion.new.deserialize(i)
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
            @Trigger = TriggerCount.new.deserialize(params['Trigger'])
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

      # 名称空间已使用信息
      class NamespaceUsage < TencentCloud::Common::AbstractModel
        # @param Functions: 函数数组
        # @type Functions: Array
        # @param Namespace: 命名空间名称
        # @type Namespace: String
        # @param FunctionsCount: 命名空间函数个数
        # @type FunctionsCount: Integer

        attr_accessor :Functions, :Namespace, :FunctionsCount
        
        def initialize(functions=nil, namespace=nil, functionscount=nil)
          @Functions = functions
          @Namespace = namespace
          @FunctionsCount = functionscount
        end

        def deserialize(params)
          @Functions = params['Functions']
          @Namespace = params['Namespace']
          @FunctionsCount = params['FunctionsCount']
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
            @EipConfig = EipConfigIn.new.deserialize(params['EipConfig'])
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
            @EipConfig = EipConfigOut.new.deserialize(params['EipConfig'])
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

        attr_accessor :LayerName, :CompatibleRuntimes, :Content, :Description, :LicenseInfo
        
        def initialize(layername=nil, compatibleruntimes=nil, content=nil, description=nil, licenseinfo=nil)
          @LayerName = layername
          @CompatibleRuntimes = compatibleruntimes
          @Content = content
          @Description = description
          @LicenseInfo = licenseinfo
        end

        def deserialize(params)
          @LayerName = params['LayerName']
          @CompatibleRuntimes = params['CompatibleRuntimes']
          unless params['Content'].nil?
            @Content = Code.new.deserialize(params['Content'])
          end
          @Description = params['Description']
          @LicenseInfo = params['LicenseInfo']
        end
      end

      # PublishLayerVersion返回参数结构体
      class PublishLayerVersionResponse < TencentCloud::Common::AbstractModel
        # @param LayerVersion: 本次创建的层的版本号
        # @type LayerVersion: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @type Runtime: String
        # @param Namespace: 函数的命名空间
        # @type Namespace: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

        attr_accessor :FunctionName, :Qualifier, :VersionProvisionedConcurrencyNum, :Namespace
        
        def initialize(functionname=nil, qualifier=nil, versionprovisionedconcurrencynum=nil, namespace=nil)
          @FunctionName = functionname
          @Qualifier = qualifier
          @VersionProvisionedConcurrencyNum = versionprovisionedconcurrencynum
          @Namespace = namespace
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Qualifier = params['Qualifier']
          @VersionProvisionedConcurrencyNum = params['VersionProvisionedConcurrencyNum']
          @Namespace = params['Namespace']
        end
      end

      # PutProvisionedConcurrencyConfig返回参数结构体
      class PutProvisionedConcurrencyConfigResponse < TencentCloud::Common::AbstractModel
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

      # PutReservedConcurrencyConfig请求参数结构体
      class PutReservedConcurrencyConfigRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 需要设置预置并发的函数的名称
        # @type FunctionName: String
        # @param ReservedConcurrencyMem: 函数保留并发内存，注：函数的保留并发内存总和上限：用户总并发内存配额 - 12800
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
        # @param InvokeResult: 0为正确，异步调用返回为空
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
              @AdditionalVersionWeights << VersionWeight.new.deserialize(i)
            end
          end
          unless params['AddtionVersionMatchs'].nil?
            @AddtionVersionMatchs = []
            params['AddtionVersionMatchs'].each do |i|
              @AddtionVersionMatchs << VersionMatch.new.deserialize(i)
            end
          end
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

        attr_accessor :FunctionName, :InvokeRequestId, :Namespace
        
        def initialize(functionname=nil, invokerequestid=nil, namespace=nil)
          @FunctionName = functionname
          @InvokeRequestId = invokerequestid
          @Namespace = namespace
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @InvokeRequestId = params['InvokeRequestId']
          @Namespace = params['Namespace']
        end
      end

      # TerminateAsyncEvent返回参数结构体
      class TerminateAsyncEventResponse < TencentCloud::Common::AbstractModel
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

        attr_accessor :ModTime, :Type, :TriggerDesc, :TriggerName, :AddTime, :Enable, :CustomArgument, :AvailableStatus, :ResourceId, :BindStatus, :TriggerAttribute, :Qualifier
        
        def initialize(modtime=nil, type=nil, triggerdesc=nil, triggername=nil, addtime=nil, enable=nil, customargument=nil, availablestatus=nil, resourceid=nil, bindstatus=nil, triggerattribute=nil, qualifier=nil)
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

        attr_accessor :Cos, :Timer, :Cmq, :Total, :Ckafka, :Apigw, :Cls, :Clb, :Mps, :Cm, :Vod
        
        def initialize(cos=nil, timer=nil, cmq=nil, total=nil, ckafka=nil, apigw=nil, cls=nil, clb=nil, mps=nil, cm=nil, vod=nil)
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

        attr_accessor :Enable, :Qualifier, :TriggerName, :Type, :TriggerDesc, :AvailableStatus, :CustomArgument, :AddTime, :ModTime, :ResourceId, :BindStatus, :TriggerAttribute
        
        def initialize(enable=nil, qualifier=nil, triggername=nil, type=nil, triggerdesc=nil, availablestatus=nil, customargument=nil, addtime=nil, modtime=nil, resourceid=nil, bindstatus=nil, triggerattribute=nil)
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
        # @param RoutingConfig: 别名的路由信息，需要为别名指定附加版本时，必须提供此参数
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
            @RoutingConfig = RoutingConfig.new.deserialize(params['RoutingConfig'])
          end
          @Description = params['Description']
        end
      end

      # UpdateAlias返回参数结构体
      class UpdateAliasResponse < TencentCloud::Common::AbstractModel
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
        # @param EnvId: 函数所属环境
        # @type EnvId: String
        # @param Publish: 在更新时是否同步发布新版本，默认为：FALSE，不发布
        # @type Publish: String
        # @param Code: 函数代码
        # @type Code: :class:`Tencentcloud::Scf.v20180416.models.Code`
        # @param CodeSource: 代码来源方式，支持 ZipFile, Cos, Inline 之一
        # @type CodeSource: String

        attr_accessor :FunctionName, :Handler, :CosBucketName, :CosObjectName, :ZipFile, :Namespace, :CosBucketRegion, :EnvId, :Publish, :Code, :CodeSource
        
        def initialize(functionname=nil, handler=nil, cosbucketname=nil, cosobjectname=nil, zipfile=nil, namespace=nil, cosbucketregion=nil, envid=nil, publish=nil, code=nil, codesource=nil)
          @FunctionName = functionname
          @Handler = handler
          @CosBucketName = cosbucketname
          @CosObjectName = cosobjectname
          @ZipFile = zipfile
          @Namespace = namespace
          @CosBucketRegion = cosbucketregion
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
          @EnvId = params['EnvId']
          @Publish = params['Publish']
          unless params['Code'].nil?
            @Code = Code.new.deserialize(params['Code'])
          end
          @CodeSource = params['CodeSource']
        end
      end

      # UpdateFunctionCode返回参数结构体
      class UpdateFunctionCodeResponse < TencentCloud::Common::AbstractModel
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
        # @param Runtime: 函数运行环境，目前仅支持 Python2.7，Python3.6，Nodejs6.10，Nodejs8.9，Nodejs10.15，Nodejs12.16， PHP5， PHP7，Go1 ， Java8和CustomRuntime
        # @type Runtime: String
        # @param Environment: 函数的环境变量
        # @type Environment: :class:`Tencentcloud::Scf.v20180416.models.Environment`
        # @param Namespace: 函数所属命名空间
        # @type Namespace: String
        # @param VpcConfig: 函数的私有网络配置
        # @type VpcConfig: :class:`Tencentcloud::Scf.v20180416.models.VpcConfig`
        # @param Role: 函数绑定的角色
        # @type Role: String
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
        # @param InitTimeout: 函数初始化执行超时时间，默认15秒
        # @type InitTimeout: Integer

        attr_accessor :FunctionName, :Description, :MemorySize, :Timeout, :Runtime, :Environment, :Namespace, :VpcConfig, :Role, :ClsLogsetId, :ClsTopicId, :Publish, :L5Enable, :Layers, :DeadLetterConfig, :PublicNetConfig, :CfsConfig, :InitTimeout
        
        def initialize(functionname=nil, description=nil, memorysize=nil, timeout=nil, runtime=nil, environment=nil, namespace=nil, vpcconfig=nil, role=nil, clslogsetid=nil, clstopicid=nil, publish=nil, l5enable=nil, layers=nil, deadletterconfig=nil, publicnetconfig=nil, cfsconfig=nil, inittimeout=nil)
          @FunctionName = functionname
          @Description = description
          @MemorySize = memorysize
          @Timeout = timeout
          @Runtime = runtime
          @Environment = environment
          @Namespace = namespace
          @VpcConfig = vpcconfig
          @Role = role
          @ClsLogsetId = clslogsetid
          @ClsTopicId = clstopicid
          @Publish = publish
          @L5Enable = l5enable
          @Layers = layers
          @DeadLetterConfig = deadletterconfig
          @PublicNetConfig = publicnetconfig
          @CfsConfig = cfsconfig
          @InitTimeout = inittimeout
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Description = params['Description']
          @MemorySize = params['MemorySize']
          @Timeout = params['Timeout']
          @Runtime = params['Runtime']
          unless params['Environment'].nil?
            @Environment = Environment.new.deserialize(params['Environment'])
          end
          @Namespace = params['Namespace']
          unless params['VpcConfig'].nil?
            @VpcConfig = VpcConfig.new.deserialize(params['VpcConfig'])
          end
          @Role = params['Role']
          @ClsLogsetId = params['ClsLogsetId']
          @ClsTopicId = params['ClsTopicId']
          @Publish = params['Publish']
          @L5Enable = params['L5Enable']
          unless params['Layers'].nil?
            @Layers = []
            params['Layers'].each do |i|
              @Layers << LayerVersionSimple.new.deserialize(i)
            end
          end
          unless params['DeadLetterConfig'].nil?
            @DeadLetterConfig = DeadLetterConfig.new.deserialize(params['DeadLetterConfig'])
          end
          unless params['PublicNetConfig'].nil?
            @PublicNetConfig = PublicNetConfigIn.new.deserialize(params['PublicNetConfig'])
          end
          unless params['CfsConfig'].nil?
            @CfsConfig = CfsConfig.new.deserialize(params['CfsConfig'])
          end
          @InitTimeout = params['InitTimeout']
        end
      end

      # UpdateFunctionConfiguration返回参数结构体
      class UpdateFunctionConfigurationResponse < TencentCloud::Common::AbstractModel
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
            @AsyncTriggerConfig = AsyncTriggerConfig.new.deserialize(params['AsyncTriggerConfig'])
          end
          @FunctionName = params['FunctionName']
          @Namespace = params['Namespace']
        end
      end

      # UpdateFunctionEventInvokeConfig返回参数结构体
      class UpdateFunctionEventInvokeConfigResponse < TencentCloud::Common::AbstractModel
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
              @Namespace << NamespaceUsage.new.deserialize(i)
            end
          end
          @TotalConcurrencyMem = params['TotalConcurrencyMem']
          @TotalAllocatedConcurrencyMem = params['TotalAllocatedConcurrencyMem']
          @UserConcurrencyMemLimit = params['UserConcurrencyMemLimit']
        end
      end

      # 变量参数
      class Variable < TencentCloud::Common::AbstractModel
        # @param Key: 变量的名称
        # @type Key: String
        # @param Value: 变量的值
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

        attr_accessor :AllocatedProvisionedConcurrencyNum, :AvailableProvisionedConcurrencyNum, :Status, :StatusReason, :Qualifier
        
        def initialize(allocatedprovisionedconcurrencynum=nil, availableprovisionedconcurrencynum=nil, status=nil, statusreason=nil, qualifier=nil)
          @AllocatedProvisionedConcurrencyNum = allocatedprovisionedconcurrencynum
          @AvailableProvisionedConcurrencyNum = availableprovisionedconcurrencynum
          @Status = status
          @StatusReason = statusreason
          @Qualifier = qualifier
        end

        def deserialize(params)
          @AllocatedProvisionedConcurrencyNum = params['AllocatedProvisionedConcurrencyNum']
          @AvailableProvisionedConcurrencyNum = params['AvailableProvisionedConcurrencyNum']
          @Status = params['Status']
          @StatusReason = params['StatusReason']
          @Qualifier = params['Qualifier']
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

    end
  end
end

