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
  module Tds
    module V20220801
      # 数据授权信息
      class DataAuthorizationInfo < TencentCloud::Common::AbstractModel
        # @param DataProviderName: 数据委托方、需求方：客户主体名称。
        # @type DataProviderName: String
        # @param DataRecipientName: 数据受托方、提供方：腾讯云主体名称。

        # 固定填：腾讯云计算（北京）有限责任公司
        # @type DataRecipientName: String
        # @param UserDataType: 客户请求所涉及的用户个人信息类型，支持多选。实际以接口请求传参为准。
        # 1-手机号；
        # 2-微信开放账号；
        # 3-QQ开放账号；
        # 4-IP地址；
        # @type UserDataType: Array
        # @param IsAuthorize: 客户是否已按合规指南要求获取用户授权，同意客户委托腾讯云处理入参信息，结合已合法收集的用户数据进行必要处理得出服务结果，并返回给客户。

        # 1-已授权；其它值为未授权。
        # @type IsAuthorize: Integer
        # @param AuthorizationTerm: 客户获得的用户授权期限时间戳（单位秒）。

        # 不填或0默认无固定期限。
        # @type AuthorizationTerm: Integer
        # @param PrivacyPolicyLink: 客户获得用户授权所依赖的协议地址。
        # @type PrivacyPolicyLink: String

        attr_accessor :DataProviderName, :DataRecipientName, :UserDataType, :IsAuthorize, :AuthorizationTerm, :PrivacyPolicyLink

        def initialize(dataprovidername=nil, datarecipientname=nil, userdatatype=nil, isauthorize=nil, authorizationterm=nil, privacypolicylink=nil)
          @DataProviderName = dataprovidername
          @DataRecipientName = datarecipientname
          @UserDataType = userdatatype
          @IsAuthorize = isauthorize
          @AuthorizationTerm = authorizationterm
          @PrivacyPolicyLink = privacypolicylink
        end

        def deserialize(params)
          @DataProviderName = params['DataProviderName']
          @DataRecipientName = params['DataRecipientName']
          @UserDataType = params['UserDataType']
          @IsAuthorize = params['IsAuthorize']
          @AuthorizationTerm = params['AuthorizationTerm']
          @PrivacyPolicyLink = params['PrivacyPolicyLink']
        end
      end

      # DescribeFinanceFraudUltimate请求参数结构体
      class DescribeFinanceFraudUltimateRequest < TencentCloud::Common::AbstractModel
        # @param DeviceToken: 客户端通过SDK获取的设备Token
        # @type DeviceToken: String
        # @param SceneCode: 使用场景。目前仅支持login-登录场景、register-注册场景
        # @type SceneCode: String
        # @param UserId: 用户唯一标识
        # @type UserId: String
        # @param EventTime: 事件时间戳（毫秒）
        # @type EventTime: Integer
        # @param ElapsedTime: 事件耗时（毫秒），例如进入登录界面到点击登录按钮耗时
        # @type ElapsedTime: Integer
        # @param WeChatOpenId: 微信的OpenId
        # @type WeChatOpenId: String
        # @param PhoneNumber: 手机号码（注：不需要带国家代码 例如：13430421011）。可以传入原文或MD5
        # @type PhoneNumber: String
        # @param BizClientIp: 业务客户端IP
        # @type BizClientIp: String
        # @param QQOpenId: QQ的OpenId
        # @type QQOpenId: String
        # @param DataAuthorization: 数据授权信息
        # @type DataAuthorization: :class:`Tencentcloud::Tds.v20220801.models.DataAuthorizationInfo`

        attr_accessor :DeviceToken, :SceneCode, :UserId, :EventTime, :ElapsedTime, :WeChatOpenId, :PhoneNumber, :BizClientIp, :QQOpenId, :DataAuthorization

        def initialize(devicetoken=nil, scenecode=nil, userid=nil, eventtime=nil, elapsedtime=nil, wechatopenid=nil, phonenumber=nil, bizclientip=nil, qqopenid=nil, dataauthorization=nil)
          @DeviceToken = devicetoken
          @SceneCode = scenecode
          @UserId = userid
          @EventTime = eventtime
          @ElapsedTime = elapsedtime
          @WeChatOpenId = wechatopenid
          @PhoneNumber = phonenumber
          @BizClientIp = bizclientip
          @QQOpenId = qqopenid
          @DataAuthorization = dataauthorization
        end

        def deserialize(params)
          @DeviceToken = params['DeviceToken']
          @SceneCode = params['SceneCode']
          @UserId = params['UserId']
          @EventTime = params['EventTime']
          @ElapsedTime = params['ElapsedTime']
          @WeChatOpenId = params['WeChatOpenId']
          @PhoneNumber = params['PhoneNumber']
          @BizClientIp = params['BizClientIp']
          @QQOpenId = params['QQOpenId']
          unless params['DataAuthorization'].nil?
            @DataAuthorization = DataAuthorizationInfo.new
            @DataAuthorization.deserialize(params['DataAuthorization'])
          end
        end
      end

      # DescribeFinanceFraudUltimate返回参数结构体
      class DescribeFinanceFraudUltimateResponse < TencentCloud::Common::AbstractModel
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
        # @param SceneRiskInfos: 场景风险信息
        # @type SceneRiskInfos: Array
        # @param SuggestionLevel: 建议等级。1-极差，2-较差，3-中等，4-良好，5-优秀
        # @type SuggestionLevel: Integer
        # @param Unionid: 图灵盾统一ID
        # @type Unionid: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppVersion, :Brand, :ClientIp, :Model, :NetworkType, :PackageName, :Platform, :SystemVersion, :SdkBuildNo, :RiskInfos, :HistRiskInfos, :Openid, :SceneRiskInfos, :SuggestionLevel, :Unionid, :RequestId

        def initialize(appversion=nil, brand=nil, clientip=nil, model=nil, networktype=nil, packagename=nil, platform=nil, systemversion=nil, sdkbuildno=nil, riskinfos=nil, histriskinfos=nil, openid=nil, sceneriskinfos=nil, suggestionlevel=nil, unionid=nil, requestid=nil)
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
          @SceneRiskInfos = sceneriskinfos
          @SuggestionLevel = suggestionlevel
          @Unionid = unionid
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
          unless params['SceneRiskInfos'].nil?
            @SceneRiskInfos = []
            params['SceneRiskInfos'].each do |i|
              riskinfo_tmp = RiskInfo.new
              riskinfo_tmp.deserialize(i)
              @SceneRiskInfos << riskinfo_tmp
            end
          end
          @SuggestionLevel = params['SuggestionLevel']
          @Unionid = params['Unionid']
          @RequestId = params['RequestId']
        end
      end

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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeFraudUltimate请求参数结构体
      class DescribeFraudUltimateRequest < TencentCloud::Common::AbstractModel
        # @param DeviceToken: 客户端通过SDK获取的设备Token
        # @type DeviceToken: String
        # @param SceneCode: 使用场景。目前仅支持login-登录场景、register-注册场景
        # @type SceneCode: String
        # @param UserId: 用户唯一标识
        # @type UserId: String
        # @param EventTime: 事件时间戳（毫秒）
        # @type EventTime: Integer
        # @param ElapsedTime: 事件耗时（毫秒），例如进入登录界面到点击登录按钮耗时
        # @type ElapsedTime: Integer
        # @param WeChatOpenId: 微信的OpenId
        # @type WeChatOpenId: String
        # @param PhoneNumber: 手机号码（注：不需要带国家代码 例如：13430421011）。可以传入原文或MD5
        # @type PhoneNumber: String
        # @param ClientIP: 客户端IP
        # @type ClientIP: String
        # @param QQOpenId: QQ的OpenId
        # @type QQOpenId: String
        # @param DataAuthorization: 数据授权信息
        # @type DataAuthorization: :class:`Tencentcloud::Tds.v20220801.models.DataAuthorizationInfo`

        attr_accessor :DeviceToken, :SceneCode, :UserId, :EventTime, :ElapsedTime, :WeChatOpenId, :PhoneNumber, :ClientIP, :QQOpenId, :DataAuthorization

        def initialize(devicetoken=nil, scenecode=nil, userid=nil, eventtime=nil, elapsedtime=nil, wechatopenid=nil, phonenumber=nil, clientip=nil, qqopenid=nil, dataauthorization=nil)
          @DeviceToken = devicetoken
          @SceneCode = scenecode
          @UserId = userid
          @EventTime = eventtime
          @ElapsedTime = elapsedtime
          @WeChatOpenId = wechatopenid
          @PhoneNumber = phonenumber
          @ClientIP = clientip
          @QQOpenId = qqopenid
          @DataAuthorization = dataauthorization
        end

        def deserialize(params)
          @DeviceToken = params['DeviceToken']
          @SceneCode = params['SceneCode']
          @UserId = params['UserId']
          @EventTime = params['EventTime']
          @ElapsedTime = params['ElapsedTime']
          @WeChatOpenId = params['WeChatOpenId']
          @PhoneNumber = params['PhoneNumber']
          @ClientIP = params['ClientIP']
          @QQOpenId = params['QQOpenId']
          unless params['DataAuthorization'].nil?
            @DataAuthorization = DataAuthorizationInfo.new
            @DataAuthorization.deserialize(params['DataAuthorization'])
          end
        end
      end

      # DescribeFraudUltimate返回参数结构体
      class DescribeFraudUltimateResponse < TencentCloud::Common::AbstractModel
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
        # @param SceneRiskInfos: 场景风险信息
        # @type SceneRiskInfos: Array
        # @param SuggestionLevel: 建议等级。1-极差，2-较差，3-中等，4-良好，5-优秀
        # @type SuggestionLevel: Integer
        # @param Unionid: 图灵盾统一ID
        # @type Unionid: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppVersion, :Brand, :ClientIp, :Model, :NetworkType, :PackageName, :Platform, :SystemVersion, :SdkBuildNo, :RiskInfos, :HistRiskInfos, :Openid, :SceneRiskInfos, :SuggestionLevel, :Unionid, :RequestId

        def initialize(appversion=nil, brand=nil, clientip=nil, model=nil, networktype=nil, packagename=nil, platform=nil, systemversion=nil, sdkbuildno=nil, riskinfos=nil, histriskinfos=nil, openid=nil, sceneriskinfos=nil, suggestionlevel=nil, unionid=nil, requestid=nil)
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
          @SceneRiskInfos = sceneriskinfos
          @SuggestionLevel = suggestionlevel
          @Unionid = unionid
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
          unless params['SceneRiskInfos'].nil?
            @SceneRiskInfos = []
            params['SceneRiskInfos'].each do |i|
              riskinfo_tmp = RiskInfo.new
              riskinfo_tmp.deserialize(i)
              @SceneRiskInfos << riskinfo_tmp
            end
          end
          @SuggestionLevel = params['SuggestionLevel']
          @Unionid = params['Unionid']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Type: 风险类型。更多详情请参见：[Android](https://cloud.tencent.com/document/product/1628/85898)、[iOS](https://cloud.tencent.com/document/product/1628/85896)、[H5](https://cloud.tencent.com/document/product/1628/85897)、[小程序](https://cloud.tencent.com/document/product/1628/85895)、[场景风险](https://cloud.tencent.com/document/product/1628/88912)
        # @type Type: Integer
        # @param Level: [风险等级](https://cloud.tencent.com/document/product/1628/85308)
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

