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
  module Tem
    module V20201221
      # Cos token
      class CosToken < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID
        # @type RequestId: String
        # @param Bucket: 存储桶桶名
        # @type Bucket: String
        # @param Region: 存储桶所在区域
        # @type Region: String
        # @param TmpSecretId: 临时密钥的SecretId
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时密钥的SecretKey
        # @type TmpSecretKey: String
        # @param SessionToken: 临时密钥的 sessionToken
        # @type SessionToken: String
        # @param StartTime: 临时密钥获取的开始时间
        # @type StartTime: String
        # @param ExpiredTime: 临时密钥的 expiredTime
        # @type ExpiredTime: String
        # @param FullPath: 包完整路径
        # @type FullPath: String

        attr_accessor :RequestId, :Bucket, :Region, :TmpSecretId, :TmpSecretKey, :SessionToken, :StartTime, :ExpiredTime, :FullPath
        
        def initialize(requestid=nil, bucket=nil, region=nil, tmpsecretid=nil, tmpsecretkey=nil, sessiontoken=nil, starttime=nil, expiredtime=nil, fullpath=nil)
          @RequestId = requestid
          @Bucket = bucket
          @Region = region
          @TmpSecretId = tmpsecretid
          @TmpSecretKey = tmpsecretkey
          @SessionToken = sessiontoken
          @StartTime = starttime
          @ExpiredTime = expiredtime
          @FullPath = fullpath
        end

        def deserialize(params)
          @RequestId = params['RequestId']
          @Bucket = params['Bucket']
          @Region = params['Region']
          @TmpSecretId = params['TmpSecretId']
          @TmpSecretKey = params['TmpSecretKey']
          @SessionToken = params['SessionToken']
          @StartTime = params['StartTime']
          @ExpiredTime = params['ExpiredTime']
          @FullPath = params['FullPath']
        end
      end

      # CreateCosToken请求参数结构体
      class CreateCosTokenRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
        # @type ServiceId: String
        # @param VersionId: 服务版本ID
        # @type VersionId: String
        # @param PkgName: 包名
        # @type PkgName: String
        # @param OptType: optType 1上传  2查询
        # @type OptType: Integer
        # @param SourceChannel: 来源 channel
        # @type SourceChannel: Integer

        attr_accessor :ServiceId, :VersionId, :PkgName, :OptType, :SourceChannel
        
        def initialize(serviceid=nil, versionid=nil, pkgname=nil, opttype=nil, sourcechannel=nil)
          @ServiceId = serviceid
          @VersionId = versionid
          @PkgName = pkgname
          @OptType = opttype
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @VersionId = params['VersionId']
          @PkgName = params['PkgName']
          @OptType = params['OptType']
          @SourceChannel = params['SourceChannel']
        end
      end

      # CreateCosToken返回参数结构体
      class CreateCosTokenResponse < TencentCloud::Common::AbstractModel
        # @param Result: 成功时为CosToken对象，失败为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tem.v20201221.models.CosToken`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CosToken.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateNamespace请求参数结构体
      class CreateNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param Vpc: 私有网络名称
        # @type Vpc: String
        # @param SubnetIds: 子网列表
        # @type SubnetIds: Array
        # @param Description: 命名空间描述
        # @type Description: String
        # @param K8sVersion: K8s version
        # @type K8sVersion: String
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :NamespaceName, :Vpc, :SubnetIds, :Description, :K8sVersion, :SourceChannel
        
        def initialize(namespacename=nil, vpc=nil, subnetids=nil, description=nil, k8sversion=nil, sourcechannel=nil)
          @NamespaceName = namespacename
          @Vpc = vpc
          @SubnetIds = subnetids
          @Description = description
          @K8sVersion = k8sversion
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @NamespaceName = params['NamespaceName']
          @Vpc = params['Vpc']
          @SubnetIds = params['SubnetIds']
          @Description = params['Description']
          @K8sVersion = params['K8sVersion']
          @SourceChannel = params['SourceChannel']
        end
      end

      # CreateNamespace返回参数结构体
      class CreateNamespaceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 成功时为命名空间ID，失败为null
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

      # DescribeNamespaces请求参数结构体
      class DescribeNamespacesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页limit
        # @type Limit: Integer
        # @param Offset: 分页下标
        # @type Offset: Integer
        # @param SourceChannel: 来源source
        # @type SourceChannel: Integer

        attr_accessor :Limit, :Offset, :SourceChannel
        
        def initialize(limit=nil, offset=nil, sourcechannel=nil)
          @Limit = limit
          @Offset = offset
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SourceChannel = params['SourceChannel']
        end
      end

      # DescribeNamespaces返回参数结构体
      class DescribeNamespacesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Tem.v20201221.models.NamespacePage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = NamespacePage.new.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # Ingress 配置
      class IngressInfo < TencentCloud::Common::AbstractModel
        # @param NamespaceId: tem namespaceId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param EksNamespace: eks namespace
        # @type EksNamespace: String
        # @param AddressIPVersion: ip version
        # @type AddressIPVersion: String
        # @param Name: ingress name
        # @type Name: String
        # @param Rules: rules 配置
        # @type Rules: Array
        # @param ClbId: clb ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClbId: String
        # @param Tls: tls 配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tls: Array
        # @param ClusterId: eks clusterId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param Vip: clb ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip: String

        attr_accessor :NamespaceId, :EksNamespace, :AddressIPVersion, :Name, :Rules, :ClbId, :Tls, :ClusterId, :Vip
        
        def initialize(namespaceid=nil, eksnamespace=nil, addressipversion=nil, name=nil, rules=nil, clbid=nil, tls=nil, clusterid=nil, vip=nil)
          @NamespaceId = namespaceid
          @EksNamespace = eksnamespace
          @AddressIPVersion = addressipversion
          @Name = name
          @Rules = rules
          @ClbId = clbid
          @Tls = tls
          @ClusterId = clusterid
          @Vip = vip
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @EksNamespace = params['EksNamespace']
          @AddressIPVersion = params['AddressIPVersion']
          @Name = params['Name']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              @Rules << IngressRule.new.deserialize(i)
            end
          end
          @ClbId = params['ClbId']
          unless params['Tls'].nil?
            @Tls = []
            params['Tls'].each do |i|
              @Tls << IngressTls.new.deserialize(i)
            end
          end
          @ClusterId = params['ClusterId']
          @Vip = params['Vip']
        end
      end

      # ingress rule 配置
      class IngressRule < TencentCloud::Common::AbstractModel
        # @param Http: ingress rule value
        # @type Http: :class:`Tencentcloud::Tem.v20201221.models.IngressRuleValue`
        # @param Host: host 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Host: String

        attr_accessor :Http, :Host
        
        def initialize(http=nil, host=nil)
          @Http = http
          @Host = host
        end

        def deserialize(params)
          unless params['Http'].nil?
            @Http = IngressRuleValue.new.deserialize(params['Http'])
          end
          @Host = params['Host']
        end
      end

      # Ingress 规则 backend 配置
      class IngressRuleBackend < TencentCloud::Common::AbstractModel
        # @param ServiceName: eks service 名
        # @type ServiceName: String
        # @param ServicePort: eks service 端口
        # @type ServicePort: Integer

        attr_accessor :ServiceName, :ServicePort
        
        def initialize(servicename=nil, serviceport=nil)
          @ServiceName = servicename
          @ServicePort = serviceport
        end

        def deserialize(params)
          @ServiceName = params['ServiceName']
          @ServicePort = params['ServicePort']
        end
      end

      # Ingress Rule Path 配置
      class IngressRulePath < TencentCloud::Common::AbstractModel
        # @param Path: path 信息
        # @type Path: String
        # @param Backend: backend 配置
        # @type Backend: :class:`Tencentcloud::Tem.v20201221.models.IngressRuleBackend`

        attr_accessor :Path, :Backend
        
        def initialize(path=nil, backend=nil)
          @Path = path
          @Backend = backend
        end

        def deserialize(params)
          @Path = params['Path']
          unless params['Backend'].nil?
            @Backend = IngressRuleBackend.new.deserialize(params['Backend'])
          end
        end
      end

      # Ingress Rule Value 配置
      class IngressRuleValue < TencentCloud::Common::AbstractModel
        # @param Paths: rule 整体配置
        # @type Paths: Array

        attr_accessor :Paths
        
        def initialize(paths=nil)
          @Paths = paths
        end

        def deserialize(params)
          unless params['Paths'].nil?
            @Paths = []
            params['Paths'].each do |i|
              @Paths << IngressRulePath.new.deserialize(i)
            end
          end
        end
      end

      # ingress tls 配置
      class IngressTls < TencentCloud::Common::AbstractModel
        # @param Hosts: host 数组
        # @type Hosts: Array
        # @param SecretName: secret name
        # @type SecretName: String

        attr_accessor :Hosts, :SecretName
        
        def initialize(hosts=nil, secretname=nil)
          @Hosts = hosts
          @SecretName = secretname
        end

        def deserialize(params)
          @Hosts = params['Hosts']
          @SecretName = params['SecretName']
        end
      end

      # ModifyIngress请求参数结构体
      class ModifyIngressRequest < TencentCloud::Common::AbstractModel
        # @param Ingress: Ingress 规则配置
        # @type Ingress: :class:`Tencentcloud::Tem.v20201221.models.IngressInfo`
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :Ingress, :SourceChannel
        
        def initialize(ingress=nil, sourcechannel=nil)
          @Ingress = ingress
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          unless params['Ingress'].nil?
            @Ingress = IngressInfo.new.deserialize(params['Ingress'])
          end
          @SourceChannel = params['SourceChannel']
        end
      end

      # ModifyIngress返回参数结构体
      class ModifyIngressResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
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

      # ModifyNamespace请求参数结构体
      class ModifyNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 环境id
        # @type NamespaceId: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param Description: 命名空间描述
        # @type Description: String
        # @param Vpc: 私有网络名称
        # @type Vpc: String
        # @param SubnetIds: 子网网络
        # @type SubnetIds: Array
        # @param SourceChannel: 来源渠道
        # @type SourceChannel: Integer

        attr_accessor :NamespaceId, :NamespaceName, :Description, :Vpc, :SubnetIds, :SourceChannel
        
        def initialize(namespaceid=nil, namespacename=nil, description=nil, vpc=nil, subnetids=nil, sourcechannel=nil)
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @Description = description
          @Vpc = vpc
          @SubnetIds = subnetids
          @SourceChannel = sourcechannel
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @Description = params['Description']
          @Vpc = params['Vpc']
          @SubnetIds = params['SubnetIds']
          @SourceChannel = params['SourceChannel']
        end
      end

      # ModifyNamespace返回参数结构体
      class ModifyNamespaceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 成功时为命名空间ID，失败为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
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

      # 命名空间分页
      class NamespacePage < TencentCloud::Common::AbstractModel
        # @param Records: 分页内容
        # @type Records: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param Size: 条目数
        # @type Size: Integer
        # @param Pages: 页数
        # @type Pages: Integer

        attr_accessor :Records, :Total, :Size, :Pages
        
        def initialize(records=nil, total=nil, size=nil, pages=nil)
          @Records = records
          @Total = total
          @Size = size
          @Pages = pages
        end

        def deserialize(params)
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              @Records << TemNamespaceInfo.new.deserialize(i)
            end
          end
          @Total = params['Total']
          @Size = params['Size']
          @Pages = params['Pages']
        end
      end

      # 命名空间对象
      class TemNamespaceInfo < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 命名空间id
        # @type NamespaceId: String
        # @param Channel: 渠道
        # @type Channel: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param Region: 区域名称
        # @type Region: String
        # @param Description: 命名空间描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Status: 状态,1:已销毁;0:正常
        # @type Status: Integer
        # @param Vpc: vpc网络
        # @type Vpc: String
        # @param CreateDate: 创建时间
        # @type CreateDate: String
        # @param ModifyDate: 修改时间
        # @type ModifyDate: String
        # @param Modifier: 修改人
        # @type Modifier: String
        # @param Creator: 创建人
        # @type Creator: String
        # @param ServiceNum: 服务数
        # @type ServiceNum: Integer
        # @param RunInstancesNum: 运行实例数
        # @type RunInstancesNum: Integer
        # @param SubnetId: 子网络
        # @type SubnetId: String
        # @param TcbEnvStatus: tcb环境状态
        # @type TcbEnvStatus: String
        # @param ClusterStatus: eks cluster status
        # @type ClusterStatus: String

        attr_accessor :NamespaceId, :Channel, :NamespaceName, :Region, :Description, :Status, :Vpc, :CreateDate, :ModifyDate, :Modifier, :Creator, :ServiceNum, :RunInstancesNum, :SubnetId, :TcbEnvStatus, :ClusterStatus
        
        def initialize(namespaceid=nil, channel=nil, namespacename=nil, region=nil, description=nil, status=nil, vpc=nil, createdate=nil, modifydate=nil, modifier=nil, creator=nil, servicenum=nil, runinstancesnum=nil, subnetid=nil, tcbenvstatus=nil, clusterstatus=nil)
          @NamespaceId = namespaceid
          @Channel = channel
          @NamespaceName = namespacename
          @Region = region
          @Description = description
          @Status = status
          @Vpc = vpc
          @CreateDate = createdate
          @ModifyDate = modifydate
          @Modifier = modifier
          @Creator = creator
          @ServiceNum = servicenum
          @RunInstancesNum = runinstancesnum
          @SubnetId = subnetid
          @TcbEnvStatus = tcbenvstatus
          @ClusterStatus = clusterstatus
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @Channel = params['Channel']
          @NamespaceName = params['NamespaceName']
          @Region = params['Region']
          @Description = params['Description']
          @Status = params['Status']
          @Vpc = params['Vpc']
          @CreateDate = params['CreateDate']
          @ModifyDate = params['ModifyDate']
          @Modifier = params['Modifier']
          @Creator = params['Creator']
          @ServiceNum = params['ServiceNum']
          @RunInstancesNum = params['RunInstancesNum']
          @SubnetId = params['SubnetId']
          @TcbEnvStatus = params['TcbEnvStatus']
          @ClusterStatus = params['ClusterStatus']
        end
      end

    end
  end
end

