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
  module Cvd
    module V20201104
      # AssociateSecurityGroup请求参数结构体
      class AssociateSecurityGroupRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # AssociateSecurityGroup返回参数结构体
      class AssociateSecurityGroupResponse < TencentCloud::Common::AbstractModel
        # @param SuccessSet: 关联成功的桌面列表
        # @type SuccessSet: Array
        # @param FailureSet: 关联失败的桌面列表
        # @type FailureSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessSet, :FailureSet, :RequestId

        def initialize(successset=nil, failureset=nil, requestid=nil)
          @SuccessSet = successset
          @FailureSet = failureset
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessSet = params['SuccessSet']
          @FailureSet = params['FailureSet']
          @RequestId = params['RequestId']
        end
      end

      # 实例属性key--value结构
      class AttributeInfo < TencentCloud::Common::AbstractModel
        # @param Name: <p>实例属性名</p>
        # @type Name: String
        # @param Value: <p>实例属性值</p>
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

      # 绑定关系
      class BindInfo < TencentCloud::Common::AbstractModel
        # @param UserId: <p>实例绑定的用户ID</p>
        # @type UserId: String
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String

        attr_accessor :UserId, :InstanceId

        def initialize(userid=nil, instanceid=nil)
          @UserId = userid
          @InstanceId = instanceid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @InstanceId = params['InstanceId']
        end
      end

      # BindInstances请求参数结构体
      class BindInstancesRequest < TencentCloud::Common::AbstractModel
        # @param UserIds: <p>指定得到云桌面用户id</p>
        # @type UserIds: Array
        # @param InstanceIds: <p>待分配桌面实例id</p>
        # @type InstanceIds: Array
        # @param InstanceType: <p>待分配桌面类型</p>
        # @type InstanceType: String
        # @param InstanceRegion: <p>待分配桌面所在区域</p>
        # @type InstanceRegion: String

        attr_accessor :UserIds, :InstanceIds, :InstanceType, :InstanceRegion

        def initialize(userids=nil, instanceids=nil, instancetype=nil, instanceregion=nil)
          @UserIds = userids
          @InstanceIds = instanceids
          @InstanceType = instancetype
          @InstanceRegion = instanceregion
        end

        def deserialize(params)
          @UserIds = params['UserIds']
          @InstanceIds = params['InstanceIds']
          @InstanceType = params['InstanceType']
          @InstanceRegion = params['InstanceRegion']
        end
      end

      # BindInstances返回参数结构体
      class BindInstancesResponse < TencentCloud::Common::AbstractModel
        # @param BindInfoList: <p>待分配桌面状态</p>
        # @type BindInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BindInfoList, :RequestId

        def initialize(bindinfolist=nil, requestid=nil)
          @BindInfoList = bindinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BindInfoList'].nil?
            @BindInfoList = []
            params['BindInfoList'].each do |i|
              bindstatusinfo_tmp = BindStatusInfo.new
              bindstatusinfo_tmp.deserialize(i)
              @BindInfoList << bindstatusinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 桌面实例绑定状态详情
      class BindStatusInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>桌面实例id</p>
        # @type InstanceId: String
        # @param BindStatus: <p>实例的绑定状态。取值：<br>UNBOUND - 未绑定<br>BINDING - 绑定中<br>BOUND - 绑定<br>UNBINDING-解绑中</p>
        # @type BindStatus: String
        # @param UserId: <p>绑定的用户id【BOUND状态不允许为空】</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param UserName: <p>绑定用户名称【BOUND状态不允许为空】</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param DisplayName: <p>绑定用户显示名称【BOUND状态不允许为空】</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String

        attr_accessor :InstanceId, :BindStatus, :UserId, :UserName, :DisplayName

        def initialize(instanceid=nil, bindstatus=nil, userid=nil, username=nil, displayname=nil)
          @InstanceId = instanceid
          @BindStatus = bindstatus
          @UserId = userid
          @UserName = username
          @DisplayName = displayname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BindStatus = params['BindStatus']
          @UserId = params['UserId']
          @UserName = params['UserName']
          @DisplayName = params['DisplayName']
        end
      end

      # 预付费模式，即包年包月相关参数。包括购买时长和自动续费逻辑等。
      class ChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 购买实例的时长，单位：月。取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12。
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围：
        # NOTIFY_AND_AUTO_RENEW：通知过期且自动续费
        # NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费
        # DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费

        # 默认取值：NOTIFY_AND_AUTO_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
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

      # 任务详情
      class CommandDetail < TencentCloud::Common::AbstractModel
        # @param Uin: 租户 Uin
        # @type Uin: String
        # @param AppId: 租户 APPID
        # @type AppId: Integer
        # @param Type: 任务类型，取值有：
        # PowerShellScript
        # Bat
        # @type Type: String
        # @param Status: RUNNING - 执行中；FINISHED - 执行完成
        # @type Status: String
        # @param Command: 任务脚本，Base64 编码
        # @type Command: String
        # @param CommandId: 任务唯一 ID
        # @type CommandId: String
        # @param CreateTime: 任务完成时间
        # @type CreateTime: String
        # @param FinishTime: 任务完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinishTime: String
        # @param Invocations: 各实例运行结果集
        # @type Invocations: Array
        # @param RunAsBoundUser: 是否以绑定用户运行任务，默认 false：system 用户执行
        # @type RunAsBoundUser: Boolean
        # @param RunForeground: 是否前台运行任务，默认 false：后台运行任务
        # @type RunForeground: Boolean

        attr_accessor :Uin, :AppId, :Type, :Status, :Command, :CommandId, :CreateTime, :FinishTime, :Invocations, :RunAsBoundUser, :RunForeground

        def initialize(uin=nil, appid=nil, type=nil, status=nil, command=nil, commandid=nil, createtime=nil, finishtime=nil, invocations=nil, runasbounduser=nil, runforeground=nil)
          @Uin = uin
          @AppId = appid
          @Type = type
          @Status = status
          @Command = command
          @CommandId = commandid
          @CreateTime = createtime
          @FinishTime = finishtime
          @Invocations = invocations
          @RunAsBoundUser = runasbounduser
          @RunForeground = runforeground
        end

        def deserialize(params)
          @Uin = params['Uin']
          @AppId = params['AppId']
          @Type = params['Type']
          @Status = params['Status']
          @Command = params['Command']
          @CommandId = params['CommandId']
          @CreateTime = params['CreateTime']
          @FinishTime = params['FinishTime']
          unless params['Invocations'].nil?
            @Invocations = []
            params['Invocations'].each do |i|
              invocationdetail_tmp = InvocationDetail.new
              invocationdetail_tmp.deserialize(i)
              @Invocations << invocationdetail_tmp
            end
          end
          @RunAsBoundUser = params['RunAsBoundUser']
          @RunForeground = params['RunForeground']
        end
      end

      # CreateCommandTask请求参数结构体
      class CreateCommandTaskRequest < TencentCloud::Common::AbstractModel
        # @param Command: 脚本任务，需要 Base64 编码
        # @type Command: String
        # @param Type: 脚本任务类型：windows 桌面可选有：    PowerShellScript — powershell脚本    BatScript — Bat 脚本
        # @type Type: String
        # @param InstanceIds: 执行脚本任务的实例列表
        # @type InstanceIds: Array
        # @param RunAsBoundUser: 是否以绑定用户身份执行，默认 System身份运行false： System身份运行，默认行为true：以绑定用户身份执行
        # @type RunAsBoundUser: Boolean
        # @param RunForeground: 是否前台运行false：后台运行，默认行为true：前台运行
        # @type RunForeground: Boolean

        attr_accessor :Command, :Type, :InstanceIds, :RunAsBoundUser, :RunForeground

        def initialize(command=nil, type=nil, instanceids=nil, runasbounduser=nil, runforeground=nil)
          @Command = command
          @Type = type
          @InstanceIds = instanceids
          @RunAsBoundUser = runasbounduser
          @RunForeground = runforeground
        end

        def deserialize(params)
          @Command = params['Command']
          @Type = params['Type']
          @InstanceIds = params['InstanceIds']
          @RunAsBoundUser = params['RunAsBoundUser']
          @RunForeground = params['RunForeground']
        end
      end

      # CreateCommandTask返回参数结构体
      class CreateCommandTaskResponse < TencentCloud::Common::AbstractModel
        # @param CommandId: 脚本任务唯一 ID
        # @type CommandId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CommandId, :RequestId

        def initialize(commandid=nil, requestid=nil)
          @CommandId = commandid
          @RequestId = requestid
        end

        def deserialize(params)
          @CommandId = params['CommandId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDataDisk请求参数结构体
      class CreateDataDiskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param DiskType: 数据盘类型，有效值CLOUD_SSD/CLOUD_PREMIUM
        # @type DiskType: String
        # @param DiskSize: 数据盘大小
        # @type DiskSize: Integer
        # @param SnapShotId: 硬盘快照id
        # @type SnapShotId: String

        attr_accessor :InstanceId, :DiskType, :DiskSize, :SnapShotId

        def initialize(instanceid=nil, disktype=nil, disksize=nil, snapshotid=nil)
          @InstanceId = instanceid
          @DiskType = disktype
          @DiskSize = disksize
          @SnapShotId = snapshotid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @SnapShotId = params['SnapShotId']
        end
      end

      # CreateDataDisk返回参数结构体
      class CreateDataDiskResponse < TencentCloud::Common::AbstractModel
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

      # CreateDomainControlPolicy请求参数结构体
      class CreateDomainControlPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Name: <p>策略名称</p>
        # @type Name: String
        # @param Description: <p>策略描述</p>
        # @type Description: String
        # @param Type: <p>策略类型，取值范围[&quot;WHITE&quot;,&quot;BLACK&quot;]，WHITE - 白名单策略；BLACK - 黑名单策略；默认 值为BLACK</p>
        # @type Type: String
        # @param DetailSet: <p>域名控制规则详情</p>
        # @type DetailSet: Array
        # @param IpDetailSet: <p>IP控制规则详情</p>
        # @type IpDetailSet: Array
        # @param InstanceIds: <p>作用到的实例列表</p>
        # @type InstanceIds: Array

        attr_accessor :Name, :Description, :Type, :DetailSet, :IpDetailSet, :InstanceIds

        def initialize(name=nil, description=nil, type=nil, detailset=nil, ipdetailset=nil, instanceids=nil)
          @Name = name
          @Description = description
          @Type = type
          @DetailSet = detailset
          @IpDetailSet = ipdetailset
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @Type = params['Type']
          unless params['DetailSet'].nil?
            @DetailSet = []
            params['DetailSet'].each do |i|
              domaincontroldetail_tmp = DomainControlDetail.new
              domaincontroldetail_tmp.deserialize(i)
              @DetailSet << domaincontroldetail_tmp
            end
          end
          unless params['IpDetailSet'].nil?
            @IpDetailSet = []
            params['IpDetailSet'].each do |i|
              ipcontroldetail_tmp = IpControlDetail.new
              ipcontroldetail_tmp.deserialize(i)
              @IpDetailSet << ipcontroldetail_tmp
            end
          end
          @InstanceIds = params['InstanceIds']
        end
      end

      # CreateDomainControlPolicy返回参数结构体
      class CreateDomainControlPolicyResponse < TencentCloud::Common::AbstractModel
        # @param PolicyId: <p>策略唯一ID</p>
        # @type PolicyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyId, :RequestId

        def initialize(policyid=nil, requestid=nil)
          @PolicyId = policyid
          @RequestId = requestid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateImage请求参数结构体
      class CreateImageRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>云桌面实例ID。</p>
        # @type InstanceId: String
        # @param ImageName: <p>镜像名称。只支持中文、字母、数字或连接符号&quot;-&quot;，且最多60个字符。<br>默认值：空。</p>
        # @type ImageName: String
        # @param Description: <p>镜像的描述信息。支持英文或中文字符，最多60个字符。<br>默认值：空。</p>
        # @type Description: String
        # @param DataDiskIds: <p>基于实例创建整机镜像时，指定包含在镜像里的数据盘ID。</p>
        # @type DataDiskIds: Array

        attr_accessor :InstanceId, :ImageName, :Description, :DataDiskIds

        def initialize(instanceid=nil, imagename=nil, description=nil, datadiskids=nil)
          @InstanceId = instanceid
          @ImageName = imagename
          @Description = description
          @DataDiskIds = datadiskids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ImageName = params['ImageName']
          @Description = params['Description']
          @DataDiskIds = params['DataDiskIds']
        end
      end

      # CreateImage返回参数结构体
      class CreateImageResponse < TencentCloud::Common::AbstractModel
        # @param ImageId: <p>镜像ID。</p>
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

      # CreateInstances请求参数结构体
      class CreateInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceType: 实例类型。<li>  S3L.MEDIUM4: 云桌面-标准S3_2核4G </li><li> S3L.LARGE8: 云桌面-标准S3_4核8G </li><li> S3L.LARGE16: 云桌面-标准S3_4核16G </li><li> S3L.2XLARGE16: 云桌面-标准S3_8核16G </li><li> S1L.LARGE8：云桌面-标准S1_4核8G </li><li> S1L.LARGE16：标准S1_4核16G </li><li> S2L.2XLARGE16：标准S2_8核16G </li><li> G1L.LARGE16：图形G1_4核16G  </li><li> G1L.2XLARGE32：图形G1_8核32G </li><li> G1L.4XLARGE64：图形G1_16核64G </li><li> G2L.LARGE24: 云桌面-图形G2_6核24G </li><li> G2L.3XLARGE58: 云桌面-图形G2_14核58G </li><li> G2L.3XLARGE44: 云桌面-图形G2_12核44G </li><li> G3L.LARGE16: 云桌面-图形G3_4核16G </li><li> G3L.5XMEDIUM40: 云桌面-图形G3_10核40G </li><li> G3L.5XLARGE80: 云桌面-图形G3_20核80G </li><li> G4L.5XMEDIUM40: 云桌面-图形G4_10核40G </li><li> G4L.11XMEDIUM80: 云桌面-图形G4_22核80G </li><li> G4L.11XLARGE160: 云桌面-图形G4_44核160G </li><li> G5L.5XMEDIUM40: 云桌面-图形G5_10核40G </li><li> G5L.5XLARGE80: 云桌面-图形G5_22核80G </li><li> G5L.21XMEDIUM160: 云桌面-图形G5_42核160G </li><li> G5L.21XLARGE320: 云桌面-图形G5_84核320G </li>
        # @type InstanceType: String
        # @param SystemDisk: 系统盘信息
        # @type SystemDisk: :class:`Tencentcloud::Cvd.v20201104.models.Disk`
        # @param ImageId: 镜像ID
        # @type ImageId: String
        # @param VirtualPrivateCloud: 私有网络相关信息配置。通过该参数可以指定私有网络的ID，子网ID等信息。
        # @type VirtualPrivateCloud: :class:`Tencentcloud::Cvd.v20201104.models.VirtualPrivateCloud`
        # @param InstanceName: 实例显示名称。
        # <li> 如果该字段为空，则采用默认格式：云桌面型号+月日+三位随机数+镜像ID。</li>
        # <li> 购买多台实例，如果指定模式串{R:x}，表示生成数字[x, x+n-1]，其中n表示购买实例的数量，例如server_{R:3}，购买1台时，实例显示名称为server_3；购买2台时，实例显示名称分别为server_3，server_4。支持指定多个模式串{R:x}。</li>
        # <li> 购买多台实例，如果不指定模式串，则在实例显示名称添加后缀1、2...n，其中n表示购买实例的数量，例如server_，购买2台时，实例显示名称分别为server_1，server_2。</li>
        # <li> 最多支持60个字符（包含模式串）。</li>
        # @type InstanceName: String
        # @param InstanceCount: 购买实例数量。取值范围[1,50]。默认为1
        # @type InstanceCount: Integer
        # @param DataDisks: 数据盘信息。目前只支持一块数据盘。
        # @type DataDisks: Array
        # @param ChargeType: 实例计费类型。
        # <li> PREPAID：预付费，即包年包月</li>
        # <li> POSTPAID_BY_HOUR：按小时后付费</li>
        # 默认为PREPAID
        # @type ChargeType: String
        # @param ChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type ChargePrepaid: :class:`Tencentcloud::Cvd.v20201104.models.ChargePrepaid`
        # @param DryRun: 是否只预检此次请求。
        # <li> true：发送检查请求，不会创建实例。检查项包括是否填写了必需参数，请求格式，业务限制和库存。
        # 如果检查通过，则返回的错误码为DryRunOperation；如果返回其他错误码表示检查没有通过；</li>
        # <li> false（默认）：发送正常请求，通过检查后直接创建实例</li>
        # @type DryRun: Boolean
        # @param AnonymousAccess: 允许绑定用户前的匿名访问。默认值：false。
        # @type AnonymousAccess: Boolean
        # @param SecurityGroups: 关联的安全组ID列表
        # @type SecurityGroups: Array
        # @param PoolId: 桌面池ID
        # @type PoolId: String
        # @param DomainControlPolicies: 域名管控策略ID
        # @type DomainControlPolicies: Array
        # @param Tags: 标签，最多10个
        # @type Tags: Array
        # @param Zone: 可用区
        # @type Zone: String

        attr_accessor :InstanceType, :SystemDisk, :ImageId, :VirtualPrivateCloud, :InstanceName, :InstanceCount, :DataDisks, :ChargeType, :ChargePrepaid, :DryRun, :AnonymousAccess, :SecurityGroups, :PoolId, :DomainControlPolicies, :Tags, :Zone

        def initialize(instancetype=nil, systemdisk=nil, imageid=nil, virtualprivatecloud=nil, instancename=nil, instancecount=nil, datadisks=nil, chargetype=nil, chargeprepaid=nil, dryrun=nil, anonymousaccess=nil, securitygroups=nil, poolid=nil, domaincontrolpolicies=nil, tags=nil, zone=nil)
          @InstanceType = instancetype
          @SystemDisk = systemdisk
          @ImageId = imageid
          @VirtualPrivateCloud = virtualprivatecloud
          @InstanceName = instancename
          @InstanceCount = instancecount
          @DataDisks = datadisks
          @ChargeType = chargetype
          @ChargePrepaid = chargeprepaid
          @DryRun = dryrun
          @AnonymousAccess = anonymousaccess
          @SecurityGroups = securitygroups
          @PoolId = poolid
          @DomainControlPolicies = domaincontrolpolicies
          @Tags = tags
          @Zone = zone
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          unless params['SystemDisk'].nil?
            @SystemDisk = Disk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          @ImageId = params['ImageId']
          unless params['VirtualPrivateCloud'].nil?
            @VirtualPrivateCloud = VirtualPrivateCloud.new
            @VirtualPrivateCloud.deserialize(params['VirtualPrivateCloud'])
          end
          @InstanceName = params['InstanceName']
          @InstanceCount = params['InstanceCount']
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              disk_tmp = Disk.new
              disk_tmp.deserialize(i)
              @DataDisks << disk_tmp
            end
          end
          @ChargeType = params['ChargeType']
          unless params['ChargePrepaid'].nil?
            @ChargePrepaid = ChargePrepaid.new
            @ChargePrepaid.deserialize(params['ChargePrepaid'])
          end
          @DryRun = params['DryRun']
          @AnonymousAccess = params['AnonymousAccess']
          @SecurityGroups = params['SecurityGroups']
          @PoolId = params['PoolId']
          @DomainControlPolicies = params['DomainControlPolicies']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Zone = params['Zone']
        end
      end

      # CreateInstances返回参数结构体
      class CreateInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 当通过本接口来创建实例时会返回该参数，表示一个或多个实例ID。返回实例ID列表并不代表实例创建成功。通过进一步查询返回的InstancesSet中对应实例的ID的状态来判断创建是否完成；如果实例状态由“准备中”变为“正在运行”，则为创建成功。
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

      # CreatePolicy请求参数结构体
      class CreatePolicyRequest < TencentCloud::Common::AbstractModel
        # @param Name: <p>策略名称</p>
        # @type Name: String
        # @param PolicyInfoList: <p>策略详情</p>
        # @type PolicyInfoList: Array
        # @param Description: <p>策略描述</p>
        # @type Description: String
        # @param UserIds: <p>策略作用的用户id</p>
        # @type UserIds: Array

        attr_accessor :Name, :PolicyInfoList, :Description, :UserIds

        def initialize(name=nil, policyinfolist=nil, description=nil, userids=nil)
          @Name = name
          @PolicyInfoList = policyinfolist
          @Description = description
          @UserIds = userids
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['PolicyInfoList'].nil?
            @PolicyInfoList = []
            params['PolicyInfoList'].each do |i|
              policyinfo_tmp = PolicyInfo.new
              policyinfo_tmp.deserialize(i)
              @PolicyInfoList << policyinfo_tmp
            end
          end
          @Description = params['Description']
          @UserIds = params['UserIds']
        end
      end

      # CreatePolicy返回参数结构体
      class CreatePolicyResponse < TencentCloud::Common::AbstractModel
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

      # 监控数据
      class DataPoint < TencentCloud::Common::AbstractModel
        # @param Dimensions: <p>实例对象维度组合</p>
        # @type Dimensions: Array
        # @param Timestamps: <p>时间戳数组</p>
        # @type Timestamps: Array
        # @param Values: <p>监控值数组，与Timestamps一一对应</p>
        # @type Values: Array
        # @param MaxValues: <p>MaxValues 最大值数组，与Timestamps一一对应</p>
        # @type MaxValues: Array
        # @param MinValues: <p>MinValues 最小值数组，与Timestamps一一对应</p>
        # @type MinValues: Array
        # @param AvgValues: <p>AvgValues 平均值数组，与Timestamps一一对应</p>
        # @type AvgValues: Array

        attr_accessor :Dimensions, :Timestamps, :Values, :MaxValues, :MinValues, :AvgValues

        def initialize(dimensions=nil, timestamps=nil, values=nil, maxvalues=nil, minvalues=nil, avgvalues=nil)
          @Dimensions = dimensions
          @Timestamps = timestamps
          @Values = values
          @MaxValues = maxvalues
          @MinValues = minvalues
          @AvgValues = avgvalues
        end

        def deserialize(params)
          unless params['Dimensions'].nil?
            @Dimensions = []
            params['Dimensions'].each do |i|
              dimension_tmp = Dimension.new
              dimension_tmp.deserialize(i)
              @Dimensions << dimension_tmp
            end
          end
          @Timestamps = params['Timestamps']
          @Values = params['Values']
          @MaxValues = params['MaxValues']
          @MinValues = params['MinValues']
          @AvgValues = params['AvgValues']
        end
      end

      # DeleteCommandTasks请求参数结构体
      class DeleteCommandTasksRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <p>删除命令任务条件<br>Filter.name 目前支持 CommandId</p>
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

      # DeleteCommandTasks返回参数结构体
      class DeleteCommandTasksResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDomainControlPolicy请求参数结构体
      class DeleteDomainControlPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略唯一ID
        # @type PolicyId: String

        attr_accessor :PolicyId

        def initialize(policyid=nil)
          @PolicyId = policyid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
        end
      end

      # DeleteDomainControlPolicy返回参数结构体
      class DeleteDomainControlPolicyResponse < TencentCloud::Common::AbstractModel
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
        # @param ImageIds: <p>准备删除的镜像Id列表</p>
        # @type ImageIds: Array

        attr_accessor :ImageIds

        def initialize(imageids=nil)
          @ImageIds = imageids
        end

        def deserialize(params)
          @ImageIds = params['ImageIds']
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

      # DescribeCommandTasks请求参数结构体
      class DescribeCommandTasksRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: <p>页号</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小，默认 20，最大 100</p>
        # @type PageSize: Integer
        # @param Filters: <p>拉取任务的过滤器 ，Filter.Name 取值：CommandId - 任务 lD；Staus - 任务状态， RUNNING - 执行中；FINISHED - 执行完成（不代表成功，只表示任务执行完成）</p>
        # @type Filters: Array

        attr_accessor :PageNumber, :PageSize, :Filters

        def initialize(pagenumber=nil, pagesize=nil, filters=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
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

      # DescribeCommandTasks返回参数结构体
      class DescribeCommandTasksResponse < TencentCloud::Common::AbstractModel
        # @param Total: <p>拉取任务详情数</p>
        # @type Total: Integer
        # @param CommandDetails: <p>任务描述</p>
        # @type CommandDetails: Array
        # @param Status: <p>任务状态，RUNNING -执行中；FINISHED-执行完成； STOPPED-终止任务</p>
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :CommandDetails, :Status, :RequestId

        def initialize(total=nil, commanddetails=nil, status=nil, requestid=nil)
          @Total = total
          @CommandDetails = commanddetails
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['CommandDetails'].nil?
            @CommandDetails = []
            params['CommandDetails'].each do |i|
              commanddetail_tmp = CommandDetail.new
              commanddetail_tmp.deserialize(i)
              @CommandDetails << commanddetail_tmp
            end
          end
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImages请求参数结构体
      class DescribeImagesRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: <p>拉取页号</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页拉取个数</p>
        # @type PageSize: Integer
        # @param Filters: <p>Name取值：[&quot;ImageID&quot;,&quot;Name&quot;,&quot;ImageType&quot;,&quot;ImageState&quot;,&quot;Region&quot;,&quot;InstanceType&quot;]<br>注意：filter中没有ImageID或ImageState过滤条件，后台默认不返回INVISIBLE的镜像信息</p>
        # @type Filters: Array

        attr_accessor :PageNumber, :PageSize, :Filters

        def initialize(pagenumber=nil, pagesize=nil, filters=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
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

      # DescribeImages返回参数结构体
      class DescribeImagesResponse < TencentCloud::Common::AbstractModel
        # @param Images: <p>返回查询到的所有镜像信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Images: Array
        # @param Total: <p>返回当前查询到的镜像总数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Images, :Total, :RequestId

        def initialize(images=nil, total=nil, requestid=nil)
          @Images = images
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Images'].nil?
            @Images = []
            params['Images'].each do |i|
              imageinfo_tmp = ImageInfo.new
              imageinfo_tmp.deserialize(i)
              @Images << imageinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceFetchMsg请求参数结构体
      class DescribeInstanceFetchMsgRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param UserId: 绑定实例的UserID，为后续多会话预留参数
        # @type UserId: String
        # @param DesktopName: 拉取桌面title，用户可自行定义，默认为云桌面实例名称
        # @type DesktopName: String
        # @param Force: 是否抢占桌面，即桌面使用过程中，抢占登录。
        # true：抢占登录
        # false：非抢占登录
        # 默认为抢占登录
        # @type Force: Boolean
        # @param IsInternal: 是否内网登录桌面
        # @type IsInternal: Boolean

        attr_accessor :InstanceId, :UserId, :DesktopName, :Force, :IsInternal

        def initialize(instanceid=nil, userid=nil, desktopname=nil, force=nil, isinternal=nil)
          @InstanceId = instanceid
          @UserId = userid
          @DesktopName = desktopname
          @Force = force
          @IsInternal = isinternal
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserId = params['UserId']
          @DesktopName = params['DesktopName']
          @Force = params['Force']
          @IsInternal = params['IsInternal']
        end
      end

      # DescribeInstanceFetchMsg返回参数结构体
      class DescribeInstanceFetchMsgResponse < TencentCloud::Common::AbstractModel
        # @param FetchStatusTicket: 桌面登录ticket状态描述
        # @type FetchStatusTicket: String
        # @param FetchTicket: 桌面登录ticket描述
        # @type FetchTicket: String
        # @param FetchUrl: 桌面登录launch url
        # @type FetchUrl: String
        # @param ProtocolVersion: 桌面传输协议
        # @type ProtocolVersion: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FetchStatusTicket, :FetchTicket, :FetchUrl, :ProtocolVersion, :RequestId

        def initialize(fetchstatusticket=nil, fetchticket=nil, fetchurl=nil, protocolversion=nil, requestid=nil)
          @FetchStatusTicket = fetchstatusticket
          @FetchTicket = fetchticket
          @FetchUrl = fetchurl
          @ProtocolVersion = protocolversion
          @RequestId = requestid
        end

        def deserialize(params)
          @FetchStatusTicket = params['FetchStatusTicket']
          @FetchTicket = params['FetchTicket']
          @FetchUrl = params['FetchUrl']
          @ProtocolVersion = params['ProtocolVersion']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceGraphData请求参数结构体
      class DescribeInstanceGraphDataRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 云桌面实例ID
        # @type InstanceId: String
        # @param StartTime: 查询起始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String

        attr_accessor :InstanceId, :StartTime, :EndTime

        def initialize(instanceid=nil, starttime=nil, endtime=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeInstanceGraphData返回参数结构体
      class DescribeInstanceGraphDataResponse < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询起始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String
        # @param Period: 周期
        # @type Period: Integer
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param Partitions: 实例磁盘数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partitions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StartTime, :EndTime, :Period, :MetricName, :Partitions, :RequestId

        def initialize(starttime=nil, endtime=nil, period=nil, metricname=nil, partitions=nil, requestid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Period = period
          @MetricName = metricname
          @Partitions = partitions
          @RequestId = requestid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Period = params['Period']
          @MetricName = params['MetricName']
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              partition_tmp = Partition.new
              partition_tmp.deserialize(i)
              @Partitions << partition_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceLoginMsg请求参数结构体
      class DescribeInstanceLoginMsgRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param UserId: 绑定实例的UserID，为后续多会话预留参数
        # @type UserId: String
        # @param DesktopName: 拉取桌面title，用户可自行定义，默认为云桌面实例名称
        # @type DesktopName: String
        # @param Force: 是否抢占桌面，即桌面使用过程中，抢占登录。
        # true：抢占登录
        # false：非抢占登录
        # 默认为抢占登录
        # @type Force: Boolean
        # @param IsInternal: 是否内网方式
        # @type IsInternal: Boolean

        attr_accessor :InstanceId, :UserId, :DesktopName, :Force, :IsInternal

        def initialize(instanceid=nil, userid=nil, desktopname=nil, force=nil, isinternal=nil)
          @InstanceId = instanceid
          @UserId = userid
          @DesktopName = desktopname
          @Force = force
          @IsInternal = isinternal
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserId = params['UserId']
          @DesktopName = params['DesktopName']
          @Force = params['Force']
          @IsInternal = params['IsInternal']
        end
      end

      # DescribeInstanceLoginMsg返回参数结构体
      class DescribeInstanceLoginMsgResponse < TencentCloud::Common::AbstractModel
        # @param LoginMsg: 桌面登录login信息
        # @type LoginMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoginMsg, :RequestId

        def initialize(loginmsg=nil, requestid=nil)
          @LoginMsg = loginmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @LoginMsg = params['LoginMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceMonitorData请求参数结构体
      class DescribeInstanceMonitorDataRequest < TencentCloud::Common::AbstractModel
        # @param Instances: <p>实例维度组合数组</p>
        # @type Instances: Array
        # @param NameSpace: <p>命名空间。如QCE/CVM、QCE/BLOCK_STORAGE等</p>
        # @type NameSpace: String
        # @param MetricName: <p>指标名</p>
        # @type MetricName: String
        # @param Period: <p>统计周期(时间粒度), 单位s。</p>
        # @type Period: Integer
        # @param StartTime: <p>开始时间</p>
        # @type StartTime: String
        # @param EndTime: <p>结束时间</p>
        # @type EndTime: String
        # @param SpecifyStatistics: <p>多种统计方式数据。avg, max, min (1,2,4)可以自由组合</p>
        # @type SpecifyStatistics: Integer

        attr_accessor :Instances, :NameSpace, :MetricName, :Period, :StartTime, :EndTime, :SpecifyStatistics

        def initialize(instances=nil, namespace=nil, metricname=nil, period=nil, starttime=nil, endtime=nil, specifystatistics=nil)
          @Instances = instances
          @NameSpace = namespace
          @MetricName = metricname
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @SpecifyStatistics = specifystatistics
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              instance_tmp = Instance.new
              instance_tmp.deserialize(i)
              @Instances << instance_tmp
            end
          end
          @NameSpace = params['NameSpace']
          @MetricName = params['MetricName']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SpecifyStatistics = params['SpecifyStatistics']
        end
      end

      # DescribeInstanceMonitorData返回参数结构体
      class DescribeInstanceMonitorDataResponse < TencentCloud::Common::AbstractModel
        # @param MetricName: <p>指标名</p>
        # @type MetricName: String
        # @param Period: <p>统计周期</p>
        # @type Period: Integer
        # @param StartTime: <p>开始时间</p>
        # @type StartTime: String
        # @param EndTime: <p>结束时间</p>
        # @type EndTime: String
        # @param DataPoints: <p>数据点数组</p>
        # @type DataPoints: Array
        # @param Msg: <p>message信息</p>
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MetricName, :Period, :StartTime, :EndTime, :DataPoints, :Msg, :RequestId

        def initialize(metricname=nil, period=nil, starttime=nil, endtime=nil, datapoints=nil, msg=nil, requestid=nil)
          @MetricName = metricname
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @DataPoints = datapoints
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['DataPoints'].nil?
            @DataPoints = []
            params['DataPoints'].each do |i|
              datapoint_tmp = DataPoint.new
              datapoint_tmp.deserialize(i)
              @DataPoints << datapoint_tmp
            end
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceRegionDistribution请求参数结构体
      class DescribeInstanceRegionDistributionRequest < TencentCloud::Common::AbstractModel
        # @param Regions: <p>查询区域列表</p>
        # @type Regions: Array
        # @param Types: <p>查询实例类型列表</p>
        # @type Types: Array
        # @param UserId: <p>查询用户拥有的云桌面地域分布信息</p>
        # @type UserId: String

        attr_accessor :Regions, :Types, :UserId

        def initialize(regions=nil, types=nil, userid=nil)
          @Regions = regions
          @Types = types
          @UserId = userid
        end

        def deserialize(params)
          @Regions = params['Regions']
          @Types = params['Types']
          @UserId = params['UserId']
        end
      end

      # DescribeInstanceRegionDistribution返回参数结构体
      class DescribeInstanceRegionDistributionResponse < TencentCloud::Common::AbstractModel
        # @param DistributionInfo: <p>各区域实例个数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DistributionInfo: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DistributionInfo, :RequestId

        def initialize(distributioninfo=nil, requestid=nil)
          @DistributionInfo = distributioninfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DistributionInfo'].nil?
            @DistributionInfo = []
            params['DistributionInfo'].each do |i|
              distributioninfo_tmp = DistributionInfo.new
              distributioninfo_tmp.deserialize(i)
              @DistributionInfo << distributioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesBindStatus请求参数结构体
      class DescribeInstancesBindStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: <p>拉取的桌面id列表</p>
        # @type InstanceIds: Array
        # @param InstanceRegion: <p>实例所在区域</p>
        # @type InstanceRegion: String

        attr_accessor :InstanceIds, :InstanceRegion

        def initialize(instanceids=nil, instanceregion=nil)
          @InstanceIds = instanceids
          @InstanceRegion = instanceregion
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @InstanceRegion = params['InstanceRegion']
        end
      end

      # DescribeInstancesBindStatus返回参数结构体
      class DescribeInstancesBindStatusResponse < TencentCloud::Common::AbstractModel
        # @param InstanceBindStatusList: <p>桌面实例状态列表</p>
        # @type InstanceBindStatusList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceBindStatusList, :RequestId

        def initialize(instancebindstatuslist=nil, requestid=nil)
          @InstanceBindStatusList = instancebindstatuslist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceBindStatusList'].nil?
            @InstanceBindStatusList = []
            params['InstanceBindStatusList'].each do |i|
              bindstatusinfo_tmp = BindStatusInfo.new
              bindstatusinfo_tmp.deserialize(i)
              @InstanceBindStatusList << bindstatusinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 拉取页号
        # @type PageNumber: Integer
        # @param PageSize: 每页拉取个数
        # @type PageSize: Integer
        # @param Filters: Name取值范围："InstanceId"      按照云桌面ID搜索，云桌面ID示例：cdi-l0dfy594htvbn37"Name"     按照云桌面名称搜索 "Region"     按照云桌面所在地域搜索，目前云桌面所支持的地域：        ap-beijing：北京        ap-shanghai：上海        ap-guangzhou：广州        ap-shanghai-adc：上海自动驾驶云"Type"    按照云桌面类型搜索，类型取值：        S3L.MEDIUM4：云桌面-标准S3_2核4G        S3L.LARGE8：云桌面-标准S3_4核8G        S3L.LARGE16：云桌面-标准S3_4核16G        S3L.2XLARGE16：云桌面-标准S3_8核16G        S1L.LARGE8：云桌面-标准S1_4核8G        S1L.LARGE16：云桌面-标准S1_4核16G        S2L.2XLARGE16：云桌面-标准S2_8核16G        G1L.LARGE16：云桌面-图形G1_4核16G        G1L.2XLARGE32：云桌面-图形G1_8核32G        G1L.4XLARGE64：云桌面-图形G1_16核64G        G2L.LARGE24：云桌面-图形G2_6核24G        G2L.3XLARGE58：云桌面-图形G2_14核58G	        G2L.3XLARGE44：云桌面-图形G2_12核44G         G3L.LARGE16：云桌面-图形G3_4核16G	        G3L.5XMEDIUM40：云桌面-图形G3_10核40G	        G3L.5XLARGE80：云桌面-图形G3_20核80G        G4L.5XMEDIUM40：云桌面-图形G4_10核40G        G4L.11XMEDIUM80：云桌面-图形G4_22核80G        G4L.11XLARGE160：云桌面-图形G4_44核160G        G5L.5XMEDIUM40：云桌面-图形G5_10核40G	        G5L.5XLARGE80：云桌面-图形G5_22核80G        G5L.21XMEDIUM160：云桌面-图形G5_42核160G        G5L.21XLARGE320：云桌面-图形G5_84核320G	"ImageId"    按照镜像ID搜索，镜像ID示例：img-ed892xcd2"ChargeType"    按着计费模式搜索，目前支持的计费模式为：         PREPAID：包年包月        POSTPAID_BY_HOUR：按量计费 "HostName"    按照云桌面机器名称搜索，云桌面机器名示例：l0dfy594htvbn37"Status"    按照桌面状态搜索，云桌面状态：        PENDING：创建中        STARTING：开机中        REBOOTING：重启中        ROLLBACKING：回滚中        RESETTING：重置中        STOPPING：关机中        TERMINATING：销毁中        RUNNING：运行中        USING：使用中        STOPPED：关机        ISOLATING ：隔离中，只返回最近24小时数据        SHUTDOWN：销毁，只返回最近24小时数据        DELETED：销毁和SHUTDOWN意义一致，只返回最近24小时数据        LAUNCH_FAILED：创建失败，只返回最近24小时数据"UserId"    按照绑定的用户ID搜索，用户ID示例: us-6b36f283c302481bb83bsdswdefqdqwerqw"UserVpcId"    按照云桌面所属vpc搜索，VPCID示例: vpc-0ji679xf"UserSubnetId"    按照云桌面所属子网搜索，SubnetID示例: subnet-0ji679xf"UserPrivateIp"    按照云桌面IP搜索"Keyword"    按照云桌面绑定的用户名搜索，Values每次只取第一个值"SecurityGroupId"    按照云桌面关联安全组搜索，Values每次只取第一个值,安全组ID实例：sg-0ji679xf"AssociateSG"    按照可以关联安全组搜索，Values每次只取第一个值,安全组ID实例：sg-0ji679xf"DomainControlPolicyId"    按照云桌面关联域名管控策略搜索，Values每次只取第一个值,安全组ID实例：domain-0ji679xf "AssociateDomainControlPolicy"    按照可以关联域名策略搜索        ①若已有域名策略关联桌面情况：Values每次只取第一个值,安全组ID实例：domain-0ji679xf         ②若新建域名策略关联桌面情况，Values传空"Uin"    外部租户请勿使用"AppId"    外部租户请勿使用"ImageName"    废弃
        # @type Filters: Array

        attr_accessor :PageNumber, :PageSize, :Filters

        def initialize(pagenumber=nil, pagesize=nil, filters=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
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

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: 返回查询到的所有实例信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param Total: 返回当前查询到的实例总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceList, :Total, :RequestId

        def initialize(instancelist=nil, total=nil, requestid=nil)
          @InstanceList = instancelist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @InstanceList << instanceinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesStatus请求参数结构体
      class DescribeInstancesStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: <p>查询的实例id列表</p>
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeInstancesStatus返回参数结构体
      class DescribeInstancesStatusResponse < TencentCloud::Common::AbstractModel
        # @param InstanceStatusList: <p>实例状态列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStatusList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceStatusList, :RequestId

        def initialize(instancestatuslist=nil, requestid=nil)
          @InstanceStatusList = instancestatuslist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceStatusList'].nil?
            @InstanceStatusList = []
            params['InstanceStatusList'].each do |i|
              instancestatus_tmp = InstanceStatus.new
              instancestatus_tmp.deserialize(i)
              @InstanceStatusList << instancestatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInvocationDetail请求参数结构体
      class DescribeInvocationDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>云桌面实例ID。</p>
        # @type InstanceId: String
        # @param InvokeId: <p>任务ID。</p>
        # @type InvokeId: String
        # @param OutputLinesOffset: <p>需要返回的任务输出行号起始索引。</p>
        # @type OutputLinesOffset: Integer
        # @param OutputLinesLimit: <p>需要返回的任务输出行数。</p>
        # @type OutputLinesLimit: Integer
        # @param MergeOutputLines: <p>任务的输出内容是否合并成一个字符串。默认为true。</p>
        # @type MergeOutputLines: Boolean

        attr_accessor :InstanceId, :InvokeId, :OutputLinesOffset, :OutputLinesLimit, :MergeOutputLines

        def initialize(instanceid=nil, invokeid=nil, outputlinesoffset=nil, outputlineslimit=nil, mergeoutputlines=nil)
          @InstanceId = instanceid
          @InvokeId = invokeid
          @OutputLinesOffset = outputlinesoffset
          @OutputLinesLimit = outputlineslimit
          @MergeOutputLines = mergeoutputlines
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InvokeId = params['InvokeId']
          @OutputLinesOffset = params['OutputLinesOffset']
          @OutputLinesLimit = params['OutputLinesLimit']
          @MergeOutputLines = params['MergeOutputLines']
        end
      end

      # DescribeInvocationDetail返回参数结构体
      class DescribeInvocationDetailResponse < TencentCloud::Common::AbstractModel
        # @param Detail: <p>实例上任务执行的详细情况。</p>
        # @type Detail: :class:`Tencentcloud::Cvd.v20201104.models.Invocation`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Detail, :RequestId

        def initialize(detail=nil, requestid=nil)
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Detail'].nil?
            @Detail = Invocation.new
            @Detail.deserialize(params['Detail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInvocations请求参数结构体
      class DescribeInvocationsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>云桌面实例ID。</p>
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInvocations返回参数结构体
      class DescribeInvocationsResponse < TencentCloud::Common::AbstractModel
        # @param Invocations: <p>该实例上的任务列表。不会返回Output字段。</p>
        # @type Invocations: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Invocations, :RequestId

        def initialize(invocations=nil, requestid=nil)
          @Invocations = invocations
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Invocations'].nil?
            @Invocations = []
            params['Invocations'].each do |i|
              invocation_tmp = Invocation.new
              invocation_tmp.deserialize(i)
              @Invocations << invocation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePolicyDetail请求参数结构体
      class DescribePolicyDetailRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: <p>拉取页号</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页最大显示个数，最大值不超过100</p>
        # @type PageSize: Integer
        # @param Filters: <p>查询条件（暂时无效，保留字段）</p>
        # @type Filters: Array

        attr_accessor :PageNumber, :PageSize, :Filters

        def initialize(pagenumber=nil, pagesize=nil, filters=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
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

      # DescribePolicyDetail返回参数结构体
      class DescribePolicyDetailResponse < TencentCloud::Common::AbstractModel
        # @param PolicyList: <p>策略详细信息列表</p>
        # @type PolicyList: Array
        # @param Total: <p>当前查询到的策略总数</p>
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyList, :Total, :RequestId

        def initialize(policylist=nil, total=nil, requestid=nil)
          @PolicyList = policylist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PolicyList'].nil?
            @PolicyList = []
            params['PolicyList'].each do |i|
              policydetail_tmp = PolicyDetail.new
              policydetail_tmp.deserialize(i)
              @PolicyList << policydetail_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityGroups请求参数结构体
      class DescribeSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: <p>页号，从1开始</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页最大展示数量，默认20，最大100</p>
        # @type PageSize: Integer
        # @param SecurityGroupRegion: <p>地域</p>
        # @type SecurityGroupRegion: String

        attr_accessor :PageNumber, :PageSize, :SecurityGroupRegion

        def initialize(pagenumber=nil, pagesize=nil, securitygroupregion=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @SecurityGroupRegion = securitygroupregion
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @SecurityGroupRegion = params['SecurityGroupRegion']
        end
      end

      # DescribeSecurityGroups返回参数结构体
      class DescribeSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeSnapshots请求参数结构体
      class DescribeSnapshotsRequest < TencentCloud::Common::AbstractModel
        # @param SnapshotRegion: <p>快照所在的地域</p>
        # @type SnapshotRegion: String
        # @param PageNumber: <p>页号</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小，最大100，默认20</p>
        # @type PageSize: Integer
        # @param Filters: <p>检索条件，Filter的name取值：<br>InstanceId：实例ID，返回当前实例挂载的云硬盘关联的快照信息<br>DiskId：云硬盘ID，返回当前云硬盘关联的快照信息</p>
        # @type Filters: Array

        attr_accessor :SnapshotRegion, :PageNumber, :PageSize, :Filters

        def initialize(snapshotregion=nil, pagenumber=nil, pagesize=nil, filters=nil)
          @SnapshotRegion = snapshotregion
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
        end

        def deserialize(params)
          @SnapshotRegion = params['SnapshotRegion']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
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

      # DescribeSnapshots返回参数结构体
      class DescribeSnapshotsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>当前检索条件可查询到的快照总数</p>
        # @type TotalCount: Integer
        # @param SnapshotList: <p>快照明细列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SnapshotList, :RequestId

        def initialize(totalcount=nil, snapshotlist=nil, requestid=nil)
          @TotalCount = totalcount
          @SnapshotList = snapshotlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SnapshotList'].nil?
            @SnapshotList = []
            params['SnapshotList'].each do |i|
              snapshotinfo_tmp = SnapshotInfo.new
              snapshotinfo_tmp.deserialize(i)
              @SnapshotList << snapshotinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsage请求参数结构体
      class DescribeUsageRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询起始时间，最小不能超过当前时间 90 天前，取 unix 时间戳
        # @type StartTime: Integer
        # @param EndTime: 查询截止时间，取 unix 时间戳
        # @type EndTime: Integer
        # @param PageSize: 每页查询信息条数，默认 20，最大 100
        # @type PageSize: Integer
        # @param PageNumber: 页号，起始页为 1，不填默认为 1
        # @type PageNumber: Integer
        # @param QueryKey: 查询key，每次查询会返回
        # @type QueryKey: String
        # @param Filters: 查询条件，Name可选为：
        # InstanceId按照实例ID搜索
        # UserName按照绑定的用户搜索，只取Values的第一个值
        # ChareType按照计费类型搜索
        # InstanceType按照实例类型搜索
        # @type Filters: Array
        # @param SortType: 指定的排序方式，默认不排序
        # 1:使用时间，升序
        # 2:使用时间，降序
        # 3:空闲时间，升序
        # 4:空闲时间，降序
        # @type SortType: Integer

        attr_accessor :StartTime, :EndTime, :PageSize, :PageNumber, :QueryKey, :Filters, :SortType

        def initialize(starttime=nil, endtime=nil, pagesize=nil, pagenumber=nil, querykey=nil, filters=nil, sorttype=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNumber = pagenumber
          @QueryKey = querykey
          @Filters = filters
          @SortType = sorttype
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @QueryKey = params['QueryKey']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @SortType = params['SortType']
        end
      end

      # DescribeUsage返回参数结构体
      class DescribeUsageResponse < TencentCloud::Common::AbstractModel
        # @param Total: 检索出相关使用详情总数
        # @type Total: Integer
        # @param QueryKey: 查询 key，作为翻页查询入参
        # @type QueryKey: String
        # @param UsageSet: 使用时长详情
        # @type UsageSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :QueryKey, :UsageSet, :RequestId

        def initialize(total=nil, querykey=nil, usageset=nil, requestid=nil)
          @Total = total
          @QueryKey = querykey
          @UsageSet = usageset
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @QueryKey = params['QueryKey']
          unless params['UsageSet'].nil?
            @UsageSet = []
            params['UsageSet'].each do |i|
              usage_tmp = Usage.new
              usage_tmp.deserialize(i)
              @UsageSet << usage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsers请求参数结构体
      class DescribeUsersRequest < TencentCloud::Common::AbstractModel
        # @param Keyword: <p>搜索关键字。</p>
        # @type Keyword: String
        # @param PageNumber: <p>页面编号。从1开始</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>页面大小。默认20，不超过100。</p>
        # @type PageSize: Integer
        # @param DepartmentId: <p>部门ID。</p>
        # @type DepartmentId: String

        attr_accessor :Keyword, :PageNumber, :PageSize, :DepartmentId

        def initialize(keyword=nil, pagenumber=nil, pagesize=nil, departmentid=nil)
          @Keyword = keyword
          @PageNumber = pagenumber
          @PageSize = pagesize
          @DepartmentId = departmentid
        end

        def deserialize(params)
          @Keyword = params['Keyword']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @DepartmentId = params['DepartmentId']
        end
      end

      # DescribeUsers返回参数结构体
      class DescribeUsersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>符合条件的用户个数。</p>
        # @type TotalCount: Integer
        # @param Users: <p>用户列表。</p>
        # @type Users: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Users, :RequestId

        def initialize(totalcount=nil, users=nil, requestid=nil)
          @TotalCount = totalcount
          @Users = users
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              user_tmp = User.new
              user_tmp.deserialize(i)
              @Users << user_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 实例对象的维度组合
      class Dimension < TencentCloud::Common::AbstractModel
        # @param Name: 实例维度名称
        # @type Name: String
        # @param Value: 实例维度值
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

      # DisassociateSecurityGroup请求参数结构体
      class DisassociateSecurityGroupRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DisassociateSecurityGroup返回参数结构体
      class DisassociateSecurityGroupResponse < TencentCloud::Common::AbstractModel
        # @param FailureSet: 解关联失败的云桌面列表
        # @type FailureSet: Array
        # @param SuccessSet: 解关联成功的云桌面列表
        # @type SuccessSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailureSet, :SuccessSet, :RequestId

        def initialize(failureset=nil, successset=nil, requestid=nil)
          @FailureSet = failureset
          @SuccessSet = successset
          @RequestId = requestid
        end

        def deserialize(params)
          @FailureSet = params['FailureSet']
          @SuccessSet = params['SuccessSet']
          @RequestId = params['RequestId']
        end
      end

      # 桌面实例挂载磁盘信息
      class Disk < TencentCloud::Common::AbstractModel
        # @param DiskType: <p>磁盘类型：<br>CLOUD_SSD：SSD云硬盘<br>CLOUD_PREMIUM：高性能云硬盘</p>
        # @type DiskType: String
        # @param DiskSize: <p>磁盘大小（单位G）<br>系统盘最小值50，最大值500<br>数据盘最小值10，最大值32000。最小调整步长为10G</p>
        # @type DiskSize: Integer
        # @param DiskId: <p>磁盘id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskId: String

        attr_accessor :DiskType, :DiskSize, :DiskId

        def initialize(disktype=nil, disksize=nil, diskid=nil)
          @DiskType = disktype
          @DiskSize = disksize
          @DiskId = diskid
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @DiskId = params['DiskId']
        end
      end

      # 各地域实例个数信息
      class DistributionInfo < TencentCloud::Common::AbstractModel
        # @param Region: <p>地域描述</p>
        # @type Region: String
        # @param Count: <p>实例个数</p>
        # @type Count: Integer

        attr_accessor :Region, :Count

        def initialize(region=nil, count=nil)
          @Region = region
          @Count = count
        end

        def deserialize(params)
          @Region = params['Region']
          @Count = params['Count']
        end
      end

      # 域名控制策略详情
      class DomainControlDetail < TencentCloud::Common::AbstractModel
        # @param Domain: 配置域名
        # @type Domain: String
        # @param Address: 此参数必填，新版本无异议，请求包和回包强制填写空字符串,做校验
        # @type Address: String
        # @param Description: 规则描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :Domain, :Address, :Description

        def initialize(domain=nil, address=nil, description=nil)
          @Domain = domain
          @Address = address
          @Description = description
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Address = params['Address']
          @Description = params['Description']
        end
      end

      # 查询因子
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 要匹配的参数名
        # @type Name: String
        # @param Values: 要匹配的参数值
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

      # 云桌面镜像信息
      class ImageInfo < TencentCloud::Common::AbstractModel
        # @param ImageID: <p>镜像id</p>
        # @type ImageID: String
        # @param ImageName: <p>镜像名称</p>
        # @type ImageName: String
        # @param ImageType: <p>镜像类型：<br>PUBLIC_IMAGE-公共镜像<br>PRIVATE_IMAGE-自定义镜像<br>TENCENT_OFFICE_IMAGE-腾讯办公镜像</p>
        # @type ImageType: String
        # @param ImageState: <p>镜像状态：<br>CREATING-创建中<br>NORMAL-正常<br>CREATEFAILED-创建失败<br>USING-使用中<br>SYNCING-同步中<br>IMPORTING-导入中<br>IMPORTFAILED-导入失败<br>INVISIBLE-淘汰的镜像<br>DELETIING-删除中<br>DELETED-删除的</p>
        # @type ImageState: String
        # @param OsName: <p>镜像操作系统</p>
        # @type OsName: String
        # @param ImageSize: <p>镜像大小（单位G）</p>
        # @type ImageSize: Integer
        # @param Description: <p>镜像描述</p>
        # @type Description: String
        # @param Region: <p>镜像所在区域</p>
        # @type Region: String
        # @param CoreType: <p>内核类型：<br>CPU<br>GPU<br>GPU_A10<br>GPU_RTX6000<br>GPU_2080Ti<br>GPU_3080Ti</p>
        # @type CoreType: String
        # @param CvmImageId: <p>cvm侧镜像id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CvmImageId: String
        # @param IsWhole: <p>是否是整机镜像，整机镜像无法用于桌面重置<br>true：整机镜像<br>false: 不是整机镜像</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsWhole: Boolean
        # @param DataDiskSize: <p>整机镜像中数据盘大小</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataDiskSize: Integer
        # @param CreateTime: <p>镜像创建时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String

        attr_accessor :ImageID, :ImageName, :ImageType, :ImageState, :OsName, :ImageSize, :Description, :Region, :CoreType, :CvmImageId, :IsWhole, :DataDiskSize, :CreateTime

        def initialize(imageid=nil, imagename=nil, imagetype=nil, imagestate=nil, osname=nil, imagesize=nil, description=nil, region=nil, coretype=nil, cvmimageid=nil, iswhole=nil, datadisksize=nil, createtime=nil)
          @ImageID = imageid
          @ImageName = imagename
          @ImageType = imagetype
          @ImageState = imagestate
          @OsName = osname
          @ImageSize = imagesize
          @Description = description
          @Region = region
          @CoreType = coretype
          @CvmImageId = cvmimageid
          @IsWhole = iswhole
          @DataDiskSize = datadisksize
          @CreateTime = createtime
        end

        def deserialize(params)
          @ImageID = params['ImageID']
          @ImageName = params['ImageName']
          @ImageType = params['ImageType']
          @ImageState = params['ImageState']
          @OsName = params['OsName']
          @ImageSize = params['ImageSize']
          @Description = params['Description']
          @Region = params['Region']
          @CoreType = params['CoreType']
          @CvmImageId = params['CvmImageId']
          @IsWhole = params['IsWhole']
          @DataDiskSize = params['DataDiskSize']
          @CreateTime = params['CreateTime']
        end
      end

      # 实例维度组合数组
      class Instance < TencentCloud::Common::AbstractModel
        # @param Dimensions: 实例的维度组合
        # @type Dimensions: Array

        attr_accessor :Dimensions

        def initialize(dimensions=nil)
          @Dimensions = dimensions
        end

        def deserialize(params)
          unless params['Dimensions'].nil?
            @Dimensions = []
            params['Dimensions'].each do |i|
              dimension_tmp = Dimension.new
              dimension_tmp.deserialize(i)
              @Dimensions << dimension_tmp
            end
          end
        end
      end

      # 云桌面实例详细信息
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例id</p>
        # @type InstanceId: String
        # @param Name: <p>实例名称</p>
        # @type Name: String
        # @param Status: <p>实例状态<br>PENDING：表示创建中<br>LAUNCH_FAILED：表示创建失败<br>RUNNING：表示运行中<br>STOPPED：表示关机<br>STARTING：表示开机中<br>STOPPING：表示关机中<br>REBOOTING：表示重启中<br>SHUTDOWN：表示停止待销毁<br>TERMINATING：表示销毁中<br>DELETED：表示资源已经销毁，这个状态是业务层面的状态，cvm如果销毁了，在cvm侧资源已经不存在了<br>FAILED：表示资源创建失败.这个是业务层面的状态<br>ROLLBACKING：表示回滚中<br>USING：表示使用中<br>RESETTING：表示重置中.</p>
        # @type Status: String
        # @param UserName: <p>实例拥有者名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param UserId: <p>实例</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param InstanceType: <p>实例规格<br>S1.LARGE8：4VCPU 2.5GHZ主频 8G内存 无显卡<br>S1.LARGE16：4VCPU 2.5GHZ主频 16G内存 无显卡<br>S2.2XLARGE16：8VCPU 3.2GHZ主频 16G内存 无显卡<br>G1.LARGE16：4VCPU 2.5GHZ主频 16G内存 1/4 NVIDIA T4<br>G1.2XLARGE32：8VCPU 2.5GHZ主频 32G内存 1/2 NVIDIA T4<br>G1.4XLARGE64：16VCPU 2.5GHZ主频 64G内存 1 NVIDIA T4</p>
        # @type InstanceType: String
        # @param SysDisk: <p>系统盘信息</p>
        # @type SysDisk: :class:`Tencentcloud::Cvd.v20201104.models.Disk`
        # @param DataDiskList: <p>挂载的数据盘信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataDiskList: Array
        # @param Region: <p>桌面实例所在的区域</p>
        # @type Region: String
        # @param ChargeType: <p>桌面计费类型</p>
        # @type ChargeType: String
        # @param AutoRenewFlag: <p>自动续费标识。取值范围：<br>NOTIFY_AND_MANUAL_RENEW：表示通知即将过期，但不自动续费<br>NOTIFY_AND_AUTO_RENEW：表示通知即将过期，而且自动续费<br>DISABLE_NOTIFY_AND_MANUAL_RENEW：表示不通知即将过期，也不自动续费。</p><p>注意：后付费模式本项为null</p>
        # @type AutoRenewFlag: String
        # @param CreateTime: <p>桌面创建时间</p>
        # @type CreateTime: String
        # @param ExpiredTime: <p>桌面过期时间</p>
        # @type ExpiredTime: String
        # @param Description: <p>桌面描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param HostName: <p>桌面hostname</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostName: String
        # @param DisplayName: <p>桌面拥有者显示名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayName: String
        # @param BindStatus: <p>桌面绑定状态。取值：<br>UNBOUND - 未绑定<br>BINDING - 绑定中<br>BOUND - 绑定</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindStatus: String
        # @param ImageId: <p>创建桌面的镜像id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageId: String
        # @param UserVpcId: <p>用户桌面vpc id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserVpcId: String
        # @param UserSubnetId: <p>用户桌面子网 id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserSubnetId: String
        # @param UserPrivateIp: <p>用户桌面ip</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserPrivateIp: String
        # @param IsolatedTime: <p>机器回收站到期时间，只有机器状态为SHUTDOWN该值才有意义</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolatedTime: String
        # @param LastStatusChangeReason: <p>最近一次状态变更原因, AUTO:被动变更,如欠费,如包月实例到期, MANUAL:主动变更,如主动退还实例，当前只有机器处于ISOLATING、SHUTDOWN、TERMINATING、DELETED该字段有意义</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastStatusChangeReason: String
        # @param LatestOperation: <p>机器最近一次操作</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestOperation: String
        # @param LatestOperationState: <p>机器最近一次操作状态</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestOperationState: String
        # @param LatestOperationRequestID: <p>机器最近一次操作请求ReqId</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestOperationRequestID: String
        # @param OsName: <p>机器操作系统名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsName: String
        # @param SetId: <p>实例逻辑set</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SetId: String
        # @param AppId: <p>应用id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param Uin: <p>账号id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param SecurityGroups: <p>关联的安全组ID列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroups: Array
        # @param DownGradeTimes: <p>预付费实例降配次数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownGradeTimes: Integer
        # @param DomainControlPolicies: <p>桌面绑定的域名策略ID列表，最多五个</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainControlPolicies: Array
        # @param WaterMarkPolicy: <p>桌面绑定的水印策略</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WaterMarkPolicy: String
        # @param ScreenRecordingPolicy: <p>桌面绑定的录屏策略ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScreenRecordingPolicy: String
        # @param DomainControlPolicyType: <p>WHITE --- 白名单策略<br>BLACK --- 黑名单策略</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainControlPolicyType: String
        # @param RunControlPolicy: <p>桌面绑定的运行管控策略</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunControlPolicy: String
        # @param InstallControlPolicy: <p>桌面绑定的安装管控策略</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstallControlPolicy: String
        # @param AnonymousAccess: <p>桌面是否绑定匿名用户</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnonymousAccess: Boolean
        # @param Tags: <p>实例绑定的标签</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :InstanceId, :Name, :Status, :UserName, :UserId, :InstanceType, :SysDisk, :DataDiskList, :Region, :ChargeType, :AutoRenewFlag, :CreateTime, :ExpiredTime, :Description, :HostName, :DisplayName, :BindStatus, :ImageId, :UserVpcId, :UserSubnetId, :UserPrivateIp, :IsolatedTime, :LastStatusChangeReason, :LatestOperation, :LatestOperationState, :LatestOperationRequestID, :OsName, :SetId, :AppId, :Uin, :SecurityGroups, :DownGradeTimes, :DomainControlPolicies, :WaterMarkPolicy, :ScreenRecordingPolicy, :DomainControlPolicyType, :RunControlPolicy, :InstallControlPolicy, :AnonymousAccess, :Tags

        def initialize(instanceid=nil, name=nil, status=nil, username=nil, userid=nil, instancetype=nil, sysdisk=nil, datadisklist=nil, region=nil, chargetype=nil, autorenewflag=nil, createtime=nil, expiredtime=nil, description=nil, hostname=nil, displayname=nil, bindstatus=nil, imageid=nil, uservpcid=nil, usersubnetid=nil, userprivateip=nil, isolatedtime=nil, laststatuschangereason=nil, latestoperation=nil, latestoperationstate=nil, latestoperationrequestid=nil, osname=nil, setid=nil, appid=nil, uin=nil, securitygroups=nil, downgradetimes=nil, domaincontrolpolicies=nil, watermarkpolicy=nil, screenrecordingpolicy=nil, domaincontrolpolicytype=nil, runcontrolpolicy=nil, installcontrolpolicy=nil, anonymousaccess=nil, tags=nil)
          @InstanceId = instanceid
          @Name = name
          @Status = status
          @UserName = username
          @UserId = userid
          @InstanceType = instancetype
          @SysDisk = sysdisk
          @DataDiskList = datadisklist
          @Region = region
          @ChargeType = chargetype
          @AutoRenewFlag = autorenewflag
          @CreateTime = createtime
          @ExpiredTime = expiredtime
          @Description = description
          @HostName = hostname
          @DisplayName = displayname
          @BindStatus = bindstatus
          @ImageId = imageid
          @UserVpcId = uservpcid
          @UserSubnetId = usersubnetid
          @UserPrivateIp = userprivateip
          @IsolatedTime = isolatedtime
          @LastStatusChangeReason = laststatuschangereason
          @LatestOperation = latestoperation
          @LatestOperationState = latestoperationstate
          @LatestOperationRequestID = latestoperationrequestid
          @OsName = osname
          @SetId = setid
          @AppId = appid
          @Uin = uin
          @SecurityGroups = securitygroups
          @DownGradeTimes = downgradetimes
          @DomainControlPolicies = domaincontrolpolicies
          @WaterMarkPolicy = watermarkpolicy
          @ScreenRecordingPolicy = screenrecordingpolicy
          @DomainControlPolicyType = domaincontrolpolicytype
          @RunControlPolicy = runcontrolpolicy
          @InstallControlPolicy = installcontrolpolicy
          @AnonymousAccess = anonymousaccess
          @Tags = tags
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Status = params['Status']
          @UserName = params['UserName']
          @UserId = params['UserId']
          @InstanceType = params['InstanceType']
          unless params['SysDisk'].nil?
            @SysDisk = Disk.new
            @SysDisk.deserialize(params['SysDisk'])
          end
          unless params['DataDiskList'].nil?
            @DataDiskList = []
            params['DataDiskList'].each do |i|
              disk_tmp = Disk.new
              disk_tmp.deserialize(i)
              @DataDiskList << disk_tmp
            end
          end
          @Region = params['Region']
          @ChargeType = params['ChargeType']
          @AutoRenewFlag = params['AutoRenewFlag']
          @CreateTime = params['CreateTime']
          @ExpiredTime = params['ExpiredTime']
          @Description = params['Description']
          @HostName = params['HostName']
          @DisplayName = params['DisplayName']
          @BindStatus = params['BindStatus']
          @ImageId = params['ImageId']
          @UserVpcId = params['UserVpcId']
          @UserSubnetId = params['UserSubnetId']
          @UserPrivateIp = params['UserPrivateIp']
          @IsolatedTime = params['IsolatedTime']
          @LastStatusChangeReason = params['LastStatusChangeReason']
          @LatestOperation = params['LatestOperation']
          @LatestOperationState = params['LatestOperationState']
          @LatestOperationRequestID = params['LatestOperationRequestID']
          @OsName = params['OsName']
          @SetId = params['SetId']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @SecurityGroups = params['SecurityGroups']
          @DownGradeTimes = params['DownGradeTimes']
          @DomainControlPolicies = params['DomainControlPolicies']
          @WaterMarkPolicy = params['WaterMarkPolicy']
          @ScreenRecordingPolicy = params['ScreenRecordingPolicy']
          @DomainControlPolicyType = params['DomainControlPolicyType']
          @RunControlPolicy = params['RunControlPolicy']
          @InstallControlPolicy = params['InstallControlPolicy']
          @AnonymousAccess = params['AnonymousAccess']
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

      # 实例状态
      class InstanceStatus < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Status: 实例状态
        # PENDING：表示创建中
        # LAUNCH_FAILED：表示创建失败
        # RUNNING：表示运行中
        # STOPPED：表示关机
        # STARTING：表示开机中
        # STOPPING：表示关机中
        # REBOOTING：表示重启中
        # SHUTDOWN：表示停止待销毁
        # TERMINATING：表示销毁中
        # DELETED：表示资源已经销毁，这个状态是业务层面的状态，cvm如果销毁了，在cvm测资源已经不存在了
        # FAILED：表示资源创建失败.这个是业务层面的状态
        # ROLLBACKING：表示机器正在回滚中
        # RESETTING：表示机器正在重置中
        # USING：表示机器正在使用中
        # @type Status: String
        # @param SessionState: 只有在Status为RUNNING时候，当前值才有意义
        # 取值范围：
        # 0:Unknown
        # 1:Connected
        # 2:Disconnected
        # 3:Terminated
        # 4:PreparingSession
        # 5:Active
        # 6:Reconnecting
        # 7:NonBrokeredSession
        # 8:Other
        # 9:Pending
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionState: Integer
        # @param IdleSeconds: 此字段只有在Status为USING时，才有效。
        # 字段意义：表示桌面当前session空闲时间（客户没有鼠标，键盘等操作），单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdleSeconds: Float
        # @param StatusChangeTime: 当前状态改变的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusChangeTime: Integer
        # @param LatestOperation: 实例最近一次操作类型
        # @type LatestOperation: String
        # @param LatestOperationState: 实例最近一次操作状态
        # @type LatestOperationState: String

        attr_accessor :InstanceId, :Status, :SessionState, :IdleSeconds, :StatusChangeTime, :LatestOperation, :LatestOperationState

        def initialize(instanceid=nil, status=nil, sessionstate=nil, idleseconds=nil, statuschangetime=nil, latestoperation=nil, latestoperationstate=nil)
          @InstanceId = instanceid
          @Status = status
          @SessionState = sessionstate
          @IdleSeconds = idleseconds
          @StatusChangeTime = statuschangetime
          @LatestOperation = latestoperation
          @LatestOperationState = latestoperationstate
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Status = params['Status']
          @SessionState = params['SessionState']
          @IdleSeconds = params['IdleSeconds']
          @StatusChangeTime = params['StatusChangeTime']
          @LatestOperation = params['LatestOperation']
          @LatestOperationState = params['LatestOperationState']
        end
      end

      # 脚本执行情况。
      class Invocation < TencentCloud::Common::AbstractModel
        # @param InvokeId: <p>脚本执行ID。</p>
        # @type InvokeId: String
        # @param Status: <p>运行状态。<li> Running：正在执行</li> <li>Finished：已经完成</li> <li>Failed：失败</li>  <li> Stopped：已停止</li></p>
        # @type Status: String
        # @param Output: <p>任务输出。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Cvd.v20201104.models.InvocationOutput`
        # @param ErrorCode: <p>任务失败时的错误码。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCode: String
        # @param ErrorInfo: <p>任务失败时的错误信息描述。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: String
        # @param ExitCode: <p>任务退出状态码</p>
        # @type ExitCode: Integer

        attr_accessor :InvokeId, :Status, :Output, :ErrorCode, :ErrorInfo, :ExitCode

        def initialize(invokeid=nil, status=nil, output=nil, errorcode=nil, errorinfo=nil, exitcode=nil)
          @InvokeId = invokeid
          @Status = status
          @Output = output
          @ErrorCode = errorcode
          @ErrorInfo = errorinfo
          @ExitCode = exitcode
        end

        def deserialize(params)
          @InvokeId = params['InvokeId']
          @Status = params['Status']
          unless params['Output'].nil?
            @Output = InvocationOutput.new
            @Output.deserialize(params['Output'])
          end
          @ErrorCode = params['ErrorCode']
          @ErrorInfo = params['ErrorInfo']
          @ExitCode = params['ExitCode']
        end
      end

      # 实例执行脚本任务结果详情
      class InvocationDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 id
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Region: 实例所在区域，目前支持的区域有：ap-beijing、ap-shanghai、ap-guangzhou、ap-shanghai-adc
        # @type Region: String
        # @param Status: 脚本任务执行状态，取值有：
        # Running-执行中
        # Finished-完成
        # Failed-失败
        # Stopped-终止
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param InvokeId: 实例上任务唯一 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvokeId: String
        # @param Output: 脚本任务输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: String
        # @param ExitCode: 任务退出码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExitCode: Integer
        # @param ErrorCode: 任务错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCode: String
        # @param ErrorInfo: 执行任务错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: String

        attr_accessor :InstanceId, :InstanceName, :Region, :Status, :InvokeId, :Output, :ExitCode, :ErrorCode, :ErrorInfo

        def initialize(instanceid=nil, instancename=nil, region=nil, status=nil, invokeid=nil, output=nil, exitcode=nil, errorcode=nil, errorinfo=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Region = region
          @Status = status
          @InvokeId = invokeid
          @Output = output
          @ExitCode = exitcode
          @ErrorCode = errorcode
          @ErrorInfo = errorinfo
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Region = params['Region']
          @Status = params['Status']
          @InvokeId = params['InvokeId']
          @Output = params['Output']
          @ExitCode = params['ExitCode']
          @ErrorCode = params['ErrorCode']
          @ErrorInfo = params['ErrorInfo']
        end
      end

      # 任务执行的标准输出。
      class InvocationOutput < TencentCloud::Common::AbstractModel
        # @param Lines: <p>任务的标准输出。</p>
        # @type Lines: Array
        # @param LinesOffset: <p>本次返回的输出第一行对应的索引编号。</p>
        # @type LinesOffset: Integer
        # @param LinesNum: <p>本次返回的输出的行数。</p>
        # @type LinesNum: Integer
        # @param Encoding: <p>输出的编码方式：<br>&lt;li&gt;PlainText 未经过Base64编码。</p>
        # @type Encoding: String
        # @param AllLinesOffset: <p>当前有效的输出起始编号，从0开始。输出过多，会冲掉旧的输出。</p>
        # @type AllLinesOffset: Integer
        # @param AllLinesNum: <p>当前有效的标准输出总行数。</p>
        # @type AllLinesNum: Integer

        attr_accessor :Lines, :LinesOffset, :LinesNum, :Encoding, :AllLinesOffset, :AllLinesNum

        def initialize(lines=nil, linesoffset=nil, linesnum=nil, encoding=nil, alllinesoffset=nil, alllinesnum=nil)
          @Lines = lines
          @LinesOffset = linesoffset
          @LinesNum = linesnum
          @Encoding = encoding
          @AllLinesOffset = alllinesoffset
          @AllLinesNum = alllinesnum
        end

        def deserialize(params)
          @Lines = params['Lines']
          @LinesOffset = params['LinesOffset']
          @LinesNum = params['LinesNum']
          @Encoding = params['Encoding']
          @AllLinesOffset = params['AllLinesOffset']
          @AllLinesNum = params['AllLinesNum']
        end
      end

      # IP控制策略详情
      class IpControlDetail < TencentCloud::Common::AbstractModel
        # @param Ip: <p>配置的IP。支持单IP和CIDR，暂不支持IP范围</p>
        # @type Ip: String
        # @param Description: <p>IP的描述</p>
        # @type Description: String

        attr_accessor :Ip, :Description

        def initialize(ip=nil, description=nil)
          @Ip = ip
          @Description = description
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Description = params['Description']
        end
      end

      # ModifyDiskConfiguration请求参数结构体
      class ModifyDiskConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param NewSystemDisk: <p>新系统盘配置</p>
        # @type NewSystemDisk: :class:`Tencentcloud::Cvd.v20201104.models.Disk`
        # @param NewDataDisks: <p>新数据盘配置</p>
        # @type NewDataDisks: Array

        attr_accessor :InstanceId, :NewSystemDisk, :NewDataDisks

        def initialize(instanceid=nil, newsystemdisk=nil, newdatadisks=nil)
          @InstanceId = instanceid
          @NewSystemDisk = newsystemdisk
          @NewDataDisks = newdatadisks
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['NewSystemDisk'].nil?
            @NewSystemDisk = Disk.new
            @NewSystemDisk.deserialize(params['NewSystemDisk'])
          end
          unless params['NewDataDisks'].nil?
            @NewDataDisks = []
            params['NewDataDisks'].each do |i|
              disk_tmp = Disk.new
              disk_tmp.deserialize(i)
              @NewDataDisks << disk_tmp
            end
          end
        end
      end

      # ModifyDiskConfiguration返回参数结构体
      class ModifyDiskConfigurationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyImageAttrs请求参数结构体
      class ModifyImageAttrsRequest < TencentCloud::Common::AbstractModel
        # @param ImageId: <p>镜像id</p>
        # @type ImageId: String
        # @param Attrs: <p>支持修改的属性列表为：{ImageName}</p>
        # @type Attrs: Array

        attr_accessor :ImageId, :Attrs

        def initialize(imageid=nil, attrs=nil)
          @ImageId = imageid
          @Attrs = attrs
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          unless params['Attrs'].nil?
            @Attrs = []
            params['Attrs'].each do |i|
              attributeinfo_tmp = AttributeInfo.new
              attributeinfo_tmp.deserialize(i)
              @Attrs << attributeinfo_tmp
            end
          end
        end
      end

      # ModifyImageAttrs返回参数结构体
      class ModifyImageAttrsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstanceBasicAttribute请求参数结构体
      class ModifyInstanceBasicAttributeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 云桌面实例id
        # @type InstanceId: String
        # @param AttributeInfoList: 修改云桌面实例的属性信息
        # @type AttributeInfoList: Array

        attr_accessor :InstanceId, :AttributeInfoList

        def initialize(instanceid=nil, attributeinfolist=nil)
          @InstanceId = instanceid
          @AttributeInfoList = attributeinfolist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['AttributeInfoList'].nil?
            @AttributeInfoList = []
            params['AttributeInfoList'].each do |i|
              attributeinfo_tmp = AttributeInfo.new
              attributeinfo_tmp.deserialize(i)
              @AttributeInfoList << attributeinfo_tmp
            end
          end
        end
      end

      # ModifyInstanceBasicAttribute返回参数结构体
      class ModifyInstanceBasicAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstancesType请求参数结构体
      class ModifyInstancesTypeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: <p>实例id数组</p>
        # @type InstanceIds: Array
        # @param InstanceType: <p>变更的实例类型</p>
        # @type InstanceType: String
        # @param ChargeType: <p>付费类型</p>
        # @type ChargeType: String

        attr_accessor :InstanceIds, :InstanceType, :ChargeType

        def initialize(instanceids=nil, instancetype=nil, chargetype=nil)
          @InstanceIds = instanceids
          @InstanceType = instancetype
          @ChargeType = chargetype
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @InstanceType = params['InstanceType']
          @ChargeType = params['ChargeType']
        end
      end

      # ModifyInstancesType返回参数结构体
      class ModifyInstancesTypeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstancesVpc请求参数结构体
      class ModifyInstancesVpcRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: <p>实例ID数组</p>
        # @type InstanceIds: Array
        # @param VpcId: <p>私有网络ID</p>
        # @type VpcId: String
        # @param SubnetId: <p>子网ID</p>
        # @type SubnetId: String
        # @param DnsServerSet: <p>租户vpc的dns</p><p>参数格式：“189.0.01”</p>
        # @type DnsServerSet: Array

        attr_accessor :InstanceIds, :VpcId, :SubnetId, :DnsServerSet

        def initialize(instanceids=nil, vpcid=nil, subnetid=nil, dnsserverset=nil)
          @InstanceIds = instanceids
          @VpcId = vpcid
          @SubnetId = subnetid
          @DnsServerSet = dnsserverset
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @DnsServerSet = params['DnsServerSet']
        end
      end

      # ModifyInstancesVpc返回参数结构体
      class ModifyInstancesVpcResponse < TencentCloud::Common::AbstractModel
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

      # 磁盘分区数据
      class Partition < TencentCloud::Common::AbstractModel
        # @param Name: 磁盘名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Total: 总容量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Float
        # @param Usage: 使用量,39.31%
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Usage: Float

        attr_accessor :Name, :Total, :Usage

        def initialize(name=nil, total=nil, usage=nil)
          @Name = name
          @Total = total
          @Usage = usage
        end

        def deserialize(params)
          @Name = params['Name']
          @Total = params['Total']
          @Usage = params['Usage']
        end
      end

      # 策略详细信息
      class PolicyDetail < TencentCloud::Common::AbstractModel
        # @param PolicyId: <p>策略id</p>
        # @type PolicyId: String
        # @param PolicyName: <p>策略名称</p>
        # @type PolicyName: String
        # @param Description: <p>策略描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param UserIds: <p>策略作用用户id列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserIds: Array
        # @param Uin: <p>策略的租户uin</p>
        # @type Uin: String
        # @param FilePolicyId: <p>文件重定向策略id。取值范围：<br>1：读写<br>2：只读<br>3：禁止读写</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilePolicyId: Integer
        # @param ClipPolicyId: <p>剪切板重定向策略id。取值范围：<br>1：开启云桌面到客户端<br>2：开启客户端到云桌面<br>3：双向开启<br>4：禁用</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClipPolicyId: Integer
        # @param DrivePolicyId: <p>外设重定向策略id。取值范围：<br>1：允许usb重定向<br>2：允许端口重定向<br>3：允许usb和端口重定向<br>4：禁用</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DrivePolicyId: Integer
        # @param WaterMarkPolicyId: <p>水印重定向策略id。取值范围（离散值）：<br>4:   当前时间，居中策略<br>10: 当前时间，平铺策略<br>15:  云桌面ID， 居中策略<br>16:  云桌面ID+当前时间， 居中策略<br>17:  云桌面ID， 平铺策略<br>18:  云桌面ID+当前时间， 平铺策略</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WaterMarkPolicyId: Integer
        # @param IsDefault: <p>是否是默认策略</p>
        # @type IsDefault: Boolean
        # @param TotalUser: <p>注意：默认策略的当前值无效</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalUser: Integer

        attr_accessor :PolicyId, :PolicyName, :Description, :UserIds, :Uin, :FilePolicyId, :ClipPolicyId, :DrivePolicyId, :WaterMarkPolicyId, :IsDefault, :TotalUser

        def initialize(policyid=nil, policyname=nil, description=nil, userids=nil, uin=nil, filepolicyid=nil, clippolicyid=nil, drivepolicyid=nil, watermarkpolicyid=nil, isdefault=nil, totaluser=nil)
          @PolicyId = policyid
          @PolicyName = policyname
          @Description = description
          @UserIds = userids
          @Uin = uin
          @FilePolicyId = filepolicyid
          @ClipPolicyId = clippolicyid
          @DrivePolicyId = drivepolicyid
          @WaterMarkPolicyId = watermarkpolicyid
          @IsDefault = isdefault
          @TotalUser = totaluser
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @Description = params['Description']
          @UserIds = params['UserIds']
          @Uin = params['Uin']
          @FilePolicyId = params['FilePolicyId']
          @ClipPolicyId = params['ClipPolicyId']
          @DrivePolicyId = params['DrivePolicyId']
          @WaterMarkPolicyId = params['WaterMarkPolicyId']
          @IsDefault = params['IsDefault']
          @TotalUser = params['TotalUser']
        end
      end

      # 创建策略详细信息
      class PolicyInfo < TencentCloud::Common::AbstractModel
        # @param PolicyType: 策略类型。取值：
        # 1：文件重定向策略
        # 2：剪切板重定向策略
        # 3：外设重定向策略
        # 4：水印策略
        # @type PolicyType: Integer
        # @param PolicyValue: 策略值。取值：
        # PolicyType对应个子取值范围：
        # 	①：PolicyType为1-文件重定向策略
        # 					1：读写
        # 					2：只读
        # 					3：禁止读写
        # 	②：剪切板重定向策略
        # 					1：开启云桌面到客户端
        # 					2：开启客户端到云桌面
        # 					3：双向开启
        # 					4：禁用
        # 	③：外设重定向策略
        # 					1：允许usb重定向
        # 					2：允许端口重定向
        # 					3：允许usb和端口重定向
        # 					4：禁用
        # 	④：水印策略
        # 					4:   当前时间，居中策略
        # 					10: 当前时间，平铺策略
        # 					15:  云桌面ID， 居中策略
        #                                         16:  云桌面ID+当前时间， 居中策略
        #                                         17:  云桌面ID， 平铺策略
        #                                         18:  云桌面ID+当前时间， 平铺策略
        # @type PolicyValue: Integer

        attr_accessor :PolicyType, :PolicyValue

        def initialize(policytype=nil, policyvalue=nil)
          @PolicyType = policytype
          @PolicyValue = policyvalue
        end

        def deserialize(params)
          @PolicyType = params['PolicyType']
          @PolicyValue = params['PolicyValue']
        end
      end

      # RebootInstances请求参数结构体
      class RebootInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 重启实例id列表
        # @type InstanceIds: Array
        # @param InstanceRegion: 实例所在区域，保证传入的列表在统一区域，否则报错
        # @type InstanceRegion: String
        # @param Force: 是否在正常重启失败后选择强制重启实例。取值范围：
        # TRUE：表示在正常重启失败后进行强制重启
        # FALSE：表示在正常重启失败后不进行强制重启

        # 默认取值：FALSE。
        # @type Force: Boolean
        # @param PreLogin: 重启是否需要预登录
        # @type PreLogin: Boolean

        attr_accessor :InstanceIds, :InstanceRegion, :Force, :PreLogin

        def initialize(instanceids=nil, instanceregion=nil, force=nil, prelogin=nil)
          @InstanceIds = instanceids
          @InstanceRegion = instanceregion
          @Force = force
          @PreLogin = prelogin
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @InstanceRegion = params['InstanceRegion']
          @Force = params['Force']
          @PreLogin = params['PreLogin']
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

      # RemoveDataDisks请求参数结构体
      class RemoveDataDisksRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param DataDiskIds: 数据盘磁盘 ID，可以通过 DescribeInstances 查下实例数据盘
        # @type DataDiskIds: Array

        attr_accessor :InstanceId, :DataDiskIds

        def initialize(instanceid=nil, datadiskids=nil)
          @InstanceId = instanceid
          @DataDiskIds = datadiskids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DataDiskIds = params['DataDiskIds']
        end
      end

      # RemoveDataDisks返回参数结构体
      class RemoveDataDisksResponse < TencentCloud::Common::AbstractModel
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

      # RemovePolicy请求参数结构体
      class RemovePolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: <p>待删除策略id</p>
        # @type PolicyId: String

        attr_accessor :PolicyId

        def initialize(policyid=nil)
          @PolicyId = policyid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
        end
      end

      # RemovePolicy返回参数结构体
      class RemovePolicyResponse < TencentCloud::Common::AbstractModel
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
        # @param InstanceIds: 一个或多个待操作的实例ID。每次请求批量实例的上限为50。
        # @type InstanceIds: Array
        # @param ChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的续费时长、是否设置自动续费等属性。包年包月实例该参数为必传参数。
        # @type ChargePrepaid: :class:`Tencentcloud::Cvd.v20201104.models.ChargePrepaid`

        attr_accessor :InstanceIds, :ChargePrepaid

        def initialize(instanceids=nil, chargeprepaid=nil)
          @InstanceIds = instanceids
          @ChargePrepaid = chargeprepaid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['ChargePrepaid'].nil?
            @ChargePrepaid = ChargePrepaid.new
            @ChargePrepaid.deserialize(params['ChargePrepaid'])
          end
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

      # ResetInstances请求参数结构体
      class ResetInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 需要重置的实例id列表
        # @type InstanceIds: Array
        # @param ImageId: 重置的目标镜像id
        # @type ImageId: String
        # @param InstanceRegion: 重置实例的区域
        # @type InstanceRegion: String
        # @param IsUnbind: 是否解绑机器原有绑定关系
        # @type IsUnbind: Boolean

        attr_accessor :InstanceIds, :ImageId, :InstanceRegion, :IsUnbind

        def initialize(instanceids=nil, imageid=nil, instanceregion=nil, isunbind=nil)
          @InstanceIds = instanceids
          @ImageId = imageid
          @InstanceRegion = instanceregion
          @IsUnbind = isunbind
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @ImageId = params['ImageId']
          @InstanceRegion = params['InstanceRegion']
          @IsUnbind = params['IsUnbind']
        end
      end

      # ResetInstances返回参数结构体
      class ResetInstancesResponse < TencentCloud::Common::AbstractModel
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

      # RunCommand请求参数结构体
      class RunCommandRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>云桌面实例ID。</p>
        # @type InstanceId: String
        # @param Content: <p>执行的脚本内容，编码方式由ContentEncoding指定。<br>&lt;li&gt;脚本内容在Base64编码后的大小不能超过16 KB。</p>
        # @type Content: String
        # @param Type: <p>脚本种类。取值有：&lt;li&gt;PowerShellScript Powershell脚本 &lt;li&gt;BatScript Bat脚本</p>
        # @type Type: String
        # @param WaitUntilDone: <p>是否同步等待脚本的执行结果。&lt;li&gt;false为异步模式，通过此接口触发任务的执行，之后异步获取执行结果。默认为false。此为推荐的模式。&lt;li&gt;true为同步等待执行结果，只有当脚本执行时间在4秒之内时，才适合将该参数置为true。如果接口返回时任务尚未执行完毕的话，也需要通过异步接口来获取执行结果。</p>
        # @type WaitUntilDone: Boolean
        # @param ContentEncoding: <p>Content的编码。&lt;li&gt;Base64 Base64编码。 默认为Base64</p>
        # @type ContentEncoding: String
        # @param MergeOutputLines: <p>任务的输出内容是否合并成一个字符串。&lt;li&gt;true表示所有的输出行拼接在一起。默认为true。&lt;li&gt;false表示输出内容通过数组返回,数组的每一个元素为一行。</p>
        # @type MergeOutputLines: Boolean
        # @param RunAs: <p>执行任务的用户ID。&lt;li&gt;由SYSTEM身份执行。此场景下不需要指定该字段，这是默认情况。&lt;li&gt;需要以绑定到实例的用户执行任务，通过该字段指定用户ID。 &lt;li&gt;匿名访问，需要以实际登录系统的用户执行的场景，该字段填实例ID。</p>
        # @type RunAs: String
        # @param RunForeground: <p>任务是否为前台运行。仅在RunAs场景下有效。仅当任务会呼起图形界面时有意义。&lt;li&gt;true表示用户可以看到图形窗口。&lt;li&gt;false表示图形窗口不可见。默认为false。</p>
        # @type RunForeground: Boolean

        attr_accessor :InstanceId, :Content, :Type, :WaitUntilDone, :ContentEncoding, :MergeOutputLines, :RunAs, :RunForeground

        def initialize(instanceid=nil, content=nil, type=nil, waituntildone=nil, contentencoding=nil, mergeoutputlines=nil, runas=nil, runforeground=nil)
          @InstanceId = instanceid
          @Content = content
          @Type = type
          @WaitUntilDone = waituntildone
          @ContentEncoding = contentencoding
          @MergeOutputLines = mergeoutputlines
          @RunAs = runas
          @RunForeground = runforeground
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Content = params['Content']
          @Type = params['Type']
          @WaitUntilDone = params['WaitUntilDone']
          @ContentEncoding = params['ContentEncoding']
          @MergeOutputLines = params['MergeOutputLines']
          @RunAs = params['RunAs']
          @RunForeground = params['RunForeground']
        end
      end

      # RunCommand返回参数结构体
      class RunCommandResponse < TencentCloud::Common::AbstractModel
        # @param InvokeId: <p>本次任务对应的任务ID。方便异步查询执行状态。</p>
        # @type InvokeId: String
        # @param Detail: <p>执行详细情况。WaitUntilDone为true，在接口返回时的执行状态。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: :class:`Tencentcloud::Cvd.v20201104.models.Invocation`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InvokeId, :Detail, :RequestId

        def initialize(invokeid=nil, detail=nil, requestid=nil)
          @InvokeId = invokeid
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          @InvokeId = params['InvokeId']
          unless params['Detail'].nil?
            @Detail = Invocation.new
            @Detail.deserialize(params['Detail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 快照信息
      class SnapshotInfo < TencentCloud::Common::AbstractModel
        # @param SnapshotId: <p>快照唯一ID</p>
        # @type SnapshotId: String
        # @param DiskId: <p>快照对应的云硬盘ID</p>
        # @type DiskId: String
        # @param SnapshotState: <p>快照状态，取值如下：<br>NORMAL：正常<br>CREATING：创建中<br>ROLLBACKING：回滚中<br>COPYING_FROM_REMOTE：跨地域复制中<br>CHECKING_COPIED：复制校验中<br>TORECYCLE：待回收。</p>
        # @type SnapshotState: String
        # @param DiskUsage: <p>创建此快照的云硬盘类型。取值范围：<br>SYSTEM_DISK：系统盘<br>DATA_DISK：数据盘。</p>
        # @type DiskUsage: String
        # @param CreateTime: <p>快照创建的时间</p>
        # @type CreateTime: String
        # @param DeadlineTime: <p>快照到期时间。如果快照为永久保留，此字段为空。</p>
        # @type DeadlineTime: String
        # @param Percent: <p>快照创建进度百分比，快照创建成功后此字段恒为100。</p>
        # @type Percent: Integer
        # @param IsPermanent: <p>是否为永久快照。取值范围：<br>true：永久快照<br>false：非永久快照。</p>
        # @type IsPermanent: Boolean
        # @param CreateType: <p>快照创建方式，取值:<br>ManualSnapshot：手动创建<br>AutoSnapshot：快照策略自动创建</p>
        # @type CreateType: String
        # @param LastRollbackTime: <p>上一次快照回滚完成时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastRollbackTime: String
        # @param LastRollbackState: <p>上一次快照回滚状态，取值：<br>成功：SUCCESS<br>失败：FAILED</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastRollbackState: String

        attr_accessor :SnapshotId, :DiskId, :SnapshotState, :DiskUsage, :CreateTime, :DeadlineTime, :Percent, :IsPermanent, :CreateType, :LastRollbackTime, :LastRollbackState

        def initialize(snapshotid=nil, diskid=nil, snapshotstate=nil, diskusage=nil, createtime=nil, deadlinetime=nil, percent=nil, ispermanent=nil, createtype=nil, lastrollbacktime=nil, lastrollbackstate=nil)
          @SnapshotId = snapshotid
          @DiskId = diskid
          @SnapshotState = snapshotstate
          @DiskUsage = diskusage
          @CreateTime = createtime
          @DeadlineTime = deadlinetime
          @Percent = percent
          @IsPermanent = ispermanent
          @CreateType = createtype
          @LastRollbackTime = lastrollbacktime
          @LastRollbackState = lastrollbackstate
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
          @DiskId = params['DiskId']
          @SnapshotState = params['SnapshotState']
          @DiskUsage = params['DiskUsage']
          @CreateTime = params['CreateTime']
          @DeadlineTime = params['DeadlineTime']
          @Percent = params['Percent']
          @IsPermanent = params['IsPermanent']
          @CreateType = params['CreateType']
          @LastRollbackTime = params['LastRollbackTime']
          @LastRollbackState = params['LastRollbackState']
        end
      end

      # StartInstances请求参数结构体
      class StartInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 需要开启的实例id列表
        # @type InstanceIds: Array
        # @param InstanceRegion: 实例所在区域，保证传入的列表再统一区域，否则报错
        # @type InstanceRegion: String

        attr_accessor :InstanceIds, :InstanceRegion

        def initialize(instanceids=nil, instanceregion=nil)
          @InstanceIds = instanceids
          @InstanceRegion = instanceregion
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @InstanceRegion = params['InstanceRegion']
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

      # StopCommandTasks请求参数结构体
      class StopCommandTasksRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <p>删除命令任务条件<br>Filter.name 目前支持 CommandId</p>
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

      # StopCommandTasks返回参数结构体
      class StopCommandTasksResponse < TencentCloud::Common::AbstractModel
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
        # @param InstanceIds: 需要重启的实例id列表
        # @type InstanceIds: Array
        # @param InstanceRegion: 实例所在区域，保证传入的列表在统一区域，否则报错
        # @type InstanceRegion: String
        # @param Force: 是否在正常重启失败后选择强制重启实例。取值范围：
        # TRUE：表示在正常重启失败后进行强制重启
        # FALSE：表示在正常重启失败后不进行强制重启

        # 默认取值：FALSE。
        # @type Force: Boolean

        attr_accessor :InstanceIds, :InstanceRegion, :Force

        def initialize(instanceids=nil, instanceregion=nil, force=nil)
          @InstanceIds = instanceids
          @InstanceRegion = instanceregion
          @Force = force
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @InstanceRegion = params['InstanceRegion']
          @Force = params['Force']
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

      # StopInvocation请求参数结构体
      class StopInvocationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>云桌面实例ID。</p>
        # @type InstanceId: String
        # @param InvokeId: <p>任务ID。</p>
        # @type InvokeId: String

        attr_accessor :InstanceId, :InvokeId

        def initialize(instanceid=nil, invokeid=nil)
          @InstanceId = instanceid
          @InvokeId = invokeid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InvokeId = params['InvokeId']
        end
      end

      # StopInvocation返回参数结构体
      class StopInvocationResponse < TencentCloud::Common::AbstractModel
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

      # StopSession请求参数结构体
      class StopSessionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceRegion: <p>机器所在区域</p>
        # @type InstanceRegion: String
        # @param HostName: <p>机器hostname</p>
        # @type HostName: String
        # @param IsDisconnect: <p>IsDisconnect为true，表示断开当前会话<br>IsDisconnect为false，表示注销当前会话</p>
        # @type IsDisconnect: Boolean
        # @param UserId: <p>选填，为多会话预留字段</p>
        # @type UserId: String

        attr_accessor :InstanceRegion, :HostName, :IsDisconnect, :UserId

        def initialize(instanceregion=nil, hostname=nil, isdisconnect=nil, userid=nil)
          @InstanceRegion = instanceregion
          @HostName = hostname
          @IsDisconnect = isdisconnect
          @UserId = userid
        end

        def deserialize(params)
          @InstanceRegion = params['InstanceRegion']
          @HostName = params['HostName']
          @IsDisconnect = params['IsDisconnect']
          @UserId = params['UserId']
        end
      end

      # StopSession返回参数结构体
      class StopSessionResponse < TencentCloud::Common::AbstractModel
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

      # Tag
      class Tag < TencentCloud::Common::AbstractModel
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

      # TerminateInstances请求参数结构体
      class TerminateInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: <p>一个或多个待操作的实例ID。每次请求批量实例的上限为10。</p>
        # @type InstanceIds: Array
        # @param DestroyImmediately: <p>是否立即销毁实例。默认false。 立即销毁的实例不会进入隔离期。</p>
        # @type DestroyImmediately: Boolean

        attr_accessor :InstanceIds, :DestroyImmediately

        def initialize(instanceids=nil, destroyimmediately=nil)
          @InstanceIds = instanceids
          @DestroyImmediately = destroyimmediately
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @DestroyImmediately = params['DestroyImmediately']
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

      # UnbindInstances请求参数结构体
      class UnbindInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceRegion: 实例所在地域
        # @type InstanceRegion: String
        # @param BindInfos: 解除绑定关系列表
        # @type BindInfos: Array

        attr_accessor :InstanceRegion, :BindInfos

        def initialize(instanceregion=nil, bindinfos=nil)
          @InstanceRegion = instanceregion
          @BindInfos = bindinfos
        end

        def deserialize(params)
          @InstanceRegion = params['InstanceRegion']
          unless params['BindInfos'].nil?
            @BindInfos = []
            params['BindInfos'].each do |i|
              bindinfo_tmp = BindInfo.new
              bindinfo_tmp.deserialize(i)
              @BindInfos << bindinfo_tmp
            end
          end
        end
      end

      # UnbindInstances返回参数结构体
      class UnbindInstancesResponse < TencentCloud::Common::AbstractModel
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

      # UpdatePolicy请求参数结构体
      class UpdatePolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: <p>待更新策略id</p>
        # @type PolicyId: String
        # @param Name: <p>更新策略后策略名称</p>
        # @type Name: String
        # @param Description: <p>更新策略后策略描述</p>
        # @type Description: String
        # @param PolicyInfoList: <p>更新策略的具体修改值（全集）</p>
        # @type PolicyInfoList: Array
        # @param BindUserIds: <p>新增绑定用户列表</p>
        # @type BindUserIds: Array
        # @param RemoveUserIds: <p>移除绑定的用户列表</p>
        # @type RemoveUserIds: Array

        attr_accessor :PolicyId, :Name, :Description, :PolicyInfoList, :BindUserIds, :RemoveUserIds

        def initialize(policyid=nil, name=nil, description=nil, policyinfolist=nil, binduserids=nil, removeuserids=nil)
          @PolicyId = policyid
          @Name = name
          @Description = description
          @PolicyInfoList = policyinfolist
          @BindUserIds = binduserids
          @RemoveUserIds = removeuserids
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['PolicyInfoList'].nil?
            @PolicyInfoList = []
            params['PolicyInfoList'].each do |i|
              policyinfo_tmp = PolicyInfo.new
              policyinfo_tmp.deserialize(i)
              @PolicyInfoList << policyinfo_tmp
            end
          end
          @BindUserIds = params['BindUserIds']
          @RemoveUserIds = params['RemoveUserIds']
        end
      end

      # UpdatePolicy返回参数结构体
      class UpdatePolicyResponse < TencentCloud::Common::AbstractModel
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

      # 桌面使用时长详情
      class Usage < TencentCloud::Common::AbstractModel
        # @param InstanceId: 桌面实例 ID
        # @type InstanceId: String
        # @param Name: 桌面名称
        # @type Name: String
        # @param Status: 桌面当前状态
        # @type Status: String
        # @param UserName: 桌面绑定的用户名，若未绑定，为空
        # @type UserName: String
        # @param ChargeType: 桌面计费类型
        # @type ChargeType: String
        # @param InstanceType: 桌面类型
        # @type InstanceType: String
        # @param OsName: 桌面操作系统
        # @type OsName: String
        # @param ActiveTime: 桌面使用时长，h:m:s
        # @type ActiveTime: String
        # @param IdleTime: 桌面空闲时长，h:m:s
        # @type IdleTime: String
        # @param AnonymousAccess: 是否匿名访问
        # @type AnonymousAccess: Boolean

        attr_accessor :InstanceId, :Name, :Status, :UserName, :ChargeType, :InstanceType, :OsName, :ActiveTime, :IdleTime, :AnonymousAccess

        def initialize(instanceid=nil, name=nil, status=nil, username=nil, chargetype=nil, instancetype=nil, osname=nil, activetime=nil, idletime=nil, anonymousaccess=nil)
          @InstanceId = instanceid
          @Name = name
          @Status = status
          @UserName = username
          @ChargeType = chargetype
          @InstanceType = instancetype
          @OsName = osname
          @ActiveTime = activetime
          @IdleTime = idletime
          @AnonymousAccess = anonymousaccess
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Status = params['Status']
          @UserName = params['UserName']
          @ChargeType = params['ChargeType']
          @InstanceType = params['InstanceType']
          @OsName = params['OsName']
          @ActiveTime = params['ActiveTime']
          @IdleTime = params['IdleTime']
          @AnonymousAccess = params['AnonymousAccess']
        end
      end

      # 用户信息
      class User < TencentCloud::Common::AbstractModel
        # @param Id: <p>用户ID。</p>
        # @type Id: String
        # @param Name: <p>名字。</p>
        # @type Name: String
        # @param DisplayName: <p>显示名字。</p>
        # @type DisplayName: String
        # @param Mail: <p>邮箱。</p>
        # @type Mail: String
        # @param PhoneNum: <p>手机号。</p>
        # @type PhoneNum: String
        # @param Status: <p>状态。<br>ACTIVE:启用<br>PENDING_ACTIVATE:待激活<br>PENDING_ONBOARD:待启用<br>SUSPENDED:已停用<br>INACTIVE:已离职<br>PASSWORD_RESET:重置密码<br>LOCKED_OUT:锁定</p>
        # @type Status: String
        # @param DepartmentId: <p>部门ID。</p>
        # @type DepartmentId: String
        # @param StrategyId: <p>策略ID。</p>
        # @type StrategyId: String
        # @param StrategyName: <p>策略名称。</p>
        # @type StrategyName: String
        # @param BindStatus: <p>当前用户是否绑定桌面，true：绑定，false：未绑定任何桌面</p>
        # @type BindStatus: Boolean

        attr_accessor :Id, :Name, :DisplayName, :Mail, :PhoneNum, :Status, :DepartmentId, :StrategyId, :StrategyName, :BindStatus

        def initialize(id=nil, name=nil, displayname=nil, mail=nil, phonenum=nil, status=nil, departmentid=nil, strategyid=nil, strategyname=nil, bindstatus=nil)
          @Id = id
          @Name = name
          @DisplayName = displayname
          @Mail = mail
          @PhoneNum = phonenum
          @Status = status
          @DepartmentId = departmentid
          @StrategyId = strategyid
          @StrategyName = strategyname
          @BindStatus = bindstatus
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @DisplayName = params['DisplayName']
          @Mail = params['Mail']
          @PhoneNum = params['PhoneNum']
          @Status = params['Status']
          @DepartmentId = params['DepartmentId']
          @StrategyId = params['StrategyId']
          @StrategyName = params['StrategyName']
          @BindStatus = params['BindStatus']
        end
      end

      # 私有网络相关信息
      class VirtualPrivateCloud < TencentCloud::Common::AbstractModel
        # @param VpcId: <p>私有网络ID。</p>
        # @type VpcId: String
        # @param SubnetId: <p>私有网络子网ID。</p>
        # @type SubnetId: String

        attr_accessor :VpcId, :SubnetId

        def initialize(vpcid=nil, subnetid=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

    end
  end
end

