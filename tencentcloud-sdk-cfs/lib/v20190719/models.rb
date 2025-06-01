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
  module Cfs
    module V20190719
      # 自动扩容规则
      class AutoScaleUpRule < TencentCloud::Common::AbstractModel
        # @param Status: 自动扩容策略开启，关闭
        # @type Status: String
        # @param ScaleThreshold: 集群用量占比，到达这个值后开始扩容,范围[10-90]
        # @type ScaleThreshold: Integer
        # @param TargetThreshold: 扩容后使用量跟集群总量比例,范围[1-90]
        # @type TargetThreshold: Integer

        attr_accessor :Status, :ScaleThreshold, :TargetThreshold

        def initialize(status=nil, scalethreshold=nil, targetthreshold=nil)
          @Status = status
          @ScaleThreshold = scalethreshold
          @TargetThreshold = targetthreshold
        end

        def deserialize(params)
          @Status = params['Status']
          @ScaleThreshold = params['ScaleThreshold']
          @TargetThreshold = params['TargetThreshold']
        end
      end

      # 快照策略信息
      class AutoSnapshotPolicyInfo < TencentCloud::Common::AbstractModel
        # @param AutoSnapshotPolicyId: 快照策略ID
        # @type AutoSnapshotPolicyId: String
        # @param PolicyName: 快照策略名称
        # @type PolicyName: String
        # @param CreationTime: 快照策略创建时间
        # @type CreationTime: String
        # @param FileSystemNums: 关联的文件系统个数
        # @type FileSystemNums: Integer
        # @param DayOfWeek: 快照定期备份在一星期哪一天，该参数与DayOfMonth,IntervalDays互斥
        # @type DayOfWeek: String
        # @param Hour: 快照定期备份在一天的哪一小时
        # @type Hour: String
        # @param IsActivated: 是否激活定期快照功能,1代表已激活，0代表未激活
        # @type IsActivated: Integer
        # @param NextActiveTime: 下一次触发快照时间
        # @type NextActiveTime: String
        # @param Status: 快照策略状态，available代表快照策略状态正常。这里只有一种状态
        # @type Status: String
        # @param AppId: 账号ID
        # @type AppId: Integer
        # @param AliveDays: 保留时间
        # @type AliveDays: Integer
        # @param RegionName: 地域
        # @type RegionName: String
        # @param FileSystems: 文件系统信息
        # @type FileSystems: Array
        # @param DayOfMonth: 快照定期备份在一个月的某个时间；该参数与DayOfWeek,IntervalDays互斥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DayOfMonth: String
        # @param IntervalDays: 快照定期间隔天数，1-365 天；该参数与DayOfMonth,DayOfWeek互斥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntervalDays: Integer
        # @param CrossRegionsAliveDays: 跨地域复制的快照保留时间，单位天
        # @type CrossRegionsAliveDays: Integer

        attr_accessor :AutoSnapshotPolicyId, :PolicyName, :CreationTime, :FileSystemNums, :DayOfWeek, :Hour, :IsActivated, :NextActiveTime, :Status, :AppId, :AliveDays, :RegionName, :FileSystems, :DayOfMonth, :IntervalDays, :CrossRegionsAliveDays

        def initialize(autosnapshotpolicyid=nil, policyname=nil, creationtime=nil, filesystemnums=nil, dayofweek=nil, hour=nil, isactivated=nil, nextactivetime=nil, status=nil, appid=nil, alivedays=nil, regionname=nil, filesystems=nil, dayofmonth=nil, intervaldays=nil, crossregionsalivedays=nil)
          @AutoSnapshotPolicyId = autosnapshotpolicyid
          @PolicyName = policyname
          @CreationTime = creationtime
          @FileSystemNums = filesystemnums
          @DayOfWeek = dayofweek
          @Hour = hour
          @IsActivated = isactivated
          @NextActiveTime = nextactivetime
          @Status = status
          @AppId = appid
          @AliveDays = alivedays
          @RegionName = regionname
          @FileSystems = filesystems
          @DayOfMonth = dayofmonth
          @IntervalDays = intervaldays
          @CrossRegionsAliveDays = crossregionsalivedays
        end

        def deserialize(params)
          @AutoSnapshotPolicyId = params['AutoSnapshotPolicyId']
          @PolicyName = params['PolicyName']
          @CreationTime = params['CreationTime']
          @FileSystemNums = params['FileSystemNums']
          @DayOfWeek = params['DayOfWeek']
          @Hour = params['Hour']
          @IsActivated = params['IsActivated']
          @NextActiveTime = params['NextActiveTime']
          @Status = params['Status']
          @AppId = params['AppId']
          @AliveDays = params['AliveDays']
          @RegionName = params['RegionName']
          unless params['FileSystems'].nil?
            @FileSystems = []
            params['FileSystems'].each do |i|
              filesystembypolicy_tmp = FileSystemByPolicy.new
              filesystembypolicy_tmp.deserialize(i)
              @FileSystems << filesystembypolicy_tmp
            end
          end
          @DayOfMonth = params['DayOfMonth']
          @IntervalDays = params['IntervalDays']
          @CrossRegionsAliveDays = params['CrossRegionsAliveDays']
        end
      end

      # 版本控制-协议详情
      class AvailableProtoStatus < TencentCloud::Common::AbstractModel
        # @param SaleStatus: 售卖状态。可选值有 sale_out 售罄、saling可售、no_saling不可销售
        # @type SaleStatus: String
        # @param Protocol: 协议类型。可选值有 NFS、CIFS、TURBO
        # @type Protocol: String

        attr_accessor :SaleStatus, :Protocol

        def initialize(salestatus=nil, protocol=nil)
          @SaleStatus = salestatus
          @Protocol = protocol
        end

        def deserialize(params)
          @SaleStatus = params['SaleStatus']
          @Protocol = params['Protocol']
        end
      end

      # 版本控制-区域数组
      class AvailableRegion < TencentCloud::Common::AbstractModel
        # @param Region: 区域名称，如“ap-beijing”
        # @type Region: String
        # @param RegionName: 区域名称，如“bj”
        # @type RegionName: String
        # @param RegionStatus: 区域可用情况，当区域内至少有一个可用区处于可售状态时，取值为AVAILABLE，否则为UNAVAILABLE
        # @type RegionStatus: String
        # @param Zones: 可用区数组
        # @type Zones: Array
        # @param RegionCnName: 区域中文名称，如“广州”
        # @type RegionCnName: String

        attr_accessor :Region, :RegionName, :RegionStatus, :Zones, :RegionCnName

        def initialize(region=nil, regionname=nil, regionstatus=nil, zones=nil, regioncnname=nil)
          @Region = region
          @RegionName = regionname
          @RegionStatus = regionstatus
          @Zones = zones
          @RegionCnName = regioncnname
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionStatus = params['RegionStatus']
          unless params['Zones'].nil?
            @Zones = []
            params['Zones'].each do |i|
              availablezone_tmp = AvailableZone.new
              availablezone_tmp.deserialize(i)
              @Zones << availablezone_tmp
            end
          end
          @RegionCnName = params['RegionCnName']
        end
      end

      # 版本控制-类型数组
      class AvailableType < TencentCloud::Common::AbstractModel
        # @param Protocols: 协议与售卖详情
        # @type Protocols: Array
        # @param Type: 存储类型。返回值中 SD 为通用标准型存储， HP为通用性能型存储， TB为Turbo标准型， TP 为Turbo性能型。
        # @type Type: String
        # @param Prepayment: 是否支持预付费。返回值中 true 为支持、false 为不支持
        # @type Prepayment: Boolean

        attr_accessor :Protocols, :Type, :Prepayment

        def initialize(protocols=nil, type=nil, prepayment=nil)
          @Protocols = protocols
          @Type = type
          @Prepayment = prepayment
        end

        def deserialize(params)
          unless params['Protocols'].nil?
            @Protocols = []
            params['Protocols'].each do |i|
              availableprotostatus_tmp = AvailableProtoStatus.new
              availableprotostatus_tmp.deserialize(i)
              @Protocols << availableprotostatus_tmp
            end
          end
          @Type = params['Type']
          @Prepayment = params['Prepayment']
        end
      end

      # 版本控制-可用区数组
      class AvailableZone < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区名称
        # @type Zone: String
        # @param ZoneId: 可用区ID
        # @type ZoneId: Integer
        # @param ZoneCnName: 可用区中文名称
        # @type ZoneCnName: String
        # @param Types: Type数组
        # @type Types: Array
        # @param ZoneName: 可用区中英文名称
        # @type ZoneName: String

        attr_accessor :Zone, :ZoneId, :ZoneCnName, :Types, :ZoneName

        def initialize(zone=nil, zoneid=nil, zonecnname=nil, types=nil, zonename=nil)
          @Zone = zone
          @ZoneId = zoneid
          @ZoneCnName = zonecnname
          @Types = types
          @ZoneName = zonename
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ZoneId = params['ZoneId']
          @ZoneCnName = params['ZoneCnName']
          unless params['Types'].nil?
            @Types = []
            params['Types'].each do |i|
              availabletype_tmp = AvailableType.new
              availabletype_tmp.deserialize(i)
              @Types << availabletype_tmp
            end
          end
          @ZoneName = params['ZoneName']
        end
      end

      # BindAutoSnapshotPolicy请求参数结构体
      class BindAutoSnapshotPolicyRequest < TencentCloud::Common::AbstractModel
        # @param AutoSnapshotPolicyId: 快照策略ID，通过快照策略列表获取
        # @type AutoSnapshotPolicyId: String
        # @param FileSystemIds: 文件系统id列表，用“,”分隔，文件系统id通过查询文件系统列表获得
        # @type FileSystemIds: String

        attr_accessor :AutoSnapshotPolicyId, :FileSystemIds

        def initialize(autosnapshotpolicyid=nil, filesystemids=nil)
          @AutoSnapshotPolicyId = autosnapshotpolicyid
          @FileSystemIds = filesystemids
        end

        def deserialize(params)
          @AutoSnapshotPolicyId = params['AutoSnapshotPolicyId']
          @FileSystemIds = params['FileSystemIds']
        end
      end

      # BindAutoSnapshotPolicy返回参数结构体
      class BindAutoSnapshotPolicyResponse < TencentCloud::Common::AbstractModel
        # @param AutoSnapshotPolicyId: 快照策略ID
        # @type AutoSnapshotPolicyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutoSnapshotPolicyId, :RequestId

        def initialize(autosnapshotpolicyid=nil, requestid=nil)
          @AutoSnapshotPolicyId = autosnapshotpolicyid
          @RequestId = requestid
        end

        def deserialize(params)
          @AutoSnapshotPolicyId = params['AutoSnapshotPolicyId']
          @RequestId = params['RequestId']
        end
      end

      # 对象存储桶
      class BucketInfo < TencentCloud::Common::AbstractModel
        # @param Name: 桶名称
        # @type Name: String
        # @param Region: 桶所在地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String

        attr_accessor :Name, :Region

        def initialize(name=nil, region=nil)
          @Name = name
          @Region = region
        end

        def deserialize(params)
          @Name = params['Name']
          @Region = params['Region']
        end
      end

      # CreateAccessCert请求参数结构体
      class CreateAccessCertRequest < TencentCloud::Common::AbstractModel
        # @param CertDesc: 证书描述，不超过64字符
        # @type CertDesc: String

        attr_accessor :CertDesc

        def initialize(certdesc=nil)
          @CertDesc = certdesc
        end

        def deserialize(params)
          @CertDesc = params['CertDesc']
        end
      end

      # CreateAccessCert返回参数结构体
      class CreateAccessCertResponse < TencentCloud::Common::AbstractModel
        # @param CertId: 凭证唯一标识
        # @type CertId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertId, :RequestId

        def initialize(certid=nil, requestid=nil)
          @CertId = certid
          @RequestId = requestid
        end

        def deserialize(params)
          @CertId = params['CertId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAutoSnapshotPolicy请求参数结构体
      class CreateAutoSnapshotPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Hour: 快照重复时间点,0-23，小时
        # @type Hour: String
        # @param PolicyName: 策略名称,限制64个字符数量仅支持输入中文、字母、数字、_或-
        # @type PolicyName: String
        # @param DayOfWeek: 快照重复日期，星期一到星期日。 1代表星期一、7代表星期天，与DayOfMonth，IntervalDays 三者选一
        # @type DayOfWeek: String
        # @param AliveDays: 快照保留时长，单位天，默认永久0
        # @type AliveDays: Integer
        # @param DayOfMonth: 快照按月重复，每月1-31号，选择一天，每月将在这一天自动创建快照；例如1 代表1号；与DayOfWeek，IntervalDays 三者选一
        # @type DayOfMonth: String
        # @param IntervalDays: 间隔天数，与DayOfWeek，DayOfMonth 三者选一
        # @type IntervalDays: Integer

        attr_accessor :Hour, :PolicyName, :DayOfWeek, :AliveDays, :DayOfMonth, :IntervalDays

        def initialize(hour=nil, policyname=nil, dayofweek=nil, alivedays=nil, dayofmonth=nil, intervaldays=nil)
          @Hour = hour
          @PolicyName = policyname
          @DayOfWeek = dayofweek
          @AliveDays = alivedays
          @DayOfMonth = dayofmonth
          @IntervalDays = intervaldays
        end

        def deserialize(params)
          @Hour = params['Hour']
          @PolicyName = params['PolicyName']
          @DayOfWeek = params['DayOfWeek']
          @AliveDays = params['AliveDays']
          @DayOfMonth = params['DayOfMonth']
          @IntervalDays = params['IntervalDays']
        end
      end

      # CreateAutoSnapshotPolicy返回参数结构体
      class CreateAutoSnapshotPolicyResponse < TencentCloud::Common::AbstractModel
        # @param AutoSnapshotPolicyId: 快照策略ID
        # @type AutoSnapshotPolicyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutoSnapshotPolicyId, :RequestId

        def initialize(autosnapshotpolicyid=nil, requestid=nil)
          @AutoSnapshotPolicyId = autosnapshotpolicyid
          @RequestId = requestid
        end

        def deserialize(params)
          @AutoSnapshotPolicyId = params['AutoSnapshotPolicyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCfsFileSystem请求参数结构体
      class CreateCfsFileSystemRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区名称，例如ap-beijing-1，请参考 [概览](https://cloud.tencent.com/document/product/582/13225) 文档中的地域与可用区列表
        # @type Zone: String
        # @param NetInterface: 网络类型，可选值为 VPC，CCN；其中 VPC 为私有网络， CCN 为云联网。通用标准型/性能型请选择VPC，Turbo标准型/性能型请选择CCN。
        # @type NetInterface: String
        # @param PGroupId: 权限组 ID,pgroupbasic 是默认权限组，通过控制查询权限组列表接口获取[DescribeCfsPGroups](https://cloud.tencent.com/document/product/582/38157)
        # @type PGroupId: String
        # @param Protocol: 文件系统协议类型， 值为 NFS、CIFS、TURBO ; 若留空则默认为 NFS协议，turbo系列必须选择TURBO，不支持NFS、CIFS
        # @type Protocol: String
        # @param StorageType: 文件系统存储类型，默认值为 SD ；其中 SD 为通用标准型存储， HP为通用性能型存储， TB为Turbo标准型， TP 为Turbo性能型。
        # @type StorageType: String
        # @param VpcId: 私有网络（VPC） ID，若网络类型选择的是VPC，该字段为必填.通过查询私有网络接口获取，
        # [DescribeVpcs](https://cloud.tencent.com/document/product/215/15778)
        # @type VpcId: String
        # @param SubnetId: 子网 ID，若网络类型选择的是VPC，该字段为必填。通过查询子网接口获取，
        # [DescribeSubnets](https://cloud.tencent.com/document/product/215/15784)
        # @type SubnetId: String
        # @param MountIP: 指定IP地址，仅VPC网络支持；若不填写、将在该子网下随机分配 IP，Turbo系列当前不支持指定
        # @type MountIP: String
        # @param FsName: 用户自定义文件系统名称
        # @type FsName: String
        # @param ResourceTags: 文件系统标签
        # @type ResourceTags: Array
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。用于保证请求幂等性的字符串失效时间为2小时。
        # @type ClientToken: String
        # @param CcnId: 云联网ID， 若网络类型选择的是CCN，该字段为必填;通过查询云联网列表接口获取，通过接口
        # [DescribeCcns](https://cloud.tencent.com/document/product/215/19199)
        # @type CcnId: String
        # @param CidrBlock: 云联网中CFS使用的网段， 若网络类型选择的是Ccn，该字段为必填，且不能和Ccn中已经绑定的网段冲突
        # @type CidrBlock: String
        # @param Capacity: 文件系统容量，turbo系列必填，单位为GiB。 turbo标准型单位GB，起售20TiB，即20480 GiB；扩容步长20TiB，即20480 GiB。turbo性能型起售10TiB，即10240 GiB；扩容步长10TiB，10240 GiB。
        # @type Capacity: Integer
        # @param SnapshotId: 文件系统快照ID，通过查询快照列表获取该参数，
        # [DescribeCfsSnapshots](https://cloud.tencent.com/document/product/582/80206)
        # @type SnapshotId: String
        # @param AutoSnapshotPolicyId: 定期快照策略ID，通过查询快照策略信息获取,
        # [DescribeAutoSnapshotPolicies](https://cloud.tencent.com/document/product/582/38157)
        # @type AutoSnapshotPolicyId: String
        # @param EnableAutoScaleUp: 是否开启默认扩容，仅turbo类型文件存储支持
        # @type EnableAutoScaleUp: Boolean
        # @param CfsVersion: v1.5：创建普通版的通用文件系统；
        # v3.1：创建增强版的通用文件系统
        # 说明：增强版的通用系统需要开通白名单才能使用，如有需要请提交工单与我们联系。
        # @type CfsVersion: String

        attr_accessor :Zone, :NetInterface, :PGroupId, :Protocol, :StorageType, :VpcId, :SubnetId, :MountIP, :FsName, :ResourceTags, :ClientToken, :CcnId, :CidrBlock, :Capacity, :SnapshotId, :AutoSnapshotPolicyId, :EnableAutoScaleUp, :CfsVersion

        def initialize(zone=nil, netinterface=nil, pgroupid=nil, protocol=nil, storagetype=nil, vpcid=nil, subnetid=nil, mountip=nil, fsname=nil, resourcetags=nil, clienttoken=nil, ccnid=nil, cidrblock=nil, capacity=nil, snapshotid=nil, autosnapshotpolicyid=nil, enableautoscaleup=nil, cfsversion=nil)
          @Zone = zone
          @NetInterface = netinterface
          @PGroupId = pgroupid
          @Protocol = protocol
          @StorageType = storagetype
          @VpcId = vpcid
          @SubnetId = subnetid
          @MountIP = mountip
          @FsName = fsname
          @ResourceTags = resourcetags
          @ClientToken = clienttoken
          @CcnId = ccnid
          @CidrBlock = cidrblock
          @Capacity = capacity
          @SnapshotId = snapshotid
          @AutoSnapshotPolicyId = autosnapshotpolicyid
          @EnableAutoScaleUp = enableautoscaleup
          @CfsVersion = cfsversion
        end

        def deserialize(params)
          @Zone = params['Zone']
          @NetInterface = params['NetInterface']
          @PGroupId = params['PGroupId']
          @Protocol = params['Protocol']
          @StorageType = params['StorageType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @MountIP = params['MountIP']
          @FsName = params['FsName']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @ResourceTags << taginfo_tmp
            end
          end
          @ClientToken = params['ClientToken']
          @CcnId = params['CcnId']
          @CidrBlock = params['CidrBlock']
          @Capacity = params['Capacity']
          @SnapshotId = params['SnapshotId']
          @AutoSnapshotPolicyId = params['AutoSnapshotPolicyId']
          @EnableAutoScaleUp = params['EnableAutoScaleUp']
          @CfsVersion = params['CfsVersion']
        end
      end

      # CreateCfsFileSystem返回参数结构体
      class CreateCfsFileSystemResponse < TencentCloud::Common::AbstractModel
        # @param CreationTime: 文件系统创建时间
        # @type CreationTime: String
        # @param CreationToken: 用户自定义文件系统名称
        # @type CreationToken: String
        # @param FileSystemId: 文件系统 ID
        # @type FileSystemId: String
        # @param LifeCycleState: 文件系统状态，可能出现状态包括：“creating”  创建中, “create_failed” 创建失败, “available” 可用, “unserviced” 不可用, “upgrading” 升级中， “deleting” 删除中。
        # @type LifeCycleState: String
        # @param SizeByte: 文件系统已使用容量大小，单位为 Byte
        # @type SizeByte: Integer
        # @param ZoneId: 可用区 ID
        # @type ZoneId: Integer
        # @param FsName: 用户自定义文件系统名称
        # @type FsName: String
        # @param Encrypted: 文件系统是否加密
        # @type Encrypted: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CreationTime, :CreationToken, :FileSystemId, :LifeCycleState, :SizeByte, :ZoneId, :FsName, :Encrypted, :RequestId

        def initialize(creationtime=nil, creationtoken=nil, filesystemid=nil, lifecyclestate=nil, sizebyte=nil, zoneid=nil, fsname=nil, encrypted=nil, requestid=nil)
          @CreationTime = creationtime
          @CreationToken = creationtoken
          @FileSystemId = filesystemid
          @LifeCycleState = lifecyclestate
          @SizeByte = sizebyte
          @ZoneId = zoneid
          @FsName = fsname
          @Encrypted = encrypted
          @RequestId = requestid
        end

        def deserialize(params)
          @CreationTime = params['CreationTime']
          @CreationToken = params['CreationToken']
          @FileSystemId = params['FileSystemId']
          @LifeCycleState = params['LifeCycleState']
          @SizeByte = params['SizeByte']
          @ZoneId = params['ZoneId']
          @FsName = params['FsName']
          @Encrypted = params['Encrypted']
          @RequestId = params['RequestId']
        end
      end

      # CreateCfsPGroup请求参数结构体
      class CreateCfsPGroupRequest < TencentCloud::Common::AbstractModel
        # @param Name: 权限组名称，1-64个字符且只能为中文，字母，数字，下划线或横线
        # @type Name: String
        # @param DescInfo: 权限组描述信息，1-255个字符
        # @type DescInfo: String

        attr_accessor :Name, :DescInfo

        def initialize(name=nil, descinfo=nil)
          @Name = name
          @DescInfo = descinfo
        end

        def deserialize(params)
          @Name = params['Name']
          @DescInfo = params['DescInfo']
        end
      end

      # CreateCfsPGroup返回参数结构体
      class CreateCfsPGroupResponse < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String
        # @param Name: 权限组名字
        # @type Name: String
        # @param DescInfo: 权限组描述信息
        # @type DescInfo: String
        # @param BindCfsNum: 已经与该权限组绑定的文件系统个数
        # @type BindCfsNum: Integer
        # @param CDate: 权限组创建时间
        # @type CDate: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PGroupId, :Name, :DescInfo, :BindCfsNum, :CDate, :RequestId

        def initialize(pgroupid=nil, name=nil, descinfo=nil, bindcfsnum=nil, cdate=nil, requestid=nil)
          @PGroupId = pgroupid
          @Name = name
          @DescInfo = descinfo
          @BindCfsNum = bindcfsnum
          @CDate = cdate
          @RequestId = requestid
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @Name = params['Name']
          @DescInfo = params['DescInfo']
          @BindCfsNum = params['BindCfsNum']
          @CDate = params['CDate']
          @RequestId = params['RequestId']
        end
      end

      # CreateCfsRule请求参数结构体
      class CreateCfsRuleRequest < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID，可通过[DescribeCfsPGroups接口](https://cloud.tencent.com/document/api/582/38157)获取
        # @type PGroupId: String
        # @param AuthClientIp: 可以填写单个 IP 或者单个网段，例如 10.1.10.11 或者 10.10.1.0/24。默认来访地址为*表示允许所有。同时需要注意，此处需填写 CVM 的内网 IP。
        # @type AuthClientIp: String
        # @param Priority: 规则优先级，参数范围1-100。 其中 1 为最高，100为最低
        # @type Priority: Integer
        # @param RWPermission: 读写权限, 值为 RO、RW；其中 RO 为只读，RW 为读写，不填默认为只读
        # @type RWPermission: String
        # @param UserPermission: 用户权限，值为 all_squash、no_all_squash、root_squash、no_root_squash。默认值为root_squash
        # all_squash：所有访问用户（含 root 用户）都会被映射为匿名用户或用户组。
        # no_all_squash：所有访问用户（含 root 用户）均保持原有的 UID/GID 信息。
        # root_squash：将来访的 root 用户映射为匿名用户或用户组，非 root 用户保持原有的 UID/GID 信息。
        # no_root_squash：与 no_all_squash 效果一致，所有访问用户（含 root 用户）均保持原有的 UID/GID 信息
        # @type UserPermission: String

        attr_accessor :PGroupId, :AuthClientIp, :Priority, :RWPermission, :UserPermission

        def initialize(pgroupid=nil, authclientip=nil, priority=nil, rwpermission=nil, userpermission=nil)
          @PGroupId = pgroupid
          @AuthClientIp = authclientip
          @Priority = priority
          @RWPermission = rwpermission
          @UserPermission = userpermission
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @AuthClientIp = params['AuthClientIp']
          @Priority = params['Priority']
          @RWPermission = params['RWPermission']
          @UserPermission = params['UserPermission']
        end
      end

      # CreateCfsRule返回参数结构体
      class CreateCfsRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则 ID
        # @type RuleId: String
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String
        # @param AuthClientIp: 客户端 IP
        # @type AuthClientIp: String
        # @param RWPermission: 读写权限
        # @type RWPermission: String
        # @param UserPermission: 用户权限
        # @type UserPermission: String
        # @param Priority: 优先级
        # @type Priority: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :PGroupId, :AuthClientIp, :RWPermission, :UserPermission, :Priority, :RequestId

        def initialize(ruleid=nil, pgroupid=nil, authclientip=nil, rwpermission=nil, userpermission=nil, priority=nil, requestid=nil)
          @RuleId = ruleid
          @PGroupId = pgroupid
          @AuthClientIp = authclientip
          @RWPermission = rwpermission
          @UserPermission = userpermission
          @Priority = priority
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @PGroupId = params['PGroupId']
          @AuthClientIp = params['AuthClientIp']
          @RWPermission = params['RWPermission']
          @UserPermission = params['UserPermission']
          @Priority = params['Priority']
          @RequestId = params['RequestId']
        end
      end

      # CreateCfsSnapshot请求参数结构体
      class CreateCfsSnapshotRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID，通过查询文件系统列表获取；[DescribeCfsFileSystems](https://cloud.tencent.com/document/product/582/38170)
        # @type FileSystemId: String
        # @param SnapshotName: 快照名称，支持不超过64字符长度，支持中文、数字、_、-
        # @type SnapshotName: String
        # @param ResourceTags: 快照标签
        # @type ResourceTags: Array

        attr_accessor :FileSystemId, :SnapshotName, :ResourceTags

        def initialize(filesystemid=nil, snapshotname=nil, resourcetags=nil)
          @FileSystemId = filesystemid
          @SnapshotName = snapshotname
          @ResourceTags = resourcetags
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @SnapshotName = params['SnapshotName']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @ResourceTags << taginfo_tmp
            end
          end
        end
      end

      # CreateCfsSnapshot返回参数结构体
      class CreateCfsSnapshotResponse < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 文件系统快照id
        # @type SnapshotId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SnapshotId, :RequestId

        def initialize(snapshotid=nil, requestid=nil)
          @SnapshotId = snapshotid
          @RequestId = requestid
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
          @RequestId = params['RequestId']
        end
      end

      # CreateMigrationTask请求参数结构体
      class CreateMigrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskName: 迁移任务名称
        # @type TaskName: String
        # @param MigrationType: 迁移方式标志位，默认为0。0: 桶迁移；1: 清单迁移
        # @type MigrationType: Integer
        # @param MigrationMode: 迁移模式，默认为0。0: 全量迁移
        # @type MigrationMode: Integer
        # @param SrcSecretId: 数据源账号的SecretId
        # @type SrcSecretId: String
        # @param SrcSecretKey: 数据源账号的SecretKey
        # @type SrcSecretKey: String
        # @param FileSystemId: 文件系统实例Id
        # @type FileSystemId: String
        # @param FsPath: 文件系统路径
        # @type FsPath: String
        # @param CoverType: 同名文件迁移时覆盖策略，默认为0。0: 最后修改时间优先；1: 全覆盖；2: 不覆盖
        # @type CoverType: Integer
        # @param SrcService: 数据源服务商。COS: 腾讯云COS，OSS: 阿里云OSS，OBS:华为云OBS
        # @type SrcService: String
        # @param BucketName: 数据源桶名称，名称和地址至少有一个
        # @type BucketName: String
        # @param BucketRegion: 数据源桶地域
        # @type BucketRegion: String
        # @param BucketAddress: 数据源桶地址，名称和地址至少有一个
        # @type BucketAddress: String
        # @param ListAddress: 清单地址，迁移方式为清单迁移时必填
        # @type ListAddress: String
        # @param FsName: 目标文件系统名称
        # @type FsName: String
        # @param BucketPath: 源桶路径，默认为/
        # @type BucketPath: String
        # @param Direction: 迁移方向。0: 对象存储迁移至文件系统，1: 文件系统迁移至对象存储。默认 0
        # @type Direction: Integer

        attr_accessor :TaskName, :MigrationType, :MigrationMode, :SrcSecretId, :SrcSecretKey, :FileSystemId, :FsPath, :CoverType, :SrcService, :BucketName, :BucketRegion, :BucketAddress, :ListAddress, :FsName, :BucketPath, :Direction

        def initialize(taskname=nil, migrationtype=nil, migrationmode=nil, srcsecretid=nil, srcsecretkey=nil, filesystemid=nil, fspath=nil, covertype=nil, srcservice=nil, bucketname=nil, bucketregion=nil, bucketaddress=nil, listaddress=nil, fsname=nil, bucketpath=nil, direction=nil)
          @TaskName = taskname
          @MigrationType = migrationtype
          @MigrationMode = migrationmode
          @SrcSecretId = srcsecretid
          @SrcSecretKey = srcsecretkey
          @FileSystemId = filesystemid
          @FsPath = fspath
          @CoverType = covertype
          @SrcService = srcservice
          @BucketName = bucketname
          @BucketRegion = bucketregion
          @BucketAddress = bucketaddress
          @ListAddress = listaddress
          @FsName = fsname
          @BucketPath = bucketpath
          @Direction = direction
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @MigrationType = params['MigrationType']
          @MigrationMode = params['MigrationMode']
          @SrcSecretId = params['SrcSecretId']
          @SrcSecretKey = params['SrcSecretKey']
          @FileSystemId = params['FileSystemId']
          @FsPath = params['FsPath']
          @CoverType = params['CoverType']
          @SrcService = params['SrcService']
          @BucketName = params['BucketName']
          @BucketRegion = params['BucketRegion']
          @BucketAddress = params['BucketAddress']
          @ListAddress = params['ListAddress']
          @FsName = params['FsName']
          @BucketPath = params['BucketPath']
          @Direction = params['Direction']
        end
      end

      # CreateMigrationTask返回参数结构体
      class CreateMigrationTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 迁移任务Id
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

      # DeleteAutoSnapshotPolicy请求参数结构体
      class DeleteAutoSnapshotPolicyRequest < TencentCloud::Common::AbstractModel
        # @param AutoSnapshotPolicyId: 快照策略ID，查询快照策略接口获取,[DescribeAutoSnapshotPolicies](https://cloud.tencent.com/document/api/582/80208)
        # @type AutoSnapshotPolicyId: String

        attr_accessor :AutoSnapshotPolicyId

        def initialize(autosnapshotpolicyid=nil)
          @AutoSnapshotPolicyId = autosnapshotpolicyid
        end

        def deserialize(params)
          @AutoSnapshotPolicyId = params['AutoSnapshotPolicyId']
        end
      end

      # DeleteAutoSnapshotPolicy返回参数结构体
      class DeleteAutoSnapshotPolicyResponse < TencentCloud::Common::AbstractModel
        # @param AutoSnapshotPolicyId: 快照策略ID
        # @type AutoSnapshotPolicyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutoSnapshotPolicyId, :RequestId

        def initialize(autosnapshotpolicyid=nil, requestid=nil)
          @AutoSnapshotPolicyId = autosnapshotpolicyid
          @RequestId = requestid
        end

        def deserialize(params)
          @AutoSnapshotPolicyId = params['AutoSnapshotPolicyId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCfsFileSystem请求参数结构体
      class DeleteCfsFileSystemRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统 ID，通过[查询文件系统接口](https://cloud.tencent.com/document/api/582/38170)获取。说明，进行删除文件系统操作前需要先调用 DeleteMountTarget 接口删除该文件系统的挂载点，否则会删除失败。
        # @type FileSystemId: String

        attr_accessor :FileSystemId

        def initialize(filesystemid=nil)
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
        end
      end

      # DeleteCfsFileSystem返回参数结构体
      class DeleteCfsFileSystemResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCfsPGroup请求参数结构体
      class DeleteCfsPGroupRequest < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID，可通过[DescribeCfsPGroups接口](https://cloud.tencent.com/document/api/582/38157)获取
        # @type PGroupId: String

        attr_accessor :PGroupId

        def initialize(pgroupid=nil)
          @PGroupId = pgroupid
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
        end
      end

      # DeleteCfsPGroup返回参数结构体
      class DeleteCfsPGroupResponse < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String
        # @param AppId: 用户 ID
        # @type AppId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PGroupId, :AppId, :RequestId

        def initialize(pgroupid=nil, appid=nil, requestid=nil)
          @PGroupId = pgroupid
          @AppId = appid
          @RequestId = requestid
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @AppId = params['AppId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCfsRule请求参数结构体
      class DeleteCfsRuleRequest < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID，可通过[DescribeCfsPGroups接口](https://cloud.tencent.com/document/api/582/38157)获取
        # @type PGroupId: String
        # @param RuleId: 规则 ID，可通过[DescribeCfsRules](https://cloud.tencent.com/document/api/582/38156)接口获取
        # @type RuleId: String

        attr_accessor :PGroupId, :RuleId

        def initialize(pgroupid=nil, ruleid=nil)
          @PGroupId = pgroupid
          @RuleId = ruleid
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @RuleId = params['RuleId']
        end
      end

      # DeleteCfsRule返回参数结构体
      class DeleteCfsRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则 ID
        # @type RuleId: String
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :PGroupId, :RequestId

        def initialize(ruleid=nil, pgroupid=nil, requestid=nil)
          @RuleId = ruleid
          @PGroupId = pgroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @PGroupId = params['PGroupId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCfsSnapshot请求参数结构体
      class DeleteCfsSnapshotRequest < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 快照ID，可以通过[DescribeCfsSnapshots](https://cloud.tencent.com/document/api/582/80206) 查询获取
        # @type SnapshotId: String
        # @param SnapshotIds: 需要删除的文件系统快照ID 列表，快照ID，跟ID列表至少填一项
        # 快照ID，可以通过[DescribeCfsSnapshots](https://cloud.tencent.com/document/api/582/80206) 查询获取
        # @type SnapshotIds: Array

        attr_accessor :SnapshotId, :SnapshotIds

        def initialize(snapshotid=nil, snapshotids=nil)
          @SnapshotId = snapshotid
          @SnapshotIds = snapshotids
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
          @SnapshotIds = params['SnapshotIds']
        end
      end

      # DeleteCfsSnapshot返回参数结构体
      class DeleteCfsSnapshotResponse < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 文件系统ID
        # @type SnapshotId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SnapshotId, :RequestId

        def initialize(snapshotid=nil, requestid=nil)
          @SnapshotId = snapshotid
          @RequestId = requestid
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteMigrationTask请求参数结构体
      class DeleteMigrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 迁移任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DeleteMigrationTask返回参数结构体
      class DeleteMigrationTaskResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMountTarget请求参数结构体
      class DeleteMountTargetRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统 ID
        # @type FileSystemId: String
        # @param MountTargetId: 挂载点 ID
        # @type MountTargetId: String

        attr_accessor :FileSystemId, :MountTargetId

        def initialize(filesystemid=nil, mounttargetid=nil)
          @FileSystemId = filesystemid
          @MountTargetId = mounttargetid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @MountTargetId = params['MountTargetId']
        end
      end

      # DeleteMountTarget返回参数结构体
      class DeleteMountTargetResponse < TencentCloud::Common::AbstractModel
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

      # DeleteUserQuota请求参数结构体
      class DeleteUserQuotaRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID，通过查询文件系统列表获取；[DescribeCfsFileSystems](https://cloud.tencent.com/document/product/582/38170)
        # @type FileSystemId: String
        # @param UserType: 指定配额类型，包括Uid（按用户ID限制）、Gid（按用户组ID限制）、Dir（按目录限制）
        # @type UserType: String
        # @param UserId: UID/GID信息，和DirectoryPath参数，两者必须填写一个
        # @type UserId: String
        # @param DirectoryPath: 设置目录配额的目录的绝对路径，和UserId参数，两者必须填写一个
        # @type DirectoryPath: String

        attr_accessor :FileSystemId, :UserType, :UserId, :DirectoryPath

        def initialize(filesystemid=nil, usertype=nil, userid=nil, directorypath=nil)
          @FileSystemId = filesystemid
          @UserType = usertype
          @UserId = userid
          @DirectoryPath = directorypath
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @UserType = params['UserType']
          @UserId = params['UserId']
          @DirectoryPath = params['DirectoryPath']
        end
      end

      # DeleteUserQuota返回参数结构体
      class DeleteUserQuotaResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAutoSnapshotPolicies请求参数结构体
      class DescribeAutoSnapshotPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param AutoSnapshotPolicyId: 快照策略ID
        # @type AutoSnapshotPolicyId: String
        # @param Offset: 分页码
        # @type Offset: Integer
        # @param Limit: 页面长
        # @type Limit: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param Order: 升序，降序
        # @type Order: String
        # @param OrderField: 排序字段
        # @type OrderField: String

        attr_accessor :AutoSnapshotPolicyId, :Offset, :Limit, :Filters, :Order, :OrderField

        def initialize(autosnapshotpolicyid=nil, offset=nil, limit=nil, filters=nil, order=nil, orderfield=nil)
          @AutoSnapshotPolicyId = autosnapshotpolicyid
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          @AutoSnapshotPolicyId = params['AutoSnapshotPolicyId']
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
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeAutoSnapshotPolicies返回参数结构体
      class DescribeAutoSnapshotPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 快照策略总个数
        # @type TotalCount: Integer
        # @param AutoSnapshotPolicies: 快照策略信息
        # @type AutoSnapshotPolicies: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AutoSnapshotPolicies, :RequestId

        def initialize(totalcount=nil, autosnapshotpolicies=nil, requestid=nil)
          @TotalCount = totalcount
          @AutoSnapshotPolicies = autosnapshotpolicies
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AutoSnapshotPolicies'].nil?
            @AutoSnapshotPolicies = []
            params['AutoSnapshotPolicies'].each do |i|
              autosnapshotpolicyinfo_tmp = AutoSnapshotPolicyInfo.new
              autosnapshotpolicyinfo_tmp.deserialize(i)
              @AutoSnapshotPolicies << autosnapshotpolicyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAvailableZoneInfo请求参数结构体
      class DescribeAvailableZoneInfoRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAvailableZoneInfo返回参数结构体
      class DescribeAvailableZoneInfoResponse < TencentCloud::Common::AbstractModel
        # @param RegionZones: 各可用区的资源售卖情况以及支持的存储类型、存储协议等信息
        # @type RegionZones: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegionZones, :RequestId

        def initialize(regionzones=nil, requestid=nil)
          @RegionZones = regionzones
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RegionZones'].nil?
            @RegionZones = []
            params['RegionZones'].each do |i|
              availableregion_tmp = AvailableRegion.new
              availableregion_tmp.deserialize(i)
              @RegionZones << availableregion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBucketList请求参数结构体
      class DescribeBucketListRequest < TencentCloud::Common::AbstractModel
        # @param SrcService: 数据源服务商。COS: 腾讯云COS，OSS: 阿里云OSS，OBS:华为云OBS
        # @type SrcService: String
        # @param SrcSecretId: 数据源账号的SecretId
        # @type SrcSecretId: String
        # @param SrcSecretKey: 数据源账号的SecretKey
        # @type SrcSecretKey: String

        attr_accessor :SrcService, :SrcSecretId, :SrcSecretKey

        def initialize(srcservice=nil, srcsecretid=nil, srcsecretkey=nil)
          @SrcService = srcservice
          @SrcSecretId = srcsecretid
          @SrcSecretKey = srcsecretkey
        end

        def deserialize(params)
          @SrcService = params['SrcService']
          @SrcSecretId = params['SrcSecretId']
          @SrcSecretKey = params['SrcSecretKey']
        end
      end

      # DescribeBucketList返回参数结构体
      class DescribeBucketListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 桶的数量
        # @type TotalCount: Integer
        # @param BucketList: 桶列表
        # @type BucketList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BucketList, :RequestId

        def initialize(totalcount=nil, bucketlist=nil, requestid=nil)
          @TotalCount = totalcount
          @BucketList = bucketlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BucketList'].nil?
            @BucketList = []
            params['BucketList'].each do |i|
              bucketinfo_tmp = BucketInfo.new
              bucketinfo_tmp.deserialize(i)
              @BucketList << bucketinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCfsFileSystemClients请求参数结构体
      class DescribeCfsFileSystemClientsRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统 ID，通过[查询文件系统接口](https://cloud.tencent.com/document/api/582/38170)获取
        # @type FileSystemId: String
        # @param Offset: Offset 分页码，默认为0
        # @type Offset: Integer
        # @param Limit: Limit 页面大小，默认为10，最大值为100
        # @type Limit: Integer

        attr_accessor :FileSystemId, :Offset, :Limit

        def initialize(filesystemid=nil, offset=nil, limit=nil)
          @FileSystemId = filesystemid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeCfsFileSystemClients返回参数结构体
      class DescribeCfsFileSystemClientsResponse < TencentCloud::Common::AbstractModel
        # @param ClientList: 客户端列表
        # @type ClientList: Array
        # @param TotalCount: 文件系统总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClientList, :TotalCount, :RequestId

        def initialize(clientlist=nil, totalcount=nil, requestid=nil)
          @ClientList = clientlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClientList'].nil?
            @ClientList = []
            params['ClientList'].each do |i|
              filesystemclient_tmp = FileSystemClient.new
              filesystemclient_tmp.deserialize(i)
              @ClientList << filesystemclient_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCfsFileSystems请求参数结构体
      class DescribeCfsFileSystemsRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统 ID
        # @type FileSystemId: String
        # @param VpcId: 私有网络（VPC） ID
        # @type VpcId: String
        # @param SubnetId: 子网 ID
        # @type SubnetId: String
        # @param Offset: Offset 分页码,默认0
        # @type Offset: Integer
        # @param Limit: Limit 页面大小，默认10
        # @type Limit: Integer
        # @param CreationToken: 用户自定义名称
        # @type CreationToken: String

        attr_accessor :FileSystemId, :VpcId, :SubnetId, :Offset, :Limit, :CreationToken

        def initialize(filesystemid=nil, vpcid=nil, subnetid=nil, offset=nil, limit=nil, creationtoken=nil)
          @FileSystemId = filesystemid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Offset = offset
          @Limit = limit
          @CreationToken = creationtoken
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CreationToken = params['CreationToken']
        end
      end

      # DescribeCfsFileSystems返回参数结构体
      class DescribeCfsFileSystemsResponse < TencentCloud::Common::AbstractModel
        # @param FileSystems: 文件系统信息
        # @type FileSystems: Array
        # @param TotalCount: 文件系统总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileSystems, :TotalCount, :RequestId

        def initialize(filesystems=nil, totalcount=nil, requestid=nil)
          @FileSystems = filesystems
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FileSystems'].nil?
            @FileSystems = []
            params['FileSystems'].each do |i|
              filesysteminfo_tmp = FileSystemInfo.new
              filesysteminfo_tmp.deserialize(i)
              @FileSystems << filesysteminfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCfsPGroups请求参数结构体
      class DescribeCfsPGroupsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCfsPGroups返回参数结构体
      class DescribeCfsPGroupsResponse < TencentCloud::Common::AbstractModel
        # @param PGroupList: 权限组信息列表
        # @type PGroupList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PGroupList, :RequestId

        def initialize(pgrouplist=nil, requestid=nil)
          @PGroupList = pgrouplist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PGroupList'].nil?
            @PGroupList = []
            params['PGroupList'].each do |i|
              pgroupinfo_tmp = PGroupInfo.new
              pgroupinfo_tmp.deserialize(i)
              @PGroupList << pgroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCfsRules请求参数结构体
      class DescribeCfsRulesRequest < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID，可通过[DescribeCfsPGroups接口](https://cloud.tencent.com/document/api/582/38157)获取
        # @type PGroupId: String

        attr_accessor :PGroupId

        def initialize(pgroupid=nil)
          @PGroupId = pgroupid
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
        end
      end

      # DescribeCfsRules返回参数结构体
      class DescribeCfsRulesResponse < TencentCloud::Common::AbstractModel
        # @param RuleList: 权限组规则列表
        # @type RuleList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleList, :RequestId

        def initialize(rulelist=nil, requestid=nil)
          @RuleList = rulelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuleList'].nil?
            @RuleList = []
            params['RuleList'].each do |i|
              pgroupruleinfo_tmp = PGroupRuleInfo.new
              pgroupruleinfo_tmp.deserialize(i)
              @RuleList << pgroupruleinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCfsServiceStatus请求参数结构体
      class DescribeCfsServiceStatusRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCfsServiceStatus返回参数结构体
      class DescribeCfsServiceStatusResponse < TencentCloud::Common::AbstractModel
        # @param CfsServiceStatus: 该用户当前 CFS 服务的状态，none 为未开通，creating 为开通中，created 为已开通
        # @type CfsServiceStatus: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CfsServiceStatus, :RequestId

        def initialize(cfsservicestatus=nil, requestid=nil)
          @CfsServiceStatus = cfsservicestatus
          @RequestId = requestid
        end

        def deserialize(params)
          @CfsServiceStatus = params['CfsServiceStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCfsSnapshotOverview请求参数结构体
      class DescribeCfsSnapshotOverviewRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCfsSnapshotOverview返回参数结构体
      class DescribeCfsSnapshotOverviewResponse < TencentCloud::Common::AbstractModel
        # @param StatisticsList: 统计信息
        # @type StatisticsList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StatisticsList, :RequestId

        def initialize(statisticslist=nil, requestid=nil)
          @StatisticsList = statisticslist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['StatisticsList'].nil?
            @StatisticsList = []
            params['StatisticsList'].each do |i|
              snapshotstatistics_tmp = SnapshotStatistics.new
              snapshotstatistics_tmp.deserialize(i)
              @StatisticsList << snapshotstatistics_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCfsSnapshots请求参数结构体
      class DescribeCfsSnapshotsRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param SnapshotId: 快照ID
        # @type SnapshotId: String
        # @param Offset: 分页起始位置，默认为0
        # @type Offset: Integer
        # @param Limit: 页面长度，默认为20
        # @type Limit: Integer
        # @param Filters: 过滤条件。
        # <br>SnapshotId - Array of String - 是否必填：否 -（过滤条件）按快照ID过滤。
        # <br>SnapshotName - Array of String - 是否必填：否 -（过滤条件）按照快照名称过滤。
        # <br>FileSystemId - Array of String - 是否必填：否 -（过滤条件）按文件系统ID过滤。
        # <br>FsName - Array of String - 是否必填：否 -（过滤条件）按文件系统名过滤。
        # <br>Status - Array of String - 是否必填：否 -（过滤条件）按照快照状态过滤
        # (creating：表示创建中 | available：表示可用。| rollbacking：表示回滚。| rollbacking_new：表示由快照创建新文件系统中| create-failed 创建失败）
        # <br>tag-key - Array of String - 是否必填：否 -（过滤条件）按照标签键进行过滤。
        # <br>tag:tag-key - Array of String - 是否必填：否 -（过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。
        # @type Filters: Array
        # @param OrderField: 按创建时间排序取值
        # @type OrderField: String
        # @param Order: 排序 升序或者降序
        # @type Order: String

        attr_accessor :FileSystemId, :SnapshotId, :Offset, :Limit, :Filters, :OrderField, :Order

        def initialize(filesystemid=nil, snapshotid=nil, offset=nil, limit=nil, filters=nil, orderfield=nil, order=nil)
          @FileSystemId = filesystemid
          @SnapshotId = snapshotid
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @OrderField = orderfield
          @Order = order
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @SnapshotId = params['SnapshotId']
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
          @OrderField = params['OrderField']
          @Order = params['Order']
        end
      end

      # DescribeCfsSnapshots返回参数结构体
      class DescribeCfsSnapshotsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总个数
        # @type TotalCount: Integer
        # @param Snapshots: 快照信息描述
        # @type Snapshots: Array
        # @param TotalSize: 快照列表快照汇总
        # @type TotalSize: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Snapshots, :TotalSize, :RequestId

        def initialize(totalcount=nil, snapshots=nil, totalsize=nil, requestid=nil)
          @TotalCount = totalcount
          @Snapshots = snapshots
          @TotalSize = totalsize
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Snapshots'].nil?
            @Snapshots = []
            params['Snapshots'].each do |i|
              snapshotinfo_tmp = SnapshotInfo.new
              snapshotinfo_tmp.deserialize(i)
              @Snapshots << snapshotinfo_tmp
            end
          end
          @TotalSize = params['TotalSize']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMigrationTasks请求参数结构体
      class DescribeMigrationTasksRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页单页限制数目，默认值为20，最大值100。
        # @type Limit: Integer
        # @param Filters: <br><li> taskId按照【迁移任务id】进行过滤。类型：String必选：否<br></li><br><li>  taskName按照【迁移任务名字】进行模糊搜索过滤。类型：String必选：否每次请求的Filters的上限为10，Filter.Values的上限为100。</li>
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Filters

        def initialize(offset=nil, limit=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
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

      # DescribeMigrationTasks返回参数结构体
      class DescribeMigrationTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 迁移任务的总数量
        # @type TotalCount: Integer
        # @param MigrationTasks: 迁移任务详情
        # @type MigrationTasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :MigrationTasks, :RequestId

        def initialize(totalcount=nil, migrationtasks=nil, requestid=nil)
          @TotalCount = totalcount
          @MigrationTasks = migrationtasks
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['MigrationTasks'].nil?
            @MigrationTasks = []
            params['MigrationTasks'].each do |i|
              migrationtaskinfo_tmp = MigrationTaskInfo.new
              migrationtaskinfo_tmp.deserialize(i)
              @MigrationTasks << migrationtaskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMountTargets请求参数结构体
      class DescribeMountTargetsRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统 ID，[查询文件系统列表](https://cloud.tencent.com/document/api/582/38170)可以获得id
        # @type FileSystemId: String

        attr_accessor :FileSystemId

        def initialize(filesystemid=nil)
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
        end
      end

      # DescribeMountTargets返回参数结构体
      class DescribeMountTargetsResponse < TencentCloud::Common::AbstractModel
        # @param MountTargets: 挂载点详情
        # @type MountTargets: Array
        # @param NumberOfMountTargets: 挂载点数量
        # @type NumberOfMountTargets: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MountTargets, :NumberOfMountTargets, :RequestId

        def initialize(mounttargets=nil, numberofmounttargets=nil, requestid=nil)
          @MountTargets = mounttargets
          @NumberOfMountTargets = numberofmounttargets
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MountTargets'].nil?
            @MountTargets = []
            params['MountTargets'].each do |i|
              mountinfo_tmp = MountInfo.new
              mountinfo_tmp.deserialize(i)
              @MountTargets << mountinfo_tmp
            end
          end
          @NumberOfMountTargets = params['NumberOfMountTargets']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSnapshotOperationLogs请求参数结构体
      class DescribeSnapshotOperationLogsRequest < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 快照ID，可以通过[DescribeCfsSnapshots](https://cloud.tencent.com/document/api/582/80206) 查询获取
        # @type SnapshotId: String
        # @param StartTime: 起始时间，格式“YYYY-MM-DD hh:mm:ss”
        # @type StartTime: String
        # @param EndTime: 结束时间，格式“YYYY-MM-DD hh:mm:ss”
        # @type EndTime: String

        attr_accessor :SnapshotId, :StartTime, :EndTime

        def initialize(snapshotid=nil, starttime=nil, endtime=nil)
          @SnapshotId = snapshotid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeSnapshotOperationLogs返回参数结构体
      class DescribeSnapshotOperationLogsResponse < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 快照ID
        # @type SnapshotId: String
        # @param SnapshotOperates: 操作日志
        # @type SnapshotOperates: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SnapshotId, :SnapshotOperates, :RequestId

        def initialize(snapshotid=nil, snapshotoperates=nil, requestid=nil)
          @SnapshotId = snapshotid
          @SnapshotOperates = snapshotoperates
          @RequestId = requestid
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
          unless params['SnapshotOperates'].nil?
            @SnapshotOperates = []
            params['SnapshotOperates'].each do |i|
              snapshotoperatelog_tmp = SnapshotOperateLog.new
              snapshotoperatelog_tmp.deserialize(i)
              @SnapshotOperates << snapshotoperatelog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserQuota请求参数结构体
      class DescribeUserQuotaRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统 ID,通过[查询文件系统列表](https://cloud.tencent.com/document/api/582/38170)获取
        # @type FileSystemId: String
        # @param Filters: 过滤条件。
        # UserType - Array of String - 是否必填：否 -（过滤条件）按配额类型过滤。(Uid|Gid|Dir，分别对应用户，用户组，目录 )
        # UserId- Array of String - 是否必填：否 -（过滤条件）按用户id过滤。
        # @type Filters: Array
        # @param Offset: Offset 分页码，默认值0
        # @type Offset: Integer
        # @param Limit: Limit 页面大小，可填范围为大于0的整数，默认值是10
        # @type Limit: Integer

        attr_accessor :FileSystemId, :Filters, :Offset, :Limit

        def initialize(filesystemid=nil, filters=nil, offset=nil, limit=nil)
          @FileSystemId = filesystemid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
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

      # DescribeUserQuota返回参数结构体
      class DescribeUserQuotaResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: UserQuota条目总数
        # @type TotalCount: Integer
        # @param UserQuotaInfo: UserQuota条目
        # @type UserQuotaInfo: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :UserQuotaInfo, :RequestId

        def initialize(totalcount=nil, userquotainfo=nil, requestid=nil)
          @TotalCount = totalcount
          @UserQuotaInfo = userquotainfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['UserQuotaInfo'].nil?
            @UserQuotaInfo = []
            params['UserQuotaInfo'].each do |i|
              userquota_tmp = UserQuota.new
              userquota_tmp.deserialize(i)
              @UserQuotaInfo << userquota_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 绑定快照策略的文件系统信息
      class FileSystemByPolicy < TencentCloud::Common::AbstractModel
        # @param CreationToken: 文件系统名称
        # @type CreationToken: String
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param SizeByte: 文件系统大小，单位Byte
        # @type SizeByte: Integer
        # @param StorageType: 存储类型，HP：通用性能型；SD：通用标准型；TP:turbo性能型；TB：turbo标准型；THP：吞吐型
        # @type StorageType: String
        # @param TotalSnapshotSize: 快照总大小，单位GiB
        # @type TotalSnapshotSize: Integer
        # @param CreationTime: 文件系统创建时间
        # @type CreationTime: String
        # @param ZoneId: 文件系统所在区ID
        # @type ZoneId: Integer

        attr_accessor :CreationToken, :FileSystemId, :SizeByte, :StorageType, :TotalSnapshotSize, :CreationTime, :ZoneId

        def initialize(creationtoken=nil, filesystemid=nil, sizebyte=nil, storagetype=nil, totalsnapshotsize=nil, creationtime=nil, zoneid=nil)
          @CreationToken = creationtoken
          @FileSystemId = filesystemid
          @SizeByte = sizebyte
          @StorageType = storagetype
          @TotalSnapshotSize = totalsnapshotsize
          @CreationTime = creationtime
          @ZoneId = zoneid
        end

        def deserialize(params)
          @CreationToken = params['CreationToken']
          @FileSystemId = params['FileSystemId']
          @SizeByte = params['SizeByte']
          @StorageType = params['StorageType']
          @TotalSnapshotSize = params['TotalSnapshotSize']
          @CreationTime = params['CreationTime']
          @ZoneId = params['ZoneId']
        end
      end

      # 文件系统客户端信息
      class FileSystemClient < TencentCloud::Common::AbstractModel
        # @param CfsVip: 文件系统IP地址
        # @type CfsVip: String
        # @param ClientIp: 客户端IP地址
        # @type ClientIp: String
        # @param VpcId: 文件系统所属VPCID
        # @type VpcId: String
        # @param Zone: 可用区名称，例如ap-beijing-1，参考[简介](https://cloud.tencent.com/document/api/582/38144)文档中的地域与可用区列表
        # @type Zone: String
        # @param ZoneName: 可用区中文名称
        # @type ZoneName: String
        # @param MountDirectory: 该文件系统被挂载到客户端上的路径信息
        # @type MountDirectory: String

        attr_accessor :CfsVip, :ClientIp, :VpcId, :Zone, :ZoneName, :MountDirectory

        def initialize(cfsvip=nil, clientip=nil, vpcid=nil, zone=nil, zonename=nil, mountdirectory=nil)
          @CfsVip = cfsvip
          @ClientIp = clientip
          @VpcId = vpcid
          @Zone = zone
          @ZoneName = zonename
          @MountDirectory = mountdirectory
        end

        def deserialize(params)
          @CfsVip = params['CfsVip']
          @ClientIp = params['ClientIp']
          @VpcId = params['VpcId']
          @Zone = params['Zone']
          @ZoneName = params['ZoneName']
          @MountDirectory = params['MountDirectory']
        end
      end

      # 文件系统基本信息
      class FileSystemInfo < TencentCloud::Common::AbstractModel
        # @param CreationTime: 创建时间
        # @type CreationTime: String
        # @param CreationToken: 用户自定义名称
        # @type CreationToken: String
        # @param FileSystemId: 文件系统 ID
        # @type FileSystemId: String
        # @param LifeCycleState: 文件系统状态。取值范围：
        # - creating:创建中
        # - mounting:挂载中
        # - create_failed:创建失败
        # - available:可使用
        # - unserviced:停服中
        # - upgrading:升级中
        # @type LifeCycleState: String
        # @param SizeByte: 文件系统已使用容量。单位：Byte
        # @type SizeByte: Integer
        # @param SizeLimit: 文件系统空间限制。单位:GiB
        # @type SizeLimit: Integer
        # @param ZoneId: 区域 ID
        # @type ZoneId: Integer
        # @param Zone: 区域名称
        # @type Zone: String
        # @param Protocol: 文件系统协议类型, 支持 NFS,CIFS,TURBO
        # @type Protocol: String
        # @param StorageType: 存储类型，HP：通用性能型；SD：通用标准型；TP:turbo性能型；TB：turbo标准型；THP：吞吐型
        # @type StorageType: String
        # @param StorageResourcePkg: 文件系统绑定的预付费存储包
        # @type StorageResourcePkg: String
        # @param BandwidthResourcePkg: 文件系统绑定的预付费带宽包（暂未支持）
        # @type BandwidthResourcePkg: String
        # @param PGroup: 文件系统绑定权限组信息
        # @type PGroup: :class:`Tencentcloud::Cfs.v20190719.models.PGroup`
        # @param FsName: 用户自定义名称
        # @type FsName: String
        # @param Encrypted: 文件系统是否加密,true：代表加密，false：非加密
        # @type Encrypted: Boolean
        # @param KmsKeyId: 加密所使用的密钥，可以为密钥的 ID 或者 ARN
        # @type KmsKeyId: String
        # @param AppId: 应用ID
        # @type AppId: Integer
        # @param BandwidthLimit: 文件系统吞吐上限，吞吐上限是根据文件系统当前已使用存储量、绑定的存储资源包以及吞吐资源包一同确定. 单位MiB/s
        # @type BandwidthLimit: Float
        # @param AutoSnapshotPolicyId: 文件系统关联的快照策略
        # @type AutoSnapshotPolicyId: String
        # @param SnapStatus: 文件系统处理快照状态,snapping：快照中，normal：正常状态
        # @type SnapStatus: String
        # @param Capacity: 文件系统容量规格上限
        # 单位:GiB
        # @type Capacity: Integer
        # @param Tags: 文件系统标签列表
        # @type Tags: Array
        # @param TieringState: 文件系统生命周期管理状态
        # NotAvailable：不可用
        # Available:可用
        # @type TieringState: String
        # @param TieringDetail: 分层存储详情
        # @type TieringDetail: :class:`Tencentcloud::Cfs.v20190719.models.TieringDetailInfo`
        # @param AutoScaleUpRule: 文件系统自动扩容策略
        # @type AutoScaleUpRule: :class:`Tencentcloud::Cfs.v20190719.models.AutoScaleUpRule`
        # @param Version: 文件系统版本
        # @type Version: String

        attr_accessor :CreationTime, :CreationToken, :FileSystemId, :LifeCycleState, :SizeByte, :SizeLimit, :ZoneId, :Zone, :Protocol, :StorageType, :StorageResourcePkg, :BandwidthResourcePkg, :PGroup, :FsName, :Encrypted, :KmsKeyId, :AppId, :BandwidthLimit, :AutoSnapshotPolicyId, :SnapStatus, :Capacity, :Tags, :TieringState, :TieringDetail, :AutoScaleUpRule, :Version

        def initialize(creationtime=nil, creationtoken=nil, filesystemid=nil, lifecyclestate=nil, sizebyte=nil, sizelimit=nil, zoneid=nil, zone=nil, protocol=nil, storagetype=nil, storageresourcepkg=nil, bandwidthresourcepkg=nil, pgroup=nil, fsname=nil, encrypted=nil, kmskeyid=nil, appid=nil, bandwidthlimit=nil, autosnapshotpolicyid=nil, snapstatus=nil, capacity=nil, tags=nil, tieringstate=nil, tieringdetail=nil, autoscaleuprule=nil, version=nil)
          @CreationTime = creationtime
          @CreationToken = creationtoken
          @FileSystemId = filesystemid
          @LifeCycleState = lifecyclestate
          @SizeByte = sizebyte
          @SizeLimit = sizelimit
          @ZoneId = zoneid
          @Zone = zone
          @Protocol = protocol
          @StorageType = storagetype
          @StorageResourcePkg = storageresourcepkg
          @BandwidthResourcePkg = bandwidthresourcepkg
          @PGroup = pgroup
          @FsName = fsname
          @Encrypted = encrypted
          @KmsKeyId = kmskeyid
          @AppId = appid
          @BandwidthLimit = bandwidthlimit
          @AutoSnapshotPolicyId = autosnapshotpolicyid
          @SnapStatus = snapstatus
          @Capacity = capacity
          @Tags = tags
          @TieringState = tieringstate
          @TieringDetail = tieringdetail
          @AutoScaleUpRule = autoscaleuprule
          @Version = version
        end

        def deserialize(params)
          @CreationTime = params['CreationTime']
          @CreationToken = params['CreationToken']
          @FileSystemId = params['FileSystemId']
          @LifeCycleState = params['LifeCycleState']
          @SizeByte = params['SizeByte']
          @SizeLimit = params['SizeLimit']
          @ZoneId = params['ZoneId']
          @Zone = params['Zone']
          @Protocol = params['Protocol']
          @StorageType = params['StorageType']
          @StorageResourcePkg = params['StorageResourcePkg']
          @BandwidthResourcePkg = params['BandwidthResourcePkg']
          unless params['PGroup'].nil?
            @PGroup = PGroup.new
            @PGroup.deserialize(params['PGroup'])
          end
          @FsName = params['FsName']
          @Encrypted = params['Encrypted']
          @KmsKeyId = params['KmsKeyId']
          @AppId = params['AppId']
          @BandwidthLimit = params['BandwidthLimit']
          @AutoSnapshotPolicyId = params['AutoSnapshotPolicyId']
          @SnapStatus = params['SnapStatus']
          @Capacity = params['Capacity']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @TieringState = params['TieringState']
          unless params['TieringDetail'].nil?
            @TieringDetail = TieringDetailInfo.new
            @TieringDetail.deserialize(params['TieringDetail'])
          end
          unless params['AutoScaleUpRule'].nil?
            @AutoScaleUpRule = AutoScaleUpRule.new
            @AutoScaleUpRule.deserialize(params['AutoScaleUpRule'])
          end
          @Version = params['Version']
        end
      end

      # 条件过滤
      class Filter < TencentCloud::Common::AbstractModel
        # @param Values: 值
        # @type Values: Array
        # @param Name: 名称
        # @type Name: String

        attr_accessor :Values, :Name

        def initialize(values=nil, name=nil)
          @Values = values
          @Name = name
        end

        def deserialize(params)
          @Values = params['Values']
          @Name = params['Name']
        end
      end

      # CFS数据迁移任务信息
      class MigrationTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskName: 迁移任务名称
        # @type TaskName: String
        # @param TaskId: 迁移任务id
        # @type TaskId: String
        # @param MigrationType: 迁移方式标志位，默认为0。0: 桶迁移；1: 清单迁移
        # @type MigrationType: Integer
        # @param MigrationMode: 迁移模式，默认为0。0: 全量迁移
        # @type MigrationMode: Integer
        # @param BucketName: 数据源桶名称
        # @type BucketName: String
        # @param BucketRegion: 数据源桶地域
        # @type BucketRegion: String
        # @param BucketAddress: 数据源桶地址
        # @type BucketAddress: String
        # @param ListAddress: 清单地址
        # @type ListAddress: String
        # @param FsName: 文件系统实例名称
        # @type FsName: String
        # @param FileSystemId: 文件系统实例Id
        # @type FileSystemId: String
        # @param FsPath: 文件系统路径
        # @type FsPath: String
        # @param CoverType: 同名文件迁移时覆盖策略，默认为0。0: 最后修改时间优先；1: 全覆盖；2: 不覆盖
        # @type CoverType: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param EndTime: 完成/终止时间
        # @type EndTime: Integer
        # @param Status: 迁移状态。0: 已完成；1: 进行中；2: 已终止
        # @type Status: Integer
        # @param FileTotalCount: 文件数量
        # @type FileTotalCount: Integer
        # @param FileMigratedCount: 已迁移文件数量
        # @type FileMigratedCount: Integer
        # @param FileFailedCount: 迁移失败文件数量
        # @type FileFailedCount: Integer
        # @param FileTotalSize: 文件容量，单位Byte
        # @type FileTotalSize: Integer
        # @param FileMigratedSize: 已迁移文件容量，单位Byte
        # @type FileMigratedSize: Integer
        # @param FileFailedSize: 迁移失败文件容量，单位Byte
        # @type FileFailedSize: Integer
        # @param FileTotalList: 全部清单
        # @type FileTotalList: String
        # @param FileCompletedList: 已完成文件清单
        # @type FileCompletedList: String
        # @param FileFailedList: 失败文件清单
        # @type FileFailedList: String
        # @param BucketPath: 源桶路径
        # @type BucketPath: String
        # @param Direction: 迁移方向。0: 对象存储迁移至文件系统，1: 文件系统迁移至对象存储。默认 0
        # @type Direction: Integer

        attr_accessor :TaskName, :TaskId, :MigrationType, :MigrationMode, :BucketName, :BucketRegion, :BucketAddress, :ListAddress, :FsName, :FileSystemId, :FsPath, :CoverType, :CreateTime, :EndTime, :Status, :FileTotalCount, :FileMigratedCount, :FileFailedCount, :FileTotalSize, :FileMigratedSize, :FileFailedSize, :FileTotalList, :FileCompletedList, :FileFailedList, :BucketPath, :Direction

        def initialize(taskname=nil, taskid=nil, migrationtype=nil, migrationmode=nil, bucketname=nil, bucketregion=nil, bucketaddress=nil, listaddress=nil, fsname=nil, filesystemid=nil, fspath=nil, covertype=nil, createtime=nil, endtime=nil, status=nil, filetotalcount=nil, filemigratedcount=nil, filefailedcount=nil, filetotalsize=nil, filemigratedsize=nil, filefailedsize=nil, filetotallist=nil, filecompletedlist=nil, filefailedlist=nil, bucketpath=nil, direction=nil)
          @TaskName = taskname
          @TaskId = taskid
          @MigrationType = migrationtype
          @MigrationMode = migrationmode
          @BucketName = bucketname
          @BucketRegion = bucketregion
          @BucketAddress = bucketaddress
          @ListAddress = listaddress
          @FsName = fsname
          @FileSystemId = filesystemid
          @FsPath = fspath
          @CoverType = covertype
          @CreateTime = createtime
          @EndTime = endtime
          @Status = status
          @FileTotalCount = filetotalcount
          @FileMigratedCount = filemigratedcount
          @FileFailedCount = filefailedcount
          @FileTotalSize = filetotalsize
          @FileMigratedSize = filemigratedsize
          @FileFailedSize = filefailedsize
          @FileTotalList = filetotallist
          @FileCompletedList = filecompletedlist
          @FileFailedList = filefailedlist
          @BucketPath = bucketpath
          @Direction = direction
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @TaskId = params['TaskId']
          @MigrationType = params['MigrationType']
          @MigrationMode = params['MigrationMode']
          @BucketName = params['BucketName']
          @BucketRegion = params['BucketRegion']
          @BucketAddress = params['BucketAddress']
          @ListAddress = params['ListAddress']
          @FsName = params['FsName']
          @FileSystemId = params['FileSystemId']
          @FsPath = params['FsPath']
          @CoverType = params['CoverType']
          @CreateTime = params['CreateTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @FileTotalCount = params['FileTotalCount']
          @FileMigratedCount = params['FileMigratedCount']
          @FileFailedCount = params['FileFailedCount']
          @FileTotalSize = params['FileTotalSize']
          @FileMigratedSize = params['FileMigratedSize']
          @FileFailedSize = params['FileFailedSize']
          @FileTotalList = params['FileTotalList']
          @FileCompletedList = params['FileCompletedList']
          @FileFailedList = params['FileFailedList']
          @BucketPath = params['BucketPath']
          @Direction = params['Direction']
        end
      end

      # ModifyFileSystemAutoScaleUpRule请求参数结构体
      class ModifyFileSystemAutoScaleUpRuleRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统ID，通过查询文件系统列表获取；[DescribeCfsFileSystems](https://cloud.tencent.com/document/product/582/38170)
        # @type FileSystemId: String
        # @param ScaleUpThreshold: 扩容阈值，范围[10-90]
        # @type ScaleUpThreshold: Integer
        # @param TargetThreshold: 扩容后目标阈值,范围[10-90],该值要小于ScaleUpThreshold
        # @type TargetThreshold: Integer
        # @param Status: 规则状态0:关闭，1 开启；不传保留原状态
        # @type Status: Integer

        attr_accessor :FileSystemId, :ScaleUpThreshold, :TargetThreshold, :Status

        def initialize(filesystemid=nil, scaleupthreshold=nil, targetthreshold=nil, status=nil)
          @FileSystemId = filesystemid
          @ScaleUpThreshold = scaleupthreshold
          @TargetThreshold = targetthreshold
          @Status = status
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @ScaleUpThreshold = params['ScaleUpThreshold']
          @TargetThreshold = params['TargetThreshold']
          @Status = params['Status']
        end
      end

      # ModifyFileSystemAutoScaleUpRule返回参数结构体
      class ModifyFileSystemAutoScaleUpRuleResponse < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统id
        # @type FileSystemId: String
        # @param Status: 规则状态0:关闭，1 开启
        # @type Status: Integer
        # @param ScaleUpThreshold: 扩容阈值,范围[10-90]
        # @type ScaleUpThreshold: Integer
        # @param TargetThreshold: 扩容后达到阈值,范围[10-90]
        # @type TargetThreshold: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileSystemId, :Status, :ScaleUpThreshold, :TargetThreshold, :RequestId

        def initialize(filesystemid=nil, status=nil, scaleupthreshold=nil, targetthreshold=nil, requestid=nil)
          @FileSystemId = filesystemid
          @Status = status
          @ScaleUpThreshold = scaleupthreshold
          @TargetThreshold = targetthreshold
          @RequestId = requestid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @Status = params['Status']
          @ScaleUpThreshold = params['ScaleUpThreshold']
          @TargetThreshold = params['TargetThreshold']
          @RequestId = params['RequestId']
        end
      end

      # 挂载点信息
      class MountInfo < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统 ID
        # @type FileSystemId: String
        # @param MountTargetId: 挂载点 ID
        # @type MountTargetId: String
        # @param IpAddress: 挂载点 IP
        # @type IpAddress: String
        # @param FSID: 挂载根目录
        # @type FSID: String
        # @param LifeCycleState: 挂载点状态，包括creating：创建中；available：运行中；
        # deleting：删除中；
        # create_failed： 创建失败
        # @type LifeCycleState: String
        # @param NetworkInterface: 网络类型，包括VPC,CCN
        # @type NetworkInterface: String
        # @param VpcId: 私有网络 ID
        # @type VpcId: String
        # @param VpcName: 私有网络名称
        # @type VpcName: String
        # @param SubnetId: 子网 Id
        # @type SubnetId: String
        # @param SubnetName: 子网名称
        # @type SubnetName: String
        # @param CcnID: CFS Turbo使用的云联网ID
        # @type CcnID: String
        # @param CidrBlock: 云联网中CFS Turbo使用的网段
        # @type CidrBlock: String

        attr_accessor :FileSystemId, :MountTargetId, :IpAddress, :FSID, :LifeCycleState, :NetworkInterface, :VpcId, :VpcName, :SubnetId, :SubnetName, :CcnID, :CidrBlock

        def initialize(filesystemid=nil, mounttargetid=nil, ipaddress=nil, fsid=nil, lifecyclestate=nil, networkinterface=nil, vpcid=nil, vpcname=nil, subnetid=nil, subnetname=nil, ccnid=nil, cidrblock=nil)
          @FileSystemId = filesystemid
          @MountTargetId = mounttargetid
          @IpAddress = ipaddress
          @FSID = fsid
          @LifeCycleState = lifecyclestate
          @NetworkInterface = networkinterface
          @VpcId = vpcid
          @VpcName = vpcname
          @SubnetId = subnetid
          @SubnetName = subnetname
          @CcnID = ccnid
          @CidrBlock = cidrblock
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @MountTargetId = params['MountTargetId']
          @IpAddress = params['IpAddress']
          @FSID = params['FSID']
          @LifeCycleState = params['LifeCycleState']
          @NetworkInterface = params['NetworkInterface']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
          @CcnID = params['CcnID']
          @CidrBlock = params['CidrBlock']
        end
      end

      # 文件系统绑定权限组信息
      class PGroup < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组ID
        # @type PGroupId: String
        # @param Name: 权限组名称
        # @type Name: String

        attr_accessor :PGroupId, :Name

        def initialize(pgroupid=nil, name=nil)
          @PGroupId = pgroupid
          @Name = name
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @Name = params['Name']
        end
      end

      # 权限组数组
      class PGroupInfo < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组ID
        # @type PGroupId: String
        # @param Name: 权限组名称
        # @type Name: String
        # @param DescInfo: 描述信息
        # @type DescInfo: String
        # @param CDate: 创建时间
        # @type CDate: String
        # @param BindCfsNum: 关联文件系统个数
        # @type BindCfsNum: Integer

        attr_accessor :PGroupId, :Name, :DescInfo, :CDate, :BindCfsNum

        def initialize(pgroupid=nil, name=nil, descinfo=nil, cdate=nil, bindcfsnum=nil)
          @PGroupId = pgroupid
          @Name = name
          @DescInfo = descinfo
          @CDate = cdate
          @BindCfsNum = bindcfsnum
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @Name = params['Name']
          @DescInfo = params['DescInfo']
          @CDate = params['CDate']
          @BindCfsNum = params['BindCfsNum']
        end
      end

      # 权限组规则列表
      class PGroupRuleInfo < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param AuthClientIp: 允许访问的客户端IP
        # @type AuthClientIp: String
        # @param RWPermission: 读写权限, ro为只读，rw为读写
        # @type RWPermission: String
        # @param UserPermission: all_squash：所有访问用户（含 root 用户）都会被映射为匿名用户或用户组。
        # no_all_squash：所有访问用户（含 root 用户）均保持原有的 UID/GID 信息。
        # root_squash：将来访的 root 用户映射为匿名用户或用户组，非 root 用户保持原有的 UID/GID 信息。
        # no_root_squash：与 no_all_squash 效果一致，所有访问用户（含 root 用户）均保持原有的 UID/GID 信息
        # @type UserPermission: String
        # @param Priority: 规则优先级，1-100。 其中 1 为最高，100为最低
        # @type Priority: Integer

        attr_accessor :RuleId, :AuthClientIp, :RWPermission, :UserPermission, :Priority

        def initialize(ruleid=nil, authclientip=nil, rwpermission=nil, userpermission=nil, priority=nil)
          @RuleId = ruleid
          @AuthClientIp = authclientip
          @RWPermission = rwpermission
          @UserPermission = userpermission
          @Priority = priority
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @AuthClientIp = params['AuthClientIp']
          @RWPermission = params['RWPermission']
          @UserPermission = params['UserPermission']
          @Priority = params['Priority']
        end
      end

      # ScaleUpFileSystem请求参数结构体
      class ScaleUpFileSystemRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统Id,该参数通过查询文件系统列表接口获取
        # @type FileSystemId: String
        # @param TargetCapacity: 扩容的目标容量（单位GiB）
        # @type TargetCapacity: Integer

        attr_accessor :FileSystemId, :TargetCapacity

        def initialize(filesystemid=nil, targetcapacity=nil)
          @FileSystemId = filesystemid
          @TargetCapacity = targetcapacity
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @TargetCapacity = params['TargetCapacity']
        end
      end

      # ScaleUpFileSystem返回参数结构体
      class ScaleUpFileSystemResponse < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统Id
        # @type FileSystemId: String
        # @param TargetCapacity: 扩容的目标容量（单位GiB）
        # @type TargetCapacity: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileSystemId, :TargetCapacity, :RequestId

        def initialize(filesystemid=nil, targetcapacity=nil, requestid=nil)
          @FileSystemId = filesystemid
          @TargetCapacity = targetcapacity
          @RequestId = requestid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @TargetCapacity = params['TargetCapacity']
          @RequestId = params['RequestId']
        end
      end

      # SetUserQuota请求参数结构体
      class SetUserQuotaRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统 ID,通过[查询文件系统列表](https://cloud.tencent.com/document/api/582/38170)获取
        # @type FileSystemId: String
        # @param UserType: 指定配额类型，包括Uid、Gid，Dir，分别代表用户配额，用户组配额，目录配额
        # @type UserType: String
        # @param UserId: UID/GID信息
        # @type UserId: String
        # @param CapacityHardLimit: 容量硬限制，单位GiB。设置范围10-10000000。
        # @type CapacityHardLimit: Integer
        # @param FileHardLimit: 文件硬限制，单位个。设置范围1000-100000000
        # @type FileHardLimit: Integer
        # @param DirectoryPath: 需设置目录配额的目录绝对路径，不同目录不可存在包含关系
        # @type DirectoryPath: String

        attr_accessor :FileSystemId, :UserType, :UserId, :CapacityHardLimit, :FileHardLimit, :DirectoryPath

        def initialize(filesystemid=nil, usertype=nil, userid=nil, capacityhardlimit=nil, filehardlimit=nil, directorypath=nil)
          @FileSystemId = filesystemid
          @UserType = usertype
          @UserId = userid
          @CapacityHardLimit = capacityhardlimit
          @FileHardLimit = filehardlimit
          @DirectoryPath = directorypath
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @UserType = params['UserType']
          @UserId = params['UserId']
          @CapacityHardLimit = params['CapacityHardLimit']
          @FileHardLimit = params['FileHardLimit']
          @DirectoryPath = params['DirectoryPath']
        end
      end

      # SetUserQuota返回参数结构体
      class SetUserQuotaResponse < TencentCloud::Common::AbstractModel
        # @param UserId: UID/GID信息
        # @type UserId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserId, :RequestId

        def initialize(userid=nil, requestid=nil)
          @UserId = userid
          @RequestId = requestid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @RequestId = params['RequestId']
        end
      end

      # SignUpCfsService请求参数结构体
      class SignUpCfsServiceRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # SignUpCfsService返回参数结构体
      class SignUpCfsServiceResponse < TencentCloud::Common::AbstractModel
        # @param CfsServiceStatus: 该用户当前 CFS 服务的状态，creating 是开通中，created 是已开通
        # @type CfsServiceStatus: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CfsServiceStatus, :RequestId

        def initialize(cfsservicestatus=nil, requestid=nil)
          @CfsServiceStatus = cfsservicestatus
          @RequestId = requestid
        end

        def deserialize(params)
          @CfsServiceStatus = params['CfsServiceStatus']
          @RequestId = params['RequestId']
        end
      end

      # 快照信息
      class SnapshotInfo < TencentCloud::Common::AbstractModel
        # @param CreationTime: 创建快照时间
        # @type CreationTime: String
        # @param SnapshotName: 快照名称
        # @type SnapshotName: String
        # @param SnapshotId: 快照ID
        # @type SnapshotId: String
        # @param Status: 快照状态，createing-创建中；available-运行中；deleting-删除中；rollbacking-new 创建新文件系统中；create-failed 创建失败
        # @type Status: String
        # @param RegionName: 地域名称
        # @type RegionName: String
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param Size: 快照大小
        # @type Size: Integer
        # @param AliveDay: 保留时长天
        # @type AliveDay: Integer
        # @param Percent: 快照进度百分比，1表示1% 范围1-100
        # @type Percent: Integer
        # @param AppId: 账号ID
        # @type AppId: Integer
        # @param DeleteTime: 快照删除时间
        # @type DeleteTime: String
        # @param FsName: 文件系统名称
        # @type FsName: String
        # @param Tags: 快照标签
        # @type Tags: Array
        # @param SnapshotType: 快照类型, general为通用系列快照，turbo为Turbo系列快照
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotType: String
        # @param SnapshotTime: 实际快照时间，反应快照对应文件系统某个时刻的数据。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotTime: String

        attr_accessor :CreationTime, :SnapshotName, :SnapshotId, :Status, :RegionName, :FileSystemId, :Size, :AliveDay, :Percent, :AppId, :DeleteTime, :FsName, :Tags, :SnapshotType, :SnapshotTime

        def initialize(creationtime=nil, snapshotname=nil, snapshotid=nil, status=nil, regionname=nil, filesystemid=nil, size=nil, aliveday=nil, percent=nil, appid=nil, deletetime=nil, fsname=nil, tags=nil, snapshottype=nil, snapshottime=nil)
          @CreationTime = creationtime
          @SnapshotName = snapshotname
          @SnapshotId = snapshotid
          @Status = status
          @RegionName = regionname
          @FileSystemId = filesystemid
          @Size = size
          @AliveDay = aliveday
          @Percent = percent
          @AppId = appid
          @DeleteTime = deletetime
          @FsName = fsname
          @Tags = tags
          @SnapshotType = snapshottype
          @SnapshotTime = snapshottime
        end

        def deserialize(params)
          @CreationTime = params['CreationTime']
          @SnapshotName = params['SnapshotName']
          @SnapshotId = params['SnapshotId']
          @Status = params['Status']
          @RegionName = params['RegionName']
          @FileSystemId = params['FileSystemId']
          @Size = params['Size']
          @AliveDay = params['AliveDay']
          @Percent = params['Percent']
          @AppId = params['AppId']
          @DeleteTime = params['DeleteTime']
          @FsName = params['FsName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @SnapshotType = params['SnapshotType']
          @SnapshotTime = params['SnapshotTime']
        end
      end

      # 快照操作日志
      class SnapshotOperateLog < TencentCloud::Common::AbstractModel
        # @param Action: 操作类型
        # CreateCfsSnapshot：创建快照
        # DeleteCfsSnapshot：删除快照
        # CreateCfsFileSystem：创建文件系统
        # UpdateCfsSnapshotAttribute：更新快照
        # @type Action: String
        # @param ActionTime: 操作时间
        # @type ActionTime: String
        # @param ActionName: 操作名称
        # CreateCfsSnapshot
        # DeleteCfsSnapshot
        # CreateCfsFileSystem
        # UpdateCfsSnapshotAttribute
        # @type ActionName: String
        # @param Operator: 操作者uin
        # @type Operator: String
        # @param Result: 1-任务进行中；2-任务成功；3-任务失败
        # @type Result: Integer

        attr_accessor :Action, :ActionTime, :ActionName, :Operator, :Result

        def initialize(action=nil, actiontime=nil, actionname=nil, operator=nil, result=nil)
          @Action = action
          @ActionTime = actiontime
          @ActionName = actionname
          @Operator = operator
          @Result = result
        end

        def deserialize(params)
          @Action = params['Action']
          @ActionTime = params['ActionTime']
          @ActionName = params['ActionName']
          @Operator = params['Operator']
          @Result = params['Result']
        end
      end

      # 文件系统快照统计
      class SnapshotStatistics < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # @type Region: String
        # @param SnapshotNumber: 快照总个数
        # @type SnapshotNumber: Integer
        # @param SnapshotSize: 快照总容量，单位是MiB
        # @type SnapshotSize: Integer

        attr_accessor :Region, :SnapshotNumber, :SnapshotSize

        def initialize(region=nil, snapshotnumber=nil, snapshotsize=nil)
          @Region = region
          @SnapshotNumber = snapshotnumber
          @SnapshotSize = snapshotsize
        end

        def deserialize(params)
          @Region = params['Region']
          @SnapshotNumber = params['SnapshotNumber']
          @SnapshotSize = params['SnapshotSize']
        end
      end

      # StopMigrationTask请求参数结构体
      class StopMigrationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 迁移任务名称
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # StopMigrationTask返回参数结构体
      class StopMigrationTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 迁移任务Id
        # @type TaskId: String
        # @param Status: 迁移状态。0: 已完成；1: 进行中；2: 已终止
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Status, :RequestId

        def initialize(taskid=nil, status=nil, requestid=nil)
          @TaskId = taskid
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # Tag信息单元
      class TagInfo < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue

        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 分层存储详细信息
      class TieringDetailInfo < TencentCloud::Common::AbstractModel
        # @param TieringSizeInBytes: 低频存储容量
        # @type TieringSizeInBytes: Integer
        # @param SecondaryTieringSizeInBytes: 冷存储容量
        # @type SecondaryTieringSizeInBytes: Integer

        attr_accessor :TieringSizeInBytes, :SecondaryTieringSizeInBytes

        def initialize(tieringsizeinbytes=nil, secondarytieringsizeinbytes=nil)
          @TieringSizeInBytes = tieringsizeinbytes
          @SecondaryTieringSizeInBytes = secondarytieringsizeinbytes
        end

        def deserialize(params)
          @TieringSizeInBytes = params['TieringSizeInBytes']
          @SecondaryTieringSizeInBytes = params['SecondaryTieringSizeInBytes']
        end
      end

      # UnbindAutoSnapshotPolicy请求参数结构体
      class UnbindAutoSnapshotPolicyRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemIds: 需要解绑的文件系统ID列表，用"," 分割，文件系统ID，通过查询文件系统列表获取；[DescribeCfsFileSystems](https://cloud.tencent.com/document/product/582/38170)
        # @type FileSystemIds: String
        # @param AutoSnapshotPolicyId: 解绑的快照策略ID，可以通过[DescribeAutoSnapshotPolicies](https://cloud.tencent.com/document/api/582/80208) 查询获取
        # @type AutoSnapshotPolicyId: String

        attr_accessor :FileSystemIds, :AutoSnapshotPolicyId

        def initialize(filesystemids=nil, autosnapshotpolicyid=nil)
          @FileSystemIds = filesystemids
          @AutoSnapshotPolicyId = autosnapshotpolicyid
        end

        def deserialize(params)
          @FileSystemIds = params['FileSystemIds']
          @AutoSnapshotPolicyId = params['AutoSnapshotPolicyId']
        end
      end

      # UnbindAutoSnapshotPolicy返回参数结构体
      class UnbindAutoSnapshotPolicyResponse < TencentCloud::Common::AbstractModel
        # @param AutoSnapshotPolicyId: 快照策略ID
        # @type AutoSnapshotPolicyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutoSnapshotPolicyId, :RequestId

        def initialize(autosnapshotpolicyid=nil, requestid=nil)
          @AutoSnapshotPolicyId = autosnapshotpolicyid
          @RequestId = requestid
        end

        def deserialize(params)
          @AutoSnapshotPolicyId = params['AutoSnapshotPolicyId']
          @RequestId = params['RequestId']
        end
      end

      # UpdateAutoSnapshotPolicy请求参数结构体
      class UpdateAutoSnapshotPolicyRequest < TencentCloud::Common::AbstractModel
        # @param AutoSnapshotPolicyId: 解绑的快照策略ID，可以通过[DescribeAutoSnapshotPolicies](https://cloud.tencent.com/document/api/582/80208) 查询获取
        # @type AutoSnapshotPolicyId: String
        # @param PolicyName: 快照策略名称，不超过64个字符
        # @type PolicyName: String
        # @param DayOfWeek: 快照定期备份，按照星期一到星期日。 1代表星期一，7代表星期日，与DayOfMonth，IntervalDays 三者选一个
        # @type DayOfWeek: String
        # @param Hour: 快照定期备份在一天的哪一小时
        # @type Hour: String
        # @param AliveDays: 快照保留天数
        # @type AliveDays: Integer
        # @param IsActivated: 是否激活定期快照功能；1代表激活，0代表未激活
        # @type IsActivated: Integer
        # @param DayOfMonth: 定期快照在每月的第几天创建快照，该参数与DayOfWeek,IntervalDays 三者选一
        # @type DayOfMonth: String
        # @param IntervalDays: 间隔天数定期执行快照，该参数与DayOfWeek,DayOfMonth 三者选一
        # @type IntervalDays: Integer

        attr_accessor :AutoSnapshotPolicyId, :PolicyName, :DayOfWeek, :Hour, :AliveDays, :IsActivated, :DayOfMonth, :IntervalDays

        def initialize(autosnapshotpolicyid=nil, policyname=nil, dayofweek=nil, hour=nil, alivedays=nil, isactivated=nil, dayofmonth=nil, intervaldays=nil)
          @AutoSnapshotPolicyId = autosnapshotpolicyid
          @PolicyName = policyname
          @DayOfWeek = dayofweek
          @Hour = hour
          @AliveDays = alivedays
          @IsActivated = isactivated
          @DayOfMonth = dayofmonth
          @IntervalDays = intervaldays
        end

        def deserialize(params)
          @AutoSnapshotPolicyId = params['AutoSnapshotPolicyId']
          @PolicyName = params['PolicyName']
          @DayOfWeek = params['DayOfWeek']
          @Hour = params['Hour']
          @AliveDays = params['AliveDays']
          @IsActivated = params['IsActivated']
          @DayOfMonth = params['DayOfMonth']
          @IntervalDays = params['IntervalDays']
        end
      end

      # UpdateAutoSnapshotPolicy返回参数结构体
      class UpdateAutoSnapshotPolicyResponse < TencentCloud::Common::AbstractModel
        # @param AutoSnapshotPolicyId: 快照策略ID
        # @type AutoSnapshotPolicyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutoSnapshotPolicyId, :RequestId

        def initialize(autosnapshotpolicyid=nil, requestid=nil)
          @AutoSnapshotPolicyId = autosnapshotpolicyid
          @RequestId = requestid
        end

        def deserialize(params)
          @AutoSnapshotPolicyId = params['AutoSnapshotPolicyId']
          @RequestId = params['RequestId']
        end
      end

      # UpdateCfsFileSystemName请求参数结构体
      class UpdateCfsFileSystemNameRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统 ID,通过[查询文件系统接口](https://cloud.tencent.com/document/api/582/38170)获取
        # @type FileSystemId: String
        # @param FsName: 用户自定义文件系统名称，64字节内的中文字母数字或者 _,-,与CreationToken 至少填一个
        # @type FsName: String

        attr_accessor :FileSystemId, :FsName

        def initialize(filesystemid=nil, fsname=nil)
          @FileSystemId = filesystemid
          @FsName = fsname
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @FsName = params['FsName']
        end
      end

      # UpdateCfsFileSystemName返回参数结构体
      class UpdateCfsFileSystemNameResponse < TencentCloud::Common::AbstractModel
        # @param CreationToken: 用户自定义文件系统名称
        # @type CreationToken: String
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param FsName: 用户自定义文件系统名称
        # @type FsName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CreationToken, :FileSystemId, :FsName, :RequestId

        def initialize(creationtoken=nil, filesystemid=nil, fsname=nil, requestid=nil)
          @CreationToken = creationtoken
          @FileSystemId = filesystemid
          @FsName = fsname
          @RequestId = requestid
        end

        def deserialize(params)
          @CreationToken = params['CreationToken']
          @FileSystemId = params['FileSystemId']
          @FsName = params['FsName']
          @RequestId = params['RequestId']
        end
      end

      # UpdateCfsFileSystemPGroup请求参数结构体
      class UpdateCfsFileSystemPGroupRequest < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID，可通过[DescribeCfsPGroups接口](https://cloud.tencent.com/document/api/582/38157)获取
        # @type PGroupId: String
        # @param FileSystemId: 文件系统 ID，通过[查询文件系统接口](https://cloud.tencent.com/document/api/582/38170)获取
        # @type FileSystemId: String

        attr_accessor :PGroupId, :FileSystemId

        def initialize(pgroupid=nil, filesystemid=nil)
          @PGroupId = pgroupid
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @FileSystemId = params['FileSystemId']
        end
      end

      # UpdateCfsFileSystemPGroup返回参数结构体
      class UpdateCfsFileSystemPGroupResponse < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String
        # @param FileSystemId: 文件系统 ID
        # @type FileSystemId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PGroupId, :FileSystemId, :RequestId

        def initialize(pgroupid=nil, filesystemid=nil, requestid=nil)
          @PGroupId = pgroupid
          @FileSystemId = filesystemid
          @RequestId = requestid
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @FileSystemId = params['FileSystemId']
          @RequestId = params['RequestId']
        end
      end

      # UpdateCfsFileSystemSizeLimit请求参数结构体
      class UpdateCfsFileSystemSizeLimitRequest < TencentCloud::Common::AbstractModel
        # @param FsLimit: 文件系统容量限制大小，输入范围0-1073741824, 单位为GB；其中输入值为0时，表示不限制文件系统容量。
        # @type FsLimit: Integer
        # @param FileSystemId: 文件系统ID，目前仅支持标准型文件系统。该参数通过查询文件系统列表获取
        # @type FileSystemId: String

        attr_accessor :FsLimit, :FileSystemId

        def initialize(fslimit=nil, filesystemid=nil)
          @FsLimit = fslimit
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @FsLimit = params['FsLimit']
          @FileSystemId = params['FileSystemId']
        end
      end

      # UpdateCfsFileSystemSizeLimit返回参数结构体
      class UpdateCfsFileSystemSizeLimitResponse < TencentCloud::Common::AbstractModel
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

      # UpdateCfsPGroup请求参数结构体
      class UpdateCfsPGroupRequest < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID，可通过[DescribeCfsPGroups接口](https://cloud.tencent.com/document/api/582/38157)获取
        # @type PGroupId: String
        # @param Name: 权限组名称，1-64个字符且只能为中文，字母，数字，下划线或横线
        # @type Name: String
        # @param DescInfo: 权限组描述信息，1-255个字符。 Name和Descinfo不能同时为空
        # @type DescInfo: String

        attr_accessor :PGroupId, :Name, :DescInfo

        def initialize(pgroupid=nil, name=nil, descinfo=nil)
          @PGroupId = pgroupid
          @Name = name
          @DescInfo = descinfo
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @Name = params['Name']
          @DescInfo = params['DescInfo']
        end
      end

      # UpdateCfsPGroup返回参数结构体
      class UpdateCfsPGroupResponse < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组ID
        # @type PGroupId: String
        # @param Name: 权限组名称
        # @type Name: String
        # @param DescInfo: 描述信息
        # @type DescInfo: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PGroupId, :Name, :DescInfo, :RequestId

        def initialize(pgroupid=nil, name=nil, descinfo=nil, requestid=nil)
          @PGroupId = pgroupid
          @Name = name
          @DescInfo = descinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @Name = params['Name']
          @DescInfo = params['DescInfo']
          @RequestId = params['RequestId']
        end
      end

      # UpdateCfsRule请求参数结构体
      class UpdateCfsRuleRequest < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID，可通过[DescribeCfsPGroups接口](https://cloud.tencent.com/document/api/582/38157)获取
        # @type PGroupId: String
        # @param RuleId: 规则 ID，可通过[DescribeCfsRules](https://cloud.tencent.com/document/api/582/38156)接口获取
        # @type RuleId: String
        # @param AuthClientIp: 可以填写单个 IP 或者单个网段，例如 10.1.10.11 或者 10.10.1.0/24。默认来访地址为*表示允许所有。同时需要注意，此处需填写 CVM 的内网 IP。
        # @type AuthClientIp: String
        # @param RWPermission: 读写权限, 值为RO、RW；其中 RO 为只读，RW 为读写，不填默认为只读
        # @type RWPermission: String
        # @param UserPermission: 用户权限，值为all_squash、no_all_squash、root_squash、no_root_squash，默认值为root_squash
        # all_squash：所有访问用户（含 root 用户）都会被映射为匿名用户或用户组。
        # no_all_squash：所有访问用户（含 root 用户）均保持原有的 UID/GID 信息。
        # root_squash：将来访的 root 用户映射为匿名用户或用户组，非 root 用户保持原有的 UID/GID 信息。
        # no_root_squash：与 no_all_squash 效果一致，所有访问用户（含 root 用户）均保持原有的 UID/GID 信息
        # @type UserPermission: String
        # @param Priority: 规则优先级，参数范围1-100。 其中 1 为最高，100为最低，默认值为100
        # @type Priority: Integer

        attr_accessor :PGroupId, :RuleId, :AuthClientIp, :RWPermission, :UserPermission, :Priority

        def initialize(pgroupid=nil, ruleid=nil, authclientip=nil, rwpermission=nil, userpermission=nil, priority=nil)
          @PGroupId = pgroupid
          @RuleId = ruleid
          @AuthClientIp = authclientip
          @RWPermission = rwpermission
          @UserPermission = userpermission
          @Priority = priority
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @RuleId = params['RuleId']
          @AuthClientIp = params['AuthClientIp']
          @RWPermission = params['RWPermission']
          @UserPermission = params['UserPermission']
          @Priority = params['Priority']
        end
      end

      # UpdateCfsRule返回参数结构体
      class UpdateCfsRuleResponse < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String
        # @param RuleId: 规则 ID
        # @type RuleId: String
        # @param AuthClientIp: 允许访问的客户端 IP 或者 IP 段
        # @type AuthClientIp: String
        # @param RWPermission: 读写权限
        # @type RWPermission: String
        # @param UserPermission: 用户权限
        # @type UserPermission: String
        # @param Priority: 优先级
        # @type Priority: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PGroupId, :RuleId, :AuthClientIp, :RWPermission, :UserPermission, :Priority, :RequestId

        def initialize(pgroupid=nil, ruleid=nil, authclientip=nil, rwpermission=nil, userpermission=nil, priority=nil, requestid=nil)
          @PGroupId = pgroupid
          @RuleId = ruleid
          @AuthClientIp = authclientip
          @RWPermission = rwpermission
          @UserPermission = userpermission
          @Priority = priority
          @RequestId = requestid
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @RuleId = params['RuleId']
          @AuthClientIp = params['AuthClientIp']
          @RWPermission = params['RWPermission']
          @UserPermission = params['UserPermission']
          @Priority = params['Priority']
          @RequestId = params['RequestId']
        end
      end

      # UpdateCfsSnapshotAttribute请求参数结构体
      class UpdateCfsSnapshotAttributeRequest < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 快照ID，可以通过[DescribeCfsSnapshots](https://cloud.tencent.com/document/api/582/80206) 查询获取
        # @type SnapshotId: String
        # @param SnapshotName: 文件系统快照名称，与AliveDays 必须填一个，快照名称，支持不超过64字符长度，支持中文、数字、_、-
        # @type SnapshotName: String
        # @param AliveDays: 文件系统快照保留天数，与SnapshotName必须填一个，如果原来是永久保留时间，不允许修改成短期有效期
        # @type AliveDays: Integer

        attr_accessor :SnapshotId, :SnapshotName, :AliveDays

        def initialize(snapshotid=nil, snapshotname=nil, alivedays=nil)
          @SnapshotId = snapshotid
          @SnapshotName = snapshotname
          @AliveDays = alivedays
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
          @SnapshotName = params['SnapshotName']
          @AliveDays = params['AliveDays']
        end
      end

      # UpdateCfsSnapshotAttribute返回参数结构体
      class UpdateCfsSnapshotAttributeResponse < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 文件系统快照ID
        # @type SnapshotId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SnapshotId, :RequestId

        def initialize(snapshotid=nil, requestid=nil)
          @SnapshotId = snapshotid
          @RequestId = requestid
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
          @RequestId = params['RequestId']
        end
      end

      # UpdateFileSystemBandwidthLimit请求参数结构体
      class UpdateFileSystemBandwidthLimitRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统 ID,可通过[DescribeCfsFileSystems](https://cloud.tencent.com/document/api/582/38170)接口获取
        # @type FileSystemId: String
        # @param BandwidthLimit: 文件系统带宽，仅吞吐型可填。单位MiB/s，最小为1GiB/s，最大200GiB/s。
        # @type BandwidthLimit: Integer

        attr_accessor :FileSystemId, :BandwidthLimit

        def initialize(filesystemid=nil, bandwidthlimit=nil)
          @FileSystemId = filesystemid
          @BandwidthLimit = bandwidthlimit
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @BandwidthLimit = params['BandwidthLimit']
        end
      end

      # UpdateFileSystemBandwidthLimit返回参数结构体
      class UpdateFileSystemBandwidthLimitResponse < TencentCloud::Common::AbstractModel
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

      # 文件系统配额信息
      class UserQuota < TencentCloud::Common::AbstractModel
        # @param UserType: 指定配额类型，包括Uid、Gid、Dir
        # @type UserType: String
        # @param UserId: UID/GID信息
        # @type UserId: String
        # @param CapacityHardLimit: 容量硬限制，单位GiB
        # @type CapacityHardLimit: Integer
        # @param FileHardLimit: 文件硬限制，单位个
        # @type FileHardLimit: Integer
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param CapacityUsed: 容量使用，单位GiB
        # @type CapacityUsed: Integer
        # @param FileUsed: 文件使用个数，单位个
        # @type FileUsed: Integer
        # @param DirectoryPath: 目录配额的目录绝对路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DirectoryPath: String
        # @param Status: 配置规则状态，inavailable---配置中，available --已生效，deleting--删除中，deleted 已删除，failed--配置失败
        # @type Status: String

        attr_accessor :UserType, :UserId, :CapacityHardLimit, :FileHardLimit, :FileSystemId, :CapacityUsed, :FileUsed, :DirectoryPath, :Status

        def initialize(usertype=nil, userid=nil, capacityhardlimit=nil, filehardlimit=nil, filesystemid=nil, capacityused=nil, fileused=nil, directorypath=nil, status=nil)
          @UserType = usertype
          @UserId = userid
          @CapacityHardLimit = capacityhardlimit
          @FileHardLimit = filehardlimit
          @FileSystemId = filesystemid
          @CapacityUsed = capacityused
          @FileUsed = fileused
          @DirectoryPath = directorypath
          @Status = status
        end

        def deserialize(params)
          @UserType = params['UserType']
          @UserId = params['UserId']
          @CapacityHardLimit = params['CapacityHardLimit']
          @FileHardLimit = params['FileHardLimit']
          @FileSystemId = params['FileSystemId']
          @CapacityUsed = params['CapacityUsed']
          @FileUsed = params['FileUsed']
          @DirectoryPath = params['DirectoryPath']
          @Status = params['Status']
        end
      end

    end
  end
end

