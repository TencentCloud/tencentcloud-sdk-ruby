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
  module Tds
    module V20220801
      # DescribeFraudBase请求参数结构体
      class DescribeFraudBaseRequest < TencentCloud::Common::AbstractModel
        # @param DeviceToken: 客户端通过SDK获取的设备Token
        # @type DeviceToken: String

        attr_accessor :DeviceToken
        
        def initialize(devicetoken=nil)
          @DeviceToken = devicetoken
        end

        def deserialize(params)
          @DeviceToken = params['DeviceToken']
        end
      end

      # DescribeFraudBase返回参数结构体
      class DescribeFraudBaseResponse < TencentCloud::Common::AbstractModel
        # @param AppVersion: App版本信息
        # @type AppVersion: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param ClientIp: 客户端IP
        # @type ClientIp: String
        # @param Model: 机型
        # @type Model: String
        # @param NetworkType: 网络类型
        # @type NetworkType: String
        # @param PackageName: 应用包名
        # @type PackageName: String
        # @param Platform: 平台（2-Android，3-iOS，4-H5，5-微信小程序）
        # @type Platform: String
        # @param SystemVersion: 系统版本
        # @type SystemVersion: String
        # @param SdkBuildNo: SDK版本号
        # @type SdkBuildNo: String
        # @param RiskInfos: 实时风险信息
        # @type RiskInfos: Array
        # @param HistRiskInfos: 离线风险信息
        # @type HistRiskInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppVersion, :Brand, :ClientIp, :Model, :NetworkType, :PackageName, :Platform, :SystemVersion, :SdkBuildNo, :RiskInfos, :HistRiskInfos, :RequestId
        
        def initialize(appversion=nil, brand=nil, clientip=nil, model=nil, networktype=nil, packagename=nil, platform=nil, systemversion=nil, sdkbuildno=nil, riskinfos=nil, histriskinfos=nil, requestid=nil)
          @AppVersion = appversion
          @Brand = brand
          @ClientIp = clientip
          @Model = model
          @NetworkType = networktype
          @PackageName = packagename
          @Platform = platform
          @SystemVersion = systemversion
          @SdkBuildNo = sdkbuildno
          @RiskInfos = riskinfos
          @HistRiskInfos = histriskinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @AppVersion = params['AppVersion']
          @Brand = params['Brand']
          @ClientIp = params['ClientIp']
          @Model = params['Model']
          @NetworkType = params['NetworkType']
          @PackageName = params['PackageName']
          @Platform = params['Platform']
          @SystemVersion = params['SystemVersion']
          @SdkBuildNo = params['SdkBuildNo']
          unless params['RiskInfos'].nil?
            @RiskInfos = []
            params['RiskInfos'].each do |i|
              riskinfo_tmp = RiskInfo.new
              riskinfo_tmp.deserialize(i)
              @RiskInfos << riskinfo_tmp
            end
          end
          unless params['HistRiskInfos'].nil?
            @HistRiskInfos = []
            params['HistRiskInfos'].each do |i|
              riskinfo_tmp = RiskInfo.new
              riskinfo_tmp.deserialize(i)
              @HistRiskInfos << riskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFraudPremium请求参数结构体
      class DescribeFraudPremiumRequest < TencentCloud::Common::AbstractModel
        # @param DeviceToken: 客户端通过SDK获取的设备Token
        # @type DeviceToken: String

        attr_accessor :DeviceToken
        
        def initialize(devicetoken=nil)
          @DeviceToken = devicetoken
        end

        def deserialize(params)
          @DeviceToken = params['DeviceToken']
        end
      end

      # DescribeFraudPremium返回参数结构体
      class DescribeFraudPremiumResponse < TencentCloud::Common::AbstractModel
        # @param AppVersion: App版本信息
        # @type AppVersion: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param ClientIp: 客户端IP
        # @type ClientIp: String
        # @param Model: 机型
        # @type Model: String
        # @param NetworkType: 网络类型
        # @type NetworkType: String
        # @param PackageName: 应用包名
        # @type PackageName: String
        # @param Platform: 平台（2-Android，3-iOS，4-H5，5-微信小程序）
        # @type Platform: String
        # @param SystemVersion: 系统版本
        # @type SystemVersion: String
        # @param SdkBuildNo: SDK版本号
        # @type SdkBuildNo: String
        # @param RiskInfos: 实时风险信息
        # @type RiskInfos: Array
        # @param HistRiskInfos: 离线风险信息
        # @type HistRiskInfos: Array
        # @param Openid: 设备匿名标识
        # @type Openid: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppVersion, :Brand, :ClientIp, :Model, :NetworkType, :PackageName, :Platform, :SystemVersion, :SdkBuildNo, :RiskInfos, :HistRiskInfos, :Openid, :RequestId
        
        def initialize(appversion=nil, brand=nil, clientip=nil, model=nil, networktype=nil, packagename=nil, platform=nil, systemversion=nil, sdkbuildno=nil, riskinfos=nil, histriskinfos=nil, openid=nil, requestid=nil)
          @AppVersion = appversion
          @Brand = brand
          @ClientIp = clientip
          @Model = model
          @NetworkType = networktype
          @PackageName = packagename
          @Platform = platform
          @SystemVersion = systemversion
          @SdkBuildNo = sdkbuildno
          @RiskInfos = riskinfos
          @HistRiskInfos = histriskinfos
          @Openid = openid
          @RequestId = requestid
        end

        def deserialize(params)
          @AppVersion = params['AppVersion']
          @Brand = params['Brand']
          @ClientIp = params['ClientIp']
          @Model = params['Model']
          @NetworkType = params['NetworkType']
          @PackageName = params['PackageName']
          @Platform = params['Platform']
          @SystemVersion = params['SystemVersion']
          @SdkBuildNo = params['SdkBuildNo']
          unless params['RiskInfos'].nil?
            @RiskInfos = []
            params['RiskInfos'].each do |i|
              riskinfo_tmp = RiskInfo.new
              riskinfo_tmp.deserialize(i)
              @RiskInfos << riskinfo_tmp
            end
          end
          unless params['HistRiskInfos'].nil?
            @HistRiskInfos = []
            params['HistRiskInfos'].each do |i|
              riskinfo_tmp = RiskInfo.new
              riskinfo_tmp.deserialize(i)
              @HistRiskInfos << riskinfo_tmp
            end
          end
          @Openid = params['Openid']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrustedID请求参数结构体
      class DescribeTrustedIDRequest < TencentCloud::Common::AbstractModel
        # @param DeviceToken: 客户端通过SDK获取的设备Token
        # @type DeviceToken: String

        attr_accessor :DeviceToken
        
        def initialize(devicetoken=nil)
          @DeviceToken = devicetoken
        end

        def deserialize(params)
          @DeviceToken = params['DeviceToken']
        end
      end

      # DescribeTrustedID返回参数结构体
      class DescribeTrustedIDResponse < TencentCloud::Common::AbstractModel
        # @param Openid: 设备匿名标识
        # @type Openid: String
        # @param AppVersion: App版本信息
        # @type AppVersion: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param ClientIp: 客户端IP
        # @type ClientIp: String
        # @param Model: 机型
        # @type Model: String
        # @param NetworkType: 网络类型
        # @type NetworkType: String
        # @param PackageName: 应用包名
        # @type PackageName: String
        # @param Platform: 平台（2-Android，3-iOS，4-H5，5-微信小程序）
        # @type Platform: String
        # @param SystemVersion: 系统版本
        # @type SystemVersion: String
        # @param SdkBuildNo: SDK版本号
        # @type SdkBuildNo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Openid, :AppVersion, :Brand, :ClientIp, :Model, :NetworkType, :PackageName, :Platform, :SystemVersion, :SdkBuildNo, :RequestId
        
        def initialize(openid=nil, appversion=nil, brand=nil, clientip=nil, model=nil, networktype=nil, packagename=nil, platform=nil, systemversion=nil, sdkbuildno=nil, requestid=nil)
          @Openid = openid
          @AppVersion = appversion
          @Brand = brand
          @ClientIp = clientip
          @Model = model
          @NetworkType = networktype
          @PackageName = packagename
          @Platform = platform
          @SystemVersion = systemversion
          @SdkBuildNo = sdkbuildno
          @RequestId = requestid
        end

        def deserialize(params)
          @Openid = params['Openid']
          @AppVersion = params['AppVersion']
          @Brand = params['Brand']
          @ClientIp = params['ClientIp']
          @Model = params['Model']
          @NetworkType = params['NetworkType']
          @PackageName = params['PackageName']
          @Platform = params['Platform']
          @SystemVersion = params['SystemVersion']
          @SdkBuildNo = params['SdkBuildNo']
          @RequestId = params['RequestId']
        end
      end

      # 风险信息
      class RiskInfo < TencentCloud::Common::AbstractModel
        # @param Type: 风险类型
        # @type Type: Integer
        # @param Level: 风险等级
        # @type Level: Integer

        attr_accessor :Type, :Level
        
        def initialize(type=nil, level=nil)
          @Type = type
          @Level = level
        end

        def deserialize(params)
          @Type = params['Type']
          @Level = params['Level']
        end
      end

    end
  end
end

