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
  module Cvm
    module V20170312
      # 配额详情
      class AccountQuota < TencentCloud::Common::AbstractModel
        # @param PostPaidQuotaSet: 后付费配额列表
        # @type PostPaidQuotaSet: Array
        # @param PrePaidQuotaSet: 预付费配额列表
        # @type PrePaidQuotaSet: Array
        # @param SpotPaidQuotaSet: spot配额列表
        # @type SpotPaidQuotaSet: Array
        # @param ImageQuotaSet: 镜像配额列表
        # @type ImageQuotaSet: Array
        # @param DisasterRecoverGroupQuotaSet: 置放群组配额列表
        # @type DisasterRecoverGroupQuotaSet: Array

        attr_accessor :PostPaidQuotaSet, :PrePaidQuotaSet, :SpotPaidQuotaSet, :ImageQuotaSet, :DisasterRecoverGroupQuotaSet

        def initialize(postpaidquotaset=nil, prepaidquotaset=nil, spotpaidquotaset=nil, imagequotaset=nil, disasterrecovergroupquotaset=nil)
          @PostPaidQuotaSet = postpaidquotaset
          @PrePaidQuotaSet = prepaidquotaset
          @SpotPaidQuotaSet = spotpaidquotaset
          @ImageQuotaSet = imagequotaset
          @DisasterRecoverGroupQuotaSet = disasterrecovergroupquotaset
        end

        def deserialize(params)
          unless params['PostPaidQuotaSet'].nil?
            @PostPaidQuotaSet = []
            params['PostPaidQuotaSet'].each do |i|
              postpaidquota_tmp = PostPaidQuota.new
              postpaidquota_tmp.deserialize(i)
              @PostPaidQuotaSet << postpaidquota_tmp
            end
          end
          unless params['PrePaidQuotaSet'].nil?
            @PrePaidQuotaSet = []
            params['PrePaidQuotaSet'].each do |i|
              prepaidquota_tmp = PrePaidQuota.new
              prepaidquota_tmp.deserialize(i)
              @PrePaidQuotaSet << prepaidquota_tmp
            end
          end
          unless params['SpotPaidQuotaSet'].nil?
            @SpotPaidQuotaSet = []
            params['SpotPaidQuotaSet'].each do |i|
              spotpaidquota_tmp = SpotPaidQuota.new
              spotpaidquota_tmp.deserialize(i)
              @SpotPaidQuotaSet << spotpaidquota_tmp
            end
          end
          unless params['ImageQuotaSet'].nil?
            @ImageQuotaSet = []
            params['ImageQuotaSet'].each do |i|
              imagequota_tmp = ImageQuota.new
              imagequota_tmp.deserialize(i)
              @ImageQuotaSet << imagequota_tmp
            end
          end
          unless params['DisasterRecoverGroupQuotaSet'].nil?
            @DisasterRecoverGroupQuotaSet = []
            params['DisasterRecoverGroupQuotaSet'].each do |i|
              disasterrecovergroupquota_tmp = DisasterRecoverGroupQuota.new
              disasterrecovergroupquota_tmp.deserialize(i)
              @DisasterRecoverGroupQuotaSet << disasterrecovergroupquota_tmp
            end
          end
        end
      end

      # 配额详情概览
      class AccountQuotaOverview < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # @type Region: String
        # @param AccountQuota: 配额数据
        # @type AccountQuota: :class:`Tencentcloud::Cvm.v20170312.models.AccountQuota`

        attr_accessor :Region, :AccountQuota

        def initialize(region=nil, accountquota=nil)
          @Region = region
          @AccountQuota = accountquota
        end

        def deserialize(params)
          @Region = params['Region']
          unless params['AccountQuota'].nil?
            @AccountQuota = AccountQuota.new
            @AccountQuota.deserialize(params['AccountQuota'])
          end
        end
      end

      # 定时任务
      class ActionTimer < TencentCloud::Common::AbstractModel
        # @param TimerAction: 定时器动作，目前仅支持销毁一个值：TerminateInstances。
        # @type TimerAction: String
        # @param ActionTime: 执行时间，按照ISO8601标准表示，并且使用UTC时间。格式为 YYYY-MM-DDThh:mm:ssZ。例如 2018-05-29T11:26:40Z，执行时间必须大于当前时间5分钟。
        # @type ActionTime: String
        # @param Externals: 扩展数据。仅做出参使用。
        # @type Externals: :class:`Tencentcloud::Cvm.v20170312.models.Externals`
        # @param ActionTimerId: 定时器ID。仅做出参使用。
        # @type ActionTimerId: String
        # @param Status: 定时器状态，仅做出参使用。取值范围：<br><li>UNDO：未执行</li> <li>DOING：正在执行</li><li>DONE：执行完成。</li>
        # @type Status: String
        # @param InstanceId: 定时器对应的实例ID。仅做出参使用。
        # @type InstanceId: String

        attr_accessor :TimerAction, :ActionTime, :Externals, :ActionTimerId, :Status, :InstanceId

        def initialize(timeraction=nil, actiontime=nil, externals=nil, actiontimerid=nil, status=nil, instanceid=nil)
          @TimerAction = timeraction
          @ActionTime = actiontime
          @Externals = externals
          @ActionTimerId = actiontimerid
          @Status = status
          @InstanceId = instanceid
        end

        def deserialize(params)
          @TimerAction = params['TimerAction']
          @ActionTime = params['ActionTime']
          unless params['Externals'].nil?
            @Externals = Externals.new
            @Externals.deserialize(params['Externals'])
          end
          @ActionTimerId = params['ActionTimerId']
          @Status = params['Status']
          @InstanceId = params['InstanceId']
        end
      end

      # AllocateHosts请求参数结构体
      class AllocateHostsRequest < TencentCloud::Common::AbstractModel
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        # @type Placement: :class:`Tencentcloud::Cvm.v20170312.models.Placement`
        # @param ClientToken: 用于保证请求幂等性的字符串。
        # @type ClientToken: String
        # @param HostChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type HostChargePrepaid: :class:`Tencentcloud::Cvm.v20170312.models.ChargePrepaid`
        # @param HostChargeType: 实例计费类型。目前仅支持：PREPAID（预付费，即包年包月模式），默认为：'PREPAID'。
        # @type HostChargeType: String
        # @param HostType: CDH实例机型，默认为：'HS1'。
        # @type HostType: String
        # @param HostCount: 购买CDH实例数量，默认为：1。
        # @type HostCount: Integer
        # @param TagSpecification: 标签描述列表。通过指定该参数可以同时绑定标签到相应的资源实例。
        # @type TagSpecification: Array

        attr_accessor :Placement, :ClientToken, :HostChargePrepaid, :HostChargeType, :HostType, :HostCount, :TagSpecification

        def initialize(placement=nil, clienttoken=nil, hostchargeprepaid=nil, hostchargetype=nil, hosttype=nil, hostcount=nil, tagspecification=nil)
          @Placement = placement
          @ClientToken = clienttoken
          @HostChargePrepaid = hostchargeprepaid
          @HostChargeType = hostchargetype
          @HostType = hosttype
          @HostCount = hostcount
          @TagSpecification = tagspecification
        end

        def deserialize(params)
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @ClientToken = params['ClientToken']
          unless params['HostChargePrepaid'].nil?
            @HostChargePrepaid = ChargePrepaid.new
            @HostChargePrepaid.deserialize(params['HostChargePrepaid'])
          end
          @HostChargeType = params['HostChargeType']
          @HostType = params['HostType']
          @HostCount = params['HostCount']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @TagSpecification << tagspecification_tmp
            end
          end
        end
      end

      # AllocateHosts返回参数结构体
      class AllocateHostsResponse < TencentCloud::Common::AbstractModel
        # @param HostIdSet: 新创建云子机的实例ID列表。
        # @type HostIdSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HostIdSet, :RequestId

        def initialize(hostidset=nil, requestid=nil)
          @HostIdSet = hostidset
          @RequestId = requestid
        end

        def deserialize(params)
          @HostIdSet = params['HostIdSet']
          @RequestId = params['RequestId']
        end
      end

      # AssociateInstancesKeyPairs请求参数结构体
      class AssociateInstancesKeyPairsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID，每次请求批量实例的上限为100。可以通过以下方式获取可用的实例ID：
        # <li>通过登录[控制台](https://console.cloud.tencent.com/cvm/index)查询实例ID。</li>
        # <li>通过调用接口 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) ，取返回信息中的`InstanceId`获取实例ID。</li>
        # @type InstanceIds: Array
        # @param KeyIds: 一个或多个待操作的密钥对ID，每次请求批量密钥对的上限为100。可以通过以下方式获取可用的密钥ID：
        # <li>通过登录[控制台](https://console.cloud.tencent.com/cvm/sshkey)查询密钥ID。</li>
        # <li>通过调用接口 [DescribeKeyPairs](https://cloud.tencent.com/document/api/213/15699) ，取返回信息中的`KeyId`获取密钥对ID。</li>
        # @type KeyIds: Array
        # @param ForceStop: 是否强制关机，默认值为 false。常规场景下，建议手动关机后绑定密钥。取值范围：
        # <li>true：先执行强制关机，再绑定密钥。</li>
        # <li>false：不执行强制关机，仅支持对已关机状态实例进行绑定操作。</li>
        # @type ForceStop: Boolean

        attr_accessor :InstanceIds, :KeyIds, :ForceStop

        def initialize(instanceids=nil, keyids=nil, forcestop=nil)
          @InstanceIds = instanceids
          @KeyIds = keyids
          @ForceStop = forcestop
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @KeyIds = params['KeyIds']
          @ForceStop = params['ForceStop']
        end
      end

      # AssociateInstancesKeyPairs返回参数结构体
      class AssociateInstancesKeyPairsResponse < TencentCloud::Common::AbstractModel
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

      # AssociateSecurityGroups请求参数结构体
      class AssociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupIds: 要绑定的`安全组ID`，类似sg-efil73jd，只支持绑定单个安全组。可通过 [DescribeSecurityGroups](https://cloud.tencent.com/document/product/215/15808) 接口返回值中的`SecurityGroupId`获取。
        # @type SecurityGroupIds: Array
        # @param InstanceIds: 被绑定的`实例ID`，类似ins-lesecurk，支持指定多个实例，每次请求批量实例的上限为100。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。
        # @type InstanceIds: Array

        attr_accessor :SecurityGroupIds, :InstanceIds

        def initialize(securitygroupids=nil, instanceids=nil)
          @SecurityGroupIds = securitygroupids
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @SecurityGroupIds = params['SecurityGroupIds']
          @InstanceIds = params['InstanceIds']
        end
      end

      # AssociateSecurityGroups返回参数结构体
      class AssociateSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 属性信息
      class Attribute < TencentCloud::Common::AbstractModel
        # @param UserData: 实例的自定义数据。
        # @type UserData: String

        attr_accessor :UserData

        def initialize(userdata=nil)
          @UserData = userdata
        end

        def deserialize(params)
          @UserData = params['UserData']
        end
      end

      # 描述预付费模式，即包年包月相关参数。包括购买时长和自动续费逻辑等。
      class ChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 购买实例的时长，单位：月。取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36。
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围：<li>NOTIFY_AND_AUTO_RENEW：通知过期且自动续费</li><li>NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费</li><li>DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费</li><br>默认取值：NOTIFY_AND_AUTO_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
        # @type RenewFlag: String

        attr_accessor :Period, :RenewFlag

        def initialize(period=nil, renewflag=nil)
          @Period = period
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @Period = params['Period']
          @RenewFlag = params['RenewFlag']
        end
      end

      # chc部署网络minos引导配置。
      class ChcDeployExtraConfig < TencentCloud::Common::AbstractModel
        # @param MiniOsType: minos类型。是使用腾讯云的minios，还是客户自己的minios。
        # @type MiniOsType: String
        # @param BootType: 服务器的架构和启动方式。取值为x86_legacy, arm_uefi。
        # @type BootType: String
        # @param BootFile: PXE使用的引导文件。默认为pxelinux.0。
        # @type BootFile: String
        # @param NextServerAddress: tftp服务器的ip地址。
        # @type NextServerAddress: String

        attr_accessor :MiniOsType, :BootType, :BootFile, :NextServerAddress

        def initialize(miniostype=nil, boottype=nil, bootfile=nil, nextserveraddress=nil)
          @MiniOsType = miniostype
          @BootType = boottype
          @BootFile = bootfile
          @NextServerAddress = nextserveraddress
        end

        def deserialize(params)
          @MiniOsType = params['MiniOsType']
          @BootType = params['BootType']
          @BootFile = params['BootFile']
          @NextServerAddress = params['NextServerAddress']
        end
      end

      # CHC物理服务器信息
      class ChcHost < TencentCloud::Common::AbstractModel
        # @param ChcId: CHC物理服务器ID。
        # @type ChcId: String
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param SerialNumber: 服务器序列号。
        # @type SerialNumber: String
        # @param InstanceState: CHC的状态<br/>
        # <ul>
        # <li>INIT: 设备已录入。还未配置带外和部署网络</li>
        # <li>READY: 已配置带外和部署网络</li>
        # <li>PREPARED: 可分配云主机</li>
        # <li>ONLINE: 已分配云主机</li>
        # <li>OPERATING: 设备操作中，如正在配置带外网络等。</li>
        # <li>CLEAR_NETWORK_FAILED: 清理带外和部署网络失败</li>
        # </ul>
        # @type InstanceState: String
        # @param DeviceType: 设备类型。
        # @type DeviceType: String
        # @param Placement: 所属可用区
        # @type Placement: :class:`Tencentcloud::Cvm.v20170312.models.Placement`
        # @param BmcVirtualPrivateCloud: 带外网络。
        # @type BmcVirtualPrivateCloud: :class:`Tencentcloud::Cvm.v20170312.models.VirtualPrivateCloud`
        # @param BmcIp: 带外网络Ip。
        # @type BmcIp: String
        # @param BmcSecurityGroupIds: 带外网络安全组Id。
        # @type BmcSecurityGroupIds: Array
        # @param DeployVirtualPrivateCloud: 部署网络。
        # @type DeployVirtualPrivateCloud: :class:`Tencentcloud::Cvm.v20170312.models.VirtualPrivateCloud`
        # @param DeployIp: 部署网络Ip。
        # @type DeployIp: String
        # @param DeploySecurityGroupIds: 部署网络安全组Id。
        # @type DeploySecurityGroupIds: Array
        # @param CvmInstanceId: 关联的云主机Id。
        # @type CvmInstanceId: String
        # @param CreatedTime: 服务器导入的时间。
        # @type CreatedTime: String
        # @param HardwareDescription: 机型的硬件描述，分别为CPU核数，内存容量和磁盘容量
        # @type HardwareDescription: String
        # @param CPU: CHC物理服务器的CPU核数
        # @type CPU: Integer
        # @param Memory: CHC物理服务器的内存大小，单位为GB
        # @type Memory: Integer
        # @param Disk: CHC物理服务器的磁盘信息
        # @type Disk: String
        # @param BmcMAC: 带外网络下分配的MAC地址
        # @type BmcMAC: String
        # @param DeployMAC: 部署网络下分配的MAC地址
        # @type DeployMAC: String
        # @param TenantType: 设备托管类型。
        # HOSTING: 托管
        # TENANT: 租赁
        # @type TenantType: String
        # @param DeployExtraConfig: chc dhcp选项，用于minios调试。
        # @type DeployExtraConfig: :class:`Tencentcloud::Cvm.v20170312.models.ChcDeployExtraConfig`
        # @param Gpu: GPU型号。
        # @type Gpu: String
        # @param NetworkCard: 网卡型号。主要指RDMA网卡。
        # @type NetworkCard: String
        # @param IsPredefinedType: 是否是预定义机型。
        # @type IsPredefinedType: Boolean
        # @param ChcInstanceType: CHC云主机机型。
        # @type ChcInstanceType: String
        # @param ChcInstanceFamily: CHC云主机机型簇。
        # @type ChcInstanceFamily: String
        # @param ChcInstanceFamilyName: CHC云主机机型簇名称。
        # @type ChcInstanceFamilyName: String
        # @param ResaleAppId: 转售客户的AppId。
        # @type ResaleAppId: String
        # @param ResaleAccountId: 转售客户的账号ID。
        # @type ResaleAccountId: String
        # @param SaleStatus: 售卖状态。<br/>
        # <ul>
        # <li>NOT_FOR_SALE:不可售卖</li>
        # <li>AVAILABLE: 可售卖</li>
        # <li>SOLD: 已售卖</li>
        # </ul>
        # @type SaleStatus: String
        # @param Tags: CHC物理服务器关联的标签列表。
        # @type Tags: Array
        # @param LatestOperation: 最近操作
        # @type LatestOperation: String
        # @param LatestOperationErrorCode: 最近操作错误码
        # @type LatestOperationErrorCode: String
        # @param LatestOperationErrorMsg: 最近操作错误详情和建议项
        # @type LatestOperationErrorMsg: String
        # @param LatestOperationName: 最近操作名称
        # @type LatestOperationName: String
        # @param LatestOperationState: 最近操作状态
        # @type LatestOperationState: String

        attr_accessor :ChcId, :InstanceName, :SerialNumber, :InstanceState, :DeviceType, :Placement, :BmcVirtualPrivateCloud, :BmcIp, :BmcSecurityGroupIds, :DeployVirtualPrivateCloud, :DeployIp, :DeploySecurityGroupIds, :CvmInstanceId, :CreatedTime, :HardwareDescription, :CPU, :Memory, :Disk, :BmcMAC, :DeployMAC, :TenantType, :DeployExtraConfig, :Gpu, :NetworkCard, :IsPredefinedType, :ChcInstanceType, :ChcInstanceFamily, :ChcInstanceFamilyName, :ResaleAppId, :ResaleAccountId, :SaleStatus, :Tags, :LatestOperation, :LatestOperationErrorCode, :LatestOperationErrorMsg, :LatestOperationName, :LatestOperationState

        def initialize(chcid=nil, instancename=nil, serialnumber=nil, instancestate=nil, devicetype=nil, placement=nil, bmcvirtualprivatecloud=nil, bmcip=nil, bmcsecuritygroupids=nil, deployvirtualprivatecloud=nil, deployip=nil, deploysecuritygroupids=nil, cvminstanceid=nil, createdtime=nil, hardwaredescription=nil, cpu=nil, memory=nil, disk=nil, bmcmac=nil, deploymac=nil, tenanttype=nil, deployextraconfig=nil, gpu=nil, networkcard=nil, ispredefinedtype=nil, chcinstancetype=nil, chcinstancefamily=nil, chcinstancefamilyname=nil, resaleappid=nil, resaleaccountid=nil, salestatus=nil, tags=nil, latestoperation=nil, latestoperationerrorcode=nil, latestoperationerrormsg=nil, latestoperationname=nil, latestoperationstate=nil)
          @ChcId = chcid
          @InstanceName = instancename
          @SerialNumber = serialnumber
          @InstanceState = instancestate
          @DeviceType = devicetype
          @Placement = placement
          @BmcVirtualPrivateCloud = bmcvirtualprivatecloud
          @BmcIp = bmcip
          @BmcSecurityGroupIds = bmcsecuritygroupids
          @DeployVirtualPrivateCloud = deployvirtualprivatecloud
          @DeployIp = deployip
          @DeploySecurityGroupIds = deploysecuritygroupids
          @CvmInstanceId = cvminstanceid
          @CreatedTime = createdtime
          @HardwareDescription = hardwaredescription
          @CPU = cpu
          @Memory = memory
          @Disk = disk
          @BmcMAC = bmcmac
          @DeployMAC = deploymac
          @TenantType = tenanttype
          @DeployExtraConfig = deployextraconfig
          @Gpu = gpu
          @NetworkCard = networkcard
          @IsPredefinedType = ispredefinedtype
          @ChcInstanceType = chcinstancetype
          @ChcInstanceFamily = chcinstancefamily
          @ChcInstanceFamilyName = chcinstancefamilyname
          @ResaleAppId = resaleappid
          @ResaleAccountId = resaleaccountid
          @SaleStatus = salestatus
          @Tags = tags
          @LatestOperation = latestoperation
          @LatestOperationErrorCode = latestoperationerrorcode
          @LatestOperationErrorMsg = latestoperationerrormsg
          @LatestOperationName = latestoperationname
          @LatestOperationState = latestoperationstate
        end

        def deserialize(params)
          @ChcId = params['ChcId']
          @InstanceName = params['InstanceName']
          @SerialNumber = params['SerialNumber']
          @InstanceState = params['InstanceState']
          @DeviceType = params['DeviceType']
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          unless params['BmcVirtualPrivateCloud'].nil?
            @BmcVirtualPrivateCloud = VirtualPrivateCloud.new
            @BmcVirtualPrivateCloud.deserialize(params['BmcVirtualPrivateCloud'])
          end
          @BmcIp = params['BmcIp']
          @BmcSecurityGroupIds = params['BmcSecurityGroupIds']
          unless params['DeployVirtualPrivateCloud'].nil?
            @DeployVirtualPrivateCloud = VirtualPrivateCloud.new
            @DeployVirtualPrivateCloud.deserialize(params['DeployVirtualPrivateCloud'])
          end
          @DeployIp = params['DeployIp']
          @DeploySecurityGroupIds = params['DeploySecurityGroupIds']
          @CvmInstanceId = params['CvmInstanceId']
          @CreatedTime = params['CreatedTime']
          @HardwareDescription = params['HardwareDescription']
          @CPU = params['CPU']
          @Memory = params['Memory']
          @Disk = params['Disk']
          @BmcMAC = params['BmcMAC']
          @DeployMAC = params['DeployMAC']
          @TenantType = params['TenantType']
          unless params['DeployExtraConfig'].nil?
            @DeployExtraConfig = ChcDeployExtraConfig.new
            @DeployExtraConfig.deserialize(params['DeployExtraConfig'])
          end
          @Gpu = params['Gpu']
          @NetworkCard = params['NetworkCard']
          @IsPredefinedType = params['IsPredefinedType']
          @ChcInstanceType = params['ChcInstanceType']
          @ChcInstanceFamily = params['ChcInstanceFamily']
          @ChcInstanceFamilyName = params['ChcInstanceFamilyName']
          @ResaleAppId = params['ResaleAppId']
          @ResaleAccountId = params['ResaleAccountId']
          @SaleStatus = params['SaleStatus']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @LatestOperation = params['LatestOperation']
          @LatestOperationErrorCode = params['LatestOperationErrorCode']
          @LatestOperationErrorMsg = params['LatestOperationErrorMsg']
          @LatestOperationName = params['LatestOperationName']
          @LatestOperationState = params['LatestOperationState']
        end
      end

      # CHC物理服务器实例禁止操作的返回结构体
      class ChcHostDeniedActions < TencentCloud::Common::AbstractModel
        # @param ChcId: CHC物理服务器的实例id
        # @type ChcId: String
        # @param State: CHC物理服务器的状态
        # @type State: String
        # @param DenyActions: 当前CHC物理服务器禁止做的操作
        # @type DenyActions: Array

        attr_accessor :ChcId, :State, :DenyActions

        def initialize(chcid=nil, state=nil, denyactions=nil)
          @ChcId = chcid
          @State = state
          @DenyActions = denyactions
        end

        def deserialize(params)
          @ChcId = params['ChcId']
          @State = params['State']
          @DenyActions = params['DenyActions']
        end
      end

      # ConfigureChcAssistVpc请求参数结构体
      class ConfigureChcAssistVpcRequest < TencentCloud::Common::AbstractModel
        # @param ChcIds: CHC物理服务器的实例Id。
        # @type ChcIds: Array
        # @param BmcVirtualPrivateCloud: 带外网络信息。
        # @type BmcVirtualPrivateCloud: :class:`Tencentcloud::Cvm.v20170312.models.VirtualPrivateCloud`
        # @param BmcSecurityGroupIds: 带外网络的安全组列表
        # @type BmcSecurityGroupIds: Array
        # @param DeployVirtualPrivateCloud: 部署网络信息。
        # @type DeployVirtualPrivateCloud: :class:`Tencentcloud::Cvm.v20170312.models.VirtualPrivateCloud`
        # @param DeploySecurityGroupIds: 部署网络的安全组列表
        # @type DeploySecurityGroupIds: Array
        # @param ChcDeployExtraConfig: 部署网络的附加参数，用于指定minios类型、bios引导模式等
        # @type ChcDeployExtraConfig: :class:`Tencentcloud::Cvm.v20170312.models.ChcDeployExtraConfig`

        attr_accessor :ChcIds, :BmcVirtualPrivateCloud, :BmcSecurityGroupIds, :DeployVirtualPrivateCloud, :DeploySecurityGroupIds, :ChcDeployExtraConfig

        def initialize(chcids=nil, bmcvirtualprivatecloud=nil, bmcsecuritygroupids=nil, deployvirtualprivatecloud=nil, deploysecuritygroupids=nil, chcdeployextraconfig=nil)
          @ChcIds = chcids
          @BmcVirtualPrivateCloud = bmcvirtualprivatecloud
          @BmcSecurityGroupIds = bmcsecuritygroupids
          @DeployVirtualPrivateCloud = deployvirtualprivatecloud
          @DeploySecurityGroupIds = deploysecuritygroupids
          @ChcDeployExtraConfig = chcdeployextraconfig
        end

        def deserialize(params)
          @ChcIds = params['ChcIds']
          unless params['BmcVirtualPrivateCloud'].nil?
            @BmcVirtualPrivateCloud = VirtualPrivateCloud.new
            @BmcVirtualPrivateCloud.deserialize(params['BmcVirtualPrivateCloud'])
          end
          @BmcSecurityGroupIds = params['BmcSecurityGroupIds']
          unless params['DeployVirtualPrivateCloud'].nil?
            @DeployVirtualPrivateCloud = VirtualPrivateCloud.new
            @DeployVirtualPrivateCloud.deserialize(params['DeployVirtualPrivateCloud'])
          end
          @DeploySecurityGroupIds = params['DeploySecurityGroupIds']
          unless params['ChcDeployExtraConfig'].nil?
            @ChcDeployExtraConfig = ChcDeployExtraConfig.new
            @ChcDeployExtraConfig.deserialize(params['ChcDeployExtraConfig'])
          end
        end
      end

      # ConfigureChcAssistVpc返回参数结构体
      class ConfigureChcAssistVpcResponse < TencentCloud::Common::AbstractModel
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

      # ConfigureChcDeployVpc请求参数结构体
      class ConfigureChcDeployVpcRequest < TencentCloud::Common::AbstractModel
        # @param ChcIds: CHC物理服务器的实例Id。
        # @type ChcIds: Array
        # @param DeployVirtualPrivateCloud: 部署网络信息。
        # @type DeployVirtualPrivateCloud: :class:`Tencentcloud::Cvm.v20170312.models.VirtualPrivateCloud`
        # @param DeploySecurityGroupIds: 部署网络的安全组列表。
        # @type DeploySecurityGroupIds: Array
        # @param ChcDeployExtraConfig: 部署所需要的dhcp选项参数
        # @type ChcDeployExtraConfig: :class:`Tencentcloud::Cvm.v20170312.models.ChcDeployExtraConfig`

        attr_accessor :ChcIds, :DeployVirtualPrivateCloud, :DeploySecurityGroupIds, :ChcDeployExtraConfig

        def initialize(chcids=nil, deployvirtualprivatecloud=nil, deploysecuritygroupids=nil, chcdeployextraconfig=nil)
          @ChcIds = chcids
          @DeployVirtualPrivateCloud = deployvirtualprivatecloud
          @DeploySecurityGroupIds = deploysecuritygroupids
          @ChcDeployExtraConfig = chcdeployextraconfig
        end

        def deserialize(params)
          @ChcIds = params['ChcIds']
          unless params['DeployVirtualPrivateCloud'].nil?
            @DeployVirtualPrivateCloud = VirtualPrivateCloud.new
            @DeployVirtualPrivateCloud.deserialize(params['DeployVirtualPrivateCloud'])
          end
          @DeploySecurityGroupIds = params['DeploySecurityGroupIds']
          unless params['ChcDeployExtraConfig'].nil?
            @ChcDeployExtraConfig = ChcDeployExtraConfig.new
            @ChcDeployExtraConfig.deserialize(params['ChcDeployExtraConfig'])
          end
        end
      end

      # ConfigureChcDeployVpc返回参数结构体
      class ConfigureChcDeployVpcResponse < TencentCloud::Common::AbstractModel
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

      # ConvertOperatingSystems请求参数结构体
      class ConvertOperatingSystemsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 执行操作系统转换的实例 ID。
        # 可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。
        # 仅支持操作系统为 CentOS 7、CentOS 8 的实例执行转换。
        # @type InstanceIds: Array
        # @param MinimalConversion: 是否最小规模转换。
        # 默认值：false
        # @type MinimalConversion: Boolean
        # @param DryRun: 是否只预检。
        # 默认值：false
        # @type DryRun: Boolean
        # @param TargetOSType: 转换的目标操作系统类型。仅支持 TencentOS。
        # 默认值：TencentOS
        # @type TargetOSType: String

        attr_accessor :InstanceIds, :MinimalConversion, :DryRun, :TargetOSType

        def initialize(instanceids=nil, minimalconversion=nil, dryrun=nil, targetostype=nil)
          @InstanceIds = instanceids
          @MinimalConversion = minimalconversion
          @DryRun = dryrun
          @TargetOSType = targetostype
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @MinimalConversion = params['MinimalConversion']
          @DryRun = params['DryRun']
          @TargetOSType = params['TargetOSType']
        end
      end

      # ConvertOperatingSystems返回参数结构体
      class ConvertOperatingSystemsResponse < TencentCloud::Common::AbstractModel
        # @param SupportTargetOSList: 转换的目标操系统信息，仅在入参 DryRun 为 true 时返回。
        # @type SupportTargetOSList: Array
        # @param TaskId: 操作系统转换的任务 ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SupportTargetOSList, :TaskId, :RequestId

        def initialize(supporttargetoslist=nil, taskid=nil, requestid=nil)
          @SupportTargetOSList = supporttargetoslist
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SupportTargetOSList'].nil?
            @SupportTargetOSList = []
            params['SupportTargetOSList'].each do |i|
              targetos_tmp = TargetOS.new
              targetos_tmp.deserialize(i)
              @SupportTargetOSList << targetos_tmp
            end
          end
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 描述了实例CPU拓扑结构的相关信息。
      class CpuTopology < TencentCloud::Common::AbstractModel
        # @param CoreCount: 决定启用的CPU物理核心数。
        # @type CoreCount: Integer
        # @param ThreadPerCore: 每核心线程数。该参数决定是否开启或关闭超线程。<br><li>1 表示关闭超线程 </li><br><li>2 表示开启超线程</li>
        #  不设置时，实例使用默认的超线程策略。开关超线程请参考文档：[开启与关闭超线程](https://cloud.tencent.com/document/product/213/103798)。
        # @type ThreadPerCore: Integer

        attr_accessor :CoreCount, :ThreadPerCore

        def initialize(corecount=nil, threadpercore=nil)
          @CoreCount = corecount
          @ThreadPerCore = threadpercore
        end

        def deserialize(params)
          @CoreCount = params['CoreCount']
          @ThreadPerCore = params['ThreadPerCore']
        end
      end

      # CreateDisasterRecoverGroup请求参数结构体
      class CreateDisasterRecoverGroupRequest < TencentCloud::Common::AbstractModel
        # @param Name: 分散置放群组名称，长度1-60个字符，支持中、英文。
        # @type Name: String
        # @param Type: 分散置放群组类型，取值范围：<br><li>HOST：物理机</li><li>SW：交换机</li><li>RACK：机架</li>
        # @type Type: String
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。<br>更多详细信息请参阅：如何保证幂等性。
        # @type ClientToken: String
        # @param Affinity: 置放群组的亲和度，在置放群组的实例会按该亲和度分布，亲和度的取值范围是：1-10，默认为1
        # @type Affinity: Integer
        # @param TagSpecification: 标签描述列表。通过指定该参数可以绑定标签到置放群组。
        # @type TagSpecification: Array

        attr_accessor :Name, :Type, :ClientToken, :Affinity, :TagSpecification

        def initialize(name=nil, type=nil, clienttoken=nil, affinity=nil, tagspecification=nil)
          @Name = name
          @Type = type
          @ClientToken = clienttoken
          @Affinity = affinity
          @TagSpecification = tagspecification
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @ClientToken = params['ClientToken']
          @Affinity = params['Affinity']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @TagSpecification << tagspecification_tmp
            end
          end
        end
      end

      # CreateDisasterRecoverGroup返回参数结构体
      class CreateDisasterRecoverGroupResponse < TencentCloud::Common::AbstractModel
        # @param DisasterRecoverGroupId: 分散置放群组ID列表。
        # @type DisasterRecoverGroupId: String
        # @param Type: 分散置放群组类型，取值范围：<br><li>HOST：物理机</li><li>SW：交换机</li><li>RACK：机架</li>
        # @type Type: String
        # @param Name: 分散置放群组名称，长度1-60个字符，支持中、英文。
        # @type Name: String
        # @param CvmQuotaTotal: 置放群组内可容纳的云服务器数量。
        # @type CvmQuotaTotal: Integer
        # @param CurrentNum: 置放群组内已有的云服务器数量。
        # @type CurrentNum: Integer
        # @param CreateTime: 置放群组创建时间。
        # @type CreateTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DisasterRecoverGroupId, :Type, :Name, :CvmQuotaTotal, :CurrentNum, :CreateTime, :RequestId

        def initialize(disasterrecovergroupid=nil, type=nil, name=nil, cvmquotatotal=nil, currentnum=nil, createtime=nil, requestid=nil)
          @DisasterRecoverGroupId = disasterrecovergroupid
          @Type = type
          @Name = name
          @CvmQuotaTotal = cvmquotatotal
          @CurrentNum = currentnum
          @CreateTime = createtime
          @RequestId = requestid
        end

        def deserialize(params)
          @DisasterRecoverGroupId = params['DisasterRecoverGroupId']
          @Type = params['Type']
          @Name = params['Name']
          @CvmQuotaTotal = params['CvmQuotaTotal']
          @CurrentNum = params['CurrentNum']
          @CreateTime = params['CreateTime']
          @RequestId = params['RequestId']
        end
      end

      # CreateHpcCluster请求参数结构体
      class CreateHpcClusterRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区。
        # @type Zone: String
        # @param Name: 高性能计算集群名称。
        # @type Name: String
        # @param Remark: 高性能计算集群备注。
        # @type Remark: String
        # @param HpcClusterType: 高性能计算集群类型。
        # @type HpcClusterType: String
        # @param HpcClusterBusinessId: 高性能计算集群对应的业务场景标识，当前只支持CDC。
        # @type HpcClusterBusinessId: String
        # @param TagSpecification: 标签描述列表。通过指定该参数可以同时绑定标签到相应的HPC高性能集群。
        # @type TagSpecification: Array

        attr_accessor :Zone, :Name, :Remark, :HpcClusterType, :HpcClusterBusinessId, :TagSpecification

        def initialize(zone=nil, name=nil, remark=nil, hpcclustertype=nil, hpcclusterbusinessid=nil, tagspecification=nil)
          @Zone = zone
          @Name = name
          @Remark = remark
          @HpcClusterType = hpcclustertype
          @HpcClusterBusinessId = hpcclusterbusinessid
          @TagSpecification = tagspecification
        end

        def deserialize(params)
          @Zone = params['Zone']
          @Name = params['Name']
          @Remark = params['Remark']
          @HpcClusterType = params['HpcClusterType']
          @HpcClusterBusinessId = params['HpcClusterBusinessId']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @TagSpecification << tagspecification_tmp
            end
          end
        end
      end

      # CreateHpcCluster返回参数结构体
      class CreateHpcClusterResponse < TencentCloud::Common::AbstractModel
        # @param HpcClusterSet: 高性能计算集群信息。
        # @type HpcClusterSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HpcClusterSet, :RequestId

        def initialize(hpcclusterset=nil, requestid=nil)
          @HpcClusterSet = hpcclusterset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HpcClusterSet'].nil?
            @HpcClusterSet = []
            params['HpcClusterSet'].each do |i|
              hpcclusterinfo_tmp = HpcClusterInfo.new
              hpcclusterinfo_tmp.deserialize(i)
              @HpcClusterSet << hpcclusterinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateImage请求参数结构体
      class CreateImageRequest < TencentCloud::Common::AbstractModel
        # @param ImageName: 镜像名称。
        # 最多支持60个字符。
        # @type ImageName: String
        # @param InstanceId: 需要制作镜像的实例ID。基于实例创建镜像时，为必填参数。
        # InstanceId 和 SnapshotIds 为二选一必填参数。
        # 可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。
        # @type InstanceId: String
        # @param ImageDescription: 镜像描述。
        # 最多支持 256 个字符。
        # @type ImageDescription: String
        # @param ForcePoweroff: 是否执行强制关机以制作镜像。
        # 取值范围：<br><li>true：表示关机之后制作镜像</li><br><li>false：表示开机状态制作镜像</li><br><br>默认取值：false。<br><br>开机状态制作镜像，可能导致部分数据未备份，影响数据安全。
        # @type ForcePoweroff: String
        # @param Sysprep: 创建Windows镜像时是否启用Sysprep。
        # 取值范围：true或false，传true表示启用Sysprep，传false表示不启用，默认取值为false。

        # 关于Sysprep的详情请参考[链接](https://cloud.tencent.com/document/product/213/43498)。
        # @type Sysprep: String
        # @param DataDiskIds: 基于实例创建整机镜像时，指定包含在镜像里的数据盘ID。
        # DataDiskIds 只能在指定 InstanceId 实例所包含的数据盘范围内指定。
        # 可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的 `DataDisks` 获取。
        # @type DataDiskIds: Array
        # @param SnapshotIds: 基于快照创建镜像，指定快照ID，必须包含一个系统盘快照。不可与 InstanceId 同时传入。
        # InstanceId 和 SnapshotIds 为二选一必填参数。
        # 可通过 [DescribeSnapshots](https://cloud.tencent.com/document/product/362/15647) 接口返回值中的`SnapshotId`获取。
        # @type SnapshotIds: Array
        # @param DryRun: 检测本次请求的是否成功，但不会对操作的资源产生任何影响。默认取值为false。
        # @type DryRun: Boolean
        # @param TagSpecification: 标签描述列表。通过指定该参数可以同时绑定标签到自定义镜像。
        # 可通过 [DescribeTags](https://cloud.tencent.com/document/api/651/35316) 接口返回值中的 `TagKey` 和 `TagValue` 获取。
        # @type TagSpecification: Array
        # @param ImageFamily: 镜像族
        # @type ImageFamily: String

        attr_accessor :ImageName, :InstanceId, :ImageDescription, :ForcePoweroff, :Sysprep, :DataDiskIds, :SnapshotIds, :DryRun, :TagSpecification, :ImageFamily

        def initialize(imagename=nil, instanceid=nil, imagedescription=nil, forcepoweroff=nil, sysprep=nil, datadiskids=nil, snapshotids=nil, dryrun=nil, tagspecification=nil, imagefamily=nil)
          @ImageName = imagename
          @InstanceId = instanceid
          @ImageDescription = imagedescription
          @ForcePoweroff = forcepoweroff
          @Sysprep = sysprep
          @DataDiskIds = datadiskids
          @SnapshotIds = snapshotids
          @DryRun = dryrun
          @TagSpecification = tagspecification
          @ImageFamily = imagefamily
        end

        def deserialize(params)
          @ImageName = params['ImageName']
          @InstanceId = params['InstanceId']
          @ImageDescription = params['ImageDescription']
          @ForcePoweroff = params['ForcePoweroff']
          @Sysprep = params['Sysprep']
          @DataDiskIds = params['DataDiskIds']
          @SnapshotIds = params['SnapshotIds']
          @DryRun = params['DryRun']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @TagSpecification << tagspecification_tmp
            end
          end
          @ImageFamily = params['ImageFamily']
        end
      end

      # CreateImage返回参数结构体
      class CreateImageResponse < TencentCloud::Common::AbstractModel
        # @param ImageId: 镜像ID
        # @type ImageId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageId, :RequestId

        def initialize(imageid=nil, requestid=nil)
          @ImageId = imageid
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @RequestId = params['RequestId']
        end
      end

      # CreateKeyPair请求参数结构体
      class CreateKeyPairRequest < TencentCloud::Common::AbstractModel
        # @param KeyName: 密钥对名称，可由数字、字母和下划线组成，长度不超过25个字符。密钥对名称不能和已经存在的密钥对名称重复。
        # @type KeyName: String
        # @param ProjectId: 密钥对创建后所属的项目ID，ProjectId为0表示默认项目。
        # 可以通过以下方式获取项目ID：
        # <li>通过项目列表查询项目ID。</li>
        # <li>通过调用接口 [DescribeProjects](https://cloud.tencent.com/document/api/651/78725)，取返回信息中的`projectId `获取项目ID。</li>
        # @type ProjectId: Integer
        # @param TagSpecification: 标签描述列表。通过指定该参数可以同时绑定标签到密钥对。
        # @type TagSpecification: Array

        attr_accessor :KeyName, :ProjectId, :TagSpecification

        def initialize(keyname=nil, projectid=nil, tagspecification=nil)
          @KeyName = keyname
          @ProjectId = projectid
          @TagSpecification = tagspecification
        end

        def deserialize(params)
          @KeyName = params['KeyName']
          @ProjectId = params['ProjectId']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @TagSpecification << tagspecification_tmp
            end
          end
        end
      end

      # CreateKeyPair返回参数结构体
      class CreateKeyPairResponse < TencentCloud::Common::AbstractModel
        # @param KeyPair: 密钥对信息。
        # @type KeyPair: :class:`Tencentcloud::Cvm.v20170312.models.KeyPair`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyPair, :RequestId

        def initialize(keypair=nil, requestid=nil)
          @KeyPair = keypair
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KeyPair'].nil?
            @KeyPair = KeyPair.new
            @KeyPair.deserialize(params['KeyPair'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateLaunchTemplate请求参数结构体
      class CreateLaunchTemplateRequest < TencentCloud::Common::AbstractModel
        # @param LaunchTemplateName: 实例启动模板名称。长度为2~128个英文或中文字符。
        # @type LaunchTemplateName: String
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目，所属宿主机（在专用宿主机上创建子机时指定）等属性。
        # @type Placement: :class:`Tencentcloud::Cvm.v20170312.models.Placement`
        # @param ImageId: 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-xxx`。镜像类型分为四种：<br/><li>公共镜像</li><li>自定义镜像</li><li>共享镜像</li><li>服务市场镜像</li><br/>可通过以下方式获取可用的镜像ID：<br/><li>`公共镜像`、`自定义镜像`、`共享镜像`的镜像ID可通过登录[控制台](https://console.cloud.tencent.com/cvm/image?rid=1&imageType=PUBLIC_IMAGE)查询；`服务镜像市场`的镜像ID可通过[云市场](https://market.cloud.tencent.com/list)查询。</li><li>通过调用接口 [DescribeImages](https://cloud.tencent.com/document/api/213/15715) ，传入InstanceType获取当前机型支持的镜像列表，取返回信息中的`ImageId`字段。</li>
        # @type ImageId: String
        # @param LaunchTemplateVersionDescription: 实例启动模板版本描述。长度为2~256个英文或中文字符，默认为空字符。
        # @type LaunchTemplateVersionDescription: String
        # @param InstanceType: 实例机型。不同实例机型指定了不同的资源规格。
        # <br><li>对于付费模式为PREPAID或POSTPAID\_BY\_HOUR的实例创建，具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。若不指定该参数，则系统将根据当前地域的资源售卖情况动态指定默认机型。</li><li>对于付费模式为CDHPAID的实例创建，该参数以"CDH_"为前缀，根据CPU和内存配置生成，具体形式为：CDH_XCXG，例如对于创建CPU为1核，内存为1G大小的专用宿主机的实例，该参数应该为CDH_1C1G。</li>
        # @type InstanceType: String
        # @param SystemDisk: 实例系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: :class:`Tencentcloud::Cvm.v20170312.models.SystemDisk`
        # @param DataDisks: 实例数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘，详情请参考[ 云硬盘使用限制](https://cloud.tencent.com/document/product/362/5145)。
        # @type DataDisks: Array
        # @param VirtualPrivateCloud: 私有网络相关信息配置。通过该参数可以指定私有网络的ID，子网ID等信息。若不指定该参数，则默认使用基础网络。若在此参数中指定了私有网络IP，即表示每个实例的主网卡IP；同时，InstanceCount参数必须与私有网络IP的个数一致且不能大于20。
        # @type VirtualPrivateCloud: :class:`Tencentcloud::Cvm.v20170312.models.VirtualPrivateCloud`
        # @param InternetAccessible: 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        # @type InternetAccessible: :class:`Tencentcloud::Cvm.v20170312.models.InternetAccessible`
        # @param InstanceCount: 购买实例数量。默认取值：1。指定购买实例的数量不能超过用户所能购买的剩余配额数量，具体配额相关限制详见[CVM实例购买限制](https://cloud.tencent.com/document/product/213/2664)。
        # @type InstanceCount: Integer
        # @param InstanceName: 实例显示名称。<br><li>不指定实例显示名称则默认显示‘未命名’。</li><li>购买多台实例，如果指定模式串`{R:x}`，表示生成数字`[x, x+n-1]`，其中`n`表示购买实例的数量，例如`server_{R:3}`，购买1台时，实例显示名称为`server_3`；购买2台时，实例显示名称分别为`server_3`，`server_4`。支持指定多个模式串`{R:x}`。</li><li>购买多台实例，如果不指定模式串，则在实例显示名称添加后缀`1、2...n`，其中`n`表示购买实例的数量，例如`server_`，购买2台时，实例显示名称分别为`server_1`，`server_2`。</li><li>最多支持128个字符（包含模式串）。</li>
        # @type InstanceName: String
        # @param LoginSettings: 实例登录设置。通过该参数可以设置实例的登录方式为密钥或保持镜像的原始登录设置。
        # @type LoginSettings: :class:`Tencentcloud::Cvm.v20170312.models.LoginSettings`
        # @param SecurityGroupIds: 实例所属安全组。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的 `SecurityGroupId` 字段来获取。若不指定该参数，则绑定指定项目下的默认安全组，如默认安全组不存在则将自动创建。
        # @type SecurityGroupIds: Array
        # @param EnhancedService: 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认公共镜像开启云监控、云安全服务；自定义镜像与镜像市场镜像默认不开启云监控，云安全服务，而使用镜像里保留的服务。
        # @type EnhancedService: :class:`Tencentcloud::Cvm.v20170312.models.EnhancedService`
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # @type ClientToken: String
        # @param HostName: 云服务器的主机名。<br><li>点号（.）和短横线（-）不能作为 HostName 的首尾字符，不能连续使用。</li><li>Windows 实例：名字符长度为[2, 15]，允许字母（不限制大小写）、数字和短横线（-）组成，不支持点号（.），不能全是数字。</li><li>其他类型（Linux 等）实例：字符长度为[2, 60]，允许支持多个点号，点之间为一段，每段允许字母（不限制大小写）、数字和短横线（-）组成。</li>
        # @type HostName: String
        # @param ActionTimer: 定时任务。通过该参数可以为实例指定定时任务，目前仅支持定时销毁。
        # @type ActionTimer: :class:`Tencentcloud::Cvm.v20170312.models.ActionTimer`
        # @param DisasterRecoverGroupIds: 置放群组id，仅支持指定一个。该参数可以通过调用 [ DescribeDisasterRecoverGroups ](https://cloud.tencent.com/document/api/213/17810) 的返回值中的 `DisasterRecoverGroupId` 字段来获取。
        # @type DisasterRecoverGroupIds: Array
        # @param TagSpecification: 标签描述列表。通过指定该参数可以同时绑定标签到相应的资源实例，当前仅支持绑定标签到云服务器实例。
        # @type TagSpecification: Array
        # @param InstanceMarketOptions: 实例的市场相关选项，如竞价实例相关参数，若指定实例的付费模式为竞价付费则该参数必传。
        # @type InstanceMarketOptions: :class:`Tencentcloud::Cvm.v20170312.models.InstanceMarketOptionsRequest`
        # @param UserData: 提供给实例使用的用户数据，需要以 base64 方式编码，支持的最大数据大小为 16KB。关于获取此参数的详细介绍，请参阅[Windows](https://cloud.tencent.com/document/product/213/17526)和[Linux](https://cloud.tencent.com/document/product/213/17525)启动时运行命令。
        # @type UserData: String
        # @param DryRun: 是否只预检此次请求。
        # true：发送检查请求，不会创建实例。检查项包括是否填写了必需参数，请求格式，业务限制和云服务器库存。
        # 如果检查不通过，则返回对应错误码；
        # 如果检查通过，则返回RequestId.
        # false（默认）：发送正常请求，通过检查后直接创建实例。
        # @type DryRun: Boolean
        # @param CamRoleName: CAM角色名称。可通过[ DescribeRoleList ](https://cloud.tencent.com/document/product/598/36223)接口返回值中的`RoleName `获取。
        # @type CamRoleName: String
        # @param HpcClusterId: 高性能计算集群ID。若创建的实例为高性能计算实例，需指定实例放置的集群，否则不可指定。该参数可以通过调用 [DescribeHpcClusters](https://cloud.tencent.com/document/api/213/83220) 的返回值中的 `HpcClusterId` 字段来获取。
        # @type HpcClusterId: String
        # @param InstanceChargeType: 实例[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月</li><li>POSTPAID_BY_HOUR：按小时后付费</li><li>CDHPAID：独享子机（基于专用宿主机创建，宿主机部分的资源不收费）</li><li>SPOTPAID：竞价付费</li>默认值：POSTPAID_BY_HOUR。
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Cvm.v20170312.models.InstanceChargePrepaid`
        # @param DisableApiTermination: 实例销毁保护标志，表示是否允许通过api接口删除实例。取值范围：<br><li>TRUE：表示开启实例保护，不允许通过api接口删除实例</li><li>FALSE：表示关闭实例保护，允许通过api接口删除实例<br></li>默认取值：FALSE。
        # @type DisableApiTermination: Boolean
        # @param LaunchTemplateTagSpecification: 标签描述列表。通过指定该参数可以绑定标签到实例启动模板。
        # @type LaunchTemplateTagSpecification: Array
        # @param Metadata: 自定义metadata，支持创建 CVM 时添加自定义元数据键值对。
        # **注：内测中**。
        # @type Metadata: :class:`Tencentcloud::Cvm.v20170312.models.Metadata`
        # @param TemplateDataModifyAction: 只允许传递 Update 和 Replace 参数，在模板使用自定义 Metadata 且在 RunInstances 也传递 Metadata 时生效。默认采用 Replace。

        # - Update：设模板 t含本参数值为Update、 metadata=[k1:v1, k2:v2] ，则RunInstances（给metadata=[k2:v3]）+ t 创建的 cvm 使用metadata=[k1:v1, k2:v3]
        # - Replace：模板 t含本参数值为Replace、 metadata=[k1:v1, k2:v2] ，则RunInstances（给metadata=[k2:v3]）+ t 创建的 cvm 使用metadata=[k2:v3]
        # **注：内测中**。
        # @type TemplateDataModifyAction: String

        attr_accessor :LaunchTemplateName, :Placement, :ImageId, :LaunchTemplateVersionDescription, :InstanceType, :SystemDisk, :DataDisks, :VirtualPrivateCloud, :InternetAccessible, :InstanceCount, :InstanceName, :LoginSettings, :SecurityGroupIds, :EnhancedService, :ClientToken, :HostName, :ActionTimer, :DisasterRecoverGroupIds, :TagSpecification, :InstanceMarketOptions, :UserData, :DryRun, :CamRoleName, :HpcClusterId, :InstanceChargeType, :InstanceChargePrepaid, :DisableApiTermination, :LaunchTemplateTagSpecification, :Metadata, :TemplateDataModifyAction

        def initialize(launchtemplatename=nil, placement=nil, imageid=nil, launchtemplateversiondescription=nil, instancetype=nil, systemdisk=nil, datadisks=nil, virtualprivatecloud=nil, internetaccessible=nil, instancecount=nil, instancename=nil, loginsettings=nil, securitygroupids=nil, enhancedservice=nil, clienttoken=nil, hostname=nil, actiontimer=nil, disasterrecovergroupids=nil, tagspecification=nil, instancemarketoptions=nil, userdata=nil, dryrun=nil, camrolename=nil, hpcclusterid=nil, instancechargetype=nil, instancechargeprepaid=nil, disableapitermination=nil, launchtemplatetagspecification=nil, metadata=nil, templatedatamodifyaction=nil)
          @LaunchTemplateName = launchtemplatename
          @Placement = placement
          @ImageId = imageid
          @LaunchTemplateVersionDescription = launchtemplateversiondescription
          @InstanceType = instancetype
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @VirtualPrivateCloud = virtualprivatecloud
          @InternetAccessible = internetaccessible
          @InstanceCount = instancecount
          @InstanceName = instancename
          @LoginSettings = loginsettings
          @SecurityGroupIds = securitygroupids
          @EnhancedService = enhancedservice
          @ClientToken = clienttoken
          @HostName = hostname
          @ActionTimer = actiontimer
          @DisasterRecoverGroupIds = disasterrecovergroupids
          @TagSpecification = tagspecification
          @InstanceMarketOptions = instancemarketoptions
          @UserData = userdata
          @DryRun = dryrun
          @CamRoleName = camrolename
          @HpcClusterId = hpcclusterid
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @DisableApiTermination = disableapitermination
          @LaunchTemplateTagSpecification = launchtemplatetagspecification
          @Metadata = metadata
          @TemplateDataModifyAction = templatedatamodifyaction
        end

        def deserialize(params)
          @LaunchTemplateName = params['LaunchTemplateName']
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @ImageId = params['ImageId']
          @LaunchTemplateVersionDescription = params['LaunchTemplateVersionDescription']
          @InstanceType = params['InstanceType']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          unless params['VirtualPrivateCloud'].nil?
            @VirtualPrivateCloud = VirtualPrivateCloud.new
            @VirtualPrivateCloud.deserialize(params['VirtualPrivateCloud'])
          end
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @InstanceCount = params['InstanceCount']
          @InstanceName = params['InstanceName']
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          @ClientToken = params['ClientToken']
          @HostName = params['HostName']
          unless params['ActionTimer'].nil?
            @ActionTimer = ActionTimer.new
            @ActionTimer.deserialize(params['ActionTimer'])
          end
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @TagSpecification << tagspecification_tmp
            end
          end
          unless params['InstanceMarketOptions'].nil?
            @InstanceMarketOptions = InstanceMarketOptionsRequest.new
            @InstanceMarketOptions.deserialize(params['InstanceMarketOptions'])
          end
          @UserData = params['UserData']
          @DryRun = params['DryRun']
          @CamRoleName = params['CamRoleName']
          @HpcClusterId = params['HpcClusterId']
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @DisableApiTermination = params['DisableApiTermination']
          unless params['LaunchTemplateTagSpecification'].nil?
            @LaunchTemplateTagSpecification = []
            params['LaunchTemplateTagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @LaunchTemplateTagSpecification << tagspecification_tmp
            end
          end
          unless params['Metadata'].nil?
            @Metadata = Metadata.new
            @Metadata.deserialize(params['Metadata'])
          end
          @TemplateDataModifyAction = params['TemplateDataModifyAction']
        end
      end

      # CreateLaunchTemplate返回参数结构体
      class CreateLaunchTemplateResponse < TencentCloud::Common::AbstractModel
        # @param LaunchTemplateId: 当通过本接口来创建实例启动模板时会返回该参数，表示创建成功的实例启动模板`ID`。
        # @type LaunchTemplateId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LaunchTemplateId, :RequestId

        def initialize(launchtemplateid=nil, requestid=nil)
          @LaunchTemplateId = launchtemplateid
          @RequestId = requestid
        end

        def deserialize(params)
          @LaunchTemplateId = params['LaunchTemplateId']
          @RequestId = params['RequestId']
        end
      end

      # CreateLaunchTemplateVersion请求参数结构体
      class CreateLaunchTemplateVersionRequest < TencentCloud::Common::AbstractModel
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目，所属宿主机（在专用宿主机上创建子机时指定）等属性。
        # @type Placement: :class:`Tencentcloud::Cvm.v20170312.models.Placement`
        # @param LaunchTemplateId: 启动模板ID，新版本将基于该实例启动模板ID创建。可通过 [DescribeLaunchTemplates](https://cloud.tencent.com/document/api/213/66322) 接口返回值中的`LaunchTemplateId`获取。
        # @type LaunchTemplateId: String
        # @param LaunchTemplateVersion: 若给定，新实例启动模板将基于给定的版本号创建。若未指定则使用默认版本,可以通过 [DescribeLaunchTemplateVersions](https://cloud.tencent.com/document/api/213/66323)查询默认版本。
        # @type LaunchTemplateVersion: Integer
        # @param LaunchTemplateVersionDescription: 实例启动模板版本描述。长度为2~256个英文或中文字符，不指定该参数时默认为空字符。
        # @type LaunchTemplateVersionDescription: String
        # @param InstanceType: 实例机型。不同实例机型指定了不同的资源规格。
        # <br><li>对于付费模式为PREPAID或POSTPAID\_BY\_HOUR的实例创建，具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。若不指定该参数，则系统将根据当前地域的资源售卖情况动态指定默认机型。</li><br><li>对于付费模式为CDHPAID的实例创建，该参数以"CDH_"为前缀，根据CPU和内存配置生成，具体形式为：CDH_XCXG，例如对于创建CPU为1核，内存为1G大小的专用宿主机的实例，该参数应该为CDH_1C1G。</li>
        # @type InstanceType: String
        # @param ImageId: 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-xxx`。镜像类型分为四种：<br/><li>公共镜像</li><li>自定义镜像</li><li>共享镜像</li><li>云镜像市场</li><br/>可通过以下方式获取可用的镜像ID：<br/><li>`公共镜像`、`自定义镜像`、`共享镜像`的镜像ID可通过登录[控制台](https://console.cloud.tencent.com/cvm/image?rid=1&imageType=PUBLIC_IMAGE)查询；`云镜像市场`的镜像ID可通过[云市场](https://market.cloud.tencent.com/list)查询。</li><li>通过调用接口 [DescribeImages](https://cloud.tencent.com/document/api/213/15715) ，传入InstanceType获取当前机型支持的镜像列表，取返回信息中的`ImageId`字段。</li>
        # @type ImageId: String
        # @param SystemDisk: 实例系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: :class:`Tencentcloud::Cvm.v20170312.models.SystemDisk`
        # @param DataDisks: 实例数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        # @type DataDisks: Array
        # @param VirtualPrivateCloud: 私有网络相关信息配置。通过该参数可以指定私有网络的ID，子网ID等信息。若不指定该参数，则默认使用基础网络。若在此参数中指定了私有网络IP，即表示每个实例的主网卡IP；同时，InstanceCount参数必须与私有网络IP的个数一致且不能大于20。
        # @type VirtualPrivateCloud: :class:`Tencentcloud::Cvm.v20170312.models.VirtualPrivateCloud`
        # @param InternetAccessible: 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        # @type InternetAccessible: :class:`Tencentcloud::Cvm.v20170312.models.InternetAccessible`
        # @param InstanceCount: 购买实例数量。具体配额相关限制详见[CVM实例购买限制](https://cloud.tencent.com/document/product/213/2664)。
        # @type InstanceCount: Integer
        # @param InstanceName: 实例显示名称。<br><li>不指定实例显示名称则默认显示‘未命名’。</li><li>购买多台实例，如果指定模式串`{R:x}`，表示生成数字`[x, x+n-1]`，其中`n`表示购买实例的数量，例如`server_{R:3}`，购买1台时，实例显示名称为`server_3`；购买2台时，实例显示名称分别为`server_3`，`server_4`。支持指定多个模式串`{R:x}`。</li><li>购买多台实例，如果不指定模式串，则在实例显示名称添加后缀`1、2...n`，其中`n`表示购买实例的数量，例如`server_`，购买2台时，实例显示名称分别为`server_1`，`server_2`。</li><li>最多支持128个字符（包含模式串）。</li>
        # @type InstanceName: String
        # @param LoginSettings: 实例登录设置。通过该参数可以设置实例的登录方式为密钥或保持镜像的原始登录设置。
        # @type LoginSettings: :class:`Tencentcloud::Cvm.v20170312.models.LoginSettings`
        # @param SecurityGroupIds: 实例所属安全组。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。
        # @type SecurityGroupIds: Array
        # @param EnhancedService: 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认公共镜像开启云监控、云安全服务；自定义镜像与云镜像市场镜像默认不开启云监控，云安全服务，而使用镜像里保留的服务。
        # @type EnhancedService: :class:`Tencentcloud::Cvm.v20170312.models.EnhancedService`
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # @type ClientToken: String
        # @param HostName: 云服务器的主机名。<br><li>点号（.）和短横线（-）不能作为 HostName 的首尾字符，不能连续使用。</li><br><li>Windows 实例：名字符长度为[2, 15]，允许字母（不限制大小写）、数字和短横线（-）组成，不支持点号（.），不能全是数字。</li><br><li>其他类型（Linux 等）实例：字符长度为[2, 60]，允许支持多个点号，点之间为一段，每段允许字母（不限制大小写）、数字和短横线（-）组成。</li>
        # @type HostName: String
        # @param ActionTimer: 定时任务。通过该参数可以为实例指定定时任务，目前仅支持定时销毁。
        # @type ActionTimer: :class:`Tencentcloud::Cvm.v20170312.models.ActionTimer`
        # @param DisasterRecoverGroupIds: 置放群组id，仅支持指定一个。可使用[DescribeDisasterRecoverGroups](https://cloud.tencent.com/document/api/213/17810)接口获取。
        # @type DisasterRecoverGroupIds: Array
        # @param TagSpecification: 标签描述列表。通过指定该参数可以同时绑定标签到相应的资源实例，当前仅支持绑定标签到云服务器实例。
        # @type TagSpecification: Array
        # @param InstanceMarketOptions: 实例的市场相关选项，如竞价实例相关参数，若指定实例的付费模式为竞价付费则该参数必传。
        # @type InstanceMarketOptions: :class:`Tencentcloud::Cvm.v20170312.models.InstanceMarketOptionsRequest`
        # @param UserData: 提供给实例使用的用户数据，需要以 base64 方式编码，支持的最大数据大小为 16KB。关于获取此参数的详细介绍，请参阅[Windows](https://cloud.tencent.com/document/product/213/17526)和[Linux](https://cloud.tencent.com/document/product/213/17525)启动时运行命令。
        # @type UserData: String
        # @param DryRun: 是否只预检此次请求。
        # true：发送检查请求，不会创建实例。检查项包括是否填写了必需参数，请求格式，业务限制和云服务器库存。
        # 如果检查不通过，则返回对应错误码；
        # 如果检查通过，则返回RequestId.
        # false（默认）：发送正常请求，通过检查后直接创建实例。
        # @type DryRun: Boolean
        # @param CamRoleName: CAM角色名称。可通过[ DescribeRoleList ](https://cloud.tencent.com/document/product/598/13887)接口返回值中的`roleName`获取。
        # @type CamRoleName: String
        # @param HpcClusterId: 高性能计算集群ID。若创建的实例为高性能计算实例，需指定实例放置的集群，否则不可指定。该参数可以通过调用 [DescribeHpcClusters](https://cloud.tencent.com/document/api/213/83220) 的返回值中的 `HpcClusterId` 字段来获取。
        # @type HpcClusterId: String
        # @param InstanceChargeType: 实例[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月</li><li>POSTPAID_BY_HOUR：按小时后付费</li><li>CDHPAID：独享子机（基于专用宿主机创建，宿主机部分的资源不收费）</li><li>SPOTPAID：竞价付费</li>默认值：POSTPAID_BY_HOUR。
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Cvm.v20170312.models.InstanceChargePrepaid`
        # @param DisableApiTermination: 实例销毁保护标志，表示是否允许通过api接口删除实例。取值范围：<br><li>TRUE：表示开启实例保护，不允许通过api接口删除实例</li><br><li>FALSE：表示关闭实例保护，允许通过api接口删除实例</li><br><br>默认取值：FALSE。
        # @type DisableApiTermination: Boolean
        # @param Metadata: 自定义metadata，支持创建 CVM 时添加自定义元数据键值对。
        # **注：内测中**。
        # @type Metadata: :class:`Tencentcloud::Cvm.v20170312.models.Metadata`
        # @param TemplateDataModifyAction: 只允许传递 Update 和 Replace 参数，在模板使用自定义 Metadata 且在 RunInstances 也传递 Metadata 时生效。默认采用 Replace。

        # - Update：设模板 t含本参数值为Update、 metadata=[k1:v1, k2:v2] ，则RunInstances（给metadata=[k2:v3]）+ t 创建的 cvm 使用metadata=[k1:v1, k2:v3]
        # - Replace：模板 t含本参数值为Replace、 metadata=[k1:v1, k2:v2] ，则RunInstances（给metadata=[k2:v3]）+ t 创建的 cvm 使用metadata=[k2:v3]
        # **注：内测中**。
        # @type TemplateDataModifyAction: String

        attr_accessor :Placement, :LaunchTemplateId, :LaunchTemplateVersion, :LaunchTemplateVersionDescription, :InstanceType, :ImageId, :SystemDisk, :DataDisks, :VirtualPrivateCloud, :InternetAccessible, :InstanceCount, :InstanceName, :LoginSettings, :SecurityGroupIds, :EnhancedService, :ClientToken, :HostName, :ActionTimer, :DisasterRecoverGroupIds, :TagSpecification, :InstanceMarketOptions, :UserData, :DryRun, :CamRoleName, :HpcClusterId, :InstanceChargeType, :InstanceChargePrepaid, :DisableApiTermination, :Metadata, :TemplateDataModifyAction

        def initialize(placement=nil, launchtemplateid=nil, launchtemplateversion=nil, launchtemplateversiondescription=nil, instancetype=nil, imageid=nil, systemdisk=nil, datadisks=nil, virtualprivatecloud=nil, internetaccessible=nil, instancecount=nil, instancename=nil, loginsettings=nil, securitygroupids=nil, enhancedservice=nil, clienttoken=nil, hostname=nil, actiontimer=nil, disasterrecovergroupids=nil, tagspecification=nil, instancemarketoptions=nil, userdata=nil, dryrun=nil, camrolename=nil, hpcclusterid=nil, instancechargetype=nil, instancechargeprepaid=nil, disableapitermination=nil, metadata=nil, templatedatamodifyaction=nil)
          @Placement = placement
          @LaunchTemplateId = launchtemplateid
          @LaunchTemplateVersion = launchtemplateversion
          @LaunchTemplateVersionDescription = launchtemplateversiondescription
          @InstanceType = instancetype
          @ImageId = imageid
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @VirtualPrivateCloud = virtualprivatecloud
          @InternetAccessible = internetaccessible
          @InstanceCount = instancecount
          @InstanceName = instancename
          @LoginSettings = loginsettings
          @SecurityGroupIds = securitygroupids
          @EnhancedService = enhancedservice
          @ClientToken = clienttoken
          @HostName = hostname
          @ActionTimer = actiontimer
          @DisasterRecoverGroupIds = disasterrecovergroupids
          @TagSpecification = tagspecification
          @InstanceMarketOptions = instancemarketoptions
          @UserData = userdata
          @DryRun = dryrun
          @CamRoleName = camrolename
          @HpcClusterId = hpcclusterid
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @DisableApiTermination = disableapitermination
          @Metadata = metadata
          @TemplateDataModifyAction = templatedatamodifyaction
        end

        def deserialize(params)
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @LaunchTemplateId = params['LaunchTemplateId']
          @LaunchTemplateVersion = params['LaunchTemplateVersion']
          @LaunchTemplateVersionDescription = params['LaunchTemplateVersionDescription']
          @InstanceType = params['InstanceType']
          @ImageId = params['ImageId']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          unless params['VirtualPrivateCloud'].nil?
            @VirtualPrivateCloud = VirtualPrivateCloud.new
            @VirtualPrivateCloud.deserialize(params['VirtualPrivateCloud'])
          end
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @InstanceCount = params['InstanceCount']
          @InstanceName = params['InstanceName']
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          @ClientToken = params['ClientToken']
          @HostName = params['HostName']
          unless params['ActionTimer'].nil?
            @ActionTimer = ActionTimer.new
            @ActionTimer.deserialize(params['ActionTimer'])
          end
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @TagSpecification << tagspecification_tmp
            end
          end
          unless params['InstanceMarketOptions'].nil?
            @InstanceMarketOptions = InstanceMarketOptionsRequest.new
            @InstanceMarketOptions.deserialize(params['InstanceMarketOptions'])
          end
          @UserData = params['UserData']
          @DryRun = params['DryRun']
          @CamRoleName = params['CamRoleName']
          @HpcClusterId = params['HpcClusterId']
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @DisableApiTermination = params['DisableApiTermination']
          unless params['Metadata'].nil?
            @Metadata = Metadata.new
            @Metadata.deserialize(params['Metadata'])
          end
          @TemplateDataModifyAction = params['TemplateDataModifyAction']
        end
      end

      # CreateLaunchTemplateVersion返回参数结构体
      class CreateLaunchTemplateVersionResponse < TencentCloud::Common::AbstractModel
        # @param LaunchTemplateVersionNumber: 新创建的实例启动模板版本号。
        # @type LaunchTemplateVersionNumber: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LaunchTemplateVersionNumber, :RequestId

        def initialize(launchtemplateversionnumber=nil, requestid=nil)
          @LaunchTemplateVersionNumber = launchtemplateversionnumber
          @RequestId = requestid
        end

        def deserialize(params)
          @LaunchTemplateVersionNumber = params['LaunchTemplateVersionNumber']
          @RequestId = params['RequestId']
        end
      end

      # 描述了数据盘的信息
      class DataDisk < TencentCloud::Common::AbstractModel
        # @param DiskSize: 数据盘大小，单位：GiB。最小调整步长为10GiB，不同数据盘类型取值范围不同，具体限制详见：[存储概述](https://cloud.tencent.com/document/product/213/4952)。默认值为0，表示不购买数据盘。更多限制详见产品文档。
        # @type DiskSize: Integer
        # @param DiskType: 数据盘类型。数据盘类型限制详见[存储概述](https://cloud.tencent.com/document/product/213/4952)。取值范围：<br /><li>LOCAL_BASIC：本地硬盘 </li> <li>LOCAL_SSD：本地SSD硬盘</li><li>LOCAL_NVME：本地NVME硬盘，与InstanceType强相关，不支持指定</li><li>LOCAL_PRO：本地HDD硬盘，与InstanceType强相关，不支持指定</li><li>CLOUD_BASIC：普通云硬盘</li><li> CLOUD_PREMIUM：高性能云硬盘</li><li>CLOUD_SSD：SSD云硬盘</li><li> CLOUD_HSSD：增强型SSD云硬盘</li> <li>CLOUD_TSSD：极速型SSD云硬盘</li><li>CLOUD_BSSD：通用型SSD云硬盘</li><br />默认取值：LOCAL_BASIC<br/><br />该参数对`ResizeInstanceDisk`接口无效。
        # @type DiskType: String
        # @param DiskId: 数据盘ID。
        # 该参数目前仅用于`DescribeInstances`等查询类接口的返回参数，不可用于`RunInstances`等写接口的入参。
        # @type DiskId: String
        # @param DeleteWithInstance: 数据盘是否随子机销毁。取值范围：<li>true：子机销毁时，销毁数据盘，只支持按小时后付费云盘</li><li>false：子机销毁时，保留数据盘</li><br/>默认取值：true <br/>该参数目前仅用于 `RunInstances` 接口。
        # @type DeleteWithInstance: Boolean
        # @param SnapshotId: 数据盘快照ID。选择的数据盘快照大小需小于数据盘大小。
        # @type SnapshotId: String
        # @param Encrypt: 数据盘是否加密。取值范围：<li>true：加密</li><li>false：不加密</li><br/>默认取值：false<br/>该参数目前仅用于 `RunInstances` 接口。
        # @type Encrypt: Boolean
        # @param KmsKeyId: 自定义CMK对应的ID，取值为UUID或者类似kms-abcd1234。用于加密云盘。

        # 该参数目前仅用于 `RunInstances` 接口。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KmsKeyId: String
        # @param ThroughputPerformance: 云硬盘性能，单位：MiB/s。使用此参数可给云硬盘购买额外的性能。
        # 当前仅支持极速型云盘（CLOUD_TSSD）和增强型SSD云硬盘（CLOUD_HSSD）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ThroughputPerformance: Integer
        # @param CdcId: 所属的独享集群ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CdcId: String
        # @param BurstPerformance: 突发性能
        #  <b>注：内测中。</b>
        # @type BurstPerformance: Boolean
        # @param DiskName: 磁盘名称，长度不超过128 个字符。
        # @type DiskName: String

        attr_accessor :DiskSize, :DiskType, :DiskId, :DeleteWithInstance, :SnapshotId, :Encrypt, :KmsKeyId, :ThroughputPerformance, :CdcId, :BurstPerformance, :DiskName

        def initialize(disksize=nil, disktype=nil, diskid=nil, deletewithinstance=nil, snapshotid=nil, encrypt=nil, kmskeyid=nil, throughputperformance=nil, cdcid=nil, burstperformance=nil, diskname=nil)
          @DiskSize = disksize
          @DiskType = disktype
          @DiskId = diskid
          @DeleteWithInstance = deletewithinstance
          @SnapshotId = snapshotid
          @Encrypt = encrypt
          @KmsKeyId = kmskeyid
          @ThroughputPerformance = throughputperformance
          @CdcId = cdcid
          @BurstPerformance = burstperformance
          @DiskName = diskname
        end

        def deserialize(params)
          @DiskSize = params['DiskSize']
          @DiskType = params['DiskType']
          @DiskId = params['DiskId']
          @DeleteWithInstance = params['DeleteWithInstance']
          @SnapshotId = params['SnapshotId']
          @Encrypt = params['Encrypt']
          @KmsKeyId = params['KmsKeyId']
          @ThroughputPerformance = params['ThroughputPerformance']
          @CdcId = params['CdcId']
          @BurstPerformance = params['BurstPerformance']
          @DiskName = params['DiskName']
        end
      end

      # DeleteDisasterRecoverGroups请求参数结构体
      class DeleteDisasterRecoverGroupsRequest < TencentCloud::Common::AbstractModel
        # @param DisasterRecoverGroupIds: 分散置放群组ID列表，可通过[DescribeDisasterRecoverGroups](https://cloud.tencent.com/document/api/213/17810)接口获取。每次请求允许操作的分散置放群组数量上限是10。
        # @type DisasterRecoverGroupIds: Array

        attr_accessor :DisasterRecoverGroupIds

        def initialize(disasterrecovergroupids=nil)
          @DisasterRecoverGroupIds = disasterrecovergroupids
        end

        def deserialize(params)
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
        end
      end

      # DeleteDisasterRecoverGroups返回参数结构体
      class DeleteDisasterRecoverGroupsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteHpcClusters请求参数结构体
      class DeleteHpcClustersRequest < TencentCloud::Common::AbstractModel
        # @param HpcClusterIds: 高性能计算集群ID列表。
        # @type HpcClusterIds: Array

        attr_accessor :HpcClusterIds

        def initialize(hpcclusterids=nil)
          @HpcClusterIds = hpcclusterids
        end

        def deserialize(params)
          @HpcClusterIds = params['HpcClusterIds']
        end
      end

      # DeleteHpcClusters返回参数结构体
      class DeleteHpcClustersResponse < TencentCloud::Common::AbstractModel
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

      # DeleteImages请求参数结构体
      class DeleteImagesRequest < TencentCloud::Common::AbstractModel
        # @param ImageIds: 删除的镜像 ID 列表。
        # 可通过 [DescribeImages](https://cloud.tencent.com/document/api/213/15715) 接口返回值中的`ImageId`获取。
        # @type ImageIds: Array
        # @param DeleteBindedSnap: 是否删除镜像关联的快照。
        # 默认值：false
        # @type DeleteBindedSnap: Boolean
        # @param DryRun: 检测是否支持删除镜像。
        # 默认值：false
        # @type DryRun: Boolean

        attr_accessor :ImageIds, :DeleteBindedSnap, :DryRun

        def initialize(imageids=nil, deletebindedsnap=nil, dryrun=nil)
          @ImageIds = imageids
          @DeleteBindedSnap = deletebindedsnap
          @DryRun = dryrun
        end

        def deserialize(params)
          @ImageIds = params['ImageIds']
          @DeleteBindedSnap = params['DeleteBindedSnap']
          @DryRun = params['DryRun']
        end
      end

      # DeleteImages返回参数结构体
      class DeleteImagesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteInstancesActionTimer请求参数结构体
      class DeleteInstancesActionTimerRequest < TencentCloud::Common::AbstractModel
        # @param ActionTimerIds: 定时任务ID列表，可以通过[ DescribeInstancesActionTimer ](https://cloud.tencent.com/document/product/213/103950)接口查询。只能删除未执行的定时任务。
        # @type ActionTimerIds: Array

        attr_accessor :ActionTimerIds

        def initialize(actiontimerids=nil)
          @ActionTimerIds = actiontimerids
        end

        def deserialize(params)
          @ActionTimerIds = params['ActionTimerIds']
        end
      end

      # DeleteInstancesActionTimer返回参数结构体
      class DeleteInstancesActionTimerResponse < TencentCloud::Common::AbstractModel
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

      # DeleteKeyPairs请求参数结构体
      class DeleteKeyPairsRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 一个或多个待操作的密钥对ID。每次请求批量密钥对的上限为100。<br>可以通过以下方式获取可用的密钥ID：<br><li>通过登录[控制台](https://console.cloud.tencent.com/cvm/sshkey)查询密钥ID。</li><br><li>通过调用接口 [DescribeKeyPairs](https://cloud.tencent.com/document/api/213/15699) ，取返回信息中的 `KeyId` 获取密钥对ID。</li>
        # @type KeyIds: Array

        attr_accessor :KeyIds

        def initialize(keyids=nil)
          @KeyIds = keyids
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
        end
      end

      # DeleteKeyPairs返回参数结构体
      class DeleteKeyPairsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLaunchTemplate请求参数结构体
      class DeleteLaunchTemplateRequest < TencentCloud::Common::AbstractModel
        # @param LaunchTemplateId: 启动模板ID。可通过 [DescribeLaunchTemplates](https://cloud.tencent.com/document/api/213/66322) 接口返回值中的`LaunchTemplateId`获取。
        # @type LaunchTemplateId: String

        attr_accessor :LaunchTemplateId

        def initialize(launchtemplateid=nil)
          @LaunchTemplateId = launchtemplateid
        end

        def deserialize(params)
          @LaunchTemplateId = params['LaunchTemplateId']
        end
      end

      # DeleteLaunchTemplate返回参数结构体
      class DeleteLaunchTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLaunchTemplateVersions请求参数结构体
      class DeleteLaunchTemplateVersionsRequest < TencentCloud::Common::AbstractModel
        # @param LaunchTemplateId: 启动模板ID。可通过 [DescribeLaunchTemplates](https://cloud.tencent.com/document/api/213/66322) 接口返回值中的`LaunchTemplateId`获取。
        # @type LaunchTemplateId: String
        # @param LaunchTemplateVersions: 实例启动模板版本列表。可通过 [DescribeLaunchTemplateVersions](https://cloud.tencent.com/document/api/213/66323) 接口返回值中的`LaunchTemplateVersion`获取。
        # @type LaunchTemplateVersions: Array

        attr_accessor :LaunchTemplateId, :LaunchTemplateVersions

        def initialize(launchtemplateid=nil, launchtemplateversions=nil)
          @LaunchTemplateId = launchtemplateid
          @LaunchTemplateVersions = launchtemplateversions
        end

        def deserialize(params)
          @LaunchTemplateId = params['LaunchTemplateId']
          @LaunchTemplateVersions = params['LaunchTemplateVersions']
        end
      end

      # DeleteLaunchTemplateVersions返回参数结构体
      class DeleteLaunchTemplateVersionsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAccountQuota请求参数结构体
      class DescribeAccountQuotaRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <li><strong>zone</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>可用区</strong>】进行过滤。可用区形如：ap-guangzhou-1。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：<a href="https://cloud.tencent.com/document/product/213/6091">可用区列表</a></p>
        # <li><strong>quota-type</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>配额类型</strong>】进行过滤。配额类型形如：PostPaidQuotaSet。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：</p><p style="padding-left: 30px;">PostPaidQuotaSet: 后付费配额</p><p style="padding-left: 30px;">PrePaidQuotaSet: 预付费配额</p><p style="padding-left: 30px;">SpotPaidQuotaSet: 竞价配额</p><p style="padding-left: 30px;">ImageQuotaSet: 镜像配额</p><p style="padding-left: 30px;">DisasterRecoverGroupQuotaSet: 置放群组配额</p>
        # @type Filters: Array

        attr_accessor :Filters

        def initialize(filters=nil)
          @Filters = filters
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
        end
      end

      # DescribeAccountQuota返回参数结构体
      class DescribeAccountQuotaResponse < TencentCloud::Common::AbstractModel
        # @param AppId: 用户appid
        # @type AppId: Integer
        # @param AccountQuotaOverview: 配额数据
        # @type AccountQuotaOverview: :class:`Tencentcloud::Cvm.v20170312.models.AccountQuotaOverview`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :AccountQuotaOverview, :RequestId

        def initialize(appid=nil, accountquotaoverview=nil, requestid=nil)
          @AppId = appid
          @AccountQuotaOverview = accountquotaoverview
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          unless params['AccountQuotaOverview'].nil?
            @AccountQuotaOverview = AccountQuotaOverview.new
            @AccountQuotaOverview.deserialize(params['AccountQuotaOverview'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeChcDeniedActions请求参数结构体
      class DescribeChcDeniedActionsRequest < TencentCloud::Common::AbstractModel
        # @param ChcIds: CHC物理服务器实例id
        # @type ChcIds: Array

        attr_accessor :ChcIds

        def initialize(chcids=nil)
          @ChcIds = chcids
        end

        def deserialize(params)
          @ChcIds = params['ChcIds']
        end
      end

      # DescribeChcDeniedActions返回参数结构体
      class DescribeChcDeniedActionsResponse < TencentCloud::Common::AbstractModel
        # @param ChcHostDeniedActionSet: CHC实例禁止操作信息
        # @type ChcHostDeniedActionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ChcHostDeniedActionSet, :RequestId

        def initialize(chchostdeniedactionset=nil, requestid=nil)
          @ChcHostDeniedActionSet = chchostdeniedactionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ChcHostDeniedActionSet'].nil?
            @ChcHostDeniedActionSet = []
            params['ChcHostDeniedActionSet'].each do |i|
              chchostdeniedactions_tmp = ChcHostDeniedActions.new
              chchostdeniedactions_tmp.deserialize(i)
              @ChcHostDeniedActionSet << chchostdeniedactions_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeChcHosts请求参数结构体
      class DescribeChcHostsRequest < TencentCloud::Common::AbstractModel
        # @param ChcIds: CHC物理服务器实例ID。每次请求的实例的上限为100。参数不支持同时指定`ChcIds`和`Filters`。
        # @type ChcIds: Array
        # @param Filters: <li><strong>zone</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>可用区</strong>】进行过滤。可用区形如：ap-guangzhou-1。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：<a href="https://cloud.tencent.com/document/product/213/6091">可用区列表</a></p>
        # <li><strong>instance-name</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>实例名称</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>instance-state</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>实例状态</strong>】进行过滤。状态类型详见[实例状态表](https://cloud.tencent.com/document/api/213/15753#InstanceStatus)</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>device-type</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>设备类型</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>vpc-id</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>私有网络唯一ID</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>subnet-id</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>私有子网唯一ID</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>sn</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>设备SN</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer

        attr_accessor :ChcIds, :Filters, :Offset, :Limit

        def initialize(chcids=nil, filters=nil, offset=nil, limit=nil)
          @ChcIds = chcids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ChcIds = params['ChcIds']
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
        end
      end

      # DescribeChcHosts返回参数结构体
      class DescribeChcHostsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param ChcHostSet: 返回的实例列表
        # @type ChcHostSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ChcHostSet, :RequestId

        def initialize(totalcount=nil, chchostset=nil, requestid=nil)
          @TotalCount = totalcount
          @ChcHostSet = chchostset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ChcHostSet'].nil?
            @ChcHostSet = []
            params['ChcHostSet'].each do |i|
              chchost_tmp = ChcHost.new
              chchost_tmp.deserialize(i)
              @ChcHostSet << chchost_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDisasterRecoverGroupQuota请求参数结构体
      class DescribeDisasterRecoverGroupQuotaRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDisasterRecoverGroupQuota返回参数结构体
      class DescribeDisasterRecoverGroupQuotaResponse < TencentCloud::Common::AbstractModel
        # @param GroupQuota: 可创建置放群组数量的上限。
        # @type GroupQuota: Integer
        # @param CurrentNum: 当前用户已经创建的置放群组数量。
        # @type CurrentNum: Integer
        # @param CvmInHostGroupQuota: 物理机类型容灾组内实例的配额数。
        # @type CvmInHostGroupQuota: Integer
        # @param CvmInSwGroupQuota: 交换机类型容灾组内实例的配额数。
        # @type CvmInSwGroupQuota: Integer
        # @param CvmInRackGroupQuota: 机架类型容灾组内实例的配额数。
        # @type CvmInRackGroupQuota: Integer
        # @param CvmInSwitchGroupQuota: 交换机类型容灾组内实例的配额数。
        # @type CvmInSwitchGroupQuota: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupQuota, :CurrentNum, :CvmInHostGroupQuota, :CvmInSwGroupQuota, :CvmInRackGroupQuota, :CvmInSwitchGroupQuota, :RequestId
        extend Gem::Deprecate
        deprecate :CvmInSwGroupQuota, :none, 2025, 7
        deprecate :CvmInSwGroupQuota=, :none, 2025, 7

        def initialize(groupquota=nil, currentnum=nil, cvminhostgroupquota=nil, cvminswgroupquota=nil, cvminrackgroupquota=nil, cvminswitchgroupquota=nil, requestid=nil)
          @GroupQuota = groupquota
          @CurrentNum = currentnum
          @CvmInHostGroupQuota = cvminhostgroupquota
          @CvmInSwGroupQuota = cvminswgroupquota
          @CvmInRackGroupQuota = cvminrackgroupquota
          @CvmInSwitchGroupQuota = cvminswitchgroupquota
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupQuota = params['GroupQuota']
          @CurrentNum = params['CurrentNum']
          @CvmInHostGroupQuota = params['CvmInHostGroupQuota']
          @CvmInSwGroupQuota = params['CvmInSwGroupQuota']
          @CvmInRackGroupQuota = params['CvmInRackGroupQuota']
          @CvmInSwitchGroupQuota = params['CvmInSwitchGroupQuota']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDisasterRecoverGroups请求参数结构体
      class DescribeDisasterRecoverGroupsRequest < TencentCloud::Common::AbstractModel
        # @param DisasterRecoverGroupIds: 分散置放群组ID列表。每次请求允许操作的分散置放群组数量上限是10。
        # @type DisasterRecoverGroupIds: Array
        # @param Name: 分散置放群组名称，支持模糊匹配。
        # @type Name: String
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Filters: <li><strong>tag-key</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>标签键</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>tag-value</strong></li> <p style="padding-left: 30px;">按照【<strong>标签值</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>tag:tag-key</strong></li> <p style="padding-left: 30px;">按照【<strong>标签键值对</strong>】进行过滤。tag-key使用具体的标签键进行替换。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。
        # @type Filters: Array

        attr_accessor :DisasterRecoverGroupIds, :Name, :Offset, :Limit, :Filters

        def initialize(disasterrecovergroupids=nil, name=nil, offset=nil, limit=nil, filters=nil)
          @DisasterRecoverGroupIds = disasterrecovergroupids
          @Name = name
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
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

      # DescribeDisasterRecoverGroups返回参数结构体
      class DescribeDisasterRecoverGroupsResponse < TencentCloud::Common::AbstractModel
        # @param DisasterRecoverGroupSet: 分散置放群组信息列表。
        # @type DisasterRecoverGroupSet: Array
        # @param TotalCount: 用户置放群组总量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DisasterRecoverGroupSet, :TotalCount, :RequestId

        def initialize(disasterrecovergroupset=nil, totalcount=nil, requestid=nil)
          @DisasterRecoverGroupSet = disasterrecovergroupset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DisasterRecoverGroupSet'].nil?
            @DisasterRecoverGroupSet = []
            params['DisasterRecoverGroupSet'].each do |i|
              disasterrecovergroup_tmp = DisasterRecoverGroup.new
              disasterrecovergroup_tmp.deserialize(i)
              @DisasterRecoverGroupSet << disasterrecovergroup_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHosts请求参数结构体
      class DescribeHostsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <li><strong>zone</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>可用区</strong>】进行过滤。可用区形如：ap-guangzhou-1。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：<a href="https://cloud.tencent.com/document/product/213/6091">可用区列表</a></p>
        # <li><strong>project-id</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>项目ID</strong>】进行过滤，可通过调用[DescribeProject](https://cloud.tencent.com/document/api/651/78725)查询已创建的项目列表或登录[控制台](https://console.cloud.tencent.com/cvm/index)进行查看；也可以调用[AddProject](https://cloud.tencent.com/document/api/651/81952)创建新的项目。项目ID形如：1002189。</p><p style="padding-left: 30px;">类型：Integer</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>host-id</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>[CDH](https://cloud.tencent.com/document/product/416) ID</strong>】进行过滤。[CDH](https://cloud.tencent.com/document/product/416) ID形如：host-xxxxxxxx。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>host-name</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>CDH实例名称</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>host-state</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>CDH实例状态</strong>】进行过滤。（PENDING：创建中 | LAUNCH_FAILURE：创建失败 | RUNNING：运行中 | EXPIRED：已过期）</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>host-type</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>CDH机型</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>tag-key</strong></li> <p style="padding-left: 30px;">按照【<strong>标签键</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>tag-value</strong></li> <p style="padding-left: 30px;">按照【<strong>标签值</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>tag:tag-key</strong></li> <p style="padding-left: 30px;">按照【<strong>标签键值对</strong>】进行过滤。tag-key使用具体的标签键进行替换。使用请参考示例。</p>
        # 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :Filters, :Offset, :Limit

        def initialize(filters=nil, offset=nil, limit=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
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
        end
      end

      # DescribeHosts返回参数结构体
      class DescribeHostsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的cdh实例总数
        # @type TotalCount: Integer
        # @param HostSet: cdh实例详细信息列表
        # @type HostSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :HostSet, :RequestId

        def initialize(totalcount=nil, hostset=nil, requestid=nil)
          @TotalCount = totalcount
          @HostSet = hostset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['HostSet'].nil?
            @HostSet = []
            params['HostSet'].each do |i|
              hostitem_tmp = HostItem.new
              hostitem_tmp.deserialize(i)
              @HostSet << hostitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHpcClusters请求参数结构体
      class DescribeHpcClustersRequest < TencentCloud::Common::AbstractModel
        # @param HpcClusterIds: 一个或多个待操作的高性能计算集群ID。集群ID信息可通过 [查询高性能集群信息](https://cloud.tencent.com/document/api/213/83220) 接口获取。每次请求高性能计算集群信息的批量上限为100，默认配合Limit传参数，不能超过Limit值，Limit默认20。
        # @type HpcClusterIds: Array
        # @param Name: 高性能计算集群名称，长度限制[1-60]。
        # @type Name: String
        # @param Zone: 可用区信息。可用区信息可通过 [查询可用区信息](https://cloud.tencent.com/document/api/213/15707) 接口获取。
        # @type Zone: String
        # @param Offset: 偏移量, 默认值0。
        # @type Offset: Integer
        # @param Limit: 本次请求量, 默认值20，范围限制为[1-100]。
        # @type Limit: Integer
        # @param HpcClusterType: 高性能计算集群类型，当前有三个取值：分别是CDC/CHC/STANDARD，其中STANDARD是默认的标准模式。
        # @type HpcClusterType: String
        # @param HpcClusterBusinessId: 高性能计算集群对应的业务场景标识，当前只支持CDC场景类型。
        # @type HpcClusterBusinessId: String
        # @param InstanceType: 高性能计算集群实例类型
        # @type InstanceType: String
        # @param Filters: <li><strong>tag-key</strong></li> <p style="padding-left: 30px;">按照【<strong>标签键</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>tag-value</strong></li> <p style="padding-left: 30px;">按照【<strong>标签值</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>tag:tag-key</strong></li> <p style="padding-left: 30px;">按照【<strong>标签键值对</strong>】进行过滤。tag-key使用具体的标签键进行替换。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。
        # @type Filters: Array

        attr_accessor :HpcClusterIds, :Name, :Zone, :Offset, :Limit, :HpcClusterType, :HpcClusterBusinessId, :InstanceType, :Filters

        def initialize(hpcclusterids=nil, name=nil, zone=nil, offset=nil, limit=nil, hpcclustertype=nil, hpcclusterbusinessid=nil, instancetype=nil, filters=nil)
          @HpcClusterIds = hpcclusterids
          @Name = name
          @Zone = zone
          @Offset = offset
          @Limit = limit
          @HpcClusterType = hpcclustertype
          @HpcClusterBusinessId = hpcclusterbusinessid
          @InstanceType = instancetype
          @Filters = filters
        end

        def deserialize(params)
          @HpcClusterIds = params['HpcClusterIds']
          @Name = params['Name']
          @Zone = params['Zone']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @HpcClusterType = params['HpcClusterType']
          @HpcClusterBusinessId = params['HpcClusterBusinessId']
          @InstanceType = params['InstanceType']
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

      # DescribeHpcClusters返回参数结构体
      class DescribeHpcClustersResponse < TencentCloud::Common::AbstractModel
        # @param HpcClusterSet: 高性能计算集群信息。
        # @type HpcClusterSet: Array
        # @param TotalCount: 高性能计算集群总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HpcClusterSet, :TotalCount, :RequestId

        def initialize(hpcclusterset=nil, totalcount=nil, requestid=nil)
          @HpcClusterSet = hpcclusterset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HpcClusterSet'].nil?
            @HpcClusterSet = []
            params['HpcClusterSet'].each do |i|
              hpcclusterinfo_tmp = HpcClusterInfo.new
              hpcclusterinfo_tmp.deserialize(i)
              @HpcClusterSet << hpcclusterinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageFromFamily请求参数结构体
      class DescribeImageFromFamilyRequest < TencentCloud::Common::AbstractModel
        # @param ImageFamily: 镜像族
        # @type ImageFamily: String

        attr_accessor :ImageFamily

        def initialize(imagefamily=nil)
          @ImageFamily = imagefamily
        end

        def deserialize(params)
          @ImageFamily = params['ImageFamily']
        end
      end

      # DescribeImageFromFamily返回参数结构体
      class DescribeImageFromFamilyResponse < TencentCloud::Common::AbstractModel
        # @param Image: 镜像信息，没有可用镜像是返回为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Image: :class:`Tencentcloud::Cvm.v20170312.models.Image`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Image, :RequestId

        def initialize(image=nil, requestid=nil)
          @Image = image
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Image'].nil?
            @Image = Image.new
            @Image.deserialize(params['Image'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageQuota请求参数结构体
      class DescribeImageQuotaRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeImageQuota返回参数结构体
      class DescribeImageQuotaResponse < TencentCloud::Common::AbstractModel
        # @param ImageNumQuota: 账户的镜像配额
        # @type ImageNumQuota: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageNumQuota, :RequestId

        def initialize(imagenumquota=nil, requestid=nil)
          @ImageNumQuota = imagenumquota
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageNumQuota = params['ImageNumQuota']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageSharePermission请求参数结构体
      class DescribeImageSharePermissionRequest < TencentCloud::Common::AbstractModel
        # @param ImageId: 需要共享的镜像 ID，可通过 [DescribeImages](https://cloud.tencent.com/document/api/213/15715) 接口返回的`ImageId`获取。
        # @type ImageId: String

        attr_accessor :ImageId

        def initialize(imageid=nil)
          @ImageId = imageid
        end

        def deserialize(params)
          @ImageId = params['ImageId']
        end
      end

      # DescribeImageSharePermission返回参数结构体
      class DescribeImageSharePermissionResponse < TencentCloud::Common::AbstractModel
        # @param SharePermissionSet: 镜像共享信息
        # @type SharePermissionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SharePermissionSet, :RequestId

        def initialize(sharepermissionset=nil, requestid=nil)
          @SharePermissionSet = sharepermissionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SharePermissionSet'].nil?
            @SharePermissionSet = []
            params['SharePermissionSet'].each do |i|
              sharepermission_tmp = SharePermission.new
              sharepermission_tmp.deserialize(i)
              @SharePermissionSet << sharepermission_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImages请求参数结构体
      class DescribeImagesRequest < TencentCloud::Common::AbstractModel
        # @param ImageIds: 镜像ID列表 。镜像ID如：`img-gvbnzy6f`。array型参数的格式可以参考[API简介](https://cloud.tencent.com/document/api/213/15688)。镜像ID可以通过如下方式获取：<br><li>通过[DescribeImages](https://cloud.tencent.com/document/api/213/15715)接口返回的`ImageId`获取。</li><li>通过[镜像控制台](https://console.cloud.tencent.com/cvm/image)获取。</li>
        # @type ImageIds: Array
        # @param Filters: 过滤条件，每次请求的`Filters`的上限为10，`Filters.Values`的上限为5。参数不可以同时指定`ImageIds`和`Filters`。详细的过滤条件如下：

        # <li><strong>image-id</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>镜像ID</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>image-type</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>镜像类型</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：</p><p style="padding-left: 30px;">PRIVATE_IMAGE: 自定义镜像 (本账户创建的镜像)</p><p style="padding-left: 30px;">PUBLIC_IMAGE: 公共镜像 (腾讯云官方镜像)</p><p style="padding-left: 30px;">SHARED_IMAGE: 共享镜像(其他账户共享给本账户的镜像)</p>
        # <li><strong>image-name</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>镜像名称</strong>】进行过滤。支持模糊查询。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>platform</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>镜像平台</strong>】进行过滤，如 CentOS，支持模糊匹配。可通过 <a href="https://cloud.tencent.com/document/api/213/15715" target="_blank">DescribeImages</a> 接口返回的<code> Platform </code>获取。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>tag-key</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>标签键</strong>】进行过滤。可通过 <a href="https://cloud.tencent.com/document/product/651/72275" target="_blank"> GetTags </a> 接口返回的<code> TagKey </code>获取。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>tag-value</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>标签值</strong>】进行过滤。可通过 <a href="https://cloud.tencent.com/document/product/651/72275" target="_blank"> GetTags </a> 接口返回的<code> TagValue </code>获取。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>tag:tag-key</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>标签键值对</strong>】进行过滤。tag-key使用具体的标签键进行替换。可通过 <a href="https://cloud.tencent.com/document/product/651/72275" target="_blank"> GetTags </a> 接口返回的<code> TagKey 和 TagValue </code>获取。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于Offset详见[API简介](/document/api/213/568#.E8.BE.93.E5.85.A5.E5.8F.82.E6.95.B0.E4.B8.8E.E8.BF.94.E5.9B.9E.E5.8F.82.E6.95.B0.E9.87.8A.E4.B9.89)。
        # @type Offset: Integer
        # @param Limit: 数量限制，默认为20，最大值为100。关于Limit详见[API简介](/document/api/213/568#.E8.BE.93.E5.85.A5.E5.8F.82.E6.95.B0.E4.B8.8E.E8.BF.94.E5.9B.9E.E5.8F.82.E6.95.B0.E9.87.8A.E4.B9.89)。
        # @type Limit: Integer
        # @param InstanceType: 实例类型，如 `S1.SMALL1`。可通过 [DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/product/213/15749) 接口返回的 `InstanceType` 获取。
        # @type InstanceType: String

        attr_accessor :ImageIds, :Filters, :Offset, :Limit, :InstanceType

        def initialize(imageids=nil, filters=nil, offset=nil, limit=nil, instancetype=nil)
          @ImageIds = imageids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @InstanceType = instancetype
        end

        def deserialize(params)
          @ImageIds = params['ImageIds']
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
          @InstanceType = params['InstanceType']
        end
      end

      # DescribeImages返回参数结构体
      class DescribeImagesResponse < TencentCloud::Common::AbstractModel
        # @param ImageSet: 一个关于镜像详细信息的结构体，主要包括镜像的主要状态与属性。
        # @type ImageSet: Array
        # @param TotalCount: 符合要求的镜像数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageSet, :TotalCount, :RequestId

        def initialize(imageset=nil, totalcount=nil, requestid=nil)
          @ImageSet = imageset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ImageSet'].nil?
            @ImageSet = []
            params['ImageSet'].each do |i|
              image_tmp = Image.new
              image_tmp.deserialize(i)
              @ImageSet << image_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImportImageOs请求参数结构体
      class DescribeImportImageOsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeImportImageOs返回参数结构体
      class DescribeImportImageOsResponse < TencentCloud::Common::AbstractModel
        # @param ImportImageOsListSupported: 支持的导入镜像的操作系统类型。
        # @type ImportImageOsListSupported: :class:`Tencentcloud::Cvm.v20170312.models.ImageOsList`
        # @param ImportImageOsVersionSet: 支持的导入镜像的操作系统版本。
        # @type ImportImageOsVersionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImportImageOsListSupported, :ImportImageOsVersionSet, :RequestId

        def initialize(importimageoslistsupported=nil, importimageosversionset=nil, requestid=nil)
          @ImportImageOsListSupported = importimageoslistsupported
          @ImportImageOsVersionSet = importimageosversionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ImportImageOsListSupported'].nil?
            @ImportImageOsListSupported = ImageOsList.new
            @ImportImageOsListSupported.deserialize(params['ImportImageOsListSupported'])
          end
          unless params['ImportImageOsVersionSet'].nil?
            @ImportImageOsVersionSet = []
            params['ImportImageOsVersionSet'].each do |i|
              osversion_tmp = OsVersion.new
              osversion_tmp.deserialize(i)
              @ImportImageOsVersionSet << osversion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceFamilyConfigs请求参数结构体
      class DescribeInstanceFamilyConfigsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeInstanceFamilyConfigs返回参数结构体
      class DescribeInstanceFamilyConfigsResponse < TencentCloud::Common::AbstractModel
        # @param InstanceFamilyConfigSet: 实例机型组配置的列表信息
        # @type InstanceFamilyConfigSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceFamilyConfigSet, :RequestId

        def initialize(instancefamilyconfigset=nil, requestid=nil)
          @InstanceFamilyConfigSet = instancefamilyconfigset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceFamilyConfigSet'].nil?
            @InstanceFamilyConfigSet = []
            params['InstanceFamilyConfigSet'].each do |i|
              instancefamilyconfig_tmp = InstanceFamilyConfig.new
              instancefamilyconfig_tmp.deserialize(i)
              @InstanceFamilyConfigSet << instancefamilyconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceInternetBandwidthConfigs请求参数结构体
      class DescribeInstanceInternetBandwidthConfigsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待操作的实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceInternetBandwidthConfigs返回参数结构体
      class DescribeInstanceInternetBandwidthConfigsResponse < TencentCloud::Common::AbstractModel
        # @param InternetBandwidthConfigSet: 带宽配置信息列表。
        # @type InternetBandwidthConfigSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InternetBandwidthConfigSet, :RequestId

        def initialize(internetbandwidthconfigset=nil, requestid=nil)
          @InternetBandwidthConfigSet = internetbandwidthconfigset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InternetBandwidthConfigSet'].nil?
            @InternetBandwidthConfigSet = []
            params['InternetBandwidthConfigSet'].each do |i|
              internetbandwidthconfig_tmp = InternetBandwidthConfig.new
              internetbandwidthconfig_tmp.deserialize(i)
              @InternetBandwidthConfigSet << internetbandwidthconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceTypeConfigs请求参数结构体
      class DescribeInstanceTypeConfigsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <li><strong>zone</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>可用区</strong>】进行过滤。可用区形如：ap-guangzhou-1。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：<a href="https://cloud.tencent.com/document/product/213/6091">可用区列表</a></p>
        # <li><strong>instance-family</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>实例机型系列</strong>】进行过滤。实例机型系列形如：S1、I1、M1等。具体取值参见[实例类型](https://cloud.tencent.com/document/product/213/11518)描述。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>instance-type</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>实例类型</strong>】进行过滤。实例类型形如：S5.12XLARGE128、S5.12XLARGE96等。具体取值参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # 每次请求的`Filters`的上限为10，`Filter.Values`的上限为1。
        # @type Filters: Array

        attr_accessor :Filters

        def initialize(filters=nil)
          @Filters = filters
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
        end
      end

      # DescribeInstanceTypeConfigs返回参数结构体
      class DescribeInstanceTypeConfigsResponse < TencentCloud::Common::AbstractModel
        # @param InstanceTypeConfigSet: 实例机型配置列表。
        # @type InstanceTypeConfigSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceTypeConfigSet, :RequestId

        def initialize(instancetypeconfigset=nil, requestid=nil)
          @InstanceTypeConfigSet = instancetypeconfigset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceTypeConfigSet'].nil?
            @InstanceTypeConfigSet = []
            params['InstanceTypeConfigSet'].each do |i|
              instancetypeconfig_tmp = InstanceTypeConfig.new
              instancetypeconfig_tmp.deserialize(i)
              @InstanceTypeConfigSet << instancetypeconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceVncUrl请求参数结构体
      class DescribeInstanceVncUrlRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 一个操作的实例ID。可通过[ DescribeInstances ](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceVncUrl返回参数结构体
      class DescribeInstanceVncUrlResponse < TencentCloud::Common::AbstractModel
        # @param InstanceVncUrl: 实例的管理终端地址。
        # @type InstanceVncUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceVncUrl, :RequestId

        def initialize(instancevncurl=nil, requestid=nil)
          @InstanceVncUrl = instancevncurl
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceVncUrl = params['InstanceVncUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesActionTimer请求参数结构体
      class DescribeInstancesActionTimerRequest < TencentCloud::Common::AbstractModel
        # @param ActionTimerIds: 定时任务ID列表。
        # @type ActionTimerIds: Array
        # @param InstanceIds: 按照一个或者多个实例ID查询。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。
        # @type InstanceIds: Array
        # @param TimerAction: 定时器动作，目前仅支持销毁一个值：TerminateInstances。
        # @type TimerAction: String
        # @param EndActionTime: 定时任务执行时间的结束范围，用于条件筛选，格式如2018-05-01 19:00:00。
        # @type EndActionTime: String
        # @param StartActionTime: 定时任务执行时间的开始范围，用于条件筛选，格式如2018-05-01 19:00:00。
        # @type StartActionTime: String
        # @param StatusList: 定时任务状态列表。<br><li>UNDO：未执行</li> <li>DOING：正在执行</li><li>DONE：执行完成。</li>
        # @type StatusList: Array

        attr_accessor :ActionTimerIds, :InstanceIds, :TimerAction, :EndActionTime, :StartActionTime, :StatusList

        def initialize(actiontimerids=nil, instanceids=nil, timeraction=nil, endactiontime=nil, startactiontime=nil, statuslist=nil)
          @ActionTimerIds = actiontimerids
          @InstanceIds = instanceids
          @TimerAction = timeraction
          @EndActionTime = endactiontime
          @StartActionTime = startactiontime
          @StatusList = statuslist
        end

        def deserialize(params)
          @ActionTimerIds = params['ActionTimerIds']
          @InstanceIds = params['InstanceIds']
          @TimerAction = params['TimerAction']
          @EndActionTime = params['EndActionTime']
          @StartActionTime = params['StartActionTime']
          @StatusList = params['StatusList']
        end
      end

      # DescribeInstancesActionTimer返回参数结构体
      class DescribeInstancesActionTimerResponse < TencentCloud::Common::AbstractModel
        # @param ActionTimers: 定时任务信息列表。
        # @type ActionTimers: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActionTimers, :RequestId

        def initialize(actiontimers=nil, requestid=nil)
          @ActionTimers = actiontimers
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ActionTimers'].nil?
            @ActionTimers = []
            params['ActionTimers'].each do |i|
              actiontimer_tmp = ActionTimer.new
              actiontimer_tmp.deserialize(i)
              @ActionTimers << actiontimer_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesAttributes请求参数结构体
      class DescribeInstancesAttributesRequest < TencentCloud::Common::AbstractModel
        # @param Attributes: 需要获取的实例属性。可选值：
        # UserData: 实例自定义数据
        # @type Attributes: Array
        # @param InstanceIds: 实例ID列表。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。
        # @type InstanceIds: Array

        attr_accessor :Attributes, :InstanceIds

        def initialize(attributes=nil, instanceids=nil)
          @Attributes = attributes
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @Attributes = params['Attributes']
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeInstancesAttributes返回参数结构体
      class DescribeInstancesAttributesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceSet: 指定的实例属性列表
        # @type InstanceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceSet, :RequestId

        def initialize(instanceset=nil, requestid=nil)
          @InstanceSet = instanceset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              instanceattribute_tmp = InstanceAttribute.new
              instanceattribute_tmp.deserialize(i)
              @InstanceSet << instanceattribute_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesModification请求参数结构体
      class DescribeInstancesModificationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待查询的实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。每次请求批量实例的上限为20。
        # @type InstanceIds: Array
        # @param Filters: <li><strong>status</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>配置规格状态</strong>】进行过滤。配置规格状态形如：SELL(表示实例可售卖)、UNAVAILABLE(表示实例不可用)。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # 每次请求的`Filters`的上限为10，`Filter.Values`的上限为2。
        # @type Filters: Array

        attr_accessor :InstanceIds, :Filters

        def initialize(instanceids=nil, filters=nil)
          @InstanceIds = instanceids
          @Filters = filters
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
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

      # DescribeInstancesModification返回参数结构体
      class DescribeInstancesModificationResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例调整的机型配置的数量。
        # @type TotalCount: Integer
        # @param InstanceTypeConfigStatusSet: 实例支持调整的机型配置列表。
        # @type InstanceTypeConfigStatusSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceTypeConfigStatusSet, :RequestId

        def initialize(totalcount=nil, instancetypeconfigstatusset=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceTypeConfigStatusSet = instancetypeconfigstatusset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceTypeConfigStatusSet'].nil?
            @InstanceTypeConfigStatusSet = []
            params['InstanceTypeConfigStatusSet'].each do |i|
              instancetypeconfigstatus_tmp = InstanceTypeConfigStatus.new
              instancetypeconfigstatus_tmp.deserialize(i)
              @InstanceTypeConfigStatusSet << instancetypeconfigstatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesOperationLimit请求参数结构体
      class DescribeInstancesOperationLimitRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 按照一个或者多个实例ID查询，可通过[DescribeInstances](https://cloud.tencent.com/document/api/213/15728)API返回值中的InstanceId获取。实例ID形如：ins-xxxxxxxx。（此参数的具体格式可参考API[简介](https://cloud.tencent.com/document/api/213/15688)的ids.N一节）。每次请求的实例的上限为100。
        # @type InstanceIds: Array
        # @param Operation: 实例操作。
        # <li> INSTANCE_DEGRADE：实例降配操作</li><li> INTERNET_CHARGE_TYPE_CHANGE：实例调整带宽付费模式操作</li>
        # @type Operation: String

        attr_accessor :InstanceIds, :Operation

        def initialize(instanceids=nil, operation=nil)
          @InstanceIds = instanceids
          @Operation = operation
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @Operation = params['Operation']
        end
      end

      # DescribeInstancesOperationLimit返回参数结构体
      class DescribeInstancesOperationLimitResponse < TencentCloud::Common::AbstractModel
        # @param InstanceOperationLimitSet: 该参数表示调整配置操作（降配）限制次数查询。
        # @type InstanceOperationLimitSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceOperationLimitSet, :RequestId

        def initialize(instanceoperationlimitset=nil, requestid=nil)
          @InstanceOperationLimitSet = instanceoperationlimitset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceOperationLimitSet'].nil?
            @InstanceOperationLimitSet = []
            params['InstanceOperationLimitSet'].each do |i|
              operationcountlimit_tmp = OperationCountLimit.new
              operationcountlimit_tmp.deserialize(i)
              @InstanceOperationLimitSet << operationcountlimit_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 按照一个或者多个实例ID查询。实例ID例如：`ins-xxxxxxxx`。（此参数的具体格式可参考API[简介](https://cloud.tencent.com/document/api/213/15688)的`ids.N`一节）。每次请求的实例的上限为100。参数不支持同时指定`InstanceIds`和`Filters`。
        # @type InstanceIds: Array
        # @param Filters: <li><strong>zone</strong></li> <p style="padding-left: 30px;">按照【<strong>可用区</strong>】进行过滤。可用区例如：ap-guangzhou-1。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：<a href="https://cloud.tencent.com/document/product/213/6091">可用区列表</a></p> <li><strong>project-id</strong></li> <p style="padding-left: 30px;">按照【<strong>项目ID</strong>】进行过滤，可通过调用[DescribeProjects](https://cloud.tencent.com/document/api/651/78725)查询已创建的项目列表或登录[控制台](https://console.cloud.tencent.com/cvm/index)进行查看；也可以调用[AddProject](https://cloud.tencent.com/document/api/651/81952)创建新的项目。项目ID例如：1002189。</p><p style="padding-left: 30px;">类型：Integer</p><p style="padding-left: 30px;">必选：否</p> <li><strong>host-id</strong></li> <p style="padding-left: 30px;">按照【<strong>[CDH](https://cloud.tencent.com/document/product/416) ID</strong>】进行过滤。[CDH](https://cloud.tencent.com/document/product/416) ID例如：host-xxxxxxxx。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>dedicated-cluster-id</strong></li> <p style="padding-left: 30px;">按照【<strong>[CDC](https://cloud.tencent.com/document/product/1346) ID</strong>】进行过滤。[CDC](https://cloud.tencent.com/document/product/1346) ID例如：cluster-xxxxxxx。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>vpc-id</strong></li> <p style="padding-left: 30px;">按照【<strong>VPC ID</strong>】进行过滤。VPC ID例如：vpc-xxxxxxxx。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>subnet-id</strong></li> <p style="padding-left: 30px;">按照【<strong>子网ID</strong>】进行过滤。子网ID例如：subnet-xxxxxxxx。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>instance-id</strong></li> <p style="padding-left: 30px;">按照【<strong>实例ID</strong>】进行过滤。实例ID例如：ins-xxxxxxxx。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>uuid</strong></li> <p style="padding-left: 30px;">按照【<strong>实例UUID</strong>】进行过滤。实例UUID例如：xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>security-group-id</strong></li> <p style="padding-left: 30px;">按照【<strong>安全组ID</strong>】进行过滤。安全组ID例如: sg-8jlk3f3r。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>instance-name</strong></li> <p style="padding-left: 30px;">按照【<strong>实例名称</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>instance-charge-type</strong></li> <p style="padding-left: 30px;">按照【<strong>实例计费模式</strong>】进行过滤。(PREPAID：表示预付费，即包年包月 | POSTPAID_BY_HOUR：表示后付费，即按量计费 | CDHPAID：表示[CDH](https://cloud.tencent.com/document/product/416)付费，即只对[CDH](https://cloud.tencent.com/document/product/416)计费，不对[CDH](https://cloud.tencent.com/document/product/416)上的实例计费。)</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>instance-state</strong></li> <p style="padding-left: 30px;">按照【<strong>实例状态</strong>】进行过滤。状态类型详见[实例状态表](https://cloud.tencent.com/document/api/213/15753#InstanceStatus)</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>private-ip-address</strong></li> <p style="padding-left: 30px;">按照【<strong>实例主网卡的内网IP</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>public-ip-address</strong></li> <p style="padding-left: 30px;">按照【<strong>实例主网卡的公网IP</strong>】进行过滤，包含实例创建时自动分配的IP和实例创建后手动绑定的弹性IP。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>ipv6-address</strong></li> <p style="padding-left: 30px;">按照【<strong>实例的IPv6地址</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>tag-key</strong></li> <p style="padding-left: 30px;">按照【<strong>标签键</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>tag-value</strong></li> <p style="padding-left: 30px;">按照【<strong>标签值</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>tag:tag-key</strong></li> <p style="padding-left: 30px;">按照【<strong>标签键值对</strong>】进行过滤。tag-key使用具体的标签键进行替换。使用请参考示例2。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><li><strong>creation-start-time</strong></li> <p style="padding-left: 30px;">按照【<strong>创建实例请求的起始时间</strong>】进行过滤。例如：2023-06-01 00:00:00。
        # </p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>creation-end-time</strong></li> <p style="padding-left: 30px;">按照【<strong>创建实例请求的截止时间</strong>】进行过滤。例如：2023-06-01 00:00:00。
        # </p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`InstanceIds`和`Filters`。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer

        attr_accessor :InstanceIds, :Filters, :Offset, :Limit

        def initialize(instanceids=nil, filters=nil, offset=nil, limit=nil)
          @InstanceIds = instanceids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
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
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param InstanceSet: 实例详细信息列表。
        # @type InstanceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceSet, :RequestId

        def initialize(totalcount=nil, instanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceSet = instanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              instance_tmp = Instance.new
              instance_tmp.deserialize(i)
              @InstanceSet << instance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesStatus请求参数结构体
      class DescribeInstancesStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 按照一个或者多个实例ID查询。实例ID形如：`ins-11112222`。此参数的具体格式可参考API[简介](https://cloud.tencent.com/document/api/213/15688)的`ids.N`一节）。每次请求的实例的上限为100。
        # @type InstanceIds: Array
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer

        attr_accessor :InstanceIds, :Offset, :Limit

        def initialize(instanceids=nil, offset=nil, limit=nil)
          @InstanceIds = instanceids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeInstancesStatus返回参数结构体
      class DescribeInstancesStatusResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例状态数量。
        # @type TotalCount: Integer
        # @param InstanceStatusSet: [实例状态](https://cloud.tencent.com/document/api/213/15753#InstanceStatus) 列表。
        # @type InstanceStatusSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceStatusSet, :RequestId

        def initialize(totalcount=nil, instancestatusset=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceStatusSet = instancestatusset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceStatusSet'].nil?
            @InstanceStatusSet = []
            params['InstanceStatusSet'].each do |i|
              instancestatus_tmp = InstanceStatus.new
              instancestatus_tmp.deserialize(i)
              @InstanceStatusSet << instancestatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInternetChargeTypeConfigs请求参数结构体
      class DescribeInternetChargeTypeConfigsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeInternetChargeTypeConfigs返回参数结构体
      class DescribeInternetChargeTypeConfigsResponse < TencentCloud::Common::AbstractModel
        # @param InternetChargeTypeConfigSet: 网络计费类型配置。
        # @type InternetChargeTypeConfigSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InternetChargeTypeConfigSet, :RequestId

        def initialize(internetchargetypeconfigset=nil, requestid=nil)
          @InternetChargeTypeConfigSet = internetchargetypeconfigset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InternetChargeTypeConfigSet'].nil?
            @InternetChargeTypeConfigSet = []
            params['InternetChargeTypeConfigSet'].each do |i|
              internetchargetypeconfig_tmp = InternetChargeTypeConfig.new
              internetchargetypeconfig_tmp.deserialize(i)
              @InternetChargeTypeConfigSet << internetchargetypeconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKeyPairs请求参数结构体
      class DescribeKeyPairsRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 密钥对ID，密钥对ID形如：`skey-11112222`（此接口支持同时传入多个ID进行过滤。此参数的具体格式可参考 API [简介](https://cloud.tencent.com/document/api/213/15688)的 `id.N` 一节）。参数不支持同时指定 `KeyIds` 和 `Filters`。密钥对ID可以通过登录[控制台](https://console.cloud.tencent.com/cvm/index)查询。
        # @type KeyIds: Array
        # @param Filters: 过滤条件。
        # <li> project-id - Integer - 是否必填：否 -（过滤条件）按照项目ID过滤。可以通过[项目列表](https://console.cloud.tencent.com/project)查询项目ID，或者调用接口 [DescribeProject](https://cloud.tencent.com/document/api/378/4400)，取返回信息中的projectId获取项目ID。</li>
        # <li> key-name - String - 是否必填：否 -（过滤条件）按照密钥对名称过滤。</li>
        # <li> tag-key - String - 是否必填：否 -（过滤条件）按照标签键过滤。</li>
        # <li> tag-value - String - 是否必填：否 -（过滤条件）按照标签值过滤。</li>
        # <li> tag:tag-key - String - 是否必填：否 -（过滤条件）按照标签键值对过滤。tag-key使用具体的标签键进行替换。</li>
        # 参数不支持同时指定 `KeyIds` 和 `Filters`。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于 `Offset` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于 `Limit` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer

        attr_accessor :KeyIds, :Filters, :Offset, :Limit

        def initialize(keyids=nil, filters=nil, offset=nil, limit=nil)
          @KeyIds = keyids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
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
        end
      end

      # DescribeKeyPairs返回参数结构体
      class DescribeKeyPairsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的密钥对数量。
        # @type TotalCount: Integer
        # @param KeyPairSet: 密钥对详细信息列表。
        # @type KeyPairSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :KeyPairSet, :RequestId

        def initialize(totalcount=nil, keypairset=nil, requestid=nil)
          @TotalCount = totalcount
          @KeyPairSet = keypairset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['KeyPairSet'].nil?
            @KeyPairSet = []
            params['KeyPairSet'].each do |i|
              keypair_tmp = KeyPair.new
              keypair_tmp.deserialize(i)
              @KeyPairSet << keypair_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLaunchTemplateVersions请求参数结构体
      class DescribeLaunchTemplateVersionsRequest < TencentCloud::Common::AbstractModel
        # @param LaunchTemplateId: 启动模板ID。
        # @type LaunchTemplateId: String
        # @param LaunchTemplateVersions: 实例启动模板列表。
        # @type LaunchTemplateVersions: Array
        # @param MinVersion: 通过范围指定版本时的最小版本号，默认为0。
        # @type MinVersion: Integer
        # @param MaxVersion: 过范围指定版本时的最大版本号，默认为30。
        # @type MaxVersion: Integer
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param DefaultVersion: 是否查询默认版本。该参数不可与LaunchTemplateVersions同时指定。
        # @type DefaultVersion: Boolean

        attr_accessor :LaunchTemplateId, :LaunchTemplateVersions, :MinVersion, :MaxVersion, :Offset, :Limit, :DefaultVersion

        def initialize(launchtemplateid=nil, launchtemplateversions=nil, minversion=nil, maxversion=nil, offset=nil, limit=nil, defaultversion=nil)
          @LaunchTemplateId = launchtemplateid
          @LaunchTemplateVersions = launchtemplateversions
          @MinVersion = minversion
          @MaxVersion = maxversion
          @Offset = offset
          @Limit = limit
          @DefaultVersion = defaultversion
        end

        def deserialize(params)
          @LaunchTemplateId = params['LaunchTemplateId']
          @LaunchTemplateVersions = params['LaunchTemplateVersions']
          @MinVersion = params['MinVersion']
          @MaxVersion = params['MaxVersion']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DefaultVersion = params['DefaultVersion']
        end
      end

      # DescribeLaunchTemplateVersions返回参数结构体
      class DescribeLaunchTemplateVersionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例启动模板总数。
        # @type TotalCount: Integer
        # @param LaunchTemplateVersionSet: 实例启动模板版本集合。
        # @type LaunchTemplateVersionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :LaunchTemplateVersionSet, :RequestId

        def initialize(totalcount=nil, launchtemplateversionset=nil, requestid=nil)
          @TotalCount = totalcount
          @LaunchTemplateVersionSet = launchtemplateversionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LaunchTemplateVersionSet'].nil?
            @LaunchTemplateVersionSet = []
            params['LaunchTemplateVersionSet'].each do |i|
              launchtemplateversioninfo_tmp = LaunchTemplateVersionInfo.new
              launchtemplateversioninfo_tmp.deserialize(i)
              @LaunchTemplateVersionSet << launchtemplateversioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLaunchTemplates请求参数结构体
      class DescribeLaunchTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param LaunchTemplateIds: 启动模板ID，一个或者多个启动模板ID。若未指定，则显示用户所有模板。
        # @type LaunchTemplateIds: Array
        # @param Filters: <li><strong>LaunchTemplateName</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>实例启动模板名称</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>tag-key</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>标签键</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>tag-value</strong></li> <p style="padding-left: 30px;">按照【<strong>标签值</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>tag:tag-key</strong></li> <p style="padding-left: 30px;">按照【<strong>标签键值对</strong>】进行过滤。tag-key使用具体的标签键进行替换。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`LaunchTemplateIds`和`Filters`。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer

        attr_accessor :LaunchTemplateIds, :Filters, :Offset, :Limit

        def initialize(launchtemplateids=nil, filters=nil, offset=nil, limit=nil)
          @LaunchTemplateIds = launchtemplateids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @LaunchTemplateIds = params['LaunchTemplateIds']
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
        end
      end

      # DescribeLaunchTemplates返回参数结构体
      class DescribeLaunchTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例模板数量。
        # @type TotalCount: Integer
        # @param LaunchTemplateSet: 实例详细信息列表。
        # @type LaunchTemplateSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :LaunchTemplateSet, :RequestId

        def initialize(totalcount=nil, launchtemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @LaunchTemplateSet = launchtemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LaunchTemplateSet'].nil?
            @LaunchTemplateSet = []
            params['LaunchTemplateSet'].each do |i|
              launchtemplateinfo_tmp = LaunchTemplateInfo.new
              launchtemplateinfo_tmp.deserialize(i)
              @LaunchTemplateSet << launchtemplateinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegions请求参数结构体
      class DescribeRegionsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRegions返回参数结构体
      class DescribeRegionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 地域数量。
        # @type TotalCount: Integer
        # @param RegionSet: 地域列表信息。
        # @type RegionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RegionSet, :RequestId

        def initialize(totalcount=nil, regionset=nil, requestid=nil)
          @TotalCount = totalcount
          @RegionSet = regionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RegionSet'].nil?
            @RegionSet = []
            params['RegionSet'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @RegionSet << regioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReservedInstancesConfigInfos请求参数结构体
      class DescribeReservedInstancesConfigInfosRequest < TencentCloud::Common::AbstractModel
        # @param Filters: zone
        # 按照预留实例计费可购买的可用区进行过滤。形如：ap-guangzhou-1。
        # 类型：String
        # 必选：否
        # 可选项：各地域可用区列表

        # product-description
        # 按照预留实例计费的平台描述（即操作系统）进行过滤。形如：linux。
        # 类型：String
        # 必选：否
        # 可选项：linux

        # duration
        # 按照预留实例计费有效期，即预留实例计费购买时长进行过滤。形如：31536000。
        # 类型：Integer
        # 计量单位：秒
        # 必选：否
        # 可选项：31536000 (1年)
        # @type Filters: Array

        attr_accessor :Filters

        def initialize(filters=nil)
          @Filters = filters
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
        end
      end

      # DescribeReservedInstancesConfigInfos返回参数结构体
      class DescribeReservedInstancesConfigInfosResponse < TencentCloud::Common::AbstractModel
        # @param ReservedInstanceConfigInfos: 预留实例静态配置信息列表。
        # @type ReservedInstanceConfigInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReservedInstanceConfigInfos, :RequestId

        def initialize(reservedinstanceconfiginfos=nil, requestid=nil)
          @ReservedInstanceConfigInfos = reservedinstanceconfiginfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ReservedInstanceConfigInfos'].nil?
            @ReservedInstanceConfigInfos = []
            params['ReservedInstanceConfigInfos'].each do |i|
              reservedinstanceconfiginfoitem_tmp = ReservedInstanceConfigInfoItem.new
              reservedinstanceconfiginfoitem_tmp.deserialize(i)
              @ReservedInstanceConfigInfos << reservedinstanceconfiginfoitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReservedInstancesOfferings请求参数结构体
      class DescribeReservedInstancesOfferingsRequest < TencentCloud::Common::AbstractModel
        # @param DryRun: 试运行, 默认为 false。
        # @type DryRun: Boolean
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param MaxDuration: 以最大有效期作为过滤参数。
        # 计量单位: 秒
        # 默认为 94608000。
        # @type MaxDuration: Integer
        # @param MinDuration: 以最小有效期作为过滤参数。
        # 计量单位: 秒
        # 默认为 2592000。
        # @type MinDuration: Integer
        # @param Filters: <li><strong>zone</strong></li>
        # <p style="padding-left: 30px;">按照预留实例计费可购买的【<strong>可用区</strong>】进行过滤。形如：ap-guangzhou-1。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：<a href="https://cloud.tencent.com/document/product/213/6091">可用区列表</a></p>
        # <li><strong>duration</strong></li>
        # <p style="padding-left: 30px;">按照预留实例计费【<strong>有效期</strong>】即预留实例计费购买时长进行过滤。形如：31536000。</p><p style="padding-left: 30px;">类型：Integer</p><p style="padding-left: 30px;">计量单位：秒</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：31536000 (1年) | 94608000（3年）</p>
        # <li><strong>instance-type</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>预留实例计费类型</strong>】进行过滤。形如：S3.MEDIUM4。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：<a href="https://cloud.tencent.com/document/product/213/11518">预留实例计费类型列表</a></p>
        # <li><strong>offering-type</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>付款类型</strong>】进行过滤。形如：All Upfront (预付全部费用)。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：All Upfront (预付全部费用)</p>
        # <li><strong>product-description</strong></li>
        # <p style="padding-left: 30px;">按照预留实例计费的【<strong>平台描述</strong>】（即操作系统）进行过滤。形如：linux。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：linux</p>
        # <li><strong>reserved-instances-offering-id</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>预留实例计费配置ID</strong>】进行过滤。形如：650c138f-ae7e-4750-952a-96841d6e9fc1。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。
        # @type Filters: Array

        attr_accessor :DryRun, :Offset, :Limit, :MaxDuration, :MinDuration, :Filters

        def initialize(dryrun=nil, offset=nil, limit=nil, maxduration=nil, minduration=nil, filters=nil)
          @DryRun = dryrun
          @Offset = offset
          @Limit = limit
          @MaxDuration = maxduration
          @MinDuration = minduration
          @Filters = filters
        end

        def deserialize(params)
          @DryRun = params['DryRun']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @MaxDuration = params['MaxDuration']
          @MinDuration = params['MinDuration']
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

      # DescribeReservedInstancesOfferings返回参数结构体
      class DescribeReservedInstancesOfferingsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的预留实例计费数量。
        # @type TotalCount: Integer
        # @param ReservedInstancesOfferingsSet: 符合条件的预留实例计费列表。
        # @type ReservedInstancesOfferingsSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ReservedInstancesOfferingsSet, :RequestId

        def initialize(totalcount=nil, reservedinstancesofferingsset=nil, requestid=nil)
          @TotalCount = totalcount
          @ReservedInstancesOfferingsSet = reservedinstancesofferingsset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ReservedInstancesOfferingsSet'].nil?
            @ReservedInstancesOfferingsSet = []
            params['ReservedInstancesOfferingsSet'].each do |i|
              reservedinstancesoffering_tmp = ReservedInstancesOffering.new
              reservedinstancesoffering_tmp.deserialize(i)
              @ReservedInstancesOfferingsSet << reservedinstancesoffering_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskInfo请求参数结构体
      class DescribeTaskInfoRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Offset: 偏移量。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Product: 按照指定的产品类型查询，支持取值：

        # - `CVM`：云服务器
        # - `CDH`：专用宿主机
        # - `CPM2.0`：裸金属云服务器

        # 未传入或为空时，默认查询全部产品类型。
        # @type Product: String
        # @param TaskStatus: 按照一个或多个任务状态ID进行过滤。
        # `TaskStatus`（任务状态ID）与任务状态中文名的对应关系如下：

        # - `1`：待授权
        # - `2`：处理中
        # - `3`：已结束
        # - `4`：已预约
        # - `5`：已取消
        # - `6`：已避免

        # 各任务状态的具体含义，可参考 [任务状态](https://cloud.tencent.com/document/product/213/67789#.E4.BB.BB.E5.8A.A1.E7.8A.B6.E6.80.81)。
        # @type TaskStatus: Array
        # @param TaskTypeIds: 按照一个或多个任务类型ID进行过滤。

        # `TaskTypeId`（任务类型ID）与任务类型中文名的对应关系如下：

        # - `101`：实例运行隐患
        # - `102`：实例运行异常
        # - `103`：实例硬盘异常
        # - `104`：实例网络连接异常
        # - `105`：实例运行预警
        # - `106`：实例硬盘预警
        # - `107`：实例维护升级

        # 各任务类型的具体含义，可参考 [维修任务分类](https://cloud.tencent.com/document/product/213/67789#.E7.BB.B4.E4.BF.AE.E4.BB.BB.E5.8A.A1.E5.88.86.E7.B1.BB)。
        # @type TaskTypeIds: Array
        # @param TaskIds: 按照一个或者多个任务ID查询。任务ID形如：`rep-xxxxxxxx`。
        # @type TaskIds: Array
        # @param InstanceIds: 按照一个或者多个实例ID查询。实例ID形如：`ins-xxxxxxxx`，可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。
        # @type InstanceIds: Array
        # @param Aliases: 按照一个或者多个实例名称查询。
        # @type Aliases: Array
        # @param StartDate: 时间查询区间的起始位置，会根据任务创建时间`CreateTime`进行过滤，格式为`YYYY-MM-DD hh:mm:ss`。未传入时默认为当天`00:00:00`。
        # @type StartDate: String
        # @param EndDate: 时间查询区间的终止位置，会根据任务创建时间`CreateTime`进行过滤，格式为`YYYY-MM-DD hh:mm:ss`。未传入时默认为当前时刻。
        # @type EndDate: String
        # @param OrderField: 指定返回维修任务列表的排序字段，目前支持：

        # - `CreateTime`：任务创建时间
        # - `AuthTime`：任务授权时间
        # - `EndTime`：任务结束时间

        # 未传入时或为空时，默认按`CreateTime`字段进行排序。
        # @type OrderField: String
        # @param Order: 排序方式，目前支持：

        # - `0`：升序（默认）
        # - `1`：降序

        # 未传入或为空时，默认按升序排序。
        # @type Order: Integer

        attr_accessor :Limit, :Offset, :Product, :TaskStatus, :TaskTypeIds, :TaskIds, :InstanceIds, :Aliases, :StartDate, :EndDate, :OrderField, :Order

        def initialize(limit=nil, offset=nil, product=nil, taskstatus=nil, tasktypeids=nil, taskids=nil, instanceids=nil, aliases=nil, startdate=nil, enddate=nil, orderfield=nil, order=nil)
          @Limit = limit
          @Offset = offset
          @Product = product
          @TaskStatus = taskstatus
          @TaskTypeIds = tasktypeids
          @TaskIds = taskids
          @InstanceIds = instanceids
          @Aliases = aliases
          @StartDate = startdate
          @EndDate = enddate
          @OrderField = orderfield
          @Order = order
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Product = params['Product']
          @TaskStatus = params['TaskStatus']
          @TaskTypeIds = params['TaskTypeIds']
          @TaskIds = params['TaskIds']
          @InstanceIds = params['InstanceIds']
          @Aliases = params['Aliases']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @OrderField = params['OrderField']
          @Order = params['Order']
        end
      end

      # DescribeTaskInfo返回参数结构体
      class DescribeTaskInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询返回的维修任务总数量。
        # @type TotalCount: Integer
        # @param RepairTaskInfoSet: 查询返回的维修任务列表。
        # @type RepairTaskInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RepairTaskInfoSet, :RequestId

        def initialize(totalcount=nil, repairtaskinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @RepairTaskInfoSet = repairtaskinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RepairTaskInfoSet'].nil?
            @RepairTaskInfoSet = []
            params['RepairTaskInfoSet'].each do |i|
              repairtaskinfo_tmp = RepairTaskInfo.new
              repairtaskinfo_tmp.deserialize(i)
              @RepairTaskInfoSet << repairtaskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZoneInstanceConfigInfos请求参数结构体
      class DescribeZoneInstanceConfigInfosRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <li><strong>zone</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>可用区</strong>】进行过滤。可用区形如：ap-guangzhou-1。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：<a href="https://cloud.tencent.com/document/product/213/6091">可用区列表</a></p>
        # <li><strong>instance-family</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>实例机型系列</strong>】进行过滤。实例机型系列形如：S1、I1、M1等。具体取值参见[实例类型](https://cloud.tencent.com/document/product/213/11518)描述。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>instance-type</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>实例机型</strong>】进行过滤。不同实例机型指定了不同的资源规格，具体取值可通过调用接口 [DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/product/213/15749) 来获得最新的规格表或参见[实例类型](https://cloud.tencent.com/document/product/213/11518)描述。若不指定该参数，则默认查询筛选条件下所有机型。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>instance-charge-type</strong></li>
        # <p style="padding-left: 30px;">按照【<strong>实例计费模式</strong>】进行过滤。(PREPAID：表示预付费，即包年包月 | POSTPAID_BY_HOUR：表示后付费，即按量计费  | CDHPAID：表示独享子机 | SPOTPAID：表示竞价付费 | CDCPAID：表示专用集群付费)</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>sort-keys</strong></li>
        # <p style="padding-left: 30px;">按关键字进行排序,格式为排序字段加排序方式，中间用冒号分隔。 例如： 按cpu数逆序排序 "cpu:desc", 按mem大小顺序排序 "mem:asc"</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # 每次请求的`Filters`的上限为10，`Filter.Values`的上限为100。
        # @type Filters: Array

        attr_accessor :Filters

        def initialize(filters=nil)
          @Filters = filters
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
        end
      end

      # DescribeZoneInstanceConfigInfos返回参数结构体
      class DescribeZoneInstanceConfigInfosResponse < TencentCloud::Common::AbstractModel
        # @param InstanceTypeQuotaSet: 可用区机型配置列表。
        # @type InstanceTypeQuotaSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceTypeQuotaSet, :RequestId

        def initialize(instancetypequotaset=nil, requestid=nil)
          @InstanceTypeQuotaSet = instancetypequotaset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceTypeQuotaSet'].nil?
            @InstanceTypeQuotaSet = []
            params['InstanceTypeQuotaSet'].each do |i|
              instancetypequotaitem_tmp = InstanceTypeQuotaItem.new
              instancetypequotaitem_tmp.deserialize(i)
              @InstanceTypeQuotaSet << instancetypequotaitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZones请求参数结构体
      class DescribeZonesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeZones返回参数结构体
      class DescribeZonesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 可用区数量。
        # @type TotalCount: Integer
        # @param ZoneSet: 可用区列表信息。
        # @type ZoneSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ZoneSet, :RequestId

        def initialize(totalcount=nil, zoneset=nil, requestid=nil)
          @TotalCount = totalcount
          @ZoneSet = zoneset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ZoneSet'].nil?
            @ZoneSet = []
            params['ZoneSet'].each do |i|
              zoneinfo_tmp = ZoneInfo.new
              zoneinfo_tmp.deserialize(i)
              @ZoneSet << zoneinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DisassociateInstancesKeyPairs请求参数结构体
      class DisassociateInstancesKeyPairsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID，每次请求批量实例的上限为100。<br>可以通过以下方式获取可用的实例ID：
        # <li>通过登录[控制台](https://console.cloud.tencent.com/cvm/index)查询实例ID。</li>
        # <li>通过调用接口 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) ，取返回信息中的 `InstanceId` 获取实例ID。</li>
        # @type InstanceIds: Array
        # @param KeyIds: 密钥对ID列表，列表长度上限为100。可以通过以下方式获取可用的密钥ID：
        # <li>通过登录[控制台](https://console.cloud.tencent.com/cvm/sshkey)查询密钥ID。</li>
        # <li>通过调用接口 [DescribeKeyPairs](https://cloud.tencent.com/document/api/213/15699) ，取返回信息中的 `KeyId` 获取密钥对ID。</li>
        # @type KeyIds: Array
        # @param ForceStop: 是否强制关机，默认值为 false。常规场景下，建议手动关机后解绑密钥。取值范围：
        # <li>true：先执行强制关机，再解绑密钥。</li>
        # <li>false：不执行强制关机，仅支持对已关机状态实例进行解绑操作。</li>
        # @type ForceStop: Boolean

        attr_accessor :InstanceIds, :KeyIds, :ForceStop

        def initialize(instanceids=nil, keyids=nil, forcestop=nil)
          @InstanceIds = instanceids
          @KeyIds = keyids
          @ForceStop = forcestop
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @KeyIds = params['KeyIds']
          @ForceStop = params['ForceStop']
        end
      end

      # DisassociateInstancesKeyPairs返回参数结构体
      class DisassociateInstancesKeyPairsResponse < TencentCloud::Common::AbstractModel
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

      # DisassociateSecurityGroups请求参数结构体
      class DisassociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupIds: 要解绑的`安全组ID`，类似sg-efil73jd，只支持解绑单个安全组。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`SecurityGroupIds`获取实例绑定的安全组。
        # @type SecurityGroupIds: Array
        # @param InstanceIds: 被解绑的`实例ID`，类似ins-lesecurk，支持指定多个实例，每次请求批量实例的上限为100。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。
        # @type InstanceIds: Array

        attr_accessor :SecurityGroupIds, :InstanceIds

        def initialize(securitygroupids=nil, instanceids=nil)
          @SecurityGroupIds = securitygroupids
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @SecurityGroupIds = params['SecurityGroupIds']
          @InstanceIds = params['InstanceIds']
        end
      end

      # DisassociateSecurityGroups返回参数结构体
      class DisassociateSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 容灾组信息
      class DisasterRecoverGroup < TencentCloud::Common::AbstractModel
        # @param DisasterRecoverGroupId: 分散置放群组id。
        # @type DisasterRecoverGroupId: String
        # @param Name: 分散置放群组名称，长度1-60个字符。
        # @type Name: String
        # @param Type: 分散置放群组类型，取值范围：<br>
        # <li>HOST：物理机<br></li>
        # <li>SW：交换机<br></li>
        # <li>RACK：机架</li>
        # @type Type: String
        # @param CvmQuotaTotal: 分散置放群组内最大容纳云服务器数量。
        # @type CvmQuotaTotal: Integer
        # @param CurrentNum: 分散置放群组内云服务器当前数量。
        # @type CurrentNum: Integer
        # @param InstanceIds: 分散置放群组内，云服务器id列表。
        # @type InstanceIds: Array
        # @param CreateTime: 分散置放群组创建时间。按照`ISO8601`标准表示，并且使用`UTC`时间。格式为：`YYYY-MM-DDThh:mm:ssZ`。
        # @type CreateTime: String
        # @param Affinity: 置放群组亲和度
        # @type Affinity: Integer
        # @param Tags: 置放群组关联的标签列表。
        # @type Tags: Array

        attr_accessor :DisasterRecoverGroupId, :Name, :Type, :CvmQuotaTotal, :CurrentNum, :InstanceIds, :CreateTime, :Affinity, :Tags

        def initialize(disasterrecovergroupid=nil, name=nil, type=nil, cvmquotatotal=nil, currentnum=nil, instanceids=nil, createtime=nil, affinity=nil, tags=nil)
          @DisasterRecoverGroupId = disasterrecovergroupid
          @Name = name
          @Type = type
          @CvmQuotaTotal = cvmquotatotal
          @CurrentNum = currentnum
          @InstanceIds = instanceids
          @CreateTime = createtime
          @Affinity = affinity
          @Tags = tags
        end

        def deserialize(params)
          @DisasterRecoverGroupId = params['DisasterRecoverGroupId']
          @Name = params['Name']
          @Type = params['Type']
          @CvmQuotaTotal = params['CvmQuotaTotal']
          @CurrentNum = params['CurrentNum']
          @InstanceIds = params['InstanceIds']
          @CreateTime = params['CreateTime']
          @Affinity = params['Affinity']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # 置放群组配置数据
      class DisasterRecoverGroupQuota < TencentCloud::Common::AbstractModel
        # @param GroupQuota: 可创建置放群组数量的上限。
        # @type GroupQuota: Integer
        # @param CurrentNum: 当前用户已经创建的置放群组数量。
        # @type CurrentNum: Integer
        # @param CvmInHostGroupQuota: 物理机类型容灾组内实例的配额数。
        # @type CvmInHostGroupQuota: Integer
        # @param CvmInSwitchGroupQuota: 交换机类型容灾组内实例的配额数。
        # @type CvmInSwitchGroupQuota: Integer
        # @param CvmInRackGroupQuota: 机架类型容灾组内实例的配额数。
        # @type CvmInRackGroupQuota: Integer

        attr_accessor :GroupQuota, :CurrentNum, :CvmInHostGroupQuota, :CvmInSwitchGroupQuota, :CvmInRackGroupQuota

        def initialize(groupquota=nil, currentnum=nil, cvminhostgroupquota=nil, cvminswitchgroupquota=nil, cvminrackgroupquota=nil)
          @GroupQuota = groupquota
          @CurrentNum = currentnum
          @CvmInHostGroupQuota = cvminhostgroupquota
          @CvmInSwitchGroupQuota = cvminswitchgroupquota
          @CvmInRackGroupQuota = cvminrackgroupquota
        end

        def deserialize(params)
          @GroupQuota = params['GroupQuota']
          @CurrentNum = params['CurrentNum']
          @CvmInHostGroupQuota = params['CvmInHostGroupQuota']
          @CvmInSwitchGroupQuota = params['CvmInSwitchGroupQuota']
          @CvmInRackGroupQuota = params['CvmInRackGroupQuota']
        end
      end

      # 描述了实例的增强服务启用情况与其设置，如云安全，云监控等实例 Agent
      class EnhancedService < TencentCloud::Common::AbstractModel
        # @param SecurityService: 开启云安全服务。若不指定该参数，则默认开启云安全服务。
        # @type SecurityService: :class:`Tencentcloud::Cvm.v20170312.models.RunSecurityServiceEnabled`
        # @param MonitorService: 开启云监控服务。若不指定该参数，则默认开启云监控服务。
        # @type MonitorService: :class:`Tencentcloud::Cvm.v20170312.models.RunMonitorServiceEnabled`
        # @param AutomationService: 开启云自动化助手服务（TencentCloud Automation Tools，TAT）。若不指定该参数，则公共镜像默认开启云自动化助手服务，其他镜像默认不开启云自动化助手服务。
        # @type AutomationService: :class:`Tencentcloud::Cvm.v20170312.models.RunAutomationServiceEnabled`

        attr_accessor :SecurityService, :MonitorService, :AutomationService

        def initialize(securityservice=nil, monitorservice=nil, automationservice=nil)
          @SecurityService = securityservice
          @MonitorService = monitorservice
          @AutomationService = automationservice
        end

        def deserialize(params)
          unless params['SecurityService'].nil?
            @SecurityService = RunSecurityServiceEnabled.new
            @SecurityService.deserialize(params['SecurityService'])
          end
          unless params['MonitorService'].nil?
            @MonitorService = RunMonitorServiceEnabled.new
            @MonitorService.deserialize(params['MonitorService'])
          end
          unless params['AutomationService'].nil?
            @AutomationService = RunAutomationServiceEnabled.new
            @AutomationService.deserialize(params['AutomationService'])
          end
        end
      end

      # EnterRescueMode请求参数结构体
      class EnterRescueModeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 需要进入救援模式的实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。
        # @type InstanceId: String
        # @param Password: 救援模式下系统密码。不同操作系统类型密码复杂度限制不一样，具体如下：<li>Linux实例密码必须8到30位，至少包括两项[a-z]，[A-Z]、[0-9] 和 [( ) \` ~ ! @ # $ % ^ & *  - + = | { } [ ] : ; ' , . ? / ]中的特殊符号。</li><li>Windows实例密码必须12到30位，至少包括三项[a-z]，[A-Z]，[0-9] 和 [( ) \` ~ ! @ # $ % ^ & * - + = | { } [ ] : ; ' , . ? /]中的特殊符号。</li>
        # @type Password: String
        # @param Username: 救援模式下系统用户名
        # @type Username: String
        # @param ForceStop: 是否强制关机。本参数已弃用，推荐使用StopType，不可以与参数StopType同时使用。
        # @type ForceStop: Boolean
        # @param StopType: 实例的关闭模式。取值范围：<br><li>SOFT_FIRST：表示在正常关闭失败后进行强制关闭</li><br><li>HARD：直接强制关闭</li><br><li>SOFT：仅软关机</li><br>默认取值：SOFT。
        # @type StopType: String

        attr_accessor :InstanceId, :Password, :Username, :ForceStop, :StopType
        extend Gem::Deprecate
        deprecate :ForceStop, :none, 2025, 7
        deprecate :ForceStop=, :none, 2025, 7

        def initialize(instanceid=nil, password=nil, username=nil, forcestop=nil, stoptype=nil)
          @InstanceId = instanceid
          @Password = password
          @Username = username
          @ForceStop = forcestop
          @StopType = stoptype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Password = params['Password']
          @Username = params['Username']
          @ForceStop = params['ForceStop']
          @StopType = params['StopType']
        end
      end

      # EnterRescueMode返回参数结构体
      class EnterRescueModeResponse < TencentCloud::Common::AbstractModel
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

      # ExitRescueMode请求参数结构体
      class ExitRescueModeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 退出救援模式的实例id。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # ExitRescueMode返回参数结构体
      class ExitRescueModeResponse < TencentCloud::Common::AbstractModel
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

      # ExportImages请求参数结构体
      class ExportImagesRequest < TencentCloud::Common::AbstractModel
        # @param BucketName: COS存储桶名称。
        # 可通过 [List Buckets](https://cloud.tencent.com/document/product/436/8291) 接口查询请求者名下的所有存储桶列表或特定地域下的存储桶列表。
        # @type BucketName: String
        # @param ImageIds: 镜像ID列表。调用 ExportImages 接口时，参数 ImageIds 和 SnapshotIds 为二选一必填参数，目前参数 SnapshotIds 暂未对外开放。
        # 可通过 [DescribeImages](https://cloud.tencent.com/document/api/213/15715) 接口返回值中的`ImageId`获取。
        # @type ImageIds: Array
        # @param ExportFormat: 镜像文件导出格式。取值范围：RAW，QCOW2，VHD，VMDK。默认为RAW
        # @type ExportFormat: String
        # @param FileNamePrefixList: 导出文件的名称前缀列表。
        # 默认导出文件无名称前缀。
        # @type FileNamePrefixList: Array
        # @param OnlyExportRootDisk: 是否只导出系统盘。
        # 默认值：false
        # @type OnlyExportRootDisk: Boolean
        # @param DryRun: 检测镜像是否支持导出。
        # 默认值：false
        # @type DryRun: Boolean
        # @param RoleName: 角色名称。默认为CVM_QcsRole，发起请求前请确认是否存在该角色，以及是否已正确配置COS写入权限。
        # @type RoleName: String

        attr_accessor :BucketName, :ImageIds, :ExportFormat, :FileNamePrefixList, :OnlyExportRootDisk, :DryRun, :RoleName

        def initialize(bucketname=nil, imageids=nil, exportformat=nil, filenameprefixlist=nil, onlyexportrootdisk=nil, dryrun=nil, rolename=nil)
          @BucketName = bucketname
          @ImageIds = imageids
          @ExportFormat = exportformat
          @FileNamePrefixList = filenameprefixlist
          @OnlyExportRootDisk = onlyexportrootdisk
          @DryRun = dryrun
          @RoleName = rolename
        end

        def deserialize(params)
          @BucketName = params['BucketName']
          @ImageIds = params['ImageIds']
          @ExportFormat = params['ExportFormat']
          @FileNamePrefixList = params['FileNamePrefixList']
          @OnlyExportRootDisk = params['OnlyExportRootDisk']
          @DryRun = params['DryRun']
          @RoleName = params['RoleName']
        end
      end

      # ExportImages返回参数结构体
      class ExportImagesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 导出镜像任务ID
        # @type TaskId: Integer
        # @param CosPaths: 导出镜像的COS文件名列表。其中，文件名格式如下。
        # * 系统盘：前缀名_镜像ID_system_快照ID.镜像格式
        # * 数据盘：前缀名_镜像ID_data_快照ID.镜像格式
        # @type CosPaths: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :CosPaths, :RequestId

        def initialize(taskid=nil, cospaths=nil, requestid=nil)
          @TaskId = taskid
          @CosPaths = cospaths
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @CosPaths = params['CosPaths']
          @RequestId = params['RequestId']
        end
      end

      # 扩展数据
      class Externals < TencentCloud::Common::AbstractModel
        # @param ReleaseAddress: 释放地址
        # @type ReleaseAddress: Boolean
        # @param UnsupportNetworks: 不支持的网络类型，取值范围：<br><li>BASIC：基础网络</li><li>VPC1.0：私有网络VPC1.0</li>
        # @type UnsupportNetworks: Array
        # @param StorageBlockAttr: HDD本地存储属性
        # @type StorageBlockAttr: :class:`Tencentcloud::Cvm.v20170312.models.StorageBlock`

        attr_accessor :ReleaseAddress, :UnsupportNetworks, :StorageBlockAttr

        def initialize(releaseaddress=nil, unsupportnetworks=nil, storageblockattr=nil)
          @ReleaseAddress = releaseaddress
          @UnsupportNetworks = unsupportnetworks
          @StorageBlockAttr = storageblockattr
        end

        def deserialize(params)
          @ReleaseAddress = params['ReleaseAddress']
          @UnsupportNetworks = params['UnsupportNetworks']
          unless params['StorageBlockAttr'].nil?
            @StorageBlockAttr = StorageBlock.new
            @StorageBlockAttr.deserialize(params['StorageBlockAttr'])
          end
        end
      end

      # >描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
      # > * 若存在多个`Filter`时，`Filter`间的关系为逻辑与（`AND`）关系。
      # > * 若同一个`Filter`存在多个`Values`，同一`Filter`下`Values`间的关系为逻辑或（`OR`）关系。
      # >
      # > 以[DescribeInstances](https://cloud.tencent.com/document/api/213/15728)接口的`Filter`为例。若我们需要查询可用区（`zone`）为广州一区 ***并且*** 实例计费模式（`instance-charge-type`）为包年包月 ***或者*** 按量计费的实例时，可如下实现：
      # ```
      # Filters.0.Name=zone
      # &Filters.0.Values.0=ap-guangzhou-1
      # &Filters.1.Name=instance-charge-type
      # &Filters.1.Values.0=PREPAID
      # &Filters.1.Values.1=POSTPAID_BY_HOUR
      # ```
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段。
        # @type Name: String
        # @param Values: 字段的过滤值。
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

      # 实例GPU信息
      class GPUInfo < TencentCloud::Common::AbstractModel
        # @param GPUCount: 实例GPU个数。值小于1代表VGPU类型，大于1代表GPU直通类型。
        # @type GPUCount: Float
        # @param GPUId: 实例GPU地址。
        # @type GPUId: Array
        # @param GPUType: 实例GPU类型。
        # @type GPUType: String

        attr_accessor :GPUCount, :GPUId, :GPUType

        def initialize(gpucount=nil, gpuid=nil, gputype=nil)
          @GPUCount = gpucount
          @GPUId = gpuid
          @GPUType = gputype
        end

        def deserialize(params)
          @GPUCount = params['GPUCount']
          @GPUId = params['GPUId']
          @GPUType = params['GPUType']
        end
      end

      # 专用宿主机实例详细信息
      class HostItem < TencentCloud::Common::AbstractModel
        # @param Placement: 专用宿主机实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        # @type Placement: :class:`Tencentcloud::Cvm.v20170312.models.Placement`
        # @param HostId: 专用宿主机实例ID
        # @type HostId: String
        # @param HostType: 专用宿主机实例类型
        # @type HostType: String
        # @param HostName: 专用宿主机实例名称
        # @type HostName: String
        # @param HostChargeType: 专用宿主机实例付费模式
        # @type HostChargeType: String
        # @param RenewFlag: 专用宿主机实例自动续费标记
        # @type RenewFlag: String
        # @param CreatedTime: 专用宿主机实例创建时间
        # @type CreatedTime: String
        # @param ExpiredTime: 专用宿主机实例过期时间
        # @type ExpiredTime: String
        # @param InstanceIds: 专用宿主机实例上已创建云子机的实例id列表
        # @type InstanceIds: Array
        # @param HostState: 专用宿主机实例状态
        # @type HostState: String
        # @param HostIp: 专用宿主机实例IP
        # @type HostIp: String
        # @param HostResource: 专用宿主机实例资源信息
        # @type HostResource: :class:`Tencentcloud::Cvm.v20170312.models.HostResource`
        # @param CageId: 专用宿主机所属的围笼ID。该字段仅对金融专区围笼内的专用宿主机有效。
        # @type CageId: String
        # @param Tags: 专用宿主机关联的标签列表。
        # @type Tags: Array

        attr_accessor :Placement, :HostId, :HostType, :HostName, :HostChargeType, :RenewFlag, :CreatedTime, :ExpiredTime, :InstanceIds, :HostState, :HostIp, :HostResource, :CageId, :Tags

        def initialize(placement=nil, hostid=nil, hosttype=nil, hostname=nil, hostchargetype=nil, renewflag=nil, createdtime=nil, expiredtime=nil, instanceids=nil, hoststate=nil, hostip=nil, hostresource=nil, cageid=nil, tags=nil)
          @Placement = placement
          @HostId = hostid
          @HostType = hosttype
          @HostName = hostname
          @HostChargeType = hostchargetype
          @RenewFlag = renewflag
          @CreatedTime = createdtime
          @ExpiredTime = expiredtime
          @InstanceIds = instanceids
          @HostState = hoststate
          @HostIp = hostip
          @HostResource = hostresource
          @CageId = cageid
          @Tags = tags
        end

        def deserialize(params)
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @HostId = params['HostId']
          @HostType = params['HostType']
          @HostName = params['HostName']
          @HostChargeType = params['HostChargeType']
          @RenewFlag = params['RenewFlag']
          @CreatedTime = params['CreatedTime']
          @ExpiredTime = params['ExpiredTime']
          @InstanceIds = params['InstanceIds']
          @HostState = params['HostState']
          @HostIp = params['HostIp']
          unless params['HostResource'].nil?
            @HostResource = HostResource.new
            @HostResource.deserialize(params['HostResource'])
          end
          @CageId = params['CageId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # cdh相关价格信息
      class HostPriceInfo < TencentCloud::Common::AbstractModel
        # @param HostPrice: 描述了cdh实例相关的价格信息
        # @type HostPrice: :class:`Tencentcloud::Cvm.v20170312.models.ItemPrice`

        attr_accessor :HostPrice

        def initialize(hostprice=nil)
          @HostPrice = hostprice
        end

        def deserialize(params)
          unless params['HostPrice'].nil?
            @HostPrice = ItemPrice.new
            @HostPrice.deserialize(params['HostPrice'])
          end
        end
      end

      # 专用宿主机实例的资源信息
      class HostResource < TencentCloud::Common::AbstractModel
        # @param CpuTotal: 专用宿主机实例总CPU核数
        # @type CpuTotal: Integer
        # @param CpuAvailable: 专用宿主机实例可用CPU核数
        # @type CpuAvailable: Integer
        # @param MemTotal: 专用宿主机实例总内存大小（单位为:GiB）
        # @type MemTotal: Float
        # @param MemAvailable: 专用宿主机实例可用内存大小（单位为:GiB）
        # @type MemAvailable: Float
        # @param DiskTotal: 专用宿主机实例总磁盘大小（单位为:GiB）
        # @type DiskTotal: Integer
        # @param DiskAvailable: 专用宿主机实例可用磁盘大小（单位为:GiB）
        # @type DiskAvailable: Integer
        # @param DiskType: 专用宿主机实例磁盘类型
        # @type DiskType: String
        # @param GpuTotal: 专用宿主机实例总GPU卡数
        # @type GpuTotal: Integer
        # @param GpuAvailable: 专用宿主机实例可用GPU卡数
        # @type GpuAvailable: Integer
        # @param ExclusiveOwner: CDH owner
        # @type ExclusiveOwner: String

        attr_accessor :CpuTotal, :CpuAvailable, :MemTotal, :MemAvailable, :DiskTotal, :DiskAvailable, :DiskType, :GpuTotal, :GpuAvailable, :ExclusiveOwner

        def initialize(cputotal=nil, cpuavailable=nil, memtotal=nil, memavailable=nil, disktotal=nil, diskavailable=nil, disktype=nil, gputotal=nil, gpuavailable=nil, exclusiveowner=nil)
          @CpuTotal = cputotal
          @CpuAvailable = cpuavailable
          @MemTotal = memtotal
          @MemAvailable = memavailable
          @DiskTotal = disktotal
          @DiskAvailable = diskavailable
          @DiskType = disktype
          @GpuTotal = gputotal
          @GpuAvailable = gpuavailable
          @ExclusiveOwner = exclusiveowner
        end

        def deserialize(params)
          @CpuTotal = params['CpuTotal']
          @CpuAvailable = params['CpuAvailable']
          @MemTotal = params['MemTotal']
          @MemAvailable = params['MemAvailable']
          @DiskTotal = params['DiskTotal']
          @DiskAvailable = params['DiskAvailable']
          @DiskType = params['DiskType']
          @GpuTotal = params['GpuTotal']
          @GpuAvailable = params['GpuAvailable']
          @ExclusiveOwner = params['ExclusiveOwner']
        end
      end

      # 高性能计算集群
      class HpcClusterInfo < TencentCloud::Common::AbstractModel
        # @param HpcClusterId: 高性能计算集群ID
        # @type HpcClusterId: String
        # @param Name: 高性能计算集群名
        # @type Name: String
        # @param Remark: 高性能计算集群备注
        # @type Remark: String
        # @param CvmQuotaTotal: 集群下设备容量
        # @type CvmQuotaTotal: Integer
        # @param Zone: 集群所在可用区
        # @type Zone: String
        # @param CurrentNum: 集群当前已有设备量
        # @type CurrentNum: Integer
        # @param CreateTime: 集群创建时间
        # @type CreateTime: String
        # @param InstanceIds: 集群内实例ID列表
        # @type InstanceIds: Array
        # @param HpcClusterType: 高性能计算集群类型。
        # @type HpcClusterType: String
        # @param HpcClusterBusinessId: 高性能计算集群对应的业务场景标识，当前只支持CDC。
        # @type HpcClusterBusinessId: String
        # @param HpcClusterNetMode: 高性能计算集群网络模式
        # @type HpcClusterNetMode: Integer
        # @param Tags: 高性能计算集群关联的标签列表
        # @type Tags: Array

        attr_accessor :HpcClusterId, :Name, :Remark, :CvmQuotaTotal, :Zone, :CurrentNum, :CreateTime, :InstanceIds, :HpcClusterType, :HpcClusterBusinessId, :HpcClusterNetMode, :Tags

        def initialize(hpcclusterid=nil, name=nil, remark=nil, cvmquotatotal=nil, zone=nil, currentnum=nil, createtime=nil, instanceids=nil, hpcclustertype=nil, hpcclusterbusinessid=nil, hpcclusternetmode=nil, tags=nil)
          @HpcClusterId = hpcclusterid
          @Name = name
          @Remark = remark
          @CvmQuotaTotal = cvmquotatotal
          @Zone = zone
          @CurrentNum = currentnum
          @CreateTime = createtime
          @InstanceIds = instanceids
          @HpcClusterType = hpcclustertype
          @HpcClusterBusinessId = hpcclusterbusinessid
          @HpcClusterNetMode = hpcclusternetmode
          @Tags = tags
        end

        def deserialize(params)
          @HpcClusterId = params['HpcClusterId']
          @Name = params['Name']
          @Remark = params['Remark']
          @CvmQuotaTotal = params['CvmQuotaTotal']
          @Zone = params['Zone']
          @CurrentNum = params['CurrentNum']
          @CreateTime = params['CreateTime']
          @InstanceIds = params['InstanceIds']
          @HpcClusterType = params['HpcClusterType']
          @HpcClusterBusinessId = params['HpcClusterBusinessId']
          @HpcClusterNetMode = params['HpcClusterNetMode']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # 一个关于镜像详细信息的结构体，主要包括镜像的主要状态与属性。
      class Image < TencentCloud::Common::AbstractModel
        # @param ImageId: 镜像ID
        # @type ImageId: String
        # @param OsName: 镜像操作系统
        # @type OsName: String
        # @param ImageType: 镜像类型。镜像类型返回值包括：
        # * `PUBLIC_IMAGE` 公共镜像
        # * `PRIVATE_IMAGE` 自定义镜像
        # * `SHARED_IMAGE` 共享镜像
        # @type ImageType: String
        # @param CreatedTime: 镜像创建时间。
        # 按照 ISO8601 标准表示，并且使用 UTC 时间，格式为：YYYY-MM-DDThh:mm:ssZ。
        # @type CreatedTime: String
        # @param ImageName: 镜像名称
        # @type ImageName: String
        # @param ImageDescription: 镜像描述
        # @type ImageDescription: String
        # @param ImageSize: 镜像大小，单位 GiB。
        # @type ImageSize: Integer
        # @param Architecture: 镜像架构。镜像架构返回值包括：
        # * `x86_64`
        # * `arm`
        # * `i386`
        # @type Architecture: String
        # @param ImageState: 镜像状态:
        # CREATING-创建中
        # NORMAL-正常
        # CREATEFAILED-创建失败
        # SYNCING-复制中
        # IMPORTING-导入中
        # IMPORTFAILED-导入失败
        # @type ImageState: String
        # @param Platform: 镜像来源平台，包括如TencentOS、 CentOS、 Windows、 Ubuntu、 Debian、Fedora等。
        # @type Platform: String
        # @param ImageCreator: 镜像创建者
        # @type ImageCreator: String
        # @param ImageSource: 镜像来源。镜像来源返回值包括：
        # * `OFFICIAL` 官方镜像
        # * `CREATE_IMAGE` 用户自建镜像
        # * `EXTERNAL_IMPORT` 用户外部导入镜像
        # @type ImageSource: String
        # @param SyncPercent: 同步百分比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SyncPercent: Integer
        # @param IsSupportCloudinit: 镜像是否支持cloud-init
        # @type IsSupportCloudinit: Boolean
        # @param SnapshotSet: 镜像关联的快照信息
        # @type SnapshotSet: Array
        # @param Tags: 镜像关联的标签列表。
        # @type Tags: Array
        # @param LicenseType: 镜像许可类型。镜像许可类型返回值包括：
        # * `TencentCloud` 腾讯云官方许可
        # * `BYOL` 用户自带许可
        # @type LicenseType: String
        # @param ImageFamily: 镜像族
        # @type ImageFamily: String
        # @param ImageDeprecated: 镜像是否废弃
        # @type ImageDeprecated: Boolean
        # @param CdcCacheStatus: CDC镜像缓存状态
        # @type CdcCacheStatus: String

        attr_accessor :ImageId, :OsName, :ImageType, :CreatedTime, :ImageName, :ImageDescription, :ImageSize, :Architecture, :ImageState, :Platform, :ImageCreator, :ImageSource, :SyncPercent, :IsSupportCloudinit, :SnapshotSet, :Tags, :LicenseType, :ImageFamily, :ImageDeprecated, :CdcCacheStatus

        def initialize(imageid=nil, osname=nil, imagetype=nil, createdtime=nil, imagename=nil, imagedescription=nil, imagesize=nil, architecture=nil, imagestate=nil, platform=nil, imagecreator=nil, imagesource=nil, syncpercent=nil, issupportcloudinit=nil, snapshotset=nil, tags=nil, licensetype=nil, imagefamily=nil, imagedeprecated=nil, cdccachestatus=nil)
          @ImageId = imageid
          @OsName = osname
          @ImageType = imagetype
          @CreatedTime = createdtime
          @ImageName = imagename
          @ImageDescription = imagedescription
          @ImageSize = imagesize
          @Architecture = architecture
          @ImageState = imagestate
          @Platform = platform
          @ImageCreator = imagecreator
          @ImageSource = imagesource
          @SyncPercent = syncpercent
          @IsSupportCloudinit = issupportcloudinit
          @SnapshotSet = snapshotset
          @Tags = tags
          @LicenseType = licensetype
          @ImageFamily = imagefamily
          @ImageDeprecated = imagedeprecated
          @CdcCacheStatus = cdccachestatus
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @OsName = params['OsName']
          @ImageType = params['ImageType']
          @CreatedTime = params['CreatedTime']
          @ImageName = params['ImageName']
          @ImageDescription = params['ImageDescription']
          @ImageSize = params['ImageSize']
          @Architecture = params['Architecture']
          @ImageState = params['ImageState']
          @Platform = params['Platform']
          @ImageCreator = params['ImageCreator']
          @ImageSource = params['ImageSource']
          @SyncPercent = params['SyncPercent']
          @IsSupportCloudinit = params['IsSupportCloudinit']
          unless params['SnapshotSet'].nil?
            @SnapshotSet = []
            params['SnapshotSet'].each do |i|
              snapshot_tmp = Snapshot.new
              snapshot_tmp.deserialize(i)
              @SnapshotSet << snapshot_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @LicenseType = params['LicenseType']
          @ImageFamily = params['ImageFamily']
          @ImageDeprecated = params['ImageDeprecated']
          @CdcCacheStatus = params['CdcCacheStatus']
        end
      end

      # 支持的操作系统类型，根据Windows和Linux分类。
      class ImageOsList < TencentCloud::Common::AbstractModel
        # @param Windows: 支持的Windows操作系统。
        # @type Windows: Array
        # @param Linux: 支持的Linux操作系统
        # @type Linux: Array

        attr_accessor :Windows, :Linux

        def initialize(windows=nil, linux=nil)
          @Windows = windows
          @Linux = linux
        end

        def deserialize(params)
          @Windows = params['Windows']
          @Linux = params['Linux']
        end
      end

      # 镜像配额
      class ImageQuota < TencentCloud::Common::AbstractModel
        # @param UsedQuota: 已使用配额
        # @type UsedQuota: Integer
        # @param TotalQuota: 总配额
        # @type TotalQuota: Integer

        attr_accessor :UsedQuota, :TotalQuota

        def initialize(usedquota=nil, totalquota=nil)
          @UsedQuota = usedquota
          @TotalQuota = totalquota
        end

        def deserialize(params)
          @UsedQuota = params['UsedQuota']
          @TotalQuota = params['TotalQuota']
        end
      end

      # 导入镜像的数据盘信息
      class ImportImageDataDisk < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 数据盘镜像 COS 链接
        # @type ImageUrl: String

        attr_accessor :ImageUrl

        def initialize(imageurl=nil)
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
        end
      end

      # ImportImage请求参数结构体
      class ImportImageRequest < TencentCloud::Common::AbstractModel
        # @param Architecture: 导入镜像的操作系统架构。
        # 取值范围包括：`x86_64` 、`i386`、`arm_64`
        # @type Architecture: String
        # @param OsType: 导入镜像的操作系统类型 。
        # 可通过 [DescribeImportImageOs](https://cloud.tencent.com/document/api/213/15718) 接口返回值中的`ImportImageOsListSupported`获取。
        # @type OsType: String
        # @param OsVersion: 导入镜像的操作系统版本。
        # 可通过 [DescribeImportImageOs](https://cloud.tencent.com/document/api/213/15718) 接口返回值中的`ImportImageOsVersionSet`获取。
        # @type OsVersion: String
        # @param ImageUrl: 导入镜像存放的cos地址
        # @type ImageUrl: String
        # @param ImageName: 镜像名称。
        # 最多支持 60 个字符。
        # @type ImageName: String
        # @param ImageDescription: 镜像描述。
        # 最多支持 256 个字符。
        # @type ImageDescription: String
        # @param DryRun: 只检查参数，不执行任务。
        # 默认值：false
        # @type DryRun: Boolean
        # @param Force: 是否强制导入，参考[强制导入镜像](https://cloud.tencent.com/document/product/213/12849)
        # 默认值：false
        # @type Force: Boolean
        # @param TagSpecification: 标签描述列表。通过指定该参数可以同时绑定标签到自定义镜像。
        # @type TagSpecification: Array
        # @param LicenseType: 导入镜像后，激活操作系统采用的许可证类型。
        # 默认值：TencentCloud
        # 取值范围：
        # TencentCloud: 腾讯云官方许可
        # BYOL: 自带许可（Bring Your Own License）
        # @type LicenseType: String
        # @param BootMode: 启动模式。
        # 取值范围：`Legacy BIOS`、`UEFI`
        # 默认值：Legacy BIOS
        # @type BootMode: String
        # @param ImageFamily:  镜像族
        # @type ImageFamily: String
        # @param ImportImageDataDiskList: 导入的数据盘列表
        # @type ImportImageDataDiskList: Array

        attr_accessor :Architecture, :OsType, :OsVersion, :ImageUrl, :ImageName, :ImageDescription, :DryRun, :Force, :TagSpecification, :LicenseType, :BootMode, :ImageFamily, :ImportImageDataDiskList

        def initialize(architecture=nil, ostype=nil, osversion=nil, imageurl=nil, imagename=nil, imagedescription=nil, dryrun=nil, force=nil, tagspecification=nil, licensetype=nil, bootmode=nil, imagefamily=nil, importimagedatadisklist=nil)
          @Architecture = architecture
          @OsType = ostype
          @OsVersion = osversion
          @ImageUrl = imageurl
          @ImageName = imagename
          @ImageDescription = imagedescription
          @DryRun = dryrun
          @Force = force
          @TagSpecification = tagspecification
          @LicenseType = licensetype
          @BootMode = bootmode
          @ImageFamily = imagefamily
          @ImportImageDataDiskList = importimagedatadisklist
        end

        def deserialize(params)
          @Architecture = params['Architecture']
          @OsType = params['OsType']
          @OsVersion = params['OsVersion']
          @ImageUrl = params['ImageUrl']
          @ImageName = params['ImageName']
          @ImageDescription = params['ImageDescription']
          @DryRun = params['DryRun']
          @Force = params['Force']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @TagSpecification << tagspecification_tmp
            end
          end
          @LicenseType = params['LicenseType']
          @BootMode = params['BootMode']
          @ImageFamily = params['ImageFamily']
          unless params['ImportImageDataDiskList'].nil?
            @ImportImageDataDiskList = []
            params['ImportImageDataDiskList'].each do |i|
              importimagedatadisk_tmp = ImportImageDataDisk.new
              importimagedatadisk_tmp.deserialize(i)
              @ImportImageDataDiskList << importimagedatadisk_tmp
            end
          end
        end
      end

      # ImportImage返回参数结构体
      class ImportImageResponse < TencentCloud::Common::AbstractModel
        # @param ImageId: 镜像 ID
        # @type ImageId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageId, :RequestId

        def initialize(imageid=nil, requestid=nil)
          @ImageId = imageid
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @RequestId = params['RequestId']
        end
      end

      # ImportInstancesActionTimer请求参数结构体
      class ImportInstancesActionTimerRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例id列表，可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。
        # @type InstanceIds: Array
        # @param ActionTimer: 定时器任务信息，目前仅支持定时销毁。
        # @type ActionTimer: :class:`Tencentcloud::Cvm.v20170312.models.ActionTimer`

        attr_accessor :InstanceIds, :ActionTimer

        def initialize(instanceids=nil, actiontimer=nil)
          @InstanceIds = instanceids
          @ActionTimer = actiontimer
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['ActionTimer'].nil?
            @ActionTimer = ActionTimer.new
            @ActionTimer.deserialize(params['ActionTimer'])
          end
        end
      end

      # ImportInstancesActionTimer返回参数结构体
      class ImportInstancesActionTimerResponse < TencentCloud::Common::AbstractModel
        # @param ActionTimerIds: 定时器id列表
        # @type ActionTimerIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActionTimerIds, :RequestId

        def initialize(actiontimerids=nil, requestid=nil)
          @ActionTimerIds = actiontimerids
          @RequestId = requestid
        end

        def deserialize(params)
          @ActionTimerIds = params['ActionTimerIds']
          @RequestId = params['RequestId']
        end
      end

      # ImportKeyPair请求参数结构体
      class ImportKeyPairRequest < TencentCloud::Common::AbstractModel
        # @param KeyName: 密钥对名称，可由数字，字母和下划线组成，长度不超过25个字符。
        # @type KeyName: String
        # @param ProjectId: 密钥对创建后所属的[项目](https://cloud.tencent.com/document/product/378/10861)ID。<br>可以通过以下方式获取项目ID：<li>通过[项目列表](https://console.cloud.tencent.com/project)查询项目ID。</li><li>通过调用接口 [DescribeProjects](https://cloud.tencent.com/document/api/651/78725)，取返回信息中的 `projectId ` 获取项目ID。</li>如果是默认项目，直接填0就可以。
        # @type ProjectId: Integer
        # @param PublicKey: 密钥对的公钥内容，`OpenSSH RSA` 格式。
        # @type PublicKey: String
        # @param TagSpecification: 标签描述列表。通过指定该参数可以同时绑定标签到密钥对。
        # @type TagSpecification: Array

        attr_accessor :KeyName, :ProjectId, :PublicKey, :TagSpecification

        def initialize(keyname=nil, projectid=nil, publickey=nil, tagspecification=nil)
          @KeyName = keyname
          @ProjectId = projectid
          @PublicKey = publickey
          @TagSpecification = tagspecification
        end

        def deserialize(params)
          @KeyName = params['KeyName']
          @ProjectId = params['ProjectId']
          @PublicKey = params['PublicKey']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @TagSpecification << tagspecification_tmp
            end
          end
        end
      end

      # ImportKeyPair返回参数结构体
      class ImportKeyPairResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: 密钥对ID。
        # @type KeyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :RequestId

        def initialize(keyid=nil, requestid=nil)
          @KeyId = keyid
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @RequestId = params['RequestId']
        end
      end

      # InquirePricePurchaseReservedInstancesOffering请求参数结构体
      class InquirePricePurchaseReservedInstancesOfferingRequest < TencentCloud::Common::AbstractModel
        # @param InstanceCount: 购买预留实例计费数量
        # @type InstanceCount: Integer
        # @param ReservedInstancesOfferingId: 预留实例计费配置ID
        # @type ReservedInstancesOfferingId: String
        # @param DryRun: 试运行
        # @type DryRun: Boolean
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。<br>更多详细信息请参阅：如何保证幂等性
        # @type ClientToken: String
        # @param ReservedInstanceName: 预留实例显示名称。<br><li>不指定实例显示名称则默认显示‘未命名’。</li><li>最多支持60个字符（包含模式串）。</li>
        # @type ReservedInstanceName: String

        attr_accessor :InstanceCount, :ReservedInstancesOfferingId, :DryRun, :ClientToken, :ReservedInstanceName

        def initialize(instancecount=nil, reservedinstancesofferingid=nil, dryrun=nil, clienttoken=nil, reservedinstancename=nil)
          @InstanceCount = instancecount
          @ReservedInstancesOfferingId = reservedinstancesofferingid
          @DryRun = dryrun
          @ClientToken = clienttoken
          @ReservedInstanceName = reservedinstancename
        end

        def deserialize(params)
          @InstanceCount = params['InstanceCount']
          @ReservedInstancesOfferingId = params['ReservedInstancesOfferingId']
          @DryRun = params['DryRun']
          @ClientToken = params['ClientToken']
          @ReservedInstanceName = params['ReservedInstanceName']
        end
      end

      # InquirePricePurchaseReservedInstancesOffering返回参数结构体
      class InquirePricePurchaseReservedInstancesOfferingResponse < TencentCloud::Common::AbstractModel
        # @param Price: 该参数表示对应配置预留实例的价格。
        # @type Price: :class:`Tencentcloud::Cvm.v20170312.models.ReservedInstancePrice`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = ReservedInstancePrice.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceModifyInstancesChargeType请求参数结构体
      class InquiryPriceModifyInstancesChargeTypeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。每次请求批量实例的上限为100。
        # @type InstanceIds: Array
        # @param InstanceChargeType: 修改后的实例[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月。</li><li>POSTPAID_BY_HOUR：后付费，即按量付费。</li>
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。<dx-alert infotype="explain" title="">若指定修改后实例的付费模式为预付费则该参数必传。</dx-alert>
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Cvm.v20170312.models.InstanceChargePrepaid`
        # @param ModifyPortableDataDisk: 是否同时切换弹性数据云盘计费模式。取值范围：<br><li>true：表示切换弹性数据云盘计费模式</li><li>false：表示不切换弹性数据云盘计费模式</li><br>默认取值：false。
        # @type ModifyPortableDataDisk: Boolean

        attr_accessor :InstanceIds, :InstanceChargeType, :InstanceChargePrepaid, :ModifyPortableDataDisk

        def initialize(instanceids=nil, instancechargetype=nil, instancechargeprepaid=nil, modifyportabledatadisk=nil)
          @InstanceIds = instanceids
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @ModifyPortableDataDisk = modifyportabledatadisk
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @ModifyPortableDataDisk = params['ModifyPortableDataDisk']
        end
      end

      # InquiryPriceModifyInstancesChargeType返回参数结构体
      class InquiryPriceModifyInstancesChargeTypeResponse < TencentCloud::Common::AbstractModel
        # @param Price: 该参数表示对应配置实例转换计费模式的价格。
        # @type Price: :class:`Tencentcloud::Cvm.v20170312.models.Price`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceRenewHosts请求参数结构体
      class InquiryPriceRenewHostsRequest < TencentCloud::Common::AbstractModel
        # @param HostIds: 一个或多个待操作的`CDH`实例`ID`。可通过[`DescribeHosts`](https://cloud.tencent.com/document/api/213/16474)接口返回值中的`HostId`获取。每次请求批量实例的上限为100。
        # @type HostIds: Array
        # @param HostChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的续费时长、是否设置自动续费等属性。
        # @type HostChargePrepaid: :class:`Tencentcloud::Cvm.v20170312.models.ChargePrepaid`
        # @param DryRun: 是否只预检此次请求。true：发送检查请求，不会创建实例。检查项包括是否填写了必需参数，请求格式，业务限制和云服务器库存。如果检查不通过，则返回对应错误码；如果检查通过，则返回RequestId.false（默认）：发送正常请求，通过检查后直接创建实例
        # @type DryRun: Boolean

        attr_accessor :HostIds, :HostChargePrepaid, :DryRun

        def initialize(hostids=nil, hostchargeprepaid=nil, dryrun=nil)
          @HostIds = hostids
          @HostChargePrepaid = hostchargeprepaid
          @DryRun = dryrun
        end

        def deserialize(params)
          @HostIds = params['HostIds']
          unless params['HostChargePrepaid'].nil?
            @HostChargePrepaid = ChargePrepaid.new
            @HostChargePrepaid.deserialize(params['HostChargePrepaid'])
          end
          @DryRun = params['DryRun']
        end
      end

      # InquiryPriceRenewHosts返回参数结构体
      class InquiryPriceRenewHostsResponse < TencentCloud::Common::AbstractModel
        # @param Price: CDH实例续费价格信息
        # @type Price: :class:`Tencentcloud::Cvm.v20170312.models.HostPriceInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = HostPriceInfo.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceRenewInstances请求参数结构体
      class InquiryPriceRenewInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。每次请求批量实例的上限为100。
        # @type InstanceIds: Array
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的续费时长、是否设置自动续费等属性。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Cvm.v20170312.models.InstanceChargePrepaid`
        # @param DryRun: 试运行，测试使用，不执行具体逻辑。取值范围：<br><li>true：跳过执行逻辑</li><li>false：执行逻辑<br><br>默认取值：false。</li>
        # @type DryRun: Boolean
        # @param RenewPortableDataDisk: 是否续费弹性数据盘。取值范围：<br><li>true：表示续费包年包月实例同时续费其挂载的弹性数据盘</li><li>false：表示续费包年包月实例同时不再续费其挂载的弹性数据盘</li><br>默认取值：true。
        # @type RenewPortableDataDisk: Boolean

        attr_accessor :InstanceIds, :InstanceChargePrepaid, :DryRun, :RenewPortableDataDisk

        def initialize(instanceids=nil, instancechargeprepaid=nil, dryrun=nil, renewportabledatadisk=nil)
          @InstanceIds = instanceids
          @InstanceChargePrepaid = instancechargeprepaid
          @DryRun = dryrun
          @RenewPortableDataDisk = renewportabledatadisk
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @DryRun = params['DryRun']
          @RenewPortableDataDisk = params['RenewPortableDataDisk']
        end
      end

      # InquiryPriceRenewInstances返回参数结构体
      class InquiryPriceRenewInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Price: 该参数表示对应配置实例的价格。
        # @type Price: :class:`Tencentcloud::Cvm.v20170312.models.Price`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceResetInstance请求参数结构体
      class InquiryPriceResetInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) API返回值中的`InstanceId`获取。
        # @type InstanceId: String
        # @param ImageId: 指定有效的[镜像](/document/product/213/4940)ID，格式形如`img-xxx`。镜像类型分为四种：<br/><li>公共镜像</li><li>自定义镜像</li><li>共享镜像</li><li>服务市场镜像</li><br/>可通过以下方式获取可用的镜像ID：<br/><li>`公共镜像`、`自定义镜像`、`共享镜像`的镜像ID可通过登录[控制台](https://console.cloud.tencent.com/cvm/image?rid=1&imageType=PUBLIC_IMAGE)查询；`服务镜像市场`的镜像ID可通过[云市场](https://market.cloud.tencent.com/list)查询。</li><li>通过调用接口 [DescribeImages](https://cloud.tencent.com/document/api/213/15715) ，取返回信息中的`ImageId`字段。</li>
        # @type ImageId: String
        # @param SystemDisk: 实例系统盘配置信息。系统盘为云盘的实例可以通过该参数指定重装后的系统盘大小来实现对系统盘的扩容操作，若不指定则默认系统盘大小保持不变。系统盘大小只支持扩容不支持缩容；重装只支持修改系统盘的大小，不能修改系统盘的类型。
        # @type SystemDisk: :class:`Tencentcloud::Cvm.v20170312.models.SystemDisk`
        # @param LoginSettings: 实例登录设置。通过该参数可以设置实例的登录方式密码、密钥或保持镜像的原始登录设置。默认情况下会随机生成密码，并以站内信方式知会到用户。
        # @type LoginSettings: :class:`Tencentcloud::Cvm.v20170312.models.LoginSettings`
        # @param EnhancedService: 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认开启云监控、云安全服务。
        # @type EnhancedService: :class:`Tencentcloud::Cvm.v20170312.models.EnhancedService`
        # @param UserData: 提供给实例使用的用户数据，需要以 base64 方式编码，支持的最大数据大小为 16KB。关于获取此参数的详细介绍，请参阅[Windows](https://cloud.tencent.com/document/product/213/17526)和[Linux](https://cloud.tencent.com/document/product/213/17525)启动时运行命令。
        # @type UserData: String

        attr_accessor :InstanceId, :ImageId, :SystemDisk, :LoginSettings, :EnhancedService, :UserData

        def initialize(instanceid=nil, imageid=nil, systemdisk=nil, loginsettings=nil, enhancedservice=nil, userdata=nil)
          @InstanceId = instanceid
          @ImageId = imageid
          @SystemDisk = systemdisk
          @LoginSettings = loginsettings
          @EnhancedService = enhancedservice
          @UserData = userdata
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ImageId = params['ImageId']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          @UserData = params['UserData']
        end
      end

      # InquiryPriceResetInstance返回参数结构体
      class InquiryPriceResetInstanceResponse < TencentCloud::Common::AbstractModel
        # @param Price: 该参数表示重装成对应配置实例的价格。
        # @type Price: :class:`Tencentcloud::Cvm.v20170312.models.Price`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceResetInstancesInternetMaxBandwidth请求参数结构体
      class InquiryPriceResetInstancesInternetMaxBandwidthRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。每次请求批量实例的上限为100。当调整 `BANDWIDTH_PREPAID` 和 `BANDWIDTH_POSTPAID_BY_HOUR` 计费方式的带宽时，只支持一个实例。
        # @type InstanceIds: Array
        # @param InternetAccessible: 公网出带宽配置。不同机型带宽上限范围不一致，具体限制详见带宽限制对账表。暂时只支持`InternetMaxBandwidthOut`参数。
        # @type InternetAccessible: :class:`Tencentcloud::Cvm.v20170312.models.InternetAccessible`
        # @param StartTime: 带宽生效的起始时间。格式：`YYYY-MM-DD`，例如：`2016-10-30`。起始时间不能早于当前时间。如果起始时间是今天则新设置的带宽立即生效。该参数只对包年包月带宽有效，其他模式带宽不支持该参数，否则接口会以相应错误码返回。
        # @type StartTime: String
        # @param EndTime: 带宽生效的终止时间。格式：`YYYY-MM-DD`，例如：`2016-10-30`。新设置的带宽的有效期包含终止时间此日期。终止时间不能晚于包年包月实例的到期时间。实例的到期时间可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`ExpiredTime`获取。该参数只对包年包月带宽有效，其他模式带宽不支持该参数，否则接口会以相应错误码返回。
        # @type EndTime: String

        attr_accessor :InstanceIds, :InternetAccessible, :StartTime, :EndTime

        def initialize(instanceids=nil, internetaccessible=nil, starttime=nil, endtime=nil)
          @InstanceIds = instanceids
          @InternetAccessible = internetaccessible
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # InquiryPriceResetInstancesInternetMaxBandwidth返回参数结构体
      class InquiryPriceResetInstancesInternetMaxBandwidthResponse < TencentCloud::Common::AbstractModel
        # @param Price: 该参数表示带宽调整为对应大小之后的价格。
        # @type Price: :class:`Tencentcloud::Cvm.v20170312.models.Price`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceResetInstancesType请求参数结构体
      class InquiryPriceResetInstancesTypeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。本接口每次请求批量实例的上限为1。
        # @type InstanceIds: Array
        # @param InstanceType: 实例机型。不同实例机型指定了不同的资源规格，具体取值可参见附表[实例资源规格](https://cloud.tencent.com/document/product/213/11518)对照表，也可以调用查询[实例资源规格列表](https://cloud.tencent.com/document/product/213/15749)接口获得最新的规格表。
        # @type InstanceType: String

        attr_accessor :InstanceIds, :InstanceType

        def initialize(instanceids=nil, instancetype=nil)
          @InstanceIds = instanceids
          @InstanceType = instancetype
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @InstanceType = params['InstanceType']
        end
      end

      # InquiryPriceResetInstancesType返回参数结构体
      class InquiryPriceResetInstancesTypeResponse < TencentCloud::Common::AbstractModel
        # @param Price: 该参数表示调整成对应机型实例的价格。
        # @type Price: :class:`Tencentcloud::Cvm.v20170312.models.Price`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceResizeInstanceDisks请求参数结构体
      class InquiryPriceResizeInstanceDisksRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待操作的实例ID。可通过[ DescribeInstances ](https://cloud.tencent.com/document/api/213/15728)接口返回值中的`InstanceId`获取。
        # @type InstanceId: String
        # @param DataDisks: 待扩容的数据盘配置信息。只支持扩容非弹性数据盘[ DescribeDisks ](https://cloud.tencent.com/document/api/362/16315)接口返回值中的`Portable`为`false`表示非弹性）。数据盘容量单位：GB。最小扩容步长：10G。关于数据盘类型的选择请参考硬盘产品简介。可选数据盘类型受到实例类型`InstanceType`限制。另外允许扩容的最大容量也因数据盘类型的不同而有所差异。
        # <dx-alert infotype="explain" title="">您必须指定参数DataDisks与SystemDisk的其中一个，但不能同时指定。</dx-alert>
        # @type DataDisks: Array
        # @param ForceStop: 是否对运行中的实例选择强制关机。建议对运行中的实例先手动关机，然后再重置用户密码。取值范围：<br><li>true：表示在正常关机失败后进行强制关机</li><br><li>false：表示在正常关机失败后不进行强制关机</li><br>默认取值：false。<br><br>强制关机的效果等同于关闭物理计算机的电源开关。强制关机可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常关机时使用。
        # @type ForceStop: Boolean
        # @param SystemDisk: 待扩容的系统盘配置信息。只支持扩容云盘。
        # <dx-alert infotype="explain" title="">您必须指定参数DataDisks与SystemDisk的其中一个，但不能同时指定。</dx-alert>
        # @type SystemDisk: :class:`Tencentcloud::Cvm.v20170312.models.SystemDisk`
        # @param ResizeOnline: 是否在线扩容
        # @type ResizeOnline: Boolean

        attr_accessor :InstanceId, :DataDisks, :ForceStop, :SystemDisk, :ResizeOnline

        def initialize(instanceid=nil, datadisks=nil, forcestop=nil, systemdisk=nil, resizeonline=nil)
          @InstanceId = instanceid
          @DataDisks = datadisks
          @ForceStop = forcestop
          @SystemDisk = systemdisk
          @ResizeOnline = resizeonline
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          @ForceStop = params['ForceStop']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          @ResizeOnline = params['ResizeOnline']
        end
      end

      # InquiryPriceResizeInstanceDisks返回参数结构体
      class InquiryPriceResizeInstanceDisksResponse < TencentCloud::Common::AbstractModel
        # @param Price: 该参数表示磁盘扩容成对应配置的价格。
        # @type Price: :class:`Tencentcloud::Cvm.v20170312.models.Price`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceRunInstances请求参数结构体
      class InquiryPriceRunInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        #  <b>注：如果您不指定LaunchTemplate参数，则Placement为必选参数。若同时传递Placement和LaunchTemplate，则默认覆盖LaunchTemplate中对应的Placement的值。</b>
        # @type Placement: :class:`Tencentcloud::Cvm.v20170312.models.Placement`
        # @param ImageId: 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-xxx`。镜像类型分为四种：<br/><li>公共镜像</li><li>自定义镜像</li><li>共享镜像</li><li>服务市场镜像</li><br/>可通过以下方式获取可用的镜像ID：<br/><li>`公共镜像`、`自定义镜像`、`共享镜像`的镜像ID可通过登录[控制台](https://console.cloud.tencent.com/cvm/image?rid=1&imageType=PUBLIC_IMAGE)查询；`服务镜像市场`的镜像ID可通过[云市场](https://market.cloud.tencent.com/list)查询。</li><li>通过调用接口 [DescribeImages](https://cloud.tencent.com/document/api/213/15715) ，取返回信息中的`ImageId`字段。</li>
        #  <b>注：如果您不指定LaunchTemplate参数，则ImageId为必选参数。若同时传递ImageId和LaunchTemplate，则默认覆盖LaunchTemplate中对应的ImageId的值。</b>
        # @type ImageId: String
        # @param InstanceChargeType: 实例[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月</li><br><li>POSTPAID_BY_HOUR：按小时后付费</li><br><li>SPOTPAID：竞价付费</li><br>默认值：POSTPAID_BY_HOUR。
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Cvm.v20170312.models.InstanceChargePrepaid`
        # @param InstanceType: 实例机型。不同实例机型指定了不同的资源规格。
        # <br><li>对于付费模式为PREPAID或POSTPAID_BY_HOUR的实例创建，具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。若不指定该参数，则系统将根据当前地域的资源售卖情况动态指定默认机型。</li><br><li>对于付费模式为CDHPAID的实例创建，该参数以"CDH_"为前缀，根据CPU和内存配置生成，具体形式为：CDH_XCXG，例如对于创建CPU为1核，内存为1G大小的专用宿主机的实例，该参数应该为CDH_1C1G。</li>
        # @type InstanceType: String
        # @param SystemDisk: 实例系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: :class:`Tencentcloud::Cvm.v20170312.models.SystemDisk`
        # @param DataDisks: 实例数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        # @type DataDisks: Array
        # @param VirtualPrivateCloud: 私有网络相关信息配置。通过该参数可以指定私有网络的ID，子网ID等信息。若不指定该参数，则默认使用基础网络。若在此参数中指定了私有网络IP，那么InstanceCount参数只能为1。
        # @type VirtualPrivateCloud: :class:`Tencentcloud::Cvm.v20170312.models.VirtualPrivateCloud`
        # @param InternetAccessible: 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        # @type InternetAccessible: :class:`Tencentcloud::Cvm.v20170312.models.InternetAccessible`
        # @param InstanceCount: 购买实例数量。取值范围：[1，100]。默认取值：1。指定购买实例的数量不能超过用户所能购买的剩余配额数量，具体配额相关限制详见[CVM实例购买限制](https://cloud.tencent.com/document/product/213/2664)。
        # @type InstanceCount: Integer
        # @param InstanceName: 实例显示名称。<br><li>不指定实例显示名称则默认显示‘未命名’。</li><li>购买多台实例，如果指定模式串`{R:x}`，表示生成数字`[x, x+n-1]`，其中`n`表示购买实例的数量，例如`server_{R:3}`，购买1台时，实例显示名称为`server_3`；购买2台时，实例显示名称分别为`server_3`，`server_4`。支持指定多个模式串`{R:x}`。</li><li>购买多台实例，如果不指定模式串，则在实例显示名称添加后缀`1、2...n`，其中`n`表示购买实例的数量，例如`server_`，购买2台时，实例显示名称分别为`server_1`，`server_2`。</li><li>最多支持128个字符（包含模式串）。</li>
        # @type InstanceName: String
        # @param LoginSettings: 实例登录设置。通过该参数可以设置实例的登录方式密码、密钥或保持镜像的原始登录设置。默认情况下会随机生成密码，并以站内信方式知会到用户。
        # @type LoginSettings: :class:`Tencentcloud::Cvm.v20170312.models.LoginSettings`
        # @param SecurityGroupIds: 实例所属安全组。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的 `SecurityGroupId` 字段来获取。若不指定该参数，则绑定指定项目下的默认安全组，如默认安全组不存在则将自动创建。
        # @type SecurityGroupIds: Array
        # @param EnhancedService: 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认开启云监控、云安全服务。
        # @type EnhancedService: :class:`Tencentcloud::Cvm.v20170312.models.EnhancedService`
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # @type ClientToken: String
        # @param HostName: 云服务器的主机名。<br><li>点号（.）和短横线（-）不能作为 HostName 的首尾字符，不能连续使用。</li><br><li>Windows 实例：主机名字符长度为[2, 15]，允许字母（不限制大小写）、数字和短横线（-）组成，不支持点号（.），不能全是数字。</li><br><li>其他类型（Linux 等）实例：主机名字符长度为[2, 30]，允许支持多个点号，点之间为一段，每段允许字母（不限制大小写）、数字和短横线（-）组成。</li>
        # @type HostName: String
        # @param TagSpecification: 标签描述列表。通过指定该参数可以同时绑定标签到相应的资源实例，当前仅支持绑定标签到云服务器实例。
        # @type TagSpecification: Array
        # @param InstanceMarketOptions: 实例的市场相关选项，如竞价实例相关参数
        # @type InstanceMarketOptions: :class:`Tencentcloud::Cvm.v20170312.models.InstanceMarketOptionsRequest`
        # @param Metadata: 自定义metadata，支持创建 CVM 时添加自定义元数据键值对。

        # **注：内测中**。
        # @type Metadata: :class:`Tencentcloud::Cvm.v20170312.models.Metadata`
        # @param HpcClusterId: 高性能计算集群ID。
        # @type HpcClusterId: String
        # @param CpuTopology: 描述了实例CPU拓扑结构的相关信息。若不指定该参数，则按系统资源情况决定。
        # @type CpuTopology: :class:`Tencentcloud::Cvm.v20170312.models.CpuTopology`
        # @param LaunchTemplate: 实例启动模板。
        # @type LaunchTemplate: :class:`Tencentcloud::Cvm.v20170312.models.LaunchTemplate`

        attr_accessor :Placement, :ImageId, :InstanceChargeType, :InstanceChargePrepaid, :InstanceType, :SystemDisk, :DataDisks, :VirtualPrivateCloud, :InternetAccessible, :InstanceCount, :InstanceName, :LoginSettings, :SecurityGroupIds, :EnhancedService, :ClientToken, :HostName, :TagSpecification, :InstanceMarketOptions, :Metadata, :HpcClusterId, :CpuTopology, :LaunchTemplate

        def initialize(placement=nil, imageid=nil, instancechargetype=nil, instancechargeprepaid=nil, instancetype=nil, systemdisk=nil, datadisks=nil, virtualprivatecloud=nil, internetaccessible=nil, instancecount=nil, instancename=nil, loginsettings=nil, securitygroupids=nil, enhancedservice=nil, clienttoken=nil, hostname=nil, tagspecification=nil, instancemarketoptions=nil, metadata=nil, hpcclusterid=nil, cputopology=nil, launchtemplate=nil)
          @Placement = placement
          @ImageId = imageid
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @InstanceType = instancetype
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @VirtualPrivateCloud = virtualprivatecloud
          @InternetAccessible = internetaccessible
          @InstanceCount = instancecount
          @InstanceName = instancename
          @LoginSettings = loginsettings
          @SecurityGroupIds = securitygroupids
          @EnhancedService = enhancedservice
          @ClientToken = clienttoken
          @HostName = hostname
          @TagSpecification = tagspecification
          @InstanceMarketOptions = instancemarketoptions
          @Metadata = metadata
          @HpcClusterId = hpcclusterid
          @CpuTopology = cputopology
          @LaunchTemplate = launchtemplate
        end

        def deserialize(params)
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @ImageId = params['ImageId']
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @InstanceType = params['InstanceType']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          unless params['VirtualPrivateCloud'].nil?
            @VirtualPrivateCloud = VirtualPrivateCloud.new
            @VirtualPrivateCloud.deserialize(params['VirtualPrivateCloud'])
          end
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @InstanceCount = params['InstanceCount']
          @InstanceName = params['InstanceName']
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          @ClientToken = params['ClientToken']
          @HostName = params['HostName']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @TagSpecification << tagspecification_tmp
            end
          end
          unless params['InstanceMarketOptions'].nil?
            @InstanceMarketOptions = InstanceMarketOptionsRequest.new
            @InstanceMarketOptions.deserialize(params['InstanceMarketOptions'])
          end
          unless params['Metadata'].nil?
            @Metadata = Metadata.new
            @Metadata.deserialize(params['Metadata'])
          end
          @HpcClusterId = params['HpcClusterId']
          unless params['CpuTopology'].nil?
            @CpuTopology = CpuTopology.new
            @CpuTopology.deserialize(params['CpuTopology'])
          end
          unless params['LaunchTemplate'].nil?
            @LaunchTemplate = LaunchTemplate.new
            @LaunchTemplate.deserialize(params['LaunchTemplate'])
          end
        end
      end

      # InquiryPriceRunInstances返回参数结构体
      class InquiryPriceRunInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Price: 该参数表示对应配置实例的价格。
        # @type Price: :class:`Tencentcloud::Cvm.v20170312.models.Price`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceTerminateInstances请求参数结构体
      class InquiryPriceTerminateInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。每次请求批量实例的上限为100。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # InquiryPriceTerminateInstances返回参数结构体
      class InquiryPriceTerminateInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceRefundsSet: 退款详情。
        # @type InstanceRefundsSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceRefundsSet, :RequestId

        def initialize(instancerefundsset=nil, requestid=nil)
          @InstanceRefundsSet = instancerefundsset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceRefundsSet'].nil?
            @InstanceRefundsSet = []
            params['InstanceRefundsSet'].each do |i|
              instancerefund_tmp = InstanceRefund.new
              instancerefund_tmp.deserialize(i)
              @InstanceRefundsSet << instancerefund_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 描述实例的信息
      class Instance < TencentCloud::Common::AbstractModel
        # @param Placement: 实例所在的位置。
        # @type Placement: :class:`Tencentcloud::Cvm.v20170312.models.Placement`
        # @param InstanceId: 实例`ID`。
        # @type InstanceId: String
        # @param InstanceType: 实例机型。
        # @type InstanceType: String
        # @param CPU: 实例的CPU核数，单位：核。
        # @type CPU: Integer
        # @param Memory: 实例内存容量，单位：`GiB`。
        # @type Memory: Integer
        # @param RestrictState: 实例业务状态。取值范围：<br><li>NORMAL：表示正常状态的实例</li><li>EXPIRED：表示过期的实例</li><li>PROTECTIVELY_ISOLATED：表示被安全隔离的实例。</li>
        # @type RestrictState: String
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param InstanceChargeType: 实例[计费类型](https://cloud.tencent.com/document/product/213/2180)。取值范围：<br><li>PREPAID：预付费，即包年包月</li><br><li>POSTPAID_BY_HOUR：按小时后付费</li><br><li>CDHPAID：独享子机（基于专用宿主机创建，宿主机部分的资源不收费）</li><br><li>SPOTPAID：竞价付费</li><br><li>CDCPAID：专用集群付费</li>
        # @type InstanceChargeType: String
        # @param SystemDisk: 实例系统盘信息。
        # @type SystemDisk: :class:`Tencentcloud::Cvm.v20170312.models.SystemDisk`
        # @param DataDisks: 实例数据盘信息。
        # @type DataDisks: Array
        # @param PrivateIpAddresses: 实例主网卡的内网`IP`列表。
        # @type PrivateIpAddresses: Array
        # @param PublicIpAddresses: 实例主网卡的公网`IP`列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIpAddresses: Array
        # @param InternetAccessible: 实例带宽信息。
        # @type InternetAccessible: :class:`Tencentcloud::Cvm.v20170312.models.InternetAccessible`
        # @param VirtualPrivateCloud: 实例所属虚拟私有网络信息。
        # @type VirtualPrivateCloud: :class:`Tencentcloud::Cvm.v20170312.models.VirtualPrivateCloud`
        # @param ImageId: 生产实例所使用的镜像`ID`。
        # @type ImageId: String
        # @param RenewFlag: 自动续费标识。取值范围：<br><li>`NOTIFY_AND_MANUAL_RENEW`：表示通知即将过期，但不自动续费</li><li>`NOTIFY_AND_AUTO_RENEW`：表示通知即将过期，而且自动续费</li><li>`DISABLE_NOTIFY_AND_MANUAL_RENEW`：表示不通知即将过期，也不自动续费。
        # </li><li>注意：后付费模式本项为null</li>
        # @type RenewFlag: String
        # @param CreatedTime: 创建时间。按照`ISO8601`标准表示，并且使用`UTC`时间。格式为：`YYYY-MM-DDThh:mm:ssZ`。
        # @type CreatedTime: String
        # @param ExpiredTime: 到期时间。按照`ISO8601`标准表示，并且使用`UTC`时间。格式为：`YYYY-MM-DDThh:mm:ssZ`。注意：后付费模式本项为null
        # @type ExpiredTime: String
        # @param OsName: 操作系统名称。
        # @type OsName: String
        # @param SecurityGroupIds: 实例所属安全组。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的sgId字段来获取。
        # @type SecurityGroupIds: Array
        # @param LoginSettings: 实例登录设置。目前只返回实例所关联的密钥。
        # @type LoginSettings: :class:`Tencentcloud::Cvm.v20170312.models.LoginSettings`
        # @param InstanceState: 实例状态。状态类型详见[实例状态表](https://cloud.tencent.com/document/api/213/15753#InstanceStatus)
        # @type InstanceState: String
        # @param Tags: 实例关联的标签列表。
        # @type Tags: Array
        # @param StopChargingMode: 实例的关机计费模式。
        # 取值范围：<br><li>KEEP_CHARGING：关机继续收费</li><li>STOP_CHARGING：关机停止收费</li><li>NOT_APPLICABLE：实例处于非关机状态或者不适用关机停止计费的条件</li>
        # @type StopChargingMode: String
        # @param Uuid: 实例全局唯一ID
        # @type Uuid: String
        # @param LatestOperation: 实例的最新操作。例：StopInstances、ResetInstance。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestOperation: String
        # @param LatestOperationState: 实例的最新操作状态。取值范围：<br><li>SUCCESS：表示操作成功</li><li>OPERATING：表示操作执行中</li><li>FAILED：表示操作失败</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestOperationState: String
        # @param LatestOperationRequestId: 实例最新操作的唯一请求 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestOperationRequestId: String
        # @param DisasterRecoverGroupId: 分散置放群组ID。
        # @type DisasterRecoverGroupId: String
        # @param IPv6Addresses: 实例的IPv6地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IPv6Addresses: Array
        # @param CamRoleName: CAM角色名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CamRoleName: String
        # @param HpcClusterId: 高性能计算集群`ID`。
        # @type HpcClusterId: String
        # @param RdmaIpAddresses: 高性能计算集群`IP`列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RdmaIpAddresses: Array
        # @param DedicatedClusterId: 实例所在的专用集群`ID`。
        # @type DedicatedClusterId: String
        # @param IsolatedSource: 实例隔离类型。取值范围：<br><li>ARREAR：表示欠费隔离<br></li><li>EXPIRE：表示到期隔离<br></li><li>MANMADE：表示主动退还隔离<br></li><li>NOTISOLATED：表示未隔离<br></li>
        # @type IsolatedSource: String
        # @param GPUInfo: GPU信息。如果是gpu类型子机，该值会返回GPU信息，如果是其他类型子机则不返回。
        # @type GPUInfo: :class:`Tencentcloud::Cvm.v20170312.models.GPUInfo`
        # @param LicenseType: 实例的操作系统许可类型，默认为TencentCloud
        # @type LicenseType: String
        # @param DisableApiTermination: 实例销毁保护标志，表示是否允许通过api接口删除实例。取值范围：<br><li>true：表示开启实例保护，不允许通过api接口删除实例</li><li>false：表示关闭实例保护，允许通过api接口删除实例</li><br>默认取值：false。
        # @type DisableApiTermination: Boolean
        # @param DefaultLoginUser: 默认登录用户。
        # @type DefaultLoginUser: String
        # @param DefaultLoginPort: 默认登录端口。
        # @type DefaultLoginPort: Integer
        # @param LatestOperationErrorMsg: 实例的最新操作错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestOperationErrorMsg: String
        # @param PublicIPv6Addresses: 实例绑定的公网IPv6地址。
        # @type PublicIPv6Addresses: Array

        attr_accessor :Placement, :InstanceId, :InstanceType, :CPU, :Memory, :RestrictState, :InstanceName, :InstanceChargeType, :SystemDisk, :DataDisks, :PrivateIpAddresses, :PublicIpAddresses, :InternetAccessible, :VirtualPrivateCloud, :ImageId, :RenewFlag, :CreatedTime, :ExpiredTime, :OsName, :SecurityGroupIds, :LoginSettings, :InstanceState, :Tags, :StopChargingMode, :Uuid, :LatestOperation, :LatestOperationState, :LatestOperationRequestId, :DisasterRecoverGroupId, :IPv6Addresses, :CamRoleName, :HpcClusterId, :RdmaIpAddresses, :DedicatedClusterId, :IsolatedSource, :GPUInfo, :LicenseType, :DisableApiTermination, :DefaultLoginUser, :DefaultLoginPort, :LatestOperationErrorMsg, :PublicIPv6Addresses

        def initialize(placement=nil, instanceid=nil, instancetype=nil, cpu=nil, memory=nil, restrictstate=nil, instancename=nil, instancechargetype=nil, systemdisk=nil, datadisks=nil, privateipaddresses=nil, publicipaddresses=nil, internetaccessible=nil, virtualprivatecloud=nil, imageid=nil, renewflag=nil, createdtime=nil, expiredtime=nil, osname=nil, securitygroupids=nil, loginsettings=nil, instancestate=nil, tags=nil, stopchargingmode=nil, uuid=nil, latestoperation=nil, latestoperationstate=nil, latestoperationrequestid=nil, disasterrecovergroupid=nil, ipv6addresses=nil, camrolename=nil, hpcclusterid=nil, rdmaipaddresses=nil, dedicatedclusterid=nil, isolatedsource=nil, gpuinfo=nil, licensetype=nil, disableapitermination=nil, defaultloginuser=nil, defaultloginport=nil, latestoperationerrormsg=nil, publicipv6addresses=nil)
          @Placement = placement
          @InstanceId = instanceid
          @InstanceType = instancetype
          @CPU = cpu
          @Memory = memory
          @RestrictState = restrictstate
          @InstanceName = instancename
          @InstanceChargeType = instancechargetype
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @PrivateIpAddresses = privateipaddresses
          @PublicIpAddresses = publicipaddresses
          @InternetAccessible = internetaccessible
          @VirtualPrivateCloud = virtualprivatecloud
          @ImageId = imageid
          @RenewFlag = renewflag
          @CreatedTime = createdtime
          @ExpiredTime = expiredtime
          @OsName = osname
          @SecurityGroupIds = securitygroupids
          @LoginSettings = loginsettings
          @InstanceState = instancestate
          @Tags = tags
          @StopChargingMode = stopchargingmode
          @Uuid = uuid
          @LatestOperation = latestoperation
          @LatestOperationState = latestoperationstate
          @LatestOperationRequestId = latestoperationrequestid
          @DisasterRecoverGroupId = disasterrecovergroupid
          @IPv6Addresses = ipv6addresses
          @CamRoleName = camrolename
          @HpcClusterId = hpcclusterid
          @RdmaIpAddresses = rdmaipaddresses
          @DedicatedClusterId = dedicatedclusterid
          @IsolatedSource = isolatedsource
          @GPUInfo = gpuinfo
          @LicenseType = licensetype
          @DisableApiTermination = disableapitermination
          @DefaultLoginUser = defaultloginuser
          @DefaultLoginPort = defaultloginport
          @LatestOperationErrorMsg = latestoperationerrormsg
          @PublicIPv6Addresses = publicipv6addresses
        end

        def deserialize(params)
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @InstanceId = params['InstanceId']
          @InstanceType = params['InstanceType']
          @CPU = params['CPU']
          @Memory = params['Memory']
          @RestrictState = params['RestrictState']
          @InstanceName = params['InstanceName']
          @InstanceChargeType = params['InstanceChargeType']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @PublicIpAddresses = params['PublicIpAddresses']
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          unless params['VirtualPrivateCloud'].nil?
            @VirtualPrivateCloud = VirtualPrivateCloud.new
            @VirtualPrivateCloud.deserialize(params['VirtualPrivateCloud'])
          end
          @ImageId = params['ImageId']
          @RenewFlag = params['RenewFlag']
          @CreatedTime = params['CreatedTime']
          @ExpiredTime = params['ExpiredTime']
          @OsName = params['OsName']
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @InstanceState = params['InstanceState']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @StopChargingMode = params['StopChargingMode']
          @Uuid = params['Uuid']
          @LatestOperation = params['LatestOperation']
          @LatestOperationState = params['LatestOperationState']
          @LatestOperationRequestId = params['LatestOperationRequestId']
          @DisasterRecoverGroupId = params['DisasterRecoverGroupId']
          @IPv6Addresses = params['IPv6Addresses']
          @CamRoleName = params['CamRoleName']
          @HpcClusterId = params['HpcClusterId']
          @RdmaIpAddresses = params['RdmaIpAddresses']
          @DedicatedClusterId = params['DedicatedClusterId']
          @IsolatedSource = params['IsolatedSource']
          unless params['GPUInfo'].nil?
            @GPUInfo = GPUInfo.new
            @GPUInfo.deserialize(params['GPUInfo'])
          end
          @LicenseType = params['LicenseType']
          @DisableApiTermination = params['DisableApiTermination']
          @DefaultLoginUser = params['DefaultLoginUser']
          @DefaultLoginPort = params['DefaultLoginPort']
          @LatestOperationErrorMsg = params['LatestOperationErrorMsg']
          @PublicIPv6Addresses = params['PublicIPv6Addresses']
        end
      end

      # 实例属性
      class InstanceAttribute < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param Attributes: 实例属性信息。
        # @type Attributes: :class:`Tencentcloud::Cvm.v20170312.models.Attribute`

        attr_accessor :InstanceId, :Attributes

        def initialize(instanceid=nil, attributes=nil)
          @InstanceId = instanceid
          @Attributes = attributes
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Attributes'].nil?
            @Attributes = Attribute.new
            @Attributes.deserialize(params['Attributes'])
          end
        end
      end

      # 描述了实例的计费模式
      class InstanceChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 购买实例的时长，单位：月。取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36, 48, 60。
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围：<br><li>NOTIFY_AND_AUTO_RENEW：通知过期且自动续费</li><br><li>NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费</li><br><li>DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费</li><br><br>默认取值：NOTIFY_AND_MANUAL_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
        # @type RenewFlag: String

        attr_accessor :Period, :RenewFlag

        def initialize(period=nil, renewflag=nil)
          @Period = period
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @Period = params['Period']
          @RenewFlag = params['RenewFlag']
        end
      end

      # 描述实例的机型族配置信息
      # 形如：{'InstanceFamilyName': '标准型S1', 'InstanceFamily': 'S1'}、{'InstanceFamilyName': '网络优化型N1', 'InstanceFamily': 'N1'}、{'InstanceFamilyName': '高IO型I1', 'InstanceFamily': 'I1'}等。
      class InstanceFamilyConfig < TencentCloud::Common::AbstractModel
        # @param InstanceFamilyName: 机型族名称的中文全称。
        # @type InstanceFamilyName: String
        # @param InstanceFamily: 机型族名称的英文简称。
        # @type InstanceFamily: String

        attr_accessor :InstanceFamilyName, :InstanceFamily

        def initialize(instancefamilyname=nil, instancefamily=nil)
          @InstanceFamilyName = instancefamilyname
          @InstanceFamily = instancefamily
        end

        def deserialize(params)
          @InstanceFamilyName = params['InstanceFamilyName']
          @InstanceFamily = params['InstanceFamily']
        end
      end

      # 竞价请求相关选项
      class InstanceMarketOptionsRequest < TencentCloud::Common::AbstractModel
        # @param SpotOptions: 竞价相关选项
        # @type SpotOptions: :class:`Tencentcloud::Cvm.v20170312.models.SpotMarketOptions`
        # @param MarketType: 市场选项类型，当前只支持取值：spot
        # @type MarketType: String

        attr_accessor :SpotOptions, :MarketType

        def initialize(spotoptions=nil, markettype=nil)
          @SpotOptions = spotoptions
          @MarketType = markettype
        end

        def deserialize(params)
          unless params['SpotOptions'].nil?
            @SpotOptions = SpotMarketOptions.new
            @SpotOptions.deserialize(params['SpotOptions'])
          end
          @MarketType = params['MarketType']
        end
      end

      # 描述退款详情。
      class InstanceRefund < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id。
        # @type InstanceId: String
        # @param Refunds: 退款数额。
        # @type Refunds: Float
        # @param PriceDetail: 退款详情。
        # @type PriceDetail: String

        attr_accessor :InstanceId, :Refunds, :PriceDetail

        def initialize(instanceid=nil, refunds=nil, pricedetail=nil)
          @InstanceId = instanceid
          @Refunds = refunds
          @PriceDetail = pricedetail
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Refunds = params['Refunds']
          @PriceDetail = params['PriceDetail']
        end
      end

      # 描述实例的状态。状态类型详见[实例状态表](/document/api/213/15753#InstanceStatus)
      class InstanceStatus < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例`ID`。
        # @type InstanceId: String
        # @param InstanceState: 实例状态。取值范围：<br><li>PENDING：表示创建中<br></li><li>LAUNCH_FAILED：表示创建失败<br></li><li>RUNNING：表示运行中<br></li><li>STOPPED：表示关机<br></li><li>STARTING：表示开机中<br></li><li>STOPPING：表示关机中<br></li><li>REBOOTING：表示重启中<br></li><li>SHUTDOWN：表示停止待销毁<br></li><li>TERMINATING：表示销毁中<br></li><li>ENTER_RESCUE_MODE：表示进入救援模式<br></li><li>RESCUE_MODE：表示在救援模式中<br></li><li>EXIT_RESCUE_MODE：表示退出救援模式<br></li><li>ENTER_SERVICE_LIVE_MIGRATE：表示进入在线服务迁移<br></li><li>SERVICE_LIVE_MIGRATE：表示在线服务迁移中<br></li><li>EXIT_SERVICE_LIVE_MIGRATE：表示退出在线服务迁移。<br></li>
        # @type InstanceState: String

        attr_accessor :InstanceId, :InstanceState

        def initialize(instanceid=nil, instancestate=nil)
          @InstanceId = instanceid
          @InstanceState = instancestate
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceState = params['InstanceState']
        end
      end

      # 描述实例机型配置信息
      class InstanceTypeConfig < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区。
        # @type Zone: String
        # @param InstanceType: 实例机型。
        # @type InstanceType: String
        # @param InstanceFamily: 实例机型系列。
        # @type InstanceFamily: String
        # @param GPU: GPU核数，单位：核。
        # @type GPU: Integer
        # @param CPU: CPU核数，单位：核。
        # @type CPU: Integer
        # @param Memory: 内存容量，单位：`GiB`。
        # @type Memory: Integer
        # @param FPGA: FPGA核数，单位：核。
        # @type FPGA: Integer
        # @param GpuCount: 实例机型映射的物理GPU卡数，单位：卡。vGPU卡型小于1，直通卡型大于等于1。vGPU是通过分片虚拟化技术，将物理GPU卡重新划分，同一块GPU卡经虚拟化分割后可分配至不同的实例使用。直通卡型会将GPU设备直接挂载给实例使用。
        # @type GpuCount: Float

        attr_accessor :Zone, :InstanceType, :InstanceFamily, :GPU, :CPU, :Memory, :FPGA, :GpuCount

        def initialize(zone=nil, instancetype=nil, instancefamily=nil, gpu=nil, cpu=nil, memory=nil, fpga=nil, gpucount=nil)
          @Zone = zone
          @InstanceType = instancetype
          @InstanceFamily = instancefamily
          @GPU = gpu
          @CPU = cpu
          @Memory = memory
          @FPGA = fpga
          @GpuCount = gpucount
        end

        def deserialize(params)
          @Zone = params['Zone']
          @InstanceType = params['InstanceType']
          @InstanceFamily = params['InstanceFamily']
          @GPU = params['GPU']
          @CPU = params['CPU']
          @Memory = params['Memory']
          @FPGA = params['FPGA']
          @GpuCount = params['GpuCount']
        end
      end

      # 描述实例机型配置信息及状态信息
      class InstanceTypeConfigStatus < TencentCloud::Common::AbstractModel
        # @param Status: 状态描述
        # @type Status: String
        # @param Message: 状态描述信息
        # @type Message: String
        # @param InstanceTypeConfig: 配置信息
        # @type InstanceTypeConfig: :class:`Tencentcloud::Cvm.v20170312.models.InstanceTypeConfig`

        attr_accessor :Status, :Message, :InstanceTypeConfig

        def initialize(status=nil, message=nil, instancetypeconfig=nil)
          @Status = status
          @Message = message
          @InstanceTypeConfig = instancetypeconfig
        end

        def deserialize(params)
          @Status = params['Status']
          @Message = params['Message']
          unless params['InstanceTypeConfig'].nil?
            @InstanceTypeConfig = InstanceTypeConfig.new
            @InstanceTypeConfig.deserialize(params['InstanceTypeConfig'])
          end
        end
      end

      # 描述实例机型配额信息。
      class InstanceTypeQuotaItem < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区。
        # @type Zone: String
        # @param InstanceType: 实例机型。
        # @type InstanceType: String
        # @param InstanceChargeType: 实例计费模式。取值范围： <br><li>PREPAID：表示预付费，即包年包月<br></li><li>POSTPAID_BY_HOUR：表示后付费，即按量计费</li><li>CDHPAID：表示[专用宿主机](https://cloud.tencent.com/document/product/416)付费，即只对`专用宿主机`计费，不对`专用宿主机`上的实例计费。<br></li><li>SPOTPAID：表示竞价实例付费。</li>
        # @type InstanceChargeType: String
        # @param NetworkCard: 网卡类型，例如：25代表25G网卡
        # @type NetworkCard: Integer
        # @param Externals: 扩展属性。
        # @type Externals: :class:`Tencentcloud::Cvm.v20170312.models.Externals`
        # @param Cpu: 实例的CPU核数，单位：核。
        # @type Cpu: Integer
        # @param Memory: 实例内存容量，单位：`GB`。
        # @type Memory: Integer
        # @param InstanceFamily: 实例机型系列。
        # @type InstanceFamily: String
        # @param TypeName: 机型名称。
        # @type TypeName: String
        # @param LocalDiskTypeList: 本地磁盘规格列表。当该参数返回为空值时，表示当前情况下无法创建本地盘。
        # @type LocalDiskTypeList: Array
        # @param Status: 实例是否售卖。取值范围： <br><li>SELL：表示实例可购买<br></li><li>SOLD_OUT：表示实例已售罄。</li>
        # @type Status: String
        # @param Price: 实例的售卖价格。
        # @type Price: :class:`Tencentcloud::Cvm.v20170312.models.ItemPrice`
        # @param SoldOutReason: 售罄原因。
        # @type SoldOutReason: String
        # @param InstanceBandwidth: 内网带宽，单位Gbps。
        # @type InstanceBandwidth: Float
        # @param InstancePps: 网络收发包能力，单位万PPS。
        # @type InstancePps: Integer
        # @param StorageBlockAmount: 本地存储块数量。
        # @type StorageBlockAmount: Integer
        # @param CpuType: 处理器型号。
        # @type CpuType: String
        # @param Gpu: 实例的GPU数量。
        # @type Gpu: Integer
        # @param Fpga: 实例的FPGA数量。
        # @type Fpga: Integer
        # @param Remark: 实例备注信息。
        # @type Remark: String
        # @param GpuCount: 实例机型映射的物理GPU卡数，单位：卡。vGPU卡型小于1，直通卡型大于等于1。vGPU是通过分片虚拟化技术，将物理GPU卡重新划分，同一块GPU卡经虚拟化分割后可分配至不同的实例使用。直通卡型会将GPU设备直接挂载给实例使用。
        # @type GpuCount: Float
        # @param Frequency: 实例的CPU主频信息
        # @type Frequency: String
        # @param StatusCategory: 描述库存情况。取值范围：
        # <li> EnoughStock：表示对应库存非常充足</li> <li>NormalStock：表示对应库存供应有保障</li><li> UnderStock：表示对应库存即将售罄</li> <li>WithoutStock：表示对应库存已经售罄</li>
        # @type StatusCategory: String

        attr_accessor :Zone, :InstanceType, :InstanceChargeType, :NetworkCard, :Externals, :Cpu, :Memory, :InstanceFamily, :TypeName, :LocalDiskTypeList, :Status, :Price, :SoldOutReason, :InstanceBandwidth, :InstancePps, :StorageBlockAmount, :CpuType, :Gpu, :Fpga, :Remark, :GpuCount, :Frequency, :StatusCategory

        def initialize(zone=nil, instancetype=nil, instancechargetype=nil, networkcard=nil, externals=nil, cpu=nil, memory=nil, instancefamily=nil, typename=nil, localdisktypelist=nil, status=nil, price=nil, soldoutreason=nil, instancebandwidth=nil, instancepps=nil, storageblockamount=nil, cputype=nil, gpu=nil, fpga=nil, remark=nil, gpucount=nil, frequency=nil, statuscategory=nil)
          @Zone = zone
          @InstanceType = instancetype
          @InstanceChargeType = instancechargetype
          @NetworkCard = networkcard
          @Externals = externals
          @Cpu = cpu
          @Memory = memory
          @InstanceFamily = instancefamily
          @TypeName = typename
          @LocalDiskTypeList = localdisktypelist
          @Status = status
          @Price = price
          @SoldOutReason = soldoutreason
          @InstanceBandwidth = instancebandwidth
          @InstancePps = instancepps
          @StorageBlockAmount = storageblockamount
          @CpuType = cputype
          @Gpu = gpu
          @Fpga = fpga
          @Remark = remark
          @GpuCount = gpucount
          @Frequency = frequency
          @StatusCategory = statuscategory
        end

        def deserialize(params)
          @Zone = params['Zone']
          @InstanceType = params['InstanceType']
          @InstanceChargeType = params['InstanceChargeType']
          @NetworkCard = params['NetworkCard']
          unless params['Externals'].nil?
            @Externals = Externals.new
            @Externals.deserialize(params['Externals'])
          end
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @InstanceFamily = params['InstanceFamily']
          @TypeName = params['TypeName']
          unless params['LocalDiskTypeList'].nil?
            @LocalDiskTypeList = []
            params['LocalDiskTypeList'].each do |i|
              localdisktype_tmp = LocalDiskType.new
              localdisktype_tmp.deserialize(i)
              @LocalDiskTypeList << localdisktype_tmp
            end
          end
          @Status = params['Status']
          unless params['Price'].nil?
            @Price = ItemPrice.new
            @Price.deserialize(params['Price'])
          end
          @SoldOutReason = params['SoldOutReason']
          @InstanceBandwidth = params['InstanceBandwidth']
          @InstancePps = params['InstancePps']
          @StorageBlockAmount = params['StorageBlockAmount']
          @CpuType = params['CpuType']
          @Gpu = params['Gpu']
          @Fpga = params['Fpga']
          @Remark = params['Remark']
          @GpuCount = params['GpuCount']
          @Frequency = params['Frequency']
          @StatusCategory = params['StatusCategory']
        end
      end

      # 描述了实例的公网可访问性，声明了实例的公网使用计费模式，最大带宽等
      class InternetAccessible < TencentCloud::Common::AbstractModel
        # @param InternetChargeType: 网络计费类型。取值范围：<br><li>BANDWIDTH_PREPAID：预付费按带宽结算</li><li>TRAFFIC_POSTPAID_BY_HOUR：流量按小时后付费</li><li>BANDWIDTH_POSTPAID_BY_HOUR：带宽按小时后付费</li><li>BANDWIDTH_PACKAGE：带宽包用户</li>默认取值：非带宽包用户默认与子机付费类型保持一致，比如子机付费类型为预付费，网络计费类型默认为预付费；子机付费类型为后付费，网络计费类型默认为后付费。
        # @type InternetChargeType: String
        # @param InternetMaxBandwidthOut: 公网出带宽上限，单位：Mbps。默认值：0Mbps。不同机型带宽上限范围不一致，具体限制详见[购买网络带宽](https://cloud.tencent.com/document/product/213/12523)。
        # @type InternetMaxBandwidthOut: Integer
        # @param PublicIpAssigned: 是否分配公网IP。取值范围：<br><li>true：表示分配公网IP</li><li>false：表示不分配公网IP</li><br>当公网带宽大于0Mbps时，可自由选择开通与否，默认开通公网IP；当公网带宽为0，则不允许分配公网IP。该参数仅在RunInstances接口中作为入参使用。
        # @type PublicIpAssigned: Boolean
        # @param BandwidthPackageId: 带宽包ID。可通过[ DescribeBandwidthPackages ](https://cloud.tencent.com/document/api/215/19209)接口返回值中的`BandwidthPackageId`获取。该参数仅在RunInstances接口中作为入参使用。
        # @type BandwidthPackageId: String
        # @param InternetServiceProvider: 线路类型。各种线路类型详情可参考：[EIP 的 IP 地址类型](https://cloud.tencent.com/document/product/1199/41646)。默认值：BGP。

        # - BGP：常规 BGP 线路

        # 已开通静态单线IP白名单的用户，可选值：

        #  - CMCC：中国移动
        #  - CTCC：中国电信
        #  - CUCC：中国联通

        # 注意：仅部分地域支持静态单线IP。
        # 示例值：BGP
        # @type InternetServiceProvider: String
        # @param IPv4AddressType: 公网 IP 类型。

        # - WanIP：普通公网IP。
        # - HighQualityEIP：精品 IP。仅新加坡和中国香港支持精品IP。
        # - AntiDDoSEIP：高防 IP。仅部分地域支持高防IP，详情可见[弹性公网IP产品概述](https://cloud.tencent.com/document/product/1199/41646)。

        # 如需为资源分配公网IPv4地址，请指定公网IPv4地址类型。

        # 示例值：WanIP

        # 此功能仅部分地区灰度开放，如需使用[请提交工单咨询](https://console.cloud.tencent.com/workorder/category)
        # @type IPv4AddressType: String
        # @param IPv6AddressType: 弹性公网 IPv6 类型。
        # - EIPv6：弹性公网 IPv6。
        # - HighQualityEIPv6：精品 IPv6。仅中国香港支持精品IPv6。

        # 如需为资源分配IPv6地址，请指定弹性公网IPv6类型。
        # 示例值：EIPv6

        # 此功能仅部分地区灰度开放，如需使用[请提交工单咨询](https://console.cloud.tencent.com/workorder/category)
        # @type IPv6AddressType: String
        # @param AntiDDoSPackageId: 高防包唯一ID，申请高防IP时，该字段必传。
        # 示例值：bgp-12345678
        # @type AntiDDoSPackageId: String

        attr_accessor :InternetChargeType, :InternetMaxBandwidthOut, :PublicIpAssigned, :BandwidthPackageId, :InternetServiceProvider, :IPv4AddressType, :IPv6AddressType, :AntiDDoSPackageId

        def initialize(internetchargetype=nil, internetmaxbandwidthout=nil, publicipassigned=nil, bandwidthpackageid=nil, internetserviceprovider=nil, ipv4addresstype=nil, ipv6addresstype=nil, antiddospackageid=nil)
          @InternetChargeType = internetchargetype
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @PublicIpAssigned = publicipassigned
          @BandwidthPackageId = bandwidthpackageid
          @InternetServiceProvider = internetserviceprovider
          @IPv4AddressType = ipv4addresstype
          @IPv6AddressType = ipv6addresstype
          @AntiDDoSPackageId = antiddospackageid
        end

        def deserialize(params)
          @InternetChargeType = params['InternetChargeType']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @PublicIpAssigned = params['PublicIpAssigned']
          @BandwidthPackageId = params['BandwidthPackageId']
          @InternetServiceProvider = params['InternetServiceProvider']
          @IPv4AddressType = params['IPv4AddressType']
          @IPv6AddressType = params['IPv6AddressType']
          @AntiDDoSPackageId = params['AntiDDoSPackageId']
        end
      end

      # 描述了按带宽计费的相关信息
      class InternetBandwidthConfig < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。按照`ISO8601`标准表示，并且使用`UTC`时间。格式为：`YYYY-MM-DDThh:mm:ssZ`。
        # @type StartTime: String
        # @param EndTime: 结束时间。按照`ISO8601`标准表示，并且使用`UTC`时间。格式为：`YYYY-MM-DDThh:mm:ssZ`。
        # @type EndTime: String
        # @param InternetAccessible: 实例带宽信息。
        # @type InternetAccessible: :class:`Tencentcloud::Cvm.v20170312.models.InternetAccessible`

        attr_accessor :StartTime, :EndTime, :InternetAccessible

        def initialize(starttime=nil, endtime=nil, internetaccessible=nil)
          @StartTime = starttime
          @EndTime = endtime
          @InternetAccessible = internetaccessible
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
        end
      end

      # 描述了网络计费
      class InternetChargeTypeConfig < TencentCloud::Common::AbstractModel
        # @param InternetChargeType: 网络计费类型。取值范围：<br><li>BANDWIDTH_PREPAID：预付费按带宽结算</li><li>TRAFFIC_POSTPAID_BY_HOUR：流量按小时后付费</li><li>BANDWIDTH_POSTPAID_BY_HOUR：带宽按小时后付费</li><li>BANDWIDTH_PACKAGE：带宽包用户</li>默认取值：非带宽包用户默认与子机付费类型保持一致，比如子机付费类型为预付费，网络计费类型默认为预付费；子机付费类型为后付费，网络计费类型默认为后付费。
        # @type InternetChargeType: String
        # @param Description: 网络计费模式描述信息。
        # @type Description: String

        attr_accessor :InternetChargeType, :Description

        def initialize(internetchargetype=nil, description=nil)
          @InternetChargeType = internetchargetype
          @Description = description
        end

        def deserialize(params)
          @InternetChargeType = params['InternetChargeType']
          @Description = params['Description']
        end
      end

      # 描述了单项的价格信息
      class ItemPrice < TencentCloud::Common::AbstractModel
        # @param UnitPrice: 后续合计费用的原价，后付费模式使用，单位：元。<br><li>如返回了其他时间区间项，如UnitPriceSecondStep，则本项代表时间区间在(0, 96)小时；若未返回其他时间区间项，则本项代表全时段，即(0, ∞)小时</li>
        # @type UnitPrice: Float
        # @param ChargeUnit: 后续计价单元，后付费模式使用，可取值范围： <br><li>HOUR：表示计价单元是按每小时来计算。当前涉及该计价单元的场景有：实例按小时后付费（POSTPAID_BY_HOUR）、带宽按小时后付费（BANDWIDTH_POSTPAID_BY_HOUR）：</li><li>GB：表示计价单元是按每GB来计算。当前涉及该计价单元的场景有：流量按小时后付费（TRAFFIC_POSTPAID_BY_HOUR）。</li>
        # @type ChargeUnit: String
        # @param OriginalPrice: 预支合计费用的原价，预付费模式使用，单位：元。
        # @type OriginalPrice: Float
        # @param DiscountPrice: 预支合计费用的折扣价，预付费模式使用，单位：元。
        # @type DiscountPrice: Float
        # @param Discount: 折扣，如20.0代表2折。
        # @type Discount: Float
        # @param UnitPriceDiscount: 后续合计费用的折扣价，后付费模式使用，单位：元<br><li>如返回了其他时间区间项，如UnitPriceDiscountSecondStep，则本项代表时间区间在(0, 96)小时；若未返回其他时间区间项，则本项代表全时段，即(0, ∞)小时</li>
        # @type UnitPriceDiscount: Float
        # @param UnitPriceSecondStep: 使用时间区间在(96, 360)小时的后续合计费用的原价，后付费模式使用，单位：元。
        # @type UnitPriceSecondStep: Float
        # @param UnitPriceDiscountSecondStep: 使用时间区间在(96, 360)小时的后续合计费用的折扣价，后付费模式使用，单位：元
        # @type UnitPriceDiscountSecondStep: Float
        # @param UnitPriceThirdStep: 使用时间区间在(360, ∞)小时的后续合计费用的原价，后付费模式使用，单位：元。
        # @type UnitPriceThirdStep: Float
        # @param UnitPriceDiscountThirdStep: 使用时间区间在(360, ∞)小时的后续合计费用的折扣价，后付费模式使用，单位：元
        # @type UnitPriceDiscountThirdStep: Float
        # @param OriginalPriceThreeYear: 预支三年合计费用的原价，预付费模式使用，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalPriceThreeYear: Float
        # @param DiscountPriceThreeYear: 预支三年合计费用的折扣价，预付费模式使用，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountPriceThreeYear: Float
        # @param DiscountThreeYear: 预支三年应用的折扣，如20.0代表2折。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountThreeYear: Float
        # @param OriginalPriceFiveYear: 预支五年合计费用的原价，预付费模式使用，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalPriceFiveYear: Float
        # @param DiscountPriceFiveYear: 预支五年合计费用的折扣价，预付费模式使用，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountPriceFiveYear: Float
        # @param DiscountFiveYear: 预支五年应用的折扣，如20.0代表2折。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountFiveYear: Float
        # @param OriginalPriceOneYear: 预支一年合计费用的原价，预付费模式使用，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalPriceOneYear: Float
        # @param DiscountPriceOneYear: 预支一年合计费用的折扣价，预付费模式使用，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountPriceOneYear: Float
        # @param DiscountOneYear: 预支一年应用的折扣，如20.0代表2折。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountOneYear: Float

        attr_accessor :UnitPrice, :ChargeUnit, :OriginalPrice, :DiscountPrice, :Discount, :UnitPriceDiscount, :UnitPriceSecondStep, :UnitPriceDiscountSecondStep, :UnitPriceThirdStep, :UnitPriceDiscountThirdStep, :OriginalPriceThreeYear, :DiscountPriceThreeYear, :DiscountThreeYear, :OriginalPriceFiveYear, :DiscountPriceFiveYear, :DiscountFiveYear, :OriginalPriceOneYear, :DiscountPriceOneYear, :DiscountOneYear

        def initialize(unitprice=nil, chargeunit=nil, originalprice=nil, discountprice=nil, discount=nil, unitpricediscount=nil, unitpricesecondstep=nil, unitpricediscountsecondstep=nil, unitpricethirdstep=nil, unitpricediscountthirdstep=nil, originalpricethreeyear=nil, discountpricethreeyear=nil, discountthreeyear=nil, originalpricefiveyear=nil, discountpricefiveyear=nil, discountfiveyear=nil, originalpriceoneyear=nil, discountpriceoneyear=nil, discountoneyear=nil)
          @UnitPrice = unitprice
          @ChargeUnit = chargeunit
          @OriginalPrice = originalprice
          @DiscountPrice = discountprice
          @Discount = discount
          @UnitPriceDiscount = unitpricediscount
          @UnitPriceSecondStep = unitpricesecondstep
          @UnitPriceDiscountSecondStep = unitpricediscountsecondstep
          @UnitPriceThirdStep = unitpricethirdstep
          @UnitPriceDiscountThirdStep = unitpricediscountthirdstep
          @OriginalPriceThreeYear = originalpricethreeyear
          @DiscountPriceThreeYear = discountpricethreeyear
          @DiscountThreeYear = discountthreeyear
          @OriginalPriceFiveYear = originalpricefiveyear
          @DiscountPriceFiveYear = discountpricefiveyear
          @DiscountFiveYear = discountfiveyear
          @OriginalPriceOneYear = originalpriceoneyear
          @DiscountPriceOneYear = discountpriceoneyear
          @DiscountOneYear = discountoneyear
        end

        def deserialize(params)
          @UnitPrice = params['UnitPrice']
          @ChargeUnit = params['ChargeUnit']
          @OriginalPrice = params['OriginalPrice']
          @DiscountPrice = params['DiscountPrice']
          @Discount = params['Discount']
          @UnitPriceDiscount = params['UnitPriceDiscount']
          @UnitPriceSecondStep = params['UnitPriceSecondStep']
          @UnitPriceDiscountSecondStep = params['UnitPriceDiscountSecondStep']
          @UnitPriceThirdStep = params['UnitPriceThirdStep']
          @UnitPriceDiscountThirdStep = params['UnitPriceDiscountThirdStep']
          @OriginalPriceThreeYear = params['OriginalPriceThreeYear']
          @DiscountPriceThreeYear = params['DiscountPriceThreeYear']
          @DiscountThreeYear = params['DiscountThreeYear']
          @OriginalPriceFiveYear = params['OriginalPriceFiveYear']
          @DiscountPriceFiveYear = params['DiscountPriceFiveYear']
          @DiscountFiveYear = params['DiscountFiveYear']
          @OriginalPriceOneYear = params['OriginalPriceOneYear']
          @DiscountPriceOneYear = params['DiscountPriceOneYear']
          @DiscountOneYear = params['DiscountOneYear']
        end
      end

      # 描述密钥对信息
      class KeyPair < TencentCloud::Common::AbstractModel
        # @param KeyId: 密钥对的`ID`，是密钥对的唯一标识。
        # @type KeyId: String
        # @param KeyName: 密钥对名称。
        # @type KeyName: String
        # @param ProjectId: 密钥对所属的项目 `ID`，ProjectId 为 0 时表示默认项目。
        # @type ProjectId: Integer
        # @param Description: 密钥对描述信息。
        # @type Description: String
        # @param PublicKey: 密钥对的纯文本公钥。
        # @type PublicKey: String
        # @param PrivateKey: 密钥对的纯文本私钥。腾讯云不会保管私钥，请用户自行妥善保存。
        # @type PrivateKey: String
        # @param AssociatedInstanceIds: 密钥关联的实例`ID`列表。
        # @type AssociatedInstanceIds: Array
        # @param CreatedTime: 创建时间。按照`ISO8601`标准表示，并且使用`UTC`时间。格式为：`YYYY-MM-DDThh:mm:ssZ`。
        # @type CreatedTime: String
        # @param Tags: 密钥关联的标签列表。
        # @type Tags: Array

        attr_accessor :KeyId, :KeyName, :ProjectId, :Description, :PublicKey, :PrivateKey, :AssociatedInstanceIds, :CreatedTime, :Tags

        def initialize(keyid=nil, keyname=nil, projectid=nil, description=nil, publickey=nil, privatekey=nil, associatedinstanceids=nil, createdtime=nil, tags=nil)
          @KeyId = keyid
          @KeyName = keyname
          @ProjectId = projectid
          @Description = description
          @PublicKey = publickey
          @PrivateKey = privatekey
          @AssociatedInstanceIds = associatedinstanceids
          @CreatedTime = createdtime
          @Tags = tags
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @KeyName = params['KeyName']
          @ProjectId = params['ProjectId']
          @Description = params['Description']
          @PublicKey = params['PublicKey']
          @PrivateKey = params['PrivateKey']
          @AssociatedInstanceIds = params['AssociatedInstanceIds']
          @CreatedTime = params['CreatedTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # 实例启动模板，通过该参数可使用实例模板中的预设参数创建实例。
      class LaunchTemplate < TencentCloud::Common::AbstractModel
        # @param LaunchTemplateId: 实例启动模板ID，通过该参数可使用实例模板中的预设参数创建实例。
        # @type LaunchTemplateId: String
        # @param LaunchTemplateVersion: 实例启动模板版本号，若给定，新实例启动模板将基于给定的版本号创建
        # @type LaunchTemplateVersion: Integer

        attr_accessor :LaunchTemplateId, :LaunchTemplateVersion

        def initialize(launchtemplateid=nil, launchtemplateversion=nil)
          @LaunchTemplateId = launchtemplateid
          @LaunchTemplateVersion = launchtemplateversion
        end

        def deserialize(params)
          @LaunchTemplateId = params['LaunchTemplateId']
          @LaunchTemplateVersion = params['LaunchTemplateVersion']
        end
      end

      # 实例启动模板简要信息。
      class LaunchTemplateInfo < TencentCloud::Common::AbstractModel
        # @param LatestVersionNumber: 实例启动模版本号。
        # @type LatestVersionNumber: Integer
        # @param LaunchTemplateId: 实例启动模板ID。
        # @type LaunchTemplateId: String
        # @param LaunchTemplateName: 实例启动模板名。
        # @type LaunchTemplateName: String
        # @param DefaultVersionNumber: 实例启动模板默认版本号。
        # @type DefaultVersionNumber: Integer
        # @param LaunchTemplateVersionCount: 实例启动模板包含的版本总数量。
        # @type LaunchTemplateVersionCount: Integer
        # @param CreatedBy: 创建该模板的用户UIN。
        # @type CreatedBy: String
        # @param CreationTime: 创建该模板的时间。
        # @type CreationTime: String

        attr_accessor :LatestVersionNumber, :LaunchTemplateId, :LaunchTemplateName, :DefaultVersionNumber, :LaunchTemplateVersionCount, :CreatedBy, :CreationTime

        def initialize(latestversionnumber=nil, launchtemplateid=nil, launchtemplatename=nil, defaultversionnumber=nil, launchtemplateversioncount=nil, createdby=nil, creationtime=nil)
          @LatestVersionNumber = latestversionnumber
          @LaunchTemplateId = launchtemplateid
          @LaunchTemplateName = launchtemplatename
          @DefaultVersionNumber = defaultversionnumber
          @LaunchTemplateVersionCount = launchtemplateversioncount
          @CreatedBy = createdby
          @CreationTime = creationtime
        end

        def deserialize(params)
          @LatestVersionNumber = params['LatestVersionNumber']
          @LaunchTemplateId = params['LaunchTemplateId']
          @LaunchTemplateName = params['LaunchTemplateName']
          @DefaultVersionNumber = params['DefaultVersionNumber']
          @LaunchTemplateVersionCount = params['LaunchTemplateVersionCount']
          @CreatedBy = params['CreatedBy']
          @CreationTime = params['CreationTime']
        end
      end

      # 实例启动模板版本信息
      class LaunchTemplateVersionData < TencentCloud::Common::AbstractModel
        # @param Placement: 实例所在的位置。
        # @type Placement: :class:`Tencentcloud::Cvm.v20170312.models.Placement`
        # @param InstanceType: 实例机型。
        # @type InstanceType: String
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param InstanceChargeType: 实例计费模式。取值范围：
        # <li>`PREPAID`：表示预付费，即包年包月</li>
        # <li>`POSTPAID_BY_HOUR`：表示后付费，即按量计费</li>
        # <li>`CDHPAID`：`专用宿主机`付费，即只对`专用宿主机`计费，不对`专用宿主机`上的实例计费。</li>
        # <li>`SPOTPAID`：表示竞价实例付费。</li>
        # @type InstanceChargeType: String
        # @param SystemDisk: 实例系统盘信息。
        # @type SystemDisk: :class:`Tencentcloud::Cvm.v20170312.models.SystemDisk`
        # @param DataDisks: 实例数据盘信息。只包含随实例购买的数据盘。
        # @type DataDisks: Array
        # @param InternetAccessible: 实例带宽信息。
        # @type InternetAccessible: :class:`Tencentcloud::Cvm.v20170312.models.InternetAccessible`
        # @param VirtualPrivateCloud: 实例所属虚拟私有网络信息。
        # @type VirtualPrivateCloud: :class:`Tencentcloud::Cvm.v20170312.models.VirtualPrivateCloud`
        # @param ImageId: 生产实例所使用的镜像`ID`。
        # @type ImageId: String
        # @param SecurityGroupIds: 实例所属安全组。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的sgId字段来获取。
        # @type SecurityGroupIds: Array
        # @param LoginSettings: 实例登录设置。目前只返回实例所关联的密钥。
        # @type LoginSettings: :class:`Tencentcloud::Cvm.v20170312.models.LoginSettings`
        # @param CamRoleName: CAM角色名。
        # @type CamRoleName: String
        # @param HpcClusterId: 高性能计算集群`ID`。
        # @type HpcClusterId: String
        # @param InstanceCount: 购买实例数量。
        # @type InstanceCount: Integer
        # @param EnhancedService: 增强服务。
        # @type EnhancedService: :class:`Tencentcloud::Cvm.v20170312.models.EnhancedService`
        # @param UserData: 提供给实例使用的用户数据，需要以 base64 方式编码，支持的最大数据大小为 16KB。
        # @type UserData: String
        # @param DisasterRecoverGroupIds: 置放群组ID，仅支持指定一个。
        # @type DisasterRecoverGroupIds: Array
        # @param ActionTimer: 定时任务。通过该参数可以为实例指定定时任务，目前仅支持定时销毁。
        # @type ActionTimer: :class:`Tencentcloud::Cvm.v20170312.models.ActionTimer`
        # @param InstanceMarketOptions: 实例的市场相关选项，如竞价实例相关参数，若指定实例的付费模式为竞价付费则该参数必传。
        # @type InstanceMarketOptions: :class:`Tencentcloud::Cvm.v20170312.models.InstanceMarketOptionsRequest`
        # @param HostName: 云服务器的主机名。
        # @type HostName: String
        # @param ClientToken: 用于保证请求幂等性的字符串。
        # @type ClientToken: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Cvm.v20170312.models.InstanceChargePrepaid`
        # @param TagSpecification: 标签描述列表。通过指定该参数可以同时绑定标签到相应的云服务器、云硬盘实例。
        # @type TagSpecification: Array
        # @param DisableApiTermination: 实例销毁保护标志，表示是否允许通过api接口删除实例。取值范围：

        # true：表示开启实例保护，不允许通过api接口删除实例
        # false：表示关闭实例保护，允许通过api接口删除实例

        # 默认取值：false。
        # @type DisableApiTermination: Boolean

        attr_accessor :Placement, :InstanceType, :InstanceName, :InstanceChargeType, :SystemDisk, :DataDisks, :InternetAccessible, :VirtualPrivateCloud, :ImageId, :SecurityGroupIds, :LoginSettings, :CamRoleName, :HpcClusterId, :InstanceCount, :EnhancedService, :UserData, :DisasterRecoverGroupIds, :ActionTimer, :InstanceMarketOptions, :HostName, :ClientToken, :InstanceChargePrepaid, :TagSpecification, :DisableApiTermination

        def initialize(placement=nil, instancetype=nil, instancename=nil, instancechargetype=nil, systemdisk=nil, datadisks=nil, internetaccessible=nil, virtualprivatecloud=nil, imageid=nil, securitygroupids=nil, loginsettings=nil, camrolename=nil, hpcclusterid=nil, instancecount=nil, enhancedservice=nil, userdata=nil, disasterrecovergroupids=nil, actiontimer=nil, instancemarketoptions=nil, hostname=nil, clienttoken=nil, instancechargeprepaid=nil, tagspecification=nil, disableapitermination=nil)
          @Placement = placement
          @InstanceType = instancetype
          @InstanceName = instancename
          @InstanceChargeType = instancechargetype
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @InternetAccessible = internetaccessible
          @VirtualPrivateCloud = virtualprivatecloud
          @ImageId = imageid
          @SecurityGroupIds = securitygroupids
          @LoginSettings = loginsettings
          @CamRoleName = camrolename
          @HpcClusterId = hpcclusterid
          @InstanceCount = instancecount
          @EnhancedService = enhancedservice
          @UserData = userdata
          @DisasterRecoverGroupIds = disasterrecovergroupids
          @ActionTimer = actiontimer
          @InstanceMarketOptions = instancemarketoptions
          @HostName = hostname
          @ClientToken = clienttoken
          @InstanceChargePrepaid = instancechargeprepaid
          @TagSpecification = tagspecification
          @DisableApiTermination = disableapitermination
        end

        def deserialize(params)
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @InstanceType = params['InstanceType']
          @InstanceName = params['InstanceName']
          @InstanceChargeType = params['InstanceChargeType']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          unless params['VirtualPrivateCloud'].nil?
            @VirtualPrivateCloud = VirtualPrivateCloud.new
            @VirtualPrivateCloud.deserialize(params['VirtualPrivateCloud'])
          end
          @ImageId = params['ImageId']
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @CamRoleName = params['CamRoleName']
          @HpcClusterId = params['HpcClusterId']
          @InstanceCount = params['InstanceCount']
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          @UserData = params['UserData']
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          unless params['ActionTimer'].nil?
            @ActionTimer = ActionTimer.new
            @ActionTimer.deserialize(params['ActionTimer'])
          end
          unless params['InstanceMarketOptions'].nil?
            @InstanceMarketOptions = InstanceMarketOptionsRequest.new
            @InstanceMarketOptions.deserialize(params['InstanceMarketOptions'])
          end
          @HostName = params['HostName']
          @ClientToken = params['ClientToken']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @TagSpecification << tagspecification_tmp
            end
          end
          @DisableApiTermination = params['DisableApiTermination']
        end
      end

      # 实例启动模板版本集合
      class LaunchTemplateVersionInfo < TencentCloud::Common::AbstractModel
        # @param LaunchTemplateVersion: 实例启动模板版本号。
        # @type LaunchTemplateVersion: Integer
        # @param LaunchTemplateVersionData: 实例启动模板版本数据详情。
        # @type LaunchTemplateVersionData: :class:`Tencentcloud::Cvm.v20170312.models.LaunchTemplateVersionData`
        # @param CreationTime: 实例启动模板版本创建时间。
        # @type CreationTime: String
        # @param LaunchTemplateId: 实例启动模板ID。
        # @type LaunchTemplateId: String
        # @param IsDefaultVersion: 是否为默认启动模板版本。
        # @type IsDefaultVersion: Boolean
        # @param LaunchTemplateVersionDescription: 实例启动模板版本描述信息。
        # @type LaunchTemplateVersionDescription: String
        # @param CreatedBy: 创建者的AppId。
        # @type CreatedBy: String

        attr_accessor :LaunchTemplateVersion, :LaunchTemplateVersionData, :CreationTime, :LaunchTemplateId, :IsDefaultVersion, :LaunchTemplateVersionDescription, :CreatedBy

        def initialize(launchtemplateversion=nil, launchtemplateversiondata=nil, creationtime=nil, launchtemplateid=nil, isdefaultversion=nil, launchtemplateversiondescription=nil, createdby=nil)
          @LaunchTemplateVersion = launchtemplateversion
          @LaunchTemplateVersionData = launchtemplateversiondata
          @CreationTime = creationtime
          @LaunchTemplateId = launchtemplateid
          @IsDefaultVersion = isdefaultversion
          @LaunchTemplateVersionDescription = launchtemplateversiondescription
          @CreatedBy = createdby
        end

        def deserialize(params)
          @LaunchTemplateVersion = params['LaunchTemplateVersion']
          unless params['LaunchTemplateVersionData'].nil?
            @LaunchTemplateVersionData = LaunchTemplateVersionData.new
            @LaunchTemplateVersionData.deserialize(params['LaunchTemplateVersionData'])
          end
          @CreationTime = params['CreationTime']
          @LaunchTemplateId = params['LaunchTemplateId']
          @IsDefaultVersion = params['IsDefaultVersion']
          @LaunchTemplateVersionDescription = params['LaunchTemplateVersionDescription']
          @CreatedBy = params['CreatedBy']
        end
      end

      # 本地磁盘规格
      class LocalDiskType < TencentCloud::Common::AbstractModel
        # @param Type: 本地磁盘类型。
        # @type Type: String
        # @param PartitionType: 本地磁盘属性。
        # @type PartitionType: String
        # @param MinSize: 本地磁盘最小值。
        # @type MinSize: Integer
        # @param MaxSize: 本地磁盘最大值。
        # @type MaxSize: Integer
        # @param Required: 购买时本地盘是否为必选。取值范围：<br><li>REQUIRED：表示必选</li><li>OPTIONAL：表示可选。</li>
        # @type Required: String

        attr_accessor :Type, :PartitionType, :MinSize, :MaxSize, :Required

        def initialize(type=nil, partitiontype=nil, minsize=nil, maxsize=nil, required=nil)
          @Type = type
          @PartitionType = partitiontype
          @MinSize = minsize
          @MaxSize = maxsize
          @Required = required
        end

        def deserialize(params)
          @Type = params['Type']
          @PartitionType = params['PartitionType']
          @MinSize = params['MinSize']
          @MaxSize = params['MaxSize']
          @Required = params['Required']
        end
      end

      # 描述了实例登录相关配置与信息。
      class LoginSettings < TencentCloud::Common::AbstractModel
        # @param Password: 实例登录密码。不同操作系统类型密码复杂度限制不一样，具体如下：<li>Linux实例密码必须8到30位，至少包括两项[a-z]，[A-Z]、[0-9] 和 [( ) \` ~ ! @ # $ % ^ & *  - + = | { } [ ] : ; ' , . ? / ]中的特殊符号。</li><li>Windows实例密码必须12到30位，至少包括三项[a-z]，[A-Z]，[0-9] 和 [( ) \` ~ ! @ # $ % ^ & * - + = | { } [ ] : ; ' , . ? /]中的特殊符号。</li>若不指定该参数，则由系统随机生成密码，并通过站内信方式通知到用户。
        # @type Password: String
        # @param KeyIds: 密钥ID列表。关联密钥后，就可以通过对应的私钥来访问实例；KeyId可通过接口[DescribeKeyPairs](https://cloud.tencent.com/document/api/213/15699)获取，密钥与密码不能同时指定，同时Windows操作系统不支持指定密钥。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyIds: Array
        # @param KeepImageLogin: 保持镜像的原始设置。该参数与Password或KeyIds.N不能同时指定。只有使用自定义镜像、共享镜像或外部导入镜像创建实例时才能指定该参数为true。取值范围：<li>true：表示保持镜像的登录设置</li><li>false：表示不保持镜像的登录设置</li>默认取值：false。
        # @type KeepImageLogin: String

        attr_accessor :Password, :KeyIds, :KeepImageLogin

        def initialize(password=nil, keyids=nil, keepimagelogin=nil)
          @Password = password
          @KeyIds = keyids
          @KeepImageLogin = keepimagelogin
        end

        def deserialize(params)
          @Password = params['Password']
          @KeyIds = params['KeyIds']
          @KeepImageLogin = params['KeepImageLogin']
        end
      end

      # 自定义metadata
      class Metadata < TencentCloud::Common::AbstractModel
        # @param Items: 自定义metadata键值对列表。
        # @type Items: Array

        attr_accessor :Items

        def initialize(items=nil)
          @Items = items
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              metadataitem_tmp = MetadataItem.new
              metadataitem_tmp.deserialize(i)
              @Items << metadataitem_tmp
            end
          end
        end
      end

      # 自定义metadata key和value
      class MetadataItem < TencentCloud::Common::AbstractModel
        # @param Key: 自定义metadata键，需符合正则 ^[a-zA-Z0-9_-]+$，长度 ≤128 字节（大小写敏感）；
        # @type Key: String
        # @param Value: 自定义metadata值，支持任意数据（含二进制），大小 ≤256 KB（大小写敏感）；
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

      # ModifyChcAttribute请求参数结构体
      class ModifyChcAttributeRequest < TencentCloud::Common::AbstractModel
        # @param ChcIds: CHC物理服务器ID。
        # @type ChcIds: Array
        # @param InstanceName: CHC物理服务器名称
        # @type InstanceName: String
        # @param DeviceType: 服务器类型
        # @type DeviceType: String
        # @param BmcUser: 合法字符为字母,数字, 横线和下划线
        # @type BmcUser: String
        # @param Password: 密码8-16位字符, 允许数字，字母， 和特殊字符()`~!@#$%^&*-+=_|{}[]:;'<>,.?/
        # @type Password: String
        # @param BmcSecurityGroupIds: bmc网络的安全组列表
        # @type BmcSecurityGroupIds: Array

        attr_accessor :ChcIds, :InstanceName, :DeviceType, :BmcUser, :Password, :BmcSecurityGroupIds

        def initialize(chcids=nil, instancename=nil, devicetype=nil, bmcuser=nil, password=nil, bmcsecuritygroupids=nil)
          @ChcIds = chcids
          @InstanceName = instancename
          @DeviceType = devicetype
          @BmcUser = bmcuser
          @Password = password
          @BmcSecurityGroupIds = bmcsecuritygroupids
        end

        def deserialize(params)
          @ChcIds = params['ChcIds']
          @InstanceName = params['InstanceName']
          @DeviceType = params['DeviceType']
          @BmcUser = params['BmcUser']
          @Password = params['Password']
          @BmcSecurityGroupIds = params['BmcSecurityGroupIds']
        end
      end

      # ModifyChcAttribute返回参数结构体
      class ModifyChcAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDisasterRecoverGroupAttribute请求参数结构体
      class ModifyDisasterRecoverGroupAttributeRequest < TencentCloud::Common::AbstractModel
        # @param DisasterRecoverGroupId: 分散置放群组ID，可使用[DescribeDisasterRecoverGroups](https://cloud.tencent.com/document/api/213/17810)接口获取。
        # @type DisasterRecoverGroupId: String
        # @param Name: 分散置放群组名称，长度1-60个字符，支持中、英文。
        # @type Name: String

        attr_accessor :DisasterRecoverGroupId, :Name

        def initialize(disasterrecovergroupid=nil, name=nil)
          @DisasterRecoverGroupId = disasterrecovergroupid
          @Name = name
        end

        def deserialize(params)
          @DisasterRecoverGroupId = params['DisasterRecoverGroupId']
          @Name = params['Name']
        end
      end

      # ModifyDisasterRecoverGroupAttribute返回参数结构体
      class ModifyDisasterRecoverGroupAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyHostsAttribute请求参数结构体
      class ModifyHostsAttributeRequest < TencentCloud::Common::AbstractModel
        # @param HostIds: 一个或多个待操作的CDH实例ID。
        # @type HostIds: Array
        # @param HostName: CDH实例显示名称。可任意命名，但不得超过60个字符。
        # @type HostName: String
        # @param RenewFlag: 自动续费标识。取值范围：<br><li>NOTIFY_AND_AUTO_RENEW：通知过期且自动续费</li><li>NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费</li><li>DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费</li><br>若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
        # @type RenewFlag: String
        # @param ProjectId: 项目ID。项目可以使用[AddProject](https://cloud.tencent.com/document/api/651/81952)接口创建。可通过[DescribeProject](https://cloud.tencent.com/document/product/378/4400) API返回值中的`projectId`获取。后续使用[DescribeHosts](https://cloud.tencent.com/document/api/213/16474)接口查询实例时，项目ID可用于过滤结果。
        # @type ProjectId: Integer

        attr_accessor :HostIds, :HostName, :RenewFlag, :ProjectId

        def initialize(hostids=nil, hostname=nil, renewflag=nil, projectid=nil)
          @HostIds = hostids
          @HostName = hostname
          @RenewFlag = renewflag
          @ProjectId = projectid
        end

        def deserialize(params)
          @HostIds = params['HostIds']
          @HostName = params['HostName']
          @RenewFlag = params['RenewFlag']
          @ProjectId = params['ProjectId']
        end
      end

      # ModifyHostsAttribute返回参数结构体
      class ModifyHostsAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyHpcClusterAttribute请求参数结构体
      class ModifyHpcClusterAttributeRequest < TencentCloud::Common::AbstractModel
        # @param HpcClusterId: 高性能计算集群ID。集群ID可通过 [查询高性能集群信息](https://cloud.tencent.com/document/api/213/83220) 接口获取。
        # @type HpcClusterId: String
        # @param Name: 高性能计算集群新名称，长度限制[1-60]。
        # @type Name: String
        # @param Remark: 高性能计算集群新备注，长度[1-256]。
        # @type Remark: String

        attr_accessor :HpcClusterId, :Name, :Remark

        def initialize(hpcclusterid=nil, name=nil, remark=nil)
          @HpcClusterId = hpcclusterid
          @Name = name
          @Remark = remark
        end

        def deserialize(params)
          @HpcClusterId = params['HpcClusterId']
          @Name = params['Name']
          @Remark = params['Remark']
        end
      end

      # ModifyHpcClusterAttribute返回参数结构体
      class ModifyHpcClusterAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyImageAttribute请求参数结构体
      class ModifyImageAttributeRequest < TencentCloud::Common::AbstractModel
        # @param ImageId: 镜像ID，形如`img-gvbnzy6f`。镜像ID可以通过如下方式获取：<li>通过[DescribeImages](https://cloud.tencent.com/document/api/213/15715)接口返回的`ImageId`获取。</li><li>通过[镜像控制台](https://console.cloud.tencent.com/cvm/image)获取。</li>
        # @type ImageId: String
        # @param ImageName: 设置新的镜像名称；必须满足下列限制 <li> 不得超过60个字符。</li><li> 镜像名称不能与已有镜像重复。</li>
        # @type ImageName: String
        # @param ImageDescription: 设置新的镜像描述；必须满足下列限制： <li> 不得超过 256 个字符。</li>
        # @type ImageDescription: String
        # @param ImageFamily: 设置镜像族；
        # @type ImageFamily: String
        # @param ImageDeprecated: 设置镜像是否废弃；
        # @type ImageDeprecated: Boolean

        attr_accessor :ImageId, :ImageName, :ImageDescription, :ImageFamily, :ImageDeprecated

        def initialize(imageid=nil, imagename=nil, imagedescription=nil, imagefamily=nil, imagedeprecated=nil)
          @ImageId = imageid
          @ImageName = imagename
          @ImageDescription = imagedescription
          @ImageFamily = imagefamily
          @ImageDeprecated = imagedeprecated
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @ImageName = params['ImageName']
          @ImageDescription = params['ImageDescription']
          @ImageFamily = params['ImageFamily']
          @ImageDeprecated = params['ImageDeprecated']
        end
      end

      # ModifyImageAttribute返回参数结构体
      class ModifyImageAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyImageSharePermission请求参数结构体
      class ModifyImageSharePermissionRequest < TencentCloud::Common::AbstractModel
        # @param ImageId: 镜像ID，形如`img-gvbnzy6f`。镜像Id可以通过如下方式获取：<br><li>通过[DescribeImages](https://cloud.tencent.com/document/api/213/15715)接口返回的`ImageId`获取。</li><br><li>通过[镜像控制台](https://console.cloud.tencent.com/cvm/image)获取。</li> <br>镜像ID必须指定为状态为`NORMAL`的镜像。镜像状态请参考[镜像数据表](https://cloud.tencent.com/document/product/213/15753#Image)。
        # @type ImageId: String
        # @param AccountIds: 接收共享镜像的主账号ID列表，array型参数的格式可以参考[API简介](/document/api/213/568)。账号ID不同于QQ号，查询用户主账号ID请查看[账号信息](https://console.cloud.tencent.com/developer)中的账号ID栏。
        # @type AccountIds: Array
        # @param Permission: 操作，包括 `SHARE`，`CANCEL`。其中`SHARE`代表共享操作，`CANCEL`代表取消共享操作。
        # @type Permission: String

        attr_accessor :ImageId, :AccountIds, :Permission

        def initialize(imageid=nil, accountids=nil, permission=nil)
          @ImageId = imageid
          @AccountIds = accountids
          @Permission = permission
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @AccountIds = params['AccountIds']
          @Permission = params['Permission']
        end
      end

      # ModifyImageSharePermission返回参数结构体
      class ModifyImageSharePermissionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstanceDiskType请求参数结构体
      class ModifyInstanceDiskTypeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待操作的实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。
        # @type InstanceId: String
        # @param DataDisks: 实例数据盘配置信息，只需要指定要转换的目标云硬盘的介质类型，指定DiskType的值，当前只支持一个数据盘转化。只支持CDHPAID类型实例指定CdcId参数。
        # @type DataDisks: Array
        # @param SystemDisk: 实例系统盘配置信息，只需要指定要转换的目标云硬盘的介质类型，指定DiskType的值。只支持CDHPAID类型实例指定CdcId参数。
        # @type SystemDisk: :class:`Tencentcloud::Cvm.v20170312.models.SystemDisk`

        attr_accessor :InstanceId, :DataDisks, :SystemDisk

        def initialize(instanceid=nil, datadisks=nil, systemdisk=nil)
          @InstanceId = instanceid
          @DataDisks = datadisks
          @SystemDisk = systemdisk
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
        end
      end

      # ModifyInstanceDiskType返回参数结构体
      class ModifyInstanceDiskTypeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstancesAttribute请求参数结构体
      class ModifyInstancesAttributeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/api/213/15728) API返回值中的`InstanceId`获取。每次请求允许操作的实例数量上限是100。
        # @type InstanceIds: Array
        # @param InstanceName: 修改后实例名称。可任意命名，但不得超过60个字符。
        # @type InstanceName: String
        # @param UserData: 提供给实例使用的用户数据，需要以 base64 方式编码，支持的最大数据大小为 16 KB。关于获取此参数的详细介绍，请参阅 [Windows](https://cloud.tencent.com/document/product/213/17526) 和 [Linux](https://cloud.tencent.com/document/product/213/17525) 启动时运行命令。
        # @type UserData: String
        # @param SecurityGroups: 指定实例的修改后的安全组Id列表，子机将重新关联指定列表的安全组，原本关联的安全组会被解绑。
        # @type SecurityGroups: Array
        # @param CamRoleName: 给实例绑定用户角色，传空值为解绑操作
        # @type CamRoleName: String
        # @param HostName: 修改后实例的主机名。<li>点号（.）和短横线（-）不能作为 HostName 的首尾字符，不能连续使用。</li><li>Windows 实例：主机名字符长度为[2, 15]，允许字母（不限制大小写）、数字和短横线（-）组成，不支持点号（.），不能全是数字。</li><li>其他类型（Linux 等）实例：主机名字符长度为[2, 60]，允许支持多个点号，点之间为一段，每段允许字母（不限制大小写）、数字和短横线（-）组成。</li>注意点：修改主机名后实例会立即重启，重启后新的主机名生效。
        # @type HostName: String
        # @param DisableApiTermination: 实例销毁保护标志，表示是否允许通过api接口删除实例。取值范围：<li>true：表示开启实例保护，不允许通过api接口删除实例</li><li>false：表示关闭实例保护，允许通过api接口删除实例</li>默认取值：false。
        # @type DisableApiTermination: Boolean
        # @param CamRoleType: 角色类别，与CamRoleName搭配使用，该值可从CAM [ DescribeRoleList ](https://cloud.tencent.com/document/product/598/36223)或[ GetRole ](https://cloud.tencent.com/document/product/598/36221)接口返回RoleType字段获取，当前只接受user、system和service_linked三种类别。
        # 举例：一般CamRoleName中包含“LinkedRoleIn”（如TKE_QCSLinkedRoleInPrometheusService）时，DescribeRoleList和GetRole返回的RoleType为service_linked，则本参数也需要传递service_linked。
        # 该参数默认值为user，若CameRoleName为非service_linked类型，本参数可不传递。
        # @type CamRoleType: String
        # @param AutoReboot: 修改实例主机名是否自动重启实例，不传默认自动重启。
        # - true: 修改主机名，并自动重启实例；
        # - false: 修改主机名，不自动重启实例，需要手动重启使新主机名生效。
        # 注意点：本参数仅对修改主机名生效。
        # @type AutoReboot: Boolean

        attr_accessor :InstanceIds, :InstanceName, :UserData, :SecurityGroups, :CamRoleName, :HostName, :DisableApiTermination, :CamRoleType, :AutoReboot

        def initialize(instanceids=nil, instancename=nil, userdata=nil, securitygroups=nil, camrolename=nil, hostname=nil, disableapitermination=nil, camroletype=nil, autoreboot=nil)
          @InstanceIds = instanceids
          @InstanceName = instancename
          @UserData = userdata
          @SecurityGroups = securitygroups
          @CamRoleName = camrolename
          @HostName = hostname
          @DisableApiTermination = disableapitermination
          @CamRoleType = camroletype
          @AutoReboot = autoreboot
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @InstanceName = params['InstanceName']
          @UserData = params['UserData']
          @SecurityGroups = params['SecurityGroups']
          @CamRoleName = params['CamRoleName']
          @HostName = params['HostName']
          @DisableApiTermination = params['DisableApiTermination']
          @CamRoleType = params['CamRoleType']
          @AutoReboot = params['AutoReboot']
        end
      end

      # ModifyInstancesAttribute返回参数结构体
      class ModifyInstancesAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstancesChargeType请求参数结构体
      class ModifyInstancesChargeTypeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/api/213/15728)接口返回值中的`InstanceId`获取。每次请求批量实例的上限为30。
        # @type InstanceIds: Array
        # @param InstanceChargeType: 修改后实例[计费类型](https://cloud.tencent.com/document/product/213/2180)。<li> PREPAID：预付费，即包年包月。</li><li> POSTPAID_BY_HOUR：后付费，即按量付费。</li>
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 修改后预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。<dx-alert infotype="explain" title="">若指定实例的付费模式为预付费则该参数必传。</dx-alert>
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Cvm.v20170312.models.InstanceChargePrepaid`
        # @param ModifyPortableDataDisk: 是否同时切换弹性数据云盘计费模式。取值范围：<li> true：表示切换弹性数据云盘计费模式</li><li> false：表示不切换弹性数据云盘计费模式</li>默认取值：false。
        # @type ModifyPortableDataDisk: Boolean

        attr_accessor :InstanceIds, :InstanceChargeType, :InstanceChargePrepaid, :ModifyPortableDataDisk

        def initialize(instanceids=nil, instancechargetype=nil, instancechargeprepaid=nil, modifyportabledatadisk=nil)
          @InstanceIds = instanceids
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @ModifyPortableDataDisk = modifyportabledatadisk
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @ModifyPortableDataDisk = params['ModifyPortableDataDisk']
        end
      end

      # ModifyInstancesChargeType返回参数结构体
      class ModifyInstancesChargeTypeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstancesDisasterRecoverGroup请求参数结构体
      class ModifyInstancesDisasterRecoverGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过[ DescribeInstances ](https://cloud.tencent.com/document/api/213/15728)接口返回值中的`InstanceId`获取。每次请求批量实例的上限为100
        # @type InstanceIds: Array
        # @param DisasterRecoverGroupId: 分散置放群组ID，可使用[DescribeDisasterRecoverGroups](https://cloud.tencent.com/document/api/213/17810)接口获取
        # @type DisasterRecoverGroupId: String
        # @param Force: 是否强制更换实例宿主机。取值范围：<br><li>true：表示允许实例更换宿主机，允许重启实例。本地盘子机不支持指定此参数。</li><br><li>false：不允许实例更换宿主机，只在当前宿主机上加入置放群组。这可能导致更换置放群组失败。</li><br><br>默认取值：false
        # @type Force: Boolean

        attr_accessor :InstanceIds, :DisasterRecoverGroupId, :Force

        def initialize(instanceids=nil, disasterrecovergroupid=nil, force=nil)
          @InstanceIds = instanceids
          @DisasterRecoverGroupId = disasterrecovergroupid
          @Force = force
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @DisasterRecoverGroupId = params['DisasterRecoverGroupId']
          @Force = params['Force']
        end
      end

      # ModifyInstancesDisasterRecoverGroup返回参数结构体
      class ModifyInstancesDisasterRecoverGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstancesProject请求参数结构体
      class ModifyInstancesProjectRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) API返回值中的`InstanceId`获取。每次请求允许操作的实例数量上限是100。
        # @type InstanceIds: Array
        # @param ProjectId: 项目ID。项目可以使用[ AddProject ](https://cloud.tencent.com/document/api/651/81952)接口创建。可通过[ DescribeProject ](https://cloud.tencent.com/document/api/651/78725) 接口返回值中的`projectId`获取。后续使用[DescribeInstances](https://cloud.tencent.com/document/api/213/15728)接口查询实例时，项目ID可用于过滤结果。
        # @type ProjectId: Integer

        attr_accessor :InstanceIds, :ProjectId

        def initialize(instanceids=nil, projectid=nil)
          @InstanceIds = instanceids
          @ProjectId = projectid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @ProjectId = params['ProjectId']
        end
      end

      # ModifyInstancesProject返回参数结构体
      class ModifyInstancesProjectResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstancesRenewFlag请求参数结构体
      class ModifyInstancesRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/api/213/15728) API返回值中的`InstanceId`获取。每次请求允许操作的实例数量上限是100。
        # @type InstanceIds: Array
        # @param RenewFlag: 自动续费标识。取值范围：<br><li>NOTIFY_AND_AUTO_RENEW：通知过期且自动续费</li><li>NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费</li><li>DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费</li><br>若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
        # @type RenewFlag: String

        attr_accessor :InstanceIds, :RenewFlag

        def initialize(instanceids=nil, renewflag=nil)
          @InstanceIds = instanceids
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @RenewFlag = params['RenewFlag']
        end
      end

      # ModifyInstancesRenewFlag返回参数结构体
      class ModifyInstancesRenewFlagResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstancesVpcAttribute请求参数结构体
      class ModifyInstancesVpcAttributeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 待操作的实例ID数组。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。
        # @type InstanceIds: Array
        # @param VirtualPrivateCloud: 私有网络相关信息配置，通过该参数指定私有网络的ID，子网ID，私有网络ip等信息。<br><li>当指定私有网络ID和子网ID（子网必须在实例所在的可用区）与指定实例所在私有网络不一致时，会将实例迁移至指定的私有网络的子网下。</li><li>可通过`PrivateIpAddresses`指定私有网络子网IP，若需指定则所有已指定的实例均需要指定子网IP，此时`InstanceIds`与`PrivateIpAddresses`一一对应。</li><li>不指定`PrivateIpAddresses`时随机分配私有网络子网IP。</li>
        # @type VirtualPrivateCloud: :class:`Tencentcloud::Cvm.v20170312.models.VirtualPrivateCloud`
        # @param ForceStop: 是否对运行中的实例选择强制关机。默认为true。
        # @type ForceStop: Boolean
        # @param ReserveHostName: 是否保留主机名。默认为false。
        # @type ReserveHostName: Boolean

        attr_accessor :InstanceIds, :VirtualPrivateCloud, :ForceStop, :ReserveHostName

        def initialize(instanceids=nil, virtualprivatecloud=nil, forcestop=nil, reservehostname=nil)
          @InstanceIds = instanceids
          @VirtualPrivateCloud = virtualprivatecloud
          @ForceStop = forcestop
          @ReserveHostName = reservehostname
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['VirtualPrivateCloud'].nil?
            @VirtualPrivateCloud = VirtualPrivateCloud.new
            @VirtualPrivateCloud.deserialize(params['VirtualPrivateCloud'])
          end
          @ForceStop = params['ForceStop']
          @ReserveHostName = params['ReserveHostName']
        end
      end

      # ModifyInstancesVpcAttribute返回参数结构体
      class ModifyInstancesVpcAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyKeyPairAttribute请求参数结构体
      class ModifyKeyPairAttributeRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 密钥对ID。可以通过以下方式获取可用的密钥 ID：
        # <li>通过登录[控制台](https://console.cloud.tencent.com/cvm/sshkey)查询密钥 ID。</li>
        # <li>通过调用接口 [DescribeKeyPairs](https://cloud.tencent.com/document/api/213/9403) ，取返回信息中的 `KeyId` 获取密钥对 ID。</li>
        # @type KeyId: String
        # @param KeyName: 修改后的密钥对名称，可由数字，字母和下划线组成，长度不超过25个字符。
        # @type KeyName: String
        # @param Description: 修改后的密钥对描述信息。可任意命名，但不得超过60个字符。
        # @type Description: String

        attr_accessor :KeyId, :KeyName, :Description

        def initialize(keyid=nil, keyname=nil, description=nil)
          @KeyId = keyid
          @KeyName = keyname
          @Description = description
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @KeyName = params['KeyName']
          @Description = params['Description']
        end
      end

      # ModifyKeyPairAttribute返回参数结构体
      class ModifyKeyPairAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLaunchTemplateDefaultVersion请求参数结构体
      class ModifyLaunchTemplateDefaultVersionRequest < TencentCloud::Common::AbstractModel
        # @param LaunchTemplateId: 启动模板ID。可通过 [DescribeLaunchTemplates](https://cloud.tencent.com/document/api/213/66322) 接口返回值中的`LaunchTemplateId `获取。
        # @type LaunchTemplateId: String
        # @param DefaultVersion: 待设置的默认版本号。可通过 [DescribeLaunchTemplateVersions](https://cloud.tencent.com/document/api/213/66323) 接口返回值中的`LaunchTemplateVersion`获取。
        # @type DefaultVersion: Integer

        attr_accessor :LaunchTemplateId, :DefaultVersion

        def initialize(launchtemplateid=nil, defaultversion=nil)
          @LaunchTemplateId = launchtemplateid
          @DefaultVersion = defaultversion
        end

        def deserialize(params)
          @LaunchTemplateId = params['LaunchTemplateId']
          @DefaultVersion = params['DefaultVersion']
        end
      end

      # ModifyLaunchTemplateDefaultVersion返回参数结构体
      class ModifyLaunchTemplateDefaultVersionResponse < TencentCloud::Common::AbstractModel
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

      # 描述了单台实例操作次数限制
      class OperationCountLimit < TencentCloud::Common::AbstractModel
        # @param Operation: 实例操作。取值范围：<br><li>`INSTANCE_DEGRADE`：降配操作</li><li>`INTERNET_CHARGE_TYPE_CHANGE`：修改网络带宽计费模式</li>
        # @type Operation: String
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param CurrentCount: 当前已使用次数，如果返回值为-1表示该操作无次数限制。
        # @type CurrentCount: Integer
        # @param LimitCount: 操作次数最高额度，如果返回值为-1表示该操作无次数限制，如果返回值为0表示不支持调整配置。
        # @type LimitCount: Integer

        attr_accessor :Operation, :InstanceId, :CurrentCount, :LimitCount

        def initialize(operation=nil, instanceid=nil, currentcount=nil, limitcount=nil)
          @Operation = operation
          @InstanceId = instanceid
          @CurrentCount = currentcount
          @LimitCount = limitcount
        end

        def deserialize(params)
          @Operation = params['Operation']
          @InstanceId = params['InstanceId']
          @CurrentCount = params['CurrentCount']
          @LimitCount = params['LimitCount']
        end
      end

      # 操作系统支持的类型。
      class OsVersion < TencentCloud::Common::AbstractModel
        # @param OsName: 操作系统类型
        # @type OsName: String
        # @param OsVersions: 支持的操作系统版本
        # @type OsVersions: Array
        # @param Architecture: 支持的操作系统架构
        # @type Architecture: Array

        attr_accessor :OsName, :OsVersions, :Architecture

        def initialize(osname=nil, osversions=nil, architecture=nil)
          @OsName = osname
          @OsVersions = osversions
          @Architecture = architecture
        end

        def deserialize(params)
          @OsName = params['OsName']
          @OsVersions = params['OsVersions']
          @Architecture = params['Architecture']
        end
      end

      # 描述了实例的抽象位置，包括其所在的可用区，所属的项目，宿主机（仅专用宿主机产品可用），母机IP等
      class Placement < TencentCloud::Common::AbstractModel
        # @param Zone: 实例所属的可用区名称。该参数可以通过调用  [DescribeZones](https://cloud.tencent.com/document/product/213/15707) 的返回值中的Zone字段来获取。
        # @type Zone: String
        # @param ProjectId: 实例所属项目ID。该参数可以通过调用 [DescribeProject](https://cloud.tencent.com/document/api/651/78725) 的返回值中的 `ProjectId` 字段来获取。默认取值0，表示默认项目。
        # @type ProjectId: Integer
        # @param HostIds: 实例所属的专用宿主机ID列表，仅用于入参。如果您有购买专用宿主机并且指定了该参数，则您购买的实例就会随机的部署在这些专用宿主机上。该参数可以通过调用 [DescribeHosts](https://cloud.tencent.com/document/api/213/16474) 的返回值中的 `HostId` 字段来获取。
        # @type HostIds: Array
        # @param HostId: 实例所属的专用宿主机ID，仅用于出参。
        # @type HostId: String

        attr_accessor :Zone, :ProjectId, :HostIds, :HostId

        def initialize(zone=nil, projectid=nil, hostids=nil, hostid=nil)
          @Zone = zone
          @ProjectId = projectid
          @HostIds = hostids
          @HostId = hostid
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ProjectId = params['ProjectId']
          @HostIds = params['HostIds']
          @HostId = params['HostId']
        end
      end

      # 后付费实例配额
      class PostPaidQuota < TencentCloud::Common::AbstractModel
        # @param UsedQuota: 累计已使用配额
        # @type UsedQuota: Integer
        # @param RemainingQuota: 剩余配额
        # @type RemainingQuota: Integer
        # @param TotalQuota: 总配额
        # @type TotalQuota: Integer
        # @param Zone: 可用区
        # @type Zone: String

        attr_accessor :UsedQuota, :RemainingQuota, :TotalQuota, :Zone

        def initialize(usedquota=nil, remainingquota=nil, totalquota=nil, zone=nil)
          @UsedQuota = usedquota
          @RemainingQuota = remainingquota
          @TotalQuota = totalquota
          @Zone = zone
        end

        def deserialize(params)
          @UsedQuota = params['UsedQuota']
          @RemainingQuota = params['RemainingQuota']
          @TotalQuota = params['TotalQuota']
          @Zone = params['Zone']
        end
      end

      # 预付费实例配额
      class PrePaidQuota < TencentCloud::Common::AbstractModel
        # @param UsedQuota: 当月已使用配额
        # @type UsedQuota: Integer
        # @param OnceQuota: 单次购买最大数量
        # @type OnceQuota: Integer
        # @param RemainingQuota: 剩余配额
        # @type RemainingQuota: Integer
        # @param TotalQuota: 总配额
        # @type TotalQuota: Integer
        # @param Zone: 可用区
        # @type Zone: String

        attr_accessor :UsedQuota, :OnceQuota, :RemainingQuota, :TotalQuota, :Zone

        def initialize(usedquota=nil, oncequota=nil, remainingquota=nil, totalquota=nil, zone=nil)
          @UsedQuota = usedquota
          @OnceQuota = oncequota
          @RemainingQuota = remainingquota
          @TotalQuota = totalquota
          @Zone = zone
        end

        def deserialize(params)
          @UsedQuota = params['UsedQuota']
          @OnceQuota = params['OnceQuota']
          @RemainingQuota = params['RemainingQuota']
          @TotalQuota = params['TotalQuota']
          @Zone = params['Zone']
        end
      end

      # 价格
      class Price < TencentCloud::Common::AbstractModel
        # @param InstancePrice: 描述了实例价格。
        # @type InstancePrice: :class:`Tencentcloud::Cvm.v20170312.models.ItemPrice`
        # @param BandwidthPrice: 描述了网络价格。
        # @type BandwidthPrice: :class:`Tencentcloud::Cvm.v20170312.models.ItemPrice`

        attr_accessor :InstancePrice, :BandwidthPrice

        def initialize(instanceprice=nil, bandwidthprice=nil)
          @InstancePrice = instanceprice
          @BandwidthPrice = bandwidthprice
        end

        def deserialize(params)
          unless params['InstancePrice'].nil?
            @InstancePrice = ItemPrice.new
            @InstancePrice.deserialize(params['InstancePrice'])
          end
          unless params['BandwidthPrice'].nil?
            @BandwidthPrice = ItemPrice.new
            @BandwidthPrice.deserialize(params['BandwidthPrice'])
          end
        end
      end

      # ProgramFpgaImage请求参数结构体
      class ProgramFpgaImageRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例的ID信息。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。
        # @type InstanceId: String
        # @param FPGAUrl: FPGA镜像文件的COS URL地址。
        # @type FPGAUrl: String
        # @param DBDFs: 实例上FPGA卡的DBDF号，不填默认烧录FPGA镜像到实例所拥有的所有FPGA卡。
        # @type DBDFs: Array
        # @param DryRun: 试运行，不会执行实际的烧录动作，默认为False。
        # @type DryRun: Boolean

        attr_accessor :InstanceId, :FPGAUrl, :DBDFs, :DryRun

        def initialize(instanceid=nil, fpgaurl=nil, dbdfs=nil, dryrun=nil)
          @InstanceId = instanceid
          @FPGAUrl = fpgaurl
          @DBDFs = dbdfs
          @DryRun = dryrun
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FPGAUrl = params['FPGAUrl']
          @DBDFs = params['DBDFs']
          @DryRun = params['DryRun']
        end
      end

      # ProgramFpgaImage返回参数结构体
      class ProgramFpgaImageResponse < TencentCloud::Common::AbstractModel
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

      # PurchaseReservedInstancesOffering请求参数结构体
      class PurchaseReservedInstancesOfferingRequest < TencentCloud::Common::AbstractModel
        # @param InstanceCount: 购买预留实例计费数量
        # @type InstanceCount: Integer
        # @param ReservedInstancesOfferingId: 预留实例计费配置ID
        # @type ReservedInstancesOfferingId: String
        # @param DryRun: 试运行
        # @type DryRun: Boolean
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。<br>更多详细信息请参阅：如何保证幂等性
        # @type ClientToken: String
        # @param ReservedInstanceName: 预留实例显示名称。<br><li>不指定实例显示名称则默认显示‘未命名’。</li><li>最多支持60个字符（包含模式串）。</li>
        # @type ReservedInstanceName: String

        attr_accessor :InstanceCount, :ReservedInstancesOfferingId, :DryRun, :ClientToken, :ReservedInstanceName

        def initialize(instancecount=nil, reservedinstancesofferingid=nil, dryrun=nil, clienttoken=nil, reservedinstancename=nil)
          @InstanceCount = instancecount
          @ReservedInstancesOfferingId = reservedinstancesofferingid
          @DryRun = dryrun
          @ClientToken = clienttoken
          @ReservedInstanceName = reservedinstancename
        end

        def deserialize(params)
          @InstanceCount = params['InstanceCount']
          @ReservedInstancesOfferingId = params['ReservedInstancesOfferingId']
          @DryRun = params['DryRun']
          @ClientToken = params['ClientToken']
          @ReservedInstanceName = params['ReservedInstanceName']
        end
      end

      # PurchaseReservedInstancesOffering返回参数结构体
      class PurchaseReservedInstancesOfferingResponse < TencentCloud::Common::AbstractModel
        # @param ReservedInstanceId: 已购买预留实例计费ID
        # @type ReservedInstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReservedInstanceId, :RequestId

        def initialize(reservedinstanceid=nil, requestid=nil)
          @ReservedInstanceId = reservedinstanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @ReservedInstanceId = params['ReservedInstanceId']
          @RequestId = params['RequestId']
        end
      end

      # RebootInstances请求参数结构体
      class RebootInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。每次请求批量实例的上限为100。
        # @type InstanceIds: Array
        # @param ForceReboot: 本参数已弃用，推荐使用StopType，不可以与参数StopType同时使用。表示是否在正常重启失败后选择强制重启实例。取值范围：<br><li>true：表示在正常重启失败后进行强制重启</li><li>false：表示在正常重启失败后不进行强制重启</li><br>默认取值：false。
        # @type ForceReboot: Boolean
        # @param StopType: 关机类型。取值范围：<br><li>SOFT：表示软关机</li><li>HARD：表示硬关机</li><li>SOFT_FIRST：表示优先软关机，失败再执行硬关机</li><br>默认取值：SOFT。
        # @type StopType: String

        attr_accessor :InstanceIds, :ForceReboot, :StopType
        extend Gem::Deprecate
        deprecate :ForceReboot, :none, 2025, 7
        deprecate :ForceReboot=, :none, 2025, 7

        def initialize(instanceids=nil, forcereboot=nil, stoptype=nil)
          @InstanceIds = instanceids
          @ForceReboot = forcereboot
          @StopType = stoptype
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @ForceReboot = params['ForceReboot']
          @StopType = params['StopType']
        end
      end

      # RebootInstances返回参数结构体
      class RebootInstancesResponse < TencentCloud::Common::AbstractModel
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

      # 地域信息
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域名称，例如，ap-guangzhou
        # @type Region: String
        # @param RegionName: 地域描述，例如，华南地区(广州)
        # @type RegionName: String
        # @param RegionState: 地域是否可用状态
        # @type RegionState: String

        attr_accessor :Region, :RegionName, :RegionState

        def initialize(region=nil, regionname=nil, regionstate=nil)
          @Region = region
          @RegionName = regionname
          @RegionState = regionstate
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionState = params['RegionState']
        end
      end

      # RemoveChcAssistVpc请求参数结构体
      class RemoveChcAssistVpcRequest < TencentCloud::Common::AbstractModel
        # @param ChcIds: CHC物理服务器Id。
        # @type ChcIds: Array

        attr_accessor :ChcIds

        def initialize(chcids=nil)
          @ChcIds = chcids
        end

        def deserialize(params)
          @ChcIds = params['ChcIds']
        end
      end

      # RemoveChcAssistVpc返回参数结构体
      class RemoveChcAssistVpcResponse < TencentCloud::Common::AbstractModel
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

      # RemoveChcDeployVpc请求参数结构体
      class RemoveChcDeployVpcRequest < TencentCloud::Common::AbstractModel
        # @param ChcIds: CHC物理服务器Id。
        # @type ChcIds: Array

        attr_accessor :ChcIds

        def initialize(chcids=nil)
          @ChcIds = chcids
        end

        def deserialize(params)
          @ChcIds = params['ChcIds']
        end
      end

      # RemoveChcDeployVpc返回参数结构体
      class RemoveChcDeployVpcResponse < TencentCloud::Common::AbstractModel
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

      # RenewHosts请求参数结构体
      class RenewHostsRequest < TencentCloud::Common::AbstractModel
        # @param HostIds: 一个或多个待操作的CDH实例ID。每次请求的CDH实例的上限为100。
        # @type HostIds: Array
        # @param HostChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type HostChargePrepaid: :class:`Tencentcloud::Cvm.v20170312.models.ChargePrepaid`

        attr_accessor :HostIds, :HostChargePrepaid

        def initialize(hostids=nil, hostchargeprepaid=nil)
          @HostIds = hostids
          @HostChargePrepaid = hostchargeprepaid
        end

        def deserialize(params)
          @HostIds = params['HostIds']
          unless params['HostChargePrepaid'].nil?
            @HostChargePrepaid = ChargePrepaid.new
            @HostChargePrepaid.deserialize(params['HostChargePrepaid'])
          end
        end
      end

      # RenewHosts返回参数结构体
      class RenewHostsResponse < TencentCloud::Common::AbstractModel
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

      # RenewInstances请求参数结构体
      class RenewInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。每次请求批量实例的上限为100。
        # @type InstanceIds: Array
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的续费时长、是否设置自动续费等属性。<dx-alert infotype="explain" title="">
        # 包年包月实例该参数为必传参数。</dx-alert>
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Cvm.v20170312.models.InstanceChargePrepaid`
        # @param RenewPortableDataDisk: 是否续费弹性数据盘。取值范围：<br><li>true：表示续费包年包月实例同时续费其挂载的弹性数据盘</li><li>false：表示续费包年包月实例同时不再续费其挂载的弹性数据盘</li><br>默认取值：true。
        # @type RenewPortableDataDisk: Boolean

        attr_accessor :InstanceIds, :InstanceChargePrepaid, :RenewPortableDataDisk

        def initialize(instanceids=nil, instancechargeprepaid=nil, renewportabledatadisk=nil)
          @InstanceIds = instanceids
          @InstanceChargePrepaid = instancechargeprepaid
          @RenewPortableDataDisk = renewportabledatadisk
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @RenewPortableDataDisk = params['RenewPortableDataDisk']
        end
      end

      # RenewInstances返回参数结构体
      class RenewInstancesResponse < TencentCloud::Common::AbstractModel
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

      # RepairTaskControl请求参数结构体
      class RepairTaskControlRequest < TencentCloud::Common::AbstractModel
        # @param Product: 待授权任务实例对应的产品类型，支持取值：

        # - `CVM`：云服务器
        # - `CDH`：专用宿主机
        # - `CPM2.0`：裸金属云服务器
        # @type Product: String
        # @param InstanceIds: 指定待操作的实例ID列表，仅允许对列表中的实例ID相关的维修任务发起授权，可通过 [DescribeTaskInfo](https://cloud.tencent.com/document/api/213/87933) 接口返回值中的`InstanceId`获取。
        # @type InstanceIds: Array
        # @param TaskId: 指定待操作的维修任务ID，可通过 [DescribeTaskInfo](https://cloud.tencent.com/document/api/213/87933) 接口返回值中的`TaskId`获取。
        # @type TaskId: String
        # @param Operate: 操作类型，当前只支持传入`AuthorizeRepair`。
        # @type Operate: String
        # @param OrderAuthTime: 预约授权时间，形如`2023-01-01 12:00:00`。预约时间需晚于当前时间至少5分钟，且在48小时之内。
        # @type OrderAuthTime: String
        # @param TaskSubMethod: 附加的授权处理策略，不传或为空时，按默认授权方式进行处理。对于支持弃盘迁移授权的维修任务，当且仅当传入`LossyLocal`时，代表本次授权可允许发起弃盘迁移。

        # 注意：
        # 1. 指定`TaskSubMethod`为`LossyLocal`调用接口发起**弃盘迁移授权**时，本地盘实例的**所有本地盘数据都会清空**，相当于**重新部署本地盘实例**。
        # 2. 对于非本地盘实例，或不支持弃盘迁移选项的任务，指定`TaskSubMethod`为`LossyLocal`时接口不会报错，不过后端会自动忽略该参数。
        # 3. 特别的：如果本地盘实例系统盘是CBS云盘，并且`/etc/fstab`里之前配置了本地盘的自动挂载项，建议可根据业务侧的实际需求，评估是否在对应挂载项追加上`nofail`参数（代表对应挂载点挂载失败不阻塞开机流程）或注释对应的挂载路径。否则授权弃盘迁移后，对应本地盘数据已清空，自动挂载失败会导致实例开机流程失败进入救援模式。具体可参考 [Linux 实例：/etc/fstab 配置错误导致无法登录](https://cloud.tencent.com/document/product/213/72039)。
        # @type TaskSubMethod: String

        attr_accessor :Product, :InstanceIds, :TaskId, :Operate, :OrderAuthTime, :TaskSubMethod

        def initialize(product=nil, instanceids=nil, taskid=nil, operate=nil, orderauthtime=nil, tasksubmethod=nil)
          @Product = product
          @InstanceIds = instanceids
          @TaskId = taskid
          @Operate = operate
          @OrderAuthTime = orderauthtime
          @TaskSubMethod = tasksubmethod
        end

        def deserialize(params)
          @Product = params['Product']
          @InstanceIds = params['InstanceIds']
          @TaskId = params['TaskId']
          @Operate = params['Operate']
          @OrderAuthTime = params['OrderAuthTime']
          @TaskSubMethod = params['TaskSubMethod']
        end
      end

      # RepairTaskControl返回参数结构体
      class RepairTaskControlResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 已完成授权的维修任务ID。
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

      # 描述维修任务的相关信息
      class RepairTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 维修任务ID
        # @type TaskId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Alias: 实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param TaskTypeId: 任务类型ID，与任务类型中文名的对应关系如下：

        # - `101`：实例运行隐患
        # - `102`：实例运行异常
        # - `103`：实例硬盘异常
        # - `104`：实例网络连接异常
        # - `105`：实例运行预警
        # - `106`：实例硬盘预警
        # - `107`：实例维护升级

        # 各任务类型的具体含义，可参考 [维修任务分类](https://cloud.tencent.com/document/product/213/67789#.E7.BB.B4.E4.BF.AE.E4.BB.BB.E5.8A.A1.E5.88.86.E7.B1.BB)。
        # @type TaskTypeId: Integer
        # @param TaskTypeName: 任务类型中文名
        # @type TaskTypeName: String
        # @param TaskStatus: 任务状态ID，与任务状态中文名的对应关系如下：

        # - `1`：待授权
        # - `2`：处理中
        # - `3`：已结束
        # - `4`：已预约
        # - `5`：已取消
        # - `6`：已避免

        # 各任务状态的具体含义，可参考 [任务状态](https://cloud.tencent.com/document/product/213/67789#.E4.BB.BB.E5.8A.A1.E7.8A.B6.E6.80.81)。
        # @type TaskStatus: Integer
        # @param DeviceStatus: 设备状态ID，与设备状态中文名的对应关系如下：

        # - `1`：故障中
        # - `2`：处理中
        # - `3`：正常
        # - `4`：已预约
        # - `5`：已取消
        # - `6`：已避免
        # @type DeviceStatus: Integer
        # @param OperateStatus: 操作状态ID，与操作状态中文名的对应关系如下：

        # - `1`：未授权
        # - `2`：已授权
        # - `3`：已处理
        # - `4`：已预约
        # - `5`：已取消
        # - `6`：已避免
        # @type OperateStatus: Integer
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param AuthTime: 任务授权时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthTime: String
        # @param EndTime: 任务结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param TaskDetail: 任务详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskDetail: String
        # @param Zone: 可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param VpcId: 所在私有网络ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param VpcName: 所在私有网络名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcName: String
        # @param SubnetId: 所在子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param SubnetName: 所在子网名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetName: String
        # @param WanIp: 实例公网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanIp: String
        # @param LanIp: 实例内网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LanIp: String
        # @param Product: 产品类型，支持取值：

        # - `CVM`：云服务器
        # - `CDH`：专用宿主机
        # - `CPM2.0`：裸金属云服务器
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Product: String
        # @param TaskSubType: 任务子类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskSubType: String
        # @param AuthType: 任务授权类型，当前`AuthType`和维修任务提供的授权选项的对应关系如下：

        # - `"1"`：仅提供【在线迁移授权】
        # - `"2"`：仅提供【停机授权】
        # - `"3"`：仅提供【在线换盘授权】
        # - `"4"`：提供【停机换盘授权】（默认）、【弃盘迁移授权】（可选）
        # - `"5"`：提供【停机授权】（默认）、【弃盘迁移授权】（可选）
        # - `"6"`：仅提供【在线维护授权】
        # - `"7"`：提供【在线维护授权】（默认）、【停机授权】（可选）
        # - `"8"`：仅提供【弃盘迁移授权】
        # @type AuthType: Integer
        # @param AuthSource: 授权渠道，支持取值：

        # - `Waiting_auth`：待授权
        # - `Customer_auth`：客户操作授权
        # - `System_mandatory_auth`：系统默认授权
        # - `Pre_policy_auth`：预置策略授权
        # @type AuthSource: String

        attr_accessor :TaskId, :InstanceId, :Alias, :TaskTypeId, :TaskTypeName, :TaskStatus, :DeviceStatus, :OperateStatus, :CreateTime, :AuthTime, :EndTime, :TaskDetail, :Zone, :Region, :VpcId, :VpcName, :SubnetId, :SubnetName, :WanIp, :LanIp, :Product, :TaskSubType, :AuthType, :AuthSource

        def initialize(taskid=nil, instanceid=nil, _alias=nil, tasktypeid=nil, tasktypename=nil, taskstatus=nil, devicestatus=nil, operatestatus=nil, createtime=nil, authtime=nil, endtime=nil, taskdetail=nil, zone=nil, region=nil, vpcid=nil, vpcname=nil, subnetid=nil, subnetname=nil, wanip=nil, lanip=nil, product=nil, tasksubtype=nil, authtype=nil, authsource=nil)
          @TaskId = taskid
          @InstanceId = instanceid
          @Alias = _alias
          @TaskTypeId = tasktypeid
          @TaskTypeName = tasktypename
          @TaskStatus = taskstatus
          @DeviceStatus = devicestatus
          @OperateStatus = operatestatus
          @CreateTime = createtime
          @AuthTime = authtime
          @EndTime = endtime
          @TaskDetail = taskdetail
          @Zone = zone
          @Region = region
          @VpcId = vpcid
          @VpcName = vpcname
          @SubnetId = subnetid
          @SubnetName = subnetname
          @WanIp = wanip
          @LanIp = lanip
          @Product = product
          @TaskSubType = tasksubtype
          @AuthType = authtype
          @AuthSource = authsource
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @InstanceId = params['InstanceId']
          @Alias = params['Alias']
          @TaskTypeId = params['TaskTypeId']
          @TaskTypeName = params['TaskTypeName']
          @TaskStatus = params['TaskStatus']
          @DeviceStatus = params['DeviceStatus']
          @OperateStatus = params['OperateStatus']
          @CreateTime = params['CreateTime']
          @AuthTime = params['AuthTime']
          @EndTime = params['EndTime']
          @TaskDetail = params['TaskDetail']
          @Zone = params['Zone']
          @Region = params['Region']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
          @WanIp = params['WanIp']
          @LanIp = params['LanIp']
          @Product = params['Product']
          @TaskSubType = params['TaskSubType']
          @AuthType = params['AuthType']
          @AuthSource = params['AuthSource']
        end
      end

      # 预留实例静态配置信息。预留实例当前只针对国际站白名单用户开放。
      class ReservedInstanceConfigInfoItem < TencentCloud::Common::AbstractModel
        # @param Type: 实例规格。
        # @type Type: String
        # @param TypeName: 实例规格名称。
        # @type TypeName: String
        # @param Order: 优先级。
        # @type Order: Integer
        # @param InstanceFamilies: 实例族信息列表。
        # @type InstanceFamilies: Array

        attr_accessor :Type, :TypeName, :Order, :InstanceFamilies

        def initialize(type=nil, typename=nil, order=nil, instancefamilies=nil)
          @Type = type
          @TypeName = typename
          @Order = order
          @InstanceFamilies = instancefamilies
        end

        def deserialize(params)
          @Type = params['Type']
          @TypeName = params['TypeName']
          @Order = params['Order']
          unless params['InstanceFamilies'].nil?
            @InstanceFamilies = []
            params['InstanceFamilies'].each do |i|
              reservedinstancefamilyitem_tmp = ReservedInstanceFamilyItem.new
              reservedinstancefamilyitem_tmp.deserialize(i)
              @InstanceFamilies << reservedinstancefamilyitem_tmp
            end
          end
        end
      end

      # 预留实例相关实例族信息。预留实例当前只针对国际站白名单用户开放。
      class ReservedInstanceFamilyItem < TencentCloud::Common::AbstractModel
        # @param InstanceFamily: 实例族。
        # @type InstanceFamily: String
        # @param Order: 优先级。
        # @type Order: Integer
        # @param InstanceTypes: 实例类型信息列表。
        # @type InstanceTypes: Array

        attr_accessor :InstanceFamily, :Order, :InstanceTypes

        def initialize(instancefamily=nil, order=nil, instancetypes=nil)
          @InstanceFamily = instancefamily
          @Order = order
          @InstanceTypes = instancetypes
        end

        def deserialize(params)
          @InstanceFamily = params['InstanceFamily']
          @Order = params['Order']
          unless params['InstanceTypes'].nil?
            @InstanceTypes = []
            params['InstanceTypes'].each do |i|
              reservedinstancetypeitem_tmp = ReservedInstanceTypeItem.new
              reservedinstancetypeitem_tmp.deserialize(i)
              @InstanceTypes << reservedinstancetypeitem_tmp
            end
          end
        end
      end

      # 预留实例相关价格信息。预留实例当前只针对国际站白名单用户开放。
      class ReservedInstancePrice < TencentCloud::Common::AbstractModel
        # @param OriginalFixedPrice: 预支合计费用的原价，单位：元。
        # @type OriginalFixedPrice: Float
        # @param DiscountFixedPrice: 预支合计费用的折扣价，单位：元。
        # @type DiscountFixedPrice: Float
        # @param OriginalUsagePrice: 后续合计费用的原价，单位：元/小时
        # @type OriginalUsagePrice: Float
        # @param DiscountUsagePrice: 后续合计费用的折扣价，单位：元/小时
        # @type DiscountUsagePrice: Float
        # @param FixedPriceDiscount: 预支费用的折扣，如20.0代表2折。 注意：此字段可能返回 null，表示取不到有效值。
        # @type FixedPriceDiscount: Float
        # @param UsagePriceDiscount: 后续费用的折扣，如20.0代表2折。 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsagePriceDiscount: Float

        attr_accessor :OriginalFixedPrice, :DiscountFixedPrice, :OriginalUsagePrice, :DiscountUsagePrice, :FixedPriceDiscount, :UsagePriceDiscount

        def initialize(originalfixedprice=nil, discountfixedprice=nil, originalusageprice=nil, discountusageprice=nil, fixedpricediscount=nil, usagepricediscount=nil)
          @OriginalFixedPrice = originalfixedprice
          @DiscountFixedPrice = discountfixedprice
          @OriginalUsagePrice = originalusageprice
          @DiscountUsagePrice = discountusageprice
          @FixedPriceDiscount = fixedpricediscount
          @UsagePriceDiscount = usagepricediscount
        end

        def deserialize(params)
          @OriginalFixedPrice = params['OriginalFixedPrice']
          @DiscountFixedPrice = params['DiscountFixedPrice']
          @OriginalUsagePrice = params['OriginalUsagePrice']
          @DiscountUsagePrice = params['DiscountUsagePrice']
          @FixedPriceDiscount = params['FixedPriceDiscount']
          @UsagePriceDiscount = params['UsagePriceDiscount']
        end
      end

      # 基于付费类型的预留实例相关价格信息。预留实例当前只针对国际站白名单用户开放。
      class ReservedInstancePriceItem < TencentCloud::Common::AbstractModel
        # @param OfferingType: 付费类型，如："All Upfront","Partial Upfront","No Upfront"
        # @type OfferingType: String
        # @param FixedPrice: 预支合计费用，单位：元。
        # @type FixedPrice: Float
        # @param UsagePrice: 后续合计费用，单位：元/小时
        # @type UsagePrice: Float
        # @param ReservedInstancesOfferingId: 预留实例配置ID
        # @type ReservedInstancesOfferingId: String
        # @param Zone: 预留实例计费可购买的可用区。
        # @type Zone: String
        # @param Duration: 预留实例计费【有效期】即预留实例计费购买时长。形如：31536000。
        # 计量单位：秒
        # @type Duration: Integer
        # @param ProductDescription: 预留实例计费的平台描述（即操作系统）。形如：Linux。
        # 返回项： Linux 。
        # @type ProductDescription: String
        # @param DiscountUsagePrice: 预支合计费用，单位：元。
        # @type DiscountUsagePrice: Float
        # @param DiscountFixedPrice: 后续合计费用的折扣价，单位：元/小时
        # @type DiscountFixedPrice: Float

        attr_accessor :OfferingType, :FixedPrice, :UsagePrice, :ReservedInstancesOfferingId, :Zone, :Duration, :ProductDescription, :DiscountUsagePrice, :DiscountFixedPrice

        def initialize(offeringtype=nil, fixedprice=nil, usageprice=nil, reservedinstancesofferingid=nil, zone=nil, duration=nil, productdescription=nil, discountusageprice=nil, discountfixedprice=nil)
          @OfferingType = offeringtype
          @FixedPrice = fixedprice
          @UsagePrice = usageprice
          @ReservedInstancesOfferingId = reservedinstancesofferingid
          @Zone = zone
          @Duration = duration
          @ProductDescription = productdescription
          @DiscountUsagePrice = discountusageprice
          @DiscountFixedPrice = discountfixedprice
        end

        def deserialize(params)
          @OfferingType = params['OfferingType']
          @FixedPrice = params['FixedPrice']
          @UsagePrice = params['UsagePrice']
          @ReservedInstancesOfferingId = params['ReservedInstancesOfferingId']
          @Zone = params['Zone']
          @Duration = params['Duration']
          @ProductDescription = params['ProductDescription']
          @DiscountUsagePrice = params['DiscountUsagePrice']
          @DiscountFixedPrice = params['DiscountFixedPrice']
        end
      end

      # 预留实例类型信息。预留实例当前只针对国际站白名单用户开放。
      class ReservedInstanceTypeItem < TencentCloud::Common::AbstractModel
        # @param InstanceType: 实例类型。
        # @type InstanceType: String
        # @param Cpu: CPU核数。
        # @type Cpu: Integer
        # @param Memory: 内存大小。
        # @type Memory: Integer
        # @param Gpu: GPU数量。
        # @type Gpu: Integer
        # @param Fpga: FPGA数量。
        # @type Fpga: Integer
        # @param StorageBlock: 本地存储块数量。
        # @type StorageBlock: Integer
        # @param NetworkCard: 网卡数。
        # @type NetworkCard: Integer
        # @param MaxBandwidth: 最大带宽。
        # @type MaxBandwidth: Float
        # @param Frequency: 主频。
        # @type Frequency: String
        # @param CpuModelName: CPU型号名称。
        # @type CpuModelName: String
        # @param Pps: 包转发率。
        # @type Pps: Integer
        # @param Externals: 外部信息。
        # @type Externals: :class:`Tencentcloud::Cvm.v20170312.models.Externals`
        # @param Remark: 备注信息。
        # @type Remark: String
        # @param Prices: 预留实例配置价格信息。
        # @type Prices: Array

        attr_accessor :InstanceType, :Cpu, :Memory, :Gpu, :Fpga, :StorageBlock, :NetworkCard, :MaxBandwidth, :Frequency, :CpuModelName, :Pps, :Externals, :Remark, :Prices

        def initialize(instancetype=nil, cpu=nil, memory=nil, gpu=nil, fpga=nil, storageblock=nil, networkcard=nil, maxbandwidth=nil, frequency=nil, cpumodelname=nil, pps=nil, externals=nil, remark=nil, prices=nil)
          @InstanceType = instancetype
          @Cpu = cpu
          @Memory = memory
          @Gpu = gpu
          @Fpga = fpga
          @StorageBlock = storageblock
          @NetworkCard = networkcard
          @MaxBandwidth = maxbandwidth
          @Frequency = frequency
          @CpuModelName = cpumodelname
          @Pps = pps
          @Externals = externals
          @Remark = remark
          @Prices = prices
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Gpu = params['Gpu']
          @Fpga = params['Fpga']
          @StorageBlock = params['StorageBlock']
          @NetworkCard = params['NetworkCard']
          @MaxBandwidth = params['MaxBandwidth']
          @Frequency = params['Frequency']
          @CpuModelName = params['CpuModelName']
          @Pps = params['Pps']
          unless params['Externals'].nil?
            @Externals = Externals.new
            @Externals.deserialize(params['Externals'])
          end
          @Remark = params['Remark']
          unless params['Prices'].nil?
            @Prices = []
            params['Prices'].each do |i|
              reservedinstancepriceitem_tmp = ReservedInstancePriceItem.new
              reservedinstancepriceitem_tmp.deserialize(i)
              @Prices << reservedinstancepriceitem_tmp
            end
          end
        end
      end

      # 描述可购买预留实例计费信息
      class ReservedInstancesOffering < TencentCloud::Common::AbstractModel
        # @param Zone: 预留实例计费可购买的可用区。形如：ap-guangzhou-1。
        # 返回项：<a href="https://cloud.tencent.com/document/product/213/6091">可用区列表</a>
        # @type Zone: String
        # @param CurrencyCode: 可购买的预留实例计费类型的结算货币，使用ISO 4217标准货币代码。
        # 返回项：USD（美元）。
        # @type CurrencyCode: String
        # @param Duration: 预留实例计费【有效期】即预留实例计费购买时长。形如：31536000。
        # 计量单位：秒
        # @type Duration: Integer
        # @param FixedPrice: 预留实例计费的购买价格。形如：4000.0。
        # 计量单位：与 currencyCode 一致，目前支持 USD（美元）
        # @type FixedPrice: Float
        # @param InstanceType: 预留实例计费的实例类型。形如：S3.MEDIUM4。
        # 返回项：<a href="https://cloud.tencent.com/product/cvm/instances">预留实例计费类型列表</a>
        # @type InstanceType: String
        # @param OfferingType: 预留实例计费的付款类型。形如：All Upfront。
        # 返回项： All Upfront (预付全部费用)。
        # @type OfferingType: String
        # @param ReservedInstancesOfferingId: 可购买的预留实例计费配置ID。形如：650c138f-ae7e-4750-952a-96841d6e9fc1。
        # @type ReservedInstancesOfferingId: String
        # @param ProductDescription: 预留实例计费的平台描述（即操作系统）。形如：linux。
        # 返回项： linux 。
        # @type ProductDescription: String
        # @param UsagePrice: 扣除预付费之后的使用价格 (按小时计费)。形如：0.0。
        # 目前，因为只支持 All Upfront 付款类型，所以默认为 0元/小时。
        # 计量单位：元/小时，货币单位与 currencyCode 一致，目前支持 USD（美元）
        # @type UsagePrice: Float

        attr_accessor :Zone, :CurrencyCode, :Duration, :FixedPrice, :InstanceType, :OfferingType, :ReservedInstancesOfferingId, :ProductDescription, :UsagePrice

        def initialize(zone=nil, currencycode=nil, duration=nil, fixedprice=nil, instancetype=nil, offeringtype=nil, reservedinstancesofferingid=nil, productdescription=nil, usageprice=nil)
          @Zone = zone
          @CurrencyCode = currencycode
          @Duration = duration
          @FixedPrice = fixedprice
          @InstanceType = instancetype
          @OfferingType = offeringtype
          @ReservedInstancesOfferingId = reservedinstancesofferingid
          @ProductDescription = productdescription
          @UsagePrice = usageprice
        end

        def deserialize(params)
          @Zone = params['Zone']
          @CurrencyCode = params['CurrencyCode']
          @Duration = params['Duration']
          @FixedPrice = params['FixedPrice']
          @InstanceType = params['InstanceType']
          @OfferingType = params['OfferingType']
          @ReservedInstancesOfferingId = params['ReservedInstancesOfferingId']
          @ProductDescription = params['ProductDescription']
          @UsagePrice = params['UsagePrice']
        end
      end

      # ResetInstance请求参数结构体
      class ResetInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) API返回值中的`InstanceId`获取。
        # @type InstanceId: String
        # @param ImageId: 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-xxx`。镜像类型分为四种：<br/><li>公共镜像</li><li>自定义镜像</li><li>共享镜像</li><li>服务市场镜像</li><br/>可通过以下方式获取可用的镜像ID：<br/><li>`公共镜像`、`自定义镜像`、`共享镜像`的镜像ID可通过登录[控制台](https://console.cloud.tencent.com/cvm/image?rid=1&imageType=PUBLIC_IMAGE)查询；`服务镜像市场`的镜像ID可通过[云市场](https://market.cloud.tencent.com/list)查询。</li><li>通过调用接口 [DescribeImages](https://cloud.tencent.com/document/api/213/15715) ，取返回信息中的`ImageId`字段。</li>
        # 默认取值：默认使用当前镜像。
        # @type ImageId: String
        # @param SystemDisk: 实例系统盘配置信息。系统盘为云盘的实例可以通过该参数指定重装后的系统盘大小来实现对系统盘的扩容操作。系统盘大小只支持扩容不支持缩容；重装只支持修改系统盘的大小，不能修改系统盘的类型。
        # @type SystemDisk: :class:`Tencentcloud::Cvm.v20170312.models.SystemDisk`
        # @param LoginSettings: 实例登录设置。通过该参数可以设置实例的登录方式密码、密钥或保持镜像的原始登录设置。默认情况下会随机生成密码，并以站内信方式知会到用户。
        # @type LoginSettings: :class:`Tencentcloud::Cvm.v20170312.models.LoginSettings`
        # @param EnhancedService: 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认公共镜像开启云监控、云安全服务；自定义镜像与镜像市场镜像默认不开启云监控，云安全服务，而使用镜像里保留的服务。
        # @type EnhancedService: :class:`Tencentcloud::Cvm.v20170312.models.EnhancedService`
        # @param HostName: 重装系统时，可以指定修改实例的主机名。<br><li>点号（.）和短横线（-）不能作为 HostName 的首尾字符，不能连续使用。</li><br><li>Windows 实例：主机名字符长度为[2, 15]，允许字母（不限制大小写）、数字和短横线（-）组成，不支持点号（.），不能全是数字。</li><br><li>其他类型（Linux 等）实例：主机名字符长度为[2, 60]，允许支持多个点号，点之间为一段，每段允许字母（不限制大小写）、数字和短横线（-）组成。</li>
        # @type HostName: String
        # @param UserData: 提供给实例使用的用户数据，需要以 base64 方式编码，支持的最大数据大小为 16KB。关于获取此参数的详细介绍，请参阅[Windows](https://cloud.tencent.com/document/product/213/17526)和[Linux](https://cloud.tencent.com/document/product/213/17525)启动时运行命令。
        # @type UserData: String

        attr_accessor :InstanceId, :ImageId, :SystemDisk, :LoginSettings, :EnhancedService, :HostName, :UserData

        def initialize(instanceid=nil, imageid=nil, systemdisk=nil, loginsettings=nil, enhancedservice=nil, hostname=nil, userdata=nil)
          @InstanceId = instanceid
          @ImageId = imageid
          @SystemDisk = systemdisk
          @LoginSettings = loginsettings
          @EnhancedService = enhancedservice
          @HostName = hostname
          @UserData = userdata
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ImageId = params['ImageId']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          @HostName = params['HostName']
          @UserData = params['UserData']
        end
      end

      # ResetInstance返回参数结构体
      class ResetInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ResetInstancesInternetMaxBandwidth请求参数结构体
      class ResetInstancesInternetMaxBandwidthRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过[`DescribeInstances`](https://cloud.tencent.com/document/api/213/9388)接口返回值中的 `InstanceId` 获取。 每次请求批量实例的上限为100。当调整 `BANDWIDTH_PREPAID` 和 `BANDWIDTH_POSTPAID_BY_HOUR` 计费方式的带宽时，只支持一个实例。
        # @type InstanceIds: Array
        # @param InternetAccessible: 公网出带宽配置。不同机型带宽上限范围不一致，具体限制详见带宽限制对账表。暂时只支持 `InternetMaxBandwidthOut` 参数。
        # @type InternetAccessible: :class:`Tencentcloud::Cvm.v20170312.models.InternetAccessible`
        # @param StartTime: 带宽生效的起始时间。格式：`YYYY-MM-DD`，例如：`2016-10-30`。起始时间不能早于当前时间。如果起始时间是今天则新设置的带宽立即生效。该参数只对包年包月带宽有效，其他模式带宽不支持该参数，否则接口会以相应错误码返回。
        # @type StartTime: String
        # @param EndTime: 带宽生效的终止时间。格式： `YYYY-MM-DD` ，例如：`2016-10-30` 。新设置的带宽的有效期包含终止时间此日期。终止时间不能晚于包年包月实例的到期时间。实例的到期时间可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/9388)接口返回值中的`ExpiredTime`获取。该参数只对包年包月带宽有效，其他模式带宽不支持该参数，否则接口会以相应错误码返回。
        # @type EndTime: String

        attr_accessor :InstanceIds, :InternetAccessible, :StartTime, :EndTime

        def initialize(instanceids=nil, internetaccessible=nil, starttime=nil, endtime=nil)
          @InstanceIds = instanceids
          @InternetAccessible = internetaccessible
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # ResetInstancesInternetMaxBandwidth返回参数结构体
      class ResetInstancesInternetMaxBandwidthResponse < TencentCloud::Common::AbstractModel
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

      # ResetInstancesPassword请求参数结构体
      class ResetInstancesPasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/api/213/15728) API返回值中的`InstanceId`获取。每次请求允许操作的实例数量上限是100。
        # @type InstanceIds: Array
        # @param Password: 重置后的实例登录密码。不同操作系统类型密码复杂度限制不一样，具体如下：Linux 实例密码必须8-30位，推荐使用12位以上密码，不能以“/”开头，至少包含以下字符中的三种不同字符，字符种类：<br><li>小写字母：[a-z]</li><li>大写字母：[A-Z]</li><li>数字：0-9</li><li>特殊字符： ()\`\~!@#$%^&\*-+=\_|{}[]:;'<>,.?/Windows 实例密码必须12\~30位，不能以“/”开头且不包括用户名，至少包含以下字符中的三种不同字符</li><li>小写字母：[a-z]</li><li>大写字母：[A-Z]</li><li>数字： 0-9</li><li>特殊字符：()\`\~!@#$%^&\*-+=\_|{}[]:;' <>,.?/</li><li>如果实例即包含 `Linux` 实例又包含 `Windows` 实例，则密码复杂度限制按照 `Windows` 实例的限制。</li>
        # @type Password: String
        # @param UserName: 待重置密码的实例操作系统的用户名。不得超过64个字符。
        # @type UserName: String
        # @param ForceStop: 是否对运行中的实例选择强制关机。建议对运行中的实例先手动关机，然后再重置用户密码。取值范围：<br><li>true：表示在正常关机失败后进行强制关机</li><li>false：表示在正常关机失败后不进行强制关机</li>默认取值：false。<br><br>强制关机的效果等同于关闭物理计算机的电源开关。强制关机可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常关机时使用。
        # @type ForceStop: Boolean

        attr_accessor :InstanceIds, :Password, :UserName, :ForceStop

        def initialize(instanceids=nil, password=nil, username=nil, forcestop=nil)
          @InstanceIds = instanceids
          @Password = password
          @UserName = username
          @ForceStop = forcestop
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @Password = params['Password']
          @UserName = params['UserName']
          @ForceStop = params['ForceStop']
        end
      end

      # ResetInstancesPassword返回参数结构体
      class ResetInstancesPasswordResponse < TencentCloud::Common::AbstractModel
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

      # ResetInstancesType请求参数结构体
      class ResetInstancesTypeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。本接口目前仅支持每次操作1个实例。
        # @type InstanceIds: Array
        # @param InstanceType: 调整后的实例机型。不同实例机型指定了不同的资源规格，具体取值可通过调用接口[ DescribeInstanceTypeConfigs ](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例类型](https://cloud.tencent.com/document/product/213/11518)描述。
        # @type InstanceType: String
        # @param ForceStop: 是否对运行中的实例选择强制关机。建议对运行中的实例先手动关机。取值范围：<br><li>true：表示在正常关机失败后进行强制关机</li><br><li>false：表示在正常关机失败后不进行强制关机</li><br><br>默认取值：false。<br><br>强制关机的效果等同于关闭物理计算机的电源开关。强制关机可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常关机时使用。
        # @type ForceStop: Boolean

        attr_accessor :InstanceIds, :InstanceType, :ForceStop

        def initialize(instanceids=nil, instancetype=nil, forcestop=nil)
          @InstanceIds = instanceids
          @InstanceType = instancetype
          @ForceStop = forcestop
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @InstanceType = params['InstanceType']
          @ForceStop = params['ForceStop']
        end
      end

      # ResetInstancesType返回参数结构体
      class ResetInstancesTypeResponse < TencentCloud::Common::AbstractModel
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

      # ResizeInstanceDisks请求参数结构体
      class ResizeInstanceDisksRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待操作的实例ID。可通过[ DescribeInstances ](https://cloud.tencent.com/document/api/213/15728)接口返回值中的`InstanceId`获取。
        # @type InstanceId: String
        # @param DataDisks: 待扩容的数据盘配置信息，仅支持指定待扩容盘的目的容量。只支持扩容非弹性数据盘（[ DescribeDisks ](https://cloud.tencent.com/document/api/362/16315)接口返回值中的`Portable`为`false`表示非弹性）。数据盘容量单位：GiB。最小扩容步长：10GiB。关于数据盘类型的选择请参考[硬盘产品简介](https://cloud.tencent.com/document/product/362/2353)。可选数据盘类型受到实例类型`InstanceType`限制。另外允许扩容的最大容量也因数据盘类型的不同而有所差异。
        # <dx-alert infotype="explain" title="">您必须指定参数DataDisks与SystemDisk的其中一个，但不能同时指定。</dx-alert>
        # @type DataDisks: Array
        # @param ForceStop: 是否对运行中的实例选择强制关机。建议对运行中的实例先手动关机，然后再扩容实例磁盘。取值范围：<br><li>true：表示在正常关机失败后进行强制关机</li><br><li>false：表示在正常关机失败后不进行强制关机</li><br><br>默认取值：false。<br><br>强制关机的效果等同于关闭物理计算机的电源开关。强制关机可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常关机时使用。
        # @type ForceStop: Boolean
        # @param SystemDisk: 待扩容的系统盘配置信息，仅支持指定待扩容盘的目的容量。只支持扩容云盘。
        # <dx-alert infotype="explain" title="">您必须指定参数DataDisks与SystemDisk的其中一个，但不能同时指定。</dx-alert>
        # @type SystemDisk: :class:`Tencentcloud::Cvm.v20170312.models.SystemDisk`
        # @param ResizeOnline: 扩容云盘的方式是否为在线扩容。
        # @type ResizeOnline: Boolean

        attr_accessor :InstanceId, :DataDisks, :ForceStop, :SystemDisk, :ResizeOnline

        def initialize(instanceid=nil, datadisks=nil, forcestop=nil, systemdisk=nil, resizeonline=nil)
          @InstanceId = instanceid
          @DataDisks = datadisks
          @ForceStop = forcestop
          @SystemDisk = systemdisk
          @ResizeOnline = resizeonline
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          @ForceStop = params['ForceStop']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          @ResizeOnline = params['ResizeOnline']
        end
      end

      # ResizeInstanceDisks返回参数结构体
      class ResizeInstanceDisksResponse < TencentCloud::Common::AbstractModel
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

      # 描述了 “云自动化助手” 服务相关的信息
      class RunAutomationServiceEnabled < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启云自动化助手。取值范围：<br><li>true：表示开启云自动化助手服务<br><li>false：表示不开启云自动化助手服务<br><br>默认取值：false。
        # @type Enabled: Boolean

        attr_accessor :Enabled

        def initialize(enabled=nil)
          @Enabled = enabled
        end

        def deserialize(params)
          @Enabled = params['Enabled']
        end
      end

      # RunInstances请求参数结构体
      class RunInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceChargeType: 实例[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月</li><br><li>POSTPAID_BY_HOUR：按小时后付费</li><br><li>CDHPAID：独享子机（基于专用宿主机创建，宿主机部分的资源不收费）</li><br><li>SPOTPAID：竞价付费</li><br><li>CDCPAID：专用集群付费</li><br>默认值：POSTPAID_BY_HOUR。
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Cvm.v20170312.models.InstanceChargePrepaid`
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目，所属宿主机（在专用宿主机上创建子机时指定）等属性。
        #  <b>注：如果您不指定LaunchTemplate参数，则Placement为必选参数。若同时传递Placement和LaunchTemplate，则默认覆盖LaunchTemplate中对应的Placement的值。</b>
        # @type Placement: :class:`Tencentcloud::Cvm.v20170312.models.Placement`
        # @param InstanceType: 实例机型。不同实例机型指定了不同的资源规格。
        # <br><li>对于付费模式为PREPAID或POSTPAID\_BY\_HOUR的实例创建，具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。若不指定该参数，则系统将根据当前地域的资源售卖情况动态指定默认机型。</li><br><li>对于付费模式为CDHPAID的实例创建，该参数以"CDH_"为前缀，根据CPU和内存配置生成，具体形式为：CDH_XCXG，例如对于创建CPU为1核，内存为1G大小的专用宿主机的实例，该参数应该为CDH_1C1G。</li>
        # @type InstanceType: String
        # @param ImageId: 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-xxx`。镜像类型分为四种：<br/><li>公共镜像</li><li>自定义镜像</li><li>共享镜像</li><li>服务市场镜像</li><br/>可通过以下方式获取可用的镜像ID：<br/><li>`公共镜像`、`自定义镜像`、`共享镜像`的镜像ID可通过登录[控制台](https://console.cloud.tencent.com/cvm/image?rid=1&imageType=PUBLIC_IMAGE)查询；`服务镜像市场`的镜像ID可通过[云市场](https://market.cloud.tencent.com/list)查询。</li><li>通过调用接口 [DescribeImages](https://cloud.tencent.com/document/api/213/15715) ，传入InstanceType获取当前机型支持的镜像列表，取返回信息中的`ImageId`字段。</li>
        #  <b>注：如果您不指定LaunchTemplate参数，则ImageId为必选参数。若同时传递ImageId和LaunchTemplate，则默认覆盖LaunchTemplate中对应的ImageId的值。</b>
        # @type ImageId: String
        # @param SystemDisk: 实例系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: :class:`Tencentcloud::Cvm.v20170312.models.SystemDisk`
        # @param DataDisks: 实例数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        # @type DataDisks: Array
        # @param VirtualPrivateCloud: 私有网络相关信息配置。通过该参数可以指定私有网络的ID，子网ID等信息。若在此参数中指定了私有网络IP，即表示每个实例的主网卡IP；同时，InstanceCount参数必须与私有网络IP的个数一致且不能大于20。
        # @type VirtualPrivateCloud: :class:`Tencentcloud::Cvm.v20170312.models.VirtualPrivateCloud`
        # @param InternetAccessible: 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        # @type InternetAccessible: :class:`Tencentcloud::Cvm.v20170312.models.InternetAccessible`
        # @param InstanceCount: 购买实例数量。包年包月实例取值范围：[1，500]，按量计费实例取值范围：[1，500]。默认取值：1。指定购买实例的数量不能超过用户所能购买的剩余配额数量，具体配额相关限制详见[CVM实例购买限制](https://cloud.tencent.com/document/product/213/2664)。
        # @type InstanceCount: Integer
        # @param InstanceName: 实例显示名称。<br><li>不指定实例显示名称则默认显示‘未命名’。</li><li>购买多台实例，如果指定模式串`{R:x}`，表示生成数字`[x, x+n-1]`，其中`n`表示购买实例的数量，例如`server_{R:3}`，购买1台时，实例显示名称为`server_3`；购买2台时，实例显示名称分别为`server_3`，`server_4`。支持指定多个模式串`{R:x}`。</li><li>购买多台实例，如果不指定模式串，则在实例显示名称添加后缀`1、2...n`，其中`n`表示购买实例的数量，例如`server_`，购买2台时，实例显示名称分别为`server_1`，`server_2`。</li><li>最多支持128个字符（包含模式串）。</li>
        # @type InstanceName: String
        # @param LoginSettings: 实例登录设置。通过该参数可以设置实例的登录方式密码、密钥或保持镜像的原始登录设置。默认情况下会随机生成密码，并以站内信方式知会到用户。
        # @type LoginSettings: :class:`Tencentcloud::Cvm.v20170312.models.LoginSettings`
        # @param SecurityGroupIds: 实例所属安全组。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的 `SecurityGroupId` 字段来获取。若不指定该参数，则绑定指定项目下的默认安全组，如默认安全组不存在则将自动创建。
        # @type SecurityGroupIds: Array
        # @param EnhancedService: 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认公共镜像开启云监控、云安全服务；自定义镜像与镜像市场镜像默认不开启云监控，云安全服务，而使用镜像里保留的服务。
        # @type EnhancedService: :class:`Tencentcloud::Cvm.v20170312.models.EnhancedService`
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # @type ClientToken: String
        # @param HostName: 实例主机名。<br><li>点号（.）和短横线（-）不能作为 HostName 的首尾字符，不能连续使用。</li><br><li>Windows 实例：主机名名字符长度为[2, 15]，允许字母（不限制大小写）、数字和短横线（-）组成，不支持点号（.），不能全是数字。</li><br><li>其他类型（Linux 等）实例：主机名字符长度为[2, 60]，允许支持多个点号，点之间为一段，每段允许字母（不限制大小写）、数字和短横线（-）组成。</li><br><li>购买多台实例，如果指定模式串`{R:x}`，表示生成数字`[x, x+n-1]`，其中`n`表示购买实例的数量，例如`server{R:3}`，购买1台时，实例主机名为`server3`；购买2台时，实例主机名分别为`server3`，`server4`。支持指定多个模式串`{R:x}`。</li><br><li>购买多台实例，如果不指定模式串，则在实例主机名添加后缀`1、2...n`，其中`n`表示购买实例的数量，例如`server`，购买2台时，实例主机名分别为`server1`，`server2`。</li>
        # @type HostName: String
        # @param ActionTimer: 定时任务。通过该参数可以为实例指定定时任务，目前仅支持定时销毁。
        # @type ActionTimer: :class:`Tencentcloud::Cvm.v20170312.models.ActionTimer`
        # @param DisasterRecoverGroupIds: 置放群组id，仅支持指定一个。
        # @type DisasterRecoverGroupIds: Array
        # @param TagSpecification: 标签描述列表。通过指定该参数可以同时绑定标签到相应的云服务器、云硬盘实例。
        # @type TagSpecification: Array
        # @param InstanceMarketOptions: 实例的市场相关选项，如竞价实例相关参数，若指定实例的付费模式为竞价付费但没有传递该参数时，默认按当前固定折扣价格出价。
        # @type InstanceMarketOptions: :class:`Tencentcloud::Cvm.v20170312.models.InstanceMarketOptionsRequest`
        # @param UserData: 提供给实例使用的用户数据，需要以 base64 方式编码，支持的最大数据大小为 16KB。关于获取此参数的详细介绍，请参阅[Windows](https://cloud.tencent.com/document/product/213/17526)和[Linux](https://cloud.tencent.com/document/product/213/17525)启动时运行命令。
        # @type UserData: String
        # @param Metadata: 自定义metadata，支持创建 CVM 时添加自定义元数据键值对。
        # **注：内测中**。
        # @type Metadata: :class:`Tencentcloud::Cvm.v20170312.models.Metadata`
        # @param DryRun: 是否只预检此次请求。
        # true：发送检查请求，不会创建实例。检查项包括是否填写了必需参数，请求格式，业务限制和云服务器库存。
        # 如果检查不通过，则返回对应错误码；
        # 如果检查通过，则返回RequestId.
        # false（默认）：发送正常请求，通过检查后直接创建实例
        # @type DryRun: Boolean
        # @param CpuTopology: 描述了实例CPU拓扑结构的相关信息。若不指定该参数，则按系统资源情况决定。
        # @type CpuTopology: :class:`Tencentcloud::Cvm.v20170312.models.CpuTopology`
        # @param CamRoleName: CAM角色名称。可通过[ DescribeRoleList ](https://cloud.tencent.com/document/product/598/36223)接口返回值中的`RoleName `获取。
        # @type CamRoleName: String
        # @param HpcClusterId: 高性能计算集群ID。若创建的实例为高性能计算实例，需指定实例放置的集群，否则不可指定。
        # @type HpcClusterId: String
        # @param LaunchTemplate: 实例启动模板。
        # @type LaunchTemplate: :class:`Tencentcloud::Cvm.v20170312.models.LaunchTemplate`
        # @param DedicatedClusterId: 指定专用集群创建。
        # @type DedicatedClusterId: String
        # @param ChcIds: 指定CHC物理服务器来创建CHC云主机。
        # @type ChcIds: Array
        # @param DisableApiTermination: 实例销毁保护标志，表示是否允许通过api接口删除实例。取值范围：<br><li>true：表示开启实例保护，不允许通过api接口删除实例</li><br><li>false：表示关闭实例保护，允许通过api接口删除实例</li><br><br>默认取值：false。
        # @type DisableApiTermination: Boolean
        # @param EnableJumboFrame: 实例是否开启巨型帧，取值范围：<br><li/> true：表示实例开启巨型帧，只有支持巨型帧的机型可设置为true。<br><li/>false：表示实例关闭巨型帧，只有支持巨型帧的机型可设置为false。<br> 支持巨型帧的实例规格： [实例规格](https://cloud.tencent.com/document/product/213/11518)
        # @type EnableJumboFrame: Boolean

        attr_accessor :InstanceChargeType, :InstanceChargePrepaid, :Placement, :InstanceType, :ImageId, :SystemDisk, :DataDisks, :VirtualPrivateCloud, :InternetAccessible, :InstanceCount, :InstanceName, :LoginSettings, :SecurityGroupIds, :EnhancedService, :ClientToken, :HostName, :ActionTimer, :DisasterRecoverGroupIds, :TagSpecification, :InstanceMarketOptions, :UserData, :Metadata, :DryRun, :CpuTopology, :CamRoleName, :HpcClusterId, :LaunchTemplate, :DedicatedClusterId, :ChcIds, :DisableApiTermination, :EnableJumboFrame

        def initialize(instancechargetype=nil, instancechargeprepaid=nil, placement=nil, instancetype=nil, imageid=nil, systemdisk=nil, datadisks=nil, virtualprivatecloud=nil, internetaccessible=nil, instancecount=nil, instancename=nil, loginsettings=nil, securitygroupids=nil, enhancedservice=nil, clienttoken=nil, hostname=nil, actiontimer=nil, disasterrecovergroupids=nil, tagspecification=nil, instancemarketoptions=nil, userdata=nil, metadata=nil, dryrun=nil, cputopology=nil, camrolename=nil, hpcclusterid=nil, launchtemplate=nil, dedicatedclusterid=nil, chcids=nil, disableapitermination=nil, enablejumboframe=nil)
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @Placement = placement
          @InstanceType = instancetype
          @ImageId = imageid
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @VirtualPrivateCloud = virtualprivatecloud
          @InternetAccessible = internetaccessible
          @InstanceCount = instancecount
          @InstanceName = instancename
          @LoginSettings = loginsettings
          @SecurityGroupIds = securitygroupids
          @EnhancedService = enhancedservice
          @ClientToken = clienttoken
          @HostName = hostname
          @ActionTimer = actiontimer
          @DisasterRecoverGroupIds = disasterrecovergroupids
          @TagSpecification = tagspecification
          @InstanceMarketOptions = instancemarketoptions
          @UserData = userdata
          @Metadata = metadata
          @DryRun = dryrun
          @CpuTopology = cputopology
          @CamRoleName = camrolename
          @HpcClusterId = hpcclusterid
          @LaunchTemplate = launchtemplate
          @DedicatedClusterId = dedicatedclusterid
          @ChcIds = chcids
          @DisableApiTermination = disableapitermination
          @EnableJumboFrame = enablejumboframe
        end

        def deserialize(params)
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @InstanceType = params['InstanceType']
          @ImageId = params['ImageId']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          unless params['VirtualPrivateCloud'].nil?
            @VirtualPrivateCloud = VirtualPrivateCloud.new
            @VirtualPrivateCloud.deserialize(params['VirtualPrivateCloud'])
          end
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @InstanceCount = params['InstanceCount']
          @InstanceName = params['InstanceName']
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          @ClientToken = params['ClientToken']
          @HostName = params['HostName']
          unless params['ActionTimer'].nil?
            @ActionTimer = ActionTimer.new
            @ActionTimer.deserialize(params['ActionTimer'])
          end
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @TagSpecification << tagspecification_tmp
            end
          end
          unless params['InstanceMarketOptions'].nil?
            @InstanceMarketOptions = InstanceMarketOptionsRequest.new
            @InstanceMarketOptions.deserialize(params['InstanceMarketOptions'])
          end
          @UserData = params['UserData']
          unless params['Metadata'].nil?
            @Metadata = Metadata.new
            @Metadata.deserialize(params['Metadata'])
          end
          @DryRun = params['DryRun']
          unless params['CpuTopology'].nil?
            @CpuTopology = CpuTopology.new
            @CpuTopology.deserialize(params['CpuTopology'])
          end
          @CamRoleName = params['CamRoleName']
          @HpcClusterId = params['HpcClusterId']
          unless params['LaunchTemplate'].nil?
            @LaunchTemplate = LaunchTemplate.new
            @LaunchTemplate.deserialize(params['LaunchTemplate'])
          end
          @DedicatedClusterId = params['DedicatedClusterId']
          @ChcIds = params['ChcIds']
          @DisableApiTermination = params['DisableApiTermination']
          @EnableJumboFrame = params['EnableJumboFrame']
        end
      end

      # RunInstances返回参数结构体
      class RunInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 当通过本接口来创建实例时会返回该参数，表示一个或多个实例`ID`。返回实例`ID`列表并不代表实例创建成功，可根据 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口查询返回的InstancesSet中对应实例的`ID`的状态来判断创建是否完成；如果实例状态由“PENDING(创建中)”变为“RUNNING(运行中)”，则为创建成功。
        # @type InstanceIdSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceIdSet, :RequestId

        def initialize(instanceidset=nil, requestid=nil)
          @InstanceIdSet = instanceidset
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @RequestId = params['RequestId']
        end
      end

      # 描述了 “云监控” 服务相关的信息
      class RunMonitorServiceEnabled < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启[云监控](/document/product/248)服务。取值范围：<br><li>true：表示开启云监控服务</li><li>false：表示不开启云监控服务</li><br>默认取值：true。
        # @type Enabled: Boolean

        attr_accessor :Enabled

        def initialize(enabled=nil)
          @Enabled = enabled
        end

        def deserialize(params)
          @Enabled = params['Enabled']
        end
      end

      # 描述了 “云安全” 服务相关的信息
      class RunSecurityServiceEnabled < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启[云安全](/document/product/296)服务。取值范围：<br><li>true：表示开启云安全服务<br><li>false：表示不开启云安全服务<br><br>默认取值：true。
        # @type Enabled: Boolean

        attr_accessor :Enabled

        def initialize(enabled=nil)
          @Enabled = enabled
        end

        def deserialize(params)
          @Enabled = params['Enabled']
        end
      end

      # 镜像分享信息结构
      class SharePermission < TencentCloud::Common::AbstractModel
        # @param CreatedTime: 镜像分享时间。
        # 按照 ISO8601 标准表示，并且使用 UTC 时间，格式为：YYYY-MM-DDThh:mm:ssZ。
        # @type CreatedTime: String
        # @param AccountId: 镜像分享的账户ID
        # @type AccountId: String

        attr_accessor :CreatedTime, :AccountId

        def initialize(createdtime=nil, accountid=nil)
          @CreatedTime = createdtime
          @AccountId = accountid
        end

        def deserialize(params)
          @CreatedTime = params['CreatedTime']
          @AccountId = params['AccountId']
        end
      end

      # 描述镜像关联的快照信息
      class Snapshot < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 快照Id。
        # @type SnapshotId: String
        # @param DiskUsage: 创建此快照的云硬盘类型。取值范围：
        # SYSTEM_DISK：系统盘
        # DATA_DISK：数据盘。
        # @type DiskUsage: String
        # @param DiskSize: 创建此快照的云硬盘大小，单位 GiB。
        # @type DiskSize: Integer

        attr_accessor :SnapshotId, :DiskUsage, :DiskSize

        def initialize(snapshotid=nil, diskusage=nil, disksize=nil)
          @SnapshotId = snapshotid
          @DiskUsage = diskusage
          @DiskSize = disksize
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
          @DiskUsage = params['DiskUsage']
          @DiskSize = params['DiskSize']
        end
      end

      # 竞价相关选项
      class SpotMarketOptions < TencentCloud::Common::AbstractModel
        # @param MaxPrice: 竞价出价
        # @type MaxPrice: String
        # @param SpotInstanceType: 竞价请求类型，当前仅支持类型：one-time
        # @type SpotInstanceType: String

        attr_accessor :MaxPrice, :SpotInstanceType

        def initialize(maxprice=nil, spotinstancetype=nil)
          @MaxPrice = maxprice
          @SpotInstanceType = spotinstancetype
        end

        def deserialize(params)
          @MaxPrice = params['MaxPrice']
          @SpotInstanceType = params['SpotInstanceType']
        end
      end

      # 竞价实例配额
      class SpotPaidQuota < TencentCloud::Common::AbstractModel
        # @param UsedQuota: 已使用配额，单位：vCPU核心数
        # @type UsedQuota: Integer
        # @param RemainingQuota: 剩余配额，单位：vCPU核心数
        # @type RemainingQuota: Integer
        # @param TotalQuota: 总配额，单位：vCPU核心数
        # @type TotalQuota: Integer
        # @param Zone: 可用区
        # @type Zone: String

        attr_accessor :UsedQuota, :RemainingQuota, :TotalQuota, :Zone

        def initialize(usedquota=nil, remainingquota=nil, totalquota=nil, zone=nil)
          @UsedQuota = usedquota
          @RemainingQuota = remainingquota
          @TotalQuota = totalquota
          @Zone = zone
        end

        def deserialize(params)
          @UsedQuota = params['UsedQuota']
          @RemainingQuota = params['RemainingQuota']
          @TotalQuota = params['TotalQuota']
          @Zone = params['Zone']
        end
      end

      # StartInstances请求参数结构体
      class StartInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/api/213/15728)接口返回值中的`InstanceId`获取。每次请求批量实例的上限为100。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # StartInstances返回参数结构体
      class StartInstancesResponse < TencentCloud::Common::AbstractModel
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

      # StopInstances请求参数结构体
      class StopInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。每次请求批量实例的上限为100。
        # @type InstanceIds: Array
        # @param ForceStop: 本参数已弃用，推荐使用StopType，不可以与参数StopType同时使用。表示是否在正常关闭失败后选择强制关闭实例。取值范围：<br><li>true：表示在正常关闭失败后进行强制关闭</li><li>false：表示在正常关闭失败后不进行强制关闭</li><br>默认取值：false。
        # @type ForceStop: Boolean
        # @param StopType: 实例的关闭模式。取值范围：<br><li>SOFT_FIRST：表示在正常关闭失败后进行强制关闭</li><li>HARD：直接强制关闭</li><li>SOFT：仅软关机</li>默认取值：SOFT。
        # @type StopType: String
        # @param StoppedMode: 按量计费实例关机收费模式。
        # 取值范围：<br><li>KEEP_CHARGING：关机继续收费</li><li>STOP_CHARGING：关机停止收费</li><br>默认取值：KEEP_CHARGING。
        # 该参数只针对部分按量计费实例生效，详情参考[按量计费实例关机不收费说明](https://cloud.tencent.com/document/product/213/19918)
        # @type StoppedMode: String

        attr_accessor :InstanceIds, :ForceStop, :StopType, :StoppedMode
        extend Gem::Deprecate
        deprecate :ForceStop, :none, 2025, 7
        deprecate :ForceStop=, :none, 2025, 7

        def initialize(instanceids=nil, forcestop=nil, stoptype=nil, stoppedmode=nil)
          @InstanceIds = instanceids
          @ForceStop = forcestop
          @StopType = stoptype
          @StoppedMode = stoppedmode
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @ForceStop = params['ForceStop']
          @StopType = params['StopType']
          @StoppedMode = params['StoppedMode']
        end
      end

      # StopInstances返回参数结构体
      class StopInstancesResponse < TencentCloud::Common::AbstractModel
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

      # HDD的本地存储信息
      class StorageBlock < TencentCloud::Common::AbstractModel
        # @param Type: HDD本地存储类型，值为：LOCAL_PRO.
        # @type Type: String
        # @param MinSize: HDD本地存储的最小容量。单位：GiB。
        # @type MinSize: Integer
        # @param MaxSize: HDD本地存储的最大容量。单位：GiB。
        # @type MaxSize: Integer

        attr_accessor :Type, :MinSize, :MaxSize

        def initialize(type=nil, minsize=nil, maxsize=nil)
          @Type = type
          @MinSize = minsize
          @MaxSize = maxsize
        end

        def deserialize(params)
          @Type = params['Type']
          @MinSize = params['MinSize']
          @MaxSize = params['MaxSize']
        end
      end

      # 同步镜像信息
      class SyncImage < TencentCloud::Common::AbstractModel
        # @param ImageId: 镜像ID
        # @type ImageId: String
        # @param Region: 地域
        # @type Region: String

        attr_accessor :ImageId, :Region

        def initialize(imageid=nil, region=nil)
          @ImageId = imageid
          @Region = region
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @Region = params['Region']
        end
      end

      # SyncImages请求参数结构体
      class SyncImagesRequest < TencentCloud::Common::AbstractModel
        # @param ImageIds: 镜像ID列表 ，镜像ID可以通过如下方式获取：<br><li>通过[DescribeImages](https://cloud.tencent.com/document/api/213/15715)接口返回的`ImageId`获取，镜像ID对应的镜像状态必须为`NORMAL`。</li><li>通过[镜像控制台](https://console.cloud.tencent.com/cvm/image)获取。</li>
        # @type ImageIds: Array
        # @param DestinationRegions: 目的同步地域列表，必须满足如下限制：<br><li>必须是一个合法的Region。</li><li>如果是自定义镜像，则目标同步地域不能为源地域。</li><li>如果是共享镜像，则目的同步地域仅支持源地域，表示将共享镜像复制为源地域的自定义镜像。</li><li>如果是自定义镜像复制为加密自定义镜像，则目的同步地域仅支持源地域，表示将自定义镜像复制为源地域的加密自定义镜像。</li><li>暂不支持部分地域同步，请参考[复制镜像](https://cloud.tencent.com/document/product/213/4943#.E5.A4.8D.E5.88.B6.E8.AF.B4.E6.98.8E)。</li>具体地域参数请参考[Region](https://cloud.tencent.com/document/product/213/6091)。
        # @type DestinationRegions: Array
        # @param DryRun: 检测是否支持发起同步镜像。
        # 默认值: false
        # @type DryRun: Boolean
        # @param ImageName: 目标镜像名称。默认使用源镜像名称。
        # 最多支持 60 个字符。
        # @type ImageName: String
        # @param ImageSetRequired: 是否需要返回目的地域的镜像ID。
        # 默认值: false
        # @type ImageSetRequired: Boolean
        # @param Encrypt: 是否复制为加密自定义镜像。
        # 默认值为 false。
        # 复制加密自定义镜像仅支持同地域， 即 DestinationRegions 仅支持填写指定镜像所在地域。
        # @type Encrypt: Boolean
        # @param KmsKeyId: 加密自定义镜像使用的 KMS 密钥 ID。
        # 仅当复制加密镜像时，即 Encrypt 为 true 时，此参数有效；
        # 不指定 KmsKeyId，默认使用 CBS 云产品 KMS 密钥。
        # KMS 密钥 ID 通过[KMS 控制台](https://console.cloud.tencent.com/kms2)获取。
        # @type KmsKeyId: String

        attr_accessor :ImageIds, :DestinationRegions, :DryRun, :ImageName, :ImageSetRequired, :Encrypt, :KmsKeyId

        def initialize(imageids=nil, destinationregions=nil, dryrun=nil, imagename=nil, imagesetrequired=nil, encrypt=nil, kmskeyid=nil)
          @ImageIds = imageids
          @DestinationRegions = destinationregions
          @DryRun = dryrun
          @ImageName = imagename
          @ImageSetRequired = imagesetrequired
          @Encrypt = encrypt
          @KmsKeyId = kmskeyid
        end

        def deserialize(params)
          @ImageIds = params['ImageIds']
          @DestinationRegions = params['DestinationRegions']
          @DryRun = params['DryRun']
          @ImageName = params['ImageName']
          @ImageSetRequired = params['ImageSetRequired']
          @Encrypt = params['Encrypt']
          @KmsKeyId = params['KmsKeyId']
        end
      end

      # SyncImages返回参数结构体
      class SyncImagesResponse < TencentCloud::Common::AbstractModel
        # @param ImageSet: 目的地域的镜像ID信息。
        # @type ImageSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageSet, :RequestId

        def initialize(imageset=nil, requestid=nil)
          @ImageSet = imageset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ImageSet'].nil?
            @ImageSet = []
            params['ImageSet'].each do |i|
              syncimage_tmp = SyncImage.new
              syncimage_tmp.deserialize(i)
              @ImageSet << syncimage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 描述了操作系统所在块设备即系统盘的信息
      class SystemDisk < TencentCloud::Common::AbstractModel
        # @param DiskType: 系统盘类型。系统盘类型限制详见[存储概述](https://cloud.tencent.com/document/product/213/4952)。取值范围：<br>
        # <li>LOCAL_BASIC：本地硬盘</li>
        # <li>LOCAL_SSD：本地SSD硬盘</li>
        # <li>CLOUD_BASIC：普通云硬盘</li>
        # <li>CLOUD_SSD：SSD云硬盘</li>
        # <li>CLOUD_PREMIUM：高性能云硬盘</li>
        # <li>CLOUD_BSSD：通用型SSD云硬盘</li>
        # <li>CLOUD_HSSD：增强型SSD云硬盘</li>
        # <li>CLOUD_TSSD：极速型SSD云硬盘</li><br>
        # 默认取值：当前有库存的硬盘类型。
        # @type DiskType: String
        # @param DiskId: 系统盘ID。
        # 该参数目前仅用于`DescribeInstances`等查询类接口的返回参数，不可用于`RunInstances`等写接口的入参。
        # @type DiskId: String
        # @param DiskSize: 系统盘大小，单位：GiB。默认值为 50
        # @type DiskSize: Integer
        # @param CdcId: 所属的独享集群ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CdcId: String
        # @param DiskName: 磁盘名称，长度不超过128 个字符。
        # @type DiskName: String

        attr_accessor :DiskType, :DiskId, :DiskSize, :CdcId, :DiskName

        def initialize(disktype=nil, diskid=nil, disksize=nil, cdcid=nil, diskname=nil)
          @DiskType = disktype
          @DiskId = diskid
          @DiskSize = disksize
          @CdcId = cdcid
          @DiskName = diskname
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskId = params['DiskId']
          @DiskSize = params['DiskSize']
          @CdcId = params['CdcId']
          @DiskName = params['DiskName']
        end
      end

      # 标签键值对，可以通过调用 [DescribeTags](https://cloud.tencent.com/document/api/651/35316) 返回值中的 Tags 字段来获取。
      class Tag < TencentCloud::Common::AbstractModel
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

      # 创建资源实例时同时绑定的标签对说明
      class TagSpecification < TencentCloud::Common::AbstractModel
        # @param ResourceType: 标签绑定的资源类型，云服务器为“instance”，专用宿主机为“host”，镜像为“image”，密钥为“keypair”，置放群组为“ps”，高性能计算集群为“hpc”。
        # @type ResourceType: String
        # @param Tags: 标签对列表
        # @type Tags: Array

        attr_accessor :ResourceType, :Tags

        def initialize(resourcetype=nil, tags=nil)
          @ResourceType = resourcetype
          @Tags = tags
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # 操作系统转换的目标操作系统信息
      class TargetOS < TencentCloud::Common::AbstractModel
        # @param TargetOSType: 目标操作系统类型
        # @type TargetOSType: String
        # @param TargetOSVersion: 目标操作系统版本
        # @type TargetOSVersion: String

        attr_accessor :TargetOSType, :TargetOSVersion

        def initialize(targetostype=nil, targetosversion=nil)
          @TargetOSType = targetostype
          @TargetOSVersion = targetosversion
        end

        def deserialize(params)
          @TargetOSType = params['TargetOSType']
          @TargetOSVersion = params['TargetOSVersion']
        end
      end

      # TerminateInstances请求参数结构体
      class TerminateInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 一个或多个待操作的实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) 接口返回值中的`InstanceId`获取。每次请求批量实例的上限为100。
        # @type InstanceIds: Array
        # @param ReleaseAddress: 释放弹性IP。EIP2.0下，仅提供主网卡下首个EIP，EIP类型限定在HighQualityEIP、AntiDDoSEIP、EIPv6、HighQualityEIPv6这几种类型。默认行为不释放。

        # 示例值：true
        # 默认值：false
        # @type ReleaseAddress: Boolean
        # @param ReleasePrepaidDataDisks: 释放实例挂载的包年包月数据盘。true表示销毁实例同时释放包年包月数据盘，false表示只销毁实例。
        # 默认值：false
        # @type ReleasePrepaidDataDisks: Boolean

        attr_accessor :InstanceIds, :ReleaseAddress, :ReleasePrepaidDataDisks

        def initialize(instanceids=nil, releaseaddress=nil, releaseprepaiddatadisks=nil)
          @InstanceIds = instanceids
          @ReleaseAddress = releaseaddress
          @ReleasePrepaidDataDisks = releaseprepaiddatadisks
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @ReleaseAddress = params['ReleaseAddress']
          @ReleasePrepaidDataDisks = params['ReleasePrepaidDataDisks']
        end
      end

      # TerminateInstances返回参数结构体
      class TerminateInstancesResponse < TencentCloud::Common::AbstractModel
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

      # 描述了VPC相关信息，包括子网，IP信息等
      class VirtualPrivateCloud < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络ID，形如`vpc-xxx`。有效的VpcId可通过登录[控制台](https://console.cloud.tencent.com/vpc/vpc?rid=1)查询；也可以调用接口 [DescribeVpcs](https://cloud.tencent.com/document/product/215/15778) ，从接口返回中的`VpcId `字段获取。若在创建子机时VpcId与SubnetId同时传入`DEFAULT`，则强制使用默认vpc网络。
        # @type VpcId: String
        # @param SubnetId: 私有网络子网ID，形如`subnet-xxx`。有效的私有网络子网ID可通过登录[控制台](https://console.cloud.tencent.com/vpc/subnet?rid=1)查询；也可以调用接口  [DescribeSubnets](https://cloud.tencent.com/document/product/215/15784) ，从接口返回中的`SubnetId `字段获取。若在创建子机时SubnetId与VpcId同时传入`DEFAULT`，则强制使用默认vpc网络。
        # @type SubnetId: String
        # @param AsVpcGateway: 是否用作公网网关。公网网关只有在实例拥有公网IP以及处于私有网络下时才能正常使用。取值范围：<li>true：表示用作公网网关</li><li>false：表示不作为公网网关</li>默认取值：false。
        # @type AsVpcGateway: Boolean
        # @param PrivateIpAddresses: 私有网络子网 IP 数组，在创建实例、修改实例vpc属性操作中可使用此参数。当前仅批量创建多台实例时支持传入相同子网的多个 IP。
        # @type PrivateIpAddresses: Array
        # @param Ipv6AddressCount: 为弹性网卡指定随机生成的 IPv6 地址数量。
        # @type Ipv6AddressCount: Integer

        attr_accessor :VpcId, :SubnetId, :AsVpcGateway, :PrivateIpAddresses, :Ipv6AddressCount

        def initialize(vpcid=nil, subnetid=nil, asvpcgateway=nil, privateipaddresses=nil, ipv6addresscount=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @AsVpcGateway = asvpcgateway
          @PrivateIpAddresses = privateipaddresses
          @Ipv6AddressCount = ipv6addresscount
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @AsVpcGateway = params['AsVpcGateway']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @Ipv6AddressCount = params['Ipv6AddressCount']
        end
      end

      # 可用区信息
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区名称，例如，ap-guangzhou-3
        # 全网可用区名称如下：
        # <li> ap-chongqing-1 </li>
        # <li> ap-seoul-1 </li>
        # <li> ap-seoul-2 </li>
        # <li> ap-chengdu-1 </li>
        # <li> ap-chengdu-2 </li>
        # <li> ap-hongkong-1（售罄） </li>
        # <li> ap-hongkong-2 </li>
        # <li> ap-hongkong-3 </li>
        # <li> ap-shenzhen-fsi-1 </li>
        # <li> ap-shenzhen-fsi-2 </li>
        # <li> ap-shenzhen-fsi-3（售罄） </li>
        # <li> ap-guangzhou-1（售罄）</li>
        # <li> ap-guangzhou-2（售罄）</li>
        # <li> ap-guangzhou-3 </li>
        # <li> ap-guangzhou-4 </li>
        # <li> ap-guangzhou-6 </li>
        # <li> ap-guangzhou-7 </li>
        # <li> ap-tokyo-1 </li>
        # <li> ap-tokyo-2 </li>
        # <li> ap-singapore-1 </li>
        # <li> ap-singapore-2 </li>
        # <li> ap-singapore-3 </li>
        # <li>ap-singapore-4 </li>
        # <li> ap-shanghai-fsi-1 </li>
        # <li> ap-shanghai-fsi-2 </li>
        # <li> ap-shanghai-fsi-3 </li>
        # <li> ap-bangkok-1 </li>
        # <li> ap-bangkok-2 </li>
        # <li> ap-shanghai-1（售罄） </li>
        # <li> ap-shanghai-2 </li>
        # <li> ap-shanghai-3 </li>
        # <li> ap-shanghai-4 </li>
        # <li> ap-shanghai-5 </li>
        # <li> ap-shanghai-8 </li>
        # <li> ap-mumbai-1 </li>
        # <li> ap-mumbai-2 </li>
        # <li> ap-beijing-1（售罄）</li>
        # <li> ap-beijing-2 </li>
        # <li> ap-beijing-3 </li>
        # <li> ap-beijing-4 </li>
        # <li> ap-beijing-5 </li>
        # <li> ap-beijing-6 </li>
        # <li> ap-beijing-7 </li>
        # <li> na-siliconvalley-1 </li>
        # <li> na-siliconvalley-2 </li>
        # <li> eu-frankfurt-1 </li>
        # <li> eu-frankfurt-2 </li>
        # <li> na-ashburn-1 </li>
        # <li> na-ashburn-2 </li>
        # <li> ap-nanjing-1 </li>
        # <li> ap-nanjing-2 </li>
        # <li> ap-nanjing-3 </li>
        # <li> sa-saopaulo-1</li>
        # <li> ap-jakarta-1 </li>
        # <li> ap-jakarta-2 </li>
        # @type Zone: String
        # @param ZoneName: 可用区描述，例如，广州三区
        # @type ZoneName: String
        # @param ZoneId: 可用区ID
        # @type ZoneId: String
        # @param ZoneState: 可用区状态，包含AVAILABLE和UNAVAILABLE。AVAILABLE代表可用，UNAVAILABLE代表不可用。
        # @type ZoneState: String

        attr_accessor :Zone, :ZoneName, :ZoneId, :ZoneState

        def initialize(zone=nil, zonename=nil, zoneid=nil, zonestate=nil)
          @Zone = zone
          @ZoneName = zonename
          @ZoneId = zoneid
          @ZoneState = zonestate
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ZoneName = params['ZoneName']
          @ZoneId = params['ZoneId']
          @ZoneState = params['ZoneState']
        end
      end

    end
  end
end

