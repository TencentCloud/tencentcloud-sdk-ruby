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
  module Gse
    module V20191112
      # 别名对象
      class Alias < TencentCloud::Common::AbstractModel
        # @param AliasId: 别名的唯一标识符
        # @type AliasId: String
        # @param AliasArn: 别名的全局唯一资源标识符
        # @type AliasArn: String
        # @param Name: 名字，长度不小于1字符不超过1024字符
        # @type Name: String
        # @param Description: 别名的可读说明，长度不小于1字符不超过1024字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param RoutingStrategy: 别名的路由配置
        # @type RoutingStrategy: :class:`Tencentcloud::Gse.v20191112.models.RoutingStrategy`
        # @param CreationTime: 创建时间
        # @type CreationTime: String
        # @param LastUpdatedTime: 上次修改此数据对象的时间
        # @type LastUpdatedTime: String
        # @param Tags: 标签列表，最大长度50组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :AliasId, :AliasArn, :Name, :Description, :RoutingStrategy, :CreationTime, :LastUpdatedTime, :Tags
        
        def initialize(aliasid=nil, aliasarn=nil, name=nil, description=nil, routingstrategy=nil, creationtime=nil, lastupdatedtime=nil, tags=nil)
          @AliasId = aliasid
          @AliasArn = aliasarn
          @Name = name
          @Description = description
          @RoutingStrategy = routingstrategy
          @CreationTime = creationtime
          @LastUpdatedTime = lastupdatedtime
          @Tags = tags
        end

        def deserialize(params)
          @AliasId = params['AliasId']
          @AliasArn = params['AliasArn']
          @Name = params['Name']
          @Description = params['Description']
          unless params['RoutingStrategy'].nil?
            @RoutingStrategy = RoutingStrategy.new.deserialize(params['RoutingStrategy'])
          end
          @CreationTime = params['CreationTime']
          @LastUpdatedTime = params['LastUpdatedTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << Tag.new.deserialize(i)
            end
          end
        end
      end

      # 生成包信息
      class Asset < TencentCloud::Common::AbstractModel
        # @param AssetId: 生成包ID
        # @type AssetId: String
        # @param AssetName: 生成包名字，最小长度为1，最大长度为64
        # @type AssetName: String
        # @param AssetVersion: 生成包版本，最小长度为1，最大长度为64
        # @type AssetVersion: String
        # @param OperateSystem: 生成包可运行的操作系统，暂时只支持CentOS7.16
        # @type OperateSystem: String
        # @param Stauts: 生成包状态，0代表上传中，1代表上传失败，2代表上传成功
        # @type Stauts: Integer
        # @param Size: 生成包大小
        # @type Size: String
        # @param CreateTime: 生成包创建时间
        # @type CreateTime: String
        # @param BindFleetNum: 生成包绑定的Fleet个数，最小值为0
        # @type BindFleetNum: Integer
        # @param AssetArn: 生成包的全局唯一资源标识符
        # @type AssetArn: String
        # @param ImageId: 生成包支持的操作系统镜像id
        # @type ImageId: String
        # @param OsType: 生成包支持的操作系统类型
        # @type OsType: String
        # @param ResourceType: 生成包资源类型，ASSET 或者 IMAGE；ASSET 代表是原有生成包类型，IMAGE 为扩充使用镜像类型
        # @type ResourceType: String
        # @param SharingStatus: 镜像资源共享类型，当 ResourceType 为 IMAGE 时该字段有意义，SHARED 表示共享、SHARED_IMAGE 表示未共享；ResourceType 为 ASSET 时这里返回 UNKNOWN_SHARED 用于占位
        # @type SharingStatus: String
        # @param Tags: 标签列表，最大长度50组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :AssetId, :AssetName, :AssetVersion, :OperateSystem, :Stauts, :Size, :CreateTime, :BindFleetNum, :AssetArn, :ImageId, :OsType, :ResourceType, :SharingStatus, :Tags
        
        def initialize(assetid=nil, assetname=nil, assetversion=nil, operatesystem=nil, stauts=nil, size=nil, createtime=nil, bindfleetnum=nil, assetarn=nil, imageid=nil, ostype=nil, resourcetype=nil, sharingstatus=nil, tags=nil)
          @AssetId = assetid
          @AssetName = assetname
          @AssetVersion = assetversion
          @OperateSystem = operatesystem
          @Stauts = stauts
          @Size = size
          @CreateTime = createtime
          @BindFleetNum = bindfleetnum
          @AssetArn = assetarn
          @ImageId = imageid
          @OsType = ostype
          @ResourceType = resourcetype
          @SharingStatus = sharingstatus
          @Tags = tags
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @AssetVersion = params['AssetVersion']
          @OperateSystem = params['OperateSystem']
          @Stauts = params['Stauts']
          @Size = params['Size']
          @CreateTime = params['CreateTime']
          @BindFleetNum = params['BindFleetNum']
          @AssetArn = params['AssetArn']
          @ImageId = params['ImageId']
          @OsType = params['OsType']
          @ResourceType = params['ResourceType']
          @SharingStatus = params['SharingStatus']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << Tag.new.deserialize(i)
            end
          end
        end
      end

      # 上传Asset的临时证书
      class AssetCredentials < TencentCloud::Common::AbstractModel
        # @param TmpSecretId: 临时证书密钥ID
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时证书密钥Key
        # @type TmpSecretKey: String
        # @param Token: 临时证书Token
        # @type Token: String

        attr_accessor :TmpSecretId, :TmpSecretKey, :Token
        
        def initialize(tmpsecretid=nil, tmpsecretkey=nil, token=nil)
          @TmpSecretId = tmpsecretid
          @TmpSecretKey = tmpsecretkey
          @Token = token
        end

        def deserialize(params)
          @TmpSecretId = params['TmpSecretId']
          @TmpSecretKey = params['TmpSecretKey']
          @Token = params['Token']
        end
      end

      # 生成包支持操作系统详细信息
      class AssetSupportSys < TencentCloud::Common::AbstractModel
        # @param ImageId: 生成包操作系统的镜像Id
        # @type ImageId: String
        # @param OsType: 生成包操作系统的类型
        # @type OsType: String
        # @param OsBit: 生成包操作系统的位数
        # @type OsBit: Integer
        # @param OsVersion: 生成包操作系统的版本
        # @type OsVersion: String

        attr_accessor :ImageId, :OsType, :OsBit, :OsVersion
        
        def initialize(imageid=nil, ostype=nil, osbit=nil, osversion=nil)
          @ImageId = imageid
          @OsType = ostype
          @OsBit = osbit
          @OsVersion = osversion
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @OsType = params['OsType']
          @OsBit = params['OsBit']
          @OsVersion = params['OsVersion']
        end
      end

      # AttachCcnInstances请求参数结构体
      class AttachCcnInstancesRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队 Id
        # @type FleetId: String
        # @param AccountId: 云联网账号 Uin
        # @type AccountId: String
        # @param CcnId: 云联网 Id
        # @type CcnId: String

        attr_accessor :FleetId, :AccountId, :CcnId
        
        def initialize(fleetid=nil, accountid=nil, ccnid=nil)
          @FleetId = fleetid
          @AccountId = accountid
          @CcnId = ccnid
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @AccountId = params['AccountId']
          @CcnId = params['CcnId']
        end
      end

      # AttachCcnInstances返回参数结构体
      class AttachCcnInstancesResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 云联网实例信息
      class CcnInstanceSets < TencentCloud::Common::AbstractModel
        # @param AccountId: 云联网账号 Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountId: String
        # @param CcnId: 云联网 Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CcnId: String
        # @param CreateTime: 云联网关联时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param InstanceName: 云联网实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param State: 云联网状态：申请中、已连接、已过期、已拒绝、已删除、失败的、关联中、解关联中、解关联失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: String

        attr_accessor :AccountId, :CcnId, :CreateTime, :InstanceName, :State
        
        def initialize(accountid=nil, ccnid=nil, createtime=nil, instancename=nil, state=nil)
          @AccountId = accountid
          @CcnId = ccnid
          @CreateTime = createtime
          @InstanceName = instancename
          @State = state
        end

        def deserialize(params)
          @AccountId = params['AccountId']
          @CcnId = params['CcnId']
          @CreateTime = params['CreateTime']
          @InstanceName = params['InstanceName']
          @State = params['State']
        end
      end

      # CopyFleet请求参数结构体
      class CopyFleetRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队 Id
        # @type FleetId: String
        # @param CopyNumber: 复制数量，最小值1，最大值为剩余配额，可以根据[获取用户配额](https://cloud.tencent.com/document/product/1165/48732)接口获取。
        # @type CopyNumber: Integer
        # @param AssetId: 生成包 Id
        # @type AssetId: String
        # @param Description: 描述，最小长度0，最大长度100
        # @type Description: String
        # @param InboundPermissions: 网络配置
        # @type InboundPermissions: Array
        # @param InstanceType: 服务器类型，参数根据[获取服务器实例类型列表](https://cloud.tencent.com/document/product/1165/48732)接口获取。
        # @type InstanceType: String
        # @param FleetType: 服务器舰队类型，目前只支持ON_DEMAND类型
        # @type FleetType: String
        # @param Name: 服务器舰队名称，最小长度1，最大长度50
        # @type Name: String
        # @param NewGameServerSessionProtectionPolicy: 保护策略：不保护NoProtection、完全保护FullProtection、时限保护TimeLimitProtection
        # @type NewGameServerSessionProtectionPolicy: String
        # @param ResourceCreationLimitPolicy: 资源创建限制策略
        # @type ResourceCreationLimitPolicy: :class:`Tencentcloud::Gse.v20191112.models.ResourceCreationLimitPolicy`
        # @param RuntimeConfiguration: 进程配置
        # @type RuntimeConfiguration: :class:`Tencentcloud::Gse.v20191112.models.RuntimeConfiguration`
        # @param GameServerSessionProtectionTimeLimit: 时限保护超时时间，默认60分钟，最小值5，最大值1440；当NewGameSessionProtectionPolicy为TimeLimitProtection时参数有效
        # @type GameServerSessionProtectionTimeLimit: Integer
        # @param SelectedScalingType: 是否选择扩缩容：SCALING_SELECTED 或者 SCALING_UNSELECTED；默认是 SCALING_UNSELECTED
        # @type SelectedScalingType: String
        # @param SelectedCcnType: 是否选择云联网：CCN_SELECTED 或者 CCN_UNSELECTED；默认是 CCN_UNSELECTED
        # @type SelectedCcnType: String
        # @param Tags: 标签列表，最大长度50组
        # @type Tags: Array
        # @param SystemDiskInfo: 系统盘，储存类型为 SSD 云硬盘（CLOUD_SSD）时，100-500GB；储存类型为高性能云硬盘（CLOUD_PREMIUM）时，50-500GB；容量以1为单位
        # @type SystemDiskInfo: :class:`Tencentcloud::Gse.v20191112.models.DiskInfo`
        # @param DataDiskInfo: 数据盘，储存类型为 SSD 云硬盘（CLOUD_SSD）时，100-32000GB；储存类型为高性能云硬盘（CLOUD_PREMIUM）时，10-32000GB；容量以10为单位
        # @type DataDiskInfo: Array
        # @param SelectedTimerType: 是否选择复制定时器策略：TIMER_SELECTED 或者 TIMER_UNSELECTED；默认是 TIMER_UNSELECTED
        # @type SelectedTimerType: String

        attr_accessor :FleetId, :CopyNumber, :AssetId, :Description, :InboundPermissions, :InstanceType, :FleetType, :Name, :NewGameServerSessionProtectionPolicy, :ResourceCreationLimitPolicy, :RuntimeConfiguration, :GameServerSessionProtectionTimeLimit, :SelectedScalingType, :SelectedCcnType, :Tags, :SystemDiskInfo, :DataDiskInfo, :SelectedTimerType
        
        def initialize(fleetid=nil, copynumber=nil, assetid=nil, description=nil, inboundpermissions=nil, instancetype=nil, fleettype=nil, name=nil, newgameserversessionprotectionpolicy=nil, resourcecreationlimitpolicy=nil, runtimeconfiguration=nil, gameserversessionprotectiontimelimit=nil, selectedscalingtype=nil, selectedccntype=nil, tags=nil, systemdiskinfo=nil, datadiskinfo=nil, selectedtimertype=nil)
          @FleetId = fleetid
          @CopyNumber = copynumber
          @AssetId = assetid
          @Description = description
          @InboundPermissions = inboundpermissions
          @InstanceType = instancetype
          @FleetType = fleettype
          @Name = name
          @NewGameServerSessionProtectionPolicy = newgameserversessionprotectionpolicy
          @ResourceCreationLimitPolicy = resourcecreationlimitpolicy
          @RuntimeConfiguration = runtimeconfiguration
          @GameServerSessionProtectionTimeLimit = gameserversessionprotectiontimelimit
          @SelectedScalingType = selectedscalingtype
          @SelectedCcnType = selectedccntype
          @Tags = tags
          @SystemDiskInfo = systemdiskinfo
          @DataDiskInfo = datadiskinfo
          @SelectedTimerType = selectedtimertype
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @CopyNumber = params['CopyNumber']
          @AssetId = params['AssetId']
          @Description = params['Description']
          unless params['InboundPermissions'].nil?
            @InboundPermissions = []
            params['InboundPermissions'].each do |i|
              @InboundPermissions << InboundPermission.new.deserialize(i)
            end
          end
          @InstanceType = params['InstanceType']
          @FleetType = params['FleetType']
          @Name = params['Name']
          @NewGameServerSessionProtectionPolicy = params['NewGameServerSessionProtectionPolicy']
          unless params['ResourceCreationLimitPolicy'].nil?
            @ResourceCreationLimitPolicy = ResourceCreationLimitPolicy.new.deserialize(params['ResourceCreationLimitPolicy'])
          end
          unless params['RuntimeConfiguration'].nil?
            @RuntimeConfiguration = RuntimeConfiguration.new.deserialize(params['RuntimeConfiguration'])
          end
          @GameServerSessionProtectionTimeLimit = params['GameServerSessionProtectionTimeLimit']
          @SelectedScalingType = params['SelectedScalingType']
          @SelectedCcnType = params['SelectedCcnType']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << Tag.new.deserialize(i)
            end
          end
          unless params['SystemDiskInfo'].nil?
            @SystemDiskInfo = DiskInfo.new.deserialize(params['SystemDiskInfo'])
          end
          unless params['DataDiskInfo'].nil?
            @DataDiskInfo = []
            params['DataDiskInfo'].each do |i|
              @DataDiskInfo << DiskInfo.new.deserialize(i)
            end
          end
          @SelectedTimerType = params['SelectedTimerType']
        end
      end

      # CopyFleet返回参数结构体
      class CopyFleetResponse < TencentCloud::Common::AbstractModel
        # @param FleetAttributes: 服务器舰队属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetAttributes: Array
        # @param TotalCount: 服务器舰队数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FleetAttributes, :TotalCount, :RequestId
        
        def initialize(fleetattributes=nil, totalcount=nil, requestid=nil)
          @FleetAttributes = fleetattributes
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FleetAttributes'].nil?
            @FleetAttributes = []
            params['FleetAttributes'].each do |i|
              @FleetAttributes << FleetAttributes.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # CreateAlias请求参数结构体
      class CreateAliasRequest < TencentCloud::Common::AbstractModel
        # @param Name: 名字，长度不小于1字符不超过1024字符
        # @type Name: String
        # @param RoutingStrategy: 别名的路由配置
        # @type RoutingStrategy: :class:`Tencentcloud::Gse.v20191112.models.RoutingStrategy`
        # @param Description: 别名的可读说明，长度不小于1字符不超过1024字符
        # @type Description: String
        # @param Tags: 标签列表，最大长度50组
        # @type Tags: Array

        attr_accessor :Name, :RoutingStrategy, :Description, :Tags
        
        def initialize(name=nil, routingstrategy=nil, description=nil, tags=nil)
          @Name = name
          @RoutingStrategy = routingstrategy
          @Description = description
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['RoutingStrategy'].nil?
            @RoutingStrategy = RoutingStrategy.new.deserialize(params['RoutingStrategy'])
          end
          @Description = params['Description']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << Tag.new.deserialize(i)
            end
          end
        end
      end

      # CreateAlias返回参数结构体
      class CreateAliasResponse < TencentCloud::Common::AbstractModel
        # @param Alias: 别名对象
        # @type Alias: :class:`Tencentcloud::Gse.v20191112.models.Alias`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Alias, :RequestId
        
        def initialize(_alias=nil, requestid=nil)
          @Alias = _alias
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Alias'].nil?
            @Alias = Alias.new.deserialize(params['Alias'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateAsset请求参数结构体
      class CreateAssetRequest < TencentCloud::Common::AbstractModel
        # @param BucketKey: 生成包的ZIP包名，例如：server.zip
        # @type BucketKey: String
        # @param AssetName: 生成包名字，最小长度为1，最大长度为64
        # @type AssetName: String
        # @param AssetVersion: 生成包版本，最小长度为1，最大长度为64
        # @type AssetVersion: String
        # @param AssetRegion: 生成包所在地域，详见产品支持的 [地域列表](https://cloud.tencent.com/document/api/1165/42053#.E5.9C.B0.E5.9F.9F.E5.88.97.E8.A1.A8)
        # @type AssetRegion: String
        # @param OperateSystem: 生成包可运行的操作系统，若传入参数为CentOS7.16则不需要传入ImageId字段，否则，需要传入Imageid字段（该方式是为了兼容之前的版本，后续建议使用ImageId来替代该字段）
        # @type OperateSystem: String
        # @param ImageId: 生成包支持的操作系统镜像id，若传入OperateSystem字段的值是CentOS7.16，则不需要传入该值；如果不是，则需要通过[DescribeAssetSystems](https://cloud.tencent.com/document/product/1165/49191)接口获取asset支持的操作系统ImageId进行传入
        # @type ImageId: String
        # @param Tags: 标签列表，最大长度50组
        # @type Tags: Array

        attr_accessor :BucketKey, :AssetName, :AssetVersion, :AssetRegion, :OperateSystem, :ImageId, :Tags
        
        def initialize(bucketkey=nil, assetname=nil, assetversion=nil, assetregion=nil, operatesystem=nil, imageid=nil, tags=nil)
          @BucketKey = bucketkey
          @AssetName = assetname
          @AssetVersion = assetversion
          @AssetRegion = assetregion
          @OperateSystem = operatesystem
          @ImageId = imageid
          @Tags = tags
        end

        def deserialize(params)
          @BucketKey = params['BucketKey']
          @AssetName = params['AssetName']
          @AssetVersion = params['AssetVersion']
          @AssetRegion = params['AssetRegion']
          @OperateSystem = params['OperateSystem']
          @ImageId = params['ImageId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << Tag.new.deserialize(i)
            end
          end
        end
      end

      # CreateAsset返回参数结构体
      class CreateAssetResponse < TencentCloud::Common::AbstractModel
        # @param AssetId: 生成包ID
        # @type AssetId: String
        # @param AssetArn: 生成包的全局唯一资源标识符
        # @type AssetArn: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AssetId, :AssetArn, :RequestId
        
        def initialize(assetid=nil, assetarn=nil, requestid=nil)
          @AssetId = assetid
          @AssetArn = assetarn
          @RequestId = requestid
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @AssetArn = params['AssetArn']
          @RequestId = params['RequestId']
        end
      end

      # CreateAssetWithImage请求参数结构体
      class CreateAssetWithImageRequest < TencentCloud::Common::AbstractModel
        # @param AssetName: 生成包名字，最小长度为1，最大长度为64
        # @type AssetName: String
        # @param AssetVersion: 生成包版本，最小长度为1，最大长度为64
        # @type AssetVersion: String
        # @param AssetRegion: 生成包所在地域，详见产品支持的 [地域列表](https://cloud.tencent.com/document/api/1165/42053#.E5.9C.B0.E5.9F.9F.E5.88.97.E8.A1.A8)
        # @type AssetRegion: String
        # @param ImageId: 生成包支持的操作系统镜像id
        # @type ImageId: String
        # @param ImageSize: 操作系统镜像包大小，比如：40GB，支持单位 KB、MB、GB
        # @type ImageSize: String
        # @param ImageOs: 操作系统镜像包名称，最小长度为1，最大长度为64
        # @type ImageOs: String
        # @param OsType: 操作系统镜像包类型，CentOS 或者 Windows
        # @type OsType: String
        # @param ImageType: 操作系统镜像包类型，当前只支持 SHARED_IMAGE
        # @type ImageType: String
        # @param OsBit: 操作系统镜像包位数，32 或者 64
        # @type OsBit: Integer

        attr_accessor :AssetName, :AssetVersion, :AssetRegion, :ImageId, :ImageSize, :ImageOs, :OsType, :ImageType, :OsBit
        
        def initialize(assetname=nil, assetversion=nil, assetregion=nil, imageid=nil, imagesize=nil, imageos=nil, ostype=nil, imagetype=nil, osbit=nil)
          @AssetName = assetname
          @AssetVersion = assetversion
          @AssetRegion = assetregion
          @ImageId = imageid
          @ImageSize = imagesize
          @ImageOs = imageos
          @OsType = ostype
          @ImageType = imagetype
          @OsBit = osbit
        end

        def deserialize(params)
          @AssetName = params['AssetName']
          @AssetVersion = params['AssetVersion']
          @AssetRegion = params['AssetRegion']
          @ImageId = params['ImageId']
          @ImageSize = params['ImageSize']
          @ImageOs = params['ImageOs']
          @OsType = params['OsType']
          @ImageType = params['ImageType']
          @OsBit = params['OsBit']
        end
      end

      # CreateAssetWithImage返回参数结构体
      class CreateAssetWithImageResponse < TencentCloud::Common::AbstractModel
        # @param AssetId: 生成包ID
        # @type AssetId: String
        # @param AssetArn: 生成包的全局唯一资源标识符
        # @type AssetArn: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AssetId, :AssetArn, :RequestId
        
        def initialize(assetid=nil, assetarn=nil, requestid=nil)
          @AssetId = assetid
          @AssetArn = assetarn
          @RequestId = requestid
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @AssetArn = params['AssetArn']
          @RequestId = params['RequestId']
        end
      end

      # CreateFleet请求参数结构体
      class CreateFleetRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 生成包 Id
        # @type AssetId: String
        # @param Description: 描述，最小长度0，最大长度100
        # @type Description: String
        # @param InboundPermissions: 网络配置
        # @type InboundPermissions: Array
        # @param InstanceType: 服务器类型，参数根据[获取服务器实例类型列表](https://cloud.tencent.com/document/product/1165/48732)接口获取。
        # @type InstanceType: String
        # @param FleetType: 服务器舰队类型，目前只支持ON_DEMAND类型
        # @type FleetType: String
        # @param Name: 服务器舰队名称，最小长度1，最大长度50
        # @type Name: String
        # @param NewGameServerSessionProtectionPolicy: 保护策略：不保护NoProtection、完全保护FullProtection、时限保护TimeLimitProtection
        # @type NewGameServerSessionProtectionPolicy: String
        # @param PeerVpcId: VPC 网络 Id，对等连接已不再使用
        # @type PeerVpcId: String
        # @param ResourceCreationLimitPolicy: 资源创建限制策略
        # @type ResourceCreationLimitPolicy: :class:`Tencentcloud::Gse.v20191112.models.ResourceCreationLimitPolicy`
        # @param RuntimeConfiguration: 进程配置
        # @type RuntimeConfiguration: :class:`Tencentcloud::Gse.v20191112.models.RuntimeConfiguration`
        # @param SubNetId: VPC 子网，对等连接已不再使用
        # @type SubNetId: String
        # @param GameServerSessionProtectionTimeLimit: 时限保护超时时间，默认60分钟，最小值5，最大值1440；当NewGameSessionProtectionPolicy为TimeLimitProtection时参数有效
        # @type GameServerSessionProtectionTimeLimit: Integer
        # @param Tags: 标签列表，最大长度50组
        # @type Tags: Array
        # @param SystemDiskInfo: 系统盘，储存类型为 SSD 云硬盘（CLOUD_SSD）时，100-500GB；储存类型为高性能云硬盘（CLOUD_PREMIUM）时，50-500GB；容量以1为单位
        # @type SystemDiskInfo: :class:`Tencentcloud::Gse.v20191112.models.DiskInfo`
        # @param DataDiskInfo: 数据盘，储存类型为 SSD 云硬盘（CLOUD_SSD）时，100-32000GB；储存类型为高性能云硬盘（CLOUD_PREMIUM）时，10-32000GB；容量以10为单位
        # @type DataDiskInfo: Array

        attr_accessor :AssetId, :Description, :InboundPermissions, :InstanceType, :FleetType, :Name, :NewGameServerSessionProtectionPolicy, :PeerVpcId, :ResourceCreationLimitPolicy, :RuntimeConfiguration, :SubNetId, :GameServerSessionProtectionTimeLimit, :Tags, :SystemDiskInfo, :DataDiskInfo
        
        def initialize(assetid=nil, description=nil, inboundpermissions=nil, instancetype=nil, fleettype=nil, name=nil, newgameserversessionprotectionpolicy=nil, peervpcid=nil, resourcecreationlimitpolicy=nil, runtimeconfiguration=nil, subnetid=nil, gameserversessionprotectiontimelimit=nil, tags=nil, systemdiskinfo=nil, datadiskinfo=nil)
          @AssetId = assetid
          @Description = description
          @InboundPermissions = inboundpermissions
          @InstanceType = instancetype
          @FleetType = fleettype
          @Name = name
          @NewGameServerSessionProtectionPolicy = newgameserversessionprotectionpolicy
          @PeerVpcId = peervpcid
          @ResourceCreationLimitPolicy = resourcecreationlimitpolicy
          @RuntimeConfiguration = runtimeconfiguration
          @SubNetId = subnetid
          @GameServerSessionProtectionTimeLimit = gameserversessionprotectiontimelimit
          @Tags = tags
          @SystemDiskInfo = systemdiskinfo
          @DataDiskInfo = datadiskinfo
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @Description = params['Description']
          unless params['InboundPermissions'].nil?
            @InboundPermissions = []
            params['InboundPermissions'].each do |i|
              @InboundPermissions << InboundPermission.new.deserialize(i)
            end
          end
          @InstanceType = params['InstanceType']
          @FleetType = params['FleetType']
          @Name = params['Name']
          @NewGameServerSessionProtectionPolicy = params['NewGameServerSessionProtectionPolicy']
          @PeerVpcId = params['PeerVpcId']
          unless params['ResourceCreationLimitPolicy'].nil?
            @ResourceCreationLimitPolicy = ResourceCreationLimitPolicy.new.deserialize(params['ResourceCreationLimitPolicy'])
          end
          unless params['RuntimeConfiguration'].nil?
            @RuntimeConfiguration = RuntimeConfiguration.new.deserialize(params['RuntimeConfiguration'])
          end
          @SubNetId = params['SubNetId']
          @GameServerSessionProtectionTimeLimit = params['GameServerSessionProtectionTimeLimit']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << Tag.new.deserialize(i)
            end
          end
          unless params['SystemDiskInfo'].nil?
            @SystemDiskInfo = DiskInfo.new.deserialize(params['SystemDiskInfo'])
          end
          unless params['DataDiskInfo'].nil?
            @DataDiskInfo = []
            params['DataDiskInfo'].each do |i|
              @DataDiskInfo << DiskInfo.new.deserialize(i)
            end
          end
        end
      end

      # CreateFleet返回参数结构体
      class CreateFleetResponse < TencentCloud::Common::AbstractModel
        # @param FleetAttributes: 服务器舰队属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetAttributes: :class:`Tencentcloud::Gse.v20191112.models.FleetAttributes`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FleetAttributes, :RequestId
        
        def initialize(fleetattributes=nil, requestid=nil)
          @FleetAttributes = fleetattributes
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FleetAttributes'].nil?
            @FleetAttributes = FleetAttributes.new.deserialize(params['FleetAttributes'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateGameServerSessionQueue请求参数结构体
      class CreateGameServerSessionQueueRequest < TencentCloud::Common::AbstractModel
        # @param Name: 游戏服务器会话队列名称，长度1~128
        # @type Name: String
        # @param Destinations: 目的服务器舰队（可为别名）列表
        # @type Destinations: Array
        # @param PlayerLatencyPolicies: 延迟策略集合
        # @type PlayerLatencyPolicies: Array
        # @param TimeoutInSeconds: 超时时间（单位秒，默认值为600秒）
        # @type TimeoutInSeconds: Integer
        # @param Tags: 标签列表，最大长度50组
        # @type Tags: Array

        attr_accessor :Name, :Destinations, :PlayerLatencyPolicies, :TimeoutInSeconds, :Tags
        
        def initialize(name=nil, destinations=nil, playerlatencypolicies=nil, timeoutinseconds=nil, tags=nil)
          @Name = name
          @Destinations = destinations
          @PlayerLatencyPolicies = playerlatencypolicies
          @TimeoutInSeconds = timeoutinseconds
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Destinations'].nil?
            @Destinations = []
            params['Destinations'].each do |i|
              @Destinations << GameServerSessionQueueDestination.new.deserialize(i)
            end
          end
          unless params['PlayerLatencyPolicies'].nil?
            @PlayerLatencyPolicies = []
            params['PlayerLatencyPolicies'].each do |i|
              @PlayerLatencyPolicies << PlayerLatencyPolicy.new.deserialize(i)
            end
          end
          @TimeoutInSeconds = params['TimeoutInSeconds']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << Tag.new.deserialize(i)
            end
          end
        end
      end

      # CreateGameServerSessionQueue返回参数结构体
      class CreateGameServerSessionQueueResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSessionQueue: 游戏服务器会话队列
        # @type GameServerSessionQueue: :class:`Tencentcloud::Gse.v20191112.models.GameServerSessionQueue`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSessionQueue, :RequestId
        
        def initialize(gameserversessionqueue=nil, requestid=nil)
          @GameServerSessionQueue = gameserversessionqueue
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GameServerSessionQueue'].nil?
            @GameServerSessionQueue = GameServerSessionQueue.new.deserialize(params['GameServerSessionQueue'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateGameServerSession请求参数结构体
      class CreateGameServerSessionRequest < TencentCloud::Common::AbstractModel
        # @param MaximumPlayerSessionCount: 最大玩家数量，最小值不小于0
        # @type MaximumPlayerSessionCount: Integer
        # @param AliasId: 别名ID。每个请求需要指定别名ID 或者舰队 ID，如果两个同时指定时，优先选择舰队 ID
        # @type AliasId: String
        # @param CreatorId: 创建者ID，最大长度不超过1024个ASCII字符
        # @type CreatorId: String
        # @param FleetId: 舰队ID。每个请求需要指定别名ID 或者舰队 ID，如果两个同时指定时，优先选择舰队 ID
        # @type FleetId: String
        # @param GameProperties: 游戏属性，最大长度不超过16组
        # @type GameProperties: Array
        # @param GameServerSessionData: 游戏服务器会话属性详情，最大长度不超过4096个ASCII字符
        # @type GameServerSessionData: String
        # @param GameServerSessionId: 游戏服务器会话自定义ID，最大长度不超过4096个ASCII字符
        # @type GameServerSessionId: String
        # @param IdempotencyToken: 幂等token，最大长度不超过48个ASCII字符
        # @type IdempotencyToken: String
        # @param Name: 游戏服务器会话名称，最大长度不超过1024个ASCII字符
        # @type Name: String

        attr_accessor :MaximumPlayerSessionCount, :AliasId, :CreatorId, :FleetId, :GameProperties, :GameServerSessionData, :GameServerSessionId, :IdempotencyToken, :Name
        
        def initialize(maximumplayersessioncount=nil, aliasid=nil, creatorid=nil, fleetid=nil, gameproperties=nil, gameserversessiondata=nil, gameserversessionid=nil, idempotencytoken=nil, name=nil)
          @MaximumPlayerSessionCount = maximumplayersessioncount
          @AliasId = aliasid
          @CreatorId = creatorid
          @FleetId = fleetid
          @GameProperties = gameproperties
          @GameServerSessionData = gameserversessiondata
          @GameServerSessionId = gameserversessionid
          @IdempotencyToken = idempotencytoken
          @Name = name
        end

        def deserialize(params)
          @MaximumPlayerSessionCount = params['MaximumPlayerSessionCount']
          @AliasId = params['AliasId']
          @CreatorId = params['CreatorId']
          @FleetId = params['FleetId']
          unless params['GameProperties'].nil?
            @GameProperties = []
            params['GameProperties'].each do |i|
              @GameProperties << GameProperty.new.deserialize(i)
            end
          end
          @GameServerSessionData = params['GameServerSessionData']
          @GameServerSessionId = params['GameServerSessionId']
          @IdempotencyToken = params['IdempotencyToken']
          @Name = params['Name']
        end
      end

      # CreateGameServerSession返回参数结构体
      class CreateGameServerSessionResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSession: 游戏服务器会话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSession: :class:`Tencentcloud::Gse.v20191112.models.GameServerSession`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSession, :RequestId
        
        def initialize(gameserversession=nil, requestid=nil)
          @GameServerSession = gameserversession
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GameServerSession'].nil?
            @GameServerSession = GameServerSession.new.deserialize(params['GameServerSession'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 访问实例所需要的凭据
      class Credentials < TencentCloud::Common::AbstractModel
        # @param Secret: ssh私钥
        # @type Secret: String
        # @param UserName: 用户名
        # @type UserName: String

        attr_accessor :Secret, :UserName
        
        def initialize(secret=nil, username=nil)
          @Secret = secret
          @UserName = username
        end

        def deserialize(params)
          @Secret = params['Secret']
          @UserName = params['UserName']
        end
      end

      # DeleteAlias请求参数结构体
      class DeleteAliasRequest < TencentCloud::Common::AbstractModel
        # @param AliasId: 要删除的别名ID
        # @type AliasId: String

        attr_accessor :AliasId
        
        def initialize(aliasid=nil)
          @AliasId = aliasid
        end

        def deserialize(params)
          @AliasId = params['AliasId']
        end
      end

      # DeleteAlias返回参数结构体
      class DeleteAliasResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteAsset请求参数结构体
      class DeleteAssetRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 生成包ID
        # @type AssetId: String

        attr_accessor :AssetId
        
        def initialize(assetid=nil)
          @AssetId = assetid
        end

        def deserialize(params)
          @AssetId = params['AssetId']
        end
      end

      # DeleteAsset返回参数结构体
      class DeleteAssetResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteFleet请求参数结构体
      class DeleteFleetRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队 Id
        # @type FleetId: String

        attr_accessor :FleetId
        
        def initialize(fleetid=nil)
          @FleetId = fleetid
        end

        def deserialize(params)
          @FleetId = params['FleetId']
        end
      end

      # DeleteFleet返回参数结构体
      class DeleteFleetResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteGameServerSessionQueue请求参数结构体
      class DeleteGameServerSessionQueueRequest < TencentCloud::Common::AbstractModel
        # @param Name: 游戏服务器会话队列名字，长度1~128
        # @type Name: String

        attr_accessor :Name
        
        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # DeleteGameServerSessionQueue返回参数结构体
      class DeleteGameServerSessionQueueResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteScalingPolicy请求参数结构体
      class DeleteScalingPolicyRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队ID
        # @type FleetId: String
        # @param Name: 扩缩容策略名称，最小长度为0，最大长度为1024
        # @type Name: String

        attr_accessor :FleetId, :Name
        
        def initialize(fleetid=nil, name=nil)
          @FleetId = fleetid
          @Name = name
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @Name = params['Name']
        end
      end

      # DeleteScalingPolicy返回参数结构体
      class DeleteScalingPolicyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteTimerScalingPolicy请求参数结构体
      class DeleteTimerScalingPolicyRequest < TencentCloud::Common::AbstractModel
        # @param TimerId: 定时器ID, 进行encode
        # @type TimerId: String
        # @param FleetId: 扩缩容配置服务器舰队ID
        # @type FleetId: String
        # @param TimerName: 定时器名称
        # @type TimerName: String

        attr_accessor :TimerId, :FleetId, :TimerName
        
        def initialize(timerid=nil, fleetid=nil, timername=nil)
          @TimerId = timerid
          @FleetId = fleetid
          @TimerName = timername
        end

        def deserialize(params)
          @TimerId = params['TimerId']
          @FleetId = params['FleetId']
          @TimerName = params['TimerName']
        end
      end

      # DeleteTimerScalingPolicy返回参数结构体
      class DeleteTimerScalingPolicyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlias请求参数结构体
      class DescribeAliasRequest < TencentCloud::Common::AbstractModel
        # @param AliasId: 要检索的队列别名的唯一标识符
        # @type AliasId: String

        attr_accessor :AliasId
        
        def initialize(aliasid=nil)
          @AliasId = aliasid
        end

        def deserialize(params)
          @AliasId = params['AliasId']
        end
      end

      # DescribeAlias返回参数结构体
      class DescribeAliasResponse < TencentCloud::Common::AbstractModel
        # @param Alias: 别名对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: :class:`Tencentcloud::Gse.v20191112.models.Alias`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Alias, :RequestId
        
        def initialize(_alias=nil, requestid=nil)
          @Alias = _alias
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Alias'].nil?
            @Alias = Alias.new.deserialize(params['Alias'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAsset请求参数结构体
      class DescribeAssetRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 生成包ID
        # @type AssetId: String

        attr_accessor :AssetId
        
        def initialize(assetid=nil)
          @AssetId = assetid
        end

        def deserialize(params)
          @AssetId = params['AssetId']
        end
      end

      # DescribeAsset返回参数结构体
      class DescribeAssetResponse < TencentCloud::Common::AbstractModel
        # @param Asset: 生成包信息
        # @type Asset: :class:`Tencentcloud::Gse.v20191112.models.Asset`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Asset, :RequestId
        
        def initialize(asset=nil, requestid=nil)
          @Asset = asset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Asset'].nil?
            @Asset = Asset.new.deserialize(params['Asset'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetSystems请求参数结构体
      class DescribeAssetSystemsRequest < TencentCloud::Common::AbstractModel
        # @param OsType: 生成包支持的操作系统类型
        # @type OsType: String
        # @param OsBit: 生成包支持的操作系统位数
        # @type OsBit: Integer

        attr_accessor :OsType, :OsBit
        
        def initialize(ostype=nil, osbit=nil)
          @OsType = ostype
          @OsBit = osbit
        end

        def deserialize(params)
          @OsType = params['OsType']
          @OsBit = params['OsBit']
        end
      end

      # DescribeAssetSystems返回参数结构体
      class DescribeAssetSystemsResponse < TencentCloud::Common::AbstractModel
        # @param AssetSupportSys: 生成包支持的操作系统类型列表
        # @type AssetSupportSys: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AssetSupportSys, :RequestId
        
        def initialize(assetsupportsys=nil, requestid=nil)
          @AssetSupportSys = assetsupportsys
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AssetSupportSys'].nil?
            @AssetSupportSys = []
            params['AssetSupportSys'].each do |i|
              @AssetSupportSys << AssetSupportSys.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssets请求参数结构体
      class DescribeAssetsRequest < TencentCloud::Common::AbstractModel
        # @param AssetRegion: 生成包支持的可部署 [地域列表](https://cloud.tencent.com/document/api/1165/42053#.E5.9C.B0.E5.9F.9F.E5.88.97.E8.A1.A8)
        # @type AssetRegion: String
        # @param Offset: 偏移，代表页数，与asset实际数量相关
        # @type Offset: Integer
        # @param Limit: 前端界面每页显示的最大条数，不超过100
        # @type Limit: Integer
        # @param Filter: 搜索条件，支持包ID或包名字过滤，该字段会逐步废弃，建议使用 Filters 字段
        # @type Filter: String
        # @param Filters: 资源过滤字段，可以按照资源名称、资源ID和标签进行过滤- 资源名称过滤    - Key: 固定字符串 "resource:name"    - Values: 资源名称数组（生成包当前仅支持单个名称的过滤）- 资源ID过滤    - Key: 固定字符串 "resource:resourceId"    - Values: 生成包ID数组（生成包当前仅支持单个生成包ID的过滤）- 标签过滤    - 通过标签键过滤        - Key: 固定字符串 "tag:key"        - Values 不传    - 通过标签键值过滤        - Key: 固定字符串 "tag:key-value"        - Values: 标签键值对数组，例如 ["key1:value1", "key1:value2", "key2:value2"]
        # @type Filters: Array

        attr_accessor :AssetRegion, :Offset, :Limit, :Filter, :Filters
        
        def initialize(assetregion=nil, offset=nil, limit=nil, filter=nil, filters=nil)
          @AssetRegion = assetregion
          @Offset = offset
          @Limit = limit
          @Filter = filter
          @Filters = filters
        end

        def deserialize(params)
          @AssetRegion = params['AssetRegion']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Filter = params['Filter']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
        end
      end

      # DescribeAssets返回参数结构体
      class DescribeAssetsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 生成包总数
        # @type TotalCount: Integer
        # @param Assets: 生成包列表
        # @type Assets: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Assets, :RequestId
        
        def initialize(totalcount=nil, assets=nil, requestid=nil)
          @TotalCount = totalcount
          @Assets = assets
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Assets'].nil?
            @Assets = []
            params['Assets'].each do |i|
              @Assets << Asset.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCcnInstances请求参数结构体
      class DescribeCcnInstancesRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队 Id
        # @type FleetId: String

        attr_accessor :FleetId
        
        def initialize(fleetid=nil)
          @FleetId = fleetid
        end

        def deserialize(params)
          @FleetId = params['FleetId']
        end
      end

      # DescribeCcnInstances返回参数结构体
      class DescribeCcnInstancesResponse < TencentCloud::Common::AbstractModel
        # @param CcnInstanceSets: 云联网实例信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CcnInstanceSets: Array
        # @param TotalCount: 云联网实例个数，最小值为0
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CcnInstanceSets, :TotalCount, :RequestId
        
        def initialize(ccninstancesets=nil, totalcount=nil, requestid=nil)
          @CcnInstanceSets = ccninstancesets
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CcnInstanceSets'].nil?
            @CcnInstanceSets = []
            params['CcnInstanceSets'].each do |i|
              @CcnInstanceSets << CcnInstanceSets.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFleetAttributes请求参数结构体
      class DescribeFleetAttributesRequest < TencentCloud::Common::AbstractModel
        # @param FleetIds: 服务器舰队 Ids
        # @type FleetIds: Array
        # @param Limit: 结果返回最大数量，默认值20，最大值100
        # @type Limit: Integer
        # @param Offset: 返回结果偏移，最小值0
        # @type Offset: Integer

        attr_accessor :FleetIds, :Limit, :Offset
        
        def initialize(fleetids=nil, limit=nil, offset=nil)
          @FleetIds = fleetids
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @FleetIds = params['FleetIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeFleetAttributes返回参数结构体
      class DescribeFleetAttributesResponse < TencentCloud::Common::AbstractModel
        # @param FleetAttributes: 服务器舰队属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetAttributes: Array
        # @param TotalCount: 服务器舰队总数，最小值0
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FleetAttributes, :TotalCount, :RequestId
        
        def initialize(fleetattributes=nil, totalcount=nil, requestid=nil)
          @FleetAttributes = fleetattributes
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FleetAttributes'].nil?
            @FleetAttributes = []
            params['FleetAttributes'].each do |i|
              @FleetAttributes << FleetAttributes.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFleetCapacity请求参数结构体
      class DescribeFleetCapacityRequest < TencentCloud::Common::AbstractModel
        # @param FleetIds: 服务器舰队ID列表
        # @type FleetIds: Array
        # @param Limit: 结果返回最大数量，最大值 100
        # @type Limit: Integer
        # @param Offset: 返回结果偏移，最小值 0
        # @type Offset: Integer

        attr_accessor :FleetIds, :Limit, :Offset
        
        def initialize(fleetids=nil, limit=nil, offset=nil)
          @FleetIds = fleetids
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @FleetIds = params['FleetIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeFleetCapacity返回参数结构体
      class DescribeFleetCapacityResponse < TencentCloud::Common::AbstractModel
        # @param FleetCapacity: 服务器舰队的容量配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetCapacity: Array
        # @param TotalCount: 结果返回最大数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FleetCapacity, :TotalCount, :RequestId
        
        def initialize(fleetcapacity=nil, totalcount=nil, requestid=nil)
          @FleetCapacity = fleetcapacity
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FleetCapacity'].nil?
            @FleetCapacity = []
            params['FleetCapacity'].each do |i|
              @FleetCapacity << FleetCapacity.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFleetEvents请求参数结构体
      class DescribeFleetEventsRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队 Id
        # @type FleetId: String
        # @param Limit: 分页时返回服务器舰队事件的数量，默认为20，最大值为100
        # @type Limit: Integer
        # @param Offset: 分页时的数据偏移量，默认为0
        # @type Offset: Integer

        attr_accessor :FleetId, :Limit, :Offset
        
        def initialize(fleetid=nil, limit=nil, offset=nil)
          @FleetId = fleetid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeFleetEvents返回参数结构体
      class DescribeFleetEventsResponse < TencentCloud::Common::AbstractModel
        # @param Events: 返回的事件列表
        # @type Events: Array
        # @param TotalCount: 返回的事件总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Events, :TotalCount, :RequestId
        
        def initialize(events=nil, totalcount=nil, requestid=nil)
          @Events = events
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              @Events << Event.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFleetPortSettings请求参数结构体
      class DescribeFleetPortSettingsRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队 Id
        # @type FleetId: String

        attr_accessor :FleetId
        
        def initialize(fleetid=nil)
          @FleetId = fleetid
        end

        def deserialize(params)
          @FleetId = params['FleetId']
        end
      end

      # DescribeFleetPortSettings返回参数结构体
      class DescribeFleetPortSettingsResponse < TencentCloud::Common::AbstractModel
        # @param InboundPermissions: 安全组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InboundPermissions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InboundPermissions, :RequestId
        
        def initialize(inboundpermissions=nil, requestid=nil)
          @InboundPermissions = inboundpermissions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InboundPermissions'].nil?
            @InboundPermissions = []
            params['InboundPermissions'].each do |i|
              @InboundPermissions << InboundPermission.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFleetStatisticDetails请求参数结构体
      class DescribeFleetStatisticDetailsRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队ID
        # @type FleetId: String
        # @param BeginTime: 查询开始时间，时间格式：YYYY-MM-DD hh:mm:ss
        # @type BeginTime: String
        # @param EndTime: 查询结束时间，时间格式：YYYY-MM-DD hh:mm:ss
        # @type EndTime: String
        # @param Limit: 结果返回最大数量，最小值0，最大值100
        # @type Limit: Integer
        # @param Offset: 返回结果偏移，最小值0
        # @type Offset: Integer

        attr_accessor :FleetId, :BeginTime, :EndTime, :Limit, :Offset
        
        def initialize(fleetid=nil, begintime=nil, endtime=nil, limit=nil, offset=nil)
          @FleetId = fleetid
          @BeginTime = begintime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeFleetStatisticDetails返回参数结构体
      class DescribeFleetStatisticDetailsResponse < TencentCloud::Common::AbstractModel
        # @param DetailList: 服务部署统计详情列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetailList: Array
        # @param TotalCount: 记录总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TimeType: 统计时间类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DetailList, :TotalCount, :TimeType, :RequestId
        
        def initialize(detaillist=nil, totalcount=nil, timetype=nil, requestid=nil)
          @DetailList = detaillist
          @TotalCount = totalcount
          @TimeType = timetype
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DetailList'].nil?
            @DetailList = []
            params['DetailList'].each do |i|
              @DetailList << FleetStatisticDetail.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @TimeType = params['TimeType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFleetStatisticFlows请求参数结构体
      class DescribeFleetStatisticFlowsRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队ID
        # @type FleetId: String
        # @param BeginTime: 查询开始时间，时间格式：YYYY-MM-DD hh:mm:ss
        # @type BeginTime: String
        # @param EndTime: 查询结束时间，时间格式：YYYY-MM-DD hh:mm:ss
        # @type EndTime: String
        # @param Limit: 结果返回最大数量，最小值0，最大值100
        # @type Limit: Integer
        # @param Offset: 返回结果偏移，最小值0
        # @type Offset: Integer

        attr_accessor :FleetId, :BeginTime, :EndTime, :Limit, :Offset
        
        def initialize(fleetid=nil, begintime=nil, endtime=nil, limit=nil, offset=nil)
          @FleetId = fleetid
          @BeginTime = begintime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeFleetStatisticFlows返回参数结构体
      class DescribeFleetStatisticFlowsResponse < TencentCloud::Common::AbstractModel
        # @param UsedFlowList: 流量统计列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedFlowList: Array
        # @param UsedTimeList: 时长统计列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedTimeList: Array
        # @param TotalCount: 记录总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TimeType: 统计时间类型，取值：小时和天
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UsedFlowList, :UsedTimeList, :TotalCount, :TimeType, :RequestId
        
        def initialize(usedflowlist=nil, usedtimelist=nil, totalcount=nil, timetype=nil, requestid=nil)
          @UsedFlowList = usedflowlist
          @UsedTimeList = usedtimelist
          @TotalCount = totalcount
          @TimeType = timetype
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UsedFlowList'].nil?
            @UsedFlowList = []
            params['UsedFlowList'].each do |i|
              @UsedFlowList << FleetStatisticFlows.new.deserialize(i)
            end
          end
          unless params['UsedTimeList'].nil?
            @UsedTimeList = []
            params['UsedTimeList'].each do |i|
              @UsedTimeList << FleetStatisticTimes.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @TimeType = params['TimeType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFleetStatisticSummary请求参数结构体
      class DescribeFleetStatisticSummaryRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队ID
        # @type FleetId: String
        # @param BeginTime: 查询开始时间，时间格式: YYYY-MM-DD hh:mm:ss
        # @type BeginTime: String
        # @param EndTime: 查询结束时间，时间格式: YYYY-MM-DD hh:mm:ss
        # @type EndTime: String

        attr_accessor :FleetId, :BeginTime, :EndTime
        
        def initialize(fleetid=nil, begintime=nil, endtime=nil)
          @FleetId = fleetid
          @BeginTime = begintime
          @EndTime = endtime
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeFleetStatisticSummary返回参数结构体
      class DescribeFleetStatisticSummaryResponse < TencentCloud::Common::AbstractModel
        # @param TotalUsedTimeSeconds: 总时长，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalUsedTimeSeconds: String
        # @param TotalUsedFlowMegaBytes: 总流量，单位MB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalUsedFlowMegaBytes: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalUsedTimeSeconds, :TotalUsedFlowMegaBytes, :RequestId
        
        def initialize(totalusedtimeseconds=nil, totalusedflowmegabytes=nil, requestid=nil)
          @TotalUsedTimeSeconds = totalusedtimeseconds
          @TotalUsedFlowMegaBytes = totalusedflowmegabytes
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalUsedTimeSeconds = params['TotalUsedTimeSeconds']
          @TotalUsedFlowMegaBytes = params['TotalUsedFlowMegaBytes']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFleetUtilization请求参数结构体
      class DescribeFleetUtilizationRequest < TencentCloud::Common::AbstractModel
        # @param FleetIds: 服务器舰队 Ids
        # @type FleetIds: Array

        attr_accessor :FleetIds
        
        def initialize(fleetids=nil)
          @FleetIds = fleetids
        end

        def deserialize(params)
          @FleetIds = params['FleetIds']
        end
      end

      # DescribeFleetUtilization返回参数结构体
      class DescribeFleetUtilizationResponse < TencentCloud::Common::AbstractModel
        # @param FleetUtilization: 服务器舰队利用率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetUtilization: Array
        # @param TotalCount: 总数，最小值0
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FleetUtilization, :TotalCount, :RequestId
        
        def initialize(fleetutilization=nil, totalcount=nil, requestid=nil)
          @FleetUtilization = fleetutilization
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FleetUtilization'].nil?
            @FleetUtilization = []
            params['FleetUtilization'].each do |i|
              @FleetUtilization << FleetUtilization.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGameServerSessionDetails请求参数结构体
      class DescribeGameServerSessionDetailsRequest < TencentCloud::Common::AbstractModel
        # @param AliasId: 别名ID
        # @type AliasId: String
        # @param FleetId: 舰队ID
        # @type FleetId: String
        # @param GameServerSessionId: 游戏服务器会话ID，最小长度不小于1个ASCII字符，最大长度不超过48个ASCII字符
        # @type GameServerSessionId: String
        # @param Limit: 单次查询记录数上限
        # @type Limit: Integer
        # @param NextToken: 页偏移，用于查询下一页，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        # @type NextToken: String
        # @param StatusFilter: 游戏服务器会话状态(ACTIVE,ACTIVATING,TERMINATED,TERMINATING,ERROR)
        # @type StatusFilter: String

        attr_accessor :AliasId, :FleetId, :GameServerSessionId, :Limit, :NextToken, :StatusFilter
        
        def initialize(aliasid=nil, fleetid=nil, gameserversessionid=nil, limit=nil, nexttoken=nil, statusfilter=nil)
          @AliasId = aliasid
          @FleetId = fleetid
          @GameServerSessionId = gameserversessionid
          @Limit = limit
          @NextToken = nexttoken
          @StatusFilter = statusfilter
        end

        def deserialize(params)
          @AliasId = params['AliasId']
          @FleetId = params['FleetId']
          @GameServerSessionId = params['GameServerSessionId']
          @Limit = params['Limit']
          @NextToken = params['NextToken']
          @StatusFilter = params['StatusFilter']
        end
      end

      # DescribeGameServerSessionDetails返回参数结构体
      class DescribeGameServerSessionDetailsResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSessionDetails: 游戏服务器会话详情列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessionDetails: Array
        # @param NextToken: 页偏移，用于查询下一页，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSessionDetails, :NextToken, :RequestId
        
        def initialize(gameserversessiondetails=nil, nexttoken=nil, requestid=nil)
          @GameServerSessionDetails = gameserversessiondetails
          @NextToken = nexttoken
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GameServerSessionDetails'].nil?
            @GameServerSessionDetails = []
            params['GameServerSessionDetails'].each do |i|
              @GameServerSessionDetails << GameServerSessionDetail.new.deserialize(i)
            end
          end
          @NextToken = params['NextToken']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGameServerSessionPlacement请求参数结构体
      class DescribeGameServerSessionPlacementRequest < TencentCloud::Common::AbstractModel
        # @param PlacementId: 游戏服务器会话放置的唯一标识符
        # @type PlacementId: String

        attr_accessor :PlacementId
        
        def initialize(placementid=nil)
          @PlacementId = placementid
        end

        def deserialize(params)
          @PlacementId = params['PlacementId']
        end
      end

      # DescribeGameServerSessionPlacement返回参数结构体
      class DescribeGameServerSessionPlacementResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSessionPlacement: 游戏服务器会话放置
        # @type GameServerSessionPlacement: :class:`Tencentcloud::Gse.v20191112.models.GameServerSessionPlacement`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSessionPlacement, :RequestId
        
        def initialize(gameserversessionplacement=nil, requestid=nil)
          @GameServerSessionPlacement = gameserversessionplacement
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GameServerSessionPlacement'].nil?
            @GameServerSessionPlacement = GameServerSessionPlacement.new.deserialize(params['GameServerSessionPlacement'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGameServerSessionQueues请求参数结构体
      class DescribeGameServerSessionQueuesRequest < TencentCloud::Common::AbstractModel
        # @param Names: 游戏服务器会话队列名称数组，单个名字长度1~128
        # @type Names: Array
        # @param Limit: 结果返回最大数量，最小值0，最大值100
        # @type Limit: Integer
        # @param Offset: 返回结果偏移，最小值0
        # @type Offset: Integer
        # @param Filters: 资源过滤字段，可以按照资源名称、资源ID和标签进行过滤- 资源名称过滤    - Key: 固定字符串 "resource:name"    - Values: 资源名称数组（游戏服务器会话队列支持多个名称的过滤）- 标签过滤    - 通过标签键过滤        - Key: 固定字符串 "tag:key"        - Values 不传    - 通过标签键值过滤        - Key: 固定字符串 "tag:key-value"        - Values: 标签键值对数组，例如 ["key1:value1", "key1:value2", "key2:value2"]
        # @type Filters: Array

        attr_accessor :Names, :Limit, :Offset, :Filters
        
        def initialize(names=nil, limit=nil, offset=nil, filters=nil)
          @Names = names
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Names = params['Names']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
        end
      end

      # DescribeGameServerSessionQueues返回参数结构体
      class DescribeGameServerSessionQueuesResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSessionQueues: 游戏服务器会话队列数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessionQueues: Array
        # @param TotalCount: 游戏服务器会话队列总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSessionQueues, :TotalCount, :RequestId
        
        def initialize(gameserversessionqueues=nil, totalcount=nil, requestid=nil)
          @GameServerSessionQueues = gameserversessionqueues
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GameServerSessionQueues'].nil?
            @GameServerSessionQueues = []
            params['GameServerSessionQueues'].each do |i|
              @GameServerSessionQueues << GameServerSessionQueue.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGameServerSessions请求参数结构体
      class DescribeGameServerSessionsRequest < TencentCloud::Common::AbstractModel
        # @param AliasId: 别名ID
        # @type AliasId: String
        # @param FleetId: 舰队ID
        # @type FleetId: String
        # @param GameServerSessionId: 游戏服务器会话ID，最小长度不小于1个ASCII字符，最大长度不超过48个ASCII字符
        # @type GameServerSessionId: String
        # @param Limit: 单次查询记录数上限
        # @type Limit: Integer
        # @param NextToken: 页偏移，用于查询下一页，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        # @type NextToken: String
        # @param StatusFilter: 游戏服务器会话状态(ACTIVE,ACTIVATING,TERMINATED,TERMINATING,ERROR)
        # @type StatusFilter: String

        attr_accessor :AliasId, :FleetId, :GameServerSessionId, :Limit, :NextToken, :StatusFilter
        
        def initialize(aliasid=nil, fleetid=nil, gameserversessionid=nil, limit=nil, nexttoken=nil, statusfilter=nil)
          @AliasId = aliasid
          @FleetId = fleetid
          @GameServerSessionId = gameserversessionid
          @Limit = limit
          @NextToken = nexttoken
          @StatusFilter = statusfilter
        end

        def deserialize(params)
          @AliasId = params['AliasId']
          @FleetId = params['FleetId']
          @GameServerSessionId = params['GameServerSessionId']
          @Limit = params['Limit']
          @NextToken = params['NextToken']
          @StatusFilter = params['StatusFilter']
        end
      end

      # DescribeGameServerSessions返回参数结构体
      class DescribeGameServerSessionsResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSessions: 游戏服务器会话列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessions: Array
        # @param NextToken: 页偏移，用于查询下一页，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSessions, :NextToken, :RequestId
        
        def initialize(gameserversessions=nil, nexttoken=nil, requestid=nil)
          @GameServerSessions = gameserversessions
          @NextToken = nexttoken
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GameServerSessions'].nil?
            @GameServerSessions = []
            params['GameServerSessions'].each do |i|
              @GameServerSessions << GameServerSession.new.deserialize(i)
            end
          end
          @NextToken = params['NextToken']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceLimit请求参数结构体
      class DescribeInstanceLimitRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeInstanceLimit返回参数结构体
      class DescribeInstanceLimitResponse < TencentCloud::Common::AbstractModel
        # @param Limit: 限额
        # @type Limit: Integer
        # @param ExtraInfos: 详细信息
        # @type ExtraInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Limit, :ExtraInfos, :RequestId
        
        def initialize(limit=nil, extrainfos=nil, requestid=nil)
          @Limit = limit
          @ExtraInfos = extrainfos
          @RequestId = requestid
        end

        def deserialize(params)
          @Limit = params['Limit']
          unless params['ExtraInfos'].nil?
            @ExtraInfos = []
            params['ExtraInfos'].each do |i|
              @ExtraInfos << ExtraInfos.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceTypes请求参数结构体
      class DescribeInstanceTypesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeInstanceTypes返回参数结构体
      class DescribeInstanceTypesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceTypeList: 服务器实例类型列表
        # @type InstanceTypeList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceTypeList, :RequestId
        
        def initialize(instancetypelist=nil, requestid=nil)
          @InstanceTypeList = instancetypelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceTypeList'].nil?
            @InstanceTypeList = []
            params['InstanceTypeList'].each do |i|
              @InstanceTypeList << InstanceTypeInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesExtend请求参数结构体
      class DescribeInstancesExtendRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队ID
        # @type FleetId: String
        # @param Offset: 返回结果偏移，最小值0
        # @type Offset: Integer
        # @param Limit: 结果返回最大数量，最小值0，最大值100
        # @type Limit: Integer

        attr_accessor :FleetId, :Offset, :Limit
        
        def initialize(fleetid=nil, offset=nil, limit=nil)
          @FleetId = fleetid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeInstancesExtend返回参数结构体
      class DescribeInstancesExtendResponse < TencentCloud::Common::AbstractModel
        # @param Instances: 实例信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Instances: Array
        # @param TotalCount: 梳理信息总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Instances, :TotalCount, :RequestId
        
        def initialize(instances=nil, totalcount=nil, requestid=nil)
          @Instances = instances
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              @Instances << InstanceExtend.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队ID
        # @type FleetId: String
        # @param InstanceId: CVM实例ID
        # @type InstanceId: String
        # @param Offset: 结果返回最大数量，最小值0，最大值100
        # @type Offset: Integer
        # @param Limit: 返回结果偏移，最小值0
        # @type Limit: Integer

        attr_accessor :FleetId, :InstanceId, :Offset, :Limit
        
        def initialize(fleetid=nil, instanceid=nil, offset=nil, limit=nil)
          @FleetId = fleetid
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Instances: 实例信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Instances: Array
        # @param TotalCount: 结果返回最大数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Instances, :TotalCount, :RequestId
        
        def initialize(instances=nil, totalcount=nil, requestid=nil)
          @Instances = instances
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              @Instances << Instance.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribePlayerSessions请求参数结构体
      class DescribePlayerSessionsRequest < TencentCloud::Common::AbstractModel
        # @param GameServerSessionId: 游戏服务器会话ID，最小长度不小于1个ASCII字符，最大长度不超过48个ASCII字符
        # @type GameServerSessionId: String
        # @param Limit: 单次查询记录数上限
        # @type Limit: Integer
        # @param NextToken: 页偏移，用于查询下一页，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        # @type NextToken: String
        # @param PlayerId: 玩家ID，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        # @type PlayerId: String
        # @param PlayerSessionId: 玩家会话ID，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        # @type PlayerSessionId: String
        # @param PlayerSessionStatusFilter: 玩家会话状态（RESERVED,ACTIVE,COMPLETED,TIMEDOUT）
        # @type PlayerSessionStatusFilter: String

        attr_accessor :GameServerSessionId, :Limit, :NextToken, :PlayerId, :PlayerSessionId, :PlayerSessionStatusFilter
        
        def initialize(gameserversessionid=nil, limit=nil, nexttoken=nil, playerid=nil, playersessionid=nil, playersessionstatusfilter=nil)
          @GameServerSessionId = gameserversessionid
          @Limit = limit
          @NextToken = nexttoken
          @PlayerId = playerid
          @PlayerSessionId = playersessionid
          @PlayerSessionStatusFilter = playersessionstatusfilter
        end

        def deserialize(params)
          @GameServerSessionId = params['GameServerSessionId']
          @Limit = params['Limit']
          @NextToken = params['NextToken']
          @PlayerId = params['PlayerId']
          @PlayerSessionId = params['PlayerSessionId']
          @PlayerSessionStatusFilter = params['PlayerSessionStatusFilter']
        end
      end

      # DescribePlayerSessions返回参数结构体
      class DescribePlayerSessionsResponse < TencentCloud::Common::AbstractModel
        # @param PlayerSessions: 玩家会话列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayerSessions: Array
        # @param NextToken: 页偏移，用于查询下一页，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlayerSessions, :NextToken, :RequestId
        
        def initialize(playersessions=nil, nexttoken=nil, requestid=nil)
          @PlayerSessions = playersessions
          @NextToken = nexttoken
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PlayerSessions'].nil?
            @PlayerSessions = []
            params['PlayerSessions'].each do |i|
              @PlayerSessions << PlayerSession.new.deserialize(i)
            end
          end
          @NextToken = params['NextToken']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuntimeConfiguration请求参数结构体
      class DescribeRuntimeConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队 Id
        # @type FleetId: String

        attr_accessor :FleetId
        
        def initialize(fleetid=nil)
          @FleetId = fleetid
        end

        def deserialize(params)
          @FleetId = params['FleetId']
        end
      end

      # DescribeRuntimeConfiguration返回参数结构体
      class DescribeRuntimeConfigurationResponse < TencentCloud::Common::AbstractModel
        # @param RuntimeConfiguration: 服务器舰队运行配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeConfiguration: :class:`Tencentcloud::Gse.v20191112.models.RuntimeConfiguration`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuntimeConfiguration, :RequestId
        
        def initialize(runtimeconfiguration=nil, requestid=nil)
          @RuntimeConfiguration = runtimeconfiguration
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuntimeConfiguration'].nil?
            @RuntimeConfiguration = RuntimeConfiguration.new.deserialize(params['RuntimeConfiguration'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScalingPolicies请求参数结构体
      class DescribeScalingPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队ID
        # @type FleetId: String
        # @param StatusFilter: 状态过滤条件，取值：ACTIVE表示活跃
        # @type StatusFilter: String
        # @param Offset: 返回结果偏移，最小值0
        # @type Offset: Integer
        # @param Limit: 结果返回最大数量，最小值0，最大值100
        # @type Limit: Integer

        attr_accessor :FleetId, :StatusFilter, :Offset, :Limit
        
        def initialize(fleetid=nil, statusfilter=nil, offset=nil, limit=nil)
          @FleetId = fleetid
          @StatusFilter = statusfilter
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @StatusFilter = params['StatusFilter']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeScalingPolicies返回参数结构体
      class DescribeScalingPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param ScalingPolicies: 动态扩缩容配置策略数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScalingPolicies: Array
        # @param TotalCount: 动态扩缩容配置策略总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScalingPolicies, :TotalCount, :RequestId
        
        def initialize(scalingpolicies=nil, totalcount=nil, requestid=nil)
          @ScalingPolicies = scalingpolicies
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ScalingPolicies'].nil?
            @ScalingPolicies = []
            params['ScalingPolicies'].each do |i|
              @ScalingPolicies << ScalingPolicy.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTimerScalingPolicies请求参数结构体
      class DescribeTimerScalingPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 扩缩容配置服务器舰队ID
        # @type FleetId: String
        # @param TimerName: 定时器名称
        # @type TimerName: String
        # @param BeginTime: 定时器开始时间
        # @type BeginTime: String
        # @param EndTime: 定时器结束时间
        # @type EndTime: String
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Limit: 页大小
        # @type Limit: Integer

        attr_accessor :FleetId, :TimerName, :BeginTime, :EndTime, :Offset, :Limit
        
        def initialize(fleetid=nil, timername=nil, begintime=nil, endtime=nil, offset=nil, limit=nil)
          @FleetId = fleetid
          @TimerName = timername
          @BeginTime = begintime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @TimerName = params['TimerName']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTimerScalingPolicies返回参数结构体
      class DescribeTimerScalingPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param TimerScalingPolicies: 定时器扩缩容策略配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimerScalingPolicies: Array
        # @param TotalCount: 定时器总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TimerScalingPolicies, :TotalCount, :RequestId
        
        def initialize(timerscalingpolicies=nil, totalcount=nil, requestid=nil)
          @TimerScalingPolicies = timerscalingpolicies
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TimerScalingPolicies'].nil?
            @TimerScalingPolicies = []
            params['TimerScalingPolicies'].each do |i|
              @TimerScalingPolicies << TimerScalingPolicy.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserQuota请求参数结构体
      class DescribeUserQuotaRequest < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型
        # @type ResourceType: Integer

        attr_accessor :ResourceType
        
        def initialize(resourcetype=nil)
          @ResourceType = resourcetype
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
        end
      end

      # DescribeUserQuota返回参数结构体
      class DescribeUserQuotaResponse < TencentCloud::Common::AbstractModel
        # @param QuotaResource: 配额资源信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuotaResource: :class:`Tencentcloud::Gse.v20191112.models.QuotaResource`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QuotaResource, :RequestId
        
        def initialize(quotaresource=nil, requestid=nil)
          @QuotaResource = quotaresource
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['QuotaResource'].nil?
            @QuotaResource = QuotaResource.new.deserialize(params['QuotaResource'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserQuotas请求参数结构体
      class DescribeUserQuotasRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeUserQuotas返回参数结构体
      class DescribeUserQuotasResponse < TencentCloud::Common::AbstractModel
        # @param QuotaResource: 配额信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuotaResource: Array
        # @param Total: 配额信息列表总数，最小值0
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QuotaResource, :Total, :RequestId
        
        def initialize(quotaresource=nil, total=nil, requestid=nil)
          @QuotaResource = quotaresource
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['QuotaResource'].nil?
            @QuotaResource = []
            params['QuotaResource'].each do |i|
              @QuotaResource << QuotaResource.new.deserialize(i)
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # 玩家游戏会话信息
      class DesiredPlayerSession < TencentCloud::Common::AbstractModel
        # @param PlayerId: 与玩家会话关联的唯一玩家标识
        # @type PlayerId: String
        # @param PlayerData: 开发人员定义的玩家数据
        # @type PlayerData: String

        attr_accessor :PlayerId, :PlayerData
        
        def initialize(playerid=nil, playerdata=nil)
          @PlayerId = playerid
          @PlayerData = playerdata
        end

        def deserialize(params)
          @PlayerId = params['PlayerId']
          @PlayerData = params['PlayerData']
        end
      end

      # DetachCcnInstances请求参数结构体
      class DetachCcnInstancesRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队 Id
        # @type FleetId: String

        attr_accessor :FleetId
        
        def initialize(fleetid=nil)
          @FleetId = fleetid
        end

        def deserialize(params)
          @FleetId = params['FleetId']
        end
      end

      # DetachCcnInstances返回参数结构体
      class DetachCcnInstancesResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 磁盘存储信息
      class DiskInfo < TencentCloud::Common::AbstractModel
        # @param DiskType: 磁盘类型，支持：高性能云硬盘（CLOUD_PREMIUM）、SSD云硬盘（CLOUD_SSD）
        # @type DiskType: String
        # @param DiskSize: 系统盘：可选硬盘容量，50-500GB，数字以1为单位，数据盘：可选硬盘容量：10-32000GB，数字以10为单位；当磁盘类型为SSD云硬盘（CLOUD_SSD）最小大小为 100GB
        # @type DiskSize: Integer

        attr_accessor :DiskType, :DiskSize
        
        def initialize(disktype=nil, disksize=nil)
          @DiskType = disktype
          @DiskSize = disksize
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
        end
      end

      # 事件对象
      class Event < TencentCloud::Common::AbstractModel
        # @param EventCode: 事件代码，支持以下的事件代码

        # - FLEET_CREATED
        # - FLEET_STATE_DOWNLOADING
        # - FLEET_BINARY_DOWNLOAD_FAILED
        # - FLEET_CREATION_EXTRACTING_BUILD
        # - FLEET_CREATION_VALIDATING_RUNTIME_CONFIG
        # - FLEET_STATE_VALIDATING
        # - FLEET_STATE_BUILDING
        # - FLEET_STATE_ACTIVATING
        # - FLEET_STATE_ACTIVE
        # - FLEET_SCALING_EVENT
        # - FLEET_STATE_ERROR
        # - FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND
        # - FLEET_ACTIVATION_FAILED_NO_INSTANCES
        # - FLEET_VPC_PEERING_SUCCEEDED
        # - FLEET_VPC_PEERING_FAILED
        # - FLEET_VPC_PEERING_DELETE
        # - FLEET_INITIALIZATION_FAILED
        # - FLEET_DELETED
        # - FLEET_STATE_DELETING
        # - FLEET_ACTIVATION_FAILED
        # - GAME_SESSION_ACTIVATION_TIMEOUT
        # @type EventCode: String
        # @param EventId: 事件的唯一标识 ID
        # @type EventId: String
        # @param EventTime: 事件的发生时间，UTC 时间格式
        # @type EventTime: String
        # @param Message: 事件的消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param PreSignedLogUrl: 事件相关的日志存储路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreSignedLogUrl: String
        # @param ResourceId: 事件对应的资源对象唯一标识 ID，例如服务器舰队 ID
        # @type ResourceId: String

        attr_accessor :EventCode, :EventId, :EventTime, :Message, :PreSignedLogUrl, :ResourceId
        
        def initialize(eventcode=nil, eventid=nil, eventtime=nil, message=nil, presignedlogurl=nil, resourceid=nil)
          @EventCode = eventcode
          @EventId = eventid
          @EventTime = eventtime
          @Message = message
          @PreSignedLogUrl = presignedlogurl
          @ResourceId = resourceid
        end

        def deserialize(params)
          @EventCode = params['EventCode']
          @EventId = params['EventId']
          @EventTime = params['EventTime']
          @Message = params['Message']
          @PreSignedLogUrl = params['PreSignedLogUrl']
          @ResourceId = params['ResourceId']
        end
      end

      # 实例类型限额配置额外信息
      class ExtraInfos < TencentCloud::Common::AbstractModel
        # @param InstanceType: 实例类型，例如S5.LARGE8
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param TotalInstances: 实例限额数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalInstances: Integer

        attr_accessor :InstanceType, :TotalInstances
        
        def initialize(instancetype=nil, totalinstances=nil)
          @InstanceType = instancetype
          @TotalInstances = totalinstances
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @TotalInstances = params['TotalInstances']
        end
      end

      # 过滤字段内容
      class Filter < TencentCloud::Common::AbstractModel
        # @param Key: 过滤属性的 key
        # @type Key: String
        # @param Values: 过滤属性的 values 值
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

      # 服务部署属性
      class FleetAttributes < TencentCloud::Common::AbstractModel
        # @param AssetId: 生成包 Id
        # @type AssetId: String
        # @param CreationTime: 创建服务器舰队时间
        # @type CreationTime: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param FleetArn: 服务器舰队资源描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetArn: String
        # @param FleetId: 服务器舰队 Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetId: String
        # @param FleetType: 服务器舰队类型，目前只支持ON_DEMAND
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetType: String
        # @param InstanceType: 服务器类型，例如S5.LARGE8
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param Name: 服务器舰队名称
        # @type Name: String
        # @param NewGameServerSessionProtectionPolicy: 游戏会话保护策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewGameServerSessionProtectionPolicy: String
        # @param OperatingSystem: 操作系统类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatingSystem: String
        # @param ResourceCreationLimitPolicy: 资源创建限制策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceCreationLimitPolicy: :class:`Tencentcloud::Gse.v20191112.models.ResourceCreationLimitPolicy`
        # @param Status: 状态：新建、下载中、验证中、生成中、激活中、活跃、异常、删除中、结束
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param StoppedActions: 服务器舰队停止状态，为空时表示自动扩缩容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StoppedActions: Array
        # @param TerminationTime: 服务器舰队终止时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerminationTime: String
        # @param GameServerSessionProtectionTimeLimit: 时限保护超时时间，默认60分钟，最小值5，最大值1440
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessionProtectionTimeLimit: Integer
        # @param BillingStatus: 计费状态：未开通、已开通、异常、欠费隔离、销毁、解冻
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingStatus: String
        # @param Tags: 标签列表，最大长度50组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param DataDiskInfo: 数据盘，储存类型为 SSD 云硬盘（CLOUD_SSD）时，100-32000GB；储存类型为高性能云硬盘（CLOUD_PREMIUM）时，10-32000GB；容量以10为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataDiskInfo: Array
        # @param SystemDiskInfo: 系统盘，储存类型为 SSD 云硬盘（CLOUD_SSD）时，100-500GB；储存类型为高性能云硬盘（CLOUD_PREMIUM）时，50-500GB；容量以1为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SystemDiskInfo: :class:`Tencentcloud::Gse.v20191112.models.DiskInfo`

        attr_accessor :AssetId, :CreationTime, :Description, :FleetArn, :FleetId, :FleetType, :InstanceType, :Name, :NewGameServerSessionProtectionPolicy, :OperatingSystem, :ResourceCreationLimitPolicy, :Status, :StoppedActions, :TerminationTime, :GameServerSessionProtectionTimeLimit, :BillingStatus, :Tags, :DataDiskInfo, :SystemDiskInfo
        
        def initialize(assetid=nil, creationtime=nil, description=nil, fleetarn=nil, fleetid=nil, fleettype=nil, instancetype=nil, name=nil, newgameserversessionprotectionpolicy=nil, operatingsystem=nil, resourcecreationlimitpolicy=nil, status=nil, stoppedactions=nil, terminationtime=nil, gameserversessionprotectiontimelimit=nil, billingstatus=nil, tags=nil, datadiskinfo=nil, systemdiskinfo=nil)
          @AssetId = assetid
          @CreationTime = creationtime
          @Description = description
          @FleetArn = fleetarn
          @FleetId = fleetid
          @FleetType = fleettype
          @InstanceType = instancetype
          @Name = name
          @NewGameServerSessionProtectionPolicy = newgameserversessionprotectionpolicy
          @OperatingSystem = operatingsystem
          @ResourceCreationLimitPolicy = resourcecreationlimitpolicy
          @Status = status
          @StoppedActions = stoppedactions
          @TerminationTime = terminationtime
          @GameServerSessionProtectionTimeLimit = gameserversessionprotectiontimelimit
          @BillingStatus = billingstatus
          @Tags = tags
          @DataDiskInfo = datadiskinfo
          @SystemDiskInfo = systemdiskinfo
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @CreationTime = params['CreationTime']
          @Description = params['Description']
          @FleetArn = params['FleetArn']
          @FleetId = params['FleetId']
          @FleetType = params['FleetType']
          @InstanceType = params['InstanceType']
          @Name = params['Name']
          @NewGameServerSessionProtectionPolicy = params['NewGameServerSessionProtectionPolicy']
          @OperatingSystem = params['OperatingSystem']
          unless params['ResourceCreationLimitPolicy'].nil?
            @ResourceCreationLimitPolicy = ResourceCreationLimitPolicy.new.deserialize(params['ResourceCreationLimitPolicy'])
          end
          @Status = params['Status']
          @StoppedActions = params['StoppedActions']
          @TerminationTime = params['TerminationTime']
          @GameServerSessionProtectionTimeLimit = params['GameServerSessionProtectionTimeLimit']
          @BillingStatus = params['BillingStatus']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << Tag.new.deserialize(i)
            end
          end
          unless params['DataDiskInfo'].nil?
            @DataDiskInfo = []
            params['DataDiskInfo'].each do |i|
              @DataDiskInfo << DiskInfo.new.deserialize(i)
            end
          end
          unless params['SystemDiskInfo'].nil?
            @SystemDiskInfo = DiskInfo.new.deserialize(params['SystemDiskInfo'])
          end
        end
      end

      # 服务部署组容量配置
      class FleetCapacity < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务部署 Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetId: String
        # @param InstanceType: 服务器类型，如S3.LARGE8,S2.LARGE8,S5.LARGE8等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param InstanceCounts: 服务器实例统计数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceCounts: :class:`Tencentcloud::Gse.v20191112.models.InstanceCounts`
        # @param ScalingInterval: 服务器伸缩容间隔，单位分钟，最小值3，最大值30，默认值10
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScalingInterval: Integer

        attr_accessor :FleetId, :InstanceType, :InstanceCounts, :ScalingInterval
        
        def initialize(fleetid=nil, instancetype=nil, instancecounts=nil, scalinginterval=nil)
          @FleetId = fleetid
          @InstanceType = instancetype
          @InstanceCounts = instancecounts
          @ScalingInterval = scalinginterval
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @InstanceType = params['InstanceType']
          unless params['InstanceCounts'].nil?
            @InstanceCounts = InstanceCounts.new.deserialize(params['InstanceCounts'])
          end
          @ScalingInterval = params['ScalingInterval']
        end
      end

      # 舰队统计详情
      class FleetStatisticDetail < TencentCloud::Common::AbstractModel
        # @param FleetId: 舰队ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetId: String
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceIP: 实例IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceIP: String
        # @param BeginTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param TotalUsedTimeSeconds: 总时长，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalUsedTimeSeconds: String
        # @param TotalUsedFlowMegaBytes: 总流量，单位MB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalUsedFlowMegaBytes: Float

        attr_accessor :FleetId, :InstanceId, :InstanceIP, :BeginTime, :EndTime, :TotalUsedTimeSeconds, :TotalUsedFlowMegaBytes
        
        def initialize(fleetid=nil, instanceid=nil, instanceip=nil, begintime=nil, endtime=nil, totalusedtimeseconds=nil, totalusedflowmegabytes=nil)
          @FleetId = fleetid
          @InstanceId = instanceid
          @InstanceIP = instanceip
          @BeginTime = begintime
          @EndTime = endtime
          @TotalUsedTimeSeconds = totalusedtimeseconds
          @TotalUsedFlowMegaBytes = totalusedflowmegabytes
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @InstanceId = params['InstanceId']
          @InstanceIP = params['InstanceIP']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @TotalUsedTimeSeconds = params['TotalUsedTimeSeconds']
          @TotalUsedFlowMegaBytes = params['TotalUsedFlowMegaBytes']
        end
      end

      # 舰队统计流量
      class FleetStatisticFlows < TencentCloud::Common::AbstractModel
        # @param TotalUsedFlowMegaBytes: 总流量，单位MB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalUsedFlowMegaBytes: Float
        # @param BeginTime: 统计开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginTime: String

        attr_accessor :TotalUsedFlowMegaBytes, :BeginTime
        
        def initialize(totalusedflowmegabytes=nil, begintime=nil)
          @TotalUsedFlowMegaBytes = totalusedflowmegabytes
          @BeginTime = begintime
        end

        def deserialize(params)
          @TotalUsedFlowMegaBytes = params['TotalUsedFlowMegaBytes']
          @BeginTime = params['BeginTime']
        end
      end

      # 舰队统计总时长
      class FleetStatisticTimes < TencentCloud::Common::AbstractModel
        # @param BeginTime: 统计开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginTime: String
        # @param TotalUsedTimeSeconds: 统计总时长，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalUsedTimeSeconds: String

        attr_accessor :BeginTime, :TotalUsedTimeSeconds
        
        def initialize(begintime=nil, totalusedtimeseconds=nil)
          @BeginTime = begintime
          @TotalUsedTimeSeconds = totalusedtimeseconds
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @TotalUsedTimeSeconds = params['TotalUsedTimeSeconds']
        end
      end

      # 服务部署利用率
      class FleetUtilization < TencentCloud::Common::AbstractModel
        # @param ActiveGameServerSessionCount: 游戏会话数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveGameServerSessionCount: Integer
        # @param ActiveServerProcessCount: 活跃进程数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveServerProcessCount: Integer
        # @param CurrentPlayerSessionCount: 当前游戏玩家数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentPlayerSessionCount: Integer
        # @param FleetId: 服务部署 Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetId: String
        # @param MaximumPlayerSessionCount: 最大玩家会话数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaximumPlayerSessionCount: Integer

        attr_accessor :ActiveGameServerSessionCount, :ActiveServerProcessCount, :CurrentPlayerSessionCount, :FleetId, :MaximumPlayerSessionCount
        
        def initialize(activegameserversessioncount=nil, activeserverprocesscount=nil, currentplayersessioncount=nil, fleetid=nil, maximumplayersessioncount=nil)
          @ActiveGameServerSessionCount = activegameserversessioncount
          @ActiveServerProcessCount = activeserverprocesscount
          @CurrentPlayerSessionCount = currentplayersessioncount
          @FleetId = fleetid
          @MaximumPlayerSessionCount = maximumplayersessioncount
        end

        def deserialize(params)
          @ActiveGameServerSessionCount = params['ActiveGameServerSessionCount']
          @ActiveServerProcessCount = params['ActiveServerProcessCount']
          @CurrentPlayerSessionCount = params['CurrentPlayerSessionCount']
          @FleetId = params['FleetId']
          @MaximumPlayerSessionCount = params['MaximumPlayerSessionCount']
        end
      end

      # 游戏属性详情
      class GameProperty < TencentCloud::Common::AbstractModel
        # @param Key: 属性名称，最大长度不超过32个ASCII字符
        # @type Key: String
        # @param Value: 属性值，最大长度不超过96个ASCII字符
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

      # 游戏会话详情
      class GameServerSession < TencentCloud::Common::AbstractModel
        # @param CreationTime: 游戏服务器会话创建时间
        # @type CreationTime: String
        # @param CreatorId: 创建者ID，最大长度不超过1024个ASCII字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorId: String
        # @param CurrentPlayerSessionCount: 当前玩家数量，最小值不小于0
        # @type CurrentPlayerSessionCount: Integer
        # @param DnsName: CVM的DNS标识符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DnsName: String
        # @param FleetId: 舰队ID
        # @type FleetId: String
        # @param GameProperties: 游戏属性，最大长度不超过16组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameProperties: Array
        # @param GameServerSessionData: 游戏服务器会话属性详情，最大长度不超过4096个ASCII字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessionData: String
        # @param GameServerSessionId: 游戏服务器会话ID，最小长度不小于1个ASCII字符，最大长度不超过48个ASCII字符
        # @type GameServerSessionId: String
        # @param IpAddress: CVM IP地址
        # @type IpAddress: String
        # @param MatchmakerData: 对战进程详情，最大长度不超过400000个ASCII字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchmakerData: String
        # @param MaximumPlayerSessionCount: 最大玩家数量，最小值不小于0
        # @type MaximumPlayerSessionCount: Integer
        # @param Name: 游戏服务器会话名称，最大长度不超过1024个ASCII字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param PlayerSessionCreationPolicy: 玩家会话创建策略（ACCEPT_ALL,DENY_ALL）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayerSessionCreationPolicy: String
        # @param Port: 端口号，最小值不小于1，最大值不超过60000
        # @type Port: Integer
        # @param Status: 游戏服务器会话状态（ACTIVE,ACTIVATING,TERMINATED,TERMINATING,ERROR）
        # @type Status: String
        # @param StatusReason: 游戏服务器会话状态附加信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusReason: String
        # @param TerminationTime: 终止的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerminationTime: String
        # @param InstanceType: 实例类型，最大长度不超过128个ASCII字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param CurrentCustomCount: 当前自定义数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentCustomCount: Integer
        # @param MaxCustomCount: 最大自定义数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxCustomCount: Integer
        # @param Weight: 权重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer
        # @param AvailabilityStatus: 会话可用性状态，是否被屏蔽（Enable,Disable）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailabilityStatus: String

        attr_accessor :CreationTime, :CreatorId, :CurrentPlayerSessionCount, :DnsName, :FleetId, :GameProperties, :GameServerSessionData, :GameServerSessionId, :IpAddress, :MatchmakerData, :MaximumPlayerSessionCount, :Name, :PlayerSessionCreationPolicy, :Port, :Status, :StatusReason, :TerminationTime, :InstanceType, :CurrentCustomCount, :MaxCustomCount, :Weight, :AvailabilityStatus
        
        def initialize(creationtime=nil, creatorid=nil, currentplayersessioncount=nil, dnsname=nil, fleetid=nil, gameproperties=nil, gameserversessiondata=nil, gameserversessionid=nil, ipaddress=nil, matchmakerdata=nil, maximumplayersessioncount=nil, name=nil, playersessioncreationpolicy=nil, port=nil, status=nil, statusreason=nil, terminationtime=nil, instancetype=nil, currentcustomcount=nil, maxcustomcount=nil, weight=nil, availabilitystatus=nil)
          @CreationTime = creationtime
          @CreatorId = creatorid
          @CurrentPlayerSessionCount = currentplayersessioncount
          @DnsName = dnsname
          @FleetId = fleetid
          @GameProperties = gameproperties
          @GameServerSessionData = gameserversessiondata
          @GameServerSessionId = gameserversessionid
          @IpAddress = ipaddress
          @MatchmakerData = matchmakerdata
          @MaximumPlayerSessionCount = maximumplayersessioncount
          @Name = name
          @PlayerSessionCreationPolicy = playersessioncreationpolicy
          @Port = port
          @Status = status
          @StatusReason = statusreason
          @TerminationTime = terminationtime
          @InstanceType = instancetype
          @CurrentCustomCount = currentcustomcount
          @MaxCustomCount = maxcustomcount
          @Weight = weight
          @AvailabilityStatus = availabilitystatus
        end

        def deserialize(params)
          @CreationTime = params['CreationTime']
          @CreatorId = params['CreatorId']
          @CurrentPlayerSessionCount = params['CurrentPlayerSessionCount']
          @DnsName = params['DnsName']
          @FleetId = params['FleetId']
          unless params['GameProperties'].nil?
            @GameProperties = []
            params['GameProperties'].each do |i|
              @GameProperties << GameProperty.new.deserialize(i)
            end
          end
          @GameServerSessionData = params['GameServerSessionData']
          @GameServerSessionId = params['GameServerSessionId']
          @IpAddress = params['IpAddress']
          @MatchmakerData = params['MatchmakerData']
          @MaximumPlayerSessionCount = params['MaximumPlayerSessionCount']
          @Name = params['Name']
          @PlayerSessionCreationPolicy = params['PlayerSessionCreationPolicy']
          @Port = params['Port']
          @Status = params['Status']
          @StatusReason = params['StatusReason']
          @TerminationTime = params['TerminationTime']
          @InstanceType = params['InstanceType']
          @CurrentCustomCount = params['CurrentCustomCount']
          @MaxCustomCount = params['MaxCustomCount']
          @Weight = params['Weight']
          @AvailabilityStatus = params['AvailabilityStatus']
        end
      end

      # 游戏服务器会话详情（GameServerSessionDetail）
      class GameServerSessionDetail < TencentCloud::Common::AbstractModel
        # @param GameServerSession: 游戏服务器会话
        # @type GameServerSession: :class:`Tencentcloud::Gse.v20191112.models.GameServerSession`
        # @param ProtectionPolicy: 保护策略，可选（NoProtection,FullProtection）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtectionPolicy: String

        attr_accessor :GameServerSession, :ProtectionPolicy
        
        def initialize(gameserversession=nil, protectionpolicy=nil)
          @GameServerSession = gameserversession
          @ProtectionPolicy = protectionpolicy
        end

        def deserialize(params)
          unless params['GameServerSession'].nil?
            @GameServerSession = GameServerSession.new.deserialize(params['GameServerSession'])
          end
          @ProtectionPolicy = params['ProtectionPolicy']
        end
      end

      # 游戏会话部署对象
      class GameServerSessionPlacement < TencentCloud::Common::AbstractModel
        # @param PlacementId: 部署Id
        # @type PlacementId: String
        # @param GameServerSessionQueueName: 服务部署组名称
        # @type GameServerSessionQueueName: String
        # @param PlayerLatencies: 玩家延迟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayerLatencies: Array
        # @param Status: 服务部署状态
        # @type Status: String
        # @param DnsName: 分配给正在运行游戏会话的实例的DNS标识符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DnsName: String
        # @param GameServerSessionId: 游戏会话Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessionId: String
        # @param GameServerSessionName: 游戏会话名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessionName: String
        # @param GameServerSessionRegion: 服务部署区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessionRegion: String
        # @param GameProperties: 游戏属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameProperties: Array
        # @param MaximumPlayerSessionCount: 游戏服务器允许同时连接到游戏会话的最大玩家数量，最小值1，最大值为玩家会话最大限额
        # @type MaximumPlayerSessionCount: Integer
        # @param GameServerSessionData: 游戏会话数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessionData: String
        # @param IpAddress: 运行游戏会话的实例的IP地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpAddress: String
        # @param Port: 运行游戏会话的实例的端口号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param MatchmakerData: 游戏匹配数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MatchmakerData: String
        # @param PlacedPlayerSessions: 部署的玩家游戏数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlacedPlayerSessions: Array
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :PlacementId, :GameServerSessionQueueName, :PlayerLatencies, :Status, :DnsName, :GameServerSessionId, :GameServerSessionName, :GameServerSessionRegion, :GameProperties, :MaximumPlayerSessionCount, :GameServerSessionData, :IpAddress, :Port, :MatchmakerData, :PlacedPlayerSessions, :StartTime, :EndTime
        
        def initialize(placementid=nil, gameserversessionqueuename=nil, playerlatencies=nil, status=nil, dnsname=nil, gameserversessionid=nil, gameserversessionname=nil, gameserversessionregion=nil, gameproperties=nil, maximumplayersessioncount=nil, gameserversessiondata=nil, ipaddress=nil, port=nil, matchmakerdata=nil, placedplayersessions=nil, starttime=nil, endtime=nil)
          @PlacementId = placementid
          @GameServerSessionQueueName = gameserversessionqueuename
          @PlayerLatencies = playerlatencies
          @Status = status
          @DnsName = dnsname
          @GameServerSessionId = gameserversessionid
          @GameServerSessionName = gameserversessionname
          @GameServerSessionRegion = gameserversessionregion
          @GameProperties = gameproperties
          @MaximumPlayerSessionCount = maximumplayersessioncount
          @GameServerSessionData = gameserversessiondata
          @IpAddress = ipaddress
          @Port = port
          @MatchmakerData = matchmakerdata
          @PlacedPlayerSessions = placedplayersessions
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @PlacementId = params['PlacementId']
          @GameServerSessionQueueName = params['GameServerSessionQueueName']
          unless params['PlayerLatencies'].nil?
            @PlayerLatencies = []
            params['PlayerLatencies'].each do |i|
              @PlayerLatencies << PlayerLatency.new.deserialize(i)
            end
          end
          @Status = params['Status']
          @DnsName = params['DnsName']
          @GameServerSessionId = params['GameServerSessionId']
          @GameServerSessionName = params['GameServerSessionName']
          @GameServerSessionRegion = params['GameServerSessionRegion']
          unless params['GameProperties'].nil?
            @GameProperties = []
            params['GameProperties'].each do |i|
              @GameProperties << GameProperty.new.deserialize(i)
            end
          end
          @MaximumPlayerSessionCount = params['MaximumPlayerSessionCount']
          @GameServerSessionData = params['GameServerSessionData']
          @IpAddress = params['IpAddress']
          @Port = params['Port']
          @MatchmakerData = params['MatchmakerData']
          unless params['PlacedPlayerSessions'].nil?
            @PlacedPlayerSessions = []
            params['PlacedPlayerSessions'].each do |i|
              @PlacedPlayerSessions << PlacedPlayerSession.new.deserialize(i)
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 服务部署组对象
      class GameServerSessionQueue < TencentCloud::Common::AbstractModel
        # @param Name: 服务部署组名字
        # @type Name: String
        # @param GameServerSessionQueueArn: 服务部署组资源
        # @type GameServerSessionQueueArn: String
        # @param Destinations: 目的fleet（可为别名）列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Destinations: Array
        # @param PlayerLatencyPolicies: 延迟策略集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayerLatencyPolicies: Array
        # @param TimeoutInSeconds: 超时时间
        # @type TimeoutInSeconds: Integer
        # @param Tags: 标签列表，最大长度50组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :Name, :GameServerSessionQueueArn, :Destinations, :PlayerLatencyPolicies, :TimeoutInSeconds, :Tags
        
        def initialize(name=nil, gameserversessionqueuearn=nil, destinations=nil, playerlatencypolicies=nil, timeoutinseconds=nil, tags=nil)
          @Name = name
          @GameServerSessionQueueArn = gameserversessionqueuearn
          @Destinations = destinations
          @PlayerLatencyPolicies = playerlatencypolicies
          @TimeoutInSeconds = timeoutinseconds
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          @GameServerSessionQueueArn = params['GameServerSessionQueueArn']
          unless params['Destinations'].nil?
            @Destinations = []
            params['Destinations'].each do |i|
              @Destinations << GameServerSessionQueueDestination.new.deserialize(i)
            end
          end
          unless params['PlayerLatencyPolicies'].nil?
            @PlayerLatencyPolicies = []
            params['PlayerLatencyPolicies'].each do |i|
              @PlayerLatencyPolicies << PlayerLatencyPolicy.new.deserialize(i)
            end
          end
          @TimeoutInSeconds = params['TimeoutInSeconds']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << Tag.new.deserialize(i)
            end
          end
        end
      end

      # 服务部署组目的集合
      class GameServerSessionQueueDestination < TencentCloud::Common::AbstractModel
        # @param DestinationArn: 服务部署组目的的资源描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DestinationArn: String
        # @param FleetStatus: 服务部署组目的的状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetStatus: String

        attr_accessor :DestinationArn, :FleetStatus
        
        def initialize(destinationarn=nil, fleetstatus=nil)
          @DestinationArn = destinationarn
          @FleetStatus = fleetstatus
        end

        def deserialize(params)
          @DestinationArn = params['DestinationArn']
          @FleetStatus = params['FleetStatus']
        end
      end

      # GetGameServerSessionLogUrl请求参数结构体
      class GetGameServerSessionLogUrlRequest < TencentCloud::Common::AbstractModel
        # @param GameServerSessionId: 游戏服务器会话ID，最小长度不小于1个ASCII字符，最大长度不超过48个ASCII字符
        # @type GameServerSessionId: String

        attr_accessor :GameServerSessionId
        
        def initialize(gameserversessionid=nil)
          @GameServerSessionId = gameserversessionid
        end

        def deserialize(params)
          @GameServerSessionId = params['GameServerSessionId']
        end
      end

      # GetGameServerSessionLogUrl返回参数结构体
      class GetGameServerSessionLogUrlResponse < TencentCloud::Common::AbstractModel
        # @param PreSignedUrl: 日志下载URL，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreSignedUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PreSignedUrl, :RequestId
        
        def initialize(presignedurl=nil, requestid=nil)
          @PreSignedUrl = presignedurl
          @RequestId = requestid
        end

        def deserialize(params)
          @PreSignedUrl = params['PreSignedUrl']
          @RequestId = params['RequestId']
        end
      end

      # GetInstanceAccess请求参数结构体
      class GetInstanceAccessRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队ID
        # @type FleetId: String
        # @param InstanceId: 实例Id
        # @type InstanceId: String

        attr_accessor :FleetId, :InstanceId
        
        def initialize(fleetid=nil, instanceid=nil)
          @FleetId = fleetid
          @InstanceId = instanceid
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @InstanceId = params['InstanceId']
        end
      end

      # GetInstanceAccess返回参数结构体
      class GetInstanceAccessResponse < TencentCloud::Common::AbstractModel
        # @param InstanceAccess: 实例登录所需要的凭据
        # @type InstanceAccess: :class:`Tencentcloud::Gse.v20191112.models.InstanceAccess`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceAccess, :RequestId
        
        def initialize(instanceaccess=nil, requestid=nil)
          @InstanceAccess = instanceaccess
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceAccess'].nil?
            @InstanceAccess = InstanceAccess.new.deserialize(params['InstanceAccess'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetUploadCredentials请求参数结构体
      class GetUploadCredentialsRequest < TencentCloud::Common::AbstractModel
        # @param AssetRegion: 生成包所在地域，详见产品支持的 [地域列表](https://cloud.tencent.com/document/api/1165/42053#.E5.9C.B0.E5.9F.9F.E5.88.97.E8.A1.A8)
        # @type AssetRegion: String
        # @param BucketKey: 生成包的ZIP包名，例如：server.zip
        # @type BucketKey: String

        attr_accessor :AssetRegion, :BucketKey
        
        def initialize(assetregion=nil, bucketkey=nil)
          @AssetRegion = assetregion
          @BucketKey = bucketkey
        end

        def deserialize(params)
          @AssetRegion = params['AssetRegion']
          @BucketKey = params['BucketKey']
        end
      end

      # GetUploadCredentials返回参数结构体
      class GetUploadCredentialsResponse < TencentCloud::Common::AbstractModel
        # @param BucketAuth: 上传文件授权信息Auth
        # @type BucketAuth: String
        # @param BucketName: Bucket名字
        # @type BucketName: String
        # @param AssetRegion: 生成包所在地域
        # @type AssetRegion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BucketAuth, :BucketName, :AssetRegion, :RequestId
        
        def initialize(bucketauth=nil, bucketname=nil, assetregion=nil, requestid=nil)
          @BucketAuth = bucketauth
          @BucketName = bucketname
          @AssetRegion = assetregion
          @RequestId = requestid
        end

        def deserialize(params)
          @BucketAuth = params['BucketAuth']
          @BucketName = params['BucketName']
          @AssetRegion = params['AssetRegion']
          @RequestId = params['RequestId']
        end
      end

      # GetUploadFederationToken请求参数结构体
      class GetUploadFederationTokenRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetUploadFederationToken返回参数结构体
      class GetUploadFederationTokenResponse < TencentCloud::Common::AbstractModel
        # @param ExpiredTime: 临时证书的过期时间，Unix 时间戳，精确到秒
        # @type ExpiredTime: Integer
        # @param AssetCredentials: 临时证书
        # @type AssetCredentials: :class:`Tencentcloud::Gse.v20191112.models.AssetCredentials`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExpiredTime, :AssetCredentials, :RequestId
        
        def initialize(expiredtime=nil, assetcredentials=nil, requestid=nil)
          @ExpiredTime = expiredtime
          @AssetCredentials = assetcredentials
          @RequestId = requestid
        end

        def deserialize(params)
          @ExpiredTime = params['ExpiredTime']
          unless params['AssetCredentials'].nil?
            @AssetCredentials = AssetCredentials.new.deserialize(params['AssetCredentials'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 允许网络访问范围
      class InboundPermission < TencentCloud::Common::AbstractModel
        # @param FromPort: 起始端口号，最小值1025
        # @type FromPort: Integer
        # @param IpRange: IP 段范围，合法的 CIDR 地址类型，如所有IPv4来源：0.0.0.0/0
        # @type IpRange: String
        # @param Protocol: 协议类型：TCP或者UDP
        # @type Protocol: String
        # @param ToPort: 终止端口号，最大值60000
        # @type ToPort: Integer

        attr_accessor :FromPort, :IpRange, :Protocol, :ToPort
        
        def initialize(fromport=nil, iprange=nil, protocol=nil, toport=nil)
          @FromPort = fromport
          @IpRange = iprange
          @Protocol = protocol
          @ToPort = toport
        end

        def deserialize(params)
          @FromPort = params['FromPort']
          @IpRange = params['IpRange']
          @Protocol = params['Protocol']
          @ToPort = params['ToPort']
        end
      end

      # 用于新增安全组
      class InboundPermissionAuthorization < TencentCloud::Common::AbstractModel
        # @param FromPort: 起始端口号
        # @type FromPort: Integer
        # @param IpRange: IP 端范围，CIDR方式划分
        # @type IpRange: String
        # @param Protocol: 协议类型
        # @type Protocol: String
        # @param ToPort: 终止端口号
        # @type ToPort: Integer

        attr_accessor :FromPort, :IpRange, :Protocol, :ToPort
        
        def initialize(fromport=nil, iprange=nil, protocol=nil, toport=nil)
          @FromPort = fromport
          @IpRange = iprange
          @Protocol = protocol
          @ToPort = toport
        end

        def deserialize(params)
          @FromPort = params['FromPort']
          @IpRange = params['IpRange']
          @Protocol = params['Protocol']
          @ToPort = params['ToPort']
        end
      end

      # 需要移除的安全组
      class InboundPermissionRevocations < TencentCloud::Common::AbstractModel
        # @param FromPort: 起始端口号
        # @type FromPort: Integer
        # @param IpRange: IP 端范围，CIDR 方式换分
        # @type IpRange: String
        # @param Protocol: 协议类型：UDP或者TCP
        # @type Protocol: String
        # @param ToPort: 终止端口号
        # @type ToPort: Integer

        attr_accessor :FromPort, :IpRange, :Protocol, :ToPort
        
        def initialize(fromport=nil, iprange=nil, protocol=nil, toport=nil)
          @FromPort = fromport
          @IpRange = iprange
          @Protocol = protocol
          @ToPort = toport
        end

        def deserialize(params)
          @FromPort = params['FromPort']
          @IpRange = params['IpRange']
          @Protocol = params['Protocol']
          @ToPort = params['ToPort']
        end
      end

      # 实例信息
      class Instance < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务部署ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetId: String
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param IpAddress: IP地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpAddress: String
        # @param DnsName: dns
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DnsName: String
        # @param OperatingSystem: 操作系统
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatingSystem: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Weight: 实例权重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer
        # @param ReserveValue: 实例是否保留, 1-保留，0-不保留,默认
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReserveValue: Integer

        attr_accessor :FleetId, :InstanceId, :IpAddress, :DnsName, :OperatingSystem, :Status, :Type, :CreateTime, :Weight, :ReserveValue
        
        def initialize(fleetid=nil, instanceid=nil, ipaddress=nil, dnsname=nil, operatingsystem=nil, status=nil, type=nil, createtime=nil, weight=nil, reservevalue=nil)
          @FleetId = fleetid
          @InstanceId = instanceid
          @IpAddress = ipaddress
          @DnsName = dnsname
          @OperatingSystem = operatingsystem
          @Status = status
          @Type = type
          @CreateTime = createtime
          @Weight = weight
          @ReserveValue = reservevalue
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @InstanceId = params['InstanceId']
          @IpAddress = params['IpAddress']
          @DnsName = params['DnsName']
          @OperatingSystem = params['OperatingSystem']
          @Status = params['Status']
          @Type = params['Type']
          @CreateTime = params['CreateTime']
          @Weight = params['Weight']
          @ReserveValue = params['ReserveValue']
        end
      end

      # 实例访问凭证信息
      class InstanceAccess < TencentCloud::Common::AbstractModel
        # @param Credentials: 访问实例所需要的凭据
        # @type Credentials: :class:`Tencentcloud::Gse.v20191112.models.Credentials`
        # @param FleetId: 服务部署Id
        # @type FleetId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param IpAddress: 实例公网IP
        # @type IpAddress: String
        # @param OperatingSystem: 操作系统
        # @type OperatingSystem: String

        attr_accessor :Credentials, :FleetId, :InstanceId, :IpAddress, :OperatingSystem
        
        def initialize(credentials=nil, fleetid=nil, instanceid=nil, ipaddress=nil, operatingsystem=nil)
          @Credentials = credentials
          @FleetId = fleetid
          @InstanceId = instanceid
          @IpAddress = ipaddress
          @OperatingSystem = operatingsystem
        end

        def deserialize(params)
          unless params['Credentials'].nil?
            @Credentials = Credentials.new.deserialize(params['Credentials'])
          end
          @FleetId = params['FleetId']
          @InstanceId = params['InstanceId']
          @IpAddress = params['IpAddress']
          @OperatingSystem = params['OperatingSystem']
        end
      end

      # 服务器实例统计数据
      class InstanceCounts < TencentCloud::Common::AbstractModel
        # @param Active: 活跃的服务器实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Active: Integer
        # @param Desired: 期望的服务器实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desired: Integer
        # @param Idle: 空闲的服务器实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Idle: Integer
        # @param MaxiNum: 服务器实例数最大限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxiNum: Integer
        # @param MiniNum: 服务器实例数最小限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MiniNum: Integer
        # @param Pending: 已开始创建，但未激活的服务器实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pending: Integer
        # @param Terminating: 结束中的服务器实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Terminating: Integer

        attr_accessor :Active, :Desired, :Idle, :MaxiNum, :MiniNum, :Pending, :Terminating
        
        def initialize(active=nil, desired=nil, idle=nil, maxinum=nil, mininum=nil, pending=nil, terminating=nil)
          @Active = active
          @Desired = desired
          @Idle = idle
          @MaxiNum = maxinum
          @MiniNum = mininum
          @Pending = pending
          @Terminating = terminating
        end

        def deserialize(params)
          @Active = params['Active']
          @Desired = params['Desired']
          @Idle = params['Idle']
          @MaxiNum = params['MaxiNum']
          @MiniNum = params['MiniNum']
          @Pending = params['Pending']
          @Terminating = params['Terminating']
        end
      end

      # 实例扩展信息
      class InstanceExtend < TencentCloud::Common::AbstractModel
        # @param Instance: 实例信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Instance: :class:`Tencentcloud::Gse.v20191112.models.Instance`
        # @param State: 实例状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: String
        # @param HealthyProcessCnt: 健康进程数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthyProcessCnt: Integer
        # @param ActiveProcessCnt: 活跃进程数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveProcessCnt: Integer
        # @param GameSessionCnt: 当前游戏会话总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameSessionCnt: Integer
        # @param MaxGameSessionCnt: 最大游戏会话数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxGameSessionCnt: Integer
        # @param PlayerSessionCnt: 当前玩家会话数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayerSessionCnt: Integer
        # @param MaxPlayerSessionCnt: 最大玩家会话数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxPlayerSessionCnt: Integer

        attr_accessor :Instance, :State, :HealthyProcessCnt, :ActiveProcessCnt, :GameSessionCnt, :MaxGameSessionCnt, :PlayerSessionCnt, :MaxPlayerSessionCnt
        
        def initialize(instance=nil, state=nil, healthyprocesscnt=nil, activeprocesscnt=nil, gamesessioncnt=nil, maxgamesessioncnt=nil, playersessioncnt=nil, maxplayersessioncnt=nil)
          @Instance = instance
          @State = state
          @HealthyProcessCnt = healthyprocesscnt
          @ActiveProcessCnt = activeprocesscnt
          @GameSessionCnt = gamesessioncnt
          @MaxGameSessionCnt = maxgamesessioncnt
          @PlayerSessionCnt = playersessioncnt
          @MaxPlayerSessionCnt = maxplayersessioncnt
        end

        def deserialize(params)
          unless params['Instance'].nil?
            @Instance = Instance.new.deserialize(params['Instance'])
          end
          @State = params['State']
          @HealthyProcessCnt = params['HealthyProcessCnt']
          @ActiveProcessCnt = params['ActiveProcessCnt']
          @GameSessionCnt = params['GameSessionCnt']
          @MaxGameSessionCnt = params['MaxGameSessionCnt']
          @PlayerSessionCnt = params['PlayerSessionCnt']
          @MaxPlayerSessionCnt = params['MaxPlayerSessionCnt']
        end
      end

      # 服务器实例类型信息
      class InstanceTypeInfo < TencentCloud::Common::AbstractModel
        # @param TypeName: 类型名，例如“标准型SA1”
        # @type TypeName: String
        # @param InstanceType: 类型，例如"SA1.SMALL1"
        # @type InstanceType: String
        # @param Cpu: CPU，例如1核就是1
        # @type Cpu: Integer
        # @param Memory: 内存，例如2G就是2
        # @type Memory: Integer
        # @param NetworkCard: 网络收到包,例如25万PPS就是25
        # @type NetworkCard: Integer

        attr_accessor :TypeName, :InstanceType, :Cpu, :Memory, :NetworkCard
        
        def initialize(typename=nil, instancetype=nil, cpu=nil, memory=nil, networkcard=nil)
          @TypeName = typename
          @InstanceType = instancetype
          @Cpu = cpu
          @Memory = memory
          @NetworkCard = networkcard
        end

        def deserialize(params)
          @TypeName = params['TypeName']
          @InstanceType = params['InstanceType']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @NetworkCard = params['NetworkCard']
        end
      end

      # JoinGameServerSessionBatch请求参数结构体
      class JoinGameServerSessionBatchRequest < TencentCloud::Common::AbstractModel
        # @param GameServerSessionId: 游戏服务器会话ID，最小长度1个ASCII字符，最大长度不超过256个ASCII字符
        # @type GameServerSessionId: String
        # @param PlayerIds: 玩家ID列表，最小1组，最大25组
        # @type PlayerIds: Array
        # @param PlayerDataMap: 玩家自定义数据
        # @type PlayerDataMap: :class:`Tencentcloud::Gse.v20191112.models.PlayerDataMap`

        attr_accessor :GameServerSessionId, :PlayerIds, :PlayerDataMap
        
        def initialize(gameserversessionid=nil, playerids=nil, playerdatamap=nil)
          @GameServerSessionId = gameserversessionid
          @PlayerIds = playerids
          @PlayerDataMap = playerdatamap
        end

        def deserialize(params)
          @GameServerSessionId = params['GameServerSessionId']
          @PlayerIds = params['PlayerIds']
          unless params['PlayerDataMap'].nil?
            @PlayerDataMap = PlayerDataMap.new.deserialize(params['PlayerDataMap'])
          end
        end
      end

      # JoinGameServerSessionBatch返回参数结构体
      class JoinGameServerSessionBatchResponse < TencentCloud::Common::AbstractModel
        # @param PlayerSessions: 玩家会话列表，最大25组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayerSessions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlayerSessions, :RequestId
        
        def initialize(playersessions=nil, requestid=nil)
          @PlayerSessions = playersessions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PlayerSessions'].nil?
            @PlayerSessions = []
            params['PlayerSessions'].each do |i|
              @PlayerSessions << PlayerSession.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # JoinGameServerSession请求参数结构体
      class JoinGameServerSessionRequest < TencentCloud::Common::AbstractModel
        # @param GameServerSessionId: 游戏服务器会话ID，最小长度1个ASCII字符，最大长度不超过256个ASCII字符
        # @type GameServerSessionId: String
        # @param PlayerId: 玩家ID，最大长度1024个ASCII字符
        # @type PlayerId: String
        # @param PlayerData: 玩家自定义数据，最大长度2048个ASCII字符
        # @type PlayerData: String

        attr_accessor :GameServerSessionId, :PlayerId, :PlayerData
        
        def initialize(gameserversessionid=nil, playerid=nil, playerdata=nil)
          @GameServerSessionId = gameserversessionid
          @PlayerId = playerid
          @PlayerData = playerdata
        end

        def deserialize(params)
          @GameServerSessionId = params['GameServerSessionId']
          @PlayerId = params['PlayerId']
          @PlayerData = params['PlayerData']
        end
      end

      # JoinGameServerSession返回参数结构体
      class JoinGameServerSessionResponse < TencentCloud::Common::AbstractModel
        # @param PlayerSession: 玩家会话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayerSession: :class:`Tencentcloud::Gse.v20191112.models.PlayerSession`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlayerSession, :RequestId
        
        def initialize(playersession=nil, requestid=nil)
          @PlayerSession = playersession
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PlayerSession'].nil?
            @PlayerSession = PlayerSession.new.deserialize(params['PlayerSession'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListAliases请求参数结构体
      class ListAliasesRequest < TencentCloud::Common::AbstractModel
        # @param Name: 名字，长度不小于1字符不超过1024字符
        # @type Name: String
        # @param RoutingStrategyType: 路由策略类型，有效值常规别名(SIMPLE)、终止别名(TERMINAL)
        # @type RoutingStrategyType: String
        # @param Limit: 要返回的最大结果数，最小值1
        # @type Limit: Integer
        # @param Offset: 偏移，默认0
        # @type Offset: Integer
        # @param OrderBy: 排序字段，例如CreationTime
        # @type OrderBy: String
        # @param OrderWay: 排序方式，有效值asc|desc
        # @type OrderWay: String
        # @param Filters: 资源过滤字段，可以按照资源名称和标签进行过滤- 资源名称过滤    - Key: 固定字符串 "resource:name"    - Values: 资源名称数组（舰队当前仅支持单个名称的过滤）- 标签过滤    - 通过标签键过滤        - Key: 固定字符串 "tag:key"        - Values 不传    - 通过标签键值过滤        - Key: 固定字符串 "tag:key-value"        - Values: 标签键值对数组，例如 ["key1:value1", "key1:value2", "key2:value2"]
        # @type Filters: Array

        attr_accessor :Name, :RoutingStrategyType, :Limit, :Offset, :OrderBy, :OrderWay, :Filters
        
        def initialize(name=nil, routingstrategytype=nil, limit=nil, offset=nil, orderby=nil, orderway=nil, filters=nil)
          @Name = name
          @RoutingStrategyType = routingstrategytype
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderWay = orderway
          @Filters = filters
        end

        def deserialize(params)
          @Name = params['Name']
          @RoutingStrategyType = params['RoutingStrategyType']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderWay = params['OrderWay']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
        end
      end

      # ListAliases返回参数结构体
      class ListAliasesResponse < TencentCloud::Common::AbstractModel
        # @param Aliases: 别名对象数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Aliases: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Aliases, :TotalCount, :RequestId
        
        def initialize(aliases=nil, totalcount=nil, requestid=nil)
          @Aliases = aliases
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Aliases'].nil?
            @Aliases = []
            params['Aliases'].each do |i|
              @Aliases << Alias.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListFleets请求参数结构体
      class ListFleetsRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 生成包 Id
        # @type AssetId: String
        # @param Limit: 结果返回最大值，暂未使用
        # @type Limit: Integer
        # @param Offset: 结果返回偏移，暂未使用
        # @type Offset: Integer
        # @param Filters: 资源过滤字段，可以按照资源名称和标签进行过滤- 资源名称过滤    - Key: 固定字符串 "resource:name"    - Values: 资源名称数组（当前仅支持单个名称的过滤）- 标签过滤    - 通过标签键过滤        - Key: 固定字符串 "tag:key"        - Values 不传    - 通过标签键值过滤        - Key: 固定字符串 "tag:key-value"        - Values: 标签键值对数组，例如 ["key1:value1", "key1:value2", "key2:value2"]
        # @type Filters: Array

        attr_accessor :AssetId, :Limit, :Offset, :Filters
        
        def initialize(assetid=nil, limit=nil, offset=nil, filters=nil)
          @AssetId = assetid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              @Filters << Filter.new.deserialize(i)
            end
          end
        end
      end

      # ListFleets返回参数结构体
      class ListFleetsResponse < TencentCloud::Common::AbstractModel
        # @param FleetIds: 服务器舰队 Id 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetIds: Array
        # @param TotalCount: 服务器舰队 Id 总数，最小值0
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FleetIds, :TotalCount, :RequestId
        
        def initialize(fleetids=nil, totalcount=nil, requestid=nil)
          @FleetIds = fleetids
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @FleetIds = params['FleetIds']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 部署的玩家游戏会话
      class PlacedPlayerSession < TencentCloud::Common::AbstractModel
        # @param PlayerId: 玩家Id
        # @type PlayerId: String
        # @param PlayerSessionId: 玩家会话Id
        # @type PlayerSessionId: String

        attr_accessor :PlayerId, :PlayerSessionId
        
        def initialize(playerid=nil, playersessionid=nil)
          @PlayerId = playerid
          @PlayerSessionId = playersessionid
        end

        def deserialize(params)
          @PlayerId = params['PlayerId']
          @PlayerSessionId = params['PlayerSessionId']
        end
      end

      # 玩家自定义数据
      class PlayerDataMap < TencentCloud::Common::AbstractModel
        # @param Key: 玩家自定义数据键，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        # @type Key: String
        # @param Value: 玩家自定义数据值，最小长度不小于1个ASCII字符，最大长度不超过2048个ASCII字符
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

      # 玩家延迟信息
      class PlayerLatency < TencentCloud::Common::AbstractModel
        # @param PlayerId: 玩家Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayerId: String
        # @param RegionIdentifier: 延迟对应的区域名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionIdentifier: String
        # @param LatencyInMilliseconds: 毫秒级延迟
        # @type LatencyInMilliseconds: Integer

        attr_accessor :PlayerId, :RegionIdentifier, :LatencyInMilliseconds
        
        def initialize(playerid=nil, regionidentifier=nil, latencyinmilliseconds=nil)
          @PlayerId = playerid
          @RegionIdentifier = regionidentifier
          @LatencyInMilliseconds = latencyinmilliseconds
        end

        def deserialize(params)
          @PlayerId = params['PlayerId']
          @RegionIdentifier = params['RegionIdentifier']
          @LatencyInMilliseconds = params['LatencyInMilliseconds']
        end
      end

      # 延迟策略
      class PlayerLatencyPolicy < TencentCloud::Common::AbstractModel
        # @param MaximumIndividualPlayerLatencyMilliseconds: 任意player允许的最大延迟，单位：毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaximumIndividualPlayerLatencyMilliseconds: Integer
        # @param PolicyDurationSeconds: 放置新GameServerSession时强制实施策略的时间长度，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyDurationSeconds: Integer

        attr_accessor :MaximumIndividualPlayerLatencyMilliseconds, :PolicyDurationSeconds
        
        def initialize(maximumindividualplayerlatencymilliseconds=nil, policydurationseconds=nil)
          @MaximumIndividualPlayerLatencyMilliseconds = maximumindividualplayerlatencymilliseconds
          @PolicyDurationSeconds = policydurationseconds
        end

        def deserialize(params)
          @MaximumIndividualPlayerLatencyMilliseconds = params['MaximumIndividualPlayerLatencyMilliseconds']
          @PolicyDurationSeconds = params['PolicyDurationSeconds']
        end
      end

      # 玩家会话详情
      class PlayerSession < TencentCloud::Common::AbstractModel
        # @param CreationTime: 玩家会话创建时间
        # @type CreationTime: String
        # @param DnsName: 游戏服务器会话运行的DNS标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DnsName: String
        # @param FleetId: 舰队ID
        # @type FleetId: String
        # @param GameServerSessionId: 游戏服务器会话ID，最小长度1个ASCII字符，最大长度不超过256个ASCII字符
        # @type GameServerSessionId: String
        # @param IpAddress: 游戏服务器会话运行的CVM地址
        # @type IpAddress: String
        # @param PlayerData: 玩家自定义数据，最大长度2048个ASCII字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayerData: String
        # @param PlayerId: 玩家ID，最大长度1024个ASCII字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayerId: String
        # @param PlayerSessionId: 玩家会话ID
        # @type PlayerSessionId: String
        # @param Port: 端口号，最小值不小于1，最大值不超过60000
        # @type Port: Integer
        # @param Status: 玩家会话的状态（RESERVED = 1,ACTIVE = 2,COMPLETED = 3,TIMEDOUT = 4）
        # @type Status: String
        # @param TerminationTime: 玩家会话终止时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerminationTime: String

        attr_accessor :CreationTime, :DnsName, :FleetId, :GameServerSessionId, :IpAddress, :PlayerData, :PlayerId, :PlayerSessionId, :Port, :Status, :TerminationTime
        
        def initialize(creationtime=nil, dnsname=nil, fleetid=nil, gameserversessionid=nil, ipaddress=nil, playerdata=nil, playerid=nil, playersessionid=nil, port=nil, status=nil, terminationtime=nil)
          @CreationTime = creationtime
          @DnsName = dnsname
          @FleetId = fleetid
          @GameServerSessionId = gameserversessionid
          @IpAddress = ipaddress
          @PlayerData = playerdata
          @PlayerId = playerid
          @PlayerSessionId = playersessionid
          @Port = port
          @Status = status
          @TerminationTime = terminationtime
        end

        def deserialize(params)
          @CreationTime = params['CreationTime']
          @DnsName = params['DnsName']
          @FleetId = params['FleetId']
          @GameServerSessionId = params['GameServerSessionId']
          @IpAddress = params['IpAddress']
          @PlayerData = params['PlayerData']
          @PlayerId = params['PlayerId']
          @PlayerSessionId = params['PlayerSessionId']
          @Port = params['Port']
          @Status = params['Status']
          @TerminationTime = params['TerminationTime']
        end
      end

      # PutScalingPolicy请求参数结构体
      class PutScalingPolicyRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 扩缩容配置服务器舰队ID
        # @type FleetId: String
        # @param Name: 扩缩容策略名称，最小长度为1，最大长度为1024
        # @type Name: String
        # @param ScalingAdjustment: 扩缩容调整值，ScalingAdjustmentType取值PercentChangeInCapacity时，取值范围-99~99
        # ScalingAdjustmentType取值ChangeInCapacity或ExactCapacity时，最小值要缩容的最多CVM个数，最大值为实际最大的CVM个数限额
        # @type ScalingAdjustment: Integer
        # @param ScalingAdjustmentType: 扩缩容调整类型，取值（ChangeInCapacity，ExactCapacity，PercentChangeInCapacity）
        # @type ScalingAdjustmentType: String
        # @param Threshold: 扩缩容指标阈值
        # @type Threshold: Float
        # @param ComparisonOperator: 扩缩容策略比较符，取值：>,>=,<,<=
        # @type ComparisonOperator: String
        # @param EvaluationPeriods: 单个策略持续时间长度（分钟）
        # @type EvaluationPeriods: Integer
        # @param MetricName: 扩缩容参与计算的指标名称，PolicyType取值RuleBased，
        # MetricName取值（AvailableGameServerSessions，AvailableCustomCount，PercentAvailableCustomCount，ActiveInstances，IdleInstances，CurrentPlayerSessions和PercentIdleInstances）；
        # PolicyType取值TargetBased时，MetricName取值PercentAvailableGameSessions
        # @type MetricName: String
        # @param PolicyType: 策略类型，取值：TargetBased表示基于目标的策略；RuleBased表示基于规则的策略
        # @type PolicyType: String
        # @param TargetConfiguration: 扩缩容目标值配置，只有TargetBased类型的策略生效
        # @type TargetConfiguration: :class:`Tencentcloud::Gse.v20191112.models.TargetConfiguration`

        attr_accessor :FleetId, :Name, :ScalingAdjustment, :ScalingAdjustmentType, :Threshold, :ComparisonOperator, :EvaluationPeriods, :MetricName, :PolicyType, :TargetConfiguration
        
        def initialize(fleetid=nil, name=nil, scalingadjustment=nil, scalingadjustmenttype=nil, threshold=nil, comparisonoperator=nil, evaluationperiods=nil, metricname=nil, policytype=nil, targetconfiguration=nil)
          @FleetId = fleetid
          @Name = name
          @ScalingAdjustment = scalingadjustment
          @ScalingAdjustmentType = scalingadjustmenttype
          @Threshold = threshold
          @ComparisonOperator = comparisonoperator
          @EvaluationPeriods = evaluationperiods
          @MetricName = metricname
          @PolicyType = policytype
          @TargetConfiguration = targetconfiguration
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @Name = params['Name']
          @ScalingAdjustment = params['ScalingAdjustment']
          @ScalingAdjustmentType = params['ScalingAdjustmentType']
          @Threshold = params['Threshold']
          @ComparisonOperator = params['ComparisonOperator']
          @EvaluationPeriods = params['EvaluationPeriods']
          @MetricName = params['MetricName']
          @PolicyType = params['PolicyType']
          unless params['TargetConfiguration'].nil?
            @TargetConfiguration = TargetConfiguration.new.deserialize(params['TargetConfiguration'])
          end
        end
      end

      # PutScalingPolicy返回参数结构体
      class PutScalingPolicyResponse < TencentCloud::Common::AbstractModel
        # @param Name: 规则名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :RequestId
        
        def initialize(name=nil, requestid=nil)
          @Name = name
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @RequestId = params['RequestId']
        end
      end

      # PutTimerScalingPolicy请求参数结构体
      class PutTimerScalingPolicyRequest < TencentCloud::Common::AbstractModel
        # @param TimerScalingPolicy: 定时器策略消息
        # @type TimerScalingPolicy: :class:`Tencentcloud::Gse.v20191112.models.TimerScalingPolicy`

        attr_accessor :TimerScalingPolicy
        
        def initialize(timerscalingpolicy=nil)
          @TimerScalingPolicy = timerscalingpolicy
        end

        def deserialize(params)
          unless params['TimerScalingPolicy'].nil?
            @TimerScalingPolicy = TimerScalingPolicy.new.deserialize(params['TimerScalingPolicy'])
          end
        end
      end

      # PutTimerScalingPolicy返回参数结构体
      class PutTimerScalingPolicyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 配额资源
      class QuotaResource < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型，1生成包、2服务部署、3别名、4游戏服务器队列、5实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: Integer
        # @param HardLimit: 总额度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HardLimit: Integer
        # @param Remaining: 剩余额度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remaining: Integer
        # @param ExtraInfo: 额外信息，可能为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInfo: String

        attr_accessor :ResourceType, :HardLimit, :Remaining, :ExtraInfo
        
        def initialize(resourcetype=nil, hardlimit=nil, remaining=nil, extrainfo=nil)
          @ResourceType = resourcetype
          @HardLimit = hardlimit
          @Remaining = remaining
          @ExtraInfo = extrainfo
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @HardLimit = params['HardLimit']
          @Remaining = params['Remaining']
          @ExtraInfo = params['ExtraInfo']
        end
      end

      # ResolveAlias请求参数结构体
      class ResolveAliasRequest < TencentCloud::Common::AbstractModel
        # @param AliasId: 要获取fleetId的别名ID
        # @type AliasId: String

        attr_accessor :AliasId
        
        def initialize(aliasid=nil)
          @AliasId = aliasid
        end

        def deserialize(params)
          @AliasId = params['AliasId']
        end
      end

      # ResolveAlias返回参数结构体
      class ResolveAliasResponse < TencentCloud::Common::AbstractModel
        # @param FleetId: 别名指向的fleet的唯一标识符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FleetId, :RequestId
        
        def initialize(fleetid=nil, requestid=nil)
          @FleetId = fleetid
          @RequestId = requestid
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @RequestId = params['RequestId']
        end
      end

      # 资源创建规则
      class ResourceCreationLimitPolicy < TencentCloud::Common::AbstractModel
        # @param NewGameServerSessionsPerCreator: 创建数量，最小值1，默认2
        # @type NewGameServerSessionsPerCreator: Integer
        # @param PolicyPeriodInMinutes: 单位时间，最小值1，默认3，单位分钟
        # @type PolicyPeriodInMinutes: Integer

        attr_accessor :NewGameServerSessionsPerCreator, :PolicyPeriodInMinutes
        
        def initialize(newgameserversessionspercreator=nil, policyperiodinminutes=nil)
          @NewGameServerSessionsPerCreator = newgameserversessionspercreator
          @PolicyPeriodInMinutes = policyperiodinminutes
        end

        def deserialize(params)
          @NewGameServerSessionsPerCreator = params['NewGameServerSessionsPerCreator']
          @PolicyPeriodInMinutes = params['PolicyPeriodInMinutes']
        end
      end

      # 路由策略
      class RoutingStrategy < TencentCloud::Common::AbstractModel
        # @param Type: 别名的路由策略的类型，有效值常规别名(SIMPLE)、终止别名(TERMINAL)
        # @type Type: String
        # @param FleetId: 别名指向的队列的唯一标识符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetId: String
        # @param Message: 与终端路由策略一起使用的消息文本，长度不小于1字符不超过1024字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String

        attr_accessor :Type, :FleetId, :Message
        
        def initialize(type=nil, fleetid=nil, message=nil)
          @Type = type
          @FleetId = fleetid
          @Message = message
        end

        def deserialize(params)
          @Type = params['Type']
          @FleetId = params['FleetId']
          @Message = params['Message']
        end
      end

      # 运行配置
      class RuntimeConfiguration < TencentCloud::Common::AbstractModel
        # @param GameServerSessionActivationTimeoutSeconds: 游戏会话进程超时，最小值1，最大值600，单位秒
        # @type GameServerSessionActivationTimeoutSeconds: Integer
        # @param MaxConcurrentGameServerSessionActivations: 最大游戏会话数，最小值1，最大值2147483647
        # @type MaxConcurrentGameServerSessionActivations: Integer
        # @param ServerProcesses: 服务进程配置，至少有一个进程配置
        # @type ServerProcesses: Array

        attr_accessor :GameServerSessionActivationTimeoutSeconds, :MaxConcurrentGameServerSessionActivations, :ServerProcesses
        
        def initialize(gameserversessionactivationtimeoutseconds=nil, maxconcurrentgameserversessionactivations=nil, serverprocesses=nil)
          @GameServerSessionActivationTimeoutSeconds = gameserversessionactivationtimeoutseconds
          @MaxConcurrentGameServerSessionActivations = maxconcurrentgameserversessionactivations
          @ServerProcesses = serverprocesses
        end

        def deserialize(params)
          @GameServerSessionActivationTimeoutSeconds = params['GameServerSessionActivationTimeoutSeconds']
          @MaxConcurrentGameServerSessionActivations = params['MaxConcurrentGameServerSessionActivations']
          unless params['ServerProcesses'].nil?
            @ServerProcesses = []
            params['ServerProcesses'].each do |i|
              @ServerProcesses << ServerProcesse.new.deserialize(i)
            end
          end
        end
      end

      # 动态扩缩容配置
      class ScalingPolicy < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务部署ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetId: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ScalingAdjustment: 保留参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScalingAdjustment: String
        # @param ScalingAdjustmentType: 保留参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScalingAdjustmentType: String
        # @param ComparisonOperator: 保留参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComparisonOperator: String
        # @param Threshold: 保留参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Threshold: String
        # @param EvaluationPeriods: 保留参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EvaluationPeriods: String
        # @param MetricName: 保留参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricName: String
        # @param PolicyType: 策略类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyType: String
        # @param TargetConfiguration: 基于规则的配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetConfiguration: :class:`Tencentcloud::Gse.v20191112.models.TargetConfiguration`

        attr_accessor :FleetId, :Name, :Status, :ScalingAdjustment, :ScalingAdjustmentType, :ComparisonOperator, :Threshold, :EvaluationPeriods, :MetricName, :PolicyType, :TargetConfiguration
        
        def initialize(fleetid=nil, name=nil, status=nil, scalingadjustment=nil, scalingadjustmenttype=nil, comparisonoperator=nil, threshold=nil, evaluationperiods=nil, metricname=nil, policytype=nil, targetconfiguration=nil)
          @FleetId = fleetid
          @Name = name
          @Status = status
          @ScalingAdjustment = scalingadjustment
          @ScalingAdjustmentType = scalingadjustmenttype
          @ComparisonOperator = comparisonoperator
          @Threshold = threshold
          @EvaluationPeriods = evaluationperiods
          @MetricName = metricname
          @PolicyType = policytype
          @TargetConfiguration = targetconfiguration
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @Name = params['Name']
          @Status = params['Status']
          @ScalingAdjustment = params['ScalingAdjustment']
          @ScalingAdjustmentType = params['ScalingAdjustmentType']
          @ComparisonOperator = params['ComparisonOperator']
          @Threshold = params['Threshold']
          @EvaluationPeriods = params['EvaluationPeriods']
          @MetricName = params['MetricName']
          @PolicyType = params['PolicyType']
          unless params['TargetConfiguration'].nil?
            @TargetConfiguration = TargetConfiguration.new.deserialize(params['TargetConfiguration'])
          end
        end
      end

      # SearchGameServerSessions请求参数结构体
      class SearchGameServerSessionsRequest < TencentCloud::Common::AbstractModel
        # @param AliasId: 别名ID
        # @type AliasId: String
        # @param FleetId: 舰队ID
        # @type FleetId: String
        # @param Limit: 单次查询记录数上限
        # @type Limit: Integer
        # @param NextToken: 页偏移，用于查询下一页，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        # @type NextToken: String
        # @param FilterExpression: 搜索条件表达式，支持如下变量
        # gameServerSessionName 游戏会话名称 String
        # gameServerSessionId 游戏会话ID String
        # maximumSessions 最大的玩家会话数 Number
        # creationTimeMillis 创建时间，单位：毫秒 Number
        # playerSessionCount 当前玩家会话数 Number
        # hasAvailablePlayerSessions 是否有可用玩家数 String 取值true或false
        # gameServerSessionProperties 游戏会话属性 String

        # 表达式String类型 等于=，不等于<>判断
        # 表示Number类型支持 =,<>,>,>=,<,<=

        # 例如：
        # FilterExpression取值
        # playerSessionCount>=2 AND hasAvailablePlayerSessions=true"
        # 表示查找至少有两个玩家，而且有可用玩家会话的游戏会话。
        # FilterExpression取值
        # gameServerSessionProperties.K1 = 'V1' AND gameServerSessionProperties.K2 = 'V2' OR gameServerSessionProperties.K3 = 'V3'

        # 表示
        # 查询满足如下游戏服务器会话属性的游戏会话
        # {
        #     "GameProperties":[
        #         {
        #             "Key":"K1",
        #             "Value":"V1"
        #         },
        #         {
        #             "Key":"K2",
        #             "Value":"V2"
        #         },
        #         {
        #             "Key":"K3",
        #             "Value":"V3"
        #         }
        #     ]
        # }
        # @type FilterExpression: String
        # @param SortExpression: 排序条件关键字
        # 支持排序字段
        # gameServerSessionName 游戏会话名称 String
        # gameServerSessionId 游戏会话ID String
        # maximumSessions 最大的玩家会话数 Number
        # creationTimeMillis 创建时间，单位：毫秒 Number
        # playerSessionCount 当前玩家会话数 Number
        # @type SortExpression: String

        attr_accessor :AliasId, :FleetId, :Limit, :NextToken, :FilterExpression, :SortExpression
        
        def initialize(aliasid=nil, fleetid=nil, limit=nil, nexttoken=nil, filterexpression=nil, sortexpression=nil)
          @AliasId = aliasid
          @FleetId = fleetid
          @Limit = limit
          @NextToken = nexttoken
          @FilterExpression = filterexpression
          @SortExpression = sortexpression
        end

        def deserialize(params)
          @AliasId = params['AliasId']
          @FleetId = params['FleetId']
          @Limit = params['Limit']
          @NextToken = params['NextToken']
          @FilterExpression = params['FilterExpression']
          @SortExpression = params['SortExpression']
        end
      end

      # SearchGameServerSessions返回参数结构体
      class SearchGameServerSessionsResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSessions: 游戏服务器会话列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GameServerSessions: Array
        # @param NextToken: 页偏移，用于查询下一页，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSessions, :NextToken, :RequestId
        
        def initialize(gameserversessions=nil, nexttoken=nil, requestid=nil)
          @GameServerSessions = gameserversessions
          @NextToken = nexttoken
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GameServerSessions'].nil?
            @GameServerSessions = []
            params['GameServerSessions'].each do |i|
              @GameServerSessions << GameServerSession.new.deserialize(i)
            end
          end
          @NextToken = params['NextToken']
          @RequestId = params['RequestId']
        end
      end

      # 游戏服务进程
      class ServerProcesse < TencentCloud::Common::AbstractModel
        # @param ConcurrentExecutions: 并发执行数量，所有进程并发执行总数最小值1，最大值50
        # @type ConcurrentExecutions: Integer
        # @param LaunchPath: 启动路径：Linux路径/local/game/ 或WIndows路径C:\game\，最小长度1，最大长度1024
        # @type LaunchPath: String
        # @param Parameters: 启动参数，最小长度0，最大长度1024
        # @type Parameters: String

        attr_accessor :ConcurrentExecutions, :LaunchPath, :Parameters
        
        def initialize(concurrentexecutions=nil, launchpath=nil, parameters=nil)
          @ConcurrentExecutions = concurrentexecutions
          @LaunchPath = launchpath
          @Parameters = parameters
        end

        def deserialize(params)
          @ConcurrentExecutions = params['ConcurrentExecutions']
          @LaunchPath = params['LaunchPath']
          @Parameters = params['Parameters']
        end
      end

      # SetServerReserved请求参数结构体
      class SetServerReservedRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 扩缩容配置服务器舰队ID
        # @type FleetId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ReserveValue: 实例是否保留, 1-保留，0-不保留,默认
        # @type ReserveValue: Integer

        attr_accessor :FleetId, :InstanceId, :ReserveValue
        
        def initialize(fleetid=nil, instanceid=nil, reservevalue=nil)
          @FleetId = fleetid
          @InstanceId = instanceid
          @ReserveValue = reservevalue
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @InstanceId = params['InstanceId']
          @ReserveValue = params['ReserveValue']
        end
      end

      # SetServerReserved返回参数结构体
      class SetServerReservedResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # SetServerWeight请求参数结构体
      class SetServerWeightRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队ID
        # @type FleetId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Weight: 权重，最小值0，最大值10，默认值5
        # @type Weight: Integer

        attr_accessor :FleetId, :InstanceId, :Weight
        
        def initialize(fleetid=nil, instanceid=nil, weight=nil)
          @FleetId = fleetid
          @InstanceId = instanceid
          @Weight = weight
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @InstanceId = params['InstanceId']
          @Weight = params['Weight']
        end
      end

      # SetServerWeight返回参数结构体
      class SetServerWeightResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # StartFleetActions请求参数结构体
      class StartFleetActionsRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队 Id
        # @type FleetId: String
        # @param Actions: 服务器舰队扩展策略，值为["AUTO_SCALING"]
        # @type Actions: Array

        attr_accessor :FleetId, :Actions
        
        def initialize(fleetid=nil, actions=nil)
          @FleetId = fleetid
          @Actions = actions
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @Actions = params['Actions']
        end
      end

      # StartFleetActions返回参数结构体
      class StartFleetActionsResponse < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队 Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FleetId, :RequestId
        
        def initialize(fleetid=nil, requestid=nil)
          @FleetId = fleetid
          @RequestId = requestid
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @RequestId = params['RequestId']
        end
      end

      # StartGameServerSessionPlacement请求参数结构体
      class StartGameServerSessionPlacementRequest < TencentCloud::Common::AbstractModel
        # @param PlacementId: 开始部署游戏服务器会话的唯一标识符，最大值48个ASCII字符，模式：[a-zA-Z0-9-]+
        # @type PlacementId: String
        # @param GameServerSessionQueueName: 游戏服务器会话队列名称
        # @type GameServerSessionQueueName: String
        # @param MaximumPlayerSessionCount: 游戏服务器允许同时连接到游戏会话的最大玩家数量，最小值1，最大值为玩家会话最大限额
        # @type MaximumPlayerSessionCount: Integer
        # @param DesiredPlayerSessions: 玩家游戏会话信息
        # @type DesiredPlayerSessions: Array
        # @param GameProperties: 玩家游戏会话属性
        # @type GameProperties: Array
        # @param GameServerSessionData: 游戏服务器会话数据，最大长度不超过4096个ASCII字符
        # @type GameServerSessionData: String
        # @param GameServerSessionName: 游戏服务器会话名称，最大长度不超过4096个ASCII字符
        # @type GameServerSessionName: String
        # @param PlayerLatencies: 玩家延迟
        # @type PlayerLatencies: Array

        attr_accessor :PlacementId, :GameServerSessionQueueName, :MaximumPlayerSessionCount, :DesiredPlayerSessions, :GameProperties, :GameServerSessionData, :GameServerSessionName, :PlayerLatencies
        
        def initialize(placementid=nil, gameserversessionqueuename=nil, maximumplayersessioncount=nil, desiredplayersessions=nil, gameproperties=nil, gameserversessiondata=nil, gameserversessionname=nil, playerlatencies=nil)
          @PlacementId = placementid
          @GameServerSessionQueueName = gameserversessionqueuename
          @MaximumPlayerSessionCount = maximumplayersessioncount
          @DesiredPlayerSessions = desiredplayersessions
          @GameProperties = gameproperties
          @GameServerSessionData = gameserversessiondata
          @GameServerSessionName = gameserversessionname
          @PlayerLatencies = playerlatencies
        end

        def deserialize(params)
          @PlacementId = params['PlacementId']
          @GameServerSessionQueueName = params['GameServerSessionQueueName']
          @MaximumPlayerSessionCount = params['MaximumPlayerSessionCount']
          unless params['DesiredPlayerSessions'].nil?
            @DesiredPlayerSessions = []
            params['DesiredPlayerSessions'].each do |i|
              @DesiredPlayerSessions << DesiredPlayerSession.new.deserialize(i)
            end
          end
          unless params['GameProperties'].nil?
            @GameProperties = []
            params['GameProperties'].each do |i|
              @GameProperties << GameProperty.new.deserialize(i)
            end
          end
          @GameServerSessionData = params['GameServerSessionData']
          @GameServerSessionName = params['GameServerSessionName']
          unless params['PlayerLatencies'].nil?
            @PlayerLatencies = []
            params['PlayerLatencies'].each do |i|
              @PlayerLatencies << PlayerLatency.new.deserialize(i)
            end
          end
        end
      end

      # StartGameServerSessionPlacement返回参数结构体
      class StartGameServerSessionPlacementResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSessionPlacement: 游戏服务器会话放置
        # @type GameServerSessionPlacement: :class:`Tencentcloud::Gse.v20191112.models.GameServerSessionPlacement`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSessionPlacement, :RequestId
        
        def initialize(gameserversessionplacement=nil, requestid=nil)
          @GameServerSessionPlacement = gameserversessionplacement
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GameServerSessionPlacement'].nil?
            @GameServerSessionPlacement = GameServerSessionPlacement.new.deserialize(params['GameServerSessionPlacement'])
          end
          @RequestId = params['RequestId']
        end
      end

      # StopFleetActions请求参数结构体
      class StopFleetActionsRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队 Id
        # @type FleetId: String
        # @param Actions: 服务器舰队扩展策略，值为["AUTO_SCALING"]
        # @type Actions: Array

        attr_accessor :FleetId, :Actions
        
        def initialize(fleetid=nil, actions=nil)
          @FleetId = fleetid
          @Actions = actions
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @Actions = params['Actions']
        end
      end

      # StopFleetActions返回参数结构体
      class StopFleetActionsResponse < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队 Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FleetId, :RequestId
        
        def initialize(fleetid=nil, requestid=nil)
          @FleetId = fleetid
          @RequestId = requestid
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @RequestId = params['RequestId']
        end
      end

      # StopGameServerSessionPlacement请求参数结构体
      class StopGameServerSessionPlacementRequest < TencentCloud::Common::AbstractModel
        # @param PlacementId: 游戏服务器会话放置的唯一标识符
        # @type PlacementId: String

        attr_accessor :PlacementId
        
        def initialize(placementid=nil)
          @PlacementId = placementid
        end

        def deserialize(params)
          @PlacementId = params['PlacementId']
        end
      end

      # StopGameServerSessionPlacement返回参数结构体
      class StopGameServerSessionPlacementResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSessionPlacement: 游戏服务器会话放置
        # @type GameServerSessionPlacement: :class:`Tencentcloud::Gse.v20191112.models.GameServerSessionPlacement`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSessionPlacement, :RequestId
        
        def initialize(gameserversessionplacement=nil, requestid=nil)
          @GameServerSessionPlacement = gameserversessionplacement
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GameServerSessionPlacement'].nil?
            @GameServerSessionPlacement = GameServerSessionPlacement.new.deserialize(params['GameServerSessionPlacement'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 标签结构体
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签键，最大长度127字节
        # @type Key: String
        # @param Value: 标签值，最大长度255字节
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

      # 基于规则的动态扩缩容配置项
      class TargetConfiguration < TencentCloud::Common::AbstractModel
        # @param TargetValue: 预留存率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetValue: Integer

        attr_accessor :TargetValue
        
        def initialize(targetvalue=nil)
          @TargetValue = targetvalue
        end

        def deserialize(params)
          @TargetValue = params['TargetValue']
        end
      end

      # 重复周期配置
      class TimerConfiguration < TencentCloud::Common::AbstractModel
        # @param TimerType: 定时器重复周期类型（未定义0，单次1、按天2、按月3、按周4）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimerType: Integer
        # @param TimerValue: 定时器取值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimerValue: :class:`Tencentcloud::Gse.v20191112.models.TimerValue`
        # @param BeginTime: 定时器开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginTime: String
        # @param EndTime: 定时器结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :TimerType, :TimerValue, :BeginTime, :EndTime
        
        def initialize(timertype=nil, timervalue=nil, begintime=nil, endtime=nil)
          @TimerType = timertype
          @TimerValue = timervalue
          @BeginTime = begintime
          @EndTime = endtime
        end

        def deserialize(params)
          @TimerType = params['TimerType']
          unless params['TimerValue'].nil?
            @TimerValue = TimerValue.new.deserialize(params['TimerValue'])
          end
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
        end
      end

      # 定时器弹性伸缩策略
      class TimerFleetCapacity < TencentCloud::Common::AbstractModel
        # @param FleetId: 扩缩容配置服务器舰队ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetId: String
        # @param DesiredInstances: 期望实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DesiredInstances: Integer
        # @param MinSize: 最小实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinSize: Integer
        # @param MaxSize: 最大实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxSize: Integer
        # @param ScalingInterval: 伸缩容间隔，单位：分钟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScalingInterval: Integer
        # @param ScalingType: 扩缩容类型（手动1，自动2、未定义0）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScalingType: Integer
        # @param TargetConfiguration: 基于目标的扩展策略的设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetConfiguration: :class:`Tencentcloud::Gse.v20191112.models.TargetConfiguration`

        attr_accessor :FleetId, :DesiredInstances, :MinSize, :MaxSize, :ScalingInterval, :ScalingType, :TargetConfiguration
        
        def initialize(fleetid=nil, desiredinstances=nil, minsize=nil, maxsize=nil, scalinginterval=nil, scalingtype=nil, targetconfiguration=nil)
          @FleetId = fleetid
          @DesiredInstances = desiredinstances
          @MinSize = minsize
          @MaxSize = maxsize
          @ScalingInterval = scalinginterval
          @ScalingType = scalingtype
          @TargetConfiguration = targetconfiguration
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @DesiredInstances = params['DesiredInstances']
          @MinSize = params['MinSize']
          @MaxSize = params['MaxSize']
          @ScalingInterval = params['ScalingInterval']
          @ScalingType = params['ScalingType']
          unless params['TargetConfiguration'].nil?
            @TargetConfiguration = TargetConfiguration.new.deserialize(params['TargetConfiguration'])
          end
        end
      end

      # 定时器策略消息
      class TimerScalingPolicy < TencentCloud::Common::AbstractModel
        # @param TimerId: 定时器ID，进行encode，填写时更新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimerId: String
        # @param TimerName: 定时器名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimerName: String
        # @param TimerStatus: 定时器状态(未定义0、未生效1、生效中2、已停止3、已过期4)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimerStatus: Integer
        # @param TimerFleetCapacity: 定时器弹性伸缩策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimerFleetCapacity: :class:`Tencentcloud::Gse.v20191112.models.TimerFleetCapacity`
        # @param TimerConfiguration: 重复周期配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimerConfiguration: :class:`Tencentcloud::Gse.v20191112.models.TimerConfiguration`

        attr_accessor :TimerId, :TimerName, :TimerStatus, :TimerFleetCapacity, :TimerConfiguration
        
        def initialize(timerid=nil, timername=nil, timerstatus=nil, timerfleetcapacity=nil, timerconfiguration=nil)
          @TimerId = timerid
          @TimerName = timername
          @TimerStatus = timerstatus
          @TimerFleetCapacity = timerfleetcapacity
          @TimerConfiguration = timerconfiguration
        end

        def deserialize(params)
          @TimerId = params['TimerId']
          @TimerName = params['TimerName']
          @TimerStatus = params['TimerStatus']
          unless params['TimerFleetCapacity'].nil?
            @TimerFleetCapacity = TimerFleetCapacity.new.deserialize(params['TimerFleetCapacity'])
          end
          unless params['TimerConfiguration'].nil?
            @TimerConfiguration = TimerConfiguration.new.deserialize(params['TimerConfiguration'])
          end
        end
      end

      # 定时器取值配置
      class TimerValue < TencentCloud::Common::AbstractModel
        # @param Day: 每X天，执行一次(重复周期-按天/单次)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Day: Integer
        # @param FromDay: 每月从第x天，执行一次(重复周期-按月)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FromDay: Integer
        # @param ToDay: 每月到第x天，执行一次(重复周期-按月)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToDay: Integer
        # @param WeekDays: 重复周期-按周，周几（多个值,取值周一(1,2,3,4,5,6,7)周日）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeekDays: Array

        attr_accessor :Day, :FromDay, :ToDay, :WeekDays
        
        def initialize(day=nil, fromday=nil, today=nil, weekdays=nil)
          @Day = day
          @FromDay = fromday
          @ToDay = today
          @WeekDays = weekdays
        end

        def deserialize(params)
          @Day = params['Day']
          @FromDay = params['FromDay']
          @ToDay = params['ToDay']
          @WeekDays = params['WeekDays']
        end
      end

      # UpdateAlias请求参数结构体
      class UpdateAliasRequest < TencentCloud::Common::AbstractModel
        # @param AliasId: 要更新的别名的唯一标识符
        # @type AliasId: String
        # @param Name: 名字，长度不小于1字符不超过1024字符
        # @type Name: String
        # @param Description: 别名的可读说明，长度不小于1字符不超过1024字符
        # @type Description: String
        # @param RoutingStrategy: 别名的路由配置
        # @type RoutingStrategy: :class:`Tencentcloud::Gse.v20191112.models.RoutingStrategy`

        attr_accessor :AliasId, :Name, :Description, :RoutingStrategy
        
        def initialize(aliasid=nil, name=nil, description=nil, routingstrategy=nil)
          @AliasId = aliasid
          @Name = name
          @Description = description
          @RoutingStrategy = routingstrategy
        end

        def deserialize(params)
          @AliasId = params['AliasId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['RoutingStrategy'].nil?
            @RoutingStrategy = RoutingStrategy.new.deserialize(params['RoutingStrategy'])
          end
        end
      end

      # UpdateAlias返回参数结构体
      class UpdateAliasResponse < TencentCloud::Common::AbstractModel
        # @param Alias: 别名对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: :class:`Tencentcloud::Gse.v20191112.models.Alias`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Alias, :RequestId
        
        def initialize(_alias=nil, requestid=nil)
          @Alias = _alias
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Alias'].nil?
            @Alias = Alias.new.deserialize(params['Alias'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateAsset请求参数结构体
      class UpdateAssetRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 生成包ID
        # @type AssetId: String
        # @param AssetName: 生成包名字，最小长度为1，最大长度为64
        # @type AssetName: String
        # @param AssetVersion: 生成包版本，最小长度为1，最大长度为64
        # @type AssetVersion: String

        attr_accessor :AssetId, :AssetName, :AssetVersion
        
        def initialize(assetid=nil, assetname=nil, assetversion=nil)
          @AssetId = assetid
          @AssetName = assetname
          @AssetVersion = assetversion
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @AssetVersion = params['AssetVersion']
        end
      end

      # UpdateAsset返回参数结构体
      class UpdateAssetResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # UpdateBucketAccelerateOpt请求参数结构体
      class UpdateBucketAccelerateOptRequest < TencentCloud::Common::AbstractModel
        # @param Allowed: true为开启全球加速，false为关闭
        # @type Allowed: Boolean

        attr_accessor :Allowed
        
        def initialize(allowed=nil)
          @Allowed = allowed
        end

        def deserialize(params)
          @Allowed = params['Allowed']
        end
      end

      # UpdateBucketAccelerateOpt返回参数结构体
      class UpdateBucketAccelerateOptResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # UpdateBucketCORSOpt请求参数结构体
      class UpdateBucketCORSOptRequest < TencentCloud::Common::AbstractModel
        # @param AllowedOrigins: 允许的访问来源;具体参见 [cos文档](https://cloud.tencent.com/document/product/436/8279)
        # @type AllowedOrigins: Array
        # @param AllowedMethods: 允许的 HTTP 操作方法;可以配置多个:PUT、GET、POST、HEAD。[cos文档](https://cloud.tencent.com/document/product/436/8279)
        # @type AllowedMethods: Array
        # @param AllowedHeaders: 用于指定允许浏览器发送 CORS 请求时携带的自定义 HTTP 请求头部;可以配置*，代表允许所有头部，为了避免遗漏，推荐配置为*。[cos文档](https://cloud.tencent.com/document/product/436/8279)
        # @type AllowedHeaders: Array
        # @param MaxAgeSeconds: 跨域资源共享配置的有效时间，单位为秒。[cos文档](https://cloud.tencent.com/document/product/436/8279)
        # @type MaxAgeSeconds: Integer
        # @param ExposeHeaders: 允许浏览器获取的 CORS 请求响应中的头部，不区分大小写；默认情况下浏览器只能访问简单响应头部：Cache-Control、Content-Type、Expires、Last-Modified，如果需要访问其他响应头部，需要添加 ExposeHeader 配置。[cos文档](https://cloud.tencent.com/document/product/436/8279)
        # @type ExposeHeaders: Array

        attr_accessor :AllowedOrigins, :AllowedMethods, :AllowedHeaders, :MaxAgeSeconds, :ExposeHeaders
        
        def initialize(allowedorigins=nil, allowedmethods=nil, allowedheaders=nil, maxageseconds=nil, exposeheaders=nil)
          @AllowedOrigins = allowedorigins
          @AllowedMethods = allowedmethods
          @AllowedHeaders = allowedheaders
          @MaxAgeSeconds = maxageseconds
          @ExposeHeaders = exposeheaders
        end

        def deserialize(params)
          @AllowedOrigins = params['AllowedOrigins']
          @AllowedMethods = params['AllowedMethods']
          @AllowedHeaders = params['AllowedHeaders']
          @MaxAgeSeconds = params['MaxAgeSeconds']
          @ExposeHeaders = params['ExposeHeaders']
        end
      end

      # UpdateBucketCORSOpt返回参数结构体
      class UpdateBucketCORSOptResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # UpdateFleetAttributes请求参数结构体
      class UpdateFleetAttributesRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队 Id
        # @type FleetId: String
        # @param Description: 服务器舰队描述，最小长度0，最大长度100
        # @type Description: String
        # @param Name: 服务器舰队名称，最小长度1，最大长度50
        # @type Name: String
        # @param NewGameSessionProtectionPolicy: 保护策略：不保护NoProtection、完全保护FullProtection、时限保护TimeLimitProtection
        # @type NewGameSessionProtectionPolicy: String
        # @param ResourceCreationLimitPolicy: 资源创建限制策略
        # @type ResourceCreationLimitPolicy: :class:`Tencentcloud::Gse.v20191112.models.ResourceCreationLimitPolicy`
        # @param GameServerSessionProtectionTimeLimit: 时限保护超时时间，默认60分钟，最小值5，最大值1440；当NewGameSessionProtectionPolicy为TimeLimitProtection时参数有效
        # @type GameServerSessionProtectionTimeLimit: Integer

        attr_accessor :FleetId, :Description, :Name, :NewGameSessionProtectionPolicy, :ResourceCreationLimitPolicy, :GameServerSessionProtectionTimeLimit
        
        def initialize(fleetid=nil, description=nil, name=nil, newgamesessionprotectionpolicy=nil, resourcecreationlimitpolicy=nil, gameserversessionprotectiontimelimit=nil)
          @FleetId = fleetid
          @Description = description
          @Name = name
          @NewGameSessionProtectionPolicy = newgamesessionprotectionpolicy
          @ResourceCreationLimitPolicy = resourcecreationlimitpolicy
          @GameServerSessionProtectionTimeLimit = gameserversessionprotectiontimelimit
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @Description = params['Description']
          @Name = params['Name']
          @NewGameSessionProtectionPolicy = params['NewGameSessionProtectionPolicy']
          unless params['ResourceCreationLimitPolicy'].nil?
            @ResourceCreationLimitPolicy = ResourceCreationLimitPolicy.new.deserialize(params['ResourceCreationLimitPolicy'])
          end
          @GameServerSessionProtectionTimeLimit = params['GameServerSessionProtectionTimeLimit']
        end
      end

      # UpdateFleetAttributes返回参数结构体
      class UpdateFleetAttributesResponse < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FleetId, :RequestId
        
        def initialize(fleetid=nil, requestid=nil)
          @FleetId = fleetid
          @RequestId = requestid
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @RequestId = params['RequestId']
        end
      end

      # UpdateFleetCapacity请求参数结构体
      class UpdateFleetCapacityRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队ID
        # @type FleetId: String
        # @param DesiredInstances: 期望的服务器实例数
        # @type DesiredInstances: Integer
        # @param MinSize: 服务器实例数最小限制，最小值0，最大值不超过最高配额查看各地区最高配额减1
        # @type MinSize: Integer
        # @param MaxSize: 服务器实例数最大限制，最小值1，最大值不超过最高配额查看各地区最高配额
        # @type MaxSize: Integer
        # @param ScalingInterval: 服务器伸缩容间隔，单位分钟，最小值3，最大值30，默认值10
        # @type ScalingInterval: Integer

        attr_accessor :FleetId, :DesiredInstances, :MinSize, :MaxSize, :ScalingInterval
        
        def initialize(fleetid=nil, desiredinstances=nil, minsize=nil, maxsize=nil, scalinginterval=nil)
          @FleetId = fleetid
          @DesiredInstances = desiredinstances
          @MinSize = minsize
          @MaxSize = maxsize
          @ScalingInterval = scalinginterval
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @DesiredInstances = params['DesiredInstances']
          @MinSize = params['MinSize']
          @MaxSize = params['MaxSize']
          @ScalingInterval = params['ScalingInterval']
        end
      end

      # UpdateFleetCapacity返回参数结构体
      class UpdateFleetCapacityResponse < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FleetId, :RequestId
        
        def initialize(fleetid=nil, requestid=nil)
          @FleetId = fleetid
          @RequestId = requestid
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @RequestId = params['RequestId']
        end
      end

      # UpdateFleetName请求参数结构体
      class UpdateFleetNameRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队 Id
        # @type FleetId: String
        # @param Name: 服务器舰队名称，最小长度1，最大长度50
        # @type Name: String

        attr_accessor :FleetId, :Name
        
        def initialize(fleetid=nil, name=nil)
          @FleetId = fleetid
          @Name = name
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @Name = params['Name']
        end
      end

      # UpdateFleetName返回参数结构体
      class UpdateFleetNameResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # UpdateFleetPortSettings请求参数结构体
      class UpdateFleetPortSettingsRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队 Id
        # @type FleetId: String
        # @param InboundPermissionAuthorizations: 新增安全组
        # @type InboundPermissionAuthorizations: Array
        # @param InboundPermissionRevocations: 移除安全组
        # @type InboundPermissionRevocations: Array

        attr_accessor :FleetId, :InboundPermissionAuthorizations, :InboundPermissionRevocations
        
        def initialize(fleetid=nil, inboundpermissionauthorizations=nil, inboundpermissionrevocations=nil)
          @FleetId = fleetid
          @InboundPermissionAuthorizations = inboundpermissionauthorizations
          @InboundPermissionRevocations = inboundpermissionrevocations
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          unless params['InboundPermissionAuthorizations'].nil?
            @InboundPermissionAuthorizations = []
            params['InboundPermissionAuthorizations'].each do |i|
              @InboundPermissionAuthorizations << InboundPermissionAuthorization.new.deserialize(i)
            end
          end
          unless params['InboundPermissionRevocations'].nil?
            @InboundPermissionRevocations = []
            params['InboundPermissionRevocations'].each do |i|
              @InboundPermissionRevocations << InboundPermissionRevocations.new.deserialize(i)
            end
          end
        end
      end

      # UpdateFleetPortSettings返回参数结构体
      class UpdateFleetPortSettingsResponse < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务部署 Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FleetId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FleetId, :RequestId
        
        def initialize(fleetid=nil, requestid=nil)
          @FleetId = fleetid
          @RequestId = requestid
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          @RequestId = params['RequestId']
        end
      end

      # UpdateGameServerSessionQueue请求参数结构体
      class UpdateGameServerSessionQueueRequest < TencentCloud::Common::AbstractModel
        # @param Name: 游戏服务器会话队列名字，长度1~128
        # @type Name: String
        # @param Destinations: 目的服务器舰队（可为别名）列表
        # @type Destinations: Array
        # @param PlayerLatencyPolicies: 延迟策略集合
        # @type PlayerLatencyPolicies: Array
        # @param TimeoutInSeconds: 超时时间
        # @type TimeoutInSeconds: Integer

        attr_accessor :Name, :Destinations, :PlayerLatencyPolicies, :TimeoutInSeconds
        
        def initialize(name=nil, destinations=nil, playerlatencypolicies=nil, timeoutinseconds=nil)
          @Name = name
          @Destinations = destinations
          @PlayerLatencyPolicies = playerlatencypolicies
          @TimeoutInSeconds = timeoutinseconds
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Destinations'].nil?
            @Destinations = []
            params['Destinations'].each do |i|
              @Destinations << GameServerSessionQueueDestination.new.deserialize(i)
            end
          end
          unless params['PlayerLatencyPolicies'].nil?
            @PlayerLatencyPolicies = []
            params['PlayerLatencyPolicies'].each do |i|
              @PlayerLatencyPolicies << PlayerLatencyPolicy.new.deserialize(i)
            end
          end
          @TimeoutInSeconds = params['TimeoutInSeconds']
        end
      end

      # UpdateGameServerSessionQueue返回参数结构体
      class UpdateGameServerSessionQueueResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSessionQueue: 部署服务组对象
        # @type GameServerSessionQueue: :class:`Tencentcloud::Gse.v20191112.models.GameServerSessionQueue`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSessionQueue, :RequestId
        
        def initialize(gameserversessionqueue=nil, requestid=nil)
          @GameServerSessionQueue = gameserversessionqueue
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GameServerSessionQueue'].nil?
            @GameServerSessionQueue = GameServerSessionQueue.new.deserialize(params['GameServerSessionQueue'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateGameServerSession请求参数结构体
      class UpdateGameServerSessionRequest < TencentCloud::Common::AbstractModel
        # @param GameServerSessionId: 游戏服务器会话ID，最小长度1个ASCII字符，最大长度不超过256个ASCII字符
        # @type GameServerSessionId: String
        # @param MaximumPlayerSessionCount: 最大玩家数量，最小值不小于0
        # @type MaximumPlayerSessionCount: Integer
        # @param Name: 游戏服务器会话名称，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        # @type Name: String
        # @param PlayerSessionCreationPolicy: 玩家会话创建策略，包括允许所有玩家加入和禁止所有玩家加入（ACCEPT_ALL,DENY_ALL）
        # @type PlayerSessionCreationPolicy: String
        # @param ProtectionPolicy: 保护策略，包括不保护、时限保护和完全保护(NoProtection,TimeLimitProtection,FullProtection)
        # @type ProtectionPolicy: String

        attr_accessor :GameServerSessionId, :MaximumPlayerSessionCount, :Name, :PlayerSessionCreationPolicy, :ProtectionPolicy
        
        def initialize(gameserversessionid=nil, maximumplayersessioncount=nil, name=nil, playersessioncreationpolicy=nil, protectionpolicy=nil)
          @GameServerSessionId = gameserversessionid
          @MaximumPlayerSessionCount = maximumplayersessioncount
          @Name = name
          @PlayerSessionCreationPolicy = playersessioncreationpolicy
          @ProtectionPolicy = protectionpolicy
        end

        def deserialize(params)
          @GameServerSessionId = params['GameServerSessionId']
          @MaximumPlayerSessionCount = params['MaximumPlayerSessionCount']
          @Name = params['Name']
          @PlayerSessionCreationPolicy = params['PlayerSessionCreationPolicy']
          @ProtectionPolicy = params['ProtectionPolicy']
        end
      end

      # UpdateGameServerSession返回参数结构体
      class UpdateGameServerSessionResponse < TencentCloud::Common::AbstractModel
        # @param GameServerSession: 更新后的游戏会话
        # @type GameServerSession: :class:`Tencentcloud::Gse.v20191112.models.GameServerSession`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GameServerSession, :RequestId
        
        def initialize(gameserversession=nil, requestid=nil)
          @GameServerSession = gameserversession
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GameServerSession'].nil?
            @GameServerSession = GameServerSession.new.deserialize(params['GameServerSession'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateRuntimeConfiguration请求参数结构体
      class UpdateRuntimeConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param FleetId: 服务器舰队Id
        # @type FleetId: String
        # @param RuntimeConfiguration: 服务器舰队配置
        # @type RuntimeConfiguration: :class:`Tencentcloud::Gse.v20191112.models.RuntimeConfiguration`

        attr_accessor :FleetId, :RuntimeConfiguration
        
        def initialize(fleetid=nil, runtimeconfiguration=nil)
          @FleetId = fleetid
          @RuntimeConfiguration = runtimeconfiguration
        end

        def deserialize(params)
          @FleetId = params['FleetId']
          unless params['RuntimeConfiguration'].nil?
            @RuntimeConfiguration = RuntimeConfiguration.new.deserialize(params['RuntimeConfiguration'])
          end
        end
      end

      # UpdateRuntimeConfiguration返回参数结构体
      class UpdateRuntimeConfigurationResponse < TencentCloud::Common::AbstractModel
        # @param RuntimeConfiguration: 服务器舰队配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeConfiguration: :class:`Tencentcloud::Gse.v20191112.models.RuntimeConfiguration`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuntimeConfiguration, :RequestId
        
        def initialize(runtimeconfiguration=nil, requestid=nil)
          @RuntimeConfiguration = runtimeconfiguration
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuntimeConfiguration'].nil?
            @RuntimeConfiguration = RuntimeConfiguration.new.deserialize(params['RuntimeConfiguration'])
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

