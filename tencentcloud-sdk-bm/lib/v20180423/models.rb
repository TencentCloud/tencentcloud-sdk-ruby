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
  module Bm
    module V20180423
      # AttachCamRole请求参数结构体
      class AttachCamRoleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 服务器ID
        # @type InstanceId: String
        # @param RoleName: 角色名称。
        # @type RoleName: String

        attr_accessor :InstanceId, :RoleName

        def initialize(instanceid=nil, rolename=nil)
          @InstanceId = instanceid
          @RoleName = rolename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RoleName = params['RoleName']
        end
      end

      # AttachCamRole返回参数结构体
      class AttachCamRoleResponse < TencentCloud::Common::AbstractModel
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

      # BindPsaTag请求参数结构体
      class BindPsaTagRequest < TencentCloud::Common::AbstractModel
        # @param PsaId: 预授权规则ID
        # @type PsaId: String
        # @param TagKey: 需要绑定的标签key
        # @type TagKey: String
        # @param TagValue: 需要绑定的标签value
        # @type TagValue: String

        attr_accessor :PsaId, :TagKey, :TagValue

        def initialize(psaid=nil, tagkey=nil, tagvalue=nil)
          @PsaId = psaid
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @PsaId = params['PsaId']
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # BindPsaTag返回参数结构体
      class BindPsaTagResponse < TencentCloud::Common::AbstractModel
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

      # BuyDevices请求参数结构体
      class BuyDevicesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区ID。通过接口[查询地域以及可用区(DescribeRegions)](https://cloud.tencent.com/document/api/386/33564)获取可用区信息
        # @type Zone: String
        # @param OsTypeId: 部署服务器的操作系统ID。通过接口[查询操作系统信息(DescribeOsInfo)](https://cloud.tencent.com/document/product/386/32902)获取操作系统信息
        # @type OsTypeId: Integer
        # @param RaidId: RAID类型ID。通过接口[查询机型RAID方式以及系统盘大小(DescribeDeviceClassPartition)](https://cloud.tencent.com/document/api/386/32910)获取RAID信息
        # @type RaidId: Integer
        # @param GoodsCount: 购买数量
        # @type GoodsCount: Integer
        # @param VpcId: 购买至私有网络ID
        # @type VpcId: String
        # @param SubnetId: 购买至子网ID
        # @type SubnetId: String
        # @param DeviceClassCode: 购买的机型ID。通过接口[查询设备型号(DescribeDeviceClass)](https://cloud.tencent.com/document/api/386/32911)获取机型信息
        # @type DeviceClassCode: String
        # @param TimeUnit: 购买时长单位，取值：M(月) D(天)
        # @type TimeUnit: String
        # @param TimeSpan: 购买时长
        # @type TimeSpan: Integer
        # @param NeedSecurityAgent: 是否安装安全Agent，取值：1(安装) 0(不安装)，默认取值0
        # @type NeedSecurityAgent: Integer
        # @param NeedMonitorAgent: 是否安装监控Agent，取值：1(安装) 0(不安装)，默认取值0
        # @type NeedMonitorAgent: Integer
        # @param NeedEMRAgent: 是否安装EMR Agent，取值：1(安装) 0(不安装)，默认取值0
        # @type NeedEMRAgent: Integer
        # @param NeedEMRSoftware: 是否安装EMR软件包，取值：1(安装) 0(不安装)，默认取值0
        # @type NeedEMRSoftware: Integer
        # @param ApplyEip: 是否分配弹性公网IP，取值：1(分配) 0(不分配)，默认取值0
        # @type ApplyEip: Integer
        # @param EipPayMode: 弹性公网IP计费模式，取值：Flow(按流量计费) Bandwidth(按带宽计费)，默认取值Flow
        # @type EipPayMode: String
        # @param EipBandwidth: 弹性公网IP带宽限制，单位Mb
        # @type EipBandwidth: Integer
        # @param IsZoning: 数据盘是否格式化，取值：1(格式化) 0(不格式化)，默认取值为1
        # @type IsZoning: Integer
        # @param CpmPayMode: 物理机计费模式，取值：1(预付费) 2(后付费)，默认取值为1
        # @type CpmPayMode: Integer
        # @param ImageId: 自定义镜像ID，取值生效时用自定义镜像部署物理机
        # @type ImageId: String
        # @param Password: 设置Linux root或Windows Administrator的密码
        # @type Password: String
        # @param AutoRenewFlag: 自动续费标志位，取值：1(自动续费) 0(不自动续费)，默认取值0
        # @type AutoRenewFlag: Integer
        # @param SysRootSpace: 系统盘根分区大小，单位为G，默认取值10G。通过接口[查询机型RAID方式以及系统盘大小(DescribeDeviceClassPartition)](https://cloud.tencent.com/document/api/386/32910)获取根分区信息
        # @type SysRootSpace: Integer
        # @param SysSwaporuefiSpace: 系统盘swap分区或/boot/efi分区的大小，单位为G。若是uefi启动的机器，分区为/boot/efi，且此值是默认是2G。 普通机器为swap分区，可以不指定此分区。 机型是否是uefi启动，参见接口[查询设备型号(DescribeDeviceClass)](https://cloud.tencent.com/document/api/386/32911)
        # @type SysSwaporuefiSpace: Integer
        # @param SysUsrlocalSpace: /usr/local分区大小，单位为G
        # @type SysUsrlocalSpace: Integer
        # @param SysDataSpace: /data分区大小，单位为G。如果系统盘还有剩余大小，会分配给/data分区。（特殊情况：如果剩余空间不足10G，并且没有指定/data分区，则剩余空间会分配给Root分区）
        # @type SysDataSpace: Integer
        # @param HyperThreading: 是否开启超线程，取值：1(开启) 0(关闭)，默认取值1
        # @type HyperThreading: Integer
        # @param LanIps: 指定的内网IP列表，不指定时自动分配
        # @type LanIps: Array
        # @param Aliases: 设备名称列表
        # @type Aliases: Array
        # @param CpuId: CPU型号ID，自定义机型需要传入，取值：
        # <br/><li>1: E5-2620v3 (6核) &#42; 2</li><li>2: E5-2680v4 (14核) &#42; 2</li><li>3: E5-2670v3 (12核) &#42; 2</li><li>4: E5-2620v4 (8核) &#42; 2</li><li>5: 4110 (8核) &#42; 2</li><li>6: 6133 (20核) &#42; 2</li><br/>
        # @type CpuId: Integer
        # @param ContainRaidCard: 是否有RAID卡，取值：1(有) 0(无)，自定义机型需要传入
        # @type ContainRaidCard: Integer
        # @param MemSize: 内存大小，单位为G，自定义机型需要传入。取值参考接口[查询自定义机型部件信息(DescribeHardwareSpecification)](https://cloud.tencent.com/document/api/386/33565)返回值
        # @type MemSize: Integer
        # @param SystemDiskTypeId: 系统盘ID，自定义机型需要传入。取值参考接口[查询自定义机型部件信息(DescribeHardwareSpecification)](https://cloud.tencent.com/document/api/386/33565)返回值
        # @type SystemDiskTypeId: Integer
        # @param SystemDiskCount: 系统盘数量，自定义机型需要传入。取值参考接口[查询自定义机型部件信息(DescribeHardwareSpecification)](https://cloud.tencent.com/document/api/386/33565)返回值
        # @type SystemDiskCount: Integer
        # @param DataDiskTypeId: 数据盘ID，自定义机型需要传入。取值参考接口[查询自定义机型部件信息(DescribeHardwareSpecification)](https://cloud.tencent.com/document/api/386/33565)返回值
        # @type DataDiskTypeId: Integer
        # @param DataDiskCount: 数据盘数量，自定义机型需要传入。取值参考接口[查询自定义机型部件信息(DescribeHardwareSpecification)](https://cloud.tencent.com/document/api/386/33565)返回值
        # @type DataDiskCount: Integer
        # @param Tags: 绑定的标签列表
        # @type Tags: Array
        # @param FileSystem: 指定数据盘的文件系统格式，当前支持 EXT4和XFS选项， 默认为EXT4。 参数适用于数据盘和Linux， 且在IsZoning为1时生效
        # @type FileSystem: String
        # @param BuySession: 此参数是为了防止重复发货。如果两次调用传入相同的BuySession，只会发货一次。 不要以设备别名作为BuySession，这样只会第一次购买成功。参数长度为128位，合法字符为大小字母，数字，下划线，横线。
        # @type BuySession: String
        # @param SgId: 绑定已有的安全组ID。仅在NeedSecurityAgent为1时生效
        # @type SgId: String
        # @param TemplateId: 安全组模板ID，由模板创建新安全组并绑定。TemplateId和SgId不能同时传入
        # @type TemplateId: String

        attr_accessor :Zone, :OsTypeId, :RaidId, :GoodsCount, :VpcId, :SubnetId, :DeviceClassCode, :TimeUnit, :TimeSpan, :NeedSecurityAgent, :NeedMonitorAgent, :NeedEMRAgent, :NeedEMRSoftware, :ApplyEip, :EipPayMode, :EipBandwidth, :IsZoning, :CpmPayMode, :ImageId, :Password, :AutoRenewFlag, :SysRootSpace, :SysSwaporuefiSpace, :SysUsrlocalSpace, :SysDataSpace, :HyperThreading, :LanIps, :Aliases, :CpuId, :ContainRaidCard, :MemSize, :SystemDiskTypeId, :SystemDiskCount, :DataDiskTypeId, :DataDiskCount, :Tags, :FileSystem, :BuySession, :SgId, :TemplateId

        def initialize(zone=nil, ostypeid=nil, raidid=nil, goodscount=nil, vpcid=nil, subnetid=nil, deviceclasscode=nil, timeunit=nil, timespan=nil, needsecurityagent=nil, needmonitoragent=nil, needemragent=nil, needemrsoftware=nil, applyeip=nil, eippaymode=nil, eipbandwidth=nil, iszoning=nil, cpmpaymode=nil, imageid=nil, password=nil, autorenewflag=nil, sysrootspace=nil, sysswaporuefispace=nil, sysusrlocalspace=nil, sysdataspace=nil, hyperthreading=nil, lanips=nil, aliases=nil, cpuid=nil, containraidcard=nil, memsize=nil, systemdisktypeid=nil, systemdiskcount=nil, datadisktypeid=nil, datadiskcount=nil, tags=nil, filesystem=nil, buysession=nil, sgid=nil, templateid=nil)
          @Zone = zone
          @OsTypeId = ostypeid
          @RaidId = raidid
          @GoodsCount = goodscount
          @VpcId = vpcid
          @SubnetId = subnetid
          @DeviceClassCode = deviceclasscode
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @NeedSecurityAgent = needsecurityagent
          @NeedMonitorAgent = needmonitoragent
          @NeedEMRAgent = needemragent
          @NeedEMRSoftware = needemrsoftware
          @ApplyEip = applyeip
          @EipPayMode = eippaymode
          @EipBandwidth = eipbandwidth
          @IsZoning = iszoning
          @CpmPayMode = cpmpaymode
          @ImageId = imageid
          @Password = password
          @AutoRenewFlag = autorenewflag
          @SysRootSpace = sysrootspace
          @SysSwaporuefiSpace = sysswaporuefispace
          @SysUsrlocalSpace = sysusrlocalspace
          @SysDataSpace = sysdataspace
          @HyperThreading = hyperthreading
          @LanIps = lanips
          @Aliases = aliases
          @CpuId = cpuid
          @ContainRaidCard = containraidcard
          @MemSize = memsize
          @SystemDiskTypeId = systemdisktypeid
          @SystemDiskCount = systemdiskcount
          @DataDiskTypeId = datadisktypeid
          @DataDiskCount = datadiskcount
          @Tags = tags
          @FileSystem = filesystem
          @BuySession = buysession
          @SgId = sgid
          @TemplateId = templateid
        end

        def deserialize(params)
          @Zone = params['Zone']
          @OsTypeId = params['OsTypeId']
          @RaidId = params['RaidId']
          @GoodsCount = params['GoodsCount']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @DeviceClassCode = params['DeviceClassCode']
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          @NeedSecurityAgent = params['NeedSecurityAgent']
          @NeedMonitorAgent = params['NeedMonitorAgent']
          @NeedEMRAgent = params['NeedEMRAgent']
          @NeedEMRSoftware = params['NeedEMRSoftware']
          @ApplyEip = params['ApplyEip']
          @EipPayMode = params['EipPayMode']
          @EipBandwidth = params['EipBandwidth']
          @IsZoning = params['IsZoning']
          @CpmPayMode = params['CpmPayMode']
          @ImageId = params['ImageId']
          @Password = params['Password']
          @AutoRenewFlag = params['AutoRenewFlag']
          @SysRootSpace = params['SysRootSpace']
          @SysSwaporuefiSpace = params['SysSwaporuefiSpace']
          @SysUsrlocalSpace = params['SysUsrlocalSpace']
          @SysDataSpace = params['SysDataSpace']
          @HyperThreading = params['HyperThreading']
          @LanIps = params['LanIps']
          @Aliases = params['Aliases']
          @CpuId = params['CpuId']
          @ContainRaidCard = params['ContainRaidCard']
          @MemSize = params['MemSize']
          @SystemDiskTypeId = params['SystemDiskTypeId']
          @SystemDiskCount = params['SystemDiskCount']
          @DataDiskTypeId = params['DataDiskTypeId']
          @DataDiskCount = params['DataDiskCount']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @FileSystem = params['FileSystem']
          @BuySession = params['BuySession']
          @SgId = params['SgId']
          @TemplateId = params['TemplateId']
        end
      end

      # BuyDevices返回参数结构体
      class BuyDevicesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 购买的物理机实例ID列表
        # @type InstanceIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceIds, :RequestId

        def initialize(instanceids=nil, requestid=nil)
          @InstanceIds = instanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # cpu信息
      class CpuInfo < TencentCloud::Common::AbstractModel
        # @param CpuId: CPU的ID
        # @type CpuId: Integer
        # @param CpuDescription: CPU型号描述
        # @type CpuDescription: String
        # @param Series: 机型序列
        # @type Series: Integer
        # @param ContainRaidCard: 支持的RAID方式，0：有RAID卡，1：没有RAID卡
        # @type ContainRaidCard: Array

        attr_accessor :CpuId, :CpuDescription, :Series, :ContainRaidCard

        def initialize(cpuid=nil, cpudescription=nil, series=nil, containraidcard=nil)
          @CpuId = cpuid
          @CpuDescription = cpudescription
          @Series = series
          @ContainRaidCard = containraidcard
        end

        def deserialize(params)
          @CpuId = params['CpuId']
          @CpuDescription = params['CpuDescription']
          @Series = params['Series']
          @ContainRaidCard = params['ContainRaidCard']
        end
      end

      # CreateCustomImage请求参数结构体
      class CreateCustomImageRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 用于制作镜像的物理机ID
        # @type InstanceId: String
        # @param ImageName: 镜像别名
        # @type ImageName: String
        # @param ImageDescription: 镜像描述
        # @type ImageDescription: String

        attr_accessor :InstanceId, :ImageName, :ImageDescription

        def initialize(instanceid=nil, imagename=nil, imagedescription=nil)
          @InstanceId = instanceid
          @ImageName = imagename
          @ImageDescription = imagedescription
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ImageName = params['ImageName']
          @ImageDescription = params['ImageDescription']
        end
      end

      # CreateCustomImage返回参数结构体
      class CreateCustomImageResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 黑石异步任务ID
        # @type TaskId: Integer
        # @param ImageId: 镜像ID
        # @type ImageId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :ImageId, :RequestId

        def initialize(taskid=nil, imageid=nil, requestid=nil)
          @TaskId = taskid
          @ImageId = imageid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ImageId = params['ImageId']
          @RequestId = params['RequestId']
        end
      end

      # CreatePsaRegulation请求参数结构体
      class CreatePsaRegulationRequest < TencentCloud::Common::AbstractModel
        # @param PsaName: 规则别名
        # @type PsaName: String
        # @param TaskTypeIds: 关联的故障类型ID列表
        # @type TaskTypeIds: Array
        # @param RepairLimit: 维修实例上限，默认为5
        # @type RepairLimit: Integer
        # @param PsaDescription: 规则备注
        # @type PsaDescription: String

        attr_accessor :PsaName, :TaskTypeIds, :RepairLimit, :PsaDescription

        def initialize(psaname=nil, tasktypeids=nil, repairlimit=nil, psadescription=nil)
          @PsaName = psaname
          @TaskTypeIds = tasktypeids
          @RepairLimit = repairlimit
          @PsaDescription = psadescription
        end

        def deserialize(params)
          @PsaName = params['PsaName']
          @TaskTypeIds = params['TaskTypeIds']
          @RepairLimit = params['RepairLimit']
          @PsaDescription = params['PsaDescription']
        end
      end

      # CreatePsaRegulation返回参数结构体
      class CreatePsaRegulationResponse < TencentCloud::Common::AbstractModel
        # @param PsaId: 创建的预授权规则ID
        # @type PsaId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PsaId, :RequestId

        def initialize(psaid=nil, requestid=nil)
          @PsaId = psaid
          @RequestId = requestid
        end

        def deserialize(params)
          @PsaId = params['PsaId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSpotDevice请求参数结构体
      class CreateSpotDeviceRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区名称。如ap-guangzhou-bls-1, 通过DescribeRegions获取
        # @type Zone: String
        # @param ComputeType: 计算单元类型, 如v3.c2.medium，更详细的ComputeType参考[竞价实例产品文档](https://cloud.tencent.com/document/product/386/30256)
        # @type ComputeType: String
        # @param OsTypeId: 操作系统类型ID
        # @type OsTypeId: Integer
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param GoodsNum: 购买的计算单元个数
        # @type GoodsNum: Integer
        # @param SpotStrategy: 出价策略。可取值为SpotWithPriceLimit和SpotAsPriceGo。SpotWithPriceLimit，用户设置价格上限，需要传SpotPriceLimit参数， 如果市场价高于用户的指定价格，则购买不成功;  SpotAsPriceGo 是随市场价的策略。
        # @type SpotStrategy: String
        # @param SpotPriceLimit: 用户设置的价格。当为SpotWithPriceLimit竞价策略时有效
        # @type SpotPriceLimit: Float
        # @param Passwd: 设置竞价实例密码。可选参数，没有指定会生成随机密码
        # @type Passwd: String

        attr_accessor :Zone, :ComputeType, :OsTypeId, :VpcId, :SubnetId, :GoodsNum, :SpotStrategy, :SpotPriceLimit, :Passwd

        def initialize(zone=nil, computetype=nil, ostypeid=nil, vpcid=nil, subnetid=nil, goodsnum=nil, spotstrategy=nil, spotpricelimit=nil, passwd=nil)
          @Zone = zone
          @ComputeType = computetype
          @OsTypeId = ostypeid
          @VpcId = vpcid
          @SubnetId = subnetid
          @GoodsNum = goodsnum
          @SpotStrategy = spotstrategy
          @SpotPriceLimit = spotpricelimit
          @Passwd = passwd
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ComputeType = params['ComputeType']
          @OsTypeId = params['OsTypeId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @GoodsNum = params['GoodsNum']
          @SpotStrategy = params['SpotStrategy']
          @SpotPriceLimit = params['SpotPriceLimit']
          @Passwd = params['Passwd']
        end
      end

      # CreateSpotDevice返回参数结构体
      class CreateSpotDeviceResponse < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 创建的服务器ID
        # @type ResourceIds: Array
        # @param FlowId: 任务ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceIds, :FlowId, :RequestId

        def initialize(resourceids=nil, flowid=nil, requestid=nil)
          @ResourceIds = resourceids
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # CreateUserCmd请求参数结构体
      class CreateUserCmdRequest < TencentCloud::Common::AbstractModel
        # @param Alias: 用户自定义脚本的名称
        # @type Alias: String
        # @param OsType: 命令适用的操作系统类型，取值linux或xserver
        # @type OsType: String
        # @param Content: 脚本内容，必须经过base64编码
        # @type Content: String

        attr_accessor :Alias, :OsType, :Content

        def initialize(_alias=nil, ostype=nil, content=nil)
          @Alias = _alias
          @OsType = ostype
          @Content = content
        end

        def deserialize(params)
          @Alias = params['Alias']
          @OsType = params['OsType']
          @Content = params['Content']
        end
      end

      # CreateUserCmd返回参数结构体
      class CreateUserCmdResponse < TencentCloud::Common::AbstractModel
        # @param CmdId: 脚本ID
        # @type CmdId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CmdId, :RequestId

        def initialize(cmdid=nil, requestid=nil)
          @CmdId = cmdid
          @RequestId = requestid
        end

        def deserialize(params)
          @CmdId = params['CmdId']
          @RequestId = params['RequestId']
        end
      end

      # 自定义镜像信息
      class CustomImage < TencentCloud::Common::AbstractModel
        # @param ImageId: 镜像ID
        # @type ImageId: String
        # @param ImageName: 镜像别名
        # @type ImageName: String
        # @param ImageStatus: 镜像状态码
        # @type ImageStatus: Integer
        # @param OsClass: 镜像OS名
        # @type OsClass: String
        # @param OsVersion: 镜像OS版本
        # @type OsVersion: String
        # @param OsBit: OS是64还是32位
        # @type OsBit: Integer
        # @param ImageSize: 镜像大小(M)
        # @type ImageSize: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param PartitionInfoSet: 分区信息
        # @type PartitionInfoSet: Array
        # @param DeviceClassCode: 适用机型
        # @type DeviceClassCode: String
        # @param ImageDescription: 备注
        # @type ImageDescription: String
        # @param OsTypeId: 原始镜像id
        # @type OsTypeId: Integer

        attr_accessor :ImageId, :ImageName, :ImageStatus, :OsClass, :OsVersion, :OsBit, :ImageSize, :CreateTime, :PartitionInfoSet, :DeviceClassCode, :ImageDescription, :OsTypeId

        def initialize(imageid=nil, imagename=nil, imagestatus=nil, osclass=nil, osversion=nil, osbit=nil, imagesize=nil, createtime=nil, partitioninfoset=nil, deviceclasscode=nil, imagedescription=nil, ostypeid=nil)
          @ImageId = imageid
          @ImageName = imagename
          @ImageStatus = imagestatus
          @OsClass = osclass
          @OsVersion = osversion
          @OsBit = osbit
          @ImageSize = imagesize
          @CreateTime = createtime
          @PartitionInfoSet = partitioninfoset
          @DeviceClassCode = deviceclasscode
          @ImageDescription = imagedescription
          @OsTypeId = ostypeid
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @ImageName = params['ImageName']
          @ImageStatus = params['ImageStatus']
          @OsClass = params['OsClass']
          @OsVersion = params['OsVersion']
          @OsBit = params['OsBit']
          @ImageSize = params['ImageSize']
          @CreateTime = params['CreateTime']
          unless params['PartitionInfoSet'].nil?
            @PartitionInfoSet = []
            params['PartitionInfoSet'].each do |i|
              partitioninfo_tmp = PartitionInfo.new
              partitioninfo_tmp.deserialize(i)
              @PartitionInfoSet << partitioninfo_tmp
            end
          end
          @DeviceClassCode = params['DeviceClassCode']
          @ImageDescription = params['ImageDescription']
          @OsTypeId = params['OsTypeId']
        end
      end

      # 镜像制作进度列表
      class CustomImageProcess < TencentCloud::Common::AbstractModel
        # @param StepName: 步骤
        # @type StepName: String
        # @param StartTime: 此步骤开始时间
        # @type StartTime: String
        # @param StepType: 0: 已完成 1: 当前进行 2: 未开始
        # @type StepType: Integer

        attr_accessor :StepName, :StartTime, :StepType

        def initialize(stepname=nil, starttime=nil, steptype=nil)
          @StepName = stepname
          @StartTime = starttime
          @StepType = steptype
        end

        def deserialize(params)
          @StepName = params['StepName']
          @StartTime = params['StartTime']
          @StepType = params['StepType']
        end
      end

      # DeleteCustomImages请求参数结构体
      class DeleteCustomImagesRequest < TencentCloud::Common::AbstractModel
        # @param ImageIds: 准备删除的镜像ID列表
        # @type ImageIds: Array

        attr_accessor :ImageIds

        def initialize(imageids=nil)
          @ImageIds = imageids
        end

        def deserialize(params)
          @ImageIds = params['ImageIds']
        end
      end

      # DeleteCustomImages返回参数结构体
      class DeleteCustomImagesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 黑石异步任务ID
        # @type TaskId: Integer
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

      # DeletePsaRegulation请求参数结构体
      class DeletePsaRegulationRequest < TencentCloud::Common::AbstractModel
        # @param PsaId: 预授权规则ID
        # @type PsaId: String

        attr_accessor :PsaId

        def initialize(psaid=nil)
          @PsaId = psaid
        end

        def deserialize(params)
          @PsaId = params['PsaId']
        end
      end

      # DeletePsaRegulation返回参数结构体
      class DeletePsaRegulationResponse < TencentCloud::Common::AbstractModel
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

      # DeleteUserCmds请求参数结构体
      class DeleteUserCmdsRequest < TencentCloud::Common::AbstractModel
        # @param CmdIds: 需要删除的脚本ID
        # @type CmdIds: Array

        attr_accessor :CmdIds

        def initialize(cmdids=nil)
          @CmdIds = cmdids
        end

        def deserialize(params)
          @CmdIds = params['CmdIds']
        end
      end

      # DeleteUserCmds返回参数结构体
      class DeleteUserCmdsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCustomImageProcess请求参数结构体
      class DescribeCustomImageProcessRequest < TencentCloud::Common::AbstractModel
        # @param ImageId: 镜像ID
        # @type ImageId: String

        attr_accessor :ImageId

        def initialize(imageid=nil)
          @ImageId = imageid
        end

        def deserialize(params)
          @ImageId = params['ImageId']
        end
      end

      # DescribeCustomImageProcess返回参数结构体
      class DescribeCustomImageProcessResponse < TencentCloud::Common::AbstractModel
        # @param CustomImageProcessSet: 镜像制作进度
        # @type CustomImageProcessSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomImageProcessSet, :RequestId

        def initialize(customimageprocessset=nil, requestid=nil)
          @CustomImageProcessSet = customimageprocessset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CustomImageProcessSet'].nil?
            @CustomImageProcessSet = []
            params['CustomImageProcessSet'].each do |i|
              customimageprocess_tmp = CustomImageProcess.new
              customimageprocess_tmp.deserialize(i)
              @CustomImageProcessSet << customimageprocess_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomImages请求参数结构体
      class DescribeCustomImagesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 数量限制
        # @type Limit: Integer
        # @param OrderField: 排序字段，仅支持CreateTime
        # @type OrderField: String
        # @param Order: 排序方式 0:递增(默认) 1:递减
        # @type Order: Integer
        # @param ImageId: 按ImageId查找指定镜像信息，ImageId字段存在时其他字段失效
        # @type ImageId: String
        # @param SearchKey: 模糊查询过滤，可以查询镜像ID或镜像名
        # @type SearchKey: String
        # @param ImageStatus: <ul>
        # 镜像状态过滤列表，有效取值为：
        # <li>1：制作中</li>
        # <li>2：制作失败</li>
        # <li>3：正常</li>
        # <li>4：删除中</li>
        # </ul>
        # @type ImageStatus: Array

        attr_accessor :Offset, :Limit, :OrderField, :Order, :ImageId, :SearchKey, :ImageStatus

        def initialize(offset=nil, limit=nil, orderfield=nil, order=nil, imageid=nil, searchkey=nil, imagestatus=nil)
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @Order = order
          @ImageId = imageid
          @SearchKey = searchkey
          @ImageStatus = imagestatus
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @Order = params['Order']
          @ImageId = params['ImageId']
          @SearchKey = params['SearchKey']
          @ImageStatus = params['ImageStatus']
        end
      end

      # DescribeCustomImages返回参数结构体
      class DescribeCustomImagesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回镜像数量
        # @type TotalCount: Integer
        # @param CustomImageSet: 镜像信息列表
        # @type CustomImageSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CustomImageSet, :RequestId

        def initialize(totalcount=nil, customimageset=nil, requestid=nil)
          @TotalCount = totalcount
          @CustomImageSet = customimageset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CustomImageSet'].nil?
            @CustomImageSet = []
            params['CustomImageSet'].each do |i|
              customimage_tmp = CustomImage.new
              customimage_tmp.deserialize(i)
              @CustomImageSet << customimage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceClassPartition请求参数结构体
      class DescribeDeviceClassPartitionRequest < TencentCloud::Common::AbstractModel
        # @param DeviceClassCode: 设备类型代号。代号通过接口[查询设备型号(DescribeDeviceClass)](https://cloud.tencent.com/document/api/386/32911)查询。标准机型需要传入此参数。虽是可选参数，但DeviceClassCode和InstanceId参数，必须要填写一个。
        # @type DeviceClassCode: String
        # @param InstanceId: 需要查询自定义机型RAID信息时，传入自定义机型实例ID。InstanceId存在时其余参数失效。
        # @type InstanceId: String
        # @param CpuId: CPU型号ID，查询自定义机型时需要传入
        # @type CpuId: Integer
        # @param MemSize: 内存大小，单位为G，查询自定义机型时需要传入
        # @type MemSize: Integer
        # @param ContainRaidCard: 是否有RAID卡，取值：1(有) 0(无)。查询自定义机型时需要传入
        # @type ContainRaidCard: Integer
        # @param SystemDiskTypeId: 系统盘类型ID，查询自定义机型时需要传入
        # @type SystemDiskTypeId: Integer
        # @param SystemDiskCount: 系统盘数量，查询自定义机型时需要传入
        # @type SystemDiskCount: Integer
        # @param DataDiskTypeId: 数据盘类型ID，查询自定义机型时可传入
        # @type DataDiskTypeId: Integer
        # @param DataDiskCount: 数据盘数量，查询自定义机型时可传入
        # @type DataDiskCount: Integer

        attr_accessor :DeviceClassCode, :InstanceId, :CpuId, :MemSize, :ContainRaidCard, :SystemDiskTypeId, :SystemDiskCount, :DataDiskTypeId, :DataDiskCount

        def initialize(deviceclasscode=nil, instanceid=nil, cpuid=nil, memsize=nil, containraidcard=nil, systemdisktypeid=nil, systemdiskcount=nil, datadisktypeid=nil, datadiskcount=nil)
          @DeviceClassCode = deviceclasscode
          @InstanceId = instanceid
          @CpuId = cpuid
          @MemSize = memsize
          @ContainRaidCard = containraidcard
          @SystemDiskTypeId = systemdisktypeid
          @SystemDiskCount = systemdiskcount
          @DataDiskTypeId = datadisktypeid
          @DataDiskCount = datadiskcount
        end

        def deserialize(params)
          @DeviceClassCode = params['DeviceClassCode']
          @InstanceId = params['InstanceId']
          @CpuId = params['CpuId']
          @MemSize = params['MemSize']
          @ContainRaidCard = params['ContainRaidCard']
          @SystemDiskTypeId = params['SystemDiskTypeId']
          @SystemDiskCount = params['SystemDiskCount']
          @DataDiskTypeId = params['DataDiskTypeId']
          @DataDiskCount = params['DataDiskCount']
        end
      end

      # DescribeDeviceClassPartition返回参数结构体
      class DescribeDeviceClassPartitionResponse < TencentCloud::Common::AbstractModel
        # @param DeviceClassPartitionInfoSet: 支持的RAID格式列表
        # @type DeviceClassPartitionInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceClassPartitionInfoSet, :RequestId

        def initialize(deviceclasspartitioninfoset=nil, requestid=nil)
          @DeviceClassPartitionInfoSet = deviceclasspartitioninfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeviceClassPartitionInfoSet'].nil?
            @DeviceClassPartitionInfoSet = []
            params['DeviceClassPartitionInfoSet'].each do |i|
              deviceclasspartitioninfo_tmp = DeviceClassPartitionInfo.new
              deviceclasspartitioninfo_tmp.deserialize(i)
              @DeviceClassPartitionInfoSet << deviceclasspartitioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceClass请求参数结构体
      class DescribeDeviceClassRequest < TencentCloud::Common::AbstractModel
        # @param OnSale: 是否仅查询在售标准机型配置信息。取值0：查询所有机型；1：查询在售机型。默认为1
        # @type OnSale: Integer
        # @param NeedPriceInfo: 是否返回价格信息。取值0：不返回价格信息，接口返回速度更快；1：返回价格信息。默认为1
        # @type NeedPriceInfo: Integer

        attr_accessor :OnSale, :NeedPriceInfo

        def initialize(onsale=nil, needpriceinfo=nil)
          @OnSale = onsale
          @NeedPriceInfo = needpriceinfo
        end

        def deserialize(params)
          @OnSale = params['OnSale']
          @NeedPriceInfo = params['NeedPriceInfo']
        end
      end

      # DescribeDeviceClass返回参数结构体
      class DescribeDeviceClassResponse < TencentCloud::Common::AbstractModel
        # @param DeviceClassSet: 物理机设备类型列表
        # @type DeviceClassSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceClassSet, :RequestId

        def initialize(deviceclassset=nil, requestid=nil)
          @DeviceClassSet = deviceclassset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeviceClassSet'].nil?
            @DeviceClassSet = []
            params['DeviceClassSet'].each do |i|
              deviceclass_tmp = DeviceClass.new
              deviceclass_tmp.deserialize(i)
              @DeviceClassSet << deviceclass_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceHardwareInfo请求参数结构体
      class DescribeDeviceHardwareInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 设备 ID 列表
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeDeviceHardwareInfo返回参数结构体
      class DescribeDeviceHardwareInfoResponse < TencentCloud::Common::AbstractModel
        # @param DeviceHardwareInfoSet: 设备硬件配置信息
        # @type DeviceHardwareInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceHardwareInfoSet, :RequestId

        def initialize(devicehardwareinfoset=nil, requestid=nil)
          @DeviceHardwareInfoSet = devicehardwareinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeviceHardwareInfoSet'].nil?
            @DeviceHardwareInfoSet = []
            params['DeviceHardwareInfoSet'].each do |i|
              devicehardwareinfo_tmp = DeviceHardwareInfo.new
              devicehardwareinfo_tmp.deserialize(i)
              @DeviceHardwareInfoSet << devicehardwareinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceInventory请求参数结构体
      class DescribeDeviceInventoryRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param DeviceClassCode: 设备型号
        # @type DeviceClassCode: String
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param CpuId: CPU型号ID，查询自定义机型时必填
        # @type CpuId: Integer
        # @param MemSize: 内存大小，单位为G，查询自定义机型时必填
        # @type MemSize: Integer
        # @param ContainRaidCard: 是否有RAID卡，取值：1(有) 0(无)，查询自定义机型时必填
        # @type ContainRaidCard: Integer
        # @param SystemDiskTypeId: 系统盘类型ID，查询自定义机型时必填
        # @type SystemDiskTypeId: Integer
        # @param SystemDiskCount: 系统盘数量，查询自定义机型时必填
        # @type SystemDiskCount: Integer
        # @param DataDiskTypeId: 数据盘类型ID，查询自定义机型时可填
        # @type DataDiskTypeId: Integer
        # @param DataDiskCount: 数据盘数量，查询自定义机型时可填
        # @type DataDiskCount: Integer

        attr_accessor :Zone, :DeviceClassCode, :VpcId, :SubnetId, :CpuId, :MemSize, :ContainRaidCard, :SystemDiskTypeId, :SystemDiskCount, :DataDiskTypeId, :DataDiskCount

        def initialize(zone=nil, deviceclasscode=nil, vpcid=nil, subnetid=nil, cpuid=nil, memsize=nil, containraidcard=nil, systemdisktypeid=nil, systemdiskcount=nil, datadisktypeid=nil, datadiskcount=nil)
          @Zone = zone
          @DeviceClassCode = deviceclasscode
          @VpcId = vpcid
          @SubnetId = subnetid
          @CpuId = cpuid
          @MemSize = memsize
          @ContainRaidCard = containraidcard
          @SystemDiskTypeId = systemdisktypeid
          @SystemDiskCount = systemdiskcount
          @DataDiskTypeId = datadisktypeid
          @DataDiskCount = datadiskcount
        end

        def deserialize(params)
          @Zone = params['Zone']
          @DeviceClassCode = params['DeviceClassCode']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @CpuId = params['CpuId']
          @MemSize = params['MemSize']
          @ContainRaidCard = params['ContainRaidCard']
          @SystemDiskTypeId = params['SystemDiskTypeId']
          @SystemDiskCount = params['SystemDiskCount']
          @DataDiskTypeId = params['DataDiskTypeId']
          @DataDiskCount = params['DataDiskCount']
        end
      end

      # DescribeDeviceInventory返回参数结构体
      class DescribeDeviceInventoryResponse < TencentCloud::Common::AbstractModel
        # @param DeviceCount: 库存设备数量
        # @type DeviceCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceCount, :RequestId

        def initialize(devicecount=nil, requestid=nil)
          @DeviceCount = devicecount
          @RequestId = requestid
        end

        def deserialize(params)
          @DeviceCount = params['DeviceCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceOperationLog请求参数结构体
      class DescribeDeviceOperationLogRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 设备实例ID
        # @type InstanceId: String
        # @param StartTime: 查询开始日期
        # @type StartTime: String
        # @param EndTime: 查询结束日期
        # @type EndTime: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :Offset, :Limit

        def initialize(instanceid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDeviceOperationLog返回参数结构体
      class DescribeDeviceOperationLogResponse < TencentCloud::Common::AbstractModel
        # @param DeviceOperationLogSet: 操作日志列表
        # @type DeviceOperationLogSet: Array
        # @param TotalCount: 返回数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceOperationLogSet, :TotalCount, :RequestId

        def initialize(deviceoperationlogset=nil, totalcount=nil, requestid=nil)
          @DeviceOperationLogSet = deviceoperationlogset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeviceOperationLogSet'].nil?
            @DeviceOperationLogSet = []
            params['DeviceOperationLogSet'].each do |i|
              deviceoperationlog_tmp = DeviceOperationLog.new
              deviceoperationlog_tmp.deserialize(i)
              @DeviceOperationLogSet << deviceoperationlog_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevicePartition请求参数结构体
      class DescribeDevicePartitionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 物理机ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDevicePartition返回参数结构体
      class DescribeDevicePartitionResponse < TencentCloud::Common::AbstractModel
        # @param DevicePartition: 物理机分区格式
        # @type DevicePartition: :class:`Tencentcloud::Bm.v20180423.models.DevicePartition`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DevicePartition, :RequestId

        def initialize(devicepartition=nil, requestid=nil)
          @DevicePartition = devicepartition
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DevicePartition'].nil?
            @DevicePartition = DevicePartition.new
            @DevicePartition.deserialize(params['DevicePartition'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevicePosition请求参数结构体
      class DescribeDevicePositionRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 数量限制
        # @type Limit: Integer
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param InstanceIds: 实例ID列表
        # @type InstanceIds: Array
        # @param Alias: 实例别名
        # @type Alias: String

        attr_accessor :Offset, :Limit, :VpcId, :SubnetId, :InstanceIds, :Alias

        def initialize(offset=nil, limit=nil, vpcid=nil, subnetid=nil, instanceids=nil, _alias=nil)
          @Offset = offset
          @Limit = limit
          @VpcId = vpcid
          @SubnetId = subnetid
          @InstanceIds = instanceids
          @Alias = _alias
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @InstanceIds = params['InstanceIds']
          @Alias = params['Alias']
        end
      end

      # DescribeDevicePosition返回参数结构体
      class DescribeDevicePositionResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回数量
        # @type TotalCount: Integer
        # @param DevicePositionInfoSet: 设备所在机架信息
        # @type DevicePositionInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DevicePositionInfoSet, :RequestId

        def initialize(totalcount=nil, devicepositioninfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @DevicePositionInfoSet = devicepositioninfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DevicePositionInfoSet'].nil?
            @DevicePositionInfoSet = []
            params['DevicePositionInfoSet'].each do |i|
              devicepositioninfo_tmp = DevicePositionInfo.new
              devicepositioninfo_tmp.deserialize(i)
              @DevicePositionInfoSet << devicepositioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevicePriceInfo请求参数结构体
      class DescribeDevicePriceInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 需要查询的实例列表
        # @type InstanceIds: Array
        # @param TimeUnit: 购买时长单位，当前只支持取值为m
        # @type TimeUnit: String
        # @param TimeSpan: 购买时长
        # @type TimeSpan: Integer

        attr_accessor :InstanceIds, :TimeUnit, :TimeSpan

        def initialize(instanceids=nil, timeunit=nil, timespan=nil)
          @InstanceIds = instanceids
          @TimeUnit = timeunit
          @TimeSpan = timespan
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
        end
      end

      # DescribeDevicePriceInfo返回参数结构体
      class DescribeDevicePriceInfoResponse < TencentCloud::Common::AbstractModel
        # @param DevicePriceInfoSet: 服务器价格信息列表
        # @type DevicePriceInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DevicePriceInfoSet, :RequestId

        def initialize(devicepriceinfoset=nil, requestid=nil)
          @DevicePriceInfoSet = devicepriceinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DevicePriceInfoSet'].nil?
            @DevicePriceInfoSet = []
            params['DevicePriceInfoSet'].each do |i|
              devicepriceinfo_tmp = DevicePriceInfo.new
              devicepriceinfo_tmp.deserialize(i)
              @DevicePriceInfoSet << devicepriceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevices请求参数结构体
      class DescribeDevicesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param DeviceClassCode: 机型ID，通过接口[查询设备型号(DescribeDeviceClass)](https://cloud.tencent.com/document/api/386/32911)查询
        # @type DeviceClassCode: String
        # @param InstanceIds: 设备ID数组
        # @type InstanceIds: Array
        # @param WanIps: 外网IP数组
        # @type WanIps: Array
        # @param LanIps: 内网IP数组
        # @type LanIps: Array
        # @param Alias: 设备名称
        # @type Alias: String
        # @param VagueIp: 模糊IP查询
        # @type VagueIp: String
        # @param DeadlineStartTime: 设备到期时间查询的起始时间
        # @type DeadlineStartTime: String
        # @param DeadlineEndTime: 设备到期时间查询的结束时间
        # @type DeadlineEndTime: String
        # @param AutoRenewFlag: 自动续费标志 0:不自动续费，1:自动续费
        # @type AutoRenewFlag: Integer
        # @param VpcId: 私有网络唯一ID
        # @type VpcId: String
        # @param SubnetId: 子网唯一ID
        # @type SubnetId: String
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param DeviceType: 设备类型，取值有: compute(计算型), standard(标准型), storage(存储型) 等
        # @type DeviceType: String
        # @param IsLuckyDevice: 竞价实例机器的过滤。如果未指定此参数，则不做过滤。0: 查询非竞价实例的机器; 1: 查询竞价实例的机器。
        # @type IsLuckyDevice: Integer
        # @param OrderField: 排序字段
        # @type OrderField: String
        # @param Order: 排序方式，取值：0:增序(默认)，1:降序
        # @type Order: Integer
        # @param MaintainStatus: 按照维保方式过滤。可取值为 Maintain: 在保;  WillExpire: 即将过保; Expire: 已过保
        # @type MaintainStatus: String

        attr_accessor :Offset, :Limit, :DeviceClassCode, :InstanceIds, :WanIps, :LanIps, :Alias, :VagueIp, :DeadlineStartTime, :DeadlineEndTime, :AutoRenewFlag, :VpcId, :SubnetId, :Tags, :DeviceType, :IsLuckyDevice, :OrderField, :Order, :MaintainStatus

        def initialize(offset=nil, limit=nil, deviceclasscode=nil, instanceids=nil, wanips=nil, lanips=nil, _alias=nil, vagueip=nil, deadlinestarttime=nil, deadlineendtime=nil, autorenewflag=nil, vpcid=nil, subnetid=nil, tags=nil, devicetype=nil, isluckydevice=nil, orderfield=nil, order=nil, maintainstatus=nil)
          @Offset = offset
          @Limit = limit
          @DeviceClassCode = deviceclasscode
          @InstanceIds = instanceids
          @WanIps = wanips
          @LanIps = lanips
          @Alias = _alias
          @VagueIp = vagueip
          @DeadlineStartTime = deadlinestarttime
          @DeadlineEndTime = deadlineendtime
          @AutoRenewFlag = autorenewflag
          @VpcId = vpcid
          @SubnetId = subnetid
          @Tags = tags
          @DeviceType = devicetype
          @IsLuckyDevice = isluckydevice
          @OrderField = orderfield
          @Order = order
          @MaintainStatus = maintainstatus
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DeviceClassCode = params['DeviceClassCode']
          @InstanceIds = params['InstanceIds']
          @WanIps = params['WanIps']
          @LanIps = params['LanIps']
          @Alias = params['Alias']
          @VagueIp = params['VagueIp']
          @DeadlineStartTime = params['DeadlineStartTime']
          @DeadlineEndTime = params['DeadlineEndTime']
          @AutoRenewFlag = params['AutoRenewFlag']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @DeviceType = params['DeviceType']
          @IsLuckyDevice = params['IsLuckyDevice']
          @OrderField = params['OrderField']
          @Order = params['Order']
          @MaintainStatus = params['MaintainStatus']
        end
      end

      # DescribeDevices返回参数结构体
      class DescribeDevicesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回数量
        # @type TotalCount: Integer
        # @param DeviceInfoSet: 物理机信息列表
        # @type DeviceInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DeviceInfoSet, :RequestId

        def initialize(totalcount=nil, deviceinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @DeviceInfoSet = deviceinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DeviceInfoSet'].nil?
            @DeviceInfoSet = []
            params['DeviceInfoSet'].each do |i|
              deviceinfo_tmp = DeviceInfo.new
              deviceinfo_tmp.deserialize(i)
              @DeviceInfoSet << deviceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHardwareSpecification请求参数结构体
      class DescribeHardwareSpecificationRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeHardwareSpecification返回参数结构体
      class DescribeHardwareSpecificationResponse < TencentCloud::Common::AbstractModel
        # @param CpuInfoSet: CPU型号列表
        # @type CpuInfoSet: Array
        # @param MemSet: 内存的取值，单位为G
        # @type MemSet: Array
        # @param DiskInfoSet: 硬盘型号列表
        # @type DiskInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CpuInfoSet, :MemSet, :DiskInfoSet, :RequestId

        def initialize(cpuinfoset=nil, memset=nil, diskinfoset=nil, requestid=nil)
          @CpuInfoSet = cpuinfoset
          @MemSet = memset
          @DiskInfoSet = diskinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CpuInfoSet'].nil?
            @CpuInfoSet = []
            params['CpuInfoSet'].each do |i|
              cpuinfo_tmp = CpuInfo.new
              cpuinfo_tmp.deserialize(i)
              @CpuInfoSet << cpuinfo_tmp
            end
          end
          @MemSet = params['MemSet']
          unless params['DiskInfoSet'].nil?
            @DiskInfoSet = []
            params['DiskInfoSet'].each do |i|
              diskinfo_tmp = DiskInfo.new
              diskinfo_tmp.deserialize(i)
              @DiskInfoSet << diskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostedDeviceOutBandInfo请求参数结构体
      class DescribeHostedDeviceOutBandInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 托管设备的唯一ID数组,数组个数不超过20
        # @type InstanceIds: Array
        # @param Zone: 可用区ID
        # @type Zone: String

        attr_accessor :InstanceIds, :Zone

        def initialize(instanceids=nil, zone=nil)
          @InstanceIds = instanceids
          @Zone = zone
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @Zone = params['Zone']
        end
      end

      # DescribeHostedDeviceOutBandInfo返回参数结构体
      class DescribeHostedDeviceOutBandInfoResponse < TencentCloud::Common::AbstractModel
        # @param HostedDeviceOutBandInfoSet: 托管设备带外信息
        # @type HostedDeviceOutBandInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HostedDeviceOutBandInfoSet, :RequestId

        def initialize(hosteddeviceoutbandinfoset=nil, requestid=nil)
          @HostedDeviceOutBandInfoSet = hosteddeviceoutbandinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HostedDeviceOutBandInfoSet'].nil?
            @HostedDeviceOutBandInfoSet = []
            params['HostedDeviceOutBandInfoSet'].each do |i|
              hosteddeviceoutbandinfo_tmp = HostedDeviceOutBandInfo.new
              hosteddeviceoutbandinfo_tmp.deserialize(i)
              @HostedDeviceOutBandInfoSet << hosteddeviceoutbandinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOperationResult请求参数结构体
      class DescribeOperationResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID
        # @type TaskId: Integer

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeOperationResult返回参数结构体
      class DescribeOperationResultResponse < TencentCloud::Common::AbstractModel
        # @param TaskStatus: 任务的整体状态，取值如下：<br>
        # 1：成功<br>
        # 2：失败<br>
        # 3：部分成功，部分失败<br>
        # 4：未完成<br>
        # 5：部分成功，部分未完成<br>
        # 6：部分未完成，部分失败<br>
        # 7：部分未完成，部分失败，部分成功
        # @type TaskStatus: Integer
        # @param SubtaskStatusSet: 各实例对应任务的状态ID
        # @type SubtaskStatusSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskStatus, :SubtaskStatusSet, :RequestId

        def initialize(taskstatus=nil, subtaskstatusset=nil, requestid=nil)
          @TaskStatus = taskstatus
          @SubtaskStatusSet = subtaskstatusset
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskStatus = params['TaskStatus']
          unless params['SubtaskStatusSet'].nil?
            @SubtaskStatusSet = []
            params['SubtaskStatusSet'].each do |i|
              subtaskstatus_tmp = SubtaskStatus.new
              subtaskstatus_tmp.deserialize(i)
              @SubtaskStatusSet << subtaskstatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOsInfo请求参数结构体
      class DescribeOsInfoRequest < TencentCloud::Common::AbstractModel
        # @param DeviceClassCode: 设备类型代号。 可以从DescribeDeviceClass查询设备类型列表
        # @type DeviceClassCode: String

        attr_accessor :DeviceClassCode

        def initialize(deviceclasscode=nil)
          @DeviceClassCode = deviceclasscode
        end

        def deserialize(params)
          @DeviceClassCode = params['DeviceClassCode']
        end
      end

      # DescribeOsInfo返回参数结构体
      class DescribeOsInfoResponse < TencentCloud::Common::AbstractModel
        # @param OsInfoSet: 操作系统信息列表
        # @type OsInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OsInfoSet, :RequestId

        def initialize(osinfoset=nil, requestid=nil)
          @OsInfoSet = osinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['OsInfoSet'].nil?
            @OsInfoSet = []
            params['OsInfoSet'].each do |i|
              osinfo_tmp = OsInfo.new
              osinfo_tmp.deserialize(i)
              @OsInfoSet << osinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePsaRegulations请求参数结构体
      class DescribePsaRegulationsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 数量限制
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param PsaIds: 规则ID过滤，支持模糊查询
        # @type PsaIds: Array
        # @param PsaNames: 规则别名过滤，支持模糊查询
        # @type PsaNames: Array
        # @param Tags: 标签过滤
        # @type Tags: Array
        # @param OrderField: 排序字段，取值支持：CreateTime
        # @type OrderField: String
        # @param Order: 排序方式 0:递增(默认) 1:递减
        # @type Order: Integer

        attr_accessor :Limit, :Offset, :PsaIds, :PsaNames, :Tags, :OrderField, :Order

        def initialize(limit=nil, offset=nil, psaids=nil, psanames=nil, tags=nil, orderfield=nil, order=nil)
          @Limit = limit
          @Offset = offset
          @PsaIds = psaids
          @PsaNames = psanames
          @Tags = tags
          @OrderField = orderfield
          @Order = order
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @PsaIds = params['PsaIds']
          @PsaNames = params['PsaNames']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @OrderField = params['OrderField']
          @Order = params['Order']
        end
      end

      # DescribePsaRegulations返回参数结构体
      class DescribePsaRegulationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回规则数量
        # @type TotalCount: Integer
        # @param PsaRegulations: 返回规则列表
        # @type PsaRegulations: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :PsaRegulations, :RequestId

        def initialize(totalcount=nil, psaregulations=nil, requestid=nil)
          @TotalCount = totalcount
          @PsaRegulations = psaregulations
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['PsaRegulations'].nil?
            @PsaRegulations = []
            params['PsaRegulations'].each do |i|
              psaregulation_tmp = PsaRegulation.new
              psaregulation_tmp.deserialize(i)
              @PsaRegulations << psaregulation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegions请求参数结构体
      class DescribeRegionsRequest < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域整型ID，目前黑石可用地域包括：8-北京，4-上海，1-广州， 19-重庆
        # @type RegionId: Integer

        attr_accessor :RegionId

        def initialize(regionid=nil)
          @RegionId = regionid
        end

        def deserialize(params)
          @RegionId = params['RegionId']
        end
      end

      # DescribeRegions返回参数结构体
      class DescribeRegionsResponse < TencentCloud::Common::AbstractModel
        # @param RegionInfoSet: 地域信息
        # @type RegionInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegionInfoSet, :RequestId

        def initialize(regioninfoset=nil, requestid=nil)
          @RegionInfoSet = regioninfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RegionInfoSet'].nil?
            @RegionInfoSet = []
            params['RegionInfoSet'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @RegionInfoSet << regioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRepairTaskConstant请求参数结构体
      class DescribeRepairTaskConstantRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRepairTaskConstant返回参数结构体
      class DescribeRepairTaskConstantResponse < TencentCloud::Common::AbstractModel
        # @param TaskTypeSet: 故障类型ID与对应中文名列表
        # @type TaskTypeSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskTypeSet, :RequestId

        def initialize(tasktypeset=nil, requestid=nil)
          @TaskTypeSet = tasktypeset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskTypeSet'].nil?
            @TaskTypeSet = []
            params['TaskTypeSet'].each do |i|
              tasktype_tmp = TaskType.new
              tasktype_tmp.deserialize(i)
              @TaskTypeSet << tasktype_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskInfo请求参数结构体
      class DescribeTaskInfoRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 开始位置
        # @type Offset: Integer
        # @param Limit: 数据条数
        # @type Limit: Integer
        # @param StartDate: 时间过滤下限
        # @type StartDate: String
        # @param EndDate: 时间过滤上限
        # @type EndDate: String
        # @param TaskStatus: 任务状态ID过滤
        # @type TaskStatus: Array
        # @param OrderField: 排序字段，目前支持：CreateTime，AuthTime，EndTime
        # @type OrderField: String
        # @param Order: 排序方式 0:递增(默认) 1:递减
        # @type Order: Integer
        # @param TaskIds: 任务ID过滤
        # @type TaskIds: Array
        # @param InstanceIds: 实例ID过滤
        # @type InstanceIds: Array
        # @param Aliases: 实例别名过滤
        # @type Aliases: Array
        # @param TaskTypeIds: 故障类型ID过滤
        # @type TaskTypeIds: Array

        attr_accessor :Offset, :Limit, :StartDate, :EndDate, :TaskStatus, :OrderField, :Order, :TaskIds, :InstanceIds, :Aliases, :TaskTypeIds

        def initialize(offset=nil, limit=nil, startdate=nil, enddate=nil, taskstatus=nil, orderfield=nil, order=nil, taskids=nil, instanceids=nil, aliases=nil, tasktypeids=nil)
          @Offset = offset
          @Limit = limit
          @StartDate = startdate
          @EndDate = enddate
          @TaskStatus = taskstatus
          @OrderField = orderfield
          @Order = order
          @TaskIds = taskids
          @InstanceIds = instanceids
          @Aliases = aliases
          @TaskTypeIds = tasktypeids
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @TaskStatus = params['TaskStatus']
          @OrderField = params['OrderField']
          @Order = params['Order']
          @TaskIds = params['TaskIds']
          @InstanceIds = params['InstanceIds']
          @Aliases = params['Aliases']
          @TaskTypeIds = params['TaskTypeIds']
        end
      end

      # DescribeTaskInfo返回参数结构体
      class DescribeTaskInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回任务总数量
        # @type TotalCount: Integer
        # @param TaskInfoSet: 任务信息列表
        # @type TaskInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TaskInfoSet, :RequestId

        def initialize(totalcount=nil, taskinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @TaskInfoSet = taskinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TaskInfoSet'].nil?
            @TaskInfoSet = []
            params['TaskInfoSet'].each do |i|
              taskinfo_tmp = TaskInfo.new
              taskinfo_tmp.deserialize(i)
              @TaskInfoSet << taskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskOperationLog请求参数结构体
      class DescribeTaskOperationLogRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 维修任务ID
        # @type TaskId: String
        # @param OrderField: 排序字段，目前支持：OperationTime
        # @type OrderField: String
        # @param Order: 排序方式 0:递增(默认) 1:递减
        # @type Order: Integer

        attr_accessor :TaskId, :OrderField, :Order

        def initialize(taskid=nil, orderfield=nil, order=nil)
          @TaskId = taskid
          @OrderField = orderfield
          @Order = order
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @OrderField = params['OrderField']
          @Order = params['Order']
        end
      end

      # DescribeTaskOperationLog返回参数结构体
      class DescribeTaskOperationLogResponse < TencentCloud::Common::AbstractModel
        # @param TaskOperationLogSet: 操作日志
        # @type TaskOperationLogSet: Array
        # @param TotalCount: 日志条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskOperationLogSet, :TotalCount, :RequestId

        def initialize(taskoperationlogset=nil, totalcount=nil, requestid=nil)
          @TaskOperationLogSet = taskoperationlogset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskOperationLogSet'].nil?
            @TaskOperationLogSet = []
            params['TaskOperationLogSet'].each do |i|
              taskoperationlog_tmp = TaskOperationLog.new
              taskoperationlog_tmp.deserialize(i)
              @TaskOperationLogSet << taskoperationlog_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserCmdTaskInfo请求参数结构体
      class DescribeUserCmdTaskInfoRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 数量限制
        # @type Limit: Integer
        # @param OrderField: 排序字段，支持： RunBeginTime,RunEndTime,Status
        # @type OrderField: String
        # @param Order: 排序方式，取值: 1倒序，0顺序；默认倒序
        # @type Order: Integer
        # @param SearchKey: 关键字搜索，可搜索ID或别名，支持模糊搜索
        # @type SearchKey: String

        attr_accessor :TaskId, :Offset, :Limit, :OrderField, :Order, :SearchKey

        def initialize(taskid=nil, offset=nil, limit=nil, orderfield=nil, order=nil, searchkey=nil)
          @TaskId = taskid
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @Order = order
          @SearchKey = searchkey
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @Order = params['Order']
          @SearchKey = params['SearchKey']
        end
      end

      # DescribeUserCmdTaskInfo返回参数结构体
      class DescribeUserCmdTaskInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回数量
        # @type TotalCount: Integer
        # @param UserCmdTaskInfoSet: 自定义脚本任务详细信息列表
        # @type UserCmdTaskInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :UserCmdTaskInfoSet, :RequestId

        def initialize(totalcount=nil, usercmdtaskinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @UserCmdTaskInfoSet = usercmdtaskinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['UserCmdTaskInfoSet'].nil?
            @UserCmdTaskInfoSet = []
            params['UserCmdTaskInfoSet'].each do |i|
              usercmdtaskinfo_tmp = UserCmdTaskInfo.new
              usercmdtaskinfo_tmp.deserialize(i)
              @UserCmdTaskInfoSet << usercmdtaskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserCmdTasks请求参数结构体
      class DescribeUserCmdTasksRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 数量限制
        # @type Limit: Integer
        # @param OrderField: 排序字段，支持： RunBeginTime,RunEndTime,InstanceCount,SuccessCount,FailureCount
        # @type OrderField: String
        # @param Order: 排序方式，取值: 1倒序，0顺序；默认倒序
        # @type Order: Integer

        attr_accessor :Offset, :Limit, :OrderField, :Order

        def initialize(offset=nil, limit=nil, orderfield=nil, order=nil)
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @Order = order
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @Order = params['Order']
        end
      end

      # DescribeUserCmdTasks返回参数结构体
      class DescribeUserCmdTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 脚本任务信息数量
        # @type TotalCount: Integer
        # @param UserCmdTasks: 脚本任务信息列表
        # @type UserCmdTasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :UserCmdTasks, :RequestId

        def initialize(totalcount=nil, usercmdtasks=nil, requestid=nil)
          @TotalCount = totalcount
          @UserCmdTasks = usercmdtasks
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['UserCmdTasks'].nil?
            @UserCmdTasks = []
            params['UserCmdTasks'].each do |i|
              usercmdtask_tmp = UserCmdTask.new
              usercmdtask_tmp.deserialize(i)
              @UserCmdTasks << usercmdtask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserCmds请求参数结构体
      class DescribeUserCmdsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 数量限制
        # @type Limit: Integer
        # @param OrderField: 排序字段，支持： OsType,CreateTime,ModifyTime
        # @type OrderField: String
        # @param Order: 排序方式，取值: 1倒序，0顺序；默认倒序
        # @type Order: Integer
        # @param SearchKey: 关键字搜索，可搜索ID或别名，支持模糊搜索
        # @type SearchKey: String
        # @param CmdId: 查询的脚本ID
        # @type CmdId: String

        attr_accessor :Offset, :Limit, :OrderField, :Order, :SearchKey, :CmdId

        def initialize(offset=nil, limit=nil, orderfield=nil, order=nil, searchkey=nil, cmdid=nil)
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @Order = order
          @SearchKey = searchkey
          @CmdId = cmdid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @Order = params['Order']
          @SearchKey = params['SearchKey']
          @CmdId = params['CmdId']
        end
      end

      # DescribeUserCmds返回参数结构体
      class DescribeUserCmdsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回数量
        # @type TotalCount: Integer
        # @param UserCmds: 脚本信息列表
        # @type UserCmds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :UserCmds, :RequestId

        def initialize(totalcount=nil, usercmds=nil, requestid=nil)
          @TotalCount = totalcount
          @UserCmds = usercmds
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['UserCmds'].nil?
            @UserCmds = []
            params['UserCmds'].each do |i|
              usercmd_tmp = UserCmd.new
              usercmd_tmp.deserialize(i)
              @UserCmds << usercmd_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DetachCamRole请求参数结构体
      class DetachCamRoleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 服务器ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DetachCamRole返回参数结构体
      class DetachCamRoleResponse < TencentCloud::Common::AbstractModel
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

      # 设备ID与别名
      class DeviceAlias < TencentCloud::Common::AbstractModel
        # @param InstanceId: 设备ID
        # @type InstanceId: String
        # @param Alias: 设备别名
        # @type Alias: String

        attr_accessor :InstanceId, :Alias

        def initialize(instanceid=nil, _alias=nil)
          @InstanceId = instanceid
          @Alias = _alias
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Alias = params['Alias']
        end
      end

      # 物理机设备类型
      class DeviceClass < TencentCloud::Common::AbstractModel
        # @param DeviceClassCode: 机型ID
        # @type DeviceClassCode: String
        # @param CpuDescription: CPU描述
        # @type CpuDescription: String
        # @param MemDescription: 内存描述
        # @type MemDescription: String
        # @param DiskDescription: 硬盘描述
        # @type DiskDescription: String
        # @param HaveRaidCard: 是否支持RAID. 0:不支持; 1:支持
        # @type HaveRaidCard: Integer
        # @param NicDescription: 网卡描述
        # @type NicDescription: String
        # @param GpuDescription: GPU描述
        # @type GpuDescription: String
        # @param Discount: 单价折扣
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Discount: Float
        # @param UnitPrice: 用户刊例价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPrice: Integer
        # @param RealPrice: 实际价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealPrice: Integer
        # @param NormalPrice: 官网刊例价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NormalPrice: Integer
        # @param DeviceType: 设备使用场景类型
        # @type DeviceType: String
        # @param Series: 机型系列
        # @type Series: Integer
        # @param Cpu: cpu的核心数。仅是物理服务器未开启超线程的核心数， 超线程的核心数为Cpu*2
        # @type Cpu: Integer
        # @param Mem: 内存容量。单位G
        # @type Mem: Integer

        attr_accessor :DeviceClassCode, :CpuDescription, :MemDescription, :DiskDescription, :HaveRaidCard, :NicDescription, :GpuDescription, :Discount, :UnitPrice, :RealPrice, :NormalPrice, :DeviceType, :Series, :Cpu, :Mem

        def initialize(deviceclasscode=nil, cpudescription=nil, memdescription=nil, diskdescription=nil, haveraidcard=nil, nicdescription=nil, gpudescription=nil, discount=nil, unitprice=nil, realprice=nil, normalprice=nil, devicetype=nil, series=nil, cpu=nil, mem=nil)
          @DeviceClassCode = deviceclasscode
          @CpuDescription = cpudescription
          @MemDescription = memdescription
          @DiskDescription = diskdescription
          @HaveRaidCard = haveraidcard
          @NicDescription = nicdescription
          @GpuDescription = gpudescription
          @Discount = discount
          @UnitPrice = unitprice
          @RealPrice = realprice
          @NormalPrice = normalprice
          @DeviceType = devicetype
          @Series = series
          @Cpu = cpu
          @Mem = mem
        end

        def deserialize(params)
          @DeviceClassCode = params['DeviceClassCode']
          @CpuDescription = params['CpuDescription']
          @MemDescription = params['MemDescription']
          @DiskDescription = params['DiskDescription']
          @HaveRaidCard = params['HaveRaidCard']
          @NicDescription = params['NicDescription']
          @GpuDescription = params['GpuDescription']
          @Discount = params['Discount']
          @UnitPrice = params['UnitPrice']
          @RealPrice = params['RealPrice']
          @NormalPrice = params['NormalPrice']
          @DeviceType = params['DeviceType']
          @Series = params['Series']
          @Cpu = params['Cpu']
          @Mem = params['Mem']
        end
      end

      # RAID和设备分区结构
      class DeviceClassPartitionInfo < TencentCloud::Common::AbstractModel
        # @param RaidId: RAID类型ID
        # @type RaidId: Integer
        # @param Raid: RAID名称
        # @type Raid: String
        # @param RaidDisplay: RAID名称（前台展示用）
        # @type RaidDisplay: String
        # @param SystemDiskSize: 系统盘总大小（单位GiB）
        # @type SystemDiskSize: Integer
        # @param SysRootSpace: 系统盘/分区默认大小（单位GiB）
        # @type SysRootSpace: Integer
        # @param SysSwaporuefiSpace: 系统盘swap分区默认大小（单位GiB）
        # @type SysSwaporuefiSpace: Integer
        # @param SysUsrlocalSpace: 系统盘/usr/local分区默认大小（单位GiB）
        # @type SysUsrlocalSpace: Integer
        # @param SysDataSpace: 系统盘/data分区默认大小（单位GiB）
        # @type SysDataSpace: Integer
        # @param SysIsUefiType: 设备是否是uefi启动方式。0:legacy启动; 1:uefi启动
        # @type SysIsUefiType: Integer
        # @param DataDiskSize: 数据盘总大小
        # @type DataDiskSize: Integer
        # @param DeviceDiskSizeInfoSet: 硬盘列表
        # @type DeviceDiskSizeInfoSet: Array

        attr_accessor :RaidId, :Raid, :RaidDisplay, :SystemDiskSize, :SysRootSpace, :SysSwaporuefiSpace, :SysUsrlocalSpace, :SysDataSpace, :SysIsUefiType, :DataDiskSize, :DeviceDiskSizeInfoSet

        def initialize(raidid=nil, raid=nil, raiddisplay=nil, systemdisksize=nil, sysrootspace=nil, sysswaporuefispace=nil, sysusrlocalspace=nil, sysdataspace=nil, sysisuefitype=nil, datadisksize=nil, devicedisksizeinfoset=nil)
          @RaidId = raidid
          @Raid = raid
          @RaidDisplay = raiddisplay
          @SystemDiskSize = systemdisksize
          @SysRootSpace = sysrootspace
          @SysSwaporuefiSpace = sysswaporuefispace
          @SysUsrlocalSpace = sysusrlocalspace
          @SysDataSpace = sysdataspace
          @SysIsUefiType = sysisuefitype
          @DataDiskSize = datadisksize
          @DeviceDiskSizeInfoSet = devicedisksizeinfoset
        end

        def deserialize(params)
          @RaidId = params['RaidId']
          @Raid = params['Raid']
          @RaidDisplay = params['RaidDisplay']
          @SystemDiskSize = params['SystemDiskSize']
          @SysRootSpace = params['SysRootSpace']
          @SysSwaporuefiSpace = params['SysSwaporuefiSpace']
          @SysUsrlocalSpace = params['SysUsrlocalSpace']
          @SysDataSpace = params['SysDataSpace']
          @SysIsUefiType = params['SysIsUefiType']
          @DataDiskSize = params['DataDiskSize']
          unless params['DeviceDiskSizeInfoSet'].nil?
            @DeviceDiskSizeInfoSet = []
            params['DeviceDiskSizeInfoSet'].each do |i|
              devicedisksizeinfo_tmp = DeviceDiskSizeInfo.new
              devicedisksizeinfo_tmp.deserialize(i)
              @DeviceDiskSizeInfoSet << devicedisksizeinfo_tmp
            end
          end
        end
      end

      # 硬盘大小的描述
      class DeviceDiskSizeInfo < TencentCloud::Common::AbstractModel
        # @param DiskName: 硬盘名称
        # @type DiskName: String
        # @param DiskSize: 硬盘大小（单位GiB）
        # @type DiskSize: Integer

        attr_accessor :DiskName, :DiskSize

        def initialize(diskname=nil, disksize=nil)
          @DiskName = diskname
          @DiskSize = disksize
        end

        def deserialize(params)
          @DiskName = params['DiskName']
          @DiskSize = params['DiskSize']
        end
      end

      # 设备硬件配置信息
      class DeviceHardwareInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 设备实例 ID
        # @type InstanceId: String
        # @param IsElastic: 是否自定义机型
        # @type IsElastic: Integer
        # @param CpmPayMode: 机型计费模式，1 为预付费，2 为后付费
        # @type CpmPayMode: Integer
        # @param CpuId: 自定义机型，CPU 型号 ID（非自定义机型返回0）
        # @type CpuId: Integer
        # @param Mem: 自定义机型，内存大小, 单位 GB（非自定义机型返回0）
        # @type Mem: Integer
        # @param ContainRaidCard: 是否有 RAID 卡，0：没有 RAID 卡； 1：有 RAID 卡
        # @type ContainRaidCard: Integer
        # @param SystemDiskTypeId: 自定义机型系统盘类型ID（若没有则返回0）
        # @type SystemDiskTypeId: Integer
        # @param SystemDiskCount: 自定义机型系统盘数量（若没有则返回0）
        # @type SystemDiskCount: Integer
        # @param DataDiskTypeId: 自定义机型数据盘类型 ID（若没有则返回0）
        # @type DataDiskTypeId: Integer
        # @param DataDiskCount: 自定义机型数据盘数量（若没有则返回0）
        # @type DataDiskCount: Integer
        # @param CpuDescription: CPU 型号描述
        # @type CpuDescription: String
        # @param MemDescription: 内存描述
        # @type MemDescription: String
        # @param DiskDescription: 磁盘描述
        # @type DiskDescription: String
        # @param NicDescription: 网卡描述
        # @type NicDescription: String
        # @param RaidDescription: 是否支持 RAID 的描述
        # @type RaidDescription: String
        # @param Cpu: cpu的核心数。仅是物理服务器未开启超线程的核心数， 超线程的核心数为Cpu*2
        # @type Cpu: Integer
        # @param DeviceClassCode: 机型外部代号
        # @type DeviceClassCode: String

        attr_accessor :InstanceId, :IsElastic, :CpmPayMode, :CpuId, :Mem, :ContainRaidCard, :SystemDiskTypeId, :SystemDiskCount, :DataDiskTypeId, :DataDiskCount, :CpuDescription, :MemDescription, :DiskDescription, :NicDescription, :RaidDescription, :Cpu, :DeviceClassCode

        def initialize(instanceid=nil, iselastic=nil, cpmpaymode=nil, cpuid=nil, mem=nil, containraidcard=nil, systemdisktypeid=nil, systemdiskcount=nil, datadisktypeid=nil, datadiskcount=nil, cpudescription=nil, memdescription=nil, diskdescription=nil, nicdescription=nil, raiddescription=nil, cpu=nil, deviceclasscode=nil)
          @InstanceId = instanceid
          @IsElastic = iselastic
          @CpmPayMode = cpmpaymode
          @CpuId = cpuid
          @Mem = mem
          @ContainRaidCard = containraidcard
          @SystemDiskTypeId = systemdisktypeid
          @SystemDiskCount = systemdiskcount
          @DataDiskTypeId = datadisktypeid
          @DataDiskCount = datadiskcount
          @CpuDescription = cpudescription
          @MemDescription = memdescription
          @DiskDescription = diskdescription
          @NicDescription = nicdescription
          @RaidDescription = raiddescription
          @Cpu = cpu
          @DeviceClassCode = deviceclasscode
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IsElastic = params['IsElastic']
          @CpmPayMode = params['CpmPayMode']
          @CpuId = params['CpuId']
          @Mem = params['Mem']
          @ContainRaidCard = params['ContainRaidCard']
          @SystemDiskTypeId = params['SystemDiskTypeId']
          @SystemDiskCount = params['SystemDiskCount']
          @DataDiskTypeId = params['DataDiskTypeId']
          @DataDiskCount = params['DataDiskCount']
          @CpuDescription = params['CpuDescription']
          @MemDescription = params['MemDescription']
          @DiskDescription = params['DiskDescription']
          @NicDescription = params['NicDescription']
          @RaidDescription = params['RaidDescription']
          @Cpu = params['Cpu']
          @DeviceClassCode = params['DeviceClassCode']
        end
      end

      # 物理机信息
      class DeviceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 设备唯一ID
        # @type InstanceId: String
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param DeviceStatus: 设备状态ID，取值：<li>1：申领设备中</li><li>2：初始化中</li><li>4：运营中</li><li>7：隔离中</li><li>8：已隔离</li><li>10：解隔离中</li><li>16：故障中</li>
        # @type DeviceStatus: Integer
        # @param OperateStatus: 设备操作状态ID，取值：
        # <li>1：运行中</li><li>2：正在关机</li><li>3：已关机</li><li>5：正在开机</li><li>7：重启中</li><li>9：重装中</li><li>12：绑定EIP</li><li>13：解绑EIP</li><li>14：绑定LB</li><li>15：解绑LB</li><li>19：更换IP中</li><li>20：制作镜像中</li><li>21：制作镜像失败</li><li>23：故障待重装</li><li>24：无备件待退回</li>
        # @type OperateStatus: Integer
        # @param OsTypeId: 操作系统ID，参考接口[查询操作系统信息(DescribeOsInfo)](https://cloud.tencent.com/document/product/386/32902)
        # @type OsTypeId: Integer
        # @param RaidId: RAID类型ID，参考接口[查询机型RAID方式以及系统盘大小(DescribeDeviceClassPartition)](https://cloud.tencent.com/document/product/386/32910)
        # @type RaidId: Integer
        # @param Alias: 设备别名
        # @type Alias: String
        # @param AppId: 用户AppId
        # @type AppId: Integer
        # @param Zone: 可用区
        # @type Zone: String
        # @param WanIp: 外网IP
        # @type WanIp: String
        # @param LanIp: 内网IP
        # @type LanIp: String
        # @param DeliverTime: 设备交付时间
        # @type DeliverTime: String
        # @param Deadline: 设备到期时间
        # @type Deadline: String
        # @param AutoRenewFlag: 自动续费标识。0: 不自动续费; 1:自动续费
        # @type AutoRenewFlag: Integer
        # @param DeviceClassCode: 设备类型
        # @type DeviceClassCode: String
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param CpmPayMode: 计费模式。1: 预付费; 2: 后付费; 3:预付费转后付费中
        # @type CpmPayMode: Integer
        # @param DhcpIp: 带外IP
        # @type DhcpIp: String
        # @param VpcName: 所在私有网络别名
        # @type VpcName: String
        # @param SubnetName: 所在子网别名
        # @type SubnetName: String
        # @param VpcCidrBlock: 所在私有网络CIDR
        # @type VpcCidrBlock: String
        # @param SubnetCidrBlock: 所在子网CIDR
        # @type SubnetCidrBlock: String
        # @param IsLuckyDevice: 标识是否是竞价实例。0: 普通设备; 1: 竞价实例设备
        # @type IsLuckyDevice: Integer
        # @param MaintainStatus: 标识机器维保状态。Maintain: 在保;  WillExpire: 即将过保; Expire: 已过保
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaintainStatus: String
        # @param MaintainMessage: 维保信息描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaintainMessage: String

        attr_accessor :InstanceId, :VpcId, :SubnetId, :DeviceStatus, :OperateStatus, :OsTypeId, :RaidId, :Alias, :AppId, :Zone, :WanIp, :LanIp, :DeliverTime, :Deadline, :AutoRenewFlag, :DeviceClassCode, :Tags, :CpmPayMode, :DhcpIp, :VpcName, :SubnetName, :VpcCidrBlock, :SubnetCidrBlock, :IsLuckyDevice, :MaintainStatus, :MaintainMessage

        def initialize(instanceid=nil, vpcid=nil, subnetid=nil, devicestatus=nil, operatestatus=nil, ostypeid=nil, raidid=nil, _alias=nil, appid=nil, zone=nil, wanip=nil, lanip=nil, delivertime=nil, deadline=nil, autorenewflag=nil, deviceclasscode=nil, tags=nil, cpmpaymode=nil, dhcpip=nil, vpcname=nil, subnetname=nil, vpccidrblock=nil, subnetcidrblock=nil, isluckydevice=nil, maintainstatus=nil, maintainmessage=nil)
          @InstanceId = instanceid
          @VpcId = vpcid
          @SubnetId = subnetid
          @DeviceStatus = devicestatus
          @OperateStatus = operatestatus
          @OsTypeId = ostypeid
          @RaidId = raidid
          @Alias = _alias
          @AppId = appid
          @Zone = zone
          @WanIp = wanip
          @LanIp = lanip
          @DeliverTime = delivertime
          @Deadline = deadline
          @AutoRenewFlag = autorenewflag
          @DeviceClassCode = deviceclasscode
          @Tags = tags
          @CpmPayMode = cpmpaymode
          @DhcpIp = dhcpip
          @VpcName = vpcname
          @SubnetName = subnetname
          @VpcCidrBlock = vpccidrblock
          @SubnetCidrBlock = subnetcidrblock
          @IsLuckyDevice = isluckydevice
          @MaintainStatus = maintainstatus
          @MaintainMessage = maintainmessage
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @DeviceStatus = params['DeviceStatus']
          @OperateStatus = params['OperateStatus']
          @OsTypeId = params['OsTypeId']
          @RaidId = params['RaidId']
          @Alias = params['Alias']
          @AppId = params['AppId']
          @Zone = params['Zone']
          @WanIp = params['WanIp']
          @LanIp = params['LanIp']
          @DeliverTime = params['DeliverTime']
          @Deadline = params['Deadline']
          @AutoRenewFlag = params['AutoRenewFlag']
          @DeviceClassCode = params['DeviceClassCode']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @CpmPayMode = params['CpmPayMode']
          @DhcpIp = params['DhcpIp']
          @VpcName = params['VpcName']
          @SubnetName = params['SubnetName']
          @VpcCidrBlock = params['VpcCidrBlock']
          @SubnetCidrBlock = params['SubnetCidrBlock']
          @IsLuckyDevice = params['IsLuckyDevice']
          @MaintainStatus = params['MaintainStatus']
          @MaintainMessage = params['MaintainMessage']
        end
      end

      # 设备操作日志
      class DeviceOperationLog < TencentCloud::Common::AbstractModel
        # @param Id: 日志的ID
        # @type Id: Integer
        # @param InstanceId: 设备ID
        # @type InstanceId: String
        # @param TaskId: 日志对应的操作任务ID
        # @type TaskId: Integer
        # @param TaskName: 操作任务名称
        # @type TaskName: String
        # @param TaskDescription: 操作任务中文名称
        # @type TaskDescription: String
        # @param StartTime: 操作开始时间
        # @type StartTime: String
        # @param EndTime: 操作结束时间
        # @type EndTime: String
        # @param Status: 操作状态，0: 正在执行中；1：任务成功； 2: 任务失败。
        # @type Status: Integer
        # @param OpUin: 操作者
        # @type OpUin: String
        # @param LogDescription: 操作描述
        # @type LogDescription: String

        attr_accessor :Id, :InstanceId, :TaskId, :TaskName, :TaskDescription, :StartTime, :EndTime, :Status, :OpUin, :LogDescription

        def initialize(id=nil, instanceid=nil, taskid=nil, taskname=nil, taskdescription=nil, starttime=nil, endtime=nil, status=nil, opuin=nil, logdescription=nil)
          @Id = id
          @InstanceId = instanceid
          @TaskId = taskid
          @TaskName = taskname
          @TaskDescription = taskdescription
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @OpUin = opuin
          @LogDescription = logdescription
        end

        def deserialize(params)
          @Id = params['Id']
          @InstanceId = params['InstanceId']
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @TaskDescription = params['TaskDescription']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @OpUin = params['OpUin']
          @LogDescription = params['LogDescription']
        end
      end

      # 物理机分区格式
      class DevicePartition < TencentCloud::Common::AbstractModel
        # @param SystemDiskSize: 系统盘大小
        # @type SystemDiskSize: Integer
        # @param DataDiskSize: 数据盘大小
        # @type DataDiskSize: Integer
        # @param SysIsUefiType: 是否兼容Uefi
        # @type SysIsUefiType: Boolean
        # @param SysRootSpace: root分区大小
        # @type SysRootSpace: Integer
        # @param SysSwaporuefiSpace: Swaporuefi分区大小
        # @type SysSwaporuefiSpace: Integer
        # @param SysUsrlocalSpace: Usrlocal分区大小
        # @type SysUsrlocalSpace: Integer
        # @param SysDataSpace: data分区大小
        # @type SysDataSpace: Integer
        # @param DeviceDiskSizeInfoSet: 硬盘大小详情
        # @type DeviceDiskSizeInfoSet: Array

        attr_accessor :SystemDiskSize, :DataDiskSize, :SysIsUefiType, :SysRootSpace, :SysSwaporuefiSpace, :SysUsrlocalSpace, :SysDataSpace, :DeviceDiskSizeInfoSet

        def initialize(systemdisksize=nil, datadisksize=nil, sysisuefitype=nil, sysrootspace=nil, sysswaporuefispace=nil, sysusrlocalspace=nil, sysdataspace=nil, devicedisksizeinfoset=nil)
          @SystemDiskSize = systemdisksize
          @DataDiskSize = datadisksize
          @SysIsUefiType = sysisuefitype
          @SysRootSpace = sysrootspace
          @SysSwaporuefiSpace = sysswaporuefispace
          @SysUsrlocalSpace = sysusrlocalspace
          @SysDataSpace = sysdataspace
          @DeviceDiskSizeInfoSet = devicedisksizeinfoset
        end

        def deserialize(params)
          @SystemDiskSize = params['SystemDiskSize']
          @DataDiskSize = params['DataDiskSize']
          @SysIsUefiType = params['SysIsUefiType']
          @SysRootSpace = params['SysRootSpace']
          @SysSwaporuefiSpace = params['SysSwaporuefiSpace']
          @SysUsrlocalSpace = params['SysUsrlocalSpace']
          @SysDataSpace = params['SysDataSpace']
          unless params['DeviceDiskSizeInfoSet'].nil?
            @DeviceDiskSizeInfoSet = []
            params['DeviceDiskSizeInfoSet'].each do |i|
              devicedisksizeinfo_tmp = DeviceDiskSizeInfo.new
              devicedisksizeinfo_tmp.deserialize(i)
              @DeviceDiskSizeInfoSet << devicedisksizeinfo_tmp
            end
          end
        end
      end

      # 物理机机架信息
      class DevicePositionInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 设备ID
        # @type InstanceId: String
        # @param Zone: 所在可用区
        # @type Zone: String
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param LanIp: 业务IP
        # @type LanIp: String
        # @param Alias: 实例别名
        # @type Alias: String
        # @param RckName: 机架名称
        # @type RckName: String
        # @param PosCode: 机位
        # @type PosCode: Integer
        # @param SwitchName: 交换机名称
        # @type SwitchName: String
        # @param DeliverTime: 设备交付时间
        # @type DeliverTime: String
        # @param Deadline: 过期时间
        # @type Deadline: String

        attr_accessor :InstanceId, :Zone, :VpcId, :SubnetId, :LanIp, :Alias, :RckName, :PosCode, :SwitchName, :DeliverTime, :Deadline

        def initialize(instanceid=nil, zone=nil, vpcid=nil, subnetid=nil, lanip=nil, _alias=nil, rckname=nil, poscode=nil, switchname=nil, delivertime=nil, deadline=nil)
          @InstanceId = instanceid
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @LanIp = lanip
          @Alias = _alias
          @RckName = rckname
          @PosCode = poscode
          @SwitchName = switchname
          @DeliverTime = delivertime
          @Deadline = deadline
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @LanIp = params['LanIp']
          @Alias = params['Alias']
          @RckName = params['RckName']
          @PosCode = params['PosCode']
          @SwitchName = params['SwitchName']
          @DeliverTime = params['DeliverTime']
          @Deadline = params['Deadline']
        end
      end

      # 服务器价格信息
      class DevicePriceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 物理机ID
        # @type InstanceId: String
        # @param DeviceClassCode: 设备型号
        # @type DeviceClassCode: String
        # @param IsElastic: 是否是弹性机型，1：是，0：否
        # @type IsElastic: Integer
        # @param CpmPayMode: 付费模式ID, 1:预付费; 2:后付费; 3:预付费转后付费中
        # @type CpmPayMode: Integer
        # @param CpuDescription: Cpu信息描述
        # @type CpuDescription: String
        # @param MemDescription: 内存信息描述
        # @type MemDescription: String
        # @param DiskDescription: 硬盘信息描述
        # @type DiskDescription: String
        # @param NicDescription: 网卡信息描述
        # @type NicDescription: String
        # @param GpuDescription: Gpu信息描述
        # @type GpuDescription: String
        # @param RaidDescription: Raid信息描述
        # @type RaidDescription: String
        # @param Price: 客户的单价
        # @type Price: Integer
        # @param NormalPrice: 刊例单价
        # @type NormalPrice: Integer
        # @param TotalCost: 原价
        # @type TotalCost: Integer
        # @param RealTotalCost: 折扣价
        # @type RealTotalCost: Integer
        # @param TimeSpan: 计费时长
        # @type TimeSpan: Integer
        # @param TimeUnit: 计费时长单位, M:按月计费; D:按天计费
        # @type TimeUnit: String
        # @param GoodsCount: 商品数量
        # @type GoodsCount: Integer

        attr_accessor :InstanceId, :DeviceClassCode, :IsElastic, :CpmPayMode, :CpuDescription, :MemDescription, :DiskDescription, :NicDescription, :GpuDescription, :RaidDescription, :Price, :NormalPrice, :TotalCost, :RealTotalCost, :TimeSpan, :TimeUnit, :GoodsCount

        def initialize(instanceid=nil, deviceclasscode=nil, iselastic=nil, cpmpaymode=nil, cpudescription=nil, memdescription=nil, diskdescription=nil, nicdescription=nil, gpudescription=nil, raiddescription=nil, price=nil, normalprice=nil, totalcost=nil, realtotalcost=nil, timespan=nil, timeunit=nil, goodscount=nil)
          @InstanceId = instanceid
          @DeviceClassCode = deviceclasscode
          @IsElastic = iselastic
          @CpmPayMode = cpmpaymode
          @CpuDescription = cpudescription
          @MemDescription = memdescription
          @DiskDescription = diskdescription
          @NicDescription = nicdescription
          @GpuDescription = gpudescription
          @RaidDescription = raiddescription
          @Price = price
          @NormalPrice = normalprice
          @TotalCost = totalcost
          @RealTotalCost = realtotalcost
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @GoodsCount = goodscount
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DeviceClassCode = params['DeviceClassCode']
          @IsElastic = params['IsElastic']
          @CpmPayMode = params['CpmPayMode']
          @CpuDescription = params['CpuDescription']
          @MemDescription = params['MemDescription']
          @DiskDescription = params['DiskDescription']
          @NicDescription = params['NicDescription']
          @GpuDescription = params['GpuDescription']
          @RaidDescription = params['RaidDescription']
          @Price = params['Price']
          @NormalPrice = params['NormalPrice']
          @TotalCost = params['TotalCost']
          @RealTotalCost = params['RealTotalCost']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @GoodsCount = params['GoodsCount']
        end
      end

      # 自定义机型磁盘的描述
      class DiskInfo < TencentCloud::Common::AbstractModel
        # @param DiskTypeId: 磁盘ID
        # @type DiskTypeId: Integer
        # @param Size: 磁盘的容量，单位为G
        # @type Size: Integer
        # @param DiskDescription: 磁盘信息描述
        # @type DiskDescription: String

        attr_accessor :DiskTypeId, :Size, :DiskDescription

        def initialize(disktypeid=nil, size=nil, diskdescription=nil)
          @DiskTypeId = disktypeid
          @Size = size
          @DiskDescription = diskdescription
        end

        def deserialize(params)
          @DiskTypeId = params['DiskTypeId']
          @Size = params['Size']
          @DiskDescription = params['DiskDescription']
        end
      end

      # 运行失败的自定义脚本信息
      class FailedTaskInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 运行脚本的设备ID
        # @type InstanceId: String
        # @param ErrorMsg: 失败原因
        # @type ErrorMsg: String

        attr_accessor :InstanceId, :ErrorMsg

        def initialize(instanceid=nil, errormsg=nil)
          @InstanceId = instanceid
          @ErrorMsg = errormsg
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ErrorMsg = params['ErrorMsg']
        end
      end

      # 托管设备带外信息
      class HostedDeviceOutBandInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 物理机ID
        # @type InstanceId: String
        # @param OutBandIp: 带外IP
        # @type OutBandIp: String
        # @param VpnIp: VPN的IP
        # @type VpnIp: String
        # @param VpnPort: VPN的端口
        # @type VpnPort: Integer

        attr_accessor :InstanceId, :OutBandIp, :VpnIp, :VpnPort

        def initialize(instanceid=nil, outbandip=nil, vpnip=nil, vpnport=nil)
          @InstanceId = instanceid
          @OutBandIp = outbandip
          @VpnIp = vpnip
          @VpnPort = vpnport
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OutBandIp = params['OutBandIp']
          @VpnIp = params['VpnIp']
          @VpnPort = params['VpnPort']
        end
      end

      # ModifyCustomImageAttribute请求参数结构体
      class ModifyCustomImageAttributeRequest < TencentCloud::Common::AbstractModel
        # @param ImageId: 镜像ID
        # @type ImageId: String
        # @param ImageName: 设置新的镜像名
        # @type ImageName: String
        # @param ImageDescription: 设置新的镜像描述
        # @type ImageDescription: String

        attr_accessor :ImageId, :ImageName, :ImageDescription

        def initialize(imageid=nil, imagename=nil, imagedescription=nil)
          @ImageId = imageid
          @ImageName = imagename
          @ImageDescription = imagedescription
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @ImageName = params['ImageName']
          @ImageDescription = params['ImageDescription']
        end
      end

      # ModifyCustomImageAttribute返回参数结构体
      class ModifyCustomImageAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDeviceAliases请求参数结构体
      class ModifyDeviceAliasesRequest < TencentCloud::Common::AbstractModel
        # @param DeviceAliases: 需要改名的设备与别名列表
        # @type DeviceAliases: Array

        attr_accessor :DeviceAliases

        def initialize(devicealiases=nil)
          @DeviceAliases = devicealiases
        end

        def deserialize(params)
          unless params['DeviceAliases'].nil?
            @DeviceAliases = []
            params['DeviceAliases'].each do |i|
              devicealias_tmp = DeviceAlias.new
              devicealias_tmp.deserialize(i)
              @DeviceAliases << devicealias_tmp
            end
          end
        end
      end

      # ModifyDeviceAliases返回参数结构体
      class ModifyDeviceAliasesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDeviceAutoRenewFlag请求参数结构体
      class ModifyDeviceAutoRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param AutoRenewFlag: 自动续费标志位。0: 不自动续费; 1: 自动续费
        # @type AutoRenewFlag: Integer
        # @param InstanceIds: 需要修改的设备ID列表
        # @type InstanceIds: Array

        attr_accessor :AutoRenewFlag, :InstanceIds

        def initialize(autorenewflag=nil, instanceids=nil)
          @AutoRenewFlag = autorenewflag
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @AutoRenewFlag = params['AutoRenewFlag']
          @InstanceIds = params['InstanceIds']
        end
      end

      # ModifyDeviceAutoRenewFlag返回参数结构体
      class ModifyDeviceAutoRenewFlagResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLanIp请求参数结构体
      class ModifyLanIpRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 物理机ID
        # @type InstanceId: String
        # @param VpcId: 指定新VPC
        # @type VpcId: String
        # @param SubnetId: 指定新子网
        # @type SubnetId: String
        # @param LanIp: 指定新内网IP
        # @type LanIp: String
        # @param RebootDevice: 是否需要重启机器，取值 1(需要) 0(不需要)，默认取值0
        # @type RebootDevice: Integer

        attr_accessor :InstanceId, :VpcId, :SubnetId, :LanIp, :RebootDevice

        def initialize(instanceid=nil, vpcid=nil, subnetid=nil, lanip=nil, rebootdevice=nil)
          @InstanceId = instanceid
          @VpcId = vpcid
          @SubnetId = subnetid
          @LanIp = lanip
          @RebootDevice = rebootdevice
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @LanIp = params['LanIp']
          @RebootDevice = params['RebootDevice']
        end
      end

      # ModifyLanIp返回参数结构体
      class ModifyLanIpResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 黑石异步任务ID
        # @type TaskId: Integer
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

      # ModifyPayModePre2Post请求参数结构体
      class ModifyPayModePre2PostRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 需要修改的设备ID列表
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # ModifyPayModePre2Post返回参数结构体
      class ModifyPayModePre2PostResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPsaRegulation请求参数结构体
      class ModifyPsaRegulationRequest < TencentCloud::Common::AbstractModel
        # @param PsaId: 预授权规则ID
        # @type PsaId: String
        # @param PsaName: 预授权规则别名
        # @type PsaName: String
        # @param RepairLimit: 维修中的实例上限
        # @type RepairLimit: Integer
        # @param PsaDescription: 预授权规则备注
        # @type PsaDescription: String
        # @param TaskTypeIds: 预授权规则关联故障类型ID列表
        # @type TaskTypeIds: Array

        attr_accessor :PsaId, :PsaName, :RepairLimit, :PsaDescription, :TaskTypeIds

        def initialize(psaid=nil, psaname=nil, repairlimit=nil, psadescription=nil, tasktypeids=nil)
          @PsaId = psaid
          @PsaName = psaname
          @RepairLimit = repairlimit
          @PsaDescription = psadescription
          @TaskTypeIds = tasktypeids
        end

        def deserialize(params)
          @PsaId = params['PsaId']
          @PsaName = params['PsaName']
          @RepairLimit = params['RepairLimit']
          @PsaDescription = params['PsaDescription']
          @TaskTypeIds = params['TaskTypeIds']
        end
      end

      # ModifyPsaRegulation返回参数结构体
      class ModifyPsaRegulationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUserCmd请求参数结构体
      class ModifyUserCmdRequest < TencentCloud::Common::AbstractModel
        # @param CmdId: 待修改的脚本ID
        # @type CmdId: String
        # @param Alias: 待修改的脚本名称
        # @type Alias: String
        # @param OsType: 脚本适用的操作系统类型
        # @type OsType: String
        # @param Content: 待修改的脚本内容，必须经过base64编码
        # @type Content: String

        attr_accessor :CmdId, :Alias, :OsType, :Content

        def initialize(cmdid=nil, _alias=nil, ostype=nil, content=nil)
          @CmdId = cmdid
          @Alias = _alias
          @OsType = ostype
          @Content = content
        end

        def deserialize(params)
          @CmdId = params['CmdId']
          @Alias = params['Alias']
          @OsType = params['OsType']
          @Content = params['Content']
        end
      end

      # ModifyUserCmd返回参数结构体
      class ModifyUserCmdResponse < TencentCloud::Common::AbstractModel
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

      # OfflineDevices请求参数结构体
      class OfflineDevicesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 需要退还的物理机ID列表
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # OfflineDevices返回参数结构体
      class OfflineDevicesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 黑石异步任务ID
        # @type TaskId: Integer
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

      # 操作系统类型
      class OsInfo < TencentCloud::Common::AbstractModel
        # @param OsTypeId: 操作系统ID
        # @type OsTypeId: Integer
        # @param OsName: 操作系统名称
        # @type OsName: String
        # @param OsDescription: 操作系统名称描述
        # @type OsDescription: String
        # @param OsEnglishDescription: 操作系统英文名称
        # @type OsEnglishDescription: String
        # @param OsClass: 操作系统的分类，如CentOs Debian
        # @type OsClass: String
        # @param ImageTag: 标识镜像分类。public:公共镜像; private: 专属镜像
        # @type ImageTag: String
        # @param MaxPartitionSize: 操作系统，ext4文件下所支持的最大的磁盘大小。单位为T
        # @type MaxPartitionSize: Integer
        # @param OsMinorVersion: 黑石版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsMinorVersion: String
        # @param OsMinorClass: 黑石版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsMinorClass: String

        attr_accessor :OsTypeId, :OsName, :OsDescription, :OsEnglishDescription, :OsClass, :ImageTag, :MaxPartitionSize, :OsMinorVersion, :OsMinorClass

        def initialize(ostypeid=nil, osname=nil, osdescription=nil, osenglishdescription=nil, osclass=nil, imagetag=nil, maxpartitionsize=nil, osminorversion=nil, osminorclass=nil)
          @OsTypeId = ostypeid
          @OsName = osname
          @OsDescription = osdescription
          @OsEnglishDescription = osenglishdescription
          @OsClass = osclass
          @ImageTag = imagetag
          @MaxPartitionSize = maxpartitionsize
          @OsMinorVersion = osminorversion
          @OsMinorClass = osminorclass
        end

        def deserialize(params)
          @OsTypeId = params['OsTypeId']
          @OsName = params['OsName']
          @OsDescription = params['OsDescription']
          @OsEnglishDescription = params['OsEnglishDescription']
          @OsClass = params['OsClass']
          @ImageTag = params['ImageTag']
          @MaxPartitionSize = params['MaxPartitionSize']
          @OsMinorVersion = params['OsMinorVersion']
          @OsMinorClass = params['OsMinorClass']
        end
      end

      # 描述设备分区信息
      class PartitionInfo < TencentCloud::Common::AbstractModel
        # @param Name: 分区名称
        # @type Name: String
        # @param Size: 分区大小
        # @type Size: Integer

        attr_accessor :Name, :Size

        def initialize(name=nil, size=nil)
          @Name = name
          @Size = size
        end

        def deserialize(params)
          @Name = params['Name']
          @Size = params['Size']
        end
      end

      # 一条预授权规则
      class PsaRegulation < TencentCloud::Common::AbstractModel
        # @param PsaId: 规则ID
        # @type PsaId: String
        # @param PsaName: 规则别名
        # @type PsaName: String
        # @param TagCount: 关联标签数量
        # @type TagCount: Integer
        # @param InstanceCount: 关联实例数量
        # @type InstanceCount: Integer
        # @param RepairCount: 故障实例数量
        # @type RepairCount: Integer
        # @param RepairLimit: 故障实例上限
        # @type RepairLimit: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param PsaDescription: 规则备注
        # @type PsaDescription: String
        # @param Tags: 关联标签
        # @type Tags: Array
        # @param TaskTypeIds: 关联故障类型id
        # @type TaskTypeIds: Array

        attr_accessor :PsaId, :PsaName, :TagCount, :InstanceCount, :RepairCount, :RepairLimit, :CreateTime, :PsaDescription, :Tags, :TaskTypeIds

        def initialize(psaid=nil, psaname=nil, tagcount=nil, instancecount=nil, repaircount=nil, repairlimit=nil, createtime=nil, psadescription=nil, tags=nil, tasktypeids=nil)
          @PsaId = psaid
          @PsaName = psaname
          @TagCount = tagcount
          @InstanceCount = instancecount
          @RepairCount = repaircount
          @RepairLimit = repairlimit
          @CreateTime = createtime
          @PsaDescription = psadescription
          @Tags = tags
          @TaskTypeIds = tasktypeids
        end

        def deserialize(params)
          @PsaId = params['PsaId']
          @PsaName = params['PsaName']
          @TagCount = params['TagCount']
          @InstanceCount = params['InstanceCount']
          @RepairCount = params['RepairCount']
          @RepairLimit = params['RepairLimit']
          @CreateTime = params['CreateTime']
          @PsaDescription = params['PsaDescription']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @TaskTypeIds = params['TaskTypeIds']
        end
      end

      # RebootDevices请求参数结构体
      class RebootDevicesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 需要重启的设备ID列表
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # RebootDevices返回参数结构体
      class RebootDevicesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID
        # @type TaskId: Integer
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

      # RecoverDevices请求参数结构体
      class RecoverDevicesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 需要恢复的物理机ID列表
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # RecoverDevices返回参数结构体
      class RecoverDevicesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 黑石异步任务ID
        # @type TaskId: Integer
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

      # 地域信息
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域ID
        # @type Region: String
        # @param RegionId: 地域整型ID
        # @type RegionId: Integer
        # @param RegionDescription: 地域描述
        # @type RegionDescription: String
        # @param ZoneInfoSet: 该地域下的可用区信息
        # @type ZoneInfoSet: Array

        attr_accessor :Region, :RegionId, :RegionDescription, :ZoneInfoSet

        def initialize(region=nil, regionid=nil, regiondescription=nil, zoneinfoset=nil)
          @Region = region
          @RegionId = regionid
          @RegionDescription = regiondescription
          @ZoneInfoSet = zoneinfoset
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionId = params['RegionId']
          @RegionDescription = params['RegionDescription']
          unless params['ZoneInfoSet'].nil?
            @ZoneInfoSet = []
            params['ZoneInfoSet'].each do |i|
              zoneinfo_tmp = ZoneInfo.new
              zoneinfo_tmp.deserialize(i)
              @ZoneInfoSet << zoneinfo_tmp
            end
          end
        end
      end

      # ReloadDeviceOs请求参数结构体
      class ReloadDeviceOsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 设备的唯一ID
        # @type InstanceId: String
        # @param Password: 密码。 用户设置的linux root或Windows Administrator密码。密码校验规则: <li> Windows机器密码需12到16位，至少包括三项 `[a-z]`,`[A-Z]`,`[0-9]`和`[()`'`~!@#$%^&*-+=_`|`{}[]:;'<>,.?/]`的特殊符号, 密码不能包含Administrator(不区分大小写); <li> Linux机器密码需8到16位，至少包括两项`[a-z,A-Z]`,`[0-9]`和`[()`'`~!@#$%^&*-+=_`|`{}[]:;'<>,.?/]`的特殊符号
        # @type Password: String
        # @param OsTypeId: 操作系统类型ID。通过接口[查询操作系统信息(DescribeOsInfo)](https://cloud.tencent.com/document/api/386/32902)获取操作系统信息
        # @type OsTypeId: Integer
        # @param RaidId: RAID类型ID。通过接口[查询机型RAID方式以及系统盘大小(DescribeDeviceClassPartition)](https://cloud.tencent.com/document/api/386/32910)获取RAID信息
        # @type RaidId: Integer
        # @param IsZoning: 是否格式化数据盘。0: 不格式化（默认值）；1：格式化
        # @type IsZoning: Integer
        # @param SysRootSpace: 系统盘根分区大小，默认是10G。系统盘的大小参考接口[查询机型RAID方式以及系统盘大小(DescribeDeviceClassPartition)](https://cloud.tencent.com/document/api/386/32910)
        # @type SysRootSpace: Integer
        # @param SysSwaporuefiSpace: 系统盘swap分区或/boot/efi分区的大小。若是uefi启动的机器，分区为/boot/efi ,且此值是默认是2G。普通机器为swap分区，可以不指定此分区。机型是否是uefi启动，参考接口[查询设备型号(DescribeDeviceClass)](https://cloud.tencent.com/document/api/386/32911)
        # @type SysSwaporuefiSpace: Integer
        # @param SysUsrlocalSpace: /usr/local分区大小
        # @type SysUsrlocalSpace: Integer
        # @param VpcId: 重装到新的私有网络的ID。如果改变VPC子网，则要求与SubnetId同时传参，否则可不填
        # @type VpcId: String
        # @param SubnetId: 重装到新的子网的ID。如果改变VPC子网，则要求与VpcId同时传参，否则可不填
        # @type SubnetId: String
        # @param LanIp: 重装指定IP地址
        # @type LanIp: String
        # @param HyperThreading: 指定是否开启超线程。 0：关闭超线程；1：开启超线程（默认值）
        # @type HyperThreading: Integer
        # @param ImageId: 自定义镜像ID。传此字段则用自定义镜像重装
        # @type ImageId: String
        # @param FileSystem: 指定数据盘的文件系统格式，当前支持 EXT4和XFS选项， 默认为EXT4。 参数适用于数据盘和Linux， 且在IsZoning为1时生效
        # @type FileSystem: String
        # @param NeedSecurityAgent: 是否安装安全Agent，取值：1(安装) 0(不安装)，默认取值0
        # @type NeedSecurityAgent: Integer
        # @param NeedMonitorAgent: 是否安装监控Agent，取值：1(安装) 0(不安装)，默认取值0
        # @type NeedMonitorAgent: Integer
        # @param NeedEMRAgent: 是否安装EMR Agent，取值：1(安装) 0(不安装)，默认取值0
        # @type NeedEMRAgent: Integer
        # @param NeedEMRSoftware: 是否安装EMR软件包，取值：1(安装) 0(不安装)，默认取值0
        # @type NeedEMRSoftware: Integer
        # @param ReserveSgConfig: 是否保留安全组配置，取值：1(保留) 0(不保留)，默认取值0
        # @type ReserveSgConfig: Integer
        # @param SysDataSpace: /data分区大小，可不填。除root、swap、usr/local的剩余空间会自动分配到data分区
        # @type SysDataSpace: Integer

        attr_accessor :InstanceId, :Password, :OsTypeId, :RaidId, :IsZoning, :SysRootSpace, :SysSwaporuefiSpace, :SysUsrlocalSpace, :VpcId, :SubnetId, :LanIp, :HyperThreading, :ImageId, :FileSystem, :NeedSecurityAgent, :NeedMonitorAgent, :NeedEMRAgent, :NeedEMRSoftware, :ReserveSgConfig, :SysDataSpace

        def initialize(instanceid=nil, password=nil, ostypeid=nil, raidid=nil, iszoning=nil, sysrootspace=nil, sysswaporuefispace=nil, sysusrlocalspace=nil, vpcid=nil, subnetid=nil, lanip=nil, hyperthreading=nil, imageid=nil, filesystem=nil, needsecurityagent=nil, needmonitoragent=nil, needemragent=nil, needemrsoftware=nil, reservesgconfig=nil, sysdataspace=nil)
          @InstanceId = instanceid
          @Password = password
          @OsTypeId = ostypeid
          @RaidId = raidid
          @IsZoning = iszoning
          @SysRootSpace = sysrootspace
          @SysSwaporuefiSpace = sysswaporuefispace
          @SysUsrlocalSpace = sysusrlocalspace
          @VpcId = vpcid
          @SubnetId = subnetid
          @LanIp = lanip
          @HyperThreading = hyperthreading
          @ImageId = imageid
          @FileSystem = filesystem
          @NeedSecurityAgent = needsecurityagent
          @NeedMonitorAgent = needmonitoragent
          @NeedEMRAgent = needemragent
          @NeedEMRSoftware = needemrsoftware
          @ReserveSgConfig = reservesgconfig
          @SysDataSpace = sysdataspace
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Password = params['Password']
          @OsTypeId = params['OsTypeId']
          @RaidId = params['RaidId']
          @IsZoning = params['IsZoning']
          @SysRootSpace = params['SysRootSpace']
          @SysSwaporuefiSpace = params['SysSwaporuefiSpace']
          @SysUsrlocalSpace = params['SysUsrlocalSpace']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @LanIp = params['LanIp']
          @HyperThreading = params['HyperThreading']
          @ImageId = params['ImageId']
          @FileSystem = params['FileSystem']
          @NeedSecurityAgent = params['NeedSecurityAgent']
          @NeedMonitorAgent = params['NeedMonitorAgent']
          @NeedEMRAgent = params['NeedEMRAgent']
          @NeedEMRSoftware = params['NeedEMRSoftware']
          @ReserveSgConfig = params['ReserveSgConfig']
          @SysDataSpace = params['SysDataSpace']
        end
      end

      # ReloadDeviceOs返回参数结构体
      class ReloadDeviceOsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 黑石异步任务ID
        # @type TaskId: Integer
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

      # RepairTaskControl请求参数结构体
      class RepairTaskControlRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 维修任务ID
        # @type TaskId: String
        # @param Operate: 操作
        # @type Operate: String
        # @param OperateRemark: 需要重新维修操作的备注信息，可提供返场维修原因，以便驻场快速针对问题定位解决。
        # @type OperateRemark: String

        attr_accessor :TaskId, :Operate, :OperateRemark

        def initialize(taskid=nil, operate=nil, operateremark=nil)
          @TaskId = taskid
          @Operate = operate
          @OperateRemark = operateremark
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Operate = params['Operate']
          @OperateRemark = params['OperateRemark']
        end
      end

      # RepairTaskControl返回参数结构体
      class RepairTaskControlResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 出参TaskId是黑石异步任务ID，不同于入参TaskId字段。
        # 此字段可作为DescriptionOperationResult查询异步任务状态接口的入参，查询异步任务执行结果。
        # @type TaskId: Integer
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

      # ResetDevicePassword请求参数结构体
      class ResetDevicePasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 需要重置密码的服务器ID列表
        # @type InstanceIds: Array
        # @param Password: 新密码
        # @type Password: String

        attr_accessor :InstanceIds, :Password

        def initialize(instanceids=nil, password=nil)
          @InstanceIds = instanceids
          @Password = password
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @Password = params['Password']
        end
      end

      # ResetDevicePassword返回参数结构体
      class ResetDevicePasswordResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 黑石异步任务ID
        # @type TaskId: Integer
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

      # ReturnDevices请求参数结构体
      class ReturnDevicesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 需要退还的物理机ID列表
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # ReturnDevices返回参数结构体
      class ReturnDevicesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 黑石异步任务ID
        # @type TaskId: Integer
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

      # RunUserCmd请求参数结构体
      class RunUserCmdRequest < TencentCloud::Common::AbstractModel
        # @param CmdId: 自定义脚本ID
        # @type CmdId: String
        # @param UserName: 执行脚本机器的用户名
        # @type UserName: String
        # @param Password: 执行脚本机器的用户名的密码
        # @type Password: String
        # @param InstanceIds: 执行脚本的服务器实例
        # @type InstanceIds: Array
        # @param CmdParam: 执行脚本的参数，必须经过base64编码
        # @type CmdParam: String

        attr_accessor :CmdId, :UserName, :Password, :InstanceIds, :CmdParam

        def initialize(cmdid=nil, username=nil, password=nil, instanceids=nil, cmdparam=nil)
          @CmdId = cmdid
          @UserName = username
          @Password = password
          @InstanceIds = instanceids
          @CmdParam = cmdparam
        end

        def deserialize(params)
          @CmdId = params['CmdId']
          @UserName = params['UserName']
          @Password = params['Password']
          @InstanceIds = params['InstanceIds']
          @CmdParam = params['CmdParam']
        end
      end

      # RunUserCmd返回参数结构体
      class RunUserCmdResponse < TencentCloud::Common::AbstractModel
        # @param SuccessTaskInfoSet: 运行成功的任务信息列表
        # @type SuccessTaskInfoSet: Array
        # @param FailedTaskInfoSet: 运行失败的任务信息列表
        # @type FailedTaskInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessTaskInfoSet, :FailedTaskInfoSet, :RequestId

        def initialize(successtaskinfoset=nil, failedtaskinfoset=nil, requestid=nil)
          @SuccessTaskInfoSet = successtaskinfoset
          @FailedTaskInfoSet = failedtaskinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SuccessTaskInfoSet'].nil?
            @SuccessTaskInfoSet = []
            params['SuccessTaskInfoSet'].each do |i|
              successtaskinfo_tmp = SuccessTaskInfo.new
              successtaskinfo_tmp.deserialize(i)
              @SuccessTaskInfoSet << successtaskinfo_tmp
            end
          end
          unless params['FailedTaskInfoSet'].nil?
            @FailedTaskInfoSet = []
            params['FailedTaskInfoSet'].each do |i|
              failedtaskinfo_tmp = FailedTaskInfo.new
              failedtaskinfo_tmp.deserialize(i)
              @FailedTaskInfoSet << failedtaskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # SetOutBandVpnAuthPassword请求参数结构体
      class SetOutBandVpnAuthPasswordRequest < TencentCloud::Common::AbstractModel
        # @param Password: 设置的Vpn认证密码
        # @type Password: String
        # @param Operate: 操作字段，取值为：Create（创建）或Update（修改）
        # @type Operate: String

        attr_accessor :Password, :Operate

        def initialize(password=nil, operate=nil)
          @Password = password
          @Operate = operate
        end

        def deserialize(params)
          @Password = params['Password']
          @Operate = params['Operate']
        end
      end

      # SetOutBandVpnAuthPassword返回参数结构体
      class SetOutBandVpnAuthPasswordResponse < TencentCloud::Common::AbstractModel
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

      # ShutdownDevices请求参数结构体
      class ShutdownDevicesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 需要关闭的设备ID列表
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # ShutdownDevices返回参数结构体
      class ShutdownDevicesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID
        # @type TaskId: Integer
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

      # StartDevices请求参数结构体
      class StartDevicesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 需要开机的设备ID列表
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # StartDevices返回参数结构体
      class StartDevicesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID
        # @type TaskId: Integer
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

      # 各实例对应的异步任务执行结果
      class SubtaskStatus < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param TaskStatus: 实例ID对应任务的状态，取值如下：<br>
        # 1：成功<br>
        # 2：失败<br>
        # 3：部分成功，部分失败<br>
        # 4：未完成<br>
        # 5：部分成功，部分未完成<br>
        # 6：部分未完成，部分失败<br>
        # 7：部分未完成，部分失败，部分成功
        # @type TaskStatus: Integer

        attr_accessor :InstanceId, :TaskStatus

        def initialize(instanceid=nil, taskstatus=nil)
          @InstanceId = instanceid
          @TaskStatus = taskstatus
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TaskStatus = params['TaskStatus']
        end
      end

      # 成功运行的自定义脚本信息
      class SuccessTaskInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 运行脚本的设备ID
        # @type InstanceId: String
        # @param TaskId: 黑石异步任务ID
        # @type TaskId: Integer
        # @param CmdTaskId: 黑石自定义脚本运行任务ID
        # @type CmdTaskId: String

        attr_accessor :InstanceId, :TaskId, :CmdTaskId

        def initialize(instanceid=nil, taskid=nil, cmdtaskid=nil)
          @InstanceId = instanceid
          @TaskId = taskid
          @CmdTaskId = cmdtaskid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TaskId = params['TaskId']
          @CmdTaskId = params['CmdTaskId']
        end
      end

      # 标签键与值
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValues: 标签键对应的值
        # @type TagValues: Array

        attr_accessor :TagKey, :TagValues

        def initialize(tagkey=nil, tagvalues=nil)
          @TagKey = tagkey
          @TagValues = tagvalues
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValues = params['TagValues']
        end
      end

      # 维护平台维修任务信息
      class TaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param InstanceId: 主机id
        # @type InstanceId: String
        # @param Alias: 主机别名
        # @type Alias: String
        # @param TaskTypeId: 故障类型id
        # @type TaskTypeId: Integer
        # @param TaskStatus: 任务状态id
        # @type TaskStatus: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param AuthTime: 授权时间
        # @type AuthTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param TaskDetail: 任务详情
        # @type TaskDetail: String
        # @param DeviceStatus: 设备状态
        # @type DeviceStatus: Integer
        # @param OperateStatus: 设备操作状态
        # @type OperateStatus: Integer
        # @param Zone: 可用区
        # @type Zone: String
        # @param Region: 地域
        # @type Region: String
        # @param VpcId: 所属网络
        # @type VpcId: String
        # @param SubnetId: 所在子网
        # @type SubnetId: String
        # @param SubnetName: 子网名
        # @type SubnetName: String
        # @param VpcName: VPC名
        # @type VpcName: String
        # @param VpcCidrBlock: VpcCidrBlock
        # @type VpcCidrBlock: String
        # @param SubnetCidrBlock: SubnetCidrBlock
        # @type SubnetCidrBlock: String
        # @param WanIp: 公网ip
        # @type WanIp: String
        # @param LanIp: 内网IP
        # @type LanIp: String
        # @param MgtIp: 管理IP
        # @type MgtIp: String
        # @param TaskTypeName: 故障类中文名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeName: String
        # @param TaskSubType: 故障类型，取值：unconfirmed (不明确故障)；redundancy (有冗余故障)；nonredundancy (无冗余故障)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskSubType: String

        attr_accessor :TaskId, :InstanceId, :Alias, :TaskTypeId, :TaskStatus, :CreateTime, :AuthTime, :EndTime, :TaskDetail, :DeviceStatus, :OperateStatus, :Zone, :Region, :VpcId, :SubnetId, :SubnetName, :VpcName, :VpcCidrBlock, :SubnetCidrBlock, :WanIp, :LanIp, :MgtIp, :TaskTypeName, :TaskSubType

        def initialize(taskid=nil, instanceid=nil, _alias=nil, tasktypeid=nil, taskstatus=nil, createtime=nil, authtime=nil, endtime=nil, taskdetail=nil, devicestatus=nil, operatestatus=nil, zone=nil, region=nil, vpcid=nil, subnetid=nil, subnetname=nil, vpcname=nil, vpccidrblock=nil, subnetcidrblock=nil, wanip=nil, lanip=nil, mgtip=nil, tasktypename=nil, tasksubtype=nil)
          @TaskId = taskid
          @InstanceId = instanceid
          @Alias = _alias
          @TaskTypeId = tasktypeid
          @TaskStatus = taskstatus
          @CreateTime = createtime
          @AuthTime = authtime
          @EndTime = endtime
          @TaskDetail = taskdetail
          @DeviceStatus = devicestatus
          @OperateStatus = operatestatus
          @Zone = zone
          @Region = region
          @VpcId = vpcid
          @SubnetId = subnetid
          @SubnetName = subnetname
          @VpcName = vpcname
          @VpcCidrBlock = vpccidrblock
          @SubnetCidrBlock = subnetcidrblock
          @WanIp = wanip
          @LanIp = lanip
          @MgtIp = mgtip
          @TaskTypeName = tasktypename
          @TaskSubType = tasksubtype
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @InstanceId = params['InstanceId']
          @Alias = params['Alias']
          @TaskTypeId = params['TaskTypeId']
          @TaskStatus = params['TaskStatus']
          @CreateTime = params['CreateTime']
          @AuthTime = params['AuthTime']
          @EndTime = params['EndTime']
          @TaskDetail = params['TaskDetail']
          @DeviceStatus = params['DeviceStatus']
          @OperateStatus = params['OperateStatus']
          @Zone = params['Zone']
          @Region = params['Region']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
          @VpcName = params['VpcName']
          @VpcCidrBlock = params['VpcCidrBlock']
          @SubnetCidrBlock = params['SubnetCidrBlock']
          @WanIp = params['WanIp']
          @LanIp = params['LanIp']
          @MgtIp = params['MgtIp']
          @TaskTypeName = params['TaskTypeName']
          @TaskSubType = params['TaskSubType']
        end
      end

      # 维修任务操作日志
      class TaskOperationLog < TencentCloud::Common::AbstractModel
        # @param TaskStep: 操作步骤
        # @type TaskStep: String
        # @param Operator: 操作人
        # @type Operator: String
        # @param OperationDetail: 操作描述
        # @type OperationDetail: String
        # @param OperationTime: 操作时间
        # @type OperationTime: String

        attr_accessor :TaskStep, :Operator, :OperationDetail, :OperationTime

        def initialize(taskstep=nil, operator=nil, operationdetail=nil, operationtime=nil)
          @TaskStep = taskstep
          @Operator = operator
          @OperationDetail = operationdetail
          @OperationTime = operationtime
        end

        def deserialize(params)
          @TaskStep = params['TaskStep']
          @Operator = params['Operator']
          @OperationDetail = params['OperationDetail']
          @OperationTime = params['OperationTime']
        end
      end

      # 故障id对应故障名列表
      class TaskType < TencentCloud::Common::AbstractModel
        # @param TypeId: 故障类ID
        # @type TypeId: Integer
        # @param TypeName: 故障类中文名
        # @type TypeName: String
        # @param TaskSubType: 故障类型父类
        # @type TaskSubType: String

        attr_accessor :TypeId, :TypeName, :TaskSubType

        def initialize(typeid=nil, typename=nil, tasksubtype=nil)
          @TypeId = typeid
          @TypeName = typename
          @TaskSubType = tasksubtype
        end

        def deserialize(params)
          @TypeId = params['TypeId']
          @TypeName = params['TypeName']
          @TaskSubType = params['TaskSubType']
        end
      end

      # UnbindPsaTag请求参数结构体
      class UnbindPsaTagRequest < TencentCloud::Common::AbstractModel
        # @param PsaId: 预授权规则ID
        # @type PsaId: String
        # @param TagKey: 需要解绑的标签key
        # @type TagKey: String
        # @param TagValue: 需要解绑的标签value
        # @type TagValue: String

        attr_accessor :PsaId, :TagKey, :TagValue

        def initialize(psaid=nil, tagkey=nil, tagvalue=nil)
          @PsaId = psaid
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @PsaId = params['PsaId']
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # UnbindPsaTag返回参数结构体
      class UnbindPsaTagResponse < TencentCloud::Common::AbstractModel
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

      # 脚本信息
      class UserCmd < TencentCloud::Common::AbstractModel
        # @param Alias: 用户自定义脚本名
        # @type Alias: String
        # @param AppId: AppId
        # @type AppId: Integer
        # @param AutoId: 脚本自增ID
        # @type AutoId: Integer
        # @param CmdId: 脚本ID
        # @type CmdId: String
        # @param Content: 脚本内容
        # @type Content: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param OsType: 命令适用的操作系统类型
        # @type OsType: String

        attr_accessor :Alias, :AppId, :AutoId, :CmdId, :Content, :CreateTime, :ModifyTime, :OsType

        def initialize(_alias=nil, appid=nil, autoid=nil, cmdid=nil, content=nil, createtime=nil, modifytime=nil, ostype=nil)
          @Alias = _alias
          @AppId = appid
          @AutoId = autoid
          @CmdId = cmdid
          @Content = content
          @CreateTime = createtime
          @ModifyTime = modifytime
          @OsType = ostype
        end

        def deserialize(params)
          @Alias = params['Alias']
          @AppId = params['AppId']
          @AutoId = params['AutoId']
          @CmdId = params['CmdId']
          @Content = params['Content']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @OsType = params['OsType']
        end
      end

      # 自定义脚本任务信息
      class UserCmdTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param Status: 任务状态ID，取值: -1(进行中) 0(结束)
        # @type Status: Integer
        # @param Alias: 脚本名称
        # @type Alias: String
        # @param CmdId: 脚本ID
        # @type CmdId: String
        # @param InstanceCount: 运行实例数量
        # @type InstanceCount: Integer
        # @param SuccessCount: 运行成功数量
        # @type SuccessCount: Integer
        # @param FailureCount: 运行失败数量
        # @type FailureCount: Integer
        # @param RunBeginTime: 执行开始时间
        # @type RunBeginTime: String
        # @param RunEndTime: 执行结束时间
        # @type RunEndTime: String

        attr_accessor :TaskId, :Status, :Alias, :CmdId, :InstanceCount, :SuccessCount, :FailureCount, :RunBeginTime, :RunEndTime

        def initialize(taskid=nil, status=nil, _alias=nil, cmdid=nil, instancecount=nil, successcount=nil, failurecount=nil, runbegintime=nil, runendtime=nil)
          @TaskId = taskid
          @Status = status
          @Alias = _alias
          @CmdId = cmdid
          @InstanceCount = instancecount
          @SuccessCount = successcount
          @FailureCount = failurecount
          @RunBeginTime = runbegintime
          @RunEndTime = runendtime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @Alias = params['Alias']
          @CmdId = params['CmdId']
          @InstanceCount = params['InstanceCount']
          @SuccessCount = params['SuccessCount']
          @FailureCount = params['FailureCount']
          @RunBeginTime = params['RunBeginTime']
          @RunEndTime = params['RunEndTime']
        end
      end

      # 自定义脚本任务详细信息
      class UserCmdTaskInfo < TencentCloud::Common::AbstractModel
        # @param AutoId: 自动编号，可忽略
        # @type AutoId: Integer
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param RunBeginTime: 任务开始时间
        # @type RunBeginTime: String
        # @param RunEndTime: 任务结束时间
        # @type RunEndTime: String
        # @param Status: 任务状态ID，取值为 -1：进行中；0：成功；>0：失败错误码
        # @type Status: Integer
        # @param InstanceName: 设备别名
        # @type InstanceName: String
        # @param InstanceId: 设备ID
        # @type InstanceId: String
        # @param VpcName: 私有网络名
        # @type VpcName: String
        # @param VpcId: 私有网络整型ID
        # @type VpcId: String
        # @param VpcCidrBlock: 私有网络Cidr
        # @type VpcCidrBlock: String
        # @param SubnetName: 子网名
        # @type SubnetName: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param SubnetCidrBlock: 子网Cidr
        # @type SubnetCidrBlock: String
        # @param LanIp: 内网IP
        # @type LanIp: String
        # @param CmdContent: 脚本内容，base64编码后的值
        # @type CmdContent: String
        # @param CmdParam: 脚本参数，base64编码后的值
        # @type CmdParam: String
        # @param CmdResult: 脚本执行结果，base64编码后的值
        # @type CmdResult: String
        # @param AppId: 用户AppId
        # @type AppId: Integer
        # @param LastShellExit: 用户执行脚本结束退出的返回值，没有返回值为-1
        # @type LastShellExit: Integer

        attr_accessor :AutoId, :TaskId, :RunBeginTime, :RunEndTime, :Status, :InstanceName, :InstanceId, :VpcName, :VpcId, :VpcCidrBlock, :SubnetName, :SubnetId, :SubnetCidrBlock, :LanIp, :CmdContent, :CmdParam, :CmdResult, :AppId, :LastShellExit

        def initialize(autoid=nil, taskid=nil, runbegintime=nil, runendtime=nil, status=nil, instancename=nil, instanceid=nil, vpcname=nil, vpcid=nil, vpccidrblock=nil, subnetname=nil, subnetid=nil, subnetcidrblock=nil, lanip=nil, cmdcontent=nil, cmdparam=nil, cmdresult=nil, appid=nil, lastshellexit=nil)
          @AutoId = autoid
          @TaskId = taskid
          @RunBeginTime = runbegintime
          @RunEndTime = runendtime
          @Status = status
          @InstanceName = instancename
          @InstanceId = instanceid
          @VpcName = vpcname
          @VpcId = vpcid
          @VpcCidrBlock = vpccidrblock
          @SubnetName = subnetname
          @SubnetId = subnetid
          @SubnetCidrBlock = subnetcidrblock
          @LanIp = lanip
          @CmdContent = cmdcontent
          @CmdParam = cmdparam
          @CmdResult = cmdresult
          @AppId = appid
          @LastShellExit = lastshellexit
        end

        def deserialize(params)
          @AutoId = params['AutoId']
          @TaskId = params['TaskId']
          @RunBeginTime = params['RunBeginTime']
          @RunEndTime = params['RunEndTime']
          @Status = params['Status']
          @InstanceName = params['InstanceName']
          @InstanceId = params['InstanceId']
          @VpcName = params['VpcName']
          @VpcId = params['VpcId']
          @VpcCidrBlock = params['VpcCidrBlock']
          @SubnetName = params['SubnetName']
          @SubnetId = params['SubnetId']
          @SubnetCidrBlock = params['SubnetCidrBlock']
          @LanIp = params['LanIp']
          @CmdContent = params['CmdContent']
          @CmdParam = params['CmdParam']
          @CmdResult = params['CmdResult']
          @AppId = params['AppId']
          @LastShellExit = params['LastShellExit']
        end
      end

      # 可用区信息
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区ID
        # @type Zone: String
        # @param ZoneId: 可用区整型ID
        # @type ZoneId: Integer
        # @param ZoneDescription: 可用区描述
        # @type ZoneDescription: String

        attr_accessor :Zone, :ZoneId, :ZoneDescription

        def initialize(zone=nil, zoneid=nil, zonedescription=nil)
          @Zone = zone
          @ZoneId = zoneid
          @ZoneDescription = zonedescription
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ZoneId = params['ZoneId']
          @ZoneDescription = params['ZoneDescription']
        end
      end

    end
  end
end

