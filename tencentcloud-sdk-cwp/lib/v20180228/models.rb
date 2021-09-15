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
  module Cwp
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

      # 容器安全
      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
      # 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class AssetFilters < TencentCloud::Common::AbstractModel
        # @param Name: 过滤键的名称。
        # @type Name: String
        # @param Values: 一个或者多个过滤值。
        # @type Values: Array
        # @param ExactMatch: 是否模糊查询
        # @type ExactMatch: Boolean

        attr_accessor :Name, :Values, :ExactMatch
        
        def initialize(name=nil, values=nil, exactmatch=nil)
          @Name = name
          @Values = values
          @ExactMatch = exactmatch
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @ExactMatch = params['ExactMatch']
        end
      end

      # key-val类型的通用数据结构
      class AssetKeyVal < TencentCloud::Common::AbstractModel
        # @param Key: 标签
        # @type Key: String
        # @param Value: 数量
        # @type Value: Integer
        # @param Desc: 描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String

        attr_accessor :Key, :Value, :Desc
        
        def initialize(key=nil, value=nil, desc=nil)
          @Key = key
          @Value = value
          @Desc = desc
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @Desc = params['Desc']
        end
      end

      # 基线基础信息
      class BaselineBasicInfo < TencentCloud::Common::AbstractModel
        # @param Name: 基线名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param BaselineId: 基线id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaselineId: Integer
        # @param ParentId: 父级id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentId: Integer

        attr_accessor :Name, :BaselineId, :ParentId
        
        def initialize(name=nil, baselineid=nil, parentid=nil)
          @Name = name
          @BaselineId = baselineid
          @ParentId = parentid
        end

        def deserialize(params)
          @Name = params['Name']
          @BaselineId = params['BaselineId']
          @ParentId = params['ParentId']
        end
      end

      # 基线详情
      class BaselineDetail < TencentCloud::Common::AbstractModel
        # @param Description: 基线描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Level: 危害等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param PackageName: package名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageName: String
        # @param ParentId: 父级id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentId: Integer
        # @param Name: 基线名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Description, :Level, :PackageName, :ParentId, :Name
        
        def initialize(description=nil, level=nil, packagename=nil, parentid=nil, name=nil)
          @Description = description
          @Level = level
          @PackageName = packagename
          @ParentId = parentid
          @Name = name
        end

        def deserialize(params)
          @Description = params['Description']
          @Level = params['Level']
          @PackageName = params['PackageName']
          @ParentId = params['ParentId']
          @Name = params['Name']
        end
      end

      # 基线检测信息
      class BaselineRuleInfo < TencentCloud::Common::AbstractModel
        # @param RuleName: 检测项名称
        # @type RuleName: String
        # @param Description: 检测项描述
        # @type Description: String
        # @param FixMessage: 修复建议
        # @type FixMessage: String
        # @param Level: 危害等级
        # @type Level: Integer
        # @param Status: 状态
        # @type Status: Integer
        # @param RuleId: 检测项id
        # @type RuleId: Integer
        # @param LastScanAt: 最后检测时间
        # @type LastScanAt: String
        # @param RuleRemark: 具体原因说明
        # @type RuleRemark: String
        # @param Uuid: 唯一Uuid
        # @type Uuid: String
        # @param EventId: 唯一事件ID
        # @type EventId: Integer

        attr_accessor :RuleName, :Description, :FixMessage, :Level, :Status, :RuleId, :LastScanAt, :RuleRemark, :Uuid, :EventId
        
        def initialize(rulename=nil, description=nil, fixmessage=nil, level=nil, status=nil, ruleid=nil, lastscanat=nil, ruleremark=nil, uuid=nil, eventid=nil)
          @RuleName = rulename
          @Description = description
          @FixMessage = fixmessage
          @Level = level
          @Status = status
          @RuleId = ruleid
          @LastScanAt = lastscanat
          @RuleRemark = ruleremark
          @Uuid = uuid
          @EventId = eventid
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @Description = params['Description']
          @FixMessage = params['FixMessage']
          @Level = params['Level']
          @Status = params['Status']
          @RuleId = params['RuleId']
          @LastScanAt = params['LastScanAt']
          @RuleRemark = params['RuleRemark']
          @Uuid = params['Uuid']
          @EventId = params['EventId']
        end
      end

      # 高危命令数据
      class BashEvent < TencentCloud::Common::AbstractModel
        # @param Id: 数据ID
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
        # @param RuleLevel: 规则等级：1-高 2-中 3-低
        # @type RuleLevel: Integer
        # @param Status: 处理状态： 0 = 待处理 1= 已处理, 2 = 已加白
        # @type Status: Integer
        # @param CreateTime: 发生时间
        # @type CreateTime: String
        # @param MachineName: 主机名
        # @type MachineName: String
        # @param DetectBy: 0: bash日志 1: 实时监控(雷霆版)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetectBy: Integer
        # @param Pid: 进程id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pid: String
        # @param Exe: 进程名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Exe: String
        # @param ModifyTime: 处理时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param RuleCategory: 规则类别  0=系统规则，1=用户规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleCategory: Integer
        # @param RegexBashCmd: 自动生成的正则表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegexBashCmd: String

        attr_accessor :Id, :Uuid, :Quuid, :Hostip, :User, :Platform, :BashCmd, :RuleId, :RuleName, :RuleLevel, :Status, :CreateTime, :MachineName, :DetectBy, :Pid, :Exe, :ModifyTime, :RuleCategory, :RegexBashCmd
        
        def initialize(id=nil, uuid=nil, quuid=nil, hostip=nil, user=nil, platform=nil, bashcmd=nil, ruleid=nil, rulename=nil, rulelevel=nil, status=nil, createtime=nil, machinename=nil, detectby=nil, pid=nil, exe=nil, modifytime=nil, rulecategory=nil, regexbashcmd=nil)
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
          @DetectBy = detectby
          @Pid = pid
          @Exe = exe
          @ModifyTime = modifytime
          @RuleCategory = rulecategory
          @RegexBashCmd = regexbashcmd
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
          @DetectBy = params['DetectBy']
          @Pid = params['Pid']
          @Exe = params['Exe']
          @ModifyTime = params['ModifyTime']
          @RuleCategory = params['RuleCategory']
          @RegexBashCmd = params['RegexBashCmd']
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
        # @param Level: 危险等级(0 ：无 1: 高危 2:中危 3: 低危)
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
        # @param Uuids: 生效服务器的uuid数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uuids: Array
        # @param White: 0=黑名单 1=白名单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type White: Integer
        # @param DealOldEvents: 是否处理之前的事件 0: 不处理 1:处理
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealOldEvents: Integer

        attr_accessor :Id, :Uuid, :Name, :Level, :Rule, :Decription, :Operator, :IsGlobal, :Status, :CreateTime, :ModifyTime, :Hostip, :Uuids, :White, :DealOldEvents
        
        def initialize(id=nil, uuid=nil, name=nil, level=nil, rule=nil, decription=nil, operator=nil, isglobal=nil, status=nil, createtime=nil, modifytime=nil, hostip=nil, uuids=nil, white=nil, dealoldevents=nil)
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
          @Uuids = uuids
          @White = white
          @DealOldEvents = dealoldevents
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
          @Uuids = params['Uuids']
          @White = params['White']
          @DealOldEvents = params['DealOldEvents']
        end
      end

      # 密码破解列表实体
      class BruteAttackInfo < TencentCloud::Common::AbstractModel
        # @param Id: 唯一Id
        # @type Id: Integer
        # @param Uuid: 云镜客户端唯一标识UUID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uuid: String
        # @param MachineIp: 主机ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineIp: String
        # @param MachineName: 主机名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineName: String
        # @param UserName: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param SrcIp: 来源ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcIp: String
        # @param Status: SUCCESS：破解成功；FAILED：破解失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Country: 国家id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Country: Integer
        # @param City: 城市id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type City: Integer
        # @param Province: 省份id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Province: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param BanStatus: 阻断状态：1-阻断成功；非1-阻断失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BanStatus: Integer
        # @param EventType: 事件类型：200-暴力破解事件，300-暴力破解成功事件（页面展示），400-暴力破解不存在的帐号事件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventType: Integer
        # @param Count: 发生次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param Quuid: 机器UUID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quuid: String
        # @param IsProVersion: 是否为专业版（true/false）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsProVersion: Boolean
        # @param Protocol: 被攻击的服务的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Port: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param ModifyTime: 最近攻击时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String

        attr_accessor :Id, :Uuid, :MachineIp, :MachineName, :UserName, :SrcIp, :Status, :Country, :City, :Province, :CreateTime, :BanStatus, :EventType, :Count, :Quuid, :IsProVersion, :Protocol, :Port, :ModifyTime, :InstanceId
        
        def initialize(id=nil, uuid=nil, machineip=nil, machinename=nil, username=nil, srcip=nil, status=nil, country=nil, city=nil, province=nil, createtime=nil, banstatus=nil, eventtype=nil, count=nil, quuid=nil, isproversion=nil, protocol=nil, port=nil, modifytime=nil, instanceid=nil)
          @Id = id
          @Uuid = uuid
          @MachineIp = machineip
          @MachineName = machinename
          @UserName = username
          @SrcIp = srcip
          @Status = status
          @Country = country
          @City = city
          @Province = province
          @CreateTime = createtime
          @BanStatus = banstatus
          @EventType = eventtype
          @Count = count
          @Quuid = quuid
          @IsProVersion = isproversion
          @Protocol = protocol
          @Port = port
          @ModifyTime = modifytime
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @UserName = params['UserName']
          @SrcIp = params['SrcIp']
          @Status = params['Status']
          @Country = params['Country']
          @City = params['City']
          @Province = params['Province']
          @CreateTime = params['CreateTime']
          @BanStatus = params['BanStatus']
          @EventType = params['EventType']
          @Count = params['Count']
          @Quuid = params['Quuid']
          @IsProVersion = params['IsProVersion']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @ModifyTime = params['ModifyTime']
          @InstanceId = params['InstanceId']
        end
      end

      # 标准阻断模式规则
      class BruteAttackRule < TencentCloud::Common::AbstractModel
        # @param TimeRange: 爆破事件发生的时间范围，单位：秒
        # @type TimeRange: Integer
        # @param LoginFailTimes: 爆破事件失败次数
        # @type LoginFailTimes: Integer

        attr_accessor :TimeRange, :LoginFailTimes
        
        def initialize(timerange=nil, loginfailtimes=nil)
          @TimeRange = timerange
          @LoginFailTimes = loginfailtimes
        end

        def deserialize(params)
          @TimeRange = params['TimeRange']
          @LoginFailTimes = params['LoginFailTimes']
        end
      end

      # CancelIgnoreVul请求参数结构体
      class CancelIgnoreVulRequest < TencentCloud::Common::AbstractModel
        # @param EventIds: 漏洞事件id串，多个用英文逗号分隔
        # @type EventIds: String

        attr_accessor :EventIds
        
        def initialize(eventids=nil)
          @EventIds = eventids
        end

        def deserialize(params)
          @EventIds = params['EventIds']
        end
      end

      # CancelIgnoreVul返回参数结构体
      class CancelIgnoreVulResponse < TencentCloud::Common::AbstractModel
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

      # ChangeRuleEventsIgnoreStatus请求参数结构体
      class ChangeRuleEventsIgnoreStatusRequest < TencentCloud::Common::AbstractModel
        # @param IgnoreStatus: 忽略状态 0:取消忽略 ； 1:忽略
        # @type IgnoreStatus: Integer
        # @param RuleIdList: 检测项id数组
        # @type RuleIdList: Array
        # @param EventIdList: 事件id数组
        # @type EventIdList: Array

        attr_accessor :IgnoreStatus, :RuleIdList, :EventIdList
        
        def initialize(ignorestatus=nil, ruleidlist=nil, eventidlist=nil)
          @IgnoreStatus = ignorestatus
          @RuleIdList = ruleidlist
          @EventIdList = eventidlist
        end

        def deserialize(params)
          @IgnoreStatus = params['IgnoreStatus']
          @RuleIdList = params['RuleIdList']
          @EventIdList = params['EventIdList']
        end
      end

      # ChangeRuleEventsIgnoreStatus返回参数结构体
      class ChangeRuleEventsIgnoreStatusResponse < TencentCloud::Common::AbstractModel
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

      # CheckBashRuleParams请求参数结构体
      class CheckBashRuleParamsRequest < TencentCloud::Common::AbstractModel
        # @param CheckField: 校验内容 Name或Rule ，两个都要校验时逗号分割
        # @type CheckField: String
        # @param EventId: 在事件列表中新增白名时需要提交事件ID
        # @type EventId: Integer
        # @param Name: 填入的规则名称
        # @type Name: String
        # @param Rule: 用户填入的正则表达式："正则表达式" 需与 "提交EventId对应的命令内容" 相匹配
        # @type Rule: String
        # @param Id: 编辑时传的规则id
        # @type Id: Integer

        attr_accessor :CheckField, :EventId, :Name, :Rule, :Id
        
        def initialize(checkfield=nil, eventid=nil, name=nil, rule=nil, id=nil)
          @CheckField = checkfield
          @EventId = eventid
          @Name = name
          @Rule = rule
          @Id = id
        end

        def deserialize(params)
          @CheckField = params['CheckField']
          @EventId = params['EventId']
          @Name = params['Name']
          @Rule = params['Rule']
          @Id = params['Id']
        end
      end

      # CheckBashRuleParams返回参数结构体
      class CheckBashRuleParamsResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 0=校验通过  1=规则名称校验不通过 2=正则表达式校验不通过
        # @type ErrCode: Integer
        # @param ErrMsg: 校验信息
        # @type ErrMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMsg, :RequestId
        
        def initialize(errcode=nil, errmsg=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMsg = errmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          @RequestId = params['RequestId']
        end
      end

      # CloseProVersion请求参数结构体
      class CloseProVersionRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 主机唯一标识Uuid数组。
        # 黑石的InstanceId，CVM的Uuid ,边缘计算的Uuid , 轻量应用服务器的Uuid ,混合云机器的Quuid 。 当前参数最大长度限制20
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
        # @param MachineType: 云主机类型：
        # CVM：虚拟主机
        # BM：裸金属
        # ECM：边缘计算主机
        # LH：轻量应用服务器
        # Other：混合云机器
        # @type MachineType: String
        # @param RegionCode: 主机地域. 示例: "ap-guangzhou"
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

      # CreateEmergencyVulScan请求参数结构体
      class CreateEmergencyVulScanRequest < TencentCloud::Common::AbstractModel
        # @param VulId: 漏洞id
        # @type VulId: Integer
        # @param Uuids: 自选服务器时生效，主机uuid的string数组
        # @type Uuids: Array

        attr_accessor :VulId, :Uuids
        
        def initialize(vulid=nil, uuids=nil)
          @VulId = vulid
          @Uuids = uuids
        end

        def deserialize(params)
          @VulId = params['VulId']
          @Uuids = params['Uuids']
        end
      end

      # CreateEmergencyVulScan返回参数结构体
      class CreateEmergencyVulScanResponse < TencentCloud::Common::AbstractModel
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

      # CreateProtectServer请求参数结构体
      class CreateProtectServerRequest < TencentCloud::Common::AbstractModel
        # @param ProtectDir: 防护目录地址
        # @type ProtectDir: String
        # @param ProtectHostConfig: 防护机器 信息
        # @type ProtectHostConfig: Array

        attr_accessor :ProtectDir, :ProtectHostConfig
        
        def initialize(protectdir=nil, protecthostconfig=nil)
          @ProtectDir = protectdir
          @ProtectHostConfig = protecthostconfig
        end

        def deserialize(params)
          @ProtectDir = params['ProtectDir']
          unless params['ProtectHostConfig'].nil?
            @ProtectHostConfig = []
            params['ProtectHostConfig'].each do |i|
              protecthostconfig_tmp = ProtectHostConfig.new
              protecthostconfig_tmp.deserialize(i)
              @ProtectHostConfig << protecthostconfig_tmp
            end
          end
        end
      end

      # CreateProtectServer返回参数结构体
      class CreateProtectServerResponse < TencentCloud::Common::AbstractModel
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

      # CreateScanMalwareSetting请求参数结构体
      class CreateScanMalwareSettingRequest < TencentCloud::Common::AbstractModel
        # @param ScanPattern: 扫描模式 0 全盘扫描, 1 快速扫描
        # @type ScanPattern: Integer
        # @param HostType: 服务器分类：1:专业版服务器；2:自选服务器
        # @type HostType: Integer
        # @param QuuidList: 自选服务器时生效，主机quuid的string数组
        # @type QuuidList: Array
        # @param TimeoutPeriod: 超时时间单位 秒 默认3600 秒
        # @type TimeoutPeriod: Integer

        attr_accessor :ScanPattern, :HostType, :QuuidList, :TimeoutPeriod
        
        def initialize(scanpattern=nil, hosttype=nil, quuidlist=nil, timeoutperiod=nil)
          @ScanPattern = scanpattern
          @HostType = hosttype
          @QuuidList = quuidlist
          @TimeoutPeriod = timeoutperiod
        end

        def deserialize(params)
          @ScanPattern = params['ScanPattern']
          @HostType = params['HostType']
          @QuuidList = params['QuuidList']
          @TimeoutPeriod = params['TimeoutPeriod']
        end
      end

      # CreateScanMalwareSetting返回参数结构体
      class CreateScanMalwareSettingResponse < TencentCloud::Common::AbstractModel
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

      # CreateSearchLog请求参数结构体
      class CreateSearchLogRequest < TencentCloud::Common::AbstractModel
        # @param SearchContent: 搜索内容
        # @type SearchContent: String

        attr_accessor :SearchContent
        
        def initialize(searchcontent=nil)
          @SearchContent = searchcontent
        end

        def deserialize(params)
          @SearchContent = params['SearchContent']
        end
      end

      # CreateSearchLog返回参数结构体
      class CreateSearchLogResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0：成功，非0：失败
        # @type Status: Integer
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

      # CreateSearchTemplate请求参数结构体
      class CreateSearchTemplateRequest < TencentCloud::Common::AbstractModel
        # @param SearchTemplate: 搜索模板
        # @type SearchTemplate: :class:`Tencentcloud::Cwp.v20180228.models.SearchTemplate`

        attr_accessor :SearchTemplate
        
        def initialize(searchtemplate=nil)
          @SearchTemplate = searchtemplate
        end

        def deserialize(params)
          unless params['SearchTemplate'].nil?
            @SearchTemplate = SearchTemplate.new
            @SearchTemplate.deserialize(params['SearchTemplate'])
          end
        end
      end

      # CreateSearchTemplate返回参数结构体
      class CreateSearchTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0：成功，非0：失败
        # @type Status: Integer
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

      # DeleteBaselineStrategy请求参数结构体
      class DeleteBaselineStrategyRequest < TencentCloud::Common::AbstractModel
        # @param StrategyId: 基线策略id
        # @type StrategyId: Integer

        attr_accessor :StrategyId
        
        def initialize(strategyid=nil)
          @StrategyId = strategyid
        end

        def deserialize(params)
          @StrategyId = params['StrategyId']
        end
      end

      # DeleteBaselineStrategy返回参数结构体
      class DeleteBaselineStrategyResponse < TencentCloud::Common::AbstractModel
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
        # @param Ids: 暴力破解事件Id数组。(最大 100条)
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
        # @param Ids: 白名单ID (最大 100 条)
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
        # @param Ids: 恶意请求记录ID数组，(最大100条)
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

      # DeleteMalwareScanTask请求参数结构体
      class DeleteMalwareScanTaskRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DeleteMalwareScanTask返回参数结构体
      class DeleteMalwareScanTaskResponse < TencentCloud::Common::AbstractModel
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
        # @param Ids: 木马记录ID数组 (最大100条)
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
        # @param DelType: 删除异地登录事件的方式，可选值："Ids"、"Ip"、"All"，默认为Ids
        # @type DelType: String
        # @param Ids: 异地登录事件ID数组。DelType为Ids或DelType未填时此项必填
        # @type Ids: Array
        # @param Ip: 异地登录事件的Ip。DelType为Ip时必填
        # @type Ip: Array
        # @param Uuid: 主机Uuid
        # @type Uuid: String

        attr_accessor :DelType, :Ids, :Ip, :Uuid
        
        def initialize(deltype=nil, ids=nil, ip=nil, uuid=nil)
          @DelType = deltype
          @Ids = ids
          @Ip = ip
          @Uuid = uuid
        end

        def deserialize(params)
          @DelType = params['DelType']
          @Ids = params['Ids']
          @Ip = params['Ip']
          @Uuid = params['Uuid']
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
        # @param Ids: ID数组. (最大100条)
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

      # DeleteProtectDir请求参数结构体
      class DeleteProtectDirRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 删除的目录ID 最大100条
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteProtectDir返回参数结构体
      class DeleteProtectDirResponse < TencentCloud::Common::AbstractModel
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
        # @param Ids: ID数组. (最大100条)
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
        # @param Ids: ID数组. (最大100条)
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

      # DeleteSearchTemplate请求参数结构体
      class DeleteSearchTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Id: 模板ID
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DeleteSearchTemplate返回参数结构体
      class DeleteSearchTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0：成功，非0：失败
        # @type Status: Integer
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

      # DeleteTags请求参数结构体
      class DeleteTagsRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 标签ID (最大100 条)
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

      # DeleteWebPageEventLog请求参数结构体
      class DeleteWebPageEventLogRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DeleteWebPageEventLog返回参数结构体
      class DeleteWebPageEventLogResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAssetInfo请求参数结构体
      class DescribeAssetInfoRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAssetInfo返回参数结构体
      class DescribeAssetInfoResponse < TencentCloud::Common::AbstractModel
        # @param MachineCount: 主机数
        # @type MachineCount: Integer
        # @param AccountCount: 账号数
        # @type AccountCount: Integer
        # @param PortCount: 端口数
        # @type PortCount: Integer
        # @param ProcessCount: 进程数
        # @type ProcessCount: Integer
        # @param SoftwareCount: 软件数
        # @type SoftwareCount: Integer
        # @param DatabaseCount: 数据库数
        # @type DatabaseCount: Integer
        # @param WebAppCount: Web应用数
        # @type WebAppCount: Integer
        # @param WebFrameCount: Web框架数
        # @type WebFrameCount: Integer
        # @param WebServiceCount: Web服务数
        # @type WebServiceCount: Integer
        # @param WebLocationCount: Web站点数
        # @type WebLocationCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MachineCount, :AccountCount, :PortCount, :ProcessCount, :SoftwareCount, :DatabaseCount, :WebAppCount, :WebFrameCount, :WebServiceCount, :WebLocationCount, :RequestId
        
        def initialize(machinecount=nil, accountcount=nil, portcount=nil, processcount=nil, softwarecount=nil, databasecount=nil, webappcount=nil, webframecount=nil, webservicecount=nil, weblocationcount=nil, requestid=nil)
          @MachineCount = machinecount
          @AccountCount = accountcount
          @PortCount = portcount
          @ProcessCount = processcount
          @SoftwareCount = softwarecount
          @DatabaseCount = databasecount
          @WebAppCount = webappcount
          @WebFrameCount = webframecount
          @WebServiceCount = webservicecount
          @WebLocationCount = weblocationcount
          @RequestId = requestid
        end

        def deserialize(params)
          @MachineCount = params['MachineCount']
          @AccountCount = params['AccountCount']
          @PortCount = params['PortCount']
          @ProcessCount = params['ProcessCount']
          @SoftwareCount = params['SoftwareCount']
          @DatabaseCount = params['DatabaseCount']
          @WebAppCount = params['WebAppCount']
          @WebFrameCount = params['WebFrameCount']
          @WebServiceCount = params['WebServiceCount']
          @WebLocationCount = params['WebLocationCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetRecentMachineInfo请求参数结构体
      class DescribeAssetRecentMachineInfoRequest < TencentCloud::Common::AbstractModel
        # @param BeginDate: 开始时间，如：2020-09-22
        # @type BeginDate: String
        # @param EndDate: 结束时间，如：2020-09-22
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

      # DescribeAssetRecentMachineInfo返回参数结构体
      class DescribeAssetRecentMachineInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalList: 总数量列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalList: Array
        # @param LiveList: 在线数量列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LiveList: Array
        # @param OfflineList: 离线数量列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineList: Array
        # @param RiskList: 风险数量列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalList, :LiveList, :OfflineList, :RiskList, :RequestId
        
        def initialize(totallist=nil, livelist=nil, offlinelist=nil, risklist=nil, requestid=nil)
          @TotalList = totallist
          @LiveList = livelist
          @OfflineList = offlinelist
          @RiskList = risklist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TotalList'].nil?
            @TotalList = []
            params['TotalList'].each do |i|
              assetkeyval_tmp = AssetKeyVal.new
              assetkeyval_tmp.deserialize(i)
              @TotalList << assetkeyval_tmp
            end
          end
          unless params['LiveList'].nil?
            @LiveList = []
            params['LiveList'].each do |i|
              assetkeyval_tmp = AssetKeyVal.new
              assetkeyval_tmp.deserialize(i)
              @LiveList << assetkeyval_tmp
            end
          end
          unless params['OfflineList'].nil?
            @OfflineList = []
            params['OfflineList'].each do |i|
              assetkeyval_tmp = AssetKeyVal.new
              assetkeyval_tmp.deserialize(i)
              @OfflineList << assetkeyval_tmp
            end
          end
          unless params['RiskList'].nil?
            @RiskList = []
            params['RiskList'].each do |i|
              assetkeyval_tmp = AssetKeyVal.new
              assetkeyval_tmp.deserialize(i)
              @RiskList << assetkeyval_tmp
            end
          end
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
        # @param Limit: 返回数量，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>HttpMethod - String - 是否必填：否 - 攻击方法(POST|GET)</li>
        # <li>DateRange - String - 是否必填：否 - 时间范围(存储最近3个月的数据)，如最近一个月["2019-11-17", "2019-12-17"]</li>
        # <li>VulType - String 威胁类型 - 是否必填: 否</li>
        # <li>SrcIp - String 攻击源IP - 是否必填: 否</li>
        # <li>DstIp - String 攻击目标IP - 是否必填: 否</li>
        # <li>SrcPort - String 攻击源端口 - 是否必填: 否</li>
        # <li>DstPort - String 攻击目标端口 - 是否必填: 否</li>
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

      # DescribeAttackVulTypeList请求参数结构体
      class DescribeAttackVulTypeListRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAttackVulTypeList返回参数结构体
      class DescribeAttackVulTypeListResponse < TencentCloud::Common::AbstractModel
        # @param List: 威胁类型列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId
        
        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @List = params['List']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBanMode请求参数结构体
      class DescribeBanModeRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBanMode返回参数结构体
      class DescribeBanModeResponse < TencentCloud::Common::AbstractModel
        # @param Mode: 阻断模式，STANDARD_MODE：标准阻断，DEEP_MODE：深度阻断
        # @type Mode: String
        # @param StandardModeConfig: 标准阻断模式的配置
        # @type StandardModeConfig: :class:`Tencentcloud::Cwp.v20180228.models.StandardModeConfig`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Mode, :StandardModeConfig, :RequestId
        
        def initialize(mode=nil, standardmodeconfig=nil, requestid=nil)
          @Mode = mode
          @StandardModeConfig = standardmodeconfig
          @RequestId = requestid
        end

        def deserialize(params)
          @Mode = params['Mode']
          unless params['StandardModeConfig'].nil?
            @StandardModeConfig = StandardModeConfig.new
            @StandardModeConfig.deserialize(params['StandardModeConfig'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBanRegions请求参数结构体
      class DescribeBanRegionsRequest < TencentCloud::Common::AbstractModel
        # @param Mode: 阻断模式，STANDARD_MODE：标准阻断，DEEP_MODE：深度阻断
        # @type Mode: String

        attr_accessor :Mode
        
        def initialize(mode=nil)
          @Mode = mode
        end

        def deserialize(params)
          @Mode = params['Mode']
        end
      end

      # DescribeBanRegions返回参数结构体
      class DescribeBanRegionsResponse < TencentCloud::Common::AbstractModel
        # @param RegionSet: 地域信息列表
        # @type RegionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegionSet, :RequestId
        
        def initialize(regionset=nil, requestid=nil)
          @RegionSet = regionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RegionSet'].nil?
            @RegionSet = []
            params['RegionSet'].each do |i|
              regionset_tmp = RegionSet.new
              regionset_tmp.deserialize(i)
              @RegionSet << regionset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBanStatus请求参数结构体
      class DescribeBanStatusRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBanStatus返回参数结构体
      class DescribeBanStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 阻断开关状态 0:关闭 1:开启
        # @type Status: Integer
        # @param ShowTips: 是否弹窗提示信息 false: 关闭，true: 开启
        # @type ShowTips: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ShowTips, :RequestId
        
        def initialize(status=nil, showtips=nil, requestid=nil)
          @Status = status
          @ShowTips = showtips
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ShowTips = params['ShowTips']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaselineBasicInfo请求参数结构体
      class DescribeBaselineBasicInfoRequest < TencentCloud::Common::AbstractModel
        # @param BaselineName: 基线名称
        # @type BaselineName: String

        attr_accessor :BaselineName
        
        def initialize(baselinename=nil)
          @BaselineName = baselinename
        end

        def deserialize(params)
          @BaselineName = params['BaselineName']
        end
      end

      # DescribeBaselineBasicInfo返回参数结构体
      class DescribeBaselineBasicInfoResponse < TencentCloud::Common::AbstractModel
        # @param BaselineBasicInfoList: 基线基础信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaselineBasicInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BaselineBasicInfoList, :RequestId
        
        def initialize(baselinebasicinfolist=nil, requestid=nil)
          @BaselineBasicInfoList = baselinebasicinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BaselineBasicInfoList'].nil?
            @BaselineBasicInfoList = []
            params['BaselineBasicInfoList'].each do |i|
              baselinebasicinfo_tmp = BaselineBasicInfo.new
              baselinebasicinfo_tmp.deserialize(i)
              @BaselineBasicInfoList << baselinebasicinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaselineDetail请求参数结构体
      class DescribeBaselineDetailRequest < TencentCloud::Common::AbstractModel
        # @param BaselineId: 基线id
        # @type BaselineId: Integer

        attr_accessor :BaselineId
        
        def initialize(baselineid=nil)
          @BaselineId = baselineid
        end

        def deserialize(params)
          @BaselineId = params['BaselineId']
        end
      end

      # DescribeBaselineDetail返回参数结构体
      class DescribeBaselineDetailResponse < TencentCloud::Common::AbstractModel
        # @param BaselineDetail: 基线详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaselineDetail: :class:`Tencentcloud::Cwp.v20180228.models.BaselineDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BaselineDetail, :RequestId
        
        def initialize(baselinedetail=nil, requestid=nil)
          @BaselineDetail = baselinedetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BaselineDetail'].nil?
            @BaselineDetail = BaselineDetail.new
            @BaselineDetail.deserialize(params['BaselineDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaselineRule请求参数结构体
      class DescribeBaselineRuleRequest < TencentCloud::Common::AbstractModel
        # @param BaselineId: 基线id
        # @type BaselineId: Integer
        # @param Limit: 分页参数 最大100条
        # @type Limit: Integer
        # @param Offset: 分页参数
        # @type Offset: Integer
        # @param Level: 危害等级
        # @type Level: Array
        # @param Status: 状态
        # @type Status: Integer
        # @param Quuid: 主机quuid
        # @type Quuid: String
        # @param Uuid: 主机uuid
        # @type Uuid: String

        attr_accessor :BaselineId, :Limit, :Offset, :Level, :Status, :Quuid, :Uuid
        
        def initialize(baselineid=nil, limit=nil, offset=nil, level=nil, status=nil, quuid=nil, uuid=nil)
          @BaselineId = baselineid
          @Limit = limit
          @Offset = offset
          @Level = level
          @Status = status
          @Quuid = quuid
          @Uuid = uuid
        end

        def deserialize(params)
          @BaselineId = params['BaselineId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Level = params['Level']
          @Status = params['Status']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
        end
      end

      # DescribeBaselineRule返回参数结构体
      class DescribeBaselineRuleResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 分页查询记录总数
        # @type TotalCount: Integer
        # @param BaselineRuleList: 基线检测项列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaselineRuleList: Array
        # @param ShowRuleRemark: 是否显示说明列：true-是，false-否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowRuleRemark: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BaselineRuleList, :ShowRuleRemark, :RequestId
        
        def initialize(totalcount=nil, baselinerulelist=nil, showruleremark=nil, requestid=nil)
          @TotalCount = totalcount
          @BaselineRuleList = baselinerulelist
          @ShowRuleRemark = showruleremark
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BaselineRuleList'].nil?
            @BaselineRuleList = []
            params['BaselineRuleList'].each do |i|
              baselineruleinfo_tmp = BaselineRuleInfo.new
              baselineruleinfo_tmp.deserialize(i)
              @BaselineRuleList << baselineruleinfo_tmp
            end
          end
          @ShowRuleRemark = params['ShowRuleRemark']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaselineScanSchedule请求参数结构体
      class DescribeBaselineScanScheduleRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: Integer

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeBaselineScanSchedule返回参数结构体
      class DescribeBaselineScanScheduleResponse < TencentCloud::Common::AbstractModel
        # @param Schedule: 检测进度(百分比)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Schedule: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Schedule, :RequestId
        
        def initialize(schedule=nil, requestid=nil)
          @Schedule = schedule
          @RequestId = requestid
        end

        def deserialize(params)
          @Schedule = params['Schedule']
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
        # @param Limit: 返回数量，最大值为100。
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

      # DescribeBruteAttackList请求参数结构体
      class DescribeBruteAttackListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>Uuid - String - 是否必填：否 - 云镜唯一Uuid</li>
        # <li>Status - String - 是否必填：否 - 状态筛选：失败：FAILED 成功：SUCCESS</li>
        # <li>UserName - String - 是否必填：否 - UserName筛选</li>
        # <li>SrcIp - String - 是否必填：否 - 来源ip筛选</li>
        # <li>CreateBeginTime - String - 是否必填：否 - 首次攻击时间筛选，开始时间</li>
        # <li>CreateEndTime - String - 是否必填：否 - 首次攻击时间筛选，结束时间</li>
        # <li>ModifyBeginTime - String - 是否必填：否 - 最近攻击时间筛选，开始时间</li>
        # <li>ModifyEndTime - String - 是否必填：否 - 最近攻击时间筛选，结束时间</li>
        # <li>Banned - String - 是否必填：否 - 阻断状态筛选，多个用","分割：0-未阻断（全局ZK开关关闭），82-未阻断(非专业版)，83-未阻断(已加白名单)，1-已阻断，2-未阻断-程序异常，3-未阻断-内网攻击暂不支持阻断，4-未阻断-安平暂不支持阻断</li>
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

      # DescribeBruteAttackList返回参数结构体
      class DescribeBruteAttackListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param BruteAttackList: 密码破解列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BruteAttackList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BruteAttackList, :RequestId
        
        def initialize(totalcount=nil, bruteattacklist=nil, requestid=nil)
          @TotalCount = totalcount
          @BruteAttackList = bruteattacklist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BruteAttackList'].nil?
            @BruteAttackList = []
            params['BruteAttackList'].each do |i|
              bruteattackinfo_tmp = BruteAttackInfo.new
              bruteattackinfo_tmp.deserialize(i)
              @BruteAttackList << bruteattackinfo_tmp
            end
          end
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

      # DescribeESAggregations请求参数结构体
      class DescribeESAggregationsRequest < TencentCloud::Common::AbstractModel
        # @param Query: ES聚合条件JSON
        # @type Query: String

        attr_accessor :Query
        
        def initialize(query=nil)
          @Query = query
        end

        def deserialize(params)
          @Query = params['Query']
        end
      end

      # DescribeESAggregations返回参数结构体
      class DescribeESAggregationsResponse < TencentCloud::Common::AbstractModel
        # @param Data: ES聚合结果JSON
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeESHits请求参数结构体
      class DescribeESHitsRequest < TencentCloud::Common::AbstractModel
        # @param Query: ES查询条件JSON
        # @type Query: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，最大值为100。
        # @type Limit: Integer

        attr_accessor :Query, :Offset, :Limit
        
        def initialize(query=nil, offset=nil, limit=nil)
          @Query = query
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Query = params['Query']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeESHits返回参数结构体
      class DescribeESHitsResponse < TencentCloud::Common::AbstractModel
        # @param Data: ES查询结果JSON
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEmergencyVulList请求参数结构体
      class DescribeEmergencyVulListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Status - String - 是否必填：是 - 漏洞状态筛选，0//未检测 1有风险 ，2无风险 ，3 检查中展示progress</li>
        # <li>Level - String - 是否必填：否 - 漏洞等级筛选 1:低 2:中 3:高 4:提示</li>
        # <li>VulName- String - 是否必填：否 - 漏洞名称搜索</li>
        # <li>Uuids- String - 是否必填：否 - 主机uuid</li>
        # @type Filters: Array
        # @param Order: 排序方式 desc , asc
        # @type Order: String
        # @param By: 排序字段 PublishDate
        # @type By: String

        attr_accessor :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeEmergencyVulList返回参数结构体
      class DescribeEmergencyVulListResponse < TencentCloud::Common::AbstractModel
        # @param List: 漏洞列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param TotalCount: 漏洞总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ExistsRisk: 是否存在风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExistsRisk: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :TotalCount, :ExistsRisk, :RequestId
        
        def initialize(list=nil, totalcount=nil, existsrisk=nil, requestid=nil)
          @List = list
          @TotalCount = totalcount
          @ExistsRisk = existsrisk
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              emergencyvul_tmp = EmergencyVul.new
              emergencyvul_tmp.deserialize(i)
              @List << emergencyvul_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @ExistsRisk = params['ExistsRisk']
          @RequestId = params['RequestId']
        end
      end

      # DescribeExportMachines请求参数结构体
      class DescribeExportMachinesRequest < TencentCloud::Common::AbstractModel
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
        # @param ProjectIds: 机器所属业务ID列表
        # @type ProjectIds: Array

        attr_accessor :MachineType, :MachineRegion, :Limit, :Offset, :Filters, :ProjectIds
        
        def initialize(machinetype=nil, machineregion=nil, limit=nil, offset=nil, filters=nil, projectids=nil)
          @MachineType = machinetype
          @MachineRegion = machineregion
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @ProjectIds = projectids
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
          @ProjectIds = params['ProjectIds']
        end
      end

      # DescribeExportMachines返回参数结构体
      class DescribeExportMachinesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeGeneralStat请求参数结构体
      class DescribeGeneralStatRequest < TencentCloud::Common::AbstractModel
        # @param MachineType: 云主机类型。
        # <li>CVM：表示腾讯云服务器</li>
        # <li>BM:  表示黑石物理机</li>
        # <li>ECM:  表示边缘计算服务器</li>
        # <li>LH:  表示轻量应用服务器</li>
        # <li>Other:  表示混合云机器</li>
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

      # DescribeGeneralStat返回参数结构体
      class DescribeGeneralStatResponse < TencentCloud::Common::AbstractModel
        # @param MachinesAll: 云主机总数
        # @type MachinesAll: Integer
        # @param MachinesUninstalled: 云主机没有安装主机安全客户端的总数
        # @type MachinesUninstalled: Integer
        # @param AgentsAll: 主机安全客户端总数的总数
        # @type AgentsAll: Integer
        # @param AgentsOnline: 主机安全客户端在线的总数
        # @type AgentsOnline: Integer
        # @param AgentsOffline: 主机安全客户端 离线+关机 的总数
        # @type AgentsOffline: Integer
        # @param AgentsPro: 主机安全客户端专业版的总数
        # @type AgentsPro: Integer
        # @param AgentsBasic: 主机安全客户端基础版的总数
        # @type AgentsBasic: Integer
        # @param AgentsProExpireWithInSevenDays: 7天内到期的预付费专业版总数
        # @type AgentsProExpireWithInSevenDays: Integer
        # @param RiskMachine: 风险主机总数
        # @type RiskMachine: Integer
        # @param Shutdown: 已关机总数
        # @type Shutdown: Integer
        # @param Offline: 已离线总数
        # @type Offline: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MachinesAll, :MachinesUninstalled, :AgentsAll, :AgentsOnline, :AgentsOffline, :AgentsPro, :AgentsBasic, :AgentsProExpireWithInSevenDays, :RiskMachine, :Shutdown, :Offline, :RequestId
        
        def initialize(machinesall=nil, machinesuninstalled=nil, agentsall=nil, agentsonline=nil, agentsoffline=nil, agentspro=nil, agentsbasic=nil, agentsproexpirewithinsevendays=nil, riskmachine=nil, shutdown=nil, offline=nil, requestid=nil)
          @MachinesAll = machinesall
          @MachinesUninstalled = machinesuninstalled
          @AgentsAll = agentsall
          @AgentsOnline = agentsonline
          @AgentsOffline = agentsoffline
          @AgentsPro = agentspro
          @AgentsBasic = agentsbasic
          @AgentsProExpireWithInSevenDays = agentsproexpirewithinsevendays
          @RiskMachine = riskmachine
          @Shutdown = shutdown
          @Offline = offline
          @RequestId = requestid
        end

        def deserialize(params)
          @MachinesAll = params['MachinesAll']
          @MachinesUninstalled = params['MachinesUninstalled']
          @AgentsAll = params['AgentsAll']
          @AgentsOnline = params['AgentsOnline']
          @AgentsOffline = params['AgentsOffline']
          @AgentsPro = params['AgentsPro']
          @AgentsBasic = params['AgentsBasic']
          @AgentsProExpireWithInSevenDays = params['AgentsProExpireWithInSevenDays']
          @RiskMachine = params['RiskMachine']
          @Shutdown = params['Shutdown']
          @Offline = params['Offline']
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

      # DescribeHistoryService请求参数结构体
      class DescribeHistoryServiceRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeHistoryService返回参数结构体
      class DescribeHistoryServiceResponse < TencentCloud::Common::AbstractModel
        # @param BuyStatus: 1 可购买 2 只能升降配 3 只能跳到续费管理页
        # @type BuyStatus: Integer
        # @param InquireNum: 用户已购容量 单位 G
        # @type InquireNum: Integer
        # @param EndTime: 到期时间
        # @type EndTime: String
        # @param IsAutoOpenRenew: 是否自动续费,0 初始值, 1 开通 2 没开通
        # @type IsAutoOpenRenew: Integer
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param Status: 0 没开通 1 正常 2隔离 3销毁
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BuyStatus, :InquireNum, :EndTime, :IsAutoOpenRenew, :ResourceId, :Status, :RequestId
        
        def initialize(buystatus=nil, inquirenum=nil, endtime=nil, isautoopenrenew=nil, resourceid=nil, status=nil, requestid=nil)
          @BuyStatus = buystatus
          @InquireNum = inquirenum
          @EndTime = endtime
          @IsAutoOpenRenew = isautoopenrenew
          @ResourceId = resourceid
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @BuyStatus = params['BuyStatus']
          @InquireNum = params['InquireNum']
          @EndTime = params['EndTime']
          @IsAutoOpenRenew = params['IsAutoOpenRenew']
          @ResourceId = params['ResourceId']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostLoginList请求参数结构体
      class DescribeHostLoginListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>Uuid - String - 是否必填：否 - 云镜唯一Uuid</li>
        # <li>UserName - String - 是否必填：否 - 用户名筛选</li>
        # <li>LoginTimeBegin - String - 是否必填：否 - 按照修改时间段筛选，开始时间</li>
        # <li>LoginTimeEnd - String - 是否必填：否 - 按照修改时间段筛选，结束时间</li>
        # <li>SrcIp - String - 是否必填：否 - 来源ip筛选</li>
        # <li>Status - int - 是否必填：否 - 状态筛选1:正常登录；5：已加白</li>
        # <li>RiskLevel - int - 是否必填：否 - 状态筛选0:高危；1：可疑</li>
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

      # DescribeHostLoginList返回参数结构体
      class DescribeHostLoginListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param HostLoginList: 登录审计列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostLoginList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :HostLoginList, :RequestId
        
        def initialize(totalcount=nil, hostloginlist=nil, requestid=nil)
          @TotalCount = totalcount
          @HostLoginList = hostloginlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['HostLoginList'].nil?
            @HostLoginList = []
            params['HostLoginList'].each do |i|
              hostloginlist_tmp = HostLoginList.new
              hostloginlist_tmp.deserialize(i)
              @HostLoginList << hostloginlist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIgnoreBaselineRule请求参数结构体
      class DescribeIgnoreBaselineRuleRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页参数 最大100条
        # @type Limit: Integer
        # @param Offset: 分页参数
        # @type Offset: Integer
        # @param RuleName: 检测项名称
        # @type RuleName: String

        attr_accessor :Limit, :Offset, :RuleName
        
        def initialize(limit=nil, offset=nil, rulename=nil)
          @Limit = limit
          @Offset = offset
          @RuleName = rulename
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @RuleName = params['RuleName']
        end
      end

      # DescribeIgnoreBaselineRule返回参数结构体
      class DescribeIgnoreBaselineRuleResponse < TencentCloud::Common::AbstractModel
        # @param IgnoreBaselineRuleList: 忽略基线检测项列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreBaselineRuleList: Array
        # @param TotalCount: 分页查询记录总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IgnoreBaselineRuleList, :TotalCount, :RequestId
        
        def initialize(ignorebaselinerulelist=nil, totalcount=nil, requestid=nil)
          @IgnoreBaselineRuleList = ignorebaselinerulelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IgnoreBaselineRuleList'].nil?
            @IgnoreBaselineRuleList = []
            params['IgnoreBaselineRuleList'].each do |i|
              ignorebaselinerule_tmp = IgnoreBaselineRule.new
              ignorebaselinerule_tmp.deserialize(i)
              @IgnoreBaselineRuleList << ignorebaselinerule_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImportMachineInfo请求参数结构体
      class DescribeImportMachineInfoRequest < TencentCloud::Common::AbstractModel
        # @param MachineList: 服务器内网IP（默认）/ 服务器名称 / 服务器ID 数组 (最大 1000条)
        # @type MachineList: Array
        # @param ImportType: 批量导入的数据类型：Ip、Name、Id 三选一
        # @type ImportType: String
        # @param IsQueryProMachine: 是否仅支持专业版机器的查询（true：仅专业版   false：专业版+基础版）
        # @type IsQueryProMachine: Boolean

        attr_accessor :MachineList, :ImportType, :IsQueryProMachine
        
        def initialize(machinelist=nil, importtype=nil, isquerypromachine=nil)
          @MachineList = machinelist
          @ImportType = importtype
          @IsQueryProMachine = isquerypromachine
        end

        def deserialize(params)
          @MachineList = params['MachineList']
          @ImportType = params['ImportType']
          @IsQueryProMachine = params['IsQueryProMachine']
        end
      end

      # DescribeImportMachineInfo返回参数结构体
      class DescribeImportMachineInfoResponse < TencentCloud::Common::AbstractModel
        # @param EffectiveMachineInfoList: 有效的机器信息列表：机器名称、机器公网/内网ip、机器标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EffectiveMachineInfoList: Array
        # @param InvalidMachineList: 用户批量导入失败的机器列表（比如机器不存在等...）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvalidMachineList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EffectiveMachineInfoList, :InvalidMachineList, :RequestId
        
        def initialize(effectivemachineinfolist=nil, invalidmachinelist=nil, requestid=nil)
          @EffectiveMachineInfoList = effectivemachineinfolist
          @InvalidMachineList = invalidmachinelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EffectiveMachineInfoList'].nil?
            @EffectiveMachineInfoList = []
            params['EffectiveMachineInfoList'].each do |i|
              effectivemachineinfo_tmp = EffectiveMachineInfo.new
              effectivemachineinfo_tmp.deserialize(i)
              @EffectiveMachineInfoList << effectivemachineinfo_tmp
            end
          end
          @InvalidMachineList = params['InvalidMachineList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIndexList请求参数结构体
      class DescribeIndexListRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeIndexList返回参数结构体
      class DescribeIndexListResponse < TencentCloud::Common::AbstractModel
        # @param Data: ES 索引信息
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogStorageStatistic请求参数结构体
      class DescribeLogStorageStatisticRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLogStorageStatistic返回参数结构体
      class DescribeLogStorageStatisticResponse < TencentCloud::Common::AbstractModel
        # @param TotalSize: 总容量（单位：GB）
        # @type TotalSize: Integer
        # @param UsedSize: 已使用容量（单位：GB）
        # @type UsedSize: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalSize, :UsedSize, :RequestId
        
        def initialize(totalsize=nil, usedsize=nil, requestid=nil)
          @TotalSize = totalsize
          @UsedSize = usedsize
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalSize = params['TotalSize']
          @UsedSize = params['UsedSize']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoginWhiteCombinedList请求参数结构体
      class DescribeLoginWhiteCombinedListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>UserName - String - 是否必填：否 - 用户名筛选</li>
        # <li>ModifyBeginTime - String - 是否必填：否 - 按照修改时间段筛选，开始时间</li>
        # <li>ModifyEndTime - String - 是否必填：否 - 按照修改时间段筛选，结束时间</li>
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

      # DescribeLoginWhiteCombinedList返回参数结构体
      class DescribeLoginWhiteCombinedListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param LoginWhiteCombinedInfos: 合并后的白名单列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoginWhiteCombinedInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :LoginWhiteCombinedInfos, :RequestId
        
        def initialize(totalcount=nil, loginwhitecombinedinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @LoginWhiteCombinedInfos = loginwhitecombinedinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LoginWhiteCombinedInfos'].nil?
            @LoginWhiteCombinedInfos = []
            params['LoginWhiteCombinedInfos'].each do |i|
              loginwhitecombinedinfo_tmp = LoginWhiteCombinedInfo.new
              loginwhitecombinedinfo_tmp.deserialize(i)
              @LoginWhiteCombinedInfos << loginwhitecombinedinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoginWhiteList请求参数结构体
      class DescribeLoginWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 查询关键字 </li>
        # <li>UserName - String - 是否必填：否 - 用户名筛选 </li>
        # <li>ModifyBeginTime - String - 是否必填：否 - 按照修改时间段筛选，开始时间 </li>
        # <li>ModifyEndTime - String - 是否必填：否 - 按照修改时间段筛选，结束时间 </li>
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
        # @param Quuid: Quuid , Uuid 必填一项
        # @type Quuid: String

        attr_accessor :Uuid, :Quuid
        
        def initialize(uuid=nil, quuid=nil)
          @Uuid = uuid
          @Quuid = quuid
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
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
        # <li>CVM: 腾讯云服务器</li>
        # <li>BM: 黑石物理机</li>
        # <li>ECM: 边缘计算服务器</li>
        # <li>LH: 轻量应用服务器</li>
        # <li>Other: 混合云机器</li>
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
        # @param AgentVersion: agent版本号
        # @type AgentVersion: String
        # @param ProVersionDeadline: 专业版到期时间(仅预付费)
        # @type ProVersionDeadline: String
        # @param HasAssetScan: 是否有资产扫描记录，0无，1有
        # @type HasAssetScan: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MachineIp, :ProtectDays, :MachineOs, :MachineName, :MachineStatus, :InstanceId, :MachineWanIp, :Quuid, :Uuid, :IsProVersion, :ProVersionOpenDate, :MachineType, :MachineRegion, :PayMode, :FreeMalwaresLeft, :FreeVulsLeft, :AgentVersion, :ProVersionDeadline, :HasAssetScan, :RequestId
        
        def initialize(machineip=nil, protectdays=nil, machineos=nil, machinename=nil, machinestatus=nil, instanceid=nil, machinewanip=nil, quuid=nil, uuid=nil, isproversion=nil, proversionopendate=nil, machinetype=nil, machineregion=nil, paymode=nil, freemalwaresleft=nil, freevulsleft=nil, agentversion=nil, proversiondeadline=nil, hasassetscan=nil, requestid=nil)
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
          @AgentVersion = agentversion
          @ProVersionDeadline = proversiondeadline
          @HasAssetScan = hasassetscan
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
          @AgentVersion = params['AgentVersion']
          @ProVersionDeadline = params['ProVersionDeadline']
          @HasAssetScan = params['HasAssetScan']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMachineList请求参数结构体
      class DescribeMachineListRequest < TencentCloud::Common::AbstractModel
        # @param MachineType: 云主机类型。
        # <li>CVM：表示虚拟主机</li>
        # <li>BM:  表示黑石物理机</li>
        # <li>ECM:  表示边缘计算服务器</li>
        # <li>LH:  表示轻量应用服务器</li>
        # <li>Other:  表示混合云机器</li>
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
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
        end
      end

      # DescribeMachineList返回参数结构体
      class DescribeMachineListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeMachineOsList请求参数结构体
      class DescribeMachineOsListRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeMachineOsList返回参数结构体
      class DescribeMachineOsListResponse < TencentCloud::Common::AbstractModel
        # @param List: 操作系统列表
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
              osname_tmp = OsName.new
              osname_tmp.deserialize(i)
              @List << osname_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMachineRegions请求参数结构体
      class DescribeMachineRegionsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeMachineRegions返回参数结构体
      class DescribeMachineRegionsResponse < TencentCloud::Common::AbstractModel
        # @param CVM: CVM 云服务器地域列表
        # @type CVM: Array
        # @param BM: BM 黑石机器地域列表
        # @type BM: Array
        # @param LH: LH 轻量应用服务器地域列表
        # @type LH: Array
        # @param ECM: ECM 边缘计算服务器地域列表
        # @type ECM: Array
        # @param Other: Other 混合云地域列表
        # @type Other: Array
        # @param ALL: 所有地域列表(包含以上所有地域)
        # @type ALL: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CVM, :BM, :LH, :ECM, :Other, :ALL, :RequestId
        
        def initialize(cvm=nil, bm=nil, lh=nil, ecm=nil, other=nil, all=nil, requestid=nil)
          @CVM = cvm
          @BM = bm
          @LH = lh
          @ECM = ecm
          @Other = other
          @ALL = all
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CVM'].nil?
            @CVM = []
            params['CVM'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @CVM << regioninfo_tmp
            end
          end
          unless params['BM'].nil?
            @BM = []
            params['BM'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @BM << regioninfo_tmp
            end
          end
          unless params['LH'].nil?
            @LH = []
            params['LH'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @LH << regioninfo_tmp
            end
          end
          unless params['ECM'].nil?
            @ECM = []
            params['ECM'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @ECM << regioninfo_tmp
            end
          end
          unless params['Other'].nil?
            @Other = []
            params['Other'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @Other << regioninfo_tmp
            end
          end
          unless params['ALL'].nil?
            @ALL = []
            params['ALL'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @ALL << regioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMachines请求参数结构体
      class DescribeMachinesRequest < TencentCloud::Common::AbstractModel
        # @param MachineType: 机器所属专区类型
        # CVM 云服务器
        # BM 黑石
        # ECM 边缘计算
        # LH 轻量应用服务器
        # Other 混合云专区
        # @type MachineType: String
        # @param MachineRegion: 机器所属地域。如：ap-guangzhou，ap-shanghai
        # @type MachineRegion: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 查询关键字 </li>
        # <li>Status - String - 是否必填：否 - 客户端在线状态（OFFLINE: 离线/关机 | ONLINE: 在线 | UNINSTALLED：未安装 | AGENT_OFFLINE 离线| AGENT_SHUTDOWN 已关机）</li>
        # <li>Version - String  是否必填：否 - 当前防护版本（ PRO_VERSION：专业版 | BASIC_VERSION：基础版）</li>
        # <li>Risk - String 是否必填: 否 - 风险主机( yes ) </li>
        # <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )
        # 每个过滤条件只支持一个值，暂不支持多个值“或”关系查询
        # @type Filters: Array
        # @param ProjectIds: 机器所属业务ID列表
        # @type ProjectIds: Array

        attr_accessor :MachineType, :MachineRegion, :Limit, :Offset, :Filters, :ProjectIds
        
        def initialize(machinetype=nil, machineregion=nil, limit=nil, offset=nil, filters=nil, projectids=nil)
          @MachineType = machinetype
          @MachineRegion = machineregion
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @ProjectIds = projectids
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
          @ProjectIds = params['ProjectIds']
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

      # DescribeMalWareList请求参数结构体
      class DescribeMalWareListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>FilePath - String - 是否必填：否 - 路径筛选</li>
        # <li>VirusName - String - 是否必填：否 - 描述筛选</li>
        # <li>CreateBeginTime - String - 是否必填：否 - 创建时间筛选-开始时间</li>
        # <li>CreateEndTime - String - 是否必填：否 - 创建时间筛选-结束时间</li>
        # <li>Status - String - 是否必填：否 - 状态筛选 4待处理,5信任沃尔玛可哦啊吗,6已隔离,10隔离中,11恢复隔离中</li>
        # @type Filters: Array
        # @param By: 检测排序 CreateTime
        # @type By: String
        # @param Order: 排序方式 ASC,DESC
        # @type Order: String

        attr_accessor :Limit, :Offset, :Filters, :By, :Order
        
        def initialize(limit=nil, offset=nil, filters=nil, by=nil, order=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @By = by
          @Order = order
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
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeMalWareList返回参数结构体
      class DescribeMalWareListResponse < TencentCloud::Common::AbstractModel
        # @param MalWareList: 木马列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MalWareList: Array
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MalWareList, :TotalCount, :RequestId
        
        def initialize(malwarelist=nil, totalcount=nil, requestid=nil)
          @MalWareList = malwarelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MalWareList'].nil?
            @MalWareList = []
            params['MalWareList'].each do |i|
              malwarelist_tmp = MalWareList.new
              malwarelist_tmp.deserialize(i)
              @MalWareList << malwarelist_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMalwareFile请求参数结构体
      class DescribeMalwareFileRequest < TencentCloud::Common::AbstractModel
        # @param Id: 木马记录ID
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeMalwareFile返回参数结构体
      class DescribeMalwareFileResponse < TencentCloud::Common::AbstractModel
        # @param FileUrl: 木马文件下载地址
        # @type FileUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileUrl, :RequestId
        
        def initialize(fileurl=nil, requestid=nil)
          @FileUrl = fileurl
          @RequestId = requestid
        end

        def deserialize(params)
          @FileUrl = params['FileUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMalwareInfo请求参数结构体
      class DescribeMalwareInfoRequest < TencentCloud::Common::AbstractModel
        # @param Id: 唯一ID
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeMalwareInfo返回参数结构体
      class DescribeMalwareInfoResponse < TencentCloud::Common::AbstractModel
        # @param MalwareInfo: 恶意文件详情信息
        # @type MalwareInfo: :class:`Tencentcloud::Cwp.v20180228.models.MalwareInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MalwareInfo, :RequestId
        
        def initialize(malwareinfo=nil, requestid=nil)
          @MalwareInfo = malwareinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MalwareInfo'].nil?
            @MalwareInfo = MalwareInfo.new
            @MalwareInfo.deserialize(params['MalwareInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMalwareRiskWarning请求参数结构体
      class DescribeMalwareRiskWarningRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeMalwareRiskWarning返回参数结构体
      class DescribeMalwareRiskWarningResponse < TencentCloud::Common::AbstractModel
        # @param IsCheckRisk: 是否开启自动扫描：true-开启，false-未开启
        # @type IsCheckRisk: Boolean
        # @param List: 风险文件列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param IsPop: 是否弹出提示 true 弹出, false不弹
        # @type IsPop: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsCheckRisk, :List, :IsPop, :RequestId
        
        def initialize(ischeckrisk=nil, list=nil, ispop=nil, requestid=nil)
          @IsCheckRisk = ischeckrisk
          @List = list
          @IsPop = ispop
          @RequestId = requestid
        end

        def deserialize(params)
          @IsCheckRisk = params['IsCheckRisk']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              malwarerisk_tmp = MalwareRisk.new
              malwarerisk_tmp.deserialize(i)
              @List << malwarerisk_tmp
            end
          end
          @IsPop = params['IsPop']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMalwareTimingScanSetting请求参数结构体
      class DescribeMalwareTimingScanSettingRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeMalwareTimingScanSetting返回参数结构体
      class DescribeMalwareTimingScanSettingResponse < TencentCloud::Common::AbstractModel
        # @param CheckPattern: 检测模式 0 全盘检测  1快速检测
        # @type CheckPattern: Integer
        # @param StartTime: 检测周期 开始时间
        # @type StartTime: String
        # @param EndTime: 检测周期 超时结束时间
        # @type EndTime: String
        # @param IsGlobal: 是否全部服务器 1 全部 2 自选
        # @type IsGlobal: Integer
        # @param QuuidList: 自选服务器时必须 主机quuid的string数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuuidList: Array
        # @param MonitoringPattern: 监控模式 0 标准 1深度
        # @type MonitoringPattern: Integer
        # @param Cycle: 周期 1每天
        # @type Cycle: Integer
        # @param EnableScan: 定时检测开关 0 关闭1 开启
        # @type EnableScan: Integer
        # @param Id: 唯一ID
        # @type Id: Integer
        # @param RealTimeMonitoring: 实时监控0 关闭 1开启
        # @type RealTimeMonitoring: Integer
        # @param AutoIsolation: 是否自动隔离：1-是，0-否
        # @type AutoIsolation: Integer
        # @param ClickTimeout: 一键扫描超时时长，如：1800秒（s）
        # @type ClickTimeout: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CheckPattern, :StartTime, :EndTime, :IsGlobal, :QuuidList, :MonitoringPattern, :Cycle, :EnableScan, :Id, :RealTimeMonitoring, :AutoIsolation, :ClickTimeout, :RequestId
        
        def initialize(checkpattern=nil, starttime=nil, endtime=nil, isglobal=nil, quuidlist=nil, monitoringpattern=nil, cycle=nil, enablescan=nil, id=nil, realtimemonitoring=nil, autoisolation=nil, clicktimeout=nil, requestid=nil)
          @CheckPattern = checkpattern
          @StartTime = starttime
          @EndTime = endtime
          @IsGlobal = isglobal
          @QuuidList = quuidlist
          @MonitoringPattern = monitoringpattern
          @Cycle = cycle
          @EnableScan = enablescan
          @Id = id
          @RealTimeMonitoring = realtimemonitoring
          @AutoIsolation = autoisolation
          @ClickTimeout = clicktimeout
          @RequestId = requestid
        end

        def deserialize(params)
          @CheckPattern = params['CheckPattern']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IsGlobal = params['IsGlobal']
          @QuuidList = params['QuuidList']
          @MonitoringPattern = params['MonitoringPattern']
          @Cycle = params['Cycle']
          @EnableScan = params['EnableScan']
          @Id = params['Id']
          @RealTimeMonitoring = params['RealTimeMonitoring']
          @AutoIsolation = params['AutoIsolation']
          @ClickTimeout = params['ClickTimeout']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMonthInspectionReport请求参数结构体
      class DescribeMonthInspectionReportRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页步长
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

      # DescribeMonthInspectionReport返回参数结构体
      class DescribeMonthInspectionReportResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param List: 巡检报告列表
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
              monthinspectionreport_tmp = MonthInspectionReport.new
              monthinspectionreport_tmp.deserialize(i)
              @List << monthinspectionreport_tmp
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
        # @param Limit: 返回数量，最大值为100。
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
        # @param Limit: 返回数量，最大值为100。
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

      # DescribeProVersionStatus请求参数结构体
      class DescribeProVersionStatusRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端UUID、填写"all"表示所有主机。
        # @type Uuid: String

        attr_accessor :Uuid
        
        def initialize(uuid=nil)
          @Uuid = uuid
        end

        def deserialize(params)
          @Uuid = params['Uuid']
        end
      end

      # DescribeProVersionStatus返回参数结构体
      class DescribeProVersionStatusResponse < TencentCloud::Common::AbstractModel
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

      # DescribeProtectDirList请求参数结构体
      class DescribeProtectDirListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页条数 最大100条
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Filters: DirName 网站名称
        # DirPath 网站防护目录地址
        # @type Filters: Array
        # @param Order: asc：升序/desc：降序
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeProtectDirList返回参数结构体
      class DescribeProtectDirListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param List: 防护目录列表信息
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
              protectdirinfo_tmp = ProtectDirInfo.new
              protectdirinfo_tmp.deserialize(i)
              @List << protectdirinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProtectDirRelatedServer请求参数结构体
      class DescribeProtectDirRelatedServerRequest < TencentCloud::Common::AbstractModel
        # @param Id: 唯一ID
        # @type Id: String
        # @param Limit: 分页条数 最大100条
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Filters: 过滤参数 ProtectStatus
        # @type Filters: Array
        # @param Order: 排序方式
        # @type Order: String
        # @param By: 排序值
        # @type By: String

        attr_accessor :Id, :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(id=nil, limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @Id = id
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Id = params['Id']
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
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeProtectDirRelatedServer返回参数结构体
      class DescribeProtectDirRelatedServerResponse < TencentCloud::Common::AbstractModel
        # @param List: 网站关联服务器列表信息
        # @type List: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param ProtectServerCount: 已开启防护总数
        # @type ProtectServerCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :TotalCount, :ProtectServerCount, :RequestId
        
        def initialize(list=nil, totalcount=nil, protectservercount=nil, requestid=nil)
          @List = list
          @TotalCount = totalcount
          @ProtectServerCount = protectservercount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              protectdirrelatedserver_tmp = ProtectDirRelatedServer.new
              protectdirrelatedserver_tmp.deserialize(i)
              @List << protectdirrelatedserver_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @ProtectServerCount = params['ProtectServerCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReverseShellEvents请求参数结构体
      class DescribeReverseShellEventsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，最大值为100。
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

      # DescribeRiskDnsList请求参数结构体
      class DescribeRiskDnsListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>Url - String - 是否必填：否 - Url筛选</li>
        # <li>Status - String - 是否必填：否 - 状态筛选0:待处理；2:信任；3:不信任</li>
        # <li>MergeBeginTime - String - 是否必填：否 - 最近访问开始时间</li>
        # <li>MergeEndTime - String - 是否必填：否 - 最近访问结束时间</li>
        # @type Filters: Array
        # @param Order: 排序方式：根据请求次数排序：asc-升序/desc-降序
        # @type Order: String
        # @param By: 排序字段：AccessCount-请求次数
        # @type By: String

        attr_accessor :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
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
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeRiskDnsList返回参数结构体
      class DescribeRiskDnsListResponse < TencentCloud::Common::AbstractModel
        # @param RiskDnsList: 恶意请求列表数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskDnsList: Array
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RiskDnsList, :TotalCount, :RequestId
        
        def initialize(riskdnslist=nil, totalcount=nil, requestid=nil)
          @RiskDnsList = riskdnslist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RiskDnsList'].nil?
            @RiskDnsList = []
            params['RiskDnsList'].each do |i|
              riskdnslist_tmp = RiskDnsList.new
              riskdnslist_tmp.deserialize(i)
              @RiskDnsList << riskdnslist_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSaveOrUpdateWarnings请求参数结构体
      class DescribeSaveOrUpdateWarningsRequest < TencentCloud::Common::AbstractModel
        # @param WarningObjects: 告警设置的修改内容
        # @type WarningObjects: Array

        attr_accessor :WarningObjects
        
        def initialize(warningobjects=nil)
          @WarningObjects = warningobjects
        end

        def deserialize(params)
          unless params['WarningObjects'].nil?
            @WarningObjects = []
            params['WarningObjects'].each do |i|
              warningobject_tmp = WarningObject.new
              warningobject_tmp.deserialize(i)
              @WarningObjects << warningobject_tmp
            end
          end
        end
      end

      # DescribeSaveOrUpdateWarnings返回参数结构体
      class DescribeSaveOrUpdateWarningsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeScanMalwareSchedule请求参数结构体
      class DescribeScanMalwareScheduleRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeScanMalwareSchedule返回参数结构体
      class DescribeScanMalwareScheduleResponse < TencentCloud::Common::AbstractModel
        # @param Schedule: 扫描进度（单位：%）
        # @type Schedule: Integer
        # @param RiskFileNumber: 风险文件数,当进度满了以后才有该值
        # @type RiskFileNumber: Integer
        # @param IsSchedule: 是否正在扫描中
        # @type IsSchedule: Boolean
        # @param ScanStatus: 0 从未扫描过、 1 扫描中、 2扫描完成、 3停止中、 4停止完成
        # @type ScanStatus: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Schedule, :RiskFileNumber, :IsSchedule, :ScanStatus, :RequestId
        
        def initialize(schedule=nil, riskfilenumber=nil, isschedule=nil, scanstatus=nil, requestid=nil)
          @Schedule = schedule
          @RiskFileNumber = riskfilenumber
          @IsSchedule = isschedule
          @ScanStatus = scanstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @Schedule = params['Schedule']
          @RiskFileNumber = params['RiskFileNumber']
          @IsSchedule = params['IsSchedule']
          @ScanStatus = params['ScanStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanSchedule请求参数结构体
      class DescribeScanScheduleRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: Integer

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeScanSchedule返回参数结构体
      class DescribeScanScheduleResponse < TencentCloud::Common::AbstractModel
        # @param Schedule: 检测进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Schedule: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Schedule, :RequestId
        
        def initialize(schedule=nil, requestid=nil)
          @Schedule = schedule
          @RequestId = requestid
        end

        def deserialize(params)
          @Schedule = params['Schedule']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanState请求参数结构体
      class DescribeScanStateRequest < TencentCloud::Common::AbstractModel
        # @param ModuleType: 模块类型 当前提供 Malware 木马 , Vul 漏洞 , Baseline 基线
        # @type ModuleType: String
        # @param Filters: 过滤参数;
        # <li>StrategyId 基线策略ID ,仅ModuleType 为 Baseline 时需要<li/>
        # @type Filters: Array

        attr_accessor :ModuleType, :Filters
        
        def initialize(moduletype=nil, filters=nil)
          @ModuleType = moduletype
          @Filters = filters
        end

        def deserialize(params)
          @ModuleType = params['ModuleType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # DescribeScanState返回参数结构体
      class DescribeScanStateResponse < TencentCloud::Common::AbstractModel
        # @param ScanState: 0 从未扫描过、 1 扫描中、 2扫描完成、 3停止中、 4停止完成
        # @type ScanState: Integer
        # @param Schedule: 扫描进度
        # @type Schedule: Integer
        # @param TaskId: 任务Id
        # @type TaskId: Integer
        # @param VulId: 任务扫描的漏洞id
        # @type VulId: Array
        # @param Type: 0一键检测 1定时检测
        # @type Type: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScanState, :Schedule, :TaskId, :VulId, :Type, :RequestId
        
        def initialize(scanstate=nil, schedule=nil, taskid=nil, vulid=nil, type=nil, requestid=nil)
          @ScanState = scanstate
          @Schedule = schedule
          @TaskId = taskid
          @VulId = vulid
          @Type = type
          @RequestId = requestid
        end

        def deserialize(params)
          @ScanState = params['ScanState']
          @Schedule = params['Schedule']
          @TaskId = params['TaskId']
          @VulId = params['VulId']
          @Type = params['Type']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanTaskDetails请求参数结构体
      class DescribeScanTaskDetailsRequest < TencentCloud::Common::AbstractModel
        # @param ModuleType: 模块类型 当前提供 Malware 木马 , Vul 漏洞 , Baseline 基线
        # @type ModuleType: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param Filters: 过滤参数
        # @type Filters: Array
        # @param Limit: 需要返回的数量，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :ModuleType, :TaskId, :Filters, :Limit, :Offset
        
        def initialize(moduletype=nil, taskid=nil, filters=nil, limit=nil, offset=nil)
          @ModuleType = moduletype
          @TaskId = taskid
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ModuleType = params['ModuleType']
          @TaskId = params['TaskId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeScanTaskDetails返回参数结构体
      class DescribeScanTaskDetailsResponse < TencentCloud::Common::AbstractModel
        # @param ScanTaskDetailList: 扫描任务信息列表
        # @type ScanTaskDetailList: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param ScanMachineCount: 扫描机器总数
        # @type ScanMachineCount: Integer
        # @param RiskMachineCount: 发现风险机器数
        # @type RiskMachineCount: Integer
        # @param ScanBeginTime: 扫描开始时间
        # @type ScanBeginTime: String
        # @param ScanEndTime: 扫描结束时间
        # @type ScanEndTime: String
        # @param ScanTime: 检测时间
        # @type ScanTime: Integer
        # @param ScanProgress: 扫描进度
        # @type ScanProgress: Integer
        # @param ScanLeftTime: 扫描剩余时间
        # @type ScanLeftTime: Integer
        # @param ScanContent: 扫描内容
        # @type ScanContent: Array
        # @param VulInfo: 漏洞信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulInfo: Array
        # @param RiskEventCount: 风险事件个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskEventCount: Integer
        # @param Type: 0一键检测 1定时检测
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param StoppingAll: 任务是否全部正在被停止 ture是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StoppingAll: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScanTaskDetailList, :TotalCount, :ScanMachineCount, :RiskMachineCount, :ScanBeginTime, :ScanEndTime, :ScanTime, :ScanProgress, :ScanLeftTime, :ScanContent, :VulInfo, :RiskEventCount, :Type, :StoppingAll, :RequestId
        
        def initialize(scantaskdetaillist=nil, totalcount=nil, scanmachinecount=nil, riskmachinecount=nil, scanbegintime=nil, scanendtime=nil, scantime=nil, scanprogress=nil, scanlefttime=nil, scancontent=nil, vulinfo=nil, riskeventcount=nil, type=nil, stoppingall=nil, requestid=nil)
          @ScanTaskDetailList = scantaskdetaillist
          @TotalCount = totalcount
          @ScanMachineCount = scanmachinecount
          @RiskMachineCount = riskmachinecount
          @ScanBeginTime = scanbegintime
          @ScanEndTime = scanendtime
          @ScanTime = scantime
          @ScanProgress = scanprogress
          @ScanLeftTime = scanlefttime
          @ScanContent = scancontent
          @VulInfo = vulinfo
          @RiskEventCount = riskeventcount
          @Type = type
          @StoppingAll = stoppingall
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ScanTaskDetailList'].nil?
            @ScanTaskDetailList = []
            params['ScanTaskDetailList'].each do |i|
              scantaskdetails_tmp = ScanTaskDetails.new
              scantaskdetails_tmp.deserialize(i)
              @ScanTaskDetailList << scantaskdetails_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @ScanMachineCount = params['ScanMachineCount']
          @RiskMachineCount = params['RiskMachineCount']
          @ScanBeginTime = params['ScanBeginTime']
          @ScanEndTime = params['ScanEndTime']
          @ScanTime = params['ScanTime']
          @ScanProgress = params['ScanProgress']
          @ScanLeftTime = params['ScanLeftTime']
          @ScanContent = params['ScanContent']
          unless params['VulInfo'].nil?
            @VulInfo = []
            params['VulInfo'].each do |i|
              vuldetailinfo_tmp = VulDetailInfo.new
              vuldetailinfo_tmp.deserialize(i)
              @VulInfo << vuldetailinfo_tmp
            end
          end
          @RiskEventCount = params['RiskEventCount']
          @Type = params['Type']
          @StoppingAll = params['StoppingAll']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanVulSetting请求参数结构体
      class DescribeScanVulSettingRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeScanVulSetting返回参数结构体
      class DescribeScanVulSettingResponse < TencentCloud::Common::AbstractModel
        # @param VulCategories: 漏洞类型：1: web应用漏洞 2:系统组件漏洞 (多选英文逗号分隔)
        # @type VulCategories: String
        # @param VulLevels: 危害等级：1-低危；2-中危；3-高危；4-严重 (多选英文逗号分隔)
        # @type VulLevels: String
        # @param TimerInterval: 定期检测间隔时间（天）
        # @type TimerInterval: Integer
        # @param TimerTime: 定期检测时间，如：00:00
        # @type TimerTime: String
        # @param VulEmergency: 是否紧急漏洞：0-否 1-是
        # @type VulEmergency: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EnableScan: 是否开启
        # @type EnableScan: Integer
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param ClickTimeout: 一键扫描超时时长，如：1800秒（s）
        # @type ClickTimeout: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulCategories, :VulLevels, :TimerInterval, :TimerTime, :VulEmergency, :StartTime, :EnableScan, :EndTime, :ClickTimeout, :RequestId
        
        def initialize(vulcategories=nil, vullevels=nil, timerinterval=nil, timertime=nil, vulemergency=nil, starttime=nil, enablescan=nil, endtime=nil, clicktimeout=nil, requestid=nil)
          @VulCategories = vulcategories
          @VulLevels = vullevels
          @TimerInterval = timerinterval
          @TimerTime = timertime
          @VulEmergency = vulemergency
          @StartTime = starttime
          @EnableScan = enablescan
          @EndTime = endtime
          @ClickTimeout = clicktimeout
          @RequestId = requestid
        end

        def deserialize(params)
          @VulCategories = params['VulCategories']
          @VulLevels = params['VulLevels']
          @TimerInterval = params['TimerInterval']
          @TimerTime = params['TimerTime']
          @VulEmergency = params['VulEmergency']
          @StartTime = params['StartTime']
          @EnableScan = params['EnableScan']
          @EndTime = params['EndTime']
          @ClickTimeout = params['ClickTimeout']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSearchExportList请求参数结构体
      class DescribeSearchExportListRequest < TencentCloud::Common::AbstractModel
        # @param Query: ES查询条件JSON
        # @type Query: String

        attr_accessor :Query
        
        def initialize(query=nil)
          @Query = query
        end

        def deserialize(params)
          @Query = params['Query']
        end
      end

      # DescribeSearchExportList返回参数结构体
      class DescribeSearchExportListResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 导出的任务号
        # @type TaskId: Integer
        # @param DownloadUrl: 下载地址
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :DownloadUrl, :RequestId
        
        def initialize(taskid=nil, downloadurl=nil, requestid=nil)
          @TaskId = taskid
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSearchLogs请求参数结构体
      class DescribeSearchLogsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSearchLogs返回参数结构体
      class DescribeSearchLogsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 历史搜索记录 保留最新的10条
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSearchTemplates请求参数结构体
      class DescribeSearchTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer

        attr_accessor :Offset, :Limit
        
        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeSearchTemplates返回参数结构体
      class DescribeSearchTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param List: 模板列表
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
              searchtemplate_tmp = SearchTemplate.new
              searchtemplate_tmp.deserialize(i)
              @List << searchtemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityDynamics请求参数结构体
      class DescribeSecurityDynamicsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，最大值为100。
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

      # DescribeSecurityEventsCnt请求参数结构体
      class DescribeSecurityEventsCntRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSecurityEventsCnt返回参数结构体
      class DescribeSecurityEventsCntResponse < TencentCloud::Common::AbstractModel
        # @param Malware: 木马文件相关风险事件
        # @type Malware: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param HostLogin: 登录审计相关风险事件
        # @type HostLogin: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param BruteAttack: 密码破解相关风险事件
        # @type BruteAttack: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param RiskDns: 恶意请求相关风险事件
        # @type RiskDns: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param Bash: 高危命令相关风险事件
        # @type Bash: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param PrivilegeRules: 本地提权相关风险事件
        # @type PrivilegeRules: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param ReverseShell: 反弹Shell相关风险事件
        # @type ReverseShell: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param SysVul: 系统组件相关风险事件
        # @type SysVul: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param WebVul: Web应用漏洞相关风险事件
        # @type WebVul: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param EmergencyVul: 应急漏洞相关风险事件
        # @type EmergencyVul: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param BaseLine: 安全基线相关风险事件
        # @type BaseLine: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param AttackLogs: 攻击检测相关风险事件
        # @type AttackLogs: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param EffectMachineCount: 受影响机器数
        # @type EffectMachineCount: Integer
        # @param EventsCount: 所有事件总数
        # @type EventsCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Malware, :HostLogin, :BruteAttack, :RiskDns, :Bash, :PrivilegeRules, :ReverseShell, :SysVul, :WebVul, :EmergencyVul, :BaseLine, :AttackLogs, :EffectMachineCount, :EventsCount, :RequestId
        
        def initialize(malware=nil, hostlogin=nil, bruteattack=nil, riskdns=nil, bash=nil, privilegerules=nil, reverseshell=nil, sysvul=nil, webvul=nil, emergencyvul=nil, baseline=nil, attacklogs=nil, effectmachinecount=nil, eventscount=nil, requestid=nil)
          @Malware = malware
          @HostLogin = hostlogin
          @BruteAttack = bruteattack
          @RiskDns = riskdns
          @Bash = bash
          @PrivilegeRules = privilegerules
          @ReverseShell = reverseshell
          @SysVul = sysvul
          @WebVul = webvul
          @EmergencyVul = emergencyvul
          @BaseLine = baseline
          @AttackLogs = attacklogs
          @EffectMachineCount = effectmachinecount
          @EventsCount = eventscount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Malware'].nil?
            @Malware = SecurityEventInfo.new
            @Malware.deserialize(params['Malware'])
          end
          unless params['HostLogin'].nil?
            @HostLogin = SecurityEventInfo.new
            @HostLogin.deserialize(params['HostLogin'])
          end
          unless params['BruteAttack'].nil?
            @BruteAttack = SecurityEventInfo.new
            @BruteAttack.deserialize(params['BruteAttack'])
          end
          unless params['RiskDns'].nil?
            @RiskDns = SecurityEventInfo.new
            @RiskDns.deserialize(params['RiskDns'])
          end
          unless params['Bash'].nil?
            @Bash = SecurityEventInfo.new
            @Bash.deserialize(params['Bash'])
          end
          unless params['PrivilegeRules'].nil?
            @PrivilegeRules = SecurityEventInfo.new
            @PrivilegeRules.deserialize(params['PrivilegeRules'])
          end
          unless params['ReverseShell'].nil?
            @ReverseShell = SecurityEventInfo.new
            @ReverseShell.deserialize(params['ReverseShell'])
          end
          unless params['SysVul'].nil?
            @SysVul = SecurityEventInfo.new
            @SysVul.deserialize(params['SysVul'])
          end
          unless params['WebVul'].nil?
            @WebVul = SecurityEventInfo.new
            @WebVul.deserialize(params['WebVul'])
          end
          unless params['EmergencyVul'].nil?
            @EmergencyVul = SecurityEventInfo.new
            @EmergencyVul.deserialize(params['EmergencyVul'])
          end
          unless params['BaseLine'].nil?
            @BaseLine = SecurityEventInfo.new
            @BaseLine.deserialize(params['BaseLine'])
          end
          unless params['AttackLogs'].nil?
            @AttackLogs = SecurityEventInfo.new
            @AttackLogs.deserialize(params['AttackLogs'])
          end
          @EffectMachineCount = params['EffectMachineCount']
          @EventsCount = params['EventsCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityTrends请求参数结构体
      class DescribeSecurityTrendsRequest < TencentCloud::Common::AbstractModel
        # @param BeginDate: 开始时间，如：2021-07-10
        # @type BeginDate: String
        # @param EndDate: 结束时间，如：2021-07-10
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

      # DescribeServerRelatedDirInfo请求参数结构体
      class DescribeServerRelatedDirInfoRequest < TencentCloud::Common::AbstractModel
        # @param Id: 唯一ID
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeServerRelatedDirInfo返回参数结构体
      class DescribeServerRelatedDirInfoResponse < TencentCloud::Common::AbstractModel
        # @param HostName: 服务器名称
        # @type HostName: String
        # @param HostIp: 服务器IP
        # @type HostIp: String
        # @param ProtectDirNum: 防护目录数量
        # @type ProtectDirNum: Integer
        # @param ProtectFileNum: 防护文件数量
        # @type ProtectFileNum: Integer
        # @param ProtectTamperNum: 防篡改数量
        # @type ProtectTamperNum: Integer
        # @param ProtectLinkNum: 防护软链数量
        # @type ProtectLinkNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HostName, :HostIp, :ProtectDirNum, :ProtectFileNum, :ProtectTamperNum, :ProtectLinkNum, :RequestId
        
        def initialize(hostname=nil, hostip=nil, protectdirnum=nil, protectfilenum=nil, protecttampernum=nil, protectlinknum=nil, requestid=nil)
          @HostName = hostname
          @HostIp = hostip
          @ProtectDirNum = protectdirnum
          @ProtectFileNum = protectfilenum
          @ProtectTamperNum = protecttampernum
          @ProtectLinkNum = protectlinknum
          @RequestId = requestid
        end

        def deserialize(params)
          @HostName = params['HostName']
          @HostIp = params['HostIp']
          @ProtectDirNum = params['ProtectDirNum']
          @ProtectFileNum = params['ProtectFileNum']
          @ProtectTamperNum = params['ProtectTamperNum']
          @ProtectLinkNum = params['ProtectLinkNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeServersAndRiskAndFirstInfo请求参数结构体
      class DescribeServersAndRiskAndFirstInfoRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeServersAndRiskAndFirstInfo返回参数结构体
      class DescribeServersAndRiskAndFirstInfoResponse < TencentCloud::Common::AbstractModel
        # @param RiskFileCount: 风险文件数
        # @type RiskFileCount: Integer
        # @param AddRiskFileCount: 今日新增风险文件数
        # @type AddRiskFileCount: Integer
        # @param ServersCount: 受影响服务器台数
        # @type ServersCount: Integer
        # @param IsFirstCheck: 是否试用：true-是，false-否
        # @type IsFirstCheck: Boolean
        # @param ScanTime: 木马最近检测时间
        # @type ScanTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RiskFileCount, :AddRiskFileCount, :ServersCount, :IsFirstCheck, :ScanTime, :RequestId
        
        def initialize(riskfilecount=nil, addriskfilecount=nil, serverscount=nil, isfirstcheck=nil, scantime=nil, requestid=nil)
          @RiskFileCount = riskfilecount
          @AddRiskFileCount = addriskfilecount
          @ServersCount = serverscount
          @IsFirstCheck = isfirstcheck
          @ScanTime = scantime
          @RequestId = requestid
        end

        def deserialize(params)
          @RiskFileCount = params['RiskFileCount']
          @AddRiskFileCount = params['AddRiskFileCount']
          @ServersCount = params['ServersCount']
          @IsFirstCheck = params['IsFirstCheck']
          @ScanTime = params['ScanTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeStrategyExist请求参数结构体
      class DescribeStrategyExistRequest < TencentCloud::Common::AbstractModel
        # @param StrategyName: 策略名
        # @type StrategyName: String

        attr_accessor :StrategyName
        
        def initialize(strategyname=nil)
          @StrategyName = strategyname
        end

        def deserialize(params)
          @StrategyName = params['StrategyName']
        end
      end

      # DescribeStrategyExist返回参数结构体
      class DescribeStrategyExistResponse < TencentCloud::Common::AbstractModel
        # @param IfExist: 策略是否存在, 1是 0否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IfExist: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IfExist, :RequestId
        
        def initialize(ifexist=nil, requestid=nil)
          @IfExist = ifexist
          @RequestId = requestid
        end

        def deserialize(params)
          @IfExist = params['IfExist']
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
        # <li>CVM：表示云服务器</li>
        # <li>BM:  表示黑石物理机</li>
        # <li>ECM:  表示边缘计算服务器</li>
        # <li>LH:  表示轻量应用服务器</li>
        # <li>Other:  表示混合云服务器</li>
        # @type MachineType: String
        # @param MachineRegion: 机器所属地域。如：ap-guangzhou
        # @type MachineRegion: String
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 查询关键字(机器名称/机器IP </li>
        # <li>Status - String - 是否必填：否 - 客户端在线状态（OFFLINE: 离线 | ONLINE: 在线 | UNINSTALLED：未安装 | SHUTDOWN 已关机）</li>
        # <li>Version - String  是否必填：否 - 当前防护版本（ PRO_VERSION：专业版 | BASIC_VERSION：基础版）</li>
        # <li>Risk - String 是否必填: 否 - 风险主机( yes ) </li>
        # <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )
        # 每个过滤条件只支持一个值，暂不支持多个值“或”关系查询
        # @type Filters: Array

        attr_accessor :MachineType, :MachineRegion, :Filters
        
        def initialize(machinetype=nil, machineregion=nil, filters=nil)
          @MachineType = machinetype
          @MachineRegion = machineregion
          @Filters = filters
        end

        def deserialize(params)
          @MachineType = params['MachineType']
          @MachineRegion = params['MachineRegion']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
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

      # DescribeUndoVulCounts请求参数结构体
      class DescribeUndoVulCountsRequest < TencentCloud::Common::AbstractModel
        # @param VulCategory: 漏洞分类，最小值为1，最大值为5
        # @type VulCategory: Integer
        # @param IfEmergency: 是否应急漏洞筛选, 是 : yes
        # @type IfEmergency: String

        attr_accessor :VulCategory, :IfEmergency
        
        def initialize(vulcategory=nil, ifemergency=nil)
          @VulCategory = vulcategory
          @IfEmergency = ifemergency
        end

        def deserialize(params)
          @VulCategory = params['VulCategory']
          @IfEmergency = params['IfEmergency']
        end
      end

      # DescribeUndoVulCounts返回参数结构体
      class DescribeUndoVulCountsResponse < TencentCloud::Common::AbstractModel
        # @param UndoVulCount: 未处理的漏洞数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UndoVulCount: Integer
        # @param UndoHostCount: 未处理的主机数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UndoHostCount: Integer
        # @param NotProfessionCount: 普通版主机数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotProfessionCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UndoVulCount, :UndoHostCount, :NotProfessionCount, :RequestId
        
        def initialize(undovulcount=nil, undohostcount=nil, notprofessioncount=nil, requestid=nil)
          @UndoVulCount = undovulcount
          @UndoHostCount = undohostcount
          @NotProfessionCount = notprofessioncount
          @RequestId = requestid
        end

        def deserialize(params)
          @UndoVulCount = params['UndoVulCount']
          @UndoHostCount = params['UndoHostCount']
          @NotProfessionCount = params['NotProfessionCount']
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

      # DescribeVersionStatistics请求参数结构体
      class DescribeVersionStatisticsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeVersionStatistics返回参数结构体
      class DescribeVersionStatisticsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeVulCountByDates请求参数结构体
      class DescribeVulCountByDatesRequest < TencentCloud::Common::AbstractModel
        # @param LastDays: 需要查询最近几天的数据，需要都 -1后传入
        # @type LastDays: Array
        # @param VulCategory: 漏洞的分类，最小值为1最大值为5
        # @type VulCategory: Integer
        # @param IfEmergency: 是否为应急漏洞筛选  是: yes
        # @type IfEmergency: String

        attr_accessor :LastDays, :VulCategory, :IfEmergency
        
        def initialize(lastdays=nil, vulcategory=nil, ifemergency=nil)
          @LastDays = lastdays
          @VulCategory = vulcategory
          @IfEmergency = ifemergency
        end

        def deserialize(params)
          @LastDays = params['LastDays']
          @VulCategory = params['VulCategory']
          @IfEmergency = params['IfEmergency']
        end
      end

      # DescribeVulCountByDates返回参数结构体
      class DescribeVulCountByDatesResponse < TencentCloud::Common::AbstractModel
        # @param VulCount: 批量获得对应天数的漏洞数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulCount: Array
        # @param HostCount: 批量获得对应天数的主机数量
        # @type HostCount: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulCount, :HostCount, :RequestId
        
        def initialize(vulcount=nil, hostcount=nil, requestid=nil)
          @VulCount = vulcount
          @HostCount = hostcount
          @RequestId = requestid
        end

        def deserialize(params)
          @VulCount = params['VulCount']
          @HostCount = params['HostCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulHostCountScanTime请求参数结构体
      class DescribeVulHostCountScanTimeRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeVulHostCountScanTime返回参数结构体
      class DescribeVulHostCountScanTimeResponse < TencentCloud::Common::AbstractModel
        # @param TotalVulCount: 总漏洞数
        # @type TotalVulCount: Integer
        # @param VulHostCount: 漏洞影响主机数
        # @type VulHostCount: Integer
        # @param ScanTime: 扫描时间
        # @type ScanTime: String
        # @param IfFirstScan: 是否第一次检测
        # @type IfFirstScan: Boolean
        # @param TaskId: 运行中的任务号, 没有任务则为0
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalVulCount, :VulHostCount, :ScanTime, :IfFirstScan, :TaskId, :RequestId
        
        def initialize(totalvulcount=nil, vulhostcount=nil, scantime=nil, iffirstscan=nil, taskid=nil, requestid=nil)
          @TotalVulCount = totalvulcount
          @VulHostCount = vulhostcount
          @ScanTime = scantime
          @IfFirstScan = iffirstscan
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalVulCount = params['TotalVulCount']
          @VulHostCount = params['VulHostCount']
          @ScanTime = params['ScanTime']
          @IfFirstScan = params['IfFirstScan']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulInfoCvss请求参数结构体
      class DescribeVulInfoCvssRequest < TencentCloud::Common::AbstractModel
        # @param VulId: 漏洞id
        # @type VulId: Integer

        attr_accessor :VulId
        
        def initialize(vulid=nil)
          @VulId = vulid
        end

        def deserialize(params)
          @VulId = params['VulId']
        end
      end

      # DescribeVulInfoCvss返回参数结构体
      class DescribeVulInfoCvssResponse < TencentCloud::Common::AbstractModel
        # @param VulId: 漏洞id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulId: Integer
        # @param VulName: 漏洞名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulName: String
        # @param VulLevel: 危害等级：1-低危；2-中危；3-高危；4-严重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulLevel: Integer
        # @param VulType: 漏洞分类 1: web应用漏洞 2:系统组件漏洞
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulType: Integer
        # @param Description: 漏洞描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param RepairPlan: 修复方案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepairPlan: String
        # @param CveId: 漏洞CVEID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CveId: String
        # @param Reference: 参考链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reference: String
        # @param CVSS: CVSS信息，wiki:http://tapd.oa.com/Teneyes/markdown_wikis/view/#1010131751011792303
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVSS: String
        # @param PublicDate: 发布时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicDate: String
        # @param CvssScore: Cvss分数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CvssScore: Integer
        # @param CveInfo: cvss详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CveInfo: String
        # @param CvssScoreFloat: cvss 分数 浮点型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CvssScoreFloat: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulId, :VulName, :VulLevel, :VulType, :Description, :RepairPlan, :CveId, :Reference, :CVSS, :PublicDate, :CvssScore, :CveInfo, :CvssScoreFloat, :RequestId
        
        def initialize(vulid=nil, vulname=nil, vullevel=nil, vultype=nil, description=nil, repairplan=nil, cveid=nil, reference=nil, cvss=nil, publicdate=nil, cvssscore=nil, cveinfo=nil, cvssscorefloat=nil, requestid=nil)
          @VulId = vulid
          @VulName = vulname
          @VulLevel = vullevel
          @VulType = vultype
          @Description = description
          @RepairPlan = repairplan
          @CveId = cveid
          @Reference = reference
          @CVSS = cvss
          @PublicDate = publicdate
          @CvssScore = cvssscore
          @CveInfo = cveinfo
          @CvssScoreFloat = cvssscorefloat
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
          @CVSS = params['CVSS']
          @PublicDate = params['PublicDate']
          @CvssScore = params['CvssScore']
          @CveInfo = params['CveInfo']
          @CvssScoreFloat = params['CvssScoreFloat']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulLevelCount请求参数结构体
      class DescribeVulLevelCountRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeVulLevelCount返回参数结构体
      class DescribeVulLevelCountResponse < TencentCloud::Common::AbstractModel
        # @param VulLevelList: 统计结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulLevelList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulLevelList, :RequestId
        
        def initialize(vullevellist=nil, requestid=nil)
          @VulLevelList = vullevellist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VulLevelList'].nil?
            @VulLevelList = []
            params['VulLevelList'].each do |i|
              vullevelinfo_tmp = VulLevelInfo.new
              vullevelinfo_tmp.deserialize(i)
              @VulLevelList << vullevelinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulTop请求参数结构体
      class DescribeVulTopRequest < TencentCloud::Common::AbstractModel
        # @param Top: 漏洞风险服务器top，1-100
        # @type Top: Integer
        # @param VulCategory: 1: web应用漏洞 2=系统组件漏洞3:安全基线 4: Linux系统漏洞 5: windows补丁，传0的时候表示查应急漏洞
        # @type VulCategory: Integer

        attr_accessor :Top, :VulCategory
        
        def initialize(top=nil, vulcategory=nil)
          @Top = top
          @VulCategory = vulcategory
        end

        def deserialize(params)
          @Top = params['Top']
          @VulCategory = params['VulCategory']
        end
      end

      # DescribeVulTop返回参数结构体
      class DescribeVulTopResponse < TencentCloud::Common::AbstractModel
        # @param VulTopList: 漏洞top列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulTopList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulTopList, :RequestId
        
        def initialize(vultoplist=nil, requestid=nil)
          @VulTopList = vultoplist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VulTopList'].nil?
            @VulTopList = []
            params['VulTopList'].each do |i|
              vultopinfo_tmp = VulTopInfo.new
              vultopinfo_tmp.deserialize(i)
              @VulTopList << vultopinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWarningList请求参数结构体
      class DescribeWarningListRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWarningList返回参数结构体
      class DescribeWarningListResponse < TencentCloud::Common::AbstractModel
        # @param WarningInfoList: 获取告警列表
        # @type WarningInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WarningInfoList, :RequestId
        
        def initialize(warninginfolist=nil, requestid=nil)
          @WarningInfoList = warninginfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WarningInfoList'].nil?
            @WarningInfoList = []
            params['WarningInfoList'].each do |i|
              warninginfoobj_tmp = WarningInfoObj.new
              warninginfoobj_tmp.deserialize(i)
              @WarningInfoList << warninginfoobj_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebPageEventList请求参数结构体
      class DescribeWebPageEventListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>EventType - String - 是否必填：否 - 事件类型</li>
        # <li>EventStatus - String - 是否必填：否 - 事件状态</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param By: 排序方式：CreateTime 或 RestoreTime，默认为CreateTime
        # @type By: String
        # @param Order: 排序方式，0降序，1升序，默认为0
        # @type Order: Integer

        attr_accessor :Filters, :Offset, :Limit, :By, :Order
        
        def initialize(filters=nil, offset=nil, limit=nil, by=nil, order=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @By = by
          @Order = order
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeWebPageEventList返回参数结构体
      class DescribeWebPageEventListResponse < TencentCloud::Common::AbstractModel
        # @param List: 防护事件列表信息
        # @type List: Array
        # @param TotalCount: 总数
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
              protecteventlists_tmp = ProtectEventLists.new
              protecteventlists_tmp.deserialize(i)
              @List << protecteventlists_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebPageGeneralize请求参数结构体
      class DescribeWebPageGeneralizeRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWebPageGeneralize返回参数结构体
      class DescribeWebPageGeneralizeResponse < TencentCloud::Common::AbstractModel
        # @param ProtectMonitor: 防护监测 0 未开启 1 已开启 2 异常
        # @type ProtectMonitor: Integer
        # @param ProtectDirNum: 防护目录数
        # @type ProtectDirNum: Integer
        # @param ProtectFileNum: 防护文件数
        # @type ProtectFileNum: Integer
        # @param TamperFileNum: 篡改文件数
        # @type TamperFileNum: Integer
        # @param TamperNum: 篡改数
        # @type TamperNum: Integer
        # @param ProtectToday: 今日防护数
        # @type ProtectToday: Integer
        # @param ProtectHostNum: 防护主机数
        # @type ProtectHostNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProtectMonitor, :ProtectDirNum, :ProtectFileNum, :TamperFileNum, :TamperNum, :ProtectToday, :ProtectHostNum, :RequestId
        
        def initialize(protectmonitor=nil, protectdirnum=nil, protectfilenum=nil, tamperfilenum=nil, tampernum=nil, protecttoday=nil, protecthostnum=nil, requestid=nil)
          @ProtectMonitor = protectmonitor
          @ProtectDirNum = protectdirnum
          @ProtectFileNum = protectfilenum
          @TamperFileNum = tamperfilenum
          @TamperNum = tampernum
          @ProtectToday = protecttoday
          @ProtectHostNum = protecthostnum
          @RequestId = requestid
        end

        def deserialize(params)
          @ProtectMonitor = params['ProtectMonitor']
          @ProtectDirNum = params['ProtectDirNum']
          @ProtectFileNum = params['ProtectFileNum']
          @TamperFileNum = params['TamperFileNum']
          @TamperNum = params['TamperNum']
          @ProtectToday = params['ProtectToday']
          @ProtectHostNum = params['ProtectHostNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebPageProtectStat请求参数结构体
      class DescribeWebPageProtectStatRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWebPageProtectStat返回参数结构体
      class DescribeWebPageProtectStatResponse < TencentCloud::Common::AbstractModel
        # @param FileTamperNum: 文件篡改信息
        # @type FileTamperNum: Array
        # @param ProtectFileType: 防护文件分类信息
        # @type ProtectFileType: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileTamperNum, :ProtectFileType, :RequestId
        
        def initialize(filetampernum=nil, protectfiletype=nil, requestid=nil)
          @FileTamperNum = filetampernum
          @ProtectFileType = protectfiletype
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FileTamperNum'].nil?
            @FileTamperNum = []
            params['FileTamperNum'].each do |i|
              protectstat_tmp = ProtectStat.new
              protectstat_tmp.deserialize(i)
              @FileTamperNum << protectstat_tmp
            end
          end
          unless params['ProtectFileType'].nil?
            @ProtectFileType = []
            params['ProtectFileType'].each do |i|
              protectstat_tmp = ProtectStat.new
              protectstat_tmp.deserialize(i)
              @ProtectFileType << protectstat_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebPageServiceInfo请求参数结构体
      class DescribeWebPageServiceInfoRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWebPageServiceInfo返回参数结构体
      class DescribeWebPageServiceInfoResponse < TencentCloud::Common::AbstractModel
        # @param Status: 是否已购服务：true-是，false-否
        # @type Status: Boolean
        # @param UsedNum: 已使用授权数
        # @type UsedNum: Integer
        # @param ResidueNum: 剩余授权数
        # @type ResidueNum: Integer
        # @param BuyNum: 已购授权数
        # @type BuyNum: Integer
        # @param ExpireNum: 临近到期数量
        # @type ExpireNum: Integer
        # @param AllAuthorizedMachines: 所有授权机器信息
        # @type AllAuthorizedMachines: Array
        # @param ExpireAuthorizedMachines: 临近到期授权机器信息
        # @type ExpireAuthorizedMachines: Array
        # @param ExpiredNum: 已过期授权数
        # @type ExpiredNum: Integer
        # @param ProtectDirNum: 防护目录数
        # @type ProtectDirNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :UsedNum, :ResidueNum, :BuyNum, :ExpireNum, :AllAuthorizedMachines, :ExpireAuthorizedMachines, :ExpiredNum, :ProtectDirNum, :RequestId
        
        def initialize(status=nil, usednum=nil, residuenum=nil, buynum=nil, expirenum=nil, allauthorizedmachines=nil, expireauthorizedmachines=nil, expirednum=nil, protectdirnum=nil, requestid=nil)
          @Status = status
          @UsedNum = usednum
          @ResidueNum = residuenum
          @BuyNum = buynum
          @ExpireNum = expirenum
          @AllAuthorizedMachines = allauthorizedmachines
          @ExpireAuthorizedMachines = expireauthorizedmachines
          @ExpiredNum = expirednum
          @ProtectDirNum = protectdirnum
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @UsedNum = params['UsedNum']
          @ResidueNum = params['ResidueNum']
          @BuyNum = params['BuyNum']
          @ExpireNum = params['ExpireNum']
          unless params['AllAuthorizedMachines'].nil?
            @AllAuthorizedMachines = []
            params['AllAuthorizedMachines'].each do |i|
              protectmachineinfo_tmp = ProtectMachineInfo.new
              protectmachineinfo_tmp.deserialize(i)
              @AllAuthorizedMachines << protectmachineinfo_tmp
            end
          end
          unless params['ExpireAuthorizedMachines'].nil?
            @ExpireAuthorizedMachines = []
            params['ExpireAuthorizedMachines'].each do |i|
              protectmachine_tmp = ProtectMachine.new
              protectmachine_tmp.deserialize(i)
              @ExpireAuthorizedMachines << protectmachine_tmp
            end
          end
          @ExpiredNum = params['ExpiredNum']
          @ProtectDirNum = params['ProtectDirNum']
          @RequestId = params['RequestId']
        end
      end

      # EditBashRules请求参数结构体
      class EditBashRulesRequest < TencentCloud::Common::AbstractModel
        # @param Name: 规则名称
        # @type Name: String
        # @param Rule: 正则表达式
        # @type Rule: String
        # @param Id: 规则ID（新增时不填）
        # @type Id: Integer
        # @param Uuids: 客户端ID数组
        # @type Uuids: Array
        # @param HostIp: 主机IP
        # @type HostIp: String
        # @param Level: 危险等级(0:无，1: 高危 2:中危 3: 低危)
        # @type Level: Integer
        # @param IsGlobal: 是否全局规则(默认否)：1-全局，0-非全局
        # @type IsGlobal: Integer
        # @param White: 0=黑名单， 1=白名单
        # @type White: Integer
        # @param EventId: 事件列表点击“加入白名单”时,需要传EventId 事件的id
        # @type EventId: Integer
        # @param DealOldEvents: 是否处理旧事件为白名单 0=不处理 1=处理
        # @type DealOldEvents: Integer

        attr_accessor :Name, :Rule, :Id, :Uuids, :HostIp, :Level, :IsGlobal, :White, :EventId, :DealOldEvents
        
        def initialize(name=nil, rule=nil, id=nil, uuids=nil, hostip=nil, level=nil, isglobal=nil, white=nil, eventid=nil, dealoldevents=nil)
          @Name = name
          @Rule = rule
          @Id = id
          @Uuids = uuids
          @HostIp = hostip
          @Level = level
          @IsGlobal = isglobal
          @White = white
          @EventId = eventid
          @DealOldEvents = dealoldevents
        end

        def deserialize(params)
          @Name = params['Name']
          @Rule = params['Rule']
          @Id = params['Id']
          @Uuids = params['Uuids']
          @HostIp = params['HostIp']
          @Level = params['Level']
          @IsGlobal = params['IsGlobal']
          @White = params['White']
          @EventId = params['EventId']
          @DealOldEvents = params['DealOldEvents']
        end
      end

      # EditBashRules返回参数结构体
      class EditBashRulesResponse < TencentCloud::Common::AbstractModel
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
        # @param Quuids: Quuid
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

      # 批量导入机器信息.
      class EffectiveMachineInfo < TencentCloud::Common::AbstractModel
        # @param MachineName: 机器名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineName: String
        # @param MachinePublicIp: 机器公网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachinePublicIp: String
        # @param MachinePrivateIp: 机器内网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachinePrivateIp: String
        # @param MachineTag: 机器标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineTag: Array
        # @param Quuid: 机器Quuid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quuid: String
        # @param Uuid: 云镜Uuid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uuid: String

        attr_accessor :MachineName, :MachinePublicIp, :MachinePrivateIp, :MachineTag, :Quuid, :Uuid
        
        def initialize(machinename=nil, machinepublicip=nil, machineprivateip=nil, machinetag=nil, quuid=nil, uuid=nil)
          @MachineName = machinename
          @MachinePublicIp = machinepublicip
          @MachinePrivateIp = machineprivateip
          @MachineTag = machinetag
          @Quuid = quuid
          @Uuid = uuid
        end

        def deserialize(params)
          @MachineName = params['MachineName']
          @MachinePublicIp = params['MachinePublicIp']
          @MachinePrivateIp = params['MachinePrivateIp']
          unless params['MachineTag'].nil?
            @MachineTag = []
            params['MachineTag'].each do |i|
              machinetag_tmp = MachineTag.new
              machinetag_tmp.deserialize(i)
              @MachineTag << machinetag_tmp
            end
          end
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
        end
      end

      # 应急漏洞信息
      class EmergencyVul < TencentCloud::Common::AbstractModel
        # @param VulId: 漏洞id
        # @type VulId: Integer
        # @param Level: 漏洞级别
        # @type Level: Integer
        # @param VulName: 漏洞名称
        # @type VulName: String
        # @param PublishDate: 发布日期
        # @type PublishDate: String
        # @param Category: 漏洞分类
        # @type Category: Integer
        # @param Status: 漏洞状态 0未检测 1有风险 ，2无风险 ，3 检查中展示progress
        # @type Status: Integer
        # @param LastScanTime: 最后扫描时间
        # @type LastScanTime: String
        # @param Progress: 扫描进度
        # @type Progress: Integer

        attr_accessor :VulId, :Level, :VulName, :PublishDate, :Category, :Status, :LastScanTime, :Progress
        
        def initialize(vulid=nil, level=nil, vulname=nil, publishdate=nil, category=nil, status=nil, lastscantime=nil, progress=nil)
          @VulId = vulid
          @Level = level
          @VulName = vulname
          @PublishDate = publishdate
          @Category = category
          @Status = status
          @LastScanTime = lastscantime
          @Progress = progress
        end

        def deserialize(params)
          @VulId = params['VulId']
          @Level = params['Level']
          @VulName = params['VulName']
          @PublishDate = params['PublishDate']
          @Category = params['Category']
          @Status = params['Status']
          @LastScanTime = params['LastScanTime']
          @Progress = params['Progress']
        end
      end

      # ExportAssetCoreModuleList请求参数结构体
      class ExportAssetCoreModuleListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li>Name- string - 是否必填：否 - 包名</li>
        # <li>User- string - 是否必填：否 - 用户</li>
        # @type Filters: Array
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 排序依据:Size,ProcessCount,ModuleCount
        # @type By: String
        # @param Uuid: 服务器Uuid
        # @type Uuid: String
        # @param Quuid: 服务器Quuid
        # @type Quuid: String

        attr_accessor :Filters, :Order, :By, :Uuid, :Quuid
        
        def initialize(filters=nil, order=nil, by=nil, uuid=nil, quuid=nil)
          @Filters = filters
          @Order = order
          @By = by
          @Uuid = uuid
          @Quuid = quuid
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
        end
      end

      # ExportAssetCoreModuleList返回参数结构体
      class ExportAssetCoreModuleListResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步下载任务ID，需要配合ExportTasks接口使用
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ExportAssetWebServiceInfoList请求参数结构体
      class ExportAssetWebServiceInfoListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li>User- string - 是否必填：否 - 运行用户</li>
        # <li>Name- string - 是否必填：否 - Web服务名：
        # 1:Tomcat
        # 2:Apache
        # 3:Nginx
        # 4:WebLogic
        # 5:Websphere
        # 6:JBoss
        # 7:WildFly
        # 8:Jetty
        # 9:IHS
        # 10:Tengine</li>
        # <li>OsType- string - 是否必填：否 - Windows/linux</li>
        # @type Filters: Array
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 可选排序：ProcessCount
        # @type By: String
        # @param Quuid: 查询指定Quuid主机的信息
        # @type Quuid: String

        attr_accessor :Filters, :Order, :By, :Quuid
        
        def initialize(filters=nil, order=nil, by=nil, quuid=nil)
          @Filters = filters
          @Order = order
          @By = by
          @Quuid = quuid
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
          @Quuid = params['Quuid']
        end
      end

      # ExportAssetWebServiceInfoList返回参数结构体
      class ExportAssetWebServiceInfoListResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步下载任务ID，需要配合ExportTasks接口使用
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ExportAttackLogs请求参数结构体
      class ExportAttackLogsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li>HttpMethod - String - 是否必填：否 - 攻击方法(POST|GET)</li>
        # <li>DateRange - String - 是否必填：否 - 时间范围(存储最近3个月的数据)，如最近一个月["2019-11-17", "2019-12-17"]</li>
        # <li>VulType - String 威胁类型 - 是否必填: 否</li>
        # <li>SrcIp - String 攻击源IP - 是否必填: 否</li>
        # <li>DstIp - String 攻击目标IP - 是否必填: 否</li>
        # <li>SrcPort - String 攻击源端口 - 是否必填: 否</li>
        # <li>DstPort - String 攻击目标端口 - 是否必填: 否</li>
        # @type Filters: Array
        # @param Uuid: 主机安全客户端ID
        # @type Uuid: String
        # @param Quuid: 云主机机器ID
        # @type Quuid: String

        attr_accessor :Filters, :Uuid, :Quuid
        
        def initialize(filters=nil, uuid=nil, quuid=nil)
          @Filters = filters
          @Uuid = uuid
          @Quuid = quuid
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
        end
      end

      # ExportAttackLogs返回参数结构体
      class ExportAttackLogsResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 已废弃
        # @type DownloadUrl: String
        # @param TaskId: 导出任务ID 可通过ExportTasks接口下载
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

      # ExportBaselineEffectHostList请求参数结构体
      class ExportBaselineEffectHostListRequest < TencentCloud::Common::AbstractModel
        # @param BaselineId: 基线id
        # @type BaselineId: Integer
        # @param Filters: 筛选条件
        # <li>AliasName- String- 主机别名</li>
        # @type Filters: Array
        # @param StrategyId: 策略id
        # @type StrategyId: Integer
        # @param UuidList: 主机uuid数组
        # @type UuidList: Array
        # @param BaselineName: 基线名称
        # @type BaselineName: String

        attr_accessor :BaselineId, :Filters, :StrategyId, :UuidList, :BaselineName
        
        def initialize(baselineid=nil, filters=nil, strategyid=nil, uuidlist=nil, baselinename=nil)
          @BaselineId = baselineid
          @Filters = filters
          @StrategyId = strategyid
          @UuidList = uuidlist
          @BaselineName = baselinename
        end

        def deserialize(params)
          @BaselineId = params['BaselineId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @StrategyId = params['StrategyId']
          @UuidList = params['UuidList']
          @BaselineName = params['BaselineName']
        end
      end

      # ExportBaselineEffectHostList返回参数结构体
      class ExportBaselineEffectHostListResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadUrl: String
        # @param TaskId: 导出任务id 可通过 ExportTasks接口下载
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

      # ExportBaselineList请求参数结构体
      class ExportBaselineListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件：
        # <li>StrategyId- Uint64 - 基线策略id</li>
        # <li>Status - Uint64 - 事件状态：0-未通过，1-忽略，3-通过，5-检测中</li>
        # <li>BaselineName  - String - 基线名称</li>
        # <li>AliasName- String - 服务器名称/服务器ip</li>
        # <li>Uuid- String - 主机uuid</li>
        # @type Filters: Array
        # @param IfDetail: 已废弃
        # @type IfDetail: Integer

        attr_accessor :Filters, :IfDetail
        
        def initialize(filters=nil, ifdetail=nil)
          @Filters = filters
          @IfDetail = ifdetail
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @IfDetail = params['IfDetail']
        end
      end

      # ExportBaselineList返回参数结构体
      class ExportBaselineListResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载地址（已弃用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadUrl: String
        # @param TaskId: 导出文件Id 可通过ExportTasks接口下载
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
        # @param Filters: 过滤参数
        # @type Filters: Array

        attr_accessor :Filters
        
        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # ExportBashEvents返回参数结构体
      class ExportBashEventsResponse < TencentCloud::Common::AbstractModel
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

      # ExportBruteAttacks请求参数结构体
      class ExportBruteAttacksRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤参数
        # @type Filters: Array

        attr_accessor :Filters
        
        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # ExportBruteAttacks返回参数结构体
      class ExportBruteAttacksResponse < TencentCloud::Common::AbstractModel
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

      # ExportIgnoreBaselineRule请求参数结构体
      class ExportIgnoreBaselineRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 检测项名称
        # @type RuleName: String

        attr_accessor :RuleName
        
        def initialize(rulename=nil)
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleName = params['RuleName']
        end
      end

      # ExportIgnoreBaselineRule返回参数结构体
      class ExportIgnoreBaselineRuleResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 文件下载地址
        # @type DownloadUrl: String
        # @param TaskId: 导出任务Id , 可通过ExportTasks 接口下载
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

      # ExportIgnoreRuleEffectHostList请求参数结构体
      class ExportIgnoreRuleEffectHostListRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 检测项id
        # @type RuleId: Integer
        # @param Filters: 过滤条件。
        # <li>AliasName- String- 主机别名</li>
        # @type Filters: Array

        attr_accessor :RuleId, :Filters
        
        def initialize(ruleid=nil, filters=nil)
          @RuleId = ruleid
          @Filters = filters
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # ExportIgnoreRuleEffectHostList返回参数结构体
      class ExportIgnoreRuleEffectHostListResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载地址
        # @type DownloadUrl: String
        # @param TaskId: 导出任务Id , 可通过ExportTasks 接口下载
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

      # ExportMaliciousRequests请求参数结构体
      class ExportMaliciousRequestsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤参数
        # @type Filters: Array

        attr_accessor :Filters
        
        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # ExportMaliciousRequests返回参数结构体
      class ExportMaliciousRequestsResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param TaskId: 导出任务Id , 可通过ExportTasks 接口下载
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

      # ExportMalwares请求参数结构体
      class ExportMalwaresRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 限制条数,默认10
        # @type Limit: Integer
        # @param Offset: 偏移量 默认0
        # @type Offset: Integer
        # @param Filters: 过滤参数。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>FilePath - String - 是否必填：否 - 路径筛选</li>
        # <li>VirusName - String - 是否必填：否 - 描述筛选</li>
        # <li>CreateBeginTime - String - 是否必填：否 - 创建时间筛选-开始时间</li>
        # <li>CreateEndTime - String - 是否必填：否 - 创建时间筛选-结束时间</li>
        # <li>Status - String - 是否必填：否 - 状态筛选</li>
        # @type Filters: Array
        # @param By: 排序值 CreateTime
        # @type By: String
        # @param Order: 排序 方式 ，ASC，DESC
        # @type Order: String

        attr_accessor :Limit, :Offset, :Filters, :By, :Order
        
        def initialize(limit=nil, offset=nil, filters=nil, by=nil, order=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @By = by
          @Order = order
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @By = params['By']
          @Order = params['Order']
        end
      end

      # ExportMalwares返回参数结构体
      class ExportMalwaresResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param TaskId: 任务id
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

      # ExportNonlocalLoginPlaces请求参数结构体
      class ExportNonlocalLoginPlacesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <li>Status - int - 是否必填：否 - 状态筛选1:正常登录；2：异地登录</li>
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
        # @param Filters: 过滤参数
        # @type Filters: Array

        attr_accessor :Filters
        
        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # ExportPrivilegeEvents返回参数结构体
      class ExportPrivilegeEventsResponse < TencentCloud::Common::AbstractModel
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

      # ExportProtectDirList请求参数结构体
      class ExportProtectDirListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: DirName 网站名称
        # DirPath 网站防护目录地址
        # @type Filters: Array
        # @param Order: asc：升序/desc：降序
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :Filters, :Order, :By
        
        def initialize(filters=nil, order=nil, by=nil)
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # ExportProtectDirList返回参数结构体
      class ExportProtectDirListResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ExportReverseShellEvents请求参数结构体
      class ExportReverseShellEventsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤参数
        # @type Filters: Array

        attr_accessor :Filters
        
        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # ExportReverseShellEvents返回参数结构体
      class ExportReverseShellEventsResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param TaskId: 任务id
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

      # ExportScanTaskDetails请求参数结构体
      class ExportScanTaskDetailsRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 本次检测的任务id（不同于出参的导出本次检测Excel的任务Id）
        # @type TaskId: Integer
        # @param ModuleType: 模块类型，当前提供：Malware 木马 , Vul 漏洞 , Baseline 基线
        # @type ModuleType: String
        # @param Filters: 过滤参数：ipOrAlias（服务器名/ip）
        # @type Filters: Array

        attr_accessor :TaskId, :ModuleType, :Filters
        
        def initialize(taskid=nil, moduletype=nil, filters=nil)
          @TaskId = taskid
          @ModuleType = moduletype
          @Filters = filters
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ModuleType = params['ModuleType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # ExportScanTaskDetails返回参数结构体
      class ExportScanTaskDetailsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 导出本次检测Excel的任务Id（不同于入参的本次检测任务id）
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ExportTasks请求参数结构体
      class ExportTasksRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # ExportTasks返回参数结构体
      class ExportTasksResponse < TencentCloud::Common::AbstractModel
        # @param Status: PENDING：正在生成下载链接，FINISHED：下载链接已生成，ERROR：网络异常等异常情况
        # @type Status: String
        # @param DownloadUrl: 下载链接
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :DownloadUrl, :RequestId
        
        def initialize(status=nil, downloadurl=nil, requestid=nil)
          @Status = status
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # ExportVulDetectionExcel请求参数结构体
      class ExportVulDetectionExcelRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 本次漏洞检测任务id（不同于出参的导出本次漏洞检测Excel的任务Id）
        # @type TaskId: Integer

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # ExportVulDetectionExcel返回参数结构体
      class ExportVulDetectionExcelResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址
        # @type DownloadUrl: String
        # @param TaskId: 导出本次漏洞检测Excel的任务Id（不同于入参的本次漏洞检测任务id）
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

      # ExportVulDetectionReport请求参数结构体
      class ExportVulDetectionReportRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 漏洞扫描任务id（不同于出参的导出检测报告的任务Id）
        # @type TaskId: Integer
        # @param Filters: 过滤参数
        # @type Filters: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :TaskId, :Filters, :Limit, :Offset
        
        def initialize(taskid=nil, filters=nil, limit=nil, offset=nil)
          @TaskId = taskid
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # ExportVulDetectionReport返回参数结构体
      class ExportVulDetectionReportResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址
        # @type DownloadUrl: String
        # @param TaskId: 导出检测报告的任务Id（不同于入参的漏洞扫描任务id）
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

      # ExportVulEffectHostList请求参数结构体
      class ExportVulEffectHostListRequest < TencentCloud::Common::AbstractModel
        # @param VulId: 漏洞id
        # @type VulId: Integer
        # @param Filters: 过滤条件。
        # <li>AliasName - String - 主机名筛选</li>
        # @type Filters: Array

        attr_accessor :VulId, :Filters
        
        def initialize(vulid=nil, filters=nil)
          @VulId = vulid
          @Filters = filters
        end

        def deserialize(params)
          @VulId = params['VulId']
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

      # ExportVulEffectHostList返回参数结构体
      class ExportVulEffectHostListResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 已废弃
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadUrl: String
        # @param TaskId: 导出任务Id , 可通过ExportTasks 接口下载
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

      # ExportVulList请求参数结构体
      class ExportVulListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li>VulCategory - int - 是否必填：否 - 漏洞分类筛选 1: web应用漏洞 2:系统组件漏洞 3:安全基线</li>
        # <li>IfEmergency - String - 是否必填：否 - 是否为应急漏洞，查询应急漏洞传:yes</li>
        # <li>Status - String - 是否必填：是 - 漏洞状态筛选，0: 待处理 1:忽略  3:已修复  5:检测中， 控制台仅处理0,1,3,5四种状态</li>
        # <li>Level - String - 是否必填：否 - 漏洞等级筛选 1:低 2:中 3:高 4:提示</li>
        # <li>VulName- String - 是否必填：否 - 漏洞名称搜索</li>
        # @type Filters: Array
        # @param IfDetail: 是否导出详情,1是 0不是
        # @type IfDetail: Integer

        attr_accessor :Filters, :IfDetail
        
        def initialize(filters=nil, ifdetail=nil)
          @Filters = filters
          @IfDetail = ifdetail
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
          @IfDetail = params['IfDetail']
        end
      end

      # ExportVulList返回参数结构体
      class ExportVulListResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出的文件下载url（已弃用！）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadUrl: String
        # @param TaskId: 导出文件Id 可通过ExportTasks接口下载
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

      # ExportWebPageEventList请求参数结构体
      class ExportWebPageEventListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>EventType - String - 是否必填：否 - 事件类型</li>
        # <li>EventStatus - String - 是否必填：否 - 事件状态</li>
        # @type Filters: Array
        # @param By: 排序方式：CreateTime 或 RestoreTime，默认为CreateTime
        # @type By: String
        # @param Order: 排序方式，0降序，1升序，默认为0
        # @type Order: Integer

        attr_accessor :Filters, :By, :Order
        
        def initialize(filters=nil, by=nil, order=nil)
          @Filters = filters
          @By = by
          @Order = order
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @By = params['By']
          @Order = params['Order']
        end
      end

      # ExportWebPageEventList返回参数结构体
      class ExportWebPageEventListResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id 可通过 ExportTasks接口下载
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param ExactMatch: 模糊搜索
        # @type ExactMatch: Boolean

        attr_accessor :Name, :Values, :ExactMatch
        
        def initialize(name=nil, values=nil, exactmatch=nil)
          @Name = name
          @Values = values
          @ExactMatch = exactmatch
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @ExactMatch = params['ExactMatch']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等

      # 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class Filters < TencentCloud::Common::AbstractModel
        # @param Name: 过滤键的名称。
        # @type Name: String
        # @param Values: 一个或者多个过滤值。
        # @type Values: Array
        # @param ExactMatch: 是否模糊匹配，前端框架会带上，可以不管
        # @type ExactMatch: Boolean

        attr_accessor :Name, :Values, :ExactMatch
        
        def initialize(name=nil, values=nil, exactmatch=nil)
          @Name = name
          @Values = values
          @ExactMatch = exactmatch
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @ExactMatch = params['ExactMatch']
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

      # 登录审计列表实体
      class HostLoginList < TencentCloud::Common::AbstractModel
        # @param Id: 记录Id
        # @type Id: Integer
        # @param Uuid: Uuid串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uuid: String
        # @param MachineIp: 主机ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineIp: String
        # @param MachineName: 主机名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineName: String
        # @param UserName: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param SrcIp: 来源ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcIp: String
        # @param Status: 1:正常登录；2异地登录； 5已加白
        # @type Status: Integer
        # @param Country: 国家id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Country: Integer
        # @param City: 城市id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type City: Integer
        # @param Province: 省份id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Province: Integer
        # @param LoginTime: 登录时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoginTime: String
        # @param ModifyTime: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param IsRiskArea: 是否命中异地登录异常  1表示命中此类异常, 0表示未命中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsRiskArea: Integer
        # @param IsRiskUser: 是否命中异常用户异常 1表示命中此类异常, 0表示未命中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsRiskUser: Integer
        # @param IsRiskTime: 是否命中异常时间异常 1表示命中此类异常, 0表示未命中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsRiskTime: Integer
        # @param IsRiskSrcIp: 是否命中异常IP异常 1表示命中此类异常, 0表示未命中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsRiskSrcIp: Integer
        # @param RiskLevel: 危险等级：
        # 0 高危
        # 1 可疑
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: Integer
        # @param Location: 位置名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: String

        attr_accessor :Id, :Uuid, :MachineIp, :MachineName, :UserName, :SrcIp, :Status, :Country, :City, :Province, :LoginTime, :ModifyTime, :IsRiskArea, :IsRiskUser, :IsRiskTime, :IsRiskSrcIp, :RiskLevel, :Location
        
        def initialize(id=nil, uuid=nil, machineip=nil, machinename=nil, username=nil, srcip=nil, status=nil, country=nil, city=nil, province=nil, logintime=nil, modifytime=nil, isriskarea=nil, isriskuser=nil, isrisktime=nil, isrisksrcip=nil, risklevel=nil, location=nil)
          @Id = id
          @Uuid = uuid
          @MachineIp = machineip
          @MachineName = machinename
          @UserName = username
          @SrcIp = srcip
          @Status = status
          @Country = country
          @City = city
          @Province = province
          @LoginTime = logintime
          @ModifyTime = modifytime
          @IsRiskArea = isriskarea
          @IsRiskUser = isriskuser
          @IsRiskTime = isrisktime
          @IsRiskSrcIp = isrisksrcip
          @RiskLevel = risklevel
          @Location = location
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @UserName = params['UserName']
          @SrcIp = params['SrcIp']
          @Status = params['Status']
          @Country = params['Country']
          @City = params['City']
          @Province = params['Province']
          @LoginTime = params['LoginTime']
          @ModifyTime = params['ModifyTime']
          @IsRiskArea = params['IsRiskArea']
          @IsRiskUser = params['IsRiskUser']
          @IsRiskTime = params['IsRiskTime']
          @IsRiskSrcIp = params['IsRiskSrcIp']
          @RiskLevel = params['RiskLevel']
          @Location = params['Location']
        end
      end

      # 忽略的基线检测项信息
      class IgnoreBaselineRule < TencentCloud::Common::AbstractModel
        # @param RuleName: 基线检测项名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param RuleId: 基线检测项id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param ModifyTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param Fix: 修复建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fix: String
        # @param EffectHostCount: 影响主机数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EffectHostCount: Integer

        attr_accessor :RuleName, :RuleId, :ModifyTime, :Fix, :EffectHostCount
        
        def initialize(rulename=nil, ruleid=nil, modifytime=nil, fix=nil, effecthostcount=nil)
          @RuleName = rulename
          @RuleId = ruleid
          @ModifyTime = modifytime
          @Fix = fix
          @EffectHostCount = effecthostcount
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @RuleId = params['RuleId']
          @ModifyTime = params['ModifyTime']
          @Fix = params['Fix']
          @EffectHostCount = params['EffectHostCount']
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

      # InquiryPriceOpenProVersionPrepaid请求参数结构体
      class InquiryPriceOpenProVersionPrepaidRequest < TencentCloud::Common::AbstractModel
        # @param ChargePrepaid: 预付费模式(包年包月)参数设置。
        # @type ChargePrepaid: :class:`Tencentcloud::Cwp.v20180228.models.ChargePrepaid`
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

      # 异地登录合并后白名单
      class LoginWhiteCombinedInfo < TencentCloud::Common::AbstractModel
        # @param Places: 白名单地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Places: Array
        # @param UserName: 白名单用户（多个用户逗号隔开）
        # @type UserName: String
        # @param SrcIp: 白名单IP（多个IP逗号隔开）
        # @type SrcIp: String
        # @param Locale: 地域字符串
        # @type Locale: String
        # @param Remark: 备注
        # @type Remark: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param IsGlobal: 是否对全局生效, 1：全局有效 0: 对指定主机列表生效'
        # @type IsGlobal: Integer
        # @param Name: 白名单名字：IsLocal=1时固定为：全部服务器；单台机器时为机器内网IP，多台服务器时为服务器数量，如：11台
        # @type Name: String
        # @param Desc: 仅在单台服务器时，返回服务器名称
        # @type Desc: String
        # @param Id: 白名单ID
        # @type Id: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 最近修改时间
        # @type ModifyTime: String
        # @param Uuid: 服务器Uuid
        # @type Uuid: String

        attr_accessor :Places, :UserName, :SrcIp, :Locale, :Remark, :StartTime, :EndTime, :IsGlobal, :Name, :Desc, :Id, :CreateTime, :ModifyTime, :Uuid
        
        def initialize(places=nil, username=nil, srcip=nil, locale=nil, remark=nil, starttime=nil, endtime=nil, isglobal=nil, name=nil, desc=nil, id=nil, createtime=nil, modifytime=nil, uuid=nil)
          @Places = places
          @UserName = username
          @SrcIp = srcip
          @Locale = locale
          @Remark = remark
          @StartTime = starttime
          @EndTime = endtime
          @IsGlobal = isglobal
          @Name = name
          @Desc = desc
          @Id = id
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Uuid = uuid
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
          @UserName = params['UserName']
          @SrcIp = params['SrcIp']
          @Locale = params['Locale']
          @Remark = params['Remark']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IsGlobal = params['IsGlobal']
          @Name = params['Name']
          @Desc = params['Desc']
          @Id = params['Id']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Uuid = params['Uuid']
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

      # 主机列表
      class Machine < TencentCloud::Common::AbstractModel
        # @param MachineName: 主机名称。
        # @type MachineName: String
        # @param MachineOs: 主机系统。
        # @type MachineOs: String
        # @param MachineStatus: 主机状态。
        # <li>OFFLINE: 离线  </li>
        # <li>ONLINE: 在线</li>
        # <li>SHUTDOWN: 已关机</li>
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
        # @type RegionInfo: :class:`Tencentcloud::Cwp.v20180228.models.RegionInfo`
        # @param InstanceState: 实例状态 TERMINATED_PRO_VERSION 已销毁
        # @type InstanceState: String
        # @param LicenseStatus: 防篡改 授权状态 1 授权 0 未授权
        # @type LicenseStatus: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param HasAssetScan: 是否有资产扫描接口，0无，1有
        # @type HasAssetScan: Integer
        # @param MachineType: 机器所属专区类型 CVM 云服务器, BM 黑石, ECM 边缘计算, LH 轻量应用服务器 ,Other 混合云专区
        # @type MachineType: String

        attr_accessor :MachineName, :MachineOs, :MachineStatus, :Uuid, :Quuid, :VulNum, :MachineIp, :IsProVersion, :MachineWanIp, :PayMode, :MalwareNum, :Tag, :BaselineNum, :CyberAttackNum, :SecurityStatus, :InvasionNum, :RegionInfo, :InstanceState, :LicenseStatus, :ProjectId, :HasAssetScan, :MachineType
        
        def initialize(machinename=nil, machineos=nil, machinestatus=nil, uuid=nil, quuid=nil, vulnum=nil, machineip=nil, isproversion=nil, machinewanip=nil, paymode=nil, malwarenum=nil, tag=nil, baselinenum=nil, cyberattacknum=nil, securitystatus=nil, invasionnum=nil, regioninfo=nil, instancestate=nil, licensestatus=nil, projectid=nil, hasassetscan=nil, machinetype=nil)
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
          @InstanceState = instancestate
          @LicenseStatus = licensestatus
          @ProjectId = projectid
          @HasAssetScan = hasassetscan
          @MachineType = machinetype
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
          @InstanceState = params['InstanceState']
          @LicenseStatus = params['LicenseStatus']
          @ProjectId = params['ProjectId']
          @HasAssetScan = params['HasAssetScan']
          @MachineType = params['MachineType']
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

      # 木马列表集合
      class MalWareList < TencentCloud::Common::AbstractModel
        # @param HostIp: 服务器ip
        # @type HostIp: String
        # @param Uuid: 唯一UUID
        # @type Uuid: String
        # @param FilePath: 路径
        # @type FilePath: String
        # @param VirusName: 描述
        # @type VirusName: String
        # @param Status: 状态；4-:待处理，5-已信任，6-已隔离
        # @type Status: Integer
        # @param Id: 唯一ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Alias: 主机别名
        # @type Alias: String
        # @param Tags: 特性标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param FileCreateTime: 首次运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileCreateTime: String
        # @param FileModifierTime: 最近运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileModifierTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param LatestScanTime: 最近扫描时间
        # @type LatestScanTime: String

        attr_accessor :HostIp, :Uuid, :FilePath, :VirusName, :Status, :Id, :Alias, :Tags, :FileCreateTime, :FileModifierTime, :CreateTime, :LatestScanTime
        
        def initialize(hostip=nil, uuid=nil, filepath=nil, virusname=nil, status=nil, id=nil, _alias=nil, tags=nil, filecreatetime=nil, filemodifiertime=nil, createtime=nil, latestscantime=nil)
          @HostIp = hostip
          @Uuid = uuid
          @FilePath = filepath
          @VirusName = virusname
          @Status = status
          @Id = id
          @Alias = _alias
          @Tags = tags
          @FileCreateTime = filecreatetime
          @FileModifierTime = filemodifiertime
          @CreateTime = createtime
          @LatestScanTime = latestscantime
        end

        def deserialize(params)
          @HostIp = params['HostIp']
          @Uuid = params['Uuid']
          @FilePath = params['FilePath']
          @VirusName = params['VirusName']
          @Status = params['Status']
          @Id = params['Id']
          @Alias = params['Alias']
          @Tags = params['Tags']
          @FileCreateTime = params['FileCreateTime']
          @FileModifierTime = params['FileModifierTime']
          @CreateTime = params['CreateTime']
          @LatestScanTime = params['LatestScanTime']
        end
      end

      # 恶意文件详情
      class MalwareInfo < TencentCloud::Common::AbstractModel
        # @param VirusName: 病毒名称
        # @type VirusName: String
        # @param FileSize: 文件大小
        # @type FileSize: Integer
        # @param MD5: 文件MD5
        # @type MD5: String
        # @param FilePath: 文件地址
        # @type FilePath: String
        # @param FileCreateTime: 首次运行时间
        # @type FileCreateTime: String
        # @param FileModifierTime: 最近一次运行时间
        # @type FileModifierTime: String
        # @param HarmDescribe: 危害描述
        # @type HarmDescribe: String
        # @param SuggestScheme: 建议方案
        # @type SuggestScheme: String
        # @param ServersName: 服务器名称
        # @type ServersName: String
        # @param HostIp: 服务器IP
        # @type HostIp: String
        # @param ProcessName: 进程名称
        # @type ProcessName: String
        # @param ProcessID: 进程ID
        # @type ProcessID: String
        # @param Tags: 标签特性
        # @type Tags: Array
        # @param Breadth: 影响广度 // 暂时不提供
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Breadth: String
        # @param Heat: 查询热度 // 暂时不提供
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Heat: String
        # @param Id: 唯一ID
        # @type Id: Integer
        # @param FileName: 文件名称
        # @type FileName: String
        # @param CreateTime: 首次发现时间
        # @type CreateTime: String
        # @param LatestScanTime: 最近扫描时间
        # @type LatestScanTime: String
        # @param Reference: 参考链接
        # @type Reference: String

        attr_accessor :VirusName, :FileSize, :MD5, :FilePath, :FileCreateTime, :FileModifierTime, :HarmDescribe, :SuggestScheme, :ServersName, :HostIp, :ProcessName, :ProcessID, :Tags, :Breadth, :Heat, :Id, :FileName, :CreateTime, :LatestScanTime, :Reference
        
        def initialize(virusname=nil, filesize=nil, md5=nil, filepath=nil, filecreatetime=nil, filemodifiertime=nil, harmdescribe=nil, suggestscheme=nil, serversname=nil, hostip=nil, processname=nil, processid=nil, tags=nil, breadth=nil, heat=nil, id=nil, filename=nil, createtime=nil, latestscantime=nil, reference=nil)
          @VirusName = virusname
          @FileSize = filesize
          @MD5 = md5
          @FilePath = filepath
          @FileCreateTime = filecreatetime
          @FileModifierTime = filemodifiertime
          @HarmDescribe = harmdescribe
          @SuggestScheme = suggestscheme
          @ServersName = serversname
          @HostIp = hostip
          @ProcessName = processname
          @ProcessID = processid
          @Tags = tags
          @Breadth = breadth
          @Heat = heat
          @Id = id
          @FileName = filename
          @CreateTime = createtime
          @LatestScanTime = latestscantime
          @Reference = reference
        end

        def deserialize(params)
          @VirusName = params['VirusName']
          @FileSize = params['FileSize']
          @MD5 = params['MD5']
          @FilePath = params['FilePath']
          @FileCreateTime = params['FileCreateTime']
          @FileModifierTime = params['FileModifierTime']
          @HarmDescribe = params['HarmDescribe']
          @SuggestScheme = params['SuggestScheme']
          @ServersName = params['ServersName']
          @HostIp = params['HostIp']
          @ProcessName = params['ProcessName']
          @ProcessID = params['ProcessID']
          @Tags = params['Tags']
          @Breadth = params['Breadth']
          @Heat = params['Heat']
          @Id = params['Id']
          @FileName = params['FileName']
          @CreateTime = params['CreateTime']
          @LatestScanTime = params['LatestScanTime']
          @Reference = params['Reference']
        end
      end

      # 恶意文件风险提示列表信息
      class MalwareRisk < TencentCloud::Common::AbstractModel
        # @param MachineIp: 机器IP
        # @type MachineIp: String
        # @param VirusName: 病毒名
        # @type VirusName: String
        # @param CreateTime: 发现时间
        # @type CreateTime: String
        # @param Id: 唯一ID
        # @type Id: Integer

        attr_accessor :MachineIp, :VirusName, :CreateTime, :Id
        
        def initialize(machineip=nil, virusname=nil, createtime=nil, id=nil)
          @MachineIp = machineip
          @VirusName = virusname
          @CreateTime = createtime
          @Id = id
        end

        def deserialize(params)
          @MachineIp = params['MachineIp']
          @VirusName = params['VirusName']
          @CreateTime = params['CreateTime']
          @Id = params['Id']
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

      # ModifyBanMode请求参数结构体
      class ModifyBanModeRequest < TencentCloud::Common::AbstractModel
        # @param Mode: 阻断模式，STANDARD_MODE：标准阻断，DEEP_MODE：深度阻断
        # @type Mode: String
        # @param Ttl: 阻断时间，用于标准阻断模式
        # @type Ttl: Integer

        attr_accessor :Mode, :Ttl
        
        def initialize(mode=nil, ttl=nil)
          @Mode = mode
          @Ttl = ttl
        end

        def deserialize(params)
          @Mode = params['Mode']
          @Ttl = params['Ttl']
        end
      end

      # ModifyBanMode返回参数结构体
      class ModifyBanModeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBanStatus请求参数结构体
      class ModifyBanStatusRequest < TencentCloud::Common::AbstractModel
        # @param Status: 阻断状态 0:关闭 1:开启
        # @type Status: Integer

        attr_accessor :Status
        
        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # ModifyBanStatus返回参数结构体
      class ModifyBanStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBruteAttackRules请求参数结构体
      class ModifyBruteAttackRulesRequest < TencentCloud::Common::AbstractModel
        # @param Rules: 暴力破解判断规则
        # @type Rules: Array

        attr_accessor :Rules
        
        def initialize(rules=nil)
          @Rules = rules
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              bruteattackrule_tmp = BruteAttackRule.new
              bruteattackrule_tmp.deserialize(i)
              @Rules << bruteattackrule_tmp
            end
          end
        end
      end

      # ModifyBruteAttackRules返回参数结构体
      class ModifyBruteAttackRulesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMalwareTimingScanSettings请求参数结构体
      class ModifyMalwareTimingScanSettingsRequest < TencentCloud::Common::AbstractModel
        # @param CheckPattern: 检测模式 0 全盘检测  1快速检测
        # @type CheckPattern: Integer
        # @param StartTime: 检测周期 开始时间，如：02:00:00
        # @type StartTime: String
        # @param EndTime: 检测周期 超时结束时间，如：04:00:00
        # @type EndTime: String
        # @param IsGlobal: 是否全部服务器 1 全部 2 自选
        # @type IsGlobal: Integer
        # @param EnableScan: 定时检测开关 0 关闭 1开启
        # @type EnableScan: Integer
        # @param MonitoringPattern: 监控模式 0 标准 1深度
        # @type MonitoringPattern: Integer
        # @param Cycle: 扫描周期 默认每天 1
        # @type Cycle: Integer
        # @param RealTimeMonitoring: 实时监控 0 关闭 1开启
        # @type RealTimeMonitoring: Integer
        # @param QuuidList: 自选服务器时必须 主机quuid的string数组
        # @type QuuidList: Array
        # @param AutoIsolation: 是否自动隔离 1隔离 0 不隔离
        # @type AutoIsolation: Integer

        attr_accessor :CheckPattern, :StartTime, :EndTime, :IsGlobal, :EnableScan, :MonitoringPattern, :Cycle, :RealTimeMonitoring, :QuuidList, :AutoIsolation
        
        def initialize(checkpattern=nil, starttime=nil, endtime=nil, isglobal=nil, enablescan=nil, monitoringpattern=nil, cycle=nil, realtimemonitoring=nil, quuidlist=nil, autoisolation=nil)
          @CheckPattern = checkpattern
          @StartTime = starttime
          @EndTime = endtime
          @IsGlobal = isglobal
          @EnableScan = enablescan
          @MonitoringPattern = monitoringpattern
          @Cycle = cycle
          @RealTimeMonitoring = realtimemonitoring
          @QuuidList = quuidlist
          @AutoIsolation = autoisolation
        end

        def deserialize(params)
          @CheckPattern = params['CheckPattern']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IsGlobal = params['IsGlobal']
          @EnableScan = params['EnableScan']
          @MonitoringPattern = params['MonitoringPattern']
          @Cycle = params['Cycle']
          @RealTimeMonitoring = params['RealTimeMonitoring']
          @QuuidList = params['QuuidList']
          @AutoIsolation = params['AutoIsolation']
        end
      end

      # ModifyMalwareTimingScanSettings返回参数结构体
      class ModifyMalwareTimingScanSettingsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWarningSetting请求参数结构体
      class ModifyWarningSettingRequest < TencentCloud::Common::AbstractModel
        # @param WarningObjects: 告警设置的修改内容
        # @type WarningObjects: Array

        attr_accessor :WarningObjects
        
        def initialize(warningobjects=nil)
          @WarningObjects = warningobjects
        end

        def deserialize(params)
          unless params['WarningObjects'].nil?
            @WarningObjects = []
            params['WarningObjects'].each do |i|
              warningobject_tmp = WarningObject.new
              warningobject_tmp.deserialize(i)
              @WarningObjects << warningobject_tmp
            end
          end
        end
      end

      # ModifyWarningSetting返回参数结构体
      class ModifyWarningSettingResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWebPageProtectDir请求参数结构体
      class ModifyWebPageProtectDirRequest < TencentCloud::Common::AbstractModel
        # @param ProtectDirAddr: 网站防护目录地址
        # @type ProtectDirAddr: String
        # @param ProtectDirName: 网站防护目录名称
        # @type ProtectDirName: String
        # @param ProtectFileType: 防护文件类型,分号分割 ;
        # @type ProtectFileType: String
        # @param HostConfig: 防护机器列表信息
        # @type HostConfig: Array

        attr_accessor :ProtectDirAddr, :ProtectDirName, :ProtectFileType, :HostConfig
        
        def initialize(protectdiraddr=nil, protectdirname=nil, protectfiletype=nil, hostconfig=nil)
          @ProtectDirAddr = protectdiraddr
          @ProtectDirName = protectdirname
          @ProtectFileType = protectfiletype
          @HostConfig = hostconfig
        end

        def deserialize(params)
          @ProtectDirAddr = params['ProtectDirAddr']
          @ProtectDirName = params['ProtectDirName']
          @ProtectFileType = params['ProtectFileType']
          unless params['HostConfig'].nil?
            @HostConfig = []
            params['HostConfig'].each do |i|
              protecthostconfig_tmp = ProtectHostConfig.new
              protecthostconfig_tmp.deserialize(i)
              @HostConfig << protecthostconfig_tmp
            end
          end
        end
      end

      # ModifyWebPageProtectDir返回参数结构体
      class ModifyWebPageProtectDirResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWebPageProtectSetting请求参数结构体
      class ModifyWebPageProtectSettingRequest < TencentCloud::Common::AbstractModel
        # @param ModifyType: 需要操作的类型1 目录名称 2 防护文件类型
        # @type ModifyType: Integer
        # @param Value: 提交值
        # @type Value: String
        # @param Id: 配置对应的protect_path
        # @type Id: String

        attr_accessor :ModifyType, :Value, :Id
        
        def initialize(modifytype=nil, value=nil, id=nil)
          @ModifyType = modifytype
          @Value = value
          @Id = id
        end

        def deserialize(params)
          @ModifyType = params['ModifyType']
          @Value = params['Value']
          @Id = params['Id']
        end
      end

      # ModifyWebPageProtectSetting返回参数结构体
      class ModifyWebPageProtectSettingResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWebPageProtectSwitch请求参数结构体
      class ModifyWebPageProtectSwitchRequest < TencentCloud::Common::AbstractModel
        # @param SwitchType: 开关类型 1 防护开关  2 自动恢复开关 3 移除防护目录
        # @type SwitchType: Integer
        # @param Ids: 需要操作开关的网站 最大100条
        # @type Ids: Array
        # @param Status: 1 开启 0 关闭 SwitchType 为 1 | 2 必填;
        # @type Status: Integer

        attr_accessor :SwitchType, :Ids, :Status
        
        def initialize(switchtype=nil, ids=nil, status=nil)
          @SwitchType = switchtype
          @Ids = ids
          @Status = status
        end

        def deserialize(params)
          @SwitchType = params['SwitchType']
          @Ids = params['Ids']
          @Status = params['Status']
        end
      end

      # ModifyWebPageProtectSwitch返回参数结构体
      class ModifyWebPageProtectSwitchResponse < TencentCloud::Common::AbstractModel
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

      # 专家服务-月巡检报告
      class MonthInspectionReport < TencentCloud::Common::AbstractModel
        # @param ReportName: 巡检报告名称
        # @type ReportName: String
        # @param ReportPath: 巡检报告下载地址
        # @type ReportPath: String
        # @param ModifyTime: 巡检报告更新时间
        # @type ModifyTime: String

        attr_accessor :ReportName, :ReportPath, :ModifyTime
        
        def initialize(reportname=nil, reportpath=nil, modifytime=nil)
          @ReportName = reportname
          @ReportPath = reportpath
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @ReportName = params['ReportName']
          @ReportPath = params['ReportPath']
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
        # @type ChargePrepaid: :class:`Tencentcloud::Cwp.v20180228.models.ChargePrepaid`
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
        # @param MachineType: 云主机类型。(当前参数已作废,可以留空值 )
        # @type MachineType: String
        # @param MachineRegion: 机器所属地域。(当前参数已作废,可以留空值 )
        # @type MachineRegion: String
        # @param Quuids: 主机唯一标识Uuid数组。
        # 黑石的InstanceId，CVM的Uuid ,边缘计算的Uuid , 轻量应用服务器的Uuid ,混合云机器的Quuid 。 当前参数最大长度限制20
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

      # 操作系统名称
      class OsName < TencentCloud::Common::AbstractModel
        # @param Name: 系统名称
        # @type Name: String
        # @param MachineOSType: 操作系统类型枚举值
        # @type MachineOSType: Integer

        attr_accessor :Name, :MachineOSType
        
        def initialize(name=nil, machineostype=nil)
          @Name = name
          @MachineOSType = machineostype
        end

        def deserialize(params)
          @Name = params['Name']
          @MachineOSType = params['MachineOSType']
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
        # @param Location: 位置名称
        # @type Location: String

        attr_accessor :CityId, :ProvinceId, :CountryId, :Location
        
        def initialize(cityid=nil, provinceid=nil, countryid=nil, location=nil)
          @CityId = cityid
          @ProvinceId = provinceid
          @CountryId = countryid
          @Location = location
        end

        def deserialize(params)
          @CityId = params['CityId']
          @ProvinceId = params['ProvinceId']
          @CountryId = params['CountryId']
          @Location = params['Location']
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
        # @param Status: 处理状态：0-待处理 2-白名单
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
        # <li>CVM: 云服务器</li>
        # <li>BM: 黑石物理机</li>
        # <li>ECM: 边缘计算服务器</li>
        # <li>LH: 轻量应用服务器</li>
        # <li>Other: 混合云机器</li>
        # @type MachineType: String
        # @param MachineRegion: 主机所在地域。
        # 如：ap-guangzhou、ap-beijing
        # @type MachineRegion: String
        # @param Quuid: 主机唯一标识Uuid数组。
        # 黑石的InstanceId，CVM的Uuid ,边缘计算的Uuid , 轻量应用服务器的Uuid ,混合云机器的Quuid 。 当前参数最大长度限制20
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

      # 防护目录列表集
      class ProtectDirInfo < TencentCloud::Common::AbstractModel
        # @param DirName: 网站名称
        # @type DirName: String
        # @param DirPath: 网站防护目录地址
        # @type DirPath: String
        # @param RelatedServerNum: 关联服务器数
        # @type RelatedServerNum: Integer
        # @param ProtectServerNum: 防护服务器数
        # @type ProtectServerNum: Integer
        # @param NoProtectServerNum: 未防护服务器数
        # @type NoProtectServerNum: Integer
        # @param Id: 唯一ID
        # @type Id: String
        # @param ProtectStatus: 防护状态
        # @type ProtectStatus: Integer
        # @param ProtectException: 防护异常
        # @type ProtectException: Integer
        # @param AutoRestoreSwitchStatus: 自动恢复开关 (Filters 过滤Quuid 时 返回) 默认0
        # @type AutoRestoreSwitchStatus: Integer

        attr_accessor :DirName, :DirPath, :RelatedServerNum, :ProtectServerNum, :NoProtectServerNum, :Id, :ProtectStatus, :ProtectException, :AutoRestoreSwitchStatus
        
        def initialize(dirname=nil, dirpath=nil, relatedservernum=nil, protectservernum=nil, noprotectservernum=nil, id=nil, protectstatus=nil, protectexception=nil, autorestoreswitchstatus=nil)
          @DirName = dirname
          @DirPath = dirpath
          @RelatedServerNum = relatedservernum
          @ProtectServerNum = protectservernum
          @NoProtectServerNum = noprotectservernum
          @Id = id
          @ProtectStatus = protectstatus
          @ProtectException = protectexception
          @AutoRestoreSwitchStatus = autorestoreswitchstatus
        end

        def deserialize(params)
          @DirName = params['DirName']
          @DirPath = params['DirPath']
          @RelatedServerNum = params['RelatedServerNum']
          @ProtectServerNum = params['ProtectServerNum']
          @NoProtectServerNum = params['NoProtectServerNum']
          @Id = params['Id']
          @ProtectStatus = params['ProtectStatus']
          @ProtectException = params['ProtectException']
          @AutoRestoreSwitchStatus = params['AutoRestoreSwitchStatus']
        end
      end

      # 防护目录关联服务器列表信息
      class ProtectDirRelatedServer < TencentCloud::Common::AbstractModel
        # @param Id: 唯一ID
        # @type Id: String
        # @param HostName: 服务器名称
        # @type HostName: String
        # @param HostIp: 服务器IP
        # @type HostIp: String
        # @param MachineOs: 服务器系统
        # @type MachineOs: String
        # @param RelateDirNum: 关联目录数
        # @type RelateDirNum: Integer
        # @param ProtectStatus: 防护状态
        # @type ProtectStatus: Integer
        # @param ProtectSwitch: 防护开关
        # @type ProtectSwitch: Integer
        # @param AutoRestoreSwitchStatus: 自动恢复开关
        # @type AutoRestoreSwitchStatus: Integer
        # @param Quuid: 服务器唯一ID
        # @type Quuid: String
        # @param Authorization: 是否已经授权
        # @type Authorization: Boolean
        # @param Exception: 异常状态
        # @type Exception: Integer
        # @param Progress: 过渡进度
        # @type Progress: Integer
        # @param ExceptionMessage: 异常信息
        # @type ExceptionMessage: String

        attr_accessor :Id, :HostName, :HostIp, :MachineOs, :RelateDirNum, :ProtectStatus, :ProtectSwitch, :AutoRestoreSwitchStatus, :Quuid, :Authorization, :Exception, :Progress, :ExceptionMessage
        
        def initialize(id=nil, hostname=nil, hostip=nil, machineos=nil, relatedirnum=nil, protectstatus=nil, protectswitch=nil, autorestoreswitchstatus=nil, quuid=nil, authorization=nil, exception=nil, progress=nil, exceptionmessage=nil)
          @Id = id
          @HostName = hostname
          @HostIp = hostip
          @MachineOs = machineos
          @RelateDirNum = relatedirnum
          @ProtectStatus = protectstatus
          @ProtectSwitch = protectswitch
          @AutoRestoreSwitchStatus = autorestoreswitchstatus
          @Quuid = quuid
          @Authorization = authorization
          @Exception = exception
          @Progress = progress
          @ExceptionMessage = exceptionmessage
        end

        def deserialize(params)
          @Id = params['Id']
          @HostName = params['HostName']
          @HostIp = params['HostIp']
          @MachineOs = params['MachineOs']
          @RelateDirNum = params['RelateDirNum']
          @ProtectStatus = params['ProtectStatus']
          @ProtectSwitch = params['ProtectSwitch']
          @AutoRestoreSwitchStatus = params['AutoRestoreSwitchStatus']
          @Quuid = params['Quuid']
          @Authorization = params['Authorization']
          @Exception = params['Exception']
          @Progress = params['Progress']
          @ExceptionMessage = params['ExceptionMessage']
        end
      end

      # 防护事件列表信息
      class ProtectEventLists < TencentCloud::Common::AbstractModel
        # @param HostName: 服务器名称
        # @type HostName: String
        # @param HostIp: 服务器ip
        # @type HostIp: String
        # @param EventDir: 事件地址
        # @type EventDir: String
        # @param EventType: 事件类型 0-内容被修改恢复；1-权限被修改恢复；2-归属被修改恢复；3-被删除恢复；4-新增删除
        # @type EventType: Integer
        # @param EventStatus: 事件状态 1 已恢复 0 未恢复
        # @type EventStatus: Integer
        # @param CreateTime: 发现时间
        # @type CreateTime: String
        # @param RestoreTime: 恢复时间
        # @type RestoreTime: String
        # @param Id: 唯一ID
        # @type Id: Integer
        # @param FileType: 文件类型 0-常规文件；1-目录；2-软链
        # @type FileType: Integer

        attr_accessor :HostName, :HostIp, :EventDir, :EventType, :EventStatus, :CreateTime, :RestoreTime, :Id, :FileType
        
        def initialize(hostname=nil, hostip=nil, eventdir=nil, eventtype=nil, eventstatus=nil, createtime=nil, restoretime=nil, id=nil, filetype=nil)
          @HostName = hostname
          @HostIp = hostip
          @EventDir = eventdir
          @EventType = eventtype
          @EventStatus = eventstatus
          @CreateTime = createtime
          @RestoreTime = restoretime
          @Id = id
          @FileType = filetype
        end

        def deserialize(params)
          @HostName = params['HostName']
          @HostIp = params['HostIp']
          @EventDir = params['EventDir']
          @EventType = params['EventType']
          @EventStatus = params['EventStatus']
          @CreateTime = params['CreateTime']
          @RestoreTime = params['RestoreTime']
          @Id = params['Id']
          @FileType = params['FileType']
        end
      end

      # 防护机器信息
      class ProtectHostConfig < TencentCloud::Common::AbstractModel
        # @param Quuid: 机器唯一ID
        # @type Quuid: String
        # @param ProtectSwitch: 防护开关 0  关闭 1开启
        # @type ProtectSwitch: Integer
        # @param AutoRecovery: 自动恢复开关 0 关闭 1开启
        # @type AutoRecovery: Integer

        attr_accessor :Quuid, :ProtectSwitch, :AutoRecovery
        
        def initialize(quuid=nil, protectswitch=nil, autorecovery=nil)
          @Quuid = quuid
          @ProtectSwitch = protectswitch
          @AutoRecovery = autorecovery
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          @ProtectSwitch = params['ProtectSwitch']
          @AutoRecovery = params['AutoRecovery']
        end
      end

      # 机器授权到期信息
      class ProtectMachine < TencentCloud::Common::AbstractModel
        # @param HostName: 机器名称
        # @type HostName: String
        # @param HostIp: 机器IP
        # @type HostIp: String
        # @param SafeguardDirNum: 防护目录数
        # @type SafeguardDirNum: Integer

        attr_accessor :HostName, :HostIp, :SafeguardDirNum
        
        def initialize(hostname=nil, hostip=nil, safeguarddirnum=nil)
          @HostName = hostname
          @HostIp = hostip
          @SafeguardDirNum = safeguarddirnum
        end

        def deserialize(params)
          @HostName = params['HostName']
          @HostIp = params['HostIp']
          @SafeguardDirNum = params['SafeguardDirNum']
        end
      end

      # 授权机器信息
      class ProtectMachineInfo < TencentCloud::Common::AbstractModel
        # @param HostName: 机器名称
        # @type HostName: String
        # @param HostIp: 机器IP
        # @type HostIp: String
        # @param CreateTime: 开通时间
        # @type CreateTime: String
        # @param ExpireTime: 到期时间
        # @type ExpireTime: String

        attr_accessor :HostName, :HostIp, :CreateTime, :ExpireTime
        
        def initialize(hostname=nil, hostip=nil, createtime=nil, expiretime=nil)
          @HostName = hostname
          @HostIp = hostip
          @CreateTime = createtime
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @HostName = params['HostName']
          @HostIp = params['HostIp']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
        end
      end

      # 防护信息统计
      class ProtectStat < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Num: 数量
        # @type Num: Integer

        attr_accessor :Name, :Num
        
        def initialize(name=nil, num=nil)
          @Name = name
          @Num = num
        end

        def deserialize(params)
          @Name = params['Name']
          @Num = params['Num']
        end
      end

      # RecoverMalwares请求参数结构体
      class RecoverMalwaresRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 木马Id数组（最大100条）
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
        # @param SuccessIds: 恢复成功id数组，若无则返回空数组
        # @type SuccessIds: Array
        # @param FailedIds: 恢复失败id数组，若无则返回空数组
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
        # @param RegionNameEn: 地域英文名
        # @type RegionNameEn: String

        attr_accessor :Region, :RegionName, :RegionId, :RegionCode, :RegionNameEn
        
        def initialize(region=nil, regionname=nil, regionid=nil, regioncode=nil, regionnameen=nil)
          @Region = region
          @RegionName = regionname
          @RegionId = regionid
          @RegionCode = regioncode
          @RegionNameEn = regionnameen
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionId = params['RegionId']
          @RegionCode = params['RegionCode']
          @RegionNameEn = params['RegionNameEn']
        end
      end

      # 地域信息
      class RegionSet < TencentCloud::Common::AbstractModel
        # @param RegionName: 地域名称
        # @type RegionName: String
        # @param ZoneSet: 可用区信息
        # @type ZoneSet: Array

        attr_accessor :RegionName, :ZoneSet
        
        def initialize(regionname=nil, zoneset=nil)
          @RegionName = regionname
          @ZoneSet = zoneset
        end

        def deserialize(params)
          @RegionName = params['RegionName']
          unless params['ZoneSet'].nil?
            @ZoneSet = []
            params['ZoneSet'].each do |i|
              zoneinfo_tmp = ZoneInfo.new
              zoneinfo_tmp.deserialize(i)
              @ZoneSet << zoneinfo_tmp
            end
          end
        end
      end

      # RenewProVersion请求参数结构体
      class RenewProVersionRequest < TencentCloud::Common::AbstractModel
        # @param ChargePrepaid: 购买相关参数。
        # @type ChargePrepaid: :class:`Tencentcloud::Cwp.v20180228.models.ChargePrepaid`
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
        # @param Id: ID 主键
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
        # @param Status: 处理状态：0-待处理 2-白名单
        # @type Status: Integer
        # @param CreateTime: 产生时间
        # @type CreateTime: String
        # @param MachineName: 主机名
        # @type MachineName: String
        # @param ProcTree: 进程树
        # @type ProcTree: String
        # @param DetectBy: 检测方法
        # @type DetectBy: Integer

        attr_accessor :Id, :Uuid, :Quuid, :Hostip, :DstIp, :DstPort, :ProcessName, :FullPath, :CmdLine, :UserName, :UserGroup, :ParentProcName, :ParentProcUser, :ParentProcGroup, :ParentProcPath, :Status, :CreateTime, :MachineName, :ProcTree, :DetectBy
        
        def initialize(id=nil, uuid=nil, quuid=nil, hostip=nil, dstip=nil, dstport=nil, processname=nil, fullpath=nil, cmdline=nil, username=nil, usergroup=nil, parentprocname=nil, parentprocuser=nil, parentprocgroup=nil, parentprocpath=nil, status=nil, createtime=nil, machinename=nil, proctree=nil, detectby=nil)
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
          @DetectBy = detectby
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
          @DetectBy = params['DetectBy']
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

      # 恶意请求列表
      class RiskDnsList < TencentCloud::Common::AbstractModel
        # @param Url: 对外访问域名
        # @type Url: String
        # @param AccessCount: 访问次数
        # @type AccessCount: Integer
        # @param ProcessName: 进程名
        # @type ProcessName: String
        # @param ProcessMd5: 进程MD5
        # @type ProcessMd5: String
        # @param GlobalRuleId: 是否为全局规则，0否，1是
        # @type GlobalRuleId: Integer
        # @param UserRuleId: 用户规则id
        # @type UserRuleId: Integer
        # @param Status: 状态；0-待处理，2-已加白，3-非信任状态
        # @type Status: Integer
        # @param CreateTime: 首次访问时间
        # @type CreateTime: String
        # @param MergeTime: 最近访问时间
        # @type MergeTime: String
        # @param Quuid: 唯一 Quuid
        # @type Quuid: String
        # @param HostIp: 主机ip
        # @type HostIp: String
        # @param Alias: 别名
        # @type Alias: String
        # @param Description: 描述
        # @type Description: String
        # @param Id: 唯一ID
        # @type Id: Integer
        # @param Reference: 参考
        # @type Reference: String
        # @param CmdLine: 命令行
        # @type CmdLine: String
        # @param Pid: 进程号
        # @type Pid: Integer
        # @param Uuid: 唯一UUID
        # @type Uuid: String
        # @param SuggestScheme: 建议方案
        # @type SuggestScheme: String
        # @param Tags: 标签特性
        # @type Tags: Array

        attr_accessor :Url, :AccessCount, :ProcessName, :ProcessMd5, :GlobalRuleId, :UserRuleId, :Status, :CreateTime, :MergeTime, :Quuid, :HostIp, :Alias, :Description, :Id, :Reference, :CmdLine, :Pid, :Uuid, :SuggestScheme, :Tags
        
        def initialize(url=nil, accesscount=nil, processname=nil, processmd5=nil, globalruleid=nil, userruleid=nil, status=nil, createtime=nil, mergetime=nil, quuid=nil, hostip=nil, _alias=nil, description=nil, id=nil, reference=nil, cmdline=nil, pid=nil, uuid=nil, suggestscheme=nil, tags=nil)
          @Url = url
          @AccessCount = accesscount
          @ProcessName = processname
          @ProcessMd5 = processmd5
          @GlobalRuleId = globalruleid
          @UserRuleId = userruleid
          @Status = status
          @CreateTime = createtime
          @MergeTime = mergetime
          @Quuid = quuid
          @HostIp = hostip
          @Alias = _alias
          @Description = description
          @Id = id
          @Reference = reference
          @CmdLine = cmdline
          @Pid = pid
          @Uuid = uuid
          @SuggestScheme = suggestscheme
          @Tags = tags
        end

        def deserialize(params)
          @Url = params['Url']
          @AccessCount = params['AccessCount']
          @ProcessName = params['ProcessName']
          @ProcessMd5 = params['ProcessMd5']
          @GlobalRuleId = params['GlobalRuleId']
          @UserRuleId = params['UserRuleId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @MergeTime = params['MergeTime']
          @Quuid = params['Quuid']
          @HostIp = params['HostIp']
          @Alias = params['Alias']
          @Description = params['Description']
          @Id = params['Id']
          @Reference = params['Reference']
          @CmdLine = params['CmdLine']
          @Pid = params['Pid']
          @Uuid = params['Uuid']
          @SuggestScheme = params['SuggestScheme']
          @Tags = params['Tags']
        end
      end

      # ScanAsset请求参数结构体
      class ScanAssetRequest < TencentCloud::Common::AbstractModel
        # @param AssetTypeIds: 资产指纹类型id列表
        # @type AssetTypeIds: Array
        # @param Quuids: Quuid列表
        # @type Quuids: Array

        attr_accessor :AssetTypeIds, :Quuids
        
        def initialize(assettypeids=nil, quuids=nil)
          @AssetTypeIds = assettypeids
          @Quuids = quuids
        end

        def deserialize(params)
          @AssetTypeIds = params['AssetTypeIds']
          @Quuids = params['Quuids']
        end
      end

      # ScanAsset返回参数结构体
      class ScanAssetResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 扫描任务详情列表信息
      class ScanTaskDetails < TencentCloud::Common::AbstractModel
        # @param HostIp: 服务器IP
        # @type HostIp: String
        # @param HostName: 服务器名称
        # @type HostName: String
        # @param OsName: 操作系统
        # @type OsName: String
        # @param RiskNum: 风险数量
        # @type RiskNum: Integer
        # @param ScanBeginTime: 扫描开始时间
        # @type ScanBeginTime: String
        # @param ScanEndTime: 扫描结束时间
        # @type ScanEndTime: String
        # @param Uuid: 唯一Uuid
        # @type Uuid: String
        # @param Quuid: 唯一Quuid
        # @type Quuid: String
        # @param Status: 状态码
        # @type Status: String
        # @param Description: 描述
        # @type Description: String
        # @param Id: id唯一
        # @type Id: Integer
        # @param FailType: 失败详情
        # @type FailType: Integer

        attr_accessor :HostIp, :HostName, :OsName, :RiskNum, :ScanBeginTime, :ScanEndTime, :Uuid, :Quuid, :Status, :Description, :Id, :FailType
        
        def initialize(hostip=nil, hostname=nil, osname=nil, risknum=nil, scanbegintime=nil, scanendtime=nil, uuid=nil, quuid=nil, status=nil, description=nil, id=nil, failtype=nil)
          @HostIp = hostip
          @HostName = hostname
          @OsName = osname
          @RiskNum = risknum
          @ScanBeginTime = scanbegintime
          @ScanEndTime = scanendtime
          @Uuid = uuid
          @Quuid = quuid
          @Status = status
          @Description = description
          @Id = id
          @FailType = failtype
        end

        def deserialize(params)
          @HostIp = params['HostIp']
          @HostName = params['HostName']
          @OsName = params['OsName']
          @RiskNum = params['RiskNum']
          @ScanBeginTime = params['ScanBeginTime']
          @ScanEndTime = params['ScanEndTime']
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          @Status = params['Status']
          @Description = params['Description']
          @Id = params['Id']
          @FailType = params['FailType']
        end
      end

      # ScanVulAgain请求参数结构体
      class ScanVulAgainRequest < TencentCloud::Common::AbstractModel
        # @param EventIds: 漏洞事件id串，多个用英文逗号分隔
        # @type EventIds: String
        # @param Uuids: 重新检查的机器uuid,多个逗号分隔
        # @type Uuids: String

        attr_accessor :EventIds, :Uuids
        
        def initialize(eventids=nil, uuids=nil)
          @EventIds = eventids
          @Uuids = uuids
        end

        def deserialize(params)
          @EventIds = params['EventIds']
          @Uuids = params['Uuids']
        end
      end

      # ScanVulAgain返回参数结构体
      class ScanVulAgainResponse < TencentCloud::Common::AbstractModel
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

      # ScanVul请求参数结构体
      class ScanVulRequest < TencentCloud::Common::AbstractModel
        # @param VulCategories: 漏洞类型：1: web应用漏洞 2:系统组件漏洞 (多选英文;分隔)
        # @type VulCategories: String
        # @param VulLevels: 危害等级：1-低危；2-中危；3-高危；4-严重 (多选英文;分隔)
        # @type VulLevels: String
        # @param HostType: 服务器分类：1:专业版服务器；2:自选服务器
        # @type HostType: Integer
        # @param QuuidList: 自选服务器时生效，主机quuid的string数组
        # @type QuuidList: Array
        # @param VulEmergency: 是否是应急漏洞 0 否 1 是
        # @type VulEmergency: Integer
        # @param TimeoutPeriod: 超时时长 单位秒 默认 3600 秒
        # @type TimeoutPeriod: Integer
        # @param VulIds: 需要扫描的漏洞id
        # @type VulIds: Array

        attr_accessor :VulCategories, :VulLevels, :HostType, :QuuidList, :VulEmergency, :TimeoutPeriod, :VulIds
        
        def initialize(vulcategories=nil, vullevels=nil, hosttype=nil, quuidlist=nil, vulemergency=nil, timeoutperiod=nil, vulids=nil)
          @VulCategories = vulcategories
          @VulLevels = vullevels
          @HostType = hosttype
          @QuuidList = quuidlist
          @VulEmergency = vulemergency
          @TimeoutPeriod = timeoutperiod
          @VulIds = vulids
        end

        def deserialize(params)
          @VulCategories = params['VulCategories']
          @VulLevels = params['VulLevels']
          @HostType = params['HostType']
          @QuuidList = params['QuuidList']
          @VulEmergency = params['VulEmergency']
          @TimeoutPeriod = params['TimeoutPeriod']
          @VulIds = params['VulIds']
        end
      end

      # ScanVul返回参数结构体
      class ScanVulResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ScanVulSetting请求参数结构体
      class ScanVulSettingRequest < TencentCloud::Common::AbstractModel
        # @param TimerInterval: 定期检测间隔时间（天）
        # @type TimerInterval: Integer
        # @param VulCategories: 漏洞类型：1: web应用漏洞 2:系统组件漏洞, 以数组方式传参[1,2]
        # @type VulCategories: Array
        # @param VulLevels: 危害等级：1-低危；2-中危；3-高危；4-严重,以数组方式传参[1,2,3]
        # @type VulLevels: Array
        # @param TimerTime: 定期检测时间，如：02:10:50
        # @type TimerTime: String
        # @param VulEmergency: 是否是应急漏洞 0 否 1 是
        # @type VulEmergency: Integer
        # @param StartTime: 扫描开始时间，如：00:00
        # @type StartTime: String
        # @param EndTime: 扫描结束时间，如：08:00
        # @type EndTime: String
        # @param EnableScan: 是否开启扫描 1开启 0不开启
        # @type EnableScan: Integer

        attr_accessor :TimerInterval, :VulCategories, :VulLevels, :TimerTime, :VulEmergency, :StartTime, :EndTime, :EnableScan
        
        def initialize(timerinterval=nil, vulcategories=nil, vullevels=nil, timertime=nil, vulemergency=nil, starttime=nil, endtime=nil, enablescan=nil)
          @TimerInterval = timerinterval
          @VulCategories = vulcategories
          @VulLevels = vullevels
          @TimerTime = timertime
          @VulEmergency = vulemergency
          @StartTime = starttime
          @EndTime = endtime
          @EnableScan = enablescan
        end

        def deserialize(params)
          @TimerInterval = params['TimerInterval']
          @VulCategories = params['VulCategories']
          @VulLevels = params['VulLevels']
          @TimerTime = params['TimerTime']
          @VulEmergency = params['VulEmergency']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @EnableScan = params['EnableScan']
        end
      end

      # ScanVulSetting返回参数结构体
      class ScanVulSettingResponse < TencentCloud::Common::AbstractModel
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

      # 快速搜索模板
      class SearchTemplate < TencentCloud::Common::AbstractModel
        # @param Name: 检索名称
        # @type Name: String
        # @param LogType: 检索索引类型
        # @type LogType: String
        # @param Condition: 检索语句
        # @type Condition: String
        # @param TimeRange: 时间范围
        # @type TimeRange: String
        # @param Query: 转换的检索语句内容
        # @type Query: String
        # @param Flag: 检索方式。输入框检索：standard,过滤，检索：simple
        # @type Flag: String
        # @param DisplayData: 展示数据
        # @type DisplayData: String
        # @param Id: 规则ID
        # @type Id: Integer

        attr_accessor :Name, :LogType, :Condition, :TimeRange, :Query, :Flag, :DisplayData, :Id
        
        def initialize(name=nil, logtype=nil, condition=nil, timerange=nil, query=nil, flag=nil, displaydata=nil, id=nil)
          @Name = name
          @LogType = logtype
          @Condition = condition
          @TimeRange = timerange
          @Query = query
          @Flag = flag
          @DisplayData = displaydata
          @Id = id
        end

        def deserialize(params)
          @Name = params['Name']
          @LogType = params['LogType']
          @Condition = params['Condition']
          @TimeRange = params['TimeRange']
          @Query = params['Query']
          @Flag = params['Flag']
          @DisplayData = params['DisplayData']
          @Id = params['Id']
        end
      end

      # 安全事件消息数据。
      class SecurityDynamic < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端UUID。
        # @type Uuid: String
        # @param EventTime: 安全事件发生时间。
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

      # 安全事件统计列表
      class SecurityEventInfo < TencentCloud::Common::AbstractModel
        # @param EventCnt: 安全事件数
        # @type EventCnt: Integer
        # @param UuidCnt: 受影响机器数
        # @type UuidCnt: Integer

        attr_accessor :EventCnt, :UuidCnt
        
        def initialize(eventcnt=nil, uuidcnt=nil)
          @EventCnt = eventcnt
          @UuidCnt = uuidcnt
        end

        def deserialize(params)
          @EventCnt = params['EventCnt']
          @UuidCnt = params['UuidCnt']
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
        # @param Ids: 木马事件ID数组。(最大100条)
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
        # @param SuccessIds: 隔离成功的id数组，若无则返回空数组
        # @type SuccessIds: Array
        # @param FailedIds: 隔离失败的id数组，若无则返回空数组
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

      # 标准模式阻断配置
      class StandardModeConfig < TencentCloud::Common::AbstractModel
        # @param Ttl: 阻断时长，单位：秒
        # @type Ttl: Integer

        attr_accessor :Ttl
        
        def initialize(ttl=nil)
          @Ttl = ttl
        end

        def deserialize(params)
          @Ttl = params['Ttl']
        end
      end

      # StopNoticeBanTips请求参数结构体
      class StopNoticeBanTipsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # StopNoticeBanTips返回参数结构体
      class StopNoticeBanTipsResponse < TencentCloud::Common::AbstractModel
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

      # SyncAssetScan请求参数结构体
      class SyncAssetScanRequest < TencentCloud::Common::AbstractModel
        # @param Sync: 是否同步：true-是 false-否；默认false
        # @type Sync: Boolean

        attr_accessor :Sync
        
        def initialize(sync=nil)
          @Sync = sync
        end

        def deserialize(params)
          @Sync = params['Sync']
        end
      end

      # SyncAssetScan返回参数结构体
      class SyncAssetScanResponse < TencentCloud::Common::AbstractModel
        # @param State: 枚举值有(大写)：NOTASK（没有同步任务），SYNCING（同步中），FINISHED（同步完成）
        # @type State: String
        # @param LatestStartTime: 最新开始同步时间
        # @type LatestStartTime: String
        # @param LatestEndTime: 最新结束同步时间
        # @type LatestEndTime: String
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :State, :LatestStartTime, :LatestEndTime, :TaskId, :RequestId
        
        def initialize(state=nil, lateststarttime=nil, latestendtime=nil, taskid=nil, requestid=nil)
          @State = state
          @LatestStartTime = lateststarttime
          @LatestEndTime = latestendtime
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @State = params['State']
          @LatestStartTime = params['LatestStartTime']
          @LatestEndTime = params['LatestEndTime']
          @TaskId = params['TaskId']
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

      # TrustMalwares请求参数结构体
      class TrustMalwaresRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 木马ID数组（单次不超过的最大条数：100）
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

      # UntrustMalwares请求参数结构体
      class UntrustMalwaresRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 木马ID数组 (最大100条)
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

      # UpdateBaselineStrategy请求参数结构体
      class UpdateBaselineStrategyRequest < TencentCloud::Common::AbstractModel
        # @param StrategyId: 策略id
        # @type StrategyId: Integer
        # @param StrategyName: 策略名称
        # @type StrategyName: String
        # @param ScanCycle: 检测周期
        # @type ScanCycle: Integer
        # @param ScanAt: 定期检测时间，该时间下发扫描
        # @type ScanAt: String
        # @param CategoryIds: 该策略下选择的基线id数组
        # @type CategoryIds: Array
        # @param IsGlobal: 扫描范围是否全部服务器, 1:是  0:否, 为1则为全部专业版主机
        # @type IsGlobal: Integer
        # @param MachineType: 云主机类型：
        # cvm：腾讯云服务器
        # bm：裸金属
        # ecm：边缘计算主机
        # lh:轻量应用服务器
        # other:混合云机器
        # @type MachineType: String
        # @param RegionCode: 主机地域 ap-guangzhou
        # @type RegionCode: String
        # @param Quuids: 主机id数组
        # @type Quuids: Array

        attr_accessor :StrategyId, :StrategyName, :ScanCycle, :ScanAt, :CategoryIds, :IsGlobal, :MachineType, :RegionCode, :Quuids
        
        def initialize(strategyid=nil, strategyname=nil, scancycle=nil, scanat=nil, categoryids=nil, isglobal=nil, machinetype=nil, regioncode=nil, quuids=nil)
          @StrategyId = strategyid
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
          @StrategyId = params['StrategyId']
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

      # UpdateBaselineStrategy返回参数结构体
      class UpdateBaselineStrategyResponse < TencentCloud::Common::AbstractModel
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

      # UpdateMachineTags请求参数结构体
      class UpdateMachineTagsRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 机器 Quuid
        # @type Quuid: String
        # @param MachineRegion: 服务器地区 如: ap-guangzhou
        # @type MachineRegion: String
        # @param MachineArea: 服务器类型(CVM|BM|ECM|LH|Other)
        # @type MachineArea: String
        # @param TagIds: 标签ID，该操作会覆盖原有的标签列表
        # @type TagIds: Array

        attr_accessor :Quuid, :MachineRegion, :MachineArea, :TagIds
        
        def initialize(quuid=nil, machineregion=nil, machinearea=nil, tagids=nil)
          @Quuid = quuid
          @MachineRegion = machineregion
          @MachineArea = machinearea
          @TagIds = tagids
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          @MachineRegion = params['MachineRegion']
          @MachineArea = params['MachineArea']
          @TagIds = params['TagIds']
        end
      end

      # UpdateMachineTags返回参数结构体
      class UpdateMachineTagsResponse < TencentCloud::Common::AbstractModel
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

      # 漏洞详细信息
      class VulDetailInfo < TencentCloud::Common::AbstractModel
        # @param VulId: 漏洞ID
        # @type VulId: Integer
        # @param Level: 漏洞级别
        # @type Level: Integer
        # @param Name: 漏洞名称
        # @type Name: String
        # @param CveId: cve编号
        # @type CveId: String
        # @param VulCategory: 漏洞分类
        # @type VulCategory: Integer
        # @param Descript: 漏洞描述
        # @type Descript: String
        # @param Fix: 修复建议
        # @type Fix: String
        # @param Reference: 参考链接
        # @type Reference: String
        # @param CvssScore: CVSS评分
        # @type CvssScore: Float
        # @param Cvss: CVSS详情
        # @type Cvss: String
        # @param PublishTime: 发布时间
        # @type PublishTime: String

        attr_accessor :VulId, :Level, :Name, :CveId, :VulCategory, :Descript, :Fix, :Reference, :CvssScore, :Cvss, :PublishTime
        
        def initialize(vulid=nil, level=nil, name=nil, cveid=nil, vulcategory=nil, descript=nil, fix=nil, reference=nil, cvssscore=nil, cvss=nil, publishtime=nil)
          @VulId = vulid
          @Level = level
          @Name = name
          @CveId = cveid
          @VulCategory = vulcategory
          @Descript = descript
          @Fix = fix
          @Reference = reference
          @CvssScore = cvssscore
          @Cvss = cvss
          @PublishTime = publishtime
        end

        def deserialize(params)
          @VulId = params['VulId']
          @Level = params['Level']
          @Name = params['Name']
          @CveId = params['CveId']
          @VulCategory = params['VulCategory']
          @Descript = params['Descript']
          @Fix = params['Fix']
          @Reference = params['Reference']
          @CvssScore = params['CvssScore']
          @Cvss = params['Cvss']
          @PublishTime = params['PublishTime']
        end
      end

      # 漏洞数量按等级分布统计结果实体
      class VulLevelInfo < TencentCloud::Common::AbstractModel
        # @param VulLevel: // 危害等级：1-低危；2-中危；3-高危；4-严重
        # @type VulLevel: Integer
        # @param Count: 数量
        # @type Count: Integer

        attr_accessor :VulLevel, :Count
        
        def initialize(vullevel=nil, count=nil)
          @VulLevel = vullevel
          @Count = count
        end

        def deserialize(params)
          @VulLevel = params['VulLevel']
          @Count = params['Count']
        end
      end

      # 漏洞top统计实体
      class VulTopInfo < TencentCloud::Common::AbstractModel
        # @param VulName: 漏洞 名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulName: String
        # @param VulLevel: 危害等级：1-低危；2-中危；3-高危；4-严重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulLevel: Integer
        # @param VulCount: 漏洞数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulCount: Integer
        # @param VulId: 漏洞id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulId: Integer

        attr_accessor :VulName, :VulLevel, :VulCount, :VulId
        
        def initialize(vulname=nil, vullevel=nil, vulcount=nil, vulid=nil)
          @VulName = vulname
          @VulLevel = vullevel
          @VulCount = vulcount
          @VulId = vulid
        end

        def deserialize(params)
          @VulName = params['VulName']
          @VulLevel = params['VulLevel']
          @VulCount = params['VulCount']
          @VulId = params['VulId']
        end
      end

      # 告警设置列表
      class WarningInfoObj < TencentCloud::Common::AbstractModel
        # @param Type: 事件告警类型；1：离线，2：木马，3：异常登录，4：爆破，5：漏洞（已拆分为9-12四种类型）6：高危命令，7：反弹sell，8：本地提权，9：系统组件漏洞，10：wen应用漏洞，11：应急漏洞，12：安全基线 ,13: 防篡改
        # @type Type: Integer
        # @param DisablePhoneWarning: 1: 关闭告警 0: 开启告警
        # @type DisablePhoneWarning: Integer
        # @param BeginTime: 开始时间，格式: HH:mm
        # @type BeginTime: String
        # @param EndTime: 结束时间，格式: HH:mm
        # @type EndTime: String
        # @param TimeZone: 时区信息
        # @type TimeZone: String
        # @param ControlBit: 漏洞等级控制位（对应DB的十进制存储）
        # @type ControlBit: Integer
        # @param ControlBits: 漏洞等级控制位二进制，每一位对应页面漏洞等级的开启关闭：低中高（0:关闭；1：开启），例如：101 → 同时勾选低+高
        # @type ControlBits: String

        attr_accessor :Type, :DisablePhoneWarning, :BeginTime, :EndTime, :TimeZone, :ControlBit, :ControlBits
        
        def initialize(type=nil, disablephonewarning=nil, begintime=nil, endtime=nil, timezone=nil, controlbit=nil, controlbits=nil)
          @Type = type
          @DisablePhoneWarning = disablephonewarning
          @BeginTime = begintime
          @EndTime = endtime
          @TimeZone = timezone
          @ControlBit = controlbit
          @ControlBits = controlbits
        end

        def deserialize(params)
          @Type = params['Type']
          @DisablePhoneWarning = params['DisablePhoneWarning']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @TimeZone = params['TimeZone']
          @ControlBit = params['ControlBit']
          @ControlBits = params['ControlBits']
        end
      end

      # 告警更新或插入的参数
      class WarningObject < TencentCloud::Common::AbstractModel
        # @param Type: 事件告警类型；1：离线，2：木马，3：异常登录，4：爆破，5：漏洞（已拆分为9-12四种类型）6：高位命令，7：反弹sell，8：本地提权，9：系统组件漏洞，10：web应用漏洞，11：应急漏洞，12：安全基线
        # @type Type: Integer
        # @param DisablePhoneWarning: 1: 关闭告警 0: 开启告警
        # @type DisablePhoneWarning: Integer
        # @param BeginTime: 开始时间，格式: HH:mm
        # @type BeginTime: String
        # @param EndTime: 结束时间，格式: HH:mm
        # @type EndTime: String
        # @param ControlBits: 漏洞等级控制位二进制，每一位对应页面漏洞等级的开启关闭：低中高（0:关闭；1：开启），例如：101 → 同时勾选低+高；01→(登录审计)疑似不告警，高危告警
        # @type ControlBits: String

        attr_accessor :Type, :DisablePhoneWarning, :BeginTime, :EndTime, :ControlBits
        
        def initialize(type=nil, disablephonewarning=nil, begintime=nil, endtime=nil, controlbits=nil)
          @Type = type
          @DisablePhoneWarning = disablephonewarning
          @BeginTime = begintime
          @EndTime = endtime
          @ControlBits = controlbits
        end

        def deserialize(params)
          @Type = params['Type']
          @DisablePhoneWarning = params['DisablePhoneWarning']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @ControlBits = params['ControlBits']
        end
      end

      # 可用区信息
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param ZoneName: 可用区名称
        # @type ZoneName: String

        attr_accessor :ZoneName
        
        def initialize(zonename=nil)
          @ZoneName = zonename
        end

        def deserialize(params)
          @ZoneName = params['ZoneName']
        end
      end

    end
  end
end

