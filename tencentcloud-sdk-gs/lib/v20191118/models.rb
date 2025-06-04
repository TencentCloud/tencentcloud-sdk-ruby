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
  module Gs
    module V20191118
      # 安卓应用
      class AndroidApp < TencentCloud::Common::AbstractModel
        # @param AndroidAppId: 安卓应用 Id
        # @type AndroidAppId: String
        # @param Name: 安卓应用名称
        # @type Name: String
        # @param State: 安卓应用状态（上架、下架）
        # @type State: String
        # @param AndroidAppVersionInfo: 安卓应用版本列表
        # @type AndroidAppVersionInfo: Array
        # @param CreateTime: 安卓应用创建时间
        # @type CreateTime: String
        # @param UserId: 用户 Id
        # @type UserId: String
        # @param AppMode: 应用模式（NORMAL : 普通模式；ADVANCED : 高级模式）
        # @type AppMode: String

        attr_accessor :AndroidAppId, :Name, :State, :AndroidAppVersionInfo, :CreateTime, :UserId, :AppMode

        def initialize(androidappid=nil, name=nil, state=nil, androidappversioninfo=nil, createtime=nil, userid=nil, appmode=nil)
          @AndroidAppId = androidappid
          @Name = name
          @State = state
          @AndroidAppVersionInfo = androidappversioninfo
          @CreateTime = createtime
          @UserId = userid
          @AppMode = appmode
        end

        def deserialize(params)
          @AndroidAppId = params['AndroidAppId']
          @Name = params['Name']
          @State = params['State']
          unless params['AndroidAppVersionInfo'].nil?
            @AndroidAppVersionInfo = []
            params['AndroidAppVersionInfo'].each do |i|
              androidappversioninfo_tmp = AndroidAppVersionInfo.new
              androidappversioninfo_tmp.deserialize(i)
              @AndroidAppVersionInfo << androidappversioninfo_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UserId = params['UserId']
          @AppMode = params['AppMode']
        end
      end

      # 安卓应用Cos数据
      class AndroidAppCosInfo < TencentCloud::Common::AbstractModel
        # @param AndroidAppId: 安卓应用ID
        # @type AndroidAppId: String
        # @param FileName: 应用名称（支持 apk 和 tgz 两种格式文件，当应用 AppMode 为 NORMAL 时，只支持上传 apk 类型文件，当应用 AppMode 为 ADVANCED 高级模式时，只支持上传  tgz 类型文件）
        # @type FileName: String

        attr_accessor :AndroidAppId, :FileName

        def initialize(androidappid=nil, filename=nil)
          @AndroidAppId = androidappid
          @FileName = filename
        end

        def deserialize(params)
          @AndroidAppId = params['AndroidAppId']
          @FileName = params['FileName']
        end
      end

      # 安卓应用版本信息
      class AndroidAppVersionInfo < TencentCloud::Common::AbstractModel
        # @param AndroidAppVersion: 安卓应用版本
        # @type AndroidAppVersion: String
        # @param State: 安卓应用版本创建状态（NORMAL：无、UPLOADING：上传中、
        # CREATING： 创建中、
        # CREATE_FAIL：创建失败、CREATE_SUCCESS：创建成功）
        # @type State: String
        # @param CreateTime: 安卓应用版本创建时间
        # @type CreateTime: String
        # @param Command: shell 安装命令（支持多条命令执行，通过 && 组合；只在应用 AppMode 为 ADVANCED 高级模式下 才会生效）
        # @type Command: String
        # @param UninstallCommand: shell 卸载命令（支持多条命令执行，通过 && 组合；只在应用 AppMode 为 ADVANCED 高级模式下 才会生效）
        # @type UninstallCommand: String
        # @param CleanupMode: 应用资源清理模式（实例安装应用所用资源），取值：CLEANUP_ON_UNINSTALL（默认值），卸载 App 时清理；CLEANUP_AFTER_INSTALL，安装 App 后立即清理。普通应用只有 CLEANUP_AFTER_INSTALL 模式。
        # @type CleanupMode: String

        attr_accessor :AndroidAppVersion, :State, :CreateTime, :Command, :UninstallCommand, :CleanupMode

        def initialize(androidappversion=nil, state=nil, createtime=nil, command=nil, uninstallcommand=nil, cleanupmode=nil)
          @AndroidAppVersion = androidappversion
          @State = state
          @CreateTime = createtime
          @Command = command
          @UninstallCommand = uninstallcommand
          @CleanupMode = cleanupmode
        end

        def deserialize(params)
          @AndroidAppVersion = params['AndroidAppVersion']
          @State = params['State']
          @CreateTime = params['CreateTime']
          @Command = params['Command']
          @UninstallCommand = params['UninstallCommand']
          @CleanupMode = params['CleanupMode']
        end
      end

      # 安卓实例信息
      class AndroidInstance < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceId: 实例 ID
        # @type AndroidInstanceId: String
        # @param AndroidInstanceRegion: 实例所在区域
        # @type AndroidInstanceRegion: String
        # @param AndroidInstanceZone: 实例可用区
        # @type AndroidInstanceZone: String
        # @param State: 实例状态：INITIALIZING，NORMAL，PROCESSING
        # @type State: String
        # @param AndroidInstanceType: 实例规格
        # @type AndroidInstanceType: String
        # @param AndroidInstanceImageId: 实例镜像 ID
        # @type AndroidInstanceImageId: String
        # @param Width: 分辨率宽度
        # @type Width: Integer
        # @param Height: 分辨率高度
        # @type Height: Integer
        # @param HostSerialNumber: 宿主机 ID
        # @type HostSerialNumber: String
        # @param AndroidInstanceGroupId: 分组 ID
        # @type AndroidInstanceGroupId: String
        # @param AndroidInstanceLabels: 标签列表
        # @type AndroidInstanceLabels: Array
        # @param Name: 名称
        # @type Name: String
        # @param UserId: 用户ID
        # @type UserId: String
        # @param PrivateIP: 内网 IP
        # @type PrivateIP: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param HostServerSerialNumber: 机箱 ID
        # @type HostServerSerialNumber: String

        attr_accessor :AndroidInstanceId, :AndroidInstanceRegion, :AndroidInstanceZone, :State, :AndroidInstanceType, :AndroidInstanceImageId, :Width, :Height, :HostSerialNumber, :AndroidInstanceGroupId, :AndroidInstanceLabels, :Name, :UserId, :PrivateIP, :CreateTime, :HostServerSerialNumber

        def initialize(androidinstanceid=nil, androidinstanceregion=nil, androidinstancezone=nil, state=nil, androidinstancetype=nil, androidinstanceimageid=nil, width=nil, height=nil, hostserialnumber=nil, androidinstancegroupid=nil, androidinstancelabels=nil, name=nil, userid=nil, privateip=nil, createtime=nil, hostserverserialnumber=nil)
          @AndroidInstanceId = androidinstanceid
          @AndroidInstanceRegion = androidinstanceregion
          @AndroidInstanceZone = androidinstancezone
          @State = state
          @AndroidInstanceType = androidinstancetype
          @AndroidInstanceImageId = androidinstanceimageid
          @Width = width
          @Height = height
          @HostSerialNumber = hostserialnumber
          @AndroidInstanceGroupId = androidinstancegroupid
          @AndroidInstanceLabels = androidinstancelabels
          @Name = name
          @UserId = userid
          @PrivateIP = privateip
          @CreateTime = createtime
          @HostServerSerialNumber = hostserverserialnumber
        end

        def deserialize(params)
          @AndroidInstanceId = params['AndroidInstanceId']
          @AndroidInstanceRegion = params['AndroidInstanceRegion']
          @AndroidInstanceZone = params['AndroidInstanceZone']
          @State = params['State']
          @AndroidInstanceType = params['AndroidInstanceType']
          @AndroidInstanceImageId = params['AndroidInstanceImageId']
          @Width = params['Width']
          @Height = params['Height']
          @HostSerialNumber = params['HostSerialNumber']
          @AndroidInstanceGroupId = params['AndroidInstanceGroupId']
          unless params['AndroidInstanceLabels'].nil?
            @AndroidInstanceLabels = []
            params['AndroidInstanceLabels'].each do |i|
              androidinstancelabel_tmp = AndroidInstanceLabel.new
              androidinstancelabel_tmp.deserialize(i)
              @AndroidInstanceLabels << androidinstancelabel_tmp
            end
          end
          @Name = params['Name']
          @UserId = params['UserId']
          @PrivateIP = params['PrivateIP']
          @CreateTime = params['CreateTime']
          @HostServerSerialNumber = params['HostServerSerialNumber']
        end
      end

      # 安卓实例应用信息
      class AndroidInstanceAppInfo < TencentCloud::Common::AbstractModel
        # @param AndroidAppId: 应用id
        # @type AndroidAppId: String
        # @param Name: 应用名称
        # @type Name: String
        # @param AndroidAppVersion: 应用版本
        # @type AndroidAppVersion: String
        # @param PackageName: 应用包名
        # @type PackageName: String
        # @param PackageVersion: 应用包版本
        # @type PackageVersion: String
        # @param PackageLabel: 应用包标签
        # @type PackageLabel: String

        attr_accessor :AndroidAppId, :Name, :AndroidAppVersion, :PackageName, :PackageVersion, :PackageLabel

        def initialize(androidappid=nil, name=nil, androidappversion=nil, packagename=nil, packageversion=nil, packagelabel=nil)
          @AndroidAppId = androidappid
          @Name = name
          @AndroidAppVersion = androidappversion
          @PackageName = packagename
          @PackageVersion = packageversion
          @PackageLabel = packagelabel
        end

        def deserialize(params)
          @AndroidAppId = params['AndroidAppId']
          @Name = params['Name']
          @AndroidAppVersion = params['AndroidAppVersion']
          @PackageName = params['PackageName']
          @PackageVersion = params['PackageVersion']
          @PackageLabel = params['PackageLabel']
        end
      end

      # 安卓实例设备信息
      class AndroidInstanceDevice < TencentCloud::Common::AbstractModel
        # @param Brand: 品牌
        # @type Brand: String
        # @param Model: 型号
        # @type Model: String

        attr_accessor :Brand, :Model

        def initialize(brand=nil, model=nil)
          @Brand = brand
          @Model = model
        end

        def deserialize(params)
          @Brand = params['Brand']
          @Model = params['Model']
        end
      end

      # 安卓实例镜像信息
      class AndroidInstanceImage < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceImageId: 镜像 ID
        # @type AndroidInstanceImageId: String
        # @param AndroidInstanceImageName: 镜像名称，由业务方自定义，仅用于展示
        # @type AndroidInstanceImageName: String
        # @param AndroidInstanceImageState: 镜像状态
        # @type AndroidInstanceImageState: String
        # @param AndroidInstanceImageZone: 镜像可用区
        # @type AndroidInstanceImageZone: String

        attr_accessor :AndroidInstanceImageId, :AndroidInstanceImageName, :AndroidInstanceImageState, :AndroidInstanceImageZone

        def initialize(androidinstanceimageid=nil, androidinstanceimagename=nil, androidinstanceimagestate=nil, androidinstanceimagezone=nil)
          @AndroidInstanceImageId = androidinstanceimageid
          @AndroidInstanceImageName = androidinstanceimagename
          @AndroidInstanceImageState = androidinstanceimagestate
          @AndroidInstanceImageZone = androidinstanceimagezone
        end

        def deserialize(params)
          @AndroidInstanceImageId = params['AndroidInstanceImageId']
          @AndroidInstanceImageName = params['AndroidInstanceImageName']
          @AndroidInstanceImageState = params['AndroidInstanceImageState']
          @AndroidInstanceImageZone = params['AndroidInstanceImageZone']
        end
      end

      # 安卓实例信息
      class AndroidInstanceInformation < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceId: 安卓实例 ID
        # @type AndroidInstanceId: String
        # @param Name: 实例名称
        # @type Name: String

        attr_accessor :AndroidInstanceId, :Name

        def initialize(androidinstanceid=nil, name=nil)
          @AndroidInstanceId = androidinstanceid
          @Name = name
        end

        def deserialize(params)
          @AndroidInstanceId = params['AndroidInstanceId']
          @Name = params['Name']
        end
      end

      # 安卓实例标签
      class AndroidInstanceLabel < TencentCloud::Common::AbstractModel
        # @param Key: 标签键
        # @type Key: String
        # @param Value: 标签值
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

      # 安卓实例属性
      class AndroidInstanceProperty < TencentCloud::Common::AbstractModel
        # @param Key: 属性键
        # @type Key: String
        # @param Value: 属性值
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

      # 安卓实例任务信息
      class AndroidInstanceTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param AndroidInstanceId: 实例ID
        # @type AndroidInstanceId: String

        attr_accessor :TaskId, :AndroidInstanceId

        def initialize(taskid=nil, androidinstanceid=nil)
          @TaskId = taskid
          @AndroidInstanceId = androidinstanceid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @AndroidInstanceId = params['AndroidInstanceId']
        end
      end

      # 安卓实例任务状态信息
      class AndroidInstanceTaskStatus < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param Status: 任务状态：SUCCESS，FAILED，PROCESSING，PENDING,CANCELED
        # @type Status: String
        # @param AndroidInstanceId: 实例ID
        # @type AndroidInstanceId: String
        # @param TaskResult: 任务执行结果描述，针对某些任务，可以是可解析的 json
        # @type TaskResult: String
        # @param TaskType: 任务类型
        # @type TaskType: String
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param CompleteTime: 任务完成时间
        # @type CompleteTime: String

        attr_accessor :TaskId, :Status, :AndroidInstanceId, :TaskResult, :TaskType, :CreateTime, :CompleteTime

        def initialize(taskid=nil, status=nil, androidinstanceid=nil, taskresult=nil, tasktype=nil, createtime=nil, completetime=nil)
          @TaskId = taskid
          @Status = status
          @AndroidInstanceId = androidinstanceid
          @TaskResult = taskresult
          @TaskType = tasktype
          @CreateTime = createtime
          @CompleteTime = completetime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @AndroidInstanceId = params['AndroidInstanceId']
          @TaskResult = params['TaskResult']
          @TaskType = params['TaskType']
          @CreateTime = params['CreateTime']
          @CompleteTime = params['CompleteTime']
        end
      end

      # 安卓实例上传文件信息
      class AndroidInstanceUploadFile < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceId: 安卓实例 ID
        # @type AndroidInstanceId: String
        # @param FileURL: 文件上传 URL
        # @type FileURL: String
        # @param DestinationDirectory: 上传目标目录，只能上传到 /sdcard/ 目录或其子目录下
        # @type DestinationDirectory: String

        attr_accessor :AndroidInstanceId, :FileURL, :DestinationDirectory

        def initialize(androidinstanceid=nil, fileurl=nil, destinationdirectory=nil)
          @AndroidInstanceId = androidinstanceid
          @FileURL = fileurl
          @DestinationDirectory = destinationdirectory
        end

        def deserialize(params)
          @AndroidInstanceId = params['AndroidInstanceId']
          @FileURL = params['FileURL']
          @DestinationDirectory = params['DestinationDirectory']
        end
      end

      # BackUpAndroidInstanceToStorage请求参数结构体
      class BackUpAndroidInstanceToStorageRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceId: 安卓实例ID
        # @type AndroidInstanceId: String
        # @param StorageType: 存储服务器类型，如 COS、S3。注意：使用 COS 和 S3 都将占用外网带宽。
        # @type StorageType: String
        # @param ObjectKey: 自定义对象Key
        # @type ObjectKey: String
        # @param Includes: 包含的路径，支持仅含一个通配符*，通配符不能出现在路径开始
        # @type Includes: Array
        # @param Excludes: 需要排除路径，支持仅含一个通配符*，通配符不能出现在路径开始
        # @type Excludes: Array
        # @param COSOptions: COS协议选项
        # @type COSOptions: :class:`Tencentcloud::Gs.v20191118.models.COSOptions`
        # @param S3Options: S3存储协议选项
        # @type S3Options: :class:`Tencentcloud::Gs.v20191118.models.S3Options`

        attr_accessor :AndroidInstanceId, :StorageType, :ObjectKey, :Includes, :Excludes, :COSOptions, :S3Options

        def initialize(androidinstanceid=nil, storagetype=nil, objectkey=nil, includes=nil, excludes=nil, cosoptions=nil, s3options=nil)
          @AndroidInstanceId = androidinstanceid
          @StorageType = storagetype
          @ObjectKey = objectkey
          @Includes = includes
          @Excludes = excludes
          @COSOptions = cosoptions
          @S3Options = s3options
        end

        def deserialize(params)
          @AndroidInstanceId = params['AndroidInstanceId']
          @StorageType = params['StorageType']
          @ObjectKey = params['ObjectKey']
          @Includes = params['Includes']
          @Excludes = params['Excludes']
          unless params['COSOptions'].nil?
            @COSOptions = COSOptions.new
            @COSOptions.deserialize(params['COSOptions'])
          end
          unless params['S3Options'].nil?
            @S3Options = S3Options.new
            @S3Options.deserialize(params['S3Options'])
          end
        end
      end

      # BackUpAndroidInstanceToStorage返回参数结构体
      class BackUpAndroidInstanceToStorageResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 实例任务 ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # COS协议参数
      class COSOptions < TencentCloud::Common::AbstractModel
        # @param Bucket: 存储桶
        # @type Bucket: String
        # @param Region: 存储区域
        # @type Region: String

        attr_accessor :Bucket, :Region

        def initialize(bucket=nil, region=nil)
          @Bucket = bucket
          @Region = region
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @Region = params['Region']
        end
      end

      # ConnectAndroidInstance请求参数结构体
      class ConnectAndroidInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ClientSession: 用户Session信息
        # @type ClientSession: String
        # @param AndroidInstanceId: 实例ID
        # @type AndroidInstanceId: String
        # @param UserIp: 用户IP，用户客户端的公网IP，用于选择最佳网络链路
        # @type UserIp: String

        attr_accessor :ClientSession, :AndroidInstanceId, :UserIp

        def initialize(clientsession=nil, androidinstanceid=nil, userip=nil)
          @ClientSession = clientsession
          @AndroidInstanceId = androidinstanceid
          @UserIp = userip
        end

        def deserialize(params)
          @ClientSession = params['ClientSession']
          @AndroidInstanceId = params['AndroidInstanceId']
          @UserIp = params['UserIp']
        end
      end

      # ConnectAndroidInstance返回参数结构体
      class ConnectAndroidInstanceResponse < TencentCloud::Common::AbstractModel
        # @param ServerSession: 服务端session信息
        # @type ServerSession: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServerSession, :RequestId

        def initialize(serversession=nil, requestid=nil)
          @ServerSession = serversession
          @RequestId = requestid
        end

        def deserialize(params)
          @ServerSession = params['ServerSession']
          @RequestId = params['RequestId']
        end
      end

      # CopyAndroidInstance请求参数结构体
      class CopyAndroidInstanceRequest < TencentCloud::Common::AbstractModel
        # @param SourceAndroidInstanceId: 源安卓实例 ID
        # @type SourceAndroidInstanceId: String
        # @param TargetAndroidInstanceId: 目的安卓实例 ID
        # @type TargetAndroidInstanceId: String
        # @param Includes: 包含的路径，支持仅含一个通配符*，通配符不能出现在路径开始
        # @type Includes: Array
        # @param Excludes: 需要排除路径，支持仅含一个通配符*，通配符不能出现在路径开始
        # @type Excludes: Array

        attr_accessor :SourceAndroidInstanceId, :TargetAndroidInstanceId, :Includes, :Excludes

        def initialize(sourceandroidinstanceid=nil, targetandroidinstanceid=nil, includes=nil, excludes=nil)
          @SourceAndroidInstanceId = sourceandroidinstanceid
          @TargetAndroidInstanceId = targetandroidinstanceid
          @Includes = includes
          @Excludes = excludes
        end

        def deserialize(params)
          @SourceAndroidInstanceId = params['SourceAndroidInstanceId']
          @TargetAndroidInstanceId = params['TargetAndroidInstanceId']
          @Includes = params['Includes']
          @Excludes = params['Excludes']
        end
      end

      # CopyAndroidInstance返回参数结构体
      class CopyAndroidInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAndroidApp请求参数结构体
      class CreateAndroidAppRequest < TencentCloud::Common::AbstractModel
        # @param Name: 安卓应用名字
        # @type Name: String
        # @param UserId: 用户 Id
        # @type UserId: String
        # @param AppMode: 应用模式（NORMAL : 普通模式、只支持 apk 文件上传，为默认值；ADVANCED : 高级模式、只支持上传 tgz 文件 和 自定义 shell 命令执行）
        # @type AppMode: String

        attr_accessor :Name, :UserId, :AppMode

        def initialize(name=nil, userid=nil, appmode=nil)
          @Name = name
          @UserId = userid
          @AppMode = appmode
        end

        def deserialize(params)
          @Name = params['Name']
          @UserId = params['UserId']
          @AppMode = params['AppMode']
        end
      end

      # CreateAndroidApp返回参数结构体
      class CreateAndroidAppResponse < TencentCloud::Common::AbstractModel
        # @param AndroidAppId: 应用ID
        # @type AndroidAppId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AndroidAppId, :RequestId

        def initialize(androidappid=nil, requestid=nil)
          @AndroidAppId = androidappid
          @RequestId = requestid
        end

        def deserialize(params)
          @AndroidAppId = params['AndroidAppId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAndroidAppVersion请求参数结构体
      class CreateAndroidAppVersionRequest < TencentCloud::Common::AbstractModel
        # @param AndroidAppId: 应用ID
        # @type AndroidAppId: String
        # @param DownloadUrl: 应用包下载地址
        # @type DownloadUrl: String
        # @param Command: 应用 shell 安装命令（支持多条命令执行，通过 && 组合；只在应用 AppMode 为 ADVANCED 高级模式下 才会生效）
        # @type Command: String
        # @param UninstallCommand: 应用 shell 卸载命令（支持多条命令执行，通过 && 组合；只在应用 AppMode 为 ADVANCED 高级模式下 才会生效）
        # @type UninstallCommand: String
        # @param CleanupMode: 应用资源清理模式（实例安装应用所用资源），取值：CLEANUP_ON_UNINSTALL（默认值），卸载 App 时清理；CLEANUP_AFTER_INSTALL，安装 App 后立即清理。普通应用只有 CLEANUP_AFTER_INSTALL 模式。
        # @type CleanupMode: String

        attr_accessor :AndroidAppId, :DownloadUrl, :Command, :UninstallCommand, :CleanupMode

        def initialize(androidappid=nil, downloadurl=nil, command=nil, uninstallcommand=nil, cleanupmode=nil)
          @AndroidAppId = androidappid
          @DownloadUrl = downloadurl
          @Command = command
          @UninstallCommand = uninstallcommand
          @CleanupMode = cleanupmode
        end

        def deserialize(params)
          @AndroidAppId = params['AndroidAppId']
          @DownloadUrl = params['DownloadUrl']
          @Command = params['Command']
          @UninstallCommand = params['UninstallCommand']
          @CleanupMode = params['CleanupMode']
        end
      end

      # CreateAndroidAppVersion返回参数结构体
      class CreateAndroidAppVersionResponse < TencentCloud::Common::AbstractModel
        # @param AndroidAppVersion: 应用版本
        # @type AndroidAppVersion: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AndroidAppVersion, :RequestId

        def initialize(androidappversion=nil, requestid=nil)
          @AndroidAppVersion = androidappversion
          @RequestId = requestid
        end

        def deserialize(params)
          @AndroidAppVersion = params['AndroidAppVersion']
          @RequestId = params['RequestId']
        end
      end

      # CreateAndroidInstanceADB请求参数结构体
      class CreateAndroidInstanceADBRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceId: 安卓实例 ID
        # @type AndroidInstanceId: String

        attr_accessor :AndroidInstanceId

        def initialize(androidinstanceid=nil)
          @AndroidInstanceId = androidinstanceid
        end

        def deserialize(params)
          @AndroidInstanceId = params['AndroidInstanceId']
        end
      end

      # CreateAndroidInstanceADB返回参数结构体
      class CreateAndroidInstanceADBResponse < TencentCloud::Common::AbstractModel
        # @param PrivateKey: 连接私钥，需要保存为文件形式，例如 private_key.pem
        # @type PrivateKey: String
        # @param UserName: 用户名称
        # @type UserName: String
        # @param HostName: 连接地址
        # @type HostName: String
        # @param Port: 连接端口
        # @type Port: Integer
        # @param ConnectCommand: 连接参考命令
        # @type ConnectCommand: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PrivateKey, :UserName, :HostName, :Port, :ConnectCommand, :RequestId

        def initialize(privatekey=nil, username=nil, hostname=nil, port=nil, connectcommand=nil, requestid=nil)
          @PrivateKey = privatekey
          @UserName = username
          @HostName = hostname
          @Port = port
          @ConnectCommand = connectcommand
          @RequestId = requestid
        end

        def deserialize(params)
          @PrivateKey = params['PrivateKey']
          @UserName = params['UserName']
          @HostName = params['HostName']
          @Port = params['Port']
          @ConnectCommand = params['ConnectCommand']
          @RequestId = params['RequestId']
        end
      end

      # CreateAndroidInstanceImage请求参数结构体
      class CreateAndroidInstanceImageRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceImageName: 安卓实例镜像名称
        # @type AndroidInstanceImageName: String
        # @param AndroidInstanceId: 安卓实例 ID
        # @type AndroidInstanceId: String

        attr_accessor :AndroidInstanceImageName, :AndroidInstanceId

        def initialize(androidinstanceimagename=nil, androidinstanceid=nil)
          @AndroidInstanceImageName = androidinstanceimagename
          @AndroidInstanceId = androidinstanceid
        end

        def deserialize(params)
          @AndroidInstanceImageName = params['AndroidInstanceImageName']
          @AndroidInstanceId = params['AndroidInstanceId']
        end
      end

      # CreateAndroidInstanceImage返回参数结构体
      class CreateAndroidInstanceImageResponse < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceImageId: 安卓实例镜像 ID
        # @type AndroidInstanceImageId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AndroidInstanceImageId, :RequestId

        def initialize(androidinstanceimageid=nil, requestid=nil)
          @AndroidInstanceImageId = androidinstanceimageid
          @RequestId = requestid
        end

        def deserialize(params)
          @AndroidInstanceImageId = params['AndroidInstanceImageId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAndroidInstanceLabel请求参数结构体
      class CreateAndroidInstanceLabelRequest < TencentCloud::Common::AbstractModel
        # @param Key: 标签键
        # @type Key: String
        # @param Value: 标签值
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

      # CreateAndroidInstanceLabel返回参数结构体
      class CreateAndroidInstanceLabelResponse < TencentCloud::Common::AbstractModel
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

      # CreateAndroidInstanceSSH请求参数结构体
      class CreateAndroidInstanceSSHRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceId: 实例ID
        # @type AndroidInstanceId: String
        # @param ExpiredTime: 连接过期时间，最长可设置7天
        # @type ExpiredTime: String

        attr_accessor :AndroidInstanceId, :ExpiredTime

        def initialize(androidinstanceid=nil, expiredtime=nil)
          @AndroidInstanceId = androidinstanceid
          @ExpiredTime = expiredtime
        end

        def deserialize(params)
          @AndroidInstanceId = params['AndroidInstanceId']
          @ExpiredTime = params['ExpiredTime']
        end
      end

      # CreateAndroidInstanceSSH返回参数结构体
      class CreateAndroidInstanceSSHResponse < TencentCloud::Common::AbstractModel
        # @param PrivateKey: 连接私钥，需要保存为文件形式，例如 private_key.pem
        # @type PrivateKey: String
        # @param UserName: 用户名称
        # @type UserName: String
        # @param HostName: 连接地址
        # @type HostName: String
        # @param Port: 连接端口
        # @type Port: Integer
        # @param ConnectCommand: 连接参考命令
        # @type ConnectCommand: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PrivateKey, :UserName, :HostName, :Port, :ConnectCommand, :RequestId

        def initialize(privatekey=nil, username=nil, hostname=nil, port=nil, connectcommand=nil, requestid=nil)
          @PrivateKey = privatekey
          @UserName = username
          @HostName = hostname
          @Port = port
          @ConnectCommand = connectcommand
          @RequestId = requestid
        end

        def deserialize(params)
          @PrivateKey = params['PrivateKey']
          @UserName = params['UserName']
          @HostName = params['HostName']
          @Port = params['Port']
          @ConnectCommand = params['ConnectCommand']
          @RequestId = params['RequestId']
        end
      end

      # CreateAndroidInstanceWebShell请求参数结构体
      class CreateAndroidInstanceWebShellRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceId: 实例 ID
        # @type AndroidInstanceId: String

        attr_accessor :AndroidInstanceId

        def initialize(androidinstanceid=nil)
          @AndroidInstanceId = androidinstanceid
        end

        def deserialize(params)
          @AndroidInstanceId = params['AndroidInstanceId']
        end
      end

      # CreateAndroidInstanceWebShell返回参数结构体
      class CreateAndroidInstanceWebShellResponse < TencentCloud::Common::AbstractModel
        # @param Key: 鉴权密钥
        # @type Key: String
        # @param Address: 连接地址
        # @type Address: String
        # @param Zone: 连接区域
        # @type Zone: String
        # @param ConnectUrl: 访问链接，可以直接使用此链接访问 WebShell
        # @type ConnectUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Key, :Address, :Zone, :ConnectUrl, :RequestId

        def initialize(key=nil, address=nil, zone=nil, connecturl=nil, requestid=nil)
          @Key = key
          @Address = address
          @Zone = zone
          @ConnectUrl = connecturl
          @RequestId = requestid
        end

        def deserialize(params)
          @Key = params['Key']
          @Address = params['Address']
          @Zone = params['Zone']
          @ConnectUrl = params['ConnectUrl']
          @RequestId = params['RequestId']
        end
      end

      # CreateAndroidInstances请求参数结构体
      class CreateAndroidInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 安卓实例可用区。
        # ap-guangzhou-3：广州三区
        # ap-shenzhen-1：深圳一区
        # ap-xian-ec-1：西安一区
        # ap-hangzhou-ec-1：杭州一区
        # @type Zone: String
        # @param Type: 安卓实例类型。
        # A1：单开
        # A2：双开
        # A3：三开
        # A4：四开
        # A5：五开
        # A6：六开
        # @type Type: String
        # @param Number: 当 HostSerialNumbers 不为空时，该参数表示每个宿主机要创建的安卓实例数量；
        # 当 HostSerialNumbers 为空时，该参数表示要创建安卓实例的总数量，最大值为 100。
        # @type Number: Integer
        # @param HostSerialNumbers: 宿主机 ID 列表。可以指定宿主机 ID 进行创建；也可以不指定由系统自动分配宿主机。
        # @type HostSerialNumbers: Array
        # @param ImageId: 镜像 ID。如果不填，将使用默认的系统镜像
        # @type ImageId: String

        attr_accessor :Zone, :Type, :Number, :HostSerialNumbers, :ImageId

        def initialize(zone=nil, type=nil, number=nil, hostserialnumbers=nil, imageid=nil)
          @Zone = zone
          @Type = type
          @Number = number
          @HostSerialNumbers = hostserialnumbers
          @ImageId = imageid
        end

        def deserialize(params)
          @Zone = params['Zone']
          @Type = params['Type']
          @Number = params['Number']
          @HostSerialNumbers = params['HostSerialNumbers']
          @ImageId = params['ImageId']
        end
      end

      # CreateAndroidInstances返回参数结构体
      class CreateAndroidInstancesResponse < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 安卓实例 ID 列表
        # @type AndroidInstanceIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AndroidInstanceIds, :RequestId

        def initialize(androidinstanceids=nil, requestid=nil)
          @AndroidInstanceIds = androidinstanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateAndroidInstancesScreenshot请求参数结构体
      class CreateAndroidInstancesScreenshotRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 实例 ID 列表
        # @type AndroidInstanceIds: Array

        attr_accessor :AndroidInstanceIds

        def initialize(androidinstanceids=nil)
          @AndroidInstanceIds = androidinstanceids
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
        end
      end

      # CreateAndroidInstancesScreenshot返回参数结构体
      class CreateAndroidInstancesScreenshotResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: 任务列表
        # @type TaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :RequestId

        def initialize(taskset=nil, requestid=nil)
          @TaskSet = taskset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              androidinstancetask_tmp = AndroidInstanceTask.new
              androidinstancetask_tmp.deserialize(i)
              @TaskSet << androidinstancetask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCosCredential请求参数结构体
      class CreateCosCredentialRequest < TencentCloud::Common::AbstractModel
        # @param CosType: Cos 密钥类型， Mobile 移动端, PC 桌面, AndroidApp 安卓应用
        # @type CosType: String
        # @param AndroidAppCosInfo: 云手机 Cos 数据
        # @type AndroidAppCosInfo: :class:`Tencentcloud::Gs.v20191118.models.AndroidAppCosInfo`

        attr_accessor :CosType, :AndroidAppCosInfo

        def initialize(costype=nil, androidappcosinfo=nil)
          @CosType = costype
          @AndroidAppCosInfo = androidappcosinfo
        end

        def deserialize(params)
          @CosType = params['CosType']
          unless params['AndroidAppCosInfo'].nil?
            @AndroidAppCosInfo = AndroidAppCosInfo.new
            @AndroidAppCosInfo.deserialize(params['AndroidAppCosInfo'])
          end
        end
      end

      # CreateCosCredential返回参数结构体
      class CreateCosCredentialResponse < TencentCloud::Common::AbstractModel
        # @param SecretID: Cos SecretID
        # @type SecretID: String
        # @param SecretKey: Cos SecretKey
        # @type SecretKey: String
        # @param SessionToken: Cos Session
        # @type SessionToken: String
        # @param CosBucket: Cos Bucket
        # @type CosBucket: String
        # @param CosRegion: Cos Region
        # @type CosRegion: String
        # @param Path: Cos 操作路径
        # @type Path: String
        # @param StartTime: Cos 密钥的起始时间
        # @type StartTime: Integer
        # @param ExpiredTime: Cos 密钥的失效时间
        # @type ExpiredTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretID, :SecretKey, :SessionToken, :CosBucket, :CosRegion, :Path, :StartTime, :ExpiredTime, :RequestId

        def initialize(secretid=nil, secretkey=nil, sessiontoken=nil, cosbucket=nil, cosregion=nil, path=nil, starttime=nil, expiredtime=nil, requestid=nil)
          @SecretID = secretid
          @SecretKey = secretkey
          @SessionToken = sessiontoken
          @CosBucket = cosbucket
          @CosRegion = cosregion
          @Path = path
          @StartTime = starttime
          @ExpiredTime = expiredtime
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretID = params['SecretID']
          @SecretKey = params['SecretKey']
          @SessionToken = params['SessionToken']
          @CosBucket = params['CosBucket']
          @CosRegion = params['CosRegion']
          @Path = params['Path']
          @StartTime = params['StartTime']
          @ExpiredTime = params['ExpiredTime']
          @RequestId = params['RequestId']
        end
      end

      # CreateSession请求参数结构体
      class CreateSessionRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 唯一用户身份标识，由业务方自定义，平台不予理解。（可根据业务需要决定使用用户的唯一身份标识或是使用时间戳随机生成；在用户重连时应保持UserId不变）
        # @type UserId: String
        # @param GameId: 【已废弃】只在TrylockWorker时生效
        # @type GameId: String
        # @param GameRegion: 【已废弃】只在TrylockWorker时生效
        # @type GameRegion: String
        # @param GameParas: 游戏参数
        # @type GameParas: String
        # @param ClientSession: 客户端session信息，从JSSDK请求中获得。特殊的，当 RunMode 参数为 RunWithoutClient 时，该字段可以为空
        # @type ClientSession: String
        # @param Resolution: 分辨率,，可设置为1080p或720p或1920x1080格式
        # @type Resolution: String
        # @param ImageUrl: 背景图url，格式为png或jpeg，宽高1920*1080
        # @type ImageUrl: String
        # @param SetNo: 【已废弃】
        # @type SetNo: Integer
        # @param Bitrate: 【已废弃】
        # @type Bitrate: Integer
        # @param MaxBitrate: 单位Mbps，动态调整最大码率建议值，会按实际情况调整
        # @type MaxBitrate: Integer
        # @param MinBitrate: 单位Mbps，动态调整最小码率建议值，会按实际情况调整
        # @type MinBitrate: Integer
        # @param Fps: 帧率，可设置为30、45、60、90、120、144
        # @type Fps: Integer
        # @param UserIp: 【必选】用户IP，用户客户端的公网IP，用于就近调度，不填将严重影响用户体验
        # @type UserIp: String
        # @param Optimization: 【已废弃】优化项，便于客户灰度开启新的优化项，默认为0
        # @type Optimization: Integer
        # @param HostUserId: 【互动云游】游戏主机用户ID
        # @type HostUserId: String
        # @param Role: 【互动云游】角色；Player表示玩家；Viewer表示观察者
        # @type Role: String
        # @param GameContext: 游戏相关参数
        # @type GameContext: String
        # @param RunMode: 云端运行模式。
        # RunWithoutClient：允许无客户端连接的情况下仍保持云端 App 运行
        # 默认值（空）：要求必须有客户端连接才会保持云端 App 运行。
        # @type RunMode: String

        attr_accessor :UserId, :GameId, :GameRegion, :GameParas, :ClientSession, :Resolution, :ImageUrl, :SetNo, :Bitrate, :MaxBitrate, :MinBitrate, :Fps, :UserIp, :Optimization, :HostUserId, :Role, :GameContext, :RunMode

        def initialize(userid=nil, gameid=nil, gameregion=nil, gameparas=nil, clientsession=nil, resolution=nil, imageurl=nil, setno=nil, bitrate=nil, maxbitrate=nil, minbitrate=nil, fps=nil, userip=nil, optimization=nil, hostuserid=nil, role=nil, gamecontext=nil, runmode=nil)
          @UserId = userid
          @GameId = gameid
          @GameRegion = gameregion
          @GameParas = gameparas
          @ClientSession = clientsession
          @Resolution = resolution
          @ImageUrl = imageurl
          @SetNo = setno
          @Bitrate = bitrate
          @MaxBitrate = maxbitrate
          @MinBitrate = minbitrate
          @Fps = fps
          @UserIp = userip
          @Optimization = optimization
          @HostUserId = hostuserid
          @Role = role
          @GameContext = gamecontext
          @RunMode = runmode
        end

        def deserialize(params)
          @UserId = params['UserId']
          @GameId = params['GameId']
          @GameRegion = params['GameRegion']
          @GameParas = params['GameParas']
          @ClientSession = params['ClientSession']
          @Resolution = params['Resolution']
          @ImageUrl = params['ImageUrl']
          @SetNo = params['SetNo']
          @Bitrate = params['Bitrate']
          @MaxBitrate = params['MaxBitrate']
          @MinBitrate = params['MinBitrate']
          @Fps = params['Fps']
          @UserIp = params['UserIp']
          @Optimization = params['Optimization']
          @HostUserId = params['HostUserId']
          @Role = params['Role']
          @GameContext = params['GameContext']
          @RunMode = params['RunMode']
        end
      end

      # CreateSession返回参数结构体
      class CreateSessionResponse < TencentCloud::Common::AbstractModel
        # @param ServerSession: 服务端session信息，返回给JSSDK
        # @type ServerSession: String
        # @param RoleNumber: 【已废弃】
        # @type RoleNumber: String
        # @param Role: 【互动云游】角色；Player表示玩家；Viewer表示观察者
        # @type Role: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServerSession, :RoleNumber, :Role, :RequestId

        def initialize(serversession=nil, rolenumber=nil, role=nil, requestid=nil)
          @ServerSession = serversession
          @RoleNumber = rolenumber
          @Role = role
          @RequestId = requestid
        end

        def deserialize(params)
          @ServerSession = params['ServerSession']
          @RoleNumber = params['RoleNumber']
          @Role = params['Role']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAndroidApp请求参数结构体
      class DeleteAndroidAppRequest < TencentCloud::Common::AbstractModel
        # @param AndroidAppId: 应用ID
        # @type AndroidAppId: String

        attr_accessor :AndroidAppId

        def initialize(androidappid=nil)
          @AndroidAppId = androidappid
        end

        def deserialize(params)
          @AndroidAppId = params['AndroidAppId']
        end
      end

      # DeleteAndroidApp返回参数结构体
      class DeleteAndroidAppResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAndroidAppVersion请求参数结构体
      class DeleteAndroidAppVersionRequest < TencentCloud::Common::AbstractModel
        # @param AndroidAppId: 安卓应用 Id
        # @type AndroidAppId: String
        # @param AndroidAppVersion: 安卓应用版本
        # @type AndroidAppVersion: String

        attr_accessor :AndroidAppId, :AndroidAppVersion

        def initialize(androidappid=nil, androidappversion=nil)
          @AndroidAppId = androidappid
          @AndroidAppVersion = androidappversion
        end

        def deserialize(params)
          @AndroidAppId = params['AndroidAppId']
          @AndroidAppVersion = params['AndroidAppVersion']
        end
      end

      # DeleteAndroidAppVersion返回参数结构体
      class DeleteAndroidAppVersionResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAndroidInstanceImages请求参数结构体
      class DeleteAndroidInstanceImagesRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceImageIds: 镜像 ID 列表
        # @type AndroidInstanceImageIds: Array

        attr_accessor :AndroidInstanceImageIds

        def initialize(androidinstanceimageids=nil)
          @AndroidInstanceImageIds = androidinstanceimageids
        end

        def deserialize(params)
          @AndroidInstanceImageIds = params['AndroidInstanceImageIds']
        end
      end

      # DeleteAndroidInstanceImages返回参数结构体
      class DeleteAndroidInstanceImagesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAndroidInstanceLabel请求参数结构体
      class DeleteAndroidInstanceLabelRequest < TencentCloud::Common::AbstractModel
        # @param Key: 标签键
        # @type Key: String
        # @param Value: 标签值
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

      # DeleteAndroidInstanceLabel返回参数结构体
      class DeleteAndroidInstanceLabelResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAndroidApps请求参数结构体
      class DescribeAndroidAppsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param Limit: 每页数量
        # @type Limit: Integer
        # @param AndroidAppIds: 应用ID数组
        # @type AndroidAppIds: Array
        # @param Filters: 过滤条件
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :AndroidAppIds, :Filters

        def initialize(offset=nil, limit=nil, androidappids=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @AndroidAppIds = androidappids
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @AndroidAppIds = params['AndroidAppIds']
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

      # DescribeAndroidApps返回参数结构体
      class DescribeAndroidAppsResponse < TencentCloud::Common::AbstractModel
        # @param Apps: 安卓应用列表
        # @type Apps: Array
        # @param TotalCount: 安卓应用列表长度
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Apps, :TotalCount, :RequestId

        def initialize(apps=nil, totalcount=nil, requestid=nil)
          @Apps = apps
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Apps'].nil?
            @Apps = []
            params['Apps'].each do |i|
              androidapp_tmp = AndroidApp.new
              androidapp_tmp.deserialize(i)
              @Apps << androidapp_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAndroidInstanceApps请求参数结构体
      class DescribeAndroidInstanceAppsRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceId: 实例ID
        # @type AndroidInstanceId: String

        attr_accessor :AndroidInstanceId

        def initialize(androidinstanceid=nil)
          @AndroidInstanceId = androidinstanceid
        end

        def deserialize(params)
          @AndroidInstanceId = params['AndroidInstanceId']
        end
      end

      # DescribeAndroidInstanceApps返回参数结构体
      class DescribeAndroidInstanceAppsResponse < TencentCloud::Common::AbstractModel
        # @param Apps: 安卓应用列表
        # @type Apps: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Apps, :RequestId

        def initialize(apps=nil, requestid=nil)
          @Apps = apps
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Apps'].nil?
            @Apps = []
            params['Apps'].each do |i|
              androidinstanceappinfo_tmp = AndroidInstanceAppInfo.new
              androidinstanceappinfo_tmp.deserialize(i)
              @Apps << androidinstanceappinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAndroidInstanceImages请求参数结构体
      class DescribeAndroidInstanceImagesRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceImageIds: 镜像 ID 列表
        # @type AndroidInstanceImageIds: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 限制量，默认为20，最大值为100
        # @type Limit: Integer

        attr_accessor :AndroidInstanceImageIds, :Offset, :Limit

        def initialize(androidinstanceimageids=nil, offset=nil, limit=nil)
          @AndroidInstanceImageIds = androidinstanceimageids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @AndroidInstanceImageIds = params['AndroidInstanceImageIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAndroidInstanceImages返回参数结构体
      class DescribeAndroidInstanceImagesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 镜像总数
        # @type Total: Integer
        # @param AndroidInstanceImages: 镜像列表
        # @type AndroidInstanceImages: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :AndroidInstanceImages, :RequestId

        def initialize(total=nil, androidinstanceimages=nil, requestid=nil)
          @Total = total
          @AndroidInstanceImages = androidinstanceimages
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['AndroidInstanceImages'].nil?
            @AndroidInstanceImages = []
            params['AndroidInstanceImages'].each do |i|
              androidinstanceimage_tmp = AndroidInstanceImage.new
              androidinstanceimage_tmp.deserialize(i)
              @AndroidInstanceImages << androidinstanceimage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAndroidInstanceLabels请求参数结构体
      class DescribeAndroidInstanceLabelsRequest < TencentCloud::Common::AbstractModel
        # @param Keys: 标签键列表
        # @type Keys: Array
        # @param Values: 标签值列表
        # @type Values: Array
        # @param Offset: 偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 限制量，默认为20，最大值为100
        # @type Limit: Integer

        attr_accessor :Keys, :Values, :Offset, :Limit

        def initialize(keys=nil, values=nil, offset=nil, limit=nil)
          @Keys = keys
          @Values = values
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Keys = params['Keys']
          @Values = params['Values']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAndroidInstanceLabels返回参数结构体
      class DescribeAndroidInstanceLabelsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 安卓实例标签总数
        # @type Total: Integer
        # @param Labels: 安卓实例标签列表
        # @type Labels: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Labels, :RequestId

        def initialize(total=nil, labels=nil, requestid=nil)
          @Total = total
          @Labels = labels
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              androidinstancelabel_tmp = AndroidInstanceLabel.new
              androidinstancelabel_tmp.deserialize(i)
              @Labels << androidinstancelabel_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAndroidInstanceTasksStatus请求参数结构体
      class DescribeAndroidInstanceTasksStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: 任务 ID 列表
        # @type TaskIds: Array
        # @param Filter: 条件过滤器
        # @type Filter: Array
        # @param Offset: 偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 限制量，默认为20，最大值为100
        # @type Limit: Integer

        attr_accessor :TaskIds, :Filter, :Offset, :Limit

        def initialize(taskids=nil, filter=nil, offset=nil, limit=nil)
          @TaskIds = taskids
          @Filter = filter
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
          unless params['Filter'].nil?
            @Filter = []
            params['Filter'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filter << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAndroidInstanceTasksStatus返回参数结构体
      class DescribeAndroidInstanceTasksStatusResponse < TencentCloud::Common::AbstractModel
        # @param TaskStatusSet: 任务状态集合
        # @type TaskStatusSet: Array
        # @param Total: 任务总数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskStatusSet, :Total, :RequestId

        def initialize(taskstatusset=nil, total=nil, requestid=nil)
          @TaskStatusSet = taskstatusset
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskStatusSet'].nil?
            @TaskStatusSet = []
            params['TaskStatusSet'].each do |i|
              androidinstancetaskstatus_tmp = AndroidInstanceTaskStatus.new
              androidinstancetaskstatus_tmp.deserialize(i)
              @TaskStatusSet << androidinstancetaskstatus_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAndroidInstances请求参数结构体
      class DescribeAndroidInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为 0
        # @type Offset: Integer
        # @param Limit: 限制量，默认为20，最大值为100
        # @type Limit: Integer
        # @param AndroidInstanceIds: 实例ID。每次请求的实例的上限为100。
        # @type AndroidInstanceIds: Array
        # @param AndroidInstanceRegion: 实例地域。目前还不支持按地域进行聚合查询
        # @type AndroidInstanceRegion: String
        # @param AndroidInstanceZone: 实例可用区
        # @type AndroidInstanceZone: String
        # @param AndroidInstanceGroupIds: 实例分组 ID 列表
        # @type AndroidInstanceGroupIds: Array
        # @param LabelSelector: 实例标签选择器
        # @type LabelSelector: Array
        # @param Filters: 字段过滤器。Filter 的 Name 有以下值：
        # Name：实例名称
        # UserId：实例用户ID
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :AndroidInstanceIds, :AndroidInstanceRegion, :AndroidInstanceZone, :AndroidInstanceGroupIds, :LabelSelector, :Filters

        def initialize(offset=nil, limit=nil, androidinstanceids=nil, androidinstanceregion=nil, androidinstancezone=nil, androidinstancegroupids=nil, labelselector=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @AndroidInstanceIds = androidinstanceids
          @AndroidInstanceRegion = androidinstanceregion
          @AndroidInstanceZone = androidinstancezone
          @AndroidInstanceGroupIds = androidinstancegroupids
          @LabelSelector = labelselector
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @AndroidInstanceIds = params['AndroidInstanceIds']
          @AndroidInstanceRegion = params['AndroidInstanceRegion']
          @AndroidInstanceZone = params['AndroidInstanceZone']
          @AndroidInstanceGroupIds = params['AndroidInstanceGroupIds']
          unless params['LabelSelector'].nil?
            @LabelSelector = []
            params['LabelSelector'].each do |i|
              labelrequirement_tmp = LabelRequirement.new
              labelrequirement_tmp.deserialize(i)
              @LabelSelector << labelrequirement_tmp
            end
          end
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

      # DescribeAndroidInstances返回参数结构体
      class DescribeAndroidInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例总数量
        # @type TotalCount: Integer
        # @param AndroidInstances: 实例列表
        # @type AndroidInstances: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AndroidInstances, :RequestId

        def initialize(totalcount=nil, androidinstances=nil, requestid=nil)
          @TotalCount = totalcount
          @AndroidInstances = androidinstances
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AndroidInstances'].nil?
            @AndroidInstances = []
            params['AndroidInstances'].each do |i|
              androidinstance_tmp = AndroidInstance.new
              androidinstance_tmp.deserialize(i)
              @AndroidInstances << androidinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesCount请求参数结构体
      class DescribeInstancesCountRequest < TencentCloud::Common::AbstractModel
        # @param GameId: 游戏ID
        # @type GameId: String
        # @param GroupId: 实例分组ID
        # @type GroupId: String
        # @param GameRegion: 游戏区域
        # @type GameRegion: String
        # @param GameType: 游戏类型。
        # MOBILE：手游
        # PC：默认值，端游
        # @type GameType: String

        attr_accessor :GameId, :GroupId, :GameRegion, :GameType

        def initialize(gameid=nil, groupid=nil, gameregion=nil, gametype=nil)
          @GameId = gameid
          @GroupId = groupid
          @GameRegion = gameregion
          @GameType = gametype
        end

        def deserialize(params)
          @GameId = params['GameId']
          @GroupId = params['GroupId']
          @GameRegion = params['GameRegion']
          @GameType = params['GameType']
        end
      end

      # DescribeInstancesCount返回参数结构体
      class DescribeInstancesCountResponse < TencentCloud::Common::AbstractModel
        # @param Total: 客户的实例总数
        # @type Total: Integer
        # @param Running: 客户的实例运行数
        # @type Running: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Running, :RequestId

        def initialize(total=nil, running=nil, requestid=nil)
          @Total = total
          @Running = running
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @Running = params['Running']
          @RequestId = params['RequestId']
        end
      end

      # DestroyAndroidInstances请求参数结构体
      class DestroyAndroidInstancesRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 安卓实例 ID 列表
        # @type AndroidInstanceIds: Array

        attr_accessor :AndroidInstanceIds

        def initialize(androidinstanceids=nil)
          @AndroidInstanceIds = androidinstanceids
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
        end
      end

      # DestroyAndroidInstances返回参数结构体
      class DestroyAndroidInstancesResponse < TencentCloud::Common::AbstractModel
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

      # DistributeFileToAndroidInstances请求参数结构体
      class DistributeFileToAndroidInstancesRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 安卓实例 ID 列表
        # @type AndroidInstanceIds: Array
        # @param FileURL: 文件下载 URL
        # @type FileURL: String
        # @param DestinationDirectory: 上传目标目录，只能上传到 /sdcard/ 目录或其子目录下
        # @type DestinationDirectory: String

        attr_accessor :AndroidInstanceIds, :FileURL, :DestinationDirectory

        def initialize(androidinstanceids=nil, fileurl=nil, destinationdirectory=nil)
          @AndroidInstanceIds = androidinstanceids
          @FileURL = fileurl
          @DestinationDirectory = destinationdirectory
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
          @FileURL = params['FileURL']
          @DestinationDirectory = params['DestinationDirectory']
        end
      end

      # DistributeFileToAndroidInstances返回参数结构体
      class DistributeFileToAndroidInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: 实例任务集合
        # @type TaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :RequestId

        def initialize(taskset=nil, requestid=nil)
          @TaskSet = taskset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              androidinstancetask_tmp = AndroidInstanceTask.new
              androidinstancetask_tmp.deserialize(i)
              @TaskSet << androidinstancetask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ExecuteCommandOnAndroidInstances请求参数结构体
      class ExecuteCommandOnAndroidInstancesRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 安卓实例 ID 列表
        # @type AndroidInstanceIds: Array
        # @param Command: shell 命令
        # @type Command: String

        attr_accessor :AndroidInstanceIds, :Command

        def initialize(androidinstanceids=nil, command=nil)
          @AndroidInstanceIds = androidinstanceids
          @Command = command
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
          @Command = params['Command']
        end
      end

      # ExecuteCommandOnAndroidInstances返回参数结构体
      class ExecuteCommandOnAndroidInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: 任务集合，可异步查询任务状态
        # @type TaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :RequestId

        def initialize(taskset=nil, requestid=nil)
          @TaskSet = taskset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              androidinstancetask_tmp = AndroidInstanceTask.new
              androidinstancetask_tmp.deserialize(i)
              @TaskSet << androidinstancetask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # FetchAndroidInstancesLogs请求参数结构体
      class FetchAndroidInstancesLogsRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 安卓实例 ID 列表
        # @type AndroidInstanceIds: Array
        # @param BucketName: cos 桶名称
        # @type BucketName: String
        # @param BucketRegion: cos 桶区域
        # @type BucketRegion: String
        # @param BucketDirectory: cos 桶目录，默认为 /log/
        # @type BucketDirectory: String
        # @param RecentDays: 下载最近几天的日志，默认值为 1
        # @type RecentDays: Integer

        attr_accessor :AndroidInstanceIds, :BucketName, :BucketRegion, :BucketDirectory, :RecentDays

        def initialize(androidinstanceids=nil, bucketname=nil, bucketregion=nil, bucketdirectory=nil, recentdays=nil)
          @AndroidInstanceIds = androidinstanceids
          @BucketName = bucketname
          @BucketRegion = bucketregion
          @BucketDirectory = bucketdirectory
          @RecentDays = recentdays
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
          @BucketName = params['BucketName']
          @BucketRegion = params['BucketRegion']
          @BucketDirectory = params['BucketDirectory']
          @RecentDays = params['RecentDays']
        end
      end

      # FetchAndroidInstancesLogs返回参数结构体
      class FetchAndroidInstancesLogsResponse < TencentCloud::Common::AbstractModel
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

      # 过滤
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 字段名
        # @type Name: String
        # @param Values: 字段值列表
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

      # InstallAndroidInstancesApp请求参数结构体
      class InstallAndroidInstancesAppRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 实例ID
        # @type AndroidInstanceIds: Array
        # @param AndroidAppId: 应用ID
        # @type AndroidAppId: String
        # @param AndroidAppVersion: 应用版本
        # @type AndroidAppVersion: String

        attr_accessor :AndroidInstanceIds, :AndroidAppId, :AndroidAppVersion

        def initialize(androidinstanceids=nil, androidappid=nil, androidappversion=nil)
          @AndroidInstanceIds = androidinstanceids
          @AndroidAppId = androidappid
          @AndroidAppVersion = androidappversion
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
          @AndroidAppId = params['AndroidAppId']
          @AndroidAppVersion = params['AndroidAppVersion']
        end
      end

      # InstallAndroidInstancesApp返回参数结构体
      class InstallAndroidInstancesAppResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: 任务集合
        # @type TaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :RequestId

        def initialize(taskset=nil, requestid=nil)
          @TaskSet = taskset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              androidinstancetask_tmp = AndroidInstanceTask.new
              androidinstancetask_tmp.deserialize(i)
              @TaskSet << androidinstancetask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # InstallAndroidInstancesAppWithURL请求参数结构体
      class InstallAndroidInstancesAppWithURLRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 实例ID
        # @type AndroidInstanceIds: Array
        # @param AndroidAppURL: 安卓应用下载 URL
        # @type AndroidAppURL: String

        attr_accessor :AndroidInstanceIds, :AndroidAppURL

        def initialize(androidinstanceids=nil, androidappurl=nil)
          @AndroidInstanceIds = androidinstanceids
          @AndroidAppURL = androidappurl
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
          @AndroidAppURL = params['AndroidAppURL']
        end
      end

      # InstallAndroidInstancesAppWithURL返回参数结构体
      class InstallAndroidInstancesAppWithURLResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: 任务集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :RequestId

        def initialize(taskset=nil, requestid=nil)
          @TaskSet = taskset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              androidinstancetask_tmp = AndroidInstanceTask.new
              androidinstancetask_tmp.deserialize(i)
              @TaskSet << androidinstancetask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 标签要求
      class LabelRequirement < TencentCloud::Common::AbstractModel
        # @param Key: 标签键
        # @type Key: String
        # @param Operator: 运算符类型。
        # IN：要求对象的标签键 Key 对应的标签值需满足 Values 中的一个
        # NOT_IN：要求对象的标签键 Key 对应的标签值不满足 Values 中的任何一个
        # EXISTS：要求对象标签存在标签键 Key
        # NOT_EXISTS: 要求对象标签不存在标签键 Key
        # @type Operator: String
        # @param Values: 标签值列表
        # @type Values: Array

        attr_accessor :Key, :Operator, :Values

        def initialize(key=nil, operator=nil, values=nil)
          @Key = key
          @Operator = operator
          @Values = values
        end

        def deserialize(params)
          @Key = params['Key']
          @Operator = params['Operator']
          @Values = params['Values']
        end
      end

      # ModifyAndroidApp请求参数结构体
      class ModifyAndroidAppRequest < TencentCloud::Common::AbstractModel
        # @param AndroidAppId: 安卓应用 Id
        # @type AndroidAppId: String
        # @param Name: 安卓应用名称
        # @type Name: String
        # @param UserId: 用户 Id
        # @type UserId: String

        attr_accessor :AndroidAppId, :Name, :UserId

        def initialize(androidappid=nil, name=nil, userid=nil)
          @AndroidAppId = androidappid
          @Name = name
          @UserId = userid
        end

        def deserialize(params)
          @AndroidAppId = params['AndroidAppId']
          @Name = params['Name']
          @UserId = params['UserId']
        end
      end

      # ModifyAndroidApp返回参数结构体
      class ModifyAndroidAppResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAndroidAppVersion请求参数结构体
      class ModifyAndroidAppVersionRequest < TencentCloud::Common::AbstractModel
        # @param AndroidAppId: 安卓应用 Id
        # @type AndroidAppId: String
        # @param AndroidAppVersion: 安卓应用版本 Id
        # @type AndroidAppVersion: String
        # @param AndroidAppVersionName: 安卓应用版本名称
        # @type AndroidAppVersionName: String
        # @param Command: 应用 shell 安装命令（支持多条命令执行，通过 && 组合；只在应用 AppMode 为 ADVANCED 高级模式下 才会生效）
        # @type Command: String
        # @param UninstallCommand: 应用 shell 卸载命令（支持多条命令执行，通过 && 组合；只在应用 AppMode 为 ADVANCED 高级模式下 才会生效）
        # @type UninstallCommand: String

        attr_accessor :AndroidAppId, :AndroidAppVersion, :AndroidAppVersionName, :Command, :UninstallCommand

        def initialize(androidappid=nil, androidappversion=nil, androidappversionname=nil, command=nil, uninstallcommand=nil)
          @AndroidAppId = androidappid
          @AndroidAppVersion = androidappversion
          @AndroidAppVersionName = androidappversionname
          @Command = command
          @UninstallCommand = uninstallcommand
        end

        def deserialize(params)
          @AndroidAppId = params['AndroidAppId']
          @AndroidAppVersion = params['AndroidAppVersion']
          @AndroidAppVersionName = params['AndroidAppVersionName']
          @Command = params['Command']
          @UninstallCommand = params['UninstallCommand']
        end
      end

      # ModifyAndroidAppVersion返回参数结构体
      class ModifyAndroidAppVersionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAndroidInstanceInformation请求参数结构体
      class ModifyAndroidInstanceInformationRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceId: 安卓实例 ID
        # @type AndroidInstanceId: String
        # @param Name: 实例名称
        # @type Name: String

        attr_accessor :AndroidInstanceId, :Name

        def initialize(androidinstanceid=nil, name=nil)
          @AndroidInstanceId = androidinstanceid
          @Name = name
        end

        def deserialize(params)
          @AndroidInstanceId = params['AndroidInstanceId']
          @Name = params['Name']
        end
      end

      # ModifyAndroidInstanceInformation返回参数结构体
      class ModifyAndroidInstanceInformationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAndroidInstanceResolution请求参数结构体
      class ModifyAndroidInstanceResolutionRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceId: 安卓实例 ID
        # @type AndroidInstanceId: String
        # @param Width: 分辨率宽度。建议按照以下数值设置，避免出现性能不足问题：
        # 实例类型为单开（A1）：建议设置为 1080
        # 实例类型为双开（A2） 及以上：建议设置为 720
        # @type Width: Integer
        # @param Height: 分辨率高度。建议按照以下数值设置，避免出现性能不足问题：
        # 实例类型为单开（A1）：建议设置为 1920
        # 实例类型为双开（A2） 及以上：建议设置为 1280
        # @type Height: Integer
        # @param DPI: 每英寸像素点。如果不填，系统将会计算一个合理的数值。修改 DPI 可能会导致 App 异常退出，请谨慎使用！
        # 分辨率为 720x1280：建议配置为 320
        # 分辨率为  1080x1920：建议配置为 480
        # @type DPI: Integer
        # @param FPS: 帧率。ResolutionType 为 PHYSICAL 时才会修改帧率。另外建议按照以下数值设置，避免出现性能不足问题： 实例类型为单开（A1）：建议设置为 60 实例类型为双开（A2） 及以上：建议设置为 30
        # @type FPS: Integer
        # @param ResolutionType: 修改分辨率类型。修改物理分辨率，需要重启才能生效。
        # OVERRIDE：默认值，修改覆盖（显示）分辨率
        # PHYSICAL：修改物理分辨率
        # @type ResolutionType: String

        attr_accessor :AndroidInstanceId, :Width, :Height, :DPI, :FPS, :ResolutionType

        def initialize(androidinstanceid=nil, width=nil, height=nil, dpi=nil, fps=nil, resolutiontype=nil)
          @AndroidInstanceId = androidinstanceid
          @Width = width
          @Height = height
          @DPI = dpi
          @FPS = fps
          @ResolutionType = resolutiontype
        end

        def deserialize(params)
          @AndroidInstanceId = params['AndroidInstanceId']
          @Width = params['Width']
          @Height = params['Height']
          @DPI = params['DPI']
          @FPS = params['FPS']
          @ResolutionType = params['ResolutionType']
        end
      end

      # ModifyAndroidInstanceResolution返回参数结构体
      class ModifyAndroidInstanceResolutionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAndroidInstancesInformation请求参数结构体
      class ModifyAndroidInstancesInformationRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceInformations: 安卓实例信息数据
        # @type AndroidInstanceInformations: Array

        attr_accessor :AndroidInstanceInformations

        def initialize(androidinstanceinformations=nil)
          @AndroidInstanceInformations = androidinstanceinformations
        end

        def deserialize(params)
          unless params['AndroidInstanceInformations'].nil?
            @AndroidInstanceInformations = []
            params['AndroidInstanceInformations'].each do |i|
              androidinstanceinformation_tmp = AndroidInstanceInformation.new
              androidinstanceinformation_tmp.deserialize(i)
              @AndroidInstanceInformations << androidinstanceinformation_tmp
            end
          end
        end
      end

      # ModifyAndroidInstancesInformation返回参数结构体
      class ModifyAndroidInstancesInformationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAndroidInstancesLabels请求参数结构体
      class ModifyAndroidInstancesLabelsRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 安卓实例 ID 列表
        # @type AndroidInstanceIds: Array
        # @param AndroidInstanceLabels: 安卓实例标签列表
        # @type AndroidInstanceLabels: Array
        # @param Operation: 操作类型。ADD：标签键不存在的添加新标签，标签键存在的将覆盖原有标签REMOVE：根据标签键删除标签REPLACE：使用请求标签列表替换原来所有标签CLEAR：清除所有标签
        # @type Operation: String

        attr_accessor :AndroidInstanceIds, :AndroidInstanceLabels, :Operation

        def initialize(androidinstanceids=nil, androidinstancelabels=nil, operation=nil)
          @AndroidInstanceIds = androidinstanceids
          @AndroidInstanceLabels = androidinstancelabels
          @Operation = operation
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
          unless params['AndroidInstanceLabels'].nil?
            @AndroidInstanceLabels = []
            params['AndroidInstanceLabels'].each do |i|
              androidinstancelabel_tmp = AndroidInstanceLabel.new
              androidinstancelabel_tmp.deserialize(i)
              @AndroidInstanceLabels << androidinstancelabel_tmp
            end
          end
          @Operation = params['Operation']
        end
      end

      # ModifyAndroidInstancesLabels返回参数结构体
      class ModifyAndroidInstancesLabelsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAndroidInstancesProperties请求参数结构体
      class ModifyAndroidInstancesPropertiesRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 安卓实例 ID 列表
        # @type AndroidInstanceIds: Array
        # @param AndroidInstanceDevice: 安卓实例设备
        # @type AndroidInstanceDevice: :class:`Tencentcloud::Gs.v20191118.models.AndroidInstanceDevice`
        # @param AndroidInstanceProperties: 安卓实例其它属性列表
        # @type AndroidInstanceProperties: Array

        attr_accessor :AndroidInstanceIds, :AndroidInstanceDevice, :AndroidInstanceProperties

        def initialize(androidinstanceids=nil, androidinstancedevice=nil, androidinstanceproperties=nil)
          @AndroidInstanceIds = androidinstanceids
          @AndroidInstanceDevice = androidinstancedevice
          @AndroidInstanceProperties = androidinstanceproperties
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
          unless params['AndroidInstanceDevice'].nil?
            @AndroidInstanceDevice = AndroidInstanceDevice.new
            @AndroidInstanceDevice.deserialize(params['AndroidInstanceDevice'])
          end
          unless params['AndroidInstanceProperties'].nil?
            @AndroidInstanceProperties = []
            params['AndroidInstanceProperties'].each do |i|
              androidinstanceproperty_tmp = AndroidInstanceProperty.new
              androidinstanceproperty_tmp.deserialize(i)
              @AndroidInstanceProperties << androidinstanceproperty_tmp
            end
          end
        end
      end

      # ModifyAndroidInstancesProperties返回参数结构体
      class ModifyAndroidInstancesPropertiesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAndroidInstancesResolution请求参数结构体
      class ModifyAndroidInstancesResolutionRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 安卓实例 ID 列表
        # @type AndroidInstanceIds: Array
        # @param Width: 分辨率宽度。建议按照以下数值设置，避免出现性能不足问题：
        # 实例类型为单开（A1）：建议设置为 1080
        # 实例类型为双开（A2） 及以上：建议设置为 720
        # @type Width: Integer
        # @param Height: 分辨率高度。建议按照以下数值设置，避免出现性能不足问题：
        # 实例类型为单开（A1）：建议设置为 1920
        # 实例类型为双开（A2） 及以上：建议设置为 1280
        # @type Height: Integer
        # @param DPI: 每英寸像素点。
        # 分辨率为 720x1280：建议配置为 320
        # 分辨率为  1080x1920：建议配置为 480
        # @type DPI: Integer
        # @param FPS: 帧率。ResolutionType 为 PHYSICAL 时才会修改帧率。另外建议按照以下数值设置，避免出现性能不足问题：
        # 实例类型为单开（A1）：建议设置为 60
        # 实例类型为双开（A2） 及以上：建议设置为 30
        # @type FPS: Integer
        # @param ResolutionType: 修改分辨率类型。修改物理分辨率，需要重启才能生效。
        # OVERRIDE：默认值，修改覆盖（显示）分辨率
        # PHYSICAL：修改物理分辨率
        # @type ResolutionType: String

        attr_accessor :AndroidInstanceIds, :Width, :Height, :DPI, :FPS, :ResolutionType

        def initialize(androidinstanceids=nil, width=nil, height=nil, dpi=nil, fps=nil, resolutiontype=nil)
          @AndroidInstanceIds = androidinstanceids
          @Width = width
          @Height = height
          @DPI = dpi
          @FPS = fps
          @ResolutionType = resolutiontype
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
          @Width = params['Width']
          @Height = params['Height']
          @DPI = params['DPI']
          @FPS = params['FPS']
          @ResolutionType = params['ResolutionType']
        end
      end

      # ModifyAndroidInstancesResolution返回参数结构体
      class ModifyAndroidInstancesResolutionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAndroidInstancesUserId请求参数结构体
      class ModifyAndroidInstancesUserIdRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 安卓实例 ID 列表
        # @type AndroidInstanceIds: Array
        # @param UserId: 用户 ID
        # @type UserId: String

        attr_accessor :AndroidInstanceIds, :UserId

        def initialize(androidinstanceids=nil, userid=nil)
          @AndroidInstanceIds = androidinstanceids
          @UserId = userid
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
          @UserId = params['UserId']
        end
      end

      # ModifyAndroidInstancesUserId返回参数结构体
      class ModifyAndroidInstancesUserIdResponse < TencentCloud::Common::AbstractModel
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

      # RebootAndroidInstanceHosts请求参数结构体
      class RebootAndroidInstanceHostsRequest < TencentCloud::Common::AbstractModel
        # @param HostSerialNumbers: 宿主机序列号集合
        # @type HostSerialNumbers: Array

        attr_accessor :HostSerialNumbers

        def initialize(hostserialnumbers=nil)
          @HostSerialNumbers = hostserialnumbers
        end

        def deserialize(params)
          @HostSerialNumbers = params['HostSerialNumbers']
        end
      end

      # RebootAndroidInstanceHosts返回参数结构体
      class RebootAndroidInstanceHostsResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: 任务 ID 集合，以供任务状态查询，其中 InstanceId 为宿主机序列号
        # @type TaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :RequestId

        def initialize(taskset=nil, requestid=nil)
          @TaskSet = taskset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              androidinstancetask_tmp = AndroidInstanceTask.new
              androidinstancetask_tmp.deserialize(i)
              @TaskSet << androidinstancetask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # RebootAndroidInstances请求参数结构体
      class RebootAndroidInstancesRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 实例ID
        # @type AndroidInstanceIds: Array

        attr_accessor :AndroidInstanceIds

        def initialize(androidinstanceids=nil)
          @AndroidInstanceIds = androidinstanceids
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
        end
      end

      # RebootAndroidInstances返回参数结构体
      class RebootAndroidInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: 任务集合
        # @type TaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :RequestId

        def initialize(taskset=nil, requestid=nil)
          @TaskSet = taskset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              androidinstancetask_tmp = AndroidInstanceTask.new
              androidinstancetask_tmp.deserialize(i)
              @TaskSet << androidinstancetask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ResetAndroidInstances请求参数结构体
      class ResetAndroidInstancesRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 实例ID列表
        # @type AndroidInstanceIds: Array
        # @param AndroidInstanceImageId: 指定有效的镜像 ID。
        # 默认取值：默认使用当前镜像。
        # @type AndroidInstanceImageId: String
        # @param Mode: 重置模式。在 AndroidInstanceImageId 不为空时才生效。

        # CleanData：默认选项，清理系统属性和用户数据
        # KeepSystemProperties：只保留系统属性
        # KeepData: 保留系统属性和用户数据
        # @type Mode: String

        attr_accessor :AndroidInstanceIds, :AndroidInstanceImageId, :Mode

        def initialize(androidinstanceids=nil, androidinstanceimageid=nil, mode=nil)
          @AndroidInstanceIds = androidinstanceids
          @AndroidInstanceImageId = androidinstanceimageid
          @Mode = mode
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
          @AndroidInstanceImageId = params['AndroidInstanceImageId']
          @Mode = params['Mode']
        end
      end

      # ResetAndroidInstances返回参数结构体
      class ResetAndroidInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: 任务集合
        # @type TaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :RequestId

        def initialize(taskset=nil, requestid=nil)
          @TaskSet = taskset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              androidinstancetask_tmp = AndroidInstanceTask.new
              androidinstancetask_tmp.deserialize(i)
              @TaskSet << androidinstancetask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # RestartAndroidInstancesApp请求参数结构体
      class RestartAndroidInstancesAppRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 实例 ID 列表
        # @type AndroidInstanceIds: Array
        # @param PackageName: 应用包名
        # @type PackageName: String
        # @param Activity: 启动页。建议指定启动页来启动应用，避免启动失败。如果启动页为空，系统尝试根据 PackageName 启动，但不保证成功。
        # @type Activity: String

        attr_accessor :AndroidInstanceIds, :PackageName, :Activity

        def initialize(androidinstanceids=nil, packagename=nil, activity=nil)
          @AndroidInstanceIds = androidinstanceids
          @PackageName = packagename
          @Activity = activity
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
          @PackageName = params['PackageName']
          @Activity = params['Activity']
        end
      end

      # RestartAndroidInstancesApp返回参数结构体
      class RestartAndroidInstancesAppResponse < TencentCloud::Common::AbstractModel
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

      # RestoreAndroidInstanceFromStorage请求参数结构体
      class RestoreAndroidInstanceFromStorageRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceId: 安卓实例ID
        # @type AndroidInstanceId: String
        # @param ObjectKey: 自定义备份对象Key
        # @type ObjectKey: String
        # @param StorageType: 存储服务器类型，如 COS、S3。注意：使用 COS 和 S3 都将占用外网带宽。
        # @type StorageType: String
        # @param COSOptions: COS协议选项
        # @type COSOptions: :class:`Tencentcloud::Gs.v20191118.models.COSOptions`
        # @param S3Options: S3存储协议选项
        # @type S3Options: :class:`Tencentcloud::Gs.v20191118.models.S3Options`

        attr_accessor :AndroidInstanceId, :ObjectKey, :StorageType, :COSOptions, :S3Options

        def initialize(androidinstanceid=nil, objectkey=nil, storagetype=nil, cosoptions=nil, s3options=nil)
          @AndroidInstanceId = androidinstanceid
          @ObjectKey = objectkey
          @StorageType = storagetype
          @COSOptions = cosoptions
          @S3Options = s3options
        end

        def deserialize(params)
          @AndroidInstanceId = params['AndroidInstanceId']
          @ObjectKey = params['ObjectKey']
          @StorageType = params['StorageType']
          unless params['COSOptions'].nil?
            @COSOptions = COSOptions.new
            @COSOptions.deserialize(params['COSOptions'])
          end
          unless params['S3Options'].nil?
            @S3Options = S3Options.new
            @S3Options.deserialize(params['S3Options'])
          end
        end
      end

      # RestoreAndroidInstanceFromStorage返回参数结构体
      class RestoreAndroidInstanceFromStorageResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 实例任务 ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # S3协议参数
      class S3Options < TencentCloud::Common::AbstractModel
        # @param EndPoint: 存储节点
        # @type EndPoint: String
        # @param Bucket: 存储桶
        # @type Bucket: String
        # @param AccessKeyId: 密钥 ID
        # @type AccessKeyId: String
        # @param SecretAccessKey: 密钥 Key
        # @type SecretAccessKey: String

        attr_accessor :EndPoint, :Bucket, :AccessKeyId, :SecretAccessKey

        def initialize(endpoint=nil, bucket=nil, accesskeyid=nil, secretaccesskey=nil)
          @EndPoint = endpoint
          @Bucket = bucket
          @AccessKeyId = accesskeyid
          @SecretAccessKey = secretaccesskey
        end

        def deserialize(params)
          @EndPoint = params['EndPoint']
          @Bucket = params['Bucket']
          @AccessKeyId = params['AccessKeyId']
          @SecretAccessKey = params['SecretAccessKey']
        end
      end

      # SaveGameArchive请求参数结构体
      class SaveGameArchiveRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 游戏用户ID
        # @type UserId: String
        # @param GameId: 游戏ID
        # @type GameId: String

        attr_accessor :UserId, :GameId

        def initialize(userid=nil, gameid=nil)
          @UserId = userid
          @GameId = gameid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @GameId = params['GameId']
        end
      end

      # SaveGameArchive返回参数结构体
      class SaveGameArchiveResponse < TencentCloud::Common::AbstractModel
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

      # StartAndroidInstancesApp请求参数结构体
      class StartAndroidInstancesAppRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 实例 ID 列表
        # @type AndroidInstanceIds: Array
        # @param PackageName: 应用包名
        # @type PackageName: String
        # @param Activity: 启动页。建议指定启动页来启动应用，避免启动失败。如果启动页为空，系统尝试根据 PackageName 启动，但不保证成功。
        # @type Activity: String

        attr_accessor :AndroidInstanceIds, :PackageName, :Activity

        def initialize(androidinstanceids=nil, packagename=nil, activity=nil)
          @AndroidInstanceIds = androidinstanceids
          @PackageName = packagename
          @Activity = activity
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
          @PackageName = params['PackageName']
          @Activity = params['Activity']
        end
      end

      # StartAndroidInstancesApp返回参数结构体
      class StartAndroidInstancesAppResponse < TencentCloud::Common::AbstractModel
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

      # StartAndroidInstances请求参数结构体
      class StartAndroidInstancesRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 实例ID
        # @type AndroidInstanceIds: Array

        attr_accessor :AndroidInstanceIds

        def initialize(androidinstanceids=nil)
          @AndroidInstanceIds = androidinstanceids
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
        end
      end

      # StartAndroidInstances返回参数结构体
      class StartAndroidInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: 任务集合
        # @type TaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :RequestId

        def initialize(taskset=nil, requestid=nil)
          @TaskSet = taskset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              androidinstancetask_tmp = AndroidInstanceTask.new
              androidinstancetask_tmp.deserialize(i)
              @TaskSet << androidinstancetask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # StartPublishStream请求参数结构体
      class StartPublishStreamRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 唯一用户身份标识，由业务方自定义，平台不予理解。（可根据业务需要决定使用用户的唯一身份标识或是使用时间戳随机生成；在用户重连时应保持UserId不变）
        # @type UserId: String
        # @param PublishUrl: 推流地址，仅支持rtmp协议
        # @type PublishUrl: String

        attr_accessor :UserId, :PublishUrl

        def initialize(userid=nil, publishurl=nil)
          @UserId = userid
          @PublishUrl = publishurl
        end

        def deserialize(params)
          @UserId = params['UserId']
          @PublishUrl = params['PublishUrl']
        end
      end

      # StartPublishStream返回参数结构体
      class StartPublishStreamResponse < TencentCloud::Common::AbstractModel
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

      # StartPublishStreamToCSS请求参数结构体
      class StartPublishStreamToCSSRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 唯一用户身份标识，由业务方自定义，平台不予理解。（可根据业务需要决定使用用户的唯一身份标识或是使用时间戳随机生成；在用户重连时应保持UserId不变）
        # @type UserId: String
        # @param PublishStreamArgs: 推流参数，推流时携带自定义参数。
        # @type PublishStreamArgs: String

        attr_accessor :UserId, :PublishStreamArgs

        def initialize(userid=nil, publishstreamargs=nil)
          @UserId = userid
          @PublishStreamArgs = publishstreamargs
        end

        def deserialize(params)
          @UserId = params['UserId']
          @PublishStreamArgs = params['PublishStreamArgs']
        end
      end

      # StartPublishStreamToCSS返回参数结构体
      class StartPublishStreamToCSSResponse < TencentCloud::Common::AbstractModel
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

      # StopAndroidInstancesApp请求参数结构体
      class StopAndroidInstancesAppRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 实例 ID 列表
        # @type AndroidInstanceIds: Array
        # @param PackageName: 应用包名
        # @type PackageName: String

        attr_accessor :AndroidInstanceIds, :PackageName

        def initialize(androidinstanceids=nil, packagename=nil)
          @AndroidInstanceIds = androidinstanceids
          @PackageName = packagename
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
          @PackageName = params['PackageName']
        end
      end

      # StopAndroidInstancesApp返回参数结构体
      class StopAndroidInstancesAppResponse < TencentCloud::Common::AbstractModel
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

      # StopAndroidInstances请求参数结构体
      class StopAndroidInstancesRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 实例ID
        # @type AndroidInstanceIds: Array

        attr_accessor :AndroidInstanceIds

        def initialize(androidinstanceids=nil)
          @AndroidInstanceIds = androidinstanceids
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
        end
      end

      # StopAndroidInstances返回参数结构体
      class StopAndroidInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: 任务集合
        # @type TaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :RequestId

        def initialize(taskset=nil, requestid=nil)
          @TaskSet = taskset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              androidinstancetask_tmp = AndroidInstanceTask.new
              androidinstancetask_tmp.deserialize(i)
              @TaskSet << androidinstancetask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # StopGame请求参数结构体
      class StopGameRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 唯一用户身份标识，由业务方自定义，平台不予理解。（可根据业务需要决定使用用户的唯一身份标识或是使用时间戳随机生成；在用户重连时应保持UserId不变）
        # @type UserId: String
        # @param HostUserId: 【多人游戏】游戏主机用户ID
        # @type HostUserId: String

        attr_accessor :UserId, :HostUserId

        def initialize(userid=nil, hostuserid=nil)
          @UserId = userid
          @HostUserId = hostuserid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @HostUserId = params['HostUserId']
        end
      end

      # StopGame返回参数结构体
      class StopGameResponse < TencentCloud::Common::AbstractModel
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

      # StopPublishStream请求参数结构体
      class StopPublishStreamRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 唯一用户身份标识，由业务方自定义，平台不予理解。（可根据业务需要决定使用用户的唯一身份标识或是使用时间戳随机生成；在用户重连时应保持UserId不变）
        # @type UserId: String

        attr_accessor :UserId

        def initialize(userid=nil)
          @UserId = userid
        end

        def deserialize(params)
          @UserId = params['UserId']
        end
      end

      # StopPublishStream返回参数结构体
      class StopPublishStreamResponse < TencentCloud::Common::AbstractModel
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

      # SwitchGameArchive请求参数结构体
      class SwitchGameArchiveRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 游戏用户ID
        # @type UserId: String
        # @param GameId: 游戏ID
        # @type GameId: String
        # @param GameArchiveUrl: 游戏存档Url
        # @type GameArchiveUrl: String
        # @param GameContext: 游戏相关参数
        # @type GameContext: String

        attr_accessor :UserId, :GameId, :GameArchiveUrl, :GameContext

        def initialize(userid=nil, gameid=nil, gamearchiveurl=nil, gamecontext=nil)
          @UserId = userid
          @GameId = gameid
          @GameArchiveUrl = gamearchiveurl
          @GameContext = gamecontext
        end

        def deserialize(params)
          @UserId = params['UserId']
          @GameId = params['GameId']
          @GameArchiveUrl = params['GameArchiveUrl']
          @GameContext = params['GameContext']
        end
      end

      # SwitchGameArchive返回参数结构体
      class SwitchGameArchiveResponse < TencentCloud::Common::AbstractModel
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

      # 同步安卓实例镜像信息
      class SyncAndroidInstanceImage < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceImageId: 镜像 ID
        # @type AndroidInstanceImageId: String
        # @param AndroidInstanceImageZone: 镜像可用区
        # @type AndroidInstanceImageZone: String

        attr_accessor :AndroidInstanceImageId, :AndroidInstanceImageZone

        def initialize(androidinstanceimageid=nil, androidinstanceimagezone=nil)
          @AndroidInstanceImageId = androidinstanceimageid
          @AndroidInstanceImageZone = androidinstanceimagezone
        end

        def deserialize(params)
          @AndroidInstanceImageId = params['AndroidInstanceImageId']
          @AndroidInstanceImageZone = params['AndroidInstanceImageZone']
        end
      end

      # SyncAndroidInstanceImage请求参数结构体
      class SyncAndroidInstanceImageRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceImageId: 安卓实例镜像 ID
        # @type AndroidInstanceImageId: String
        # @param DestinationZones: 目的同步可用区列表
        # @type DestinationZones: Array

        attr_accessor :AndroidInstanceImageId, :DestinationZones

        def initialize(androidinstanceimageid=nil, destinationzones=nil)
          @AndroidInstanceImageId = androidinstanceimageid
          @DestinationZones = destinationzones
        end

        def deserialize(params)
          @AndroidInstanceImageId = params['AndroidInstanceImageId']
          @DestinationZones = params['DestinationZones']
        end
      end

      # SyncAndroidInstanceImage返回参数结构体
      class SyncAndroidInstanceImageResponse < TencentCloud::Common::AbstractModel
        # @param SyncAndroidInstanceImages: 同步安卓实例镜像列表
        # @type SyncAndroidInstanceImages: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SyncAndroidInstanceImages, :RequestId

        def initialize(syncandroidinstanceimages=nil, requestid=nil)
          @SyncAndroidInstanceImages = syncandroidinstanceimages
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SyncAndroidInstanceImages'].nil?
            @SyncAndroidInstanceImages = []
            params['SyncAndroidInstanceImages'].each do |i|
              syncandroidinstanceimage_tmp = SyncAndroidInstanceImage.new
              syncandroidinstanceimage_tmp.deserialize(i)
              @SyncAndroidInstanceImages << syncandroidinstanceimage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # SyncExecuteCommandOnAndroidInstances请求参数结构体
      class SyncExecuteCommandOnAndroidInstancesRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 安卓实例 ID 列表
        # @type AndroidInstanceIds: Array
        # @param Command: shell 命令，必须是1秒内能自动结束的命令
        # @type Command: String

        attr_accessor :AndroidInstanceIds, :Command

        def initialize(androidinstanceids=nil, command=nil)
          @AndroidInstanceIds = androidinstanceids
          @Command = command
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
          @Command = params['Command']
        end
      end

      # SyncExecuteCommandOnAndroidInstances返回参数结构体
      class SyncExecuteCommandOnAndroidInstancesResponse < TencentCloud::Common::AbstractModel
        # @param CommandResults: 命令执行结果列表
        # @type CommandResults: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CommandResults, :RequestId

        def initialize(commandresults=nil, requestid=nil)
          @CommandResults = commandresults
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CommandResults'].nil?
            @CommandResults = []
            params['CommandResults'].each do |i|
              syncexecutecommandresult_tmp = SyncExecuteCommandResult.new
              syncexecutecommandresult_tmp.deserialize(i)
              @CommandResults << syncexecutecommandresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 同步执行命令结果
      class SyncExecuteCommandResult < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Output: 命令执行输出内容
        # @type Output: String
        # @param Status: 命令执行结果
        # @type Status: String

        attr_accessor :InstanceId, :Output, :Status

        def initialize(instanceid=nil, output=nil, status=nil)
          @InstanceId = instanceid
          @Output = output
          @Status = status
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Output = params['Output']
          @Status = params['Status']
        end
      end

      # TrylockWorker请求参数结构体
      class TrylockWorkerRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 唯一用户身份标识，由业务方自定义，平台不予理解。（可根据业务需要决定使用用户的唯一身份标识或是使用时间戳随机生成；在用户重连时应保持UserId不变）
        # @type UserId: String
        # @param GameId: 游戏ID
        # @type GameId: String
        # @param GameRegion: 游戏区域，ap-guangzhou、ap-shanghai、ap-beijing等，如果不为空，优先按照该区域进行调度分配机器
        # @type GameRegion: String
        # @param SetNo: 【废弃】资源池编号
        # @type SetNo: Integer
        # @param UserIp: 【必选】用户IP，用户客户端的公网IP，用于就近调度，不填将严重影响用户体验
        # @type UserIp: String
        # @param GroupId: 分组ID
        # @type GroupId: String

        attr_accessor :UserId, :GameId, :GameRegion, :SetNo, :UserIp, :GroupId

        def initialize(userid=nil, gameid=nil, gameregion=nil, setno=nil, userip=nil, groupid=nil)
          @UserId = userid
          @GameId = gameid
          @GameRegion = gameregion
          @SetNo = setno
          @UserIp = userip
          @GroupId = groupid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @GameId = params['GameId']
          @GameRegion = params['GameRegion']
          @SetNo = params['SetNo']
          @UserIp = params['UserIp']
          @GroupId = params['GroupId']
        end
      end

      # TrylockWorker返回参数结构体
      class TrylockWorkerResponse < TencentCloud::Common::AbstractModel
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

      # UninstallAndroidInstancesApp请求参数结构体
      class UninstallAndroidInstancesAppRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 实例ID
        # @type AndroidInstanceIds: Array
        # @param AndroidAppId: 应用ID
        # @type AndroidAppId: String
        # @param PackageName: 包名
        # @type PackageName: String

        attr_accessor :AndroidInstanceIds, :AndroidAppId, :PackageName

        def initialize(androidinstanceids=nil, androidappid=nil, packagename=nil)
          @AndroidInstanceIds = androidinstanceids
          @AndroidAppId = androidappid
          @PackageName = packagename
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
          @AndroidAppId = params['AndroidAppId']
          @PackageName = params['PackageName']
        end
      end

      # UninstallAndroidInstancesApp返回参数结构体
      class UninstallAndroidInstancesAppResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: 任务集合
        # @type TaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :RequestId

        def initialize(taskset=nil, requestid=nil)
          @TaskSet = taskset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              androidinstancetask_tmp = AndroidInstanceTask.new
              androidinstancetask_tmp.deserialize(i)
              @TaskSet << androidinstancetask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # UploadFileToAndroidInstances请求参数结构体
      class UploadFileToAndroidInstancesRequest < TencentCloud::Common::AbstractModel
        # @param AndroidInstanceIds: 安卓实例 ID 列表
        # @type AndroidInstanceIds: Array
        # @param FileURL: 文件下载 URL
        # @type FileURL: String
        # @param DestinationDirectory: 上传目标目录，只能上传到 /sdcard/ 目录或其子目录下
        # @type DestinationDirectory: String

        attr_accessor :AndroidInstanceIds, :FileURL, :DestinationDirectory

        def initialize(androidinstanceids=nil, fileurl=nil, destinationdirectory=nil)
          @AndroidInstanceIds = androidinstanceids
          @FileURL = fileurl
          @DestinationDirectory = destinationdirectory
        end

        def deserialize(params)
          @AndroidInstanceIds = params['AndroidInstanceIds']
          @FileURL = params['FileURL']
          @DestinationDirectory = params['DestinationDirectory']
        end
      end

      # UploadFileToAndroidInstances返回参数结构体
      class UploadFileToAndroidInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: 实例任务集合
        # @type TaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :RequestId

        def initialize(taskset=nil, requestid=nil)
          @TaskSet = taskset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              androidinstancetask_tmp = AndroidInstanceTask.new
              androidinstancetask_tmp.deserialize(i)
              @TaskSet << androidinstancetask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # UploadFilesToAndroidInstances请求参数结构体
      class UploadFilesToAndroidInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Files: 上传文件信息列表
        # @type Files: Array

        attr_accessor :Files

        def initialize(files=nil)
          @Files = files
        end

        def deserialize(params)
          unless params['Files'].nil?
            @Files = []
            params['Files'].each do |i|
              androidinstanceuploadfile_tmp = AndroidInstanceUploadFile.new
              androidinstanceuploadfile_tmp.deserialize(i)
              @Files << androidinstanceuploadfile_tmp
            end
          end
        end
      end

      # UploadFilesToAndroidInstances返回参数结构体
      class UploadFilesToAndroidInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: 实例任务集合
        # @type TaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :RequestId

        def initialize(taskset=nil, requestid=nil)
          @TaskSet = taskset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              androidinstancetask_tmp = AndroidInstanceTask.new
              androidinstancetask_tmp.deserialize(i)
              @TaskSet << androidinstancetask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

