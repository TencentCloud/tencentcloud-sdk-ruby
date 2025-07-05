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
  module Yunjing
    module V20180228
      # 帐号列表信息数据。
      class Account < TencentCloud::Common::AbstractModel
        # @param Id: 唯一ID。
        # @type Id: Integer
        # @param Uuid: 云镜客户端唯一Uuid
        # @type Uuid: String
        # @param MachineIp: 主机内网IP。
        # @type MachineIp: String
        # @param MachineName: 主机名称。
        # @type MachineName: String
        # @param Username: 帐号名。
        # @type Username: String
        # @param Groups: 帐号所属组。
        # @type Groups: String
        # @param Privilege: 帐号类型。
        # <li>ORDINARY：普通帐号</li>
        # <li>SUPPER：超级管理员帐号</li>
        # @type Privilege: String
        # @param AccountCreateTime: 帐号创建时间。
        # @type AccountCreateTime: String
        # @param LastLoginTime: 帐号最后登录时间。
        # @type LastLoginTime: String

        attr_accessor :Id, :Uuid, :MachineIp, :MachineName, :Username, :Groups, :Privilege, :AccountCreateTime, :LastLoginTime

        def initialize(id=nil, uuid=nil, machineip=nil, machinename=nil, username=nil, groups=nil, privilege=nil, accountcreatetime=nil, lastlogintime=nil)
          @Id = id
          @Uuid = uuid
          @MachineIp = machineip
          @MachineName = machinename
          @Username = username
          @Groups = groups
          @Privilege = privilege
          @AccountCreateTime = accountcreatetime
          @LastLoginTime = lastlogintime
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @Username = params['Username']
          @Groups = params['Groups']
          @Privilege = params['Privilege']
          @AccountCreateTime = params['AccountCreateTime']
          @LastLoginTime = params['LastLoginTime']
        end
      end

      # 帐号统计数据。
      class AccountStatistics < TencentCloud::Common::AbstractModel
        # @param Username: 用户名。
        # @type Username: String
        # @param MachineNum: 主机数量。
        # @type MachineNum: Integer

        attr_accessor :Username, :MachineNum

        def initialize(username=nil, machinenum=nil)
          @Username = username
          @MachineNum = machinenum
        end

        def deserialize(params)
          @Username = params['Username']
          @MachineNum = params['MachineNum']
        end
      end

      # AddLoginWhiteList请求参数结构体
      class AddLoginWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param Rules: 白名单规则
        # @type Rules: :class:`Tencentcloud::Yunjing.v20180228.models.LoginWhiteListsRule`

        attr_accessor :Rules

        def initialize(rules=nil)
          @Rules = rules
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = LoginWhiteListsRule.new
            @Rules.deserialize(params['Rules'])
          end
        end
      end

      # AddLoginWhiteList返回参数结构体
      class AddLoginWhiteListResponse < TencentCloud::Common::AbstractModel
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

      # AddMachineTag请求参数结构体
      class AddMachineTagRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 云服务器ID
        # @type Quuid: String
        # @param TagId: 标签ID
        # @type TagId: Integer
        # @param MRegion: 云服务器地区
        # @type MRegion: String
        # @param MArea: 云服务器类型(CVM|BM)
        # @type MArea: String

        attr_accessor :Quuid, :TagId, :MRegion, :MArea

        def initialize(quuid=nil, tagid=nil, mregion=nil, marea=nil)
          @Quuid = quuid
          @TagId = tagid
          @MRegion = mregion
          @MArea = marea
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          @TagId = params['TagId']
          @MRegion = params['MRegion']
          @MArea = params['MArea']
        end
      end

      # AddMachineTag返回参数结构体
      class AddMachineTagResponse < TencentCloud::Common::AbstractModel
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

      # 主机漏洞信息
      class AgentVul < TencentCloud::Common::AbstractModel
        # @param Id: 漏洞ID。
        # @type Id: Integer
        # @param MachineIp: 主机IP。
        # @type MachineIp: String
        # @param VulName: 漏洞名称。
        # @type VulName: String
        # @param VulLevel: 漏洞危害等级。
        # <li>HIGH：高危</li>
        # <li>MIDDLE：中危</li>
        # <li>LOW：低危</li>
        # <li>NOTICE：提示</li>
        # @type VulLevel: String
        # @param LastScanTime: 最后扫描时间。
        # @type LastScanTime: String
        # @param Description: 漏洞描述。
        # @type Description: String
        # @param VulId: 漏洞种类ID。
        # @type VulId: Integer
        # @param VulStatus: 漏洞状态。
        # <li>UN_OPERATED : 待处理</li>
        # <li>FIXED : 已修复</li>
        # @type VulStatus: String

        attr_accessor :Id, :MachineIp, :VulName, :VulLevel, :LastScanTime, :Description, :VulId, :VulStatus

        def initialize(id=nil, machineip=nil, vulname=nil, vullevel=nil, lastscantime=nil, description=nil, vulid=nil, vulstatus=nil)
          @Id = id
          @MachineIp = machineip
          @VulName = vulname
          @VulLevel = vullevel
          @LastScanTime = lastscantime
          @Description = description
          @VulId = vulid
          @VulStatus = vulstatus
        end

        def deserialize(params)
          @Id = params['Id']
          @MachineIp = params['MachineIp']
          @VulName = params['VulName']
          @VulLevel = params['VulLevel']
          @LastScanTime = params['LastScanTime']
          @Description = params['Description']
          @VulId = params['VulId']
          @VulStatus = params['VulStatus']
        end
      end

      # 高危命令数据
      class BashEvent < TencentCloud::Common::AbstractModel
        # @param Id: ID
        # @type Id: Integer
        # @param Uuid: 云镜ID
        # @type Uuid: String
        # @param Quuid: 主机ID
        # @type Quuid: String
        # @param Hostip: 主机内网IP
        # @type Hostip: String
        # @param User: 执行用户名
        # @type User: String
        # @param Platform: 平台类型
        # @type Platform: Integer
        # @param BashCmd: 执行命令
        # @type BashCmd: String
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param RuleLevel: 规则等级
        # @type RuleLevel: Integer
        # @param Status: 处理状态
        # @type Status: Integer
        # @param CreateTime: 发生时间
        # @type CreateTime: String
        # @param MachineName: 主机名
        # @type MachineName: String

        attr_accessor :Id, :Uuid, :Quuid, :Hostip, :User, :Platform, :BashCmd, :RuleId, :RuleName, :RuleLevel, :Status, :CreateTime, :MachineName

        def initialize(id=nil, uuid=nil, quuid=nil, hostip=nil, user=nil, platform=nil, bashcmd=nil, ruleid=nil, rulename=nil, rulelevel=nil, status=nil, createtime=nil, machinename=nil)
          @Id = id
          @Uuid = uuid
          @Quuid = quuid
          @Hostip = hostip
          @User = user
          @Platform = platform
          @BashCmd = bashcmd
          @RuleId = ruleid
          @RuleName = rulename
          @RuleLevel = rulelevel
          @Status = status
          @CreateTime = createtime
          @MachineName = machinename
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          @Hostip = params['Hostip']
          @User = params['User']
          @Platform = params['Platform']
          @BashCmd = params['BashCmd']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @RuleLevel = params['RuleLevel']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @MachineName = params['MachineName']
        end
      end

      # 高危命令规则
      class BashRule < TencentCloud::Common::AbstractModel
        # @param Id: 规则ID
        # @type Id: Integer
        # @param Uuid: 客户端ID
        # @type Uuid: String
        # @param Name: 规则名称
        # @type Name: String
        # @param Level: 危险等级(1: 高危 2:中危 3: 低危)
        # @type Level: Integer
        # @param Rule: 正则表达式
        # @type Rule: String
        # @param Decription: 规则描述
        # @type Decription: String
        # @param Operator: 操作人
        # @type Operator: String
        # @param IsGlobal: 是否全局规则
        # @type IsGlobal: Integer
        # @param Status: 状态 (0: 有效 1: 无效)
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param Hostip: 主机IP
        # @type Hostip: String

        attr_accessor :Id, :Uuid, :Name, :Level, :Rule, :Decription, :Operator, :IsGlobal, :Status, :CreateTime, :ModifyTime, :Hostip

        def initialize(id=nil, uuid=nil, name=nil, level=nil, rule=nil, decription=nil, operator=nil, isglobal=nil, status=nil, createtime=nil, modifytime=nil, hostip=nil)
          @Id = id
          @Uuid = uuid
          @Name = name
          @Level = level
          @Rule = rule
          @Decription = decription
          @Operator = operator
          @IsGlobal = isglobal
          @Status = status
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Hostip = hostip
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @Name = params['Name']
          @Level = params['Level']
          @Rule = params['Rule']
          @Decription = params['Decription']
          @Operator = params['Operator']
          @IsGlobal = params['IsGlobal']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Hostip = params['Hostip']
        end
      end

      # 暴力破解列表
      class BruteAttack < TencentCloud::Common::AbstractModel
        # @param Id: 事件ID。
        # @type Id: Integer
        # @param MachineIp: 主机IP。
        # @type MachineIp: String
        # @param Status: 破解事件状态
        # <li>BRUTEATTACK_FAIL_ACCOUNT： 暴力破解事件-失败(存在帐号)  </li>
        # <li>BRUTEATTACK_FAIL_NOACCOUNT：暴力破解事件-失败(帐号不存在)</li>
        # <li>BRUTEATTACK_SUCCESS：暴力破解事件-成功</li>
        # @type Status: String
        # @param UserName: 用户名称。
        # @type UserName: String
        # @param City: 城市ID。
        # @type City: Integer
        # @param Country: 国家ID。
        # @type Country: Integer
        # @param Province: 省份ID。
        # @type Province: Integer
        # @param SrcIp: 来源IP。
        # @type SrcIp: String
        # @param Count: 尝试破解次数。
        # @type Count: Integer
        # @param CreateTime: 发生时间。
        # @type CreateTime: String
        # @param MachineName: 主机名称。
        # @type MachineName: String
        # @param Uuid: 云镜客户端唯一标识UUID。
        # @type Uuid: String
        # @param IsProVersion: 是否专业版。
        # @type IsProVersion: Boolean
        # @param BanStatus: 阻断状态。
        # @type BanStatus: String
        # @param Quuid: 机器UUID
        # @type Quuid: String

        attr_accessor :Id, :MachineIp, :Status, :UserName, :City, :Country, :Province, :SrcIp, :Count, :CreateTime, :MachineName, :Uuid, :IsProVersion, :BanStatus, :Quuid

        def initialize(id=nil, machineip=nil, status=nil, username=nil, city=nil, country=nil, province=nil, srcip=nil, count=nil, createtime=nil, machinename=nil, uuid=nil, isproversion=nil, banstatus=nil, quuid=nil)
          @Id = id
          @MachineIp = machineip
          @Status = status
          @UserName = username
          @City = city
          @Country = country
          @Province = province
          @SrcIp = srcip
          @Count = count
          @CreateTime = createtime
          @MachineName = machinename
          @Uuid = uuid
          @IsProVersion = isproversion
          @BanStatus = banstatus
          @Quuid = quuid
        end

        def deserialize(params)
          @Id = params['Id']
          @MachineIp = params['MachineIp']
          @Status = params['Status']
          @UserName = params['UserName']
          @City = params['City']
          @Country = params['Country']
          @Province = params['Province']
          @SrcIp = params['SrcIp']
          @Count = params['Count']
          @CreateTime = params['CreateTime']
          @MachineName = params['MachineName']
          @Uuid = params['Uuid']
          @IsProVersion = params['IsProVersion']
          @BanStatus = params['BanStatus']
          @Quuid = params['Quuid']
        end
      end

      # 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。
      class ChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 购买实例的时长，单位：月。取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36。
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围：
        # <li>NOTIFY_AND_AUTO_RENEW：通知过期且自动续费</li>
        # <li>NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费</li>
        # <li>DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费</li>

        # 默认取值：NOTIFY_AND_MANUAL_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
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

      # CloseProVersion请求参数结构体
      class CloseProVersionRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 主机唯一标识Uuid。
        # 黑石的InstanceId，CVM的Uuid
        # @type Quuid: String

        attr_accessor :Quuid

        def initialize(quuid=nil)
          @Quuid = quuid
        end

        def deserialize(params)
          @Quuid = params['Quuid']
        end
      end

      # CloseProVersion返回参数结构体
      class CloseProVersionResponse < TencentCloud::Common::AbstractModel
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

      # 组件列表数据。
      class Component < TencentCloud::Common::AbstractModel
        # @param Id: 唯一ID。
        # @type Id: Integer
        # @param Uuid: 云镜客户端唯一Uuid。
        # @type Uuid: String
        # @param MachineIp: 主机内网IP。
        # @type MachineIp: String
        # @param MachineName: 主机名。
        # @type MachineName: String
        # @param ComponentVersion: 组件版本号。
        # @type ComponentVersion: String
        # @param ComponentType: 组件类型。
        # <li>SYSTEM：系统组件</li>
        # <li>WEB：Web组件</li>
        # @type ComponentType: String
        # @param ComponentName: 组件名称。
        # @type ComponentName: String
        # @param ModifyTime: 组件检测更新时间。
        # @type ModifyTime: String

        attr_accessor :Id, :Uuid, :MachineIp, :MachineName, :ComponentVersion, :ComponentType, :ComponentName, :ModifyTime

        def initialize(id=nil, uuid=nil, machineip=nil, machinename=nil, componentversion=nil, componenttype=nil, componentname=nil, modifytime=nil)
          @Id = id
          @Uuid = uuid
          @MachineIp = machineip
          @MachineName = machinename
          @ComponentVersion = componentversion
          @ComponentType = componenttype
          @ComponentName = componentname
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @ComponentVersion = params['ComponentVersion']
          @ComponentType = params['ComponentType']
          @ComponentName = params['ComponentName']
          @ModifyTime = params['ModifyTime']
        end
      end

      # 组件统计数据。
      class ComponentStatistics < TencentCloud::Common::AbstractModel
        # @param Id: 组件ID。
        # @type Id: Integer
        # @param MachineNum: 主机数量。
        # @type MachineNum: Integer
        # @param ComponentName: 组件名称。
        # @type ComponentName: String
        # @param ComponentType: 组件类型。
        # <li>WEB：Web组件</li>
        # <li>SYSTEM：系统组件</li>
        # @type ComponentType: String
        # @param Description: 组件描述。
        # @type Description: String

        attr_accessor :Id, :MachineNum, :ComponentName, :ComponentType, :Description

        def initialize(id=nil, machinenum=nil, componentname=nil, componenttype=nil, description=nil)
          @Id = id
          @MachineNum = machinenum
          @ComponentName = componentname
          @ComponentType = componenttype
          @Description = description
        end

        def deserialize(params)
          @Id = params['Id']
          @MachineNum = params['MachineNum']
          @ComponentName = params['ComponentName']
          @ComponentType = params['ComponentType']
          @Description = params['Description']
        end
      end

      # CreateBaselineStrategy请求参数结构体
      class CreateBaselineStrategyRequest < TencentCloud::Common::AbstractModel
        # @param StrategyName: 策略名称
        # @type StrategyName: String
        # @param ScanCycle: 检测周期, 表示每隔多少天进行检测.示例: 2, 表示每2天进行检测一次.
        # @type ScanCycle: Integer
        # @param ScanAt: 定期检测时间，该时间下发扫描. 示例:“22:00”, 表示在22:00下发检测
        # @type ScanAt: String
        # @param CategoryIds: 该策略下选择的基线id数组. 示例: [1,3,5,7]
        # @type CategoryIds: Array
        # @param IsGlobal: 扫描范围是否全部服务器, 1:是  0:否, 为1则为全部专业版主机
        # @type IsGlobal: Integer
        # @param MachineType: 云主机类型：“CVM”：虚拟主机，"BMS"：裸金属，"ECM"：边缘计算主机
        # @type MachineType: String
        # @param RegionCode: 主机地域. 示例: "ap-bj"
        # @type RegionCode: String
        # @param Quuids: 主机id数组. 示例: ["quuid1","quuid2"]
        # @type Quuids: Array

        attr_accessor :StrategyName, :ScanCycle, :ScanAt, :CategoryIds, :IsGlobal, :MachineType, :RegionCode, :Quuids

        def initialize(strategyname=nil, scancycle=nil, scanat=nil, categoryids=nil, isglobal=nil, machinetype=nil, regioncode=nil, quuids=nil)
          @StrategyName = strategyname
          @ScanCycle = scancycle
          @ScanAt = scanat
          @CategoryIds = categoryids
          @IsGlobal = isglobal
          @MachineType = machinetype
          @RegionCode = regioncode
          @Quuids = quuids
        end

        def deserialize(params)
          @StrategyName = params['StrategyName']
          @ScanCycle = params['ScanCycle']
          @ScanAt = params['ScanAt']
          @CategoryIds = params['CategoryIds']
          @IsGlobal = params['IsGlobal']
          @MachineType = params['MachineType']
          @RegionCode = params['RegionCode']
          @Quuids = params['Quuids']
        end
      end

      # CreateBaselineStrategy返回参数结构体
      class CreateBaselineStrategyResponse < TencentCloud::Common::AbstractModel
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

      # CreateOpenPortTask请求参数结构体
      class CreateOpenPortTaskRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端唯一Uuid。
        # @type Uuid: String

        attr_accessor :Uuid

        def initialize(uuid=nil)
          @Uuid = uuid
        end

        def deserialize(params)
          @Uuid = params['Uuid']
        end
      end

      # CreateOpenPortTask返回参数结构体
      class CreateOpenPortTaskResponse < TencentCloud::Common::AbstractModel
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

      # CreateProcessTask请求参数结构体
      class CreateProcessTaskRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端唯一Uuid。
        # @type Uuid: String

        attr_accessor :Uuid

        def initialize(uuid=nil)
          @Uuid = uuid
        end

        def deserialize(params)
          @Uuid = params['Uuid']
        end
      end

      # CreateProcessTask返回参数结构体
      class CreateProcessTaskResponse < TencentCloud::Common::AbstractModel
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

      # CreateUsualLoginPlaces请求参数结构体
      class CreateUsualLoginPlacesRequest < TencentCloud::Common::AbstractModel
        # @param Uuids: 云镜客户端UUID数组。
        # @type Uuids: Array
        # @param Places: 登录地域信息数组。
        # @type Places: Array

        attr_accessor :Uuids, :Places

        def initialize(uuids=nil, places=nil)
          @Uuids = uuids
          @Places = places
        end

        def deserialize(params)
          @Uuids = params['Uuids']
          unless params['Places'].nil?
            @Places = []
            params['Places'].each do |i|
              place_tmp = Place.new
              place_tmp.deserialize(i)
              @Places << place_tmp
            end
          end
        end
      end

      # CreateUsualLoginPlaces返回参数结构体
      class CreateUsualLoginPlacesResponse < TencentCloud::Common::AbstractModel
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

      # 网络攻击日志
      class DefendAttackLog < TencentCloud::Common::AbstractModel
        # @param Id: 日志ID
        # @type Id: Integer
        # @param Uuid: 客户端ID
        # @type Uuid: String
        # @param SrcIp: 来源IP
        # @type SrcIp: String
        # @param SrcPort: 来源端口
        # @type SrcPort: Integer
        # @param HttpMethod: 攻击方式
        # @type HttpMethod: String
        # @param HttpCgi: 攻击描述
        # @type HttpCgi: String
        # @param HttpParam: 攻击参数
        # @type HttpParam: String
        # @param VulType: 威胁类型
        # @type VulType: String
        # @param CreatedAt: 攻击时间
        # @type CreatedAt: String
        # @param MachineIp: 目标服务器IP
        # @type MachineIp: String
        # @param MachineName: 目标服务器名称
        # @type MachineName: String
        # @param DstIp: 目标IP
        # @type DstIp: String
        # @param DstPort: 目标端口
        # @type DstPort: Integer
        # @param HttpContent: 攻击内容
        # @type HttpContent: String

        attr_accessor :Id, :Uuid, :SrcIp, :SrcPort, :HttpMethod, :HttpCgi, :HttpParam, :VulType, :CreatedAt, :MachineIp, :MachineName, :DstIp, :DstPort, :HttpContent

        def initialize(id=nil, uuid=nil, srcip=nil, srcport=nil, httpmethod=nil, httpcgi=nil, httpparam=nil, vultype=nil, createdat=nil, machineip=nil, machinename=nil, dstip=nil, dstport=nil, httpcontent=nil)
          @Id = id
          @Uuid = uuid
          @SrcIp = srcip
          @SrcPort = srcport
          @HttpMethod = httpmethod
          @HttpCgi = httpcgi
          @HttpParam = httpparam
          @VulType = vultype
          @CreatedAt = createdat
          @MachineIp = machineip
          @MachineName = machinename
          @DstIp = dstip
          @DstPort = dstport
          @HttpContent = httpcontent
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @SrcIp = params['SrcIp']
          @SrcPort = params['SrcPort']
          @HttpMethod = params['HttpMethod']
          @HttpCgi = params['HttpCgi']
          @HttpParam = params['HttpParam']
          @VulType = params['VulType']
          @CreatedAt = params['CreatedAt']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @DstIp = params['DstIp']
          @DstPort = params['DstPort']
          @HttpContent = params['HttpContent']
        end
      end

      # DeleteAttackLogs请求参数结构体
      class DeleteAttackLogsRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 日志ID数组，最大100条。
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteAttackLogs返回参数结构体
      class DeleteAttackLogsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteBashEvents请求参数结构体
      class DeleteBashEventsRequest < TencentCloud::Common::AbstractModel
        # @param Ids: ID数组，最大100条。
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteBashEvents返回参数结构体
      class DeleteBashEventsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteBashRules请求参数结构体
      class DeleteBashRulesRequest < TencentCloud::Common::AbstractModel
        # @param Ids: ID数组，最大100条。
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteBashRules返回参数结构体
      class DeleteBashRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteBruteAttacks请求参数结构体
      class DeleteBruteAttacksRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 暴力破解事件Id数组。
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteBruteAttacks返回参数结构体
      class DeleteBruteAttacksResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLoginWhiteList请求参数结构体
      class DeleteLoginWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 白名单ID
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteLoginWhiteList返回参数结构体
      class DeleteLoginWhiteListResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMachine请求参数结构体
      class DeleteMachineRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端Uuid。
        # @type Uuid: String

        attr_accessor :Uuid

        def initialize(uuid=nil)
          @Uuid = uuid
        end

        def deserialize(params)
          @Uuid = params['Uuid']
        end
      end

      # DeleteMachine返回参数结构体
      class DeleteMachineResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMachineTag请求参数结构体
      class DeleteMachineTagRequest < TencentCloud::Common::AbstractModel
        # @param Rid: 关联的标签ID
        # @type Rid: Integer

        attr_accessor :Rid

        def initialize(rid=nil)
          @Rid = rid
        end

        def deserialize(params)
          @Rid = params['Rid']
        end
      end

      # DeleteMachineTag返回参数结构体
      class DeleteMachineTagResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMaliciousRequests请求参数结构体
      class DeleteMaliciousRequestsRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 恶意请求记录ID数组，最大100条。
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteMaliciousRequests返回参数结构体
      class DeleteMaliciousRequestsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMalwares请求参数结构体
      class DeleteMalwaresRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 木马记录ID数组
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteMalwares返回参数结构体
      class DeleteMalwaresResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNonlocalLoginPlaces请求参数结构体
      class DeleteNonlocalLoginPlacesRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 异地登录事件ID数组。
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteNonlocalLoginPlaces返回参数结构体
      class DeleteNonlocalLoginPlacesResponse < TencentCloud::Common::AbstractModel
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

      # DeletePrivilegeEvents请求参数结构体
      class DeletePrivilegeEventsRequest < TencentCloud::Common::AbstractModel
        # @param Ids: ID数组，最大100条。
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeletePrivilegeEvents返回参数结构体
      class DeletePrivilegeEventsResponse < TencentCloud::Common::AbstractModel
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

      # DeletePrivilegeRules请求参数结构体
      class DeletePrivilegeRulesRequest < TencentCloud::Common::AbstractModel
        # @param Ids: ID数组，最大100条。
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeletePrivilegeRules返回参数结构体
      class DeletePrivilegeRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteReverseShellEvents请求参数结构体
      class DeleteReverseShellEventsRequest < TencentCloud::Common::AbstractModel
        # @param Ids: ID数组，最大100条。
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteReverseShellEvents返回参数结构体
      class DeleteReverseShellEventsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteReverseShellRules请求参数结构体
      class DeleteReverseShellRulesRequest < TencentCloud::Common::AbstractModel
        # @param Ids: ID数组，最大100条。
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteReverseShellRules返回参数结构体
      class DeleteReverseShellRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTags请求参数结构体
      class DeleteTagsRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 标签ID
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteTags返回参数结构体
      class DeleteTagsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteUsualLoginPlaces请求参数结构体
      class DeleteUsualLoginPlacesRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端Uuid
        # @type Uuid: String
        # @param CityIds: 已添加常用登录地城市ID数组
        # @type CityIds: Array

        attr_accessor :Uuid, :CityIds

        def initialize(uuid=nil, cityids=nil)
          @Uuid = uuid
          @CityIds = cityids
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @CityIds = params['CityIds']
        end
      end

      # DeleteUsualLoginPlaces返回参数结构体
      class DeleteUsualLoginPlacesResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAccountStatistics请求参数结构体
      class DescribeAccountStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Username - String - 是否必填：否 - 帐号用户名</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeAccountStatistics返回参数结构体
      class DescribeAccountStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 帐号统计列表记录总数。
        # @type TotalCount: Integer
        # @param AccountStatistics: 帐号统计列表。
        # @type AccountStatistics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AccountStatistics, :RequestId

        def initialize(totalcount=nil, accountstatistics=nil, requestid=nil)
          @TotalCount = totalcount
          @AccountStatistics = accountstatistics
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AccountStatistics'].nil?
            @AccountStatistics = []
            params['AccountStatistics'].each do |i|
              accountstatistics_tmp = AccountStatistics.new
              accountstatistics_tmp.deserialize(i)
              @AccountStatistics << accountstatistics_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccounts请求参数结构体
      class DescribeAccountsRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端唯一Uuid。Username和Uuid必填其一，使用Uuid表示，查询该主机下列表信息。
        # @type Uuid: String
        # @param Username: 云镜客户端唯一Uuid。Username和Uuid必填其一，使用Username表示，查询该用户名下列表信息。
        # @type Username: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Username - String - 是否必填：否 - 帐号名</li>
        # <li>Privilege - String - 是否必填：否 - 帐号类型（ORDINARY: 普通帐号 | SUPPER: 超级管理员帐号）</li>
        # <li>MachineIp - String - 是否必填：否 - 主机内网IP</li>
        # @type Filters: Array

        attr_accessor :Uuid, :Username, :Limit, :Offset, :Filters

        def initialize(uuid=nil, username=nil, limit=nil, offset=nil, filters=nil)
          @Uuid = uuid
          @Username = username
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Username = params['Username']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeAccounts返回参数结构体
      class DescribeAccountsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 帐号列表记录总数。
        # @type TotalCount: Integer
        # @param Accounts: 帐号数据列表。
        # @type Accounts: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Accounts, :RequestId

        def initialize(totalcount=nil, accounts=nil, requestid=nil)
          @TotalCount = totalcount
          @Accounts = accounts
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              account_tmp = Account.new
              account_tmp.deserialize(i)
              @Accounts << account_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentVuls请求参数结构体
      class DescribeAgentVulsRequest < TencentCloud::Common::AbstractModel
        # @param VulType: 漏洞类型。
        # <li>WEB: Web应用漏洞</li>
        # <li>SYSTEM：系统组件漏洞</li>
        # <li>BASELINE：安全基线</li>
        # @type VulType: String
        # @param Uuid: 客户端UUID。
        # @type Uuid: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Status - String - 是否必填：否 - 状态筛选（UN_OPERATED: 待处理 | FIXED：已修复）
        # @type Filters: Array

        attr_accessor :VulType, :Uuid, :Limit, :Offset, :Filters

        def initialize(vultype=nil, uuid=nil, limit=nil, offset=nil, filters=nil)
          @VulType = vultype
          @Uuid = uuid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @VulType = params['VulType']
          @Uuid = params['Uuid']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeAgentVuls返回参数结构体
      class DescribeAgentVulsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param AgentVuls: 主机漏洞信息
        # @type AgentVuls: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AgentVuls, :RequestId

        def initialize(totalcount=nil, agentvuls=nil, requestid=nil)
          @TotalCount = totalcount
          @AgentVuls = agentvuls
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AgentVuls'].nil?
            @AgentVuls = []
            params['AgentVuls'].each do |i|
              agentvul_tmp = AgentVul.new
              agentvul_tmp.deserialize(i)
              @AgentVuls << agentvul_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmAttribute请求参数结构体
      class DescribeAlarmAttributeRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAlarmAttribute返回参数结构体
      class DescribeAlarmAttributeResponse < TencentCloud::Common::AbstractModel
        # @param Offline: 防护软件离线告警状态：
        # <li>OPEN：告警已开启</li>
        # <li>CLOSE： 告警已关闭</li>
        # @type Offline: String
        # @param Malware: 发现木马告警状态：
        # <li>OPEN：告警已开启</li>
        # <li>CLOSE： 告警已关闭</li>
        # @type Malware: String
        # @param NonlocalLogin: 发现异地登录告警状态：
        # <li>OPEN：告警已开启</li>
        # <li>CLOSE： 告警已关闭</li>
        # @type NonlocalLogin: String
        # @param CrackSuccess: 被暴力破解成功告警状态：
        # <li>OPEN：告警已开启</li>
        # <li>CLOSE： 告警已关闭</li>
        # @type CrackSuccess: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Offline, :Malware, :NonlocalLogin, :CrackSuccess, :RequestId

        def initialize(offline=nil, malware=nil, nonlocallogin=nil, cracksuccess=nil, requestid=nil)
          @Offline = offline
          @Malware = malware
          @NonlocalLogin = nonlocallogin
          @CrackSuccess = cracksuccess
          @RequestId = requestid
        end

        def deserialize(params)
          @Offline = params['Offline']
          @Malware = params['Malware']
          @NonlocalLogin = params['NonlocalLogin']
          @CrackSuccess = params['CrackSuccess']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAttackLogInfo请求参数结构体
      class DescribeAttackLogInfoRequest < TencentCloud::Common::AbstractModel
        # @param Id: 日志ID
        # @type Id: Integer

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeAttackLogInfo返回参数结构体
      class DescribeAttackLogInfoResponse < TencentCloud::Common::AbstractModel
        # @param Id: 日志ID
        # @type Id: Integer
        # @param Quuid: 主机ID
        # @type Quuid: String
        # @param SrcPort: 攻击来源端口
        # @type SrcPort: Integer
        # @param SrcIp: 攻击来源IP
        # @type SrcIp: String
        # @param DstPort: 攻击目标端口
        # @type DstPort: Integer
        # @param DstIp: 攻击目标IP
        # @type DstIp: String
        # @param HttpMethod: 攻击方法
        # @type HttpMethod: String
        # @param HttpHost: 攻击目标主机
        # @type HttpHost: String
        # @param HttpHead: 攻击头信息
        # @type HttpHead: String
        # @param HttpUserAgent: 攻击者浏览器标识
        # @type HttpUserAgent: String
        # @param HttpReferer: 请求源
        # @type HttpReferer: String
        # @param VulType: 威胁类型
        # @type VulType: String
        # @param HttpCgi: 攻击路径
        # @type HttpCgi: String
        # @param HttpParam: 攻击参数
        # @type HttpParam: String
        # @param CreatedAt: 攻击时间
        # @type CreatedAt: String
        # @param HttpContent: 攻击内容
        # @type HttpContent: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Quuid, :SrcPort, :SrcIp, :DstPort, :DstIp, :HttpMethod, :HttpHost, :HttpHead, :HttpUserAgent, :HttpReferer, :VulType, :HttpCgi, :HttpParam, :CreatedAt, :HttpContent, :RequestId

        def initialize(id=nil, quuid=nil, srcport=nil, srcip=nil, dstport=nil, dstip=nil, httpmethod=nil, httphost=nil, httphead=nil, httpuseragent=nil, httpreferer=nil, vultype=nil, httpcgi=nil, httpparam=nil, createdat=nil, httpcontent=nil, requestid=nil)
          @Id = id
          @Quuid = quuid
          @SrcPort = srcport
          @SrcIp = srcip
          @DstPort = dstport
          @DstIp = dstip
          @HttpMethod = httpmethod
          @HttpHost = httphost
          @HttpHead = httphead
          @HttpUserAgent = httpuseragent
          @HttpReferer = httpreferer
          @VulType = vultype
          @HttpCgi = httpcgi
          @HttpParam = httpparam
          @CreatedAt = createdat
          @HttpContent = httpcontent
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Quuid = params['Quuid']
          @SrcPort = params['SrcPort']
          @SrcIp = params['SrcIp']
          @DstPort = params['DstPort']
          @DstIp = params['DstIp']
          @HttpMethod = params['HttpMethod']
          @HttpHost = params['HttpHost']
          @HttpHead = params['HttpHead']
          @HttpUserAgent = params['HttpUserAgent']
          @HttpReferer = params['HttpReferer']
          @VulType = params['VulType']
          @HttpCgi = params['HttpCgi']
          @HttpParam = params['HttpParam']
          @CreatedAt = params['CreatedAt']
          @HttpContent = params['HttpContent']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAttackLogs请求参数结构体
      class DescribeAttackLogsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>HttpMethod - String - 是否必填：否 - 攻击方法(POST|GET)</li>
        # <li>MachineIp - String - 是否必填：否 - 主机内网IP</li>
        # <li>DateRange - String - 是否必填：否 - 时间范围(存储最近3个月的数据)，如最近一个月["2019-11-17", "2019-12-17"]</li>
        # @type Filters: Array
        # @param Uuid: 主机安全客户端ID
        # @type Uuid: String
        # @param Quuid: 云主机机器ID
        # @type Quuid: String

        attr_accessor :Limit, :Offset, :Filters, :Uuid, :Quuid

        def initialize(limit=nil, offset=nil, filters=nil, uuid=nil, quuid=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Uuid = uuid
          @Quuid = quuid
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
        end
      end

      # DescribeAttackLogs返回参数结构体
      class DescribeAttackLogsResponse < TencentCloud::Common::AbstractModel
        # @param AttackLogs: 日志列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackLogs: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AttackLogs, :TotalCount, :RequestId

        def initialize(attacklogs=nil, totalcount=nil, requestid=nil)
          @AttackLogs = attacklogs
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AttackLogs'].nil?
            @AttackLogs = []
            params['AttackLogs'].each do |i|
              defendattacklog_tmp = DefendAttackLog.new
              defendattacklog_tmp.deserialize(i)
              @AttackLogs << defendattacklog_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBashEvents请求参数结构体
      class DescribeBashEventsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 关键词(主机内网IP)</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeBashEvents返回参数结构体
      class DescribeBashEventsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param List: 高危命令事件列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId

        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              bashevent_tmp = BashEvent.new
              bashevent_tmp.deserialize(i)
              @List << bashevent_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBashRules请求参数结构体
      class DescribeBashRulesRequest < TencentCloud::Common::AbstractModel
        # @param Type: 0-系统规则; 1-用户规则
        # @type Type: Integer
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 关键字(规则名称)</li>
        # @type Filters: Array

        attr_accessor :Type, :Limit, :Offset, :Filters

        def initialize(type=nil, limit=nil, offset=nil, filters=nil)
          @Type = type
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Type = params['Type']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeBashRules返回参数结构体
      class DescribeBashRulesResponse < TencentCloud::Common::AbstractModel
        # @param List: 列表内容
        # @type List: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :TotalCount, :RequestId

        def initialize(list=nil, totalcount=nil, requestid=nil)
          @List = list
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              bashrule_tmp = BashRule.new
              bashrule_tmp.deserialize(i)
              @List << bashrule_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBruteAttacks请求参数结构体
      class DescribeBruteAttacksRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 客户端唯一Uuid。
        # @type Uuid: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 -  查询关键字</li>
        # <li>Status - String - 是否必填：否 -  查询状态（FAILED：破解失败 |SUCCESS：破解成功）</li>
        # @type Filters: Array
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer

        attr_accessor :Uuid, :Offset, :Filters, :Limit

        def initialize(uuid=nil, offset=nil, filters=nil, limit=nil)
          @Uuid = uuid
          @Offset = offset
          @Filters = filters
          @Limit = limit
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
        end
      end

      # DescribeBruteAttacks返回参数结构体
      class DescribeBruteAttacksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 事件数量
        # @type TotalCount: Integer
        # @param BruteAttacks: 暴力破解事件列表
        # @type BruteAttacks: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BruteAttacks, :RequestId

        def initialize(totalcount=nil, bruteattacks=nil, requestid=nil)
          @TotalCount = totalcount
          @BruteAttacks = bruteattacks
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BruteAttacks'].nil?
            @BruteAttacks = []
            params['BruteAttacks'].each do |i|
              bruteattack_tmp = BruteAttack.new
              bruteattack_tmp.deserialize(i)
              @BruteAttacks << bruteattack_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeComponentInfo请求参数结构体
      class DescribeComponentInfoRequest < TencentCloud::Common::AbstractModel
        # @param ComponentId: 组件ID。
        # @type ComponentId: Integer

        attr_accessor :ComponentId

        def initialize(componentid=nil)
          @ComponentId = componentid
        end

        def deserialize(params)
          @ComponentId = params['ComponentId']
        end
      end

      # DescribeComponentInfo返回参数结构体
      class DescribeComponentInfoResponse < TencentCloud::Common::AbstractModel
        # @param Id: 组件ID。
        # @type Id: Integer
        # @param ComponentName: 组件名称。
        # @type ComponentName: String
        # @param ComponentType: 组件类型。
        # <li>WEB：web组件</li>
        # <li>SYSTEM：系统组件</li>
        # @type ComponentType: String
        # @param Homepage: 组件官网。
        # @type Homepage: String
        # @param Description: 组件描述。
        # @type Description: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :ComponentName, :ComponentType, :Homepage, :Description, :RequestId

        def initialize(id=nil, componentname=nil, componenttype=nil, homepage=nil, description=nil, requestid=nil)
          @Id = id
          @ComponentName = componentname
          @ComponentType = componenttype
          @Homepage = homepage
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @ComponentName = params['ComponentName']
          @ComponentType = params['ComponentType']
          @Homepage = params['Homepage']
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # DescribeComponentStatistics请求参数结构体
      class DescribeComponentStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # ComponentName - String - 是否必填：否 - 组件名称
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeComponentStatistics返回参数结构体
      class DescribeComponentStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 组件统计列表记录总数。
        # @type TotalCount: Integer
        # @param ComponentStatistics: 组件统计列表数据数组。
        # @type ComponentStatistics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ComponentStatistics, :RequestId

        def initialize(totalcount=nil, componentstatistics=nil, requestid=nil)
          @TotalCount = totalcount
          @ComponentStatistics = componentstatistics
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ComponentStatistics'].nil?
            @ComponentStatistics = []
            params['ComponentStatistics'].each do |i|
              componentstatistics_tmp = ComponentStatistics.new
              componentstatistics_tmp.deserialize(i)
              @ComponentStatistics << componentstatistics_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeComponents请求参数结构体
      class DescribeComponentsRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端唯一Uuid。Uuid和ComponentId必填其一，使用Uuid表示，查询该主机列表信息。
        # @type Uuid: String
        # @param ComponentId: 组件ID。Uuid和ComponentId必填其一，使用ComponentId表示，查询该组件列表信息。
        # @type ComponentId: Integer
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>ComponentVersion - String - 是否必填：否 - 组件版本号</li>
        # <li>MachineIp - String - 是否必填：否 - 主机内网IP</li>
        # @type Filters: Array

        attr_accessor :Uuid, :ComponentId, :Limit, :Offset, :Filters

        def initialize(uuid=nil, componentid=nil, limit=nil, offset=nil, filters=nil)
          @Uuid = uuid
          @ComponentId = componentid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @ComponentId = params['ComponentId']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeComponents返回参数结构体
      class DescribeComponentsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 组件列表记录总数。
        # @type TotalCount: Integer
        # @param Components: 组件列表数据。
        # @type Components: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Components, :RequestId

        def initialize(totalcount=nil, components=nil, requestid=nil)
          @TotalCount = totalcount
          @Components = components
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @Components << component_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHistoryAccounts请求参数结构体
      class DescribeHistoryAccountsRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端唯一Uuid。
        # @type Uuid: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Username - String - 是否必填：否 - 帐号名</li>
        # @type Filters: Array

        attr_accessor :Uuid, :Limit, :Offset, :Filters

        def initialize(uuid=nil, limit=nil, offset=nil, filters=nil)
          @Uuid = uuid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeHistoryAccounts返回参数结构体
      class DescribeHistoryAccountsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 帐号变更历史列表记录总数。
        # @type TotalCount: Integer
        # @param HistoryAccounts: 帐号变更历史数据数组。
        # @type HistoryAccounts: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :HistoryAccounts, :RequestId

        def initialize(totalcount=nil, historyaccounts=nil, requestid=nil)
          @TotalCount = totalcount
          @HistoryAccounts = historyaccounts
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['HistoryAccounts'].nil?
            @HistoryAccounts = []
            params['HistoryAccounts'].each do |i|
              historyaccount_tmp = HistoryAccount.new
              historyaccount_tmp.deserialize(i)
              @HistoryAccounts << historyaccount_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImpactedHosts请求参数结构体
      class DescribeImpactedHostsRequest < TencentCloud::Common::AbstractModel
        # @param VulId: 漏洞种类ID。
        # @type VulId: Integer
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Status - String - 是否必填：否 - 状态筛选（UN_OPERATED：待处理 | FIXED：已修复）</li>
        # @type Filters: Array

        attr_accessor :VulId, :Limit, :Offset, :Filters

        def initialize(vulid=nil, limit=nil, offset=nil, filters=nil)
          @VulId = vulid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @VulId = params['VulId']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeImpactedHosts返回参数结构体
      class DescribeImpactedHostsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param ImpactedHosts: 漏洞影响机器列表数组
        # @type ImpactedHosts: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ImpactedHosts, :RequestId

        def initialize(totalcount=nil, impactedhosts=nil, requestid=nil)
          @TotalCount = totalcount
          @ImpactedHosts = impactedhosts
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ImpactedHosts'].nil?
            @ImpactedHosts = []
            params['ImpactedHosts'].each do |i|
              impactedhost_tmp = ImpactedHost.new
              impactedhost_tmp.deserialize(i)
              @ImpactedHosts << impactedhost_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoginWhiteList请求参数结构体
      class DescribeLoginWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 查询关键字 </li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeLoginWhiteList返回参数结构体
      class DescribeLoginWhiteListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param LoginWhiteLists: 异地登录白名单数组
        # @type LoginWhiteLists: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :LoginWhiteLists, :RequestId

        def initialize(totalcount=nil, loginwhitelists=nil, requestid=nil)
          @TotalCount = totalcount
          @LoginWhiteLists = loginwhitelists
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LoginWhiteLists'].nil?
            @LoginWhiteLists = []
            params['LoginWhiteLists'].each do |i|
              loginwhitelists_tmp = LoginWhiteLists.new
              loginwhitelists_tmp.deserialize(i)
              @LoginWhiteLists << loginwhitelists_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMachineInfo请求参数结构体
      class DescribeMachineInfoRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端唯一Uuid。
        # @type Uuid: String

        attr_accessor :Uuid

        def initialize(uuid=nil)
          @Uuid = uuid
        end

        def deserialize(params)
          @Uuid = params['Uuid']
        end
      end

      # DescribeMachineInfo返回参数结构体
      class DescribeMachineInfoResponse < TencentCloud::Common::AbstractModel
        # @param MachineIp: 机器ip。
        # @type MachineIp: String
        # @param ProtectDays: 受云镜保护天数。
        # @type ProtectDays: Integer
        # @param MachineOs: 操作系统。
        # @type MachineOs: String
        # @param MachineName: 主机名称。
        # @type MachineName: String
        # @param MachineStatus: 在线状态。
        # <li>ONLINE： 在线</li>
        # <li>OFFLINE：离线</li>
        # @type MachineStatus: String
        # @param InstanceId: CVM或BM主机唯一标识。
        # @type InstanceId: String
        # @param MachineWanIp: 主机外网IP。
        # @type MachineWanIp: String
        # @param Quuid: CVM或BM主机唯一Uuid。
        # @type Quuid: String
        # @param Uuid: 云镜客户端唯一Uuid。
        # @type Uuid: String
        # @param IsProVersion: 是否开通专业版。
        # <li>true：是</li>
        # <li>false：否</li>
        # @type IsProVersion: Boolean
        # @param ProVersionOpenDate: 专业版开通时间。
        # @type ProVersionOpenDate: String
        # @param MachineType: 云主机类型。
        # <li>CVM: 虚拟主机</li>
        # <li>BM: 黑石物理机</li>
        # @type MachineType: String
        # @param MachineRegion: 机器所属地域。如：ap-guangzhou，ap-shanghai
        # @type MachineRegion: String
        # @param PayMode: 主机状态。
        # <li>POSTPAY: 表示后付费，即按量计费  </li>
        # <li>PREPAY: 表示预付费，即包年包月</li>
        # @type PayMode: String
        # @param FreeMalwaresLeft: 免费木马剩余检测数量。
        # @type FreeMalwaresLeft: Integer
        # @param FreeVulsLeft: 免费漏洞剩余检测数量。
        # @type FreeVulsLeft: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MachineIp, :ProtectDays, :MachineOs, :MachineName, :MachineStatus, :InstanceId, :MachineWanIp, :Quuid, :Uuid, :IsProVersion, :ProVersionOpenDate, :MachineType, :MachineRegion, :PayMode, :FreeMalwaresLeft, :FreeVulsLeft, :RequestId

        def initialize(machineip=nil, protectdays=nil, machineos=nil, machinename=nil, machinestatus=nil, instanceid=nil, machinewanip=nil, quuid=nil, uuid=nil, isproversion=nil, proversionopendate=nil, machinetype=nil, machineregion=nil, paymode=nil, freemalwaresleft=nil, freevulsleft=nil, requestid=nil)
          @MachineIp = machineip
          @ProtectDays = protectdays
          @MachineOs = machineos
          @MachineName = machinename
          @MachineStatus = machinestatus
          @InstanceId = instanceid
          @MachineWanIp = machinewanip
          @Quuid = quuid
          @Uuid = uuid
          @IsProVersion = isproversion
          @ProVersionOpenDate = proversionopendate
          @MachineType = machinetype
          @MachineRegion = machineregion
          @PayMode = paymode
          @FreeMalwaresLeft = freemalwaresleft
          @FreeVulsLeft = freevulsleft
          @RequestId = requestid
        end

        def deserialize(params)
          @MachineIp = params['MachineIp']
          @ProtectDays = params['ProtectDays']
          @MachineOs = params['MachineOs']
          @MachineName = params['MachineName']
          @MachineStatus = params['MachineStatus']
          @InstanceId = params['InstanceId']
          @MachineWanIp = params['MachineWanIp']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @IsProVersion = params['IsProVersion']
          @ProVersionOpenDate = params['ProVersionOpenDate']
          @MachineType = params['MachineType']
          @MachineRegion = params['MachineRegion']
          @PayMode = params['PayMode']
          @FreeMalwaresLeft = params['FreeMalwaresLeft']
          @FreeVulsLeft = params['FreeVulsLeft']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMachines请求参数结构体
      class DescribeMachinesRequest < TencentCloud::Common::AbstractModel
        # @param MachineType: 云主机类型。
        # <li>CVM：表示虚拟主机</li>
        # <li>BM:  表示黑石物理机</li>
        # @type MachineType: String
        # @param MachineRegion: 机器所属地域。如：ap-guangzhou，ap-shanghai
        # @type MachineRegion: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 查询关键字 </li>
        # <li>Status - String - 是否必填：否 - 客户端在线状态（OFFLINE: 离线 | ONLINE: 在线 | UNINSTALLED：未安装）</li>
        # <li>Version - String  是否必填：否 - 当前防护版本（ PRO_VERSION：专业版 | BASIC_VERSION：基础版）</li>
        # 每个过滤条件只支持一个值，暂不支持多个值“或”关系查询
        # @type Filters: Array

        attr_accessor :MachineType, :MachineRegion, :Limit, :Offset, :Filters

        def initialize(machinetype=nil, machineregion=nil, limit=nil, offset=nil, filters=nil)
          @MachineType = machinetype
          @MachineRegion = machineregion
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @MachineType = params['MachineType']
          @MachineRegion = params['MachineRegion']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeMachines返回参数结构体
      class DescribeMachinesResponse < TencentCloud::Common::AbstractModel
        # @param Machines: 主机列表
        # @type Machines: Array
        # @param TotalCount: 主机数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Machines, :TotalCount, :RequestId

        def initialize(machines=nil, totalcount=nil, requestid=nil)
          @Machines = machines
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Machines'].nil?
            @Machines = []
            params['Machines'].each do |i|
              machine_tmp = Machine.new
              machine_tmp.deserialize(i)
              @Machines << machine_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMaliciousRequests请求参数结构体
      class DescribeMaliciousRequestsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Status - String - 是否必填：否 - 状态筛选（UN_OPERATED: 待处理 | TRUSTED：已信任 | UN_TRUSTED：已取消信任）</li>
        # <li>Domain - String - 是否必填：否 - 恶意请求的域名</li>
        # <li>MachineIp - String - 是否必填：否 - 主机内网IP</li>
        # @type Filters: Array
        # @param Uuid: 云镜客户端唯一UUID。
        # @type Uuid: String

        attr_accessor :Limit, :Offset, :Filters, :Uuid

        def initialize(limit=nil, offset=nil, filters=nil, uuid=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Uuid = uuid
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Uuid = params['Uuid']
        end
      end

      # DescribeMaliciousRequests返回参数结构体
      class DescribeMaliciousRequestsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数。
        # @type TotalCount: Integer
        # @param MaliciousRequests: 恶意请求记录数组。
        # @type MaliciousRequests: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :MaliciousRequests, :RequestId

        def initialize(totalcount=nil, maliciousrequests=nil, requestid=nil)
          @TotalCount = totalcount
          @MaliciousRequests = maliciousrequests
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['MaliciousRequests'].nil?
            @MaliciousRequests = []
            params['MaliciousRequests'].each do |i|
              maliciousrequest_tmp = MaliciousRequest.new
              maliciousrequest_tmp.deserialize(i)
              @MaliciousRequests << maliciousrequest_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMalwares请求参数结构体
      class DescribeMalwaresRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 客户端唯一Uuid。
        # @type Uuid: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 查询关键字 </li>
        # <li>Status - String - 是否必填：否 - 木马状态（UN_OPERATED: 未处理 | SEGREGATED: 已隔离|TRUSTED：信任）</li>
        # 每个过滤条件只支持一个值，暂不支持多个值“或”关系查询。
        # @type Filters: Array

        attr_accessor :Uuid, :Limit, :Offset, :Filters

        def initialize(uuid=nil, limit=nil, offset=nil, filters=nil)
          @Uuid = uuid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeMalwares返回参数结构体
      class DescribeMalwaresResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 木马总数。
        # @type TotalCount: Integer
        # @param Malwares: Malware数组。
        # @type Malwares: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Malwares, :RequestId

        def initialize(totalcount=nil, malwares=nil, requestid=nil)
          @TotalCount = totalcount
          @Malwares = malwares
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Malwares'].nil?
            @Malwares = []
            params['Malwares'].each do |i|
              malware_tmp = Malware.new
              malware_tmp.deserialize(i)
              @Malwares << malware_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNonlocalLoginPlaces请求参数结构体
      class DescribeNonlocalLoginPlacesRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 客户端唯一Uuid。
        # @type Uuid: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 -  查询关键字</li>
        # <li>Status - String - 是否必填：否 -  登录状态（NON_LOCAL_LOGIN: 异地登录 | NORMAL_LOGIN : 正常登录）</li>
        # @type Filters: Array

        attr_accessor :Uuid, :Limit, :Offset, :Filters

        def initialize(uuid=nil, limit=nil, offset=nil, filters=nil)
          @Uuid = uuid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeNonlocalLoginPlaces返回参数结构体
      class DescribeNonlocalLoginPlacesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数。
        # @type TotalCount: Integer
        # @param NonLocalLoginPlaces: 异地登录信息数组。
        # @type NonLocalLoginPlaces: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :NonLocalLoginPlaces, :RequestId

        def initialize(totalcount=nil, nonlocalloginplaces=nil, requestid=nil)
          @TotalCount = totalcount
          @NonLocalLoginPlaces = nonlocalloginplaces
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['NonLocalLoginPlaces'].nil?
            @NonLocalLoginPlaces = []
            params['NonLocalLoginPlaces'].each do |i|
              nonlocalloginplace_tmp = NonLocalLoginPlace.new
              nonlocalloginplace_tmp.deserialize(i)
              @NonLocalLoginPlaces << nonlocalloginplace_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOpenPortStatistics请求参数结构体
      class DescribeOpenPortStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Port - Uint64 - 是否必填：否 - 端口号</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeOpenPortStatistics返回参数结构体
      class DescribeOpenPortStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 端口统计列表总数
        # @type TotalCount: Integer
        # @param OpenPortStatistics: 端口统计数据列表
        # @type OpenPortStatistics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :OpenPortStatistics, :RequestId

        def initialize(totalcount=nil, openportstatistics=nil, requestid=nil)
          @TotalCount = totalcount
          @OpenPortStatistics = openportstatistics
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['OpenPortStatistics'].nil?
            @OpenPortStatistics = []
            params['OpenPortStatistics'].each do |i|
              openportstatistics_tmp = OpenPortStatistics.new
              openportstatistics_tmp.deserialize(i)
              @OpenPortStatistics << openportstatistics_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOpenPortTaskStatus请求参数结构体
      class DescribeOpenPortTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端唯一Uuid。
        # @type Uuid: String

        attr_accessor :Uuid

        def initialize(uuid=nil)
          @Uuid = uuid
        end

        def deserialize(params)
          @Uuid = params['Uuid']
        end
      end

      # DescribeOpenPortTaskStatus返回参数结构体
      class DescribeOpenPortTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态。
        # <li>COMPLETE：完成（此时可以调用DescribeOpenPorts接口获取实时进程列表）</li>
        # <li>AGENT_OFFLINE：云镜客户端离线</li>
        # <li>COLLECTING：端口获取中</li>
        # <li>FAILED：进程获取失败</li>
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOpenPorts请求参数结构体
      class DescribeOpenPortsRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端唯一Uuid。Port和Uuid必填其一，使用Uuid表示，查询该主机列表信息。
        # @type Uuid: String
        # @param Port: 开放端口号。Port和Uuid必填其一，使用Port表示查询该端口的列表信息。
        # @type Port: Integer
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Port - Uint64 - 是否必填：否 - 端口号</li>
        # <li>ProcessName - String - 是否必填：否 - 进程名</li>
        # <li>MachineIp - String - 是否必填：否 - 主机内网IP</li>
        # @type Filters: Array

        attr_accessor :Uuid, :Port, :Limit, :Offset, :Filters

        def initialize(uuid=nil, port=nil, limit=nil, offset=nil, filters=nil)
          @Uuid = uuid
          @Port = port
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Port = params['Port']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeOpenPorts返回参数结构体
      class DescribeOpenPortsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 端口列表记录总数。
        # @type TotalCount: Integer
        # @param OpenPorts: 端口列表。
        # @type OpenPorts: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :OpenPorts, :RequestId

        def initialize(totalcount=nil, openports=nil, requestid=nil)
          @TotalCount = totalcount
          @OpenPorts = openports
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['OpenPorts'].nil?
            @OpenPorts = []
            params['OpenPorts'].each do |i|
              openport_tmp = OpenPort.new
              openport_tmp.deserialize(i)
              @OpenPorts << openport_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOverviewStatistics请求参数结构体
      class DescribeOverviewStatisticsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeOverviewStatistics返回参数结构体
      class DescribeOverviewStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param OnlineMachineNum: 服务器在线数。
        # @type OnlineMachineNum: Integer
        # @param ProVersionMachineNum: 专业服务器数。
        # @type ProVersionMachineNum: Integer
        # @param MalwareNum: 木马文件数。
        # @type MalwareNum: Integer
        # @param NonlocalLoginNum: 异地登录数。
        # @type NonlocalLoginNum: Integer
        # @param BruteAttackSuccessNum: 暴力破解成功数。
        # @type BruteAttackSuccessNum: Integer
        # @param VulNum: 漏洞数。
        # @type VulNum: Integer
        # @param BaseLineNum: 安全基线数。
        # @type BaseLineNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OnlineMachineNum, :ProVersionMachineNum, :MalwareNum, :NonlocalLoginNum, :BruteAttackSuccessNum, :VulNum, :BaseLineNum, :RequestId

        def initialize(onlinemachinenum=nil, proversionmachinenum=nil, malwarenum=nil, nonlocalloginnum=nil, bruteattacksuccessnum=nil, vulnum=nil, baselinenum=nil, requestid=nil)
          @OnlineMachineNum = onlinemachinenum
          @ProVersionMachineNum = proversionmachinenum
          @MalwareNum = malwarenum
          @NonlocalLoginNum = nonlocalloginnum
          @BruteAttackSuccessNum = bruteattacksuccessnum
          @VulNum = vulnum
          @BaseLineNum = baselinenum
          @RequestId = requestid
        end

        def deserialize(params)
          @OnlineMachineNum = params['OnlineMachineNum']
          @ProVersionMachineNum = params['ProVersionMachineNum']
          @MalwareNum = params['MalwareNum']
          @NonlocalLoginNum = params['NonlocalLoginNum']
          @BruteAttackSuccessNum = params['BruteAttackSuccessNum']
          @VulNum = params['VulNum']
          @BaseLineNum = params['BaseLineNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrivilegeEvents请求参数结构体
      class DescribePrivilegeEventsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 关键词(主机IP)</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribePrivilegeEvents返回参数结构体
      class DescribePrivilegeEventsResponse < TencentCloud::Common::AbstractModel
        # @param List: 数据列表
        # @type List: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :TotalCount, :RequestId

        def initialize(list=nil, totalcount=nil, requestid=nil)
          @List = list
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              privilegeescalationprocess_tmp = PrivilegeEscalationProcess.new
              privilegeescalationprocess_tmp.deserialize(i)
              @List << privilegeescalationprocess_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrivilegeRules请求参数结构体
      class DescribePrivilegeRulesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 关键字(进程名称)</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribePrivilegeRules返回参数结构体
      class DescribePrivilegeRulesResponse < TencentCloud::Common::AbstractModel
        # @param List: 列表内容
        # @type List: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :TotalCount, :RequestId

        def initialize(list=nil, totalcount=nil, requestid=nil)
          @List = list
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              privilegerule_tmp = PrivilegeRule.new
              privilegerule_tmp.deserialize(i)
              @List << privilegerule_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProVersionInfo请求参数结构体
      class DescribeProVersionInfoRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeProVersionInfo返回参数结构体
      class DescribeProVersionInfoResponse < TencentCloud::Common::AbstractModel
        # @param PostPayCost: 后付费昨日扣费
        # @type PostPayCost: Integer
        # @param IsAutoOpenProVersion: 新增主机是否自动开通专业版
        # @type IsAutoOpenProVersion: Boolean
        # @param ProVersionNum: 开通专业版主机数
        # @type ProVersionNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PostPayCost, :IsAutoOpenProVersion, :ProVersionNum, :RequestId

        def initialize(postpaycost=nil, isautoopenproversion=nil, proversionnum=nil, requestid=nil)
          @PostPayCost = postpaycost
          @IsAutoOpenProVersion = isautoopenproversion
          @ProVersionNum = proversionnum
          @RequestId = requestid
        end

        def deserialize(params)
          @PostPayCost = params['PostPayCost']
          @IsAutoOpenProVersion = params['IsAutoOpenProVersion']
          @ProVersionNum = params['ProVersionNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProcessStatistics请求参数结构体
      class DescribeProcessStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>ProcessName - String - 是否必填：否 - 进程名</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeProcessStatistics返回参数结构体
      class DescribeProcessStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 进程统计列表记录总数。
        # @type TotalCount: Integer
        # @param ProcessStatistics: 进程统计列表数据数组。
        # @type ProcessStatistics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ProcessStatistics, :RequestId

        def initialize(totalcount=nil, processstatistics=nil, requestid=nil)
          @TotalCount = totalcount
          @ProcessStatistics = processstatistics
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ProcessStatistics'].nil?
            @ProcessStatistics = []
            params['ProcessStatistics'].each do |i|
              processstatistics_tmp = ProcessStatistics.new
              processstatistics_tmp.deserialize(i)
              @ProcessStatistics << processstatistics_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProcessTaskStatus请求参数结构体
      class DescribeProcessTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端唯一Uuid。
        # @type Uuid: String

        attr_accessor :Uuid

        def initialize(uuid=nil)
          @Uuid = uuid
        end

        def deserialize(params)
          @Uuid = params['Uuid']
        end
      end

      # DescribeProcessTaskStatus返回参数结构体
      class DescribeProcessTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态。
        # <li>COMPLETE：完成（此时可以调用DescribeProcesses接口获取实时进程列表）</li>
        # <li>AGENT_OFFLINE：云镜客户端离线</li>
        # <li>COLLECTING：进程获取中</li>
        # <li>FAILED：进程获取失败</li>
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProcesses请求参数结构体
      class DescribeProcessesRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端唯一Uuid。Uuid和ProcessName必填其一，使用Uuid表示，查询该主机列表信息。
        # @type Uuid: String
        # @param ProcessName: 进程名。Uuid和ProcessName必填其一，使用ProcessName表示，查询该进程列表信息。
        # @type ProcessName: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>ProcessName - String - 是否必填：否 - 进程名</li>
        # <li>MachineIp - String - 是否必填：否 - 主机内网IP</li>
        # @type Filters: Array

        attr_accessor :Uuid, :ProcessName, :Limit, :Offset, :Filters

        def initialize(uuid=nil, processname=nil, limit=nil, offset=nil, filters=nil)
          @Uuid = uuid
          @ProcessName = processname
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @ProcessName = params['ProcessName']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeProcesses返回参数结构体
      class DescribeProcessesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 进程列表记录总数。
        # @type TotalCount: Integer
        # @param Processes: 进程列表数据数组。
        # @type Processes: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Processes, :RequestId

        def initialize(totalcount=nil, processes=nil, requestid=nil)
          @TotalCount = totalcount
          @Processes = processes
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Processes'].nil?
            @Processes = []
            params['Processes'].each do |i|
              process_tmp = Process.new
              process_tmp.deserialize(i)
              @Processes << process_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReverseShellEvents请求参数结构体
      class DescribeReverseShellEventsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 关键字(主机内网IP|进程名)</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeReverseShellEvents返回参数结构体
      class DescribeReverseShellEventsResponse < TencentCloud::Common::AbstractModel
        # @param List: 列表内容
        # @type List: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :TotalCount, :RequestId

        def initialize(list=nil, totalcount=nil, requestid=nil)
          @List = list
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              reverseshell_tmp = ReverseShell.new
              reverseshell_tmp.deserialize(i)
              @List << reverseshell_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReverseShellRules请求参数结构体
      class DescribeReverseShellRulesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 关键字(进程名称)</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeReverseShellRules返回参数结构体
      class DescribeReverseShellRulesResponse < TencentCloud::Common::AbstractModel
        # @param List: 列表内容
        # @type List: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :TotalCount, :RequestId

        def initialize(list=nil, totalcount=nil, requestid=nil)
          @List = list
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              reverseshellrule_tmp = ReverseShellRule.new
              reverseshellrule_tmp.deserialize(i)
              @List << reverseshellrule_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityDynamics请求参数结构体
      class DescribeSecurityDynamicsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :Limit, :Offset

        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeSecurityDynamics返回参数结构体
      class DescribeSecurityDynamicsResponse < TencentCloud::Common::AbstractModel
        # @param SecurityDynamics: 安全事件消息数组。
        # @type SecurityDynamics: Array
        # @param TotalCount: 记录总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityDynamics, :TotalCount, :RequestId

        def initialize(securitydynamics=nil, totalcount=nil, requestid=nil)
          @SecurityDynamics = securitydynamics
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityDynamics'].nil?
            @SecurityDynamics = []
            params['SecurityDynamics'].each do |i|
              securitydynamic_tmp = SecurityDynamic.new
              securitydynamic_tmp.deserialize(i)
              @SecurityDynamics << securitydynamic_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityTrends请求参数结构体
      class DescribeSecurityTrendsRequest < TencentCloud::Common::AbstractModel
        # @param BeginDate: 开始时间。
        # @type BeginDate: String
        # @param EndDate: 结束时间。
        # @type EndDate: String

        attr_accessor :BeginDate, :EndDate

        def initialize(begindate=nil, enddate=nil)
          @BeginDate = begindate
          @EndDate = enddate
        end

        def deserialize(params)
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeSecurityTrends返回参数结构体
      class DescribeSecurityTrendsResponse < TencentCloud::Common::AbstractModel
        # @param Malwares: 木马事件统计数据数组。
        # @type Malwares: Array
        # @param NonLocalLoginPlaces: 异地登录事件统计数据数组。
        # @type NonLocalLoginPlaces: Array
        # @param BruteAttacks: 密码破解事件统计数据数组。
        # @type BruteAttacks: Array
        # @param Vuls: 漏洞统计数据数组。
        # @type Vuls: Array
        # @param BaseLines: 基线统计数据数组。
        # @type BaseLines: Array
        # @param MaliciousRequests: 恶意请求统计数据数组。
        # @type MaliciousRequests: Array
        # @param HighRiskBashs: 高危命令统计数据数组。
        # @type HighRiskBashs: Array
        # @param ReverseShells: 反弹shell统计数据数组。
        # @type ReverseShells: Array
        # @param PrivilegeEscalations: 本地提权统计数据数组。
        # @type PrivilegeEscalations: Array
        # @param CyberAttacks: 网络攻击统计数据数组。
        # @type CyberAttacks: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Malwares, :NonLocalLoginPlaces, :BruteAttacks, :Vuls, :BaseLines, :MaliciousRequests, :HighRiskBashs, :ReverseShells, :PrivilegeEscalations, :CyberAttacks, :RequestId

        def initialize(malwares=nil, nonlocalloginplaces=nil, bruteattacks=nil, vuls=nil, baselines=nil, maliciousrequests=nil, highriskbashs=nil, reverseshells=nil, privilegeescalations=nil, cyberattacks=nil, requestid=nil)
          @Malwares = malwares
          @NonLocalLoginPlaces = nonlocalloginplaces
          @BruteAttacks = bruteattacks
          @Vuls = vuls
          @BaseLines = baselines
          @MaliciousRequests = maliciousrequests
          @HighRiskBashs = highriskbashs
          @ReverseShells = reverseshells
          @PrivilegeEscalations = privilegeescalations
          @CyberAttacks = cyberattacks
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Malwares'].nil?
            @Malwares = []
            params['Malwares'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @Malwares << securitytrend_tmp
            end
          end
          unless params['NonLocalLoginPlaces'].nil?
            @NonLocalLoginPlaces = []
            params['NonLocalLoginPlaces'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @NonLocalLoginPlaces << securitytrend_tmp
            end
          end
          unless params['BruteAttacks'].nil?
            @BruteAttacks = []
            params['BruteAttacks'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @BruteAttacks << securitytrend_tmp
            end
          end
          unless params['Vuls'].nil?
            @Vuls = []
            params['Vuls'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @Vuls << securitytrend_tmp
            end
          end
          unless params['BaseLines'].nil?
            @BaseLines = []
            params['BaseLines'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @BaseLines << securitytrend_tmp
            end
          end
          unless params['MaliciousRequests'].nil?
            @MaliciousRequests = []
            params['MaliciousRequests'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @MaliciousRequests << securitytrend_tmp
            end
          end
          unless params['HighRiskBashs'].nil?
            @HighRiskBashs = []
            params['HighRiskBashs'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @HighRiskBashs << securitytrend_tmp
            end
          end
          unless params['ReverseShells'].nil?
            @ReverseShells = []
            params['ReverseShells'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @ReverseShells << securitytrend_tmp
            end
          end
          unless params['PrivilegeEscalations'].nil?
            @PrivilegeEscalations = []
            params['PrivilegeEscalations'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @PrivilegeEscalations << securitytrend_tmp
            end
          end
          unless params['CyberAttacks'].nil?
            @CyberAttacks = []
            params['CyberAttacks'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @CyberAttacks << securitytrend_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTagMachines请求参数结构体
      class DescribeTagMachinesRequest < TencentCloud::Common::AbstractModel
        # @param Id: 标签ID
        # @type Id: Integer

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeTagMachines返回参数结构体
      class DescribeTagMachinesResponse < TencentCloud::Common::AbstractModel
        # @param List: 列表数据
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              tagmachine_tmp = TagMachine.new
              tagmachine_tmp.deserialize(i)
              @List << tagmachine_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTags请求参数结构体
      class DescribeTagsRequest < TencentCloud::Common::AbstractModel
        # @param MachineType: 云主机类型。
        # <li>CVM：表示虚拟主机</li>
        # <li>BM:  表示黑石物理机</li>
        # @type MachineType: String
        # @param MachineRegion: 机器所属地域。如：ap-guangzhou，ap-shanghai
        # @type MachineRegion: String

        attr_accessor :MachineType, :MachineRegion

        def initialize(machinetype=nil, machineregion=nil)
          @MachineType = machinetype
          @MachineRegion = machineregion
        end

        def deserialize(params)
          @MachineType = params['MachineType']
          @MachineRegion = params['MachineRegion']
        end
      end

      # DescribeTags返回参数结构体
      class DescribeTagsResponse < TencentCloud::Common::AbstractModel
        # @param List: 列表信息
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId

        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @List << tag_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsualLoginPlaces请求参数结构体
      class DescribeUsualLoginPlacesRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端UUID
        # @type Uuid: String

        attr_accessor :Uuid

        def initialize(uuid=nil)
          @Uuid = uuid
        end

        def deserialize(params)
          @Uuid = params['Uuid']
        end
      end

      # DescribeUsualLoginPlaces返回参数结构体
      class DescribeUsualLoginPlacesResponse < TencentCloud::Common::AbstractModel
        # @param UsualLoginPlaces: 常用登录地数组
        # @type UsualLoginPlaces: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UsualLoginPlaces, :RequestId

        def initialize(usualloginplaces=nil, requestid=nil)
          @UsualLoginPlaces = usualloginplaces
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UsualLoginPlaces'].nil?
            @UsualLoginPlaces = []
            params['UsualLoginPlaces'].each do |i|
              usualplace_tmp = UsualPlace.new
              usualplace_tmp.deserialize(i)
              @UsualLoginPlaces << usualplace_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulInfo请求参数结构体
      class DescribeVulInfoRequest < TencentCloud::Common::AbstractModel
        # @param VulId: 漏洞种类ID。
        # @type VulId: Integer

        attr_accessor :VulId

        def initialize(vulid=nil)
          @VulId = vulid
        end

        def deserialize(params)
          @VulId = params['VulId']
        end
      end

      # DescribeVulInfo返回参数结构体
      class DescribeVulInfoResponse < TencentCloud::Common::AbstractModel
        # @param VulId: 漏洞种类ID。
        # @type VulId: Integer
        # @param VulName: 漏洞名称。
        # @type VulName: String
        # @param VulLevel: 漏洞等级。
        # @type VulLevel: String
        # @param VulType: 漏洞类型。
        # @type VulType: String
        # @param Description: 漏洞描述。
        # @type Description: String
        # @param RepairPlan: 修复方案。
        # @type RepairPlan: String
        # @param CveId: 漏洞CVE。
        # @type CveId: String
        # @param Reference: 参考链接。
        # @type Reference: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulId, :VulName, :VulLevel, :VulType, :Description, :RepairPlan, :CveId, :Reference, :RequestId

        def initialize(vulid=nil, vulname=nil, vullevel=nil, vultype=nil, description=nil, repairplan=nil, cveid=nil, reference=nil, requestid=nil)
          @VulId = vulid
          @VulName = vulname
          @VulLevel = vullevel
          @VulType = vultype
          @Description = description
          @RepairPlan = repairplan
          @CveId = cveid
          @Reference = reference
          @RequestId = requestid
        end

        def deserialize(params)
          @VulId = params['VulId']
          @VulName = params['VulName']
          @VulLevel = params['VulLevel']
          @VulType = params['VulType']
          @Description = params['Description']
          @RepairPlan = params['RepairPlan']
          @CveId = params['CveId']
          @Reference = params['Reference']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulScanResult请求参数结构体
      class DescribeVulScanResultRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeVulScanResult返回参数结构体
      class DescribeVulScanResultResponse < TencentCloud::Common::AbstractModel
        # @param VulNum: 漏洞数量。
        # @type VulNum: Integer
        # @param ProVersionNum: 专业版机器数。
        # @type ProVersionNum: Integer
        # @param ImpactedHostNum: 受影响的专业版主机数。
        # @type ImpactedHostNum: Integer
        # @param HostNum: 主机总数。
        # @type HostNum: Integer
        # @param BasicVersionNum: 基础版机器数。
        # @type BasicVersionNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulNum, :ProVersionNum, :ImpactedHostNum, :HostNum, :BasicVersionNum, :RequestId

        def initialize(vulnum=nil, proversionnum=nil, impactedhostnum=nil, hostnum=nil, basicversionnum=nil, requestid=nil)
          @VulNum = vulnum
          @ProVersionNum = proversionnum
          @ImpactedHostNum = impactedhostnum
          @HostNum = hostnum
          @BasicVersionNum = basicversionnum
          @RequestId = requestid
        end

        def deserialize(params)
          @VulNum = params['VulNum']
          @ProVersionNum = params['ProVersionNum']
          @ImpactedHostNum = params['ImpactedHostNum']
          @HostNum = params['HostNum']
          @BasicVersionNum = params['BasicVersionNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVuls请求参数结构体
      class DescribeVulsRequest < TencentCloud::Common::AbstractModel
        # @param VulType: 漏洞类型。
        # <li>WEB：Web应用漏洞</li>
        # <li>SYSTEM：系统组件漏洞</li>
        # <li>BASELINE：安全基线</li>
        # @type VulType: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Status - String - 是否必填：否 - 状态筛选（UN_OPERATED: 待处理 | FIXED：已修复）

        # Status过滤条件值只能取其一，不能是“或”逻辑。
        # @type Filters: Array

        attr_accessor :VulType, :Limit, :Offset, :Filters

        def initialize(vultype=nil, limit=nil, offset=nil, filters=nil)
          @VulType = vultype
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @VulType = params['VulType']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeVuls返回参数结构体
      class DescribeVulsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 漏洞数量。
        # @type TotalCount: Integer
        # @param Vuls: 漏洞列表数组。
        # @type Vuls: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Vuls, :RequestId

        def initialize(totalcount=nil, vuls=nil, requestid=nil)
          @TotalCount = totalcount
          @Vuls = vuls
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Vuls'].nil?
            @Vuls = []
            params['Vuls'].each do |i|
              vul_tmp = Vul.new
              vul_tmp.deserialize(i)
              @Vuls << vul_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWeeklyReportBruteAttacks请求参数结构体
      class DescribeWeeklyReportBruteAttacksRequest < TencentCloud::Common::AbstractModel
        # @param BeginDate: 专业周报开始时间。
        # @type BeginDate: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :BeginDate, :Limit, :Offset

        def initialize(begindate=nil, limit=nil, offset=nil)
          @BeginDate = begindate
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @BeginDate = params['BeginDate']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeWeeklyReportBruteAttacks返回参数结构体
      class DescribeWeeklyReportBruteAttacksResponse < TencentCloud::Common::AbstractModel
        # @param WeeklyReportBruteAttacks: 专业周报密码破解数组。
        # @type WeeklyReportBruteAttacks: Array
        # @param TotalCount: 记录总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WeeklyReportBruteAttacks, :TotalCount, :RequestId

        def initialize(weeklyreportbruteattacks=nil, totalcount=nil, requestid=nil)
          @WeeklyReportBruteAttacks = weeklyreportbruteattacks
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WeeklyReportBruteAttacks'].nil?
            @WeeklyReportBruteAttacks = []
            params['WeeklyReportBruteAttacks'].each do |i|
              weeklyreportbruteattack_tmp = WeeklyReportBruteAttack.new
              weeklyreportbruteattack_tmp.deserialize(i)
              @WeeklyReportBruteAttacks << weeklyreportbruteattack_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWeeklyReportInfo请求参数结构体
      class DescribeWeeklyReportInfoRequest < TencentCloud::Common::AbstractModel
        # @param BeginDate: 专业周报开始时间。
        # @type BeginDate: String

        attr_accessor :BeginDate

        def initialize(begindate=nil)
          @BeginDate = begindate
        end

        def deserialize(params)
          @BeginDate = params['BeginDate']
        end
      end

      # DescribeWeeklyReportInfo返回参数结构体
      class DescribeWeeklyReportInfoResponse < TencentCloud::Common::AbstractModel
        # @param CompanyName: 账号所属公司或个人名称。
        # @type CompanyName: String
        # @param MachineNum: 机器总数。
        # @type MachineNum: Integer
        # @param OnlineMachineNum: 云镜客户端在线数。
        # @type OnlineMachineNum: Integer
        # @param OfflineMachineNum: 云镜客户端离线数。
        # @type OfflineMachineNum: Integer
        # @param ProVersionMachineNum: 开通云镜专业版数量。
        # @type ProVersionMachineNum: Integer
        # @param BeginDate: 周报开始时间。
        # @type BeginDate: String
        # @param EndDate: 周报结束时间。
        # @type EndDate: String
        # @param Level: 安全等级。
        # <li>HIGH：高</li>
        # <li>MIDDLE：中</li>
        # <li>LOW：低</li>
        # @type Level: String
        # @param MalwareNum: 木马记录数。
        # @type MalwareNum: Integer
        # @param NonlocalLoginNum: 异地登录数。
        # @type NonlocalLoginNum: Integer
        # @param BruteAttackSuccessNum: 密码破解成功数。
        # @type BruteAttackSuccessNum: Integer
        # @param VulNum: 漏洞数。
        # @type VulNum: Integer
        # @param DownloadUrl: 导出文件下载地址。
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyName, :MachineNum, :OnlineMachineNum, :OfflineMachineNum, :ProVersionMachineNum, :BeginDate, :EndDate, :Level, :MalwareNum, :NonlocalLoginNum, :BruteAttackSuccessNum, :VulNum, :DownloadUrl, :RequestId

        def initialize(companyname=nil, machinenum=nil, onlinemachinenum=nil, offlinemachinenum=nil, proversionmachinenum=nil, begindate=nil, enddate=nil, level=nil, malwarenum=nil, nonlocalloginnum=nil, bruteattacksuccessnum=nil, vulnum=nil, downloadurl=nil, requestid=nil)
          @CompanyName = companyname
          @MachineNum = machinenum
          @OnlineMachineNum = onlinemachinenum
          @OfflineMachineNum = offlinemachinenum
          @ProVersionMachineNum = proversionmachinenum
          @BeginDate = begindate
          @EndDate = enddate
          @Level = level
          @MalwareNum = malwarenum
          @NonlocalLoginNum = nonlocalloginnum
          @BruteAttackSuccessNum = bruteattacksuccessnum
          @VulNum = vulnum
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyName = params['CompanyName']
          @MachineNum = params['MachineNum']
          @OnlineMachineNum = params['OnlineMachineNum']
          @OfflineMachineNum = params['OfflineMachineNum']
          @ProVersionMachineNum = params['ProVersionMachineNum']
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
          @Level = params['Level']
          @MalwareNum = params['MalwareNum']
          @NonlocalLoginNum = params['NonlocalLoginNum']
          @BruteAttackSuccessNum = params['BruteAttackSuccessNum']
          @VulNum = params['VulNum']
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWeeklyReportMalwares请求参数结构体
      class DescribeWeeklyReportMalwaresRequest < TencentCloud::Common::AbstractModel
        # @param BeginDate: 专业周报开始时间。
        # @type BeginDate: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :BeginDate, :Limit, :Offset

        def initialize(begindate=nil, limit=nil, offset=nil)
          @BeginDate = begindate
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @BeginDate = params['BeginDate']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeWeeklyReportMalwares返回参数结构体
      class DescribeWeeklyReportMalwaresResponse < TencentCloud::Common::AbstractModel
        # @param WeeklyReportMalwares: 专业周报木马数据。
        # @type WeeklyReportMalwares: Array
        # @param TotalCount: 记录总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WeeklyReportMalwares, :TotalCount, :RequestId

        def initialize(weeklyreportmalwares=nil, totalcount=nil, requestid=nil)
          @WeeklyReportMalwares = weeklyreportmalwares
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WeeklyReportMalwares'].nil?
            @WeeklyReportMalwares = []
            params['WeeklyReportMalwares'].each do |i|
              weeklyreportmalware_tmp = WeeklyReportMalware.new
              weeklyreportmalware_tmp.deserialize(i)
              @WeeklyReportMalwares << weeklyreportmalware_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWeeklyReportNonlocalLoginPlaces请求参数结构体
      class DescribeWeeklyReportNonlocalLoginPlacesRequest < TencentCloud::Common::AbstractModel
        # @param BeginDate: 专业周报开始时间。
        # @type BeginDate: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :BeginDate, :Limit, :Offset

        def initialize(begindate=nil, limit=nil, offset=nil)
          @BeginDate = begindate
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @BeginDate = params['BeginDate']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeWeeklyReportNonlocalLoginPlaces返回参数结构体
      class DescribeWeeklyReportNonlocalLoginPlacesResponse < TencentCloud::Common::AbstractModel
        # @param WeeklyReportNonlocalLoginPlaces: 专业周报异地登录数据。
        # @type WeeklyReportNonlocalLoginPlaces: Array
        # @param TotalCount: 记录总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WeeklyReportNonlocalLoginPlaces, :TotalCount, :RequestId

        def initialize(weeklyreportnonlocalloginplaces=nil, totalcount=nil, requestid=nil)
          @WeeklyReportNonlocalLoginPlaces = weeklyreportnonlocalloginplaces
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WeeklyReportNonlocalLoginPlaces'].nil?
            @WeeklyReportNonlocalLoginPlaces = []
            params['WeeklyReportNonlocalLoginPlaces'].each do |i|
              weeklyreportnonlocalloginplace_tmp = WeeklyReportNonlocalLoginPlace.new
              weeklyreportnonlocalloginplace_tmp.deserialize(i)
              @WeeklyReportNonlocalLoginPlaces << weeklyreportnonlocalloginplace_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWeeklyReportVuls请求参数结构体
      class DescribeWeeklyReportVulsRequest < TencentCloud::Common::AbstractModel
        # @param BeginDate: 专业版周报开始时间。
        # @type BeginDate: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :BeginDate, :Limit, :Offset

        def initialize(begindate=nil, limit=nil, offset=nil)
          @BeginDate = begindate
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @BeginDate = params['BeginDate']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeWeeklyReportVuls返回参数结构体
      class DescribeWeeklyReportVulsResponse < TencentCloud::Common::AbstractModel
        # @param WeeklyReportVuls: 专业周报漏洞数据数组。
        # @type WeeklyReportVuls: Array
        # @param TotalCount: 记录总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WeeklyReportVuls, :TotalCount, :RequestId

        def initialize(weeklyreportvuls=nil, totalcount=nil, requestid=nil)
          @WeeklyReportVuls = weeklyreportvuls
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WeeklyReportVuls'].nil?
            @WeeklyReportVuls = []
            params['WeeklyReportVuls'].each do |i|
              weeklyreportvul_tmp = WeeklyReportVul.new
              weeklyreportvul_tmp.deserialize(i)
              @WeeklyReportVuls << weeklyreportvul_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWeeklyReports请求参数结构体
      class DescribeWeeklyReportsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :Limit, :Offset

        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeWeeklyReports返回参数结构体
      class DescribeWeeklyReportsResponse < TencentCloud::Common::AbstractModel
        # @param WeeklyReports: 专业周报列表数组。
        # @type WeeklyReports: Array
        # @param TotalCount: 记录总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WeeklyReports, :TotalCount, :RequestId

        def initialize(weeklyreports=nil, totalcount=nil, requestid=nil)
          @WeeklyReports = weeklyreports
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WeeklyReports'].nil?
            @WeeklyReports = []
            params['WeeklyReports'].each do |i|
              weeklyreport_tmp = WeeklyReport.new
              weeklyreport_tmp.deserialize(i)
              @WeeklyReports << weeklyreport_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # EditBashRule请求参数结构体
      class EditBashRuleRequest < TencentCloud::Common::AbstractModel
        # @param Name: 规则名称
        # @type Name: String
        # @param Level: 危险等级(1: 高危 2:中危 3: 低危)
        # @type Level: Integer
        # @param Rule: 正则表达式
        # @type Rule: String
        # @param Id: 规则ID(新增时不填)
        # @type Id: Integer
        # @param Uuid: 客户端ID(IsGlobal为1时，Uuid或Hostip必填一个)
        # @type Uuid: String
        # @param Hostip: 主机IP(IsGlobal为1时，Uuid或Hostip必填一个)
        # @type Hostip: String
        # @param IsGlobal: 是否全局规则(默认否)
        # @type IsGlobal: Integer

        attr_accessor :Name, :Level, :Rule, :Id, :Uuid, :Hostip, :IsGlobal

        def initialize(name=nil, level=nil, rule=nil, id=nil, uuid=nil, hostip=nil, isglobal=nil)
          @Name = name
          @Level = level
          @Rule = rule
          @Id = id
          @Uuid = uuid
          @Hostip = hostip
          @IsGlobal = isglobal
        end

        def deserialize(params)
          @Name = params['Name']
          @Level = params['Level']
          @Rule = params['Rule']
          @Id = params['Id']
          @Uuid = params['Uuid']
          @Hostip = params['Hostip']
          @IsGlobal = params['IsGlobal']
        end
      end

      # EditBashRule返回参数结构体
      class EditBashRuleResponse < TencentCloud::Common::AbstractModel
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

      # EditPrivilegeRule请求参数结构体
      class EditPrivilegeRuleRequest < TencentCloud::Common::AbstractModel
        # @param Id: 规则ID(新增时请留空)
        # @type Id: Integer
        # @param Uuid: 客户端ID(IsGlobal为1时，Uuid或Hostip必填一个)
        # @type Uuid: String
        # @param Hostip: 主机IP(IsGlobal为1时，Uuid或Hostip必填一个)
        # @type Hostip: String
        # @param ProcessName: 进程名
        # @type ProcessName: String
        # @param SMode: 是否S权限进程
        # @type SMode: Integer
        # @param IsGlobal: 是否全局规则(默认否)
        # @type IsGlobal: Integer

        attr_accessor :Id, :Uuid, :Hostip, :ProcessName, :SMode, :IsGlobal

        def initialize(id=nil, uuid=nil, hostip=nil, processname=nil, smode=nil, isglobal=nil)
          @Id = id
          @Uuid = uuid
          @Hostip = hostip
          @ProcessName = processname
          @SMode = smode
          @IsGlobal = isglobal
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @Hostip = params['Hostip']
          @ProcessName = params['ProcessName']
          @SMode = params['SMode']
          @IsGlobal = params['IsGlobal']
        end
      end

      # EditPrivilegeRule返回参数结构体
      class EditPrivilegeRuleResponse < TencentCloud::Common::AbstractModel
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

      # EditReverseShellRule请求参数结构体
      class EditReverseShellRuleRequest < TencentCloud::Common::AbstractModel
        # @param Id: 规则ID(新增时请留空)
        # @type Id: Integer
        # @param Uuid: 客户端ID(IsGlobal为1时，Uuid或Hostip必填一个)
        # @type Uuid: String
        # @param Hostip: 主机IP(IsGlobal为1时，Uuid或Hostip必填一个)
        # @type Hostip: String
        # @param DestIp: 目标IP
        # @type DestIp: String
        # @param DestPort: 目标端口
        # @type DestPort: String
        # @param ProcessName: 进程名
        # @type ProcessName: String
        # @param IsGlobal: 是否全局规则(默认否)
        # @type IsGlobal: Integer

        attr_accessor :Id, :Uuid, :Hostip, :DestIp, :DestPort, :ProcessName, :IsGlobal

        def initialize(id=nil, uuid=nil, hostip=nil, destip=nil, destport=nil, processname=nil, isglobal=nil)
          @Id = id
          @Uuid = uuid
          @Hostip = hostip
          @DestIp = destip
          @DestPort = destport
          @ProcessName = processname
          @IsGlobal = isglobal
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @Hostip = params['Hostip']
          @DestIp = params['DestIp']
          @DestPort = params['DestPort']
          @ProcessName = params['ProcessName']
          @IsGlobal = params['IsGlobal']
        end
      end

      # EditReverseShellRule返回参数结构体
      class EditReverseShellRuleResponse < TencentCloud::Common::AbstractModel
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

      # EditTags请求参数结构体
      class EditTagsRequest < TencentCloud::Common::AbstractModel
        # @param Name: 标签名
        # @type Name: String
        # @param Id: 标签ID
        # @type Id: Integer
        # @param Quuids: CVM主机ID
        # @type Quuids: Array

        attr_accessor :Name, :Id, :Quuids

        def initialize(name=nil, id=nil, quuids=nil)
          @Name = name
          @Id = id
          @Quuids = quuids
        end

        def deserialize(params)
          @Name = params['Name']
          @Id = params['Id']
          @Quuids = params['Quuids']
        end
      end

      # EditTags返回参数结构体
      class EditTagsResponse < TencentCloud::Common::AbstractModel
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

      # ExportAttackLogs请求参数结构体
      class ExportAttackLogsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ExportAttackLogs返回参数结构体
      class ExportAttackLogsResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param TaskId: 导出任务ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId

        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportBashEvents请求参数结构体
      class ExportBashEventsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ExportBashEvents返回参数结构体
      class ExportBashEventsResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :RequestId

        def initialize(downloadurl=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # ExportBruteAttacks请求参数结构体
      class ExportBruteAttacksRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ExportBruteAttacks返回参数结构体
      class ExportBruteAttacksResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :RequestId

        def initialize(downloadurl=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # ExportMaliciousRequests请求参数结构体
      class ExportMaliciousRequestsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ExportMaliciousRequests返回参数结构体
      class ExportMaliciousRequestsResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :RequestId

        def initialize(downloadurl=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # ExportMalwares请求参数结构体
      class ExportMalwaresRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ExportMalwares返回参数结构体
      class ExportMalwaresResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :RequestId

        def initialize(downloadurl=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # ExportNonlocalLoginPlaces请求参数结构体
      class ExportNonlocalLoginPlacesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ExportNonlocalLoginPlaces返回参数结构体
      class ExportNonlocalLoginPlacesResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param TaskId: 导出任务ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId

        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportPrivilegeEvents请求参数结构体
      class ExportPrivilegeEventsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ExportPrivilegeEvents返回参数结构体
      class ExportPrivilegeEventsResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :RequestId

        def initialize(downloadurl=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # ExportReverseShellEvents请求参数结构体
      class ExportReverseShellEventsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ExportReverseShellEvents返回参数结构体
      class ExportReverseShellEventsResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :RequestId

        def initialize(downloadurl=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等

      # 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。

      # * 最多只能有5个Filter
      # * 同一个Filter存在多个Values，Values值数量最多不能超过5个。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤键的名称。
        # @type Name: String
        # @param Values: 一个或者多个过滤值。
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

      # 账号变更历史数据。
      class HistoryAccount < TencentCloud::Common::AbstractModel
        # @param Id: 唯一ID。
        # @type Id: Integer
        # @param Uuid: 云镜客户端唯一Uuid。
        # @type Uuid: String
        # @param MachineIp: 主机内网IP。
        # @type MachineIp: String
        # @param MachineName: 主机名。
        # @type MachineName: String
        # @param Username: 帐号名。
        # @type Username: String
        # @param ModifyType: 帐号变更类型。
        # <li>CREATE：表示新增帐号</li>
        # <li>MODIFY：表示修改帐号</li>
        # <li>DELETE：表示删除帐号</li>
        # @type ModifyType: String
        # @param ModifyTime: 变更时间。
        # @type ModifyTime: String

        attr_accessor :Id, :Uuid, :MachineIp, :MachineName, :Username, :ModifyType, :ModifyTime

        def initialize(id=nil, uuid=nil, machineip=nil, machinename=nil, username=nil, modifytype=nil, modifytime=nil)
          @Id = id
          @Uuid = uuid
          @MachineIp = machineip
          @MachineName = machinename
          @Username = username
          @ModifyType = modifytype
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @Username = params['Username']
          @ModifyType = params['ModifyType']
          @ModifyTime = params['ModifyTime']
        end
      end

      # IgnoreImpactedHosts请求参数结构体
      class IgnoreImpactedHostsRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 漏洞ID数组。
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # IgnoreImpactedHosts返回参数结构体
      class IgnoreImpactedHostsResponse < TencentCloud::Common::AbstractModel
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

      # 受影响主机信息
      class ImpactedHost < TencentCloud::Common::AbstractModel
        # @param Id: 漏洞ID。
        # @type Id: Integer
        # @param MachineIp: 主机IP。
        # @type MachineIp: String
        # @param MachineName: 主机名称。
        # @type MachineName: String
        # @param LastScanTime: 最后检测时间。
        # @type LastScanTime: String
        # @param VulStatus: 漏洞状态。
        # <li>UN_OPERATED ：待处理</li>
        # <li>SCANING : 扫描中</li>
        # <li>FIXED : 已修复</li>
        # @type VulStatus: String
        # @param Uuid: 云镜客户端唯一标识UUID。
        # @type Uuid: String
        # @param Description: 漏洞描述。
        # @type Description: String
        # @param VulId: 漏洞种类ID。
        # @type VulId: Integer
        # @param IsProVersion: 是否为专业版。
        # @type IsProVersion: Boolean

        attr_accessor :Id, :MachineIp, :MachineName, :LastScanTime, :VulStatus, :Uuid, :Description, :VulId, :IsProVersion

        def initialize(id=nil, machineip=nil, machinename=nil, lastscantime=nil, vulstatus=nil, uuid=nil, description=nil, vulid=nil, isproversion=nil)
          @Id = id
          @MachineIp = machineip
          @MachineName = machinename
          @LastScanTime = lastscantime
          @VulStatus = vulstatus
          @Uuid = uuid
          @Description = description
          @VulId = vulid
          @IsProVersion = isproversion
        end

        def deserialize(params)
          @Id = params['Id']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @LastScanTime = params['LastScanTime']
          @VulStatus = params['VulStatus']
          @Uuid = params['Uuid']
          @Description = params['Description']
          @VulId = params['VulId']
          @IsProVersion = params['IsProVersion']
        end
      end

      # InquiryPriceOpenProVersionPrepaid请求参数结构体
      class InquiryPriceOpenProVersionPrepaidRequest < TencentCloud::Common::AbstractModel
        # @param ChargePrepaid: 预付费模式(包年包月)参数设置。
        # @type ChargePrepaid: :class:`Tencentcloud::Yunjing.v20180228.models.ChargePrepaid`
        # @param Machines: 需要开通专业版机器列表数组。
        # @type Machines: Array

        attr_accessor :ChargePrepaid, :Machines

        def initialize(chargeprepaid=nil, machines=nil)
          @ChargePrepaid = chargeprepaid
          @Machines = machines
        end

        def deserialize(params)
          unless params['ChargePrepaid'].nil?
            @ChargePrepaid = ChargePrepaid.new
            @ChargePrepaid.deserialize(params['ChargePrepaid'])
          end
          unless params['Machines'].nil?
            @Machines = []
            params['Machines'].each do |i|
              proversionmachine_tmp = ProVersionMachine.new
              proversionmachine_tmp.deserialize(i)
              @Machines << proversionmachine_tmp
            end
          end
        end
      end

      # InquiryPriceOpenProVersionPrepaid返回参数结构体
      class InquiryPriceOpenProVersionPrepaidResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 预支费用的原价，单位：元。
        # @type OriginalPrice: Float
        # @param DiscountPrice: 预支费用的折扣价，单位：元。
        # @type DiscountPrice: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalPrice, :DiscountPrice, :RequestId

        def initialize(originalprice=nil, discountprice=nil, requestid=nil)
          @OriginalPrice = originalprice
          @DiscountPrice = discountprice
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalPrice = params['OriginalPrice']
          @DiscountPrice = params['DiscountPrice']
          @RequestId = params['RequestId']
        end
      end

      # 异地登录白名单
      class LoginWhiteLists < TencentCloud::Common::AbstractModel
        # @param Id: 记录ID
        # @type Id: Integer
        # @param Uuid: 云镜客户端ID
        # @type Uuid: String
        # @param Places: 白名单地域
        # @type Places: Array
        # @param UserName: 白名单用户（多个用户逗号隔开）
        # @type UserName: String
        # @param SrcIp: 白名单IP（多个IP逗号隔开）
        # @type SrcIp: String
        # @param IsGlobal: 是否为全局规则
        # @type IsGlobal: Boolean
        # @param CreateTime: 创建白名单时间
        # @type CreateTime: String
        # @param ModifyTime: 修改白名单时间
        # @type ModifyTime: String
        # @param MachineName: 机器名
        # @type MachineName: String
        # @param HostIp: 机器IP
        # @type HostIp: String
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :Id, :Uuid, :Places, :UserName, :SrcIp, :IsGlobal, :CreateTime, :ModifyTime, :MachineName, :HostIp, :StartTime, :EndTime

        def initialize(id=nil, uuid=nil, places=nil, username=nil, srcip=nil, isglobal=nil, createtime=nil, modifytime=nil, machinename=nil, hostip=nil, starttime=nil, endtime=nil)
          @Id = id
          @Uuid = uuid
          @Places = places
          @UserName = username
          @SrcIp = srcip
          @IsGlobal = isglobal
          @CreateTime = createtime
          @ModifyTime = modifytime
          @MachineName = machinename
          @HostIp = hostip
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          unless params['Places'].nil?
            @Places = []
            params['Places'].each do |i|
              place_tmp = Place.new
              place_tmp.deserialize(i)
              @Places << place_tmp
            end
          end
          @UserName = params['UserName']
          @SrcIp = params['SrcIp']
          @IsGlobal = params['IsGlobal']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @MachineName = params['MachineName']
          @HostIp = params['HostIp']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 白名单规则
      class LoginWhiteListsRule < TencentCloud::Common::AbstractModel
        # @param Places: 加白地域
        # @type Places: Array
        # @param SrcIp: 加白源IP，支持网段，多个IP以逗号隔开
        # @type SrcIp: String
        # @param UserName: 加白用户名，多个用户名以逗号隔开
        # @type UserName: String
        # @param IsGlobal: 是否对全局生效
        # @type IsGlobal: Boolean
        # @param HostIp: 白名单生效的机器
        # @type HostIp: String
        # @param Id: 规则ID，用于更新规则
        # @type Id: Integer
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :Places, :SrcIp, :UserName, :IsGlobal, :HostIp, :Id, :StartTime, :EndTime

        def initialize(places=nil, srcip=nil, username=nil, isglobal=nil, hostip=nil, id=nil, starttime=nil, endtime=nil)
          @Places = places
          @SrcIp = srcip
          @UserName = username
          @IsGlobal = isglobal
          @HostIp = hostip
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          unless params['Places'].nil?
            @Places = []
            params['Places'].each do |i|
              place_tmp = Place.new
              place_tmp.deserialize(i)
              @Places << place_tmp
            end
          end
          @SrcIp = params['SrcIp']
          @UserName = params['UserName']
          @IsGlobal = params['IsGlobal']
          @HostIp = params['HostIp']
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 主机列表
      class Machine < TencentCloud::Common::AbstractModel
        # @param MachineName: 主机名称。
        # @type MachineName: String
        # @param MachineOs: 主机系统。
        # @type MachineOs: String
        # @param MachineStatus: 主机状态。
        # <li>OFFLINE: 离线  </li>
        # <li>ONLINE: 在线</li>
        # <li>MACHINE_STOPPED: 已关机</li>
        # @type MachineStatus: String
        # @param Uuid: 云镜客户端唯一Uuid，若客户端长时间不在线将返回空字符。
        # @type Uuid: String
        # @param Quuid: CVM或BM机器唯一Uuid。
        # @type Quuid: String
        # @param VulNum: 漏洞数。
        # @type VulNum: Integer
        # @param MachineIp: 主机IP。
        # @type MachineIp: String
        # @param IsProVersion: 是否是专业版。
        # <li>true： 是</li>
        # <li>false：否</li>
        # @type IsProVersion: Boolean
        # @param MachineWanIp: 主机外网IP。
        # @type MachineWanIp: String
        # @param PayMode: 主机状态。
        # <li>POSTPAY: 表示后付费，即按量计费  </li>
        # <li>PREPAY: 表示预付费，即包年包月</li>
        # @type PayMode: String
        # @param MalwareNum: 木马数。
        # @type MalwareNum: Integer
        # @param Tag: 标签信息
        # @type Tag: Array
        # @param BaselineNum: 基线风险数。
        # @type BaselineNum: Integer
        # @param CyberAttackNum: 网络风险数。
        # @type CyberAttackNum: Integer
        # @param SecurityStatus: 风险状态。
        # <li>SAFE：安全</li>
        # <li>RISK：风险</li>
        # <li>UNKNOWN：未知</li>
        # @type SecurityStatus: String
        # @param InvasionNum: 入侵事件数
        # @type InvasionNum: Integer
        # @param RegionInfo: 地域信息
        # @type RegionInfo: :class:`Tencentcloud::Yunjing.v20180228.models.RegionInfo`

        attr_accessor :MachineName, :MachineOs, :MachineStatus, :Uuid, :Quuid, :VulNum, :MachineIp, :IsProVersion, :MachineWanIp, :PayMode, :MalwareNum, :Tag, :BaselineNum, :CyberAttackNum, :SecurityStatus, :InvasionNum, :RegionInfo

        def initialize(machinename=nil, machineos=nil, machinestatus=nil, uuid=nil, quuid=nil, vulnum=nil, machineip=nil, isproversion=nil, machinewanip=nil, paymode=nil, malwarenum=nil, tag=nil, baselinenum=nil, cyberattacknum=nil, securitystatus=nil, invasionnum=nil, regioninfo=nil)
          @MachineName = machinename
          @MachineOs = machineos
          @MachineStatus = machinestatus
          @Uuid = uuid
          @Quuid = quuid
          @VulNum = vulnum
          @MachineIp = machineip
          @IsProVersion = isproversion
          @MachineWanIp = machinewanip
          @PayMode = paymode
          @MalwareNum = malwarenum
          @Tag = tag
          @BaselineNum = baselinenum
          @CyberAttackNum = cyberattacknum
          @SecurityStatus = securitystatus
          @InvasionNum = invasionnum
          @RegionInfo = regioninfo
        end

        def deserialize(params)
          @MachineName = params['MachineName']
          @MachineOs = params['MachineOs']
          @MachineStatus = params['MachineStatus']
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          @VulNum = params['VulNum']
          @MachineIp = params['MachineIp']
          @IsProVersion = params['IsProVersion']
          @MachineWanIp = params['MachineWanIp']
          @PayMode = params['PayMode']
          @MalwareNum = params['MalwareNum']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              machinetag_tmp = MachineTag.new
              machinetag_tmp.deserialize(i)
              @Tag << machinetag_tmp
            end
          end
          @BaselineNum = params['BaselineNum']
          @CyberAttackNum = params['CyberAttackNum']
          @SecurityStatus = params['SecurityStatus']
          @InvasionNum = params['InvasionNum']
          unless params['RegionInfo'].nil?
            @RegionInfo = RegionInfo.new
            @RegionInfo.deserialize(params['RegionInfo'])
          end
        end
      end

      # 服务器标签信息
      class MachineTag < TencentCloud::Common::AbstractModel
        # @param Rid: 关联标签ID
        # @type Rid: Integer
        # @param Name: 标签名
        # @type Name: String
        # @param TagId: 标签ID
        # @type TagId: Integer

        attr_accessor :Rid, :Name, :TagId

        def initialize(rid=nil, name=nil, tagid=nil)
          @Rid = rid
          @Name = name
          @TagId = tagid
        end

        def deserialize(params)
          @Rid = params['Rid']
          @Name = params['Name']
          @TagId = params['TagId']
        end
      end

      # 恶意请求数据。
      class MaliciousRequest < TencentCloud::Common::AbstractModel
        # @param Id: 记录ID。
        # @type Id: Integer
        # @param Uuid: 云镜客户端UUID。
        # @type Uuid: String
        # @param MachineIp: 主机内网IP。
        # @type MachineIp: String
        # @param MachineName: 主机名。
        # @type MachineName: String
        # @param Domain: 恶意请求域名。
        # @type Domain: String
        # @param Count: 恶意请求数。
        # @type Count: Integer
        # @param ProcessName: 进程名。
        # @type ProcessName: String
        # @param Status: 记录状态。
        # <li>UN_OPERATED：待处理</li>
        # <li>TRUSTED：已信任</li>
        # <li>UN_TRUSTED：已取消信任</li>
        # @type Status: String
        # @param Description: 恶意请求域名描述。
        # @type Description: String
        # @param Reference: 参考地址。
        # @type Reference: String
        # @param CreateTime: 发现时间。
        # @type CreateTime: String
        # @param MergeTime: 记录合并时间。
        # @type MergeTime: String
        # @param ProcessMd5: 进程MD5
        # 值。
        # @type ProcessMd5: String
        # @param CmdLine: 执行命令行。
        # @type CmdLine: String
        # @param Pid: 进程PID。
        # @type Pid: Integer

        attr_accessor :Id, :Uuid, :MachineIp, :MachineName, :Domain, :Count, :ProcessName, :Status, :Description, :Reference, :CreateTime, :MergeTime, :ProcessMd5, :CmdLine, :Pid

        def initialize(id=nil, uuid=nil, machineip=nil, machinename=nil, domain=nil, count=nil, processname=nil, status=nil, description=nil, reference=nil, createtime=nil, mergetime=nil, processmd5=nil, cmdline=nil, pid=nil)
          @Id = id
          @Uuid = uuid
          @MachineIp = machineip
          @MachineName = machinename
          @Domain = domain
          @Count = count
          @ProcessName = processname
          @Status = status
          @Description = description
          @Reference = reference
          @CreateTime = createtime
          @MergeTime = mergetime
          @ProcessMd5 = processmd5
          @CmdLine = cmdline
          @Pid = pid
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @Domain = params['Domain']
          @Count = params['Count']
          @ProcessName = params['ProcessName']
          @Status = params['Status']
          @Description = params['Description']
          @Reference = params['Reference']
          @CreateTime = params['CreateTime']
          @MergeTime = params['MergeTime']
          @ProcessMd5 = params['ProcessMd5']
          @CmdLine = params['CmdLine']
          @Pid = params['Pid']
        end
      end

      # 木马相关信息
      class Malware < TencentCloud::Common::AbstractModel
        # @param Id: 事件ID。
        # @type Id: Integer
        # @param MachineIp: 主机IP。
        # @type MachineIp: String
        # @param Status: 当前木马状态。
        # <li>UN_OPERATED：未处理</li><li>SEGREGATED：已隔离</li><li>TRUSTED：已信任</li>
        # <li>SEPARATING：隔离中</li><li>RECOVERING：恢复中</li>
        # @type Status: String
        # @param FilePath: 木马所在的路径。
        # @type FilePath: String
        # @param Description: 木马描述。
        # @type Description: String
        # @param MachineName: 主机名称。
        # @type MachineName: String
        # @param FileCreateTime: 木马文件创建时间。
        # @type FileCreateTime: String
        # @param ModifyTime: 木马文件修改时间。
        # @type ModifyTime: String
        # @param Uuid: 云镜客户端唯一标识UUID。
        # @type Uuid: String

        attr_accessor :Id, :MachineIp, :Status, :FilePath, :Description, :MachineName, :FileCreateTime, :ModifyTime, :Uuid

        def initialize(id=nil, machineip=nil, status=nil, filepath=nil, description=nil, machinename=nil, filecreatetime=nil, modifytime=nil, uuid=nil)
          @Id = id
          @MachineIp = machineip
          @Status = status
          @FilePath = filepath
          @Description = description
          @MachineName = machinename
          @FileCreateTime = filecreatetime
          @ModifyTime = modifytime
          @Uuid = uuid
        end

        def deserialize(params)
          @Id = params['Id']
          @MachineIp = params['MachineIp']
          @Status = params['Status']
          @FilePath = params['FilePath']
          @Description = params['Description']
          @MachineName = params['MachineName']
          @FileCreateTime = params['FileCreateTime']
          @ModifyTime = params['ModifyTime']
          @Uuid = params['Uuid']
        end
      end

      # MisAlarmNonlocalLoginPlaces请求参数结构体
      class MisAlarmNonlocalLoginPlacesRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 异地登录事件Id数组。
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # MisAlarmNonlocalLoginPlaces返回参数结构体
      class MisAlarmNonlocalLoginPlacesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAlarmAttribute请求参数结构体
      class ModifyAlarmAttributeRequest < TencentCloud::Common::AbstractModel
        # @param Attribute: 告警项目。
        # <li>Offline：防护软件离线</li>
        # <li>Malware：发现木马文件</li>
        # <li>NonlocalLogin：发现异地登录行为</li>
        # <li>CrackSuccess：被暴力破解成功</li>
        # @type Attribute: String
        # @param Value: 告警项目属性。
        # <li>CLOSE：关闭</li>
        # <li>OPEN：打开</li>
        # @type Value: String

        attr_accessor :Attribute, :Value

        def initialize(attribute=nil, value=nil)
          @Attribute = attribute
          @Value = value
        end

        def deserialize(params)
          @Attribute = params['Attribute']
          @Value = params['Value']
        end
      end

      # ModifyAlarmAttribute返回参数结构体
      class ModifyAlarmAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAutoOpenProVersionConfig请求参数结构体
      class ModifyAutoOpenProVersionConfigRequest < TencentCloud::Common::AbstractModel
        # @param Status: 设置自动开通状态。
        # <li>CLOSE：关闭</li>
        # <li>OPEN：打开</li>
        # @type Status: String

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # ModifyAutoOpenProVersionConfig返回参数结构体
      class ModifyAutoOpenProVersionConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLoginWhiteList请求参数结构体
      class ModifyLoginWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param Rules: 白名单规则
        # @type Rules: :class:`Tencentcloud::Yunjing.v20180228.models.LoginWhiteListsRule`

        attr_accessor :Rules

        def initialize(rules=nil)
          @Rules = rules
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = LoginWhiteListsRule.new
            @Rules.deserialize(params['Rules'])
          end
        end
      end

      # ModifyLoginWhiteList返回参数结构体
      class ModifyLoginWhiteListResponse < TencentCloud::Common::AbstractModel
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

      # ModifyProVersionRenewFlag请求参数结构体
      class ModifyProVersionRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param RenewFlag: 自动续费标识。取值范围：
        # <li>NOTIFY_AND_AUTO_RENEW：通知过期且自动续费</li>
        # <li>NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费</li>
        # <li>DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费</li>
        # @type RenewFlag: String
        # @param Quuid: 主机唯一ID，对应CVM的uuid、BM的instanceId。
        # @type Quuid: String

        attr_accessor :RenewFlag, :Quuid

        def initialize(renewflag=nil, quuid=nil)
          @RenewFlag = renewflag
          @Quuid = quuid
        end

        def deserialize(params)
          @RenewFlag = params['RenewFlag']
          @Quuid = params['Quuid']
        end
      end

      # ModifyProVersionRenewFlag返回参数结构体
      class ModifyProVersionRenewFlagResponse < TencentCloud::Common::AbstractModel
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

      # 异地登录
      class NonLocalLoginPlace < TencentCloud::Common::AbstractModel
        # @param Id: 事件ID。
        # @type Id: Integer
        # @param MachineIp: 主机IP。
        # @type MachineIp: String
        # @param Status: 登录状态
        # <li>NON_LOCAL_LOGIN：异地登录</li>
        # <li>NORMAL_LOGIN：正常登录</li>
        # @type Status: String
        # @param UserName: 用户名。
        # @type UserName: String
        # @param City: 城市ID。
        # @type City: Integer
        # @param Country: 国家ID。
        # @type Country: Integer
        # @param Province: 省份ID。
        # @type Province: Integer
        # @param SrcIp: 登录IP。
        # @type SrcIp: String
        # @param MachineName: 机器名称。
        # @type MachineName: String
        # @param LoginTime: 登录时间。
        # @type LoginTime: String
        # @param Uuid: 云镜客户端唯一标识Uuid。
        # @type Uuid: String

        attr_accessor :Id, :MachineIp, :Status, :UserName, :City, :Country, :Province, :SrcIp, :MachineName, :LoginTime, :Uuid

        def initialize(id=nil, machineip=nil, status=nil, username=nil, city=nil, country=nil, province=nil, srcip=nil, machinename=nil, logintime=nil, uuid=nil)
          @Id = id
          @MachineIp = machineip
          @Status = status
          @UserName = username
          @City = city
          @Country = country
          @Province = province
          @SrcIp = srcip
          @MachineName = machinename
          @LoginTime = logintime
          @Uuid = uuid
        end

        def deserialize(params)
          @Id = params['Id']
          @MachineIp = params['MachineIp']
          @Status = params['Status']
          @UserName = params['UserName']
          @City = params['City']
          @Country = params['Country']
          @Province = params['Province']
          @SrcIp = params['SrcIp']
          @MachineName = params['MachineName']
          @LoginTime = params['LoginTime']
          @Uuid = params['Uuid']
        end
      end

      # 端口列表
      class OpenPort < TencentCloud::Common::AbstractModel
        # @param Id: 唯一ID。
        # @type Id: Integer
        # @param Uuid: 云镜客户端唯一UUID。
        # @type Uuid: String
        # @param Port: 开放端口号。
        # @type Port: Integer
        # @param MachineIp: 主机IP。
        # @type MachineIp: String
        # @param MachineName: 主机名。
        # @type MachineName: String
        # @param ProcessName: 端口对应进程名。
        # @type ProcessName: String
        # @param Pid: 端口对应进程Pid。
        # @type Pid: Integer
        # @param CreateTime: 记录创建时间。
        # @type CreateTime: String
        # @param ModifyTime: 记录更新时间。
        # @type ModifyTime: String

        attr_accessor :Id, :Uuid, :Port, :MachineIp, :MachineName, :ProcessName, :Pid, :CreateTime, :ModifyTime

        def initialize(id=nil, uuid=nil, port=nil, machineip=nil, machinename=nil, processname=nil, pid=nil, createtime=nil, modifytime=nil)
          @Id = id
          @Uuid = uuid
          @Port = port
          @MachineIp = machineip
          @MachineName = machinename
          @ProcessName = processname
          @Pid = pid
          @CreateTime = createtime
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @Port = params['Port']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @ProcessName = params['ProcessName']
          @Pid = params['Pid']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
        end
      end

      # 端口统计列表
      class OpenPortStatistics < TencentCloud::Common::AbstractModel
        # @param Port: 端口号
        # @type Port: Integer
        # @param MachineNum: 主机数量
        # @type MachineNum: Integer

        attr_accessor :Port, :MachineNum

        def initialize(port=nil, machinenum=nil)
          @Port = port
          @MachineNum = machinenum
        end

        def deserialize(params)
          @Port = params['Port']
          @MachineNum = params['MachineNum']
        end
      end

      # OpenProVersionPrepaid请求参数结构体
      class OpenProVersionPrepaidRequest < TencentCloud::Common::AbstractModel
        # @param ChargePrepaid: 购买相关参数。
        # @type ChargePrepaid: :class:`Tencentcloud::Yunjing.v20180228.models.ChargePrepaid`
        # @param Machines: 需要开通专业版主机信息数组。
        # @type Machines: Array

        attr_accessor :ChargePrepaid, :Machines

        def initialize(chargeprepaid=nil, machines=nil)
          @ChargePrepaid = chargeprepaid
          @Machines = machines
        end

        def deserialize(params)
          unless params['ChargePrepaid'].nil?
            @ChargePrepaid = ChargePrepaid.new
            @ChargePrepaid.deserialize(params['ChargePrepaid'])
          end
          unless params['Machines'].nil?
            @Machines = []
            params['Machines'].each do |i|
              proversionmachine_tmp = ProVersionMachine.new
              proversionmachine_tmp.deserialize(i)
              @Machines << proversionmachine_tmp
            end
          end
        end
      end

      # OpenProVersionPrepaid返回参数结构体
      class OpenProVersionPrepaidResponse < TencentCloud::Common::AbstractModel
        # @param DealIds: 订单ID列表。
        # @type DealIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealIds, :RequestId

        def initialize(dealids=nil, requestid=nil)
          @DealIds = dealids
          @RequestId = requestid
        end

        def deserialize(params)
          @DealIds = params['DealIds']
          @RequestId = params['RequestId']
        end
      end

      # OpenProVersion请求参数结构体
      class OpenProVersionRequest < TencentCloud::Common::AbstractModel
        # @param MachineType: 云主机类型。
        # <li>CVM：表示虚拟主机</li>
        # <li>BM:  表示黑石物理机</li>
        # @type MachineType: String
        # @param MachineRegion: 机器所属地域。
        # 如：ap-guangzhou，ap-shanghai
        # @type MachineRegion: String
        # @param Quuids: 主机唯一标识Uuid数组。
        # 黑石的InstanceId，CVM的Uuid
        # @type Quuids: Array
        # @param ActivityId: 活动ID。
        # @type ActivityId: Integer

        attr_accessor :MachineType, :MachineRegion, :Quuids, :ActivityId

        def initialize(machinetype=nil, machineregion=nil, quuids=nil, activityid=nil)
          @MachineType = machinetype
          @MachineRegion = machineregion
          @Quuids = quuids
          @ActivityId = activityid
        end

        def deserialize(params)
          @MachineType = params['MachineType']
          @MachineRegion = params['MachineRegion']
          @Quuids = params['Quuids']
          @ActivityId = params['ActivityId']
        end
      end

      # OpenProVersion返回参数结构体
      class OpenProVersionResponse < TencentCloud::Common::AbstractModel
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

      # 登录地信息
      class Place < TencentCloud::Common::AbstractModel
        # @param CityId: 城市 ID。
        # @type CityId: Integer
        # @param ProvinceId: 省份 ID。
        # @type ProvinceId: Integer
        # @param CountryId: 国家ID，暂只支持国内：1。
        # @type CountryId: Integer

        attr_accessor :CityId, :ProvinceId, :CountryId

        def initialize(cityid=nil, provinceid=nil, countryid=nil)
          @CityId = cityid
          @ProvinceId = provinceid
          @CountryId = countryid
        end

        def deserialize(params)
          @CityId = params['CityId']
          @ProvinceId = params['ProvinceId']
          @CountryId = params['CountryId']
        end
      end

      # 本地提权数据
      class PrivilegeEscalationProcess < TencentCloud::Common::AbstractModel
        # @param Id: 数据ID
        # @type Id: Integer
        # @param Uuid: 云镜ID
        # @type Uuid: String
        # @param Quuid: 主机ID
        # @type Quuid: String
        # @param Hostip: 主机内网IP
        # @type Hostip: String
        # @param ProcessName: 进程名
        # @type ProcessName: String
        # @param FullPath: 进程路径
        # @type FullPath: String
        # @param CmdLine: 执行命令
        # @type CmdLine: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param UserGroup: 用户组
        # @type UserGroup: String
        # @param ProcFilePrivilege: 进程文件权限
        # @type ProcFilePrivilege: String
        # @param ParentProcName: 父进程名
        # @type ParentProcName: String
        # @param ParentProcUser: 父进程用户名
        # @type ParentProcUser: String
        # @param ParentProcGroup: 父进程用户组
        # @type ParentProcGroup: String
        # @param ParentProcPath: 父进程路径
        # @type ParentProcPath: String
        # @param ProcTree: 进程树
        # @type ProcTree: String
        # @param Status: 处理状态
        # @type Status: Integer
        # @param CreateTime: 发生时间
        # @type CreateTime: String
        # @param MachineName: 机器名
        # @type MachineName: String

        attr_accessor :Id, :Uuid, :Quuid, :Hostip, :ProcessName, :FullPath, :CmdLine, :UserName, :UserGroup, :ProcFilePrivilege, :ParentProcName, :ParentProcUser, :ParentProcGroup, :ParentProcPath, :ProcTree, :Status, :CreateTime, :MachineName

        def initialize(id=nil, uuid=nil, quuid=nil, hostip=nil, processname=nil, fullpath=nil, cmdline=nil, username=nil, usergroup=nil, procfileprivilege=nil, parentprocname=nil, parentprocuser=nil, parentprocgroup=nil, parentprocpath=nil, proctree=nil, status=nil, createtime=nil, machinename=nil)
          @Id = id
          @Uuid = uuid
          @Quuid = quuid
          @Hostip = hostip
          @ProcessName = processname
          @FullPath = fullpath
          @CmdLine = cmdline
          @UserName = username
          @UserGroup = usergroup
          @ProcFilePrivilege = procfileprivilege
          @ParentProcName = parentprocname
          @ParentProcUser = parentprocuser
          @ParentProcGroup = parentprocgroup
          @ParentProcPath = parentprocpath
          @ProcTree = proctree
          @Status = status
          @CreateTime = createtime
          @MachineName = machinename
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          @Hostip = params['Hostip']
          @ProcessName = params['ProcessName']
          @FullPath = params['FullPath']
          @CmdLine = params['CmdLine']
          @UserName = params['UserName']
          @UserGroup = params['UserGroup']
          @ProcFilePrivilege = params['ProcFilePrivilege']
          @ParentProcName = params['ParentProcName']
          @ParentProcUser = params['ParentProcUser']
          @ParentProcGroup = params['ParentProcGroup']
          @ParentProcPath = params['ParentProcPath']
          @ProcTree = params['ProcTree']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @MachineName = params['MachineName']
        end
      end

      # 本地提权规则
      class PrivilegeRule < TencentCloud::Common::AbstractModel
        # @param Id: 规则ID
        # @type Id: Integer
        # @param Uuid: 客户端ID
        # @type Uuid: String
        # @param ProcessName: 进程名
        # @type ProcessName: String
        # @param SMode: 是否S权限
        # @type SMode: Integer
        # @param Operator: 操作人
        # @type Operator: String
        # @param IsGlobal: 是否全局规则
        # @type IsGlobal: Integer
        # @param Status: 状态(0: 有效 1: 无效)
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param Hostip: 主机IP
        # @type Hostip: String

        attr_accessor :Id, :Uuid, :ProcessName, :SMode, :Operator, :IsGlobal, :Status, :CreateTime, :ModifyTime, :Hostip

        def initialize(id=nil, uuid=nil, processname=nil, smode=nil, operator=nil, isglobal=nil, status=nil, createtime=nil, modifytime=nil, hostip=nil)
          @Id = id
          @Uuid = uuid
          @ProcessName = processname
          @SMode = smode
          @Operator = operator
          @IsGlobal = isglobal
          @Status = status
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Hostip = hostip
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @ProcessName = params['ProcessName']
          @SMode = params['SMode']
          @Operator = params['Operator']
          @IsGlobal = params['IsGlobal']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Hostip = params['Hostip']
        end
      end

      # 需要开通专业版机器信息。
      class ProVersionMachine < TencentCloud::Common::AbstractModel
        # @param MachineType: 主机类型。
        # <li>CVM: 虚拟主机</li>
        # <li>BM: 黑石物理机</li>
        # @type MachineType: String
        # @param MachineRegion: 主机所在地域。
        # 如：ap-guangzhou、ap-beijing
        # @type MachineRegion: String
        # @param Quuid: 主机唯一标识Uuid。
        # 黑石的InstanceId，CVM的Uuid
        # @type Quuid: String

        attr_accessor :MachineType, :MachineRegion, :Quuid

        def initialize(machinetype=nil, machineregion=nil, quuid=nil)
          @MachineType = machinetype
          @MachineRegion = machineregion
          @Quuid = quuid
        end

        def deserialize(params)
          @MachineType = params['MachineType']
          @MachineRegion = params['MachineRegion']
          @Quuid = params['Quuid']
        end
      end

      # 进程信息数据。
      class Process < TencentCloud::Common::AbstractModel
        # @param Id: 唯一ID。
        # @type Id: Integer
        # @param Uuid: 云镜客户端唯一UUID。
        # @type Uuid: String
        # @param MachineIp: 主机内网IP。
        # @type MachineIp: String
        # @param MachineName: 主机名。
        # @type MachineName: String
        # @param Pid: 进程Pid。
        # @type Pid: Integer
        # @param Ppid: 进程Ppid。
        # @type Ppid: Integer
        # @param ProcessName: 进程名。
        # @type ProcessName: String
        # @param Username: 进程用户名。
        # @type Username: String
        # @param Platform: 所属平台。
        # <li>WIN32：windows32位</li>
        # <li>WIN64：windows64位</li>
        # <li>LINUX32：Linux32位</li>
        # <li>LINUX64：Linux64位</li>
        # @type Platform: String
        # @param FullPath: 进程路径。
        # @type FullPath: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String

        attr_accessor :Id, :Uuid, :MachineIp, :MachineName, :Pid, :Ppid, :ProcessName, :Username, :Platform, :FullPath, :CreateTime

        def initialize(id=nil, uuid=nil, machineip=nil, machinename=nil, pid=nil, ppid=nil, processname=nil, username=nil, platform=nil, fullpath=nil, createtime=nil)
          @Id = id
          @Uuid = uuid
          @MachineIp = machineip
          @MachineName = machinename
          @Pid = pid
          @Ppid = ppid
          @ProcessName = processname
          @Username = username
          @Platform = platform
          @FullPath = fullpath
          @CreateTime = createtime
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @Pid = params['Pid']
          @Ppid = params['Ppid']
          @ProcessName = params['ProcessName']
          @Username = params['Username']
          @Platform = params['Platform']
          @FullPath = params['FullPath']
          @CreateTime = params['CreateTime']
        end
      end

      # 进程数据统计数据。
      class ProcessStatistics < TencentCloud::Common::AbstractModel
        # @param ProcessName: 进程名。
        # @type ProcessName: String
        # @param MachineNum: 主机数量。
        # @type MachineNum: Integer

        attr_accessor :ProcessName, :MachineNum

        def initialize(processname=nil, machinenum=nil)
          @ProcessName = processname
          @MachineNum = machinenum
        end

        def deserialize(params)
          @ProcessName = params['ProcessName']
          @MachineNum = params['MachineNum']
        end
      end

      # RecoverMalwares请求参数结构体
      class RecoverMalwaresRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 木马Id数组,单次最大删除不能超过200条
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # RecoverMalwares返回参数结构体
      class RecoverMalwaresResponse < TencentCloud::Common::AbstractModel
        # @param SuccessIds: 恢复成功id数组
        # @type SuccessIds: Array
        # @param FailedIds: 恢复失败id数组
        # @type FailedIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessIds, :FailedIds, :RequestId

        def initialize(successids=nil, failedids=nil, requestid=nil)
          @SuccessIds = successids
          @FailedIds = failedids
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessIds = params['SuccessIds']
          @FailedIds = params['FailedIds']
          @RequestId = params['RequestId']
        end
      end

      # 地域信息
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域标志，如 ap-guangzhou，ap-shanghai，ap-beijing
        # @type Region: String
        # @param RegionName: 地域中文名，如华南地区（广州），华东地区（上海金融），华北地区（北京）
        # @type RegionName: String
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param RegionCode: 地域代码，如 gz，sh，bj
        # @type RegionCode: String

        attr_accessor :Region, :RegionName, :RegionId, :RegionCode

        def initialize(region=nil, regionname=nil, regionid=nil, regioncode=nil)
          @Region = region
          @RegionName = regionname
          @RegionId = regionid
          @RegionCode = regioncode
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionId = params['RegionId']
          @RegionCode = params['RegionCode']
        end
      end

      # RenewProVersion请求参数结构体
      class RenewProVersionRequest < TencentCloud::Common::AbstractModel
        # @param ChargePrepaid: 购买相关参数。
        # @type ChargePrepaid: :class:`Tencentcloud::Yunjing.v20180228.models.ChargePrepaid`
        # @param Quuid: 主机唯一ID，对应CVM的uuid、BM的InstanceId。
        # @type Quuid: String

        attr_accessor :ChargePrepaid, :Quuid

        def initialize(chargeprepaid=nil, quuid=nil)
          @ChargePrepaid = chargeprepaid
          @Quuid = quuid
        end

        def deserialize(params)
          unless params['ChargePrepaid'].nil?
            @ChargePrepaid = ChargePrepaid.new
            @ChargePrepaid.deserialize(params['ChargePrepaid'])
          end
          @Quuid = params['Quuid']
        end
      end

      # RenewProVersion返回参数结构体
      class RenewProVersionResponse < TencentCloud::Common::AbstractModel
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

      # RescanImpactedHost请求参数结构体
      class RescanImpactedHostRequest < TencentCloud::Common::AbstractModel
        # @param Id: 漏洞ID。
        # @type Id: Integer

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # RescanImpactedHost返回参数结构体
      class RescanImpactedHostResponse < TencentCloud::Common::AbstractModel
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

      # 反弹Shell数据
      class ReverseShell < TencentCloud::Common::AbstractModel
        # @param Id: ID
        # @type Id: Integer
        # @param Uuid: 云镜UUID
        # @type Uuid: String
        # @param Quuid: 主机ID
        # @type Quuid: String
        # @param Hostip: 主机内网IP
        # @type Hostip: String
        # @param DstIp: 目标IP
        # @type DstIp: String
        # @param DstPort: 目标端口
        # @type DstPort: Integer
        # @param ProcessName: 进程名
        # @type ProcessName: String
        # @param FullPath: 进程路径
        # @type FullPath: String
        # @param CmdLine: 命令详情
        # @type CmdLine: String
        # @param UserName: 执行用户
        # @type UserName: String
        # @param UserGroup: 执行用户组
        # @type UserGroup: String
        # @param ParentProcName: 父进程名
        # @type ParentProcName: String
        # @param ParentProcUser: 父进程用户
        # @type ParentProcUser: String
        # @param ParentProcGroup: 父进程用户组
        # @type ParentProcGroup: String
        # @param ParentProcPath: 父进程路径
        # @type ParentProcPath: String
        # @param Status: 处理状态
        # @type Status: Integer
        # @param CreateTime: 产生时间
        # @type CreateTime: String
        # @param MachineName: 主机名
        # @type MachineName: String
        # @param ProcTree: 进程树
        # @type ProcTree: String

        attr_accessor :Id, :Uuid, :Quuid, :Hostip, :DstIp, :DstPort, :ProcessName, :FullPath, :CmdLine, :UserName, :UserGroup, :ParentProcName, :ParentProcUser, :ParentProcGroup, :ParentProcPath, :Status, :CreateTime, :MachineName, :ProcTree

        def initialize(id=nil, uuid=nil, quuid=nil, hostip=nil, dstip=nil, dstport=nil, processname=nil, fullpath=nil, cmdline=nil, username=nil, usergroup=nil, parentprocname=nil, parentprocuser=nil, parentprocgroup=nil, parentprocpath=nil, status=nil, createtime=nil, machinename=nil, proctree=nil)
          @Id = id
          @Uuid = uuid
          @Quuid = quuid
          @Hostip = hostip
          @DstIp = dstip
          @DstPort = dstport
          @ProcessName = processname
          @FullPath = fullpath
          @CmdLine = cmdline
          @UserName = username
          @UserGroup = usergroup
          @ParentProcName = parentprocname
          @ParentProcUser = parentprocuser
          @ParentProcGroup = parentprocgroup
          @ParentProcPath = parentprocpath
          @Status = status
          @CreateTime = createtime
          @MachineName = machinename
          @ProcTree = proctree
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          @Hostip = params['Hostip']
          @DstIp = params['DstIp']
          @DstPort = params['DstPort']
          @ProcessName = params['ProcessName']
          @FullPath = params['FullPath']
          @CmdLine = params['CmdLine']
          @UserName = params['UserName']
          @UserGroup = params['UserGroup']
          @ParentProcName = params['ParentProcName']
          @ParentProcUser = params['ParentProcUser']
          @ParentProcGroup = params['ParentProcGroup']
          @ParentProcPath = params['ParentProcPath']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @MachineName = params['MachineName']
          @ProcTree = params['ProcTree']
        end
      end

      # 反弹Shell规则
      class ReverseShellRule < TencentCloud::Common::AbstractModel
        # @param Id: 规则ID
        # @type Id: Integer
        # @param Uuid: 客户端ID
        # @type Uuid: String
        # @param ProcessName: 进程名称
        # @type ProcessName: String
        # @param DestIp: 目标IP
        # @type DestIp: String
        # @param DestPort: 目标端口
        # @type DestPort: String
        # @param Operator: 操作人
        # @type Operator: String
        # @param IsGlobal: 是否全局规则
        # @type IsGlobal: Integer
        # @param Status: 状态 (0: 有效 1: 无效)
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param Hostip: 主机IP
        # @type Hostip: String

        attr_accessor :Id, :Uuid, :ProcessName, :DestIp, :DestPort, :Operator, :IsGlobal, :Status, :CreateTime, :ModifyTime, :Hostip

        def initialize(id=nil, uuid=nil, processname=nil, destip=nil, destport=nil, operator=nil, isglobal=nil, status=nil, createtime=nil, modifytime=nil, hostip=nil)
          @Id = id
          @Uuid = uuid
          @ProcessName = processname
          @DestIp = destip
          @DestPort = destport
          @Operator = operator
          @IsGlobal = isglobal
          @Status = status
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Hostip = hostip
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @ProcessName = params['ProcessName']
          @DestIp = params['DestIp']
          @DestPort = params['DestPort']
          @Operator = params['Operator']
          @IsGlobal = params['IsGlobal']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Hostip = params['Hostip']
        end
      end

      # 安全事件消息数据。
      class SecurityDynamic < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端UUID。
        # @type Uuid: String
        # @param EventTime: 安全事件发生事件。
        # @type EventTime: String
        # @param EventType: 安全事件类型。
        # <li>MALWARE：木马事件</li>
        # <li>NON_LOCAL_LOGIN：异地登录</li>
        # <li>BRUTEATTACK_SUCCESS：密码破解成功</li>
        # <li>VUL：漏洞</li>
        # <li>BASELINE：安全基线</li>
        # @type EventType: String
        # @param Message: 安全事件消息。
        # @type Message: String
        # @param SecurityLevel: 安全事件等级。
        # <li>RISK: 严重</li>
        # <li>HIGH: 高危</li>
        # <li>NORMAL: 中危</li>
        # <li>LOW: 低危</li>
        # @type SecurityLevel: String

        attr_accessor :Uuid, :EventTime, :EventType, :Message, :SecurityLevel

        def initialize(uuid=nil, eventtime=nil, eventtype=nil, message=nil, securitylevel=nil)
          @Uuid = uuid
          @EventTime = eventtime
          @EventType = eventtype
          @Message = message
          @SecurityLevel = securitylevel
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @EventTime = params['EventTime']
          @EventType = params['EventType']
          @Message = params['Message']
          @SecurityLevel = params['SecurityLevel']
        end
      end

      # 安全趋势统计数据。
      class SecurityTrend < TencentCloud::Common::AbstractModel
        # @param Date: 事件时间。
        # @type Date: String
        # @param EventNum: 事件数量。
        # @type EventNum: Integer

        attr_accessor :Date, :EventNum

        def initialize(date=nil, eventnum=nil)
          @Date = date
          @EventNum = eventnum
        end

        def deserialize(params)
          @Date = params['Date']
          @EventNum = params['EventNum']
        end
      end

      # SeparateMalwares请求参数结构体
      class SeparateMalwaresRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 木马事件ID数组。
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # SeparateMalwares返回参数结构体
      class SeparateMalwaresResponse < TencentCloud::Common::AbstractModel
        # @param SuccessIds: 隔离成功的id数组。
        # @type SuccessIds: Array
        # @param FailedIds: 隔离失败的id数组。
        # @type FailedIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessIds, :FailedIds, :RequestId

        def initialize(successids=nil, failedids=nil, requestid=nil)
          @SuccessIds = successids
          @FailedIds = failedids
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessIds = params['SuccessIds']
          @FailedIds = params['FailedIds']
          @RequestId = params['RequestId']
        end
      end

      # SetBashEventsStatus请求参数结构体
      class SetBashEventsStatusRequest < TencentCloud::Common::AbstractModel
        # @param Ids: ID数组，最大100条。
        # @type Ids: Array
        # @param Status: 新状态(0-待处理 1-高危 2-正常)
        # @type Status: Integer

        attr_accessor :Ids, :Status

        def initialize(ids=nil, status=nil)
          @Ids = ids
          @Status = status
        end

        def deserialize(params)
          @Ids = params['Ids']
          @Status = params['Status']
        end
      end

      # SetBashEventsStatus返回参数结构体
      class SetBashEventsStatusResponse < TencentCloud::Common::AbstractModel
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

      # SwitchBashRules请求参数结构体
      class SwitchBashRulesRequest < TencentCloud::Common::AbstractModel
        # @param Id: 规则ID
        # @type Id: Integer
        # @param Disabled: 是否禁用
        # @type Disabled: Integer

        attr_accessor :Id, :Disabled

        def initialize(id=nil, disabled=nil)
          @Id = id
          @Disabled = disabled
        end

        def deserialize(params)
          @Id = params['Id']
          @Disabled = params['Disabled']
        end
      end

      # SwitchBashRules返回参数结构体
      class SwitchBashRulesResponse < TencentCloud::Common::AbstractModel
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

      # 标签信息
      class Tag < TencentCloud::Common::AbstractModel
        # @param Id: 标签ID
        # @type Id: Integer
        # @param Name: 标签名
        # @type Name: String
        # @param Count: 服务器数
        # @type Count: Integer

        attr_accessor :Id, :Name, :Count

        def initialize(id=nil, name=nil, count=nil)
          @Id = id
          @Name = name
          @Count = count
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Count = params['Count']
        end
      end

      # 标签相关服务器信息
      class TagMachine < TencentCloud::Common::AbstractModel
        # @param Id: ID
        # @type Id: String
        # @param Quuid: 主机ID
        # @type Quuid: String
        # @param MachineName: 主机名称
        # @type MachineName: String
        # @param MachineIp: 主机内网IP
        # @type MachineIp: String
        # @param MachineWanIp: 主机外网IP
        # @type MachineWanIp: String
        # @param MachineRegion: 主机区域
        # @type MachineRegion: String
        # @param MachineType: 主机区域类型
        # @type MachineType: String

        attr_accessor :Id, :Quuid, :MachineName, :MachineIp, :MachineWanIp, :MachineRegion, :MachineType

        def initialize(id=nil, quuid=nil, machinename=nil, machineip=nil, machinewanip=nil, machineregion=nil, machinetype=nil)
          @Id = id
          @Quuid = quuid
          @MachineName = machinename
          @MachineIp = machineip
          @MachineWanIp = machinewanip
          @MachineRegion = machineregion
          @MachineType = machinetype
        end

        def deserialize(params)
          @Id = params['Id']
          @Quuid = params['Quuid']
          @MachineName = params['MachineName']
          @MachineIp = params['MachineIp']
          @MachineWanIp = params['MachineWanIp']
          @MachineRegion = params['MachineRegion']
          @MachineType = params['MachineType']
        end
      end

      # TrustMaliciousRequest请求参数结构体
      class TrustMaliciousRequestRequest < TencentCloud::Common::AbstractModel
        # @param Id: 恶意请求记录ID。
        # @type Id: Integer

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # TrustMaliciousRequest返回参数结构体
      class TrustMaliciousRequestResponse < TencentCloud::Common::AbstractModel
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

      # TrustMalwares请求参数结构体
      class TrustMalwaresRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 木马ID数组。
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # TrustMalwares返回参数结构体
      class TrustMalwaresResponse < TencentCloud::Common::AbstractModel
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

      # UntrustMaliciousRequest请求参数结构体
      class UntrustMaliciousRequestRequest < TencentCloud::Common::AbstractModel
        # @param Id: 受信任记录ID。
        # @type Id: Integer

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # UntrustMaliciousRequest返回参数结构体
      class UntrustMaliciousRequestResponse < TencentCloud::Common::AbstractModel
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

      # UntrustMalwares请求参数结构体
      class UntrustMalwaresRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 木马ID数组，单次最大处理不能超过200条。
        # @type Ids: Array

        attr_accessor :Ids

        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # UntrustMalwares返回参数结构体
      class UntrustMalwaresResponse < TencentCloud::Common::AbstractModel
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

      # 常用登录地
      class UsualPlace < TencentCloud::Common::AbstractModel
        # @param Id: ID。
        # @type Id: Integer
        # @param Uuid: 云镜客户端唯一标识UUID。
        # @type Uuid: String
        # @param CountryId: 国家 ID。
        # @type CountryId: Integer
        # @param ProvinceId: 省份 ID。
        # @type ProvinceId: Integer
        # @param CityId: 城市 ID。
        # @type CityId: Integer

        attr_accessor :Id, :Uuid, :CountryId, :ProvinceId, :CityId

        def initialize(id=nil, uuid=nil, countryid=nil, provinceid=nil, cityid=nil)
          @Id = id
          @Uuid = uuid
          @CountryId = countryid
          @ProvinceId = provinceid
          @CityId = cityid
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @CountryId = params['CountryId']
          @ProvinceId = params['ProvinceId']
          @CityId = params['CityId']
        end
      end

      # 漏洞列表数据
      class Vul < TencentCloud::Common::AbstractModel
        # @param VulId: 漏洞种类ID
        # @type VulId: Integer
        # @param VulName: 漏洞名称
        # @type VulName: String
        # @param VulLevel: 漏洞危害等级:
        # HIGH：高危
        # MIDDLE：中危
        # LOW：低危
        # NOTICE：提示
        # @type VulLevel: String
        # @param LastScanTime: 最后扫描时间
        # @type LastScanTime: String
        # @param ImpactedHostNum: 受影响机器数量
        # @type ImpactedHostNum: Integer
        # @param VulStatus: 漏洞状态
        # * UN_OPERATED : 待处理
        # * FIXED : 已修复
        # @type VulStatus: String

        attr_accessor :VulId, :VulName, :VulLevel, :LastScanTime, :ImpactedHostNum, :VulStatus

        def initialize(vulid=nil, vulname=nil, vullevel=nil, lastscantime=nil, impactedhostnum=nil, vulstatus=nil)
          @VulId = vulid
          @VulName = vulname
          @VulLevel = vullevel
          @LastScanTime = lastscantime
          @ImpactedHostNum = impactedhostnum
          @VulStatus = vulstatus
        end

        def deserialize(params)
          @VulId = params['VulId']
          @VulName = params['VulName']
          @VulLevel = params['VulLevel']
          @LastScanTime = params['LastScanTime']
          @ImpactedHostNum = params['ImpactedHostNum']
          @VulStatus = params['VulStatus']
        end
      end

      # 周报列表。
      class WeeklyReport < TencentCloud::Common::AbstractModel
        # @param BeginDate: 周报开始时间。
        # @type BeginDate: String
        # @param EndDate: 周报结束时间。
        # @type EndDate: String

        attr_accessor :BeginDate, :EndDate

        def initialize(begindate=nil, enddate=nil)
          @BeginDate = begindate
          @EndDate = enddate
        end

        def deserialize(params)
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
        end
      end

      # 专业周报密码破解数据。
      class WeeklyReportBruteAttack < TencentCloud::Common::AbstractModel
        # @param MachineIp: 主机IP。
        # @type MachineIp: String
        # @param Username: 被破解用户名。
        # @type Username: String
        # @param SrcIp: 源IP。
        # @type SrcIp: String
        # @param Count: 尝试次数。
        # @type Count: Integer
        # @param AttackTime: 攻击时间。
        # @type AttackTime: String

        attr_accessor :MachineIp, :Username, :SrcIp, :Count, :AttackTime

        def initialize(machineip=nil, username=nil, srcip=nil, count=nil, attacktime=nil)
          @MachineIp = machineip
          @Username = username
          @SrcIp = srcip
          @Count = count
          @AttackTime = attacktime
        end

        def deserialize(params)
          @MachineIp = params['MachineIp']
          @Username = params['Username']
          @SrcIp = params['SrcIp']
          @Count = params['Count']
          @AttackTime = params['AttackTime']
        end
      end

      # 专业周报木马数据。
      class WeeklyReportMalware < TencentCloud::Common::AbstractModel
        # @param MachineIp: 主机IP。
        # @type MachineIp: String
        # @param FilePath: 木马文件路径。
        # @type FilePath: String
        # @param Md5: 木马文件MD5值。
        # @type Md5: String
        # @param FindTime: 木马发现时间。
        # @type FindTime: String
        # @param Status: 当前木马状态。
        # <li>UN_OPERATED：未处理</li>
        # <li>SEGREGATED：已隔离</li>
        # <li>TRUSTED：已信任</li>
        # <li>SEPARATING：隔离中</li>
        # <li>RECOVERING：恢复中</li>
        # @type Status: String

        attr_accessor :MachineIp, :FilePath, :Md5, :FindTime, :Status

        def initialize(machineip=nil, filepath=nil, md5=nil, findtime=nil, status=nil)
          @MachineIp = machineip
          @FilePath = filepath
          @Md5 = md5
          @FindTime = findtime
          @Status = status
        end

        def deserialize(params)
          @MachineIp = params['MachineIp']
          @FilePath = params['FilePath']
          @Md5 = params['Md5']
          @FindTime = params['FindTime']
          @Status = params['Status']
        end
      end

      # 专业周报异地登录数据。
      class WeeklyReportNonlocalLoginPlace < TencentCloud::Common::AbstractModel
        # @param MachineIp: 主机IP。
        # @type MachineIp: String
        # @param Username: 用户名。
        # @type Username: String
        # @param SrcIp: 源IP。
        # @type SrcIp: String
        # @param Country: 国家ID。
        # @type Country: Integer
        # @param Province: 省份ID。
        # @type Province: Integer
        # @param City: 城市ID。
        # @type City: Integer
        # @param LoginTime: 登录时间。
        # @type LoginTime: String

        attr_accessor :MachineIp, :Username, :SrcIp, :Country, :Province, :City, :LoginTime

        def initialize(machineip=nil, username=nil, srcip=nil, country=nil, province=nil, city=nil, logintime=nil)
          @MachineIp = machineip
          @Username = username
          @SrcIp = srcip
          @Country = country
          @Province = province
          @City = city
          @LoginTime = logintime
        end

        def deserialize(params)
          @MachineIp = params['MachineIp']
          @Username = params['Username']
          @SrcIp = params['SrcIp']
          @Country = params['Country']
          @Province = params['Province']
          @City = params['City']
          @LoginTime = params['LoginTime']
        end
      end

      # 专业版周报漏洞数据。
      class WeeklyReportVul < TencentCloud::Common::AbstractModel
        # @param MachineIp: 主机内网IP。
        # @type MachineIp: String
        # @param VulName: 漏洞名称。
        # @type VulName: String
        # @param VulType: 漏洞类型。
        # <li> WEB : Web漏洞</li>
        # <li> SYSTEM :系统组件漏洞</li>
        # <li> BASELINE : 安全基线</li>
        # @type VulType: String
        # @param Description: 漏洞描述。
        # @type Description: String
        # @param VulStatus: 漏洞状态。
        # <li> UN_OPERATED : 待处理</li>
        # <li> SCANING : 扫描中</li>
        # <li> FIXED : 已修复</li>
        # @type VulStatus: String
        # @param LastScanTime: 最后扫描时间。
        # @type LastScanTime: String

        attr_accessor :MachineIp, :VulName, :VulType, :Description, :VulStatus, :LastScanTime

        def initialize(machineip=nil, vulname=nil, vultype=nil, description=nil, vulstatus=nil, lastscantime=nil)
          @MachineIp = machineip
          @VulName = vulname
          @VulType = vultype
          @Description = description
          @VulStatus = vulstatus
          @LastScanTime = lastscantime
        end

        def deserialize(params)
          @MachineIp = params['MachineIp']
          @VulName = params['VulName']
          @VulType = params['VulType']
          @Description = params['Description']
          @VulStatus = params['VulStatus']
          @LastScanTime = params['LastScanTime']
        end
      end

    end
  end
end

