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
  module Csip
    module V20221121
      # AddNewBindRoleUser请求参数结构体
      class AddNewBindRoleUserRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # AddNewBindRoleUser返回参数结构体
      class AddNewBindRoleUserResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0成功，其他失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 告警下拉字段
      class AlertExtraInfo < TencentCloud::Common::AbstractModel
        # @param RelateEvent: 相关攻击事件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelateEvent: :class:`Tencentcloud::Csip.v20221121.models.RelatedEvent`
        # @param LeakContent: 泄漏内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LeakContent: String
        # @param LeakAPI: 泄漏API
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LeakAPI: String
        # @param SecretID: secretID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretID: String
        # @param Rule: 命中规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rule: String
        # @param RuleDesc: 规则描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleDesc: String
        # @param ProtocolPort: 协议端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtocolPort: String
        # @param AttackContent: 攻击内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackContent: String
        # @param AttackIPProfile: 攻击IP画像
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackIPProfile: String
        # @param AttackIPTags: 攻击IP标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackIPTags: String
        # @param RequestMethod: 请求方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestMethod: String
        # @param HttpLog: HTTP日志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpLog: String
        # @param AttackDomain: 被攻击域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackDomain: String
        # @param FilePath: 文件路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilePath: String
        # @param UserAgent: user_agent
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserAgent: String
        # @param RequestHeaders: 请求头
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestHeaders: String
        # @param LoginUserName: 登录用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoginUserName: String
        # @param VulnerabilityName: 漏洞名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityName: String
        # @param CVE: 公共漏洞和暴露
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVE: String
        # @param ServiceProcess: 服务进程
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceProcess: String
        # @param FileName: 文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param FileSize: 文件大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSize: String
        # @param FileMD5: 文件MD5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileMD5: String
        # @param FileLastAccessTime: 文件最近访问时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileLastAccessTime: String
        # @param FileModifyTime: 文件修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileModifyTime: String
        # @param RecentAccessTime: 最近访问时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecentAccessTime: String
        # @param RecentModifyTime: 最近修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecentModifyTime: String
        # @param VirusName: 病毒名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirusName: String
        # @param VirusFileTags: 病毒文件标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirusFileTags: String
        # @param BehavioralCharacteristics: 行为特征
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BehavioralCharacteristics: String
        # @param ProcessNamePID: 进程名（PID）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessNamePID: String
        # @param ProcessPath: 进程路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessPath: String
        # @param ProcessCommandLine: 进程命令行
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessCommandLine: String
        # @param ProcessPermissions: 进程权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessPermissions: String
        # @param ExecutedCommand: 执行命令
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutedCommand: String
        # @param AffectedFileName: 受影响文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AffectedFileName: String
        # @param DecoyPath: 诱饵路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DecoyPath: String
        # @param MaliciousProcessFileSize: 恶意进程文件大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaliciousProcessFileSize: String
        # @param MaliciousProcessFileMD5: 恶意进程文件MD5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaliciousProcessFileMD5: String
        # @param MaliciousProcessNamePID: 恶意进程名（PID）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaliciousProcessNamePID: String
        # @param MaliciousProcessPath: 恶意进程路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaliciousProcessPath: String
        # @param MaliciousProcessStartTime: 恶意进程启动时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaliciousProcessStartTime: String
        # @param CommandContent: 命令内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CommandContent: String
        # @param StartupUser: 启动用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartupUser: String
        # @param UserGroup: 用户所属组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroup: String
        # @param NewPermissions: 新增权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewPermissions: String
        # @param ParentProcess: 父进程
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentProcess: String
        # @param ClassName: 类名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassName: String
        # @param ClassLoader: 所属类加载器
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassLoader: String
        # @param ClassFileSize: 类文件大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassFileSize: String
        # @param ClassFileMD5: 类文件MD5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassFileMD5: String
        # @param ParentClassName: 父类名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentClassName: String
        # @param InheritedInterface: 继承接口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InheritedInterface: String
        # @param Comment: 注释
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param PayloadContent: 载荷内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayloadContent: String
        # @param CallbackAddressPortrait: 回连地址画像
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallbackAddressPortrait: String
        # @param CallbackAddressTag: 回连地址标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallbackAddressTag: String
        # @param ProcessMD5: 进程MD5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessMD5: String
        # @param FilePermission: 文件权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilePermission: String
        # @param FromLogAnalysisData: 来源于日志分析的信息字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FromLogAnalysisData: Array
        # @param HitProbe: 命中探针
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HitProbe: String
        # @param HitHoneyPot: 命中蜜罐

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HitHoneyPot: String
        # @param CommandList: 命令列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CommandList: String
        # @param AttackEventDesc: 攻击事件描述

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackEventDesc: String
        # @param ProcessInfo: 进程信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessInfo: String
        # @param UserNameAndPwd: 使用用户名&密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserNameAndPwd: String
        # @param StrategyID: 主机防护策略ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyID: String
        # @param StrategyName: 主机防护策略名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyName: String
        # @param HitStrategy: 主机防护命中策略，是策略ID和策略名称的组合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HitStrategy: String
        # @param ProcessName: 进程名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessName: String
        # @param PID: PID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PID: String
        # @param PodName: 容器Pod名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodName: String
        # @param PodID: 容器PodID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodID: String
        # @param Response: Http响应
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Response: String
        # @param SystemCall: 系统调用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SystemCall: String
        # @param Verb: 操作类型verb
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Verb: String
        # @param LogID: 日志ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogID: String
        # @param Different: 变更内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Different: String
        # @param EventType: 事件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventType: String
        # @param Description: 事件描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param TargetAddress: 目标地址(容器反弹shell)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetAddress: String
        # @param MaliciousRequestDomain: 恶意请求域名(容器恶意外联)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaliciousRequestDomain: String
        # @param RuleType: 规则类型(容器K8sAPI异常请求)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleType: String
        # @param RequestURI: 请求资源(容器K8sAPI异常请求)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestURI: String
        # @param RequestUser: 发起请求用户(容器K8sAPI异常请求)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestUser: String
        # @param RequestObject: 请求对象(容器K8sAPI异常请求)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestObject: String
        # @param ResponseObject: 响应对象(容器K8sAPI异常请求)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseObject: String
        # @param FileType: 文件类型(容器文件篡改)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileType: String
        # @param TIType: 标签特征(容器恶意外联)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TIType: String
        # @param SourceIP: 来源IP(容器K8sAPI异常请求)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceIP: String

        attr_accessor :RelateEvent, :LeakContent, :LeakAPI, :SecretID, :Rule, :RuleDesc, :ProtocolPort, :AttackContent, :AttackIPProfile, :AttackIPTags, :RequestMethod, :HttpLog, :AttackDomain, :FilePath, :UserAgent, :RequestHeaders, :LoginUserName, :VulnerabilityName, :CVE, :ServiceProcess, :FileName, :FileSize, :FileMD5, :FileLastAccessTime, :FileModifyTime, :RecentAccessTime, :RecentModifyTime, :VirusName, :VirusFileTags, :BehavioralCharacteristics, :ProcessNamePID, :ProcessPath, :ProcessCommandLine, :ProcessPermissions, :ExecutedCommand, :AffectedFileName, :DecoyPath, :MaliciousProcessFileSize, :MaliciousProcessFileMD5, :MaliciousProcessNamePID, :MaliciousProcessPath, :MaliciousProcessStartTime, :CommandContent, :StartupUser, :UserGroup, :NewPermissions, :ParentProcess, :ClassName, :ClassLoader, :ClassFileSize, :ClassFileMD5, :ParentClassName, :InheritedInterface, :Comment, :PayloadContent, :CallbackAddressPortrait, :CallbackAddressTag, :ProcessMD5, :FilePermission, :FromLogAnalysisData, :HitProbe, :HitHoneyPot, :CommandList, :AttackEventDesc, :ProcessInfo, :UserNameAndPwd, :StrategyID, :StrategyName, :HitStrategy, :ProcessName, :PID, :PodName, :PodID, :Response, :SystemCall, :Verb, :LogID, :Different, :EventType, :Description, :TargetAddress, :MaliciousRequestDomain, :RuleType, :RequestURI, :RequestUser, :RequestObject, :ResponseObject, :FileType, :TIType, :SourceIP

        def initialize(relateevent=nil, leakcontent=nil, leakapi=nil, secretid=nil, rule=nil, ruledesc=nil, protocolport=nil, attackcontent=nil, attackipprofile=nil, attackiptags=nil, requestmethod=nil, httplog=nil, attackdomain=nil, filepath=nil, useragent=nil, requestheaders=nil, loginusername=nil, vulnerabilityname=nil, cve=nil, serviceprocess=nil, filename=nil, filesize=nil, filemd5=nil, filelastaccesstime=nil, filemodifytime=nil, recentaccesstime=nil, recentmodifytime=nil, virusname=nil, virusfiletags=nil, behavioralcharacteristics=nil, processnamepid=nil, processpath=nil, processcommandline=nil, processpermissions=nil, executedcommand=nil, affectedfilename=nil, decoypath=nil, maliciousprocessfilesize=nil, maliciousprocessfilemd5=nil, maliciousprocessnamepid=nil, maliciousprocesspath=nil, maliciousprocessstarttime=nil, commandcontent=nil, startupuser=nil, usergroup=nil, newpermissions=nil, parentprocess=nil, classname=nil, classloader=nil, classfilesize=nil, classfilemd5=nil, parentclassname=nil, inheritedinterface=nil, comment=nil, payloadcontent=nil, callbackaddressportrait=nil, callbackaddresstag=nil, processmd5=nil, filepermission=nil, fromloganalysisdata=nil, hitprobe=nil, hithoneypot=nil, commandlist=nil, attackeventdesc=nil, processinfo=nil, usernameandpwd=nil, strategyid=nil, strategyname=nil, hitstrategy=nil, processname=nil, pid=nil, podname=nil, podid=nil, response=nil, systemcall=nil, verb=nil, logid=nil, different=nil, eventtype=nil, description=nil, targetaddress=nil, maliciousrequestdomain=nil, ruletype=nil, requesturi=nil, requestuser=nil, requestobject=nil, responseobject=nil, filetype=nil, titype=nil, sourceip=nil)
          @RelateEvent = relateevent
          @LeakContent = leakcontent
          @LeakAPI = leakapi
          @SecretID = secretid
          @Rule = rule
          @RuleDesc = ruledesc
          @ProtocolPort = protocolport
          @AttackContent = attackcontent
          @AttackIPProfile = attackipprofile
          @AttackIPTags = attackiptags
          @RequestMethod = requestmethod
          @HttpLog = httplog
          @AttackDomain = attackdomain
          @FilePath = filepath
          @UserAgent = useragent
          @RequestHeaders = requestheaders
          @LoginUserName = loginusername
          @VulnerabilityName = vulnerabilityname
          @CVE = cve
          @ServiceProcess = serviceprocess
          @FileName = filename
          @FileSize = filesize
          @FileMD5 = filemd5
          @FileLastAccessTime = filelastaccesstime
          @FileModifyTime = filemodifytime
          @RecentAccessTime = recentaccesstime
          @RecentModifyTime = recentmodifytime
          @VirusName = virusname
          @VirusFileTags = virusfiletags
          @BehavioralCharacteristics = behavioralcharacteristics
          @ProcessNamePID = processnamepid
          @ProcessPath = processpath
          @ProcessCommandLine = processcommandline
          @ProcessPermissions = processpermissions
          @ExecutedCommand = executedcommand
          @AffectedFileName = affectedfilename
          @DecoyPath = decoypath
          @MaliciousProcessFileSize = maliciousprocessfilesize
          @MaliciousProcessFileMD5 = maliciousprocessfilemd5
          @MaliciousProcessNamePID = maliciousprocessnamepid
          @MaliciousProcessPath = maliciousprocesspath
          @MaliciousProcessStartTime = maliciousprocessstarttime
          @CommandContent = commandcontent
          @StartupUser = startupuser
          @UserGroup = usergroup
          @NewPermissions = newpermissions
          @ParentProcess = parentprocess
          @ClassName = classname
          @ClassLoader = classloader
          @ClassFileSize = classfilesize
          @ClassFileMD5 = classfilemd5
          @ParentClassName = parentclassname
          @InheritedInterface = inheritedinterface
          @Comment = comment
          @PayloadContent = payloadcontent
          @CallbackAddressPortrait = callbackaddressportrait
          @CallbackAddressTag = callbackaddresstag
          @ProcessMD5 = processmd5
          @FilePermission = filepermission
          @FromLogAnalysisData = fromloganalysisdata
          @HitProbe = hitprobe
          @HitHoneyPot = hithoneypot
          @CommandList = commandlist
          @AttackEventDesc = attackeventdesc
          @ProcessInfo = processinfo
          @UserNameAndPwd = usernameandpwd
          @StrategyID = strategyid
          @StrategyName = strategyname
          @HitStrategy = hitstrategy
          @ProcessName = processname
          @PID = pid
          @PodName = podname
          @PodID = podid
          @Response = response
          @SystemCall = systemcall
          @Verb = verb
          @LogID = logid
          @Different = different
          @EventType = eventtype
          @Description = description
          @TargetAddress = targetaddress
          @MaliciousRequestDomain = maliciousrequestdomain
          @RuleType = ruletype
          @RequestURI = requesturi
          @RequestUser = requestuser
          @RequestObject = requestobject
          @ResponseObject = responseobject
          @FileType = filetype
          @TIType = titype
          @SourceIP = sourceip
        end

        def deserialize(params)
          unless params['RelateEvent'].nil?
            @RelateEvent = RelatedEvent.new
            @RelateEvent.deserialize(params['RelateEvent'])
          end
          @LeakContent = params['LeakContent']
          @LeakAPI = params['LeakAPI']
          @SecretID = params['SecretID']
          @Rule = params['Rule']
          @RuleDesc = params['RuleDesc']
          @ProtocolPort = params['ProtocolPort']
          @AttackContent = params['AttackContent']
          @AttackIPProfile = params['AttackIPProfile']
          @AttackIPTags = params['AttackIPTags']
          @RequestMethod = params['RequestMethod']
          @HttpLog = params['HttpLog']
          @AttackDomain = params['AttackDomain']
          @FilePath = params['FilePath']
          @UserAgent = params['UserAgent']
          @RequestHeaders = params['RequestHeaders']
          @LoginUserName = params['LoginUserName']
          @VulnerabilityName = params['VulnerabilityName']
          @CVE = params['CVE']
          @ServiceProcess = params['ServiceProcess']
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @FileMD5 = params['FileMD5']
          @FileLastAccessTime = params['FileLastAccessTime']
          @FileModifyTime = params['FileModifyTime']
          @RecentAccessTime = params['RecentAccessTime']
          @RecentModifyTime = params['RecentModifyTime']
          @VirusName = params['VirusName']
          @VirusFileTags = params['VirusFileTags']
          @BehavioralCharacteristics = params['BehavioralCharacteristics']
          @ProcessNamePID = params['ProcessNamePID']
          @ProcessPath = params['ProcessPath']
          @ProcessCommandLine = params['ProcessCommandLine']
          @ProcessPermissions = params['ProcessPermissions']
          @ExecutedCommand = params['ExecutedCommand']
          @AffectedFileName = params['AffectedFileName']
          @DecoyPath = params['DecoyPath']
          @MaliciousProcessFileSize = params['MaliciousProcessFileSize']
          @MaliciousProcessFileMD5 = params['MaliciousProcessFileMD5']
          @MaliciousProcessNamePID = params['MaliciousProcessNamePID']
          @MaliciousProcessPath = params['MaliciousProcessPath']
          @MaliciousProcessStartTime = params['MaliciousProcessStartTime']
          @CommandContent = params['CommandContent']
          @StartupUser = params['StartupUser']
          @UserGroup = params['UserGroup']
          @NewPermissions = params['NewPermissions']
          @ParentProcess = params['ParentProcess']
          @ClassName = params['ClassName']
          @ClassLoader = params['ClassLoader']
          @ClassFileSize = params['ClassFileSize']
          @ClassFileMD5 = params['ClassFileMD5']
          @ParentClassName = params['ParentClassName']
          @InheritedInterface = params['InheritedInterface']
          @Comment = params['Comment']
          @PayloadContent = params['PayloadContent']
          @CallbackAddressPortrait = params['CallbackAddressPortrait']
          @CallbackAddressTag = params['CallbackAddressTag']
          @ProcessMD5 = params['ProcessMD5']
          @FilePermission = params['FilePermission']
          unless params['FromLogAnalysisData'].nil?
            @FromLogAnalysisData = []
            params['FromLogAnalysisData'].each do |i|
              keyvalue_tmp = KeyValue.new
              keyvalue_tmp.deserialize(i)
              @FromLogAnalysisData << keyvalue_tmp
            end
          end
          @HitProbe = params['HitProbe']
          @HitHoneyPot = params['HitHoneyPot']
          @CommandList = params['CommandList']
          @AttackEventDesc = params['AttackEventDesc']
          @ProcessInfo = params['ProcessInfo']
          @UserNameAndPwd = params['UserNameAndPwd']
          @StrategyID = params['StrategyID']
          @StrategyName = params['StrategyName']
          @HitStrategy = params['HitStrategy']
          @ProcessName = params['ProcessName']
          @PID = params['PID']
          @PodName = params['PodName']
          @PodID = params['PodID']
          @Response = params['Response']
          @SystemCall = params['SystemCall']
          @Verb = params['Verb']
          @LogID = params['LogID']
          @Different = params['Different']
          @EventType = params['EventType']
          @Description = params['Description']
          @TargetAddress = params['TargetAddress']
          @MaliciousRequestDomain = params['MaliciousRequestDomain']
          @RuleType = params['RuleType']
          @RequestURI = params['RequestURI']
          @RequestUser = params['RequestUser']
          @RequestObject = params['RequestObject']
          @ResponseObject = params['ResponseObject']
          @FileType = params['FileType']
          @TIType = params['TIType']
          @SourceIP = params['SourceIP']
        end
      end

      # 告警中心全量告警列表数据
      class AlertInfo < TencentCloud::Common::AbstractModel
        # @param ID: 告警ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: String
        # @param Name: 告警名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Source: 告警来源
        # CFW:云防火墙
        # WAF:Web应用防火墙
        # CWP:主机安全
        # CSIP:云安全中心
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param Level: 告警等级
        # 1:提示
        # 2:低危
        # 3:中危
        # 4:高危
        # 5:严重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param Attacker: 攻击者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attacker: :class:`Tencentcloud::Csip.v20221121.models.RoleInfo`
        # @param Victim: 受害者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Victim: :class:`Tencentcloud::Csip.v20221121.models.RoleInfo`
        # @param EvidenceData: 证据数据(例如攻击内容等，base64编码)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EvidenceData: String
        # @param EvidenceLocation: 证据位置(例如协议端口)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EvidenceLocation: String
        # @param EvidencePath: 证据路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EvidencePath: String
        # @param CreateTime: 首次告警时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 最近告警时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Count: 告警次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param UrgentSuggestion: 紧急缓解建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UrgentSuggestion: String
        # @param RemediationSuggestion: 根治建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemediationSuggestion: String
        # @param Status: 处理状态
        # 0：未处置，1：已忽略，2：已处置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param ProcessType: 告警处理类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessType: String
        # @param Type: 告警大类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param SubType: 告警小类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubType: String
        # @param ExtraInfo: 下拉字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInfo: :class:`Tencentcloud::Csip.v20221121.models.AlertExtraInfo`
        # @param Key: 聚合字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Date: 告警日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Date: String
        # @param AppID: appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppID: String
        # @param NickName: 账户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String
        # @param Uin: 账户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param Action: 行为
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: Integer
        # @param RiskInvestigation: 风险排查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskInvestigation: String
        # @param RiskTreatment: 风险处置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskTreatment: String
        # @param LogType: 日志类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogType: String
        # @param LogSearch: 语句检索
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogSearch: String

        attr_accessor :ID, :Name, :Source, :Level, :Attacker, :Victim, :EvidenceData, :EvidenceLocation, :EvidencePath, :CreateTime, :UpdateTime, :Count, :UrgentSuggestion, :RemediationSuggestion, :Status, :ProcessType, :Type, :SubType, :ExtraInfo, :Key, :Date, :AppID, :NickName, :Uin, :Action, :RiskInvestigation, :RiskTreatment, :LogType, :LogSearch

        def initialize(id=nil, name=nil, source=nil, level=nil, attacker=nil, victim=nil, evidencedata=nil, evidencelocation=nil, evidencepath=nil, createtime=nil, updatetime=nil, count=nil, urgentsuggestion=nil, remediationsuggestion=nil, status=nil, processtype=nil, type=nil, subtype=nil, extrainfo=nil, key=nil, date=nil, appid=nil, nickname=nil, uin=nil, action=nil, riskinvestigation=nil, risktreatment=nil, logtype=nil, logsearch=nil)
          @ID = id
          @Name = name
          @Source = source
          @Level = level
          @Attacker = attacker
          @Victim = victim
          @EvidenceData = evidencedata
          @EvidenceLocation = evidencelocation
          @EvidencePath = evidencepath
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Count = count
          @UrgentSuggestion = urgentsuggestion
          @RemediationSuggestion = remediationsuggestion
          @Status = status
          @ProcessType = processtype
          @Type = type
          @SubType = subtype
          @ExtraInfo = extrainfo
          @Key = key
          @Date = date
          @AppID = appid
          @NickName = nickname
          @Uin = uin
          @Action = action
          @RiskInvestigation = riskinvestigation
          @RiskTreatment = risktreatment
          @LogType = logtype
          @LogSearch = logsearch
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @Source = params['Source']
          @Level = params['Level']
          unless params['Attacker'].nil?
            @Attacker = RoleInfo.new
            @Attacker.deserialize(params['Attacker'])
          end
          unless params['Victim'].nil?
            @Victim = RoleInfo.new
            @Victim.deserialize(params['Victim'])
          end
          @EvidenceData = params['EvidenceData']
          @EvidenceLocation = params['EvidenceLocation']
          @EvidencePath = params['EvidencePath']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Count = params['Count']
          @UrgentSuggestion = params['UrgentSuggestion']
          @RemediationSuggestion = params['RemediationSuggestion']
          @Status = params['Status']
          @ProcessType = params['ProcessType']
          @Type = params['Type']
          @SubType = params['SubType']
          unless params['ExtraInfo'].nil?
            @ExtraInfo = AlertExtraInfo.new
            @ExtraInfo.deserialize(params['ExtraInfo'])
          end
          @Key = params['Key']
          @Date = params['Date']
          @AppID = params['AppID']
          @NickName = params['NickName']
          @Uin = params['Uin']
          @Action = params['Action']
          @RiskInvestigation = params['RiskInvestigation']
          @RiskTreatment = params['RiskTreatment']
          @LogType = params['LogType']
          @LogSearch = params['LogSearch']
        end
      end

      # 主机资产详情
      class AssetBaseInfoResponse < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc-id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param VpcName: vpc-name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcName: String
        # @param AssetName: 资产名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: String
        # @param Os: 操作系统
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Os: String
        # @param PublicIp: 公网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param PrivateIp: 内网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIp: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param AssetType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: String
        # @param AssetId: 资产id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetId: String
        # @param AccountNum: 账号数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountNum: Integer
        # @param PortNum: 端口数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PortNum: Integer
        # @param ProcessNum: 进程数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessNum: Integer
        # @param SoftApplicationNum: 软件应用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoftApplicationNum: Integer
        # @param DatabaseNum: 数据库数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseNum: Integer
        # @param WebApplicationNum: Web应用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebApplicationNum: Integer
        # @param ServiceNum: 服务数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceNum: Integer
        # @param WebFrameworkNum: web框架数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebFrameworkNum: Integer
        # @param WebSiteNum: Web站点数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebSiteNum: Integer
        # @param JarPackageNum: Jar包数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JarPackageNum: Integer
        # @param StartServiceNum: 启动服务数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartServiceNum: Integer
        # @param ScheduledTaskNum: 计划任务数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduledTaskNum: Integer
        # @param EnvironmentVariableNum: 环境变量数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentVariableNum: Integer
        # @param KernelModuleNum: 内核模块数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KernelModuleNum: Integer
        # @param SystemInstallationPackageNum: 系统安装包数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SystemInstallationPackageNum: Integer
        # @param SurplusProtectDay: 剩余防护时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SurplusProtectDay: Integer
        # @param CWPStatus: 客户端是否安装  1 已安装 0 未安装
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPStatus: Integer
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param ProtectLevel: 防护等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtectLevel: String
        # @param ProtectedDay: 防护时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtectedDay: Integer

        attr_accessor :VpcId, :VpcName, :AssetName, :Os, :PublicIp, :PrivateIp, :Region, :AssetType, :AssetId, :AccountNum, :PortNum, :ProcessNum, :SoftApplicationNum, :DatabaseNum, :WebApplicationNum, :ServiceNum, :WebFrameworkNum, :WebSiteNum, :JarPackageNum, :StartServiceNum, :ScheduledTaskNum, :EnvironmentVariableNum, :KernelModuleNum, :SystemInstallationPackageNum, :SurplusProtectDay, :CWPStatus, :Tag, :ProtectLevel, :ProtectedDay

        def initialize(vpcid=nil, vpcname=nil, assetname=nil, os=nil, publicip=nil, privateip=nil, region=nil, assettype=nil, assetid=nil, accountnum=nil, portnum=nil, processnum=nil, softapplicationnum=nil, databasenum=nil, webapplicationnum=nil, servicenum=nil, webframeworknum=nil, websitenum=nil, jarpackagenum=nil, startservicenum=nil, scheduledtasknum=nil, environmentvariablenum=nil, kernelmodulenum=nil, systeminstallationpackagenum=nil, surplusprotectday=nil, cwpstatus=nil, tag=nil, protectlevel=nil, protectedday=nil)
          @VpcId = vpcid
          @VpcName = vpcname
          @AssetName = assetname
          @Os = os
          @PublicIp = publicip
          @PrivateIp = privateip
          @Region = region
          @AssetType = assettype
          @AssetId = assetid
          @AccountNum = accountnum
          @PortNum = portnum
          @ProcessNum = processnum
          @SoftApplicationNum = softapplicationnum
          @DatabaseNum = databasenum
          @WebApplicationNum = webapplicationnum
          @ServiceNum = servicenum
          @WebFrameworkNum = webframeworknum
          @WebSiteNum = websitenum
          @JarPackageNum = jarpackagenum
          @StartServiceNum = startservicenum
          @ScheduledTaskNum = scheduledtasknum
          @EnvironmentVariableNum = environmentvariablenum
          @KernelModuleNum = kernelmodulenum
          @SystemInstallationPackageNum = systeminstallationpackagenum
          @SurplusProtectDay = surplusprotectday
          @CWPStatus = cwpstatus
          @Tag = tag
          @ProtectLevel = protectlevel
          @ProtectedDay = protectedday
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @AssetName = params['AssetName']
          @Os = params['Os']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @Region = params['Region']
          @AssetType = params['AssetType']
          @AssetId = params['AssetId']
          @AccountNum = params['AccountNum']
          @PortNum = params['PortNum']
          @ProcessNum = params['ProcessNum']
          @SoftApplicationNum = params['SoftApplicationNum']
          @DatabaseNum = params['DatabaseNum']
          @WebApplicationNum = params['WebApplicationNum']
          @ServiceNum = params['ServiceNum']
          @WebFrameworkNum = params['WebFrameworkNum']
          @WebSiteNum = params['WebSiteNum']
          @JarPackageNum = params['JarPackageNum']
          @StartServiceNum = params['StartServiceNum']
          @ScheduledTaskNum = params['ScheduledTaskNum']
          @EnvironmentVariableNum = params['EnvironmentVariableNum']
          @KernelModuleNum = params['KernelModuleNum']
          @SystemInstallationPackageNum = params['SystemInstallationPackageNum']
          @SurplusProtectDay = params['SurplusProtectDay']
          @CWPStatus = params['CWPStatus']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @ProtectLevel = params['ProtectLevel']
          @ProtectedDay = params['ProtectedDay']
        end
      end

      # 集群pod列表
      class AssetClusterPod < TencentCloud::Common::AbstractModel
        # @param AppId: 租户id
        # @type AppId: Integer
        # @param Uin: 租户uin
        # @type Uin: String
        # @param Nick: 租户昵称
        # @type Nick: String
        # @param Region: 地域
        # @type Region: String
        # @param AssetId: pod id
        # @type AssetId: String
        # @param AssetName: pod名称
        # @type AssetName: String
        # @param InstanceCreateTime: pod创建时间
        # @type InstanceCreateTime: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param Status: 状态
        # @type Status: String
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param MachineId: 主机id
        # @type MachineId: String
        # @param MachineName: 主机名
        # @type MachineName: String
        # @param PodIp: pod ip
        # @type PodIp: String
        # @param ServiceCount: 关联service数
        # @type ServiceCount: Integer
        # @param ContainerCount: 关联容器数
        # @type ContainerCount: Integer
        # @param PublicIp: 公网ip
        # @type PublicIp: String
        # @param PrivateIp: 内网ip
        # @type PrivateIp: String
        # @param IsCore: 是否核心：1:核心，2:非核心
        # @type IsCore: Integer
        # @param IsNewAsset: 是否新资产 1新
        # @type IsNewAsset: Integer

        attr_accessor :AppId, :Uin, :Nick, :Region, :AssetId, :AssetName, :InstanceCreateTime, :Namespace, :Status, :ClusterId, :ClusterName, :MachineId, :MachineName, :PodIp, :ServiceCount, :ContainerCount, :PublicIp, :PrivateIp, :IsCore, :IsNewAsset

        def initialize(appid=nil, uin=nil, nick=nil, region=nil, assetid=nil, assetname=nil, instancecreatetime=nil, namespace=nil, status=nil, clusterid=nil, clustername=nil, machineid=nil, machinename=nil, podip=nil, servicecount=nil, containercount=nil, publicip=nil, privateip=nil, iscore=nil, isnewasset=nil)
          @AppId = appid
          @Uin = uin
          @Nick = nick
          @Region = region
          @AssetId = assetid
          @AssetName = assetname
          @InstanceCreateTime = instancecreatetime
          @Namespace = namespace
          @Status = status
          @ClusterId = clusterid
          @ClusterName = clustername
          @MachineId = machineid
          @MachineName = machinename
          @PodIp = podip
          @ServiceCount = servicecount
          @ContainerCount = containercount
          @PublicIp = publicip
          @PrivateIp = privateip
          @IsCore = iscore
          @IsNewAsset = isnewasset
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Uin = params['Uin']
          @Nick = params['Nick']
          @Region = params['Region']
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @InstanceCreateTime = params['InstanceCreateTime']
          @Namespace = params['Namespace']
          @Status = params['Status']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @MachineId = params['MachineId']
          @MachineName = params['MachineName']
          @PodIp = params['PodIp']
          @ServiceCount = params['ServiceCount']
          @ContainerCount = params['ContainerCount']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @IsCore = params['IsCore']
          @IsNewAsset = params['IsNewAsset']
        end
      end

      # 资产扫描结构细节
      class AssetInfoDetail < TencentCloud::Common::AbstractModel
        # @param AppID: 用户appid
        # @type AppID: String
        # @param CVEId: CVE编号
        # @type CVEId: String
        # @param IsScan: 是扫描，0默认未扫描，1正在扫描，2扫描完成，3扫描出错
        # @type IsScan: Integer
        # @param InfluenceAsset: 影响资产数目
        # @type InfluenceAsset: Integer
        # @param NotRepairAsset: 未修复资产数目
        # @type NotRepairAsset: Integer
        # @param NotProtectAsset: 未防护资产数目
        # @type NotProtectAsset: Integer
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskPercent: 任务百分比
        # @type TaskPercent: Integer
        # @param TaskTime: 任务时间
        # @type TaskTime: Integer
        # @param ScanTime: 扫描时间
        # @type ScanTime: String

        attr_accessor :AppID, :CVEId, :IsScan, :InfluenceAsset, :NotRepairAsset, :NotProtectAsset, :TaskId, :TaskPercent, :TaskTime, :ScanTime

        def initialize(appid=nil, cveid=nil, isscan=nil, influenceasset=nil, notrepairasset=nil, notprotectasset=nil, taskid=nil, taskpercent=nil, tasktime=nil, scantime=nil)
          @AppID = appid
          @CVEId = cveid
          @IsScan = isscan
          @InfluenceAsset = influenceasset
          @NotRepairAsset = notrepairasset
          @NotProtectAsset = notprotectasset
          @TaskId = taskid
          @TaskPercent = taskpercent
          @TaskTime = tasktime
          @ScanTime = scantime
        end

        def deserialize(params)
          @AppID = params['AppID']
          @CVEId = params['CVEId']
          @IsScan = params['IsScan']
          @InfluenceAsset = params['InfluenceAsset']
          @NotRepairAsset = params['NotRepairAsset']
          @NotProtectAsset = params['NotProtectAsset']
          @TaskId = params['TaskId']
          @TaskPercent = params['TaskPercent']
          @TaskTime = params['TaskTime']
          @ScanTime = params['ScanTime']
        end
      end

      # 资产类型和实例类型的映射
      class AssetInstanceTypeMap < TencentCloud::Common::AbstractModel
        # @param Text: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Value: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param InstanceTypeList: 资产类型和实例类型映射关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceTypeList: Array

        attr_accessor :Text, :Value, :InstanceTypeList

        def initialize(text=nil, value=nil, instancetypelist=nil)
          @Text = text
          @Value = value
          @InstanceTypeList = instancetypelist
        end

        def deserialize(params)
          @Text = params['Text']
          @Value = params['Value']
          unless params['InstanceTypeList'].nil?
            @InstanceTypeList = []
            params['InstanceTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @InstanceTypeList << filterdataobject_tmp
            end
          end
        end
      end

      # 安全中心资产标签
      class AssetTag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的key值,可以是字母、数字、下划线
        # @type TagKey: String
        # @param TagValue: 标签的vale值,可以是字母、数字、下划线
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

      # 资产视角配置风险
      class AssetViewCFGRisk < TencentCloud::Common::AbstractModel
        # @param Id: 唯一id
        # @type Id: String
        # @param CFGName: 配置名
        # @type CFGName: String
        # @param CheckType: 检查类型
        # @type CheckType: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param AffectAsset: 影响资产
        # @type AffectAsset: String
        # @param Level: 风险等级，low-低危，high-高危，middle-中危，info-提示，extreme-严重。
        # @type Level: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param From: 来源
        # @type From: String
        # @param Status: 状态
        # @type Status: Integer
        # @param CFGSTD: 相关规范
        # @type CFGSTD: String
        # @param CFGDescribe: 配置详情
        # @type CFGDescribe: String
        # @param CFGFix: 修复建议
        # @type CFGFix: String
        # @param CFGHelpURL: 帮助文档链接
        # @type CFGHelpURL: String
        # @param Index: 前端使用索引
        # @type Index: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Nick: 用户昵称
        # @type Nick: String
        # @param Uin: 用户uin
        # @type Uin: String
        # @param ClbId: 当资产类型为LBL的时候，展示该字段，方便定位具体的LB
        # @type ClbId: String

        attr_accessor :Id, :CFGName, :CheckType, :InstanceId, :InstanceName, :InstanceType, :AffectAsset, :Level, :FirstTime, :RecentTime, :From, :Status, :CFGSTD, :CFGDescribe, :CFGFix, :CFGHelpURL, :Index, :AppId, :Nick, :Uin, :ClbId

        def initialize(id=nil, cfgname=nil, checktype=nil, instanceid=nil, instancename=nil, instancetype=nil, affectasset=nil, level=nil, firsttime=nil, recenttime=nil, from=nil, status=nil, cfgstd=nil, cfgdescribe=nil, cfgfix=nil, cfghelpurl=nil, index=nil, appid=nil, nick=nil, uin=nil, clbid=nil)
          @Id = id
          @CFGName = cfgname
          @CheckType = checktype
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceType = instancetype
          @AffectAsset = affectasset
          @Level = level
          @FirstTime = firsttime
          @RecentTime = recenttime
          @From = from
          @Status = status
          @CFGSTD = cfgstd
          @CFGDescribe = cfgdescribe
          @CFGFix = cfgfix
          @CFGHelpURL = cfghelpurl
          @Index = index
          @AppId = appid
          @Nick = nick
          @Uin = uin
          @ClbId = clbid
        end

        def deserialize(params)
          @Id = params['Id']
          @CFGName = params['CFGName']
          @CheckType = params['CheckType']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceType = params['InstanceType']
          @AffectAsset = params['AffectAsset']
          @Level = params['Level']
          @FirstTime = params['FirstTime']
          @RecentTime = params['RecentTime']
          @From = params['From']
          @Status = params['Status']
          @CFGSTD = params['CFGSTD']
          @CFGDescribe = params['CFGDescribe']
          @CFGFix = params['CFGFix']
          @CFGHelpURL = params['CFGHelpURL']
          @Index = params['Index']
          @AppId = params['AppId']
          @Nick = params['Nick']
          @Uin = params['Uin']
          @ClbId = params['ClbId']
        end
      end

      # 资产视角的端口风险对象
      class AssetViewPortRisk < TencentCloud::Common::AbstractModel
        # @param Port: 端口
        # @type Port: Integer
        # @param AffectAsset: 影响资产
        # @type AffectAsset: String
        # @param Level: 风险等级，low-低危，high-高危，middle-中危，info-提示，extreme-严重。
        # @type Level: String
        # @param InstanceType: 资产类型
        # @type InstanceType: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Component: 组件
        # @type Component: String
        # @param Service: 服务
        # @type Service: String
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param Suggestion: 处置建议,0保持现状、1限制访问、2封禁端口
        # @type Suggestion: Integer
        # @param Status: 状态，0未处理、1已处置、2已忽略
        # @type Status: Integer
        # @param Id: 风险ID
        # @type Id: String
        # @param Index: 前端索引
        # @type Index: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Nick: 用户昵称
        # @type Nick: String
        # @param Uin: 用户uin
        # @type Uin: String
        # @param From: 识别来源，详细看枚举返回。
        # @type From: String

        attr_accessor :Port, :AffectAsset, :Level, :InstanceType, :Protocol, :Component, :Service, :RecentTime, :FirstTime, :Suggestion, :Status, :Id, :Index, :InstanceId, :InstanceName, :AppId, :Nick, :Uin, :From

        def initialize(port=nil, affectasset=nil, level=nil, instancetype=nil, protocol=nil, component=nil, service=nil, recenttime=nil, firsttime=nil, suggestion=nil, status=nil, id=nil, index=nil, instanceid=nil, instancename=nil, appid=nil, nick=nil, uin=nil, from=nil)
          @Port = port
          @AffectAsset = affectasset
          @Level = level
          @InstanceType = instancetype
          @Protocol = protocol
          @Component = component
          @Service = service
          @RecentTime = recenttime
          @FirstTime = firsttime
          @Suggestion = suggestion
          @Status = status
          @Id = id
          @Index = index
          @InstanceId = instanceid
          @InstanceName = instancename
          @AppId = appid
          @Nick = nick
          @Uin = uin
          @From = from
        end

        def deserialize(params)
          @Port = params['Port']
          @AffectAsset = params['AffectAsset']
          @Level = params['Level']
          @InstanceType = params['InstanceType']
          @Protocol = params['Protocol']
          @Component = params['Component']
          @Service = params['Service']
          @RecentTime = params['RecentTime']
          @FirstTime = params['FirstTime']
          @Suggestion = params['Suggestion']
          @Status = params['Status']
          @Id = params['Id']
          @Index = params['Index']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @AppId = params['AppId']
          @Nick = params['Nick']
          @Uin = params['Uin']
          @From = params['From']
        end
      end

      # 资产视角的漏洞风险对象
      class AssetViewVULRisk < TencentCloud::Common::AbstractModel
        # @param AffectAsset: 影响资产
        # @type AffectAsset: String
        # @param Level: 风险等级，low-低危，high-高危，middle-中危，info-提示，extreme-严重。
        # @type Level: String
        # @param InstanceType: 资产类型
        # @type InstanceType: String
        # @param Component: 组件
        # @type Component: String
        # @param Service: 服务
        # @type Service: String
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param Status: 状态，0未处理、1已处置、2已忽略
        # @type Status: Integer
        # @param Id: 风险ID
        # @type Id: String
        # @param Index: 前端索引
        # @type Index: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Nick: 用户昵称
        # @type Nick: String
        # @param Uin: 用户uin
        # @type Uin: String
        # @param VULType: 漏洞类型
        # @type VULType: String
        # @param Port: 端口
        # @type Port: String
        # @param Describe: 漏洞描述
        # @type Describe: String
        # @param AppName: 漏洞影响组件
        # @type AppName: String
        # @param References: 技术参考
        # @type References: String
        # @param AppVersion: 漏洞影响版本
        # @type AppVersion: String
        # @param VULURL: 风险点
        # @type VULURL: String
        # @param VULName: 漏洞名称
        # @type VULName: String
        # @param CVE: cve
        # @type CVE: String
        # @param Fix: 修复方案
        # @type Fix: String
        # @param POCId: pocid
        # @type POCId: String
        # @param From: 扫描来源
        # @type From: String
        # @param CWPVersion: 主机版本
        # @type CWPVersion: Integer
        # @param IsSupportRepair: 是否支持修复
        # @type IsSupportRepair: Boolean
        # @param IsSupportDetect: 是否支持扫描
        # @type IsSupportDetect: Boolean
        # @param InstanceUUID: 实例uuid
        # @type InstanceUUID: String
        # @param Payload: 攻击载荷
        # @type Payload: String
        # @param EMGCVulType: 应急漏洞类型，1-应急漏洞，0-非应急漏洞
        # @type EMGCVulType: Integer

        attr_accessor :AffectAsset, :Level, :InstanceType, :Component, :Service, :RecentTime, :FirstTime, :Status, :Id, :Index, :InstanceId, :InstanceName, :AppId, :Nick, :Uin, :VULType, :Port, :Describe, :AppName, :References, :AppVersion, :VULURL, :VULName, :CVE, :Fix, :POCId, :From, :CWPVersion, :IsSupportRepair, :IsSupportDetect, :InstanceUUID, :Payload, :EMGCVulType

        def initialize(affectasset=nil, level=nil, instancetype=nil, component=nil, service=nil, recenttime=nil, firsttime=nil, status=nil, id=nil, index=nil, instanceid=nil, instancename=nil, appid=nil, nick=nil, uin=nil, vultype=nil, port=nil, describe=nil, appname=nil, references=nil, appversion=nil, vulurl=nil, vulname=nil, cve=nil, fix=nil, pocid=nil, from=nil, cwpversion=nil, issupportrepair=nil, issupportdetect=nil, instanceuuid=nil, payload=nil, emgcvultype=nil)
          @AffectAsset = affectasset
          @Level = level
          @InstanceType = instancetype
          @Component = component
          @Service = service
          @RecentTime = recenttime
          @FirstTime = firsttime
          @Status = status
          @Id = id
          @Index = index
          @InstanceId = instanceid
          @InstanceName = instancename
          @AppId = appid
          @Nick = nick
          @Uin = uin
          @VULType = vultype
          @Port = port
          @Describe = describe
          @AppName = appname
          @References = references
          @AppVersion = appversion
          @VULURL = vulurl
          @VULName = vulname
          @CVE = cve
          @Fix = fix
          @POCId = pocid
          @From = from
          @CWPVersion = cwpversion
          @IsSupportRepair = issupportrepair
          @IsSupportDetect = issupportdetect
          @InstanceUUID = instanceuuid
          @Payload = payload
          @EMGCVulType = emgcvultype
        end

        def deserialize(params)
          @AffectAsset = params['AffectAsset']
          @Level = params['Level']
          @InstanceType = params['InstanceType']
          @Component = params['Component']
          @Service = params['Service']
          @RecentTime = params['RecentTime']
          @FirstTime = params['FirstTime']
          @Status = params['Status']
          @Id = params['Id']
          @Index = params['Index']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @AppId = params['AppId']
          @Nick = params['Nick']
          @Uin = params['Uin']
          @VULType = params['VULType']
          @Port = params['Port']
          @Describe = params['Describe']
          @AppName = params['AppName']
          @References = params['References']
          @AppVersion = params['AppVersion']
          @VULURL = params['VULURL']
          @VULName = params['VULName']
          @CVE = params['CVE']
          @Fix = params['Fix']
          @POCId = params['POCId']
          @From = params['From']
          @CWPVersion = params['CWPVersion']
          @IsSupportRepair = params['IsSupportRepair']
          @IsSupportDetect = params['IsSupportDetect']
          @InstanceUUID = params['InstanceUUID']
          @Payload = params['Payload']
          @EMGCVulType = params['EMGCVulType']
        end
      end

      # 资产视角的漏洞风险对象
      class AssetViewVULRiskData < TencentCloud::Common::AbstractModel
        # @param AffectAsset: 影响资产
        # @type AffectAsset: String
        # @param Level: 风险等级，low-低危，high-高危，middle-中危，info-提示，extreme-严重。
        # @type Level: String
        # @param InstanceType: 资产类型
        # @type InstanceType: String
        # @param Component: 组件
        # @type Component: String
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param Status: 状态，0未处理、1标记已处置、2已忽略，3已处置 ，4 处置中 ，5 检测中 ，6部分已处置
        # @type Status: Integer
        # @param RiskId: 风险ID
        # @type RiskId: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Nick: 用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nick: String
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param VULType: 漏洞类型
        # @type VULType: String
        # @param Port: 端口
        # @type Port: String
        # @param AppName: 漏洞影响组件
        # @type AppName: String
        # @param AppVersion: 漏洞影响版本
        # @type AppVersion: String
        # @param VULURL: 风险点
        # @type VULURL: String
        # @param VULName: 漏洞名称
        # @type VULName: String
        # @param CVE: cve
        # @type CVE: String
        # @param POCId: pocid
        # @type POCId: String
        # @param From: 扫描来源
        # @type From: String
        # @param CWPVersion: 主机版本
        # @type CWPVersion: Integer
        # @param InstanceUUID: 实例uuid
        # @type InstanceUUID: String
        # @param Payload: 攻击载荷
        # @type Payload: String
        # @param EMGCVulType: 应急漏洞类型，1-应急漏洞，0-非应急漏洞
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EMGCVulType: Integer
        # @param CVSS: CVSS评分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVSS: Float
        # @param Index: 前端索引id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: String
        # @param PCMGRId: pcmgrId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PCMGRId: String
        # @param LogId: 报告id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogId: String
        # @param TaskId: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param VulTag: 漏洞标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulTag: Array
        # @param DisclosureTime: 漏洞披露时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisclosureTime: String
        # @param AttackHeat: 攻击热度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackHeat: Integer
        # @param IsSuggest: 是否必修漏洞1是，0不是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSuggest: Integer
        # @param HandleTaskId: 处置任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HandleTaskId: String
        # @param EngineSource: 引擎来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineSource: String
        # @param VulRiskId: 新的漏洞风险id(同全网漏洞表的riskid)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulRiskId: String
        # @param TvdID: 新版漏洞id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TvdID: String
        # @param IsOneClick: 是否可以一键体检，1-可以，0-不可以
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsOneClick: Integer

        attr_accessor :AffectAsset, :Level, :InstanceType, :Component, :RecentTime, :FirstTime, :Status, :RiskId, :InstanceId, :InstanceName, :AppId, :Nick, :Uin, :VULType, :Port, :AppName, :AppVersion, :VULURL, :VULName, :CVE, :POCId, :From, :CWPVersion, :InstanceUUID, :Payload, :EMGCVulType, :CVSS, :Index, :PCMGRId, :LogId, :TaskId, :VulTag, :DisclosureTime, :AttackHeat, :IsSuggest, :HandleTaskId, :EngineSource, :VulRiskId, :TvdID, :IsOneClick

        def initialize(affectasset=nil, level=nil, instancetype=nil, component=nil, recenttime=nil, firsttime=nil, status=nil, riskid=nil, instanceid=nil, instancename=nil, appid=nil, nick=nil, uin=nil, vultype=nil, port=nil, appname=nil, appversion=nil, vulurl=nil, vulname=nil, cve=nil, pocid=nil, from=nil, cwpversion=nil, instanceuuid=nil, payload=nil, emgcvultype=nil, cvss=nil, index=nil, pcmgrid=nil, logid=nil, taskid=nil, vultag=nil, disclosuretime=nil, attackheat=nil, issuggest=nil, handletaskid=nil, enginesource=nil, vulriskid=nil, tvdid=nil, isoneclick=nil)
          @AffectAsset = affectasset
          @Level = level
          @InstanceType = instancetype
          @Component = component
          @RecentTime = recenttime
          @FirstTime = firsttime
          @Status = status
          @RiskId = riskid
          @InstanceId = instanceid
          @InstanceName = instancename
          @AppId = appid
          @Nick = nick
          @Uin = uin
          @VULType = vultype
          @Port = port
          @AppName = appname
          @AppVersion = appversion
          @VULURL = vulurl
          @VULName = vulname
          @CVE = cve
          @POCId = pocid
          @From = from
          @CWPVersion = cwpversion
          @InstanceUUID = instanceuuid
          @Payload = payload
          @EMGCVulType = emgcvultype
          @CVSS = cvss
          @Index = index
          @PCMGRId = pcmgrid
          @LogId = logid
          @TaskId = taskid
          @VulTag = vultag
          @DisclosureTime = disclosuretime
          @AttackHeat = attackheat
          @IsSuggest = issuggest
          @HandleTaskId = handletaskid
          @EngineSource = enginesource
          @VulRiskId = vulriskid
          @TvdID = tvdid
          @IsOneClick = isoneclick
        end

        def deserialize(params)
          @AffectAsset = params['AffectAsset']
          @Level = params['Level']
          @InstanceType = params['InstanceType']
          @Component = params['Component']
          @RecentTime = params['RecentTime']
          @FirstTime = params['FirstTime']
          @Status = params['Status']
          @RiskId = params['RiskId']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @AppId = params['AppId']
          @Nick = params['Nick']
          @Uin = params['Uin']
          @VULType = params['VULType']
          @Port = params['Port']
          @AppName = params['AppName']
          @AppVersion = params['AppVersion']
          @VULURL = params['VULURL']
          @VULName = params['VULName']
          @CVE = params['CVE']
          @POCId = params['POCId']
          @From = params['From']
          @CWPVersion = params['CWPVersion']
          @InstanceUUID = params['InstanceUUID']
          @Payload = params['Payload']
          @EMGCVulType = params['EMGCVulType']
          @CVSS = params['CVSS']
          @Index = params['Index']
          @PCMGRId = params['PCMGRId']
          @LogId = params['LogId']
          @TaskId = params['TaskId']
          @VulTag = params['VulTag']
          @DisclosureTime = params['DisclosureTime']
          @AttackHeat = params['AttackHeat']
          @IsSuggest = params['IsSuggest']
          @HandleTaskId = params['HandleTaskId']
          @EngineSource = params['EngineSource']
          @VulRiskId = params['VulRiskId']
          @TvdID = params['TvdID']
          @IsOneClick = params['IsOneClick']
        end
      end

      # 资产视角的弱口令风险
      class AssetViewWeakPassRisk < TencentCloud::Common::AbstractModel
        # @param AffectAsset: 影响资产
        # @type AffectAsset: String
        # @param Level: 风险等级，low-低危，high-高危，middle-中危，info-提示，extreme-严重。
        # @type Level: String
        # @param InstanceType: 资产类型
        # @type InstanceType: String
        # @param Component: 组件
        # @type Component: String
        # @param Service: 服务
        # @type Service: String
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param Status: 状态，0未处理、1已处置、2已忽略
        # @type Status: Integer
        # @param Id: ID，处理风险使用
        # @type Id: String
        # @param Index: 前端索引
        # @type Index: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Nick: 用户昵称
        # @type Nick: String
        # @param Uin: 用户uin
        # @type Uin: String
        # @param PasswordType: 弱口令类型
        # @type PasswordType: String
        # @param From: 来源
        # @type From: String
        # @param VULType: 漏洞类型
        # @type VULType: String
        # @param VULURL: 漏洞url
        # @type VULURL: String
        # @param Fix: 修复建议
        # @type Fix: String
        # @param Payload: 证明
        # @type Payload: String

        attr_accessor :AffectAsset, :Level, :InstanceType, :Component, :Service, :RecentTime, :FirstTime, :Status, :Id, :Index, :InstanceId, :InstanceName, :AppId, :Nick, :Uin, :PasswordType, :From, :VULType, :VULURL, :Fix, :Payload

        def initialize(affectasset=nil, level=nil, instancetype=nil, component=nil, service=nil, recenttime=nil, firsttime=nil, status=nil, id=nil, index=nil, instanceid=nil, instancename=nil, appid=nil, nick=nil, uin=nil, passwordtype=nil, from=nil, vultype=nil, vulurl=nil, fix=nil, payload=nil)
          @AffectAsset = affectasset
          @Level = level
          @InstanceType = instancetype
          @Component = component
          @Service = service
          @RecentTime = recenttime
          @FirstTime = firsttime
          @Status = status
          @Id = id
          @Index = index
          @InstanceId = instanceid
          @InstanceName = instancename
          @AppId = appid
          @Nick = nick
          @Uin = uin
          @PasswordType = passwordtype
          @From = from
          @VULType = vultype
          @VULURL = vulurl
          @Fix = fix
          @Payload = payload
        end

        def deserialize(params)
          @AffectAsset = params['AffectAsset']
          @Level = params['Level']
          @InstanceType = params['InstanceType']
          @Component = params['Component']
          @Service = params['Service']
          @RecentTime = params['RecentTime']
          @FirstTime = params['FirstTime']
          @Status = params['Status']
          @Id = params['Id']
          @Index = params['Index']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @AppId = params['AppId']
          @Nick = params['Nick']
          @Uin = params['Uin']
          @PasswordType = params['PasswordType']
          @From = params['From']
          @VULType = params['VULType']
          @VULURL = params['VULURL']
          @Fix = params['Fix']
          @Payload = params['Payload']
        end
      end

      # 漏洞详细信息
      class BugInfoDetail < TencentCloud::Common::AbstractModel
        # @param Id: 漏洞编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param PatchId: 漏洞对应pocId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PatchId: String
        # @param VULName: 漏洞名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VULName: String
        # @param Level: 漏洞严重性：high,middle，low，info
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: String
        # @param CVSSScore: cvss评分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVSSScore: String
        # @param CVEId: cve编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVEId: String
        # @param Tag: 漏洞标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: String
        # @param VULCategory: 漏洞种类，1:web应用，2:系统组件漏洞，3:配置风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VULCategory: Integer
        # @param ImpactOs: 漏洞影响系统
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImpactOs: String
        # @param ImpactCOMPENT: 漏洞影响组件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImpactCOMPENT: String
        # @param ImpactVersion: 漏洞影响版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImpactVersion: String
        # @param Reference: 链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reference: String
        # @param VULDescribe: 漏洞描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VULDescribe: String
        # @param Fix: 修复建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fix: String
        # @param ProSupport: 产品支持状态，实时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProSupport: Integer
        # @param IsPublish: 是否公开，0为未发布，1为发布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPublish: Integer
        # @param ReleaseTime: 释放时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseTime: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param SubCategory: 漏洞子类别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubCategory: String

        attr_accessor :Id, :PatchId, :VULName, :Level, :CVSSScore, :CVEId, :Tag, :VULCategory, :ImpactOs, :ImpactCOMPENT, :ImpactVersion, :Reference, :VULDescribe, :Fix, :ProSupport, :IsPublish, :ReleaseTime, :CreateTime, :UpdateTime, :SubCategory

        def initialize(id=nil, patchid=nil, vulname=nil, level=nil, cvssscore=nil, cveid=nil, tag=nil, vulcategory=nil, impactos=nil, impactcompent=nil, impactversion=nil, reference=nil, vuldescribe=nil, fix=nil, prosupport=nil, ispublish=nil, releasetime=nil, createtime=nil, updatetime=nil, subcategory=nil)
          @Id = id
          @PatchId = patchid
          @VULName = vulname
          @Level = level
          @CVSSScore = cvssscore
          @CVEId = cveid
          @Tag = tag
          @VULCategory = vulcategory
          @ImpactOs = impactos
          @ImpactCOMPENT = impactcompent
          @ImpactVersion = impactversion
          @Reference = reference
          @VULDescribe = vuldescribe
          @Fix = fix
          @ProSupport = prosupport
          @IsPublish = ispublish
          @ReleaseTime = releasetime
          @CreateTime = createtime
          @UpdateTime = updatetime
          @SubCategory = subcategory
        end

        def deserialize(params)
          @Id = params['Id']
          @PatchId = params['PatchId']
          @VULName = params['VULName']
          @Level = params['Level']
          @CVSSScore = params['CVSSScore']
          @CVEId = params['CVEId']
          @Tag = params['Tag']
          @VULCategory = params['VULCategory']
          @ImpactOs = params['ImpactOs']
          @ImpactCOMPENT = params['ImpactCOMPENT']
          @ImpactVersion = params['ImpactVersion']
          @Reference = params['Reference']
          @VULDescribe = params['VULDescribe']
          @Fix = params['Fix']
          @ProSupport = params['ProSupport']
          @IsPublish = params['IsPublish']
          @ReleaseTime = params['ReleaseTime']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @SubCategory = params['SubCategory']
        end
      end

      # 主机资产信息

      # 主机防护状态枚举，左边是常量，右边是显示
      # 0：未安装
      # 1：基础版防护中
      # 2：普惠版防护中
      # 3：专业版防护中
      # 4：旗舰版防护中
      # 5：已离线
      # 6：已关机
      class CVMAssetVO < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetId: String
        # @param AssetName: 资产名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: String
        # @param AssetType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param CWPStatus: 防护状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPStatus: Integer
        # @param AssetCreateTime: 资产创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetCreateTime: String
        # @param PublicIp: 公网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param PrivateIp: 私网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIp: String
        # @param VpcId: vpc id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param VpcName: vpc 名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcName: String
        # @param AppId: appid信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param NickName: 昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String
        # @param AvailableArea: 可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableArea: String
        # @param IsCore: 是否核心
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCore: Integer
        # @param SubnetId: 子网id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param SubnetName: 子网名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetName: String
        # @param InstanceUuid: uuid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceUuid: String
        # @param InstanceQUuid: qquid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceQUuid: String
        # @param OsName: os名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsName: String
        # @param PartitionCount: 分区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionCount: Integer
        # @param CPUInfo: cpu信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CPUInfo: String
        # @param CPUSize: cpu大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CPUSize: Integer
        # @param CPULoad: cpu负载
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CPULoad: String
        # @param MemorySize: 内存大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemorySize: String
        # @param MemoryLoad: 内存负载
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemoryLoad: String
        # @param DiskSize: 硬盘大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSize: String
        # @param DiskLoad: 硬盘负载
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskLoad: String
        # @param AccountCount: 账号数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountCount: String
        # @param ProcessCount: 进程数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessCount: String
        # @param AppCount: 软件应用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppCount: String
        # @param PortCount: 监听端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PortCount: Integer
        # @param Attack: 网络攻击
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attack: Integer
        # @param Access: 网络访问
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Access: Integer
        # @param Intercept: 网络拦截
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Intercept: Integer
        # @param InBandwidth: 入向峰值带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InBandwidth: String
        # @param OutBandwidth: 出向峰值带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutBandwidth: String
        # @param InFlow: 入向累计流量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InFlow: String
        # @param OutFlow: 出向累计流量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutFlow: String
        # @param LastScanTime: 最近扫描时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastScanTime: String
        # @param NetWorkOut: 恶意主动外联
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetWorkOut: Integer
        # @param PortRisk: 端口风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PortRisk: Integer
        # @param VulnerabilityRisk: 漏洞风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityRisk: Integer
        # @param ConfigurationRisk: 配置风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigurationRisk: Integer
        # @param ScanTask: 扫描任务数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanTask: Integer
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param MemberId: memberId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberId: String
        # @param Os: os全称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Os: String
        # @param RiskExposure: 风险服务暴露
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskExposure: Integer
        # @param BASAgentStatus: 模拟攻击工具状态。0代表未安装，1代表已安装，2代表已离线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BASAgentStatus: Integer
        # @param IsNewAsset: 1新资产；0 非新资产
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNewAsset: Integer
        # @param CVMAgentStatus: 0 未安装  1安装 2:安装中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVMAgentStatus: Integer
        # @param CVMStatus: 1:开启 0:未开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVMStatus: Integer
        # @param DefenseModel: 1:客户端已安装 0：未安装 2: Agentless
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefenseModel: Integer
        # @param TatStatus: 1:已安装 0:未安装
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TatStatus: Integer
        # @param CpuTrend: cpu趋势图
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuTrend: Array
        # @param MemoryTrend: 内存趋势图
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemoryTrend: Array
        # @param AgentStatus: 1:agent在线 0:agent离线 2:主机离线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentStatus: Integer
        # @param CloseDefenseCount: 本月防护关闭次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloseDefenseCount: Integer
        # @param InstanceState: 运行状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceState: String
        # @param SecurityGroupIds: 安全组数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroupIds: Array
        # @param AgentMemRss: 物理内存占用KB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentMemRss: Integer
        # @param AgentCpuPer: CPU使用率百分比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentCpuPer: Float
        # @param RealAppid: cvm真正所属的appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealAppid: Integer
        # @param CloudType: 云资产类型：0：腾讯云，1：aws，2：azure
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloudType: Integer
        # @param ProtectStatus: 主机防护状态枚举
        # 0：未安装
        # 1：基础版防护中
        # 2：普惠版防护中
        # 3：专业版防护中
        # 4：旗舰版防护中
        # 5：已离线
        # 6：已关机
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtectStatus: Integer
        # @param OfflineTime: 最后离线时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineTime: String

        attr_accessor :AssetId, :AssetName, :AssetType, :Region, :CWPStatus, :AssetCreateTime, :PublicIp, :PrivateIp, :VpcId, :VpcName, :AppId, :Uin, :NickName, :AvailableArea, :IsCore, :SubnetId, :SubnetName, :InstanceUuid, :InstanceQUuid, :OsName, :PartitionCount, :CPUInfo, :CPUSize, :CPULoad, :MemorySize, :MemoryLoad, :DiskSize, :DiskLoad, :AccountCount, :ProcessCount, :AppCount, :PortCount, :Attack, :Access, :Intercept, :InBandwidth, :OutBandwidth, :InFlow, :OutFlow, :LastScanTime, :NetWorkOut, :PortRisk, :VulnerabilityRisk, :ConfigurationRisk, :ScanTask, :Tag, :MemberId, :Os, :RiskExposure, :BASAgentStatus, :IsNewAsset, :CVMAgentStatus, :CVMStatus, :DefenseModel, :TatStatus, :CpuTrend, :MemoryTrend, :AgentStatus, :CloseDefenseCount, :InstanceState, :SecurityGroupIds, :AgentMemRss, :AgentCpuPer, :RealAppid, :CloudType, :ProtectStatus, :OfflineTime

        def initialize(assetid=nil, assetname=nil, assettype=nil, region=nil, cwpstatus=nil, assetcreatetime=nil, publicip=nil, privateip=nil, vpcid=nil, vpcname=nil, appid=nil, uin=nil, nickname=nil, availablearea=nil, iscore=nil, subnetid=nil, subnetname=nil, instanceuuid=nil, instancequuid=nil, osname=nil, partitioncount=nil, cpuinfo=nil, cpusize=nil, cpuload=nil, memorysize=nil, memoryload=nil, disksize=nil, diskload=nil, accountcount=nil, processcount=nil, appcount=nil, portcount=nil, attack=nil, access=nil, intercept=nil, inbandwidth=nil, outbandwidth=nil, inflow=nil, outflow=nil, lastscantime=nil, networkout=nil, portrisk=nil, vulnerabilityrisk=nil, configurationrisk=nil, scantask=nil, tag=nil, memberid=nil, os=nil, riskexposure=nil, basagentstatus=nil, isnewasset=nil, cvmagentstatus=nil, cvmstatus=nil, defensemodel=nil, tatstatus=nil, cputrend=nil, memorytrend=nil, agentstatus=nil, closedefensecount=nil, instancestate=nil, securitygroupids=nil, agentmemrss=nil, agentcpuper=nil, realappid=nil, cloudtype=nil, protectstatus=nil, offlinetime=nil)
          @AssetId = assetid
          @AssetName = assetname
          @AssetType = assettype
          @Region = region
          @CWPStatus = cwpstatus
          @AssetCreateTime = assetcreatetime
          @PublicIp = publicip
          @PrivateIp = privateip
          @VpcId = vpcid
          @VpcName = vpcname
          @AppId = appid
          @Uin = uin
          @NickName = nickname
          @AvailableArea = availablearea
          @IsCore = iscore
          @SubnetId = subnetid
          @SubnetName = subnetname
          @InstanceUuid = instanceuuid
          @InstanceQUuid = instancequuid
          @OsName = osname
          @PartitionCount = partitioncount
          @CPUInfo = cpuinfo
          @CPUSize = cpusize
          @CPULoad = cpuload
          @MemorySize = memorysize
          @MemoryLoad = memoryload
          @DiskSize = disksize
          @DiskLoad = diskload
          @AccountCount = accountcount
          @ProcessCount = processcount
          @AppCount = appcount
          @PortCount = portcount
          @Attack = attack
          @Access = access
          @Intercept = intercept
          @InBandwidth = inbandwidth
          @OutBandwidth = outbandwidth
          @InFlow = inflow
          @OutFlow = outflow
          @LastScanTime = lastscantime
          @NetWorkOut = networkout
          @PortRisk = portrisk
          @VulnerabilityRisk = vulnerabilityrisk
          @ConfigurationRisk = configurationrisk
          @ScanTask = scantask
          @Tag = tag
          @MemberId = memberid
          @Os = os
          @RiskExposure = riskexposure
          @BASAgentStatus = basagentstatus
          @IsNewAsset = isnewasset
          @CVMAgentStatus = cvmagentstatus
          @CVMStatus = cvmstatus
          @DefenseModel = defensemodel
          @TatStatus = tatstatus
          @CpuTrend = cputrend
          @MemoryTrend = memorytrend
          @AgentStatus = agentstatus
          @CloseDefenseCount = closedefensecount
          @InstanceState = instancestate
          @SecurityGroupIds = securitygroupids
          @AgentMemRss = agentmemrss
          @AgentCpuPer = agentcpuper
          @RealAppid = realappid
          @CloudType = cloudtype
          @ProtectStatus = protectstatus
          @OfflineTime = offlinetime
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @AssetType = params['AssetType']
          @Region = params['Region']
          @CWPStatus = params['CWPStatus']
          @AssetCreateTime = params['AssetCreateTime']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @NickName = params['NickName']
          @AvailableArea = params['AvailableArea']
          @IsCore = params['IsCore']
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
          @InstanceUuid = params['InstanceUuid']
          @InstanceQUuid = params['InstanceQUuid']
          @OsName = params['OsName']
          @PartitionCount = params['PartitionCount']
          @CPUInfo = params['CPUInfo']
          @CPUSize = params['CPUSize']
          @CPULoad = params['CPULoad']
          @MemorySize = params['MemorySize']
          @MemoryLoad = params['MemoryLoad']
          @DiskSize = params['DiskSize']
          @DiskLoad = params['DiskLoad']
          @AccountCount = params['AccountCount']
          @ProcessCount = params['ProcessCount']
          @AppCount = params['AppCount']
          @PortCount = params['PortCount']
          @Attack = params['Attack']
          @Access = params['Access']
          @Intercept = params['Intercept']
          @InBandwidth = params['InBandwidth']
          @OutBandwidth = params['OutBandwidth']
          @InFlow = params['InFlow']
          @OutFlow = params['OutFlow']
          @LastScanTime = params['LastScanTime']
          @NetWorkOut = params['NetWorkOut']
          @PortRisk = params['PortRisk']
          @VulnerabilityRisk = params['VulnerabilityRisk']
          @ConfigurationRisk = params['ConfigurationRisk']
          @ScanTask = params['ScanTask']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @MemberId = params['MemberId']
          @Os = params['Os']
          @RiskExposure = params['RiskExposure']
          @BASAgentStatus = params['BASAgentStatus']
          @IsNewAsset = params['IsNewAsset']
          @CVMAgentStatus = params['CVMAgentStatus']
          @CVMStatus = params['CVMStatus']
          @DefenseModel = params['DefenseModel']
          @TatStatus = params['TatStatus']
          unless params['CpuTrend'].nil?
            @CpuTrend = []
            params['CpuTrend'].each do |i|
              element_tmp = Element.new
              element_tmp.deserialize(i)
              @CpuTrend << element_tmp
            end
          end
          unless params['MemoryTrend'].nil?
            @MemoryTrend = []
            params['MemoryTrend'].each do |i|
              element_tmp = Element.new
              element_tmp.deserialize(i)
              @MemoryTrend << element_tmp
            end
          end
          @AgentStatus = params['AgentStatus']
          @CloseDefenseCount = params['CloseDefenseCount']
          @InstanceState = params['InstanceState']
          @SecurityGroupIds = params['SecurityGroupIds']
          @AgentMemRss = params['AgentMemRss']
          @AgentCpuPer = params['AgentCpuPer']
          @RealAppid = params['RealAppid']
          @CloudType = params['CloudType']
          @ProtectStatus = params['ProtectStatus']
          @OfflineTime = params['OfflineTime']
        end
      end

      # clb实例和监听器信息
      class ClbListenerListInfo < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerId: String
        # @param ListenerName: 监听器名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerName: String
        # @param LoadBalancerId: 负载均衡Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerName: String
        # @param Protocol: 协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Vip: 负载均衡ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip: String
        # @param VPort: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VPort: Integer
        # @param Zone: 区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param NumericalVpcId: 私有网络id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NumericalVpcId: Integer
        # @param LoadBalancerType: 负载均衡类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerType: String
        # @param Domain: 监听器域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param LoadBalancerDomain: 负载均衡域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerDomain: String

        attr_accessor :ListenerId, :ListenerName, :LoadBalancerId, :LoadBalancerName, :Protocol, :Region, :Vip, :VPort, :Zone, :NumericalVpcId, :LoadBalancerType, :Domain, :LoadBalancerDomain

        def initialize(listenerid=nil, listenername=nil, loadbalancerid=nil, loadbalancername=nil, protocol=nil, region=nil, vip=nil, vport=nil, zone=nil, numericalvpcid=nil, loadbalancertype=nil, domain=nil, loadbalancerdomain=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @Protocol = protocol
          @Region = region
          @Vip = vip
          @VPort = vport
          @Zone = zone
          @NumericalVpcId = numericalvpcid
          @LoadBalancerType = loadbalancertype
          @Domain = domain
          @LoadBalancerDomain = loadbalancerdomain
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @Protocol = params['Protocol']
          @Region = params['Region']
          @Vip = params['Vip']
          @VPort = params['VPort']
          @Zone = params['Zone']
          @NumericalVpcId = params['NumericalVpcId']
          @LoadBalancerType = params['LoadBalancerType']
          @Domain = params['Domain']
          @LoadBalancerDomain = params['LoadBalancerDomain']
        end
      end

      # CreateDomainAndIp请求参数结构体
      class CreateDomainAndIpRequest < TencentCloud::Common::AbstractModel
        # @param Content: 公网IP/域名
        # @type Content: Array
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :Content, :MemberId, :Tags

        def initialize(content=nil, memberid=nil, tags=nil)
          @Content = content
          @MemberId = memberid
          @Tags = tags
        end

        def deserialize(params)
          @Content = params['Content']
          @MemberId = params['MemberId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # CreateDomainAndIp返回参数结构体
      class CreateDomainAndIpResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回创建成功的数量
        # @type Data: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateRiskCenterScanTask请求参数结构体
      class CreateRiskCenterScanTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param ScanAssetType: 0-全扫，1-指定资产扫，2-排除资产扫，3-手动填写扫；1和2则Assets字段必填，3则SelfDefiningAssets必填
        # @type ScanAssetType: Integer
        # @param ScanItem: 扫描项目；port/poc/weakpass/webcontent/configrisk/exposedserver
        # @type ScanItem: Array
        # @param ScanPlanType: 0-周期任务,1-立即扫描,2-定时扫描,3-自定义；0,2,3则ScanPlanContent必填
        # @type ScanPlanType: Integer
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Assets: 扫描资产信息列表
        # @type Assets: Array
        # @param ScanPlanContent: 扫描计划详情
        # @type ScanPlanContent: String
        # @param SelfDefiningAssets: ip/域名/url数组
        # @type SelfDefiningAssets: Array
        # @param ScanFrom: 请求发起源，vss表示漏洞扫描服务，云安全中心的用户请填充csip，默认csip
        # @type ScanFrom: String
        # @param TaskAdvanceCFG: 高级配置
        # @type TaskAdvanceCFG: :class:`Tencentcloud::Csip.v20221121.models.TaskAdvanceCFG`
        # @param TaskMode: 体检模式，0-标准模式，1-快速模式，2-高级模式，默认标准模式
        # @type TaskMode: Integer
        # @param Tags: 资产标签
        # @type Tags: :class:`Tencentcloud::Csip.v20221121.models.AssetTag`
        # @param FinishWebHook: 任务完成回调webhook地址
        # @type FinishWebHook: String

        attr_accessor :TaskName, :ScanAssetType, :ScanItem, :ScanPlanType, :MemberId, :Assets, :ScanPlanContent, :SelfDefiningAssets, :ScanFrom, :TaskAdvanceCFG, :TaskMode, :Tags, :FinishWebHook

        def initialize(taskname=nil, scanassettype=nil, scanitem=nil, scanplantype=nil, memberid=nil, assets=nil, scanplancontent=nil, selfdefiningassets=nil, scanfrom=nil, taskadvancecfg=nil, taskmode=nil, tags=nil, finishwebhook=nil)
          @TaskName = taskname
          @ScanAssetType = scanassettype
          @ScanItem = scanitem
          @ScanPlanType = scanplantype
          @MemberId = memberid
          @Assets = assets
          @ScanPlanContent = scanplancontent
          @SelfDefiningAssets = selfdefiningassets
          @ScanFrom = scanfrom
          @TaskAdvanceCFG = taskadvancecfg
          @TaskMode = taskmode
          @Tags = tags
          @FinishWebHook = finishwebhook
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @ScanAssetType = params['ScanAssetType']
          @ScanItem = params['ScanItem']
          @ScanPlanType = params['ScanPlanType']
          @MemberId = params['MemberId']
          unless params['Assets'].nil?
            @Assets = []
            params['Assets'].each do |i|
              taskassetobject_tmp = TaskAssetObject.new
              taskassetobject_tmp.deserialize(i)
              @Assets << taskassetobject_tmp
            end
          end
          @ScanPlanContent = params['ScanPlanContent']
          @SelfDefiningAssets = params['SelfDefiningAssets']
          @ScanFrom = params['ScanFrom']
          unless params['TaskAdvanceCFG'].nil?
            @TaskAdvanceCFG = TaskAdvanceCFG.new
            @TaskAdvanceCFG.deserialize(params['TaskAdvanceCFG'])
          end
          @TaskMode = params['TaskMode']
          unless params['Tags'].nil?
            @Tags = AssetTag.new
            @Tags.deserialize(params['Tags'])
          end
          @FinishWebHook = params['FinishWebHook']
        end
      end

      # CreateRiskCenterScanTask返回参数结构体
      class CreateRiskCenterScanTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param Status: 0,任务创建成功；小于0失败；-1为存在资产未认证
        # @type Status: Integer
        # @param UnAuthAsset: 未认证资产列表
        # @type UnAuthAsset: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Status, :UnAuthAsset, :RequestId

        def initialize(taskid=nil, status=nil, unauthasset=nil, requestid=nil)
          @TaskId = taskid
          @Status = status
          @UnAuthAsset = unauthasset
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @UnAuthAsset = params['UnAuthAsset']
          @RequestId = params['RequestId']
        end
      end

      # db资产输出字段
      class DBAssetVO < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetId: String
        # @param AssetName: 资产名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: String
        # @param AssetType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: String
        # @param VpcId: vpcid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param VpcName: vpc标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcName: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Domain: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param AssetCreateTime: 资产创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetCreateTime: String
        # @param LastScanTime: 最近扫描时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastScanTime: String
        # @param ConfigurationRisk: 配置风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigurationRisk: Integer
        # @param Attack: 网络攻击
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attack: Integer
        # @param Access: 网络访问
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Access: Integer
        # @param ScanTask: 扫描任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanTask: Integer
        # @param AppId: 用户appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param NickName: 昵称别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String
        # @param Port: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param PrivateIp: 内网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIp: String
        # @param PublicIp: 公网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param IsCore: 是否核心
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCore: Integer
        # @param IsNewAsset: 是否新资产: 1新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNewAsset: Integer

        attr_accessor :AssetId, :AssetName, :AssetType, :VpcId, :VpcName, :Region, :Domain, :AssetCreateTime, :LastScanTime, :ConfigurationRisk, :Attack, :Access, :ScanTask, :AppId, :Uin, :NickName, :Port, :Tag, :PrivateIp, :PublicIp, :Status, :IsCore, :IsNewAsset

        def initialize(assetid=nil, assetname=nil, assettype=nil, vpcid=nil, vpcname=nil, region=nil, domain=nil, assetcreatetime=nil, lastscantime=nil, configurationrisk=nil, attack=nil, access=nil, scantask=nil, appid=nil, uin=nil, nickname=nil, port=nil, tag=nil, privateip=nil, publicip=nil, status=nil, iscore=nil, isnewasset=nil)
          @AssetId = assetid
          @AssetName = assetname
          @AssetType = assettype
          @VpcId = vpcid
          @VpcName = vpcname
          @Region = region
          @Domain = domain
          @AssetCreateTime = assetcreatetime
          @LastScanTime = lastscantime
          @ConfigurationRisk = configurationrisk
          @Attack = attack
          @Access = access
          @ScanTask = scantask
          @AppId = appid
          @Uin = uin
          @NickName = nickname
          @Port = port
          @Tag = tag
          @PrivateIp = privateip
          @PublicIp = publicip
          @Status = status
          @IsCore = iscore
          @IsNewAsset = isnewasset
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @AssetType = params['AssetType']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @Region = params['Region']
          @Domain = params['Domain']
          @AssetCreateTime = params['AssetCreateTime']
          @LastScanTime = params['LastScanTime']
          @ConfigurationRisk = params['ConfigurationRisk']
          @Attack = params['Attack']
          @Access = params['Access']
          @ScanTask = params['ScanTask']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @NickName = params['NickName']
          @Port = params['Port']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @PrivateIp = params['PrivateIp']
          @PublicIp = params['PublicIp']
          @Status = params['Status']
          @IsCore = params['IsCore']
          @IsNewAsset = params['IsNewAsset']
        end
      end

      # 漏洞和资产信息
      class DataSearchBug < TencentCloud::Common::AbstractModel
        # @param StateCode: 返回查询状态
        # @type StateCode: String
        # @param DataBug: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataBug: Array
        # @param DataAsset: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataAsset: Array
        # @param VSSScan: true支持扫描。false不支持扫描
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VSSScan: Boolean
        # @param CWPScan: 0不支持，1支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPScan: String
        # @param CFWPatch: 1支持虚拟补丁，0或空不支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFWPatch: String
        # @param WafPatch: 0不支持，1支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WafPatch: Integer
        # @param CWPFix: 0不支持，1支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPFix: Integer
        # @param DataSupport: 产品支持状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSupport: Array
        # @param CveId: cveId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CveId: String

        attr_accessor :StateCode, :DataBug, :DataAsset, :VSSScan, :CWPScan, :CFWPatch, :WafPatch, :CWPFix, :DataSupport, :CveId

        def initialize(statecode=nil, databug=nil, dataasset=nil, vssscan=nil, cwpscan=nil, cfwpatch=nil, wafpatch=nil, cwpfix=nil, datasupport=nil, cveid=nil)
          @StateCode = statecode
          @DataBug = databug
          @DataAsset = dataasset
          @VSSScan = vssscan
          @CWPScan = cwpscan
          @CFWPatch = cfwpatch
          @WafPatch = wafpatch
          @CWPFix = cwpfix
          @DataSupport = datasupport
          @CveId = cveid
        end

        def deserialize(params)
          @StateCode = params['StateCode']
          unless params['DataBug'].nil?
            @DataBug = []
            params['DataBug'].each do |i|
              buginfodetail_tmp = BugInfoDetail.new
              buginfodetail_tmp.deserialize(i)
              @DataBug << buginfodetail_tmp
            end
          end
          unless params['DataAsset'].nil?
            @DataAsset = []
            params['DataAsset'].each do |i|
              assetinfodetail_tmp = AssetInfoDetail.new
              assetinfodetail_tmp.deserialize(i)
              @DataAsset << assetinfodetail_tmp
            end
          end
          @VSSScan = params['VSSScan']
          @CWPScan = params['CWPScan']
          @CFWPatch = params['CFWPatch']
          @WafPatch = params['WafPatch']
          @CWPFix = params['CWPFix']
          unless params['DataSupport'].nil?
            @DataSupport = []
            params['DataSupport'].each do |i|
              productsupport_tmp = ProductSupport.new
              productsupport_tmp.deserialize(i)
              @DataSupport << productsupport_tmp
            end
          end
          @CveId = params['CveId']
        end
      end

      # db资产详情
      class DbAssetInfo < TencentCloud::Common::AbstractModel
        # @param CFWStatus: 云防状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFWStatus: Integer
        # @param AssetId: 资产id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetId: String
        # @param VpcName: vpc信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcName: String
        # @param AssetType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: String
        # @param PublicIp: 公网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param PrivateIp: 私网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIp: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param VpcId: vpc信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param AssetName: 资产名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: String
        # @param CFWProtectLevel: 云防保护版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFWProtectLevel: Integer
        # @param Tag: tag信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array

        attr_accessor :CFWStatus, :AssetId, :VpcName, :AssetType, :PublicIp, :PrivateIp, :Region, :VpcId, :AssetName, :CFWProtectLevel, :Tag

        def initialize(cfwstatus=nil, assetid=nil, vpcname=nil, assettype=nil, publicip=nil, privateip=nil, region=nil, vpcid=nil, assetname=nil, cfwprotectlevel=nil, tag=nil)
          @CFWStatus = cfwstatus
          @AssetId = assetid
          @VpcName = vpcname
          @AssetType = assettype
          @PublicIp = publicip
          @PrivateIp = privateip
          @Region = region
          @VpcId = vpcid
          @AssetName = assetname
          @CFWProtectLevel = cfwprotectlevel
          @Tag = tag
        end

        def deserialize(params)
          @CFWStatus = params['CFWStatus']
          @AssetId = params['AssetId']
          @VpcName = params['VpcName']
          @AssetType = params['AssetType']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @Region = params['Region']
          @VpcId = params['VpcId']
          @AssetName = params['AssetName']
          @CFWProtectLevel = params['CFWProtectLevel']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
        end
      end

      # DeleteDomainAndIp请求参数结构体
      class DeleteDomainAndIpRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Content: 资产
        # @type Content: Array
        # @param RetainPath: 是否保留路径配置，1：保留，其他：不保留，默认不传为不保留
        # @type RetainPath: Integer
        # @param IgnoreAsset: 以后是否忽略该资产，，1：忽略，其他：不忽略，默认不传为忽略
        # @type IgnoreAsset: Integer
        # @param Tags: 资产标签
        # @type Tags: Array
        # @param Type: 删除类型，取值： ALL， 删除全部，将直接忽略Content的内容；                                           其他值 ,非全部，则Centent必填，  默认为其他值。
        # @type Type: String

        attr_accessor :MemberId, :Content, :RetainPath, :IgnoreAsset, :Tags, :Type

        def initialize(memberid=nil, content=nil, retainpath=nil, ignoreasset=nil, tags=nil, type=nil)
          @MemberId = memberid
          @Content = content
          @RetainPath = retainpath
          @IgnoreAsset = ignoreasset
          @Tags = tags
          @Type = type
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              publicipdomainlistkey_tmp = PublicIpDomainListKey.new
              publicipdomainlistkey_tmp.deserialize(i)
              @Content << publicipdomainlistkey_tmp
            end
          end
          @RetainPath = params['RetainPath']
          @IgnoreAsset = params['IgnoreAsset']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
          @Type = params['Type']
        end
      end

      # DeleteDomainAndIp返回参数结构体
      class DeleteDomainAndIpResponse < TencentCloud::Common::AbstractModel
        # @param Data: 删除的资产数量
        # @type Data: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteRiskScanTask请求参数结构体
      class DeleteRiskScanTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskIdList: 任务id 列表
        # @type TaskIdList: Array
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :TaskIdList, :MemberId

        def initialize(taskidlist=nil, memberid=nil)
          @TaskIdList = taskidlist
          @MemberId = memberid
        end

        def deserialize(params)
          unless params['TaskIdList'].nil?
            @TaskIdList = []
            params['TaskIdList'].each do |i|
              taskidlistkey_tmp = TaskIdListKey.new
              taskidlistkey_tmp.deserialize(i)
              @TaskIdList << taskidlistkey_tmp
            end
          end
          @MemberId = params['MemberId']
        end
      end

      # DeleteRiskScanTask返回参数结构体
      class DeleteRiskScanTaskResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAlertList请求参数结构体
      class DescribeAlertListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 标签搜索筛选
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param OperatedMemberId: 被调用的集团账号的成员id
        # @type OperatedMemberId: Array
        # @param AssetType: 0:默认全部 1:资产ID 2:域名
        # @type AssetType: Integer

        attr_accessor :Filter, :MemberId, :OperatedMemberId, :AssetType

        def initialize(filter=nil, memberid=nil, operatedmemberid=nil, assettype=nil)
          @Filter = filter
          @MemberId = memberid
          @OperatedMemberId = operatedmemberid
          @AssetType = assettype
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          @MemberId = params['MemberId']
          @OperatedMemberId = params['OperatedMemberId']
          @AssetType = params['AssetType']
        end
      end

      # DescribeAlertList返回参数结构体
      class DescribeAlertListResponse < TencentCloud::Common::AbstractModel
        # @param AlertList: 全量告警列表
        # @type AlertList: Array
        # @param AlertTypeCount: 告警大类数量
        # @type AlertTypeCount: Array
        # @param TotalCount: 告警总数
        # @type TotalCount: Integer
        # @param ReturnCode: 0：succeed 1：timeout
        # @type ReturnCode: Integer
        # @param ReturnMsg: 返回状态信息
        # @type ReturnMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlertList, :AlertTypeCount, :TotalCount, :ReturnCode, :ReturnMsg, :RequestId

        def initialize(alertlist=nil, alerttypecount=nil, totalcount=nil, returncode=nil, returnmsg=nil, requestid=nil)
          @AlertList = alertlist
          @AlertTypeCount = alerttypecount
          @TotalCount = totalcount
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AlertList'].nil?
            @AlertList = []
            params['AlertList'].each do |i|
              alertinfo_tmp = AlertInfo.new
              alertinfo_tmp.deserialize(i)
              @AlertList << alertinfo_tmp
            end
          end
          unless params['AlertTypeCount'].nil?
            @AlertTypeCount = []
            params['AlertTypeCount'].each do |i|
              tagcount_tmp = TagCount.new
              tagcount_tmp.deserialize(i)
              @AlertTypeCount << tagcount_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetViewVulRiskList请求参数结构体
      class DescribeAssetViewVulRiskListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :MemberId, :Filter, :Tags

        def initialize(memberid=nil, filter=nil, tags=nil)
          @MemberId = memberid
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeAssetViewVulRiskList返回参数结构体
      class DescribeAssetViewVulRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 资产视角的漏洞风险列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param StatusLists: 状态列表
        # @type StatusLists: Array
        # @param LevelLists: 危险等级列表
        # @type LevelLists: Array
        # @param FromLists: 来源列表
        # @type FromLists: Array
        # @param VULTypeLists: 漏洞类型列表
        # @type VULTypeLists: Array
        # @param InstanceTypeLists: 资产类型列表
        # @type InstanceTypeLists: Array
        # @param Tags: tag枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :StatusLists, :LevelLists, :FromLists, :VULTypeLists, :InstanceTypeLists, :Tags, :RequestId

        def initialize(totalcount=nil, data=nil, statuslists=nil, levellists=nil, fromlists=nil, vultypelists=nil, instancetypelists=nil, tags=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @StatusLists = statuslists
          @LevelLists = levellists
          @FromLists = fromlists
          @VULTypeLists = vultypelists
          @InstanceTypeLists = instancetypelists
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              assetviewvulriskdata_tmp = AssetViewVULRiskData.new
              assetviewvulriskdata_tmp.deserialize(i)
              @Data << assetviewvulriskdata_tmp
            end
          end
          unless params['StatusLists'].nil?
            @StatusLists = []
            params['StatusLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @StatusLists << filterdataobject_tmp
            end
          end
          unless params['LevelLists'].nil?
            @LevelLists = []
            params['LevelLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @LevelLists << filterdataobject_tmp
            end
          end
          unless params['FromLists'].nil?
            @FromLists = []
            params['FromLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @FromLists << filterdataobject_tmp
            end
          end
          unless params['VULTypeLists'].nil?
            @VULTypeLists = []
            params['VULTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VULTypeLists << filterdataobject_tmp
            end
          end
          unless params['InstanceTypeLists'].nil?
            @InstanceTypeLists = []
            params['InstanceTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @InstanceTypeLists << filterdataobject_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @Tags << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCFWAssetStatistics请求参数结构体
      class DescribeCFWAssetStatisticsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCFWAssetStatistics返回参数结构体
      class DescribeCFWAssetStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param NetworkTotal: 网络资产总数
        # @type NetworkTotal: Integer
        # @param ClbTotal: 资产clb数量
        # @type ClbTotal: Integer
        # @param NatTotal: nat数量
        # @type NatTotal: Integer
        # @param PublicAssetTotal: 公网ip数量
        # @type PublicAssetTotal: Integer
        # @param CVMAssetTotal: 主机数量
        # @type CVMAssetTotal: Integer
        # @param CFGTotal: 配置风险
        # @type CFGTotal: Integer
        # @param PortTotal: 端口风险
        # @type PortTotal: Integer
        # @param WebsiteTotal: 内容风险
        # @type WebsiteTotal: Integer
        # @param ServerTotal: 风险服务暴露
        # @type ServerTotal: Integer
        # @param WeakPasswordTotal: 弱口令风险
        # @type WeakPasswordTotal: Integer
        # @param VULTotal: 漏洞风险
        # @type VULTotal: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetworkTotal, :ClbTotal, :NatTotal, :PublicAssetTotal, :CVMAssetTotal, :CFGTotal, :PortTotal, :WebsiteTotal, :ServerTotal, :WeakPasswordTotal, :VULTotal, :RequestId

        def initialize(networktotal=nil, clbtotal=nil, nattotal=nil, publicassettotal=nil, cvmassettotal=nil, cfgtotal=nil, porttotal=nil, websitetotal=nil, servertotal=nil, weakpasswordtotal=nil, vultotal=nil, requestid=nil)
          @NetworkTotal = networktotal
          @ClbTotal = clbtotal
          @NatTotal = nattotal
          @PublicAssetTotal = publicassettotal
          @CVMAssetTotal = cvmassettotal
          @CFGTotal = cfgtotal
          @PortTotal = porttotal
          @WebsiteTotal = websitetotal
          @ServerTotal = servertotal
          @WeakPasswordTotal = weakpasswordtotal
          @VULTotal = vultotal
          @RequestId = requestid
        end

        def deserialize(params)
          @NetworkTotal = params['NetworkTotal']
          @ClbTotal = params['ClbTotal']
          @NatTotal = params['NatTotal']
          @PublicAssetTotal = params['PublicAssetTotal']
          @CVMAssetTotal = params['CVMAssetTotal']
          @CFGTotal = params['CFGTotal']
          @PortTotal = params['PortTotal']
          @WebsiteTotal = params['WebsiteTotal']
          @ServerTotal = params['ServerTotal']
          @WeakPasswordTotal = params['WeakPasswordTotal']
          @VULTotal = params['VULTotal']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCVMAssetInfo请求参数结构体
      class DescribeCVMAssetInfoRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: -
        # @type AssetId: String

        attr_accessor :AssetId

        def initialize(assetid=nil)
          @AssetId = assetid
        end

        def deserialize(params)
          @AssetId = params['AssetId']
        end
      end

      # DescribeCVMAssetInfo返回参数结构体
      class DescribeCVMAssetInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: -
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Csip.v20221121.models.AssetBaseInfoResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AssetBaseInfoResponse.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCVMAssets请求参数结构体
      class DescribeCVMAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器参数
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :Filter

        def initialize(memberid=nil, filter=nil)
          @MemberId = memberid
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeCVMAssets返回参数结构体
      class DescribeCVMAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Data: 机器列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RegionList: 地域列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionList: Array
        # @param DefenseStatusList: 防护状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefenseStatusList: Array
        # @param VpcList: vpc枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcList: Array
        # @param AssetTypeList: 资产类型枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetTypeList: Array
        # @param SystemTypeList: 操作系统枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SystemTypeList: Array
        # @param IpTypeList: ip列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpTypeList: Array
        # @param AppIdList: appid列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppIdList: Array
        # @param ZoneList: 可用区列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneList: Array
        # @param OsList: os列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsList: Array
        # @param AssetMapInstanceTypeList: 资产类型和实例类型的对应关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetMapInstanceTypeList: Array
        # @param PublicPrivateAttr: 公网内网枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicPrivateAttr: Array
        # @param ProtectStatusList: 主机防护状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtectStatusList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :RegionList, :DefenseStatusList, :VpcList, :AssetTypeList, :SystemTypeList, :IpTypeList, :AppIdList, :ZoneList, :OsList, :AssetMapInstanceTypeList, :PublicPrivateAttr, :ProtectStatusList, :RequestId

        def initialize(total=nil, data=nil, regionlist=nil, defensestatuslist=nil, vpclist=nil, assettypelist=nil, systemtypelist=nil, iptypelist=nil, appidlist=nil, zonelist=nil, oslist=nil, assetmapinstancetypelist=nil, publicprivateattr=nil, protectstatuslist=nil, requestid=nil)
          @Total = total
          @Data = data
          @RegionList = regionlist
          @DefenseStatusList = defensestatuslist
          @VpcList = vpclist
          @AssetTypeList = assettypelist
          @SystemTypeList = systemtypelist
          @IpTypeList = iptypelist
          @AppIdList = appidlist
          @ZoneList = zonelist
          @OsList = oslist
          @AssetMapInstanceTypeList = assetmapinstancetypelist
          @PublicPrivateAttr = publicprivateattr
          @ProtectStatusList = protectstatuslist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              cvmassetvo_tmp = CVMAssetVO.new
              cvmassetvo_tmp.deserialize(i)
              @Data << cvmassetvo_tmp
            end
          end
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RegionList << filterdataobject_tmp
            end
          end
          unless params['DefenseStatusList'].nil?
            @DefenseStatusList = []
            params['DefenseStatusList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @DefenseStatusList << filterdataobject_tmp
            end
          end
          unless params['VpcList'].nil?
            @VpcList = []
            params['VpcList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VpcList << filterdataobject_tmp
            end
          end
          unless params['AssetTypeList'].nil?
            @AssetTypeList = []
            params['AssetTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AssetTypeList << filterdataobject_tmp
            end
          end
          unless params['SystemTypeList'].nil?
            @SystemTypeList = []
            params['SystemTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @SystemTypeList << filterdataobject_tmp
            end
          end
          unless params['IpTypeList'].nil?
            @IpTypeList = []
            params['IpTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @IpTypeList << filterdataobject_tmp
            end
          end
          unless params['AppIdList'].nil?
            @AppIdList = []
            params['AppIdList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AppIdList << filterdataobject_tmp
            end
          end
          unless params['ZoneList'].nil?
            @ZoneList = []
            params['ZoneList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @ZoneList << filterdataobject_tmp
            end
          end
          unless params['OsList'].nil?
            @OsList = []
            params['OsList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @OsList << filterdataobject_tmp
            end
          end
          unless params['AssetMapInstanceTypeList'].nil?
            @AssetMapInstanceTypeList = []
            params['AssetMapInstanceTypeList'].each do |i|
              assetinstancetypemap_tmp = AssetInstanceTypeMap.new
              assetinstancetypemap_tmp.deserialize(i)
              @AssetMapInstanceTypeList << assetinstancetypemap_tmp
            end
          end
          unless params['PublicPrivateAttr'].nil?
            @PublicPrivateAttr = []
            params['PublicPrivateAttr'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @PublicPrivateAttr << filterdataobject_tmp
            end
          end
          unless params['ProtectStatusList'].nil?
            @ProtectStatusList = []
            params['ProtectStatusList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @ProtectStatusList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterPodAssets请求参数结构体
      class DescribeClusterPodAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :Filter

        def initialize(memberid=nil, filter=nil)
          @MemberId = memberid
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeClusterPodAssets返回参数结构体
      class DescribeClusterPodAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 列表
        # @type Data: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param PodStatusList: 集群pod状态枚举
        # @type PodStatusList: Array
        # @param NamespaceList: 命名空间枚举
        # @type NamespaceList: Array
        # @param RegionList: 地域枚举
        # @type RegionList: Array
        # @param AppIdList: 租户枚举
        # @type AppIdList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :PodStatusList, :NamespaceList, :RegionList, :AppIdList, :RequestId

        def initialize(data=nil, totalcount=nil, podstatuslist=nil, namespacelist=nil, regionlist=nil, appidlist=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @PodStatusList = podstatuslist
          @NamespaceList = namespacelist
          @RegionList = regionlist
          @AppIdList = appidlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              assetclusterpod_tmp = AssetClusterPod.new
              assetclusterpod_tmp.deserialize(i)
              @Data << assetclusterpod_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['PodStatusList'].nil?
            @PodStatusList = []
            params['PodStatusList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @PodStatusList << filterdataobject_tmp
            end
          end
          unless params['NamespaceList'].nil?
            @NamespaceList = []
            params['NamespaceList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @NamespaceList << filterdataobject_tmp
            end
          end
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RegionList << filterdataobject_tmp
            end
          end
          unless params['AppIdList'].nil?
            @AppIdList = []
            params['AppIdList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AppIdList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDbAssetInfo请求参数结构体
      class DescribeDbAssetInfoRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产id
        # @type AssetId: String

        attr_accessor :AssetId

        def initialize(assetid=nil)
          @AssetId = assetid
        end

        def deserialize(params)
          @AssetId = params['AssetId']
        end
      end

      # DescribeDbAssetInfo返回参数结构体
      class DescribeDbAssetInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: db资产详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Csip.v20221121.models.DbAssetInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DbAssetInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDbAssets请求参数结构体
      class DescribeDbAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器参数
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param AssetTypes: 资产类型:MYSQL/MARIADB/REDIS/MONGODB/POSTGRES/CTS/ES/KAFKA/COS/CBS/CFS
        # @type AssetTypes: Array

        attr_accessor :MemberId, :Filter, :AssetTypes

        def initialize(memberid=nil, filter=nil, assettypes=nil)
          @MemberId = memberid
          @Filter = filter
          @AssetTypes = assettypes
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          @AssetTypes = params['AssetTypes']
        end
      end

      # DescribeDbAssets返回参数结构体
      class DescribeDbAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Data: 资产总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RegionList: 地域枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionList: Array
        # @param AssetTypeList: 资产类型枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetTypeList: Array
        # @param VpcList: Vpc枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcList: Array
        # @param AppIdList: Appid枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppIdList: Array
        # @param PublicPrivateAttr: 公网内网枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicPrivateAttr: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :RegionList, :AssetTypeList, :VpcList, :AppIdList, :PublicPrivateAttr, :RequestId

        def initialize(total=nil, data=nil, regionlist=nil, assettypelist=nil, vpclist=nil, appidlist=nil, publicprivateattr=nil, requestid=nil)
          @Total = total
          @Data = data
          @RegionList = regionlist
          @AssetTypeList = assettypelist
          @VpcList = vpclist
          @AppIdList = appidlist
          @PublicPrivateAttr = publicprivateattr
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              dbassetvo_tmp = DBAssetVO.new
              dbassetvo_tmp.deserialize(i)
              @Data << dbassetvo_tmp
            end
          end
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RegionList << filterdataobject_tmp
            end
          end
          unless params['AssetTypeList'].nil?
            @AssetTypeList = []
            params['AssetTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AssetTypeList << filterdataobject_tmp
            end
          end
          unless params['VpcList'].nil?
            @VpcList = []
            params['VpcList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VpcList << filterdataobject_tmp
            end
          end
          unless params['AppIdList'].nil?
            @AppIdList = []
            params['AppIdList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AppIdList << filterdataobject_tmp
            end
          end
          unless params['PublicPrivateAttr'].nil?
            @PublicPrivateAttr = []
            params['PublicPrivateAttr'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @PublicPrivateAttr << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainAssets请求参数结构体
      class DescribeDomainAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器参数
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 安全中心自定义标签
        # @type Tags: Array

        attr_accessor :MemberId, :Filter, :Tags

        def initialize(memberid=nil, filter=nil, tags=nil)
          @MemberId = memberid
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeDomainAssets返回参数结构体
      class DescribeDomainAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Data: 域名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param DefenseStatusList: 防护状态列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefenseStatusList: Array
        # @param AssetLocationList: 资产归属地列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetLocationList: Array
        # @param SourceTypeList: 资产类型列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceTypeList: Array
        # @param RegionList: 地域列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :DefenseStatusList, :AssetLocationList, :SourceTypeList, :RegionList, :RequestId

        def initialize(total=nil, data=nil, defensestatuslist=nil, assetlocationlist=nil, sourcetypelist=nil, regionlist=nil, requestid=nil)
          @Total = total
          @Data = data
          @DefenseStatusList = defensestatuslist
          @AssetLocationList = assetlocationlist
          @SourceTypeList = sourcetypelist
          @RegionList = regionlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              domainassetvo_tmp = DomainAssetVO.new
              domainassetvo_tmp.deserialize(i)
              @Data << domainassetvo_tmp
            end
          end
          unless params['DefenseStatusList'].nil?
            @DefenseStatusList = []
            params['DefenseStatusList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @DefenseStatusList << filterdataobject_tmp
            end
          end
          unless params['AssetLocationList'].nil?
            @AssetLocationList = []
            params['AssetLocationList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AssetLocationList << filterdataobject_tmp
            end
          end
          unless params['SourceTypeList'].nil?
            @SourceTypeList = []
            params['SourceTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @SourceTypeList << filterdataobject_tmp
            end
          end
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RegionList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGatewayAssets请求参数结构体
      class DescribeGatewayAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤参数
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :Filter

        def initialize(memberid=nil, filter=nil)
          @MemberId = memberid
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeGatewayAssets返回参数结构体
      class DescribeGatewayAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 列表
        # @type Data: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RegionList: 地域列表
        # @type RegionList: Array
        # @param AssetTypeList: 资产类型列表
        # @type AssetTypeList: Array
        # @param VpcList: vpc列表
        # @type VpcList: Array
        # @param AppIdList: appid列表
        # @type AppIdList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RegionList, :AssetTypeList, :VpcList, :AppIdList, :RequestId

        def initialize(data=nil, totalcount=nil, regionlist=nil, assettypelist=nil, vpclist=nil, appidlist=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RegionList = regionlist
          @AssetTypeList = assettypelist
          @VpcList = vpclist
          @AppIdList = appidlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              gatewayasset_tmp = GateWayAsset.new
              gatewayasset_tmp.deserialize(i)
              @Data << gatewayasset_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RegionList << filterdataobject_tmp
            end
          end
          unless params['AssetTypeList'].nil?
            @AssetTypeList = []
            params['AssetTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AssetTypeList << filterdataobject_tmp
            end
          end
          unless params['VpcList'].nil?
            @VpcList = []
            params['VpcList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VpcList << filterdataobject_tmp
            end
          end
          unless params['AppIdList'].nil?
            @AppIdList = []
            params['AppIdList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AppIdList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeListenerList请求参数结构体
      class DescribeListenerListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器参数
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :Filter

        def initialize(memberid=nil, filter=nil)
          @MemberId = memberid
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeListenerList返回参数结构体
      class DescribeListenerListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Data: 监听器列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :RequestId

        def initialize(total=nil, data=nil, requestid=nil)
          @Total = total
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              clblistenerlistinfo_tmp = ClbListenerListInfo.new
              clblistenerlistinfo_tmp.deserialize(i)
              @Data << clblistenerlistinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNICAssets请求参数结构体
      class DescribeNICAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤参数
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :Filter

        def initialize(memberid=nil, filter=nil)
          @MemberId = memberid
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeNICAssets返回参数结构体
      class DescribeNICAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 列表
        # @type Data: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RegionList: 地域列表
        # @type RegionList: Array
        # @param AssetTypeList: 资产类型列表
        # @type AssetTypeList: Array
        # @param VpcList: vpc列表
        # @type VpcList: Array
        # @param AppIdList: appid列表
        # @type AppIdList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RegionList, :AssetTypeList, :VpcList, :AppIdList, :RequestId

        def initialize(data=nil, totalcount=nil, regionlist=nil, assettypelist=nil, vpclist=nil, appidlist=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RegionList = regionlist
          @AssetTypeList = assettypelist
          @VpcList = vpclist
          @AppIdList = appidlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              nicasset_tmp = NICAsset.new
              nicasset_tmp.deserialize(i)
              @Data << nicasset_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RegionList << filterdataobject_tmp
            end
          end
          unless params['AssetTypeList'].nil?
            @AssetTypeList = []
            params['AssetTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AssetTypeList << filterdataobject_tmp
            end
          end
          unless params['VpcList'].nil?
            @VpcList = []
            params['VpcList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VpcList << filterdataobject_tmp
            end
          end
          unless params['AppIdList'].nil?
            @AppIdList = []
            params['AppIdList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AppIdList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganizationUserInfo请求参数结构体
      class DescribeOrganizationUserInfoRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param NotSupportCloud: 不支持多云
        # @type NotSupportCloud: Boolean

        attr_accessor :MemberId, :Filter, :NotSupportCloud

        def initialize(memberid=nil, filter=nil, notsupportcloud=nil)
          @MemberId = memberid
          @Filter = filter
          @NotSupportCloud = notsupportcloud
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          @NotSupportCloud = params['NotSupportCloud']
        end
      end

      # DescribeOrganizationUserInfo返回参数结构体
      class DescribeOrganizationUserInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 集团用户列表
        # @type Data: Array
        # @param JoinTypeLst: 加入方式枚举
        # @type JoinTypeLst: Array
        # @param CloudTypeLst: 云厂商枚举
        # @type CloudTypeLst: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :JoinTypeLst, :CloudTypeLst, :RequestId

        def initialize(totalcount=nil, data=nil, jointypelst=nil, cloudtypelst=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @JoinTypeLst = jointypelst
          @CloudTypeLst = cloudtypelst
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              organizationuserinfo_tmp = OrganizationUserInfo.new
              organizationuserinfo_tmp.deserialize(i)
              @Data << organizationuserinfo_tmp
            end
          end
          unless params['JoinTypeLst'].nil?
            @JoinTypeLst = []
            params['JoinTypeLst'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @JoinTypeLst << filterdataobject_tmp
            end
          end
          unless params['CloudTypeLst'].nil?
            @CloudTypeLst = []
            params['CloudTypeLst'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @CloudTypeLst << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePublicIpAssets请求参数结构体
      class DescribePublicIpAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器参数
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 安全中心自定义标签
        # @type Tags: Array

        attr_accessor :MemberId, :Filter, :Tags

        def initialize(memberid=nil, filter=nil, tags=nil)
          @MemberId = memberid
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribePublicIpAssets返回参数结构体
      class DescribePublicIpAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param AssetLocationList: 资产归属地
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetLocationList: Array
        # @param IpTypeList: ip列表枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpTypeList: Array
        # @param RegionList: 地域列表枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionList: Array
        # @param DefenseStatusList: 防护枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefenseStatusList: Array
        # @param AssetTypeList: 资产类型枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetTypeList: Array
        # @param AppIdList: AppId枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppIdList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :AssetLocationList, :IpTypeList, :RegionList, :DefenseStatusList, :AssetTypeList, :AppIdList, :RequestId

        def initialize(data=nil, total=nil, assetlocationlist=nil, iptypelist=nil, regionlist=nil, defensestatuslist=nil, assettypelist=nil, appidlist=nil, requestid=nil)
          @Data = data
          @Total = total
          @AssetLocationList = assetlocationlist
          @IpTypeList = iptypelist
          @RegionList = regionlist
          @DefenseStatusList = defensestatuslist
          @AssetTypeList = assettypelist
          @AppIdList = appidlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              ipassetlistvo_tmp = IpAssetListVO.new
              ipassetlistvo_tmp.deserialize(i)
              @Data << ipassetlistvo_tmp
            end
          end
          @Total = params['Total']
          unless params['AssetLocationList'].nil?
            @AssetLocationList = []
            params['AssetLocationList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AssetLocationList << filterdataobject_tmp
            end
          end
          unless params['IpTypeList'].nil?
            @IpTypeList = []
            params['IpTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @IpTypeList << filterdataobject_tmp
            end
          end
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RegionList << filterdataobject_tmp
            end
          end
          unless params['DefenseStatusList'].nil?
            @DefenseStatusList = []
            params['DefenseStatusList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @DefenseStatusList << filterdataobject_tmp
            end
          end
          unless params['AssetTypeList'].nil?
            @AssetTypeList = []
            params['AssetTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AssetTypeList << filterdataobject_tmp
            end
          end
          unless params['AppIdList'].nil?
            @AppIdList = []
            params['AppIdList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AppIdList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskCenterAssetViewCFGRiskList请求参数结构体
      class DescribeRiskCenterAssetViewCFGRiskListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :MemberId, :Filter, :Tags

        def initialize(memberid=nil, filter=nil, tags=nil)
          @MemberId = memberid
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeRiskCenterAssetViewCFGRiskList返回参数结构体
      class DescribeRiskCenterAssetViewCFGRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 资产视角的配置风险列表
        # @type Data: Array
        # @param StatusLists: 状态列表
        # @type StatusLists: Array
        # @param LevelLists: 危险等级列表
        # @type LevelLists: Array
        # @param CFGNameLists: 配置名列表
        # @type CFGNameLists: Array
        # @param CheckTypeLists: 检查类型列表
        # @type CheckTypeLists: Array
        # @param InstanceTypeLists: 资产类型列表
        # @type InstanceTypeLists: Array
        # @param FromLists: 来源列表
        # @type FromLists: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :StatusLists, :LevelLists, :CFGNameLists, :CheckTypeLists, :InstanceTypeLists, :FromLists, :RequestId

        def initialize(totalcount=nil, data=nil, statuslists=nil, levellists=nil, cfgnamelists=nil, checktypelists=nil, instancetypelists=nil, fromlists=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @StatusLists = statuslists
          @LevelLists = levellists
          @CFGNameLists = cfgnamelists
          @CheckTypeLists = checktypelists
          @InstanceTypeLists = instancetypelists
          @FromLists = fromlists
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              assetviewcfgrisk_tmp = AssetViewCFGRisk.new
              assetviewcfgrisk_tmp.deserialize(i)
              @Data << assetviewcfgrisk_tmp
            end
          end
          unless params['StatusLists'].nil?
            @StatusLists = []
            params['StatusLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @StatusLists << filterdataobject_tmp
            end
          end
          unless params['LevelLists'].nil?
            @LevelLists = []
            params['LevelLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @LevelLists << filterdataobject_tmp
            end
          end
          unless params['CFGNameLists'].nil?
            @CFGNameLists = []
            params['CFGNameLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @CFGNameLists << filterdataobject_tmp
            end
          end
          unless params['CheckTypeLists'].nil?
            @CheckTypeLists = []
            params['CheckTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @CheckTypeLists << filterdataobject_tmp
            end
          end
          unless params['InstanceTypeLists'].nil?
            @InstanceTypeLists = []
            params['InstanceTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @InstanceTypeLists << filterdataobject_tmp
            end
          end
          unless params['FromLists'].nil?
            @FromLists = []
            params['FromLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @FromLists << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskCenterAssetViewPortRiskList请求参数结构体
      class DescribeRiskCenterAssetViewPortRiskListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :MemberId, :Filter, :Tags

        def initialize(memberid=nil, filter=nil, tags=nil)
          @MemberId = memberid
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeRiskCenterAssetViewPortRiskList返回参数结构体
      class DescribeRiskCenterAssetViewPortRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 资产视角的配置风险列表
        # @type Data: Array
        # @param StatusLists: 状态列表
        # @type StatusLists: Array
        # @param LevelLists: 危险等级列表
        # @type LevelLists: Array
        # @param SuggestionLists: 建议列表
        # @type SuggestionLists: Array
        # @param InstanceTypeLists: 资产类型列表
        # @type InstanceTypeLists: Array
        # @param FromLists: 来源列表
        # @type FromLists: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :StatusLists, :LevelLists, :SuggestionLists, :InstanceTypeLists, :FromLists, :RequestId

        def initialize(totalcount=nil, data=nil, statuslists=nil, levellists=nil, suggestionlists=nil, instancetypelists=nil, fromlists=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @StatusLists = statuslists
          @LevelLists = levellists
          @SuggestionLists = suggestionlists
          @InstanceTypeLists = instancetypelists
          @FromLists = fromlists
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              assetviewportrisk_tmp = AssetViewPortRisk.new
              assetviewportrisk_tmp.deserialize(i)
              @Data << assetviewportrisk_tmp
            end
          end
          unless params['StatusLists'].nil?
            @StatusLists = []
            params['StatusLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @StatusLists << filterdataobject_tmp
            end
          end
          unless params['LevelLists'].nil?
            @LevelLists = []
            params['LevelLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @LevelLists << filterdataobject_tmp
            end
          end
          unless params['SuggestionLists'].nil?
            @SuggestionLists = []
            params['SuggestionLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @SuggestionLists << filterdataobject_tmp
            end
          end
          unless params['InstanceTypeLists'].nil?
            @InstanceTypeLists = []
            params['InstanceTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @InstanceTypeLists << filterdataobject_tmp
            end
          end
          unless params['FromLists'].nil?
            @FromLists = []
            params['FromLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @FromLists << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskCenterAssetViewVULRiskList请求参数结构体
      class DescribeRiskCenterAssetViewVULRiskListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :MemberId, :Filter, :Tags

        def initialize(memberid=nil, filter=nil, tags=nil)
          @MemberId = memberid
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeRiskCenterAssetViewVULRiskList返回参数结构体
      class DescribeRiskCenterAssetViewVULRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 资产视角的漏洞风险列表
        # @type Data: Array
        # @param StatusLists: 状态列表
        # @type StatusLists: Array
        # @param LevelLists: 危险等级列表
        # @type LevelLists: Array
        # @param FromLists: 来源列表
        # @type FromLists: Array
        # @param VULTypeLists: 漏洞类型列表
        # @type VULTypeLists: Array
        # @param InstanceTypeLists: 资产类型列表
        # @type InstanceTypeLists: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :StatusLists, :LevelLists, :FromLists, :VULTypeLists, :InstanceTypeLists, :RequestId

        def initialize(totalcount=nil, data=nil, statuslists=nil, levellists=nil, fromlists=nil, vultypelists=nil, instancetypelists=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @StatusLists = statuslists
          @LevelLists = levellists
          @FromLists = fromlists
          @VULTypeLists = vultypelists
          @InstanceTypeLists = instancetypelists
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              assetviewvulrisk_tmp = AssetViewVULRisk.new
              assetviewvulrisk_tmp.deserialize(i)
              @Data << assetviewvulrisk_tmp
            end
          end
          unless params['StatusLists'].nil?
            @StatusLists = []
            params['StatusLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @StatusLists << filterdataobject_tmp
            end
          end
          unless params['LevelLists'].nil?
            @LevelLists = []
            params['LevelLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @LevelLists << filterdataobject_tmp
            end
          end
          unless params['FromLists'].nil?
            @FromLists = []
            params['FromLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @FromLists << filterdataobject_tmp
            end
          end
          unless params['VULTypeLists'].nil?
            @VULTypeLists = []
            params['VULTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VULTypeLists << filterdataobject_tmp
            end
          end
          unless params['InstanceTypeLists'].nil?
            @InstanceTypeLists = []
            params['InstanceTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @InstanceTypeLists << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskCenterAssetViewWeakPasswordRiskList请求参数结构体
      class DescribeRiskCenterAssetViewWeakPasswordRiskListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :MemberId, :Filter, :Tags

        def initialize(memberid=nil, filter=nil, tags=nil)
          @MemberId = memberid
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeRiskCenterAssetViewWeakPasswordRiskList返回参数结构体
      class DescribeRiskCenterAssetViewWeakPasswordRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 风险列表
        # @type Data: Array
        # @param StatusLists: 状态列表
        # @type StatusLists: Array
        # @param LevelLists: 危险等级列表
        # @type LevelLists: Array
        # @param FromLists: 来源列表
        # @type FromLists: Array
        # @param InstanceTypeLists: 资产类型列表
        # @type InstanceTypeLists: Array
        # @param PasswordTypeLists: 弱口令类型列表
        # @type PasswordTypeLists: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :StatusLists, :LevelLists, :FromLists, :InstanceTypeLists, :PasswordTypeLists, :RequestId

        def initialize(totalcount=nil, data=nil, statuslists=nil, levellists=nil, fromlists=nil, instancetypelists=nil, passwordtypelists=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @StatusLists = statuslists
          @LevelLists = levellists
          @FromLists = fromlists
          @InstanceTypeLists = instancetypelists
          @PasswordTypeLists = passwordtypelists
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              assetviewweakpassrisk_tmp = AssetViewWeakPassRisk.new
              assetviewweakpassrisk_tmp.deserialize(i)
              @Data << assetviewweakpassrisk_tmp
            end
          end
          unless params['StatusLists'].nil?
            @StatusLists = []
            params['StatusLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @StatusLists << filterdataobject_tmp
            end
          end
          unless params['LevelLists'].nil?
            @LevelLists = []
            params['LevelLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @LevelLists << filterdataobject_tmp
            end
          end
          unless params['FromLists'].nil?
            @FromLists = []
            params['FromLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @FromLists << filterdataobject_tmp
            end
          end
          unless params['InstanceTypeLists'].nil?
            @InstanceTypeLists = []
            params['InstanceTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @InstanceTypeLists << filterdataobject_tmp
            end
          end
          unless params['PasswordTypeLists'].nil?
            @PasswordTypeLists = []
            params['PasswordTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @PasswordTypeLists << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskCenterPortViewPortRiskList请求参数结构体
      class DescribeRiskCenterPortViewPortRiskListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :MemberId, :Filter, :Tags

        def initialize(memberid=nil, filter=nil, tags=nil)
          @MemberId = memberid
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeRiskCenterPortViewPortRiskList返回参数结构体
      class DescribeRiskCenterPortViewPortRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 端口视角的端口风险列表
        # @type Data: Array
        # @param LevelLists: 危险等级列表
        # @type LevelLists: Array
        # @param SuggestionLists: 处置建议列表
        # @type SuggestionLists: Array
        # @param FromLists: 来源列表
        # @type FromLists: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :LevelLists, :SuggestionLists, :FromLists, :RequestId

        def initialize(totalcount=nil, data=nil, levellists=nil, suggestionlists=nil, fromlists=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @LevelLists = levellists
          @SuggestionLists = suggestionlists
          @FromLists = fromlists
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              portviewportrisk_tmp = PortViewPortRisk.new
              portviewportrisk_tmp.deserialize(i)
              @Data << portviewportrisk_tmp
            end
          end
          unless params['LevelLists'].nil?
            @LevelLists = []
            params['LevelLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @LevelLists << filterdataobject_tmp
            end
          end
          unless params['SuggestionLists'].nil?
            @SuggestionLists = []
            params['SuggestionLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @SuggestionLists << filterdataobject_tmp
            end
          end
          unless params['FromLists'].nil?
            @FromLists = []
            params['FromLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @FromLists << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskCenterServerRiskList请求参数结构体
      class DescribeRiskCenterServerRiskListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :MemberId, :Filter, :Tags

        def initialize(memberid=nil, filter=nil, tags=nil)
          @MemberId = memberid
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeRiskCenterServerRiskList返回参数结构体
      class DescribeRiskCenterServerRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 风险服务列表
        # @type Data: Array
        # @param InstanceTypeLists: 资产类型枚举
        # @type InstanceTypeLists: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :InstanceTypeLists, :RequestId

        def initialize(totalcount=nil, data=nil, instancetypelists=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @InstanceTypeLists = instancetypelists
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              serverrisk_tmp = ServerRisk.new
              serverrisk_tmp.deserialize(i)
              @Data << serverrisk_tmp
            end
          end
          unless params['InstanceTypeLists'].nil?
            @InstanceTypeLists = []
            params['InstanceTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @InstanceTypeLists << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskCenterVULViewVULRiskList请求参数结构体
      class DescribeRiskCenterVULViewVULRiskListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :MemberId, :Filter, :Tags

        def initialize(memberid=nil, filter=nil, tags=nil)
          @MemberId = memberid
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeRiskCenterVULViewVULRiskList返回参数结构体
      class DescribeRiskCenterVULViewVULRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 漏洞产视角的漏洞风险列表
        # @type Data: Array
        # @param LevelLists: 危险等级列表
        # @type LevelLists: Array
        # @param FromLists: 来源列表
        # @type FromLists: Array
        # @param VULTypeLists: 漏洞类型列表
        # @type VULTypeLists: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :LevelLists, :FromLists, :VULTypeLists, :RequestId

        def initialize(totalcount=nil, data=nil, levellists=nil, fromlists=nil, vultypelists=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @LevelLists = levellists
          @FromLists = fromlists
          @VULTypeLists = vultypelists
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              vulviewvulrisk_tmp = VULViewVULRisk.new
              vulviewvulrisk_tmp.deserialize(i)
              @Data << vulviewvulrisk_tmp
            end
          end
          unless params['LevelLists'].nil?
            @LevelLists = []
            params['LevelLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @LevelLists << filterdataobject_tmp
            end
          end
          unless params['FromLists'].nil?
            @FromLists = []
            params['FromLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @FromLists << filterdataobject_tmp
            end
          end
          unless params['VULTypeLists'].nil?
            @VULTypeLists = []
            params['VULTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VULTypeLists << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskCenterWebsiteRiskList请求参数结构体
      class DescribeRiskCenterWebsiteRiskListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :MemberId, :Filter, :Tags

        def initialize(memberid=nil, filter=nil, tags=nil)
          @MemberId = memberid
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeRiskCenterWebsiteRiskList返回参数结构体
      class DescribeRiskCenterWebsiteRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 内容风险列表
        # @type Data: Array
        # @param StatusLists: 状态列表
        # @type StatusLists: Array
        # @param LevelLists: 危险等级列表
        # @type LevelLists: Array
        # @param InstanceTypeLists: 资产类型列表
        # @type InstanceTypeLists: Array
        # @param DetectEngineLists: 风险类型列表
        # @type DetectEngineLists: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :StatusLists, :LevelLists, :InstanceTypeLists, :DetectEngineLists, :RequestId

        def initialize(totalcount=nil, data=nil, statuslists=nil, levellists=nil, instancetypelists=nil, detectenginelists=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @StatusLists = statuslists
          @LevelLists = levellists
          @InstanceTypeLists = instancetypelists
          @DetectEngineLists = detectenginelists
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              websiterisk_tmp = WebsiteRisk.new
              websiterisk_tmp.deserialize(i)
              @Data << websiterisk_tmp
            end
          end
          unless params['StatusLists'].nil?
            @StatusLists = []
            params['StatusLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @StatusLists << filterdataobject_tmp
            end
          end
          unless params['LevelLists'].nil?
            @LevelLists = []
            params['LevelLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @LevelLists << filterdataobject_tmp
            end
          end
          unless params['InstanceTypeLists'].nil?
            @InstanceTypeLists = []
            params['InstanceTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @InstanceTypeLists << filterdataobject_tmp
            end
          end
          unless params['DetectEngineLists'].nil?
            @DetectEngineLists = []
            params['DetectEngineLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @DetectEngineLists << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanReportList请求参数结构体
      class DescribeScanReportListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 列表过滤条件
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :Filter

        def initialize(memberid=nil, filter=nil)
          @MemberId = memberid
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeScanReportList返回参数结构体
      class DescribeScanReportListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 任务日志列表
        # @type Data: Array
        # @param UINList: 主账户ID列表
        # @type UINList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :UINList, :RequestId

        def initialize(totalcount=nil, data=nil, uinlist=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @UINList = uinlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              scantaskinfo_tmp = ScanTaskInfo.new
              scantaskinfo_tmp.deserialize(i)
              @Data << scantaskinfo_tmp
            end
          end
          @UINList = params['UINList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanTaskList请求参数结构体
      class DescribeScanTaskListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :MemberId, :Filter, :Tags

        def initialize(memberid=nil, filter=nil, tags=nil)
          @MemberId = memberid
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tags_tmp = Tags.new
              tags_tmp.deserialize(i)
              @Tags << tags_tmp
            end
          end
        end
      end

      # DescribeScanTaskList返回参数结构体
      class DescribeScanTaskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 任务日志列表
        # @type Data: Array
        # @param UINList: 主账户ID列表
        # @type UINList: Array
        # @param TaskModeList: 体检模式过滤列表
        # @type TaskModeList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :UINList, :TaskModeList, :RequestId

        def initialize(totalcount=nil, data=nil, uinlist=nil, taskmodelist=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @UINList = uinlist
          @TaskModeList = taskmodelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              scantaskinfolist_tmp = ScanTaskInfoList.new
              scantaskinfolist_tmp.deserialize(i)
              @Data << scantaskinfolist_tmp
            end
          end
          @UINList = params['UINList']
          unless params['TaskModeList'].nil?
            @TaskModeList = []
            params['TaskModeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @TaskModeList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSearchBugInfo请求参数结构体
      class DescribeSearchBugInfoRequest < TencentCloud::Common::AbstractModel
        # @param Id: 无
        # @type Id: String
        # @param CVEId: id=3时传入该参数
        # @type CVEId: String

        attr_accessor :Id, :CVEId

        def initialize(id=nil, cveid=nil)
          @Id = id
          @CVEId = cveid
        end

        def deserialize(params)
          @Id = params['Id']
          @CVEId = params['CVEId']
        end
      end

      # DescribeSearchBugInfo返回参数结构体
      class DescribeSearchBugInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 漏洞信息和资产信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Csip.v20221121.models.DataSearchBug`
        # @param ReturnCode: 状态值，0：查询成功，非0：查询失败
        # @type ReturnCode: Integer
        # @param ReturnMsg: 状态信息，success：查询成功，fail：查询失败
        # @type ReturnMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :ReturnCode, :ReturnMsg, :RequestId

        def initialize(data=nil, returncode=nil, returnmsg=nil, requestid=nil)
          @Data = data
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DataSearchBug.new
            @Data.deserialize(params['Data'])
          end
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubnetAssets请求参数结构体
      class DescribeSubnetAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤参数
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :Filter

        def initialize(memberid=nil, filter=nil)
          @MemberId = memberid
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeSubnetAssets返回参数结构体
      class DescribeSubnetAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 列表
        # @type Data: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RegionList: 地域列表
        # @type RegionList: Array
        # @param VpcList: vpc列表
        # @type VpcList: Array
        # @param AppIdList: appid列表
        # @type AppIdList: Array
        # @param ZoneList: 可用区列表
        # @type ZoneList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RegionList, :VpcList, :AppIdList, :ZoneList, :RequestId

        def initialize(data=nil, totalcount=nil, regionlist=nil, vpclist=nil, appidlist=nil, zonelist=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RegionList = regionlist
          @VpcList = vpclist
          @AppIdList = appidlist
          @ZoneList = zonelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              subnetasset_tmp = SubnetAsset.new
              subnetasset_tmp.deserialize(i)
              @Data << subnetasset_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RegionList << filterdataobject_tmp
            end
          end
          unless params['VpcList'].nil?
            @VpcList = []
            params['VpcList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VpcList << filterdataobject_tmp
            end
          end
          unless params['AppIdList'].nil?
            @AppIdList = []
            params['AppIdList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AppIdList << filterdataobject_tmp
            end
          end
          unless params['ZoneList'].nil?
            @ZoneList = []
            params['ZoneList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @ZoneList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskLogList请求参数结构体
      class DescribeTaskLogListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :Filter

        def initialize(memberid=nil, filter=nil)
          @MemberId = memberid
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeTaskLogList返回参数结构体
      class DescribeTaskLogListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 报告列表
        # @type Data: Array
        # @param NotViewNumber: 待查看数量
        # @type NotViewNumber: Integer
        # @param ReportTemplateNumber: 报告模板数
        # @type ReportTemplateNumber: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :NotViewNumber, :ReportTemplateNumber, :RequestId

        def initialize(totalcount=nil, data=nil, notviewnumber=nil, reporttemplatenumber=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @NotViewNumber = notviewnumber
          @ReportTemplateNumber = reporttemplatenumber
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              taskloginfo_tmp = TaskLogInfo.new
              taskloginfo_tmp.deserialize(i)
              @Data << taskloginfo_tmp
            end
          end
          @NotViewNumber = params['NotViewNumber']
          @ReportTemplateNumber = params['ReportTemplateNumber']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskLogURL请求参数结构体
      class DescribeTaskLogURLRequest < TencentCloud::Common::AbstractModel
        # @param Type: 0: 预览， 1: 下载
        # @type Type: Integer
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param ReportItemKeyList: 任务报告Id 列表
        # @type ReportItemKeyList: Array
        # @param ReportTaskIdList: 报告中任务id列表
        # @type ReportTaskIdList: Array

        attr_accessor :Type, :MemberId, :ReportItemKeyList, :ReportTaskIdList

        def initialize(type=nil, memberid=nil, reportitemkeylist=nil, reporttaskidlist=nil)
          @Type = type
          @MemberId = memberid
          @ReportItemKeyList = reportitemkeylist
          @ReportTaskIdList = reporttaskidlist
        end

        def deserialize(params)
          @Type = params['Type']
          @MemberId = params['MemberId']
          unless params['ReportItemKeyList'].nil?
            @ReportItemKeyList = []
            params['ReportItemKeyList'].each do |i|
              reportitemkey_tmp = ReportItemKey.new
              reportitemkey_tmp.deserialize(i)
              @ReportItemKeyList << reportitemkey_tmp
            end
          end
          unless params['ReportTaskIdList'].nil?
            @ReportTaskIdList = []
            params['ReportTaskIdList'].each do |i|
              reporttaskidlist_tmp = ReportTaskIdList.new
              reporttaskidlist_tmp.deserialize(i)
              @ReportTaskIdList << reporttaskidlist_tmp
            end
          end
        end
      end

      # DescribeTaskLogURL返回参数结构体
      class DescribeTaskLogURLResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回报告临时下载url
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              tasklogurl_tmp = TaskLogURL.new
              tasklogurl_tmp.deserialize(i)
              @Data << tasklogurl_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopAttackInfo请求参数结构体
      class DescribeTopAttackInfoRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param OperatedMemberId: 被调用的集团账号的成员id
        # @type OperatedMemberId: Array

        attr_accessor :MemberId, :OperatedMemberId

        def initialize(memberid=nil, operatedmemberid=nil)
          @MemberId = memberid
          @OperatedMemberId = operatedmemberid
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @OperatedMemberId = params['OperatedMemberId']
        end
      end

      # DescribeTopAttackInfo返回参数结构体
      class DescribeTopAttackInfoResponse < TencentCloud::Common::AbstractModel
        # @param TopAttackInfo: Top攻击类型/攻击者次数
        # @type TopAttackInfo: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopAttackInfo, :RequestId

        def initialize(topattackinfo=nil, requestid=nil)
          @TopAttackInfo = topattackinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TopAttackInfo'].nil?
            @TopAttackInfo = []
            params['TopAttackInfo'].each do |i|
              tagcount_tmp = TagCount.new
              tagcount_tmp.deserialize(i)
              @TopAttackInfo << tagcount_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVULRiskAdvanceCFGList请求参数结构体
      class DescribeVULRiskAdvanceCFGListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param Filter: 过滤条件
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :TaskId, :Filter

        def initialize(memberid=nil, taskid=nil, filter=nil)
          @MemberId = memberid
          @TaskId = taskid
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @TaskId = params['TaskId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeVULRiskAdvanceCFGList返回参数结构体
      class DescribeVULRiskAdvanceCFGListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 配置项列表
        # @type Data: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RiskLevelLists: 风险等级过滤列表
        # @type RiskLevelLists: Array
        # @param VULTypeLists: 漏洞类型过滤列表
        # @type VULTypeLists: Array
        # @param CheckFromLists: 识别来源过滤列表
        # @type CheckFromLists: Array
        # @param VulTagList: 漏洞标签列表
        # @type VulTagList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RiskLevelLists, :VULTypeLists, :CheckFromLists, :VulTagList, :RequestId

        def initialize(data=nil, totalcount=nil, risklevellists=nil, vultypelists=nil, checkfromlists=nil, vultaglist=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RiskLevelLists = risklevellists
          @VULTypeLists = vultypelists
          @CheckFromLists = checkfromlists
          @VulTagList = vultaglist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              vulriskadvancecfglist_tmp = VULRiskAdvanceCFGList.new
              vulriskadvancecfglist_tmp.deserialize(i)
              @Data << vulriskadvancecfglist_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['RiskLevelLists'].nil?
            @RiskLevelLists = []
            params['RiskLevelLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RiskLevelLists << filterdataobject_tmp
            end
          end
          unless params['VULTypeLists'].nil?
            @VULTypeLists = []
            params['VULTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VULTypeLists << filterdataobject_tmp
            end
          end
          unless params['CheckFromLists'].nil?
            @CheckFromLists = []
            params['CheckFromLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @CheckFromLists << filterdataobject_tmp
            end
          end
          unless params['VulTagList'].nil?
            @VulTagList = []
            params['VulTagList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VulTagList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVULRiskDetail请求参数结构体
      class DescribeVULRiskDetailRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param RiskId: 风险id
        # @type RiskId: String
        # @param PCMGRId: pcMgrId
        # @type PCMGRId: String

        attr_accessor :MemberId, :RiskId, :PCMGRId

        def initialize(memberid=nil, riskid=nil, pcmgrid=nil)
          @MemberId = memberid
          @RiskId = riskid
          @PCMGRId = pcmgrid
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @RiskId = params['RiskId']
          @PCMGRId = params['PCMGRId']
        end
      end

      # DescribeVULRiskDetail返回参数结构体
      class DescribeVULRiskDetailResponse < TencentCloud::Common::AbstractModel
        # @param ServiceSupport: 安全产品支持情况
        # @type ServiceSupport: Array
        # @param VulTrend: 漏洞趋势
        # @type VulTrend: Array
        # @param VulData: 漏洞补充信息
        # @type VulData: :class:`Tencentcloud::Csip.v20221121.models.VULRiskInfo`
        # @param QuestionId: 小助手问答id
        # @type QuestionId: String
        # @param SessionId: 会话id
        # @type SessionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceSupport, :VulTrend, :VulData, :QuestionId, :SessionId, :RequestId

        def initialize(servicesupport=nil, vultrend=nil, vuldata=nil, questionid=nil, sessionid=nil, requestid=nil)
          @ServiceSupport = servicesupport
          @VulTrend = vultrend
          @VulData = vuldata
          @QuestionId = questionid
          @SessionId = sessionid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ServiceSupport'].nil?
            @ServiceSupport = []
            params['ServiceSupport'].each do |i|
              servicesupport_tmp = ServiceSupport.new
              servicesupport_tmp.deserialize(i)
              @ServiceSupport << servicesupport_tmp
            end
          end
          unless params['VulTrend'].nil?
            @VulTrend = []
            params['VulTrend'].each do |i|
              vultrend_tmp = VulTrend.new
              vultrend_tmp.deserialize(i)
              @VulTrend << vultrend_tmp
            end
          end
          unless params['VulData'].nil?
            @VulData = VULRiskInfo.new
            @VulData.deserialize(params['VulData'])
          end
          @QuestionId = params['QuestionId']
          @SessionId = params['SessionId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcAssets请求参数结构体
      class DescribeVpcAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤参数
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :Filter

        def initialize(memberid=nil, filter=nil)
          @MemberId = memberid
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeVpcAssets返回参数结构体
      class DescribeVpcAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 列表
        # @type Data: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param VpcList: vpc列表
        # @type VpcList: Array
        # @param RegionList: 地域列表
        # @type RegionList: Array
        # @param AppIdList: appid列表
        # @type AppIdList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :VpcList, :RegionList, :AppIdList, :RequestId

        def initialize(data=nil, totalcount=nil, vpclist=nil, regionlist=nil, appidlist=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @VpcList = vpclist
          @RegionList = regionlist
          @AppIdList = appidlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              vpc_tmp = Vpc.new
              vpc_tmp.deserialize(i)
              @Data << vpc_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['VpcList'].nil?
            @VpcList = []
            params['VpcList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VpcList << filterdataobject_tmp
            end
          end
          unless params['RegionList'].nil?
            @RegionList = []
            params['RegionList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RegionList << filterdataobject_tmp
            end
          end
          unless params['AppIdList'].nil?
            @AppIdList = []
            params['AppIdList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AppIdList << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulViewVulRiskList请求参数结构体
      class DescribeVulViewVulRiskListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤内容
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param Tags: 资产标签
        # @type Tags: Array

        attr_accessor :MemberId, :Filter, :Tags

        def initialize(memberid=nil, filter=nil, tags=nil)
          @MemberId = memberid
          @Filter = filter
          @Tags = tags
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettag_tmp = AssetTag.new
              assettag_tmp.deserialize(i)
              @Tags << assettag_tmp
            end
          end
        end
      end

      # DescribeVulViewVulRiskList返回参数结构体
      class DescribeVulViewVulRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 漏洞产视角的漏洞风险列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param LevelLists: 危险等级列表
        # @type LevelLists: Array
        # @param FromLists: 来源列表
        # @type FromLists: Array
        # @param VULTypeLists: 漏洞类型列表
        # @type VULTypeLists: Array
        # @param Tags: tag枚举
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :LevelLists, :FromLists, :VULTypeLists, :Tags, :RequestId

        def initialize(totalcount=nil, data=nil, levellists=nil, fromlists=nil, vultypelists=nil, tags=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @LevelLists = levellists
          @FromLists = fromlists
          @VULTypeLists = vultypelists
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              vulviewvulriskdata_tmp = VULViewVULRiskData.new
              vulviewvulriskdata_tmp.deserialize(i)
              @Data << vulviewvulriskdata_tmp
            end
          end
          unless params['LevelLists'].nil?
            @LevelLists = []
            params['LevelLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @LevelLists << filterdataobject_tmp
            end
          end
          unless params['FromLists'].nil?
            @FromLists = []
            params['FromLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @FromLists << filterdataobject_tmp
            end
          end
          unless params['VULTypeLists'].nil?
            @VULTypeLists = []
            params['VULTypeLists'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @VULTypeLists << filterdataobject_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @Tags << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 域名资产
      class DomainAssetVO < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetId: Array
        # @param AssetName: 资产名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: Array
        # @param AssetType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: Array
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: Array
        # @param WAFStatus: Waf状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WAFStatus: Integer
        # @param AssetCreateTime: 资产创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetCreateTime: String
        # @param AppId: Appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param Uin: 账号id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param NickName: 账号名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String
        # @param IsCore: 是否核心
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCore: Integer
        # @param IsCloud: 是否云上资产
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCloud: Integer
        # @param Attack: 网络攻击
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attack: Integer
        # @param Access: 网络访问
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Access: Integer
        # @param Intercept: 网络拦截
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Intercept: Integer
        # @param InBandwidth: 入站峰值带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InBandwidth: String
        # @param OutBandwidth: 出站峰值带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutBandwidth: String
        # @param InFlow: 入站累计流量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InFlow: String
        # @param OutFlow: 出站累计流量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutFlow: String
        # @param LastScanTime: 最近扫描时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastScanTime: String
        # @param PortRisk: 端口风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PortRisk: Integer
        # @param VulnerabilityRisk: 漏洞风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityRisk: Integer
        # @param ConfigurationRisk: 配置风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigurationRisk: Integer
        # @param ScanTask: 扫描任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanTask: Integer
        # @param SubDomain: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubDomain: String
        # @param SeverIp: 解析ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SeverIp: Array
        # @param BotCount: bot攻击数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BotCount: Integer
        # @param WeakPassword: 弱口令风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeakPassword: Integer
        # @param WebContentRisk: 内容风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebContentRisk: Integer
        # @param Tag: tag标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param SourceType: 关联实例类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceType: String
        # @param MemberId: memberiD
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberId: String
        # @param CCAttack: cc攻击
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CCAttack: Integer
        # @param WebAttack: web攻击
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebAttack: Integer
        # @param ServiceRisk: 风险服务暴露数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceRisk: Integer
        # @param IsNewAsset: 是否新资产 1新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNewAsset: Integer
        # @param VerifyDomain: 待确认资产的随机三级域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyDomain: String
        # @param VerifyTXTRecord: 待确认资产的TXT记录内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyTXTRecord: String
        # @param VerifyStatus: 待确认资产的认证状态，0-待认证，1-认证成功，2-认证中，3-txt认证失败，4-人工认证失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyStatus: Integer
        # @param BotAccessCount: bot访问数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BotAccessCount: Integer

        attr_accessor :AssetId, :AssetName, :AssetType, :Region, :WAFStatus, :AssetCreateTime, :AppId, :Uin, :NickName, :IsCore, :IsCloud, :Attack, :Access, :Intercept, :InBandwidth, :OutBandwidth, :InFlow, :OutFlow, :LastScanTime, :PortRisk, :VulnerabilityRisk, :ConfigurationRisk, :ScanTask, :SubDomain, :SeverIp, :BotCount, :WeakPassword, :WebContentRisk, :Tag, :SourceType, :MemberId, :CCAttack, :WebAttack, :ServiceRisk, :IsNewAsset, :VerifyDomain, :VerifyTXTRecord, :VerifyStatus, :BotAccessCount

        def initialize(assetid=nil, assetname=nil, assettype=nil, region=nil, wafstatus=nil, assetcreatetime=nil, appid=nil, uin=nil, nickname=nil, iscore=nil, iscloud=nil, attack=nil, access=nil, intercept=nil, inbandwidth=nil, outbandwidth=nil, inflow=nil, outflow=nil, lastscantime=nil, portrisk=nil, vulnerabilityrisk=nil, configurationrisk=nil, scantask=nil, subdomain=nil, severip=nil, botcount=nil, weakpassword=nil, webcontentrisk=nil, tag=nil, sourcetype=nil, memberid=nil, ccattack=nil, webattack=nil, servicerisk=nil, isnewasset=nil, verifydomain=nil, verifytxtrecord=nil, verifystatus=nil, botaccesscount=nil)
          @AssetId = assetid
          @AssetName = assetname
          @AssetType = assettype
          @Region = region
          @WAFStatus = wafstatus
          @AssetCreateTime = assetcreatetime
          @AppId = appid
          @Uin = uin
          @NickName = nickname
          @IsCore = iscore
          @IsCloud = iscloud
          @Attack = attack
          @Access = access
          @Intercept = intercept
          @InBandwidth = inbandwidth
          @OutBandwidth = outbandwidth
          @InFlow = inflow
          @OutFlow = outflow
          @LastScanTime = lastscantime
          @PortRisk = portrisk
          @VulnerabilityRisk = vulnerabilityrisk
          @ConfigurationRisk = configurationrisk
          @ScanTask = scantask
          @SubDomain = subdomain
          @SeverIp = severip
          @BotCount = botcount
          @WeakPassword = weakpassword
          @WebContentRisk = webcontentrisk
          @Tag = tag
          @SourceType = sourcetype
          @MemberId = memberid
          @CCAttack = ccattack
          @WebAttack = webattack
          @ServiceRisk = servicerisk
          @IsNewAsset = isnewasset
          @VerifyDomain = verifydomain
          @VerifyTXTRecord = verifytxtrecord
          @VerifyStatus = verifystatus
          @BotAccessCount = botaccesscount
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @AssetType = params['AssetType']
          @Region = params['Region']
          @WAFStatus = params['WAFStatus']
          @AssetCreateTime = params['AssetCreateTime']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @NickName = params['NickName']
          @IsCore = params['IsCore']
          @IsCloud = params['IsCloud']
          @Attack = params['Attack']
          @Access = params['Access']
          @Intercept = params['Intercept']
          @InBandwidth = params['InBandwidth']
          @OutBandwidth = params['OutBandwidth']
          @InFlow = params['InFlow']
          @OutFlow = params['OutFlow']
          @LastScanTime = params['LastScanTime']
          @PortRisk = params['PortRisk']
          @VulnerabilityRisk = params['VulnerabilityRisk']
          @ConfigurationRisk = params['ConfigurationRisk']
          @ScanTask = params['ScanTask']
          @SubDomain = params['SubDomain']
          @SeverIp = params['SeverIp']
          @BotCount = params['BotCount']
          @WeakPassword = params['WeakPassword']
          @WebContentRisk = params['WebContentRisk']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @SourceType = params['SourceType']
          @MemberId = params['MemberId']
          @CCAttack = params['CCAttack']
          @WebAttack = params['WebAttack']
          @ServiceRisk = params['ServiceRisk']
          @IsNewAsset = params['IsNewAsset']
          @VerifyDomain = params['VerifyDomain']
          @VerifyTXTRecord = params['VerifyTXTRecord']
          @VerifyStatus = params['VerifyStatus']
          @BotAccessCount = params['BotAccessCount']
        end
      end

      # 统计条目
      class Element < TencentCloud::Common::AbstractModel
        # @param Key: 统计类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 统计对象
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 列表查询接口采用新filter 接口，直接传给后台供后台查询过滤
      class Filter < TencentCloud::Common::AbstractModel
        # @param Limit: 查询数量限制
        # @type Limit: Integer
        # @param Offset: 查询偏移位置
        # @type Offset: Integer
        # @param Order: 排序采用升序还是降序 升:asc 降 desc
        # @type Order: String
        # @param By: 需排序的字段
        # @type By: String
        # @param Filters: 过滤的列及内容
        # @type Filters: Array
        # @param StartTime: 可填无， 日志使用查询时间
        # @type StartTime: String
        # @param EndTime: 可填无， 日志使用查询时间
        # @type EndTime: String

        attr_accessor :Limit, :Offset, :Order, :By, :Filters, :StartTime, :EndTime

        def initialize(limit=nil, offset=nil, order=nil, by=nil, filters=nil, starttime=nil, endtime=nil)
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
          @Filters = filters
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @By = params['By']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              wherefilter_tmp = WhereFilter.new
              wherefilter_tmp.deserialize(i)
              @Filters << wherefilter_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 过滤数据对象
      class FilterDataObject < TencentCloud::Common::AbstractModel
        # @param Value: 英文翻译
        # @type Value: String
        # @param Text: 中文翻译
        # @type Text: String

        attr_accessor :Value, :Text

        def initialize(value=nil, text=nil)
          @Value = value
          @Text = text
        end

        def deserialize(params)
          @Value = params['Value']
          @Text = params['Text']
        end
      end

      # 网关资产
      class GateWayAsset < TencentCloud::Common::AbstractModel
        # @param AppId: appid
        # @type AppId: String
        # @param Uin: uin
        # @type Uin: String
        # @param AssetId: 资产ID
        # @type AssetId: String
        # @param AssetName: 资产名
        # @type AssetName: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param PrivateIp: 私有ip
        # @type PrivateIp: String
        # @param PublicIp: 公网ip
        # @type PublicIp: String
        # @param Region: 区域
        # @type Region: String
        # @param VpcId: 私有网络id
        # @type VpcId: String
        # @param VpcName: 私有网络名
        # @type VpcName: String
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param OutboundPeakBandwidth: 出向峰值带宽
        # @type OutboundPeakBandwidth: String
        # @param InboundPeakBandwidth: 入向峰值带宽
        # @type InboundPeakBandwidth: String
        # @param OutboundCumulativeFlow: 出站累计流量
        # @type OutboundCumulativeFlow: String
        # @param InboundCumulativeFlow: 入站累计流量
        # @type InboundCumulativeFlow: String
        # @param NetworkAttack: 网络攻击
        # @type NetworkAttack: Integer
        # @param ExposedPort: 暴露端口
        # @type ExposedPort: Integer
        # @param ExposedVUL: 暴露漏洞
        # @type ExposedVUL: Integer
        # @param ConfigureRisk: 配置风险
        # @type ConfigureRisk: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ScanTask: 任务数
        # @type ScanTask: Integer
        # @param LastScanTime: 最后扫描时间
        # @type LastScanTime: String
        # @param Nick: 昵称
        # @type Nick: String
        # @param AddressIPV6: ipv6地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressIPV6: String
        # @param IsCore: 是否核心
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCore: Integer
        # @param RiskExposure: 风险服务暴露
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskExposure: Integer
        # @param IsNewAsset: 是否新资产 1新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNewAsset: Integer
        # @param Status: 网关状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param EngineRegion: TSE的网关真实地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineRegion: String

        attr_accessor :AppId, :Uin, :AssetId, :AssetName, :AssetType, :PrivateIp, :PublicIp, :Region, :VpcId, :VpcName, :Tag, :OutboundPeakBandwidth, :InboundPeakBandwidth, :OutboundCumulativeFlow, :InboundCumulativeFlow, :NetworkAttack, :ExposedPort, :ExposedVUL, :ConfigureRisk, :CreateTime, :ScanTask, :LastScanTime, :Nick, :AddressIPV6, :IsCore, :RiskExposure, :IsNewAsset, :Status, :EngineRegion

        def initialize(appid=nil, uin=nil, assetid=nil, assetname=nil, assettype=nil, privateip=nil, publicip=nil, region=nil, vpcid=nil, vpcname=nil, tag=nil, outboundpeakbandwidth=nil, inboundpeakbandwidth=nil, outboundcumulativeflow=nil, inboundcumulativeflow=nil, networkattack=nil, exposedport=nil, exposedvul=nil, configurerisk=nil, createtime=nil, scantask=nil, lastscantime=nil, nick=nil, addressipv6=nil, iscore=nil, riskexposure=nil, isnewasset=nil, status=nil, engineregion=nil)
          @AppId = appid
          @Uin = uin
          @AssetId = assetid
          @AssetName = assetname
          @AssetType = assettype
          @PrivateIp = privateip
          @PublicIp = publicip
          @Region = region
          @VpcId = vpcid
          @VpcName = vpcname
          @Tag = tag
          @OutboundPeakBandwidth = outboundpeakbandwidth
          @InboundPeakBandwidth = inboundpeakbandwidth
          @OutboundCumulativeFlow = outboundcumulativeflow
          @InboundCumulativeFlow = inboundcumulativeflow
          @NetworkAttack = networkattack
          @ExposedPort = exposedport
          @ExposedVUL = exposedvul
          @ConfigureRisk = configurerisk
          @CreateTime = createtime
          @ScanTask = scantask
          @LastScanTime = lastscantime
          @Nick = nick
          @AddressIPV6 = addressipv6
          @IsCore = iscore
          @RiskExposure = riskexposure
          @IsNewAsset = isnewasset
          @Status = status
          @EngineRegion = engineregion
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Uin = params['Uin']
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @AssetType = params['AssetType']
          @PrivateIp = params['PrivateIp']
          @PublicIp = params['PublicIp']
          @Region = params['Region']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @OutboundPeakBandwidth = params['OutboundPeakBandwidth']
          @InboundPeakBandwidth = params['InboundPeakBandwidth']
          @OutboundCumulativeFlow = params['OutboundCumulativeFlow']
          @InboundCumulativeFlow = params['InboundCumulativeFlow']
          @NetworkAttack = params['NetworkAttack']
          @ExposedPort = params['ExposedPort']
          @ExposedVUL = params['ExposedVUL']
          @ConfigureRisk = params['ConfigureRisk']
          @CreateTime = params['CreateTime']
          @ScanTask = params['ScanTask']
          @LastScanTime = params['LastScanTime']
          @Nick = params['Nick']
          @AddressIPV6 = params['AddressIPV6']
          @IsCore = params['IsCore']
          @RiskExposure = params['RiskExposure']
          @IsNewAsset = params['IsNewAsset']
          @Status = params['Status']
          @EngineRegion = params['EngineRegion']
        end
      end

      # ip列表
      class IpAssetListVO < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetId: String
        # @param AssetName: 资产name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: String
        # @param AssetType: 资产类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param CFWStatus: 云防状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFWStatus: Integer
        # @param AssetCreateTime: 资产创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetCreateTime: String
        # @param PublicIp: 公网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param PublicIpType: 公网ip类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIpType: Integer
        # @param VpcId: vpc
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param VpcName: vpc名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcName: String
        # @param AppId: appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param NickName: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String
        # @param IsCore: 核心
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCore: Integer
        # @param IsCloud: 云上
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCloud: Integer
        # @param Attack: 网络攻击
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attack: Integer
        # @param Access: 网络访问
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Access: Integer
        # @param Intercept: 网络拦截
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Intercept: Integer
        # @param InBandwidth: 入向带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InBandwidth: String
        # @param OutBandwidth: 出向带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutBandwidth: String
        # @param InFlow: 入向流量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InFlow: String
        # @param OutFlow: 出向流量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutFlow: String
        # @param LastScanTime: 最近扫描时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastScanTime: String
        # @param PortRisk: 端口风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PortRisk: Integer
        # @param VulnerabilityRisk: 漏洞风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityRisk: Integer
        # @param ConfigurationRisk: 配置风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigurationRisk: Integer
        # @param ScanTask: 扫描任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanTask: Integer
        # @param WeakPassword: 弱口令
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeakPassword: Integer
        # @param WebContentRisk: 内容风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebContentRisk: Integer
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param AddressId: eip主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressId: String
        # @param MemberId: memberid信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberId: String
        # @param RiskExposure: 风险服务暴露
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskExposure: Integer
        # @param IsNewAsset: 是否新资产 1新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNewAsset: Integer
        # @param VerifyStatus: 资产认证状态，0-待认证，1-认证成功，2-认证中，3+-认证失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyStatus: Integer

        attr_accessor :AssetId, :AssetName, :AssetType, :Region, :CFWStatus, :AssetCreateTime, :PublicIp, :PublicIpType, :VpcId, :VpcName, :AppId, :Uin, :NickName, :IsCore, :IsCloud, :Attack, :Access, :Intercept, :InBandwidth, :OutBandwidth, :InFlow, :OutFlow, :LastScanTime, :PortRisk, :VulnerabilityRisk, :ConfigurationRisk, :ScanTask, :WeakPassword, :WebContentRisk, :Tag, :AddressId, :MemberId, :RiskExposure, :IsNewAsset, :VerifyStatus

        def initialize(assetid=nil, assetname=nil, assettype=nil, region=nil, cfwstatus=nil, assetcreatetime=nil, publicip=nil, publiciptype=nil, vpcid=nil, vpcname=nil, appid=nil, uin=nil, nickname=nil, iscore=nil, iscloud=nil, attack=nil, access=nil, intercept=nil, inbandwidth=nil, outbandwidth=nil, inflow=nil, outflow=nil, lastscantime=nil, portrisk=nil, vulnerabilityrisk=nil, configurationrisk=nil, scantask=nil, weakpassword=nil, webcontentrisk=nil, tag=nil, addressid=nil, memberid=nil, riskexposure=nil, isnewasset=nil, verifystatus=nil)
          @AssetId = assetid
          @AssetName = assetname
          @AssetType = assettype
          @Region = region
          @CFWStatus = cfwstatus
          @AssetCreateTime = assetcreatetime
          @PublicIp = publicip
          @PublicIpType = publiciptype
          @VpcId = vpcid
          @VpcName = vpcname
          @AppId = appid
          @Uin = uin
          @NickName = nickname
          @IsCore = iscore
          @IsCloud = iscloud
          @Attack = attack
          @Access = access
          @Intercept = intercept
          @InBandwidth = inbandwidth
          @OutBandwidth = outbandwidth
          @InFlow = inflow
          @OutFlow = outflow
          @LastScanTime = lastscantime
          @PortRisk = portrisk
          @VulnerabilityRisk = vulnerabilityrisk
          @ConfigurationRisk = configurationrisk
          @ScanTask = scantask
          @WeakPassword = weakpassword
          @WebContentRisk = webcontentrisk
          @Tag = tag
          @AddressId = addressid
          @MemberId = memberid
          @RiskExposure = riskexposure
          @IsNewAsset = isnewasset
          @VerifyStatus = verifystatus
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @AssetType = params['AssetType']
          @Region = params['Region']
          @CFWStatus = params['CFWStatus']
          @AssetCreateTime = params['AssetCreateTime']
          @PublicIp = params['PublicIp']
          @PublicIpType = params['PublicIpType']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @NickName = params['NickName']
          @IsCore = params['IsCore']
          @IsCloud = params['IsCloud']
          @Attack = params['Attack']
          @Access = params['Access']
          @Intercept = params['Intercept']
          @InBandwidth = params['InBandwidth']
          @OutBandwidth = params['OutBandwidth']
          @InFlow = params['InFlow']
          @OutFlow = params['OutFlow']
          @LastScanTime = params['LastScanTime']
          @PortRisk = params['PortRisk']
          @VulnerabilityRisk = params['VulnerabilityRisk']
          @ConfigurationRisk = params['ConfigurationRisk']
          @ScanTask = params['ScanTask']
          @WeakPassword = params['WeakPassword']
          @WebContentRisk = params['WebContentRisk']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @AddressId = params['AddressId']
          @MemberId = params['MemberId']
          @RiskExposure = params['RiskExposure']
          @IsNewAsset = params['IsNewAsset']
          @VerifyStatus = params['VerifyStatus']
        end
      end

      # KeyValue对
      class KeyValue < TencentCloud::Common::AbstractModel
        # @param Key: 字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # ModifyOrganizationAccountStatus请求参数结构体
      class ModifyOrganizationAccountStatusRequest < TencentCloud::Common::AbstractModel
        # @param Status: 修改集团账号状态，1 开启， 2关闭
        # @type Status: Integer
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :Status, :MemberId

        def initialize(status=nil, memberid=nil)
          @Status = status
          @MemberId = memberid
        end

        def deserialize(params)
          @Status = params['Status']
          @MemberId = params['MemberId']
        end
      end

      # ModifyOrganizationAccountStatus返回参数结构体
      class ModifyOrganizationAccountStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 返回值为0，则修改成功
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyRiskCenterRiskStatus请求参数结构体
      class ModifyRiskCenterRiskStatusRequest < TencentCloud::Common::AbstractModel
        # @param RiskStatusKeys: 风险资产相关数据
        # @type RiskStatusKeys: Array
        # @param Status: 处置状态，1为已处置、2为已忽略，3为取消已处置，4为取消已忽略
        # @type Status: Integer
        # @param Type: 风险类型，0-端口风险， 1-漏洞风险，2-弱口令风险， 3-网站内容风险，4-配置风险，5-风险服务暴露
        # @type Type: Integer
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :RiskStatusKeys, :Status, :Type, :MemberId

        def initialize(riskstatuskeys=nil, status=nil, type=nil, memberid=nil)
          @RiskStatusKeys = riskstatuskeys
          @Status = status
          @Type = type
          @MemberId = memberid
        end

        def deserialize(params)
          unless params['RiskStatusKeys'].nil?
            @RiskStatusKeys = []
            params['RiskStatusKeys'].each do |i|
              riskcenterstatuskey_tmp = RiskCenterStatusKey.new
              riskcenterstatuskey_tmp.deserialize(i)
              @RiskStatusKeys << riskcenterstatuskey_tmp
            end
          end
          @Status = params['Status']
          @Type = params['Type']
          @MemberId = params['MemberId']
        end
      end

      # ModifyRiskCenterRiskStatus返回参数结构体
      class ModifyRiskCenterRiskStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRiskCenterScanTask请求参数结构体
      class ModifyRiskCenterScanTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param ScanAssetType: 0-全扫，1-指定资产扫，2-排除资产扫，3-手动填写扫；1和2则Assets字段必填，3则SelfDefiningAssets必填
        # @type ScanAssetType: Integer
        # @param ScanItem: 扫描项目；port/poc/weakpass/webcontent/configrisk
        # @type ScanItem: Array
        # @param ScanPlanType: 0-周期任务,1-立即扫描,2-定时扫描,3-自定义；0,2,3则ScanPlanContent必填
        # @type ScanPlanType: Integer
        # @param TaskId: 要修改的任务id
        # @type TaskId: String
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Assets: 扫描资产信息列表
        # @type Assets: Array
        # @param ScanPlanContent: 扫描计划详情
        # @type ScanPlanContent: String
        # @param SelfDefiningAssets: ip/域名/url数组
        # @type SelfDefiningAssets: Array
        # @param TaskAdvanceCFG: 高级配置
        # @type TaskAdvanceCFG: :class:`Tencentcloud::Csip.v20221121.models.TaskAdvanceCFG`
        # @param TaskMode: 体检模式，0-标准模式，1-快速模式，2-高级模式，默认标准模式
        # @type TaskMode: Integer
        # @param FinishWebHook: 任务完成回调webhook地址
        # @type FinishWebHook: String

        attr_accessor :TaskName, :ScanAssetType, :ScanItem, :ScanPlanType, :TaskId, :MemberId, :Assets, :ScanPlanContent, :SelfDefiningAssets, :TaskAdvanceCFG, :TaskMode, :FinishWebHook

        def initialize(taskname=nil, scanassettype=nil, scanitem=nil, scanplantype=nil, taskid=nil, memberid=nil, assets=nil, scanplancontent=nil, selfdefiningassets=nil, taskadvancecfg=nil, taskmode=nil, finishwebhook=nil)
          @TaskName = taskname
          @ScanAssetType = scanassettype
          @ScanItem = scanitem
          @ScanPlanType = scanplantype
          @TaskId = taskid
          @MemberId = memberid
          @Assets = assets
          @ScanPlanContent = scanplancontent
          @SelfDefiningAssets = selfdefiningassets
          @TaskAdvanceCFG = taskadvancecfg
          @TaskMode = taskmode
          @FinishWebHook = finishwebhook
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @ScanAssetType = params['ScanAssetType']
          @ScanItem = params['ScanItem']
          @ScanPlanType = params['ScanPlanType']
          @TaskId = params['TaskId']
          @MemberId = params['MemberId']
          unless params['Assets'].nil?
            @Assets = []
            params['Assets'].each do |i|
              taskassetobject_tmp = TaskAssetObject.new
              taskassetobject_tmp.deserialize(i)
              @Assets << taskassetobject_tmp
            end
          end
          @ScanPlanContent = params['ScanPlanContent']
          @SelfDefiningAssets = params['SelfDefiningAssets']
          unless params['TaskAdvanceCFG'].nil?
            @TaskAdvanceCFG = TaskAdvanceCFG.new
            @TaskAdvanceCFG.deserialize(params['TaskAdvanceCFG'])
          end
          @TaskMode = params['TaskMode']
          @FinishWebHook = params['FinishWebHook']
        end
      end

      # ModifyRiskCenterScanTask返回参数结构体
      class ModifyRiskCenterScanTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param Status: 0，修改成功，其他失败；-1为存在资产未认证
        # @type Status: Integer
        # @param UnAuthAsset: 未认证资产列表
        # @type UnAuthAsset: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Status, :UnAuthAsset, :RequestId

        def initialize(taskid=nil, status=nil, unauthasset=nil, requestid=nil)
          @TaskId = taskid
          @Status = status
          @UnAuthAsset = unauthasset
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @UnAuthAsset = params['UnAuthAsset']
          @RequestId = params['RequestId']
        end
      end

      # 网卡资产
      class NICAsset < TencentCloud::Common::AbstractModel
        # @param AppId: appid
        # @type AppId: String
        # @param Uin: uin
        # @type Uin: String
        # @param AssetId: 资产ID
        # @type AssetId: String
        # @param AssetName: 资产名
        # @type AssetName: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param PrivateIp: 私有ip
        # @type PrivateIp: String
        # @param PublicIp: 公网ip
        # @type PublicIp: String
        # @param Region: 区域
        # @type Region: String
        # @param VpcId: 私有网络id
        # @type VpcId: String
        # @param VpcName: 私有网络名
        # @type VpcName: String
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param OutboundPeakBandwidth: 出向峰值带宽
        # @type OutboundPeakBandwidth: String
        # @param InboundPeakBandwidth: 入向峰值带宽
        # @type InboundPeakBandwidth: String
        # @param OutboundCumulativeFlow: 出站累计流量
        # @type OutboundCumulativeFlow: String
        # @param InboundCumulativeFlow: 入站累计流量
        # @type InboundCumulativeFlow: String
        # @param NetworkAttack: 网络攻击
        # @type NetworkAttack: Integer
        # @param ExposedPort: 暴露端口
        # @type ExposedPort: Integer
        # @param ExposedVUL: 暴露漏洞
        # @type ExposedVUL: Integer
        # @param ConfigureRisk: 配置风险
        # @type ConfigureRisk: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ScanTask: 任务数
        # @type ScanTask: Integer
        # @param LastScanTime: 最后扫描时间
        # @type LastScanTime: String
        # @param Nick: 昵称
        # @type Nick: String
        # @param IsCore: 是否核心
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCore: Integer
        # @param IsNewAsset: 是否新资产 1新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNewAsset: Integer

        attr_accessor :AppId, :Uin, :AssetId, :AssetName, :AssetType, :PrivateIp, :PublicIp, :Region, :VpcId, :VpcName, :Tag, :OutboundPeakBandwidth, :InboundPeakBandwidth, :OutboundCumulativeFlow, :InboundCumulativeFlow, :NetworkAttack, :ExposedPort, :ExposedVUL, :ConfigureRisk, :CreateTime, :ScanTask, :LastScanTime, :Nick, :IsCore, :IsNewAsset

        def initialize(appid=nil, uin=nil, assetid=nil, assetname=nil, assettype=nil, privateip=nil, publicip=nil, region=nil, vpcid=nil, vpcname=nil, tag=nil, outboundpeakbandwidth=nil, inboundpeakbandwidth=nil, outboundcumulativeflow=nil, inboundcumulativeflow=nil, networkattack=nil, exposedport=nil, exposedvul=nil, configurerisk=nil, createtime=nil, scantask=nil, lastscantime=nil, nick=nil, iscore=nil, isnewasset=nil)
          @AppId = appid
          @Uin = uin
          @AssetId = assetid
          @AssetName = assetname
          @AssetType = assettype
          @PrivateIp = privateip
          @PublicIp = publicip
          @Region = region
          @VpcId = vpcid
          @VpcName = vpcname
          @Tag = tag
          @OutboundPeakBandwidth = outboundpeakbandwidth
          @InboundPeakBandwidth = inboundpeakbandwidth
          @OutboundCumulativeFlow = outboundcumulativeflow
          @InboundCumulativeFlow = inboundcumulativeflow
          @NetworkAttack = networkattack
          @ExposedPort = exposedport
          @ExposedVUL = exposedvul
          @ConfigureRisk = configurerisk
          @CreateTime = createtime
          @ScanTask = scantask
          @LastScanTime = lastscantime
          @Nick = nick
          @IsCore = iscore
          @IsNewAsset = isnewasset
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Uin = params['Uin']
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @AssetType = params['AssetType']
          @PrivateIp = params['PrivateIp']
          @PublicIp = params['PublicIp']
          @Region = params['Region']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @OutboundPeakBandwidth = params['OutboundPeakBandwidth']
          @InboundPeakBandwidth = params['InboundPeakBandwidth']
          @OutboundCumulativeFlow = params['OutboundCumulativeFlow']
          @InboundCumulativeFlow = params['InboundCumulativeFlow']
          @NetworkAttack = params['NetworkAttack']
          @ExposedPort = params['ExposedPort']
          @ExposedVUL = params['ExposedVUL']
          @ConfigureRisk = params['ConfigureRisk']
          @CreateTime = params['CreateTime']
          @ScanTask = params['ScanTask']
          @LastScanTime = params['LastScanTime']
          @Nick = params['Nick']
          @IsCore = params['IsCore']
          @IsNewAsset = params['IsNewAsset']
        end
      end

      # 该结构体用来传入告警的key，以更新告警的status
      class NewAlertKey < TencentCloud::Common::AbstractModel
        # @param AppId: 需要更改的用户appid
        # @type AppId: String
        # @param Type: 告警类别
        # @type Type: String
        # @param SubType: 告警子类别
        # @type SubType: String
        # @param Source: 告警来源
        # @type Source: String
        # @param Name: 告警名称
        # @type Name: String
        # @param Key: 告警key
        # @type Key: String
        # @param Date: 时间
        # @type Date: String
        # @param Status: 状态
        # @type Status: Integer

        attr_accessor :AppId, :Type, :SubType, :Source, :Name, :Key, :Date, :Status

        def initialize(appid=nil, type=nil, subtype=nil, source=nil, name=nil, key=nil, date=nil, status=nil)
          @AppId = appid
          @Type = type
          @SubType = subtype
          @Source = source
          @Name = name
          @Key = key
          @Date = date
          @Status = status
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Type = params['Type']
          @SubType = params['SubType']
          @Source = params['Source']
          @Name = params['Name']
          @Key = params['Key']
          @Date = params['Date']
          @Status = params['Status']
        end
      end

      # 集团账号成员详情
      class OrganizationUserInfo < TencentCloud::Common::AbstractModel
        # @param Uin: 成员账号Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param NickName: 成员账号名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String
        # @param NodeName: 部门节点名称，账号所属部门
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeName: String
        # @param AssetCount: 资产数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetCount: Integer
        # @param RiskCount: 风险数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskCount: Integer
        # @param AttackCount: 攻击数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackCount: Integer
        # @param Role: Member/Admin/;成员或者管理员
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Role: String
        # @param MemberId: 成员账号id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberId: String
        # @param AppId: 成员账号Appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param JoinType: 账号加入方式,create/invite
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JoinType: String
        # @param CFWProtect: 空则未开启，否则不同字符串对应不同版本，common为通用，不区分版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFWProtect: String
        # @param WAFProtect: 空则未开启，否则不同字符串对应不同版本，common为通用，不区分版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WAFProtect: String
        # @param CWPProtect: 空则未开启，否则不同字符串对应不同版本，common为通用，不区分版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPProtect: String
        # @param Enable: 1启用，0未启用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enable: Integer
        # @param CSIPProtect: "Free"       //免费版  "Advanced"   //高级版 "Enterprise" //企业版 "Ultimate"   //旗舰版
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CSIPProtect: String
        # @param QuotaConsumer: 1为配额消耗者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuotaConsumer: Integer
        # @param CloudType: 账户类型，0为腾讯云账户，1为AWS账户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloudType: Integer
        # @param SyncFrequency: 0为缺省值，1为10分钟，2为1小时，3为24小时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SyncFrequency: Integer
        # @param IsExpired: 多云账户是否过期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsExpired: Boolean
        # @param PermissionList: 多云账户 权限列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PermissionList: Array
        # @param AuthType: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthType: Integer
        # @param TcMemberType: 0 腾讯云集团账户
        # 1 腾讯云接入账户
        # 2 非腾讯云
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TcMemberType: Integer
        # @param SubUserCount: 子账号数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubUserCount: Integer
        # @param JoinTypeInfo: 加入方式详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JoinTypeInfo: String

        attr_accessor :Uin, :NickName, :NodeName, :AssetCount, :RiskCount, :AttackCount, :Role, :MemberId, :AppId, :JoinType, :CFWProtect, :WAFProtect, :CWPProtect, :Enable, :CSIPProtect, :QuotaConsumer, :CloudType, :SyncFrequency, :IsExpired, :PermissionList, :AuthType, :TcMemberType, :SubUserCount, :JoinTypeInfo

        def initialize(uin=nil, nickname=nil, nodename=nil, assetcount=nil, riskcount=nil, attackcount=nil, role=nil, memberid=nil, appid=nil, jointype=nil, cfwprotect=nil, wafprotect=nil, cwpprotect=nil, enable=nil, csipprotect=nil, quotaconsumer=nil, cloudtype=nil, syncfrequency=nil, isexpired=nil, permissionlist=nil, authtype=nil, tcmembertype=nil, subusercount=nil, jointypeinfo=nil)
          @Uin = uin
          @NickName = nickname
          @NodeName = nodename
          @AssetCount = assetcount
          @RiskCount = riskcount
          @AttackCount = attackcount
          @Role = role
          @MemberId = memberid
          @AppId = appid
          @JoinType = jointype
          @CFWProtect = cfwprotect
          @WAFProtect = wafprotect
          @CWPProtect = cwpprotect
          @Enable = enable
          @CSIPProtect = csipprotect
          @QuotaConsumer = quotaconsumer
          @CloudType = cloudtype
          @SyncFrequency = syncfrequency
          @IsExpired = isexpired
          @PermissionList = permissionlist
          @AuthType = authtype
          @TcMemberType = tcmembertype
          @SubUserCount = subusercount
          @JoinTypeInfo = jointypeinfo
        end

        def deserialize(params)
          @Uin = params['Uin']
          @NickName = params['NickName']
          @NodeName = params['NodeName']
          @AssetCount = params['AssetCount']
          @RiskCount = params['RiskCount']
          @AttackCount = params['AttackCount']
          @Role = params['Role']
          @MemberId = params['MemberId']
          @AppId = params['AppId']
          @JoinType = params['JoinType']
          @CFWProtect = params['CFWProtect']
          @WAFProtect = params['WAFProtect']
          @CWPProtect = params['CWPProtect']
          @Enable = params['Enable']
          @CSIPProtect = params['CSIPProtect']
          @QuotaConsumer = params['QuotaConsumer']
          @CloudType = params['CloudType']
          @SyncFrequency = params['SyncFrequency']
          @IsExpired = params['IsExpired']
          @PermissionList = params['PermissionList']
          @AuthType = params['AuthType']
          @TcMemberType = params['TcMemberType']
          @SubUserCount = params['SubUserCount']
          @JoinTypeInfo = params['JoinTypeInfo']
        end
      end

      # 端口风险高级配置项
      class PortRiskAdvanceCFGParamItem < TencentCloud::Common::AbstractModel
        # @param PortSets: 端口集合,以逗号分隔
        # @type PortSets: String
        # @param CheckType: 检测项类型，0-系统定义，1-用户自定义
        # @type CheckType: Integer
        # @param Detail: 检测项描述
        # @type Detail: String
        # @param Enable: 是否启用，1-启用，0-禁用
        # @type Enable: Integer

        attr_accessor :PortSets, :CheckType, :Detail, :Enable

        def initialize(portsets=nil, checktype=nil, detail=nil, enable=nil)
          @PortSets = portsets
          @CheckType = checktype
          @Detail = detail
          @Enable = enable
        end

        def deserialize(params)
          @PortSets = params['PortSets']
          @CheckType = params['CheckType']
          @Detail = params['Detail']
          @Enable = params['Enable']
        end
      end

      # 端口视角的端口风险对象
      class PortViewPortRisk < TencentCloud::Common::AbstractModel
        # @param NoHandleCount: 未处理数量
        # @type NoHandleCount: Integer
        # @param Level: 风险等级，low-低危，high-高危，middle-中危，info-提示，extreme-严重。
        # @type Level: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Component: 组件
        # @type Component: String
        # @param Port: 端口
        # @type Port: Integer
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param Suggestion: 处置建议,0保持现状、1限制访问、2封禁端口
        # @type Suggestion: Integer
        # @param AffectAssetCount: 影响资产数量
        # @type AffectAssetCount: String
        # @param Id: ID
        # @type Id: String
        # @param From: 识别来源
        # @type From: String
        # @param Index: 前端索引
        # @type Index: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Nick: 用户昵称
        # @type Nick: String
        # @param Uin: 用户uin
        # @type Uin: String
        # @param Service: 服务
        # @type Service: String

        attr_accessor :NoHandleCount, :Level, :Protocol, :Component, :Port, :RecentTime, :FirstTime, :Suggestion, :AffectAssetCount, :Id, :From, :Index, :AppId, :Nick, :Uin, :Service

        def initialize(nohandlecount=nil, level=nil, protocol=nil, component=nil, port=nil, recenttime=nil, firsttime=nil, suggestion=nil, affectassetcount=nil, id=nil, from=nil, index=nil, appid=nil, nick=nil, uin=nil, service=nil)
          @NoHandleCount = nohandlecount
          @Level = level
          @Protocol = protocol
          @Component = component
          @Port = port
          @RecentTime = recenttime
          @FirstTime = firsttime
          @Suggestion = suggestion
          @AffectAssetCount = affectassetcount
          @Id = id
          @From = from
          @Index = index
          @AppId = appid
          @Nick = nick
          @Uin = uin
          @Service = service
        end

        def deserialize(params)
          @NoHandleCount = params['NoHandleCount']
          @Level = params['Level']
          @Protocol = params['Protocol']
          @Component = params['Component']
          @Port = params['Port']
          @RecentTime = params['RecentTime']
          @FirstTime = params['FirstTime']
          @Suggestion = params['Suggestion']
          @AffectAssetCount = params['AffectAssetCount']
          @Id = params['Id']
          @From = params['From']
          @Index = params['Index']
          @AppId = params['AppId']
          @Nick = params['Nick']
          @Uin = params['Uin']
          @Service = params['Service']
        end
      end

      # 漏洞信息产品支持状态
      class ProductSupport < TencentCloud::Common::AbstractModel
        # @param VSSScan: true支持扫描。false不支持扫描
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VSSScan: Boolean
        # @param CWPScan: 0不支持，1支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPScan: String
        # @param CFWPatch: 1支持虚拟补丁，0或空不支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFWPatch: String
        # @param WafPatch: 0不支持，1支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WafPatch: Integer
        # @param CWPFix: 0不支持，1支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPFix: Integer
        # @param CveId: cveid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CveId: String

        attr_accessor :VSSScan, :CWPScan, :CFWPatch, :WafPatch, :CWPFix, :CveId

        def initialize(vssscan=nil, cwpscan=nil, cfwpatch=nil, wafpatch=nil, cwpfix=nil, cveid=nil)
          @VSSScan = vssscan
          @CWPScan = cwpscan
          @CFWPatch = cfwpatch
          @WafPatch = wafpatch
          @CWPFix = cwpfix
          @CveId = cveid
        end

        def deserialize(params)
          @VSSScan = params['VSSScan']
          @CWPScan = params['CWPScan']
          @CFWPatch = params['CFWPatch']
          @WafPatch = params['WafPatch']
          @CWPFix = params['CWPFix']
          @CveId = params['CveId']
        end
      end

      # 公网IP和域名资产列表key
      class PublicIpDomainListKey < TencentCloud::Common::AbstractModel
        # @param Asset: 资产值
        # @type Asset: String

        attr_accessor :Asset

        def initialize(asset=nil)
          @Asset = asset
        end

        def deserialize(params)
          @Asset = params['Asset']
        end
      end

      # 相关攻击事件结构
      class RelatedEvent < TencentCloud::Common::AbstractModel
        # @param EventID: 事件ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventID: String
        # @param Description: 事件描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param RelatedCount: 与事件关联的告警数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelatedCount: Integer

        attr_accessor :EventID, :Description, :RelatedCount

        def initialize(eventid=nil, description=nil, relatedcount=nil)
          @EventID = eventid
          @Description = description
          @RelatedCount = relatedcount
        end

        def deserialize(params)
          @EventID = params['EventID']
          @Description = params['Description']
          @RelatedCount = params['RelatedCount']
        end
      end

      # 报告项key
      class ReportItemKey < TencentCloud::Common::AbstractModel
        # @param TaskLogList: 日志Id列表
        # @type TaskLogList: Array

        attr_accessor :TaskLogList

        def initialize(taskloglist=nil)
          @TaskLogList = taskloglist
        end

        def deserialize(params)
          @TaskLogList = params['TaskLogList']
        end
      end

      # 报告中的task_id list
      class ReportTaskIdList < TencentCloud::Common::AbstractModel
        # @param TaskIdList: 任务id列表
        # @type TaskIdList: Array
        # @param AppId: 租户ID
        # @type AppId: String

        attr_accessor :TaskIdList, :AppId

        def initialize(taskidlist=nil, appid=nil)
          @TaskIdList = taskidlist
          @AppId = appid
        end

        def deserialize(params)
          @TaskIdList = params['TaskIdList']
          @AppId = params['AppId']
        end
      end

      # 风险中心状态处理Key
      class RiskCenterStatusKey < TencentCloud::Common::AbstractModel
        # @param Id: 风险ID
        # @type Id: String
        # @param PublicIPDomain: 公网IP/域名
        # @type PublicIPDomain: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param AppId: APP ID
        # @type AppId: String

        attr_accessor :Id, :PublicIPDomain, :InstanceId, :AppId

        def initialize(id=nil, publicipdomain=nil, instanceid=nil, appid=nil)
          @Id = id
          @PublicIPDomain = publicipdomain
          @InstanceId = instanceid
          @AppId = appid
        end

        def deserialize(params)
          @Id = params['Id']
          @PublicIPDomain = params['PublicIPDomain']
          @InstanceId = params['InstanceId']
          @AppId = params['AppId']
        end
      end

      # 告警数据攻击者或受害者信息
      class RoleInfo < TencentCloud::Common::AbstractModel
        # @param IP: IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IP: String
        # @param HostIP: HostIP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostIP: String
        # @param OriginIP: 原始IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginIP: String
        # @param Port: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param InstanceID: 资产ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceID: String
        # @param City: 城市
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type City: String
        # @param Province: 省份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Province: String
        # @param Country: 国家
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Country: String
        # @param Address: 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param Latitude: 纬度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Latitude: String
        # @param Longitude: 经度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Longitude: String
        # @param Info: 信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: String
        # @param Domain: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Name: 企业名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Account: 账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Account: String
        # @param Family: 家族团伙
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Family: String
        # @param VirusName: 病毒名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirusName: String
        # @param MD5: MD5值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MD5: String
        # @param FileName: 恶意进程文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param AssetType: 1:主机资产 2:域名资产 3:网络资产
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: Integer
        # @param FromLogAnalysisData: 来源日志分析的信息字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FromLogAnalysisData: Array
        # @param ContainerName: 容器名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerName: String
        # @param ContainerID: 容器ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContainerID: String

        attr_accessor :IP, :HostIP, :OriginIP, :Port, :InstanceID, :City, :Province, :Country, :Address, :Latitude, :Longitude, :Info, :Domain, :Name, :Account, :Family, :VirusName, :MD5, :FileName, :AssetType, :FromLogAnalysisData, :ContainerName, :ContainerID

        def initialize(ip=nil, hostip=nil, originip=nil, port=nil, instanceid=nil, city=nil, province=nil, country=nil, address=nil, latitude=nil, longitude=nil, info=nil, domain=nil, name=nil, account=nil, family=nil, virusname=nil, md5=nil, filename=nil, assettype=nil, fromloganalysisdata=nil, containername=nil, containerid=nil)
          @IP = ip
          @HostIP = hostip
          @OriginIP = originip
          @Port = port
          @InstanceID = instanceid
          @City = city
          @Province = province
          @Country = country
          @Address = address
          @Latitude = latitude
          @Longitude = longitude
          @Info = info
          @Domain = domain
          @Name = name
          @Account = account
          @Family = family
          @VirusName = virusname
          @MD5 = md5
          @FileName = filename
          @AssetType = assettype
          @FromLogAnalysisData = fromloganalysisdata
          @ContainerName = containername
          @ContainerID = containerid
        end

        def deserialize(params)
          @IP = params['IP']
          @HostIP = params['HostIP']
          @OriginIP = params['OriginIP']
          @Port = params['Port']
          @InstanceID = params['InstanceID']
          @City = params['City']
          @Province = params['Province']
          @Country = params['Country']
          @Address = params['Address']
          @Latitude = params['Latitude']
          @Longitude = params['Longitude']
          @Info = params['Info']
          @Domain = params['Domain']
          @Name = params['Name']
          @Account = params['Account']
          @Family = params['Family']
          @VirusName = params['VirusName']
          @MD5 = params['MD5']
          @FileName = params['FileName']
          @AssetType = params['AssetType']
          unless params['FromLogAnalysisData'].nil?
            @FromLogAnalysisData = []
            params['FromLogAnalysisData'].each do |i|
              keyvalue_tmp = KeyValue.new
              keyvalue_tmp.deserialize(i)
              @FromLogAnalysisData << keyvalue_tmp
            end
          end
          @ContainerName = params['ContainerName']
          @ContainerID = params['ContainerID']
        end
      end

      # 扫描任务详情
      class ScanTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param Status: 任务状态码：1等待开始  2正在扫描  3扫描出错 4扫描完成
        # @type Status: Integer
        # @param Progress: 任务进度
        # @type Progress: Integer
        # @param TaskTime: 任务完成时间
        # @type TaskTime: String
        # @param ReportId: 报告ID
        # @type ReportId: String
        # @param ReportName: 报告名称
        # @type ReportName: String
        # @param ScanPlan: 扫描计划，0-周期任务,1-立即扫描,2-定时扫描,3-自定义
        # @type ScanPlan: Integer
        # @param AssetCount: 关联的资产数
        # @type AssetCount: Integer
        # @param AppId: APP ID
        # @type AppId: String
        # @param UIN: 用户主账户ID
        # @type UIN: String
        # @param UserName: 用户名称
        # @type UserName: String

        attr_accessor :TaskId, :TaskName, :Status, :Progress, :TaskTime, :ReportId, :ReportName, :ScanPlan, :AssetCount, :AppId, :UIN, :UserName

        def initialize(taskid=nil, taskname=nil, status=nil, progress=nil, tasktime=nil, reportid=nil, reportname=nil, scanplan=nil, assetcount=nil, appid=nil, uin=nil, username=nil)
          @TaskId = taskid
          @TaskName = taskname
          @Status = status
          @Progress = progress
          @TaskTime = tasktime
          @ReportId = reportid
          @ReportName = reportname
          @ScanPlan = scanplan
          @AssetCount = assetcount
          @AppId = appid
          @UIN = uin
          @UserName = username
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @Status = params['Status']
          @Progress = params['Progress']
          @TaskTime = params['TaskTime']
          @ReportId = params['ReportId']
          @ReportName = params['ReportName']
          @ScanPlan = params['ScanPlan']
          @AssetCount = params['AssetCount']
          @AppId = params['AppId']
          @UIN = params['UIN']
          @UserName = params['UserName']
        end
      end

      # 扫描任务列表展示信息
      class ScanTaskInfoList < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param StartTime: 任务开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 任务结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param ScanPlanContent: cron格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanPlanContent: String
        # @param TaskType: 0-周期任务,1-立即扫描,2-定时扫描,3-自定义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: Integer
        # @param InsertTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InsertTime: String
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param SelfDefiningAssets: 自定义指定扫描资产信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfDefiningAssets: Array
        # @param PredictTime: 预估时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PredictTime: Integer
        # @param PredictEndTime: 预估完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PredictEndTime: String
        # @param ReportNumber: 报告数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportNumber: Integer
        # @param AssetNumber: 资产数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetNumber: Integer
        # @param ScanStatus: 扫描状态, 0-初始值，1-正在扫描，2-扫描完成，3-扫描出错，4-停止扫描
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanStatus: Integer
        # @param Percent: 任务进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percent: Float
        # @param ScanItem: port/poc/weakpass/webcontent/configrisk
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanItem: String
        # @param ScanAssetType: 0-全扫，1-指定资产扫，2-排除资产扫，3-自定义指定资产扫描
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanAssetType: Integer
        # @param VSSTaskId: vss子任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VSSTaskId: String
        # @param CSPMTaskId: cspm子任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CSPMTaskId: String
        # @param CWPPOCId: 主机漏扫子任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPPOCId: String
        # @param CWPBlId: 主机基线子任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPBlId: String
        # @param VSSTaskProcess: vss子任务进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VSSTaskProcess: Integer
        # @param CSPMTaskProcess: cspm子任务进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CSPMTaskProcess: Integer
        # @param CWPPOCProcess: 主机漏扫子任务进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPPOCProcess: Integer
        # @param CWPBlProcess: 主机基线子任务进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CWPBlProcess: Integer
        # @param ErrorCode: 异常状态码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCode: Integer
        # @param ErrorInfo: 异常信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: String
        # @param StartDay: 周期任务开始的天数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartDay: Integer
        # @param Frequency: 扫描频率,单位天,1-每天,7-每周,30-月,0-扫描一次
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Frequency: Integer
        # @param CompleteNumber: 完成次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompleteNumber: Integer
        # @param CompleteAssetNumber: 已完成资产个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompleteAssetNumber: Integer
        # @param RiskCount: 风险数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskCount: Integer
        # @param Assets: 资产
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Assets: Array
        # @param AppId: 用户Appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param UIN: 用户主账户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UIN: String
        # @param UserName: 用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param TaskMode: 体检模式，0-标准模式，1-快速模式，2-高级模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskMode: Integer
        # @param ScanFrom: 扫描来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanFrom: String
        # @param IsFree: 是否限免体检0不是，1是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsFree: Integer
        # @param IsDelete: 是否可以删除，1-可以，0-不可以，对应多账户管理使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDelete: Integer
        # @param SourceType: 任务源类型，0-默认，1-小助手，2-体检项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceType: Integer

        attr_accessor :TaskName, :StartTime, :EndTime, :ScanPlanContent, :TaskType, :InsertTime, :TaskId, :SelfDefiningAssets, :PredictTime, :PredictEndTime, :ReportNumber, :AssetNumber, :ScanStatus, :Percent, :ScanItem, :ScanAssetType, :VSSTaskId, :CSPMTaskId, :CWPPOCId, :CWPBlId, :VSSTaskProcess, :CSPMTaskProcess, :CWPPOCProcess, :CWPBlProcess, :ErrorCode, :ErrorInfo, :StartDay, :Frequency, :CompleteNumber, :CompleteAssetNumber, :RiskCount, :Assets, :AppId, :UIN, :UserName, :TaskMode, :ScanFrom, :IsFree, :IsDelete, :SourceType

        def initialize(taskname=nil, starttime=nil, endtime=nil, scanplancontent=nil, tasktype=nil, inserttime=nil, taskid=nil, selfdefiningassets=nil, predicttime=nil, predictendtime=nil, reportnumber=nil, assetnumber=nil, scanstatus=nil, percent=nil, scanitem=nil, scanassettype=nil, vsstaskid=nil, cspmtaskid=nil, cwppocid=nil, cwpblid=nil, vsstaskprocess=nil, cspmtaskprocess=nil, cwppocprocess=nil, cwpblprocess=nil, errorcode=nil, errorinfo=nil, startday=nil, frequency=nil, completenumber=nil, completeassetnumber=nil, riskcount=nil, assets=nil, appid=nil, uin=nil, username=nil, taskmode=nil, scanfrom=nil, isfree=nil, isdelete=nil, sourcetype=nil)
          @TaskName = taskname
          @StartTime = starttime
          @EndTime = endtime
          @ScanPlanContent = scanplancontent
          @TaskType = tasktype
          @InsertTime = inserttime
          @TaskId = taskid
          @SelfDefiningAssets = selfdefiningassets
          @PredictTime = predicttime
          @PredictEndTime = predictendtime
          @ReportNumber = reportnumber
          @AssetNumber = assetnumber
          @ScanStatus = scanstatus
          @Percent = percent
          @ScanItem = scanitem
          @ScanAssetType = scanassettype
          @VSSTaskId = vsstaskid
          @CSPMTaskId = cspmtaskid
          @CWPPOCId = cwppocid
          @CWPBlId = cwpblid
          @VSSTaskProcess = vsstaskprocess
          @CSPMTaskProcess = cspmtaskprocess
          @CWPPOCProcess = cwppocprocess
          @CWPBlProcess = cwpblprocess
          @ErrorCode = errorcode
          @ErrorInfo = errorinfo
          @StartDay = startday
          @Frequency = frequency
          @CompleteNumber = completenumber
          @CompleteAssetNumber = completeassetnumber
          @RiskCount = riskcount
          @Assets = assets
          @AppId = appid
          @UIN = uin
          @UserName = username
          @TaskMode = taskmode
          @ScanFrom = scanfrom
          @IsFree = isfree
          @IsDelete = isdelete
          @SourceType = sourcetype
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ScanPlanContent = params['ScanPlanContent']
          @TaskType = params['TaskType']
          @InsertTime = params['InsertTime']
          @TaskId = params['TaskId']
          @SelfDefiningAssets = params['SelfDefiningAssets']
          @PredictTime = params['PredictTime']
          @PredictEndTime = params['PredictEndTime']
          @ReportNumber = params['ReportNumber']
          @AssetNumber = params['AssetNumber']
          @ScanStatus = params['ScanStatus']
          @Percent = params['Percent']
          @ScanItem = params['ScanItem']
          @ScanAssetType = params['ScanAssetType']
          @VSSTaskId = params['VSSTaskId']
          @CSPMTaskId = params['CSPMTaskId']
          @CWPPOCId = params['CWPPOCId']
          @CWPBlId = params['CWPBlId']
          @VSSTaskProcess = params['VSSTaskProcess']
          @CSPMTaskProcess = params['CSPMTaskProcess']
          @CWPPOCProcess = params['CWPPOCProcess']
          @CWPBlProcess = params['CWPBlProcess']
          @ErrorCode = params['ErrorCode']
          @ErrorInfo = params['ErrorInfo']
          @StartDay = params['StartDay']
          @Frequency = params['Frequency']
          @CompleteNumber = params['CompleteNumber']
          @CompleteAssetNumber = params['CompleteAssetNumber']
          @RiskCount = params['RiskCount']
          unless params['Assets'].nil?
            @Assets = []
            params['Assets'].each do |i|
              taskassetobject_tmp = TaskAssetObject.new
              taskassetobject_tmp.deserialize(i)
              @Assets << taskassetobject_tmp
            end
          end
          @AppId = params['AppId']
          @UIN = params['UIN']
          @UserName = params['UserName']
          @TaskMode = params['TaskMode']
          @ScanFrom = params['ScanFrom']
          @IsFree = params['IsFree']
          @IsDelete = params['IsDelete']
          @SourceType = params['SourceType']
        end
      end

      # 服务风险
      class ServerRisk < TencentCloud::Common::AbstractModel
        # @param ServiceTag: 测绘标签
        # @type ServiceTag: String
        # @param Port: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param AffectAsset: 影响资产
        # @type AffectAsset: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param InstanceType: 资产类型
        # @type InstanceType: String
        # @param Level: 风险等级 low:低危 high:高危 middle:中危 info:提示 extreme:严重
        # @type Level: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Component: 组件
        # @type Component: String
        # @param Service: 服务
        # @type Service: String
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param RiskDetails: 风险详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskDetails: String
        # @param Suggestion: 处置建议
        # @type Suggestion: String
        # @param Status: 状态，0未处理、1已处置、2已忽略
        # @type Status: Integer
        # @param Id: 资产唯一id
        # @type Id: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Nick: 用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nick: String
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param ServiceSnapshot: 服务快照
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceSnapshot: String
        # @param Url: 服务访问的url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param Index: 列表索引值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: String
        # @param RiskList: 风险列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskList: Array
        # @param SuggestionList: 建议列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuggestionList: Array
        # @param StatusCode: HTTP响应状态码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusCode: String

        attr_accessor :ServiceTag, :Port, :AffectAsset, :InstanceId, :InstanceName, :InstanceType, :Level, :Protocol, :Component, :Service, :RecentTime, :FirstTime, :RiskDetails, :Suggestion, :Status, :Id, :AppId, :Nick, :Uin, :ServiceSnapshot, :Url, :Index, :RiskList, :SuggestionList, :StatusCode

        def initialize(servicetag=nil, port=nil, affectasset=nil, instanceid=nil, instancename=nil, instancetype=nil, level=nil, protocol=nil, component=nil, service=nil, recenttime=nil, firsttime=nil, riskdetails=nil, suggestion=nil, status=nil, id=nil, appid=nil, nick=nil, uin=nil, servicesnapshot=nil, url=nil, index=nil, risklist=nil, suggestionlist=nil, statuscode=nil)
          @ServiceTag = servicetag
          @Port = port
          @AffectAsset = affectasset
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceType = instancetype
          @Level = level
          @Protocol = protocol
          @Component = component
          @Service = service
          @RecentTime = recenttime
          @FirstTime = firsttime
          @RiskDetails = riskdetails
          @Suggestion = suggestion
          @Status = status
          @Id = id
          @AppId = appid
          @Nick = nick
          @Uin = uin
          @ServiceSnapshot = servicesnapshot
          @Url = url
          @Index = index
          @RiskList = risklist
          @SuggestionList = suggestionlist
          @StatusCode = statuscode
        end

        def deserialize(params)
          @ServiceTag = params['ServiceTag']
          @Port = params['Port']
          @AffectAsset = params['AffectAsset']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceType = params['InstanceType']
          @Level = params['Level']
          @Protocol = params['Protocol']
          @Component = params['Component']
          @Service = params['Service']
          @RecentTime = params['RecentTime']
          @FirstTime = params['FirstTime']
          @RiskDetails = params['RiskDetails']
          @Suggestion = params['Suggestion']
          @Status = params['Status']
          @Id = params['Id']
          @AppId = params['AppId']
          @Nick = params['Nick']
          @Uin = params['Uin']
          @ServiceSnapshot = params['ServiceSnapshot']
          @Url = params['Url']
          @Index = params['Index']
          unless params['RiskList'].nil?
            @RiskList = []
            params['RiskList'].each do |i|
              serverrisksuggestion_tmp = ServerRiskSuggestion.new
              serverrisksuggestion_tmp.deserialize(i)
              @RiskList << serverrisksuggestion_tmp
            end
          end
          unless params['SuggestionList'].nil?
            @SuggestionList = []
            params['SuggestionList'].each do |i|
              serverrisksuggestion_tmp = ServerRiskSuggestion.new
              serverrisksuggestion_tmp.deserialize(i)
              @SuggestionList << serverrisksuggestion_tmp
            end
          end
          @StatusCode = params['StatusCode']
        end
      end

      # 风险详情
      class ServerRiskSuggestion < TencentCloud::Common::AbstractModel
        # @param Title: 标题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Title: String
        # @param Body: 详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Body: String

        attr_accessor :Title, :Body

        def initialize(title=nil, body=nil)
          @Title = title
          @Body = body
        end

        def deserialize(params)
          @Title = params['Title']
          @Body = params['Body']
        end
      end

      # 产品支持情况
      class ServiceSupport < TencentCloud::Common::AbstractModel
        # @param ServiceName: 产品名称:
        # "cfw_waf_virtual", "cwp_detect", "cwp_defense", "cwp_fix"
        # @type ServiceName: String
        # @param SupportHandledCount: 已处理的资产总数
        # @type SupportHandledCount: Integer
        # @param SupportTotalCount: 支持的资产总数
        # @type SupportTotalCount: Integer
        # @param IsSupport: 是否支持该产品1支持；0不支持
        # @type IsSupport: Boolean

        attr_accessor :ServiceName, :SupportHandledCount, :SupportTotalCount, :IsSupport

        def initialize(servicename=nil, supporthandledcount=nil, supporttotalcount=nil, issupport=nil)
          @ServiceName = servicename
          @SupportHandledCount = supporthandledcount
          @SupportTotalCount = supporttotalcount
          @IsSupport = issupport
        end

        def deserialize(params)
          @ServiceName = params['ServiceName']
          @SupportHandledCount = params['SupportHandledCount']
          @SupportTotalCount = params['SupportTotalCount']
          @IsSupport = params['IsSupport']
        end
      end

      # StopRiskCenterTask请求参数结构体
      class StopRiskCenterTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskIdList: 任务id 列表
        # @type TaskIdList: Array
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :TaskIdList, :MemberId

        def initialize(taskidlist=nil, memberid=nil)
          @TaskIdList = taskidlist
          @MemberId = memberid
        end

        def deserialize(params)
          unless params['TaskIdList'].nil?
            @TaskIdList = []
            params['TaskIdList'].each do |i|
              taskidlistkey_tmp = TaskIdListKey.new
              taskidlistkey_tmp.deserialize(i)
              @TaskIdList << taskidlistkey_tmp
            end
          end
          @MemberId = params['MemberId']
        end
      end

      # StopRiskCenterTask返回参数结构体
      class StopRiskCenterTaskResponse < TencentCloud::Common::AbstractModel
        # @param Status: Status为0， 停止成功
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 子网资产
      class SubnetAsset < TencentCloud::Common::AbstractModel
        # @param AppId: appid
        # @type AppId: String
        # @param Uin: uin
        # @type Uin: String
        # @param AssetId: 资产ID
        # @type AssetId: String
        # @param AssetName: 资产名
        # @type AssetName: String
        # @param Region: 区域
        # @type Region: String
        # @param VpcId: 私有网络id
        # @type VpcId: String
        # @param VpcName: 私有网络名
        # @type VpcName: String
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param Nick: 昵称
        # @type Nick: String
        # @param CIDR: cidr
        # @type CIDR: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param CVM: cvm数
        # @type CVM: Integer
        # @param AvailableIp: 可用ip数
        # @type AvailableIp: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ConfigureRisk: 配置风险
        # @type ConfigureRisk: Integer
        # @param ScanTask: 任务数
        # @type ScanTask: Integer
        # @param LastScanTime: 最后扫描时间
        # @type LastScanTime: String
        # @param IsCore: 是否核心
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCore: Integer
        # @param IsNewAsset: 是否新资产 1新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNewAsset: Integer

        attr_accessor :AppId, :Uin, :AssetId, :AssetName, :Region, :VpcId, :VpcName, :Tag, :Nick, :CIDR, :Zone, :CVM, :AvailableIp, :CreateTime, :ConfigureRisk, :ScanTask, :LastScanTime, :IsCore, :IsNewAsset

        def initialize(appid=nil, uin=nil, assetid=nil, assetname=nil, region=nil, vpcid=nil, vpcname=nil, tag=nil, nick=nil, cidr=nil, zone=nil, cvm=nil, availableip=nil, createtime=nil, configurerisk=nil, scantask=nil, lastscantime=nil, iscore=nil, isnewasset=nil)
          @AppId = appid
          @Uin = uin
          @AssetId = assetid
          @AssetName = assetname
          @Region = region
          @VpcId = vpcid
          @VpcName = vpcname
          @Tag = tag
          @Nick = nick
          @CIDR = cidr
          @Zone = zone
          @CVM = cvm
          @AvailableIp = availableip
          @CreateTime = createtime
          @ConfigureRisk = configurerisk
          @ScanTask = scantask
          @LastScanTime = lastscantime
          @IsCore = iscore
          @IsNewAsset = isnewasset
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Uin = params['Uin']
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @Region = params['Region']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @Nick = params['Nick']
          @CIDR = params['CIDR']
          @Zone = params['Zone']
          @CVM = params['CVM']
          @AvailableIp = params['AvailableIp']
          @CreateTime = params['CreateTime']
          @ConfigureRisk = params['ConfigureRisk']
          @ScanTask = params['ScanTask']
          @LastScanTime = params['LastScanTime']
          @IsCore = params['IsCore']
          @IsNewAsset = params['IsNewAsset']
        end
      end

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param Name: 标签名称
        # @type Name: String
        # @param Value: 标签内容
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

      # 产品日志条数
      class TagCount < TencentCloud::Common::AbstractModel
        # @param Name: 产品名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Count: 日志条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer

        attr_accessor :Name, :Count

        def initialize(name=nil, count=nil)
          @Name = name
          @Count = count
        end

        def deserialize(params)
          @Name = params['Name']
          @Count = params['Count']
        end
      end

      # 主机标签信息
      class Tags < TencentCloud::Common::AbstractModel
        # @param TagKey: 主机标签key
        # @type TagKey: String
        # @param TagValue: 主机标签value
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

      # 任务高级配置
      class TaskAdvanceCFG < TencentCloud::Common::AbstractModel
        # @param PortRisk: 端口风险高级配置
        # @type PortRisk: Array
        # @param VulRisk: 漏洞风险高级配置
        # @type VulRisk: Array
        # @param WeakPwdRisk: 弱口令风险高级配置
        # @type WeakPwdRisk: Array
        # @param CFGRisk: 配置风险高级配置
        # @type CFGRisk: Array

        attr_accessor :PortRisk, :VulRisk, :WeakPwdRisk, :CFGRisk

        def initialize(portrisk=nil, vulrisk=nil, weakpwdrisk=nil, cfgrisk=nil)
          @PortRisk = portrisk
          @VulRisk = vulrisk
          @WeakPwdRisk = weakpwdrisk
          @CFGRisk = cfgrisk
        end

        def deserialize(params)
          unless params['PortRisk'].nil?
            @PortRisk = []
            params['PortRisk'].each do |i|
              portriskadvancecfgparamitem_tmp = PortRiskAdvanceCFGParamItem.new
              portriskadvancecfgparamitem_tmp.deserialize(i)
              @PortRisk << portriskadvancecfgparamitem_tmp
            end
          end
          unless params['VulRisk'].nil?
            @VulRisk = []
            params['VulRisk'].each do |i|
              taskcentervulriskinputparam_tmp = TaskCenterVulRiskInputParam.new
              taskcentervulriskinputparam_tmp.deserialize(i)
              @VulRisk << taskcentervulriskinputparam_tmp
            end
          end
          unless params['WeakPwdRisk'].nil?
            @WeakPwdRisk = []
            params['WeakPwdRisk'].each do |i|
              taskcenterweakpwdriskinputparam_tmp = TaskCenterWeakPwdRiskInputParam.new
              taskcenterweakpwdriskinputparam_tmp.deserialize(i)
              @WeakPwdRisk << taskcenterweakpwdriskinputparam_tmp
            end
          end
          unless params['CFGRisk'].nil?
            @CFGRisk = []
            params['CFGRisk'].each do |i|
              taskcentercfgriskinputparam_tmp = TaskCenterCFGRiskInputParam.new
              taskcentercfgriskinputparam_tmp.deserialize(i)
              @CFGRisk << taskcentercfgriskinputparam_tmp
            end
          end
        end
      end

      # 任务资产项
      class TaskAssetObject < TencentCloud::Common::AbstractModel
        # @param AssetName: 资产名
        # @type AssetName: String
        # @param InstanceType: 资产类型
        # @type InstanceType: String
        # @param AssetType: 资产分类
        # @type AssetType: String
        # @param Asset: ip/域名/资产id，数据库id等
        # @type Asset: String
        # @param Region: 地域
        # @type Region: String
        # @param Arn: 多云资产唯一id
        # @type Arn: String

        attr_accessor :AssetName, :InstanceType, :AssetType, :Asset, :Region, :Arn

        def initialize(assetname=nil, instancetype=nil, assettype=nil, asset=nil, region=nil, arn=nil)
          @AssetName = assetname
          @InstanceType = instancetype
          @AssetType = assettype
          @Asset = asset
          @Region = region
          @Arn = arn
        end

        def deserialize(params)
          @AssetName = params['AssetName']
          @InstanceType = params['InstanceType']
          @AssetType = params['AssetType']
          @Asset = params['Asset']
          @Region = params['Region']
          @Arn = params['Arn']
        end
      end

      # 配置风险高级配置
      class TaskCenterCFGRiskInputParam < TencentCloud::Common::AbstractModel
        # @param ItemId: 检测项ID
        # @type ItemId: String
        # @param Enable: 是否开启，0-不开启，1-开启
        # @type Enable: Integer
        # @param ResourceType: 资源类型
        # @type ResourceType: String

        attr_accessor :ItemId, :Enable, :ResourceType

        def initialize(itemid=nil, enable=nil, resourcetype=nil)
          @ItemId = itemid
          @Enable = enable
          @ResourceType = resourcetype
        end

        def deserialize(params)
          @ItemId = params['ItemId']
          @Enable = params['Enable']
          @ResourceType = params['ResourceType']
        end
      end

      # 漏洞风险高级配置
      class TaskCenterVulRiskInputParam < TencentCloud::Common::AbstractModel
        # @param RiskId: 风险ID
        # @type RiskId: String
        # @param Enable: 是否开启，0-不开启，1-开启
        # @type Enable: Integer

        attr_accessor :RiskId, :Enable

        def initialize(riskid=nil, enable=nil)
          @RiskId = riskid
          @Enable = enable
        end

        def deserialize(params)
          @RiskId = params['RiskId']
          @Enable = params['Enable']
        end
      end

      # 弱口令风险高级配置
      class TaskCenterWeakPwdRiskInputParam < TencentCloud::Common::AbstractModel
        # @param CheckItemId: 检测项ID
        # @type CheckItemId: Integer
        # @param Enable: 是否开启，0-不开启，1-开启
        # @type Enable: Integer

        attr_accessor :CheckItemId, :Enable

        def initialize(checkitemid=nil, enable=nil)
          @CheckItemId = checkitemid
          @Enable = enable
        end

        def deserialize(params)
          @CheckItemId = params['CheckItemId']
          @Enable = params['Enable']
        end
      end

      # 任务ID列表Key
      class TaskIdListKey < TencentCloud::Common::AbstractModel
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

      # 任务报告信息
      class TaskLogInfo < TencentCloud::Common::AbstractModel
        # @param TaskLogName: 报告名称
        # @type TaskLogName: String
        # @param TaskLogId: 报告ID
        # @type TaskLogId: String
        # @param AssetsNumber: 关联资产个数
        # @type AssetsNumber: Integer
        # @param RiskNumber: 安全风险数量
        # @type RiskNumber: Integer
        # @param Time: 报告生成时间
        # @type Time: String
        # @param Status: 任务状态码：0 初始值  1正在扫描  2扫描完成  3扫描出错，4停止，5暂停，6该任务已被重启过
        # @type Status: Integer
        # @param TaskName: 关联任务名称
        # @type TaskName: String
        # @param StartTime: 扫描开始时间
        # @type StartTime: String
        # @param TaskCenterTaskId: 任务中心扫描任务ID
        # @type TaskCenterTaskId: String
        # @param AppId: 租户ID
        # @type AppId: String
        # @param UIN: 主账户ID
        # @type UIN: String
        # @param UserName: 用户名称
        # @type UserName: String
        # @param ReportType: 报告类型： 1安全体检 2日报 3周报 4月报
        # @type ReportType: Integer
        # @param TemplateId: 报告模板id
        # @type TemplateId: Integer

        attr_accessor :TaskLogName, :TaskLogId, :AssetsNumber, :RiskNumber, :Time, :Status, :TaskName, :StartTime, :TaskCenterTaskId, :AppId, :UIN, :UserName, :ReportType, :TemplateId

        def initialize(tasklogname=nil, tasklogid=nil, assetsnumber=nil, risknumber=nil, time=nil, status=nil, taskname=nil, starttime=nil, taskcentertaskid=nil, appid=nil, uin=nil, username=nil, reporttype=nil, templateid=nil)
          @TaskLogName = tasklogname
          @TaskLogId = tasklogid
          @AssetsNumber = assetsnumber
          @RiskNumber = risknumber
          @Time = time
          @Status = status
          @TaskName = taskname
          @StartTime = starttime
          @TaskCenterTaskId = taskcentertaskid
          @AppId = appid
          @UIN = uin
          @UserName = username
          @ReportType = reporttype
          @TemplateId = templateid
        end

        def deserialize(params)
          @TaskLogName = params['TaskLogName']
          @TaskLogId = params['TaskLogId']
          @AssetsNumber = params['AssetsNumber']
          @RiskNumber = params['RiskNumber']
          @Time = params['Time']
          @Status = params['Status']
          @TaskName = params['TaskName']
          @StartTime = params['StartTime']
          @TaskCenterTaskId = params['TaskCenterTaskId']
          @AppId = params['AppId']
          @UIN = params['UIN']
          @UserName = params['UserName']
          @ReportType = params['ReportType']
          @TemplateId = params['TemplateId']
        end
      end

      # 报告pdf下载的临时链接
      class TaskLogURL < TencentCloud::Common::AbstractModel
        # @param URL: 报告下载临时链接
        # @type URL: String
        # @param LogId: 任务报告id
        # @type LogId: String
        # @param TaskLogName: 任务报告名称
        # @type TaskLogName: String
        # @param AppId: APP ID
        # @type AppId: String

        attr_accessor :URL, :LogId, :TaskLogName, :AppId

        def initialize(url=nil, logid=nil, tasklogname=nil, appid=nil)
          @URL = url
          @LogId = logid
          @TaskLogName = tasklogname
          @AppId = appid
        end

        def deserialize(params)
          @URL = params['URL']
          @LogId = params['LogId']
          @TaskLogName = params['TaskLogName']
          @AppId = params['AppId']
        end
      end

      # UpdateAlertStatusList请求参数结构体
      class UpdateAlertStatusListRequest < TencentCloud::Common::AbstractModel
        # @param ID: 告警ID列表
        # @type ID: Array
        # @param OperateType: 操作类型
        # 1:撤销处置
        # 2:标记为已处置
        # 3:标记忽略
        # 4:取消标记处置
        # 5:取消标记忽略
        # @type OperateType: Integer
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param OperatedMemberId: 被调用的集团账号的成员id
        # @type OperatedMemberId: Array

        attr_accessor :ID, :OperateType, :MemberId, :OperatedMemberId

        def initialize(id=nil, operatetype=nil, memberid=nil, operatedmemberid=nil)
          @ID = id
          @OperateType = operatetype
          @MemberId = memberid
          @OperatedMemberId = operatedmemberid
        end

        def deserialize(params)
          unless params['ID'].nil?
            @ID = []
            params['ID'].each do |i|
              newalertkey_tmp = NewAlertKey.new
              newalertkey_tmp.deserialize(i)
              @ID << newalertkey_tmp
            end
          end
          @OperateType = params['OperateType']
          @MemberId = params['MemberId']
          @OperatedMemberId = params['OperatedMemberId']
        end
      end

      # UpdateAlertStatusList返回参数结构体
      class UpdateAlertStatusListResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 结果信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Code: 结果代码
        # @type Code: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :Code, :RequestId

        def initialize(msg=nil, code=nil, requestid=nil)
          @Msg = msg
          @Code = code
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @Code = params['Code']
          @RequestId = params['RequestId']
        end
      end

      # 漏洞风险高级配置列表
      class VULRiskAdvanceCFGList < TencentCloud::Common::AbstractModel
        # @param RiskId: 风险ID
        # @type RiskId: String
        # @param VULName: 漏洞名称
        # @type VULName: String
        # @param RiskLevel: 风险等级，low-低危，high-高危，middle-中危，info-提示，extreme-严重。
        # @type RiskLevel: String
        # @param CheckFrom: 识别来源
        # @type CheckFrom: String
        # @param Enable: 是否启用，1-启用，0-禁用
        # @type Enable: Integer
        # @param VULType: 风险类型
        # @type VULType: String
        # @param ImpactVersion: 影响版本
        # @type ImpactVersion: String
        # @param CVE: CVE
        # @type CVE: String
        # @param VULTag: 漏洞标签
        # @type VULTag: Array
        # @param FixMethod: 修复方式
        # @type FixMethod: Array
        # @param ReleaseTime: 披露时间
        # @type ReleaseTime: String
        # @param EMGCVulType: 应急漏洞类型，1-应急漏洞，0-非应急漏洞
        # @type EMGCVulType: Integer
        # @param VULDescribe: 漏洞描述
        # @type VULDescribe: String
        # @param ImpactComponent: 影响组件
        # @type ImpactComponent: String
        # @param Payload: 漏洞Payload
        # @type Payload: String
        # @param References: 技术参考
        # @type References: String
        # @param CVSS: cvss评分
        # @type CVSS: String
        # @param AttackHeat: 攻击热度
        # @type AttackHeat: String
        # @param ServiceSupport: 安全产品支持情况
        # @type ServiceSupport: Array
        # @param RecentScanTime: 最新检测时间
        # @type RecentScanTime: String

        attr_accessor :RiskId, :VULName, :RiskLevel, :CheckFrom, :Enable, :VULType, :ImpactVersion, :CVE, :VULTag, :FixMethod, :ReleaseTime, :EMGCVulType, :VULDescribe, :ImpactComponent, :Payload, :References, :CVSS, :AttackHeat, :ServiceSupport, :RecentScanTime

        def initialize(riskid=nil, vulname=nil, risklevel=nil, checkfrom=nil, enable=nil, vultype=nil, impactversion=nil, cve=nil, vultag=nil, fixmethod=nil, releasetime=nil, emgcvultype=nil, vuldescribe=nil, impactcomponent=nil, payload=nil, references=nil, cvss=nil, attackheat=nil, servicesupport=nil, recentscantime=nil)
          @RiskId = riskid
          @VULName = vulname
          @RiskLevel = risklevel
          @CheckFrom = checkfrom
          @Enable = enable
          @VULType = vultype
          @ImpactVersion = impactversion
          @CVE = cve
          @VULTag = vultag
          @FixMethod = fixmethod
          @ReleaseTime = releasetime
          @EMGCVulType = emgcvultype
          @VULDescribe = vuldescribe
          @ImpactComponent = impactcomponent
          @Payload = payload
          @References = references
          @CVSS = cvss
          @AttackHeat = attackheat
          @ServiceSupport = servicesupport
          @RecentScanTime = recentscantime
        end

        def deserialize(params)
          @RiskId = params['RiskId']
          @VULName = params['VULName']
          @RiskLevel = params['RiskLevel']
          @CheckFrom = params['CheckFrom']
          @Enable = params['Enable']
          @VULType = params['VULType']
          @ImpactVersion = params['ImpactVersion']
          @CVE = params['CVE']
          @VULTag = params['VULTag']
          @FixMethod = params['FixMethod']
          @ReleaseTime = params['ReleaseTime']
          @EMGCVulType = params['EMGCVulType']
          @VULDescribe = params['VULDescribe']
          @ImpactComponent = params['ImpactComponent']
          @Payload = params['Payload']
          @References = params['References']
          @CVSS = params['CVSS']
          @AttackHeat = params['AttackHeat']
          unless params['ServiceSupport'].nil?
            @ServiceSupport = []
            params['ServiceSupport'].each do |i|
              servicesupport_tmp = ServiceSupport.new
              servicesupport_tmp.deserialize(i)
              @ServiceSupport << servicesupport_tmp
            end
          end
          @RecentScanTime = params['RecentScanTime']
        end
      end

      # 漏洞风险信息
      class VULRiskInfo < TencentCloud::Common::AbstractModel
        # @param Fix: 修复建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fix: String
        # @param References: 技术参考/参考链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type References: String
        # @param Describe: 漏洞描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Describe: String
        # @param ImpactComponent: 受影响组件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImpactComponent: Array

        attr_accessor :Fix, :References, :Describe, :ImpactComponent

        def initialize(fix=nil, references=nil, describe=nil, impactcomponent=nil)
          @Fix = fix
          @References = references
          @Describe = describe
          @ImpactComponent = impactcomponent
        end

        def deserialize(params)
          @Fix = params['Fix']
          @References = params['References']
          @Describe = params['Describe']
          unless params['ImpactComponent'].nil?
            @ImpactComponent = []
            params['ImpactComponent'].each do |i|
              vulimpactcomponentinfo_tmp = VulImpactComponentInfo.new
              vulimpactcomponentinfo_tmp.deserialize(i)
              @ImpactComponent << vulimpactcomponentinfo_tmp
            end
          end
        end
      end

      # 漏洞视角的漏洞风险对象
      class VULViewVULRisk < TencentCloud::Common::AbstractModel
        # @param Port: 端口
        # @type Port: String
        # @param NoHandleCount: 影响资产
        # @type NoHandleCount: Integer
        # @param Level: 风险等级，low-低危，high-高危，middle-中危，info-提示，extreme-严重。
        # @type Level: String
        # @param Component: 组件
        # @type Component: String
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param AffectAssetCount: 影响资产数量
        # @type AffectAssetCount: Integer
        # @param Id: 风险ID
        # @type Id: String
        # @param From: 扫描来源，具体看接口返回枚举类型
        # @type From: String
        # @param Index: 前端索引
        # @type Index: String
        # @param VULType: 漏洞类型
        # @type VULType: String
        # @param VULName: 漏洞名
        # @type VULName: String
        # @param CVE: cve
        # @type CVE: String
        # @param Describe: 描述
        # @type Describe: String
        # @param Payload: 漏洞payload
        # @type Payload: String
        # @param AppName: 漏洞影响组件
        # @type AppName: String
        # @param References: 技术参考
        # @type References: String
        # @param AppVersion: 漏洞影响版本
        # @type AppVersion: String
        # @param VULURL: 风险点
        # @type VULURL: String
        # @param Nick: 用户昵称
        # @type Nick: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Uin: 用户uin
        # @type Uin: String
        # @param Fix: 修复建议
        # @type Fix: String
        # @param EMGCVulType: 应急漏洞类型，1-应急漏洞，0-非应急漏洞
        # @type EMGCVulType: Integer

        attr_accessor :Port, :NoHandleCount, :Level, :Component, :RecentTime, :FirstTime, :AffectAssetCount, :Id, :From, :Index, :VULType, :VULName, :CVE, :Describe, :Payload, :AppName, :References, :AppVersion, :VULURL, :Nick, :AppId, :Uin, :Fix, :EMGCVulType

        def initialize(port=nil, nohandlecount=nil, level=nil, component=nil, recenttime=nil, firsttime=nil, affectassetcount=nil, id=nil, from=nil, index=nil, vultype=nil, vulname=nil, cve=nil, describe=nil, payload=nil, appname=nil, references=nil, appversion=nil, vulurl=nil, nick=nil, appid=nil, uin=nil, fix=nil, emgcvultype=nil)
          @Port = port
          @NoHandleCount = nohandlecount
          @Level = level
          @Component = component
          @RecentTime = recenttime
          @FirstTime = firsttime
          @AffectAssetCount = affectassetcount
          @Id = id
          @From = from
          @Index = index
          @VULType = vultype
          @VULName = vulname
          @CVE = cve
          @Describe = describe
          @Payload = payload
          @AppName = appname
          @References = references
          @AppVersion = appversion
          @VULURL = vulurl
          @Nick = nick
          @AppId = appid
          @Uin = uin
          @Fix = fix
          @EMGCVulType = emgcvultype
        end

        def deserialize(params)
          @Port = params['Port']
          @NoHandleCount = params['NoHandleCount']
          @Level = params['Level']
          @Component = params['Component']
          @RecentTime = params['RecentTime']
          @FirstTime = params['FirstTime']
          @AffectAssetCount = params['AffectAssetCount']
          @Id = params['Id']
          @From = params['From']
          @Index = params['Index']
          @VULType = params['VULType']
          @VULName = params['VULName']
          @CVE = params['CVE']
          @Describe = params['Describe']
          @Payload = params['Payload']
          @AppName = params['AppName']
          @References = params['References']
          @AppVersion = params['AppVersion']
          @VULURL = params['VULURL']
          @Nick = params['Nick']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @Fix = params['Fix']
          @EMGCVulType = params['EMGCVulType']
        end
      end

      # 漏洞视角的漏洞风险对象
      class VULViewVULRiskData < TencentCloud::Common::AbstractModel
        # @param Port: 端口
        # @type Port: String
        # @param NoHandleCount: 影响资产
        # @type NoHandleCount: Integer
        # @param Level: 风险等级，low-低危，high-高危，middle-中危，info-提示，extreme-严重。
        # @type Level: String
        # @param Component: 组件
        # @type Component: String
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param AffectAssetCount: 影响资产数量
        # @type AffectAssetCount: Integer
        # @param RiskId: 风险ID
        # @type RiskId: String
        # @param From: 扫描来源，具体看接口返回枚举类型
        # @type From: String
        # @param Index: 前端索引
        # @type Index: String
        # @param VULType: 漏洞类型
        # @type VULType: String
        # @param VULName: 漏洞名
        # @type VULName: String
        # @param CVE: cve
        # @type CVE: String
        # @param Payload: 漏洞payload
        # @type Payload: String
        # @param AppName: 漏洞影响组件
        # @type AppName: String
        # @param AppVersion: 漏洞影响版本
        # @type AppVersion: String
        # @param VULURL: 风险点
        # @type VULURL: String
        # @param Nick: 用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nick: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param EMGCVulType: 应急漏洞类型，1-应急漏洞，0-非应急漏洞
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EMGCVulType: Integer
        # @param CVSS: CVSS评分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVSS: Float
        # @param PCMGRId: PCMGRId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PCMGRId: String
        # @param VulTag: 漏洞标签。搜索时应急 必修传参VulTag=SuggestRepair/EMGCVul
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulTag: Array
        # @param DisclosureTime: 漏洞披露时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisclosureTime: String
        # @param AttackHeat: 攻击热度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackHeat: Integer
        # @param IsSuggest: 是否必修漏洞，1-是，0-不是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSuggest: Integer
        # @param HandleTaskId: 处置任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HandleTaskId: String
        # @param EngineSource: 引擎来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineSource: String
        # @param VulRiskId: 新的漏洞风险id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulRiskId: String
        # @param TvdID: 新版漏洞id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TvdID: String
        # @param IsOneClick: 是否可以一键体检，1-可以，0-不可以
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsOneClick: Integer

        attr_accessor :Port, :NoHandleCount, :Level, :Component, :RecentTime, :FirstTime, :AffectAssetCount, :RiskId, :From, :Index, :VULType, :VULName, :CVE, :Payload, :AppName, :AppVersion, :VULURL, :Nick, :AppId, :Uin, :EMGCVulType, :CVSS, :PCMGRId, :VulTag, :DisclosureTime, :AttackHeat, :IsSuggest, :HandleTaskId, :EngineSource, :VulRiskId, :TvdID, :IsOneClick

        def initialize(port=nil, nohandlecount=nil, level=nil, component=nil, recenttime=nil, firsttime=nil, affectassetcount=nil, riskid=nil, from=nil, index=nil, vultype=nil, vulname=nil, cve=nil, payload=nil, appname=nil, appversion=nil, vulurl=nil, nick=nil, appid=nil, uin=nil, emgcvultype=nil, cvss=nil, pcmgrid=nil, vultag=nil, disclosuretime=nil, attackheat=nil, issuggest=nil, handletaskid=nil, enginesource=nil, vulriskid=nil, tvdid=nil, isoneclick=nil)
          @Port = port
          @NoHandleCount = nohandlecount
          @Level = level
          @Component = component
          @RecentTime = recenttime
          @FirstTime = firsttime
          @AffectAssetCount = affectassetcount
          @RiskId = riskid
          @From = from
          @Index = index
          @VULType = vultype
          @VULName = vulname
          @CVE = cve
          @Payload = payload
          @AppName = appname
          @AppVersion = appversion
          @VULURL = vulurl
          @Nick = nick
          @AppId = appid
          @Uin = uin
          @EMGCVulType = emgcvultype
          @CVSS = cvss
          @PCMGRId = pcmgrid
          @VulTag = vultag
          @DisclosureTime = disclosuretime
          @AttackHeat = attackheat
          @IsSuggest = issuggest
          @HandleTaskId = handletaskid
          @EngineSource = enginesource
          @VulRiskId = vulriskid
          @TvdID = tvdid
          @IsOneClick = isoneclick
        end

        def deserialize(params)
          @Port = params['Port']
          @NoHandleCount = params['NoHandleCount']
          @Level = params['Level']
          @Component = params['Component']
          @RecentTime = params['RecentTime']
          @FirstTime = params['FirstTime']
          @AffectAssetCount = params['AffectAssetCount']
          @RiskId = params['RiskId']
          @From = params['From']
          @Index = params['Index']
          @VULType = params['VULType']
          @VULName = params['VULName']
          @CVE = params['CVE']
          @Payload = params['Payload']
          @AppName = params['AppName']
          @AppVersion = params['AppVersion']
          @VULURL = params['VULURL']
          @Nick = params['Nick']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @EMGCVulType = params['EMGCVulType']
          @CVSS = params['CVSS']
          @PCMGRId = params['PCMGRId']
          @VulTag = params['VulTag']
          @DisclosureTime = params['DisclosureTime']
          @AttackHeat = params['AttackHeat']
          @IsSuggest = params['IsSuggest']
          @HandleTaskId = params['HandleTaskId']
          @EngineSource = params['EngineSource']
          @VulRiskId = params['VulRiskId']
          @TvdID = params['TvdID']
          @IsOneClick = params['IsOneClick']
        end
      end

      # vpc列表数据
      class Vpc < TencentCloud::Common::AbstractModel
        # @param Subnet: 子网(只支持32位)
        # @type Subnet: Integer
        # @param ConnectedVpc: 互通vpc(只支持32位)
        # @type ConnectedVpc: Integer
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param Region: region区域
        # @type Region: String
        # @param CVM: 云服务器(只支持32位)
        # @type CVM: Integer
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param DNS: dns域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DNS: Array
        # @param AssetName: 资产名称
        # @type AssetName: String
        # @param CIDR: cidr网段
        # @type CIDR: String
        # @param CreateTime: 资产创建时间
        # @type CreateTime: String
        # @param AppId: appid
        # @type AppId: String
        # @param Uin: uin
        # @type Uin: String
        # @param Nick: 昵称
        # @type Nick: String
        # @param IsNewAsset: 是否新资产 1新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNewAsset: Integer
        # @param IsCore: 是否核心资产1是 2不是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCore: Integer

        attr_accessor :Subnet, :ConnectedVpc, :AssetId, :Region, :CVM, :Tag, :DNS, :AssetName, :CIDR, :CreateTime, :AppId, :Uin, :Nick, :IsNewAsset, :IsCore

        def initialize(subnet=nil, connectedvpc=nil, assetid=nil, region=nil, cvm=nil, tag=nil, dns=nil, assetname=nil, cidr=nil, createtime=nil, appid=nil, uin=nil, nick=nil, isnewasset=nil, iscore=nil)
          @Subnet = subnet
          @ConnectedVpc = connectedvpc
          @AssetId = assetid
          @Region = region
          @CVM = cvm
          @Tag = tag
          @DNS = dns
          @AssetName = assetname
          @CIDR = cidr
          @CreateTime = createtime
          @AppId = appid
          @Uin = uin
          @Nick = nick
          @IsNewAsset = isnewasset
          @IsCore = iscore
        end

        def deserialize(params)
          @Subnet = params['Subnet']
          @ConnectedVpc = params['ConnectedVpc']
          @AssetId = params['AssetId']
          @Region = params['Region']
          @CVM = params['CVM']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tag << tag_tmp
            end
          end
          @DNS = params['DNS']
          @AssetName = params['AssetName']
          @CIDR = params['CIDR']
          @CreateTime = params['CreateTime']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @Nick = params['Nick']
          @IsNewAsset = params['IsNewAsset']
          @IsCore = params['IsCore']
        end
      end

      # 漏洞影响组件信息
      class VulImpactComponentInfo < TencentCloud::Common::AbstractModel
        # @param Component: 组件名称
        # @type Component: String
        # @param Version: 版本名称
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

      # 漏洞趋势-攻击趋势、影响用户、影响资产
      class VulTrend < TencentCloud::Common::AbstractModel
        # @param AffectAssetCount: 影响的资产数
        # @type AffectAssetCount: Integer
        # @param AffectUserCount: 影响的用户数
        # @type AffectUserCount: Integer
        # @param AttackCount: 攻击数
        # @type AttackCount: Integer
        # @param Date: 时间
        # @type Date: String

        attr_accessor :AffectAssetCount, :AffectUserCount, :AttackCount, :Date

        def initialize(affectassetcount=nil, affectusercount=nil, attackcount=nil, date=nil)
          @AffectAssetCount = affectassetcount
          @AffectUserCount = affectusercount
          @AttackCount = attackcount
          @Date = date
        end

        def deserialize(params)
          @AffectAssetCount = params['AffectAssetCount']
          @AffectUserCount = params['AffectUserCount']
          @AttackCount = params['AttackCount']
          @Date = params['Date']
        end
      end

      # 网站风险对象
      class WebsiteRisk < TencentCloud::Common::AbstractModel
        # @param AffectAsset: 影响资产
        # @type AffectAsset: String
        # @param Level: 风险等级，low-低危，high-高危，middle-中危，info-提示，extreme-严重。
        # @type Level: String
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param Status: 状态，0未处理、1已处置、2已忽略
        # @type Status: Integer
        # @param Id: ID,处理风险使用
        # @type Id: String
        # @param Index: 前端索引
        # @type Index: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Nick: 用户昵称
        # @type Nick: String
        # @param Uin: 用户uin
        # @type Uin: String
        # @param URL: 风险链接
        # @type URL: String
        # @param URLPath: 风险文件地址
        # @type URLPath: String
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param DetectEngine: 类型
        # @type DetectEngine: String
        # @param ResultDescribe: 结果描述
        # @type ResultDescribe: String
        # @param SourceURL: 源地址url
        # @type SourceURL: String
        # @param SourceURLPath: 源文件地址
        # @type SourceURLPath: String

        attr_accessor :AffectAsset, :Level, :RecentTime, :FirstTime, :Status, :Id, :Index, :InstanceId, :InstanceName, :AppId, :Nick, :Uin, :URL, :URLPath, :InstanceType, :DetectEngine, :ResultDescribe, :SourceURL, :SourceURLPath

        def initialize(affectasset=nil, level=nil, recenttime=nil, firsttime=nil, status=nil, id=nil, index=nil, instanceid=nil, instancename=nil, appid=nil, nick=nil, uin=nil, url=nil, urlpath=nil, instancetype=nil, detectengine=nil, resultdescribe=nil, sourceurl=nil, sourceurlpath=nil)
          @AffectAsset = affectasset
          @Level = level
          @RecentTime = recenttime
          @FirstTime = firsttime
          @Status = status
          @Id = id
          @Index = index
          @InstanceId = instanceid
          @InstanceName = instancename
          @AppId = appid
          @Nick = nick
          @Uin = uin
          @URL = url
          @URLPath = urlpath
          @InstanceType = instancetype
          @DetectEngine = detectengine
          @ResultDescribe = resultdescribe
          @SourceURL = sourceurl
          @SourceURLPath = sourceurlpath
        end

        def deserialize(params)
          @AffectAsset = params['AffectAsset']
          @Level = params['Level']
          @RecentTime = params['RecentTime']
          @FirstTime = params['FirstTime']
          @Status = params['Status']
          @Id = params['Id']
          @Index = params['Index']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @AppId = params['AppId']
          @Nick = params['Nick']
          @Uin = params['Uin']
          @URL = params['URL']
          @URLPath = params['URLPath']
          @InstanceType = params['InstanceType']
          @DetectEngine = params['DetectEngine']
          @ResultDescribe = params['ResultDescribe']
          @SourceURL = params['SourceURL']
          @SourceURLPath = params['SourceURLPath']
        end
      end

      # 过滤条件
      class WhereFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤的项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Values: 过滤的值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array
        # @param OperatorType: 中台定义：
        # 1等于 2大于 3小于 4大于等于 5小于等于 6不等于 9模糊匹配 13非模糊匹配 14按位与
        # 精确匹配填 7 模糊匹配填9

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorType: Integer

        attr_accessor :Name, :Values, :OperatorType

        def initialize(name=nil, values=nil, operatortype=nil)
          @Name = name
          @Values = values
          @OperatorType = operatortype
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @OperatorType = params['OperatorType']
        end
      end

    end
  end
end

