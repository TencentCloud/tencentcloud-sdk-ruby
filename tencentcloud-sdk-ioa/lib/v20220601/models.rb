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
  module Ioa
    module V20220601
      # 按版本聚合后的软件列表
      class AggrCategorySoftDetailRow < TencentCloud::Common::AbstractModel
        # @param ID: ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer
        # @param Name: 软件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param PiracyRisk: 盗版风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PiracyRisk: Integer
        # @param OsType: 系统平台
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsType: Integer
        # @param CorpName: 企业名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorpName: String
        # @param InstalledDeviceNum: 安装设备数量(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstalledDeviceNum: Integer
        # @param PiracyInstalledDeviceNum: 盗版安装设备数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PiracyInstalledDeviceNum: Integer
        # @param InstalledUserNum: 已安装用户数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstalledUserNum: Integer
        # @param PiracyInstalledUserNum: 盗版软件用户数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PiracyInstalledUserNum: Integer
        # @param AuthNum: 授权总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthNum: Integer
        # @param GenuineRate: 正版率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GenuineRate: Float
        # @param UpgradableDeviceNum: 有新版本可升级的设备数量
        # @type UpgradableDeviceNum: Integer

        attr_accessor :ID, :Name, :PiracyRisk, :OsType, :CorpName, :InstalledDeviceNum, :PiracyInstalledDeviceNum, :InstalledUserNum, :PiracyInstalledUserNum, :AuthNum, :GenuineRate, :UpgradableDeviceNum

        def initialize(id=nil, name=nil, piracyrisk=nil, ostype=nil, corpname=nil, installeddevicenum=nil, piracyinstalleddevicenum=nil, installedusernum=nil, piracyinstalledusernum=nil, authnum=nil, genuinerate=nil, upgradabledevicenum=nil)
          @ID = id
          @Name = name
          @PiracyRisk = piracyrisk
          @OsType = ostype
          @CorpName = corpname
          @InstalledDeviceNum = installeddevicenum
          @PiracyInstalledDeviceNum = piracyinstalleddevicenum
          @InstalledUserNum = installedusernum
          @PiracyInstalledUserNum = piracyinstalledusernum
          @AuthNum = authnum
          @GenuineRate = genuinerate
          @UpgradableDeviceNum = upgradabledevicenum
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @PiracyRisk = params['PiracyRisk']
          @OsType = params['OsType']
          @CorpName = params['CorpName']
          @InstalledDeviceNum = params['InstalledDeviceNum']
          @PiracyInstalledDeviceNum = params['PiracyInstalledDeviceNum']
          @InstalledUserNum = params['InstalledUserNum']
          @PiracyInstalledUserNum = params['PiracyInstalledUserNum']
          @AuthNum = params['AuthNum']
          @GenuineRate = params['GenuineRate']
          @UpgradableDeviceNum = params['UpgradableDeviceNum']
        end
      end

      # 聚合软件的已安装终端列表中的一行数据
      class AggrSoftDeviceRow < TencentCloud::Common::AbstractModel
        # @param DeviceName: 终端名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceName: String
        # @param LastLoginAccount: 最近登录账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastLoginAccount: String
        # @param DeviceUserName: 终端用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceUserName: String
        # @param Version: 软件版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param PiracyRisk: 是否盗版
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PiracyRisk: Integer
        # @param PiracyReason: 盗版原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PiracyReason: String
        # @param InstallTime: 安装时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstallTime: String
        # @param UserPath: 用户目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserPath: String
        # @param UserGroup: 所在分组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroup: String
        # @param IP: IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IP: String
        # @param MAC: MAC
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MAC: String
        # @param UseTime: 使用时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseTime: Integer
        # @param DeviceId: 设备ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceId: Integer
        # @param FullSoftName: 软件全名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullSoftName: String
        # @param Id: 数据ID（唯一）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param NewVersion: 该终端此款软件可升级到的目标版本号
        # @type NewVersion: String
        # @param UpgradeSoftId: 该软件对应运营配置的可升级id
        # @type UpgradeSoftId: Integer
        # @param RemarkName: 终端备注名
        # @type RemarkName: String
        # @param SoftwareId: 软件id
        # @type SoftwareId: Integer
        # @param OsType: 0:win 2:mac
        # @type OsType: Integer

        attr_accessor :DeviceName, :LastLoginAccount, :DeviceUserName, :Version, :PiracyRisk, :PiracyReason, :InstallTime, :UserPath, :UserGroup, :IP, :MAC, :UseTime, :DeviceId, :FullSoftName, :Id, :NewVersion, :UpgradeSoftId, :RemarkName, :SoftwareId, :OsType

        def initialize(devicename=nil, lastloginaccount=nil, deviceusername=nil, version=nil, piracyrisk=nil, piracyreason=nil, installtime=nil, userpath=nil, usergroup=nil, ip=nil, mac=nil, usetime=nil, deviceid=nil, fullsoftname=nil, id=nil, newversion=nil, upgradesoftid=nil, remarkname=nil, softwareid=nil, ostype=nil)
          @DeviceName = devicename
          @LastLoginAccount = lastloginaccount
          @DeviceUserName = deviceusername
          @Version = version
          @PiracyRisk = piracyrisk
          @PiracyReason = piracyreason
          @InstallTime = installtime
          @UserPath = userpath
          @UserGroup = usergroup
          @IP = ip
          @MAC = mac
          @UseTime = usetime
          @DeviceId = deviceid
          @FullSoftName = fullsoftname
          @Id = id
          @NewVersion = newversion
          @UpgradeSoftId = upgradesoftid
          @RemarkName = remarkname
          @SoftwareId = softwareid
          @OsType = ostype
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @LastLoginAccount = params['LastLoginAccount']
          @DeviceUserName = params['DeviceUserName']
          @Version = params['Version']
          @PiracyRisk = params['PiracyRisk']
          @PiracyReason = params['PiracyReason']
          @InstallTime = params['InstallTime']
          @UserPath = params['UserPath']
          @UserGroup = params['UserGroup']
          @IP = params['IP']
          @MAC = params['MAC']
          @UseTime = params['UseTime']
          @DeviceId = params['DeviceId']
          @FullSoftName = params['FullSoftName']
          @Id = params['Id']
          @NewVersion = params['NewVersion']
          @UpgradeSoftId = params['UpgradeSoftId']
          @RemarkName = params['RemarkName']
          @SoftwareId = params['SoftwareId']
          @OsType = params['OsType']
        end
      end

      # 自动划分规则数据
      class ComplexRule < TencentCloud::Common::AbstractModel
        # @param SimpleRules: 简单规则表达式
        # @type SimpleRules: Array
        # @param Relation: 表达式间逻辑关系
        # @type Relation: String

        attr_accessor :SimpleRules, :Relation

        def initialize(simplerules=nil, relation=nil)
          @SimpleRules = simplerules
          @Relation = relation
        end

        def deserialize(params)
          unless params['SimpleRules'].nil?
            @SimpleRules = []
            params['SimpleRules'].each do |i|
              simplerule_tmp = SimpleRule.new
              simplerule_tmp.deserialize(i)
              @SimpleRules << simplerule_tmp
            end
          end
          @Relation = params['Relation']
        end
      end

      # 这是一个多接口的公共数据结构，用于接口根据条件进行过滤和分页。具体支持哪些过滤条件，参考具体使用该结构的接口字段描述
      class Condition < TencentCloud::Common::AbstractModel
        # @param Filters: Filters 条件过滤
        # @type Filters: Array
        # @param FilterGroups: FilterGroups 条件过滤组
        # @type FilterGroups: Array
        # @param Sort: Sort 排序字段
        # @type Sort: :class:`Tencentcloud::Ioa.v20220601.models.Sort`
        # @param PageSize: PageSize 每页获取数(只支持32位)
        # @type PageSize: Integer
        # @param PageNum: PageNum 获取第几页(只支持32位)
        # @type PageNum: Integer

        attr_accessor :Filters, :FilterGroups, :Sort, :PageSize, :PageNum

        def initialize(filters=nil, filtergroups=nil, sort=nil, pagesize=nil, pagenum=nil)
          @Filters = filters
          @FilterGroups = filtergroups
          @Sort = sort
          @PageSize = pagesize
          @PageNum = pagenum
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
          unless params['FilterGroups'].nil?
            @FilterGroups = []
            params['FilterGroups'].each do |i|
              filtergroup_tmp = FilterGroup.new
              filtergroup_tmp.deserialize(i)
              @FilterGroups << filtergroup_tmp
            end
          end
          unless params['Sort'].nil?
            @Sort = Sort.new
            @Sort.deserialize(params['Sort'])
          end
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
        end
      end

      # 文件鉴定任务分页数据
      class CreateDLPFileDetectTaskData < TencentCloud::Common::AbstractModel
        # @param TaskRequestId: 任务请求唯一Id
        # @type TaskRequestId: Array

        attr_accessor :TaskRequestId

        def initialize(taskrequestid=nil)
          @TaskRequestId = taskrequestid
        end

        def deserialize(params)
          @TaskRequestId = params['TaskRequestId']
        end
      end

      # CreateDLPFileDetectTask请求参数结构体
      class CreateDLPFileDetectTaskRequest < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 文件下载Url
        # @type DownloadUrl: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileMd5: 文件Md5
        # @type FileMd5: String
        # @param BalanceType: 负载类型  1 从GroupId中选一节点 鉴定  2使用所有SelectNodeIds节点鉴定
        # @type BalanceType: Integer
        # @param DomainInstanceId: 管理域实例ID，用于CAM管理域权限分配。若企业未进行管理域的划分，可直接传入根域"1"，此时表示针对当前企业的全部设备和账号进行接口CRUD，具体CRUD的影响范围限制于相应接口的入参。
        # @type DomainInstanceId: String
        # @param SelectNodeIds: 选中节点唯一Id列表,BalanceType=2时必填
        # @type SelectNodeIds: Array
        # @param GroupId: 节点组唯一Id,BalanceType=1时必填
        # @type GroupId: String

        attr_accessor :DownloadUrl, :FileName, :FileMd5, :BalanceType, :DomainInstanceId, :SelectNodeIds, :GroupId

        def initialize(downloadurl=nil, filename=nil, filemd5=nil, balancetype=nil, domaininstanceid=nil, selectnodeids=nil, groupid=nil)
          @DownloadUrl = downloadurl
          @FileName = filename
          @FileMd5 = filemd5
          @BalanceType = balancetype
          @DomainInstanceId = domaininstanceid
          @SelectNodeIds = selectnodeids
          @GroupId = groupid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @FileName = params['FileName']
          @FileMd5 = params['FileMd5']
          @BalanceType = params['BalanceType']
          @DomainInstanceId = params['DomainInstanceId']
          @SelectNodeIds = params['SelectNodeIds']
          @GroupId = params['GroupId']
        end
      end

      # CreateDLPFileDetectTask返回参数结构体
      class CreateDLPFileDetectTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 创建文件鉴定任务数据
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.CreateDLPFileDetectTaskData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateDLPFileDetectTaskData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 提交送检任务相应数据
      class CreateDLPFileDetectionTaskData < TencentCloud::Common::AbstractModel
        # @param DLPFileDetectionTaskID: 提交任务生成的id，也即requestID。用于后续查询
        # @type DLPFileDetectionTaskID: String

        attr_accessor :DLPFileDetectionTaskID

        def initialize(dlpfiledetectiontaskid=nil)
          @DLPFileDetectionTaskID = dlpfiledetectiontaskid
        end

        def deserialize(params)
          @DLPFileDetectionTaskID = params['DLPFileDetectionTaskID']
        end
      end

      # CreateDLPFileDetectionTask请求参数结构体
      class CreateDLPFileDetectionTaskRequest < TencentCloud::Common::AbstractModel
        # @param Url: 文件下载链接，要求公网可访问，GET方式访问后为文件
        # @type Url: String
        # @param FileName: 文件名，带后缀
        # @type FileName: String
        # @param FileMd5:  文件md5，传入相同md5会直接使用之前缓存的结果。

        # > 请注意：不同文件使用相同md5送检，会命中缓存得到旧的检测结果
        # @type FileMd5: String
        # @param DomainInstanceId: 管理域实例ID，用于CAM管理域权限分配
        # @type DomainInstanceId: String
        # @param CallBackUrl: 回调地址，暂时未使用
        # @type CallBackUrl: String

        attr_accessor :Url, :FileName, :FileMd5, :DomainInstanceId, :CallBackUrl

        def initialize(url=nil, filename=nil, filemd5=nil, domaininstanceid=nil, callbackurl=nil)
          @Url = url
          @FileName = filename
          @FileMd5 = filemd5
          @DomainInstanceId = domaininstanceid
          @CallBackUrl = callbackurl
        end

        def deserialize(params)
          @Url = params['Url']
          @FileName = params['FileName']
          @FileMd5 = params['FileMd5']
          @DomainInstanceId = params['DomainInstanceId']
          @CallBackUrl = params['CallBackUrl']
        end
      end

      # CreateDLPFileDetectionTask返回参数结构体
      class CreateDLPFileDetectionTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 创建送检任务响应数据
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.CreateDLPFileDetectionTaskData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateDLPFileDetectionTaskData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateDeviceTask请求参数结构体
      class CreateDeviceTaskRequest < TencentCloud::Common::AbstractModel
        # @param DomainInstanceId: 管理域实例ID，用于CAM管理域权限分配。若企业未进行管理域的划分，可直接传入根域"1"，此时表示针对当前企业的全部设备和账号进行接口CRUD，具体CRUD的影响范围限制于相应接口的入参。
        # @type DomainInstanceId: String
        # @param Mid: 终端id
        # @type Mid: String

        attr_accessor :DomainInstanceId, :Mid

        def initialize(domaininstanceid=nil, mid=nil)
          @DomainInstanceId = domaininstanceid
          @Mid = mid
        end

        def deserialize(params)
          @DomainInstanceId = params['DomainInstanceId']
          @Mid = params['Mid']
        end
      end

      # CreateDeviceTask返回参数结构体
      class CreateDeviceTaskResponse < TencentCloud::Common::AbstractModel
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

      # CreateDeviceVirtualGroup请求参数结构体
      class CreateDeviceVirtualGroupRequest < TencentCloud::Common::AbstractModel
        # @param DeviceVirtualGroupName: 必填，终端自定义分组名
        # @type DeviceVirtualGroupName: String
        # @param DomainInstanceId: 管理域实例ID，用于CAM管理域权限分配。若企业未进行管理域的划分，可直接传入根域"1"，此时表示针对当前企业的全部设备和账号进行接口CRUD，具体CRUD的影响范围限制于相应接口的入参。
        # @type DomainInstanceId: String
        # @param Description: 详情
        # @type Description: String
        # @param OsType: 系统类型（0: win，1：linux，2: mac，4：android，5：ios ； 默认值0）(只支持32位)
        # @type OsType: Integer
        # @param TimeType: 分组类型（0:手动分组；非0为自动划分分组；具体枚举值为：1:自动每小时划分分组、2:自动每天划分分组、3:自定义时间划分分组； 默认值0）(只支持32位)
        # @type TimeType: Integer
        # @param AutoMinute: 选填，TimeType=3时的自动划分时间，其他情况为0（单位min）(只支持32位)
        # @type AutoMinute: Integer
        # @param AutoRules: 选填，手动分组不填，自动划分分组的划分规则数据
        # @type AutoRules: :class:`Tencentcloud::Ioa.v20220601.models.ComplexRule`

        attr_accessor :DeviceVirtualGroupName, :DomainInstanceId, :Description, :OsType, :TimeType, :AutoMinute, :AutoRules

        def initialize(devicevirtualgroupname=nil, domaininstanceid=nil, description=nil, ostype=nil, timetype=nil, autominute=nil, autorules=nil)
          @DeviceVirtualGroupName = devicevirtualgroupname
          @DomainInstanceId = domaininstanceid
          @Description = description
          @OsType = ostype
          @TimeType = timetype
          @AutoMinute = autominute
          @AutoRules = autorules
        end

        def deserialize(params)
          @DeviceVirtualGroupName = params['DeviceVirtualGroupName']
          @DomainInstanceId = params['DomainInstanceId']
          @Description = params['Description']
          @OsType = params['OsType']
          @TimeType = params['TimeType']
          @AutoMinute = params['AutoMinute']
          unless params['AutoRules'].nil?
            @AutoRules = ComplexRule.new
            @AutoRules.deserialize(params['AutoRules'])
          end
        end
      end

      # CreateDeviceVirtualGroup返回参数结构体
      class CreateDeviceVirtualGroupResponse < TencentCloud::Common::AbstractModel
        # @param Data: 响应返回的data
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.CreateDeviceVirtualGroupRspData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateDeviceVirtualGroupRspData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 响应返回的data
      class CreateDeviceVirtualGroupRspData < TencentCloud::Common::AbstractModel
        # @param Id: 返回的自定义分组id
        # @type Id: Integer

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # CreatePrivilegeCode请求参数结构体
      class CreatePrivilegeCodeRequest < TencentCloud::Common::AbstractModel
        # @param Mid: 必填；设备唯一标识符;
        # @type Mid: String
        # @param DomainInstanceId: 管理域实例ID，用于CAM管理域权限分配。若企业未进行管理域的划分，可直接传入根域"1"，此时表示针对当前企业的全部设备和账号进行接口CRUD，具体CRUD的影响范围限制于相应接口的入参。
        # @type DomainInstanceId: String
        # @param OsType: 系统类型（0: win，1：linux，2: mac，4：android，5：ios ）；默认值0
        # @type OsType: Integer

        attr_accessor :Mid, :DomainInstanceId, :OsType

        def initialize(mid=nil, domaininstanceid=nil, ostype=nil)
          @Mid = mid
          @DomainInstanceId = domaininstanceid
          @OsType = ostype
        end

        def deserialize(params)
          @Mid = params['Mid']
          @DomainInstanceId = params['DomainInstanceId']
          @OsType = params['OsType']
        end
      end

      # CreatePrivilegeCode返回参数结构体
      class CreatePrivilegeCodeResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务响应数据
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.CreatePrivilegeCodeRspData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreatePrivilegeCodeRspData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 业务响应数据
      class CreatePrivilegeCodeRspData < TencentCloud::Common::AbstractModel
        # @param Code: 特权码数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String

        attr_accessor :Code

        def initialize(code=nil)
          @Code = code
        end

        def deserialize(params)
          @Code = params['Code']
        end
      end

      # 账号分组信息
      class DescribeAccountGroupsData < TencentCloud::Common::AbstractModel
        # @param NamePath: 账号分组名全路径，点分格式
        # @type NamePath: String
        # @param IdPathArr: 账号分组ID全路径，数组格式
        # @type IdPathArr: Array
        # @param ExtraInfo: 扩展信息
        # @type ExtraInfo: String
        # @param Utime: 最后更新时间
        # @type Utime: String
        # @param ParentId: 父分组ID
        # @type ParentId: Integer
        # @param OrgId: 源账号组织ID。使用第三方导入用户源时，记录该分组在源组织架构下的分组ID
        # @type OrgId: String
        # @param Name: 分组名称
        # @type Name: String
        # @param Id: 分组ID
        # @type Id: Integer
        # @param Description: 分组描述
        # @type Description: String
        # @param Source: 同步数据源
        # @type Source: Integer
        # @param IdPath: 账号分组ID全路径，点分格式
        # @type IdPath: String
        # @param Itime: 创建时间
        # @type Itime: String
        # @param ParentOrgId: 父源账号组织ID。使用第三方导入用户源时，记录该分组在源组织架构下的分组ID
        # @type ParentOrgId: String
        # @param ImportType: 导入类型
        # @type ImportType: String
        # @param MiniIamId: miniIAM id
        # @type MiniIamId: String
        # @param UserTotal: 该分组下含子组的所有用户总数
        # @type UserTotal: Integer
        # @param IsLeaf: 是否叶子节点
        # @type IsLeaf: Boolean
        # @param ReadOnly: 是否该账户的直接权限
        # @type ReadOnly: Boolean
        # @param LatestSyncResult: 最新一次同步任务的结果
        # @type LatestSyncResult: String
        # @param LatestSyncTime: 最新一次同步任务的结束时间
        # @type LatestSyncTime: String
        # @param NamePathArr: 分组名称数组
        # @type NamePathArr: Array

        attr_accessor :NamePath, :IdPathArr, :ExtraInfo, :Utime, :ParentId, :OrgId, :Name, :Id, :Description, :Source, :IdPath, :Itime, :ParentOrgId, :ImportType, :MiniIamId, :UserTotal, :IsLeaf, :ReadOnly, :LatestSyncResult, :LatestSyncTime, :NamePathArr

        def initialize(namepath=nil, idpatharr=nil, extrainfo=nil, utime=nil, parentid=nil, orgid=nil, name=nil, id=nil, description=nil, source=nil, idpath=nil, itime=nil, parentorgid=nil, importtype=nil, miniiamid=nil, usertotal=nil, isleaf=nil, readonly=nil, latestsyncresult=nil, latestsynctime=nil, namepatharr=nil)
          @NamePath = namepath
          @IdPathArr = idpatharr
          @ExtraInfo = extrainfo
          @Utime = utime
          @ParentId = parentid
          @OrgId = orgid
          @Name = name
          @Id = id
          @Description = description
          @Source = source
          @IdPath = idpath
          @Itime = itime
          @ParentOrgId = parentorgid
          @ImportType = importtype
          @MiniIamId = miniiamid
          @UserTotal = usertotal
          @IsLeaf = isleaf
          @ReadOnly = readonly
          @LatestSyncResult = latestsyncresult
          @LatestSyncTime = latestsynctime
          @NamePathArr = namepatharr
        end

        def deserialize(params)
          @NamePath = params['NamePath']
          @IdPathArr = params['IdPathArr']
          @ExtraInfo = params['ExtraInfo']
          @Utime = params['Utime']
          @ParentId = params['ParentId']
          @OrgId = params['OrgId']
          @Name = params['Name']
          @Id = params['Id']
          @Description = params['Description']
          @Source = params['Source']
          @IdPath = params['IdPath']
          @Itime = params['Itime']
          @ParentOrgId = params['ParentOrgId']
          @ImportType = params['ImportType']
          @MiniIamId = params['MiniIamId']
          @UserTotal = params['UserTotal']
          @IsLeaf = params['IsLeaf']
          @ReadOnly = params['ReadOnly']
          @LatestSyncResult = params['LatestSyncResult']
          @LatestSyncTime = params['LatestSyncTime']
          @NamePathArr = params['NamePathArr']
        end
      end

      # 账户分组详情响应数据
      class DescribeAccountGroupsPageResp < TencentCloud::Common::AbstractModel
        # @param Items: 账户分响应对象集合
        # @type Items: Array
        # @param Page: 分页公共对象
        # @type Page: :class:`Tencentcloud::Ioa.v20220601.models.Paging`

        attr_accessor :Items, :Page

        def initialize(items=nil, page=nil)
          @Items = items
          @Page = page
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              describeaccountgroupsdata_tmp = DescribeAccountGroupsData.new
              describeaccountgroupsdata_tmp.deserialize(i)
              @Items << describeaccountgroupsdata_tmp
            end
          end
          unless params['Page'].nil?
            @Page = Paging.new
            @Page.deserialize(params['Page'])
          end
        end
      end

      # DescribeAccountGroups请求参数结构体
      class DescribeAccountGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Deepin: 搜索范围：0-仅当前分组的直接子组，1-当前分组的所有子组。默认为0。
        # @type Deepin: Integer
        # @param Condition: 查询条件

        # 过滤参数
        # 1、Name，string类型，按分组名过滤
        # 是否必填：否
        # 操作符: like

        # 排序条件
        # 1、Itime，string类型，按分组创建时间排序
        # 是否必填：否
        # 2、Utime，string类型，按分组更新时间排序
        # 是否必填：否
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`
        # @param ParentId: 父分组ID，获取该分组下的子组信息。默认查询全网根分组下子组信息。
        # @type ParentId: Integer

        attr_accessor :Deepin, :Condition, :ParentId

        def initialize(deepin=nil, condition=nil, parentid=nil)
          @Deepin = deepin
          @Condition = condition
          @ParentId = parentid
        end

        def deserialize(params)
          @Deepin = params['Deepin']
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
          @ParentId = params['ParentId']
        end
      end

      # DescribeAccountGroups返回参数结构体
      class DescribeAccountGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 账号分组详情响应数据
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeAccountGroupsPageResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeAccountGroupsPageResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 业务响应数据
      class DescribeAggrSoftCategorySoftListData < TencentCloud::Common::AbstractModel
        # @param Page: 分页公共对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: :class:`Tencentcloud::Ioa.v20220601.models.Paging`
        # @param Total: 总数(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param AggrSoftCategorySoftList: 行数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AggrSoftCategorySoftList: Array

        attr_accessor :Page, :Total, :AggrSoftCategorySoftList

        def initialize(page=nil, total=nil, aggrsoftcategorysoftlist=nil)
          @Page = page
          @Total = total
          @AggrSoftCategorySoftList = aggrsoftcategorysoftlist
        end

        def deserialize(params)
          unless params['Page'].nil?
            @Page = Paging.new
            @Page.deserialize(params['Page'])
          end
          @Total = params['Total']
          unless params['AggrSoftCategorySoftList'].nil?
            @AggrSoftCategorySoftList = []
            params['AggrSoftCategorySoftList'].each do |i|
              aggrcategorysoftdetailrow_tmp = AggrCategorySoftDetailRow.new
              aggrcategorysoftdetailrow_tmp.deserialize(i)
              @AggrSoftCategorySoftList << aggrcategorysoftdetailrow_tmp
            end
          end
        end
      end

      # DescribeAggrSoftCategorySoftList请求参数结构体
      class DescribeAggrSoftCategorySoftListRequest < TencentCloud::Common::AbstractModel
        # @param Condition: 过滤条件、分页参数<li>Name - String - 过滤支持：是 - 操作符:eq,neq,like,ilike,nlike - 排序支持：是 - 按类别名称过滤或排序。</li><li>CorpName - String - 过滤支持：是 - 操作符:eq,neq,like,ilike,nlike - 排序支持：是 - 按CorpName过滤或排序。</li><li>Version - String - 过滤支持：否 - 操作符:eq,like - 排序支持：是 - 按版本排序。</li><li>InstalledDeviceCount - int - 过滤支持：否 - 操作符:eq,like - 排序支持：是 - 按安装设备数量排序。</li><li>GenuineRate - float - 过滤支持：否 - 操作符:eq,like - 排序支持：是 - 按正版率排序。</li><li>AuthNum - int - 过滤支持：否 - 操作符:eq,like - 排序支持：是 - 按授权数量排序。</li><li>CategoryNamePath - String - 过滤支持：否 - 操作符:eq,like - 排序支持：是 - 按类别路径名排序。</li>
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`
        # @param OsType: 操作系统类型（0: win，1：linux，2: mac，4：android，5：ios 默认值0）
        # @type OsType: Integer

        attr_accessor :Condition, :OsType

        def initialize(condition=nil, ostype=nil)
          @Condition = condition
          @OsType = ostype
        end

        def deserialize(params)
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
          @OsType = params['OsType']
        end
      end

      # DescribeAggrSoftCategorySoftList返回参数结构体
      class DescribeAggrSoftCategorySoftListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeAggrSoftCategorySoftListData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeAggrSoftCategorySoftListData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 聚合软件详情数据
      class DescribeAggrSoftDetailData < TencentCloud::Common::AbstractModel
        # @param Name: 软件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param OsType: 平台
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsType: Integer
        # @param PiracyRisk: 盗版风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PiracyRisk: Integer
        # @param Corp: 厂商
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Corp: String
        # @param SoftVersionDist: 已安装版本分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoftVersionDist: Array
        # @param PiracyVersionDist: 盗版版本安装
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PiracyVersionDist: Array
        # @param InstalledDeviceNum: 安装设备数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstalledDeviceNum: Integer
        # @param PiracyInstalledDeviceNum: 盗版安装设备数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PiracyInstalledDeviceNum: Integer
        # @param InstalledUserNum: 安装用户数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstalledUserNum: Integer
        # @param PiracyInstalledUserNum: 盗版安装用户数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PiracyInstalledUserNum: Integer
        # @param AuthNum: 授权数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthNum: Integer
        # @param GenuineRate: 正版率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GenuineRate: Float
        # @param UpgradableDeviceNum: 有新版本可升级的设备数量
        # @type UpgradableDeviceNum: Integer
        # @param UpgradableVersions: 当前可升级的最新版本信息, 每一项均为json字符串
        # @type UpgradableVersions: Array

        attr_accessor :Name, :OsType, :PiracyRisk, :Corp, :SoftVersionDist, :PiracyVersionDist, :InstalledDeviceNum, :PiracyInstalledDeviceNum, :InstalledUserNum, :PiracyInstalledUserNum, :AuthNum, :GenuineRate, :UpgradableDeviceNum, :UpgradableVersions

        def initialize(name=nil, ostype=nil, piracyrisk=nil, corp=nil, softversiondist=nil, piracyversiondist=nil, installeddevicenum=nil, piracyinstalleddevicenum=nil, installedusernum=nil, piracyinstalledusernum=nil, authnum=nil, genuinerate=nil, upgradabledevicenum=nil, upgradableversions=nil)
          @Name = name
          @OsType = ostype
          @PiracyRisk = piracyrisk
          @Corp = corp
          @SoftVersionDist = softversiondist
          @PiracyVersionDist = piracyversiondist
          @InstalledDeviceNum = installeddevicenum
          @PiracyInstalledDeviceNum = piracyinstalleddevicenum
          @InstalledUserNum = installedusernum
          @PiracyInstalledUserNum = piracyinstalledusernum
          @AuthNum = authnum
          @GenuineRate = genuinerate
          @UpgradableDeviceNum = upgradabledevicenum
          @UpgradableVersions = upgradableversions
        end

        def deserialize(params)
          @Name = params['Name']
          @OsType = params['OsType']
          @PiracyRisk = params['PiracyRisk']
          @Corp = params['Corp']
          unless params['SoftVersionDist'].nil?
            @SoftVersionDist = []
            params['SoftVersionDist'].each do |i|
              softversionandnum_tmp = SoftVersionAndNum.new
              softversionandnum_tmp.deserialize(i)
              @SoftVersionDist << softversionandnum_tmp
            end
          end
          unless params['PiracyVersionDist'].nil?
            @PiracyVersionDist = []
            params['PiracyVersionDist'].each do |i|
              softversionandnum_tmp = SoftVersionAndNum.new
              softversionandnum_tmp.deserialize(i)
              @PiracyVersionDist << softversionandnum_tmp
            end
          end
          @InstalledDeviceNum = params['InstalledDeviceNum']
          @PiracyInstalledDeviceNum = params['PiracyInstalledDeviceNum']
          @InstalledUserNum = params['InstalledUserNum']
          @PiracyInstalledUserNum = params['PiracyInstalledUserNum']
          @AuthNum = params['AuthNum']
          @GenuineRate = params['GenuineRate']
          @UpgradableDeviceNum = params['UpgradableDeviceNum']
          @UpgradableVersions = params['UpgradableVersions']
        end
      end

      # DescribeAggrSoftDetail请求参数结构体
      class DescribeAggrSoftDetailRequest < TencentCloud::Common::AbstractModel
        # @param Name: 软件名称
        # @type Name: String
        # @param OsType: 操作系统
        # @type OsType: Integer

        attr_accessor :Name, :OsType

        def initialize(name=nil, ostype=nil)
          @Name = name
          @OsType = ostype
        end

        def deserialize(params)
          @Name = params['Name']
          @OsType = params['OsType']
        end
      end

      # DescribeAggrSoftDetail返回参数结构体
      class DescribeAggrSoftDetailResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeAggrSoftDetailData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeAggrSoftDetailData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 聚合软件-已安装终端列表
      class DescribeAggrSoftDeviceListData < TencentCloud::Common::AbstractModel
        # @param Page: 分页公共对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: :class:`Tencentcloud::Ioa.v20220601.models.Paging`
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param AggrSoftDeviceList: 详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AggrSoftDeviceList: Array

        attr_accessor :Page, :Total, :AggrSoftDeviceList

        def initialize(page=nil, total=nil, aggrsoftdevicelist=nil)
          @Page = page
          @Total = total
          @AggrSoftDeviceList = aggrsoftdevicelist
        end

        def deserialize(params)
          unless params['Page'].nil?
            @Page = Paging.new
            @Page.deserialize(params['Page'])
          end
          @Total = params['Total']
          unless params['AggrSoftDeviceList'].nil?
            @AggrSoftDeviceList = []
            params['AggrSoftDeviceList'].each do |i|
              aggrsoftdevicerow_tmp = AggrSoftDeviceRow.new
              aggrsoftdevicerow_tmp.deserialize(i)
              @AggrSoftDeviceList << aggrsoftdevicerow_tmp
            end
          end
        end
      end

      # DescribeAggrSoftDeviceList请求参数结构体
      class DescribeAggrSoftDeviceListRequest < TencentCloud::Common::AbstractModel
        # @param Condition: 过滤条件
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`
        # @param Name: 软件名
        # @type Name: String
        # @param OsType: 0:win 2:mac
        # @type OsType: Integer

        attr_accessor :Condition, :Name, :OsType

        def initialize(condition=nil, name=nil, ostype=nil)
          @Condition = condition
          @Name = name
          @OsType = ostype
        end

        def deserialize(params)
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
          @Name = params['Name']
          @OsType = params['OsType']
        end
      end

      # DescribeAggrSoftDeviceList返回参数结构体
      class DescribeAggrSoftDeviceListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 已安装终端列表
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeAggrSoftDeviceListData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeAggrSoftDeviceListData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDLPEdgeNodeGroups请求参数结构体
      class DescribeDLPEdgeNodeGroupsRequest < TencentCloud::Common::AbstractModel
        # @param DomainInstanceId: 管理域实例ID，用于CAM管理域权限分配。若企业未进行管理域的划分，可直接传入根域"1"，此时表示针对当前企业的全部设备和账号进行接口CRUD，具体CRUD的影响范围限制于相应接口的入参。
        # @type DomainInstanceId: String
        # @param Condition: 过滤条件
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`

        attr_accessor :DomainInstanceId, :Condition

        def initialize(domaininstanceid=nil, condition=nil)
          @DomainInstanceId = domaininstanceid
          @Condition = condition
        end

        def deserialize(params)
          @DomainInstanceId = params['DomainInstanceId']
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
        end
      end

      # DescribeDLPEdgeNodeGroups返回参数结构体
      class DescribeDLPEdgeNodeGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务响应数据
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeDLPEdgeNodeGroupsRspData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeDLPEdgeNodeGroupsRspData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 业务响应数据
      class DescribeDLPEdgeNodeGroupsRspData < TencentCloud::Common::AbstractModel
        # @param Items: 分组信息
        # @type Items: Array
        # @param Page: 分页信息
        # @type Page: :class:`Tencentcloud::Ioa.v20220601.models.Paging`

        attr_accessor :Items, :Page

        def initialize(items=nil, page=nil)
          @Items = items
          @Page = page
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              describedlpedgenodegroupsrspitem_tmp = DescribeDLPEdgeNodeGroupsRspItem.new
              describedlpedgenodegroupsrspitem_tmp.deserialize(i)
              @Items << describedlpedgenodegroupsrspitem_tmp
            end
          end
          unless params['Page'].nil?
            @Page = Paging.new
            @Page.deserialize(params['Page'])
          end
        end
      end

      # 节点分组信息
      class DescribeDLPEdgeNodeGroupsRspItem < TencentCloud::Common::AbstractModel
        # @param Id: 自增id，数据库中唯一
        # @type Id: Integer
        # @param GroupName: 节点分组名称
        # @type GroupName: String
        # @param GroupId: 节点分组id
        # @type GroupId: String
        # @param EdgeCount: 包含边缘节点数量
        # @type EdgeCount: Integer

        attr_accessor :Id, :GroupName, :GroupId, :EdgeCount

        def initialize(id=nil, groupname=nil, groupid=nil, edgecount=nil)
          @Id = id
          @GroupName = groupname
          @GroupId = groupid
          @EdgeCount = edgecount
        end

        def deserialize(params)
          @Id = params['Id']
          @GroupName = params['GroupName']
          @GroupId = params['GroupId']
          @EdgeCount = params['EdgeCount']
        end
      end

      # 业务响应数据
      class DescribeDLPEdgeNodesPageData < TencentCloud::Common::AbstractModel
        # @param Page: 分页信息
        # @type Page: :class:`Tencentcloud::Ioa.v20220601.models.Paging`
        # @param Items: 节点列表
        # @type Items: Array

        attr_accessor :Page, :Items

        def initialize(page=nil, items=nil)
          @Page = page
          @Items = items
        end

        def deserialize(params)
          unless params['Page'].nil?
            @Page = Paging.new
            @Page.deserialize(params['Page'])
          end
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              describedlpedgenodesrspitem_tmp = DescribeDLPEdgeNodesRspItem.new
              describedlpedgenodesrspitem_tmp.deserialize(i)
              @Items << describedlpedgenodesrspitem_tmp
            end
          end
        end
      end

      # DescribeDLPEdgeNodes请求参数结构体
      class DescribeDLPEdgeNodesRequest < TencentCloud::Common::AbstractModel
        # @param DomainInstanceId: 管理域实例ID，用于CAM管理域权限分配。若企业未进行管理域的划分，可直接传入根域"1"，此时表示针对当前企业的全部设备和账号进行接口CRUD，具体CRUD的影响范围限制于相应接口的入参。
        # @type DomainInstanceId: String
        # @param Condition: 过滤条件、分页参数<li>EdgeNodeName - string - 是否必填：否 - 操作符: ilike  - 排序支持：否- 按节点名称过滤。</li>
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`

        attr_accessor :DomainInstanceId, :Condition

        def initialize(domaininstanceid=nil, condition=nil)
          @DomainInstanceId = domaininstanceid
          @Condition = condition
        end

        def deserialize(params)
          @DomainInstanceId = params['DomainInstanceId']
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
        end
      end

      # DescribeDLPEdgeNodes返回参数结构体
      class DescribeDLPEdgeNodesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务响应数据
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeDLPEdgeNodesPageData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeDLPEdgeNodesPageData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 边缘节点信息
      class DescribeDLPEdgeNodesRspItem < TencentCloud::Common::AbstractModel
        # @param Id: 自增id，数据库中唯一
        # @type Id: Integer
        # @param GroupId: 节点分组唯一id
        # @type GroupId: String
        # @param EdgeNodeId: 节点id
        # @type EdgeNodeId: String
        # @param EdgeNodeName: 节点名称
        # @type EdgeNodeName: String
        # @param IsActive: 是否活跃/连通
        # @type IsActive: Boolean
        # @param GroupName: 节点分组名称
        # @type GroupName: String
        # @param Ip: 节点IP
        # @type Ip: String
        # @param Version: 节点版本
        # @type Version: String
        # @param IsUpgradeEnable: 是否支持升级连接器
        # @type IsUpgradeEnable: Boolean
        # @param UpgradeStatus: 升级状态: 0(升级中) , 1(升级失败) 或 2(升级成功)
        # @type UpgradeStatus: Integer
        # @param UpgradeDescription: 升级状态描述
        # @type UpgradeDescription: String
        # @param RuleVersion: 规则版本
        # @type RuleVersion: String

        attr_accessor :Id, :GroupId, :EdgeNodeId, :EdgeNodeName, :IsActive, :GroupName, :Ip, :Version, :IsUpgradeEnable, :UpgradeStatus, :UpgradeDescription, :RuleVersion

        def initialize(id=nil, groupid=nil, edgenodeid=nil, edgenodename=nil, isactive=nil, groupname=nil, ip=nil, version=nil, isupgradeenable=nil, upgradestatus=nil, upgradedescription=nil, ruleversion=nil)
          @Id = id
          @GroupId = groupid
          @EdgeNodeId = edgenodeid
          @EdgeNodeName = edgenodename
          @IsActive = isactive
          @GroupName = groupname
          @Ip = ip
          @Version = version
          @IsUpgradeEnable = isupgradeenable
          @UpgradeStatus = upgradestatus
          @UpgradeDescription = upgradedescription
          @RuleVersion = ruleversion
        end

        def deserialize(params)
          @Id = params['Id']
          @GroupId = params['GroupId']
          @EdgeNodeId = params['EdgeNodeId']
          @EdgeNodeName = params['EdgeNodeName']
          @IsActive = params['IsActive']
          @GroupName = params['GroupName']
          @Ip = params['Ip']
          @Version = params['Version']
          @IsUpgradeEnable = params['IsUpgradeEnable']
          @UpgradeStatus = params['UpgradeStatus']
          @UpgradeDescription = params['UpgradeDescription']
          @RuleVersion = params['RuleVersion']
        end
      end

      # 查询文件检测结果响应数据
      class DescribeDLPFileDetectResultData < TencentCloud::Common::AbstractModel
        # @param FileMd5: 提交任务时的文件md5
        # @type FileMd5: String
        # @param FileName: 提交任务时的文件名
        # @type FileName: String
        # @param Status: 状态：等待检测->正在检测->检测失败/检测成功。或任务不存在
        # @type Status: String
        # @param DetectResult: 文件检测结果，json字符串。包含文件基本信息如type，path，md5以及命中的信息。其中State为检测状态，0为待解析文件，1为检测中，2为检测完成；FileAbstract为命中的上下文摘要信息，HitRuleid是命中的规则唯一ID，HitRuleCategoryId是规则分类唯一id，HitLevel是文件的等级，HitRuleDesc是规则的名称，HitContent是具体命中的规则以及词库信息，以及命中的内容。EngineConfigVersion是当前词库版本号
        # @type DetectResult: String

        attr_accessor :FileMd5, :FileName, :Status, :DetectResult

        def initialize(filemd5=nil, filename=nil, status=nil, detectresult=nil)
          @FileMd5 = filemd5
          @FileName = filename
          @Status = status
          @DetectResult = detectresult
        end

        def deserialize(params)
          @FileMd5 = params['FileMd5']
          @FileName = params['FileName']
          @Status = params['Status']
          @DetectResult = params['DetectResult']
        end
      end

      # DescribeDLPFileDetectResult请求参数结构体
      class DescribeDLPFileDetectResultRequest < TencentCloud::Common::AbstractModel
        # @param DomainInstanceId: 管理域实例ID，用于CAM管理域权限分配。若企业未进行管理域的划分，可直接传入根域"1"，此时表示针对当前企业的全部设备和账号进行接口CRUD，具体CRUD的影响范围限制于相应接口的入参。
        # @type DomainInstanceId: String
        # @param QueryID: 查询ID，即提交送检任务接口（CreateDLPFileDetectionTask）返回的任务ID（DLPFileDetectionTaskID）
        # @type QueryID: String

        attr_accessor :DomainInstanceId, :QueryID

        def initialize(domaininstanceid=nil, queryid=nil)
          @DomainInstanceId = domaininstanceid
          @QueryID = queryid
        end

        def deserialize(params)
          @DomainInstanceId = params['DomainInstanceId']
          @QueryID = params['QueryID']
        end
      end

      # DescribeDLPFileDetectResult返回参数结构体
      class DescribeDLPFileDetectResultResponse < TencentCloud::Common::AbstractModel
        # @param Data: 文件鉴定任务结果数据。详情查看具体数据结构
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeDLPFileDetectResultData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeDLPFileDetectResultData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询文件检测结果响应数据
      class DescribeDLPFileDetectTaskResult < TencentCloud::Common::AbstractModel
        # @param FileMd5: 提交任务时的文件md5
        # @type FileMd5: String
        # @param FileName: 提交任务时的文件名
        # @type FileName: String
        # @param Status: 检测执行状态：0未执行 1等待执行 2执行中 3执行失败 4执行完成
        # @type Status: Integer
        # @param DetectResult:     FileAbstract:文件摘要
        #     FileAttr:文件属性
        #     FileCategory:命中分级分类 array
        #     FileContent:命中信息json(array)
        # 	            RuleId:规则Id
        # 				RuleName:规则名称
        # 				RuleLevel:规则等级
        # 				Hits：命中词库内容
        # 				    LibraryId：词库Id
        # 					LibraryType:词库类型
        # 					LibraryName:词库名称
        # 					Attribute: 命中属性 doc.Content文件内容|doc.FileSize文件大小|doc.Name文件名|doc.Type文件类型
        # 					String  待匹配内容
        # 					Content 命中内容
        #                 HitsTotal 规则命中次数
        #     FileMd5 文件ND5
        #     FileName 文件名
        #     FileSize 文件大小
        #     FileType 文件后缀
        #     FileTypeName 文件类型名称
        #     FinalDataLevel 命中最高等级
        #     NodeId 节点唯一Id
        #     NodeIp 节点IP
        #     NodeName 节点名称
        #     OperateTime 文件操作时间
        #     Url 文件下载Url
        # @type DetectResult: String
        # @param Message: 检测执行状态描述
        # @type Message: String

        attr_accessor :FileMd5, :FileName, :Status, :DetectResult, :Message

        def initialize(filemd5=nil, filename=nil, status=nil, detectresult=nil, message=nil)
          @FileMd5 = filemd5
          @FileName = filename
          @Status = status
          @DetectResult = detectresult
          @Message = message
        end

        def deserialize(params)
          @FileMd5 = params['FileMd5']
          @FileName = params['FileName']
          @Status = params['Status']
          @DetectResult = params['DetectResult']
          @Message = params['Message']
        end
      end

      # DescribeDLPFileDetectTaskResult请求参数结构体
      class DescribeDLPFileDetectTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param DomainInstanceId: 管理域实例ID，用于CAM管理域权限分配。若企业未进行管理域的划分，可直接传入根域"1"，此时表示针对当前企业的全部设备和账号进行接口CRUD，具体CRUD的影响范围限制于相应接口的入参。
        # @type DomainInstanceId: String
        # @param TaskRequestId: 任务请求Id
        # @type TaskRequestId: String

        attr_accessor :DomainInstanceId, :TaskRequestId

        def initialize(domaininstanceid=nil, taskrequestid=nil)
          @DomainInstanceId = domaininstanceid
          @TaskRequestId = taskrequestid
        end

        def deserialize(params)
          @DomainInstanceId = params['DomainInstanceId']
          @TaskRequestId = params['TaskRequestId']
        end
      end

      # DescribeDLPFileDetectTaskResult返回参数结构体
      class DescribeDLPFileDetectTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param Data: 文件鉴定任务结果数据。详情查看具体数据结构
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeDLPFileDetectTaskResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeDLPFileDetectTaskResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceChildGroups请求参数结构体
      class DescribeDeviceChildGroupsRequest < TencentCloud::Common::AbstractModel
        # @param DomainInstanceId: 管理域实例ID，用于CAM管理域权限分配。若企业未进行管理域的划分，可直接传入根域"1"，此时表示针对当前企业的全部设备和账号进行接口CRUD，具体CRUD的影响范围限制于相应接口的入参。
        # @type DomainInstanceId: String
        # @param Condition: 过滤条件参数（字段含义请参考接口返回值）
        # - Name, 类型String，支持操作：【like，ilike】，支持排序




        # 分页参数
        # - PageNum 从1开始，小于等于0时使用默认参数
        # - PageSize 最大值5000，最好不超过100
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`
        # @param ParentId: 父分组id，默认0：表示获取全网终端分组
        # @type ParentId: Integer
        # @param OsType: 操作系统类型（0：win，1：linux，2：mac，4：android，5：ios；默认0：系统win）
        # @type OsType: Integer

        attr_accessor :DomainInstanceId, :Condition, :ParentId, :OsType

        def initialize(domaininstanceid=nil, condition=nil, parentid=nil, ostype=nil)
          @DomainInstanceId = domaininstanceid
          @Condition = condition
          @ParentId = parentid
          @OsType = ostype
        end

        def deserialize(params)
          @DomainInstanceId = params['DomainInstanceId']
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
          @ParentId = params['ParentId']
          @OsType = params['OsType']
        end
      end

      # DescribeDeviceChildGroups返回参数结构体
      class DescribeDeviceChildGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 查询设备组子分组详情响应结构
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeDeviceChildGroupsRspData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeDeviceChildGroupsRspData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询设备组子分组详情响应结构
      class DescribeDeviceChildGroupsRspData < TencentCloud::Common::AbstractModel
        # @param Items: 返回的数组列表
        # @type Items: Array

        attr_accessor :Items

        def initialize(items=nil)
          @Items = items
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              devicegroupdetail_tmp = DeviceGroupDetail.new
              devicegroupdetail_tmp.deserialize(i)
              @Items << devicegroupdetail_tmp
            end
          end
        end
      end

      # 终端详情响应对象集合
      class DescribeDeviceDetailListData < TencentCloud::Common::AbstractModel
        # @param UserName: 账号名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param ComputerName: 计算机名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComputerName: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param AccountGroupIdPath: 用户组IdPath
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountGroupIdPath: String
        # @param AccountGroupId: 用户组id(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountGroupId: Integer
        # @param GroupNamePath: 终端组名path
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupNamePath: String
        # @param Ip: Ip地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param AccountGroupName: 用户组名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountGroupName: String
        # @param GroupIdPath: 终端组IdPath
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupIdPath: String
        # @param Mid: 唯一标识Mid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mid: String
        # @param IoaUserName: IOA账号名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IoaUserName: String
        # @param GroupId: 所在分组Id(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: Integer
        # @param GroupName: 所在分组Name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param Mac: Mac地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mac: String
        # @param Version: 软件版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param AccountGroupNamePath: 用户组名Path
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountGroupNamePath: String
        # @param Id: 列表Id(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer

        attr_accessor :UserName, :ComputerName, :Name, :AccountGroupIdPath, :AccountGroupId, :GroupNamePath, :Ip, :AccountGroupName, :GroupIdPath, :Mid, :IoaUserName, :GroupId, :GroupName, :Mac, :Version, :AccountGroupNamePath, :Id

        def initialize(username=nil, computername=nil, name=nil, accountgroupidpath=nil, accountgroupid=nil, groupnamepath=nil, ip=nil, accountgroupname=nil, groupidpath=nil, mid=nil, ioausername=nil, groupid=nil, groupname=nil, mac=nil, version=nil, accountgroupnamepath=nil, id=nil)
          @UserName = username
          @ComputerName = computername
          @Name = name
          @AccountGroupIdPath = accountgroupidpath
          @AccountGroupId = accountgroupid
          @GroupNamePath = groupnamepath
          @Ip = ip
          @AccountGroupName = accountgroupname
          @GroupIdPath = groupidpath
          @Mid = mid
          @IoaUserName = ioausername
          @GroupId = groupid
          @GroupName = groupname
          @Mac = mac
          @Version = version
          @AccountGroupNamePath = accountgroupnamepath
          @Id = id
        end

        def deserialize(params)
          @UserName = params['UserName']
          @ComputerName = params['ComputerName']
          @Name = params['Name']
          @AccountGroupIdPath = params['AccountGroupIdPath']
          @AccountGroupId = params['AccountGroupId']
          @GroupNamePath = params['GroupNamePath']
          @Ip = params['Ip']
          @AccountGroupName = params['AccountGroupName']
          @GroupIdPath = params['GroupIdPath']
          @Mid = params['Mid']
          @IoaUserName = params['IoaUserName']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @Mac = params['Mac']
          @Version = params['Version']
          @AccountGroupNamePath = params['AccountGroupNamePath']
          @Id = params['Id']
        end
      end

      # 业务响应数据
      class DescribeDeviceDetailListPageData < TencentCloud::Common::AbstractModel
        # @param Items: 终端详情响应对象集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param Page: 分页公共对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: :class:`Tencentcloud::Ioa.v20220601.models.Paging`

        attr_accessor :Items, :Page

        def initialize(items=nil, page=nil)
          @Items = items
          @Page = page
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              describedevicedetaillistdata_tmp = DescribeDeviceDetailListData.new
              describedevicedetaillistdata_tmp.deserialize(i)
              @Items << describedevicedetaillistdata_tmp
            end
          end
          unless params['Page'].nil?
            @Page = Paging.new
            @Page.deserialize(params['Page'])
          end
        end
      end

      # DescribeDeviceDetailList请求参数结构体
      class DescribeDeviceDetailListRequest < TencentCloud::Common::AbstractModel
        # @param OsType: 系统类型(只支持32位)
        # @type OsType: Integer
        # @param GroupId: 终端分组id(只支持32位)
        # @type GroupId: Integer
        # @param Condition: 过滤条件、分页参数
        # <li>Name - String - 过滤支持：是 - 操作符:eq,like - 排序支持：是 。</li>
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`

        attr_accessor :OsType, :GroupId, :Condition

        def initialize(ostype=nil, groupid=nil, condition=nil)
          @OsType = ostype
          @GroupId = groupid
          @Condition = condition
        end

        def deserialize(params)
          @OsType = params['OsType']
          @GroupId = params['GroupId']
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
        end
      end

      # DescribeDeviceDetailList返回参数结构体
      class DescribeDeviceDetailListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务响应数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeDeviceDetailListPageData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeDeviceDetailListPageData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 终端硬件信息列表Item数据
      class DescribeDeviceHardwareInfoItem < TencentCloud::Common::AbstractModel
        # @param Id: 设备ID
        # @type Id: Integer
        # @param Mid: 设备唯一标识符
        # @type Mid: String
        # @param OsType: OS平台 0 Windows 1 Linux 2 macOS 4 Android 5 iOS
        # @type OsType: Integer
        # @param Name: 终端名
        # @type Name: String
        # @param UserName: 终端用户名
        # @type UserName: String
        # @param Status: 授权状态（ 4未授权 5已授权）
        # @type Status: Integer
        # @param GroupId: 设备所属分组ID
        # @type GroupId: Integer
        # @param GroupName: 设备所属分组名
        # @type GroupName: String
        # @param GroupNamePath: 设备所属分组路径
        # @type GroupNamePath: String
        # @param AccountName: 最近登录账户的姓名
        # @type AccountName: String
        # @param Ip: 出口IP
        # @type Ip: String
        # @param MacAddr: MAC地址
        # @type MacAddr: String
        # @param Cpu: CPU品牌型号
        # @type Cpu: String
        # @param Memory: 内存信息
        # @type Memory: String
        # @param HardDiskSize: 硬盘信息
        # @type HardDiskSize: String
        # @param Monitor: 显示器品牌型号
        # @type Monitor: String
        # @param RemarkName: 终端备注名
        # @type RemarkName: String

        attr_accessor :Id, :Mid, :OsType, :Name, :UserName, :Status, :GroupId, :GroupName, :GroupNamePath, :AccountName, :Ip, :MacAddr, :Cpu, :Memory, :HardDiskSize, :Monitor, :RemarkName

        def initialize(id=nil, mid=nil, ostype=nil, name=nil, username=nil, status=nil, groupid=nil, groupname=nil, groupnamepath=nil, accountname=nil, ip=nil, macaddr=nil, cpu=nil, memory=nil, harddisksize=nil, monitor=nil, remarkname=nil)
          @Id = id
          @Mid = mid
          @OsType = ostype
          @Name = name
          @UserName = username
          @Status = status
          @GroupId = groupid
          @GroupName = groupname
          @GroupNamePath = groupnamepath
          @AccountName = accountname
          @Ip = ip
          @MacAddr = macaddr
          @Cpu = cpu
          @Memory = memory
          @HardDiskSize = harddisksize
          @Monitor = monitor
          @RemarkName = remarkname
        end

        def deserialize(params)
          @Id = params['Id']
          @Mid = params['Mid']
          @OsType = params['OsType']
          @Name = params['Name']
          @UserName = params['UserName']
          @Status = params['Status']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @GroupNamePath = params['GroupNamePath']
          @AccountName = params['AccountName']
          @Ip = params['Ip']
          @MacAddr = params['MacAddr']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @HardDiskSize = params['HardDiskSize']
          @Monitor = params['Monitor']
          @RemarkName = params['RemarkName']
        end
      end

      # DescribeDeviceHardwareInfoList请求参数结构体
      class DescribeDeviceHardwareInfoListRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 【必填】设备分组id（需要和OsType匹配），下面是私有化场景下默认id：id-名称-操作系统1	全网终端	Win2	未分组终端	Win30000000	服务器	Win40000101	全网终端	Linux40000102	未分组终端	Linux40000103	服务器	Linux40000201	全网终端	macOS40000202	未分组终端	macOS40000203	服务器	macOS40000401	全网终端	Android40000402	未分组终端	Android40000501	全网终端	iOS40000502	未分组终端	iOSSaaS需要调用分组接口DescribeDeviceChildGroups获取对应分组id
        # @type GroupId: Integer
        # @param OsType: 【必填】操作系统类型（0: win，1：linux，2: mac，4：android，5：ios   默认值0），需要和GroupId或者GroupIds匹配
        # @type OsType: Integer
        # @param DomainInstanceId: 管理域实例ID，用于CAM管理域权限分配。若企业未进行管理域的划分，可直接传入根域"1"，此时表示针对当前企业的全部设备和账号进行接口CRUD，具体CRUD的影响范围限制于相应接口的入参。
        # @type DomainInstanceId: String
        # @param Condition: 过滤条件参数（字段含义请参考接口返回值）  - Name, 类型String，支持操作：【eq，like，ilike】，支持排序  - UserName, 类型String，支持操作：【eq，like，ilike】，支持排序  - IoaUserName，类型String，支持操作：【eq，like，ilike】，支持排序  - MacAddr, 类型String，支持操作：【eq，like，ilike】，支持排序  - Ip, 类型String，支持操作：【eq，like，ilike】，支持排序  - Mid, 类型String，支持操作：【eq，like，ilike】，支持排序  ，支持排序分页参数  - PageNum 从1开始，小于等于0时使用默认参数 - PageSize 最大值5000，最好不超过100
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`

        attr_accessor :GroupId, :OsType, :DomainInstanceId, :Condition

        def initialize(groupid=nil, ostype=nil, domaininstanceid=nil, condition=nil)
          @GroupId = groupid
          @OsType = ostype
          @DomainInstanceId = domaininstanceid
          @Condition = condition
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @OsType = params['OsType']
          @DomainInstanceId = params['DomainInstanceId']
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
        end
      end

      # DescribeDeviceHardwareInfoList返回参数结构体
      class DescribeDeviceHardwareInfoListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页的data数据
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeDeviceHardwareInfoListRspData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeDeviceHardwareInfoListRspData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 终端硬件信息列表响应详情
      class DescribeDeviceHardwareInfoListRspData < TencentCloud::Common::AbstractModel
        # @param Page: 分页数据
        # @type Page: :class:`Tencentcloud::Ioa.v20220601.models.Paging`
        # @param Items: 终端硬件信息数据数组
        # @type Items: Array

        attr_accessor :Page, :Items

        def initialize(page=nil, items=nil)
          @Page = page
          @Items = items
        end

        def deserialize(params)
          unless params['Page'].nil?
            @Page = Paging.new
            @Page.deserialize(params['Page'])
          end
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              describedevicehardwareinfoitem_tmp = DescribeDeviceHardwareInfoItem.new
              describedevicehardwareinfoitem_tmp.deserialize(i)
              @Items << describedevicehardwareinfoitem_tmp
            end
          end
        end
      end

      # DescribeDeviceInfo请求参数结构体
      class DescribeDeviceInfoRequest < TencentCloud::Common::AbstractModel
        # @param DomainInstanceId: 管理域实例ID，用于CAM管理域权限分配。若企业未进行管理域的划分，可直接传入根域"1"，此时表示针对当前企业的全部设备和账号进行接口CRUD，具体CRUD的影响范围限制于相应接口的入参。
        # @type DomainInstanceId: String
        # @param Mid: 终端id
        # @type Mid: String
        # @param Type: 查询类型  process_list network_list service_list
        # @type Type: String

        attr_accessor :DomainInstanceId, :Mid, :Type

        def initialize(domaininstanceid=nil, mid=nil, type=nil)
          @DomainInstanceId = domaininstanceid
          @Mid = mid
          @Type = type
        end

        def deserialize(params)
          @DomainInstanceId = params['DomainInstanceId']
          @Mid = params['Mid']
          @Type = params['Type']
        end
      end

      # DescribeDeviceInfo返回参数结构体
      class DescribeDeviceInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务响应数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeDeviceInfoRspData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeDeviceInfoRspData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 业务响应数据
      class DescribeDeviceInfoRspData < TencentCloud::Common::AbstractModel
        # @param ProcessList: 分页的具体数据对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessList: Array
        # @param NetworkList: 分页的具体数据对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkList: Array
        # @param ServiceList: 分页的具体数据对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceList: Array

        attr_accessor :ProcessList, :NetworkList, :ServiceList

        def initialize(processlist=nil, networklist=nil, servicelist=nil)
          @ProcessList = processlist
          @NetworkList = networklist
          @ServiceList = servicelist
        end

        def deserialize(params)
          unless params['ProcessList'].nil?
            @ProcessList = []
            params['ProcessList'].each do |i|
              deviceprocessinfo_tmp = DeviceProcessInfo.new
              deviceprocessinfo_tmp.deserialize(i)
              @ProcessList << deviceprocessinfo_tmp
            end
          end
          unless params['NetworkList'].nil?
            @NetworkList = []
            params['NetworkList'].each do |i|
              devicenetworkinfo_tmp = DeviceNetworkInfo.new
              devicenetworkinfo_tmp.deserialize(i)
              @NetworkList << devicenetworkinfo_tmp
            end
          end
          unless params['ServiceList'].nil?
            @ServiceList = []
            params['ServiceList'].each do |i|
              deviceserviceinfo_tmp = DeviceServiceInfo.new
              deviceserviceinfo_tmp.deserialize(i)
              @ServiceList << deviceserviceinfo_tmp
            end
          end
        end
      end

      # 查询返回终端自定义分组的Data数据
      class DescribeDeviceVirtualGroupsPageRsp < TencentCloud::Common::AbstractModel
        # @param Page: 分页公共对象
        # @type Page: :class:`Tencentcloud::Ioa.v20220601.models.Paging`
        # @param Items: 终端自定义分组列表数据
        # @type Items: Array

        attr_accessor :Page, :Items

        def initialize(page=nil, items=nil)
          @Page = page
          @Items = items
        end

        def deserialize(params)
          unless params['Page'].nil?
            @Page = Paging.new
            @Page.deserialize(params['Page'])
          end
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              devicevirtualdevicegroupsdetail_tmp = DeviceVirtualDeviceGroupsDetail.new
              devicevirtualdevicegroupsdetail_tmp.deserialize(i)
              @Items << devicevirtualdevicegroupsdetail_tmp
            end
          end
        end
      end

      # DescribeDeviceVirtualGroups请求参数结构体
      class DescribeDeviceVirtualGroupsRequest < TencentCloud::Common::AbstractModel
        # @param DomainInstanceId: 管理域实例ID，用于CAM管理域权限分配。若企业未进行管理域的划分，可直接传入根域"1"，此时表示针对当前企业的全部设备和账号进行接口CRUD，具体CRUD的影响范围限制于相应接口的入参。
        # @type DomainInstanceId: String
        # @param Condition: 滤条件、分页参数 <li>Name - String - 是否必填：否 - 操作符: like  - 排序支持：否- 按终端自定义分组过滤。</li> <li>DeviceVirtualGroupName - String - 是否必填：否 - 操作符: like  - 排序支持：否- 按终端自定义分组过滤。</li>
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`
        # @param OsType: 系统类型（0: win，1：linux，2: mac，4：android，5：ios   默认值0）
        # @type OsType: Integer
        # @param VirtualGroupIds: 非必填，自定义分组ids
        # @type VirtualGroupIds: Array

        attr_accessor :DomainInstanceId, :Condition, :OsType, :VirtualGroupIds

        def initialize(domaininstanceid=nil, condition=nil, ostype=nil, virtualgroupids=nil)
          @DomainInstanceId = domaininstanceid
          @Condition = condition
          @OsType = ostype
          @VirtualGroupIds = virtualgroupids
        end

        def deserialize(params)
          @DomainInstanceId = params['DomainInstanceId']
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
          @OsType = params['OsType']
          @VirtualGroupIds = params['VirtualGroupIds']
        end
      end

      # DescribeDeviceVirtualGroups返回参数结构体
      class DescribeDeviceVirtualGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 查询终端自定义分组的Data数据
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeDeviceVirtualGroupsPageRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeDeviceVirtualGroupsPageRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 分页的data数据
      class DescribeDevicesPageRsp < TencentCloud::Common::AbstractModel
        # @param Paging: 数据分页信息
        # @type Paging: :class:`Tencentcloud::Ioa.v20220601.models.Paging`
        # @param Items: 业务响应数据
        # @type Items: Array

        attr_accessor :Paging, :Items

        def initialize(paging=nil, items=nil)
          @Paging = paging
          @Items = items
        end

        def deserialize(params)
          unless params['Paging'].nil?
            @Paging = Paging.new
            @Paging.deserialize(params['Paging'])
          end
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              devicedetail_tmp = DeviceDetail.new
              devicedetail_tmp.deserialize(i)
              @Items << devicedetail_tmp
            end
          end
        end
      end

      # DescribeDevices请求参数结构体
      class DescribeDevicesRequest < TencentCloud::Common::AbstractModel
        # @param DomainInstanceId: 管理域实例ID，用于CAM管理域权限分配。若企业未进行管理域的划分，可直接传入根域"1"，此时表示针对当前企业的全部设备和账号进行接口CRUD，具体CRUD的影响范围限制于相应接口的入参。
        # @type DomainInstanceId: String
        # @param Condition: 过滤条件参数（字段含义请参考接口返回值）

        # - Mid, 类型String，支持操作：【eq，like，ilike】，支持排序
        # - Name, 类型String，支持操作：【eq，like，ilike】，支持排序
        # - Itime, 类型String，支持操作：【eq，like，ilike】，支持排序
        # - UserName, 类型String，支持操作：【eq，like，ilike】，支持排序
        # - MacAddr, 类型String，支持操作：【eq，like，ilike】，支持排序
        # - UserId, 类型String，支持操作：【eq，like，ilike】，支持排序
        # - Ip, 类型String，支持操作：【eq，like，ilike】，支持排序
        # - Tags，类型String，支持操作：【eq，like，ilike】，支持排序
        # - LocalIpList，类型String，支持操作：【eq，like，ilike】，支持排序
        # - SerialNum，类型String，支持操作：【eq，like，ilike】，支持排序
        # - Version，类型String，支持操作：【eq，like，ilike】，支持排序
        # - StrVersion，类型String，支持操作：【eq，like，ilike】，支持排序
        # - RtpStatus，类型String，支持操作：【eq，like，ilike】，**不支持排序**
        # - HostName，类型String，支持操作：【eq，like，ilike】，支持排序
        # - IoaUserName，类型String，支持操作：【eq，like，ilike】，支持排序
        # - GroupName，类型String，支持操作：【eq，like，ilike】，支持排序
        # - CriticalVulListCount，**类型Int**，支持操作：【eq】，**不支持排序**
        # - RiskCount，**类型Int**，支持操作：【eq】，**不支持排序**
        # - VulVersion，类型String，支持操作：【eq，like，ilike】，**不支持排序**
        # - Virusver，类型String，支持操作：【eq，like，ilike】，**不支持排序**
        # - SysRepver，类型String，支持操作：【eq，like，ilike】，**不支持排序**
        # - BaseBoardSn，类型String，支持操作：【eq，like，ilike】，支持排序
        # - Os，类型String，支持操作：【eq，like，ilike】，支持排序
        # - ConnActiveTime，类型String，支持操作：【eq，like，ilike】，**不支持排序**
        # - FirewallStatus，**类型Int**，支持操作：【eq】，**不支持排序**
        # - ProfileName，类型String，支持操作：【eq，like，ilike】，支持排序
        # - DomainName，类型String，支持操作：【eq，like，ilike】，支持排序
        # - SysRepVersion，类型String，支持操作：【eq，like，ilike】，支持排序
        # - VirusVer，类型String，支持操作：【eq，like，ilike】，支持排序
        # - Cpu，类型String，支持操作：【eq，like，ilike】，支持排序
        # - Memory，类型String，支持操作：【eq，like，ilike】，支持排序
        # - HardDiskSize，类型String，支持操作：【eq，like，ilike】，支持排序
        # - HardwareChangeCount，**类型Int**，支持操作：【eq】，支持排序
        # - AccountName，类型String，支持操作：【like.ilike】，支持排序
        # - AccountGroupName，类型String，支持操作：【like.ilike】，支持排序
        # - ScreenRecordingPermission，**类型Int**，支持操作：【eq】，支持排序
        # - DiskAccessPermission，**类型Int**，支持操作：【eq】，支持排序





        # 分页参数
        # - PageNum 从1开始，小于等于0时使用默认参数
        # - PageSize 最大值5000，最好不超过100
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`
        # @param GroupId: 【和GroupIds必须有一个填写】设备分组id（需要和OsType匹配），下面是私有化场景下默认id：
        # id-名称-操作系统
        # 1	全网终端	Win
        # 2	未分组终端	Win
        # 30000000	服务器	Win
        # 40000101	全网终端	Linux
        # 40000102	未分组终端	Linux
        # 40000103	服务器	Linux
        # 40000201	全网终端	macOS
        # 40000202	未分组终端	macOS
        # 40000203	服务器	macOS
        # 40000401	全网终端	Android
        # 40000402	未分组终端	Android
        # 40000501	全网终端	iOS
        # 40000502	未分组终端	iOS


        # SaaS需要调用分组接口DescribeDeviceChildGroups获取对应分组id
        # @type GroupId: Integer
        # @param OsType: 操作系统类型（0: win，1：linux，2: mac，4：android，5：ios   默认值0），需要和GroupId或者GroupIds匹配
        # @type OsType: Integer
        # @param OnlineStatus: 在线状态 （2表示在线，0或者1表示离线）
        # @type OnlineStatus: Integer
        # @param Filters: 过滤条件--兼容旧接口,参数同Condition
        # @type Filters: Array
        # @param Sort: 排序字段--兼容旧接口,参数同Condition
        # @type Sort: :class:`Tencentcloud::Ioa.v20220601.models.Sort`
        # @param PageNum: 获取第几页--兼容旧接口,参数同Condition
        # @type PageNum: Integer
        # @param PageSize: 每页获取数--兼容旧接口,参数同Condition
        # @type PageSize: Integer
        # @param Status: 授权状态： 4基础授权 5高级授权
        # @type Status: Integer
        # @param GroupIds: 【和GroupId必须有一个填写】设备分组id列表（需要和OsType匹配）
        # @type GroupIds: Array

        attr_accessor :DomainInstanceId, :Condition, :GroupId, :OsType, :OnlineStatus, :Filters, :Sort, :PageNum, :PageSize, :Status, :GroupIds

        def initialize(domaininstanceid=nil, condition=nil, groupid=nil, ostype=nil, onlinestatus=nil, filters=nil, sort=nil, pagenum=nil, pagesize=nil, status=nil, groupids=nil)
          @DomainInstanceId = domaininstanceid
          @Condition = condition
          @GroupId = groupid
          @OsType = ostype
          @OnlineStatus = onlinestatus
          @Filters = filters
          @Sort = sort
          @PageNum = pagenum
          @PageSize = pagesize
          @Status = status
          @GroupIds = groupids
        end

        def deserialize(params)
          @DomainInstanceId = params['DomainInstanceId']
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
          @GroupId = params['GroupId']
          @OsType = params['OsType']
          @OnlineStatus = params['OnlineStatus']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['Sort'].nil?
            @Sort = Sort.new
            @Sort.deserialize(params['Sort'])
          end
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @Status = params['Status']
          @GroupIds = params['GroupIds']
        end
      end

      # DescribeDevices返回参数结构体
      class DescribeDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页的data数据
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeDevicesPageRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeDevicesPageRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 所属组
      class DescribeLocalAccountAccountGroupsData < TencentCloud::Common::AbstractModel
        # @param AccountGroupId: 组Id(只支持32位)
        # @type AccountGroupId: Integer

        attr_accessor :AccountGroupId

        def initialize(accountgroupid=nil)
          @AccountGroupId = accountgroupid
        end

        def deserialize(params)
          @AccountGroupId = params['AccountGroupId']
        end
      end

      # 获取账号列表响应的单个对象
      class DescribeLocalAccountsData < TencentCloud::Common::AbstractModel
        # @param Id: uid，数据库中唯一
        # @type Id: Integer
        # @param UserId: 账号，登录账号
        # @type UserId: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param AccountId: 账号id，同Id字段
        # @type AccountId: Integer
        # @param GroupId: 账号所在的分组id
        # @type GroupId: Integer
        # @param GroupName: 账号所在的分组名称
        # @type GroupName: String
        # @param NamePath: 账号所在的分组名称路径，用英文.分割
        # @type NamePath: String
        # @param Source: 账号来源,0表示本地账号(只支持32位)
        # @type Source: Integer
        # @param Status: 账号状态,0禁用，1启用(只支持32位)
        # @type Status: Integer
        # @param Itime: 账号的创建时间
        # @type Itime: String
        # @param Utime: 账号的最后更新时间
        # @type Utime: String
        # @param ExtraInfo: 账号的扩展信息，包含邮箱、手机号、身份证、职位等信息
        # @type ExtraInfo: String
        # @param RiskLevel: 用户风险等级，枚举：none, low, middle, high
        # @type RiskLevel: String
        # @param AccountGroups: 所属组
        # @type AccountGroups: Array
        # @param MobileBindNum: 绑定手机端设备数
        # @type MobileBindNum: Integer
        # @param PcBindNum: 绑定Pc端设备数
        # @type PcBindNum: Integer
        # @param OnlineStatus: 账号在线状态 1：在线 2：离线
        # @type OnlineStatus: Integer
        # @param ActiveStatus: 账号活跃状态 1：活跃 2：非活跃
        # @type ActiveStatus: Integer
        # @param LoginTime: 账号登录时间
        # @type LoginTime: String
        # @param LogoutTime: 账号登出时间
        # @type LogoutTime: String

        attr_accessor :Id, :UserId, :UserName, :AccountId, :GroupId, :GroupName, :NamePath, :Source, :Status, :Itime, :Utime, :ExtraInfo, :RiskLevel, :AccountGroups, :MobileBindNum, :PcBindNum, :OnlineStatus, :ActiveStatus, :LoginTime, :LogoutTime

        def initialize(id=nil, userid=nil, username=nil, accountid=nil, groupid=nil, groupname=nil, namepath=nil, source=nil, status=nil, itime=nil, utime=nil, extrainfo=nil, risklevel=nil, accountgroups=nil, mobilebindnum=nil, pcbindnum=nil, onlinestatus=nil, activestatus=nil, logintime=nil, logouttime=nil)
          @Id = id
          @UserId = userid
          @UserName = username
          @AccountId = accountid
          @GroupId = groupid
          @GroupName = groupname
          @NamePath = namepath
          @Source = source
          @Status = status
          @Itime = itime
          @Utime = utime
          @ExtraInfo = extrainfo
          @RiskLevel = risklevel
          @AccountGroups = accountgroups
          @MobileBindNum = mobilebindnum
          @PcBindNum = pcbindnum
          @OnlineStatus = onlinestatus
          @ActiveStatus = activestatus
          @LoginTime = logintime
          @LogoutTime = logouttime
        end

        def deserialize(params)
          @Id = params['Id']
          @UserId = params['UserId']
          @UserName = params['UserName']
          @AccountId = params['AccountId']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @NamePath = params['NamePath']
          @Source = params['Source']
          @Status = params['Status']
          @Itime = params['Itime']
          @Utime = params['Utime']
          @ExtraInfo = params['ExtraInfo']
          @RiskLevel = params['RiskLevel']
          unless params['AccountGroups'].nil?
            @AccountGroups = []
            params['AccountGroups'].each do |i|
              describelocalaccountaccountgroupsdata_tmp = DescribeLocalAccountAccountGroupsData.new
              describelocalaccountaccountgroupsdata_tmp.deserialize(i)
              @AccountGroups << describelocalaccountaccountgroupsdata_tmp
            end
          end
          @MobileBindNum = params['MobileBindNum']
          @PcBindNum = params['PcBindNum']
          @OnlineStatus = params['OnlineStatus']
          @ActiveStatus = params['ActiveStatus']
          @LoginTime = params['LoginTime']
          @LogoutTime = params['LogoutTime']
        end
      end

      # 获取账号列表响应的分页对象
      class DescribeLocalAccountsPage < TencentCloud::Common::AbstractModel
        # @param Page: 公共分页对象
        # @type Page: :class:`Tencentcloud::Ioa.v20220601.models.Paging`
        # @param Items: 获取账号列表响应的单个对象
        # @type Items: Array

        attr_accessor :Page, :Items

        def initialize(page=nil, items=nil)
          @Page = page
          @Items = items
        end

        def deserialize(params)
          unless params['Page'].nil?
            @Page = Paging.new
            @Page.deserialize(params['Page'])
          end
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              describelocalaccountsdata_tmp = DescribeLocalAccountsData.new
              describelocalaccountsdata_tmp.deserialize(i)
              @Items << describelocalaccountsdata_tmp
            end
          end
        end
      end

      # DescribeLocalAccounts请求参数结构体
      class DescribeLocalAccountsRequest < TencentCloud::Common::AbstractModel
        # @param Condition: 查询条件：过滤或排序
        # 1、UserName，string类型，姓名
        # 是否必填：否
        # 过滤支持：是，支持eq、like、ilike
        # 排序支持：否
        # 2、UserId，string类型，账户
        # 是否必填：否
        # 过滤支持：是，支持eq、like、ilike
        # 排序支持：否
        # 3、Phone，string类型，手机号
        # 是否必填：否
        # 过滤支持：是，支持eq、like、ilike
        # 排序支持：否
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`
        # @param AccountGroupId: 获取账号的分组ID，不传默认获取全网根账号组
        # @type AccountGroupId: Integer
        # @param ShowFlag: 是否仅展示当前目录下用户 1： 递归显示 2：仅显示当前目录下用户
        # @type ShowFlag: Integer

        attr_accessor :Condition, :AccountGroupId, :ShowFlag

        def initialize(condition=nil, accountgroupid=nil, showflag=nil)
          @Condition = condition
          @AccountGroupId = accountgroupid
          @ShowFlag = showflag
        end

        def deserialize(params)
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
          @AccountGroupId = params['AccountGroupId']
          @ShowFlag = params['ShowFlag']
        end
      end

      # DescribeLocalAccounts返回参数结构体
      class DescribeLocalAccountsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 获取账号列表响应的分页对象
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeLocalAccountsPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeLocalAccountsPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRootAccountGroup请求参数结构体
      class DescribeRootAccountGroupRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRootAccountGroup返回参数结构体
      class DescribeRootAccountGroupResponse < TencentCloud::Common::AbstractModel
        # @param Data: 账号根分组响应详情
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.GetAccountGroupData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetAccountGroupData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 软件统计响应对象集合
      class DescribeSoftCensusListByDeviceData < TencentCloud::Common::AbstractModel
        # @param UserName: 终端用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param MacAddr: mac地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MacAddr: String
        # @param Name: 终端计算机名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param GroupNamePath: 终端组路径名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupNamePath: String
        # @param Ip: IP地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param Mid: 唯一标识Mid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mid: String
        # @param IoaUserName: 企业账户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IoaUserName: String
        # @param GroupId: 终端分组Id(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: Integer
        # @param GroupName: 终端组名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param Id: 终端列表Id(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param SoftNum: 软件数量(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoftNum: Integer
        # @param PiracyRisk: 盗版风险（1=风险;2=未知）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PiracyRisk: Integer
        # @param RemarkName: 终端备注名
        # @type RemarkName: String

        attr_accessor :UserName, :MacAddr, :Name, :GroupNamePath, :Ip, :Mid, :IoaUserName, :GroupId, :GroupName, :Id, :SoftNum, :PiracyRisk, :RemarkName

        def initialize(username=nil, macaddr=nil, name=nil, groupnamepath=nil, ip=nil, mid=nil, ioausername=nil, groupid=nil, groupname=nil, id=nil, softnum=nil, piracyrisk=nil, remarkname=nil)
          @UserName = username
          @MacAddr = macaddr
          @Name = name
          @GroupNamePath = groupnamepath
          @Ip = ip
          @Mid = mid
          @IoaUserName = ioausername
          @GroupId = groupid
          @GroupName = groupname
          @Id = id
          @SoftNum = softnum
          @PiracyRisk = piracyrisk
          @RemarkName = remarkname
        end

        def deserialize(params)
          @UserName = params['UserName']
          @MacAddr = params['MacAddr']
          @Name = params['Name']
          @GroupNamePath = params['GroupNamePath']
          @Ip = params['Ip']
          @Mid = params['Mid']
          @IoaUserName = params['IoaUserName']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @Id = params['Id']
          @SoftNum = params['SoftNum']
          @PiracyRisk = params['PiracyRisk']
          @RemarkName = params['RemarkName']
        end
      end

      # 业务响应数据
      class DescribeSoftCensusListByDevicePageData < TencentCloud::Common::AbstractModel
        # @param Items: 软件统计响应对象集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param Page: 分页公共对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: :class:`Tencentcloud::Ioa.v20220601.models.Paging`

        attr_accessor :Items, :Page

        def initialize(items=nil, page=nil)
          @Items = items
          @Page = page
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              describesoftcensuslistbydevicedata_tmp = DescribeSoftCensusListByDeviceData.new
              describesoftcensuslistbydevicedata_tmp.deserialize(i)
              @Items << describesoftcensuslistbydevicedata_tmp
            end
          end
          unless params['Page'].nil?
            @Page = Paging.new
            @Page.deserialize(params['Page'])
          end
        end
      end

      # DescribeSoftCensusListByDevice请求参数结构体
      class DescribeSoftCensusListByDeviceRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 必填，终端分组ID
        # @type GroupId: Integer
        # @param DomainInstanceId: 管理域实例ID，用于CAM管理域权限分配。若企业未进行管理域的划分，可直接传入根域"1"，此时表示针对当前企业的全部设备和账号进行接口CRUD，具体CRUD的影响范围限制于相应接口的入参。
        # @type DomainInstanceId: String
        # @param OsType: 系统类型（0: win，1：linux，2: mac，4：android，5：ios  ）；默认值0
        # @type OsType: Integer
        # @param Condition: 过滤条件、分页参数   <li>Name - String - 是否必填：否 - 操作符: eq,like,ilike  - 排序支持：否 - 备注：字段含义，终端名。</li> 	<li>UserName - String - 是否必填：否 - 操作符: eq,like,ilike  - 排序支持：否 - 备注：字段含义，终端用户名。</li> 	<li>IoaUserName - String - 是否必填：否 - 操作符: eq,like,ilike  - 排序支持：否 - 备注：字段含义，最近登录账号。</li> 	<li>Ip - String - 是否必填：否 - 操作符: eq,like,ilike  - 排序支持：否 - 备注：字段含义，IP地址。</li> 	<li>MacAddr - String - 是否必填：否 - 操作符: eq,like,ilike  - 排序支持：否 - 备注：字段含义，MAC地址。</li>
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`

        attr_accessor :GroupId, :DomainInstanceId, :OsType, :Condition

        def initialize(groupid=nil, domaininstanceid=nil, ostype=nil, condition=nil)
          @GroupId = groupid
          @DomainInstanceId = domaininstanceid
          @OsType = ostype
          @Condition = condition
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @DomainInstanceId = params['DomainInstanceId']
          @OsType = params['OsType']
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
        end
      end

      # DescribeSoftCensusListByDevice返回参数结构体
      class DescribeSoftCensusListByDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务响应数据
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeSoftCensusListByDevicePageData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeSoftCensusListByDevicePageData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 业务响应数据
      class DescribeSoftwareInformationPageData < TencentCloud::Common::AbstractModel
        # @param Items: 软件详情响应对象集合
        # @type Items: Array
        # @param Page: 分页公共对象
        # @type Page: :class:`Tencentcloud::Ioa.v20220601.models.Paging`

        attr_accessor :Items, :Page

        def initialize(items=nil, page=nil)
          @Items = items
          @Page = page
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              softwareinformationdata_tmp = SoftwareInformationData.new
              softwareinformationdata_tmp.deserialize(i)
              @Items << softwareinformationdata_tmp
            end
          end
          unless params['Page'].nil?
            @Page = Paging.new
            @Page.deserialize(params['Page'])
          end
        end
      end

      # DescribeSoftwareInformation请求参数结构体
      class DescribeSoftwareInformationRequest < TencentCloud::Common::AbstractModel
        # @param Mid: 终端唯一标识Mid
        # @type Mid: String
        # @param Condition: 过滤条件、分页参数
        # <li>Name - String - 过滤支持：是 - 操作符:eq,like - 排序支持：是 。</li>
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`
        # @param OsType: 0:win 2:mac
        # @type OsType: Integer

        attr_accessor :Mid, :Condition, :OsType

        def initialize(mid=nil, condition=nil, ostype=nil)
          @Mid = mid
          @Condition = condition
          @OsType = ostype
        end

        def deserialize(params)
          @Mid = params['Mid']
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
          @OsType = params['OsType']
        end
      end

      # DescribeSoftwareInformation返回参数结构体
      class DescribeSoftwareInformationResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务响应数据
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeSoftwareInformationPageData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeSoftwareInformationPageData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 返回的具体Data数据
      class DescribeVirtualDevicesPageRsp < TencentCloud::Common::AbstractModel
        # @param Paging: 数据分页信息
        # @type Paging: :class:`Tencentcloud::Ioa.v20220601.models.Paging`
        # @param Items: 设备列表
        # @type Items: Array

        attr_accessor :Paging, :Items

        def initialize(paging=nil, items=nil)
          @Paging = paging
          @Items = items
        end

        def deserialize(params)
          unless params['Paging'].nil?
            @Paging = Paging.new
            @Paging.deserialize(params['Paging'])
          end
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              devicedetail_tmp = DeviceDetail.new
              devicedetail_tmp.deserialize(i)
              @Items << devicedetail_tmp
            end
          end
        end
      end

      # DescribeVirtualDevices请求参数结构体
      class DescribeVirtualDevicesRequest < TencentCloud::Common::AbstractModel
        # @param DomainInstanceId: 管理域实例ID，用于CAM管理域权限分配。若企业未进行管理域的划分，可直接传入根域"1"，此时表示针对当前企业的全部设备和账号进行接口CRUD，具体CRUD的影响范围限制于相应接口的入参。
        # @type DomainInstanceId: String
        # @param Condition: 过滤条件参数（字段含义请参考接口返回值）- Mid, 类型String，支持操作：【eq，like，ilike】，支持排序- Name, 类型String，支持操作：【eq，like，ilike】，支持排序- Itime, 类型String，支持操作：【eq，like，ilike】，支持排序- UserName, 类型String，支持操作：【eq，like，ilike】，支持排序- MacAddr, 类型String，支持操作：【eq，like，ilike】，支持排序- UserId, 类型String，支持操作：【eq，like，ilike】，支持排序- Ip, 类型String，支持操作：【eq，like，ilike】，支持排序- Tags，类型String，支持操作：【eq，like，ilike】，支持排序- LocalIpList，类型String，支持操作：【eq，like，ilike】，支持排序- SerialNum，类型String，支持操作：【eq，like，ilike】，支持排序- Version，类型String，支持操作：【eq，like，ilike】，支持排序- StrVersion，类型String，支持操作：【eq，like，ilike】，支持排序- RtpStatus，类型String，支持操作：【eq，like，ilike】，**不支持排序**- HostName，类型String，支持操作：【eq，like，ilike】，支持排序- IoaUserName，类型String，支持操作：【eq，like，ilike】，支持排序- GroupName，类型String，支持操作：【eq，like，ilike】，支持排序- CriticalVulListCount，**类型Int**，支持操作：【eq】，**不支持排序**- RiskCount，**类型Int**，支持操作：【eq】，**不支持排序**- VulVersion，类型String，支持操作：【eq，like，ilike】，**不支持排序**- Virusver，类型String，支持操作：【eq，like，ilike】，**不支持排序**- SysRepver，类型String，支持操作：【eq，like，ilike】，**不支持排序**- BaseBoardSn，类型String，支持操作：【eq，like，ilike】，支持排序- Os，类型String，支持操作：【eq，like，ilike】，支持排序- ConnActiveTime，类型String，支持操作：【eq，like，ilike】，**不支持排序**- FirewallStatus，**类型Int**，支持操作：【eq】，**不支持排序**- ProfileName，类型String，支持操作：【eq，like，ilike】，支持排序- DomainName，类型String，支持操作：【eq，like，ilike】，支持排序- SysRepVersion，类型String，支持操作：【eq，like，ilike】，支持排序- VirusVer，类型String，支持操作：【eq，like，ilike】，支持排序- Cpu，类型String，支持操作：【eq，like，ilike】，支持排序- Memory，类型String，支持操作：【eq，like，ilike】，支持排序- HardDiskSize，类型String，支持操作：【eq，like，ilike】，支持排序- HardwareChangeCount，**类型Int**，支持操作：【eq】，支持排序- AccountName，类型String，支持操作：【like.ilike】，支持排序- AccountGroupName，类型String，支持操作：【like.ilike】，支持排序- ScreenRecordingPermission，**类型Int**，支持操作：【eq】，支持排序- DiskAccessPermission，**类型Int**，支持操作：【eq】，支持排序分页参数- PageNum 从1开始，小于等于0时使用默认参数- PageSize 最大值5000，最好不超过100
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`
        # @param DeviceVirtualGroupId: 终端自定义分组ID（0：获取租户全部自定义分组下的终端数据；其他值：获取具体ID分组下的终端数据）
        # @type DeviceVirtualGroupId: Integer
        # @param OsType: 系统类型（0: win，1：linux，2: mac，4：android，5：ios   默认值0）
        # @type OsType: Integer
        # @param OnlineStatus: 选填，在线状态 （2表示在线，0或者1表示离线）
        # @type OnlineStatus: Integer

        attr_accessor :DomainInstanceId, :Condition, :DeviceVirtualGroupId, :OsType, :OnlineStatus

        def initialize(domaininstanceid=nil, condition=nil, devicevirtualgroupid=nil, ostype=nil, onlinestatus=nil)
          @DomainInstanceId = domaininstanceid
          @Condition = condition
          @DeviceVirtualGroupId = devicevirtualgroupid
          @OsType = ostype
          @OnlineStatus = onlinestatus
        end

        def deserialize(params)
          @DomainInstanceId = params['DomainInstanceId']
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
          @DeviceVirtualGroupId = params['DeviceVirtualGroupId']
          @OsType = params['OsType']
          @OnlineStatus = params['OnlineStatus']
        end
      end

      # DescribeVirtualDevices返回参数结构体
      class DescribeVirtualDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回的具体Data数据
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeVirtualDevicesPageRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeVirtualDevicesPageRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 业务响应数据
      class DeviceDetail < TencentCloud::Common::AbstractModel
        # @param Id: 设备ID
        # @type Id: Integer
        # @param Mid: 设备唯一标识码，在ioa中每个设备有唯一标识码
        # @type Mid: String
        # @param Name: 终端名（设备名）
        # @type Name: String
        # @param GroupId: 设备所在分组ID
        # @type GroupId: Integer
        # @param OsType: OS平台，0：Windows 、1： Linux、 2：macOS 、4： Android、 5: iOS。默认是0
        # @type OsType: Integer
        # @param Ip: 设备IP地址（出口IP）
        # @type Ip: String
        # @param OnlineStatus: 在线状态，2：在线、0或者1:离线
        # @type OnlineStatus: Integer
        # @param Version: 客户端版本号-大整数
        # @type Version: String
        # @param StrVersion: 客户端版本号-点分字符串
        # @type StrVersion: String
        # @param Itime: 首次在线时间
        # @type Itime: String
        # @param ConnActiveTime: 最后一次在线时间
        # @type ConnActiveTime: String
        # @param Locked: 设备是否加锁 ，1：锁定 0或者2：未锁定。
        # @type Locked: Integer
        # @param LocalIpList: 设备本地IP列表, 包括IP
        # @type LocalIpList: String
        # @param HostId: 宿主机id（需要宿主机也安装iOA才能显示）
        # @type HostId: Integer
        # @param GroupName: 设备所属分组名
        # @type GroupName: String
        # @param GroupNamePath: 设备所属分组路径
        # @type GroupNamePath: String
        # @param CriticalVulListCount: 未修复高危漏洞数(只支持32位)
        # @type CriticalVulListCount: Integer
        # @param Os: 操作系统名称
        # @type Os: String
        # @param OsBits: 操作系统位数
        # @type OsBits: Integer
        # @param OsVersion: 操作系统版本
        # @type OsVersion: String
        # @param OsLanguage: 操作系统语言
        # @type OsLanguage: String
        # @param OsInstallDate: 操作系统安装时间
        # @type OsInstallDate: String
        # @param ComputerName: 设备名，和Name相同
        # @type ComputerName: String
        # @param DomainName: 登录域名
        # @type DomainName: String
        # @param MacAddr: MAC地址
        # @type MacAddr: String
        # @param VulCount: 漏洞数
        # @type VulCount: Integer
        # @param RiskCount: 病毒风险数
        # @type RiskCount: Integer
        # @param VirusVer: 病毒库版本
        # @type VirusVer: String
        # @param VulVersion: 漏洞库版本
        # @type VulVersion: String
        # @param SysRepVersion: 系统修复引擎版本
        # @type SysRepVersion: String
        # @param VulCriticalList: 高危补丁列表
        # @type VulCriticalList: Array
        # @param Tags: 标签
        # @type Tags: String
        # @param UserName: 终端用户名
        # @type UserName: String
        # @param FirewallStatus: 防火墙状态，不等于0表示开启
        # @type FirewallStatus: Integer
        # @param SerialNum: SN序列号
        # @type SerialNum: String
        # @param DeviceStrategyVer: 设备管控策略版本
        # @type DeviceStrategyVer: String
        # @param NGNStrategyVer: NGN策略版本
        # @type NGNStrategyVer: String
        # @param IOAUserName: 最近登录账户的账号(账号系统用户账号)
        # @type IOAUserName: String
        # @param DeviceNewStrategyVer: 设备管控新策略
        # @type DeviceNewStrategyVer: String
        # @param NGNNewStrategyVer: NGN策略新版本
        # @type NGNNewStrategyVer: String
        # @param HostName: 宿主机名称（需要宿主机也安装iOA才能显示）
        # @type HostName: String
        # @param BaseBoardSn: 主板序列号
        # @type BaseBoardSn: String
        # @param AccountUsers: 绑定账户名称
        # @type AccountUsers: String
        # @param IdentityStrategyVer: 身份策略版本
        # @type IdentityStrategyVer: String
        # @param IdentityNewStrategyVer: 身份策略新版本
        # @type IdentityNewStrategyVer: String
        # @param AccountGroupName: 最近登录账号部门
        # @type AccountGroupName: String
        # @param AccountName: 最近登录账户的姓名(账号系统用户姓名)
        # @type AccountName: String
        # @param AccountGroupId: 账号组id
        # @type AccountGroupId: Integer
        # @param ScreenRecordingPermission: 是否开启录屏权限，仅macOS， 0： 未开启 、1： 开启
        # @type ScreenRecordingPermission: Integer
        # @param DiskAccessPermission: 是否开启磁盘访问权限，仅macOS， 0： 未开启、 1： 开启
        # @type DiskAccessPermission: Integer
        # @param RemarkName: 终端备注名
        # @type RemarkName: String

        attr_accessor :Id, :Mid, :Name, :GroupId, :OsType, :Ip, :OnlineStatus, :Version, :StrVersion, :Itime, :ConnActiveTime, :Locked, :LocalIpList, :HostId, :GroupName, :GroupNamePath, :CriticalVulListCount, :Os, :OsBits, :OsVersion, :OsLanguage, :OsInstallDate, :ComputerName, :DomainName, :MacAddr, :VulCount, :RiskCount, :VirusVer, :VulVersion, :SysRepVersion, :VulCriticalList, :Tags, :UserName, :FirewallStatus, :SerialNum, :DeviceStrategyVer, :NGNStrategyVer, :IOAUserName, :DeviceNewStrategyVer, :NGNNewStrategyVer, :HostName, :BaseBoardSn, :AccountUsers, :IdentityStrategyVer, :IdentityNewStrategyVer, :AccountGroupName, :AccountName, :AccountGroupId, :ScreenRecordingPermission, :DiskAccessPermission, :RemarkName

        def initialize(id=nil, mid=nil, name=nil, groupid=nil, ostype=nil, ip=nil, onlinestatus=nil, version=nil, strversion=nil, itime=nil, connactivetime=nil, locked=nil, localiplist=nil, hostid=nil, groupname=nil, groupnamepath=nil, criticalvullistcount=nil, os=nil, osbits=nil, osversion=nil, oslanguage=nil, osinstalldate=nil, computername=nil, domainname=nil, macaddr=nil, vulcount=nil, riskcount=nil, virusver=nil, vulversion=nil, sysrepversion=nil, vulcriticallist=nil, tags=nil, username=nil, firewallstatus=nil, serialnum=nil, devicestrategyver=nil, ngnstrategyver=nil, ioausername=nil, devicenewstrategyver=nil, ngnnewstrategyver=nil, hostname=nil, baseboardsn=nil, accountusers=nil, identitystrategyver=nil, identitynewstrategyver=nil, accountgroupname=nil, accountname=nil, accountgroupid=nil, screenrecordingpermission=nil, diskaccesspermission=nil, remarkname=nil)
          @Id = id
          @Mid = mid
          @Name = name
          @GroupId = groupid
          @OsType = ostype
          @Ip = ip
          @OnlineStatus = onlinestatus
          @Version = version
          @StrVersion = strversion
          @Itime = itime
          @ConnActiveTime = connactivetime
          @Locked = locked
          @LocalIpList = localiplist
          @HostId = hostid
          @GroupName = groupname
          @GroupNamePath = groupnamepath
          @CriticalVulListCount = criticalvullistcount
          @Os = os
          @OsBits = osbits
          @OsVersion = osversion
          @OsLanguage = oslanguage
          @OsInstallDate = osinstalldate
          @ComputerName = computername
          @DomainName = domainname
          @MacAddr = macaddr
          @VulCount = vulcount
          @RiskCount = riskcount
          @VirusVer = virusver
          @VulVersion = vulversion
          @SysRepVersion = sysrepversion
          @VulCriticalList = vulcriticallist
          @Tags = tags
          @UserName = username
          @FirewallStatus = firewallstatus
          @SerialNum = serialnum
          @DeviceStrategyVer = devicestrategyver
          @NGNStrategyVer = ngnstrategyver
          @IOAUserName = ioausername
          @DeviceNewStrategyVer = devicenewstrategyver
          @NGNNewStrategyVer = ngnnewstrategyver
          @HostName = hostname
          @BaseBoardSn = baseboardsn
          @AccountUsers = accountusers
          @IdentityStrategyVer = identitystrategyver
          @IdentityNewStrategyVer = identitynewstrategyver
          @AccountGroupName = accountgroupname
          @AccountName = accountname
          @AccountGroupId = accountgroupid
          @ScreenRecordingPermission = screenrecordingpermission
          @DiskAccessPermission = diskaccesspermission
          @RemarkName = remarkname
        end

        def deserialize(params)
          @Id = params['Id']
          @Mid = params['Mid']
          @Name = params['Name']
          @GroupId = params['GroupId']
          @OsType = params['OsType']
          @Ip = params['Ip']
          @OnlineStatus = params['OnlineStatus']
          @Version = params['Version']
          @StrVersion = params['StrVersion']
          @Itime = params['Itime']
          @ConnActiveTime = params['ConnActiveTime']
          @Locked = params['Locked']
          @LocalIpList = params['LocalIpList']
          @HostId = params['HostId']
          @GroupName = params['GroupName']
          @GroupNamePath = params['GroupNamePath']
          @CriticalVulListCount = params['CriticalVulListCount']
          @Os = params['Os']
          @OsBits = params['OsBits']
          @OsVersion = params['OsVersion']
          @OsLanguage = params['OsLanguage']
          @OsInstallDate = params['OsInstallDate']
          @ComputerName = params['ComputerName']
          @DomainName = params['DomainName']
          @MacAddr = params['MacAddr']
          @VulCount = params['VulCount']
          @RiskCount = params['RiskCount']
          @VirusVer = params['VirusVer']
          @VulVersion = params['VulVersion']
          @SysRepVersion = params['SysRepVersion']
          @VulCriticalList = params['VulCriticalList']
          @Tags = params['Tags']
          @UserName = params['UserName']
          @FirewallStatus = params['FirewallStatus']
          @SerialNum = params['SerialNum']
          @DeviceStrategyVer = params['DeviceStrategyVer']
          @NGNStrategyVer = params['NGNStrategyVer']
          @IOAUserName = params['IOAUserName']
          @DeviceNewStrategyVer = params['DeviceNewStrategyVer']
          @NGNNewStrategyVer = params['NGNNewStrategyVer']
          @HostName = params['HostName']
          @BaseBoardSn = params['BaseBoardSn']
          @AccountUsers = params['AccountUsers']
          @IdentityStrategyVer = params['IdentityStrategyVer']
          @IdentityNewStrategyVer = params['IdentityNewStrategyVer']
          @AccountGroupName = params['AccountGroupName']
          @AccountName = params['AccountName']
          @AccountGroupId = params['AccountGroupId']
          @ScreenRecordingPermission = params['ScreenRecordingPermission']
          @DiskAccessPermission = params['DiskAccessPermission']
          @RemarkName = params['RemarkName']
        end
      end

      # 业务响应数据
      class DeviceDownloadTask < TencentCloud::Common::AbstractModel
        # @param DownloadURL: 同步数据下载的url
        # @type DownloadURL: String
        # @param TaskId: 异步任务id，需要根据id去任务中心下载
        # @type TaskId: Integer

        attr_accessor :DownloadURL, :TaskId

        def initialize(downloadurl=nil, taskid=nil)
          @DownloadURL = downloadurl
          @TaskId = taskid
        end

        def deserialize(params)
          @DownloadURL = params['DownloadURL']
          @TaskId = params['TaskId']
        end
      end

      # 返回的数组列表
      class DeviceGroupDetail < TencentCloud::Common::AbstractModel
        # @param Id: 设备组id
        # @type Id: Integer
        # @param Name: 设备组名称
        # @type Name: String
        # @param Description: 设备组描述
        # @type Description: String
        # @param ParentId: 父节点id
        # @type ParentId: Integer
        # @param IdPath: 基于id的节点路径
        # @type IdPath: String
        # @param NamePath: 基于名称的节点路径
        # @type NamePath: String
        # @param Locked: 分组锁定状态
        # @type Locked: Integer
        # @param OsType: 系统类型（0: win，1：linux，2: mac，4：android，5：ios   ）
        # @type OsType: Integer
        # @param Sort: 排序
        # @type Sort: Integer
        # @param FromAuto: 是否自动调整
        # @type FromAuto: Integer
        # @param Count: 子节点数量
        # @type Count: Integer
        # @param Icon: 图标
        # @type Icon: String
        # @param WithIp: 是否有ip
        # @type WithIp: Integer
        # @param HasIp: 是否有组ip
        # @type HasIp: Boolean
        # @param IsLeaf: 是否是叶子节点
        # @type IsLeaf: Boolean
        # @param ReadOnly: 是否只读
        # @type ReadOnly: Boolean
        # @param BindAccount: 对应绑定的账号id
        # @type BindAccount: Integer
        # @param BindAccountName: 绑定账号的用户名
        # @type BindAccountName: String

        attr_accessor :Id, :Name, :Description, :ParentId, :IdPath, :NamePath, :Locked, :OsType, :Sort, :FromAuto, :Count, :Icon, :WithIp, :HasIp, :IsLeaf, :ReadOnly, :BindAccount, :BindAccountName

        def initialize(id=nil, name=nil, description=nil, parentid=nil, idpath=nil, namepath=nil, locked=nil, ostype=nil, sort=nil, fromauto=nil, count=nil, icon=nil, withip=nil, hasip=nil, isleaf=nil, readonly=nil, bindaccount=nil, bindaccountname=nil)
          @Id = id
          @Name = name
          @Description = description
          @ParentId = parentid
          @IdPath = idpath
          @NamePath = namepath
          @Locked = locked
          @OsType = ostype
          @Sort = sort
          @FromAuto = fromauto
          @Count = count
          @Icon = icon
          @WithIp = withip
          @HasIp = hasip
          @IsLeaf = isleaf
          @ReadOnly = readonly
          @BindAccount = bindaccount
          @BindAccountName = bindaccountname
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Description = params['Description']
          @ParentId = params['ParentId']
          @IdPath = params['IdPath']
          @NamePath = params['NamePath']
          @Locked = params['Locked']
          @OsType = params['OsType']
          @Sort = params['Sort']
          @FromAuto = params['FromAuto']
          @Count = params['Count']
          @Icon = params['Icon']
          @WithIp = params['WithIp']
          @HasIp = params['HasIp']
          @IsLeaf = params['IsLeaf']
          @ReadOnly = params['ReadOnly']
          @BindAccount = params['BindAccount']
          @BindAccountName = params['BindAccountName']
        end
      end

      # 分页的具体数据对象
      class DeviceNetworkInfo < TencentCloud::Common::AbstractModel
        # @param LocalAddr: 本地地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalAddr: String
        # @param LocalPort: 本地端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalPort: Integer
        # @param ProcessId: 进程id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessId: Integer
        # @param ProcessName: 进程名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessName: String
        # @param Protocol: 协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param RemoteAddr: 远程地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemoteAddr: String
        # @param RemotePort: 远程端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemotePort: Integer
        # @param State: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: Integer

        attr_accessor :LocalAddr, :LocalPort, :ProcessId, :ProcessName, :Protocol, :RemoteAddr, :RemotePort, :State

        def initialize(localaddr=nil, localport=nil, processid=nil, processname=nil, protocol=nil, remoteaddr=nil, remoteport=nil, state=nil)
          @LocalAddr = localaddr
          @LocalPort = localport
          @ProcessId = processid
          @ProcessName = processname
          @Protocol = protocol
          @RemoteAddr = remoteaddr
          @RemotePort = remoteport
          @State = state
        end

        def deserialize(params)
          @LocalAddr = params['LocalAddr']
          @LocalPort = params['LocalPort']
          @ProcessId = params['ProcessId']
          @ProcessName = params['ProcessName']
          @Protocol = params['Protocol']
          @RemoteAddr = params['RemoteAddr']
          @RemotePort = params['RemotePort']
          @State = params['State']
        end
      end

      # 分页的具体数据对象
      class DeviceProcessInfo < TencentCloud::Common::AbstractModel
        # @param CmdLine: 命令行
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CmdLine: String
        # @param Memory: 内存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memory: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Path: 路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param ProcessId: 进程id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessId: Integer
        # @param User: 启动用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type User: String

        attr_accessor :CmdLine, :Memory, :Name, :Path, :ProcessId, :User

        def initialize(cmdline=nil, memory=nil, name=nil, path=nil, processid=nil, user=nil)
          @CmdLine = cmdline
          @Memory = memory
          @Name = name
          @Path = path
          @ProcessId = processid
          @User = user
        end

        def deserialize(params)
          @CmdLine = params['CmdLine']
          @Memory = params['Memory']
          @Name = params['Name']
          @Path = params['Path']
          @ProcessId = params['ProcessId']
          @User = params['User']
        end
      end

      # 分页的具体数据对象
      class DeviceServiceInfo < TencentCloud::Common::AbstractModel
        # @param CmdLine: 命令行
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CmdLine: String
        # @param Description: 内存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ProcessId: 进程id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessId: Integer
        # @param StartType: 启动类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartType: Integer
        # @param State: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: Integer
        # @param User: 启动用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type User: String

        attr_accessor :CmdLine, :Description, :Name, :ProcessId, :StartType, :State, :User

        def initialize(cmdline=nil, description=nil, name=nil, processid=nil, starttype=nil, state=nil, user=nil)
          @CmdLine = cmdline
          @Description = description
          @Name = name
          @ProcessId = processid
          @StartType = starttype
          @State = state
          @User = user
        end

        def deserialize(params)
          @CmdLine = params['CmdLine']
          @Description = params['Description']
          @Name = params['Name']
          @ProcessId = params['ProcessId']
          @StartType = params['StartType']
          @State = params['State']
          @User = params['User']
        end
      end

      # 终端自定义分组列表数据
      class DeviceVirtualDeviceGroupsDetail < TencentCloud::Common::AbstractModel
        # @param Id: 终端自定义分组id
        # @type Id: Integer
        # @param DeviceVirtualGroupName: 自定义分组名称
        # @type DeviceVirtualGroupName: String
        # @param DeviceCount: 设备数
        # @type DeviceCount: Integer
        # @param OsType: 系统类型（0: win，1：linux，2: mac，4：android，5：ios  ）
        # @type OsType: Integer
        # @param Itime: 创建时间
        # @type Itime: String
        # @param Utime: 更新时间
        # @type Utime: String

        attr_accessor :Id, :DeviceVirtualGroupName, :DeviceCount, :OsType, :Itime, :Utime

        def initialize(id=nil, devicevirtualgroupname=nil, devicecount=nil, ostype=nil, itime=nil, utime=nil)
          @Id = id
          @DeviceVirtualGroupName = devicevirtualgroupname
          @DeviceCount = devicecount
          @OsType = ostype
          @Itime = itime
          @Utime = utime
        end

        def deserialize(params)
          @Id = params['Id']
          @DeviceVirtualGroupName = params['DeviceVirtualGroupName']
          @DeviceCount = params['DeviceCount']
          @OsType = params['OsType']
          @Itime = params['Itime']
          @Utime = params['Utime']
        end
      end

      # ExportDeviceDownloadTask请求参数结构体
      class ExportDeviceDownloadTaskRequest < TencentCloud::Common::AbstractModel
        # @param OsType: 系统类型（0: win，1：linux，2: mac，4：android，5：ios；默认值0）
        # @type OsType: Integer
        # @param DomainInstanceId: 管理域实例ID，用于CAM管理域权限分配。若企业未进行管理域的划分，可直接传入根域"1"，此时表示针对当前企业的全部设备和账号进行接口CRUD，具体CRUD的影响范围限制于相应接口的入参。
        # @type DomainInstanceId: String
        # @param GroupId: 分组id
        # @type GroupId: Integer
        # @param OnlineStatus:  在线状态 2 在线 0，1 离线
        # @type OnlineStatus: Integer
        # @param ExportOrder: 导出顺序，接口返回的数据字段
        # @type ExportOrder: String
        # @param ExportType:  导出类型， 0：终端树；7:硬件信息列表导出；
        # @type ExportType: Integer
        # @param Condition: 过滤条件。同DescribeDevices接口
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`

        attr_accessor :OsType, :DomainInstanceId, :GroupId, :OnlineStatus, :ExportOrder, :ExportType, :Condition

        def initialize(ostype=nil, domaininstanceid=nil, groupid=nil, onlinestatus=nil, exportorder=nil, exporttype=nil, condition=nil)
          @OsType = ostype
          @DomainInstanceId = domaininstanceid
          @GroupId = groupid
          @OnlineStatus = onlinestatus
          @ExportOrder = exportorder
          @ExportType = exporttype
          @Condition = condition
        end

        def deserialize(params)
          @OsType = params['OsType']
          @DomainInstanceId = params['DomainInstanceId']
          @GroupId = params['GroupId']
          @OnlineStatus = params['OnlineStatus']
          @ExportOrder = params['ExportOrder']
          @ExportType = params['ExportType']
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
        end
      end

      # ExportDeviceDownloadTask返回参数结构体
      class ExportDeviceDownloadTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务响应数据
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DeviceDownloadTask`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeviceDownloadTask.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 业务响应数据
      class ExportSoftwareDownloadUrlRspData < TencentCloud::Common::AbstractModel
        # @param DownloadURL: 下载的url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadURL: String
        # @param TaskId: 超过一定时间走异步任务
        # @type TaskId: Integer

        attr_accessor :DownloadURL, :TaskId

        def initialize(downloadurl=nil, taskid=nil)
          @DownloadURL = downloadurl
          @TaskId = taskid
        end

        def deserialize(params)
          @DownloadURL = params['DownloadURL']
          @TaskId = params['TaskId']
        end
      end

      # ExportSoftwareInformationList请求参数结构体
      class ExportSoftwareInformationListRequest < TencentCloud::Common::AbstractModel
        # @param Mid: 终端唯一标识Mid
        # @type Mid: String
        # @param Condition: 过滤条件、分页参数
        # <li>Name - String - 过滤支持：是 - 操作符:eq,like - 排序支持：是 。</li>
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`
        # @param OsType: 系统类型0:win 2:mac
        # @type OsType: Integer

        attr_accessor :Mid, :Condition, :OsType

        def initialize(mid=nil, condition=nil, ostype=nil)
          @Mid = mid
          @Condition = condition
          @OsType = ostype
        end

        def deserialize(params)
          @Mid = params['Mid']
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
          @OsType = params['OsType']
        end
      end

      # ExportSoftwareInformationList返回参数结构体
      class ExportSoftwareInformationListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务响应数据
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.ExportSoftwareDownloadUrlRspData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ExportSoftwareDownloadUrlRspData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # Filters 条件过滤
      class Filter < TencentCloud::Common::AbstractModel
        # @param Field: 过滤字段
        # @type Field: String
        # @param Operator: 过滤方式： eq:等于,net:不等于,like,nlike,gt:大于,lt:小于,egt:大于等于,elt:小于等于。具体支持哪些过滤方式，结合具体接口字段描述来定
        # @type Operator: String
        # @param Values: 过滤条件
        # @type Values: Array

        attr_accessor :Field, :Operator, :Values

        def initialize(field=nil, operator=nil, values=nil)
          @Field = field
          @Operator = operator
          @Values = values
        end

        def deserialize(params)
          @Field = params['Field']
          @Operator = params['Operator']
          @Values = params['Values']
        end
      end

      # FilterGroups 条件过滤组
      class FilterGroup < TencentCloud::Common::AbstractModel
        # @param Filters: Filters 条件过滤
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

      # 账号分组详情响应数据
      class GetAccountGroupData < TencentCloud::Common::AbstractModel
        # @param NamePath: 分组名称全路径，点分格式
        # @type NamePath: String
        # @param IdPathArr: 分组ID全路径，数组格式
        # @type IdPathArr: Array
        # @param ExtraInfo: 分组扩展信息
        # @type ExtraInfo: String
        # @param Utime: 最后更新时间
        # @type Utime: String
        # @param ParentId: 当前分组的父分组ID
        # @type ParentId: Integer
        # @param OrgId: 源账号组ID，该字段仅适用于第三方同步的组织架构，通过OrgId-Id构成源组织架构分组ID-现组织架构分组ID映射关系
        # @type OrgId: String
        # @param Name: 分组名称
        # @type Name: String
        # @param Id: 分组ID
        # @type Id: Integer
        # @param Description: 分组描述
        # @type Description: String
        # @param Source: 分组导入源(只支持32位)
        # @type Source: Integer
        # @param IdPath: 分组ID全路径，点分格式
        # @type IdPath: String
        # @param Itime: 创建时间
        # @type Itime: String
        # @param ParentOrgId: 父源账号组ID，该字段仅适用于第三方同步的组织架构
        # @type ParentOrgId: String
        # @param Import: 导入信息,json格式
        # @type Import: String
        # @param ImportEnable: 是否开启导入架构
        # @type ImportEnable: Boolean
        # @param ImportType: 导入类型
        # @type ImportType: String
        # @param MiniIamId: miniIAMId，MiniIAM源才有
        # @type MiniIamId: String

        attr_accessor :NamePath, :IdPathArr, :ExtraInfo, :Utime, :ParentId, :OrgId, :Name, :Id, :Description, :Source, :IdPath, :Itime, :ParentOrgId, :Import, :ImportEnable, :ImportType, :MiniIamId

        def initialize(namepath=nil, idpatharr=nil, extrainfo=nil, utime=nil, parentid=nil, orgid=nil, name=nil, id=nil, description=nil, source=nil, idpath=nil, itime=nil, parentorgid=nil, import=nil, importenable=nil, importtype=nil, miniiamid=nil)
          @NamePath = namepath
          @IdPathArr = idpatharr
          @ExtraInfo = extrainfo
          @Utime = utime
          @ParentId = parentid
          @OrgId = orgid
          @Name = name
          @Id = id
          @Description = description
          @Source = source
          @IdPath = idpath
          @Itime = itime
          @ParentOrgId = parentorgid
          @Import = import
          @ImportEnable = importenable
          @ImportType = importtype
          @MiniIamId = miniiamid
        end

        def deserialize(params)
          @NamePath = params['NamePath']
          @IdPathArr = params['IdPathArr']
          @ExtraInfo = params['ExtraInfo']
          @Utime = params['Utime']
          @ParentId = params['ParentId']
          @OrgId = params['OrgId']
          @Name = params['Name']
          @Id = params['Id']
          @Description = params['Description']
          @Source = params['Source']
          @IdPath = params['IdPath']
          @Itime = params['Itime']
          @ParentOrgId = params['ParentOrgId']
          @Import = params['Import']
          @ImportEnable = params['ImportEnable']
          @ImportType = params['ImportType']
          @MiniIamId = params['MiniIamId']
        end
      end

      # 操作的设备列表
      class ModifyVirtualDeviceGroupsReqItem < TencentCloud::Common::AbstractModel
        # @param DeviceMid: 设备mid
        # @type DeviceMid: String
        # @param Operation: 操作标识  0:删除设备 1:添加设备
        # @type Operation: Integer

        attr_accessor :DeviceMid, :Operation

        def initialize(devicemid=nil, operation=nil)
          @DeviceMid = devicemid
          @Operation = operation
        end

        def deserialize(params)
          @DeviceMid = params['DeviceMid']
          @Operation = params['Operation']
        end
      end

      # ModifyVirtualDeviceGroups请求参数结构体
      class ModifyVirtualDeviceGroupsRequest < TencentCloud::Common::AbstractModel
        # @param DeviceList: 必填，操作的设备列表数据
        # @type DeviceList: Array
        # @param DomainInstanceId: 管理域实例ID，用于CAM管理域权限分配。若企业未进行管理域的划分，可直接传入根域"1"，此时表示针对当前企业的全部设备和账号进行接口CRUD，具体CRUD的影响范围限制于相应接口的入参。
        # @type DomainInstanceId: String
        # @param DeviceVirtualGroupId: 添加到的终端自定义分组id。和DeviceVirtualGroupIds互斥，必填其一，优先使用本参数
        # @type DeviceVirtualGroupId: Integer
        # @param DeviceVirtualGroupIds: 要添加的终端自定义分组id列表
        # @type DeviceVirtualGroupIds: Array
        # @param OsType: 系统类型（0: win，1：linux，2: mac，4：android，5：ios   默认值0）
        # @type OsType: Integer

        attr_accessor :DeviceList, :DomainInstanceId, :DeviceVirtualGroupId, :DeviceVirtualGroupIds, :OsType

        def initialize(devicelist=nil, domaininstanceid=nil, devicevirtualgroupid=nil, devicevirtualgroupids=nil, ostype=nil)
          @DeviceList = devicelist
          @DomainInstanceId = domaininstanceid
          @DeviceVirtualGroupId = devicevirtualgroupid
          @DeviceVirtualGroupIds = devicevirtualgroupids
          @OsType = ostype
        end

        def deserialize(params)
          unless params['DeviceList'].nil?
            @DeviceList = []
            params['DeviceList'].each do |i|
              modifyvirtualdevicegroupsreqitem_tmp = ModifyVirtualDeviceGroupsReqItem.new
              modifyvirtualdevicegroupsreqitem_tmp.deserialize(i)
              @DeviceList << modifyvirtualdevicegroupsreqitem_tmp
            end
          end
          @DomainInstanceId = params['DomainInstanceId']
          @DeviceVirtualGroupId = params['DeviceVirtualGroupId']
          @DeviceVirtualGroupIds = params['DeviceVirtualGroupIds']
          @OsType = params['OsType']
        end
      end

      # ModifyVirtualDeviceGroups返回参数结构体
      class ModifyVirtualDeviceGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 页码
      class Paging < TencentCloud::Common::AbstractModel
        # @param PageSize: 每页条数
        # @type PageSize: Integer
        # @param PageNum: 页码
        # @type PageNum: Integer
        # @param PageCount: 总页数
        # @type PageCount: Integer
        # @param Total: 记录总数
        # @type Total: Integer

        attr_accessor :PageSize, :PageNum, :PageCount, :Total

        def initialize(pagesize=nil, pagenum=nil, pagecount=nil, total=nil)
          @PageSize = pagesize
          @PageNum = pagenum
          @PageCount = pagecount
          @Total = total
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
          @PageCount = params['PageCount']
          @Total = params['Total']
        end
      end

      # 规则表达式
      class RuleExpression < TencentCloud::Common::AbstractModel
        # @param Items: 规则元数据
        # @type Items: Array
        # @param Relation: 关系
        # @type Relation: String

        attr_accessor :Items, :Relation

        def initialize(items=nil, relation=nil)
          @Items = items
          @Relation = relation
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              ruleitem_tmp = RuleItem.new
              ruleitem_tmp.deserialize(i)
              @Items << ruleitem_tmp
            end
          end
          @Relation = params['Relation']
        end
      end

      # 规则元数据
      class RuleItem < TencentCloud::Common::AbstractModel
        # @param Key: 字段名称
        # @type Key: String
        # @param Operate: 操作关系（等于、不等于、包含、不包含）
        # @type Operate: String
        # @param Value: 内容
        # @type Value: String
        # @param Values: 内容，v2多值版本使用
        # @type Values: Array

        attr_accessor :Key, :Operate, :Value, :Values

        def initialize(key=nil, operate=nil, value=nil, values=nil)
          @Key = key
          @Operate = operate
          @Value = value
          @Values = values
        end

        def deserialize(params)
          @Key = params['Key']
          @Operate = params['Operate']
          @Value = params['Value']
          @Values = params['Values']
        end
      end

      # 简单规则表达式
      class SimpleRule < TencentCloud::Common::AbstractModel
        # @param Expressions: 规则表达式
        # @type Expressions: Array
        # @param Relation: 表达式间逻辑关系
        # @type Relation: String

        attr_accessor :Expressions, :Relation

        def initialize(expressions=nil, relation=nil)
          @Expressions = expressions
          @Relation = relation
        end

        def deserialize(params)
          unless params['Expressions'].nil?
            @Expressions = []
            params['Expressions'].each do |i|
              ruleexpression_tmp = RuleExpression.new
              ruleexpression_tmp.deserialize(i)
              @Expressions << ruleexpression_tmp
            end
          end
          @Relation = params['Relation']
        end
      end

      # 软件版本与安装数量
      class SoftVersionAndNum < TencentCloud::Common::AbstractModel
        # @param Version: 软件版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Num: 安装数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Num: Integer

        attr_accessor :Version, :Num

        def initialize(version=nil, num=nil)
          @Version = version
          @Num = num
        end

        def deserialize(params)
          @Version = params['Version']
          @Num = params['Num']
        end
      end

      # 软件详情响应对象集合
      class SoftwareInformationData < TencentCloud::Common::AbstractModel
        # @param Name: 软件名称
        # @type Name: String
        # @param InstallDate: 安装时间
        # @type InstallDate: String
        # @param SoftwareId: 软件列表id(只支持32位)
        # @type SoftwareId: Integer
        # @param Mid: 唯一标识Mid
        # @type Mid: String
        # @param Version: 软件版本
        # @type Version: String
        # @param CorpName: 公司名
        # @type CorpName: String
        # @param Id: 列表Id(只支持32位)
        # @type Id: Integer
        # @param PiracyRisk: 盗版风险（0:未支持，1:风险，2:未发现，3:未开启）
        # @type PiracyRisk: Integer
        # @param DeviceId: 设备id
        # @type DeviceId: Integer
        # @param OsType: 平台类型
        # @type OsType: Integer

        attr_accessor :Name, :InstallDate, :SoftwareId, :Mid, :Version, :CorpName, :Id, :PiracyRisk, :DeviceId, :OsType

        def initialize(name=nil, installdate=nil, softwareid=nil, mid=nil, version=nil, corpname=nil, id=nil, piracyrisk=nil, deviceid=nil, ostype=nil)
          @Name = name
          @InstallDate = installdate
          @SoftwareId = softwareid
          @Mid = mid
          @Version = version
          @CorpName = corpname
          @Id = id
          @PiracyRisk = piracyrisk
          @DeviceId = deviceid
          @OsType = ostype
        end

        def deserialize(params)
          @Name = params['Name']
          @InstallDate = params['InstallDate']
          @SoftwareId = params['SoftwareId']
          @Mid = params['Mid']
          @Version = params['Version']
          @CorpName = params['CorpName']
          @Id = params['Id']
          @PiracyRisk = params['PiracyRisk']
          @DeviceId = params['DeviceId']
          @OsType = params['OsType']
        end
      end

      # Sort 排序字段
      class Sort < TencentCloud::Common::AbstractModel
        # @param Field: 排序字段
        # @type Field: String
        # @param Order: 排序方式
        # @type Order: String

        attr_accessor :Field, :Order

        def initialize(field=nil, order=nil)
          @Field = field
          @Order = order
        end

        def deserialize(params)
          @Field = params['Field']
          @Order = params['Order']
        end
      end

    end
  end
end

