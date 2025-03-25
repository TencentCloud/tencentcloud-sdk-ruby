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
  module Vcube
    module V20220410
      # 应用包名信息
      class AppInfo < TencentCloud::Common::AbstractModel
        # @param Id: 应用Id
        # @type Id: Integer
        # @param AppId: 用户appid
        # @type AppId: String
        # @param AppName: 应用名称
        # @type AppName: String
        # @param BundleId: Ios 包名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleId: String
        # @param PackageName: Andorid 包名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageName: String
        # @param AppType: 应用详情
        # @type AppType: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String
        # @param MacBundleId: Mac 进程名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MacBundleId: String
        # @param WinProcessName: windows 进程名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WinProcessName: String
        # @param DomainList: 允许的web域名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainList: Array

        attr_accessor :Id, :AppId, :AppName, :BundleId, :PackageName, :AppType, :CreatedAt, :UpdatedAt, :MacBundleId, :WinProcessName, :DomainList

        def initialize(id=nil, appid=nil, appname=nil, bundleid=nil, packagename=nil, apptype=nil, createdat=nil, updatedat=nil, macbundleid=nil, winprocessname=nil, domainlist=nil)
          @Id = id
          @AppId = appid
          @AppName = appname
          @BundleId = bundleid
          @PackageName = packagename
          @AppType = apptype
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @MacBundleId = macbundleid
          @WinProcessName = winprocessname
          @DomainList = domainlist
        end

        def deserialize(params)
          @Id = params['Id']
          @AppId = params['AppId']
          @AppName = params['AppName']
          @BundleId = params['BundleId']
          @PackageName = params['PackageName']
          @AppType = params['AppType']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @MacBundleId = params['MacBundleId']
          @WinProcessName = params['WinProcessName']
          @DomainList = params['DomainList']
        end
      end

      # 视立方license用户 应用结构
      class ApplicationInfo < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称
        # @type AppName: String
        # @param BundleId: Ios应用的唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleId: String
        # @param AppType: 应用类型，formal： 正式应用，test：测试应用
        # @type AppType: String
        # @param Licenses: license数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Licenses: Array
        # @param LicenseKey: license 秘钥
        # @type LicenseKey: String
        # @param PackageName: 安卓应用的唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageName: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String
        # @param ApplicationId: 用户应用Id
        # @type ApplicationId: Integer
        # @param LicenseUrl: 视立方下载license的url
        # @type LicenseUrl: String
        # @param XMagics: 优图美视信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type XMagics: Array
        # @param MacBundleId: Mac  进程名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MacBundleId: String
        # @param WinProcessName: windows 进程名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WinProcessName: String
        # @param DomainList: web端Domain列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainList: Array
        # @param AppId: 账号AppId
        # @type AppId: String

        attr_accessor :AppName, :BundleId, :AppType, :Licenses, :LicenseKey, :PackageName, :CreatedAt, :UpdatedAt, :ApplicationId, :LicenseUrl, :XMagics, :MacBundleId, :WinProcessName, :DomainList, :AppId

        def initialize(appname=nil, bundleid=nil, apptype=nil, licenses=nil, licensekey=nil, packagename=nil, createdat=nil, updatedat=nil, applicationid=nil, licenseurl=nil, xmagics=nil, macbundleid=nil, winprocessname=nil, domainlist=nil, appid=nil)
          @AppName = appname
          @BundleId = bundleid
          @AppType = apptype
          @Licenses = licenses
          @LicenseKey = licensekey
          @PackageName = packagename
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @ApplicationId = applicationid
          @LicenseUrl = licenseurl
          @XMagics = xmagics
          @MacBundleId = macbundleid
          @WinProcessName = winprocessname
          @DomainList = domainlist
          @AppId = appid
        end

        def deserialize(params)
          @AppName = params['AppName']
          @BundleId = params['BundleId']
          @AppType = params['AppType']
          unless params['Licenses'].nil?
            @Licenses = []
            params['Licenses'].each do |i|
              license_tmp = License.new
              license_tmp.deserialize(i)
              @Licenses << license_tmp
            end
          end
          @LicenseKey = params['LicenseKey']
          @PackageName = params['PackageName']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @ApplicationId = params['ApplicationId']
          @LicenseUrl = params['LicenseUrl']
          unless params['XMagics'].nil?
            @XMagics = []
            params['XMagics'].each do |i|
              xmagicinfo_tmp = XMagicInfo.new
              xmagicinfo_tmp.deserialize(i)
              @XMagics << xmagicinfo_tmp
            end
          end
          @MacBundleId = params['MacBundleId']
          @WinProcessName = params['WinProcessName']
          @DomainList = params['DomainList']
          @AppId = params['AppId']
        end
      end

      # CreateActivityLicense请求参数结构体
      class CreateActivityLicenseRequest < TencentCloud::Common::AbstractModel
        # @param Activity: 活动Id
        # @type Activity: String

        attr_accessor :Activity

        def initialize(activity=nil)
          @Activity = activity
        end

        def deserialize(params)
          @Activity = params['Activity']
        end
      end

      # CreateActivityLicense返回参数结构体
      class CreateActivityLicenseResponse < TencentCloud::Common::AbstractModel
        # @param AppId: 用户appid
        # @type AppId: String
        # @param AppName: app名称
        # @type AppName: String
        # @param BundleId: ios包名
        # @type BundleId: String
        # @param PackageName: 安卓包名
        # @type PackageName: String
        # @param Duration: 有效时长
        # @type Duration: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param LicenseKey: license秘钥
        # @type LicenseKey: String
        # @param LicenseUrl: license 授权文件下载链接
        # @type LicenseUrl: String
        # @param ResidueDay: license剩余天数，最后一天以及过期显示0
        # @type ResidueDay: Integer
        # @param Residue: license剩余秒数
        # @type Residue: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :AppName, :BundleId, :PackageName, :Duration, :StartTime, :EndTime, :LicenseKey, :LicenseUrl, :ResidueDay, :Residue, :RequestId

        def initialize(appid=nil, appname=nil, bundleid=nil, packagename=nil, duration=nil, starttime=nil, endtime=nil, licensekey=nil, licenseurl=nil, residueday=nil, residue=nil, requestid=nil)
          @AppId = appid
          @AppName = appname
          @BundleId = bundleid
          @PackageName = packagename
          @Duration = duration
          @StartTime = starttime
          @EndTime = endtime
          @LicenseKey = licensekey
          @LicenseUrl = licenseurl
          @ResidueDay = residueday
          @Residue = residue
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @AppName = params['AppName']
          @BundleId = params['BundleId']
          @PackageName = params['PackageName']
          @Duration = params['Duration']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @LicenseKey = params['LicenseKey']
          @LicenseUrl = params['LicenseUrl']
          @ResidueDay = params['ResidueDay']
          @Residue = params['Residue']
          @RequestId = params['RequestId']
        end
      end

      # CreateApplicationAndBindLicense请求参数结构体
      class CreateApplicationAndBindLicenseRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名
        # @type AppName: String
        # @param BundleId: 应用ID
        # @type BundleId: String
        # @param PackageName: 包名
        # @type PackageName: String
        # @param ResourceIds: 资源包ID
        # @type ResourceIds: Array
        # @param CompanyPermit: 营业执照
        # @type CompanyPermit: String
        # @param CompanyType: 公司类型
        # @type CompanyType: String
        # @param CompanyName: 公司名称
        # @type CompanyName: String
        # @param XMagicResourceIds: 优图资源id列表
        # @type XMagicResourceIds: Array
        # @param MacBundleId: Mac 进程名
        # @type MacBundleId: String
        # @param WinProcessName: Windows 进程名
        # @type WinProcessName: String
        # @param DomainList: 要开通的域名列表
        # @type DomainList: Array
        # @param Platform: 要开通的端，web/mobile/pc
        # @type Platform: String

        attr_accessor :AppName, :BundleId, :PackageName, :ResourceIds, :CompanyPermit, :CompanyType, :CompanyName, :XMagicResourceIds, :MacBundleId, :WinProcessName, :DomainList, :Platform

        def initialize(appname=nil, bundleid=nil, packagename=nil, resourceids=nil, companypermit=nil, companytype=nil, companyname=nil, xmagicresourceids=nil, macbundleid=nil, winprocessname=nil, domainlist=nil, platform=nil)
          @AppName = appname
          @BundleId = bundleid
          @PackageName = packagename
          @ResourceIds = resourceids
          @CompanyPermit = companypermit
          @CompanyType = companytype
          @CompanyName = companyname
          @XMagicResourceIds = xmagicresourceids
          @MacBundleId = macbundleid
          @WinProcessName = winprocessname
          @DomainList = domainlist
          @Platform = platform
        end

        def deserialize(params)
          @AppName = params['AppName']
          @BundleId = params['BundleId']
          @PackageName = params['PackageName']
          @ResourceIds = params['ResourceIds']
          @CompanyPermit = params['CompanyPermit']
          @CompanyType = params['CompanyType']
          @CompanyName = params['CompanyName']
          @XMagicResourceIds = params['XMagicResourceIds']
          @MacBundleId = params['MacBundleId']
          @WinProcessName = params['WinProcessName']
          @DomainList = params['DomainList']
          @Platform = params['Platform']
        end
      end

      # CreateApplicationAndBindLicense返回参数结构体
      class CreateApplicationAndBindLicenseResponse < TencentCloud::Common::AbstractModel
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

      # CreateApplicationAndVideo请求参数结构体
      class CreateApplicationAndVideoRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称
        # @type AppName: String
        # @param BundleId: Ios 包名
        # @type BundleId: String
        # @param PackageName: Android 包名
        # @type PackageName: String

        attr_accessor :AppName, :BundleId, :PackageName

        def initialize(appname=nil, bundleid=nil, packagename=nil)
          @AppName = appname
          @BundleId = bundleid
          @PackageName = packagename
        end

        def deserialize(params)
          @AppName = params['AppName']
          @BundleId = params['BundleId']
          @PackageName = params['PackageName']
        end
      end

      # CreateApplicationAndVideo返回参数结构体
      class CreateApplicationAndVideoResponse < TencentCloud::Common::AbstractModel
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

      # CreateApplicationAndWebPlayerLicense请求参数结构体
      class CreateApplicationAndWebPlayerLicenseRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称
        # @type AppName: String
        # @param DomainList: 域名列表
        # @type DomainList: Array

        attr_accessor :AppName, :DomainList

        def initialize(appname=nil, domainlist=nil)
          @AppName = appname
          @DomainList = domainlist
        end

        def deserialize(params)
          @AppName = params['AppName']
          @DomainList = params['DomainList']
        end
      end

      # CreateApplicationAndWebPlayerLicense返回参数结构体
      class CreateApplicationAndWebPlayerLicenseResponse < TencentCloud::Common::AbstractModel
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

      # CreateLicense请求参数结构体
      class CreateLicenseRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param ResourceIds: 资源包ID
        # @type ResourceIds: Array
        # @param Group: url地址分组
        # @type Group: Integer

        attr_accessor :ApplicationId, :ResourceIds, :Group

        def initialize(applicationid=nil, resourceids=nil, group=nil)
          @ApplicationId = applicationid
          @ResourceIds = resourceids
          @Group = group
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @ResourceIds = params['ResourceIds']
          @Group = params['Group']
        end
      end

      # CreateLicense返回参数结构体
      class CreateLicenseResponse < TencentCloud::Common::AbstractModel
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

      # CreateTestXMagic请求参数结构体
      class CreateTestXMagicRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 将腾讯特效创建到哪个应用下
        # @type ApplicationId: Integer
        # @param CompanyPermit: 营业执照
        # @type CompanyPermit: String
        # @param CompanyType: 公司类型
        # @type CompanyType: String
        # @param CompanyName: 公司名称
        # @type CompanyName: String
        # @param PlanList: 测试套餐名称
        # @type PlanList: Array

        attr_accessor :ApplicationId, :CompanyPermit, :CompanyType, :CompanyName, :PlanList

        def initialize(applicationid=nil, companypermit=nil, companytype=nil, companyname=nil, planlist=nil)
          @ApplicationId = applicationid
          @CompanyPermit = companypermit
          @CompanyType = companytype
          @CompanyName = companyname
          @PlanList = planlist
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @CompanyPermit = params['CompanyPermit']
          @CompanyType = params['CompanyType']
          @CompanyName = params['CompanyName']
          @PlanList = params['PlanList']
        end
      end

      # CreateTestXMagic返回参数结构体
      class CreateTestXMagicResponse < TencentCloud::Common::AbstractModel
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

      # CreateTrialApplicationAndLicense请求参数结构体
      class CreateTrialApplicationAndLicenseRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名
        # @type AppName: String
        # @param BundleId: 应用ID
        # @type BundleId: String
        # @param PackageName: 包名
        # @type PackageName: String
        # @param FeatureIds: 功能 id 数组
        # @type FeatureIds: Array
        # @param XMagic: 是否要开通优图功能
        # @type XMagic: Boolean
        # @param CompanyPermit: 营业执照
        # @type CompanyPermit: String
        # @param CompanyType: 公司类型
        # @type CompanyType: String
        # @param CompanyName: 公司名称
        # @type CompanyName: String
        # @param PlanList: 要开通的测试功能名称，基础套餐只能有一个
        # @type PlanList: Array
        # @param MacBundleId: Mac 进程名
        # @type MacBundleId: String
        # @param WinProcessName: Windows 进程名
        # @type WinProcessName: String
        # @param Platform: 要创建到哪个平台，web、mobile、pc，默认mobile
        # @type Platform: String
        # @param DomainList: 授权域名列表
        # @type DomainList: Array

        attr_accessor :AppName, :BundleId, :PackageName, :FeatureIds, :XMagic, :CompanyPermit, :CompanyType, :CompanyName, :PlanList, :MacBundleId, :WinProcessName, :Platform, :DomainList

        def initialize(appname=nil, bundleid=nil, packagename=nil, featureids=nil, xmagic=nil, companypermit=nil, companytype=nil, companyname=nil, planlist=nil, macbundleid=nil, winprocessname=nil, platform=nil, domainlist=nil)
          @AppName = appname
          @BundleId = bundleid
          @PackageName = packagename
          @FeatureIds = featureids
          @XMagic = xmagic
          @CompanyPermit = companypermit
          @CompanyType = companytype
          @CompanyName = companyname
          @PlanList = planlist
          @MacBundleId = macbundleid
          @WinProcessName = winprocessname
          @Platform = platform
          @DomainList = domainlist
        end

        def deserialize(params)
          @AppName = params['AppName']
          @BundleId = params['BundleId']
          @PackageName = params['PackageName']
          @FeatureIds = params['FeatureIds']
          @XMagic = params['XMagic']
          @CompanyPermit = params['CompanyPermit']
          @CompanyType = params['CompanyType']
          @CompanyName = params['CompanyName']
          @PlanList = params['PlanList']
          @MacBundleId = params['MacBundleId']
          @WinProcessName = params['WinProcessName']
          @Platform = params['Platform']
          @DomainList = params['DomainList']
        end
      end

      # CreateTrialApplicationAndLicense返回参数结构体
      class CreateTrialApplicationAndLicenseResponse < TencentCloud::Common::AbstractModel
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

      # CreateTrialLicense请求参数结构体
      class CreateTrialLicenseRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param FeatureIds: 功能 ID 数组
        # @type FeatureIds: Array
        # @param Group: Url分组
        # @type Group: Integer

        attr_accessor :ApplicationId, :FeatureIds, :Group

        def initialize(applicationid=nil, featureids=nil, group=nil)
          @ApplicationId = applicationid
          @FeatureIds = featureids
          @Group = group
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @FeatureIds = params['FeatureIds']
          @Group = params['Group']
        end
      end

      # CreateTrialLicense返回参数结构体
      class CreateTrialLicenseResponse < TencentCloud::Common::AbstractModel
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

      # CreateXMagic请求参数结构体
      class CreateXMagicRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ApplicationId
        # @type ApplicationId: Integer
        # @param CompanyPermit: 营业执照
        # @type CompanyPermit: String
        # @param CompanyType: 公司类型
        # @type CompanyType: String
        # @param CompanyName: 公司名称
        # @type CompanyName: String
        # @param XMagicResourceIds: 优图资源id列表
        # @type XMagicResourceIds: Array

        attr_accessor :ApplicationId, :CompanyPermit, :CompanyType, :CompanyName, :XMagicResourceIds

        def initialize(applicationid=nil, companypermit=nil, companytype=nil, companyname=nil, xmagicresourceids=nil)
          @ApplicationId = applicationid
          @CompanyPermit = companypermit
          @CompanyType = companytype
          @CompanyName = companyname
          @XMagicResourceIds = xmagicresourceids
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @CompanyPermit = params['CompanyPermit']
          @CompanyType = params['CompanyType']
          @CompanyName = params['CompanyName']
          @XMagicResourceIds = params['XMagicResourceIds']
        end
      end

      # CreateXMagic返回参数结构体
      class CreateXMagicResponse < TencentCloud::Common::AbstractModel
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

      # DescribeFeatureList请求参数结构体
      class DescribeFeatureListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeFeatureList返回参数结构体
      class DescribeFeatureListResponse < TencentCloud::Common::AbstractModel
        # @param FeatureList: 功能列表
        # @type FeatureList: Array
        # @param XMagicFeatureList: 优图功能列表
        # @type XMagicFeatureList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FeatureList, :XMagicFeatureList, :RequestId

        def initialize(featurelist=nil, xmagicfeaturelist=nil, requestid=nil)
          @FeatureList = featurelist
          @XMagicFeatureList = xmagicfeaturelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FeatureList'].nil?
            @FeatureList = []
            params['FeatureList'].each do |i|
              videofeature_tmp = VideoFeature.new
              videofeature_tmp.deserialize(i)
              @FeatureList << videofeature_tmp
            end
          end
          unless params['XMagicFeatureList'].nil?
            @XMagicFeatureList = []
            params['XMagicFeatureList'].each do |i|
              xmagicfeature_tmp = XMagicFeature.new
              xmagicfeature_tmp.deserialize(i)
              @XMagicFeatureList << xmagicfeature_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLicenseList请求参数结构体
      class DescribeLicenseListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLicenseList返回参数结构体
      class DescribeLicenseListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeNews请求参数结构体
      class DescribeNewsRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码，从0开始
        # @type PageNumber: Integer
        # @param PageSize: 每页数据量
        # @type PageSize: Integer

        attr_accessor :PageNumber, :PageSize

        def initialize(pagenumber=nil, pagesize=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeNews返回参数结构体
      class DescribeNewsResponse < TencentCloud::Common::AbstractModel
        # @param NewsList: 产品动态详情列表
        # @type NewsList: Array
        # @param Count: 总数据量
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NewsList, :Count, :RequestId

        def initialize(newslist=nil, count=nil, requestid=nil)
          @NewsList = newslist
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NewsList'].nil?
            @NewsList = []
            params['NewsList'].each do |i|
              newsinfo_tmp = NewsInfo.new
              newsinfo_tmp.deserialize(i)
              @NewsList << newsinfo_tmp
            end
          end
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSTS请求参数结构体
      class DescribeSTSRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSTS返回参数结构体
      class DescribeSTSResponse < TencentCloud::Common::AbstractModel
        # @param Bucket: 桶名称
        # @type Bucket: String
        # @param Region: 地区
        # @type Region: String
        # @param StartTime: 开始生效时间
        # @type StartTime: Integer
        # @param ExpiredTime: 临时token过期时间
        # @type ExpiredTime: Integer
        # @param SessionToken: 临时token
        # @type SessionToken: String
        # @param TmpSecretId: 临时SecretId
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时秘钥
        # @type TmpSecretKey: String
        # @param Path: 上传的根路径，底下可以多层
        # @type Path: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Bucket, :Region, :StartTime, :ExpiredTime, :SessionToken, :TmpSecretId, :TmpSecretKey, :Path, :RequestId

        def initialize(bucket=nil, region=nil, starttime=nil, expiredtime=nil, sessiontoken=nil, tmpsecretid=nil, tmpsecretkey=nil, path=nil, requestid=nil)
          @Bucket = bucket
          @Region = region
          @StartTime = starttime
          @ExpiredTime = expiredtime
          @SessionToken = sessiontoken
          @TmpSecretId = tmpsecretid
          @TmpSecretKey = tmpsecretkey
          @Path = path
          @RequestId = requestid
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @Region = params['Region']
          @StartTime = params['StartTime']
          @ExpiredTime = params['ExpiredTime']
          @SessionToken = params['SessionToken']
          @TmpSecretId = params['TmpSecretId']
          @TmpSecretKey = params['TmpSecretKey']
          @Path = params['Path']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrialFeature请求参数结构体
      class DescribeTrialFeatureRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeTrialFeature返回参数结构体
      class DescribeTrialFeatureResponse < TencentCloud::Common::AbstractModel
        # @param FeatureList: 功能列表
        # @type FeatureList: Array
        # @param XMagicTrial: 可以开通的优图测试功能
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type XMagicTrial: :class:`Tencentcloud::Vcube.v20220410.models.XMagicTrial`
        # @param XMagicTrialList: 可以开通的优图测试功能列表
        # @type XMagicTrialList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FeatureList, :XMagicTrial, :XMagicTrialList, :RequestId

        def initialize(featurelist=nil, xmagictrial=nil, xmagictriallist=nil, requestid=nil)
          @FeatureList = featurelist
          @XMagicTrial = xmagictrial
          @XMagicTrialList = xmagictriallist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FeatureList'].nil?
            @FeatureList = []
            params['FeatureList'].each do |i|
              feature_tmp = Feature.new
              feature_tmp.deserialize(i)
              @FeatureList << feature_tmp
            end
          end
          unless params['XMagicTrial'].nil?
            @XMagicTrial = XMagicTrial.new
            @XMagicTrial.deserialize(params['XMagicTrial'])
          end
          unless params['XMagicTrialList'].nil?
            @XMagicTrialList = []
            params['XMagicTrialList'].each do |i|
              xmagictrial_tmp = XMagicTrial.new
              xmagictrial_tmp.deserialize(i)
              @XMagicTrialList << xmagictrial_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserConfig请求参数结构体
      class DescribeUserConfigRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeUserConfig返回参数结构体
      class DescribeUserConfigResponse < TencentCloud::Common::AbstractModel
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

      # DescribeVcubeApplicationAndLicense请求参数结构体
      class DescribeVcubeApplicationAndLicenseRequest < TencentCloud::Common::AbstractModel
        # @param BizType: 查询对应业务方的license，直播:live 点播：vod
        # @type BizType: String
        # @param AppType: 应用类型测试：test，正式：formal
        # @type AppType: String
        # @param AppName: 应用名称，模糊查询
        # @type AppName: String
        # @param BundleId: Ios包名，模糊查询
        # @type BundleId: String
        # @param PackageName: Android 包名，模糊查询
        # @type PackageName: String
        # @param Platform: 平台信息，pc 或者 mobile
        # @type Platform: String
        # @param MacBundleId: Mac 进程名
        # @type MacBundleId: String
        # @param WinProcessName: Windows 进程名
        # @type WinProcessName: String

        attr_accessor :BizType, :AppType, :AppName, :BundleId, :PackageName, :Platform, :MacBundleId, :WinProcessName

        def initialize(biztype=nil, apptype=nil, appname=nil, bundleid=nil, packagename=nil, platform=nil, macbundleid=nil, winprocessname=nil)
          @BizType = biztype
          @AppType = apptype
          @AppName = appname
          @BundleId = bundleid
          @PackageName = packagename
          @Platform = platform
          @MacBundleId = macbundleid
          @WinProcessName = winprocessname
        end

        def deserialize(params)
          @BizType = params['BizType']
          @AppType = params['AppType']
          @AppName = params['AppName']
          @BundleId = params['BundleId']
          @PackageName = params['PackageName']
          @Platform = params['Platform']
          @MacBundleId = params['MacBundleId']
          @WinProcessName = params['WinProcessName']
        end
      end

      # DescribeVcubeApplicationAndLicense返回参数结构体
      class DescribeVcubeApplicationAndLicenseResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationInfoList: 应用license列表
        # @type ApplicationInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicationInfoList, :RequestId

        def initialize(applicationinfolist=nil, requestid=nil)
          @ApplicationInfoList = applicationinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApplicationInfoList'].nil?
            @ApplicationInfoList = []
            params['ApplicationInfoList'].each do |i|
              applicationinfo_tmp = ApplicationInfo.new
              applicationinfo_tmp.deserialize(i)
              @ApplicationInfoList << applicationinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVcubeApplicationAndPlayList请求参数结构体
      class DescribeVcubeApplicationAndPlayListRequest < TencentCloud::Common::AbstractModel
        # @param BizType: 查询对应业务方的license，直播:live 点播：vod
        # @type BizType: String
        # @param AppType: 应用类型测试：test，正式：formal
        # @type AppType: String
        # @param AppName: 应用名称，模糊查询
        # @type AppName: String
        # @param BundleId: Ios包名，模糊查询
        # @type BundleId: String
        # @param PackageName: Android 包名，模糊查询
        # @type PackageName: String
        # @param Platform: 平台信息，pc 或者 mobile
        # @type Platform: String
        # @param MacBundleId: Mac 进程名
        # @type MacBundleId: String
        # @param WinProcessName: Windows 进程名
        # @type WinProcessName: String

        attr_accessor :BizType, :AppType, :AppName, :BundleId, :PackageName, :Platform, :MacBundleId, :WinProcessName

        def initialize(biztype=nil, apptype=nil, appname=nil, bundleid=nil, packagename=nil, platform=nil, macbundleid=nil, winprocessname=nil)
          @BizType = biztype
          @AppType = apptype
          @AppName = appname
          @BundleId = bundleid
          @PackageName = packagename
          @Platform = platform
          @MacBundleId = macbundleid
          @WinProcessName = winprocessname
        end

        def deserialize(params)
          @BizType = params['BizType']
          @AppType = params['AppType']
          @AppName = params['AppName']
          @BundleId = params['BundleId']
          @PackageName = params['PackageName']
          @Platform = params['Platform']
          @MacBundleId = params['MacBundleId']
          @WinProcessName = params['WinProcessName']
        end
      end

      # DescribeVcubeApplicationAndPlayList返回参数结构体
      class DescribeVcubeApplicationAndPlayListResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationInfoList: 应用license列表
        # @type ApplicationInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicationInfoList, :RequestId

        def initialize(applicationinfolist=nil, requestid=nil)
          @ApplicationInfoList = applicationinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApplicationInfoList'].nil?
            @ApplicationInfoList = []
            params['ApplicationInfoList'].each do |i|
              applicationinfo_tmp = ApplicationInfo.new
              applicationinfo_tmp.deserialize(i)
              @ApplicationInfoList << applicationinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVcubeApplicationAndXMagicList请求参数结构体
      class DescribeVcubeApplicationAndXMagicListRequest < TencentCloud::Common::AbstractModel
        # @param BizType: 查询对应业务方的license，直播:live 点播：vod
        # @type BizType: String
        # @param AppType: 应用类型测试：test，正式：formal
        # @type AppType: String
        # @param AppName: 应用名称，模糊查询
        # @type AppName: String
        # @param BundleId: Ios包名，模糊查询
        # @type BundleId: String
        # @param PackageName: Android 包名，模糊查询
        # @type PackageName: String
        # @param Platform: 平台信息，pc 或者 mobile
        # @type Platform: String
        # @param MacBundleId: Mac 进程名
        # @type MacBundleId: String
        # @param WinProcessName: Windows 进程名
        # @type WinProcessName: String

        attr_accessor :BizType, :AppType, :AppName, :BundleId, :PackageName, :Platform, :MacBundleId, :WinProcessName

        def initialize(biztype=nil, apptype=nil, appname=nil, bundleid=nil, packagename=nil, platform=nil, macbundleid=nil, winprocessname=nil)
          @BizType = biztype
          @AppType = apptype
          @AppName = appname
          @BundleId = bundleid
          @PackageName = packagename
          @Platform = platform
          @MacBundleId = macbundleid
          @WinProcessName = winprocessname
        end

        def deserialize(params)
          @BizType = params['BizType']
          @AppType = params['AppType']
          @AppName = params['AppName']
          @BundleId = params['BundleId']
          @PackageName = params['PackageName']
          @Platform = params['Platform']
          @MacBundleId = params['MacBundleId']
          @WinProcessName = params['WinProcessName']
        end
      end

      # DescribeVcubeApplicationAndXMagicList返回参数结构体
      class DescribeVcubeApplicationAndXMagicListResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationInfoList: 应用license列表
        # @type ApplicationInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicationInfoList, :RequestId

        def initialize(applicationinfolist=nil, requestid=nil)
          @ApplicationInfoList = applicationinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApplicationInfoList'].nil?
            @ApplicationInfoList = []
            params['ApplicationInfoList'].each do |i|
              applicationinfo_tmp = ApplicationInfo.new
              applicationinfo_tmp.deserialize(i)
              @ApplicationInfoList << applicationinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVcubeResourcesList请求参数结构体
      class DescribeVcubeResourcesListRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 查询资源页码
        # @type PageNumber: Integer
        # @param PageSize: 每页的数据量
        # @type PageSize: Integer
        # @param AppName: 应用名称，模块查询
        # @type AppName: String
        # @param ResourceId: 资源Id，资源包id或者license资源id
        # @type ResourceId: String
        # @param Word: 资源Id、应用名称、包名
        # @type Word: String
        # @param Platform: 查询资源所属平台，web、mobile
        # @type Platform: String

        attr_accessor :PageNumber, :PageSize, :AppName, :ResourceId, :Word, :Platform

        def initialize(pagenumber=nil, pagesize=nil, appname=nil, resourceid=nil, word=nil, platform=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @AppName = appname
          @ResourceId = resourceid
          @Word = word
          @Platform = platform
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @AppName = params['AppName']
          @ResourceId = params['ResourceId']
          @Word = params['Word']
          @Platform = params['Platform']
        end
      end

      # DescribeVcubeResourcesList返回参数结构体
      class DescribeVcubeResourcesListResponse < TencentCloud::Common::AbstractModel
        # @param ResourceList: 资源列表
        # @type ResourceList: Array
        # @param TotalCount: 总数据量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceList, :TotalCount, :RequestId

        def initialize(resourcelist=nil, totalcount=nil, requestid=nil)
          @ResourceList = resourcelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResourceList'].nil?
            @ResourceList = []
            params['ResourceList'].each do |i|
              licenseresourceinfo_tmp = LicenseResourceInfo.new
              licenseresourceinfo_tmp.deserialize(i)
              @ResourceList << licenseresourceinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVcubeResources请求参数结构体
      class DescribeVcubeResourcesRequest < TencentCloud::Common::AbstractModel
        # @param Platform: 查找那个平台的资源
        # @type Platform: String

        attr_accessor :Platform

        def initialize(platform=nil)
          @Platform = platform
        end

        def deserialize(params)
          @Platform = params['Platform']
        end
      end

      # DescribeVcubeResources返回参数结构体
      class DescribeVcubeResourcesResponse < TencentCloud::Common::AbstractModel
        # @param ResourceList: 资源列表
        # @type ResourceList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceList, :RequestId

        def initialize(resourcelist=nil, requestid=nil)
          @ResourceList = resourcelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResourceList'].nil?
            @ResourceList = []
            params['ResourceList'].each do |i|
              licenseresourcesimpleinfo_tmp = LicenseResourceSimpleInfo.new
              licenseresourcesimpleinfo_tmp.deserialize(i)
              @ResourceList << licenseresourcesimpleinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeXMagicResourceList请求参数结构体
      class DescribeXMagicResourceListRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页页码 第一页是0
        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param AppName: 关联的应用名称
        # @type AppName: String
        # @param ResourceId: 优图资源Id
        # @type ResourceId: String
        # @param Word: 查询关键字，资源Id、应用名称、包名
        # @type Word: String
        # @param Platform: 平台信息，pc 或者 mobile
        # @type Platform: String
        # @param BizType: 所属业务，xmagic：优图， avatar：虚拟人，不传查全部
        # @type BizType: String

        attr_accessor :PageNumber, :PageSize, :AppName, :ResourceId, :Word, :Platform, :BizType

        def initialize(pagenumber=nil, pagesize=nil, appname=nil, resourceid=nil, word=nil, platform=nil, biztype=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @AppName = appname
          @ResourceId = resourceid
          @Word = word
          @Platform = platform
          @BizType = biztype
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @AppName = params['AppName']
          @ResourceId = params['ResourceId']
          @Word = params['Word']
          @Platform = params['Platform']
          @BizType = params['BizType']
        end
      end

      # DescribeXMagicResourceList返回参数结构体
      class DescribeXMagicResourceListResponse < TencentCloud::Common::AbstractModel
        # @param Resources: 优图资源包信息
        # @type Resources: Array
        # @param Count: 资源数量
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Resources, :Count, :RequestId

        def initialize(resources=nil, count=nil, requestid=nil)
          @Resources = resources
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              xmagicresourcesimpleinfo_tmp = XMagicResourceSimpleInfo.new
              xmagicresourcesimpleinfo_tmp.deserialize(i)
              @Resources << xmagicresourcesimpleinfo_tmp
            end
          end
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # DescribeXMagicResource请求参数结构体
      class DescribeXMagicResourceRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页页码 第一页是0
        # @type PageNumber: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer

        attr_accessor :PageNumber, :PageSize

        def initialize(pagenumber=nil, pagesize=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeXMagicResource返回参数结构体
      class DescribeXMagicResourceResponse < TencentCloud::Common::AbstractModel
        # @param Resources: 优图资源包信息
        # @type Resources: Array
        # @param Count: 资源数量
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Resources, :Count, :RequestId

        def initialize(resources=nil, count=nil, requestid=nil)
          @Resources = resources
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              xmagicresource_tmp = XMagicResource.new
              xmagicresource_tmp.deserialize(i)
              @Resources << xmagicresource_tmp
            end
          end
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # 功能描述模型
      class Feature < TencentCloud::Common::AbstractModel
        # @param Id: 索引
        # @type Id: Integer
        # @param FeatureId: 功能ID
        # @type FeatureId: Integer
        # @param Name: 功能名称
        # @type Name: String
        # @param Type: 功能类型
        # @type Type: String
        # @param Trial: 是否可以申请试用
        # @type Trial: Boolean
        # @param TrialCount: 可以试用的次数
        # @type TrialCount: Integer
        # @param Duration: 可以试用的时长，单位天
        # @type Duration: Integer
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String

        attr_accessor :Id, :FeatureId, :Name, :Type, :Trial, :TrialCount, :Duration, :CreatedAt, :UpdatedAt

        def initialize(id=nil, featureid=nil, name=nil, type=nil, trial=nil, trialcount=nil, duration=nil, createdat=nil, updatedat=nil)
          @Id = id
          @FeatureId = featureid
          @Name = name
          @Type = type
          @Trial = trial
          @TrialCount = trialcount
          @Duration = duration
          @CreatedAt = createdat
          @UpdatedAt = updatedat
        end

        def deserialize(params)
          @Id = params['Id']
          @FeatureId = params['FeatureId']
          @Name = params['Name']
          @Type = params['Type']
          @Trial = params['Trial']
          @TrialCount = params['TrialCount']
          @Duration = params['Duration']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
        end
      end

      # 视立方应用license
      class License < TencentCloud::Common::AbstractModel
        # @param Type: license类型
        # @type Type: String
        # @param Remark: 老系统迁移备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param StartTime: license生效时间
        # @type StartTime: String
        # @param EndTime: license失效时间
        # @type EndTime: String
        # @param FeatureId: license对应的功能Id
        # @type FeatureId: Integer
        # @param LicenseType: license是测试：test还是正式：formal
        # @type LicenseType: String
        # @param Renewal: 测试license 是否可以续期
        # @type Renewal: Boolean
        # @param LicenseId: license索引
        # @type LicenseId: Integer
        # @param Name: license名称
        # @type Name: String
        # @param Update: 测试license 是否升级
        # @type Update: Boolean
        # @param OldLicenseUrl: 兼容老的licenseUrl
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldLicenseUrl: String
        # @param Group: 视立方url分组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Group: Integer
        # @param Expired: 过期：true ，未过期：其它
        # @type Expired: Boolean
        # @param RestTime: 返回还有多少秒过期，过期返回0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestTime: Integer
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String
        # @param Resource: 计费资源相关信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: :class:`Tencentcloud::Vcube.v20220410.models.RenewResource`
        # @param IsVest: 是否为马甲包
        # @type IsVest: Boolean

        attr_accessor :Type, :Remark, :StartTime, :EndTime, :FeatureId, :LicenseType, :Renewal, :LicenseId, :Name, :Update, :OldLicenseUrl, :Group, :Expired, :RestTime, :CreatedAt, :UpdatedAt, :Resource, :IsVest

        def initialize(type=nil, remark=nil, starttime=nil, endtime=nil, featureid=nil, licensetype=nil, renewal=nil, licenseid=nil, name=nil, update=nil, oldlicenseurl=nil, group=nil, expired=nil, resttime=nil, createdat=nil, updatedat=nil, resource=nil, isvest=nil)
          @Type = type
          @Remark = remark
          @StartTime = starttime
          @EndTime = endtime
          @FeatureId = featureid
          @LicenseType = licensetype
          @Renewal = renewal
          @LicenseId = licenseid
          @Name = name
          @Update = update
          @OldLicenseUrl = oldlicenseurl
          @Group = group
          @Expired = expired
          @RestTime = resttime
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @Resource = resource
          @IsVest = isvest
        end

        def deserialize(params)
          @Type = params['Type']
          @Remark = params['Remark']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @FeatureId = params['FeatureId']
          @LicenseType = params['LicenseType']
          @Renewal = params['Renewal']
          @LicenseId = params['LicenseId']
          @Name = params['Name']
          @Update = params['Update']
          @OldLicenseUrl = params['OldLicenseUrl']
          @Group = params['Group']
          @Expired = params['Expired']
          @RestTime = params['RestTime']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          unless params['Resource'].nil?
            @Resource = RenewResource.new
            @Resource.deserialize(params['Resource'])
          end
          @IsVest = params['IsVest']
        end
      end

      # license 资源信息
      class LicenseResourceInfo < TencentCloud::Common::AbstractModel
        # @param Id: 授权功能Id
        # @type Id: Integer
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Duration: 有效期时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: String
        # @param FeatureId: 功能Id
        # @type FeatureId: Integer
        # @param StartTime: 此license资源的开始生效时间
        # @type StartTime: String
        # @param EndTime: 此license资源的生效结束时间
        # @type EndTime: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String
        # @param IsUse: 此资源是否可用于续期和更新有效期
        # @type IsUse: Boolean
        # @param Status: 此资源的状态
        # @type Status: Integer
        # @param IsolatedTimestamp: 销毁时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolatedTimestamp: String
        # @param Name: 功能模块名称
        # @type Name: String
        # @param Type: 功能模块类型
        # @type Type: String
        # @param Package: 资源包信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Package: :class:`Tencentcloud::Vcube.v20220410.models.Package`
        # @param Application: 应用信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Application: :class:`Tencentcloud::Vcube.v20220410.models.AppInfo`
        # @param ResourceId: 资源Id
        # @type ResourceId: String
        # @param AutoRenewFlag: 自动续费状态
        # @type AutoRenewFlag: Integer

        attr_accessor :Id, :AppId, :Duration, :FeatureId, :StartTime, :EndTime, :CreatedAt, :UpdatedAt, :IsUse, :Status, :IsolatedTimestamp, :Name, :Type, :Package, :Application, :ResourceId, :AutoRenewFlag

        def initialize(id=nil, appid=nil, duration=nil, featureid=nil, starttime=nil, endtime=nil, createdat=nil, updatedat=nil, isuse=nil, status=nil, isolatedtimestamp=nil, name=nil, type=nil, package=nil, application=nil, resourceid=nil, autorenewflag=nil)
          @Id = id
          @AppId = appid
          @Duration = duration
          @FeatureId = featureid
          @StartTime = starttime
          @EndTime = endtime
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @IsUse = isuse
          @Status = status
          @IsolatedTimestamp = isolatedtimestamp
          @Name = name
          @Type = type
          @Package = package
          @Application = application
          @ResourceId = resourceid
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @Id = params['Id']
          @AppId = params['AppId']
          @Duration = params['Duration']
          @FeatureId = params['FeatureId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @IsUse = params['IsUse']
          @Status = params['Status']
          @IsolatedTimestamp = params['IsolatedTimestamp']
          @Name = params['Name']
          @Type = params['Type']
          unless params['Package'].nil?
            @Package = Package.new
            @Package.deserialize(params['Package'])
          end
          unless params['Application'].nil?
            @Application = AppInfo.new
            @Application.deserialize(params['Application'])
          end
          @ResourceId = params['ResourceId']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # license 资源信息
      class LicenseResourceSimpleInfo < TencentCloud::Common::AbstractModel
        # @param Id: 授权功能Id
        # @type Id: Integer
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Duration: 有效期时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: String
        # @param FeatureId: 功能Id
        # @type FeatureId: Integer
        # @param StartTime: 此license资源的开始生效时间
        # @type StartTime: String
        # @param EndTime: 此license资源的生效结束时间
        # @type EndTime: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String
        # @param IsUse: 此资源是否可用于续期和更新有效期
        # @type IsUse: Boolean
        # @param Status: 此资源的状态
        # @type Status: Integer
        # @param IsolatedTimestamp: 销毁时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolatedTimestamp: String
        # @param Name: 功能模块名称
        # @type Name: String
        # @param Type: 功能模块类型
        # @type Type: String
        # @param Package: 资源包信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Package: :class:`Tencentcloud::Vcube.v20220410.models.Package`
        # @param ResourceId: 资源id
        # @type ResourceId: String
        # @param AutoRenewFlag: 自动续费状态
        # @type AutoRenewFlag: Integer

        attr_accessor :Id, :AppId, :Duration, :FeatureId, :StartTime, :EndTime, :CreatedAt, :UpdatedAt, :IsUse, :Status, :IsolatedTimestamp, :Name, :Type, :Package, :ResourceId, :AutoRenewFlag

        def initialize(id=nil, appid=nil, duration=nil, featureid=nil, starttime=nil, endtime=nil, createdat=nil, updatedat=nil, isuse=nil, status=nil, isolatedtimestamp=nil, name=nil, type=nil, package=nil, resourceid=nil, autorenewflag=nil)
          @Id = id
          @AppId = appid
          @Duration = duration
          @FeatureId = featureid
          @StartTime = starttime
          @EndTime = endtime
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @IsUse = isuse
          @Status = status
          @IsolatedTimestamp = isolatedtimestamp
          @Name = name
          @Type = type
          @Package = package
          @ResourceId = resourceid
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @Id = params['Id']
          @AppId = params['AppId']
          @Duration = params['Duration']
          @FeatureId = params['FeatureId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @IsUse = params['IsUse']
          @Status = params['Status']
          @IsolatedTimestamp = params['IsolatedTimestamp']
          @Name = params['Name']
          @Type = params['Type']
          unless params['Package'].nil?
            @Package = Package.new
            @Package.deserialize(params['Package'])
          end
          @ResourceId = params['ResourceId']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # ModifyApplication请求参数结构体
      class ModifyApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: Integer
        # @param AppName: 应用名
        # @type AppName: String
        # @param BundleId: 应用ID
        # @type BundleId: String
        # @param PackageName: 包名
        # @type PackageName: String
        # @param WinProcessName: Windows 进程名
        # @type WinProcessName: String
        # @param MacBundleId: Mac 进程名
        # @type MacBundleId: String
        # @param DomainList: 要追加的web域名列表
        # @type DomainList: Array

        attr_accessor :ApplicationId, :AppName, :BundleId, :PackageName, :WinProcessName, :MacBundleId, :DomainList

        def initialize(applicationid=nil, appname=nil, bundleid=nil, packagename=nil, winprocessname=nil, macbundleid=nil, domainlist=nil)
          @ApplicationId = applicationid
          @AppName = appname
          @BundleId = bundleid
          @PackageName = packagename
          @WinProcessName = winprocessname
          @MacBundleId = macbundleid
          @DomainList = domainlist
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @AppName = params['AppName']
          @BundleId = params['BundleId']
          @PackageName = params['PackageName']
          @WinProcessName = params['WinProcessName']
          @MacBundleId = params['MacBundleId']
          @DomainList = params['DomainList']
        end
      end

      # ModifyApplication返回参数结构体
      class ModifyApplicationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyFormalApplication请求参数结构体
      class ModifyFormalApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用Id
        # @type ApplicationId: Integer
        # @param AppName: 应用名称
        # @type AppName: String
        # @param BundleId: Ios 包名称
        # @type BundleId: String
        # @param PackageName: Android  包名称
        # @type PackageName: String

        attr_accessor :ApplicationId, :AppName, :BundleId, :PackageName

        def initialize(applicationid=nil, appname=nil, bundleid=nil, packagename=nil)
          @ApplicationId = applicationid
          @AppName = appname
          @BundleId = bundleid
          @PackageName = packagename
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @AppName = params['AppName']
          @BundleId = params['BundleId']
          @PackageName = params['PackageName']
        end
      end

      # ModifyFormalApplication返回参数结构体
      class ModifyFormalApplicationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLicense请求参数结构体
      class ModifyLicenseRequest < TencentCloud::Common::AbstractModel
        # @param LicenseId: License 功能模块 Id
        # @type LicenseId: String
        # @param ResourceId: 资源包 Id
        # @type ResourceId: String

        attr_accessor :LicenseId, :ResourceId

        def initialize(licenseid=nil, resourceid=nil)
          @LicenseId = licenseid
          @ResourceId = resourceid
        end

        def deserialize(params)
          @LicenseId = params['LicenseId']
          @ResourceId = params['ResourceId']
        end
      end

      # ModifyLicense返回参数结构体
      class ModifyLicenseResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPresetApplication请求参数结构体
      class ModifyPresetApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用Id
        # @type ApplicationId: Integer
        # @param AppName: 您的app名称
        # @type AppName: String
        # @param BundleId: ios包名
        # @type BundleId: String
        # @param PackageName: 安卓包名
        # @type PackageName: String

        attr_accessor :ApplicationId, :AppName, :BundleId, :PackageName

        def initialize(applicationid=nil, appname=nil, bundleid=nil, packagename=nil)
          @ApplicationId = applicationid
          @AppName = appname
          @BundleId = bundleid
          @PackageName = packagename
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @AppName = params['AppName']
          @BundleId = params['BundleId']
          @PackageName = params['PackageName']
        end
      end

      # ModifyPresetApplication返回参数结构体
      class ModifyPresetApplicationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTrialLicense请求参数结构体
      class ModifyTrialLicenseRequest < TencentCloud::Common::AbstractModel
        # @param LicenseId: 授权ID
        # @type LicenseId: String

        attr_accessor :LicenseId

        def initialize(licenseid=nil)
          @LicenseId = licenseid
        end

        def deserialize(params)
          @LicenseId = params['LicenseId']
        end
      end

      # ModifyTrialLicense返回参数结构体
      class ModifyTrialLicenseResponse < TencentCloud::Common::AbstractModel
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

      # ModifyXMagic请求参数结构体
      class ModifyXMagicRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源Id
        # @type ResourceId: String
        # @param XMagicId: 优图licenseId
        # @type XMagicId: String

        attr_accessor :ResourceId, :XMagicId

        def initialize(resourceid=nil, xmagicid=nil)
          @ResourceId = resourceid
          @XMagicId = xmagicid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @XMagicId = params['XMagicId']
        end
      end

      # ModifyXMagic返回参数结构体
      class ModifyXMagicResponse < TencentCloud::Common::AbstractModel
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

      # 视立方产品概览页新闻动态
      class NewsInfo < TencentCloud::Common::AbstractModel
        # @param Id: 新闻Id
        # @type Id: Integer

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # 资源包结构
      class Package < TencentCloud::Common::AbstractModel
        # @param Id: 资源包Id
        # @type Id: Integer
        # @param BizResourceId: 资源包资源Id
        # @type BizResourceId: String
        # @param Site: 站点 中国站还是国际站
        # @type Site: String
        # @param StartTime: 资源包开始生效时间
        # @type StartTime: String
        # @param EndTime: 资源包过期时间
        # @type EndTime: String
        # @param RefundTime: 资源包退费时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RefundTime: String
        # @param Name: 资源包名称
        # @type Name: String
        # @param Type: 资源包类型ID,对应点播：PackageId 对应直播：TypeId
        # @type Type: String

        attr_accessor :Id, :BizResourceId, :Site, :StartTime, :EndTime, :RefundTime, :Name, :Type

        def initialize(id=nil, bizresourceid=nil, site=nil, starttime=nil, endtime=nil, refundtime=nil, name=nil, type=nil)
          @Id = id
          @BizResourceId = bizresourceid
          @Site = site
          @StartTime = starttime
          @EndTime = endtime
          @RefundTime = refundtime
          @Name = name
          @Type = type
        end

        def deserialize(params)
          @Id = params['Id']
          @BizResourceId = params['BizResourceId']
          @Site = params['Site']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RefundTime = params['RefundTime']
          @Name = params['Name']
          @Type = params['Type']
        end
      end

      # RenewLicense请求参数结构体
      class RenewLicenseRequest < TencentCloud::Common::AbstractModel
        # @param LicenseId: License 功能模块 Id
        # @type LicenseId: String
        # @param ResourceId: 资源包 Id
        # @type ResourceId: String

        attr_accessor :LicenseId, :ResourceId

        def initialize(licenseid=nil, resourceid=nil)
          @LicenseId = licenseid
          @ResourceId = resourceid
        end

        def deserialize(params)
          @LicenseId = params['LicenseId']
          @ResourceId = params['ResourceId']
        end
      end

      # RenewLicense返回参数结构体
      class RenewLicenseResponse < TencentCloud::Common::AbstractModel
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

      # 自动续期资源info
      class RenewResource < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源Id
        # @type ResourceId: String
        # @param AutoRenewFlag: 自动续期标记，0：默认，1：自动续期，2：不续期
        # @type AutoRenewFlag: Integer
        # @param IsolatedTimestamp: 资源冻结时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolatedTimestamp: String
        # @param Refund: 资源销毁状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Refund: Boolean
        # @param SubProductCode: 子产品码
        # @type SubProductCode: String
        # @param EndTime: 资源到期时间
        # @type EndTime: String

        attr_accessor :ResourceId, :AutoRenewFlag, :IsolatedTimestamp, :Refund, :SubProductCode, :EndTime

        def initialize(resourceid=nil, autorenewflag=nil, isolatedtimestamp=nil, refund=nil, subproductcode=nil, endtime=nil)
          @ResourceId = resourceid
          @AutoRenewFlag = autorenewflag
          @IsolatedTimestamp = isolatedtimestamp
          @Refund = refund
          @SubProductCode = subproductcode
          @EndTime = endtime
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @AutoRenewFlag = params['AutoRenewFlag']
          @IsolatedTimestamp = params['IsolatedTimestamp']
          @Refund = params['Refund']
          @SubProductCode = params['SubProductCode']
          @EndTime = params['EndTime']
        end
      end

      # RenewTestXMagic请求参数结构体
      class RenewTestXMagicRequest < TencentCloud::Common::AbstractModel
        # @param XMagicId: 优图美视Id
        # @type XMagicId: Integer

        attr_accessor :XMagicId

        def initialize(xmagicid=nil)
          @XMagicId = xmagicid
        end

        def deserialize(params)
          @XMagicId = params['XMagicId']
        end
      end

      # RenewTestXMagic返回参数结构体
      class RenewTestXMagicResponse < TencentCloud::Common::AbstractModel
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

      # RenewVideo请求参数结构体
      class RenewVideoRequest < TencentCloud::Common::AbstractModel
        # @param LicenseId: 要续期的视频播放license Id
        # @type LicenseId: Integer

        attr_accessor :LicenseId

        def initialize(licenseid=nil)
          @LicenseId = licenseid
        end

        def deserialize(params)
          @LicenseId = params['LicenseId']
        end
      end

      # RenewVideo返回参数结构体
      class RenewVideoResponse < TencentCloud::Common::AbstractModel
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

      # UpdateTestXMagic请求参数结构体
      class UpdateTestXMagicRequest < TencentCloud::Common::AbstractModel
        # @param XMagicId: 优图美视功能Id
        # @type XMagicId: Integer
        # @param ResourceId: XMagic套餐包Id
        # @type ResourceId: String

        attr_accessor :XMagicId, :ResourceId

        def initialize(xmagicid=nil, resourceid=nil)
          @XMagicId = xmagicid
          @ResourceId = resourceid
        end

        def deserialize(params)
          @XMagicId = params['XMagicId']
          @ResourceId = params['ResourceId']
        end
      end

      # UpdateTestXMagic返回参数结构体
      class UpdateTestXMagicResponse < TencentCloud::Common::AbstractModel
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

      # UpdateTrialLicense请求参数结构体
      class UpdateTrialLicenseRequest < TencentCloud::Common::AbstractModel
        # @param LicenseId: 执照ID
        # @type LicenseId: String
        # @param ResourceId: 资源包ID
        # @type ResourceId: String

        attr_accessor :LicenseId, :ResourceId

        def initialize(licenseid=nil, resourceid=nil)
          @LicenseId = licenseid
          @ResourceId = resourceid
        end

        def deserialize(params)
          @LicenseId = params['LicenseId']
          @ResourceId = params['ResourceId']
        end
      end

      # UpdateTrialLicense返回参数结构体
      class UpdateTrialLicenseResponse < TencentCloud::Common::AbstractModel
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

      # UpdateXMagic请求参数结构体
      class UpdateXMagicRequest < TencentCloud::Common::AbstractModel
        # @param XMagicId: 要修改的XMagic Id
        # @type XMagicId: Integer
        # @param XMagicResourceId: 资源id
        # @type XMagicResourceId: String
        # @param CompanyPermit: 营业执照地址
        # @type CompanyPermit: String
        # @param CompanyType: 公司类型
        # @type CompanyType: String
        # @param CompanyName: 公司名称
        # @type CompanyName: String

        attr_accessor :XMagicId, :XMagicResourceId, :CompanyPermit, :CompanyType, :CompanyName

        def initialize(xmagicid=nil, xmagicresourceid=nil, companypermit=nil, companytype=nil, companyname=nil)
          @XMagicId = xmagicid
          @XMagicResourceId = xmagicresourceid
          @CompanyPermit = companypermit
          @CompanyType = companytype
          @CompanyName = companyname
        end

        def deserialize(params)
          @XMagicId = params['XMagicId']
          @XMagicResourceId = params['XMagicResourceId']
          @CompanyPermit = params['CompanyPermit']
          @CompanyType = params['CompanyType']
          @CompanyName = params['CompanyName']
        end
      end

      # UpdateXMagic返回参数结构体
      class UpdateXMagicResponse < TencentCloud::Common::AbstractModel
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

      # 视频功能描述模型
      class VideoFeature < TencentCloud::Common::AbstractModel
        # @param Id: 索引
        # @type Id: Integer
        # @param FeatureId: 功能ID
        # @type FeatureId: Integer
        # @param Name: 功能名称
        # @type Name: String
        # @param Type: 功能类型
        # @type Type: String
        # @param Trial: 是否可以申请试用
        # @type Trial: Boolean
        # @param TrialCount: 可以试用的次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrialCount: Integer
        # @param Duration: 可以试用的时长，单位天
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Integer
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String
        # @param BizType: 功能所属业务方
        # @type BizType: String
        # @param Platform: 平台类型
        # @type Platform: String

        attr_accessor :Id, :FeatureId, :Name, :Type, :Trial, :TrialCount, :Duration, :CreatedAt, :UpdatedAt, :BizType, :Platform

        def initialize(id=nil, featureid=nil, name=nil, type=nil, trial=nil, trialcount=nil, duration=nil, createdat=nil, updatedat=nil, biztype=nil, platform=nil)
          @Id = id
          @FeatureId = featureid
          @Name = name
          @Type = type
          @Trial = trial
          @TrialCount = trialcount
          @Duration = duration
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @BizType = biztype
          @Platform = platform
        end

        def deserialize(params)
          @Id = params['Id']
          @FeatureId = params['FeatureId']
          @Name = params['Name']
          @Type = params['Type']
          @Trial = params['Trial']
          @TrialCount = params['TrialCount']
          @Duration = params['Duration']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @BizType = params['BizType']
          @Platform = params['Platform']
        end
      end

      # 优图的的功能，Trial 为true的可以开通测试
      class XMagicFeature < TencentCloud::Common::AbstractModel
        # @param Name: 功能名称
        # @type Name: String
        # @param TrialCount: 可以申请的次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrialCount: Integer
        # @param Duration: 每次申请的时长单位：天
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Integer
        # @param Plan: 功能类别
        # @type Plan: String
        # @param XMagicType: single: 原子能力,combined:套餐
        # @type XMagicType: String
        # @param Trial: 此功能是否支持开通测试
        # @type Trial: Boolean
        # @param BizType: 功能所属业务方
        # @type BizType: String

        attr_accessor :Name, :TrialCount, :Duration, :Plan, :XMagicType, :Trial, :BizType

        def initialize(name=nil, trialcount=nil, duration=nil, plan=nil, xmagictype=nil, trial=nil, biztype=nil)
          @Name = name
          @TrialCount = trialcount
          @Duration = duration
          @Plan = plan
          @XMagicType = xmagictype
          @Trial = trial
          @BizType = biztype
        end

        def deserialize(params)
          @Name = params['Name']
          @TrialCount = params['TrialCount']
          @Duration = params['Duration']
          @Plan = params['Plan']
          @XMagicType = params['XMagicType']
          @Trial = params['Trial']
          @BizType = params['BizType']
        end
      end

      # 查询返回的优图信息
      class XMagicInfo < TencentCloud::Common::AbstractModel
        # @param Id: 优图Id
        # @type Id: Integer
        # @param CompanyName: 用户公司名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompanyName: String
        # @param CompanyPermit: https://cos.xxx
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompanyPermit: String
        # @param CompanyType: 用户公司行业类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompanyType: String
        # @param Plan: 优图套餐类型
        # @type Plan: String
        # @param LicenseType: 测试版还是正式版 test | formal
        # @type LicenseType: String
        # @param Status: 0: 预申请，需要补充申请信息
        #    1: 审批通过，xmagic已签发，正在生效中
        #     2: 提交完申请资料后待运营审核状态
        #     3: 申请被驳回，需要重新修改申请资料
        #     4: 应用包名被修改后触发xmagic审批，当前xmagic已暂停生效
        #     5: 应用修改包名后，审批未通过状态，可以重新修改应用PB，状态会回到4
        # @type Status: Integer
        # @param Update: 测试license是否已经升级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Update: Boolean
        # @param StartTime: 优图生效开始时间 Status为1的时候
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 优图生效结束时间 Status为1的时候
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param RenewalCount: 续期次数， LicenseType=test时有此字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewalCount: Integer
        # @param Reply: 历次审批的回复
        # @type Reply: Array
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 修改时间
        # @type UpdatedAt: String
        # @param UpdateTime: 用户更新信息的时间
        # @type UpdateTime: String
        # @param Expired: 是否过期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Expired: Boolean
        # @param RestTime: 返回还剩多少秒过期，过期后返回0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestTime: Integer
        # @param XMagicType: single: 原子能力,combined:套餐
        # @type XMagicType: String
        # @param Name: 优图模块名称，自动中英文
        # @type Name: String
        # @param Resource: 优图资源信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: :class:`Tencentcloud::Vcube.v20220410.models.RenewResource`
        # @param IsVest: 是否是马甲包
        # @type IsVest: Boolean

        attr_accessor :Id, :CompanyName, :CompanyPermit, :CompanyType, :Plan, :LicenseType, :Status, :Update, :StartTime, :EndTime, :RenewalCount, :Reply, :CreatedAt, :UpdatedAt, :UpdateTime, :Expired, :RestTime, :XMagicType, :Name, :Resource, :IsVest

        def initialize(id=nil, companyname=nil, companypermit=nil, companytype=nil, plan=nil, licensetype=nil, status=nil, update=nil, starttime=nil, endtime=nil, renewalcount=nil, reply=nil, createdat=nil, updatedat=nil, updatetime=nil, expired=nil, resttime=nil, xmagictype=nil, name=nil, resource=nil, isvest=nil)
          @Id = id
          @CompanyName = companyname
          @CompanyPermit = companypermit
          @CompanyType = companytype
          @Plan = plan
          @LicenseType = licensetype
          @Status = status
          @Update = update
          @StartTime = starttime
          @EndTime = endtime
          @RenewalCount = renewalcount
          @Reply = reply
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @UpdateTime = updatetime
          @Expired = expired
          @RestTime = resttime
          @XMagicType = xmagictype
          @Name = name
          @Resource = resource
          @IsVest = isvest
        end

        def deserialize(params)
          @Id = params['Id']
          @CompanyName = params['CompanyName']
          @CompanyPermit = params['CompanyPermit']
          @CompanyType = params['CompanyType']
          @Plan = params['Plan']
          @LicenseType = params['LicenseType']
          @Status = params['Status']
          @Update = params['Update']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RenewalCount = params['RenewalCount']
          @Reply = params['Reply']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @UpdateTime = params['UpdateTime']
          @Expired = params['Expired']
          @RestTime = params['RestTime']
          @XMagicType = params['XMagicType']
          @Name = params['Name']
          unless params['Resource'].nil?
            @Resource = RenewResource.new
            @Resource.deserialize(params['Resource'])
          end
          @IsVest = params['IsVest']
        end
      end

      # 优图美视资源包
      class XMagicResource < TencentCloud::Common::AbstractModel
        # @param Id: 资源Id
        # @type Id: Integer
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Plan: 套餐类别
        # @type Plan: String
        # @param Duration: 单位：年
        # @type Duration: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String
        # @param XMagic: 资源是否已使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type XMagic: Boolean
        # @param StartTime: 资源开始生效时间
        # @type StartTime: String
        # @param EndTime: 资源结束生效时间
        # @type EndTime: String
        # @param Expired: 资源包是否过期
        # @type Expired: Boolean
        # @param Name: 功能模块名称
        # @type Name: String
        # @param XMagicType: single: 原子能力,combined:套餐
        # @type XMagicType: String
        # @param BizType: xmagic:优图， avatar：虚拟人
        # @type BizType: String
        # @param ResourceId: 资源Id
        # @type ResourceId: String
        # @param IsUse: 资源是否可以使用
        # @type IsUse: Boolean

        attr_accessor :Id, :AppId, :Plan, :Duration, :CreatedAt, :UpdatedAt, :XMagic, :StartTime, :EndTime, :Expired, :Name, :XMagicType, :BizType, :ResourceId, :IsUse

        def initialize(id=nil, appid=nil, plan=nil, duration=nil, createdat=nil, updatedat=nil, xmagic=nil, starttime=nil, endtime=nil, expired=nil, name=nil, xmagictype=nil, biztype=nil, resourceid=nil, isuse=nil)
          @Id = id
          @AppId = appid
          @Plan = plan
          @Duration = duration
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @XMagic = xmagic
          @StartTime = starttime
          @EndTime = endtime
          @Expired = expired
          @Name = name
          @XMagicType = xmagictype
          @BizType = biztype
          @ResourceId = resourceid
          @IsUse = isuse
        end

        def deserialize(params)
          @Id = params['Id']
          @AppId = params['AppId']
          @Plan = params['Plan']
          @Duration = params['Duration']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @XMagic = params['XMagic']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Expired = params['Expired']
          @Name = params['Name']
          @XMagicType = params['XMagicType']
          @BizType = params['BizType']
          @ResourceId = params['ResourceId']
          @IsUse = params['IsUse']
        end
      end

      # 优图美视资源包
      class XMagicResourceSimpleInfo < TencentCloud::Common::AbstractModel
        # @param Id: 资源Id
        # @type Id: Integer
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Plan: 套餐类别
        # @type Plan: String
        # @param Duration: 单位：年
        # @type Duration: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String
        # @param StartTime: 资源开始生效时间
        # @type StartTime: String
        # @param EndTime: 资源结束生效时间
        # @type EndTime: String
        # @param Application: 应用信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Application: :class:`Tencentcloud::Vcube.v20220410.models.AppInfo`
        # @param XMagic: 开通的优图功能信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type XMagic: :class:`Tencentcloud::Vcube.v20220410.models.XMagicSimpleInfo`
        # @param Status: 优图资源状态
        # @type Status: Integer
        # @param Operation: 操作日期记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operation: Array
        # @param IsUse: 是否可以使用
        # @type IsUse: Boolean
        # @param XMagicType: single: 原子能力,combined:套餐
        # @type XMagicType: String
        # @param Name: 功能模块名称
        # @type Name: String
        # @param BizType: 资源所属业务方 xmagic：优图，avatar：虚拟形象
        # @type BizType: String
        # @param ResourceId: 资源id
        # @type ResourceId: String
        # @param AutoRenewFlag: 资源自动续费状态
        # @type AutoRenewFlag: Integer

        attr_accessor :Id, :AppId, :Plan, :Duration, :CreatedAt, :UpdatedAt, :StartTime, :EndTime, :Application, :XMagic, :Status, :Operation, :IsUse, :XMagicType, :Name, :BizType, :ResourceId, :AutoRenewFlag

        def initialize(id=nil, appid=nil, plan=nil, duration=nil, createdat=nil, updatedat=nil, starttime=nil, endtime=nil, application=nil, xmagic=nil, status=nil, operation=nil, isuse=nil, xmagictype=nil, name=nil, biztype=nil, resourceid=nil, autorenewflag=nil)
          @Id = id
          @AppId = appid
          @Plan = plan
          @Duration = duration
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @StartTime = starttime
          @EndTime = endtime
          @Application = application
          @XMagic = xmagic
          @Status = status
          @Operation = operation
          @IsUse = isuse
          @XMagicType = xmagictype
          @Name = name
          @BizType = biztype
          @ResourceId = resourceid
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @Id = params['Id']
          @AppId = params['AppId']
          @Plan = params['Plan']
          @Duration = params['Duration']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['Application'].nil?
            @Application = AppInfo.new
            @Application.deserialize(params['Application'])
          end
          unless params['XMagic'].nil?
            @XMagic = XMagicSimpleInfo.new
            @XMagic.deserialize(params['XMagic'])
          end
          @Status = params['Status']
          @Operation = params['Operation']
          @IsUse = params['IsUse']
          @XMagicType = params['XMagicType']
          @Name = params['Name']
          @BizType = params['BizType']
          @ResourceId = params['ResourceId']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # 优图简单信息
      class XMagicSimpleInfo < TencentCloud::Common::AbstractModel
        # @param Id: XMagic 的Id
        # @type Id: Integer
        # @param Status: XMagic 状态
        # @type Status: Integer

        attr_accessor :Id, :Status

        def initialize(id=nil, status=nil)
          @Id = id
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @Status = params['Status']
        end
      end

      # 可以开通测试的功能
      class XMagicTrial < TencentCloud::Common::AbstractModel
        # @param Name: 功能名称
        # @type Name: String
        # @param TrialCount: 可以申请的次数
        # @type TrialCount: Integer
        # @param Duration: 每次申请的时长单位：天
        # @type Duration: Integer
        # @param Plan: 功能类别
        # @type Plan: String
        # @param XMagicType: single: 原子能力,combined:套餐
        # @type XMagicType: String
        # @param BizType: vod：点播 live：直播
        # @type BizType: String

        attr_accessor :Name, :TrialCount, :Duration, :Plan, :XMagicType, :BizType

        def initialize(name=nil, trialcount=nil, duration=nil, plan=nil, xmagictype=nil, biztype=nil)
          @Name = name
          @TrialCount = trialcount
          @Duration = duration
          @Plan = plan
          @XMagicType = xmagictype
          @BizType = biztype
        end

        def deserialize(params)
          @Name = params['Name']
          @TrialCount = params['TrialCount']
          @Duration = params['Duration']
          @Plan = params['Plan']
          @XMagicType = params['XMagicType']
          @BizType = params['BizType']
        end
      end

    end
  end
end

