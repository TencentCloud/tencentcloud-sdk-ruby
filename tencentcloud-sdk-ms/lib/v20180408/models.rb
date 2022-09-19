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
  module Ms
    module V20180408
      # 广告信息
      class AdInfo < TencentCloud::Common::AbstractModel
        # @param Spots: 插播广告列表
        # @type Spots: Array
        # @param BoutiqueRecommands: 精品推荐广告列表
        # @type BoutiqueRecommands: Array
        # @param FloatWindowses: 悬浮窗广告列表
        # @type FloatWindowses: Array
        # @param Banners: banner广告列表
        # @type Banners: Array
        # @param IntegralWalls: 积分墙广告列表
        # @type IntegralWalls: Array
        # @param NotifyBars: 通知栏广告列表
        # @type NotifyBars: Array

        attr_accessor :Spots, :BoutiqueRecommands, :FloatWindowses, :Banners, :IntegralWalls, :NotifyBars
        
        def initialize(spots=nil, boutiquerecommands=nil, floatwindowses=nil, banners=nil, integralwalls=nil, notifybars=nil)
          @Spots = spots
          @BoutiqueRecommands = boutiquerecommands
          @FloatWindowses = floatwindowses
          @Banners = banners
          @IntegralWalls = integralwalls
          @NotifyBars = notifybars
        end

        def deserialize(params)
          unless params['Spots'].nil?
            @Spots = []
            params['Spots'].each do |i|
              plugininfo_tmp = PluginInfo.new
              plugininfo_tmp.deserialize(i)
              @Spots << plugininfo_tmp
            end
          end
          unless params['BoutiqueRecommands'].nil?
            @BoutiqueRecommands = []
            params['BoutiqueRecommands'].each do |i|
              plugininfo_tmp = PluginInfo.new
              plugininfo_tmp.deserialize(i)
              @BoutiqueRecommands << plugininfo_tmp
            end
          end
          unless params['FloatWindowses'].nil?
            @FloatWindowses = []
            params['FloatWindowses'].each do |i|
              plugininfo_tmp = PluginInfo.new
              plugininfo_tmp.deserialize(i)
              @FloatWindowses << plugininfo_tmp
            end
          end
          unless params['Banners'].nil?
            @Banners = []
            params['Banners'].each do |i|
              plugininfo_tmp = PluginInfo.new
              plugininfo_tmp.deserialize(i)
              @Banners << plugininfo_tmp
            end
          end
          unless params['IntegralWalls'].nil?
            @IntegralWalls = []
            params['IntegralWalls'].each do |i|
              plugininfo_tmp = PluginInfo.new
              plugininfo_tmp.deserialize(i)
              @IntegralWalls << plugininfo_tmp
            end
          end
          unless params['NotifyBars'].nil?
            @NotifyBars = []
            params['NotifyBars'].each do |i|
              plugininfo_tmp = PluginInfo.new
              plugininfo_tmp.deserialize(i)
              @NotifyBars << plugininfo_tmp
            end
          end
        end
      end

      # app的详细基础信息
      class AppDetailInfo < TencentCloud::Common::AbstractModel
        # @param AppName: app的名称
        # @type AppName: String
        # @param AppPkgName: app的包名
        # @type AppPkgName: String
        # @param AppVersion: app的版本号
        # @type AppVersion: String
        # @param AppSize: app的大小
        # @type AppSize: Integer
        # @param AppMd5: app的md5
        # @type AppMd5: String
        # @param AppIconUrl: app的图标url
        # @type AppIconUrl: String
        # @param FileName: app的文件名称
        # @type FileName: String

        attr_accessor :AppName, :AppPkgName, :AppVersion, :AppSize, :AppMd5, :AppIconUrl, :FileName
        
        def initialize(appname=nil, apppkgname=nil, appversion=nil, appsize=nil, appmd5=nil, appiconurl=nil, filename=nil)
          @AppName = appname
          @AppPkgName = apppkgname
          @AppVersion = appversion
          @AppSize = appsize
          @AppMd5 = appmd5
          @AppIconUrl = appiconurl
          @FileName = filename
        end

        def deserialize(params)
          @AppName = params['AppName']
          @AppPkgName = params['AppPkgName']
          @AppVersion = params['AppVersion']
          @AppSize = params['AppSize']
          @AppMd5 = params['AppMd5']
          @AppIconUrl = params['AppIconUrl']
          @FileName = params['FileName']
        end
      end

      # 提交的app基本信息
      class AppInfo < TencentCloud::Common::AbstractModel
        # @param AppUrl: app的url，必须保证不用权限校验就可以下载
        # @type AppUrl: String
        # @param AppMd5: app的md5，需要正确传递
        # @type AppMd5: String
        # @param AppSize: app的大小
        # @type AppSize: Integer
        # @param FileName: app的文件名
        # @type FileName: String
        # @param AppPkgName: app的包名，需要正确的传递此字段
        # @type AppPkgName: String
        # @param AppVersion: app的版本号
        # @type AppVersion: String
        # @param AppIconUrl: app的图标url
        # @type AppIconUrl: String
        # @param AppName: app的名称
        # @type AppName: String

        attr_accessor :AppUrl, :AppMd5, :AppSize, :FileName, :AppPkgName, :AppVersion, :AppIconUrl, :AppName
        
        def initialize(appurl=nil, appmd5=nil, appsize=nil, filename=nil, apppkgname=nil, appversion=nil, appiconurl=nil, appname=nil)
          @AppUrl = appurl
          @AppMd5 = appmd5
          @AppSize = appsize
          @FileName = filename
          @AppPkgName = apppkgname
          @AppVersion = appversion
          @AppIconUrl = appiconurl
          @AppName = appname
        end

        def deserialize(params)
          @AppUrl = params['AppUrl']
          @AppMd5 = params['AppMd5']
          @AppSize = params['AppSize']
          @FileName = params['FileName']
          @AppPkgName = params['AppPkgName']
          @AppVersion = params['AppVersion']
          @AppIconUrl = params['AppIconUrl']
          @AppName = params['AppName']
        end
      end

      # 扫描后app的信息，包含基本信息和扫描状态信息
      class AppScanSet < TencentCloud::Common::AbstractModel
        # @param ItemId: 任务唯一标识
        # @type ItemId: String
        # @param AppName: app的名称
        # @type AppName: String
        # @param AppPkgName: app的包名
        # @type AppPkgName: String
        # @param AppVersion: app的版本号
        # @type AppVersion: String
        # @param AppMd5: app的md5
        # @type AppMd5: String
        # @param AppSize: app的大小
        # @type AppSize: Integer
        # @param ScanCode: 扫描结果返回码
        # @type ScanCode: Integer
        # @param TaskStatus: 任务状态: 1-已完成,2-处理中,3-处理出错,4-处理超时
        # @type TaskStatus: Integer
        # @param TaskTime: 提交扫描时间
        # @type TaskTime: Integer
        # @param AppIconUrl: app的图标url
        # @type AppIconUrl: String
        # @param AppSid: 标识唯一该app，主要用于删除
        # @type AppSid: String
        # @param SafeType: 安全类型:1-安全软件，2-风险软件，3病毒软件
        # @type SafeType: Integer
        # @param VulCount: 漏洞个数
        # @type VulCount: Integer

        attr_accessor :ItemId, :AppName, :AppPkgName, :AppVersion, :AppMd5, :AppSize, :ScanCode, :TaskStatus, :TaskTime, :AppIconUrl, :AppSid, :SafeType, :VulCount
        
        def initialize(itemid=nil, appname=nil, apppkgname=nil, appversion=nil, appmd5=nil, appsize=nil, scancode=nil, taskstatus=nil, tasktime=nil, appiconurl=nil, appsid=nil, safetype=nil, vulcount=nil)
          @ItemId = itemid
          @AppName = appname
          @AppPkgName = apppkgname
          @AppVersion = appversion
          @AppMd5 = appmd5
          @AppSize = appsize
          @ScanCode = scancode
          @TaskStatus = taskstatus
          @TaskTime = tasktime
          @AppIconUrl = appiconurl
          @AppSid = appsid
          @SafeType = safetype
          @VulCount = vulcount
        end

        def deserialize(params)
          @ItemId = params['ItemId']
          @AppName = params['AppName']
          @AppPkgName = params['AppPkgName']
          @AppVersion = params['AppVersion']
          @AppMd5 = params['AppMd5']
          @AppSize = params['AppSize']
          @ScanCode = params['ScanCode']
          @TaskStatus = params['TaskStatus']
          @TaskTime = params['TaskTime']
          @AppIconUrl = params['AppIconUrl']
          @AppSid = params['AppSid']
          @SafeType = params['SafeType']
          @VulCount = params['VulCount']
        end
      end

      # 加固后app的信息，包含基本信息和加固信息
      class AppSetInfo < TencentCloud::Common::AbstractModel
        # @param ItemId: 任务唯一标识
        # @type ItemId: String
        # @param AppName: app的名称
        # @type AppName: String
        # @param AppPkgName: app的包名
        # @type AppPkgName: String
        # @param AppVersion: app的版本号
        # @type AppVersion: String
        # @param AppMd5: app的md5
        # @type AppMd5: String
        # @param AppSize: app的大小
        # @type AppSize: Integer
        # @param ServiceEdition: 加固服务版本
        # @type ServiceEdition: String
        # @param ShieldCode: 加固结果返回码
        # @type ShieldCode: Integer
        # @param AppUrl: 加固后的APP下载地址
        # @type AppUrl: String
        # @param TaskStatus: 任务状态: 1-已完成,2-处理中,3-处理出错,4-处理超时
        # @type TaskStatus: Integer
        # @param ClientIp: 请求的客户端ip
        # @type ClientIp: String
        # @param TaskTime: 提交加固时间
        # @type TaskTime: Integer
        # @param AppIconUrl: app的图标url
        # @type AppIconUrl: String
        # @param ShieldMd5: 加固后app的md5
        # @type ShieldMd5: String
        # @param ShieldSize: 加固后app的大小
        # @type ShieldSize: Integer

        attr_accessor :ItemId, :AppName, :AppPkgName, :AppVersion, :AppMd5, :AppSize, :ServiceEdition, :ShieldCode, :AppUrl, :TaskStatus, :ClientIp, :TaskTime, :AppIconUrl, :ShieldMd5, :ShieldSize
        
        def initialize(itemid=nil, appname=nil, apppkgname=nil, appversion=nil, appmd5=nil, appsize=nil, serviceedition=nil, shieldcode=nil, appurl=nil, taskstatus=nil, clientip=nil, tasktime=nil, appiconurl=nil, shieldmd5=nil, shieldsize=nil)
          @ItemId = itemid
          @AppName = appname
          @AppPkgName = apppkgname
          @AppVersion = appversion
          @AppMd5 = appmd5
          @AppSize = appsize
          @ServiceEdition = serviceedition
          @ShieldCode = shieldcode
          @AppUrl = appurl
          @TaskStatus = taskstatus
          @ClientIp = clientip
          @TaskTime = tasktime
          @AppIconUrl = appiconurl
          @ShieldMd5 = shieldmd5
          @ShieldSize = shieldsize
        end

        def deserialize(params)
          @ItemId = params['ItemId']
          @AppName = params['AppName']
          @AppPkgName = params['AppPkgName']
          @AppVersion = params['AppVersion']
          @AppMd5 = params['AppMd5']
          @AppSize = params['AppSize']
          @ServiceEdition = params['ServiceEdition']
          @ShieldCode = params['ShieldCode']
          @AppUrl = params['AppUrl']
          @TaskStatus = params['TaskStatus']
          @ClientIp = params['ClientIp']
          @TaskTime = params['TaskTime']
          @AppIconUrl = params['AppIconUrl']
          @ShieldMd5 = params['ShieldMd5']
          @ShieldSize = params['ShieldSize']
        end
      end

      # 用户绑定app的基本信息
      class BindInfo < TencentCloud::Common::AbstractModel
        # @param AppIconUrl: app的icon的url
        # @type AppIconUrl: String
        # @param AppName: app的名称
        # @type AppName: String
        # @param AppPkgName: app的包名
        # @type AppPkgName: String

        attr_accessor :AppIconUrl, :AppName, :AppPkgName
        
        def initialize(appiconurl=nil, appname=nil, apppkgname=nil)
          @AppIconUrl = appiconurl
          @AppName = appname
          @AppPkgName = apppkgname
        end

        def deserialize(params)
          @AppIconUrl = params['AppIconUrl']
          @AppName = params['AppName']
          @AppPkgName = params['AppPkgName']
        end
      end

      # CreateBindInstance请求参数结构体
      class CreateBindInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源id，全局唯一
        # @type ResourceId: String
        # @param AppIconUrl: app的icon的url
        # @type AppIconUrl: String
        # @param AppName: app的名称
        # @type AppName: String
        # @param AppPkgName: app的包名
        # @type AppPkgName: String

        attr_accessor :ResourceId, :AppIconUrl, :AppName, :AppPkgName
        
        def initialize(resourceid=nil, appiconurl=nil, appname=nil, apppkgname=nil)
          @ResourceId = resourceid
          @AppIconUrl = appiconurl
          @AppName = appname
          @AppPkgName = apppkgname
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @AppIconUrl = params['AppIconUrl']
          @AppName = params['AppName']
          @AppPkgName = params['AppPkgName']
        end
      end

      # CreateBindInstance返回参数结构体
      class CreateBindInstanceResponse < TencentCloud::Common::AbstractModel
        # @param Progress: 任务状态: 1-已完成,2-处理中,3-处理出错,4-处理超时
        # @type Progress: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Progress, :RequestId
        
        def initialize(progress=nil, requestid=nil)
          @Progress = progress
          @RequestId = requestid
        end

        def deserialize(params)
          @Progress = params['Progress']
          @RequestId = params['RequestId']
        end
      end

      # CreateCosSecKeyInstance请求参数结构体
      class CreateCosSecKeyInstanceRequest < TencentCloud::Common::AbstractModel
        # @param CosRegion: 地域信息，例如广州：ap-guangzhou，上海：ap-shanghai，默认为广州。
        # @type CosRegion: String
        # @param Duration: 密钥有效时间，默认为1小时。
        # @type Duration: Integer

        attr_accessor :CosRegion, :Duration
        
        def initialize(cosregion=nil, duration=nil)
          @CosRegion = cosregion
          @Duration = duration
        end

        def deserialize(params)
          @CosRegion = params['CosRegion']
          @Duration = params['Duration']
        end
      end

      # CreateCosSecKeyInstance返回参数结构体
      class CreateCosSecKeyInstanceResponse < TencentCloud::Common::AbstractModel
        # @param CosAppid: COS密钥对应的AppId
        # @type CosAppid: Integer
        # @param CosBucket: COS密钥对应的存储桶名
        # @type CosBucket: String
        # @param CosRegion: 存储桶对应的地域
        # @type CosRegion: String
        # @param ExpireTime: 密钥过期时间
        # @type ExpireTime: Integer
        # @param CosId: 密钥ID信息
        # @type CosId: String
        # @param CosKey: 密钥KEY信息
        # @type CosKey: String
        # @param CosTocken: 密钥TOCKEN信息
        # @type CosTocken: String
        # @param CosPrefix: 密钥可访问的文件前缀人。例如：CosPrefix=test/123/666，则该密钥只能操作test/123/666为前缀的文件，例如test/123/666/1.txt
        # @type CosPrefix: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CosAppid, :CosBucket, :CosRegion, :ExpireTime, :CosId, :CosKey, :CosTocken, :CosPrefix, :RequestId
        
        def initialize(cosappid=nil, cosbucket=nil, cosregion=nil, expiretime=nil, cosid=nil, coskey=nil, costocken=nil, cosprefix=nil, requestid=nil)
          @CosAppid = cosappid
          @CosBucket = cosbucket
          @CosRegion = cosregion
          @ExpireTime = expiretime
          @CosId = cosid
          @CosKey = coskey
          @CosTocken = costocken
          @CosPrefix = cosprefix
          @RequestId = requestid
        end

        def deserialize(params)
          @CosAppid = params['CosAppid']
          @CosBucket = params['CosBucket']
          @CosRegion = params['CosRegion']
          @ExpireTime = params['ExpireTime']
          @CosId = params['CosId']
          @CosKey = params['CosKey']
          @CosTocken = params['CosTocken']
          @CosPrefix = params['CosPrefix']
          @RequestId = params['RequestId']
        end
      end

      # CreateResourceInstances请求参数结构体
      class CreateResourceInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Pid: 资源类型id。13624：加固专业版。
        # @type Pid: Integer
        # @param TimeUnit: 时间单位，取值为d，m，y，分别表示天，月，年。
        # @type TimeUnit: String
        # @param TimeSpan: 时间数量。
        # @type TimeSpan: Integer
        # @param ResourceNum: 资源数量。
        # @type ResourceNum: Integer

        attr_accessor :Pid, :TimeUnit, :TimeSpan, :ResourceNum
        
        def initialize(pid=nil, timeunit=nil, timespan=nil, resourcenum=nil)
          @Pid = pid
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @ResourceNum = resourcenum
        end

        def deserialize(params)
          @Pid = params['Pid']
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          @ResourceNum = params['ResourceNum']
        end
      end

      # CreateResourceInstances返回参数结构体
      class CreateResourceInstancesResponse < TencentCloud::Common::AbstractModel
        # @param ResourceSet: 新创建的资源列表。
        # @type ResourceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceSet, :RequestId
        
        def initialize(resourceset=nil, requestid=nil)
          @ResourceSet = resourceset
          @RequestId = requestid
        end

        def deserialize(params)
          @ResourceSet = params['ResourceSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateScanInstances请求参数结构体
      class CreateScanInstancesRequest < TencentCloud::Common::AbstractModel
        # @param AppInfos: 待扫描的app信息列表，一次最多提交20个
        # @type AppInfos: Array
        # @param ScanInfo: 扫描信息
        # @type ScanInfo: :class:`Tencentcloud::Ms.v20180408.models.ScanInfo`

        attr_accessor :AppInfos, :ScanInfo
        
        def initialize(appinfos=nil, scaninfo=nil)
          @AppInfos = appinfos
          @ScanInfo = scaninfo
        end

        def deserialize(params)
          unless params['AppInfos'].nil?
            @AppInfos = []
            params['AppInfos'].each do |i|
              appinfo_tmp = AppInfo.new
              appinfo_tmp.deserialize(i)
              @AppInfos << appinfo_tmp
            end
          end
          unless params['ScanInfo'].nil?
            @ScanInfo = ScanInfo.new
            @ScanInfo.deserialize(params['ScanInfo'])
          end
        end
      end

      # CreateScanInstances返回参数结构体
      class CreateScanInstancesResponse < TencentCloud::Common::AbstractModel
        # @param ItemId: 任务唯一标识
        # @type ItemId: String
        # @param Progress: 任务状态: 1-已完成,2-处理中,3-处理出错,4-处理超时
        # @type Progress: Integer
        # @param AppMd5s: 提交成功的app的md5集合
        # @type AppMd5s: Array
        # @param LimitCount: 剩余可用次数
        # @type LimitCount: Integer
        # @param LimitTime: 到期时间
        # @type LimitTime: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ItemId, :Progress, :AppMd5s, :LimitCount, :LimitTime, :RequestId
        
        def initialize(itemid=nil, progress=nil, appmd5s=nil, limitcount=nil, limittime=nil, requestid=nil)
          @ItemId = itemid
          @Progress = progress
          @AppMd5s = appmd5s
          @LimitCount = limitcount
          @LimitTime = limittime
          @RequestId = requestid
        end

        def deserialize(params)
          @ItemId = params['ItemId']
          @Progress = params['Progress']
          @AppMd5s = params['AppMd5s']
          @LimitCount = params['LimitCount']
          @LimitTime = params['LimitTime']
          @RequestId = params['RequestId']
        end
      end

      # CreateShieldInstance请求参数结构体
      class CreateShieldInstanceRequest < TencentCloud::Common::AbstractModel
        # @param AppInfo: 待加固的应用信息
        # @type AppInfo: :class:`Tencentcloud::Ms.v20180408.models.AppInfo`
        # @param ServiceInfo: 加固服务信息
        # @type ServiceInfo: :class:`Tencentcloud::Ms.v20180408.models.ServiceInfo`

        attr_accessor :AppInfo, :ServiceInfo
        
        def initialize(appinfo=nil, serviceinfo=nil)
          @AppInfo = appinfo
          @ServiceInfo = serviceinfo
        end

        def deserialize(params)
          unless params['AppInfo'].nil?
            @AppInfo = AppInfo.new
            @AppInfo.deserialize(params['AppInfo'])
          end
          unless params['ServiceInfo'].nil?
            @ServiceInfo = ServiceInfo.new
            @ServiceInfo.deserialize(params['ServiceInfo'])
          end
        end
      end

      # CreateShieldInstance返回参数结构体
      class CreateShieldInstanceResponse < TencentCloud::Common::AbstractModel
        # @param Progress: 任务状态: 1-已完成,2-处理中,3-处理出错,4-处理超时
        # @type Progress: Integer
        # @param ItemId: 任务唯一标识
        # @type ItemId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Progress, :ItemId, :RequestId
        
        def initialize(progress=nil, itemid=nil, requestid=nil)
          @Progress = progress
          @ItemId = itemid
          @RequestId = requestid
        end

        def deserialize(params)
          @Progress = params['Progress']
          @ItemId = params['ItemId']
          @RequestId = params['RequestId']
        end
      end

      # CreateShieldPlanInstance请求参数结构体
      class CreateShieldPlanInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源id
        # @type ResourceId: String
        # @param PlanName: 策略名称
        # @type PlanName: String
        # @param PlanInfo: 策略具体信息
        # @type PlanInfo: :class:`Tencentcloud::Ms.v20180408.models.PlanInfo`

        attr_accessor :ResourceId, :PlanName, :PlanInfo
        
        def initialize(resourceid=nil, planname=nil, planinfo=nil)
          @ResourceId = resourceid
          @PlanName = planname
          @PlanInfo = planinfo
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @PlanName = params['PlanName']
          unless params['PlanInfo'].nil?
            @PlanInfo = PlanInfo.new
            @PlanInfo.deserialize(params['PlanInfo'])
          end
        end
      end

      # CreateShieldPlanInstance返回参数结构体
      class CreateShieldPlanInstanceResponse < TencentCloud::Common::AbstractModel
        # @param PlanId: 策略id
        # @type PlanId: Integer
        # @param Progress: 任务状态: 1-已完成,2-处理中,3-处理出错,4-处理超时
        # @type Progress: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlanId, :Progress, :RequestId
        
        def initialize(planid=nil, progress=nil, requestid=nil)
          @PlanId = planid
          @Progress = progress
          @RequestId = requestid
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @Progress = params['Progress']
          @RequestId = params['RequestId']
        end
      end

      # DeleteScanInstances请求参数结构体
      class DeleteScanInstancesRequest < TencentCloud::Common::AbstractModel
        # @param AppSids: 删除一个或多个扫描的app，最大支持20个
        # @type AppSids: Array

        attr_accessor :AppSids
        
        def initialize(appsids=nil)
          @AppSids = appsids
        end

        def deserialize(params)
          @AppSids = params['AppSids']
        end
      end

      # DeleteScanInstances返回参数结构体
      class DeleteScanInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Progress: 任务状态: 1-已完成,2-处理中,3-处理出错,4-处理超时
        # @type Progress: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Progress, :RequestId
        
        def initialize(progress=nil, requestid=nil)
          @Progress = progress
          @RequestId = requestid
        end

        def deserialize(params)
          @Progress = params['Progress']
          @RequestId = params['RequestId']
        end
      end

      # DeleteShieldInstances请求参数结构体
      class DeleteShieldInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ItemIds: 任务唯一标识ItemId的列表
        # @type ItemIds: Array

        attr_accessor :ItemIds
        
        def initialize(itemids=nil)
          @ItemIds = itemids
        end

        def deserialize(params)
          @ItemIds = params['ItemIds']
        end
      end

      # DeleteShieldInstances返回参数结构体
      class DeleteShieldInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Progress: 任务状态: 1-已完成,2-处理中,3-处理出错,4-处理超时
        # @type Progress: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Progress, :RequestId
        
        def initialize(progress=nil, requestid=nil)
          @Progress = progress
          @RequestId = requestid
        end

        def deserialize(params)
          @Progress = params['Progress']
          @RequestId = params['RequestId']
        end
      end

      # DescribeApkDetectionResult请求参数结构体
      class DescribeApkDetectionResultRequest < TencentCloud::Common::AbstractModel
        # @param ApkUrl: 软件包的下载链接
        # @type ApkUrl: String
        # @param ApkMd5: 软件包的md5值，具有唯一性。腾讯APK云检测服务会根据md5值来判断该包是否为库中已收集的样本，已存在，则返回检测结果，反之，需要一定时间检测该样本。
        # @type ApkMd5: String

        attr_accessor :ApkUrl, :ApkMd5
        
        def initialize(apkurl=nil, apkmd5=nil)
          @ApkUrl = apkurl
          @ApkMd5 = apkmd5
        end

        def deserialize(params)
          @ApkUrl = params['ApkUrl']
          @ApkMd5 = params['ApkMd5']
        end
      end

      # DescribeApkDetectionResult返回参数结构体
      class DescribeApkDetectionResultResponse < TencentCloud::Common::AbstractModel
        # @param Result: 响应结果，ok表示正常，error表示错误
        # @type Result: String
        # @param Reason: Result为error错误时的原因说明
        # @type Reason: String
        # @param ResultList: APK检测结果数组
        # @type ResultList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Reason, :ResultList, :RequestId
        
        def initialize(result=nil, reason=nil, resultlist=nil, requestid=nil)
          @Result = result
          @Reason = reason
          @ResultList = resultlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Reason = params['Reason']
          unless params['ResultList'].nil?
            @ResultList = []
            params['ResultList'].each do |i|
              resultlistitem_tmp = ResultListItem.new
              resultlistitem_tmp.deserialize(i)
              @ResultList << resultlistitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceInstances请求参数结构体
      class DescribeResourceInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 支持CreateTime、ExpireTime、AppName、AppPkgName、BindValue、IsBind过滤
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 数量限制，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Pids: 资源类别id数组，13624：加固专业版，12750：企业版。空数组表示返回全部资源。
        # @type Pids: Array
        # @param OrderField: 按某个字段排序，目前支持CreateTime、ExpireTime其中的一个排序。
        # @type OrderField: String
        # @param OrderDirection: 升序（asc）还是降序（desc），默认：desc。
        # @type OrderDirection: String

        attr_accessor :Filters, :Offset, :Limit, :Pids, :OrderField, :OrderDirection
        
        def initialize(filters=nil, offset=nil, limit=nil, pids=nil, orderfield=nil, orderdirection=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Pids = pids
          @OrderField = orderfield
          @OrderDirection = orderdirection
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
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Pids = params['Pids']
          @OrderField = params['OrderField']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeResourceInstances返回参数结构体
      class DescribeResourceInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合要求的资源数量
        # @type TotalCount: Integer
        # @param ResourceSet: 符合要求的资源数组
        # @type ResourceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ResourceSet, :RequestId
        
        def initialize(totalcount=nil, resourceset=nil, requestid=nil)
          @TotalCount = totalcount
          @ResourceSet = resourceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ResourceSet'].nil?
            @ResourceSet = []
            params['ResourceSet'].each do |i|
              resourceinfo_tmp = ResourceInfo.new
              resourceinfo_tmp.deserialize(i)
              @ResourceSet << resourceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanInstances请求参数结构体
      class DescribeScanInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 支持通过app名称，app包名进行筛选
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 数量限制，默认为20，最大值为100。
        # @type Limit: Integer
        # @param ItemIds: 可以提供ItemId数组来查询一个或者多个结果。注意不可以同时指定ItemIds和Filters。
        # @type ItemIds: Array
        # @param OrderField: 按某个字段排序，目前仅支持TaskTime排序。
        # @type OrderField: String
        # @param OrderDirection: 升序（asc）还是降序（desc），默认：desc。
        # @type OrderDirection: String

        attr_accessor :Filters, :Offset, :Limit, :ItemIds, :OrderField, :OrderDirection
        
        def initialize(filters=nil, offset=nil, limit=nil, itemids=nil, orderfield=nil, orderdirection=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @ItemIds = itemids
          @OrderField = orderfield
          @OrderDirection = orderdirection
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
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ItemIds = params['ItemIds']
          @OrderField = params['OrderField']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeScanInstances返回参数结构体
      class DescribeScanInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合要求的app数量
        # @type TotalCount: Integer
        # @param ScanSet: 一个关于app详细信息的结构体，主要包括app的基本信息和扫描状态信息。
        # @type ScanSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ScanSet, :RequestId
        
        def initialize(totalcount=nil, scanset=nil, requestid=nil)
          @TotalCount = totalcount
          @ScanSet = scanset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ScanSet'].nil?
            @ScanSet = []
            params['ScanSet'].each do |i|
              appscanset_tmp = AppScanSet.new
              appscanset_tmp.deserialize(i)
              @ScanSet << appscanset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanResults请求参数结构体
      class DescribeScanResultsRequest < TencentCloud::Common::AbstractModel
        # @param ItemId: 任务唯一标识
        # @type ItemId: String
        # @param AppMd5s: 批量查询一个或者多个app的扫描结果，如果不传表示查询该任务下所提交的所有app
        # @type AppMd5s: Array

        attr_accessor :ItemId, :AppMd5s
        
        def initialize(itemid=nil, appmd5s=nil)
          @ItemId = itemid
          @AppMd5s = appmd5s
        end

        def deserialize(params)
          @ItemId = params['ItemId']
          @AppMd5s = params['AppMd5s']
        end
      end

      # DescribeScanResults返回参数结构体
      class DescribeScanResultsResponse < TencentCloud::Common::AbstractModel
        # @param ScanSet: 批量扫描的app结果集
        # @type ScanSet: Array
        # @param TotalCount: 批量扫描结果的个数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScanSet, :TotalCount, :RequestId
        
        def initialize(scanset=nil, totalcount=nil, requestid=nil)
          @ScanSet = scanset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ScanSet'].nil?
            @ScanSet = []
            params['ScanSet'].each do |i|
              scansetinfo_tmp = ScanSetInfo.new
              scansetinfo_tmp.deserialize(i)
              @ScanSet << scansetinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeShieldInstances请求参数结构体
      class DescribeShieldInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 支持通过app名称，app包名，加固的服务版本，提交的渠道进行筛选。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 数量限制，默认为20，最大值为100。
        # @type Limit: Integer
        # @param ItemIds: 可以提供ItemId数组来查询一个或者多个结果。注意不可以同时指定ItemIds和Filters。
        # @type ItemIds: Array
        # @param OrderField: 按某个字段排序，目前仅支持TaskTime排序。
        # @type OrderField: String
        # @param OrderDirection: 升序（asc）还是降序（desc），默认：desc。
        # @type OrderDirection: String

        attr_accessor :Filters, :Offset, :Limit, :ItemIds, :OrderField, :OrderDirection
        
        def initialize(filters=nil, offset=nil, limit=nil, itemids=nil, orderfield=nil, orderdirection=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @ItemIds = itemids
          @OrderField = orderfield
          @OrderDirection = orderdirection
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
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ItemIds = params['ItemIds']
          @OrderField = params['OrderField']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeShieldInstances返回参数结构体
      class DescribeShieldInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合要求的app数量
        # @type TotalCount: Integer
        # @param AppSet: 一个关于app详细信息的结构体，主要包括app的基本信息和加固信息。
        # @type AppSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AppSet, :RequestId
        
        def initialize(totalcount=nil, appset=nil, requestid=nil)
          @TotalCount = totalcount
          @AppSet = appset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AppSet'].nil?
            @AppSet = []
            params['AppSet'].each do |i|
              appsetinfo_tmp = AppSetInfo.new
              appsetinfo_tmp.deserialize(i)
              @AppSet << appsetinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeShieldPlanInstance请求参数结构体
      class DescribeShieldPlanInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源id
        # @type ResourceId: String
        # @param Pid: 服务类别id
        # @type Pid: Integer

        attr_accessor :ResourceId, :Pid
        
        def initialize(resourceid=nil, pid=nil)
          @ResourceId = resourceid
          @Pid = pid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Pid = params['Pid']
        end
      end

      # DescribeShieldPlanInstance返回参数结构体
      class DescribeShieldPlanInstanceResponse < TencentCloud::Common::AbstractModel
        # @param BindInfo: 绑定资源信息
        # @type BindInfo: :class:`Tencentcloud::Ms.v20180408.models.BindInfo`
        # @param ShieldPlanInfo: 加固策略信息
        # @type ShieldPlanInfo: :class:`Tencentcloud::Ms.v20180408.models.ShieldPlanInfo`
        # @param ResourceServiceInfo: 加固资源信息
        # @type ResourceServiceInfo: :class:`Tencentcloud::Ms.v20180408.models.ResourceServiceInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BindInfo, :ShieldPlanInfo, :ResourceServiceInfo, :RequestId
        
        def initialize(bindinfo=nil, shieldplaninfo=nil, resourceserviceinfo=nil, requestid=nil)
          @BindInfo = bindinfo
          @ShieldPlanInfo = shieldplaninfo
          @ResourceServiceInfo = resourceserviceinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BindInfo'].nil?
            @BindInfo = BindInfo.new
            @BindInfo.deserialize(params['BindInfo'])
          end
          unless params['ShieldPlanInfo'].nil?
            @ShieldPlanInfo = ShieldPlanInfo.new
            @ShieldPlanInfo.deserialize(params['ShieldPlanInfo'])
          end
          unless params['ResourceServiceInfo'].nil?
            @ResourceServiceInfo = ResourceServiceInfo.new
            @ResourceServiceInfo.deserialize(params['ResourceServiceInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeShieldResult请求参数结构体
      class DescribeShieldResultRequest < TencentCloud::Common::AbstractModel
        # @param ItemId: 任务唯一标识
        # @type ItemId: String

        attr_accessor :ItemId
        
        def initialize(itemid=nil)
          @ItemId = itemid
        end

        def deserialize(params)
          @ItemId = params['ItemId']
        end
      end

      # DescribeShieldResult返回参数结构体
      class DescribeShieldResultResponse < TencentCloud::Common::AbstractModel
        # @param TaskStatus: 任务状态: 0-请返回,1-已完成,2-处理中,3-处理出错,4-处理超时
        # @type TaskStatus: Integer
        # @param AppDetailInfo: app加固前的详细信息
        # @type AppDetailInfo: :class:`Tencentcloud::Ms.v20180408.models.AppDetailInfo`
        # @param ShieldInfo: app加固后的详细信息
        # @type ShieldInfo: :class:`Tencentcloud::Ms.v20180408.models.ShieldInfo`
        # @param StatusDesc: 状态描述
        # @type StatusDesc: String
        # @param StatusRef: 状态指引
        # @type StatusRef: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskStatus, :AppDetailInfo, :ShieldInfo, :StatusDesc, :StatusRef, :RequestId
        
        def initialize(taskstatus=nil, appdetailinfo=nil, shieldinfo=nil, statusdesc=nil, statusref=nil, requestid=nil)
          @TaskStatus = taskstatus
          @AppDetailInfo = appdetailinfo
          @ShieldInfo = shieldinfo
          @StatusDesc = statusdesc
          @StatusRef = statusref
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskStatus = params['TaskStatus']
          unless params['AppDetailInfo'].nil?
            @AppDetailInfo = AppDetailInfo.new
            @AppDetailInfo.deserialize(params['AppDetailInfo'])
          end
          unless params['ShieldInfo'].nil?
            @ShieldInfo = ShieldInfo.new
            @ShieldInfo.deserialize(params['ShieldInfo'])
          end
          @StatusDesc = params['StatusDesc']
          @StatusRef = params['StatusRef']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUrlDetectionResult请求参数结构体
      class DescribeUrlDetectionResultRequest < TencentCloud::Common::AbstractModel
        # @param Url: 查询的网址
        # @type Url: String

        attr_accessor :Url
        
        def initialize(url=nil)
          @Url = url
        end

        def deserialize(params)
          @Url = params['Url']
        end
      end

      # DescribeUrlDetectionResult返回参数结构体
      class DescribeUrlDetectionResultResponse < TencentCloud::Common::AbstractModel
        # @param ResultCode: [查询结果]查询结果；枚举值：0 查询成功，否则查询失败
        # @type ResultCode: Integer
        # @param RespVer: [固定信息]响应协议版本号；
        # @type RespVer: Integer
        # @param UrlType: [查询结果]url恶意状态；枚举值：1-灰， 2-黑（具体的恶意类型参考恶意类型定义Eviltype字段) ，3-非腾讯白名单，4-腾讯白名单。查询结果（level、evilclass、eviltype）这3个字段在Urltype=2（url状态为黑）下才有意义。
        # @type UrlType: Integer
        # @param EvilClass: [查询结果]url恶意大类；枚举值：1-链接，2-Cgi，3-路劲，4-整站，5-整域。
        # @type EvilClass: Integer
        # @param EvilType: [查询结果]url恶意类型；枚举值：1-社工欺诈（仿冒、账号钓鱼、中奖诈骗）；2-信息诈骗（虚假充值、虚假兼职、虚假金融投资、虚假信用卡代办、网络赌博诈骗；3-虚假销售（男女保健美容减肥产品、电子产品、虚假广告、违法销售）；4-恶意文件（病毒文件，木马文件，恶意apk文件的下载链接以及站点，挂马网站）；5-博彩网站（博彩网站，在线赌博网站）；6-色情网站（涉嫌传播色情内容，提供色情服务的网站；7-风险网站（弱类型，传播垃圾信息的网站, 如果客户端有阻断，不建议使用这个数据）
        # @type EvilType: Integer
        # @param Level: [查询结果]url恶意级别
        # @type Level: Integer
        # @param DetectTime: [查询详情]url检出时间
        # @type DetectTime: Integer
        # @param Wording: [查询详情]拦截Wording
        # @type Wording: String
        # @param WordingTitle: [查询详情]拦截Wording 标题
        # @type WordingTitle: String
        # @param UrlTypeDesc: [查询结果]url恶意状态说明
        # @type UrlTypeDesc: String
        # @param EvilClassDesc: [查询结果]url恶意大类说明
        # @type EvilClassDesc: String
        # @param EvilTypeDesc: [查询结果]url恶意类型说明
        # @type EvilTypeDesc: String
        # @param LevelDesc: [查询结果]url恶意级别说明
        # @type LevelDesc: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultCode, :RespVer, :UrlType, :EvilClass, :EvilType, :Level, :DetectTime, :Wording, :WordingTitle, :UrlTypeDesc, :EvilClassDesc, :EvilTypeDesc, :LevelDesc, :RequestId
        
        def initialize(resultcode=nil, respver=nil, urltype=nil, evilclass=nil, eviltype=nil, level=nil, detecttime=nil, wording=nil, wordingtitle=nil, urltypedesc=nil, evilclassdesc=nil, eviltypedesc=nil, leveldesc=nil, requestid=nil)
          @ResultCode = resultcode
          @RespVer = respver
          @UrlType = urltype
          @EvilClass = evilclass
          @EvilType = eviltype
          @Level = level
          @DetectTime = detecttime
          @Wording = wording
          @WordingTitle = wordingtitle
          @UrlTypeDesc = urltypedesc
          @EvilClassDesc = evilclassdesc
          @EvilTypeDesc = eviltypedesc
          @LevelDesc = leveldesc
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultCode = params['ResultCode']
          @RespVer = params['RespVer']
          @UrlType = params['UrlType']
          @EvilClass = params['EvilClass']
          @EvilType = params['EvilType']
          @Level = params['Level']
          @DetectTime = params['DetectTime']
          @Wording = params['Wording']
          @WordingTitle = params['WordingTitle']
          @UrlTypeDesc = params['UrlTypeDesc']
          @EvilClassDesc = params['EvilClassDesc']
          @EvilTypeDesc = params['EvilTypeDesc']
          @LevelDesc = params['LevelDesc']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserBaseInfoInstance请求参数结构体
      class DescribeUserBaseInfoInstanceRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeUserBaseInfoInstance返回参数结构体
      class DescribeUserBaseInfoInstanceResponse < TencentCloud::Common::AbstractModel
        # @param UserUin: 用户uin信息
        # @type UserUin: Integer
        # @param UserAppid: 用户APPID信息
        # @type UserAppid: Integer
        # @param TimeStamp: 系统时间戳
        # @type TimeStamp: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserUin, :UserAppid, :TimeStamp, :RequestId
        
        def initialize(useruin=nil, userappid=nil, timestamp=nil, requestid=nil)
          @UserUin = useruin
          @UserAppid = userappid
          @TimeStamp = timestamp
          @RequestId = requestid
        end

        def deserialize(params)
          @UserUin = params['UserUin']
          @UserAppid = params['UserAppid']
          @TimeStamp = params['TimeStamp']
          @RequestId = params['RequestId']
        end
      end

      # 筛选数据结构
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段
        # @type Name: String
        # @param Value: 需要过滤字段的值
        # @type Value: String

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # APK检测服务：非广告插件结果列表(SDK、风险插件等)
      class OptPluginListItem < TencentCloud::Common::AbstractModel
        # @param PluginType: 非广告类型
        # @type PluginType: String
        # @param PluginName: 非广告插件名称
        # @type PluginName: String
        # @param PluginDesc: 非广告插件描述
        # @type PluginDesc: String

        attr_accessor :PluginType, :PluginName, :PluginDesc
        
        def initialize(plugintype=nil, pluginname=nil, plugindesc=nil)
          @PluginType = plugintype
          @PluginName = pluginname
          @PluginDesc = plugindesc
        end

        def deserialize(params)
          @PluginType = params['PluginType']
          @PluginName = params['PluginName']
          @PluginDesc = params['PluginDesc']
        end
      end

      # 加固策略具体信息
      class PlanDetailInfo < TencentCloud::Common::AbstractModel
        # @param IsDefault: 默认策略，1为默认，0为非默认
        # @type IsDefault: Integer
        # @param PlanId: 策略id
        # @type PlanId: Integer
        # @param PlanName: 策略名称
        # @type PlanName: String
        # @param PlanInfo: 策略信息
        # @type PlanInfo: :class:`Tencentcloud::Ms.v20180408.models.PlanInfo`

        attr_accessor :IsDefault, :PlanId, :PlanName, :PlanInfo
        
        def initialize(isdefault=nil, planid=nil, planname=nil, planinfo=nil)
          @IsDefault = isdefault
          @PlanId = planid
          @PlanName = planname
          @PlanInfo = planinfo
        end

        def deserialize(params)
          @IsDefault = params['IsDefault']
          @PlanId = params['PlanId']
          @PlanName = params['PlanName']
          unless params['PlanInfo'].nil?
            @PlanInfo = PlanInfo.new
            @PlanInfo.deserialize(params['PlanInfo'])
          end
        end
      end

      # 加固策略信息
      class PlanInfo < TencentCloud::Common::AbstractModel
        # @param ApkSizeOpt: apk大小优化，0关闭，1开启
        # @type ApkSizeOpt: Integer
        # @param Dex: Dex加固，0关闭，1开启
        # @type Dex: Integer
        # @param So: So加固，0关闭，1开启
        # @type So: Integer
        # @param Bugly: 数据收集，0关闭，1开启
        # @type Bugly: Integer
        # @param AntiRepack: 防止重打包，0关闭，1开启
        # @type AntiRepack: Integer
        # @param SeperateDex: Dex分离，0关闭，1开启
        # @type SeperateDex: Integer
        # @param Db: 内存保护，0关闭，1开启
        # @type Db: Integer
        # @param DexSig: Dex签名校验，0关闭，1开启
        # @type DexSig: Integer
        # @param SoInfo: So文件信息
        # @type SoInfo: :class:`Tencentcloud::Ms.v20180408.models.SoInfo`
        # @param AntiVMP: vmp，0关闭，1开启
        # @type AntiVMP: Integer
        # @param SoType: 保护so的强度，
        # @type SoType: Array
        # @param AntiLogLeak: 防日志泄漏，0关闭，1开启
        # @type AntiLogLeak: Integer
        # @param AntiQemuRoot: root检测，0关闭，1开启
        # @type AntiQemuRoot: Integer
        # @param AntiAssets: 资源防篡改，0关闭，1开启
        # @type AntiAssets: Integer
        # @param AntiScreenshot: 防止截屏，0关闭，1开启
        # @type AntiScreenshot: Integer
        # @param AntiSSL: SSL证书防窃取，0关闭，1开启
        # @type AntiSSL: Integer

        attr_accessor :ApkSizeOpt, :Dex, :So, :Bugly, :AntiRepack, :SeperateDex, :Db, :DexSig, :SoInfo, :AntiVMP, :SoType, :AntiLogLeak, :AntiQemuRoot, :AntiAssets, :AntiScreenshot, :AntiSSL
        
        def initialize(apksizeopt=nil, dex=nil, so=nil, bugly=nil, antirepack=nil, seperatedex=nil, db=nil, dexsig=nil, soinfo=nil, antivmp=nil, sotype=nil, antilogleak=nil, antiqemuroot=nil, antiassets=nil, antiscreenshot=nil, antissl=nil)
          @ApkSizeOpt = apksizeopt
          @Dex = dex
          @So = so
          @Bugly = bugly
          @AntiRepack = antirepack
          @SeperateDex = seperatedex
          @Db = db
          @DexSig = dexsig
          @SoInfo = soinfo
          @AntiVMP = antivmp
          @SoType = sotype
          @AntiLogLeak = antilogleak
          @AntiQemuRoot = antiqemuroot
          @AntiAssets = antiassets
          @AntiScreenshot = antiscreenshot
          @AntiSSL = antissl
        end

        def deserialize(params)
          @ApkSizeOpt = params['ApkSizeOpt']
          @Dex = params['Dex']
          @So = params['So']
          @Bugly = params['Bugly']
          @AntiRepack = params['AntiRepack']
          @SeperateDex = params['SeperateDex']
          @Db = params['Db']
          @DexSig = params['DexSig']
          unless params['SoInfo'].nil?
            @SoInfo = SoInfo.new
            @SoInfo.deserialize(params['SoInfo'])
          end
          @AntiVMP = params['AntiVMP']
          @SoType = params['SoType']
          @AntiLogLeak = params['AntiLogLeak']
          @AntiQemuRoot = params['AntiQemuRoot']
          @AntiAssets = params['AntiAssets']
          @AntiScreenshot = params['AntiScreenshot']
          @AntiSSL = params['AntiSSL']
        end
      end

      # 插件信息
      class PluginInfo < TencentCloud::Common::AbstractModel
        # @param PluginType: 插件类型，分别为 1-通知栏广告，2-积分墙广告，3-banner广告，4- 悬浮窗图标广告，5-精品推荐列表广告, 6-插播广告
        # @type PluginType: Integer
        # @param PluginName: 插件名称
        # @type PluginName: String
        # @param PluginDesc: 插件描述
        # @type PluginDesc: String

        attr_accessor :PluginType, :PluginName, :PluginDesc
        
        def initialize(plugintype=nil, pluginname=nil, plugindesc=nil)
          @PluginType = plugintype
          @PluginName = pluginname
          @PluginDesc = plugindesc
        end

        def deserialize(params)
          @PluginType = params['PluginType']
          @PluginName = params['PluginName']
          @PluginDesc = params['PluginDesc']
        end
      end

      # APK检测服务：广告插件结果结构体
      class PluginListItem < TencentCloud::Common::AbstractModel
        # @param PluginType: 数字类型，分别为 1-通知栏广告，2-积分墙广告，3-banner广告，4- 悬浮窗图标广告，5-精品推荐列表广告, 6-插播广告
        # @type PluginType: String
        # @param PluginName: 广告插件名称
        # @type PluginName: String
        # @param PluginDesc: 广告插件描述
        # @type PluginDesc: String

        attr_accessor :PluginType, :PluginName, :PluginDesc
        
        def initialize(plugintype=nil, pluginname=nil, plugindesc=nil)
          @PluginType = plugintype
          @PluginName = pluginname
          @PluginDesc = plugindesc
        end

        def deserialize(params)
          @PluginType = params['PluginType']
          @PluginName = params['PluginName']
          @PluginDesc = params['PluginDesc']
        end
      end

      # 拉取某个用户的所有资源信息
      class ResourceInfo < TencentCloud::Common::AbstractModel
        # @param ResourceId: 用户购买的资源id，全局唯一
        # @type ResourceId: String
        # @param Pid: 资源的pid，MTP加固-12767，应用加固-12750 MTP反作弊-12766 源代码混淆-12736
        # @type Pid: Integer
        # @param CreateTime: 购买时间戳
        # @type CreateTime: Integer
        # @param ExpireTime: 到期时间戳
        # @type ExpireTime: Integer
        # @param IsBind: 0-未绑定，1-已绑定
        # @type IsBind: Integer
        # @param BindInfo: 用户绑定app的基本信息
        # @type BindInfo: :class:`Tencentcloud::Ms.v20180408.models.BindInfo`
        # @param ResourceName: 资源名称，如应用加固，漏洞扫描
        # @type ResourceName: String

        attr_accessor :ResourceId, :Pid, :CreateTime, :ExpireTime, :IsBind, :BindInfo, :ResourceName
        
        def initialize(resourceid=nil, pid=nil, createtime=nil, expiretime=nil, isbind=nil, bindinfo=nil, resourcename=nil)
          @ResourceId = resourceid
          @Pid = pid
          @CreateTime = createtime
          @ExpireTime = expiretime
          @IsBind = isbind
          @BindInfo = bindinfo
          @ResourceName = resourcename
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Pid = params['Pid']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @IsBind = params['IsBind']
          unless params['BindInfo'].nil?
            @BindInfo = BindInfo.new
            @BindInfo.deserialize(params['BindInfo'])
          end
          @ResourceName = params['ResourceName']
        end
      end

      # 资源服务信息
      class ResourceServiceInfo < TencentCloud::Common::AbstractModel
        # @param CreateTime: 创建时间戳
        # @type CreateTime: Integer
        # @param ExpireTime: 到期时间戳
        # @type ExpireTime: Integer
        # @param ResourceName: 资源名称，如应用加固，源码混淆
        # @type ResourceName: String

        attr_accessor :CreateTime, :ExpireTime, :ResourceName
        
        def initialize(createtime=nil, expiretime=nil, resourcename=nil)
          @CreateTime = createtime
          @ExpireTime = expiretime
          @ResourceName = resourcename
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @ResourceName = params['ResourceName']
        end
      end

      # APK检测服务参数返回具体信息
      class ResultListItem < TencentCloud::Common::AbstractModel
        # @param Banner: banner广告软件标记，分别为-1-不确定，0-否，1-是
        # @type Banner: String
        # @param BoutiqueRecommand: 精品推荐列表广告标记，分别为-1-不确定，0-否，1-是
        # @type BoutiqueRecommand: String
        # @param FloatWindows: 悬浮窗图标广告标记,分别为-1-不确定，0-否，1-是
        # @type FloatWindows: String
        # @param IntegralWall: 积分墙广告软件标记，分别为 -1 -不确定，0-否，1-是
        # @type IntegralWall: String
        # @param Md5: 安装包的md5
        # @type Md5: String
        # @param NotifyBar: 通知栏广告软件标记，分别为-1-不确定，0-否，1-是
        # @type NotifyBar: String
        # @param Official: 1表示官方，0表示非官方
        # @type Official: String
        # @param PluginList: 广告插件结果列表
        # @type PluginList: Array
        # @param OptPluginList: 非广告插件结果列表(SDK、风险插件等)
        # @type OptPluginList: Array
        # @param SafeType: 数字类型，分别为0-未知， 1-安全软件，2-风险软件，3-病毒软件
        # @type SafeType: String
        # @param Sid: Session id，合作方可以用来区分回调数据，需要唯一。
        # @type Sid: String
        # @param SoftName: 安装包名称
        # @type SoftName: String
        # @param Spot: 插播广告软件标记，取值：-1 不确定，0否， 1 是
        # @type Spot: String
        # @param VirusName: 病毒名称，utf8编码
        # @type VirusName: String
        # @param VirusDesc: 病毒描述，utf8编码
        # @type VirusDesc: String
        # @param RepackageStatus: 二次打包状态：0-表示默认；1-表示二次
        # @type RepackageStatus: String
        # @param Errno: 应用错误码：0、1-表示正常；

        # 2表示System Error(engine analysis error).

        # 3表示App analysis error, please confirm it.

        # 4表示App have not cert, please confirm it.

        # 5表示App size is zero, please confirm it.

        # 6表示App have not package name, please confirm it.

        # 7表示App build time is empty, please confirm it.

        # 8表示App have not valid cert, please confirm it.

        # 99表示Other error.

        # 1000表示App downloadlink download fail, please confirm it.

        # 1001表示APP md5 different between real md5, please confirm it.

        # 1002表示App md5 uncollect, please offer downloadlink.
        # @type Errno: String
        # @param ErrMsg: 对应errno的错误信息描述
        # @type ErrMsg: String

        attr_accessor :Banner, :BoutiqueRecommand, :FloatWindows, :IntegralWall, :Md5, :NotifyBar, :Official, :PluginList, :OptPluginList, :SafeType, :Sid, :SoftName, :Spot, :VirusName, :VirusDesc, :RepackageStatus, :Errno, :ErrMsg
        
        def initialize(banner=nil, boutiquerecommand=nil, floatwindows=nil, integralwall=nil, md5=nil, notifybar=nil, official=nil, pluginlist=nil, optpluginlist=nil, safetype=nil, sid=nil, softname=nil, spot=nil, virusname=nil, virusdesc=nil, repackagestatus=nil, errno=nil, errmsg=nil)
          @Banner = banner
          @BoutiqueRecommand = boutiquerecommand
          @FloatWindows = floatwindows
          @IntegralWall = integralwall
          @Md5 = md5
          @NotifyBar = notifybar
          @Official = official
          @PluginList = pluginlist
          @OptPluginList = optpluginlist
          @SafeType = safetype
          @Sid = sid
          @SoftName = softname
          @Spot = spot
          @VirusName = virusname
          @VirusDesc = virusdesc
          @RepackageStatus = repackagestatus
          @Errno = errno
          @ErrMsg = errmsg
        end

        def deserialize(params)
          @Banner = params['Banner']
          @BoutiqueRecommand = params['BoutiqueRecommand']
          @FloatWindows = params['FloatWindows']
          @IntegralWall = params['IntegralWall']
          @Md5 = params['Md5']
          @NotifyBar = params['NotifyBar']
          @Official = params['Official']
          unless params['PluginList'].nil?
            @PluginList = []
            params['PluginList'].each do |i|
              pluginlistitem_tmp = PluginListItem.new
              pluginlistitem_tmp.deserialize(i)
              @PluginList << pluginlistitem_tmp
            end
          end
          unless params['OptPluginList'].nil?
            @OptPluginList = []
            params['OptPluginList'].each do |i|
              optpluginlistitem_tmp = OptPluginListItem.new
              optpluginlistitem_tmp.deserialize(i)
              @OptPluginList << optpluginlistitem_tmp
            end
          end
          @SafeType = params['SafeType']
          @Sid = params['Sid']
          @SoftName = params['SoftName']
          @Spot = params['Spot']
          @VirusName = params['VirusName']
          @VirusDesc = params['VirusDesc']
          @RepackageStatus = params['RepackageStatus']
          @Errno = params['Errno']
          @ErrMsg = params['ErrMsg']
        end
      end

      # 需要扫描的应用的服务信息
      class ScanInfo < TencentCloud::Common::AbstractModel
        # @param CallbackUrl: 任务处理完成后的反向通知回调地址,批量提交app每扫描完成一个会通知一次,通知为POST请求，post信息{ItemId:
        # @type CallbackUrl: String
        # @param ScanTypes: VULSCAN-漏洞扫描信息，VIRUSSCAN-返回病毒扫描信息， ADSCAN-广告扫描信息，PLUGINSCAN-插件扫描信息，PERMISSION-系统权限信息，SENSITIVE-敏感词信息，可以自由组合
        # @type ScanTypes: Array

        attr_accessor :CallbackUrl, :ScanTypes
        
        def initialize(callbackurl=nil, scantypes=nil)
          @CallbackUrl = callbackurl
          @ScanTypes = scantypes
        end

        def deserialize(params)
          @CallbackUrl = params['CallbackUrl']
          @ScanTypes = params['ScanTypes']
        end
      end

      # 安全扫描系统权限信息
      class ScanPermissionInfo < TencentCloud::Common::AbstractModel
        # @param Permission: 系统权限
        # @type Permission: String

        attr_accessor :Permission
        
        def initialize(permission=nil)
          @Permission = permission
        end

        def deserialize(params)
          @Permission = params['Permission']
        end
      end

      # 安全扫描系统权限信息
      class ScanPermissionList < TencentCloud::Common::AbstractModel
        # @param PermissionList: 系统权限信息
        # @type PermissionList: Array

        attr_accessor :PermissionList
        
        def initialize(permissionlist=nil)
          @PermissionList = permissionlist
        end

        def deserialize(params)
          unless params['PermissionList'].nil?
            @PermissionList = []
            params['PermissionList'].each do |i|
              scanpermissioninfo_tmp = ScanPermissionInfo.new
              scanpermissioninfo_tmp.deserialize(i)
              @PermissionList << scanpermissioninfo_tmp
            end
          end
        end
      end

      # 安全扫描敏感词
      class ScanSensitiveInfo < TencentCloud::Common::AbstractModel
        # @param WordList: 敏感词
        # @type WordList: Array
        # @param FilePath: 敏感词对应的文件信息
        # @type FilePath: String
        # @param FileSha: 文件sha1值
        # @type FileSha: String

        attr_accessor :WordList, :FilePath, :FileSha
        
        def initialize(wordlist=nil, filepath=nil, filesha=nil)
          @WordList = wordlist
          @FilePath = filepath
          @FileSha = filesha
        end

        def deserialize(params)
          @WordList = params['WordList']
          @FilePath = params['FilePath']
          @FileSha = params['FileSha']
        end
      end

      # 安全扫描敏感词列表
      class ScanSensitiveList < TencentCloud::Common::AbstractModel
        # @param SensitiveList: 敏感词列表
        # @type SensitiveList: Array

        attr_accessor :SensitiveList
        
        def initialize(sensitivelist=nil)
          @SensitiveList = sensitivelist
        end

        def deserialize(params)
          unless params['SensitiveList'].nil?
            @SensitiveList = []
            params['SensitiveList'].each do |i|
              scansensitiveinfo_tmp = ScanSensitiveInfo.new
              scansensitiveinfo_tmp.deserialize(i)
              @SensitiveList << scansensitiveinfo_tmp
            end
          end
        end
      end

      # app扫描结果集
      class ScanSetInfo < TencentCloud::Common::AbstractModel
        # @param TaskStatus: 任务状态: 1-已完成,2-处理中,3-处理出错,4-处理超时
        # @type TaskStatus: Integer
        # @param AppDetailInfo: app信息
        # @type AppDetailInfo: :class:`Tencentcloud::Ms.v20180408.models.AppDetailInfo`
        # @param VirusInfo: 病毒信息
        # @type VirusInfo: :class:`Tencentcloud::Ms.v20180408.models.VirusInfo`
        # @param VulInfo: 漏洞信息
        # @type VulInfo: :class:`Tencentcloud::Ms.v20180408.models.VulInfo`
        # @param AdInfo: 广告插件信息
        # @type AdInfo: :class:`Tencentcloud::Ms.v20180408.models.AdInfo`
        # @param TaskTime: 提交扫描的时间
        # @type TaskTime: Integer
        # @param StatusCode: 状态码，成功返回0，失败返回错误码
        # @type StatusCode: Integer
        # @param StatusDesc: 状态描述
        # @type StatusDesc: String
        # @param StatusRef: 状态操作指引
        # @type StatusRef: String
        # @param PermissionInfo: 系统权限信息
        # @type PermissionInfo: :class:`Tencentcloud::Ms.v20180408.models.ScanPermissionList`
        # @param SensitiveInfo: 敏感词列表
        # @type SensitiveInfo: :class:`Tencentcloud::Ms.v20180408.models.ScanSensitiveList`

        attr_accessor :TaskStatus, :AppDetailInfo, :VirusInfo, :VulInfo, :AdInfo, :TaskTime, :StatusCode, :StatusDesc, :StatusRef, :PermissionInfo, :SensitiveInfo
        
        def initialize(taskstatus=nil, appdetailinfo=nil, virusinfo=nil, vulinfo=nil, adinfo=nil, tasktime=nil, statuscode=nil, statusdesc=nil, statusref=nil, permissioninfo=nil, sensitiveinfo=nil)
          @TaskStatus = taskstatus
          @AppDetailInfo = appdetailinfo
          @VirusInfo = virusinfo
          @VulInfo = vulinfo
          @AdInfo = adinfo
          @TaskTime = tasktime
          @StatusCode = statuscode
          @StatusDesc = statusdesc
          @StatusRef = statusref
          @PermissionInfo = permissioninfo
          @SensitiveInfo = sensitiveinfo
        end

        def deserialize(params)
          @TaskStatus = params['TaskStatus']
          unless params['AppDetailInfo'].nil?
            @AppDetailInfo = AppDetailInfo.new
            @AppDetailInfo.deserialize(params['AppDetailInfo'])
          end
          unless params['VirusInfo'].nil?
            @VirusInfo = VirusInfo.new
            @VirusInfo.deserialize(params['VirusInfo'])
          end
          unless params['VulInfo'].nil?
            @VulInfo = VulInfo.new
            @VulInfo.deserialize(params['VulInfo'])
          end
          unless params['AdInfo'].nil?
            @AdInfo = AdInfo.new
            @AdInfo.deserialize(params['AdInfo'])
          end
          @TaskTime = params['TaskTime']
          @StatusCode = params['StatusCode']
          @StatusDesc = params['StatusDesc']
          @StatusRef = params['StatusRef']
          unless params['PermissionInfo'].nil?
            @PermissionInfo = ScanPermissionList.new
            @PermissionInfo.deserialize(params['PermissionInfo'])
          end
          unless params['SensitiveInfo'].nil?
            @SensitiveInfo = ScanSensitiveList.new
            @SensitiveInfo.deserialize(params['SensitiveInfo'])
          end
        end
      end

      # 提交app加固的服务信息
      class ServiceInfo < TencentCloud::Common::AbstractModel
        # @param ServiceEdition: 服务版本，基础版basic，专业版professional，企业版enterprise。
        # @type ServiceEdition: String
        # @param CallbackUrl: 任务处理完成后的反向通知回调地址，如果不需要通知请传递空字符串。通知为POST请求，post包体数据示例{"Response":{"ItemId":"4cdad8fb86f036b06bccb3f58971c306","ShieldCode":0,"ShieldMd5":"78701576793c4a5f04e1c9660de0aa0b","ShieldSize":11997354,"TaskStatus":1,"TaskTime":1539148141}}，调用方需要返回如下信息，{"Result":"ok","Reason":"xxxxx"}，如果Result字段值不等于ok会继续回调。
        # @type CallbackUrl: String
        # @param SubmitSource: 提交来源 YYB-应用宝 RDM-rdm MC-控制台 MAC_TOOL-mac工具 WIN_TOOL-window工具。
        # @type SubmitSource: String
        # @param PlanId: 加固策略编号，如果不传则使用系统默认加固策略。如果指定的plan不存在会返回错误。
        # @type PlanId: Integer

        attr_accessor :ServiceEdition, :CallbackUrl, :SubmitSource, :PlanId
        
        def initialize(serviceedition=nil, callbackurl=nil, submitsource=nil, planid=nil)
          @ServiceEdition = serviceedition
          @CallbackUrl = callbackurl
          @SubmitSource = submitsource
          @PlanId = planid
        end

        def deserialize(params)
          @ServiceEdition = params['ServiceEdition']
          @CallbackUrl = params['CallbackUrl']
          @SubmitSource = params['SubmitSource']
          @PlanId = params['PlanId']
        end
      end

      # 加固后app的信息
      class ShieldInfo < TencentCloud::Common::AbstractModel
        # @param ShieldCode: 加固结果的返回码
        # @type ShieldCode: Integer
        # @param ShieldSize: 加固后app的大小
        # @type ShieldSize: Integer
        # @param ShieldMd5: 加固后app的md5
        # @type ShieldMd5: String
        # @param AppUrl: 加固后的APP下载地址，该地址有效期为20分钟，请及时下载
        # @type AppUrl: String
        # @param TaskTime: 加固的提交时间
        # @type TaskTime: Integer
        # @param ItemId: 任务唯一标识
        # @type ItemId: String
        # @param ServiceEdition: 加固版本，basic基础版，professional专业版，enterprise企业版
        # @type ServiceEdition: String

        attr_accessor :ShieldCode, :ShieldSize, :ShieldMd5, :AppUrl, :TaskTime, :ItemId, :ServiceEdition
        
        def initialize(shieldcode=nil, shieldsize=nil, shieldmd5=nil, appurl=nil, tasktime=nil, itemid=nil, serviceedition=nil)
          @ShieldCode = shieldcode
          @ShieldSize = shieldsize
          @ShieldMd5 = shieldmd5
          @AppUrl = appurl
          @TaskTime = tasktime
          @ItemId = itemid
          @ServiceEdition = serviceedition
        end

        def deserialize(params)
          @ShieldCode = params['ShieldCode']
          @ShieldSize = params['ShieldSize']
          @ShieldMd5 = params['ShieldMd5']
          @AppUrl = params['AppUrl']
          @TaskTime = params['TaskTime']
          @ItemId = params['ItemId']
          @ServiceEdition = params['ServiceEdition']
        end
      end

      # 加固策略信息
      class ShieldPlanInfo < TencentCloud::Common::AbstractModel
        # @param TotalCount: 加固策略数量
        # @type TotalCount: Integer
        # @param PlanSet: 加固策略具体信息数组
        # @type PlanSet: Array

        attr_accessor :TotalCount, :PlanSet
        
        def initialize(totalcount=nil, planset=nil)
          @TotalCount = totalcount
          @PlanSet = planset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['PlanSet'].nil?
            @PlanSet = []
            params['PlanSet'].each do |i|
              plandetailinfo_tmp = PlanDetailInfo.new
              plandetailinfo_tmp.deserialize(i)
              @PlanSet << plandetailinfo_tmp
            end
          end
        end
      end

      # so加固信息
      class SoInfo < TencentCloud::Common::AbstractModel
        # @param SoFileNames: so文件列表
        # @type SoFileNames: Array

        attr_accessor :SoFileNames
        
        def initialize(sofilenames=nil)
          @SoFileNames = sofilenames
        end

        def deserialize(params)
          @SoFileNames = params['SoFileNames']
        end
      end

      # 病毒信息
      class VirusInfo < TencentCloud::Common::AbstractModel
        # @param SafeType: 软件安全类型，分别为0-未知、 1-安全软件、2-风险软件、3-病毒软件
        # @type SafeType: Integer
        # @param VirusName: 病毒名称， utf8编码，非病毒时值为空
        # @type VirusName: String
        # @param VirusDesc: 病毒描述，utf8编码，非病毒时值为空
        # @type VirusDesc: String

        attr_accessor :SafeType, :VirusName, :VirusDesc
        
        def initialize(safetype=nil, virusname=nil, virusdesc=nil)
          @SafeType = safetype
          @VirusName = virusname
          @VirusDesc = virusdesc
        end

        def deserialize(params)
          @SafeType = params['SafeType']
          @VirusName = params['VirusName']
          @VirusDesc = params['VirusDesc']
        end
      end

      # 漏洞信息
      class VulInfo < TencentCloud::Common::AbstractModel
        # @param VulList: 漏洞列表
        # @type VulList: Array
        # @param VulFileScore: 漏洞文件评分
        # @type VulFileScore: Integer

        attr_accessor :VulList, :VulFileScore
        
        def initialize(vullist=nil, vulfilescore=nil)
          @VulList = vullist
          @VulFileScore = vulfilescore
        end

        def deserialize(params)
          unless params['VulList'].nil?
            @VulList = []
            params['VulList'].each do |i|
              vullist_tmp = VulList.new
              vullist_tmp.deserialize(i)
              @VulList << vullist_tmp
            end
          end
          @VulFileScore = params['VulFileScore']
        end
      end

      # 漏洞信息
      class VulList < TencentCloud::Common::AbstractModel
        # @param VulId: 漏洞id
        # @type VulId: String
        # @param VulName: 漏洞名称
        # @type VulName: String
        # @param VulCode: 漏洞代码
        # @type VulCode: String
        # @param VulDesc: 漏洞描述
        # @type VulDesc: String
        # @param VulSolution: 漏洞解决方案
        # @type VulSolution: String
        # @param VulSrcType: 漏洞来源类别，0默认自身，1第三方插件
        # @type VulSrcType: Integer
        # @param VulFilepath: 漏洞位置
        # @type VulFilepath: String
        # @param RiskLevel: 风险级别：1 低风险 ；2中等风险；3 高风险
        # @type RiskLevel: Integer

        attr_accessor :VulId, :VulName, :VulCode, :VulDesc, :VulSolution, :VulSrcType, :VulFilepath, :RiskLevel
        
        def initialize(vulid=nil, vulname=nil, vulcode=nil, vuldesc=nil, vulsolution=nil, vulsrctype=nil, vulfilepath=nil, risklevel=nil)
          @VulId = vulid
          @VulName = vulname
          @VulCode = vulcode
          @VulDesc = vuldesc
          @VulSolution = vulsolution
          @VulSrcType = vulsrctype
          @VulFilepath = vulfilepath
          @RiskLevel = risklevel
        end

        def deserialize(params)
          @VulId = params['VulId']
          @VulName = params['VulName']
          @VulCode = params['VulCode']
          @VulDesc = params['VulDesc']
          @VulSolution = params['VulSolution']
          @VulSrcType = params['VulSrcType']
          @VulFilepath = params['VulFilepath']
          @RiskLevel = params['RiskLevel']
        end
      end

    end
  end
end

