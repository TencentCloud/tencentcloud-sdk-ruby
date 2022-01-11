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
  module Tcss
    module V20201101
      # 容器运行时安全，子策略信息
      class AbnormalProcessChildRuleInfo < TencentCloud::Common::AbstractModel
        # @param RuleMode: 策略模式，   RULE_MODE_RELEASE: 放行
        #    RULE_MODE_ALERT: 告警
        #    RULE_MODE_HOLDUP:拦截
        # @type RuleMode: String
        # @param ProcessPath: 进程路径
        # @type ProcessPath: String
        # @param RuleId: 子策略id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: String

        attr_accessor :RuleMode, :ProcessPath, :RuleId
        
        def initialize(rulemode=nil, processpath=nil, ruleid=nil)
          @RuleMode = rulemode
          @ProcessPath = processpath
          @RuleId = ruleid
        end

        def deserialize(params)
          @RuleMode = params['RuleMode']
          @ProcessPath = params['ProcessPath']
          @RuleId = params['RuleId']
        end
      end

      # 运行时容器访问控制事件描述信息
      class AbnormalProcessEventDescription < TencentCloud::Common::AbstractModel
        # @param Description: 事件规则
        # @type Description: String
        # @param Solution: 解决方案
        # @type Solution: String
        # @param Remark: 事件备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param MatchRule: 命中规则详细信息
        # @type MatchRule: :class:`Tencentcloud::Tcss.v20201101.models.AbnormalProcessChildRuleInfo`
        # @param RuleName: 命中规则名字
        # @type RuleName: String
        # @param RuleId: 命中规则的id
        # @type RuleId: String

        attr_accessor :Description, :Solution, :Remark, :MatchRule, :RuleName, :RuleId
        
        def initialize(description=nil, solution=nil, remark=nil, matchrule=nil, rulename=nil, ruleid=nil)
          @Description = description
          @Solution = solution
          @Remark = remark
          @MatchRule = matchrule
          @RuleName = rulename
          @RuleId = ruleid
        end

        def deserialize(params)
          @Description = params['Description']
          @Solution = params['Solution']
          @Remark = params['Remark']
          unless params['MatchRule'].nil?
            @MatchRule = AbnormalProcessChildRuleInfo.new
            @MatchRule.deserialize(params['MatchRule'])
          end
          @RuleName = params['RuleName']
          @RuleId = params['RuleId']
        end
      end

      # 容器运行时安全异常进程信息
      class AbnormalProcessEventInfo < TencentCloud::Common::AbstractModel
        # @param ProcessPath: 进程目录
        # @type ProcessPath: String
        # @param EventType: 事件类型，MALICE_PROCESS_START:恶意进程启动
        # @type EventType: String
        # @param MatchRuleName: 命中规则
        # @type MatchRuleName: String
        # @param FoundTime: 生成时间
        # @type FoundTime: String
        # @param ContainerName: 容器名
        # @type ContainerName: String
        # @param ImageName: 镜像名
        # @type ImageName: String
        # @param Behavior: 动作执行结果，    BEHAVIOR_NONE: 无
        #     BEHAVIOR_ALERT: 告警
        #     BEHAVIOR_RELEASE：放行
        #     BEHAVIOR_HOLDUP_FAILED:拦截失败
        #     BEHAVIOR_HOLDUP_SUCCESSED：拦截失败
        # @type Behavior: String
        # @param Status: 状态，EVENT_UNDEAL:事件未处理
        #     EVENT_DEALED:事件已经处理
        #     EVENT_INGNORE：事件已经忽略
        # @type Status: String
        # @param Id: 事件记录的唯一id
        # @type Id: String
        # @param ImageId: 镜像id，用于跳转
        # @type ImageId: String
        # @param ContainerId: 容器id，用于跳转
        # @type ContainerId: String
        # @param Solution: 事件解决方案
        # @type Solution: String
        # @param Description: 事件详细描述
        # @type Description: String
        # @param MatchRuleId: 命中策略id
        # @type MatchRuleId: String
        # @param MatchAction: 命中规则行为：
        # RULE_MODE_RELEASE 放行
        # RULE_MODE_ALERT  告警
        # RULE_MODE_HOLDUP 拦截
        # @type MatchAction: String
        # @param MatchProcessPath: 命中规则进程信息
        # @type MatchProcessPath: String
        # @param RuleExist: 规则是否存在
        # @type RuleExist: Boolean
        # @param EventCount: 事件数量
        # @type EventCount: Integer
        # @param LatestFoundTime: 最近生成时间
        # @type LatestFoundTime: String
        # @param RuleId: 规则组Id
        # @type RuleId: String

        attr_accessor :ProcessPath, :EventType, :MatchRuleName, :FoundTime, :ContainerName, :ImageName, :Behavior, :Status, :Id, :ImageId, :ContainerId, :Solution, :Description, :MatchRuleId, :MatchAction, :MatchProcessPath, :RuleExist, :EventCount, :LatestFoundTime, :RuleId
        
        def initialize(processpath=nil, eventtype=nil, matchrulename=nil, foundtime=nil, containername=nil, imagename=nil, behavior=nil, status=nil, id=nil, imageid=nil, containerid=nil, solution=nil, description=nil, matchruleid=nil, matchaction=nil, matchprocesspath=nil, ruleexist=nil, eventcount=nil, latestfoundtime=nil, ruleid=nil)
          @ProcessPath = processpath
          @EventType = eventtype
          @MatchRuleName = matchrulename
          @FoundTime = foundtime
          @ContainerName = containername
          @ImageName = imagename
          @Behavior = behavior
          @Status = status
          @Id = id
          @ImageId = imageid
          @ContainerId = containerid
          @Solution = solution
          @Description = description
          @MatchRuleId = matchruleid
          @MatchAction = matchaction
          @MatchProcessPath = matchprocesspath
          @RuleExist = ruleexist
          @EventCount = eventcount
          @LatestFoundTime = latestfoundtime
          @RuleId = ruleid
        end

        def deserialize(params)
          @ProcessPath = params['ProcessPath']
          @EventType = params['EventType']
          @MatchRuleName = params['MatchRuleName']
          @FoundTime = params['FoundTime']
          @ContainerName = params['ContainerName']
          @ImageName = params['ImageName']
          @Behavior = params['Behavior']
          @Status = params['Status']
          @Id = params['Id']
          @ImageId = params['ImageId']
          @ContainerId = params['ContainerId']
          @Solution = params['Solution']
          @Description = params['Description']
          @MatchRuleId = params['MatchRuleId']
          @MatchAction = params['MatchAction']
          @MatchProcessPath = params['MatchProcessPath']
          @RuleExist = params['RuleExist']
          @EventCount = params['EventCount']
          @LatestFoundTime = params['LatestFoundTime']
          @RuleId = params['RuleId']
        end
      end

      # 运行时安全，异常进程检测策略
      class AbnormalProcessRuleInfo < TencentCloud::Common::AbstractModel
        # @param IsEnable: true:策略启用，false:策略禁用
        # @type IsEnable: Boolean
        # @param ImageIds: 生效镜像id，空数组代表全部镜像
        # @type ImageIds: Array
        # @param ChildRules: 用户策略的子策略数组
        # @type ChildRules: Array
        # @param RuleName: 策略名字
        # @type RuleName: String
        # @param RuleId: 策略id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: String
        # @param SystemChildRules: 系统策略的子策略数组
        # @type SystemChildRules: Array

        attr_accessor :IsEnable, :ImageIds, :ChildRules, :RuleName, :RuleId, :SystemChildRules
        
        def initialize(isenable=nil, imageids=nil, childrules=nil, rulename=nil, ruleid=nil, systemchildrules=nil)
          @IsEnable = isenable
          @ImageIds = imageids
          @ChildRules = childrules
          @RuleName = rulename
          @RuleId = ruleid
          @SystemChildRules = systemchildrules
        end

        def deserialize(params)
          @IsEnable = params['IsEnable']
          @ImageIds = params['ImageIds']
          unless params['ChildRules'].nil?
            @ChildRules = []
            params['ChildRules'].each do |i|
              abnormalprocesschildruleinfo_tmp = AbnormalProcessChildRuleInfo.new
              abnormalprocesschildruleinfo_tmp.deserialize(i)
              @ChildRules << abnormalprocesschildruleinfo_tmp
            end
          end
          @RuleName = params['RuleName']
          @RuleId = params['RuleId']
          unless params['SystemChildRules'].nil?
            @SystemChildRules = []
            params['SystemChildRules'].each do |i|
              abnormalprocesssystemchildruleinfo_tmp = AbnormalProcessSystemChildRuleInfo.new
              abnormalprocesssystemchildruleinfo_tmp.deserialize(i)
              @SystemChildRules << abnormalprocesssystemchildruleinfo_tmp
            end
          end
        end
      end

      # 异常进程系统策略的子策略信息
      class AbnormalProcessSystemChildRuleInfo < TencentCloud::Common::AbstractModel
        # @param RuleId: 子策略Id
        # @type RuleId: String
        # @param IsEnable: 子策略状态，true为开启，false为关闭
        # @type IsEnable: Boolean
        # @param RuleMode: 策略模式,  RULE_MODE_RELEASE: 放行
        #    RULE_MODE_ALERT: 告警
        #    RULE_MODE_HOLDUP:拦截
        # @type RuleMode: String
        # @param RuleType: 子策略检测的行为类型
        # PROXY_TOOL： 代理软件
        # TRANSFER_CONTROL：横向渗透
        # ATTACK_CMD： 恶意命令
        # REVERSE_SHELL：反弹shell
        # FILELESS：无文件程序执行
        # RISK_CMD：高危命令
        # ABNORMAL_CHILD_PROC: 敏感服务异常子进程启动
        # @type RuleType: String

        attr_accessor :RuleId, :IsEnable, :RuleMode, :RuleType
        
        def initialize(ruleid=nil, isenable=nil, rulemode=nil, ruletype=nil)
          @RuleId = ruleid
          @IsEnable = isenable
          @RuleMode = rulemode
          @RuleType = ruletype
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @IsEnable = params['IsEnable']
          @RuleMode = params['RuleMode']
          @RuleType = params['RuleType']
        end
      end

      # 容器运行时安全，访问控制子策略信息
      class AccessControlChildRuleInfo < TencentCloud::Common::AbstractModel
        # @param RuleMode: 策略模式,  RULE_MODE_RELEASE: 放行
        #    RULE_MODE_ALERT: 告警
        #    RULE_MODE_HOLDUP:拦截
        # @type RuleMode: String
        # @param ProcessPath: 进程路径
        # @type ProcessPath: String
        # @param TargetFilePath: 被访问文件路径，仅仅在访问控制生效
        # @type TargetFilePath: String
        # @param RuleId: 子策略id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: String

        attr_accessor :RuleMode, :ProcessPath, :TargetFilePath, :RuleId
        
        def initialize(rulemode=nil, processpath=nil, targetfilepath=nil, ruleid=nil)
          @RuleMode = rulemode
          @ProcessPath = processpath
          @TargetFilePath = targetfilepath
          @RuleId = ruleid
        end

        def deserialize(params)
          @RuleMode = params['RuleMode']
          @ProcessPath = params['ProcessPath']
          @TargetFilePath = params['TargetFilePath']
          @RuleId = params['RuleId']
        end
      end

      # 运行时容器访问控制事件描述信息
      class AccessControlEventDescription < TencentCloud::Common::AbstractModel
        # @param Description: 事件规则
        # @type Description: String
        # @param Solution: 解决方案
        # @type Solution: String
        # @param Remark: 事件备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param MatchRule: 命中规则详细信息
        # @type MatchRule: :class:`Tencentcloud::Tcss.v20201101.models.AccessControlChildRuleInfo`
        # @param RuleName: 命中规则名字
        # @type RuleName: String
        # @param RuleId: 命中规则id
        # @type RuleId: String

        attr_accessor :Description, :Solution, :Remark, :MatchRule, :RuleName, :RuleId
        
        def initialize(description=nil, solution=nil, remark=nil, matchrule=nil, rulename=nil, ruleid=nil)
          @Description = description
          @Solution = solution
          @Remark = remark
          @MatchRule = matchrule
          @RuleName = rulename
          @RuleId = ruleid
        end

        def deserialize(params)
          @Description = params['Description']
          @Solution = params['Solution']
          @Remark = params['Remark']
          unless params['MatchRule'].nil?
            @MatchRule = AccessControlChildRuleInfo.new
            @MatchRule.deserialize(params['MatchRule'])
          end
          @RuleName = params['RuleName']
          @RuleId = params['RuleId']
        end
      end

      # 容器运行时安全访问控制事件信息
      class AccessControlEventInfo < TencentCloud::Common::AbstractModel
        # @param ProcessName: 进程名称
        # @type ProcessName: String
        # @param MatchRuleName: 命中规则名称
        # @type MatchRuleName: String
        # @param FoundTime: 生成时间
        # @type FoundTime: String
        # @param ContainerName: 容器名
        # @type ContainerName: String
        # @param ImageName: 镜像名
        # @type ImageName: String
        # @param Behavior: 动作执行结果，   BEHAVIOR_NONE: 无
        #     BEHAVIOR_ALERT: 告警
        #     BEHAVIOR_RELEASE：放行
        #     BEHAVIOR_HOLDUP_FAILED:拦截失败
        #     BEHAVIOR_HOLDUP_SUCCESSED：拦截失败
        # @type Behavior: String
        # @param Status: 状态0:未处理  “EVENT_UNDEAL”:事件未处理
        #     "EVENT_DEALED":事件已经处理
        #     "EVENT_INGNORE"：事件已经忽略
        # @type Status: String
        # @param Id: 事件记录的唯一id
        # @type Id: String
        # @param FileName: 文件名称
        # @type FileName: String
        # @param EventType: 事件类型， FILE_ABNORMAL_READ:文件异常读取
        # @type EventType: String
        # @param ImageId: 镜像id, 用于跳转
        # @type ImageId: String
        # @param ContainerId: 容器id, 用于跳转
        # @type ContainerId: String
        # @param Solution: 事件解决方案
        # @type Solution: String
        # @param Description: 事件详细描述
        # @type Description: String
        # @param MatchRuleId: 命中策略id
        # @type MatchRuleId: String
        # @param MatchAction: 命中规则行为：
        # RULE_MODE_RELEASE 放行
        # RULE_MODE_ALERT  告警
        # RULE_MODE_HOLDUP 拦截
        # @type MatchAction: String
        # @param MatchProcessPath: 命中规则进程信息
        # @type MatchProcessPath: String
        # @param MatchFilePath: 命中规则文件信息
        # @type MatchFilePath: String
        # @param FilePath: 文件路径，包含名字
        # @type FilePath: String
        # @param RuleExist: 规则是否存在
        # @type RuleExist: Boolean
        # @param EventCount: 事件数量
        # @type EventCount: Integer
        # @param LatestFoundTime: 最近生成时间
        # @type LatestFoundTime: String
        # @param RuleId: 规则组id
        # @type RuleId: String

        attr_accessor :ProcessName, :MatchRuleName, :FoundTime, :ContainerName, :ImageName, :Behavior, :Status, :Id, :FileName, :EventType, :ImageId, :ContainerId, :Solution, :Description, :MatchRuleId, :MatchAction, :MatchProcessPath, :MatchFilePath, :FilePath, :RuleExist, :EventCount, :LatestFoundTime, :RuleId
        
        def initialize(processname=nil, matchrulename=nil, foundtime=nil, containername=nil, imagename=nil, behavior=nil, status=nil, id=nil, filename=nil, eventtype=nil, imageid=nil, containerid=nil, solution=nil, description=nil, matchruleid=nil, matchaction=nil, matchprocesspath=nil, matchfilepath=nil, filepath=nil, ruleexist=nil, eventcount=nil, latestfoundtime=nil, ruleid=nil)
          @ProcessName = processname
          @MatchRuleName = matchrulename
          @FoundTime = foundtime
          @ContainerName = containername
          @ImageName = imagename
          @Behavior = behavior
          @Status = status
          @Id = id
          @FileName = filename
          @EventType = eventtype
          @ImageId = imageid
          @ContainerId = containerid
          @Solution = solution
          @Description = description
          @MatchRuleId = matchruleid
          @MatchAction = matchaction
          @MatchProcessPath = matchprocesspath
          @MatchFilePath = matchfilepath
          @FilePath = filepath
          @RuleExist = ruleexist
          @EventCount = eventcount
          @LatestFoundTime = latestfoundtime
          @RuleId = ruleid
        end

        def deserialize(params)
          @ProcessName = params['ProcessName']
          @MatchRuleName = params['MatchRuleName']
          @FoundTime = params['FoundTime']
          @ContainerName = params['ContainerName']
          @ImageName = params['ImageName']
          @Behavior = params['Behavior']
          @Status = params['Status']
          @Id = params['Id']
          @FileName = params['FileName']
          @EventType = params['EventType']
          @ImageId = params['ImageId']
          @ContainerId = params['ContainerId']
          @Solution = params['Solution']
          @Description = params['Description']
          @MatchRuleId = params['MatchRuleId']
          @MatchAction = params['MatchAction']
          @MatchProcessPath = params['MatchProcessPath']
          @MatchFilePath = params['MatchFilePath']
          @FilePath = params['FilePath']
          @RuleExist = params['RuleExist']
          @EventCount = params['EventCount']
          @LatestFoundTime = params['LatestFoundTime']
          @RuleId = params['RuleId']
        end
      end

      # 容器运行时，访问控制策略信息
      class AccessControlRuleInfo < TencentCloud::Common::AbstractModel
        # @param IsEnable: 开关,true:开启，false:禁用
        # @type IsEnable: Boolean
        # @param ImageIds: 生效惊现id，空数组代表全部镜像
        # @type ImageIds: Array
        # @param ChildRules: 用户策略的子策略数组
        # @type ChildRules: Array
        # @param RuleName: 策略名字
        # @type RuleName: String
        # @param RuleId: 策略id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: String
        # @param SystemChildRules: 系统策略的子策略数组
        # @type SystemChildRules: Array

        attr_accessor :IsEnable, :ImageIds, :ChildRules, :RuleName, :RuleId, :SystemChildRules
        
        def initialize(isenable=nil, imageids=nil, childrules=nil, rulename=nil, ruleid=nil, systemchildrules=nil)
          @IsEnable = isenable
          @ImageIds = imageids
          @ChildRules = childrules
          @RuleName = rulename
          @RuleId = ruleid
          @SystemChildRules = systemchildrules
        end

        def deserialize(params)
          @IsEnable = params['IsEnable']
          @ImageIds = params['ImageIds']
          unless params['ChildRules'].nil?
            @ChildRules = []
            params['ChildRules'].each do |i|
              accesscontrolchildruleinfo_tmp = AccessControlChildRuleInfo.new
              accesscontrolchildruleinfo_tmp.deserialize(i)
              @ChildRules << accesscontrolchildruleinfo_tmp
            end
          end
          @RuleName = params['RuleName']
          @RuleId = params['RuleId']
          unless params['SystemChildRules'].nil?
            @SystemChildRules = []
            params['SystemChildRules'].each do |i|
              accesscontrolsystemchildruleinfo_tmp = AccessControlSystemChildRuleInfo.new
              accesscontrolsystemchildruleinfo_tmp.deserialize(i)
              @SystemChildRules << accesscontrolsystemchildruleinfo_tmp
            end
          end
        end
      end

      # 容器运行时安全，访问控制系统策略的子策略信息
      class AccessControlSystemChildRuleInfo < TencentCloud::Common::AbstractModel
        # @param RuleId: 子策略Id
        # @type RuleId: String
        # @param RuleMode: 策略模式,  RULE_MODE_RELEASE: 放行
        #    RULE_MODE_ALERT: 告警
        #    RULE_MODE_HOLDUP:拦截
        # @type RuleMode: String
        # @param IsEnable: 子策略状态，true为开启，false为关闭
        # @type IsEnable: Boolean
        # @param RuleType: 子策略检测的入侵行为类型
        # CHANGE_CRONTAB：篡改计划任务
        # CHANGE_SYS_BIN：篡改系统程序
        # CHANGE_USRCFG：篡改用户配置
        # @type RuleType: String

        attr_accessor :RuleId, :RuleMode, :IsEnable, :RuleType
        
        def initialize(ruleid=nil, rulemode=nil, isenable=nil, ruletype=nil)
          @RuleId = ruleid
          @RuleMode = rulemode
          @IsEnable = isenable
          @RuleType = ruletype
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleMode = params['RuleMode']
          @IsEnable = params['IsEnable']
          @RuleType = params['RuleType']
        end
      end

      # AddAssetImageRegistryRegistryDetail请求参数结构体
      class AddAssetImageRegistryRegistryDetailRequest < TencentCloud::Common::AbstractModel
        # @param Name: 仓库名
        # @type Name: String
        # @param Username: 用户名
        # @type Username: String
        # @param Password: 密码
        # @type Password: String
        # @param Url: 仓库url
        # @type Url: String
        # @param RegistryType: 仓库类型，列表：harbor
        # @type RegistryType: String
        # @param NetType: 网络类型，列表：public（公网）
        # @type NetType: String
        # @param RegistryVersion: 仓库版本
        # @type RegistryVersion: String
        # @param RegistryRegion: 区域，列表：default（默认）
        # @type RegistryRegion: String
        # @param SpeedLimit: 限速
        # @type SpeedLimit: Integer

        attr_accessor :Name, :Username, :Password, :Url, :RegistryType, :NetType, :RegistryVersion, :RegistryRegion, :SpeedLimit
        
        def initialize(name=nil, username=nil, password=nil, url=nil, registrytype=nil, nettype=nil, registryversion=nil, registryregion=nil, speedlimit=nil)
          @Name = name
          @Username = username
          @Password = password
          @Url = url
          @RegistryType = registrytype
          @NetType = nettype
          @RegistryVersion = registryversion
          @RegistryRegion = registryregion
          @SpeedLimit = speedlimit
        end

        def deserialize(params)
          @Name = params['Name']
          @Username = params['Username']
          @Password = params['Password']
          @Url = params['Url']
          @RegistryType = params['RegistryType']
          @NetType = params['NetType']
          @RegistryVersion = params['RegistryVersion']
          @RegistryRegion = params['RegistryRegion']
          @SpeedLimit = params['SpeedLimit']
        end
      end

      # AddAssetImageRegistryRegistryDetail返回参数结构体
      class AddAssetImageRegistryRegistryDetailResponse < TencentCloud::Common::AbstractModel
        # @param HealthCheckErr: 连接错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheckErr: String
        # @param NameRepeatErr: 名称错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NameRepeatErr: String
        # @param RegistryId: 仓库唯一id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistryId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HealthCheckErr, :NameRepeatErr, :RegistryId, :RequestId
        
        def initialize(healthcheckerr=nil, namerepeaterr=nil, registryid=nil, requestid=nil)
          @HealthCheckErr = healthcheckerr
          @NameRepeatErr = namerepeaterr
          @RegistryId = registryid
          @RequestId = requestid
        end

        def deserialize(params)
          @HealthCheckErr = params['HealthCheckErr']
          @NameRepeatErr = params['NameRepeatErr']
          @RegistryId = params['RegistryId']
          @RequestId = params['RequestId']
        end
      end

      # AddCompliancePolicyItemToWhitelist请求参数结构体
      class AddCompliancePolicyItemToWhitelistRequest < TencentCloud::Common::AbstractModel
        # @param CustomerPolicyItemIdSet: 要忽略的检测项的ID的列表
        # @type CustomerPolicyItemIdSet: Array

        attr_accessor :CustomerPolicyItemIdSet
        
        def initialize(customerpolicyitemidset=nil)
          @CustomerPolicyItemIdSet = customerpolicyitemidset
        end

        def deserialize(params)
          @CustomerPolicyItemIdSet = params['CustomerPolicyItemIdSet']
        end
      end

      # AddCompliancePolicyItemToWhitelist返回参数结构体
      class AddCompliancePolicyItemToWhitelistResponse < TencentCloud::Common::AbstractModel
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

      # AddEditAbnormalProcessRule请求参数结构体
      class AddEditAbnormalProcessRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleInfo: 增加策略信息，策略id为空，编辑策略是id不能为空
        # @type RuleInfo: :class:`Tencentcloud::Tcss.v20201101.models.AbnormalProcessRuleInfo`
        # @param EventId: 仅在加白的时候带上
        # @type EventId: String

        attr_accessor :RuleInfo, :EventId
        
        def initialize(ruleinfo=nil, eventid=nil)
          @RuleInfo = ruleinfo
          @EventId = eventid
        end

        def deserialize(params)
          unless params['RuleInfo'].nil?
            @RuleInfo = AbnormalProcessRuleInfo.new
            @RuleInfo.deserialize(params['RuleInfo'])
          end
          @EventId = params['EventId']
        end
      end

      # AddEditAbnormalProcessRule返回参数结构体
      class AddEditAbnormalProcessRuleResponse < TencentCloud::Common::AbstractModel
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

      # AddEditAccessControlRule请求参数结构体
      class AddEditAccessControlRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleInfo: 增加策略信息，策略id为空，编辑策略是id不能为空
        # @type RuleInfo: :class:`Tencentcloud::Tcss.v20201101.models.AccessControlRuleInfo`
        # @param EventId: 仅在白名单时候使用
        # @type EventId: String

        attr_accessor :RuleInfo, :EventId
        
        def initialize(ruleinfo=nil, eventid=nil)
          @RuleInfo = ruleinfo
          @EventId = eventid
        end

        def deserialize(params)
          unless params['RuleInfo'].nil?
            @RuleInfo = AccessControlRuleInfo.new
            @RuleInfo.deserialize(params['RuleInfo'])
          end
          @EventId = params['EventId']
        end
      end

      # AddEditAccessControlRule返回参数结构体
      class AddEditAccessControlRuleResponse < TencentCloud::Common::AbstractModel
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

      # AddEditReverseShellWhiteList请求参数结构体
      class AddEditReverseShellWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param WhiteListInfo: 增加或编辑白名单信息。新增白名单时WhiteListInfo.id为空，编辑白名单WhiteListInfo.id不能为空。
        # @type WhiteListInfo: :class:`Tencentcloud::Tcss.v20201101.models.ReverseShellWhiteListInfo`
        # @param EventId: 仅在添加事件白名单时候使用
        # @type EventId: String

        attr_accessor :WhiteListInfo, :EventId
        
        def initialize(whitelistinfo=nil, eventid=nil)
          @WhiteListInfo = whitelistinfo
          @EventId = eventid
        end

        def deserialize(params)
          unless params['WhiteListInfo'].nil?
            @WhiteListInfo = ReverseShellWhiteListInfo.new
            @WhiteListInfo.deserialize(params['WhiteListInfo'])
          end
          @EventId = params['EventId']
        end
      end

      # AddEditReverseShellWhiteList返回参数结构体
      class AddEditReverseShellWhiteListResponse < TencentCloud::Common::AbstractModel
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

      # AddEditRiskSyscallWhiteList请求参数结构体
      class AddEditRiskSyscallWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param EventId: 仅在添加白名单时候使用
        # @type EventId: String
        # @param WhiteListInfo: 增加白名单信息，白名单id为空，编辑白名单id不能为空
        # @type WhiteListInfo: :class:`Tencentcloud::Tcss.v20201101.models.RiskSyscallWhiteListInfo`

        attr_accessor :EventId, :WhiteListInfo
        
        def initialize(eventid=nil, whitelistinfo=nil)
          @EventId = eventid
          @WhiteListInfo = whitelistinfo
        end

        def deserialize(params)
          @EventId = params['EventId']
          unless params['WhiteListInfo'].nil?
            @WhiteListInfo = RiskSyscallWhiteListInfo.new
            @WhiteListInfo.deserialize(params['WhiteListInfo'])
          end
        end
      end

      # AddEditRiskSyscallWhiteList返回参数结构体
      class AddEditRiskSyscallWhiteListResponse < TencentCloud::Common::AbstractModel
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

      # AddEditWarningRules请求参数结构体
      class AddEditWarningRulesRequest < TencentCloud::Common::AbstractModel
        # @param WarningRules: 告警开关策略
        # @type WarningRules: Array

        attr_accessor :WarningRules
        
        def initialize(warningrules=nil)
          @WarningRules = warningrules
        end

        def deserialize(params)
          unless params['WarningRules'].nil?
            @WarningRules = []
            params['WarningRules'].each do |i|
              warningrule_tmp = WarningRule.new
              warningrule_tmp.deserialize(i)
              @WarningRules << warningrule_tmp
            end
          end
        end
      end

      # AddEditWarningRules返回参数结构体
      class AddEditWarningRulesResponse < TencentCloud::Common::AbstractModel
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

      # 受影响的节点类型结构体
      class AffectedNodeItem < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 集群名字
        # @type ClusterName: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param PrivateIpAddresses: 内网ip地址
        # @type PrivateIpAddresses: String
        # @param InstanceRole: 节点的角色，Master、Work等
        # @type InstanceRole: String
        # @param ClusterVersion: k8s版本
        # @type ClusterVersion: String
        # @param ContainerRuntime: 运行时组件,docker或者containerd
        # @type ContainerRuntime: String
        # @param Region: 区域
        # @type Region: String
        # @param VerifyInfo: 检查结果的验证信息
        # @type VerifyInfo: String

        attr_accessor :ClusterId, :ClusterName, :InstanceId, :PrivateIpAddresses, :InstanceRole, :ClusterVersion, :ContainerRuntime, :Region, :VerifyInfo
        
        def initialize(clusterid=nil, clustername=nil, instanceid=nil, privateipaddresses=nil, instancerole=nil, clusterversion=nil, containerruntime=nil, region=nil, verifyinfo=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @InstanceId = instanceid
          @PrivateIpAddresses = privateipaddresses
          @InstanceRole = instancerole
          @ClusterVersion = clusterversion
          @ContainerRuntime = containerruntime
          @Region = region
          @VerifyInfo = verifyinfo
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @InstanceId = params['InstanceId']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @InstanceRole = params['InstanceRole']
          @ClusterVersion = params['ClusterVersion']
          @ContainerRuntime = params['ContainerRuntime']
          @Region = params['Region']
          @VerifyInfo = params['VerifyInfo']
        end
      end

      # 集群安全检查受影响的工作负载Item
      class AffectedWorkloadItem < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id
        # @type ClusterId: String
        # @param ClusterName: 集群名字
        # @type ClusterName: String
        # @param WorkloadName: 工作负载名称
        # @type WorkloadName: String
        # @param WorkloadType: 工作负载类型
        # @type WorkloadType: String
        # @param Region: 区域
        # @type Region: String
        # @param VerifyInfo: 检测结果的验证信息
        # @type VerifyInfo: String

        attr_accessor :ClusterId, :ClusterName, :WorkloadName, :WorkloadType, :Region, :VerifyInfo
        
        def initialize(clusterid=nil, clustername=nil, workloadname=nil, workloadtype=nil, region=nil, verifyinfo=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @WorkloadName = workloadname
          @WorkloadType = workloadtype
          @Region = region
          @VerifyInfo = verifyinfo
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @WorkloadName = params['WorkloadName']
          @WorkloadType = params['WorkloadType']
          @Region = params['Region']
          @VerifyInfo = params['VerifyInfo']
        end
      end

      # 容器安全
      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
      # 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class AssetFilters < TencentCloud::Common::AbstractModel
        # @param Name: 过滤键的名称
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

      # 容器安全资产镜像简略信息
      class AssetSimpleImageInfo < TencentCloud::Common::AbstractModel
        # @param ImageID: 镜像ID
        # @type ImageID: String
        # @param ImageName: 镜像名称
        # @type ImageName: String
        # @param ContainerCnt: 关联容器个数
        # @type ContainerCnt: Integer
        # @param ScanTime: 最后扫描时间
        # @type ScanTime: String
        # @param Size: 镜像大小
        # @type Size: Integer

        attr_accessor :ImageID, :ImageName, :ContainerCnt, :ScanTime, :Size
        
        def initialize(imageid=nil, imagename=nil, containercnt=nil, scantime=nil, size=nil)
          @ImageID = imageid
          @ImageName = imagename
          @ContainerCnt = containercnt
          @ScanTime = scantime
          @Size = size
        end

        def deserialize(params)
          @ImageID = params['ImageID']
          @ImageName = params['ImageName']
          @ContainerCnt = params['ContainerCnt']
          @ScanTime = params['ScanTime']
          @Size = params['Size']
        end
      end

      # CheckRepeatAssetImageRegistry请求参数结构体
      class CheckRepeatAssetImageRegistryRequest < TencentCloud::Common::AbstractModel
        # @param Name: 仓库名
        # @type Name: String

        attr_accessor :Name
        
        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # CheckRepeatAssetImageRegistry返回参数结构体
      class CheckRepeatAssetImageRegistryResponse < TencentCloud::Common::AbstractModel
        # @param IsRepeat: 是否重复
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsRepeat: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsRepeat, :RequestId
        
        def initialize(isrepeat=nil, requestid=nil)
          @IsRepeat = isrepeat
          @RequestId = requestid
        end

        def deserialize(params)
          @IsRepeat = params['IsRepeat']
          @RequestId = params['RequestId']
        end
      end

      # 表示一条集群安全检测项的详细信息
      class ClusterCheckItem < TencentCloud::Common::AbstractModel
        # @param CheckItemId: 唯一的检测项的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckItemId: Integer
        # @param Name: 风险项的名称
        # @type Name: String
        # @param ItemDetail: 检测项详细描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemDetail: String
        # @param RiskLevel: 威胁等级。严重Serious,高危High,中危Middle,提示Hint
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: String
        # @param RiskTarget: 检查对象、风险对象.Runc,Kubelet,Containerd,Pods
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskTarget: String
        # @param RiskType: 风险类别,漏洞风险CVERisk,配置风险ConfigRisk
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskType: String
        # @param RiskAttribute: 检测项所属的风险类型,权限提升:PrivilegePromotion,拒绝服务:RefuseService,目录穿越:DirectoryEscape,未授权访问:UnauthorizedAccess,权限许可和访问控制问题:PrivilegeAndAccessControl,敏感信息泄露:SensitiveInfoLeak
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskAttribute: String
        # @param RiskProperty: 风险特征,Tag.存在EXP:ExistEXP,存在POD:ExistPOC,无需重启:NoNeedReboot, 服务重启:ServerRestart,远程信息泄露:RemoteInfoLeak,远程拒绝服务:RemoteRefuseService,远程利用:RemoteExploit,远程执行:RemoteExecute
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskProperty: String
        # @param CVENumber: CVE编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVENumber: String
        # @param DiscoverTime: 披露时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscoverTime: String
        # @param Solution: 解决方案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Solution: String
        # @param CVSS: CVSS信息,用于画图
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVSS: String
        # @param CVSSScore: CVSS分数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVSSScore: String
        # @param RelateLink: 参考连接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelateLink: String
        # @param AffectedType: 影响类型，为Node或者Workload
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AffectedType: String
        # @param AffectedVersion: 受影响的版本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AffectedVersion: String

        attr_accessor :CheckItemId, :Name, :ItemDetail, :RiskLevel, :RiskTarget, :RiskType, :RiskAttribute, :RiskProperty, :CVENumber, :DiscoverTime, :Solution, :CVSS, :CVSSScore, :RelateLink, :AffectedType, :AffectedVersion
        
        def initialize(checkitemid=nil, name=nil, itemdetail=nil, risklevel=nil, risktarget=nil, risktype=nil, riskattribute=nil, riskproperty=nil, cvenumber=nil, discovertime=nil, solution=nil, cvss=nil, cvssscore=nil, relatelink=nil, affectedtype=nil, affectedversion=nil)
          @CheckItemId = checkitemid
          @Name = name
          @ItemDetail = itemdetail
          @RiskLevel = risklevel
          @RiskTarget = risktarget
          @RiskType = risktype
          @RiskAttribute = riskattribute
          @RiskProperty = riskproperty
          @CVENumber = cvenumber
          @DiscoverTime = discovertime
          @Solution = solution
          @CVSS = cvss
          @CVSSScore = cvssscore
          @RelateLink = relatelink
          @AffectedType = affectedtype
          @AffectedVersion = affectedversion
        end

        def deserialize(params)
          @CheckItemId = params['CheckItemId']
          @Name = params['Name']
          @ItemDetail = params['ItemDetail']
          @RiskLevel = params['RiskLevel']
          @RiskTarget = params['RiskTarget']
          @RiskType = params['RiskType']
          @RiskAttribute = params['RiskAttribute']
          @RiskProperty = params['RiskProperty']
          @CVENumber = params['CVENumber']
          @DiscoverTime = params['DiscoverTime']
          @Solution = params['Solution']
          @CVSS = params['CVSS']
          @CVSSScore = params['CVSSScore']
          @RelateLink = params['RelateLink']
          @AffectedType = params['AffectedType']
          @AffectedVersion = params['AffectedVersion']
        end
      end

      # 集群检查任务入参
      class ClusterCheckTaskItem < TencentCloud::Common::AbstractModel
        # @param ClusterId: 指定要扫描的集群ID
        # @type ClusterId: String
        # @param ClusterRegion: 集群所属地域
        # @type ClusterRegion: String
        # @param NodeIp: 指定要扫描的节点IP
        # @type NodeIp: String
        # @param WorkloadName: 按照要扫描的workload名字
        # @type WorkloadName: String

        attr_accessor :ClusterId, :ClusterRegion, :NodeIp, :WorkloadName
        
        def initialize(clusterid=nil, clusterregion=nil, nodeip=nil, workloadname=nil)
          @ClusterId = clusterid
          @ClusterRegion = clusterregion
          @NodeIp = nodeip
          @WorkloadName = workloadname
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterRegion = params['ClusterRegion']
          @NodeIp = params['NodeIp']
          @WorkloadName = params['WorkloadName']
        end
      end

      # CreateCheckComponent的入口参数,用于批量安装防御容器
      class ClusterCreateComponentItem < TencentCloud::Common::AbstractModel
        # @param ClusterId: 要安装组件的集群ID。
        # @type ClusterId: String
        # @param ClusterRegion: 该集群对应的地域
        # @type ClusterRegion: String

        attr_accessor :ClusterId, :ClusterRegion
        
        def initialize(clusterid=nil, clusterregion=nil)
          @ClusterId = clusterid
          @ClusterRegion = clusterregion
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterRegion = params['ClusterRegion']
        end
      end

      # 集群资产返回的结构体
      class ClusterInfoItem < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param ClusterName: 集群名字
        # @type ClusterName: String
        # @param ClusterVersion: 集群版本
        # @type ClusterVersion: String
        # @param ClusterOs: 集群操作系统
        # @type ClusterOs: String
        # @param ClusterType: 集群类型
        # @type ClusterType: String
        # @param ClusterNodeNum: 集群节点数
        # @type ClusterNodeNum: Integer
        # @param Region: 集群区域
        # @type Region: String
        # @param DefenderStatus: 监控组件的状态，为Defender_Uninstall、Defender_Normal、Defender_Error、Defender_Installing
        # @type DefenderStatus: String
        # @param ClusterStatus: 集群状态
        # @type ClusterStatus: String
        # @param ClusterCheckMode: 集群的检测模式，为Cluster_Normal或者Cluster_Actived.
        # @type ClusterCheckMode: String
        # @param ClusterAutoCheck: 是否自动定期检测
        # @type ClusterAutoCheck: Boolean
        # @param DefenderErrorReason: 防护容器部署失败原因，为UserDaemonSetNotReady时,和UnreadyNodeNum转成"N个节点防御容器为就绪"，其他错误直接展示
        # @type DefenderErrorReason: String
        # @param UnreadyNodeNum: 防御容器没有ready状态的节点数量
        # @type UnreadyNodeNum: Integer
        # @param SeriousRiskCount: 严重风险检查项的数量
        # @type SeriousRiskCount: Integer
        # @param HighRiskCount: 高风险检查项的数量
        # @type HighRiskCount: Integer
        # @param MiddleRiskCount: 中风险检查项的数量
        # @type MiddleRiskCount: Integer
        # @param HintRiskCount: 提示风险检查项的数量
        # @type HintRiskCount: Integer
        # @param CheckFailReason: 检查失败原因
        # @type CheckFailReason: String
        # @param CheckStatus: 检查状态,为Task_Running, NoRisk, HasRisk, Uncheck, Task_Error
        # @type CheckStatus: String
        # @param TaskCreateTime: 任务创建时间,检查时间
        # @type TaskCreateTime: String

        attr_accessor :ClusterId, :ClusterName, :ClusterVersion, :ClusterOs, :ClusterType, :ClusterNodeNum, :Region, :DefenderStatus, :ClusterStatus, :ClusterCheckMode, :ClusterAutoCheck, :DefenderErrorReason, :UnreadyNodeNum, :SeriousRiskCount, :HighRiskCount, :MiddleRiskCount, :HintRiskCount, :CheckFailReason, :CheckStatus, :TaskCreateTime
        
        def initialize(clusterid=nil, clustername=nil, clusterversion=nil, clusteros=nil, clustertype=nil, clusternodenum=nil, region=nil, defenderstatus=nil, clusterstatus=nil, clustercheckmode=nil, clusterautocheck=nil, defendererrorreason=nil, unreadynodenum=nil, seriousriskcount=nil, highriskcount=nil, middleriskcount=nil, hintriskcount=nil, checkfailreason=nil, checkstatus=nil, taskcreatetime=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @ClusterVersion = clusterversion
          @ClusterOs = clusteros
          @ClusterType = clustertype
          @ClusterNodeNum = clusternodenum
          @Region = region
          @DefenderStatus = defenderstatus
          @ClusterStatus = clusterstatus
          @ClusterCheckMode = clustercheckmode
          @ClusterAutoCheck = clusterautocheck
          @DefenderErrorReason = defendererrorreason
          @UnreadyNodeNum = unreadynodenum
          @SeriousRiskCount = seriousriskcount
          @HighRiskCount = highriskcount
          @MiddleRiskCount = middleriskcount
          @HintRiskCount = hintriskcount
          @CheckFailReason = checkfailreason
          @CheckStatus = checkstatus
          @TaskCreateTime = taskcreatetime
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @ClusterVersion = params['ClusterVersion']
          @ClusterOs = params['ClusterOs']
          @ClusterType = params['ClusterType']
          @ClusterNodeNum = params['ClusterNodeNum']
          @Region = params['Region']
          @DefenderStatus = params['DefenderStatus']
          @ClusterStatus = params['ClusterStatus']
          @ClusterCheckMode = params['ClusterCheckMode']
          @ClusterAutoCheck = params['ClusterAutoCheck']
          @DefenderErrorReason = params['DefenderErrorReason']
          @UnreadyNodeNum = params['UnreadyNodeNum']
          @SeriousRiskCount = params['SeriousRiskCount']
          @HighRiskCount = params['HighRiskCount']
          @MiddleRiskCount = params['MiddleRiskCount']
          @HintRiskCount = params['HintRiskCount']
          @CheckFailReason = params['CheckFailReason']
          @CheckStatus = params['CheckStatus']
          @TaskCreateTime = params['TaskCreateTime']
        end
      end

      # 风险项是检查完之后，有问题的检测项，并且加了一些检查结果信息。
      class ClusterRiskItem < TencentCloud::Common::AbstractModel
        # @param CheckItem: 检测项相关信息
        # @type CheckItem: :class:`Tencentcloud::Tcss.v20201101.models.ClusterCheckItem`
        # @param VerifyInfo: 验证信息
        # @type VerifyInfo: String
        # @param ErrorMessage: 事件描述,检查的错误信息
        # @type ErrorMessage: String
        # @param AffectedClusterCount: 受影响的集群数量
        # @type AffectedClusterCount: Integer
        # @param AffectedNodeCount: 受影响的节点数量
        # @type AffectedNodeCount: Integer

        attr_accessor :CheckItem, :VerifyInfo, :ErrorMessage, :AffectedClusterCount, :AffectedNodeCount
        
        def initialize(checkitem=nil, verifyinfo=nil, errormessage=nil, affectedclustercount=nil, affectednodecount=nil)
          @CheckItem = checkitem
          @VerifyInfo = verifyinfo
          @ErrorMessage = errormessage
          @AffectedClusterCount = affectedclustercount
          @AffectedNodeCount = affectednodecount
        end

        def deserialize(params)
          unless params['CheckItem'].nil?
            @CheckItem = ClusterCheckItem.new
            @CheckItem.deserialize(params['CheckItem'])
          end
          @VerifyInfo = params['VerifyInfo']
          @ErrorMessage = params['ErrorMessage']
          @AffectedClusterCount = params['AffectedClusterCount']
          @AffectedNodeCount = params['AffectedNodeCount']
        end
      end

      # 表示检测项所影响的资产的信息。
      class ComplianceAffectedAsset < TencentCloud::Common::AbstractModel
        # @param CustomerAssetId: 为客户分配的唯一的资产项的ID。
        # @type CustomerAssetId: Integer
        # @param AssetName: 资产项的名称。
        # @type AssetName: String
        # @param AssetType: 资产项的类型
        # @type AssetType: String
        # @param CheckStatus: 检测状态

        # CHECK_INIT, 待检测

        # CHECK_RUNNING, 检测中

        # CHECK_FINISHED, 检测完成

        # CHECK_FAILED, 检测失败
        # @type CheckStatus: String
        # @param NodeName: 节点名称。
        # @type NodeName: String
        # @param LastCheckTime: 上次检测的时间，格式为”YYYY-MM-DD HH:m::SS“。

        # 如果没有检测过，此处为”0000-00-00 00:00:00“。
        # @type LastCheckTime: String
        # @param CheckResult: 检测结果。取值为：

        # RESULT_FAILED: 未通过

        # RESULT_PASSED: 通过
        # @type CheckResult: String
        # @param HostIP: 主机IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostIP: String
        # @param ImageTag: 镜像的tag
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageTag: String

        attr_accessor :CustomerAssetId, :AssetName, :AssetType, :CheckStatus, :NodeName, :LastCheckTime, :CheckResult, :HostIP, :ImageTag
        
        def initialize(customerassetid=nil, assetname=nil, assettype=nil, checkstatus=nil, nodename=nil, lastchecktime=nil, checkresult=nil, hostip=nil, imagetag=nil)
          @CustomerAssetId = customerassetid
          @AssetName = assetname
          @AssetType = assettype
          @CheckStatus = checkstatus
          @NodeName = nodename
          @LastCheckTime = lastchecktime
          @CheckResult = checkresult
          @HostIP = hostip
          @ImageTag = imagetag
        end

        def deserialize(params)
          @CustomerAssetId = params['CustomerAssetId']
          @AssetName = params['AssetName']
          @AssetType = params['AssetType']
          @CheckStatus = params['CheckStatus']
          @NodeName = params['NodeName']
          @LastCheckTime = params['LastCheckTime']
          @CheckResult = params['CheckResult']
          @HostIP = params['HostIP']
          @ImageTag = params['ImageTag']
        end
      end

      # 表示一项资产的详情。
      class ComplianceAssetDetailInfo < TencentCloud::Common::AbstractModel
        # @param CustomerAssetId: 客户资产的ID。
        # @type CustomerAssetId: Integer
        # @param AssetType: 资产类别。
        # @type AssetType: String
        # @param AssetName: 资产的名称。
        # @type AssetName: String
        # @param NodeName: 资产所属的节点的名称。
        # @type NodeName: String
        # @param HostName: 资产所在的主机的名称。
        # @type HostName: String
        # @param HostIP: 资产所在的主机的IP。
        # @type HostIP: String
        # @param CheckStatus: 检测状态
        # CHECK_INIT, 待检测
        # CHECK_RUNNING, 检测中
        # CHECK_FINISHED, 检测完成
        # CHECK_FAILED, 检测失败
        # @type CheckStatus: String
        # @param PassedPolicyItemCount: 此类资产通过的检测项的数目。
        # @type PassedPolicyItemCount: Integer
        # @param FailedPolicyItemCount: 此类资产未通过的检测的数目。
        # @type FailedPolicyItemCount: Integer
        # @param LastCheckTime: 上次检测的时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastCheckTime: String
        # @param CheckResult: 检测结果：
        # RESULT_FAILED: 未通过。
        # RESULT_PASSED: 通过。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckResult: String
        # @param AssetStatus: 资产的运行状态。
        # @type AssetStatus: String
        # @param AssetCreateTime: 创建资产的时间。
        # ASSET_NORMAL: 正常运行，
        # ASSET_PAUSED: 暂停运行，
        # ASSET_STOPPED: 停止运行，
        # ASSET_ABNORMAL: 异常
        # @type AssetCreateTime: String

        attr_accessor :CustomerAssetId, :AssetType, :AssetName, :NodeName, :HostName, :HostIP, :CheckStatus, :PassedPolicyItemCount, :FailedPolicyItemCount, :LastCheckTime, :CheckResult, :AssetStatus, :AssetCreateTime
        
        def initialize(customerassetid=nil, assettype=nil, assetname=nil, nodename=nil, hostname=nil, hostip=nil, checkstatus=nil, passedpolicyitemcount=nil, failedpolicyitemcount=nil, lastchecktime=nil, checkresult=nil, assetstatus=nil, assetcreatetime=nil)
          @CustomerAssetId = customerassetid
          @AssetType = assettype
          @AssetName = assetname
          @NodeName = nodename
          @HostName = hostname
          @HostIP = hostip
          @CheckStatus = checkstatus
          @PassedPolicyItemCount = passedpolicyitemcount
          @FailedPolicyItemCount = failedpolicyitemcount
          @LastCheckTime = lastchecktime
          @CheckResult = checkresult
          @AssetStatus = assetstatus
          @AssetCreateTime = assetcreatetime
        end

        def deserialize(params)
          @CustomerAssetId = params['CustomerAssetId']
          @AssetType = params['AssetType']
          @AssetName = params['AssetName']
          @NodeName = params['NodeName']
          @HostName = params['HostName']
          @HostIP = params['HostIP']
          @CheckStatus = params['CheckStatus']
          @PassedPolicyItemCount = params['PassedPolicyItemCount']
          @FailedPolicyItemCount = params['FailedPolicyItemCount']
          @LastCheckTime = params['LastCheckTime']
          @CheckResult = params['CheckResult']
          @AssetStatus = params['AssetStatus']
          @AssetCreateTime = params['AssetCreateTime']
        end
      end

      # 表示一项资产的信息。
      class ComplianceAssetInfo < TencentCloud::Common::AbstractModel
        # @param CustomerAssetId: 客户资产的ID。
        # @type CustomerAssetId: Integer
        # @param AssetType: 资产类别。
        # @type AssetType: String
        # @param AssetName: 资产的名称。
        # @type AssetName: String
        # @param ImageTag: 当资产为镜像时，这个字段为镜像Tag。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageTag: String
        # @param HostIP: 资产所在的主机IP。
        # @type HostIP: String
        # @param NodeName: 资产所属的节点的名称
        # @type NodeName: String
        # @param CheckStatus: 检测状态

        # CHECK_INIT, 待检测

        # CHECK_RUNNING, 检测中

        # CHECK_FINISHED, 检测完成

        # CHECK_FAILED, 检测失败
        # @type CheckStatus: String
        # @param PassedPolicyItemCount: 此类资产通过的检测项的数目。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PassedPolicyItemCount: Integer
        # @param FailedPolicyItemCount: 此类资产未通过的检测的数目。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedPolicyItemCount: Integer
        # @param LastCheckTime: 上次检测的时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastCheckTime: String
        # @param CheckResult: 检测结果：
        # RESULT_FAILED: 未通过。
        # RESULT_PASSED: 通过。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckResult: String

        attr_accessor :CustomerAssetId, :AssetType, :AssetName, :ImageTag, :HostIP, :NodeName, :CheckStatus, :PassedPolicyItemCount, :FailedPolicyItemCount, :LastCheckTime, :CheckResult
        
        def initialize(customerassetid=nil, assettype=nil, assetname=nil, imagetag=nil, hostip=nil, nodename=nil, checkstatus=nil, passedpolicyitemcount=nil, failedpolicyitemcount=nil, lastchecktime=nil, checkresult=nil)
          @CustomerAssetId = customerassetid
          @AssetType = assettype
          @AssetName = assetname
          @ImageTag = imagetag
          @HostIP = hostip
          @NodeName = nodename
          @CheckStatus = checkstatus
          @PassedPolicyItemCount = passedpolicyitemcount
          @FailedPolicyItemCount = failedpolicyitemcount
          @LastCheckTime = lastchecktime
          @CheckResult = checkresult
        end

        def deserialize(params)
          @CustomerAssetId = params['CustomerAssetId']
          @AssetType = params['AssetType']
          @AssetName = params['AssetName']
          @ImageTag = params['ImageTag']
          @HostIP = params['HostIP']
          @NodeName = params['NodeName']
          @CheckStatus = params['CheckStatus']
          @PassedPolicyItemCount = params['PassedPolicyItemCount']
          @FailedPolicyItemCount = params['FailedPolicyItemCount']
          @LastCheckTime = params['LastCheckTime']
          @CheckResult = params['CheckResult']
        end
      end

      # 表示一条检测项的信息。
      class ComplianceAssetPolicyItem < TencentCloud::Common::AbstractModel
        # @param CustomerPolicyItemId: 为客户分配的唯一的检测项的ID。
        # @type CustomerPolicyItemId: Integer
        # @param BasePolicyItemId: 检测项的原始ID
        # @type BasePolicyItemId: Integer
        # @param Name: 检测项的名称。
        # @type Name: String
        # @param Category: 检测项所属的类型的名称
        # @type Category: String
        # @param BenchmarkStandardId: 所属的合规标准的ID
        # @type BenchmarkStandardId: Integer
        # @param BenchmarkStandardName: 所属的合规标准的名称
        # @type BenchmarkStandardName: String
        # @param RiskLevel: 威胁等级
        # @type RiskLevel: String
        # @param CheckStatus: 检测状态
        # CHECK_INIT, 待检测
        # CHECK_RUNNING, 检测中
        # CHECK_FINISHED, 检测完成
        # CHECK_FAILED, 检测失败
        # @type CheckStatus: String
        # @param CheckResult: 检测结果
        # RESULT_PASSED: 通过
        # RESULT_FAILED: 未通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckResult: String
        # @param WhitelistId: 检测项对应的白名单项的ID。如果存在且非0，表示检测项被用户忽略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WhitelistId: Integer
        # @param FixSuggestion: 处理建议。
        # @type FixSuggestion: String
        # @param LastCheckTime: 最近检测的时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastCheckTime: String

        attr_accessor :CustomerPolicyItemId, :BasePolicyItemId, :Name, :Category, :BenchmarkStandardId, :BenchmarkStandardName, :RiskLevel, :CheckStatus, :CheckResult, :WhitelistId, :FixSuggestion, :LastCheckTime
        
        def initialize(customerpolicyitemid=nil, basepolicyitemid=nil, name=nil, category=nil, benchmarkstandardid=nil, benchmarkstandardname=nil, risklevel=nil, checkstatus=nil, checkresult=nil, whitelistid=nil, fixsuggestion=nil, lastchecktime=nil)
          @CustomerPolicyItemId = customerpolicyitemid
          @BasePolicyItemId = basepolicyitemid
          @Name = name
          @Category = category
          @BenchmarkStandardId = benchmarkstandardid
          @BenchmarkStandardName = benchmarkstandardname
          @RiskLevel = risklevel
          @CheckStatus = checkstatus
          @CheckResult = checkresult
          @WhitelistId = whitelistid
          @FixSuggestion = fixsuggestion
          @LastCheckTime = lastchecktime
        end

        def deserialize(params)
          @CustomerPolicyItemId = params['CustomerPolicyItemId']
          @BasePolicyItemId = params['BasePolicyItemId']
          @Name = params['Name']
          @Category = params['Category']
          @BenchmarkStandardId = params['BenchmarkStandardId']
          @BenchmarkStandardName = params['BenchmarkStandardName']
          @RiskLevel = params['RiskLevel']
          @CheckStatus = params['CheckStatus']
          @CheckResult = params['CheckResult']
          @WhitelistId = params['WhitelistId']
          @FixSuggestion = params['FixSuggestion']
          @LastCheckTime = params['LastCheckTime']
        end
      end

      # 表示一类资产的总览信息。
      class ComplianceAssetSummary < TencentCloud::Common::AbstractModel
        # @param AssetType: 资产类别。
        # @type AssetType: String
        # @param IsCustomerFirstCheck: 是否为客户的首次检测。与CheckStatus配合使用。
        # @type IsCustomerFirstCheck: Boolean
        # @param CheckStatus: 检测状态

        # CHECK_UNINIT, 用户未启用此功能

        # CHECK_INIT, 待检测

        # CHECK_RUNNING, 检测中

        # CHECK_FINISHED, 检测完成

        # CHECK_FAILED, 检测失败
        # @type CheckStatus: String
        # @param CheckProgress: 此类别的检测进度，为 0~100 的数。若未在检测中，无此字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckProgress: Float
        # @param PassedPolicyItemCount: 此类资产通过的检测项的数目。
        # @type PassedPolicyItemCount: Integer
        # @param FailedPolicyItemCount: 此类资产未通过的检测的数目。
        # @type FailedPolicyItemCount: Integer
        # @param FailedCriticalPolicyItemCount: 此类资产下未通过的严重级别的检测项的数目。
        # @type FailedCriticalPolicyItemCount: Integer
        # @param FailedHighRiskPolicyItemCount: 此类资产下未通过的高危检测项的数目。
        # @type FailedHighRiskPolicyItemCount: Integer
        # @param FailedMediumRiskPolicyItemCount: 此类资产下未通过的中危检测项的数目。
        # @type FailedMediumRiskPolicyItemCount: Integer
        # @param FailedLowRiskPolicyItemCount: 此类资产下未通过的低危检测项的数目。
        # @type FailedLowRiskPolicyItemCount: Integer
        # @param NoticePolicyItemCount: 此类资产下提示级别的检测项的数目。
        # @type NoticePolicyItemCount: Integer
        # @param PassedAssetCount: 通过检测的资产的数目。
        # @type PassedAssetCount: Integer
        # @param FailedAssetCount: 未通过检测的资产的数目。
        # @type FailedAssetCount: Integer
        # @param AssetPassedRate: 此类资产的合规率，0~100的数。
        # @type AssetPassedRate: Float
        # @param ScanFailedAssetCount: 检测失败的资产的数目。
        # @type ScanFailedAssetCount: Integer
        # @param CheckCostTime: 上次检测的耗时，单位为秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckCostTime: Float
        # @param LastCheckTime: 上次检测的时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastCheckTime: String
        # @param PeriodRule: 定时检测规则。
        # @type PeriodRule: :class:`Tencentcloud::Tcss.v20201101.models.CompliancePeriodTaskRule`

        attr_accessor :AssetType, :IsCustomerFirstCheck, :CheckStatus, :CheckProgress, :PassedPolicyItemCount, :FailedPolicyItemCount, :FailedCriticalPolicyItemCount, :FailedHighRiskPolicyItemCount, :FailedMediumRiskPolicyItemCount, :FailedLowRiskPolicyItemCount, :NoticePolicyItemCount, :PassedAssetCount, :FailedAssetCount, :AssetPassedRate, :ScanFailedAssetCount, :CheckCostTime, :LastCheckTime, :PeriodRule
        
        def initialize(assettype=nil, iscustomerfirstcheck=nil, checkstatus=nil, checkprogress=nil, passedpolicyitemcount=nil, failedpolicyitemcount=nil, failedcriticalpolicyitemcount=nil, failedhighriskpolicyitemcount=nil, failedmediumriskpolicyitemcount=nil, failedlowriskpolicyitemcount=nil, noticepolicyitemcount=nil, passedassetcount=nil, failedassetcount=nil, assetpassedrate=nil, scanfailedassetcount=nil, checkcosttime=nil, lastchecktime=nil, periodrule=nil)
          @AssetType = assettype
          @IsCustomerFirstCheck = iscustomerfirstcheck
          @CheckStatus = checkstatus
          @CheckProgress = checkprogress
          @PassedPolicyItemCount = passedpolicyitemcount
          @FailedPolicyItemCount = failedpolicyitemcount
          @FailedCriticalPolicyItemCount = failedcriticalpolicyitemcount
          @FailedHighRiskPolicyItemCount = failedhighriskpolicyitemcount
          @FailedMediumRiskPolicyItemCount = failedmediumriskpolicyitemcount
          @FailedLowRiskPolicyItemCount = failedlowriskpolicyitemcount
          @NoticePolicyItemCount = noticepolicyitemcount
          @PassedAssetCount = passedassetcount
          @FailedAssetCount = failedassetcount
          @AssetPassedRate = assetpassedrate
          @ScanFailedAssetCount = scanfailedassetcount
          @CheckCostTime = checkcosttime
          @LastCheckTime = lastchecktime
          @PeriodRule = periodrule
        end

        def deserialize(params)
          @AssetType = params['AssetType']
          @IsCustomerFirstCheck = params['IsCustomerFirstCheck']
          @CheckStatus = params['CheckStatus']
          @CheckProgress = params['CheckProgress']
          @PassedPolicyItemCount = params['PassedPolicyItemCount']
          @FailedPolicyItemCount = params['FailedPolicyItemCount']
          @FailedCriticalPolicyItemCount = params['FailedCriticalPolicyItemCount']
          @FailedHighRiskPolicyItemCount = params['FailedHighRiskPolicyItemCount']
          @FailedMediumRiskPolicyItemCount = params['FailedMediumRiskPolicyItemCount']
          @FailedLowRiskPolicyItemCount = params['FailedLowRiskPolicyItemCount']
          @NoticePolicyItemCount = params['NoticePolicyItemCount']
          @PassedAssetCount = params['PassedAssetCount']
          @FailedAssetCount = params['FailedAssetCount']
          @AssetPassedRate = params['AssetPassedRate']
          @ScanFailedAssetCount = params['ScanFailedAssetCount']
          @CheckCostTime = params['CheckCostTime']
          @LastCheckTime = params['LastCheckTime']
          unless params['PeriodRule'].nil?
            @PeriodRule = CompliancePeriodTaskRule.new
            @PeriodRule.deserialize(params['PeriodRule'])
          end
        end
      end

      # 表示一个合规标准的信息。
      class ComplianceBenchmarkStandard < TencentCloud::Common::AbstractModel
        # @param StandardId: 合规标准的ID
        # @type StandardId: Integer
        # @param Name: 合规标准的名称
        # @type Name: String
        # @param PolicyItemCount: 合规标准包含的数目
        # @type PolicyItemCount: Integer
        # @param Enabled: 是否启用此标准
        # @type Enabled: Boolean
        # @param Description: 标准的描述
        # @type Description: String

        attr_accessor :StandardId, :Name, :PolicyItemCount, :Enabled, :Description
        
        def initialize(standardid=nil, name=nil, policyitemcount=nil, enabled=nil, description=nil)
          @StandardId = standardid
          @Name = name
          @PolicyItemCount = policyitemcount
          @Enabled = enabled
          @Description = description
        end

        def deserialize(params)
          @StandardId = params['StandardId']
          @Name = params['Name']
          @PolicyItemCount = params['PolicyItemCount']
          @Enabled = params['Enabled']
          @Description = params['Description']
        end
      end

      # 表示是否启用合规标准。
      class ComplianceBenchmarkStandardEnable < TencentCloud::Common::AbstractModel
        # @param StandardId: 合规标准的ID。
        # @type StandardId: Integer
        # @param Enable: 是否启用合规标准
        # @type Enable: Boolean

        attr_accessor :StandardId, :Enable
        
        def initialize(standardid=nil, enable=nil)
          @StandardId = standardid
          @Enable = enable
        end

        def deserialize(params)
          @StandardId = params['StandardId']
          @Enable = params['Enable']
        end
      end

      # 表示容器资产专属的详情。
      class ComplianceContainerDetailInfo < TencentCloud::Common::AbstractModel
        # @param ContainerId: 容器在主机上的ID。
        # @type ContainerId: String
        # @param PodName: 容器所属的Pod的名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodName: String

        attr_accessor :ContainerId, :PodName
        
        def initialize(containerid=nil, podname=nil)
          @ContainerId = containerid
          @PodName = podname
        end

        def deserialize(params)
          @ContainerId = params['ContainerId']
          @PodName = params['PodName']
        end
      end

      # 键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class ComplianceFilters < TencentCloud::Common::AbstractModel
        # @param Name: 过滤键的名称
        # @type Name: String
        # @param Values: 一个或者多个过滤值。
        # @type Values: Array
        # @param ExactMatch: 是否模糊查询。默认为是。
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

      # 表示主机资产专属的详情。
      class ComplianceHostDetailInfo < TencentCloud::Common::AbstractModel
        # @param DockerVersion: 主机上的Docker版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DockerVersion: String
        # @param K8SVersion: 主机上的K8S的版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type K8SVersion: String

        attr_accessor :DockerVersion, :K8SVersion
        
        def initialize(dockerversion=nil, k8sversion=nil)
          @DockerVersion = dockerversion
          @K8SVersion = k8sversion
        end

        def deserialize(params)
          @DockerVersion = params['DockerVersion']
          @K8SVersion = params['K8SVersion']
        end
      end

      # 表示镜像资产专属的详情。
      class ComplianceImageDetailInfo < TencentCloud::Common::AbstractModel
        # @param ImageId: 镜像在主机上的ID。
        # @type ImageId: String
        # @param ImageName: 镜像的名称。
        # @type ImageName: String
        # @param ImageTag: 镜像的Tag。
        # @type ImageTag: String
        # @param Repository: 镜像所在远程仓库的路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Repository: String

        attr_accessor :ImageId, :ImageName, :ImageTag, :Repository
        
        def initialize(imageid=nil, imagename=nil, imagetag=nil, repository=nil)
          @ImageId = imageid
          @ImageName = imagename
          @ImageTag = imagetag
          @Repository = repository
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @ImageName = params['ImageName']
          @ImageTag = params['ImageTag']
          @Repository = params['Repository']
        end
      end

      # 表示K8S资产专属的详情。
      class ComplianceK8SDetailInfo < TencentCloud::Common::AbstractModel
        # @param ClusterName: K8S集群的名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String

        attr_accessor :ClusterName
        
        def initialize(clustername=nil)
          @ClusterName = clustername
        end

        def deserialize(params)
          @ClusterName = params['ClusterName']
        end
      end

      # 表示一个合规基线检测定时任务的信息。
      class CompliancePeriodTask < TencentCloud::Common::AbstractModel
        # @param PeriodTaskId: 周期任务的ID
        # @type PeriodTaskId: Integer
        # @param AssetType: 资产类型。
        # ASSET_CONTAINER, 容器
        # ASSET_IMAGE, 镜像
        # ASSET_HOST, 主机
        # ASSET_K8S, K8S资产
        # @type AssetType: String
        # @param LastTriggerTime: 最近一次触发的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTriggerTime: String
        # @param TotalPolicyItemCount: 总的检查项数目
        # @type TotalPolicyItemCount: Integer
        # @param PeriodRule: 周期设置
        # @type PeriodRule: :class:`Tencentcloud::Tcss.v20201101.models.CompliancePeriodTaskRule`
        # @param BenchmarkStandardSet: 合规标准列表
        # @type BenchmarkStandardSet: Array

        attr_accessor :PeriodTaskId, :AssetType, :LastTriggerTime, :TotalPolicyItemCount, :PeriodRule, :BenchmarkStandardSet
        
        def initialize(periodtaskid=nil, assettype=nil, lasttriggertime=nil, totalpolicyitemcount=nil, periodrule=nil, benchmarkstandardset=nil)
          @PeriodTaskId = periodtaskid
          @AssetType = assettype
          @LastTriggerTime = lasttriggertime
          @TotalPolicyItemCount = totalpolicyitemcount
          @PeriodRule = periodrule
          @BenchmarkStandardSet = benchmarkstandardset
        end

        def deserialize(params)
          @PeriodTaskId = params['PeriodTaskId']
          @AssetType = params['AssetType']
          @LastTriggerTime = params['LastTriggerTime']
          @TotalPolicyItemCount = params['TotalPolicyItemCount']
          unless params['PeriodRule'].nil?
            @PeriodRule = CompliancePeriodTaskRule.new
            @PeriodRule.deserialize(params['PeriodRule'])
          end
          unless params['BenchmarkStandardSet'].nil?
            @BenchmarkStandardSet = []
            params['BenchmarkStandardSet'].each do |i|
              compliancebenchmarkstandard_tmp = ComplianceBenchmarkStandard.new
              compliancebenchmarkstandard_tmp.deserialize(i)
              @BenchmarkStandardSet << compliancebenchmarkstandard_tmp
            end
          end
        end
      end

      # 表示一个定时任务的周期设置
      class CompliancePeriodTaskRule < TencentCloud::Common::AbstractModel
        # @param Frequency: 执行的频率（几天一次），取值为：1,3,7。
        # @type Frequency: Integer
        # @param ExecutionTime: 在这天的什么时间执行，格式为：HH:mm:SS。
        # @type ExecutionTime: String

        attr_accessor :Frequency, :ExecutionTime
        
        def initialize(frequency=nil, executiontime=nil)
          @Frequency = frequency
          @ExecutionTime = executiontime
        end

        def deserialize(params)
          @Frequency = params['Frequency']
          @ExecutionTime = params['ExecutionTime']
        end
      end

      # 表示一条检测项对应的汇总信息。
      class CompliancePolicyItemSummary < TencentCloud::Common::AbstractModel
        # @param CustomerPolicyItemId: 为客户分配的唯一的检测项的ID。
        # @type CustomerPolicyItemId: Integer
        # @param BasePolicyItemId: 检测项的原始ID。
        # @type BasePolicyItemId: Integer
        # @param Name: 检测项的名称。
        # @type Name: String
        # @param Category: 检测项所属的类型，枚举字符串。
        # @type Category: String
        # @param BenchmarkStandardName: 所属的合规标准
        # @type BenchmarkStandardName: String
        # @param RiskLevel: 威胁等级。RISK_CRITICAL, RISK_HIGH, RISK_MEDIUM, RISK_LOW, RISK_NOTICE。
        # @type RiskLevel: String
        # @param AssetType: 检测项所属的资产类型
        # @type AssetType: String
        # @param LastCheckTime: 最近检测的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastCheckTime: String
        # @param CheckStatus: 检测状态

        # CHECK_INIT, 待检测

        # CHECK_RUNNING, 检测中

        # CHECK_FINISHED, 检测完成

        # CHECK_FAILED, 检测失败
        # @type CheckStatus: String
        # @param CheckResult: 检测结果。RESULT_PASSED: 通过

        # RESULT_FAILED: 未通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckResult: String
        # @param PassedAssetCount: 通过检测的资产的数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PassedAssetCount: Integer
        # @param FailedAssetCount: 未通过检测的资产的数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedAssetCount: Integer
        # @param WhitelistId: 检测项对应的白名单项的ID。如果存在且非0，表示检测项被用户忽略。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WhitelistId: Integer
        # @param FixSuggestion: 处理建议。
        # @type FixSuggestion: String
        # @param BenchmarkStandardId: 所属的合规标准的ID
        # @type BenchmarkStandardId: Integer

        attr_accessor :CustomerPolicyItemId, :BasePolicyItemId, :Name, :Category, :BenchmarkStandardName, :RiskLevel, :AssetType, :LastCheckTime, :CheckStatus, :CheckResult, :PassedAssetCount, :FailedAssetCount, :WhitelistId, :FixSuggestion, :BenchmarkStandardId
        
        def initialize(customerpolicyitemid=nil, basepolicyitemid=nil, name=nil, category=nil, benchmarkstandardname=nil, risklevel=nil, assettype=nil, lastchecktime=nil, checkstatus=nil, checkresult=nil, passedassetcount=nil, failedassetcount=nil, whitelistid=nil, fixsuggestion=nil, benchmarkstandardid=nil)
          @CustomerPolicyItemId = customerpolicyitemid
          @BasePolicyItemId = basepolicyitemid
          @Name = name
          @Category = category
          @BenchmarkStandardName = benchmarkstandardname
          @RiskLevel = risklevel
          @AssetType = assettype
          @LastCheckTime = lastchecktime
          @CheckStatus = checkstatus
          @CheckResult = checkresult
          @PassedAssetCount = passedassetcount
          @FailedAssetCount = failedassetcount
          @WhitelistId = whitelistid
          @FixSuggestion = fixsuggestion
          @BenchmarkStandardId = benchmarkstandardid
        end

        def deserialize(params)
          @CustomerPolicyItemId = params['CustomerPolicyItemId']
          @BasePolicyItemId = params['BasePolicyItemId']
          @Name = params['Name']
          @Category = params['Category']
          @BenchmarkStandardName = params['BenchmarkStandardName']
          @RiskLevel = params['RiskLevel']
          @AssetType = params['AssetType']
          @LastCheckTime = params['LastCheckTime']
          @CheckStatus = params['CheckStatus']
          @CheckResult = params['CheckResult']
          @PassedAssetCount = params['PassedAssetCount']
          @FailedAssetCount = params['FailedAssetCount']
          @WhitelistId = params['WhitelistId']
          @FixSuggestion = params['FixSuggestion']
          @BenchmarkStandardId = params['BenchmarkStandardId']
        end
      end

      # 表示检测失败的资产的信息。
      class ComplianceScanFailedAsset < TencentCloud::Common::AbstractModel
        # @param CustomerAssetId: 客户资产的ID。
        # @type CustomerAssetId: Integer
        # @param AssetType: 资产类别。
        # @type AssetType: String
        # @param CheckStatus: 检测状态
        # CHECK_INIT, 待检测
        # CHECK_RUNNING, 检测中
        # CHECK_FINISHED, 检测完成
        # CHECK_FAILED, 检测失败
        # @type CheckStatus: String
        # @param AssetName: 资产的名称。
        # @type AssetName: String
        # @param FailureReason: 资产检测失败的原因。
        # @type FailureReason: String
        # @param Suggestion: 检测失败的处理建议。
        # @type Suggestion: String
        # @param CheckTime: 检测的时间。
        # @type CheckTime: String

        attr_accessor :CustomerAssetId, :AssetType, :CheckStatus, :AssetName, :FailureReason, :Suggestion, :CheckTime
        
        def initialize(customerassetid=nil, assettype=nil, checkstatus=nil, assetname=nil, failurereason=nil, suggestion=nil, checktime=nil)
          @CustomerAssetId = customerassetid
          @AssetType = assettype
          @CheckStatus = checkstatus
          @AssetName = assetname
          @FailureReason = failurereason
          @Suggestion = suggestion
          @CheckTime = checktime
        end

        def deserialize(params)
          @CustomerAssetId = params['CustomerAssetId']
          @AssetType = params['AssetType']
          @CheckStatus = params['CheckStatus']
          @AssetName = params['AssetName']
          @FailureReason = params['FailureReason']
          @Suggestion = params['Suggestion']
          @CheckTime = params['CheckTime']
        end
      end

      # 表示一条白名单记录。
      class ComplianceWhitelistItem < TencentCloud::Common::AbstractModel
        # @param WhitelistItemId: 白名单项的ID。
        # @type WhitelistItemId: Integer
        # @param CustomerPolicyItemId: 客户检测项的ID。
        # @type CustomerPolicyItemId: Integer
        # @param Name: 检测项的名称。
        # @type Name: String
        # @param StandardName: 合规标准的名称。
        # @type StandardName: String
        # @param StandardId: 合规标准的ID。
        # @type StandardId: Integer
        # @param AffectedAssetCount: 检测项影响的资产的数目。
        # @type AffectedAssetCount: Integer
        # @param LastUpdateTime: 最后更新的时间
        # @type LastUpdateTime: String
        # @param InsertTime: 加入到白名单的时间
        # @type InsertTime: String

        attr_accessor :WhitelistItemId, :CustomerPolicyItemId, :Name, :StandardName, :StandardId, :AffectedAssetCount, :LastUpdateTime, :InsertTime
        
        def initialize(whitelistitemid=nil, customerpolicyitemid=nil, name=nil, standardname=nil, standardid=nil, affectedassetcount=nil, lastupdatetime=nil, inserttime=nil)
          @WhitelistItemId = whitelistitemid
          @CustomerPolicyItemId = customerpolicyitemid
          @Name = name
          @StandardName = standardname
          @StandardId = standardid
          @AffectedAssetCount = affectedassetcount
          @LastUpdateTime = lastupdatetime
          @InsertTime = inserttime
        end

        def deserialize(params)
          @WhitelistItemId = params['WhitelistItemId']
          @CustomerPolicyItemId = params['CustomerPolicyItemId']
          @Name = params['Name']
          @StandardName = params['StandardName']
          @StandardId = params['StandardId']
          @AffectedAssetCount = params['AffectedAssetCount']
          @LastUpdateTime = params['LastUpdateTime']
          @InsertTime = params['InsertTime']
        end
      end

      # 容器组件信息
      class ComponentInfo < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Version: 版本
        # @type Version: String

        attr_accessor :Name, :Version
        
        def initialize(name=nil, version=nil)
          @Name = name
          @Version = version
        end

        def deserialize(params)
          @Name = params['Name']
          @Version = params['Version']
        end
      end

      # 组件信息
      class ComponentsInfo < TencentCloud::Common::AbstractModel
        # @param Component: 组件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Component: String
        # @param Version: 组件版本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String

        attr_accessor :Component, :Version
        
        def initialize(component=nil, version=nil)
          @Component = component
          @Version = version
        end

        def deserialize(params)
          @Component = params['Component']
          @Version = params['Version']
        end
      end

      # 容器列表集合
      class ContainerInfo < TencentCloud::Common::AbstractModel
        # @param ContainerID: 容器id
        # @type ContainerID: String
        # @param ContainerName: 容器名称
        # @type ContainerName: String
        # @param Status: 容器运行状态
        # @type Status: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param RunAs: 运行用户
        # @type RunAs: String
        # @param Cmd: 命令行
        # @type Cmd: String
        # @param CPUUsage: CPU使用率 *1000
        # @type CPUUsage: Integer
        # @param RamUsage: 内存使用 kb
        # @type RamUsage: Integer
        # @param ImageName: 镜像名称
        # @type ImageName: String
        # @param ImageID: 镜像id
        # @type ImageID: String
        # @param POD: 镜像id
        # @type POD: String
        # @param HostID: 主机id
        # @type HostID: String
        # @param HostIP: 主机ip
        # @type HostIP: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param HostName: 主机名称
        # @type HostName: String
        # @param PublicIp: 外网ip
        # @type PublicIp: String

        attr_accessor :ContainerID, :ContainerName, :Status, :CreateTime, :RunAs, :Cmd, :CPUUsage, :RamUsage, :ImageName, :ImageID, :POD, :HostID, :HostIP, :UpdateTime, :HostName, :PublicIp
        
        def initialize(containerid=nil, containername=nil, status=nil, createtime=nil, runas=nil, cmd=nil, cpuusage=nil, ramusage=nil, imagename=nil, imageid=nil, pod=nil, hostid=nil, hostip=nil, updatetime=nil, hostname=nil, publicip=nil)
          @ContainerID = containerid
          @ContainerName = containername
          @Status = status
          @CreateTime = createtime
          @RunAs = runas
          @Cmd = cmd
          @CPUUsage = cpuusage
          @RamUsage = ramusage
          @ImageName = imagename
          @ImageID = imageid
          @POD = pod
          @HostID = hostid
          @HostIP = hostip
          @UpdateTime = updatetime
          @HostName = hostname
          @PublicIp = publicip
        end

        def deserialize(params)
          @ContainerID = params['ContainerID']
          @ContainerName = params['ContainerName']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @RunAs = params['RunAs']
          @Cmd = params['Cmd']
          @CPUUsage = params['CPUUsage']
          @RamUsage = params['RamUsage']
          @ImageName = params['ImageName']
          @ImageID = params['ImageID']
          @POD = params['POD']
          @HostID = params['HostID']
          @HostIP = params['HostIP']
          @UpdateTime = params['UpdateTime']
          @HostName = params['HostName']
          @PublicIp = params['PublicIp']
        end
      end

      # 容器挂载信息
      class ContainerMount < TencentCloud::Common::AbstractModel
        # @param Type: 挂载类型 bind
        # @type Type: String
        # @param Source: 宿主机路径
        # @type Source: String
        # @param Destination: 容器内路径
        # @type Destination: String
        # @param Mode: 模式
        # @type Mode: String
        # @param RW: 读写权限
        # @type RW: Boolean
        # @param Propagation: 传播类型
        # @type Propagation: String
        # @param Name: 名称
        # @type Name: String
        # @param Driver: 驱动
        # @type Driver: String

        attr_accessor :Type, :Source, :Destination, :Mode, :RW, :Propagation, :Name, :Driver
        
        def initialize(type=nil, source=nil, destination=nil, mode=nil, rw=nil, propagation=nil, name=nil, driver=nil)
          @Type = type
          @Source = source
          @Destination = destination
          @Mode = mode
          @RW = rw
          @Propagation = propagation
          @Name = name
          @Driver = driver
        end

        def deserialize(params)
          @Type = params['Type']
          @Source = params['Source']
          @Destination = params['Destination']
          @Mode = params['Mode']
          @RW = params['RW']
          @Propagation = params['Propagation']
          @Name = params['Name']
          @Driver = params['Driver']
        end
      end

      # 容器网络信息
      class ContainerNetwork < TencentCloud::Common::AbstractModel
        # @param EndpointID: endpoint id
        # @type EndpointID: String
        # @param Mode: 模式:bridge
        # @type Mode: String
        # @param Name: 网络名称
        # @type Name: String
        # @param NetworkID: 网络ID
        # @type NetworkID: String
        # @param Gateway: 网关
        # @type Gateway: String
        # @param Ipv4: IPV4地址
        # @type Ipv4: String
        # @param Ipv6: IPV6地址
        # @type Ipv6: String
        # @param MAC: MAC 地址
        # @type MAC: String

        attr_accessor :EndpointID, :Mode, :Name, :NetworkID, :Gateway, :Ipv4, :Ipv6, :MAC
        
        def initialize(endpointid=nil, mode=nil, name=nil, networkid=nil, gateway=nil, ipv4=nil, ipv6=nil, mac=nil)
          @EndpointID = endpointid
          @Mode = mode
          @Name = name
          @NetworkID = networkid
          @Gateway = gateway
          @Ipv4 = ipv4
          @Ipv6 = ipv6
          @MAC = mac
        end

        def deserialize(params)
          @EndpointID = params['EndpointID']
          @Mode = params['Mode']
          @Name = params['Name']
          @NetworkID = params['NetworkID']
          @Gateway = params['Gateway']
          @Ipv4 = params['Ipv4']
          @Ipv6 = params['Ipv6']
          @MAC = params['MAC']
        end
      end

      # CreateAssetImageRegistryScanTaskOneKey请求参数结构体
      class CreateAssetImageRegistryScanTaskOneKeyRequest < TencentCloud::Common::AbstractModel
        # @param All: 是否扫描全部镜像
        # @type All: Boolean
        # @param Images: 扫描的镜像列表
        # @type Images: Array
        # @param ScanType: 扫描类型数组
        # @type ScanType: Array
        # @param Id: 扫描的镜像列表Id
        # @type Id: Array

        attr_accessor :All, :Images, :ScanType, :Id
        
        def initialize(all=nil, images=nil, scantype=nil, id=nil)
          @All = all
          @Images = images
          @ScanType = scantype
          @Id = id
        end

        def deserialize(params)
          @All = params['All']
          unless params['Images'].nil?
            @Images = []
            params['Images'].each do |i|
              imageinfo_tmp = ImageInfo.new
              imageinfo_tmp.deserialize(i)
              @Images << imageinfo_tmp
            end
          end
          @ScanType = params['ScanType']
          @Id = params['Id']
        end
      end

      # CreateAssetImageRegistryScanTaskOneKey返回参数结构体
      class CreateAssetImageRegistryScanTaskOneKeyResponse < TencentCloud::Common::AbstractModel
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

      # CreateAssetImageRegistryScanTask请求参数结构体
      class CreateAssetImageRegistryScanTaskRequest < TencentCloud::Common::AbstractModel
        # @param All: 是否扫描全部镜像
        # @type All: Boolean
        # @param Images: 扫描的镜像列表
        # @type Images: Array
        # @param ScanType: 扫描类型数组
        # @type ScanType: Array
        # @param Id: 扫描的镜像列表Id
        # @type Id: Array

        attr_accessor :All, :Images, :ScanType, :Id
        
        def initialize(all=nil, images=nil, scantype=nil, id=nil)
          @All = all
          @Images = images
          @ScanType = scantype
          @Id = id
        end

        def deserialize(params)
          @All = params['All']
          unless params['Images'].nil?
            @Images = []
            params['Images'].each do |i|
              imageinfo_tmp = ImageInfo.new
              imageinfo_tmp.deserialize(i)
              @Images << imageinfo_tmp
            end
          end
          @ScanType = params['ScanType']
          @Id = params['Id']
        end
      end

      # CreateAssetImageRegistryScanTask返回参数结构体
      class CreateAssetImageRegistryScanTaskResponse < TencentCloud::Common::AbstractModel
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

      # CreateAssetImageScanSetting请求参数结构体
      class CreateAssetImageScanSettingRequest < TencentCloud::Common::AbstractModel
        # @param Enable: 开关
        # @type Enable: Boolean
        # @param ScanTime: 扫描时间
        # @type ScanTime: String
        # @param ScanPeriod: 扫描周期
        # @type ScanPeriod: Integer
        # @param ScanVirus: 扫描木马
        # @type ScanVirus: Boolean
        # @param ScanRisk: 扫描敏感信息
        # @type ScanRisk: Boolean
        # @param ScanVul: 扫描漏洞
        # @type ScanVul: Boolean
        # @param All: 全部镜像
        # @type All: Boolean
        # @param Images: 自定义镜像
        # @type Images: Array

        attr_accessor :Enable, :ScanTime, :ScanPeriod, :ScanVirus, :ScanRisk, :ScanVul, :All, :Images
        
        def initialize(enable=nil, scantime=nil, scanperiod=nil, scanvirus=nil, scanrisk=nil, scanvul=nil, all=nil, images=nil)
          @Enable = enable
          @ScanTime = scantime
          @ScanPeriod = scanperiod
          @ScanVirus = scanvirus
          @ScanRisk = scanrisk
          @ScanVul = scanvul
          @All = all
          @Images = images
        end

        def deserialize(params)
          @Enable = params['Enable']
          @ScanTime = params['ScanTime']
          @ScanPeriod = params['ScanPeriod']
          @ScanVirus = params['ScanVirus']
          @ScanRisk = params['ScanRisk']
          @ScanVul = params['ScanVul']
          @All = params['All']
          @Images = params['Images']
        end
      end

      # CreateAssetImageScanSetting返回参数结构体
      class CreateAssetImageScanSettingResponse < TencentCloud::Common::AbstractModel
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

      # CreateAssetImageScanTask请求参数结构体
      class CreateAssetImageScanTaskRequest < TencentCloud::Common::AbstractModel
        # @param All: 是否扫描全部镜像
        # @type All: Boolean
        # @param Images: 需要扫描的镜像列表
        # @type Images: Array
        # @param ScanVul: 扫描漏洞
        # @type ScanVul: Boolean
        # @param ScanVirus: 扫描木马
        # @type ScanVirus: Boolean
        # @param ScanRisk: 扫描风险
        # @type ScanRisk: Boolean

        attr_accessor :All, :Images, :ScanVul, :ScanVirus, :ScanRisk
        
        def initialize(all=nil, images=nil, scanvul=nil, scanvirus=nil, scanrisk=nil)
          @All = all
          @Images = images
          @ScanVul = scanvul
          @ScanVirus = scanvirus
          @ScanRisk = scanrisk
        end

        def deserialize(params)
          @All = params['All']
          @Images = params['Images']
          @ScanVul = params['ScanVul']
          @ScanVirus = params['ScanVirus']
          @ScanRisk = params['ScanRisk']
        end
      end

      # CreateAssetImageScanTask返回参数结构体
      class CreateAssetImageScanTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskID: 任务id
        # @type TaskID: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskID, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskID = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          @RequestId = params['RequestId']
        end
      end

      # CreateCheckComponent请求参数结构体
      class CreateCheckComponentRequest < TencentCloud::Common::AbstractModel
        # @param ClusterInfoList: 要安装的集群列表信息
        # @type ClusterInfoList: Array

        attr_accessor :ClusterInfoList
        
        def initialize(clusterinfolist=nil)
          @ClusterInfoList = clusterinfolist
        end

        def deserialize(params)
          unless params['ClusterInfoList'].nil?
            @ClusterInfoList = []
            params['ClusterInfoList'].each do |i|
              clustercreatecomponentitem_tmp = ClusterCreateComponentItem.new
              clustercreatecomponentitem_tmp.deserialize(i)
              @ClusterInfoList << clustercreatecomponentitem_tmp
            end
          end
        end
      end

      # CreateCheckComponent返回参数结构体
      class CreateCheckComponentResponse < TencentCloud::Common::AbstractModel
        # @param InstallResult: "InstallSucc"表示安装成功，"InstallFailed"表示安装失败
        # @type InstallResult: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstallResult, :RequestId
        
        def initialize(installresult=nil, requestid=nil)
          @InstallResult = installresult
          @RequestId = requestid
        end

        def deserialize(params)
          @InstallResult = params['InstallResult']
          @RequestId = params['RequestId']
        end
      end

      # CreateClusterCheckTask请求参数结构体
      class CreateClusterCheckTaskRequest < TencentCloud::Common::AbstractModel
        # @param ClusterCheckTaskList: 指定要扫描的集群信息
        # @type ClusterCheckTaskList: Array

        attr_accessor :ClusterCheckTaskList
        
        def initialize(clusterchecktasklist=nil)
          @ClusterCheckTaskList = clusterchecktasklist
        end

        def deserialize(params)
          unless params['ClusterCheckTaskList'].nil?
            @ClusterCheckTaskList = []
            params['ClusterCheckTaskList'].each do |i|
              clusterchecktaskitem_tmp = ClusterCheckTaskItem.new
              clusterchecktaskitem_tmp.deserialize(i)
              @ClusterCheckTaskList << clusterchecktaskitem_tmp
            end
          end
        end
      end

      # CreateClusterCheckTask返回参数结构体
      class CreateClusterCheckTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 返回创建的集群检查任务的ID，为0表示创建失败。
        # @type TaskId: Integer
        # @param CreateResult: 创建检查任务的结果，"Succ"为成功，其他的为失败原因
        # @type CreateResult: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :CreateResult, :RequestId
        
        def initialize(taskid=nil, createresult=nil, requestid=nil)
          @TaskId = taskid
          @CreateResult = createresult
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @CreateResult = params['CreateResult']
          @RequestId = params['RequestId']
        end
      end

      # CreateComplianceTask请求参数结构体
      class CreateComplianceTaskRequest < TencentCloud::Common::AbstractModel
        # @param AssetTypeSet: 指定要扫描的资产类型列表。
        # ASSET_CONTAINER, 容器
        # ASSET_IMAGE, 镜像
        # ASSET_HOST, 主机
        # ASSET_K8S, K8S资产
        # AssetTypeSet, PolicySetId, PeriodTaskId三个参数，必须要给其中一个参数填写有效的值。
        # @type AssetTypeSet: Array
        # @param PolicySetId: 按照策略集ID指定的策略执行合规检查。
        # @type PolicySetId: Integer
        # @param PeriodTaskId: 按照定时任务ID指定的策略执行合规检查。
        # @type PeriodTaskId: Integer

        attr_accessor :AssetTypeSet, :PolicySetId, :PeriodTaskId
        
        def initialize(assettypeset=nil, policysetid=nil, periodtaskid=nil)
          @AssetTypeSet = assettypeset
          @PolicySetId = policysetid
          @PeriodTaskId = periodtaskid
        end

        def deserialize(params)
          @AssetTypeSet = params['AssetTypeSet']
          @PolicySetId = params['PolicySetId']
          @PeriodTaskId = params['PeriodTaskId']
        end
      end

      # CreateComplianceTask返回参数结构体
      class CreateComplianceTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 返回创建的合规检查任务的ID。
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

      # CreateExportComplianceStatusListJob请求参数结构体
      class CreateExportComplianceStatusListJobRequest < TencentCloud::Common::AbstractModel
        # @param AssetType: 要导出信息的资产类型
        # @type AssetType: String
        # @param ExportByAsset: 按照检测项导出，还是按照资产导出。true: 按照资产导出；false: 按照检测项导出。
        # @type ExportByAsset: Boolean
        # @param ExportAll: true, 全部导出；false, 根据IdList来导出数据。
        # @type ExportAll: Boolean
        # @param IdList: 要导出的资产ID列表或检测项ID列表，由ExportByAsset的取值决定。
        # @type IdList: Array

        attr_accessor :AssetType, :ExportByAsset, :ExportAll, :IdList
        
        def initialize(assettype=nil, exportbyasset=nil, exportall=nil, idlist=nil)
          @AssetType = assettype
          @ExportByAsset = exportbyasset
          @ExportAll = exportall
          @IdList = idlist
        end

        def deserialize(params)
          @AssetType = params['AssetType']
          @ExportByAsset = params['ExportByAsset']
          @ExportAll = params['ExportAll']
          @IdList = params['IdList']
        end
      end

      # CreateExportComplianceStatusListJob返回参数结构体
      class CreateExportComplianceStatusListJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 返回创建的导出任务的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId
        
        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # CreateOrModifyPostPayCores请求参数结构体
      class CreateOrModifyPostPayCoresRequest < TencentCloud::Common::AbstractModel
        # @param CoresCnt: 弹性计费上限，最小值500
        # @type CoresCnt: Integer

        attr_accessor :CoresCnt
        
        def initialize(corescnt=nil)
          @CoresCnt = corescnt
        end

        def deserialize(params)
          @CoresCnt = params['CoresCnt']
        end
      end

      # CreateOrModifyPostPayCores返回参数结构体
      class CreateOrModifyPostPayCoresResponse < TencentCloud::Common::AbstractModel
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

      # CreateRefreshTask请求参数结构体
      class CreateRefreshTaskRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # CreateRefreshTask返回参数结构体
      class CreateRefreshTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 返回创建的集群检查任务的ID，为0表示创建失败。
        # @type TaskId: Integer
        # @param CreateResult: 创建检查任务的结果，"Succ"为成功，"Failed"为失败
        # @type CreateResult: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :CreateResult, :RequestId
        
        def initialize(taskid=nil, createresult=nil, requestid=nil)
          @TaskId = taskid
          @CreateResult = createresult
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @CreateResult = params['CreateResult']
          @RequestId = params['RequestId']
        end
      end

      # CreateVirusScanAgain请求参数结构体
      class CreateVirusScanAgainRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param ContainerIds: 需要扫描的容器id集合
        # @type ContainerIds: Array
        # @param TimeoutAll: 是否是扫描全部超时的
        # @type TimeoutAll: Boolean
        # @param Timeout: 重新设置的超时时长
        # @type Timeout: Integer

        attr_accessor :TaskId, :ContainerIds, :TimeoutAll, :Timeout
        
        def initialize(taskid=nil, containerids=nil, timeoutall=nil, timeout=nil)
          @TaskId = taskid
          @ContainerIds = containerids
          @TimeoutAll = timeoutall
          @Timeout = timeout
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ContainerIds = params['ContainerIds']
          @TimeoutAll = params['TimeoutAll']
          @Timeout = params['Timeout']
        end
      end

      # CreateVirusScanAgain返回参数结构体
      class CreateVirusScanAgainResponse < TencentCloud::Common::AbstractModel
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

      # CreateVirusScanTask请求参数结构体
      class CreateVirusScanTaskRequest < TencentCloud::Common::AbstractModel
        # @param ScanPathAll: 是否扫描所有路径
        # @type ScanPathAll: Boolean
        # @param ScanRangeType: 扫描范围0容器1主机节点
        # @type ScanRangeType: Integer
        # @param ScanRangeAll: true 全选，false 自选
        # @type ScanRangeAll: Boolean
        # @param Timeout: 超时时长，单位小时
        # @type Timeout: Integer
        # @param ScanPathType: 当ScanPathAll为false生效 0扫描以下路径 1、扫描除以下路径
        # @type ScanPathType: Integer
        # @param ScanIds: 自选扫描范围的容器id或者主机id 根据ScanRangeType决定
        # @type ScanIds: Array
        # @param ScanPath: 自选排除或扫描的地址
        # @type ScanPath: Array

        attr_accessor :ScanPathAll, :ScanRangeType, :ScanRangeAll, :Timeout, :ScanPathType, :ScanIds, :ScanPath
        
        def initialize(scanpathall=nil, scanrangetype=nil, scanrangeall=nil, timeout=nil, scanpathtype=nil, scanids=nil, scanpath=nil)
          @ScanPathAll = scanpathall
          @ScanRangeType = scanrangetype
          @ScanRangeAll = scanrangeall
          @Timeout = timeout
          @ScanPathType = scanpathtype
          @ScanIds = scanids
          @ScanPath = scanpath
        end

        def deserialize(params)
          @ScanPathAll = params['ScanPathAll']
          @ScanRangeType = params['ScanRangeType']
          @ScanRangeAll = params['ScanRangeAll']
          @Timeout = params['Timeout']
          @ScanPathType = params['ScanPathType']
          @ScanIds = params['ScanIds']
          @ScanPath = params['ScanPath']
        end
      end

      # CreateVirusScanTask返回参数结构体
      class CreateVirusScanTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskID: 任务id
        # @type TaskID: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskID, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskID = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAbnormalProcessRules请求参数结构体
      class DeleteAbnormalProcessRulesRequest < TencentCloud::Common::AbstractModel
        # @param RuleIdSet: 策略的ids
        # @type RuleIdSet: Array

        attr_accessor :RuleIdSet
        
        def initialize(ruleidset=nil)
          @RuleIdSet = ruleidset
        end

        def deserialize(params)
          @RuleIdSet = params['RuleIdSet']
        end
      end

      # DeleteAbnormalProcessRules返回参数结构体
      class DeleteAbnormalProcessRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAccessControlRules请求参数结构体
      class DeleteAccessControlRulesRequest < TencentCloud::Common::AbstractModel
        # @param RuleIdSet: 策略的ids
        # @type RuleIdSet: Array

        attr_accessor :RuleIdSet
        
        def initialize(ruleidset=nil)
          @RuleIdSet = ruleidset
        end

        def deserialize(params)
          @RuleIdSet = params['RuleIdSet']
        end
      end

      # DeleteAccessControlRules返回参数结构体
      class DeleteAccessControlRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCompliancePolicyItemFromWhitelist请求参数结构体
      class DeleteCompliancePolicyItemFromWhitelistRequest < TencentCloud::Common::AbstractModel
        # @param WhitelistIdSet: 指定的白名单项的ID的列表
        # @type WhitelistIdSet: Array

        attr_accessor :WhitelistIdSet
        
        def initialize(whitelistidset=nil)
          @WhitelistIdSet = whitelistidset
        end

        def deserialize(params)
          @WhitelistIdSet = params['WhitelistIdSet']
        end
      end

      # DeleteCompliancePolicyItemFromWhitelist返回参数结构体
      class DeleteCompliancePolicyItemFromWhitelistResponse < TencentCloud::Common::AbstractModel
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

      # DeleteReverseShellWhiteLists请求参数结构体
      class DeleteReverseShellWhiteListsRequest < TencentCloud::Common::AbstractModel
        # @param WhiteListIdSet: 白名单ids
        # @type WhiteListIdSet: Array

        attr_accessor :WhiteListIdSet
        
        def initialize(whitelistidset=nil)
          @WhiteListIdSet = whitelistidset
        end

        def deserialize(params)
          @WhiteListIdSet = params['WhiteListIdSet']
        end
      end

      # DeleteReverseShellWhiteLists返回参数结构体
      class DeleteReverseShellWhiteListsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRiskSyscallWhiteLists请求参数结构体
      class DeleteRiskSyscallWhiteListsRequest < TencentCloud::Common::AbstractModel
        # @param WhiteListIdSet: 白名单ids
        # @type WhiteListIdSet: Array

        attr_accessor :WhiteListIdSet
        
        def initialize(whitelistidset=nil)
          @WhiteListIdSet = whitelistidset
        end

        def deserialize(params)
          @WhiteListIdSet = params['WhiteListIdSet']
        end
      end

      # DeleteRiskSyscallWhiteLists返回参数结构体
      class DeleteRiskSyscallWhiteListsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAbnormalProcessDetail请求参数结构体
      class DescribeAbnormalProcessDetailRequest < TencentCloud::Common::AbstractModel
        # @param EventId: 事件唯一id
        # @type EventId: String

        attr_accessor :EventId
        
        def initialize(eventid=nil)
          @EventId = eventid
        end

        def deserialize(params)
          @EventId = params['EventId']
        end
      end

      # DescribeAbnormalProcessDetail返回参数结构体
      class DescribeAbnormalProcessDetailResponse < TencentCloud::Common::AbstractModel
        # @param EventBaseInfo: 事件基本信息
        # @type EventBaseInfo: :class:`Tencentcloud::Tcss.v20201101.models.RunTimeEventBaseInfo`
        # @param ProcessInfo: 进程信息
        # @type ProcessInfo: :class:`Tencentcloud::Tcss.v20201101.models.ProcessDetailInfo`
        # @param ParentProcessInfo: 父进程信息
        # @type ParentProcessInfo: :class:`Tencentcloud::Tcss.v20201101.models.ProcessDetailBaseInfo`
        # @param EventDetail: 事件描述
        # @type EventDetail: :class:`Tencentcloud::Tcss.v20201101.models.AbnormalProcessEventDescription`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventBaseInfo, :ProcessInfo, :ParentProcessInfo, :EventDetail, :RequestId
        
        def initialize(eventbaseinfo=nil, processinfo=nil, parentprocessinfo=nil, eventdetail=nil, requestid=nil)
          @EventBaseInfo = eventbaseinfo
          @ProcessInfo = processinfo
          @ParentProcessInfo = parentprocessinfo
          @EventDetail = eventdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EventBaseInfo'].nil?
            @EventBaseInfo = RunTimeEventBaseInfo.new
            @EventBaseInfo.deserialize(params['EventBaseInfo'])
          end
          unless params['ProcessInfo'].nil?
            @ProcessInfo = ProcessDetailInfo.new
            @ProcessInfo.deserialize(params['ProcessInfo'])
          end
          unless params['ParentProcessInfo'].nil?
            @ParentProcessInfo = ProcessDetailBaseInfo.new
            @ParentProcessInfo.deserialize(params['ParentProcessInfo'])
          end
          unless params['EventDetail'].nil?
            @EventDetail = AbnormalProcessEventDescription.new
            @EventDetail.deserialize(params['EventDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAbnormalProcessEventsExport请求参数结构体
      class DescribeAbnormalProcessEventsExportRequest < TencentCloud::Common::AbstractModel
        # @param ExportField: 导出字段
        # @type ExportField: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        # @type Filters: Array
        # @param Order: 升序降序,asc desc
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :ExportField, :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(exportfield=nil, limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @ExportField = exportfield
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @ExportField = params['ExportField']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAbnormalProcessEventsExport返回参数结构体
      class DescribeAbnormalProcessEventsExportResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: execle下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeAbnormalProcessEvents请求参数结构体
      class DescribeAbnormalProcessEventsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        # @type Filters: Array
        # @param Order: 升序降序,asc desc
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
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAbnormalProcessEvents返回参数结构体
      class DescribeAbnormalProcessEventsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 事件总数量
        # @type TotalCount: Integer
        # @param EventSet: 异常进程数组
        # @type EventSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :EventSet, :RequestId
        
        def initialize(totalcount=nil, eventset=nil, requestid=nil)
          @TotalCount = totalcount
          @EventSet = eventset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EventSet'].nil?
            @EventSet = []
            params['EventSet'].each do |i|
              abnormalprocesseventinfo_tmp = AbnormalProcessEventInfo.new
              abnormalprocesseventinfo_tmp.deserialize(i)
              @EventSet << abnormalprocesseventinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAbnormalProcessRuleDetail请求参数结构体
      class DescribeAbnormalProcessRuleDetailRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 策略唯一id
        # @type RuleId: String
        # @param ImageId: 镜像id, 在添加白名单的时候使用
        # @type ImageId: String

        attr_accessor :RuleId, :ImageId
        
        def initialize(ruleid=nil, imageid=nil)
          @RuleId = ruleid
          @ImageId = imageid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @ImageId = params['ImageId']
        end
      end

      # DescribeAbnormalProcessRuleDetail返回参数结构体
      class DescribeAbnormalProcessRuleDetailResponse < TencentCloud::Common::AbstractModel
        # @param RuleDetail: 异常进程策略详细信息
        # @type RuleDetail: :class:`Tencentcloud::Tcss.v20201101.models.AbnormalProcessRuleInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleDetail, :RequestId
        
        def initialize(ruledetail=nil, requestid=nil)
          @RuleDetail = ruledetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuleDetail'].nil?
            @RuleDetail = AbnormalProcessRuleInfo.new
            @RuleDetail.deserialize(params['RuleDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAbnormalProcessRulesExport请求参数结构体
      class DescribeAbnormalProcessRulesExportRequest < TencentCloud::Common::AbstractModel
        # @param ExportField: 导出字段
        # @type ExportField: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        # @type Filters: Array
        # @param Order: 升序降序,asc desc
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :ExportField, :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(exportfield=nil, limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @ExportField = exportfield
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @ExportField = params['ExportField']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAbnormalProcessRulesExport返回参数结构体
      class DescribeAbnormalProcessRulesExportResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: execle下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeAbnormalProcessRules请求参数结构体
      class DescribeAbnormalProcessRulesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        # @type Filters: Array
        # @param Order: 升序降序,asc desc
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
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAbnormalProcessRules返回参数结构体
      class DescribeAbnormalProcessRulesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 事件总数量
        # @type TotalCount: Integer
        # @param RuleSet: 异常进程策略信息列表
        # @type RuleSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RuleSet, :RequestId
        
        def initialize(totalcount=nil, ruleset=nil, requestid=nil)
          @TotalCount = totalcount
          @RuleSet = ruleset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RuleSet'].nil?
            @RuleSet = []
            params['RuleSet'].each do |i|
              rulebaseinfo_tmp = RuleBaseInfo.new
              rulebaseinfo_tmp.deserialize(i)
              @RuleSet << rulebaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccessControlDetail请求参数结构体
      class DescribeAccessControlDetailRequest < TencentCloud::Common::AbstractModel
        # @param EventId: 事件唯一id
        # @type EventId: String

        attr_accessor :EventId
        
        def initialize(eventid=nil)
          @EventId = eventid
        end

        def deserialize(params)
          @EventId = params['EventId']
        end
      end

      # DescribeAccessControlDetail返回参数结构体
      class DescribeAccessControlDetailResponse < TencentCloud::Common::AbstractModel
        # @param EventBaseInfo: 事件基本信息
        # @type EventBaseInfo: :class:`Tencentcloud::Tcss.v20201101.models.RunTimeEventBaseInfo`
        # @param ProcessInfo: 进程信息
        # @type ProcessInfo: :class:`Tencentcloud::Tcss.v20201101.models.ProcessDetailInfo`
        # @param TamperedFileInfo: 被篡改信息
        # @type TamperedFileInfo: :class:`Tencentcloud::Tcss.v20201101.models.FileAttributeInfo`
        # @param EventDetail: 事件描述
        # @type EventDetail: :class:`Tencentcloud::Tcss.v20201101.models.AccessControlEventDescription`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventBaseInfo, :ProcessInfo, :TamperedFileInfo, :EventDetail, :RequestId
        
        def initialize(eventbaseinfo=nil, processinfo=nil, tamperedfileinfo=nil, eventdetail=nil, requestid=nil)
          @EventBaseInfo = eventbaseinfo
          @ProcessInfo = processinfo
          @TamperedFileInfo = tamperedfileinfo
          @EventDetail = eventdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EventBaseInfo'].nil?
            @EventBaseInfo = RunTimeEventBaseInfo.new
            @EventBaseInfo.deserialize(params['EventBaseInfo'])
          end
          unless params['ProcessInfo'].nil?
            @ProcessInfo = ProcessDetailInfo.new
            @ProcessInfo.deserialize(params['ProcessInfo'])
          end
          unless params['TamperedFileInfo'].nil?
            @TamperedFileInfo = FileAttributeInfo.new
            @TamperedFileInfo.deserialize(params['TamperedFileInfo'])
          end
          unless params['EventDetail'].nil?
            @EventDetail = AccessControlEventDescription.new
            @EventDetail.deserialize(params['EventDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccessControlEventsExport请求参数结构体
      class DescribeAccessControlEventsExportRequest < TencentCloud::Common::AbstractModel
        # @param ExportField: 导出字段
        # @type ExportField: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        # @type Filters: Array
        # @param Order: 升序降序,asc desc
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :ExportField, :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(exportfield=nil, limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @ExportField = exportfield
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @ExportField = params['ExportField']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAccessControlEventsExport返回参数结构体
      class DescribeAccessControlEventsExportResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: execle下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeAccessControlEvents请求参数结构体
      class DescribeAccessControlEventsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        # @type Filters: Array
        # @param Order: 升序降序,asc desc
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
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAccessControlEvents返回参数结构体
      class DescribeAccessControlEventsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 事件总数量
        # @type TotalCount: Integer
        # @param EventSet: 访问控制事件数组
        # @type EventSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :EventSet, :RequestId
        
        def initialize(totalcount=nil, eventset=nil, requestid=nil)
          @TotalCount = totalcount
          @EventSet = eventset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EventSet'].nil?
            @EventSet = []
            params['EventSet'].each do |i|
              accesscontroleventinfo_tmp = AccessControlEventInfo.new
              accesscontroleventinfo_tmp.deserialize(i)
              @EventSet << accesscontroleventinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccessControlRuleDetail请求参数结构体
      class DescribeAccessControlRuleDetailRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 策略唯一id
        # @type RuleId: String
        # @param ImageId: 镜像id, 仅仅在事件加白的时候使用
        # @type ImageId: String

        attr_accessor :RuleId, :ImageId
        
        def initialize(ruleid=nil, imageid=nil)
          @RuleId = ruleid
          @ImageId = imageid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @ImageId = params['ImageId']
        end
      end

      # DescribeAccessControlRuleDetail返回参数结构体
      class DescribeAccessControlRuleDetailResponse < TencentCloud::Common::AbstractModel
        # @param RuleDetail: 运行时策略详细信息
        # @type RuleDetail: :class:`Tencentcloud::Tcss.v20201101.models.AccessControlRuleInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleDetail, :RequestId
        
        def initialize(ruledetail=nil, requestid=nil)
          @RuleDetail = ruledetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuleDetail'].nil?
            @RuleDetail = AccessControlRuleInfo.new
            @RuleDetail.deserialize(params['RuleDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccessControlRulesExport请求参数结构体
      class DescribeAccessControlRulesExportRequest < TencentCloud::Common::AbstractModel
        # @param ExportField: 导出字段
        # @type ExportField: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        # @type Filters: Array
        # @param Order: 升序降序,asc desc
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :ExportField, :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(exportfield=nil, limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @ExportField = exportfield
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @ExportField = params['ExportField']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAccessControlRulesExport返回参数结构体
      class DescribeAccessControlRulesExportResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: execle下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeAccessControlRules请求参数结构体
      class DescribeAccessControlRulesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        # @type Filters: Array
        # @param Order: 升序降序,asc desc
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
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAccessControlRules返回参数结构体
      class DescribeAccessControlRulesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 事件总数量
        # @type TotalCount: Integer
        # @param RuleSet: 访问控制策略信息列表
        # @type RuleSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RuleSet, :RequestId
        
        def initialize(totalcount=nil, ruleset=nil, requestid=nil)
          @TotalCount = totalcount
          @RuleSet = ruleset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RuleSet'].nil?
            @RuleSet = []
            params['RuleSet'].each do |i|
              rulebaseinfo_tmp = RuleBaseInfo.new
              rulebaseinfo_tmp.deserialize(i)
              @RuleSet << rulebaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAffectedClusterCount请求参数结构体
      class DescribeAffectedClusterCountRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAffectedClusterCount返回参数结构体
      class DescribeAffectedClusterCountResponse < TencentCloud::Common::AbstractModel
        # @param SeriousRiskClusterCount: 严重风险的集群数量
        # @type SeriousRiskClusterCount: Integer
        # @param HighRiskClusterCount: 高危风险的集群数量
        # @type HighRiskClusterCount: Integer
        # @param MiddleRiskClusterCount: 中危风险的集群数量
        # @type MiddleRiskClusterCount: Integer
        # @param HintRiskClusterCount: 低危风险的集群数量
        # @type HintRiskClusterCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SeriousRiskClusterCount, :HighRiskClusterCount, :MiddleRiskClusterCount, :HintRiskClusterCount, :RequestId
        
        def initialize(seriousriskclustercount=nil, highriskclustercount=nil, middleriskclustercount=nil, hintriskclustercount=nil, requestid=nil)
          @SeriousRiskClusterCount = seriousriskclustercount
          @HighRiskClusterCount = highriskclustercount
          @MiddleRiskClusterCount = middleriskclustercount
          @HintRiskClusterCount = hintriskclustercount
          @RequestId = requestid
        end

        def deserialize(params)
          @SeriousRiskClusterCount = params['SeriousRiskClusterCount']
          @HighRiskClusterCount = params['HighRiskClusterCount']
          @MiddleRiskClusterCount = params['MiddleRiskClusterCount']
          @HintRiskClusterCount = params['HintRiskClusterCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAffectedNodeList请求参数结构体
      class DescribeAffectedNodeListRequest < TencentCloud::Common::AbstractModel
        # @param CheckItemId: 唯一的检测项的ID
        # @type CheckItemId: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 每次查询的最大记录数量
        # @type Limit: Integer
        # @param Filters: Name - String
        # Name 可取值：ClusterName, ClusterId,InstanceId,PrivateIpAddresses
        # @type Filters: Array
        # @param By: 排序字段
        # @type By: String
        # @param Order: 排序方式 asc,desc
        # @type Order: String

        attr_accessor :CheckItemId, :Offset, :Limit, :Filters, :By, :Order
        
        def initialize(checkitemid=nil, offset=nil, limit=nil, filters=nil, by=nil, order=nil)
          @CheckItemId = checkitemid
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @By = by
          @Order = order
        end

        def deserialize(params)
          @CheckItemId = params['CheckItemId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              compliancefilters_tmp = ComplianceFilters.new
              compliancefilters_tmp.deserialize(i)
              @Filters << compliancefilters_tmp
            end
          end
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeAffectedNodeList返回参数结构体
      class DescribeAffectedNodeListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 受影响的节点总数
        # @type TotalCount: Integer
        # @param AffectedNodeList: 受影响的节点列表
        # @type AffectedNodeList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AffectedNodeList, :RequestId
        
        def initialize(totalcount=nil, affectednodelist=nil, requestid=nil)
          @TotalCount = totalcount
          @AffectedNodeList = affectednodelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AffectedNodeList'].nil?
            @AffectedNodeList = []
            params['AffectedNodeList'].each do |i|
              affectednodeitem_tmp = AffectedNodeItem.new
              affectednodeitem_tmp.deserialize(i)
              @AffectedNodeList << affectednodeitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAffectedWorkloadList请求参数结构体
      class DescribeAffectedWorkloadListRequest < TencentCloud::Common::AbstractModel
        # @param CheckItemId: 唯一的检测项的ID
        # @type CheckItemId: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 每次查询的最大记录数量
        # @type Limit: Integer
        # @param Filters: Name - String
        # Name 可取值：WorkloadType,ClusterId
        # @type Filters: Array
        # @param By: 排序字段
        # @type By: String
        # @param Order: 排序方式 asc,desc
        # @type Order: String

        attr_accessor :CheckItemId, :Offset, :Limit, :Filters, :By, :Order
        
        def initialize(checkitemid=nil, offset=nil, limit=nil, filters=nil, by=nil, order=nil)
          @CheckItemId = checkitemid
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @By = by
          @Order = order
        end

        def deserialize(params)
          @CheckItemId = params['CheckItemId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              compliancefilters_tmp = ComplianceFilters.new
              compliancefilters_tmp.deserialize(i)
              @Filters << compliancefilters_tmp
            end
          end
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeAffectedWorkloadList返回参数结构体
      class DescribeAffectedWorkloadListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 受影响的workload列表数量
        # @type TotalCount: Integer
        # @param AffectedWorkloadList: 受影响的workload列表
        # @type AffectedWorkloadList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AffectedWorkloadList, :RequestId
        
        def initialize(totalcount=nil, affectedworkloadlist=nil, requestid=nil)
          @TotalCount = totalcount
          @AffectedWorkloadList = affectedworkloadlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AffectedWorkloadList'].nil?
            @AffectedWorkloadList = []
            params['AffectedWorkloadList'].each do |i|
              affectedworkloaditem_tmp = AffectedWorkloadItem.new
              affectedworkloaditem_tmp.deserialize(i)
              @AffectedWorkloadList << affectedworkloaditem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetAppServiceList请求参数结构体
      class DescribeAssetAppServiceListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords- String - 是否必填：否 - 模糊查询可选字段</li>
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
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
        end
      end

      # DescribeAssetAppServiceList返回参数结构体
      class DescribeAssetAppServiceListResponse < TencentCloud::Common::AbstractModel
        # @param List: db服务列表
        # @type List: Array
        # @param TotalCount: 总数量
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
              serviceinfo_tmp = ServiceInfo.new
              serviceinfo_tmp.deserialize(i)
              @List << serviceinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetComponentList请求参数结构体
      class DescribeAssetComponentListRequest < TencentCloud::Common::AbstractModel
        # @param ContainerID: 容器id
        # @type ContainerID: String
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array

        attr_accessor :ContainerID, :Limit, :Offset, :Filters
        
        def initialize(containerid=nil, limit=nil, offset=nil, filters=nil)
          @ContainerID = containerid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @ContainerID = params['ContainerID']
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

      # DescribeAssetComponentList返回参数结构体
      class DescribeAssetComponentListResponse < TencentCloud::Common::AbstractModel
        # @param List: 组件列表
        # @type List: Array
        # @param TotalCount: 总数量
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
              componentinfo_tmp = ComponentInfo.new
              componentinfo_tmp.deserialize(i)
              @List << componentinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetContainerDetail请求参数结构体
      class DescribeAssetContainerDetailRequest < TencentCloud::Common::AbstractModel
        # @param ContainerId: 容器id
        # @type ContainerId: String

        attr_accessor :ContainerId
        
        def initialize(containerid=nil)
          @ContainerId = containerid
        end

        def deserialize(params)
          @ContainerId = params['ContainerId']
        end
      end

      # DescribeAssetContainerDetail返回参数结构体
      class DescribeAssetContainerDetailResponse < TencentCloud::Common::AbstractModel
        # @param HostID: 主机id
        # @type HostID: String
        # @param HostIP: 主机ip
        # @type HostIP: String
        # @param ContainerName: 容器名称
        # @type ContainerName: String
        # @param Status: 运行状态
        # @type Status: String
        # @param RunAs: 运行账户
        # @type RunAs: String
        # @param Cmd: 命令行
        # @type Cmd: String
        # @param CPUUsage: CPU使用率 * 1000
        # @type CPUUsage: Integer
        # @param RamUsage: 内存使用 KB
        # @type RamUsage: Integer
        # @param ImageName: 镜像名
        # @type ImageName: String
        # @param ImageID: 镜像ID
        # @type ImageID: String
        # @param POD: 归属POD
        # @type POD: String
        # @param K8sMaster: k8s 主节点
        # @type K8sMaster: String
        # @param ProcessCnt: 容器内进程数
        # @type ProcessCnt: Integer
        # @param PortCnt: 容器内端口数
        # @type PortCnt: Integer
        # @param ComponentCnt: 组件数
        # @type ComponentCnt: Integer
        # @param AppCnt: app数
        # @type AppCnt: Integer
        # @param WebServiceCnt: websvc数
        # @type WebServiceCnt: Integer
        # @param Mounts: 挂载
        # @type Mounts: Array
        # @param Network: 容器网络信息
        # @type Network: :class:`Tencentcloud::Tcss.v20201101.models.ContainerNetwork`
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ImageCreateTime: 镜像创建时间
        # @type ImageCreateTime: String
        # @param ImageSize: 镜像大小
        # @type ImageSize: Integer
        # @param HostStatus: 主机状态 offline,online,pause
        # @type HostStatus: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HostID, :HostIP, :ContainerName, :Status, :RunAs, :Cmd, :CPUUsage, :RamUsage, :ImageName, :ImageID, :POD, :K8sMaster, :ProcessCnt, :PortCnt, :ComponentCnt, :AppCnt, :WebServiceCnt, :Mounts, :Network, :CreateTime, :ImageCreateTime, :ImageSize, :HostStatus, :RequestId
        
        def initialize(hostid=nil, hostip=nil, containername=nil, status=nil, runas=nil, cmd=nil, cpuusage=nil, ramusage=nil, imagename=nil, imageid=nil, pod=nil, k8smaster=nil, processcnt=nil, portcnt=nil, componentcnt=nil, appcnt=nil, webservicecnt=nil, mounts=nil, network=nil, createtime=nil, imagecreatetime=nil, imagesize=nil, hoststatus=nil, requestid=nil)
          @HostID = hostid
          @HostIP = hostip
          @ContainerName = containername
          @Status = status
          @RunAs = runas
          @Cmd = cmd
          @CPUUsage = cpuusage
          @RamUsage = ramusage
          @ImageName = imagename
          @ImageID = imageid
          @POD = pod
          @K8sMaster = k8smaster
          @ProcessCnt = processcnt
          @PortCnt = portcnt
          @ComponentCnt = componentcnt
          @AppCnt = appcnt
          @WebServiceCnt = webservicecnt
          @Mounts = mounts
          @Network = network
          @CreateTime = createtime
          @ImageCreateTime = imagecreatetime
          @ImageSize = imagesize
          @HostStatus = hoststatus
          @RequestId = requestid
        end

        def deserialize(params)
          @HostID = params['HostID']
          @HostIP = params['HostIP']
          @ContainerName = params['ContainerName']
          @Status = params['Status']
          @RunAs = params['RunAs']
          @Cmd = params['Cmd']
          @CPUUsage = params['CPUUsage']
          @RamUsage = params['RamUsage']
          @ImageName = params['ImageName']
          @ImageID = params['ImageID']
          @POD = params['POD']
          @K8sMaster = params['K8sMaster']
          @ProcessCnt = params['ProcessCnt']
          @PortCnt = params['PortCnt']
          @ComponentCnt = params['ComponentCnt']
          @AppCnt = params['AppCnt']
          @WebServiceCnt = params['WebServiceCnt']
          unless params['Mounts'].nil?
            @Mounts = []
            params['Mounts'].each do |i|
              containermount_tmp = ContainerMount.new
              containermount_tmp.deserialize(i)
              @Mounts << containermount_tmp
            end
          end
          unless params['Network'].nil?
            @Network = ContainerNetwork.new
            @Network.deserialize(params['Network'])
          end
          @CreateTime = params['CreateTime']
          @ImageCreateTime = params['ImageCreateTime']
          @ImageSize = params['ImageSize']
          @HostStatus = params['HostStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetContainerList请求参数结构体
      class DescribeAssetContainerListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>ContainerName - String - 是否必填：否 - 容器名称模糊搜索</li>
        # <li>Status - String - 是否必填：否 - 容器运行状态筛选，0："created",1："running", 2："paused", 3："restarting", 4："removing", 5："exited", 6："dead" </li>
        # <li>Runas - String - 是否必填：否 - 运行用户筛选</li>
        # <li>ImageName- String - 是否必填：否 - 镜像名称搜索</li>
        # <li>HostIP- string - 是否必填：否 - 主机ip搜索</li>
        # <li>OrderBy - String 是否必填：否 -排序字段，支持：cpu_usage, mem_usage的动态排序 ["cpu_usage","+"]  '+'升序、'-'降序</li>
        # @type Filters: Array
        # @param By: 排序字段
        # @type By: String
        # @param Order: 排序方式 asc,desc
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
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeAssetContainerList返回参数结构体
      class DescribeAssetContainerListResponse < TencentCloud::Common::AbstractModel
        # @param List: 容器列表
        # @type List: Array
        # @param TotalCount: 总数量
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
              containerinfo_tmp = ContainerInfo.new
              containerinfo_tmp.deserialize(i)
              @List << containerinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetDBServiceList请求参数结构体
      class DescribeAssetDBServiceListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords- String - 是否必填：否 - 模糊查询可选字段</li>
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
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
        end
      end

      # DescribeAssetDBServiceList返回参数结构体
      class DescribeAssetDBServiceListResponse < TencentCloud::Common::AbstractModel
        # @param List: db服务列表
        # @type List: Array
        # @param TotalCount: 总数量
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
              serviceinfo_tmp = ServiceInfo.new
              serviceinfo_tmp.deserialize(i)
              @List << serviceinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetHostDetail请求参数结构体
      class DescribeAssetHostDetailRequest < TencentCloud::Common::AbstractModel
        # @param HostId: 主机id
        # @type HostId: String

        attr_accessor :HostId
        
        def initialize(hostid=nil)
          @HostId = hostid
        end

        def deserialize(params)
          @HostId = params['HostId']
        end
      end

      # DescribeAssetHostDetail返回参数结构体
      class DescribeAssetHostDetailResponse < TencentCloud::Common::AbstractModel
        # @param UUID: 云镜uuid
        # @type UUID: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param HostName: 主机名
        # @type HostName: String
        # @param Group: 主机分组
        # @type Group: String
        # @param HostIP: 主机IP
        # @type HostIP: String
        # @param OsName: 操作系统
        # @type OsName: String
        # @param AgentVersion: agent版本
        # @type AgentVersion: String
        # @param KernelVersion: 内核版本
        # @type KernelVersion: String
        # @param DockerVersion: docker版本
        # @type DockerVersion: String
        # @param DockerAPIVersion: docker api版本
        # @type DockerAPIVersion: String
        # @param DockerGoVersion: docker go 版本
        # @type DockerGoVersion: String
        # @param DockerFileSystemDriver: docker 文件系统类型
        # @type DockerFileSystemDriver: String
        # @param DockerRootDir: docker root 目录
        # @type DockerRootDir: String
        # @param ImageCnt: 镜像数
        # @type ImageCnt: Integer
        # @param ContainerCnt: 容器数
        # @type ContainerCnt: Integer
        # @param K8sMasterIP: k8s IP
        # @type K8sMasterIP: String
        # @param K8sVersion: k8s version
        # @type K8sVersion: String
        # @param KubeProxyVersion: kube proxy
        # @type KubeProxyVersion: String
        # @param Status: "UNINSTALL"："未安装","OFFLINE"："离线", "ONLINE"："防护中
        # @type Status: String
        # @param IsContainerd: 是否Containerd
        # @type IsContainerd: Boolean
        # @param MachineType: 主机来源;"TENCENTCLOUD":"腾讯云服务器","OTHERCLOUD":"非腾讯云服务器"
        # @type MachineType: String
        # @param PublicIp: 外网ip
        # @type PublicIp: String
        # @param InstanceID: 主机实例ID
        # @type InstanceID: String
        # @param RegionID: 地域ID
        # @type RegionID: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UUID, :UpdateTime, :HostName, :Group, :HostIP, :OsName, :AgentVersion, :KernelVersion, :DockerVersion, :DockerAPIVersion, :DockerGoVersion, :DockerFileSystemDriver, :DockerRootDir, :ImageCnt, :ContainerCnt, :K8sMasterIP, :K8sVersion, :KubeProxyVersion, :Status, :IsContainerd, :MachineType, :PublicIp, :InstanceID, :RegionID, :RequestId
        
        def initialize(uuid=nil, updatetime=nil, hostname=nil, group=nil, hostip=nil, osname=nil, agentversion=nil, kernelversion=nil, dockerversion=nil, dockerapiversion=nil, dockergoversion=nil, dockerfilesystemdriver=nil, dockerrootdir=nil, imagecnt=nil, containercnt=nil, k8smasterip=nil, k8sversion=nil, kubeproxyversion=nil, status=nil, iscontainerd=nil, machinetype=nil, publicip=nil, instanceid=nil, regionid=nil, requestid=nil)
          @UUID = uuid
          @UpdateTime = updatetime
          @HostName = hostname
          @Group = group
          @HostIP = hostip
          @OsName = osname
          @AgentVersion = agentversion
          @KernelVersion = kernelversion
          @DockerVersion = dockerversion
          @DockerAPIVersion = dockerapiversion
          @DockerGoVersion = dockergoversion
          @DockerFileSystemDriver = dockerfilesystemdriver
          @DockerRootDir = dockerrootdir
          @ImageCnt = imagecnt
          @ContainerCnt = containercnt
          @K8sMasterIP = k8smasterip
          @K8sVersion = k8sversion
          @KubeProxyVersion = kubeproxyversion
          @Status = status
          @IsContainerd = iscontainerd
          @MachineType = machinetype
          @PublicIp = publicip
          @InstanceID = instanceid
          @RegionID = regionid
          @RequestId = requestid
        end

        def deserialize(params)
          @UUID = params['UUID']
          @UpdateTime = params['UpdateTime']
          @HostName = params['HostName']
          @Group = params['Group']
          @HostIP = params['HostIP']
          @OsName = params['OsName']
          @AgentVersion = params['AgentVersion']
          @KernelVersion = params['KernelVersion']
          @DockerVersion = params['DockerVersion']
          @DockerAPIVersion = params['DockerAPIVersion']
          @DockerGoVersion = params['DockerGoVersion']
          @DockerFileSystemDriver = params['DockerFileSystemDriver']
          @DockerRootDir = params['DockerRootDir']
          @ImageCnt = params['ImageCnt']
          @ContainerCnt = params['ContainerCnt']
          @K8sMasterIP = params['K8sMasterIP']
          @K8sVersion = params['K8sVersion']
          @KubeProxyVersion = params['KubeProxyVersion']
          @Status = params['Status']
          @IsContainerd = params['IsContainerd']
          @MachineType = params['MachineType']
          @PublicIp = params['PublicIp']
          @InstanceID = params['InstanceID']
          @RegionID = params['RegionID']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetHostList请求参数结构体
      class DescribeAssetHostListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Status - String - 是否必填：否 - agent状态筛选，"ALL":"全部"(或不传该字段),"UNINSTALL"："未安装","OFFLINE"："离线", "ONLINE"："防护中"</li>
        # <li>HostName - String - 是否必填：否 - 主机名筛选</li>
        # <li>Group- String - 是否必填：否 - 主机群组搜索</li>
        # <li>HostIP- string - 是否必填：否 - 主机ip搜索</li>
        # <li>HostID- string - 是否必填：否 - 主机id搜索</li>
        # <li>DockerVersion- string - 是否必填：否 - docker版本搜索</li>
        # <li>MachineType- string - 是否必填：否 - 主机来源MachineType搜索，"ALL":"全部"(或不传该字段),"TENCENTCLOUD":"腾讯云服务器","OTHERCLOUD":"非腾讯云服务器"</li>
        # <li>DockerStatus- string - 是否必填：否 - docker安装状态，"ALL":"全部"(或不传该字段),"INSTALL":"已安装","UNINSTALL":"未安装"</li>
        # @type Filters: Array
        # @param By: 排序字段
        # @type By: String
        # @param Order: 排序方式 asc,desc
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
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeAssetHostList返回参数结构体
      class DescribeAssetHostListResponse < TencentCloud::Common::AbstractModel
        # @param List: 主机列表
        # @type List: Array
        # @param TotalCount: 总数量
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
              hostinfo_tmp = HostInfo.new
              hostinfo_tmp.deserialize(i)
              @List << hostinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetImageBindRuleInfo请求参数结构体
      class DescribeAssetImageBindRuleInfoRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤参数,"Filters":[{"Name":"EventType","Values":[""]}]
        # EventType取值：
        # "FILE_ABNORMAL_READ" 访问控制
        # "MALICE_PROCESS_START" 恶意进程启动
        # @type Filters: Array
        # @param Order: 升序降序,asc desc
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
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAssetImageBindRuleInfo返回参数结构体
      class DescribeAssetImageBindRuleInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 事件总数量
        # @type TotalCount: Integer
        # @param ImageBindRuleSet: 镜像绑定规则列表
        # @type ImageBindRuleSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ImageBindRuleSet, :RequestId
        
        def initialize(totalcount=nil, imagebindruleset=nil, requestid=nil)
          @TotalCount = totalcount
          @ImageBindRuleSet = imagebindruleset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ImageBindRuleSet'].nil?
            @ImageBindRuleSet = []
            params['ImageBindRuleSet'].each do |i|
              imagesbindruleinfo_tmp = ImagesBindRuleInfo.new
              imagesbindruleinfo_tmp.deserialize(i)
              @ImageBindRuleSet << imagesbindruleinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetImageDetail请求参数结构体
      class DescribeAssetImageDetailRequest < TencentCloud::Common::AbstractModel
        # @param ImageID: 镜像id
        # @type ImageID: String

        attr_accessor :ImageID
        
        def initialize(imageid=nil)
          @ImageID = imageid
        end

        def deserialize(params)
          @ImageID = params['ImageID']
        end
      end

      # DescribeAssetImageDetail返回参数结构体
      class DescribeAssetImageDetailResponse < TencentCloud::Common::AbstractModel
        # @param ImageID: 镜像ID
        # @type ImageID: String
        # @param ImageName: 镜像名称
        # @type ImageName: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Size: 镜像大小
        # @type Size: Integer
        # @param HostCnt: 关联主机个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostCnt: Integer
        # @param ContainerCnt: 关联容器个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerCnt: Integer
        # @param ScanTime: 最近扫描时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanTime: String
        # @param VulCnt: 漏洞个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulCnt: Integer
        # @param RiskCnt: 风险行为数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskCnt: Integer
        # @param SensitiveInfoCnt: 敏感信息数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SensitiveInfoCnt: Integer
        # @param IsTrustImage: 是否信任镜像
        # @type IsTrustImage: Boolean
        # @param OsName: 镜像系统
        # @type OsName: String
        # @param AgentError: agent镜像扫描错误
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentError: String
        # @param ScanError: 后端镜像扫描错误
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanError: String
        # @param Architecture: 系统架构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Architecture: String
        # @param Author: 作者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Author: String
        # @param BuildHistory: 构建历史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildHistory: String
        # @param ScanVirusProgress: 木马扫描进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanVirusProgress: Integer
        # @param ScanVulProgress: 漏洞扫进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanVulProgress: Integer
        # @param ScanRiskProgress: 敏感信息扫描进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanRiskProgress: Integer
        # @param ScanVirusError: 木马扫描错误
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanVirusError: String
        # @param ScanVulError: 漏洞扫描错误
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanVulError: String
        # @param ScanRiskError: 敏感信息错误
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanRiskError: String
        # @param ScanStatus: 镜像扫描状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanStatus: String
        # @param VirusCnt: 木马病毒数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirusCnt: Integer
        # @param Status: 镜像扫描状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param RemainScanTime: 剩余扫描时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemainScanTime: Integer
        # @param IsAuthorized: 授权为：1，未授权为：0
        # @type IsAuthorized: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageID, :ImageName, :CreateTime, :Size, :HostCnt, :ContainerCnt, :ScanTime, :VulCnt, :RiskCnt, :SensitiveInfoCnt, :IsTrustImage, :OsName, :AgentError, :ScanError, :Architecture, :Author, :BuildHistory, :ScanVirusProgress, :ScanVulProgress, :ScanRiskProgress, :ScanVirusError, :ScanVulError, :ScanRiskError, :ScanStatus, :VirusCnt, :Status, :RemainScanTime, :IsAuthorized, :RequestId
        
        def initialize(imageid=nil, imagename=nil, createtime=nil, size=nil, hostcnt=nil, containercnt=nil, scantime=nil, vulcnt=nil, riskcnt=nil, sensitiveinfocnt=nil, istrustimage=nil, osname=nil, agenterror=nil, scanerror=nil, architecture=nil, author=nil, buildhistory=nil, scanvirusprogress=nil, scanvulprogress=nil, scanriskprogress=nil, scanviruserror=nil, scanvulerror=nil, scanriskerror=nil, scanstatus=nil, viruscnt=nil, status=nil, remainscantime=nil, isauthorized=nil, requestid=nil)
          @ImageID = imageid
          @ImageName = imagename
          @CreateTime = createtime
          @Size = size
          @HostCnt = hostcnt
          @ContainerCnt = containercnt
          @ScanTime = scantime
          @VulCnt = vulcnt
          @RiskCnt = riskcnt
          @SensitiveInfoCnt = sensitiveinfocnt
          @IsTrustImage = istrustimage
          @OsName = osname
          @AgentError = agenterror
          @ScanError = scanerror
          @Architecture = architecture
          @Author = author
          @BuildHistory = buildhistory
          @ScanVirusProgress = scanvirusprogress
          @ScanVulProgress = scanvulprogress
          @ScanRiskProgress = scanriskprogress
          @ScanVirusError = scanviruserror
          @ScanVulError = scanvulerror
          @ScanRiskError = scanriskerror
          @ScanStatus = scanstatus
          @VirusCnt = viruscnt
          @Status = status
          @RemainScanTime = remainscantime
          @IsAuthorized = isauthorized
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageID = params['ImageID']
          @ImageName = params['ImageName']
          @CreateTime = params['CreateTime']
          @Size = params['Size']
          @HostCnt = params['HostCnt']
          @ContainerCnt = params['ContainerCnt']
          @ScanTime = params['ScanTime']
          @VulCnt = params['VulCnt']
          @RiskCnt = params['RiskCnt']
          @SensitiveInfoCnt = params['SensitiveInfoCnt']
          @IsTrustImage = params['IsTrustImage']
          @OsName = params['OsName']
          @AgentError = params['AgentError']
          @ScanError = params['ScanError']
          @Architecture = params['Architecture']
          @Author = params['Author']
          @BuildHistory = params['BuildHistory']
          @ScanVirusProgress = params['ScanVirusProgress']
          @ScanVulProgress = params['ScanVulProgress']
          @ScanRiskProgress = params['ScanRiskProgress']
          @ScanVirusError = params['ScanVirusError']
          @ScanVulError = params['ScanVulError']
          @ScanRiskError = params['ScanRiskError']
          @ScanStatus = params['ScanStatus']
          @VirusCnt = params['VirusCnt']
          @Status = params['Status']
          @RemainScanTime = params['RemainScanTime']
          @IsAuthorized = params['IsAuthorized']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetImageHostList请求参数结构体
      class DescribeAssetImageHostListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件 支持ImageID,HostID
        # @type Filters: Array

        attr_accessor :Filters
        
        def initialize(filters=nil)
          @Filters = filters
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
        end
      end

      # DescribeAssetImageHostList返回参数结构体
      class DescribeAssetImageHostListResponse < TencentCloud::Common::AbstractModel
        # @param List: 镜像列表
        # @type List: Array
        # @param TotalCount: 总数量
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
              imagehost_tmp = ImageHost.new
              imagehost_tmp.deserialize(i)
              @List << imagehost_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetImageListExport请求参数结构体
      class DescribeAssetImageListExportRequest < TencentCloud::Common::AbstractModel
        # @param ExportField: 导出字段
        # @type ExportField: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>ImageName- String - 是否必填：否 - 镜像名称筛选，</li>
        # <li>ScanStatus - String - 是否必填：否 - 镜像扫描状态notScan，scanning，scanned，scanErr</li>
        # <li>ImageID- String - 是否必填：否 - 镜像ID筛选，</li>
        # <li>SecurityRisk- String - 是否必填：否 - 安全风险，VulCnt 、VirusCnt、RiskCnt、IsTrustImage</li>
        # @type Filters: Array
        # @param By: 排序字段
        # @type By: String
        # @param Order: 排序方式 asc,desc
        # @type Order: String

        attr_accessor :ExportField, :Limit, :Offset, :Filters, :By, :Order
        
        def initialize(exportfield=nil, limit=nil, offset=nil, filters=nil, by=nil, order=nil)
          @ExportField = exportfield
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @By = by
          @Order = order
        end

        def deserialize(params)
          @ExportField = params['ExportField']
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
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeAssetImageListExport返回参数结构体
      class DescribeAssetImageListExportResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: excel文件下载地址
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

      # DescribeAssetImageList请求参数结构体
      class DescribeAssetImageListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>ImageName- String - 是否必填：否 - 镜像名称筛选，</li>
        # <li>ScanStatus - String - 是否必填：否 - 镜像扫描状态notScan，scanning，scanned，scanErr</li>
        # <li>ImageID- String - 是否必填：否 - 镜像ID筛选，</li>
        # <li>SecurityRisk- String - 是否必填：否 - 安全风险，VulCnt 、VirusCnt、RiskCnt、IsTrustImage</li>
        # @type Filters: Array
        # @param By: 排序字段
        # @type By: String
        # @param Order: 排序方式 asc,desc
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
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeAssetImageList返回参数结构体
      class DescribeAssetImageListResponse < TencentCloud::Common::AbstractModel
        # @param List: 镜像列表
        # @type List: Array
        # @param TotalCount: 总数量
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
              imagesinfo_tmp = ImagesInfo.new
              imagesinfo_tmp.deserialize(i)
              @List << imagesinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetImageRegistryAssetStatus请求参数结构体
      class DescribeAssetImageRegistryAssetStatusRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAssetImageRegistryAssetStatus返回参数结构体
      class DescribeAssetImageRegistryAssetStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 更新进度状态,doing更新中，success更新成功，failed失败
        # @type Status: String
        # @param Err: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Err: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Err, :RequestId
        
        def initialize(status=nil, err=nil, requestid=nil)
          @Status = status
          @Err = err
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Err = params['Err']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetImageRegistryDetail请求参数结构体
      class DescribeAssetImageRegistryDetailRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAssetImageRegistryDetail返回参数结构体
      class DescribeAssetImageRegistryDetailResponse < TencentCloud::Common::AbstractModel
        # @param ImageDigest: 镜像Digest
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageDigest: String
        # @param ImageRepoAddress: 镜像地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageRepoAddress: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageDigest, :ImageRepoAddress, :RequestId
        
        def initialize(imagedigest=nil, imagerepoaddress=nil, requestid=nil)
          @ImageDigest = imagedigest
          @ImageRepoAddress = imagerepoaddress
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageDigest = params['ImageDigest']
          @ImageRepoAddress = params['ImageRepoAddress']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetImageRegistryListExport请求参数结构体
      class DescribeAssetImageRegistryListExportRequest < TencentCloud::Common::AbstractModel
        # @param ExportField: 导出字段
        # @type ExportField: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Filters: 排序字段
        # @type Filters: Array
        # @param By: 排序字段
        # @type By: String
        # @param Order: 排序方式，asc，desc
        # @type Order: String

        attr_accessor :ExportField, :Limit, :Offset, :Filters, :By, :Order
        
        def initialize(exportfield=nil, limit=nil, offset=nil, filters=nil, by=nil, order=nil)
          @ExportField = exportfield
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @By = by
          @Order = order
        end

        def deserialize(params)
          @ExportField = params['ExportField']
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
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeAssetImageRegistryListExport返回参数结构体
      class DescribeAssetImageRegistryListExportResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: excel文件下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeAssetImageRegistryList请求参数结构体
      class DescribeAssetImageRegistryListRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAssetImageRegistryList返回参数结构体
      class DescribeAssetImageRegistryListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAssetImageRegistryRegistryDetail请求参数结构体
      class DescribeAssetImageRegistryRegistryDetailRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 仓库唯一id
        # @type RegistryId: Integer

        attr_accessor :RegistryId
        
        def initialize(registryid=nil)
          @RegistryId = registryid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
        end
      end

      # DescribeAssetImageRegistryRegistryDetail返回参数结构体
      class DescribeAssetImageRegistryRegistryDetailResponse < TencentCloud::Common::AbstractModel
        # @param Name: 仓库名
        # @type Name: String
        # @param Username: 用户名
        # @type Username: String
        # @param Password: 密码
        # @type Password: String
        # @param Url: 仓库url
        # @type Url: String
        # @param RegistryType: 仓库类型，列表：harbor
        # @type RegistryType: String
        # @param RegistryVersion: 仓库版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistryVersion: String
        # @param NetType: 网络类型，列表：public（公网）
        # @type NetType: String
        # @param RegistryRegion: 区域，列表:default（默认）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistryRegion: String
        # @param SpeedLimit: 限速
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpeedLimit: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Username, :Password, :Url, :RegistryType, :RegistryVersion, :NetType, :RegistryRegion, :SpeedLimit, :RequestId
        
        def initialize(name=nil, username=nil, password=nil, url=nil, registrytype=nil, registryversion=nil, nettype=nil, registryregion=nil, speedlimit=nil, requestid=nil)
          @Name = name
          @Username = username
          @Password = password
          @Url = url
          @RegistryType = registrytype
          @RegistryVersion = registryversion
          @NetType = nettype
          @RegistryRegion = registryregion
          @SpeedLimit = speedlimit
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Username = params['Username']
          @Password = params['Password']
          @Url = params['Url']
          @RegistryType = params['RegistryType']
          @RegistryVersion = params['RegistryVersion']
          @NetType = params['NetType']
          @RegistryRegion = params['RegistryRegion']
          @SpeedLimit = params['SpeedLimit']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetImageRegistryRegistryList请求参数结构体
      class DescribeAssetImageRegistryRegistryListRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAssetImageRegistryRegistryList返回参数结构体
      class DescribeAssetImageRegistryRegistryListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAssetImageRegistryRiskInfoList请求参数结构体
      class DescribeAssetImageRegistryRiskInfoListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Level- String - 是否必填：否 - 漏洞级别筛选，</li>
        # <li>Name - String - 是否必填：否 - 漏洞名称</li>
        # @type Filters: Array
        # @param ImageInfo: 镜像id
        # @type ImageInfo: :class:`Tencentcloud::Tcss.v20201101.models.ImageInfo`
        # @param By: 排序字段（Level）
        # @type By: String
        # @param Order: 排序方式 + -
        # @type Order: String
        # @param Id: 镜像标识Id
        # @type Id: Integer

        attr_accessor :Limit, :Offset, :Filters, :ImageInfo, :By, :Order, :Id
        
        def initialize(limit=nil, offset=nil, filters=nil, imageinfo=nil, by=nil, order=nil, id=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @ImageInfo = imageinfo
          @By = by
          @Order = order
          @Id = id
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
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          @By = params['By']
          @Order = params['Order']
          @Id = params['Id']
        end
      end

      # DescribeAssetImageRegistryRiskInfoList返回参数结构体
      class DescribeAssetImageRegistryRiskInfoListResponse < TencentCloud::Common::AbstractModel
        # @param List: 镜像漏洞列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param TotalCount: 总数量
        # 注意：此字段可能返回 null，表示取不到有效值。
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
              imagerisk_tmp = ImageRisk.new
              imagerisk_tmp.deserialize(i)
              @List << imagerisk_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetImageRegistryRiskListExport请求参数结构体
      class DescribeAssetImageRegistryRiskListExportRequest < TencentCloud::Common::AbstractModel
        # @param ExportField: 导出字段
        # @type ExportField: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Level- String - 是否必填：否 - 漏洞级别筛选，</li>
        # <li>Name - String - 是否必填：否 - 漏洞名称</li>
        # @type Filters: Array
        # @param ImageInfo: 镜像信息
        # @type ImageInfo: :class:`Tencentcloud::Tcss.v20201101.models.ImageInfo`
        # @param Id: 镜像标识Id
        # @type Id: Integer

        attr_accessor :ExportField, :Limit, :Offset, :Filters, :ImageInfo, :Id
        
        def initialize(exportfield=nil, limit=nil, offset=nil, filters=nil, imageinfo=nil, id=nil)
          @ExportField = exportfield
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @ImageInfo = imageinfo
          @Id = id
        end

        def deserialize(params)
          @ExportField = params['ExportField']
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
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          @Id = params['Id']
        end
      end

      # DescribeAssetImageRegistryRiskListExport返回参数结构体
      class DescribeAssetImageRegistryRiskListExportResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: excel文件下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeAssetImageRegistryScanStatusOneKey请求参数结构体
      class DescribeAssetImageRegistryScanStatusOneKeyRequest < TencentCloud::Common::AbstractModel
        # @param Images: 需要获取进度的镜像列表
        # @type Images: Array
        # @param All: 是否获取全部镜像
        # @type All: Boolean
        # @param Id: 需要获取进度的镜像列表Id
        # @type Id: Array

        attr_accessor :Images, :All, :Id
        
        def initialize(images=nil, all=nil, id=nil)
          @Images = images
          @All = all
          @Id = id
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
          @All = params['All']
          @Id = params['Id']
        end
      end

      # DescribeAssetImageRegistryScanStatusOneKey返回参数结构体
      class DescribeAssetImageRegistryScanStatusOneKeyResponse < TencentCloud::Common::AbstractModel
        # @param ImageTotal: 镜像个数
        # @type ImageTotal: Integer
        # @param ImageScanCnt: 扫描镜像个数
        # @type ImageScanCnt: Integer
        # @param ImageStatus: 扫描进度列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageStatus: Array
        # @param SuccessCount: 安全个数
        # @type SuccessCount: Integer
        # @param RiskCount: 风险个数
        # @type RiskCount: Integer
        # @param Schedule: 总的扫描进度
        # @type Schedule: Integer
        # @param Status: 总的扫描状态
        # @type Status: String
        # @param ScanRemainTime: 扫描剩余时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanRemainTime: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageTotal, :ImageScanCnt, :ImageStatus, :SuccessCount, :RiskCount, :Schedule, :Status, :ScanRemainTime, :RequestId
        
        def initialize(imagetotal=nil, imagescancnt=nil, imagestatus=nil, successcount=nil, riskcount=nil, schedule=nil, status=nil, scanremaintime=nil, requestid=nil)
          @ImageTotal = imagetotal
          @ImageScanCnt = imagescancnt
          @ImageStatus = imagestatus
          @SuccessCount = successcount
          @RiskCount = riskcount
          @Schedule = schedule
          @Status = status
          @ScanRemainTime = scanremaintime
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageTotal = params['ImageTotal']
          @ImageScanCnt = params['ImageScanCnt']
          unless params['ImageStatus'].nil?
            @ImageStatus = []
            params['ImageStatus'].each do |i|
              imageprogress_tmp = ImageProgress.new
              imageprogress_tmp.deserialize(i)
              @ImageStatus << imageprogress_tmp
            end
          end
          @SuccessCount = params['SuccessCount']
          @RiskCount = params['RiskCount']
          @Schedule = params['Schedule']
          @Status = params['Status']
          @ScanRemainTime = params['ScanRemainTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetImageRegistrySummary请求参数结构体
      class DescribeAssetImageRegistrySummaryRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAssetImageRegistrySummary返回参数结构体
      class DescribeAssetImageRegistrySummaryResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAssetImageRegistryVirusListExport请求参数结构体
      class DescribeAssetImageRegistryVirusListExportRequest < TencentCloud::Common::AbstractModel
        # @param ExportField: 导出字段
        # @type ExportField: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Level- String - 是否必填：否 - 漏洞级别筛选，</li>
        # <li>Name - String - 是否必填：否 - 漏洞名称</li>
        # @type Filters: Array
        # @param ImageInfo: 镜像信息
        # @type ImageInfo: :class:`Tencentcloud::Tcss.v20201101.models.ImageInfo`
        # @param Id: 镜像标识Id
        # @type Id: Integer

        attr_accessor :ExportField, :Limit, :Offset, :Filters, :ImageInfo, :Id
        
        def initialize(exportfield=nil, limit=nil, offset=nil, filters=nil, imageinfo=nil, id=nil)
          @ExportField = exportfield
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @ImageInfo = imageinfo
          @Id = id
        end

        def deserialize(params)
          @ExportField = params['ExportField']
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
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          @Id = params['Id']
        end
      end

      # DescribeAssetImageRegistryVirusListExport返回参数结构体
      class DescribeAssetImageRegistryVirusListExportResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: excel文件下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeAssetImageRegistryVirusList请求参数结构体
      class DescribeAssetImageRegistryVirusListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Level- String - 是否必填：否 - 漏洞级别筛选，</li>
        # <li>Name - String - 是否必填：否 - 漏洞名称</li>
        # @type Filters: Array
        # @param ImageInfo: 镜像信息
        # @type ImageInfo: :class:`Tencentcloud::Tcss.v20201101.models.ImageInfo`
        # @param Id: 镜像标识Id
        # @type Id: Integer

        attr_accessor :Limit, :Offset, :Filters, :ImageInfo, :Id
        
        def initialize(limit=nil, offset=nil, filters=nil, imageinfo=nil, id=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @ImageInfo = imageinfo
          @Id = id
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
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          @Id = params['Id']
        end
      end

      # DescribeAssetImageRegistryVirusList返回参数结构体
      class DescribeAssetImageRegistryVirusListResponse < TencentCloud::Common::AbstractModel
        # @param List: 镜像漏洞列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param TotalCount: 总数量
        # 注意：此字段可能返回 null，表示取不到有效值。
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
              imagevirus_tmp = ImageVirus.new
              imagevirus_tmp.deserialize(i)
              @List << imagevirus_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetImageRegistryVulListExport请求参数结构体
      class DescribeAssetImageRegistryVulListExportRequest < TencentCloud::Common::AbstractModel
        # @param ExportField: 导出字段
        # @type ExportField: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Level- String - 是否必填：否 - 漏洞级别筛选，</li>
        # <li>Name - String - 是否必填：否 - 漏洞名称</li>
        # @type Filters: Array
        # @param ImageInfo: 镜像信息
        # @type ImageInfo: :class:`Tencentcloud::Tcss.v20201101.models.ImageInfo`
        # @param Id: 镜像标识Id
        # @type Id: Integer

        attr_accessor :ExportField, :Limit, :Offset, :Filters, :ImageInfo, :Id
        
        def initialize(exportfield=nil, limit=nil, offset=nil, filters=nil, imageinfo=nil, id=nil)
          @ExportField = exportfield
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @ImageInfo = imageinfo
          @Id = id
        end

        def deserialize(params)
          @ExportField = params['ExportField']
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
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          @Id = params['Id']
        end
      end

      # DescribeAssetImageRegistryVulListExport返回参数结构体
      class DescribeAssetImageRegistryVulListExportResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: excel文件下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeAssetImageRegistryVulList请求参数结构体
      class DescribeAssetImageRegistryVulListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Level- String - 是否必填：否 - 漏洞级别筛选，</li>
        # <li>Name - String - 是否必填：否 - 漏洞名称</li>
        # @type Filters: Array
        # @param ImageInfo: 镜像信息
        # @type ImageInfo: :class:`Tencentcloud::Tcss.v20201101.models.ImageInfo`
        # @param Id: 镜像标识Id
        # @type Id: Integer

        attr_accessor :Limit, :Offset, :Filters, :ImageInfo, :Id
        
        def initialize(limit=nil, offset=nil, filters=nil, imageinfo=nil, id=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @ImageInfo = imageinfo
          @Id = id
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
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          @Id = params['Id']
        end
      end

      # DescribeAssetImageRegistryVulList返回参数结构体
      class DescribeAssetImageRegistryVulListResponse < TencentCloud::Common::AbstractModel
        # @param List: 镜像漏洞列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param TotalCount: 总数量
        # 注意：此字段可能返回 null，表示取不到有效值。
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
              imagevul_tmp = ImageVul.new
              imagevul_tmp.deserialize(i)
              @List << imagevul_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetImageRiskListExport请求参数结构体
      class DescribeAssetImageRiskListExportRequest < TencentCloud::Common::AbstractModel
        # @param ExportField: 导出字段
        # @type ExportField: Array
        # @param ImageID: 镜像id
        # @type ImageID: String
        # @param Filters: 过滤条件。
        # <li>Level- String - 是否必填：否 - 风险级别 1,2,3,4，</li>
        # <li>Behavior - String - 是否必填：否 - 风险行为 1,2,3,4</li>
        # <li>Type - String - 是否必填：否 - 风险类型  1,2,</li>
        # @type Filters: Array

        attr_accessor :ExportField, :ImageID, :Filters
        
        def initialize(exportfield=nil, imageid=nil, filters=nil)
          @ExportField = exportfield
          @ImageID = imageid
          @Filters = filters
        end

        def deserialize(params)
          @ExportField = params['ExportField']
          @ImageID = params['ImageID']
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

      # DescribeAssetImageRiskListExport返回参数结构体
      class DescribeAssetImageRiskListExportResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: excel文件下载地址
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

      # DescribeAssetImageRiskList请求参数结构体
      class DescribeAssetImageRiskListRequest < TencentCloud::Common::AbstractModel
        # @param ImageID: 镜像id
        # @type ImageID: String
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Level- String - 是否必填：否 - 风险级别 1,2,3,4，</li>
        # <li>Behavior - String - 是否必填：否 - 风险行为 1,2,3,4</li>
        # <li>Type - String - 是否必填：否 - 风险类型  1,2,</li>
        # @type Filters: Array
        # @param By: 排序字段
        # @type By: String
        # @param Order: 排序方式
        # @type Order: String

        attr_accessor :ImageID, :Limit, :Offset, :Filters, :By, :Order
        
        def initialize(imageid=nil, limit=nil, offset=nil, filters=nil, by=nil, order=nil)
          @ImageID = imageid
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @By = by
          @Order = order
        end

        def deserialize(params)
          @ImageID = params['ImageID']
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
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeAssetImageRiskList返回参数结构体
      class DescribeAssetImageRiskListResponse < TencentCloud::Common::AbstractModel
        # @param List: 镜像病毒列表
        # @type List: Array
        # @param TotalCount: 总数量
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
              imageriskinfo_tmp = ImageRiskInfo.new
              imageriskinfo_tmp.deserialize(i)
              @List << imageriskinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetImageScanSetting请求参数结构体
      class DescribeAssetImageScanSettingRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAssetImageScanSetting返回参数结构体
      class DescribeAssetImageScanSettingResponse < TencentCloud::Common::AbstractModel
        # @param Enable: 开关
        # @type Enable: Boolean
        # @param ScanTime: 扫描时刻(完整时间;后端按0时区解析时分秒)
        # @type ScanTime: String
        # @param ScanPeriod: 扫描间隔
        # @type ScanPeriod: Integer
        # @param ScanVirus: 扫描木马
        # @type ScanVirus: Boolean
        # @param ScanRisk: 扫描敏感信息
        # @type ScanRisk: Boolean
        # @param ScanVul: 扫描漏洞
        # @type ScanVul: Boolean
        # @param All: 扫描全部镜像
        # @type All: Boolean
        # @param Images: 自定义扫描镜像
        # @type Images: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Enable, :ScanTime, :ScanPeriod, :ScanVirus, :ScanRisk, :ScanVul, :All, :Images, :RequestId
        
        def initialize(enable=nil, scantime=nil, scanperiod=nil, scanvirus=nil, scanrisk=nil, scanvul=nil, all=nil, images=nil, requestid=nil)
          @Enable = enable
          @ScanTime = scantime
          @ScanPeriod = scanperiod
          @ScanVirus = scanvirus
          @ScanRisk = scanrisk
          @ScanVul = scanvul
          @All = all
          @Images = images
          @RequestId = requestid
        end

        def deserialize(params)
          @Enable = params['Enable']
          @ScanTime = params['ScanTime']
          @ScanPeriod = params['ScanPeriod']
          @ScanVirus = params['ScanVirus']
          @ScanRisk = params['ScanRisk']
          @ScanVul = params['ScanVul']
          @All = params['All']
          @Images = params['Images']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetImageScanStatus请求参数结构体
      class DescribeAssetImageScanStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskID: 任务id
        # @type TaskID: String

        attr_accessor :TaskID
        
        def initialize(taskid=nil)
          @TaskID = taskid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
        end
      end

      # DescribeAssetImageScanStatus返回参数结构体
      class DescribeAssetImageScanStatusResponse < TencentCloud::Common::AbstractModel
        # @param ImageTotal: 镜像个数
        # @type ImageTotal: Integer
        # @param ImageScanCnt: 扫描镜像个数
        # @type ImageScanCnt: Integer
        # @param Status: 扫描状态
        # @type Status: String
        # @param Schedule: 扫描进度 ImageScanCnt/ImageTotal *100
        # @type Schedule: Integer
        # @param SuccessCount: 安全个数
        # @type SuccessCount: Integer
        # @param RiskCount: 风险个数
        # @type RiskCount: Integer
        # @param LeftSeconds: 剩余扫描时间
        # @type LeftSeconds: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageTotal, :ImageScanCnt, :Status, :Schedule, :SuccessCount, :RiskCount, :LeftSeconds, :RequestId
        
        def initialize(imagetotal=nil, imagescancnt=nil, status=nil, schedule=nil, successcount=nil, riskcount=nil, leftseconds=nil, requestid=nil)
          @ImageTotal = imagetotal
          @ImageScanCnt = imagescancnt
          @Status = status
          @Schedule = schedule
          @SuccessCount = successcount
          @RiskCount = riskcount
          @LeftSeconds = leftseconds
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageTotal = params['ImageTotal']
          @ImageScanCnt = params['ImageScanCnt']
          @Status = params['Status']
          @Schedule = params['Schedule']
          @SuccessCount = params['SuccessCount']
          @RiskCount = params['RiskCount']
          @LeftSeconds = params['LeftSeconds']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetImageScanTask请求参数结构体
      class DescribeAssetImageScanTaskRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAssetImageScanTask返回参数结构体
      class DescribeAssetImageScanTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskID: 任务id
        # @type TaskID: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskID, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskID = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetImageSimpleList请求参数结构体
      class DescribeAssetImageSimpleListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords- String - 是否必填：否 - 镜像名、镜像id 称筛选，</li>
        # @type Filters: Array
        # @param By: 排序字段
        # @type By: String
        # @param Order: 排序方式 asc,desc
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
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeAssetImageSimpleList返回参数结构体
      class DescribeAssetImageSimpleListResponse < TencentCloud::Common::AbstractModel
        # @param List: 镜像列表
        # @type List: Array
        # @param TotalCount: 总数量
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
              assetsimpleimageinfo_tmp = AssetSimpleImageInfo.new
              assetsimpleimageinfo_tmp.deserialize(i)
              @List << assetsimpleimageinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetImageVirusListExport请求参数结构体
      class DescribeAssetImageVirusListExportRequest < TencentCloud::Common::AbstractModel
        # @param ExportField: 列表支持字段
        # @type ExportField: Array
        # @param ImageID: 镜像id
        # @type ImageID: String
        # @param Filters: 过滤条件。
        # <li>Name- String - 是否必填：否 - 镜像名称筛选，</li>
        # <li>RiskLevel - String - 是否必填：否 - 风险等级  1,2,3,4</li>
        # @type Filters: Array

        attr_accessor :ExportField, :ImageID, :Filters
        
        def initialize(exportfield=nil, imageid=nil, filters=nil)
          @ExportField = exportfield
          @ImageID = imageid
          @Filters = filters
        end

        def deserialize(params)
          @ExportField = params['ExportField']
          @ImageID = params['ImageID']
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

      # DescribeAssetImageVirusListExport返回参数结构体
      class DescribeAssetImageVirusListExportResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: excel文件下载地址
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

      # DescribeAssetImageVirusList请求参数结构体
      class DescribeAssetImageVirusListRequest < TencentCloud::Common::AbstractModel
        # @param ImageID: 镜像id
        # @type ImageID: String
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Name- String - 是否必填：否 - 镜像名称筛选，</li>
        # <li>RiskLevel - String - 是否必填：否 - 风险等级  1,2,3,4</li>
        # @type Filters: Array
        # @param Order: 排序 asc desc
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :ImageID, :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(imageid=nil, limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @ImageID = imageid
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @ImageID = params['ImageID']
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

      # DescribeAssetImageVirusList返回参数结构体
      class DescribeAssetImageVirusListResponse < TencentCloud::Common::AbstractModel
        # @param List: 镜像病毒列表
        # @type List: Array
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param VirusScanStatus: 病毒扫描状态
        # 0:未扫描
        # 1:扫描中
        # 2:扫描完成
        # 3:扫描出错
        # 4:扫描取消
        # @type VirusScanStatus: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :TotalCount, :VirusScanStatus, :RequestId
        
        def initialize(list=nil, totalcount=nil, virusscanstatus=nil, requestid=nil)
          @List = list
          @TotalCount = totalcount
          @VirusScanStatus = virusscanstatus
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              imagevirusinfo_tmp = ImageVirusInfo.new
              imagevirusinfo_tmp.deserialize(i)
              @List << imagevirusinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @VirusScanStatus = params['VirusScanStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetImageVulListExport请求参数结构体
      class DescribeAssetImageVulListExportRequest < TencentCloud::Common::AbstractModel
        # @param ExportField: 导出字段
        # @type ExportField: Array
        # @param ImageID: 镜像id
        # @type ImageID: String
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Name- String - 是否必填：否 - 漏洞名称名称筛选，</li>
        # <li>Level - String - 是否必填：否 - 风险等级  1,2,3,4</li>
        # @type Filters: Array

        attr_accessor :ExportField, :ImageID, :Limit, :Offset, :Filters
        
        def initialize(exportfield=nil, imageid=nil, limit=nil, offset=nil, filters=nil)
          @ExportField = exportfield
          @ImageID = imageid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @ExportField = params['ExportField']
          @ImageID = params['ImageID']
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

      # DescribeAssetImageVulListExport返回参数结构体
      class DescribeAssetImageVulListExportResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: excel文件下载地址
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

      # DescribeAssetImageVulList请求参数结构体
      class DescribeAssetImageVulListRequest < TencentCloud::Common::AbstractModel
        # @param ImageID: 镜像id
        # @type ImageID: String
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Name- String - 是否必填：否 - 漏洞名称名称筛选，</li>
        # <li>Level - String - 是否必填：否 - 风险等级  1,2,3,4</li>
        # @type Filters: Array
        # @param By: 排序字段（Level）
        # @type By: String
        # @param Order: 排序方式 + -
        # @type Order: String

        attr_accessor :ImageID, :Limit, :Offset, :Filters, :By, :Order
        
        def initialize(imageid=nil, limit=nil, offset=nil, filters=nil, by=nil, order=nil)
          @ImageID = imageid
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @By = by
          @Order = order
        end

        def deserialize(params)
          @ImageID = params['ImageID']
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
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeAssetImageVulList返回参数结构体
      class DescribeAssetImageVulListResponse < TencentCloud::Common::AbstractModel
        # @param List: 镜像漏洞列表
        # @type List: Array
        # @param TotalCount: 总数量
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
              imagesvul_tmp = ImagesVul.new
              imagesvul_tmp.deserialize(i)
              @List << imagesvul_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetPortList请求参数结构体
      class DescribeAssetPortListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>All - String - 是否必填：否 - 模糊查询可选字段</li>
        # <li>RunAs - String - 是否必填：否 - 运行用户筛选，</li>
        # <li>ContainerID - String - 是否必填：否 - 容器id</li>
        # <li>HostID- String - 是否必填：是 - 主机id</li>
        # <li>HostIP- string - 是否必填：否 - 主机ip搜索</li>
        # <li>ProcessName- string - 是否必填：否 - 进程名搜索</li>
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
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
        end
      end

      # DescribeAssetPortList返回参数结构体
      class DescribeAssetPortListResponse < TencentCloud::Common::AbstractModel
        # @param List: 端口列表
        # @type List: Array
        # @param TotalCount: 总数量
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
              portinfo_tmp = PortInfo.new
              portinfo_tmp.deserialize(i)
              @List << portinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetProcessList请求参数结构体
      class DescribeAssetProcessListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>RunAs - String - 是否必填：否 - 运行用户筛选，</li>
        # <li>ContainerID - String - 是否必填：否 - 容器id</li>
        # <li>HostID- String - 是否必填：是 - 主机id</li>
        # <li>HostIP- string - 是否必填：否 - 主机ip搜索</li>
        # <li>ProcessName- string - 是否必填：否 - 进程名搜索</li>
        # <li>Pid- string - 是否必填：否 - 进程id搜索(关联进程)</li>
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
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
        end
      end

      # DescribeAssetProcessList返回参数结构体
      class DescribeAssetProcessListResponse < TencentCloud::Common::AbstractModel
        # @param List: 端口列表
        # @type List: Array
        # @param TotalCount: 总数量
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
              processinfo_tmp = ProcessInfo.new
              processinfo_tmp.deserialize(i)
              @List << processinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetSummary请求参数结构体
      class DescribeAssetSummaryRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAssetSummary返回参数结构体
      class DescribeAssetSummaryResponse < TencentCloud::Common::AbstractModel
        # @param AppCnt: 应用个数
        # @type AppCnt: Integer
        # @param ContainerCnt: 容器个数
        # @type ContainerCnt: Integer
        # @param ContainerPause: 暂停的容器个数
        # @type ContainerPause: Integer
        # @param ContainerRunning: 运行的容器个数
        # @type ContainerRunning: Integer
        # @param ContainerStop: 停止运行的容器个数
        # @type ContainerStop: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param DbCnt: 数据库个数
        # @type DbCnt: Integer
        # @param ImageCnt: 镜像个数
        # @type ImageCnt: Integer
        # @param HostOnline: 主机在线个数
        # @type HostOnline: Integer
        # @param HostCnt: 主机个数
        # @type HostCnt: Integer
        # @param ImageHasRiskInfoCnt: 有风险的镜像个数
        # @type ImageHasRiskInfoCnt: Integer
        # @param ImageHasVirusCnt: 有病毒的镜像个数
        # @type ImageHasVirusCnt: Integer
        # @param ImageHasVulsCnt: 有漏洞的镜像个数
        # @type ImageHasVulsCnt: Integer
        # @param ImageUntrustCnt: 不受信任的镜像个数
        # @type ImageUntrustCnt: Integer
        # @param ListenPortCnt: 监听的端口个数
        # @type ListenPortCnt: Integer
        # @param ProcessCnt: 进程个数
        # @type ProcessCnt: Integer
        # @param WebServiceCnt: web服务个数
        # @type WebServiceCnt: Integer
        # @param LatestImageScanTime: 最近镜像扫描时间
        # @type LatestImageScanTime: String
        # @param ImageUnsafeCnt: 风险镜像个数
        # @type ImageUnsafeCnt: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppCnt, :ContainerCnt, :ContainerPause, :ContainerRunning, :ContainerStop, :CreateTime, :DbCnt, :ImageCnt, :HostOnline, :HostCnt, :ImageHasRiskInfoCnt, :ImageHasVirusCnt, :ImageHasVulsCnt, :ImageUntrustCnt, :ListenPortCnt, :ProcessCnt, :WebServiceCnt, :LatestImageScanTime, :ImageUnsafeCnt, :RequestId
        
        def initialize(appcnt=nil, containercnt=nil, containerpause=nil, containerrunning=nil, containerstop=nil, createtime=nil, dbcnt=nil, imagecnt=nil, hostonline=nil, hostcnt=nil, imagehasriskinfocnt=nil, imagehasviruscnt=nil, imagehasvulscnt=nil, imageuntrustcnt=nil, listenportcnt=nil, processcnt=nil, webservicecnt=nil, latestimagescantime=nil, imageunsafecnt=nil, requestid=nil)
          @AppCnt = appcnt
          @ContainerCnt = containercnt
          @ContainerPause = containerpause
          @ContainerRunning = containerrunning
          @ContainerStop = containerstop
          @CreateTime = createtime
          @DbCnt = dbcnt
          @ImageCnt = imagecnt
          @HostOnline = hostonline
          @HostCnt = hostcnt
          @ImageHasRiskInfoCnt = imagehasriskinfocnt
          @ImageHasVirusCnt = imagehasviruscnt
          @ImageHasVulsCnt = imagehasvulscnt
          @ImageUntrustCnt = imageuntrustcnt
          @ListenPortCnt = listenportcnt
          @ProcessCnt = processcnt
          @WebServiceCnt = webservicecnt
          @LatestImageScanTime = latestimagescantime
          @ImageUnsafeCnt = imageunsafecnt
          @RequestId = requestid
        end

        def deserialize(params)
          @AppCnt = params['AppCnt']
          @ContainerCnt = params['ContainerCnt']
          @ContainerPause = params['ContainerPause']
          @ContainerRunning = params['ContainerRunning']
          @ContainerStop = params['ContainerStop']
          @CreateTime = params['CreateTime']
          @DbCnt = params['DbCnt']
          @ImageCnt = params['ImageCnt']
          @HostOnline = params['HostOnline']
          @HostCnt = params['HostCnt']
          @ImageHasRiskInfoCnt = params['ImageHasRiskInfoCnt']
          @ImageHasVirusCnt = params['ImageHasVirusCnt']
          @ImageHasVulsCnt = params['ImageHasVulsCnt']
          @ImageUntrustCnt = params['ImageUntrustCnt']
          @ListenPortCnt = params['ListenPortCnt']
          @ProcessCnt = params['ProcessCnt']
          @WebServiceCnt = params['WebServiceCnt']
          @LatestImageScanTime = params['LatestImageScanTime']
          @ImageUnsafeCnt = params['ImageUnsafeCnt']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetWebServiceList请求参数结构体
      class DescribeAssetWebServiceListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords- String - 是否必填：否 - 模糊查询可选字段</li>
        # <li>Type- String - 是否必填：否 - 主机运行状态筛选，"Apache"
        # "Jboss"
        # "lighttpd"
        # "Nginx"
        # "Tomcat"</li>
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
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
        end
      end

      # DescribeAssetWebServiceList返回参数结构体
      class DescribeAssetWebServiceListResponse < TencentCloud::Common::AbstractModel
        # @param List: 主机列表
        # @type List: Array
        # @param TotalCount: 总数量
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
              serviceinfo_tmp = ServiceInfo.new
              serviceinfo_tmp.deserialize(i)
              @List << serviceinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCheckItemList请求参数结构体
      class DescribeCheckItemListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 每次查询的最大记录数量
        # @type Limit: Integer
        # @param Filters: Name 可取值：risk_level风险等级, risk_target检查对象，风险对象,risk_type风险类别,risk_attri检测项所属的风险类型
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
              compliancefilters_tmp = ComplianceFilters.new
              compliancefilters_tmp.deserialize(i)
              @Filters << compliancefilters_tmp
            end
          end
        end
      end

      # DescribeCheckItemList返回参数结构体
      class DescribeCheckItemListResponse < TencentCloud::Common::AbstractModel
        # @param ClusterCheckItems: 检查项详情数组
        # @type ClusterCheckItems: Array
        # @param TotalCount: 检查项总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterCheckItems, :TotalCount, :RequestId
        
        def initialize(clustercheckitems=nil, totalcount=nil, requestid=nil)
          @ClusterCheckItems = clustercheckitems
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterCheckItems'].nil?
            @ClusterCheckItems = []
            params['ClusterCheckItems'].each do |i|
              clustercheckitem_tmp = ClusterCheckItem.new
              clustercheckitem_tmp.deserialize(i)
              @ClusterCheckItems << clustercheckitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterDetail请求参数结构体
      class DescribeClusterDetailRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeClusterDetail返回参数结构体
      class DescribeClusterDetailResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param ClusterName: 集群名字
        # @type ClusterName: String
        # @param ScanTaskProgress: 当前集群扫描任务的进度，100表示扫描完成.
        # @type ScanTaskProgress: Integer
        # @param ClusterVersion: 集群版本
        # @type ClusterVersion: String
        # @param ContainerRuntime: 运行时组件
        # @type ContainerRuntime: String
        # @param ClusterNodeNum: 集群节点数
        # @type ClusterNodeNum: Integer
        # @param ClusterStatus: 集群状态 (Running 运行中 Creating 创建中 Abnormal 异常 )
        # @type ClusterStatus: String
        # @param ClusterType: 集群类型：为托管集群MANAGED_CLUSTER、独立集群INDEPENDENT_CLUSTER
        # @type ClusterType: String
        # @param Region: 集群区域
        # @type Region: String
        # @param SeriousRiskCount: 严重风险检查项的数量
        # @type SeriousRiskCount: Integer
        # @param HighRiskCount: 高风险检查项的数量
        # @type HighRiskCount: Integer
        # @param MiddleRiskCount: 中风险检查项的数量
        # @type MiddleRiskCount: Integer
        # @param HintRiskCount: 提示风险检查项的数量
        # @type HintRiskCount: Integer
        # @param CheckStatus: 检查任务的状态
        # @type CheckStatus: String
        # @param DefenderStatus: 防御容器状态
        # @type DefenderStatus: String
        # @param TaskCreateTime: 扫描任务创建时间
        # @type TaskCreateTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterId, :ClusterName, :ScanTaskProgress, :ClusterVersion, :ContainerRuntime, :ClusterNodeNum, :ClusterStatus, :ClusterType, :Region, :SeriousRiskCount, :HighRiskCount, :MiddleRiskCount, :HintRiskCount, :CheckStatus, :DefenderStatus, :TaskCreateTime, :RequestId
        
        def initialize(clusterid=nil, clustername=nil, scantaskprogress=nil, clusterversion=nil, containerruntime=nil, clusternodenum=nil, clusterstatus=nil, clustertype=nil, region=nil, seriousriskcount=nil, highriskcount=nil, middleriskcount=nil, hintriskcount=nil, checkstatus=nil, defenderstatus=nil, taskcreatetime=nil, requestid=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @ScanTaskProgress = scantaskprogress
          @ClusterVersion = clusterversion
          @ContainerRuntime = containerruntime
          @ClusterNodeNum = clusternodenum
          @ClusterStatus = clusterstatus
          @ClusterType = clustertype
          @Region = region
          @SeriousRiskCount = seriousriskcount
          @HighRiskCount = highriskcount
          @MiddleRiskCount = middleriskcount
          @HintRiskCount = hintriskcount
          @CheckStatus = checkstatus
          @DefenderStatus = defenderstatus
          @TaskCreateTime = taskcreatetime
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @ScanTaskProgress = params['ScanTaskProgress']
          @ClusterVersion = params['ClusterVersion']
          @ContainerRuntime = params['ContainerRuntime']
          @ClusterNodeNum = params['ClusterNodeNum']
          @ClusterStatus = params['ClusterStatus']
          @ClusterType = params['ClusterType']
          @Region = params['Region']
          @SeriousRiskCount = params['SeriousRiskCount']
          @HighRiskCount = params['HighRiskCount']
          @MiddleRiskCount = params['MiddleRiskCount']
          @HintRiskCount = params['HintRiskCount']
          @CheckStatus = params['CheckStatus']
          @DefenderStatus = params['DefenderStatus']
          @TaskCreateTime = params['TaskCreateTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterSummary请求参数结构体
      class DescribeClusterSummaryRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeClusterSummary返回参数结构体
      class DescribeClusterSummaryResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集群总数
        # @type TotalCount: Integer
        # @param RiskClusterCount: 有风险的集群数量
        # @type RiskClusterCount: Integer
        # @param UncheckClusterCount: 未检查的集群数量
        # @type UncheckClusterCount: Integer
        # @param ManagedClusterCount: 托管集群数量
        # @type ManagedClusterCount: Integer
        # @param IndependentClusterCount: 独立集群数量
        # @type IndependentClusterCount: Integer
        # @param NoRiskClusterCount: 无风险的集群数量
        # @type NoRiskClusterCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RiskClusterCount, :UncheckClusterCount, :ManagedClusterCount, :IndependentClusterCount, :NoRiskClusterCount, :RequestId
        
        def initialize(totalcount=nil, riskclustercount=nil, uncheckclustercount=nil, managedclustercount=nil, independentclustercount=nil, noriskclustercount=nil, requestid=nil)
          @TotalCount = totalcount
          @RiskClusterCount = riskclustercount
          @UncheckClusterCount = uncheckclustercount
          @ManagedClusterCount = managedclustercount
          @IndependentClusterCount = independentclustercount
          @NoRiskClusterCount = noriskclustercount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RiskClusterCount = params['RiskClusterCount']
          @UncheckClusterCount = params['UncheckClusterCount']
          @ManagedClusterCount = params['ManagedClusterCount']
          @IndependentClusterCount = params['IndependentClusterCount']
          @NoRiskClusterCount = params['NoRiskClusterCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeComplianceAssetDetailInfo请求参数结构体
      class DescribeComplianceAssetDetailInfoRequest < TencentCloud::Common::AbstractModel
        # @param CustomerAssetId: 客户资产ID。
        # @type CustomerAssetId: Integer

        attr_accessor :CustomerAssetId
        
        def initialize(customerassetid=nil)
          @CustomerAssetId = customerassetid
        end

        def deserialize(params)
          @CustomerAssetId = params['CustomerAssetId']
        end
      end

      # DescribeComplianceAssetDetailInfo返回参数结构体
      class DescribeComplianceAssetDetailInfoResponse < TencentCloud::Common::AbstractModel
        # @param AssetDetailInfo: 某资产的详情。
        # @type AssetDetailInfo: :class:`Tencentcloud::Tcss.v20201101.models.ComplianceAssetDetailInfo`
        # @param ContainerDetailInfo: 当资产为容器时，返回此字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerDetailInfo: :class:`Tencentcloud::Tcss.v20201101.models.ComplianceContainerDetailInfo`
        # @param ImageDetailInfo: 当资产为镜像时，返回此字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageDetailInfo: :class:`Tencentcloud::Tcss.v20201101.models.ComplianceImageDetailInfo`
        # @param HostDetailInfo: 当资产为主机时，返回此字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostDetailInfo: :class:`Tencentcloud::Tcss.v20201101.models.ComplianceHostDetailInfo`
        # @param K8SDetailInfo: 当资产为K8S时，返回此字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type K8SDetailInfo: :class:`Tencentcloud::Tcss.v20201101.models.ComplianceK8SDetailInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AssetDetailInfo, :ContainerDetailInfo, :ImageDetailInfo, :HostDetailInfo, :K8SDetailInfo, :RequestId
        
        def initialize(assetdetailinfo=nil, containerdetailinfo=nil, imagedetailinfo=nil, hostdetailinfo=nil, k8sdetailinfo=nil, requestid=nil)
          @AssetDetailInfo = assetdetailinfo
          @ContainerDetailInfo = containerdetailinfo
          @ImageDetailInfo = imagedetailinfo
          @HostDetailInfo = hostdetailinfo
          @K8SDetailInfo = k8sdetailinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AssetDetailInfo'].nil?
            @AssetDetailInfo = ComplianceAssetDetailInfo.new
            @AssetDetailInfo.deserialize(params['AssetDetailInfo'])
          end
          unless params['ContainerDetailInfo'].nil?
            @ContainerDetailInfo = ComplianceContainerDetailInfo.new
            @ContainerDetailInfo.deserialize(params['ContainerDetailInfo'])
          end
          unless params['ImageDetailInfo'].nil?
            @ImageDetailInfo = ComplianceImageDetailInfo.new
            @ImageDetailInfo.deserialize(params['ImageDetailInfo'])
          end
          unless params['HostDetailInfo'].nil?
            @HostDetailInfo = ComplianceHostDetailInfo.new
            @HostDetailInfo.deserialize(params['HostDetailInfo'])
          end
          unless params['K8SDetailInfo'].nil?
            @K8SDetailInfo = ComplianceK8SDetailInfo.new
            @K8SDetailInfo.deserialize(params['K8SDetailInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeComplianceAssetList请求参数结构体
      class DescribeComplianceAssetListRequest < TencentCloud::Common::AbstractModel
        # @param AssetTypeSet: 资产类型列表。
        # @type AssetTypeSet: Array
        # @param Offset: 起始偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回的数据量，默认为10，最大为100。
        # @type Limit: Integer
        # @param Filters: 查询过滤器
        # @type Filters: Array

        attr_accessor :AssetTypeSet, :Offset, :Limit, :Filters
        
        def initialize(assettypeset=nil, offset=nil, limit=nil, filters=nil)
          @AssetTypeSet = assettypeset
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @AssetTypeSet = params['AssetTypeSet']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              compliancefilters_tmp = ComplianceFilters.new
              compliancefilters_tmp.deserialize(i)
              @Filters << compliancefilters_tmp
            end
          end
        end
      end

      # DescribeComplianceAssetList返回参数结构体
      class DescribeComplianceAssetListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回资产的总数。
        # @type TotalCount: Integer
        # @param AssetInfoList: 返回各类资产的列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AssetInfoList, :RequestId
        
        def initialize(totalcount=nil, assetinfolist=nil, requestid=nil)
          @TotalCount = totalcount
          @AssetInfoList = assetinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AssetInfoList'].nil?
            @AssetInfoList = []
            params['AssetInfoList'].each do |i|
              complianceassetinfo_tmp = ComplianceAssetInfo.new
              complianceassetinfo_tmp.deserialize(i)
              @AssetInfoList << complianceassetinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeComplianceAssetPolicyItemList请求参数结构体
      class DescribeComplianceAssetPolicyItemListRequest < TencentCloud::Common::AbstractModel
        # @param CustomerAssetId: 客户资产的ID。
        # @type CustomerAssetId: Integer
        # @param Offset: 起始偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 要获取的数据量，默认为10，最大为100。
        # @type Limit: Integer
        # @param Filters: 过滤器列表。Name字段支持
        # RiskLevel
        # @type Filters: Array

        attr_accessor :CustomerAssetId, :Offset, :Limit, :Filters
        
        def initialize(customerassetid=nil, offset=nil, limit=nil, filters=nil)
          @CustomerAssetId = customerassetid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @CustomerAssetId = params['CustomerAssetId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              compliancefilters_tmp = ComplianceFilters.new
              compliancefilters_tmp.deserialize(i)
              @Filters << compliancefilters_tmp
            end
          end
        end
      end

      # DescribeComplianceAssetPolicyItemList返回参数结构体
      class DescribeComplianceAssetPolicyItemListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回检测项的总数。如果用户未启用基线检查，此处返回0。
        # @type TotalCount: Integer
        # @param AssetPolicyItemList: 返回某个资产下的检测项的列表。
        # @type AssetPolicyItemList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AssetPolicyItemList, :RequestId
        
        def initialize(totalcount=nil, assetpolicyitemlist=nil, requestid=nil)
          @TotalCount = totalcount
          @AssetPolicyItemList = assetpolicyitemlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AssetPolicyItemList'].nil?
            @AssetPolicyItemList = []
            params['AssetPolicyItemList'].each do |i|
              complianceassetpolicyitem_tmp = ComplianceAssetPolicyItem.new
              complianceassetpolicyitem_tmp.deserialize(i)
              @AssetPolicyItemList << complianceassetpolicyitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCompliancePeriodTaskList请求参数结构体
      class DescribeCompliancePeriodTaskListRequest < TencentCloud::Common::AbstractModel
        # @param AssetType: 资产的类型，取值为：
        # ASSET_CONTAINER, 容器
        # ASSET_IMAGE, 镜像
        # ASSET_HOST, 主机
        # ASSET_K8S, K8S资产
        # @type AssetType: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 需要返回的数量，默认为10，最大值为100。
        # @type Limit: Integer

        attr_accessor :AssetType, :Offset, :Limit
        
        def initialize(assettype=nil, offset=nil, limit=nil)
          @AssetType = assettype
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @AssetType = params['AssetType']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeCompliancePeriodTaskList返回参数结构体
      class DescribeCompliancePeriodTaskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 定时任务的总量。
        # @type TotalCount: Integer
        # @param PeriodTaskSet: 定时任务信息的列表
        # @type PeriodTaskSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :PeriodTaskSet, :RequestId
        
        def initialize(totalcount=nil, periodtaskset=nil, requestid=nil)
          @TotalCount = totalcount
          @PeriodTaskSet = periodtaskset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['PeriodTaskSet'].nil?
            @PeriodTaskSet = []
            params['PeriodTaskSet'].each do |i|
              complianceperiodtask_tmp = CompliancePeriodTask.new
              complianceperiodtask_tmp.deserialize(i)
              @PeriodTaskSet << complianceperiodtask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCompliancePolicyItemAffectedAssetList请求参数结构体
      class DescribeCompliancePolicyItemAffectedAssetListRequest < TencentCloud::Common::AbstractModel
        # @param CustomerPolicyItemId: DescribeComplianceTaskPolicyItemSummaryList返回的CustomerPolicyItemId，表示检测项的ID。
        # @type CustomerPolicyItemId: Integer
        # @param Offset: 起始偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 需要返回的数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Filters: 过滤条件。
        # Name - String
        # Name 可取值：NodeName, CheckResult
        # @type Filters: Array

        attr_accessor :CustomerPolicyItemId, :Offset, :Limit, :Filters
        
        def initialize(customerpolicyitemid=nil, offset=nil, limit=nil, filters=nil)
          @CustomerPolicyItemId = customerpolicyitemid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @CustomerPolicyItemId = params['CustomerPolicyItemId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              compliancefilters_tmp = ComplianceFilters.new
              compliancefilters_tmp.deserialize(i)
              @Filters << compliancefilters_tmp
            end
          end
        end
      end

      # DescribeCompliancePolicyItemAffectedAssetList返回参数结构体
      class DescribeCompliancePolicyItemAffectedAssetListResponse < TencentCloud::Common::AbstractModel
        # @param AffectedAssetList: 返回各检测项所影响的资产的列表。
        # @type AffectedAssetList: Array
        # @param TotalCount: 检测项影响的资产的总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AffectedAssetList, :TotalCount, :RequestId
        
        def initialize(affectedassetlist=nil, totalcount=nil, requestid=nil)
          @AffectedAssetList = affectedassetlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AffectedAssetList'].nil?
            @AffectedAssetList = []
            params['AffectedAssetList'].each do |i|
              complianceaffectedasset_tmp = ComplianceAffectedAsset.new
              complianceaffectedasset_tmp.deserialize(i)
              @AffectedAssetList << complianceaffectedasset_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCompliancePolicyItemAffectedSummary请求参数结构体
      class DescribeCompliancePolicyItemAffectedSummaryRequest < TencentCloud::Common::AbstractModel
        # @param CustomerPolicyItemId: DescribeComplianceTaskPolicyItemSummaryList返回的CustomerPolicyItemId，表示检测项的ID。
        # @type CustomerPolicyItemId: Integer

        attr_accessor :CustomerPolicyItemId
        
        def initialize(customerpolicyitemid=nil)
          @CustomerPolicyItemId = customerpolicyitemid
        end

        def deserialize(params)
          @CustomerPolicyItemId = params['CustomerPolicyItemId']
        end
      end

      # DescribeCompliancePolicyItemAffectedSummary返回参数结构体
      class DescribeCompliancePolicyItemAffectedSummaryResponse < TencentCloud::Common::AbstractModel
        # @param PolicyItemSummary: 返回各检测项影响的资产的汇总信息。
        # @type PolicyItemSummary: :class:`Tencentcloud::Tcss.v20201101.models.CompliancePolicyItemSummary`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyItemSummary, :RequestId
        
        def initialize(policyitemsummary=nil, requestid=nil)
          @PolicyItemSummary = policyitemsummary
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PolicyItemSummary'].nil?
            @PolicyItemSummary = CompliancePolicyItemSummary.new
            @PolicyItemSummary.deserialize(params['PolicyItemSummary'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeComplianceScanFailedAssetList请求参数结构体
      class DescribeComplianceScanFailedAssetListRequest < TencentCloud::Common::AbstractModel
        # @param AssetTypeSet: 资产类型列表。
        # ASSET_CONTAINER, 容器
        # ASSET_IMAGE, 镜像
        # ASSET_HOST, 主机
        # ASSET_K8S, K8S资产
        # @type AssetTypeSet: Array
        # @param Offset: 起始偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回的数据量，默认为10，最大为100。
        # @type Limit: Integer
        # @param Filters: 查询过滤器
        # @type Filters: Array

        attr_accessor :AssetTypeSet, :Offset, :Limit, :Filters
        
        def initialize(assettypeset=nil, offset=nil, limit=nil, filters=nil)
          @AssetTypeSet = assettypeset
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @AssetTypeSet = params['AssetTypeSet']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              compliancefilters_tmp = ComplianceFilters.new
              compliancefilters_tmp.deserialize(i)
              @Filters << compliancefilters_tmp
            end
          end
        end
      end

      # DescribeComplianceScanFailedAssetList返回参数结构体
      class DescribeComplianceScanFailedAssetListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回检测失败的资产的总数。
        # @type TotalCount: Integer
        # @param ScanFailedAssetList: 返回各类检测失败的资产的汇总信息的列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanFailedAssetList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ScanFailedAssetList, :RequestId
        
        def initialize(totalcount=nil, scanfailedassetlist=nil, requestid=nil)
          @TotalCount = totalcount
          @ScanFailedAssetList = scanfailedassetlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ScanFailedAssetList'].nil?
            @ScanFailedAssetList = []
            params['ScanFailedAssetList'].each do |i|
              compliancescanfailedasset_tmp = ComplianceScanFailedAsset.new
              compliancescanfailedasset_tmp.deserialize(i)
              @ScanFailedAssetList << compliancescanfailedasset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeComplianceTaskAssetSummary请求参数结构体
      class DescribeComplianceTaskAssetSummaryRequest < TencentCloud::Common::AbstractModel
        # @param AssetTypeSet: 资产类型列表。
        # ASSET_CONTAINER, 容器
        # ASSET_IMAGE, 镜像
        # ASSET_HOST, 主机
        # ASSET_K8S, K8S资产
        # @type AssetTypeSet: Array

        attr_accessor :AssetTypeSet
        
        def initialize(assettypeset=nil)
          @AssetTypeSet = assettypeset
        end

        def deserialize(params)
          @AssetTypeSet = params['AssetTypeSet']
        end
      end

      # DescribeComplianceTaskAssetSummary返回参数结构体
      class DescribeComplianceTaskAssetSummaryResponse < TencentCloud::Common::AbstractModel
        # @param Status: 返回用户的状态，

        # USER_UNINIT: 用户未初始化。
        # USER_INITIALIZING，表示用户正在初始化环境。
        # USER_NORMAL: 正常状态。
        # @type Status: String
        # @param AssetSummaryList: 返回各类资产的汇总信息的列表。
        # @type AssetSummaryList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :AssetSummaryList, :RequestId
        
        def initialize(status=nil, assetsummarylist=nil, requestid=nil)
          @Status = status
          @AssetSummaryList = assetsummarylist
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          unless params['AssetSummaryList'].nil?
            @AssetSummaryList = []
            params['AssetSummaryList'].each do |i|
              complianceassetsummary_tmp = ComplianceAssetSummary.new
              complianceassetsummary_tmp.deserialize(i)
              @AssetSummaryList << complianceassetsummary_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeComplianceTaskPolicyItemSummaryList请求参数结构体
      class DescribeComplianceTaskPolicyItemSummaryListRequest < TencentCloud::Common::AbstractModel
        # @param AssetType: 资产类型。仅查询与指定资产类型相关的检测项。

        # ASSET_CONTAINER, 容器

        # ASSET_IMAGE, 镜像

        # ASSET_HOST, 主机

        # ASSET_K8S, K8S资产
        # @type AssetType: String
        # @param Offset: 起始偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 需要返回的数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Filters: 过滤条件。
        # Name - String
        # Name 可取值：ItemType, StandardId,  RiskLevel。
        # 当为K8S资产时，还可取ClusterName。
        # @type Filters: Array

        attr_accessor :AssetType, :Offset, :Limit, :Filters
        
        def initialize(assettype=nil, offset=nil, limit=nil, filters=nil)
          @AssetType = assettype
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @AssetType = params['AssetType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              compliancefilters_tmp = ComplianceFilters.new
              compliancefilters_tmp.deserialize(i)
              @Filters << compliancefilters_tmp
            end
          end
        end
      end

      # DescribeComplianceTaskPolicyItemSummaryList返回参数结构体
      class DescribeComplianceTaskPolicyItemSummaryListResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 返回最近一次合规检查任务的ID。这个任务为本次所展示数据的来源。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param TotalCount: 返回检测项的总数。
        # @type TotalCount: Integer
        # @param PolicyItemSummaryList: 返回各检测项对应的汇总信息的列表。
        # @type PolicyItemSummaryList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :TotalCount, :PolicyItemSummaryList, :RequestId
        
        def initialize(taskid=nil, totalcount=nil, policyitemsummarylist=nil, requestid=nil)
          @TaskId = taskid
          @TotalCount = totalcount
          @PolicyItemSummaryList = policyitemsummarylist
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TotalCount = params['TotalCount']
          unless params['PolicyItemSummaryList'].nil?
            @PolicyItemSummaryList = []
            params['PolicyItemSummaryList'].each do |i|
              compliancepolicyitemsummary_tmp = CompliancePolicyItemSummary.new
              compliancepolicyitemsummary_tmp.deserialize(i)
              @PolicyItemSummaryList << compliancepolicyitemsummary_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeComplianceWhitelistItemList请求参数结构体
      class DescribeComplianceWhitelistItemListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 起始偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 要获取的数量，默认为10，最大为100。
        # @type Limit: Integer
        # @param AssetTypeSet: 资产类型列表。
        # @type AssetTypeSet: Array
        # @param Filters: 查询过滤器
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :AssetTypeSet, :Filters
        
        def initialize(offset=nil, limit=nil, assettypeset=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @AssetTypeSet = assettypeset
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @AssetTypeSet = params['AssetTypeSet']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              compliancefilters_tmp = ComplianceFilters.new
              compliancefilters_tmp.deserialize(i)
              @Filters << compliancefilters_tmp
            end
          end
        end
      end

      # DescribeComplianceWhitelistItemList返回参数结构体
      class DescribeComplianceWhitelistItemListResponse < TencentCloud::Common::AbstractModel
        # @param WhitelistItemSet: 白名单项的列表。
        # @type WhitelistItemSet: Array
        # @param TotalCount: 白名单项的总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WhitelistItemSet, :TotalCount, :RequestId
        
        def initialize(whitelistitemset=nil, totalcount=nil, requestid=nil)
          @WhitelistItemSet = whitelistitemset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WhitelistItemSet'].nil?
            @WhitelistItemSet = []
            params['WhitelistItemSet'].each do |i|
              compliancewhitelistitem_tmp = ComplianceWhitelistItem.new
              compliancewhitelistitem_tmp.deserialize(i)
              @WhitelistItemSet << compliancewhitelistitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeContainerAssetSummary请求参数结构体
      class DescribeContainerAssetSummaryRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeContainerAssetSummary返回参数结构体
      class DescribeContainerAssetSummaryResponse < TencentCloud::Common::AbstractModel
        # @param ContainerTotalCnt: 容器总数
        # @type ContainerTotalCnt: Integer
        # @param ContainerRunningCnt: 正在运行容器数量
        # @type ContainerRunningCnt: Integer
        # @param ContainerPauseCnt: 暂停运行容器数量
        # @type ContainerPauseCnt: Integer
        # @param ContainerStopped: 停止运行容器数量
        # @type ContainerStopped: Integer
        # @param ImageCnt: 本地镜像数量
        # @type ImageCnt: Integer
        # @param HostCnt: 主机节点数量
        # @type HostCnt: Integer
        # @param HostRunningCnt: 主机正在运行节点数量
        # @type HostRunningCnt: Integer
        # @param HostOfflineCnt: 主机离线节点数量
        # @type HostOfflineCnt: Integer
        # @param ImageRegistryCnt: 镜像仓库数量
        # @type ImageRegistryCnt: Integer
        # @param ImageTotalCnt: 镜像总数
        # @type ImageTotalCnt: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ContainerTotalCnt, :ContainerRunningCnt, :ContainerPauseCnt, :ContainerStopped, :ImageCnt, :HostCnt, :HostRunningCnt, :HostOfflineCnt, :ImageRegistryCnt, :ImageTotalCnt, :RequestId
        
        def initialize(containertotalcnt=nil, containerrunningcnt=nil, containerpausecnt=nil, containerstopped=nil, imagecnt=nil, hostcnt=nil, hostrunningcnt=nil, hostofflinecnt=nil, imageregistrycnt=nil, imagetotalcnt=nil, requestid=nil)
          @ContainerTotalCnt = containertotalcnt
          @ContainerRunningCnt = containerrunningcnt
          @ContainerPauseCnt = containerpausecnt
          @ContainerStopped = containerstopped
          @ImageCnt = imagecnt
          @HostCnt = hostcnt
          @HostRunningCnt = hostrunningcnt
          @HostOfflineCnt = hostofflinecnt
          @ImageRegistryCnt = imageregistrycnt
          @ImageTotalCnt = imagetotalcnt
          @RequestId = requestid
        end

        def deserialize(params)
          @ContainerTotalCnt = params['ContainerTotalCnt']
          @ContainerRunningCnt = params['ContainerRunningCnt']
          @ContainerPauseCnt = params['ContainerPauseCnt']
          @ContainerStopped = params['ContainerStopped']
          @ImageCnt = params['ImageCnt']
          @HostCnt = params['HostCnt']
          @HostRunningCnt = params['HostRunningCnt']
          @HostOfflineCnt = params['HostOfflineCnt']
          @ImageRegistryCnt = params['ImageRegistryCnt']
          @ImageTotalCnt = params['ImageTotalCnt']
          @RequestId = params['RequestId']
        end
      end

      # DescribeContainerSecEventSummary请求参数结构体
      class DescribeContainerSecEventSummaryRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeContainerSecEventSummary返回参数结构体
      class DescribeContainerSecEventSummaryResponse < TencentCloud::Common::AbstractModel
        # @param UnhandledEscapeCnt: 未处理逃逸事件
        # @type UnhandledEscapeCnt: Integer
        # @param UnhandledReverseShellCnt: 未处理反弹shell事件
        # @type UnhandledReverseShellCnt: Integer
        # @param UnhandledRiskSyscallCnt: 未处理高危系统调用
        # @type UnhandledRiskSyscallCnt: Integer
        # @param UnhandledAbnormalProcessCnt: 未处理异常进程
        # @type UnhandledAbnormalProcessCnt: Integer
        # @param UnhandledFileCnt: 未处理文件篡改
        # @type UnhandledFileCnt: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UnhandledEscapeCnt, :UnhandledReverseShellCnt, :UnhandledRiskSyscallCnt, :UnhandledAbnormalProcessCnt, :UnhandledFileCnt, :RequestId
        
        def initialize(unhandledescapecnt=nil, unhandledreverseshellcnt=nil, unhandledrisksyscallcnt=nil, unhandledabnormalprocesscnt=nil, unhandledfilecnt=nil, requestid=nil)
          @UnhandledEscapeCnt = unhandledescapecnt
          @UnhandledReverseShellCnt = unhandledreverseshellcnt
          @UnhandledRiskSyscallCnt = unhandledrisksyscallcnt
          @UnhandledAbnormalProcessCnt = unhandledabnormalprocesscnt
          @UnhandledFileCnt = unhandledfilecnt
          @RequestId = requestid
        end

        def deserialize(params)
          @UnhandledEscapeCnt = params['UnhandledEscapeCnt']
          @UnhandledReverseShellCnt = params['UnhandledReverseShellCnt']
          @UnhandledRiskSyscallCnt = params['UnhandledRiskSyscallCnt']
          @UnhandledAbnormalProcessCnt = params['UnhandledAbnormalProcessCnt']
          @UnhandledFileCnt = params['UnhandledFileCnt']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEscapeEventDetail请求参数结构体
      class DescribeEscapeEventDetailRequest < TencentCloud::Common::AbstractModel
        # @param EventId: 事件唯一id
        # @type EventId: String

        attr_accessor :EventId
        
        def initialize(eventid=nil)
          @EventId = eventid
        end

        def deserialize(params)
          @EventId = params['EventId']
        end
      end

      # DescribeEscapeEventDetail返回参数结构体
      class DescribeEscapeEventDetailResponse < TencentCloud::Common::AbstractModel
        # @param EventBaseInfo: 事件基本信息
        # @type EventBaseInfo: :class:`Tencentcloud::Tcss.v20201101.models.RunTimeEventBaseInfo`
        # @param ProcessInfo: 进程信息
        # @type ProcessInfo: :class:`Tencentcloud::Tcss.v20201101.models.ProcessDetailInfo`
        # @param EventDetail: 事件描述
        # @type EventDetail: :class:`Tencentcloud::Tcss.v20201101.models.EscapeEventDescription`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventBaseInfo, :ProcessInfo, :EventDetail, :RequestId
        
        def initialize(eventbaseinfo=nil, processinfo=nil, eventdetail=nil, requestid=nil)
          @EventBaseInfo = eventbaseinfo
          @ProcessInfo = processinfo
          @EventDetail = eventdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EventBaseInfo'].nil?
            @EventBaseInfo = RunTimeEventBaseInfo.new
            @EventBaseInfo.deserialize(params['EventBaseInfo'])
          end
          unless params['ProcessInfo'].nil?
            @ProcessInfo = ProcessDetailInfo.new
            @ProcessInfo.deserialize(params['ProcessInfo'])
          end
          unless params['EventDetail'].nil?
            @EventDetail = EscapeEventDescription.new
            @EventDetail.deserialize(params['EventDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEscapeEventInfo请求参数结构体
      class DescribeEscapeEventInfoRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        # @type Filters: Array
        # @param Order: 升序降序,asc desc
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
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeEscapeEventInfo返回参数结构体
      class DescribeEscapeEventInfoResponse < TencentCloud::Common::AbstractModel
        # @param EventSet: 逃逸事件数组
        # @type EventSet: Array
        # @param TotalCount: 事件总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventSet, :TotalCount, :RequestId
        
        def initialize(eventset=nil, totalcount=nil, requestid=nil)
          @EventSet = eventset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EventSet'].nil?
            @EventSet = []
            params['EventSet'].each do |i|
              escapeeventinfo_tmp = EscapeEventInfo.new
              escapeeventinfo_tmp.deserialize(i)
              @EventSet << escapeeventinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEscapeEventsExport请求参数结构体
      class DescribeEscapeEventsExportRequest < TencentCloud::Common::AbstractModel
        # @param ExportField: 导出字段
        # @type ExportField: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        # @type Filters: Array
        # @param Order: 升序降序,asc desc
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :ExportField, :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(exportfield=nil, limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @ExportField = exportfield
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @ExportField = params['ExportField']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeEscapeEventsExport返回参数结构体
      class DescribeEscapeEventsExportResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: execle下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeEscapeRuleInfo请求参数结构体
      class DescribeEscapeRuleInfoRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeEscapeRuleInfo返回参数结构体
      class DescribeEscapeRuleInfoResponse < TencentCloud::Common::AbstractModel
        # @param RuleSet: 规则信息
        # @type RuleSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleSet, :RequestId
        
        def initialize(ruleset=nil, requestid=nil)
          @RuleSet = ruleset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuleSet'].nil?
            @RuleSet = []
            params['RuleSet'].each do |i|
              escaperule_tmp = EscapeRule.new
              escaperule_tmp.deserialize(i)
              @RuleSet << escaperule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEscapeSafeState请求参数结构体
      class DescribeEscapeSafeStateRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeEscapeSafeState返回参数结构体
      class DescribeEscapeSafeStateResponse < TencentCloud::Common::AbstractModel
        # @param IsSafe: Unsafe：存在风险，Safe：暂无风险,UnKnown:未知风险
        # @type IsSafe: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsSafe, :RequestId
        
        def initialize(issafe=nil, requestid=nil)
          @IsSafe = issafe
          @RequestId = requestid
        end

        def deserialize(params)
          @IsSafe = params['IsSafe']
          @RequestId = params['RequestId']
        end
      end

      # DescribeExportJobResult请求参数结构体
      class DescribeExportJobResultRequest < TencentCloud::Common::AbstractModel
        # @param JobId: CreateExportComplianceStatusListJob返回的JobId字段的值
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DescribeExportJobResult返回参数结构体
      class DescribeExportJobResultResponse < TencentCloud::Common::AbstractModel
        # @param ExportStatus: 导出的状态。取值为, SUCCESS:成功、FAILURE:失败，RUNNING: 进行中。
        # @type ExportStatus: String
        # @param DownloadURL: 返回下载URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadURL: String
        # @param ExportProgress: 当ExportStatus为RUNNING时，返回导出进度。0~100范围的浮点数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExportProgress: Float
        # @param FailureMsg: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExportStatus, :DownloadURL, :ExportProgress, :FailureMsg, :RequestId
        
        def initialize(exportstatus=nil, downloadurl=nil, exportprogress=nil, failuremsg=nil, requestid=nil)
          @ExportStatus = exportstatus
          @DownloadURL = downloadurl
          @ExportProgress = exportprogress
          @FailureMsg = failuremsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ExportStatus = params['ExportStatus']
          @DownloadURL = params['DownloadURL']
          @ExportProgress = params['ExportProgress']
          @FailureMsg = params['FailureMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageAuthorizedInfo请求参数结构体
      class DescribeImageAuthorizedInfoRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeImageAuthorizedInfo返回参数结构体
      class DescribeImageAuthorizedInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalAuthorizedCnt: 总共有效的镜像授权数
        # @type TotalAuthorizedCnt: Integer
        # @param UsedAuthorizedCnt: 已使用镜像授权数
        # @type UsedAuthorizedCnt: Integer
        # @param ScannedImageCnt: 已开启扫描镜像数
        # @type ScannedImageCnt: Integer
        # @param NotScannedImageCnt: 未开启扫描镜像数
        # @type NotScannedImageCnt: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalAuthorizedCnt, :UsedAuthorizedCnt, :ScannedImageCnt, :NotScannedImageCnt, :RequestId
        
        def initialize(totalauthorizedcnt=nil, usedauthorizedcnt=nil, scannedimagecnt=nil, notscannedimagecnt=nil, requestid=nil)
          @TotalAuthorizedCnt = totalauthorizedcnt
          @UsedAuthorizedCnt = usedauthorizedcnt
          @ScannedImageCnt = scannedimagecnt
          @NotScannedImageCnt = notscannedimagecnt
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalAuthorizedCnt = params['TotalAuthorizedCnt']
          @UsedAuthorizedCnt = params['UsedAuthorizedCnt']
          @ScannedImageCnt = params['ScannedImageCnt']
          @NotScannedImageCnt = params['NotScannedImageCnt']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageRegistryTimingScanTask请求参数结构体
      class DescribeImageRegistryTimingScanTaskRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeImageRegistryTimingScanTask返回参数结构体
      class DescribeImageRegistryTimingScanTaskResponse < TencentCloud::Common::AbstractModel
        # @param Enable: 定时扫描开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enable: Boolean
        # @param ScanTime: 定时任务扫描时间
        # @type ScanTime: String
        # @param ScanPeriod: 定时扫描间隔
        # @type ScanPeriod: Integer
        # @param ScanType: 扫描类型数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanType: Array
        # @param All: 扫描全部镜像
        # @type All: Boolean
        # @param Images: 自定义扫描镜像
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Images: Array
        # @param Id: 自动以扫描镜像Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Enable, :ScanTime, :ScanPeriod, :ScanType, :All, :Images, :Id, :RequestId
        
        def initialize(enable=nil, scantime=nil, scanperiod=nil, scantype=nil, all=nil, images=nil, id=nil, requestid=nil)
          @Enable = enable
          @ScanTime = scantime
          @ScanPeriod = scanperiod
          @ScanType = scantype
          @All = all
          @Images = images
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Enable = params['Enable']
          @ScanTime = params['ScanTime']
          @ScanPeriod = params['ScanPeriod']
          @ScanType = params['ScanType']
          @All = params['All']
          unless params['Images'].nil?
            @Images = []
            params['Images'].each do |i|
              imageinfo_tmp = ImageInfo.new
              imageinfo_tmp.deserialize(i)
              @Images << imageinfo_tmp
            end
          end
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageRiskSummary请求参数结构体
      class DescribeImageRiskSummaryRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeImageRiskSummary返回参数结构体
      class DescribeImageRiskSummaryResponse < TencentCloud::Common::AbstractModel
        # @param VulnerabilityCnt: 安全漏洞
        # @type VulnerabilityCnt: Array
        # @param MalwareVirusCnt: 木马病毒
        # @type MalwareVirusCnt: Array
        # @param RiskCnt: 敏感信息
        # @type RiskCnt: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulnerabilityCnt, :MalwareVirusCnt, :RiskCnt, :RequestId
        
        def initialize(vulnerabilitycnt=nil, malwareviruscnt=nil, riskcnt=nil, requestid=nil)
          @VulnerabilityCnt = vulnerabilitycnt
          @MalwareVirusCnt = malwareviruscnt
          @RiskCnt = riskcnt
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VulnerabilityCnt'].nil?
            @VulnerabilityCnt = []
            params['VulnerabilityCnt'].each do |i|
              runtimeriskinfo_tmp = RunTimeRiskInfo.new
              runtimeriskinfo_tmp.deserialize(i)
              @VulnerabilityCnt << runtimeriskinfo_tmp
            end
          end
          unless params['MalwareVirusCnt'].nil?
            @MalwareVirusCnt = []
            params['MalwareVirusCnt'].each do |i|
              runtimeriskinfo_tmp = RunTimeRiskInfo.new
              runtimeriskinfo_tmp.deserialize(i)
              @MalwareVirusCnt << runtimeriskinfo_tmp
            end
          end
          unless params['RiskCnt'].nil?
            @RiskCnt = []
            params['RiskCnt'].each do |i|
              runtimeriskinfo_tmp = RunTimeRiskInfo.new
              runtimeriskinfo_tmp.deserialize(i)
              @RiskCnt << runtimeriskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageRiskTendency请求参数结构体
      class DescribeImageRiskTendencyRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :StartTime, :EndTime
        
        def initialize(starttime=nil, endtime=nil)
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeImageRiskTendency返回参数结构体
      class DescribeImageRiskTendencyResponse < TencentCloud::Common::AbstractModel
        # @param ImageRiskTendencySet: 本地镜像新增风险趋势信息列表
        # @type ImageRiskTendencySet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageRiskTendencySet, :RequestId
        
        def initialize(imagerisktendencyset=nil, requestid=nil)
          @ImageRiskTendencySet = imagerisktendencyset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ImageRiskTendencySet'].nil?
            @ImageRiskTendencySet = []
            params['ImageRiskTendencySet'].each do |i|
              imagerisktendencyinfo_tmp = ImageRiskTendencyInfo.new
              imagerisktendencyinfo_tmp.deserialize(i)
              @ImageRiskTendencySet << imagerisktendencyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageSimpleList请求参数结构体
      class DescribeImageSimpleListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: IsAuthorized 是否已经授权, 0:否 1:是 无:全部
        # @type Filters: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Order: 排序方式
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :Filters, :Limit, :Offset, :Order, :By
        
        def initialize(filters=nil, limit=nil, offset=nil, order=nil, by=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeImageSimpleList返回参数结构体
      class DescribeImageSimpleListResponse < TencentCloud::Common::AbstractModel
        # @param ImageList: 镜像列表
        # @type ImageList: Array
        # @param ImageCnt: 镜像数
        # @type ImageCnt: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageList, :ImageCnt, :RequestId
        
        def initialize(imagelist=nil, imagecnt=nil, requestid=nil)
          @ImageList = imagelist
          @ImageCnt = imagecnt
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ImageList'].nil?
            @ImageList = []
            params['ImageList'].each do |i|
              imagesimpleinfo_tmp = ImageSimpleInfo.new
              imagesimpleinfo_tmp.deserialize(i)
              @ImageList << imagesimpleinfo_tmp
            end
          end
          @ImageCnt = params['ImageCnt']
          @RequestId = params['RequestId']
        end
      end

      # DescribePostPayDetail请求参数结构体
      class DescribePostPayDetailRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
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

      # DescribePostPayDetail返回参数结构体
      class DescribePostPayDetailResponse < TencentCloud::Common::AbstractModel
        # @param SoftQuotaDayDetail: 弹性计费扣费详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoftQuotaDayDetail: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SoftQuotaDayDetail, :RequestId
        
        def initialize(softquotadaydetail=nil, requestid=nil)
          @SoftQuotaDayDetail = softquotadaydetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SoftQuotaDayDetail'].nil?
            @SoftQuotaDayDetail = []
            params['SoftQuotaDayDetail'].each do |i|
              softquotadayinfo_tmp = SoftQuotaDayInfo.new
              softquotadayinfo_tmp.deserialize(i)
              @SoftQuotaDayDetail << softquotadayinfo_tmp
            end
          end
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
        # @param StartTime: 专业版开始时间，补充购买时才不为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 专业版结束时间，补充购买时才不为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param CoresCnt: 需购买的机器核数
        # @type CoresCnt: Integer
        # @param MaxPostPayCoresCnt: 弹性计费上限
        # @type MaxPostPayCoresCnt: Integer
        # @param ResourceId: 资源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StartTime, :EndTime, :CoresCnt, :MaxPostPayCoresCnt, :ResourceId, :RequestId
        
        def initialize(starttime=nil, endtime=nil, corescnt=nil, maxpostpaycorescnt=nil, resourceid=nil, requestid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @CoresCnt = corescnt
          @MaxPostPayCoresCnt = maxpostpaycorescnt
          @ResourceId = resourceid
          @RequestId = requestid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CoresCnt = params['CoresCnt']
          @MaxPostPayCoresCnt = params['MaxPostPayCoresCnt']
          @ResourceId = params['ResourceId']
          @RequestId = params['RequestId']
        end
      end

      # DescribePurchaseStateInfo请求参数结构体
      class DescribePurchaseStateInfoRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribePurchaseStateInfo返回参数结构体
      class DescribePurchaseStateInfoResponse < TencentCloud::Common::AbstractModel
        # @param State: 0：可申请试用可购买；1：只可购买(含试用审核不通过和试用过期)；2：试用生效中；3：专业版生效中；4：专业版过期
        # @type State: Integer
        # @param CoresCnt: 总核数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoresCnt: Integer
        # @param AuthorizedCoresCnt: 已购买核数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizedCoresCnt: Integer
        # @param ImageCnt: 镜像数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageCnt: Integer
        # @param AuthorizedImageCnt: 已授权镜像数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizedImageCnt: Integer
        # @param PurchasedAuthorizedCnt: 已购买镜像授权数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PurchasedAuthorizedCnt: Integer
        # @param ExpirationTime: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpirationTime: String
        # @param AutomaticRenewal: 0表示默认状态(用户未设置，即初始状态)， 1表示自动续费，2表示明确不自动续费(用户设置)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutomaticRenewal: Integer
        # @param GivenAuthorizedCnt: 试用期间赠送镜像授权数，可能会过期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GivenAuthorizedCnt: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :State, :CoresCnt, :AuthorizedCoresCnt, :ImageCnt, :AuthorizedImageCnt, :PurchasedAuthorizedCnt, :ExpirationTime, :AutomaticRenewal, :GivenAuthorizedCnt, :RequestId
        
        def initialize(state=nil, corescnt=nil, authorizedcorescnt=nil, imagecnt=nil, authorizedimagecnt=nil, purchasedauthorizedcnt=nil, expirationtime=nil, automaticrenewal=nil, givenauthorizedcnt=nil, requestid=nil)
          @State = state
          @CoresCnt = corescnt
          @AuthorizedCoresCnt = authorizedcorescnt
          @ImageCnt = imagecnt
          @AuthorizedImageCnt = authorizedimagecnt
          @PurchasedAuthorizedCnt = purchasedauthorizedcnt
          @ExpirationTime = expirationtime
          @AutomaticRenewal = automaticrenewal
          @GivenAuthorizedCnt = givenauthorizedcnt
          @RequestId = requestid
        end

        def deserialize(params)
          @State = params['State']
          @CoresCnt = params['CoresCnt']
          @AuthorizedCoresCnt = params['AuthorizedCoresCnt']
          @ImageCnt = params['ImageCnt']
          @AuthorizedImageCnt = params['AuthorizedImageCnt']
          @PurchasedAuthorizedCnt = params['PurchasedAuthorizedCnt']
          @ExpirationTime = params['ExpirationTime']
          @AutomaticRenewal = params['AutomaticRenewal']
          @GivenAuthorizedCnt = params['GivenAuthorizedCnt']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRefreshTask请求参数结构体
      class DescribeRefreshTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeRefreshTask返回参数结构体
      class DescribeRefreshTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskStatus: 刷新任务状态，可能为：Task_New,Task_Running,Task_Finish,Task_Error,Task_NoExist
        # @type TaskStatus: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskStatus, :RequestId
        
        def initialize(taskstatus=nil, requestid=nil)
          @TaskStatus = taskstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskStatus = params['TaskStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReverseShellDetail请求参数结构体
      class DescribeReverseShellDetailRequest < TencentCloud::Common::AbstractModel
        # @param EventId: 事件唯一id
        # @type EventId: String

        attr_accessor :EventId
        
        def initialize(eventid=nil)
          @EventId = eventid
        end

        def deserialize(params)
          @EventId = params['EventId']
        end
      end

      # DescribeReverseShellDetail返回参数结构体
      class DescribeReverseShellDetailResponse < TencentCloud::Common::AbstractModel
        # @param EventBaseInfo: 事件基本信息
        # @type EventBaseInfo: :class:`Tencentcloud::Tcss.v20201101.models.RunTimeEventBaseInfo`
        # @param ProcessInfo: 进程信息
        # @type ProcessInfo: :class:`Tencentcloud::Tcss.v20201101.models.ProcessDetailInfo`
        # @param ParentProcessInfo: 父进程信息
        # @type ParentProcessInfo: :class:`Tencentcloud::Tcss.v20201101.models.ProcessDetailBaseInfo`
        # @param EventDetail: 事件描述
        # @type EventDetail: :class:`Tencentcloud::Tcss.v20201101.models.ReverseShellEventDescription`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventBaseInfo, :ProcessInfo, :ParentProcessInfo, :EventDetail, :RequestId
        
        def initialize(eventbaseinfo=nil, processinfo=nil, parentprocessinfo=nil, eventdetail=nil, requestid=nil)
          @EventBaseInfo = eventbaseinfo
          @ProcessInfo = processinfo
          @ParentProcessInfo = parentprocessinfo
          @EventDetail = eventdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EventBaseInfo'].nil?
            @EventBaseInfo = RunTimeEventBaseInfo.new
            @EventBaseInfo.deserialize(params['EventBaseInfo'])
          end
          unless params['ProcessInfo'].nil?
            @ProcessInfo = ProcessDetailInfo.new
            @ProcessInfo.deserialize(params['ProcessInfo'])
          end
          unless params['ParentProcessInfo'].nil?
            @ParentProcessInfo = ProcessDetailBaseInfo.new
            @ParentProcessInfo.deserialize(params['ParentProcessInfo'])
          end
          unless params['EventDetail'].nil?
            @EventDetail = ReverseShellEventDescription.new
            @EventDetail.deserialize(params['EventDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReverseShellEventsExport请求参数结构体
      class DescribeReverseShellEventsExportRequest < TencentCloud::Common::AbstractModel
        # @param ExportField: 导出字段
        # @type ExportField: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        # @type Filters: Array
        # @param Order: 升序降序,asc desc
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :ExportField, :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(exportfield=nil, limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @ExportField = exportfield
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @ExportField = params['ExportField']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeReverseShellEventsExport返回参数结构体
      class DescribeReverseShellEventsExportResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: execle下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeReverseShellEvents请求参数结构体
      class DescribeReverseShellEventsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        # @type Filters: Array
        # @param Order: 升序降序,asc desc
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
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeReverseShellEvents返回参数结构体
      class DescribeReverseShellEventsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 事件总数量
        # @type TotalCount: Integer
        # @param EventSet: 反弹shell数组
        # @type EventSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :EventSet, :RequestId
        
        def initialize(totalcount=nil, eventset=nil, requestid=nil)
          @TotalCount = totalcount
          @EventSet = eventset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EventSet'].nil?
            @EventSet = []
            params['EventSet'].each do |i|
              reverseshelleventinfo_tmp = ReverseShellEventInfo.new
              reverseshelleventinfo_tmp.deserialize(i)
              @EventSet << reverseshelleventinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReverseShellWhiteListDetail请求参数结构体
      class DescribeReverseShellWhiteListDetailRequest < TencentCloud::Common::AbstractModel
        # @param WhiteListId: 白名单id
        # @type WhiteListId: String

        attr_accessor :WhiteListId
        
        def initialize(whitelistid=nil)
          @WhiteListId = whitelistid
        end

        def deserialize(params)
          @WhiteListId = params['WhiteListId']
        end
      end

      # DescribeReverseShellWhiteListDetail返回参数结构体
      class DescribeReverseShellWhiteListDetailResponse < TencentCloud::Common::AbstractModel
        # @param WhiteListDetailInfo: 事件基本信息
        # @type WhiteListDetailInfo: :class:`Tencentcloud::Tcss.v20201101.models.ReverseShellWhiteListInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WhiteListDetailInfo, :RequestId
        
        def initialize(whitelistdetailinfo=nil, requestid=nil)
          @WhiteListDetailInfo = whitelistdetailinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WhiteListDetailInfo'].nil?
            @WhiteListDetailInfo = ReverseShellWhiteListInfo.new
            @WhiteListDetailInfo.deserialize(params['WhiteListDetailInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReverseShellWhiteLists请求参数结构体
      class DescribeReverseShellWhiteListsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        # @type Filters: Array
        # @param Order: 升序降序,asc desc
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
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeReverseShellWhiteLists返回参数结构体
      class DescribeReverseShellWhiteListsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 事件总数量
        # @type TotalCount: Integer
        # @param WhiteListSet: 白名单信息列表
        # @type WhiteListSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :WhiteListSet, :RequestId
        
        def initialize(totalcount=nil, whitelistset=nil, requestid=nil)
          @TotalCount = totalcount
          @WhiteListSet = whitelistset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['WhiteListSet'].nil?
            @WhiteListSet = []
            params['WhiteListSet'].each do |i|
              reverseshellwhitelistbaseinfo_tmp = ReverseShellWhiteListBaseInfo.new
              reverseshellwhitelistbaseinfo_tmp.deserialize(i)
              @WhiteListSet << reverseshellwhitelistbaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskList请求参数结构体
      class DescribeRiskListRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 要查询的集群ID，如果不指定，则查询用户所有的风险项
        # @type ClusterId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 每次查询的最大记录数量
        # @type Limit: Integer
        # @param Filters: Name - String
        # Name 可取值：RiskLevel风险等级, RiskTarget检查对象，风险对象,RiskType风险类别,RiskAttribute检测项所属的风险类型,Name
        # @type Filters: Array
        # @param By: 排序字段
        # @type By: String
        # @param Order: 排序方式 asc,desc
        # @type Order: String

        attr_accessor :ClusterId, :Offset, :Limit, :Filters, :By, :Order
        
        def initialize(clusterid=nil, offset=nil, limit=nil, filters=nil, by=nil, order=nil)
          @ClusterId = clusterid
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @By = by
          @Order = order
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              compliancefilters_tmp = ComplianceFilters.new
              compliancefilters_tmp.deserialize(i)
              @Filters << compliancefilters_tmp
            end
          end
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeRiskList返回参数结构体
      class DescribeRiskListResponse < TencentCloud::Common::AbstractModel
        # @param ClusterRiskItems: 风险详情数组
        # @type ClusterRiskItems: Array
        # @param TotalCount: 风险项的总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterRiskItems, :TotalCount, :RequestId
        
        def initialize(clusterriskitems=nil, totalcount=nil, requestid=nil)
          @ClusterRiskItems = clusterriskitems
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterRiskItems'].nil?
            @ClusterRiskItems = []
            params['ClusterRiskItems'].each do |i|
              clusterriskitem_tmp = ClusterRiskItem.new
              clusterriskitem_tmp.deserialize(i)
              @ClusterRiskItems << clusterriskitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskSyscallDetail请求参数结构体
      class DescribeRiskSyscallDetailRequest < TencentCloud::Common::AbstractModel
        # @param EventId: 事件唯一id
        # @type EventId: String

        attr_accessor :EventId
        
        def initialize(eventid=nil)
          @EventId = eventid
        end

        def deserialize(params)
          @EventId = params['EventId']
        end
      end

      # DescribeRiskSyscallDetail返回参数结构体
      class DescribeRiskSyscallDetailResponse < TencentCloud::Common::AbstractModel
        # @param EventBaseInfo: 事件基本信息
        # @type EventBaseInfo: :class:`Tencentcloud::Tcss.v20201101.models.RunTimeEventBaseInfo`
        # @param ProcessInfo: 进程信息
        # @type ProcessInfo: :class:`Tencentcloud::Tcss.v20201101.models.ProcessDetailInfo`
        # @param ParentProcessInfo: 父进程信息
        # @type ParentProcessInfo: :class:`Tencentcloud::Tcss.v20201101.models.ProcessDetailBaseInfo`
        # @param EventDetail: 事件描述
        # @type EventDetail: :class:`Tencentcloud::Tcss.v20201101.models.RiskSyscallEventDescription`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventBaseInfo, :ProcessInfo, :ParentProcessInfo, :EventDetail, :RequestId
        
        def initialize(eventbaseinfo=nil, processinfo=nil, parentprocessinfo=nil, eventdetail=nil, requestid=nil)
          @EventBaseInfo = eventbaseinfo
          @ProcessInfo = processinfo
          @ParentProcessInfo = parentprocessinfo
          @EventDetail = eventdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EventBaseInfo'].nil?
            @EventBaseInfo = RunTimeEventBaseInfo.new
            @EventBaseInfo.deserialize(params['EventBaseInfo'])
          end
          unless params['ProcessInfo'].nil?
            @ProcessInfo = ProcessDetailInfo.new
            @ProcessInfo.deserialize(params['ProcessInfo'])
          end
          unless params['ParentProcessInfo'].nil?
            @ParentProcessInfo = ProcessDetailBaseInfo.new
            @ParentProcessInfo.deserialize(params['ParentProcessInfo'])
          end
          unless params['EventDetail'].nil?
            @EventDetail = RiskSyscallEventDescription.new
            @EventDetail.deserialize(params['EventDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskSyscallEventsExport请求参数结构体
      class DescribeRiskSyscallEventsExportRequest < TencentCloud::Common::AbstractModel
        # @param ExportField: 导出字段
        # @type ExportField: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        # @type Filters: Array
        # @param Order: 升序降序,asc desc
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :ExportField, :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(exportfield=nil, limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @ExportField = exportfield
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @ExportField = params['ExportField']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeRiskSyscallEventsExport返回参数结构体
      class DescribeRiskSyscallEventsExportResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: Excel下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeRiskSyscallEvents请求参数结构体
      class DescribeRiskSyscallEventsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        # @type Filters: Array
        # @param Order: 升序降序,asc desc
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
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeRiskSyscallEvents返回参数结构体
      class DescribeRiskSyscallEventsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 事件总数量
        # @type TotalCount: Integer
        # @param EventSet: 高危系统调用数组
        # @type EventSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :EventSet, :RequestId
        
        def initialize(totalcount=nil, eventset=nil, requestid=nil)
          @TotalCount = totalcount
          @EventSet = eventset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EventSet'].nil?
            @EventSet = []
            params['EventSet'].each do |i|
              risksyscalleventinfo_tmp = RiskSyscallEventInfo.new
              risksyscalleventinfo_tmp.deserialize(i)
              @EventSet << risksyscalleventinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskSyscallNames请求参数结构体
      class DescribeRiskSyscallNamesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRiskSyscallNames返回参数结构体
      class DescribeRiskSyscallNamesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 事件总数量
        # @type TotalCount: Integer
        # @param SyscallNames: 系统调用名称列表
        # @type SyscallNames: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SyscallNames, :RequestId
        
        def initialize(totalcount=nil, syscallnames=nil, requestid=nil)
          @TotalCount = totalcount
          @SyscallNames = syscallnames
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @SyscallNames = params['SyscallNames']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskSyscallWhiteListDetail请求参数结构体
      class DescribeRiskSyscallWhiteListDetailRequest < TencentCloud::Common::AbstractModel
        # @param WhiteListId: 白名单id
        # @type WhiteListId: String

        attr_accessor :WhiteListId
        
        def initialize(whitelistid=nil)
          @WhiteListId = whitelistid
        end

        def deserialize(params)
          @WhiteListId = params['WhiteListId']
        end
      end

      # DescribeRiskSyscallWhiteListDetail返回参数结构体
      class DescribeRiskSyscallWhiteListDetailResponse < TencentCloud::Common::AbstractModel
        # @param WhiteListDetailInfo: 白名单基本信息
        # @type WhiteListDetailInfo: :class:`Tencentcloud::Tcss.v20201101.models.RiskSyscallWhiteListInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WhiteListDetailInfo, :RequestId
        
        def initialize(whitelistdetailinfo=nil, requestid=nil)
          @WhiteListDetailInfo = whitelistdetailinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WhiteListDetailInfo'].nil?
            @WhiteListDetailInfo = RiskSyscallWhiteListInfo.new
            @WhiteListDetailInfo.deserialize(params['WhiteListDetailInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskSyscallWhiteLists请求参数结构体
      class DescribeRiskSyscallWhiteListsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        # @type Filters: Array
        # @param Order: 升序降序,asc desc
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
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeRiskSyscallWhiteLists返回参数结构体
      class DescribeRiskSyscallWhiteListsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 事件总数量
        # @type TotalCount: Integer
        # @param WhiteListSet: 白名单信息列表
        # @type WhiteListSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :WhiteListSet, :RequestId
        
        def initialize(totalcount=nil, whitelistset=nil, requestid=nil)
          @TotalCount = totalcount
          @WhiteListSet = whitelistset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['WhiteListSet'].nil?
            @WhiteListSet = []
            params['WhiteListSet'].each do |i|
              risksyscallwhitelistbaseinfo_tmp = RiskSyscallWhiteListBaseInfo.new
              risksyscallwhitelistbaseinfo_tmp.deserialize(i)
              @WhiteListSet << risksyscallwhitelistbaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecEventsTendency请求参数结构体
      class DescribeSecEventsTendencyRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :StartTime, :EndTime
        
        def initialize(starttime=nil, endtime=nil)
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeSecEventsTendency返回参数结构体
      class DescribeSecEventsTendencyResponse < TencentCloud::Common::AbstractModel
        # @param EventTendencySet: 运行时安全事件趋势信息列表
        # @type EventTendencySet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventTendencySet, :RequestId
        
        def initialize(eventtendencyset=nil, requestid=nil)
          @EventTendencySet = eventtendencyset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EventTendencySet'].nil?
            @EventTendencySet = []
            params['EventTendencySet'].each do |i|
              sectendencyeventinfo_tmp = SecTendencyEventInfo.new
              sectendencyeventinfo_tmp.deserialize(i)
              @EventTendencySet << sectendencyeventinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskResultSummary请求参数结构体
      class DescribeTaskResultSummaryRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeTaskResultSummary返回参数结构体
      class DescribeTaskResultSummaryResponse < TencentCloud::Common::AbstractModel
        # @param SeriousRiskNodeCount: 严重风险影响的节点数量,返回7天数据
        # @type SeriousRiskNodeCount: Array
        # @param HighRiskNodeCount: 高风险影响的节点的数量,返回7天数据
        # @type HighRiskNodeCount: Array
        # @param MiddleRiskNodeCount: 中风险检查项的节点数量,返回7天数据
        # @type MiddleRiskNodeCount: Array
        # @param HintRiskNodeCount: 提示风险检查项的节点数量,返回7天数据
        # @type HintRiskNodeCount: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SeriousRiskNodeCount, :HighRiskNodeCount, :MiddleRiskNodeCount, :HintRiskNodeCount, :RequestId
        
        def initialize(seriousrisknodecount=nil, highrisknodecount=nil, middlerisknodecount=nil, hintrisknodecount=nil, requestid=nil)
          @SeriousRiskNodeCount = seriousrisknodecount
          @HighRiskNodeCount = highrisknodecount
          @MiddleRiskNodeCount = middlerisknodecount
          @HintRiskNodeCount = hintrisknodecount
          @RequestId = requestid
        end

        def deserialize(params)
          @SeriousRiskNodeCount = params['SeriousRiskNodeCount']
          @HighRiskNodeCount = params['HighRiskNodeCount']
          @MiddleRiskNodeCount = params['MiddleRiskNodeCount']
          @HintRiskNodeCount = params['HintRiskNodeCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUnfinishRefreshTask请求参数结构体
      class DescribeUnfinishRefreshTaskRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeUnfinishRefreshTask返回参数结构体
      class DescribeUnfinishRefreshTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 返回最近的一次任务ID
        # @type TaskId: Integer
        # @param TaskStatus: 任务状态，为Task_New,Task_Running,Task_Finish,Task_Error,Task_NoExist.Task_New,Task_Running表示有任务存在，不允许新下发
        # @type TaskStatus: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :TaskStatus, :RequestId
        
        def initialize(taskid=nil, taskstatus=nil, requestid=nil)
          @TaskId = taskid
          @TaskStatus = taskstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskStatus = params['TaskStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserCluster请求参数结构体
      class DescribeUserClusterRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 每次查询的最大记录数量
        # @type Limit: Integer
        # @param Filters: Name - String
        # Name 可取值：ClusterName,ClusterId,ClusterType,Region,ClusterCheckMode,ClusterAutoCheck
        # @type Filters: Array
        # @param By: 排序字段
        # @type By: String
        # @param Order: 排序方式 asc,desc
        # @type Order: String

        attr_accessor :Offset, :Limit, :Filters, :By, :Order
        
        def initialize(offset=nil, limit=nil, filters=nil, by=nil, order=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @By = by
          @Order = order
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              compliancefilters_tmp = ComplianceFilters.new
              compliancefilters_tmp.deserialize(i)
              @Filters << compliancefilters_tmp
            end
          end
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeUserCluster返回参数结构体
      class DescribeUserClusterResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集群总数
        # @type TotalCount: Integer
        # @param ClusterInfoList: 集群的详细信息
        # @type ClusterInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ClusterInfoList, :RequestId
        
        def initialize(totalcount=nil, clusterinfolist=nil, requestid=nil)
          @TotalCount = totalcount
          @ClusterInfoList = clusterinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ClusterInfoList'].nil?
            @ClusterInfoList = []
            params['ClusterInfoList'].each do |i|
              clusterinfoitem_tmp = ClusterInfoItem.new
              clusterinfoitem_tmp.deserialize(i)
              @ClusterInfoList << clusterinfoitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeValueAddedSrvInfo请求参数结构体
      class DescribeValueAddedSrvInfoRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeValueAddedSrvInfo返回参数结构体
      class DescribeValueAddedSrvInfoResponse < TencentCloud::Common::AbstractModel
        # @param RegistryImageCnt: 仓库镜像未授权数量
        # @type RegistryImageCnt: Integer
        # @param LocalImageCnt: 本地镜像未授权数量
        # @type LocalImageCnt: Integer
        # @param UnusedAuthorizedCnt: 未使用的镜像安全扫描授权数
        # @type UnusedAuthorizedCnt: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegistryImageCnt, :LocalImageCnt, :UnusedAuthorizedCnt, :RequestId
        
        def initialize(registryimagecnt=nil, localimagecnt=nil, unusedauthorizedcnt=nil, requestid=nil)
          @RegistryImageCnt = registryimagecnt
          @LocalImageCnt = localimagecnt
          @UnusedAuthorizedCnt = unusedauthorizedcnt
          @RequestId = requestid
        end

        def deserialize(params)
          @RegistryImageCnt = params['RegistryImageCnt']
          @LocalImageCnt = params['LocalImageCnt']
          @UnusedAuthorizedCnt = params['UnusedAuthorizedCnt']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVirusDetail请求参数结构体
      class DescribeVirusDetailRequest < TencentCloud::Common::AbstractModel
        # @param Id: 木马文件id
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeVirusDetail返回参数结构体
      class DescribeVirusDetailResponse < TencentCloud::Common::AbstractModel
        # @param ImageId: 镜像ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageId: String
        # @param ImageName: 镜像名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageName: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Size: 木马文件大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Integer
        # @param FilePath: 木马文件路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilePath: String
        # @param ModifyTime: 最近生成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param VirusName: 病毒名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirusName: String
        # @param RiskLevel: 风险等级 RISK_CRITICAL, RISK_HIGH, RISK_MEDIUM, RISK_LOW, RISK_NOTICE。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: String
        # @param ContainerName: 容器名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerName: String
        # @param ContainerId: 容器id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerId: String
        # @param HostName: 主机名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostName: String
        # @param HostId: 主机id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostId: String
        # @param ProcessName: 进程名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessName: String
        # @param ProcessPath: 进程路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessPath: String
        # @param ProcessMd5: 进程md5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessMd5: String
        # @param ProcessId: 进程id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessId: Integer
        # @param ProcessArgv: 进程参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessArgv: String
        # @param ProcessChan: 进程链
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessChan: String
        # @param ProcessAccountGroup: 进程组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessAccountGroup: String
        # @param ProcessStartAccount: 进程启动用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessStartAccount: String
        # @param ProcessFileAuthority: 进程文件权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessFileAuthority: String
        # @param SourceType: 来源：0：一键扫描， 1：定时扫描 2：实时监控
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceType: Integer
        # @param PodName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodName: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param HarmDescribe: 事件描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HarmDescribe: String
        # @param SuggestScheme: 建议方案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuggestScheme: String
        # @param Mark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mark: String
        # @param FileName: 风险文件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param FileMd5: 文件MD5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileMd5: String
        # @param EventType: 事件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventType: String
        # @param Status: DEAL_NONE:文件待处理
        # DEAL_IGNORE:已经忽略
        # DEAL_ADD_WHITELIST:加白
        # DEAL_DEL:文件已经删除
        # DEAL_ISOLATE:已经隔离
        # DEAL_ISOLATING:隔离中
        # DEAL_ISOLATE_FAILED:隔离失败
        # DEAL_RECOVERING:恢复中
        # DEAL_RECOVER_FAILED: 恢复失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param SubStatus: 失败子状态:
        # FILE_NOT_FOUND:文件不存在
        # FILE_ABNORMAL:文件异常
        # FILE_ABNORMAL_DEAL_RECOVER:恢复文件时，文件异常
        # BACKUP_FILE_NOT_FOUND:备份文件不存在
        # CONTAINER_NOT_FOUND_DEAL_ISOLATE:隔离时，容器不存在
        # CONTAINER_NOT_FOUND_DEAL_RECOVER:恢复时，容器不存在
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubStatus: String
        # @param HostIP: 内网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostIP: String
        # @param ClientIP: 外网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIP: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageId, :ImageName, :CreateTime, :Size, :FilePath, :ModifyTime, :VirusName, :RiskLevel, :ContainerName, :ContainerId, :HostName, :HostId, :ProcessName, :ProcessPath, :ProcessMd5, :ProcessId, :ProcessArgv, :ProcessChan, :ProcessAccountGroup, :ProcessStartAccount, :ProcessFileAuthority, :SourceType, :PodName, :Tags, :HarmDescribe, :SuggestScheme, :Mark, :FileName, :FileMd5, :EventType, :Status, :SubStatus, :HostIP, :ClientIP, :RequestId
        
        def initialize(imageid=nil, imagename=nil, createtime=nil, size=nil, filepath=nil, modifytime=nil, virusname=nil, risklevel=nil, containername=nil, containerid=nil, hostname=nil, hostid=nil, processname=nil, processpath=nil, processmd5=nil, processid=nil, processargv=nil, processchan=nil, processaccountgroup=nil, processstartaccount=nil, processfileauthority=nil, sourcetype=nil, podname=nil, tags=nil, harmdescribe=nil, suggestscheme=nil, mark=nil, filename=nil, filemd5=nil, eventtype=nil, status=nil, substatus=nil, hostip=nil, clientip=nil, requestid=nil)
          @ImageId = imageid
          @ImageName = imagename
          @CreateTime = createtime
          @Size = size
          @FilePath = filepath
          @ModifyTime = modifytime
          @VirusName = virusname
          @RiskLevel = risklevel
          @ContainerName = containername
          @ContainerId = containerid
          @HostName = hostname
          @HostId = hostid
          @ProcessName = processname
          @ProcessPath = processpath
          @ProcessMd5 = processmd5
          @ProcessId = processid
          @ProcessArgv = processargv
          @ProcessChan = processchan
          @ProcessAccountGroup = processaccountgroup
          @ProcessStartAccount = processstartaccount
          @ProcessFileAuthority = processfileauthority
          @SourceType = sourcetype
          @PodName = podname
          @Tags = tags
          @HarmDescribe = harmdescribe
          @SuggestScheme = suggestscheme
          @Mark = mark
          @FileName = filename
          @FileMd5 = filemd5
          @EventType = eventtype
          @Status = status
          @SubStatus = substatus
          @HostIP = hostip
          @ClientIP = clientip
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @ImageName = params['ImageName']
          @CreateTime = params['CreateTime']
          @Size = params['Size']
          @FilePath = params['FilePath']
          @ModifyTime = params['ModifyTime']
          @VirusName = params['VirusName']
          @RiskLevel = params['RiskLevel']
          @ContainerName = params['ContainerName']
          @ContainerId = params['ContainerId']
          @HostName = params['HostName']
          @HostId = params['HostId']
          @ProcessName = params['ProcessName']
          @ProcessPath = params['ProcessPath']
          @ProcessMd5 = params['ProcessMd5']
          @ProcessId = params['ProcessId']
          @ProcessArgv = params['ProcessArgv']
          @ProcessChan = params['ProcessChan']
          @ProcessAccountGroup = params['ProcessAccountGroup']
          @ProcessStartAccount = params['ProcessStartAccount']
          @ProcessFileAuthority = params['ProcessFileAuthority']
          @SourceType = params['SourceType']
          @PodName = params['PodName']
          @Tags = params['Tags']
          @HarmDescribe = params['HarmDescribe']
          @SuggestScheme = params['SuggestScheme']
          @Mark = params['Mark']
          @FileName = params['FileName']
          @FileMd5 = params['FileMd5']
          @EventType = params['EventType']
          @Status = params['Status']
          @SubStatus = params['SubStatus']
          @HostIP = params['HostIP']
          @ClientIP = params['ClientIP']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVirusList请求参数结构体
      class DescribeVirusListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>FileName - String - 是否必填：否 - 文件名称</li>
        # <li>FilePath - String - 是否必填：否 - 文件路径</li>
        # <li>VirusName - String - 是否必填：否 - 病毒名称</li>
        # <li>ContainerName- String - 是否必填：是 - 容器名称</li>
        # <li>ContainerId- string - 是否必填：否 - 容器id</li>
        # <li>ImageName- string - 是否必填：否 - 镜像名称</li>
        # <li>ImageId- string - 是否必填：否 - 镜像id</li>
        # <li>IsRealTime- int - 是否必填：否 - 过滤是否实时监控数据</li>
        # <li>TaskId- string - 是否必填：否 - 任务ID</li>
        # @type Filters: Array
        # @param Order: 排序方式
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
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeVirusList返回参数结构体
      class DescribeVirusListResponse < TencentCloud::Common::AbstractModel
        # @param List: 木马列表
        # @type List: Array
        # @param TotalCount: 总数量
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
              virusinfo_tmp = VirusInfo.new
              virusinfo_tmp.deserialize(i)
              @List << virusinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVirusMonitorSetting请求参数结构体
      class DescribeVirusMonitorSettingRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeVirusMonitorSetting返回参数结构体
      class DescribeVirusMonitorSettingResponse < TencentCloud::Common::AbstractModel
        # @param EnableScan: 是否开启实时监控
        # @type EnableScan: Boolean
        # @param ScanPathAll: 扫描全部路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanPathAll: Boolean
        # @param ScanPathType: 当ScanPathAll为true 生效 0扫描以下路径 1、扫描除以下路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanPathType: Integer
        # @param ScanPath: 自选排除或扫描的地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanPath: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnableScan, :ScanPathAll, :ScanPathType, :ScanPath, :RequestId
        
        def initialize(enablescan=nil, scanpathall=nil, scanpathtype=nil, scanpath=nil, requestid=nil)
          @EnableScan = enablescan
          @ScanPathAll = scanpathall
          @ScanPathType = scanpathtype
          @ScanPath = scanpath
          @RequestId = requestid
        end

        def deserialize(params)
          @EnableScan = params['EnableScan']
          @ScanPathAll = params['ScanPathAll']
          @ScanPathType = params['ScanPathType']
          @ScanPath = params['ScanPath']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVirusScanSetting请求参数结构体
      class DescribeVirusScanSettingRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeVirusScanSetting返回参数结构体
      class DescribeVirusScanSettingResponse < TencentCloud::Common::AbstractModel
        # @param EnableScan: 是否开启定期扫描
        # @type EnableScan: Boolean
        # @param Cycle: 检测周期每隔多少天
        # @type Cycle: Integer
        # @param BeginScanAt: 扫描开始时间
        # @type BeginScanAt: String
        # @param ScanPathAll: 扫描全部路径
        # @type ScanPathAll: Boolean
        # @param ScanPathType: 当ScanPathAll为true 生效 0扫描以下路径 1、扫描除以下路径
        # @type ScanPathType: Integer
        # @param Timeout: 超时时长，单位小时
        # @type Timeout: Integer
        # @param ScanRangeType: 扫描范围0容器1主机节点
        # @type ScanRangeType: Integer
        # @param ScanRangeAll: true 全选，false 自选
        # @type ScanRangeAll: Boolean
        # @param ScanIds: 自选扫描范围的容器id或者主机id 根据ScanRangeType决定
        # @type ScanIds: Array
        # @param ScanPath: 自选排除或扫描的地址
        # @type ScanPath: Array
        # @param ClickTimeout: 一键检测的超时设置
        # @type ClickTimeout: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnableScan, :Cycle, :BeginScanAt, :ScanPathAll, :ScanPathType, :Timeout, :ScanRangeType, :ScanRangeAll, :ScanIds, :ScanPath, :ClickTimeout, :RequestId
        
        def initialize(enablescan=nil, cycle=nil, beginscanat=nil, scanpathall=nil, scanpathtype=nil, timeout=nil, scanrangetype=nil, scanrangeall=nil, scanids=nil, scanpath=nil, clicktimeout=nil, requestid=nil)
          @EnableScan = enablescan
          @Cycle = cycle
          @BeginScanAt = beginscanat
          @ScanPathAll = scanpathall
          @ScanPathType = scanpathtype
          @Timeout = timeout
          @ScanRangeType = scanrangetype
          @ScanRangeAll = scanrangeall
          @ScanIds = scanids
          @ScanPath = scanpath
          @ClickTimeout = clicktimeout
          @RequestId = requestid
        end

        def deserialize(params)
          @EnableScan = params['EnableScan']
          @Cycle = params['Cycle']
          @BeginScanAt = params['BeginScanAt']
          @ScanPathAll = params['ScanPathAll']
          @ScanPathType = params['ScanPathType']
          @Timeout = params['Timeout']
          @ScanRangeType = params['ScanRangeType']
          @ScanRangeAll = params['ScanRangeAll']
          @ScanIds = params['ScanIds']
          @ScanPath = params['ScanPath']
          @ClickTimeout = params['ClickTimeout']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVirusScanTaskStatus请求参数结构体
      class DescribeVirusScanTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskID: 任务id
        # @type TaskID: String

        attr_accessor :TaskID
        
        def initialize(taskid=nil)
          @TaskID = taskid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
        end
      end

      # DescribeVirusScanTaskStatus返回参数结构体
      class DescribeVirusScanTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param ContainerTotal: 查杀容器个数
        # @type ContainerTotal: Integer
        # @param RiskContainerCnt: 风险容器个数
        # @type RiskContainerCnt: Integer
        # @param Status: 扫描状态 任务状态:
        # SCAN_NONE:无，
        # SCAN_SCANNING:正在扫描中，
        # SCAN_FINISH：扫描完成，
        # SCAN_TIMEOUT：扫描超时
        # SCAN_CANCELING: 取消中
        # @type Status: String
        # @param Schedule: 扫描进度 I
        # @type Schedule: Integer
        # @param ContainerScanCnt: 已经扫描了的容器个数
        # @type ContainerScanCnt: Integer
        # @param RiskCnt: 风险个数
        # @type RiskCnt: Integer
        # @param LeftSeconds: 剩余扫描时间
        # @type LeftSeconds: Integer
        # @param StartTime: 扫描开始时间
        # @type StartTime: String
        # @param EndTime: 扫描结束时间
        # @type EndTime: String
        # @param ScanType: 扫描类型，"CYCLE"：周期扫描， "MANUAL"：手动扫描
        # @type ScanType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ContainerTotal, :RiskContainerCnt, :Status, :Schedule, :ContainerScanCnt, :RiskCnt, :LeftSeconds, :StartTime, :EndTime, :ScanType, :RequestId
        
        def initialize(containertotal=nil, riskcontainercnt=nil, status=nil, schedule=nil, containerscancnt=nil, riskcnt=nil, leftseconds=nil, starttime=nil, endtime=nil, scantype=nil, requestid=nil)
          @ContainerTotal = containertotal
          @RiskContainerCnt = riskcontainercnt
          @Status = status
          @Schedule = schedule
          @ContainerScanCnt = containerscancnt
          @RiskCnt = riskcnt
          @LeftSeconds = leftseconds
          @StartTime = starttime
          @EndTime = endtime
          @ScanType = scantype
          @RequestId = requestid
        end

        def deserialize(params)
          @ContainerTotal = params['ContainerTotal']
          @RiskContainerCnt = params['RiskContainerCnt']
          @Status = params['Status']
          @Schedule = params['Schedule']
          @ContainerScanCnt = params['ContainerScanCnt']
          @RiskCnt = params['RiskCnt']
          @LeftSeconds = params['LeftSeconds']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ScanType = params['ScanType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVirusScanTimeoutSetting请求参数结构体
      class DescribeVirusScanTimeoutSettingRequest < TencentCloud::Common::AbstractModel
        # @param ScanType: 设置类型0一键检测，1定时检测
        # @type ScanType: Integer

        attr_accessor :ScanType
        
        def initialize(scantype=nil)
          @ScanType = scantype
        end

        def deserialize(params)
          @ScanType = params['ScanType']
        end
      end

      # DescribeVirusScanTimeoutSetting返回参数结构体
      class DescribeVirusScanTimeoutSettingResponse < TencentCloud::Common::AbstractModel
        # @param Timeout: 超时时长单位小时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timeout: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Timeout, :RequestId
        
        def initialize(timeout=nil, requestid=nil)
          @Timeout = timeout
          @RequestId = requestid
        end

        def deserialize(params)
          @Timeout = params['Timeout']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVirusSummary请求参数结构体
      class DescribeVirusSummaryRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeVirusSummary返回参数结构体
      class DescribeVirusSummaryResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 最近的一次扫描任务id
        # @type TaskId: String
        # @param RiskContainerCnt: 木马影响容器个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskContainerCnt: Integer
        # @param RiskCnt: 待处理风险个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskCnt: Integer
        # @param VirusDataBaseModifyTime: 病毒库更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirusDataBaseModifyTime: String
        # @param RiskContainerIncrease: 木马影响容器个数较昨日增长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskContainerIncrease: Integer
        # @param RiskIncrease: 待处理风险个数较昨日增长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskIncrease: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RiskContainerCnt, :RiskCnt, :VirusDataBaseModifyTime, :RiskContainerIncrease, :RiskIncrease, :RequestId
        
        def initialize(taskid=nil, riskcontainercnt=nil, riskcnt=nil, virusdatabasemodifytime=nil, riskcontainerincrease=nil, riskincrease=nil, requestid=nil)
          @TaskId = taskid
          @RiskContainerCnt = riskcontainercnt
          @RiskCnt = riskcnt
          @VirusDataBaseModifyTime = virusdatabasemodifytime
          @RiskContainerIncrease = riskcontainerincrease
          @RiskIncrease = riskincrease
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RiskContainerCnt = params['RiskContainerCnt']
          @RiskCnt = params['RiskCnt']
          @VirusDataBaseModifyTime = params['VirusDataBaseModifyTime']
          @RiskContainerIncrease = params['RiskContainerIncrease']
          @RiskIncrease = params['RiskIncrease']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVirusTaskList请求参数结构体
      class DescribeVirusTaskListRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>ContainerName - String - 是否必填：否 - 容器名称</li>
        # <li>ContainerId - String - 是否必填：否 - 容器id</li>
        # <li>Hostname - String - 是否必填：否 - 主机名称</li>
        # <li>HostIp- String - 是否必填：是 - 容器名称</li>
        # @type Filters: Array
        # @param By: 排序字段
        # @type By: String
        # @param Order: 排序方式
        # @type Order: String

        attr_accessor :TaskId, :Limit, :Offset, :Filters, :By, :Order
        
        def initialize(taskid=nil, limit=nil, offset=nil, filters=nil, by=nil, order=nil)
          @TaskId = taskid
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @By = by
          @Order = order
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeVirusTaskList返回参数结构体
      class DescribeVirusTaskListResponse < TencentCloud::Common::AbstractModel
        # @param List: 文件查杀列表
        # @type List: Array
        # @param TotalCount: 总数量
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
              virustaskinfo_tmp = VirusTaskInfo.new
              virustaskinfo_tmp.deserialize(i)
              @List << virustaskinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWarningRules请求参数结构体
      class DescribeWarningRulesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWarningRules返回参数结构体
      class DescribeWarningRulesResponse < TencentCloud::Common::AbstractModel
        # @param WarningRules: 告警策略列表
        # @type WarningRules: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WarningRules, :RequestId
        
        def initialize(warningrules=nil, requestid=nil)
          @WarningRules = warningrules
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WarningRules'].nil?
            @WarningRules = []
            params['WarningRules'].each do |i|
              warningrule_tmp = WarningRule.new
              warningrule_tmp.deserialize(i)
              @WarningRules << warningrule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 运行时容器逃逸事件描述信息
      class EscapeEventDescription < TencentCloud::Common::AbstractModel
        # @param Description: 事件规则
        # @type Description: String
        # @param Solution: 解决方案
        # @type Solution: String
        # @param Remark: 事件备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :Description, :Solution, :Remark
        
        def initialize(description=nil, solution=nil, remark=nil)
          @Description = description
          @Solution = solution
          @Remark = remark
        end

        def deserialize(params)
          @Description = params['Description']
          @Solution = params['Solution']
          @Remark = params['Remark']
        end
      end

      # 容器逃逸事件列表
      class EscapeEventInfo < TencentCloud::Common::AbstractModel
        # @param EventType: 事件类型
        #    ESCAPE_HOST_ACESS_FILE:宿主机文件访问逃逸
        #    ESCAPE_MOUNT_NAMESPACE:MountNamespace逃逸
        #    ESCAPE_PRIVILEDGE:程序提权逃逸
        #    ESCAPE_PRIVILEDGE_CONTAINER_START:特权容器启动逃逸
        #    ESCAPE_MOUNT_SENSITIVE_PTAH:敏感路径挂载
        #    ESCAPE_SYSCALL:Syscall逃逸
        # @type EventType: String
        # @param ContainerName: 容器名
        # @type ContainerName: String
        # @param ImageName: 镜像名
        # @type ImageName: String
        # @param Status: 状态
        #      EVENT_UNDEAL:事件未处理
        #      EVENT_DEALED:事件已经处理
        #      EVENT_INGNORE：事件忽略
        # @type Status: String
        # @param EventId: 事件记录的唯一id
        # @type EventId: String
        # @param NodeName: 节点名称
        # @type NodeName: String
        # @param PodName: pod(实例)的名字
        # @type PodName: String
        # @param FoundTime: 生成时间
        # @type FoundTime: String
        # @param EventName: 事件名字，
        # 宿主机文件访问逃逸、
        # Syscall逃逸、
        # MountNamespace逃逸、
        # 程序提权逃逸、
        # 特权容器启动逃逸、
        # 敏感路径挂载
        # @type EventName: String
        # @param ImageId: 镜像id，用于跳转
        # @type ImageId: String
        # @param ContainerId: 容器id，用于跳转
        # @type ContainerId: String
        # @param Solution: 事件解决方案
        # @type Solution: String
        # @param Description: 事件描述
        # @type Description: String
        # @param EventCount: 事件数量
        # @type EventCount: Integer
        # @param LatestFoundTime: 最近生成时间
        # @type LatestFoundTime: String

        attr_accessor :EventType, :ContainerName, :ImageName, :Status, :EventId, :NodeName, :PodName, :FoundTime, :EventName, :ImageId, :ContainerId, :Solution, :Description, :EventCount, :LatestFoundTime
        
        def initialize(eventtype=nil, containername=nil, imagename=nil, status=nil, eventid=nil, nodename=nil, podname=nil, foundtime=nil, eventname=nil, imageid=nil, containerid=nil, solution=nil, description=nil, eventcount=nil, latestfoundtime=nil)
          @EventType = eventtype
          @ContainerName = containername
          @ImageName = imagename
          @Status = status
          @EventId = eventid
          @NodeName = nodename
          @PodName = podname
          @FoundTime = foundtime
          @EventName = eventname
          @ImageId = imageid
          @ContainerId = containerid
          @Solution = solution
          @Description = description
          @EventCount = eventcount
          @LatestFoundTime = latestfoundtime
        end

        def deserialize(params)
          @EventType = params['EventType']
          @ContainerName = params['ContainerName']
          @ImageName = params['ImageName']
          @Status = params['Status']
          @EventId = params['EventId']
          @NodeName = params['NodeName']
          @PodName = params['PodName']
          @FoundTime = params['FoundTime']
          @EventName = params['EventName']
          @ImageId = params['ImageId']
          @ContainerId = params['ContainerId']
          @Solution = params['Solution']
          @Description = params['Description']
          @EventCount = params['EventCount']
          @LatestFoundTime = params['LatestFoundTime']
        end
      end

      # 容器逃逸扫描策略开关信息
      class EscapeRule < TencentCloud::Common::AbstractModel
        # @param Type: 规则类型
        # ESCAPE_HOST_ACESS_FILE:宿主机文件访问逃逸
        #    ESCAPE_MOUNT_NAMESPACE:MountNamespace逃逸
        #    ESCAPE_PRIVILEDGE:程序提权逃逸
        #    ESCAPE_PRIVILEDGE_CONTAINER_START:特权容器启动逃逸
        #    ESCAPE_MOUNT_SENSITIVE_PTAH:敏感路径挂载
        # ESCAPE_SYSCALL:Syscall逃逸
        # @type Type: String
        # @param Name: 规则名称
        # 宿主机文件访问逃逸、
        # Syscall逃逸、
        # MountNamespace逃逸、
        # 程序提权逃逸、
        # 特权容器启动逃逸、
        # 敏感路径挂载
        # @type Name: String
        # @param IsEnable: 是否打开：false否 ，true是
        # @type IsEnable: Boolean

        attr_accessor :Type, :Name, :IsEnable
        
        def initialize(type=nil, name=nil, isenable=nil)
          @Type = type
          @Name = name
          @IsEnable = isenable
        end

        def deserialize(params)
          @Type = params['Type']
          @Name = params['Name']
          @IsEnable = params['IsEnable']
        end
      end

      # 修改容器逃逸扫描策略开关信息
      class EscapeRuleEnabled < TencentCloud::Common::AbstractModel
        # @param Type: 规则类型
        #    ESCAPE_HOST_ACESS_FILE:宿主机文件访问逃逸
        #    ESCAPE_MOUNT_NAMESPACE:MountNamespace逃逸
        #    ESCAPE_PRIVILEDGE:程序提权逃逸
        #    ESCAPE_PRIVILEDGE_CONTAINER_START:特权容器启动逃逸
        #    ESCAPE_MOUNT_SENSITIVE_PTAH:敏感路径挂载
        #    ESCAPE_SYSCALL:Syscall逃逸
        # @type Type: String
        # @param IsEnable: 是否打开：false否 ，true是
        # @type IsEnable: Boolean

        attr_accessor :Type, :IsEnable
        
        def initialize(type=nil, isenable=nil)
          @Type = type
          @IsEnable = isenable
        end

        def deserialize(params)
          @Type = params['Type']
          @IsEnable = params['IsEnable']
        end
      end

      # ExportVirusList请求参数结构体
      class ExportVirusListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li>FileName - String - 是否必填：否 - 文件名称</li>
        # <li>FilePath - String - 是否必填：否 - 文件路径</li>
        # <li>VirusName - String - 是否必填：否 - 病毒名称</li>
        # <li>ContainerName- String - 是否必填：是 - 容器名称</li>
        # <li>ContainerId- string - 是否必填：否 - 容器id</li>
        # <li>ImageName- string - 是否必填：否 - 镜像名称</li>
        # <li>ImageId- string - 是否必填：否 - 镜像id</li>
        # @type Filters: Array
        # @param Order: 排序方式
        # @type Order: String
        # @param By: 排序字段
        # @type By: String
        # @param ExportField: 导出字段
        # @type ExportField: Array

        attr_accessor :Filters, :Order, :By, :ExportField
        
        def initialize(filters=nil, order=nil, by=nil, exportfield=nil)
          @Filters = filters
          @Order = order
          @By = by
          @ExportField = exportfield
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              runtimefilters_tmp = RunTimeFilters.new
              runtimefilters_tmp.deserialize(i)
              @Filters << runtimefilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
          @ExportField = params['ExportField']
        end
      end

      # ExportVirusList返回参数结构体
      class ExportVirusListResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 导出任务ID，前端拿着任务ID查询任务进度
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId
        
        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # 容器安全运行时，文件属性信息
      class FileAttributeInfo < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileType: 文件类型
        # @type FileType: String
        # @param FileSize: 文件大小(字节)
        # @type FileSize: Integer
        # @param FilePath: 文件路径
        # @type FilePath: String
        # @param FileCreateTime: 文件创建时间
        # @type FileCreateTime: String
        # @param LatestTamperedFileMTime: 最近被篡改文件创建时间
        # @type LatestTamperedFileMTime: String

        attr_accessor :FileName, :FileType, :FileSize, :FilePath, :FileCreateTime, :LatestTamperedFileMTime
        
        def initialize(filename=nil, filetype=nil, filesize=nil, filepath=nil, filecreatetime=nil, latesttamperedfilemtime=nil)
          @FileName = filename
          @FileType = filetype
          @FileSize = filesize
          @FilePath = filepath
          @FileCreateTime = filecreatetime
          @LatestTamperedFileMTime = latesttamperedfilemtime
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileType = params['FileType']
          @FileSize = params['FileSize']
          @FilePath = params['FilePath']
          @FileCreateTime = params['FileCreateTime']
          @LatestTamperedFileMTime = params['LatestTamperedFileMTime']
        end
      end

      # 容器安全主机列表
      class HostInfo < TencentCloud::Common::AbstractModel
        # @param HostID: 主机id
        # @type HostID: String
        # @param HostIP: 主机ip即内网ip
        # @type HostIP: String
        # @param HostName: 主机名称
        # @type HostName: String
        # @param Group: 业务组
        # @type Group: String
        # @param DockerVersion: docker 版本
        # @type DockerVersion: String
        # @param DockerFileSystemDriver: docker 文件系统类型
        # @type DockerFileSystemDriver: String
        # @param ImageCnt: 镜像个数
        # @type ImageCnt: Integer
        # @param ContainerCnt: 容器个数
        # @type ContainerCnt: Integer
        # @param Status: agent运行状态
        # @type Status: String
        # @param IsContainerd: 是否是Containerd
        # @type IsContainerd: Boolean
        # @param MachineType: 主机来源：["CVM", "ECM", "LH", "BM"]  中的之一为腾讯云服务器；["Other"]之一非腾讯云服务器；
        # @type MachineType: String
        # @param PublicIp: 外网ip
        # @type PublicIp: String
        # @param Uuid: 主机uuid
        # @type Uuid: String
        # @param InstanceID: 主机实例ID
        # @type InstanceID: String
        # @param RegionID: 地域ID
        # @type RegionID: Integer

        attr_accessor :HostID, :HostIP, :HostName, :Group, :DockerVersion, :DockerFileSystemDriver, :ImageCnt, :ContainerCnt, :Status, :IsContainerd, :MachineType, :PublicIp, :Uuid, :InstanceID, :RegionID
        
        def initialize(hostid=nil, hostip=nil, hostname=nil, group=nil, dockerversion=nil, dockerfilesystemdriver=nil, imagecnt=nil, containercnt=nil, status=nil, iscontainerd=nil, machinetype=nil, publicip=nil, uuid=nil, instanceid=nil, regionid=nil)
          @HostID = hostid
          @HostIP = hostip
          @HostName = hostname
          @Group = group
          @DockerVersion = dockerversion
          @DockerFileSystemDriver = dockerfilesystemdriver
          @ImageCnt = imagecnt
          @ContainerCnt = containercnt
          @Status = status
          @IsContainerd = iscontainerd
          @MachineType = machinetype
          @PublicIp = publicip
          @Uuid = uuid
          @InstanceID = instanceid
          @RegionID = regionid
        end

        def deserialize(params)
          @HostID = params['HostID']
          @HostIP = params['HostIP']
          @HostName = params['HostName']
          @Group = params['Group']
          @DockerVersion = params['DockerVersion']
          @DockerFileSystemDriver = params['DockerFileSystemDriver']
          @ImageCnt = params['ImageCnt']
          @ContainerCnt = params['ContainerCnt']
          @Status = params['Status']
          @IsContainerd = params['IsContainerd']
          @MachineType = params['MachineType']
          @PublicIp = params['PublicIp']
          @Uuid = params['Uuid']
          @InstanceID = params['InstanceID']
          @RegionID = params['RegionID']
        end
      end

      # 容器安全 主机镜像关联列表
      class ImageHost < TencentCloud::Common::AbstractModel
        # @param ImageID: 镜像id
        # @type ImageID: String
        # @param HostID: 主机id
        # @type HostID: String

        attr_accessor :ImageID, :HostID
        
        def initialize(imageid=nil, hostid=nil)
          @ImageID = imageid
          @HostID = hostid
        end

        def deserialize(params)
          @ImageID = params['ImageID']
          @HostID = params['HostID']
        end
      end

      # 基本镜像信息
      class ImageInfo < TencentCloud::Common::AbstractModel
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param ImageName: 镜像名称
        # @type ImageName: String
        # @param ImageTag: 镜像tag
        # @type ImageTag: String
        # @param Force: 强制扫描
        # @type Force: String
        # @param ImageDigest: 镜像id
        # @type ImageDigest: String
        # @param RegistryType: 仓库类型
        # @type RegistryType: String
        # @param ImageRepoAddress: 镜像仓库地址
        # @type ImageRepoAddress: String
        # @param InstanceId: 实例id
        # @type InstanceId: String

        attr_accessor :InstanceName, :Namespace, :ImageName, :ImageTag, :Force, :ImageDigest, :RegistryType, :ImageRepoAddress, :InstanceId
        
        def initialize(instancename=nil, namespace=nil, imagename=nil, imagetag=nil, force=nil, imagedigest=nil, registrytype=nil, imagerepoaddress=nil, instanceid=nil)
          @InstanceName = instancename
          @Namespace = namespace
          @ImageName = imagename
          @ImageTag = imagetag
          @Force = force
          @ImageDigest = imagedigest
          @RegistryType = registrytype
          @ImageRepoAddress = imagerepoaddress
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @Namespace = params['Namespace']
          @ImageName = params['ImageName']
          @ImageTag = params['ImageTag']
          @Force = params['Force']
          @ImageDigest = params['ImageDigest']
          @RegistryType = params['RegistryType']
          @ImageRepoAddress = params['ImageRepoAddress']
          @InstanceId = params['InstanceId']
        end
      end

      # 基本镜像信息
      class ImageProgress < TencentCloud::Common::AbstractModel
        # @param ImageId: 镜像id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageId: String
        # @param RegistryType: 仓库类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistryType: String
        # @param ImageRepoAddress: 镜像仓库地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageRepoAddress: String
        # @param InstanceId: 实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Namespace: 命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param ImageName: 仓库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageName: String
        # @param ImageTag: 镜像tag
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageTag: String
        # @param ScanStatus: 镜像扫描状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanStatus: String
        # @param CveProgress: 镜像cve扫描进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CveProgress: Integer
        # @param RiskProgress: 镜像敏感扫描进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskProgress: Integer
        # @param VirusProgress: 镜像木马扫描进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirusProgress: Integer

        attr_accessor :ImageId, :RegistryType, :ImageRepoAddress, :InstanceId, :InstanceName, :Namespace, :ImageName, :ImageTag, :ScanStatus, :CveProgress, :RiskProgress, :VirusProgress
        
        def initialize(imageid=nil, registrytype=nil, imagerepoaddress=nil, instanceid=nil, instancename=nil, namespace=nil, imagename=nil, imagetag=nil, scanstatus=nil, cveprogress=nil, riskprogress=nil, virusprogress=nil)
          @ImageId = imageid
          @RegistryType = registrytype
          @ImageRepoAddress = imagerepoaddress
          @InstanceId = instanceid
          @InstanceName = instancename
          @Namespace = namespace
          @ImageName = imagename
          @ImageTag = imagetag
          @ScanStatus = scanstatus
          @CveProgress = cveprogress
          @RiskProgress = riskprogress
          @VirusProgress = virusprogress
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @RegistryType = params['RegistryType']
          @ImageRepoAddress = params['ImageRepoAddress']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Namespace = params['Namespace']
          @ImageName = params['ImageName']
          @ImageTag = params['ImageTag']
          @ScanStatus = params['ScanStatus']
          @CveProgress = params['CveProgress']
          @RiskProgress = params['RiskProgress']
          @VirusProgress = params['VirusProgress']
        end
      end

      # 容器安全镜像高危行为信息
      class ImageRisk < TencentCloud::Common::AbstractModel
        # @param Behavior: 高危行为
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Behavior: Integer
        # @param Type: 种类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param Level: 风险等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: String
        # @param Desc: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param InstructionContent: 解决方案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstructionContent: String

        attr_accessor :Behavior, :Type, :Level, :Desc, :InstructionContent
        
        def initialize(behavior=nil, type=nil, level=nil, desc=nil, instructioncontent=nil)
          @Behavior = behavior
          @Type = type
          @Level = level
          @Desc = desc
          @InstructionContent = instructioncontent
        end

        def deserialize(params)
          @Behavior = params['Behavior']
          @Type = params['Type']
          @Level = params['Level']
          @Desc = params['Desc']
          @InstructionContent = params['InstructionContent']
        end
      end

      # 镜像风险详情
      class ImageRiskInfo < TencentCloud::Common::AbstractModel
        # @param Behavior: 行为
        # @type Behavior: Integer
        # @param Type: 类型
        # @type Type: Integer
        # @param Level: 级别
        # @type Level: Integer
        # @param Desc: 详情
        # @type Desc: String
        # @param InstructionContent: 解决方案
        # @type InstructionContent: String

        attr_accessor :Behavior, :Type, :Level, :Desc, :InstructionContent
        
        def initialize(behavior=nil, type=nil, level=nil, desc=nil, instructioncontent=nil)
          @Behavior = behavior
          @Type = type
          @Level = level
          @Desc = desc
          @InstructionContent = instructioncontent
        end

        def deserialize(params)
          @Behavior = params['Behavior']
          @Type = params['Type']
          @Level = params['Level']
          @Desc = params['Desc']
          @InstructionContent = params['InstructionContent']
        end
      end

      # 运行时安全事件趋势信息
      class ImageRiskTendencyInfo < TencentCloud::Common::AbstractModel
        # @param ImageRiskSet: 趋势列表
        # @type ImageRiskSet: Array
        # @param ImageRiskType: 风险类型：
        # IRT_VULNERABILITY : 安全漏洞
        # IRT_MALWARE_VIRUS: 木马病毒
        # IRT_RISK:敏感信息
        # @type ImageRiskType: String

        attr_accessor :ImageRiskSet, :ImageRiskType
        
        def initialize(imageriskset=nil, imagerisktype=nil)
          @ImageRiskSet = imageriskset
          @ImageRiskType = imagerisktype
        end

        def deserialize(params)
          unless params['ImageRiskSet'].nil?
            @ImageRiskSet = []
            params['ImageRiskSet'].each do |i|
              runtimetendencyinfo_tmp = RunTimeTendencyInfo.new
              runtimetendencyinfo_tmp.deserialize(i)
              @ImageRiskSet << runtimetendencyinfo_tmp
            end
          end
          @ImageRiskType = params['ImageRiskType']
        end
      end

      # 镜像列表
      class ImageSimpleInfo < TencentCloud::Common::AbstractModel
        # @param ImageID: 镜像id
        # @type ImageID: String
        # @param ImageName: 镜像名称
        # @type ImageName: String
        # @param Size: 镜像大小
        # @type Size: Integer
        # @param ImageType: 类型
        # @type ImageType: String
        # @param ContainerCnt: 关联容器数
        # @type ContainerCnt: Integer

        attr_accessor :ImageID, :ImageName, :Size, :ImageType, :ContainerCnt
        
        def initialize(imageid=nil, imagename=nil, size=nil, imagetype=nil, containercnt=nil)
          @ImageID = imageid
          @ImageName = imagename
          @Size = size
          @ImageType = imagetype
          @ContainerCnt = containercnt
        end

        def deserialize(params)
          @ImageID = params['ImageID']
          @ImageName = params['ImageName']
          @Size = params['Size']
          @ImageType = params['ImageType']
          @ContainerCnt = params['ContainerCnt']
        end
      end

      # 容器安全镜像病毒信息
      class ImageVirus < TencentCloud::Common::AbstractModel
        # @param Path: 路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param RiskLevel: 风险等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: String
        # @param Category: 分类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Category: String
        # @param VirusName: 病毒名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirusName: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Desc: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param Solution: 解决方案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Solution: String
        # @param FileType: 文件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileType: String
        # @param FileName: 文件路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param FileMd5: 文件md5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileMd5: String
        # @param FileSize: 大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSize: Integer
        # @param FirstScanTime: 首次发现时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstScanTime: String
        # @param LatestScanTime: 最近扫描时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestScanTime: String

        attr_accessor :Path, :RiskLevel, :Category, :VirusName, :Tags, :Desc, :Solution, :FileType, :FileName, :FileMd5, :FileSize, :FirstScanTime, :LatestScanTime
        
        def initialize(path=nil, risklevel=nil, category=nil, virusname=nil, tags=nil, desc=nil, solution=nil, filetype=nil, filename=nil, filemd5=nil, filesize=nil, firstscantime=nil, latestscantime=nil)
          @Path = path
          @RiskLevel = risklevel
          @Category = category
          @VirusName = virusname
          @Tags = tags
          @Desc = desc
          @Solution = solution
          @FileType = filetype
          @FileName = filename
          @FileMd5 = filemd5
          @FileSize = filesize
          @FirstScanTime = firstscantime
          @LatestScanTime = latestscantime
        end

        def deserialize(params)
          @Path = params['Path']
          @RiskLevel = params['RiskLevel']
          @Category = params['Category']
          @VirusName = params['VirusName']
          @Tags = params['Tags']
          @Desc = params['Desc']
          @Solution = params['Solution']
          @FileType = params['FileType']
          @FileName = params['FileName']
          @FileMd5 = params['FileMd5']
          @FileSize = params['FileSize']
          @FirstScanTime = params['FirstScanTime']
          @LatestScanTime = params['LatestScanTime']
        end
      end

      # 容器安全镜像病毒信息
      class ImageVirusInfo < TencentCloud::Common::AbstractModel
        # @param Path: 路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param RiskLevel: 风险等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: Integer
        # @param VirusName: 病毒名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirusName: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Desc: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param Solution: 修护建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Solution: String
        # @param Size: 大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Integer
        # @param FirstScanTime: 首次发现时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstScanTime: String
        # @param LatestScanTime: 最近扫描时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestScanTime: String
        # @param Md5: 文件md5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Md5: String
        # @param FileName: 文件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String

        attr_accessor :Path, :RiskLevel, :VirusName, :Tags, :Desc, :Solution, :Size, :FirstScanTime, :LatestScanTime, :Md5, :FileName
        
        def initialize(path=nil, risklevel=nil, virusname=nil, tags=nil, desc=nil, solution=nil, size=nil, firstscantime=nil, latestscantime=nil, md5=nil, filename=nil)
          @Path = path
          @RiskLevel = risklevel
          @VirusName = virusname
          @Tags = tags
          @Desc = desc
          @Solution = solution
          @Size = size
          @FirstScanTime = firstscantime
          @LatestScanTime = latestscantime
          @Md5 = md5
          @FileName = filename
        end

        def deserialize(params)
          @Path = params['Path']
          @RiskLevel = params['RiskLevel']
          @VirusName = params['VirusName']
          @Tags = params['Tags']
          @Desc = params['Desc']
          @Solution = params['Solution']
          @Size = params['Size']
          @FirstScanTime = params['FirstScanTime']
          @LatestScanTime = params['LatestScanTime']
          @Md5 = params['Md5']
          @FileName = params['FileName']
        end
      end

      # 容器安全镜像漏洞信息
      class ImageVul < TencentCloud::Common::AbstractModel
        # @param CVEID: 漏洞id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVEID: String
        # @param POCID: 观点验证程序id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type POCID: String
        # @param Name: 漏洞名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Components: 涉及组件信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Components: Array
        # @param Category: 分类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Category: String
        # @param CategoryType: 分类2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CategoryType: String
        # @param Level: 风险等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: String
        # @param Des: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Des: String
        # @param OfficialSolution: 解决方案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfficialSolution: String
        # @param Reference: 引用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reference: String
        # @param DefenseSolution: 防御方案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefenseSolution: String
        # @param SubmitTime: 提交时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubmitTime: String
        # @param CvssScore: Cvss分数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CvssScore: String
        # @param CvssVector: Cvss信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CvssVector: String
        # @param IsSuggest: 是否建议修复
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSuggest: String
        # @param FixedVersions: 修复版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FixedVersions: String
        # @param Tag: 漏洞标签:"CanBeFixed","DynamicLevelPoc","DynamicLevelExp"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param Component: 组件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Component: String
        # @param Version: 组件版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String

        attr_accessor :CVEID, :POCID, :Name, :Components, :Category, :CategoryType, :Level, :Des, :OfficialSolution, :Reference, :DefenseSolution, :SubmitTime, :CvssScore, :CvssVector, :IsSuggest, :FixedVersions, :Tag, :Component, :Version
        
        def initialize(cveid=nil, pocid=nil, name=nil, components=nil, category=nil, categorytype=nil, level=nil, des=nil, officialsolution=nil, reference=nil, defensesolution=nil, submittime=nil, cvssscore=nil, cvssvector=nil, issuggest=nil, fixedversions=nil, tag=nil, component=nil, version=nil)
          @CVEID = cveid
          @POCID = pocid
          @Name = name
          @Components = components
          @Category = category
          @CategoryType = categorytype
          @Level = level
          @Des = des
          @OfficialSolution = officialsolution
          @Reference = reference
          @DefenseSolution = defensesolution
          @SubmitTime = submittime
          @CvssScore = cvssscore
          @CvssVector = cvssvector
          @IsSuggest = issuggest
          @FixedVersions = fixedversions
          @Tag = tag
          @Component = component
          @Version = version
        end

        def deserialize(params)
          @CVEID = params['CVEID']
          @POCID = params['POCID']
          @Name = params['Name']
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              componentsinfo_tmp = ComponentsInfo.new
              componentsinfo_tmp.deserialize(i)
              @Components << componentsinfo_tmp
            end
          end
          @Category = params['Category']
          @CategoryType = params['CategoryType']
          @Level = params['Level']
          @Des = params['Des']
          @OfficialSolution = params['OfficialSolution']
          @Reference = params['Reference']
          @DefenseSolution = params['DefenseSolution']
          @SubmitTime = params['SubmitTime']
          @CvssScore = params['CvssScore']
          @CvssVector = params['CvssVector']
          @IsSuggest = params['IsSuggest']
          @FixedVersions = params['FixedVersions']
          @Tag = params['Tag']
          @Component = params['Component']
          @Version = params['Version']
        end
      end

      # 查询镜像绑定的运行时规则信息
      class ImagesBindRuleInfo < TencentCloud::Common::AbstractModel
        # @param ImageId: 镜像id
        # @type ImageId: String
        # @param ImageName: 镜像名称
        # @type ImageName: String
        # @param ContainerCnt: 关联容器数量
        # @type ContainerCnt: Integer
        # @param RuleId: 绑定规则id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: String
        # @param RuleName: 规则名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param ImageSize: 镜像大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageSize: Integer
        # @param ScanTime: 最近扫描时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanTime: String

        attr_accessor :ImageId, :ImageName, :ContainerCnt, :RuleId, :RuleName, :ImageSize, :ScanTime
        
        def initialize(imageid=nil, imagename=nil, containercnt=nil, ruleid=nil, rulename=nil, imagesize=nil, scantime=nil)
          @ImageId = imageid
          @ImageName = imagename
          @ContainerCnt = containercnt
          @RuleId = ruleid
          @RuleName = rulename
          @ImageSize = imagesize
          @ScanTime = scantime
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @ImageName = params['ImageName']
          @ContainerCnt = params['ContainerCnt']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @ImageSize = params['ImageSize']
          @ScanTime = params['ScanTime']
        end
      end

      # 容器安全镜像列表
      class ImagesInfo < TencentCloud::Common::AbstractModel
        # @param ImageID: 镜像id
        # @type ImageID: String
        # @param ImageName: 镜像名称
        # @type ImageName: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Size: 镜像大小
        # @type Size: Integer
        # @param HostCnt: 主机个数
        # @type HostCnt: Integer
        # @param ContainerCnt: 容器个数
        # @type ContainerCnt: Integer
        # @param ScanTime: 扫描时间
        # @type ScanTime: String
        # @param VulCnt: 漏洞个数
        # @type VulCnt: Integer
        # @param VirusCnt: 病毒个数
        # @type VirusCnt: Integer
        # @param RiskCnt: 敏感信息个数
        # @type RiskCnt: Integer
        # @param IsTrustImage: 是否信任镜像
        # @type IsTrustImage: Boolean
        # @param OsName: 镜像系统
        # @type OsName: String
        # @param AgentError: agent镜像扫描错误
        # @type AgentError: String
        # @param ScanError: 后端镜像扫描错误
        # @type ScanError: String
        # @param ScanStatus: 扫描状态
        # @type ScanStatus: String
        # @param ScanVirusError: 木马扫描错误信息
        # @type ScanVirusError: String
        # @param ScanVulError: 漏洞扫描错误信息
        # @type ScanVulError: String
        # @param ScanRiskError: 风险扫描错误信息
        # @type ScanRiskError: String
        # @param IsSuggest: 是否是重点关注镜像，为0不是，非0是
        # @type IsSuggest: Integer
        # @param IsAuthorized: 是否授权，1是0否
        # @type IsAuthorized: Integer

        attr_accessor :ImageID, :ImageName, :CreateTime, :Size, :HostCnt, :ContainerCnt, :ScanTime, :VulCnt, :VirusCnt, :RiskCnt, :IsTrustImage, :OsName, :AgentError, :ScanError, :ScanStatus, :ScanVirusError, :ScanVulError, :ScanRiskError, :IsSuggest, :IsAuthorized
        
        def initialize(imageid=nil, imagename=nil, createtime=nil, size=nil, hostcnt=nil, containercnt=nil, scantime=nil, vulcnt=nil, viruscnt=nil, riskcnt=nil, istrustimage=nil, osname=nil, agenterror=nil, scanerror=nil, scanstatus=nil, scanviruserror=nil, scanvulerror=nil, scanriskerror=nil, issuggest=nil, isauthorized=nil)
          @ImageID = imageid
          @ImageName = imagename
          @CreateTime = createtime
          @Size = size
          @HostCnt = hostcnt
          @ContainerCnt = containercnt
          @ScanTime = scantime
          @VulCnt = vulcnt
          @VirusCnt = viruscnt
          @RiskCnt = riskcnt
          @IsTrustImage = istrustimage
          @OsName = osname
          @AgentError = agenterror
          @ScanError = scanerror
          @ScanStatus = scanstatus
          @ScanVirusError = scanviruserror
          @ScanVulError = scanvulerror
          @ScanRiskError = scanriskerror
          @IsSuggest = issuggest
          @IsAuthorized = isauthorized
        end

        def deserialize(params)
          @ImageID = params['ImageID']
          @ImageName = params['ImageName']
          @CreateTime = params['CreateTime']
          @Size = params['Size']
          @HostCnt = params['HostCnt']
          @ContainerCnt = params['ContainerCnt']
          @ScanTime = params['ScanTime']
          @VulCnt = params['VulCnt']
          @VirusCnt = params['VirusCnt']
          @RiskCnt = params['RiskCnt']
          @IsTrustImage = params['IsTrustImage']
          @OsName = params['OsName']
          @AgentError = params['AgentError']
          @ScanError = params['ScanError']
          @ScanStatus = params['ScanStatus']
          @ScanVirusError = params['ScanVirusError']
          @ScanVulError = params['ScanVulError']
          @ScanRiskError = params['ScanRiskError']
          @IsSuggest = params['IsSuggest']
          @IsAuthorized = params['IsAuthorized']
        end
      end

      # 容器安全镜像漏洞
      class ImagesVul < TencentCloud::Common::AbstractModel
        # @param CVEID: 漏洞id
        # @type CVEID: String
        # @param Name: 漏洞名称
        # @type Name: String
        # @param Component: 组件
        # @type Component: String
        # @param Version: 版本
        # @type Version: String
        # @param Category: 分类
        # @type Category: String
        # @param CategoryType: 分类2
        # @type CategoryType: String
        # @param Level: 风险等级
        # @type Level: Integer
        # @param Des: 描述
        # @type Des: String
        # @param OfficialSolution: 解决方案
        # @type OfficialSolution: String
        # @param Reference: 引用
        # @type Reference: String
        # @param DefenseSolution: 防御方案
        # @type DefenseSolution: String
        # @param SubmitTime: 提交时间
        # @type SubmitTime: String
        # @param CVSSV3Score: CVSS V3分数
        # @type CVSSV3Score: Float
        # @param CVSSV3Desc: CVSS V3描述
        # @type CVSSV3Desc: String
        # @param IsSuggest: 是否是重点关注：true：是，false：不是
        # @type IsSuggest: Boolean
        # @param FixedVersions: 修复版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FixedVersions: String
        # @param Tag: 漏洞标签:"CanBeFixed","DynamicLevelPoc","DynamicLevelExp"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array

        attr_accessor :CVEID, :Name, :Component, :Version, :Category, :CategoryType, :Level, :Des, :OfficialSolution, :Reference, :DefenseSolution, :SubmitTime, :CVSSV3Score, :CVSSV3Desc, :IsSuggest, :FixedVersions, :Tag
        
        def initialize(cveid=nil, name=nil, component=nil, version=nil, category=nil, categorytype=nil, level=nil, des=nil, officialsolution=nil, reference=nil, defensesolution=nil, submittime=nil, cvssv3score=nil, cvssv3desc=nil, issuggest=nil, fixedversions=nil, tag=nil)
          @CVEID = cveid
          @Name = name
          @Component = component
          @Version = version
          @Category = category
          @CategoryType = categorytype
          @Level = level
          @Des = des
          @OfficialSolution = officialsolution
          @Reference = reference
          @DefenseSolution = defensesolution
          @SubmitTime = submittime
          @CVSSV3Score = cvssv3score
          @CVSSV3Desc = cvssv3desc
          @IsSuggest = issuggest
          @FixedVersions = fixedversions
          @Tag = tag
        end

        def deserialize(params)
          @CVEID = params['CVEID']
          @Name = params['Name']
          @Component = params['Component']
          @Version = params['Version']
          @Category = params['Category']
          @CategoryType = params['CategoryType']
          @Level = params['Level']
          @Des = params['Des']
          @OfficialSolution = params['OfficialSolution']
          @Reference = params['Reference']
          @DefenseSolution = params['DefenseSolution']
          @SubmitTime = params['SubmitTime']
          @CVSSV3Score = params['CVSSV3Score']
          @CVSSV3Desc = params['CVSSV3Desc']
          @IsSuggest = params['IsSuggest']
          @FixedVersions = params['FixedVersions']
          @Tag = params['Tag']
        end
      end

      # InitializeUserComplianceEnvironment请求参数结构体
      class InitializeUserComplianceEnvironmentRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # InitializeUserComplianceEnvironment返回参数结构体
      class InitializeUserComplianceEnvironmentResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAbnormalProcessRuleStatus请求参数结构体
      class ModifyAbnormalProcessRuleStatusRequest < TencentCloud::Common::AbstractModel
        # @param RuleIdSet: 策略的ids
        # @type RuleIdSet: Array
        # @param IsEnable: 策略开关，true开启，false关闭
        # @type IsEnable: Boolean

        attr_accessor :RuleIdSet, :IsEnable
        
        def initialize(ruleidset=nil, isenable=nil)
          @RuleIdSet = ruleidset
          @IsEnable = isenable
        end

        def deserialize(params)
          @RuleIdSet = params['RuleIdSet']
          @IsEnable = params['IsEnable']
        end
      end

      # ModifyAbnormalProcessRuleStatus返回参数结构体
      class ModifyAbnormalProcessRuleStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAbnormalProcessStatus请求参数结构体
      class ModifyAbnormalProcessStatusRequest < TencentCloud::Common::AbstractModel
        # @param EventIdSet: 处理事件ids
        # @type EventIdSet: Array
        # @param Status: 标记事件的状态，
        #     EVENT_DEALED:事件处理
        #     EVENT_INGNORE"：事件忽略
        #      EVENT_DEL:事件删除
        #      EVENT_ADD_WHITE:事件加白
        # @type Status: String
        # @param Remark: 事件备注
        # @type Remark: String

        attr_accessor :EventIdSet, :Status, :Remark
        
        def initialize(eventidset=nil, status=nil, remark=nil)
          @EventIdSet = eventidset
          @Status = status
          @Remark = remark
        end

        def deserialize(params)
          @EventIdSet = params['EventIdSet']
          @Status = params['Status']
          @Remark = params['Remark']
        end
      end

      # ModifyAbnormalProcessStatus返回参数结构体
      class ModifyAbnormalProcessStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAccessControlRuleStatus请求参数结构体
      class ModifyAccessControlRuleStatusRequest < TencentCloud::Common::AbstractModel
        # @param RuleIdSet: 策略的ids
        # @type RuleIdSet: Array
        # @param IsEnable: 策略开关，true:代表开启， false代表关闭
        # @type IsEnable: Boolean

        attr_accessor :RuleIdSet, :IsEnable
        
        def initialize(ruleidset=nil, isenable=nil)
          @RuleIdSet = ruleidset
          @IsEnable = isenable
        end

        def deserialize(params)
          @RuleIdSet = params['RuleIdSet']
          @IsEnable = params['IsEnable']
        end
      end

      # ModifyAccessControlRuleStatus返回参数结构体
      class ModifyAccessControlRuleStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAccessControlStatus请求参数结构体
      class ModifyAccessControlStatusRequest < TencentCloud::Common::AbstractModel
        # @param EventIdSet: 处理事件ids
        # @type EventIdSet: Array
        # @param Status: 标记事件的状态，
        # EVENT_DEALED:事件已经处理
        #      EVENT_INGNORE：事件忽略
        #      EVENT_DEL:事件删除
        #      EVENT_ADD_WHITE:事件加白
        # @type Status: String
        # @param Remark: 备注事件信息
        # @type Remark: String

        attr_accessor :EventIdSet, :Status, :Remark
        
        def initialize(eventidset=nil, status=nil, remark=nil)
          @EventIdSet = eventidset
          @Status = status
          @Remark = remark
        end

        def deserialize(params)
          @EventIdSet = params['EventIdSet']
          @Status = params['Status']
          @Remark = params['Remark']
        end
      end

      # ModifyAccessControlStatus返回参数结构体
      class ModifyAccessControlStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAssetImageRegistryScanStopOneKey请求参数结构体
      class ModifyAssetImageRegistryScanStopOneKeyRequest < TencentCloud::Common::AbstractModel
        # @param All: 是否扫描全部镜像
        # @type All: Boolean
        # @param Images: 扫描的镜像列表
        # @type Images: Array
        # @param Id: 扫描的镜像列表Id
        # @type Id: Array

        attr_accessor :All, :Images, :Id
        
        def initialize(all=nil, images=nil, id=nil)
          @All = all
          @Images = images
          @Id = id
        end

        def deserialize(params)
          @All = params['All']
          unless params['Images'].nil?
            @Images = []
            params['Images'].each do |i|
              imageinfo_tmp = ImageInfo.new
              imageinfo_tmp.deserialize(i)
              @Images << imageinfo_tmp
            end
          end
          @Id = params['Id']
        end
      end

      # ModifyAssetImageRegistryScanStopOneKey返回参数结构体
      class ModifyAssetImageRegistryScanStopOneKeyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAssetImageRegistryScanStop请求参数结构体
      class ModifyAssetImageRegistryScanStopRequest < TencentCloud::Common::AbstractModel
        # @param All: 是否扫描全部镜像
        # @type All: Boolean
        # @param Images: 扫描的镜像列表
        # @type Images: Array
        # @param Id: 扫描的镜像列表Id
        # @type Id: Array

        attr_accessor :All, :Images, :Id
        
        def initialize(all=nil, images=nil, id=nil)
          @All = all
          @Images = images
          @Id = id
        end

        def deserialize(params)
          @All = params['All']
          unless params['Images'].nil?
            @Images = []
            params['Images'].each do |i|
              imageinfo_tmp = ImageInfo.new
              imageinfo_tmp.deserialize(i)
              @Images << imageinfo_tmp
            end
          end
          @Id = params['Id']
        end
      end

      # ModifyAssetImageRegistryScanStop返回参数结构体
      class ModifyAssetImageRegistryScanStopResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAssetImageScanStop请求参数结构体
      class ModifyAssetImageScanStopRequest < TencentCloud::Common::AbstractModel
        # @param TaskID: 任务id
        # @type TaskID: String
        # @param Images: 镜像id
        # @type Images: Array

        attr_accessor :TaskID, :Images
        
        def initialize(taskid=nil, images=nil)
          @TaskID = taskid
          @Images = images
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          @Images = params['Images']
        end
      end

      # ModifyAssetImageScanStop返回参数结构体
      class ModifyAssetImageScanStopResponse < TencentCloud::Common::AbstractModel
        # @param Status: 停止状态
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

      # ModifyAsset请求参数结构体
      class ModifyAssetRequest < TencentCloud::Common::AbstractModel
        # @param All: 全部同步
        # @type All: Boolean
        # @param Hosts: 要同步的主机列表 两个参数必选一个 All优先
        # @type Hosts: Array

        attr_accessor :All, :Hosts
        
        def initialize(all=nil, hosts=nil)
          @All = all
          @Hosts = hosts
        end

        def deserialize(params)
          @All = params['All']
          @Hosts = params['Hosts']
        end
      end

      # ModifyAsset返回参数结构体
      class ModifyAssetResponse < TencentCloud::Common::AbstractModel
        # @param Status: 同步任务发送结果
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

      # ModifyCompliancePeriodTask请求参数结构体
      class ModifyCompliancePeriodTaskRequest < TencentCloud::Common::AbstractModel
        # @param PeriodTaskId: 要修改的定时任务的ID，由DescribeCompliancePeriodTaskList接口返回。
        # @type PeriodTaskId: Integer
        # @param PeriodRule: 定时任务的周期规则。不填时，不修改。
        # @type PeriodRule: :class:`Tencentcloud::Tcss.v20201101.models.CompliancePeriodTaskRule`
        # @param StandardSettings: 设置合规标准。不填时，不修改。
        # @type StandardSettings: Array

        attr_accessor :PeriodTaskId, :PeriodRule, :StandardSettings
        
        def initialize(periodtaskid=nil, periodrule=nil, standardsettings=nil)
          @PeriodTaskId = periodtaskid
          @PeriodRule = periodrule
          @StandardSettings = standardsettings
        end

        def deserialize(params)
          @PeriodTaskId = params['PeriodTaskId']
          unless params['PeriodRule'].nil?
            @PeriodRule = CompliancePeriodTaskRule.new
            @PeriodRule.deserialize(params['PeriodRule'])
          end
          unless params['StandardSettings'].nil?
            @StandardSettings = []
            params['StandardSettings'].each do |i|
              compliancebenchmarkstandardenable_tmp = ComplianceBenchmarkStandardEnable.new
              compliancebenchmarkstandardenable_tmp.deserialize(i)
              @StandardSettings << compliancebenchmarkstandardenable_tmp
            end
          end
        end
      end

      # ModifyCompliancePeriodTask返回参数结构体
      class ModifyCompliancePeriodTaskResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEscapeEventStatus请求参数结构体
      class ModifyEscapeEventStatusRequest < TencentCloud::Common::AbstractModel
        # @param EventIdSet: 处理事件ids
        # @type EventIdSet: Array
        # @param Status: 标记事件的状态
        #    EVENT_DEALED:事件已经处理
        #      EVENT_INGNORE：事件忽略
        #      EVENT_DEL:事件删除
        # @type Status: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :EventIdSet, :Status, :Remark
        
        def initialize(eventidset=nil, status=nil, remark=nil)
          @EventIdSet = eventidset
          @Status = status
          @Remark = remark
        end

        def deserialize(params)
          @EventIdSet = params['EventIdSet']
          @Status = params['Status']
          @Remark = params['Remark']
        end
      end

      # ModifyEscapeEventStatus返回参数结构体
      class ModifyEscapeEventStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEscapeRule请求参数结构体
      class ModifyEscapeRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleSet: 需要修改的数组
        # @type RuleSet: Array

        attr_accessor :RuleSet
        
        def initialize(ruleset=nil)
          @RuleSet = ruleset
        end

        def deserialize(params)
          unless params['RuleSet'].nil?
            @RuleSet = []
            params['RuleSet'].each do |i|
              escaperuleenabled_tmp = EscapeRuleEnabled.new
              escaperuleenabled_tmp.deserialize(i)
              @RuleSet << escaperuleenabled_tmp
            end
          end
        end
      end

      # ModifyEscapeRule返回参数结构体
      class ModifyEscapeRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyReverseShellStatus请求参数结构体
      class ModifyReverseShellStatusRequest < TencentCloud::Common::AbstractModel
        # @param EventIdSet: 处理事件ids
        # @type EventIdSet: Array
        # @param Status: 标记事件的状态，
        #     EVENT_DEALED:事件处理
        #     EVENT_INGNORE"：事件忽略
        #      EVENT_DEL:事件删除
        #      EVENT_ADD_WHITE:事件加白
        # @type Status: String
        # @param Remark: 事件备注
        # @type Remark: String

        attr_accessor :EventIdSet, :Status, :Remark
        
        def initialize(eventidset=nil, status=nil, remark=nil)
          @EventIdSet = eventidset
          @Status = status
          @Remark = remark
        end

        def deserialize(params)
          @EventIdSet = params['EventIdSet']
          @Status = params['Status']
          @Remark = params['Remark']
        end
      end

      # ModifyReverseShellStatus返回参数结构体
      class ModifyReverseShellStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRiskSyscallStatus请求参数结构体
      class ModifyRiskSyscallStatusRequest < TencentCloud::Common::AbstractModel
        # @param EventIdSet: 处理事件ids
        # @type EventIdSet: Array
        # @param Status: 标记事件的状态，
        #     EVENT_DEALED:事件处理
        #     EVENT_INGNORE"：事件忽略
        #      EVENT_DEL:事件删除
        #      EVENT_ADD_WHITE:事件加白
        # @type Status: String
        # @param Remark: 事件备注
        # @type Remark: String

        attr_accessor :EventIdSet, :Status, :Remark
        
        def initialize(eventidset=nil, status=nil, remark=nil)
          @EventIdSet = eventidset
          @Status = status
          @Remark = remark
        end

        def deserialize(params)
          @EventIdSet = params['EventIdSet']
          @Status = params['Status']
          @Remark = params['Remark']
        end
      end

      # ModifyRiskSyscallStatus返回参数结构体
      class ModifyRiskSyscallStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVirusFileStatus请求参数结构体
      class ModifyVirusFileStatusRequest < TencentCloud::Common::AbstractModel
        # @param EventIdSet: 处理事件id
        # @type EventIdSet: Array
        # @param Status: 标记事件的状态，
        #     EVENT_DEALED:事件处理
        #     EVENT_INGNORE"：事件忽略
        #      EVENT_DEL:事件删除
        #      EVENT_ADD_WHITE:事件加白
        #      EVENT_PENDING: 事件待处理
        # @type Status: String
        # @param Remark: 事件备注
        # @type Remark: String

        attr_accessor :EventIdSet, :Status, :Remark
        
        def initialize(eventidset=nil, status=nil, remark=nil)
          @EventIdSet = eventidset
          @Status = status
          @Remark = remark
        end

        def deserialize(params)
          @EventIdSet = params['EventIdSet']
          @Status = params['Status']
          @Remark = params['Remark']
        end
      end

      # ModifyVirusFileStatus返回参数结构体
      class ModifyVirusFileStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVirusMonitorSetting请求参数结构体
      class ModifyVirusMonitorSettingRequest < TencentCloud::Common::AbstractModel
        # @param EnableScan: 是否开启定期扫描
        # @type EnableScan: Boolean
        # @param ScanPathAll: 扫描全部路径
        # @type ScanPathAll: Boolean
        # @param ScanPathType: 当ScanPathAll为true 生效 0扫描以下路径 1、扫描除以下路径
        # @type ScanPathType: Integer
        # @param ScanPath: 自选排除或扫描的地址
        # @type ScanPath: Array

        attr_accessor :EnableScan, :ScanPathAll, :ScanPathType, :ScanPath
        
        def initialize(enablescan=nil, scanpathall=nil, scanpathtype=nil, scanpath=nil)
          @EnableScan = enablescan
          @ScanPathAll = scanpathall
          @ScanPathType = scanpathtype
          @ScanPath = scanpath
        end

        def deserialize(params)
          @EnableScan = params['EnableScan']
          @ScanPathAll = params['ScanPathAll']
          @ScanPathType = params['ScanPathType']
          @ScanPath = params['ScanPath']
        end
      end

      # ModifyVirusMonitorSetting返回参数结构体
      class ModifyVirusMonitorSettingResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVirusScanSetting请求参数结构体
      class ModifyVirusScanSettingRequest < TencentCloud::Common::AbstractModel
        # @param EnableScan: 是否开启定期扫描
        # @type EnableScan: Boolean
        # @param Cycle: 检测周期每隔多少天
        # @type Cycle: Integer
        # @param BeginScanAt: 扫描开始时间
        # @type BeginScanAt: String
        # @param ScanPathAll: 扫描全部路径
        # @type ScanPathAll: Boolean
        # @param ScanPathType: 当ScanPathAll为true 生效 0扫描以下路径 1、扫描除以下路径
        # @type ScanPathType: Integer
        # @param Timeout: 超时时长
        # @type Timeout: Integer
        # @param ScanRangeType: 扫描范围0容器1主机节点
        # @type ScanRangeType: Integer
        # @param ScanRangeAll: true 全选，false 自选
        # @type ScanRangeAll: Boolean
        # @param ScanIds: 自选扫描范围的容器id或者主机id 根据ScanRangeType决定
        # @type ScanIds: Array
        # @param ScanPath: 扫描路径
        # @type ScanPath: Array

        attr_accessor :EnableScan, :Cycle, :BeginScanAt, :ScanPathAll, :ScanPathType, :Timeout, :ScanRangeType, :ScanRangeAll, :ScanIds, :ScanPath
        
        def initialize(enablescan=nil, cycle=nil, beginscanat=nil, scanpathall=nil, scanpathtype=nil, timeout=nil, scanrangetype=nil, scanrangeall=nil, scanids=nil, scanpath=nil)
          @EnableScan = enablescan
          @Cycle = cycle
          @BeginScanAt = beginscanat
          @ScanPathAll = scanpathall
          @ScanPathType = scanpathtype
          @Timeout = timeout
          @ScanRangeType = scanrangetype
          @ScanRangeAll = scanrangeall
          @ScanIds = scanids
          @ScanPath = scanpath
        end

        def deserialize(params)
          @EnableScan = params['EnableScan']
          @Cycle = params['Cycle']
          @BeginScanAt = params['BeginScanAt']
          @ScanPathAll = params['ScanPathAll']
          @ScanPathType = params['ScanPathType']
          @Timeout = params['Timeout']
          @ScanRangeType = params['ScanRangeType']
          @ScanRangeAll = params['ScanRangeAll']
          @ScanIds = params['ScanIds']
          @ScanPath = params['ScanPath']
        end
      end

      # ModifyVirusScanSetting返回参数结构体
      class ModifyVirusScanSettingResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVirusScanTimeoutSetting请求参数结构体
      class ModifyVirusScanTimeoutSettingRequest < TencentCloud::Common::AbstractModel
        # @param Timeout: 超时时长单位小时
        # @type Timeout: Integer
        # @param ScanType: 设置类型0一键检测，1定时检测
        # @type ScanType: Integer

        attr_accessor :Timeout, :ScanType
        
        def initialize(timeout=nil, scantype=nil)
          @Timeout = timeout
          @ScanType = scantype
        end

        def deserialize(params)
          @Timeout = params['Timeout']
          @ScanType = params['ScanType']
        end
      end

      # ModifyVirusScanTimeoutSetting返回参数结构体
      class ModifyVirusScanTimeoutSettingResponse < TencentCloud::Common::AbstractModel
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

      # 容器安全端口信息列表
      class PortInfo < TencentCloud::Common::AbstractModel
        # @param Type: 类型
        # @type Type: String
        # @param PublicIP: 对外ip
        # @type PublicIP: String
        # @param PublicPort: 主机端口
        # @type PublicPort: Integer
        # @param ContainerPort: 容器端口
        # @type ContainerPort: Integer
        # @param ContainerPID: 容器Pid
        # @type ContainerPID: Integer
        # @param ContainerName: 容器名
        # @type ContainerName: String
        # @param HostID: 主机id
        # @type HostID: String
        # @param HostIP: 主机ip
        # @type HostIP: String
        # @param ProcessName: 进程名称
        # @type ProcessName: String
        # @param ListenContainer: 容器内监听地址
        # @type ListenContainer: String
        # @param ListenHost: 容器外监听地址
        # @type ListenHost: String
        # @param RunAs: 运行账号
        # @type RunAs: String
        # @param HostName: 主机名称
        # @type HostName: String
        # @param PublicIp: 外网ip
        # @type PublicIp: String

        attr_accessor :Type, :PublicIP, :PublicPort, :ContainerPort, :ContainerPID, :ContainerName, :HostID, :HostIP, :ProcessName, :ListenContainer, :ListenHost, :RunAs, :HostName, :PublicIp
        
        def initialize(type=nil, publicip=nil, publicport=nil, containerport=nil, containerpid=nil, containername=nil, hostid=nil, hostip=nil, processname=nil, listencontainer=nil, listenhost=nil, runas=nil, hostname=nil, publicip=nil)
          @Type = type
          @PublicIP = publicip
          @PublicPort = publicport
          @ContainerPort = containerport
          @ContainerPID = containerpid
          @ContainerName = containername
          @HostID = hostid
          @HostIP = hostip
          @ProcessName = processname
          @ListenContainer = listencontainer
          @ListenHost = listenhost
          @RunAs = runas
          @HostName = hostname
          @PublicIp = publicip
        end

        def deserialize(params)
          @Type = params['Type']
          @PublicIP = params['PublicIP']
          @PublicPort = params['PublicPort']
          @ContainerPort = params['ContainerPort']
          @ContainerPID = params['ContainerPID']
          @ContainerName = params['ContainerName']
          @HostID = params['HostID']
          @HostIP = params['HostIP']
          @ProcessName = params['ProcessName']
          @ListenContainer = params['ListenContainer']
          @ListenHost = params['ListenHost']
          @RunAs = params['RunAs']
          @HostName = params['HostName']
          @PublicIp = params['PublicIp']
        end
      end

      # 运行是安全详情，进程基础信息
      class ProcessDetailBaseInfo < TencentCloud::Common::AbstractModel
        # @param ProcessName: 进程名称
        # @type ProcessName: String
        # @param ProcessId: 进程pid
        # @type ProcessId: Integer
        # @param ProcessStartUser: 进程启动用户
        # @type ProcessStartUser: String
        # @param ProcessUserGroup: 进程用户组
        # @type ProcessUserGroup: String
        # @param ProcessPath: 进程路径
        # @type ProcessPath: String
        # @param ProcessParam: 进程命令行参数
        # @type ProcessParam: String

        attr_accessor :ProcessName, :ProcessId, :ProcessStartUser, :ProcessUserGroup, :ProcessPath, :ProcessParam
        
        def initialize(processname=nil, processid=nil, processstartuser=nil, processusergroup=nil, processpath=nil, processparam=nil)
          @ProcessName = processname
          @ProcessId = processid
          @ProcessStartUser = processstartuser
          @ProcessUserGroup = processusergroup
          @ProcessPath = processpath
          @ProcessParam = processparam
        end

        def deserialize(params)
          @ProcessName = params['ProcessName']
          @ProcessId = params['ProcessId']
          @ProcessStartUser = params['ProcessStartUser']
          @ProcessUserGroup = params['ProcessUserGroup']
          @ProcessPath = params['ProcessPath']
          @ProcessParam = params['ProcessParam']
        end
      end

      # 运行是安全详情，进程信息
      class ProcessDetailInfo < TencentCloud::Common::AbstractModel
        # @param ProcessName: 进程名称
        # @type ProcessName: String
        # @param ProcessAuthority: 进程权限
        # @type ProcessAuthority: String
        # @param ProcessId: 进程pid
        # @type ProcessId: Integer
        # @param ProcessStartUser: 进程启动用户
        # @type ProcessStartUser: String
        # @param ProcessUserGroup: 进程用户组
        # @type ProcessUserGroup: String
        # @param ProcessPath: 进程路径
        # @type ProcessPath: String
        # @param ProcessTree: 进程树
        # @type ProcessTree: String
        # @param ProcessMd5: 进程md5
        # @type ProcessMd5: String
        # @param ProcessParam: 进程命令行参数
        # @type ProcessParam: String

        attr_accessor :ProcessName, :ProcessAuthority, :ProcessId, :ProcessStartUser, :ProcessUserGroup, :ProcessPath, :ProcessTree, :ProcessMd5, :ProcessParam
        
        def initialize(processname=nil, processauthority=nil, processid=nil, processstartuser=nil, processusergroup=nil, processpath=nil, processtree=nil, processmd5=nil, processparam=nil)
          @ProcessName = processname
          @ProcessAuthority = processauthority
          @ProcessId = processid
          @ProcessStartUser = processstartuser
          @ProcessUserGroup = processusergroup
          @ProcessPath = processpath
          @ProcessTree = processtree
          @ProcessMd5 = processmd5
          @ProcessParam = processparam
        end

        def deserialize(params)
          @ProcessName = params['ProcessName']
          @ProcessAuthority = params['ProcessAuthority']
          @ProcessId = params['ProcessId']
          @ProcessStartUser = params['ProcessStartUser']
          @ProcessUserGroup = params['ProcessUserGroup']
          @ProcessPath = params['ProcessPath']
          @ProcessTree = params['ProcessTree']
          @ProcessMd5 = params['ProcessMd5']
          @ProcessParam = params['ProcessParam']
        end
      end

      # 容器安全进程列表
      class ProcessInfo < TencentCloud::Common::AbstractModel
        # @param StartTime: 进程启动时间
        # @type StartTime: String
        # @param RunAs: 运行用户
        # @type RunAs: String
        # @param CmdLine: 命令行参数
        # @type CmdLine: String
        # @param Exe: Exe路径
        # @type Exe: String
        # @param PID: 主机PID
        # @type PID: Integer
        # @param ContainerPID: 容器内pid
        # @type ContainerPID: Integer
        # @param ContainerName: 容器名称
        # @type ContainerName: String
        # @param HostID: 主机id
        # @type HostID: String
        # @param HostIP: 主机ip
        # @type HostIP: String
        # @param ProcessName: 进程名称
        # @type ProcessName: String
        # @param HostName: 主机名称
        # @type HostName: String
        # @param PublicIp: 外网ip
        # @type PublicIp: String

        attr_accessor :StartTime, :RunAs, :CmdLine, :Exe, :PID, :ContainerPID, :ContainerName, :HostID, :HostIP, :ProcessName, :HostName, :PublicIp
        
        def initialize(starttime=nil, runas=nil, cmdline=nil, exe=nil, pid=nil, containerpid=nil, containername=nil, hostid=nil, hostip=nil, processname=nil, hostname=nil, publicip=nil)
          @StartTime = starttime
          @RunAs = runas
          @CmdLine = cmdline
          @Exe = exe
          @PID = pid
          @ContainerPID = containerpid
          @ContainerName = containername
          @HostID = hostid
          @HostIP = hostip
          @ProcessName = processname
          @HostName = hostname
          @PublicIp = publicip
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @RunAs = params['RunAs']
          @CmdLine = params['CmdLine']
          @Exe = params['Exe']
          @PID = params['PID']
          @ContainerPID = params['ContainerPID']
          @ContainerName = params['ContainerName']
          @HostID = params['HostID']
          @HostIP = params['HostIP']
          @ProcessName = params['ProcessName']
          @HostName = params['HostName']
          @PublicIp = params['PublicIp']
        end
      end

      # RemoveAssetImageRegistryRegistryDetail请求参数结构体
      class RemoveAssetImageRegistryRegistryDetailRequest < TencentCloud::Common::AbstractModel
        # @param RegistryId: 仓库唯一id
        # @type RegistryId: Integer

        attr_accessor :RegistryId
        
        def initialize(registryid=nil)
          @RegistryId = registryid
        end

        def deserialize(params)
          @RegistryId = params['RegistryId']
        end
      end

      # RemoveAssetImageRegistryRegistryDetail返回参数结构体
      class RemoveAssetImageRegistryRegistryDetailResponse < TencentCloud::Common::AbstractModel
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

      # RenewImageAuthorizeState请求参数结构体
      class RenewImageAuthorizeStateRequest < TencentCloud::Common::AbstractModel
        # @param AllImages: 是否全部未授权镜像
        # @type AllImages: Boolean
        # @param ImageIds: 镜像ids
        # @type ImageIds: Array

        attr_accessor :AllImages, :ImageIds
        
        def initialize(allimages=nil, imageids=nil)
          @AllImages = allimages
          @ImageIds = imageids
        end

        def deserialize(params)
          @AllImages = params['AllImages']
          @ImageIds = params['ImageIds']
        end
      end

      # RenewImageAuthorizeState返回参数结构体
      class RenewImageAuthorizeStateResponse < TencentCloud::Common::AbstractModel
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

      # 运行时容器反弹shell事件描述信息
      class ReverseShellEventDescription < TencentCloud::Common::AbstractModel
        # @param Description: 描述信息
        # @type Description: String
        # @param Solution: 解决方案
        # @type Solution: String
        # @param Remark: 事件备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param DstAddress: 目标地址
        # @type DstAddress: String

        attr_accessor :Description, :Solution, :Remark, :DstAddress
        
        def initialize(description=nil, solution=nil, remark=nil, dstaddress=nil)
          @Description = description
          @Solution = solution
          @Remark = remark
          @DstAddress = dstaddress
        end

        def deserialize(params)
          @Description = params['Description']
          @Solution = params['Solution']
          @Remark = params['Remark']
          @DstAddress = params['DstAddress']
        end
      end

      # 容器安全运行时高危系统调用信息
      class ReverseShellEventInfo < TencentCloud::Common::AbstractModel
        # @param ProcessName: 进程名称
        # @type ProcessName: String
        # @param ProcessPath: 进程路径
        # @type ProcessPath: String
        # @param ImageId: 镜像id
        # @type ImageId: String
        # @param ContainerId: 容器id
        # @type ContainerId: String
        # @param ImageName: 镜像名
        # @type ImageName: String
        # @param ContainerName: 容器名
        # @type ContainerName: String
        # @param FoundTime: 生成时间
        # @type FoundTime: String
        # @param Solution: 事件解决方案
        # @type Solution: String
        # @param Description: 事件详细描述
        # @type Description: String
        # @param Status: 状态，EVENT_UNDEAL:事件未处理
        #     EVENT_DEALED:事件已经处理
        #     EVENT_INGNORE：事件已经忽略
        #     EVENT_ADD_WHITE：时间已经加白
        # @type Status: String
        # @param EventId: 事件id
        # @type EventId: String
        # @param Remark: 备注
        # @type Remark: String
        # @param PProcessName: 父进程名
        # @type PProcessName: String
        # @param EventCount: 事件数量
        # @type EventCount: Integer
        # @param LatestFoundTime: 最近生成时间
        # @type LatestFoundTime: String
        # @param DstAddress: 目标地址
        # @type DstAddress: String

        attr_accessor :ProcessName, :ProcessPath, :ImageId, :ContainerId, :ImageName, :ContainerName, :FoundTime, :Solution, :Description, :Status, :EventId, :Remark, :PProcessName, :EventCount, :LatestFoundTime, :DstAddress
        
        def initialize(processname=nil, processpath=nil, imageid=nil, containerid=nil, imagename=nil, containername=nil, foundtime=nil, solution=nil, description=nil, status=nil, eventid=nil, remark=nil, pprocessname=nil, eventcount=nil, latestfoundtime=nil, dstaddress=nil)
          @ProcessName = processname
          @ProcessPath = processpath
          @ImageId = imageid
          @ContainerId = containerid
          @ImageName = imagename
          @ContainerName = containername
          @FoundTime = foundtime
          @Solution = solution
          @Description = description
          @Status = status
          @EventId = eventid
          @Remark = remark
          @PProcessName = pprocessname
          @EventCount = eventcount
          @LatestFoundTime = latestfoundtime
          @DstAddress = dstaddress
        end

        def deserialize(params)
          @ProcessName = params['ProcessName']
          @ProcessPath = params['ProcessPath']
          @ImageId = params['ImageId']
          @ContainerId = params['ContainerId']
          @ImageName = params['ImageName']
          @ContainerName = params['ContainerName']
          @FoundTime = params['FoundTime']
          @Solution = params['Solution']
          @Description = params['Description']
          @Status = params['Status']
          @EventId = params['EventId']
          @Remark = params['Remark']
          @PProcessName = params['PProcessName']
          @EventCount = params['EventCount']
          @LatestFoundTime = params['LatestFoundTime']
          @DstAddress = params['DstAddress']
        end
      end

      # 反弹shell白名单信息
      class ReverseShellWhiteListBaseInfo < TencentCloud::Common::AbstractModel
        # @param Id: 白名单id
        # @type Id: String
        # @param ImageCount: 镜像数量
        # @type ImageCount: Integer
        # @param ProcessName: 连接进程名字
        # @type ProcessName: String
        # @param DstIp: 目标地址ip
        # @type DstIp: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param DstPort: 目标端口
        # @type DstPort: String
        # @param IsGlobal: 是否是全局白名单，true全局
        # @type IsGlobal: Boolean
        # @param ImageIds: 镜像id数组，为空代表全部
        # @type ImageIds: Array

        attr_accessor :Id, :ImageCount, :ProcessName, :DstIp, :CreateTime, :UpdateTime, :DstPort, :IsGlobal, :ImageIds
        
        def initialize(id=nil, imagecount=nil, processname=nil, dstip=nil, createtime=nil, updatetime=nil, dstport=nil, isglobal=nil, imageids=nil)
          @Id = id
          @ImageCount = imagecount
          @ProcessName = processname
          @DstIp = dstip
          @CreateTime = createtime
          @UpdateTime = updatetime
          @DstPort = dstport
          @IsGlobal = isglobal
          @ImageIds = imageids
        end

        def deserialize(params)
          @Id = params['Id']
          @ImageCount = params['ImageCount']
          @ProcessName = params['ProcessName']
          @DstIp = params['DstIp']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @DstPort = params['DstPort']
          @IsGlobal = params['IsGlobal']
          @ImageIds = params['ImageIds']
        end
      end

      # 反弹shell白名单信息
      class ReverseShellWhiteListInfo < TencentCloud::Common::AbstractModel
        # @param DstIp: 目标IP
        # @type DstIp: String
        # @param DstPort: 目标端口
        # @type DstPort: String
        # @param ProcessName: 目标进程
        # @type ProcessName: String
        # @param ImageIds: 镜像id数组，为空代表全部
        # @type ImageIds: Array
        # @param Id: 白名单id，如果新建则id为空
        # @type Id: String

        attr_accessor :DstIp, :DstPort, :ProcessName, :ImageIds, :Id
        
        def initialize(dstip=nil, dstport=nil, processname=nil, imageids=nil, id=nil)
          @DstIp = dstip
          @DstPort = dstport
          @ProcessName = processname
          @ImageIds = imageids
          @Id = id
        end

        def deserialize(params)
          @DstIp = params['DstIp']
          @DstPort = params['DstPort']
          @ProcessName = params['ProcessName']
          @ImageIds = params['ImageIds']
          @Id = params['Id']
        end
      end

      # 运行时容器高危系统调用事件描述信息
      class RiskSyscallEventDescription < TencentCloud::Common::AbstractModel
        # @param Description: 描述信息
        # @type Description: String
        # @param Solution: 解决方案
        # @type Solution: String
        # @param Remark: 事件备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param SyscallName: 系统调用名称
        # @type SyscallName: String

        attr_accessor :Description, :Solution, :Remark, :SyscallName
        
        def initialize(description=nil, solution=nil, remark=nil, syscallname=nil)
          @Description = description
          @Solution = solution
          @Remark = remark
          @SyscallName = syscallname
        end

        def deserialize(params)
          @Description = params['Description']
          @Solution = params['Solution']
          @Remark = params['Remark']
          @SyscallName = params['SyscallName']
        end
      end

      # 容器安全运行时高危系统调用信息
      class RiskSyscallEventInfo < TencentCloud::Common::AbstractModel
        # @param ProcessName: 进程名称
        # @type ProcessName: String
        # @param ProcessPath: 进程路径
        # @type ProcessPath: String
        # @param ImageId: 镜像id
        # @type ImageId: String
        # @param ContainerId: 容器id
        # @type ContainerId: String
        # @param ImageName: 镜像名
        # @type ImageName: String
        # @param ContainerName: 容器名
        # @type ContainerName: String
        # @param FoundTime: 生成时间
        # @type FoundTime: String
        # @param Solution: 事件解决方案
        # @type Solution: String
        # @param Description: 事件详细描述
        # @type Description: String
        # @param SyscallName: 系统调用名称
        # @type SyscallName: String
        # @param Status: 状态，EVENT_UNDEAL:事件未处理
        #     EVENT_DEALED:事件已经处理
        #     EVENT_INGNORE：事件已经忽略
        #     EVENT_ADD_WHITE：时间已经加白
        # @type Status: String
        # @param EventId: 事件id
        # @type EventId: String
        # @param NodeName: 节点名称
        # @type NodeName: String
        # @param PodName: pod(实例)的名字
        # @type PodName: String
        # @param Remark: 备注
        # @type Remark: String
        # @param RuleExist: 系统监控名称是否存在
        # @type RuleExist: Boolean
        # @param EventCount: 事件数量
        # @type EventCount: Integer
        # @param LatestFoundTime: 最近生成时间
        # @type LatestFoundTime: String

        attr_accessor :ProcessName, :ProcessPath, :ImageId, :ContainerId, :ImageName, :ContainerName, :FoundTime, :Solution, :Description, :SyscallName, :Status, :EventId, :NodeName, :PodName, :Remark, :RuleExist, :EventCount, :LatestFoundTime
        
        def initialize(processname=nil, processpath=nil, imageid=nil, containerid=nil, imagename=nil, containername=nil, foundtime=nil, solution=nil, description=nil, syscallname=nil, status=nil, eventid=nil, nodename=nil, podname=nil, remark=nil, ruleexist=nil, eventcount=nil, latestfoundtime=nil)
          @ProcessName = processname
          @ProcessPath = processpath
          @ImageId = imageid
          @ContainerId = containerid
          @ImageName = imagename
          @ContainerName = containername
          @FoundTime = foundtime
          @Solution = solution
          @Description = description
          @SyscallName = syscallname
          @Status = status
          @EventId = eventid
          @NodeName = nodename
          @PodName = podname
          @Remark = remark
          @RuleExist = ruleexist
          @EventCount = eventcount
          @LatestFoundTime = latestfoundtime
        end

        def deserialize(params)
          @ProcessName = params['ProcessName']
          @ProcessPath = params['ProcessPath']
          @ImageId = params['ImageId']
          @ContainerId = params['ContainerId']
          @ImageName = params['ImageName']
          @ContainerName = params['ContainerName']
          @FoundTime = params['FoundTime']
          @Solution = params['Solution']
          @Description = params['Description']
          @SyscallName = params['SyscallName']
          @Status = params['Status']
          @EventId = params['EventId']
          @NodeName = params['NodeName']
          @PodName = params['PodName']
          @Remark = params['Remark']
          @RuleExist = params['RuleExist']
          @EventCount = params['EventCount']
          @LatestFoundTime = params['LatestFoundTime']
        end
      end

      # 高危系统调用白名单信息
      class RiskSyscallWhiteListBaseInfo < TencentCloud::Common::AbstractModel
        # @param Id: 白名单id
        # @type Id: String
        # @param ImageCount: 镜像数量
        # @type ImageCount: Integer
        # @param ProcessPath: 连接进程路径
        # @type ProcessPath: String
        # @param SyscallNames: 系统调用名称列表
        # @type SyscallNames: Array
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param IsGlobal: 是否是全局白名单，true全局
        # @type IsGlobal: Boolean
        # @param ImageIds: 镜像id数组
        # @type ImageIds: Array

        attr_accessor :Id, :ImageCount, :ProcessPath, :SyscallNames, :CreateTime, :UpdateTime, :IsGlobal, :ImageIds
        
        def initialize(id=nil, imagecount=nil, processpath=nil, syscallnames=nil, createtime=nil, updatetime=nil, isglobal=nil, imageids=nil)
          @Id = id
          @ImageCount = imagecount
          @ProcessPath = processpath
          @SyscallNames = syscallnames
          @CreateTime = createtime
          @UpdateTime = updatetime
          @IsGlobal = isglobal
          @ImageIds = imageids
        end

        def deserialize(params)
          @Id = params['Id']
          @ImageCount = params['ImageCount']
          @ProcessPath = params['ProcessPath']
          @SyscallNames = params['SyscallNames']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @IsGlobal = params['IsGlobal']
          @ImageIds = params['ImageIds']
        end
      end

      # 高危系统调用白名单信息
      class RiskSyscallWhiteListInfo < TencentCloud::Common::AbstractModel
        # @param ImageIds: 镜像id数组，为空代表全部
        # @type ImageIds: Array
        # @param SyscallNames: 系统调用名称，通过DescribeRiskSyscallNames接口获取枚举列表
        # @type SyscallNames: Array
        # @param ProcessPath: 目标进程
        # @type ProcessPath: String
        # @param Id: 白名单id，如果新建则id为空
        # @type Id: String

        attr_accessor :ImageIds, :SyscallNames, :ProcessPath, :Id
        
        def initialize(imageids=nil, syscallnames=nil, processpath=nil, id=nil)
          @ImageIds = imageids
          @SyscallNames = syscallnames
          @ProcessPath = processpath
          @Id = id
        end

        def deserialize(params)
          @ImageIds = params['ImageIds']
          @SyscallNames = params['SyscallNames']
          @ProcessPath = params['ProcessPath']
          @Id = params['Id']
        end
      end

      # 运行时安全，策略基本信息
      class RuleBaseInfo < TencentCloud::Common::AbstractModel
        # @param IsDefault: true: 默认策略，false:自定义策略
        # @type IsDefault: Boolean
        # @param EffectImageCount: 策略生效镜像数量
        # @type EffectImageCount: Integer
        # @param RuleId: 策略Id
        # @type RuleId: String
        # @param UpdateTime: 策略更新时间, 存在为空的情况
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param RuleName: 策略名字
        # @type RuleName: String
        # @param EditUserName: 编辑用户名称
        # @type EditUserName: String
        # @param IsEnable: true: 策略启用，false：策略禁用
        # @type IsEnable: Boolean

        attr_accessor :IsDefault, :EffectImageCount, :RuleId, :UpdateTime, :RuleName, :EditUserName, :IsEnable
        
        def initialize(isdefault=nil, effectimagecount=nil, ruleid=nil, updatetime=nil, rulename=nil, editusername=nil, isenable=nil)
          @IsDefault = isdefault
          @EffectImageCount = effectimagecount
          @RuleId = ruleid
          @UpdateTime = updatetime
          @RuleName = rulename
          @EditUserName = editusername
          @IsEnable = isenable
        end

        def deserialize(params)
          @IsDefault = params['IsDefault']
          @EffectImageCount = params['EffectImageCount']
          @RuleId = params['RuleId']
          @UpdateTime = params['UpdateTime']
          @RuleName = params['RuleName']
          @EditUserName = params['EditUserName']
          @IsEnable = params['IsEnable']
        end
      end

      # 运行时安全事件基本信息
      class RunTimeEventBaseInfo < TencentCloud::Common::AbstractModel
        # @param EventId: 事件唯一ID
        # @type EventId: String
        # @param FoundTime: 事件发现时间
        # @type FoundTime: String
        # @param ContainerId: 容器id
        # @type ContainerId: String
        # @param ContainerName: 容器名称
        # @type ContainerName: String
        # @param ImageId: 镜像id
        # @type ImageId: String
        # @param ImageName: 镜像名称
        # @type ImageName: String
        # @param NodeName: 节点名称
        # @type NodeName: String
        # @param PodName: Pod名称
        # @type PodName: String
        # @param Status: 状态， “EVENT_UNDEAL”:事件未处理
        #     "EVENT_DEALED":事件已经处理
        #     "EVENT_INGNORE"：事件已经忽略
        # @type Status: String
        # @param EventName: 事件名称：
        # 宿主机文件访问逃逸、
        # Syscall逃逸、
        # MountNamespace逃逸、
        # 程序提权逃逸、
        # 特权容器启动逃逸、
        # 敏感路径挂载
        # 恶意进程启动
        # 文件篡改
        # @type EventName: String
        # @param EventType: 事件类型
        #    ESCAPE_HOST_ACESS_FILE:宿主机文件访问逃逸
        #    ESCAPE_MOUNT_NAMESPACE:MountNamespace逃逸
        #    ESCAPE_PRIVILEDGE:程序提权逃逸
        #    ESCAPE_PRIVILEDGE_CONTAINER_START:特权容器启动逃逸
        #    ESCAPE_MOUNT_SENSITIVE_PTAH:敏感路径挂载
        #    ESCAPE_SYSCALL:Syscall逃逸
        # @type EventType: String
        # @param EventCount: 事件数量
        # @type EventCount: Integer
        # @param LatestFoundTime: 最近生成时间
        # @type LatestFoundTime: String
        # @param HostIP: 内网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostIP: String
        # @param ClientIP: 外网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIP: String

        attr_accessor :EventId, :FoundTime, :ContainerId, :ContainerName, :ImageId, :ImageName, :NodeName, :PodName, :Status, :EventName, :EventType, :EventCount, :LatestFoundTime, :HostIP, :ClientIP
        
        def initialize(eventid=nil, foundtime=nil, containerid=nil, containername=nil, imageid=nil, imagename=nil, nodename=nil, podname=nil, status=nil, eventname=nil, eventtype=nil, eventcount=nil, latestfoundtime=nil, hostip=nil, clientip=nil)
          @EventId = eventid
          @FoundTime = foundtime
          @ContainerId = containerid
          @ContainerName = containername
          @ImageId = imageid
          @ImageName = imagename
          @NodeName = nodename
          @PodName = podname
          @Status = status
          @EventName = eventname
          @EventType = eventtype
          @EventCount = eventcount
          @LatestFoundTime = latestfoundtime
          @HostIP = hostip
          @ClientIP = clientip
        end

        def deserialize(params)
          @EventId = params['EventId']
          @FoundTime = params['FoundTime']
          @ContainerId = params['ContainerId']
          @ContainerName = params['ContainerName']
          @ImageId = params['ImageId']
          @ImageName = params['ImageName']
          @NodeName = params['NodeName']
          @PodName = params['PodName']
          @Status = params['Status']
          @EventName = params['EventName']
          @EventType = params['EventType']
          @EventCount = params['EventCount']
          @LatestFoundTime = params['LatestFoundTime']
          @HostIP = params['HostIP']
          @ClientIP = params['ClientIP']
        end
      end

      # 容器安全
      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
      # 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class RunTimeFilters < TencentCloud::Common::AbstractModel
        # @param Name: 过滤键的名称
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

      # 运行时风险信息
      class RunTimeRiskInfo < TencentCloud::Common::AbstractModel
        # @param Cnt: 数量
        # @type Cnt: Integer
        # @param Level: 风险等级：
        # CRITICAL: 严重
        # HIGH: 高
        # MEDIUM：中
        # LOW: 低
        # @type Level: String

        attr_accessor :Cnt, :Level
        
        def initialize(cnt=nil, level=nil)
          @Cnt = cnt
          @Level = level
        end

        def deserialize(params)
          @Cnt = params['Cnt']
          @Level = params['Level']
        end
      end

      # 运行时趋势信息
      class RunTimeTendencyInfo < TencentCloud::Common::AbstractModel
        # @param CurTime: 当天时间
        # @type CurTime: String
        # @param Cnt: 当前数量
        # @type Cnt: Integer

        attr_accessor :CurTime, :Cnt
        
        def initialize(curtime=nil, cnt=nil)
          @CurTime = curtime
          @Cnt = cnt
        end

        def deserialize(params)
          @CurTime = params['CurTime']
          @Cnt = params['Cnt']
        end
      end

      # ScanComplianceAssetsByPolicyItem请求参数结构体
      class ScanComplianceAssetsByPolicyItemRequest < TencentCloud::Common::AbstractModel
        # @param CustomerPolicyItemId: 指定的检测项的ID
        # @type CustomerPolicyItemId: Integer
        # @param CustomerAssetIdSet: 要重新扫描的客户资产项ID的列表。
        # @type CustomerAssetIdSet: Array

        attr_accessor :CustomerPolicyItemId, :CustomerAssetIdSet
        
        def initialize(customerpolicyitemid=nil, customerassetidset=nil)
          @CustomerPolicyItemId = customerpolicyitemid
          @CustomerAssetIdSet = customerassetidset
        end

        def deserialize(params)
          @CustomerPolicyItemId = params['CustomerPolicyItemId']
          @CustomerAssetIdSet = params['CustomerAssetIdSet']
        end
      end

      # ScanComplianceAssetsByPolicyItem返回参数结构体
      class ScanComplianceAssetsByPolicyItemResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 返回重新检测任务的ID。
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

      # ScanComplianceAssets请求参数结构体
      class ScanComplianceAssetsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerAssetIdSet: 要重新扫描的客户资产项ID的列表。
        # @type CustomerAssetIdSet: Array

        attr_accessor :CustomerAssetIdSet
        
        def initialize(customerassetidset=nil)
          @CustomerAssetIdSet = customerassetidset
        end

        def deserialize(params)
          @CustomerAssetIdSet = params['CustomerAssetIdSet']
        end
      end

      # ScanComplianceAssets返回参数结构体
      class ScanComplianceAssetsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 返回重新检测任务的ID。
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

      # ScanCompliancePolicyItems请求参数结构体
      class ScanCompliancePolicyItemsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerPolicyItemIdSet: 要重新扫描的客户检测项的列表。
        # @type CustomerPolicyItemIdSet: Array

        attr_accessor :CustomerPolicyItemIdSet
        
        def initialize(customerpolicyitemidset=nil)
          @CustomerPolicyItemIdSet = customerpolicyitemidset
        end

        def deserialize(params)
          @CustomerPolicyItemIdSet = params['CustomerPolicyItemIdSet']
        end
      end

      # ScanCompliancePolicyItems返回参数结构体
      class ScanCompliancePolicyItemsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 返回重新检测任务的ID。
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

      # ScanComplianceScanFailedAssets请求参数结构体
      class ScanComplianceScanFailedAssetsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerAssetIdSet: 要重新扫描的客户资产项ID的列表。
        # @type CustomerAssetIdSet: Array

        attr_accessor :CustomerAssetIdSet
        
        def initialize(customerassetidset=nil)
          @CustomerAssetIdSet = customerassetidset
        end

        def deserialize(params)
          @CustomerAssetIdSet = params['CustomerAssetIdSet']
        end
      end

      # ScanComplianceScanFailedAssets返回参数结构体
      class ScanComplianceScanFailedAssetsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 返回重新检测任务的ID。
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

      # 运行时安全事件趋势信息
      class SecTendencyEventInfo < TencentCloud::Common::AbstractModel
        # @param EventSet: 趋势列表
        # @type EventSet: Array
        # @param EventType: 事件类型：
        # ET_ESCAPE : 容器逃逸
        # ET_REVERSE_SHELL: 反弹shell
        # ET_RISK_SYSCALL:高危系统调用
        # ET_ABNORMAL_PROCESS: 异常进程
        # ET_ACCESS_CONTROL 文件篡改
        # @type EventType: String

        attr_accessor :EventSet, :EventType
        
        def initialize(eventset=nil, eventtype=nil)
          @EventSet = eventset
          @EventType = eventtype
        end

        def deserialize(params)
          unless params['EventSet'].nil?
            @EventSet = []
            params['EventSet'].each do |i|
              runtimetendencyinfo_tmp = RunTimeTendencyInfo.new
              runtimetendencyinfo_tmp.deserialize(i)
              @EventSet << runtimetendencyinfo_tmp
            end
          end
          @EventType = params['EventType']
        end
      end

      # 容器安全服务信息列表
      class ServiceInfo < TencentCloud::Common::AbstractModel
        # @param ServiceID: 服务id
        # @type ServiceID: String
        # @param HostID: 主机id
        # @type HostID: String
        # @param HostIP: 主机ip
        # @type HostIP: String
        # @param ContainerName: 容器名
        # @type ContainerName: String
        # @param Type: 服务名 例如nginx/redis
        # @type Type: String
        # @param Version: 版本
        # @type Version: String
        # @param RunAs: 账号
        # @type RunAs: String
        # @param Listen: 监听端口
        # @type Listen: Array
        # @param Config: 配置
        # @type Config: String
        # @param ProcessCnt: 关联进程数
        # @type ProcessCnt: Integer
        # @param AccessLog: 访问日志
        # @type AccessLog: String
        # @param ErrorLog: 错误日志
        # @type ErrorLog: String
        # @param DataPath: 数据目录
        # @type DataPath: String
        # @param WebRoot: web目录
        # @type WebRoot: String
        # @param Pids: 关联的进程id
        # @type Pids: Array
        # @param MainType: 服务类型 app,web,db
        # @type MainType: String
        # @param Exe: 执行文件
        # @type Exe: String
        # @param Parameter: 服务命令行参数
        # @type Parameter: String
        # @param ContainerId: 容器id
        # @type ContainerId: String
        # @param HostName: 主机名称
        # @type HostName: String
        # @param PublicIp: 外网ip
        # @type PublicIp: String

        attr_accessor :ServiceID, :HostID, :HostIP, :ContainerName, :Type, :Version, :RunAs, :Listen, :Config, :ProcessCnt, :AccessLog, :ErrorLog, :DataPath, :WebRoot, :Pids, :MainType, :Exe, :Parameter, :ContainerId, :HostName, :PublicIp
        
        def initialize(serviceid=nil, hostid=nil, hostip=nil, containername=nil, type=nil, version=nil, runas=nil, listen=nil, config=nil, processcnt=nil, accesslog=nil, errorlog=nil, datapath=nil, webroot=nil, pids=nil, maintype=nil, exe=nil, parameter=nil, containerid=nil, hostname=nil, publicip=nil)
          @ServiceID = serviceid
          @HostID = hostid
          @HostIP = hostip
          @ContainerName = containername
          @Type = type
          @Version = version
          @RunAs = runas
          @Listen = listen
          @Config = config
          @ProcessCnt = processcnt
          @AccessLog = accesslog
          @ErrorLog = errorlog
          @DataPath = datapath
          @WebRoot = webroot
          @Pids = pids
          @MainType = maintype
          @Exe = exe
          @Parameter = parameter
          @ContainerId = containerid
          @HostName = hostname
          @PublicIp = publicip
        end

        def deserialize(params)
          @ServiceID = params['ServiceID']
          @HostID = params['HostID']
          @HostIP = params['HostIP']
          @ContainerName = params['ContainerName']
          @Type = params['Type']
          @Version = params['Version']
          @RunAs = params['RunAs']
          @Listen = params['Listen']
          @Config = params['Config']
          @ProcessCnt = params['ProcessCnt']
          @AccessLog = params['AccessLog']
          @ErrorLog = params['ErrorLog']
          @DataPath = params['DataPath']
          @WebRoot = params['WebRoot']
          @Pids = params['Pids']
          @MainType = params['MainType']
          @Exe = params['Exe']
          @Parameter = params['Parameter']
          @ContainerId = params['ContainerId']
          @HostName = params['HostName']
          @PublicIp = params['PublicIp']
        end
      end

      # SetCheckMode请求参数结构体
      class SetCheckModeRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIds: 要设置的集群ID列表
        # @type ClusterIds: Array
        # @param ClusterCheckMode: 集群检查模式(正常模式"Cluster_Normal"、主动模式"Cluster_Actived"、不设置"Cluster_Unset")
        # @type ClusterCheckMode: String
        # @param ClusterAutoCheck: 0不设置 1打开 2关闭
        # @type ClusterAutoCheck: Integer

        attr_accessor :ClusterIds, :ClusterCheckMode, :ClusterAutoCheck
        
        def initialize(clusterids=nil, clustercheckmode=nil, clusterautocheck=nil)
          @ClusterIds = clusterids
          @ClusterCheckMode = clustercheckmode
          @ClusterAutoCheck = clusterautocheck
        end

        def deserialize(params)
          @ClusterIds = params['ClusterIds']
          @ClusterCheckMode = params['ClusterCheckMode']
          @ClusterAutoCheck = params['ClusterAutoCheck']
        end
      end

      # SetCheckMode返回参数结构体
      class SetCheckModeResponse < TencentCloud::Common::AbstractModel
        # @param SetCheckResult: "Succ"表示设置成功，"Failed"表示设置失败
        # @type SetCheckResult: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SetCheckResult, :RequestId
        
        def initialize(setcheckresult=nil, requestid=nil)
          @SetCheckResult = setcheckresult
          @RequestId = requestid
        end

        def deserialize(params)
          @SetCheckResult = params['SetCheckResult']
          @RequestId = params['RequestId']
        end
      end

      # 后付费详情
      class SoftQuotaDayInfo < TencentCloud::Common::AbstractModel
        # @param PayTime: 扣费时间
        # @type PayTime: String
        # @param CoresCnt: 计费核数
        # @type CoresCnt: Integer

        attr_accessor :PayTime, :CoresCnt
        
        def initialize(paytime=nil, corescnt=nil)
          @PayTime = paytime
          @CoresCnt = corescnt
        end

        def deserialize(params)
          @PayTime = params['PayTime']
          @CoresCnt = params['CoresCnt']
        end
      end

      # StopVirusScanTask请求参数结构体
      class StopVirusScanTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param ContainerIds: 需要停止的容器id 为空默认停止整个任务
        # @type ContainerIds: Array

        attr_accessor :TaskId, :ContainerIds
        
        def initialize(taskid=nil, containerids=nil)
          @TaskId = taskid
          @ContainerIds = containerids
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ContainerIds = params['ContainerIds']
        end
      end

      # StopVirusScanTask返回参数结构体
      class StopVirusScanTaskResponse < TencentCloud::Common::AbstractModel
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

      # SyncAssetImageRegistryAsset请求参数结构体
      class SyncAssetImageRegistryAssetRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # SyncAssetImageRegistryAsset返回参数结构体
      class SyncAssetImageRegistryAssetResponse < TencentCloud::Common::AbstractModel
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

      # UpdateAssetImageRegistryRegistryDetail请求参数结构体
      class UpdateAssetImageRegistryRegistryDetailRequest < TencentCloud::Common::AbstractModel
        # @param Name: 仓库名
        # @type Name: String
        # @param Username: 用户名
        # @type Username: String
        # @param Password: 密码
        # @type Password: String
        # @param Url: 仓库url
        # @type Url: String
        # @param RegistryType: 仓库类型，列表：harbor
        # @type RegistryType: String
        # @param NetType: 网络类型，列表：public（公网）
        # @type NetType: String
        # @param RegistryVersion: 仓库版本
        # @type RegistryVersion: String
        # @param RegistryRegion: 区域，列表：default（默认）
        # @type RegistryRegion: String
        # @param SpeedLimit: 限速
        # @type SpeedLimit: Integer

        attr_accessor :Name, :Username, :Password, :Url, :RegistryType, :NetType, :RegistryVersion, :RegistryRegion, :SpeedLimit
        
        def initialize(name=nil, username=nil, password=nil, url=nil, registrytype=nil, nettype=nil, registryversion=nil, registryregion=nil, speedlimit=nil)
          @Name = name
          @Username = username
          @Password = password
          @Url = url
          @RegistryType = registrytype
          @NetType = nettype
          @RegistryVersion = registryversion
          @RegistryRegion = registryregion
          @SpeedLimit = speedlimit
        end

        def deserialize(params)
          @Name = params['Name']
          @Username = params['Username']
          @Password = params['Password']
          @Url = params['Url']
          @RegistryType = params['RegistryType']
          @NetType = params['NetType']
          @RegistryVersion = params['RegistryVersion']
          @RegistryRegion = params['RegistryRegion']
          @SpeedLimit = params['SpeedLimit']
        end
      end

      # UpdateAssetImageRegistryRegistryDetail返回参数结构体
      class UpdateAssetImageRegistryRegistryDetailResponse < TencentCloud::Common::AbstractModel
        # @param HealthCheckErr: 连接错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheckErr: String
        # @param NameRepeatErr: 名称错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NameRepeatErr: String
        # @param RegistryId: 仓库唯一id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistryId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HealthCheckErr, :NameRepeatErr, :RegistryId, :RequestId
        
        def initialize(healthcheckerr=nil, namerepeaterr=nil, registryid=nil, requestid=nil)
          @HealthCheckErr = healthcheckerr
          @NameRepeatErr = namerepeaterr
          @RegistryId = registryid
          @RequestId = requestid
        end

        def deserialize(params)
          @HealthCheckErr = params['HealthCheckErr']
          @NameRepeatErr = params['NameRepeatErr']
          @RegistryId = params['RegistryId']
          @RequestId = params['RequestId']
        end
      end

      # UpdateImageRegistryTimingScanTask请求参数结构体
      class UpdateImageRegistryTimingScanTaskRequest < TencentCloud::Common::AbstractModel
        # @param ScanPeriod: 定时扫描周期
        # @type ScanPeriod: Integer
        # @param Enable: 定时扫描开关
        # @type Enable: Boolean
        # @param ScanTime: 定时扫描的时间
        # @type ScanTime: String
        # @param ScanType: 扫描木马类型数组
        # @type ScanType: Array
        # @param Images: 扫描镜像
        # @type Images: Array
        # @param All: 是否扫描所有
        # @type All: Boolean
        # @param Id: 扫描镜像Id
        # @type Id: Array

        attr_accessor :ScanPeriod, :Enable, :ScanTime, :ScanType, :Images, :All, :Id
        
        def initialize(scanperiod=nil, enable=nil, scantime=nil, scantype=nil, images=nil, all=nil, id=nil)
          @ScanPeriod = scanperiod
          @Enable = enable
          @ScanTime = scantime
          @ScanType = scantype
          @Images = images
          @All = all
          @Id = id
        end

        def deserialize(params)
          @ScanPeriod = params['ScanPeriod']
          @Enable = params['Enable']
          @ScanTime = params['ScanTime']
          @ScanType = params['ScanType']
          unless params['Images'].nil?
            @Images = []
            params['Images'].each do |i|
              imageinfo_tmp = ImageInfo.new
              imageinfo_tmp.deserialize(i)
              @Images << imageinfo_tmp
            end
          end
          @All = params['All']
          @Id = params['Id']
        end
      end

      # UpdateImageRegistryTimingScanTask返回参数结构体
      class UpdateImageRegistryTimingScanTaskResponse < TencentCloud::Common::AbstractModel
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

      # 运行时木马列表信息
      class VirusInfo < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名称
        # @type FileName: String
        # @param FilePath: 文件路径
        # @type FilePath: String
        # @param VirusName: 病毒名称
        # @type VirusName: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 更新时间
        # @type ModifyTime: String
        # @param ContainerName: 容器名称
        # @type ContainerName: String
        # @param ContainerId: 容器id
        # @type ContainerId: String
        # @param ContainerStatus: 容器状态，CS_RUNING:运行， CS_PAUSE:暂停，CS_STOP:停止，
        # 												       CS_CREATE:已经创建， CS_DESTORY:销毁
        # @type ContainerStatus: String
        # @param ImageName: 镜像名称
        # @type ImageName: String
        # @param ImageId: 镜像id
        # @type ImageId: String
        # @param Status: DEAL_NONE:文件待处理
        # DEAL_IGNORE:已经忽略
        # DEAL_ADD_WHITELIST:加白
        # DEAL_DEL:文件已经删除
        # DEAL_ISOLATE:已经隔离
        # DEAL_ISOLATING:隔离中
        # DEAL_ISOLATE_FAILED:隔离失败
        # DEAL_RECOVERING:恢复中
        # DEAL_RECOVER_FAILED: 恢复失败
        # @type Status: String
        # @param Id: 事件id
        # @type Id: String
        # @param HarmDescribe: 事件描述
        # @type HarmDescribe: String
        # @param SuggestScheme: 建议方案
        # @type SuggestScheme: String
        # @param SubStatus: 失败子状态:
        # FILE_NOT_FOUND:文件不存在
        # FILE_ABNORMAL:文件异常
        # FILE_ABNORMAL_DEAL_RECOVER:恢复文件时，文件异常
        # BACKUP_FILE_NOT_FOUND:备份文件不存在
        # CONTAINER_NOT_FOUND_DEAL_ISOLATE:隔离时，容器不存在
        # CONTAINER_NOT_FOUND_DEAL_RECOVER:恢复时，容器不存在
        # @type SubStatus: String

        attr_accessor :FileName, :FilePath, :VirusName, :CreateTime, :ModifyTime, :ContainerName, :ContainerId, :ContainerStatus, :ImageName, :ImageId, :Status, :Id, :HarmDescribe, :SuggestScheme, :SubStatus
        
        def initialize(filename=nil, filepath=nil, virusname=nil, createtime=nil, modifytime=nil, containername=nil, containerid=nil, containerstatus=nil, imagename=nil, imageid=nil, status=nil, id=nil, harmdescribe=nil, suggestscheme=nil, substatus=nil)
          @FileName = filename
          @FilePath = filepath
          @VirusName = virusname
          @CreateTime = createtime
          @ModifyTime = modifytime
          @ContainerName = containername
          @ContainerId = containerid
          @ContainerStatus = containerstatus
          @ImageName = imagename
          @ImageId = imageid
          @Status = status
          @Id = id
          @HarmDescribe = harmdescribe
          @SuggestScheme = suggestscheme
          @SubStatus = substatus
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FilePath = params['FilePath']
          @VirusName = params['VirusName']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @ContainerName = params['ContainerName']
          @ContainerId = params['ContainerId']
          @ContainerStatus = params['ContainerStatus']
          @ImageName = params['ImageName']
          @ImageId = params['ImageId']
          @Status = params['Status']
          @Id = params['Id']
          @HarmDescribe = params['HarmDescribe']
          @SuggestScheme = params['SuggestScheme']
          @SubStatus = params['SubStatus']
        end
      end

      # 运行时文件查杀任务容器列表信息
      class VirusTaskInfo < TencentCloud::Common::AbstractModel
        # @param ContainerName: 容器名称
        # @type ContainerName: String
        # @param ContainerId: 容器id
        # @type ContainerId: String
        # @param ImageName: 镜像名称
        # @type ImageName: String
        # @param ImageId: 镜像Id
        # @type ImageId: String
        # @param HostName: 主机名称
        # @type HostName: String
        # @param HostIp: 主机ip
        # @type HostIp: String
        # @param Status: 扫描状态：
        # WAIT: 等待扫描
        # FAILED: 失败
        # SCANNING: 扫描中
        # FINISHED: 结束
        # CANCELING: 取消中
        # CANCELED: 已取消
        # CANCEL_FAILED： 取消失败
        # @type Status: String
        # @param StartTime: 检测开始时间
        # @type StartTime: String
        # @param EndTime: 检测结束时间
        # @type EndTime: String
        # @param RiskCnt: 风险个数
        # @type RiskCnt: Integer
        # @param Id: 事件id
        # @type Id: String
        # @param ErrorMsg: 错误原因:
        # SEND_SUCCESSED: 下发成功
        # SCAN_WAIT: agent排队扫描等待中
        # OFFLINE: 离线
        # SEND_FAILED:下发失败
        # TIMEOUT: 超时
        # LOW_AGENT_VERSION: 客户端版本过低
        # AGENT_NOT_FOUND: 镜像所属客户端版不存在
        # TOO_MANY: 任务过多
        # VALIDATION: 参数非法
        # INTERNAL: 服务内部错误
        # MISC: 其他错误
        # UNAUTH: 所在镜像未授权
        # SEND_CANCEL_SUCCESSED:下发成功
        # @type ErrorMsg: String

        attr_accessor :ContainerName, :ContainerId, :ImageName, :ImageId, :HostName, :HostIp, :Status, :StartTime, :EndTime, :RiskCnt, :Id, :ErrorMsg
        
        def initialize(containername=nil, containerid=nil, imagename=nil, imageid=nil, hostname=nil, hostip=nil, status=nil, starttime=nil, endtime=nil, riskcnt=nil, id=nil, errormsg=nil)
          @ContainerName = containername
          @ContainerId = containerid
          @ImageName = imagename
          @ImageId = imageid
          @HostName = hostname
          @HostIp = hostip
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
          @RiskCnt = riskcnt
          @Id = id
          @ErrorMsg = errormsg
        end

        def deserialize(params)
          @ContainerName = params['ContainerName']
          @ContainerId = params['ContainerId']
          @ImageName = params['ImageName']
          @ImageId = params['ImageId']
          @HostName = params['HostName']
          @HostIp = params['HostIp']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RiskCnt = params['RiskCnt']
          @Id = params['Id']
          @ErrorMsg = params['ErrorMsg']
        end
      end

      # 告警配置策略
      class WarningRule < TencentCloud::Common::AbstractModel
        # @param Type: 告警事件类型：
        # 镜像仓库安全-木马：IMG_REG_VIRUS
        # 镜像仓库安全-漏洞：IMG_REG_VUL
        # 镜像仓库安全-敏感信息：IMG_REG_RISK
        # 镜像安全-木马：IMG_VIRUS
        # 镜像安全-漏洞：IMG_VUL
        # 镜像安全-敏感信息：IMG_RISK
        # 镜像安全-镜像拦截：IMG_INTERCEPT
        # 运行时安全-容器逃逸：RUNTIME_ESCAPE
        # 运行时安全-异常进程：RUNTIME_FILE
        # 运行时安全-异常文件访问：RUNTIME_PROCESS
        # 运行时安全-高危系统调用：RUNTIME_SYSCALL
        # 运行时安全-反弹Shell：RUNTIME_REVERSE_SHELL
        # 运行时安全-木马：RUNTIME_VIRUS
        # @type Type: String
        # @param Switch: 开关状态：
        # 打开：ON
        # 关闭：OFF
        # @type Switch: String
        # @param BeginTime: 告警开始时间，格式: HH:mm
        # @type BeginTime: String
        # @param EndTime: 告警结束时间，格式: HH:mm
        # @type EndTime: String
        # @param ControlBits: 告警等级策略控制，二进制位每位代表一个含义，值以字符串类型传递
        # 控制开关分为高、中、低，则二进制位分别为：第1位:低，第2位:中，第3位:高，0表示关闭、1表示打开。
        # 如：高危和中危打开告警，低危关闭告警，则二进制值为：110
        # 告警类型不区分等级控制，则传1。
        # @type ControlBits: String

        attr_accessor :Type, :Switch, :BeginTime, :EndTime, :ControlBits
        
        def initialize(type=nil, switch=nil, begintime=nil, endtime=nil, controlbits=nil)
          @Type = type
          @Switch = switch
          @BeginTime = begintime
          @EndTime = endtime
          @ControlBits = controlbits
        end

        def deserialize(params)
          @Type = params['Type']
          @Switch = params['Switch']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @ControlBits = params['ControlBits']
        end
      end

    end
  end
end

