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
  module Rce
    module V20260130
      # AssessDeviceRiskPremiumPro请求参数结构体
      class AssessDeviceRiskPremiumProRequest < TencentCloud::Common::AbstractModel
        # @param DeviceToken: <p>用户设备指纹token标识，在您的网站或者应用程序中集成设备指纹的SDK后获取</p>
        # @type DeviceToken: String
        # @param UserIp: <p>客户端 IP 地址（IPv4或IPv6）</p>
        # @type UserIp: String

        attr_accessor :DeviceToken, :UserIp

        def initialize(devicetoken=nil, userip=nil)
          @DeviceToken = devicetoken
          @UserIp = userip
        end

        def deserialize(params)
          @DeviceToken = params['DeviceToken']
          @UserIp = params['UserIp']
        end
      end

      # AssessDeviceRiskPremiumPro返回参数结构体
      class AssessDeviceRiskPremiumProResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>设备风险评估高级版返回结果</p>
        # @type Data: :class:`Tencentcloud::Rce.v20260130.models.AssessDeviceRiskPremiumRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AssessDeviceRiskPremiumRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 设备风险评估高级版返回结果
      class AssessDeviceRiskPremiumRsp < TencentCloud::Common::AbstractModel
        # @param Decision: <p>决策信息</p>
        # @type Decision: :class:`Tencentcloud::Rce.v20260130.models.Decision`
        # @param Score: <p>设备风险分信息</p>
        # @type Score: :class:`Tencentcloud::Rce.v20260130.models.DataScore`
        # @param Device: <p>设备基础信息</p>
        # @type Device: :class:`Tencentcloud::Rce.v20260130.models.Device`
        # @param Environment: <p>IP环境基础信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Environment: :class:`Tencentcloud::Rce.v20260130.models.Environment`

        attr_accessor :Decision, :Score, :Device, :Environment

        def initialize(decision=nil, score=nil, device=nil, environment=nil)
          @Decision = decision
          @Score = score
          @Device = device
          @Environment = environment
        end

        def deserialize(params)
          unless params['Decision'].nil?
            @Decision = Decision.new
            @Decision.deserialize(params['Decision'])
          end
          unless params['Score'].nil?
            @Score = DataScore.new
            @Score.deserialize(params['Score'])
          end
          unless params['Device'].nil?
            @Device = Device.new
            @Device.deserialize(params['Device'])
          end
          unless params['Environment'].nil?
            @Environment = Environment.new
            @Environment.deserialize(params['Environment'])
          end
        end
      end

      # AssessDeviceRiskPro请求参数结构体
      class AssessDeviceRiskProRequest < TencentCloud::Common::AbstractModel
        # @param DeviceToken: <p>用户设备指纹token标识，在您的网站或者应用程序中集成设备指纹的SDK后获取</p>
        # @type DeviceToken: String
        # @param UserIp: <p>客户端 IP 地址（IPv4或IPv6）</p>
        # @type UserIp: String

        attr_accessor :DeviceToken, :UserIp

        def initialize(devicetoken=nil, userip=nil)
          @DeviceToken = devicetoken
          @UserIp = userip
        end

        def deserialize(params)
          @DeviceToken = params['DeviceToken']
          @UserIp = params['UserIp']
        end
      end

      # AssessDeviceRiskPro返回参数结构体
      class AssessDeviceRiskProResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>设备风险评估基础版返回结果</p>
        # @type Data: :class:`Tencentcloud::Rce.v20260130.models.AssessDeviceRiskRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AssessDeviceRiskRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 设备风险评估基础版返回结果
      class AssessDeviceRiskRsp < TencentCloud::Common::AbstractModel
        # @param Score: <p>设备风险分信息</p>
        # @type Score: :class:`Tencentcloud::Rce.v20260130.models.DataScore`
        # @param Device: <p>设备基础信息</p>
        # @type Device: :class:`Tencentcloud::Rce.v20260130.models.Device`

        attr_accessor :Score, :Device

        def initialize(score=nil, device=nil)
          @Score = score
          @Device = device
        end

        def deserialize(params)
          unless params['Score'].nil?
            @Score = DataScore.new
            @Score.deserialize(params['Score'])
          end
          unless params['Device'].nil?
            @Device = Device.new
            @Device.deserialize(params['Device'])
          end
        end
      end

      # AssessEnvironmentRisk请求参数结构体
      class AssessEnvironmentRiskRequest < TencentCloud::Common::AbstractModel
        # @param UserIp: <p>客户端 IP 地址（IPv4或IPv6）</p>
        # @type UserIp: String

        attr_accessor :UserIp

        def initialize(userip=nil)
          @UserIp = userip
        end

        def deserialize(params)
          @UserIp = params['UserIp']
        end
      end

      # AssessEnvironmentRisk返回参数结构体
      class AssessEnvironmentRiskResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>环境风险评估返回结果</p>
        # @type Data: :class:`Tencentcloud::Rce.v20260130.models.AssessEnvironmentRiskRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AssessEnvironmentRiskRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 环境风险评估返回结果
      class AssessEnvironmentRiskRsp < TencentCloud::Common::AbstractModel
        # @param Score: <p>IP环境风险分信息</p>
        # @type Score: :class:`Tencentcloud::Rce.v20260130.models.DataScore`
        # @param Environment: <p>IP环境基础信息</p>
        # @type Environment: :class:`Tencentcloud::Rce.v20260130.models.Environment`

        attr_accessor :Score, :Environment

        def initialize(score=nil, environment=nil)
          @Score = score
          @Environment = environment
        end

        def deserialize(params)
          unless params['Score'].nil?
            @Score = DataScore.new
            @Score.deserialize(params['Score'])
          end
          unless params['Environment'].nil?
            @Environment = Environment.new
            @Environment.deserialize(params['Environment'])
          end
        end
      end

      # 风险分信息
      class DataScore < TencentCloud::Common::AbstractModel
        # @param RiskLevel: <p>风险等级</p>
        # @type RiskLevel: Integer
        # @param RiskLabels: <p>风险标签</p>
        # @type RiskLabels: Array

        attr_accessor :RiskLevel, :RiskLabels

        def initialize(risklevel=nil, risklabels=nil)
          @RiskLevel = risklevel
          @RiskLabels = risklabels
        end

        def deserialize(params)
          @RiskLevel = params['RiskLevel']
          unless params['RiskLabels'].nil?
            @RiskLabels = []
            params['RiskLabels'].each do |i|
              risklabel_tmp = RiskLabel.new
              risklabel_tmp.deserialize(i)
              @RiskLabels << risklabel_tmp
            end
          end
        end
      end

      # 决策信息
      class Decision < TencentCloud::Common::AbstractModel
        # @param DecisionResult: <p>决策结果</p><ul><li>pass：通过</li><li>review：复审</li><li>reject：拒绝</li></ul>
        # @type DecisionResult: String

        attr_accessor :DecisionResult

        def initialize(decisionresult=nil)
          @DecisionResult = decisionresult
        end

        def deserialize(params)
          @DecisionResult = params['DecisionResult']
        end
      end

      # 设备基础信息
      class Device < TencentCloud::Common::AbstractModel
        # @param DeviceId: <p>设备ID</p>
        # @type DeviceId: String
        # @param AppVersion: <p>App版本信息</p>
        # @type AppVersion: String
        # @param Brand: <p>品牌</p>
        # @type Brand: String
        # @param ClientIp: <p>客户端IP</p>
        # @type ClientIp: String
        # @param Model: <p>机型</p>
        # @type Model: String
        # @param NetworkType: <p>网络类型</p>
        # @type NetworkType: String
        # @param PackageName: <p>应用包名</p>
        # @type PackageName: String
        # @param Platform: <p>平台</p><p>枚举值：</p><ul><li>2： Android</li><li>3： IOS</li><li>4： H5</li><li>5： 微信小程序</li></ul>
        # @type Platform: String
        # @param SystemVersion: <p>系统版本</p>
        # @type SystemVersion: String
        # @param SdkBuildVersion: <p>SDK版本</p>
        # @type SdkBuildVersion: String

        attr_accessor :DeviceId, :AppVersion, :Brand, :ClientIp, :Model, :NetworkType, :PackageName, :Platform, :SystemVersion, :SdkBuildVersion

        def initialize(deviceid=nil, appversion=nil, brand=nil, clientip=nil, model=nil, networktype=nil, packagename=nil, platform=nil, systemversion=nil, sdkbuildversion=nil)
          @DeviceId = deviceid
          @AppVersion = appversion
          @Brand = brand
          @ClientIp = clientip
          @Model = model
          @NetworkType = networktype
          @PackageName = packagename
          @Platform = platform
          @SystemVersion = systemversion
          @SdkBuildVersion = sdkbuildversion
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @AppVersion = params['AppVersion']
          @Brand = params['Brand']
          @ClientIp = params['ClientIp']
          @Model = params['Model']
          @NetworkType = params['NetworkType']
          @PackageName = params['PackageName']
          @Platform = params['Platform']
          @SystemVersion = params['SystemVersion']
          @SdkBuildVersion = params['SdkBuildVersion']
        end
      end

      # 环境基础信息
      class Environment < TencentCloud::Common::AbstractModel
        # @param Location: <p>IP地理位置信息</p>
        # @type Location: :class:`Tencentcloud::Rce.v20260130.models.IPLocation`
        # @param Network: <p>IP基础网络信息</p>
        # @type Network: :class:`Tencentcloud::Rce.v20260130.models.IPNetwork`

        attr_accessor :Location, :Network

        def initialize(location=nil, network=nil)
          @Location = location
          @Network = network
        end

        def deserialize(params)
          unless params['Location'].nil?
            @Location = IPLocation.new
            @Location.deserialize(params['Location'])
          end
          unless params['Network'].nil?
            @Network = IPNetwork.new
            @Network.deserialize(params['Network'])
          end
        end
      end

      # IP地理位置信息
      class IPLocation < TencentCloud::Common::AbstractModel
        # @param Country: <p>IP地址所属国家</p>
        # @type Country: String
        # @param Region: <p>IP地址所属省份</p>
        # @type Region: String
        # @param City: <p>IP地址所属城市</p>
        # @type City: String
        # @param District: <p>IP地址所属地区</p>
        # @type District: String
        # @param Longitude: <p>IP地址的经度</p>
        # @type Longitude: String
        # @param Latitude: <p>IP地址的纬度</p>
        # @type Latitude: String
        # @param Timezone: <p>IP地址所属时区</p>
        # @type Timezone: String
        # @param ZipCode: <p>IP地址的邮政编码</p>
        # @type ZipCode: String

        attr_accessor :Country, :Region, :City, :District, :Longitude, :Latitude, :Timezone, :ZipCode

        def initialize(country=nil, region=nil, city=nil, district=nil, longitude=nil, latitude=nil, timezone=nil, zipcode=nil)
          @Country = country
          @Region = region
          @City = city
          @District = district
          @Longitude = longitude
          @Latitude = latitude
          @Timezone = timezone
          @ZipCode = zipcode
        end

        def deserialize(params)
          @Country = params['Country']
          @Region = params['Region']
          @City = params['City']
          @District = params['District']
          @Longitude = params['Longitude']
          @Latitude = params['Latitude']
          @Timezone = params['Timezone']
          @ZipCode = params['ZipCode']
        end
      end

      # IP基础网络信息
      class IPNetwork < TencentCloud::Common::AbstractModel
        # @param ISP: <p>互联网服务提供商</p>
        # @type ISP: String
        # @param ASN: <p>自治系统号</p>
        # @type ASN: String
        # @param Organization: <p>IP注册组织名称</p>
        # @type Organization: String
        # @param IsReserved: <p>是否保留IP</p>
        # @type IsReserved: Boolean
        # @param IsGateway: <p>是否网关IP</p>
        # @type IsGateway: Boolean
        # @param IsAnycast: <p>是否任播网络</p>
        # @type IsAnycast: Boolean
        # @param IsMobile: <p>是否移动网络</p>
        # @type IsMobile: Boolean
        # @param IsDynamic: <p>是否动态IP</p>
        # @type IsDynamic: Boolean
        # @param IsEgress: <p>是否网络出口</p>
        # @type IsEgress: Boolean
        # @param IsDNS: <p>是否域名解析</p>
        # @type IsDNS: Boolean
        # @param IsEducation: <p>是否教育机构</p>
        # @type IsEducation: Boolean
        # @param IsInstitution: <p>是否组织机构</p>
        # @type IsInstitution: Boolean
        # @param IsCompany: <p>是否企业专线</p>
        # @type IsCompany: Boolean
        # @param IsResidence: <p>是否家用宽带</p>
        # @type IsResidence: Boolean
        # @param IsCloudService: <p>是否云服务</p>
        # @type IsCloudService: Boolean
        # @param IsInfrastructure: <p>是否基础设施</p>
        # @type IsInfrastructure: Boolean
        # @param IsMXServer: <p>是否邮箱服务</p>
        # @type IsMXServer: Boolean

        attr_accessor :ISP, :ASN, :Organization, :IsReserved, :IsGateway, :IsAnycast, :IsMobile, :IsDynamic, :IsEgress, :IsDNS, :IsEducation, :IsInstitution, :IsCompany, :IsResidence, :IsCloudService, :IsInfrastructure, :IsMXServer

        def initialize(isp=nil, asn=nil, organization=nil, isreserved=nil, isgateway=nil, isanycast=nil, ismobile=nil, isdynamic=nil, isegress=nil, isdns=nil, iseducation=nil, isinstitution=nil, iscompany=nil, isresidence=nil, iscloudservice=nil, isinfrastructure=nil, ismxserver=nil)
          @ISP = isp
          @ASN = asn
          @Organization = organization
          @IsReserved = isreserved
          @IsGateway = isgateway
          @IsAnycast = isanycast
          @IsMobile = ismobile
          @IsDynamic = isdynamic
          @IsEgress = isegress
          @IsDNS = isdns
          @IsEducation = iseducation
          @IsInstitution = isinstitution
          @IsCompany = iscompany
          @IsResidence = isresidence
          @IsCloudService = iscloudservice
          @IsInfrastructure = isinfrastructure
          @IsMXServer = ismxserver
        end

        def deserialize(params)
          @ISP = params['ISP']
          @ASN = params['ASN']
          @Organization = params['Organization']
          @IsReserved = params['IsReserved']
          @IsGateway = params['IsGateway']
          @IsAnycast = params['IsAnycast']
          @IsMobile = params['IsMobile']
          @IsDynamic = params['IsDynamic']
          @IsEgress = params['IsEgress']
          @IsDNS = params['IsDNS']
          @IsEducation = params['IsEducation']
          @IsInstitution = params['IsInstitution']
          @IsCompany = params['IsCompany']
          @IsResidence = params['IsResidence']
          @IsCloudService = params['IsCloudService']
          @IsInfrastructure = params['IsInfrastructure']
          @IsMXServer = params['IsMXServer']
        end
      end

      # 风险标签
      class RiskLabel < TencentCloud::Common::AbstractModel
        # @param Id: <p>风险ID</p>
        # @type Id: String
        # @param Reason: <p>风险描述</p>
        # @type Reason: String

        attr_accessor :Id, :Reason

        def initialize(id=nil, reason=nil)
          @Id = id
          @Reason = reason
        end

        def deserialize(params)
          @Id = params['Id']
          @Reason = params['Reason']
        end
      end

    end
  end
end

