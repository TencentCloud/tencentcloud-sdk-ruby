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
      # 渠道合作Android加固App信息
      class AndroidAppInfo < TencentCloud::Common::AbstractModel
        # @param AppMd5: app文件的md5算法值，需要正确传递，在线加固必输。
        # 例如linux环境下执行算法命令md5sum ：
        # #md5sum test.apk
        # d40cc11e4bddd643ecdf29cde729a12b
        # @type AppMd5: String
        # @param AppSize: app的大小，非必输。
        # @type AppSize: Integer
        # @param AppUrl: app下载链接，在线加固必输。
        # @type AppUrl: String
        # @param AppName: app名称，非必输
        # @type AppName: String
        # @param AppPkgName: app的包名，本次操作的包名。
        # 当Android是按年收费、免费试用加固时，在线加固和输出工具要求该字段必输，且与AndroidPlan.AppPkgName值相等。
        # @type AppPkgName: String
        # @param AppFileName: app的文件名，非必输。
        # @type AppFileName: String
        # @param AppVersion: app版本号，非必输。
        # @type AppVersion: String
        # @param AppType: Android app的文件类型，本次加固操作的应用类型 。
        # Android在线加固和输出工具加固必输，其值需等于“apk”或“aab”，且与AndroidAppInfo.AppType值相等。
        # @type AppType: String

        attr_accessor :AppMd5, :AppSize, :AppUrl, :AppName, :AppPkgName, :AppFileName, :AppVersion, :AppType

        def initialize(appmd5=nil, appsize=nil, appurl=nil, appname=nil, apppkgname=nil, appfilename=nil, appversion=nil, apptype=nil)
          @AppMd5 = appmd5
          @AppSize = appsize
          @AppUrl = appurl
          @AppName = appname
          @AppPkgName = apppkgname
          @AppFileName = appfilename
          @AppVersion = appversion
          @AppType = apptype
        end

        def deserialize(params)
          @AppMd5 = params['AppMd5']
          @AppSize = params['AppSize']
          @AppUrl = params['AppUrl']
          @AppName = params['AppName']
          @AppPkgName = params['AppPkgName']
          @AppFileName = params['AppFileName']
          @AppVersion = params['AppVersion']
          @AppType = params['AppType']
        end
      end

      # 渠道合作Android加固策略信息
      class AndroidPlan < TencentCloud::Common::AbstractModel
        # @param PlanId: 非必输字段，PlanId 是指本次加固使用的配置策略Id，可通过载入上次配置接口获取。其值非0时，代表引用对应的策略。
        # @type PlanId: Integer
        # @param AppPkgName: 本次操作的包名。
        # 当收费模式是android按年收费和android免费试用的在线加固和输出工具加固时，要求该字段必输，且与AndroidAppInfo.AppPkgName值相等。
        # @type AppPkgName: String
        # @param AppType: android app的文件类型，本次加固操作的应用类型 。
        # android在线加固和输出工具加固必输，其值需等于“apk”或“aab”，且与AndroidAppInfo.AppType值相等。
        # @type AppType: String
        # @param EncryptParam: android加固必输字段。
        # 加固策略，json格式字符串。
        # 字段说明（0-关闭，1-开启）：
        #         "enable"=1 #DEX整体加固;
        #         "antiprotect"=1 #反调试;
        #         "antirepack"=1 #防重打包、防篡改;
        #         "dexsig"=1       #签名校验;
        #         "antimonitor"=1 #防模拟器运行保护;
        #         "ptrace"=1 #防动态注入、动态调试;
        #         "so"."enable" = 1 #文件加密;
        #         "vmp"."enable" = 1 #VMP虚拟化保护;
        #         "respro"."assets"."enable" = 1 #assets资源文件加密
        #        "respro"."res"."enable" = 1 #res资源文件加密

        # so文件加密：
        # 支持5种架构:
        # apk 格式: /lib/armeabi/libxxx.so,/lib/arm64-v8a/libxxx.so,/lib/armeabi-v7a/libxxx.so,/lib/x86/libxxx.so,/lib/x86_64/libxxx.so
        # aab格式: /base/lib/armeabi/libxxx.so,/base/lib/arm64-v8a/libxxx.so,/base/lib/armeabi-v7a/libxxx.so,/base/lib/x86/libxxx.so,/base/lib/x86_64/libxxx.so
        # 请列举 SO 库在 apk 文件解压后的完整有效路径，如:/lib/armeabi/libxxx.so；
        # 需要加固的 SO 库需确认为自研的 SO 库，不要加固第三方 SO 库，否则会增加 crash 风险

        # res资源文件加密注意事项：
        # 请指定需要加密的文件全路径，如：res/layout/1.xml;
        # res资源文件加密不能加密APP图标
        # res目录文件，不能加密以下后缀规则的文件".wav", ".mp2", ".mp3", ".ogg", ".aac", ".mpg",".mpeg", ".mid", ".midi", ".smf", ".jet", ".rtttl", ".imy", ".xmf", ".mp4", ".m4a", ".m4v", ".3gp",".3gpp", ".3g2", ".3gpp2", ".amr", ".awb", ".wma", ".wmv"

        # assets资源文件加密注意事项:
        # 请指定需要加密的文件全路径，如：assets/main.js；可以完整路径，也可以相对路径。
        # 如果有通配符需要完整路径 ":all"或者"*"代表所有文件
        # assets资源文件加密不能加密APP图标
        # assets目录文件，不能加密以下后缀规则的文件".wav", ".mp2", ".mp3", ".ogg", ".aac", ".mpg",".mpeg", ".mid", ".midi", ".smf", ".jet", ".rtttl", ".imy", ".xmf", ".mp4", ".m4a", ".m4v", ".3gp",".3gpp", ".3g2", ".3gpp2", ".amr", ".awb", ".wma", ".wmv"


        # apk[dex+so+vmp+res+assets]加固参数示例：
        # ‘{
        #     "dex": {
        #         "enable": 1,
        #         "antiprotect": 1,
        #         "antirepack": 1,
        #         "dexsig": 1,
        #         "antimonitor": 1,
        #         "ptrace": 1
        #     },
        #     "so": {
        #         "enable": 1,
        #         "ver": "1.3.3",
        #         "file": [
        #             "/lib/armeabi/libtest.so"
        #         ]
        #     },
        #     "vmp": {
        #         "enable": 1,
        #         "ndkpath": "/xxx/android-ndk-r10e",
        #         "profile": "/xxx/vmpprofile.txt",
        #         "mapping": "/xxx/mapping.txt"
        #     },
        #     "respro": {
        #         "assets": {
        #             "enable": 1,
        #             "file": [
        #                 "assets/1.js",
        #                 "assets/2.jpg"
        #             ]
        #         },
        #         "res": {
        #             "enable": 1,
        #             "file": [
        #                 "res/layout/1.xml",
        #                 "res/layout/2.xml"
        #             ]
        #         }
        #     }
        # }’

        # aab加固方案一
        # [dex+res+assets]加固json字符串：
        # ‘{
        #     "dex": {
        #         "enable": 1,
        #         "antiprotect": 1,
        #         "antimonitor": 1
        #     },
        #     "respro": {
        #         "assets": {
        #             "enable": 1,
        #             "file": [
        #                 "assets/1.js",
        #                 "assets/2.jpg"
        #             ]
        #         },
        #         "res": {
        #             "enable": 1,
        #             "file": [
        #                 "res/layout/1.xml",
        #                 "res/layout/2.xml"
        #             ]
        #         }
        #     }
        # }’

        # aab加固方案二
        # 单独vmp加固：
        # ‘{
        #     "vmp": {
        #         "enable": 1,
        #         "ndkpath": "/xxx/android-ndk-r10e",
        #         "profile": "/xxx/vmpprofile.txt",
        #         "mapping": "/xxx/mapping.txt",
        #         "antiprotect": 1,
        #         "antimonitor": 1
        #     }
        # }’
        # @type EncryptParam: String

        attr_accessor :PlanId, :AppPkgName, :AppType, :EncryptParam

        def initialize(planid=nil, apppkgname=nil, apptype=nil, encryptparam=nil)
          @PlanId = planid
          @AppPkgName = apppkgname
          @AppType = apptype
          @EncryptParam = encryptparam
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @AppPkgName = params['AppPkgName']
          @AppType = params['AppType']
          @EncryptParam = params['EncryptParam']
        end
      end

      # Android加固结果
      class AndroidResult < TencentCloud::Common::AbstractModel
        # @param ResultId: 结果Id,用于查询加固结果
        # @type ResultId: String
        # @param OrderId: 与当前任务关联的订单id
        # @type OrderId: String
        # @param ResourceId: 与当前任务关联的资源Id
        # @type ResourceId: String
        # @param OpUin: 本次任务发起者
        # @type OpUin: Integer
        # @param AppType: 应用类型：android-apk; android-aab;
        # @type AppType: String
        # @param AppPkgName: 应用包名
        # @type AppPkgName: String
        # @param BindAppPkgName: 后台资源绑定的包名
        # @type BindAppPkgName: String
        # @param EncryptState: 加固结果
        # @type EncryptState: Integer
        # @param EncryptStateDesc: 加固结果描述
        # @type EncryptStateDesc: String
        # @param EncryptErrCode: 加固失败错误码
        # @type EncryptErrCode: Integer
        # @param EncryptErrDesc: 加固失败原因
        # @type EncryptErrDesc: String
        # @param EncryptErrRef: 加固失败解决方案
        # @type EncryptErrRef: String
        # @param CreatTime: 任务创建时间
        # @type CreatTime: String
        # @param StartTime: 任务开始处理时间
        # @type StartTime: String
        # @param EndTime: 任务处理结束时间
        # @type EndTime: String
        # @param CostTime: 加固耗时（秒单位）
        # @type CostTime: Integer
        # @param AppUrl: 在线加固-android应用原包下载链接
        # @type AppUrl: String
        # @param AppMd5: 在线加固-android应用文件MD5算法值
        # @type AppMd5: String
        # @param AppName: 在线加固-android应用应用名称
        # @type AppName: String
        # @param AppVersion: 在线加固-android应用版本；
        # @type AppVersion: String
        # @param AppSize: 在线加固-android应用大小
        # @type AppSize: Integer
        # @param OnlineToolVersion: 在线加固-android加固-腾讯云应用加固工具版本
        # @type OnlineToolVersion: String
        # @param EncryptAppMd5: 在线加固-android加固，加固成功后文件md5算法值
        # @type EncryptAppMd5: String
        # @param EncryptAppSize: 在线加固-android加固，加固成功后应用大小
        # @type EncryptAppSize: Integer
        # @param EncryptPkgUrl: 在线加固-android加固，加固包下载链接。
        # @type EncryptPkgUrl: String
        # @param OutputToolVersion: 输出工具-android加固-腾讯云输出工具版本
        # @type OutputToolVersion: String
        # @param OutputToolSize: 输出工具-android加固-工具大小
        # @type OutputToolSize: Integer
        # @param ToolOutputTime: 输出工具-android加固-工具输出时间
        # @type ToolOutputTime: String
        # @param ToolExpireTime: 输出工具-android加固-工具到期时间
        # @type ToolExpireTime: String
        # @param OutputToolUrl: 输出工具-android加固-输出工具下载链接
        # @type OutputToolUrl: String
        # @param AndroidPlan: 本次android加固策略信息
        # @type AndroidPlan: :class:`Tencentcloud::Ms.v20180408.models.AndroidPlan`

        attr_accessor :ResultId, :OrderId, :ResourceId, :OpUin, :AppType, :AppPkgName, :BindAppPkgName, :EncryptState, :EncryptStateDesc, :EncryptErrCode, :EncryptErrDesc, :EncryptErrRef, :CreatTime, :StartTime, :EndTime, :CostTime, :AppUrl, :AppMd5, :AppName, :AppVersion, :AppSize, :OnlineToolVersion, :EncryptAppMd5, :EncryptAppSize, :EncryptPkgUrl, :OutputToolVersion, :OutputToolSize, :ToolOutputTime, :ToolExpireTime, :OutputToolUrl, :AndroidPlan

        def initialize(resultid=nil, orderid=nil, resourceid=nil, opuin=nil, apptype=nil, apppkgname=nil, bindapppkgname=nil, encryptstate=nil, encryptstatedesc=nil, encrypterrcode=nil, encrypterrdesc=nil, encrypterrref=nil, creattime=nil, starttime=nil, endtime=nil, costtime=nil, appurl=nil, appmd5=nil, appname=nil, appversion=nil, appsize=nil, onlinetoolversion=nil, encryptappmd5=nil, encryptappsize=nil, encryptpkgurl=nil, outputtoolversion=nil, outputtoolsize=nil, tooloutputtime=nil, toolexpiretime=nil, outputtoolurl=nil, androidplan=nil)
          @ResultId = resultid
          @OrderId = orderid
          @ResourceId = resourceid
          @OpUin = opuin
          @AppType = apptype
          @AppPkgName = apppkgname
          @BindAppPkgName = bindapppkgname
          @EncryptState = encryptstate
          @EncryptStateDesc = encryptstatedesc
          @EncryptErrCode = encrypterrcode
          @EncryptErrDesc = encrypterrdesc
          @EncryptErrRef = encrypterrref
          @CreatTime = creattime
          @StartTime = starttime
          @EndTime = endtime
          @CostTime = costtime
          @AppUrl = appurl
          @AppMd5 = appmd5
          @AppName = appname
          @AppVersion = appversion
          @AppSize = appsize
          @OnlineToolVersion = onlinetoolversion
          @EncryptAppMd5 = encryptappmd5
          @EncryptAppSize = encryptappsize
          @EncryptPkgUrl = encryptpkgurl
          @OutputToolVersion = outputtoolversion
          @OutputToolSize = outputtoolsize
          @ToolOutputTime = tooloutputtime
          @ToolExpireTime = toolexpiretime
          @OutputToolUrl = outputtoolurl
          @AndroidPlan = androidplan
        end

        def deserialize(params)
          @ResultId = params['ResultId']
          @OrderId = params['OrderId']
          @ResourceId = params['ResourceId']
          @OpUin = params['OpUin']
          @AppType = params['AppType']
          @AppPkgName = params['AppPkgName']
          @BindAppPkgName = params['BindAppPkgName']
          @EncryptState = params['EncryptState']
          @EncryptStateDesc = params['EncryptStateDesc']
          @EncryptErrCode = params['EncryptErrCode']
          @EncryptErrDesc = params['EncryptErrDesc']
          @EncryptErrRef = params['EncryptErrRef']
          @CreatTime = params['CreatTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CostTime = params['CostTime']
          @AppUrl = params['AppUrl']
          @AppMd5 = params['AppMd5']
          @AppName = params['AppName']
          @AppVersion = params['AppVersion']
          @AppSize = params['AppSize']
          @OnlineToolVersion = params['OnlineToolVersion']
          @EncryptAppMd5 = params['EncryptAppMd5']
          @EncryptAppSize = params['EncryptAppSize']
          @EncryptPkgUrl = params['EncryptPkgUrl']
          @OutputToolVersion = params['OutputToolVersion']
          @OutputToolSize = params['OutputToolSize']
          @ToolOutputTime = params['ToolOutputTime']
          @ToolExpireTime = params['ToolExpireTime']
          @OutputToolUrl = params['OutputToolUrl']
          unless params['AndroidPlan'].nil?
            @AndroidPlan = AndroidPlan.new
            @AndroidPlan.deserialize(params['AndroidPlan'])
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

      # 小程序加固信息
      class AppletInfo < TencentCloud::Common::AbstractModel
        # @param AppletJsUrl: 客户JS包
        # @type AppletJsUrl: String
        # @param AppletLevel: 小程序加固等级配置
        # 1 - 开启代码混淆、代码压缩、代码反调试保护。 2 - 开启字符串编码和代码变换，代码膨胀，随机插入冗余代码，开启代码控制流平坦化，保证业务逻辑正常前提下，扁平化代码逻辑分支，破坏代码简单的线性结构。 3 - 开启代码加密，对字符串、函数、变量、属性、类、数组等结构进行加密保护，更多得代码控制流平坦化，扁平化逻辑分支。
        # @type AppletLevel: Integer
        # @param Name: 本次加固输出产物名称，如”test.zip“,非空必须是 ”.zip“结尾
        # @type Name: String

        attr_accessor :AppletJsUrl, :AppletLevel, :Name

        def initialize(appletjsurl=nil, appletlevel=nil, name=nil)
          @AppletJsUrl = appletjsurl
          @AppletLevel = appletlevel
          @Name = name
        end

        def deserialize(params)
          @AppletJsUrl = params['AppletJsUrl']
          @AppletLevel = params['AppletLevel']
          @Name = params['Name']
        end
      end

      # 小程序加固配置
      class AppletPlan < TencentCloud::Common::AbstractModel
        # @param PlanId: 策略Id
        # @type PlanId: Integer
        # @param AppletLevel: 1 - 开启代码混淆、代码压缩、代码反调试保护。
        # 2 - 开启字符串编码和代码变换，代码膨胀，随机插入冗余代码，开启代码控制流平坦化，保证业务逻辑正常前提下，扁平化代码逻辑分支，破坏代码简单的线性结构。
        # 3 - 开启代码加密，对字符串、函数、变量、属性、类、数组等结构进行加密保护，更多得代码控制流平坦化，扁平化逻辑分支。
        # @type AppletLevel: Integer

        attr_accessor :PlanId, :AppletLevel

        def initialize(planid=nil, appletlevel=nil)
          @PlanId = planid
          @AppletLevel = appletlevel
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @AppletLevel = params['AppletLevel']
        end
      end

      # 渠道合作加固小程序加固结果
      class AppletResult < TencentCloud::Common::AbstractModel
        # @param ResultId: 加固任务结果id
        # @type ResultId: String
        # @param ResourceId: 资源id
        # @type ResourceId: String
        # @param OrderId: 订单id
        # @type OrderId: String
        # @param OpUin: 操作账号
        # @type OpUin: Integer
        # @param EncryptState: 加固结果
        # @type EncryptState: Integer
        # @param EncryptStateDesc: 加固结果描述
        # @type EncryptStateDesc: String
        # @param EncryptErrCode: 失败错误码
        # @type EncryptErrCode: Integer
        # @param EncryptErrDesc: 失败原因
        # @type EncryptErrDesc: String
        # @param EncryptErrRef: 解决方案
        # @type EncryptErrRef: String
        # @param CreatTime: 任务创建时间
        # @type CreatTime: String
        # @param StartTime: 任务开始处理时间
        # @type StartTime: String
        # @param EndTime: 任务处理结束时间
        # @type EndTime: String
        # @param CostTime: 加固耗时（秒单位）
        # @type CostTime: Integer
        # @param EncryptPkgUrl: 在线加固成功下载包
        # @type EncryptPkgUrl: String
        # @param AppletInfo: 本次加固配置
        # @type AppletInfo: :class:`Tencentcloud::Ms.v20180408.models.AppletInfo`

        attr_accessor :ResultId, :ResourceId, :OrderId, :OpUin, :EncryptState, :EncryptStateDesc, :EncryptErrCode, :EncryptErrDesc, :EncryptErrRef, :CreatTime, :StartTime, :EndTime, :CostTime, :EncryptPkgUrl, :AppletInfo

        def initialize(resultid=nil, resourceid=nil, orderid=nil, opuin=nil, encryptstate=nil, encryptstatedesc=nil, encrypterrcode=nil, encrypterrdesc=nil, encrypterrref=nil, creattime=nil, starttime=nil, endtime=nil, costtime=nil, encryptpkgurl=nil, appletinfo=nil)
          @ResultId = resultid
          @ResourceId = resourceid
          @OrderId = orderid
          @OpUin = opuin
          @EncryptState = encryptstate
          @EncryptStateDesc = encryptstatedesc
          @EncryptErrCode = encrypterrcode
          @EncryptErrDesc = encrypterrdesc
          @EncryptErrRef = encrypterrref
          @CreatTime = creattime
          @StartTime = starttime
          @EndTime = endtime
          @CostTime = costtime
          @EncryptPkgUrl = encryptpkgurl
          @AppletInfo = appletinfo
        end

        def deserialize(params)
          @ResultId = params['ResultId']
          @ResourceId = params['ResourceId']
          @OrderId = params['OrderId']
          @OpUin = params['OpUin']
          @EncryptState = params['EncryptState']
          @EncryptStateDesc = params['EncryptStateDesc']
          @EncryptErrCode = params['EncryptErrCode']
          @EncryptErrDesc = params['EncryptErrDesc']
          @EncryptErrRef = params['EncryptErrRef']
          @CreatTime = params['CreatTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CostTime = params['CostTime']
          @EncryptPkgUrl = params['EncryptPkgUrl']
          unless params['AppletInfo'].nil?
            @AppletInfo = AppletInfo.new
            @AppletInfo.deserialize(params['AppletInfo'])
          end
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

      # CancelEncryptTask请求参数结构体
      class CancelEncryptTaskRequest < TencentCloud::Common::AbstractModel
        # @param ResultId: 加固任务结果Id
        # @type ResultId: String

        attr_accessor :ResultId

        def initialize(resultid=nil)
          @ResultId = resultid
        end

        def deserialize(params)
          @ResultId = params['ResultId']
        end
      end

      # CancelEncryptTask返回参数结构体
      class CancelEncryptTaskResponse < TencentCloud::Common::AbstractModel
        # @param State: 1: 取消任务成功 ； -1 ：取消任务失败，原因为任务进程已结束，不能取消。
        # @type State: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :State, :RequestId

        def initialize(state=nil, requestid=nil)
          @State = state
          @RequestId = requestid
        end

        def deserialize(params)
          @State = params['State']
          @RequestId = params['RequestId']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param CosToken: 密钥TOCKEN信息
        # @type CosToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CosAppid, :CosBucket, :CosRegion, :ExpireTime, :CosId, :CosKey, :CosTocken, :CosPrefix, :CosToken, :RequestId
        extend Gem::Deprecate
        deprecate :CosTocken, :none, 2024, 6
        deprecate :CosTocken=, :none, 2024, 6

        def initialize(cosappid=nil, cosbucket=nil, cosregion=nil, expiretime=nil, cosid=nil, coskey=nil, costocken=nil, cosprefix=nil, costoken=nil, requestid=nil)
          @CosAppid = cosappid
          @CosBucket = cosbucket
          @CosRegion = cosregion
          @ExpireTime = expiretime
          @CosId = cosid
          @CosKey = coskey
          @CosTocken = costocken
          @CosPrefix = cosprefix
          @CosToken = costoken
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
          @CosToken = params['CosToken']
          @RequestId = params['RequestId']
        end
      end

      # CreateEncryptInstance请求参数结构体
      class CreateEncryptInstanceRequest < TencentCloud::Common::AbstractModel
        # @param PlatformType: 平台类型  1.android加固   2.ios源码混淆  3.sdk加固  4.applet小程序加固
        # @type PlatformType: Integer
        # @param OrderType: 订单采购类型 1-免费试用 2-按年收费 3-按次收费
        # @type OrderType: Integer
        # @param EncryptOpType: 1-在线加固、  2-输出工具加固
        # @type EncryptOpType: Integer
        # @param ResourceId: 本次加固使用的资源id
        # @type ResourceId: String
        # @param AndroidAppInfo: 渠道合作android加固App信息
        # @type AndroidAppInfo: :class:`Tencentcloud::Ms.v20180408.models.AndroidAppInfo`
        # @param AndroidPlan: 渠道合作android加固策略信息
        # @type AndroidPlan: :class:`Tencentcloud::Ms.v20180408.models.AndroidPlan`
        # @param AppletInfo: 小程序加固信息
        # @type AppletInfo: :class:`Tencentcloud::Ms.v20180408.models.AppletInfo`
        # @param IOSInfo: iOS混淆信息
        # @type IOSInfo: :class:`Tencentcloud::Ms.v20180408.models.IOSInfo`

        attr_accessor :PlatformType, :OrderType, :EncryptOpType, :ResourceId, :AndroidAppInfo, :AndroidPlan, :AppletInfo, :IOSInfo

        def initialize(platformtype=nil, ordertype=nil, encryptoptype=nil, resourceid=nil, androidappinfo=nil, androidplan=nil, appletinfo=nil, iosinfo=nil)
          @PlatformType = platformtype
          @OrderType = ordertype
          @EncryptOpType = encryptoptype
          @ResourceId = resourceid
          @AndroidAppInfo = androidappinfo
          @AndroidPlan = androidplan
          @AppletInfo = appletinfo
          @IOSInfo = iosinfo
        end

        def deserialize(params)
          @PlatformType = params['PlatformType']
          @OrderType = params['OrderType']
          @EncryptOpType = params['EncryptOpType']
          @ResourceId = params['ResourceId']
          unless params['AndroidAppInfo'].nil?
            @AndroidAppInfo = AndroidAppInfo.new
            @AndroidAppInfo.deserialize(params['AndroidAppInfo'])
          end
          unless params['AndroidPlan'].nil?
            @AndroidPlan = AndroidPlan.new
            @AndroidPlan.deserialize(params['AndroidPlan'])
          end
          unless params['AppletInfo'].nil?
            @AppletInfo = AppletInfo.new
            @AppletInfo.deserialize(params['AppletInfo'])
          end
          unless params['IOSInfo'].nil?
            @IOSInfo = IOSInfo.new
            @IOSInfo.deserialize(params['IOSInfo'])
          end
        end
      end

      # CreateEncryptInstance返回参数结构体
      class CreateEncryptInstanceResponse < TencentCloud::Common::AbstractModel
        # @param ResultId: 加固任务Id
        # @type ResultId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultId, :RequestId

        def initialize(resultid=nil, requestid=nil)
          @ResultId = resultid
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultId = params['ResultId']
          @RequestId = params['RequestId']
        end
      end

      # CreateOrderInstance请求参数结构体
      class CreateOrderInstanceRequest < TencentCloud::Common::AbstractModel
        # @param PlatformType: 平台类型枚举值：1-android加固  ；2-ios源码混淆 ； 3-sdk加固 ； 4-applet小程序加固
        # @type PlatformType: Integer
        # @param OrderType: 订单采购类型 1-免费试用 ；2-按年收费 ；3-按次收费
        # @type OrderType: Integer
        # @param AppPkgNameList: 代表应用包名列表，值为单个包名（例如：“a.b.xxx”）或多个包名用逗号隔开(例如：“a.b.xxx,b.c.xxx”)。
        # 当android按年收费加固或android免费试用加固时，该字段要求非空，即PlatformType=1 并且 OrderType=2时，AppPkgNameList必传值。
        # @type AppPkgNameList: String

        attr_accessor :PlatformType, :OrderType, :AppPkgNameList

        def initialize(platformtype=nil, ordertype=nil, apppkgnamelist=nil)
          @PlatformType = platformtype
          @OrderType = ordertype
          @AppPkgNameList = apppkgnamelist
        end

        def deserialize(params)
          @PlatformType = params['PlatformType']
          @OrderType = params['OrderType']
          @AppPkgNameList = params['AppPkgNameList']
        end
      end

      # CreateOrderInstance返回参数结构体
      class CreateOrderInstanceResponse < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单Id
        # @type OrderId: String
        # @param ResourceId: 与订单关联的资源id
        # @type ResourceId: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderId, :ResourceId, :RequestId

        def initialize(orderid=nil, resourceid=nil, requestid=nil)
          @OrderId = orderid
          @ResourceId = resourceid
          @RequestId = requestid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @ResourceId = params['ResourceId']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeEncryptInstances请求参数结构体
      class DescribeEncryptInstancesRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 多记录查询时使用，页码
        # @type PageNumber: Integer
        # @param PageSize: 多记录每页展示数量
        # @type PageSize: Integer
        # @param OrderField: 多记录查询时排序使用  仅支持CreateTime 任务创建时间排序
        # @type OrderField: String
        # @param OrderDirection: 升序（asc）还是降序（desc），默认：desc。
        # @type OrderDirection: String
        # @param PlatformType: (条件过滤字段) 平台类型  1.android加固   2.ios源码混淆  3.sdk加固  4.applet小程序加固
        # @type PlatformType: Integer
        # @param OrderType: (条件过滤字段) 订单采购类型 1-免费试用 2-按年收费 3-按次收费
        # @type OrderType: Integer
        # @param EncryptOpType: (条件过滤字段) 1-在线加固 或 2-输出工具加固
        # @type EncryptOpType: Integer
        # @param ResultId: (条件过滤字段) 单记录查询时使用，结果ID该字段非空时，结构会根据结果ID进行单记录查询，符合查询条件时，只返回一条记录。
        # @type ResultId: String
        # @param OrderId: (条件过滤字段) 查询与订单Id关联的任务
        # @type OrderId: String
        # @param ResourceId: (条件过滤字段) 查询与资源Id关联的任务
        # @type ResourceId: String
        # @param AppType: (条件过滤字段) 应用类型：android-apk; android-aab;
        # @type AppType: String
        # @param AppPkgName: （条件过滤字段）应用的包名
        # @type AppPkgName: String
        # @param EncryptState: 加固结果，
        # 0：正在排队；
        # 1：加固成功；
        # 2：加固中；
        # 3：加固失败；
        # 5：重试；
        # 多记录查询时，根据查询结果进行检索使用。
        # @type EncryptState: Array

        attr_accessor :PageNumber, :PageSize, :OrderField, :OrderDirection, :PlatformType, :OrderType, :EncryptOpType, :ResultId, :OrderId, :ResourceId, :AppType, :AppPkgName, :EncryptState

        def initialize(pagenumber=nil, pagesize=nil, orderfield=nil, orderdirection=nil, platformtype=nil, ordertype=nil, encryptoptype=nil, resultid=nil, orderid=nil, resourceid=nil, apptype=nil, apppkgname=nil, encryptstate=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @OrderField = orderfield
          @OrderDirection = orderdirection
          @PlatformType = platformtype
          @OrderType = ordertype
          @EncryptOpType = encryptoptype
          @ResultId = resultid
          @OrderId = orderid
          @ResourceId = resourceid
          @AppType = apptype
          @AppPkgName = apppkgname
          @EncryptState = encryptstate
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @OrderField = params['OrderField']
          @OrderDirection = params['OrderDirection']
          @PlatformType = params['PlatformType']
          @OrderType = params['OrderType']
          @EncryptOpType = params['EncryptOpType']
          @ResultId = params['ResultId']
          @OrderId = params['OrderId']
          @ResourceId = params['ResourceId']
          @AppType = params['AppType']
          @AppPkgName = params['AppPkgName']
          @EncryptState = params['EncryptState']
        end
      end

      # DescribeEncryptInstances返回参数结构体
      class DescribeEncryptInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param EncryptResults: 渠道合作加固信息数组
        # @type EncryptResults: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :EncryptResults, :RequestId

        def initialize(totalcount=nil, encryptresults=nil, requestid=nil)
          @TotalCount = totalcount
          @EncryptResults = encryptresults
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EncryptResults'].nil?
            @EncryptResults = []
            params['EncryptResults'].each do |i|
              encryptresults_tmp = EncryptResults.new
              encryptresults_tmp.deserialize(i)
              @EncryptResults << encryptresults_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEncryptPlan请求参数结构体
      class DescribeEncryptPlanRequest < TencentCloud::Common::AbstractModel
        # @param PlatformType: 平台类型  1.android加固   2.ios源码混淆  3.sdk加固  4.applet小程序加固
        # @type PlatformType: Integer
        # @param OrderType: 订单采购类型 1-免费试用 2-按年收费 3-按次收费
        # @type OrderType: Integer
        # @param EncryptOpType: 1-在线加固；2-输出工具
        # @type EncryptOpType: Integer
        # @param ResourceId: 本次加固使用的资源id
        # @type ResourceId: String
        # @param AppPkgName: （条件过滤字段）加固查询时，根据包名查询
        # @type AppPkgName: String
        # @param AppType: （条件过滤字段）加固查询时，根据应用格式查询，枚举值：“apk”、“aab”
        # @type AppType: String

        attr_accessor :PlatformType, :OrderType, :EncryptOpType, :ResourceId, :AppPkgName, :AppType

        def initialize(platformtype=nil, ordertype=nil, encryptoptype=nil, resourceid=nil, apppkgname=nil, apptype=nil)
          @PlatformType = platformtype
          @OrderType = ordertype
          @EncryptOpType = encryptoptype
          @ResourceId = resourceid
          @AppPkgName = apppkgname
          @AppType = apptype
        end

        def deserialize(params)
          @PlatformType = params['PlatformType']
          @OrderType = params['OrderType']
          @EncryptOpType = params['EncryptOpType']
          @ResourceId = params['ResourceId']
          @AppPkgName = params['AppPkgName']
          @AppType = params['AppType']
        end
      end

      # DescribeEncryptPlan返回参数结构体
      class DescribeEncryptPlanResponse < TencentCloud::Common::AbstractModel
        # @param PlatformType: 平台类型整型值
        # @type PlatformType: Integer
        # @param PlatformTypeDesc: 平台类型描述 1.android加固   2.ios源码混淆  3.sdk加固  4.applet小程序加固
        # @type PlatformTypeDesc: String
        # @param EncryptOpType: 1- 在线加固 2-输出工具加固
        # @type EncryptOpType: Integer
        # @param EncryptOpTypeDesc: 1- 在线加固 2-输出工具加固
        # @type EncryptOpTypeDesc: String
        # @param OrderType: 订单收费类型枚举值
        # @type OrderType: Integer
        # @param OrderTypeDesc: 订单收费类型描述
        # @type OrderTypeDesc: String
        # @param ResourceId: 资源id
        # @type ResourceId: String
        # @param AndroidPlan: 上次加固策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AndroidPlan: :class:`Tencentcloud::Ms.v20180408.models.AndroidPlan`
        # @param AppletPlan: 上次小程序加固策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppletPlan: :class:`Tencentcloud::Ms.v20180408.models.AppletPlan`
        # @param IOSPlan: 上次ios源码混淆加固配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IOSPlan: :class:`Tencentcloud::Ms.v20180408.models.IOSPlan`
        # @param SDKPlan: 上次sdk加固配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SDKPlan: :class:`Tencentcloud::Ms.v20180408.models.SDKPlan`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlatformType, :PlatformTypeDesc, :EncryptOpType, :EncryptOpTypeDesc, :OrderType, :OrderTypeDesc, :ResourceId, :AndroidPlan, :AppletPlan, :IOSPlan, :SDKPlan, :RequestId

        def initialize(platformtype=nil, platformtypedesc=nil, encryptoptype=nil, encryptoptypedesc=nil, ordertype=nil, ordertypedesc=nil, resourceid=nil, androidplan=nil, appletplan=nil, iosplan=nil, sdkplan=nil, requestid=nil)
          @PlatformType = platformtype
          @PlatformTypeDesc = platformtypedesc
          @EncryptOpType = encryptoptype
          @EncryptOpTypeDesc = encryptoptypedesc
          @OrderType = ordertype
          @OrderTypeDesc = ordertypedesc
          @ResourceId = resourceid
          @AndroidPlan = androidplan
          @AppletPlan = appletplan
          @IOSPlan = iosplan
          @SDKPlan = sdkplan
          @RequestId = requestid
        end

        def deserialize(params)
          @PlatformType = params['PlatformType']
          @PlatformTypeDesc = params['PlatformTypeDesc']
          @EncryptOpType = params['EncryptOpType']
          @EncryptOpTypeDesc = params['EncryptOpTypeDesc']
          @OrderType = params['OrderType']
          @OrderTypeDesc = params['OrderTypeDesc']
          @ResourceId = params['ResourceId']
          unless params['AndroidPlan'].nil?
            @AndroidPlan = AndroidPlan.new
            @AndroidPlan.deserialize(params['AndroidPlan'])
          end
          unless params['AppletPlan'].nil?
            @AppletPlan = AppletPlan.new
            @AppletPlan.deserialize(params['AppletPlan'])
          end
          unless params['IOSPlan'].nil?
            @IOSPlan = IOSPlan.new
            @IOSPlan.deserialize(params['IOSPlan'])
          end
          unless params['SDKPlan'].nil?
            @SDKPlan = SDKPlan.new
            @SDKPlan.deserialize(params['SDKPlan'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrderInstances请求参数结构体
      class DescribeOrderInstancesRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 每页展示数量
        # @type PageSize: Integer
        # @param OrderField: 按某个字段排序，目前仅支持CreateTime排序。
        # @type OrderField: String
        # @param OrderDirection: 升序（asc）还是降序（desc），默认：desc。
        # @type OrderDirection: String
        # @param PlatformType: （条件过滤字段）平台类型  1.android加固   2.ios源码混淆  3.sdk加固  4.applet小程序加固
        # @type PlatformType: Integer
        # @param OrderType: （条件过滤字段）订单采购类型 1-免费试用 2-按年收费 3-按次收费
        # @type OrderType: Integer
        # @param ApprovalStatus: （条件过滤字段）订单审批状态：
        # @type ApprovalStatus: Integer
        # @param ResourceStatus: （条件过滤字段）资源状态：
        # @type ResourceStatus: Integer
        # @param OrderId: （条件过滤字段）订单ID
        # @type OrderId: String
        # @param ResourceId: （条件过滤字段）资源ID
        # @type ResourceId: String
        # @param AppPkgName: （条件过滤字段）包名，查询android加固订单时使用
        # @type AppPkgName: String

        attr_accessor :PageNumber, :PageSize, :OrderField, :OrderDirection, :PlatformType, :OrderType, :ApprovalStatus, :ResourceStatus, :OrderId, :ResourceId, :AppPkgName

        def initialize(pagenumber=nil, pagesize=nil, orderfield=nil, orderdirection=nil, platformtype=nil, ordertype=nil, approvalstatus=nil, resourcestatus=nil, orderid=nil, resourceid=nil, apppkgname=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @OrderField = orderfield
          @OrderDirection = orderdirection
          @PlatformType = platformtype
          @OrderType = ordertype
          @ApprovalStatus = approvalstatus
          @ResourceStatus = resourcestatus
          @OrderId = orderid
          @ResourceId = resourceid
          @AppPkgName = apppkgname
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @OrderField = params['OrderField']
          @OrderDirection = params['OrderDirection']
          @PlatformType = params['PlatformType']
          @OrderType = params['OrderType']
          @ApprovalStatus = params['ApprovalStatus']
          @ResourceStatus = params['ResourceStatus']
          @OrderId = params['OrderId']
          @ResourceId = params['ResourceId']
          @AppPkgName = params['AppPkgName']
        end
      end

      # DescribeOrderInstances返回参数结构体
      class DescribeOrderInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param Orders: 订单信息
        # @type Orders: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Orders, :RequestId

        def initialize(totalcount=nil, orders=nil, requestid=nil)
          @TotalCount = totalcount
          @Orders = orders
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Orders'].nil?
            @Orders = []
            params['Orders'].each do |i|
              orders_tmp = Orders.new
              orders_tmp.deserialize(i)
              @Orders << orders_tmp
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RespVer: [固定信息]响应协议版本号
        # @type RespVer: Integer
        # @param UrlType: [查询结果]url恶意状态
        # 枚举值：
        # 0-1：未知，访问暂无风险。
        # 2 ：	风险网址，具体的恶意类型定义参考恶意大类EvilClass字段。
        # 3-4：安全，访问无风险。

        # 注意：查询结果EvilClass字段在Urltype=2时，才有意义。
        # @type UrlType: Integer
        # @param EvilClass: [查询结果]url恶意类型大类:{
        #     "1": "社工欺诈（仿冒、账号钓鱼、中奖诈骗）",
        #     "2": "信息诈骗（虚假充值、虚假兼职、虚假金融投资、虚假信用卡代办、网络赌博诈骗）",
        #     "3": "虚假销售（男女保健美容减肥产品、电子产品、虚假广告、违法销售）",
        #     "4": "恶意文件（病毒文件，木马文件，恶意apk文件的下载链接以及站点，挂马网站）",
        #     "5": "博彩网站（博彩网站，在线赌博网站）",
        #     "6": "色情网站（涉嫌传播色情内容，提供色情服务的网站）"，
        #     "7": "风险网站（弱类型，传播垃圾信息的网站，如果客户端有阻断，不建议使用这个网站）"，
        #     "8": "违法网站（根据法律法规不能传播的内容，以及侵犯知识产权的类型）"
        #   }
        # @type EvilClass: Integer
        # @param EvilType: 该字段暂为空
        # @type EvilType: Integer
        # @param Level: 该字段暂为空
        # @type Level: Integer
        # @param DetectTime: [查询详情]url检出时间；时间戳
        # @type DetectTime: Integer
        # @param Wording: 该字段暂为空
        # @type Wording: String
        # @param WordingTitle: 该字段暂为空
        # @type WordingTitle: String
        # @param UrlTypeDesc: [查询结果]url恶意状态说明；为UrlType字段值对应的说明
        # @type UrlTypeDesc: String
        # @param EvilClassDesc: [查询结果]url恶意大类说明；为EvilClass字段值对应的说明
        # @type EvilClassDesc: String
        # @param EvilTypeDesc: 该字段暂为空
        # @type EvilTypeDesc: String
        # @param LevelDesc: 该字段暂为空
        # @type LevelDesc: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DestroyResourceInstances请求参数结构体
      class DestroyResourceInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: ResourceId 资源id，在创建订单时，返回的resourceId
        # @type ResourceId: String
        # @param AppPkgName: 资源绑定的包名，为了防止误删除，需要指定绑定时的包名
        # @type AppPkgName: String

        attr_accessor :ResourceId, :AppPkgName

        def initialize(resourceid=nil, apppkgname=nil)
          @ResourceId = resourceid
          @AppPkgName = apppkgname
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @AppPkgName = params['AppPkgName']
        end
      end

      # DestroyResourceInstances返回参数结构体
      class DestroyResourceInstancesResponse < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源id
        # @type ResourceId: String
        # @param Result: 返回状态
        # @type Result: String
        # @param PlatformType: 平台类型  1.android安卓加固   2.ios源码混淆  3.sdk加固  4.applet小程序加固
        # @type PlatformType: Integer
        # @param OrderType: 订单采购类型 1-免费试用 2-按年收费 3-按次收费
        # @type OrderType: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceId, :Result, :PlatformType, :OrderType, :RequestId

        def initialize(resourceid=nil, result=nil, platformtype=nil, ordertype=nil, requestid=nil)
          @ResourceId = resourceid
          @Result = result
          @PlatformType = platformtype
          @OrderType = ordertype
          @RequestId = requestid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Result = params['Result']
          @PlatformType = params['PlatformType']
          @OrderType = params['OrderType']
          @RequestId = params['RequestId']
        end
      end

      # 渠道合作加固结果信息
      class EncryptResults < TencentCloud::Common::AbstractModel
        # @param PlatformType: 平台类型枚举值  1-android加固   2-ios源码混淆  3-sdk加固  4-applet小程序加固
        # @type PlatformType: Integer
        # @param PlatformDesc: 平台类型描述  1-android加固   2-ios源码混淆  3-sdk加固  4-applet小程序加固
        # @type PlatformDesc: String
        # @param OrderType: 订单采购类型枚举值， 1-免费试用 2-按年收费 3-按次收费
        # @type OrderType: Integer
        # @param OrderTypeDesc: 订单采购类型 描述：1-免费试用 2-按年收费 3-按次收费
        # @type OrderTypeDesc: String
        # @param EncryptOpType: 枚举值：1-在线加固 或 2-输出工具加固
        # @type EncryptOpType: Integer
        # @param EncryptOpTypeDesc: 描述：1-在线加固 或 2-输出工具加固
        # @type EncryptOpTypeDesc: String
        # @param ResourceId: 与当前任务关联的资源Id
        # @type ResourceId: String
        # @param OrderId: 与当前任务关联的订单Id
        # @type OrderId: String
        # @param AndroidResult: 对应PlatformType平台类型值   1-android加固结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AndroidResult: :class:`Tencentcloud::Ms.v20180408.models.AndroidResult`
        # @param IOSResult: 对应PlatformType平台类型值   2-ios源码混淆加固结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IOSResult: :class:`Tencentcloud::Ms.v20180408.models.IOSResult`
        # @param SDKResult: 对应PlatformType平台类型值   3-sdk加固结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SDKResult: :class:`Tencentcloud::Ms.v20180408.models.SDKResult`
        # @param AppletResult: 对应PlatformType平台类型值   4-applet小程序加固结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppletResult: :class:`Tencentcloud::Ms.v20180408.models.AppletResult`

        attr_accessor :PlatformType, :PlatformDesc, :OrderType, :OrderTypeDesc, :EncryptOpType, :EncryptOpTypeDesc, :ResourceId, :OrderId, :AndroidResult, :IOSResult, :SDKResult, :AppletResult

        def initialize(platformtype=nil, platformdesc=nil, ordertype=nil, ordertypedesc=nil, encryptoptype=nil, encryptoptypedesc=nil, resourceid=nil, orderid=nil, androidresult=nil, iosresult=nil, sdkresult=nil, appletresult=nil)
          @PlatformType = platformtype
          @PlatformDesc = platformdesc
          @OrderType = ordertype
          @OrderTypeDesc = ordertypedesc
          @EncryptOpType = encryptoptype
          @EncryptOpTypeDesc = encryptoptypedesc
          @ResourceId = resourceid
          @OrderId = orderid
          @AndroidResult = androidresult
          @IOSResult = iosresult
          @SDKResult = sdkresult
          @AppletResult = appletresult
        end

        def deserialize(params)
          @PlatformType = params['PlatformType']
          @PlatformDesc = params['PlatformDesc']
          @OrderType = params['OrderType']
          @OrderTypeDesc = params['OrderTypeDesc']
          @EncryptOpType = params['EncryptOpType']
          @EncryptOpTypeDesc = params['EncryptOpTypeDesc']
          @ResourceId = params['ResourceId']
          @OrderId = params['OrderId']
          unless params['AndroidResult'].nil?
            @AndroidResult = AndroidResult.new
            @AndroidResult.deserialize(params['AndroidResult'])
          end
          unless params['IOSResult'].nil?
            @IOSResult = IOSResult.new
            @IOSResult.deserialize(params['IOSResult'])
          end
          unless params['SDKResult'].nil?
            @SDKResult = SDKResult.new
            @SDKResult.deserialize(params['SDKResult'])
          end
          unless params['AppletResult'].nil?
            @AppletResult = AppletResult.new
            @AppletResult.deserialize(params['AppletResult'])
          end
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

      # iOS加固信息

      # 	InfoPListUrl  string `json:"InfoPListUrl"`  //info.plist的url，必须保证不用权限校验就可以下载
      # 	InfoPListSize int64  `json:"InfoPListSize"` //info.plist文件的大小
      # 	InfoPListMd5  string `json:"InfoPListMd5"`  //info.plist文件的md5
      # 	BuildType     string `json:"BuildType"`     //release: 需要INFO-PLIST文件，会生成工具部署安装包，并带有license文件，绑定机器；nobind不需要INFO-PLIST文件，不绑定机器
      class IOSInfo < TencentCloud::Common::AbstractModel
        # @param InfoPListUrl: info.plist的url，必须保证不用权限校验就可以下载
        # @type InfoPListUrl: String
        # @param InfoPListSize: info.plist文件的大小
        # @type InfoPListSize: Integer
        # @param InfoPListMd5: info.plist文件的md5
        # @type InfoPListMd5: String
        # @param BuildType: release: 需要INFO-PLIST文件，会生成工具部署安装包，并带有license文件，绑定机器；nobind不需要INFO-PLIST文件，不绑定机器
        # @type BuildType: String

        attr_accessor :InfoPListUrl, :InfoPListSize, :InfoPListMd5, :BuildType

        def initialize(infoplisturl=nil, infoplistsize=nil, infoplistmd5=nil, buildtype=nil)
          @InfoPListUrl = infoplisturl
          @InfoPListSize = infoplistsize
          @InfoPListMd5 = infoplistmd5
          @BuildType = buildtype
        end

        def deserialize(params)
          @InfoPListUrl = params['InfoPListUrl']
          @InfoPListSize = params['InfoPListSize']
          @InfoPListMd5 = params['InfoPListMd5']
          @BuildType = params['BuildType']
        end
      end

      # 渠道合作IOS源码混淆配置
      class IOSPlan < TencentCloud::Common::AbstractModel
        # @param PlanId: 策略id
        # @type PlanId: Integer

        attr_accessor :PlanId

        def initialize(planid=nil)
          @PlanId = planid
        end

        def deserialize(params)
          @PlanId = params['PlanId']
        end
      end

      # 渠道合作ios源码混淆加固结果
      class IOSResult < TencentCloud::Common::AbstractModel
        # @param ResultId: 加固任务结果Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultId: String
        # @param OpUin: 用户uid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpUin: Integer
        # @param EncryptType: 加固类型，这里为ios
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptType: String
        # @param ResourceId: 资源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param EncryptState: 加固状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptState: Integer
        # @param EncryptErrno: 业务错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptErrno: Integer
        # @param EncryptErrDesc: 业务错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptErrDesc: String
        # @param CreatTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatTime: String
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param CostTime: 消耗时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CostTime: Integer
        # @param EncryptPkgUrl: 加固（混淆）包结果url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptPkgUrl: String

        attr_accessor :ResultId, :OpUin, :EncryptType, :ResourceId, :EncryptState, :EncryptErrno, :EncryptErrDesc, :CreatTime, :StartTime, :EndTime, :CostTime, :EncryptPkgUrl

        def initialize(resultid=nil, opuin=nil, encrypttype=nil, resourceid=nil, encryptstate=nil, encrypterrno=nil, encrypterrdesc=nil, creattime=nil, starttime=nil, endtime=nil, costtime=nil, encryptpkgurl=nil)
          @ResultId = resultid
          @OpUin = opuin
          @EncryptType = encrypttype
          @ResourceId = resourceid
          @EncryptState = encryptstate
          @EncryptErrno = encrypterrno
          @EncryptErrDesc = encrypterrdesc
          @CreatTime = creattime
          @StartTime = starttime
          @EndTime = endtime
          @CostTime = costtime
          @EncryptPkgUrl = encryptpkgurl
        end

        def deserialize(params)
          @ResultId = params['ResultId']
          @OpUin = params['OpUin']
          @EncryptType = params['EncryptType']
          @ResourceId = params['ResourceId']
          @EncryptState = params['EncryptState']
          @EncryptErrno = params['EncryptErrno']
          @EncryptErrDesc = params['EncryptErrDesc']
          @CreatTime = params['CreatTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CostTime = params['CostTime']
          @EncryptPkgUrl = params['EncryptPkgUrl']
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

      # 渠道合作加固订单资源信息
      class Orders < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单号
        # @type OrderId: String
        # @param PlatformType: 平台类型整型值
        # @type PlatformType: Integer
        # @param PlatformTypeDesc: 平台类型描述：  1.android加固   2.ios源码混淆  3.sdk加固  4.applet小程序加固
        # @type PlatformTypeDesc: String
        # @param OrderType: 订单采购类型整型值
        # @type OrderType: Integer
        # @param OrderTypeDesc: 订单采购类型描述： 1-免费试用 2-按年收费 3-按次收费
        # @type OrderTypeDesc: String
        # @param AppPkgName: android包年收费加固的包名
        # @type AppPkgName: String
        # @param ResourceId: 资源号
        # @type ResourceId: String
        # @param ResourceStatus: 资源状态整型值
        # @type ResourceStatus: Integer
        # @param ResourceStatusDesc: 资源状态描述
        # 0-未生效、1-生效中、2-已失效。
        # @type ResourceStatusDesc: String
        # @param TestTimes: 订单类型为免费试用时的免费加固次数。
        # @type TestTimes: Integer
        # @param ValidTime: 资源生效时间
        # @type ValidTime: String
        # @param ExpireTime: 资源过期时间
        # @type ExpireTime: String
        # @param CreateTime: 资源创建时间
        # @type CreateTime: String
        # @param Approver: 订单审批人
        # @type Approver: String
        # @param ApprovalStatus: 订单审批状态整型值
        # @type ApprovalStatus: Integer
        # @param ApprovalStatusDesc: 订单审批状态整型值描述：0-未审批、1-审批通过、2-驳回。
        # @type ApprovalStatusDesc: String
        # @param ApprovalTime: 订单审批时间
        # @type ApprovalTime: String
        # @param TimesTaskTotalCount: 按次收费加固资源，其关联的总任务数
        # @type TimesTaskTotalCount: Integer
        # @param TimesTaskSuccessCount: 按次收费加固资源，其关联的任务成功数
        # @type TimesTaskSuccessCount: Integer
        # @param TimesTaskFailCount: 按次收费加固资源，其关联的任务失败数
        # @type TimesTaskFailCount: Integer

        attr_accessor :OrderId, :PlatformType, :PlatformTypeDesc, :OrderType, :OrderTypeDesc, :AppPkgName, :ResourceId, :ResourceStatus, :ResourceStatusDesc, :TestTimes, :ValidTime, :ExpireTime, :CreateTime, :Approver, :ApprovalStatus, :ApprovalStatusDesc, :ApprovalTime, :TimesTaskTotalCount, :TimesTaskSuccessCount, :TimesTaskFailCount

        def initialize(orderid=nil, platformtype=nil, platformtypedesc=nil, ordertype=nil, ordertypedesc=nil, apppkgname=nil, resourceid=nil, resourcestatus=nil, resourcestatusdesc=nil, testtimes=nil, validtime=nil, expiretime=nil, createtime=nil, approver=nil, approvalstatus=nil, approvalstatusdesc=nil, approvaltime=nil, timestasktotalcount=nil, timestasksuccesscount=nil, timestaskfailcount=nil)
          @OrderId = orderid
          @PlatformType = platformtype
          @PlatformTypeDesc = platformtypedesc
          @OrderType = ordertype
          @OrderTypeDesc = ordertypedesc
          @AppPkgName = apppkgname
          @ResourceId = resourceid
          @ResourceStatus = resourcestatus
          @ResourceStatusDesc = resourcestatusdesc
          @TestTimes = testtimes
          @ValidTime = validtime
          @ExpireTime = expiretime
          @CreateTime = createtime
          @Approver = approver
          @ApprovalStatus = approvalstatus
          @ApprovalStatusDesc = approvalstatusdesc
          @ApprovalTime = approvaltime
          @TimesTaskTotalCount = timestasktotalcount
          @TimesTaskSuccessCount = timestasksuccesscount
          @TimesTaskFailCount = timestaskfailcount
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @PlatformType = params['PlatformType']
          @PlatformTypeDesc = params['PlatformTypeDesc']
          @OrderType = params['OrderType']
          @OrderTypeDesc = params['OrderTypeDesc']
          @AppPkgName = params['AppPkgName']
          @ResourceId = params['ResourceId']
          @ResourceStatus = params['ResourceStatus']
          @ResourceStatusDesc = params['ResourceStatusDesc']
          @TestTimes = params['TestTimes']
          @ValidTime = params['ValidTime']
          @ExpireTime = params['ExpireTime']
          @CreateTime = params['CreateTime']
          @Approver = params['Approver']
          @ApprovalStatus = params['ApprovalStatus']
          @ApprovalStatusDesc = params['ApprovalStatusDesc']
          @ApprovalTime = params['ApprovalTime']
          @TimesTaskTotalCount = params['TimesTaskTotalCount']
          @TimesTaskSuccessCount = params['TimesTaskSuccessCount']
          @TimesTaskFailCount = params['TimesTaskFailCount']
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
        # @param SetFile: Dex分离，0关闭，1开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SetFile: String
        # @param FileSign: Dex签名校验，0关闭，1开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSign: String
        # @param AntiRoot: root检测，0关闭，1开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AntiRoot: String

        attr_accessor :ApkSizeOpt, :Dex, :So, :Bugly, :AntiRepack, :SeperateDex, :Db, :DexSig, :SoInfo, :AntiVMP, :SoType, :AntiLogLeak, :AntiQemuRoot, :AntiAssets, :AntiScreenshot, :AntiSSL, :SetFile, :FileSign, :AntiRoot
        extend Gem::Deprecate
        deprecate :SeperateDex, :none, 2024, 6
        deprecate :SeperateDex=, :none, 2024, 6
        deprecate :DexSig, :none, 2024, 6
        deprecate :DexSig=, :none, 2024, 6
        deprecate :AntiQemuRoot, :none, 2024, 6
        deprecate :AntiQemuRoot=, :none, 2024, 6

        def initialize(apksizeopt=nil, dex=nil, so=nil, bugly=nil, antirepack=nil, seperatedex=nil, db=nil, dexsig=nil, soinfo=nil, antivmp=nil, sotype=nil, antilogleak=nil, antiqemuroot=nil, antiassets=nil, antiscreenshot=nil, antissl=nil, setfile=nil, filesign=nil, antiroot=nil)
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
          @SetFile = setfile
          @FileSign = filesign
          @AntiRoot = antiroot
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
          @SetFile = params['SetFile']
          @FileSign = params['FileSign']
          @AntiRoot = params['AntiRoot']
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

      # RequestLocalTask请求参数结构体
      class RequestLocalTaskRequest < TencentCloud::Common::AbstractModel
        # @param ClientId: Client Id
        # @type ClientId: String

        attr_accessor :ClientId

        def initialize(clientid=nil)
          @ClientId = clientid
        end

        def deserialize(params)
          @ClientId = params['ClientId']
        end
      end

      # RequestLocalTask返回参数结构体
      class RequestLocalTaskResponse < TencentCloud::Common::AbstractModel
        # @param Sid: 返回的任务id
        # @type Sid: String
        # @param SrcFileMd5: 任务文件的mk5
        # @type SrcFileMd5: String
        # @param SrcFileSize: 文件大小，可不传
        # @type SrcFileSize: Integer
        # @param SrcFileUrl: 任务文件的下载地址，必须无鉴权可下载
        # @type SrcFileUrl: String
        # @param SrcFileType: release: 需要INFO-PLIST文件，会生成工具部署安装包，并带有license文件，绑定机器；nobind不需要INFO-PLIST文件，不绑定机器
        # @type SrcFileType: String
        # @param SrcFileVersion: enterprise
        # trial
        # @type SrcFileVersion: String
        # @param EncryptParam: 补充字段
        # @type EncryptParam: String
        # @param EncryptState: 任务状态
        # @type EncryptState: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Sid, :SrcFileMd5, :SrcFileSize, :SrcFileUrl, :SrcFileType, :SrcFileVersion, :EncryptParam, :EncryptState, :RequestId

        def initialize(sid=nil, srcfilemd5=nil, srcfilesize=nil, srcfileurl=nil, srcfiletype=nil, srcfileversion=nil, encryptparam=nil, encryptstate=nil, requestid=nil)
          @Sid = sid
          @SrcFileMd5 = srcfilemd5
          @SrcFileSize = srcfilesize
          @SrcFileUrl = srcfileurl
          @SrcFileType = srcfiletype
          @SrcFileVersion = srcfileversion
          @EncryptParam = encryptparam
          @EncryptState = encryptstate
          @RequestId = requestid
        end

        def deserialize(params)
          @Sid = params['Sid']
          @SrcFileMd5 = params['SrcFileMd5']
          @SrcFileSize = params['SrcFileSize']
          @SrcFileUrl = params['SrcFileUrl']
          @SrcFileType = params['SrcFileType']
          @SrcFileVersion = params['SrcFileVersion']
          @EncryptParam = params['EncryptParam']
          @EncryptState = params['EncryptState']
          @RequestId = params['RequestId']
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

      # 渠道合作sdk加固策略配置
      class SDKPlan < TencentCloud::Common::AbstractModel
        # @param PlanId: 策略id
        # @type PlanId: Integer

        attr_accessor :PlanId

        def initialize(planid=nil)
          @PlanId = planid
        end

        def deserialize(params)
          @PlanId = params['PlanId']
        end
      end

      # 渠道合作加固sdk加固结果
      class SDKResult < TencentCloud::Common::AbstractModel
        # @param ResultId: 加固任务结果Id
        # @type ResultId: String

        attr_accessor :ResultId

        def initialize(resultid=nil)
          @ResultId = resultid
        end

        def deserialize(params)
          @ResultId = params['ResultId']
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

      # UpdateClientState请求参数结构体
      class UpdateClientStateRequest < TencentCloud::Common::AbstractModel
        # @param ClientId: Client Id
        # @type ClientId: String
        # @param Ip: Ip addr
        # @type Ip: String
        # @param Internal: 内部分组
        # @type Internal: Integer
        # @param ServerVersion: Client  Version
        # @type ServerVersion: String
        # @param Hostname: 主机
        # @type Hostname: String
        # @param Os: 系统
        # @type Os: String

        attr_accessor :ClientId, :Ip, :Internal, :ServerVersion, :Hostname, :Os

        def initialize(clientid=nil, ip=nil, internal=nil, serverversion=nil, hostname=nil, os=nil)
          @ClientId = clientid
          @Ip = ip
          @Internal = internal
          @ServerVersion = serverversion
          @Hostname = hostname
          @Os = os
        end

        def deserialize(params)
          @ClientId = params['ClientId']
          @Ip = params['Ip']
          @Internal = params['Internal']
          @ServerVersion = params['ServerVersion']
          @Hostname = params['Hostname']
          @Os = params['Os']
        end
      end

      # UpdateClientState返回参数结构体
      class UpdateClientStateResponse < TencentCloud::Common::AbstractModel
        # @param ResultCode: 返回值
        # @type ResultCode: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultCode, :RequestId

        def initialize(resultcode=nil, requestid=nil)
          @ResultCode = resultcode
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultCode = params['ResultCode']
          @RequestId = params['RequestId']
        end
      end

      # UpdateLocalTaskResult请求参数结构体
      class UpdateLocalTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param Sid: 任务id
        # @type Sid: String
        # @param ResultCode: 一级任务code。标记任务状态
        # @type ResultCode: Integer
        # @param SubCode: 二级错误码
        # @type SubCode: Integer
        # @param ErrMsg: 二级错误信息
        # @type ErrMsg: String
        # @param Result: 结果
        # @type Result: String

        attr_accessor :Sid, :ResultCode, :SubCode, :ErrMsg, :Result

        def initialize(sid=nil, resultcode=nil, subcode=nil, errmsg=nil, result=nil)
          @Sid = sid
          @ResultCode = resultcode
          @SubCode = subcode
          @ErrMsg = errmsg
          @Result = result
        end

        def deserialize(params)
          @Sid = params['Sid']
          @ResultCode = params['ResultCode']
          @SubCode = params['SubCode']
          @ErrMsg = params['ErrMsg']
          @Result = params['Result']
        end
      end

      # UpdateLocalTaskResult返回参数结构体
      class UpdateLocalTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param ResultCode: 标记成功
        # @type ResultCode: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultCode, :RequestId

        def initialize(resultcode=nil, requestid=nil)
          @ResultCode = resultcode
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultCode = params['ResultCode']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

