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
  module Clb
    module V20180317
      # AssociateTargetGroups请求参数结构体
      class AssociateTargetGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Associations: 绑定的关系数组。
        # @type Associations: Array

        attr_accessor :Associations

        def initialize(associations=nil)
          @Associations = associations
        end

        def deserialize(params)
          unless params['Associations'].nil?
            @Associations = []
            params['Associations'].each do |i|
              targetgroupassociation_tmp = TargetGroupAssociation.new
              targetgroupassociation_tmp.deserialize(i)
              @Associations << targetgroupassociation_tmp
            end
          end
        end
      end

      # AssociateTargetGroups返回参数结构体
      class AssociateTargetGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 目标组关联到的规则
      class AssociationItem < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 关联到的负载均衡ID
        # @type LoadBalancerId: String
        # @param ListenerId: 关联到的监听器ID
        # @type ListenerId: String
        # @param LocationId: 关联到的转发规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocationId: String
        # @param Protocol: 关联到的监听器协议类型，如HTTP,TCP,
        # @type Protocol: String
        # @param Port: 关联到的监听器端口
        # @type Port: Integer
        # @param Domain: 关联到的转发规则域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Url: 关联到的转发规则URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param LoadBalancerName: 负载均衡名称
        # @type LoadBalancerName: String
        # @param ListenerName: 监听器名称
        # @type ListenerName: String

        attr_accessor :LoadBalancerId, :ListenerId, :LocationId, :Protocol, :Port, :Domain, :Url, :LoadBalancerName, :ListenerName

        def initialize(loadbalancerid=nil, listenerid=nil, locationid=nil, protocol=nil, port=nil, domain=nil, url=nil, loadbalancername=nil, listenername=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @LocationId = locationid
          @Protocol = protocol
          @Port = port
          @Domain = domain
          @Url = url
          @LoadBalancerName = loadbalancername
          @ListenerName = listenername
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @LocationId = params['LocationId']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @Domain = params['Domain']
          @Url = params['Url']
          @LoadBalancerName = params['LoadBalancerName']
          @ListenerName = params['ListenerName']
        end
      end

      # AutoRewrite请求参数结构体
      class AutoRewriteRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerId: HTTPS:443监听器的ID。
        # @type ListenerId: String
        # @param Domains: HTTPS:443监听器下需要重定向的域名，若不填，则对HTTPS:443监听器下的所有域名都设置重定向。
        # @type Domains: Array
        # @param RewriteCodes: 重定向状态码，可取值301,302,307。
        # @type RewriteCodes: Array
        # @param TakeUrls: 重定向是否携带匹配的URL。
        # @type TakeUrls: Array

        attr_accessor :LoadBalancerId, :ListenerId, :Domains, :RewriteCodes, :TakeUrls

        def initialize(loadbalancerid=nil, listenerid=nil, domains=nil, rewritecodes=nil, takeurls=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Domains = domains
          @RewriteCodes = rewritecodes
          @TakeUrls = takeurls
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @Domains = params['Domains']
          @RewriteCodes = params['RewriteCodes']
          @TakeUrls = params['TakeUrls']
        end
      end

      # AutoRewrite返回参数结构体
      class AutoRewriteResponse < TencentCloud::Common::AbstractModel
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

      # 监听器绑定的后端服务的详细信息
      class Backend < TencentCloud::Common::AbstractModel
        # @param Type: 后端服务的类型，可取：CVM、ENI
        # @type Type: String
        # @param InstanceId: 后端服务的唯一 ID，如 ins-abcd1234
        # @type InstanceId: String
        # @param Port: 后端服务的监听端口
        # @type Port: Integer
        # @param Weight: 后端服务的转发权重，取值范围：[0, 100]，默认为 10。
        # @type Weight: Integer
        # @param PublicIpAddresses: 后端服务的外网 IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIpAddresses: Array
        # @param PrivateIpAddresses: 后端服务的内网 IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIpAddresses: Array
        # @param InstanceName: 后端服务的实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param RegisteredTime: 后端服务被绑定的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegisteredTime: String
        # @param EniId: 弹性网卡唯一ID，如 eni-1234abcd
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EniId: String

        attr_accessor :Type, :InstanceId, :Port, :Weight, :PublicIpAddresses, :PrivateIpAddresses, :InstanceName, :RegisteredTime, :EniId

        def initialize(type=nil, instanceid=nil, port=nil, weight=nil, publicipaddresses=nil, privateipaddresses=nil, instancename=nil, registeredtime=nil, eniid=nil)
          @Type = type
          @InstanceId = instanceid
          @Port = port
          @Weight = weight
          @PublicIpAddresses = publicipaddresses
          @PrivateIpAddresses = privateipaddresses
          @InstanceName = instancename
          @RegisteredTime = registeredtime
          @EniId = eniid
        end

        def deserialize(params)
          @Type = params['Type']
          @InstanceId = params['InstanceId']
          @Port = params['Port']
          @Weight = params['Weight']
          @PublicIpAddresses = params['PublicIpAddresses']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @InstanceName = params['InstanceName']
          @RegisteredTime = params['RegisteredTime']
          @EniId = params['EniId']
        end
      end

      # 监听器或者转发规则绑定的目标组基本信息
      class BasicTargetGroupInfo < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组ID
        # @type TargetGroupId: String
        # @param TargetGroupName: 目标组名称
        # @type TargetGroupName: String

        attr_accessor :TargetGroupId, :TargetGroupName

        def initialize(targetgroupid=nil, targetgroupname=nil)
          @TargetGroupId = targetgroupid
          @TargetGroupName = targetgroupname
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @TargetGroupName = params['TargetGroupName']
        end
      end

      # BatchDeregisterTargets请求参数结构体
      class BatchDeregisterTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡ID。
        # @type LoadBalancerId: String
        # @param Targets: 解绑目标。
        # @type Targets: Array

        attr_accessor :LoadBalancerId, :Targets

        def initialize(loadbalancerid=nil, targets=nil)
          @LoadBalancerId = loadbalancerid
          @Targets = targets
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              batchtarget_tmp = BatchTarget.new
              batchtarget_tmp.deserialize(i)
              @Targets << batchtarget_tmp
            end
          end
        end
      end

      # BatchDeregisterTargets返回参数结构体
      class BatchDeregisterTargetsResponse < TencentCloud::Common::AbstractModel
        # @param FailListenerIdSet: 解绑失败的监听器ID。
        # @type FailListenerIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailListenerIdSet, :RequestId

        def initialize(faillisteneridset=nil, requestid=nil)
          @FailListenerIdSet = faillisteneridset
          @RequestId = requestid
        end

        def deserialize(params)
          @FailListenerIdSet = params['FailListenerIdSet']
          @RequestId = params['RequestId']
        end
      end

      # BatchModifyTargetWeight请求参数结构体
      class BatchModifyTargetWeightRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param ModifyList: 要批量修改权重的列表。
        # @type ModifyList: Array

        attr_accessor :LoadBalancerId, :ModifyList

        def initialize(loadbalancerid=nil, modifylist=nil)
          @LoadBalancerId = loadbalancerid
          @ModifyList = modifylist
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['ModifyList'].nil?
            @ModifyList = []
            params['ModifyList'].each do |i|
              rsweightrule_tmp = RsWeightRule.new
              rsweightrule_tmp.deserialize(i)
              @ModifyList << rsweightrule_tmp
            end
          end
        end
      end

      # BatchModifyTargetWeight返回参数结构体
      class BatchModifyTargetWeightResponse < TencentCloud::Common::AbstractModel
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

      # BatchRegisterTargets请求参数结构体
      class BatchRegisterTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡ID。
        # @type LoadBalancerId: String
        # @param Targets: 绑定目标。
        # @type Targets: Array

        attr_accessor :LoadBalancerId, :Targets

        def initialize(loadbalancerid=nil, targets=nil)
          @LoadBalancerId = loadbalancerid
          @Targets = targets
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              batchtarget_tmp = BatchTarget.new
              batchtarget_tmp.deserialize(i)
              @Targets << batchtarget_tmp
            end
          end
        end
      end

      # BatchRegisterTargets返回参数结构体
      class BatchRegisterTargetsResponse < TencentCloud::Common::AbstractModel
        # @param FailListenerIdSet: 绑定失败的监听器ID，如为空表示全部绑定成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailListenerIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailListenerIdSet, :RequestId

        def initialize(faillisteneridset=nil, requestid=nil)
          @FailListenerIdSet = faillisteneridset
          @RequestId = requestid
        end

        def deserialize(params)
          @FailListenerIdSet = params['FailListenerIdSet']
          @RequestId = params['RequestId']
        end
      end

      # 批量绑定类型
      class BatchTarget < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器 ID。
        # @type ListenerId: String
        # @param Port: 绑定端口。
        # @type Port: Integer
        # @param InstanceId: 子机 ID。表示绑定主网卡主 IP。
        # @type InstanceId: String
        # @param EniIp: 绑定 IP 时需要传入此参数，支持弹性网卡的 IP 和其他内网 IP，如果是弹性网卡则必须先绑定至CVM，然后才能绑定到负载均衡实例。
        # 注意：参数 InstanceId、EniIp 只能传入一个且必须传入一个。如果绑定双栈IPV6子机，必须传该参数。
        # @type EniIp: String
        # @param Weight: 子机权重，范围[0, 100]。绑定时如果不存在，则默认为10。
        # @type Weight: Integer
        # @param LocationId: 七层规则 ID。
        # @type LocationId: String

        attr_accessor :ListenerId, :Port, :InstanceId, :EniIp, :Weight, :LocationId

        def initialize(listenerid=nil, port=nil, instanceid=nil, eniip=nil, weight=nil, locationid=nil)
          @ListenerId = listenerid
          @Port = port
          @InstanceId = instanceid
          @EniIp = eniip
          @Weight = weight
          @LocationId = locationid
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Port = params['Port']
          @InstanceId = params['InstanceId']
          @EniIp = params['EniIp']
          @Weight = params['Weight']
          @LocationId = params['LocationId']
        end
      end

      # 绑定关系，包含监听器名字、协议、url、vport。
      class BindDetailItem < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 配置绑定的CLB ID
        # @type LoadBalancerId: String
        # @param ListenerId: 配置绑定的监听器ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerId: String
        # @param Domain: 配置绑定的域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param LocationId: 配置绑定的规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocationId: String
        # @param ListenerName: 监听器名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerName: String
        # @param Protocol: 监听器协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Vport: 监听器端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vport: Integer
        # @param Url: location的url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param UconfigId: 配置ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UconfigId: String

        attr_accessor :LoadBalancerId, :ListenerId, :Domain, :LocationId, :ListenerName, :Protocol, :Vport, :Url, :UconfigId

        def initialize(loadbalancerid=nil, listenerid=nil, domain=nil, locationid=nil, listenername=nil, protocol=nil, vport=nil, url=nil, uconfigid=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Domain = domain
          @LocationId = locationid
          @ListenerName = listenername
          @Protocol = protocol
          @Vport = vport
          @Url = url
          @UconfigId = uconfigid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @Domain = params['Domain']
          @LocationId = params['LocationId']
          @ListenerName = params['ListenerName']
          @Protocol = params['Protocol']
          @Vport = params['Vport']
          @Url = params['Url']
          @UconfigId = params['UconfigId']
        end
      end

      # 加入了12306黑名单的IP
      class BlockedIP < TencentCloud::Common::AbstractModel
        # @param IP: 黑名单IP
        # @type IP: String
        # @param CreateTime: 加入黑名单的时间
        # @type CreateTime: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: String

        attr_accessor :IP, :CreateTime, :ExpireTime

        def initialize(ip=nil, createtime=nil, expiretime=nil)
          @IP = ip
          @CreateTime = createtime
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @IP = params['IP']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
        end
      end

      # 证书ID，以及与该证书ID关联的负载均衡实例列表
      class CertIdRelatedWithLoadBalancers < TencentCloud::Common::AbstractModel
        # @param CertId: 证书ID
        # @type CertId: String
        # @param LoadBalancers: 与证书关联的负载均衡实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancers: Array

        attr_accessor :CertId, :LoadBalancers

        def initialize(certid=nil, loadbalancers=nil)
          @CertId = certid
          @LoadBalancers = loadbalancers
        end

        def deserialize(params)
          @CertId = params['CertId']
          unless params['LoadBalancers'].nil?
            @LoadBalancers = []
            params['LoadBalancers'].each do |i|
              loadbalancer_tmp = LoadBalancer.new
              loadbalancer_tmp.deserialize(i)
              @LoadBalancers << loadbalancer_tmp
            end
          end
        end
      end

      # 证书信息
      class CertInfo < TencentCloud::Common::AbstractModel
        # @param CertId: 证书 ID，如果不填写此项则必须上传证书内容，包括CertName, CertContent，若为服务端证书必须包含CertKey。
        # @type CertId: String
        # @param CertName: 上传证书的名称，如果没有 CertId，则此项必传。
        # @type CertName: String
        # @param CertContent: 上传证书的公钥；如果没有 CertId，则此项必传。
        # @type CertContent: String
        # @param CertKey: 上传服务端证书的私钥；如果没有 CertId，则此项必传。
        # @type CertKey: String

        attr_accessor :CertId, :CertName, :CertContent, :CertKey

        def initialize(certid=nil, certname=nil, certcontent=nil, certkey=nil)
          @CertId = certid
          @CertName = certname
          @CertContent = certcontent
          @CertKey = certkey
        end

        def deserialize(params)
          @CertId = params['CertId']
          @CertName = params['CertName']
          @CertContent = params['CertContent']
          @CertKey = params['CertKey']
        end
      end

      # 证书信息
      class CertificateInput < TencentCloud::Common::AbstractModel
        # @param SSLMode: 认证类型，UNIDIRECTIONAL：单向认证，MUTUAL：双向认证
        # @type SSLMode: String
        # @param CertId: 服务端证书的 ID，如果不填写此项则必须上传证书，包括 CertContent，CertKey，CertName。
        # @type CertId: String
        # @param CertCaId: 客户端证书的 ID，当监听器采用双向认证，即 SSLMode=MUTUAL 时，如果不填写此项则必须上传客户端证书，包括 CertCaContent，CertCaName。
        # @type CertCaId: String
        # @param CertName: 上传服务端证书的名称，如果没有 CertId，则此项必传。
        # @type CertName: String
        # @param CertKey: 上传服务端证书的 key，如果没有 CertId，则此项必传。
        # @type CertKey: String
        # @param CertContent: 上传服务端证书的内容，如果没有 CertId，则此项必传。
        # @type CertContent: String
        # @param CertCaName: 上传客户端 CA 证书的名称，如果 SSLMode=mutual，如果没有 CertCaId，则此项必传。
        # @type CertCaName: String
        # @param CertCaContent: 上传客户端证书的内容，如果 SSLMode=mutual，如果没有 CertCaId，则此项必传。
        # @type CertCaContent: String

        attr_accessor :SSLMode, :CertId, :CertCaId, :CertName, :CertKey, :CertContent, :CertCaName, :CertCaContent

        def initialize(sslmode=nil, certid=nil, certcaid=nil, certname=nil, certkey=nil, certcontent=nil, certcaname=nil, certcacontent=nil)
          @SSLMode = sslmode
          @CertId = certid
          @CertCaId = certcaid
          @CertName = certname
          @CertKey = certkey
          @CertContent = certcontent
          @CertCaName = certcaname
          @CertCaContent = certcacontent
        end

        def deserialize(params)
          @SSLMode = params['SSLMode']
          @CertId = params['CertId']
          @CertCaId = params['CertCaId']
          @CertName = params['CertName']
          @CertKey = params['CertKey']
          @CertContent = params['CertContent']
          @CertCaName = params['CertCaName']
          @CertCaContent = params['CertCaContent']
        end
      end

      # 证书相关信息
      class CertificateOutput < TencentCloud::Common::AbstractModel
        # @param SSLMode: 认证类型，UNIDIRECTIONAL：单向认证，MUTUAL：双向认证
        # @type SSLMode: String
        # @param CertId: 服务端证书的ID。
        # @type CertId: String
        # @param CertCaId: 客户端证书的 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertCaId: String
        # @param ExtCertIds: 多本服务器证书场景扩展的服务器证书ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtCertIds: Array

        attr_accessor :SSLMode, :CertId, :CertCaId, :ExtCertIds

        def initialize(sslmode=nil, certid=nil, certcaid=nil, extcertids=nil)
          @SSLMode = sslmode
          @CertId = certid
          @CertCaId = certcaid
          @ExtCertIds = extcertids
        end

        def deserialize(params)
          @SSLMode = params['SSLMode']
          @CertId = params['CertId']
          @CertCaId = params['CertCaId']
          @ExtCertIds = params['ExtCertIds']
        end
      end

      # 传统型负载均衡后端服务的健康状态
      class ClassicalHealth < TencentCloud::Common::AbstractModel
        # @param IP: 后端服务的内网 IP
        # @type IP: String
        # @param Port: 后端服务的端口
        # @type Port: Integer
        # @param ListenerPort: 负载均衡的监听端口
        # @type ListenerPort: Integer
        # @param Protocol: 转发协议
        # @type Protocol: String
        # @param HealthStatus: 健康检查结果，1 表示健康，0 表示不健康
        # @type HealthStatus: Integer

        attr_accessor :IP, :Port, :ListenerPort, :Protocol, :HealthStatus

        def initialize(ip=nil, port=nil, listenerport=nil, protocol=nil, healthstatus=nil)
          @IP = ip
          @Port = port
          @ListenerPort = listenerport
          @Protocol = protocol
          @HealthStatus = healthstatus
        end

        def deserialize(params)
          @IP = params['IP']
          @Port = params['Port']
          @ListenerPort = params['ListenerPort']
          @Protocol = params['Protocol']
          @HealthStatus = params['HealthStatus']
        end
      end

      # 传统型负载均衡监听器信息
      class ClassicalListener < TencentCloud::Common::AbstractModel
        # @param ListenerId: 负载均衡监听器ID
        # @type ListenerId: String
        # @param ListenerPort: 负载均衡监听器端口
        # @type ListenerPort: Integer
        # @param InstancePort: 监听器后端转发端口
        # @type InstancePort: Integer
        # @param ListenerName: 监听器名称
        # @type ListenerName: String
        # @param Protocol: 监听器协议类型
        # @type Protocol: String
        # @param SessionExpire: 会话保持时间
        # @type SessionExpire: Integer
        # @param HealthSwitch: 是否开启了健康检查：1（开启）、0（关闭）
        # @type HealthSwitch: Integer
        # @param TimeOut: 响应超时时间
        # @type TimeOut: Integer
        # @param IntervalTime: 检查间隔
        # @type IntervalTime: Integer
        # @param HealthNum: 健康阈值
        # @type HealthNum: Integer
        # @param UnhealthNum: 不健康阈值
        # @type UnhealthNum: Integer
        # @param HttpHash: 传统型公网负载均衡的 HTTP、HTTPS 监听器的请求均衡方法。wrr 表示按权重轮询，ip_hash 表示根据访问的源 IP 进行一致性哈希方式来分发
        # @type HttpHash: String
        # @param HttpCode: 传统型公网负载均衡的 HTTP、HTTPS 监听器的健康检查返回码。具体可参考创建监听器中对该字段的解释
        # @type HttpCode: Integer
        # @param HttpCheckPath: 传统型公网负载均衡的 HTTP、HTTPS 监听器的健康检查路径
        # @type HttpCheckPath: String
        # @param SSLMode: 传统型公网负载均衡的 HTTPS 监听器的认证方式
        # @type SSLMode: String
        # @param CertId: 传统型公网负载均衡的 HTTPS 监听器的服务端证书 ID
        # @type CertId: String
        # @param CertCaId: 传统型公网负载均衡的 HTTPS 监听器的客户端证书 ID
        # @type CertCaId: String
        # @param Status: 监听器的状态，0 表示创建中，1 表示运行中
        # @type Status: Integer

        attr_accessor :ListenerId, :ListenerPort, :InstancePort, :ListenerName, :Protocol, :SessionExpire, :HealthSwitch, :TimeOut, :IntervalTime, :HealthNum, :UnhealthNum, :HttpHash, :HttpCode, :HttpCheckPath, :SSLMode, :CertId, :CertCaId, :Status

        def initialize(listenerid=nil, listenerport=nil, instanceport=nil, listenername=nil, protocol=nil, sessionexpire=nil, healthswitch=nil, timeout=nil, intervaltime=nil, healthnum=nil, unhealthnum=nil, httphash=nil, httpcode=nil, httpcheckpath=nil, sslmode=nil, certid=nil, certcaid=nil, status=nil)
          @ListenerId = listenerid
          @ListenerPort = listenerport
          @InstancePort = instanceport
          @ListenerName = listenername
          @Protocol = protocol
          @SessionExpire = sessionexpire
          @HealthSwitch = healthswitch
          @TimeOut = timeout
          @IntervalTime = intervaltime
          @HealthNum = healthnum
          @UnhealthNum = unhealthnum
          @HttpHash = httphash
          @HttpCode = httpcode
          @HttpCheckPath = httpcheckpath
          @SSLMode = sslmode
          @CertId = certid
          @CertCaId = certcaid
          @Status = status
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerPort = params['ListenerPort']
          @InstancePort = params['InstancePort']
          @ListenerName = params['ListenerName']
          @Protocol = params['Protocol']
          @SessionExpire = params['SessionExpire']
          @HealthSwitch = params['HealthSwitch']
          @TimeOut = params['TimeOut']
          @IntervalTime = params['IntervalTime']
          @HealthNum = params['HealthNum']
          @UnhealthNum = params['UnhealthNum']
          @HttpHash = params['HttpHash']
          @HttpCode = params['HttpCode']
          @HttpCheckPath = params['HttpCheckPath']
          @SSLMode = params['SSLMode']
          @CertId = params['CertId']
          @CertCaId = params['CertCaId']
          @Status = params['Status']
        end
      end

      # 负载均衡信息
      class ClassicalLoadBalancerInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 后端实例ID
        # @type InstanceId: String
        # @param LoadBalancerIds: 负载均衡实例ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerIds: Array

        attr_accessor :InstanceId, :LoadBalancerIds

        def initialize(instanceid=nil, loadbalancerids=nil)
          @InstanceId = instanceid
          @LoadBalancerIds = loadbalancerids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @LoadBalancerIds = params['LoadBalancerIds']
        end
      end

      # 传统型负载均衡的后端服务相关信息
      class ClassicalTarget < TencentCloud::Common::AbstractModel
        # @param Type: 后端服务的类型，可取值：CVM、ENI（即将支持）
        # @type Type: String
        # @param InstanceId: 后端服务的唯一 ID，可通过 DescribeInstances 接口返回字段中的 unInstanceId 字段获取
        # @type InstanceId: String
        # @param Weight: 后端服务的转发权重，取值范围：[0, 100]，默认为 10。
        # @type Weight: Integer
        # @param PublicIpAddresses: 后端服务的外网 IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIpAddresses: Array
        # @param PrivateIpAddresses: 后端服务的内网 IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIpAddresses: Array
        # @param InstanceName: 后端服务的实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param RunFlag: 后端服务的状态
        # 1：故障，2：运行中，3：创建中，4：已关机，5：已退还，6：退还中， 7：重启中，8：开机中，9：关机中，10：密码重置中，11：格式化中，12：镜像制作中，13：带宽设置中，14：重装系统中，19：升级中，21：热迁移中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunFlag: Integer

        attr_accessor :Type, :InstanceId, :Weight, :PublicIpAddresses, :PrivateIpAddresses, :InstanceName, :RunFlag

        def initialize(type=nil, instanceid=nil, weight=nil, publicipaddresses=nil, privateipaddresses=nil, instancename=nil, runflag=nil)
          @Type = type
          @InstanceId = instanceid
          @Weight = weight
          @PublicIpAddresses = publicipaddresses
          @PrivateIpAddresses = privateipaddresses
          @InstanceName = instancename
          @RunFlag = runflag
        end

        def deserialize(params)
          @Type = params['Type']
          @InstanceId = params['InstanceId']
          @Weight = params['Weight']
          @PublicIpAddresses = params['PublicIpAddresses']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @InstanceName = params['InstanceName']
          @RunFlag = params['RunFlag']
        end
      end

      # 传统型负载均衡的后端信息
      class ClassicalTargetInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 后端实例ID
        # @type InstanceId: String
        # @param Weight: 权重，取值范围 [0, 100]
        # @type Weight: Integer

        attr_accessor :InstanceId, :Weight

        def initialize(instanceid=nil, weight=nil)
          @InstanceId = instanceid
          @Weight = weight
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Weight = params['Weight']
        end
      end

      # CloneLoadBalancer请求参数结构体
      class CloneLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡ID。
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 克隆出负载均衡实例的名称，规则：1-60 个英文、汉字、数字、连接线“-”或下划线“_”。
        # 注意：如果名称与系统中已有负载均衡实例的名称相同，则系统将会自动生成此次创建的负载均衡实例的名称。
        # @type LoadBalancerName: String
        # @param ProjectId: 负载均衡实例所属的项目 ID，可以通过 [DescribeProject](https://cloud.tencent.com/document/product/378/4400) 接口获取。不传此参数则视为默认项目。
        # @type ProjectId: Integer
        # @param MasterZoneId: 仅适用于公网负载均衡。设置跨可用区容灾时的主可用区ID，例如 100001 或 ap-guangzhou-1
        # 注：主可用区是需要承载流量的可用区，备可用区默认不承载流量，主可用区不可用时才使用备可用区，平台将为您自动选择最佳备可用区。可通过 [DescribeResources](https://cloud.tencent.com/document/api/214/70213) 接口查询一个地域的主可用区的列表。
        # @type MasterZoneId: String
        # @param SlaveZoneId: 仅适用于公网负载均衡。设置跨可用区容灾时的备可用区ID，例如 100001 或 ap-guangzhou-1
        # 注：备可用区是主可用区故障后，需要承载流量的可用区。可通过 [DescribeResources](https://cloud.tencent.com/document/api/214/70213) 接口查询一个地域的主/备可用区的列表。
        # @type SlaveZoneId: String
        # @param ZoneId: 仅适用于公网负载均衡。可用区ID，指定可用区以创建负载均衡实例。如：ap-guangzhou-1。
        # @type ZoneId: String
        # @param InternetAccessible: 仅适用于公网负载均衡。负载均衡的网络计费模式。
        # @type InternetAccessible: :class:`Tencentcloud::Clb.v20180317.models.InternetAccessible`
        # @param VipIsp: 仅适用于公网负载均衡。CMCC | CTCC | CUCC，分别对应 移动 | 电信 | 联通，如果不指定本参数，则默认使用BGP。可通过 [DescribeResources](https://cloud.tencent.com/document/api/214/70213)  接口查询一个地域所支持的Isp。如果指定运营商，则网络计费模式只能使用按带宽包计费(BANDWIDTH_PACKAGE)。
        # @type VipIsp: String
        # @param Vip: 指定Vip申请负载均衡。
        # @type Vip: String
        # @param Tags: 购买负载均衡同时，给负载均衡打上标签。
        # @type Tags: Array
        # @param ExclusiveCluster: 独占集群信息。
        # @type ExclusiveCluster: :class:`Tencentcloud::Clb.v20180317.models.ExclusiveCluster`
        # @param BandwidthPackageId: 带宽包ID，指定此参数时，网络计费方式（InternetAccessible.InternetChargeType）只支持按带宽包计费（BANDWIDTH_PACKAGE）。
        # @type BandwidthPackageId: String
        # @param SnatPro: 是否支持绑定跨地域/跨Vpc绑定IP的功能。
        # @type SnatPro: Boolean
        # @param SnatIps: 开启绑定跨地域/跨Vpc绑定IP的功能后，创建SnatIp。
        # @type SnatIps: Array
        # @param ClusterIds: 公网独占集群ID或者CDCId。
        # @type ClusterIds: Array
        # @param SlaType: 性能容量型规格。
        # @type SlaType: String
        # @param ClusterTag: Stgw独占集群的标签。
        # @type ClusterTag: String
        # @param Zones: 仅适用于私有网络内网负载均衡。内网就近接入时，选择可用区下发。
        # @type Zones: Array
        # @param EipAddressId: EIP 的唯一 ID，形如：eip-11112222，仅适用于内网负载均衡绑定EIP。
        # @type EipAddressId: String

        attr_accessor :LoadBalancerId, :LoadBalancerName, :ProjectId, :MasterZoneId, :SlaveZoneId, :ZoneId, :InternetAccessible, :VipIsp, :Vip, :Tags, :ExclusiveCluster, :BandwidthPackageId, :SnatPro, :SnatIps, :ClusterIds, :SlaType, :ClusterTag, :Zones, :EipAddressId

        def initialize(loadbalancerid=nil, loadbalancername=nil, projectid=nil, masterzoneid=nil, slavezoneid=nil, zoneid=nil, internetaccessible=nil, vipisp=nil, vip=nil, tags=nil, exclusivecluster=nil, bandwidthpackageid=nil, snatpro=nil, snatips=nil, clusterids=nil, slatype=nil, clustertag=nil, zones=nil, eipaddressid=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @ProjectId = projectid
          @MasterZoneId = masterzoneid
          @SlaveZoneId = slavezoneid
          @ZoneId = zoneid
          @InternetAccessible = internetaccessible
          @VipIsp = vipisp
          @Vip = vip
          @Tags = tags
          @ExclusiveCluster = exclusivecluster
          @BandwidthPackageId = bandwidthpackageid
          @SnatPro = snatpro
          @SnatIps = snatips
          @ClusterIds = clusterids
          @SlaType = slatype
          @ClusterTag = clustertag
          @Zones = zones
          @EipAddressId = eipaddressid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @ProjectId = params['ProjectId']
          @MasterZoneId = params['MasterZoneId']
          @SlaveZoneId = params['SlaveZoneId']
          @ZoneId = params['ZoneId']
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @VipIsp = params['VipIsp']
          @Vip = params['Vip']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          unless params['ExclusiveCluster'].nil?
            @ExclusiveCluster = ExclusiveCluster.new
            @ExclusiveCluster.deserialize(params['ExclusiveCluster'])
          end
          @BandwidthPackageId = params['BandwidthPackageId']
          @SnatPro = params['SnatPro']
          unless params['SnatIps'].nil?
            @SnatIps = []
            params['SnatIps'].each do |i|
              snatip_tmp = SnatIp.new
              snatip_tmp.deserialize(i)
              @SnatIps << snatip_tmp
            end
          end
          @ClusterIds = params['ClusterIds']
          @SlaType = params['SlaType']
          @ClusterTag = params['ClusterTag']
          @Zones = params['Zones']
          @EipAddressId = params['EipAddressId']
        end
      end

      # CloneLoadBalancer返回参数结构体
      class CloneLoadBalancerResponse < TencentCloud::Common::AbstractModel
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

      # 集群的详细信息，如集群ID，名称，类型，可用区，标签等
      class Cluster < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群唯一ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param ClusterType: 集群类型，如TGW，STGW，VPCGW
        # @type ClusterType: String
        # @param ClusterTag: 集群标签，只有STGW集群有标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterTag: String
        # @param Zone: 集群所在可用区，如ap-guangzhou-1
        # @type Zone: String
        # @param Network: 集群网络类型，如Public，Private
        # @type Network: String
        # @param MaxConn: 最大连接数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxConn: Integer
        # @param MaxInFlow: 最大入带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxInFlow: Integer
        # @param MaxInPkg: 最大入包量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxInPkg: Integer
        # @param MaxOutFlow: 最大出带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxOutFlow: Integer
        # @param MaxOutPkg: 最大出包量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxOutPkg: Integer
        # @param MaxNewConn: 最大新建连接数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxNewConn: Integer
        # @param HTTPMaxNewConn: http最大新建连接数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HTTPMaxNewConn: Integer
        # @param HTTPSMaxNewConn: https最大新建连接数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HTTPSMaxNewConn: Integer
        # @param HTTPQps: http QPS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HTTPQps: Integer
        # @param HTTPSQps: https QPS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HTTPSQps: Integer
        # @param ResourceCount: 集群内资源总数目
        # @type ResourceCount: Integer
        # @param IdleResourceCount: 集群内空闲资源数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdleResourceCount: Integer
        # @param LoadBalanceDirectorCount: 集群内转发机的数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalanceDirectorCount: Integer
        # @param Isp: 集群的Isp属性，如："BGP","CMCC","CUCC","CTCC","INTERNAL"。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Isp: String
        # @param ClustersZone: 集群所在的可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClustersZone: :class:`Tencentcloud::Clb.v20180317.models.ClustersZone`
        # @param ClustersVersion: 集群版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClustersVersion: String
        # @param DisasterRecoveryType: 集群容灾类型，如SINGLE-ZONE，DISASTER-RECOVERY，MUTUAL-DISASTER-RECOVERY
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisasterRecoveryType: String

        attr_accessor :ClusterId, :ClusterName, :ClusterType, :ClusterTag, :Zone, :Network, :MaxConn, :MaxInFlow, :MaxInPkg, :MaxOutFlow, :MaxOutPkg, :MaxNewConn, :HTTPMaxNewConn, :HTTPSMaxNewConn, :HTTPQps, :HTTPSQps, :ResourceCount, :IdleResourceCount, :LoadBalanceDirectorCount, :Isp, :ClustersZone, :ClustersVersion, :DisasterRecoveryType

        def initialize(clusterid=nil, clustername=nil, clustertype=nil, clustertag=nil, zone=nil, network=nil, maxconn=nil, maxinflow=nil, maxinpkg=nil, maxoutflow=nil, maxoutpkg=nil, maxnewconn=nil, httpmaxnewconn=nil, httpsmaxnewconn=nil, httpqps=nil, httpsqps=nil, resourcecount=nil, idleresourcecount=nil, loadbalancedirectorcount=nil, isp=nil, clusterszone=nil, clustersversion=nil, disasterrecoverytype=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @ClusterType = clustertype
          @ClusterTag = clustertag
          @Zone = zone
          @Network = network
          @MaxConn = maxconn
          @MaxInFlow = maxinflow
          @MaxInPkg = maxinpkg
          @MaxOutFlow = maxoutflow
          @MaxOutPkg = maxoutpkg
          @MaxNewConn = maxnewconn
          @HTTPMaxNewConn = httpmaxnewconn
          @HTTPSMaxNewConn = httpsmaxnewconn
          @HTTPQps = httpqps
          @HTTPSQps = httpsqps
          @ResourceCount = resourcecount
          @IdleResourceCount = idleresourcecount
          @LoadBalanceDirectorCount = loadbalancedirectorcount
          @Isp = isp
          @ClustersZone = clusterszone
          @ClustersVersion = clustersversion
          @DisasterRecoveryType = disasterrecoverytype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @ClusterType = params['ClusterType']
          @ClusterTag = params['ClusterTag']
          @Zone = params['Zone']
          @Network = params['Network']
          @MaxConn = params['MaxConn']
          @MaxInFlow = params['MaxInFlow']
          @MaxInPkg = params['MaxInPkg']
          @MaxOutFlow = params['MaxOutFlow']
          @MaxOutPkg = params['MaxOutPkg']
          @MaxNewConn = params['MaxNewConn']
          @HTTPMaxNewConn = params['HTTPMaxNewConn']
          @HTTPSMaxNewConn = params['HTTPSMaxNewConn']
          @HTTPQps = params['HTTPQps']
          @HTTPSQps = params['HTTPSQps']
          @ResourceCount = params['ResourceCount']
          @IdleResourceCount = params['IdleResourceCount']
          @LoadBalanceDirectorCount = params['LoadBalanceDirectorCount']
          @Isp = params['Isp']
          unless params['ClustersZone'].nil?
            @ClustersZone = ClustersZone.new
            @ClustersZone.deserialize(params['ClustersZone'])
          end
          @ClustersVersion = params['ClustersVersion']
          @DisasterRecoveryType = params['DisasterRecoveryType']
        end
      end

      # 独占集群信息
      class ClusterItem < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群唯一ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param Zone: 集群所在可用区，如ap-guangzhou-1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String

        attr_accessor :ClusterId, :ClusterName, :Zone

        def initialize(clusterid=nil, clustername=nil, zone=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @Zone = zone
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Zone = params['Zone']
        end
      end

      # 集群内资源类型
      class ClusterResource < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群唯一ID，如tgw-12345678。
        # @type ClusterId: String
        # @param Vip: ip地址。
        # @type Vip: String
        # @param LoadBalancerId: 负载均衡唯一ID，如lb-12345678。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerId: String
        # @param Idle: 资源是否闲置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Idle: String
        # @param ClusterName: 集群名称。
        # @type ClusterName: String
        # @param Isp: 集群的Isp属性，如："BGP","CMCC","CUCC","CTCC","INTERNAL"。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Isp: String
        # @param ClustersZone: 集群所在的可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClustersZone: :class:`Tencentcloud::Clb.v20180317.models.ClustersZone`

        attr_accessor :ClusterId, :Vip, :LoadBalancerId, :Idle, :ClusterName, :Isp, :ClustersZone

        def initialize(clusterid=nil, vip=nil, loadbalancerid=nil, idle=nil, clustername=nil, isp=nil, clusterszone=nil)
          @ClusterId = clusterid
          @Vip = vip
          @LoadBalancerId = loadbalancerid
          @Idle = idle
          @ClusterName = clustername
          @Isp = isp
          @ClustersZone = clusterszone
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Vip = params['Vip']
          @LoadBalancerId = params['LoadBalancerId']
          @Idle = params['Idle']
          @ClusterName = params['ClusterName']
          @Isp = params['Isp']
          unless params['ClustersZone'].nil?
            @ClustersZone = ClustersZone.new
            @ClustersZone.deserialize(params['ClustersZone'])
          end
        end
      end

      # 集群所在的可用区。
      class ClustersZone < TencentCloud::Common::AbstractModel
        # @param MasterZone: 集群所在的主可用区。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterZone: Array
        # @param SlaveZone: 集群所在的备可用区。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlaveZone: Array

        attr_accessor :MasterZone, :SlaveZone

        def initialize(masterzone=nil, slavezone=nil)
          @MasterZone = masterzone
          @SlaveZone = slavezone
        end

        def deserialize(params)
          @MasterZone = params['MasterZone']
          @SlaveZone = params['SlaveZone']
        end
      end

      # 配置内容
      class ConfigListItem < TencentCloud::Common::AbstractModel
        # @param UconfigId: 配置ID
        # @type UconfigId: String
        # @param ConfigType: 配置类型
        # @type ConfigType: String
        # @param ConfigName: 配置名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigName: String
        # @param ConfigContent: 配置内容
        # @type ConfigContent: String
        # @param CreateTimestamp: 增加配置时间
        # @type CreateTimestamp: String
        # @param UpdateTimestamp: 修改配置时间
        # @type UpdateTimestamp: String

        attr_accessor :UconfigId, :ConfigType, :ConfigName, :ConfigContent, :CreateTimestamp, :UpdateTimestamp

        def initialize(uconfigid=nil, configtype=nil, configname=nil, configcontent=nil, createtimestamp=nil, updatetimestamp=nil)
          @UconfigId = uconfigid
          @ConfigType = configtype
          @ConfigName = configname
          @ConfigContent = configcontent
          @CreateTimestamp = createtimestamp
          @UpdateTimestamp = updatetimestamp
        end

        def deserialize(params)
          @UconfigId = params['UconfigId']
          @ConfigType = params['ConfigType']
          @ConfigName = params['ConfigName']
          @ConfigContent = params['ConfigContent']
          @CreateTimestamp = params['CreateTimestamp']
          @UpdateTimestamp = params['UpdateTimestamp']
        end
      end

      # CreateClsLogSet请求参数结构体
      class CreateClsLogSetRequest < TencentCloud::Common::AbstractModel
        # @param LogsetName: 日志集的名字，不能和cls其他日志集重名。不填默认为clb_logset。
        # @type LogsetName: String
        # @param Period: 日志集的保存周期，单位：天。
        # @type Period: Integer
        # @param LogsetType: 日志集类型，ACCESS：访问日志，HEALTH：健康检查日志，默认ACCESS。
        # @type LogsetType: String

        attr_accessor :LogsetName, :Period, :LogsetType

        def initialize(logsetname=nil, period=nil, logsettype=nil)
          @LogsetName = logsetname
          @Period = period
          @LogsetType = logsettype
        end

        def deserialize(params)
          @LogsetName = params['LogsetName']
          @Period = params['Period']
          @LogsetType = params['LogsetType']
        end
      end

      # CreateClsLogSet返回参数结构体
      class CreateClsLogSetResponse < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集的 ID。
        # @type LogsetId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogsetId, :RequestId

        def initialize(logsetid=nil, requestid=nil)
          @LogsetId = logsetid
          @RequestId = requestid
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @RequestId = params['RequestId']
        end
      end

      # CreateListener请求参数结构体
      class CreateListenerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param Ports: 要将监听器创建到哪些端口，每个端口对应一个新的监听器。
        # @type Ports: Array
        # @param Protocol: 监听器协议： TCP | UDP | HTTP | HTTPS | TCP_SSL | QUIC。
        # @type Protocol: String
        # @param ListenerNames: 要创建的监听器名称列表，名称与Ports数组按序一一对应，如不需立即命名，则无需提供此参数。
        # @type ListenerNames: Array
        # @param HealthCheck: 健康检查相关参数，此参数仅适用于TCP/UDP/TCP_SSL/QUIC监听器。
        # @type HealthCheck: :class:`Tencentcloud::Clb.v20180317.models.HealthCheck`
        # @param Certificate: 证书相关信息，此参数仅适用于TCP_SSL监听器和未开启SNI特性的HTTPS监听器。此参数和MultiCertInfo不能同时传入。
        # @type Certificate: :class:`Tencentcloud::Clb.v20180317.models.CertificateInput`
        # @param SessionExpireTime: 会话保持时间，单位：秒。可选值：30~3600，默认 0，表示不开启。此参数仅适用于TCP/UDP监听器。
        # @type SessionExpireTime: Integer
        # @param Scheduler: 监听器转发的方式。可选值：WRR、LEAST_CONN
        # 分别表示按权重轮询、最小连接数， 默认为 WRR。此参数仅适用于TCP/UDP/TCP_SSL/QUIC监听器。
        # @type Scheduler: String
        # @param SniSwitch: 是否开启SNI特性，此参数仅适用于HTTPS监听器。
        # @type SniSwitch: Integer
        # @param TargetType: 后端目标类型，NODE表示绑定普通节点，TARGETGROUP表示绑定目标组。
        # @type TargetType: String
        # @param SessionType: 会话保持类型。不传或传NORMAL表示默认会话保持类型。QUIC_CID 表示根据Quic Connection ID做会话保持。QUIC_CID只支持UDP协议。
        # @type SessionType: String
        # @param KeepaliveEnable: 是否开启长连接，此参数仅适用于HTTP/HTTPS监听器，0:关闭；1:开启， 默认关闭。
        # @type KeepaliveEnable: Integer
        # @param EndPort: 创建端口段监听器时必须传入此参数，用以标识结束端口。同时，入参Ports只允许传入一个成员，用以标识开始端口。【如果您需要体验端口段功能，请通过 [工单申请](https://console.cloud.tencent.com/workorder/category)】。
        # @type EndPort: Integer
        # @param DeregisterTargetRst: 解绑后端目标时，是否发RST给客户端，此参数仅适用于TCP监听器。
        # @type DeregisterTargetRst: Boolean
        # @param MultiCertInfo: 证书信息，支持同时传入不同算法类型的多本服务端证书；此参数仅适用于未开启SNI特性的HTTPS监听器。此参数和Certificate不能同时传入。
        # @type MultiCertInfo: :class:`Tencentcloud::Clb.v20180317.models.MultiCertInfo`
        # @param MaxConn: 监听器最大连接数，只有TCP/UDP/TCP_SSL/QUIC监听器支持，不传或者传-1表示监听器维度不限速。
        # @type MaxConn: Integer
        # @param MaxCps: 监听器最大新增连接数，只有TCP/UDP/TCP_SSL/QUIC监听器支持，不传或者传-1表示监听器维度不限速。
        # @type MaxCps: Integer
        # @param IdleConnectTimeout: 空闲连接超时时间，此参数仅适用于TCP监听器，单位：秒。默认值：900，取值范围：共享型实例和独占型实例支持：300～900，性能容量型实例支持：300~2000。如需设置超过2000s，请通过 [工单申请](https://console.cloud.tencent.com/workorder/category),最大可设置到3600s。
        # @type IdleConnectTimeout: Integer

        attr_accessor :LoadBalancerId, :Ports, :Protocol, :ListenerNames, :HealthCheck, :Certificate, :SessionExpireTime, :Scheduler, :SniSwitch, :TargetType, :SessionType, :KeepaliveEnable, :EndPort, :DeregisterTargetRst, :MultiCertInfo, :MaxConn, :MaxCps, :IdleConnectTimeout

        def initialize(loadbalancerid=nil, ports=nil, protocol=nil, listenernames=nil, healthcheck=nil, certificate=nil, sessionexpiretime=nil, scheduler=nil, sniswitch=nil, targettype=nil, sessiontype=nil, keepaliveenable=nil, endport=nil, deregistertargetrst=nil, multicertinfo=nil, maxconn=nil, maxcps=nil, idleconnecttimeout=nil)
          @LoadBalancerId = loadbalancerid
          @Ports = ports
          @Protocol = protocol
          @ListenerNames = listenernames
          @HealthCheck = healthcheck
          @Certificate = certificate
          @SessionExpireTime = sessionexpiretime
          @Scheduler = scheduler
          @SniSwitch = sniswitch
          @TargetType = targettype
          @SessionType = sessiontype
          @KeepaliveEnable = keepaliveenable
          @EndPort = endport
          @DeregisterTargetRst = deregistertargetrst
          @MultiCertInfo = multicertinfo
          @MaxConn = maxconn
          @MaxCps = maxcps
          @IdleConnectTimeout = idleconnecttimeout
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @Ports = params['Ports']
          @Protocol = params['Protocol']
          @ListenerNames = params['ListenerNames']
          unless params['HealthCheck'].nil?
            @HealthCheck = HealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          unless params['Certificate'].nil?
            @Certificate = CertificateInput.new
            @Certificate.deserialize(params['Certificate'])
          end
          @SessionExpireTime = params['SessionExpireTime']
          @Scheduler = params['Scheduler']
          @SniSwitch = params['SniSwitch']
          @TargetType = params['TargetType']
          @SessionType = params['SessionType']
          @KeepaliveEnable = params['KeepaliveEnable']
          @EndPort = params['EndPort']
          @DeregisterTargetRst = params['DeregisterTargetRst']
          unless params['MultiCertInfo'].nil?
            @MultiCertInfo = MultiCertInfo.new
            @MultiCertInfo.deserialize(params['MultiCertInfo'])
          end
          @MaxConn = params['MaxConn']
          @MaxCps = params['MaxCps']
          @IdleConnectTimeout = params['IdleConnectTimeout']
        end
      end

      # CreateListener返回参数结构体
      class CreateListenerResponse < TencentCloud::Common::AbstractModel
        # @param ListenerIds: 创建的监听器的唯一标识数组。
        # @type ListenerIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListenerIds, :RequestId

        def initialize(listenerids=nil, requestid=nil)
          @ListenerIds = listenerids
          @RequestId = requestid
        end

        def deserialize(params)
          @ListenerIds = params['ListenerIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateLoadBalancer请求参数结构体
      class CreateLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerType: 负载均衡实例的网络类型：
        # OPEN：公网属性， INTERNAL：内网属性。
        # @type LoadBalancerType: String
        # @param Forward: 负载均衡实例的类型。1：通用的负载均衡实例，目前只支持传入1。
        # @type Forward: Integer
        # @param LoadBalancerName: 负载均衡实例的名称，只在创建一个实例的时候才会生效。规则：1-60 个英文、汉字、数字、连接线“-”或下划线“_”。
        # 注意：如果名称与系统中已有负载均衡实例的名称相同，则系统将会自动生成此次创建的负载均衡实例的名称。
        # @type LoadBalancerName: String
        # @param VpcId: 负载均衡后端目标设备所属的网络 ID，如vpc-12345678，可以通过 [DescribeVpcEx](https://cloud.tencent.com/document/product/215/1372) 接口获取。 不填此参数则默认为DefaultVPC。创建内网负载均衡实例时，此参数必填。
        # @type VpcId: String
        # @param SubnetId: 在私有网络内购买内网负载均衡实例的情况下，必须指定子网 ID，内网负载均衡实例的 VIP 将从这个子网中产生。创建内网负载均衡实例时，此参数必填。
        # @type SubnetId: String
        # @param ProjectId: 负载均衡实例所属的项目 ID，可以通过 [DescribeProject](https://cloud.tencent.com/document/api/651/78725) 接口获取。不填此参数则视为默认项目。
        # @type ProjectId: Integer
        # @param AddressIPVersion: 仅适用于公网负载均衡。IP版本，可取值：IPV4、IPV6、IPv6FullChain，不区分大小写，默认值 IPV4。说明：取值为IPV6表示为IPV6 NAT64版本；取值为IPv6FullChain，表示为IPv6版本。
        # @type AddressIPVersion: String
        # @param Number: 创建负载均衡的个数，默认值 1。
        # @type Number: Integer
        # @param MasterZoneId: 仅适用于公网负载均衡。设置跨可用区容灾时的主可用区ID，例如 100001 或 ap-guangzhou-1
        # 注：主可用区是需要承载流量的可用区，备可用区默认不承载流量，主可用区不可用时才使用备可用区。目前仅广州、上海、南京、北京、中国香港、首尔地域的 IPv4 版本的 CLB 支持主备可用区。可通过 [DescribeResources](https://cloud.tencent.com/document/api/214/70213) 接口查询一个地域的主可用区的列表。
        # @type MasterZoneId: String
        # @param ZoneId: 仅适用于公网负载均衡。可用区ID，指定可用区以创建负载均衡实例。如：ap-guangzhou-1。
        # @type ZoneId: String
        # @param InternetAccessible: 仅对内网属性的性能容量型实例和公网属性的所有实例生效。
        # @type InternetAccessible: :class:`Tencentcloud::Clb.v20180317.models.InternetAccessible`
        # @param VipIsp: 仅适用于公网负载均衡。CMCC | CTCC | CUCC，分别对应 移动 | 电信 | 联通，如果不指定本参数，则默认使用BGP。可通过 [DescribeResources](https://cloud.tencent.com/document/api/214/70213)  接口查询一个地域所支持的Isp。如果指定运营商，则网络计费模式只能使用按带宽包计费(BANDWIDTH_PACKAGE)。
        # @type VipIsp: String
        # @param Tags: 购买负载均衡的同时，给负载均衡打上标签，最大支持20个标签键值对。
        # @type Tags: Array
        # @param Vip: 指定VIP申请负载均衡。此参数选填，不填写此参数时自动分配VIP。IPv4和IPv6类型支持此参数，IPv6 NAT64类型不支持。
        # 注意：当指定VIP创建内网实例、或公网IPv6 BGP实例时，若VIP不属于指定VPC子网的网段内时，会创建失败；若VIP已被占用，也会创建失败。
        # @type Vip: String
        # @param BandwidthPackageId: 带宽包ID，指定此参数时，网络计费方式（InternetAccessible.InternetChargeType）只支持按带宽包计费（BANDWIDTH_PACKAGE）。
        # @type BandwidthPackageId: String
        # @param ExclusiveCluster: 独占型实例信息。若创建独占型的内网负载均衡实例，则此参数必填。
        # @type ExclusiveCluster: :class:`Tencentcloud::Clb.v20180317.models.ExclusiveCluster`
        # @param SlaType: 创建性能容量型实例。
        # <ul><li>若需要创建性能容量型实例，则此参数必填，且取值为：SLA，表示超强型1规格。
        # <ul><li>当您开通了超大型规格的性能容量型时，SLA对应超强型4规格。如需超大型规格的性能容量型，请提交 [工单申请](https://console.cloud.tencent.com/workorder/category)。</li></ul></li><li>若需要创建共享型实例，则无需填写此参数。</li></ul>
        # @type SlaType: String
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # @type ClientToken: String
        # @param SnatPro: 是否支持绑定跨地域/跨Vpc绑定IP的功能。
        # @type SnatPro: Boolean
        # @param SnatIps: 开启绑定跨地域/跨Vpc绑定IP的功能后，创建SnatIp。
        # @type SnatIps: Array
        # @param ClusterTag: Stgw独占集群的标签。
        # @type ClusterTag: String
        # @param SlaveZoneId: 仅适用于公网负载均衡。设置跨可用区容灾时的备可用区ID，例如 100001 或 ap-guangzhou-1
        # 注：备可用区是主可用区故障后，需要承载流量的可用区。可通过 [DescribeResources](https://cloud.tencent.com/document/api/214/70213) 接口查询一个地域的主/备可用区的列表。
        # @type SlaveZoneId: String
        # @param EipAddressId: EIP 的唯一 ID，形如：eip-11112222，仅适用于内网负载均衡绑定EIP。
        # @type EipAddressId: String
        # @param LoadBalancerPassToTarget: Target是否放通来自CLB的流量。开启放通（true）：只验证CLB上的安全组；不开启放通（false）：需同时验证CLB和后端实例上的安全组。
        # @type LoadBalancerPassToTarget: Boolean
        # @param DynamicVip: 创建域名化负载均衡。
        # @type DynamicVip: Boolean

        attr_accessor :LoadBalancerType, :Forward, :LoadBalancerName, :VpcId, :SubnetId, :ProjectId, :AddressIPVersion, :Number, :MasterZoneId, :ZoneId, :InternetAccessible, :VipIsp, :Tags, :Vip, :BandwidthPackageId, :ExclusiveCluster, :SlaType, :ClientToken, :SnatPro, :SnatIps, :ClusterTag, :SlaveZoneId, :EipAddressId, :LoadBalancerPassToTarget, :DynamicVip

        def initialize(loadbalancertype=nil, forward=nil, loadbalancername=nil, vpcid=nil, subnetid=nil, projectid=nil, addressipversion=nil, number=nil, masterzoneid=nil, zoneid=nil, internetaccessible=nil, vipisp=nil, tags=nil, vip=nil, bandwidthpackageid=nil, exclusivecluster=nil, slatype=nil, clienttoken=nil, snatpro=nil, snatips=nil, clustertag=nil, slavezoneid=nil, eipaddressid=nil, loadbalancerpasstotarget=nil, dynamicvip=nil)
          @LoadBalancerType = loadbalancertype
          @Forward = forward
          @LoadBalancerName = loadbalancername
          @VpcId = vpcid
          @SubnetId = subnetid
          @ProjectId = projectid
          @AddressIPVersion = addressipversion
          @Number = number
          @MasterZoneId = masterzoneid
          @ZoneId = zoneid
          @InternetAccessible = internetaccessible
          @VipIsp = vipisp
          @Tags = tags
          @Vip = vip
          @BandwidthPackageId = bandwidthpackageid
          @ExclusiveCluster = exclusivecluster
          @SlaType = slatype
          @ClientToken = clienttoken
          @SnatPro = snatpro
          @SnatIps = snatips
          @ClusterTag = clustertag
          @SlaveZoneId = slavezoneid
          @EipAddressId = eipaddressid
          @LoadBalancerPassToTarget = loadbalancerpasstotarget
          @DynamicVip = dynamicvip
        end

        def deserialize(params)
          @LoadBalancerType = params['LoadBalancerType']
          @Forward = params['Forward']
          @LoadBalancerName = params['LoadBalancerName']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ProjectId = params['ProjectId']
          @AddressIPVersion = params['AddressIPVersion']
          @Number = params['Number']
          @MasterZoneId = params['MasterZoneId']
          @ZoneId = params['ZoneId']
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @VipIsp = params['VipIsp']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @Vip = params['Vip']
          @BandwidthPackageId = params['BandwidthPackageId']
          unless params['ExclusiveCluster'].nil?
            @ExclusiveCluster = ExclusiveCluster.new
            @ExclusiveCluster.deserialize(params['ExclusiveCluster'])
          end
          @SlaType = params['SlaType']
          @ClientToken = params['ClientToken']
          @SnatPro = params['SnatPro']
          unless params['SnatIps'].nil?
            @SnatIps = []
            params['SnatIps'].each do |i|
              snatip_tmp = SnatIp.new
              snatip_tmp.deserialize(i)
              @SnatIps << snatip_tmp
            end
          end
          @ClusterTag = params['ClusterTag']
          @SlaveZoneId = params['SlaveZoneId']
          @EipAddressId = params['EipAddressId']
          @LoadBalancerPassToTarget = params['LoadBalancerPassToTarget']
          @DynamicVip = params['DynamicVip']
        end
      end

      # CreateLoadBalancer返回参数结构体
      class CreateLoadBalancerResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 由负载均衡实例唯一 ID 组成的数组。
        # 存在某些场景，如创建出现延迟时，此字段可能返回为空；此时可以根据接口返回的RequestId或DealName参数，通过DescribeTaskStatus接口查询创建的资源ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerIds: Array
        # @param DealName: 订单号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancerIds, :DealName, :RequestId

        def initialize(loadbalancerids=nil, dealname=nil, requestid=nil)
          @LoadBalancerIds = loadbalancerids
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # CreateLoadBalancerSnatIps请求参数结构体
      class CreateLoadBalancerSnatIpsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡唯一性ID，例如：lb-12345678。
        # @type LoadBalancerId: String
        # @param SnatIps: 添加的SnatIp信息，可指定IP申请，或者指定子网自动申请。单个CLB实例可申请的默认上限为10个。
        # @type SnatIps: Array
        # @param Number: 添加的SnatIp的个数，可与SnatIps一起使用，但若指定IP时，则不能指定创建的SnatIp个数。默认值为1，数量上限与用户配置有关，默认上限为10。
        # @type Number: Integer

        attr_accessor :LoadBalancerId, :SnatIps, :Number

        def initialize(loadbalancerid=nil, snatips=nil, number=nil)
          @LoadBalancerId = loadbalancerid
          @SnatIps = snatips
          @Number = number
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['SnatIps'].nil?
            @SnatIps = []
            params['SnatIps'].each do |i|
              snatip_tmp = SnatIp.new
              snatip_tmp.deserialize(i)
              @SnatIps << snatip_tmp
            end
          end
          @Number = params['Number']
        end
      end

      # CreateLoadBalancerSnatIps返回参数结构体
      class CreateLoadBalancerSnatIpsResponse < TencentCloud::Common::AbstractModel
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

      # CreateRule请求参数结构体
      class CreateRuleRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 监听器 ID。
        # @type ListenerId: String
        # @param Rules: 新建转发规则的信息。
        # @type Rules: Array

        attr_accessor :LoadBalancerId, :ListenerId, :Rules

        def initialize(loadbalancerid=nil, listenerid=nil, rules=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Rules = rules
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ruleinput_tmp = RuleInput.new
              ruleinput_tmp.deserialize(i)
              @Rules << ruleinput_tmp
            end
          end
        end
      end

      # CreateRule返回参数结构体
      class CreateRuleResponse < TencentCloud::Common::AbstractModel
        # @param LocationIds: 创建的转发规则的唯一标识数组。
        # @type LocationIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LocationIds, :RequestId

        def initialize(locationids=nil, requestid=nil)
          @LocationIds = locationids
          @RequestId = requestid
        end

        def deserialize(params)
          @LocationIds = params['LocationIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateTargetGroup请求参数结构体
      class CreateTargetGroupRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupName: 目标组名称，限定50个字符
        # @type TargetGroupName: String
        # @param VpcId: 目标组的vpcid属性，不填则使用默认vpc
        # @type VpcId: String
        # @param Port: 目标组的默认端口， 后续添加服务器时可使用该默认端口
        # @type Port: Integer
        # @param TargetGroupInstances: 目标组绑定的后端服务器
        # @type TargetGroupInstances: Array

        attr_accessor :TargetGroupName, :VpcId, :Port, :TargetGroupInstances

        def initialize(targetgroupname=nil, vpcid=nil, port=nil, targetgroupinstances=nil)
          @TargetGroupName = targetgroupname
          @VpcId = vpcid
          @Port = port
          @TargetGroupInstances = targetgroupinstances
        end

        def deserialize(params)
          @TargetGroupName = params['TargetGroupName']
          @VpcId = params['VpcId']
          @Port = params['Port']
          unless params['TargetGroupInstances'].nil?
            @TargetGroupInstances = []
            params['TargetGroupInstances'].each do |i|
              targetgroupinstance_tmp = TargetGroupInstance.new
              targetgroupinstance_tmp.deserialize(i)
              @TargetGroupInstances << targetgroupinstance_tmp
            end
          end
        end
      end

      # CreateTargetGroup返回参数结构体
      class CreateTargetGroupResponse < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 创建目标组后生成的id
        # @type TargetGroupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TargetGroupId, :RequestId

        def initialize(targetgroupid=nil, requestid=nil)
          @TargetGroupId = targetgroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTopic请求参数结构体
      class CreateTopicRequest < TencentCloud::Common::AbstractModel
        # @param TopicName: 日志主题的名称。
        # @type TopicName: String
        # @param PartitionCount: 主题分区Partition的数量，不传参默认创建1个，最大创建允许10个，分裂/合并操作会改变分区数量，整体上限50个。
        # @type PartitionCount: Integer
        # @param TopicType: 日志类型，ACCESS：访问日志，HEALTH：健康检查日志，默认ACCESS。
        # @type TopicType: String
        # @param Period: 日志集的保存周期，单位：天，默认30天。
        # @type Period: Integer
        # @param StorageType: 日志主题的存储类型，可选值 HOT（标准存储），COLD（低频存储）；默认为HOT。
        # @type StorageType: String

        attr_accessor :TopicName, :PartitionCount, :TopicType, :Period, :StorageType

        def initialize(topicname=nil, partitioncount=nil, topictype=nil, period=nil, storagetype=nil)
          @TopicName = topicname
          @PartitionCount = partitioncount
          @TopicType = topictype
          @Period = period
          @StorageType = storagetype
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @PartitionCount = params['PartitionCount']
          @TopicType = params['TopicType']
          @Period = params['Period']
          @StorageType = params['StorageType']
        end
      end

      # CreateTopic返回参数结构体
      class CreateTopicResponse < TencentCloud::Common::AbstractModel
        # @param TopicId: 日志主题的 ID。
        # @type TopicId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopicId, :RequestId

        def initialize(topicid=nil, requestid=nil)
          @TopicId = topicid
          @RequestId = requestid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @RequestId = params['RequestId']
        end
      end

      # 跨域2.0云联网下子机和网卡信息
      class CrossTargets < TencentCloud::Common::AbstractModel
        # @param LocalVpcId: 本地私有网络ID，即负载均衡的VpcId。
        # @type LocalVpcId: String
        # @param VpcId: 子机或网卡所属的私有网络ID。
        # @type VpcId: String
        # @param IP: 子机或网卡的IP地址
        # @type IP: String
        # @param VpcName: 子机或网卡所属的私有网络名称。
        # @type VpcName: String
        # @param EniId: 子机的网卡ID。
        # @type EniId: String
        # @param InstanceId: 子机实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 子机实例名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Region: 子机或者网卡所属的地域。
        # @type Region: String

        attr_accessor :LocalVpcId, :VpcId, :IP, :VpcName, :EniId, :InstanceId, :InstanceName, :Region

        def initialize(localvpcid=nil, vpcid=nil, ip=nil, vpcname=nil, eniid=nil, instanceid=nil, instancename=nil, region=nil)
          @LocalVpcId = localvpcid
          @VpcId = vpcid
          @IP = ip
          @VpcName = vpcname
          @EniId = eniid
          @InstanceId = instanceid
          @InstanceName = instancename
          @Region = region
        end

        def deserialize(params)
          @LocalVpcId = params['LocalVpcId']
          @VpcId = params['VpcId']
          @IP = params['IP']
          @VpcName = params['VpcName']
          @EniId = params['EniId']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Region = params['Region']
        end
      end

      # DeleteListener请求参数结构体
      class DeleteListenerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 要删除的监听器ID。
        # @type ListenerId: String

        attr_accessor :LoadBalancerId, :ListenerId

        def initialize(loadbalancerid=nil, listenerid=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
        end
      end

      # DeleteListener返回参数结构体
      class DeleteListenerResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLoadBalancerListeners请求参数结构体
      class DeleteLoadBalancerListenersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerIds: 指定删除的监听器ID数组，最大为20个。若不填则删除负载均衡的所有监听器。
        # @type ListenerIds: Array

        attr_accessor :LoadBalancerId, :ListenerIds

        def initialize(loadbalancerid=nil, listenerids=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerIds = listenerids
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerIds = params['ListenerIds']
        end
      end

      # DeleteLoadBalancerListeners返回参数结构体
      class DeleteLoadBalancerListenersResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLoadBalancer请求参数结构体
      class DeleteLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 要删除的负载均衡实例 ID数组，数组大小最大支持20。
        # @type LoadBalancerIds: Array

        attr_accessor :LoadBalancerIds

        def initialize(loadbalancerids=nil)
          @LoadBalancerIds = loadbalancerids
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
        end
      end

      # DeleteLoadBalancer返回参数结构体
      class DeleteLoadBalancerResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLoadBalancerSnatIps请求参数结构体
      class DeleteLoadBalancerSnatIpsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡唯一ID，例如：lb-12345678。
        # @type LoadBalancerId: String
        # @param Ips: 删除SnatIp地址数组。
        # @type Ips: Array

        attr_accessor :LoadBalancerId, :Ips

        def initialize(loadbalancerid=nil, ips=nil)
          @LoadBalancerId = loadbalancerid
          @Ips = ips
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @Ips = params['Ips']
        end
      end

      # DeleteLoadBalancerSnatIps返回参数结构体
      class DeleteLoadBalancerSnatIpsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRewrite请求参数结构体
      class DeleteRewriteRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param SourceListenerId: 源监听器ID。
        # @type SourceListenerId: String
        # @param TargetListenerId: 目标监听器ID。
        # @type TargetListenerId: String
        # @param RewriteInfos: 转发规则之间的重定向关系。
        # @type RewriteInfos: Array

        attr_accessor :LoadBalancerId, :SourceListenerId, :TargetListenerId, :RewriteInfos

        def initialize(loadbalancerid=nil, sourcelistenerid=nil, targetlistenerid=nil, rewriteinfos=nil)
          @LoadBalancerId = loadbalancerid
          @SourceListenerId = sourcelistenerid
          @TargetListenerId = targetlistenerid
          @RewriteInfos = rewriteinfos
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @SourceListenerId = params['SourceListenerId']
          @TargetListenerId = params['TargetListenerId']
          unless params['RewriteInfos'].nil?
            @RewriteInfos = []
            params['RewriteInfos'].each do |i|
              rewritelocationmap_tmp = RewriteLocationMap.new
              rewritelocationmap_tmp.deserialize(i)
              @RewriteInfos << rewritelocationmap_tmp
            end
          end
        end
      end

      # DeleteRewrite返回参数结构体
      class DeleteRewriteResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRule请求参数结构体
      class DeleteRuleRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器ID。
        # @type ListenerId: String
        # @param LocationIds: 要删除的转发规则的ID组成的数组。
        # @type LocationIds: Array
        # @param Domain: 要删除的转发规则的域名，如果是多域名，可以指定多域名列表中的任意一个。
        # @type Domain: String
        # @param Url: 要删除的转发规则的转发路径。
        # @type Url: String
        # @param NewDefaultServerDomain: 监听器下必须配置一个默认域名，当需要删除默认域名时，可以指定另一个域名作为新的默认域名，如果新的默认域名是多域名，可以指定多域名列表中的任意一个。
        # @type NewDefaultServerDomain: String

        attr_accessor :LoadBalancerId, :ListenerId, :LocationIds, :Domain, :Url, :NewDefaultServerDomain

        def initialize(loadbalancerid=nil, listenerid=nil, locationids=nil, domain=nil, url=nil, newdefaultserverdomain=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @LocationIds = locationids
          @Domain = domain
          @Url = url
          @NewDefaultServerDomain = newdefaultserverdomain
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @LocationIds = params['LocationIds']
          @Domain = params['Domain']
          @Url = params['Url']
          @NewDefaultServerDomain = params['NewDefaultServerDomain']
        end
      end

      # DeleteRule返回参数结构体
      class DeleteRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTargetGroups请求参数结构体
      class DeleteTargetGroupsRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupIds: 目标组的ID数组。
        # @type TargetGroupIds: Array

        attr_accessor :TargetGroupIds

        def initialize(targetgroupids=nil)
          @TargetGroupIds = targetgroupids
        end

        def deserialize(params)
          @TargetGroupIds = params['TargetGroupIds']
        end
      end

      # DeleteTargetGroups返回参数结构体
      class DeleteTargetGroupsResponse < TencentCloud::Common::AbstractModel
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

      # DeregisterFunctionTargets请求参数结构体
      class DeregisterFunctionTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器 ID。
        # @type ListenerId: String
        # @param FunctionTargets: 待解绑的云函数列表。
        # @type FunctionTargets: Array
        # @param LocationId: 目标转发规则的 ID，当将云函数从七层转发规则上解绑时，必须输入此参数或 Domain+Url 参数。
        # @type LocationId: String
        # @param Domain: 目标转发规则的域名，若已经输入 LocationId 参数，则本参数不生效。
        # @type Domain: String
        # @param Url: 目标转发规则的 URL，若已经输入 LocationId 参数，则本参数不生效。
        # @type Url: String

        attr_accessor :LoadBalancerId, :ListenerId, :FunctionTargets, :LocationId, :Domain, :Url

        def initialize(loadbalancerid=nil, listenerid=nil, functiontargets=nil, locationid=nil, domain=nil, url=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @FunctionTargets = functiontargets
          @LocationId = locationid
          @Domain = domain
          @Url = url
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['FunctionTargets'].nil?
            @FunctionTargets = []
            params['FunctionTargets'].each do |i|
              functiontarget_tmp = FunctionTarget.new
              functiontarget_tmp.deserialize(i)
              @FunctionTargets << functiontarget_tmp
            end
          end
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
        end
      end

      # DeregisterFunctionTargets返回参数结构体
      class DeregisterFunctionTargetsResponse < TencentCloud::Common::AbstractModel
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

      # DeregisterTargetGroupInstances请求参数结构体
      class DeregisterTargetGroupInstancesRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组ID。
        # @type TargetGroupId: String
        # @param TargetGroupInstances: 待解绑的服务器信息。
        # @type TargetGroupInstances: Array

        attr_accessor :TargetGroupId, :TargetGroupInstances

        def initialize(targetgroupid=nil, targetgroupinstances=nil)
          @TargetGroupId = targetgroupid
          @TargetGroupInstances = targetgroupinstances
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          unless params['TargetGroupInstances'].nil?
            @TargetGroupInstances = []
            params['TargetGroupInstances'].each do |i|
              targetgroupinstance_tmp = TargetGroupInstance.new
              targetgroupinstance_tmp.deserialize(i)
              @TargetGroupInstances << targetgroupinstance_tmp
            end
          end
        end
      end

      # DeregisterTargetGroupInstances返回参数结构体
      class DeregisterTargetGroupInstancesResponse < TencentCloud::Common::AbstractModel
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

      # DeregisterTargetsFromClassicalLB请求参数结构体
      class DeregisterTargetsFromClassicalLBRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param InstanceIds: 后端服务的实例ID列表。
        # @type InstanceIds: Array

        attr_accessor :LoadBalancerId, :InstanceIds

        def initialize(loadbalancerid=nil, instanceids=nil)
          @LoadBalancerId = loadbalancerid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # DeregisterTargetsFromClassicalLB返回参数结构体
      class DeregisterTargetsFromClassicalLBResponse < TencentCloud::Common::AbstractModel
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

      # DeregisterTargets请求参数结构体
      class DeregisterTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID，格式如 lb-12345678。
        # @type LoadBalancerId: String
        # @param ListenerId: 监听器 ID，格式如 lbl-12345678。
        # @type ListenerId: String
        # @param Targets: 要解绑的后端服务列表，数组长度最大支持20。
        # @type Targets: Array
        # @param LocationId: 转发规则的ID，格式如 loc-12345678，当从七层转发规则解绑机器时，必须提供此参数或Domain+URL两者之一。
        # @type LocationId: String
        # @param Domain: 目标规则的域名，提供LocationId参数时本参数不生效。
        # @type Domain: String
        # @param Url: 目标规则的URL，提供LocationId参数时本参数不生效。
        # @type Url: String

        attr_accessor :LoadBalancerId, :ListenerId, :Targets, :LocationId, :Domain, :Url

        def initialize(loadbalancerid=nil, listenerid=nil, targets=nil, locationid=nil, domain=nil, url=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Targets = targets
          @LocationId = locationid
          @Domain = domain
          @Url = url
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              target_tmp = Target.new
              target_tmp.deserialize(i)
              @Targets << target_tmp
            end
          end
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
        end
      end

      # DeregisterTargets返回参数结构体
      class DeregisterTargetsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeBlockIPList请求参数结构体
      class DescribeBlockIPListRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param Offset: 数据偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回IP的最大个数，默认为 100000。
        # @type Limit: Integer

        attr_accessor :LoadBalancerId, :Offset, :Limit

        def initialize(loadbalancerid=nil, offset=nil, limit=nil)
          @LoadBalancerId = loadbalancerid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeBlockIPList返回参数结构体
      class DescribeBlockIPListResponse < TencentCloud::Common::AbstractModel
        # @param BlockedIPCount: 返回的IP的数量
        # @type BlockedIPCount: Integer
        # @param ClientIPField: 获取用户真实IP的字段
        # @type ClientIPField: String
        # @param BlockedIPList: 加入了12360黑名单的IP列表
        # @type BlockedIPList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BlockedIPCount, :ClientIPField, :BlockedIPList, :RequestId

        def initialize(blockedipcount=nil, clientipfield=nil, blockediplist=nil, requestid=nil)
          @BlockedIPCount = blockedipcount
          @ClientIPField = clientipfield
          @BlockedIPList = blockediplist
          @RequestId = requestid
        end

        def deserialize(params)
          @BlockedIPCount = params['BlockedIPCount']
          @ClientIPField = params['ClientIPField']
          unless params['BlockedIPList'].nil?
            @BlockedIPList = []
            params['BlockedIPList'].each do |i|
              blockedip_tmp = BlockedIP.new
              blockedip_tmp.deserialize(i)
              @BlockedIPList << blockedip_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBlockIPTask请求参数结构体
      class DescribeBlockIPTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: ModifyBlockIPList 接口返回的异步任务的ID。
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeBlockIPTask返回参数结构体
      class DescribeBlockIPTaskResponse < TencentCloud::Common::AbstractModel
        # @param Status: 1 running，2 fail，6 succ
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeClassicalLBByInstanceId请求参数结构体
      class DescribeClassicalLBByInstanceIdRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 后端实例ID列表。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeClassicalLBByInstanceId返回参数结构体
      class DescribeClassicalLBByInstanceIdResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancerInfoList: 负载均衡相关信息列表。
        # @type LoadBalancerInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancerInfoList, :RequestId

        def initialize(loadbalancerinfolist=nil, requestid=nil)
          @LoadBalancerInfoList = loadbalancerinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoadBalancerInfoList'].nil?
            @LoadBalancerInfoList = []
            params['LoadBalancerInfoList'].each do |i|
              classicalloadbalancerinfo_tmp = ClassicalLoadBalancerInfo.new
              classicalloadbalancerinfo_tmp.deserialize(i)
              @LoadBalancerInfoList << classicalloadbalancerinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClassicalLBHealthStatus请求参数结构体
      class DescribeClassicalLBHealthStatusRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器ID。
        # @type ListenerId: String

        attr_accessor :LoadBalancerId, :ListenerId

        def initialize(loadbalancerid=nil, listenerid=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
        end
      end

      # DescribeClassicalLBHealthStatus返回参数结构体
      class DescribeClassicalLBHealthStatusResponse < TencentCloud::Common::AbstractModel
        # @param HealthList: 后端健康状态列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HealthList, :RequestId

        def initialize(healthlist=nil, requestid=nil)
          @HealthList = healthlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HealthList'].nil?
            @HealthList = []
            params['HealthList'].each do |i|
              classicalhealth_tmp = ClassicalHealth.new
              classicalhealth_tmp.deserialize(i)
              @HealthList << classicalhealth_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClassicalLBListeners请求参数结构体
      class DescribeClassicalLBListenersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerIds: 负载均衡监听器ID列表。
        # @type ListenerIds: Array
        # @param Protocol: 负载均衡监听的协议：'TCP', 'UDP', 'HTTP', 'HTTPS'。
        # @type Protocol: String
        # @param ListenerPort: 负载均衡监听端口，范围为[1-65535]。
        # @type ListenerPort: Integer
        # @param Status: 监听器的状态，0：创建中，1：运行中。
        # @type Status: Integer

        attr_accessor :LoadBalancerId, :ListenerIds, :Protocol, :ListenerPort, :Status

        def initialize(loadbalancerid=nil, listenerids=nil, protocol=nil, listenerport=nil, status=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerIds = listenerids
          @Protocol = protocol
          @ListenerPort = listenerport
          @Status = status
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerIds = params['ListenerIds']
          @Protocol = params['Protocol']
          @ListenerPort = params['ListenerPort']
          @Status = params['Status']
        end
      end

      # DescribeClassicalLBListeners返回参数结构体
      class DescribeClassicalLBListenersResponse < TencentCloud::Common::AbstractModel
        # @param Listeners: 监听器列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Listeners: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Listeners, :RequestId

        def initialize(listeners=nil, requestid=nil)
          @Listeners = listeners
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Listeners'].nil?
            @Listeners = []
            params['Listeners'].each do |i|
              classicallistener_tmp = ClassicalListener.new
              classicallistener_tmp.deserialize(i)
              @Listeners << classicallistener_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClassicalLBTargets请求参数结构体
      class DescribeClassicalLBTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String

        attr_accessor :LoadBalancerId

        def initialize(loadbalancerid=nil)
          @LoadBalancerId = loadbalancerid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
        end
      end

      # DescribeClassicalLBTargets返回参数结构体
      class DescribeClassicalLBTargetsResponse < TencentCloud::Common::AbstractModel
        # @param Targets: 后端服务列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Targets: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Targets, :RequestId

        def initialize(targets=nil, requestid=nil)
          @Targets = targets
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              classicaltarget_tmp = ClassicalTarget.new
              classicaltarget_tmp.deserialize(i)
              @Targets << classicaltarget_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClsLogSet请求参数结构体
      class DescribeClsLogSetRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeClsLogSet返回参数结构体
      class DescribeClsLogSetResponse < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志集的 ID。
        # @type LogsetId: String
        # @param HealthLogsetId: 健康检查日志集的 ID。
        # @type HealthLogsetId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogsetId, :HealthLogsetId, :RequestId

        def initialize(logsetid=nil, healthlogsetid=nil, requestid=nil)
          @LogsetId = logsetid
          @HealthLogsetId = healthlogsetid
          @RequestId = requestid
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @HealthLogsetId = params['HealthLogsetId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterResources请求参数结构体
      class DescribeClusterResourcesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回集群中资源列表数目，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 返回集群中资源列表起始偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 查询集群中资源列表条件，详细的过滤条件如下：
        # <li> cluster-id - String - 是否必填：否 - （过滤条件）按照 集群 的唯一ID过滤，如 ："tgw-12345678","stgw-12345678","vpcgw-12345678"。</li>
        # <li> vip - String - 是否必填：否 - （过滤条件）按照vip过滤。</li>
        # <li> loadblancer-id - String - 是否必填：否 - （过滤条件）按照负载均衡唯一ID过滤。</li>
        # <li> idle - String 是否必填：否 - （过滤条件）按照是否闲置过滤，如"True","False"。</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeClusterResources返回参数结构体
      class DescribeClusterResourcesResponse < TencentCloud::Common::AbstractModel
        # @param ClusterResourceSet: 集群中资源列表。
        # @type ClusterResourceSet: Array
        # @param TotalCount: 集群中资源总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterResourceSet, :TotalCount, :RequestId

        def initialize(clusterresourceset=nil, totalcount=nil, requestid=nil)
          @ClusterResourceSet = clusterresourceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterResourceSet'].nil?
            @ClusterResourceSet = []
            params['ClusterResourceSet'].each do |i|
              clusterresource_tmp = ClusterResource.new
              clusterresource_tmp.deserialize(i)
              @ClusterResourceSet << clusterresource_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCrossTargets请求参数结构体
      class DescribeCrossTargetsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回后端服务列表数目，默认20，最大值100。
        # @type Limit: Integer
        # @param Offset: 返回后端服务列表起始偏移量，默认0。
        # @type Offset: Integer
        # @param Filters: 查询跨域2.0版本云联网后端子机和网卡服务列表条件，详细的过滤条件如下：
        # <li> vpc-id - String - 是否必填：否 - （过滤条件）按照 本地私有网络ID，即负载均衡的VpcId 过滤，如："vpc-12345678"。</li>
        # <li> ip - String - 是否必填：否 - （过滤条件）按照 后端服务ip 过滤，如："192.168.0.1"。</li>
        # <li> listener-id - String - 是否必填：否 - （过滤条件）按照 监听器ID 过滤，如："lbl-12345678"。</li>
        # <li> location-id - String - 是否必填：否 - （过滤条件）按照 七层监听器规则ID 过滤，如："loc-12345678"。</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeCrossTargets返回参数结构体
      class DescribeCrossTargetsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 后端服务列表总数。
        # @type TotalCount: Integer
        # @param CrossTargetSet: 后端服务列表。
        # @type CrossTargetSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CrossTargetSet, :RequestId

        def initialize(totalcount=nil, crosstargetset=nil, requestid=nil)
          @TotalCount = totalcount
          @CrossTargetSet = crosstargetset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CrossTargetSet'].nil?
            @CrossTargetSet = []
            params['CrossTargetSet'].each do |i|
              crosstargets_tmp = CrossTargets.new
              crosstargets_tmp.deserialize(i)
              @CrossTargetSet << crosstargets_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomizedConfigAssociateList请求参数结构体
      class DescribeCustomizedConfigAssociateListRequest < TencentCloud::Common::AbstractModel
        # @param UconfigId: 配置ID
        # @type UconfigId: String
        # @param Offset: 拉取绑定关系列表开始位置，默认值 0
        # @type Offset: Integer
        # @param Limit: 拉取绑定关系列表数目，默认值 20
        # @type Limit: Integer
        # @param Domain: 搜索域名
        # @type Domain: String

        attr_accessor :UconfigId, :Offset, :Limit, :Domain

        def initialize(uconfigid=nil, offset=nil, limit=nil, domain=nil)
          @UconfigId = uconfigid
          @Offset = offset
          @Limit = limit
          @Domain = domain
        end

        def deserialize(params)
          @UconfigId = params['UconfigId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Domain = params['Domain']
        end
      end

      # DescribeCustomizedConfigAssociateList返回参数结构体
      class DescribeCustomizedConfigAssociateListResponse < TencentCloud::Common::AbstractModel
        # @param BindList: 绑定关系列表
        # @type BindList: Array
        # @param TotalCount: 绑定关系总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BindList, :TotalCount, :RequestId

        def initialize(bindlist=nil, totalcount=nil, requestid=nil)
          @BindList = bindlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BindList'].nil?
            @BindList = []
            params['BindList'].each do |i|
              binddetailitem_tmp = BindDetailItem.new
              binddetailitem_tmp.deserialize(i)
              @BindList << binddetailitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomizedConfigList请求参数结构体
      class DescribeCustomizedConfigListRequest < TencentCloud::Common::AbstractModel
        # @param ConfigType: 配置类型:CLB 负载均衡维度。 SERVER 域名维度。 LOCATION 规则维度。
        # @type ConfigType: String
        # @param Offset: 拉取页偏移，默认值0
        # @type Offset: Integer
        # @param Limit: 拉取数目，默认值20
        # @type Limit: Integer
        # @param ConfigName: 拉取指定配置名字，模糊匹配。
        # @type ConfigName: String
        # @param UconfigIds: 配置ID
        # @type UconfigIds: Array
        # @param Filters: 过滤条件如下：
        # <li> loadbalancer-id - String - 是否必填：否 - （过滤条件）按照 负载均衡ID 过滤，如："lb-12345678"。</li>
        # <li> vip - String - 是否必填：否 - （过滤条件）按照 负载均衡Vip 过滤，如："1.1.1.1","2204::22:3"。</li>
        # @type Filters: Array

        attr_accessor :ConfigType, :Offset, :Limit, :ConfigName, :UconfigIds, :Filters

        def initialize(configtype=nil, offset=nil, limit=nil, configname=nil, uconfigids=nil, filters=nil)
          @ConfigType = configtype
          @Offset = offset
          @Limit = limit
          @ConfigName = configname
          @UconfigIds = uconfigids
          @Filters = filters
        end

        def deserialize(params)
          @ConfigType = params['ConfigType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ConfigName = params['ConfigName']
          @UconfigIds = params['UconfigIds']
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

      # DescribeCustomizedConfigList返回参数结构体
      class DescribeCustomizedConfigListResponse < TencentCloud::Common::AbstractModel
        # @param ConfigList: 配置列表
        # @type ConfigList: Array
        # @param TotalCount: 配置数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConfigList, :TotalCount, :RequestId

        def initialize(configlist=nil, totalcount=nil, requestid=nil)
          @ConfigList = configlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ConfigList'].nil?
            @ConfigList = []
            params['ConfigList'].each do |i|
              configlistitem_tmp = ConfigListItem.new
              configlistitem_tmp.deserialize(i)
              @ConfigList << configlistitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeExclusiveClusters请求参数结构体
      class DescribeExclusiveClustersRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回集群列表数目，默认值为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 返回集群列表起始偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 查询集群列表条件，详细的过滤条件如下：
        # <li> cluster-type - String - 是否必填：否 - （过滤条件）按照 集群 的类型过滤，包括"TGW","STGW","VPCGW"。</li>
        # <li> cluster-id - String - 是否必填：否 - （过滤条件）按照 集群 的唯一ID过滤，如 ："tgw-12345678","stgw-12345678","vpcgw-12345678"。</li>
        # <li> cluster-name - String - 是否必填：否 - （过滤条件）按照 集群 的名称过滤。</li>
        # <li> cluster-tag - String - 是否必填：否 - （过滤条件）按照 集群 的标签过滤。（只有TGW/STGW集群有集群标签） </li>
        # <li> vip - String - 是否必填：否 - （过滤条件）按照 集群 内的vip过滤。</li>
        # <li> loadblancer-id - String - 是否必填：否 - （过滤条件）按照 集群 内的负载均衡唯一ID过滤。</li>
        # <li> network - String - 是否必填：否 - （过滤条件）按照 集群 的网络类型过滤，如："Public","Private"。</li>
        # <li> zone - String - 是否必填：否 - （过滤条件）按照 集群 所在可用区过滤，如："ap-guangzhou-1"（广州一区）。</li>
        # <li> isp -- String - 是否必填：否 - （过滤条件）按照TGW集群的 Isp 类型过滤，如："BGP","CMCC","CUCC","CTCC","INTERNAL"。</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeExclusiveClusters返回参数结构体
      class DescribeExclusiveClustersResponse < TencentCloud::Common::AbstractModel
        # @param ClusterSet: 集群列表。
        # @type ClusterSet: Array
        # @param TotalCount: 集群总数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterSet, :TotalCount, :RequestId

        def initialize(clusterset=nil, totalcount=nil, requestid=nil)
          @ClusterSet = clusterset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterSet'].nil?
            @ClusterSet = []
            params['ClusterSet'].each do |i|
              cluster_tmp = Cluster.new
              cluster_tmp.deserialize(i)
              @ClusterSet << cluster_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIdleLoadBalancers请求参数结构体
      class DescribeIdleLoadBalancersRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 数据偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回负载均衡实例的数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param LoadBalancerRegion: 负载均衡所在地域。
        # @type LoadBalancerRegion: String

        attr_accessor :Offset, :Limit, :LoadBalancerRegion

        def initialize(offset=nil, limit=nil, loadbalancerregion=nil)
          @Offset = offset
          @Limit = limit
          @LoadBalancerRegion = loadbalancerregion
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @LoadBalancerRegion = params['LoadBalancerRegion']
        end
      end

      # DescribeIdleLoadBalancers返回参数结构体
      class DescribeIdleLoadBalancersResponse < TencentCloud::Common::AbstractModel
        # @param IdleLoadBalancers: 闲置实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdleLoadBalancers: Array
        # @param TotalCount: 所有闲置实例数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IdleLoadBalancers, :TotalCount, :RequestId

        def initialize(idleloadbalancers=nil, totalcount=nil, requestid=nil)
          @IdleLoadBalancers = idleloadbalancers
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IdleLoadBalancers'].nil?
            @IdleLoadBalancers = []
            params['IdleLoadBalancers'].each do |i|
              idleloadbalancer_tmp = IdleLoadBalancer.new
              idleloadbalancer_tmp.deserialize(i)
              @IdleLoadBalancers << idleloadbalancer_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLBListeners请求参数结构体
      class DescribeLBListenersRequest < TencentCloud::Common::AbstractModel
        # @param Backends: 需要查询的内网ip列表
        # @type Backends: Array

        attr_accessor :Backends

        def initialize(backends=nil)
          @Backends = backends
        end

        def deserialize(params)
          unless params['Backends'].nil?
            @Backends = []
            params['Backends'].each do |i|
              lbrsitem_tmp = LbRsItem.new
              lbrsitem_tmp.deserialize(i)
              @Backends << lbrsitem_tmp
            end
          end
        end
      end

      # DescribeLBListeners返回参数结构体
      class DescribeLBListenersResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancers: 绑定的后端规则
        # @type LoadBalancers: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancers, :RequestId

        def initialize(loadbalancers=nil, requestid=nil)
          @LoadBalancers = loadbalancers
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoadBalancers'].nil?
            @LoadBalancers = []
            params['LoadBalancers'].each do |i|
              lbitem_tmp = LBItem.new
              lbitem_tmp.deserialize(i)
              @LoadBalancers << lbitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListeners请求参数结构体
      class DescribeListenersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param ListenerIds: 要查询的负载均衡监听器 ID 数组，最大为100个。
        # @type ListenerIds: Array
        # @param Protocol: 要查询的监听器协议类型，取值 TCP | UDP | HTTP | HTTPS | TCP_SSL | QUIC。
        # @type Protocol: String
        # @param Port: 要查询的监听器的端口。
        # @type Port: Integer

        attr_accessor :LoadBalancerId, :ListenerIds, :Protocol, :Port

        def initialize(loadbalancerid=nil, listenerids=nil, protocol=nil, port=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerIds = listenerids
          @Protocol = protocol
          @Port = port
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerIds = params['ListenerIds']
          @Protocol = params['Protocol']
          @Port = params['Port']
        end
      end

      # DescribeListeners返回参数结构体
      class DescribeListenersResponse < TencentCloud::Common::AbstractModel
        # @param Listeners: 监听器列表。
        # @type Listeners: Array
        # @param TotalCount: 总的监听器个数（根据端口、协议、监听器ID过滤后）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Listeners, :TotalCount, :RequestId

        def initialize(listeners=nil, totalcount=nil, requestid=nil)
          @Listeners = listeners
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Listeners'].nil?
            @Listeners = []
            params['Listeners'].each do |i|
              listener_tmp = Listener.new
              listener_tmp.deserialize(i)
              @Listeners << listener_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancerListByCertId请求参数结构体
      class DescribeLoadBalancerListByCertIdRequest < TencentCloud::Common::AbstractModel
        # @param CertIds: 服务端证书的ID，或客户端证书的ID
        # @type CertIds: Array

        attr_accessor :CertIds

        def initialize(certids=nil)
          @CertIds = certids
        end

        def deserialize(params)
          @CertIds = params['CertIds']
        end
      end

      # DescribeLoadBalancerListByCertId返回参数结构体
      class DescribeLoadBalancerListByCertIdResponse < TencentCloud::Common::AbstractModel
        # @param CertSet: 证书ID，以及与该证书ID关联的负载均衡实例列表
        # @type CertSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertSet, :RequestId

        def initialize(certset=nil, requestid=nil)
          @CertSet = certset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CertSet'].nil?
            @CertSet = []
            params['CertSet'].each do |i|
              certidrelatedwithloadbalancers_tmp = CertIdRelatedWithLoadBalancers.new
              certidrelatedwithloadbalancers_tmp.deserialize(i)
              @CertSet << certidrelatedwithloadbalancers_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancerOverview请求参数结构体
      class DescribeLoadBalancerOverviewRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLoadBalancerOverview返回参数结构体
      class DescribeLoadBalancerOverviewResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 负载均衡总数
        # @type TotalCount: Integer
        # @param RunningCount: 运行中的负载均衡数目
        # @type RunningCount: Integer
        # @param IsolationCount: 隔离中的负载均衡数目
        # @type IsolationCount: Integer
        # @param WillExpireCount: 即将到期的负载均衡数目
        # @type WillExpireCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RunningCount, :IsolationCount, :WillExpireCount, :RequestId

        def initialize(totalcount=nil, runningcount=nil, isolationcount=nil, willexpirecount=nil, requestid=nil)
          @TotalCount = totalcount
          @RunningCount = runningcount
          @IsolationCount = isolationcount
          @WillExpireCount = willexpirecount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RunningCount = params['RunningCount']
          @IsolationCount = params['IsolationCount']
          @WillExpireCount = params['WillExpireCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancerTraffic请求参数结构体
      class DescribeLoadBalancerTrafficRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerRegion: 负载均衡所在地域，不传默认返回所有地域负载均衡。
        # @type LoadBalancerRegion: String

        attr_accessor :LoadBalancerRegion

        def initialize(loadbalancerregion=nil)
          @LoadBalancerRegion = loadbalancerregion
        end

        def deserialize(params)
          @LoadBalancerRegion = params['LoadBalancerRegion']
        end
      end

      # DescribeLoadBalancerTraffic返回参数结构体
      class DescribeLoadBalancerTrafficResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancerTraffic: 按出带宽从高到低排序后的负载均衡信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerTraffic: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancerTraffic, :RequestId

        def initialize(loadbalancertraffic=nil, requestid=nil)
          @LoadBalancerTraffic = loadbalancertraffic
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoadBalancerTraffic'].nil?
            @LoadBalancerTraffic = []
            params['LoadBalancerTraffic'].each do |i|
              loadbalancertraffic_tmp = LoadBalancerTraffic.new
              loadbalancertraffic_tmp.deserialize(i)
              @LoadBalancerTraffic << loadbalancertraffic_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancersDetail请求参数结构体
      class DescribeLoadBalancersDetailRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回负载均衡列表数目，默认20，最大值100。
        # @type Limit: Integer
        # @param Offset: 返回负载均衡列表起始偏移量，默认0。
        # @type Offset: Integer
        # @param Fields: 选择返回的Fields列表，系统仅会返回Fileds中填写的字段，可填写的字段详情请参见<a href="https://cloud.tencent.com/document/api/214/30694#LoadBalancerDetail">LoadBalancerDetail</a>。若未在Fileds填写相关字段，则此字段返回null。Fileds中默认添加LoadBalancerId和LoadBalancerName字段。
        # @type Fields: Array
        # @param TargetType: 当Fields包含TargetId、TargetAddress、TargetPort、TargetWeight等Fields时，必选选择导出目标组的Target或者非目标组Target，值范围NODE、GROUP。
        # @type TargetType: String
        # @param Filters: 查询负载均衡详细信息列表条件，详细的过滤条件如下：
        # <li> loadbalancer-id - String - 是否必填：否 - （过滤条件）按照 负载均衡ID 过滤，如："lb-12345678"。</li>
        # <li> project-id - String - 是否必填：否 - （过滤条件）按照 项目ID 过滤，如："0","123"。</li>
        # <li> network - String - 是否必填：否 - （过滤条件）按照 负载均衡网络类型 过滤，如："Public","Private"。</li>
        # <li> vip - String - 是否必填：否 - （过滤条件）按照 负载均衡Vip 过滤，如："1.1.1.1","2204::22:3"。</li>
        # <li> target-ip - String - 是否必填：否 - （过滤条件）按照 后端目标内网Ip 过滤，如："1.1.1.1","2203::214:4"。</li>
        # <li> vpcid - String - 是否必填：否 - （过滤条件）按照 负载均衡所属vpcId 过滤，如："vpc-12345678"。</li>
        # <li> zone - String - 是否必填：否 - （过滤条件）按照 负载均衡所属的可用区 过滤，如："ap-guangzhou-1"。</li>
        # <li> tag-key - String - 是否必填：否 - （过滤条件）按照 负载均衡标签的标签键 过滤，如："name"。</li>
        # <li> tag:* - String - 是否必填：否 - （过滤条件）按照 负载均衡的标签 过滤，':' 后面跟的是标签键。如：过滤标签键name，标签值zhangsan,lisi，{"Name": "tag:name","Values": ["zhangsan", "lisi"]}。</li>
        # <li> fuzzy-search - String - 是否必填：否 - （过滤条件）按照 负载均衡Vip，负载均衡名称 模糊搜索，如："1.1"。</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Fields, :TargetType, :Filters

        def initialize(limit=nil, offset=nil, fields=nil, targettype=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Fields = fields
          @TargetType = targettype
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Fields = params['Fields']
          @TargetType = params['TargetType']
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

      # DescribeLoadBalancersDetail返回参数结构体
      class DescribeLoadBalancersDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 负载均衡详情列表总数。
        # @type TotalCount: Integer
        # @param LoadBalancerDetailSet: 负载均衡详情列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerDetailSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :LoadBalancerDetailSet, :RequestId

        def initialize(totalcount=nil, loadbalancerdetailset=nil, requestid=nil)
          @TotalCount = totalcount
          @LoadBalancerDetailSet = loadbalancerdetailset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LoadBalancerDetailSet'].nil?
            @LoadBalancerDetailSet = []
            params['LoadBalancerDetailSet'].each do |i|
              loadbalancerdetail_tmp = LoadBalancerDetail.new
              loadbalancerdetail_tmp.deserialize(i)
              @LoadBalancerDetailSet << loadbalancerdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancers请求参数结构体
      class DescribeLoadBalancersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 负载均衡实例ID。实例ID数量上限为20个。
        # @type LoadBalancerIds: Array
        # @param LoadBalancerType: 负载均衡实例的网络类型：
        # OPEN：公网属性， INTERNAL：内网属性。
        # @type LoadBalancerType: String
        # @param Forward: 负载均衡实例的类型。1：通用的负载均衡实例，0：传统型负载均衡实例。如果不传此参数，则查询所有类型的负载均衡实例。
        # @type Forward: Integer
        # @param LoadBalancerName: 负载均衡实例的名称。
        # @type LoadBalancerName: String
        # @param Domain: 腾讯云为负载均衡实例分配的域名。
        # @type Domain: String
        # @param LoadBalancerVips: 负载均衡实例的 VIP 地址，支持多个。
        # @type LoadBalancerVips: Array
        # @param BackendPublicIps: 负载均衡绑定的后端服务的外网 IP，只支持查询云服务器的公网 IP。
        # @type BackendPublicIps: Array
        # @param BackendPrivateIps: 负载均衡绑定的后端服务的内网 IP，只支持查询云服务器的内网 IP。
        # @type BackendPrivateIps: Array
        # @param Offset: 数据偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回负载均衡实例的数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param OrderBy: 排序参数，支持以下字段：LoadBalancerName，CreateTime，Domain，LoadBalancerType。
        # @type OrderBy: String
        # @param OrderType: 1：倒序，0：顺序，默认按照创建时间倒序。
        # @type OrderType: Integer
        # @param SearchKey: 搜索字段，模糊匹配名称、域名、VIP。
        # @type SearchKey: String
        # @param ProjectId: 负载均衡实例所属的项目 ID，可以通过 DescribeProject 接口获取。
        # @type ProjectId: Integer
        # @param WithRs: 负载均衡是否绑定后端服务，0：没有绑定后端服务，1：绑定后端服务，-1：查询全部。
        # @type WithRs: Integer
        # @param VpcId: 负载均衡实例所属私有网络唯一ID，如 vpc-bhqkbhdx，
        # 基础网络可传入'0'。
        # @type VpcId: String
        # @param SecurityGroup: 安全组ID，如 sg-m1cc****。
        # @type SecurityGroup: String
        # @param MasterZone: 主可用区ID，如 ："100001" （对应的是广州一区）。
        # @type MasterZone: String
        # @param Filters: 每次请求的`Filters`的上限为10，`Filter.Values`的上限为100。<br/>`Filter.Name`和`Filter.Values`皆为必填项。详细的过滤条件如下：
        # <li> charge-type - String - 是否必填：否 - （过滤条件）按照 CLB 的实例计费模式过滤，包括"PREPAID","POSTPAID_BY_HOUR"。</li>
        # <li> internet-charge-type - String - 是否必填：否 - （过滤条件）按照 CLB 的网络计费模式过滤，包括"BANDWIDTH_PREPAID","TRAFFIC_POSTPAID_BY_HOUR","BANDWIDTH_POSTPAID_BY_HOUR","BANDWIDTH_PACKAGE"。</li>
        # <li> master-zone-id - String - 是否必填：否 - （过滤条件）按照 CLB 的主可用区ID过滤，如 ："100001" （对应的是广州一区）。</li>
        # <li> tag-key - String - 是否必填：否 - （过滤条件）按照 CLB 标签的键过滤。</li>
        # <li> tag:tag-key - String - 是否必填：否 - （过滤条件）按照CLB标签键值对进行过滤，tag-key使用具体的标签键进行替换。</li>
        # <li> function-name - String - 是否必填：否 - （过滤条件）按照 CLB 后端绑定的SCF云函数的函数名称过滤。</li>
        # <li> function-name - String - 是否必填：否 - （过滤条件）按照 CLB 后端绑定的SCF云函数的函数名称过滤。</li>
        # <li> vip-isp - String - 是否必填：否 - （过滤条件）按照 CLB VIP的运营商类型过滤，如："BGP","INTERNAL","CMCC","CTCC","CUCC"等。</li>
        # <li> sla-type - String - 是否必填：否 - （过滤条件）按照 CLB 的性能容量型规格过滤，包括"clb.c2.medium","clb.c3.small","clb.c3.medium","clb.c4.small","clb.c4.medium","clb.c4.large","clb.c4.xlarge"。</li>
        # @type Filters: Array

        attr_accessor :LoadBalancerIds, :LoadBalancerType, :Forward, :LoadBalancerName, :Domain, :LoadBalancerVips, :BackendPublicIps, :BackendPrivateIps, :Offset, :Limit, :OrderBy, :OrderType, :SearchKey, :ProjectId, :WithRs, :VpcId, :SecurityGroup, :MasterZone, :Filters

        def initialize(loadbalancerids=nil, loadbalancertype=nil, forward=nil, loadbalancername=nil, domain=nil, loadbalancervips=nil, backendpublicips=nil, backendprivateips=nil, offset=nil, limit=nil, orderby=nil, ordertype=nil, searchkey=nil, projectid=nil, withrs=nil, vpcid=nil, securitygroup=nil, masterzone=nil, filters=nil)
          @LoadBalancerIds = loadbalancerids
          @LoadBalancerType = loadbalancertype
          @Forward = forward
          @LoadBalancerName = loadbalancername
          @Domain = domain
          @LoadBalancerVips = loadbalancervips
          @BackendPublicIps = backendpublicips
          @BackendPrivateIps = backendprivateips
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
          @OrderType = ordertype
          @SearchKey = searchkey
          @ProjectId = projectid
          @WithRs = withrs
          @VpcId = vpcid
          @SecurityGroup = securitygroup
          @MasterZone = masterzone
          @Filters = filters
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          @LoadBalancerType = params['LoadBalancerType']
          @Forward = params['Forward']
          @LoadBalancerName = params['LoadBalancerName']
          @Domain = params['Domain']
          @LoadBalancerVips = params['LoadBalancerVips']
          @BackendPublicIps = params['BackendPublicIps']
          @BackendPrivateIps = params['BackendPrivateIps']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @SearchKey = params['SearchKey']
          @ProjectId = params['ProjectId']
          @WithRs = params['WithRs']
          @VpcId = params['VpcId']
          @SecurityGroup = params['SecurityGroup']
          @MasterZone = params['MasterZone']
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

      # DescribeLoadBalancers返回参数结构体
      class DescribeLoadBalancersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 满足过滤条件的负载均衡实例总数。此数值与入参中的Limit无关。
        # @type TotalCount: Integer
        # @param LoadBalancerSet: 返回的负载均衡实例数组。
        # @type LoadBalancerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :LoadBalancerSet, :RequestId

        def initialize(totalcount=nil, loadbalancerset=nil, requestid=nil)
          @TotalCount = totalcount
          @LoadBalancerSet = loadbalancerset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LoadBalancerSet'].nil?
            @LoadBalancerSet = []
            params['LoadBalancerSet'].each do |i|
              loadbalancer_tmp = LoadBalancer.new
              loadbalancer_tmp.deserialize(i)
              @LoadBalancerSet << loadbalancer_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeQuota请求参数结构体
      class DescribeQuotaRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeQuota返回参数结构体
      class DescribeQuotaResponse < TencentCloud::Common::AbstractModel
        # @param QuotaSet: 配额列表
        # @type QuotaSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QuotaSet, :RequestId

        def initialize(quotaset=nil, requestid=nil)
          @QuotaSet = quotaset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['QuotaSet'].nil?
            @QuotaSet = []
            params['QuotaSet'].each do |i|
              quota_tmp = Quota.new
              quota_tmp.deserialize(i)
              @QuotaSet << quota_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResources请求参数结构体
      class DescribeResourcesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回可用区资源列表数目，默认20，最大值100。
        # @type Limit: Integer
        # @param Offset: 返回可用区资源列表起始偏移量，默认0。
        # @type Offset: Integer
        # @param Filters: 查询可用区资源列表条件，详细的过滤条件如下：
        # <li> zone - String - 是否必填：否 - （过滤条件）按照 可用区 过滤，如："ap-guangzhou-1"（广州一区）。</li>
        # <li> isp -- String - 是否必填：否 - （过滤条件）按照 Isp 类型过滤，如："BGP","CMCC","CUCC","CTCC"。</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeResources返回参数结构体
      class DescribeResourcesResponse < TencentCloud::Common::AbstractModel
        # @param ZoneResourceSet: 可用区支持的资源列表。
        # @type ZoneResourceSet: Array
        # @param TotalCount: 可用区资源列表数目。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneResourceSet, :TotalCount, :RequestId

        def initialize(zoneresourceset=nil, totalcount=nil, requestid=nil)
          @ZoneResourceSet = zoneresourceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ZoneResourceSet'].nil?
            @ZoneResourceSet = []
            params['ZoneResourceSet'].each do |i|
              zoneresource_tmp = ZoneResource.new
              zoneresource_tmp.deserialize(i)
              @ZoneResourceSet << zoneresource_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRewrite请求参数结构体
      class DescribeRewriteRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param SourceListenerIds: 负载均衡监听器ID数组。
        # @type SourceListenerIds: Array
        # @param SourceLocationIds: 负载均衡转发规则的ID数组。
        # @type SourceLocationIds: Array

        attr_accessor :LoadBalancerId, :SourceListenerIds, :SourceLocationIds

        def initialize(loadbalancerid=nil, sourcelistenerids=nil, sourcelocationids=nil)
          @LoadBalancerId = loadbalancerid
          @SourceListenerIds = sourcelistenerids
          @SourceLocationIds = sourcelocationids
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @SourceListenerIds = params['SourceListenerIds']
          @SourceLocationIds = params['SourceLocationIds']
        end
      end

      # DescribeRewrite返回参数结构体
      class DescribeRewriteResponse < TencentCloud::Common::AbstractModel
        # @param RewriteSet: 重定向转发规则构成的数组，若无重定向规则，则返回空数组。
        # @type RewriteSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RewriteSet, :RequestId

        def initialize(rewriteset=nil, requestid=nil)
          @RewriteSet = rewriteset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RewriteSet'].nil?
            @RewriteSet = []
            params['RewriteSet'].each do |i|
              ruleoutput_tmp = RuleOutput.new
              ruleoutput_tmp.deserialize(i)
              @RewriteSet << ruleoutput_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargetGroupInstances请求参数结构体
      class DescribeTargetGroupInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，当前仅支持TargetGroupId，BindIP，InstanceId过滤。
        # @type Filters: Array
        # @param Limit: 显示数量限制，默认20。
        # @type Limit: Integer
        # @param Offset: 显示的偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :Filters, :Limit, :Offset

        def initialize(filters=nil, limit=nil, offset=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeTargetGroupInstances返回参数结构体
      class DescribeTargetGroupInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 本次查询的结果数量。
        # @type TotalCount: Integer
        # @param TargetGroupInstanceSet: 绑定的服务器信息。
        # @type TargetGroupInstanceSet: Array
        # @param RealCount: 实际统计数量，不受Limit、Offset、CAM的影响。
        # @type RealCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TargetGroupInstanceSet, :RealCount, :RequestId

        def initialize(totalcount=nil, targetgroupinstanceset=nil, realcount=nil, requestid=nil)
          @TotalCount = totalcount
          @TargetGroupInstanceSet = targetgroupinstanceset
          @RealCount = realcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TargetGroupInstanceSet'].nil?
            @TargetGroupInstanceSet = []
            params['TargetGroupInstanceSet'].each do |i|
              targetgroupbackend_tmp = TargetGroupBackend.new
              targetgroupbackend_tmp.deserialize(i)
              @TargetGroupInstanceSet << targetgroupbackend_tmp
            end
          end
          @RealCount = params['RealCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargetGroupList请求参数结构体
      class DescribeTargetGroupListRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupIds: 目标组ID数组。
        # @type TargetGroupIds: Array
        # @param Filters: 过滤条件数组，支持TargetGroupVpcId和TargetGroupName。与TargetGroupIds互斥，优先使用目标组ID。
        # @type Filters: Array
        # @param Offset: 显示的偏移起始量。
        # @type Offset: Integer
        # @param Limit: 显示条数限制，默认为20。
        # @type Limit: Integer

        attr_accessor :TargetGroupIds, :Filters, :Offset, :Limit

        def initialize(targetgroupids=nil, filters=nil, offset=nil, limit=nil)
          @TargetGroupIds = targetgroupids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TargetGroupIds = params['TargetGroupIds']
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
        end
      end

      # DescribeTargetGroupList返回参数结构体
      class DescribeTargetGroupListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 显示的结果数量。
        # @type TotalCount: Integer
        # @param TargetGroupSet: 显示的目标组信息集合。
        # @type TargetGroupSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TargetGroupSet, :RequestId

        def initialize(totalcount=nil, targetgroupset=nil, requestid=nil)
          @TotalCount = totalcount
          @TargetGroupSet = targetgroupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TargetGroupSet'].nil?
            @TargetGroupSet = []
            params['TargetGroupSet'].each do |i|
              targetgroupinfo_tmp = TargetGroupInfo.new
              targetgroupinfo_tmp.deserialize(i)
              @TargetGroupSet << targetgroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargetGroups请求参数结构体
      class DescribeTargetGroupsRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupIds: 目标组ID，与Filters互斥。
        # @type TargetGroupIds: Array
        # @param Limit: 显示条数限制，默认为20。
        # @type Limit: Integer
        # @param Offset: 显示的偏移起始量。
        # @type Offset: Integer
        # @param Filters: 过滤条件数组，与TargetGroupIds互斥，支持TargetGroupVpcId和TargetGroupName。
        # @type Filters: Array

        attr_accessor :TargetGroupIds, :Limit, :Offset, :Filters

        def initialize(targetgroupids=nil, limit=nil, offset=nil, filters=nil)
          @TargetGroupIds = targetgroupids
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @TargetGroupIds = params['TargetGroupIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeTargetGroups返回参数结构体
      class DescribeTargetGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 显示的结果数量。
        # @type TotalCount: Integer
        # @param TargetGroupSet: 显示的目标组信息集合。
        # @type TargetGroupSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TargetGroupSet, :RequestId

        def initialize(totalcount=nil, targetgroupset=nil, requestid=nil)
          @TotalCount = totalcount
          @TargetGroupSet = targetgroupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TargetGroupSet'].nil?
            @TargetGroupSet = []
            params['TargetGroupSet'].each do |i|
              targetgroupinfo_tmp = TargetGroupInfo.new
              targetgroupinfo_tmp.deserialize(i)
              @TargetGroupSet << targetgroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargetHealth请求参数结构体
      class DescribeTargetHealthRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 要查询的负载均衡实例ID列表。
        # @type LoadBalancerIds: Array

        attr_accessor :LoadBalancerIds

        def initialize(loadbalancerids=nil)
          @LoadBalancerIds = loadbalancerids
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
        end
      end

      # DescribeTargetHealth返回参数结构体
      class DescribeTargetHealthResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancers: 负载均衡实例列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancers: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancers, :RequestId

        def initialize(loadbalancers=nil, requestid=nil)
          @LoadBalancers = loadbalancers
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoadBalancers'].nil?
            @LoadBalancers = []
            params['LoadBalancers'].each do |i|
              loadbalancerhealth_tmp = LoadBalancerHealth.new
              loadbalancerhealth_tmp.deserialize(i)
              @LoadBalancers << loadbalancerhealth_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargets请求参数结构体
      class DescribeTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param ListenerIds: 监听器 ID 列表。ID 数量上限为20个。
        # @type ListenerIds: Array
        # @param Protocol: 监听器协议类型。
        # @type Protocol: String
        # @param Port: 监听器端口。
        # @type Port: Integer
        # @param Filters: 查询负载均衡绑定的后端服务列表，过滤条件如下：
        # <li> location-id - String - 是否必填：否 - （过滤条件）按照 规则ID 过滤，如："loc-12345678"。</li>
        # <li> private-ip-address - String - 是否必填：否 - （过滤条件）按照 后端服务内网IP 过滤，如："172.16.1.1"。</li>
        # @type Filters: Array

        attr_accessor :LoadBalancerId, :ListenerIds, :Protocol, :Port, :Filters

        def initialize(loadbalancerid=nil, listenerids=nil, protocol=nil, port=nil, filters=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerIds = listenerids
          @Protocol = protocol
          @Port = port
          @Filters = filters
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerIds = params['ListenerIds']
          @Protocol = params['Protocol']
          @Port = params['Port']
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

      # DescribeTargets返回参数结构体
      class DescribeTargetsResponse < TencentCloud::Common::AbstractModel
        # @param Listeners: 监听器后端绑定的机器信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Listeners: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Listeners, :RequestId

        def initialize(listeners=nil, requestid=nil)
          @Listeners = listeners
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Listeners'].nil?
            @Listeners = []
            params['Listeners'].each do |i|
              listenerbackend_tmp = ListenerBackend.new
              listenerbackend_tmp.deserialize(i)
              @Listeners << listenerbackend_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskStatus请求参数结构体
      class DescribeTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 请求ID，即接口返回的 RequestId 参数。
        # @type TaskId: String
        # @param DealName: 订单ID。
        # 注意：参数TaskId和DealName必须传一个。
        # @type DealName: String

        attr_accessor :TaskId, :DealName

        def initialize(taskid=nil, dealname=nil)
          @TaskId = taskid
          @DealName = dealname
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @DealName = params['DealName']
        end
      end

      # DescribeTaskStatus返回参数结构体
      class DescribeTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务的当前状态。 0：成功，1：失败，2：进行中。
        # @type Status: Integer
        # @param LoadBalancerIds: 由负载均衡实例唯一 ID 组成的数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :LoadBalancerIds, :RequestId

        def initialize(status=nil, loadbalancerids=nil, requestid=nil)
          @Status = status
          @LoadBalancerIds = loadbalancerids
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @LoadBalancerIds = params['LoadBalancerIds']
          @RequestId = params['RequestId']
        end
      end

      # DisassociateTargetGroups请求参数结构体
      class DisassociateTargetGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Associations: 待解绑的规则关系数组。
        # @type Associations: Array

        attr_accessor :Associations

        def initialize(associations=nil)
          @Associations = associations
        end

        def deserialize(params)
          unless params['Associations'].nil?
            @Associations = []
            params['Associations'].each do |i|
              targetgroupassociation_tmp = TargetGroupAssociation.new
              targetgroupassociation_tmp.deserialize(i)
              @Associations << targetgroupassociation_tmp
            end
          end
        end
      end

      # DisassociateTargetGroups返回参数结构体
      class DisassociateTargetGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 独占集群
      class ExclusiveCluster < TencentCloud::Common::AbstractModel
        # @param L4Clusters: 4层独占集群列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type L4Clusters: Array
        # @param L7Clusters: 7层独占集群列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type L7Clusters: Array
        # @param ClassicalCluster: vpcgw集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassicalCluster: :class:`Tencentcloud::Clb.v20180317.models.ClusterItem`

        attr_accessor :L4Clusters, :L7Clusters, :ClassicalCluster

        def initialize(l4clusters=nil, l7clusters=nil, classicalcluster=nil)
          @L4Clusters = l4clusters
          @L7Clusters = l7clusters
          @ClassicalCluster = classicalcluster
        end

        def deserialize(params)
          unless params['L4Clusters'].nil?
            @L4Clusters = []
            params['L4Clusters'].each do |i|
              clusteritem_tmp = ClusterItem.new
              clusteritem_tmp.deserialize(i)
              @L4Clusters << clusteritem_tmp
            end
          end
          unless params['L7Clusters'].nil?
            @L7Clusters = []
            params['L7Clusters'].each do |i|
              clusteritem_tmp = ClusterItem.new
              clusteritem_tmp.deserialize(i)
              @L7Clusters << clusteritem_tmp
            end
          end
          unless params['ClassicalCluster'].nil?
            @ClassicalCluster = ClusterItem.new
            @ClassicalCluster.deserialize(params['ClassicalCluster'])
          end
        end
      end

      # 暂做保留，一般用户无需关注。
      class ExtraInfo < TencentCloud::Common::AbstractModel
        # @param ZhiTong: 是否开通VIP直通
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZhiTong: Boolean
        # @param TgwGroupName: TgwGroup名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TgwGroupName: String

        attr_accessor :ZhiTong, :TgwGroupName

        def initialize(zhitong=nil, tgwgroupname=nil)
          @ZhiTong = zhitong
          @TgwGroupName = tgwgroupname
        end

        def deserialize(params)
          @ZhiTong = params['ZhiTong']
          @TgwGroupName = params['TgwGroupName']
        end
      end

      # 过滤器条件
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤器的名称
        # @type Name: String
        # @param Values: 过滤器的值数组
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

      # SCF云函数（Serverless Cloud Function）相关信息。
      class FunctionInfo < TencentCloud::Common::AbstractModel
        # @param FunctionNamespace: 函数命名空间
        # @type FunctionNamespace: String
        # @param FunctionName: 函数名称
        # @type FunctionName: String
        # @param FunctionQualifier: 函数的版本名称或别名
        # @type FunctionQualifier: String
        # @param FunctionQualifierType: 标识 FunctionQualifier 参数的类型，可取值： VERSION（版本）、ALIAS（别名）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FunctionQualifierType: String

        attr_accessor :FunctionNamespace, :FunctionName, :FunctionQualifier, :FunctionQualifierType

        def initialize(functionnamespace=nil, functionname=nil, functionqualifier=nil, functionqualifiertype=nil)
          @FunctionNamespace = functionnamespace
          @FunctionName = functionname
          @FunctionQualifier = functionqualifier
          @FunctionQualifierType = functionqualifiertype
        end

        def deserialize(params)
          @FunctionNamespace = params['FunctionNamespace']
          @FunctionName = params['FunctionName']
          @FunctionQualifier = params['FunctionQualifier']
          @FunctionQualifierType = params['FunctionQualifierType']
        end
      end

      # SCF云函数（Serverless Cloud Function）作为后端服务
      class FunctionTarget < TencentCloud::Common::AbstractModel
        # @param Function: 云函数相关信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Function: :class:`Tencentcloud::Clb.v20180317.models.FunctionInfo`
        # @param Weight: 权重
        # @type Weight: Integer

        attr_accessor :Function, :Weight

        def initialize(function=nil, weight=nil)
          @Function = function
          @Weight = weight
        end

        def deserialize(params)
          unless params['Function'].nil?
            @Function = FunctionInfo.new
            @Function.deserialize(params['Function'])
          end
          @Weight = params['Weight']
        end
      end

      # 健康检查信息。
      # 注意，自定义探测相关参数 目前只有少量区域灰度支持。
      class HealthCheck < TencentCloud::Common::AbstractModel
        # @param HealthSwitch: 是否开启健康检查：1（开启）、0（关闭）。
        # @type HealthSwitch: Integer
        # @param TimeOut: 健康检查的响应超时时间（仅适用于四层监听器），可选值：2~60，默认值：2，单位：秒。响应超时时间要小于检查间隔时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeOut: Integer
        # @param IntervalTime: 健康检查探测间隔时间，默认值：5，IPv4 CLB实例的取值范围为：2-300，IPv6 CLB 实例的取值范围为：5-300。单位：秒。
        # 说明：部分老旧 IPv4 CLB实例的取值范围为：5-300。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntervalTime: Integer
        # @param HealthNum: 健康阈值，默认值：3，表示当连续探测三次健康则表示该转发正常，可选值：2~10，单位：次。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthNum: Integer
        # @param UnHealthNum: 不健康阈值，默认值：3，表示当连续探测三次不健康则表示该转发异常，可选值：2~10，单位：次。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnHealthNum: Integer
        # @param HttpCode: 健康检查状态码（仅适用于HTTP/HTTPS转发规则、TCP监听器的HTTP健康检查方式）。可选值：1~31，默认 31。
        # 1 表示探测后返回值 1xx 代表健康，2 表示返回 2xx 代表健康，4 表示返回 3xx 代表健康，8 表示返回 4xx 代表健康，16 表示返回 5xx 代表健康。若希望多种返回码都可代表健康，则将相应的值相加。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpCode: Integer
        # @param HttpCheckPath: 健康检查路径（仅适用于HTTP/HTTPS转发规则、TCP监听器的HTTP健康检查方式）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpCheckPath: String
        # @param HttpCheckDomain: 健康检查域名（仅适用于HTTP/HTTPS监听器和TCP监听器的HTTP健康检查方式。针对TCP监听器，当使用HTTP健康检查方式时，该参数为必填项）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpCheckDomain: String
        # @param HttpCheckMethod: 健康检查方法（仅适用于HTTP/HTTPS转发规则、TCP监听器的HTTP健康检查方式），默认值：HEAD，可选值HEAD或GET。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpCheckMethod: String
        # @param CheckPort: 自定义探测相关参数。健康检查端口，默认为后端服务的端口，除非您希望指定特定端口，否则建议留空。（仅适用于TCP/UDP监听器）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckPort: Integer
        # @param ContextType: 自定义探测相关参数。健康检查协议CheckType的值取CUSTOM时，必填此字段，代表健康检查的输入格式，可取值：HEX或TEXT；取值为HEX时，SendContext和RecvContext的字符只能在0123456789ABCDEF中选取且长度必须是偶数位。（仅适用于TCP/UDP监听器）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContextType: String
        # @param SendContext: 自定义探测相关参数。健康检查协议CheckType的值取CUSTOM时，必填此字段，代表健康检查发送的请求内容，只允许ASCII可见字符，最大长度限制500。（仅适用于TCP/UDP监听器）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SendContext: String
        # @param RecvContext: 自定义探测相关参数。健康检查协议CheckType的值取CUSTOM时，必填此字段，代表健康检查返回的结果，只允许ASCII可见字符，最大长度限制500。（仅适用于TCP/UDP监听器）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecvContext: String
        # @param CheckType: 健康检查使用的协议。取值 TCP | HTTP | HTTPS | GRPC | PING | CUSTOM，UDP监听器支持PING/CUSTOM，TCP监听器支持TCP/HTTP/CUSTOM，TCP_SSL/QUIC监听器支持TCP/HTTP，HTTP规则支持HTTP/GRPC，HTTPS规则支持HTTP/HTTPS/GRPC。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckType: String
        # @param HttpVersion: HTTP版本。健康检查协议CheckType的值取HTTP时，必传此字段，代表后端服务的HTTP版本：HTTP/1.0、HTTP/1.1；（仅适用于TCP监听器）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpVersion: String
        # @param SourceIpType: 健康检查源IP类型：0（使用LB的VIP作为源IP），1（使用100.64网段IP作为源IP），默认值：0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceIpType: Integer
        # @param ExtendedCode: GRPC健康检查状态码（仅适用于后端转发协议为GRPC的规则）。默认值为 12，可输入值为数值、多个数值、或者范围，例如 20 或 20,25 或 0-99
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtendedCode: String

        attr_accessor :HealthSwitch, :TimeOut, :IntervalTime, :HealthNum, :UnHealthNum, :HttpCode, :HttpCheckPath, :HttpCheckDomain, :HttpCheckMethod, :CheckPort, :ContextType, :SendContext, :RecvContext, :CheckType, :HttpVersion, :SourceIpType, :ExtendedCode

        def initialize(healthswitch=nil, timeout=nil, intervaltime=nil, healthnum=nil, unhealthnum=nil, httpcode=nil, httpcheckpath=nil, httpcheckdomain=nil, httpcheckmethod=nil, checkport=nil, contexttype=nil, sendcontext=nil, recvcontext=nil, checktype=nil, httpversion=nil, sourceiptype=nil, extendedcode=nil)
          @HealthSwitch = healthswitch
          @TimeOut = timeout
          @IntervalTime = intervaltime
          @HealthNum = healthnum
          @UnHealthNum = unhealthnum
          @HttpCode = httpcode
          @HttpCheckPath = httpcheckpath
          @HttpCheckDomain = httpcheckdomain
          @HttpCheckMethod = httpcheckmethod
          @CheckPort = checkport
          @ContextType = contexttype
          @SendContext = sendcontext
          @RecvContext = recvcontext
          @CheckType = checktype
          @HttpVersion = httpversion
          @SourceIpType = sourceiptype
          @ExtendedCode = extendedcode
        end

        def deserialize(params)
          @HealthSwitch = params['HealthSwitch']
          @TimeOut = params['TimeOut']
          @IntervalTime = params['IntervalTime']
          @HealthNum = params['HealthNum']
          @UnHealthNum = params['UnHealthNum']
          @HttpCode = params['HttpCode']
          @HttpCheckPath = params['HttpCheckPath']
          @HttpCheckDomain = params['HttpCheckDomain']
          @HttpCheckMethod = params['HttpCheckMethod']
          @CheckPort = params['CheckPort']
          @ContextType = params['ContextType']
          @SendContext = params['SendContext']
          @RecvContext = params['RecvContext']
          @CheckType = params['CheckType']
          @HttpVersion = params['HttpVersion']
          @SourceIpType = params['SourceIpType']
          @ExtendedCode = params['ExtendedCode']
        end
      end

      # 闲置实例。
      class IdleLoadBalancer < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡ID
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡名字
        # @type LoadBalancerName: String
        # @param Region: 负载均衡所在地域
        # @type Region: String
        # @param Vip: 负载均衡的vip
        # @type Vip: String
        # @param IdleReason: 闲置原因。NO_RULES：没有规则，NO_RS：有规则没有绑定子机。
        # @type IdleReason: String
        # @param Status: 负载均衡实例的状态，包括
        # 0：创建中，1：正常运行。
        # @type Status: Integer
        # @param Forward: 负载均衡类型标识，1：负载均衡，0：传统型负载均衡。
        # @type Forward: Integer
        # @param Domain: 负载均衡域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String

        attr_accessor :LoadBalancerId, :LoadBalancerName, :Region, :Vip, :IdleReason, :Status, :Forward, :Domain

        def initialize(loadbalancerid=nil, loadbalancername=nil, region=nil, vip=nil, idlereason=nil, status=nil, forward=nil, domain=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @Region = region
          @Vip = vip
          @IdleReason = idlereason
          @Status = status
          @Forward = forward
          @Domain = domain
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @Region = params['Region']
          @Vip = params['Vip']
          @IdleReason = params['IdleReason']
          @Status = params['Status']
          @Forward = params['Forward']
          @Domain = params['Domain']
        end
      end

      # 网络计费模式，最大出带宽
      class InternetAccessible < TencentCloud::Common::AbstractModel
        # @param InternetChargeType: TRAFFIC_POSTPAID_BY_HOUR 按流量按小时后计费 ; BANDWIDTH_POSTPAID_BY_HOUR 按带宽按小时后计费;
        # BANDWIDTH_PACKAGE 按带宽包计费;
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetChargeType: String
        # @param InternetMaxBandwidthOut: 最大出带宽，单位Mbps，仅对公网属性的共享型、性能容量型和独占型 CLB 实例、以及内网属性的性能容量型 CLB 实例生效。
        # - 对于公网属性的共享型和独占型 CLB 实例，最大出带宽的范围为1Mbps-2048Mbps。
        # - 对于公网属性和内网属性的性能容量型 CLB实例
        #   - 默认为普通规格的性能容量型实例，SLA对应超强型1规格，最大出带宽的范围为1Mbps-10240Mbps。
        #   - 当您开通了超大型规格的性能容量型时，最大出带宽的范围为1Mbps-61440Mbps。超大型规格的性能容量型正在内测中，请提交 [工单申请](https://console.cloud.tencent.com/workorder/category)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetMaxBandwidthOut: Integer
        # @param BandwidthpkgSubType: 带宽包的类型，如SINGLEISP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BandwidthpkgSubType: String

        attr_accessor :InternetChargeType, :InternetMaxBandwidthOut, :BandwidthpkgSubType

        def initialize(internetchargetype=nil, internetmaxbandwidthout=nil, bandwidthpkgsubtype=nil)
          @InternetChargeType = internetchargetype
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @BandwidthpkgSubType = bandwidthpkgsubtype
        end

        def deserialize(params)
          @InternetChargeType = params['InternetChargeType']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @BandwidthpkgSubType = params['BandwidthpkgSubType']
        end
      end

      # lb实例包年包月相关配置属性
      class LBChargePrepaid < TencentCloud::Common::AbstractModel
        # @param RenewFlag: 续费类型：AUTO_RENEW 自动续费，  MANUAL_RENEW 手动续费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: String
        # @param Period: 购买时长，单位：月
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Period: Integer

        attr_accessor :RenewFlag, :Period

        def initialize(renewflag=nil, period=nil)
          @RenewFlag = renewflag
          @Period = period
        end

        def deserialize(params)
          @RenewFlag = params['RenewFlag']
          @Period = params['Period']
        end
      end

      # 反查Lb绑定关系。
      class LBItem < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: lb的字符串id
        # @type LoadBalancerId: String
        # @param Vip: lb的vip
        # @type Vip: String
        # @param Listeners: 监听器规则
        # @type Listeners: Array
        # @param Region: LB所在地域
        # @type Region: String

        attr_accessor :LoadBalancerId, :Vip, :Listeners, :Region

        def initialize(loadbalancerid=nil, vip=nil, listeners=nil, region=nil)
          @LoadBalancerId = loadbalancerid
          @Vip = vip
          @Listeners = listeners
          @Region = region
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @Vip = params['Vip']
          unless params['Listeners'].nil?
            @Listeners = []
            params['Listeners'].each do |i|
              listeneritem_tmp = ListenerItem.new
              listeneritem_tmp.deserialize(i)
              @Listeners << listeneritem_tmp
            end
          end
          @Region = params['Region']
        end
      end

      # 查询类型
      class LbRsItem < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc的字符串id，只支持字符串id。
        # @type VpcId: String
        # @param PrivateIp: 需要查询后端的内网ip，可以是cvm和弹性网卡。
        # @type PrivateIp: String

        attr_accessor :VpcId, :PrivateIp

        def initialize(vpcid=nil, privateip=nil)
          @VpcId = vpcid
          @PrivateIp = privateip
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @PrivateIp = params['PrivateIp']
        end
      end

      # 反查结果数据类型。
      class LbRsTargets < TencentCloud::Common::AbstractModel
        # @param Type: 内网ip类型。“cvm”或“eni”
        # @type Type: String
        # @param PrivateIp: 后端实例的内网ip。
        # @type PrivateIp: String
        # @param Port: 绑定后端实例的端口。
        # @type Port: Integer
        # @param VpcId: rs的vpcId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: Integer
        # @param Weight: rs的权重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer

        attr_accessor :Type, :PrivateIp, :Port, :VpcId, :Weight

        def initialize(type=nil, privateip=nil, port=nil, vpcid=nil, weight=nil)
          @Type = type
          @PrivateIp = privateip
          @Port = port
          @VpcId = vpcid
          @Weight = weight
        end

        def deserialize(params)
          @Type = params['Type']
          @PrivateIp = params['PrivateIp']
          @Port = params['Port']
          @VpcId = params['VpcId']
          @Weight = params['Weight']
        end
      end

      # 监听器的信息
      class Listener < TencentCloud::Common::AbstractModel
        # @param ListenerId: 负载均衡监听器 ID
        # @type ListenerId: String
        # @param Protocol: 监听器协议
        # @type Protocol: String
        # @param Port: 监听器端口
        # @type Port: Integer
        # @param Certificate: 监听器绑定的证书信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Certificate: :class:`Tencentcloud::Clb.v20180317.models.CertificateOutput`
        # @param HealthCheck: 监听器的健康检查信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheck: :class:`Tencentcloud::Clb.v20180317.models.HealthCheck`
        # @param Scheduler: 请求的调度方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scheduler: String
        # @param SessionExpireTime: 会话保持时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionExpireTime: Integer
        # @param SniSwitch: 是否开启SNI特性（本参数仅对于HTTPS监听器有意义）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SniSwitch: Integer
        # @param Rules: 监听器下的全部转发规则（本参数仅对于HTTP/HTTPS监听器有意义）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rules: Array
        # @param ListenerName: 监听器的名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerName: String
        # @param CreateTime: 监听器的创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param EndPort: 端口段结束端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndPort: Integer
        # @param TargetType: 后端服务器类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetType: String
        # @param TargetGroup: 绑定的目标组基本信息；当监听器绑定目标组时，会返回该字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetGroup: :class:`Tencentcloud::Clb.v20180317.models.BasicTargetGroupInfo`
        # @param SessionType: 会话保持类型。NORMAL表示默认会话保持类型。QUIC_CID 表示根据Quic Connection ID做会话保持。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionType: String
        # @param KeepaliveEnable: 是否开启长连接，1开启，0关闭，（本参数仅对于HTTP/HTTPS监听器有意义）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeepaliveEnable: Integer
        # @param Toa: 仅支持Nat64 CLB TCP监听器
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Toa: Boolean
        # @param DeregisterTargetRst: 解绑后端目标时，是否发RST给客户端，（此参数仅对于TCP监听器有意义）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeregisterTargetRst: Boolean
        # @param AttrFlags: 监听器的属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttrFlags: Array
        # @param TargetGroupList: 绑定的目标组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetGroupList: Array
        # @param MaxConn: 监听器最大连接数，-1表示监听器维度不限速。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxConn: Integer
        # @param MaxCps: 监听器最大新增连接数，-1表示监听器维度不限速。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxCps: Integer
        # @param IdleConnectTimeout: 空闲连接超时时间，仅支持TCP监听器。默认值:900；共享型实例和独占型实例取值范围：300～900，性能容量型实例取值范围:300～1980。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdleConnectTimeout: Integer

        attr_accessor :ListenerId, :Protocol, :Port, :Certificate, :HealthCheck, :Scheduler, :SessionExpireTime, :SniSwitch, :Rules, :ListenerName, :CreateTime, :EndPort, :TargetType, :TargetGroup, :SessionType, :KeepaliveEnable, :Toa, :DeregisterTargetRst, :AttrFlags, :TargetGroupList, :MaxConn, :MaxCps, :IdleConnectTimeout

        def initialize(listenerid=nil, protocol=nil, port=nil, certificate=nil, healthcheck=nil, scheduler=nil, sessionexpiretime=nil, sniswitch=nil, rules=nil, listenername=nil, createtime=nil, endport=nil, targettype=nil, targetgroup=nil, sessiontype=nil, keepaliveenable=nil, toa=nil, deregistertargetrst=nil, attrflags=nil, targetgrouplist=nil, maxconn=nil, maxcps=nil, idleconnecttimeout=nil)
          @ListenerId = listenerid
          @Protocol = protocol
          @Port = port
          @Certificate = certificate
          @HealthCheck = healthcheck
          @Scheduler = scheduler
          @SessionExpireTime = sessionexpiretime
          @SniSwitch = sniswitch
          @Rules = rules
          @ListenerName = listenername
          @CreateTime = createtime
          @EndPort = endport
          @TargetType = targettype
          @TargetGroup = targetgroup
          @SessionType = sessiontype
          @KeepaliveEnable = keepaliveenable
          @Toa = toa
          @DeregisterTargetRst = deregistertargetrst
          @AttrFlags = attrflags
          @TargetGroupList = targetgrouplist
          @MaxConn = maxconn
          @MaxCps = maxcps
          @IdleConnectTimeout = idleconnecttimeout
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Protocol = params['Protocol']
          @Port = params['Port']
          unless params['Certificate'].nil?
            @Certificate = CertificateOutput.new
            @Certificate.deserialize(params['Certificate'])
          end
          unless params['HealthCheck'].nil?
            @HealthCheck = HealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          @Scheduler = params['Scheduler']
          @SessionExpireTime = params['SessionExpireTime']
          @SniSwitch = params['SniSwitch']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ruleoutput_tmp = RuleOutput.new
              ruleoutput_tmp.deserialize(i)
              @Rules << ruleoutput_tmp
            end
          end
          @ListenerName = params['ListenerName']
          @CreateTime = params['CreateTime']
          @EndPort = params['EndPort']
          @TargetType = params['TargetType']
          unless params['TargetGroup'].nil?
            @TargetGroup = BasicTargetGroupInfo.new
            @TargetGroup.deserialize(params['TargetGroup'])
          end
          @SessionType = params['SessionType']
          @KeepaliveEnable = params['KeepaliveEnable']
          @Toa = params['Toa']
          @DeregisterTargetRst = params['DeregisterTargetRst']
          @AttrFlags = params['AttrFlags']
          unless params['TargetGroupList'].nil?
            @TargetGroupList = []
            params['TargetGroupList'].each do |i|
              basictargetgroupinfo_tmp = BasicTargetGroupInfo.new
              basictargetgroupinfo_tmp.deserialize(i)
              @TargetGroupList << basictargetgroupinfo_tmp
            end
          end
          @MaxConn = params['MaxConn']
          @MaxCps = params['MaxCps']
          @IdleConnectTimeout = params['IdleConnectTimeout']
        end
      end

      # 监听器上绑定的后端服务的信息
      class ListenerBackend < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器 ID
        # @type ListenerId: String
        # @param Protocol: 监听器的协议
        # @type Protocol: String
        # @param Port: 监听器的端口
        # @type Port: Integer
        # @param Rules: 监听器下的规则信息（仅适用于HTTP/HTTPS监听器）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rules: Array
        # @param Targets: 监听器上绑定的后端服务列表（仅适用于TCP/UDP/TCP_SSL监听器）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Targets: Array
        # @param EndPort: 若支持端口段，则为端口段结束端口；若不支持端口段，则为0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndPort: Integer

        attr_accessor :ListenerId, :Protocol, :Port, :Rules, :Targets, :EndPort

        def initialize(listenerid=nil, protocol=nil, port=nil, rules=nil, targets=nil, endport=nil)
          @ListenerId = listenerid
          @Protocol = protocol
          @Port = port
          @Rules = rules
          @Targets = targets
          @EndPort = endport
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Protocol = params['Protocol']
          @Port = params['Port']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ruletargets_tmp = RuleTargets.new
              ruletargets_tmp.deserialize(i)
              @Rules << ruletargets_tmp
            end
          end
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              backend_tmp = Backend.new
              backend_tmp.deserialize(i)
              @Targets << backend_tmp
            end
          end
          @EndPort = params['EndPort']
        end
      end

      # 监听器的健康检查信息
      class ListenerHealth < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param ListenerName: 监听器名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerName: String
        # @param Protocol: 监听器的协议
        # @type Protocol: String
        # @param Port: 监听器的端口
        # @type Port: Integer
        # @param Rules: 监听器的转发规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rules: Array

        attr_accessor :ListenerId, :ListenerName, :Protocol, :Port, :Rules

        def initialize(listenerid=nil, listenername=nil, protocol=nil, port=nil, rules=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @Protocol = protocol
          @Port = port
          @Rules = rules
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Protocol = params['Protocol']
          @Port = params['Port']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              rulehealth_tmp = RuleHealth.new
              rulehealth_tmp.deserialize(i)
              @Rules << rulehealth_tmp
            end
          end
        end
      end

      # 反查监听器类型
      class ListenerItem < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param Protocol: 监听器协议
        # @type Protocol: String
        # @param Port: 监听器端口
        # @type Port: Integer
        # @param Rules: 绑定规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rules: Array
        # @param Targets: 四层绑定对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Targets: Array
        # @param EndPort: 端口段监听器的结束端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndPort: Integer

        attr_accessor :ListenerId, :Protocol, :Port, :Rules, :Targets, :EndPort

        def initialize(listenerid=nil, protocol=nil, port=nil, rules=nil, targets=nil, endport=nil)
          @ListenerId = listenerid
          @Protocol = protocol
          @Port = port
          @Rules = rules
          @Targets = targets
          @EndPort = endport
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Protocol = params['Protocol']
          @Port = params['Port']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              rulesitems_tmp = RulesItems.new
              rulesitems_tmp.deserialize(i)
              @Rules << rulesitems_tmp
            end
          end
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              lbrstargets_tmp = LbRsTargets.new
              lbrstargets_tmp.deserialize(i)
              @Targets << lbrstargets_tmp
            end
          end
          @EndPort = params['EndPort']
        end
      end

      # 负载均衡实例的信息
      class LoadBalancer < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡实例的名称。
        # @type LoadBalancerName: String
        # @param LoadBalancerType: 负载均衡实例的网络类型：
        # OPEN：公网属性， INTERNAL：内网属性。
        # @type LoadBalancerType: String
        # @param Forward: 负载均衡类型标识，1：负载均衡，0：传统型负载均衡。
        # @type Forward: Integer
        # @param Domain: 负载均衡实例的域名，仅公网传统型负载均衡实例才提供该字段。逐步下线中，建议用LoadBalancerDomain替代。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param LoadBalancerVips: 负载均衡实例的 VIP 列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerVips: Array
        # @param Status: 负载均衡实例的状态，包括
        # 0：创建中，1：正常运行。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateTime: 负载均衡实例的创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param StatusTime: 负载均衡实例的上次状态转换时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusTime: String
        # @param ProjectId: 负载均衡实例所属的项目 ID， 0 表示默认项目。
        # @type ProjectId: Integer
        # @param VpcId: 私有网络的 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param OpenBgp: 高防 LB 的标识，1：高防负载均衡 0：非高防负载均衡。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenBgp: Integer
        # @param Snat: 在 2016 年 12 月份之前的传统型内网负载均衡都是开启了 snat 的。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Snat: Boolean
        # @param Isolation: 0：表示未被隔离，1：表示被隔离。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Isolation: Integer
        # @param Log: 用户开启日志的信息，日志只有公网属性创建了 HTTP 、HTTPS 监听器的负载均衡才会有日志。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Log: String
        # @param SubnetId: 负载均衡实例所在的子网（仅对内网VPC型LB有意义）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param Tags: 负载均衡实例的标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param SecureGroups: 负载均衡实例的安全组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecureGroups: Array
        # @param TargetRegionInfo: 负载均衡实例绑定的后端设备的基本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetRegionInfo: :class:`Tencentcloud::Clb.v20180317.models.TargetRegionInfo`
        # @param AnycastZone: anycast负载均衡的发布域，对于非anycast的负载均衡，此字段返回为空字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnycastZone: String
        # @param AddressIPVersion: IP版本，ipv4 | ipv6
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressIPVersion: String
        # @param NumericalVpcId: 数值形式的私有网络 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NumericalVpcId: Integer
        # @param VipIsp: 负载均衡IP地址所属的ISP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VipIsp: String
        # @param MasterZone: 主可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterZone: :class:`Tencentcloud::Clb.v20180317.models.ZoneInfo`
        # @param BackupZoneSet: 备可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupZoneSet: Array
        # @param IsolatedTime: 负载均衡实例被隔离的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolatedTime: String
        # @param ExpireTime: 负载均衡实例的过期时间，仅对预付费负载均衡生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param ChargeType: 负载均衡实例的计费类型，PREPAID：包年包月，POSTPAID_BY_HOUR：按量计费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeType: String
        # @param NetworkAttributes: 负载均衡实例的网络属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkAttributes: :class:`Tencentcloud::Clb.v20180317.models.InternetAccessible`
        # @param PrepaidAttributes: 负载均衡实例的预付费相关属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrepaidAttributes: :class:`Tencentcloud::Clb.v20180317.models.LBChargePrepaid`
        # @param LogSetId: 负载均衡日志服务(CLS)的日志集ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogSetId: String
        # @param LogTopicId: 负载均衡日志服务(CLS)的日志主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogTopicId: String
        # @param AddressIPv6: 负载均衡实例的IPv6地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressIPv6: String
        # @param ExtraInfo: 暂做保留，一般用户无需关注。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInfo: :class:`Tencentcloud::Clb.v20180317.models.ExtraInfo`
        # @param IsDDos: 是否可绑定高防包
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDDos: Boolean
        # @param ConfigId: 负载均衡维度的个性化配置ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigId: String
        # @param LoadBalancerPassToTarget: 后端服务是否放通来自LB的流量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerPassToTarget: Boolean
        # @param ExclusiveCluster: 内网独占集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExclusiveCluster: :class:`Tencentcloud::Clb.v20180317.models.ExclusiveCluster`
        # @param IPv6Mode: IP地址版本为ipv6时此字段有意义， IPv6Nat64 | IPv6FullChain
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IPv6Mode: String
        # @param SnatPro: 是否开启SnatPro。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnatPro: Boolean
        # @param SnatIps: 开启SnatPro负载均衡后，SnatIp列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnatIps: Array
        # @param SlaType: 性能容量型规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlaType: String
        # @param IsBlock: vip是否被封堵
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsBlock: Boolean
        # @param IsBlockTime: 封堵或解封时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsBlockTime: String
        # @param LocalBgp: IP类型是否是本地BGP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalBgp: Boolean
        # @param ClusterTag: 7层独占标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterTag: String
        # @param MixIpTarget: 开启IPv6FullChain负载均衡7层监听器支持混绑IPv4/IPv6目标功能。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MixIpTarget: Boolean
        # @param Zones: 私有网络内网负载均衡，就近接入模式下规则所落在的可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zones: Array
        # @param NfvInfo: CLB是否为NFV，空：不是，l7nfv：七层是NFV。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NfvInfo: String
        # @param HealthLogSetId: 负载均衡日志服务(CLS)的健康检查日志集ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthLogSetId: String
        # @param HealthLogTopicId: 负载均衡日志服务(CLS)的健康检查日志主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthLogTopicId: String
        # @param ClusterIds: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterIds: Array
        # @param AttributeFlags: 负载均衡的属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttributeFlags: Array
        # @param LoadBalancerDomain: 负载均衡实例的域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerDomain: String

        attr_accessor :LoadBalancerId, :LoadBalancerName, :LoadBalancerType, :Forward, :Domain, :LoadBalancerVips, :Status, :CreateTime, :StatusTime, :ProjectId, :VpcId, :OpenBgp, :Snat, :Isolation, :Log, :SubnetId, :Tags, :SecureGroups, :TargetRegionInfo, :AnycastZone, :AddressIPVersion, :NumericalVpcId, :VipIsp, :MasterZone, :BackupZoneSet, :IsolatedTime, :ExpireTime, :ChargeType, :NetworkAttributes, :PrepaidAttributes, :LogSetId, :LogTopicId, :AddressIPv6, :ExtraInfo, :IsDDos, :ConfigId, :LoadBalancerPassToTarget, :ExclusiveCluster, :IPv6Mode, :SnatPro, :SnatIps, :SlaType, :IsBlock, :IsBlockTime, :LocalBgp, :ClusterTag, :MixIpTarget, :Zones, :NfvInfo, :HealthLogSetId, :HealthLogTopicId, :ClusterIds, :AttributeFlags, :LoadBalancerDomain

        def initialize(loadbalancerid=nil, loadbalancername=nil, loadbalancertype=nil, forward=nil, domain=nil, loadbalancervips=nil, status=nil, createtime=nil, statustime=nil, projectid=nil, vpcid=nil, openbgp=nil, snat=nil, isolation=nil, log=nil, subnetid=nil, tags=nil, securegroups=nil, targetregioninfo=nil, anycastzone=nil, addressipversion=nil, numericalvpcid=nil, vipisp=nil, masterzone=nil, backupzoneset=nil, isolatedtime=nil, expiretime=nil, chargetype=nil, networkattributes=nil, prepaidattributes=nil, logsetid=nil, logtopicid=nil, addressipv6=nil, extrainfo=nil, isddos=nil, configid=nil, loadbalancerpasstotarget=nil, exclusivecluster=nil, ipv6mode=nil, snatpro=nil, snatips=nil, slatype=nil, isblock=nil, isblocktime=nil, localbgp=nil, clustertag=nil, mixiptarget=nil, zones=nil, nfvinfo=nil, healthlogsetid=nil, healthlogtopicid=nil, clusterids=nil, attributeflags=nil, loadbalancerdomain=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @LoadBalancerType = loadbalancertype
          @Forward = forward
          @Domain = domain
          @LoadBalancerVips = loadbalancervips
          @Status = status
          @CreateTime = createtime
          @StatusTime = statustime
          @ProjectId = projectid
          @VpcId = vpcid
          @OpenBgp = openbgp
          @Snat = snat
          @Isolation = isolation
          @Log = log
          @SubnetId = subnetid
          @Tags = tags
          @SecureGroups = securegroups
          @TargetRegionInfo = targetregioninfo
          @AnycastZone = anycastzone
          @AddressIPVersion = addressipversion
          @NumericalVpcId = numericalvpcid
          @VipIsp = vipisp
          @MasterZone = masterzone
          @BackupZoneSet = backupzoneset
          @IsolatedTime = isolatedtime
          @ExpireTime = expiretime
          @ChargeType = chargetype
          @NetworkAttributes = networkattributes
          @PrepaidAttributes = prepaidattributes
          @LogSetId = logsetid
          @LogTopicId = logtopicid
          @AddressIPv6 = addressipv6
          @ExtraInfo = extrainfo
          @IsDDos = isddos
          @ConfigId = configid
          @LoadBalancerPassToTarget = loadbalancerpasstotarget
          @ExclusiveCluster = exclusivecluster
          @IPv6Mode = ipv6mode
          @SnatPro = snatpro
          @SnatIps = snatips
          @SlaType = slatype
          @IsBlock = isblock
          @IsBlockTime = isblocktime
          @LocalBgp = localbgp
          @ClusterTag = clustertag
          @MixIpTarget = mixiptarget
          @Zones = zones
          @NfvInfo = nfvinfo
          @HealthLogSetId = healthlogsetid
          @HealthLogTopicId = healthlogtopicid
          @ClusterIds = clusterids
          @AttributeFlags = attributeflags
          @LoadBalancerDomain = loadbalancerdomain
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @LoadBalancerType = params['LoadBalancerType']
          @Forward = params['Forward']
          @Domain = params['Domain']
          @LoadBalancerVips = params['LoadBalancerVips']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @StatusTime = params['StatusTime']
          @ProjectId = params['ProjectId']
          @VpcId = params['VpcId']
          @OpenBgp = params['OpenBgp']
          @Snat = params['Snat']
          @Isolation = params['Isolation']
          @Log = params['Log']
          @SubnetId = params['SubnetId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @SecureGroups = params['SecureGroups']
          unless params['TargetRegionInfo'].nil?
            @TargetRegionInfo = TargetRegionInfo.new
            @TargetRegionInfo.deserialize(params['TargetRegionInfo'])
          end
          @AnycastZone = params['AnycastZone']
          @AddressIPVersion = params['AddressIPVersion']
          @NumericalVpcId = params['NumericalVpcId']
          @VipIsp = params['VipIsp']
          unless params['MasterZone'].nil?
            @MasterZone = ZoneInfo.new
            @MasterZone.deserialize(params['MasterZone'])
          end
          unless params['BackupZoneSet'].nil?
            @BackupZoneSet = []
            params['BackupZoneSet'].each do |i|
              zoneinfo_tmp = ZoneInfo.new
              zoneinfo_tmp.deserialize(i)
              @BackupZoneSet << zoneinfo_tmp
            end
          end
          @IsolatedTime = params['IsolatedTime']
          @ExpireTime = params['ExpireTime']
          @ChargeType = params['ChargeType']
          unless params['NetworkAttributes'].nil?
            @NetworkAttributes = InternetAccessible.new
            @NetworkAttributes.deserialize(params['NetworkAttributes'])
          end
          unless params['PrepaidAttributes'].nil?
            @PrepaidAttributes = LBChargePrepaid.new
            @PrepaidAttributes.deserialize(params['PrepaidAttributes'])
          end
          @LogSetId = params['LogSetId']
          @LogTopicId = params['LogTopicId']
          @AddressIPv6 = params['AddressIPv6']
          unless params['ExtraInfo'].nil?
            @ExtraInfo = ExtraInfo.new
            @ExtraInfo.deserialize(params['ExtraInfo'])
          end
          @IsDDos = params['IsDDos']
          @ConfigId = params['ConfigId']
          @LoadBalancerPassToTarget = params['LoadBalancerPassToTarget']
          unless params['ExclusiveCluster'].nil?
            @ExclusiveCluster = ExclusiveCluster.new
            @ExclusiveCluster.deserialize(params['ExclusiveCluster'])
          end
          @IPv6Mode = params['IPv6Mode']
          @SnatPro = params['SnatPro']
          unless params['SnatIps'].nil?
            @SnatIps = []
            params['SnatIps'].each do |i|
              snatip_tmp = SnatIp.new
              snatip_tmp.deserialize(i)
              @SnatIps << snatip_tmp
            end
          end
          @SlaType = params['SlaType']
          @IsBlock = params['IsBlock']
          @IsBlockTime = params['IsBlockTime']
          @LocalBgp = params['LocalBgp']
          @ClusterTag = params['ClusterTag']
          @MixIpTarget = params['MixIpTarget']
          @Zones = params['Zones']
          @NfvInfo = params['NfvInfo']
          @HealthLogSetId = params['HealthLogSetId']
          @HealthLogTopicId = params['HealthLogTopicId']
          @ClusterIds = params['ClusterIds']
          @AttributeFlags = params['AttributeFlags']
          @LoadBalancerDomain = params['LoadBalancerDomain']
        end
      end

      # 负载均衡详细信息
      class LoadBalancerDetail < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡实例的名称。
        # @type LoadBalancerName: String
        # @param LoadBalancerType: 负载均衡实例的网络类型：
        # Public：公网属性， Private：内网属性。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerType: String
        # @param Status: 负载均衡实例的状态，包括
        # 0：创建中，1：正常运行。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Address: 负载均衡实例的 VIP 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param AddressIPv6: 负载均衡实例 VIP 的IPv6地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressIPv6: String
        # @param AddressIPVersion: 负载均衡实例IP版本，IPv4 | IPv6。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressIPVersion: String
        # @param IPv6Mode: 负载均衡实例IPv6地址类型，IPv6Nat64 | IPv6FullChain。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IPv6Mode: String
        # @param Zone: 负载均衡实例所在可用区。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param AddressIsp: 负载均衡实例IP地址所属的ISP。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressIsp: String
        # @param VpcId: 负载均衡实例所属私有网络的 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param ProjectId: 负载均衡实例所属的项目 ID， 0 表示默认项目。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param CreateTime: 负载均衡实例的创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ChargeType: 负载均衡实例的计费类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeType: String
        # @param NetworkAttributes: 负载均衡实例的网络属性。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkAttributes: :class:`Tencentcloud::Clb.v20180317.models.InternetAccessible`
        # @param PrepaidAttributes: 负载均衡实例的预付费相关属性。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrepaidAttributes: :class:`Tencentcloud::Clb.v20180317.models.LBChargePrepaid`
        # @param ExtraInfo: 暂做保留，一般用户无需关注。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInfo: :class:`Tencentcloud::Clb.v20180317.models.ExtraInfo`
        # @param ConfigId: 负载均衡维度的个性化配置ID，多个配置用逗号隔开。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigId: String
        # @param Tags: 负载均衡实例的标签信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param ListenerId: 负载均衡监听器 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerId: String
        # @param Protocol: 监听器协议。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Port: 监听器端口。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param LocationId: 转发规则的 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocationId: String
        # @param Domain: 转发规则的域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Url: 转发规则的路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param TargetId: 后端目标ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetId: String
        # @param TargetAddress: 后端目标的IP地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetAddress: String
        # @param TargetPort: 后端目标监听端口。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetPort: Integer
        # @param TargetWeight: 后端目标转发权重。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetWeight: Integer
        # @param Isolation: 0：表示未被隔离，1：表示被隔离。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Isolation: Integer
        # @param SecurityGroup: 负载均衡绑定的安全组列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroup: Array
        # @param LoadBalancerPassToTarget: 负载均衡安全组上移特性是否开启标识。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerPassToTarget: Integer
        # @param TargetHealth: 后端目标健康状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetHealth: String
        # @param Domains: 转发规则的域名列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domains: String
        # @param SlaveZone: 多可用区负载均衡实例所选备区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlaveZone: Array
        # @param Zones: 内网负载均衡实例所在可用区，由白名单CLB_Internal_Zone控制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zones: Array
        # @param SniSwitch: 是否开启SNI特性（本参数仅对于HTTPS监听器有意义）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SniSwitch: Integer
        # @param LoadBalancerDomain: 负载均衡实例的域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerDomain: String

        attr_accessor :LoadBalancerId, :LoadBalancerName, :LoadBalancerType, :Status, :Address, :AddressIPv6, :AddressIPVersion, :IPv6Mode, :Zone, :AddressIsp, :VpcId, :ProjectId, :CreateTime, :ChargeType, :NetworkAttributes, :PrepaidAttributes, :ExtraInfo, :ConfigId, :Tags, :ListenerId, :Protocol, :Port, :LocationId, :Domain, :Url, :TargetId, :TargetAddress, :TargetPort, :TargetWeight, :Isolation, :SecurityGroup, :LoadBalancerPassToTarget, :TargetHealth, :Domains, :SlaveZone, :Zones, :SniSwitch, :LoadBalancerDomain

        def initialize(loadbalancerid=nil, loadbalancername=nil, loadbalancertype=nil, status=nil, address=nil, addressipv6=nil, addressipversion=nil, ipv6mode=nil, zone=nil, addressisp=nil, vpcid=nil, projectid=nil, createtime=nil, chargetype=nil, networkattributes=nil, prepaidattributes=nil, extrainfo=nil, configid=nil, tags=nil, listenerid=nil, protocol=nil, port=nil, locationid=nil, domain=nil, url=nil, targetid=nil, targetaddress=nil, targetport=nil, targetweight=nil, isolation=nil, securitygroup=nil, loadbalancerpasstotarget=nil, targethealth=nil, domains=nil, slavezone=nil, zones=nil, sniswitch=nil, loadbalancerdomain=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @LoadBalancerType = loadbalancertype
          @Status = status
          @Address = address
          @AddressIPv6 = addressipv6
          @AddressIPVersion = addressipversion
          @IPv6Mode = ipv6mode
          @Zone = zone
          @AddressIsp = addressisp
          @VpcId = vpcid
          @ProjectId = projectid
          @CreateTime = createtime
          @ChargeType = chargetype
          @NetworkAttributes = networkattributes
          @PrepaidAttributes = prepaidattributes
          @ExtraInfo = extrainfo
          @ConfigId = configid
          @Tags = tags
          @ListenerId = listenerid
          @Protocol = protocol
          @Port = port
          @LocationId = locationid
          @Domain = domain
          @Url = url
          @TargetId = targetid
          @TargetAddress = targetaddress
          @TargetPort = targetport
          @TargetWeight = targetweight
          @Isolation = isolation
          @SecurityGroup = securitygroup
          @LoadBalancerPassToTarget = loadbalancerpasstotarget
          @TargetHealth = targethealth
          @Domains = domains
          @SlaveZone = slavezone
          @Zones = zones
          @SniSwitch = sniswitch
          @LoadBalancerDomain = loadbalancerdomain
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @LoadBalancerType = params['LoadBalancerType']
          @Status = params['Status']
          @Address = params['Address']
          @AddressIPv6 = params['AddressIPv6']
          @AddressIPVersion = params['AddressIPVersion']
          @IPv6Mode = params['IPv6Mode']
          @Zone = params['Zone']
          @AddressIsp = params['AddressIsp']
          @VpcId = params['VpcId']
          @ProjectId = params['ProjectId']
          @CreateTime = params['CreateTime']
          @ChargeType = params['ChargeType']
          unless params['NetworkAttributes'].nil?
            @NetworkAttributes = InternetAccessible.new
            @NetworkAttributes.deserialize(params['NetworkAttributes'])
          end
          unless params['PrepaidAttributes'].nil?
            @PrepaidAttributes = LBChargePrepaid.new
            @PrepaidAttributes.deserialize(params['PrepaidAttributes'])
          end
          unless params['ExtraInfo'].nil?
            @ExtraInfo = ExtraInfo.new
            @ExtraInfo.deserialize(params['ExtraInfo'])
          end
          @ConfigId = params['ConfigId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @ListenerId = params['ListenerId']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
          @TargetId = params['TargetId']
          @TargetAddress = params['TargetAddress']
          @TargetPort = params['TargetPort']
          @TargetWeight = params['TargetWeight']
          @Isolation = params['Isolation']
          @SecurityGroup = params['SecurityGroup']
          @LoadBalancerPassToTarget = params['LoadBalancerPassToTarget']
          @TargetHealth = params['TargetHealth']
          @Domains = params['Domains']
          @SlaveZone = params['SlaveZone']
          @Zones = params['Zones']
          @SniSwitch = params['SniSwitch']
          @LoadBalancerDomain = params['LoadBalancerDomain']
        end
      end

      # 负载均衡实例的健康检查状态
      class LoadBalancerHealth < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerName: String
        # @param Listeners: 监听器列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Listeners: Array

        attr_accessor :LoadBalancerId, :LoadBalancerName, :Listeners

        def initialize(loadbalancerid=nil, loadbalancername=nil, listeners=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @Listeners = listeners
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          unless params['Listeners'].nil?
            @Listeners = []
            params['Listeners'].each do |i|
              listenerhealth_tmp = ListenerHealth.new
              listenerhealth_tmp.deserialize(i)
              @Listeners << listenerhealth_tmp
            end
          end
        end
      end

      # 负载均衡流量数据。
      class LoadBalancerTraffic < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡ID
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡名字
        # @type LoadBalancerName: String
        # @param Region: 负载均衡所在地域
        # @type Region: String
        # @param Vip: 负载均衡的vip
        # @type Vip: String
        # @param OutBandwidth: 最大出带宽，单位：Mbps
        # @type OutBandwidth: Float
        # @param Domain: CLB域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String

        attr_accessor :LoadBalancerId, :LoadBalancerName, :Region, :Vip, :OutBandwidth, :Domain

        def initialize(loadbalancerid=nil, loadbalancername=nil, region=nil, vip=nil, outbandwidth=nil, domain=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @Region = region
          @Vip = vip
          @OutBandwidth = outbandwidth
          @Domain = domain
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @Region = params['Region']
          @Vip = params['Vip']
          @OutBandwidth = params['OutBandwidth']
          @Domain = params['Domain']
        end
      end

      # ManualRewrite请求参数结构体
      class ManualRewriteRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param SourceListenerId: 源监听器 ID。
        # @type SourceListenerId: String
        # @param TargetListenerId: 目标监听器 ID。
        # @type TargetListenerId: String
        # @param RewriteInfos: 转发规则之间的重定向关系。
        # @type RewriteInfos: Array

        attr_accessor :LoadBalancerId, :SourceListenerId, :TargetListenerId, :RewriteInfos

        def initialize(loadbalancerid=nil, sourcelistenerid=nil, targetlistenerid=nil, rewriteinfos=nil)
          @LoadBalancerId = loadbalancerid
          @SourceListenerId = sourcelistenerid
          @TargetListenerId = targetlistenerid
          @RewriteInfos = rewriteinfos
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @SourceListenerId = params['SourceListenerId']
          @TargetListenerId = params['TargetListenerId']
          unless params['RewriteInfos'].nil?
            @RewriteInfos = []
            params['RewriteInfos'].each do |i|
              rewritelocationmap_tmp = RewriteLocationMap.new
              rewritelocationmap_tmp.deserialize(i)
              @RewriteInfos << rewritelocationmap_tmp
            end
          end
        end
      end

      # ManualRewrite返回参数结构体
      class ManualRewriteResponse < TencentCloud::Common::AbstractModel
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

      # MigrateClassicalLoadBalancers请求参数结构体
      class MigrateClassicalLoadBalancersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 传统型负载均衡ID数组
        # @type LoadBalancerIds: Array
        # @param ExclusiveCluster: 独占集群信息
        # @type ExclusiveCluster: :class:`Tencentcloud::Clb.v20180317.models.ExclusiveCluster`

        attr_accessor :LoadBalancerIds, :ExclusiveCluster

        def initialize(loadbalancerids=nil, exclusivecluster=nil)
          @LoadBalancerIds = loadbalancerids
          @ExclusiveCluster = exclusivecluster
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          unless params['ExclusiveCluster'].nil?
            @ExclusiveCluster = ExclusiveCluster.new
            @ExclusiveCluster.deserialize(params['ExclusiveCluster'])
          end
        end
      end

      # MigrateClassicalLoadBalancers返回参数结构体
      class MigrateClassicalLoadBalancersResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBlockIPList请求参数结构体
      class ModifyBlockIPListRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 负载均衡实例ID
        # @type LoadBalancerIds: Array
        # @param Type: 操作类型，可取：
        # <li> add_customized_field（首次设置header，开启黑名单功能）</li>
        # <li> set_customized_field（修改header）</li>
        # <li> del_customized_field（删除header）</li>
        # <li> add_blocked（添加黑名单）</li>
        # <li> del_blocked（删除黑名单）</li>
        # <li> flush_blocked（清空黑名单）</li>
        # @type Type: String
        # @param ClientIPField: 客户端真实IP存放的header字段名
        # @type ClientIPField: String
        # @param BlockIPList: 封禁IP列表，单次操作数组最大长度支持200000
        # @type BlockIPList: Array
        # @param ExpireTime: 过期时间，单位秒，默认值3600
        # @type ExpireTime: Integer
        # @param AddStrategy: 添加IP的策略，可取：fifo（如果黑名单容量已满，新加入黑名单的IP采用先进先出策略）
        # @type AddStrategy: String

        attr_accessor :LoadBalancerIds, :Type, :ClientIPField, :BlockIPList, :ExpireTime, :AddStrategy

        def initialize(loadbalancerids=nil, type=nil, clientipfield=nil, blockiplist=nil, expiretime=nil, addstrategy=nil)
          @LoadBalancerIds = loadbalancerids
          @Type = type
          @ClientIPField = clientipfield
          @BlockIPList = blockiplist
          @ExpireTime = expiretime
          @AddStrategy = addstrategy
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          @Type = params['Type']
          @ClientIPField = params['ClientIPField']
          @BlockIPList = params['BlockIPList']
          @ExpireTime = params['ExpireTime']
          @AddStrategy = params['AddStrategy']
        end
      end

      # ModifyBlockIPList返回参数结构体
      class ModifyBlockIPListResponse < TencentCloud::Common::AbstractModel
        # @param JodId: 异步任务的ID
        # @type JodId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JodId, :RequestId

        def initialize(jodid=nil, requestid=nil)
          @JodId = jodid
          @RequestId = requestid
        end

        def deserialize(params)
          @JodId = params['JodId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDomainAttributes请求参数结构体
      class ModifyDomainAttributesRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器ID。
        # @type ListenerId: String
        # @param Domain: 域名（必须是已经创建的转发规则下的域名），如果是多域名，可以指定多域名列表中的任意一个。
        # @type Domain: String
        # @param NewDomain: 要修改的新域名。NewDomain和NewDomains只能传一个。
        # @type NewDomain: String
        # @param Certificate: 域名相关的证书信息，注意，仅对启用SNI的监听器适用，不可和MultiCertInfo 同时传入。
        # @type Certificate: :class:`Tencentcloud::Clb.v20180317.models.CertificateInput`
        # @param Http2: 是否开启Http2，注意，只有HTTPS域名才能开启Http2。
        # @type Http2: Boolean
        # @param DefaultServer: 是否设为默认域名，注意，一个监听器下只能设置一个默认域名。
        # @type DefaultServer: Boolean
        # @param Quic: 是否开启Quic，注意，只有HTTPS域名才能开启Quic
        # @type Quic: Boolean
        # @param NewDefaultServerDomain: 监听器下必须配置一个默认域名，若要关闭原默认域名，必须同时指定另一个域名作为新的默认域名，如果新的默认域名是多域名，可以指定多域名列表中的任意一个。
        # @type NewDefaultServerDomain: String
        # @param NewDomains: 要修改的新域名列表。NewDomain和NewDomains只能传一个。
        # @type NewDomains: Array
        # @param MultiCertInfo: 域名相关的证书信息，注意，仅对启用SNI的监听器适用；支持同时传入多本算法类型不同的服务器证书，不可和MultiCertInfo 同时传入。
        # @type MultiCertInfo: :class:`Tencentcloud::Clb.v20180317.models.MultiCertInfo`

        attr_accessor :LoadBalancerId, :ListenerId, :Domain, :NewDomain, :Certificate, :Http2, :DefaultServer, :Quic, :NewDefaultServerDomain, :NewDomains, :MultiCertInfo

        def initialize(loadbalancerid=nil, listenerid=nil, domain=nil, newdomain=nil, certificate=nil, http2=nil, defaultserver=nil, quic=nil, newdefaultserverdomain=nil, newdomains=nil, multicertinfo=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Domain = domain
          @NewDomain = newdomain
          @Certificate = certificate
          @Http2 = http2
          @DefaultServer = defaultserver
          @Quic = quic
          @NewDefaultServerDomain = newdefaultserverdomain
          @NewDomains = newdomains
          @MultiCertInfo = multicertinfo
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @Domain = params['Domain']
          @NewDomain = params['NewDomain']
          unless params['Certificate'].nil?
            @Certificate = CertificateInput.new
            @Certificate.deserialize(params['Certificate'])
          end
          @Http2 = params['Http2']
          @DefaultServer = params['DefaultServer']
          @Quic = params['Quic']
          @NewDefaultServerDomain = params['NewDefaultServerDomain']
          @NewDomains = params['NewDomains']
          unless params['MultiCertInfo'].nil?
            @MultiCertInfo = MultiCertInfo.new
            @MultiCertInfo.deserialize(params['MultiCertInfo'])
          end
        end
      end

      # ModifyDomainAttributes返回参数结构体
      class ModifyDomainAttributesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDomain请求参数结构体
      class ModifyDomainRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器 ID。
        # @type ListenerId: String
        # @param Domain: 监听器下的某个旧域名。
        # @type Domain: String
        # @param NewDomain: 新域名，	长度限制为：1-120。有三种使用格式：非正则表达式格式，通配符格式，正则表达式格式。非正则表达式格式只能使用字母、数字、‘-’、‘.’。通配符格式的使用 ‘*’ 只能在开头或者结尾。正则表达式以'~'开头。
        # @type NewDomain: String

        attr_accessor :LoadBalancerId, :ListenerId, :Domain, :NewDomain

        def initialize(loadbalancerid=nil, listenerid=nil, domain=nil, newdomain=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Domain = domain
          @NewDomain = newdomain
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @Domain = params['Domain']
          @NewDomain = params['NewDomain']
        end
      end

      # ModifyDomain返回参数结构体
      class ModifyDomainResponse < TencentCloud::Common::AbstractModel
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

      # ModifyFunctionTargets请求参数结构体
      class ModifyFunctionTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器ID。
        # @type ListenerId: String
        # @param FunctionTargets: 要修改的后端云函数服务列表。
        # @type FunctionTargets: Array
        # @param LocationId: 转发规则的ID，当绑定机器到七层转发规则时，必须提供此参数或Domain+Url两者之一。
        # @type LocationId: String
        # @param Domain: 目标规则的域名，提供LocationId参数时本参数不生效。
        # @type Domain: String
        # @param Url: 目标规则的URL，提供LocationId参数时本参数不生效。
        # @type Url: String

        attr_accessor :LoadBalancerId, :ListenerId, :FunctionTargets, :LocationId, :Domain, :Url

        def initialize(loadbalancerid=nil, listenerid=nil, functiontargets=nil, locationid=nil, domain=nil, url=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @FunctionTargets = functiontargets
          @LocationId = locationid
          @Domain = domain
          @Url = url
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['FunctionTargets'].nil?
            @FunctionTargets = []
            params['FunctionTargets'].each do |i|
              functiontarget_tmp = FunctionTarget.new
              functiontarget_tmp.deserialize(i)
              @FunctionTargets << functiontarget_tmp
            end
          end
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
        end
      end

      # ModifyFunctionTargets返回参数结构体
      class ModifyFunctionTargetsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyListener请求参数结构体
      class ModifyListenerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器ID。
        # @type ListenerId: String
        # @param ListenerName: 新的监听器名称。
        # @type ListenerName: String
        # @param SessionExpireTime: 会话保持时间，单位：秒。可选值：30~3600，默认 0，表示不开启。此参数仅适用于TCP/UDP监听器。
        # @type SessionExpireTime: Integer
        # @param HealthCheck: 健康检查相关参数，此参数仅适用于TCP/UDP/TCP_SSL/QUIC监听器。
        # @type HealthCheck: :class:`Tencentcloud::Clb.v20180317.models.HealthCheck`
        # @param Certificate: 证书相关信息，此参数仅适用于HTTPS/TCP_SSL/QUIC监听器；此参数和MultiCertInfo不能同时传入。
        # @type Certificate: :class:`Tencentcloud::Clb.v20180317.models.CertificateInput`
        # @param Scheduler: 监听器转发的方式。可选值：WRR、LEAST_CONN
        # 分别表示按权重轮询、最小连接数， 默认为 WRR。
        # @type Scheduler: String
        # @param SniSwitch: 是否开启SNI特性，此参数仅适用于HTTPS监听器。注意：未开启SNI的监听器可以开启SNI；已开启SNI的监听器不能关闭SNI。
        # @type SniSwitch: Integer
        # @param TargetType: 后端目标类型，NODE表示绑定普通节点，TARGETGROUP表示绑定目标组。
        # @type TargetType: String
        # @param KeepaliveEnable: 是否开启长连接，此参数仅适用于HTTP/HTTPS监听器。
        # @type KeepaliveEnable: Integer
        # @param DeregisterTargetRst: 解绑后端目标时，是否发RST给客户端，此参数仅适用于TCP监听器。
        # @type DeregisterTargetRst: Boolean
        # @param SessionType: 会话保持类型。NORMAL表示默认会话保持类型。QUIC_CID表示根据Quic Connection ID做会话保持。QUIC_CID只支持UDP协议。
        # @type SessionType: String
        # @param MultiCertInfo: 证书信息，支持同时传入不同算法类型的多本服务端证书；此参数仅适用于未开启SNI特性的HTTPS监听器。此参数和Certificate不能同时传入。
        # @type MultiCertInfo: :class:`Tencentcloud::Clb.v20180317.models.MultiCertInfo`
        # @param MaxConn: 监听器粒度并发连接数上限，当前仅性能容量型实例且仅TCP/UDP/TCP_SSL/QUIC监听器支持。取值范围：1-实例规格并发连接上限，其中-1表示关闭监听器粒度并发连接数限速。
        # @type MaxConn: Integer
        # @param MaxCps: 监听器粒度新建连接数上限，当前仅性能容量型实例且仅TCP/UDP/TCP_SSL/QUIC监听器支持。取值范围：1-实例规格新建连接上限，其中-1表示关闭监听器粒度新建连接数限速。
        # @type MaxCps: Integer
        # @param IdleConnectTimeout: 空闲连接超时时间，此参数仅适用于TCP监听器，单位：秒。默认值：900，取值范围：共享型实例和独占型实例支持：300～900，性能容量型实例支持：300~2000。如需设置超过2000s，请通过 [工单申请](https://console.cloud.tencent.com/workorder/category),最大可设置到3600s。
        # @type IdleConnectTimeout: Integer

        attr_accessor :LoadBalancerId, :ListenerId, :ListenerName, :SessionExpireTime, :HealthCheck, :Certificate, :Scheduler, :SniSwitch, :TargetType, :KeepaliveEnable, :DeregisterTargetRst, :SessionType, :MultiCertInfo, :MaxConn, :MaxCps, :IdleConnectTimeout

        def initialize(loadbalancerid=nil, listenerid=nil, listenername=nil, sessionexpiretime=nil, healthcheck=nil, certificate=nil, scheduler=nil, sniswitch=nil, targettype=nil, keepaliveenable=nil, deregistertargetrst=nil, sessiontype=nil, multicertinfo=nil, maxconn=nil, maxcps=nil, idleconnecttimeout=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @ListenerName = listenername
          @SessionExpireTime = sessionexpiretime
          @HealthCheck = healthcheck
          @Certificate = certificate
          @Scheduler = scheduler
          @SniSwitch = sniswitch
          @TargetType = targettype
          @KeepaliveEnable = keepaliveenable
          @DeregisterTargetRst = deregistertargetrst
          @SessionType = sessiontype
          @MultiCertInfo = multicertinfo
          @MaxConn = maxconn
          @MaxCps = maxcps
          @IdleConnectTimeout = idleconnecttimeout
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @SessionExpireTime = params['SessionExpireTime']
          unless params['HealthCheck'].nil?
            @HealthCheck = HealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          unless params['Certificate'].nil?
            @Certificate = CertificateInput.new
            @Certificate.deserialize(params['Certificate'])
          end
          @Scheduler = params['Scheduler']
          @SniSwitch = params['SniSwitch']
          @TargetType = params['TargetType']
          @KeepaliveEnable = params['KeepaliveEnable']
          @DeregisterTargetRst = params['DeregisterTargetRst']
          @SessionType = params['SessionType']
          unless params['MultiCertInfo'].nil?
            @MultiCertInfo = MultiCertInfo.new
            @MultiCertInfo.deserialize(params['MultiCertInfo'])
          end
          @MaxConn = params['MaxConn']
          @MaxCps = params['MaxCps']
          @IdleConnectTimeout = params['IdleConnectTimeout']
        end
      end

      # ModifyListener返回参数结构体
      class ModifyListenerResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLoadBalancerAttributes请求参数结构体
      class ModifyLoadBalancerAttributesRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡的唯一ID
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡实例名称
        # @type LoadBalancerName: String
        # @param TargetRegionInfo: 设置负载均衡跨地域绑定1.0的后端服务信息
        # @type TargetRegionInfo: :class:`Tencentcloud::Clb.v20180317.models.TargetRegionInfo`
        # @param InternetChargeInfo: 网络计费相关参数
        # @type InternetChargeInfo: :class:`Tencentcloud::Clb.v20180317.models.InternetAccessible`
        # @param LoadBalancerPassToTarget: Target是否放通来自CLB的流量。开启放通（true）：只验证CLB上的安全组；不开启放通（false）：需同时验证CLB和后端实例上的安全组。
        # @type LoadBalancerPassToTarget: Boolean
        # @param SnatPro: 是否开启跨地域绑定2.0功能
        # @type SnatPro: Boolean
        # @param DeleteProtect: 是否开启删除保护
        # @type DeleteProtect: Boolean
        # @param ModifyClassicDomain: 将负载均衡二级域名由mycloud.com改为tencentclb.com，子域名也会变换。修改后mycloud.com域名将失效。
        # @type ModifyClassicDomain: Boolean

        attr_accessor :LoadBalancerId, :LoadBalancerName, :TargetRegionInfo, :InternetChargeInfo, :LoadBalancerPassToTarget, :SnatPro, :DeleteProtect, :ModifyClassicDomain

        def initialize(loadbalancerid=nil, loadbalancername=nil, targetregioninfo=nil, internetchargeinfo=nil, loadbalancerpasstotarget=nil, snatpro=nil, deleteprotect=nil, modifyclassicdomain=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @TargetRegionInfo = targetregioninfo
          @InternetChargeInfo = internetchargeinfo
          @LoadBalancerPassToTarget = loadbalancerpasstotarget
          @SnatPro = snatpro
          @DeleteProtect = deleteprotect
          @ModifyClassicDomain = modifyclassicdomain
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          unless params['TargetRegionInfo'].nil?
            @TargetRegionInfo = TargetRegionInfo.new
            @TargetRegionInfo.deserialize(params['TargetRegionInfo'])
          end
          unless params['InternetChargeInfo'].nil?
            @InternetChargeInfo = InternetAccessible.new
            @InternetChargeInfo.deserialize(params['InternetChargeInfo'])
          end
          @LoadBalancerPassToTarget = params['LoadBalancerPassToTarget']
          @SnatPro = params['SnatPro']
          @DeleteProtect = params['DeleteProtect']
          @ModifyClassicDomain = params['ModifyClassicDomain']
        end
      end

      # ModifyLoadBalancerAttributes返回参数结构体
      class ModifyLoadBalancerAttributesResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 切换负载均衡计费方式时，可用此参数查询切换任务是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :RequestId

        def initialize(dealname=nil, requestid=nil)
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # ModifyLoadBalancerMixIpTarget请求参数结构体
      class ModifyLoadBalancerMixIpTargetRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 负载均衡实例ID数组。
        # @type LoadBalancerIds: Array
        # @param MixIpTarget: 开启/关闭IPv6FullChain负载均衡7层监听器支持混绑IPv4/IPv6目标特性。
        # @type MixIpTarget: Boolean

        attr_accessor :LoadBalancerIds, :MixIpTarget

        def initialize(loadbalancerids=nil, mixiptarget=nil)
          @LoadBalancerIds = loadbalancerids
          @MixIpTarget = mixiptarget
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          @MixIpTarget = params['MixIpTarget']
        end
      end

      # ModifyLoadBalancerMixIpTarget返回参数结构体
      class ModifyLoadBalancerMixIpTargetResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLoadBalancerSla请求参数结构体
      class ModifyLoadBalancerSlaRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerSla: 负载均衡实例信息。
        # @type LoadBalancerSla: Array

        attr_accessor :LoadBalancerSla

        def initialize(loadbalancersla=nil)
          @LoadBalancerSla = loadbalancersla
        end

        def deserialize(params)
          unless params['LoadBalancerSla'].nil?
            @LoadBalancerSla = []
            params['LoadBalancerSla'].each do |i|
              slaupdateparam_tmp = SlaUpdateParam.new
              slaupdateparam_tmp.deserialize(i)
              @LoadBalancerSla << slaupdateparam_tmp
            end
          end
        end
      end

      # ModifyLoadBalancerSla返回参数结构体
      class ModifyLoadBalancerSlaResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRule请求参数结构体
      class ModifyRuleRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器 ID。
        # @type ListenerId: String
        # @param LocationId: 要修改的转发规则的 ID。
        # @type LocationId: String
        # @param Url: 转发规则的新的转发路径，如不需修改Url，则不需提供此参数。
        # @type Url: String
        # @param HealthCheck: 健康检查信息。
        # @type HealthCheck: :class:`Tencentcloud::Clb.v20180317.models.HealthCheck`
        # @param Scheduler: 规则的请求转发方式，可选值：WRR、LEAST_CONN、IP_HASH
        # 分别表示按权重轮询、最小连接数、按IP哈希， 默认为 WRR。
        # @type Scheduler: String
        # @param SessionExpireTime: 会话保持时间。
        # @type SessionExpireTime: Integer
        # @param ForwardType: 负载均衡实例与后端服务之间的转发协议，默认HTTP，可取值：HTTP、HTTPS、TRPC。
        # @type ForwardType: String
        # @param TrpcCallee: TRPC被调服务器路由，ForwardType为TRPC时必填。目前暂未对外开放。
        # @type TrpcCallee: String
        # @param TrpcFunc: TRPC调用服务接口，ForwardType为TRPC时必填。目前暂未对外开放。
        # @type TrpcFunc: String

        attr_accessor :LoadBalancerId, :ListenerId, :LocationId, :Url, :HealthCheck, :Scheduler, :SessionExpireTime, :ForwardType, :TrpcCallee, :TrpcFunc

        def initialize(loadbalancerid=nil, listenerid=nil, locationid=nil, url=nil, healthcheck=nil, scheduler=nil, sessionexpiretime=nil, forwardtype=nil, trpccallee=nil, trpcfunc=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @LocationId = locationid
          @Url = url
          @HealthCheck = healthcheck
          @Scheduler = scheduler
          @SessionExpireTime = sessionexpiretime
          @ForwardType = forwardtype
          @TrpcCallee = trpccallee
          @TrpcFunc = trpcfunc
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @LocationId = params['LocationId']
          @Url = params['Url']
          unless params['HealthCheck'].nil?
            @HealthCheck = HealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          @Scheduler = params['Scheduler']
          @SessionExpireTime = params['SessionExpireTime']
          @ForwardType = params['ForwardType']
          @TrpcCallee = params['TrpcCallee']
          @TrpcFunc = params['TrpcFunc']
        end
      end

      # ModifyRule返回参数结构体
      class ModifyRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTargetGroupAttribute请求参数结构体
      class ModifyTargetGroupAttributeRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组的ID。
        # @type TargetGroupId: String
        # @param TargetGroupName: 目标组的新名称。
        # @type TargetGroupName: String
        # @param Port: 目标组的新默认端口。
        # @type Port: Integer

        attr_accessor :TargetGroupId, :TargetGroupName, :Port

        def initialize(targetgroupid=nil, targetgroupname=nil, port=nil)
          @TargetGroupId = targetgroupid
          @TargetGroupName = targetgroupname
          @Port = port
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @TargetGroupName = params['TargetGroupName']
          @Port = params['Port']
        end
      end

      # ModifyTargetGroupAttribute返回参数结构体
      class ModifyTargetGroupAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTargetGroupInstancesPort请求参数结构体
      class ModifyTargetGroupInstancesPortRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组ID。
        # @type TargetGroupId: String
        # @param TargetGroupInstances: 待修改端口的服务器数组。
        # @type TargetGroupInstances: Array

        attr_accessor :TargetGroupId, :TargetGroupInstances

        def initialize(targetgroupid=nil, targetgroupinstances=nil)
          @TargetGroupId = targetgroupid
          @TargetGroupInstances = targetgroupinstances
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          unless params['TargetGroupInstances'].nil?
            @TargetGroupInstances = []
            params['TargetGroupInstances'].each do |i|
              targetgroupinstance_tmp = TargetGroupInstance.new
              targetgroupinstance_tmp.deserialize(i)
              @TargetGroupInstances << targetgroupinstance_tmp
            end
          end
        end
      end

      # ModifyTargetGroupInstancesPort返回参数结构体
      class ModifyTargetGroupInstancesPortResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTargetGroupInstancesWeight请求参数结构体
      class ModifyTargetGroupInstancesWeightRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组ID。
        # @type TargetGroupId: String
        # @param TargetGroupInstances: 待修改权重的服务器数组。
        # @type TargetGroupInstances: Array

        attr_accessor :TargetGroupId, :TargetGroupInstances

        def initialize(targetgroupid=nil, targetgroupinstances=nil)
          @TargetGroupId = targetgroupid
          @TargetGroupInstances = targetgroupinstances
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          unless params['TargetGroupInstances'].nil?
            @TargetGroupInstances = []
            params['TargetGroupInstances'].each do |i|
              targetgroupinstance_tmp = TargetGroupInstance.new
              targetgroupinstance_tmp.deserialize(i)
              @TargetGroupInstances << targetgroupinstance_tmp
            end
          end
        end
      end

      # ModifyTargetGroupInstancesWeight返回参数结构体
      class ModifyTargetGroupInstancesWeightResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTargetPort请求参数结构体
      class ModifyTargetPortRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器ID。
        # @type ListenerId: String
        # @param Targets: 要修改端口的后端服务列表。
        # @type Targets: Array
        # @param NewPort: 后端服务绑定到监听器或转发规则的新端口。
        # @type NewPort: Integer
        # @param LocationId: 转发规则的ID，当后端服务绑定到七层转发规则时，必须提供此参数或Domain+Url两者之一。
        # @type LocationId: String
        # @param Domain: 目标规则的域名，提供LocationId参数时本参数不生效。
        # @type Domain: String
        # @param Url: 目标规则的URL，提供LocationId参数时本参数不生效。
        # @type Url: String

        attr_accessor :LoadBalancerId, :ListenerId, :Targets, :NewPort, :LocationId, :Domain, :Url

        def initialize(loadbalancerid=nil, listenerid=nil, targets=nil, newport=nil, locationid=nil, domain=nil, url=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Targets = targets
          @NewPort = newport
          @LocationId = locationid
          @Domain = domain
          @Url = url
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              target_tmp = Target.new
              target_tmp.deserialize(i)
              @Targets << target_tmp
            end
          end
          @NewPort = params['NewPort']
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
        end
      end

      # ModifyTargetPort返回参数结构体
      class ModifyTargetPortResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTargetWeight请求参数结构体
      class ModifyTargetWeightRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器ID。
        # @type ListenerId: String
        # @param LocationId: 转发规则的ID，当绑定机器到七层转发规则时，必须提供此参数或Domain+Url两者之一。
        # @type LocationId: String
        # @param Domain: 目标规则的域名，提供LocationId参数时本参数不生效。
        # @type Domain: String
        # @param Url: 目标规则的URL，提供LocationId参数时本参数不生效。
        # @type Url: String
        # @param Targets: 要修改权重的后端服务列表。
        # @type Targets: Array
        # @param Weight: 后端服务新的转发权重，取值范围：0~100，默认值10。如果设置了 Targets.Weight 参数，则此参数不生效。
        # @type Weight: Integer

        attr_accessor :LoadBalancerId, :ListenerId, :LocationId, :Domain, :Url, :Targets, :Weight

        def initialize(loadbalancerid=nil, listenerid=nil, locationid=nil, domain=nil, url=nil, targets=nil, weight=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @LocationId = locationid
          @Domain = domain
          @Url = url
          @Targets = targets
          @Weight = weight
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              target_tmp = Target.new
              target_tmp.deserialize(i)
              @Targets << target_tmp
            end
          end
          @Weight = params['Weight']
        end
      end

      # ModifyTargetWeight返回参数结构体
      class ModifyTargetWeightResponse < TencentCloud::Common::AbstractModel
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

      # CLB监听器或规则绑定的多证书信息
      class MultiCertInfo < TencentCloud::Common::AbstractModel
        # @param SSLMode: 认证类型，UNIDIRECTIONAL：单向认证，MUTUAL：双向认证
        # @type SSLMode: String
        # @param CertList: 监听器或规则证书列表，单双向认证，多本服务端证书算法类型不能重复;若SSLMode为双向认证，证书列表必须包含一本ca证书。
        # @type CertList: Array

        attr_accessor :SSLMode, :CertList

        def initialize(sslmode=nil, certlist=nil)
          @SSLMode = sslmode
          @CertList = certlist
        end

        def deserialize(params)
          @SSLMode = params['SSLMode']
          unless params['CertList'].nil?
            @CertList = []
            params['CertList'].each do |i|
              certinfo_tmp = CertInfo.new
              certinfo_tmp.deserialize(i)
              @CertList << certinfo_tmp
            end
          end
        end
      end

      # 描述配额信息，所有配额均指当前地域下的配额。
      class Quota < TencentCloud::Common::AbstractModel
        # @param QuotaId: 配额名称，取值范围：
        # <li> TOTAL_OPEN_CLB_QUOTA：用户当前地域下的公网CLB配额 </li>
        # <li> TOTAL_INTERNAL_CLB_QUOTA：用户当前地域下的内网CLB配额 </li>
        # <li> TOTAL_LISTENER_QUOTA：一个CLB下的监听器配额 </li>
        # <li> TOTAL_LISTENER_RULE_QUOTA：一个监听器下的转发规则配额 </li>
        # <li> TOTAL_TARGET_BIND_QUOTA：一条转发规则下可绑定设备的配额 </li>
        # <li> TOTAL_SNAP_IP_QUOTA： 一个CLB实例下跨地域2.0的SNAT IP配额 </li>
        # <li>TOTAL_ISP_CLB_QUOTA：用户当前地域下的三网CLB配额 </li>
        # @type QuotaId: String
        # @param QuotaCurrent: 当前使用数量，为 null 时表示无意义。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuotaCurrent: Integer
        # @param QuotaLimit: 配额数量。
        # @type QuotaLimit: Integer

        attr_accessor :QuotaId, :QuotaCurrent, :QuotaLimit

        def initialize(quotaid=nil, quotacurrent=nil, quotalimit=nil)
          @QuotaId = quotaid
          @QuotaCurrent = quotacurrent
          @QuotaLimit = quotalimit
        end

        def deserialize(params)
          @QuotaId = params['QuotaId']
          @QuotaCurrent = params['QuotaCurrent']
          @QuotaLimit = params['QuotaLimit']
        end
      end

      # RegisterFunctionTargets请求参数结构体
      class RegisterFunctionTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器 ID。
        # @type ListenerId: String
        # @param FunctionTargets: 待绑定的云函数列表。
        # @type FunctionTargets: Array
        # @param LocationId: 目标转发规则的 ID，当将云函数绑定到七层转发规则时，必须输入此参数或 Domain+Url 参数。
        # @type LocationId: String
        # @param Domain: 目标转发规则的域名，若已经输入 LocationId 参数，则本参数不生效。
        # @type Domain: String
        # @param Url: 目标转发规则的 URL，若已经输入 LocationId 参数，则本参数不生效。
        # @type Url: String

        attr_accessor :LoadBalancerId, :ListenerId, :FunctionTargets, :LocationId, :Domain, :Url

        def initialize(loadbalancerid=nil, listenerid=nil, functiontargets=nil, locationid=nil, domain=nil, url=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @FunctionTargets = functiontargets
          @LocationId = locationid
          @Domain = domain
          @Url = url
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['FunctionTargets'].nil?
            @FunctionTargets = []
            params['FunctionTargets'].each do |i|
              functiontarget_tmp = FunctionTarget.new
              functiontarget_tmp.deserialize(i)
              @FunctionTargets << functiontarget_tmp
            end
          end
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
        end
      end

      # RegisterFunctionTargets返回参数结构体
      class RegisterFunctionTargetsResponse < TencentCloud::Common::AbstractModel
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

      # RegisterTargetGroupInstances请求参数结构体
      class RegisterTargetGroupInstancesRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组ID
        # @type TargetGroupId: String
        # @param TargetGroupInstances: 服务器实例数组
        # @type TargetGroupInstances: Array

        attr_accessor :TargetGroupId, :TargetGroupInstances

        def initialize(targetgroupid=nil, targetgroupinstances=nil)
          @TargetGroupId = targetgroupid
          @TargetGroupInstances = targetgroupinstances
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          unless params['TargetGroupInstances'].nil?
            @TargetGroupInstances = []
            params['TargetGroupInstances'].each do |i|
              targetgroupinstance_tmp = TargetGroupInstance.new
              targetgroupinstance_tmp.deserialize(i)
              @TargetGroupInstances << targetgroupinstance_tmp
            end
          end
        end
      end

      # RegisterTargetGroupInstances返回参数结构体
      class RegisterTargetGroupInstancesResponse < TencentCloud::Common::AbstractModel
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

      # RegisterTargets请求参数结构体
      class RegisterTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器ID。
        # @type ListenerId: String
        # @param Targets: 待绑定的后端服务列表，数组长度最大支持20。
        # @type Targets: Array
        # @param LocationId: 转发规则的ID，当绑定后端服务到七层转发规则时，必须提供此参数或Domain+Url两者之一。
        # @type LocationId: String
        # @param Domain: 目标转发规则的域名，提供LocationId参数时本参数不生效。
        # @type Domain: String
        # @param Url: 目标转发规则的URL，提供LocationId参数时本参数不生效。
        # @type Url: String

        attr_accessor :LoadBalancerId, :ListenerId, :Targets, :LocationId, :Domain, :Url

        def initialize(loadbalancerid=nil, listenerid=nil, targets=nil, locationid=nil, domain=nil, url=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Targets = targets
          @LocationId = locationid
          @Domain = domain
          @Url = url
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              target_tmp = Target.new
              target_tmp.deserialize(i)
              @Targets << target_tmp
            end
          end
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
        end
      end

      # RegisterTargets返回参数结构体
      class RegisterTargetsResponse < TencentCloud::Common::AbstractModel
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

      # RegisterTargetsWithClassicalLB请求参数结构体
      class RegisterTargetsWithClassicalLBRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param Targets: 后端服务信息。
        # @type Targets: Array

        attr_accessor :LoadBalancerId, :Targets

        def initialize(loadbalancerid=nil, targets=nil)
          @LoadBalancerId = loadbalancerid
          @Targets = targets
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              classicaltargetinfo_tmp = ClassicalTargetInfo.new
              classicaltargetinfo_tmp.deserialize(i)
              @Targets << classicaltargetinfo_tmp
            end
          end
        end
      end

      # RegisterTargetsWithClassicalLB返回参数结构体
      class RegisterTargetsWithClassicalLBResponse < TencentCloud::Common::AbstractModel
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

      # ReplaceCertForLoadBalancers请求参数结构体
      class ReplaceCertForLoadBalancersRequest < TencentCloud::Common::AbstractModel
        # @param OldCertificateId: 需要被替换的证书的ID，可以是服务端证书或客户端证书
        # @type OldCertificateId: String
        # @param Certificate: 新证书的内容等相关信息
        # @type Certificate: :class:`Tencentcloud::Clb.v20180317.models.CertificateInput`

        attr_accessor :OldCertificateId, :Certificate

        def initialize(oldcertificateid=nil, certificate=nil)
          @OldCertificateId = oldcertificateid
          @Certificate = certificate
        end

        def deserialize(params)
          @OldCertificateId = params['OldCertificateId']
          unless params['Certificate'].nil?
            @Certificate = CertificateInput.new
            @Certificate.deserialize(params['Certificate'])
          end
        end
      end

      # ReplaceCertForLoadBalancers返回参数结构体
      class ReplaceCertForLoadBalancersResponse < TencentCloud::Common::AbstractModel
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

      # 资源详细信息
      class Resource < TencentCloud::Common::AbstractModel
        # @param Type: 运营商内具体资源信息，如"CMCC", "CUCC", "CTCC", "BGP", "INTERNAL"。
        # @type Type: Array
        # @param Isp: 运营商信息，如"CMCC", "CUCC", "CTCC", "BGP", "INTERNAL"。
        # @type Isp: String
        # @param AvailabilitySet: 可用资源。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailabilitySet: Array
        # @param TypeSet: 运营商类型信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeSet: Array

        attr_accessor :Type, :Isp, :AvailabilitySet, :TypeSet

        def initialize(type=nil, isp=nil, availabilityset=nil, typeset=nil)
          @Type = type
          @Isp = isp
          @AvailabilitySet = availabilityset
          @TypeSet = typeset
        end

        def deserialize(params)
          @Type = params['Type']
          @Isp = params['Isp']
          unless params['AvailabilitySet'].nil?
            @AvailabilitySet = []
            params['AvailabilitySet'].each do |i|
              resourceavailability_tmp = ResourceAvailability.new
              resourceavailability_tmp.deserialize(i)
              @AvailabilitySet << resourceavailability_tmp
            end
          end
          unless params['TypeSet'].nil?
            @TypeSet = []
            params['TypeSet'].each do |i|
              typeinfo_tmp = TypeInfo.new
              typeinfo_tmp.deserialize(i)
              @TypeSet << typeinfo_tmp
            end
          end
        end
      end

      # 资源可用性
      class ResourceAvailability < TencentCloud::Common::AbstractModel
        # @param Type: 运营商内具体资源信息，如"CMCC", "CUCC", "CTCC", "BGP"。
        # @type Type: String
        # @param Availability: 资源可用性，"Available"：可用，"Unavailable"：不可用
        # @type Availability: String

        attr_accessor :Type, :Availability

        def initialize(type=nil, availability=nil)
          @Type = type
          @Availability = availability
        end

        def deserialize(params)
          @Type = params['Type']
          @Availability = params['Availability']
        end
      end

      # 转发规则之间的重定向关系
      class RewriteLocationMap < TencentCloud::Common::AbstractModel
        # @param SourceLocationId: 源转发规则ID
        # @type SourceLocationId: String
        # @param TargetLocationId: 重定向目标转发规则的ID
        # @type TargetLocationId: String
        # @param RewriteCode: 重定向状态码，可取值301,302,307
        # @type RewriteCode: Integer
        # @param TakeUrl: 重定向是否携带匹配的url，配置RewriteCode时必填
        # @type TakeUrl: Boolean
        # @param SourceDomain: 源转发的域名，必须是SourceLocationId对应的域名，配置RewriteCode时必填
        # @type SourceDomain: String

        attr_accessor :SourceLocationId, :TargetLocationId, :RewriteCode, :TakeUrl, :SourceDomain

        def initialize(sourcelocationid=nil, targetlocationid=nil, rewritecode=nil, takeurl=nil, sourcedomain=nil)
          @SourceLocationId = sourcelocationid
          @TargetLocationId = targetlocationid
          @RewriteCode = rewritecode
          @TakeUrl = takeurl
          @SourceDomain = sourcedomain
        end

        def deserialize(params)
          @SourceLocationId = params['SourceLocationId']
          @TargetLocationId = params['TargetLocationId']
          @RewriteCode = params['RewriteCode']
          @TakeUrl = params['TakeUrl']
          @SourceDomain = params['SourceDomain']
        end
      end

      # 重定向目标的信息
      class RewriteTarget < TencentCloud::Common::AbstractModel
        # @param TargetListenerId: 重定向目标的监听器ID
        # 注意：此字段可能返回 null，表示无重定向。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetListenerId: String
        # @param TargetLocationId: 重定向目标的转发规则ID
        # 注意：此字段可能返回 null，表示无重定向。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetLocationId: String
        # @param RewriteCode: 重定向状态码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RewriteCode: Integer
        # @param TakeUrl: 重定向是否携带匹配的url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TakeUrl: Boolean
        # @param RewriteType: 重定向类型，Manual: 手动重定向，Auto:  自动重定向
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RewriteType: String

        attr_accessor :TargetListenerId, :TargetLocationId, :RewriteCode, :TakeUrl, :RewriteType

        def initialize(targetlistenerid=nil, targetlocationid=nil, rewritecode=nil, takeurl=nil, rewritetype=nil)
          @TargetListenerId = targetlistenerid
          @TargetLocationId = targetlocationid
          @RewriteCode = rewritecode
          @TakeUrl = takeurl
          @RewriteType = rewritetype
        end

        def deserialize(params)
          @TargetListenerId = params['TargetListenerId']
          @TargetLocationId = params['TargetLocationId']
          @RewriteCode = params['RewriteCode']
          @TakeUrl = params['TakeUrl']
          @RewriteType = params['RewriteType']
        end
      end

      # 修改节点权重的数据类型
      class RsWeightRule < TencentCloud::Common::AbstractModel
        # @param ListenerId: 负载均衡监听器 ID。
        # @type ListenerId: String
        # @param Targets: 要修改权重的后端机器列表。
        # @type Targets: Array
        # @param LocationId: 转发规则的ID，七层规则时需要此参数，4层规则不需要。
        # @type LocationId: String
        # @param Domain: 目标规则的域名，提供LocationId参数时本参数不生效。
        # @type Domain: String
        # @param Url: 目标规则的URL，提供LocationId参数时本参数不生效。
        # @type Url: String
        # @param Weight: 后端服务修改后的转发权重，取值范围：[0，100]。此参数的优先级低于前述[Target](https://cloud.tencent.com/document/api/214/30694#Target)中的Weight参数，即最终的权重值以Target中的Weight参数值为准，仅当Target中的Weight参数为空时，才以RsWeightRule中的Weight参数为准。
        # @type Weight: Integer

        attr_accessor :ListenerId, :Targets, :LocationId, :Domain, :Url, :Weight

        def initialize(listenerid=nil, targets=nil, locationid=nil, domain=nil, url=nil, weight=nil)
          @ListenerId = listenerid
          @Targets = targets
          @LocationId = locationid
          @Domain = domain
          @Url = url
          @Weight = weight
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              target_tmp = Target.new
              target_tmp.deserialize(i)
              @Targets << target_tmp
            end
          end
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
          @Weight = params['Weight']
        end
      end

      # 一条转发规则的健康检查状态
      class RuleHealth < TencentCloud::Common::AbstractModel
        # @param LocationId: 转发规则ID
        # @type LocationId: String
        # @param Domain: 转发规则的域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Url: 转发规则的Url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param Targets: 本规则上绑定的后端服务的健康检查状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Targets: Array

        attr_accessor :LocationId, :Domain, :Url, :Targets

        def initialize(locationid=nil, domain=nil, url=nil, targets=nil)
          @LocationId = locationid
          @Domain = domain
          @Url = url
          @Targets = targets
        end

        def deserialize(params)
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              targethealth_tmp = TargetHealth.new
              targethealth_tmp.deserialize(i)
              @Targets << targethealth_tmp
            end
          end
        end
      end

      # HTTP/HTTPS转发规则（输入）
      class RuleInput < TencentCloud::Common::AbstractModel
        # @param Url: 转发规则的路径。长度限制为：1~200。
        # @type Url: String
        # @param Domain: 转发规则的域名。长度限制为：1~80。Domain和Domains只需要传一个，单域名规则传Domain，多域名规则传Domains。
        # @type Domain: String
        # @param SessionExpireTime: 会话保持时间。设置为0表示关闭会话保持，开启会话保持可取值30~3600，单位：秒。
        # @type SessionExpireTime: Integer
        # @param HealthCheck: 健康检查信息。详情请参见：[健康检查](https://cloud.tencent.com/document/product/214/6097)
        # @type HealthCheck: :class:`Tencentcloud::Clb.v20180317.models.HealthCheck`
        # @param Certificate: 证书信息；此参数和MultiCertInfo不能同时传入。
        # @type Certificate: :class:`Tencentcloud::Clb.v20180317.models.CertificateInput`
        # @param Scheduler: 规则的请求转发方式，可选值：WRR、LEAST_CONN、IP_HASH
        # 分别表示按权重轮询、最小连接数、按IP哈希， 默认为 WRR。
        # @type Scheduler: String
        # @param ForwardType: 负载均衡与后端服务之间的转发协议，目前支持 HTTP/HTTPS/GRPC/TRPC，TRPC暂未对外开放，默认HTTP。
        # @type ForwardType: String
        # @param DefaultServer: 是否将该域名设为默认域名，注意，一个监听器下只能设置一个默认域名。
        # @type DefaultServer: Boolean
        # @param Http2: 是否开启Http2，注意，只有HTTPS域名才能开启Http2。
        # @type Http2: Boolean
        # @param TargetType: 后端目标类型，NODE表示绑定普通节点，TARGETGROUP表示绑定目标组
        # @type TargetType: String
        # @param TrpcCallee: TRPC被调服务器路由，ForwardType为TRPC时必填。目前暂未对外开放。
        # @type TrpcCallee: String
        # @param TrpcFunc: TRPC调用服务接口，ForwardType为TRPC时必填。目前暂未对外开放
        # @type TrpcFunc: String
        # @param Quic: 是否开启QUIC，注意，只有HTTPS域名才能开启QUIC
        # @type Quic: Boolean
        # @param Domains: 转发规则的域名列表。每个域名的长度限制为：1~80。Domain和Domains只需要传一个，单域名规则传Domain，多域名规则传Domains。
        # @type Domains: Array
        # @param MultiCertInfo: 证书信息，支持同时传入不同算法类型的多本服务端证书；此参数和Certificate不能同时传入。
        # @type MultiCertInfo: :class:`Tencentcloud::Clb.v20180317.models.MultiCertInfo`

        attr_accessor :Url, :Domain, :SessionExpireTime, :HealthCheck, :Certificate, :Scheduler, :ForwardType, :DefaultServer, :Http2, :TargetType, :TrpcCallee, :TrpcFunc, :Quic, :Domains, :MultiCertInfo

        def initialize(url=nil, domain=nil, sessionexpiretime=nil, healthcheck=nil, certificate=nil, scheduler=nil, forwardtype=nil, defaultserver=nil, http2=nil, targettype=nil, trpccallee=nil, trpcfunc=nil, quic=nil, domains=nil, multicertinfo=nil)
          @Url = url
          @Domain = domain
          @SessionExpireTime = sessionexpiretime
          @HealthCheck = healthcheck
          @Certificate = certificate
          @Scheduler = scheduler
          @ForwardType = forwardtype
          @DefaultServer = defaultserver
          @Http2 = http2
          @TargetType = targettype
          @TrpcCallee = trpccallee
          @TrpcFunc = trpcfunc
          @Quic = quic
          @Domains = domains
          @MultiCertInfo = multicertinfo
        end

        def deserialize(params)
          @Url = params['Url']
          @Domain = params['Domain']
          @SessionExpireTime = params['SessionExpireTime']
          unless params['HealthCheck'].nil?
            @HealthCheck = HealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          unless params['Certificate'].nil?
            @Certificate = CertificateInput.new
            @Certificate.deserialize(params['Certificate'])
          end
          @Scheduler = params['Scheduler']
          @ForwardType = params['ForwardType']
          @DefaultServer = params['DefaultServer']
          @Http2 = params['Http2']
          @TargetType = params['TargetType']
          @TrpcCallee = params['TrpcCallee']
          @TrpcFunc = params['TrpcFunc']
          @Quic = params['Quic']
          @Domains = params['Domains']
          unless params['MultiCertInfo'].nil?
            @MultiCertInfo = MultiCertInfo.new
            @MultiCertInfo.deserialize(params['MultiCertInfo'])
          end
        end
      end

      # HTTP/HTTPS监听器的转发规则（输出）
      class RuleOutput < TencentCloud::Common::AbstractModel
        # @param LocationId: 转发规则的 ID
        # @type LocationId: String
        # @param Domain: 转发规则的域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Url: 转发规则的路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param SessionExpireTime: 会话保持时间
        # @type SessionExpireTime: Integer
        # @param HealthCheck: 健康检查信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheck: :class:`Tencentcloud::Clb.v20180317.models.HealthCheck`
        # @param Certificate: 证书信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Certificate: :class:`Tencentcloud::Clb.v20180317.models.CertificateOutput`
        # @param Scheduler: 规则的请求转发方式
        # @type Scheduler: String
        # @param ListenerId: 转发规则所属的监听器 ID
        # @type ListenerId: String
        # @param RewriteTarget: 转发规则的重定向目标信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RewriteTarget: :class:`Tencentcloud::Clb.v20180317.models.RewriteTarget`
        # @param HttpGzip: 是否开启gzip
        # @type HttpGzip: Boolean
        # @param BeAutoCreated: 转发规则是否为自动创建
        # @type BeAutoCreated: Boolean
        # @param DefaultServer: 是否作为默认域名
        # @type DefaultServer: Boolean
        # @param Http2: 是否开启Http2
        # @type Http2: Boolean
        # @param ForwardType: 负载均衡与后端服务之间的转发协议
        # @type ForwardType: String
        # @param CreateTime: 转发规则的创建时间
        # @type CreateTime: String
        # @param TargetType: 后端服务器类型
        # @type TargetType: String
        # @param TargetGroup: 绑定的目标组基本信息；当规则绑定目标组时，会返回该字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetGroup: :class:`Tencentcloud::Clb.v20180317.models.BasicTargetGroupInfo`
        # @param WafDomainId: WAF实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WafDomainId: String
        # @param TrpcCallee: TRPC被调服务器路由，ForwardType为TRPC时有效。目前暂未对外开放。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrpcCallee: String
        # @param TrpcFunc: TRPC调用服务接口，ForwardType为TRPC时有效。目前暂未对外开放。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrpcFunc: String
        # @param QuicStatus: QUIC状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuicStatus: String
        # @param Domains: 转发规则的域名列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domains: Array
        # @param TargetGroupList: 绑定的目标组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetGroupList: Array

        attr_accessor :LocationId, :Domain, :Url, :SessionExpireTime, :HealthCheck, :Certificate, :Scheduler, :ListenerId, :RewriteTarget, :HttpGzip, :BeAutoCreated, :DefaultServer, :Http2, :ForwardType, :CreateTime, :TargetType, :TargetGroup, :WafDomainId, :TrpcCallee, :TrpcFunc, :QuicStatus, :Domains, :TargetGroupList

        def initialize(locationid=nil, domain=nil, url=nil, sessionexpiretime=nil, healthcheck=nil, certificate=nil, scheduler=nil, listenerid=nil, rewritetarget=nil, httpgzip=nil, beautocreated=nil, defaultserver=nil, http2=nil, forwardtype=nil, createtime=nil, targettype=nil, targetgroup=nil, wafdomainid=nil, trpccallee=nil, trpcfunc=nil, quicstatus=nil, domains=nil, targetgrouplist=nil)
          @LocationId = locationid
          @Domain = domain
          @Url = url
          @SessionExpireTime = sessionexpiretime
          @HealthCheck = healthcheck
          @Certificate = certificate
          @Scheduler = scheduler
          @ListenerId = listenerid
          @RewriteTarget = rewritetarget
          @HttpGzip = httpgzip
          @BeAutoCreated = beautocreated
          @DefaultServer = defaultserver
          @Http2 = http2
          @ForwardType = forwardtype
          @CreateTime = createtime
          @TargetType = targettype
          @TargetGroup = targetgroup
          @WafDomainId = wafdomainid
          @TrpcCallee = trpccallee
          @TrpcFunc = trpcfunc
          @QuicStatus = quicstatus
          @Domains = domains
          @TargetGroupList = targetgrouplist
        end

        def deserialize(params)
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
          @SessionExpireTime = params['SessionExpireTime']
          unless params['HealthCheck'].nil?
            @HealthCheck = HealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          unless params['Certificate'].nil?
            @Certificate = CertificateOutput.new
            @Certificate.deserialize(params['Certificate'])
          end
          @Scheduler = params['Scheduler']
          @ListenerId = params['ListenerId']
          unless params['RewriteTarget'].nil?
            @RewriteTarget = RewriteTarget.new
            @RewriteTarget.deserialize(params['RewriteTarget'])
          end
          @HttpGzip = params['HttpGzip']
          @BeAutoCreated = params['BeAutoCreated']
          @DefaultServer = params['DefaultServer']
          @Http2 = params['Http2']
          @ForwardType = params['ForwardType']
          @CreateTime = params['CreateTime']
          @TargetType = params['TargetType']
          unless params['TargetGroup'].nil?
            @TargetGroup = BasicTargetGroupInfo.new
            @TargetGroup.deserialize(params['TargetGroup'])
          end
          @WafDomainId = params['WafDomainId']
          @TrpcCallee = params['TrpcCallee']
          @TrpcFunc = params['TrpcFunc']
          @QuicStatus = params['QuicStatus']
          @Domains = params['Domains']
          unless params['TargetGroupList'].nil?
            @TargetGroupList = []
            params['TargetGroupList'].each do |i|
              basictargetgroupinfo_tmp = BasicTargetGroupInfo.new
              basictargetgroupinfo_tmp.deserialize(i)
              @TargetGroupList << basictargetgroupinfo_tmp
            end
          end
        end
      end

      # HTTP/HTTPS监听器下的转发规则绑定的后端服务信息
      class RuleTargets < TencentCloud::Common::AbstractModel
        # @param LocationId: 转发规则的 ID
        # @type LocationId: String
        # @param Domain: 转发规则的域名
        # @type Domain: String
        # @param Url: 转发规则的路径。
        # @type Url: String
        # @param Targets: 后端服务的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Targets: Array
        # @param FunctionTargets: 后端云函数的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FunctionTargets: Array

        attr_accessor :LocationId, :Domain, :Url, :Targets, :FunctionTargets

        def initialize(locationid=nil, domain=nil, url=nil, targets=nil, functiontargets=nil)
          @LocationId = locationid
          @Domain = domain
          @Url = url
          @Targets = targets
          @FunctionTargets = functiontargets
        end

        def deserialize(params)
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              backend_tmp = Backend.new
              backend_tmp.deserialize(i)
              @Targets << backend_tmp
            end
          end
          unless params['FunctionTargets'].nil?
            @FunctionTargets = []
            params['FunctionTargets'].each do |i|
              functiontarget_tmp = FunctionTarget.new
              functiontarget_tmp.deserialize(i)
              @FunctionTargets << functiontarget_tmp
            end
          end
        end
      end

      # 七层规则对象
      class RulesItems < TencentCloud::Common::AbstractModel
        # @param LocationId: 规则id
        # @type LocationId: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Url: uri
        # @type Url: String
        # @param Targets: 绑定的后端对象
        # @type Targets: Array

        attr_accessor :LocationId, :Domain, :Url, :Targets

        def initialize(locationid=nil, domain=nil, url=nil, targets=nil)
          @LocationId = locationid
          @Domain = domain
          @Url = url
          @Targets = targets
        end

        def deserialize(params)
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @Url = params['Url']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              lbrstargets_tmp = LbRsTargets.new
              lbrstargets_tmp.deserialize(i)
              @Targets << lbrstargets_tmp
            end
          end
        end
      end

      # SetCustomizedConfigForLoadBalancer请求参数结构体
      class SetCustomizedConfigForLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param OperationType: 操作类型：'ADD', 'DELETE', 'UPDATE', 'BIND', 'UNBIND'
        # @type OperationType: String
        # @param UconfigId: 除了创建个性化配置外，必传此字段，如：pz-1234abcd
        # @type UconfigId: String
        # @param ConfigContent: 创建个性化配置或修改个性化配置的内容时，必传此字段
        # @type ConfigContent: String
        # @param ConfigName: 创建个性化配置或修改个性化配置的名字时，必传此字段
        # @type ConfigName: String
        # @param LoadBalancerIds: 绑定解绑时，必传此字段
        # @type LoadBalancerIds: Array

        attr_accessor :OperationType, :UconfigId, :ConfigContent, :ConfigName, :LoadBalancerIds

        def initialize(operationtype=nil, uconfigid=nil, configcontent=nil, configname=nil, loadbalancerids=nil)
          @OperationType = operationtype
          @UconfigId = uconfigid
          @ConfigContent = configcontent
          @ConfigName = configname
          @LoadBalancerIds = loadbalancerids
        end

        def deserialize(params)
          @OperationType = params['OperationType']
          @UconfigId = params['UconfigId']
          @ConfigContent = params['ConfigContent']
          @ConfigName = params['ConfigName']
          @LoadBalancerIds = params['LoadBalancerIds']
        end
      end

      # SetCustomizedConfigForLoadBalancer返回参数结构体
      class SetCustomizedConfigForLoadBalancerResponse < TencentCloud::Common::AbstractModel
        # @param ConfigId: 个性化配置ID，如：pz-1234abcd
        # @type ConfigId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConfigId, :RequestId

        def initialize(configid=nil, requestid=nil)
          @ConfigId = configid
          @RequestId = requestid
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @RequestId = params['RequestId']
        end
      end

      # SetLoadBalancerClsLog请求参数结构体
      class SetLoadBalancerClsLogRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID。
        # @type LoadBalancerId: String
        # @param LogSetId: 日志服务(CLS)的日志集 ID。
        # <li>增加和更新日志主题时可调用 [DescribeLogsets](https://cloud.tencent.com/document/product/614/56454) 接口获取日志集 ID。</li>
        # <li>删除日志主题时，此参数填写为null即可。</li>
        # @type LogSetId: String
        # @param LogTopicId: 日志服务(CLS)的日志主题 ID。
        # <li>增加和更新日志主题时可调用 [DescribeTopics](https://cloud.tencent.com/document/product/614/58624) 接口获取日志主题 ID。</li>
        # <li>删除日志主题时，此参数填写为null即可。</li>
        # @type LogTopicId: String
        # @param LogType: 日志类型：
        # <li>ACCESS：访问日志</li>
        # <li>HEALTH：健康检查日志</li>
        # 默认为ACCESS。
        # @type LogType: String

        attr_accessor :LoadBalancerId, :LogSetId, :LogTopicId, :LogType

        def initialize(loadbalancerid=nil, logsetid=nil, logtopicid=nil, logtype=nil)
          @LoadBalancerId = loadbalancerid
          @LogSetId = logsetid
          @LogTopicId = logtopicid
          @LogType = logtype
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LogSetId = params['LogSetId']
          @LogTopicId = params['LogTopicId']
          @LogType = params['LogType']
        end
      end

      # SetLoadBalancerClsLog返回参数结构体
      class SetLoadBalancerClsLogResponse < TencentCloud::Common::AbstractModel
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

      # SetLoadBalancerSecurityGroups请求参数结构体
      class SetLoadBalancerSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID
        # @type LoadBalancerId: String
        # @param SecurityGroups: 安全组ID构成的数组，一个负载均衡实例最多可绑定50个安全组，如果要解绑所有安全组，可不传此参数，或传入空数组。
        # @type SecurityGroups: Array

        attr_accessor :LoadBalancerId, :SecurityGroups

        def initialize(loadbalancerid=nil, securitygroups=nil)
          @LoadBalancerId = loadbalancerid
          @SecurityGroups = securitygroups
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @SecurityGroups = params['SecurityGroups']
        end
      end

      # SetLoadBalancerSecurityGroups返回参数结构体
      class SetLoadBalancerSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # SetSecurityGroupForLoadbalancers请求参数结构体
      class SetSecurityGroupForLoadbalancersRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroup: 安全组ID，如 sg-12345678
        # @type SecurityGroup: String
        # @param OperationType: ADD 绑定安全组；
        # DEL 解绑安全组
        # @type OperationType: String
        # @param LoadBalancerIds: 负载均衡实例ID数组
        # @type LoadBalancerIds: Array

        attr_accessor :SecurityGroup, :OperationType, :LoadBalancerIds

        def initialize(securitygroup=nil, operationtype=nil, loadbalancerids=nil)
          @SecurityGroup = securitygroup
          @OperationType = operationtype
          @LoadBalancerIds = loadbalancerids
        end

        def deserialize(params)
          @SecurityGroup = params['SecurityGroup']
          @OperationType = params['OperationType']
          @LoadBalancerIds = params['LoadBalancerIds']
        end
      end

      # SetSecurityGroupForLoadbalancers返回参数结构体
      class SetSecurityGroupForLoadbalancersResponse < TencentCloud::Common::AbstractModel
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

      # 升级为性能容量型参数
      class SlaUpdateParam < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: lb的字符串ID
        # @type LoadBalancerId: String
        # @param SlaType: 升级为性能容量型，固定取值为SLA。SLA表示超强型1规格。
        # 当您开通了超大型规格的性能容量型时，SLA对应超强型4规格。如需超大型规格的性能容量型，请提交[工单申请](https://console.cloud.tencent.com/workorder/category)。
        # @type SlaType: String

        attr_accessor :LoadBalancerId, :SlaType

        def initialize(loadbalancerid=nil, slatype=nil)
          @LoadBalancerId = loadbalancerid
          @SlaType = slatype
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @SlaType = params['SlaType']
        end
      end

      # SnatIp的信息结构
      class SnatIp < TencentCloud::Common::AbstractModel
        # @param SubnetId: 私有网络子网的唯一性id，如subnet-12345678
        # @type SubnetId: String
        # @param Ip: IP地址，如192.168.0.1
        # @type Ip: String

        attr_accessor :SubnetId, :Ip

        def initialize(subnetid=nil, ip=nil)
          @SubnetId = subnetid
          @Ip = ip
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @Ip = params['Ip']
        end
      end

      # 规格可用性
      class SpecAvailability < TencentCloud::Common::AbstractModel
        # @param SpecType: 规格类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecType: String
        # @param Availability: 规格可用性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Availability: String

        attr_accessor :SpecType, :Availability

        def initialize(spectype=nil, availability=nil)
          @SpecType = spectype
          @Availability = availability
        end

        def deserialize(params)
          @SpecType = params['SpecType']
          @Availability = params['Availability']
        end
      end

      # 负载均衡的标签信息
      class TagInfo < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的键
        # @type TagKey: String
        # @param TagValue: 标签的值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue

        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 转发目标，即绑定在负载均衡上的后端服务
      class Target < TencentCloud::Common::AbstractModel
        # @param Port: 后端服务的监听端口。
        # 注意：绑定CVM（云服务器）或ENI（弹性网卡）时必传此参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param Type: 后端服务的类型，可取：CVM（云服务器）、ENI（弹性网卡）；作为入参时，目前本参数暂不生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param InstanceId: 绑定CVM时需要传入此参数，代表CVM的唯一 ID，可通过 DescribeInstances 接口返回字段中的 InstanceId 字段获取。表示绑定主网卡主IP。
        # 注意：参数 InstanceId、EniIp 有且只能传入其中一个参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param Weight: 后端服务修改后的转发权重，取值范围：[0, 100]，默认为 10。此参数的优先级高于[RsWeightRule](https://cloud.tencent.com/document/api/214/30694#RsWeightRule)中的Weight参数，即最终的权重值以此Weight参数值为准，仅当此Weight参数为空时，才以RsWeightRule中的Weight参数为准。
        # @type Weight: Integer
        # @param EniIp: 绑定IP时需要传入此参数，支持弹性网卡的IP和其他内网IP，如果是弹性网卡则必须先绑定至CVM，然后才能绑定到负载均衡实例。
        # 注意：参数 InstanceId、EniIp 有且只能传入其中一个参数。如果绑定双栈IPV6子机，则必须传该参数。如果是跨地域绑定，则必须传该参数，不支持传InstanceId参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EniIp: String

        attr_accessor :Port, :Type, :InstanceId, :Weight, :EniIp

        def initialize(port=nil, type=nil, instanceid=nil, weight=nil, eniip=nil)
          @Port = port
          @Type = type
          @InstanceId = instanceid
          @Weight = weight
          @EniIp = eniip
        end

        def deserialize(params)
          @Port = params['Port']
          @Type = params['Type']
          @InstanceId = params['InstanceId']
          @Weight = params['Weight']
          @EniIp = params['EniIp']
        end
      end

      # 规则与目标组的关联关系
      class TargetGroupAssociation < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡ID
        # @type LoadBalancerId: String
        # @param TargetGroupId: 目标组ID
        # @type TargetGroupId: String
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param LocationId: 转发规则ID
        # @type LocationId: String

        attr_accessor :LoadBalancerId, :TargetGroupId, :ListenerId, :LocationId

        def initialize(loadbalancerid=nil, targetgroupid=nil, listenerid=nil, locationid=nil)
          @LoadBalancerId = loadbalancerid
          @TargetGroupId = targetgroupid
          @ListenerId = listenerid
          @LocationId = locationid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @TargetGroupId = params['TargetGroupId']
          @ListenerId = params['ListenerId']
          @LocationId = params['LocationId']
        end
      end

      # 目标组绑定的后端服务器
      class TargetGroupBackend < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组ID
        # @type TargetGroupId: String
        # @param Type: 后端服务的类型，可取：CVM、ENI（即将支持）
        # @type Type: String
        # @param InstanceId: 后端服务的唯一 ID
        # @type InstanceId: String
        # @param Port: 后端服务的监听端口
        # @type Port: Integer
        # @param Weight: 后端服务的转发权重，取值范围：[0, 100]，默认为 10。
        # @type Weight: Integer
        # @param PublicIpAddresses: 后端服务的外网 IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIpAddresses: Array
        # @param PrivateIpAddresses: 后端服务的内网 IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIpAddresses: Array
        # @param InstanceName: 后端服务的实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param RegisteredTime: 后端服务被绑定的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegisteredTime: String
        # @param EniId: 弹性网卡唯一ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EniId: String
        # @param ZoneId: 后端服务的可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer

        attr_accessor :TargetGroupId, :Type, :InstanceId, :Port, :Weight, :PublicIpAddresses, :PrivateIpAddresses, :InstanceName, :RegisteredTime, :EniId, :ZoneId

        def initialize(targetgroupid=nil, type=nil, instanceid=nil, port=nil, weight=nil, publicipaddresses=nil, privateipaddresses=nil, instancename=nil, registeredtime=nil, eniid=nil, zoneid=nil)
          @TargetGroupId = targetgroupid
          @Type = type
          @InstanceId = instanceid
          @Port = port
          @Weight = weight
          @PublicIpAddresses = publicipaddresses
          @PrivateIpAddresses = privateipaddresses
          @InstanceName = instancename
          @RegisteredTime = registeredtime
          @EniId = eniid
          @ZoneId = zoneid
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @Type = params['Type']
          @InstanceId = params['InstanceId']
          @Port = params['Port']
          @Weight = params['Weight']
          @PublicIpAddresses = params['PublicIpAddresses']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @InstanceName = params['InstanceName']
          @RegisteredTime = params['RegisteredTime']
          @EniId = params['EniId']
          @ZoneId = params['ZoneId']
        end
      end

      # 目标组信息
      class TargetGroupInfo < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组ID
        # @type TargetGroupId: String
        # @param VpcId: 目标组的vpcid
        # @type VpcId: String
        # @param TargetGroupName: 目标组的名字
        # @type TargetGroupName: String
        # @param Port: 目标组的默认端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param CreatedTime: 目标组的创建时间
        # @type CreatedTime: String
        # @param UpdatedTime: 目标组的修改时间
        # @type UpdatedTime: String
        # @param AssociatedRule: 关联到的规则数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociatedRule: Array

        attr_accessor :TargetGroupId, :VpcId, :TargetGroupName, :Port, :CreatedTime, :UpdatedTime, :AssociatedRule

        def initialize(targetgroupid=nil, vpcid=nil, targetgroupname=nil, port=nil, createdtime=nil, updatedtime=nil, associatedrule=nil)
          @TargetGroupId = targetgroupid
          @VpcId = vpcid
          @TargetGroupName = targetgroupname
          @Port = port
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @AssociatedRule = associatedrule
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @VpcId = params['VpcId']
          @TargetGroupName = params['TargetGroupName']
          @Port = params['Port']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          unless params['AssociatedRule'].nil?
            @AssociatedRule = []
            params['AssociatedRule'].each do |i|
              associationitem_tmp = AssociationItem.new
              associationitem_tmp.deserialize(i)
              @AssociatedRule << associationitem_tmp
            end
          end
        end
      end

      # 目标组实例
      class TargetGroupInstance < TencentCloud::Common::AbstractModel
        # @param BindIP: 目标组实例的内网IP
        # @type BindIP: String
        # @param Port: 目标组实例的端口
        # @type Port: Integer
        # @param Weight: 目标组实例的权重
        # @type Weight: Integer
        # @param NewPort: 目标组实例的新端口
        # @type NewPort: Integer

        attr_accessor :BindIP, :Port, :Weight, :NewPort

        def initialize(bindip=nil, port=nil, weight=nil, newport=nil)
          @BindIP = bindip
          @Port = port
          @Weight = weight
          @NewPort = newport
        end

        def deserialize(params)
          @BindIP = params['BindIP']
          @Port = params['Port']
          @Weight = params['Weight']
          @NewPort = params['NewPort']
        end
      end

      # 描述一个Target的健康信息
      class TargetHealth < TencentCloud::Common::AbstractModel
        # @param IP: Target的内网IP
        # @type IP: String
        # @param Port: Target绑定的端口
        # @type Port: Integer
        # @param HealthStatus: 当前健康状态，true：健康，false：不健康（包括尚未开始探测、探测中、状态异常等几种状态）。只有处于健康状态（且权重大于0），负载均衡才会向其转发流量。
        # @type HealthStatus: Boolean
        # @param TargetId: Target的实例ID，如 ins-12345678
        # @type TargetId: String
        # @param HealthStatusDetail: 当前健康状态的详细信息。如：Alive、Dead、Unknown。Alive状态为健康，Dead状态为异常，Unknown状态包括尚未开始探测、探测中、状态未知。
        # @type HealthStatusDetail: String
        # @param HealthStatusDetial: (**该参数对象即将下线，不推荐使用，请使用HealthStatusDetail获取健康详情**) 当前健康状态的详细信息。如：Alive、Dead、Unknown。Alive状态为健康，Dead状态为异常，Unknown状态包括尚未开始探测、探测中、状态未知。
        # @type HealthStatusDetial: String

        attr_accessor :IP, :Port, :HealthStatus, :TargetId, :HealthStatusDetail, :HealthStatusDetial
        extend Gem::Deprecate
        deprecate :HealthStatusDetial, :none, 2023, 8
        deprecate :HealthStatusDetial=, :none, 2023, 8

        def initialize(ip=nil, port=nil, healthstatus=nil, targetid=nil, healthstatusdetail=nil, healthstatusdetial=nil)
          @IP = ip
          @Port = port
          @HealthStatus = healthstatus
          @TargetId = targetid
          @HealthStatusDetail = healthstatusdetail
          @HealthStatusDetial = healthstatusdetial
        end

        def deserialize(params)
          @IP = params['IP']
          @Port = params['Port']
          @HealthStatus = params['HealthStatus']
          @TargetId = params['TargetId']
          @HealthStatusDetail = params['HealthStatusDetail']
          @HealthStatusDetial = params['HealthStatusDetial']
        end
      end

      # 负载均衡实例所绑定的后端服务的信息，包括所属地域、所属网络。
      class TargetRegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: Target所属地域，如 ap-guangzhou
        # @type Region: String
        # @param VpcId: Target所属网络，私有网络格式如 vpc-abcd1234，如果是基础网络，则为"0"
        # @type VpcId: String

        attr_accessor :Region, :VpcId

        def initialize(region=nil, vpcid=nil)
          @Region = region
          @VpcId = vpcid
        end

        def deserialize(params)
          @Region = params['Region']
          @VpcId = params['VpcId']
        end
      end

      # 运营商类型信息
      class TypeInfo < TencentCloud::Common::AbstractModel
        # @param Type: 运营商类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param SpecAvailabilitySet: 规格可用性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecAvailabilitySet: Array

        attr_accessor :Type, :SpecAvailabilitySet

        def initialize(type=nil, specavailabilityset=nil)
          @Type = type
          @SpecAvailabilitySet = specavailabilityset
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['SpecAvailabilitySet'].nil?
            @SpecAvailabilitySet = []
            params['SpecAvailabilitySet'].each do |i|
              specavailability_tmp = SpecAvailability.new
              specavailability_tmp.deserialize(i)
              @SpecAvailabilitySet << specavailability_tmp
            end
          end
        end
      end

      # 可用区相关信息
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param ZoneId: 可用区数值形式的唯一ID，如：100001
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param Zone: 可用区字符串形式的唯一ID，如：ap-guangzhou-1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param ZoneName: 可用区名称，如：广州一区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneName: String
        # @param ZoneRegion: 可用区所属地域，如：ap-guangzhou
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneRegion: String
        # @param LocalZone: 可用区是否是LocalZone可用区，如：false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalZone: Boolean
        # @param EdgeZone: 可用区是否是EdgeZone可用区，如：false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EdgeZone: Boolean

        attr_accessor :ZoneId, :Zone, :ZoneName, :ZoneRegion, :LocalZone, :EdgeZone

        def initialize(zoneid=nil, zone=nil, zonename=nil, zoneregion=nil, localzone=nil, edgezone=nil)
          @ZoneId = zoneid
          @Zone = zone
          @ZoneName = zonename
          @ZoneRegion = zoneregion
          @LocalZone = localzone
          @EdgeZone = edgezone
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Zone = params['Zone']
          @ZoneName = params['ZoneName']
          @ZoneRegion = params['ZoneRegion']
          @LocalZone = params['LocalZone']
          @EdgeZone = params['EdgeZone']
        end
      end

      # 可用区资源列表
      class ZoneResource < TencentCloud::Common::AbstractModel
        # @param MasterZone: 主可用区，如"ap-guangzhou-1"。
        # @type MasterZone: String
        # @param ResourceSet: 资源列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceSet: Array
        # @param SlaveZone: 备可用区，如"ap-guangzhou-2"，单可用区时，备可用区为null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlaveZone: String
        # @param IPVersion: IP版本，如IPv4，IPv6，IPv6_Nat。
        # @type IPVersion: String
        # @param ZoneRegion: 可用区所属地域，如：ap-guangzhou
        # @type ZoneRegion: String
        # @param LocalZone: 可用区是否是LocalZone可用区，如：false
        # @type LocalZone: Boolean
        # @param ZoneResourceType: 可用区资源的类型，SHARED表示共享资源，EXCLUSIVE表示独占资源。
        # @type ZoneResourceType: String
        # @param EdgeZone: 可用区是否是EdgeZone可用区，如：false
        # @type EdgeZone: Boolean

        attr_accessor :MasterZone, :ResourceSet, :SlaveZone, :IPVersion, :ZoneRegion, :LocalZone, :ZoneResourceType, :EdgeZone

        def initialize(masterzone=nil, resourceset=nil, slavezone=nil, ipversion=nil, zoneregion=nil, localzone=nil, zoneresourcetype=nil, edgezone=nil)
          @MasterZone = masterzone
          @ResourceSet = resourceset
          @SlaveZone = slavezone
          @IPVersion = ipversion
          @ZoneRegion = zoneregion
          @LocalZone = localzone
          @ZoneResourceType = zoneresourcetype
          @EdgeZone = edgezone
        end

        def deserialize(params)
          @MasterZone = params['MasterZone']
          unless params['ResourceSet'].nil?
            @ResourceSet = []
            params['ResourceSet'].each do |i|
              resource_tmp = Resource.new
              resource_tmp.deserialize(i)
              @ResourceSet << resource_tmp
            end
          end
          @SlaveZone = params['SlaveZone']
          @IPVersion = params['IPVersion']
          @ZoneRegion = params['ZoneRegion']
          @LocalZone = params['LocalZone']
          @ZoneResourceType = params['ZoneResourceType']
          @EdgeZone = params['EdgeZone']
        end
      end

    end
  end
end

