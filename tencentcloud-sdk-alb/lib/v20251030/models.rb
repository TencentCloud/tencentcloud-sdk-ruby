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
  module Alb
    module V20251030
      # 访问日志配置。
      class AccessLogConfig < TencentCloud::Common::AbstractModel
        # @param LogSetId: 负载均衡日志服务(CLS)的日志集ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogSetId: String
        # @param LogTopicId: 负载均衡日志服务(CLS)的日志主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogTopicId: String

        attr_accessor :LogSetId, :LogTopicId

        def initialize(logsetid=nil, logtopicid=nil)
          @LogSetId = logsetid
          @LogTopicId = logtopicid
        end

        def deserialize(params)
          @LogSetId = params['LogSetId']
          @LogTopicId = params['LogTopicId']
        end
      end

      # AddTargetsToTargetGroup请求参数结构体
      class AddTargetsToTargetGroupRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组 ID，格式为 lbtg- 后接 8 位字母数字。
        # @type TargetGroupId: String
        # @param Targets: 需要添加至目标组的后端服务列表。单次请求最多支持添加 **50** 个后端服务。
        # @type Targets: Array
        # @param DryRun: 是否预览此次请求。
        # - **false**（默认）：发送普通请求，直接添加后端服务至目标组。
        # - **true**：发送预览请求，检查添加后端服务的参数、格式、业务限制等是否符合要求。
        # @type DryRun: Boolean

        attr_accessor :TargetGroupId, :Targets, :DryRun

        def initialize(targetgroupid=nil, targets=nil, dryrun=nil)
          @TargetGroupId = targetgroupid
          @Targets = targets
          @DryRun = dryrun
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              targettoadd_tmp = TargetToAdd.new
              targettoadd_tmp.deserialize(i)
              @Targets << targettoadd_tmp
            end
          end
          @DryRun = params['DryRun']
        end
      end

      # AddTargetsToTargetGroup返回参数结构体
      class AddTargetsToTargetGroupResponse < TencentCloud::Common::AbstractModel
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

      # AssociateBandwidthPackageWithLoadBalancer请求参数结构体
      class AssociateBandwidthPackageWithLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param BandwidthPackageId: 共享带宽包 ID。
        # @type BandwidthPackageId: String
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param ClientToken: 客户端Token，用于保证请求的幂等性。

        # 从您的客户端生成一个参数值，确保不同请求间该参数值唯一。ClientToken只支持ASCII字符。

        # > 若您未指定，则系统自动使用API请求的**RequestId**作为**ClientToken**标识。每次API请求的**RequestId**不一样。
        # @type ClientToken: String
        # @param DryRun: 是否只预检此次请求。取值：
        # - **true**：发送检查请求，不会将共享带宽包绑定到负载均衡实例。检查项包括是否填写了必需参数、请求格式、业务限制。如果检查不通过，则返回对应错误。如果检查通过，则返回错误码`DryRunOperation`。
        # - **false**（默认值）：发送正常请求，通过检查后返回HTTP 2xx状态码并直接进行操作。
        # @type DryRun: Boolean

        attr_accessor :BandwidthPackageId, :LoadBalancerId, :ClientToken, :DryRun

        def initialize(bandwidthpackageid=nil, loadbalancerid=nil, clienttoken=nil, dryrun=nil)
          @BandwidthPackageId = bandwidthpackageid
          @LoadBalancerId = loadbalancerid
          @ClientToken = clienttoken
          @DryRun = dryrun
        end

        def deserialize(params)
          @BandwidthPackageId = params['BandwidthPackageId']
          @LoadBalancerId = params['LoadBalancerId']
          @ClientToken = params['ClientToken']
          @DryRun = params['DryRun']
        end
      end

      # AssociateBandwidthPackageWithLoadBalancer返回参数结构体
      class AssociateBandwidthPackageWithLoadBalancerResponse < TencentCloud::Common::AbstractModel
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

      # AssociateListenerAdditionalCertificates请求参数结构体
      class AssociateListenerAdditionalCertificatesRequest < TencentCloud::Common::AbstractModel
        # @param CertificateIds: 扩展证书 ID 列表。
        # @type CertificateIds: Array
        # @param ListenerId: 监听器 ID，格式为 lst- 后接 8 位字母数字。
        # @type ListenerId: String
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param ClientToken: 客户端 Token，用于保证请求的幂等性。从您的客户端生成一个参数值，确保不同请求间该参数值唯一。ClientToken 只支持 ASCII 字符。
        # 若您未指定，则系统自动使用 API 请求的 RequestId 作为 ClientToken 标识。每次 API 请求的 RequestId 不一样。
        # @type ClientToken: String
        # @param DryRun: 是否只预检此次请求，取值：
        # true：发送检查请求，不会为HTTPS和QUIC监听器添加扩展证书。检查项包括是否填写了必需参数、请求格式、业务限制。如果检查不通过，则返回对应错误。如果检查通过，则返回错误码DryRunOperation。
        # false（默认值）：发送正常请求，通过检查后返回HTTP2xx状态码并直接进行操作。
        # @type DryRun: String

        attr_accessor :CertificateIds, :ListenerId, :LoadBalancerId, :ClientToken, :DryRun

        def initialize(certificateids=nil, listenerid=nil, loadbalancerid=nil, clienttoken=nil, dryrun=nil)
          @CertificateIds = certificateids
          @ListenerId = listenerid
          @LoadBalancerId = loadbalancerid
          @ClientToken = clienttoken
          @DryRun = dryrun
        end

        def deserialize(params)
          @CertificateIds = params['CertificateIds']
          @ListenerId = params['ListenerId']
          @LoadBalancerId = params['LoadBalancerId']
          @ClientToken = params['ClientToken']
          @DryRun = params['DryRun']
        end
      end

      # AssociateListenerAdditionalCertificates返回参数结构体
      class AssociateListenerAdditionalCertificatesResponse < TencentCloud::Common::AbstractModel
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

      # 证书信息
      class CertificateInfo < TencentCloud::Common::AbstractModel
        # @param AssociatedTime: 证书绑定时间。
        # @type AssociatedTime: String
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param CertificateType: 证书类型。取值：CA或SVR（服务器证书）。
        # @type CertificateType: String
        # @param IsDefault: 是否为监听器默认证书。取值：
        # true：默认证书。
        # false：扩展证书。
        # @type IsDefault: Boolean
        # @param Status: 证书与监听器的绑定状态。取值：Associated（已关联）、Associating（关联中）、Disassociating（解除关联中）、Error（异常）。
        # @type Status: String

        attr_accessor :AssociatedTime, :CertificateId, :CertificateType, :IsDefault, :Status

        def initialize(associatedtime=nil, certificateid=nil, certificatetype=nil, isdefault=nil, status=nil)
          @AssociatedTime = associatedtime
          @CertificateId = certificateid
          @CertificateType = certificatetype
          @IsDefault = isdefault
          @Status = status
        end

        def deserialize(params)
          @AssociatedTime = params['AssociatedTime']
          @CertificateId = params['CertificateId']
          @CertificateType = params['CertificateType']
          @IsDefault = params['IsDefault']
          @Status = params['Status']
        end
      end

      # CreateHealthCheckTemplate请求参数结构体
      class CreateHealthCheckTemplateRequest < TencentCloud::Common::AbstractModel
        # @param DryRun: 是否预览此次请求。
        # - **false**（默认）：发送普通请求，直接修改健康检查模板。
        # - **true**：发送预览请求，检查修改健康检查模板的参数、格式、业务限制等是否符合要求。
        # @type DryRun: Boolean
        # @param HealthCheckCodes: 健康检查状态码。取值：
        # - 当健康检查协议为**HTTP/HTTPS**时：
        # 	- **http_1xx**
        # 	- **http_2xx**（默认值）
        # 	-  **http_3xx**
        # 	-  **http_4xx**
        # 	-  **http_5xx**
        # - 当健康检查协议为**GRPC/GRPCS**时：默认值为**12**，数值范围为**0-99**，输入值可为数值、多个数值或者范围以及相互组合，如：
        # 	- **"20"**
        # 	- **"0-99"**
        # @type HealthCheckCodes: Array
        # @param HealthCheckHealthyThreshold: 判定后端服务健康的阈值，当健康检查连续成功多少次后，后端服务的状态由**不健康**变为**健康**。
        # 取值范围：**2**-**10**。
        # 默认值：**2**。
        # @type HealthCheckHealthyThreshold: Integer
        # @param HealthCheckHost: 健康检查域名。
        # 长度限制为 **1-255** 个字符。
        # 可包含小写字母、数字、短划线（-）和半角句号（.）。

        # > 仅当 **HealthCheckProtocol** 设置为 **HTTP/HTTPS/GRPC/GRPCS** 时，该参数生效。
        # @type HealthCheckHost: String
        # @param HealthCheckHttpVersion: 健康检查 HTTP 协议版本，取值：
        # - **HTTP1.1**（默认）
        # - **HTTP1.0**
        # > 仅当**HealthCheckProtocol**设置为**HTTP** 或 **HTTPS** 时，该参数生效。
        # @type HealthCheckHttpVersion: String
        # @param HealthCheckInterval: 健康检查的时间间隔。单位：秒。 取值范围：**2**-**300**。 默认值：**5**。
        # @type HealthCheckInterval: Integer
        # @param HealthCheckMethod: 健康检查方法，取值： - **GET** - **HEAD**（默认值）
        # > 仅当**HealthCheckProtocol**设置为**HTTP** 或 **HTTPS** 时，该参数生效。
        # @type HealthCheckMethod: String
        # @param HealthCheckPath: 健康检查的转发规则路径。 长度为 **1-80** 个字符，只能使用字母、数字、字符`-/.%?#&=`以及扩展字符`_;~!（)*[]@$^:',+`。 URL 必须以正斜线（/）开头。
        # > 仅当**HealthCheckProtocol**为**HTTP/HTTPS/GRPC/GRPCS**时，转发规则路径参数生效。
        # @type HealthCheckPath: String
        # @param HealthCheckPort: 健康检查访问后端服务器的端口。  取值范围：**0-65535**。  默认值：**0**，表示后端服务器的端口。
        # @type HealthCheckPort: Integer
        # @param HealthCheckProtocol: 健康检查协议。取值：
        # - **HTTP**（默认）：通过发送 HEAD 或 GET 请求模拟浏览器的访问行为来检查服务器应用是否健康。
        # - **HTTPS**：通过发送 HEAD 或 GET 请求模拟浏览器的访问行为来检查服务器应用是否健康。（数据加密，相比 HTTP 更安全。）
        # - **TCP**：通过发送 SYN 握手报文来检测服务器端口是否存活。
        # - **GRPC**：通过发送 POST 或 GET 请求来检查服务器应用是否健康。
        # - **GRPCS**：通过发送 POST 或 GET 请求来检查服务器应用是否健康。
        # @type HealthCheckProtocol: String
        # @param HealthCheckTemplateName: 健康检查模板名称。长度为 **1-255** 个字符，可包含数字、大小写字母、中文、半角句号（.）、下划线（_）和短划线（-）。
        # @type HealthCheckTemplateName: String
        # @param HealthCheckTimeout: 健康检查的响应超时时间。单位：秒。
        # 取值范围：**2**-**60**。
        # 默认值：**2**。
        # @type HealthCheckTimeout: Integer
        # @param HealthCheckUnhealthyThreshold: 判定后端服务不健康的阈值，当健康检查连续失败多少次后，后端服务的状态由**健康**变为**不健康**。
        # 取值范围：**2**-**10**。
        # 默认值：**2**。
        # @type HealthCheckUnhealthyThreshold: Integer
        # @param Tags: 标签。
        # @type Tags: Array

        attr_accessor :DryRun, :HealthCheckCodes, :HealthCheckHealthyThreshold, :HealthCheckHost, :HealthCheckHttpVersion, :HealthCheckInterval, :HealthCheckMethod, :HealthCheckPath, :HealthCheckPort, :HealthCheckProtocol, :HealthCheckTemplateName, :HealthCheckTimeout, :HealthCheckUnhealthyThreshold, :Tags

        def initialize(dryrun=nil, healthcheckcodes=nil, healthcheckhealthythreshold=nil, healthcheckhost=nil, healthcheckhttpversion=nil, healthcheckinterval=nil, healthcheckmethod=nil, healthcheckpath=nil, healthcheckport=nil, healthcheckprotocol=nil, healthchecktemplatename=nil, healthchecktimeout=nil, healthcheckunhealthythreshold=nil, tags=nil)
          @DryRun = dryrun
          @HealthCheckCodes = healthcheckcodes
          @HealthCheckHealthyThreshold = healthcheckhealthythreshold
          @HealthCheckHost = healthcheckhost
          @HealthCheckHttpVersion = healthcheckhttpversion
          @HealthCheckInterval = healthcheckinterval
          @HealthCheckMethod = healthcheckmethod
          @HealthCheckPath = healthcheckpath
          @HealthCheckPort = healthcheckport
          @HealthCheckProtocol = healthcheckprotocol
          @HealthCheckTemplateName = healthchecktemplatename
          @HealthCheckTimeout = healthchecktimeout
          @HealthCheckUnhealthyThreshold = healthcheckunhealthythreshold
          @Tags = tags
        end

        def deserialize(params)
          @DryRun = params['DryRun']
          @HealthCheckCodes = params['HealthCheckCodes']
          @HealthCheckHealthyThreshold = params['HealthCheckHealthyThreshold']
          @HealthCheckHost = params['HealthCheckHost']
          @HealthCheckHttpVersion = params['HealthCheckHttpVersion']
          @HealthCheckInterval = params['HealthCheckInterval']
          @HealthCheckMethod = params['HealthCheckMethod']
          @HealthCheckPath = params['HealthCheckPath']
          @HealthCheckPort = params['HealthCheckPort']
          @HealthCheckProtocol = params['HealthCheckProtocol']
          @HealthCheckTemplateName = params['HealthCheckTemplateName']
          @HealthCheckTimeout = params['HealthCheckTimeout']
          @HealthCheckUnhealthyThreshold = params['HealthCheckUnhealthyThreshold']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
        end
      end

      # CreateHealthCheckTemplate返回参数结构体
      class CreateHealthCheckTemplateResponse < TencentCloud::Common::AbstractModel
        # @param HealthCheckTemplateId: 健康检查模板 ID，格式为 hct- 后接字母数字。所有接口（创建、查询、修改、删除）均使用 hct- 前缀。
        # @type HealthCheckTemplateId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HealthCheckTemplateId, :RequestId

        def initialize(healthchecktemplateid=nil, requestid=nil)
          @HealthCheckTemplateId = healthchecktemplateid
          @RequestId = requestid
        end

        def deserialize(params)
          @HealthCheckTemplateId = params['HealthCheckTemplateId']
          @RequestId = params['RequestId']
        end
      end

      # CreateListener请求参数结构体
      class CreateListenerRequest < TencentCloud::Common::AbstractModel
        # @param DefaultActions: 默认转发规则动作列表。目前监听器仅支持添加 1 个默认转发规则动作。
        # @type DefaultActions: Array
        # @param ListenerPort: 负载均衡实例前端使用的端口。  取值：1~65535。
        # @type ListenerPort: Integer
        # @param ListenerProtocol: 监听协议。  取值：HTTP、HTTPS 或 QUIC。
        # @type ListenerProtocol: String
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param CaCertificateIds: 监听器配置的CA证书ID列表。目前监听器仅支持添加 1 个 CA 证书。
        # 当 CaEnabled 参数取值为 true 时，此参数必填。
        # @type CaCertificateIds: Array
        # @param CaEnabled: 是否开启双向认证。
        # 取值：
        # true：开启。
        # false（默认值）：不开启。
        # @type CaEnabled: Boolean
        # @param CertificateIds: 服务器证书 ID 列表。
        # @type CertificateIds: Array
        # @param ClientToken: 客户端Token，用于保证请求的幂等性。

        # 从您的客户端生成一个参数值，确保不同请求间该参数值唯一。ClientToken只支持ASCII字符。
        # @type ClientToken: String
        # @param GzipEnabled: 是否开启Gzip压缩。取值:true(默认值):是。false:否
        # @type GzipEnabled: Boolean
        # @param Http2Enabled: 是否开启HTTP/2特性。HTTP 协议默认 false，HTTPS 协议默认 true。只有 HTTPS 协议支持此参数。
        # @type Http2Enabled: Boolean
        # @param IdleTimeout: 连接空闲超时时间。单位：秒。
        # 取值范围：1~600。
        # 默认值：15。
        # 如果在超时时间内一直没有访问请求，负载均衡会断开当前连接，在下次请求到来时创建新的连接。
        # @type IdleTimeout: Integer
        # @param ListenerName: 自定义监听名称。  长度为 1~255 个字符，必须是中文和无害字符串中的字符，  可包含中文、字母、数字、短划线（-）、正斜线（/）、半角句号（.）、下划线（_）。
        # @type ListenerName: String
        # @param RequestTimeout: 请求超时时间。单位：秒。
        # 取值：1~600。
        # 默认值：60。
        # 如果在超时时间内后端服务器没有返回响应，负载均衡将放弃等待，并给客户端返回HTTP 504错误码。
        # @type RequestTimeout: Integer
        # @param SecurityPolicyId: 安全策略 ID，格式为 tls- 后接 8 位字母数字。
        # @type SecurityPolicyId: String
        # @param Tags: 标签列表。最大支持20个。
        # @type Tags: Array
        # @param XForwardedForConfig: X-Forwarded-For配置
        # @type XForwardedForConfig: :class:`Tencentcloud::Alb.v20251030.models.XForwardedForConfig`

        attr_accessor :DefaultActions, :ListenerPort, :ListenerProtocol, :LoadBalancerId, :CaCertificateIds, :CaEnabled, :CertificateIds, :ClientToken, :GzipEnabled, :Http2Enabled, :IdleTimeout, :ListenerName, :RequestTimeout, :SecurityPolicyId, :Tags, :XForwardedForConfig

        def initialize(defaultactions=nil, listenerport=nil, listenerprotocol=nil, loadbalancerid=nil, cacertificateids=nil, caenabled=nil, certificateids=nil, clienttoken=nil, gzipenabled=nil, http2enabled=nil, idletimeout=nil, listenername=nil, requesttimeout=nil, securitypolicyid=nil, tags=nil, xforwardedforconfig=nil)
          @DefaultActions = defaultactions
          @ListenerPort = listenerport
          @ListenerProtocol = listenerprotocol
          @LoadBalancerId = loadbalancerid
          @CaCertificateIds = cacertificateids
          @CaEnabled = caenabled
          @CertificateIds = certificateids
          @ClientToken = clienttoken
          @GzipEnabled = gzipenabled
          @Http2Enabled = http2enabled
          @IdleTimeout = idletimeout
          @ListenerName = listenername
          @RequestTimeout = requesttimeout
          @SecurityPolicyId = securitypolicyid
          @Tags = tags
          @XForwardedForConfig = xforwardedforconfig
        end

        def deserialize(params)
          unless params['DefaultActions'].nil?
            @DefaultActions = []
            params['DefaultActions'].each do |i|
              defaultaction_tmp = DefaultAction.new
              defaultaction_tmp.deserialize(i)
              @DefaultActions << defaultaction_tmp
            end
          end
          @ListenerPort = params['ListenerPort']
          @ListenerProtocol = params['ListenerProtocol']
          @LoadBalancerId = params['LoadBalancerId']
          @CaCertificateIds = params['CaCertificateIds']
          @CaEnabled = params['CaEnabled']
          @CertificateIds = params['CertificateIds']
          @ClientToken = params['ClientToken']
          @GzipEnabled = params['GzipEnabled']
          @Http2Enabled = params['Http2Enabled']
          @IdleTimeout = params['IdleTimeout']
          @ListenerName = params['ListenerName']
          @RequestTimeout = params['RequestTimeout']
          @SecurityPolicyId = params['SecurityPolicyId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          unless params['XForwardedForConfig'].nil?
            @XForwardedForConfig = XForwardedForConfig.new
            @XForwardedForConfig.deserialize(params['XForwardedForConfig'])
          end
        end
      end

      # CreateListener返回参数结构体
      class CreateListenerResponse < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器 ID，格式为 lst- 后接 8 位字母数字。
        # @type ListenerId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListenerId, :RequestId

        def initialize(listenerid=nil, requestid=nil)
          @ListenerId = listenerid
          @RequestId = requestid
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @RequestId = params['RequestId']
        end
      end

      # CreateLoadBalancer请求参数结构体
      class CreateLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param AddressType: 应用型负载均衡的地址类型。取值：

        # - **Internet**：负载均衡具有公网IP地址，DNS域名被解析到公网IP，因此可以在公网环境访问。

        # - **Intranet**：负载均衡只有私网IP地址，DNS域名被解析到私网IP，因此只能被负载均衡所在VPC的内网环境访问。
        # @type AddressType: String
        # @param LoadBalancerBillingConfig: 应用型负载均衡实例计费配置。
        # @type LoadBalancerBillingConfig: :class:`Tencentcloud::Alb.v20251030.models.LoadBalancerBillingConfig`
        # @param VpcId: 私有网络 ID。
        # @type VpcId: String
        # @param ZoneMappings: 可用区及私有网络子网映射列表，最多支持添加10个可用区。若当前地域支持2个及以上的可用区，至少需要添加2个可用区。
        # @type ZoneMappings: Array
        # @param AddressIpVersion: IP 地址版本，取值 IPv4 或 IPv6。
        # @type AddressIpVersion: String
        # @param ClientToken: 客户端Token，用于保证请求的幂等性。

        # 从您的客户端生成一个参数值，确保不同请求间该参数值唯一。ClientToken只支持ASCII字符。
        # @type ClientToken: String
        # @param DeleteProtection: 删除保护配置。
        # @type DeleteProtection: :class:`Tencentcloud::Alb.v20251030.models.DeletionProtectionConfig`
        # @param DryRun: 是否只预检此次请求，取值：

        # - **true**：发送检查请求，不会创建应用型负载均衡实例。检查项包括是否填写了必需参数、请求格式和业务限制。如果检查不通过，则返回对应错误。如果检查通过，则返回错误码`DryRunOperation`。

        # - **false**（默认值）：发送正常请求，通过检查后返回HTTP 2xx状态码并直接进行操作。
        # @type DryRun: Boolean
        # @param InternetAddressType: EIP 地址类型，可取值：
        # - **EIP**: 普通弹性公网 IP
        # - **AntiDDoSEIP**: 高防EIP
        # - **AnycastEIP**: 加速 EIP
        # - **HighQualityEIP**: 精品 IP。仅新加坡和中国香港支持精品IP。
        # - **ResidentialEIP**: 原生 IP

        # 不传默认是EIP。
        # @type InternetAddressType: String
        # @param LoadBalancerName: 应用型负载均衡实例名称。长度为1~80个字符，可包含中文、字母、数字、短划线（-）、正斜线（/）、半角句号（.）和下划线（_）。
        # @type LoadBalancerName: String
        # @param Tags: 标签。
        # @type Tags: Array

        attr_accessor :AddressType, :LoadBalancerBillingConfig, :VpcId, :ZoneMappings, :AddressIpVersion, :ClientToken, :DeleteProtection, :DryRun, :InternetAddressType, :LoadBalancerName, :Tags

        def initialize(addresstype=nil, loadbalancerbillingconfig=nil, vpcid=nil, zonemappings=nil, addressipversion=nil, clienttoken=nil, deleteprotection=nil, dryrun=nil, internetaddresstype=nil, loadbalancername=nil, tags=nil)
          @AddressType = addresstype
          @LoadBalancerBillingConfig = loadbalancerbillingconfig
          @VpcId = vpcid
          @ZoneMappings = zonemappings
          @AddressIpVersion = addressipversion
          @ClientToken = clienttoken
          @DeleteProtection = deleteprotection
          @DryRun = dryrun
          @InternetAddressType = internetaddresstype
          @LoadBalancerName = loadbalancername
          @Tags = tags
        end

        def deserialize(params)
          @AddressType = params['AddressType']
          unless params['LoadBalancerBillingConfig'].nil?
            @LoadBalancerBillingConfig = LoadBalancerBillingConfig.new
            @LoadBalancerBillingConfig.deserialize(params['LoadBalancerBillingConfig'])
          end
          @VpcId = params['VpcId']
          unless params['ZoneMappings'].nil?
            @ZoneMappings = []
            params['ZoneMappings'].each do |i|
              zonemappingsitem_tmp = ZoneMappingsItem.new
              zonemappingsitem_tmp.deserialize(i)
              @ZoneMappings << zonemappingsitem_tmp
            end
          end
          @AddressIpVersion = params['AddressIpVersion']
          @ClientToken = params['ClientToken']
          unless params['DeleteProtection'].nil?
            @DeleteProtection = DeletionProtectionConfig.new
            @DeleteProtection.deserialize(params['DeleteProtection'])
          end
          @DryRun = params['DryRun']
          @InternetAddressType = params['InternetAddressType']
          @LoadBalancerName = params['LoadBalancerName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
        end
      end

      # CreateLoadBalancer返回参数结构体
      class CreateLoadBalancerResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancerId, :RequestId

        def initialize(loadbalancerid=nil, requestid=nil)
          @LoadBalancerId = loadbalancerid
          @RequestId = requestid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRules请求参数结构体
      class CreateRulesRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器 ID，格式为 lst- 后接 8 位字母数字。
        # @type ListenerId: String
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param Rules: 转发规则列表。
        # @type Rules: Array
        # @param ClientToken: 客户端Token，用于保证请求的幂等性。  从您的客户端生成一个参数值，确保不同请求间该参数值唯一。ClientToken只支持ASCII字符。  若您未指定，则系统自动使用API请求的RequestId作为ClientToken标识。每次API请求的RequestId不一样。
        # @type ClientToken: String
        # @param DryRun: 是否只预检查此次请求。
        # @type DryRun: Boolean

        attr_accessor :ListenerId, :LoadBalancerId, :Rules, :ClientToken, :DryRun

        def initialize(listenerid=nil, loadbalancerid=nil, rules=nil, clienttoken=nil, dryrun=nil)
          @ListenerId = listenerid
          @LoadBalancerId = loadbalancerid
          @Rules = rules
          @ClientToken = clienttoken
          @DryRun = dryrun
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @LoadBalancerId = params['LoadBalancerId']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ruleinput_tmp = RuleInput.new
              ruleinput_tmp.deserialize(i)
              @Rules << ruleinput_tmp
            end
          end
          @ClientToken = params['ClientToken']
          @DryRun = params['DryRun']
        end
      end

      # CreateRules返回参数结构体
      class CreateRulesResponse < TencentCloud::Common::AbstractModel
        # @param RuleIds: 转发规则 ID 列表，ID 格式为 rule- 后接 8 位字母数字。
        # @type RuleIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleIds, :RequestId

        def initialize(ruleids=nil, requestid=nil)
          @RuleIds = ruleids
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleIds = params['RuleIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateSecurityPolicy请求参数结构体
      class CreateSecurityPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Ciphers: <p>安全策略支持的加密套件列表。加密套件用于协商客户端与服务端之间的加密算法。</p><p><strong>配置说明：</strong></p><ul><li>加密套件的可选范围取决于所选的 TLS 协议版本（TLSVersions 参数）。</li><li>只要加密套件被任意一个已选 TLS 版本支持，即可添加到列表中。</li><li>若 TLSVersions 包含 TLSv1.3：可不指定 TLSv1.3 专属加密套件（系统将自动补全全部 TLSv1.3 套件）；若指定，则必须包含全部 TLSv1.3 专属加密套件，不支持仅指定部分。</li></ul><p><strong>获取可用加密套件：</strong><br>请调用 <a href="https://cloud.tencent.com/document/api/1822/133718">DescribeSecurityPolicyCapabilities</a> 接口查询各 TLS 版本支持的加密套件列表。</p>
        # @type Ciphers: Array
        # @param TLSVersions: <p>安全策略支持的 TLS 协议版本列表。TLS（Transport Layer Security）协议用于保障客户端与负载均衡之间的通信安全。</p><p><strong>可选值：</strong></p><ul><li><strong>TLSv1.0</strong>：兼容性最好，但安全性较低，不推荐在生产环境使用。</li><li><strong>TLSv1.1</strong>：安全性略优于 TLSv1.0，但仍不推荐。</li><li><strong>TLSv1.2</strong>：目前主流的安全协议版本，兼顾安全性与兼容性。</li><li><strong>TLSv1.3</strong>：最新版本，安全性最高，性能更优，推荐优先使用。</li></ul><p><strong>建议：</strong> 生产环境建议至少选择 TLSv1.2，若客户端支持，优先启用 TLSv1.3。</p>
        # @type TLSVersions: Array
        # @param ClientToken: <p>客户端幂等性令牌。</p><p>用于保证请求的幂等性，防止因网络超时或客户端重试导致的重复创建。建议使用 UUID 作为令牌值。相同的 ClientToken 在有效期内重复请求时，服务端将返回相同的结果。</p>
        # @type ClientToken: String
        # @param DryRun: <p>是否仅执行预检请求。取值：</p><ul><li><strong>true</strong>：仅执行预检请求，不实际创建资源。预检请求将验证参数格式、权限及资源配额等，帮助您在正式操作前发现潜在问题。</li><li><strong>false</strong>（默认）：执行正常请求，通过预检后将直接创建安全策略。</li></ul>
        # @type DryRun: Boolean
        # @param SecurityPolicyName: <p>安全策略名称。用于标识和区分不同的安全策略。</p><p><strong>命名规则：</strong></p><ul><li>长度为 2~128 个字符。</li><li>必须以英文字母或中文开头。</li><li>可包含英文字母、中文、数字、半角句号（.）、下划线（_）和短划线（-）。</li></ul><p><strong>建议：</strong> 使用具有业务含义的名称，例如 &quot;prod-high-security&quot; 或 &quot;测试环境策略&quot;。</p>
        # @type SecurityPolicyName: String
        # @param Tags: <p>安全策略的标签列表。标签用于对资源进行分类和管理，便于按业务、环境、部门等维度筛选和组织资源。</p><p>每个标签由键值对（Key-Value）组成，同一资源下标签键不可重复。</p>
        # @type Tags: Array

        attr_accessor :Ciphers, :TLSVersions, :ClientToken, :DryRun, :SecurityPolicyName, :Tags

        def initialize(ciphers=nil, tlsversions=nil, clienttoken=nil, dryrun=nil, securitypolicyname=nil, tags=nil)
          @Ciphers = ciphers
          @TLSVersions = tlsversions
          @ClientToken = clienttoken
          @DryRun = dryrun
          @SecurityPolicyName = securitypolicyname
          @Tags = tags
        end

        def deserialize(params)
          @Ciphers = params['Ciphers']
          @TLSVersions = params['TLSVersions']
          @ClientToken = params['ClientToken']
          @DryRun = params['DryRun']
          @SecurityPolicyName = params['SecurityPolicyName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
        end
      end

      # CreateSecurityPolicy返回参数结构体
      class CreateSecurityPolicyResponse < TencentCloud::Common::AbstractModel
        # @param SecurityPolicyId: <p>安全策略 ID，格式为 tls- 后接 8 位字母数字。</p>
        # @type SecurityPolicyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityPolicyId, :RequestId

        def initialize(securitypolicyid=nil, requestid=nil)
          @SecurityPolicyId = securitypolicyid
          @RequestId = requestid
        end

        def deserialize(params)
          @SecurityPolicyId = params['SecurityPolicyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTargetGroup请求参数结构体
      class CreateTargetGroupRequest < TencentCloud::Common::AbstractModel
        # @param TargetType: <p>目标组类型。取值：</p><ul><li><strong>Instance</strong>（默认）：Cvm服务器类型或者Eni网卡类型。</li></ul>
        # @type TargetType: String
        # @param VpcId: <p>私有网络 ID。</p>
        # @type VpcId: String
        # @param DryRun: <p>是否预览此次请求。</p><ul><li><strong>false</strong>（默认）：发送普通请求，直接创建目标组。</li><li><strong>true</strong>：发送预览请求，检查创建目标组的参数、格式、业务限制等是否符合要求。</li></ul>
        # @type DryRun: Boolean
        # @param HealthCheckConfig: <p>健康检查配置。</p>
        # @type HealthCheckConfig: :class:`Tencentcloud::Alb.v20251030.models.HealthCheckConfig`
        # @param KeepaliveEnabled: <p>是否开启长连接。</p>
        # @type KeepaliveEnabled: Boolean
        # @param Protocol: <p>后端服务协议类型。取值：</p><ul><li><strong>HTTP</strong>（默认）：支持绑定HTTP、HTTPS的监听器</li><li><strong>HTTPS</strong>：支持绑定HTTPS类型的监听器</li><li><strong>GRPC</strong>：支持绑定HTTPS类型的监听器</li><li><strong>GRPCS</strong>：支持绑定HTTPS类型的监听器</li></ul>
        # @type Protocol: String
        # @param SchedulerAlgorithm: <p>调度算法。取值：</p><ul><li><strong>wrr</strong>（默认）：加权轮询，按照权重选择后端服务器，权重越高的服务器被轮询到的概率越高。</li><li><strong>wlc</strong>：加权最小连接数，当不同后端服务器权重值相同时，当前连接数越小的后端服务器被轮询到的概率越高。</li></ul>
        # @type SchedulerAlgorithm: String
        # @param StickySessionConfig: <p>会话保持配置。</p>
        # @type StickySessionConfig: :class:`Tencentcloud::Alb.v20251030.models.StickySessionConfig`
        # @param Tags: <p>标签。</p>
        # @type Tags: Array
        # @param TargetGroupName: <p>目标组名称。默认为目标组ID。长度为 <strong>1-255</strong> 个字符，可包含数字、大小写字母、中文、半角句号（.）、下划线（_）和短划线（-）。</p>
        # @type TargetGroupName: String

        attr_accessor :TargetType, :VpcId, :DryRun, :HealthCheckConfig, :KeepaliveEnabled, :Protocol, :SchedulerAlgorithm, :StickySessionConfig, :Tags, :TargetGroupName

        def initialize(targettype=nil, vpcid=nil, dryrun=nil, healthcheckconfig=nil, keepaliveenabled=nil, protocol=nil, scheduleralgorithm=nil, stickysessionconfig=nil, tags=nil, targetgroupname=nil)
          @TargetType = targettype
          @VpcId = vpcid
          @DryRun = dryrun
          @HealthCheckConfig = healthcheckconfig
          @KeepaliveEnabled = keepaliveenabled
          @Protocol = protocol
          @SchedulerAlgorithm = scheduleralgorithm
          @StickySessionConfig = stickysessionconfig
          @Tags = tags
          @TargetGroupName = targetgroupname
        end

        def deserialize(params)
          @TargetType = params['TargetType']
          @VpcId = params['VpcId']
          @DryRun = params['DryRun']
          unless params['HealthCheckConfig'].nil?
            @HealthCheckConfig = HealthCheckConfig.new
            @HealthCheckConfig.deserialize(params['HealthCheckConfig'])
          end
          @KeepaliveEnabled = params['KeepaliveEnabled']
          @Protocol = params['Protocol']
          @SchedulerAlgorithm = params['SchedulerAlgorithm']
          unless params['StickySessionConfig'].nil?
            @StickySessionConfig = StickySessionConfig.new
            @StickySessionConfig.deserialize(params['StickySessionConfig'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @TargetGroupName = params['TargetGroupName']
        end
      end

      # CreateTargetGroup返回参数结构体
      class CreateTargetGroupResponse < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: <p>目标组 ID，格式为 lbtg- 后接 8 位字母数字。</p>
        # @type TargetGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 监听器默认规则动作
      class DefaultAction < TencentCloud::Common::AbstractModel
        # @param TargetGroupConfig: 转发目标组配置。创建监听器时转发动作中的目标组配置仅支持单个目标组。
        # @type TargetGroupConfig: :class:`Tencentcloud::Alb.v20251030.models.TargetGroupConfig`
        # @param Type: 转发动作类型。创建监听器时，默认转发动作类型仅支持转发至目标组。
        # @type Type: String

        attr_accessor :TargetGroupConfig, :Type

        def initialize(targetgroupconfig=nil, type=nil)
          @TargetGroupConfig = targetgroupconfig
          @Type = type
        end

        def deserialize(params)
          unless params['TargetGroupConfig'].nil?
            @TargetGroupConfig = TargetGroupConfig.new
            @TargetGroupConfig.deserialize(params['TargetGroupConfig'])
          end
          @Type = params['Type']
        end
      end

      # DeleteHealthCheckTemplates请求参数结构体
      class DeleteHealthCheckTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param HealthCheckTemplateIds: 健康检查模板 ID 列表，ID 格式为 hct- 后接字母数字。
        # @type HealthCheckTemplateIds: Array
        # @param DryRun: 是否预览此次请求。
        # - **false**（默认）：发送普通请求，直接删除模板。
        # - **true**：发送预览请求，检查删除模板的参数、格式、业务限制等是否符合要求。
        # @type DryRun: Boolean

        attr_accessor :HealthCheckTemplateIds, :DryRun

        def initialize(healthchecktemplateids=nil, dryrun=nil)
          @HealthCheckTemplateIds = healthchecktemplateids
          @DryRun = dryrun
        end

        def deserialize(params)
          @HealthCheckTemplateIds = params['HealthCheckTemplateIds']
          @DryRun = params['DryRun']
        end
      end

      # DeleteHealthCheckTemplates返回参数结构体
      class DeleteHealthCheckTemplatesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteListener请求参数结构体
      class DeleteListenerRequest < TencentCloud::Common::AbstractModel
        # @param ListenerIds: 监听器 ID 列表，ID 格式为 lst- 后接 8 位字母数字。
        # @type ListenerIds: Array
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param ClientToken: 客户端Token，用于保证请求的幂等性。

        # 从您的客户端生成一个参数值，确保不同请求间该参数值唯一。ClientToken只支持ASCII字符。
        # @type ClientToken: String

        attr_accessor :ListenerIds, :LoadBalancerId, :ClientToken

        def initialize(listenerids=nil, loadbalancerid=nil, clienttoken=nil)
          @ListenerIds = listenerids
          @LoadBalancerId = loadbalancerid
          @ClientToken = clienttoken
        end

        def deserialize(params)
          @ListenerIds = params['ListenerIds']
          @LoadBalancerId = params['LoadBalancerId']
          @ClientToken = params['ClientToken']
        end
      end

      # DeleteListener返回参数结构体
      class DeleteListenerResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLoadBalancers请求参数结构体
      class DeleteLoadBalancersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 负载均衡实例 ID 列表，ID 格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerIds: Array
        # @param ClientToken: 客户端Token，用于保证请求的幂等性。

        # 从您的客户端生成一个参数值，确保不同请求间该参数值唯一。ClientToken只支持ASCII字符。

        # @type ClientToken: String
        # @param DryRun: 是否只预检此次请求，取值：

        # - **true**：发送检查请求，不会删除应用型负载均衡实例。检查项包括是否填写了必需参数、请求格式和业务限制。如果检查不通过，则返回对应错误。如果检查通过，则返回错误码`DryRunOperation`。

        # - **false**（默认值）：发送正常请求，通过检查后返回`HTTP 2xx`状态码并直接进行操作。
        # @type DryRun: Boolean

        attr_accessor :LoadBalancerIds, :ClientToken, :DryRun

        def initialize(loadbalancerids=nil, clienttoken=nil, dryrun=nil)
          @LoadBalancerIds = loadbalancerids
          @ClientToken = clienttoken
          @DryRun = dryrun
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          @ClientToken = params['ClientToken']
          @DryRun = params['DryRun']
        end
      end

      # DeleteLoadBalancers返回参数结构体
      class DeleteLoadBalancersResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRules请求参数结构体
      class DeleteRulesRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器 ID，格式为 lst- 后接 8 位字母数字。
        # @type ListenerId: String
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param RuleIds: 转发规则 ID 列表，ID 格式为 rule- 后接 8 位字母数字。
        # @type RuleIds: Array
        # @param DryRun: 是否只预检查此次请求。
        # @type DryRun: Boolean

        attr_accessor :ListenerId, :LoadBalancerId, :RuleIds, :DryRun

        def initialize(listenerid=nil, loadbalancerid=nil, ruleids=nil, dryrun=nil)
          @ListenerId = listenerid
          @LoadBalancerId = loadbalancerid
          @RuleIds = ruleids
          @DryRun = dryrun
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @LoadBalancerId = params['LoadBalancerId']
          @RuleIds = params['RuleIds']
          @DryRun = params['DryRun']
        end
      end

      # DeleteRules返回参数结构体
      class DeleteRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSecurityPolicy请求参数结构体
      class DeleteSecurityPolicyRequest < TencentCloud::Common::AbstractModel
        # @param SecurityPolicyIds: 安全策略 ID 列表，ID 格式为 tls- 后接 8 位字母数字。
        # @type SecurityPolicyIds: Array
        # @param DryRun: 是否仅执行预检请求。取值：
        # - **true**：仅执行预检请求，不实际删除资源。预检请求将验证参数格式、权限及安全策略是否被引用等，帮助您在正式操作前发现潜在问题。
        # - **false**（默认）：执行正常请求，通过预检后将直接删除安全策略。
        # @type DryRun: Boolean

        attr_accessor :SecurityPolicyIds, :DryRun

        def initialize(securitypolicyids=nil, dryrun=nil)
          @SecurityPolicyIds = securitypolicyids
          @DryRun = dryrun
        end

        def deserialize(params)
          @SecurityPolicyIds = params['SecurityPolicyIds']
          @DryRun = params['DryRun']
        end
      end

      # DeleteSecurityPolicy返回参数结构体
      class DeleteSecurityPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTargetGroups请求参数结构体
      class DeleteTargetGroupsRequest < TencentCloud::Common::AbstractModel
        # @param DryRun: 是否预览此次请求。
        # - **false**（默认）：发送普通请求，直接删除目标组。
        # - **true**：发送预览请求，检查删除目标组的参数、格式、业务限制等是否符合要求。
        # @type DryRun: Boolean
        # @param TargetGroupIds: 目标组 ID 列表，ID 格式为 lbtg- 后接 8 位字母数字。
        # @type TargetGroupIds: Array

        attr_accessor :DryRun, :TargetGroupIds

        def initialize(dryrun=nil, targetgroupids=nil)
          @DryRun = dryrun
          @TargetGroupIds = targetgroupids
        end

        def deserialize(params)
          @DryRun = params['DryRun']
          @TargetGroupIds = params['TargetGroupIds']
        end
      end

      # DeleteTargetGroups返回参数结构体
      class DeleteTargetGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 删除保护状态信息。
      class DeletionProtectionConfig < TencentCloud::Common::AbstractModel
        # @param DeletionProtectionEnabled: 是否开启删除保护。开启后，可防止实例被意外删除。
        # - true：开启删除保护
        # - false：关闭删除保护
        # @type DeletionProtectionEnabled: Boolean
        # @param Reason: 开启修改保护的原因说明。
        # 长度为 1~255 个字符，必须是中文和无害字符串中的字符， 可包含中文、字母、数字、短划线（-）、正斜线（/）、半角句号（.）、下划线（_）。
        # @type Reason: String

        attr_accessor :DeletionProtectionEnabled, :Reason

        def initialize(deletionprotectionenabled=nil, reason=nil)
          @DeletionProtectionEnabled = deletionprotectionenabled
          @Reason = reason
        end

        def deserialize(params)
          @DeletionProtectionEnabled = params['DeletionProtectionEnabled']
          @Reason = params['Reason']
        end
      end

      # DescribeAsyncJobs请求参数结构体
      class DescribeAsyncJobsRequest < TencentCloud::Common::AbstractModel
        # @param MaxResults: 分批次查询时每次显示的条目数。取值范围：1~100，默认值：20。
        # @type MaxResults: Integer
        # @param NextToken: 是否拥有下一次查询的令牌（Token）。取值：  第一次查询和没有下一次查询时，均无需填写。 如果有下一次查询，取值为上一次 API 调用返回的 NextToken 值。
        # @type NextToken: String
        # @param RequestIds: 异步请求返回的RequestId列表
        # @type RequestIds: Array

        attr_accessor :MaxResults, :NextToken, :RequestIds

        def initialize(maxresults=nil, nexttoken=nil, requestids=nil)
          @MaxResults = maxresults
          @NextToken = nexttoken
          @RequestIds = requestids
        end

        def deserialize(params)
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
          @RequestIds = params['RequestIds']
        end
      end

      # DescribeAsyncJobs返回参数结构体
      class DescribeAsyncJobsResponse < TencentCloud::Common::AbstractModel
        # @param Jobs: 任务列表。
        # @type Jobs: Array
        # @param MaxResults: 分批次查询时每次显示的条目数。
        # @type MaxResults: Integer
        # @param NextToken: 是否拥有下一次查询的令牌（Token）。取值：  如果 NextToken 为空表示没有下一次查询。 如果 NextToken 有返回值，该取值表示下一次查询开始的令牌。
        # @type NextToken: String
        # @param TotalCount: 列表条目数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Jobs, :MaxResults, :NextToken, :TotalCount, :RequestId

        def initialize(jobs=nil, maxresults=nil, nexttoken=nil, totalcount=nil, requestid=nil)
          @Jobs = jobs
          @MaxResults = maxresults
          @NextToken = nexttoken
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Jobs'].nil?
            @Jobs = []
            params['Jobs'].each do |i|
              job_tmp = Job.new
              job_tmp.deserialize(i)
              @Jobs << job_tmp
            end
          end
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHealthCheckTemplates请求参数结构体
      class DescribeHealthCheckTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <p>过滤器。通过指定的过滤条件来查询健康检查模板，支持：</p><ul><li>Name的值为<strong>HealthCheckTemplateName</strong>。通过名称来筛选健康检查模板。<strong>Values</strong>的值为模板名称列表。</li><li>Name的值为<strong>HealthCheckProtocol</strong>。通过健康检查协议来筛选健康检查模板。<strong>Values</strong>的值为协议列表。</li><li>通过标签方式筛选。</li></ul>
        # @type Filters: Array
        # @param HealthCheckTemplateIds: <p>健康检查模板 ID 列表，ID 格式为 hct- 后接字母数字。</p>
        # @type HealthCheckTemplateIds: Array
        # @param MaxResults: <p>返回列表的数量，默认为20，最大值为100。</p>
        # @type MaxResults: String
        # @param NextToken: <p>下一次查询的Token值。第一次查询和没有下一次查询时，无需填写。<br>如果有下一次查询，取值为上一次 API 调用返回的 NextToken 值。</p>
        # @type NextToken: String

        attr_accessor :Filters, :HealthCheckTemplateIds, :MaxResults, :NextToken

        def initialize(filters=nil, healthchecktemplateids=nil, maxresults=nil, nexttoken=nil)
          @Filters = filters
          @HealthCheckTemplateIds = healthchecktemplateids
          @MaxResults = maxresults
          @NextToken = nexttoken
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
          @HealthCheckTemplateIds = params['HealthCheckTemplateIds']
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
        end
      end

      # DescribeHealthCheckTemplates返回参数结构体
      class DescribeHealthCheckTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param HealthCheckTemplates: <p>健康检查模板列表。</p>
        # @type HealthCheckTemplates: Array
        # @param NextToken: <p>下一次查询的Token值，如果当前是最后一页，返回为空。</p>
        # @type NextToken: String
        # @param TotalCount: <p>经过筛选后查询到的健康检查模板总数。</p>
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HealthCheckTemplates, :NextToken, :TotalCount, :RequestId

        def initialize(healthchecktemplates=nil, nexttoken=nil, totalcount=nil, requestid=nil)
          @HealthCheckTemplates = healthchecktemplates
          @NextToken = nexttoken
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HealthCheckTemplates'].nil?
            @HealthCheckTemplates = []
            params['HealthCheckTemplates'].each do |i|
              healthchecktemplate_tmp = HealthCheckTemplate.new
              healthchecktemplate_tmp.deserialize(i)
              @HealthCheckTemplates << healthchecktemplate_tmp
            end
          end
          @NextToken = params['NextToken']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeListenerCertificates请求参数结构体
      class DescribeListenerCertificatesRequest < TencentCloud::Common::AbstractModel
        # @param CertificateType: 证书类型。取值：CA或SVR（服务器证书）。
        # @type CertificateType: String
        # @param ListenerId: 监听器 ID，格式为 lst- 后接 8 位字母数字。
        # @type ListenerId: String
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param MaxResults: 本次读取的最大数据记录数量。取值: 1~100。默认值: 20。
        # @type MaxResults: Integer
        # @param NextToken: 下一次查询的令牌（Token）。取值：
        # 第一次查询和没有下一次查询时，均无需填写。
        # 如果有下一次查询，取值为上一次 API 调用返回的 NextToken 值。
        # @type NextToken: String

        attr_accessor :CertificateType, :ListenerId, :LoadBalancerId, :MaxResults, :NextToken

        def initialize(certificatetype=nil, listenerid=nil, loadbalancerid=nil, maxresults=nil, nexttoken=nil)
          @CertificateType = certificatetype
          @ListenerId = listenerid
          @LoadBalancerId = loadbalancerid
          @MaxResults = maxresults
          @NextToken = nexttoken
        end

        def deserialize(params)
          @CertificateType = params['CertificateType']
          @ListenerId = params['ListenerId']
          @LoadBalancerId = params['LoadBalancerId']
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
        end
      end

      # DescribeListenerCertificates返回参数结构体
      class DescribeListenerCertificatesResponse < TencentCloud::Common::AbstractModel
        # @param Certificates: 监听器绑定的证书信息列表。
        # @type Certificates: Array
        # @param MaxResults: 本次读取的最大数据记录数量。
        # @type MaxResults: Integer
        # @param NextToken: 下一次查询的令牌。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextToken: String
        # @param TotalCount: 监听器绑定的证书总量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Certificates, :MaxResults, :NextToken, :TotalCount, :RequestId

        def initialize(certificates=nil, maxresults=nil, nexttoken=nil, totalcount=nil, requestid=nil)
          @Certificates = certificates
          @MaxResults = maxresults
          @NextToken = nexttoken
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Certificates'].nil?
            @Certificates = []
            params['Certificates'].each do |i|
              certificateinfo_tmp = CertificateInfo.new
              certificateinfo_tmp.deserialize(i)
              @Certificates << certificateinfo_tmp
            end
          end
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeListenerDetail请求参数结构体
      class DescribeListenerDetailRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器 ID，格式为 lst- 后接 8 位字母数字。
        # @type ListenerId: String
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String

        attr_accessor :ListenerId, :LoadBalancerId

        def initialize(listenerid=nil, loadbalancerid=nil)
          @ListenerId = listenerid
          @LoadBalancerId = loadbalancerid
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @LoadBalancerId = params['LoadBalancerId']
        end
      end

      # DescribeListenerDetail返回参数结构体
      class DescribeListenerDetailResponse < TencentCloud::Common::AbstractModel
        # @param CaCertificateIds: 监听器绑定的CA证书ID列表。
        # @type CaCertificateIds: Array
        # @param CaEnabled: 是否开启双向认证。
        # @type CaEnabled: Boolean
        # @param CertificateIds: 服务器证书 ID 列表。
        # @type CertificateIds: Array
        # @param CreateTime: 监听器实例的创建时间。格式：ISO 8601（例如 2025-01-01T08:30:00+08:00）
        # @type CreateTime: String
        # @param DefaultActions: 规则动作列表。
        # @type DefaultActions: Array
        # @param GzipEnabled: 是否启用 Gzip 压缩。
        # @type GzipEnabled: Boolean
        # @param Http2Enabled: 是否开启HTTP/2特性。
        # @type Http2Enabled: Boolean
        # @param IdleTimeout: 指定连接空闲超时时间。单位：秒。
        # @type IdleTimeout: Integer
        # @param ListenerId: 监听器 ID，格式为 lst- 后接 8 位字母数字。
        # @type ListenerId: String
        # @param ListenerName: 自定义监听名称。
        # @type ListenerName: String
        # @param ListenerPort: 负载均衡实例前端使用的端口。
        # @type ListenerPort: Integer
        # @param ListenerProtocol: 监听协议。
        # @type ListenerProtocol: String
        # @param ListenerStatus: 监听器状态。取值:=

        # - **Active**: 运行中。
        # - **Provisioning**：创建中。
        # - **Configuring**：变配中。
        # - **ProvisionFailed**：创建失败
        # @type ListenerStatus: String
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param ModifyTime: 监听器实例的最后变更时间。格式：ISO 8601（例如 2025-01-01T08:30:00+08:00）
        # @type ModifyTime: String
        # @param RequestTimeout: 请求超时时间。单位：秒。
        # @type RequestTimeout: Integer
        # @param SecurityPolicyId: 安全策略 ID，格式为 tls- 后接 8 位字母数字。
        # @type SecurityPolicyId: String
        # @param Tags: 标签。
        # @type Tags: Array
        # @param XForwardedForConfig: XForwardedFor配置。
        # @type XForwardedForConfig: :class:`Tencentcloud::Alb.v20251030.models.XForwardedForConfig`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CaCertificateIds, :CaEnabled, :CertificateIds, :CreateTime, :DefaultActions, :GzipEnabled, :Http2Enabled, :IdleTimeout, :ListenerId, :ListenerName, :ListenerPort, :ListenerProtocol, :ListenerStatus, :LoadBalancerId, :ModifyTime, :RequestTimeout, :SecurityPolicyId, :Tags, :XForwardedForConfig, :RequestId

        def initialize(cacertificateids=nil, caenabled=nil, certificateids=nil, createtime=nil, defaultactions=nil, gzipenabled=nil, http2enabled=nil, idletimeout=nil, listenerid=nil, listenername=nil, listenerport=nil, listenerprotocol=nil, listenerstatus=nil, loadbalancerid=nil, modifytime=nil, requesttimeout=nil, securitypolicyid=nil, tags=nil, xforwardedforconfig=nil, requestid=nil)
          @CaCertificateIds = cacertificateids
          @CaEnabled = caenabled
          @CertificateIds = certificateids
          @CreateTime = createtime
          @DefaultActions = defaultactions
          @GzipEnabled = gzipenabled
          @Http2Enabled = http2enabled
          @IdleTimeout = idletimeout
          @ListenerId = listenerid
          @ListenerName = listenername
          @ListenerPort = listenerport
          @ListenerProtocol = listenerprotocol
          @ListenerStatus = listenerstatus
          @LoadBalancerId = loadbalancerid
          @ModifyTime = modifytime
          @RequestTimeout = requesttimeout
          @SecurityPolicyId = securitypolicyid
          @Tags = tags
          @XForwardedForConfig = xforwardedforconfig
          @RequestId = requestid
        end

        def deserialize(params)
          @CaCertificateIds = params['CaCertificateIds']
          @CaEnabled = params['CaEnabled']
          @CertificateIds = params['CertificateIds']
          @CreateTime = params['CreateTime']
          unless params['DefaultActions'].nil?
            @DefaultActions = []
            params['DefaultActions'].each do |i|
              defaultaction_tmp = DefaultAction.new
              defaultaction_tmp.deserialize(i)
              @DefaultActions << defaultaction_tmp
            end
          end
          @GzipEnabled = params['GzipEnabled']
          @Http2Enabled = params['Http2Enabled']
          @IdleTimeout = params['IdleTimeout']
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @ListenerPort = params['ListenerPort']
          @ListenerProtocol = params['ListenerProtocol']
          @ListenerStatus = params['ListenerStatus']
          @LoadBalancerId = params['LoadBalancerId']
          @ModifyTime = params['ModifyTime']
          @RequestTimeout = params['RequestTimeout']
          @SecurityPolicyId = params['SecurityPolicyId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          unless params['XForwardedForConfig'].nil?
            @XForwardedForConfig = XForwardedForConfig.new
            @XForwardedForConfig.deserialize(params['XForwardedForConfig'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListenerHealthStatus请求参数结构体
      class DescribeListenerHealthStatusRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器 ID，格式为 lst- 后接 8 位字母数字。
        # @type ListenerId: String
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param IncludeRule: 是否包含转发规则的健康检查结果。为false时只返回默认转发规则的健康状态，为true时返回全部规则的健康状态(包含默认规则)。
        # 取值：
        # true：是。
        # false（默认值）：否。
        # @type IncludeRule: Boolean
        # @param MaxResults: 本次读取的最大数据记录数量。
        # 取值: 1~100。
        # 默认值: 20
        # @type MaxResults: Integer
        # @param NextToken: 下一页查询的Token值。第一次查询时，无需填写。
        # @type NextToken: String

        attr_accessor :ListenerId, :LoadBalancerId, :IncludeRule, :MaxResults, :NextToken

        def initialize(listenerid=nil, loadbalancerid=nil, includerule=nil, maxresults=nil, nexttoken=nil)
          @ListenerId = listenerid
          @LoadBalancerId = loadbalancerid
          @IncludeRule = includerule
          @MaxResults = maxresults
          @NextToken = nexttoken
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @LoadBalancerId = params['LoadBalancerId']
          @IncludeRule = params['IncludeRule']
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
        end
      end

      # DescribeListenerHealthStatus返回参数结构体
      class DescribeListenerHealthStatusResponse < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器 ID，格式为 lst- 后接 8 位字母数字。
        # @type ListenerId: String
        # @param ListenerPort: 监听器端口。
        # @type ListenerPort: String
        # @param ListenerProtocol: 监听器协议。
        # @type ListenerProtocol: String
        # @param NextToken: 下一次查询的令牌（Token）。为空时表示这是最后一页。
        # @type NextToken: String
        # @param RuleHealthStatusInfos: 转发规则健康状态。
        # @type RuleHealthStatusInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListenerId, :ListenerPort, :ListenerProtocol, :NextToken, :RuleHealthStatusInfos, :RequestId

        def initialize(listenerid=nil, listenerport=nil, listenerprotocol=nil, nexttoken=nil, rulehealthstatusinfos=nil, requestid=nil)
          @ListenerId = listenerid
          @ListenerPort = listenerport
          @ListenerProtocol = listenerprotocol
          @NextToken = nexttoken
          @RuleHealthStatusInfos = rulehealthstatusinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerPort = params['ListenerPort']
          @ListenerProtocol = params['ListenerProtocol']
          @NextToken = params['NextToken']
          unless params['RuleHealthStatusInfos'].nil?
            @RuleHealthStatusInfos = []
            params['RuleHealthStatusInfos'].each do |i|
              rulehealthstatusinfo_tmp = RuleHealthStatusInfo.new
              rulehealthstatusinfo_tmp.deserialize(i)
              @RuleHealthStatusInfos << rulehealthstatusinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListeners请求参数结构体
      class DescribeListenersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param Filters: 过滤条件列表，最大支持20个。支持以下几个字段
        # - **Protocol**: 协议类型
        # - **Tags**: 标签
        # @type Filters: Array
        # @param ListenerIds: 监听器 ID 列表，ID 格式为 lst- 后接 8 位字母数字。
        # @type ListenerIds: Array
        # @param MaxResults: 本次读取的最大数据记录数量。
        # 取值: 1~100。
        # 默认值: 20
        # @type MaxResults: Integer
        # @param NextToken: 下一次查询的令牌（Token）。为空时查询第一页。
        # @type NextToken: String

        attr_accessor :LoadBalancerId, :Filters, :ListenerIds, :MaxResults, :NextToken

        def initialize(loadbalancerid=nil, filters=nil, listenerids=nil, maxresults=nil, nexttoken=nil)
          @LoadBalancerId = loadbalancerid
          @Filters = filters
          @ListenerIds = listenerids
          @MaxResults = maxresults
          @NextToken = nexttoken
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @ListenerIds = params['ListenerIds']
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
        end
      end

      # DescribeListeners返回参数结构体
      class DescribeListenersResponse < TencentCloud::Common::AbstractModel
        # @param Listeners: 监听器信息。
        # @type Listeners: Array
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param MaxResults: 本次读取的最大数据记录数量。
        # @type MaxResults: Integer
        # @param NextToken: 下一次查询的令牌。
        # @type NextToken: String
        # @param TotalCount: 总条目数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Listeners, :LoadBalancerId, :MaxResults, :NextToken, :TotalCount, :RequestId

        def initialize(listeners=nil, loadbalancerid=nil, maxresults=nil, nexttoken=nil, totalcount=nil, requestid=nil)
          @Listeners = listeners
          @LoadBalancerId = loadbalancerid
          @MaxResults = maxresults
          @NextToken = nexttoken
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Listeners'].nil?
            @Listeners = []
            params['Listeners'].each do |i|
              listeneroutput_tmp = ListenerOutput.new
              listeneroutput_tmp.deserialize(i)
              @Listeners << listeneroutput_tmp
            end
          end
          @LoadBalancerId = params['LoadBalancerId']
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancerDetail请求参数结构体
      class DescribeLoadBalancerDetailRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String

        attr_accessor :LoadBalancerId

        def initialize(loadbalancerid=nil)
          @LoadBalancerId = loadbalancerid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
        end
      end

      # DescribeLoadBalancerDetail返回参数结构体
      class DescribeLoadBalancerDetailResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancerDetail: 负载均衡详细信息
        # @type LoadBalancerDetail: :class:`Tencentcloud::Alb.v20251030.models.LoadBalancerDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancerDetail, :RequestId

        def initialize(loadbalancerdetail=nil, requestid=nil)
          @LoadBalancerDetail = loadbalancerdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoadBalancerDetail'].nil?
            @LoadBalancerDetail = LoadBalancerDetail.new
            @LoadBalancerDetail.deserialize(params['LoadBalancerDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancers请求参数结构体
      class DescribeLoadBalancersRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 查询过滤条件，支持以下几个字段
        # - **LoadBalancerId**: 负载均衡实例 ID
        # - **LoadBalancerName**: 负载均衡名称
        # - **LoadBalancerStatus**: 负载均衡状态
        # - **VpcId**: 私有网络 ID
        # - **tag:tag-key**：按标签键值对筛选，tag-key 请替换为实际的标签键。例如 `tag:env` 表示按标签键 `env` 筛选。
        # - **AddressType**: 网络类型
        #     - **Intranet**: 内网
        #     - **Internet**: 公网
        # - **AddressIpVersion**:
        #     - **IPv4**: IPv4 地址
        #     - **IPv6** IPv6 地址
        # @type Filters: Array
        # @param MaxResults: 分批次查询时每次显示的条目数。取值范围：**1**~**100**，默认值：**20**。

        # @type MaxResults: Integer
        # @param NextToken: 是否拥有下一次查询的令牌（Token）。取值：
        # - 第一次查询和没有下一次查询时，均无需填写。
        # - 如果有下一次查询，取值为上一次API调用返回的**NextToken**值。
        # @type NextToken: String

        attr_accessor :Filters, :MaxResults, :NextToken

        def initialize(filters=nil, maxresults=nil, nexttoken=nil)
          @Filters = filters
          @MaxResults = maxresults
          @NextToken = nexttoken
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
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
        end
      end

      # DescribeLoadBalancers返回参数结构体
      class DescribeLoadBalancersResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancers: 应用型负载均衡实例列表。
        # @type LoadBalancers: Array
        # @param MaxResults: 分批次查询时每次显示的条目数。

        # @type MaxResults: Integer
        # @param NextToken: 是否拥有下一次查询的令牌（Token）。取值：
        # - 如果**NextToken**为空表示没有下一次查询。
        # - 如果**NextToken**有返回值，该取值表示下一次查询开始的令牌。
        # @type NextToken: String
        # @param TotalCount: 列表条目数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancers, :MaxResults, :NextToken, :TotalCount, :RequestId

        def initialize(loadbalancers=nil, maxresults=nil, nexttoken=nil, totalcount=nil, requestid=nil)
          @LoadBalancers = loadbalancers
          @MaxResults = maxresults
          @NextToken = nexttoken
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoadBalancers'].nil?
            @LoadBalancers = []
            params['LoadBalancers'].each do |i|
              loadbalancer_tmp = LoadBalancer.new
              loadbalancer_tmp.deserialize(i)
              @LoadBalancers << loadbalancer_tmp
            end
          end
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeQuota请求参数结构体
      class DescribeQuotaRequest < TencentCloud::Common::AbstractModel
        # @param QuotaTypes: 配额类型列表。支持同时传入多个配额类型。查询资源级配额时，可配合 ResourceIds 传入对应资源ID；如需返回已使用量和可用量，可在 DisplayFields 中传入 used、available。

        # 枚举说明：
        # - alb_quota_loadbalancers_num：每个地域可创建的 ALB 实例数。
        # - alb_quota_targetgroups_num：每个地域可创建的 ALB 目标组数。
        # - alb_quota_loadbalancer_listeners_num：每个 ALB 实例可创建的监听器数，ResourceIds 填写 ALB 实例 ID。
        # - alb_quota_loadbalancer_rules_num：每个 ALB 实例可添加的转发规则数，不计入默认规则，ResourceIds 填写 ALB 实例 ID。
        # - alb_quota_loadbalancer_certificates_num：每个 ALB 实例可添加的扩展证书数，不计入默认证书，ResourceIds 填写 ALB 实例 ID。
        # - alb_quota_loadbalancer_targetgroup_num：每个 ALB 实例可绑定的目标组数，ResourceIds 填写 ALB 实例 ID。
        # - alb_quota_loadbalancer_servers_num：每个 ALB 实例可添加的后端服务器数，ResourceIds 填写 ALB 实例 ID。
        # - alb_quota_server_added_num：单个后端服务器 IP 可被添加到 ALB 后端目标组的次数。
        # - alb_quota_targetgroup_attached_num：每个目标组可被 ALB 转发规则关联的次数，ResourceIds 填写目标组 ID。
        # - alb_quota_targetgroup_targets_num：每个目标组支持的后端服务器数，适用于 IP 和端口类型后端，ResourceIds 填写目标组 ID。
        # - alb_quota_targetgroup_targets_num_scf：每个目标组支持的 SCF 函数后端数，ResourceIds 填写目标组 ID。
        # - alb_quota_max_request_timeout：创建监听器时可配置的连接请求最大超时时间。
        # - alb_quota_max_idle_timeout：创建监听器时可配置的连接空闲最大超时时间。
        # - alb_quota_listener_certificates_num：单个监听器可添加的证书数量，ResourceIds 填写监听器 ID。
        # - alb_quota_rule_targetgroups_num：单条转发规则可绑定的目标组数量。
        # - alb_quota_rule_conditions_num：单条转发规则可添加的匹配条件条目数。
        # - alb_quota_rule_wildcards_num：单条转发规则可添加的包含通配符的匹配条目数。
        # - alb_quota_rule_actions_num：单条转发规则可添加的动作条目数。
        # - alb_quota_cipher_template_listeners_num：单个加密套件模板可关联的监听器数量。
        # - alb_quota_healthcheck_templates_num：每个地域可创建的健康检查模板数。
        # - alb_quota_securitygroup_templates_num：单个 ALB 实例支持绑定的安全组数量。
        # - alb_quota_securitygroup_rules_per_sg_num：单个 ALB 实例中单个安全组支持的规则条目数。
        # - alb_quota_security_policies_num：每个地域可创建的自定义安全策略数。
        # @type QuotaTypes: Array
        # @param DisplayFields: 显示字段列表，用于控制是否额外返回用量信息。支持 used、available：used 表示返回当前已使用量，available 表示返回当前剩余可用量。QuotaType 和 Limit 总是返回；ResourceId 会在请求传入 ResourceIds 时返回。
        # @type DisplayFields: Array
        # @param ResourceIds: 资源ID列表。用于查询具体资源维度的配额和用量；不传时查询账号或地域维度的默认配额配置。资源ID的类型由 QuotaTypes 决定，例如 ALB 实例级配额填写 ALB 实例 ID，监听器级配额填写监听器 ID，目标组级配额填写目标组 ID。
        # @type ResourceIds: Array

        attr_accessor :QuotaTypes, :DisplayFields, :ResourceIds

        def initialize(quotatypes=nil, displayfields=nil, resourceids=nil)
          @QuotaTypes = quotatypes
          @DisplayFields = displayfields
          @ResourceIds = resourceids
        end

        def deserialize(params)
          @QuotaTypes = params['QuotaTypes']
          @DisplayFields = params['DisplayFields']
          @ResourceIds = params['ResourceIds']
        end
      end

      # DescribeQuota返回参数结构体
      class DescribeQuotaResponse < TencentCloud::Common::AbstractModel
        # @param Quotas: 配额列表。每个元素表示一个配额类型的查询结果；当请求传入 ResourceIds 时，每个元素表示一个配额类型和一个资源ID组合的查询结果。
        # @type Quotas: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Quotas, :RequestId

        def initialize(quotas=nil, requestid=nil)
          @Quotas = quotas
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Quotas'].nil?
            @Quotas = []
            params['Quotas'].each do |i|
              quotainfo_tmp = QuotaInfo.new
              quotainfo_tmp.deserialize(i)
              @Quotas << quotainfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRules请求参数结构体
      class DescribeRulesRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器 ID，格式为 lst- 后接 8 位字母数字。
        # @type ListenerId: String
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param Filters: 支持的过滤条件如下：
        # @type Filters: Array
        # @param MaxResults: 返回列表的数量，默认为20，最大值为100。
        # @type MaxResults: Integer
        # @param NextToken: 下一次查询的Token值。第一次查询和没有下一次查询时，无需填写。如果有下一次查询，取值为上一次 API 调用返回的 NextToken 值。
        # @type NextToken: String
        # @param RuleIds: 转发规则 ID 列表，ID 格式为 rule- 后接 8 位字母数字。
        # @type RuleIds: Array

        attr_accessor :ListenerId, :LoadBalancerId, :Filters, :MaxResults, :NextToken, :RuleIds

        def initialize(listenerid=nil, loadbalancerid=nil, filters=nil, maxresults=nil, nexttoken=nil, ruleids=nil)
          @ListenerId = listenerid
          @LoadBalancerId = loadbalancerid
          @Filters = filters
          @MaxResults = maxresults
          @NextToken = nexttoken
          @RuleIds = ruleids
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @LoadBalancerId = params['LoadBalancerId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
          @RuleIds = params['RuleIds']
        end
      end

      # DescribeRules返回参数结构体
      class DescribeRulesResponse < TencentCloud::Common::AbstractModel
        # @param NextToken: 下一次查询的Token值，如果当前是最后一页，返回为空。
        # @type NextToken: String
        # @param Rules: 转发规则列表。
        # @type Rules: Array
        # @param TotalCount: 总的转发规则个数（根据监听器ID、规则ID等条件过滤后）。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextToken, :Rules, :TotalCount, :RequestId

        def initialize(nexttoken=nil, rules=nil, totalcount=nil, requestid=nil)
          @NextToken = nexttoken
          @Rules = rules
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @NextToken = params['NextToken']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ruleoutput_tmp = RuleOutput.new
              ruleoutput_tmp.deserialize(i)
              @Rules << ruleoutput_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityPolicies请求参数结构体
      class DescribeSecurityPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件列表，用于筛选符合指定条件的安全策略。多个过滤条件之间为"与"关系。

        # **支持的过滤条件：**
        # - **SecurityPolicyNames**：按安全策略名称筛选，支持模糊匹配。
        # - **tag:tag-key**：按标签键值对筛选，tag-key 请替换为实际的标签键。例如 `tag:env` 表示按标签键 `env` 筛选。

        # **说明：** 每个过滤条件最多支持 10 个取值。
        # @type Filters: Array
        # @param MaxResults: 单次请求返回的最大结果数。用于分页查询，与 NextToken 配合使用。

        # **取值范围：** 1~100。

        # **默认值：** 20。
        # @type MaxResults: Integer
        # @param NextToken: 分页查询的起始令牌。用于获取下一页结果数据。

        # **使用说明：**
        # - 首次查询时无需设置此参数。
        # - 如果上一次查询返回了 NextToken，表示还有更多数据，请将该值传入此参数以获取下一页。
        # - 若上一次查询未返回 NextToken 或返回为空，表示已是最后一页。
        # @type NextToken: String
        # @param SecurityPolicyIds: 安全策略 ID 列表，ID 格式为 tls- 后接 8 位字母数字。
        # @type SecurityPolicyIds: Array

        attr_accessor :Filters, :MaxResults, :NextToken, :SecurityPolicyIds

        def initialize(filters=nil, maxresults=nil, nexttoken=nil, securitypolicyids=nil)
          @Filters = filters
          @MaxResults = maxresults
          @NextToken = nexttoken
          @SecurityPolicyIds = securitypolicyids
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
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
          @SecurityPolicyIds = params['SecurityPolicyIds']
        end
      end

      # DescribeSecurityPolicies返回参数结构体
      class DescribeSecurityPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param NextToken: 下一页查询的起始令牌。

        # - 若返回值不为空，表示还有更多数据，可将此值作为下一次请求的 NextToken 参数继续查询。
        # - 若返回值为空或未返回此字段，表示已是最后一页。
        # @type NextToken: String
        # @param SecurityPolicies: 安全策略信息列表。包含每个安全策略的详细配置，如策略 ID、名称、TLS 版本、加密套件等。
        # @type SecurityPolicies: Array
        # @param TotalCount: 符合过滤条件的安全策略总数。

        # **说明：** 此值表示满足查询条件的总记录数，而非本次返回的记录数。可用于计算分页信息。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextToken, :SecurityPolicies, :TotalCount, :RequestId

        def initialize(nexttoken=nil, securitypolicies=nil, totalcount=nil, requestid=nil)
          @NextToken = nexttoken
          @SecurityPolicies = securitypolicies
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @NextToken = params['NextToken']
          unless params['SecurityPolicies'].nil?
            @SecurityPolicies = []
            params['SecurityPolicies'].each do |i|
              securitypolicyinfo_tmp = SecurityPolicyInfo.new
              securitypolicyinfo_tmp.deserialize(i)
              @SecurityPolicies << securitypolicyinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityPolicyCapabilities请求参数结构体
      class DescribeSecurityPolicyCapabilitiesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSecurityPolicyCapabilities返回参数结构体
      class DescribeSecurityPolicyCapabilitiesResponse < TencentCloud::Common::AbstractModel
        # @param SecurityPolicyCapabilities: 安全策略配置能力列表。返回当前地域支持的所有 TLS 版本及其对应的加密套件信息。

        # **返回内容包含：**
        # - 支持的 TLS 协议版本（如 TLSv1.0、TLSv1.1、TLSv1.2、TLSv1.3）。
        # - 每个 TLS 版本支持的加密套件列表。

        # **使用场景：**
        # - 在创建安全策略（CreateSecurityPolicy）前，调用此接口获取可选的加密套件。
        # - 在修改安全策略（ModifySecurityPolicyAttributes）前，确认新配置的有效性。
        # @type SecurityPolicyCapabilities: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityPolicyCapabilities, :RequestId

        def initialize(securitypolicycapabilities=nil, requestid=nil)
          @SecurityPolicyCapabilities = securitypolicycapabilities
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityPolicyCapabilities'].nil?
            @SecurityPolicyCapabilities = []
            params['SecurityPolicyCapabilities'].each do |i|
              securitypolicycapability_tmp = SecurityPolicyCapability.new
              securitypolicycapability_tmp.deserialize(i)
              @SecurityPolicyCapabilities << securitypolicycapability_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityPolicyRelations请求参数结构体
      class DescribeSecurityPolicyRelationsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityPolicyIds: 安全策略 ID 列表，ID 格式为 tls- 后接 8 位字母数字。
        # @type SecurityPolicyIds: Array

        attr_accessor :SecurityPolicyIds

        def initialize(securitypolicyids=nil)
          @SecurityPolicyIds = securitypolicyids
        end

        def deserialize(params)
          @SecurityPolicyIds = params['SecurityPolicyIds']
        end
      end

      # DescribeSecurityPolicyRelations返回参数结构体
      class DescribeSecurityPolicyRelationsResponse < TencentCloud::Common::AbstractModel
        # @param SecurityPolicyRelations: 安全策略关联的监听器列表。返回每个安全策略所关联的 HTTPS 监听器信息。
        # @type SecurityPolicyRelations: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityPolicyRelations, :RequestId

        def initialize(securitypolicyrelations=nil, requestid=nil)
          @SecurityPolicyRelations = securitypolicyrelations
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityPolicyRelations'].nil?
            @SecurityPolicyRelations = []
            params['SecurityPolicyRelations'].each do |i|
              securitypolicyrelations_tmp = SecurityPolicyRelations.new
              securitypolicyrelations_tmp.deserialize(i)
              @SecurityPolicyRelations << securitypolicyrelations_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSystemSecurityPolicies请求参数结构体
      class DescribeSystemSecurityPoliciesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSystemSecurityPolicies返回参数结构体
      class DescribeSystemSecurityPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param SecurityPolicies: 系统安全策略列表。
        # @type SecurityPolicies: Array
        # @param TotalCount: 安全策略总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityPolicies, :TotalCount, :RequestId

        def initialize(securitypolicies=nil, totalcount=nil, requestid=nil)
          @SecurityPolicies = securitypolicies
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityPolicies'].nil?
            @SecurityPolicies = []
            params['SecurityPolicies'].each do |i|
              securitypolicyinfo_tmp = SecurityPolicyInfo.new
              securitypolicyinfo_tmp.deserialize(i)
              @SecurityPolicies << securitypolicyinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargetGroupTargets请求参数结构体
      class DescribeTargetGroupTargetsRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组 ID，格式为 lbtg- 后接 8 位字母数字。
        # @type TargetGroupId: String
        # @param Filters: 过滤器。通过指定的过滤条件来查询后端服务，支持：
        # - Name的值为**TargetId**。通过资源ID来筛选后端服务，当目标组后端类型为**Instance**时生效。**Values**的值为Cvm或Eni的资源ID。
        # - Name的值为**TargetIp**。通过资源IP来筛选后端服务，当目标组后端类型为**Ip**时生效。**Values**的值为后端服务的IP。
        # - 通过标签方式筛选。
        # @type Filters: Array
        # @param MaxResults: 返回列表的数量，默认为**20**，最大值为**100**。
        # @type MaxResults: Integer
        # @param NextToken: 下一次查询的Token值。第一次查询和没有下一次查询时，无需填写。
        # 如果有下一次查询，取值为上一次 API 调用返回的 NextToken 值。
        # @type NextToken: String

        attr_accessor :TargetGroupId, :Filters, :MaxResults, :NextToken

        def initialize(targetgroupid=nil, filters=nil, maxresults=nil, nexttoken=nil)
          @TargetGroupId = targetgroupid
          @Filters = filters
          @MaxResults = maxresults
          @NextToken = nexttoken
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
        end
      end

      # DescribeTargetGroupTargets返回参数结构体
      class DescribeTargetGroupTargetsResponse < TencentCloud::Common::AbstractModel
        # @param NextToken: 下一次查询的Token值，如果当前是最后一页，返回为空。
        # @type NextToken: String
        # @param Targets: 后端服务信息。
        # @type Targets: Array
        # @param TotalCount: 目标组内后端服务总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextToken, :Targets, :TotalCount, :RequestId

        def initialize(nexttoken=nil, targets=nil, totalcount=nil, requestid=nil)
          @NextToken = nexttoken
          @Targets = targets
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @NextToken = params['NextToken']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              targetoutput_tmp = TargetOutput.new
              targetoutput_tmp.deserialize(i)
              @Targets << targetoutput_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargetGroupsByTarget请求参数结构体
      class DescribeTargetGroupsByTargetRequest < TencentCloud::Common::AbstractModel
        # @param TargetId: 后端服务实例 ID，CVM 实例格式为 ins- 后接 8 位字母数字。
        # @type TargetId: Array

        attr_accessor :TargetId

        def initialize(targetid=nil)
          @TargetId = targetid
        end

        def deserialize(params)
          @TargetId = params['TargetId']
        end
      end

      # DescribeTargetGroupsByTarget返回参数结构体
      class DescribeTargetGroupsByTargetResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RequestId

        def initialize(totalcount=nil, requestid=nil)
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargetGroups请求参数结构体
      class DescribeTargetGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Filters:  过滤器。通过指定的过滤条件来查询后端服务，支持：
        # - Name的值为**VpcId**。通过VPC实例来筛选目标组。**Values**的值为VPC唯一ID列表。
        # - Name的值为**TargetType**。通过后端服务类型来筛选目标组。**Values**的值可以取为**Instance**。
        # - Name的值为**TargetGroupName**。通过目标组名称来筛选目标组。**Values**的值为目标组名称列表。
        # - Name的值为**Protocol**。通过目标组后端服务协议来筛选目标组。**Values**的值为目标组后端服务协议列表。
        # - 通过标签方式筛选。
        # @type Filters: Array
        # @param MaxResults: 返回列表的数量，默认为**20**，最大值为**100**。
        # @type MaxResults: Integer
        # @param NextToken: 下一次查询的Token值。第一次查询和没有下一次查询时，无需填写。
        # 如果有下一次查询，取值为上一次 API 调用返回的 NextToken 值。
        # @type NextToken: String
        # @param TargetGroupIds: 目标组 ID 列表，ID 格式为 lbtg- 后接 8 位字母数字。
        # @type TargetGroupIds: Array

        attr_accessor :Filters, :MaxResults, :NextToken, :TargetGroupIds

        def initialize(filters=nil, maxresults=nil, nexttoken=nil, targetgroupids=nil)
          @Filters = filters
          @MaxResults = maxresults
          @NextToken = nexttoken
          @TargetGroupIds = targetgroupids
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
          @MaxResults = params['MaxResults']
          @NextToken = params['NextToken']
          @TargetGroupIds = params['TargetGroupIds']
        end
      end

      # DescribeTargetGroups返回参数结构体
      class DescribeTargetGroupsResponse < TencentCloud::Common::AbstractModel
        # @param NextToken: 下一次查询的Token值，如果当前是最后一页，返回为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextToken: String
        # @param TargetGroups: 目标组信息。
        # @type TargetGroups: Array
        # @param TotalCount: 目标组总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextToken, :TargetGroups, :TotalCount, :RequestId

        def initialize(nexttoken=nil, targetgroups=nil, totalcount=nil, requestid=nil)
          @NextToken = nexttoken
          @TargetGroups = targetgroups
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @NextToken = params['NextToken']
          unless params['TargetGroups'].nil?
            @TargetGroups = []
            params['TargetGroups'].each do |i|
              targetgroupoutput_tmp = TargetGroupOutput.new
              targetgroupoutput_tmp.deserialize(i)
              @TargetGroups << targetgroupoutput_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeZones请求参数结构体
      class DescribeZonesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeZones返回参数结构体
      class DescribeZonesResponse < TencentCloud::Common::AbstractModel
        # @param Zones: 可用区列表
        # @type Zones: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Zones, :RequestId

        def initialize(zones=nil, requestid=nil)
          @Zones = zones
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Zones'].nil?
            @Zones = []
            params['Zones'].each do |i|
              zone_tmp = Zone.new
              zone_tmp.deserialize(i)
              @Zones << zone_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DisassociateBandwidthPackageFromLoadBalancer请求参数结构体
      class DisassociateBandwidthPackageFromLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param BandwidthPackageId: 共享带宽包 ID。
        # @type BandwidthPackageId: String
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param ClientToken: 客户端Token，用于保证请求的幂等性。

        # 从您的客户端生成一个参数值，确保不同请求间该参数值唯一。ClientToken只支持ASCII字符。

        # > 若您未指定，则系统自动使用API请求的**RequestId**作为**ClientToken**标识。每次API请求的**RequestId**不一样。
        # @type ClientToken: String
        # @param DryRun: 是否只预检此次请求。取值：
        # - **true**：发送检查请求，不会将共享带宽包从负载均衡实例中移除。检查项包括是否填写了必需参数、请求格式、业务限制。如果检查不通过，则返回对应错误。如果检查通过，则返回错误码`DryRunOperation`。
        # - **false**（默认值）：发送正常请求，通过检查后返回HTTP 2xx状态码并直接进行操作。
        # @type DryRun: Boolean

        attr_accessor :BandwidthPackageId, :LoadBalancerId, :ClientToken, :DryRun

        def initialize(bandwidthpackageid=nil, loadbalancerid=nil, clienttoken=nil, dryrun=nil)
          @BandwidthPackageId = bandwidthpackageid
          @LoadBalancerId = loadbalancerid
          @ClientToken = clienttoken
          @DryRun = dryrun
        end

        def deserialize(params)
          @BandwidthPackageId = params['BandwidthPackageId']
          @LoadBalancerId = params['LoadBalancerId']
          @ClientToken = params['ClientToken']
          @DryRun = params['DryRun']
        end
      end

      # DisassociateBandwidthPackageFromLoadBalancer返回参数结构体
      class DisassociateBandwidthPackageFromLoadBalancerResponse < TencentCloud::Common::AbstractModel
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

      # DisassociateListenerAdditionalCertificates请求参数结构体
      class DisassociateListenerAdditionalCertificatesRequest < TencentCloud::Common::AbstractModel
        # @param CertificateIds: 待解绑的扩展证书 ID 列表。
        # @type CertificateIds: Array
        # @param ListenerId: 监听器 ID，格式为 lst- 后接 8 位字母数字。
        # @type ListenerId: String
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param ClientToken: 客户端 Token，用于保证请求的幂等性。从您的客户端生成一个参数值，确保不同请求间该参数值唯一。ClientToken 只支持 ASCII 字符。
        # 若您未指定，则系统自动使用 API 请求的 RequestId 作为 ClientToken 标识。每次 API 请求的 RequestId 不一样。
        # @type ClientToken: String
        # @param DryRun: 是否只预检此次请求，取值：
        # true：发送检查请求，不会从 HTTPS和QUIC监听器解绑扩展证书。检查项包括是否填写了必需参数、请求格式、业务限制。如果检查不通过，则返回对应错误。如果检查通过，则返回错误码DryRunOperation。
        # false（默认值）：发送正常请求，通过检查后返回HTTP 2xx状态码并直接进行操作。
        # @type DryRun: String

        attr_accessor :CertificateIds, :ListenerId, :LoadBalancerId, :ClientToken, :DryRun

        def initialize(certificateids=nil, listenerid=nil, loadbalancerid=nil, clienttoken=nil, dryrun=nil)
          @CertificateIds = certificateids
          @ListenerId = listenerid
          @LoadBalancerId = loadbalancerid
          @ClientToken = clienttoken
          @DryRun = dryrun
        end

        def deserialize(params)
          @CertificateIds = params['CertificateIds']
          @ListenerId = params['ListenerId']
          @LoadBalancerId = params['LoadBalancerId']
          @ClientToken = params['ClientToken']
          @DryRun = params['DryRun']
        end
      end

      # DisassociateListenerAdditionalCertificates返回参数结构体
      class DisassociateListenerAdditionalCertificatesResponse < TencentCloud::Common::AbstractModel
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

      # 固定应答信息
      class FixedResponseInfo < TencentCloud::Common::AbstractModel
        # @param HttpCode: 返回的HTTP响应码，支持 2xx、4xx、5xx。
        # @type HttpCode: Integer
        # @param Content: 返回的固定内容。只支持 ASCII 字符，最大1KB。
        # @type Content: String
        # @param ContentType: 返回固定内容的格式。
        # 取值：text/plain、text/css、text/html、application/javascript或application/json。
        # @type ContentType: String

        attr_accessor :HttpCode, :Content, :ContentType

        def initialize(httpcode=nil, content=nil, contenttype=nil)
          @HttpCode = httpcode
          @Content = content
          @ContentType = contenttype
        end

        def deserialize(params)
          @HttpCode = params['HttpCode']
          @Content = params['Content']
          @ContentType = params['ContentType']
        end
      end

      # HTTP Cookie信息
      class HTTPCookieInfo < TencentCloud::Common::AbstractModel
        # @param Key: Cookie的键，长度1~64个字符，支持字母、数字、下划线。
        # @type Key: String
        # @param Value: Cookie的值，长度1~128个字符，支持可打印字符。
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

      # HTTP Header信息
      class HTTPHeaderInfo < TencentCloud::Common::AbstractModel
        # @param Key: HTTP Header的键，长度1 ~ 40个字符，支持的字符集为：a-z A-Z 0-9 - _ 。
        # 不支持中文，不支持Host，Cookie。
        # @type Key: String
        # @param Values: HTTP Header的值，长度1 ~ 128个字符，支持可打印字符。
        # 不支持"，开头和结尾不能是空格，结尾不能是\。
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

      # HTTP查询字符串信息
      class HTTPQueryStringInfo < TencentCloud::Common::AbstractModel
        # @param Key: 查询字符串的键，长度1 ~ 16个字符。支持可打印字符，不支持空格和#[]{}\|<>&。
        # 支持 * 多字符通配，? 单字符通配。

        # @type Key: String
        # @param Value: 查询字符串的值，长度1 ~ 128字符，支持可打印字符，不支持空格和#[]{}\|<>&。
        # 支持 * 多字符通配，? 单字符通配。
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

      # HTTP重定向信息
      class HTTPRedirectInfo < TencentCloud::Common::AbstractModel
        # @param HttpCode: <p>重定向的HTTP码，支持301、302、303、307、 308。</p>
        # @type HttpCode: Integer
        # @param Host: <p>重定向的主机地址，默认值${host}。长度3 ~ 128个字符，支持的字符集为：a-z 0-9 _ . -。</p>
        # @type Host: String
        # @param Path: <p>重定向的路径，默认值${path}。长度1 ~ 128个字符，支持的字符集为：a-z A-Z 0-9  ? =  _  . - / : 。</p>
        # @type Path: String
        # @param Port: <p>重定向的端口，默认值 ${port}。取值1 ~ 65535。</p>
        # @type Port: String
        # @param Protocol: <p>重定向的协议，取值：HTTP,HTTPS，默认值${protocol}。</p>
        # @type Protocol: String
        # @param Query: <p>重定向的查询字符串，默认值${query}。长度1 ~ 128字符，支持可打印字符，不支持 #[]{}|&lt;&gt;&amp; 和空格。</p>
        # @type Query: String

        attr_accessor :HttpCode, :Host, :Path, :Port, :Protocol, :Query

        def initialize(httpcode=nil, host=nil, path=nil, port=nil, protocol=nil, query=nil)
          @HttpCode = httpcode
          @Host = host
          @Path = path
          @Port = port
          @Protocol = protocol
          @Query = query
        end

        def deserialize(params)
          @HttpCode = params['HttpCode']
          @Host = params['Host']
          @Path = params['Path']
          @Port = params['Port']
          @Protocol = params['Protocol']
          @Query = params['Query']
        end
      end

      # HTTP重写信息
      class HTTPRewriteInfo < TencentCloud::Common::AbstractModel
        # @param Host: <p>重写的主机地址，默认值${host}。长度3 ~ 128个字符，支持的字符集为：a-z 0-9 _ . -。</p>
        # @type Host: String
        # @param Path: <p>重写的路径，默认值${path}。长度1 ~ 128个字符，支持的字符集为：a-z A-Z 0-9 ? = _ . - / : 。</p>
        # @type Path: String
        # @param Query: <p>重写的查询字符串，默认值${query}。长度1 ~ 128字符，支持可打印字符，不支持 #[]{}|&lt;&gt;&amp; 和空格。</p>
        # @type Query: String

        attr_accessor :Host, :Path, :Query

        def initialize(host=nil, path=nil, query=nil)
          @Host = host
          @Path = path
          @Query = query
        end

        def deserialize(params)
          @Host = params['Host']
          @Path = params['Path']
          @Query = params['Query']
        end
      end

      # 健康检查配置
      class HealthCheckConfig < TencentCloud::Common::AbstractModel
        # @param HealthCheckEnabled: 是否开启健康检查。
        # - **true**：开启。
        # - **false**：不开启。
        # @type HealthCheckEnabled: Boolean
        # @param HealthCheckCodes: 健康检查状态码。取值：
        # - 当健康检查协议为**HTTP/HTTPS**时：
        # 	- **http_1xx**
        # 	- **http_2xx**（默认值）
        # 	-  **http_3xx**
        # 	-  **http_4xx**
        # 	-  **http_5xx**
        # - 当健康检查协议为**gRPC**时：默认值为12，数值范围为0-99，输入值可为数值、多个数值或者范围以及相互组合，如：
        # 	- **"20"**
        # 	- **"0-99"**
        # > 仅当**HealthCheckProtocol**设置为**HTTP** 、**HTTPS**、**GRPC** 或者**GRPCS**时，该参数生效。
        # @type HealthCheckCodes: Array
        # @param HealthCheckHealthyThreshold: 判定后端服务健康的阈值，当健康检查连续成功多少次后，后端服务的状态由**不健康**变为**健康**。
        # 取值范围：**2**-**10**。
        # 默认值：**2**。
        # @type HealthCheckHealthyThreshold: Integer
        # @param HealthCheckHost: 健康检查域名。该参数不设置时默认使用后端服务的内网IP作为健康检查地址。
        # 域名限制：
        # - 长度限制为 **1-255** 个字符。
        # - 可包含小写字母、数字、短划线（-）和半角句号（.）。
        # - 至少包含一个半角句号（.），半角句号（.）不能出现在开头或结尾。
        # - 最右侧的域标签，只能包含字母，不能包含数字或短划线（-）。
        # - 短划线（-）不能出现在开头或结尾。
        # >仅当 **HealthCheckProtocol** 设置为 **HTTP、HTTPS** 、**GRPC**、**GRPCS** 时，该参数生效。
        # @type HealthCheckHost: String
        # @param HealthCheckHttpVersion: 健康检查 HTTP 协议版本，取值：
        # - **HTTP1.1**（默认）
        # - **HTTP1.0**
        # > 仅当**HealthCheckProtocol**设置为**HTTP** 或 **HTTPS** 时，该参数生效。
        # @type HealthCheckHttpVersion: String
        # @param HealthCheckInterval: 健康检查的时间间隔。单位：秒。
        # 取值范围：**2**-**300**。
        # 默认值：**5**。
        # @type HealthCheckInterval: Integer
        # @param HealthCheckMethod: 健康检查方法，取值：
        # - **GET**
        # - **HEAD**（默认值）
        # > 仅当**HealthCheckProtocol**设置为**HTTP** 或 **HTTPS** 时，该参数生效。
        # @type HealthCheckMethod: String
        # @param HealthCheckPath: 健康检查的转发规则路径。
        # 长度为 1~80 个字符，只能使用字母、数字、字符`-/.%?#&=`以及扩展字符`_;~!（)*[]@$^:',+`。 URL 必须以正斜线（/）开头。
        # > 仅当**HealthCheckProtocol**为**HTTP**、**HTTPS** 、**GRPC**、**GRPCS**时，转发规则路径参数生效。
        # @type HealthCheckPath: String
        # @param HealthCheckPort: 健康检查访问后端服务器的端口。

        # 取值范围：**0-65535**。

        # 默认值：**0**，表示后端服务器的端口。
        # @type HealthCheckPort: Integer
        # @param HealthCheckProtocol: 健康检查协议。取值：
        # - **HTTP**（默认）：通过发送 HEAD 或 GET 请求模拟浏览器的访问行为来检查服务器应用是否健康。
        # - **HTTPS**：通过发送 HEAD 或 GET 请求模拟浏览器的访问行为来检查服务器应用是否健康。（数据加密，相比 HTTP 更安全。）
        # - **TCP**：通过发送 SYN 握手报文来检测服务器端口是否存活。
        # - **GRPC**：通过发送 POST 请求来检查服务器应用是否健康。
        # - **GRPCS**：通过发送 POST 请求来检查服务器应用是否健康。
        # @type HealthCheckProtocol: String
        # @param HealthCheckTimeout: 健康检查的响应超时时间。单位：秒。
        # 取值范围：**2**-**60**。
        # 默认值：**2**。
        # @type HealthCheckTimeout: Integer
        # @param HealthCheckUnhealthyThreshold: 判定后端服务不健康的阈值，当健康检查连续失败多少次后，后端服务的状态由**健康**变为**不健康**。
        # 取值范围：**2**-**10**。
        # 默认值：**2**。
        # @type HealthCheckUnhealthyThreshold: Integer

        attr_accessor :HealthCheckEnabled, :HealthCheckCodes, :HealthCheckHealthyThreshold, :HealthCheckHost, :HealthCheckHttpVersion, :HealthCheckInterval, :HealthCheckMethod, :HealthCheckPath, :HealthCheckPort, :HealthCheckProtocol, :HealthCheckTimeout, :HealthCheckUnhealthyThreshold

        def initialize(healthcheckenabled=nil, healthcheckcodes=nil, healthcheckhealthythreshold=nil, healthcheckhost=nil, healthcheckhttpversion=nil, healthcheckinterval=nil, healthcheckmethod=nil, healthcheckpath=nil, healthcheckport=nil, healthcheckprotocol=nil, healthchecktimeout=nil, healthcheckunhealthythreshold=nil)
          @HealthCheckEnabled = healthcheckenabled
          @HealthCheckCodes = healthcheckcodes
          @HealthCheckHealthyThreshold = healthcheckhealthythreshold
          @HealthCheckHost = healthcheckhost
          @HealthCheckHttpVersion = healthcheckhttpversion
          @HealthCheckInterval = healthcheckinterval
          @HealthCheckMethod = healthcheckmethod
          @HealthCheckPath = healthcheckpath
          @HealthCheckPort = healthcheckport
          @HealthCheckProtocol = healthcheckprotocol
          @HealthCheckTimeout = healthchecktimeout
          @HealthCheckUnhealthyThreshold = healthcheckunhealthythreshold
        end

        def deserialize(params)
          @HealthCheckEnabled = params['HealthCheckEnabled']
          @HealthCheckCodes = params['HealthCheckCodes']
          @HealthCheckHealthyThreshold = params['HealthCheckHealthyThreshold']
          @HealthCheckHost = params['HealthCheckHost']
          @HealthCheckHttpVersion = params['HealthCheckHttpVersion']
          @HealthCheckInterval = params['HealthCheckInterval']
          @HealthCheckMethod = params['HealthCheckMethod']
          @HealthCheckPath = params['HealthCheckPath']
          @HealthCheckPort = params['HealthCheckPort']
          @HealthCheckProtocol = params['HealthCheckProtocol']
          @HealthCheckTimeout = params['HealthCheckTimeout']
          @HealthCheckUnhealthyThreshold = params['HealthCheckUnhealthyThreshold']
        end
      end

      # 健康检查模板信息
      class HealthCheckTemplate < TencentCloud::Common::AbstractModel
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param HealthCheckCodes: 健康检查状态码。取值：
        # - 当健康检查协议为**HTTP/HTTPS**时：
        # 	- **http_1xx**
        # 	- **http_2xx**（默认值）
        # 	-  **http_3xx**
        # 	-  **http_4xx**
        # 	-  **http_5xx**
        # - 当健康检查协议为**GRPC/GRPCS**时：默认值为**12**，数值范围为**0-99**，输入值可为数值、多个数值或者范围以及相互组合，如：
        # 	- **"20"**
        # 	- **"0-99"**
        # @type HealthCheckCodes: Array
        # @param HealthCheckHealthyThreshold: 判定后端服务健康的阈值，当健康检查连续成功多少次后，后端服务的状态由**不健康**变为**健康**。
        # 取值范围：**2**-**10**。
        # 默认值：**2**。
        # @type HealthCheckHealthyThreshold: Integer
        # @param HealthCheckHost: 健康检查域名。
        # 长度限制为 **1-255** 个字符。
        # 可包含小写字母、数字、短划线（-）和半角句号（.）。

        # > 仅当 **HealthCheckProtocol** 设置为 **HTTP/HTTPS/GRPC/GRPCS** 时，该参数生效。
        # @type HealthCheckHost: String
        # @param HealthCheckHttpVersion: 健康检查 HTTP 协议版本，取值：
        # - **HTTP1.1**（默认）
        # - **HTTP1.0**
        # > 仅当**HealthCheckProtocol**设置为**HTTP** 或 **HTTPS** 时，该参数生效。
        # @type HealthCheckHttpVersion: String
        # @param HealthCheckInterval: 健康检查的时间间隔。单位：秒。
        # 取值范围：**2**-**300**。
        # 默认值：**5**。
        # @type HealthCheckInterval: Integer
        # @param HealthCheckMethod: 健康检查方法，取值：
        # - **GET**
        # - **HEAD**（默认值）
        # > 仅当**HealthCheckProtocol**设置为**HTTP** 或 **HTTPS** 时，该参数生效。
        # @type HealthCheckMethod: String
        # @param HealthCheckPath: 健康检查的转发规则路径。 长度为 **1-80** 个字符，只能使用字母、数字、字符`-/.%?#&=`以及扩展字符`_;~!（)*[]@$^:',+`。 URL 必须以正斜线（/）开头。
        # > 仅当**HealthCheckProtocol**为**HTTP/HTTPS/GRPC/GRPCS**时，转发规则路径参数生效。
        # @type HealthCheckPath: String
        # @param HealthCheckPort: 健康检查访问后端服务器的端口。

        # 取值范围：**0-65535**。

        # 默认值：**0**，表示后端服务器的端口。
        # @type HealthCheckPort: Integer
        # @param HealthCheckProtocol: 健康检查协议。取值：
        # - **HTTP**（默认）：通过发送 HEAD 或 GET 请求模拟浏览器的访问行为来检查服务器应用是否健康。
        # - **HTTPS**：通过发送 HEAD 或 GET 请求模拟浏览器的访问行为来检查服务器应用是否健康。（数据加密，相比 HTTP 更安全。）
        # - **TCP**：通过发送 SYN 握手报文来检测服务器端口是否存活。
        # - **GRPC**：通过发送 POST 或 GET 请求来检查服务器应用是否健康。
        # - **GRPCS**：通过发送 POST 或 GET 请求来检查服务器应用是否健康。
        # @type HealthCheckProtocol: String
        # @param HealthCheckTemplateId: 健康检查模板 ID，格式为 hct- 后接字母数字。所有接口（创建、查询、修改、删除）均使用 hct- 前缀。
        # @type HealthCheckTemplateId: String
        # @param HealthCheckTemplateName: 健康检查模板名称。长度为 **1-255** 个字符，可包含数字、大小写字母、中文、半角句号（.）、下划线（_）和短划线（-）。
        # @type HealthCheckTemplateName: String
        # @param HealthCheckTimeout: 健康检查的响应超时时间。单位：秒。
        # 取值范围：**2**-**60**。
        # 默认值：**2**。
        # @type HealthCheckTimeout: Integer
        # @param HealthCheckUnhealthyThreshold: 判定后端服务不健康的阈值，当健康检查连续失败多少次后，后端服务的状态由**健康**变为**不健康**。
        # 取值范围：**2**-**10**。
        # 默认值：**2**。
        # @type HealthCheckUnhealthyThreshold: Integer
        # @param ModifyTime: 修改时间。
        # @type ModifyTime: String
        # @param Tags: 标签。
        # @type Tags: Array

        attr_accessor :CreateTime, :HealthCheckCodes, :HealthCheckHealthyThreshold, :HealthCheckHost, :HealthCheckHttpVersion, :HealthCheckInterval, :HealthCheckMethod, :HealthCheckPath, :HealthCheckPort, :HealthCheckProtocol, :HealthCheckTemplateId, :HealthCheckTemplateName, :HealthCheckTimeout, :HealthCheckUnhealthyThreshold, :ModifyTime, :Tags

        def initialize(createtime=nil, healthcheckcodes=nil, healthcheckhealthythreshold=nil, healthcheckhost=nil, healthcheckhttpversion=nil, healthcheckinterval=nil, healthcheckmethod=nil, healthcheckpath=nil, healthcheckport=nil, healthcheckprotocol=nil, healthchecktemplateid=nil, healthchecktemplatename=nil, healthchecktimeout=nil, healthcheckunhealthythreshold=nil, modifytime=nil, tags=nil)
          @CreateTime = createtime
          @HealthCheckCodes = healthcheckcodes
          @HealthCheckHealthyThreshold = healthcheckhealthythreshold
          @HealthCheckHost = healthcheckhost
          @HealthCheckHttpVersion = healthcheckhttpversion
          @HealthCheckInterval = healthcheckinterval
          @HealthCheckMethod = healthcheckmethod
          @HealthCheckPath = healthcheckpath
          @HealthCheckPort = healthcheckport
          @HealthCheckProtocol = healthcheckprotocol
          @HealthCheckTemplateId = healthchecktemplateid
          @HealthCheckTemplateName = healthchecktemplatename
          @HealthCheckTimeout = healthchecktimeout
          @HealthCheckUnhealthyThreshold = healthcheckunhealthythreshold
          @ModifyTime = modifytime
          @Tags = tags
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @HealthCheckCodes = params['HealthCheckCodes']
          @HealthCheckHealthyThreshold = params['HealthCheckHealthyThreshold']
          @HealthCheckHost = params['HealthCheckHost']
          @HealthCheckHttpVersion = params['HealthCheckHttpVersion']
          @HealthCheckInterval = params['HealthCheckInterval']
          @HealthCheckMethod = params['HealthCheckMethod']
          @HealthCheckPath = params['HealthCheckPath']
          @HealthCheckPort = params['HealthCheckPort']
          @HealthCheckProtocol = params['HealthCheckProtocol']
          @HealthCheckTemplateId = params['HealthCheckTemplateId']
          @HealthCheckTemplateName = params['HealthCheckTemplateName']
          @HealthCheckTimeout = params['HealthCheckTimeout']
          @HealthCheckUnhealthyThreshold = params['HealthCheckUnhealthyThreshold']
          @ModifyTime = params['ModifyTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
        end
      end

      # 应用型负载均衡可用区子网映射中的 IP 信息数据结构
      class IPAddressInfo < TencentCloud::Common::AbstractModel
        # @param Address: IP 地址
        # @type Address: String
        # @param AddressId: EIP AddressId
        # @type AddressId: String

        attr_accessor :Address, :AddressId

        def initialize(address=nil, addressid=nil)
          @Address = address
          @AddressId = addressid
        end

        def deserialize(params)
          @Address = params['Address']
          @AddressId = params['AddressId']
        end
      end

      # InquirePriceCreateLoadBalancer请求参数结构体
      class InquirePriceCreateLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param ChargeType: 实例的计费类型。默认POSTPAID_BY_HOUR，仅取值 POSTPAID_BY_HOUR：表示按量计费。
        # @type ChargeType: String

        attr_accessor :ChargeType

        def initialize(chargetype=nil)
          @ChargeType = chargetype
        end

        def deserialize(params)
          @ChargeType = params['ChargeType']
        end
      end

      # InquirePriceCreateLoadBalancer返回参数结构体
      class InquirePriceCreateLoadBalancerResponse < TencentCloud::Common::AbstractModel
        # @param Price: 询价结果。
        # @type Price: :class:`Tencentcloud::Alb.v20251030.models.Price`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 插入HTTP Header信息
      class InsertHTTPHeaderInfo < TencentCloud::Common::AbstractModel
        # @param Key: 插入的HTTP Header键，长度1 ~ 40个字符，支持的字符集为：a-z A-Z 0-9 - _ 。
        # 不支持中文，不支持Cookie,Host,Content-Length,Connection,Upgrade,transfer-encoding,keep-alive,te,authority,x-forwarded-for,x-forwarded-proto,x-forwarded-host,x-forwarded-port。
        # @type Key: String
        # @param Value: HTTP Header值的类型。
        # ValueType为SystemDefined时，取值范围 ClientPort：客户端端口，ClientIp：客户端 IP 地址，Protocol：客户端请求的协议，CLBPort：负载均衡实例监听端口。
        # ValueType为UserDefined时，长度1 ~ 128的可打印字符，不支持"，开头和结尾不能为空格，结尾不能为\。
        # ValueType为ReferenceHeader时，引用请求头中的某一个header，长度1~128的可打印字符，不支持"，开头和结尾不能为空格，结尾不能为\。
        # @type Value: String
        # @param ValueType: HTTP Header值的类型，取值：
        # SystemDefined：系统定义的header。
        # UserDefined：用户自定义的header。
        # ReferenceHeader：引用请求头中的某一个header。
        # @type ValueType: String

        attr_accessor :Key, :Value, :ValueType

        def initialize(key=nil, value=nil, valuetype=nil)
          @Key = key
          @Value = value
          @ValueType = valuetype
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @ValueType = params['ValueType']
        end
      end

      # 异步任务信息
      class Job < TencentCloud::Common::AbstractModel
        # @param ApiName: 操作接口名称。
        # @type ApiName: String
        # @param FlowId: 任务流Id
        # @type FlowId: Integer
        # @param RequestId: 任务请求Id。
        # @type RequestId: String
        # @param ResourceIds: 资源ID列表
        # @type ResourceIds: Array
        # @param Status: 任务状态。取值：Processing、Succeeded、Failed。
        # @type Status: String

        attr_accessor :ApiName, :FlowId, :RequestId, :ResourceIds, :Status

        def initialize(apiname=nil, flowid=nil, requestid=nil, resourceids=nil, status=nil)
          @ApiName = apiname
          @FlowId = flowid
          @RequestId = requestid
          @ResourceIds = resourceids
          @Status = status
        end

        def deserialize(params)
          @ApiName = params['ApiName']
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
          @ResourceIds = params['ResourceIds']
          @Status = params['Status']
        end
      end

      # 监听器简要信息出参
      class ListenerOutput < TencentCloud::Common::AbstractModel
        # @param CaEnable: 是否开启双向认证。
        # @type CaEnable: Boolean
        # @param CreateTime: 监听器实例的创建时间。格式：ISO 8601（例如 2025-01-01T08:30:00+08:00）
        # @type CreateTime: String
        # @param GzipEnabled: 是否启用 Gzip 压缩。
        # @type GzipEnabled: Boolean
        # @param Http2Enable: 是否启用http2。
        # @type Http2Enable: Boolean
        # @param IdleTimeout: 空闲超时时间。
        # @type IdleTimeout: Integer
        # @param ListenerId: 监听器 ID，格式为 lst- 后接 8 位字母数字。
        # @type ListenerId: String
        # @param ListenerName: 监听器名称。
        # @type ListenerName: String
        # @param ListenerPort: 监听器端口。
        # @type ListenerPort: Integer
        # @param ListenerProtocol: 监听器协议。
        # @type ListenerProtocol: String
        # @param ListenerStatus: 监听器状态。取值:=

        # - **Active**: 运行中。
        # - **Provisioning**：创建中。
        # - **Configuring**：变配中。
        # - **ProvisionFailed**：创建失败
        # @type ListenerStatus: String
        # @param ModifyTime: 监听器实例的最后变更时间。格式：ISO 8601（例如 2025-01-01T08:30:00+08:00）
        # @type ModifyTime: String
        # @param RequestTimeout: 请求超时时间。
        # @type RequestTimeout: Integer
        # @param Tags: 标签。
        # @type Tags: Array
        # @param TlsSecurityPolicyId: 安全策略 ID。
        # @type TlsSecurityPolicyId: String
        # @param XForwardedForConfig: XForwardedFor配置。
        # @type XForwardedForConfig: :class:`Tencentcloud::Alb.v20251030.models.XForwardedForConfig`

        attr_accessor :CaEnable, :CreateTime, :GzipEnabled, :Http2Enable, :IdleTimeout, :ListenerId, :ListenerName, :ListenerPort, :ListenerProtocol, :ListenerStatus, :ModifyTime, :RequestTimeout, :Tags, :TlsSecurityPolicyId, :XForwardedForConfig

        def initialize(caenable=nil, createtime=nil, gzipenabled=nil, http2enable=nil, idletimeout=nil, listenerid=nil, listenername=nil, listenerport=nil, listenerprotocol=nil, listenerstatus=nil, modifytime=nil, requesttimeout=nil, tags=nil, tlssecuritypolicyid=nil, xforwardedforconfig=nil)
          @CaEnable = caenable
          @CreateTime = createtime
          @GzipEnabled = gzipenabled
          @Http2Enable = http2enable
          @IdleTimeout = idletimeout
          @ListenerId = listenerid
          @ListenerName = listenername
          @ListenerPort = listenerport
          @ListenerProtocol = listenerprotocol
          @ListenerStatus = listenerstatus
          @ModifyTime = modifytime
          @RequestTimeout = requesttimeout
          @Tags = tags
          @TlsSecurityPolicyId = tlssecuritypolicyid
          @XForwardedForConfig = xforwardedforconfig
        end

        def deserialize(params)
          @CaEnable = params['CaEnable']
          @CreateTime = params['CreateTime']
          @GzipEnabled = params['GzipEnabled']
          @Http2Enable = params['Http2Enable']
          @IdleTimeout = params['IdleTimeout']
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @ListenerPort = params['ListenerPort']
          @ListenerProtocol = params['ListenerProtocol']
          @ListenerStatus = params['ListenerStatus']
          @ModifyTime = params['ModifyTime']
          @RequestTimeout = params['RequestTimeout']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @TlsSecurityPolicyId = params['TlsSecurityPolicyId']
          unless params['XForwardedForConfig'].nil?
            @XForwardedForConfig = XForwardedForConfig.new
            @XForwardedForConfig.deserialize(params['XForwardedForConfig'])
          end
        end
      end

      # 列表展示的应用型负载均衡实例结构。
      class LoadBalancer < TencentCloud::Common::AbstractModel
        # @param AccessLogConfig: 访问日志配置结构。
        # @type AccessLogConfig: :class:`Tencentcloud::Alb.v20251030.models.AccessLogConfig`
        # @param AddressIpVersion: IP 地址版本，取值 IPv4 或 IPv6。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressIpVersion: String
        # @param AddressType: 负载均衡的地址类型。取值：

        # - **Internet**：负载均衡具有公网IP地址，DNS域名被解析到公网IP，因此可以在公网环境访问。

        # - **Intranet**：负载均衡只有私网IP地址，DNS域名被解析到私网IP，因此只能被负载均衡所在VPC的内网环境访问。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressType: String
        # @param CreateTime: 资源创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param DeletionProtection: 删除保护设置信息。
        # @type DeletionProtection: :class:`Tencentcloud::Alb.v20251030.models.DeletionProtectionConfig`
        # @param Domain: DNS域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param LoadBalancerBillingConfig: 负载均衡实例计费配置。
        # @type LoadBalancerBillingConfig: :class:`Tencentcloud::Alb.v20251030.models.LoadBalancerBillingConfig`
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡实例名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerName: String
        # @param LoadBalancerOperationLocks: 负载均衡操作锁配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerOperationLocks: Array
        # @param LoadBalancerStatus: 应用型负载均衡实例状态。取值：

        # - **Provisioning**：创建中。
        # - **Active**: 运行中。
        # - **Configuring**: 变配中。
        # - **Deleting**：删除中。
        # - **ProvisionFailed**：创建失败。
        # - **ConfigureFailed**：变配失败。
        # - **DeletionFailed**：删除失败。
        # - **Abnormal**：异常状态，具体异常原因参见LoadBalancerOperationLocks字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerStatus: String
        # @param ModificationProtection: 修改保护设置信息。
        # @type ModificationProtection: :class:`Tencentcloud::Alb.v20251030.models.ModificationProtectionInfo`
        # @param Tags: 标签列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param VpcId: 私有网络 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String

        attr_accessor :AccessLogConfig, :AddressIpVersion, :AddressType, :CreateTime, :DeletionProtection, :Domain, :LoadBalancerBillingConfig, :LoadBalancerId, :LoadBalancerName, :LoadBalancerOperationLocks, :LoadBalancerStatus, :ModificationProtection, :Tags, :VpcId

        def initialize(accesslogconfig=nil, addressipversion=nil, addresstype=nil, createtime=nil, deletionprotection=nil, domain=nil, loadbalancerbillingconfig=nil, loadbalancerid=nil, loadbalancername=nil, loadbalanceroperationlocks=nil, loadbalancerstatus=nil, modificationprotection=nil, tags=nil, vpcid=nil)
          @AccessLogConfig = accesslogconfig
          @AddressIpVersion = addressipversion
          @AddressType = addresstype
          @CreateTime = createtime
          @DeletionProtection = deletionprotection
          @Domain = domain
          @LoadBalancerBillingConfig = loadbalancerbillingconfig
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @LoadBalancerOperationLocks = loadbalanceroperationlocks
          @LoadBalancerStatus = loadbalancerstatus
          @ModificationProtection = modificationprotection
          @Tags = tags
          @VpcId = vpcid
        end

        def deserialize(params)
          unless params['AccessLogConfig'].nil?
            @AccessLogConfig = AccessLogConfig.new
            @AccessLogConfig.deserialize(params['AccessLogConfig'])
          end
          @AddressIpVersion = params['AddressIpVersion']
          @AddressType = params['AddressType']
          @CreateTime = params['CreateTime']
          unless params['DeletionProtection'].nil?
            @DeletionProtection = DeletionProtectionConfig.new
            @DeletionProtection.deserialize(params['DeletionProtection'])
          end
          @Domain = params['Domain']
          unless params['LoadBalancerBillingConfig'].nil?
            @LoadBalancerBillingConfig = LoadBalancerBillingConfig.new
            @LoadBalancerBillingConfig.deserialize(params['LoadBalancerBillingConfig'])
          end
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          unless params['LoadBalancerOperationLocks'].nil?
            @LoadBalancerOperationLocks = []
            params['LoadBalancerOperationLocks'].each do |i|
              loadbalanceroperationlocksitem_tmp = LoadBalancerOperationLocksItem.new
              loadbalanceroperationlocksitem_tmp.deserialize(i)
              @LoadBalancerOperationLocks << loadbalanceroperationlocksitem_tmp
            end
          end
          @LoadBalancerStatus = params['LoadBalancerStatus']
          unless params['ModificationProtection'].nil?
            @ModificationProtection = ModificationProtectionInfo.new
            @ModificationProtection.deserialize(params['ModificationProtection'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @VpcId = params['VpcId']
        end
      end

      # 应用型负载均衡可用区子网映射中的 IP 信息数据结构
      class LoadBalancerAddress < TencentCloud::Common::AbstractModel
        # @param IPv4Address: IPv4 地址列表
        # @type IPv4Address: Array
        # @param IPv6Address: IPv6 地址列表
        # @type IPv6Address: Array

        attr_accessor :IPv4Address, :IPv6Address

        def initialize(ipv4address=nil, ipv6address=nil)
          @IPv4Address = ipv4address
          @IPv6Address = ipv6address
        end

        def deserialize(params)
          unless params['IPv4Address'].nil?
            @IPv4Address = []
            params['IPv4Address'].each do |i|
              ipaddressinfo_tmp = IPAddressInfo.new
              ipaddressinfo_tmp.deserialize(i)
              @IPv4Address << ipaddressinfo_tmp
            end
          end
          unless params['IPv6Address'].nil?
            @IPv6Address = []
            params['IPv6Address'].each do |i|
              ipaddressinfo_tmp = IPAddressInfo.new
              ipaddressinfo_tmp.deserialize(i)
              @IPv6Address << ipaddressinfo_tmp
            end
          end
        end
      end

      # 应用型负载均衡实例计费配置。
      class LoadBalancerBillingConfig < TencentCloud::Common::AbstractModel
        # @param ChargeType: 实例的计费类型。

        # 取值**POSTPAID_BY_HOUR**：表示按量计费。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeType: String
        # @param BandwidthPackageId: 共享带宽包 ID。
        # @type BandwidthPackageId: String

        attr_accessor :ChargeType, :BandwidthPackageId

        def initialize(chargetype=nil, bandwidthpackageid=nil)
          @ChargeType = chargetype
          @BandwidthPackageId = bandwidthpackageid
        end

        def deserialize(params)
          @ChargeType = params['ChargeType']
          @BandwidthPackageId = params['BandwidthPackageId']
        end
      end

      # 负载均衡详细信息
      class LoadBalancerDetail < TencentCloud::Common::AbstractModel
        # @param AccessLogConfig: 访问日志配置。
        # @type AccessLogConfig: :class:`Tencentcloud::Alb.v20251030.models.AccessLogConfig`
        # @param AddressIpVersion: IP 地址版本，取值 IPv4 或 IPv6。
        # @type AddressIpVersion: String
        # @param AddressType: 应用型负载均衡实例的网络地址类型。取值：

        # - **Internet/Public**：负载均衡具有公网IP地址，DNS域名被解析到公网IP，因此可以在公网环境访问。

        # - **Intranet/Internal**：负载均衡只有私网IP地址，DNS域名被解析到私网IP，因此只能被负载均衡所在VPC的内网环境访问。

        # @type AddressType: String
        # @param CreateTime: 资源创建时间，格式为`yyyy-MM-ddTHH:mm:ss±hh:mm`。
        # @type CreateTime: String
        # @param DeletionProtection: 删除保护设置信息。
        # @type DeletionProtection: :class:`Tencentcloud::Alb.v20251030.models.DeletionProtectionConfig`
        # @param Domain: DNS域名。
        # @type Domain: String
        # @param LoadBalancerBillingConfig: 负载均衡实例付计费配置信息
        # @type LoadBalancerBillingConfig: :class:`Tencentcloud::Alb.v20251030.models.LoadBalancerBillingConfig`
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 实例名称。

        # 长度为1~80个字符，可包含中文、字母、数字、短划线（-）、正斜线（/）、半角句号（.）和下划线（_）。
        # @type LoadBalancerName: String
        # @param LoadBalancerOperationLocks: 应用型负载均衡操作锁配置。
        # @type LoadBalancerOperationLocks: Array
        # @param LoadBalancerStatus: 应用型负载均衡实例状态。取值：

        # - **Provisioning**：创建中。
        # - **Active**: 运行中。
        # - **Configuring**: 变配中。
        # - **Deleting**：删除中。
        # - **ProvisionFailed**：创建失败。
        # - **ConfigureFailed**：变配失败。
        # - **DeletionFailed**：删除失败。
        # - **Abnormal**：异常状态，具体异常原因参见LoadBalancerOperationLocks字段。
        # @type LoadBalancerStatus: String
        # @param ModificationProtection: 修改保护设置信息。
        # @type ModificationProtection: :class:`Tencentcloud::Alb.v20251030.models.ModificationProtectionInfo`
        # @param SecurityGroupIds: 应用型负载均衡实例绑定的安全组ID集合。
        # @type SecurityGroupIds: Array
        # @param Tags: 标签。
        # @type Tags: Array
        # @param VpcId: 私有网络 ID。
        # @type VpcId: String
        # @param ZoneMappings: 可用区及子网映射列表，最多返回10个可用区。若当前地域支持2个及以上可用区，至少返回2个及以上可用区。
        # @type ZoneMappings: Array

        attr_accessor :AccessLogConfig, :AddressIpVersion, :AddressType, :CreateTime, :DeletionProtection, :Domain, :LoadBalancerBillingConfig, :LoadBalancerId, :LoadBalancerName, :LoadBalancerOperationLocks, :LoadBalancerStatus, :ModificationProtection, :SecurityGroupIds, :Tags, :VpcId, :ZoneMappings

        def initialize(accesslogconfig=nil, addressipversion=nil, addresstype=nil, createtime=nil, deletionprotection=nil, domain=nil, loadbalancerbillingconfig=nil, loadbalancerid=nil, loadbalancername=nil, loadbalanceroperationlocks=nil, loadbalancerstatus=nil, modificationprotection=nil, securitygroupids=nil, tags=nil, vpcid=nil, zonemappings=nil)
          @AccessLogConfig = accesslogconfig
          @AddressIpVersion = addressipversion
          @AddressType = addresstype
          @CreateTime = createtime
          @DeletionProtection = deletionprotection
          @Domain = domain
          @LoadBalancerBillingConfig = loadbalancerbillingconfig
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @LoadBalancerOperationLocks = loadbalanceroperationlocks
          @LoadBalancerStatus = loadbalancerstatus
          @ModificationProtection = modificationprotection
          @SecurityGroupIds = securitygroupids
          @Tags = tags
          @VpcId = vpcid
          @ZoneMappings = zonemappings
        end

        def deserialize(params)
          unless params['AccessLogConfig'].nil?
            @AccessLogConfig = AccessLogConfig.new
            @AccessLogConfig.deserialize(params['AccessLogConfig'])
          end
          @AddressIpVersion = params['AddressIpVersion']
          @AddressType = params['AddressType']
          @CreateTime = params['CreateTime']
          unless params['DeletionProtection'].nil?
            @DeletionProtection = DeletionProtectionConfig.new
            @DeletionProtection.deserialize(params['DeletionProtection'])
          end
          @Domain = params['Domain']
          unless params['LoadBalancerBillingConfig'].nil?
            @LoadBalancerBillingConfig = LoadBalancerBillingConfig.new
            @LoadBalancerBillingConfig.deserialize(params['LoadBalancerBillingConfig'])
          end
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          unless params['LoadBalancerOperationLocks'].nil?
            @LoadBalancerOperationLocks = []
            params['LoadBalancerOperationLocks'].each do |i|
              loadbalanceroperationlocksitem_tmp = LoadBalancerOperationLocksItem.new
              loadbalanceroperationlocksitem_tmp.deserialize(i)
              @LoadBalancerOperationLocks << loadbalanceroperationlocksitem_tmp
            end
          end
          @LoadBalancerStatus = params['LoadBalancerStatus']
          unless params['ModificationProtection'].nil?
            @ModificationProtection = ModificationProtectionInfo.new
            @ModificationProtection.deserialize(params['ModificationProtection'])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @VpcId = params['VpcId']
          unless params['ZoneMappings'].nil?
            @ZoneMappings = []
            params['ZoneMappings'].each do |i|
              zonemappinginfo_tmp = ZoneMappingInfo.new
              zonemappinginfo_tmp.deserialize(i)
              @ZoneMappings << zonemappinginfo_tmp
            end
          end
        end
      end

      # 应用型负载均衡操作锁配置。
      class LoadBalancerOperationLocksItem < TencentCloud::Common::AbstractModel
        # @param LockReason: 锁定的原因。在**LoadBalancerStatus**为**Abnormal**时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LockReason: String
        # @param LockType: 锁定的类型。取值 ：

        # - **SecurityLocked**：安全锁定。

        # - **RelatedResourceLocked**：关联锁定。

        # - **FinancialLocked**：欠费锁定。

        # - **ResidualLocked**：残留锁定。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LockType: String

        attr_accessor :LockReason, :LockType

        def initialize(lockreason=nil, locktype=nil)
          @LockReason = lockreason
          @LockType = locktype
        end

        def deserialize(params)
          @LockReason = params['LockReason']
          @LockType = params['LockType']
        end
      end

      # 修改保护状态信息。
      class ModificationProtectionInfo < TencentCloud::Common::AbstractModel
        # @param ModificationProtectionEnabled: 是否开启修改保护。开启后，可防止实例被意外修改或删除。
        # - true：开启修改保护
        # - false：关闭修改保护
        # @type ModificationProtectionEnabled: Boolean
        # @param OperatorUin: 1238716123
        # @type OperatorUin: String
        # @param Reason: 开启修改保护的原因说明。
        # 长度为 1~255 个字符，必须是中文和无害字符串中的字符， 可包含中文、字母、数字、短划线（-）、正斜线（/）、半角句号（.）、下划线（_）。
        # @type Reason: String

        attr_accessor :ModificationProtectionEnabled, :OperatorUin, :Reason

        def initialize(modificationprotectionenabled=nil, operatoruin=nil, reason=nil)
          @ModificationProtectionEnabled = modificationprotectionenabled
          @OperatorUin = operatoruin
          @Reason = reason
        end

        def deserialize(params)
          @ModificationProtectionEnabled = params['ModificationProtectionEnabled']
          @OperatorUin = params['OperatorUin']
          @Reason = params['Reason']
        end
      end

      # ModifyHealthCheckTemplate请求参数结构体
      class ModifyHealthCheckTemplateRequest < TencentCloud::Common::AbstractModel
        # @param HealthCheckTemplateId: 健康检查模板 ID，格式为 hct- 后接字母数字。
        # @type HealthCheckTemplateId: String
        # @param DryRun: 是否预览此次请求。
        # - **false**（默认）：发送普通请求，直接修改健康检查模板。
        # - **true**：发送预览请求，检查修改健康检查模板的参数、格式、业务限制等是否符合要求。
        # @type DryRun: Boolean
        # @param HealthCheckCodes: 健康检查状态码。取值：
        # - 当健康检查协议为**HTTP/HTTPS**时：
        # 	- **http_1xx**
        # 	- **http_2xx**（默认值）
        # 	-  **http_3xx**
        # 	-  **http_4xx**
        # 	-  **http_5xx**
        # - 当健康检查协议为**GRPC/GRPCS**时：默认值为**12**，数值范围为**0-99**，输入值可为数值、多个数值或者范围以及相互组合，如：
        # 	- **"20"**
        # 	- **"0-99"**
        # @type HealthCheckCodes: Array
        # @param HealthCheckHealthyThreshold: 判定后端服务健康的阈值，当健康检查连续成功多少次后，后端服务的状态由**不健康**变为**健康**。
        # 取值范围：**2**-**10**。
        # 默认值：**2**。
        # @type HealthCheckHealthyThreshold: Integer
        # @param HealthCheckHost: 健康检查域名。
        # 长度限制为 **1-255** 个字符。
        # 可包含小写字母、数字、短划线（-）和半角句号（.）。

        # > 仅当 **HealthCheckProtocol** 设置为 **HTTP/HTTPS/GRPC/GRPCS** 时，该参数生效。
        # @type HealthCheckHost: String
        # @param HealthCheckHttpVersion: 健康检查 HTTP 协议版本，取值：
        # - **HTTP1.1**（默认）
        # - **HTTP1.0**
        # > 仅当**HealthCheckProtocol**设置为**HTTP** 或 **HTTPS** 时，该参数生效。
        # @type HealthCheckHttpVersion: String
        # @param HealthCheckInterval: 健康检查的时间间隔。单位：秒。 取值范围：**2**-**300**。 默认值：**5**。
        # @type HealthCheckInterval: Integer
        # @param HealthCheckMethod: 健康检查方法，取值： - **GET** - **HEAD**（默认值）
        # > 仅当**HealthCheckProtocol**设置为**HTTP** 或 **HTTPS** 时，该参数生效。
        # @type HealthCheckMethod: String
        # @param HealthCheckPath: 健康检查的转发规则路径。 长度为 **1-80** 个字符，只能使用字母、数字、字符`-/.%?#&=`以及扩展字符`_;~!（)*[]@$^:',+`。 URL 必须以正斜线（/）开头。
        # > 仅当**HealthCheckProtocol**为**HTTP/HTTPS/GRPC/GRPCS**时，转发规则路径参数生效。
        # @type HealthCheckPath: String
        # @param HealthCheckPort: 健康检查访问后端服务器的端口。  取值范围：**0-65535**。  默认值：**0**，表示后端服务器的端口。
        # @type HealthCheckPort: Integer
        # @param HealthCheckProtocol: 健康检查协议。取值：
        # - **HTTP**（默认）：通过发送 HEAD 或 GET 请求模拟浏览器的访问行为来检查服务器应用是否健康。
        # - **HTTPS**：通过发送 HEAD 或 GET 请求模拟浏览器的访问行为来检查服务器应用是否健康。（数据加密，相比 HTTP 更安全。）
        # - **TCP**：通过发送 SYN 握手报文来检测服务器端口是否存活。
        # - **GRPC**：通过发送 POST 或 GET 请求来检查服务器应用是否健康。
        # - **GRPCS**：通过发送 POST 或 GET 请求来检查服务器应用是否健康。
        # @type HealthCheckProtocol: String
        # @param HealthCheckTemplateName: 健康检查模板名称。长度为 **1-255** 个字符，可包含数字、大小写字母、中文、半角句号（.）、下划线（_）和短划线（-）。
        # @type HealthCheckTemplateName: String
        # @param HealthCheckTimeout: 健康检查的响应超时时间。单位：秒。
        # 取值范围：**2**-**60**。
        # 默认值：**2**。
        # @type HealthCheckTimeout: Integer
        # @param HealthCheckUnhealthyThreshold: 判定后端服务不健康的阈值，当健康检查连续失败多少次后，后端服务的状态由**健康**变为**不健康**。
        # 取值范围：**2**-**10**。
        # 默认值：**2**。
        # @type HealthCheckUnhealthyThreshold: Integer
        # @param Tags: 标签。
        # @type Tags: Array

        attr_accessor :HealthCheckTemplateId, :DryRun, :HealthCheckCodes, :HealthCheckHealthyThreshold, :HealthCheckHost, :HealthCheckHttpVersion, :HealthCheckInterval, :HealthCheckMethod, :HealthCheckPath, :HealthCheckPort, :HealthCheckProtocol, :HealthCheckTemplateName, :HealthCheckTimeout, :HealthCheckUnhealthyThreshold, :Tags

        def initialize(healthchecktemplateid=nil, dryrun=nil, healthcheckcodes=nil, healthcheckhealthythreshold=nil, healthcheckhost=nil, healthcheckhttpversion=nil, healthcheckinterval=nil, healthcheckmethod=nil, healthcheckpath=nil, healthcheckport=nil, healthcheckprotocol=nil, healthchecktemplatename=nil, healthchecktimeout=nil, healthcheckunhealthythreshold=nil, tags=nil)
          @HealthCheckTemplateId = healthchecktemplateid
          @DryRun = dryrun
          @HealthCheckCodes = healthcheckcodes
          @HealthCheckHealthyThreshold = healthcheckhealthythreshold
          @HealthCheckHost = healthcheckhost
          @HealthCheckHttpVersion = healthcheckhttpversion
          @HealthCheckInterval = healthcheckinterval
          @HealthCheckMethod = healthcheckmethod
          @HealthCheckPath = healthcheckpath
          @HealthCheckPort = healthcheckport
          @HealthCheckProtocol = healthcheckprotocol
          @HealthCheckTemplateName = healthchecktemplatename
          @HealthCheckTimeout = healthchecktimeout
          @HealthCheckUnhealthyThreshold = healthcheckunhealthythreshold
          @Tags = tags
        end

        def deserialize(params)
          @HealthCheckTemplateId = params['HealthCheckTemplateId']
          @DryRun = params['DryRun']
          @HealthCheckCodes = params['HealthCheckCodes']
          @HealthCheckHealthyThreshold = params['HealthCheckHealthyThreshold']
          @HealthCheckHost = params['HealthCheckHost']
          @HealthCheckHttpVersion = params['HealthCheckHttpVersion']
          @HealthCheckInterval = params['HealthCheckInterval']
          @HealthCheckMethod = params['HealthCheckMethod']
          @HealthCheckPath = params['HealthCheckPath']
          @HealthCheckPort = params['HealthCheckPort']
          @HealthCheckProtocol = params['HealthCheckProtocol']
          @HealthCheckTemplateName = params['HealthCheckTemplateName']
          @HealthCheckTimeout = params['HealthCheckTimeout']
          @HealthCheckUnhealthyThreshold = params['HealthCheckUnhealthyThreshold']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
        end
      end

      # ModifyHealthCheckTemplate返回参数结构体
      class ModifyHealthCheckTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyListenerAttributes请求参数结构体
      class ModifyListenerAttributesRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器 ID，格式为 lst- 后接 8 位字母数字。
        # @type ListenerId: String
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param CaCertificateIds: 监听器配置的CA证书ID列表。目前仅支持添加1个CA证书。
        # @type CaCertificateIds: Array
        # @param CaEnabled: 是否开启双向认证。
        # 取值：
        # true：开启。
        # false（默认值）：不开启。
        # @type CaEnabled: Boolean
        # @param CertificateIds: 服务器证书 ID 列表。
        # @type CertificateIds: Array
        # @param ClientToken: 客户端Token，用于保证请求的幂等性。

        # 从您的客户端生成一个参数值，确保不同请求间该参数值唯一。ClientToken只支持ASCII字符。
        # @type ClientToken: String
        # @param DefaultActions: 默认转发规则动作列表。目前监听器仅支持添加 1 个默认转发规则动作。
        # @type DefaultActions: Array
        # @param GzipEnabled: 是否启用 Gzip 压缩。
        # @type GzipEnabled: Boolean
        # @param Http2Enabled: 是否开启HTTP/2特性。只有 HTTPS 协议支持此参数。
        # @type Http2Enabled: Boolean
        # @param IdleTimeout: 指定连接空闲超时时间。单位：秒。
        # 取值范围：1~600。
        # 默认值：15。
        # 如果在设定时间内一直没有访问请求，负载均衡会暂时断开当前连接，下次请求来临时重新建立新的连接。
        # @type IdleTimeout: Integer
        # @param ListenerName: 自定义监听名称。  长度为 1~255 个字符，必须是中文和无害字符串中的字符，  可包含中文、字母、数字、短划线（-）、正斜线（/）、半角句号（.）、下划线（_）。
        # @type ListenerName: String
        # @param RequestTimeout: 指定请求超时时间。单位：秒。
        # 取值：1~600。
        # 默认值：60。
        # 如果在超时时间内后端服务器一直没有响应，负载均衡将放弃等待，并给客户端返回HTTP 504错误码。
        # @type RequestTimeout: Integer
        # @param SecurityPolicyId: 安全策略 ID，格式为 tls- 后接 8 位字母数字。
        # @type SecurityPolicyId: String
        # @param XForwardedForConfig: XForwardedFor配置。
        # @type XForwardedForConfig: :class:`Tencentcloud::Alb.v20251030.models.XForwardedForConfig`

        attr_accessor :ListenerId, :LoadBalancerId, :CaCertificateIds, :CaEnabled, :CertificateIds, :ClientToken, :DefaultActions, :GzipEnabled, :Http2Enabled, :IdleTimeout, :ListenerName, :RequestTimeout, :SecurityPolicyId, :XForwardedForConfig

        def initialize(listenerid=nil, loadbalancerid=nil, cacertificateids=nil, caenabled=nil, certificateids=nil, clienttoken=nil, defaultactions=nil, gzipenabled=nil, http2enabled=nil, idletimeout=nil, listenername=nil, requesttimeout=nil, securitypolicyid=nil, xforwardedforconfig=nil)
          @ListenerId = listenerid
          @LoadBalancerId = loadbalancerid
          @CaCertificateIds = cacertificateids
          @CaEnabled = caenabled
          @CertificateIds = certificateids
          @ClientToken = clienttoken
          @DefaultActions = defaultactions
          @GzipEnabled = gzipenabled
          @Http2Enabled = http2enabled
          @IdleTimeout = idletimeout
          @ListenerName = listenername
          @RequestTimeout = requesttimeout
          @SecurityPolicyId = securitypolicyid
          @XForwardedForConfig = xforwardedforconfig
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @LoadBalancerId = params['LoadBalancerId']
          @CaCertificateIds = params['CaCertificateIds']
          @CaEnabled = params['CaEnabled']
          @CertificateIds = params['CertificateIds']
          @ClientToken = params['ClientToken']
          unless params['DefaultActions'].nil?
            @DefaultActions = []
            params['DefaultActions'].each do |i|
              defaultaction_tmp = DefaultAction.new
              defaultaction_tmp.deserialize(i)
              @DefaultActions << defaultaction_tmp
            end
          end
          @GzipEnabled = params['GzipEnabled']
          @Http2Enabled = params['Http2Enabled']
          @IdleTimeout = params['IdleTimeout']
          @ListenerName = params['ListenerName']
          @RequestTimeout = params['RequestTimeout']
          @SecurityPolicyId = params['SecurityPolicyId']
          unless params['XForwardedForConfig'].nil?
            @XForwardedForConfig = XForwardedForConfig.new
            @XForwardedForConfig.deserialize(params['XForwardedForConfig'])
          end
        end
      end

      # ModifyListenerAttributes返回参数结构体
      class ModifyListenerAttributesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLoadBalancerAddressType请求参数结构体
      class ModifyLoadBalancerAddressTypeRequest < TencentCloud::Common::AbstractModel
        # @param AddressType: 目标网络类型。取值：
        # - **Internet**（公网型）
        # 负载均衡实例分配公网 IP 地址，域名（DNS）解析至公网 IP，可在公网环境中直接访问，适用于对外提供服务的业务场景。
        # - **Intranet**（内网型）
        # 负载均衡实例仅分配私网 IP 地址，域名（DNS）解析至私网 IP，仅支持在负载均衡实例所属 VPC 内的内网环境访问，适用于内部业务或对安全性要求较高的场景。
        # @type AddressType: String
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param BandwidthPackageId: 共享带宽包 ID。
        # @type BandwidthPackageId: String
        # @param DryRun: 是否只预检此次请求。取值：
        # - **true**：发送检查请求，不会更新实例的网络类型。检查项包括是否填写了必需参数、请求格式、业务限制。如果检查不通过，则返回对应错误。如果检查通过，则返回错误码DryRunOperation。
        # - **false**（默认值）：发送正常请求，通过检查后返回 HTTP 2xx 状态码并直接进行操作。
        # @type DryRun: Boolean
        # @param ZoneMappings: 可用区及子网映射结构体。
        # 若当前地域支持 2 个及以上的可用区，至少需要添加 2 个可用区。
        # @type ZoneMappings: Array

        attr_accessor :AddressType, :LoadBalancerId, :BandwidthPackageId, :DryRun, :ZoneMappings

        def initialize(addresstype=nil, loadbalancerid=nil, bandwidthpackageid=nil, dryrun=nil, zonemappings=nil)
          @AddressType = addresstype
          @LoadBalancerId = loadbalancerid
          @BandwidthPackageId = bandwidthpackageid
          @DryRun = dryrun
          @ZoneMappings = zonemappings
        end

        def deserialize(params)
          @AddressType = params['AddressType']
          @LoadBalancerId = params['LoadBalancerId']
          @BandwidthPackageId = params['BandwidthPackageId']
          @DryRun = params['DryRun']
          unless params['ZoneMappings'].nil?
            @ZoneMappings = []
            params['ZoneMappings'].each do |i|
              zonemappingsitem_tmp = ZoneMappingsItem.new
              zonemappingsitem_tmp.deserialize(i)
              @ZoneMappings << zonemappingsitem_tmp
            end
          end
        end
      end

      # ModifyLoadBalancerAddressType返回参数结构体
      class ModifyLoadBalancerAddressTypeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLoadBalancerAttributes请求参数结构体
      class ModifyLoadBalancerAttributesRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param ClientToken: 客户端Token，用于保证请求的幂等性。

        # 从您的客户端生成一个参数值，确保不同请求间该参数值唯一。ClientToken只支持ASCII字符。

        # > 若您未指定，则系统自动使用API请求的**RequestId**作为**ClientToken**标识。每次API请求的**RequestId**不一样。
        # @type ClientToken: String
        # @param DeletionProtection: 删除保护配置
        # @type DeletionProtection: :class:`Tencentcloud::Alb.v20251030.models.DeletionProtectionConfig`
        # @param DryRun: 是否只预检此次请求，取值：

        # - **true**：发送检查请求，不会修改应用型负载均衡实例的属性。检查项包括是否填写了必需参数、请求格式、业务限制。如果检查不通过，则返回对应错误。如果检查通过，则返回错误码`DryRunOperation`。

        # - **false**（默认值）：发送正常请求，通过检查后返回`HTTP_2xx`状态码并直接进行操作。
        # @type DryRun: Boolean
        # @param LoadBalancerName: 应用型负载均衡实例名称。长度为1~80个字符，可包含中文、字母、数字、短划线（-）、正斜线（/）、半角句号（.）和下划线（_）。
        # @type LoadBalancerName: String

        attr_accessor :LoadBalancerId, :ClientToken, :DeletionProtection, :DryRun, :LoadBalancerName

        def initialize(loadbalancerid=nil, clienttoken=nil, deletionprotection=nil, dryrun=nil, loadbalancername=nil)
          @LoadBalancerId = loadbalancerid
          @ClientToken = clienttoken
          @DeletionProtection = deletionprotection
          @DryRun = dryrun
          @LoadBalancerName = loadbalancername
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ClientToken = params['ClientToken']
          unless params['DeletionProtection'].nil?
            @DeletionProtection = DeletionProtectionConfig.new
            @DeletionProtection.deserialize(params['DeletionProtection'])
          end
          @DryRun = params['DryRun']
          @LoadBalancerName = params['LoadBalancerName']
        end
      end

      # ModifyLoadBalancerAttributes返回参数结构体
      class ModifyLoadBalancerAttributesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLoadBalancerModificationProtection请求参数结构体
      class ModifyLoadBalancerModificationProtectionRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param ModificationProtectionEnabled: 是否开启修改保护。开启后，可防止实例被意外修改或删除。\n- true：开启修改保护\n- false：关闭修改保护
        # @type ModificationProtectionEnabled: Boolean
        # @param DryRun: 是否只预检此次请求。取值：
        # - true：仅执行预检，不实际操作资源。检查参数完整性、请求格式及业务限制，通过返回 DryRunOperation，不通过返回对应错误。
        # - false（默认）：执行正常请求，检查通过后直接操作资源。
        # @type DryRun: Boolean
        # @param Reason: 开启修改保护的原因说明。
        # 长度为 1~255 个字符，必须是中文和无害字符串中的字符， 可包含中文、字母、数字、短划线（-）、正斜线（/）、半角句号（.）、下划线（_）。
        # @type Reason: String

        attr_accessor :LoadBalancerId, :ModificationProtectionEnabled, :DryRun, :Reason

        def initialize(loadbalancerid=nil, modificationprotectionenabled=nil, dryrun=nil, reason=nil)
          @LoadBalancerId = loadbalancerid
          @ModificationProtectionEnabled = modificationprotectionenabled
          @DryRun = dryrun
          @Reason = reason
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ModificationProtectionEnabled = params['ModificationProtectionEnabled']
          @DryRun = params['DryRun']
          @Reason = params['Reason']
        end
      end

      # ModifyLoadBalancerModificationProtection返回参数结构体
      class ModifyLoadBalancerModificationProtectionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRulesAttributes请求参数结构体
      class ModifyRulesAttributesRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器 ID，格式为 lst- 后接 8 位字母数字。
        # @type ListenerId: String
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param Rules: 转发规则列表。
        # @type Rules: Array
        # @param DryRun: 是否只预检查此次请求。
        # @type DryRun: Boolean

        attr_accessor :ListenerId, :LoadBalancerId, :Rules, :DryRun

        def initialize(listenerid=nil, loadbalancerid=nil, rules=nil, dryrun=nil)
          @ListenerId = listenerid
          @LoadBalancerId = loadbalancerid
          @Rules = rules
          @DryRun = dryrun
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @LoadBalancerId = params['LoadBalancerId']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              rulemodify_tmp = RuleModify.new
              rulemodify_tmp.deserialize(i)
              @Rules << rulemodify_tmp
            end
          end
          @DryRun = params['DryRun']
        end
      end

      # ModifyRulesAttributes返回参数结构体
      class ModifyRulesAttributesResponse < TencentCloud::Common::AbstractModel
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

      # ModifySecurityPolicyAttributes请求参数结构体
      class ModifySecurityPolicyAttributesRequest < TencentCloud::Common::AbstractModel
        # @param SecurityPolicyId: <p>安全策略 ID，格式为 tls- 后接 8 位字母数字。</p>
        # @type SecurityPolicyId: String
        # @param Ciphers: <p>修改后的加密套件列表。加密套件用于协商客户端与服务端之间的加密算法。</p><p><strong>配置说明：</strong></p><ul><li>加密套件的可选范围取决于所选的 TLS 协议版本（TLSVersions 参数）。</li><li>只要加密套件被任意一个已选 TLS 版本支持，即可添加到列表中。</li><li>若 TLSVersions 包含 TLSv1.3：可不指定 TLSv1.3 专属加密套件（系统将自动补全全部 TLSv1.3 套件）；若指定，则必须包含全部 TLSv1.3 专属加密套件，不支持仅指定部分。</li></ul><p><strong>获取可用加密套件：</strong><br>请调用 <a href="https://cloud.tencent.com/document/api/1822/133718">DescribeSecurityPolicyCapabilities</a> 接口查询各 TLS 版本支持的加密套件列表。</p><p><strong>注意：</strong> 若不传此参数，则保持原有配置不变。</p>
        # @type Ciphers: Array
        # @param DryRun: <p>是否仅执行预检请求。取值：</p><ul><li><strong>true</strong>：仅执行预检请求，不实际修改资源。预检请求将验证参数格式、权限及配置有效性等，帮助您在正式操作前发现潜在问题。</li><li><strong>false</strong>（默认）：执行正常请求，通过预检后将直接修改安全策略。</li></ul>
        # @type DryRun: Boolean
        # @param SecurityPolicyName: <p>修改后的安全策略名称。用于标识和区分不同的安全策略。</p><p><strong>命名规则：</strong></p><ul><li>长度为 2~128 个字符。</li><li>必须以英文字母或中文开头。</li><li>可包含英文字母、中文、数字、半角句号（.）、下划线（_）和短划线（-）。</li></ul><p><strong>注意：</strong> 若不传此参数，则保持原有名称不变。</p>
        # @type SecurityPolicyName: String
        # @param TLSVersions: <p>修改后的 TLS 协议版本列表。TLS（Transport Layer Security）协议用于保障客户端与负载均衡之间的通信安全。</p><p><strong>可选值：</strong></p><ul><li><strong>TLSv1.0</strong>：兼容性最好，但安全性较低，不推荐在生产环境使用。</li><li><strong>TLSv1.1</strong>：安全性略优于 TLSv1.0，但仍不推荐。</li><li><strong>TLSv1.2</strong>：目前主流的安全协议版本，兼顾安全性与兼容性。</li><li><strong>TLSv1.3</strong>：最新版本，安全性最高，性能更优，推荐优先使用。</li></ul><p><strong>注意：</strong> </p><ul><li>若不传此参数，则保持原有配置不变。</li><li>修改 TLS 版本时，请同步检查 Ciphers 参数的配置是否兼容。</li></ul>
        # @type TLSVersions: Array

        attr_accessor :SecurityPolicyId, :Ciphers, :DryRun, :SecurityPolicyName, :TLSVersions

        def initialize(securitypolicyid=nil, ciphers=nil, dryrun=nil, securitypolicyname=nil, tlsversions=nil)
          @SecurityPolicyId = securitypolicyid
          @Ciphers = ciphers
          @DryRun = dryrun
          @SecurityPolicyName = securitypolicyname
          @TLSVersions = tlsversions
        end

        def deserialize(params)
          @SecurityPolicyId = params['SecurityPolicyId']
          @Ciphers = params['Ciphers']
          @DryRun = params['DryRun']
          @SecurityPolicyName = params['SecurityPolicyName']
          @TLSVersions = params['TLSVersions']
        end
      end

      # ModifySecurityPolicyAttributes返回参数结构体
      class ModifySecurityPolicyAttributesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTargetGroupAttributes请求参数结构体
      class ModifyTargetGroupAttributesRequest < TencentCloud::Common::AbstractModel
        # @param DryRun: <p>是否预览此次请求。</p><ul><li><strong>false</strong>（默认）：发送普通请求，直接修改目标组。</li><li><strong>true</strong>：发送预览请求，检查修改目标组的参数、格式、业务限制等是否符合要求。</li></ul>
        # @type DryRun: Boolean
        # @param HealthCheckConfig: <p>健康检查配置。</p>
        # @type HealthCheckConfig: :class:`Tencentcloud::Alb.v20251030.models.HealthCheckConfig`
        # @param KeepaliveEnabled: <p>是否开启长连接。</p>
        # @type KeepaliveEnabled: Boolean
        # @param SchedulerAlgorithm: <p>调度算法。取值：</p><ul><li><strong>wrr</strong>：加权轮询，按照权重选择后端服务器，权重越高的服务器被轮询到的概率越高。</li><li><strong>wlc</strong>：加权最小连接数，当不同后端服务器权重值相同时，当前连接数越小的后端服务器被轮询到的概率越高。</li></ul>
        # @type SchedulerAlgorithm: String
        # @param StickySessionConfig: <p>会话保持配置。</p>
        # @type StickySessionConfig: :class:`Tencentcloud::Alb.v20251030.models.StickySessionConfig`
        # @param TargetGroupId: <p>目标组 ID，格式为 lbtg- 后接 8 位字母数字。</p>
        # @type TargetGroupId: String
        # @param TargetGroupName: <p>目标组名称。长度为 1~255 个字符，可包含数字、大小写字母、中文、半角句号（.）、下划线（_）和短划线（-）。不传目标组名称时默认使用ID作为目标组名称。</p>
        # @type TargetGroupName: String

        attr_accessor :DryRun, :HealthCheckConfig, :KeepaliveEnabled, :SchedulerAlgorithm, :StickySessionConfig, :TargetGroupId, :TargetGroupName

        def initialize(dryrun=nil, healthcheckconfig=nil, keepaliveenabled=nil, scheduleralgorithm=nil, stickysessionconfig=nil, targetgroupid=nil, targetgroupname=nil)
          @DryRun = dryrun
          @HealthCheckConfig = healthcheckconfig
          @KeepaliveEnabled = keepaliveenabled
          @SchedulerAlgorithm = scheduleralgorithm
          @StickySessionConfig = stickysessionconfig
          @TargetGroupId = targetgroupid
          @TargetGroupName = targetgroupname
        end

        def deserialize(params)
          @DryRun = params['DryRun']
          unless params['HealthCheckConfig'].nil?
            @HealthCheckConfig = HealthCheckConfig.new
            @HealthCheckConfig.deserialize(params['HealthCheckConfig'])
          end
          @KeepaliveEnabled = params['KeepaliveEnabled']
          @SchedulerAlgorithm = params['SchedulerAlgorithm']
          unless params['StickySessionConfig'].nil?
            @StickySessionConfig = StickySessionConfig.new
            @StickySessionConfig.deserialize(params['StickySessionConfig'])
          end
          @TargetGroupId = params['TargetGroupId']
          @TargetGroupName = params['TargetGroupName']
        end
      end

      # ModifyTargetGroupAttributes返回参数结构体
      class ModifyTargetGroupAttributesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTargetsInTargetGroup请求参数结构体
      class ModifyTargetsInTargetGroupRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组 ID，格式为 lbtg- 后接 8 位字母数字。
        # @type TargetGroupId: String
        # @param Targets: 需要修改的后端服务列表。
        # @type Targets: Array
        # @param DryRun: 是否预览此次请求。
        # - **false**（默认）：发送普通请求，直接修改后端服务信息。
        # - **true**：发送预览请求，检查修改后端服务的参数、格式、业务限制等是否符合要求。
        # @type DryRun: Boolean

        attr_accessor :TargetGroupId, :Targets, :DryRun

        def initialize(targetgroupid=nil, targets=nil, dryrun=nil)
          @TargetGroupId = targetgroupid
          @Targets = targets
          @DryRun = dryrun
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              targettomodify_tmp = TargetToModify.new
              targettomodify_tmp.deserialize(i)
              @Targets << targettomodify_tmp
            end
          end
          @DryRun = params['DryRun']
        end
      end

      # ModifyTargetsInTargetGroup返回参数结构体
      class ModifyTargetsInTargetGroupResponse < TencentCloud::Common::AbstractModel
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

      # NotifyUnbindTarget请求参数结构体
      class NotifyUnbindTargetRequest < TencentCloud::Common::AbstractModel
        # @param Ips: 后端服务的IP列表。
        # > **VpcId**（**NumericVpcId**）、**Ips**必须同时设置。
        # @type Ips: Array
        # @param NumericVpcId: 后端服务所属VPC的数字ID。
        # > **VpcId**（**NumericVpcId**）、**Ips**必须同时设置。
        # @type NumericVpcId: Integer

        attr_accessor :Ips, :NumericVpcId

        def initialize(ips=nil, numericvpcid=nil)
          @Ips = ips
          @NumericVpcId = numericvpcid
        end

        def deserialize(params)
          @Ips = params['Ips']
          @NumericVpcId = params['NumericVpcId']
        end
      end

      # NotifyUnbindTarget返回参数结构体
      class NotifyUnbindTargetResponse < TencentCloud::Common::AbstractModel
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

      # 描述了后付费计费项的价格信息
      class PostPayPriceInfo < TencentCloud::Common::AbstractModel
        # @param Discount: 折扣，如20.0代表2折。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Discount: Float
        # @param UnitPrice: 单价，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPrice: Float
        # @param UnitPriceDiscount: 折扣单价，单位:元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceDiscount: Float

        attr_accessor :Discount, :UnitPrice, :UnitPriceDiscount

        def initialize(discount=nil, unitprice=nil, unitpricediscount=nil)
          @Discount = discount
          @UnitPrice = unitprice
          @UnitPriceDiscount = unitpricediscount
        end

        def deserialize(params)
          @Discount = params['Discount']
          @UnitPrice = params['UnitPrice']
          @UnitPriceDiscount = params['UnitPriceDiscount']
        end
      end

      # 表示负载均衡的价格
      class Price < TencentCloud::Common::AbstractModel
        # @param InstancePrice: 描述了实例价格，单位：元/小时。
        # @type InstancePrice: :class:`Tencentcloud::Alb.v20251030.models.PostPayPriceInfo`
        # @param LcuPrice: 描述了lcu价格，单位：元/个。
        # @type LcuPrice: :class:`Tencentcloud::Alb.v20251030.models.PostPayPriceInfo`

        attr_accessor :InstancePrice, :LcuPrice

        def initialize(instanceprice=nil, lcuprice=nil)
          @InstancePrice = instanceprice
          @LcuPrice = lcuprice
        end

        def deserialize(params)
          unless params['InstancePrice'].nil?
            @InstancePrice = PostPayPriceInfo.new
            @InstancePrice.deserialize(params['InstancePrice'])
          end
          unless params['LcuPrice'].nil?
            @LcuPrice = PostPayPriceInfo.new
            @LcuPrice.deserialize(params['LcuPrice'])
          end
        end
      end

      # 单个配额项的查询结果。每个结果对应一个配额类型；当请求中传入 ResourceIds 时，每个结果还会对应一个具体资源。
      class QuotaInfo < TencentCloud::Common::AbstractModel
        # @param Available: 当前剩余可用量，计算方式为 Limit - Used。仅当请求参数 DisplayFields 包含 available 时返回有效值；未请求时不返回或为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Available: Integer
        # @param Limit: 配额上限值。不同配额类型的单位不同，通常表示资源个数；超时时间类配额表示秒。
        # @type Limit: Integer
        # @param QuotaType: 配额类型，与请求参数 QuotaTypes 中的取值对应。每种配额类型的含义请参考 QuotaTypes 参数说明。
        # @type QuotaType: String
        # @param ResourceId: 资源 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param Used: 当前已使用量。仅当请求参数 DisplayFields 包含 used 时返回有效值；未请求时不返回或为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Used: Integer

        attr_accessor :Available, :Limit, :QuotaType, :ResourceId, :Used

        def initialize(available=nil, limit=nil, quotatype=nil, resourceid=nil, used=nil)
          @Available = available
          @Limit = limit
          @QuotaType = quotatype
          @ResourceId = resourceid
          @Used = used
        end

        def deserialize(params)
          @Available = params['Available']
          @Limit = params['Limit']
          @QuotaType = params['QuotaType']
          @ResourceId = params['ResourceId']
          @Used = params['Used']
        end
      end

      # 关联监听器信息
      class RelatedListener < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器 ID，格式为 lst- 后接 8 位字母数字。
        # @type ListenerId: String
        # @param ListenerPort: 监听器端口。
        # @type ListenerPort: Integer
        # @param ListenerProtocol: 监听器协议。
        # @type ListenerProtocol: String
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String

        attr_accessor :ListenerId, :ListenerPort, :ListenerProtocol, :LoadBalancerId

        def initialize(listenerid=nil, listenerport=nil, listenerprotocol=nil, loadbalancerid=nil)
          @ListenerId = listenerid
          @ListenerPort = listenerport
          @ListenerProtocol = listenerprotocol
          @LoadBalancerId = loadbalancerid
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerPort = params['ListenerPort']
          @ListenerProtocol = params['ListenerProtocol']
          @LoadBalancerId = params['LoadBalancerId']
        end
      end

      # 删除HTTP Header信息
      class RemoveHTTPHeaderInfo < TencentCloud::Common::AbstractModel
        # @param Key: 要删除的HTTP Header的键，长度1 ~ 40个字符，支持的字符集为：a-z A-Z 0-9 - _ 。
        # 不支持Cookie,Host,Content-Length,Connection,Upgrade,transfer-encoding,keep-alive,te,authority,x-forwarded-for,x-forwarded-proto,x-forwarded-host,x-forwarded-port,server
        # @type Key: String

        attr_accessor :Key

        def initialize(key=nil)
          @Key = key
        end

        def deserialize(params)
          @Key = params['Key']
        end
      end

      # RemoveTargetsFromTargetGroup请求参数结构体
      class RemoveTargetsFromTargetGroupRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组 ID，格式为 lbtg- 后接 8 位字母数字。
        # @type TargetGroupId: String
        # @param Targets: 需要从目标组移除的后端服务列表。单次请求最多移除 **50** 个后端服务。
        # @type Targets: Array
        # @param DryRun: 是否预览此次请求。
        # - **false**（默认）：发送普通请求，直接移除后端服务。
        # - **true**：发送预览请求，检查移除后端服务的参数、格式、业务限制等是否符合要求。
        # @type DryRun: Boolean

        attr_accessor :TargetGroupId, :Targets, :DryRun

        def initialize(targetgroupid=nil, targets=nil, dryrun=nil)
          @TargetGroupId = targetgroupid
          @Targets = targets
          @DryRun = dryrun
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              targettoremove_tmp = TargetToRemove.new
              targettoremove_tmp.deserialize(i)
              @Targets << targettoremove_tmp
            end
          end
          @DryRun = params['DryRun']
        end
      end

      # RemoveTargetsFromTargetGroup返回参数结构体
      class RemoveTargetsFromTargetGroupResponse < TencentCloud::Common::AbstractModel
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

      # 转发规则动作
      class RuleAction < TencentCloud::Common::AbstractModel
        # @param Order: 转发动作执行顺序，不能重复，按从小到大顺序执行。取值范围：1 ~ 50000。
        # @type Order: Integer
        # @param Type: 转发动作类型。取值：
        # TargetGroup：转发至目标组。
        # Redirect：重定向。
        # FixedResponse：返回固定内容。
        # Rewrite：重写。
        # InsertHeader：写入HTTP Header。
        # RemoveHeader：删除HTTP Header。
        # 转发动作必选包含TargetGroup,Redirect,FixedResponse其中一个，并且执行顺序放在最后。
        # @type Type: String
        # @param FixedResponseConfig: 固定响应内容配置。
        # @type FixedResponseConfig: :class:`Tencentcloud::Alb.v20251030.models.FixedResponseInfo`
        # @param InsertHeaderConfig: 插入HTTP Header配置。
        # @type InsertHeaderConfig: :class:`Tencentcloud::Alb.v20251030.models.InsertHTTPHeaderInfo`
        # @param RedirectConfig: 重定向配置。除HttpCode外，其他配置不能都使用默认值。
        # @type RedirectConfig: :class:`Tencentcloud::Alb.v20251030.models.HTTPRedirectInfo`
        # @param RemoveHeaderConfig: 删除HTTP Header配置。
        # @type RemoveHeaderConfig: :class:`Tencentcloud::Alb.v20251030.models.RemoveHTTPHeaderInfo`
        # @param RewriteConfig: 重写配置。
        # @type RewriteConfig: :class:`Tencentcloud::Alb.v20251030.models.HTTPRewriteInfo`
        # @param TargetGroupConfig: 转发目标组配置。
        # @type TargetGroupConfig: :class:`Tencentcloud::Alb.v20251030.models.TargetGroupConfig`

        attr_accessor :Order, :Type, :FixedResponseConfig, :InsertHeaderConfig, :RedirectConfig, :RemoveHeaderConfig, :RewriteConfig, :TargetGroupConfig

        def initialize(order=nil, type=nil, fixedresponseconfig=nil, insertheaderconfig=nil, redirectconfig=nil, removeheaderconfig=nil, rewriteconfig=nil, targetgroupconfig=nil)
          @Order = order
          @Type = type
          @FixedResponseConfig = fixedresponseconfig
          @InsertHeaderConfig = insertheaderconfig
          @RedirectConfig = redirectconfig
          @RemoveHeaderConfig = removeheaderconfig
          @RewriteConfig = rewriteconfig
          @TargetGroupConfig = targetgroupconfig
        end

        def deserialize(params)
          @Order = params['Order']
          @Type = params['Type']
          unless params['FixedResponseConfig'].nil?
            @FixedResponseConfig = FixedResponseInfo.new
            @FixedResponseConfig.deserialize(params['FixedResponseConfig'])
          end
          unless params['InsertHeaderConfig'].nil?
            @InsertHeaderConfig = InsertHTTPHeaderInfo.new
            @InsertHeaderConfig.deserialize(params['InsertHeaderConfig'])
          end
          unless params['RedirectConfig'].nil?
            @RedirectConfig = HTTPRedirectInfo.new
            @RedirectConfig.deserialize(params['RedirectConfig'])
          end
          unless params['RemoveHeaderConfig'].nil?
            @RemoveHeaderConfig = RemoveHTTPHeaderInfo.new
            @RemoveHeaderConfig.deserialize(params['RemoveHeaderConfig'])
          end
          unless params['RewriteConfig'].nil?
            @RewriteConfig = HTTPRewriteInfo.new
            @RewriteConfig.deserialize(params['RewriteConfig'])
          end
          unless params['TargetGroupConfig'].nil?
            @TargetGroupConfig = TargetGroupConfig.new
            @TargetGroupConfig.deserialize(params['TargetGroupConfig'])
          end
        end
      end

      # 转发规则条件
      class RuleCondition < TencentCloud::Common::AbstractModel
        # @param Type: 转发条件类型。取值：
        # Host：主机。
        # Path：路径。
        # Header：HTTP Header字段。
        # QueryString：HTPP查询字符串。
        # Method：请求方法。
        # Cookie：Cookie。
        # SourceIp：源 IP。
        # @type Type: String
        # @param CookieConfig: Cookie配置。
        # @type CookieConfig: Array
        # @param HeaderConfig: HTTP Header配置。
        # @type HeaderConfig: :class:`Tencentcloud::Alb.v20251030.models.HTTPHeaderInfo`
        # @param HostConfig: 主机名。主机配置在一个规则中只能出现一次，长度3 ~ 128个字符，支持精确匹配，正则匹配，通配匹配。
        # 不能以半角句号（.）、下划线（_）开头或结尾。
        # 精确匹配，支持的字符集为：a-z 0-9 . - _ 。
        # 正则匹配，波浪线（~）开头为正则匹配，支持的字符集为：a-z 0-9 . - ? = ~ _ - + \ ^ * ! $ & | ( ) [ ] 。
        # 通配匹配，星号（*）多字符通配，半角问号（?）单字符通配，支持的字符集为：a-z 0-9 . - _ * ?。
        # @type HostConfig: Array
        # @param MethodConfig: 请求方法。取值：HEAD、GET、POST、OPTIONS、PUT、PATCH、DELETE。
        # @type MethodConfig: Array
        # @param PathConfig: 转发路径。长度1 ~ 128个字符，支持精确匹配，正则匹配，通配匹配。
        # 精确匹配，支持的字符集为：a-z A-Z 0-9 . - _ / =  :。
        # 正则匹配，需以 ~ 开头，~ 开头表示区分大小写， ~* 开头表示不区分大小写，支持的字符集为： a-z A-Z 0-9 . - _ / = ?  ~ ^ * $ : ( ) [ ] + |。
        # 通配匹配，* 表示多字符通配，? 表示单字符通配，支持的字符集为：a-z A-Z 0-9 . - _ / =  :。
        # @type PathConfig: Array
        # @param QueryStringConfig: 查询字符串配置。
        # @type QueryStringConfig: Array
        # @param SourceIpConfig: 源IP匹配配置。CIDR格式，IP地址x.x.x.x/32，IP网段x.x.x.x/24。
        # @type SourceIpConfig: Array

        attr_accessor :Type, :CookieConfig, :HeaderConfig, :HostConfig, :MethodConfig, :PathConfig, :QueryStringConfig, :SourceIpConfig

        def initialize(type=nil, cookieconfig=nil, headerconfig=nil, hostconfig=nil, methodconfig=nil, pathconfig=nil, querystringconfig=nil, sourceipconfig=nil)
          @Type = type
          @CookieConfig = cookieconfig
          @HeaderConfig = headerconfig
          @HostConfig = hostconfig
          @MethodConfig = methodconfig
          @PathConfig = pathconfig
          @QueryStringConfig = querystringconfig
          @SourceIpConfig = sourceipconfig
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['CookieConfig'].nil?
            @CookieConfig = []
            params['CookieConfig'].each do |i|
              httpcookieinfo_tmp = HTTPCookieInfo.new
              httpcookieinfo_tmp.deserialize(i)
              @CookieConfig << httpcookieinfo_tmp
            end
          end
          unless params['HeaderConfig'].nil?
            @HeaderConfig = HTTPHeaderInfo.new
            @HeaderConfig.deserialize(params['HeaderConfig'])
          end
          @HostConfig = params['HostConfig']
          @MethodConfig = params['MethodConfig']
          @PathConfig = params['PathConfig']
          unless params['QueryStringConfig'].nil?
            @QueryStringConfig = []
            params['QueryStringConfig'].each do |i|
              httpquerystringinfo_tmp = HTTPQueryStringInfo.new
              httpquerystringinfo_tmp.deserialize(i)
              @QueryStringConfig << httpquerystringinfo_tmp
            end
          end
          @SourceIpConfig = params['SourceIpConfig']
        end
      end

      # 规则健康检查状态
      class RuleHealthStatusInfo < TencentCloud::Common::AbstractModel
        # @param IsDefaultRule: 是否为默认转发规则。
        # @type IsDefaultRule: String
        # @param RuleId: 转发规则 ID，格式为 rule- 后接 8 位字母数字。
        # @type RuleId: String
        # @param TargetGroupHealthInfos: 目标组健康状态。
        # @type TargetGroupHealthInfos: Array

        attr_accessor :IsDefaultRule, :RuleId, :TargetGroupHealthInfos

        def initialize(isdefaultrule=nil, ruleid=nil, targetgrouphealthinfos=nil)
          @IsDefaultRule = isdefaultrule
          @RuleId = ruleid
          @TargetGroupHealthInfos = targetgrouphealthinfos
        end

        def deserialize(params)
          @IsDefaultRule = params['IsDefaultRule']
          @RuleId = params['RuleId']
          unless params['TargetGroupHealthInfos'].nil?
            @TargetGroupHealthInfos = []
            params['TargetGroupHealthInfos'].each do |i|
              targetgrouphealthinfo_tmp = TargetGroupHealthInfo.new
              targetgrouphealthinfo_tmp.deserialize(i)
              @TargetGroupHealthInfos << targetgrouphealthinfo_tmp
            end
          end
        end
      end

      # 转发规则创建信息
      class RuleInput < TencentCloud::Common::AbstractModel
        # @param Actions: 转发规则动作列表。
        # @type Actions: Array
        # @param Conditions: 转发规则条件列表。
        # @type Conditions: Array
        # @param Priority: 优先级，值越小优先级越高，不能重复，取值范围：1~10000。
        # @type Priority: Integer
        # @param Direction: 转发规则的方向。Request：客户端到负载均衡的请求方向，Response：后端服务器到负载均衡的响应方向。默认Request。
        # @type Direction: String
        # @param RuleName: 转发规则名称。长度为 1~255 个字符，可包含数字、大小写字母、中文、半角句号（.）、下划线（_）和短划线（-）。
        # @type RuleName: String
        # @param Tags: 标签。
        # @type Tags: Array

        attr_accessor :Actions, :Conditions, :Priority, :Direction, :RuleName, :Tags

        def initialize(actions=nil, conditions=nil, priority=nil, direction=nil, rulename=nil, tags=nil)
          @Actions = actions
          @Conditions = conditions
          @Priority = priority
          @Direction = direction
          @RuleName = rulename
          @Tags = tags
        end

        def deserialize(params)
          unless params['Actions'].nil?
            @Actions = []
            params['Actions'].each do |i|
              ruleaction_tmp = RuleAction.new
              ruleaction_tmp.deserialize(i)
              @Actions << ruleaction_tmp
            end
          end
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              rulecondition_tmp = RuleCondition.new
              rulecondition_tmp.deserialize(i)
              @Conditions << rulecondition_tmp
            end
          end
          @Priority = params['Priority']
          @Direction = params['Direction']
          @RuleName = params['RuleName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
        end
      end

      # 转发规则修改信息
      class RuleModify < TencentCloud::Common::AbstractModel
        # @param Actions: 转发规则动作列表。
        # @type Actions: Array
        # @param Conditions: 转发规则条件列表。
        # @type Conditions: Array
        # @param Priority: 优先级，值越小优先级越高，取值范围：1~10000。
        # @type Priority: Integer
        # @param RuleId: 转发规则 ID，格式为 rule- 后接 8 位字母数字。
        # @type RuleId: String
        # @param RuleName: 转发规则名称。
        # @type RuleName: String

        attr_accessor :Actions, :Conditions, :Priority, :RuleId, :RuleName

        def initialize(actions=nil, conditions=nil, priority=nil, ruleid=nil, rulename=nil)
          @Actions = actions
          @Conditions = conditions
          @Priority = priority
          @RuleId = ruleid
          @RuleName = rulename
        end

        def deserialize(params)
          unless params['Actions'].nil?
            @Actions = []
            params['Actions'].each do |i|
              ruleaction_tmp = RuleAction.new
              ruleaction_tmp.deserialize(i)
              @Actions << ruleaction_tmp
            end
          end
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              rulecondition_tmp = RuleCondition.new
              rulecondition_tmp.deserialize(i)
              @Conditions << rulecondition_tmp
            end
          end
          @Priority = params['Priority']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
        end
      end

      # 转发规则信息
      class RuleOutput < TencentCloud::Common::AbstractModel
        # @param Actions: 转发规则动作列表。
        # @type Actions: Array
        # @param Conditions: 转发规则条件列表。
        # @type Conditions: Array
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param Direction: 转发规则的方向。Request：客户端到负载均衡的请求方向，Response：后端服务器到负载均衡的响应方向。
        # @type Direction: String
        # @param ModifyTime: 最后修改时间。
        # @type ModifyTime: String
        # @param Priority: 优先级，值越小优先级越高，取值范围：1~10000。
        # @type Priority: Integer
        # @param RuleId: 转发规则 ID，格式为 rule- 后接 8 位字母数字。
        # @type RuleId: String
        # @param RuleName: 转发规则名称。
        # @type RuleName: String
        # @param Status: 转发规则状态，Provisioning：创建中，Active：运行中，Configuring：配置中。
        # @type Status: String
        # @param Tags: 标签列表。
        # @type Tags: Array

        attr_accessor :Actions, :Conditions, :CreateTime, :Direction, :ModifyTime, :Priority, :RuleId, :RuleName, :Status, :Tags

        def initialize(actions=nil, conditions=nil, createtime=nil, direction=nil, modifytime=nil, priority=nil, ruleid=nil, rulename=nil, status=nil, tags=nil)
          @Actions = actions
          @Conditions = conditions
          @CreateTime = createtime
          @Direction = direction
          @ModifyTime = modifytime
          @Priority = priority
          @RuleId = ruleid
          @RuleName = rulename
          @Status = status
          @Tags = tags
        end

        def deserialize(params)
          unless params['Actions'].nil?
            @Actions = []
            params['Actions'].each do |i|
              ruleaction_tmp = RuleAction.new
              ruleaction_tmp.deserialize(i)
              @Actions << ruleaction_tmp
            end
          end
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              rulecondition_tmp = RuleCondition.new
              rulecondition_tmp.deserialize(i)
              @Conditions << rulecondition_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @Direction = params['Direction']
          @ModifyTime = params['ModifyTime']
          @Priority = params['Priority']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @Status = params['Status']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
        end
      end

      # 不同TLS版本支持的加密套件信息。
      class SecurityPolicyCapability < TencentCloud::Common::AbstractModel
        # @param Ciphers: 支持的加密套件列表。
        # @type Ciphers: Array
        # @param TLSVersion: 支持的 TLS 协议版本。可选值包括：TLSv1.0、TLSv1.1、TLSv1.2、TLSv1.3。
        # @type TLSVersion: String

        attr_accessor :Ciphers, :TLSVersion

        def initialize(ciphers=nil, tlsversion=nil)
          @Ciphers = ciphers
          @TLSVersion = tlsversion
        end

        def deserialize(params)
          @Ciphers = params['Ciphers']
          @TLSVersion = params['TLSVersion']
        end
      end

      # 安全策略信息。
      class SecurityPolicyInfo < TencentCloud::Common::AbstractModel
        # @param Ciphers: 支持的加密套件列表。
        # 支持的加密套件，具体依赖 TLSVersions 的取值。
        # Cipher 只要被任何一个传入的 TLSVersions 支持即可。

        # 说明：若选择了 TLSv1.3，那么 Cipher 列表必须包含 TLSv1.3 支持的 Cipher。

        # 请调用 DescribeSecurityPolicyCapabilities 接口获取支持的加密套件列表。
        # @type Ciphers: Array
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param SecurityPolicyId: 安全策略 ID，格式为 tls- 后接 8 位字母数字。
        # @type SecurityPolicyId: String
        # @param SecurityPolicyName: 安全策略名称。长度为2~128个英文或中文字符，必须以字母或中文开头，可包含数字、半角句号（.）、下划线（_）和短划线（-）。
        # @type SecurityPolicyName: String
        # @param Status: 安全策略状态。当前接口最常返回 Active，表示安全策略处于可用状态。
        # @type Status: String
        # @param TLSVersions: 支持的 TLS 协议版本列表。可选值包括：TLSv1.0、TLSv1.1、TLSv1.2、TLSv1.3。
        # @type TLSVersions: Array
        # @param Tags: 标签信息。
        # @type Tags: Array

        attr_accessor :Ciphers, :CreateTime, :SecurityPolicyId, :SecurityPolicyName, :Status, :TLSVersions, :Tags

        def initialize(ciphers=nil, createtime=nil, securitypolicyid=nil, securitypolicyname=nil, status=nil, tlsversions=nil, tags=nil)
          @Ciphers = ciphers
          @CreateTime = createtime
          @SecurityPolicyId = securitypolicyid
          @SecurityPolicyName = securitypolicyname
          @Status = status
          @TLSVersions = tlsversions
          @Tags = tags
        end

        def deserialize(params)
          @Ciphers = params['Ciphers']
          @CreateTime = params['CreateTime']
          @SecurityPolicyId = params['SecurityPolicyId']
          @SecurityPolicyName = params['SecurityPolicyName']
          @Status = params['Status']
          @TLSVersions = params['TLSVersions']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
        end
      end

      # 安全策略与监听的关联关系列表。
      class SecurityPolicyRelations < TencentCloud::Common::AbstractModel
        # @param RelatedListeners: 安全策略与监听的关联关系列表。
        # @type RelatedListeners: Array
        # @param SecurityPolicyId: 安全策略 ID，格式为 tls- 后接 8 位字母数字。
        # @type SecurityPolicyId: String

        attr_accessor :RelatedListeners, :SecurityPolicyId

        def initialize(relatedlisteners=nil, securitypolicyid=nil)
          @RelatedListeners = relatedlisteners
          @SecurityPolicyId = securitypolicyid
        end

        def deserialize(params)
          unless params['RelatedListeners'].nil?
            @RelatedListeners = []
            params['RelatedListeners'].each do |i|
              relatedlistener_tmp = RelatedListener.new
              relatedlistener_tmp.deserialize(i)
              @RelatedListeners << relatedlistener_tmp
            end
          end
          @SecurityPolicyId = params['SecurityPolicyId']
        end
      end

      # SetLoadBalancerSecurityGroups请求参数结构体
      class SetLoadBalancerSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID，格式为 alb- 后接 8 位字母数字。
        # @type LoadBalancerId: String
        # @param SecurityGroups: 安全组 ID 列表。
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

      # 会话保持配置。
      class StickySessionConfig < TencentCloud::Common::AbstractModel
        # @param StickySessionEnabled: 是否开启会话保持。
        # - **true**：开启。
        # - **false**：不开启。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StickySessionEnabled: Boolean
        # @param Cookie: 自定义 Cookie 名称。
        # 长度为 1~255 个字符，只能包含英文字母和数字字符，且不能为`tgw_l7_tg_route`，该字段为目标组间会话保持Cookie保留字段。
        # >仅当 **StickySessionEnabled** 为 **true** 时该参数生效。
        # @type Cookie: String
        # @param CookieTimeout: 会话保持时间。
        # 取值范围：**1-86400**，单位：**秒**。
        # 默认值：**1000**。
        # >仅当 **StickySessionEnabled** 为 **true**时，该参数生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CookieTimeout: Integer
        # @param StickySessionType: 会话保持类型（处理Cookie的方式）。
        # - **Insert**（默认值）：植入 Cookie。 客户端第一次访问后端服务时，应用型负载均衡会在返回请求中植入 Cookie。下次客户端请求时携带该 Cookie，负载均衡将请求转发到上次请求的相同后端服务。
        # - **Rewrite**：重写 Cookie。 负载均衡会对用户自定义的 Cookie 进行重写，下次客户端请求时携带该 Cookie，负载均衡将请求转发到上次请求的相同后端服务。
        # >仅当 **StickySessionEnabled** 为 **true** 时该参数生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StickySessionType: String

        attr_accessor :StickySessionEnabled, :Cookie, :CookieTimeout, :StickySessionType

        def initialize(stickysessionenabled=nil, cookie=nil, cookietimeout=nil, stickysessiontype=nil)
          @StickySessionEnabled = stickysessionenabled
          @Cookie = cookie
          @CookieTimeout = cookietimeout
          @StickySessionType = stickysessiontype
        end

        def deserialize(params)
          @StickySessionEnabled = params['StickySessionEnabled']
          @Cookie = params['Cookie']
          @CookieTimeout = params['CookieTimeout']
          @StickySessionType = params['StickySessionType']
        end
      end

      # 标签信息
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

      # 目标组配置
      class TargetGroupConfig < TencentCloud::Common::AbstractModel
        # @param TargetGroups: 目标组列表。
        # @type TargetGroups: Array
        # @param TargetGroupStickySession: 目标组间会话保持
        # @type TargetGroupStickySession: :class:`Tencentcloud::Alb.v20251030.models.TargetGroupStickySession`

        attr_accessor :TargetGroups, :TargetGroupStickySession

        def initialize(targetgroups=nil, targetgroupstickysession=nil)
          @TargetGroups = targetgroups
          @TargetGroupStickySession = targetgroupstickysession
        end

        def deserialize(params)
          unless params['TargetGroups'].nil?
            @TargetGroups = []
            params['TargetGroups'].each do |i|
              targetgrouptuple_tmp = TargetGroupTuple.new
              targetgrouptuple_tmp.deserialize(i)
              @TargetGroups << targetgrouptuple_tmp
            end
          end
          unless params['TargetGroupStickySession'].nil?
            @TargetGroupStickySession = TargetGroupStickySession.new
            @TargetGroupStickySession.deserialize(params['TargetGroupStickySession'])
          end
        end
      end

      # 目标组健康检查状态
      class TargetGroupHealthInfo < TencentCloud::Common::AbstractModel
        # @param HealthCheckEnabled: 是否开启健康检查。
        # @type HealthCheckEnabled: Boolean
        # @param TargetGroupId: 目标组 ID，格式为 lbtg- 后接 8 位字母数字。
        # @type TargetGroupId: String
        # @param TargetHealthStatusInfos: 服务健康检查状态列表。
        # @type TargetHealthStatusInfos: Array
        # @param Type: 转发动作类型。取值：
        # TargetGroup：转发至目标组。
        # Redirect：重定向。
        # FixedResponse：返回固定内容。
        # Rewrite：重写。
        # InsertHeader：写入HTTP Header。
        # RemoveHeader：删除HTTP Header。
        # 转发动作必选包含TargetGroup,Redirect,FixedResponse其中一个，并且执行顺序放在最后。
        # @type Type: String

        attr_accessor :HealthCheckEnabled, :TargetGroupId, :TargetHealthStatusInfos, :Type

        def initialize(healthcheckenabled=nil, targetgroupid=nil, targethealthstatusinfos=nil, type=nil)
          @HealthCheckEnabled = healthcheckenabled
          @TargetGroupId = targetgroupid
          @TargetHealthStatusInfos = targethealthstatusinfos
          @Type = type
        end

        def deserialize(params)
          @HealthCheckEnabled = params['HealthCheckEnabled']
          @TargetGroupId = params['TargetGroupId']
          unless params['TargetHealthStatusInfos'].nil?
            @TargetHealthStatusInfos = []
            params['TargetHealthStatusInfos'].each do |i|
              targethealthstatusinfo_tmp = TargetHealthStatusInfo.new
              targethealthstatusinfo_tmp.deserialize(i)
              @TargetHealthStatusInfos << targethealthstatusinfo_tmp
            end
          end
          @Type = params['Type']
        end
      end

      # 目标组简要信息出参
      class TargetGroupOutput < TencentCloud::Common::AbstractModel
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param HealthCheckConfig: 健康检查配置。
        # @type HealthCheckConfig: :class:`Tencentcloud::Alb.v20251030.models.HealthCheckConfig`
        # @param KeepaliveEnabled: 是否开启长连接。
        # @type KeepaliveEnabled: Boolean
        # @param Protocol: 后端服务协议类型。取值：
        # - **HTTP**（默认）：支持绑定HTTP、HTTPS的监听器
        # - **HTTPS**：支持绑定HTTPS类型的监听器
        # - **GRPC**：支持绑定HTTPS类型的监听器
        # - **GRPCS**：支持绑定HTTPS类型的监听器
        # @type Protocol: String
        # @param RelatedLoadBalancersCount: 目标组关联的负载均衡数量。
        # @type RelatedLoadBalancersCount: Integer
        # @param SchedulerAlgorithm: 调度算法。
        # @type SchedulerAlgorithm: String
        # @param StickySessionConfig: 会话保持配置。
        # @type StickySessionConfig: :class:`Tencentcloud::Alb.v20251030.models.StickySessionConfig`
        # @param Tags: 标签。
        # @type Tags: Array
        # @param TargetGroupId: 目标组 ID，格式为 lbtg- 后接 8 位字母数字。
        # @type TargetGroupId: String
        # @param TargetGroupName: 目标组名称。默认为目标组ID。长度为 **1-255** 个字符，可包含数字、大小写字母、中文、半角句号（.）、下划线（_）和短划线（-）。
        # @type TargetGroupName: String
        # @param TargetGroupStatus: 目标组状态。取值：
        # - **Provisioning**：创建中。
        # - **ProvisionFailed**：创建失败。
        # - **Active**: 运行中。
        # - **Configuring**：配置变更中。
        # @type TargetGroupStatus: String
        # @param TargetType: 目标组类型。取值：
        # - **Instance**：Cvm服务器类型或Eni弹性网卡类型
        # @type TargetType: String
        # @param VpcId: 私有网络 ID。
        # @type VpcId: String

        attr_accessor :CreateTime, :HealthCheckConfig, :KeepaliveEnabled, :Protocol, :RelatedLoadBalancersCount, :SchedulerAlgorithm, :StickySessionConfig, :Tags, :TargetGroupId, :TargetGroupName, :TargetGroupStatus, :TargetType, :VpcId

        def initialize(createtime=nil, healthcheckconfig=nil, keepaliveenabled=nil, protocol=nil, relatedloadbalancerscount=nil, scheduleralgorithm=nil, stickysessionconfig=nil, tags=nil, targetgroupid=nil, targetgroupname=nil, targetgroupstatus=nil, targettype=nil, vpcid=nil)
          @CreateTime = createtime
          @HealthCheckConfig = healthcheckconfig
          @KeepaliveEnabled = keepaliveenabled
          @Protocol = protocol
          @RelatedLoadBalancersCount = relatedloadbalancerscount
          @SchedulerAlgorithm = scheduleralgorithm
          @StickySessionConfig = stickysessionconfig
          @Tags = tags
          @TargetGroupId = targetgroupid
          @TargetGroupName = targetgroupname
          @TargetGroupStatus = targetgroupstatus
          @TargetType = targettype
          @VpcId = vpcid
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          unless params['HealthCheckConfig'].nil?
            @HealthCheckConfig = HealthCheckConfig.new
            @HealthCheckConfig.deserialize(params['HealthCheckConfig'])
          end
          @KeepaliveEnabled = params['KeepaliveEnabled']
          @Protocol = params['Protocol']
          @RelatedLoadBalancersCount = params['RelatedLoadBalancersCount']
          @SchedulerAlgorithm = params['SchedulerAlgorithm']
          unless params['StickySessionConfig'].nil?
            @StickySessionConfig = StickySessionConfig.new
            @StickySessionConfig.deserialize(params['StickySessionConfig'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @TargetGroupId = params['TargetGroupId']
          @TargetGroupName = params['TargetGroupName']
          @TargetGroupStatus = params['TargetGroupStatus']
          @TargetType = params['TargetType']
          @VpcId = params['VpcId']
        end
      end

      # 目标组之间会话保持
      class TargetGroupStickySession < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启会话保持，默认关闭。
        # @type Enabled: Boolean
        # @param Timeout: 超时时间，单位秒，取值范围：1~86400，默认值：1000。
        # @type Timeout: Integer

        attr_accessor :Enabled, :Timeout

        def initialize(enabled=nil, timeout=nil)
          @Enabled = enabled
          @Timeout = timeout
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @Timeout = params['Timeout']
        end
      end

      # 目标组基础配置
      class TargetGroupTuple < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 目标组 ID，格式为 lbtg- 后接 8 位字母数字。
        # @type TargetGroupId: String
        # @param Weight: 权重，取值范围：[0, 100]，默认为 10。
        # @type Weight: Integer

        attr_accessor :TargetGroupId, :Weight

        def initialize(targetgroupid=nil, weight=nil)
          @TargetGroupId = targetgroupid
          @Weight = weight
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @Weight = params['Weight']
        end
      end

      # 服务健康状态信息
      class TargetHealthStatusInfo < TencentCloud::Common::AbstractModel
        # @param Status: 后端服务健康状态。DescribeListenerHealthStatus 仅返回非健康后端时，该值为 UnHealthy。
        # @type Status: String
        # @param TargetId: 后端服务实例 ID，CVM 实例格式为 ins- 后接 8 位字母数字。
        # @type TargetId: String
        # @param TargetIp: 后端目标服务IP。
        # @type TargetIp: String
        # @param TargetPort: 后端服务器端口。
        # @type TargetPort: Integer

        attr_accessor :Status, :TargetId, :TargetIp, :TargetPort

        def initialize(status=nil, targetid=nil, targetip=nil, targetport=nil)
          @Status = status
          @TargetId = targetid
          @TargetIp = targetip
          @TargetPort = targetport
        end

        def deserialize(params)
          @Status = params['Status']
          @TargetId = params['TargetId']
          @TargetIp = params['TargetIp']
          @TargetPort = params['TargetPort']
        end
      end

      # 后端服务输出参数。
      class TargetOutput < TencentCloud::Common::AbstractModel
        # @param EniId: 弹性网卡 ID。
        # @type EniId: String
        # @param Port: 后端服务器使用的端口。取值范围：**1 - 65535**。
        # @type Port: Integer
        # @param TargetId: 后端服务实例 ID，CVM 实例格式为 ins- 后接 8 位字母数字。
        # @type TargetId: String
        # @param TargetIp: 后端服务IP。**TargetIp**和**TargetId**需要至少传一个。

        # - 当服务器组为 **Instance** 类型时，该参数为 **Eni** 的主内网 IP 或辅助内网 IP。
        # @type TargetIp: String
        # @param TargetName: 后端服务名称。当前只有CVM后端类型后端服务返回有效名称。
        # @type TargetName: String
        # @param TargetStatus: 后端服务的状态。取值：
        # - **Adding**：添加中。
        # - **Active**：正常可用状态。
        # - **Configuring**：配置中。
        # - **Removing**：移除中。
        # @type TargetStatus: String
        # @param TargetType: 后端服务类型。
        # @type TargetType: String
        # @param Weight: 后端服务的权重，取值范围：**0 - 100**。默认值为**100**。如果设置权重为**0**，则不会将请求转发给该后端服务。
        # @type Weight: Integer

        attr_accessor :EniId, :Port, :TargetId, :TargetIp, :TargetName, :TargetStatus, :TargetType, :Weight

        def initialize(eniid=nil, port=nil, targetid=nil, targetip=nil, targetname=nil, targetstatus=nil, targettype=nil, weight=nil)
          @EniId = eniid
          @Port = port
          @TargetId = targetid
          @TargetIp = targetip
          @TargetName = targetname
          @TargetStatus = targetstatus
          @TargetType = targettype
          @Weight = weight
        end

        def deserialize(params)
          @EniId = params['EniId']
          @Port = params['Port']
          @TargetId = params['TargetId']
          @TargetIp = params['TargetIp']
          @TargetName = params['TargetName']
          @TargetStatus = params['TargetStatus']
          @TargetType = params['TargetType']
          @Weight = params['Weight']
        end
      end

      # 添加至目标组的后端服务
      class TargetToAdd < TencentCloud::Common::AbstractModel
        # @param Port: 后端服务器使用的端口。取值范围：**1 - 65535**。

        # >当目标组的 **targetType** 取值为 **Instance** 时，该参数必传。
        # @type Port: Integer
        # @param TargetIp: 后端服务IP。**TargetIp**和**TargetId**需要至少传一个。

        # - 当服务器组为 **Instance** 类型时，该参数为 **Eni** 的主内网 IP 或辅助内网 IP。
        # @type TargetIp: String
        # @param Weight: 后端服务的权重，取值范围：**0 - 100**。默认值为**10**。如果设置权重为**0**，则不会将请求转发给该后端服务。
        # @type Weight: Integer

        attr_accessor :Port, :TargetIp, :Weight

        def initialize(port=nil, targetip=nil, weight=nil)
          @Port = port
          @TargetIp = targetip
          @Weight = weight
        end

        def deserialize(params)
          @Port = params['Port']
          @TargetIp = params['TargetIp']
          @Weight = params['Weight']
        end
      end

      # 需要修改的后端服务。
      class TargetToModify < TencentCloud::Common::AbstractModel
        # @param TargetIp: 后端服务IP。**TargetIp**和**TargetId**需要至少传一个。

        # - 当服务器组为 **Instance** 类型时，该参数为 **Eni** 的主内网 IP 或辅助内网 IP。
        # @type TargetIp: String
        # @param Port: 后端服务器使用的端口。取值范围：**1 - 65535**。

        # >当目标组的 **targetType** 取值为 **Instance** 时，该参数必传。
        # @type Port: Integer
        # @param Weight: 后端服务的权重，取值范围：**0 - 100**。如果设置权重为**0**，则不会将请求转发给该后端服务。
        # @type Weight: Integer

        attr_accessor :TargetIp, :Port, :Weight

        def initialize(targetip=nil, port=nil, weight=nil)
          @TargetIp = targetip
          @Port = port
          @Weight = weight
        end

        def deserialize(params)
          @TargetIp = params['TargetIp']
          @Port = params['Port']
          @Weight = params['Weight']
        end
      end

      # 从目标组移除的后端服务。
      class TargetToRemove < TencentCloud::Common::AbstractModel
        # @param Port: 后端服务器使用的端口。取值范围：**1 - 65535**。

        # >当目标组的 **targetType** 取值为 **Instance** 时，该参数必传。
        # @type Port: Integer
        # @param TargetIp: 后端服务IP。**TargetIp**和**TargetId**需要至少传一个。

        # - 当服务器组为 **Instance** 类型时，该参数为 **Eni** 的主内网 IP 或辅助内网 IP。
        # @type TargetIp: String

        attr_accessor :Port, :TargetIp

        def initialize(port=nil, targetip=nil)
          @Port = port
          @TargetIp = targetip
        end

        def deserialize(params)
          @Port = params['Port']
          @TargetIp = params['TargetIp']
        end
      end

      # 转发配置
      class XForwardedForConfig < TencentCloud::Common::AbstractModel
        # @param XForwardedForAlbIdEnabled: 是否通过 ALB-ID 头字段获取负载均衡实例ID。
        # - **true**：是。
        # - **false**：否。
        # @type XForwardedForAlbIdEnabled: Boolean
        # @param XForwardedForClientSrcPortEnabled: 是否通过X-Forwarded-Client-srcport头字段获取访问负载均衡实例客户端的端口。
        # - **true**：是。
        # - **false**：否。
        # @type XForwardedForClientSrcPortEnabled: Boolean
        # @param XForwardedForHostEnabled: 是否开启通过X-Forwarded-Host头字段获取访问负载均衡实例客户端的域名。
        # - **true**：是。
        # - **false**：否。
        # @type XForwardedForHostEnabled: Boolean
        # @param XForwardedForMode: 指定如何处理 X-Forwarded-For（XFF）HTTP 头字段。
        # - **append**:  附加模式（默认），将客户端的真实 IP 地址附加到 X-Forwarded-For 头的末尾，保留原有的 XFF 链路信息
        # - **remove**:  删除模式，移除 X-Forwarded-For 头字段，不将该头传递给后端服务器
        # - **passthrough**: 透传模式，保持 X-Forwarded-For 头不变，直接透传给后端服务器，不做任何修改
        # @type XForwardedForMode: String
        # @param XForwardedForPortEnabled: 是否通过X-Forwarded-Port头字段获取负载均衡实例的监听端口。
        # - **true**：是。
        # - **false**：否。
        # @type XForwardedForPortEnabled: Boolean
        # @param XForwardedForProtoEnabled: 是否通过X-Forwarded-Proto头字段获取负载均衡实例的监听协议。
        # - **true**：是。
        # - **false**：否。
        # @type XForwardedForProtoEnabled: Boolean
        # @param XTencentClientIDNEnabled: 是否通过 X-Tencent-Client-IDN 头访问 客户端证书的颁发者 $ssl_client_i_dn。
        # - **true**：是。
        # - **false**：否。
        # @type XTencentClientIDNEnabled: Boolean
        # @param XTencentClientSDNEnabled: 是否通过 X-Tencent-Client-SDN 头访问客户端证书的主题$ssl_client_s_dn。
        # - **true**：是。
        # - **false**：否。
        # @type XTencentClientSDNEnabled: Boolean
        # @param XTencentClientSerialEnabled: 是否通过 X-Tencent-Client-Serial 头访问 客户端证书的序列号 $ssl_client_serial。
        # - **true**：是。
        # - **false**：否。
        # @type XTencentClientSerialEnabled: Boolean
        # @param XTencentClientVerifyEnabled: 是通过 X-Tencent-Client-Verify 头访问 客户端证书的验证结果 $ssl_client_verify。
        # - **true**：是。
        # - **false**：否。
        # @type XTencentClientVerifyEnabled: Boolean

        attr_accessor :XForwardedForAlbIdEnabled, :XForwardedForClientSrcPortEnabled, :XForwardedForHostEnabled, :XForwardedForMode, :XForwardedForPortEnabled, :XForwardedForProtoEnabled, :XTencentClientIDNEnabled, :XTencentClientSDNEnabled, :XTencentClientSerialEnabled, :XTencentClientVerifyEnabled

        def initialize(xforwardedforalbidenabled=nil, xforwardedforclientsrcportenabled=nil, xforwardedforhostenabled=nil, xforwardedformode=nil, xforwardedforportenabled=nil, xforwardedforprotoenabled=nil, xtencentclientidnenabled=nil, xtencentclientsdnenabled=nil, xtencentclientserialenabled=nil, xtencentclientverifyenabled=nil)
          @XForwardedForAlbIdEnabled = xforwardedforalbidenabled
          @XForwardedForClientSrcPortEnabled = xforwardedforclientsrcportenabled
          @XForwardedForHostEnabled = xforwardedforhostenabled
          @XForwardedForMode = xforwardedformode
          @XForwardedForPortEnabled = xforwardedforportenabled
          @XForwardedForProtoEnabled = xforwardedforprotoenabled
          @XTencentClientIDNEnabled = xtencentclientidnenabled
          @XTencentClientSDNEnabled = xtencentclientsdnenabled
          @XTencentClientSerialEnabled = xtencentclientserialenabled
          @XTencentClientVerifyEnabled = xtencentclientverifyenabled
        end

        def deserialize(params)
          @XForwardedForAlbIdEnabled = params['XForwardedForAlbIdEnabled']
          @XForwardedForClientSrcPortEnabled = params['XForwardedForClientSrcPortEnabled']
          @XForwardedForHostEnabled = params['XForwardedForHostEnabled']
          @XForwardedForMode = params['XForwardedForMode']
          @XForwardedForPortEnabled = params['XForwardedForPortEnabled']
          @XForwardedForProtoEnabled = params['XForwardedForProtoEnabled']
          @XTencentClientIDNEnabled = params['XTencentClientIDNEnabled']
          @XTencentClientSDNEnabled = params['XTencentClientSDNEnabled']
          @XTencentClientSerialEnabled = params['XTencentClientSerialEnabled']
          @XTencentClientVerifyEnabled = params['XTencentClientVerifyEnabled']
        end
      end

      # 可用区信息
      class Zone < TencentCloud::Common::AbstractModel
        # @param LocalName: 可用区名称
        # @type LocalName: String
        # @param ZoneId: 可用区 ID
        # @type ZoneId: String
        # @param ZoneStatus: 可用区状态
        # @type ZoneStatus: String

        attr_accessor :LocalName, :ZoneId, :ZoneStatus

        def initialize(localname=nil, zoneid=nil, zonestatus=nil)
          @LocalName = localname
          @ZoneId = zoneid
          @ZoneStatus = zonestatus
        end

        def deserialize(params)
          @LocalName = params['LocalName']
          @ZoneId = params['ZoneId']
          @ZoneStatus = params['ZoneStatus']
        end
      end

      # 可用区及子网映射结构体
      class ZoneMappingInfo < TencentCloud::Common::AbstractModel
        # @param SubnetId: <p>子网 ID。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param ZoneId: <p>可用区ID。最多支持添加10个可用区。若当前地域支持2个及以上的可用区，至少需要添加2个可用区。<br>您可以通过调用<a href="https://cloud.tencent.com/document/api/1822/133727">DescribeZones</a>接口获取可用区ID对应的可用区的信息。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: String
        # @param LoadBalancerAddress: <p>负载均衡 VIP/EIP 信息</p>
        # @type LoadBalancerAddress: :class:`Tencentcloud::Alb.v20251030.models.LoadBalancerAddress`
        # @param Status: <p>可用区状态。取值：</p><ul><li><strong>Active</strong>：运行中。</li><li><strong>Stopped</strong>：已停止。</li><li><strong>Shifted</strong>：已移除。</li><li><strong>Starting</strong>：启动中。</li><li><strong>Stopping</strong>：停止中。</li></ul>
        # @type Status: String

        attr_accessor :SubnetId, :ZoneId, :LoadBalancerAddress, :Status

        def initialize(subnetid=nil, zoneid=nil, loadbalanceraddress=nil, status=nil)
          @SubnetId = subnetid
          @ZoneId = zoneid
          @LoadBalancerAddress = loadbalanceraddress
          @Status = status
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @ZoneId = params['ZoneId']
          unless params['LoadBalancerAddress'].nil?
            @LoadBalancerAddress = LoadBalancerAddress.new
            @LoadBalancerAddress.deserialize(params['LoadBalancerAddress'])
          end
          @Status = params['Status']
        end
      end

      # 用于购买或者修改使用的可用区及子网映射结构体
      class ZoneMappingsItem < TencentCloud::Common::AbstractModel
        # @param SubnetId: <p>子网 ID。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param ZoneId: <p>可用区ID。最多支持添加10个可用区。若当前地域支持2个及以上的可用区，至少需要添加2个可用区。<br>您可以通过调用<a href="https://cloud.tencent.com/document/api/1822/133727">DescribeZones</a>接口获取可用区ID对应的可用区的信息。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: String
        # @param LoadBalancerAddress: <p>公网实例绑定的EIP实例ID。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerAddress: :class:`Tencentcloud::Alb.v20251030.models.LoadBalancerAddress`

        attr_accessor :SubnetId, :ZoneId, :LoadBalancerAddress

        def initialize(subnetid=nil, zoneid=nil, loadbalanceraddress=nil)
          @SubnetId = subnetid
          @ZoneId = zoneid
          @LoadBalancerAddress = loadbalanceraddress
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @ZoneId = params['ZoneId']
          unless params['LoadBalancerAddress'].nil?
            @LoadBalancerAddress = LoadBalancerAddress.new
            @LoadBalancerAddress.deserialize(params['LoadBalancerAddress'])
          end
        end
      end

    end
  end
end

