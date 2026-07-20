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
      # AssessEnvironmentRisk请求参数结构体
      class AssessEnvironmentRiskRequest < TencentCloud::Common::AbstractModel
        # @param UserIp: <p>客户端 IP 地址</p>
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
        # @param Score: <p>环境风险分信息</p>
        # @type Score: :class:`Tencentcloud::Rce.v20260130.models.DataScore`
        # @param Environment: <p>环境基础信息</p>
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

