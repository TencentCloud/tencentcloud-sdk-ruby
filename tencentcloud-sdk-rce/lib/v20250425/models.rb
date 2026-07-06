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
    module V20250425
      # IP地理位置信息
      class IpLocationInfo < TencentCloud::Common::AbstractModel
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
      class IpNetworkInfo < TencentCloud::Common::AbstractModel
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

      # 业务入参
      class ManageIPPortraitRiskInput < TencentCloud::Common::AbstractModel
        # @param UserIp: <p>用户公网ip（仅支持IPv4）</p>
        # @type UserIp: String
        # @param Channel: <p>渠道号<br>1：pc<br>2：H5<br>3：app<br>4：ott</p>
        # @type Channel: Integer

        attr_accessor :UserIp, :Channel

        def initialize(userip=nil, channel=nil)
          @UserIp = userip
          @Channel = channel
        end

        def deserialize(params)
          @UserIp = params['UserIp']
          @Channel = params['Channel']
        end
      end

      # IP画像出参
      class ManageIPPortraitRiskOutput < TencentCloud::Common::AbstractModel
        # @param Code: <p>错误码，0 表示成功，非0表示失败错误码。<br>0：成功<br>1002：参数错误<br>6000：系统内部错误</p>
        # @type Code: Integer
        # @param Message: <p>返回消息</p>
        # @type Message: String
        # @param Value: <p>结果</p>
        # @type Value: :class:`Tencentcloud::Rce.v20250425.models.ManageIPPortraitRiskValueOutput`

        attr_accessor :Code, :Message, :Value

        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Value'].nil?
            @Value = ManageIPPortraitRiskValueOutput.new
            @Value.deserialize(params['Value'])
          end
        end
      end

      # ManageIPPortraitRisk请求参数结构体
      class ManageIPPortraitRiskRequest < TencentCloud::Common::AbstractModel
        # @param PostTime: 请求秒级时间戳
        # @type PostTime: Integer
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Rce.v20250425.models.ManageIPPortraitRiskInput`

        attr_accessor :PostTime, :BusinessSecurityData

        def initialize(posttime=nil, businesssecuritydata=nil)
          @PostTime = posttime
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          @PostTime = params['PostTime']
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = ManageIPPortraitRiskInput.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
        end
      end

      # ManageIPPortraitRisk返回参数结构体
      class ManageIPPortraitRiskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 出参
        # @type Data: :class:`Tencentcloud::Rce.v20250425.models.ManageIPPortraitRiskOutput`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ManageIPPortraitRiskOutput.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 业务出参
      class ManageIPPortraitRiskValueOutput < TencentCloud::Common::AbstractModel
        # @param UserIp: <p>对应的IP</p>
        # @type UserIp: String
        # @param RiskScore: <p>返回风险等级, 0 - 4，0代表无风险，数值越大，风险越高</p>
        # @type RiskScore: Integer
        # @param RiskType: <p>风险类型<br>730001：垃圾邮件，当前IP存在未经用户请求或同意，大量发送的广告、欺诈或推广信息，通常通过邮件、短信或社交消息传播。<br>730002：恶意行为，当前IP存在破坏、窃取、干扰或未授权访问为目的的故意行为。<br>730003：恶意工具，当前IP关联用于实施恶意行为的软件或脚本，如病毒、木马、勒索软件、漏洞利用工具等。<br>730004：匿名IP，通过代理、Tor网络等技术手段隐藏真实来源的IP地址，存在逃避定位或实施攻击风险。<br>730005：开放端口，网络上处于开放状态的服务入口，若配置不当或存在漏洞。<br>730006：养号，当前IP存在通过模拟正常操作（如登录、浏览）维护和提升账号的活跃度与可信度行为。<br>730007：IDC，互联网数据中心，可能被黑客利用来托管恶意服务或发动攻击。<br>730008：晒号，当前IP在公开或地下论坛展示、交易非法获取的各类账号（如游戏、社交、金融账号）的行为。<br>730009：盗号，当前IP存在通过钓鱼、撞库、木马等手段，非法获取他人账号的登录凭证（用户名、密码等）行为。<br>730010：代理，作为中间节点转发网络流量，可用于隐藏真实IP、绕过地域限制。<br>730011：扫描，使用工具自动探测目标网络或系统的开放端口、服务、漏洞等。<br>730012：秒拨，当前IP通过不断重新拨号以快速切换IP地址，常被用于绕过基于IP的频率限制或封禁。<br>730013：爬虫，自动抓取网络信息的脚本或程序。<br>730014：VPN 虚拟专用网络。<br>730015：僵尸网络，当前IP由攻击者通过恶意软件控制的、大规模联网设备（如电脑、IoT设备）集群，可能被用于发动DDoS攻击、发送垃圾邮件等。<br>730016：网络攻击，当前IP存在对计算机系统、网络或数据的任何进攻行为。</p>
        # @type RiskType: Array
        # @param IpLocation: <p>IP地理位置信息</p>
        # @type IpLocation: :class:`Tencentcloud::Rce.v20250425.models.IpLocationInfo`
        # @param IpNetwork: <p>IP基础网络信息</p>
        # @type IpNetwork: :class:`Tencentcloud::Rce.v20250425.models.IpNetworkInfo`

        attr_accessor :UserIp, :RiskScore, :RiskType, :IpLocation, :IpNetwork

        def initialize(userip=nil, riskscore=nil, risktype=nil, iplocation=nil, ipnetwork=nil)
          @UserIp = userip
          @RiskScore = riskscore
          @RiskType = risktype
          @IpLocation = iplocation
          @IpNetwork = ipnetwork
        end

        def deserialize(params)
          @UserIp = params['UserIp']
          @RiskScore = params['RiskScore']
          @RiskType = params['RiskType']
          unless params['IpLocation'].nil?
            @IpLocation = IpLocationInfo.new
            @IpLocation.deserialize(params['IpLocation'])
          end
          unless params['IpNetwork'].nil?
            @IpNetwork = IpNetworkInfo.new
            @IpNetwork.deserialize(params['IpNetwork'])
          end
        end
      end

    end
  end
end

